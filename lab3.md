# Adding Custom IP to the System

## Objectives

After completing this lab, you will be able to:
*	Use the IP Packager feature of Vivado to create a custom peripheral  
*	Modify the functionality of the IP
*	Add the custom peripheral to your design
*	Add pin location constraints
*	Add block memory to the system


## Steps

### Create a Custom IP using the Create and Package IP Wizard

1.	Open Vivado by selecting **Start > All Programs > Xilinx Design Tools > Vivado 2018.1 > Vivado 2018.1**
2.	Click **Manage IP** and select New IP Location and click Next in the New IP Location window
3.	Select Verilog as the Target Language, Mixed as the Simulator language, and for IP location, type **{labs}\led_ip** and click Finish (leave other settings as defaults and click OK if prompted to create the directory)

     <p align="center">
     <img src ="/pics/lab 3/1ipst.JPG " width="80%" height="80%"/>
     </p>
     <p align = "center">
     <i>New IP Location form</i>
     </p>

     A Virtex 7 part is chosen for this project, but later compatibility for other devices will be added to the packaged IP.

###	Run the Create and Package IP Wizard

1.	Select **Tools > Create and Package IP**
2.	In the window, click Next
3.	Select **Create a new AXI4 peripheral**, and click Next
4.	Fill in the details for the IP

    Name: *led_ip*

    Display Name: *led_ip_v1_0*

    (Fill in a description, Vendor Name, and URL)

5.	Click Next
6.	Change the Name of the interface to **S_AXI**
7.	Leave the other settings as default and click Next (*Lite interface, Slave mode, Data Width: 32, Number of Registers: 4*)

8.	Select Edit IP and click Finish (a new Vivado Project will open)

###	Create an interface to the LEDs

1.	In the sources panel, double-click the led_ip_v1_0.v file.

     This file contains the HDL code for the interface(s) selected above. The top level file contains a module which implements the AXI interfacing logic, and an example design to write to and read from the number of registers specified above. This template can be used as a basis for creating custom IP. A new parameterized output port to the LEDs will be created at the top level of the design, and the AXI write data in the sub-module will be connected back up to the external LED port.

     Scroll down to line 7 where a user parameters space is provided.  
2.	Add the line:

```verilog
7   parameter integer LED_WIDTH         = 8,
```

3.	Go to line 18 and add the line:

```verilog
18    output wire [LED_WIDTH-1:0]      LED,
```
> don't forget to add commas when adding a port

4.	Insert the following at line ~48:
```systemverilog
48    .LED_WIDTH(LED_WIDTH),
```
5.	Insert the following at line ~52:
```systemverilog
52   .LED(LED),
```


6.	Save the file by selecting **File > Save File**
7.	Expand led_ip_v1_0 in the sources view if necessary, and open led_ip_v1_0_S_AXI.v
8.	Add the LED parameter and port to this file too, at lines 7 and 18 (done in steps 2 ands 3)

9.	Scroll down to ~line 400 and insert the following code to instantiate the user logic for the LED IP
(This code can be typed directly, or copied from the user_logic_instantiation.txt file in the lab3 source folder.)

   ```systemverilog
1  lab3_user_logic  # (
2      .LED_WIDTH(LED_WIDTH)
3    )
4   U1(
5       .S_AXI_ACLK(S_AXI_ACLK),
6       .slv_reg_wren(slv_reg_wren),
7       .axi_awaddr(axi_awaddr[C_S_AXI_ADDR_WIDTH-1:ADDR_LSB]),
8       .S_AXI_WDATA(S_AXI_WDATA),
9       .S_AXI_ARESETN(S_AXI_ARESETN),
10      .LED(LED)
11    );
   ```
  Check all the signals that are being connected and where they originate.

10.	Save the file by selecting **File > Save File**
11.	Click on the Add Sources in the Flow Navigator pane, select Add or Create Design Sources, click Next, then click the Green Plus then Add Files…, browse to **{sources}\lab3**, select the lab3_user_logic.v file and click OK, and then click Finish to add the file.

    Check the contents of this file to understand the logic that is being implemented.  Notice the formed hierarchy.

> Make sure that when adding the source lab3_user_logic.v, untick the option: Copy sources into IP directory

12.	Click _Run Synthesis_ and _Save_ if prompted. (This is to check the design synthesizes correctly before packaging the IP. If this was your own design, you would  simulate it and verify functionality before proceeding)
13.	Check the _Messages_ tab for any errors and correct if necessary before moving to the next step

    When Synthesis completes successfully, click Cancel.

###	Package the IP

1.	Click on the Package IP – led_ip tab

   <p align="center">
   <img src ="/pics/lab 3/2PackIP.JPG " width="80%" height="80%"/>
   </p>
   <p align = "center">
   <i> Package IP</i>
   </p>

>Skip the next two steps (2 and 3) if you see /Basic_Elements under the Categories section, (like the one shown in figure)

2.	For the IP to appear in the IP catalog in particular categories, the IP must be configured to be part of those categories. To change which categories the IP will appear in the IP catalog click Blue Plus (Red box shown in the figure) in the Categories section. This opens the Choose IP Categories window
3.	For the purpose of this exercise, uncheck the _AXI Peripheral_ box and check the Basic Elements and click OK.
4.	Select Compatibility. This shows the different Xilinx FPGA Families that the IP supports. The value is inherited from the device selected for the project.
5.	Click the Blue Plus then **Add Family Explicitly…** from the menu.
6.	Select the Zynq family as we will be using this IP on the PYNQ-Z2, Zybo and Zedboard, and click OK. You will get something like this:
    <p align="center">
    <img src ="/pics/lab 3/3ipfam.JPG " width="50%" height="80%"/>
    </p>
    <p align = "center">
    <i> Compatibility under Package IP</i>
    </p>
7.	You can also customize the address space and add memory address space using the IP Addressing and Memory category.  We won’t make any changes.
 8.	Click on File Groups and click Merge changes from File Groups Wizard

    <p align="center">
    <img src ="/pics/lab 3/4ipfile.JPG " width="60%" height="80%"/>
    </p>
    <p align = "center">
    <i> Compatibility under Package IP</i>
    </p>

    This is to update the IP Packager with the changes that were made to the IP and the lab3_user_logic_*.v file that was added to the project.


9.	Expand Verilog Synthesis and notice lab3_user_logic.v has been included
10.	Click on Customization Parameters and again Merge changes from Customization Parameters Wizard
Notice that the Ports and Interfaces view now shows the user created LED port
11.	Select **Customization Parameters**, expand **Hidden Parameters**, right-click on _LED_WIDTH_, and select **Import IP Parameters…** and click OK.
12.	Select Customization GUI and notice that the Led Width is visible.

    <p align="center">
    <img src ="/pics/lab 3/5ipcustomzn.JPG " width="75%" height="80%"/>
    </p>
    <p align = "center">
    <i> Customization GUI under Package IP</i>
    </p>

13.	Select Review and Package, and notice the path where the IP will be created.
14.	Click Package IP. Click Yes and the project will close when complete.
15.	In the original Vivado window click File > Close Project

### Modify the Project Settings

1.	Start the Vivado if necessary and open either the lab2 project you created in the previous lab or the lab2 project in the labsolution directory
2.	Select **File > Save Project As…** to open the Save Project As dialog box. Enter lab3 as the project name.  Make sure that the Create Project Subdirectory option is checked, the project directory path is {labs}\ and click OK.
This will create the lab3 directory and save the project and associated directory with lab3 name.
3.	Click **Settings** in the Flow Navigator pane.
4.	Select **IP > Repository** in the left pane of the Project Settings form.
5.	Click on the Blue Plus button, browse to **{labs}\led_ip** and click Select.
The led_ip_v1.0 IP will appear the IP in the Selected Repository window.


    <p align="center">
    <img src ="/pics/lab 3/6chooseip.JPG " width="60%" height="80%"/>
    </p>
    <p align = "center">
    <i> Specify IP Repository </i>
    </p>

6.	Click OK.

### Add the Custom IP, BRAM, and the Constraints

1.	Click Open Block Design under IP Integrator in the Flow Navigator pane
2.	Right Click on the Diagram window and **add IP..**. Search for **led_ip_v1.0** in the catalog by typing **“led”** in the search field.
3.	Double-click led_ip_v1_0 to add the core to the design.
4.	Select the IP in the block diagram and change the instance name to led_ip in the properties view.
5.	Double click the block to open the configuration properties
6.	For the _ZedBoard_, leave the Led Width set to 8, or for the _Zybo_ and _PYNQ-Z2_, set the width to 4.
7.	Click OK.
8.	Click on Run Connection Automation, select **/led_ip/S_AXI** and click OK to automatically make the connection from the AXI Interconnect to the IP.

    Click the regenerate button to redraw the diagram.
9.	Select the LED port on the led_ip instance (by clicking on its pin), right-click and select **Make External**.

    <p align="center">
    <img src ="/pics/lab 3/7LEDext.JPG " width="70%" height="80%"/>
    </p>
    <p align = "center">
    <i> LED external port added and connected </i>
    </p>


10.	Select the Address Editor tab and verify that an address has been assigned to led_ip.

1.	In the Block Diagram, Right click and select the Add IP option. Search for _BRAM_ and add one instance of the _AXI BRAM Controller_
2.	Run Connection Automation on **axi_bram_ctrl_0/S_AXI** and click OK when prompted to connect it to the M_AXI_GP0 Master.
3.	Double click on the block to customize it and change the number of BRAM interfaces to 1 and click OK.
Notice that the AXI Protocol being used is AXI4 instead of AXI4Lite since BRAM can provide higher bandwidth and the controller can support burst transactions.
4.	Click on **Run Connection Automation** to add and connect a Block Memory Generator by selecting **axi_bram_ctrl_0/BRAM_PORTA** and click OK (This could be added manually)
5.	Validate the design to ensure there are no errors (F6), and click the regenerate button ( ) to redraw the diagram.
The design should look similar to the figure below.

  <p align="center">
  <img src ="/pics/lab 3/8Completeblck.JPG " width="90%" height="80%"/>
  </p>
  <p align = "center">
  <i> Completed Block Diagram </i>
  </p>

6.	In the Address editor, notice the Range of the _axibramctrl_0_ is 8K. We will leave it at that.
7.	Press **F6** to validate the design one last time.

1.	Click **Add Sources** in the Flow Navigator pane, select **Add or Create Constraints**, and click Next.
2.	Click the Blue Plus button, and then **Add Files…**, browse to the **{sources}\lab3** folder, select lab3_zed.xdc for the _ZedBoard_, lab3_pynq_z2.xdc for _PYNQ-Z2_ or lab3_Zybo.xdc  for the _Zybo_
3.	Click **Finish** to add the file.
4.	Expand Constraints folder in the Sources pane, and double click the **lab3_*.xdc** file entry to see its content. This file contains the pin locations and IO standards for the LEDs on the _Zynq_ board. This information can usually be found in the manufacturer’s datasheet for the board.
5.	Right click on system.bd and select Generate output products
6.	Click on **Generate Bitstream** and click Yes if prompted to save the Block Diagram, and click Yes again if prompted to launch **Synthesis** and **Implementation**. Click Cancel when prompted to Open the Implemented Design

## Conclusion

Vivado IP packager was used to import a custom IP block into the IP library. The IP block was then added to the system. Connection automation was run where available to speed up the design of the system by allowing Vivado to automatically make connections between IP. An additional BRAM was added to the design. Finally, pin location constraints were added to the design.
