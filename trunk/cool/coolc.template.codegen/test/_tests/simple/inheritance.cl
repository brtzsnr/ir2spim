

class P {
    i : Int <- 10;
    io : IO <- new IO;
    
    method() : SELF_TYPE {
        {
            io.out_string("P.method()\n");
            io.out_int(i);
            io.out_string("\n");
            self;
        }
    };
};

class C inherits P {
    
    method() : SELF_TYPE {
        {
            io.out_string("C.method()\n");
            io.out_int(i);
            io.out_string("\n");
            self@P.method();
            self;
        }
    };
};


class Main {
    c : C <- new C;
    p : P <- new P;

    main () : Int {

        {
            p.method();
            c.method();
            0;   
        }
    };    
};

