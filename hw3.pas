program hw3;

Type
  P = array of array of Integer;

var
  arr : P;
  Sh, V : Integer;
  i, j, ac, bc, a, b : Integer;
  AddVal : Integer;
  IsAddDirUp : Boolean;

function IncDec() : Integer;
begin
  IncDec := AddVal;
  if AddVal = 1 then
    IsAddDirUp := true;
  if AddVal = 9 then
    IsAddDirUp := false;

  if IsAddDirUp then
    AddVal += 1
  else
    AddVal -= 1;

end;

begin
  Write('Enter Sh, V: ');
  ReadLn(Sh, V);

  SetLength(arr, V);
  for i := 0 to V - 1 do
  SetLength(arr[i], Sh);

  ac := Sh;
  bc := V - 1;
  a := 0;
  b := 0;

  AddVal := 1;

  while (ac + bc) > 0 do
  begin
    for i := 0 to ac - 1 do
    begin
      arr[b][a + i] := IncDec();
    end;
    if bc = 0 then
      break;
    ac -= 1;
    a += i;
    b += 1;

    for i := 0 to bc - 1 do
    begin
      arr[b + i][a] := IncDec();
    end;
    if ac = 0 then
      break;
    bc -= 1;
    a -= 1;
    b += i;

    for i := 0 to ac - 1 do
    begin
      arr[b][a - i] := IncDec();
    end;
    if bc = 0 then
      break;
    ac -= 1;
    a -= i;
    b -= 1;

    for i := 0 to bc - 1 do
    begin
      arr[b - i][a] := IncDec();
    end;
    if ac = 0 then
      break;
    bc -= 1;
    a += 1;
    b -= i;

  end;


  for i := 0 to V - 1 do
  begin
    for j := 0 to Sh - 1 do
    begin
      Write(arr[i][j]:3);
    end;
    WriteLn();
  end;


  ReadLn();
end.
