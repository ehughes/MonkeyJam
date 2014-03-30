/*
 * IIR.h
 *
 *  Created on: Mar 1, 2014
 *      Author: emh203
 */

#ifndef IIR_H_
#define IIR_H_

typedef struct
{
    q31_t	b[3];   //Feedforward
    q31_t	a[2];	//Feedback
    int8_t PostShift;  //Post multiplication
} q31_t_IIR_Coefficients;

typedef struct
{
    q31_t	Xn1;    //Previous Input
    q31_t	Xn2;	//Previous Previous Input
    q63_t	Yn1;    //Previous Output.  Note that we will store the output State in a very High precision form
    q63_t	Yn2;	//Previous Previous Output. Note that we will store the output State in a very High precision form

} q31_t_IIR_State;

typedef struct
{
    q31_t_IIR_Coefficients Coef;
    q31_t_IIR_State		   State;

    q31_t_IIR_Coefficients Shadow_Coef; //Note will will NOT use a pointer here.  This will ensure the faster implementation for copying (no need to deference more than we need!)

    uint8_t	Update ; //This will be set high to flag the processing routine to safely copy in the new Coefficients

} q31_t_IIR;
#endif /* IIR_H_ */


void Init_q31_t_IIR(q31_t_IIR *MyIIR);

void Compute_q31_t_IIR(q31_t_IIR *MyIIR,q31_t Input,q31_t *Output);


#define BIQUAD_LOW_PASS_FILTER													0
#define BIQUAD_HIGH_PASS_FILTER 												1
#define BIQUAD_BAND_PASS_FILTER_CONSTANT_SKIRT_GAIN_PEAKGAIN_Q					2
#define BIQUAD_BAND_PASS_FILTER_CONSTANT_0_DB_PEAK_GAIN						3
#define BIQUAD_NOTCH_FILTER													4
#define BIQUAD_ALL_PASS_FILTER													5
#define BIQUAD_PEAKING_EQ														6
#define BIQUAD_LOW_SHELF														7
#define BIQUAD_HIGH_SHELF														8

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
                               );

