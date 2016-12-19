#define MAX "7"
Local F1 = 1;
Local F2 = 1;
#do n = 3, 'MAX'
  .sort
  Drop F{'n'-2};
  Skip F{'n'-1};
  Local F'n' = F{'n'-1} + F{'n'-2};
  Print;
#enddo
