prologues:=3;
verbatimtex
%&latex
\documentclass{minimal}
\begin{document}
etex

beginfig(0);

path fisk,p;

pickup pencircle scaled 0.2;

fisk=(0,0)..(1cm,1cm)..(4cm,0)..(5cm,-1cm)--(5cm,1cm)..(5cm,1cm)..(4cm,0)..(1cm,-1cm)..cycle;

draw fisk;

draw fullcircle scaled 0.2cm shifted (0.7cm,0.5cm);
fill fullcircle scaled 0.05cm shifted (0.7cm,0.5cm);

p=(0.7cm,0)--(-1cm,-1cm);
z1=fisk intersectionpoint p;

draw (0,0)--(0.7cm,0)--z1;

endfig;

end