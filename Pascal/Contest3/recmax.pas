program Rmax(input, output);

function recmax (a : integer) : integer;
	var i, j : integer;
	begin
	 read(i);
	 if i = 0 then
		recmax := 0
	 else
		begin
		 j := recmax(a);
		 if j > i then
			recmax := j
		else
			recmax := i
		end;
	end;

begin
	writeln(recmax(1))
end.
