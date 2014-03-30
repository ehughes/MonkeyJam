/****************************************************************************************************/

/**
Copyright (c) 2011 Freescale Semiconductor
Freescale Confidential Proprietary
\file        uart.c
\brief      Provide common UART routines for serial IO
\author     Freescale Semiconductor
\author
\version    1.0
\date       Sep 14, 2011
*/

/*****************************************************************************************************
* Include files
*****************************************************************************************************/

#include "derivative.h"
#include "uart.h"
#include "../../cpu/arm_cm4.h"

/*****************************************************************************************************
* Code of project wide FUNCTIONS
*****************************************************************************************************/

/**
 * \brief   Initialize the UART for 8N1 operation, interrupts disabled, and
 * \brief    no hardware flow-control


 * \author
 * \param
 *         uartch      UART channel to initialize
 *         sysclk      UART module Clock in kHz(used to calculate baud)
 *         baud        UART baud rate
 * \return
       none
 * \todo
 * \warning  Since the UARTs are pinned out in multiple locations on most
 *       Kinetis devices, this driver does not enable UART pin functions.
 *       The desired pins should be enabled before calling this init function.
 */

void uart_init
(
    UART_MemMapPtr  uartch,
    int             sysclk,
    int             baud
)
{
    /*~~~~~~~~~~~~~~~~~~~~~~*/
    /*~~~~~~~~~~~~~~~~~~~~~~*/
    /*~~~~~~~~~~~~~~~~~~~~~~*/
    /*~~~~~~~~~~~~~~~~~~~~~~*/
    /*~~~~~~~~~~~~~~~~~~~~~~*/
    /*~~~~~~~~~~~~~~~~~~~~~~*/
    register uint16 sbr, brfa;
    uint8           temp;

    /*~~~~~~~~~~~~~~~~~~~~~~*/

    /*~~~~~~~~~~~~~~~~~~~~~~*/

    /*~~~~~~~~~~~~~~~~~~~~~~*/

    /*~~~~~~~~~~~~~~~~~~~~~~*/

    /*~~~~~~~~~~~~~~~~~~~~~~*/

    /*~~~~~~~~~~~~~~~~~~~~~~*/

    /* Enable the clock to the selected UART */

    if(uartch == UART0_BASE_PTR)
        SIM_SCGC4 |= SIM_SCGC4_UART0_MASK;
    else if(uartch == UART1_BASE_PTR)
        SIM_SCGC4 |= SIM_SCGC4_UART1_MASK;
    else if(uartch == UART2_BASE_PTR)
        SIM_SCGC4 |= SIM_SCGC4_UART2_MASK;

#if 0
    else if(uartch == UART3_BASE_PTR)
        SIM_SCGC4 |= SIM_SCGC4_UART3_MASK;
    else if(uartch == UART4_BASE_PTR)
        SIM_SCGC1 |= SIM_SCGC1_UART4_MASK;
    else
        SIM_SCGC1 |= SIM_SCGC1_UART5_MASK;

#endif
    /* Make sure that the transmitter and receiver are disabled while we
     * change settings.
     */
    UART_C2_REG(uartch) &= ~(UART_C2_TE_MASK | UART_C2_RE_MASK);
    /* Configure the UART for 8-bit mode, no parity */
    UART_C1_REG(uartch) = 0;    /* We need all default settings, so entire register is cleared */
    /* Calculate baud settings */
    sbr = (uint16) ((sysclk * 1000) / (baud * 16));
    /* Save off the current value of the UARTx_BDH except for the SBR field */
    temp = UART_BDH_REG(uartch) &~(UART_BDH_SBR(0x1F));
    UART_BDH_REG(uartch) = temp | UART_BDH_SBR(((sbr & 0x1F00) >> 8));
    UART_BDL_REG(uartch) = (uint8) (sbr & UART_BDL_SBR_MASK);
    /* Determine if a fractional divider is needed to get closer to the baud rate */
    brfa = (((sysclk * 32000) / (baud * 16)) - (sbr * 32));
    /* Save off the current value of the UARTx_C4 register except for the BRFA field */
    temp = UART_C4_REG(uartch) &~(UART_C4_BRFA(0x1F));
    UART_C4_REG(uartch) = temp | UART_C4_BRFA(brfa);
    /* Enable receiver and transmitter */
    UART_C2_REG(uartch) |= (UART_C2_TE_MASK | UART_C2_RE_MASK);
}

/**
 * \brief   Wait for a character to be received on the specified UART
 * \author
 * \param    channel      UART channel to read from
 * \return   the received character
 * \todo
 * \warning
 */

char uart_getchar
(UART_MemMapPtr  channel)
{
    /* Wait until character has been received */
    while(!(UART_S1_REG(channel) & UART_S1_RDRF_MASK));

    /* Return the 8-bit data from the receiver */
    return UART_D_REG(channel);
}

/**
 * \brief   Wait for space in the UART Tx FIFO and then send a character
 * \author
 * \param    channel  UART channel to send to
*  \param    ch	     character to send
 * \return   none
 * \todo
 * \warning
 */

void uart_putchar
(
    UART_MemMapPtr  channel,
    char            ch
)
{
    /* Wait until space is available in the FIFO */
    while(!(UART_S1_REG(channel) & UART_S1_TDRE_MASK));

    /* Send the character */
    UART_D_REG(channel) = (uint8) ch;
}

/**
 * \brief   Check to see if a character has been received
 * \author
 * \param    channel      UART channel to check for a character
*  \param    ch	     character to send
 * \return    0       No character received
 * \return    1       Character has been received
 * \todo
 * \warning
 */

int uart_getchar_present
(UART_MemMapPtr  channel)
{
    return(UART_S1_REG(channel) & UART_S1_RDRF_MASK);
}

/********************************************************************/
