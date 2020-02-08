prologues:=3;
verbatimtex
%&latex
\documentclass{minimal}
\begin{document}
etex

beginfig(0);

numeric a,b;
path vej[];

vej[1]=halfcircle scaled 4;
vej[2]=halfcircle scaled 4 shifted (2,0);
vej[3]=(1.8,0)--(1.8,3);
vej[4]=(0.2,0)--(0.2,3);
vej[5]=(vej[1] cutbefore vej[3]) cutafter vej[4];
vej[6]=(vej[2] cutbefore vej[3]) cutafter vej[4];

pickup pencircle scaled 0.02pt;
%draw vej[1];
%draw vej[2];
z1=vej[1] intersectionpoint vej[2];
draw (0,0)--(2,0);
draw (0,0)--z1;
draw (2,0)--z1;
draw vej[5];
draw vej[6];
a=30;
b=1/a;

label.lft("A",(0,0)) scaled b;
label.top("B",a*z1) scaled b;
label.rt("C",a*(2,0)) scaled b;

endfig;

end