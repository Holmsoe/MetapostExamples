prologues:=3;
verbatimtex
%&latex
\documentclass{minimal}
\begin{document}
etex

beginfig(0);

vardef xianden(expr xind,n)=
save yud,xny;
numeric yud,xny;

if n>0:
yud=1.06**xind;
draw (xind,yud)withpen pencircle scaled 1;
xny=xind+1;
xianden(xny,n-1);
fi;

enddef;

xianden(1,100);

endfig;

end