program order(input, output);

type list = ^node;
	 node = record data : integer; next : list end;

var n : integer;
	l, l3 : list;

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

procedure merge(var l1, l2 : list);
	var l : list;
	begin
		if l1 <> nil then
		 begin
			l := l1;
			while l^.next <> nil do
				l := l^.next;
			l^.next := l2
		 end
		else
			l1 := l2
	end;

procedure per(var l1, l2 : list); {перемещение из одного списка в другой первого элемента}
	var q : list;
	begin
		q := l1;
		l1 := l1^.next;
		q^.next := l2;
		l2 := q
	end;

procedure sort(var l : list);
	var l1, l2, l3 : list;
	begin
		if l <> nil then
		 begin
			l1 := nil;
			l2 := nil;
			l3 := nil;
			per(l, l2);
			while l <> nil do
			 begin
				if l^.data > l2^.data then
					per(l, l3)
				else
					if l^.data < l2^.data then
						per(l, l1)
					else
						per(l, l2)
			 end;
			sort(l1);
			sort(l3);
			merge(l1, l2);
			merge(l1, l3);
			l := l1
		 end;
	end;

begin
	readln(n);
	l := nil;
	l3 := nil;
	inputList(l, n);
	sort(l);
	outputList(l);
	clean(l)
end.
