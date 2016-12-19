#define max1 "2"
#define max2 "3"

AutoDeclare Symbol x;

#do i = 1, 2
  #do j = 1, `max`i''
    Local F'i''j' = x^'i''j';
  #enddo
#enddo

Print;
.end
