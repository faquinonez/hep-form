*******************************************************************************
* Manipulation of recurrence formula for Fibonacci numbers                    *
* F(n) = F(n-1) + F(n-2); with F(1) = F(2) = 1.                               *
* Usage: In terminal type                                                     *
*        form fibonaccirepeatdummy.frm                                        *
* Author: Fernando Quinonez                                                   *
*******************************************************************************
Symbols last, secondlast, dummy;
Function F;
On statistics;
Local Fibonacci19 = F(1,1) * dummy^17;

* We tagged the expression with dummy^17 and use a replacement rule that 
* lowers the power of dummy by one. The repetition stops when no power of 
* dummy is left. This trick of tagging an expression by a dummy variable to 
* control repetition or to apply certain operations from left to right or vice
* versa in the expression is often used in FORM programs.
repeat;
  id F(last?, secondlast?) * dummy = F(last + secondlast, last);
endrepeat;

id F(last?, secondlast?) = last;

Print;
.end
