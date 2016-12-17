*******************************************************************************
* Example to show how to manipulate products and properties of Pauli matrices *
* Usage: In terminal type                                                     *
*        form DerivativesAsCommutator.frm                                     *
* Author: Fernando Quinonez                                                   *
*******************************************************************************


* non commutative functions
Symbol n;
Function x,D;
Function sinx, cosx;


Local F = D^3 * x^3 * sinx^2 * cosx;

* define commutators
repeat;
identify D*x = 1 + x*D;
identify D*sinx = cosx + sinx*D;
identify D*cosx = -sinx + cosx*D;
endrepeat;

* when D is the most right product, the term is zero
identify D = 0;

* factorize the 'non commutative functions' sinx and cosx
identify sinx*sinx*sinx = sinx^3;
identify sinx*sinx*cosx = sinx^2*cosx;
identify sinx*cosx*sinx = sinx^2*cosx;
identify cosx*sinx*sinx = sinx^2*cosx;
identify sinx*cosx*cosx = sinx*cosx^2;
identify cosx*sinx*cosx = sinx*cosx^2;
identify cosx*cosx*sinx = sinx*cosx^2;
identify cosx*cosx*cosx = cosx^3;

AntiBracket x;
.sort;
Print;




.end;

