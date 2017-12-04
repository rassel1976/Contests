program Various(input, output);

var num, i, pred, l, k : Integer;

begin
	read(i);
	num := 0;
	pred := -maxInt;
	for l := 1 to i do
	 begin
		read(k);
		if k > pred then
			num := num + 1;
		pred := k;
	 end;
	 writeln(num);
end.
