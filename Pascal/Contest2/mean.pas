program Mean(input, output);

var n, i, bsri: integer;
    sr, bsr : real;
    a : array[1..100] of real;

begin
    for i := 1 to 100 do
	    a[i] := 0;
	read(n);
	for i := 1 to n do
	    read(a[i]);
	sr := 0;
	bsr := a[1];
	bsri := 1;
	for i := 1 to n do
	    sr := sr + a[i];
	sr := sr / n;
	for i := 1 to n do
	    if (abs(sr - bsr) > abs(sr - a[i])) then
		    begin
		     bsr := a[i];
		     bsri := i
		    end;
    writeln(bsri)
end.
