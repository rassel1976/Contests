program first(input, output);

type list = ^node;
	 node = record data : integer; next : list end;

var n : integer;
	l : list;

procedure inputList(var l : list; n : integer);
	var q, ls : list;
		i : integer;
	begin
		ls := l;
		for i := 1 to n do
		 begin
			new(q);
			read(q^.data);
			q^.next := nil;
			if l = nil then
			 begin
				l := q;
				ls := q
			 end
			else
			 begin
				ls^.next := q;
				ls := q
			 end;
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

procedure clean(var l : list);
	begin
		if l <> nil then
		 begin
			clean(l^.next);
			dispose(l);
			l := nil
		 end;
	end;

procedure delete(var l : list; k : integer);
	var q, q1 : list;
	begin
		q := l;
		while q <> nil do
			if q^.data = k then
			 begin
				if q = l then
				 begin
					l := l^.next;
					dispose(q);
					q := l
				 end
				else
				 begin
					q1^.next := q^.next;
					dispose(q);
					q := q1^.next
				 end;
			 end
			else
			 begin
				q1 := q ;
				q := q^.next
			 end;
	end;


procedure first(var l : list);
	var q : list;
	begin
		q := l;
		while q <> nil do
		 begin
			delete(q^.next, q^.data);
			q := q^.next
		 end;
	end;

begin
	readln(n);
	l := nil;
	inputList(l, n);
	first(l);
	outputList(l);
	clean(l)
end.
