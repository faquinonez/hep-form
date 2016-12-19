* e+ e- -> mu+ mu-

Vector k1, k2, p1, p2;
Symbol s, t, u, e;
Index mu, nu, rho, sigma;
*
Local M2 =
* electron line
e^2 * g_(1, k1, rho, k2, sigma) *
* photon propagator
d_(rho,mu) * d_(sigma,nu) / s^2 *
* muon spin line
e^2 * g_(2, p1, mu, p2, nu)
;

Trace4,1;
Trace4,2;
Bracket e,s;
Print;
.sort

*
identify k1.k2 = s/2;

identify p1.p2 = s/2;
identify k1.p1 = -t/2;
identify k2.p2 = -t/2;
identify k1.p2 = -u/2;
identify k2.p1 = -u/2;
Bracket e,s;
Print;
.end

