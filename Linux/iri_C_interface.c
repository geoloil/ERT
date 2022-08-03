#include <stdio.h>
#include <stdlib.h>
#include <math.h>

/*             jmag   jf       alati     along     iyyyy  mmdd   iut    dhour  height    h_tec_max ivar   vbeg      vend      vstp      a                 b            */
void iri_web_ (int *, int[50], double *, double *, int *, int *, int *, int *, double *, int *,    int *, double *, double *, double *, double[20][1000], double[90]);

int main()
{
int    jmag;         /* Switch for 0:geographic coordinates, 1:geo-magnetic coordinates           */
int    jf[50];       /* A collection of up to 50 0-1 logical switches                             */
double alati;        /* Latitude                                                                  */
double along;        /* Longitude                                                                 */
int    iyyyy;        /* Year                                                                      */
int    mmdd;         /* Month and date                                                            */
int    iut;          /* Switch for time: 0=Universal Time, 1= Local Time                          */
int    dhour;        /* Hour                                                                      */
double height;       /* Height                                                                    */
int    h_tec_max;    /* Switch for TEC integration, use 0 for none, otherwise a real value        */
int    ivar;         /* Indicator variable for input: 1=altitude, 2=latitude, 3=longitude, etc.   */
double vbeg;         /* Begining of variable                                                      */
double vend;         /* End      of variable                                                      */
double vstp;         /* Step     of variable                                                      */
double a[20][1000];  /* Output 2D tables            , this output does not need to be initialized */
double b[100];       /* Aditional output parameters , this output does not need to be initialized */

jmag = 0;

for (int i=0; i<50; ++i) {jf [i] = 0;}  /* Default switches as 1-true */

jf [ 4-1] = 2;  /* B0,B1 - Bil-2000                             */
jf [ 5-1] = 2;  /* foF2 - CCIR                                  */
jf [ 6-1] = 2;  /* Ni - DS-1995 & DY-1985                       */
jf [21-1] = 2;  /* ion drift computed                           */
jf [23-1] = 2;  /* Te_tops (Bil-1985)                           */
jf [28-1] = 2;  /* spread-F probability                         */
jf [29-1] = 2;  /*IRI01-topside                                 */
jf [30-1] = 2;  /* IRI01-topside correction                     */
jf [31-1] = 3;  /* C indexes starts from 0, but Fortran from 1  */
jf [33-1] = 2;  /* Auroral boundary model                       */
jf [35-1] = 2;  /* E-peak auroral storm model                   */
jf [39-1] = 2;  /* hmF2 (M3000F2)                               */
jf [40-1] = 2;  /* hmF2 AMTB-model                              */
jf [47-1] = 2;  /* CGM computation on                           */

alati     = 37.8;
along     = -75.4;
iyyyy     = 2021;
mmdd      = 0303;  /* From Fortran source mm=303/3=3 OK, and dd=303-3*100=3 OK */
iut       = 1;
dhour     = 11.0;
height    = 100;
h_tec_max =    0;
ivar      =    1;
vbeg      =  100;
vend      = 2000;
vstp      =   50;

iri_web_ (&jmag, jf, &alati, &along, &iyyyy, &mmdd, &iut, &dhour, &height, &h_tec_max, &ivar, &vbeg, &vend, &vstp, a, b);

if (1==1)  /* Debug Switch */
   {
   printf ("%f\n", jmag);
   printf ("%f\n", alati);
   printf ("%f\n", along);
   printf ("%d\n", iyyyy);
   printf ("%d\n", mmdd);
   printf ("%d\n", iut);
   printf ("%d\n", dhour);
   printf ("%f\n", height);
   printf ("%d\n", h_tec_max);
   printf ("%d\n", ivar);
   printf ("%f\n", vbeg);
   printf ("%f\n", vend);
   printf ("%f\n", vstp);
   }

int index;

for (index = 0; index < 40;  ++index)
    {
    printf ("%f  %f  %f  %f  %f  %f\n", a[0][index], a[1][index], a[2][index], a[3][index], a[4][index], a[5][index]);
    }
}
