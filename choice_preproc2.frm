#define minustwothird "-2/3"
Local expr1a = 'minustwothird';

Local expr1b =
#if 'minustwothird' > -3/2
  1
#elseif 'minustwothird' == 0
  0
#else
  -1
#endif
;

Local expr1c =
#if {'minustwothird'} > -3/2
  1
#elseif {'minustwothird'} == 0
  0
#else
  -1
#endif
;

Local expr1d = {'minustwothird'};
Print;
.end
