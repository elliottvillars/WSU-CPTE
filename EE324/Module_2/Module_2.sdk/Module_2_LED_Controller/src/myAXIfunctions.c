/*
 * myAXIfunctions.c
 *
 *  Created on: Oct 21, 2018
 *      Author: Sergaljerk
 */

#include "xil_types.h"
#include "myAXIfunctions.h"
uint32_t * LED =  (uint32_t*)0x4BB00000;
uint32_t * RGB =  (uint32_t*)0x4BB01000;

uint32_t getLEDStatus()
{
	uint32_t v_Val = 0;
	v_Val = LED[1] & 0xF; //get get status
	return v_Val;
}
void controlLEDS(int a_LEDCount)
{
	LED[0] = 0x00;
	LED[0] = 0x0F;
	while(1)
	{
		LED[1] = a_LEDCount;
	}

}
void shiftLEDS()
{
	int i = 0;

	  //Enable LEDS
	    LED[0] = 0x0F;
	    int v_Count = 0x0;
	    // Infinite loop
	    while (1) {

	    	LED[1] = v_Count;
	        // Delay
	      for(i = 0; i < 100000000; i = i +1);
	      v_Count += 0x01;
	      if(v_Count > 0xF)
	      {
	    	  v_Count = 0x0;
	      }
	    }
}
void demoLEDS()
{
	int i = 0;
	 //Enable LEDS
	 LED[0] = 0x00;
	 LED[0] = 0x0F;
	 int v_Flip = 0xF; //Doesn't like it when i write hex directly;
	 while (1)
	 {
	    LED[1] = v_Flip;
	    // Delay
	    for(i = 0; i < 10000000; i = i +1);
	    v_Flip = ~v_Flip;
	  }
}
void demoRGB()
{
	RGB[0] = 0x0;
	RGB[0] = 0xF;
	RGB[1] = 0x1;
	RGB[2] = 0x2;
	RGB[3] = 0x4;
	RGB[4] = 0x7;
}
