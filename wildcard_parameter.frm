Symbols a,b,x,y;
CFunction sqrt;

Local F1 = a * sqrt(b);
Local F2 = sqrt(2) * sqrt(b);
Local F3 = sqrt(sqrt(a)+1) * sqrt(sqrt(a)-1);

id x? * sqrt(y?) = sqrt(x^2*y);

Print;
.sort


repeat;
  id sqrt(x?) * sqrt(y?) = sqrt(x*y);
endrepeat;
id sqrt(4) = 2;

Print F2,F3;
.sort


argument;
  id sqrt(x?) * sqrt(x?) = x;
endargument;

Print F3;
.end
