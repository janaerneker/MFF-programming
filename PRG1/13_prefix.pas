program prefix;
Uses Crt;
type dvojicka=record
operand: char;
cisilko: longint;
jecislo: boolean;
end;
var
vsechno:array[1..255] of dvojicka;
c:char;
i,pocetcisel,pocetoper,cislo,mezivysledek:longint;


begin
clrscr;
i:=1;
while not eoln do
begin
read(c);
while ((ord(c)=12) or (ord(c)=32)) do
read(c);
if ord(c)>47 then
begin
          cislo:=ord(c)-48;
          read(c);
          while ord(c)>47 do
          begin
               cislo:=(10*cislo + ord(c) - 48);
               read(c);
          end;
     vsechno[i].cisilko:=cislo;
     vsechno[i].jecislo:=true;
     inc(i);
     while ((i>3) and (vsechno[i-2].jecislo=true)) do
     begin
     case vsechno[i-3].operand of
     '+': vsechno[i-3].cisilko:=vsechno[i-2].cisilko + vsechno[i-1].cisilko;
     '*': vsechno[i-3].cisilko:=vsechno[i-2].cisilko * vsechno[i-1].cisilko;
     '/': begin if vsechno[i-1].cisilko=0 then begin writeln('CHYBA');exit; end;
      vsechno[i-3].cisilko:=vsechno[i-2].cisilko div vsechno[i-1].cisilko; end;
     '-': vsechno[i-3].cisilko:=vsechno[i-2].cisilko - vsechno[i-1].cisilko;
     end;
     i:=i-2;
     vsechno[i-1].jecislo:=true;
     end;
end
else if ord(c)<48 then
begin
     vsechno[i].operand:=c;
     vsechno[i].jecislo:=false;
     inc(i);
end;
end;
writeln(vsechno[1].cisilko);
end.