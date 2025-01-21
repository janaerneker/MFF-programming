program vlastnosti;
var a,d,i:integer;
c,b,r,s,t:real;
begin

read (a);
c:=0;
for i:=1 to a-1 do
begin
     if a/i = a div i then
     begin
          b:=a div i;
          c:=c+i;
     end;
end;
if c=a then
write('P');
r:=sqrt(a);
if r-trunc(r)=0  then
write('C');
for i:=1 to a do
begin
     c:=i*i*i;
     if c=a then
     write('K');
end;
end.