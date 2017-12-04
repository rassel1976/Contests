program Rd(input, output);

function recdigits(a : integer) : integer;
	var col : integer;
		c : char;
	begin
	 read(c);
	 if c = '.' then
		recdigits := 0
	 else
		if (c >= '0') and (c <= '9') then
			recdigits := recdigits(a) + 1
		else
			recdigits := recdigits(a)
	end;

begin
	writeln(recdigits(1))
end.
