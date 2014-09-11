/*$6*/

#include "stdint.h"
#include "derivative.h"
#include "../drivers/sai/sai.h"
#include "../cpu/arm_cm4.h"

//#include "Audio_IF.h"

uint32_t    AudioMasterClock;
uint32_t    AudioSampleRate;

uint32_t InitAudioIO( uint32_t    BusClockIn,
                      uint32_t    SampleRate,
                      uint32_t    MCLK_Ratio)

{
    float       TargetDivider;
    uint32_t    Frac;
    uint32_t    Div;
    SIM_SCGC6 |= SIM_SCGC6_I2S_MASK;    //Enable CLock to I2S Module
    //blow away all the registers;
    sai_clear_reg(0);
    //Setup the Master Clock
    AudioMasterClock = SampleRate *     //input Sample Rate
                       MCLK_Ratio; // Overclock Ration
    TargetDivider = (float)AudioMasterClock / (float)BusClockIn;
    //Iterate through all possibilities of the DIv/Frac to narrow in on a good diver
    Div = 8192; //1st operation is a halving which will put us at the maximum divider value

    do
        {
            Div >>= 1;
            Frac = (uint32_t) ((float)Div * TargetDivider);
        }
    while(Frac > 256);

    //Re compute based upon actual Values
    AudioMasterClock = (uint32_t) ((float)BusClockIn * (((float)Frac + 1) / ((float)Div + 1)));
    SampleRate = (uint32_t) ((float)AudioMasterClock / (float)MCLK_Ratio);
    sai_mclk_config(0, 0, 1, Frac - 1, Div - 1);
    //Set of the BitClock.  There always needs to be 64 bclocks per sample
    Div = AudioMasterClock / (SampleRate * 64);
    sai_bclk_config
    (
        0,      //Port 0
        1,      //Tx
        1,      //Set as MAster Clock
        1,      //Active High Polarity
        1,      //Direction is out
        Div / 2 - 1
    );          //Set the Div value for the BIt CLock
    sai_bclk_config
    (
        0,      //Port 0
        0,      //Rx
        1,      //Set as MAster Clock
        1,      //Active High Polarity
        1,      //Direction is out
        Div / 2 - 1
    );          //Set the Div value for the BIt CLock
    sai_bclk_en(0, //Port
                1 //Tx
               );
    sai_bclk_en(0, //Port
                0 //Rx
               );
    sai_mode_config(0, //Port 0
                    1, //Tx
                    0,
                    0, //Not Bit Swap
                    0);  //No BCI
    sai_mode_config(0, //Port 0
                    0, //Rx
                    1,
                    0, //Not Bit Swap
                    0);  //No BCI
    sai_word_flg_config(0, //port
                        1, //tx
                        0 //first word starts word flag
                       );
    sai_word_flg_config(0, //port
                        0, //rx
                        0 //first word starts word flag
                       );
    sai_frame_config(
        0,                  //Port
        1,                  //tx
        1,                  //Frame is 2 words - write one less than actual number
        63,                 //one less than the number of BClks per frame.  32 bclocks for each word
        1                   //MSB First
    );
    sai_frame_config
    (
        0,                  //Port
        0,                  //Rx
        1,                  //Frame is 2 words
        63,                 //one less than the number of BClks per frame.  32 bclocks for each word
        1                   //MSB First
    );
    sai_frameclk_config
    (
        0,                  //Port 0
        1,                  //Tx
        0,                  //Frame Sync One bit Early. //  This makes it I2S compatible
        0,                  //high active frame sync polarity
        1                   //Master mode generates frame sync
    );
    sai_frameclk_config
    (
        0,                  //Port 0
        0,                  //Rx
        1,                  //Frame Sync One bit Early.   This makes it I2S compatible
        0,                  //high active frame sync polarity
        1                   //Master mode generates frame sync
    );
    sai_wordlength_config(0, //Port
                          1, //Tx
                          31, //32 bits per word N
                          31, //32 bits per word N
                          23 // first bit to shift
                         );
    sai_wordlength_config(0, //Port
                          0, //Rx
                          31, //32 bits per word N
                          31, //32 bits per word N
                          23 // first bit to shift
                         );
    sai_channel_enable(0, //Port 0
                       1, //Tx
                       1 //Enable both Channel
                      );
    sai_channel_enable(0, //Port 0
                       0, //Rx
                       1 //Enable both Channel
                      );
   // sai_pinmux_init(0, 0);  //Port C
    sai_stop_dbg_enable(0, 1, 0, 0);    //tx enabled in debug and stop
    sai_stop_dbg_enable(0, 0, 0, 0);    //RX enabled in debug and stop
    sai_watermark_config(0, //POrt 0
                         1, //Recieve WaterMark
                         1 //anything greater than 1
                        );
    sai_watermark_config(0, //POrt 0
                         0, //tx WaterMark
                         1 //anything less than or equal to
                        );
    sai_enable(0, //port
               0 //rx
              );
    sai_enable(0, //port
               1 //tx
              );
    I2S0_TDR0 = 0;
    I2S0_TDR0 = 0;
    I2S0_TDR0 = 0;
    I2S0_TDR0 = 0;

    sai_interrupt_enable(0, //Port
                         0 // Rx)
                        );
    sai_interrupt_enable(0, //Port
                         1 // tx)
                        );
    enable_irq(INT_I2S0_Rx - 16);
    enable_irq(INT_I2S0_Tx - 16);
    AudioSampleRate = SampleRate;
    return AudioMasterClock;
}
