prologues:=3;
verbatimtex
%&latex
\documentclass{minimal}
\begin{document}
etex

beginfig(0);

numeric u,v,a;
path q,r;
a=0.75;
u=3;
v=30;

pickup pencircle scaled 0.06pt;
draw unitsquare scaled u rotated v;
z1=(u/2,u/2);
q=origin--z1;
r:=q rotated v;
z2=point 2 of r; %dette er midtpunktet for den roterede unitsquare
draw z2 withpen pencircle scaled 0.2;

endfig;

end