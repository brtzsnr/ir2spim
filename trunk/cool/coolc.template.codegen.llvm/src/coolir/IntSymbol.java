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

import java.io.PrintStream;

/**
 * String table entry for integer constants
 *
 * @see AbstractSymbol
 */
class IntSymbol extends AbstractSymbol {
    /* Creates a new symbol.
     * 
     * @see AbstractSymbol
     * */
    public IntSymbol(String str, int len, int index) {
        super(str, len, index);
    }

    /**
     * Generates code for the integer constant definition.  This method
     * is incomplete; you get to finish it up in programming assignment
     * 5.
     *
     * @param intclasstag the class tag for string object
     * @param s           the output stream
     */
    public void codeDef(int intclasstag) {
    }

    /**
     * Emits a reference to this integer constant.
     *
     * @param s the output stream
     */
    public void codeRef() {
    }

    /**
     * Returns a copy of this symbol
     */
    public Object clone() {
        return new IntSymbol(str, str.length(), getIndex());
    }
}
