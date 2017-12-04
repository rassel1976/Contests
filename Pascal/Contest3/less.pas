program lss(input, output);

var a, b : integer;

function max(a, b : integer) : integer;
	begin
	 if a > b then
		max := a
	 else
		max := b
	end;

function less(a, b : integer) : boolean;
	var sa, sb, i : integer;
	begin
	 sa := 0;
	 sb := 0;
	 for i := 1 to max(a, b) do
		begin
		 if (i <= a) and (a mod i = 0) then
			inc(sa);
		 if (i <= b) and (b mod i = 0) then
			inc(sb)
		end;
	 if sa < sb then
		less := true
	 else
		less := false
	end;

begin
	read(a, b);
	if less(a, b) then
		writeln('YES')
	else
		writeln('NO')
end.
