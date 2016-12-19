Symbol N;
Dimension N;
Function g;
CFunction eta;
Vector p,q;
Index Um, Lm, U1, ..., U5, L1, ..., L5;
Set U: Um, U1, ..., U5;
Set L: Lm, L1, ..., L5;
Set UL: Um, Lm, <U1, L1>, ..., <U5, L5>;
Set LU: Lm, Um, <L1, U1>, ..., <L5, U5>;
Index i,j,m,n;
Symbol k;

*
Local F1 = g(Lm, p, Um);
Local F2 = g(Um, L1, U2, Lm);
Local F3 = g(Um, p, q, U3, Lm) + 2 * g(U3, q, p);
Local F4 = g(Um, L1, U2, L3, U4, Lm) - 2 * g(U4, L1, U2, L3) - 2 * g(L3, U2, L1, U4);
Local F5 = g(Lm, U1, p, U3, q, U5, Um) - 2 * g(U5, U1, p, U3, q) 
+ 2 * g(q, U1, p, U3, U5) + 2 * g(U3, p, U1, q, U5);
*
* change notation to product of gamma matrices
*
repeat;
  identify g(?a, i?, j?, ?b) = g(?a, i) * g(j, ?b);
endrepeat;
*
* bring low index to the left in the hope
* to meet a corresponding upper index
* bring vector arguments to the left
*
repeat;
  repeat;
    identify g(i?U[k]) * g(j?L[k]) = d_(m,m);
  endrepeat;

  identify g(i?U) * g(j?L) = - g(j) * g(i) + 2*eta(i, j);
  identify g(i?UL[k]) * eta(?a, j?LU[k], ?b) = g(?a, ?b);
  identify g(i?UL) * g(p?) = - g(p) * g(i) + 2*p(i);
  identify p?(i?UL[k]) * eta(m?, j?LU[k]) = p(m);
  identify eta(?a, i?UL[k], ?b) * eta(?c, j?LU[k], ?d) = eta(?a, ?b, ?c, ?d);
endrepeat;

*
* bring low index to the right in the hope
* to meet a corresponding upper index
*
repeat;
  repeat;
    identify g(i?L[k]) * g(j?U[k]) = d_(m,m);
  endrepeat;
  identify g(i?L) * g(j?U) = - g(j) * g(i) + 2*eta(i, j);
  identify g(i?UL[k]) * eta(?a, j?LU[k], ?b) = g(?a, ?b);
  identify p?(i?UL[k]) * eta(j?LU[k], m?) = p(m);
  identify eta(?a, i?UL[k], ?b) * eta(?c, j?LU[k], ?d) = eta(?a, ?b, ?c, ?d);
endrepeat;
*
* bring product of gamma matrices with respect to
* index arguments in standard order
*
repeat;
  identify disorder g(i?UL) * g(j?UL) = - g(j) * g(i) + 2*eta(i,j);
  identify g(i?UL[k]) * eta(?a, j?LU[k], ?b) = g(?a, ?b);
endrepeat;

*
* contract vector components with gamma matrices
* bring all vector arguments to the left
*
repeat;
  identify g(i?UL[k]) * p?(j?LU[k]) = g(p);
  identify g(i?UL) * g(p?) = - g(p) * g(i) + 2 * p(i);
  identify p?(i?UL[k]) * eta(m?, j?LU[k]) = p(m);
  identify eta(?a, i?UL[k], ?b) * eta(?c, j?LU[k], ?d) = eta(?a, ?b, ?c, ?d);
endrepeat;


*
* bring product of gamma matrices with respect to
* vector arguments in standard order

*
repeat;
  disorder g(p?) * g(q?) = - g(q) * g(p) + 2*p.q;
endrepeat;
*
* symmetrize the metric tensor and
* go back to short notation
*
symmetrize eta;
repeat;
  identify g(i?,?a) * g(j?,?b) = g(i, ?a, j, ?b);
endrepeat;
*
AntiBracket N;
Print;
.sort

*
* specialize to the case N=4
*
identify N = 4;
AntiBracket eta;
Print;
.end
