prologues:=3;
verbatimtex
%&latex
\documentclass{minimal}
\begin{document}
etex

beginfig(0);

pickup pencircle scaled 3pt
pair A, B,E,F,G;
path C,D,H;
A:=(0,0); B:=(3 cm,0); 
C:= halfcircle scaled 6 cm shifted (0,0);
H:= halfcircle scaled 6 cm shifted (3 cm,0);
G:=C intersectionpoint H;
draw A--B;
draw A--G;
draw B--G;

endfig;

end