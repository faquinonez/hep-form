*******************************************************************************
* Show how to do searches using patterns or wildcards.                        *
* The syntax is variable?                                                     *
* Usage: In terminal type                                                     *
*        form wildcards.frm                                                   *
* Author: Fernando Quinonez                                                   *
*******************************************************************************

Symbols x,y,z,n;
Local F = x^2 + y^3 + 1;
id x? = z;
Print;
.sort


id z^n? = x;
Print;
.sort


Local G = F + y^2 + 1;
id x?^n? = z;
Print G;
.end



