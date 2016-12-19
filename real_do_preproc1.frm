* check that exp(ln(1+x))-1 = x up to order 50 in series expansions
#define N "50"
On Statistics;
Symbol i, x(:'N'), y(:'N');
* define ln(1+x)
Local X = - sum_(i, 1, 'N', sign_(i)/i*x^i);
* tag x by y
identify x = x*y;
* so that we can use the telescope formula of exp(x)-1.
* in this example, the expansion will be slow.
#do i=2,'N'+1
  identify y = 1 + x*y/'i';
#enddo
* print the result
Print;
.end
