#include "arm_math.h"
#include "IIR.h"
#include "math.h"
//an Fixed Point IIR filter implementation for ARM Cortex M4.... i like it better than the libraries provided.

//Computes IIR filter in Direct Form I
//
//
//y[n] = (b0/a0)*x[n] + (b1/a0)*x[n-1] + (b2/a0)*x[n-2]
//                     - (a1/a0)*y[n-1] - (a2/a0)*y[n-2]            (Eq 4)
//
//The Data struct for the filter is design such that the coefficients can be swapped
//in an atomic way.   I.E.  If a IRQ process is continuously computing the filter
//and a foreground process wants to change the parameters,   It can modify them in a linked Coeff
//Struct and then flag the processing routine to swap the coefficients in a safe manner
//



//Great Reference.... The Bible for Audio BiQuad design.

//http://www.musicdsp.org/files/Audio-EQ-Cookbook.txt





void Init_q31_t_IIR(q31_t_IIR *MyIIR)
{
    MyIIR->Update = 0;
    MyIIR->State.Yn1 = 0;
    MyIIR->State.Yn2 = 0;
}

void Compute_q31_t_IIR(q31_t_IIR *MyIIR,q31_t Input,q31_t *Output)
{
    q63_t acc = 0;
    /* acc =  b0 * x[n] + b1 * x[n-1] + b2 * x[n-2] + a1 * y[n-1] + a2 * y[n-2] */
    /* acc =  b0 * x[n] */
    acc = (q63_t) Input * MyIIR->Coef.b[0];
    /* acc +=  b1 * x[n-1] */
    acc += (q63_t) MyIIR->State.Xn1 * MyIIR->Coef.b[1];
    /* Arc +=  b[2] * x[n-2] */
    acc += (q63_t) MyIIR->State.Xn2 * MyIIR->Coef.b[2];
    /* acc +=  a1 * y[n-1] */
    acc += mult32x64(MyIIR->State.Yn1 , MyIIR->Coef.a[0]);
    /* acc +=  a2 * y[n-2] */
    acc += mult32x64(MyIIR->State.Yn2 , MyIIR->Coef.a[1]);
    acc = acc << MyIIR->Coef.PostShift; //DO the post multiply!
    //Store the previous outputs in High precision form
    MyIIR->State.Yn2 =  MyIIR->State.Yn1;
    MyIIR->State.Yn1 =  acc;
    MyIIR->State.Xn2 =  MyIIR->State.Xn1;
    MyIIR->State.Xn1 =  Input;
    *Output = acc>>31;
}


double GetPeak(double *Values,uint8_t Size);


double A;
double w0;
double alpha;

double coef[6];

#define a0 coef[0]
#define a1 coef[1]
#define a2 coef[2]
#define b0 coef[3]
#define b1 coef[4]
#define b2 coef[5]

void DesignAudioBiquadIIR_q31_t(q31_t_IIR_Coefficients *C,// Pointer to the IIR Structure
                                uint8_t FilterType,
                                float Fs, //System Sample Rate
                                float f0, //("wherever it's happenin', man."  Center Frequency or
                                //Corner Frequency, or shelf midpoint frequency, depending
                                //on which filter type.  The "significant frequency".)*/
                                float Q,//(the EE kind of definition, except for peakingEQ in which A*Q is
                                // the classic EE Q.  That adjustment in definition was made so that
                                // a boost of N dB followed by a cut of N dB for identical Q and
                                // f0/Fs results in a precisely flat unity gain filter or "wire".)*/
                                float dBgain// (used only for peaking and shelving filters)
                               )
{
    A = sqrt(pow(10,(dBgain/40)));

    if(Fs == 0) Fs = 1000;

    if(Q == 0) Q = 1.0;

    w0 = 2.0*3.141592654*f0/Fs;
    alpha = sin(w0)/(2.0 * Q);

    switch(FilterType)
        {
            default:
            case BIQUAD_LOW_PASS_FILTER	:
                b0 =  (1 - cos(w0))/2;
                b1 =   1 - cos(w0);
                b2 =  (1 - cos(w0))/2;
                a0 =   1 + alpha;
                a1 =  -2*cos(w0);
                a2 =   1 - alpha;
                break;

            case   BIQUAD_HIGH_PASS_FILTER 	:
                b0 =  (1 + cos(w0))/2;
                b1 = -(1 + cos(w0));
                b2 =  (1 + cos(w0))/2;
                a0 =   1 + alpha;
                a1 =  -2*cos(w0);
                a2 =   1 - alpha;
                break;

            case         BIQUAD_BAND_PASS_FILTER_CONSTANT_SKIRT_GAIN_PEAKGAIN_Q	:
                b0 =   Q*alpha;
                b1 =   0;
                b2 =  -Q*alpha;
                a0 =   1 + alpha;
                a1 =  -2*cos(w0);
                a2 =   1 - alpha;
                break;

            case            BIQUAD_BAND_PASS_FILTER_CONSTANT_0_DB_PEAK_GAIN:
                b0 =   alpha;
                b1 =   0;
                b2 =  -alpha;
                a0 =   1 + alpha;
                a1 =  -2*cos(w0);
                a2 =   1 - alpha;
                break;

            case             BIQUAD_NOTCH_FILTER:
                b0 =   1;
                b1 =  -2*cos(w0);
                b2 =   1;
                a0 =   1 + alpha;
                a1 =  -2*cos(w0);
                a2 =   1 - alpha;
                break;

            case             BIQUAD_ALL_PASS_FILTER:
                b0 =   1 - alpha;
                b1 =  -2*cos(w0);
                b2 =   1 + alpha;
                a0 =   1 + alpha;
                a1 =  -2*cos(w0);
                a2 =   1 - alpha;
                break;

            case            BIQUAD_PEAKING_EQ:
                b0 =   1 + alpha*A;
                b1 =  -2*cos(w0);
                b2 =   1 - alpha*A;
                a0 =   1 + alpha/A;
                a1 =  -2*cos(w0);
                a2 =   1 - alpha/A;
                break;

            case            BIQUAD_LOW_SHELF:
                b0 =    A*( (A+1.0) - (A-1.0)*cos(w0) + 2.0*sqrt(A)*alpha );
                b1 =  2.0*A*( (A-1.0) - (A+1.0)*cos(w0)                   );
                b2 =    A*( (A+1.0) - (A-1.0)*cos(w0) - 2.0*sqrt(A)*alpha );
                a0 =        (A+1.0) + (A-1.0)*cos(w0) + 2.0*sqrt(A)*alpha;
                a1 =   -2.0*( (A-1.0) + (A+1.0)*cos(w0)                   );
                a2 =        (A+1.0) + (A-1.0)*cos(w0) - 2.0*sqrt(A)*alpha;
                break;

            case           BIQUAD_HIGH_SHELF:
                b0 =    A*( (A+1) + (A-1)*cos(w0) + 2*sqrt(A)*alpha );
                b1 = -2*A*( (A-1) + (A+1)*cos(w0)                   );
                b2 =    A*( (A+1) + (A-1)*cos(w0) - 2*sqrt(A)*alpha );
                a0 =        (A+1) - (A-1)*cos(w0) + 2*sqrt(A)*alpha;
                a1 =    2*( (A-1) - (A+1)*cos(w0)                   );
                a2 =        (A+1) - (A-1)*cos(w0) - 2*sqrt(A)*alpha;
                break;
        }

    /*
    The most straight forward implementation would be the "Direct Form 1"
    (Eq 2):

        y[n] = (b0/a0)*x[n] + (b1/a0)*x[n-1] + (b2/a0)*x[n-2]
                            - (a1/a0)*y[n-1] - (a2/a0)*y[n-2]            (Eq 4)

    but to make things easier on the chip,  we will do all adds:

    	    y[n] = (b0/a0)*x[n] + (b1/a0)*x[n-1] + (b2/a0)*x[n-2]
                            + (a1/a0)*y[n-1] + (a2/a0)*y[n-2]            (Eq 4)

                            THis means that 2 feedback coef. have to be inverted

      */
    b0 = b0/a0;
    b1 = b1/a0;
    b2 = b2/a0;
    a1 = a1/a0;
    a2 = a2/a0;
    a0 = 1.0;
    a1 = a1 * -1.0;
    a2 = a2 * -1.0;
    C->PostShift = 0;

    while(GetPeak(&coef[0],6) > 1.0)
        {
            C->PostShift++;
            b0 = b0/(float)(1<<C->PostShift);
            b1 = b1/(float)(1<<C->PostShift);
            b2 = b2/(float)(1<<C->PostShift);
            a1 = a1/(float)(1<<C->PostShift);
            a2 = a2/(float)(1<<C->PostShift);
            a0 = a0/(float)(1<<C->PostShift);
        }

    C->a[0] = (q31_t)(0x7FFFFFFF * a1); //a[0] in the IIR struct is actually a1
    C->a[1] = (q31_t)(0x7FFFFFFF * a2); //a[1] in the IIR struct is actually a2
    C->b[0] = (q31_t)(0x7FFFFFFF * b0);
    C->b[1] = (q31_t)(0x7FFFFFFF * b1);
    C->b[2] = (q31_t)(0x7FFFFFFF * b2);
    return;
}



double GetPeak(double *Values,uint8_t Size)
{
    double Peak = 0;
    double Temp = 0;
    uint8_t i;

    for(i=0; i<Size; i++)
        {
            if(Values[i]<0)
                Temp= Values[i]*-1;
            else
                Temp = Values[i];

            if(Temp>Peak)
                Peak = Temp;
        }

    return Peak;
}
