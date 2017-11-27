//Maya ASCII 2018 scene
//Name: ExplosionCrystal.ma
//Last modified: Mon, Nov 27, 2017 04:41:25 PM
//Codeset: 1252
requires maya "2018";
requires -nodeType "polySuperShape" "modelingToolkit" "0.0.0.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2018";
fileInfo "version" "2018";
fileInfo "cutIdentifier" "201706261615-f9658c4cfc";
fileInfo "osv" "Microsoft Windows 8 Home Premium Edition, 64-bit  (Build 9200)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	rename -uid "587F7D47-4B40-5ACF-2708-50B6BA96DE6F";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 4.8739841673624626 3.0340039245151145 7.1354989305214787 ;
	setAttr ".r" -type "double3" -18.338352729626852 -688.1999999999864 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "EA45D6C6-43AD-A54B-2D05-F68BCF6FA17C";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 9.2341048447005818;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "13B5C12C-4CE7-A3EC-6F67-CC9366607C0F";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "CCA1646B-4DAE-92A4-E216-FEB5F9235591";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "74A1D572-4CF0-BE72-73C4-A5A9E7504016";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "2D992F19-41CF-5645-B3FF-2EA4F4E14C8F";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "BD00666A-4CEC-FAF2-5AAF-0DBB04DCA66A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "4767163A-4EBD-6A90-14DE-08A219453959";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "ExplodyCrystal";
	rename -uid "E938A1E7-4B18-5C4B-2BFB-66BCF629E972";
createNode mesh -n "ExplodyCrystalShape" -p "ExplodyCrystal";
	rename -uid "4F4D03E5-473B-9997-078C-31863922D87C";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.75 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 199 ".uvst[0].uvsp[0:198]" -type "float2" 1 0.38386026 0.25
		 0.11613975 0.19193013 0.5 0.125 0.30408674 0.375 0.30408674 0.5 0.38386026 0.25 0.88386023
		 0.30806988 0.5 0.125 0.69591326 0.375 0.69591326 1 0.61613977 0.75 0.11613975 0.80806988
		 0.5 0.875 0.30408674 0.625 0.30408674 0.5 0.61613977 0.75 0.88386023 0.69193012 0.5
		 0.875 0.69591326 0.625 0.69591326 1 0.8237918 0.75 0.6762082 0.5 0.82379186 0.25
		 0.6762082 1 0.17620823 0.5 0.17620823 0.91189587 0.5 0.088104077 0.5 0.25 0.32379177
		 0.4118959 0.5 0.75 0.32379177 0.58810407 0.5 1.25 0.88386023 1.125 0.69591326 1.25
		 0.11613975 1.125 0.30408674 1.088104129 0.5 1 0.86456788 1 0.88386023 0.5 0.88386023
		 0.875 0.85382605 1.125 0.85382605 0.87343121 0.79240781 0.8125 0.78988671 0.9375
		 0.75985253 0.95108461 0.70925045 0.9375 0.65602648 1 0.71996582 1.048915505 0.70925045
		 1.0625 0.65602648 1.0625 0.75985253 1.12656868 0.79240781 1.1875 0.78988671 0.1875
		 0.78988671 0.74999994 0.5565933 0.75 0.5 0.77903497 0.58810413 0.72096503 0.58810413
		 0.81695276 0.62918669 0.84153497 0.59795666 0.8125 0.68606073 0.79891557 0.74841869
		 0.75 0.78003418 0.70108455 0.74841869 0.6875 0.78988671 0.6875 0.68606073 0.68304718
		 0.62918669 0.65846503 0.59795666 0.54891551 0.70925039 0.5625 0.65602648 0.5625 0.75985253
		 0.5 0.71996582 0.62656873 0.79240787 0.625 0.85382605 0.5 0.86456794 0.5 0.88386023
		 0.375 0.85382605 0.37343127 0.79240787 0.3125 0.78988671 0.4375 0.75985253 0.45108449
		 0.70925039 0.4375 0.65602648 0.25 0.5565933 0.25 0.5 0.27903494 0.58810413 0.22096506
		 0.58810413 0.31695274 0.62918669 0.34153494 0.59795666 0.3125 0.68606073 0.29891551
		 0.74841869 0.25 0.78003418 0.20108451 0.74841869 0.1875 0.78988671 0.1875 0.68606073
		 0.18304724 0.62918669 0.15846506 0.59795666 1 0.13543212 1 0.11613975 0.5 0.11613975
		 1.125 0.14617398 0.875 0.14617398 1.12656868 0.2075921 1.1875 0.21011324 0.1875 0.21011324
		 1.0625 0.24014749 1.048915505 0.29074958 1.0625 0.34397352 1 0.28003424 0.95108461
		 0.29074958 0.9375 0.34397352 0.9375 0.24014749 0.87343121 0.2075921 0.8125 0.21011324
		 0.5 0.13543212 0.5 0.11613975 0.625 0.14617398 0.375 0.14617398 0.62656868 0.2075921
		 0.6875 0.21011324 0.5625 0.24014749 0.54891557 0.29074958 0.5625 0.34397352 0.5 0.28003424
		 0.45108452 0.29074958 0.4375 0.34397352 0.4375 0.24014749 0.37343124 0.2075921 0.3125
		 0.21011324 0.92482388 0.38725993 0.95594794 0.44193012 0.89344794 0.40204337 0.97170335
		 0.5 1 0.5 0.95594794 0.55806988 0.92482388 0.61274004 0.89344794 0.59795666 0.86520803
		 0.57666564 0.85998285 0.5 0.86520803 0.42333445 0.84153497 0.40204337 1.075176239
		 0.38725996 1.10655212 0.40204337 0.10655203 0.40204337 1.044052124 0.44193012 0.13479204
		 0.42333442 0.15846506 0.40204337 0.14001711 0.5 0.10655203 0.40204337 0.13479204
		 0.57666558 0.10655203 0.59795666 1.10655212 0.59795666 1.075176239 0.6127401 1.044052124
		 0.55806988 1.10655212 0.59795666 1.028296828 0.5 0.29891551 0.25158131 0.3125 0.31393927
		 0.25 0.21996576 0.31695274 0.37081328 0.34153494 0.40204337 0.27903494 0.41189587
		 0.25 0.44340667 0.22096506 0.41189587 0.18304724 0.37081328 0.1875 0.31393927 0.20108449
		 0.25158131 0.1875 0.21011324 0.42482391 0.38725993 0.45594794 0.44193012 0.39344794
		 0.40204337 0.47170335 0.5 0.5 0.5 0.45594794 0.55806988 0.42482391 0.61274004 0.39344794
		 0.59795666 0.36520797 0.57666564 0.35998291 0.5 0.36520797 0.42333445 0.79891545
		 0.25158131 0.8125 0.31393927 0.75 0.21996576 0.81695276 0.37081328 0.77903497 0.41189587
		 0.75 0.44340667 0.72096503 0.41189587 0.68304724 0.37081328 0.65846503 0.40204337
		 0.6875 0.31393927 0.70108443 0.25158131 0.57517606 0.38725996 0.606552 0.40204337
		 0.544052 0.44193012 0.63479197 0.42333442 0.64001709 0.5 0.63479197 0.57666558 0.606552
		 0.59795666 0.57517606 0.6127401 0.544052 0.55806988 0.52829665 0.5;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 7 ".pt";
	setAttr ".pt[33]" -type "float3" 0 1.0658276 0 ;
	setAttr ".pt[48]" -type "float3" 1.0658276 0 0 ;
	setAttr ".pt[75]" -type "float3" -1.0658276 0 0 ;
	setAttr ".pt[88]" -type "float3" 0 -1.0658276 0 ;
	setAttr ".pt[120]" -type "float3" 0 0 -1.0658276 ;
	setAttr ".pt[154]" -type "float3" 0 0 1.0658276 ;
	setAttr -s 182 ".vt";
	setAttr ".vt[0:165]"  0 -0.35682213 -0.93417245 -0.35682213 -0.93417245 0
		 -0.93417245 0 -0.35682213 -1 -1 -1 -1 -1 1 0 -0.35682213 0.93417245 -0.35682213 0.93417245 0
		 -0.93417245 0 0.35682213 -1 1 -1 -1 1 1 0 0.35682213 -0.93417245 0.35682213 -0.93417245 0
		 0.93417245 0 -0.35682213 1 -1 -1 1 -1 1 0 0.35682213 0.93417245 0.35682213 0.93417245 0
		 0.93417245 0 0.35682213 1 1 -1 1 1 1 0 0.85065079 -0.52573115 0.85065079 0.52573115 0
		 0 0.85065079 0.52573109 -0.85065079 0.52573115 0 0 -0.85065079 -0.52573115 0 -0.85065079 0.52573115
		 0.52573115 0 -0.85065079 -0.52573109 -7.5006996e-09 -0.85065079 -0.85065079 -0.52573109 0
		 -0.52573115 0 0.85065079 0.85065079 -0.52573109 0 0.52573109 -7.5006996e-09 0.85065079
		 0 0.9073475 -0.16885065 0 0.93417245 0 0.17841107 0.89241159 -0.26286557 -0.17841107 0.89241159 -0.26286557
		 0.50215757 0.93503755 -0.54802501 0.67841107 0.9670862 -0.5 0.5 0.92532539 -0.76286554
		 0.39132404 0.75570512 -0.83819109 0.5 0.67841107 -0.9670862 0 0.60373646 -0.7299518
		 -0.39132404 0.75570512 -0.83819109 -0.5 0.67841107 -0.9670862 -0.5 0.92532539 -0.76286554
		 -0.50215757 0.93503755 -0.54802501 -0.67841107 0.9670862 -0.5 0.9073475 0.16885065 0
		 0.93417245 0 0 0.89241159 0.26286557 -0.17841107 0.89241159 0.26286557 0.17841107
		 0.93503755 0.54802501 -0.50215757 0.9670862 0.5 -0.67841107 0.92532539 0.76286554 -0.5
		 0.75570512 0.83819109 -0.39132404 0.60373646 0.7299518 0 0.75570512 0.83819109 0.39132404
		 0.67841107 0.9670862 0.5 0.92532539 0.76286554 0.5 0.93503755 0.54802501 0.50215757
		 0.9670862 0.5 0.67841107 0.39132401 0.75570512 0.83819103 0.5 0.67841107 0.9670862
		 0.5 0.92532539 0.76286554 0 0.60373646 0.72995174 0.50215757 0.93503755 0.54802495
		 0.17841107 0.89241159 0.26286554 0 0.9073475 0.1688506 -0.17841107 0.89241159 0.26286554
		 -0.50215757 0.93503755 0.54802495 -0.67841107 0.9670862 0.5 -0.5 0.92532539 0.76286554
		 -0.39132401 0.75570512 0.83819103 -0.5 0.67841107 0.9670862 -0.9073475 0.16885065 0
		 -0.93417245 0 0 -0.89241159 0.26286557 0.17841107 -0.89241159 0.26286557 -0.17841107
		 -0.93503755 0.54802501 0.50215757 -0.9670862 0.5 0.67841107 -0.92532539 0.76286554 0.5
		 -0.75570512 0.83819109 0.39132404 -0.60373646 0.7299518 0 -0.75570512 0.83819109 -0.39132404
		 -0.92532539 0.76286554 -0.5 -0.93503755 0.54802501 -0.50215757 -0.9670862 0.5 -0.67841107
		 0 -0.9073475 -0.16885065 0 -0.93417245 0 -0.17841107 -0.89241159 -0.26286557 0.17841107 -0.89241159 -0.26286557
		 -0.50215757 -0.93503755 -0.54802501 -0.67841107 -0.9670862 -0.5 -0.5 -0.92532539 -0.76286554
		 -0.39132404 -0.75570512 -0.83819109 -0.5 -0.67841107 -0.9670862 0 -0.60373646 -0.7299518
		 0.39132404 -0.75570512 -0.83819109 0.5 -0.67841107 -0.9670862 0.5 -0.92532539 -0.76286554
		 0.50215757 -0.93503755 -0.54802501 0.67841107 -0.9670862 -0.5 0 -0.9073475 0.16885065
		 0.17841107 -0.89241159 0.26286557 -0.17841107 -0.89241159 0.26286557 0.50215757 -0.93503755 0.54802501
		 0.67841107 -0.9670862 0.5 0.5 -0.92532539 0.76286554 0.39132404 -0.75570512 0.83819109
		 0.5 -0.67841107 0.9670862 0 -0.60373646 0.7299518 -0.39132404 -0.75570512 0.83819109
		 -0.5 -0.67841107 0.9670862 -0.5 -0.92532539 0.76286554 -0.50215757 -0.93503755 0.54802501
		 -0.67841107 -0.9670862 0.5 0.54802501 -0.50215757 -0.93503755 0.26286557 -0.17841107 -0.89241159
		 0.76286554 -0.5 -0.92532539 0.16885063 0 -0.9073475 0 0 -0.93417245 0.26286557 0.17841107 -0.89241159
		 0.54802501 0.50215757 -0.93503755 0.76286554 0.5 -0.92532539 0.83819109 0.39132404 -0.75570512
		 0.7299518 0 -0.60373646 0.83819109 -0.39132404 -0.75570512 0.9670862 -0.5 -0.67841107
		 -0.54802501 -0.50215757 -0.93503761 -0.76286554 -0.5 -0.92532539 -0.26286554 -0.17841107 -0.89241159
		 -0.83819103 -0.39132401 -0.75570512 -0.9670862 -0.5 -0.67841107 -0.72995174 -3.7503498e-09 -0.60373646
		 -0.83819103 0.39132401 -0.75570512 -0.76286554 0.5 -0.92532539 -0.54802501 0.50215757 -0.93503761
		 -0.26286554 0.17841107 -0.89241159 -0.16885062 0 -0.9073475 -0.75570518 -0.83819103 0.39132401
		 -0.92532539 -0.76286554 0.5 -0.60373646 -0.72995174 0 -0.93503755 -0.54802501 0.50215757
		 -0.9670862 -0.5 0.67841107 -0.89241159 -0.26286554 0.17841107 -0.9073475 -0.1688506 0
		 -0.89241159 -0.26286554 -0.17841107 -0.93503755 -0.54802501 -0.50215757 -0.92532539 -0.76286554 -0.5
		 -0.75570518 -0.83819103 -0.39132401 -0.54802501 -0.50215757 0.93503755 -0.26286557 -0.17841107 0.89241159
		 -0.76286554 -0.5 0.92532539 -0.16885063 0 0.9073475 0 0 0.93417245 -0.26286557 0.17841107 0.89241159
		 -0.54802501 0.50215757 0.93503755 -0.76286554 0.5 0.92532539 -0.83819109 0.39132404 0.75570512
		 -0.7299518 0 0.60373646 -0.83819109 -0.39132404 0.75570512 0.75570518 -0.83819103 -0.39132401
		 0.92532539 -0.76286554 -0.5 0.60373646 -0.72995174 0 0.93503755 -0.54802501 -0.50215757
		 0.89241159 -0.26286554 -0.17841107;
	setAttr ".vt[166:181]" 0.9073475 -0.1688506 0 0.89241159 -0.26286554 0.17841107
		 0.93503755 -0.54802501 0.50215757 0.9670862 -0.5 0.67841107 0.92532539 -0.76286554 0.5
		 0.75570518 -0.83819103 0.39132401 0.54802501 -0.50215757 0.93503761 0.76286554 -0.5 0.92532539
		 0.26286554 -0.17841107 0.89241159 0.83819103 -0.39132401 0.75570512 0.72995174 -3.7503498e-09 0.60373646
		 0.83819103 0.39132401 0.75570512 0.76286554 0.5 0.92532539 0.54802501 0.50215757 0.93503761
		 0.26286554 0.17841107 0.89241159 0.16885062 0 0.9073475;
	setAttr -s 360 ".ed";
	setAttr ".ed[0:165]"  6 33 1 16 34 1 20 35 1 16 37 1 18 38 1 18 40 1 10 41 1
		 10 43 1 8 44 1 8 46 1 17 48 1 12 49 1 21 50 1 12 52 1 18 53 1 16 55 1 16 57 1 19 58 1
		 19 60 1 15 62 1 19 63 1 22 64 1 16 66 1 6 68 1 6 70 1 9 71 1 9 73 1 2 75 1 7 76 1
		 23 77 1 7 79 1 9 80 1 6 82 1 8 84 1 8 86 1 11 88 1 1 89 1 24 90 1 1 92 1 3 93 1 3 95 1
		 0 96 1 0 98 1 13 99 1 13 101 1 11 103 1 25 104 1 11 106 1 14 107 1 14 109 1 5 110 1
		 5 112 1 4 113 1 4 115 1 0 117 1 26 118 1 0 120 1 10 121 1 18 123 1 12 125 1 12 127 1
		 3 129 1 27 130 1 3 132 1 2 133 1 8 135 1 10 137 1 4 140 1 28 141 1 4 143 1 7 144 1
		 2 146 1 3 148 1 5 151 1 29 152 1 5 154 1 15 155 1 9 157 1 7 159 1 13 162 1 30 163 1
		 12 165 1 17 167 1 17 169 1 14 170 1 14 173 1 31 174 1 17 176 1 19 178 1 15 180 1
		 33 16 1 34 20 1 35 6 1 33 32 0 34 32 0 35 32 0 37 18 1 38 20 1 37 36 0 38 36 0 34 36 0
		 40 10 1 41 20 1 40 39 0 41 39 0 38 39 0 43 8 1 44 20 1 43 42 0 44 42 0 41 42 0 46 6 1
		 46 45 0 35 45 0 44 45 0 48 12 1 49 21 1 50 17 1 48 47 0 49 47 0 50 47 0 52 18 1 53 21 1
		 52 51 0 53 51 0 49 51 0 55 21 1 37 54 0 55 54 0 53 54 0 57 19 1 58 21 1 57 56 0 58 56 0
		 55 56 0 60 17 1 60 59 0 50 59 0 58 59 0 62 19 1 63 22 1 64 15 1 62 61 0 63 61 0 64 61 0
		 66 22 1 57 65 0 66 65 0 63 65 0 68 22 1 33 67 0 68 67 0 66 67 0 70 9 1 71 22 1 70 69 0
		 71 69 0 68 69 0 73 15 1 73 72 0 64 72 0 71 72 0 75 7 1 76 23 1 77 2 1 75 74 0;
	setAttr ".ed[166:331]" 76 74 0 77 74 0 79 9 1 80 23 1 79 78 0 80 78 0 76 78 0
		 82 23 1 70 81 0 82 81 0 80 81 0 84 23 1 46 83 0 84 83 0 82 83 0 86 2 1 86 85 0 77 85 0
		 84 85 0 88 1 1 89 24 1 90 11 1 88 87 0 89 87 0 90 87 0 92 3 1 93 24 1 92 91 0 93 91 0
		 89 91 0 95 0 1 96 24 1 95 94 0 96 94 0 93 94 0 98 13 1 99 24 1 98 97 0 99 97 0 96 97 0
		 101 11 1 101 100 0 90 100 0 99 100 0 103 25 1 104 1 1 88 102 0 103 102 0 104 102 0
		 106 14 1 107 25 1 106 105 0 107 105 0 103 105 0 109 5 1 110 25 1 109 108 0 110 108 0
		 107 108 0 112 4 1 113 25 1 112 111 0 113 111 0 110 111 0 115 1 1 115 114 0 104 114 0
		 113 114 0 117 26 1 118 13 1 98 116 0 117 116 0 118 116 0 120 10 1 121 26 1 120 119 0
		 121 119 0 117 119 0 123 26 1 40 122 0 123 122 0 121 122 0 125 26 1 52 124 0 125 124 0
		 123 124 0 127 13 1 127 126 0 118 126 0 125 126 0 129 27 1 130 0 1 95 128 0 129 128 0
		 130 128 0 132 2 1 133 27 1 132 131 0 133 131 0 129 131 0 135 27 1 86 134 0 135 134 0
		 133 134 0 137 27 1 43 136 0 137 136 0 135 136 0 120 138 0 130 138 0 137 138 0 140 28 1
		 141 1 1 115 139 0 140 139 0 141 139 0 143 7 1 144 28 1 143 142 0 144 142 0 140 142 0
		 146 28 1 75 145 0 146 145 0 144 145 0 148 28 1 132 147 0 148 147 0 146 147 0 92 149 0
		 141 149 0 148 149 0 151 29 1 152 4 1 112 150 0 151 150 0 152 150 0 154 15 1 155 29 1
		 154 153 0 155 153 0 151 153 0 157 29 1 73 156 0 157 156 0 155 156 0 159 29 1 79 158 0
		 159 158 0 157 158 0 143 160 0 152 160 0 159 160 0 162 30 1 163 11 1 101 161 0 162 161 0
		 163 161 0 165 30 1 127 164 0 165 164 0 162 164 0 167 30 1 48 166 0 167 166 0 165 166 0;
	setAttr ".ed[332:359]" 169 14 1 170 30 1 169 168 0 170 168 0 167 168 0 106 171 0
		 163 171 0 170 171 0 173 31 1 174 5 1 109 172 0 173 172 0 174 172 0 176 31 1 169 175 0
		 176 175 0 173 175 0 178 31 1 60 177 0 178 177 0 176 177 0 180 31 1 62 179 0 180 179 0
		 178 179 0 154 181 0 174 181 0 180 181 0;
	setAttr -s 180 -ch 720 ".fc[0:179]" -type "polyFaces" 
		f 4 92 0 93 -96
		mu 0 4 41 32 38 37
		f 4 -2 3 98 -101
		mu 0 4 40 16 43 42
		f 4 -5 5 103 -106
		mu 0 4 44 18 46 45
		f 4 -7 7 108 -111
		mu 0 4 47 10 49 48
		f 4 -9 9 112 -115
		mu 0 4 50 33 52 51
		f 4 117 10 118 -121
		mu 0 4 57 17 55 54
		f 4 -12 13 123 -126
		mu 0 4 56 12 59 58
		f 4 -15 -97 127 -130
		mu 0 4 60 18 43 61
		f 4 -16 16 132 -135
		mu 0 4 62 16 64 63
		f 4 -18 18 136 -139
		mu 0 4 65 19 67 66
		f 4 141 19 142 -145
		mu 0 4 71 15 69 68
		f 4 -21 -131 146 -149
		mu 0 4 70 19 64 72
		f 4 -23 -91 150 -153
		mu 0 4 73 16 75 74
		f 4 -24 24 155 -158
		mu 0 4 76 6 78 77
		f 4 -26 26 159 -162
		mu 0 4 79 9 81 80
		f 4 164 27 165 -168
		mu 0 4 85 2 83 82
		f 4 -29 30 170 -173
		mu 0 4 84 7 87 86
		f 4 -32 -154 174 -177
		mu 0 4 88 9 78 89
		f 4 -33 -112 178 -181
		mu 0 4 90 6 92 91
		f 4 -34 34 182 -185
		mu 0 4 93 8 95 94
		f 4 187 35 188 -191
		mu 0 4 100 11 97 96
		f 4 -37 38 193 -196
		mu 0 4 99 34 102 101
		f 4 -40 40 198 -201
		mu 0 4 104 35 106 105
		f 4 -42 42 203 -206
		mu 0 4 107 0 109 108
		f 4 -44 44 207 -210
		mu 0 4 110 13 112 111
		f 4 211 -186 212 -215
		mu 0 4 116 1 114 113
		f 4 -46 47 217 -220
		mu 0 4 115 11 118 117
		f 4 -49 49 222 -225
		mu 0 4 119 14 121 120
		f 4 -51 51 227 -230
		mu 0 4 122 5 124 123
		f 4 -53 53 231 -234
		mu 0 4 125 4 127 126
		f 4 235 -202 236 -239
		mu 0 4 130 13 109 128
		f 4 -55 56 241 -244
		mu 0 4 129 0 132 131
		f 4 -58 -102 245 -248
		mu 0 4 133 10 46 134
		f 4 -59 -122 249 -252
		mu 0 4 135 18 59 136
		f 4 -60 60 253 -256
		mu 0 4 137 12 139 138
		f 4 257 -197 258 -261
		mu 0 4 143 0 106 140
		f 4 -62 63 263 -266
		mu 0 4 147 3 145 144
		f 4 -65 -182 267 -270
		mu 0 4 146 2 95 148
		f 4 -66 -107 271 -274
		mu 0 4 153 33 49 151
		f 4 -67 -240 274 -277
		mu 0 4 152 10 132 154
		f 4 278 -231 279 -282
		mu 0 4 157 1 127 155
		f 4 -68 69 284 -287
		mu 0 4 156 4 159 158
		f 4 -71 -163 288 -291
		mu 0 4 160 7 83 161
		f 4 -72 -262 292 -295
		mu 0 4 162 2 145 163
		f 4 -73 -192 295 -298
		mu 0 4 164 3 166 165
		f 4 299 -226 300 -303
		mu 0 4 169 4 124 167
		f 4 -74 75 305 -308
		mu 0 4 168 5 171 170
		f 4 -77 -159 309 -312
		mu 0 4 172 15 81 173
		f 4 -78 -169 313 -316
		mu 0 4 174 9 87 175
		f 4 -79 -283 316 -319
		mu 0 4 176 7 159 177
		f 4 320 -207 321 -324
		mu 0 4 180 11 112 178
		f 4 -80 -253 325 -328
		mu 0 4 179 13 139 181
		f 4 -82 -116 329 -332
		mu 0 4 182 12 55 183
		f 4 -83 83 334 -337
		mu 0 4 184 17 186 185
		f 4 -85 -216 337 -340
		mu 0 4 187 14 118 188
		f 4 341 -221 342 -345
		mu 0 4 191 5 121 189
		f 4 -86 -333 346 -349
		mu 0 4 190 14 186 192
		f 4 -88 -136 350 -353
		mu 0 4 193 17 67 194
		f 4 -89 -140 354 -357
		mu 0 4 195 19 69 196
		f 4 -90 -304 357 -360
		mu 0 4 197 15 171 198
		f 4 90 1 94 -94
		mu 0 4 38 16 40 37
		f 4 91 2 95 -95
		mu 0 4 40 20 41 37
		f 4 96 4 99 -99
		mu 0 4 43 18 44 42
		f 4 97 -92 100 -100
		mu 0 4 44 20 40 42
		f 4 101 6 104 -104
		mu 0 4 46 10 47 45
		f 4 102 -98 105 -105
		mu 0 4 47 20 44 45
		f 4 106 8 109 -109
		mu 0 4 49 33 50 48
		f 4 107 -103 110 -110
		mu 0 4 50 20 47 48
		f 4 111 -93 113 -113
		mu 0 4 52 32 41 51
		f 4 -3 -108 114 -114
		mu 0 4 41 20 50 51
		f 4 115 11 119 -119
		mu 0 4 55 12 56 54
		f 4 116 12 120 -120
		mu 0 4 56 21 57 54
		f 4 121 14 124 -124
		mu 0 4 59 18 60 58
		f 4 122 -117 125 -125
		mu 0 4 60 21 56 58
		f 4 -4 15 128 -128
		mu 0 4 43 16 62 61
		f 4 126 -123 129 -129
		mu 0 4 62 21 60 61
		f 4 130 17 133 -133
		mu 0 4 64 19 65 63
		f 4 131 -127 134 -134
		mu 0 4 65 21 62 63
		f 4 135 -118 137 -137
		mu 0 4 67 17 57 66
		f 4 -13 -132 138 -138
		mu 0 4 57 21 65 66
		f 4 139 20 143 -143
		mu 0 4 69 19 70 68
		f 4 140 21 144 -144
		mu 0 4 70 22 71 68
		f 4 -17 22 147 -147
		mu 0 4 64 16 73 72
		f 4 145 -141 148 -148
		mu 0 4 73 22 70 72
		f 4 -1 23 151 -151
		mu 0 4 75 6 76 74
		f 4 149 -146 152 -152
		mu 0 4 76 22 73 74
		f 4 153 25 156 -156
		mu 0 4 78 9 79 77
		f 4 154 -150 157 -157
		mu 0 4 79 22 76 77
		f 4 158 -142 160 -160
		mu 0 4 81 15 71 80
		f 4 -22 -155 161 -161
		mu 0 4 71 22 79 80
		f 4 162 28 166 -166
		mu 0 4 83 7 84 82
		f 4 163 29 167 -167
		mu 0 4 84 23 85 82
		f 4 168 31 171 -171
		mu 0 4 87 9 88 86
		f 4 169 -164 172 -172
		mu 0 4 88 23 84 86
		f 4 -25 32 175 -175
		mu 0 4 78 6 90 89
		f 4 173 -170 176 -176
		mu 0 4 90 23 88 89
		f 4 -10 33 179 -179
		mu 0 4 92 8 93 91
		f 4 177 -174 180 -180
		mu 0 4 93 23 90 91
		f 4 181 -165 183 -183
		mu 0 4 95 2 85 94
		f 4 -30 -178 184 -184
		mu 0 4 85 23 93 94
		f 4 185 36 189 -189
		mu 0 4 97 34 99 96
		f 4 186 37 190 -190
		mu 0 4 99 24 100 96
		f 4 191 39 194 -194
		mu 0 4 102 35 104 101
		f 4 192 -187 195 -195
		mu 0 4 104 24 99 101
		f 4 196 41 199 -199
		mu 0 4 106 0 107 105
		f 4 197 -193 200 -200
		mu 0 4 107 24 104 105
		f 4 201 43 204 -204
		mu 0 4 109 13 110 108
		f 4 202 -198 205 -205
		mu 0 4 110 24 107 108
		f 4 206 -188 208 -208
		mu 0 4 112 11 100 111
		f 4 -38 -203 209 -209
		mu 0 4 100 24 110 111
		f 4 -36 45 213 -213
		mu 0 4 114 11 115 113
		f 4 210 46 214 -214
		mu 0 4 115 25 116 113
		f 4 215 48 218 -218
		mu 0 4 118 14 119 117
		f 4 216 -211 219 -219
		mu 0 4 119 25 115 117
		f 4 220 50 223 -223
		mu 0 4 121 5 122 120
		f 4 221 -217 224 -224
		mu 0 4 122 25 119 120
		f 4 225 52 228 -228
		mu 0 4 124 4 125 123
		f 4 226 -222 229 -229
		mu 0 4 125 25 122 123
		f 4 230 -212 232 -232
		mu 0 4 127 1 116 126
		f 4 -47 -227 233 -233
		mu 0 4 116 25 125 126
		f 4 -43 54 237 -237
		mu 0 4 109 0 129 128
		f 4 234 55 238 -238
		mu 0 4 129 26 130 128
		f 4 239 57 242 -242
		mu 0 4 132 10 133 131
		f 4 240 -235 243 -243
		mu 0 4 133 26 129 131
		f 4 -6 58 246 -246
		mu 0 4 46 18 135 134
		f 4 244 -241 247 -247
		mu 0 4 135 26 133 134
		f 4 -14 59 250 -250
		mu 0 4 59 12 137 136
		f 4 248 -245 251 -251
		mu 0 4 137 26 135 136
		f 4 252 -236 254 -254
		mu 0 4 139 13 130 138
		f 4 -56 -249 255 -255
		mu 0 4 130 26 137 138
		f 4 -41 61 259 -259
		mu 0 4 106 35 141 140
		f 4 256 62 260 -260
		mu 0 4 141 36 143 140
		f 4 261 64 264 -264
		mu 0 4 145 2 146 144
		f 4 262 -257 265 -265
		mu 0 4 146 27 147 144
		f 4 -35 65 268 -268
		mu 0 4 95 8 149 148
		f 4 266 -263 269 -269
		mu 0 4 149 27 146 148
		f 4 -8 66 272 -272
		mu 0 4 49 10 152 151
		f 4 270 -267 273 -273
		mu 0 4 152 36 153 151
		f 4 -57 -258 275 -275
		mu 0 4 132 0 143 154
		f 4 -63 -271 276 -276
		mu 0 4 143 36 152 154
		f 4 -54 67 280 -280
		mu 0 4 127 4 156 155
		f 4 277 68 281 -281
		mu 0 4 156 28 157 155
		f 4 282 70 285 -285
		mu 0 4 159 7 160 158
		f 4 283 -278 286 -286
		mu 0 4 160 28 156 158
		f 4 -28 71 289 -289
		mu 0 4 83 2 162 161
		f 4 287 -284 290 -290
		mu 0 4 162 28 160 161
		f 4 -64 72 293 -293
		mu 0 4 145 3 164 163
		f 4 291 -288 294 -294
		mu 0 4 164 28 162 163
		f 4 -39 -279 296 -296
		mu 0 4 166 1 157 165
		f 4 -69 -292 297 -297
		mu 0 4 157 28 164 165
		f 4 -52 73 301 -301
		mu 0 4 124 5 168 167
		f 4 298 74 302 -302
		mu 0 4 168 29 169 167
		f 4 303 76 306 -306
		mu 0 4 171 15 172 170
		f 4 304 -299 307 -307
		mu 0 4 172 29 168 170
		f 4 -27 77 310 -310
		mu 0 4 81 9 174 173
		f 4 308 -305 311 -311
		mu 0 4 174 29 172 173
		f 4 -31 78 314 -314
		mu 0 4 87 7 176 175
		f 4 312 -309 315 -315
		mu 0 4 176 29 174 175
		f 4 -70 -300 317 -317
		mu 0 4 159 4 169 177
		f 4 -75 -313 318 -318
		mu 0 4 169 29 176 177
		f 4 -45 79 322 -322
		mu 0 4 112 13 179 178
		f 4 319 80 323 -323
		mu 0 4 179 30 180 178
		f 4 -61 81 326 -326
		mu 0 4 139 12 182 181
		f 4 324 -320 327 -327
		mu 0 4 182 30 179 181
		f 4 -11 82 330 -330
		mu 0 4 55 17 184 183
		f 4 328 -325 331 -331
		mu 0 4 184 30 182 183
		f 4 332 84 335 -335
		mu 0 4 186 14 187 185
		f 4 333 -329 336 -336
		mu 0 4 187 30 184 185
		f 4 -48 -321 338 -338
		mu 0 4 118 11 180 188
		f 4 -81 -334 339 -339
		mu 0 4 180 30 187 188
		f 4 -50 85 343 -343
		mu 0 4 121 14 190 189
		f 4 340 86 344 -344
		mu 0 4 190 31 191 189
		f 4 -84 87 347 -347
		mu 0 4 186 17 193 192
		f 4 345 -341 348 -348
		mu 0 4 193 31 190 192
		f 4 -19 88 351 -351
		mu 0 4 67 19 195 194
		f 4 349 -346 352 -352
		mu 0 4 195 31 193 194
		f 4 -20 89 355 -355
		mu 0 4 69 15 197 196
		f 4 353 -350 356 -356
		mu 0 4 197 31 195 196
		f 4 -76 -342 358 -358
		mu 0 4 171 5 191 198
		f 4 -87 -354 359 -359
		mu 0 4 191 31 197 198;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "F3877042-4B51-B99B-47B2-A8886171CD78";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "0B0A8C2C-4CBC-30AD-1FDB-71BD7B11DFDB";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "E2509696-4AAB-1796-63D5-CABA5ECA3411";
createNode displayLayerManager -n "layerManager";
	rename -uid "DD54FB37-4270-C12E-05FC-90B260044D8B";
createNode displayLayer -n "defaultLayer";
	rename -uid "3AA6A6F8-4B07-799B-0BA5-8ABCDC19B41E";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "25D2DFF7-4319-6EF0-D504-81BBF9D4DC43";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "5B8BC8AE-4BD9-1F71-2287-31BE717E0785";
	setAttr ".g" yes;
createNode polySuperShape -n "polySuperShape1";
	rename -uid "A0169101-4AEA-AEF1-8837-6DB7958D779F";
	setAttr ".shape" 2;
	setAttr ".horizontalDivisions" 4;
	setAttr ".verticalDivisions" 3;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "D8CA11DB-4FEF-8E17-F976-97AA2CE61AC3";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n"
		+ "            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n"
		+ "            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n"
		+ "            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1385\n            -height 700\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n"
		+ "            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n"
		+ "            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n"
		+ "            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n"
		+ "                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n"
		+ "                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n"
		+ "                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n"
		+ "                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n"
		+ "                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n"
		+ "                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n"
		+ "                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n"
		+ "                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -highlightConnections 0\n                -copyConnectionsOnPaste 0\n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1385\\n    -height 700\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1385\\n    -height 700\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "53452570-435C-0867-AAD2-48B4F71C5BAC";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 4 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "ExplodyCrystalShape.iog" ":initialShadingGroup.dsm" -na;
// End of ExplosionCrystal.ma
