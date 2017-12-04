program negative(input, output);

type list = ^node;
	 node = record data : integer; next : list end;
	 
var l, l1 : list;
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

procedure negative (l : list; var l1 : list);
	var q : list;
	begin
		while l <> nil do
		 begin
			new(q);
			q^.data := l^.data;
			if q^.data >= 0 then
			 begin
				q^.next := l1;
				l1 := q
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
	inputList(l, n);
	negative(l, l1);
	outputList(l1);
	clean(l);
	clean(l1)
end.
