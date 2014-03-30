/*
 * File:		a16dc.c
 * Purpose:		Simple Driver or API for AdC16/PGA
 * This file contains the following two functions:
 *  1. ADC_Cal: calibrates the ADC
 *  2. ADC_Config_Alt: Simply configures an ADC per a structure
 *
 * Typical usage: Fill the structure with the ADC and PGA register contents
 * needed for the ADC usage.

 * a) Call the ADC_Config_Alt function to configure an ADC, (ADC0 or ADC1)
 * b) Call the ADC_Cal function to calibrate that ADC
 * c) Call the ADC_Config_Alt function again to restore desired configuation
 *    after a calibration
 *
 *
 */

#include "derivative.h"
#include "adc16.h"

#include "../../cpu/arm_cm4.h"


//#define ADC0_irq_no 38
// Bit shifting of bitfiled is already taken into account so
// bitfiled values are always represented as relative to their position.

/************************* #Defines ******************************************/

#define A   0x0
#define B   0x1

/////// NOTE: the following defines relate to the ADC register definitions
/////// and the content follows the reference manual, using the same symbols.


//// ADCSC1 (register)
// Conversion Complete (COCO) mask

#define COCO_COMPLETE   ADC_SC1_COCO_MASK
#define COCO_NOT        0x00

// ADC interrupts: enabled, or disabled.

#define AIEN_ON     ADC_SC1_AIEN_MASK
#define AIEN_OFF    0x00

// Differential or Single ended ADC input

#define DIFF_SINGLE         0x00
#define DIFF_DIFFERENTIAL   ADC_SC1_DIFF_MASK

//// ADCCFG1
// Power setting of ADC

#define ADLPC_LOW       ADC_CFG1_ADLPC_MASK
#define ADLPC_NORMAL    0x00

// Clock divisor

#define ADIV_1  0x00
#define ADIV_2  0x01
#define ADIV_4  0x02
#define ADIV_8  0x03

// Long samle time, or Short sample time

#define ADLSMP_LONG     ADC_CFG1_ADLSMP_MASK
#define ADLSMP_SHORT    0x00

// How many bits for the conversion?  8, 12, 10, or 16 (single ended).

#define MODE_8  0x00
#define MODE_12 0x01
#define MODE_10 0x02
#define MODE_16 0x03

// ADC Input Clock Source choice? Bus clock, Bus clock/2, "altclk", or the
//                                ADC's own asynchronous clock for less noise

#define ADICLK_BUS      0x00
#define ADICLK_BUS_2    0x01
#define ADICLK_ALTCLK   0x02
#define ADICLK_ADACK    0x03

//// ADCCFG2
// Select between B or A channels

#define MUXSEL_ADCB ADC_CFG2_MUXSEL_MASK
#define MUXSEL_ADCA 0x00

// Ansync clock output enable: enable, or disable the output of it

#define ADACKEN_ENABLED     ADC_CFG2_ADACKEN_MASK
#define ADACKEN_DISABLED    0x00

// High speed or low speed conversion mode

#define ADHSC_HISPEED   ADC_CFG2_ADHSC_MASK
#define ADHSC_NORMAL    0x00

// Long Sample Time selector: 20, 12, 6, or 2 extra clocks for a longer sample time

#define ADLSTS_20   0x00
#define ADLSTS_12   0x01
#define ADLSTS_6    0x02
#define ADLSTS_2    0x03

////ADCSC2
// Read-only status bit indicating conversion status

#define ADACT_ACTIVE    ADC_SC2_ADACT_MASK
#define ADACT_INACTIVE  0x00

// Trigger for starting conversion: Hardware trigger, or software trigger.
// For using PDB, the Hardware trigger option is selected.

#define ADTRG_HW    ADC_SC2_ADTRG_MASK
#define ADTRG_SW    0x00

// ADC Compare Function Enable: Disabled, or Enabled.

#define ACFE_DISABLED   0x00
#define ACFE_ENABLED    ADC_SC2_ACFE_MASK

// Compare Function Greater Than Enable: Greater, or Less.

#define ACFGT_GREATER   ADC_SC2_ACFGT_MASK
#define ACFGT_LESS      0x00

// Compare Function Range Enable: Enabled or Disabled.

#define ACREN_ENABLED   ADC_SC2_ACREN_MASK
#define ACREN_DISABLED  0x00

// DMA enable: enabled or disabled.

#define DMAEN_ENABLED   ADC_SC2_DMAEN_MASK
#define DMAEN_DISABLED  0x00

// Voltage Reference selection for the ADC conversions
// (***not*** the PGA which uses VREFO only).
// VREFH and VREFL (0) , or VREFO (1).

#define REFSEL_EXT      0x00
#define REFSEL_ALT      0x01
#define REFSEL_RES      0x02    /* reserved */
#define REFSEL_RES_EXT  0x03    /* reserved but defaults to Vref */

////ADCSC3
// Calibration begin or off

#define CAL_BEGIN   ADC_SC3_CAL_MASK
#define CAL_OFF     0x00

// Status indicating Calibration failed, or normal success

#define CALF_FAIL   ADC_SC3_CALF_MASK
#define CALF_NORMAL 0x00

// ADC to continously convert, or do a sinle conversion

#define ADCO_CONTINUOUS ADC_SC3_ADCO_MASK
#define ADCO_SINGLE     0x00

// Averaging enabled in the ADC, or not.

#define AVGE_ENABLED    ADC_SC3_AVGE_MASK
#define AVGE_DISABLED   0x00

// How many to average prior to "interrupting" the MCU?  4, 8, 16, or 32

#define AVGS_4  0x00
#define AVGS_8  0x01
#define AVGS_16 0x02
#define AVGS_32 0x03

////PGA
// PGA enabled or not?

#define PGAEN_ENABLED   ADC_PGA_PGAEN_MASK
#define PGAEN_DISABLED  0x00

// Chopper stabilization of the amplifier, or not.

#define PGACHP_CHOP     ADC_PGA_PGACHP_MASK
#define PGACHP_NOCHOP   0x00

// PGA in low power mode, or normal mode.

#define PGALP_LOW       ADC_PGA_PGALP_MASK
#define PGALP_NORMAL    0x00

// Gain of PGA.  Selectable from 1 to 64.

#define PGAG_1  0x00
#define PGAG_2  0x01
#define PGAG_4  0x02
#define PGAG_8  0x03
#define PGAG_16 0x04
#define PGAG_32 0x05
#define PGAG_64 0x06

/////////// The above values fit into the structure below to select ADC/PGA
/////////// configuration desired:

typedef struct adc_cfg
{
    uint8_t     CONFIG1;
    uint8_t     CONFIG2;
    uint16_t    COMPARE1;
    uint16_t    COMPARE2;
    uint8_t     STATUS2;
    uint8_t     STATUS3;
    uint8_t     STATUS1A;
    uint8_t     STATUS1B;
    uint32_t    PGA;
}
*tADC_ConfigPtr, tADC_Config;

#define CAL_BLK_NUMREC  18

typedef struct adc_cal
{
    uint16_t    OFS;
    uint16_t    PG;
    uint16_t    MG;
    uint8_t     CLPD;
    uint8_t     CLPS;
    uint16_t    CLP4;
    uint16_t    CLP3;
    uint8_t     CLP2;
    uint8_t     CLP1;
    uint8_t     CLP0;
    uint8_t     dummy;
    uint8_t     CLMD;
    uint8_t     CLMS;
    uint16_t    CLM4;
    uint16_t    CLM3;
    uint8_t     CLM2;
    uint8_t     CLM1;
    uint8_t     CLM0;
} tADC_Cal_Blk;

// function prototypes:

uint8_t ADC_Cal(ADC_MemMapPtr);

void    ADC_Config_Alt(ADC_MemMapPtr, tADC_ConfigPtr);

void    ADC_Read_Cal(ADC_MemMapPtr, tADC_Cal_Blk *);

/******************************************************************************
Function 1. Name	AUTO CAL ROUTINE

Parameters		ADC module pointer points to adc0 or adc1 register map
                         base address.
Returns			Zero indicates success.
Notes         		Calibrates the ADC16. Required to meet specifications
                        after reset and before a conversion is initiated.
******************************************************************************/

uint8 ADC_Cal
(ADC_MemMapPtr   adcmap)
{
    /*~~~~~~~~~~~~~~~~~~~~*/
    /*~~~~~~~~~~~~~~~~~~~~*/
    /*~~~~~~~~~~~~~~~~~~~~*/
    /*~~~~~~~~~~~~~~~~~~~~*/
    /*~~~~~~~~~~~~~~~~~~~~*/
    /*~~~~~~~~~~~~~~~~~~~~*/
    unsigned short  cal_var;
    /*~~~~~~~~~~~~~~~~~~~~*/
    /*~~~~~~~~~~~~~~~~~~~~*/
    /*~~~~~~~~~~~~~~~~~~~~*/
    /*~~~~~~~~~~~~~~~~~~~~*/
    /*~~~~~~~~~~~~~~~~~~~~*/
    /*~~~~~~~~~~~~~~~~~~~~*/
    ADC_SC2_REG(adcmap) &= ~ADC_SC2_ADTRG_MASK; // Enable Software Conversion Trigger for Calibration Process    - ADC0_SC2 = ADC0_SC2 | ADC_SC2_ADTRGW(0);
    ADC_SC3_REG(adcmap) &= (~ADC_SC3_ADCO_MASK &~ADC_SC3_AVGS_MASK);    // set single conversion, clear avgs bitfield for next writing
    ADC_SC3_REG(adcmap) |= (ADC_SC3_AVGE_MASK | ADC_SC3_AVGS(AVGS_32)); // Turn averaging ON and set at max value ( 32 )
    ADC_SC3_REG(adcmap) |= ADC_SC3_CAL_MASK;    // Start CAL

    while((ADC_SC1_REG(adcmap, A) & ADC_SC1_COCO_MASK) == COCO_NOT);

    // Wait calibration end

    if((ADC_SC3_REG(adcmap) & ADC_SC3_CALF_MASK) == CALF_FAIL)
        {
            return(1);      // Check for Calibration fail error and return
        }

    // Calculate plus-side calibration
    cal_var = 0x00;
    cal_var = ADC_CLP0_REG(adcmap);
    cal_var += ADC_CLP1_REG(adcmap);
    cal_var += ADC_CLP2_REG(adcmap);
    cal_var += ADC_CLP3_REG(adcmap);
    cal_var += ADC_CLP4_REG(adcmap);
    cal_var += ADC_CLPS_REG(adcmap);
    cal_var = cal_var / 2;
    cal_var |= 0x8000;  // Set MSB
    ADC_PG_REG(adcmap) = ADC_PG_PG(cal_var);
    // Calculate minus-side calibration
    cal_var = 0x00;
    cal_var = ADC_CLM0_REG(adcmap);
    cal_var += ADC_CLM1_REG(adcmap);
    cal_var += ADC_CLM2_REG(adcmap);
    cal_var += ADC_CLM3_REG(adcmap);
    cal_var += ADC_CLM4_REG(adcmap);
    cal_var += ADC_CLMS_REG(adcmap);
    cal_var = cal_var / 2;
    cal_var |= 0x8000;  // Set MSB
    ADC_MG_REG(adcmap) = ADC_MG_MG(cal_var);
    ADC_SC3_REG(adcmap) &= ~ADC_SC3_CAL_MASK;   /* Clear CAL bit */
    return(0);
}

/******************************************************************************
Function   : Name 	ADC_Config_Alt
Parameters :		the register values to be set in the adc in a structure
Returns		 :	NONE
Notes       	Configures ADC0 or ADC1 depending on adcmap
              Prior to calling this function populate the structure
              elements with the desired ADC configuration.
******************************************************************************/

void ADC_Config
(
    ADC_MemMapPtr   adcmap,
    uint8_t         CONFIG1,
    uint8_t         CONFIG2,
    uint16_t        COMPARE1,
    uint16_t        COMPARE2,
    uint8_t         STATUS2,
    uint8_t         STATUS3,
    uint8_t         STATUS1A,
    uint8_t         STATUS1B,
    uint32_t        PGA
)
{
    ADC_CFG1_REG(adcmap) = CONFIG1;
    ADC_CFG2_REG(adcmap) = CONFIG2;
    ADC_CV1_REG(adcmap) = COMPARE1;
    ADC_CV2_REG(adcmap) = COMPARE2;
    ADC_SC2_REG(adcmap) = STATUS2;
    ADC_SC3_REG(adcmap) = STATUS3;
    ADC_SC1_REG(adcmap, A) = STATUS1A;
    ADC_SC1_REG(adcmap, B) = STATUS1B;
}

/* */

void ADC_Config_Alt
(
    ADC_MemMapPtr   adcmap,
    tADC_ConfigPtr  ADC_CfgPtr
)
{
    ADC_CFG1_REG(adcmap) = ADC_CfgPtr->CONFIG1;
    ADC_CFG2_REG(adcmap) = ADC_CfgPtr->CONFIG2;
    ADC_CV1_REG(adcmap) = ADC_CfgPtr->COMPARE1;
    ADC_CV2_REG(adcmap) = ADC_CfgPtr->COMPARE2;
    ADC_SC2_REG(adcmap) = ADC_CfgPtr->STATUS2;
    ADC_SC3_REG(adcmap) = ADC_CfgPtr->STATUS3;
    // ADC_PGA_REG(adcmap)  = ADC_CfgPtr->PGA;  //not one on P0
    ADC_SC1_REG(adcmap, A) = ADC_CfgPtr->STATUS1A;
    ADC_SC1_REG(adcmap, B) = ADC_CfgPtr->STATUS1B;
}

/* */

void ADC_Read_Cal
(
    ADC_MemMapPtr   adcmap,
    tADC_Cal_Blk    *blk
)
{
    blk->OFS = ADC_OFS_REG(adcmap);
    blk->PG = ADC_PG_REG(adcmap);
    blk->MG = ADC_MG_REG(adcmap);
    blk->CLPD = ADC_CLPD_REG(adcmap);
    blk->CLPS = ADC_CLPS_REG(adcmap);
    blk->CLP4 = ADC_CLP4_REG(adcmap);
    blk->CLP3 = ADC_CLP3_REG(adcmap);
    blk->CLP2 = ADC_CLP2_REG(adcmap);
    blk->CLP1 = ADC_CLP1_REG(adcmap);
    blk->CLP0 = ADC_CLP0_REG(adcmap);
    blk->CLMD = ADC_CLMD_REG(adcmap);
    blk->CLMS = ADC_CLMS_REG(adcmap);
    blk->CLM4 = ADC_CLM4_REG(adcmap);
    blk->CLM3 = ADC_CLM3_REG(adcmap);
    blk->CLM2 = ADC_CLM2_REG(adcmap);
    blk->CLM1 = ADC_CLM1_REG(adcmap);
    blk->CLM0 = ADC_CLM0_REG(adcmap);
}


tADC_Config Master_Adc_Config;

void InitADC_12Bit()
{
    SIM_SCGC6 |= SIM_SCGC6_ADC0_MASK;
    // setup the initial ADC default configuration to get setup for calibration
    Master_Adc_Config.CONFIG1  = ADLPC_NORMAL
                                 | ADC_CFG1_ADIV(ADIV_4)
                                 | ADLSMP_LONG
                                 | ADC_CFG1_MODE(MODE_12)
                                 | ADC_CFG1_ADICLK(ADICLK_BUS);
    Master_Adc_Config.CONFIG2  = MUXSEL_ADCA
                                 | ADACKEN_DISABLED
                                 | ADHSC_HISPEED
                                 | ADC_CFG2_ADLSTS(ADLSTS_20) ;
    Master_Adc_Config.COMPARE1 = 0x1234u ;                 // can be anything
    Master_Adc_Config.COMPARE2 = 0x5678u ;                 // can be anything
    // since not using
    // compare feature
    Master_Adc_Config.STATUS2  =
        ACFE_DISABLED
        | ACFGT_GREATER
        | ACREN_ENABLED
        | DMAEN_DISABLED
        | ADC_SC2_REFSEL(REFSEL_EXT);
    Master_Adc_Config.STATUS3  = CAL_OFF
                                 | ADCO_SINGLE
                                 | AVGE_ENABLED
                                 | ADC_SC3_AVGS(AVGS_16);
    Master_Adc_Config.STATUS1A = AIEN_OFF | DIFF_SINGLE | ADC_SC1_ADCH(31);
    Master_Adc_Config.STATUS1B = AIEN_OFF | DIFF_SINGLE | ADC_SC1_ADCH(31);
    // Configure ADC as it will be used, but becuase ADC_SC1_ADCH is 31,
    // the ADC will be inactive.  Channel 31 is just disable function.
    // There really is no channel 31.
    ADC_Config_Alt(ADC0_BASE_PTR, &Master_Adc_Config);  // config ADC
    // Calibrate the ADC in the configuration in which it will be used:
    ADC_Cal(ADC0_BASE_PTR);                    // do the calibration
    // The structure still has the desired configuration.  So restore it.
    // Why restore it?  The calibration makes some adjustments to the
    // configuration of the ADC.  The are now undone:
    // config the ADC again to desired conditions
    ADC_Config_Alt(ADC0_BASE_PTR, &Master_Adc_Config);
    // *****************************************************************************
    //      ADC0 using the PDB trigger in ping pong
    // *****************************************************************************
    // use interrupts, single ended mode, and real channel numbers now:
    ADC_Config_Alt(ADC0_BASE_PTR, &Master_Adc_Config);  // config ADC0
}





void StartADC0_SingleEnded(uint8_t Channel,uint8_t MuxSide)
{
    if(MuxSide == 0)
        {
            //Select The a side of the MUX
            ADC0_CFG1 &= ~(ADC_CFG2_MUXSEL_MASK);
        }
    else
        {
            //Select The b side of the MUX
            ADC0_CFG1 |= (ADC_CFG2_MUXSEL_MASK);
        }

    ADC0_SC1A  = Channel;
}

uint16_t ReadADC0_SingleEnded(uint8_t Channel,uint8_t MuxSide)
{
    StartADC0_SingleEnded(Channel,MuxSide);

    while((ADC0_SC1A & ADC_SC1_COCO_MASK) == 0)
        {
            //Wait For Conversion Complete
        }

    return ADC0_RA;
}
