EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L my-symbols:HCMS U1
U 1 1 5D7B7D04
P 4950 3250
F 0 "U1" H 5828 4196 50  0000 L CNN
F 1 "HCMS" H 5828 4105 50  0000 L CNN
F 2 "odu-pcb:HCMS_DIP-12_W7.62mm_Socket_LongPads" H 4950 3250 50  0001 C CNN
F 3 "" H 4950 3250 50  0001 C CNN
	1    4950 3250
	1    0    0    -1  
$EndComp
$Comp
L my-symbols:HCMS U2
U 1 1 5D7B8793
P 4950 4800
F 0 "U2" H 5828 5746 50  0000 L CNN
F 1 "HCMS" H 5828 5655 50  0000 L CNN
F 2 "odu-pcb:HCMS_DIP-12_W7.62mm_Socket_LongPads" H 4950 4800 50  0001 C CNN
F 3 "" H 4950 4800 50  0001 C CNN
	1    4950 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 2600 5050 2600
Wire Wire Line
	4600 2600 4600 1800
Wire Wire Line
	4600 1800 4200 1800
Wire Wire Line
	4200 1900 4700 1900
Wire Wire Line
	4700 1900 4700 2000
Wire Wire Line
	4700 2000 5000 2000
Wire Wire Line
	5000 2800 5100 2800
Connection ~ 5000 2000
Wire Wire Line
	5000 2000 5100 2000
Wire Wire Line
	5000 2000 5000 2500
Wire Wire Line
	5100 2500 5000 2500
Connection ~ 5000 2500
Wire Wire Line
	5000 2500 5000 2800
Wire Wire Line
	4350 2400 4500 2400
Wire Wire Line
	4300 2900 4800 2900
$Comp
L Connector:Conn_01x07_Male J1
U 1 1 5D7C1406
P 4000 2100
F 0 "J1" H 4108 2581 50  0000 C CNN
F 1 "Conn_01x07_Male" H 4108 2490 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x07_Pitch2.54mm" H 4000 2100 50  0001 C CNN
F 3 "~" H 4000 2100 50  0001 C CNN
	1    4000 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 2000 4200 2000
Wire Wire Line
	4350 2000 4350 2400
Wire Wire Line
	4300 2100 4200 2100
Wire Wire Line
	4300 2100 4300 2900
Wire Wire Line
	5100 2100 4550 2100
Wire Wire Line
	4550 2100 4550 2200
Wire Wire Line
	4550 2200 4200 2200
Wire Wire Line
	5100 2200 4800 2200
Wire Wire Line
	4800 2200 4800 2300
Wire Wire Line
	4800 2300 4200 2300
Wire Wire Line
	5100 2300 4950 2300
Wire Wire Line
	4950 2300 4950 2500
Wire Wire Line
	4950 2500 4750 2500
Wire Wire Line
	4200 2500 4200 2400
Wire Wire Line
	5100 1800 4950 1800
Wire Wire Line
	4950 1800 4950 1350
Wire Wire Line
	4950 1350 6400 1350
Wire Wire Line
	6400 1350 6400 3150
Wire Wire Line
	6400 3150 4850 3150
Wire Wire Line
	4850 3150 4850 3650
Wire Wire Line
	4850 3650 5100 3650
Wire Wire Line
	5000 2800 5000 3550
Wire Wire Line
	5000 3550 5100 3550
Connection ~ 5000 2800
Wire Wire Line
	5000 3550 5000 4050
Wire Wire Line
	5000 4050 5100 4050
Connection ~ 5000 3550
Wire Wire Line
	5000 4050 5000 4350
Wire Wire Line
	5000 4350 5100 4350
Connection ~ 5000 4050
Wire Wire Line
	5100 4450 4800 4450
Wire Wire Line
	4800 4450 4800 2900
Connection ~ 4800 2900
Wire Wire Line
	4800 2900 5100 2900
Wire Wire Line
	5100 2700 5050 2700
Wire Wire Line
	5050 2700 5050 2600
Connection ~ 5050 2600
Wire Wire Line
	5050 2600 4700 2600
Wire Wire Line
	4700 2600 4700 4150
Wire Wire Line
	4700 4150 5050 4150
Connection ~ 4700 2600
Wire Wire Line
	4700 2600 4600 2600
Wire Wire Line
	5100 4250 5050 4250
Wire Wire Line
	5050 4250 5050 4150
Connection ~ 5050 4150
Wire Wire Line
	5050 4150 5100 4150
Wire Wire Line
	5100 3950 4500 3950
Wire Wire Line
	4500 3950 4500 2400
Connection ~ 4500 2400
Wire Wire Line
	4500 2400 5100 2400
Wire Wire Line
	5100 3850 4400 3850
Wire Wire Line
	4400 3850 4400 2500
Connection ~ 4400 2500
Wire Wire Line
	4400 2500 4200 2500
Wire Wire Line
	5100 3750 4750 3750
Wire Wire Line
	4750 3750 4750 2500
Connection ~ 4750 2500
Wire Wire Line
	4750 2500 4400 2500
$EndSCHEMATC
