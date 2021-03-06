*******************************************************************************
* Example to show how to manipulate symbols' matrix in FORM                   *
* Usage: In terminal type                                                     *
*        form Matrix.frm                                                      *
* Author: Fernando Quinonez                                                   *
*******************************************************************************

Symbols a,b,c,d;
CTensor M;
Indices i,j;
Local det = e_(1,2) * e_(i,j) * M(1,i) * M(2,j);
contract;
id M(1,1) = a;
id M(1,2) = b;
id M(2,1) = c;
id M(2,2) = d;
Print;
.end

