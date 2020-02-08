prologues:=3;
verbatimtex
%&latex
\documentclass{minimal}
\begin{document}
etex

beginfig(0);

numeric d,h;
pickup pencircle scaled 0.2;

d=1cm;
h=d*sqrt(3)/2;

for j=1 upto 7:
for i=1 upto j:
draw fullcircle scaled d shifted (d*(i+0.5*(7-j)),h*(7-j));
endfor;
endfor;

endfig;

end