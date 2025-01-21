program veze;
var
pocet:integer;
procedure
preskladani(kam:integer;odkud:integer;kolik:integer);

var odkladiste:integer;

begin
if kolik<=1
then  writeln('Kotouc ', kolik, ' z ',odkud, ' na ',kam)
else
    begin
         odkladiste:=6-odkud-kam;
         preskladani(odkladiste,odkud,kolik-1);
         writeln('Kotouc ', kolik, ' z ',odkud, ' na ',kam);
         preskladani(kam,odkladiste,kolik-1);
    end;
end;

begin
readln(pocet);
preskladani(2,1,pocet);
end.