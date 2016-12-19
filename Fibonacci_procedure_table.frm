#define MAXTAB "10"

Table Ftbl(1:'MAXTAB');

Fill Ftbl(1) = 1;
Fill Ftbl(2) = 1;

#do i = 3, 'MAXTAB'
  Fill Ftbl('i') = Ftbl({'i'-1}) + Ftbl({'i'-2});
#enddo


#procedure fibonacci(F,n)
*
* Procedure to compute Fibonacci numbers
* Input: F: the function that represents the number
* It should have one argument, viz. n, which is
* for internal use and must be declared as a symbol
* before the procedure call.
*
identify 'F'(?x) = Ftbl(?x);
* replace F by Ftbl
repeat;
  identify Ftbl('n'?) = Ftbl('n'-1) + Ftbl('n'-2);
endrepeat;
#endprocedure



Symbol n;
CFunction F;
On Statistics;

Local F19 = F(19);

#call fibonacci(F,n)

Print;
.end
