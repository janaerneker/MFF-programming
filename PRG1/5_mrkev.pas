program mrkev;
var a,b,c,i,moznosti:longint;
begin
read (a);
b:=1;
c:=2;
if a=1 then
write(2)
else
begin
 for i:=1 to a-1 do
 begin
   moznosti:=c+b;
   b:=c;
   c:=moznosti;
  end;
  write(moznosti);
end;
end.
