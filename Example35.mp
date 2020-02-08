prologues:=3;
verbatimtex
%&latex
\documentclass{minimal}
\begin{document}
etex

beginfig(0);

numeric d,r;
u=3cm;
z1=(0,0);
z2=(u,0);
z3=z1+dir(60)*u;
z4=1/2[z1,z2];
z5=1/2[z1,z3];
z6=1/2[z2,z3];
draw z1--z2--z3--cycle;
draw z3--z4;
draw z2--z5;
draw z1--z6;

z7=whatever[z3,z4]=whatever[z1,z6];

draw z7 withpen pencircle scaled 8;

d=2*sqrt(x7**2+y7**2);
r=d/2;

draw fullcircle scaled d shifted z7;
draw fullcircle scaled r shifted z7;

endfig;

end