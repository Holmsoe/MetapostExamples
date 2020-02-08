prologues:=3;
verbatimtex
%&latex
\documentclass{minimal}
\begin{document}
etex

beginfig(0);

numeric u;
path circus,tao;
u=12;
z1=(0,u/4);
z2=(u/4,u/4);
z3=(0,-u/4);
z4=(-u/4,-u/4);
z5=(0,-u/2);
z6=(0,u/2);
z7=(u/2,0);
z8=(-u/2,0);
circus:=z5..z7..z6;
tao:=z5..z4..(0,0)..z2..z6;

pickup pencircle scaled 0.06pt;
%draw fullcircle scaled u;
%draw z5..z4..(0,0)..z2..z6;
%draw circus;
%draw tao;

fill buildcycle(z5..z7..z6..z6..z2..(0,0)..z4..z5);
draw z5..z8..z6;
draw z1 withpen pencircle scaled 1;
draw z3 withpen pencircle scaled 1 withcolor white;

endfig;

end