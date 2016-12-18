Vector x,y;
Tensor g,a,b;
Index i,j,k;


Local [y(k)] = b(k,x);

Local [T(i)] = g(i,j) * a(j,k) * [y(k)];

* define b as the inverse of a
identify a(i?,k?) * b(k?,j?) = d_(i,j);

Print [T(i)];
.end
