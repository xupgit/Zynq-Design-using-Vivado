#include "xparameters.h"
#include "xgpio.h"
#include "led_ip.h"
// Include scutimer header file

//====================================================
XScuTimer Timer;		/* Cortex A9 SCU Private Timer Instance */

#define ONE_TENTH 32500000 // half of the CPU clock speed/10

int main (void) 
{

   XGpio dip, push;
   int psb_check, dip_check, dip_check_prev, count, Status;

   // PS Timer related definitions
   XScuTimer_Config *ConfigPtr;
   XScuTimer *TimerInstancePtr = &Timer;

   xil_printf("-- Start of the Program --\r\n");
 
   XGpio_Initialize(&dip, XPAR_SWITCHES_DEVICE_ID);
   XGpio_SetDataDirection(&dip, 1, 0xffffffff);
	
   XGpio_Initialize(&push, XPAR_BUTTONS_DEVICE_ID);
   XGpio_SetDataDirection(&push, 1, 0xffffffff);

   count = 0;
	
   // Initialize the timer

   // Read dip switch values
   dip_check_prev = XGpio_DiscreteRead(&dip, 1);
   // Load timer with delay in multiple of ONE_TENTH

   // Set AutoLoad mode

   // Start the timer

   while (1)
   {
	  // Read push buttons and break the loop if Center button pressed
	  psb_check = XGpio_DiscreteRead(&push, 1);
	  if(psb_check > 0)
	  {
		  xil_printf("Push button pressed: Exiting\r\n");
		  XScuTimer_Stop(TimerInstancePtr);
		  break;
	  }
	  dip_check = XGpio_DiscreteRead(&dip, 1);
	  if (dip_check != dip_check_prev) {
		  xil_printf("DIP Switch Status %x, %x\r\n", dip_check_prev, dip_check);
		  dip_check_prev = dip_check;
	  	  // load timer with the new switch settings

		  count = 0;
	  }
	  if(XScuTimer_IsExpired(TimerInstancePtr)) {
			  // clear status bit

		  	  // output the count to LED and increment the count

	  }
   }
   return 0;
}
