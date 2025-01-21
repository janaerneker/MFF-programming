program sachy;
type bod=record x,y:integer;
end;
var a,b,c,ted:bod;
sachovnice:array[1..8,1..8] of integer;
pocetprekazek,g,h,i,j,x,y,kx,ky,konec,zacatek:integer;
fronta:array[1..255] of bod;

procedure enq(x,y:integer);
begin
fronta[konec].x:=x;
fronta[konec].y:=y;
inc(konec);
end;

function cajk(x,y:integer):boolean;
begin
cajk:=true;
if ((x>8) or (x<1) or (y<1) or (y>8)) then begin cajk:=false; exit; end;
if sachovnice[x][y]=111 then cajk:=false;
if ((sachovnice[x][y]>0) or ((x=kx) and (y=ky))) then cajk:=false;
end;
{
function soused(b:bod;dx,dy:integer):bod;
var sb:bod;
begin
sb.x:=b.x+dx;
sb.y:=b.y+dy;
soused:=sb;
end;
}

begin
read(pocetprekazek);
for i:=1 to pocetprekazek do
begin
read(x); read(y);
sachovnice[x][y]:=111;
end;

read(kx); read(ky);
sachovnice[kx][ky]:=0;
zacatek:=1;
konec:=1;
enq(kx,ky);
read(g);read(h);
while zacatek<konec do
begin
ted:=fronta[zacatek];
inc(zacatek);
for i:=-1 to 1 do
begin
     for j:=-1 to 1 do
     begin
     if cajk(ted.x+i,ted.y+j)=true then
     begin
     enq(ted.x+i,ted.y+j);
     sachovnice[ted.x+i][ted.y+j]:=sachovnice[ted.x][ted.y]+1;
     end;
     end;
end;
end;
if sachovnice[g][h]=0 then writeln('-1')
else
writeln(sachovnice[g][h]);
end.