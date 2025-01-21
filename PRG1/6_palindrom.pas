program symetricnost;
var
blablabla,x,i: longint;
policko:array[1..1000000] of longint;

function cisla(a:longint):boolean;
var k,b,i,pocetcifer:longint;
pole:array[1..1000000] of longint;
symetrie:boolean;

begin
symetrie:=true;
k:=1;
pole[k]:=a mod 10;
b:=a div 10;
if b<>0 then
begin
     repeat
     begin
          pole[k+1]:= b mod 10;
          k:=k+1;
          b:=b div 10;
     end;
     until b<=0;
     pocetcifer:=k;
     for i:=1 to trunc((pocetcifer)/2) do
     begin
     if pole[i]<>pole[k+1-i] then
     symetrie:=false;
end;

end;
{write(a,' je ',symetrie);}

cisla := symetrie;
end;

begin

x:=1;
 repeat
 read(blablabla);
 begin
      if cisla(blablabla)=true then
      begin
         policko[x]:=blablabla;
         x:=x+1;
      end;
 end;
 until blablabla=0;
for i:=1 to x-2 do
write(policko[i], ' ');
end.