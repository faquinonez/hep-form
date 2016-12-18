Symbol a1,a2,b1,b2,x,n;
Function f;

Set a : a1,a2;
Set b : b1,b2;

Local F = a[1] + a[2];

* x must belong to the set a, and n becomes the number of the element in the 
* set to which x matches. The same number is used at the right hand side of 
* the identity. However, no arithmetic can be done with n
identify x?a[n] = b[n] + f(n);

Print;
.end
