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

// This is a project skeleton file


import java.io.PrintStream;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.Vector;

/**
 * This class is used for representing the inheritance tree during code
 * generation. You will need to fill in some of its methods and
 * potentially extend it in other useful ways.
 */
class CgenClassTable extends SymbolTable {

    /**
     * All classes in the program, represented as CgenNode
     */
    public Vector nds;

    private int stringclasstag;
    private int intclasstag;
    private int boolclasstag;

    // The following methods emit code for constants and global
    // declarations.

    /**
     * Emits code to start the .data segment and to
     * declare the global names.
     */
    private void codeGlobalData() {
     }

    /**
     * Emits code to start the .text segment and to
     * declare the global names.
     */
    private void codeGlobalText() {
    }

    /**
     * Emits code definitions for boolean constants.
     */
    private void codeBools(int classtag) {
        BoolConst.falsebool.codeDef(classtag);
        BoolConst.truebool.codeDef(classtag);
    }

    /**
     * Generates GC choice constants (pointers to GC functions)
     */
    private void codeSelectGc() {
    }

    /**
     * Emits code to reserve space for and initialize all of the
     * constants.  Class names should have been added to the string
     * table (in the supplied code, is is done during the construction
     * of the inheritance graph), and code for emitting string constants
     * as a side effect adds the string's length to the integer table.
     * The constants are emmitted by running through the stringtable and
     * inttable and producing code for each entry.
     */
    private void codeConstants() {
        // Add constants that are required by the code generator.
        AbstractTable.stringtable.addString("");
        AbstractTable.inttable.addString("0");

        AbstractTable.stringtable.codeStringTable(stringclasstag);
        AbstractTable.inttable.codeStringTable(intclasstag);
        codeBools(boolclasstag);
    }


    // adauga tabele de dispatch in .data
    private void codeDispatchTables() {
    }

    // adauga obiecte prototip in sectiunea .data
    private void codeProtObj() {
    }

    // adauga nameTab in sectiunea .data
    private void codeNameTab() {
    }

    // adauga initTab in sectiunea .data
    private void codeInitTab() {
    }

    /**
     * Creates data structures representing basic Cool classes (Object,
     * IO, Int, Bool, String).  Please note: as is this method does not
     * do anything useful; you will need to edit it to make if do what
     * you want.
     */
    private void installBasicClasses() {
        AbstractSymbol filename
                = AbstractTable.stringtable.addString("<basic class>");

        // A few special class names are installed in the lookup table
        // but not the class list.  Thus, these classes exist, but are
        // not part of the inheritance hierarchy.  No_class serves as
        // the parent of Object and the other special classes.
        // SELF_TYPE is the self class; it cannot be redefined or
        // inherited.  prim_slot is a class known to the code generator.

        addId(TreeConstants.No_class,
                new CgenNode(new class__(0,
                        TreeConstants.No_class,
                        TreeConstants.No_class,
                        new Features(0),
                        filename),
                        CgenNode.Basic, this));

        addId(TreeConstants.SELF_TYPE,
                new CgenNode(new class__(0,
                        TreeConstants.SELF_TYPE,
                        TreeConstants.No_class,
                        new Features(0),
                        filename),
                        CgenNode.Basic, this));

        addId(TreeConstants.prim_slot,
                new CgenNode(new class__(0,
                        TreeConstants.prim_slot,
                        TreeConstants.No_class,
                        new Features(0),
                        filename),
                        CgenNode.Basic, this));

        // The Object class has no parent class. Its methods are
        //        cool_abort() : Object    aborts the program
        //        type_name() : Str        returns a string representation
        //                                 of class name
        //        copy() : SELF_TYPE       returns a copy of the object

        class__ Object_class =
                new class__(0,
                        TreeConstants.Object_,
                        TreeConstants.No_class,
                        new Features(0)
                                .appendElement(new method(0,
                                        TreeConstants.cool_abort,
                                        new Formals(0),
                                        TreeConstants.Object_,
                                        new no_expr(0)))
                                .appendElement(new method(0,
                                        TreeConstants.copy,
                                        new Formals(0),
                                        TreeConstants.SELF_TYPE,
                                        new no_expr(0)))
                                .appendElement(new method(0,
                                        TreeConstants.type_name,
                                        new Formals(0),
                                        TreeConstants.Str,
                                        new no_expr(0))),
                        filename);

        installClass(new CgenNode(Object_class, CgenNode.Basic, this));


        // The Int class has no methods and only a single attribute, the
        // "val" for the integer.

        class__ Int_class =
                new class__(0,
                        TreeConstants.Int,
                        TreeConstants.Object_,
                        new Features(0)
                                .appendElement(new attr(0,
                                        TreeConstants.val,
                                        TreeConstants.prim_slot,
                                        new no_expr(0))),
                        filename);

        installClass(new CgenNode(Int_class, CgenNode.Basic, this));

        // Bool also has only the "val" slot.
        class__ Bool_class =
                new class__(0,
                        TreeConstants.Bool,
                        TreeConstants.Object_,
                        new Features(0)
                                .appendElement(new attr(0,
                                        TreeConstants.val,
                                        TreeConstants.prim_slot,
                                        new no_expr(0))),
                        filename);

        installClass(new CgenNode(Bool_class, CgenNode.Basic, this));

        // The class Str has a number of slots and operations:
        //       val                              the length of the string
        //       str_field                        the string itself
        //       length() : Int                   returns length of the string
        //       concat(arg: Str) : Str           performs string concatenation
        //       substr(arg: Int, arg2: Int): Str substring selection

        class__ Str_class =
                new class__(0,
                        TreeConstants.Str,
                        TreeConstants.Object_,
                        new Features(0)
                                .appendElement(new attr(0,
                                        TreeConstants.val,
                                        TreeConstants.Int,
                                        new no_expr(0)))
                                .appendElement(new attr(0,
                                        TreeConstants.str_field,
                                        TreeConstants.prim_slot,
                                        new no_expr(0)))
                                .appendElement(new method(0,
                                        TreeConstants.concat,
                                        new Formals(0)
                                                .appendElement(new formal_(0,
                                                        TreeConstants.arg,
                                                        TreeConstants.Str)),
                                        TreeConstants.Str,
                                        new no_expr(0)))
                                .appendElement(new method(0,
                                        TreeConstants.length,
                                        new Formals(0),
                                        TreeConstants.Int,
                                        new no_expr(0)))
                                .appendElement(new method(0,
                                        TreeConstants.substr,
                                        new Formals(0)
                                                .appendElement(new formal_(0,
                                                        TreeConstants.arg,
                                                        TreeConstants.Int))
                                                .appendElement(new formal_(0,
                                                        TreeConstants.arg2,
                                                        TreeConstants.Int)),
                                        TreeConstants.Str,
                                        new no_expr(0))),
                        filename);

        installClass(new CgenNode(Str_class, CgenNode.Basic, this));

        // The IO class inherits from Object. Its methods are
        //        out_string(Str) : SELF_TYPE  writes a string to the output
        //        out_int(Int) : SELF_TYPE      "    an int    "  "     "
        //        in_string() : Str            reads a string from the input
        //        in_int() : Int                "   an int     "  "     "

        class__ IO_class =
                new class__(0,
                        TreeConstants.IO,
                        TreeConstants.Object_,
                        new Features(0)
                                .appendElement(new method(0,
                                        TreeConstants.out_int,
                                        new Formals(0)
                                                .appendElement(new formal_(0,
                                                        TreeConstants.arg,
                                                        TreeConstants.Int)),
                                        TreeConstants.SELF_TYPE,
                                        new no_expr(0)))
                                .appendElement(new method(0,
                                        TreeConstants.out_string,
                                        new Formals(0)
                                                .appendElement(new formal_(0,
                                                        TreeConstants.arg,
                                                        TreeConstants.Str)),
                                        TreeConstants.SELF_TYPE,
                                        new no_expr(0)))
                                .appendElement(new method(0,
                                        TreeConstants.in_int,
                                        new Formals(0),
                                        TreeConstants.Int,
                                        new no_expr(0)))
                                .appendElement(new method(0,
                                        TreeConstants.in_string,
                                        new Formals(0),
                                        TreeConstants.Str,
                                        new no_expr(0))),
                        filename);
        installClass(new CgenNode(IO_class, CgenNode.Basic, this));

    }

    // The following creates an inheritance graph from
    // a list of classes.  The graph is implemented as
    // a tree of `CgenNode', and class names are placed
    // in the base class symbol table.

    private void installClass(CgenNode nd) {
        AbstractSymbol name = nd.getName();
        if (probe(name) != null) return;
        nds.addElement(nd);
        addId(name, nd);
    }

    private void installClasses(Classes cs) {
        for (Enumeration e = cs.getElements(); e.hasMoreElements(); ) {
            installClass(new CgenNode((Class_) e.nextElement(),
                    CgenNode.NotBasic, this));
        }
    }

    private void buildInheritanceTree() {
        for (Enumeration e = nds.elements(); e.hasMoreElements(); ) {
            setRelations((CgenNode) e.nextElement());
        }
    }

    private void setRelations(CgenNode nd) {
        CgenNode parent = (CgenNode) probe(nd.getParent());
        nd.setParentNd(parent);
        parent.addChild(nd);
    }

    /**
     * Constructs a new class table and invokes the code generator
     */
    public CgenClassTable(Classes cls) {
        nds = new Vector();

        stringclasstag = 0 /* Change to your String class tag here */;
        intclasstag = 0 /* Change to your Int class tag here */;
        boolclasstag = 0 /* Change to your Bool class tag here */;

        enterScope();
        if (Flags.cgen_debug) System.out.println("Building CgenClassTable");

        installBasicClasses();
        installClasses(cls);
        buildInheritanceTree();

        code();

        exitScope();
    }


    /**
     * This method is the meat of the code generator.  It is to be
     * filled in programming assignment 5
     */
    public void code() {
    }

    /**
     * Gets the root of the inheritance tree
     */
    public CgenNode root() {
        return (CgenNode) probe(TreeConstants.Object_);
    }
}
			  
    
