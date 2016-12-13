*******************************************************************************
* Example to show how to do substitutions with the id statement               *
* Usage: In terminal type                                                     *
*        form subs1.frm                                                       *
* Author: Fernando Quinonez                                                   *
*******************************************************************************

Symbol x;
Local expr = x + 1/x;

* id substitute one ocurrence of x with x+1
id x = x+1;

Print;
.sort

* id substitute one ocurrence of x with x+1
id x = x+1;
Print;
.end


