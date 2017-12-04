program Max3(input, output);

var m1, m2, m3, a : Integer;

begin
	m1 := 0;
	m2 := m1;
	m3 := m2;
	repeat
		read(a);
		if a > m1 then
			begin
				m3 := m2;
				m2 := m1;
				m1 := a;
			end
		else
			if a > m2 then
				begin
					m3 := m2;
					m2 := a;
				end
			else
				if a > m3 then
					m3 := a;
	until a = 0;
	writeln(m1, ' ', m2, ' ', m3);
end.
