prologues:=3;
verbatimtex
%&latex
\documentclass{minimal}
\begin{document}
etex

beginfig(0);

numeric a,b,c;
path helcir;

helcir:=fullcircle;% dette er circel med diameter 1

a=length helcir;  	% dette er antal punkter i circel som per def. er 8
b=arctime 2 of helcir;  % dette er punktnummer hvor længden er 2, som er 8*2/(pi)
c=arclength helcir;  	% dette er længden af circel som er pi

%z1=(a,0);
%z2=(b,1);
%z3=(c,2);

pickup pencircle scaled 0.02pt;
draw helcir;	%Bemærk, at fullcircle er diameter=1 mens dir() går ud fra radius=1

for i=0 upto 7:
dotlabel("",point i of helcir) scaled 0.03;
endfor;

%draw (0,0)--z1;
%draw (0,1)--z2;
%draw (0,2)--z3;
%draw (0,3)--(4,3);
%draw (0,4)--(16/3.1416,4);
%draw (0,5)--(3.1416,5);


endfig;

end