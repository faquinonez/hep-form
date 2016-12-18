*******************************************************************************
* Differentiation of polynomials                                              *
* d^2/dxdy (x^2 y^3 + x^3 + x^4 y^4)                                          *
* Usage: In terminal type                                                     *
*        form differentiate_polynomials.frm                                   *
* Author: Fernando Quinonez                                                   *
*******************************************************************************
Symbols x,y,m,n;

Local P = x^2*y^3 + x^3 + x^4*y^4;

Print;
.sort

* Differentiation rule.
id x^m? * y^n? = m*x^(m-1) * n*y^(n-1);

Print;
.end
