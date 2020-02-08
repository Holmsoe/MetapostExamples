prologues:=3;
verbatimtex
%&latex
\documentclass{minimal}
\begin{document}
etex

beginfig(0);

numeric u;

u=3cm;

pickup pencircle scaled 0.2;
draw fullcircle scaled 2u;
draw (-1.1*u,0)--(1.1*u,0cm);
draw (0,-1.1*u)--(0,1.1*u);
draw (0,0)--dir(60)*u;
draw (xpart dir(60)*u,0)--dir(60)*u;
label(btex $sin\phi$ etex, (0.65*u,0.4*u));
label(btex $cos\phi$ etex, (0.3*u,-0.05*u));
draw (u/10,0){up}..{dir(150)}(dir(60)*u/10);
label(btex $\phi$ etex, (1.3*u/10,0.7*u/10));

endfig;

end