# Andrei Homescu (c) 2010

import sys
import antlr3
import ir2x86Lexer
import ir2x86Parser
import ir2x86regs
import ir2x86gen

def parse_file(in_name, out):
    input = antlr3.ANTLRFileStream(in_name)
    lexer = ir2x86Lexer.ir2x86Lexer(input)
    tokens = antlr3.CommonTokenStream(lexer)
    parser = ir2x86Parser.ir2x86Parser(tokens)
    prog = parser.program()

    prog_ts = antlr3.tree.CommonTreeNodeStream(prog.tree)
    prog_ts.setTokenStream(tokens)
    regs = ir2x86regs.ir2x86regs(prog_ts)
    vrFnMap = regs.program()

    prog_ts = antlr3.tree.CommonTreeNodeStream(prog.tree)
    prog_ts.setTokenStream(tokens)
    gen = ir2x86gen.ir2x86gen(prog_ts)
    return gen.program(out, vrFnMap)

if len(sys.argv) != 3:
    print "Usage:\tir2x86 <input.ir> <output.s>"
    print "\tgcc -nostartfiles os_library.c <output.s> -o <output>"
    sys.exit(0)

out = open(sys.argv[2], "w")
print >>out, ".text\n.globl _start"
iregs_num = 2
iregs_num = max(iregs_num, parse_file(sys.argv[1], out))
iregs_num = max(iregs_num, parse_file("library.ir", out))
print >>out, ".data\n.globl __iregs\n__iregs:\n.fill " + str(4 * iregs_num)

