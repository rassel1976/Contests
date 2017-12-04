program after(input, output);

type list = ^node;
	 node = record data : integer; next : list end;

var n, e, e1 : integer;
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
	
procedure after(l : list; e, e1 : integer);
	var q : list;
	begin
		while l <> nil do
		 begin
			if (l^.data = e)  then
			 begin
				new(q);
				q^.data := e1;
				q^.next := l^.next;
				l^.next := q;
				l := l^.next
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
	readln(n);
	l := nil;
	inputList(l, n);
	read(e, e1);
	after(l, e, e1);
	outputList(l);
	clean(l)
end.
