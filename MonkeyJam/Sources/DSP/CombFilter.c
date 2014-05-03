
#include "derivative.h" /* include peripheral declarations */
#include "arm_math.h"
#include "CombFilter.h"

void InitCombFilter(CombFilter *PC,q31_t *History,int16_t HistoryLength, uint8_t Type)
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


int16_t Idx =0;

void CombTheDesert(q31_t In, q31_t *Out,CombFilter *PC)
{
  
    q63_t Acc = 0;
    q31_t i = In;
    //get the feedback Value;
 
        	Idx = PC->CurrentIndex + PC->FeedbackTap;  //remember, feedback tap is negative

        	if(Idx<0)
             {
                 Idx += PC->HistoryLength;
             }


            Acc = In;
            Acc += ((q63_t)(PC->OutputHistory[Idx])  * PC->FeedbackAmplitude)>>31;
         
    	    	    
    		*Out =  (q31_t)Acc;
                 
             PC->CurrentIndex++;

             if(PC->CurrentIndex == (PC->HistoryLength))
                  PC->CurrentIndex = 0;
              
    
    if(PC->CombType == COMB_TYPE_PEAKING)
        {
    	PC->OutputHistory[PC->CurrentIndex] = Acc;
        }
    else
        {
    	   PC->OutputHistory[PC->CurrentIndex] = i;
        }

      
     

}

