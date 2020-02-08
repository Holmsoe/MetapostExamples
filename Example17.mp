prologues:=3;
verbatimtex
%&latex
\documentclass{minimal}
\begin{document}
etex

beginfig(0);


pair A,B,C,D,E,F,G,H,P;
numeric lang;

def dashfinn=dashed evenly scaled 0.1 enddef;
def thinfinn=withpen pencircle scaled 0.1 enddef;

A=(0,0);B=(0,5);C=(8,5);D=(8,0);P=(20,20);
lang=1/5;

pickup pencircle scaled 0.1;

E=lang[A,P];
F=lang[B,P];
G=lang[C,P];
H=lang[D,P];


draw E--P dashfinn;
draw F--P dashfinn;
draw G--P dashfinn;
draw H--P dashfinn;
draw A--B--C--D--cycle thinfinn;
draw E--F--G--H--cycle thinfinn;
draw A--E thinfinn;
draw B--F thinfinn;
draw C--G thinfinn;
draw D--H thinfinn;
draw A--H thinfinn;


draw 1/2[A,E]{E-A}..{H-E}1/2[E,H]{H-E}..{D-H}1/2[H,D]{D-H}..{A-D}1/2[A,D]{A-D}..cycle;
draw 1/2[B,F]{F-B}..{G-F}1/2[F,G]{G-F}..{C-G}1/2[G,C]{C-G}..{B-C}1/2[B,C]{B-C}..cycle;

endfig;

end