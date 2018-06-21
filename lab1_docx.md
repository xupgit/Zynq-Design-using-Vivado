#Use Vivado to build an Embedded System
##Introduction
This lab guides you through the process of using Vivado to create a simple ARM Cortex-A9 based processor design targeting the ZedBoard or Zybo board. Where the instructions refer to both boards, choose the board you are using. You will use Vivado to create the hardware system and SDK (Software Development Kit) to create an example application to verify the hardware functionality.
##Objectives
After completing this lab, you will be able to:
*	Create a Vivado project for a Zynq system: Zedboard or Zybo board (whichever one you wish to use).
*	Use the IP Integrator to create a hardware system
*	Use SDK(Software Development Kit) to create a standard memory test project
*	Run the test application on the board and hence verify hardware functionality
##Procedure
This lab is separated into steps that consist of general overview statements that provide information on the detailed instructions that follow. Follow these detailed instructions to progress through the lab.
This lab comprises 5 primary steps: You will create a top-level project using Vivado, create the processor system using the Vivado IP Integrator, generate the top-level HDL and export the design to SDK, create a Memory Test application in SDK, and finally, test in hardware.
##Design Description
The purpose of the lab exercises is to walk you through a complete hardware and software processor system design. Each lab will build upon the previous lab. The following diagram represents the completed design (**Figure 1**).

<div style="text-align:center">
<img src ="/pics/l1/1.jpg " width="80%" height="80%"/>
</div>
<p align = "center">
Figure 1. <i>Completed Design</i>
</p>

In this lab, you will use IP Integrator to create a processing system based design consisting of the following (Figure 2):
*	ARM Cortex A9 core (PS)
*	UART for serial communication
*	DDR3 controller for external DDR3_SDRAM memory


<div style="text-align:center">
<img src ="/pics/l1/2.jpg " width="40%" height="80%"/>
</div>
<p align = "center">
Figure 2. <i>Processor Design of this Lab</i>
</p>

##General Flow for this Lab

<div style="text-align:center">
<img src ="/pics/l1/2a.jpg " width="80%" height="80%"/>
</div>
<p align = "center">
Figure . <i> Flow of lab 1 </i>
</p>

In the instructions below;

{sources} refers to: C:\xup\embedded\2015_2_zynq_sources

{labs} refers to : C:\xup\embedded\2015_2_zynq_labs

---
**NOTE**

Board support for the Zybo is not included in Vivado 2015.2 by default. The relevant files “zybo.zip” need to be extracted and saved to: {Vivado installation}\data\boards\board_files\zynq

These files can be downloaded from either from the [Digilent, Inc. webpage](http://www.digilentinc.com/) or the [XUP webpage](http://www.xilinx.com/support/university/vivado/vivado-workshops/Vivado-embedded-design-flow-zynq.html ) where this material is also hosted.

---
<!--###Create a Vivado Project	Step 1
-->

1.	Open Vivado by selecting **Start > All Programs > Xilinx Design Tools > Vivado 2015.2 > Vivado 2015.2**
2.	Click **Create New Project** to start the wizard. You will see the Create a New Vivado Project dialog box. Click Next.
3.	Click the Browse button of the Project Location field of the New Project form, browse to **{labs}**, and click Select.
4.	Enter **lab1** in the Project Name field.  Make sure that the Create Project Subdirectory box is checked.  Click Next.

    <div style="text-align:center">
    <img src ="/pics/l1/3.jpg " width="60%" height="80%"/>
    </div>
    <p align = "center">
    Figure 2. <i>Project Name Entry</i>
    </p>

5.	In the Project Type form select **RTL Project**, and click Next
6.	In the Add Sources form, select Verilog as the Target language and **Mixed** as the Simulator language, and click Next

    <div style="text-align:center">
    <img src ="/pics/l1/4.jpg " width="60%" height="80%"/>
    </div>
    <p align = "center">
    Figure 4. <i>Add sources to new project</i>
    </p>

7.	Click Next two more times to skip Adding Existing IP and Add Constraints
8.	In the Default Part window, select Boards, and depending on the board you are using, search for ZedBoard or Zybo and click Next.

    <div style="text-align:center">
    <img src ="/pics/l1/5.jpg" width="60%" height="80%"/>
    </div>
    <p align = "center">
    Figure 5. <i>Boards and Parts Selection</i>
    </p>

9.	Check the Project Summary and click Finish to create an empty Vivado project.


    <!--###Creating the System Using the IP Integrator	Step 2
      -->


1.	In the Flow Navigator, click **Create Block Design** under IP Integrator

    <div style="text-align:center">
    <img src ="/pics/l1/6.jpg" width="20%" height="20%"/>
    </div>
    <p align = "center">
    Figure 6. <i>Create IP Integrator Block Diagram</i>
    </p>

1.	Enter **system** for the design name and click OK

    <div style="text-align:center">
    <img src ="/pics/l1/7.jpg" width="40%" height="80%"/>
    </div>
    <p align = "center">
    Figure 7. <i>Create New Block Diagram</i>
    </p>

3.	Right-click anywhere in the Diagram workspace and select **Add IP**.
    <div style="text-align:center">
    <img src ="/pics/l1/8.jpg" width="60%" height="80%"/>
    </div>
    <p align = "center">
    Figure 8. <i>Add IP to Block Diagram</i>
    </p>


5.	Once the IP Catalog is open, type “zyn” into the Search bar, find and double click on **ZYNQ7 Processing System** entry, or click on the entry and hit the Enter key to add it to the design.
    <div style="text-align:center">
    <img src ="/pics/l1/9.jpg" width="30%" height="80%"/>
    </div>
    <p align = "center">
    Figure 9. <i>Add Zynq block to the design</i>
    </p>

6.	Notice the message at the top of the Diagram window that Designer Assistance available. Click **Run Block Automation** and select /processing_system7_0
    <div style="text-align:center">
    <img src ="/pics/l1/a.jpg" width="30%" height="80%"/>
    </div>
    <p align = "center">
    Figure 10. <i> Run block automation</i>
    </p>

7.	A new window pops up called the Run Block Automation window. In it, leave the default settings, including Apply Board Preset checked, and click OK

8. Once Block Automation has been complete, notice that ports have been automatically added for the DDR and Fixed IO, and some additional ports are now visible. The imported configuration for the Zynq related to the Zybo board has been applied which will now be modified.

    <div style="text-align:center">
    <img src ="/pics/l1/b.jpg" width="90%" height="80%"/>
    </div>
    <p align = "center">
    Figure 11. <i> Zynq Block with DDR and Fixed IO ports</i>
    </p>

9. Double-click on the added block to open its **Customization** window.
   Notice now the Customization window shows selected peripherals (with tick marks). This is the default configuration for the board applied by the block automation.

    <div style="text-align:center">
    <img src ="/pics/l1/c.jpg" width="90%" height="80%"/>
    </div>
    <p align = "center">
    Figure 12. <i> Imported peripherals settings</i>
    </p>

     <!--###	Configure the processing block with just UART 1 peripheral enabled.
     -->

1.	**A block diagram** of the Zynq should now be open again, showing various configurable blocks of the Processing System.
21. At this stage, the designer can click on various configurable blocks (highlighted in green) and change the system configuration.

    Only the UART is required for this lab, so all other peripherals will be deselected.

22.	Click on one of the peripherals (in green) in the **IOP Peripherals** block, or select the MIO Configuration tab on the left to open the configuration form
3.	Expand I/O peripherals if necessary, and ensure all the following I/O peripherals are deselected except UART 1.

    i.e. Remove: &nbsp; <i>ENET

    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; USB 0

    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; SD 0

    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Expand

    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; GPIO to deselect GPIO MIO

    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Expand Memory Interfaces to deselect Quad SPI Flash

    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Expand Application Processor Unit to disable Timer 0.
    </i>

    <div style="text-align:center">
    <img src ="/pics/l1/d.jpg" width="90%" height="80%"/>
    </div>
    <p align = "center">
    Figure 13. <i> Selecting only UART 1</i>
    </p>


4.	Select the **PS-PL Configuration** tab on the left.
5.	Expand **AXI Non Secure Enablement > GP Master AXI interface** and deselect M AXI GP0 interface.
6.	Expand **General > Enable Clock Resets** and deselect the FCLK_RESET0_N option.

    <div style="text-align:center">
    <img src ="/pics/l1/e.jpg" width="90%" height="80%"/>
    </div>
    <p align = "center">
    Figure 14. <i> Deselecting AXI Interface and FCLK_RESET_N</i>
    </p>


7.	Select the **Clock Configuration** tab on the left. Expand the PL Fabric Clocks and deselect the FCLK_CLK0 option and click OK.
9. Click on the **Regenerate Layout button** (green arrow) shown below:
    <div style="text-align:center">
    <img src ="/pics/l1/f.jpg" width="90%" height="80%"/>
    </div>
    <p align = "center">
    Figure 15. <i> Regenerating and Validating Design</i>
    </p>


8.	Click on the **Validate Design button** (purple arrow) and make sure that there are no errors.
    <!--Generate Top-Level and Export to SDK	Step 3
      -->

    <!--	Generate IP Integrator Outputs, the top-level HDL, and start SDK by exporting the hardware.
     -->
1.	In the sources panel, right-click on **system.bd**, and select Generate Output Products … and click Generate to generate the Implementation, Simulation and Synthesis files for the design (You can also click on **Generate Block Design** in the Flow Navigator pane to do the same)
    <div style="text-align:center">
    <img src ="/pics/l1/g.jpg" width="40%" height="80%"/>
    </div>
    <p align = "center">
    Figure 16. <i> Generating output products </i>
    </p>
2.	Right-click again on system.bd, and select **Create HDL Wrapper**… to generate the top-level VHDL model. Leave the Let Vivado manager wrapper and auto-update option selected, and click OK

    The system_wrapper.vhd file will be created and added to the project.  Double-click on the file to see the content in the Auxiliary pane.
    <div style="text-align:center">
    <img src ="/pics/l1/h.jpg" width="40%" height="80%"/>
    </div>
    <p align = "center">
    Figure 17. <i> The HDL Wrapper file generated and added to the project </i>
    </p>
3.	Notice that the VHDL file is already Set As the Top module in the design, indicated by the icon
4.	Select **File > Export > Export hardware** and click OK. (Save the project if prompted)
Note:  Since we do not have any hardware in Programmable Logic (PL) there is no bitstream to generate, hence the Include bitstream option is not necessary at this time.
5.	Select **File > Launch SDK** leaving the default settings, and click OK

    SDK should now be open. If only the Welcome panel is visible, close or minimize this panel to view the Project Explorer and Preview panel. A Hardware platform project should have been automatically created, and the system_wrapper_hw_platform_0 folder should exist in the Project Explorer panel.
    <div style="text-align:center">
    <img src ="/pics/l1/i.jpg" width="80%" height="80%"/>
    </div>
    <p align = "center">
    Figure 18. <i> SDK C/C++ development view </i>
    </p>

    The system.hdf file (Hardware Description File) for the Hardware platform should open in the preview pane. Double click system.hdf to open it if it is not.

    Basic information about the hardware configuration of the project can be found in the .hdf file, along with the Address maps for the PS systems, and driver information. The .hdf file is used in the software environment to determine the peripherals available in the system, and their location in the address map.
 
        <!--Generate Memory TestApp in SDK	Step 4
        -->
1.	Generate memory test application using one of the standard projects template.
1.	In SDK, select **File > New > Application Project**
2.	Name the project **mem_test**, and in the Board Support Package section, leave Create New selected and leave the default name mem_test_bsp and click Next. (Note that this application will run on ps7_cortexa9_0 i.e. core 0 of the two processor cores available.)
    <div style="text-align:center">
    <img src ="/pics/l1/j.jpg" width="60%" height="80%"/>
    </div>
    <p align = "center">
    Figure 20. <i> Create new SDK application project </i>
    </p>

3.	Select **Memory Tests** from the Available Templates window, and click Finish.
    <div style="text-align:center">
    <img src ="/pics/l1/k.jpg" width="20%" height="80%"/>
    </div>
    <p align = "center">
    Figure 21. <i> Creating Memory Tests C Project </i>
    </p>

    The mem_test project and the board support project mem_test_bsp will be created and will be visible in the Project Explorer window of SDK, and the two projects will be automatically built. You can monitor the progress in the Console panel.
4.	Expand folders in the Project Explorer view, and observe that there are three projects – system_wrapper_hw_platform_0, mem_test_bsp, and mem_test.  The mem_test project is the application that we will use to verify the functionality of the design.  The hw_platform includes the ps7_init function which initializes the PS as part of the first stage bootloader, and mem_test_bsp is the board support package.
    <div style="text-align:center">
    <img src ="/pics/l1/l.jpg" width="35%" height="80%"/>
    </div>
    <p align = "center">
    Figure 22. <i> The Project Explore view </i>
    </p>
5.	Open the memorytest.c file in the mem_test project (under src), and examine the contents.  This file calls the functions to test the memory.
      <!--Test in Hardware	Step 5
      -->
1.	Zybo: Make sure that the JP7 is set to select USB power and JP5 is set to JTAG mode. Connect the board with a micro-usb cable and power it ON.

    ZedBoard: Make sure that two micro-usb cables are used between the PC and the PROG and the UART connectors of the board and that the board is placed in the JTAG mode (MIO6-MIO2 jumpers are in the Dn position).

      <!--Establish the serial communication using SDK’s Terminal tab.
      -->
1.	Zybo: Make sure that the JP7 is set to select USB power, and JP5 is set to JTAG. Make sure that a micro-USB cable is connected to the JTAG PROG connector (next to the power supply connector). Turn ON the power.

    ZedBoard: Make sure that two micro-usb cables are used between the PC and the PROG and the UART connectors of the board and that the board is placed in the JTAG mode (MIO6-MIO2 jumpers are in the Dn position). Turn ON the power
2.	Select the   tab.  If it is not visible then select Window > Show view > Other...
3.  Select Terminal>Terminal and click OK
    <div style="text-align:center">
    <img src ="/pics/l1/m.jpg" width="35%" height="80%"/>
    </div>
    <p align = "center">
    Figure 22. <i> The Project Explore view </i>
    </p>
3.	Click on the **Connect button** (shown below) and if required, select appropriate COM port (depends on your computer), and configure it with the parameters as shown in the next figure.
    <div style="text-align:center">
    <img src ="/pics/l1/n.jpg" width="35%" height="80%"/>
    </div>
    <p align = "center">
    Figure 22. <i> Terminal view </i>
    </p>
    <div style="text-align:center">
    <img src ="/pics/l1/o.jpg" width="35%" height="80%"/>
    </div>
    <p align = "center">
    Figure 22. <i> SDK Terminal Settings </i>
    </p>


    You can find the COM port from the Windows Device Manager
2.	Run the mem_test application and verify the functionality.
1.	In SDK, select the mem_test project in Project Explorer, right-click and select Run As > Launch on Hardware (GDB) to download the application, and will execute ps7_init, and then execute mem_test.elf (user application).
    <div style="text-align:center">
    <img src ="/pics/l1/p.jpg" width="100%" height="80%"/>
    </div>
    <p align = "center">
    Figure 25. <i> Launch Application </i>
    </p>
2.	You should see the following output on the Terminal tab.
    <div style="text-align:center">
    <img src ="/pics/l1/p.jpg" width="100%" height="80%"/>
    </div>
    <p align = "center">
    Figure 26. <i> SDK Terminal Output </i>
    </p>
3.	Close SDK and Vivado  by selecting File > Exit in each program.

##Conclusion

Vivado and the IP Integrator allow base embedded processor systems and applications to be generated very quickly. After the system has been defined, the hardware can be exported and SDK can be invoked from Vivado. Software development is done in SDK which provides several application templates including memory tests.  You verified the operation of the hardware by downloading a test application, executing on the processor, and observing the output in the serial terminal window.
