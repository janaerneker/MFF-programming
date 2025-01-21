program mrizka;
type tabulka=array[1..255] of string;
var
soubor,krokodyl:text;
moc,nic, kvazimax,ii,jj,i,pocetOK,pocet,velikost:longint;
t:tabulka;

begin

assign(soubor,'dodavka.in');
reset(soubor);
assign(krokodyl,'krokodyl.out');
rewrite(krokodyl);
pocetOK:=0;
readln(soubor,pocet);

for i:=1 to pocet do
begin
nic:=0;
moc:=0;
     readln(soubor,velikost);
     for ii:=1 to velikost do
     begin
          readln(soubor,t[ii]);
     end;
     if velikost=1 then writeln(krokodyl,'1 1')
     else
     begin
     if (velikost mod 2 = 0) then
     begin
     for ii:=1 to (velikost div 2) do
     begin
          for jj:=1 to (velikost div 2) do
          begin
          kvazimax:=0;
               if t[ii][jj]='@' then inc(kvazimax);
               if t[jj][velikost+1-ii]='@'then inc(kvazimax);
               if t[velikost+1-ii][velikost+1-jj]='@'then inc(kvazimax);
               if t[velikost+1-jj][ii]='@'then inc(kvazimax);
               if kvazimax=0 then inc(nic);
               if kvazimax>1 then inc(moc);
          end;
     end;
     nic:=4*nic;
     moc:=4*moc;
     if ((nic=0) and (moc=0)) then
     begin
     writeln(krokodyl, 'mrizka');
     inc(pocetOK);
     end
     else
     writeln(krokodyl, moc,' ',nic);
     end

     else
     begin
        for ii:=1 to ((velikost+1) div 2) do
     begin
          for jj:=1 to (velikost div 2) do
          begin
          kvazimax:=0;
               if t[ii][jj]='@' then inc(kvazimax);
               if t[jj][velikost+1-ii]='@'then inc(kvazimax);
               if t[velikost+1-ii][velikost+1-jj]='@'then inc(kvazimax);
               if t[velikost+1-jj][ii]='@'then inc(kvazimax);
               if kvazimax=0 then inc(nic);
               if kvazimax=1 then inc(pocetOK);
               if kvazimax>1 then inc(moc);
          end;
     end;
     nic:=4*nic;
     moc:=4*moc;
     if t[(velikost+1) div 2][(velikost+1) div 2] = '@'
     then moc:=moc+1
     else nic:=nic+1;
     if ((nic=0) and (moc=0)) then
     writeln(krokodyl, 'mrizka')
     else
     writeln(krokodyl, moc,' ',nic);
     end;
     end;
end;
if pocetOK=pocet then writeln(krokodyl, 'koupit!')
else writeln(krokodyl, 'krokodyli se nazerou!');
close(soubor);
close(krokodyl);
end.