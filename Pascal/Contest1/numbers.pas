program Numbers(input, output);

var a, b, c : Integer;

begin
	for a := 1 to 9 do
	 begin
		for b := 0 to 9 do
		 begin
			for c := 0 to 9 do 
			 begin
				if ((a <> b) and (b <> c) and (a <> c)) then
					writeln(a, b, c);
			 end;
		 end;
	 end;
end.
