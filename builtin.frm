*******************************************************************************
* Example to show how some built in functions                                 *
* Usage: In terminal type                                                     *
*        form builting.frm                                                    *
* Author: Fernando Quinonez                                                   *
*******************************************************************************

Symbol x;
Local F1 = invfac_(3) + x*fac_(3);
Local F2 = cos_(0) + cos_(x)^2 + sin_(x)^2;
Local F3 = x^3*sign_(3) + x*abs_(-1/2) + sig_(-3) + sig_(x);
Local F4 = binom_(5,2) + sqrt_(4) + x*root_(2,4);
Local F5 = bernoulli_(0) + bernoulli_(1)*x + bernoulli_(2)*x^2;
Local F6 = max_(1/2,2) + min_(1,x);
Local F7 = mod_(7,2);
Print;
.end;
