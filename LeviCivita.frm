*******************************************************************************
* Example to show how Levi-Civita symbols are manipilated by FORM             *
* Usage: In terminal type                                                     *
*        form LeviCivita.frm                                                  *
* Author: Fernando Quinonez                                                   *
*******************************************************************************

* DECLARATIONS

* change default dimension of objects to 3
Dimension 3;

* declare objects of class Index
Index i,j,k,p,q,r;


* DEFINITIONS

Local f0 = e_(i,j,k) * e_(p,q,r);
Local f1 = e_(i,j,k) * e_(p,q,k);
Local f2 = e_(i,j,k) * e_(p,j,k);
Local f3 = e_(i,j,k) * e_(i,j,k);


* EXECUTABLE STATEMENTS

* contract does contractions of Levi-Civita's symbols 
* into Kronecker's delta products
contract; 


* OUTPUT CONTROL

* +s does the effect to print each term in a separate line 
Print +s;


* INSTRUCTION
.end
