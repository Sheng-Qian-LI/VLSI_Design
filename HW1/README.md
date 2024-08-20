### Please refer to the 2023_VLSI_HW1.pdf & HW1_111063517_report.pdf for details.

# **HW1 : Inverter simulation**  

  #### In this assignment, I will design the size of the inverter and perform simulations using 180nm and 14nm process technologies. The simulations will be simulated under three process corners (TT, SS, FF). Design the transfer curve with 𝑉𝐷𝐷 = 1𝑉 and transition point 𝑉𝑀 = 0.5𝑉𝐷𝐷. (𝑉𝑜𝑢𝑡 = 0.5𝑉𝐷𝐷@𝑉𝑖𝑛 = 0.5𝑉𝐷𝐷)

  ## 180nm
### Specification
###### VDD = 1V  
###### NMOS : (W/L) = 1um/0.18um  

### Result
| Corner | PMOS size (W/L) |
| -----  |     --------    |
|  TT    |    5.4u/0.18u   |
|  SS    |    4.4u/0.18u   |
|  FF    |    5.4u/0.18u   |



  ## 14nm
### Specification
###### VDD = 0.8V  

### Result
| Corner |     NMOS fin    |     PMOS fin    |
| -----  |     --------    |     --------    |
|  TT    |        2        |        2        |        
|  SS    |        6        |        5        | 
|  FF    |        2        |        2        | 



## Compare
#####  Since the number of fins can be adjusted in the 14nm process, it is more challenging to fine-tune the Vm to a close value. In the 180nm process, the inverter achieves better output waveforms in the FF corner, whereas in the 14nm process, the output waveform is better restored to the input in the SS corner. This suggests that with larger process technologies, the components need to operate at high voltage and low temperature, while as the process size shrinks, better performance is achieved at low voltage and high temperature.
