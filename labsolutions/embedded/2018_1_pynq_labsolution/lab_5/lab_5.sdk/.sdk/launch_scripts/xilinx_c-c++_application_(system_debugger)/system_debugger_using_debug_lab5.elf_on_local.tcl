connect -url tcp:127.0.0.1:3121
source C:/xup/embedded/2018_1_zynq_labs/lab_5/lab_5.sdk/system_wrapper_hw_platform_4/ps7_init.tcl
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Xilinx TUL 1234-tulA"} -index 0
loadhw -hw C:/xup/embedded/2018_1_zynq_labs/lab_5/lab_5.sdk/system_wrapper_hw_platform_4/system.hdf -mem-ranges [list {0x40000000 0xbfffffff}]
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Xilinx TUL 1234-tulA"} -index 0
stop
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Xilinx TUL 1234-tulA"} -index 0
rst -processor
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Xilinx TUL 1234-tulA"} -index 0
dow C:/xup/embedded/2018_1_zynq_labs/lab_5/lab_5.sdk/lab5/Debug/lab5.elf
configparams force-mem-access 0
bpadd -addr &main
