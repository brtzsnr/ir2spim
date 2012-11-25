package coolir;/*
Copyright (c) 2000 The Regents of the University of California.
All rights reserved.

Permission to use, copy, modify, and distribute this software for any
purpose, without fee, and without written agreement is hereby granted,
provided that the above copyright notice and the following two
paragraphs appear in all copies of this software.

IN NO EVENT SHALL THE UNIVERSITY OF CALIFORNIA BE LIABLE TO ANY PARTY FOR
DIRECT, INDIRECT, SPECIAL, INCIDENTAL, OR CONSEQUENTIAL DAMAGES ARISING OUT
OF THE USE OF THIS SOFTWARE AND ITS DOCUMENTATION, EVEN IF THE UNIVERSITY OF
CALIFORNIA HAS BEEN ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

THE UNIVERSITY OF CALIFORNIA SPECIFICALLY DISCLAIMS ANY WARRANTIES,
INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY
AND FITNESS FOR A PARTICULAR PURPOSE.  THE SOFTWARE PROVIDED HEREUNDER IS
ON AN "AS IS" BASIS, AND THE UNIVERSITY OF CALIFORNIA HAS NO OBLIGATION TO
PROVIDE MAINTENANCE, SUPPORT, UPDATES, ENHANCEMENTS, OR MODIFICATIONS.
*/

import java.io.*;

/**
 * Static semantics driver class
 */
class Cgen {

    /**
     * Reads AST from from consosle, and outputs the assembly code
     */


    public static void main(String[] args) {
        args = Flags.handleFlags(args);
        try {
//    	    ASTLexer lexer = new ASTLexer(new InputStreamReader(System.in));
            ASTLexer lexer = new ASTLexer(new InputStreamReader(new FileInputStream(args[0])));
            ASTParser parser = new ASTParser(lexer);
            Object result = parser.parse().value;


// If needed = do AST processing here. Can dump it into a file.
            
//            if (args.length > 1 && args[1].equals("-O")) {
//                String iesire_ast_o = args[0].replaceAll(".ast", "") + ".opt.ast";
//                ((program_) result).dump_with_types(new PrintStream(iesire_ast_o), 0);
//            }

            PrintStream output = System.out;
            String filename = null;
            if (Flags.out_filename == null) {
                if (Flags.in_filename != null) {
                    filename = Flags.in_filename.substring(0,
                            Flags.in_filename.lastIndexOf('.'))
                            + ".ll";
                }
            } else {
                filename = Flags.out_filename;
            }

            /*
            if (filename != null) {
                try {
                    output = new PrintStream(new FileOutputStream(filename));
                } catch (IOException ex) {
                    Utilities.fatalError("Cannot open output file " + filename);
                }
            }
            */

            FileOutputStream fos = new FileOutputStream(filename);
            OutputStreamWriter out = new OutputStreamWriter(fos, "UTF-8");

            // Boilerplate - implicit objects definitions, library method declarations
            
            String text = "; *************************************************************************\n" +
                    "; *************************************************************************\n" +
                    "; *************************************************************************\n" +
                    "; *************************************************************************\n" +
                    "; header\n" +
                    "; *************************************************************************\n" +
                    "\n" +
                    "%struct.Object_protObj_t = type { i32, i32, %struct.Object_dispTab_t* }\n" +
                    "%struct.String_protObj_t = type { i32, i32, %struct.String_dispTab_t*, %struct.Int_protObj_t*, i8* }\n" +
                    "%struct.Int_protObj_t = type { i32, i32, %struct.Object_dispTab_t*, i32 }\n" +
                    "%struct.Object_dispTab_t = type { i8*, i8*, i8* }\n" +
                    "%struct.String_dispTab_t = type { i8*, i8*, i8*, i8*, i8*, i8* }\n" +
                    "%struct.IO_dispTab_t = type { i8*, i8*, i8*, i8*, i8*, i8*, i8* }\n" +
                    "%struct.IO_protObj_t = type { i32, i32, %struct.IO_dispTab_t* }\n" +
                    "%struct.Bool_dispTab_t = type { i8*, i8*, i8* }\n" +
                    "%struct.Bool_protObj_t = type { i32, i32, %struct.Bool_dispTab_t*, i32 }\n" +
                    "\n" +
                    "\n" +
                    "@IO_dispTab = external global %struct.IO_dispTab_t\n" +
                    "@Object_dispTab = external global %struct.Object_dispTab_t\n" +
                    "@String_dispTab = external global %struct.String_dispTab_t\n" +
                    "@Int_protObj = external global %struct.Int_protObj_t\n" +
                    "@IO_protObj = external global %struct.IO_protObj_t\n" +
                    "@Object_protObj = external global %struct.Object_protObj_t\n" +
                    "@Bool_protObj = external global %struct.Bool_protObj_t\n" +
                    "@String_protObj = external global %struct.String_protObj_t\n" +
                    "\n" +
                    "\n" +
                    "declare i32 @putchar(i32)\n" +
                    "declare i32 @IO__out_int(i32, i32)\n" +
                    "declare i32 @IO__out_string(i32, i32)\n" +
                    "declare i32 @IO__in_int(i32)\n" +
                    "declare i32 @IO__in_string(i32)\n" +
                    "declare i32 @Object__copy(i32)\n" +
                    "declare i32 @Object__abort(i32)\n" +
                    "declare i32 @Object__type_name(i32)\n" +
                    "declare void @__outString__(i32, i32)\n" +
                    "declare void @_dispatch_abort(i32, i32)\n" +
                    "declare void @llvm.memcpy.i32(i8*, i8*, i32, i32)\n" +
                    "declare void @printmemorie()\n" +
                    "declare void @IO_init(i32)\n" +
                    "declare void @Object_init(i32)\n" +
                    "declare void @__outInt__(i32)\n" +
                    "declare void @_case_abort2(i32, i32)\n" +
                    "declare void @_case_abort(i32)\n" +
                    "declare i32 @equality_test(i32, i32, i32, i32)\n" +
                    "declare void @Bool_init(i32)\n" +
                    "declare void @Int_init(i32)\n" +
                    "declare void @String_init(i32)" +
                    "\n" +
                    "; *************************************************************************\n" +
                    "; *************************************************************************\n" +
                    "; *************************************************************************\n" +
                    "; *************************************************************************\n" +
                    "; start of generated code\n" +
                    "; *************************************************************************\n";

            // Generate code and append your generated code to text here
            ((Program) result).cgen();
            out.write(text);

            out.close();
        } catch (Exception ex) {
            ex.printStackTrace(System.err);
        }
    }
}
