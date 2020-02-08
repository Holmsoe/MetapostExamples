prologues:=3;
verbatimtex
%&latex
\documentclass{minimal}
\begin{document}
etex

beginfig(0);

numeric u;
u=2.5cm ;
drawarrow (-1.2*u,0)--(1.2*u,0);
drawarrow (0,-1.2*u)--(0,1.2*u);
draw fullcircle scaled 5cm;
draw (0,0)--(u,(cosd(45)/sind(45))*u);
draw (0,0)--(u,-(cosd(45)/sind(45))*u);
draw (cosd(45)*u,-sind(45)*u)--(cosd(45)*u,sind(45)*u) dashed evenly;
draw (0,-sind(45)*u)--(cosd(45)*u,-sind(45)*u) dashed evenly;
draw (0,sind(45)*u)--(cosd(45)*u,sind(45)*u) dashed evenly;
draw (u,-1.3*u)--(u,1.3*u);
drawarrow (0.12*u,0)..(0.12*cosd(45)*u,0.12*sind(45)*u);
drawarrow (0.12*u,0)..(0.12*cosd(45)*u,-0.12*sind(45)*u);
dotlabel.ulft(btex $0$ etex, (0,0));
dotlabel.lrt(btex $I$ etex, (u,0));
dotlabel.ulft(btex $J$ etex, (0,u));
dotlabel.lft(btex $\sin(x)$ etex, (0,sind(45)*u));
dotlabel.lft(btex $-\sin(x)$ etex, (0,-sind(45)*u));
dotlabel.llft(btex $\cos(x)$ etex, (cosd(45)*u,0));
dotlabel.rt(btex $\tan(x)$ etex , (u,(sind(45)/cosd(45))*u));
dotlabel.rt(btex $-\tan(x)$ etex , (u,-(sind(45)/cosd(45))*u));
label.top(btex $x$ etex,(cosd(45)*u,sind(45)*u));
label.bot(btex $-x$ etex,(cosd(45)*u,(-sind(45)-0.05)*u));

endfig;

end