Tensor g,R,h;
AutoDeclare Index U,L;
Index i,j,k,l,m;
Set UL: Ui, Li, Uj, Lj, Uk, Lk, Ul, Ll;
Set LU: Li, Ui, Lj, Uj, Lk, Uk, Ll, Ul;
Symbol n;
*
Local T1 = g(Li, Uj) * R(Lj, Lk);
Local T2 = g(Ui, Uj) * R(Li, Lk, Lj, Ll);
Local T3 = g(Ui, Lj) * R(Li, Uj);
Local T4 = g(Ui, Lj) * g(Uj, Li);
*
repeat;
  identify g(?a, i?UL[n], ?b) * h?(?c, j?LU[n], ?d) = h(?a, ?b, ?c, ?d);
  identify h?(?a, i?UL[n], ?b, j?LU[n], ?c) = h(?a, ?b, ?c);
endrepeat;
*
Print;
.end
