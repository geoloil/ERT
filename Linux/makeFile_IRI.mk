allObjectFiles: iriflip.o cira.o igrf.o iridreg.o iritec.o irifun.o irisub.o iritest.o iri

iriflip.o: iriflip.for
	f77 -c iriflip.for

cira.o: cira.for
	f77 -c cira.for

igrf.o: igrf.for
	f77 -c igrf.for

iridreg.o: iridreg.for
	f77 -c iridreg.for

iritec.o: iritec.for
	f77 -c iritec.for

irifun.o: irifun.for
	f77 -c irifun.for

irisub.o: irisub.for
	f77 -c irisub.for

iritest.o: iritest.for
	f77 -c iritest.for

iri:
	f77 iriflip.o cira.o igrf.o iridreg.o iritec.o irifun.o irisub.o iritest.o -o iri
