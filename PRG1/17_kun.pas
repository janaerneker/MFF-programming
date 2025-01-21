program kun;
var
sachovnice:array[1..24,1..24] of integer;
vela,velb,sx,sy,i,j,poradi:integer;

function dal(x,y,poradi:integer):boolean;
begin
     if sachovnice[x][y]=0 then dal:=false
     else
     begin
          if poradi=(vela*velb+2) then dal:=true
          else
          begin
              sachovnice[x][y]:=0;

              if dal(x+1,y-2,poradi+1)=true then begin dal:=true;exit;end;
              if dal(x+2,y-1,poradi+1)=true then  begin dal:=true;exit;end;
              if dal(x-1,y+2,poradi+1)=true then  begin dal:=true;exit;end;
              if dal(x-2,y+1,poradi+1)=true then  begin dal:=true;exit;end;
              if dal(x+1,y+2,poradi+1)=true then  begin dal:=true;exit;end;
              if dal(x+2,y+1,poradi+1)=true then  begin dal:=true;exit;end;
              if dal(x-1,y-2,poradi+1)=true then  begin dal:=true;exit;end;
              if dal(x-2,y-1,poradi+1)=true then  begin dal:=true;exit;end;
              sachovnice[x][y]:=1;
          end;
     end;
end;



begin
read(vela); read(velb);read(sx);read(sy);
for i:=1 to vela+4 do
begin
     for j:=1 to velb+4 do
     sachovnice[i][j]:=0;
end;
for i:=3 to vela+2 do
begin
    for j:=3 to velb+2 do
    sachovnice[i][j]:=1;
end;
if dal(sx+2,sy+2,1) = true then writeln('ANO') else writeln('NE');
end.