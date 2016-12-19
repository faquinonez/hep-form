* e+ e- -> tau+ tau- ->  u dbar nu_tau  ubar d nubar_tau 
Vectors p1,...,p8,Q,q1,q2;
Indices m1,m2,m3,n1,n2,n3;
Symbol emass,tmass,mass4,mass5,mass7,mass8;
On Statistics;
Local F =
*
* The incoming e+ e- pair. momenta p2 and p1
*
(g_(1,p2)-emass)*g_(1,m1) * 
(g_(1,p1)+emass)*g_(1,n1) *
*
* The tau line. tau- is q1, tau+ is q2.
*
g_(2,p3)*g_(2,m2)*g7_(2) *
(g_(2,q1)+tmass)*g_(2,m1) *
(-g_(2,q2)+tmass)*g_(2,m3) * g7_(2)*g_(2,p6) *
g_(2,n3)*g7_(2)*(-g_(2,q2)+tmass)*g_(2,n1) *
(g_(2,q1)+tmass)*g_(2,n2)*g7_(2) *
*
* The u d-bar pair. p4 is u, p5 is d-bar.
*
(g_(3,p4)+mass4)*g_(3,m2)*g7_(3) *
(g_(3,p5)-mass5)*g_(3,n2)*g7_(3) *

*The d u-bar pair. p7 is d, p8 is u-bar.
*
(g_(4,p7)+mass7)*g_(4,m3)*g7_(4) *
(g_(4,p8)-mass8)*g_(4,n3)*g7_(4);

trace4,1;
trace4,2;
trace4,3;
trace4,4;
contract;
print +s;
.end
