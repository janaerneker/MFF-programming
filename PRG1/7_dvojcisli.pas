program dvojicisli;
var
a:array[1..10000] of char;
b:array[1..3] of char;

e,f,g,h:char;

i,m,vysledek,aktual,n,x,y,z:integer; {z je posledi dvojcisli}

function dvojcisli(m:integer):integer;

begin
n:= m mod 100;
dvojcisli:= n;
end;

begin

b[1]:=('0');
while(ord(b[1])>=ord('0')) and (ord(b[1])<=ord('9')) do
begin
     b[2]:=b[3];
     b[3]:=b[1];
     read(b[1]);
end;

z:= ((ord(b[2])-48)*10 + ord(b[3])-48);

{writeln(z); }

n:=1;

read(e);
{writeln(e);}
a[n]:=e;
while ((ord(e) >= ord('0')) and (ord(e) <= ord('1'))) do
begin
     n:=n+1;
     read(e);
     a[n]:=e;
end;

vysledek:=1;
aktual:=z;
for i:=n-1 downto 1 do
begin
  m:=ord(a[i])-48;
         if m=1 then
         begin
                vysledek:=dvojcisli(aktual*vysledek);
         end;
         aktual:=dvojcisli(aktual*aktual);
end;

if vysledek div 10 = 0 then
writeln('0',vysledek)
else
    if vysledek=0 then
    writeln('00')
    else
 writeln(vysledek);

end.