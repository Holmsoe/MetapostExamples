prologues:=3;
verbatimtex
%&latex
\documentclass{minimal}
\begin{document}
etex

beginfig(0);

vardef tree(expr punktstart,punktslut,n)=
save punkta,punktb;
pair punkta,punktb;

punktb=punktstart rotatedaround(punktslut,120+uniformdeviate(10));
punkta=0.8[punktslut,punktb];

if n>0:
draw punktstart--punktslut withpen pencircle scaled 0.1;
tree(punktslut,punkta,n-1);
fi;

enddef;

tree((1,1),(3,3),50);

endfig;

end