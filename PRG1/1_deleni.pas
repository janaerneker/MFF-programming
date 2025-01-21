{Program přečte dvě celá čísla a vypíše jejich celočíselný podíl. 
Pokud tato čísla nejdou vydělit (rozmyslete si, kdy není dělení definováno), 
vypíše "NELZE". Např. pro 9 a 4 je tedy výsledek 2.}
program z;
var
a,b: integer;
begin
read(a);
read(b);
if b=0
then write('NELZE')
else write(a div b);
end.
