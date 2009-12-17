class Main inherits IO
{
	a : Int;
	
	fact(n: Int) : Int
	{
		if n = 0 then 1 else n * fact(n - 1) fi
	};
	
	main() : Object
	{
		new IO.out_int(fact(4)).out_string("\n")
	};
};
