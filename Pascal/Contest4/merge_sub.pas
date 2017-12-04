program merge_sub(input, output);

type list = ^node;
	 node = record data : integer; next : list end;
	
var n, m : integer;
	l, l1 : list;

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

function searchL(l : list; k : integer) : boolean;
	var i, g : integer;
	begin
		i := 1;
		g := 0;
		while l <> nil do
		 begin
			if l^.data = k then
			 begin
				g := i;
				break
			 end
			else
			 begin
				inc(i);
				l := l^.next
			 end;
		 end;
		if g > 0 then
			searchL := true
		else
			searchL := false
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
	var l1, q, q1 : list;
	begin
		l1 := nil;
		q := l;
		while q <> nil do
		 begin
			if (not searchL(l1, q^.data)) then
			 begin
				new(q1);
				q1^.data := q^.data;
				q1^.next := l1;
				l1 := q1;
			 end;
			q := q^.next
		 end;
		clean(l);
		l := l1
	end;

procedure per(var l1, l2 : list); {перемещение из одного списка в другой первого элемента}
	var q : list;
	begin
		q := l1;
		l1 := l1^.next;
		q^.next := l2;
		l2 := q
	end;

procedure reverse(var l : list);
	var l1 : list;
	begin
		l1 := nil;
		while l <> nil do
			per(l, l1);
		l := l1
	end;

procedure merge_sub(l1 : list; var l : list);
	begin
		first(l);
		reverse(l);
		while l1 <> nil do
		 begin
			if searchL(l, l1^.data) then
				delete(l, l1^.data);
			l1 := l1^.next
		 end;
	end;
	
begin
	readln(n, m);
	inputList(l, n);
	inputList(l1, m);
	merge_sub(l1, l);
	outputList(l);
	clean(l)
end.
