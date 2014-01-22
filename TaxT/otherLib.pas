unit otherLib;

interface
function RealToString ( x : real; digits : byte ) : string;
function CalcRealToString ( x : real) : string;
function RealToString2Dec ( x : real) : string;
function IntToString ( I : LongInt ) : string;
function StringToReal ( str : string) : real;
function StringToInt ( str : string) : integer;
function IsNumber ( str : string) : Boolean;
function IsPositive ( x : real) : Boolean;
function IsNegative ( x : real) : Boolean;
function IsInteger ( x : real) : Boolean;
function IsZeroOne ( x : real) : Boolean;
function IsZeroOneInSide ( x : real) : Boolean;
function IsZeroOrOne ( x : real) : Boolean;
function CheckValue ( num : real; typenum : integer) : Boolean;
function CheckValueStr ( str : string; typenum : integer) : Boolean;
function IsBetween( num: real; const limit1,limit2:real) : Boolean;
function IsBetweenOrEqual ( num : real; const limit1,limit2:real) : Boolean;
function IsBetweenOrEqualStr ( str : string; const limit1,limit2:real) : Boolean;
function CheckValuePercentStr ( str : string) : Boolean;
function GetFileSize(const FileName: string): LongInt;
procedure GetStringsNo (largestr: string; var smallstr: array of string ; var Nostr: integer);
procedure GetEntriesNo (largestr: string; var smallstr: array of string ; var Nostr: integer);
procedure GetTabSpcEntriesNo (largestr: string; var smallstr: array of string ; var Nostr: integer);
procedure myReadLn (var src : TextFile; StrResult: string);
procedure CopyVectorR(VectorFrom: array of real; var VectorTo: array of real);
procedure ClearVectorR(var Vector: array of real);
procedure ClearVectorE(var Vector: array of extended);
procedure ClearVectorB(var Vector: array of boolean);
procedure ClearVectorI(var Vector: array of integer);
function SetStrLength(str: string; len: integer) : string;
function GetPathName(filename: string) : string;

implementation

uses SysUtils, Math, JclStrings;
{#########################################################
             Int-String-Real tranformations
#########################################################}
function RealToString ( x : real; digits : byte ) : string;
var
    h : string;
begin
    Str(x:0:digits,h);
    RealToString := h;
end;

function CalcRealToString ( x : real) : string;
var
    i,last,inileng,leng: integer;
    h      : string;
begin
  if abs(x) > 10e6 then
  begin
      h := Format('%.5e',[x]);
      CharReplace(h,',','.');
      CalcRealToString := h;
      Exit;
  end;

  if (abs(x) < 1e-4) and (x<>0) then
  begin
      h := Format('%.8e',[x]);
      CharReplace(h,',','.');
      CalcRealToString := h;
      Exit;
  end;

  Str(x:0:8,h);

  inileng := Length(h);
  for i := 1 to inileng do
  begin
  leng := Length(h);
  last := LastDelimiter('0',h);
  if leng=last then
    h:= Copy(h,1,leng-1);
  end;

  CalcRealToString := h;
end;

function RealToString2Dec ( x : real) : string;
var
    i,last,inileng,leng: integer;
    h      : string;
begin
  Str(x:0:2,h);

  (*inileng := Length(h);
  for i := 1 to inileng do
  begin
  leng := Length(h);
  last := LastDelimiter('0',h);
  if leng=last then
    h:= Copy(h,1,leng-1);
  end;*)

  Result := h;
end;

function IntToString ( I : LongInt ) : string;
{Convert any integer type to a string}
var
  S: string[11];
begin
  Str(I, S);
  IntToString:= S;
end;

function StringToReal ( str : string) : real;
//note that if str is not a number the values returned is 0!
var
    r : real;
    Code : integer;
begin
    Val(str, r, Code);
    if Code <> 0 then r :=0.0;
    StringToReal := r;
end;

function StringToInt ( str : string) : integer;
var
    Code,i : integer;
begin
    Val(str, i, Code);
    if Code <> 0 then i := 0;
    StringToInt := i;
end;

function IsNumber ( str : string) : Boolean;
var
    r : real;
    Code : integer;
    b : boolean;
begin
    Val(str, r, Code);
    if Code = 0 then b := true;
    if Code <> 0 then b := false;

    IsNumber := b;
end;

function IsPositive ( x : real) : Boolean;
var
  b :boolean;
begin
  if x>0 then
    b := true
  else
    b := false;
  IsPositive := b;
end;

function IsNegative ( x : real) : Boolean;
var
  b :boolean;
begin
  if x<0 then
    b := true
  else
    b := false;
  IsNegative := b;
end;

function IsInteger ( x : real) : Boolean;
var
  b :boolean;
begin
  if int(x)=x then
     b := true
  else
     b := false;
  IsInteger := b;
end;

function IsZeroOne ( x : real) : Boolean;
var
  b :boolean;
begin
  if (x>=0) and (x<=1) then
    b := true
  else
    b := false;
  IsZeroOne := b;
end;

function IsZeroOrOne ( x : real) : Boolean;
var
  b :boolean;
begin
  if (x=0) or (x=1) then
    b := true
  else
    b := false;
  IsZeroOrOne := b;
end;


function IsZeroOneInSide ( x : real) : Boolean;
var
  b :boolean;
begin
  if (x>0) and (x<1) then
    b := true
  else
    b := false;
  IsZeroOneInSide := b;
end;

function CheckValue ( num : real; typenum : integer) : Boolean;
var
c : boolean;
begin
  c:= true;
//types:  1: positive real  ,  2: positive integer 3:real, 0<=x<=1  ,  4: negative real
//        5: positive or zero & real 6: real <=0   7: 0<x<1    8 : x =1 or x =0
//        9: real x<>0,    10: positive or zero integer,  11: real, 0 < x < 1
//        12: real 0<x<100,  13: real 0 <= x <= 100   14: real x>=1
//        15: real 0<=x<1,   16: real -1<=x<=1
//        20: real x>1   21: real 0<x<=100
//        22: real 0<=x<=100   23: real x=>1      
//        52: integer >=0  AND x mod 2 = 0,   54: integer >=0  AND x mod 4 = 0
//        55: integer 1<=x<=10
//        101: 0<=x<=50,     102: real 0<=x<=0.9      103: real 0<=x<=0.5
//        104: 0.0001<x<1,   105: integer 0<=x<=31
//        999: any real
  case typenum of
    1: if not IsPositive(num) then c := false;
    2:
    begin
       if not IsPositive(num) then c := false;
       if not IsInteger(num)  then c := false;
    end;
    3: if not IsZeroOne(num)  then c := false;
    4: if not IsNegative(num) then c := false;
    5: if not ((IsPositive(num)) or (num=0.0)) then c := false;
    6: if not ((IsNegative(num)) or (num=0.0)) then c := false;
    7: if not IsZeroOneInside(num)  then c := false;
    8:
    begin
       if not IsZeroOrOne(num)  then c := false;
    end;
    9: if num = 0.0 then c:= false;
    10:
    begin
       if not IsInteger(num)  then c := false;
       if IsNegative(num) then c := false;
    end;
    11: if not IsZeroOneInside(num) then c := false;
    12: if not IsZeroOneInside(num/100) then c := false;
    13: if not (IsZeroOneInside(num/100) or (IsZeroOne(num/100)) ) then c := false;
    14: if not (num>=1) then c := false;
    15:if not (isBetween(num,0,1) or (num=0)) then c := false;
    16:if not isBetweenOrEqual(num,-1,1) then c := false;
    20: if num <= 1.0 then c:= false;
    21: if not ( IsPositive(num) and (num<=100) ) then c := false;
    22: if not ( (num>=0)  and (num<=100) ) then c := false;
    23: if num < 1.0 then c:= false;
    52:
    begin
       if not IsInteger(num)  then c := false;
       if not (IsPositive(num) or isZero(num)) then c := false;
       if Round(num) mod 2<> 0 then c := false;
    end;
    54:
    begin
       if not IsInteger(num)  then c := false;
       if not (IsPositive(num) or isZero(num)) then c := false;
       if Round(num) mod 4<> 0 then c := false;
    end;
    55:
    begin
       if not IsInteger(num)  then c := false;
       if not IsBetweenOrEqual(num,1,10) then c := false;
    end;
    101:if not isBetweenOrEqual(num,0,50) then c := false;
    102:if not isBetweenOrEqual(num,0,0.9) then c := false;
    103:if not isBetweenOrEqual(num,0,0.5) then c := false;
    104:if not isBetween(num,0.0001,1) then c := false;
    105:if not isBetween(num,0.005,1) then c := false;
    106:
    begin
       if not IsInteger(num)  then c := false;
       if not isBetweenOrEqual(num,0,31) then c := false;
    end;
  999: c:= true;      // arbitrarily set to true. Used for special checks
  else
  c := false;
  end;

  CheckValue := c;

end;

function CheckValueStr ( str : string; typenum : integer) : Boolean;
var
  num : real;
begin
    CheckValueStr := true;
    //check that str is real
    if not IsNumber(str) then
    begin
        CheckValueStr := false;
        Exit;
    end;
    //check that num:=StringToReal(str) is correct value/type
    num:=StringToReal(str);
    if not CheckValue(num,typenum) then CheckValueStr := false;

end;

function IsBetween( num: real; const limit1,limit2:real) : Boolean;
begin
  if (num>limit1) and (num<limit2) then
      Result := true
  else
      Result := false
end;

function IsBetweenOrEqual( num: real; const limit1,limit2:real) : Boolean;
begin
  if (num>=limit1) and (num<=limit2) then
      Result := true
  else
      Result := false
end;

function IsBetweenOrEqualStr ( str : string; const limit1,limit2:real) : Boolean;
var
  num : real;
begin
    Result := true;
    //check that str is real
    if not IsNumber(str) then
    begin
        Result := false;
        Exit;
    end;
    //check that num:=StringToReal(str) is correct value/type
    num:=StringToReal(str);
    if not IsBetweenOrEqual(num,limit1,limit2) then Result := false;
end;
                                                                        
function CheckValuePercentStr ( str : string) : Boolean;
begin
    Result := true;
    if StrRight(str,1)<>'%' then Result := false;
    if not CheckValueStr(StrBefore('%',str),22) then Result := false;

end;

function GetFileSize(const FileName: string): LongInt;
var
  SearchRec: TSearchRec;
begin
  try
    if FindFirst(ExpandFileName(FileName), faAnyFile, SearchRec) = 0 then
      Result := SearchRec.Size
    else Result := -1;
  finally
    SysUtils.FindClose(SearchRec);
  end;
end;

procedure GetStringsNo (largestr: string; var smallstr: array of string ; var Nostr: integer);
var
  pos,i,len : integer;
  str       : string;
begin
  i:=0;
  largeStr := Trim(largeStr);
  if largeStr = '' then
  begin
     Nostr := 0;
     Exit;
  end;

// the first n-1 smallstrings
  while AnsiPos(' ',largeStr)<>0 do
  begin
      pos := AnsiPos(' ',largeStr);
      str := Copy(largeStr,1,pos-1);
      if str<>'' then
      begin
        Inc(i);
        smallstr[i]:= str;
      end;
     len := Length(largeStr);
     largeStr := Copy(largeStr,pos+1,(len+1)-(pos+1));
  end;

// the last smallstring
  Inc(i);
  smallstr[i] := largeStr;
  Nostr := i;

end;

procedure GetEntriesNo (largestr: string; var smallstr: array of string ; var Nostr: integer);
var
  pos,i,len : integer;
  str       : string;
begin
  i:=0;
  largeStr := Trim(largeStr);

// the first n-1 smallstrings
  while AnsiPos(^I,largeStr)<>0 do
  begin
      pos := AnsiPos(^I,largeStr);
      str := Copy(largeStr,1,pos-1);
//      if str<>'' then
//      begin
        Inc(i);
        smallstr[i]:= str;
//      end;
     len := Length(largeStr);
     largeStr := Copy(largeStr,pos+1,(len+1)-(pos+1));
  end;

// the last smallstring
  Inc(i);
  smallstr[i] := largeStr;
  Nostr := i;

end;

procedure GetTabSpcEntriesNo (largestr: string; var smallstr: array of string ; var Nostr: integer);
//Note:##########SOS: Changed after 29/4/2002. Not compatible with older versions####################
var
  pos1,pos2,pos3,posTmp,pos,i,len : integer;
  str       : string;
begin
  i:= -1;
  largeStr := Trim(largeStr);

// the first n-1 smallstrings
  while (AnsiPos(^I,largeStr)<>0) or (AnsiPos(' ',largeStr)<>0)
     (*or (AnsiPos(',',largeStr)<>0) *)do
  begin
      pos1 := AnsiPos(^I,largeStr);
      pos2 := AnsiPos(' ',largeStr);
      //pos3 := AnsiPos(',',largeStr);
      if pos1 = 0 then pos1 := 10000;  //artificially large value
      if pos2 = 0 then pos2 := 10000;  //artificially large value
      //if pos3 = 0 then pos3 := 10000;  //artificially large value
      posTmp := Min(pos1,pos2);
      pos := posTmp;  //pos := Min(posTmp,pos3);
      str := Copy(largeStr,1,pos-1);
      if str<>'' then
      begin
        Inc(i);
        smallstr[i]:= str;
      end;

     len := Length(largeStr);
     largeStr := Copy(largeStr,pos+1,(len+1)-(pos+1));
  end;

// the last smallstring
  Inc(i);
  smallstr[i] := largeStr;
  Nostr := i+1;

end;

procedure myReadLn (var src : TextFile; StrResult: string);
var
  ch : char;
begin
    if not EOF (src) then
    begin
        StrResult := '';
        repeat
            Read (src, ch);
            if ch <> ^A         //#A -> ^A
            then StrResult := StrResult + ch;
        until (ch = ^A) or EOF (src);    //#A -> ^A
    end;
end;

procedure CopyVectorR(VectorFrom: array of real; var VectorTo: array of real);
var i: integer;
begin
    Assert(High(VectorFrom)=High(VectorTo),
        'The size of he vestors in the CopyVectorR procedure should be equal'); 
    for i := 0 to High(VectorFrom) do
       VectorTo[i] := VectorFrom[i];
end;

procedure ClearVectorR(var Vector: array of real);
var i: integer;
begin
    for i := 0 to High(Vector) do
       Vector[i] := 0;
end;

procedure ClearVectorE(var Vector: array of extended);
var i: integer;
begin
    for i := 0 to High(Vector) do
       Vector[i] := 0;
end;

procedure ClearVectorI(var Vector: array of integer);
var i: integer;
begin
    for i := 0 to High(Vector) do
       Vector[i] := -1;
end;

procedure ClearVectorB(var Vector: array of boolean);
var i: integer;
begin
    for i := 0 to High(Vector) do
       Vector[i] := false;
end;

function SetStrLength(str: string; len: integer) : string;
//Note: similar to Desicions.pas:SetString but this is right justified (rather than left)
var
  initlen : integer;
  s : string;
begin
  initlen := length(str);
  if len > initlen then
     s := StringOfChar(' ', len-initlen) + str
  else
     s := str;

  Result := s;
end;

function GetPathName(filename: string) : string;
var
   path     : string;
   len,pos  : integer;
begin
   path := '';
   While AnsiPos('\',filename) <>0 do
   begin
       pos := AnsiPos('\',filename);
       len := length(filename);
       path := path + copy(filename,1,pos);
       filename := copy(filename,pos+1,len-pos);
   end;
   GetPathName := path;
end;

end.
