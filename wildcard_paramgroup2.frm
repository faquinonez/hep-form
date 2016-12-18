Symbols w,x,y,z;
Indices W,X,Y,Z;
CFunction F;
Tensor S(symmetric), C(cyclic);
Local expr = F(x,y,z) + S(X,Y,Z) + C(X,Y,Z);
identify F(?a,w?,?b) = F(w,0,?a,0,?b);
identify S(?a,W?,?b) = S(W,0,?a,0,?b);
identify C(?a,W?,?b) = C(W,0,?a,0,?b);
Print;
.end
