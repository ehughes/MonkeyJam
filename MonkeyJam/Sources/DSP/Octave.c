/*
 * Octave.c
 *
 *  Created on: Mar 3, 2014
 *      Author: emh203
 */

#include "arm_math.h"
#include "Octave.h"



void InitOctave(OctaveControl *OC,q31_t HighThreshold, q31_t LowThreshold)
{
    OC->SquareTracker[0] = 0x80000000; //Start at -1
    OC->SquareTracker[1] = 0x80000000; //Start at -1
    OC->Modulation[0] = 0x80000000; //Start at -1
    OC->Modulation[1] = 0x80000000; //Start at -1
    OC->HighThresh = HighThreshold;
    OC->LowThresh = LowThreshold;
}

void Octave(q31_t In, q31_t *Out,OctaveControl *OC)
{
    OC->SquareTracker[1] =  OC->SquareTracker[0];

    if(OC->SquareTracker[0] < 0)
        {
            if(In > OC->HighThresh)
                {
                    OC->SquareTracker[0] = 0x7FFFFFFF;
                }
        }
    else
        {
            if(In < OC->LowThresh)
                {
                    OC->SquareTracker[0] =  0x80000000;
                }
        }

    OC->Modulation[1] = OC->Modulation[0];

    if(OC->SquareTracker[0] > 0 && OC->SquareTracker[1] < 0)
        {
            if(OC->Modulation[0] == 0x7FFFFFFF)
                {
                    OC->Modulation[0] =  0x80000000; //make it -1
                }
            else
                {
                    OC->Modulation[0] = 0x7FFFFFFF; //make +1
                }
        }

    if(OC->Modulation[0] > 0 && OC->Modulation[1] < 0)
        {
            if(OC->Modulation[2] == 0x7FFFFFFF)
                {
                    OC->Modulation[2] =  0x80000000; //make it -1
                }
            else
                {
                    OC->Modulation[2] = 0x7FFFFFFF; //make +1
                }
        }

    //Apply our 1/2 frequency modulation to the input waveform.
    *Out =  __SSAT(OC->Modulation[2],24);
    //*Out =  ((q63_t)OC->Modulation[2] * In)>>30;
}
