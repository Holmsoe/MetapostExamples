prologues:=3;
verbatimtex
%&latex
\documentclass{minimal}
\begin{document}
etex

beginfig(0);



draw (0,0)--dir(60)*2cm;
draw (0,0) withpen pencircle scaled 4;
labeloffset:=-5mm;
label.top(btex $\rbrace$ etex xscaled 1.5 yscaled 6 rotated 150 ,(0,0));


endfig;

end