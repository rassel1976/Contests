program split(input, output);

type list = ^node;
	 node = record data : integer; next : list end;
	 
var l, l1, l2 : list;
	n : integer;

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
			write(p^.data, ' ');
			p := p^.next
		 end;
	end;

procedure split(l : list; var l1, l2 : list);
	var q : list;
	begin
		while l <> nil do
		 begin
			new(q);
			q^.data := l^.data;
			if q^.data > 0 then
			 begin
				q^.next := l1;
				l1 := q
			 end
			else
			 begin
				q^.next := l2;
				l2 := q
			 end;
			l := l^.next
		 end;
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
	read(n);
	l := nil;
	l1 := nil;
	l2 := nil;
	inputList(l, n);
	split(l, l1, l2);
	write('L1: ');
	outputList(l1);
	writeln();
	write('L2: ');
	outputList(l2);
	clean(l);
	clean(l1);
	clean(l2)
end.
