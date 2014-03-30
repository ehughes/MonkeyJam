#ifdef r

#include "derivative.h"

/* Bit Banged driver for 2 QSPI RAM devices hooked up to be an 8-bit wide memory */

#define QSPI_CS_ENABLE					GPIOE_PCOR = 1<<1
#define QSPI_CS_DISABLE					GPIOE_PSOR = 1<<1
#define QSPI_CS_SET_AS_OUTPUT			GPIOE_PDDR = 1<<1

#define QSPI_CLK_HIGH					GPIOE_PSOR = 1<<0
#define QSPI_CLK_LOW					GPIOE_PCOR = 1<<0
#define QSPI_CLK_SET_AS_OUTPUT			GPIOE_PDDR = 1<<0

#define	QSPI_DATA_BUS_IS_OUTPUT			GPIOD_PDDR |= 0xFF;
#define	QSPI_DATA_BUS_IS_INPUT			GPIOD_PDDR &= ~0xFF

#define QSPI_SO0_HIGH					GPIOD_PSOR = 1<<1
#define QSPI_SO0_LOW					GPIOD_PCOR = 1<<1
#define QSPI_SO0_IS_OUTPUT				GPIOD_PDDR = 1<<1

#define QSPI_SO1_HIGH					GPIOD_PSOR = 1<<5
#define QSPI_SO1_LOW					GPIOD_PCOR = 1<<5
#define QSPI_SO1_IS_OUTPUT				GPIOD_PDDR = 1<<5


#define QSPI_SI0						(GPIOD_PDIR&(1<<0))
#define QSPI_SI0_IS_INPUT				GPIOD_PDDR = 1<<0
#define QSPI_SI1						(GPIOD_PDIR&(1<<4))
#define QSPI_SI11_IS_INPUT				GPIOD_PDDR = 1<<4


#define QSPI_READ	0x03
#define QSPI_WRITE	0x02
#define QSPI_EDIO	0x3B
#define QSPI_EQIO	0x38
#define QSPI_RSTIO	0xFF
#define QSPI_RDMR	0x05
#define QSPI_WRMR	0x01

void Init_QSPI()
{
    Init_QSPI_as_SPI();
    QSPI_EnterQuadMode();
}


void Init_QSPI_as_SPI()
{
    QSPI_CS_SET_AS_OUTPUT;
    QSPI_CLK_SET_AS_OUTPUT;
    QSPI_DATA_BUS_IS_INPUT;
    QSPI_SO0_IS_OUTPUT;
    QSPI_SO1_IS_OUTPUT;
    QSPI_SI0_IS_INPUT;
    QSPI_SI1_IS_INPUT;
}

//Transfers a single byte using the 1-bit wide protocol
//THis routine does not need to be optimized as it will only be called at boot;

void QSPI_SPI_Transfer(uint8_t DataOut0,uint8_t DataOut1,uint8_t *DataIn0,uint8_t *DataIn1)
{
    uint8_t i;
    uint8_t Mask = 1<<7;
    *DataIn0 = 0;
    *DataIn1 = 0;

    for(i=0; i<7; i++)
        {
            if(DataOut0 & Mask)
                QSPI_SO0_HIGH;
            else
                QSPI_SO0_LOW;

            if(DataOut1 & Mask)
                QSPI_SO1_HIGH;
            else
                QSPI_SO1_LOW;

            if(QSPI_SI0)
                *DataIn0 |= (Mask);

            if(QSPI_SI1)
                *DataIn1 |= (Mask);

            QSPI_CLK_HIGH;
            QSPI_CLK_LOW;
            Mask>>1;
        }
}

void QSPI_EnterQuadMode()
{
    uint8_t TmpA,TmpB;
    QSPI_CS_ENABLE;
    QSPI_SPI_Transfer(QSPI_EQIO,QSPI_EQIO,&TmpA,&TmpA);
    QSPI_CS_DISABLE;
}


void QSPI_Write_32(uint32 Address)








#endif
