*******************************************************************************
* Example to show properties of FORM functions                                *
* Usage: In terminal type                                                     *
*        form FunctionProperties.frm                                          *
* Author: Fernando Quinonez                                                   *
*******************************************************************************

Symbols x1,x2,x3,x4,x5;
Functions S(symmetric), A(antisymmetric), C(cyclic), R(rcyclic);
Local [A(x2,x3,x4,x1,x5)] = A(x2,x3,x4,x1,x5);
Local [C(x2,x3,x4,x1,x5)] = C(x2,x3,x4,x1,x5);
Local [R(x2,x3,x4,x1,x5)] = R(x2,x3,x4,x1,x5);
Local [S(x2,x3,x4,x1,x5)] = S(x2,x3,x4,x1,x5);
Print;
.end

