{************************************************************}
{  bsutils.pas                                               }
{  (c)1998/1999 Business Software                            }
{  http://www.ebsoft.freeserve.co.uk/                        }
{ Collection of String / System / Math utility classes       }
{         for Borland Delphi(r) Programmers.                 }
{                                                            }
{ Author: Eddie Bond ebinfo@compuserve.com                   }
{************************************************************}

// FileName:            bsutils2.zip
// Program:		BSUTILS collection of Pascal utility classes
// Ver:			2.1
// Date:		30 October 1999
// Copyright:		(c)1999 Business Software
// Web:			http://www.bsoft.ic24.net/
// Author:		Eddie Bond
// E-Mail:		ebinfo@compuserve.com
// Status:		FreeWare
// Restrictions:	None.
// Delphi:		32-bit versions
// Platform:		Windows 32-bit versions.
// Distribution:	Freely distribute ENTIRE package.
//
// NB.
// This source code is distributed by Business Software as FREEWARE
// with the author's permission.
// IT IS NOT PUBLIC DOMAIN!
// You may use these utilities in your applications, whether private
// or commercial, without payment or royalties.
// You may distribute this file in unadulterated and unmodified form,
// or include this file together, or as part of your own distributed
// project's source code provided that this header, and all comments
// remain attached and readable.
// you may 'cut and paste' program segments from this file, to incorporate
// into your own projects, but if you publish the source code you should
// show the following comment below the program segment:

  {from bsutils.pas
  (c)1999 Business Software http://www.bsoft.ic24.net}

// NB This code is provided without warranty or support of any kind. You use
// this code entirely at your own risk.

{*************************************************************}
{                                                             }
{ CHECK OUT OUR SITE http://www.bsoft.ic24.net/       }
{ DELPHI FREEWARE - SHAREWARE - ADVICE - DOWNLOADS            }
{                                                             }
{*************************************************************}

{===============================================================}

unit bsutils;
{$B-,H+}

interface


uses windows,messages,sysutils,forms,classes,registry,DB,dbtables,BDE,shellapi;

{================= String Utils =================}

function slash(value:string):string;
{ensures that value has '\' as last character (for directory strings)}
{example: slash('c:\My Documents') = 'c:\My Documents\'}
{example: slash('D:\') = 'D:\' }

function capfirst(value:string):string;
{Capitalise first character of each word, lowercase remaining chars}
{example: capfirst('bOrLANd delPHi FOR windOWs') = 'Borland Delphi For Windows'}

function striptags(value:string):string;
{strip HTML tags from value}
{example: striptags('<TR><TD Align="center">Hello World</TD>') = 'Hello World'}

function striphtmidents(value:string):string;
{strip common html identifiers (&nbsp, &reg, &copy) from value}

function replace(str,s1,s2:string;casesensitive:boolean):string;
{replace all incidences of s1 in str with s2}
{example: replace('We know what we want','we','I',false) = 'I Know what I want'}

function replacechar(s:string;c:char;i:integer):string;
{replace character at position i in string s with character c}
{example: replacechar('charactar','e',8) = 'character}

function CopyFromChar(s:string;c:char;l:integer):string;
{copy l characters from string s starting at first incidence of c}
{example: Copyfromchar('Borland Delphi','a',3) = 'and'}

procedure splitstring(s:string;delim:char;ts:tstrings);
{splits a compound string (s) delimited by (delim) into TStrings (ts)}
{example SplitString('Tony,Blair,Downing Street,London',',',ts) returns:
ts.count=4
ts[0]='Tony'
ts[1]='Blair'
ts[2]='Downing Street'
ts[3]='London'}

function posnext(s,srch:string;lastpos:integer):integer;
{repeatedly search for position of srch within s starting at lastpos}
{example: to find the positions of 'ab' within s}
{s:='abcdefgsabcvderabnbvcswahgabfabxserta';
x:=1;
while x<>0 do
      begin
      x:=posnext(s,'ab',x);
      (do something with the value x here...)
      end;
}

function currstrtofloat(value:string):single;
{converts currency style strings to a floating point value}
{example: currstrtofloat('$100,000.45')=100000.45}

function strtofloattry(const value:string):extended;
{tries to convert value to a valid floating point value.returns zero if it fails}
{example: strtofloattry('a100d3.65')=1003.65}
{example: strtofloattry('notthistime')=0}

function padstring(s:string;c:char;l:integer):string;
{pads string s with as many extra characters c required to achieve length l}
{if l is less than length of s, result is s truncated to length l}
{example: padstring('hello','-',10)='hello-----'}
{example: padstring('string less than l','-',15)='string less than'}

function strs(c:char;l:integer):string;
{returns a string containing l of character c.}
{example: strs('=',12) = '============'}


{================= System Utils =================}

function getwinsysdir:string;
{returns Windows System Path (inc drive)}
{example: getwinsysdir = 'C:\WINDOWS\SYSTEM\'}

function getwindir:string;
{returns windows directory path (inc Drive)}
{example: getwindir = 'C:\WINDOWS\'}

function getinstalldir:string;
{returns install directory of EXE using this library}
{example: getinstalldir = 'C:\PROGRAM FILES\BORLAND\DELPHI\DEMOS\'}

function getcurrentdir:string;
{returns current directory}
{example: getcurrentdir = 'D:\DELPHI PROJECTS\CLASSES\UTILS\'}

function getbootdir:string;
{returns boot directory}
{example: getbootdir = 'C:\'  }

function getregvalue(root:integer;key,value:string):string;
{reads a registry value}
{example: getregvalue(HKEY_LOCAL_MACHINE,'network\logon\','username') = 'Eddie Bond'}

function getaliaspath(dbset:Tdataset):string;
{returns DOS path of an ACTIVE dataset's (TTable or TQuery) database alias}
{example getaliaspath(Table1) = 'C:\Program Files\Borland\Delphi\Demos\Data\'}

function getfiledate(filename:string):Tdatetime;
{returns a file's date in TDateTime format}

function folderexists(dir:string;cancreate:boolean):boolean;
{checks if folder exists. If cancreate is true, tries to create folder, and returns success}

function DiskInDrive(Drive:Char):Boolean;
{checks if drive is ready without}
{the low-level 'Not Reading Drive ?: Abort, Retry, Ignore' message}
{example: DiskInDrive(a) = false (if the the disk drive is empty)}

function BSGetDiskFreeSpace(drv:string;var ffree,fsize:comp):boolean;
{get disk free space for BIG disks ie > 2.1GB }

{================= File Management ==================}

function filecopy(f,t:string;NoOverwrite:boolean):boolean;
{returns success of copy from file f to t with overwrite protection}
{example: filecopy('C:\WINDOWS\WIN.INI','C:\BACKUPS\WIN.INI',true)=true}

function AppendToFile(filename:string;ts:Tstrings):boolean;
{appends ts to the end of textfile 'filename'. if filename does not exist, it is created}
{example: AppendToFile('c:\autoexec.bat',memo1.lines}
{appends the contents of memo1 to autoexec.bat}

function UniqueFilename(path:string):string;
{Generates a unique (random) filename; checks that it is unique within the givep path}
{example: UniqueFilename(c:\) = A2W88UH7.77Y }

{================= Arithmetic Utils =================}

function StrToFloatDef(const s:string;def:Extended):Extended;
{converts S into a number. If S is invalid, returns the number passed in Def.}
{example: strtofloatdef('$10.25',0) = 0}

function VolSphere(radius:single):extended;
{volume of sphere of given radius}

function AreaSphere(radius:single):extended;
{surface area of sphere of given radius}

function VolCylinder(radius,height:single):extended;
{volume of cylinder of given radius and height}

function AreaCylinder(radius,height:single):extended;
{surface area of cylinder of given radius and height}

function MinExt(const A:array of Extended):Extended;
{returns minimum value of an array of extended}

function MaxExt(const A:array of Extended):Extended;
{returns maximum value of an array of extended}

function MinInteger(const A:array of Integer):Integer;
{returns minimum value of an array of integers}

function MaxInteger(const A:array of integer):Integer;
{returns maximum value of an array of integers}

function InverseSum(const a:array of single):single;
{solves formulae of type 1/r = 1/a + 1/b +...1/n (eg electrical resistance in parallel)}

{================= Financial Utils =================}

function MarkUp(profit:single):single;
{returns markup percentage required to return a profit of profit percent}
{example: MarkUp(25) = 20 }

function SellingPrice(net:double;markup:single):double;
{returns selling price after adding markup percent to net}
{example: SellingPrice(199.50,22.5) = 244.3875}

function NetPrice(gross:double;taxrate:single):double;
{returns the net value of an item of gross value containing tax at taxrate percent}
{example: NetPrice(199.99,17.5) = 170.204255319149}

function Contrast(value:integer):integer;
{returns a contrasting color from value}
{example: Canvas.font.color:=contrast(canvas.brush.color);}

const
ukton_Kg=1016;    {UK Ton to KiloGram}
yard_mtr=0.9144;  {Yard to Metre}
acre_SqMtr=4047;  {Acre to Square Feet}
oz_Kg=0.02835;    {Ounce to KiloGram}
acre_ha=0.4047;   {Acre to Hectare}
ukgal_ltr=4.546;  {UK Gallon to Litre}
usgal_ltr=3.7854; {US Gallon to Litre}
lbsqin_kpa=6.895; {Pounds per Square Inch to KiloPascals}
mile_km=1.6093;   {Miles to Kilometres}
in_cm=2.54;       {Inches to Centimetres}
sqin_sqcm=6.4516; {Square Inches to Square Centimetres}
cuin_cucm=16.387; {Cubic Inches to Cubic Centimetres}

implementation


function slash(value:string):string;
begin
if (value='') then result:='' else
begin
if (value[length(value)]<>'\') then result:=value+'\' else result:=value;
end;
end;

function capfirst(value:string):string;
var
i:integer;
s:string;
begin
s:=uppercase(value[1]);
for i:=2 to length(value) do
    if (value[i-1] in [' ',',',':',';','.']) then s:=s+uppercase(value[i]) else s:=s+lowercase(value[i]);
result:=s;
end;

function striptags(value:string):string;
var
i:integer;
s:string;
begin
i:=1;
s:='';
while i<=length(value) do
      begin
      if value[i]='<' then repeat inc(i) until (value[i]='>') else s:=s+value[i];
      inc(i);
      end;
result:=s;
end;


function replace(str,s1,s2:string;casesensitive:boolean):string;
var
i:integer;
s,t:string;
begin
s:='';
t:=str;
       repeat
       if casesensitive then i:=pos(s1,t) else i:=pos(lowercase(s1),lowercase(t));
       if i>0 then
          begin
          s:=s+Copy(t,1,i-1)+s2;
          t:=Copy(t,i+Length(s1),MaxInt);
          end
       else s:=s+t;
       until i<=0;
result:=s;
end;

function replacechar(s:string;c:char;i:integer):string;
var x:integer;
begin
result:='';
for x:=1 to length(s) do
    if x=i then result:=result+c
       else result:=result+s[x];
end;

function striphtmidents(value:string):string;
var s:string;
begin
s:=replace(value,'&nbsp;',' ',false);
s:=replace(s,'&reg','(r)',false);
s:=replace(s,'&copy','(c)',false);
result:=s;
end;


function CopyFromChar(s:string;c:char;l:integer):string;
var i:integer;
begin
i:=pos(c,s);
result:=copy(s,i,l);
end;

procedure SplitString(s:string;delim:char;ts:TStrings);
var
i:integer;
t:string;
begin
t:='';
for i:=1 to length(s) do
 begin
 if (s[i]<>delim) then t:=t+s[i] else
  begin
  ts.add(t);
  t:='';
  end;
end;
if t<>'' then ts.add(t);
end;

function padstring(s:string;c:char;L:integer):string;
var
i:integer;
t:string;
begin
if length(s)<L then result:=copy(s,1,L) else
   begin
   for i:=0 to L-(length(s))-1 do t:=t+c;
   result:=s+t;
   end;
end;

function strs(c:char;l:integer):string;
var i:integer;
begin
result:='';
for i:=1 to l do result:=result+c;
end;

function posnext(s,srch:string;lastpos:integer):integer;
var
t:string;
x:integer;
begin
t:=copy(s,lastpos+length(srch),maxint);
x:=pos(srch,t);
if x>0 then result:=lastpos+x else result:=0;
end;

function currstrtofloat(value:string):single;
var e:integer;
begin
result:=0;
if (value='') then exit;
if value[1]=currencystring then value:=copy(value,2,length(value)-1);
value:=replace(value,thousandseparator,'',false);
val(value,result,e);
if e<>0 then result:=0;
end;

function getwinsysdir:string;
var p:pchar;
    z:integer;
begin
z:=255;
getmem(p,z);
getsystemdirectory(p,z);
result:=slash(string(p));
freemem(p,z);
end;

function getwindir:string;
var p:pchar;
    z:integer;
begin
z:=255;
getmem(p,z);
getwindowsdirectory(p,z);
result:=slash(string(p));
freemem(p,z);
end;

function getbootdir:string;
var
rg:Tregistry;
begin
rg:=Tregistry.create;
rg.rootkey:=HKEY_LOCAL_MACHINE;
try
if rg.openkey('Software\Microsoft\Windows\CurrentVersion\Setup',false) then
 begin
 result:=slash(rg.readstring('BootDir'));
 rg.closekey;
 end;
finally
rg.free;
end;
end;

function getcurrentdir:string;
var p:pchar;
    z:integer;
begin
z:=255;
getmem(p,z);
getcurrentdirectory(z,p);
result:=slash(string(p));
freemem(p,z);
end;


function getinstalldir:string;
begin
result:=slash(extractfiledir(application.exename));
end;

function folderexists(dir:string;cancreate:boolean):boolean;
begin
{$I-}
chdir(dir);
result:=(IOResult=0);
if not result then
  begin
  MKDir(dir);
  chdir(dir);
  result:=(IOResult=0);
  end;
{$I+}
end;

function DiskInDrive(Drive:Char):Boolean;
var
EM:word;
begin
result:=false;
if Drive in ['a'..'z'] then Dec(Drive, $20);
if not (Drive in ['A'..'Z']) then exit;
EM:=SetErrorMode(SEM_FailCriticalErrors);
  try
  result:=DiskSize(Ord(Drive)-$40)>-1;
  finally
  SetErrorMode(EM); {restore original errormode}
  end;
end;

function UniqueFilename(path:string):string;
var
c:char;
begin
 repeat
 result:='';
 randomize;
   repeat
   c:=chr(random(43)+47);
   if (length(result)=8) then result:=result+'.' else
     if (c in ['0'..'9','A'..'Z']) then result:=result+c;
   until length(result)=12;
   result:=slash(path)+result;
 until not (fileexists(result));
end;

function BSGetDiskFreeSpace(drv:string;var ffree,fsize:comp):boolean;
Type  LargeInt =  Comp;          {use INT64 for delphi versions 3+}
Type pLargeInt = ^Comp;

var
GetDiskFreeSpaceEx: function(
                             RootName: pChar;
                             var FreeForCaller,TotNoOfBytes:LargeInt;
                             TotNoOfFreeBytes: pLargeInt
                             ): BOOL; stdcall;

LFree,LSize:comp;
Lib:THandle;
begin
result:=false;
LFree:=-1;
LSize:=-1;
Lib:=GetModuleHandle('Kernel32'); {get the handle for kernel32.dll}
If (Lib<>0) then
   begin
   @GetDiskFreeSpaceEx:=GetProcAddress(Lib,'GetDiskFreeSpaceExA');
   if (@GetDiskFreeSpaceEx<>nil) then
         if GetDiskFreeSpaceEx(pchar(drv),LFree,LSize,nil) then
         begin
         FFree:=LFree;
         FSize:=LSize;
         result:=true;
         end;
      FreeLibrary( Lib );
   end;
end;



function getregvalue(root:integer;key,value:string):string;
var
rg:Tregistry;
begin
rg:=Tregistry.create;
  try
  rg.rootkey:=root;
  if rg.OpenKey(key,false) then result:=rg.readString(value) else result:='';
  finally
  rg.free;
  end;
end;

function getaliaspath(dbset:Tdataset):string;
var
vDBDesc:DBDesc;
s:string;
begin
result:='';
if not (dbset.active) then exit;
if (dbset is TTable) then s:=(dbset as ttable).databasename;
if (dbset is TQuery) then s:=(dbset as tquery).databasename;
Check(DbiGetDatabaseDesc(PChar(s),@vDBDesc));
result:=slash(string(vDBDesc.szPhyName));
end;

function getfiledate(filename:string):Tdatetime;
begin
if fileexists(filename) then
   result:=filedatetodatetime(fileage(filename)) else result:=maxint;
end;

function filecopy(f,t:string;NoOverwrite:boolean):boolean;
begin
result:=copyfile(pchar(f),pchar(t),NoOverwrite);
end;

function AppendToFile(filename:string;ts:Tstrings):boolean;
var
f:textfile;
i:integer;
begin
result:=true;
assignfile(f,filename);
  try
  if fileexists(filename) then append(f) else rewrite(f);
  for i:=0 to ts.count-1 do writeln(f,ts[i]);
  closefile(f);
  except
  result:=false;
  end;
end;


function strtofloatdef(const s:string;def:Extended):Extended;
var
i:integer;
begin
val(s,result,i);
if i<>0 then result:=def;
end;

function strtofloattry(const value:string):extended;
var
e:integer;
s:string;
begin
result:=0;
if (value='') then exit;
s:=value;
repeat
val(s,result,e);
if e<>0 then
   begin
   s:=replace(s,s[e],'',false);
   if s<>'' then val(s,result,e);
   end;
until (e=0) or (s='');
end;




function volsphere(radius:single):extended;
begin
result:=((4/3)*pi*radius*radius*radius);
end;

function areasphere(radius:single):extended;
begin
result:=(4*pi*radius*radius);
end;

function volcylinder(radius,height:single):extended;
begin
result:=(pi*radius*radius*height);
end;

function areacylinder(radius,height:single):extended;
begin
result:=(2*pi*radius*height);
end;

function MinExt(const A:array of Extended):Extended;
var
i:integer;
begin
Result:=A[Low(A)];
for i:=Low(A)+1 to High(A) do if A[i]<Result then Result:=A[I];
end;

function MaxExt(const A:array of Extended):Extended;
var
i:integer;
begin
Result:=A[Low(A)];
for i:=Low(A)+1 to High(A) do if A[i]>Result then Result:=A[I];
end;

function MinInteger(const A:array of Integer):Integer;
var
i:integer;
begin
Result:=A[Low(A)];
for i:=Low(A)+1 to High(A) do if A[i]<Result then Result:=A[I];
end;

function MaxInteger(const A:array of integer):Integer;
var
i:integer;
begin
Result:=A[Low(A)];
for i:=Low(A)+1 to High(A) do if A[i]>Result then Result:=A[I];
end;

function InverseSum(const a:array of single):single;
var i:integer;
begin
result:=0;
for i:=low(a) to high(a) do result:=result+(1/a[i]);
result:=(1/result);
end;

function MarkUp(profit:single):single;
begin
result:=(100-(10000/(100+profit)));
end;

function SellingPrice(net:double;markup:single):double;
begin
result:=net+(net*markup/100);
end;

function NetPrice(gross:double;taxrate:single):double;
begin
result:=gross-(gross*(taxrate)/(100+taxrate));
end;

function Contrast(value:integer):integer;
var r,g,b:integer;
begin
r:=value shr 16;
g:=(value and $FF00) shr 8;
b:=(value and $FF);
if r<$A0 then r:=$FF else r:=$00;
if g<$C0 then g:=$FF else g:=$00;
if b<$A0 then b:=$FF else b:=$00;
result:=b+(g*$FF)+(r*$FFFF);
end;

end.

