* check that exp(ln(1+x))-1 = x up to order 50 in series expansions
#define N "50"
On Statistics;
Symbol i, x(:'N'), y(:'N');
* define series expansion of ln(1+x)
Local X = - sum_(i, 1, 'N', sign_(i)/i*x^i);
* tag x by y
identify x = x*y;
* so that we can use the telescope formula of exp(x)-1.
* in this example, sorting takes place at each step of the expansion.
#do i=2,'N'+1
  identify y = 1 + x*y/'i';

  .sort: step 'i';

#enddo
* print the result
Print;
.end
