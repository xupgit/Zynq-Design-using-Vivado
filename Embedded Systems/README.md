# Embedded System Design Flow on Zynq

## Labs outline

The purpose of the lab exercises of Embedded System Design Flow on Zynq is to walk you through a complete hardware and software processor system design. Each lab will build upon the previous lab. The following diagram represents the completed design of all the labs in this workshop (shown below).

<p align="center">
<img src ="/Embedded System Design Flow on Zynq/pics/Readme/Completed Design.JPG " width="80%" height="80%"/>
</p>
<p align = "center">
<i>Completed Design</i>
</p>


## Source Files Setup

In the instructions below;

**{sources}** refers to the location where you will get the base files for the labs: https://github.com/wady100/XIlinx-Workshops/tree/master/Embedded%20System%20Design%20Flow%20on%20Zynq/sources

**{labs}** refers to the location where you will save your project files: C:\xup\embedded\2018_1_zynq_labs

**{labsolutions}** 	for the ZedBoard refers to: 	 C:\xup\embedded\2015_2_zedboard_labsolution
or for the Zybo refers to: 	C:\xup\embedded\2015_2_zybo_labsolution

---
**NOTE**

Board support for the Zybo and PYNQ-Z2 are not included in Vivado 2018.1 by default. The relevant files need to be extracted and saved to:

 {Vivado installation}\data\boards\board_files\zynq

These files can be downloaded from either from the [/board_files](https://github.com/wady100/XIlinx-Workshops/tree/master/board_files) or the [XUP webpage](http://www.xilinx.com/support/university/vivado/vivado-workshops/Vivado-embedded-design-flow-zynq.html ) where this material is also hosted.

---

## Hardware Setup

**Zybo**:  Make sure that the JP7 is set to select USB power, and JP5 is set to JTAG. Make sure that a micro-USB cable is connected to the JTAG PROG connector (next to the power supply connector). Turn ON the power.

**ZedBoard**:  Make sure that two micro-usb cables are used between the PC and the PROG and the UART connectors of the board and that the board is placed in the JTAG mode (MIO6-MIO2 jumpers are in the Dn position). Turn ON the power.

**PYNQ-Z2**:  Connect a micro USB from the board to the PC. Make sure that a jumper is connected to JTAG (between JP1_1 and JP1_2) and another one of them should be connected across the USB pins (between J9_2 and J9_3).

## Labs Overview:
### Lab 1
  In this lab, you will use IP Integrator to create a processing system based design consisting of the following :
  *	ARM Cortex A9 core (PS)
  *	UART for serial communication
  *	DDR3 controller for external DDR3_SDRAM memory


    <p align="center">
    <img src ="/Embedded System Design Flow on Zynq/pics/Readme/l1view.JPG " width="40%" height="80%"/>
    </p>
    <p align = "center">
    <i>Processor Design of this Lab</i>
    </p>
### Lab 2
   This lab guides you through the process of extending the processing system you created in the previous lab by adding two GPIO (General Purpose Input/Output) IPs.
   <p align="center">
   <img src ="/Embedded System Design Flow on Zynq/pics/Readme/l2view.JPG " width="80%" height="80%"/>
   </p>
   <p align = "center">
   <i>Extend the System from the Previous Lab</i>
   </p>

### Lab 3

  This lab guides you through the process of creating and adding a custom peripheral to a processor system by using the Vivado IP Packager. You will create an AXI4Lite interface peripheral.

  You will extend the Lab 2 hardware design by creating and adding an AXI peripheral (refer to LED_IP in Figure 1) to the system, and connecting it to the LEDs on the Zynq board you are using.  You will use the IP Packager to generate the custom IP.    Next, you will connect the peripheral to the system and add pin location constraints to connect the LED display controller peripheral to the on-board LED display.  Finally, you will add BRAM Controller and BRAM before generating the bitstream.

  <p align="center">
  <img src ="/Embedded System Design Flow on Zynq/pics/Readme/l3view.JPG " width="80%" height="80%"/>
  </p>
  <p align = "center">
  <i>Design updated from the previous lab</i>
  </p>
