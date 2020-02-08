prologues:=3;
verbatimtex
%&latex
\documentclass{minimal}
\begin{document}
etex

beginfig(0);

numeric u;
u=2cm;
pickup pencircle scaled 0.05cm;
draw fullcircle scaled u;
draw (-0.6*u,0)--(0.6*u,0);
draw (0,-0.6*u)--(0,0.6*u);
draw (0,0)--dir(60)*1cm;
draw dir(0)*0.2cm{dir(90)}..{dir(150)}dir(60)*0.2cm;
label.lft("q",(0,0)) scaled 0.5;

endfig;

end