program Zeros(input, output);

type str = array[1..500] of integer;
	 matr = array[1..500] of str;

var a, b, c : matr;
	n, m, maxZ : integer;

procedure readM(var x : matr; n, m : integer);
	var i, j : integer;
	begin
	 for i := 1 to n do
		for j := 1 to m do
			read(x[i, j])
	end;

procedure writem(var x : matr; n, m : integer);
	var i, j : integer;
	begin
	 for i := 1 to n do
		begin
		 for j := 1 to m do
			write(x[i, j], ' ');
		 writeln()
		end;
	end;
	
function zero(var q : str; m : integer) : integer;
	var i : integer;
		flag : boolean;
	begin
	 flag := true;
	 for i := 1 to m do
		if q[i] <> 0 then
			flag := false;
	 zero := ord(flag)
	end;

function colZ(var q : matr; n, m : integer) : integer;
	var i, col : integer;
	begin
	 col := 0;
	 for i := 1 to n do
		col := col + zero(q[i], m);
	 colZ := col
	end;

begin
	read(n, m);
	readM(a, n, m);
	readM(b, n, m);
	readM(c, n, m);
	maxZ := colZ(a, n, m);
	if maxZ < colZ(b, n, m) then
		maxz := colz(b, n, m);
	if maxZ < colZ(c, n, m) then
		maxz := colZ(c, n, m);
	if maxZ > 0 then
		if maxZ = colZ(a, n, m) then
			writeM(a, n, m);
		if maxZ = colZ(b, n, m) then
			writeM(b, n, m);
		if maxZ = colZ(c, n, m) then
			writeM(c, n, m)
end.
