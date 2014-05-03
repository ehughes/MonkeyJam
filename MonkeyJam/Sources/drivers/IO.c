#include "derivative.h"
#include "IO.h"
#include "../DSP/AudioIF.h"
#include "adc16/adc16.h"

void InitIO()
{
    //enable Clocks to All the Ports
    SIM_SCGC5 |= SIM_SCGC5_PORTA_MASK |
                 SIM_SCGC5_PORTB_MASK |
                 SIM_SCGC5_PORTC_MASK |
                 SIM_SCGC5_PORTD_MASK |
                 SIM_SCGC5_PORTE_MASK;
    InitADC_12Bit();
    //This sets the SAI unit for 32MHz, 256x oversampling on the ADC/ Dacs
    InitAudioIO(50000000, 24000, 256);
    PORTC_PCR(0) = PORT_PCR_MUX(1);
    PORTC_PCR(4) = PORT_PCR_MUX(1)| PORT_PCR_PE_MASK | PORT_PCR_PS_MASK;  // Enable Pull-up;
    PORTC_PCR(9) = PORT_PCR_MUX(1);
    
    IO_DELTA_IS_INPUT;
    
}



float PotMin[3] = {0,0,0};
float PotMax[3] = {1,1,1};


//THis function is used to set the maximum/minimum limits that will be returned by ReadPOT
void SetPotLimits(uint8_t Channel,float Min, float Max)
{
    if(Channel>2)
        {
            Channel = 0;
        }

    PotMin[Channel] = Min;
    PotMax[Channel] = Max;
}


//Returns potentiometer setting as a float between the values set by SetPotLimits(...)
float ReadPOT(uint8_t Channel)
{
    float Pot_Value;

    switch (Channel)
        {
            default:
            case POT_ALPHA:
                Pot_Value =  (float)ReadADC0_SingleEnded(ADC0_SE13) /  4095.0; //Alpha
                break;

            case POT_BETA:
                Pot_Value =  (float)ReadADC0_SingleEnded(ADC0_SE23)	/  4095.0; //beta
                break;

            case POT_GAMMA:
                Pot_Value =  (float)ReadADC0_SingleEnded(ADC0_SE12)	/  4095.0; //Gamma
                break;
        }

    //Rescale to Range
    Pot_Value = (Pot_Value * (PotMax[Channel] - PotMin[Channel])) + PotMin[Channel];
    return Pot_Value;
}
