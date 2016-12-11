# hep-form
GET /repos/:owner/:repo/languages

The FORM software mainpage is at NIKHEF
[FORM](http://www.nikhef.nl/~form/)
To get FORM please go to Vermaseren github account on repo *form*
[GITHUBFORM](https://github.com/vermaseren/form)
and follow the instructions they give you. Alternatively, you can go to another repo of myself
with instructions for ubuntu 16.04
[installHEP](http://github.com/faquinonez/installHEP#install-formFORM)

Here is a piece of code called `sample.frm`
```fortran
#commentchar !

! Declare a and b as algebraic symbols 
Symbol a,b;

! Define local expresion [(a+b)^2] to be manipulated
Local [(a+b)^2] = (a+b)^2;

! Print all expressions on buffer
Print;

! finalize program
.end
```
and how it should be executed on terminal
```bash
form sample.frm
```
The output will be something like:
```
M 4.1 (Aug 30 2016, v4.1-20131025-243-g320a477) 64-bits  Run: Sun Dec 11 07:53:53 2016
    #commentchar !
    
    ! Declare a and b as algebraic symbols
    Symbol a,b;
    
    ! Define local expresion [(a+b)^2] to be manipulated
    Local [(a+b)^2] = (a+b)^2;
    
    ! Print all expressions on buffer
    Print;
    
    ! finalize program
    .end

Time =       0.00 sec    Generated terms =          3
       [(a+b)^2]         Terms in output =          3
                         Bytes used      =        108

   [(a+b)^2] =
      b^2 + 2*a*b + a^2;

  0.00 sec out of 0.00 sec
```

## List of examples quite used in high energy physics symbolic calculations.

### Lorentz Transformations.
### Hyperbolic Representation of the Lorentz Transformations.
### Metric Examples.
### Lowering and Rising Indexes.
### The Electromagnetic Tensor.
### Christoffel Symbols.
### The Riemann Tensor.
### The Ricci Tensor and Scalar.
### The Einstein Tensor.
