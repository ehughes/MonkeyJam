/****************************************************************************************************/

/**
Copyright (c) 2011 Freescale Semiconductor
\file       frdm-k22-def.h
\brief
\author
\author
\version    1.0
\date       Sep 26, 2011
*/

#include "derivative.h"

#define BIT_MASK(x) (0x1 << x)

// User should only define wich port and the bit

#define LED1_PORT   A   // Greeen LED
#define LED1_BIT    2

#define LED2_PORT   A   // Red LED
#define LED2_BIT    1

#define LED3_PORT   D   // Blue LED
#define LED3_BIT    5

//#undef LED4_PORT   C    //
//#undef LED4_BIT    8

/*
SW1  as  SW3 (IRQ0) PTC5
SW2  SW4 (IRQ1) PTC13
 SW5 (RESET) RESET_b
*/

//#undef  SW1_PORT   C
//#undef  SW1_BIT    1
//#undef  SW2_PORT   C
//#undef  SW2_BIT    2

// Compilation time Definitions

#define PCR(PTO, BIT)       PORT##PTO##_PCR##BIT
#define PDDR(PTO)           GPIO##PTO##_PDDR
#define PSOR(PORT)          GPIO##PORT##_PSOR
#define PCOR(PORT)          GPIO##PORT##_PCOR
#define PTOR(PORT)          GPIO##PORT##_PTOR
#define PDOR(PORT)          GPIO##PORT##_PDOR
#define PDIR(PORT)          GPIO##PORT##_PDIR

#define PCR_OUTPUT_CONFIG   (PORT_PCR_MUX(1) | PORT_PCR_DSE_MASK)                   //Pin configured as GPIO
#define PCR_INPUT_CONFIG    (PORT_PCR_MUX(1) | PORT_PCR_PE_MASK | PORT_PCR_PS_MASK) //Pin configured as GPIO Input with pull up enable
#ifdef LED1_PORT
#define LED1
#define LED1_PCR_OUTPUT(LED1_PORT, LED1_BIT)    PCR(LED1_PORT, LED1_BIT)
#define LED1_DDR_OUTPUT(LED1_PORT, LED1_BIT)    PDDR(LED1_PORT) |= (1 << LED1_BIT)
#define LED1_PSOR(LED1_PORT, LED1_BIT)          PSOR(LED1_PORT) |= (1 << LED1_BIT)
#define LED1_PCOR(LED1_PORT, LED1_BIT)          PCOR(LED1_PORT) |= (1 << LED1_BIT)
#define LED1_PTOR(LED1_PORT, LED1_BIT)          PTOR(LED1_PORT) |= (1 << LED1_BIT)
#define LED1_PCR                                LED1_PCR_OUTPUT(LED1_PORT, LED1_BIT)
#define LED1_OUTPUT_EN                          LED1_DDR_OUTPUT(LED1_PORT, LED1_BIT)
#define LED1_SET                                LED1_PSOR(LED1_PORT, LED1_BIT)
#define LED1_CLR                                LED1_PCOR(LED1_PORT, LED1_BIT)
#define LED1_ON                                 LED1_PCOR(LED1_PORT, LED1_BIT)
#define LED1_OFF                                LED1_PSOR(LED1_PORT, LED1_BIT)
#define LED1_TOGGLE                             LED1_PTOR(LED1_PORT, LED1_BIT)
#endif
#ifdef LED2_PORT
#define LED2
#define LED2_PCR_OUTPUT(LED2_PORT, LED2_BIT)    PCR(LED2_PORT, LED2_BIT)
#define LED2_DDR_OUTPUT(LED2_PORT, LED2_BIT)    PDDR(LED2_PORT) |= (1 << LED2_BIT)
#define LED2_PSOR(LED2_PORT, LED2_BIT)          PSOR(LED2_PORT) |= (1 << LED2_BIT)
#define LED2_PCOR(LED2_PORT, LED2_BIT)          PCOR(LED2_PORT) |= (1 << LED2_BIT)
#define LED2_PTOR(LED2_PORT, LED2_BIT)          PTOR(LED2_PORT) |= (1 << LED2_BIT)
#define LED2_PCR                                LED2_PCR_OUTPUT(LED2_PORT, LED2_BIT)
#define LED2_OUTPUT_EN                          LED2_DDR_OUTPUT(LED2_PORT, LED2_BIT)
#define LED2_SET                                LED2_PSOR(LED2_PORT, LED2_BIT)
#define LED2_CLR                                LED2_PCOR(LED2_PORT, LED2_BIT)
#define LED2_ON                                 LED2_PCOR(LED2_PORT, LED2_BIT)
#define LED2_OFF                                LED2_PSOR(LED2_PORT, LED2_BIT)
#define LED2_TOGGLE                             LED2_PTOR(LED2_PORT, LED2_BIT)
#endif

//#ifdef  LED3_PORT

#define LED3
#define LED3_PCR_OUTPUT(LED3_PORT, LED3_BIT)    PCR(LED3_PORT, LED3_BIT)
#define LED3_DDR_OUTPUT(LED3_PORT, LED3_BIT)    PDDR(LED3_PORT) |= (1 << LED3_BIT)
#define LED3_PSOR(LED3_PORT, LED3_BIT)          PSOR(LED3_PORT) |= (1 << LED3_BIT)
#define LED3_PCOR(LED3_PORT, LED3_BIT)          PCOR(LED3_PORT) |= (1 << LED3_BIT)
#define LED3_PTOR(LED3_PORT, LED3_BIT)          PTOR(LED3_PORT) |= (1 << LED3_BIT)
#define LED3_PCR                                LED3_PCR_OUTPUT(LED3_PORT, LED3_BIT)
#define LED3_OUTPUT_EN                          LED3_DDR_OUTPUT(LED3_PORT, LED3_BIT)
#define LED3_CLR                                LED3_PCOR(LED3_PORT, LED3_BIT)
#define LED3_SET                                LED3_PSOR(LED3_PORT, LED3_BIT)
#define LED3_ON                                 LED3_PCOR(LED3_PORT, LED3_BIT)
#define LED3_OFF                                LED3_PSOR(LED3_PORT, LED3_BIT)
#define LED3_TOGGLE                             LED3_PTOR(LED3_PORT, LED3_BIT)

//#endif

#ifdef LED4_PORT
#define LED4
#define LED4_PCR_OUTPUT(LED4_PORT, LED4_BIT)    PCR(LED4_PORT, LED4_BIT)
#define LED4_DDR_OUTPUT(LED4_PORT, LED4_BIT)    PDDR(LED4_PORT) |= (1 << LED4_BIT)
#define LED4_PSOR(LED4_PORT, LED4_BIT)          PSOR(LED4_PORT) |= (1 << LED4_BIT)
#define LED4_PCOR(LED4_PORT, LED4_BIT)          PCOR(LED4_PORT) |= (1 << LED4_BIT)
#define LED4_PTOR(LED4_PORT, LED4_BIT)          PTOR(LED4_PORT) |= (1 << LED4_BIT)
#define LED4_PDOR(LED4_PORT, LED4_BIT)          PDOR(LED4_PORT) & (1 << LED4_BIT)
#define LED4_PCR                                LED4_PCR_OUTPUT(LED4_PORT, LED4_BIT)
#define LED4_OUTPUT_EN                          LED4_DDR_OUTPUT(LED4_PORT, LED4_BIT)
#define LED4_CLR                                LED4_PCOR(LED4_PORT, LED4_BIT)      //Led turn with positive
#define LED4_SET                                LED4_PSOR(LED4_PORT, LED4_BIT)
#define LED4_OFF                                LED4_PCOR(LED4_PORT, LED4_BIT)      //Led turn with positive
#define LED4_ON                                 LED4_PSOR(LED4_PORT, LED4_BIT)
#define LED4_TOGGLE                             LED4_PTOR(LED4_PORT, LED4_BIT)
#endif
#ifdef SW1_PORT
#define SW1
#define SW1_PCR_INPUT(SW1_PORT, SW1_BIT)    PCR(SW1_PORT, SW1_BIT)
#define SW1_DDR_INPUT(SW1_PORT, SW1_BIT)    PDDR(SW1_PORT) &= ~(1 << SW1_BIT)
#define SW1_DIR_INPUT(SW1_PORT, SW1_BIT)    (PDIR(SW1_PORT) & (1 << SW1_BIT))
#define SW1_PCR                             SW1_PCR_INPUT(SW1_PORT, SW1_BIT)
#define SW1_INPUT_EN                        SW1_DDR_INPUT(SW1_PORT, SW1_BIT)
#define SW1_VAL                             SW1_DIR_INPUT(SW1_PORT, SW1_BIT)
#define SW1_ON                              !SW1_VAL
#endif
#ifdef SW2_PORT
#define SW2
#define SW2_PCR_INPUT(SW2_PORT, SW2_BIT)    PCR(SW2_PORT, SW2_BIT)
#define SW2_DDR_INPUT(SW2_PORT, SW2_BIT)    PDDR(SW2_PORT) &= ~(1 << SW2_BIT)
#define SW2_DIR_INPUT(SW2_PORT, SW2_BIT)    (PDIR(SW2_PORT) & (1 << SW2_BIT))
#define SW2_PCR                             SW2_PCR_INPUT(SW2_PORT, SW2_BIT)
#define SW2_INPUT_EN                        SW2_DDR_INPUT(SW2_PORT, SW2_BIT)
#define SW2_VAL                             SW2_DIR_INPUT(SW2_PORT, SW2_BIT)
#define SW2_ON                              !SW2_VAL
#endif
void    frdm_GPIO_init(void);
char    input_rise(char input, char *mem);
char    input_fall(char input, char *mem);
