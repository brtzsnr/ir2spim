package coolir;



import java.util.ArrayList;
import java.util.StringTokenizer;

/**
 * Created with IntelliJ IDEA.
 * User: B10625
 * Date: 10/22/12
 * Time: 2:13 PM
 * To change this template use File | Settings | File Templates.
 */
public class LLVMInstruction {

    public static final int ADD = 0;
    public static final int SUB = 1;
    public static final int MUL = 2;
    public static final int DIV = 3;
    public static final int XOR = 4;
    public static final int LOAD = 5;
    public static final int STORE = 6;
    public static final int INTTOPTR = 7;
    public static final int PTRTOINT = 8;
    public static final int ICMP = 9;
    public static final int BR = 10;
    public static final int LABEL = 11;
    public static final int SELECT = 12;
    public static final int CALL = 13;
    public static final int RET = 14;
    public static final int PHI = 15;
    public static final int COMMENT = 16;
    public static final int ALLOCA = 17;

    public static String indent = "  ";

    Instruction instruction;

    public LLVMInstruction(int type, Object... arguments) {
        switch (type) {
            case (LLVMInstruction.ADD):
                instruction = new Add(arguments);
                break;
            case (LLVMInstruction.SUB):
                instruction = new Sub(arguments);
                break;
            case (LLVMInstruction.MUL):
                instruction = new Mul(arguments);
                break;
            case (LLVMInstruction.DIV):
                instruction = new Div(arguments);
                break;
            case (LLVMInstruction.XOR):
                instruction = new Xor(arguments);
                break;
            case (LLVMInstruction.LOAD):
                instruction = new Load(arguments);
                break;
            case (LLVMInstruction.STORE):
                instruction = new Store(arguments);
                break;
            case (LLVMInstruction.INTTOPTR):
                instruction = new Inttoptr(arguments);
                break;
            case (LLVMInstruction.PTRTOINT):
                instruction = new Ptrtoint(arguments);
                break;
            case (LLVMInstruction.ICMP):
                instruction = new Icmp(arguments);
                break;
            case (LLVMInstruction.BR):
                instruction = new Br(arguments);
                break;
            case (LLVMInstruction.LABEL):
                instruction = new Label(arguments);
                break;
            case (LLVMInstruction.SELECT):
                instruction = new Select(arguments);
                break;
            case (LLVMInstruction.CALL):
                instruction = new Call(arguments);
                break;
            case (LLVMInstruction.RET):
                instruction = new Ret(arguments);
                break;
            case (LLVMInstruction.PHI):
                instruction = new Phi(arguments);
                break;
            case (LLVMInstruction.COMMENT):
                instruction = new Comment(arguments);
                break;
            case (LLVMInstruction.ALLOCA):
                instruction = new Alloca(arguments);
                break;
            default:
                break;
        }
    }

    class Add implements Instruction {
        public Object dest;
        public Object op1, op2;
        public Object isInc;

        public Add(Object... arguments) {
            dest = (arguments[0]);
            op1 = (arguments[1]);
            op2 = (arguments[2]);
        }

        public String toString() {
            String ret = "";

            ret += indent + dest + " = add i32 " + op1 + ", " + op2 + "\n";

            return ret;
        }

        public void replace(String a, String b) {
            if (op1.toString().equals(a))
                op1 = b;
            else if (op2.toString().equals(a))
                op2 = b;
        }
    }

    class Sub implements Instruction {
        public Object dest;
        public Object op1, op2;

        public Sub(Object... arguments) {
            dest = (arguments[0]);
            op1 = (arguments[1]);
            op2 = (arguments[2]);
        }

        public String toString() {
            String ret = "";

            ret += indent + dest + " = sub i32 " + op1 + ", " + op2 + "\n";

            return ret;
        }

        public void replace(String a, String b) {
            if (op1.toString().equals(a))
                op1 = b;
            else if (op2.toString().equals(a))
                op2 = b;
        }
    }

    class Mul implements Instruction {
        public Object dest;
        public Object op1, op2;

        public Mul(Object... arguments) {
            dest = (arguments[0]);
            op1 = (arguments[1]);
            op2 = (arguments[2]);
        }

        public String toString() {
            String ret = "";

            ret += indent + dest + " = mul i32 " + op1 + ", " + op2 + "\n";

            return ret;
        }

        public void replace(String a, String b) {
            if (op1.toString().equals(a))
                op1 = b;
            else if (op2.toString().equals(a))
                op2 = b;
        }
    }

    class Div implements Instruction {
        public Object dest;
        public Object op1, op2;

        public Div(Object... arguments) {
            dest = (arguments[0]);
            op1 = (arguments[1]);
            op2 = (arguments[2]);
        }

        public String toString() {
            String ret = "";

            ret += indent + dest + " = sdiv i32 " + op1 + ", " + op2 + "\n";

            return ret;
        }

        public void replace(String a, String b) {
            if (op1.toString().equals(a))
                op1 = b;
            else if (op2.toString().equals(a))
                op2 = b;
        }
    }

    class Xor implements Instruction {
        public Object dest;
        public Object op1, op2;

        public Xor(Object... arguments) {
            dest = (arguments[0]);
            op1 = (arguments[1]);
            op2 = (arguments[2]);
        }

        public String toString() {
            String ret = "";

            ret += indent + dest + " = xor i32 " + op1 + ", " + op2 + "\n";

            return ret;
        }

        public void replace(String a, String b) {
            if (op1.toString().equals(a))
                op1 = b;
            else if (op2.toString().equals(a))
                op2 = b;
        }
    }

    class Load implements Instruction {
        public Object dest;
        public Object from;

        public Load(Object... arguments) {
            dest = (arguments[0]);
            from = (arguments[1]);
        }

        public String toString() {
            String ret = "";

            ret += indent + dest + " = load i32* " + from + "\n";

            return ret;
        }

        public void replace(String a, String b) {
            if (dest.equals(a))
                dest = b;
            if (from.equals(a))
                from = b;

            return;
        }
    }

    class Store implements Instruction {
        public Object from;
        public Object to;

        public Store(Object... arguments) {
            from = (arguments[0]);
            to = (arguments[1]);
        }

        public String toString() {
            String ret = "";

            ret += indent + "store i32 " + from + ", i32* " + to + "\n";

            return ret;
        }

        public void replace(String a, String b) {
            if (from.equals(a))
                from = b;
            if (to.equals(a))
                to = b;
        }
    }

    class Inttoptr implements Instruction {
        public Object dest;
        public Object src;
        public String to;

        public Inttoptr(Object... arguments) {
            dest = (arguments[0]);
            src = (arguments[1]);
            to = (String) (arguments[2]);
        }

        public String toString() {
            String ret = "";

            ret += indent + dest + " = inttoptr i32 " + src + " to " + to + "\n";

            return ret;
        }

        public void replace(String a, String b) {
            if (src.equals(a))
                src = b;
            return;
        }
    }

    class Ptrtoint implements Instruction {
        public Object dest;
        public String from;
        public Object src;

        public Ptrtoint(Object... arguments) {
            dest = (arguments[0]);
            from = (String) (arguments[1]);
            src = (arguments[2]);
        }

        public String toString() {
            String ret = "";

            ret += indent + dest + " = ptrtoint " + from + " " + src + " to i32 " + "\n";

            return ret;
        }

        public void replace(String a, String b) {
            if (src.equals(a))
                src = b;
            return;
        }
    }

    class Icmp implements Instruction {
        public Object dest;
        public String op;
        public String tip;
        public Object op1;
        public String tip2;
        public Object op2;

        public Icmp(Object... arguments) {
            dest = arguments[0];
            op = (String) arguments[1];
            tip = (String) arguments[2];
            op1 = arguments[3];
            op2 = arguments[4];
        }

        public String toString() {
            String ret = "";

            ret += indent + dest + " = icmp " + op + " " + tip + " " + op1 + ", " + " " + op2 + "\n";

            return ret;
        }

        public void replace(String a, String b) {
            if (op1.toString().equals(a))
                op1 = b;
            else if (op2.toString().equals(a))
                op2 = b;
        }
    }

    class Br implements Instruction {
        boolean isLabel;
        String label, label1, label2;
        Object cond;
 
        public Br(Object... arguments) {
            isLabel = (Boolean) (arguments[0]);
            if (isLabel)
                label = (String) (arguments[1]);
            else {
                cond = arguments[1];
                label1 = (String) arguments[2];
                label2 = (String) arguments[3];
            }
        }

        public String toString() {
            String ret = "";

            if (isLabel)
                ret += indent + "br label %" + label + "\n";
            else
                ret += indent + "br i1 %" + cond + ", label %" + label1 + ", label %" + label2 + "\n";

            return ret;
        }

         public void replace(String a, String b) {
            return;
        }
    }

    class Label implements Instruction {
        String label;

        public Label(Object... arguments) {
             label = (String) (arguments[0]);
        }

        public String toString() {
            String ret = "";

            ret += label + ":" + "\n";

            return ret;
        }

        public void replace(String a, String b) {
            return;
        }
    }


    class Select implements Instruction {
        public int from, val1, val2;
        public Object dest;
        public Select(Object... arguments) {
            dest = (arguments[0]);
            from = (Integer) (arguments[1]);
            val1 = (Integer) (arguments[2]);
            val2 = (Integer) (arguments[3]);
        }

        public String toString() {
            String ret = "";

            ret += indent + dest + " = select i1 " + "%" + from + ", i32 " + val1 + ", i32 " + val2 + "\n";

            return ret;
        }

         public void replace(String a, String b) {
            return;
        }
    }


    class Call implements Instruction {
        public boolean isvoid;
        public Object name;
        public String args;
        public String argsType;
        public Object dest;
        public Object paramList;
 
        public Call(Object... arguments) {
             isvoid = (Boolean) arguments[0];
            if (isvoid) {
                name = arguments[1];
                args = (String) arguments[2];
                paramList = (ArrayList<Integer>) arguments[3];
            } else {
                dest = arguments[1];
                argsType = (String) arguments[2];
                name = arguments[3];
                args = (String) arguments[4];
                paramList = (ArrayList<Integer>) arguments[5];
            }
        }

        public String toString() {
            String ret = "";

            if (isvoid)
                ret += indent + "call void " + name + "(" + args + ")" + "\n";
            else
                ret += indent + dest + " = call i32 " + argsType + " " + ((name instanceof String) ? name : "%" + name) + "(" + args + ")" + "\n";

            return ret;
        }

        public void replace(String a, String b) {
        }
    }

    class Ret implements Instruction {
        boolean isvoid;
        Object src;

        public Ret(Object... arguments) {
            isvoid = (Boolean) arguments[0];
            if (!isvoid) {
                src = arguments[1];
                if (src instanceof Integer) {
                    src = "%" + src;
                }
            }

        }

        public String toString() {
            String ret = "";

            if (isvoid)
                ret += indent + "ret void" + "\n";
            else
                ret += indent + "ret i32 " + src + "\n";

            return ret;
        }

        public void replace(String a, String b) {
            if (src.equals(a))
                src = b;

            return;
        }
    }

    class Phi implements Instruction {
        public Object dest;
        String tip;
        String str;
        Object paramList;

        public Phi(Object... arguments) {
            dest = arguments[0];
            tip = (String) arguments[1];
            str = (String) arguments[2];

            paramList = (ArrayList) arguments[3];
        }

        public String toString() {
            String ret = "";

            ret += indent + dest + " = phi " + tip + " " + str + "\n";

            return ret;
        }
        public void replace(String a, String b) {
            String newStr = "";
            StringTokenizer st = new StringTokenizer(str, " [],");
            while (st.hasMoreTokens()) {
                String c = st.nextToken().toString();

                if (c.trim().equals(a))
                    c = b;

                newStr += " [ " + c + " , ";

                String l = st.nextToken().toString();

                newStr += l + " ] ";

                if (st.hasMoreTokens())
                    newStr += ",";
            }

            str = newStr;

        }
    }

    class Comment implements Instruction {
        String comment;

        public Comment(Object... arguments) {
            comment = (String) arguments[0];
        }

        public String toString() {
            String ret = "";

            ret += ";" + comment + "\n";

            return ret;
        }

        public void setDef(Object dest) {
            return;
        }

        public void replace(String a, String b) {
            return;
        }

    }

    class Alloca implements Instruction {
        String variable;

        public Alloca(Object... arguments) {
            variable = (String) arguments[0];
        }

        public String toString() {
            String ret = "";

            ret += indent + variable + "a" + " = alloca i32 " + "\n";

            return ret;
        }

        public void replace(String a, String b) {
            return;
        }
    }

    public String toString() {
        return instruction.toString();
    }

    public interface Instruction {
        // Add here any methods that an instruction should implement
        public void replace(String a, String b);
    }

    public void replace(String a, String b) {
        instruction.replace(a, b);
    }
}
