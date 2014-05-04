/*$6*/


// This file contains the defines for the ADC "driver".

#include <stdint.h>

#ifndef __ADC16_H__
#define __ADC16_H__ 1


#define ADC0_SE0 				0,0
#define ADC0_SE1 				1,0
#define ADC0_SE2 				2,0
#define ADC0_SE3 				3,0
#define ADC0_SE4 				4,0
#define ADC0_SE5 				5,0
#define ADC0_SE6 				6,0
#define ADC0_SE7 				7,0
#define ADC0_SE8 				8,0
#define ADC0_SE9 				9,0
#define ADC0_SE10				10,0
#define ADC0_SE11				11,0
#define ADC0_SE12				12,0
#define ADC0_SE13				13,0
#define ADC0_SE14				14,0
#define ADC0_SE15				15,0
#define ADC0_SE16				16,0
#define ADC0_SE17				17,0
#define ADC0_SE18				18,0
#define ADC0_SE19				19,0
#define ADC0_SE20				20,0
#define ADC0_SE21				21,0
#define ADC0_SE22				22,0
#define ADC0_SE23				23,0
#define ADC0_SE24				24,0
#define ADC0_SE25				25,0
#define ADC0_SE26				26,0
#define ADC0_SE27				27,0
#define ADC0_SE28				28,0
#define ADC0_SE29				29,0
#define ADC0_SE30				30,0
#define ADC0_SE31				31,0
#define ADC0_SE0B				0,1
#define ADC0_SE1B				1,1
#define ADC0_SE2B				2,1
#define ADC0_SE3B				3,1
#define ADC0_SE4B				4,1
#define ADC0_SE5B				5,1
#define ADC0_SE6B				6,1
#define ADC0_SE7B				7,1
#define ADC0_SE8B				8,1
#define ADC0_SE9B				9,1
#define ADC0_SE10B    			10,1
#define ADC0_SE11B    			11,1
#define ADC0_SE12B    			12,1
#define ADC0_SE13B    			13,1
#define ADC0_SE14B    			14,1
#define ADC0_SE15B    			15,1
#define ADC0_SE16B    			16,1
#define ADC0_SE17B    			17,1
#define ADC0_SE18B    			18,1
#define ADC0_SE19B    			19,1
#define ADC0_SE20B    			20,1
#define ADC0_SE21B    			21,1
#define ADC0_SE22B    			22,1
#define ADC0_SE23B    			23,1
#define ADC0_SE24B    			24,1
#define ADC0_SE25B    			25,1
#define ADC0_SE26B    			26,1
#define ADC0_SE27B    			27,1
#define ADC0_SE28B    			28,1
#define ADC0_SE29B    			29,1
#define ADC0_SE30B    			30,1
#define ADC0_SE31B    			31,1



uint16_t ReadADC_SingleEnded(uint8_t Channel,uint8_t MuxSide);

void InitADC_12Bit();

void StartADC0_SingleEnded(uint8_t Channel,uint8_t MuxSide);

#endif /* __ADC16_H__ */
