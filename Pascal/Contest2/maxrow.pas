program Maxrow(input, output);

type str = array[1..100] of real;
	 matrix = array[1..100] of str;

var matr : matrix;
	n, m, i, g : integer;
	
function maxStr(var mas : str; n : integer) : real;
	var i : integer;
		max : real;
	begin
		max := mas[1];
		for i := 1 to n do
			if mas[i] > max then
				max := mas[i];
		maxStr := max;
	end;
	
procedure swapStr(var a, b : str);
	var c : str;
	begin
		c := a;
		a := b;
		b := c;
	end;

procedure sortMatr(var mtr : matrix; n, m : integer);
	var i, k, g : integer;
		max : str;
		begin
			for k := n downto 2 do
			begin
				max := mtr[k];
				g := k;
				for i := 1 to k do
					begin
						if maxStr(mtr[i], m) > maxStr(max, m) then
							begin
								max := mtr[i];
								g := i;
							end;
					end;
				swapStr(mtr[k], mtr[g]);
			end;
		end;

begin
	read(n,m);
	for i := 1 to 100 do
		for g := 1 to 100 do
			matr[i, g] := 0;
	for i := 1 to n do
		for g := 1 to m do
			read(matr[i, g]);
	sortMatr(matr, n, m);
	for i := 1 to n do
		begin
			for g := 1 to m do
				write(matr[i, g],' ');
			writeln();
		end;
end.
