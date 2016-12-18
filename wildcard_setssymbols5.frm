Symbol a1,a2,b1,b2,x,n;

Set a : a1,a2;
Set b : b1,b2;

Local F = a[1] + a[2];

* x must belong to the set a, and in the right hand side each
* occurrence of x will be replaced by the corresponding element of the set b.
identify x?a?b = x;

Print;
.end
