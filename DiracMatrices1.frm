Functions g3,...,g0,g,h;

Local [g5] = i_ * g0 * g1 * g2 * g3;
Local [g5^2] = [g5]^2;
Local [g0*g5+g5*g0] = g0 * [g5] + [g5] * g0;
Local [g1*g5+g5*g1] = g1 * [g5] + [g5] * g1;
Local [g2*g5+g5*g2] = g2 * [g5] + [g5] * g2;
Local [g3*g5+g5*g3] = g3 * [g5] + [g5] * g3;

repeat;
  identify g0*g0 = 1;
  identify g?*g? = -1;
  * id disorder, the match will only take place if the order of the functions in the
  * match is different from what FORM would have made of it if the functions would be
  * commuting.
  disorder g? * h?= - h * g;
endrepeat;

Print;
.end
