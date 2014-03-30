/*
 * Octave.h
 *
 *  Created on: Mar 3, 2014
 *      Author: emh203
 */

#ifndef OCTAVE_H_
#define OCTAVE_H_

#include "arm_math.h"

typedef struct
{
    q31_t SquareTracker[1]; //Square tracker
    q31_t Modulation[3];
    q31_t Out;
    q31_t HighThresh; // Threshold to cross when switching high
    q31_t LowThresh; //Threshold to cross when switching low

} OctaveControl;

void Octave(q31_t In, q31_t *Out,OctaveControl *OC);
void InitOctave(OctaveControl *OC,q31_t HighThreshold, q31_t LowThreshold);



#endif /* OCTAVE_H_ */
