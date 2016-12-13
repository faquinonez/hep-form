*******************************************************************************
* Example to show Einstein sum convention in FORM                             *
* Usage: In terminal type                                                     *
*        form EinsteinSumConvention.frm                                       *
* Author: Fernando Quinonez                                                   *
*******************************************************************************

Index i,j;
Function f;
Vector u,v;
Local w1 = u(1) + v(i);
Local w2 = u(i) * v(j);
Local w3 = u(i) * u(i);
Local w4 = v(i) * u(i);
Local w5 = f(i,j) * u(i) * v(j);
Print;
.end
