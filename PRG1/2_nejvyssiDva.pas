program k;

var
a: integer;
max: integer;
kvazi: integer;

begin
read(a);

max:=a;
read(a);
if(a<max) then
kvazi:=a
else
begin
kvazi:=max;
max:=a;
end;

read(a);

while(a<>-1) do
begin

 if (a>=max) then
 begin
  kvazi:=max;
  max:=a;
 end
 else
 begin
  if (a>kvazi) then
  kvazi:=a;

 end;

read(a);
end;



write(kvazi);


end.