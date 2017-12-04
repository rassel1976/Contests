program Fib(input, output);

var k, f1, f2 : Longint;

begin
	read(k);
	f1 := 0;
	f2 := 1;
	while f2 < k do
	 begin
		f2 := f1 + f2;
		f1 := f2 - f1;
	 end;
	if f2 = k then
		writeln('YES')
	else
		writeln('NO')
end.
