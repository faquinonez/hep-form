Symbols x,y,z;
CFunctions f,g,h;
Local expr1 = f(x) + g(y);
identify f?(x) = h(x);
Print;
.sort;

Local expr2 = f(x) + g(y);
identify f?(x?) = z;
Print expr2;
.sort;

Local expr3 = f(x+y) + f(x,y);
identify f?(x?) = z;
Print expr3;
.end
