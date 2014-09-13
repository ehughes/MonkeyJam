/*
 *	File: sai.c
 *	Purpose: SAI module driver
 *	Author: Wang Hao (B17539)
 *      Modified by Li Kan (B30657)
*/

#include "../../cpu/arm_cm4.h"
#include "derivative.h"
#include "sai.h"
#include "../frdm-k20-def.h"
#include "../../DSP/MathTables.h"
#include "../../DSP/AudioProcess.h"
#include "../IO.h"

/*
 *	I2S0 port pins
 *	I2S0_TX_BCLK - 	PTC3 or PTB18 or PTA5
 *	I2S0_TX_FS - 	PTC2 or PTB19  or PTA13
 *	I2S0_RX_BCLK - 	PTC9	or PTC6
 *	I2S0_RX_FS - 	PTC10 or PTC7
 * 	I2S0_RXD0 -	PTC5
 *	I2S0_RXD1 - 	PTC11
 *	I2S0_TXD0 -	PTC1  or PTA12
 *	I2S0_TXD1 - 	PTC0
 * 	I2S0_MCLK - 	PTC6 or PTC8
 *
 *
*/

/*
*	Input parameter
*	port:		SAI module used
*	setting:	which pin mux setting used, please refer to above pin mux settings available on 256BGA package for K70
*/

void sai_pinmux_init
(
    unsigned char   port,
    unsigned char   setting
)
{
    if(port == 0)
        {
            if(setting == 0)                        //using PORTC pins
                {
                    PORTC_PCR(3) = PORT_PCR_MUX(6);     //PTC3(ALT6), I2S0_TX_BCLK	-	J37 pin2
                    PORTC_PCR(2) = PORT_PCR_MUX(6);     //PTC2(ALT6), I2S0_TX_FS	-	J51 pin11 or 14
                    PORTC_PCR(9) = PORT_PCR_MUX(4);     //PTC9(ALT4), I2S0_RX_BCLK	-	J44 pin5
                    PORTC_PCR(10) = PORT_PCR_MUX(4);    //PTC10(ALT4), I2S0_RX_FS	-	J44 pin8
                    PORTC_PCR(5) = PORT_PCR_MUX(4);     //PTC5(ALT4), I2S0_RXD0	-	J37 pin8
                  //  PORTC_PCR(11) = PORT_PCR_MUX(4);    //PTC11(ALT4), I2S0_RXD1	-	J44 pin11
                    PORTC_PCR(1) = PORT_PCR_MUX(6);     //PTC1(ALT6), I2S0_TXD0	-	J51 pin5 or 8
           //         PORTC_PCR(0) = PORT_PCR_MUX(6);     //PTC0(ALT6), I2S0_TXD1	-	J51 pin2
                    PORTC_PCR(6) = PORT_PCR_MUX(6);     //PTC6(ALT6), I2S0_MCLK	-	J37 pin11
                    PORTC_PCR(8) = PORT_PCR_MUX(4);     //PTC6(ALT6), I2S0_MCLK	-	J37 pin11
                }
            else if(setting == 1)                   //using PORTA pins
                {
                    PORTA_PCR(5) = PORT_PCR_MUX(6);     //PTA5(ALT6), I2S0_TX_BCLK -	J35 pin8
                    PORTA_PCR(13) = PORT_PCR_MUX(6);    //PTA13(ALT6), I2S0_TX_FS -		J35 pin14
                    PORTC_PCR(6) = PORT_PCR_MUX(4);     //PTC6(ALT4), I2S0_RX_BCLK	-	J37 pin11
                    PORTC_PCR(7) = PORT_PCR_MUX(4);     //PTC7(ALT4), I2S0_RX_FS	-	J37 pin14
                    PORTC_PCR(5) = PORT_PCR_MUX(4);     //PTC5(ALT4), I2S0_RXD0	-
                    PORTC_PCR(11) = PORT_PCR_MUX(4);    //PTC11(ALT4), I2S0_RXD1 -
                    PORTA_PCR(12) = PORT_PCR_MUX(6);    //PTA12(ALT6), I2S0_TXD0	-	J35 pin11
                    PORTC_PCR(0) = PORT_PCR_MUX(6);     //PTC0(ALT6), I2S0_TXD1 -
                    PORTC_PCR(8) = PORT_PCR_MUX(4);     //PTC8(ALT4), I2S0_MCLK	-	J44 pin2
                }
        }
    else if(port == 1)
        {
        }
}

/*
*	Input Parameter:
*/

void sai_stop_dbg_enable
(
    unsigned char   port,
    unsigned char   tx,
    unsigned char   stope,
    unsigned char   dbge
)
{
    if(port == 0)
        {
            if(tx)
                {
                    if(stope) I2S_TCSR_REG(I2S0_BASE_PTR) |= I2S_TCSR_STOPE_MASK;   //stop enable
                    else
                        I2S_TCSR_REG(I2S0_BASE_PTR) &= ~I2S_TCSR_STOPE_MASK;        //stop disable

                    if(dbge) I2S_TCSR_REG(I2S0_BASE_PTR) |= I2S_TCSR_DBGE_MASK;     //debug enable
                    else
                        I2S_TCSR_REG(I2S0_BASE_PTR) &= ~I2S_TCSR_DBGE_MASK;         //debug disable
                }
            else
                {
                    if(stope) I2S_RCSR_REG(I2S0_BASE_PTR) |= I2S_RCSR_STOPE_MASK;   //stop enable
                    else
                        I2S_RCSR_REG(I2S0_BASE_PTR) &= ~I2S_RCSR_STOPE_MASK;        //stop disable

                    if(dbge) I2S_RCSR_REG(I2S0_BASE_PTR) |= I2S_RCSR_DBGE_MASK;     //debug enable
                    else
                        I2S_RCSR_REG(I2S0_BASE_PTR) &= ~I2S_RCSR_DBGE_MASK;         //debug disable
                }
        }
    else if(port == 1)
        {
            //	("Error: Port %d is not available yet.",port);
        }
}

/* */

void sai_fifo_reset
(
    unsigned char   port,
    unsigned char   tx
)
{
    if(port == 0)
        {
            if(tx) I2S_TCSR_REG(I2S0_BASE_PTR) |= I2S_TCSR_FR_MASK; //FIFO reset
            else
                I2S_RCSR_REG(I2S0_BASE_PTR) |= I2S_RCSR_FR_MASK;    //FIFO reset
        }
    else if(port == 1)
        {
            //("Error: Port %d is not available yet.",port);
        }
}

/* */

void sai_soft_reset
(
    unsigned char   port,
    unsigned char   tx
)
{
    if(port == 0)
        {
            if(tx)
                {
                    I2S_TCSR_REG(I2S0_BASE_PTR) |= I2S_TCSR_SR_MASK;    //software reset
                    I2S_TCSR_REG(I2S0_BASE_PTR) &= ~I2S_TCSR_SR_MASK;   //clear software reset bit since it's sticky
                }
            else
                {
                    I2S_RCSR_REG(I2S0_BASE_PTR) |= I2S_RCSR_SR_MASK;    //software reset
                    I2S_RCSR_REG(I2S0_BASE_PTR) &= ~I2S_RCSR_SR_MASK;   //clear software reset bit since it's sticky
                }
        }
    else if(port == 1)
        {
        }
}

/* */

void sai_interrupt_enable
(
    unsigned char   port,
    unsigned char   tx
)
{
    if(port == 0)
        {
            if(tx)
                {
                    I2S_TCSR_REG(I2S0_BASE_PTR) |= //I2S_TCSR_WSIE_MASK   //word start interrupt enable
                        //| I2S_TCSR_SEIE_MASK    //sync error interrupt enable
                        //| I2S_TCSR_FEIE_MASK    //FIFO error interrupt enable
                        // | I2S_TCSR_FWIE_MASK    //FIFO warning interrupt enable
                        I2S_TCSR_FRIE_MASK;    //FIFO request interrupt enable
                    ;
                }
            else
                {
                    I2S_RCSR_REG(I2S0_BASE_PTR) |= I2S_RCSR_FRIE_MASK;  //word start interrupt enabl	//FIFO request interrupt enable
                    //    I2S_RCSR_REG(I2S0_BASE_PTR) |= I2S_RCSR_WSIE_MASK;  //word start interrupt enabl	//FIFO request interrupt enable
                }
        }
    else if(port == 1)
        {
        }
}

/* */

void sai_clear_flags
(
    unsigned char   port,
    unsigned char   tx
)
{
    /* add code for checking if input parameter is valid */
    if(port == 0)
        {
            /* SAI0 init */
            if(tx)
                {
                    I2S_TCSR_REG(I2S0_BASE_PTR) |= I2S_TCSR_WSF_MASK    //clear word start flag
                                                   | I2S_TCSR_SEF_MASK //clear sync error flag
                                                   | I2S_TCSR_FEF_MASK //clear FIFO error flag
                                                   | I2S_TCSR_FWF_MASK //clear FIFO warning flag
                                                   | I2S_TCSR_FRF_MASK //clear FIFO request flag
                                                   ;
                }
            else
                {
                    I2S_RCSR_REG(I2S0_BASE_PTR) |= I2S_RCSR_WSF_MASK    //clear word start flag
                                                   | I2S_RCSR_SEF_MASK //clear sync error flag
                                                   | I2S_RCSR_FEF_MASK //clear FIFO error flag
                                                   | I2S_RCSR_FWF_MASK //clear FIFO warning flag
                                                   | I2S_RCSR_FRF_MASK //clear FIFO request flag
                                                   ;
                }
        }
    else if(port == 1)
        {
            /* SAI1 init */
        }
}

/* */

void sai_fifo_request_dma_enable
(
    unsigned char   port,
    unsigned char   tx
)
{
    if(port == 0)
        {
            if(tx)
                {
                    I2S_TCSR_REG(I2S0_BASE_PTR) |= I2S_TCSR_FRDE_MASK   //FIFO request DMA enable
                                                   ;
                }
            else
                {
                    I2S_RCSR_REG(I2S0_BASE_PTR) |= I2S_RCSR_FRDE_MASK   //FIFO request DMA enable
                                                   ;
                }
        }
}

/* */

void sai_fifo_warning_dma_enable
(
    unsigned char   port,
    unsigned char   tx
)
{
    if(port == 0)
        {
            if(tx)
                {
                    I2S_TCSR_REG(I2S0_BASE_PTR) |= I2S_TCSR_FWDE_MASK   //FIFO warning DMA enable
                                                   ;
                }
            else
                {
                    I2S_RCSR_REG(I2S0_BASE_PTR) |= I2S_RCSR_FWDE_MASK   //FIFO warning DMA enable
                                                   ;
                }
        }
    else if(port == 1)
        {
            //	("Error: Port %d is not available yet.",port);
        }
}

/* */

void sai_enable
(
    unsigned char   port,
    unsigned char   tx
)
{
    if(port == 0)
        {
            if(tx) I2S_TCSR_REG(I2S0_BASE_PTR) |= I2S_TCSR_TE_MASK; //transmit enable
            else
                I2S_RCSR_REG(I2S0_BASE_PTR) |= I2S_RCSR_RE_MASK;    //receive enable
        }
    else if(port == 1)
        {
            //("Error: Port %d is not available yet.",port);
        }
}

/* */

void sai_disable
(
    unsigned char   port,
    unsigned char   tx
)
{
    if(port == 0)
        {
            if(tx) I2S_TCSR_REG(I2S0_BASE_PTR) &= ~I2S_TCSR_TE_MASK;    //transmit disable
            else
                I2S_RCSR_REG(I2S0_BASE_PTR) &= ~I2S_RCSR_RE_MASK;       //receive disable
        }
    else if(port == 1)
        {
            //	("Error: Port %d is not available yet.",port);
        }
}

/*
*	Input parameter
*/

void sai_watermark_config
(
    unsigned char   port,
    unsigned char   tx,
    unsigned char   watermark
)
{
    if(port == 0)
        {
            if(tx) I2S_TCR1_REG(I2S0_BASE_PTR) = watermark; //tx FIFO watermark
            else
                I2S_RCR1_REG(I2S0_BASE_PTR) = watermark;    //rx FIFO watermark
        }
    else if(port == 1)
        {
        }
}

/*
*	Input parameter:
*	port:		SAI port used
*	tx:		transmit or receive
*	mode:		synchronous mode
*	bcs:		bit clock swap
*	bci:		bit clock input
*/

void sai_mode_config
(
    unsigned char   port,
    unsigned char   tx,
    unsigned char   mode,
    unsigned char   bcs,
    unsigned char   bci
)
{
    if(port == 0)
        {
            if(tx)
                {
                    I2S_TCR2_REG(I2S0_BASE_PTR) |= I2S_TCR2_SYNC(mode);         //configure SAI synchronous mode

                    if(bcs) I2S_TCR2_REG(I2S0_BASE_PTR) |= I2S_TCR2_BCS_MASK;   //bit clock swap
                    else
                        I2S_TCR2_REG(I2S0_BASE_PTR) &= ~I2S_TCR2_BCS_MASK;

                    if(bci) I2S_TCR2_REG(I2S0_BASE_PTR) |= I2S_TCR2_BCI_MASK;   //internal logic clocked by external bit clock
                    else
                        I2S_TCR2_REG(I2S0_BASE_PTR) &= ~I2S_TCR2_BCI_MASK;
                }
            else
                {
                    I2S_RCR2_REG(I2S0_BASE_PTR) |= I2S_RCR2_SYNC(mode);         //configure SAI synchronous mode

                    if(bcs) I2S_RCR2_REG(I2S0_BASE_PTR) |= I2S_RCR2_BCS_MASK;   //bit clock swap
                    else
                        I2S_RCR2_REG(I2S0_BASE_PTR) &= ~I2S_RCR2_BCS_MASK;

                    if(bci) I2S_RCR2_REG(I2S0_BASE_PTR) |= I2S_RCR2_BCI_MASK;   //internal logic clocked by external bit clock
                    else
                        I2S_RCR2_REG(I2S0_BASE_PTR) &= ~I2S_RCR2_BCI_MASK;
                }
        }
    else if(port == 1)
        {
        }
}

/*
*	Input parameter:
*	port:		SAI module used
*	tx:		transmit or receive
*	mclksel:	select master clock to generate internal bit clock, ignored when configured for external generated bit clock
*	bclkpol:	bit clock polarity
*	bclkdir:	bit clock direction
*	bclkdiv:	bit clock divide, division value is (DIV+1)*2
*/

void sai_bclk_config
(
    unsigned char   port,
    unsigned char   tx,
    unsigned char   mclksel,
    unsigned char   bclkpol,
    unsigned char   bclkdir,
    unsigned char   bclkdiv
)
{
    if(port == 0)
        {
            /* SAI0 init */
            if(tx)
                {
                    I2S_TCR2_REG(I2S0_BASE_PTR) &= ~I2S_TCR2_MSEL_MASK;     //clear master clock select
                    I2S_TCR2_REG(I2S0_BASE_PTR) &= ~I2S_TCR2_DIV_MASK;      //divide down master clock to generate bit clock
                    I2S_TCR2_REG(I2S0_BASE_PTR) |= I2S_TCR2_MSEL(mclksel)   //master clock select
                                                   | I2S_TCR2_DIV(bclkdiv) //divide down master clock to generate bit clock
                                                   ;

                    if(bclkpol) I2S_TCR2_REG(I2S0_BASE_PTR) |= I2S_TCR2_BCP_MASK;   //bit clock is active low
                    else
                        I2S_TCR2_REG(I2S0_BASE_PTR) &= ~I2S_TCR2_BCP_MASK;          //bit clock is active high

                    if(bclkdir) I2S_TCR2_REG(I2S0_BASE_PTR) |= I2S_TCR2_BCD_MASK;   //bit clock generated internally, master mode
                    else
                        I2S_TCR2_REG(I2S0_BASE_PTR) &= ~I2S_TCR2_BCD_MASK;          //bit clock generated externally, slave mode
                }
            else
                {
                    I2S_RCR2_REG(I2S0_BASE_PTR) &= ~I2S_RCR2_MSEL_MASK;             //clear master clock select
                    I2S_RCR2_REG(I2S0_BASE_PTR) &= ~I2S_RCR2_DIV_MASK;              //divide down master clock to generate bit clock
                    I2S_RCR2_REG(I2S0_BASE_PTR) |= I2S_RCR2_MSEL(mclksel)           //master clock select
                                                   | I2S_RCR2_DIV(bclkdiv) //divide down master clock to generate bit clock
                                                   ;

                    if(bclkpol) I2S_RCR2_REG(I2S0_BASE_PTR) |= I2S_RCR2_BCP_MASK;   //bit clock is active low
                    else
                        I2S_RCR2_REG(I2S0_BASE_PTR) &= ~I2S_RCR2_BCP_MASK;          //bit clock is active high

                    if(bclkdir) I2S_RCR2_REG(I2S0_BASE_PTR) |= I2S_RCR2_BCD_MASK;   //bit clock generated internally, master mode
                    else
                        I2S_RCR2_REG(I2S0_BASE_PTR) &= ~I2S_RCR2_BCD_MASK;          //bit clock generated externally, slave mode
                }
        }
    else if(port == 1)
        {
            /* SAI1 init */
            //("Error: Port %d is not available yet.",port);
        }
}

/* */

void sai_bclk_en
(
    unsigned char   port,
    unsigned        tx
)
{
    if(port == 0)
        {
            if(tx) I2S_TCSR_REG(I2S0_BASE_PTR) |= I2S_TCSR_BCE_MASK;    //transmit enable
            else
                I2S_RCSR_REG(I2S0_BASE_PTR) |= I2S_RCSR_BCE_MASK;       //receive enable
        }
    else if(port == 1)
        {
            //("Error: Port %d is not available yet.",port);
        }
}

/* */

void sai_bclk_dis
(
    unsigned char   port,
    unsigned        tx
)
{
    if(port == 0)
        {
            if(tx) I2S_TCSR_REG(I2S0_BASE_PTR) &= ~I2S_TCSR_BCE_MASK;   //transmit enable
            else
                I2S_RCSR_REG(I2S0_BASE_PTR) &= ~I2S_RCSR_BCE_MASK;      //receive enable
        }
    else if(port == 1)
        {
            //("Error: Port %d is not available yet.",port);
        }
}

/*
*	Input parameter:
*	port:		SAI module used
*	tx:		transmit or receive
*	chen:		channel enable, 0x01 enable channel one, 0x02 enable channel two, 0x03 enable both channel
*/

void sai_channel_enable
(
    unsigned char   port,
    unsigned char   tx,
    unsigned char   chen
)
{
    if(port == 0)
        {
            if(tx) I2S_TCR3_REG(I2S0_BASE_PTR) |= I2S_TCR3_TCE(chen);   //tx channel enable
            else
                I2S_RCR3_REG(I2S0_BASE_PTR) |= I2S_RCR3_RCE(chen);      //rx channel enable
        }
    else if(port == 1)
        {
            //	("Error: Port %d is not available yet.",port);
        }
}

/*
*	Input parameter:
*	port:		SAI module used
*	tx:		transmit or receive
*	chen:		channel disable, 0x01 disable channel one, 0x02 disable channel two, 0x03 disable both channel
*/

void sai_channel_disable
(
    unsigned char   port,
    unsigned char   tx,
    unsigned char   chen
)
{
    if(port == 0)
        {
            if(tx) I2S_TCR3_REG(I2S0_BASE_PTR) &= ~I2S_TCR3_TCE(chen);  //tx channel enable
            else
                I2S_RCR3_REG(I2S0_BASE_PTR) &= ~I2S_RCR3_RCE(chen);     //rx channel enable
        }
    else if(port == 1)
        {
        }
}

/*
*	Input parameter
*	port:		SAI module used
*	tx:		transmit or receive
*	wdfl:		configure which word the start of flag is set, should be configured less than frame size
*/

void sai_word_flg_config
(
    unsigned char   port,
    unsigned char   tx,
    unsigned char   wdfl
)
{
    if(port == 0)
        {
            if(tx) I2S_TCR3_REG(I2S0_BASE_PTR) |= I2S_TCR3_WDFL(wdfl);  //word flag config
            else
                I2S_RCR3_REG(I2S0_BASE_PTR) |= I2S_RCR3_WDFL(wdfl);     //word flag config
        }
    else if(port == 1)
        {
        }
}

/*
*	Input parameter:
*	port:			SAI module used
*	tx:			transmit or receive
*	framesize:	 	configure number of words in each frame, maximum supported frame size is 32
*	sywd:			configure length of the frame sync in number of bit clocks
*	mf:			specify LSB or MSB first
*/

void sai_frame_config
(
    unsigned char   port,
    unsigned char   tx,
    unsigned char   framesize,
    unsigned char   sywd,
    unsigned char   mf
)
{
    if(port == 0)
        {
            if(tx)
                {
                    I2S_TCR4_REG(I2S0_BASE_PTR) &= ~I2S_TCR4_FRSZ_MASK;
                    I2S_TCR4_REG(I2S0_BASE_PTR) &= ~I2S_TCR4_SYWD_MASK;
                    I2S_TCR4_REG(I2S0_BASE_PTR) |= I2S_TCR4_FRSZ(framesize) //configure number of words in each frame
                                                   | I2S_TCR4_SYWD(sywd)   //configure length of the frame sync in number of bit clocks
                                                   ;

                    if(mf) I2S_TCR4_REG(I2S0_BASE_PTR) |= I2S_TCR4_MF_MASK; //MSB transmit first
                    else
                        I2S_TCR4_REG(I2S0_BASE_PTR) &= ~I2S_TCR4_MF_MASK;   //LSB transmit first
                }
            else
                {
                    I2S_RCR4_REG(I2S0_BASE_PTR) &= ~I2S_RCR4_FRSZ_MASK;
                    I2S_RCR4_REG(I2S0_BASE_PTR) &= ~I2S_RCR4_SYWD_MASK;
                    I2S_RCR4_REG(I2S0_BASE_PTR) |= I2S_RCR4_FRSZ(framesize) //configure number of words in each frame
                                                   | I2S_RCR4_SYWD(sywd)   //configure length of the frame sync in number of bit clocks
                                                   ;

                    if(mf) I2S_RCR4_REG(I2S0_BASE_PTR) |= I2S_RCR4_MF_MASK; //MSB transmit first
                    else
                        I2S_RCR4_REG(I2S0_BASE_PTR) &= ~I2S_RCR4_MF_MASK;   //LSB transmit first
                }
        }
    else if(port == 1)
        {
        }
}

/*
*	Input parameter
*	port:		SAI module used
*	tx:		transmit or receive
*	fse:		frame sync early
*	fsp:		frame sync polarity
*	fsd:		frame sync direction
*/

void sai_frameclk_config
(
    unsigned char   port,
    unsigned char   tx,
    unsigned char   fse,
    unsigned char   fsp,
    unsigned char   fsd
)
{
    if(port == 0)
        {
            if(tx)
                {
                    if(fse) I2S_TCR4_REG(I2S0_BASE_PTR) |= I2S_TCR4_FSE_MASK;   //frame sync early
                    else
                        I2S_TCR4_REG(I2S0_BASE_PTR) &= ~I2S_TCR4_FSE_MASK;

                    if(fsp) I2S_TCR4_REG(I2S0_BASE_PTR) |= I2S_TCR4_FSP_MASK;   //frame sync active low
                    else
                        I2S_TCR4_REG(I2S0_BASE_PTR) &= ~I2S_TCR4_FSP_MASK;      //frame sync active high

                    if(fsd) I2S_TCR4_REG(I2S0_BASE_PTR) |= I2S_TCR4_FSD_MASK;   //frame sync generated internally, master mode
                    else
                        I2S_TCR4_REG(I2S0_BASE_PTR) &= ~I2S_TCR4_FSD_MASK;      //frame sync generated externally, slave mode
                }
            else
                {
                    if(fse) I2S_RCR4_REG(I2S0_BASE_PTR) |= I2S_RCR4_FSE_MASK;   //frame sync early
                    else
                        I2S_RCR4_REG(I2S0_BASE_PTR) &= ~I2S_RCR4_FSE_MASK;

                    if(fsp) I2S_RCR4_REG(I2S0_BASE_PTR) |= I2S_RCR4_FSP_MASK;   //frame sync active low
                    else
                        I2S_RCR4_REG(I2S0_BASE_PTR) &= ~I2S_RCR4_FSP_MASK;      //frame sync active high

                    if(fsd) I2S_RCR4_REG(I2S0_BASE_PTR) |= I2S_RCR4_FSD_MASK;   //frame sync generated internally, master mode
                    else
                        I2S_RCR4_REG(I2S0_BASE_PTR) &= ~I2S_RCR4_FSD_MASK;      //frame sync generated externally, slave mode
                }
        }
    else if(port == 1)
        {
        }
}

/*
*	Input parameter
*	port:		SAI module used
*	tx:		transmit or receive
*	wnw:		word N width
*	w0w:		word 0 width
*	fbt:		configure the bit index of the first bit transmitted for each word in the frame
*/

void sai_wordlength_config
(
    unsigned char   port,
    unsigned char   tx,
    unsigned char   wnw,
    unsigned char   w0w,
    unsigned char   fbt
)
{
    if(port == 0)
        {
            if(tx)
                {
                    I2S_TCR5_REG(I2S0_BASE_PTR) &= ~I2S_TCR5_WNW_MASK;
                    I2S_TCR5_REG(I2S0_BASE_PTR) &= ~I2S_TCR5_W0W_MASK;
                    I2S_TCR5_REG(I2S0_BASE_PTR) &= ~I2S_TCR5_FBT_MASK;
                    I2S_TCR5_REG(I2S0_BASE_PTR) |= I2S_TCR5_WNW(wnw)    //configure number of bits in each word except first in frame
                                                   | I2S_TCR5_W0W(w0w) //configure number of bits for first word in each frame
                                                   | I2S_TCR5_FBT(fbt) //configure bit index of first bit transmitted of each word
                                                   ;
                }
            else
                {
                    I2S_RCR5_REG(I2S0_BASE_PTR) &= ~I2S_RCR5_WNW_MASK;
                    I2S_RCR5_REG(I2S0_BASE_PTR) &= ~I2S_RCR5_W0W_MASK;
                    I2S_RCR5_REG(I2S0_BASE_PTR) &= ~I2S_RCR5_FBT_MASK;
                    I2S_RCR5_REG(I2S0_BASE_PTR) |= I2S_RCR5_WNW(wnw)    //configure number of bits in each word except first in frame
                                                   | I2S_RCR5_W0W(w0w) //configure number of bits for first word in each frame
                                                   | I2S_RCR5_FBT(fbt) //configure bit index of first bit transmitted of each word
                                                   ;
                }
        }
    else if(port == 1)
        {
        }
}

/* */

unsigned char sai_tx
(
    unsigned char   port,
    unsigned char   channel,
    unsigned int    txdata
)
{
    if(sai_tx_fifo_status(port, channel) == FIFO_FULL)
        {
            return ERROR;
        }

    if(port == 0)
        {
            I2S_TDR_REG(I2S0_BASE_PTR, channel) = txdata;
        }
    else if(port == 1)
        {
        }

    return OK;
}

/* Direct write tdr, no checking on whether FIFO is full or not */

void sai_wr_tdr
(
    unsigned char   port,
    unsigned char   channel,
    unsigned int    txdata
)
{
    if(port == 0)
        {
            I2S_TDR_REG(I2S0_BASE_PTR, channel) = txdata;
        }
    else if(port == 1)
        {
        }
}

/* */

unsigned char sai_rx
(
    unsigned char   port,
    unsigned char   channel,
    unsigned int    *rxdata
)
{
    if(sai_rx_fifo_status(port, channel) == FIFO_EMPTY)
        {
            return ERROR;
        }

    if(port == 0)
        {
            *rxdata = I2S_RDR_REG(I2S0_BASE_PTR, channel);
        }
    else if(port == 1)
        {
        }

    return OK;
}

/* direct read from rdr, no checking on whether FIFO is empty or not */

void sai_rd_rdr
(
    unsigned char   port,
    unsigned char   channel,
    unsigned int    *rxdata
)
{
    if(port == 0)
        {
            *rxdata = I2S_RDR_REG(I2S0_BASE_PTR, channel);
        }
    else if(port == 1)
        {
        }
}

/* */

unsigned char sai_tx_fifo_status
(
    unsigned char   port,
    unsigned char   channel
)
{
    /*~~~~~~~~~~~~~~~~~~~~~~~~*/
    /*~~~~~~~~~~~~~~~~~~~~~~~~*/
    /*~~~~~~~~~~~~~~~~~~~~~~~~*/
    /*~~~~~~~~~~~~~~~~~~~~~~~~*/
    /*~~~~~~~~~~~~~~~~~~~~~~~~*/
    /*~~~~~~~~~~~~~~~~~~~~~~~~*/
    unsigned char   wr_fp = 0;  //write FIFO pointer
    unsigned char   rd_fp = 0;  //read FIFO pointer

    /*~~~~~~~~~~~~~~~~~~~~~~~~*/

    /*~~~~~~~~~~~~~~~~~~~~~~~~*/

    /*~~~~~~~~~~~~~~~~~~~~~~~~*/

    /*~~~~~~~~~~~~~~~~~~~~~~~~*/

    /*~~~~~~~~~~~~~~~~~~~~~~~~*/

    /*~~~~~~~~~~~~~~~~~~~~~~~~*/

    if(port == 0)
        {
            wr_fp = (I2S_TFR_REG(I2S0_BASE_PTR, channel) & I2S_TFR_WFP_MASK) >> I2S_TFR_WFP_SHIFT;
            rd_fp = (I2S_TFR_REG(I2S0_BASE_PTR, channel) & I2S_TFR_RFP_MASK) >> I2S_TFR_RFP_SHIFT;

            if(wr_fp == rd_fp)
                return FIFO_EMPTY;
            else if((wr_fp & 0x08) != (rd_fp & 0x08))
                return FIFO_FULL;
        }
    else if(port == 1)
        {
        }

    return ERROR;
}

/* */

unsigned char sai_rx_fifo_status
(
    unsigned char   port,
    unsigned char   channel
)
{
    /*~~~~~~~~~~~~~~~~~~~~~~~~*/
    /*~~~~~~~~~~~~~~~~~~~~~~~~*/
    /*~~~~~~~~~~~~~~~~~~~~~~~~*/
    /*~~~~~~~~~~~~~~~~~~~~~~~~*/
    /*~~~~~~~~~~~~~~~~~~~~~~~~*/
    /*~~~~~~~~~~~~~~~~~~~~~~~~*/
    unsigned char   wr_fp = 0;  //write FIFO pointer
    unsigned char   rd_fp = 0;  //read FIFO pointer

    /*~~~~~~~~~~~~~~~~~~~~~~~~*/

    /*~~~~~~~~~~~~~~~~~~~~~~~~*/

    /*~~~~~~~~~~~~~~~~~~~~~~~~*/

    /*~~~~~~~~~~~~~~~~~~~~~~~~*/

    /*~~~~~~~~~~~~~~~~~~~~~~~~*/

    /*~~~~~~~~~~~~~~~~~~~~~~~~*/

    if(port == 0)
        {
            wr_fp = (I2S_RFR_REG(I2S0_BASE_PTR, channel) & I2S_RFR_WFP_MASK) >> I2S_RFR_WFP_SHIFT;
            rd_fp = (I2S_RFR_REG(I2S0_BASE_PTR, channel) & I2S_RFR_RFP_MASK) >> I2S_RFR_RFP_SHIFT;

            if(wr_fp == rd_fp)
                return FIFO_EMPTY;
            else if((wr_fp & 0x08) != (rd_fp & 0x08))
                return FIFO_FULL;
        }
    else if(port == 1)
        {
        }

    return ERROR;
}

/*
*	Input parameter
*	port:		SAI module used
*	tx:		transmit or receive
*	mask:		mask for each word in frame, if any bit in mask is set, then that word is tristated
*/

void sai_mask_config
(
    unsigned char   port,
    unsigned char   tx,
    unsigned int    mask
)
{
    if(port == 0)
        {
            if(tx) I2S_TMR_REG(I2S0_BASE_PTR) = mask;   //tx word mask
            else
                I2S_RMR_REG(I2S0_BASE_PTR) = mask;      //rx word mask
        }
    else if(port == 1)
        {
        }
}

/* */

void sai_mclk_config
(
    unsigned char   port,
    unsigned char   mics,
    unsigned char   moe,
    unsigned char   fract,
    uint32_t        divide
)
{
    if(port == 0)
        {
            /*
                                                            *	MICS		MCLK divider input clock
                                                            *	00		system clock
                                                            *	01		OSC0ERCLK
                                                            *	10		OSC1ERCLK
                                                            *	11		MCGPLLCLK
                                                                    *	100		MCGFLLCLK
                                                            */
            I2S_MCR_REG(I2S0_BASE_PTR) &= ~I2S_MCR_MICS_MASK;

            if(mics == MCGPLLCLK) SIM_SOPT2 |= SIM_SOPT2_PLLFLLSEL_MASK;    //MCGPLLCLK is selected

            if(mics == MCGFLLCLK)
                {
                    SIM_SOPT2 &= ~SIM_SOPT2_PLLFLLSEL_MASK;                     //MCGFLLCLK is selected
                    mics = MCGPLLCLK;
                }

            I2S_MCR_REG(I2S0_BASE_PTR) |= I2S_MCR_MICS(mics);               //MCLK divider input clock select
            /*
                                                            *	MCLK output = MCLK input * ((FRACT+1)/(DIVIDE+1))
                                                            */
            I2S_MDR_REG(I2S0_BASE_PTR) &= ~I2S_MDR_FRACT_MASK;
            I2S_MDR_REG(I2S0_BASE_PTR) &= ~I2S_MDR_DIVIDE_MASK;
            I2S_MDR_REG(I2S0_BASE_PTR) |= I2S_MDR_FRACT(fract)              //MCLK fraction
                                          | I2S_MDR_DIVIDE(divide)    //MCLK divide
                                          ;

            /*
                                                            *	Please note that MICS field cannot be changed once MCLK divider enabled, because MOE bit will enable MCLK divider and configure MCLK pin as output,
                                                            *	so MOE bit needs to be set after setting MICS, otherwise the change to MICS bit will not be valid!!!
                                                            */

            if(moe) I2S_MCR_REG(I2S0_BASE_PTR) |= I2S_MCR_MOE_MASK; //SAI_MCLK configure as output from MCLK divider
            else
                I2S_MCR_REG(I2S0_BASE_PTR) &= ~I2S_MCR_MOE_MASK;    //SAI_MCLK configured as input which bypass MCLK divider
        }
    else if(port == 1)
        {
        }
}

/* */

void sai_clear_reg
(unsigned char   port)
{
    if(port == 0)
        {
            I2S_TCSR_REG(I2S0_BASE_PTR) = 0x001c0000;   //clear wsf, sef and fef flags
            I2S_TCR1_REG(I2S0_BASE_PTR) = 0x0;
            I2S_TCR2_REG(I2S0_BASE_PTR) = 0x0;
            I2S_TCR3_REG(I2S0_BASE_PTR) = 0x0;
            I2S_TCR4_REG(I2S0_BASE_PTR) = 0x0;
            I2S_TCR5_REG(I2S0_BASE_PTR) = 0x0;
            //soft reset, reset internal tranmit logic and FIFO pointers, this operation will clear TDR and TFR, don't try to write 0 to TDR for reg clear, any write to TDR will increment TFR
            sai_soft_reset(port, TX);
            I2S_TMR_REG(I2S0_BASE_PTR) = 0x0;

            /* Loop till TE bit is cleared */

            while(I2S_TCSR_REG(I2S0_BASE_PTR) & I2S_TCSR_TE_MASK) I2S_TCSR_REG(I2S0_BASE_PTR) &= ~I2S_TCSR_TE_MASK;     //clear TE

            /* Loop till BCE bit cleared */

            while(I2S_TCSR_REG(I2S0_BASE_PTR) & I2S_TCSR_BCE_MASK) I2S_TCSR_REG(I2S0_BASE_PTR) &= ~I2S_TCSR_BCE_MASK;   //clear BE

            I2S_RCSR_REG(I2S0_BASE_PTR) = 0x001c0000;   //clear wsf, sef and fef flags
            I2S_RCR1_REG(I2S0_BASE_PTR) = 0x0;
            I2S_RCR2_REG(I2S0_BASE_PTR) = 0x0;
            I2S_RCR3_REG(I2S0_BASE_PTR) = 0x0;
            I2S_RCR4_REG(I2S0_BASE_PTR) = 0x0;
            I2S_RCR5_REG(I2S0_BASE_PTR) = 0x0;
            //soft reset, reset internal receive logic and FIFO pointers, this operation will clear RDR and RFR, don't try to write 0 to RDR for reg clear, any write to RDR will increment RFR
            sai_soft_reset(port, RX);
            I2S_RMR_REG(I2S0_BASE_PTR) = 0x0;

            /* Loop till RE bit clear */

            while(I2S_RCSR_REG(I2S0_BASE_PTR) & I2S_RCSR_RE_MASK) I2S_RCSR_REG(I2S0_BASE_PTR) &= ~I2S_RCSR_RE_MASK;     //clear RE

            /* Loop till BCE bit clear */

            while(I2S_RCSR_REG(I2S0_BASE_PTR) & I2S_RCSR_BCE_MASK) I2S_RCSR_REG(I2S0_BASE_PTR) &= ~I2S_RCSR_BCE_MASK;   //clear BCE

            //Clearing MCR register is a bit tricky, first disable MOE bit, then clear MDR, then change MICS to 0x0
            I2S_MCR_REG(I2S0_BASE_PTR) &= ~I2S_MCR_MOE_MASK;
            I2S_MDR_REG(I2S0_BASE_PTR) = 0x0;
            I2S_MCR_REG(I2S0_BASE_PTR) = I2S_MCR_MICS(0x0);
        }
    else if(port == 1)
        {
        }
}

/* */

void sai_monitor_fifo_status
(
    unsigned char   port,
    unsigned char   channel
)
{
    if(port == 0)
        {
        }
    else if(port == 1)
        {
        }
}

/* */

void sai_inteprete_flag
(
    unsigned char   port,
    unsigned char   tx
)
{
    if(port == 0)
        {
            if(tx)
                {
                    if(I2S_TCSR_REG(I2S0_BASE_PTR) & I2S_TCSR_WSF_MASK)
                        {
                            //indicate start of configured word has been detected
                            I2S_TCSR_REG(I2S0_BASE_PTR) |= I2S_TCSR_WSF_MASK;   //clear flag
                            //("word start flag set\n");
                        }
                    else if(I2S_TCSR_REG(I2S0_BASE_PTR) & I2S_TCSR_SEF_MASK)
                        {
                            //indicate error in the externally generated frame sync has been detected
                            I2S_TCSR_REG(I2S0_BASE_PTR) |= I2S_TCSR_SEF_MASK;
                        }
                    else if(I2S_TCSR_REG(I2S0_BASE_PTR) & I2S_TCSR_FEF_MASK)
                        {
                            //indicate an enabled transmit FIFO has underrun
                            I2S_TCSR_REG(I2S0_BASE_PTR) |= I2S_TCSR_FEF_MASK;   //clear flag
                        }
                    else if(I2S_TCSR_REG(I2S0_BASE_PTR) & I2S_TCSR_FWF_MASK)
                        {
                            //indicate an enabled transmit FIFO is empty
                            I2S_TCSR_REG(I2S0_BASE_PTR) |= I2S_TCSR_FWF_MASK;   //clear flag
                        }
                    else if(I2S_TCSR_REG(I2S0_BASE_PTR) & I2S_TCSR_FRF_MASK)
                        {
                            //indicates number of words in an enabled transmit FIFO is less than or equal to the transmit FIFO watermark
                            I2S_TCSR_REG(I2S0_BASE_PTR) |= I2S_TCSR_FRF_MASK;   //clear flag
                        }
                }
            else
                {
                    if(I2S_RCSR_REG(I2S0_BASE_PTR) & I2S_RCSR_WSF_MASK)
                        {
                            //indicate start of configured word has been detected
                            I2S_RCSR_REG(I2S0_BASE_PTR) |= I2S_RCSR_WSF_MASK;   //clear flag
                        }
                    else if(I2S_RCSR_REG(I2S0_BASE_PTR) & I2S_RCSR_SEF_MASK)
                        {
                            //indicate error in the externally generated frame sync has been detected
                            I2S_RCSR_REG(I2S0_BASE_PTR) |= I2S_RCSR_SEF_MASK;
                        }
                    else if(I2S_RCSR_REG(I2S0_BASE_PTR) & I2S_RCSR_FEF_MASK)
                        {
                            //indicate an enabled receive FIFO has overflowed
                            I2S_RCSR_REG(I2S0_BASE_PTR) |= I2S_RCSR_FEF_MASK;   //clear flag
                        }
                    else if(I2S_RCSR_REG(I2S0_BASE_PTR) & I2S_RCSR_FWF_MASK)
                        {
                            //indicate an enabled receive FIFO is full
                            I2S_RCSR_REG(I2S0_BASE_PTR) |= I2S_RCSR_FWF_MASK;   //clear flag
                        }
                    else if(I2S_RCSR_REG(I2S0_BASE_PTR) & I2S_RCSR_FRF_MASK)
                        {
                            //indicates number of words in an enabled receive FIFO is greater than the receive FIFO watermark
                            I2S_RCSR_REG(I2S0_BASE_PTR) |= I2S_RCSR_FRF_MASK;   //clear flag
                        }
                }
        }
    else if(port == 1)
        {
        }
}




void sai0_rx_isr(void)
{
    //Clear the IRQ Flag
    I2S_RCSR_REG(I2S0_BASE_PTR) &= ~(I2S_RCSR_FRF_MASK);
   
    LeftIn = I2S0_RDR0;
    RightIn = I2S0_RDR0;

    //Sign extend the 24-bit data to q31_t;

    if(LeftIn & (1<<23))
        LeftIn |= 0xFF000000;
    else
        LeftIn &=~0xFF000000;;

    if(RightIn & (1<<23))
        RightIn |= 0xFF000000;
    else
        RightIn &=~0xFF000000;;
}



void sai0_tx_isr(void)
{
    I2S_TCSR_REG(I2S0_BASE_PTR) &= ~(I2S_TCSR_FRF_MASK);
    //Send out the last Queued up values
    I2S0_TDR0 = LeftOut;
    I2S0_TDR0 = RightOut;
    
    //Process the next set of samples
    GPIOD_PSOR = 1<<3; //Set and clear Port D3 to measure execution Speed
      	  
    	AudioProcess();
 
    GPIOD_PCOR = 1<<3;
     
}


