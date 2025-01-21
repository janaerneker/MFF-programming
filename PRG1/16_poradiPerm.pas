program poradiperm;
var
pocet,cislo,i,ii,j, aktualpor,c, stav, vysledek:longint;
permutace, pole:array[1..10000] of integer;
uzbylo:boolean;
begin
read(pocet);
for i:=1 to pocet do
begin
     read(cislo);
     permutace[i]:=cislo;
     pole[i]:=i;
end;

vysledek:=0;
for i:=1 to pocet do
begin
     aktualpor:=0;
     stav:=1;
     ii:=0;
     repeat
     begin
          inc(ii);
          uzbylo:=false;
          if i>1 then
          begin
               for j:=1 to i-1 do
               begin
                    if pole[ii]=permutace[j] then
                    uzbylo:=true;
               end;
          end;
               if uzbylo=false then
               inc(aktualpor);
     end;
     until permutace[i]=pole[ii];

     stav:=stav*(aktualpor-1);
     for ii:=1 to pocet-i  do
     begin
          stav:=stav*ii;
     end;
vysledek:=vysledek + stav;
end;
vysledek:=vysledek+1;
writeln(vysledek);
end.