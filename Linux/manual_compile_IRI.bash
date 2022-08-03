# Normally prefer a full fresh compile:

rm *.o
rm iri

# Compile to .o object files using -c

f77 -c iriflip.for
f77 -c cira.for
f77 -c igrf.for
f77 -c iridreg.for
f77 -c iritec.for
f77 -c irifun.for
f77 -c irisub.for
f77 -c iritest.for

# The final Fortran iri executable:

f77 *.o -o iri
