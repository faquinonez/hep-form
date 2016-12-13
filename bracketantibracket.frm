*******************************************************************************
* Example to show different ways to print                                     *
* Usage: In terminal type                                                     *
*        form bracketantibracket.frm                                          *
* Author: Fernando Quinonez                                                   *
*******************************************************************************

Dimension 3;
Vector u,v,w;
Index i,j,k,l,m,n;
Local [uxv](k) = e_(1,2,3) * e_(i,j,k) * u(i) * v(j);
Local [uxv.w] = e_(1,2,3) * e_(i,j,k) * u(i) * v(j) * w(k);
Global [ux(vxw)](k) = e_(i,j,k) * u(i) * (e_(m,n,j) * v(m) * w(n));
contract;
Bracket w;
Print [uxv.w];
.sort


AntiBracket u,v;
Print [uxv];
.store

Local [(ux(vxw)(1)] = [ux(vxw)](1);
Local [(ux(vxw)(2)] = [ux(vxw)](2);
Local [(ux(vxw)(3)] = [ux(vxw)](3);
Print;



.end

