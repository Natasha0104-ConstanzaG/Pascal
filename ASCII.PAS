Program ascii;
Uses Crt;
Var
   x:Integer;
begin
clrscr;
writeln ('Programa Ascii'); 
for x:=0 to 255 do
begin
     write (x, ' ',chr (x), ' ');
     if (x+1) mod 12=0 then
        writeln;
end;
readln;
End.