prologues:=3;
verbatimtex
%&latex
\documentclass{minimal}
\begin{document}
etex

beginfig(0);

path vejA,vejB,vejC;

z1=dir(0);

vejA:=z1 for i=1 upto 96: ..(i/12+(xpart dir(45*i)),ypart dir(45*i)) endfor;

pickup pencircle scaled 0.04pt;
draw vejA yscaled 1.5 rotated 45;

pickup pencircle scaled 0.2pt;
draw (0,0);

endfig;

end