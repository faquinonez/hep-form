#procedure fibonacci(F,n)
*
* Procedure to compute Fibonacci numbers
* Input: F: the function that represents the number
* It should have one argument, viz. n, which is
* for internal use and must be declared as a symbol
* before the procedure call.
*
repeat;
  id 'F'(1) = 1;
  id 'F'(2) = 1;
  id 'F'('n'?) = 'F'('n'-1) + 'F'('n'-2);
endrepeat;

#endprocedure

Symbol n;
CFunction F;
On Statistics;

Local F19 = F(19);

#call fibonacci(F,n)

Print;
.end
