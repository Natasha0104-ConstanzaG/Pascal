Program ascii;
Uses Crt;
Var
   col,ren,x:Integer;
Procedure borra;
Begin
   Asm
    MOV AX,0600H
    MOV BH,07H
    MOV CX,0000H
    MOV DX,184FH
    INT 10H
   end;
End;
Procedure cursor (x,y:Byte);
Begin
   Asm
    MOV AH,02H
    MOV BH,00H
    MOV DH,y
    MOV DL,x
    INT 10H
  end;
End;
Begin
borra;
ren:=1;
col:=1;
cursor (33,0);
writeln ('Programa Ascii');
for x:= 0 to 255 do
begin
   cursor (col,ren);
   write (x, ' ', chr(x));
   ren:=ren+1;
   if ren > 22 then
   begin
   ren:=1;
   col:=col+6;
  end;
end;
readln;
End.