Symbols x,y,n;
CFunctions sin,cos,tan,g;
Functions [sin], [cos], [tan], [-sin], [1/cos^2], f, dx;
Set commuting: sin, cos, tan;
Set noncommuting: [sin], [cos], [tan];
Set derivative: [cos], [-sin], [1/cos^2];
*
Local expr = sin(x)*tan(x) + cos(x);
*
identify g?commuting?noncommuting(x) = g(x);

* multiply noncommutating operator dx from left
multiply left dx;

* the commutator 
* [dx,g[n]] = dx * g[n] - g[n] * dx 
*           = derivative[n]
* will help us to define the derivatives

repeat;
  identify dx*g?noncommuting[n](x) = derivative[n](x) + g(x)*dx;
  identify [-sin](x) = - [sin](x);
  identify [1/cos^2](x) = 1/[cos](x) * 1/[cos](x);
endrepeat;

identify dx = 0;
identify f?noncommuting?commuting(x) = f(x);
identify 1/f?noncommuting?commuting(x) = 1/f(x);
*
Print;
.end
