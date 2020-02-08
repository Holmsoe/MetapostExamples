prologues:=3;
verbatimtex
%&latex
\documentclass{minimal}
\begin{document}
etex

beginfig(0);

pickup pencircle scaled 0.08 cm
    pair A, B, C, D;
    A:=(0,0); B:=(1.3cm,0); C:=(0,1cm);D:=(1.3 cm,1 cm);
    draw A--B--D--C--A;

endfig;

end