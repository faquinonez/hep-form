*******************************************************************************
* Example to show how to manipulate products and properties of Pauli matrices *
* Usage: In terminal type                                                     *
*        form Fibonaccisimple.frm                                             *
* Author: Fernando Quinonez                                                   *
*******************************************************************************

Symbols n;
Function F;

On statistics;

Local Fibonacci19 = F(19);

repeat;
  id F(1) = 1;
  id F(2) = 1;
  id F(n?) = F(n-1) + F(n-2);
endrepeat;

Print;
.end

