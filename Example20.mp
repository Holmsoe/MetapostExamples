prologues:=3;
verbatimtex
%&latex
\documentclass{minimal}
\begin{document}
etex

beginfig(0);

pair d[],dhat[];
path p;
p := fullcircle xscaled 100 yscaled 40;
draw p;

%for i = 0 upto 40:
%t := i/5;
%draw ((0,0)--(3,0))
%rotated (angle direction t of p - 90)shifted (point t of p);
%endfor;

pickup pencircle scaled 2;
draw (0,0);

fac=1;% circel har standard 8 punkter. fac siger hvor mange gange 8 der skal tegnes tangent og normal

for i=0 upto 8*fac: 

u:=i/fac;

z[u]=point u of p;
d[u]=direction u of p;
dhat[u]=(-ypart d[u],xpart d[u]);

pickup pencircle scaled 1;
draw z[u]; % punkt på kurven

pickup pencircle scaled 0.5;
draw (z[u]-d[u]/2)--(z[u]+d[u]/2); %tangenten i punktet

draw (z[u]-dhat[u]/5)--(z[u]+dhat[u]/5); %tangenten roteret 90 grader

endfor;

endfig;

end