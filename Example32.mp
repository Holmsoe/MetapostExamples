prologues:=3;
verbatimtex
%&latex
\documentclass{minimal}
\begin{document}
etex

beginfig(0);

path vej;

%Her sættes punkter på path
for i=0 upto 32:
z[i]=i/24*dir(45*i);
endfor;

% Her dannes path udfra punkter
vej:=z0 for i=1 upto 32: ..z[i] endfor;

pickup pencircle scaled 0.04pt;
draw vej;

endfig;

end