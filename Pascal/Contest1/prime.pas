program Prime(input, output);

var i, k : Longint;

begin
	read(k);
	i := 2;
	{Постваил костыль, т. к. необЪяснимо зацикливалось на 1-це}
	if k > 1 then
	 begin
		while (k mod i <> 0) do
			i := i + 1;
			if i = k then
				writeln('YES')
			else
				writeln('NO')
	 end
	else
		writeln('NO')
end.
