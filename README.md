# hep-form
The FORM software mainpage is at NIKHEF
[FORM](http://www.nikhef.nl/~form/)
To get FORM please go to Vermaseren github account on repo *form*
[GITHUBFORM](https://github.com/vermaseren/form)
and follow the instructions they give you. Alternatively, you can go to another repo of myself
with instructions for ubuntu 16.04
[installHEP](http://github.com/faquinonez/installHEP#install-formFORM)

Here is a piece of code called `sample.frm`
<code>
<p style="color rgb(0,255,0)"> * Declare a and b as algebraic symbols </p><br>
<p>Symbol</p> a,b;<br>

<p style="color rgb(0,255,0)"> * Define local expresion [(a+b)^2] to be manipulated </p>
<p> Local</p> [(a+b)^2] = (a+b)^2;

<p style="color rgb(0,255,0)"> * Print all expressions on buffer </p>
<p> Print;</p>

<p style="color rgb(0,255,0)"> * finalize program</p>
<p> .end</p>
</code>
and how it should be executed on terminal
```bash
form sample.frm
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
