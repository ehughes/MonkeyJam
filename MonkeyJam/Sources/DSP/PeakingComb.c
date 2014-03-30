
#include "derivative.h" /* include peripheral declarations */
#include "arm_math.h"
#include "PeakingComb.h"

void InitPeakingComb(PeakingComb *PC,q31_t *History,int16_t HistoryLength, uint8_t Type)
{
    uint32_t i;
    PC->OutputHistory = History;
    PC->HistoryLength = HistoryLength;
    PC->PreviousInput = 0;
    PC->CurrentIndex = 0;

    for(i=0; i<HistoryLength; i++)
        {
            PC->OutputHistory[i] = 0;
        }

    PC->FeedbackTap = -1;
    PC->FeedbackAmplitude = 0;
    PC->CombType = Type;
}

void CombTheDesert(q31_t In, q31_t *Out,PeakingComb *PC)
{
    int16_t Idx =0;
    q63_t Acc = 0;
    //get the feedback Value;
    Idx = PC->CurrentIndex + PC->FeedbackTap;

    if(Idx<0)
        {
            Idx += PC->HistoryLength;
        }

    if(PC->CombType == COMB_TYPE_PEAKING)
        {
            // Compute the Feedforward part.  Simple 2 element LPF
            Acc += In;// + PC->PreviousInput;
            //	Acc >>= 1;
            //Compute the Feedback  part
            Acc += ((q63_t)PC->OutputHistory[Idx]  * PC->FeedbackAmplitude)>>31;
            PC->OutputHistory[PC->CurrentIndex] = (q31_t)Acc;
            *Out = (q31_t)Acc;
            PC->CurrentIndex++;

            if(PC->CurrentIndex == PC->HistoryLength)
                PC->CurrentIndex = 0;

            PC->PreviousInput = In;
        }
    else
        {
            Acc += In;
            Acc += ((q63_t)PC->OutputHistory[Idx]  * PC->FeedbackAmplitude)>>31;
            PC->OutputHistory[PC->CurrentIndex] = (q31_t)In;
            *Out = (q31_t)Acc;
            PC->CurrentIndex++;

            if(PC->CurrentIndex == PC->HistoryLength)
                PC->CurrentIndex = 0;

            PC->PreviousInput = In;
        }
}

