program project1;
uses
 SysUtils;
type
  user = record
    name, num, group : string;
  end;

var
  A : array[1..100] of TextFile;
  F : TextFile;
  S : String;
  NameG : array[1..100] of String;
  I, N, W: Integer;
  U : user;
begin
  Write('File name: ');
  ReadLn(S);
  AssignFile(F,S);
  ReSet(F);
  N := 0;
  while not EOF(F) do
  begin
    ReadLn(F, S);
    I := 1;
    U.name:='';
    while S[I]<>';' do
    begin
      U.name+=S[I];
      I+=1;
    end;
    I+=1;
    U.num:='';
    while S[I]<>';' do
    begin
      U.num+=S[I];
      I+=1;
    end;

    U.group:='';
    for I := I+1 to length(S) do
      U.group += S[I];


    W := N+1;
    for I:= 1 to N do
    begin
      if AnsiCompareStr(U.group, NameG[I]) = 0 then
      begin
        W := I;
        break;
      end;
    end;
    if W = (N+1) then
    begin
      nameG[W] := U.group;
      S := IntToStr(W) + '.txt';
      AssignFile(A[W], S);
      ReWrite(A[W]);
      N+=1;
    end;
    WriteLn(A[W], U.name, ' ; ', U.num, ' ; ', U.group);
  end;
  CloseFile(F);
  for I:= 1 to N do
    CloseFile(A[I]);
end.
