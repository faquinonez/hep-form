*******************************************************************************
* Example to show usage of statements ToTensor and ToVector in FORM           *
* Usage: In terminal type                                                     *
*        form totensortovector.frm                                            *
* Author: Fernando Quinonez                                                   *
*******************************************************************************

Tensor t;
Vector u,v;
Indices i,j,k;

Local F1 = v(i)*v(j)*v(k)*v(1);
Local F2 = v;
Local F3 = (u.v)^2 * v.v;

ToTensor v,t;
Print;
.sort


Local F4 = t;
ToVector t,v;
Print;


.end

