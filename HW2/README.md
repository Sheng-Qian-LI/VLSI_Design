### 📌Please refer to the 2023_VLSI_HW2.pdf & HW2_111063517_report.pdf for details.

# **HW2 : First layout practice**  

## 0️⃣Introducton

  ### This assignment consists of three parts.

#### The first part involves the following steps:

  ##### &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   1.Draw the transistor-level schematic & stick diagram of the Boolean function.
  ##### &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   2.Use the Laker tool to create the circuit layout.
  ##### &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   3.Perform DRC and LVS verification on the layout.

#### The second part is calculate the value of 𝑉𝐼𝐿,𝑉𝐼𝐻, 𝑉𝑂𝐿,𝑉𝑂𝐻 and 𝑁𝑀𝐻 and 𝑁𝑀𝐿 in 3 process corners (TT,SS, FF).

#### The third part is the simulation of 2-input NAND gate circuit timing.

## 1️⃣First part
  ### (I) &nbsp;&nbsp; Y = A·B·C+D
  #### &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   1. &nbsp; Transistor-level schematic &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; & &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Stick diagram    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2.  &nbsp; Layout


  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="https://github.com/user-attachments/assets/d2c2147b-59d5-4ce7-9564-63f2aaab6e1c" alt="image" width="300" height="300"> &nbsp;&nbsp;&nbsp; <img src="https://github.com/user-attachments/assets/63be66d8-a1de-4873-af2f-4bd7baac049f" alt="image" width="300" height="300">   &nbsp;&nbsp;&nbsp; <img width="300" height="300" alt="image" src="https://github.com/user-attachments/assets/ca7fe70a-aa3c-45b3-a245-7e12a7729201">  

  #### &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   3. &nbsp; DRC & LVS
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img width="450" height="300" alt="image" src="https://github.com/user-attachments/assets/a099b8cd-9162-464a-bcf8-67290233f0e0"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img width="450" height="300" alt="image" src="https://github.com/user-attachments/assets/351e689f-90f9-4173-9b3c-204f570dc0be">  


  ### (II) &nbsp;&nbsp; Y = (A+B)·(C+D) 
  #### &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   1. &nbsp; Transistor-level schematic &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; & &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Stick diagram    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 2.  &nbsp; Layout


  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="https://github.com/user-attachments/assets/ba071b3b-406a-4fc3-bee2-32063e98d3ad" alt="image" width="300" height="300"> &nbsp;&nbsp;&nbsp; <img src="https://github.com/user-attachments/assets/3dad3bcb-ce1b-4013-93e7-c4017a7df0e8" alt="image" width="300" height="300">   &nbsp;&nbsp;&nbsp; <img width="300" height="300" alt="image" src="https://github.com/user-attachments/assets/4f7b8811-ea47-4527-9d31-d4ce2dd39859">  

  #### &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   3. &nbsp; DRC & LVS
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img width="450" height="300" alt="image" src="https://github.com/user-attachments/assets/10daa2d6-8dbb-424a-b9bd-d345af78dcf7"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img width="450" height="300" alt="image" src="https://github.com/user-attachments/assets/9d38d772-4601-457a-991d-5ad527423299">   

  ### ⭐ Disussion ⭐
  #### &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; There are some problem when doing DRC & LVS
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

  #### This part continues from HW1's simulation, where the values of 𝑉𝐼𝐿, 𝑉𝐼𝐻, 𝑉𝑂𝐿, 𝑉𝑂𝐻, and 𝑁𝑀𝐻 and 𝑁𝑀𝐿 are calculated in three process corners (TT, SS, FF).
  
  |     TT corner   |      180nm      |      14nm      |   |     SS corner   |      180nm      |      14nm      |   |     FF corner   |      180nm      |      14nm      |
  |-----------------|-----------------|----------------| - |-----------------|-----------------|----------------| - |-----------------|-----------------|----------------|
  |       VIL       |     0.460V      |     0.356V     |   |       VIL       |     0.474V      |     0.349V     |   |       VIL       |     0.451V      |     0.349V     |
  |       VIH       |     0.544V      |     0.445V     |   |       VIH       |     0.527V      |     0.451V     |   |       VIH       |     0.552V      |     0.552V     |
  |       VOL       |       0V        |       0V       |   |       VOL       |       0V        |       0V       |   |       VOL       |       0V        |       0V       |
  |       VOH       |       1V        |      0.8V      |   |       VOH       |       1V        |      0.8V      |   |       VOH       |       1V        |      0.8V      |
  | NML = VIL - VOL |     0.460V      |     0.356V     |   | NML = VIL - VOL |     0.474V      |     0.349V     |   | NML = VIL - VOL |     0.451V      |     0.349V     |
  | NMH = VOH - VIH |     0.546V      |     0.355V     |   | NMH = VOH - VIH |     0.473V      |     0.349V     |   | NMH = VOH - VIH |     0.448V      |     0.451V     |

  ### ⭐ Disussion ⭐
  #### &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ▶️180nm  
  ##### &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 左圖，在 180nm 的製程下，VIL 的大小順序為 SS>TT>FF， 而 VIH的大小為 FF>TT>SS，原因是因為在 SS 時模擬元件在低電壓高溫使開關 速度下降，FF 模擬元件在高電壓低溫開關速度上升。  
  ##### &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 右圖，調整 Vin = Vout 的情形，VTC 的趨勢一樣是 VIL 的大小順序為 SS>TT>FF，VIH的大小為 FF>TT>SS。(modify pmos size)
  <img width="60" height="55" alt="image" src="https://github.com/user-attachments/assets/19ca5a03-7e4d-4684-944c-a536a2f8a3a2"> &nbsp; <img width="450" height="300" alt="image" src="https://github.com/user-attachments/assets/d0332634-bd6c-4966-a473-341eed4e01db"> &nbsp;&nbsp;&nbsp; <img width="450" height="300" alt="image" src="https://github.com/user-attachments/assets/b33d33d8-502f-4374-9b62-5cec8b374c93">


  #### &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ▶️14nm  
  ##### &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 左圖，在 14nm 的製程下，VIL 的大小順序與 180nm 相同 為 SS>TT>FF，而 VIH的大小為 SS>FF>TT，與 180nm 不同。
  ##### &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 右圖，調整 Vin = Vout 的情形，VTC 與未調整的不同，VIL 變成 TT>SS=FF，VIH也一樣，所以在 process corner 的模擬下可以發現，14nm 製程 的電壓穩定度相對於 180nm 較小，讓元件在不同的環境下較不容易損壞。
  <img width="60" height="55" alt="image" src="https://github.com/user-attachments/assets/19ca5a03-7e4d-4684-944c-a536a2f8a3a2"> &nbsp; <img width="450" height="300" alt="image" src="https://github.com/user-attachments/assets/b6dc7df2-a84a-4adf-aaf8-d98f13cb06bb"> &nbsp;&nbsp;&nbsp; <img width="450" height="300" alt="image" src="https://github.com/user-attachments/assets/d9304cc0-fa1c-457b-923e-fffb86a57ffe">
## 3️⃣Third part
  
