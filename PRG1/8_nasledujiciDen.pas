program nasledujiciden;
var
D,M,R: integer;
prestupnost:boolean;
begin
read(D);
read(M);
read(R);
if (R div 4)=(R/4) then prestupnost:=true;
if (R div 100)=(R/100) then prestupnost:=false;
if (R div 400)=(R/400) then prestupnost:=true;
if (D=31) and ((M=1) or (M=3) or (M=5) or (M=7) or (M=8) or (M=10))
then
    begin
         D:=1;
         M:=M+1;
    end
else
    begin
         if (D=30) and ((M=4) or (M=6) or (M=9) or (M=11))
         then
             begin
                    D:=1;
                    M:=M+1;
             end
         else
             begin
                  if (D=31) and (M=12) then
                     begin
                       D:=1;
                       M:=1;
                       R:=R+1;
                     end
                  else
                      begin
                           if (D=28) and (M=2) and (prestupnost=false)
                           then
                               begin
                                    D:=1;
                                    M:=3;
                               end
                           else
                               begin
                                    if (D=29) and (M=2) and (prestupnost=true)
                                    then
                                        begin
                                              D:=1;
                                              M:=3;
                                              end
                                        else
                                    D:=D+1;
                               end;
                      end;
             end;
    end;


write(D,' '); write(M, ' '); write(R);
end.