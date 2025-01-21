program rozklad;
var
  cisla: array [1..40] of integer;
  cislo: integer;
  procedure rozloz(vstup, pocet, max: integer);
var
  j: integer;
begin
  if vstup = 0 then begin
    for j := pocet downto 1 do begin
      if j < pocet then write('+');
      write(cisla[j]);
    end;
    writeln;
  end else begin
    if vstup < max then max := vstup;
    for j := 1 to max do begin
      cisla[pocet+1] := j;
      rozloz(vstup-j, pocet+1, j);
    end;
  end;
end;

begin
  read(cislo);
  rozloz(cislo, 0, cislo);
end.