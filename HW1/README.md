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
#####  Since the number of fins can be adjusted in the 14nm process, it is more challenging to find the Vm. In the 180nm process, the inverter achieves better output waveforms in the FF corner, whereas in the 14nm process, the output waveform is better restored to the input in the SS corner. This suggests that with larger process technologies, the components need to operate at high voltage and low temperature, while as the process size shrinks, better performance is achieved at low voltage and high temperature.
###### 因使用 14nm 的製程可調整的是 fin 的數量，所以在調整 Vm 時會較難將數值調整到接近的值。在 180nm 時，inverter 在 FF corner 可以達到較佳的輸出波型，而 14nm 的則相反，在 SS corner 的輸出波型較較還原輸入，由此推測，較大的製程下，元件需要在高電壓、低溫運作，而製成縮小後變成在低電壓、高溫時有較佳的效能。
