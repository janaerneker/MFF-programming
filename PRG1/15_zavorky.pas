Program zavorky;
var skorovysledek:real;
mezisouceta, mezisoucetb,n,i,vysledek:longint;

begin
read(n);
vysledek:=1;
if n=1 then writeln('1')
else
begin

for i:=1 to n-1  do
begin
mezisouceta:=i+2;
mezisoucetb:=4*i+2;
skorovysledek:=vysledek/mezisouceta*mezisoucetb;
vysledek:=round(skorovysledek);
end;
writeln(vysledek);
end;
end.