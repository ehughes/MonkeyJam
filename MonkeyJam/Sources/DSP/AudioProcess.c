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
#include "PeakingComb.h"

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

PeakingComb MyPeakingComb;

q31_t PeakingCombHistory[PEAKING_COMB_SIZE];


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

            case PATCH_COMB_THE_DESERT:
                CurrentPatch = PATCH_COMB_THE_DESERT;
                InitPeakingComb(&MyPeakingComb,&PeakingCombHistory[0],PEAKING_COMB_SIZE,COMB_TYPE_NULLING);
                break;
        }
}



void InitAudioProcess()
{
    uint8_t i;

    for(i=0; i<NUM_IIR; i++)
        Init_q31_t_IIR(&MyIIR[i]);

    //MyIIR[0].
    MyIIR[0].Coef.b[0] =    0x7FFFFFFF>>1;
    MyIIR[0].Coef.b[1] =	0x7FFFFFFF>>1;
    MyIIR[0].Coef.b[2] =	0x7FFFFFFF>>2;
    MyIIR[0].Coef.a[0] =	0;
    MyIIR[0].Coef.a[1] =	0;
}



void AudioProcess()
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
                //Output an octave.  Low tone in left ear and Higher Tone in Right
                RightOut = LeftOut = sine_q31_t[Idx>>1 & 0xFF]>>8;
                Idx++;
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

                Compute_q31_t_IIR(&MyIIR[0],LeftIn,&LeftOut);
                LeftOut = HardOverdrive(LeftOut, OD_Level);
                Compute_q31_t_IIR(&MyIIR[1],LeftOut,&LeftOut);
                LeftOut = LeftOut;
                RightOut = LeftOut;
                break;

            case PATCH_TUBEY_CLEAN:
                if(MyIIR[0].Update>0)
                    {
                        MyIIR[0].Update = 0;
                        MyIIR[0].Coef = MyIIR[0].Shadow_Coef;
                    }

                Compute_q31_t_IIR(&MyIIR[0],LeftIn,&LeftOut);
                LeftOut = SoftOverdrive(LeftOut, OD_Level);
                RightOut = LeftOut;
                break;

            case PATCH_COMB_THE_DESERT:
                CombTheDesert(LeftIn, &LeftOut,&MyPeakingComb);
                //OD_Level is used as a value control
                LeftOut = ((q63_t)LeftOut * OD_Level)>>30;
                RightOut = LeftOut;
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


