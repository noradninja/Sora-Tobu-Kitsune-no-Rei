//Maya ASCII 2019 scene
//Name: roof_Test.ma
//Last modified: Sun, Jan 10, 2021 01:33:49 PM
//Codeset: 1252
requires maya "2019";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2019";
fileInfo "version" "2019";
fileInfo "cutIdentifier" "201905131615-158f5352ad";
fileInfo "osv" "Microsoft Windows 10 Technical Preview  (Build 19042)\n";
createNode transform -s -n "persp";
	rename -uid "A0102EA9-4349-BD00-7874-0296BA53F72A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.37431279977723042 5.4166607137323961 -1.0781031642497654 ;
	setAttr ".r" -type "double3" -72.93835272248019 190.99999999996487 0 ;
	setAttr ".rp" -type "double3" -1.1102230246251565e-16 0 -1.3322676295501878e-15 ;
	setAttr ".rpt" -type "double3" -1.7678911142871468e-15 3.0715083791865854e-15 5.0613935374181925e-15 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "269E62FF-45A7-A6C7-C83C-3B9F893ACDE0";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 3.9208787213929313;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0.00093686580657958984 0.76055645942687988 -0.0045033693313598633 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "07D4C935-48D9-5004-44BA-93AD9FDD9337";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "044274E7-40C9-4801-E30C-73B8633BD86A";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 2.7543526156619098;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "20FF402B-4087-922C-4B6B-C7B75643F503";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.036464691162109375 0.84664911031723022 1000.1003592747562 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "BB37D26F-47A4-EF09-4635-BFA03A4D18EB";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 999.43637333319714;
	setAttr ".ow" 6.9103296160283811;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".tp" -type "double3" -0.036464691162109375 0.84664911031723022 0.66398594155907631 ;
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "D0B029A0-456C-C820-6A5C-16AAD9A0C681";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.100288950026 0.75937509536743164 0.0364646315574646 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "76724176-4F55-B152-7D43-689AFB3D633E";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1388415322899;
	setAttr ".ow" 3.6932221211885152;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".tp" -type "double3" -0.038552582263946533 0.75937509536743164 0.0364646315574646 ;
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "pCube7";
	rename -uid "CE24A009-436B-0EB8-6B2E-A29D2889DB65";
	setAttr ".rp" -type "double3" 0.00093686580657958984 0.76055645942687988 -0.0045033693313598633 ;
	setAttr ".sp" -type "double3" 0.00093686580657958984 0.76055645942687988 -0.0045033693313598633 ;
createNode mesh -n "pCubeShape1" -p "pCube7";
	rename -uid "0776C5DC-41AE-DF9C-85A0-B1940963A5CD";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.42881852388381958 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape1" -p "pCube7";
	rename -uid "F6694E29-40A2-C9AD-850C-11B8DFDBDC00";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.43709622230380774 0.42872619839396076 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 394 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.375 0 0.625 0 0.29166666
		 0.33333334 0.70833331 0.33333334 0.375 0.75 0.625 0.75 0.31749305 0.23002777 0.68250692
		 0.23002777 0.31749302 0.46246529 0.68250692 0.46246529 0.33795875 0.14816493 0.66204119
		 0.14816493 0.33795875 0.56479383 0.66204119 0.56479383 0.35470343 0.081186265 0.64529657
		 0.081186265 0.35470343 0.64851719 0.64529657 0.64851719 0.29936537 0.37182695 0.7006346
		 0.37182695 0.29936537 0.30253842 0.7006346 0.30253842 0 0 1 0 1 1 0 1 0 0 1 0 1 1
		 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0
		 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1
		 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0
		 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0
		 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1
		 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0
		 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1
		 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1
		 0 1 0 0 1 0 1 1 0 1 0 7.2867829e-17 0.21253005 0 0.59025037 0.84115726 0.44904843
		 1 0 1.6348719e-16 0.19761235 0 0.4362644 0.90230066 0.26449284 1.000000119209 0 0
		 0.24273649 8.908542e-17 0.41252208 0.91271132 0.18602331 1 0.11758675 9.6684212e-17
		 0.30441514 0 0.18124434 0.99999994 0 0.95466405 0.37772033 1.0930174e-16 0.59025037
		 0 0.14120194 1 0 0.8411572 0 0 0.19761236 8.1743596e-17 0.43626463 0.9023006 0.26449305
		 1 0.16978562 0 0.41252211 8.908542e-17 0.22649883 1 0 0.91271132 0.11758671 0 0.3044152
		 0 0.18124439 0.99999994 0 0.95466411 0.35690662 0 0.39798141 0 0.031340338 0.99999994
		 0 0.97344959 0.013275123 0.036207654 0.98672485 0.036207668 1 2.9570876e-08 0 0 0.016761698
		 0.81857908 0.08360412 0.85745239 0.024202524 0.78260654 0.19880208 0.85745239 0.23163167
		 0.12862074 0.253016 0.85745245 0.053843107 0.72125232 0.037702836 0.14254755 0.85745245
		 1 0.2052127 0.85745245 0.85745245 1 0.85745245 0;
	setAttr ".uvst[0].uvsp[250:393]" 0.4106369 0 0.85745245 0 0.39612675 0.081186265
		 0.38415593 0.14816493 0.36952487 0.23002777 0.35656533 0.30253842 0.35106146 0.33333334
		 0.35656533 0.37182695 0.36952484 0.46246529 0.38415593 0.56479383 0.39612675 0.64851719
		 0.14254755 0 0.4106369 0.75 0.14254755 0 0.14254755 1 0.38503769 0.85745245 0.14254755
		 1 0.53640723 0.72125238 0.22679004 0.85745257 0.40224513 0.77367991 0.15950614 0.85745245
		 0.38831955 0.78260654 0.28685743 0.14254753 0.10082504 0.13608502 0.85745245 2.535562e-08
		 0.050876163 0.83468676 0.84796196 0.036207665 0.30609635 0.13858314 0.15185827 0.036207654
		 0.10084672 0.13590877 0.34578529 0.14236291 0.14561445 0.12993625 0.28688025 0.14236291
		 0.40228942 0.77384645 0.38603929 0.14236292 0.32394695 0.1197496 0.22683904 0.85763705
		 0.14236292 1 0.52632254 0.14236292 0.14236292 1 0.14236292 0 0.58940923 0 0.14236292
		 0 0.6039269 0.081186265 0.61590385 0.14816493 0.63054246 0.23002777 0.64350873 0.30253845
		 0.64901543 0.33333334 0.64350873 0.37182695 0.63054246 0.46246529 0.61590385 0.56479383
		 0.6039269 0.64851713 0.85763705 0 0.58940923 0.75 0.85763705 0 0.85763705 1 0.063927852
		 0.14236292 0.85763705 1 0.26630342 0.11974961 0.037653975 0.14236294 0.23158756 0.12845416
		 0.026482822 0.14236292 0.26690766 0.12993625 0.1987793 0.85763699 0.016739992 0.81875527
		 0.14236292 4.2097965e-09 0.026212696 0.74184823 0.11307279 0.77707773 0.079562426
		 0.75644606 0.76972121 0.036207665 0.09137404 0.21281585 0.77707779 2.297887e-08 0.3746731
		 0.70924765 0.2769576 0.22292222 0.38306355 0.70115775 0.14455459 0.77707779 0.50604808
		 0.65364462 0.20553151 0.77707791 0.34894556 0.77707779 0.22292225 1 0.22292225 0
		 0.22292225 1 0.22292225 0 0.43073058 0.75 0.41948307 0.64851719 0.41020396 0.56479383
		 0.39886272 0.46246529 0.38881719 0.37182695 0.38455093 0.33333337 0.38881719 0.30253842
		 0.39886275 0.23002777 0.41020396 0.14816493 0.41948307 0.081186265 0.43073058 0 0.77707779
		 0 0.77707779 1 0.77707779 0 0.77707779 1 0.24130484 0.77707779 0.084202275 0.65364456
		 0.058961388 0.22292225 0.25081328 0.20114289 0.26796758 0.77707779 0.037848994 0.70924765
		 0.20870191 0.77707773 0.021482207 0.79723006 0.19682863 0.87347448 0.22780797 0.11416402
		 0.25003552 0.87347454 0.047791246 0.73472941 0.03346511 0.12652548 0.87347454 1 0.19801801
		 0.87347454 0.87347454 1 0.87347454 0 0.40663138 0 0.87347454 0 0.39147085 0.081186265
		 0.37896347 0.14816494 0.36367661 0.23002777 0.35013616 0.30253842 0.34438559 0.33333334
		 0.35013616 0.37182695 0.36367655 0.46246529 0.37896347 0.56479383 0.39147085 0.64851725
		 0.12652548 0 0.40663138 0.75 0.12652548 0 0.12652548 1 0.39223236 0.87347454 0.12652548
		 1 0.54245913 0.73472947 0.23102777 0.87347472 0.40606883 0.78813666 0.16248663 0.87347454
		 0.39103988 0.79723012 0.28883088 0.12652546 0.10270903 0.12078932 0.87347454 2.5829408e-08
		 0.045157779 0.85028344 0.86355865 0.036207668 0.014877715 0.83387476 0.077729777
		 0.87347448;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt";
	setAttr ".pt[66]" -type "float3" 0 0.09790922 0 ;
	setAttr ".pt[76]" -type "float3" 0 0.09790922 0 ;
	setAttr ".pt[77]" -type "float3" 0 0.09790922 0 ;
	setAttr ".pt[78]" -type "float3" 0 0.09790922 0 ;
	setAttr ".pt[88]" -type "float3" 0 0.09790922 0 ;
	setAttr ".pt[89]" -type "float3" 0 0.09790922 0 ;
	setAttr ".pt[90]" -type "float3" 0 0.09790922 0 ;
	setAttr ".pt[91]" -type "float3" 0 0.09790922 0 ;
	setAttr ".pt[101]" -type "float3" 0 0.09790922 0 ;
	setAttr ".pt[102]" -type "float3" 0 0.09790922 0 ;
	setAttr ".pt[103]" -type "float3" 0 0.09790922 0 ;
	setAttr ".pt[113]" -type "float3" 0 0.09790922 0 ;
	setAttr -s 114 ".vt[0:113]"  -1.79818952 0 1.59426057 1.80006325 0 1.59426057
		 -1.21948159 1.61036026 -0.0045033167 1.22135532 1.61036026 -0.0045033167 -1.79818952 0 -1.60326731
		 1.80006325 0 -1.60326731 -1.28653753 1.19176579 0.32504839 1.28841126 1.19176579 0.32504839
		 -1.28653753 1.19176579 -0.33405501 1.28841126 1.19176579 -0.33405501 -1.40097976 0.76763731 0.72375643
		 1.40285349 0.76763731 0.72375643 -1.40097976 0.76763731 -0.73276317 1.40285349 0.76763731 -0.73276317
		 -1.54117143 0.42062318 1.097368002 1.54304516 0.42062318 1.097368002 -1.54117143 0.42062318 -1.10637474
		 1.54304516 0.42062318 -1.10637474 -1.23005724 1.56744087 -0.10274114 1.23193097 1.56744087 -0.10274114
		 -1.23005724 1.56744099 0.093734488 1.23193097 1.56744099 0.093734488 -1.7454139 -0.089247346 1.54491568
		 1.74728763 -0.089247346 1.54491568 -1.7454139 -0.089247346 -1.55392241 1.74728763 -0.089247346 -1.55392241
		 -1.48973644 0.35001421 1.026276588 1.49161017 0.35001421 1.026276588 -1.18429732 1.52054536 -0.0045032762
		 -1.20687437 1.49737179 -0.037468098 1.18617105 1.52054536 -0.0045032762 1.2087481 1.49737179 -0.037468098
		 -1.24749136 1.13379383 0.24405201 -1.20687437 1.49737203 0.028461486 1.24936509 1.13379383 0.24405201
		 1.2087481 1.49737203 0.028461486 -1.24749136 1.13379371 -0.25305864 -1.35643065 0.69996947 -0.65903735
		 1.24936509 1.13379371 -0.25305864 1.3583045 0.69996947 -0.65903735 -1.35643065 0.69996947 0.65003061
		 1.3583045 0.69996947 0.65003061 -1.48973644 0.35001421 -1.035283327 1.49161017 0.35001421 -1.035283327
		 -1.66923976 -0.032330751 1.51396406 1.67111349 -0.032330871 1.51396394 -1.66923976 -0.032330751 -1.5229708
		 1.67111349 -0.032330751 -1.5229708 -1.40394425 0.36390167 1.075742126 1.40581799 0.36390167 1.075742126
		 -1.07426095 1.54480851 -0.0045033093 -1.10358644 1.51328599 -0.078014046 1.076134682 1.54480851 -0.0045032632
		 1.10546005 1.51328599 -0.078014031 -1.15603888 1.14505219 0.28290689 -1.10358644 1.51328635 0.069007412
		 1.15791261 1.14505208 0.28290686 1.10546017 1.51328635 0.069007434 -1.15603888 1.14505196 -0.29191351
		 -1.26668811 0.7133289 -0.70108265 1.15791261 1.14505196 -0.29191351 1.26856196 0.7133289 -0.70108259
		 -1.26668811 0.7133289 0.69207591 1.26856196 0.7133289 0.69207585 -1.40394425 0.36390162 -1.084748864
		 1.40581799 0.36390167 -1.084748864 -0.7886923 1.51328635 0.069007412 -0.82619077 1.14505219 0.28290689
		 -0.90529442 0.71332896 0.69207591 -1.0034195185 0.36390167 1.075742126 -1.19308054 -0.032330766 1.51396406
		 -1.24753785 -0.089247346 1.54491568 -1.28526735 0 1.59426057 -1.10152388 0.42062318 1.097368002
		 -1.0013002157 0.76763731 0.72375643 -0.91948491 1.19176579 0.32504839 -0.87910688 1.56744099 0.093734488
		 -0.87154627 1.61036026 -0.0045033167 -0.87910688 1.56744087 -0.10274114 -0.91948491 1.19176579 -0.33405501
		 -1.0013002157 0.76763731 -0.73276317 -1.10152388 0.42062318 -1.10637474 -1.28526735 0 -1.60326731
		 -1.24753785 -0.089247346 -1.55392241 -1.19308054 -0.032330751 -1.5229708 -1.0034195185 0.36390162 -1.084748864
		 -0.90529442 0.71332896 -0.70108265 -0.82619077 1.14505196 -0.29191351 -0.7886923 1.51328599 -0.078014039
		 -0.76772732 1.54480851 -0.0045033027 0.76999807 1.54480851 -0.0045032697 0.79097378 1.51328635 0.069007427
		 0.82849169 1.14505208 0.28290686 0.9076364 0.7133289 0.69207585 1.0058120489 0.36390167 1.075742126
		 1.19557095 -0.032330856 1.51396394 1.25005639 -0.089247346 1.54491568 1.28780544 0 1.59426057
		 1.10396707 0.42062318 1.097368002 1.0036916733 0.76763737 0.72375643 0.92183399 1.19176579 0.32504839
		 0.88143516 1.56744099 0.093734488 0.87387061 1.61036026 -0.0045033167 0.88143516 1.56744087 -0.10274114
		 0.92183399 1.19176579 -0.33405501 1.0036916733 0.76763737 -0.73276317 1.10396707 0.42062318 -1.10637474
		 1.28780544 0 -1.60326731 1.25005639 -0.089247346 -1.55392241 1.19557095 -0.032330751 -1.5229708
		 1.0058120489 0.36390167 -1.084748864 0.9076364 0.7133289 -0.70108259 0.82849169 1.14505196 -0.29191351
		 0.79097378 1.51328611 -0.078014031;
	setAttr -s 224 ".ed";
	setAttr ".ed[0:165]"  0 72 1 2 77 1 4 82 1 0 14 1 1 15 1 2 18 1 3 19 1 6 20 1
		 7 21 1 8 12 1 9 13 1 7 100 1 9 104 1 10 6 1 11 7 1 12 16 1 13 17 1 11 99 1 13 105 1
		 14 10 1 15 11 1 16 4 1 17 5 1 15 98 1 17 106 1 18 8 1 19 9 1 20 2 1 21 3 1 19 103 1
		 21 101 1 0 22 1 1 23 1 22 71 1 4 24 1 5 25 1 24 83 1 14 26 1 22 26 1 15 27 1 23 27 1
		 2 28 1 18 29 1 28 29 1 3 30 1 19 31 1 30 31 1 6 32 1 20 33 1 32 33 1 7 34 1 21 35 1
		 34 35 1 8 36 1 12 37 1 36 37 1 9 38 1 13 39 1 38 39 1 10 40 1 40 32 1 11 41 1 41 34 1
		 16 42 1 37 42 1 17 43 1 39 43 1 26 40 1 27 41 1 42 24 1 43 25 1 29 36 1 31 38 1 33 28 1
		 35 30 1 22 44 1 23 45 1 44 70 1 24 46 1 25 47 1 46 84 1 26 48 1 44 48 1 27 49 1 45 49 1
		 28 50 1 29 51 1 50 51 1 30 52 1 31 53 1 52 53 1 32 54 1 33 55 1 54 55 1 34 56 1 35 57 1
		 56 57 1 36 58 1 37 59 1 58 59 1 38 60 1 39 61 1 60 61 1 40 62 1 62 54 1 41 63 1 63 56 1
		 42 64 1 59 64 1 43 65 1 61 65 1 48 62 1 49 63 1 64 46 1 65 47 1 51 58 1 53 60 1 55 50 1
		 57 52 1 65 110 1 61 111 1 60 112 1 53 113 1 48 69 1 62 68 1 54 67 1 55 66 1 50 89 1
		 66 91 1 67 92 1 66 67 1 68 93 1 67 68 1 69 94 1 68 69 1 70 95 1 69 70 1 71 96 1 70 71 1
		 72 97 1 71 72 1 73 14 1 72 73 1 74 10 1 73 74 1 75 6 1 74 75 1 76 20 1 75 76 1 77 102 1
		 76 77 1 78 18 1 77 78 1 79 8 1 78 79 1 80 12 1 79 80 1 81 16 1 80 81 1 82 107 1 81 82 1
		 83 108 1 82 83 1 84 109 1 83 84 1 85 64 1;
	setAttr ".ed[166:223]" 84 85 1 86 59 1 85 86 1 87 58 1 86 87 1 88 51 1 87 88 1
		 89 90 1 88 89 1 89 66 1 90 52 1 91 57 1 90 91 1 92 56 1 91 92 1 93 63 1 92 93 1 94 49 1
		 93 94 1 95 45 1 94 95 1 96 23 1 95 96 1 97 1 1 96 97 1 98 73 1 97 98 1 99 74 1 98 99 1
		 100 75 1 99 100 1 101 76 1 100 101 1 102 3 1 101 102 1 103 78 1 102 103 1 104 79 1
		 103 104 1 105 80 1 104 105 1 106 81 1 105 106 1 107 5 1 106 107 1 108 25 1 107 108 1
		 109 47 1 108 109 1 110 85 1 109 110 1 111 86 1 110 111 1 112 87 1 111 112 1 113 88 1
		 112 113 1 113 90 1;
	setAttr -s 112 -ch 448 ".fc[0:111]" -type "polyFaces" 
		f 4 0 142 141 -4
		mu 0 4 0 250 252 14
		f 4 1 152 151 -6
		mu 0 4 2 256 257 18
		f 4 -146 148 147 -8
		mu 0 4 6 254 255 20
		f 4 -154 156 155 -10
		mu 0 4 8 258 259 12
		f 4 -144 146 145 -14
		mu 0 4 10 253 254 6
		f 4 -156 158 157 -16
		mu 0 4 12 259 260 16
		f 4 -142 144 143 -20
		mu 0 4 14 252 253 10
		f 4 -158 160 -3 -22
		mu 0 4 16 260 262 4
		f 4 -152 154 153 -26
		mu 0 4 18 257 258 8
		f 4 -148 150 -2 -28
		mu 0 4 20 255 256 2
		f 4 -1 31 33 140
		mu 0 4 251 23 24 248
		f 4 2 162 -37 -35
		mu 0 4 26 261 264 29
		f 4 3 37 -39 -32
		mu 0 4 30 31 32 33
		f 4 -5 32 40 -40
		mu 0 4 34 35 36 37
		f 4 5 42 -44 -42
		mu 0 4 38 39 40 41
		f 4 -7 44 46 -46
		mu 0 4 42 43 44 45
		f 4 7 48 -50 -48
		mu 0 4 46 47 48 49
		f 4 -9 50 52 -52
		mu 0 4 50 51 52 53
		f 4 9 54 -56 -54
		mu 0 4 54 55 56 57
		f 4 -11 56 58 -58
		mu 0 4 58 59 60 61
		f 4 13 47 -61 -60
		mu 0 4 62 63 64 65
		f 4 -15 61 62 -51
		mu 0 4 66 67 68 69
		f 4 15 63 -65 -55
		mu 0 4 70 71 72 73
		f 4 -17 57 66 -66
		mu 0 4 74 75 76 77
		f 4 19 59 -68 -38
		mu 0 4 78 79 80 81
		f 4 -21 39 68 -62
		mu 0 4 82 83 84 85
		f 4 21 34 -70 -64
		mu 0 4 86 87 88 89
		f 4 -23 65 70 -36
		mu 0 4 90 91 92 93
		f 4 25 53 -72 -43
		mu 0 4 94 95 96 97
		f 4 -27 45 72 -57
		mu 0 4 98 99 100 101
		f 4 27 41 -74 -49
		mu 0 4 102 103 104 105
		f 4 -29 51 74 -45
		mu 0 4 106 107 108 109
		f 4 -34 75 77 138
		mu 0 4 249 111 112 246
		f 4 36 164 -81 -79
		mu 0 4 114 263 266 117
		f 4 38 81 -83 -76
		mu 0 4 118 119 120 121
		f 4 -41 76 84 -84
		mu 0 4 122 123 124 125
		f 4 43 86 -88 -86
		mu 0 4 126 127 128 129
		f 4 -47 88 90 -90
		mu 0 4 130 131 132 133
		f 4 49 92 -94 -92
		mu 0 4 134 135 136 137
		f 4 -53 94 96 -96
		mu 0 4 138 139 140 141
		f 4 55 98 -100 -98
		mu 0 4 142 143 144 145
		f 4 -59 100 102 -102
		mu 0 4 146 147 148 149
		f 4 60 91 -105 -104
		mu 0 4 150 151 152 153
		f 4 -63 105 106 -95
		mu 0 4 154 155 156 157
		f 4 64 107 -109 -99
		mu 0 4 158 159 160 161
		f 4 -67 101 110 -110
		mu 0 4 162 163 164 165
		f 4 67 103 -112 -82
		mu 0 4 166 167 168 169
		f 4 -69 83 112 -106
		mu 0 4 170 171 172 173
		f 4 69 78 -114 -108
		mu 0 4 174 175 176 177
		f 4 -71 109 114 -80
		mu 0 4 178 179 180 181
		f 4 71 97 -116 -87
		mu 0 4 182 183 184 185
		f 4 -73 89 116 -101
		mu 0 4 186 187 188 189
		f 4 73 85 -118 -93
		mu 0 4 190 191 192 193
		f 4 -75 95 118 -89
		mu 0 4 194 195 196 197
		f 4 166 165 113 80
		mu 0 4 265 267 200 201
		f 4 168 167 108 -166
		mu 0 4 268 269 204 205
		f 4 170 169 99 -168
		mu 0 4 270 271 208 209
		f 4 115 -170 172 171
		mu 0 4 210 211 272 273
		f 4 136 -78 82 123
		mu 0 4 244 247 216 217
		f 4 111 124 134 -124
		mu 0 4 218 219 242 245
		f 4 132 -125 104 125
		mu 0 4 240 243 224 225
		f 4 130 -126 93 126
		mu 0 4 238 241 228 229
		f 4 175 -127 117 127
		mu 0 4 275 239 232 233
		f 4 -128 87 -172 174
		mu 0 4 276 235 236 274
		f 4 180 -130 -131 128
		mu 0 4 279 282 241 238
		f 4 182 -132 -133 129
		mu 0 4 281 284 243 240
		f 4 -135 131 184 -134
		mu 0 4 245 242 283 286
		f 4 186 -136 -137 133
		mu 0 4 285 288 247 244
		f 4 -138 -139 135 188
		mu 0 4 290 249 246 287
		f 4 -140 -141 137 190
		mu 0 4 292 251 248 289
		f 4 -143 139 192 191
		mu 0 4 252 250 291 293
		f 4 -145 -192 194 193
		mu 0 4 253 252 293 294
		f 4 -147 -194 196 195
		mu 0 4 254 253 294 295
		f 4 -149 -196 198 197
		mu 0 4 255 254 295 296
		f 4 -151 -198 200 -150
		mu 0 4 256 255 296 297
		f 4 -153 149 202 201
		mu 0 4 257 256 297 298
		f 4 -155 -202 204 203
		mu 0 4 258 257 298 299
		f 4 -157 -204 206 205
		mu 0 4 259 258 299 300
		f 4 -159 -206 208 207
		mu 0 4 260 259 300 301
		f 4 -161 -208 210 -160
		mu 0 4 262 260 301 303
		f 4 -163 159 212 -162
		mu 0 4 264 261 302 305
		f 4 -165 161 214 -164
		mu 0 4 266 263 304 307
		f 4 216 215 -167 163
		mu 0 4 306 308 267 265
		f 4 218 217 -169 -216
		mu 0 4 309 310 269 268
		f 4 220 219 -171 -218
		mu 0 4 311 312 271 270
		f 4 -173 -220 222 221
		mu 0 4 273 272 313 314
		f 4 223 -174 -175 -222
		mu 0 4 315 278 276 274
		f 4 178 -129 -176 173
		mu 0 4 277 280 239 275
		f 4 -119 -178 -179 176
		mu 0 4 230 231 280 277
		f 4 -97 -180 -181 177
		mu 0 4 226 227 282 279
		f 4 -107 -182 -183 179
		mu 0 4 222 223 284 281
		f 4 -185 181 -113 -184
		mu 0 4 286 283 220 221
		f 4 -85 -186 -187 183
		mu 0 4 214 215 288 285
		f 4 -188 -189 185 -77
		mu 0 4 110 290 287 113
		f 4 -190 -191 187 -33
		mu 0 4 22 292 289 25
		f 4 -193 189 4 23
		mu 0 4 293 291 1 15
		f 4 -195 -24 20 17
		mu 0 4 294 293 15 11
		f 4 -197 -18 14 11
		mu 0 4 295 294 11 7
		f 4 -199 -12 8 30
		mu 0 4 296 295 7 21
		f 4 -201 -31 28 -200
		mu 0 4 297 296 21 3
		f 4 -203 199 6 29
		mu 0 4 298 297 3 19
		f 4 -205 -30 26 12
		mu 0 4 299 298 19 9
		f 4 -207 -13 10 18
		mu 0 4 300 299 9 13
		f 4 -209 -19 16 24
		mu 0 4 301 300 13 17
		f 4 -211 -25 22 -210
		mu 0 4 303 301 17 5
		f 4 -213 209 35 -212
		mu 0 4 305 302 27 28
		f 4 -215 211 79 -214
		mu 0 4 307 304 115 116
		f 4 -115 119 -217 213
		mu 0 4 198 199 308 306
		f 4 -111 120 -219 -120
		mu 0 4 202 203 310 309
		f 4 -103 121 -221 -121
		mu 0 4 206 207 312 311
		f 4 -223 -122 -117 122
		mu 0 4 314 313 212 213
		f 4 -177 -224 -123 -91
		mu 0 4 234 278 315 237;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "056768AF-4BD1-F988-8D6C-AB8593625A5D";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "DE0837C2-4D9E-1AAB-7942-FBBE3F2EA84F";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "13CF269B-4CC0-860F-2FE4-E684C3BF84BB";
createNode displayLayerManager -n "layerManager";
	rename -uid "8CFEE2A5-4D18-FF46-95FB-26A267A6CA8F";
createNode displayLayer -n "defaultLayer";
	rename -uid "424431B8-4B41-02C7-04A6-199B26962A0E";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "F736EE3A-458A-6FC0-182F-79B4B838BD56";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "41AE5FA1-4875-0B6C-8854-E7BADAAE8AD5";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "CB9BEB3D-44EE-0EBA-43A3-439BDA54520A";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 665\n            -height 413\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 665\n            -height 413\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 665\n            -height 413\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n"
		+ "            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n"
		+ "            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1341\n            -height 856\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n"
		+ "            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n"
		+ "            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n"
		+ "            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n"
		+ "                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n"
		+ "                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -autoFitTime 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n"
		+ "                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n"
		+ "            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n"
		+ "                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n"
		+ "                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n"
		+ "                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n"
		+ "\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n"
		+ "                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n"
		+ "                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1341\\n    -height 856\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1341\\n    -height 856\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "393EEAA3-44C2-24C6-B69A-39B6CDD5AD17";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode animCurveTU -n "pCube7_visibility";
	rename -uid "C91FB064-4329-85A9-79F3-1098C346F7C1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "pCube7_translateX";
	rename -uid "FD346C8E-45F0-0FE0-9C2E-A99407A33041";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "pCube7_translateY";
	rename -uid "0C50F71A-4F92-8F82-EF30-51B6CAA7FF43";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "pCube7_translateZ";
	rename -uid "EAC6E41D-4A43-AF8E-229A-80A9D4931460";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "pCube7_rotateX";
	rename -uid "B6440FDE-403C-0A25-DE8F-F8B1F48A12B9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "pCube7_rotateY";
	rename -uid "359CD2FC-4C68-D2D8-FE72-98A28F5C03F2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "pCube7_rotateZ";
	rename -uid "D41F94B0-47F9-EE67-7E12-859B28E1BCE2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "pCube7_scaleX";
	rename -uid "AD614578-416C-AA51-0FC6-8A863503F42E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "pCube7_scaleY";
	rename -uid "311E21FC-42A3-CE48-FA9C-30B883957212";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "pCube7_scaleZ";
	rename -uid "8BF17778-4193-6ADE-3BC2-B7B2ECC72C0D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode polySplitRing -n "polySplitRing1";
	rename -uid "72A5CE9A-49A9-25BB-AE3D-C8AF462690C1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 23 "e[128:129]" "e[131]" "e[133]" "e[135]" "e[137]" "e[139]" "e[149]" "e[159]" "e[161]" "e[163]" "e[173]" "e[191]" "e[193]" "e[195]" "e[197]" "e[201]" "e[203]" "e[205]" "e[207]" "e[215]" "e[217]" "e[219]" "e[221]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.054500296711921692;
	setAttr ".re" 205;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode deleteComponent -n "deleteComponent1";
	rename -uid "A265BCC5-4996-CEEF-67A2-F2AB6829900F";
	setAttr ".dc" -type "componentList" 2 "f[64:67]" "f[82:87]";
createNode polyExtrudeEdge -n "polyExtrudeEdge1";
	rename -uid "FEE786C4-4997-5CD2-C443-82BB68D54FEF";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 12 "e[178]" "e[180]" "e[182]" "e[184]" "e[186]" "e[215:219]" "e[239]" "e[241:245]" "e[247]" "e[249]" "e[251]" "e[253:255]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.94088131 0.80519342 -0.0045034289 ;
	setAttr ".rs" 63169;
	setAttr ".c[0]"  0 1 1;
	setAttr ".tk" 0.10000000149011612;
	setAttr ".cbn" -type "double3" 0.6861916184425354 -0.03233085572719574 -1.5229707956314087 ;
	setAttr ".cbx" -type "double3" 1.1955709457397461 1.642717719078064 1.5139639377593994 ;
createNode polyAppend -n "polyAppend1";
	rename -uid "15B8F4D3-414C-731A-F642-BFA135D913C5";
	setAttr -s 3 ".d[0:2]"  -2147483361 -2147483375 -2147483363;
	setAttr ".tx" 1;
createNode polyAppend -n "polyAppend2";
	rename -uid "C91AD190-489A-13EB-4191-6CB580A14594";
	setAttr -s 3 ".d[0:2]"  -2147483377 -2147483341 -2147483359;
	setAttr ".tx" 1;
createNode polyAppend -n "polyAppend3";
	rename -uid "374DE189-4D77-960D-D574-C9B36124B892";
	setAttr -s 3 ".d[0:2]"  -2147483379 -2147483340 -2147483357;
	setAttr ".tx" 1;
createNode polyAppend -n "polyAppend4";
	rename -uid "3F310FD1-4A5B-BE16-EB22-ED9F352ADCD4";
	setAttr -s 3 ".d[0:2]"  -2147483381 -2147483339 -2147483355;
	setAttr ".tx" 1;
createNode polyAppend -n "polyAppend5";
	rename -uid "F518CF38-4C33-F6E2-E4A6-108FAFBD1784";
	setAttr -s 2 ".d[0:1]"  -2147483366 -2147483349;
	setAttr ".tx" 1;
createNode polyAppend -n "polyAppend6";
	rename -uid "C0C309BD-4BB7-11A7-9AB8-65A066BB57BC";
	setAttr -s 3 ".d[0:2]"  -2147483368 -2147483336 -2147483347;
	setAttr ".tx" 1;
createNode polyAppend -n "polyAppend7";
	rename -uid "D2F26575-4D05-DAE0-A51F-70B2D842F50E";
	setAttr -s 3 ".d[0:2]"  -2147483370 -2147483335 -2147483345;
	setAttr ".tx" 1;
createNode polyAppend -n "polyAppend8";
	rename -uid "7B06B4B7-4F9D-54DC-7D16-F19C32B69782";
	setAttr -s 4 ".d[0:3]"  -2147483342 -2147483343 -2147483372 -2147483334;
	setAttr ".tx" 1;
createNode polyAppend -n "polyAppend9";
	rename -uid "C1F3AB08-4404-5F5F-527F-DF8C87EA3CBF";
	setAttr -s 3 ".d[0:2]"  -2147483365 -2147483351 -2147483337;
	setAttr ".tx" 1;
createNode polyAppend -n "polyAppend10";
	rename -uid "A1A0E265-4801-A0A3-FBA4-9E9983C61ACB";
	setAttr -s 4 ".d[0:3]"  -2147483353 -2147483333 -2147483383 -2147483338;
	setAttr ".tx" 1;
createNode polySoftEdge -n "polySoftEdge1";
	rename -uid "13BEDD6D-4881-4F15-A424-91BD759D367F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".a" 180;
createNode polyTweak -n "polyTweak1";
	rename -uid "919BCDDE-43DE-2051-BA76-A6B34D5BB7B1";
	setAttr ".uopa" yes;
	setAttr -s 7 ".tk";
	setAttr ".tk[138]" -type "float3" 0.016276577 0 0 ;
	setAttr ".tk[154]" -type "float3" 0.016276577 0 0 ;
createNode polySoftEdge -n "polySoftEdge2";
	rename -uid "E6EED21E-43F5-9F70-1AA7-02AA90EE5E16";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[178]" "e[180]" "e[182]" "e[184]" "e[186]" "e[215:219]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".a" 0;
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
select -ne :defaultRenderGlobals;
	setAttr ".ren" -type "string" "mayaHardware2";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "pCube7_visibility.o" "pCube7.v";
connectAttr "pCube7_translateX.o" "pCube7.tx";
connectAttr "pCube7_translateY.o" "pCube7.ty";
connectAttr "pCube7_translateZ.o" "pCube7.tz";
connectAttr "pCube7_rotateX.o" "pCube7.rx";
connectAttr "pCube7_rotateY.o" "pCube7.ry";
connectAttr "pCube7_rotateZ.o" "pCube7.rz";
connectAttr "pCube7_scaleX.o" "pCube7.sx";
connectAttr "pCube7_scaleY.o" "pCube7.sy";
connectAttr "pCube7_scaleZ.o" "pCube7.sz";
connectAttr "polySoftEdge2.out" "pCubeShape1.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polySurfaceShape1.o" "polySplitRing1.ip";
connectAttr "pCubeShape1.wm" "polySplitRing1.mp";
connectAttr "polySplitRing1.out" "deleteComponent1.ig";
connectAttr "deleteComponent1.og" "polyExtrudeEdge1.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeEdge1.mp";
connectAttr "polyExtrudeEdge1.out" "polyAppend1.ip";
connectAttr "polyAppend1.out" "polyAppend2.ip";
connectAttr "polyAppend2.out" "polyAppend3.ip";
connectAttr "polyAppend3.out" "polyAppend4.ip";
connectAttr "polyAppend4.out" "polyAppend5.ip";
connectAttr "polyAppend5.out" "polyAppend6.ip";
connectAttr "polyAppend6.out" "polyAppend7.ip";
connectAttr "polyAppend7.out" "polyAppend8.ip";
connectAttr "polyAppend8.out" "polyAppend9.ip";
connectAttr "polyAppend9.out" "polyAppend10.ip";
connectAttr "polyTweak1.out" "polySoftEdge1.ip";
connectAttr "pCubeShape1.wm" "polySoftEdge1.mp";
connectAttr "polyAppend10.out" "polyTweak1.ip";
connectAttr "polySoftEdge1.out" "polySoftEdge2.ip";
connectAttr "pCubeShape1.wm" "polySoftEdge2.mp";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "pCubeShape1.iog" ":initialShadingGroup.dsm" -na;
// End of roof_Test.ma
