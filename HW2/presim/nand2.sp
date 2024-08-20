*NAND2
.protect
.lib 'cic018.l' TT 
.unprotect
.temp 25
.option post

************************************************************************
* Library Name: 2_4
* Cell Name:    nand2
* View Name:    schematic
************************************************************************

.SUBCKT nand2 A VDD VSS Y
*.PININFO A:I Y:O VDD:B VSS:B
MM3 net6 A VSS VSS n_18 W=3u L=200.00n m=1
MM2 Y A net6 net6 n_18 W=3u L=200.00n m=1
MM1 Y A VDD VDD p_18 W=4.25u L=200.00n m=1
MM0 Y A VDD VDD p_18 W=4.25u L=200.00n m=1
.ENDS

CL Y gnd 1.5p

x1 A VDD VSS Y nand2
VDD VDD gnd DC 1
VSS VSS gnd DC 0
VA A gnd DC 1
*VB B gnd DC 1

.op
.DC VA 0 1 0.001
*.DC VB 0 1 0.001
.meas DC d_av find deriv('v(y)') when v(vi)=1
.tran 0.1ns 500n
.end