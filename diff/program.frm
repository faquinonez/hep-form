#include diff.h

Symbol x;
Function dx;

Local expr = sin(x)*tan(x) + cos(x);

#call diff(x,dx)

Print;
.end
