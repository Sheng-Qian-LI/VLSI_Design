*Inverter
.protect
.lib 'cic018.l' TT 
.unprotect
.temp 25
.option post

.SUBCKT inv in out VDD VSS
MM0 out in VDD VDD p_18 W=5.40u L=180.00n m=1
MM1 out in VSS VSS n_18 W=1u L=180.00n m=1

CL out VSS 2p
.ENDS


x1 in out VDD VSS inv
VDD VDD gnd DC 1
VSS VSS gnd DC 0
Vi in gnd PULSE (0V 1V 10n 0.1n 0.1n 50n 100n)


.op
.DC Vi 0 1 0.001
.meas DC d_av find deriv('v(out)') when v(vi)=1
.tran 0.1ns 500n
.end


