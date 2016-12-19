#define MAX "2"
#define max "2"

AutoDeclare Symbol x;

#do i = 1, 'MAX'
  #do j = 1, 'max'
    Local F'i''j' = x^'i''j';
  #enddo
#enddo

Print;
.end
