program josef;
var
vysledek,pocet:longint;
mocnina,i:integer;

begin
read(pocet);
if pocet<1 then begin writeln('ERROR');exit;end
else
begin
     vysledek:=pocet;
     mocnina:=0;
     while vysledek>1 do
     begin
          vysledek:=vysledek div 2;
          inc(mocnina);
     end;
     for i:=1 to mocnina do
     vysledek:=2*vysledek;
     vysledek:=pocet-vysledek;
     vysledek:=2*vysledek+1;
end;
writeln(vysledek);
end.