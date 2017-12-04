program Exmin(input, output);

type mas = array[1..100] of integer;

var n, m, i : integer;
    a, b : mas;

procedure rv(var a, b : integer);
	var q : integer;
	begin
		q := a;
		a := b;
		b := q;
	end;

procedure sort(var m : mas; n : integer);
	var max, i, k, ind : integer;
	begin
	    for k := n downto 2 do
	        begin
			 max := m[1];
			 ind := 1;
			 for i := 1 to k do
			     begin
			      if m[i] > max then
				      begin
				       max := m[i];
				       ind := i
				      end;
			     end;
			 rv(m[ind], m[k]);
	        end;
	end;

function search(var k, n : integer; m : mas) : boolean;
    var q : boolean;
        i : integer;
    begin
        q := false;
        for i := 1 to n do
            if m[i] = k then
                q := true;
        search := q;
    end;

begin
    read(n,m);
    for i := 1 to 100 do
        begin
         a[i] := 0;
         b[i] := 0;
        end;
    for i := 1 to n do
	    read(a[i]);
	for i := 1 to m do
	    read(b[i]);
	sort(a, n);
	sort(b, m);
	for i := 1 to n do
	    if not search(a[i], m, b) then
	        begin
	         writeln(a[i]);
	         break;
	        end;
end.
