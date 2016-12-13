#commentchar *
* This is a commented line

Symbol t,x,y,z;
Index mu=4, nu=4;
CTensor g;

* Local trace = sum_( mu, 0, 3, ( sum_( nu, 0, 3, gm(mu,nu) * gm(mu,nu) ) );
Local trace = g(mu,nu) * g(nu,mu);

contract;

*repeat;
*id g(0,0) = -1;
*id g(1,1) = 1;
*id g(2,2) = 1;
*id g(3,3) = 1;
*
*id g(0,1) = 0;
*id g(0,2) = 0;
*id g(0,3) = 0;
*id g(1,2) = 0;
*id g(1,3) = 0;
*id g(1,0) = 0;
*id g(2,0) = 0;
*id g(2,1) = 0;
*id g(2,3) = 0;
*id g(3,0) = 0;
*id g(3,1) = 0;
*id g(3,2) = 0;
*endrepeat;

Print;
.end

