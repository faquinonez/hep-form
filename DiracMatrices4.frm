Function g, G;
CFunction eta, eps, del;
Index a, b, c, d, k, m, n, r;
*
* make the left-hand side of the equality
*
Local [Gabc] = 1/6 * e_(1,2,3) * e_(a,b,c) * g(a) * g(b) * g(c);
contract;
identify g(1) = g(a) * eta(a,a);
identify g(2) = g(b) * eta(b,b);
identify g(3) = g(c) * eta(c,c);
Print +s [Gabc];
.sort

*
* define the right-hand side of the equality
* implicitly assume Einstein’s summation convention
*
Local [g5] = i_ * g(0) * g(1) * g(2) * g(3);
Local F2 = i_ * eps(a,b,c,d) * [g5] * g(d);
sum d,0,1,2,3;
Print +s F2;
.sort

*
* compute the difference of the left- and right-hand side
*
Local F = F2 - [Gabc];
repeat;
  identify g(a?) * g(a?) = eta(a,a);
  disorder g(a?) * g(b?)= - g(b) * g(a) + 2*eta(a,b);
endrepeat;
.sort
*
* work out the contraction of repeated indices and
* show that for all combinations of indices the result equals zero
*
Symbols x, y, z;
Local R = sum_(a, 0, 3, sum_(b, 0, 3, (sum_(c, 0, 3, F*x^a*y^b*z^c))));
Bracket x, y, z;

.sort
repeat;
  identify g(a?) * g(a?) = eta(a,a);
  disorder g(a?) * g(b?)= - g(b) * g(a) + 2*eta(a,b);
endrepeat;
identify eps(?a) = e_(?a);
identify eta(a?,a?) = -1 + 2*d_(0,a);
identify eta(a?,b?) = d_(a,b);
identify e_(0,1,2,3) = 1;
Print R;
.end
