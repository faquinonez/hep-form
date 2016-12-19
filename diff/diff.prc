#procedure diff(x,dx)

identify g?commuting?noncommuting(x) = g(x);

multiply left dx;

repeat;
  identify dx*g?noncommuting[n](x) = derivative[n](x) + g(x)*dx;
  identify [-sin](x) = - [sin](x);
  identify [1/cos^2](x) = 1/[cos](x) * 1/[cos](x);
endrepeat;

identify dx = 0;
identify f?noncommuting?commuting(x) = f(x);
identify 1/f?noncommuting?commuting(x) = 1/f(x);

#endprocedure
