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

/**
 * This class aggregates all kinds of support routines and constants
 * for the code generator; all routines are statics, so no instance of
 * this class is even created.
 */
public class CgenSupport {
    /**
     * Runtime constants for controlling the garbage collector.
     */
    final static String[] gcInitNames = {
            "_NoGC_Init", "_GenGC_Init", "_ScnGC_Init"
    };

    /**
     * Runtime constants for controlling the garbage collector.
     */
    final static String[] gcCollectNames = {
            "_NoGC_Collect", "_GenGC_Collect", "_ScnGC_Collect"
    };

    final static int MAXINT = 100000000;
    final static int WORD_SIZE = 4;
    final static int LOG_WORD_SIZE = 2;     // for logical shifts

    // Global names
    final static String CLASSNAMETAB = "class_nameTab";
    final static String CLASSOBJTAB = "class_objTab";
    final static String INTTAG = "_int_tag";
    final static String BOOLTAG = "_bool_tag";
    final static String STRINGTAG = "_string_tag";
    final static String HEAP_START = "heap_start";

    // Naming conventions
    final static String DISPTAB_SUFFIX = "_dispTab";
    final static String METHOD_SEP = ".";
    final static String CLASSINIT_SUFFIX = "_init";
    final static String PROTOBJ_SUFFIX = "_protObj";
    final static String OBJECTPROTOBJ = "Object" + PROTOBJ_SUFFIX;
    final static String INTCONST_PREFIX = "int_const.";
    final static String STRCONST_PREFIX = "str_const.";
    final static String BOOLCONST_PREFIX = "bool_const.";


    final static int EMPTYSLOT = 0;
    final static String LABEL = ":\n";

    // information about object headers
    final static int DEFAULT_OBJFIELDS = 3;
    final static int TAG_OFFSET = 0;
    final static int SIZE_OFFSET = 1;
    final static int DISPTABLE_OFFSET = 2;

    final static int STRING_SLOTS = 1;
    final static int INT_SLOTS = 1;
    final static int BOOL_SLOTS = 1;

}
    
    
    

