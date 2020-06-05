program laba1;

uses Geometry;

var Tri : Triangle;
    L : line;
    Vec1 : TVector;
    Vec2 : TVector;
    SumVec : TVector;
    DiffVec : TVector;
    DotProd : Real;
begin

  {
  WriteLn('Triangle:');
  WriteLn('Point A: ');
  ReadLn(Tri.A.x, Tri.A.y);
  WriteLn('Point B: ');
  ReadLn(Tri.B.x, Tri.B.y);
  WriteLn('Point C: ');
  ReadLn(Tri.C.x, Tri.C.y);

  WriteLn('Line:');
  WriteLn('Point A: ');
  ReadLn(L.A.x, L.A.y);
  WriteLn('Point B: ');
  ReadLn(L.B.x, L.B.y);


  WriteLn('AB = ', GetDistance(Tri.A, Tri.B):0:6);
  WriteLn('BC = ', GetDistance(Tri.B, Tri.C):0:6);
  WriteLn('AC = ', GetDistance(Tri.A, Tri.C):0:6);

  WriteLn('Per = ', GetTrPer(Tri):0:6);
  WriteLn('Sqr = ', GetTrSq(Tri):0:6);

   if CrOrNot (L,Tri) then
  WriteLn('pereseklo')
  else
  WriteLn('nepereseklo');
                      }

  WriteLn('Vector A: ');
  ReadLn(Vec1.x, Vec1.y);
  WriteLn('Vector B: ');
  ReadLn(Vec2.x, Vec2.y);

  SumVec := SumVector(Vec1 , Vec2);
  WriteLn('SumVec= ', SumVec.x:0:3, ' ',  SumVec.y:0:3);

  DiffVec := DiffVector(Vec1 , Vec2);
  WriteLn('DiffVec= ', DiffVec.x:0:3, ' ', DiffVec.y:0:3);

  DotProd := DotProduct(Vec1 , Vec2);
  WriteLn('DotProd= ', DotProd:0:3);

  ReadLn();


 end.
