program Count(input, output);

var n, i, sum : integer;
	a : array[0..127] of integer;
	ch : char;

begin
	read(n);
	for i := 0 to 127 do
		a[i] := 0;
	for i := 0 to n do
		begin
			read(ch);
			inc(a[ord(ch)]);
		end;
	sum := 0;
	a[10] := a[10] - 1; {при вводе entre считается за символ, что недопустимо}
	for i := 0 to 127 do
		begin
			if a[i] > 0 then
				inc(sum);
		end;
	writeln(sum)
end.
