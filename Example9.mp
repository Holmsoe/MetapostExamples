prologues:=3;
verbatimtex
%&latex
\documentclass{minimal}
\begin{document}
etex

beginfig(0);

    path p;
    p := fullcircle scaled 5mm;
    draw p;
    draw p shifted  (1mm,2mm);
    draw p shifted 2(1mm,2mm);
    draw p shifted 3(1mm,2mm);
    draw p shifted 4(1mm,2mm);
    draw p shifted 5(1mm,2mm);

endfig;

end