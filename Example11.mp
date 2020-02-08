prologues:=3;
verbatimtex
%&latex
\documentclass{minimal}
\begin{document}
etex

beginfig(0);

z0 = (0,0); z1 = (sqrt(3)*cm,0);
z2 = (sqrt(3)*cm,1cm);
draw z0--z1--z2--cycle;
label.bot(btex $\sqrt{3}$ etex, 1/2[z0,z1]);
label.rt(btex $\frac{1}{2}$ etex, 1/2[z1,z2]);
label.top(btex 1 etex, 1/2[z0,z2]);

endfig;

end