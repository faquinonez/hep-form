*******************************************************************************
* Example to show how to manipulate vector products                           *
* Usage: In terminal type                                                     *
*        form VectorProducts.frm                                              *
* Author: Fernando Quinonez                                                   *
*******************************************************************************

#commentchar !
! This is a comment
Dimension 3;
Vector u,v,w;
Index i,j,k,l,m,n;
Local [uxv] = e_(i,j,k) * u(i) * v(j);
Local [uxv.w] = e_(i,j,k) * u(i) * v(j) * w(k);
Local [ux(vxw)] = e_(i,j,k) * u(i) * (e_(m,n,j) * v(m) * w(n));
contract;
Print;
.end

