# Normally prefer a full fresh compile:

  rm *.o
  rm iri

# Compile to .o C language interface

gcc -c iri_C_interface.c

# Compile to .o fortran object files using -c

  f77 -c iriflip.for
  f77 -c cira.for
  f77 -c igrf.for
  f77 -c iridreg.for
  f77 -c iritec.for
  f77 -c irifun.for
  f77 -c irisub.for
# f77 -c iritest.for

# The final C interface to Fortran IRI:

gfortran -o iri_C_interface *.o -lm
