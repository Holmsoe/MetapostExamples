prologues:=3;
verbatimtex
%&latex
\documentclass{minimal}
\begin{document}
etex

beginfig(0);

numeric u,v;
u=2cm;
v=60;
draw fullcircle scaled u;
draw (-1.5*u/2,0)--(1.5*u/2,0);
draw (0,-1.5*u/2)--(0,1.5*u/2);
draw (0,0)--dir(v)*u/2;
draw dir(v)*u/2--(xpart dir(v)*u/2,0);
draw (u/15,0){dir(0+90)}..{dir(v+90)}(dir(v)*u/15);
label.bot(btex$ cos(\phi) $etex,(u*0.6,0)) scaled 0.4;
label.rt(btex$ sin(\phi) $etex,
(xpart dir(v)*u*1.2,ypart dir(v)*u*0.4)) scaled 0.4;
label(btex$ \phi $etex,(u/5,u/6))scaled 0.4;

draw (2*u,0)--((2*u,0)+dir(v)*u);
draw ((2*u,0)+dir(v)*u)--((2*u,0)+(xpart dir(v)*u,0));
draw (2*u,0)--((2*u,0)+(xpart dir(v)*u,0));
draw (2*u+u/7,0){dir(0+90)}..{dir(v+90)}((2*u,0)+dir(v)*u/7);
label.bot(btex$ cos(\phi) $etex,(5.7*u,0)) scaled 0.4;
label.rt(btex$ sin(\phi) $etex,(6.3*u,u)) scaled 0.4;
label(btex$ \phi $etex,(5.4*u,u/4))scaled 0.4;

endfig;

end