Symbol a,x,y;
CFunction sqrt,dummy;
Local F = 2 * sqrt(a);
Print;
.sort (PolyFun = dummy);
identify dummy(x?) * sqrt(y?) = sqrt(x^2*y);
* can not do:
* identify x? * sqrt(y?) = sqrt(x^2*y);
Print;
.end
