# Andrei Homescu (c) 2010

import sys
import antlr3
import coolirLexer
import coolirParser
import prep
import gen
import util

RUNTIME_FUNCTIONS = ["_u__u_alloc_u__u_", "_u__u_abort_u__u_", "_u__u_outInt_u__u_",
                "_u__u_outString_u__u_", "_u__u_inInt_u__u_", "_u__u_inString_u__u_"]

def gen_prologue(out, globals):
    print >>out, r"""
/* File automatically generated by ir2c */
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

static int32_t iregs[""" + str(globals.iregs) + "];\n"
    for fn in globals.functions.itervalues():
        print >>out, "static void G_%s();" % fn.first_label
    print >>out

def gen_epilogue(out, globals):
    print >>out, r"""
static char sbuf[64];

#define VI0     (iregs[0])
#define VI1     (iregs[1])

static void G__u__u_alloc_u__u_()
{
    VI0 = (int)malloc(VI0);
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
    for( i = 0 ; i < VI1 ; i++ )
        putchar(*(char*)(VI0 + i));
}

static void G__u__u_inInt_u__u_()
{
    scanf("%d", &VI0);
}

static void G__u__u_inString_u__u_()
{
    scanf("%63s", sbuf);
    VI0 = (int32_t)sbuf;
    VI1 = strlen(sbuf); 
}

int main()
{
    G__u_start();
    return 0;
}
"""

def parse_file(in_name, file_dict):
    input = antlr3.ANTLRFileStream(in_name)
    lexer = coolirLexer.coolirLexer(input)
    tokens = antlr3.CommonTokenStream(lexer)
    parser = coolirParser.coolirParser(tokens)
    prog = parser.program()
    file_dict[in_name] = (prog, tokens)

def add_runtime_functions(functions):
    for runtime_fn_name in RUNTIME_FUNCTIONS:
        runtime_fn = util.Function()
        runtime_fn.iregs = 2
        runtime_fn.first_label = runtime_fn_name
        runtime_fn.is_runtime_function = True
        functions[runtime_fn_name] = runtime_fn

def prepare_files(tree_dict):
    globals = util.Globals()
    add_runtime_functions(globals.functions)
    for file, (prog, tokens) in tree_dict.iteritems():
        prog_ts = antlr3.tree.CommonTreeNodeStream(prog.tree)
        prog_ts.setTokenStream(tokens)
        prep_obj = prep.prep(prog_ts)
        file_data = prep_obj.program()

        globals.functions.update(file_data.functions)
        globals.data_label_offsets.update((k, v + globals.data_fields_cnt) 
                for (k, v) in file_data.data_label_offsets.iteritems())
        globals.data_fields_cnt += file_data.data_fields_cnt
        # End of loop

    globals.iregs = max(fn.iregs for fn in globals.functions.itervalues())
    return globals

def compute_insns(tree_dict, globals):
    for file, (prog, tokens) in tree_dict.iteritems():
        prog_ts = antlr3.tree.CommonTreeNodeStream(prog.tree)
        prog_ts.setTokenStream(tokens)
        gen_obj = gen.gen(prog_ts)
        gen_obj.program(globals)

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

def gen_code(out, globals):
    for fn in globals.functions.itervalues():
        if fn.is_runtime_function:
            continue

        print >>out, "static void %s() {" % (util.FUNCTION_PREFIX + 
                        fn.first_label)
        if len(fn.vr_map) > 0:
            print >>out, "\tint32_t %s;" % ', '.join(fn.vr_map.iterkeys())
        for insn in fn.insn_list:
            print >>out, "\t%s" % insn
        print >>out, "}\n"


if __name__ == '__main__':
    if len(sys.argv) != 3:
        print "Usage:\tir2c <input.ir> <output.c>"
        sys.exit(0)

    file_tree_dict = {}
    parse_file("library.ir", file_tree_dict)
    parse_file(sys.argv[1], file_tree_dict)
    globals = prepare_files(file_tree_dict)
    compute_insns(file_tree_dict, globals)

    out = open(sys.argv[2], "w")
    gen_prologue(out, globals)
    gen_data(out, globals)
    gen_code(out, globals)
    gen_epilogue(out, globals)
    out.close()

