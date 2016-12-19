Index i,j,k;
Function T;
Local expr =
#do p = {1,i|2\,i|j,(k,k)}
  + T('p')
#enddo
;
Print;
.end
