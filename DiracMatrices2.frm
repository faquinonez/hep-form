* Chisholm Identities
Function g;
CFunction eta;
Index Um, Lm, U1, ..., U4, L1, ..., L4;
Set U: Um, U1, ..., U4;
Set L: Lm, L1, ..., L4;
Set UL: Um, Lm, <U1, L1>, ..., <U4, L4>;
Set LU: Lm, Um, <L1, U1>, ..., <L4, U4>;
Index i,j;
Symbol k, N;
*
Local F1 = g(Um) * g(U1) * g(Lm);
Local F2 = g(Um) * g(U1) * g(U2) * g(Lm);
Local F3 = g(Um) * g(U1) * g(U2) * g(U3) * g(Lm)
+ 2 * g(U3) * g(U2) * g(U1);
Local F4 = g(Um) * g(U1) * g(U2) * g(U3) * g(U4) * g(Lm)
- 2 * g(U4) * g(U1) * g(U2) * g(U3)
- 2 * g(U3) * g(U2) * g(U1) * g(U4);
*
* bring g(Lm) to the left to cancel it with g(Um)
* and use rewrite rule for metric tensor eta
*
repeat;
  identify g(Um) * g(Lm) = N;
  identify g(i?) * g(Lm)= - g(Lm) * g(i) + 2*eta(i,Lm);
  identify g(i?U[k]) * eta(?a, j?L[k]) = g(?a);
endrepeat;
*
* bring product of gamma matrices in standard order
*
repeat;
  disorder g(i?U) * g(j?U)= - g(j) * g(i) + 2*eta(i,j);
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

