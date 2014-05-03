/*
 * Overdrive.h
 *
 *  Created on: Mar 1, 2014
 *      Author: emh203
 */

#include "MathTables.h"

#ifndef OVERDRIVE_H_
#define OVERDRIVE_H_

inline q31_t HardOverdrive(q31_t In, q31_t OD_Level)
{
    uint32_t TableIndex;
    q31_t Out;
    Out = ((q63_t)In * OD_Level)>>26;
    //Saturate the output to 24 bits
    Out = __SSAT(Out,24);
    //We need the signal to be scaled up by 8 to drive the interpolation table (thighest 12 bits used as table index).
    Out <<= 8;
    //make the input span 0 - 0xFFFFFFFF.  Convert from 2's complement to Offset Binary
    TableIndex = (uint32_t)Out + (uint32_t)0x80000000;
    // Ram signal into Overdrive table
    Out = arm_linear_interp_q31((q31_t * )atan_24pi_q31_t,TableIndex,4096);
    return Out>>8; //We need to shift by 8 to get back to a value that fits in the lowest 24-bits
}





//OD_level will be scaled by 2 so we can gain the signal up to 2.0
inline q31_t SoftOverdrive(q31_t In, q31_t OD_Level)
{
    uint32_t TableIndex;
    q31_t Out;
    //Scale in input. to adjust gain into the overdrive table
    Out = ((q63_t)In * OD_Level)>>30;
    //Saturate the output for se are not beyonf 24 bits
    Out = __SSAT(Out,24);
    //We need the signal to be scaled up by 8 to drive the interpolation table (thighest 12 bits used as table index).
    Out <<= 8;
    //make the input span 0 - 0xFFFFFFFF.  Convert from 2's complement to Offset Binary
    TableIndex = (uint32_t)Out + (uint32_t)0x80000000;
    // Ram signal into Overdrive table
    Out = arm_linear_interp_q31((q31_t * )atan_4pi_q31_t,TableIndex,4096);
    return Out>>8; //We need to shift by 8 to get back to a value that fits in the lowest 24-bits
}


#endif /* OVERDRIVE_H_ */
