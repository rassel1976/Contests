program Reverse(input, output);

var k, i : integer;
    a : array[1..100] of real;

procedure rv(var a, b : real);
	var q : real;
	begin
		q := a;
		a := b;
		b := q;
	end;

begin
    read(k);
    for i := 1 to 100 do
		a[i] := 0;
	for i := 1 to k do
		read(a[i]);
	for i := 1 to (k div 2) do
		rv(a[i],a[k-i+1]);
	for i := 1 to k do
		write(a[i],' ');
	writeln()
end.
