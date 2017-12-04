program Magic(input, output);

type matrix = array[1..100, 1..100] of integer;

var mtr : matrix;
	n, i, g : integer;
	
function sumStr(var mat : matrix; n, i : integer) : integer;
	var sum, g : integer;
	begin
		sum := 0;
		for g := 1 to n do
			sum := sum + mat[i, g];
		sumStr := sum;
	end;
	
function sumStl(var mat : matrix; n, g : integer) : integer;
	var sum, i : integer;
	begin
		sum := 0;
		for i := 1 to n do
			sum := sum + mat[i, g];
		sumStl := sum;
	end;
	
function mgkMtr(var mat : matrix; n : integer) : boolean;
	var smr, sml, i : integer;
		str, stl : boolean;
	begin
		smr := sumStr(mat, n, 1);
		sml := sumStl(mat, n, 1);
		str := true;
		stl := true;
		for i := 2 to n do
			begin
				if sumStr(mat, n, i) <> smr then
					str := false;
				if sumStl(mat, n, i) <> sml then
					stl := false;
			end;
		if (smr = sml) and str and stl then
			mgkMtr := true
		else
			mgkMtr := false
	end;

begin
	read(n);
	for i := 1 to 100 do
		for g := 1 to 100 do
			mtr[i, g] := 0;
	for i := 1 to n do
		for g := 1 to n do
			read(mtr[i, g]);
	if mgkMtr(mtr, n) then 
		writeln('YES')
	else
		writeln('NO')
end.
