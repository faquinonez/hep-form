Functions g,R,L,U;
Indices i,j,k,l,m,n,low,up;
Local T1 = g(L(i),U(j)) * R(L(j),L(k));
Local T2 = g(U(i),U(j)) * R(L(i),L(k),L(j),L(l));
*
* denest functions
*
repeat;
  identify R?(?a,L(i?),?b) = R(?a,i,low,?b);
  identify R?(?a,U(i?),?b) = R(?a,i,up,?b);
endrepeat;
*
* apply rules
*
identify g(i?,low,j?,up) * R?(?a,j?,low,?b) = R(?a,i,low,?b);
identify g(i?, up,j?,up) * R?(?a,i?,low,?b,j?,low,?c) = R(?a,?b,?c);
identify g(i?, up,j?,up) * R?(?a,j?,low,?b,i?,low,?c) = R(?a,?b,?c);
*
* back to original notation
*
repeat;
  identify R?(?a,i?,low,?b) = R(?a,L(i),?b);
  identify R?(?a,i?, up,?b) = R(?a,L(i),?b);
endrepeat;
*
* Print the results
*
Print;
.end
