/*
 * AudioProcess.h
 *
 *  Created on: Feb 22, 2014
 *      Author: ehughes
 */

#include "arm_math.h"
#include "IIR.h"
#include "CombFilter.h"

#ifndef AUDIOPROCESS_H_
#define AUDIOPROCESS_H_


#define PATCH_PASS_THROUGH			0x00
#define PATCH_SINE_TEST				0x01
#define PATCH_TUBEY_CLEAN			0x02
#define PATCH_OVERDRIVE				0x03
#define PATCH_OCTAVE				0x04
#define PATCH_COMB_THE_DESERT_CHORUS		0x05
#define PATCH_COMB_THE_DESERT_FLANGE		0x06
#define PATCH_OD_DEMO_SINE_TEST				0x07

extern uint8_t CurrentPatch;

#define COMB_SIZE	1024
extern  CombFilter MyCombFilter;


//Samples that just came in.
extern q31_t LeftIn;
extern q31_t RightIn;

//Samples to go out next
extern q31_t LeftOut;
extern q31_t RightOut;

void InitAudioProcess();
void AudioProcess();
void ChangePatch(uint8_t NewPatch);

//Used by Effects

extern q31_t OD_Level;
#define NUM_IIR	2
extern q31_t_IIR MyIIR[NUM_IIR];

extern uint32_t SweepRate;
extern uint32_t SweepPosition;
extern uint32_t SweepDepth;

extern uint32_t SweepRate_Shadow;
extern uint32_t SweepDepth_Shadow;
extern q31_t FeedbackAmplitude_Shadow;

extern uint8_t      UpdateParameters;

#endif /* AUDIOPROCESS_H_ */
