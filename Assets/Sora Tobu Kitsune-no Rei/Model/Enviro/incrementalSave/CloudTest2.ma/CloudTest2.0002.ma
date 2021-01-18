//Maya ASCII 2019 scene
//Name: CloudTest2.ma
//Last modified: Fri, Jan 08, 2021 03:10:36 PM
//Codeset: 1252
requires maya "2019";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2019";
fileInfo "version" "2019";
fileInfo "cutIdentifier" "201905131615-158f5352ad";
fileInfo "osv" "Microsoft Windows 10 Technical Preview  (Build 19042)\n";
createNode transform -s -n "persp";
	rename -uid "08BA8B90-4B1A-DEEF-1C9D-7B95F17077FE";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1.5153647337725202 1.7009889869662735 1.646795541121882 ;
	setAttr ".r" -type "double3" -21.938352729606603 63.400000000002109 -3.5516361005820774e-15 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "3950B9BB-47CC-4BF8-FD1B-549FDA35BF35";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 3.9788596076074323;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -1.7828715145587921 0.21597731113433838 0 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "658529C3-42F3-1DDB-C6D9-3BBB30DC3343";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "30839483-407E-2CEE-3DE9-DEB90CE2125D";
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
	rename -uid "2145E168-4F73-5449-A67D-DC8ED3023050";
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "BB636AD2-4951-33DA-894D-1598462BC113";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 4.4927414276984798;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "103D1D1C-4D31-9737-7A51-8BB556B3159A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1001953982807 -0.27745962142944336 0.56099999999999994 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "D3DE6DF7-4E23-C813-8B80-9BAA661CF4AA";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1002.3242741131282;
	setAttr ".ow" 10.181365480840402;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".tp" -type "double3" -2.2240787148475647 -0.27745962142944336 0.56099999999999994 ;
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "polySurface1";
	rename -uid "12EA5C1E-4844-55AE-333E-8F8E2ED149BE";
createNode mesh -n "polySurfaceShape1" -p "polySurface1";
	rename -uid "8EAF6235-460D-8561-4E9A-54839E097B6B";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape2" -p "polySurface1";
	rename -uid "5DF90B36-4071-49C5-7966-5BA08666393B";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 558 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.46137786 0.36951986 0.59638131
		 0.36951986 0.72720939 0.43516588 0.80468559 0.54210168 0.81396419 0.67872882 0.79146355
		 0.81373239 0.69264656 0.95731848 0.54117364 0.99999994 0.46764082 0.97981906 0.38065407
		 0.91115743 0.35142648 0.80816513 0.40199482 0.70563674 0.48364639 0.65692419 0.57156104
		 0.65599626 0.60148448 0.70679659 0.56344229 0.76989096 0.50614697 0.79192764 0.47390389
		 0.82509851 0.52238452 0.83414513 0.57596838 0.82045931 0.65019709 0.76594752 0.67084193
		 0.70262122 0.63395959 0.63372767 0.5481326 0.61308283 0.44142884 0.62816054 0.36140099
		 0.69009507 0.30642533 0.78566456 0.086754784 0.43052649 0.046392925 0.37508696 0.010438396
		 0.34910688 0 0.25446525 0.046856873 0.18278818 0.13129205 0.12781253 0.23242867 0.14776154
		 0.28786823 0.19740197 0.28183714 0.26722336 0.22106238 0.32521456 0.15263279 0.30480164
		 0.15935977 0.25028995 0.18835536 0.23567615 0.20691253 0.26142424 0.24982601 0.23799579
		 0.22570169 0.20227325 0.170958 0.19044304 0.13685919 0.20528875 0.088842481 0.27395034
		 0.16307119 0.35444209 0.2426351 0.37230337 0.31524006 0.28206912 0.33495706 0.19832985
		 0.30062631 0.14057061 0.24913014 0.11018322 0.24449083 0.075620495 0.26536766 0.017397342
		 0.37810254 0 0.47320807 0.022268636 0.55230802 0.052424055 0.58385521 0.11644631
		 0.59870094 0.21804686 0.55369979 0.28554863 0.46833679 0.32011136 0.43678957 0.34609139
		 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0
		 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0
		 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1
		 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0
		 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1
		 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1
		 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0
		 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1
		 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0
		 0 1 0 1 1 0 1;
	setAttr ".uvst[0].uvsp[250:499]" 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1
		 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1
		 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0
		 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1
		 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0
		 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0
		 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1
		 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0
		 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1
		 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1
		 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0
		 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1
		 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0;
	setAttr ".uvst[0].uvsp[500:557]" 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0
		 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0
		 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1
		 0 1 1 0 1 0 0 1 0 1 1 0 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 186 ".vt";
	setAttr ".vt[0:165]"  -0.72889829 0.53566211 0 -0.66069728 0.68911433 0 -0.66922241 0.87098372 0
		 -0.75163198 1.013069153 0 -0.90224248 1.092636943 0 -1.067061663 1.13526261 0 -1.28018975 1.095478654 0
		 -1.40522492 0.94486815 0 -1.41943347 0.85109174 0 -1.38533294 0.71753144 0 -1.28303146 0.63228017 0
		 -1.14094603 0.63796359 0 -1.044327974 0.7061646 0 -0.9988606 0.80562443 0 -1.041486263 0.8653003 0
		 -1.1324209 0.85393345 0 -1.18641341 0.799941 0 -1.2404058 0.78004903 0 -1.22619724 0.8397249 0
		 -1.1835717 0.89371741 0 -1.08411181 0.95055157 0 -1.0017023087 0.94202644 0 -0.94202644 0.8653003 0
		 -0.96191841 0.75731534 0 -1.03296113 0.64364702 0 -1.14378774 0.58397114 0 -1.28018975 0.56976259 0
		 -0.98749375 0.14066458 0 -0.94486815 0.066780157 0 -0.9335013 0.012787689 0 -0.83119977 -0.046888195 0
		 -0.72605658 -0.029837942 0 -0.62091333 0.038363066 0 -0.59249628 0.16339825 0 -0.62091333 0.25149122 0
		 -0.70332289 0.2799083 0 -0.799941 0.24012439 0 -0.81130785 0.15203142 0 -0.74594855 0.13213946 0
		 -0.71468973 0.15771483 0 -0.73458171 0.19181533 0 -0.68627262 0.22875755 0 -0.65785557 0.18329021 0
		 -0.67206413 0.1150892 0 -0.7061646 0.083830409 0 -0.80846614 0.063938446 0 -0.86245859 0.18897362 0
		 -0.84256661 0.28843343 0 -0.70332289 0.32537565 0 -0.5981797 0.30548367 0 -0.54987061 0.23728268 0
		 -0.54134548 0.16339825 0 -0.50440329 0.14066458 0 -0.42767715 0.13498116 0 -0.35095102 0.25433293 0
		 -0.32821736 0.3736847 0 -0.32253394 0.47882792 0 -0.3793681 0.5470289 0 -0.48735303 0.6152299 0
		 -0.58681285 0.5981797 0 -0.66922241 0.51861185 0 -0.71468973 0.49587816 0 -0.71026826 0.53480291 -0.040740676
		 -0.63925445 0.69458395 -0.040740676 -0.64845508 0.89086461 -0.040740676 -0.7379083 1.045094252 -0.040740676
		 -0.90002769 1.13074219 -0.040740676 -1.07678473 1.17645526 -0.040740676 -1.30691493 1.1334976 -0.040740676
		 -1.44268 0.9699626 -0.040740676 -1.45837748 0.86635906 -0.040740676 -1.42115223 0.72055984 -0.040740676
		 -1.30786216 0.6261515 -0.040740676 -1.15131581 0.63241345 -0.040740676 -1.044867277 0.70755357 -0.040740676
		 -0.99335033 0.82024688 -0.040740676 -1.045348167 0.89304382 -0.040740676 -1.15076089 0.8798672 -0.040740676
		 -1.20845044 0.82217777 -0.040740676 -1.24464738 0.808842 -0.040740676 -1.23478878 0.8502478 -0.040740676
		 -1.19267213 0.90359581 -0.040740676 -1.092800379 0.96066535 -0.040740676 -1.01397562 0.95251101 -0.040740676
		 -0.95687819 0.87910008 -0.040740676 -0.97657681 0.77216464 -0.040740676 -1.048737407 0.65670782 -0.040740676
		 -1.16098475 0.59626698 -0.040740676 -1.31986761 0.57971662 -0.040740676 -1.002400279 0.11430325 -0.040740676
		 -0.9586153 0.038409427 -0.040740676 -0.94604719 -0.021289216 -0.040740676 -0.83119231 -0.088287868 -0.040740676
		 -0.7147311 -0.069402255 -0.040740676 -0.59873623 0.0058376361 -0.040740676 -0.5672704 0.14428738 -0.040740676
		 -0.59964848 0.24465947 -0.040740676 -0.6950227 0.27754715 -0.040740676 -0.80593181 0.2318787 -0.040740676
		 -0.81980234 0.12438199 -0.040740676 -0.73720181 0.099242657 -0.040740676 -0.69304091 0.13537425 -0.040740676
		 -0.71380395 0.17096806 -0.040740676 -0.67955792 0.19715618 -0.040740676 -0.65804142 0.16272973 -0.040740676
		 -0.67142874 0.098470703 -0.040740676 -0.70260018 0.06989681 -0.040740676 -0.79894978 0.051162168 -0.040740676
		 -0.85106587 0.17185214 -0.040740676 -0.83207804 0.26679158 -0.040740676 -0.69430375 0.30334395 -0.040740676
		 -0.5902651 0.28366095 -0.040740676 -0.54348004 0.21761161 -0.040740676 -0.53423947 0.13752627 -0.040740676
		 -0.48886606 0.10960413 -0.040740676 -0.3993988 0.10297692 -0.040740676 -0.31423813 0.23544914 -0.040740676
		 -0.28982058 0.36364123 -0.040740676 -0.28358352 0.47902691 -0.040740676 -0.34704888 0.55518532 -0.040740676
		 -0.46540615 0.62993723 -0.040740676 -0.57715851 0.61077976 -0.040740676 -0.66498202 0.52598464 -0.040740676
		 -0.7007345 0.50810844 -0.040740676 -0.71482271 0.53506595 -0.090407208 -0.64582139 0.69031888 -0.090407208
		 -0.65476125 0.88103712 -0.090407208 -0.74167943 1.030896068 -0.090407208 -0.89920449 1.11411679 -0.090407208
		 -1.070952415 1.15853441 -0.090407208 -1.29456091 1.11679411 -0.090407208 -1.42647851 0.95789355 -0.090407208
		 -1.44173121 0.85722607 -0.090407208 -1.40556085 0.71555865 -0.090407208 -1.29548132 0.62382579 -0.090407208
		 -1.14337134 0.62991023 -0.090407208 -1.039939523 0.70292097 -0.090407208 -0.98988247 0.81242067 -0.090407208
		 -1.040406704 0.88315457 -0.090407208 -1.14283216 0.87035137 -0.090407208 -1.19888687 0.81429684 -0.090407208
		 -1.23405802 0.80133897 -0.090407208 -1.22447872 0.84157139 -0.090407208 -1.18355572 0.89340752 -0.090407208
		 -1.086514235 0.94885981 -0.090407208 -1.0099232197 0.94093657 -0.090407208 -0.95444393 0.86960602 -0.090407208
		 -0.97358429 0.76570106 -0.090407208 -1.04369998 0.65351617 -0.090407208 -1.15276623 0.59478813 -0.090407208
		 -1.30714655 0.5787068 -0.090407208 -0.99867594 0.12648286 -0.090407208 -0.95613182 0.052739799 -0.090407208
		 -0.94391984 -0.0052670352 -0.090407208 -0.83231986 -0.070367001 -0.090407208 -0.71915907 -0.052016594 -0.090407208
		 -0.60645139 0.021091066 -0.090407208 -0.57587731 0.15561727 -0.090407208 -0.60733777 0.25314489 -0.090407208
		 -0.70000917 0.28510058 -0.090407208 -0.80777526 0.24072632 -0.090407208 -0.8212527 0.13627598 -0.090407208
		 -0.74099296 0.11184907 -0.090407208 -0.69808358 0.14695673 -0.090407208 -0.7182582 0.18154183 -0.090407208
		 -0.68498266 0.2069878 -0.090407208;
	setAttr ".vt[166:185]" -0.66407591 0.17353697 -0.090407208 -0.67708385 0.11109899 -0.090407208
		 -0.70737195 0.083334856 -0.090407208 -0.80099106 0.065131143 -0.090407208 -0.85163021 0.18240087 -0.090407208
		 -0.83318049 0.2746498 -0.090407208 -0.6993106 0.3101663 -0.090407208 -0.59822035 0.29104111 -0.090407208
		 -0.55276114 0.22686355 -0.090407208 -0.54378241 0.14904776 -0.090407208 -0.49969485 0.12191691 -0.090407208
		 -0.41276303 0.1154775 -0.090407208 -0.33001572 0.24419557 -0.090407208 -0.30629015 0.3687548 -0.090407208
		 -0.30022985 0.48087057 -0.090407208 -0.36189663 0.55487072 -0.090407208 -0.47689977 0.62750423 -0.090407208
		 -0.58548516 0.60888964 -0.090407208 -0.67081982 0.52649754 -0.090407208 -0.70555913 0.50912797 -0.090407208;
	setAttr -s 369 ".ed";
	setAttr ".ed[0:165]"  0 1 1 1 2 1 2 3 1 3 4 1 4 5 1 5 6 1 6 7 1 7 8 1 8 9 1
		 9 10 1 10 11 1 11 12 1 12 13 1 13 14 1 14 15 1 15 16 1 16 17 1 17 18 1 18 19 1 19 20 1
		 20 21 1 21 22 1 22 23 1 23 24 1 24 25 1 25 26 1 26 27 1 27 28 1 28 29 1 29 30 1 30 31 1
		 31 32 1 32 33 1 33 34 1 34 35 1 35 36 1 36 37 1 37 38 1 38 39 1 39 40 1 40 41 1 41 42 1
		 42 43 1 43 44 1 44 45 1 45 46 1 46 47 1 47 48 1 48 49 1 49 50 1 50 51 1 51 52 1 52 53 1
		 53 54 1 54 55 1 55 56 1 56 57 1 57 58 1 58 59 1 59 60 1 60 61 1 61 0 1 27 25 1 27 24 1
		 38 36 1 39 36 1 40 36 1 40 35 1 41 35 1 41 34 1 42 34 1 42 33 1 43 33 1 43 32 1 44 32 1
		 44 31 1 45 31 1 45 30 1 45 29 1 45 28 1 46 28 1 46 27 1 46 24 1 47 24 1 48 24 1 48 23 1
		 14 12 1 15 12 1 16 12 1 16 11 1 16 10 1 17 10 1 17 9 1 17 8 1 18 8 1 18 7 1 18 6 1
		 19 6 1 19 5 1 20 5 1 20 4 1 21 4 1 21 3 1 22 3 1 22 2 1 22 1 1 23 1 1 23 0 1 48 0 1
		 48 61 1 49 61 1 49 60 1 49 59 1 49 58 1 49 57 1 49 56 1 49 55 1 49 54 1 50 54 1 50 53 1
		 50 52 1 0 62 1 1 63 1 62 63 1 2 64 1 63 64 1 3 65 1 64 65 1 4 66 1 65 66 1 5 67 1
		 66 67 1 6 68 1 67 68 1 7 69 1 68 69 1 8 70 1 69 70 1 9 71 1 70 71 1 10 72 1 71 72 1
		 11 73 1 72 73 1 12 74 1 73 74 1 13 75 1 74 75 1 14 76 1 75 76 1 15 77 1 76 77 1 16 78 1
		 77 78 1 17 79 1 78 79 1 18 80 1 79 80 1 19 81 1 80 81 1 20 82 1 81 82 1 21 83 1 82 83 1
		 22 84 1 83 84 1;
	setAttr ".ed[166:331]" 23 85 1 84 85 1 24 86 1 85 86 1 25 87 1 86 87 1 26 88 1
		 87 88 1 27 89 1 88 89 1 28 90 1 89 90 1 29 91 1 90 91 1 30 92 1 91 92 1 31 93 1 92 93 1
		 32 94 1 93 94 1 33 95 1 94 95 1 34 96 1 95 96 1 35 97 1 96 97 1 36 98 1 97 98 1 37 99 1
		 98 99 1 38 100 1 99 100 1 39 101 1 100 101 1 40 102 1 101 102 1 41 103 1 102 103 1
		 42 104 1 103 104 1 43 105 1 104 105 1 44 106 1 105 106 1 45 107 1 106 107 1 46 108 1
		 107 108 1 47 109 1 108 109 1 48 110 1 109 110 1 49 111 1 110 111 1 50 112 1 111 112 1
		 51 113 1 112 113 1 52 114 1 113 114 1 53 115 1 114 115 1 54 116 1 115 116 1 55 117 1
		 116 117 1 56 118 1 117 118 1 57 119 1 118 119 1 58 120 1 119 120 1 59 121 1 120 121 1
		 60 122 1 121 122 1 61 123 1 122 123 1 123 62 1 62 124 1 63 125 1 124 125 0 64 126 1
		 125 126 0 65 127 1 126 127 0 66 128 1 127 128 0 67 129 1 128 129 0 68 130 1 129 130 0
		 69 131 1 130 131 0 70 132 1 131 132 0 71 133 1 132 133 0 72 134 1 133 134 0 73 135 1
		 134 135 0 74 136 1 135 136 0 75 137 1 136 137 0 76 138 1 137 138 0 77 139 1 138 139 0
		 78 140 1 139 140 0 79 141 1 140 141 0 80 142 1 141 142 0 81 143 1 142 143 0 82 144 1
		 143 144 0 83 145 1 144 145 0 84 146 1 145 146 0 85 147 1 146 147 0 86 148 1 147 148 0
		 87 149 1 148 149 0 88 150 1 149 150 0 89 151 1 150 151 0 90 152 1 151 152 0 91 153 1
		 152 153 0 92 154 1 153 154 0 93 155 1 154 155 0 94 156 1 155 156 0 95 157 1 156 157 0
		 96 158 1 157 158 0 97 159 1 158 159 0 98 160 1 159 160 0 99 161 1 160 161 0 100 162 1
		 161 162 0 101 163 1 162 163 0 102 164 1 163 164 0 103 165 1 164 165 0 104 166 1 165 166 0
		 105 167 1 166 167 0;
	setAttr ".ed[332:368]" 106 168 1 167 168 0 107 169 1 168 169 0 108 170 1 169 170 0
		 109 171 1 170 171 0 110 172 1 171 172 0 111 173 1 172 173 0 112 174 1 173 174 0 113 175 1
		 174 175 0 114 176 1 175 176 0 115 177 1 176 177 0 116 178 1 177 178 0 117 179 1 178 179 0
		 118 180 1 179 180 0 119 181 1 180 181 0 120 182 1 181 182 0 121 183 1 182 183 0 122 184 1
		 183 184 0 123 185 1 184 185 0 185 124 0;
	setAttr -s 184 -ch 676 ".fc[0:183]" -type "polyFaces" 
		f 3 26 62 25
		mu 0 3 26 27 25
		f 3 -63 63 24
		mu 0 3 25 27 24
		f 3 37 64 36
		mu 0 3 37 38 36
		f 3 38 65 -65
		mu 0 3 38 39 36
		f 3 39 66 -66
		mu 0 3 39 40 36
		f 3 -67 67 35
		mu 0 3 36 40 35
		f 3 40 68 -68
		mu 0 3 40 41 35
		f 3 -69 69 34
		mu 0 3 35 41 34
		f 3 41 70 -70
		mu 0 3 41 42 34
		f 3 -71 71 33
		mu 0 3 34 42 33
		f 3 42 72 -72
		mu 0 3 42 43 33
		f 3 -73 73 32
		mu 0 3 33 43 32
		f 3 43 74 -74
		mu 0 3 43 44 32
		f 3 -75 75 31
		mu 0 3 32 44 31
		f 3 44 76 -76
		mu 0 3 44 45 31
		f 3 -77 77 30
		mu 0 3 31 45 30
		f 3 -78 78 29
		mu 0 3 30 45 29
		f 3 -79 79 28
		mu 0 3 29 45 28
		f 3 45 80 -80
		mu 0 3 45 46 28
		f 3 -81 81 27
		mu 0 3 28 46 27
		f 3 -82 82 -64
		mu 0 3 27 46 24
		f 3 46 83 -83
		mu 0 3 46 47 24
		f 3 47 84 -84
		mu 0 3 47 48 24
		f 3 -85 85 23
		mu 0 3 24 48 23
		f 3 13 86 12
		mu 0 3 13 14 12
		f 3 14 87 -87
		mu 0 3 14 15 12
		f 3 15 88 -88
		mu 0 3 15 16 12
		f 3 -89 89 11
		mu 0 3 12 16 11
		f 3 -90 90 10
		mu 0 3 11 16 10
		f 3 16 91 -91
		mu 0 3 16 17 10
		f 3 -92 92 9
		mu 0 3 10 17 9
		f 3 -93 93 8
		mu 0 3 9 17 8
		f 3 17 94 -94
		mu 0 3 17 18 8
		f 3 -95 95 7
		mu 0 3 8 18 7
		f 3 -96 96 6
		mu 0 3 7 18 6
		f 3 18 97 -97
		mu 0 3 18 19 6
		f 3 -98 98 5
		mu 0 3 6 19 5
		f 3 19 99 -99
		mu 0 3 19 20 5
		f 3 -100 100 4
		mu 0 3 5 20 4
		f 3 20 101 -101
		mu 0 3 20 21 4
		f 3 -102 102 3
		mu 0 3 4 21 3
		f 3 21 103 -103
		mu 0 3 21 22 3
		f 3 -104 104 2
		mu 0 3 3 22 2
		f 3 -105 105 1
		mu 0 3 2 22 1
		f 3 22 106 -106
		mu 0 3 22 23 1
		f 3 -107 107 0
		mu 0 3 1 23 0
		f 3 -86 108 -108
		mu 0 3 23 48 0
		f 3 -109 109 61
		mu 0 3 0 48 61
		f 3 48 110 -110
		mu 0 3 48 49 61
		f 3 -111 111 60
		mu 0 3 61 49 60
		f 3 -112 112 59
		mu 0 3 60 49 59
		f 3 -113 113 58
		mu 0 3 59 49 58
		f 3 -114 114 57
		mu 0 3 58 49 57
		f 3 -115 115 56
		mu 0 3 57 49 56
		f 3 -116 116 55
		mu 0 3 56 49 55
		f 3 -117 117 54
		mu 0 3 55 49 54
		f 3 49 118 -118
		mu 0 3 49 50 54
		f 3 -119 119 53
		mu 0 3 54 50 53
		f 3 -120 120 52
		mu 0 3 53 50 52
		f 3 50 51 -121
		mu 0 3 50 51 52
		f 4 -1 121 123 -123
		mu 0 4 62 63 64 65
		f 4 -2 122 125 -125
		mu 0 4 66 67 68 69
		f 4 -3 124 127 -127
		mu 0 4 70 71 72 73
		f 4 -4 126 129 -129
		mu 0 4 74 75 76 77
		f 4 -5 128 131 -131
		mu 0 4 78 79 80 81
		f 4 -6 130 133 -133
		mu 0 4 82 83 84 85
		f 4 -7 132 135 -135
		mu 0 4 86 87 88 89
		f 4 -8 134 137 -137
		mu 0 4 90 91 92 93
		f 4 -9 136 139 -139
		mu 0 4 94 95 96 97
		f 4 -10 138 141 -141
		mu 0 4 98 99 100 101
		f 4 -11 140 143 -143
		mu 0 4 102 103 104 105
		f 4 -12 142 145 -145
		mu 0 4 106 107 108 109
		f 4 -13 144 147 -147
		mu 0 4 110 111 112 113
		f 4 -14 146 149 -149
		mu 0 4 114 115 116 117
		f 4 -15 148 151 -151
		mu 0 4 118 119 120 121
		f 4 -16 150 153 -153
		mu 0 4 122 123 124 125
		f 4 -17 152 155 -155
		mu 0 4 126 127 128 129
		f 4 -18 154 157 -157
		mu 0 4 130 131 132 133
		f 4 -19 156 159 -159
		mu 0 4 134 135 136 137
		f 4 -20 158 161 -161
		mu 0 4 138 139 140 141
		f 4 -21 160 163 -163
		mu 0 4 142 143 144 145
		f 4 -22 162 165 -165
		mu 0 4 146 147 148 149
		f 4 -23 164 167 -167
		mu 0 4 150 151 152 153
		f 4 -24 166 169 -169
		mu 0 4 154 155 156 157
		f 4 -25 168 171 -171
		mu 0 4 158 159 160 161
		f 4 -26 170 173 -173
		mu 0 4 162 163 164 165
		f 4 -27 172 175 -175
		mu 0 4 166 167 168 169
		f 4 -28 174 177 -177
		mu 0 4 170 171 172 173
		f 4 -29 176 179 -179
		mu 0 4 174 175 176 177
		f 4 -30 178 181 -181
		mu 0 4 178 179 180 181
		f 4 -31 180 183 -183
		mu 0 4 182 183 184 185
		f 4 -32 182 185 -185
		mu 0 4 186 187 188 189
		f 4 -33 184 187 -187
		mu 0 4 190 191 192 193
		f 4 -34 186 189 -189
		mu 0 4 194 195 196 197
		f 4 -35 188 191 -191
		mu 0 4 198 199 200 201
		f 4 -36 190 193 -193
		mu 0 4 202 203 204 205
		f 4 -37 192 195 -195
		mu 0 4 206 207 208 209
		f 4 -38 194 197 -197
		mu 0 4 210 211 212 213
		f 4 -39 196 199 -199
		mu 0 4 214 215 216 217
		f 4 -40 198 201 -201
		mu 0 4 218 219 220 221
		f 4 -41 200 203 -203
		mu 0 4 222 223 224 225
		f 4 -42 202 205 -205
		mu 0 4 226 227 228 229
		f 4 -43 204 207 -207
		mu 0 4 230 231 232 233
		f 4 -44 206 209 -209
		mu 0 4 234 235 236 237
		f 4 -45 208 211 -211
		mu 0 4 238 239 240 241
		f 4 -46 210 213 -213
		mu 0 4 242 243 244 245
		f 4 -47 212 215 -215
		mu 0 4 246 247 248 249
		f 4 -48 214 217 -217
		mu 0 4 250 251 252 253
		f 4 -49 216 219 -219
		mu 0 4 254 255 256 257
		f 4 -50 218 221 -221
		mu 0 4 258 259 260 261
		f 4 -51 220 223 -223
		mu 0 4 262 263 264 265
		f 4 -52 222 225 -225
		mu 0 4 266 267 268 269
		f 4 -53 224 227 -227
		mu 0 4 270 271 272 273
		f 4 -54 226 229 -229
		mu 0 4 274 275 276 277
		f 4 -55 228 231 -231
		mu 0 4 278 279 280 281
		f 4 -56 230 233 -233
		mu 0 4 282 283 284 285
		f 4 -57 232 235 -235
		mu 0 4 286 287 288 289
		f 4 -58 234 237 -237
		mu 0 4 290 291 292 293
		f 4 -59 236 239 -239
		mu 0 4 294 295 296 297
		f 4 -60 238 241 -241
		mu 0 4 298 299 300 301
		f 4 -61 240 243 -243
		mu 0 4 302 303 304 305
		f 4 -62 242 244 -122
		mu 0 4 306 307 308 309
		f 4 -124 245 247 -247
		mu 0 4 310 311 312 313
		f 4 -126 246 249 -249
		mu 0 4 314 315 316 317
		f 4 -128 248 251 -251
		mu 0 4 318 319 320 321
		f 4 -130 250 253 -253
		mu 0 4 322 323 324 325
		f 4 -132 252 255 -255
		mu 0 4 326 327 328 329
		f 4 -134 254 257 -257
		mu 0 4 330 331 332 333
		f 4 -136 256 259 -259
		mu 0 4 334 335 336 337
		f 4 -138 258 261 -261
		mu 0 4 338 339 340 341
		f 4 -140 260 263 -263
		mu 0 4 342 343 344 345
		f 4 -142 262 265 -265
		mu 0 4 346 347 348 349
		f 4 -144 264 267 -267
		mu 0 4 350 351 352 353
		f 4 -146 266 269 -269
		mu 0 4 354 355 356 357
		f 4 -148 268 271 -271
		mu 0 4 358 359 360 361
		f 4 -150 270 273 -273
		mu 0 4 362 363 364 365
		f 4 -152 272 275 -275
		mu 0 4 366 367 368 369
		f 4 -154 274 277 -277
		mu 0 4 370 371 372 373
		f 4 -156 276 279 -279
		mu 0 4 374 375 376 377
		f 4 -158 278 281 -281
		mu 0 4 378 379 380 381
		f 4 -160 280 283 -283
		mu 0 4 382 383 384 385
		f 4 -162 282 285 -285
		mu 0 4 386 387 388 389
		f 4 -164 284 287 -287
		mu 0 4 390 391 392 393
		f 4 -166 286 289 -289
		mu 0 4 394 395 396 397
		f 4 -168 288 291 -291
		mu 0 4 398 399 400 401
		f 4 -170 290 293 -293
		mu 0 4 402 403 404 405
		f 4 -172 292 295 -295
		mu 0 4 406 407 408 409
		f 4 -174 294 297 -297
		mu 0 4 410 411 412 413
		f 4 -176 296 299 -299
		mu 0 4 414 415 416 417
		f 4 -178 298 301 -301
		mu 0 4 418 419 420 421
		f 4 -180 300 303 -303
		mu 0 4 422 423 424 425
		f 4 -182 302 305 -305
		mu 0 4 426 427 428 429
		f 4 -184 304 307 -307
		mu 0 4 430 431 432 433
		f 4 -186 306 309 -309
		mu 0 4 434 435 436 437
		f 4 -188 308 311 -311
		mu 0 4 438 439 440 441
		f 4 -190 310 313 -313
		mu 0 4 442 443 444 445
		f 4 -192 312 315 -315
		mu 0 4 446 447 448 449
		f 4 -194 314 317 -317
		mu 0 4 450 451 452 453
		f 4 -196 316 319 -319
		mu 0 4 454 455 456 457
		f 4 -198 318 321 -321
		mu 0 4 458 459 460 461
		f 4 -200 320 323 -323
		mu 0 4 462 463 464 465
		f 4 -202 322 325 -325
		mu 0 4 466 467 468 469
		f 4 -204 324 327 -327
		mu 0 4 470 471 472 473
		f 4 -206 326 329 -329
		mu 0 4 474 475 476 477
		f 4 -208 328 331 -331
		mu 0 4 478 479 480 481
		f 4 -210 330 333 -333
		mu 0 4 482 483 484 485
		f 4 -212 332 335 -335
		mu 0 4 486 487 488 489
		f 4 -214 334 337 -337
		mu 0 4 490 491 492 493
		f 4 -216 336 339 -339
		mu 0 4 494 495 496 497
		f 4 -218 338 341 -341
		mu 0 4 498 499 500 501
		f 4 -220 340 343 -343
		mu 0 4 502 503 504 505
		f 4 -222 342 345 -345
		mu 0 4 506 507 508 509
		f 4 -224 344 347 -347
		mu 0 4 510 511 512 513
		f 4 -226 346 349 -349
		mu 0 4 514 515 516 517
		f 4 -228 348 351 -351
		mu 0 4 518 519 520 521
		f 4 -230 350 353 -353
		mu 0 4 522 523 524 525
		f 4 -232 352 355 -355
		mu 0 4 526 527 528 529
		f 4 -234 354 357 -357
		mu 0 4 530 531 532 533
		f 4 -236 356 359 -359
		mu 0 4 534 535 536 537
		f 4 -238 358 361 -361
		mu 0 4 538 539 540 541
		f 4 -240 360 363 -363
		mu 0 4 542 543 544 545
		f 4 -242 362 365 -365
		mu 0 4 546 547 548 549
		f 4 -244 364 367 -367
		mu 0 4 550 551 552 553
		f 4 -245 366 368 -246
		mu 0 4 554 555 556 557;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "2183EAF8-4DF5-F50C-3B9C-2680D1D74E29";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "630CFE34-453E-DD72-91AC-CDBEF1C796E0";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "EC2D5313-4959-DE0E-00EA-81B5AAA46369";
createNode displayLayerManager -n "layerManager";
	rename -uid "E07E3C00-4AA0-A2EE-CEE6-A8A2D2FC88B5";
createNode displayLayer -n "defaultLayer";
	rename -uid "2925703B-4E73-E074-C437-A3B859150DB5";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "22E5E6B4-4185-4A9A-5A7B-819E7D23349A";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "5A044CE7-46B4-0381-E8AE-7FB8F6C106B5";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "DFACD3FA-477A-C3FE-CD94-7696B5D8A564";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n"
		+ "            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
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
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1341\\n    -height 856\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1341\\n    -height 856\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "87F2BF83-4C3E-5F43-D640-8499EF30E0F3";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode polySmoothFace -n "polySmoothFace1";
	rename -uid "1FF2A3A9-4A32-56E9-8CC5-D19076757992";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".mth" 1;
	setAttr ".suv" yes;
	setAttr ".ps" 0.10000000149011612;
	setAttr ".ro" 1;
	setAttr ".ma" yes;
	setAttr ".m08" yes;
createNode polyReduce -n "polyReduce1";
	rename -uid "33742B5B-4A72-97A7-DA58-E99B77C5FA62";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".ver" 1;
	setAttr ".trm" 2;
	setAttr ".p" 50;
	setAttr ".tct" 700;
	setAttr ".vmp" -type "string" "";
	setAttr ".sym" -type "double4" 0 1 0 0 ;
	setAttr ".stl" 0.01;
	setAttr ".kqw" 1;
	setAttr ".cr" yes;
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
connectAttr "polyReduce1.out" "polySurfaceShape1.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polySurfaceShape2.o" "polySmoothFace1.ip";
connectAttr "polySmoothFace1.out" "polyReduce1.ip";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "polySurfaceShape1.iog" ":initialShadingGroup.dsm" -na;
// End of CloudTest2.ma
