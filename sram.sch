EESchema Schematic File Version 2  date Sat 16 Apr 2011 10:09:15 AM PDT
LIBS:power,/home/jessb/Projects/leafhw/hardware-lib/leaf,device,conn,linear,regul,74xx,cmos4000,adc-dac,memory,xilinx,special,microcontrollers,dsp,microchip,analog_switches,motorola,texas,intel,audio,interface,digital-audio,philips,display,cypress,siliconi,contrib,valves,./mapleNative.cache
EELAYER 24  0
EELAYER END
$Descr A4 11700 8267
Sheet 4 5
Title ""
Date "21 feb 2011"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	3400 4250 3400 4350
Wire Wire Line
	3400 4850 3400 4750
Wire Wire Line
	7850 3900 7850 4000
Connection ~ 4350 4700
Wire Wire Line
	4350 4700 4450 4700
Connection ~ 3800 4750
Wire Wire Line
	3400 4750 4350 4750
Connection ~ 3800 4350
Wire Wire Line
	3400 4350 4350 4350
Wire Wire Line
	4350 4350 4350 4500
Wire Wire Line
	6950 4400 6850 4400
Wire Wire Line
	6950 3900 6850 3900
Wire Wire Line
	6950 3700 6850 3700
Wire Wire Line
	6950 3500 6850 3500
Wire Wire Line
	6950 3300 6850 3300
Wire Wire Line
	6950 3100 6850 3100
Wire Wire Line
	6950 2900 6850 2900
Wire Wire Line
	6950 2700 6850 2700
Wire Wire Line
	6950 2500 6850 2500
Wire Wire Line
	4350 4200 4450 4200
Wire Wire Line
	4350 4000 4450 4000
Wire Wire Line
	4350 3800 4450 3800
Wire Wire Line
	4350 3600 4450 3600
Wire Wire Line
	4350 3400 4450 3400
Wire Wire Line
	4350 3200 4450 3200
Wire Wire Line
	4350 3000 4450 3000
Wire Wire Line
	4350 2800 4450 2800
Wire Wire Line
	4350 2600 4450 2600
Wire Wire Line
	4350 2400 4450 2400
Wire Wire Line
	4450 4600 4350 4600
Wire Wire Line
	4350 4500 4450 4500
Wire Wire Line
	4350 2500 4450 2500
Wire Wire Line
	4350 2700 4450 2700
Wire Wire Line
	4350 2900 4450 2900
Wire Wire Line
	4350 3100 4450 3100
Wire Wire Line
	4350 3300 4450 3300
Wire Wire Line
	4350 3500 4450 3500
Wire Wire Line
	4350 3700 4450 3700
Wire Wire Line
	4350 3900 4450 3900
Wire Wire Line
	4350 4100 4450 4100
Wire Wire Line
	6950 2400 6850 2400
Wire Wire Line
	6950 2600 6850 2600
Wire Wire Line
	6950 2800 6850 2800
Wire Wire Line
	6950 3000 6850 3000
Wire Wire Line
	6950 3200 6850 3200
Wire Wire Line
	6950 3400 6850 3400
Wire Wire Line
	6950 3600 6850 3600
Wire Wire Line
	6950 3800 6850 3800
Wire Wire Line
	6950 4300 6850 4300
Wire Wire Line
	6950 4500 6850 4500
Wire Wire Line
	6950 4700 6850 4700
Wire Wire Line
	4350 4600 4350 4750
Wire Wire Line
	4350 4400 4450 4400
Connection ~ 4350 4400
Wire Wire Line
	8050 4600 6850 4600
Wire Wire Line
	7850 4500 7850 4600
Connection ~ 7850 4600
$Comp
L VCC #PWR041
U 1 1 4B918A73
P 7850 3900
F 0 "#PWR041" H 7850 4000 30  0001 C CNN
F 1 "VCC" H 7850 4000 30  0000 C CNN
	1    7850 3900
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 4B918A65
P 7850 4250
F 0 "R3" V 7930 4250 50  0000 C CNN
F 1 "10k" V 7850 4250 50  0000 C CNN
	1    7850 4250
	1    0    0    -1  
$EndComp
$Comp
L C C4
U 1 1 4B915E91
P 3800 4550
F 0 "C4" H 3850 4650 50  0000 L CNN
F 1 "0.1uF" H 3850 4450 50  0000 L CNN
	1    3800 4550
	1    0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 4B915E8C
P 3400 4550
F 0 "C3" H 3450 4650 50  0000 L CNN
F 1 "0.1uF" H 3450 4450 50  0000 L CNN
	1    3400 4550
	1    0    0    -1  
$EndComp
Text GLabel 4350 4100 0    60   Input ~ 0
60/FSMC_A17
Text GLabel 4350 4000 0    60   Input ~ 0
57/FSMC_A16
Text GLabel 4350 3900 0    60   Input ~ 0
99/FSMC_A15
Text GLabel 4350 3800 0    60   Input ~ 0
97/FSMC_A14
Text GLabel 4350 3700 0    60   Input ~ 0
94/FSMC_A13
Text GLabel 4350 3600 0    60   Input ~ 0
91/FSMC_A12
Text GLabel 4350 3500 0    60   Input ~ 0
88/FSMC_A11
Text GLabel 4350 3400 0    60   Input ~ 0
85/FSMC_A10
Text GLabel 4350 3300 0    60   Input ~ 0
82/FSMC_A9
Text GLabel 4350 3200 0    60   Input ~ 0
79/FSMC_A8
Text GLabel 4350 3100 0    60   Input ~ 0
77/FSMC_A7
$Comp
L GND #PWR042
U 1 1 4B8F0473
P 3400 4850
F 0 "#PWR042" H 3400 4850 30  0001 C CNN
F 1 "GND" H 3400 4780 30  0001 C CNN
	1    3400 4850
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR043
U 1 1 4B8F0470
P 3400 4250
F 0 "#PWR043" H 3400 4350 30  0001 C CNN
F 1 "VCC" H 3400 4350 30  0000 C CNN
	1    3400 4250
	1    0    0    -1  
$EndComp
Text GLabel 4350 4200 0    60   Input ~ 0
63/FSMC_A18
Text GLabel 4350 3000 0    60   Input ~ 0
74/FSMC_A6
Text GLabel 4350 2900 0    60   Input ~ 0
71/FSMC_A5
Text GLabel 4350 2800 0    60   Input ~ 0
68/FSMC_A4
Text GLabel 4350 2700 0    60   Input ~ 0
65/FSMC_A3
Text GLabel 4350 2600 0    60   Input ~ 0
62/FSMC_A2
Text GLabel 4350 2500 0    60   Input ~ 0
59/FSMC_A1
Text GLabel 4350 2400 0    60   Input ~ 0
56/FSMC_A0
Text GLabel 6950 2400 2    60   BiDi ~ 0
58/FSMC_D0
Text GLabel 6950 2500 2    60   BiDi ~ 0
61/FSMC_D1
Text GLabel 6950 2600 2    60   BiDi ~ 0
64/FSMC_D2
Text GLabel 6950 2700 2    60   BiDi ~ 0
67/FSMC_D3
Text GLabel 6950 2800 2    60   BiDi ~ 0
70/FSMC_D4
Text GLabel 6950 2900 2    60   BiDi ~ 0
73/FSMC_D5
Text GLabel 6950 3000 2    60   BiDi ~ 0
76/FSMC_D6
Text GLabel 6950 3100 2    60   BiDi ~ 0
78/FSMC_D7
Text GLabel 6950 3200 2    60   BiDi ~ 0
81/FSMC_D8
Text GLabel 6950 3300 2    60   BiDi ~ 0
84/FSMC_D9
Text GLabel 6950 3400 2    60   BiDi ~ 0
87/FSMC_D10
Text GLabel 6950 3500 2    60   BiDi ~ 0
90/FSMC_D11
Text GLabel 6950 3600 2    60   BiDi ~ 0
93/FSMC_D12
Text GLabel 6950 3700 2    60   BiDi ~ 0
96/FSMC_D13
Text GLabel 6950 3800 2    60   BiDi ~ 0
98/FSMC_D14
Text GLabel 6950 3900 2    60   BiDi ~ 0
100/FSMC_D15
Text GLabel 8050 4600 2    60   BiDi ~ 0
FSMC_NE1
Text GLabel 6950 4500 2    60   BiDi ~ 0
95/FSMC_NBL0
Text GLabel 6950 4400 2    60   BiDi ~ 0
92/FSMC_NBL1
Text GLabel 6950 4700 2    60   BiDi ~ 0
86/FSMC_NWE
Text GLabel 6950 4300 2    60   BiDi ~ 0
89/FSMC_NOE
$Comp
L IS62WV51216ALL U2
U 1 1 4B8AFC40
P 5600 3550
F 0 "U2" H 4800 4850 60  0000 C CNN
F 1 "IS62WV51216ALL" H 5650 3550 60  0000 C CNN
	1    5600 3550
	1    0    0    -1  
$EndComp
$EndSCHEMATC
