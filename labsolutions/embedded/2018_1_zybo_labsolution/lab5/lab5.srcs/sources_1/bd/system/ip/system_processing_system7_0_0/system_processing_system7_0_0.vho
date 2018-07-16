-- (c) Copyright 1995-2015 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:ip:processing_system7:5.5
-- IP Revision: 1

-- The following code must appear in the VHDL architecture header.

------------- Begin Cut here for COMPONENT Declaration ------ COMP_TAG
COMPONENT system_processing_system7_0_0
  PORT (
    MIO : INOUT STD_LOGIC_VECTOR(53 DOWNTO 0);
    DDR_CAS_n : INOUT STD_LOGIC;
    DDR_CKE : INOUT STD_LOGIC;
    DDR_Clk_n : INOUT STD_LOGIC;
    DDR_Clk : INOUT STD_LOGIC;
    DDR_CS_n : INOUT STD_LOGIC;
    DDR_DRSTB : INOUT STD_LOGIC;
    DDR_ODT : INOUT STD_LOGIC;
    DDR_RAS_n : INOUT STD_LOGIC;
    DDR_WEB : INOUT STD_LOGIC;
    DDR_BankAddr : INOUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    DDR_Addr : INOUT STD_LOGIC_VECTOR(14 DOWNTO 0);
    DDR_VRN : INOUT STD_LOGIC;
    DDR_VRP : INOUT STD_LOGIC;
    DDR_DM : INOUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    DDR_DQ : INOUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    DDR_DQS_n : INOUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    DDR_DQS : INOUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    PS_SRSTB : INOUT STD_LOGIC;
    PS_CLK : INOUT STD_LOGIC;
    PS_PORB : INOUT STD_LOGIC
  );
END COMPONENT;
-- COMP_TAG_END ------ End COMPONENT Declaration ------------

-- The following code must appear in the VHDL architecture
-- body. Substitute your own instance name and net names.

------------- Begin Cut here for INSTANTIATION Template ----- INST_TAG
your_instance_name : system_processing_system7_0_0
  PORT MAP (
    MIO => MIO,
    DDR_CAS_n => DDR_CAS_n,
    DDR_CKE => DDR_CKE,
    DDR_Clk_n => DDR_Clk_n,
    DDR_Clk => DDR_Clk,
    DDR_CS_n => DDR_CS_n,
    DDR_DRSTB => DDR_DRSTB,
    DDR_ODT => DDR_ODT,
    DDR_RAS_n => DDR_RAS_n,
    DDR_WEB => DDR_WEB,
    DDR_BankAddr => DDR_BankAddr,
    DDR_Addr => DDR_Addr,
    DDR_VRN => DDR_VRN,
    DDR_VRP => DDR_VRP,
    DDR_DM => DDR_DM,
    DDR_DQ => DDR_DQ,
    DDR_DQS_n => DDR_DQS_n,
    DDR_DQS => DDR_DQS,
    PS_SRSTB => PS_SRSTB,
    PS_CLK => PS_CLK,
    PS_PORB => PS_PORB
  );
-- INST_TAG_END ------ End INSTANTIATION Template ---------

-- You must compile the wrapper file system_processing_system7_0_0.vhd when simulating
-- the core, system_processing_system7_0_0. When compiling the wrapper file, be sure to
-- reference the VHDL simulation library.

