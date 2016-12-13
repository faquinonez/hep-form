*******************************************************************************
* Example to show commutators in quantum mechanics are used in FORM           *
* Usage: In terminal type                                                     *
*        form Commutator.frm                                                  *
* Author: Fernando Quinonez                                                   *
*******************************************************************************

Symbol hbar,m;
Function x,p,H;

Local [H,x] = H*x - x*H;

id H = p^2/(2*m);

Print;

.sort



repeat;
id x*p = p*x + hbar*i_;
endrepeat;

Print;

.end

