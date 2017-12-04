program Scalar(input, output);

type mas = array[1..100] of real;
	 vec = array[1..3] of mas;

var n, i, j : integer;
	vc : vec;
	
procedure swap(var m : vec; i, j : integer);
	var q : mas;
	begin
		q := m[i];
		m[i] := m[j];
		m[j] := q
	end;

function minM(var m : mas; k : integer) : real;
	var i : integer;
		min : real;
	begin
		min := m[1];
		for i := 1 to k do
			if m[i] < min then
				min := m[i];
		minM := min
	end;

procedure srt(var m : vec; k : integer);
	var ind, i : integer;
	begin
		ind := 1;
		for i := 1 to 3 do
			if minM(m[i], k) < minM(m[ind], k) then
				ind := i;
		swap(m, ind, 1)
	end;
	
function scalPr(var m, n : mas; k : integer) : real;
	var scp : real;
		l : integer;
	begin
		scp := 0;
		for l := 1 to k do;
			begin
			writeln(scp);
			scp := scp + m[l] * n[l];
			end;
		scalPr := scp
	end;


begin
	for i := 1 to 3 do
		for j := 1 to 100 do
			vc[i, j] := 0;
	read(n);
	writeln(n);
	for i := 1 to 3 do
		for j := 1 to n do
			begin
			read(vc[i,j]);
			writeln(vc[i,j]);
			end;
	writeln(scalPr(vc[1], vc[2], n))
end.
