/*

 __        __                                     _                 _     _      ____
 \ \      / /__ ___   _____ _ __  _   _ _ __ ___ | |__   ___ _ __  | |   | |    / ___|
  \ \ /\ / // _` \ \ / / _ \ '_ \| | | | '_ ` _ \| '_ \ / _ \ '__| | |   | |   | |
   \ V  V /| (_| |\ V /  __/ | | | |_| | | | | | | |_) |  __/ |    | |___| |___| |___
    \_/\_/  \__,_| \_/ \___|_| |_|\__,_|_| |_| |_|_.__/ \___|_|    |_____|_____|\____|

                   /|
 ____       __   -- |
(___ \      \ \    _|_
  __) )______\ \
 / __/(  __  )> \
| |___ | || |/ ^ \
|_____)|_||_/_/ \_\


Active Pickguard Firmware

Copyright (C) <2011>  Eli Hughes                ehughes@wavenumber.net

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.

*/

#include "AudioProcess.h"
#include "arm_math.h"
#include "MathTables.h"
#include "Overdrive.h"
#include "IIR.h"
#include "Octave.h"
#include "CombFilter.h"
#include "Derivative.h"
#include "..\Drivers\IO.h"
uint8_t CurrentPatch = PATCH_OVERDRIVE;
/*
 *
 * This is the Main Audio Processing routine.   Everything is done in the I2S Interrupt Routine
 * To ensure a constant sample rate,   the processing routine will always dump queued values to the I2S unit.
*/
//To take advantage of the DSP library, we will use the q31 format.
//The input signal will be scaled to a max value of 1/128.   This means that the input samples (24-bit)
//will right justified and sign extended  The output signal will also be assumed handle a max
//value of 1/128.
//
//
//
//The 1/128 max signal was chosen to balance precision and overflow in the cases where we aren't using the DSP instructions
// with the 64-bit accumulator.   Since none of the filters are of very high order,  we can accumulate into the Q31 datatype
//without having to scale very often to retain precision.




//Samples that just came in.
q31_t LeftIn;
q31_t RightIn;

//Samples to go out next
q31_t LeftOut;
q31_t RightOut;


q31_t OD_Level = 0;

uint8_t Idx;

q31_t_IIR MyIIR[NUM_IIR];

OctaveControl MyOctave;

CombFilter MyCombFilter;

q31_t CombFilterHistory[COMB_SIZE+1];

q31_t Signal; //Used for passing around Audio Data

uint32_t SweepRate;
uint32_t SweepPosition;
uint32_t SweepDepth;
uint32_t SweepLoc;


uint32_t SweepRate_Shadow;
uint32_t SweepDepth_Shadow;
q31_t FeedbackAmplitude_Shadow;
uint8_t    UpdateParameters = 0;

void ChangePatch(uint8_t NewPatch)
{
    switch(NewPatch)
        {
            default:
                CurrentPatch = NewPatch;
                break;

            case PATCH_TUBEY_CLEAN:
                CurrentPatch = PATCH_TUBEY_CLEAN;
                break;

            case PATCH_OCTAVE:
                CurrentPatch = PATCH_OCTAVE;
                InitOctave(&MyOctave,5000,-5000);
                break;

            case PATCH_COMB_THE_DESERT_FLANGE:
              
            	CurrentPatch = PATCH_COMB_THE_DESERT_FLANGE;
                InitCombFilter(&MyCombFilter,&CombFilterHistory[0],COMB_SIZE,COMB_TYPE_PEAKING);
                MyCombFilter.FeedbackAmplitude =  0x7FFFFFFF;
                
                break;
                
            case PATCH_COMB_THE_DESERT_CHORUS:
                       
                     	CurrentPatch = PATCH_COMB_THE_DESERT_CHORUS;
                         InitCombFilter(&MyCombFilter,&CombFilterHistory[0],COMB_SIZE,COMB_TYPE_NULLING);
                         MyCombFilter.FeedbackAmplitude =  0x7FFFFFFF;
                      
                         break;
                         
            case  PATCH_OD_DEMO_SINE_TEST:
            	 CurrentPatch = NewPatch;
            	break;
        }
}



void InitAudioProcess()
{
    uint8_t i;

    for(i=0; i<NUM_IIR; i++)
        Init_q31_t_IIR(&MyIIR[i]);

}



void AudioProcess()
{
	
	if(IO_DELTA_IS_ON == 0) //Bypass the effect processing
	{
	    LeftOut = LeftIn;
		RightOut = RightIn;
	}
	else
	{
    //See what the current Patch is and do the appropriate processing!
    switch(CurrentPatch)
        {
            default:
                break;

            case PATCH_PASS_THROUGH:
            	
            	LeftOut = LeftIn;
                RightOut = RightIn;
                break;

            case PATCH_SINE_TEST:
            
                RightOut = LeftOut = sine_q31_t[Idx & 0xFF]>>8;
                Idx++;
                break;
                
            case PATCH_OD_DEMO_SINE_TEST:
                       
                      
            			Signal = sine_q31_t[Idx & 0xFF]>>8;
            	
                        Idx++;
                        
                        Signal = SoftOverdrive(Signal, OD_Level);
                          
                        RightOut = LeftOut =  Signal;         
                          
                break;


            case PATCH_OVERDRIVE:
                if(MyIIR[0].Update>0)
                    {
                        MyIIR[0].Update = 0;
                        MyIIR[0].Coef = MyIIR[0].Shadow_Coef;
                    }

                if(MyIIR[1].Update>0)
                    {
                        MyIIR[1].Update = 0;
                        MyIIR[1].Coef = MyIIR[1].Shadow_Coef;
                    }

                Signal = (LeftIn + RightIn);
                
                Compute_q31_t_IIR(&MyIIR[0],Signal,&Signal);
                
                Signal = HardOverdrive(Signal, OD_Level);
               
                Compute_q31_t_IIR(&MyIIR[1],Signal,&Signal);
                
                LeftOut = Signal;
                RightOut = Signal;
                break;

            case PATCH_TUBEY_CLEAN:
                if(MyIIR[0].Update>0)
                    {
                        MyIIR[0].Update = 0;
                        MyIIR[0].Coef = MyIIR[0].Shadow_Coef;
                    }
         
                Signal = LeftIn;
                
                Compute_q31_t_IIR(&MyIIR[0],Signal,&Signal);
                LeftOut = SoftOverdrive(Signal, OD_Level);
        
                RightOut =Signal;
                break;

            case PATCH_COMB_THE_DESERT_CHORUS:
            case PATCH_COMB_THE_DESERT_FLANGE:
            	
            	Signal = (LeftIn); //Comb filter can have a gain of 2! Cut the signal down 1st
            	 
            	if(UpdateParameters == 1)
            	{
            		SweepRate = SweepRate_Shadow;
            		SweepDepth = SweepDepth_Shadow ;
            		MyCombFilter.FeedbackAmplitude = FeedbackAmplitude_Shadow;
            	}
            	
            	SweepPosition += SweepRate; // The cosine table has an 8-bit index.   We will us the upper 8 with the low 8 being a fractional control phase accumulator
            	
            	SweepPosition &= 0xFFFFFF;
                    	
            	
            	SweepLoc = OffsetCos_0_1023[(SweepPosition>>16)]; // Use the upper 8-bits as the index into the cosine table.

            	SweepLoc = ((uint32_t)SweepDepth * SweepLoc)>>16; //  Scale by the sweep depth.  The Depth is an unsigned 16-bit fixed point from 0 to 1.  The Cos table maxes out at 1024
            	            	
            	//SweepLoc = SweepPosition >> 16;
            	
            	
            	MyCombFilter.FeedbackTap = -1 - (int16_t)SweepLoc ; // We need a negative value for the Feedback Tap....
                
            	
            	//MyCombFilter.FeedbackTap = -1023;
            	CombTheDesert(Signal, &Signal,&MyCombFilter);
           
                Signal = __SSAT(Signal,24); // saturate to 24 bits just in case....  Not desirable but last ditch effort to avoid wrapping if signal is too large.
            	
                LeftOut = Signal;
                RightOut = Signal;
                
                break;

            case PATCH_OCTAVE:
                if(MyIIR[0].Update>0)
                    {
                        MyIIR[0].Update = 0;
                        MyIIR[0].Coef = MyIIR[0].Shadow_Coef;
                    }

                //      Compute_q31_t_IIR(&MyIIR[0],LeftIn,&LeftOut);
                Octave(LeftIn,&LeftOut,&MyOctave);
                //Compute_q31_t_IIR(&MyIIR[1],LeftOut,&LeftOut);
                RightOut = LeftOut;
                break;
        }
	}
}


