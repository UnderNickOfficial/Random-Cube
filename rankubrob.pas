uses crt,graph;
const
w=20;
h=8;
cx=350;
cy=600;
var i,j,k,xv,yv,dv,mv,a1,q,b,c,l,h1,h2,i2,j2,k2,p,i1:integer; k3:longint; c5:char;
f:boolean;
a:array[-1..100,-1..100,-1..100] of longint;

procedure kub15(x1,y1,z1:integer);
begin
xv:=cx+(x1*w)-(z1*h);
yv:=cy-(y1*w)+(z1*h);
setcolor(15);
line(xv,yv+w,xv-h,yv+h+w);
line(xv+w,yv+w,xv-h+w,yv+h+w);

line(xv-h,yv+h+w,xv-h+w,yv+h+w);
setfillstyle(1,2);
setcolor(4);

setcolor(3);
for a1:=1 to w-1 do
line(xv+a1,yv+w+1,xv+a1-h,yv+h+w-1);
setfillstyle(1,0);
bar(xv+1,yv+1,xv+w-1,yv+w-1);
setcolor(0);
rectangle(xv,yv,xv+w,yv+w);
for a1:=1 to w do
line(xv-1,yv+a1-1,xv-h-1,yv+a1+h+1);
line(xv,yv,xv-h,yv+h);
line(xv-h,yv+h,xv-h,yv+h+w);
end;

procedure kub14(x1,y1,z1:integer);
begin
xv:=cx+(x1*w)-(z1*h);
yv:=cy-(y1*w)+(z1*h);
setcolor(15);
line(xv,yv,xv-h,yv+h);
line(xv,yv+w,xv-h,yv+h+w);
line(xv-h,yv+h,xv-h,yv+h+w);
setfillstyle(1,2);

setcolor(4);
for a1:=1 to w-2 do
line(xv-1,yv+a1+1,xv-h+1,yv+a1+h+1);
setcolor(0);
for a1:=0 to w do
line(xv+a1,yv+w,xv+a1-h,yv+h+w);
rectangle(xv,yv,xv+w,yv+w);
setfillstyle(1,0);
bar(xv+1,yv+1,xv+w-1,yv+w-1);
setcolor(4);
end;

procedure kub13(x1,y1,z1:integer);
begin
xv:=cx+(x1*w)-(z1*h);
yv:=cy-(y1*w)+(z1*h);
setcolor(15);
rectangle(xv,yv,xv+w,yv+w);
setfillstyle(1,2);
bar(xv+1,yv+1,xv+w-1,yv+w-1);
setcolor(3);
setcolor(0);
for a1:=1 to h-1 do
line(xv-a1,yv+a1,xv-a1,yv+a1+w);
line(xv,yv,xv-h,yv+h);
line(xv-h,yv+h,xv-h,yv+h+w);
for a1:=1 to h-1 do
line(xv-a1+1,yv+a1+w,xv-a1+w-1,yv+a1+w);
line(xv+w,yv+w,xv-h+w,yv+h+w);
line(xv-h,yv+h+w,xv-h+w,yv+h+w);
end;

procedure kub3(x1,y1,z1:integer);
begin
xv:=cx+(x1*w)-(z1*h);
yv:=cy-(y1*w)+(z1*h);
setcolor(15);
rectangle(xv,yv,xv+w,yv+w);
line(xv+w,yv+w,xv-h+w,yv+h+w);
line(xv-h,yv+h+w,xv-h+w,yv+h+w);
setfillstyle(1,2);
bar(xv+1,yv+1,xv+w-1,yv+w-1);
setcolor(3);
for a1:=1 to h-1 do
 line(xv-a1+1,yv+a1+w,xv-a1+w-1,yv+a1+w);
setcolor(0);
for a1:=1 to h-1 do
 line(xv-a1,yv+a1+1,xv-a1,yv+a1+w-1);
line(xv,yv,xv-h,yv+h);
line(xv-h,yv+h,xv-h,yv+h+w);
end;

procedure kub4(x1,y1,z1:integer);
begin
xv:=cx+(x1*w)-(z1*h);
yv:=cy-(y1*w)+(z1*h);
setcolor(15);
rectangle(xv,yv,xv+w,yv+w);
line(xv,yv,xv-h,yv+h);
line(xv,yv+w,xv-h,yv+h+w);
line(xv-h,yv+h,xv-h,yv+h+w);
setfillstyle(1,2);
bar(xv+1,yv+1,xv+w-1,yv+w-1);
setcolor(4);
for a1:=1 to w-2 do
line(xv-1,yv+a1+1,xv-h+1,yv+a1+h+1);
setcolor(0);
for a1:=0 to w do
line(xv+a1,yv+w,xv+a1-h,yv+h+w);
setcolor(4);
end;
procedure kub5(x1,y1,z1:integer);
begin
xv:=cx+(x1*w)-(z1*h);
yv:=cy-(y1*w)+(z1*h);
setcolor(15);
line(xv,yv,xv-h,yv+h);
line(xv,yv+w,xv-h,yv+h+w);
line(xv+w,yv+w,xv-h+w,yv+h+w);
line(xv-h,yv+h,xv-h,yv+h+w);
line(xv-h,yv+h+w,xv-h+w,yv+h+w);
setfillstyle(1,2);
setcolor(4);
for a1:=1 to w-2 do
line(xv-1,yv+a1+1,xv-h+1,yv+a1+h+1);
setcolor(3);
for a1:=1 to w-1 do
line(xv+a1,yv+w+1,xv+a1-h,yv+h+w-1);
setfillstyle(1,0);
bar(xv+1,yv+1,xv+w-1,yv+w-1);
setcolor(0);
rectangle(xv,yv,xv+w,yv+w);
end;

procedure kub2(x1,y1,z1:integer);
begin
xv:=cx+(x1*w)-(z1*h);
yv:=cy-(y1*w)+(z1*h);
setcolor(15);
rectangle(xv,yv,xv+w,yv+w);
line(xv,yv,xv-h,yv+h);
line(xv,yv+w,xv-h,yv+h+w);
line(xv+w,yv+w,xv-h+w,yv+h+w);
line(xv-h,yv+h,xv-h,yv+h+w);
line(xv-h,yv+h+w,xv-h+w,yv+h+w);
setfillstyle(1,2);
bar(xv+1,yv+1,xv+w-1,yv+w-1);
setcolor(3);
for a1:=1 to h-1 do
 line(xv-a1+1,yv+a1+w,xv-a1+w-1,yv+a1+w);
setcolor(4);
for a1:=1 to h-1 do
 line(xv-a1,yv+a1+1,xv-a1,yv+a1+w-1);
end;

procedure kub(x1,y1,z1:integer);
begin
xv:=cx+(x1*w)-(z1*h);
yv:=cy-(y1*w)+(z1*h);
setcolor(15);
rectangle(xv,yv,xv+w,yv+w);
line(xv,yv,xv+h,yv-h);
line(xv+w,yv,xv+h+w,yv-h);
line(xv+w,yv+w,xv+h+w,yv-h+w);
line(xv+h,yv-h,xv+h+w,yv-h);
line(xv+h+w,yv-h+w,xv+h+w,yv-h);
setfillstyle(1,2);
bar(xv+1,yv+1,xv+w-1,yv+w-1);
setcolor(3);
for a1:=1 to h-1 do
 line(xv+a1+1,yv-a1,xv+a1+w-1,yv-a1);
setcolor(4);
for a1:=1 to h-1 do
 line(xv+a1+w,yv-a1+1,xv+a1+w,yv-a1+w-1);

end;

procedure rankub2;
begin
for i:=0 to 21 do
for j:=0 to 21 do
for k:=0 to 21 do
a[i,j,k]:=0;
q:=1;
kub2(20,20,20);
a[1,1,1]:=1;
for i1:=0 to 21 do
begin
a[i1,21,21]:=1;
a[21,i1,21]:=1;
a[21,21,i1]:=1;
end;
randomize;
repeat
i:=random(20)+1;
j:=random(20)+1;
k:=random(20)+1;
if (k=1) and (i=1) and (a[i+1,j,k]=1) and ((a[i,j+1,k]=1) or (j=20)) and ((a[i,j,k+1]=1) or (k=20)) and (a[i,j,k]=0) then
begin
a[i,j,k]:=1;
kub15(i,j,k);
q:=q+1;
end
else
if (j=1) and (k=1) and ((a[i+1,j,k]=1) or (i=20)) and ((a[i,j+1,k]=1) or (j=20)) and ((a[i,j,k+1]=1) or (k=20)) and (a[i,j,k]=0) then
begin
a[i,j,k]:=1;
kub14(i,j,k);
q:=q+1;
end
else
if (j=1) and (i=1) and ((a[i+1,j,k]=1) or (i=20)) and ((a[i,j+1,k]=1) or (j=20)) and ((a[i,j,k+1]=1) or (k=20)) and (a[i,j,k]=0) then
begin
a[i,j,k]:=1;
kub13(i,j,k);
q:=q+1;
end
else
if (i=1) and (a[i+1,j,k]=1) and ((a[i,j+1,k]=1) or (j=20)) and ((a[i,j,k+1]=1) or (k=20)) and (a[i,j,k]=0) then
begin
a[i,j,k]:=1;
kub3(i,j,k);
q:=q+1;
end
else
if ((a[i+1,j,k]=1) or (i=20)) and (a[i,j+1,k]=1)  and (j=1) and ((a[i,j,k+1]=1) or (k=20)) and (a[i,j,k]=0) then
begin
a[i,j,k]:=1;
kub4(i,j,k);
q:=q+1;
end
else
if ((a[i+1,j,k]=1) or (i=20)) and ((a[i,j+1,k]=1) or (j=20)) and (k=1) and (a[i,j,k+1]=1) and (a[i,j,k]=0) then
begin
a[i,j,k]:=1;
kub5(i,j,k);
q:=q+1;
end
else
if ((a[i+1,j,k]=1) or (i=20)) and ((a[i,j+1,k]=1) or (j=20)) and ((a[i,j,k+1]=1) or (k=20)) and (a[i,j,k]=0) then
begin
a[i,j,k]:=1;
kub2(i,j,k);
q:=q+1;
end;
until q=8000;
cleardevice;
kub(1,1,3);
{kub(-1,-1,-3); }
end;

procedure rankub;
begin
for i:=0 to 21 do
for j:=0 to 21 do
for k:=0 to 21 do
a[i,j,k]:=0;
q:=1;
kub(1,1,2);
a[1,1,1]:=1;
for i1:=1 to 21 do
begin
a[i1,0,0]:=1;
a[0,i1,0]:=1;
a[0,0,i1]:=1;
end;
randomize;
repeat
i:=random(21);
j:=random(21);
k:=random(21);
if ((a[i-1,j,k]=1) or (i=1)) and ((a[i,j-1,k]=1) or (j=1)) and ((a[i,j,k-1]=1) or (k=1)) and (a[i,j,k]=0) then
begin
a[i,j,k]:=1;
kub(i,j,k+1);
q:=q+1;

end;
until q=8000;
end;

begin
dv:=detect;
initgraph(dv,mv,'');
{readln(k2);}
kub(1,1,1);
repeat
c5:='w';
repeat
c5:=readkey;
until (c5=#27) or (c5=#13);
if c5=#13 then
begin
rankub;
c5:='w';
repeat
c5:=readkey;
until (c5=#27) or (c5=#13);
if c5=#13 then
rankub2;
end;
until c5=#27;
{kub2(1,1,1); }
end.


