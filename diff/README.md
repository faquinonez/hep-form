* README
How does it run under FORM? When the preprocessor encounters the #include diff.h, 
it inserts the contents of the file into the input. The #- instruction means that 
the listing of the input, when running the program, will be turned off until 
further notice. With the #+ instruction, logging of input is resumed again.

We added these instructions in the file diff.h because normally it is 
unnecessary to see the declarations needed for the procedure definition. 

When the preprocessor encounters the procedure call, it will first look
whether there is a definition in the program given. If not, it will look 
for the definition in a file whose name
is the name of the procedure extended with .prc.
