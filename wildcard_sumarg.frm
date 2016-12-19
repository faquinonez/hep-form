Vectors x,y,z;
Index i;
CFunction f;
Local expr = f( 2*x + y + z );
* index wildcard ( index contraction trick, SCHOONSCHIP )
id f(i?) = f(i);
* id f( x? + y? + z? ) = f(x) + f(y) + f(z);
* FORM does not allow (efficiency) matching of a sum of wildcards, instead of that 
* assuming linearity of the function will give the trick.
Print;
.end

