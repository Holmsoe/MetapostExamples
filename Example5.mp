prologues:=3;
verbatimtex
%&latex
\documentclass{minimal}
\begin{document}
etex

beginfig(0);

pair A;
path H;
z0 = (0,0); 
z1 = (3cm,0);
z2 = 5cm*dir 60;
z3 = z1+5cm*dir 120;
A:= (z0--z2) intersectionpoint (z1--z3);
H:=z1--A;
draw z0--z1;
draw z0--A;
draw z1--A;
label.top(btex $Hej$ etex,A);
draw fullcircle scaled 6cm;
draw H shifted (1cm,1cm);
draw H shifted (1cm,1cm) rotated 60;
draw H shifted (1cm,1cm) rotated 120;
draw H shifted (1cm,1cm) rotated 180;
draw H shifted (1cm,1cm) rotated 240;
draw H shifted (1cm,1cm) rotated 300;
%label.top(btex $90$ etex,1[z0,z2]);
%label.top(btex $120$ etex,1[z0,z3]);
%label.bot(btex $\sqrt{3}$ etex,1/2[z0,z1]);
%label.bot(btex $90$ etex, z2);
%label.bot(btex $120$ etex, z3);
%label.rt(btex $\frac{1}{2}$ etex, 1/2[z1,z2]);
%label.top(btex 1 etex, 1/2[z0,z2]);

endfig;

end