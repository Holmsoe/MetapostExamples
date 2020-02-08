prologues:=3;
verbatimtex
%&latex
\documentclass{minimal}
\begin{document}
etex

beginfig(0);

vardef exp(expr x) = (mexp(256)**x)  enddef;
vardef ln(expr x) = (mlog(256)/256)  enddef;
vardef log(expr x) = (ln(x)/ln(10))  enddef;

vardef f(expr x) = (exp(x)/(1+x)) enddef;

numeric xmin, xmax, ymin, ymax;
numeric xdim,ydim,xsplit,ysplit;
numeric u,ax,ay;
path kurve;

% xmin>0 og ymin>0

%xdim=floor log(xmax-xmin);
%ydim=floor log(ymax-ymin);

xmin=0;
xmax=10;
ymin=0;
ymax=100;

u=1cm;
ay=10;
ax=10;

draw (0,0)--(0,ay*u);
draw (0,0)--(ax*u,0);

for i=1 upto 10: 
draw (-0.1cm,i*u)--(0.1cm,i*u);
draw (i*u,-0.1*u)--(i*u,0.1*u);
label.lft(decimal(i),(-0.1cm,i*u));
label.bot(decimal(i),(i*u,-0.1cm));
label(btex $f(x)= \frac{e^x}{1+x}$ etex scaled 2, (3cm,8cm));
endfor

kurve=(0,f(0))
for i=1 upto 16: ..(u*i/2,f(i/2)) endfor ;

draw kurve;

endfig;

end