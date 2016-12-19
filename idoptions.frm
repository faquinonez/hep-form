Symbols a,b,c,d,x,y,z;
Function f,g;
Index i;
Set bcSet: b,c;


Local F0 = (x+y)^4;
Print F0;
.sort

Local F1 = (x+y)^4;
identify once x = z;
Print F1;
.sort

Local F2 = (x+y)^4;
identify x*y = z;
Print F2;
.sort

Local F3 = (x+y)^4;
identify only x*y = z;
Print F3;
.sort

Local F4 = (a+b)^2 * (x+y)^2;
identify multi x?*y? = z;
Print F4;
.sort

Local F5 = a*b*c;
identify select bcSet a*b = b^2;
identify select bcSet a*b*c = b^2*c^2;
Print F5;
.sort

Local F6 = f(i,a)*b + f(i,b)*c;
identify select bcSet c?=g(d);
Print F6;
.sort
.end
