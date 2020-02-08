prologues:=3;
verbatimtex
%&latex
\documentclass{minimal}
\begin{document}
etex

beginfig(0);

numeric a;
path vej;

pickup pencircle scaled 0.02pt;

% a er antal vinkler
a=5;

% tegne eger i nkanten
for i=0 upto a:
draw (0,0)--dir(360*i/a);
endfor;

% tegne n-kant 
vej:=dir(0) for i=1 upto a: --dir(360*i/a) endfor;
draw vej;

endfig;

end