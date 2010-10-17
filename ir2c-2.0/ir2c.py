# Andrei Homescu (c) 2010

import sys
import antlr3
import coolirLexer
import coolirParser
import prep
import gen
import util

OS_FUNCTIONS = ["_u__u_alloc_u__u_", "_u__u_abort_u__u_", "_u__u_outInt_u__u_",
                "_u__u_outString_u__u_", "_u__u_inInt_u__u_", "_u__u_inString_u__u_"]

def gen_prologue(out, globals):
    print >>out, r"""
/* File automatically generated by ir2c */
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

static int32_t iregs[""" + str(globals.iregs) + """];
static int32_t oregs[""" + str(globals.oregs) + """];
static void (*function_labels[])();
static int8_t *data_raw;
static void G__u_start();

#define STR_BUF_LEN 1024
static int32_t sbuf;

#define HEAP_DATA_MASK      0x40000000
#define CODE_MASK           0x80000000
#define OFFSET_BITS_MASK    0x3FFFFFFF

#define is_code_ptr(x)      (((x) & 0x80000000) == 0x80000000)
#define is_data_ptr(x)      (((x) & 0x80000000) == 0x00000000)
#define is_heap_ptr(x)      (((x) & 0xC0000000) == 0x40000000)
#define code_ptr(x)         ((x) | CODE_MASK)
#define heap_ptr(x)         ((x) | HEAP_DATA_MASK)
#define data_ptr(x)         (x)
#define ptr_offset(x)       ((x) & OFFSET_BITS_MASK)

static int8_t *heap = NULL;
static int32_t heap_used = 0, heap_cap = 0;

static void expand_heap(int size)
{
    if (heap_used + size > heap_cap)
    {
        if (heap_used > size)
            size = heap_used;
        heap_cap += size;
        heap = (int8_t*)realloc(heap, heap_cap);
    }   
}

static int8_t *get_real_ptr(int32_t addr)
{
    if (is_data_ptr(addr))
        if (is_heap_ptr(addr))
            return heap + ptr_offset(addr);
        else
            return data_raw + ptr_offset(addr);
    return NULL;
}

#define VI0     (iregs[0])
#define VI1     (iregs[1])
#define VO0     (oregs[0])
#define VO1     (oregs[1])

static void G__u__u_alloc_u__u_()
{
    int32_t pos = heap_used;
    expand_heap(VI0);
    heap_used += VI0;
    VO0 = heap_ptr(pos);
}

static void G__u__u_abort_u__u_()
{
    exit(VI0);
}

static void G__u__u_outInt_u__u_()
{
    printf("%d", VI0);
}

static void G__u__u_outString_u__u_()
{
    int32_t i;
    int8_t *ptr = get_real_ptr(VI0);
    for( i = 0 ; i < VI1 ; i++ )
        putchar(ptr[i]);
}

static void G__u__u_inInt_u__u_()
{
    scanf("%d", &VO0);
}

static void G__u__u_inString_u__u_()
{
    int8_t *ptr = get_real_ptr(sbuf);
    fgets(ptr, STR_BUF_LEN, stdin);
    VO0 = sbuf;
    VO1 = strlen(ptr) - 1;
    ptr[strlen(ptr) - 1] = 0;
}

static int32_t load_word_from_label(int32_t addr, int32_t offset)
{
    if (!is_data_ptr(addr))
    {
        printf("Error: invalid data segment access\\n");
        exit(-1);
    }
    return *((int32_t*)(get_real_ptr(addr) + offset));
}

static void store_word_at_label(int32_t addr, int32_t offset, int32_t val)
{
    if (!is_data_ptr(addr))
    {
        printf("Error: invalid data segment access\\n");
        exit(-1);
    }
    *((int32_t*)(get_real_ptr(addr) + offset)) = val;
}

static int32_t load_byte_from_label(int32_t addr, int32_t offset)
{
    if (!is_data_ptr(addr))
    {
        printf("Error: invalid data segment access\\n");
        exit(-1);
    }
    return *(get_real_ptr(addr) + offset);
}

static void store_byte_at_label(int32_t addr, int32_t offset, int32_t val)
{
    if (!is_data_ptr(addr))
    {
        printf("Error: invalid data segment access\\n");
        exit(-1);
    }
    *(get_real_ptr(addr) + offset) = (val & 0xff);
}

static void call_function_at_label(int32_t addr)
{
    if (!is_code_ptr(addr))
    {
        printf("Error: invalid code segment access\\n");
        exit(-1);
    }
    (*function_labels[ptr_offset(addr)])();
}

int main()
{
    VI0 = STR_BUF_LEN;
    G__u__u_alloc_u__u_();
    sbuf = VO0;

    G__u_start();
    return 0;
}
"""
    for fn in globals.functions.itervalues():
        print >>out, "static void G_%s();" % fn.first_label
    print >>out

def parse_file(in_name, file_dict):
    input = antlr3.ANTLRFileStream(in_name)
    lexer = coolirLexer.coolirLexer(input)
    tokens = antlr3.CommonTokenStream(lexer)
    parser = coolirParser.coolirParser(tokens)
    prog = parser.program()
    file_dict[in_name] = (prog, tokens)

def add_os_functions(functions):
    for os_fn_name in OS_FUNCTIONS:
        os_fn = util.Function()
        os_fn.iregs = 2
        os_fn.oregs = 2
        os_fn.noreturn = False
        os_fn.first_label = os_fn_name
        functions[os_fn_name] = os_fn

def prepare_files(tree_dict):
    globals = util.Globals()
    add_os_functions(globals.functions)
    for file, (prog, tokens) in tree_dict.iteritems():
        prog_ts = antlr3.tree.CommonTreeNodeStream(prog.tree)
        prog_ts.setTokenStream(tokens)
        prep_obj = prep.prep(prog_ts)
        file_data = prep_obj.program()

        globals.functions.update(file_data.functions)
        globals.data_label_offsets.update((k, v + globals.data_len) 
                for (k, v) in file_data.data_label_offsets.iteritems())
        globals.data_len += file_data.data_len
        # End of loop

    globals.iregs = max(fn.iregs for fn in globals.functions.itervalues())
    globals.oregs = max(fn.oregs for fn in globals.functions.itervalues())
    return globals

def compute_code_labels(globals):
    for fn in globals.functions.itervalues():
        globals.code_label_indices[fn.first_label] = len(globals.code_label_list)
        globals.code_label_list.append(util.FUNCTION_PREFIX + fn.first_label)

def gen_code(out, tree_dict, globals):
    for file, (prog, tokens) in tree_dict.iteritems():
        prog_ts = antlr3.tree.CommonTreeNodeStream(prog.tree)
        prog_ts.setTokenStream(tokens)
        gen_obj = gen.gen(prog_ts)
        data_list = gen_obj.program(out, globals)
        globals.data_list.extend(data_list)

def gen_data(out, globals):
    num = 0

    print >>out, "static struct data_type {"
    for x in globals.data_list:
        num += 1
        idx = ""
        if x[2]:
            idx = "[%s]" % x[2]
        print >>out, "%s f%d%s;" % (x[0], num, idx)
    print >>out, " } __attribute__((__packed__)) data = {"
    num = 0
    for x in globals.data_list:
        num += 1
        if x[1]:
            print >>out, ".f%d = %s," % (num, x[1])
    print >>out, "};"
    print >>out, "static int8_t *data_raw = (int8_t*)&data;"

def gen_code_labels(out, globals):
    print >>out, "static void (*function_labels[])(void) = { %s };" % (
            ', '.join(globals.code_label_list))

if __name__ == '__main__':
    if len(sys.argv) != 3:
        print "Usage:\tir2c <input.ir> <output.c>"
        sys.exit(0)

    file_tree_dict = {}
    parse_file("library.ir", file_tree_dict)
    parse_file(sys.argv[1], file_tree_dict)
    globals = prepare_files(file_tree_dict)
    compute_code_labels(globals)

    out = open(sys.argv[2], "w")
    gen_prologue(out, globals)
    gen_code(out, file_tree_dict, globals)
    gen_data(out, globals)
    gen_code_labels(out, globals)
    out.close()

