#include "xparameters.h"
#include "xgpio.h"
#include "led_ip.h"
//====================================================

int main (void) 
{

   XGpio dip, push;
   int i, psb_check, dip_check;
	
   xil_printf("-- Start of the Program --\r\n");
 
   XGpio_Initialize(&dip, XPAR_SWITCHES_DEVICE_ID); // Modify this
   XGpio_SetDataDirection(&dip, 1, 0xffffffff);
	
   XGpio_Initialize(&push, XPAR_BUTTONS_DEVICE_ID); // Modify this
   XGpio_SetDataDirection(&push, 1, 0xffffffff);
	

   while (1)
   {
	  psb_check = XGpio_DiscreteRead(&push, 1);
	  xil_printf("Push Buttons Status %x\r\n", psb_check);
	  dip_check = XGpio_DiscreteRead(&dip, 1);
	  xil_printf("DIP Switch Status %x\r\n", dip_check);
	  
	  // output dip switches value on LED_ip device
	  LED_IP_mWriteReg(XPAR_LED_IP_S_AXI_BASEADDR, 0, dip_check);
	  
	  for (i=0; i<9999999; i++);
   }
}
