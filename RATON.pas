Program raton;
Uses Crt;
Var
  a,b,c,r,bot:Integer;

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

Procedure activaRaton;
Assembler;
Asm
  MOV AX,0000H
  INT 33H
End;

Procedure muestraRaton;
Assembler;
Asm
  MOV AX,01H
  INT 33H
  MOV AX,04H
  INT 33H
End;

Procedure posicionRaton (var x,y,b:Integer); //var=paso de parametros por referencia
Var
  b1,x1,y1:Integer;
Begin
Asm
  MOV AX,03H
  INT 33H
  MOV b1,BX
  MOV x1,CX
  MOV y1,DX
End;
  x:=x1;
  y:=y1;
  b:=b1;
End;

Procedure apagaraton;
Assembler;
Asm
  MOV AH,02H
  INT 33H
End;
Begin
  borra;
  activaRaton;
  muestraRaton;
  cursor (33,12);
  write ('X = ');
  cursor (41,12);
  write ('Y = ');
  a:=0;
  b:=0;
  repeat
      posicionRaton (c,r,bot);
      c:=c div 8;
      r:=r div 8;
      if (c<>a) or (b<>r) then
      Begin
        cursor (37,12);
        write (c,' ');
        cursor (45,12);
        write (r,' ');
        a:=c;
        b:=r;
    End;
  until bot=1;
  apagaraton;
End.