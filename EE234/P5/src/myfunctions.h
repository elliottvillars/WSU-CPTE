/*
 * myfunctions.h
 *
 *  Created on: Oct 27, 2018
 *      Author: Sergaljerk
 */

#ifndef SRC_MYFUNCTIONS_H_
#define SRC_MYFUNCTIONS_H_



#include <stdint.h>
#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"


#endif /* SRC_MYFUNCTIONS_H_ */

void activateLEDS();
void disableInterrupts();
void enableInterrupts();
void GICConfigure();
void initalizeGPIOInterrupts();
void IRQHandler(void * data);
void configureIO();
void initializeSVD();
void initGlobalTimer();
void initGTInterrupts();
void configureGT();
void GT_IRQ();
void GPIO_IRQ(uint32_t button);

