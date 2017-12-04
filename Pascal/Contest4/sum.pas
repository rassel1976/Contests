program sum(input, output);

type list = ^node;
	 node = record data : integer; next : list end;
	 
var l, beg, en : list;
	n, min, max : integer;
	
procedure inputList(var l : list; n : integer);
	var i : integer;
		q : list;
	begin
		for i := 1 to n do
		 begin
			new(q);
			read(q^.data);
			q^.next := l;
			l := q
		 end;
	end;

procedure outputList(p : list);
	begin
		while p <> nil do
		 begin
			writeln(p^.data);
			p := p^.next
		 end;
	end;
	
function maxL(l : list) : integer;
	var m : integer;
	begin
		m := l^.data;
		while l <> nil do
		 begin
			if l^.data > m then
			 begin
				m := l^.data
			 end;
			l := l^.next
		 end;
		maxL := m
	end;
	
function minL(l : list) : integer;
	var m : integer;
	begin
		m := l^.data;
		while l <> nil do
		 begin
			if l^.data < m then
			 begin
				m := l^.data
			 end;
			l := l^.next
		 end;
		minL := m
	end;

function searchL(l : list; k : integer; var q : list) : integer;
	var i, g : integer;
	begin
		i := 1;
		while l <> nil do
		 begin
			if l^.data = k then
			 begin
				g := i;
				q := l;
				break
			 end
			else
			 begin
				inc(i);
				l := l^.next
			 end;
		 end;
		searchL := g
	end;

function sum(b, e : list) : integer;
	var k : integer;
	begin
		k := 0;
		while b <> e^.next do
		 begin
			k := k + b^.data;
			b := b^.next
		 end;
		sum := k
	end;

procedure clean(var l : list);
	begin
		if l <> nil then
		 begin
			clean(l^.next);
			dispose(l);
			l := nil
		 end;
	end;

begin
	readln(n);
	l := nil;
	inputList(l, n);
	min := searchL(l, minL(l), beg);
	max := searchL(l, maxL(l), en);
	if min > max then
		writeln(sum(en, beg))
	else
		writeln(sum(beg, en));
	clean(l)
end.
