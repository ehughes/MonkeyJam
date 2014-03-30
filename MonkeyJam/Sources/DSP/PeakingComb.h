/*
 * PeakingComb.h
 *
 *  Created on: Mar 12, 2014
 *      Author: Eli
 */

#ifndef PEAKINGCOMB_H_
#define PEAKINGCOMB_H_


#define COMB_TYPE_PEAKING	1
#define COMB_TYPE_NULLING	0

typedef struct
{
    q31_t   *OutputHistory;
    q31_t	FeedbackAmplitude;
    q31_t	PreviousInput;
    int16_t HistoryLength;
    int16_t CurrentIndex;
    int16_t FeedbackTap; // Specifiy from -1 to -HistoryLength
    uint8_t CombType;

} PeakingComb;

void CombTheDesert(q31_t In, q31_t *Out,PeakingComb *PC);
void InitPeakingComb(PeakingComb *PC,q31_t *History,int16_t HistoryLength, uint8_t Type);

#endif /* PEAKINGCOMB_H_ */
