#commentchar *
*******************************************************************************
* Show that ds^{\prime 2} = ds^{2}                                            *
* Lorentz Boost in z-direction                                                *
* c = 1                                                                       *
* Usage: In terminal type                                                     *
*        form IntervalSquared.frm                                             *
* Author: Fernando Quinonez                                                   *
*******************************************************************************

Dimension 4;
Symbol x,y,z,t,xp,yp,zp,tp,gamma,v;

Local [dsp2] = tp^2 - xp^2 - yp^2 - zp^ 2;
Local [ds2] = t^2 - x^2 - y^2 - z^ 2;


* Let's define the Lorentz Boost
* The frame O^{\prime} moving in the z direction with velocity v
* normalize to 1.
* O^{\prime} is also called the particle frame.
* O is also called the laboratory frame.
identify tp =    gamma*t - v*gamma*z;
identify zp = -v*gamma*t +   gamma*z;
identify xp = x;
identify yp = y;
identify gamma^2 * v^2 = gamma^2 - 1;

.sort;
Print +s;

.end

