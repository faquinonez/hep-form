Symbol x;

Local F19 = x^18;

#do i = 1, 1
  identify x^2 = x+1;
  if (count(x,1)>1) redefine i "0";
  .sort
#enddo

identify x = 1;

Print;
.end
