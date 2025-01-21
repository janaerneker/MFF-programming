program permutace;
var
pocet,i,j,k,minimu,m:integer;
vstup:array[1..1000] of integer;
prohazovalose:boolean;


begin
readln(pocet);

for i:=1 to pocet do
begin
read(vstup[i]);
end;

if pocet=1 then
begin
writeln('NEEXISTUJE');
exit;
end;

if pocet=2 then
begin
if vstup[pocet]>vstup[pocet-1] then
begin
     j:=vstup[pocet];
     vstup[pocet]:=vstup[pocet-1];
     vstup[pocet-1]:=j;
     write(vstup[pocet-1], ' ',vstup[pocet]);
     exit;
end
else
begin
write('NEEXISTUJE');
exit;
end;
end;

m:=pocet;
while ((m>1) and (vstup[m]<vstup[m-1])) do
m:=m-1;

if m=1 then
begin
write('NEEXISTUJE');
exit;
end;

minimu:=0;
for i:=m to pocet do
begin
if ((vstup[m-1]<vstup[i]) and ((vstup[i]<minimu) or (minimu=0))) then
begin
minimu:=vstup[i];
k:=i;
end;
end;

j:=vstup[m-1];
vstup[m-1]:=minimu;
vstup[k]:=j;

     prohazovalose:=true;
     while prohazovalose=true do
     begin
          prohazovalose:=false;
          for i:=m+1 to pocet do
          begin
               if vstup[i-1]>vstup[i] then
               begin
                     j:=vstup[i-1];
                     vstup[i-1]:=vstup[i];
                     vstup[i]:=j;
                     prohazovalose:=true;
               end;
          end;
     end;


for i:=1 to pocet do
write(vstup[i], ' ');

end.
