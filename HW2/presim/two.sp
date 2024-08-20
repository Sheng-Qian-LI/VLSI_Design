*(A+B)(C+D)
.protect
.lib 'cic018.l' TT 
.unprotect
.temp 25
.option post

************************************************************************
* Library Name: hw2
* Cell Name:    INV
* View Name:    schematic
************************************************************************

.SUBCKT INV IN OUT VDD VSS
*.PININFO IN:I OUT:O VDD:B VSS:B
MM1 OUT IN VDD VDD p_18 W=3u L=180.00n m=1
MM0 OUT IN VSS VSS n_18 W=1u L=180.00n m=1
.ENDS

************************************************************************
* Library Name: hw2
* Cell Name:    TWO
* View Name:    schematic
************************************************************************

.SUBCKT TWO A B C D VDD VSS Y

*.PININFO A:I B:I C:I D:I Y:O VDD:B VSS:B

XI0 net13 Y VDD VSS INV
MM7 net5 C VSS VSS n_18 W=1u L=180.00n m=1
MM6 net5 D VSS VSS n_18 W=1u L=180.00n m=1
MM5 net13 B net5 net5 n_18 W=1u L=180.00n m=1
MM4 net13 A net5 net5 n_18 W=1u L=180.00n m=1
MM3 net13 C net18 net18 p_18 W=3u L=180.00n m=1
MM2 net13 B net22 net22 p_18 W=3u L=180.00n m=1
MM1 net18 D VDD VDD p_18 W=3u L=180.00n m=1
MM0 net22 A VDD VDD p_18 W=3u L=180.00n m=1
.ENDS

CL Y gnd 1p

x1 A B C D VDD VSS Y TWO
VDD VDD gnd DC 1
VSS VSS gnd DC 0
VA A gnd PULSE (0V 1V 260n 0.1n 0.1n 250n 500n)
VB B gnd PULSE (0V 1V 135n 0.1n 0.1n 125n 250n)
VC C gnd PULSE (0V 1V 72.5n 0.1n 0.1n 62.5n 125n)
VD D gnd PULSE (0V 1V 41.25n 0.1n 0.1n 31.25n 62.5n)

.op
.DC A 0 1 0.001
.DC B 0 1 0.001
.DC C 0 1 0.001
.DC D 0 1 0.001
*.meas DC d_av find deriv('v(out)') when v(vi)=1
.tran 0.1ns 500n
.end