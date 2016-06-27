if(!settings.multipleView) settings.batchView=false;
settings.tex="xelatex";
defaultfilename="FT_chs-1";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

texpreamble("\usepackage{xeCJK}");
texpreamble("\setCJKmainfont{SimSun}");
usepackage("amsmath");
import graph;
size(250);
//同时的相对性
pair O,OO,i,j,k;
O = (0,0);
OO = (1,0.5);
i = dir(0);
j = dir(45-180);
k = dir(90);
draw(Label("$x$",EndPoint),O--5*i,Arrow);
draw(Label("$y$",EndPoint),O--1*j,Arrow);
draw(Label("$z$",EndPoint),O--4*k,Arrow);
draw(Label("$x'$",EndPoint),OO--OO+4*i,Arrow);
draw(Label("$y'$",EndPoint),OO--OO+(1-0.5/Sin(degrees(j)))*j,Arrow);
draw(Label("$z'$",EndPoint),OO--OO+3.5*k,Arrow);
real l;
l = 0.2;
draw(Label("$B$",EndPoint),OO+i--OO+i+l*k);
draw(Label("$A$",EndPoint),OO+2*i--OO+2*i+l*k);
draw(Label("$C$",EndPoint),OO+3*i--OO+3*i+l*k);
draw(OO+1.8*i+0.5*l*k--OO+1.2*i+0.5*l*k,Arrow);
draw(OO+2.2*i+0.5*l*k--OO+2.8*i+0.5*l*k,Arrow);
