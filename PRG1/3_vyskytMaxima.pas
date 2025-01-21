program x;
var
c,N:longint;
i,k:integer;
max:integer;
a: array[1..1000] of longint;
poradi: array[1..1000] of longint;
begin
read(N);
for i:=1 to N do
begin
read(c);
a[i]:=c;
end;

max:=a[1];
for i:=1 to N do
begin
 if max<=a[i] then
 begin
  max:=a[i];
 end;
end;
writeln(max);
for i:=1 to N do
if a[i]=max then
begin
write(i);
write(' ');
end;
end.