### Please refer to the 2023_VLSI_HW2.pdf & HW1_111063517_report.pdf for details.

# **HW2 : First layout practice**  

## 0️⃣Introducton

  ### This assignment consists of two parts.

#### The first part involves the following steps:

  ##### &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   1.Draw the transistor-level schematic & stick diagram of the Boolean function.
  ##### &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   2.Use the Laker tool to create the circuit layout.
  ##### &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   3.Perform DRC and LVS verification on the layout.

#### The second part is the simulation of the circuit timing.

## 1️⃣First part
  ### (I) &nbsp;&nbsp; Y = A·B·C+D
  #### &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   1. &nbsp; transistor-level schematic &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; & &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Stick diagram    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2.  &nbsp; Layout

  
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="https://github.com/user-attachments/assets/d2c2147b-59d5-4ce7-9564-63f2aaab6e1c" alt="image" width="300" height="300"> &nbsp;&nbsp;&nbsp; <img src="https://github.com/user-attachments/assets/2873326a-406e-45cd-ab6a-c2ff60709dcb" alt="image" width="300" height="300">   &nbsp;&nbsp;&nbsp; <img width="300" height="300" alt="image" src="https://github.com/user-attachments/assets/ca7fe70a-aa3c-45b3-a245-7e12a7729201">  

  #### &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   3. &nbsp; DRC & LVS
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img width="450" height="300" alt="image" src="https://github.com/user-attachments/assets/a099b8cd-9162-464a-bcf8-67290233f0e0"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img width="450" height="300" alt="image" src="https://github.com/user-attachments/assets/351e689f-90f9-4173-9b3c-204f570dc0be">  


  ### (II) &nbsp;&nbsp; Y = (A+B)·(C+D) 
  #### &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   1. &nbsp; transistor-level schematic &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; & &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Stick diagram    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2.  &nbsp; Layout

  
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="https://github.com/user-attachments/assets/b6462ac0-65ce-4c30-ab71-7c2f6e8f586f" alt="image" width="300" height="300"> &nbsp;&nbsp;&nbsp; <img src="https://github.com/user-attachments/assets/a0002213-39fe-4364-9c79-e449899eb672" alt="image" width="300" height="300">   &nbsp;&nbsp;&nbsp; <img width="300" height="300" alt="image" src="https://github.com/user-attachments/assets/4f7b8811-ea47-4527-9d31-d4ce2dd39859">  

  #### &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   3. &nbsp; DRC & LVS
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img width="450" height="300" alt="image" src="https://github.com/user-attachments/assets/10daa2d6-8dbb-424a-b9bd-d345af78dcf7"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img width="450" height="300" alt="image" src="https://github.com/user-attachments/assets/9d38d772-4601-457a-991d-5ad527423299">   

  ### ⭐ Disussion ⭐
  #### There are some problem when doing DRC & LVS
  #### &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ✅DRC  
  ##### &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1. Metel and metal distance at least 0.23u
  ##### &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2. Poly and poly distance at least 0.25u
  ##### &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3. Pmos 需要用 nwell 完整的包覆起來。
  ##### &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4. Nwell and VDD metal distance at least 0.5u
  ##### &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 5. Mos 如果是串聯形式則不需要在中間打 metal 否則 DRC 會出現空接的報錯。
  ##### &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 6. 在輸出端的 inverter 使用 metal 接到 poly 上，這裡的 contact 如果與 drain 端的 metal 太近也會報錯(至少要 0.24u)。

  #### &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ✅LVS
  ##### &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1. Schematic 的名字要 label 好與 layout 要匹配，不只是 input 和 output，wire 的名字也要 label 好。
  ##### &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2. 在畫 schematic 時，pmos 和 nmos 的 base 端都要接在一起，而不是接 到 source。
  ##### &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 3. 如果電路有少接在 DRC 可能會通過，但 LVS 會報錯，例如開路的話 在 initial number of objects 的 layout 與 source 會對不上。
  ##### &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 4. 如果一開始 icfb 產生的 netlist 檔還未加入 mos 的 size 只顯示 NM， LVS 也會報錯顯示找不到 MOS。


## 2️⃣Second part
