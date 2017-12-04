program Letters(input, output);

var ch : array[1..26] of integer;
    tch : char;
    i : integer;

begin
    for i := 1 to 26 do
        ch[i] := 0;
    read(tch);
    while tch <> '.' do
	    begin
	     ch[ord(tch) - ord('a') + 1] := ch[ord(tch) - ord('a') + 1] + 1;
	     read(tch)
	    end;
	for i := 1 to 26 do
	    if ch[i] = 1 then
	        write(chr(i + ord('a') - 1),' ')
end.
