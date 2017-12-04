program Trace(input, output);

type matr = array[1..100,1..100] of real;

var n, i, j : integer;
	a, b, c : matr;

function tr(var x : matr; n : integer) : real;
	var rez : real;
		i : integer;
	begin
	 rez := 0;
	 for i := 1 to n do
		rez := rez + x[i, i];
	 tr := rez
	end;
	
procedure matrPr(var x, y, z : matr; n : integer);
	var i, j, k : integer;
	begin
	 for i := 1 to n do
		for j := 1 to n do
			z[i, j] := 0;
	 for i := 1 to n do
		for j := 1 to n do
			for k := 1 to n do
				z[i, j] := z[i, j] + x[i, k] * y[k, j] 
	end;

begin
	readln(n);
	for i := 1 to 100 do
		for j := 1 to 100 do
			begin
			 a[i, j] := 0;
			 b[i, j] := 0
			end;
	for i := 1 to n do
		for j := 1 to n do
			read(a[i, j]);
	for i := 1 to n do
		for j := 1 to n do
			read(b[i, j]);
	if tr(a, n) < tr(b, n) then
		begin
		 c := a;
		 a := b;
		 b := c
		end;
	matrPr(b, b, a, n);
	for i := 1 to n do
		begin
		 for j := 1 to n do
			 write(a[i, j], ' ');
		 writeln()
		end;
end.
