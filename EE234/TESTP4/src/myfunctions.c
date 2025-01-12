
/*
 * myfunctions.c
 *
 *  Created on: Oct 13, 2018
 *      Author: Sergaljerk
 */

#include "myfunctions.h"
uint32_t * interruptProcessorTargets= (uint32_t*)0xF8F01800;
uint32_t * interruptPriorityMask =  (uint32_t*)0xF8F00104;
uint32_t * cpuInterfaceControl = (uint32_t*)0xF8F00100;
uint32_t * distributorControlReg = (uint32_t*)0xF8F01000;
uint32_t * interruptSetEnable =  (uint32_t*)0xF8F01100;
uint32_t * interruptClearEnable =  (uint32_t*) 0xF8F01180;
uint32_t * interruptPriorityReg = (uint32_t*) 0xF8F01400;
uint32_t * interruptConfigReg = (uint32_t*) 0xF8F01C00;

uint32_t * GPIOInterruptDisableBank0 = (uint32_t *) 0xE000A214 ;
uint32_t * GPIOInterruptEnableBank1 = (uint32_t *) 0xE000A250;
uint32_t * GPIOInterruptDisableBank1 = (uint32_t *) 0xE000A254;
uint32_t * GPIOInterruptStatusBank1 = (uint32_t *) 0xE000A258;
uint32_t * GPIOInterruptTypeBank1 = (uint32_t *) 0xE000A25C;
uint32_t * GPIOInterruptPolarityBank1 = (uint32_t *) 0xE000A260;
uint32_t * GPIOInterruptAnyBank1 = (uint32_t *) 0xE000A264;

uint32_t * interruptAcknowledgeReg = (uint32_t *)0xF8F0010C;
uint32_t * endofInterruptReg = (uint32_t *) 0xF8F00110;
uint32_t * GPIOMaskData0 = (uint32_t *) 0xE000A004;

uint32_t * BTN_Address = (uint32_t *)0x4BB02004;

uint32_t * PIN_16 = (uint32_t *)0xF8000740;
uint32_t * PIN_17 = (uint32_t *)0xF8000744;
uint32_t * PIN_18 = (uint32_t *)0xF8000748;
uint32_t * PIN_50 = (uint32_t *)0xF80007C8; //BTN_4
uint32_t * PIN_51 = (uint32_t *)0xF80007CC; //BTN_5
uint32_t * GPIODirectionModeB0 = (uint32_t *)0xE000A204;
uint32_t * GPIOOutputEnableB0 = (uint32_t *)0xE000A208;
uint32_t * GPIODirectionModeB1 = (uint32_t *)0xE000A244;
void activateLEDS()
{
	uint32_t* ledBaseAddress = (uint32_t*)0x4BB00000;
	ledBaseAddress[0] = 0x00000000; //enable the LEDs
	ledBaseAddress[1] = 0x00000000; //Turn on the LEDs
	while((BTN_Address[0] & (uint32_t)1) != 1)
	{
		//wait until button is pushed.
	}
	ledBaseAddress[0] = 0x0000000F; //enable the LEDs
	ledBaseAddress[1] = 0x0000000F; //Turn on the LEDs

}

void disableInterrupts()
{
	uint32_t bitsToEnable = 0xDF; // 1101_1111
	uint32_t readCPSR = 0;
	uint32_t clearByte = 0xFF;

	__asm__ __volatile__("MRS %0,CPSR\n" : "=r" (readCPSR));
	__asm__ __volatile__("MSR CPSR, %0\n" :: "r"((readCPSR & (~clearByte))|bitsToEnable));
}
void enableInterrupts()
{
	uint32_t bitsToEnable = 0x5F; // 1101_1111
	uint32_t readCPSR = 0;
	uint32_t clearByte = 0xFF;

	__asm__ __volatile__("MRS %0,CPSR\n" : "=r" (readCPSR));
	__asm__ __volatile__("MSR CPSR, %0\n" :: "r"((readCPSR & (~clearByte))|bitsToEnable));
}
void GICConfigure()
{

	interruptProcessorTargets[13] = 0x00000000; //Resets processor target
	interruptClearEnable[1] = 0x00100000; //enables interrupt forwarding to CPU interface.
	distributorControlReg[0] = 0x0; //Enable secure interrupt control
	interruptPriorityReg[13] = 0x000000A0; //Set priority level of interrupt 52
	interruptProcessorTargets[13] = 0x00000001; //CPU 0 will handle the interrupt.
	interruptConfigReg[3] =  0x00000100;
	interruptSetEnable[1] =  0x00100000;
	interruptPriorityMask[0] = 0xFF;
	cpuInterfaceControl[0] = 0x3;
	distributorControlReg[0] = 0x1;

}

void initalizeGPIOInterrupts()
{


	GPIOInterruptDisableBank0[0] = 0xFFFFFFFF; //reset
	GPIOInterruptDisableBank1[0] = 0xFFFFFFFF;
	GPIOInterruptStatusBank1[0] = 0xFFFFFFFF;
	GPIOInterruptTypeBank1[0] =  0x0C0000; //set interrupt type
	GPIOInterruptPolarityBank1[0] =  0x0C0000; //set positive event
	GPIOInterruptAnyBank1[0] =  0x000000; //no override
	GPIOInterruptEnableBank1[0] = 0x0C0000;

	configureIO();
}

void IRQHandler(void * data)
{
	uint32_t * interruptAcknowledgeReg = (uint32_t *)0xF8F0010C;
	uint32_t * endofInterruptReg = (uint32_t *) 0xF8F00110;
	uint32_t * GPIOMaskData0 = (uint32_t *) 0xE000A004;

	uint32_t GPIO_Interrupt = GPIOInterruptStatusBank1[0]; //check if interrupt happened
	uint32_t interruptID = interruptAcknowledgeReg[0]; //Get interrupt ID
	uint32_t buttonEvent = 0xC0000 & GPIO_Interrupt; //check if button event occurs.

	if(interruptID == 52)
	{
		if(buttonEvent ==  0x80000)
		{


			GPIOMaskData0[0] ^= 0xFFF80004; //XOR to enable green toggle. A work around to read the pin. If the data is the same, turn off led.

		}
		if(buttonEvent ==  0x40000)
		{
				GPIOMaskData0[0] ^= 0xFFF80002; //red led.
		}
	}
	GPIOInterruptStatusBank1[0] = 0xFFFFFF; //reset interrupt status.
	endofInterruptReg[0] = interruptID; //clear interrupt.
	for(int i = 0; i<5000000; i = i + 1)
	{
		//debounce button input;
	}
}
void configureIO()
{
	*((uint32_t*) 0xF8000000+0x8/4) = 0x0000DF0D;//???

PIN_16[0]=0x00001600;//SET IO Type and enable pullup pin
PIN_17[0]=0x00001600;
PIN_18[0]=0x00001600;
PIN_50[0]=0x00000600;//SET IO Type to LVCMOS33
PIN_51[0]=0x00000600;
GPIODirectionModeB0[0] = 0x00070000;
GPIOOutputEnableB0[0] = 0x00070000;
GPIODirectionModeB1[0] = 0x00000000;


}



