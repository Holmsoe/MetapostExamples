prologues:=3;
verbatimtex
%&latex
\documentclass{minimal}
\begin{document}
etex

beginfig(0);

vardef xianden(expr xind)=
save yud;
numeric yud;
yud=xind*xind;
draw (xind,yud)withpen pencircle scaled 0.2;
enddef;


hop=0.5;
xnul=0;
u=5*hop+xnul;
xianden(u);

for i=1 upto 10:
xianden(i*hop+xnul);
endfor;

endfig;

end