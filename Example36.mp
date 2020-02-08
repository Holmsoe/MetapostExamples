prologues:=3;
verbatimtex
%&latex
\documentclass{minimal}
\begin{document}
etex

beginfig(0);

numeric u;
u=3cm;
z1=(0,0);
z2=(u,0);
z3=z1+dir(60)*u;


%draw z1--z2--z3{dir 210}..{dir -90}z1;
%draw z3{dir 270}..{dir -150}z1;
draw z1--z2--z3;
draw z1{up}..z3;
draw z1{dir 30}..z3;

draw z1 withpen pencircle scaled 4;
draw z2 withpen pencircle scaled 4;
draw z3 withpen pencircle scaled 4;

endfig;

end