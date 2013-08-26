if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="Geo3-2";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

import olympiad;
size(15cm);
pair A, B, C, D, E, F, P, Q, R, X, Y;
path c_1, c_2;

A = (1, 3);
E = (-2, 1);
B = (-1, -4);
c_1 = circumcircle(A, E, B);
D = relpoint(c_1, 0.7);
F = relpoint(c_1, 0.89);
C = relpoint(c_1, 0.07);

P = extension(A, B, D, E);
Q = extension(B, C, E, F);
R = extension(C, D, F, A);
c_2 = circumcircle(B, E, Q);

X = intersectionpoints(c_2, A -- B)[0];
Y = intersectionpoints(c_2, D -- E)[1];

draw(P -- Q -- R, dashed + red);
draw(A -- D, dashed);
draw(X -- Y -- Q -- cycle, dashed);
draw(A -- B -- C -- D -- E -- F -- cycle);
draw(c_1);
draw(c_2);

label("$A$", A, N);
label("$B$", B, SW);
label("$C$", C, NE);
label("$D$", D, S);
label("$E$", E, NW);
label("$F$", F, SE);
label("$P$", P, SW);
label("$Q$", Q, S);
label("$R$", R, S);
label("$X$", X, NE);
label("$Y$", Y, S);
