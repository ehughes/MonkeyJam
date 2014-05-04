#ifndef IO_H_
#define IO_H_

#define	POT_ALPHA		0x00
#define	POT_BETA		0x01
#define	POT_GAMMA		0x02

//Intializes The entire I/O Subsystem.  Ports, ADCs, etc.
void InitIO();

//Returns potentiometer setting as a float between the values set by SetPotLimits(...)
float ReadPOT(uint8_t Channel);

//THis function is used to set the maximum/minimum limits that will be returned by ReadPOT
void SetPotLimits(uint8_t Channel,float Min, float Max);

uint16_t ReadADC0_SingleEnded(uint8_t Channel,uint8_t MuxSide);



#define IO_DELTA_IS_OUTPUT		GPIOC_PDDR |=(1<<4)
#define IO_DELTA_IS_INPUT		GPIOC_PDDR &=~(1<<4)
#define IO_DELTA_ON				GPIOC_PSOR = (1<<4)
#define IO_DELTA_OFF			GPIOC_PCOR = (1<<4)
#define IO_DELTA_IS_ON			(GPIOC_PDIR & (1<<4))


#define IO_EPSILON_IS_OUTPUT	GPIOC_PDDR |=(1<<9)
#define IO_EPSILON_IS_INPUT		GPIOC_PDDR &=~(1<<9)
#define IO_EPSILON_ON	   		GPIOC_PSOR = (1<<9)
#define IO_EPSILON_OFF			GPIOC_PCOR = (1<<9)
#define IO_EPSILON_IS_ON		(GPIOC_PDIR & (1<<9))

#define IO_ZETA_IS_OUTPUT		GPIOC_PDDR |=(1<<0)
#define IO_ZETA_IS_INPUT		GPIOC_PDDR &=~(1<<0)
#define IO_ZETA_ON	 		    GPIOC_PSOR = (1<<0)
#define IO_ZETA_OFF				GPIOC_PCOR = (1<<0)
#define IO_ZETA_IS_ON			(GPIOC_PDIR & (1<<0))


#endif /* IO_H_ */
