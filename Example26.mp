prologues:=3;
verbatimtex
%&latex
\documentclass{minimal}
\begin{document}
etex

beginfig(0);

vardef tree(expr punktstart,punktslut,n)=
save punkta;
pair punkta;

%punkta=punktslut+(uniformdeviate(n),uniformdeviate(n));
punkta=punktstart rotatedaround(punktslut,20);

if n>0:
draw punktstart--punktslut withpen pencircle scaled 0.02;
tree(punktslut,punkta,n-1);
fi;

endfig;

end