prologues:=3;
verbatimtex
%&latex
\documentclass{minimal}
\begin{document}
etex

beginfig(0);

numeric u,d;
path circ,bue;
u=3cm;
z1=(0,0);
z2=(u,0);
z3=(0,u);
z4=(-u,0);
z5=(u,u);
z6=(2u,0);

circ=z2..z3..z4;
bue=z1..z5..z6;


d=2*u;

draw z1--z2;
draw circ;
draw bue;

pickup pencircle scaled 6pt;
draw circ intersectionpoint bue;

z7=circ intersectionpoint bue;
draw z1--z2--z7--cycle;


endfig;

end