*******************************************************************************
* Example to show how to manipulate products and properties of Pauli matrices *
* Usage: In terminal type                                                     *
*        form PauliMatrices.frm                                               *
* Author: Fernando Quinonez                                                   *
*******************************************************************************

* DECLARATIONS
* change default dimension of objects to 3
Dimension 3;
Function s;
Index k;

* DEFINITIONS
Local [s(1)*s(2)] = i_*e_(1,2,3)*e_(1,2,k)*s(k);
Local [s(1)*s(3)] = i_*e_(1,2,3)*e_(1,3,k)*s(k);
Local [s(2)*s(3)] = i_*e_(1,2,3)*e_(2,3,k)*s(k);

* EXECUTABLE STATEMENTS
contract;

* OUTPUT CONTROL
Print;

* INSTRUCTION
.sort

* DEFINITIONS
Local F = ( s(1)*s(2) + s(1) + s(2) + s(3) )^4;

* EXECUTABLE STATEMENTS
repeat;
id s(2)*s(1) = -s(1)*s(2);
id s(3)*s(1) = -s(1)*s(3);
id s(3)*s(2) = -s(2)*s(3);
id s(1)*s(2) = [s(1)*s(2)];
id s(1)*s(3) = [s(1)*s(3)];
id s(2)*s(3) = [s(2)*s(3)];
id s(1)^2 = 1;
id s(2)^2 = 1;
id s(3)^2 = 1;
endrepeat;

* OUTPUT CONTROL
Print F;

* INSTRUCTION
.end


