prologues:=3;
verbatimtex
%&latex
\documentclass{minimal}
\begin{document}
etex

beginfig(0);

numeric a,b,u,y;
a=30;% vinklen på z1--z2
b=70;% vinklen på z1--z3
u=3cm;%længden af vektor z1--z2 og z1--z3
y=1cm;%placering af vinkel fra hjørnet

z1=(0,0);
z2=z1+dir(a)*u;%dir giver enhedsvektoren!
z3=z1+dir(b)*u;
z4=z1+dir(a)*y;%start for vinkelbue
z5=z1+dir(b)*y;%slut for vinkelbue
z6=z4*2;
z7=z5*2;

draw z1--z2;
draw z1--z3;
draw z4 withpen pencircle scaled 4;
draw z5 withpen pencircle scaled 4;
draw z4{dir(a+90)}..{dir(b+90)}z5;%udgangsvinkel skal drejes 90 i forhold til enhedsvektor.
drawarrow z6{dir(a+90)}..{dir(b+90)}z7;

endfig;

end