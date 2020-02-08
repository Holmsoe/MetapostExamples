prologues:=3;
verbatimtex
%&latex
\documentclass{minimal}
\begin{document}
etex

beginfig(0);

path p,k;
pair lkanon,hkanon;
numeric u,v,h[],l[];
u=0.1cm;
pickup pencircle scaled 0.2;
p=fullcircle scaled u;

z1=point 3 of p;%45 graders punkt
z2=(xpart z1-ypart z1-u/2,-u/2);% Et punkt på 45 graders tangent.først til y=0 og herefter fratrækkes u/2 for at komme til bund af cirkel. Dette er kanonens underside forneden.

lkanon=(2u,2u);
hkanon=(-u/5,u/5);
z3=z2+lkanon;%slutpunkt af underside af kanonrør
z4=z2+hkanon;%oversiden forneden
z5=z3+hkanon;%overside foroven

draw p;
draw z2--z3--z5--z4--cycle;
draw fullcircle scaled (u/8);
draw (-1cm,-u/2)--(4cm,0) dashed evenly;

v=17;
h[0]=ypart 1/2[z3,z5];
l[0]=xpart 1/2[z3,z5];

for i=1 upto 30:
l[i]=l[0]+i*u;
h[i]=h[0]+i*u-(10*i*i*u/v/v);
draw (l[i],h[i]) withpen pencircle scaled 0.5;
endfor;

draw (3.5cm,0)--(3.5cm,3*u)--(3.56cm,3*u)--(3.56cm,0)--cycle;
k=fullcircle scaled (3*u)shifted (3.53cm,4.5*u);
draw k;
for i=0 upto 7:
z[i+6]= point i of k;
z[i+20]= direction i of k;
draw halfcircle rotated (angle(z[i+20])+180) scaled u shifted z[i+6] ;
endfor;

endfig;

end