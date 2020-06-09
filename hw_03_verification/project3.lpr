program project3;

type
  H = array of Real;
var
  M : Integer;
  N : Integer;
  P1 : H;
  P2 : H;
  i , j: Integer;
  Max1 , Max2 : Real;
begin
  WriteLn('M , N: ');
  ReadLn(M,N);
  SetLength(P1,M);
  SetLength(P2,N);
  for i := 0 to Length(P1) - 1 do
  begin
    Read(P1[i]);
   end;
  ReadLn();
  for j := 0 to Length(P2) - 1 do
  begin
    Read(P2[j]);
   end;
  ReadLn();
  Max1:= P1[0];
  for i := 1 to Length(P1) - 1 do
  begin
    if P1[i] > Max1 then
    Max1 := P1[i];
  end;
  Max2:= P2[0];
   for j := 1 to Length(P2) - 1 do
  begin
    if P2[j] > Max2 then
    Max2 := P2[j];
  end;
  WriteLn(Max1 ,' ', Max2);
  if Max1 > Max2 then
  WriteLn('Max1 > Max2')
  else if Max1< Max2 then
  WriteLn('Max1 < Max2')
  else
  WriteLn('Max1 = Max2');
  ReadLn();
end.

