program testPrime(input, output);

var i, k : Longint;

begin
	for k := 1 to 1000000 do
	begin
		i := 2;
		while (k mod i <> 0) do
			i := i + 1;
		if i = k then
			writeln(k,' ' ,'YES')
		else
			writeln(k,' ' ,'NO')
	end;
end.
