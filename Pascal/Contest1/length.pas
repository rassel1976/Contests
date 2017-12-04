program Length(input, output);

var num, i, numN : Integer;
	k : char;

begin
	i := 0;
	numN := 0;
	read(k);
	while (k <> '.') do
		begin
			i := i + 1;
			if ((k >= '0') and (k <= '9')) then
				begin
					num := ord(k) - ord('0');
					numN := numN + 1;
				end;
			read(k);
		end;
	if ((numN = 1) and (i = num)) then
		writeln('YES')
	else
		writeln('NO')
end.
