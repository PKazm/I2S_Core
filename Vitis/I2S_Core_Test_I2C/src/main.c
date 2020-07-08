
//#include "xiicps.hw.h"
#include "xparameters.h"
#include "xiicps.h"
#include "xil_printf.h"
#include "sleep.h"

#define IIC_DEVICE_ID		XPAR_XIICPS_0_DEVICE_ID

#define IIC_SLAVE_ADDR		0b0011010
#define IIC_SCLK_RATE		100000

#define TX_BUFFER_SIZE   	2

void ac_set_reg(u8 msb, u8 lsb);


XIicPs Iic;			/* Instance of the IIC Device */

u8 tx_buffer[TX_BUFFER_SIZE];

int main(void){
	int Status;
	XIicPs_Config *Config;

	Config = XIicPs_LookupConfig(IIC_DEVICE_ID);
	Status = XIicPs_CfgInitialize(&Iic, Config, Config->BaseAddress);

	XIicPs_SetSClk(&Iic, IIC_SCLK_RATE);

	// Software reset Audio Codec
	ac_set_reg(
			(0x0F << 1) | 0b0,
			0b00000000
			);
	// Prep Audio Codec for configuration by powering things up and down
	ac_set_reg(
			(0x06 << 1) | 0b0,
			0b01110010
			);

	usleep(10000);


	// Enable Left and Right Channel ADC
	ac_set_reg(
			(0x00 << 1) | 0b1,
			0b00011111
			);

	// Right channel already copied from Left channel
	ac_set_reg(
			(0x01 << 1) | 0b0,
			0b00011111
			);

	
	// Enable Left and Right Channel DAC
	ac_set_reg(
			(0x02 << 1) | 0b1,
			0b01111001
			);

	/* Right channel already copied from Left channel
	ac_set_reg(
			(0x03 << 1) | 0b0,
			0b00000000
			);*/

	// Set Analog Audio path for LINE IN to ADC and no passthrough
	ac_set_reg(
			(0x04 << 1) | 0b0,
			0b00010010
			);


	// Set Digital Audio Path for
	ac_set_reg(
			(0x05 << 1) | 0b0,
			0b00000110
			);

	// Set Digital Audio Interface no swapping 24bit I2S
	ac_set_reg(
			(0x07 << 1) | 0b0,
			0b00001010
			);

	// Set Sampling Rate
	ac_set_reg(
			(0x08 << 1) | 0b0,
			0b00000010
			);

	usleep(10000);

	// enable digital core
	ac_set_reg(
			(0x09 << 1) | 0b0,
			0b00000001
			);


	// Enable output power
	ac_set_reg(
			(0x06 << 1) | 0b0,
			0b01100010
			);

	for(;;){

	}

}

void ac_set_reg(u8 msb, u8 lsb){
	int Status;
	while (XIicPs_BusIsBusy(&Iic)) {
		/* NOP */
	}

	tx_buffer[0] = msb;
	tx_buffer[1] = lsb;

	Status = XIicPs_MasterSendPolled(
				&Iic,
				tx_buffer,
				TX_BUFFER_SIZE,
				IIC_SLAVE_ADDR
			);
}
