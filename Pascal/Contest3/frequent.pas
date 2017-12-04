program fr(input, output);

const MAXN = 10000;

type word = packed array[1..MAXN] of 'a'..'z';

var W : word;
	n, i : integer;
	
function frequent(var w : word; n : integer) : char;
	var mas : array['a'..'z'] of integer;
		i : integer;
		c, mc : char;
	begin
	 for c := 'a' to 'z' do
		mas[c] := 0;
	 for i := 1 to n do
		mas[w[i]] := mas[w[i]] + 1;
	 mc := 'a';
	 for c := 'a' to 'z' do
		if mas[c] > mas[mc] then
			mc := c;
	 frequent := mc
	end;

begin
	readln(n);
	for i := 1 to n do
		read(w[i]);
	writeln(frequent(w, n))
end.
