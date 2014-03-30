/*
 * AudioIF.h
 *
 *  Created on: Feb 22, 2014
 *      Author: ehughes
 */

#ifndef AUDIOIF_H_
#define AUDIOIF_H_

//Current Master Clock and Sample rate in Hz.  They are updated after a call to InitAudioIO
extern uint32_t    AudioMasterClock;
extern uint32_t    AudioSampleRate;

//Actual Sample Rate returned.  It may be a few cycles off as the audio divider can't hit everything.
uint32_t InitAudioIO( uint32_t    BusClockIn,
                      uint32_t    SampleRate,
                      uint32_t    MCLK_Ratio);

#endif /* AUDIOIF_H_ */
