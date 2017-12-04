program Nodesc(input, output);

var n, k, l, i : Integer;
    x : boolean;

begin
	read(n);
	x := True;
	read(k);
	n := n - 1;
	while (x and (n > 0)) do
		begin
		read(l);
		if l < k then x := false;
		k := l;
		n := n - 1;
		end;
	if x then writeln('YES') else writeln('NO')
end.
