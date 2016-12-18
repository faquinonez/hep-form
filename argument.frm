CFunction f;
Symbols x,y;

Local expr = f(x,f(x));

identify x=y;

Print;
.sort

argument;
  identify x=y;
endargument;

Print;
.sort

argument;
  argument;
    identify x?=y^2;
  endargument;
endargument;

Print;
.end
