//Maya ASCII 2019 scene
//Name: Fox_Rigged.ma
//Last modified: Thu, Jan 28, 2021 02:05:41 PM
//Codeset: 1252
requires maya "2019";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t ntsc;
fileInfo "application" "maya";
fileInfo "product" "Maya 2019";
fileInfo "version" "2019";
fileInfo "cutIdentifier" "201905131615-158f5352ad";
fileInfo "osv" "Microsoft Windows 10 Technical Preview  (Build 19042)\n";
createNode transform -s -n "persp";
	rename -uid "B8D84BC9-4E13-7E1B-3682-12B4522B634D";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -86.39626734945287 276.59293304989404 -331.80255598073325 ;
	setAttr ".r" -type "double3" -30.938352690664935 188.19999999994889 0 ;
	setAttr ".rp" -type "double3" 0 0 5.6843418860808015e-14 ;
	setAttr ".rpt" -type "double3" -1.3974067773033499e-13 9.1563814651688821e-14 -5.5660931446326976e-15 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "1A13335A-4647-43A9-6939-93B5D8D21F0D";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 377.80979993515348;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -25.347341043751815 49.010811367572714 -79.182002648290137 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "9FEC7A45-453D-5478-8BAF-C5B721B05064";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -15.400307294849654 1107.2504192918332 17.806302282642406 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "C1B4A979-4595-C805-75AE-388B0ADEADE9";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1020.2661742250668;
	setAttr ".ow" 212.39474561925067;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".tp" -type "double3" -38.767974314447443 86.984245066766277 -144.02255770805249 ;
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "E954AB86-4F62-9AD4-4996-1595548D308C";
	setAttr ".t" -type "double3" -11.807487999944442 58.026679817431614 1017.4781587397124 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "66F58D47-4A28-EE41-79B0-48A8E8DF5019";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 961.9667548962459;
	setAttr ".ow" 355.66883690510133;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".tp" -type "double3" 26.466786353172481 18.051326604176147 55.511403843466546 ;
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "D117F813-4449-60C4-3011-759A066BAAAA";
	setAttr ".t" -type "double3" 1210.340075781723 100.08306957790758 -1.5434405148924455 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "112C2D79-4F40-8B86-9F17-F7BDEAB427B7";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 1234.3409328507539;
	setAttr ".ow" 295.62510479999173;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".tp" -type "double3" -24.000857069030978 61.037501777438564 58.958308791309875 ;
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode joint -n "b_Root";
	rename -uid "8B6FDD5F-4183-B41C-63A5-AAAD069D4EB9";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 
		0 -smx 0 -at "long";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".jo" -type "double3" -90 0 0 ;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" -0.00021355709759518504 5.0089561227650847e-06 8.6514219219679944e-06 ;
	setAttr ".bps" -type "matrix" 2.5399999618529887 -2.2205384879774269e-07 -3.8352931993456047e-07 0
		 -3.8353014758754467e-07 -9.4672770729784787e-06 -2.5399999618353548 0 2.2205241927714584e-07 2.5399999618353739 -9.4672771062540833e-06 0
		 6.2330578032288031e-08 0 0 1;
	setAttr ".radi" 10.623517913818359;
	setAttr -k on ".MaxHandle" 104;
	setAttr ".fbxID" 5;
createNode joint -n "b_Hip" -p "b_Root";
	rename -uid "2D3386D5-4305-DAAA-9C14-46A16B0BC3A4";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 
		0 -smx 0 -at "long";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" 90.00006103515625 -69.192703247070313 -90.000007629394531 ;
	setAttr ".bps" -type "matrix" 2.2366508640818979e-07 2.3743456579128361 0.90226520655724696 0
		 -2.6692468312902214e-06 0.90226531411536581 -2.3743459409555103 0 -2.5399999618516151 -7.3909844787510047e-07 2.5746138550604102e-06 0
		 3.631875505946441e-06 109.06270044899833 -67.941350501677888 1;
	setAttr ".radi" 2.6986260509490965;
	setAttr -k on ".MaxHandle" 107;
	setAttr ".fbxID" 5;
createNode joint -n "b_Spine01" -p "b_Hip";
	rename -uid "F11BA68C-4586-2549-D5F1-B48F6DEA6515";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 
		0 -smx 0 -at "long";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" -5.0089538490283303e-06 -1.8669345081434585e-05 -72.373031616210938 ;
	setAttr ".bps" -type "matrix" 1.7840133172130213e-06 -0.14090654319361887 2.5360886775379585 0
		 -3.7307998794413808e-07 2.5360885915172457 0.14090636337327975 0 -2.5399999618523732 -4.7147343468603288e-07 1.7605691832647146e-06 0
		 1.3459427047232997e-06 139.57447304284429 -56.346709216329074 1;
	setAttr ".radi" 4.5477087593078629;
	setAttr -k on ".MaxHandle" 108;
	setAttr ".fbxID" 5;
createNode joint -n "b_Spine02" -p "b_Spine01";
	rename -uid "5BA55A3C-4297-CC76-1C2C-01A4B9B4EAC4";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 
		0 -smx 0 -at "long";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" 5.3774215302837547e-06 -1.5012217814344697e-12 1.995363712310791 ;
	setAttr ".bps" -type "matrix" 1.7699414436554903e-06 -0.052517980483345703 2.5394570806556227 0
		 -6.7335908730692505e-07 2.5394570009481106 0.052517797777082896 0 -2.5399999618523212 -7.0981089807651397e-07 1.7556401930513141e-06 0
		 3.283536597554803e-05 136.52273568714412 -1.4258131297320631 1;
	setAttr ".radi" 5.3863204765319832;
	setAttr -k on ".MaxHandle" 109;
	setAttr ".fbxID" 5;
createNode joint -n "b_Neck" -p "b_Spine02";
	rename -uid "0283D6FF-4397-4E9B-5E4A-46B473E0E5C5";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 
		0 -smx 0 -at "long";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" 3.6823530878173083e-13 0 35.321353912353516 ;
	setAttr ".bps" -type "matrix" 1.0548239881605689e-06 1.425366333241693 2.1023631092875825 0
		 -1.5727210586843202e-06 2.1023631498862301 -1.4253665283996184 0 -2.5399999618523212 -7.0981089807651397e-07 1.7556401930513141e-06 0
		 7.8045636199557936e-05 135.17569438398431 63.709090074122884 1;
	setAttr ".radi" 2.80916075706482;
	setAttr -k on ".MaxHandle" 110;
	setAttr ".fbxID" 5;
createNode joint -n "b_Head" -p "b_Neck";
	rename -uid "336F9AB8-4F13-49CE-9241-1D85E2FE5E66";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 
		0 -smx 0 -at "long";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" 2.0718048290291335e-06 0 -47.192043304443359 ;
	setAttr ".bps" -type "matrix" 1.8706026870752809e-06 -0.57377032878559886 2.4743463213394268 0
		 -3.8672153651571741e-07 2.4743462057531374 0.5737701663827941 0 -2.5399999618523088 -7.9928279025120451e-07 1.7348927720395373e-06 0
		 9.1835634480315472e-05 154.242750928416 91.832315956179087 1;
	setAttr ".radi" 2.80916075706482;
	setAttr -k on ".MaxHandle" 111;
	setAttr ".fbxID" 5;
createNode joint -n "b_RightUpperArm" -p "b_Spine02";
	rename -uid "A918F539-4B21-1A1D-4321-D5BB83011849";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 
		0 -smx 0 -at "long";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".jo" -type "double3" 0.074003279209137032 0.0022489535622298835 -90.825035095214858 ;
	setAttr ".pa" -type "double3" -0.12453538994013748 -0.72137260879488196 -2.1602685609446426 ;
	setAttr ".bps" -type "matrix" -0.031930896829799625 -2.5330719918926072 -0.18473395397794459 0
		 0.0029284910150948499 -0.18478532856137078 2.5332679005116261 0 -2.5397975604329961 0.031633276412790977 0.0052434781879486135 0
		 -21.539862892308051 124.62891553563297 45.775310069142584 1;
	setAttr ".radi" 4.8394768524169933;
	setAttr -k on ".MaxHandle" 125;
	setAttr ".fbxID" 5;
createNode joint -n "b_RightForeArm" -p "b_RightUpperArm";
	rename -uid "7A2C03A7-46ED-A0FB-2D1A-12A783F4D311";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 
		0 -smx 0 -at "long";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".jo" -type "double3" 4.3161899156984899e-06 2.3696978997167325e-23 4.2552928924560547 ;
	setAttr ".pa" -type "double3" -0.0072657919425629797 1.467855109495243 1.6769962054020895 ;
	setAttr ".bps" -type "matrix" 0.033612852900640797 -2.5385821368705939 0.077916220749996823 0
		 0.0065348443682076386 0.078009044734760488 2.5387934613151448 0 -2.5397691387490995 -0.033396425557561678 0.0075635247020328341 0
		 -20.113031494557475 78.489239578292256 40.864198051701074 1;
	setAttr ".radi" 4.0636274528503433;
	setAttr -k on ".MaxHandle" 126;
	setAttr ".fbxID" 5;
createNode joint -n "b_RightWrist" -p "b_RightForeArm";
	rename -uid "0A46282D-43D0-4F11-64A3-CD91FE3D1846";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
	setAttr ".pa" -type "double3" -0.014650532928386561 -0.89567530648586802 4.6921637704312582 ;
	setAttr ".bps" -type "matrix" -0.0056707044415149968 -2.5239066528709357 0.28541751533419546 0
		 0.0044128119853331597 0.28540781472419768 2.5239102956619632 0 -2.5399897984863831 0.006130646548955114 0.0037476619927418278 0
		 -24.039495502754207 36.539886316348856 64.266486691404509 1;
	setAttr ".radi" 4.0636274528503433;
createNode joint -n "b_RightHand" -p "b_RightWrist";
	rename -uid "94296BE7-4CBB-DFE8-E0ED-97A49FB940F5";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 
		0 -smx 0 -at "long";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 7;
	setAttr ".jo" -type "double3" -1.6372784376144411 -0.16023623943328894 54.855216979980476 ;
	setAttr ".bps" -type "matrix" -0.0067594080416818175 -1.2194732177517216 2.228102347426629 0
		 0.079746575306183204 2.2269097599807801 1.2190623844654467 0 -2.5387387814312916 0.073198292517848054 0.032360713091377606 0
		 -24.105116613358174 8.2065363007739478 67.009538815774178 1;
	setAttr ".radi" 2.2045371723175053;
	setAttr -k on ".MaxHandle" 127;
	setAttr ".fbxID" 5;
createNode ikEffector -n "effector5" -p "b_RightWrist";
	rename -uid "8F8CE6CB-4820-51F1-BC9E-D0AA14C59F20";
	addAttr -ci true -k true -sn "blendBRightHand" -ln "blendBRightHand" -dv 1 -smn 
		0 -smx 1 -at "double";
	setAttr ".v" no;
	setAttr ".hd" yes;
	setAttr -k on ".blendBRightHand" 0;
createNode joint -n "b_LeftUpperArm" -p "b_Spine02";
	rename -uid "DAAA9208-4F8B-8DF4-81F5-A383ABD1D2A9";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 
		0 -smx 0 -at "long";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".jo" -type "double3" 0.1119927987456322 -0.030399352312088061 -90.81011962890625 ;
	setAttr ".pa" -type "double3" 0.6668753913060278 -0.080260743016955682 -1.1182100820942209 ;
	setAttr ".bps" -type "matrix" -0.0049844971625028697 -2.5362495109165351 -0.1378895263715704 0
		 -0.033813267637127206 -0.13781149549784355 2.5360333372618502 0 -2.5397699942973411 0.0068123434447596208 -0.033492900620349132 0
		 17.334217138793562 124.62911129088039 45.779552253357934 1;
	setAttr ".radi" 4.8394760513305677;
	setAttr -k on ".MaxHandle" 134;
	setAttr ".fbxID" 5;
createNode joint -n "b_LeftForeArm" -p "b_LeftUpperArm";
	rename -uid "3417240D-4F7C-A49D-ADC9-E48EF6AE82CF";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 
		0 -smx 0 -at "long";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".jo" -type "double3" 4.3208738134126238e-06 0 4.2552928924560547 ;
	setAttr ".pa" -type "double3" -0.22786756399815675 0.14665615582147287 0.78968579355735324 ;
	setAttr ".bps" -type "matrix" -0.0014392157851112622 -2.5385516459374551 0.085752548286364111 0
		 -0.02314403616972574 0.085761921802130395 2.538446296035068 0 -2.5398941096945511 0.00065697486133581978 -0.023179434562923956 0
		 22.918890194449393 78.904120115370361 41.730604122765044 1;
	setAttr ".radi" 4.0636266517639168;
	setAttr -k on ".MaxHandle" 135;
	setAttr ".fbxID" 5;
createNode joint -n "b_LeftWrist" -p "b_LeftForeArm";
	rename -uid "01625297-4EBA-2B76-00DB-E993718D8174";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 6;
	setAttr ".pa" -type "double3" -0.0039683740134445304 0.42282979508014096 2.4409072683309581 ;
	setAttr ".bps" -type "matrix" 0.016318574482295515 -2.5325319017089987 0.19394829831107252 0
		 -0.022885846489170296 0.19379763126831498 2.5324926507697954 0 -2.5398444338917132 -0.018017848926020399 -0.021573478106995576 0
		 26.501312418754939 36.715099486132836 64.76678807617354 1;
	setAttr ".radi" 4.0636266517639168;
createNode joint -n "b_LeftHand" -p "b_LeftWrist";
	rename -uid "12495C57-4328-E2F4-62E4-9AA7C07E4E2E";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 
		0 -smx 0 -at "long";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 7;
	setAttr ".jo" -type "double3" 2.4197382926940914 0.55455434322357144 54.809616088867195 ;
	setAttr ".bps" -type "matrix" 0.015283745003624467 -1.3008710658355411 2.1815365161921401 0
		 -0.13373219096393474 2.1781377570460791 1.2997812508044502 0 -2.5364309402094962 -0.12267998753304153 -0.055385125764045237 0
		 26.679613304694076 8.6022668793416948 67.182312893950126 1;
	setAttr ".radi" 2.2048646163940431;
	setAttr -k on ".MaxHandle" 136;
	setAttr ".fbxID" 5;
createNode ikEffector -n "effector6" -p "b_LeftWrist";
	rename -uid "7B2C3470-4A4F-DCB9-F008-D0985C86BB78";
	addAttr -ci true -k true -sn "blendBLeftHand" -ln "blendBLeftHand" -dv 1 -smn 0 
		-smx 1 -at "double";
	setAttr ".v" no;
	setAttr ".hd" yes;
	setAttr -k on ".blendBLeftHand" 0;
createNode joint -n "b_Tail01" -p "b_Hip";
	rename -uid "BA177274-4A90-6537-E668-BFBB2EB0FA8D";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 
		0 -smx 0 -at "long";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" 360.00003051757813 1.9963299564551562e-05 158.16015625 ;
	setAttr ".bps" -type "matrix" -3.1560736791968649e-07 -1.8682774431047731 -1.7207954868032576 0
		 1.0415755032981777e-06 -1.7207954813456774 1.8682777458468927 0 -2.5399999618527946 -4.7350242788829432e-07 9.7993995442934471e-07 0
		 -8.9451313867514981e-06 133.57736454155506 -101.98899888593915 1;
	setAttr ".radi" 2.6065019130706788;
	setAttr -k on ".MaxHandle" 114;
	setAttr ".fbxID" 5;
createNode joint -n "b_Tail02" -p "b_Tail01";
	rename -uid "C22095E9-4F12-24E8-EE54-CC88729788C1";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 
		0 -smx 0 -at "long";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" 0 0 -7.9839992523193359 ;
	setAttr ".bps" -type "matrix" -4.5721939448126886e-07 -1.6111554848141765 -1.9636129667405449 0
		 9.8764263023941315e-07 -1.9636129192860303 1.6111557838637462 0 -2.5399999618527946 -4.7350242788829432e-07 9.7993995442934471e-07 0
		 -1.3541319178725633e-05 110.38845091882105 -123.34735164631353 1;
	setAttr ".radi" 5.090466041564941;
	setAttr -k on ".MaxHandle" 115;
	setAttr ".fbxID" 5;
createNode joint -n "b_Tail03" -p "|b_Root|b_Hip|b_Tail01|b_Tail02";
	rename -uid "B5F25B97-4DAE-20C7-4E5F-7B9A516A2715";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 
		0 -smx 0 -at "long";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" 0 0 -6.1717591285705566 ;
	setAttr ".bps" -type "matrix" -5.6075018232084572e-07 -1.3907106414308648 -2.1254462924450599 0
		 9.3276297781546969e-07 -2.1254462131149694 1.3907109336453629 0 -2.5399999618527946 -4.7350242788829432e-07 9.7993995442934471e-07 0
		 -2.6239433814180437e-05 71.333526065773853 -170.94595872014563 1;
	setAttr ".radi" 5.090466041564941;
	setAttr -k on ".MaxHandle" 116;
	setAttr ".fbxID" 5;
createNode joint -n "b_Tail05" -p "|b_Root|b_Hip|b_Tail01|b_Tail02";
	rename -uid "92E2AA9A-43CE-22A0-35D2-19BD12928F7F";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 
		0 -smx 0 -at "long";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" 0 0 -6.1717591285705566 ;
	setAttr ".bps" -type "matrix" -5.6075018232084572e-07 -1.3907106414308648 -2.1254462924450599 0
		 9.3276297781546969e-07 -2.1254462131149694 1.3907109336453629 0 -2.5399999618527946 -4.7350242788829432e-07 9.7993995442934471e-07 0
		 14.441375298823251 78.07380366265798 -163.97326611436307 1;
	setAttr ".radi" 5.090466041564941;
	setAttr -k on ".MaxHandle" 116;
	setAttr ".fbxID" 5;
createNode joint -n "b_Tail04" -p "b_Hip";
	rename -uid "4B6095CC-43CB-AB47-5696-25834583A121";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 
		0 -smx 0 -at "long";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" 360.00003051757813 1.9963299564551562e-05 158.16015625 ;
	setAttr ".bps" -type "matrix" -3.1560736791968649e-07 -1.8682774431047731 -1.7207954868032576 0
		 1.0415755032981777e-06 -1.7207954813456774 1.8682777458468927 0 -2.5399999618527946 -4.7350242788829432e-07 9.7993995442934471e-07 0
		 -1.7722756738069481e-06 113.59221570633133 -88.193329409919386 1;
	setAttr ".radi" 2.6065019130706788;
	setAttr -k on ".MaxHandle" 114;
	setAttr ".fbxID" 5;
createNode joint -n "b_Tail02" -p "b_Tail04";
	rename -uid "0F5651D6-4975-6B68-67D2-28812C8CE8D0";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 
		0 -smx 0 -at "long";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" 0 0 -7.9839992523193359 ;
	setAttr ".bps" -type "matrix" -4.5721939448126886e-07 -1.6111554848141765 -1.9636129667405449 0
		 9.8764263023941315e-07 -1.9636129192860303 1.6111557838637462 0 -2.5399999618527946 -4.7350242788829432e-07 9.7993995442934471e-07 0
		 -39.648211443955852 88.430693744572707 -112.07278164158687 1;
	setAttr ".radi" 5.090466041564941;
	setAttr -k on ".MaxHandle" 115;
	setAttr ".fbxID" 5;
createNode joint -n "b_Tail03" -p "|b_Root|b_Hip|b_Tail04|b_Tail02";
	rename -uid "14CB37E6-41E2-ED89-758B-E3BEF487C948";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 
		0 -smx 0 -at "long";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" 0 0 -6.1717591285705566 ;
	setAttr ".bps" -type "matrix" -5.6075018232084572e-07 -1.3907106414308648 -2.1254462924450599 0
		 9.3276297781546969e-07 -2.1254462131149694 1.3907109336453629 0 -2.5399999618527946 -4.7350242788829432e-07 9.7993995442934471e-07 0
		 -83.234998776675738 56.116043796267995 -149.02269749662634 1;
	setAttr ".radi" 5.090466041564941;
	setAttr -k on ".MaxHandle" 116;
	setAttr ".fbxID" 5;
createNode joint -n "b_Tail06" -p "b_Hip";
	rename -uid "9150CD8A-4B37-BD94-FD96-FF9963281263";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 
		0 -smx 0 -at "long";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" 360.00003051757813 1.9963299564551562e-05 158.16015625 ;
	setAttr ".bps" -type "matrix" -3.1560736791968649e-07 -1.8682774431047731 -1.7207954868032576 0
		 1.0415755032981777e-06 -1.7207954813456774 1.8682777458468927 0 -2.5399999618527946 -4.7350242788829432e-07 9.7993995442934471e-07 0
		 -1.7722756738069481e-06 113.59221570633133 -88.193329409919386 1;
	setAttr ".radi" 2.6065019130706788;
	setAttr -k on ".MaxHandle" 114;
	setAttr ".fbxID" 5;
createNode joint -n "b_Tail02" -p "b_Tail06";
	rename -uid "9AA01531-4694-EEE0-62A5-7891C9560E04";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 
		0 -smx 0 -at "long";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" 0 0 -7.9839992523193359 ;
	setAttr ".bps" -type "matrix" -4.5721939448126886e-07 -1.6111554848141765 -1.9636129667405449 0
		 9.8764263023941315e-07 -1.9636129192860303 1.6111557838637462 0 -2.5399999618527946 -4.7350242788829432e-07 9.7993995442934471e-07 0
		 49.740288572692521 87.37163747286192 -111.66293171827532 1;
	setAttr ".radi" 5.090466041564941;
	setAttr -k on ".MaxHandle" 115;
	setAttr ".fbxID" 5;
createNode joint -n "b_Tail03" -p "|b_Root|b_Hip|b_Tail06|b_Tail02";
	rename -uid "68483A67-42AC-9681-6143-698BF1400B67";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 
		0 -smx 0 -at "long";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" 0 0 -6.1717591285705566 ;
	setAttr ".bps" -type "matrix" -5.6075018232084572e-07 -1.3907106414308648 -2.1254462924450599 0
		 9.3276297781546969e-07 -2.1254462131149694 1.3907109336453629 0 -2.5399999618527946 -4.7350242788829432e-07 9.7993995442934471e-07 0
		 100.29081269355878 52.505371926491058 -120.78033440227291 1;
	setAttr ".radi" 5.090466041564941;
	setAttr -k on ".MaxHandle" 116;
	setAttr ".fbxID" 5;
createNode joint -n "b_Tail05" -p "|b_Root|b_Hip|b_Tail06|b_Tail02";
	rename -uid "82AEB31D-4469-6506-73A3-2BA79298B924";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 
		0 -smx 0 -at "long";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" 0 0 -6.1717591285705566 ;
	setAttr ".bps" -type "matrix" -5.6075018232084572e-07 -1.3907106414308648 -2.1254462924450599 0
		 9.3276297781546969e-07 -2.1254462131149694 1.3907109336453629 0 -2.5399999618527946 -4.7350242788829432e-07 9.7993995442934471e-07 0
		 100.29081269355878 52.505371926491058 -120.78033440227291 1;
	setAttr ".radi" 5.090466041564941;
	setAttr -k on ".MaxHandle" 116;
	setAttr ".fbxID" 5;
createNode joint -n "b_LeftLeg01" -p "b_Hip";
	rename -uid "BC0CC86D-4EA6-4BC5-84A2-26ACA63AA5FE";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 
		0 -smx 0 -at "long";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" -0.018709711730480194 0.0063060857355594635 -151.86775207519531 ;
	setAttr ".bps" -type "matrix" -0.0027092154439544063 -2.505227450964608 0.41883975291244052 0
		 0.00122151224046552 0.41883839704833942 2.5052288419794824 0 -2.539998223280997 0.0028735527703846677 0.00075804832192994385 0
		 17.698726265826721 125.14255222776615 -75.835493665432253 1;
	setAttr ".radi" 3.978277702331543;
	setAttr -k on ".MaxHandle" 130;
	setAttr ".fbxID" 5;
createNode joint -n "b_LeftLeg02" -p "b_LeftLeg01";
	rename -uid "7475C82C-4180-D159-4688-9AA73EF22891";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 
		0 -smx 0 -at "long";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" -1.4590857411178604e-09 2.1565288079727907e-06 -43.190048217773438 ;
	setAttr ".bps" -type "matrix" -0.0028080400597696965 -2.1048595351225723 -1.4216738149498693 0
		 -0.00098260243560602278 -1.421673838024075 2.1048614809829131 0 -2.5399982196085444 0.0028769594466709187 0.00075743195958801347 0
		 17.64739998773161 77.683082381456288 -67.900924565269491 1;
	setAttr ".radi" 3.7679893112182623;
	setAttr -k on ".MaxHandle" 131;
	setAttr ".fbxID" 5;
createNode joint -n "b_LeftFoot01" -p "b_LeftLeg02";
	rename -uid "3AF80F6B-4CA4-BB1A-7B70-92ADE92EE5DA";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 
		0 -smx 0 -at "long";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" 0.027971372008323669 -0.0078683784231543541 54.578666687011719 ;
	setAttr ".bps" -type "matrix" -0.0027654489426273588 -2.3696116362289934 0.91462079567218135 0
		 0.00050256909323725539 0.91462054588677488 2.3696131788341037 0 -2.5399984066779671 0.0027609082870009428 -0.0005269460403488391 0
		 17.597017067860193 39.915988949914542 -93.409758533589468 1;
	setAttr ".radi" 3.3137869262695316;
	setAttr -k on ".MaxHandle" 132;
	setAttr ".fbxID" 5;
createNode joint -n "b_LeftFoot02" -p "b_LeftFoot01";
	rename -uid "3EE573C0-4075-374C-7F3A-0EB8E6B77304";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 
		0 -smx 0 -at "long";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" -8.337631696164749e-10 3.5897151065000803e-06 66.362350463867202 ;
	setAttr ".bps" -type "matrix" -0.00064824752688481531 -0.11221502153293873 2.5375201664685627 0
		 0.0027349322349788799 2.5375183506080297 0.11221539766387167 0 -2.5399982553228835 0.0027609010919055267 -0.0005267870273917265 0
		 17.55337846457649 2.5236835265950432 -78.977044209994233 1;
	setAttr ".radi" 3.3137869262695316;
	setAttr -k on ".MaxHandle" 133;
	setAttr ".fbxID" 5;
createNode ikEffector -n "effector4" -p "b_LeftFoot01";
	rename -uid "C7CA3CB1-4F0F-91FA-3473-99BAD4E5F368";
	addAttr -ci true -k true -sn "blendBLeftFoot02" -ln "blendBLeftFoot02" -dv 1 -smn 
		0 -smx 1 -at "double";
	setAttr ".v" no;
	setAttr ".hd" yes;
	setAttr -k on ".blendBLeftFoot02" 0;
createNode joint -n "b_RightLeg01" -p "b_Hip";
	rename -uid "A79B74F8-4AF9-DDE0-9978-7199860D2CF2";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 
		0 -smx 0 -at "long";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" 5.9650472394423559e-05 -5.0089524847862776e-06 -151.84075927734375 ;
	setAttr ".bps" -type "matrix" -0.020619928799863015 -2.507504083519406 0.40447094027798758 0
		 -0.3326617588318696 0.4036659561713335 2.4855561452510035 0 -2.5180370832207499 -0.032795264029749589 -0.33168289920604049 0
		 -17.697620401058785 125.142566926566 -75.835469017805963 1;
	setAttr ".radi" 3.9782785034179686;
	setAttr -k on ".MaxHandle" 119;
	setAttr ".fbxID" 5;
createNode joint -n "b_RightLeg02" -p "b_RightLeg01";
	rename -uid "B2207972-493E-4068-8BD9-D293A1EEB2FC";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 
		0 -smx 0 -at "long";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" 4.8853317224928361e-12 2.1574503534793621e-06 -43.190048217773438 ;
	setAttr ".bps" -type "matrix" 0.20516621553852882 -2.1445488442927516 -1.3455167799491208 0
		 -0.26267068133588106 -1.3606737972920528 2.1286546589018056 0 -2.518037076155915 -0.032795337876640934 -0.33168294553850441 0
		 -18.088249879784623 77.639949017272443 -68.173102422730437 1;
	setAttr ".radi" 3.767988910675049;
	setAttr -k on ".MaxHandle" 120;
	setAttr ".fbxID" 5;
createNode joint -n "b_RightFoot01" -p "b_RightLeg02";
	rename -uid "09A41510-4B62-22F3-0D7F-4D8F29C362B6";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 
		0 -smx 0 -at "long";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" -0.019780226051807404 -3.2568878149952241e-12 54.504573822021484 ;
	setAttr ".bps" -type "matrix" -0.083052003835230592 -2.3862055250434375 0.86644358154875201 0
		 -0.32191768620425903 0.86980797096247198 2.3646149295716699 0 -2.5181483618728833 -0.032495055972415025 -0.33086662914859233 0
		 -14.406988239224392 39.160726839506125 -92.315470518195653 1;
	setAttr ".radi" 3.3137865257263188;
	setAttr -k on ".MaxHandle" 121;
	setAttr ".fbxID" 5;
createNode joint -n "b_RightFoot02" -p "b_RightFoot01";
	rename -uid "14263B60-445A-1604-97FB-A786BDA65A02";
	addAttr -is true -ci true -h true -k true -sn "MaxHandle" -ln "MaxHandle" -smn 
		0 -smx 0 -at "long";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".ssc" no;
	setAttr ".pa" -type "double3" 8.337631696164749e-10 3.586171715141973e-06 66.362350463867202 ;
	setAttr ".bps" -type "matrix" -0.32820833076451633 -0.159921144248618 2.5136245812116069 0
		 -0.05298935953877297 2.5347523518277262 0.15434646896463045 0 -2.5181483824156081 -0.03249506598195772 -0.33086647181960116 0
		 -15.717550284963178 1.5065750102196205 -78.642996783560505 1;
	setAttr ".radi" 3.3137865257263188;
	setAttr -k on ".MaxHandle" 122;
	setAttr ".fbxID" 5;
createNode ikEffector -n "effector3" -p "b_RightFoot01";
	rename -uid "A896B768-4E32-2658-343B-72A08EC61FB8";
	addAttr -ci true -k true -sn "blendBRightFoot02" -ln "blendBRightFoot02" -dv 1 
		-smn 0 -smx 1 -at "double";
	setAttr ".v" no;
	setAttr ".hd" yes;
	setAttr -k on ".blendBRightFoot02" 0;
createNode ikHandle -n "RR";
	rename -uid "FCB0C86F-4DF1-51D2-A8BD-3096F036376F";
	setAttr ".roc" yes;
createNode ikHandle -n "RL";
	rename -uid "0AE891A9-499D-C26D-4748-5A909E602993";
	setAttr ".roc" yes;
createNode ikHandle -n "FR";
	rename -uid "8BEB2DD0-4712-D596-2558-AB9BA8E54ECD";
	setAttr ".roc" yes;
createNode ikHandle -n "FL";
	rename -uid "317D9D5F-4107-EFB8-920F-518FA1E1C6F2";
	setAttr ".roc" yes;
createNode transform -n "Rigged_Fox";
	rename -uid "870A50A3-4EE7-2793-3CE2-84842D8C506B";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 6.0691719055175781 84.210724467950968 -25.258010864257813 ;
	setAttr ".sp" -type "double3" 6.0691719055175781 84.210724467950968 -25.258010864257813 ;
createNode mesh -n "Rigged_FoxShape" -p "Rigged_Fox";
	rename -uid "AD58F581-4A67-B945-C777-05BEEED50330";
	setAttr -k off ".v";
	setAttr -s 8 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dr" 1;
	setAttr ".vcs" 2;
createNode mesh -n "Rigged_FoxShapeOrig" -p "Rigged_Fox";
	rename -uid "21F5FFD4-4C84-2934-B615-BBAE6DAD8FFC";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 2105 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.22441556 0.24444209 0.24571848
		 0.23855647 0.253968 0.264258 0.232778 0.269371 0.19456249 0.24615553 0.19867299 0.27222601
		 0.14145672 0.24575827 0.16453913 0.24685141 0.165143 0.27259099 0.141544 0.270518
		 0.13788953 0.3040728 0.16311714 0.3076227 0.16171101 0.331938 0.135353 0.32736301
		 0.24164645 0.30806425 0.26404241 0.30441928 0.27103499 0.332295 0.247802 0.334921
		 0.20056722 0.30806226 0.201882 0.33293599 0.134957 0.3647624 0.16219573 0.36998522
		 0.16245399 0.390257 0.134746 0.384689 0.20746784 0.37339839 0.25318235 0.37789252
		 0.25604901 0.40078801 0.210444 0.39495701 0.27612761 0.37786111 0.27884099 0.40213901
		 0.135355 0.40437388 0.16487369 0.41060162 0.167651 0.43395299 0.13605399 0.42696801
		 0.20700651 0.41431737 0.24812737 0.42070752 0.239035 0.443571 0.203061 0.43653899
		 0.27054921 0.42548579 0.26103199 0.45228299 0.14047661 0.44461 0.16283393 0.44964263
		 0.15750299 0.467006 0.145371 0.46413401 0.19182482 0.45166615 0.21696043 0.46058786
		 0.192531 0.47942001 0.17939 0.46840701 0.23540157 0.4717378 0.207037 0.49326801 0.15216
		 0.51647103 0.163683 0.21036001 0.141333 0.210656 0.14213599 0.140343 0.163359 0.138547
		 0.21256 0.20909999 0.18873499 0.209195 0.181483 0.137228 0.195989 0.136668 0.234023
		 0.20211899 0.21539301 0.133341 0.054351799 0.2369208 0.044197999 0.259799 0.022537
		 0.25437099 0.032989014 0.23008072 0.085811704 0.2398234 0.080758996 0.26337001 0.116949
		 0.26737499 0.11765131 0.24324106 0.109691 0.32879701 0.1126647 0.30363154 0.034863215
		 0.30066332 0.028384 0.329027 0.0064909998 0.325789 0.013065271 0.29652804 0.075506635
		 0.30120909 0.071860999 0.32747301 0.107746 0.38799 0.10842209 0.36741441 0.065704972
		 0.36931327 0.062424999 0.391606 0.021049 0.40054801 0.02359866 0.37568718 0.00099199999
		 0.404338 0.0029034622 0.37703422 0.105298 0.43305999 0.10660622 0.40897435 0.067324921
		 0.41224813 0.072949 0.43594101 0.043315999 0.44898701 0.031416401 0.42310095 0.026759
		 0.461528 0.012988983 0.43096536 0.132566 0.46877801 0.11824161 0.45001465 0.089855254
		 0.45287478 0.108565 0.47161499 0.098543003 0.485223 0.069531232 0.46618757 0.089933001
		 0.50214398 0.05674652 0.48080766 0.118647 0.20902599 0.120783 0.14022601 0.068746999
		 0.204486 0.088995002 0.136961 0.102809 0.139484 0.092974998 0.206441 0.047807001
		 0.19564401 0 0 0.84536332 0 1 0.33993891 0.21106967 0.22454214 0.10303557 0.39742967
		 0.10217813 0.41200605 0.13103613 0.40994823 0.14063939 0.39742967 0.14864209 0.4195044
		 0.15807387 0.41178751 0.13927194 0.42717087 0.17755947 0.44734022 0.12149563 0.42238495
		 0.10132629 0.42648718 0.10303557 0.39742967 0.14063939 0.39742967 0.13103613 0.40994823
		 0.10217813 0.41200605 0.15807387 0.41178751 0.14864209 0.4195044 0.13927194 0.42717087
		 0.17755947 0.44734022 0.12149563 0.42238495 0.10132629 0.42648718 0.10303557 0.39742967
		 0.10217813 0.41200605 0.13103613 0.40994823 0.14063939 0.39742967 0.14864209 0.4195044
		 0.15807387 0.41178751 0.13927194 0.42717087 0.17755947 0.44734022 0.12149563 0.42238495
		 0.10132629 0.42648718 0.10303557 0.39742967 0.14063939 0.39742967 0.13103613 0.40994823
		 0.10217813 0.41200605 0.15807387 0.41178751 0.14864209 0.4195044 0.13927194 0.42717087
		 0.17755947 0.44734022 0.12149563 0.42238495 0.10132629 0.42648718 0.10303557 0.39742967
		 0.10217813 0.41200605 0.13103613 0.40994823 0.14063939 0.39742967 0.14864209 0.4195044
		 0.15807387 0.41178751 0.13927194 0.42717087 0.17755947 0.44734022 0.12149563 0.42238495
		 0.10132629 0.42648718 0.10303557 0.39742967 0.14063939 0.39742967 0.13103613 0.40994823
		 0.10217813 0.41200605 0.15807387 0.41178751 0.14864209 0.4195044 0.13927194 0.42717087
		 0.17755947 0.44734022 0.12149563 0.42238495 0.10132629 0.42648718 0.4426603 0.53536415
		 0.44183648 0.54936886 0.4695628 0.54739177 0.47878945 0.53536415 0.48647833 0.55657315
		 0.49554023 0.54915887 0.47747561 0.56393898 0.51426166 0.58331734 0.46039641 0.55934072
		 0.44101804 0.56328213 0.4426603 0.53536415 0.47878945 0.53536415 0.4695628 0.54739177
		 0.44183648 0.54936886 0.49554023 0.54915887 0.48647833 0.55657315 0.47747561 0.56393898
		 0.51426166 0.58331734 0.46039641 0.55934072 0.44101804 0.56328213 0.4426603 0.53536415
		 0.44183648 0.54936886 0.4695628 0.54739177 0.47878945 0.53536415 0.48647833 0.55657315
		 0.49554023 0.54915887 0.47747561 0.56393898 0.51426166 0.58331734 0.46039641 0.55934072
		 0.44101804 0.56328213 0.4426603 0.53536415 0.47878945 0.53536415 0.4695628 0.54739177
		 0.44183648 0.54936886 0.49554023 0.54915887 0.48647833 0.55657315 0.47747561 0.56393898
		 0.51426166 0.58331734 0.46039641 0.55934072 0.44101804 0.56328213 0.4426603 0.53536415
		 0.44183648 0.54936886 0.4695628 0.54739177 0.47878945 0.53536415 0.48647833 0.55657315
		 0.49554023 0.54915887 0.47747561 0.56393898 0.51426166 0.58331734 0.46039641 0.55934072
		 0.44101804 0.56328213 0.4426603 0.53536415 0.47878945 0.53536415 0.4695628 0.54739177
		 0.44183648 0.54936886 0.49554023 0.54915887 0.48647833 0.55657315 0.47747561 0.56393898
		 0.51426166 0.58331734 0.46039641 0.55934072 0.44101804 0.56328213 0.57701182 0.37145895
		 0.57564479 0.3866148 0.51031148 0.4188168 0.52371639 0.40333664 0.52751422 0.4888204
		 0.57626748 0.43420649 0.60388541 0.46190709 0.58199418 0.49685249 0.46585023 0.46969819
		 0.49198067 0.43956444 0.58588767 0.33894664 0.52954352 0.35667568 0.52008551 0.31031296
		 0.55170745 0.29557571 0.62171853 0.32508785 0.64389271 0.27062413 0.67932576 0.27716127
		 0.65258861 0.3615672;
	setAttr ".uvst[0].uvsp[250:499]" 0.63918114 0.46163815 0.62755793 0.50954676
		 0.149955 0.62991899 0.12572899 0.59983498 0.15074401 0.59123099 0.17072099 0.61922503
		 0.6687184 0.47102898 0.65803272 0.51788086 0.68209928 0.38190523 0.67988992 0.41323164
		 0.65284109 0.38473254 0.71229237 0.53271937 0.72130889 0.48774931 0.75365162 0.49735984
		 0.74435014 0.54152983 0.72989559 0.44290671 0.73464251 0.41811651 0.75932896 0.43647194
		 0.75730777 0.45814884 0.61860162 0.87673271 0.64577156 0.85380018 0.67258799 0.85109198
		 0.66186547 0.87785006 0.65025967 0.41495132 0.034809001 0.65206403 0.028875001 0.676606
		 0.00099199999 0.68113101 0.013908 0.637559 0.067797691 0.59094334 0.052542716 0.60052711
		 0.051624998 0.59921402 0.066707999 0.589526 0.52263999 0.89722103 0.52623898 0.84060699
		 0.57966399 0.81968403 0.56441498 0.88607198 0.44933 0.79903501 0.49880099 0.800502
		 0.46685401 0.90161502 0.44897699 0.89674699 0.042757999 0.69579297 0.025955999 0.71469301
		 0.045550998 0.63618797 0.074280001 0.65955001 0.12957001 0.70771003 0.107577 0.71056002
		 0.108167 0.68541998 0.12559199 0.67926502 0.084321998 0.69304502 0.171966 0.68597502
		 0.158177 0.66226399 0.112403 0.64628297 0.095987 0.65164298 0.067996003 0.62263799
		 0.085658997 0.61417502 0.19320799 0.68092501 0.180989 0.64907402 0.20526995 0.63444656
		 0.2142286 0.64913476 0.212262 0.68945003 0.22435501 0.66337299 0.097277001 0.57145202
		 0.098842911 0.57301414 0.117013 0.56554902 0.135015 0.54432499 0.16266081 0.54527527
		 0.16940004 0.56441176 0.19379561 0.60734582 0.17731869 0.58194762 0.032742001 0.61377299
		 0.21135688 0.53871804 0.21149415 0.51713908 0.24988994 0.51677489 0.25235498 0.53302473
		 0.21752334 0.55282927 0.25711271 0.54287684 0.25814676 0.63009125 0.25072098 0.61846292
		 0.28143334 0.59317112 0.28685874 0.60233629 0.24384919 0.60735679 0.27624181 0.58452165
		 0.23547149 0.58591849 0.2705808 0.56786788 0.22309141 0.56582475 0.26160651 0.55225539
		 0.27585447 0.64342976 0.3000946 0.61243844 0.27452484 0.53735125 0.27027139 0.52886248
		 0.29522204 0.51923478 0.29902804 0.52696466 0.3006382 0.59053469 0.29589772 0.58228064
		 0.31842744 0.56748557 0.32264709 0.57484925 0.29129499 0.57449931 0.31431168 0.56044304
		 0.28651056 0.55957872 0.31003729 0.54711771 0.27869019 0.54554182 0.30305851 0.53439891
		 0.31213337 0.59959656 0.33220688 0.583318 0.26684219 0.51470518 0.29084617 0.5074507
		 0.37620601 0.55977303 0.365771 0.55010003 0.37465701 0.544393 0.38390201 0.55202901
		 0.359245 0.54102802 0.35590899 0.53298002 0.36887801 0.53105599 0.36982301 0.53691101
		 0.35774401 0.51907498 0.36035699 0.50746202 0.37162399 0.50638902 0.36925501 0.51863003
		 0.35969201 0.493541 0.34736699 0.48732099 0.352126 0.47820699 0.36678001 0.48875201
		 0.38032001 0.52199697 0.37527299 0.53628403 0.34732479 0.54016799 0.34406894 0.52893925
		 0.3614257 0.56029451 0.35439998 0.55255049 0.35074767 0.54628038 0.386127 0.50187302
		 0.39533699 0.51382101 0.39180401 0.52560198 0.38571 0.53653502 0.33139923 0.50462264
		 0.32531881 0.49655926 0.33501399 0.485551 0.33507955 0.5112564 0.33946601 0.474206
		 0.33874387 0.51804042 0.077520996 0.70989501 0.57407135 0.40726241 0.50218147 0.42801863
		 0.52200967 0.2351602 0.56645024 0.2018632 0.56318617 0.25629851 0.53538632 0.24847612
		 0.139681 0.51993102 0.16587596 0.51765835 0.61267698 0.3093197 0.6084621 0.28967997
		 0.236233 0.70561099 0.24728939 0.68042386 0.6085031 0.24285683 0.5851047 0.27118585
		 0.63993502 0.81057066 0.65542197 0.80637997 0.58488047 0.87586176 0.59598082 0.81770468
		 0.627864 0.81383699 0.62487 0.85591102 0.60594237 0.78136748 0.63131118 0.77096593
		 0.58854598 0.76642215 0.62278342 0.72964448 0.651977 0.74473298 0.618972 0.75284201
		 0.6751405 0.66774589 0.69801301 0.699678 0.73550087 0.86649466 0.73375493 0.84916133
		 0.75668401 0.85188699 0.75755382 0.86556697 0.68242264 0.81565189 0.69809663 0.84605259
		 0.54132342 0.78537154 0.73043555 0.73059005 0.69240302 0.76491535 0.78826964 0.81755972
		 0.79474884 0.79922396 0.8156296 0.80637157 0.81079209 0.82325017 0.73699236 0.78012586
		 0.76163793 0.75735772 0.78069103 0.77339298 0.76481098 0.78897601 0.72714204 0.79996318
		 0.75597799 0.80940098 0.72564793 0.82517469 0.75383502 0.83105201 0.84619755 0.81417227
		 0.84933043 0.79744613 0.86514902 0.80428898 0.86671001 0.81904101 0.78733164 0.85719967
		 0.78581834 0.83700711 0.80812562 0.8411606 0.80870742 0.86090505 0.78718084 0.86891258
		 0.80784476 0.87124598 0.8069191 0.78172481 0.82521236 0.78753603 0.85544902 0.89397699
		 0.85612702 0.88113201 0.871499 0.88373202 0.87048799 0.89836299 0.84301823 0.82945907
		 0.86454099 0.83333403 0.83876491 0.86454701 0.84118629 0.84594035 0.86342698 0.84896898
		 0.85876501 0.86674601 0.83733511 0.8742792 0.85702002 0.87626207 0.83519578 0.89243245
		 0.8366034 0.87925982 0.84239805 0.83503836 0.86416388 0.83862686 0.88419801 0.85358399
		 0.87661701 0.867441 0.78447288 0.89027387 0.78710365 0.8749069 0.80740321 0.87653816
		 0.80502933 0.89047259 0.72663623 0.80849791 0.7552526 0.81673038 0.78743982 0.82414317
		 0.80988944 0.82931328 0.67980152 0.79378283 0.73532629 0.8992151 0.73639441 0.87536538
		 0.757999 0.87256801 0.755 0.88998902 0.69938672 0.86902803 0.67846012 0.78259087
		 0.66987401 0.92932397 0.65637797 0.89154398 0.70004696 0.88078618 0.70313776 0.91423815
		 0.63226879 0.94575846 0.60469687 0.88846886 0.88650399 0.815292 0.87779403 0.80127501
		 0.88869101 0.79335898 0.898736 0.80770397 0.87323153 0.8782171 0.88890398 0.87342298
		 0.88617408 0.8822034 0.89202398 0.84541303 0.90470499 0.84960198 0.89737201 0.86062002;
	setAttr ".uvst[0].uvsp[500:749]" 0.89519501 0.835567 0.89359301 0.82472903
		 0.90635598 0.820436 0.90860498 0.83591801 0.90425539 0.86636031 0.89127338 0.88446438
		 0.91388035 0.85180801 0.92554301 0.86632198 0.91689497 0.87853003 0.90777802 0.86929798
		 0.918576 0.85293698 0.90601999 0.89285499 0.89248598 0.89011502 0.89412153 0.83890015
		 0.90728474 0.84055036 0.88477701 0.88669699 0.88348699 0.89967799 0.129677 0.71219599
		 0.106095 0.71467602 0.074643001 0.71438199 0.13121501 0.71680099 0.107506 0.71896499
		 0.075365998 0.71848202 0.70616102 0.87927997 0.70779502 0.912126 0.73497498 0.734918
		 0.69806302 0.76774102 0.68678898 0.78675598 0.68659061 0.7969774 0.686203 0.81695002
		 0.70166802 0.84534699 0.70464003 0.86779284 0.69450915 0.81868196 0.70842475 0.84615022
		 0.6950233 0.79940331 0.70626062 0.77034897 0.69528639 0.78953707 0.74058956 0.73964328
		 0.71252745 0.87845564 0.71359241 0.90940726 0.71113861 0.8675195 0.82082498 0.80814999
		 0.82976401 0.78898197 0.83304602 0.7904017 0.82508093 0.80916011 0.81014401 0.890522
		 0.81245399 0.87694401 0.81650472 0.87733245 0.81434613 0.89084244 0.81298614 0.87182653
		 0.814026 0.86182702 0.81817567 0.86228329 0.81707036 0.87223792 0.813676 0.84219402
		 0.81829047 0.84282243 0.81547523 0.83059967 0.81999123 0.83134425 0.816396 0.82466602
		 0.82086158 0.82547003 0.33046401 0.50563598 0.32475099 0.49720401 0.36056 0.56032503
		 0.35373399 0.55269402 0.35025001 0.546588 0.34682199 0.54058897 0.34326801 0.52951699
		 0.33747801 0.51866001 0.33363801 0.51229399 0.33385906 0.52031481 0.32999903 0.5138365
		 0.33977407 0.53136754 0.34340379 0.54267651 0.3469041 0.54878521 0.35046542 0.55502343
		 0.3575789 0.56274259 0.32675859 0.50706577 0.32118616 0.49828136 0.20631 0.63382
		 0.194784 0.60683697 0.19828913 0.60503489 0.20954391 0.6315403 0.17845701 0.58155
		 0.18230215 0.58019531 0.171644 0.564363 0.17559639 0.56336939 0.163845 0.54531598
		 0.16793802 0.54474759 0.166998 0.51756102 0.17083123 0.51752472 0.24776299 0.67934501
		 0.22487301 0.662256 0.22773945 0.6594851 0.25018302 0.67625099 0.215129 0.64777303
		 0.21819516 0.64524806 0.79910529 0.51086622 0.7894038 0.55391181 0.7708745 0.38903341
		 0.80232775 0.405424 0.79402286 0.4622685 0.79583228 0.47956994 0.58616918 0.78947484
		 0.56483102 0.77700698 0.60002899 0.717884 0.65731299 0.64285702 0.60295802 0.95856798
		 0.591075 0.80358976 0.71160835 0.13755375 0.75387728 0.38017604 0.76587462 0.38642797
		 0.010436714 -0.0011680722 1.12497592 0.2522662 0.74849397 0.37737074 0.10007843 0.57424664
		 0.068633743 0.59203076 0.053208955 0.60148036 0.30667999 0.60401899 0.29465899 0.594796
		 0.28977701 0.58630002 0.28504199 0.578318 0.280119 0.56296402 0.27206999 0.54856902
		 0.26786801 0.54017299 0.263493 0.53147799 0.26032099 0.51667601 0.57701182 0.37145895
		 0.52371639 0.40333664 0.51031148 0.4188168 0.57564479 0.3866148 0.52751422 0.4888204
		 0.58199418 0.49685249 0.60388541 0.46190709 0.57626748 0.43420649 0.49198067 0.43956444
		 0.46585023 0.46969819 0.58588767 0.33894664 0.55170745 0.29557571 0.52008551 0.31031296
		 0.52954352 0.35667568 0.62171853 0.32508785 0.65258861 0.3615672 0.67932576 0.27716127
		 0.64389271 0.27062413 0.62755793 0.50954676 0.63918114 0.46163815 0.149955 0.62991899
		 0.17072099 0.61922503 0.15074401 0.59123099 0.12572899 0.59983498 0.65803272 0.51788086
		 0.6687184 0.47102898 0.68209928 0.38190523 0.65284109 0.38473254 0.67988992 0.41323164
		 0.71229237 0.53271937 0.74435014 0.54152983 0.75365162 0.49735984 0.72130889 0.48774931
		 0.72989559 0.44290671 0.75730777 0.45814884 0.75932896 0.43647194 0.73464251 0.41811651
		 0.61860162 0.87673271 0.66186547 0.87785006 0.67258799 0.85109198 0.64577156 0.85380018
		 0.65025967 0.41495132 0.034809001 0.65206403 0.013908 0.637559 0.00099199999 0.68113101
		 0.028875001 0.676606 0.067797691 0.59094334 0.066707999 0.589526 0.051624998 0.59921402
		 0.052542716 0.60052711 0.52263999 0.89722103 0.56441498 0.88607198 0.57966399 0.81968403
		 0.52623898 0.84060699 0.44933 0.79903501 0.44897699 0.89674699 0.46685401 0.90161502
		 0.49880099 0.800502 0.025955999 0.71469301 0.042757999 0.69579297 0.074280001 0.65955001
		 0.045550998 0.63618797 0.12957001 0.70771003 0.12559199 0.67926502 0.108167 0.68541998
		 0.107577 0.71056002 0.084321998 0.69304502 0.171966 0.68597502 0.158177 0.66226399
		 0.112403 0.64628297 0.085658997 0.61417502 0.067996003 0.62263799 0.095987 0.65164298
		 0.19320799 0.68092501 0.2142286 0.64913476 0.20526995 0.63444656 0.180989 0.64907402
		 0.212262 0.68945003 0.22435501 0.66337299 0.098842911 0.57301414 0.097277001 0.57145202
		 0.117013 0.56554902 0.16940004 0.56441176 0.16266081 0.54527527 0.135015 0.54432499
		 0.19379561 0.60734582 0.17731869 0.58194762 0.032742001 0.61377299 0.21135688 0.53871804
		 0.25235498 0.53302473 0.24988994 0.51677489 0.21149415 0.51713908 0.21752334 0.55282927
		 0.25711271 0.54287684 0.25814676 0.63009125 0.28685874 0.60233629 0.28143334 0.59317112
		 0.25072098 0.61846292 0.27624181 0.58452165 0.24384919 0.60735679 0.2705808 0.56786788
		 0.23547149 0.58591849 0.26160651 0.55225539 0.22309141 0.56582475 0.27585447 0.64342976
		 0.3000946 0.61243844 0.27452484 0.53735125 0.29902804 0.52696466 0.29522204 0.51923478
		 0.27027139 0.52886248 0.3006382 0.59053469 0.32264709 0.57484925 0.31842744 0.56748557
		 0.29589772 0.58228064 0.31431168 0.56044304 0.29129499 0.57449931 0.31003729 0.54711771
		 0.28651056 0.55957872 0.30305851 0.53439891 0.27869019 0.54554182 0.31213337 0.59959656
		 0.33220688 0.583318 0.29084617 0.5074507 0.26684219 0.51470518 0.37620601 0.55977303;
	setAttr ".uvst[0].uvsp[750:999]" 0.38390201 0.55202901 0.37465701 0.544393
		 0.365771 0.55010003 0.359245 0.54102802 0.36982301 0.53691101 0.36887801 0.53105599
		 0.35590899 0.53298002 0.35774401 0.51907498 0.36925501 0.51863003 0.37162399 0.50638902
		 0.36035699 0.50746202 0.35969201 0.493541 0.36678001 0.48875201 0.352126 0.47820699
		 0.34736699 0.48732099 0.38032001 0.52199697 0.37527299 0.53628403 0.34732479 0.54016799
		 0.34406894 0.52893925 0.3614257 0.56029451 0.35439998 0.55255049 0.35074767 0.54628038
		 0.386127 0.50187302 0.39533699 0.51382101 0.39180401 0.52560198 0.38571 0.53653502
		 0.33139923 0.50462264 0.33501399 0.485551 0.32531881 0.49655926 0.33507955 0.5112564
		 0.33946601 0.474206 0.33874387 0.51804042 0.077520996 0.70989501 0.57407135 0.40726241
		 0.50218147 0.42801863 0.52200967 0.2351602 0.53538632 0.24847612 0.56318617 0.25629851
		 0.56645024 0.2018632 0.16587596 0.51765835 0.139681 0.51993102 0.6084621 0.28967997
		 0.61267698 0.3093197 0.236233 0.70561099 0.24728939 0.68042386 0.6085031 0.24285683
		 0.5851047 0.27118585 0.65542197 0.80637997 0.63993502 0.81057066 0.58488047 0.87586176
		 0.62487 0.85591102 0.627864 0.81383699 0.59598082 0.81770468 0.63131118 0.77096593
		 0.60594237 0.78136748 0.58854598 0.76642215 0.618972 0.75284201 0.651977 0.74473298
		 0.62278342 0.72964448 0.69801301 0.699678 0.6751405 0.66774589 0.73550087 0.86649466
		 0.75755382 0.86556697 0.75668401 0.85188699 0.73375493 0.84916133 0.69809663 0.84605259
		 0.68242264 0.81565189 0.54132342 0.78537154 0.69240302 0.76491535 0.73043555 0.73059005
		 0.78826964 0.81755972 0.81079209 0.82325017 0.8156296 0.80637157 0.79474884 0.79922396
		 0.73699236 0.78012586 0.76481098 0.78897601 0.78069103 0.77339298 0.76163793 0.75735772
		 0.72714204 0.79996318 0.75597799 0.80940098 0.75383502 0.83105201 0.72564793 0.82517469
		 0.84619755 0.81417227 0.86671001 0.81904101 0.86514902 0.80428898 0.84933043 0.79744613
		 0.78733164 0.85719967 0.80870742 0.86090505 0.80812562 0.8411606 0.78581834 0.83700711
		 0.78718084 0.86891258 0.80784476 0.87124598 0.82521236 0.78753603 0.8069191 0.78172481
		 0.85544902 0.89397699 0.87048799 0.89836299 0.871499 0.88373202 0.85612702 0.88113201
		 0.84301823 0.82945907 0.86454099 0.83333403 0.83876491 0.86454701 0.85876501 0.86674601
		 0.86342698 0.84896898 0.84118629 0.84594035 0.83733511 0.8742792 0.85702002 0.87626207
		 0.83519578 0.89243245 0.8366034 0.87925982 0.86416388 0.83862686 0.84239805 0.83503836
		 0.87661701 0.867441 0.88419801 0.85358399 0.78447288 0.89027387 0.80502933 0.89047259
		 0.80740321 0.87653816 0.78710365 0.8749069 0.7552526 0.81673038 0.72663623 0.80849791
		 0.80988944 0.82931328 0.78743982 0.82414317 0.67980152 0.79378283 0.73532629 0.8992151
		 0.755 0.88998902 0.757999 0.87256801 0.73639441 0.87536538 0.69938672 0.86902803
		 0.67846012 0.78259087 0.66987401 0.92932397 0.70313776 0.91423815 0.70004696 0.88078618
		 0.65637797 0.89154398 0.63226879 0.94575846 0.60469687 0.88846886 0.88650399 0.815292
		 0.898736 0.80770397 0.88869101 0.79335898 0.87779403 0.80127501 0.87323153 0.8782171
		 0.88617408 0.8822034 0.88890398 0.87342298 0.89737201 0.86062002 0.90470499 0.84960198
		 0.89202398 0.84541303 0.89519501 0.835567 0.90860498 0.83591801 0.90635598 0.820436
		 0.89359301 0.82472903 0.90425539 0.86636031 0.89127338 0.88446438 0.91388035 0.85180801
		 0.92554301 0.86632198 0.918576 0.85293698 0.90777802 0.86929798 0.91689497 0.87853003
		 0.89248598 0.89011502 0.90601999 0.89285499 0.90728474 0.84055036 0.89412153 0.83890015
		 0.88348699 0.89967799 0.88477701 0.88669699 0.129677 0.71219599 0.106095 0.71467602
		 0.074643001 0.71438199 0.13121501 0.71680099 0.107506 0.71896499 0.075365998 0.71848202
		 0.70779502 0.912126 0.70616102 0.87927997 0.69806302 0.76774102 0.73497498 0.734918
		 0.68678898 0.78675598 0.686203 0.81695002 0.68659061 0.7969774 0.70166802 0.84534699
		 0.70464003 0.86779284 0.70842475 0.84615022 0.69450915 0.81868196 0.6950233 0.79940331
		 0.69528639 0.78953707 0.70626062 0.77034897 0.74058956 0.73964328 0.71359241 0.90940726
		 0.71252745 0.87845564 0.71113861 0.8675195 0.82082498 0.80814999 0.82508093 0.80916011
		 0.83304602 0.7904017 0.82976401 0.78898197 0.81014401 0.890522 0.81434613 0.89084244
		 0.81650472 0.87733245 0.81245399 0.87694401 0.81298614 0.87182653 0.81707036 0.87223792
		 0.81817567 0.86228329 0.814026 0.86182702 0.81829047 0.84282243 0.813676 0.84219402
		 0.81999123 0.83134425 0.81547523 0.83059967 0.816396 0.82466602 0.82086158 0.82547003
		 0.33046401 0.50563598 0.32475099 0.49720401 0.36056 0.56032503 0.35373399 0.55269402
		 0.35025001 0.546588 0.34682199 0.54058897 0.34326801 0.52951699 0.33747801 0.51866001
		 0.33363801 0.51229399 0.33385906 0.52031481 0.32999903 0.5138365 0.33977407 0.53136754
		 0.34340379 0.54267651 0.3469041 0.54878521 0.35046542 0.55502343 0.3575789 0.56274259
		 0.32675859 0.50706577 0.32118616 0.49828136 0.20631 0.63382 0.20954391 0.6315403
		 0.19828913 0.60503489 0.194784 0.60683697 0.18230215 0.58019531 0.17845701 0.58155
		 0.17559639 0.56336939 0.171644 0.564363 0.16793802 0.54474759 0.163845 0.54531598
		 0.17083123 0.51752472 0.166998 0.51756102 0.24776299 0.67934501 0.25018302 0.67625099
		 0.22773945 0.6594851 0.22487301 0.662256 0.21819516 0.64524806 0.215129 0.64777303
		 0.7894038 0.55391181 0.79910529 0.51086622 0.79402286 0.4622685 0.80232775 0.405424
		 0.7708745 0.38903341 0.79583228 0.47956994 0.58616918 0.78947484 0.56483102 0.77700698
		 0.60002899 0.717884 0.65731299 0.64285702 0.60295802 0.95856798 0.591075 0.80358976;
	setAttr ".uvst[0].uvsp[1000:1249]" 0.71160835 0.13755375 0.010436714 -0.0011680722
		 0.76587462 0.38642797 0.75387728 0.38017604 0.74849397 0.37737074 1.12497592 0.2522662
		 0.10007843 0.57424664 0.068633743 0.59203076 0.053208955 0.60148036 0.30667999 0.60401899
		 0.29465899 0.594796 0.28977701 0.58630002 0.28504199 0.578318 0.280119 0.56296402
		 0.27206999 0.54856902 0.26786801 0.54017299 0.263493 0.53147799 0.26032099 0.51667601
		 0.57701182 0.37145895 0.57564479 0.3866148 0.51031148 0.4188168 0.52371639 0.40333664
		 0.52751422 0.4888204 0.57626748 0.43420649 0.60388541 0.46190709 0.58199418 0.49685249
		 0.46585023 0.46969819 0.49198067 0.43956444 0.58588767 0.33894664 0.52954352 0.35667568
		 0.52008551 0.31031296 0.55170745 0.29557571 0.62171853 0.32508785 0.64389271 0.27062413
		 0.67932576 0.27716127 0.65258861 0.3615672 0.63918114 0.46163815 0.62755793 0.50954676
		 0.149955 0.62991899 0.12572899 0.59983498 0.15074401 0.59123099 0.17072099 0.61922503
		 0.6687184 0.47102898 0.65803272 0.51788086 0.68209928 0.38190523 0.67988992 0.41323164
		 0.65284109 0.38473254 0.71229237 0.53271937 0.72130889 0.48774931 0.75365162 0.49735984
		 0.74435014 0.54152983 0.72989559 0.44290671 0.73464251 0.41811651 0.75932896 0.43647194
		 0.75730777 0.45814884 0.61860162 0.87673271 0.64577156 0.85380018 0.67258799 0.85109198
		 0.66186547 0.87785006 0.65025967 0.41495132 0.034809001 0.65206403 0.028875001 0.676606
		 0.00099199999 0.68113101 0.013908 0.637559 0.067797691 0.59094334 0.052542716 0.60052711
		 0.051624998 0.59921402 0.066707999 0.589526 0.52263999 0.89722103 0.52623898 0.84060699
		 0.57966399 0.81968403 0.56441498 0.88607198 0.44933 0.79903501 0.49880099 0.800502
		 0.46685401 0.90161502 0.44897699 0.89674699 0.042757999 0.69579297 0.025955999 0.71469301
		 0.045550998 0.63618797 0.074280001 0.65955001 0.12957001 0.70771003 0.107577 0.71056002
		 0.108167 0.68541998 0.12559199 0.67926502 0.084321998 0.69304502 0.171966 0.68597502
		 0.158177 0.66226399 0.112403 0.64628297 0.095987 0.65164298 0.067996003 0.62263799
		 0.085658997 0.61417502 0.19320799 0.68092501 0.180989 0.64907402 0.20526995 0.63444656
		 0.2142286 0.64913476 0.212262 0.68945003 0.22435501 0.66337299 0.097277001 0.57145202
		 0.098842911 0.57301414 0.117013 0.56554902 0.135015 0.54432499 0.16266081 0.54527527
		 0.16940004 0.56441176 0.19379561 0.60734582 0.17731869 0.58194762 0.032742001 0.61377299
		 0.21135688 0.53871804 0.21149415 0.51713908 0.24988994 0.51677489 0.25235498 0.53302473
		 0.21752334 0.55282927 0.25711271 0.54287684 0.25814676 0.63009125 0.25072098 0.61846292
		 0.28143334 0.59317112 0.28685874 0.60233629 0.24384919 0.60735679 0.27624181 0.58452165
		 0.23547149 0.58591849 0.2705808 0.56786788 0.22309141 0.56582475 0.26160651 0.55225539
		 0.27585447 0.64342976 0.3000946 0.61243844 0.27452484 0.53735125 0.27027139 0.52886248
		 0.29522204 0.51923478 0.29902804 0.52696466 0.3006382 0.59053469 0.29589772 0.58228064
		 0.31842744 0.56748557 0.32264709 0.57484925 0.29129499 0.57449931 0.31431168 0.56044304
		 0.28651056 0.55957872 0.31003729 0.54711771 0.27869019 0.54554182 0.30305851 0.53439891
		 0.31213337 0.59959656 0.33220688 0.583318 0.26684219 0.51470518 0.29084617 0.5074507
		 0.37620601 0.55977303 0.365771 0.55010003 0.37465701 0.544393 0.38390201 0.55202901
		 0.359245 0.54102802 0.35590899 0.53298002 0.36887801 0.53105599 0.36982301 0.53691101
		 0.35774401 0.51907498 0.36035699 0.50746202 0.37162399 0.50638902 0.36925501 0.51863003
		 0.35969201 0.493541 0.34736699 0.48732099 0.352126 0.47820699 0.36678001 0.48875201
		 0.38032001 0.52199697 0.37527299 0.53628403 0.34732479 0.54016799 0.34406894 0.52893925
		 0.3614257 0.56029451 0.35439998 0.55255049 0.35074767 0.54628038 0.386127 0.50187302
		 0.39533699 0.51382101 0.39180401 0.52560198 0.38571 0.53653502 0.33139923 0.50462264
		 0.32531881 0.49655926 0.33501399 0.485551 0.33507955 0.5112564 0.33946601 0.474206
		 0.33874387 0.51804042 0.077520996 0.70989501 0.57407135 0.40726241 0.50218147 0.42801863
		 0.52200967 0.2351602 0.56645024 0.2018632 0.56318617 0.25629851 0.53538632 0.24847612
		 0.139681 0.51993102 0.16587596 0.51765835 0.61267698 0.3093197 0.6084621 0.28967997
		 0.236233 0.70561099 0.24728939 0.68042386 0.6085031 0.24285683 0.5851047 0.27118585
		 0.63993502 0.81057066 0.65542197 0.80637997 0.58488047 0.87586176 0.59598082 0.81770468
		 0.627864 0.81383699 0.62487 0.85591102 0.60594237 0.78136748 0.63131118 0.77096593
		 0.58854598 0.76642215 0.62278342 0.72964448 0.651977 0.74473298 0.618972 0.75284201
		 0.6751405 0.66774589 0.69801301 0.699678 0.73550087 0.86649466 0.73375493 0.84916133
		 0.75668401 0.85188699 0.75755382 0.86556697 0.68242264 0.81565189 0.69809663 0.84605259
		 0.54132342 0.78537154 0.73043555 0.73059005 0.69240302 0.76491535 0.78826964 0.81755972
		 0.79474884 0.79922396 0.8156296 0.80637157 0.81079209 0.82325017 0.73699236 0.78012586
		 0.76163793 0.75735772 0.78069103 0.77339298 0.76481098 0.78897601 0.72714204 0.79996318
		 0.75597799 0.80940098 0.72564793 0.82517469 0.75383502 0.83105201 0.84619755 0.81417227
		 0.84933043 0.79744613 0.86514902 0.80428898 0.86671001 0.81904101 0.78733164 0.85719967
		 0.78581834 0.83700711 0.80812562 0.8411606 0.80870742 0.86090505 0.78718084 0.86891258
		 0.80784476 0.87124598 0.8069191 0.78172481 0.82521236 0.78753603 0.85544902 0.89397699
		 0.85612702 0.88113201 0.871499 0.88373202 0.87048799 0.89836299 0.84301823 0.82945907
		 0.86454099 0.83333403 0.83876491 0.86454701 0.84118629 0.84594035 0.86342698 0.84896898
		 0.85876501 0.86674601 0.83733511 0.8742792 0.85702002 0.87626207 0.83519578 0.89243245;
	setAttr ".uvst[0].uvsp[1250:1499]" 0.8366034 0.87925982 0.84239805 0.83503836
		 0.86416388 0.83862686 0.88419801 0.85358399 0.87661701 0.867441 0.78447288 0.89027387
		 0.78710365 0.8749069 0.80740321 0.87653816 0.80502933 0.89047259 0.72663623 0.80849791
		 0.7552526 0.81673038 0.78743982 0.82414317 0.80988944 0.82931328 0.67980152 0.79378283
		 0.73532629 0.8992151 0.73639441 0.87536538 0.757999 0.87256801 0.755 0.88998902 0.69938672
		 0.86902803 0.67846012 0.78259087 0.66987401 0.92932397 0.65637797 0.89154398 0.70004696
		 0.88078618 0.70313776 0.91423815 0.63226879 0.94575846 0.60469687 0.88846886 0.88650399
		 0.815292 0.87779403 0.80127501 0.88869101 0.79335898 0.898736 0.80770397 0.87323153
		 0.8782171 0.88890398 0.87342298 0.88617408 0.8822034 0.89202398 0.84541303 0.90470499
		 0.84960198 0.89737201 0.86062002 0.89519501 0.835567 0.89359301 0.82472903 0.90635598
		 0.820436 0.90860498 0.83591801 0.90425539 0.86636031 0.89127338 0.88446438 0.91388035
		 0.85180801 0.92554301 0.86632198 0.91689497 0.87853003 0.90777802 0.86929798 0.918576
		 0.85293698 0.90601999 0.89285499 0.89248598 0.89011502 0.89412153 0.83890015 0.90728474
		 0.84055036 0.88477701 0.88669699 0.88348699 0.89967799 0.129677 0.71219599 0.106095
		 0.71467602 0.074643001 0.71438199 0.13121501 0.71680099 0.107506 0.71896499 0.075365998
		 0.71848202 0.70616102 0.87927997 0.70779502 0.912126 0.73497498 0.734918 0.69806302
		 0.76774102 0.68678898 0.78675598 0.68659061 0.7969774 0.686203 0.81695002 0.70166802
		 0.84534699 0.70464003 0.86779284 0.69450915 0.81868196 0.70842475 0.84615022 0.6950233
		 0.79940331 0.70626062 0.77034897 0.69528639 0.78953707 0.74058956 0.73964328 0.71252745
		 0.87845564 0.71359241 0.90940726 0.71113861 0.8675195 0.82082498 0.80814999 0.82976401
		 0.78898197 0.83304602 0.7904017 0.82508093 0.80916011 0.81014401 0.890522 0.81245399
		 0.87694401 0.81650472 0.87733245 0.81434613 0.89084244 0.81298614 0.87182653 0.814026
		 0.86182702 0.81817567 0.86228329 0.81707036 0.87223792 0.813676 0.84219402 0.81829047
		 0.84282243 0.81547523 0.83059967 0.81999123 0.83134425 0.816396 0.82466602 0.82086158
		 0.82547003 0.33046401 0.50563598 0.32475099 0.49720401 0.36056 0.56032503 0.35373399
		 0.55269402 0.35025001 0.546588 0.34682199 0.54058897 0.34326801 0.52951699 0.33747801
		 0.51866001 0.33363801 0.51229399 0.33385906 0.52031481 0.32999903 0.5138365 0.33977407
		 0.53136754 0.34340379 0.54267651 0.3469041 0.54878521 0.35046542 0.55502343 0.3575789
		 0.56274259 0.32675859 0.50706577 0.32118616 0.49828136 0.20631 0.63382 0.194784 0.60683697
		 0.19828913 0.60503489 0.20954391 0.6315403 0.17845701 0.58155 0.18230215 0.58019531
		 0.171644 0.564363 0.17559639 0.56336939 0.163845 0.54531598 0.16793802 0.54474759
		 0.166998 0.51756102 0.17083123 0.51752472 0.24776299 0.67934501 0.22487301 0.662256
		 0.22773945 0.6594851 0.25018302 0.67625099 0.215129 0.64777303 0.21819516 0.64524806
		 0.79910529 0.51086622 0.7894038 0.55391181 0.7708745 0.38903341 0.80232775 0.405424
		 0.79402286 0.4622685 0.79583228 0.47956994 0.58616918 0.78947484 0.56483102 0.77700698
		 0.60002899 0.717884 0.65731299 0.64285702 0.60295802 0.95856798 0.591075 0.80358976
		 0.71160835 0.13755375 0.75387728 0.38017604 0.76587462 0.38642797 0.010436714 -0.0011680722
		 1.12497592 0.2522662 0.74849397 0.37737074 0.10007843 0.57424664 0.068633743 0.59203076
		 0.053208955 0.60148036 0.30667999 0.60401899 0.29465899 0.594796 0.28977701 0.58630002
		 0.28504199 0.578318 0.280119 0.56296402 0.27206999 0.54856902 0.26786801 0.54017299
		 0.263493 0.53147799 0.26032099 0.51667601 0.4426603 0.53536415 0.47878945 0.53536415
		 0.4695628 0.54739177 0.44183648 0.54936886 0.49554023 0.54915887 0.48647833 0.55657315
		 0.47747561 0.56393898 0.51426166 0.58331734 0.46039641 0.55934072 0.44101804 0.56328213
		 0.4426603 0.53536415 0.44183648 0.54936886 0.4695628 0.54739177 0.47878945 0.53536415
		 0.48647833 0.55657315 0.49554023 0.54915887 0.47747561 0.56393898 0.51426166 0.58331734
		 0.46039641 0.55934072 0.44101804 0.56328213 0.4426603 0.53536415 0.47878945 0.53536415
		 0.4695628 0.54739177 0.44183648 0.54936886 0.49554023 0.54915887 0.48647833 0.55657315
		 0.47747561 0.56393898 0.51426166 0.58331734 0.46039641 0.55934072 0.44101804 0.56328213
		 0.4426603 0.53536415 0.44183648 0.54936886 0.4695628 0.54739177 0.47878945 0.53536415
		 0.48647833 0.55657315 0.49554023 0.54915887 0.47747561 0.56393898 0.51426166 0.58331734
		 0.46039641 0.55934072 0.44101804 0.56328213 0.4426603 0.53536415 0.47878945 0.53536415
		 0.4695628 0.54739177 0.44183648 0.54936886 0.49554023 0.54915887 0.48647833 0.55657315
		 0.47747561 0.56393898 0.51426166 0.58331734 0.46039641 0.55934072 0.44101804 0.56328213
		 0.4426603 0.53536415 0.44183648 0.54936886 0.4695628 0.54739177 0.47878945 0.53536415
		 0.48647833 0.55657315 0.49554023 0.54915887 0.47747561 0.56393898 0.51426166 0.58331734
		 0.46039641 0.55934072 0.44101804 0.56328213 0.10303557 0.39742967 0.14063939 0.39742967
		 0.13103613 0.40994823 0.10217813 0.41200605 0.15807387 0.41178751 0.14864209 0.4195044
		 0.13927194 0.42717087 0.17755947 0.44734022 0.12149563 0.42238495 0.10132629 0.42648718
		 0.10303557 0.39742967 0.10217813 0.41200605 0.13103613 0.40994823 0.14063939 0.39742967
		 0.14864209 0.4195044 0.15807387 0.41178751 0.13927194 0.42717087 0.17755947 0.44734022
		 0.12149563 0.42238495 0.10132629 0.42648718 0.10303557 0.39742967 0.14063939 0.39742967
		 0.13103613 0.40994823 0.10217813 0.41200605 0.15807387 0.41178751 0.14864209 0.4195044
		 0.13927194 0.42717087 0.17755947 0.44734022 0.12149563 0.42238495;
	setAttr ".uvst[0].uvsp[1500:1749]" 0.10132629 0.42648718 0.10303557 0.39742967
		 0.10217813 0.41200605 0.13103613 0.40994823 0.14063939 0.39742967 0.14864209 0.4195044
		 0.15807387 0.41178751 0.13927194 0.42717087 0.17755947 0.44734022 0.12149563 0.42238495
		 0.10132629 0.42648718 0.10303557 0.39742967 0.14063939 0.39742967 0.13103613 0.40994823
		 0.10217813 0.41200605 0.15807387 0.41178751 0.14864209 0.4195044 0.13927194 0.42717087
		 0.17755947 0.44734022 0.12149563 0.42238495 0.10132629 0.42648718 0.10303557 0.39742967
		 0.10217813 0.41200605 0.13103613 0.40994823 0.14063939 0.39742967 0.14864209 0.4195044
		 0.15807387 0.41178751 0.13927194 0.42717087 0.17755947 0.44734022 0.12149563 0.42238495
		 0.10132629 0.42648718 0.83858258 0.089528918 0.88631546 0.089528918 0.93246365 0.25471348
		 0.76030254 0.25844961 0.76030254 0.089528918 0.82275897 0.089528918 0.93246365 0.23655015
		 0.77376068 0.24070454 0.80052584 0.089528918 0.87237501 0.089528918 0.91958046 0.21802986
		 0.76030254 0.26169008 0.8268373 0.089528918 0.88748515 0.089528918 0.82463264 0.26169002
		 0.76030254 0.25418055 0.76030254 0.089528918 0.93246365 0.089528918 0.93246365 0.26169002
		 0.76030254 0.26169002 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0.76030254 0.089528918 0.93246365
		 0.089528918 0.93246365 0.26169002 0.76030254 0.26169002 0.22441556 0.24444209 0.24571848
		 0.23855647 0.253968 0.264258 0.232778 0.269371 0.19456249 0.24615553 0.19867299 0.27222601
		 0.14145672 0.24575827 0.16453913 0.24685141 0.165143 0.27259099 0.141544 0.270518
		 0.13788953 0.3040728 0.16311714 0.3076227 0.16171101 0.331938 0.135353 0.32736301
		 0.24164645 0.30806425 0.26404241 0.30441928 0.27103499 0.332295 0.247802 0.334921
		 0.20056722 0.30806226 0.201882 0.33293599 0.134957 0.3647624 0.16219573 0.36998522
		 0.16245399 0.390257 0.134746 0.384689 0.20746784 0.37339839 0.25318235 0.37789252
		 0.25604901 0.40078801 0.210444 0.39495701 0.27612761 0.37786111 0.27884099 0.40213901
		 0.135355 0.40437388 0.16487369 0.41060162 0.167651 0.43395299 0.13605399 0.42696801
		 0.20700651 0.41431737 0.24812737 0.42070752 0.239035 0.443571 0.203061 0.43653899
		 0.27054921 0.42548579 0.26103199 0.45228299 0.14047661 0.44461 0.16283393 0.44964263
		 0.15750299 0.467006 0.145371 0.46413401 0.19182482 0.45166615 0.21696043 0.46058786
		 0.192531 0.47942001 0.17939 0.46840701 0.23540157 0.4717378 0.207037 0.49326801 0.15216
		 0.51647103 0.163683 0.21036001 0.141333 0.210656 0.14213599 0.140343 0.163359 0.138547
		 0.21256 0.20909999 0.18873499 0.209195 0.181483 0.137228 0.195989 0.136668 0.234023
		 0.20211899 0.21539301 0.133341 0.054351799 0.2369208 0.044197999 0.259799 0.022537
		 0.25437099 0.032989014 0.23008072 0.085811704 0.2398234 0.080758996 0.26337001 0.116949
		 0.26737499 0.11765131 0.24324106 0.109691 0.32879701 0.1126647 0.30363154 0.034863215
		 0.30066332 0.028384 0.329027 0.0064909998 0.325789 0.013065271 0.29652804 0.075506635
		 0.30120909 0.071860999 0.32747301 0.107746 0.38799 0.10842209 0.36741441 0.065704972
		 0.36931327 0.062424999 0.391606 0.021049 0.40054801 0.02359866 0.37568718 0.00099199999
		 0.404338 0.0029034622 0.37703422 0.105298 0.43305999 0.10660622 0.40897435 0.067324921
		 0.41224813 0.072949 0.43594101 0.043315999 0.44898701 0.031416401 0.42310095 0.026759
		 0.461528 0.012988983 0.43096536 0.132566 0.46877801 0.11824161 0.45001465 0.089855254
		 0.45287478 0.108565 0.47161499 0.098543003 0.485223 0.069531232 0.46618757 0.089933001
		 0.50214398 0.05674652 0.48080766 0.118647 0.20902599 0.120783 0.14022601 0.068746999
		 0.204486 0.088995002 0.136961 0.102809 0.139484 0.092974998 0.206441 0.047807001
		 0.19564401 0.22441556 0.24444209 0.24571848 0.23855647 0.253968 0.264258 0.232778
		 0.269371 0.19456249 0.24615553 0.19867299 0.27222601 0.14145672 0.24575827 0.16453913
		 0.24685141 0.165143 0.27259099 0.141544 0.270518 0.13788953 0.3040728 0.16311714
		 0.3076227 0.16171101 0.331938 0.135353 0.32736301 0.24164645 0.30806425 0.26404241
		 0.30441928 0.27103499 0.332295 0.247802 0.334921 0.20056722 0.30806226 0.201882 0.33293599
		 0.134957 0.3647624 0.16219573 0.36998522 0.16245399 0.390257 0.134746 0.384689 0.20746784
		 0.37339839 0.25318235 0.37789252 0.25604901 0.40078801 0.210444 0.39495701 0.27612761
		 0.37786111 0.27884099 0.40213901 0.135355 0.40437388 0.16487369 0.41060162 0.167651
		 0.43395299 0.13605399 0.42696801 0.20700651 0.41431737 0.24812737 0.42070752 0.239035
		 0.443571 0.203061 0.43653899 0.27054921 0.42548579 0.26103199 0.45228299 0.14047661
		 0.44461 0.16283393 0.44964263 0.15750299 0.467006 0.145371 0.46413401 0.19182482
		 0.45166615 0.21696043 0.46058786 0.192531 0.47942001 0.17939 0.46840701 0.23540157
		 0.4717378 0.207037 0.49326801 0.15216 0.51647103 0.163683 0.21036001 0.141333 0.210656
		 0.14213599 0.140343 0.163359 0.138547 0.21256 0.20909999 0.18873499 0.209195 0.181483
		 0.137228 0.195989 0.136668 0.234023 0.20211899 0.21539301 0.133341 0.054351799 0.2369208
		 0.044197999 0.259799 0.022537 0.25437099 0.032989014 0.23008072 0.085811704 0.2398234
		 0.080758996 0.26337001 0.116949 0.26737499 0.11765131 0.24324106 0.109691 0.32879701
		 0.1126647 0.30363154 0.034863215 0.30066332 0.028384 0.329027 0.0064909998 0.325789
		 0.013065271 0.29652804 0.075506635 0.30120909 0.071860999 0.32747301 0.107746 0.38799
		 0.10842209 0.36741441;
	setAttr ".uvst[0].uvsp[1750:1999]" 0.065704972 0.36931327 0.062424999 0.391606
		 0.021049 0.40054801 0.02359866 0.37568718 0.00099199999 0.404338 0.0029034622 0.37703422
		 0.105298 0.43305999 0.10660622 0.40897435 0.067324921 0.41224813 0.072949 0.43594101
		 0.043315999 0.44898701 0.031416401 0.42310095 0.026759 0.461528 0.012988983 0.43096536
		 0.132566 0.46877801 0.11824161 0.45001465 0.089855254 0.45287478 0.108565 0.47161499
		 0.098543003 0.485223 0.069531232 0.46618757 0.089933001 0.50214398 0.05674652 0.48080766
		 0.118647 0.20902599 0.120783 0.14022601 0.068746999 0.204486 0.088995002 0.136961
		 0.102809 0.139484 0.092974998 0.206441 0.047807001 0.19564401 0.79993474 0.65857923
		 0.79691499 0.64411801 0.75499701 0.63929898 0.75738329 0.65816933 0.90647304 0.70187044
		 0.91800702 0.708143 0.91013098 0.662965 0.8950699 0.66582692 0.85215247 0.60410607
		 0.84487748 0.58292282 0.83951497 0.58466899 0.84371501 0.60685301 0.86602879 0.64985096
		 0.86506152 0.63118112 0.85582298 0.63114703 0.85364819 0.65048802 0.89103502 0.61964202
		 0.90042663 0.64094877 0.932706 0.62158698 0.85912198 0.61872369 0.85025203 0.61996913
		 0.80533111 0.63035208 0.81273001 0.61825001 0.781322 0.60572302 0.76900607 0.62143123
		 0.9145382 0.60250217 0.88400507 0.60836387 0.823838 0.589122 0.82719439 0.5747996
		 0.81046057 0.56867492 0.80106902 0.580347 0.89322001 0.58010799 0.870749 0.55891299
		 0.85978103 0.56966698 0.87575603 0.59513003 0.81797951 0.6044845 0.79065418 0.59373069
		 0.83792806 0.5509361 0.84054899 0.54988402 0.846775 0.543486 0.83358282 0.54079491
		 0.83952886 0.57085752 0.86099792 0.55263829 0.85195869 0.56162053 0.84687138 0.5674206
		 0.8545416 0.57666647 0.87519288 0.61392641 0.88182122 0.62693763 0.88833708 0.64606386
		 0.86741531 0.59865904 0.971156 0.64504099 0.94063401 0.66773099 0.8670283 0.66914237
		 0.85140097 0.67047298 0.88357103 0.697357 0.89080846 0.69772899 0.90541708 0.72314346
		 0.89621425 0.70713329 0.88786197 0.71141809 0.89516699 0.73535597 0.821136 0.69564497
		 0.815332 0.72519898 0.857216 0.70446301 0.82179397 0.78294498 0.81916177 0.7594229
		 0.79015505 0.74212533 0.86188501 0.75594503 0.8589437 0.72351336 0.83985615 0.74139607
		 0.76898402 0.71481103 0.87278628 0.71772361 0.87781644 0.74608946 0.83562326 0.68359566
		 0.86983162 0.70106149 0.80367303 0.64194399 0.80014992 0.64307737 0.80487931 0.65677059
		 0.81026429 0.65480095 0.82765597 0.612499 0.81987476 0.61549711 0.81064665 0.62840021
		 0.81643575 0.62627453 0.83134222 0.58699048 0.82529414 0.60202521 0.83326036 0.59934688
		 0.83224177 0.57320619 0.83355379 0.55310047 0.83563828 0.5519855 0.829669 0.54524678
		 0.82640642 0.54901487 0.83681256 0.62293947 0.844616 0.63183701 0.84674799 0.64279997
		 0.81707501 0.66808599 0.80976611 0.6709199 0.80305499 0.673522 0.75984901 0.67766798
		 0.82546997 0.64393699 0.8282876 0.65168011 0.83119899 0.65968102 0.84895098 0.65412802
		 0.99749899 0.65048498 0.96314001 0.681683 0.88893503 0.759812 0.90468073 0.74654597
		 0.83209002 0.553909 0.82415903 0.55164999 0.85146397 0.580778 0.86251599 0.60073203
		 0.87001669 0.61719388 0.87640899 0.63122302 0.88123566 0.64906847 0.88622302 0.66750801
		 0.89969802 0.69818598 0.93452901 0.71757799 0.85465801 0.79095501 0 0 0.79208732
		 0.42422679 1 0 0 0.21447456 0 0.32303911 0.45934531 0.17465261 0.99999994 0 0.79993474
		 0.65857923 0.75738329 0.65816933 0.75499701 0.63929898 0.79691499 0.64411801 0.90647304
		 0.70187044 0.8950699 0.66582692 0.91013098 0.662965 0.91800702 0.708143 0.85215247
		 0.60410607 0.84371501 0.60685301 0.83951497 0.58466899 0.84487748 0.58292282 0.86602879
		 0.64985096 0.85364819 0.65048802 0.85582298 0.63114703 0.86506152 0.63118112 0.89103502
		 0.61964202 0.932706 0.62158698 0.90042663 0.64094877 0.85025203 0.61996913 0.85912198
		 0.61872369 0.80533111 0.63035208 0.76900607 0.62143123 0.781322 0.60572302 0.81273001
		 0.61825001 0.88400507 0.60836387 0.9145382 0.60250217 0.823838 0.589122 0.80106902
		 0.580347 0.81046057 0.56867492 0.82719439 0.5747996 0.89322001 0.58010799 0.87575603
		 0.59513003 0.85978103 0.56966698 0.870749 0.55891299 0.81797951 0.6044845 0.79065418
		 0.59373069 0.83792806 0.5509361 0.83358282 0.54079491 0.846775 0.543486 0.84054899
		 0.54988402 0.83952886 0.57085752 0.85195869 0.56162053 0.86099792 0.55263829 0.8545416
		 0.57666647 0.84687138 0.5674206 0.88182122 0.62693763 0.87519288 0.61392641 0.88833708
		 0.64606386 0.86741531 0.59865904 0.971156 0.64504099 0.94063401 0.66773099 0.8670283
		 0.66914237 0.89080846 0.69772899 0.88357103 0.697357 0.85140097 0.67047298 0.90541708
		 0.72314346 0.89516699 0.73535597 0.88786197 0.71141809 0.89621425 0.70713329 0.821136
		 0.69564497 0.857216 0.70446301 0.815332 0.72519898 0.82179397 0.78294498 0.79015505
		 0.74212533 0.81916177 0.7594229 0.86188501 0.75594503 0.83985615 0.74139607 0.8589437
		 0.72351336 0.76898402 0.71481103 0.87781644 0.74608946 0.87278628 0.71772361 0.86983162
		 0.70106149 0.83562326 0.68359566 0.80367303 0.64194399 0.81026429 0.65480095 0.80487931
		 0.65677059 0.80014992 0.64307737 0.82765597 0.612499 0.81643575 0.62627453 0.81064665
		 0.62840021 0.81987476 0.61549711 0.83326036 0.59934688 0.82529414 0.60202521 0.83134222
		 0.58699048 0.83224177 0.57320619 0.83355379 0.55310047 0.82640642 0.54901487 0.829669
		 0.54524678 0.83563828 0.5519855 0.844616 0.63183701 0.83681256 0.62293947 0.84674799
		 0.64279997 0.81707501 0.66808599 0.80976611 0.6709199 0.75984901 0.67766798 0.80305499
		 0.673522 0.82546997 0.64393699;
	setAttr ".uvst[0].uvsp[2000:2104]" 0.8282876 0.65168011 0.83119899 0.65968102
		 0.84895098 0.65412802 0.99749899 0.65048498 0.96314001 0.681683 0.90468073 0.74654597
		 0.88893503 0.759812 0.82415903 0.55164999 0.83209002 0.553909 0.85146397 0.580778
		 0.86251599 0.60073203 0.87001669 0.61719388 0.87640899 0.63122302 0.88123566 0.64906847
		 0.88622302 0.66750801 0.89969802 0.69818598 0.93452901 0.71757799 0.85465801 0.79095501
		 0 0 1 0 0.79208732 0.42422679 0 0.21447456 0.45934531 0.17465261 0 0.32303911 0.99999994
		 0 0.44266027 0.53536415 0.44183648 0.54936886 0.46956277 0.54739177 0.47878945 0.53536415
		 0.48647833 0.55657315 0.4955402 0.54915887 0.47747564 0.56393903 0.51426166 0.5833174
		 0.46039641 0.55934078 0.44101804 0.56328213 0.44266027 0.53536415 0.47878945 0.53536415
		 0.46956277 0.54739177 0.44183648 0.54936886 0.4955402 0.54915887 0.48647833 0.55657315
		 0.47747564 0.56393903 0.51426166 0.5833174 0.46039641 0.55934078 0.44101804 0.56328213
		 0.44266027 0.53536415 0.44183648 0.54936886 0.46956277 0.54739177 0.47878945 0.53536415
		 0.48647833 0.55657315 0.4955402 0.54915887 0.47747564 0.56393903 0.51426166 0.5833174
		 0.46039641 0.55934078 0.44101804 0.56328213 0.44266027 0.53536415 0.47878945 0.53536415
		 0.46956277 0.54739177 0.44183648 0.54936886 0.4955402 0.54915887 0.48647833 0.55657315
		 0.47747564 0.56393903 0.51426166 0.5833174 0.46039641 0.55934078 0.44101804 0.56328213
		 0.44266027 0.53536415 0.47878945 0.53536415 0.46956277 0.54739177 0.44183648 0.54936886
		 0.4955402 0.54915887 0.48647833 0.55657315 0.47747564 0.56393903 0.51426166 0.5833174
		 0.46039641 0.55934078 0.44101804 0.56328213 0.44266027 0.53536415 0.44183648 0.54936886
		 0.46956277 0.54739177 0.47878945 0.53536415 0.48647833 0.55657315 0.4955402 0.54915887
		 0.47747564 0.56393903 0.51426166 0.5833174 0.46039641 0.55934078 0.44101804 0.56328213
		 0.44266027 0.53536415 0.47878945 0.53536415 0.46956277 0.54739177 0.44183648 0.54936886
		 0.4955402 0.54915887 0.48647833 0.55657315 0.47747564 0.56393903 0.51426166 0.5833174
		 0.46039641 0.55934078 0.44101804 0.56328213 0.44266027 0.53536415 0.44183648 0.54936886
		 0.46956277 0.54739177 0.47878945 0.53536415 0.48647833 0.55657315 0.4955402 0.54915887
		 0.47747564 0.56393903 0.51426166 0.5833174 0.46039641 0.55934078 0.44101804 0.56328213;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 1550 ".vt";
	setAttr ".vt[0:165]"  -8.14917946 127.087219238 -96.56799316 -6.99257755 132.97003174 -96.71348572
		 6.5010047 126.10194397 -131.21296692 5.87199879 109.7062149 -119.54178619 8.15530968 119.08441925 -104.75907898
		 9.84110546 127.63652802 -109.010627747 7.22823811 118.32639313 -142.80641174 6.13654327 97.18300629 -126.35041809
		 10.88514328 104.88307953 -150.42695618 9.30319595 81.8467865 -133.49836731 14.66020107 93.34259796 -159.64877319
		 12.65884113 75.66960907 -146.99279785 14.83849335 86.13477325 -172.18730164 15.9065237 78.76329041 -166.094024658
		 11.76674175 116.51744843 -126.061668396 12.60044384 121.85726166 -106.58395386 11.55337811 107.52389526 -135.46681213
		 15.50730038 93.086830139 -141.2286377 19.093463898 85.069358826 -152.15794373 20.069829941 83.075881958 -167.36784363
		 -8.37793636 128.12037659 -128.54920959 -8.74926949 111.21998596 -117.41088867 -2.43018985 130.44996643 -111.39161682
		 -11.24145699 119.13621521 -141.64419556 -8.68940735 98.049766541 -124.63053894 -8.25263405 104.49372864 -151.1481781
		 -6.3625989 81.52459717 -134.030105591 -5.31713104 91.7565918 -162.17799377 -3.68671632 74.32710266 -149.14190674
		 5.45970583 84.75339508 -174.24505615 4.20960331 76.97988129 -168.82159424 -14.22864914 119.79868317 -122.6982193
		 -4.89669132 124.18648529 -108.45359039 -15.45570183 108.93264008 -133.040893555 -12.80560112 92.52455902 -142.18933105
		 -10.071486473 82.71250916 -155.88494873 -0.027500389 79.94941711 -172.31066895 3.34920716 132.3742981 -111.66757202
		 -1.25503433 130.38311768 -132.35131836 -1.21049023 109.11513519 -116.7336731 -2.49476933 123.15080261 -145.66574097
		 -0.97557247 95.63606262 -123.24221802 0.97113258 108.074790955 -152.78598022 1.50491714 79.43730164 -131.68513489
		 4.52425289 96.32450104 -161.98651123 4.42985153 72.92652893 -146.19473267 9.93370914 86.85680389 -172.95025635
		 9.85500431 76.81453705 -166.33511353 15.29128933 73.37670898 -178.59341431 -6.0089745522 129.8939209 -121.84784698
		 0.48826471 132.11430359 -124.079177856 8.49759007 127.44683838 -121.98155975 13.17419243 119.00080871582 -117.15156555
		 6.92478085 114.51511383 -113.38594818 -0.40899086 114.42769623 -112.19123077 -7.54687405 115.68711853 -112.84427643
		 -10.76184845 122.16737366 -117.52044678 -10.89679813 123.80329895 -136.9168396 -2.56254268 127.22219086 -140.86372375
		 5.95339251 122.36815643 -139.33157349 10.12459087 111.76833344 -133.79893494 4.924088 102.69792175 -124.78017426
		 -2.25344706 101.41976929 -121.85795593 -9.51847458 103.93112183 -122.39276886 -16.072483063 114.16255951 -129.57615662
		 -10.0091180801 110.51222992 -147.78701782 -1.20752454 114.14354706 -150.71803284
		 9.0015115738 110.46139526 -147.74809265 13.62569237 98.7212677 -138.37689209 7.66539621 87.40435791 -129.94288635
		 0.46465501 85.35761261 -127.19096375 -7.85781813 87.44561005 -129.96412659 -14.256217 98.79931641 -138.35102844
		 -7.51453066 97.89948273 -155.97395325 2.45466375 102.2146225 -156.49856567 12.80182934 99.026878357 -154.16958618
		 17.26295471 88.38435364 -145.71450806 10.78478432 77.62075043 -139.33093262 2.56283164 74.95550537 -138.05140686
		 -5.44845343 76.77199554 -140.62113953 -12.068956375 86.89447021 -148.080764771 -0.64931923 88.32788086 -168.59214783
		 7.18000412 91.88040924 -167.68214417 15.17461681 89.98290253 -165.9906311 20.4246769 84.20632172 -159.62409973
		 14.8627491 77.28923035 -156.20265198 6.96426105 74.69737244 -155.96305847 -0.63115692 75.43955231 -159.057189941
		 -6.099718571 81.11478424 -164.58546448 -2.78187203 135.74971008 -96.43145752 1.55897164 133.92889404 -94.73235321
		 4.72484207 128.34233093 -94.71604919 3.30728173 124.64117432 -95.78466034 -3.22708821 121.71720123 -96.47718048
		 1.40508091 118.60552216 -104.73695374 -4.64271069 119.47039032 -105.43469238 -7.063755989 122.71955872 -96.2157135
		 -18.073139191 37.35818481 -89.85180664 -20.14568901 39.88594437 -91.17378235 -22.27503395 41.89078522 -94.59803009
		 -23.30997276 41.93379211 -99.34706879 -21.44188499 40.31074142 -95.90969849 -19.31782532 37.96891785 -93.68986511
		 -17.62648201 35.82597351 -92.80756378 -21.39478111 41.41900635 -95.35605621 -18.92125511 39.48545074 -92.61553192
		 -17.045032501 37.15905762 -91.51190186 -22.31936836 40.77339935 -95.15768433 -20.53968811 38.35734558 -92.26805878
		 -18.65343094 36.041095734 -91.16049957 -17.96100807 38.16356659 -91.40628052 -20.55756378 38.56839371 -93.81523132
		 -23.50587463 36.87401199 -96.78488922 -25.35324097 32.93635178 -98.95847321 -22.70831299 34.86145401 -96.25018311
		 -19.93142319 35.31762695 -93.57704163 -17.84261703 34.76134491 -91.66409302 -22.71481705 35.90967178 -96.93043518
		 -19.55922699 37.016914368 -94.42019653 -17.22171974 36.53507996 -92.25564575 -23.49668694 35.8196106 -96.10284424
		 -20.92779732 36.85927963 -92.9715271 -18.58179665 36.37850571 -90.81599426 -18.10905075 37.92171478 -90.45394897
		 -20.45138741 39.49765396 -92.62184906 -22.89144516 39.61528778 -96.41757202 -24.12701988 37.43370056 -100.58114624
		 -21.9793663 37.65023422 -96.92232513 -19.56497002 36.65723801 -94.049034119 -17.65713692 35.20784378 -92.44132233
		 -22.0055732727 38.89679337 -96.93864441 -19.25708389 38.54014587 -93.80794525 -17.13738441 37.026580811 -91.91777039
		 -22.86220932 38.36249924 -96.40470123 -20.75655746 37.6056366 -92.87254333 -18.62754822 36.09979248 -90.98635101
		 -22.0042057037 64.90402222 40.38879776 -24.72564125 66.12493134 38.43194199 -27.56784248 65.73506165 34.94624329
		 -28.90252113 62.26983643 30.14815903 -26.51338196 63.78210068 34.43683243 -23.70517921 63.20246124 37.055084229
		 -21.48990059 62.051689148 38.51141739 -26.67372513 65.050674438 34.36336136 -23.57466888 65.18501282 37.16768265
		 -21.11112976 63.98257065 38.87461472 -27.40402794 64.46395874 35.015033722 -24.85301018 64.15215302 38.30796814
		 -22.38152122 62.95729828 40.012001038 -22.20867729 64.87928009 39.62305832 -25.049564362 64.73466492 37.48468018
		 -27.80468369 62.38851166 34.69274902 -28.9028244 58.12039185 32.50382614 -26.51961899 60.59375381 35.036365509
		 -23.67562675 61.72621536 37.45027161 -21.33987045 61.64422607 39.12078094 -26.83173561 61.59498215 34.42930603
		 -23.78579712 63.46141052 36.70082855 -21.20183754 63.52519989 38.61115265 -27.48835754 61.28474808 35.30790329
		 -24.93517685 62.91331863 38.2325325 -22.34406853 62.97673798 40.13090134 -22.2070179 64.44646454 38.66158676
		 -25.048772812 63.095359802 36.94000626 -27.80698586 59.58527374 35.85787964 -28.90987396 54.82810211 36.35877609;
	setAttr ".vt[166:331]" -26.52349854 58.30078506 37.12902451 -23.67770576 60.62690735 38.57483292
		 -21.34147644 61.52444077 40.037132263 -26.83483887 58.7722702 36.059059143 -23.78647041 61.60378265 36.98059845
		 -21.20183945 62.77178955 38.57316971 -27.49144173 59.025310516 36.95018768 -24.93580437 62.029052734 38.54765701
		 -22.34402466 63.18312836 40.1350708 0.99512982 138.93258667 34.68584061 0.99843711 85.54942322 46.014808655
		 0.98964673 93.8794632 60.21839142 0.97873157 100.081863403 65.99799347 0.99426985 142.17190552 50.83277893
		 0.98080617 146.56350708 66.053100586 0.99645287 135.88818359 19.29409981 1.0096780062 82.19029236 24.7669487
		 0.99457216 137.71824646 -24.79749107 0.9945662 139.99856567 -64.13401794 0.99457192 106.62288666 -62.96264267
		 0.9945724 102.3059845 -84.89482117 -0.28598344 137.016143799 -84.83052826 0.99555475 89.59477997 50.54296875
		 0.99457204 140.2908783 -47.85905075 0.99457216 105.14724731 -45.416008 0.99457186 136.1013031 3.18730783
		 12.14891338 100.5663681 62.098297119 8.5620718 110.30731201 67.44376373 8.93309498 136.76521301 50.5038147
		 6.93754053 141.20466614 66.48979187 12.79841328 129.74247742 35.44864655 18.57904434 87.45298004 26.29514694
		 14.73301506 125.11299133 23.032100677 15.29846859 90.14086151 25.10657883 11.0069026947 129.86395264 -24.82779312
		 11.34950733 108.50766754 -23.87527084 10.98447895 133.31135559 -56.042373657 18.030105591 113.90003967 -50.59246063
		 19.42133141 109.20018768 -83.88401794 2.65616608 133.93614197 -85.067649841 14.58306217 112.58163452 61.92590332
		 27.12939835 79.27841187 54.97959518 14.46185493 123.82298279 67.25686646 18.78678131 106.67285919 28.01282692
		 23.27649689 118.27090454 57.81766129 22.78034592 124.52240753 55.97990036 25.72392464 116.69319153 36.98796844
		 21.28350449 120.50537872 35.591465 21.73381996 123.97238922 44.088375092 29.97747803 115.95532227 47.87091827
		 15.30781651 125.51544952 60.41786957 11.38131714 77.51224518 36.40859222 31.65028191 76.93741608 45.0087509155
		 9.94012451 78.65254974 53.74794388 25.35194397 101.68849945 57.40392685 27.37384415 99.90267181 35.71121216
		 31.57563019 99.63500977 46.011764526 27.89925957 77.65310669 35.93628693 21.49489594 77.59483337 33.51938629
		 9.5416317 77.53553772 45.30307388 26.54587746 88.4730835 55.89109421 27.62537956 87.63552094 35.95459366
		 32.18802643 85.91085815 45.16722107 15.71741104 67.03817749 54.83082199 16.55333328 60.1603508 39.87427521
		 27.94223022 67.021286011 54.93626404 28.028226852 60.030006409 39.88500595 13.62769413 62.49399948 47.30848312
		 31.24115562 62.38057327 47.30222321 22.41651917 65.068557739 36.29146576 21.93093109 67.31161499 55.6758461
		 20.63792992 39.73081207 61.71655655 20.63801765 40.37285995 52.49536896 26.78957939 39.73691559 61.70081711
		 26.78194427 40.36122513 52.51271057 19.10796928 39.61940384 57.06817627 28.49869728 39.63280487 57.045578003
		 23.80009079 40.41850662 52.10715866 23.8031826 39.73168945 62.10761642 23.60559654 17.92491722 63.5576973
		 23.61937714 15.87282944 57.76480484 27.8100605 17.9347744 63.50252533 27.76946449 15.89340973 57.72068024
		 22.59659958 16.64135742 60.70205307 28.9305706 16.65216446 60.66532135 25.75964737 15.80669498 57.48065567
		 25.76746941 18.018550873 63.82842636 28.77219772 8.36190414 60.62076187 30.10619354 7.95963192 68.089645386
		 23.44432831 8.34962559 60.62568665 22.87841415 7.94806147 68.11711884 30.23568916 8.084732056 64.39435577
		 26.46481133 8.31330109 59.81323242 26.51294518 7.72219849 70.47762299 30.64773369 11.58769035 68.39254761
		 29.22161484 12.057697296 59.86872864 23.031179428 11.54114151 59.84313202 22.27310181 11.27300739 68.40847778
		 22.74050331 8.034313202 64.42658234 26.48209763 7.848279 64.40822601 26.46692657 10.90244198 71.14247131
		 30.77360916 11.68889236 64.11213684 26.41529274 11.70366669 58.96904373 22.10631752 11.54943562 64.1394043
		 14.45067501 86.67731476 57.093894958 21.93345451 121.40590668 -70.20696259 13.77514362 129.42887878 -71.18360901
		 12.1751833 121.94477081 -86.60661316 26.7061348 80.68256378 -71.21964264 25.78322983 84.67752075 -57.017089844
		 26.97214699 113.62304688 -67.4414978 27.35998726 107.1075058 -79.42591858 8.31709194 70.73206329 -58.4471817
		 8.92072773 71.39216614 -74.69124603 27.23483658 73.04434967 -59.51805878 27.9202652 70.95915985 -71.24786377
		 14.66173649 52.55533981 -77.26708221 14.55381584 53.38238525 -84.070877075 24.80460358 52.51035309 -76.51311493
		 24.74912453 53.13844299 -82.5941925 14.60952473 37.67751312 -89.78725433 14.75119114 38.28310013 -96.040679932
		 23.21588135 37.24363327 -89.52521515 23.24474907 37.57836533 -95.30774689 13.39058018 21.28576088 -89.76695251
		 13.71004677 22.066837311 -94.8143692 20.92292786 20.96757698 -88.99846649 20.89071465 21.52219391 -94.25380707
		 3.3628118 86.52133179 -56.55621338 5.44780779 83.63749695 -75.55309296 8.56300259 94.06791687 -51.48642349
		 17.049001694 85.8707962 -82.82679749 18.92356873 72.1005249 -78.42630005 16.052530289 73.79113007 -54.16555405
		 19.65433693 53.60376358 -86.22686005 19.70478249 52.15019608 -73.85173798 18.94181633 38.072227478 -97.46812439
		 18.82851219 37.288414 -87.86385345 17.30443573 22.051124573 -96.70378113 17.083927155 21.27011299 -88.080703735
		 12.99532986 11.17951202 -83.18722534 13.41402912 11.97250462 -93.12230682 20.98688889 11.16991425 -82.13434601
		 21.075239182 11.47035122 -91.65555573 12.85353851 15.48229218 -83.3030777 13.2807703 16.38252068 -93.33512878
		 13.058688164 11.3472023 -87.73436737 21.21155548 15.85685635 -92.02848053 17.24172592 11.77401543 -94.62397003
		 21.14572906 15.44535255 -82.35102844 21.13584328 11.14363003 -86.42687225 16.92070007 11.030006409 -81.0050048828
		 17.029403687 10.98617172 -86.89866638 16.92267036 15.48768902 -81.1628418 21.35853004 15.51350784 -86.60441589
		 17.25548553 16.29994392 -95.30683899 12.83683872 15.75359249 -87.79074097 18.89962959 97.44994354 32.34941101
		 26.85832787 107.47425079 36.3357048 30.93113518 107.21607971 46.91377258 24.81923676 109.34770203 57.68900681
		 14.70764637 125.11686707 63.90962601 13.72586632 129.70767212 66.79163361 21.59536934 98.004989624 33.1750679
		 22.31338882 106.41144562 33.68664169 20.76735306 114.071113586 31.899786;
	setAttr ".vt[332:497]" 18.92463493 90.60447693 39.42416763 19.56697273 98.024169922 35.64910889
		 19.27738571 108.64531708 30.86608696 18.010860443 78.48664856 -80.06362915 7.12560463 76.90195465 -74.9864502
		 5.78699303 77.91300964 -57.31451035 12.47610378 83.30627441 -51.81686401 26.32865715 78.44863129 -58.13857651
		 27.2786293 75.44067383 -71.10693359 27.78028297 66.67633057 -72.86976624 27.33208656 68.0050430298 -62.41369247
		 18.10886002 66.97631073 -56.91547775 10.30042553 65.34664917 -61.44843674 10.4511919 66.72373962 -75.93624878
		 19.45333481 67.027420044 -78.77488708 14.45078754 35.57865143 -90.020713806 14.62244606 36.1425972 -96.079490662
		 18.71616554 35.91764069 -97.53419495 22.90916634 35.47193909 -95.35710907 22.90029907 35.22100067 -89.72486115
		 18.58811188 35.35957718 -88.075660706 18.97108269 39.0020027161 -86.42168427 23.43913841 39.1276207 -88.16544342
		 23.44934082 39.61310959 -93.98932648 19.060249329 40.19152832 -96.28697205 14.77719975 40.3232193 -94.81030273
		 14.66107845 39.51673126 -88.49639893 23.61263466 16.52651215 64.34883118 22.56714249 15.37437153 61.31459808
		 23.66452408 14.72355366 58.24572754 25.87253571 14.70586967 57.9272995 27.96740341 14.76386547 58.2155838
		 29.21573448 15.4262228 61.28451538 28.084386826 16.55181503 64.30570221 25.91011429 16.56524849 64.68969727
		 25.59956741 19.92026138 63.2779274 27.65592003 19.84464645 62.97199249 28.82510567 18.53283501 60.059066772
		 27.64788437 17.75671387 57.056159973 25.59192848 17.70885468 56.80685806 23.41412163 17.74530792 57.11493301
		 22.36680603 18.5263195 60.10594559 23.4192543 19.84149361 63.034568787 27.87076569 58.053901672 41.18022919
		 30.87162018 54.11851501 50.088451385 27.81901932 57.97516632 57.094585419 22.29168129 58.16416931 57.47534561
		 16.43198395 57.87488556 56.73273087 14.38200378 54.15245438 50.029140472 17.14535904 58.25318909 41.1346817
		 22.66693878 57.79086685 40.69539642 21.42918777 69.066429138 35.47308731 15.26655293 69.1260376 36.94146729
		 12.54866219 68.94895935 45.32033157 14.27378654 70.89542389 54.7286911 20.5167675 72.32987976 55.035354614
		 27.63212395 70.87085724 55.27794647 31.38868332 68.50646973 45.10040665 27.89906883 69.021446228 36.3700943
		 11.18582344 131.93199158 -47.21778488 12.29535484 111.50159454 -45.9368782 11.35138988 126.68804932 4.40250349
		 14.13118458 100.73574829 5.77917719 16.75706863 108.83370209 5.90267611 19.56619453 99.7714386 -83.14552307
		 27.62063026 89.32266998 -73.020515442 26.56336594 101.87248993 -62.71908951 15.41421223 105.015464783 -50.21951675
		 5.12540245 98.86989594 -52.096721649 4.71405602 94.2218399 -79.28486633 19.63960266 60.030391693 -82.18531799
		 26.068534851 59.70121384 -77.59181213 25.97877121 60.039405823 -69.53436279 19.19346619 59.46370316 -65.66114807
		 12.98271847 59.011417389 -69.66655731 12.9493742 59.77203369 -79.69674683 19.36396599 45.82357407 -92.1479187
		 23.8384037 45.22961426 -89.32379913 23.94287109 44.68051529 -83.51181793 19.41884804 44.44815063 -81.46488953
		 14.9306221 45.078781128 -84.16856384 14.99601078 45.77187347 -90.36804962 17.89055443 29.048963547 -97.35326385
		 21.66482544 28.52207375 -95.30622864 21.27265167 28.37825584 -89.70464325 17.73248863 28.06457901 -89.23968506
		 14.31949902 28.69828033 -90.11820984 14.16818047 29.17439842 -95.79144287 18.16988182 53.25957108 58.39595413
		 16.31597519 50.20254135 52.8591423 18.54682541 48.33102036 46.34775925 23.040700912 48.46683502 45.76130295
		 27.26669121 48.1695137 46.57938766 29.69707489 50.19330978 52.91016769 27.23817253 53.2862587 58.58074188
		 22.83975983 53.53233337 58.99370956 22.17513847 30.61605263 61.81999588 24.72786522 30.64423561 62.10621262
		 27.13584518 30.62387276 61.76232529 28.52108002 30.48932457 57.96860123 27.12365532 31.038805008 54.33156586
		 24.70286179 31.028764725 54.038829803 22.1355381 31.01881218 54.37346268 20.89693069 30.4733963 58.0092926025
		 16.97359085 121.62250519 -50.70383453 13.039273262 118.95749664 -46.42685318 12.25330639 116.17756653 -23.6313839
		 11.11650085 135.21629333 66.78394318 1.0080856085 93.68112946 -0.33100697 0.99457216 100.79408264 -27.20466232
		 16.49388504 92.31893921 60.031200409 18.86837387 104.44823456 61.1054039 17.9881897 112.2280426 61.87963104
		 14.11720467 98.85263824 61.88179398 15.46459961 109.43017578 60.42135239 15.72569942 116.098869324 58.65255737
		 19.62027168 36.4577179 57.26478577 21.063234329 37.13376999 52.98514175 24.048755646 37.18175507 52.62895584
		 26.86045074 37.14683914 52.96530151 28.48971748 36.47467422 57.22970963 26.87107658 36.58809662 61.63577271
		 24.062829971 36.57683182 62.0085792542 21.077913284 36.58037949 61.66411591 19.9848175 43.80332184 62.0085372925
		 23.53136826 43.80488968 62.49742508 26.88789177 43.79616165 62.030548096 28.78246689 43.6302948 56.91324234
		 26.89120102 44.59370804 51.85710907 23.58176422 44.70866776 51.32953644 20.074863434 44.6829834 51.75948715
		 18.36421967 43.63286209 56.90113449 21.055599213 113.21620941 -56.1588707 19.18769264 103.76021576 -54.22843552
		 14.39166927 90.63461304 -53.21988297 17.16502571 81.45121002 -53.95038605 19.83791351 73.48549652 -55.98844147
		 21.23113632 67.31453705 -58.78044128 21.49048042 59.65993118 -66.97989655 21.43140602 52.30844116 -74.77635956
		 20.95080566 44.60687637 -82.18383026 20.4840374 39.11489487 -87.0093383789 20.31375885 37.27614594 -88.4254837
		 20.047782898 35.29391479 -88.6419754 18.93091393 28.16944885 -89.39872742 18.38352013 21.16763687 -88.39150238
		 18.35227776 15.47335052 -81.56507874 18.29720306 11.077368736 -81.38731384 18.41953468 11.039475441 -86.73895264
		 18.53946114 11.67121792 -93.61908722 18.5947094 16.14995003 -94.19702911 18.51847649 21.87208366 -95.87432861
		 19.16823769 28.87104225 -96.65878296 20.13561249 35.76939011 -96.7940979 20.39848518 37.90904236 -96.73625183
		 20.54602814 39.98986053 -95.50466919 20.87837219 45.57248306 -91.14138794 21.37872696 53.39359665 -84.9336319
		 21.81587791 59.90736008 -80.61555481 22.27220726 66.91178894 -76.78014374 21.96916962 71.72279358 -75.99919128
		 21.14827347 77.46120453 -77.040260315 20.31850815 84.11700439 -78.98379517 22.2882309 96.39858246 -79.87190247
		 22.75884056 109.080070496 -82.61092377 24.11586952 118.98455811 -69.34049225;
	setAttr ".vt[498:663]" 22.55569077 116.022010803 -62.66530228 -10.16779327 100.56656647 62.097106934
		 -7.50377417 108.82880402 66.46163177 -6.94484806 136.76542664 50.50455093 -4.96247482 141.1378479 66.61550903
		 -10.80791092 129.74240112 35.44896317 -16.57108879 87.4512558 26.29314804 -12.73820019 125.11250305 23.032394409
		 -13.29424191 90.13995361 25.1090107 -9.017758369 129.86395264 -24.82779312 -9.34934616 108.50695801 -23.87416267
		 -8.99533463 133.31135559 -56.042373657 -16.040962219 113.90003967 -50.59246063 -17.81292534 109.86837769 -83.63285065
		 -3.27921033 133.57778931 -85.20235443 -12.59922981 112.5823288 61.92699814 -25.14081764 79.27751923 54.97465134
		 -12.50374794 123.20158386 67.36528015 -16.78867149 106.67194366 28.012447357 -21.2923336 118.27082062 57.8146553
		 -20.79467773 124.52230835 55.97758102 -23.73015022 116.69199371 36.98390961 -19.29096413 120.50475311 35.58987045
		 -19.74412346 123.97200012 44.086574554 -27.98857689 115.95412445 47.8643074 -13.32279301 125.5158844 60.41809464
		 -9.37964535 77.51208496 36.41297531 -29.65444183 76.93537903 45.0011291504 -7.95058155 78.65313721 53.75138855
		 -23.36770058 101.68810272 57.39932251 -25.37481117 99.90066528 35.70529556 -29.58349228 99.63310242 46.0029678345
		 -25.89720726 77.65099335 35.93123245 -19.49124908 77.59336853 33.51839828 -7.54597902 77.53585815 45.30720901
		 -24.55912209 88.47233582 55.88594818 -25.6246357 87.63341522 35.94887543 -30.19345665 85.90876007 45.15863037
		 -13.72715092 67.038772583 54.83481216 -14.55177879 60.15994644 39.8781929 -25.95203781 67.020332336 54.93183899
		 -26.026638031 60.028125763 39.88095474 -11.63161087 62.49442291 47.31429672 -29.24503899 62.37873077 47.295784
		 -20.41308403 65.067184448 36.29102325 -19.94129181 67.31147003 55.67556 -18.64895058 39.7312088 61.7188797
		 -18.64269066 40.37269592 52.49765778 -24.8005867 39.73651505 61.69884872 -24.78662491 40.36027145 52.51071167
		 -17.1157341 39.61971664 57.071575165 -26.50644684 39.6319046 57.042427063 -21.80449867 40.41791153 52.10723877
		 -21.81447601 39.7317009 62.10773468 -21.61509705 17.92503738 63.55932236 -21.62457466 15.87258148 57.76655197
		 -25.81952477 17.93435097 63.5012207 -25.77463531 15.89262581 57.71953583 -20.60394669 16.64142609 60.70446777
		 -26.93789291 16.65141678 60.66331863 -23.7646389 15.80615425 57.48091507 -23.77717018 18.018411636 63.8285408
		 -26.77842522 8.36117458 60.61940002 -28.11757469 7.9592042 68.087379456 -21.45055771 8.34957981 60.6280365
		 -20.88981438 7.94856405 68.11988831 -28.24450874 8.084053993 64.39199066 -24.47046852 8.31281662 59.81348038
		 -24.52596474 7.7223835 70.47787476 -28.65979195 11.58721161 68.38967133 -27.22778893 12.056862831 59.86681366
		 -21.037273407 11.54109955 59.84556961 -20.28513145 11.27360535 68.41146088 -20.74934196 8.034599304 64.42944336
		 -24.49090004 7.84808302 64.40849304 -24.48081779 10.90267467 71.14254761 -28.78269768 11.68812656 64.10916901
		 -24.42079735 11.70313454 58.9691124 -20.11540604 11.54978466 64.14248657 -12.46467972 86.67778778 57.095256805
		 -19.94430923 121.40590668 -70.20696259 -11.7859993 129.42887878 -71.18360901 -11.23400879 123.78395081 -85.9152832
		 -24.71699142 80.68256378 -71.21964264 -23.79408646 84.67752075 -57.017089844 -24.98300171 113.62304688 -67.4414978
		 -25.37084198 107.1075058 -79.42591858 -6.32794762 70.73206329 -58.4471817 -6.9315834 71.39216614 -74.69124603
		 -25.24569321 73.04434967 -59.51805878 -25.93112183 70.95915985 -71.24786377 -12.67259216 52.55533981 -77.26708221
		 -12.56467152 53.38238525 -84.070877075 -22.81546021 52.51035309 -76.51311493 -22.75997925 53.13844299 -82.5941925
		 -12.6203804 37.67751312 -89.78725433 -12.76204681 38.28310013 -96.040679932 -21.22673798 37.24363327 -89.52521515
		 -21.25560379 37.57836533 -95.30774689 -11.40143585 21.28576088 -89.76695251 -11.72090244 22.066837311 -94.8143692
		 -18.93378448 20.96757698 -88.99846649 -18.90156937 21.52219391 -94.25380707 -1.37366748 86.52133179 -56.55621338
		 -3.45866346 83.63749695 -75.55309296 -6.57385826 94.06791687 -51.48642349 -15.059857368 85.8707962 -82.82679749
		 -16.93442535 72.1005249 -78.42630005 -14.063385963 73.79113007 -54.16555405 -17.66519165 53.60376358 -86.22686005
		 -17.71563721 52.15019608 -73.85173798 -16.95267105 38.072227478 -97.46812439 -16.83936691 37.288414 -87.86385345
		 -15.3152914 22.051124573 -96.70378113 -15.094782829 21.27011299 -88.080703735 -11.0061855316 11.17951202 -83.18722534
		 -11.4248848 11.97250462 -93.12230682 -18.99774551 11.16991425 -82.13434601 -19.086093903 11.47035122 -91.65555573
		 -10.86439419 15.48229218 -83.3030777 -11.29162598 16.38252068 -93.33512878 -11.069543839 11.3472023 -87.73436737
		 -19.22241211 15.85685635 -92.02848053 -15.2525816 11.77401543 -94.62397003 -19.15658569 15.44535255 -82.35102844
		 -19.146698 11.14363003 -86.42687225 -14.93155575 11.030006409 -81.0050048828 -15.040259361 10.98617172 -86.89866638
		 -14.93352604 15.48768902 -81.1628418 -19.36938477 15.51350784 -86.60441589 -15.26634121 16.29994392 -95.30683899
		 -10.8476944 15.75359249 -87.79074097 -16.90054893 97.44900513 32.34936523 -24.86154747 107.47252655 36.33023834
		 -28.94066048 107.21442413 46.90548706 -22.83548355 109.34741974 57.68474579 -12.72303581 125.11736298 63.91003036
		 -11.77459908 129.34512329 67.0013198853 -19.59410858 98.0034790039 33.17279053 -20.31456947 106.41004181 33.683918
		 -18.77071571 114.070075989 31.89803886 -16.92722702 90.60377502 39.42453003 -17.56809425 98.023170471 35.64859772
		 -17.27889824 108.64428711 30.86526871 -16.021717072 78.48664856 -80.06362915 -5.1364603 76.90195465 -74.9864502
		 -3.7978487 77.91300964 -57.31451035 -10.48695946 83.30627441 -51.81686401 -24.33951187 78.44863129 -58.13857651
		 -25.28948593 75.44067383 -71.10693359 -25.7911377 66.67633057 -72.86976624 -25.34294128 68.0050430298 -62.41369247
		 -16.11971664 66.97631073 -56.91547775 -8.3112812 65.34664917 -61.44843674 -8.46204758 66.72373962 -75.93624878
		 -17.46419144 67.027420044 -78.77488708 -12.46164322 35.57865143 -90.020713806 -12.63330173 36.1425972 -96.079490662
		 -16.72702026 35.91764069 -97.53419495 -20.92002106 35.47193909 -95.35710907 -20.9111557 35.22100067 -89.72486115
		 -16.59896851 35.35957718 -88.075660706 -16.98193741 39.0020027161 -86.42168427 -21.44999313 39.1276207 -88.16544342
		 -21.46019745 39.61310959 -93.98932648 -17.071105957 40.19152832 -96.28697205;
	setAttr ".vt[664:829]" -12.78805542 40.3232193 -94.81030273 -12.67193413 39.51673126 -88.49639893
		 -21.622509 16.5266819 64.35054779 -20.57475471 15.37448215 61.31711578 -21.66991234 14.72332954 58.24752045
		 -23.87769699 14.70534134 57.92755127 -25.97277451 14.76308632 58.21437454 -27.22332954 15.42547798 61.28239441
		 -26.094234467 16.55140686 64.30429077 -23.92022896 16.56514359 64.68980408 -23.60912895 19.9201088 63.27802658
		 -25.6652565 19.84420967 62.97066498 -26.83224487 18.53206444 60.057014465 -25.65283012 17.75590706 57.054969788
		 -23.59669113 17.70829773 56.8071022 -21.41910362 17.74505234 57.11668777 -20.37397957 18.52638245 60.10839462
		 -21.42863464 19.84160614 63.036190033 -25.86982346 58.052120209 41.17640305 -28.87638283 54.11688614 50.082771301
		 -25.82916641 57.9743576 57.090797424 -20.3021183 58.16409683 57.47540283 -14.44186687 57.87552261 56.73688889
		 -12.38673401 54.15295029 50.034954071 -15.1444149 58.25278473 41.13832474 -20.66562653 57.78972626 40.69521713
		 -19.4257164 69.065124512 35.47307587 -13.26419163 69.12560272 36.94555664 -10.55209064 68.94933319 45.32600403
		 -12.28394985 70.89604187 54.73256302 -18.52732468 72.32977295 55.035121918 -25.64266586 70.86995697 55.27345657
		 -29.39182281 68.50447845 45.09349823 -25.89618683 69.019363403 36.36559296 -9.19667912 131.93199158 -47.21778488
		 -10.30621052 111.50159454 -45.9368782 -9.35920715 126.68782043 4.40283298 -12.13153076 100.73497009 5.78022242
		 -14.75726318 108.83274841 5.90290785 -17.57704926 99.7714386 -83.14552307 -25.63148499 89.32266998 -73.020515442
		 -24.57422256 101.87248993 -62.71908951 -13.4250679 105.015464783 -50.21951675 -3.13625813 98.86989594 -52.096721649
		 -2.72491169 94.2218399 -79.28486633 -17.65045929 60.030391693 -82.18531799 -24.079391479 59.70121384 -77.59181213
		 -23.98962784 60.039405823 -69.53436279 -17.20432281 59.46370316 -65.66114807 -10.99357414 59.011417389 -69.66655731
		 -10.96022987 59.77203369 -79.69674683 -17.37482071 45.82357407 -92.1479187 -21.84925842 45.22961426 -89.32379913
		 -21.95372772 44.68051529 -83.51181793 -17.42970276 44.44815063 -81.46488953 -12.94147778 45.078781128 -84.16856384
		 -13.0068664551 45.77187347 -90.36804962 -15.9014101 29.048963547 -97.35326385 -19.67568207 28.52207375 -95.30622864
		 -19.2835083 28.37825584 -89.70464325 -15.74334431 28.06457901 -89.23968506 -12.33035469 28.69828033 -90.11820984
		 -12.17903614 29.17439842 -95.79144287 -16.18033028 53.26008606 58.39918137 -14.3221693 50.20295715 52.86384583
		 -16.54823685 48.33075714 46.35102463 -21.041721344 48.46595383 45.76142502 -25.26824188 48.1681366 46.57658386
		 -27.70330048 50.19200516 52.90554428 -25.24875069 53.28561401 58.57764435 -20.85066032 53.53227997 58.99366379
		 -20.18505669 30.6162529 61.82180405 -22.73798752 30.64412498 62.10624313 -25.14572334 30.62343025 61.76068115
		 -26.52829361 30.48846817 57.9659996 -25.12840462 31.037906647 54.32990265 -22.70740509 31.028162003 54.038852692
		 -20.14031601 31.018564224 54.37527466 -18.9041748 30.473526 58.012004852 -14.98444653 121.62250519 -50.70383453
		 -11.050128937 118.95749664 -46.42685318 -10.26416206 116.17756653 -23.6313839 -9.16073418 134.98892212 66.98980713
		 -14.51044273 92.31969452 60.032608032 -16.88648033 104.44882965 61.10494232 -16.0060253143 112.2286377 61.87931442
		 -12.13576508 98.85361481 61.88362503 -13.4817667 109.4309845 60.42253113 -13.74121952 116.099411011 58.65310669
		 -17.62776756 36.45797348 57.26802063 -19.067831039 37.13357925 52.98732758 -22.053110123 37.18115616 52.62905884
		 -24.86503601 37.14589691 52.96344757 -26.49718666 36.47378159 57.22675705 -24.88163376 36.58768463 61.63394165
		 -22.073646545 36.5768013 62.0087051392 -19.088489532 36.58071136 61.66632462 -17.99656487 43.80381775 62.011070251
		 -21.54345703 43.80495834 62.4974823 -24.89965439 43.79577255 62.028266907 -26.79063988 43.62934875 56.90965271
		 -24.8959713 44.59269714 51.85477829 -21.58618355 44.7080574 51.32950974 -18.0795784 44.68284607 51.76190948
		 -16.37238503 43.63325882 56.90480804 -19.066455841 113.21620941 -56.1588707 -17.19854736 103.76021576 -54.22843552
		 -12.40252495 90.63461304 -53.21988297 -15.17588139 81.45121002 -53.95038605 -17.84877014 73.48549652 -55.98844147
		 -19.24199295 67.31453705 -58.78044128 -19.50133514 59.65993118 -66.97989655 -19.44226074 52.30844116 -74.77635956
		 -18.96166229 44.60687637 -82.18383026 -18.49489212 39.11489487 -87.0093383789 -18.32461548 37.27614594 -88.4254837
		 -18.058639526 35.29391479 -88.6419754 -16.94176865 28.16944885 -89.39872742 -16.39437485 21.16763687 -88.39150238
		 -16.36313248 15.47335052 -81.56507874 -16.30805969 11.077368736 -81.38731384 -16.4303894 11.039475441 -86.73895264
		 -16.55031586 11.67121792 -93.61908722 -16.60556412 16.14995003 -94.19702911 -16.52933121 21.87208366 -95.87432861
		 -17.17909241 28.87104225 -96.65878296 -18.14646912 35.76939011 -96.7940979 -18.4093399 37.90904236 -96.73625183
		 -18.55688477 39.98986053 -95.50466919 -18.88922882 45.57248306 -91.14138794 -19.38958359 53.39359665 -84.9336319
		 -19.82673264 59.90736008 -80.61555481 -20.28306198 66.91178894 -76.78014374 -19.98002625 71.72279358 -75.99919128
		 -19.1591301 77.46120453 -77.040260315 -18.32936478 84.11700439 -78.98379517 -20.29908752 96.39858246 -79.87190247
		 -20.76969528 109.080070496 -82.61092377 -22.12672424 118.98455811 -69.34049225 -20.56654739 116.022010803 -62.66530228
		 12.14891338 100.5663681 62.098297119 7.69686222 110.42596436 67.44203186 8.93309498 136.76521301 50.5038147
		 6.075026035 141.32383728 66.48964691 12.79841328 129.74247742 35.44864655 18.57904434 87.45298004 26.29514694
		 14.73301506 125.11299133 23.032100677 15.29846859 90.14086151 25.10657883 14.58306217 112.58163452 61.92590332
		 27.12939835 79.27841187 54.97959518 13.59762287 123.9419632 67.25650024 18.78678131 106.67285919 28.01282692
		 23.27649689 118.27090454 57.81766129 22.78034592 124.52240753 55.97990036 25.72392464 116.69319153 36.98796844
		 21.28350449 120.50537872 35.591465 21.73381996 123.97238922 44.088375092 29.97747803 115.95532227 47.87091827
		 15.30781651 125.51544952 60.41786957 11.38131714 77.51224518 36.40859222 31.65028191 76.93741608 45.0087509155
		 9.94012451 78.65254974 53.74794388 25.35194397 101.68849945 57.40392685 27.37384415 99.90267181 35.71121216
		 31.57563019 99.63500977 46.011764526 27.89925957 77.65310669 35.93628693;
	setAttr ".vt[830:995]" 21.49489594 77.59483337 33.51938629 9.5416317 77.53553772 45.30307388
		 26.54587746 88.4730835 55.89109421 27.62537956 87.63552094 35.95459366 32.18802643 85.91085815 45.16722107
		 15.71741104 67.03817749 54.83082199 16.55333328 60.1603508 39.87427521 27.94223022 67.021286011 54.93626404
		 28.028226852 60.030006409 39.88500595 13.62769413 62.49399948 47.30848312 31.24115562 62.38057327 47.30222321
		 22.41651917 65.068557739 36.29146576 21.93093109 67.31161499 55.6758461 20.63792992 39.73081207 61.71655655
		 20.63801765 40.37285995 52.49536896 26.78957939 39.73691559 61.70081711 26.78194427 40.36122513 52.51271057
		 19.10796928 39.61940384 57.06817627 28.49869728 39.63280487 57.045578003 23.80009079 40.41850662 52.10715866
		 23.8031826 39.73168945 62.10761642 23.60559654 17.92491722 63.5576973 23.61937714 15.87282944 57.76480484
		 27.8100605 17.9347744 63.50252533 27.76946449 15.89340973 57.72068024 22.59659958 16.64135742 60.70205307
		 28.9305706 16.65216446 60.66532135 25.75964737 15.80669498 57.48065567 25.76746941 18.018550873 63.82842636
		 28.77219772 8.36190414 60.62076187 30.10619354 7.95963192 68.089645386 23.44432831 8.34962559 60.62568665
		 22.87841415 7.94806147 68.11711884 30.23568916 8.084732056 64.39435577 26.46481133 8.31330109 59.81323242
		 26.51294518 7.72219849 70.47762299 30.64773369 11.58769035 68.39254761 29.22161484 12.057697296 59.86872864
		 23.031179428 11.54114151 59.84313202 22.27310181 11.27300739 68.40847778 22.74050331 8.034313202 64.42658234
		 26.48209763 7.848279 64.40822601 26.46692657 10.90244198 71.14247131 30.77360916 11.68889236 64.11213684
		 26.41529274 11.70366669 58.96904373 22.10631752 11.54943562 64.1394043 14.45067501 86.67731476 57.093894958
		 27.9202652 70.95915985 -71.24786377 24.80460358 52.51035309 -76.51311493 14.75119114 38.28310013 -96.040679932
		 23.21588135 37.24363327 -89.52521515 23.24474907 37.57836533 -95.30774689 13.39058018 21.28576088 -89.76695251
		 13.71004677 22.066837311 -94.8143692 20.92292786 20.96757698 -88.99846649 20.89071465 21.52219391 -94.25380707
		 18.94181633 38.072227478 -97.46812439 18.82851219 37.288414 -87.86385345 17.30443573 22.051124573 -96.70378113
		 17.083927155 21.27011299 -88.080703735 12.99532986 11.17951202 -83.18722534 13.41402912 11.97250462 -93.12230682
		 20.98688889 11.16991425 -82.13434601 21.075239182 11.47035122 -91.65555573 12.85353851 15.48229218 -83.3030777
		 13.2807703 16.38252068 -93.33512878 13.058688164 11.3472023 -87.73436737 21.21155548 15.85685635 -92.02848053
		 17.24172592 11.77401543 -94.62397003 21.14572906 15.44535255 -82.35102844 21.13584328 11.14363003 -86.42687225
		 16.92070007 11.030006409 -81.0050048828 17.029403687 10.98617172 -86.89866638 16.92267036 15.48768902 -81.1628418
		 21.35853004 15.51350784 -86.60441589 17.25548553 16.29994392 -95.30683899 12.83683872 15.75359249 -87.79074097
		 18.89962959 97.44994354 32.34941101 26.85832787 107.47425079 36.3357048 30.93113518 107.21607971 46.91377258
		 24.81923676 109.34770203 57.68900681 14.70764637 125.11686707 63.90962601 12.86241817 129.82675171 66.79139709
		 21.59536934 98.004989624 33.1750679 22.31338882 106.41144562 33.68664169 20.76735306 114.071113586 31.899786
		 18.92463493 90.60447693 39.42416763 19.56697273 98.024169922 35.64910889 19.27738571 108.64531708 30.86608696
		 27.78028297 66.67633057 -72.86976624 14.45078754 35.57865143 -90.020713806 14.62244606 36.1425972 -96.079490662
		 18.71616554 35.91764069 -97.53419495 22.90916634 35.47193909 -95.35710907 22.90029907 35.22100067 -89.72486115
		 18.58811188 35.35957718 -88.075660706 23.43913841 39.1276207 -88.16544342 23.44934082 39.61310959 -93.98932648
		 19.060249329 40.19152832 -96.28697205 23.61263466 16.52651215 64.34883118 22.56714249 15.37437153 61.31459808
		 23.66452408 14.72355366 58.24572754 25.87253571 14.70586967 57.9272995 27.96740341 14.76386547 58.2155838
		 29.21573448 15.4262228 61.28451538 28.084386826 16.55181503 64.30570221 25.91011429 16.56524849 64.68969727
		 25.59956741 19.92026138 63.2779274 27.65592003 19.84464645 62.97199249 28.82510567 18.53283501 60.059066772
		 27.64788437 17.75671387 57.056159973 25.59192848 17.70885468 56.80685806 23.41412163 17.74530792 57.11493301
		 22.36680603 18.5263195 60.10594559 23.4192543 19.84149361 63.034568787 27.87076569 58.053901672 41.18022919
		 30.87162018 54.11851501 50.088451385 27.81901932 57.97516632 57.094585419 22.29168129 58.16416931 57.47534561
		 16.43198395 57.87488556 56.73273087 14.38200378 54.15245438 50.029140472 17.14535904 58.25318909 41.1346817
		 22.66693878 57.79086685 40.69539642 21.42918777 69.066429138 35.47308731 15.26655293 69.1260376 36.94146729
		 12.54866219 68.94895935 45.32033157 14.27378654 70.89542389 54.7286911 20.5167675 72.32987976 55.035354614
		 27.63212395 70.87085724 55.27794647 31.38868332 68.50646973 45.10040665 27.89906883 69.021446228 36.3700943
		 11.35138988 126.68804932 4.40250349 14.13118458 100.73574829 5.77917719 16.75706863 108.83370209 5.90267611
		 26.068534851 59.70121384 -77.59181213 25.97877121 60.039405823 -69.53436279 19.19346619 59.46370316 -65.66114807
		 17.89055443 29.048963547 -97.35326385 21.66482544 28.52207375 -95.30622864 21.27265167 28.37825584 -89.70464325
		 17.73248863 28.06457901 -89.23968506 14.31949902 28.69828033 -90.11820984 14.16818047 29.17439842 -95.79144287
		 18.16988182 53.25957108 58.39595413 16.31597519 50.20254135 52.8591423 18.54682541 48.33102036 46.34775925
		 23.040700912 48.46683502 45.76130295 27.26669121 48.1695137 46.57938766 29.69707489 50.19330978 52.91016769
		 27.23817253 53.2862587 58.58074188 22.83975983 53.53233337 58.99370956 22.17513847 30.61605263 61.81999588
		 24.72786522 30.64423561 62.10621262 27.13584518 30.62387276 61.76232529 28.52108002 30.48932457 57.96860123
		 27.12365532 31.038805008 54.33156586 24.70286179 31.028764725 54.038829803 22.1355381 31.01881218 54.37346268
		 20.89693069 30.4733963 58.0092926025 10.25335598 135.33538818 66.78367615 16.49388504 92.31893921 60.031200409
		 18.86837387 104.44823456 61.1054039 17.9881897 112.2280426 61.87963104 14.11720467 98.85263824 61.88179398
		 15.46459961 109.43017578 60.42135239 15.72569942 116.098869324 58.65255737;
	setAttr ".vt[996:1161]" 19.62027168 36.4577179 57.26478577 21.063234329 37.13376999 52.98514175
		 24.048755646 37.18175507 52.62895584 26.86045074 37.14683914 52.96530151 28.48971748 36.47467422 57.22970963
		 26.87107658 36.58809662 61.63577271 24.062829971 36.57683182 62.0085792542 21.077913284 36.58037949 61.66411591
		 19.9848175 43.80332184 62.0085372925 23.53136826 43.80488968 62.49742508 26.88789177 43.79616165 62.030548096
		 28.78246689 43.6302948 56.91324234 26.89120102 44.59370804 51.85710907 23.58176422 44.70866776 51.32953644
		 20.074863434 44.6829834 51.75948715 18.36421967 43.63286209 56.90113449 21.49048042 59.65993118 -66.97989655
		 20.4840374 39.11489487 -87.0093383789 20.31375885 37.27614594 -88.4254837 20.047782898 35.29391479 -88.6419754
		 18.93091393 28.16944885 -89.39872742 18.38352013 21.16763687 -88.39150238 18.35227776 15.47335052 -81.56507874
		 18.29720306 11.077368736 -81.38731384 18.41953468 11.039475441 -86.73895264 18.53946114 11.67121792 -93.61908722
		 18.5947094 16.14995003 -94.19702911 18.51847649 21.87208366 -95.87432861 19.16823769 28.87104225 -96.65878296
		 20.13561249 35.76939011 -96.7940979 20.39848518 37.90904236 -96.73625183 20.54602814 39.98986053 -95.50466919
		 24.070137024 64.88066101 39.62462997 26.91253281 64.73654938 37.48822403 29.66990471 62.39091873 34.69807434
		 30.77012253 58.12307739 32.50965881 28.38483047 60.59597397 35.040687561 25.53900719 61.72792053 37.45267487
		 23.20209694 61.6455307 39.1215477 28.69724274 61.59728241 34.43390656 25.64947891 63.46317673 36.70341492
		 23.064178467 63.52651596 38.61193848 29.35329056 61.28707886 35.3129425 26.79785919 62.91513824 38.23588562
		 24.20541954 62.97810745 40.13245392 23.86512756 64.90533447 40.39022827 26.58776855 66.12670898 38.43534088
		 29.43245125 65.73741913 34.95160294 30.77092171 62.27266312 30.15423965 28.37859726 63.78435898 34.44133759
		 25.56864548 63.20419693 37.057594299 23.35249901 62.053050995 38.51231766 28.5388279 65.052955627 34.36805725
		 25.43779945 65.1867218 37.17022324 22.97322655 63.98386002 38.87536621 29.26875114 64.46630096 35.020202637
		 26.7154789 64.15396118 38.31133652 24.24295807 62.95868301 40.013576508 24.069202423 64.44790649 38.66313171
		 26.91233253 63.097270966 36.94344711 29.67175102 59.58760834 35.86302948 30.77490425 54.83055115 36.36440277
		 28.38754272 58.30287552 37.1332016 25.54044342 60.62854385 38.57716751 23.20307922 61.52568436 40.037895203
		 28.6995697 58.77446747 36.063484192 25.65019226 61.60552979 36.98307037 23.064302444 62.77310562 38.57391357
		 29.35551834 59.0275383 36.95508575 26.7983799 62.030853271 38.55095673 24.20534515 63.18449783 40.13663101
		 19.92259789 37.35818481 -89.85180664 21.99514771 39.88594437 -91.17378235 24.12449265 41.89078522 -94.59803009
		 25.15943146 41.93379211 -99.34706879 23.29134369 40.31074142 -95.90969849 21.16728401 37.96891785 -93.68986511
		 19.4759407 35.82597351 -92.80756378 23.24423981 41.41900635 -95.35605621 20.77071381 39.48545074 -92.61553192
		 18.8944912 37.15905762 -91.51190186 24.16882706 40.77339935 -95.15768433 22.3891468 38.35734558 -92.26805878
		 20.50288963 36.041095734 -91.16049957 19.95850945 37.92171478 -90.45394897 22.3008461 39.49765396 -92.62184906
		 24.74090385 39.61528778 -96.41757202 25.97647858 37.43370056 -100.58114624 23.828825 37.65023422 -96.92232513
		 21.41442871 36.65723801 -94.049034119 19.50659561 35.20784378 -92.44132233 23.85503197 38.89679337 -96.93864441
		 21.10654259 38.54014587 -93.80794525 18.98684311 37.026580811 -91.91777039 24.71166801 38.36249924 -96.40470123
		 22.60601616 37.6056366 -92.87254333 20.47700691 36.09979248 -90.98635101 19.81046677 38.16356659 -91.40628052
		 22.40702248 38.56839371 -93.81523132 25.35533333 36.87401199 -96.78488922 27.20269966 32.93635178 -98.95847321
		 24.55777168 34.86145401 -96.25018311 21.78088188 35.31762695 -93.57704163 19.69207573 34.76134491 -91.66409302
		 24.56427574 35.90967178 -96.93043518 21.40868568 37.016914368 -94.42019653 19.071178436 36.53507996 -92.25564575
		 25.34614563 35.8196106 -96.10284424 22.77725601 36.85927963 -92.9715271 20.43125534 36.37850571 -90.81599426
		 -0.72864532 122.78904724 -86.053543091 -0.37908173 127.68118286 -87.81652832 -27.12408447 111.3524704 -121.76525879
		 -17.0021896362 94.9848938 -115.74890137 -1.72476208 110.24755096 -107.91145325 -4.72301817 119.92245483 -110.68179321
		 -46.35297394 100.99022675 -126.95097351 -32.84410858 79.71686554 -118.21284485 -59.24811554 85.60562134 -132.83058167
		 -45.13562775 62.54521179 -123.48426819 -66.37654877 73.88124084 -140.39941406 -56.17498016 56.19834137 -132.6933136
		 -75.36486053 67.18096924 -146.66093445 -69.74672699 59.7424469 -144.7175293 -19.22688293 102.27639771 -123.89996338
		 -1.65237689 115.83502197 -111.059387207 -37.41397095 90.29512787 -127.37869263 -49.019538879 73.79381561 -132.59281921
		 -57.70809174 65.60126495 -140.79985046 -68.89975739 64.06010437 -148.99433899 -32.95831299 112.91247559 -107.34422302
		 -22.38581085 96.40007782 -101.78557587 -11.51404572 120.38693237 -101.97284698 -53.73604584 101.85734558 -110.12492371
		 -38.99421692 80.40529633 -104.22817993 -68.36394501 85.33768463 -116.32337952 -52.68782806 62.28761673 -109.92753601
		 -77.98110199 72.29405212 -123.93991089 -65.70560455 54.86343765 -119.26745605 -81.94663239 65.7066803 -139.30067444
		 -77.91477203 57.88946915 -135.63420105 -29.4377594 105.12186432 -99.3792572 -9.94636536 116.11488342 -97.063446045
		 -48.39093781 91.58448792 -102.3367157 -62.59697723 73.36578369 -108.09992981 -74.65618134 63.24862289 -116.78959656
		 -82.85303497 60.89200974 -133.54231262 -9.09677124 121.55800629 -107.71881104 -32.21982574 115.43021393 -115.45924377
		 -18.46233368 94.12953949 -108.18186188 -52.41054535 106.065185547 -119.82580566 -34.24465179 77.96899414 -110.3792572
		 -65.16191864 88.99842072 -125.27632141 -47.1203537 60.15300369 -115.75439453 -73.23201752 76.85324097 -132.53875732
		 -59.31900787 53.4571991 -125.052154541 -78.62899017 67.82940674 -142.65382385 -72.83333588 57.78450394 -139.48144531
		 -80.3289566 54.54500198 -150.11871338 -23.40162659 116.26322937 -105.92408752 -22.24326324 118.29638672 -112.86375427
		 -16.78639603 115.15504456 -118.23023224 -10.5866003 108.51992798 -119.21047974 -10.063417435 102.024597168 -112.98834991
		 -12.071647644 101.035247803 -106.22676849 -15.84377289 102.73627472 -99.96380615;
	setAttr ".vt[1162:1327]" -20.96533203 110.078117371 -98.86439514 -45.29392242 107.5432663 -108.688797
		 -44.25763702 111.1264267 -117.96382141 -38.66838837 106.34694672 -124.78544617 -30.21352386 96.18793488 -126.034133911
		 -26.26352692 86.67599487 -117.063995361 -27.55000305 85.26477051 -109.30184937 -31.93412018 87.65723419 -103.072540283
		 -40.61696625 98.069328308 -100.73826599 -63.3677597 92.056724548 -113.53147888 -60.90184784 95.91689301 -122.78848267
		 -54.98670197 91.86750793 -130.23716736 -44.83867645 80.053939819 -129.89280701 -40.36937714 68.69097137 -120.65228271
		 -42.081535339 66.45581055 -112.91165161 -47.30139923 68.82180023 -106.99430847 -57.29013824 80.27841949 -105.32469177
		 -73.38401031 78.47229767 -119.10809326 -69.13288116 82.79728699 -128.16419983 -62.44757843 79.55466461 -136.18515015
		 -52.88477325 68.9128952 -136.16139221 -50.24555206 58.15874863 -127.45082092 -52.76438141 55.54418182 -119.61299133
		 -58.87981415 57.33871078 -113.73132324 -68.48499298 67.48274231 -111.39172363 -80.91883087 69.002204895 -131.13063049
		 -76.42215729 72.56031036 -137.62171936 -70.85631561 70.74473572 -143.92623901 -63.05153656 64.89715576 -145.54676819
		 -62.6720047 57.97127533 -139.026016235 -66.29863739 55.34514999 -131.92216492 -72.72205353 56.054576874 -126.6497345
		 -79.97332001 61.77946091 -124.43362427 1.82437134 130.15281677 -91.61277771 4.52260351 129.16696167 -94.50958252
		 5.5325098 125.80859375 -96.087142944 4.097023964 121.54538727 -95.61782837 0.79458547 117.46611786 -90.74169922
		 -4.27621698 109.77406311 -101.65113831 -7.22614288 110.39118958 -96.55696106 0.10340881 118.60596466 -86.72164917
		 -4.35778809 122.78904724 -96.40322876 -3.17558289 127.68118286 -95.049438477 40.040405273 111.3524704 -95.48358154
		 29.093673706 94.9848938 -91.14559937 13.46710205 108.49565125 -82.6459198 17.48358154 118.0030975342 -83.2131958
		 55.8931427 100.99022675 -107.53898621 40.72242737 79.71686554 -102.18234253 68.42584229 85.60562134 -114.15610504
		 52.40486145 62.54521179 -108.69308472 78.77290344 73.88124084 -115.17572784 66.43974304 56.19834137 -111.80697632
		 89.22122192 67.18096924 -118.4664917 84.25042725 59.7424469 -115.20588684 36.90593719 102.27639771 -87.92727661
		 15.86872864 113.16525269 -80.040664673 50.77079773 90.29512787 -100.20072937 61.98881531 73.79381561 -106.20342255
		 73.79423523 65.60126495 -108.068313599 87.11894226 64.06010437 -111.92259216 32.18754578 112.91247559 -108.91253662
		 21.32788849 96.40007782 -103.93818665 14.83442688 120.38693237 -95.21665192 47.082443237 101.85734558 -123.66343689
		 33.40802002 80.40529633 -115.5947876 60.92611694 85.33768463 -131.45755005 46.28578186 62.28761673 -122.95413208
		 72.83137512 72.29405212 -134.41838074 61.63294983 54.86343765 -127.55438232 87.41503906 65.7066803 -128.17375183
		 82.049194336 57.88946915 -127.22164917 23.73095703 105.12186432 -110.99124146 9.98995209 116.11488342 -96.9747467
		 37.65113831 91.58448792 -124.18965149 50.89253235 73.36578369 -131.91569519 65.13926697 63.24862289 -136.15428162
		 83.40991211 60.89200974 -132.40921021 17.90673828 121.55800629 -89.79261017 38.16101837 115.43021393 -103.37030029
		 23.99488831 94.12953949 -96.92440796 53.95281982 106.065185547 -116.68762207 35.37623596 77.96899414 -108.076782227
		 66.057983398 88.99842072 -123.45303345 47.49766541 60.15300369 -114.98669434 76.73777771 76.85324097 -125.40539551
		 62.31098938 53.4571991 -118.96417236 88.042938232 67.82940674 -123.49868774 81.9907074 57.78450394 -120.8483429
		 94.99137878 54.54500198 -120.28413391 25.22490692 116.26322937 -102.21412659 30.011360168 118.29638672 -97.057518005
		 30.88637543 114.36458588 -88.92076111 27.82783508 106.79814148 -82.7795639 22.62125397 101.076148987 -86.69300842
		 18.54289246 101.035247803 -93.059318542 15.88897705 102.73627472 -99.8718338 18.14741516 110.078117371 -104.59820557
		 40.78803253 107.5432663 -117.85717773 47.49797058 111.1264267 -111.37049866 49.48408508 106.34694672 -102.77809143
		 45.30744934 96.18793488 -95.32155609 35.79271698 86.67599487 -97.67436218 30.4333725 85.26477051 -103.43486023
		 28.17998505 87.65723419 -110.71133423 31.63643646 98.069328308 -119.011550903 55.66357422 92.056724548 -129.20770264
		 61.48582458 95.91689301 -121.60020447 63.76928711 91.86750793 -112.36670685 57.29708862 80.053939819 -104.54292297
		 47.25102234 68.69097137 -106.64978027 42.16877747 66.45581055 -112.73414612 40.67292023 68.82180023 -120.48168945
		 45.45335388 80.27841949 -129.40971375 66.19761658 78.47229767 -133.73071289 70.77023315 82.79728699 -124.83259583
		 73.036224365 79.55466461 -114.63974762 67.17536926 68.9128952 -107.0834198 58.66691589 58.15874863 -110.31536865
		 54.00051879883 55.54418182 -117.09777832 53.080032349 57.33871078 -125.53253174 57.095718384 67.48274231 -134.56622314
		 80.31895447 69.002204895 -132.35124207 82.71083069 72.56031036 -124.82574463 84.30183411 70.74473572 -116.56776428
		 80.8167572 64.89715576 -109.39873505 75.42243958 57.97127533 -113.081893921 72.013931274 55.34514999 -120.29292297
		 71.76390076 56.054576874 -128.59931946 74.4393158 61.77946091 -135.69396973 -1.51623535 130.15281677 -90.98579407
		 -0.9422226 127.76144409 -86.12310791 -0.36065674 123.40504456 -83.68040466 0.1614151 119.47193909 -85.32830811
		 -1.64582062 116.098564148 -91.40226746 10.11680603 108.95765686 -89.1272583 7.92715454 110.39118958 -95.13056946
		 -4.33716583 118.60596466 -95.33633423 0.98795444 114.79186249 87.4389267 0.99568397 142.59747314 106.16867065
		 0.99861664 152.059936523 95.92977142 0.98607433 111.61035919 107.10406494 0.99282527 133.39402771 111.50653839
		 0.98560178 110.094779968 116.42812347 0.99022961 125.036071777 116.18945313 0.98648685 112.95117188 125.92970276
		 0.98830676 118.83683014 125.5949707 0.9873997 115.89817047 128.077392578 0.98781925 117.25796509 127.84055328
		 0.99726057 147.73156738 100.9418335 0.9906798 107.56307983 74.89431 0.99836487 153.42211914 78.7232666
		 -10.95112133 138.93341064 105.42193604 -9.62792778 114.95484924 96.48903656 -13.13601398 118.82275391 82.9441452
		 -12.4627943 149.20672607 87.6834259 -19.095155716 144.020782471 86.072593689 -5.5727787 130.48960876 108.86549377
		 -6.4549613 113.21442413 107.23575592 -3.77419329 123.65960693 116.31197357 -4.087664127 112.1254425 116.55703735
		 -2.52819538 118.19367981 125.96491241 -2.47214365 114.19683075 126.074012756 -20.961483 124.69643402 86.17948151
		 -14.56346703 120.87739563 97.95580292 -9.30969524 117.20410156 108.093040466;
	setAttr ".vt[1328:1493]" -6.53577948 115.70166016 115.17034149 -2.89999104 115.28086853 126.25068665
		 -16.40108871 160.69924927 93.52687836 -24.45080376 133.34651184 79.82318115 -14.82910347 135.041213989 89.29800415
		 -13.56610012 128.43301392 100.97464752 -9.27942562 123.55256653 108.80440521 -6.88286352 120.78247833 114.59126282
		 -2.95101309 116.50056458 126.27232361 -7.91234922 128.19952393 108.18540955 -9.83460426 131.67793274 101.18901825
		 -14.63134766 135.5072937 94.88754272 -11.73854065 144.25309753 96.71305847 -12.30490685 135.15611267 103.74201202
		 -14.44622612 137.34527588 95.31414032 -4.92980003 133.69525146 100.56352234 -7.14372778 136.29402161 92.39733124
		 -24.80168533 125.87856293 76.96557617 -13.72214317 125.95853424 73.7469101 -7.2223115 114.55131531 76.14992523
		 -9.56991482 147.64910889 71.81550598 -6.94765139 124.20295715 111.90865326 -3.82462931 127.1810379 112.72715759
		 0.9913975 128.80027771 113.33714294 0.9891867 121.67751312 120.29457855 -2.89301062 120.70386505 120.92294312
		 -5.53271866 117.091911316 120.4146347 -5.09482336 114.67865753 120.26699066 -3.53818417 112.34294128 121.076980591
		 0.98577183 110.64873505 121.22086334 -10.3120203 128.16960144 106.023429871 -11.69835281 126.066970825 104.89683533
		 -12.019482613 119.046356201 102.61888123 -7.97918558 113.93917847 101.71829224 0.98685652 113.69061279 97.4930954
		 -12.047895432 116.93444824 90.4056015 -17.81308174 122.99623871 92.41768646 -13.90402794 131.52703857 95.18659973
		 -13.56766701 134.42185974 98.85063171 -5.21445799 135.50700378 96.29179382 -13.4074049 137.12985229 99.8629303
		 -11.45468807 141.85231018 101.46835327 0.99641716 145.0181427 103.96968842 -8.90491009 132.46122742 106.058067322
		 -6.65507555 134.74517822 106.82415009 0.9942286 137.91603088 109.22192383 -22.13611984 138.69256592 83.18867493
		 -14.39022636 142.22038269 88.11777496 -14.47270393 140.71000671 95.76980591 -13.63775253 139.45890808 100.71808624
		 -12.60080147 137.067367554 104.61764526 -8.0073108673 133.18843079 106.14446259 -6.54780817 128.99259949 108.41159058
		 -6.15545416 125.38954926 112.27560425 -5.58143806 122.1931076 116.035224915 -4.78849554 119.35166931 120.86727905
		 -2.77169275 117.4993515 126.3070755 0.9880808 118.1035614 126.68144989 -6.79096746 117.63525391 115.10588074
		 -9.47984791 120.18711853 108.94032288 -12.034353256 122.48210144 103.95283508 -14.53691292 124.89450073 99.33049774
		 -16.44504356 127.6258316 93.42949677 -18.67513084 129.62017822 87.50453186 -25.48141289 129.0079498291 77.30166626
		 -16.11305809 145.55548096 80.46353912 -18.83215523 139.42851257 77.85917664 -20.88857269 133.78633118 75.88285828
		 -21.67122459 129.79940796 74.85644531 -21.10610771 126.11820984 73.9098587 -18.18794632 122.46478271 85.0097732544
		 -15.90236473 120.43915558 91.62886047 -12.86870098 118.3533783 97.49388123 -10.68344116 116.8853302 102.24772644
		 -8.39099598 115.47927856 107.77864838 -5.76535559 114.24030304 115.6304245 0.99875176 153.82752991 88.91204071
		 -6.44463491 156.74578857 85.026237488 -13.49025345 155.5186615 81.44364929 -14.74828529 130.72923279 71.61341095
		 -14.13011932 134.39085388 71.0065078735 -12.72494411 140.93782043 70.60246277 12.94019508 138.92599487 105.42195129
		 11.60236549 114.95140839 96.48959351 15.11265373 119.014457703 82.9659729 14.45823669 149.1987915 87.68315125
		 21.087387085 144.010070801 86.071617126 7.55658865 130.48554993 108.86549377 8.42808723 113.21231079 107.23625183
		 5.75379324 123.65678406 116.3119812 6.060110092 112.123703 116.55728912 4.50439405 118.19174957 125.96492767
		 4.44587374 114.19507599 126.074066162 22.94173431 124.70079803 86.17895508 16.54132843 120.87220001 97.9561615
		 11.28528976 117.20084381 108.093467712 8.51044178 115.69940186 115.17070007 4.87440634 115.27908325 126.25076294
		 18.40367699 160.68875122 93.52663422 26.44389343 133.34080505 79.81970215 16.81575584 135.035018921 89.29698181
		 15.54863834 128.42451477 100.97460175 11.25893211 123.54708862 108.8044281 8.86067867 120.77858734 114.59133148
		 4.92618036 116.49868011 126.27240753 9.89475346 128.19418335 108.18539429 11.81915379 131.67132568 101.18900299
		 16.61828041 135.49859619 94.88731384 13.73091125 144.24539185 96.71298981 14.29163265 135.14785767 103.74199677
		 16.43431282 137.33641052 95.31393433 6.91560268 133.69161987 100.56351471 9.13115025 136.28968811 92.39712524
		 27.092079163 125.88108063 76.96337891 15.70483494 126.38334656 73.64724731 9.20182514 115.34485626 76.36057281
		 11.55977917 147.65774536 71.79772186 8.92755795 124.1984024 111.90866089 5.80642128 127.17808533 112.72715759
		 4.87077665 120.70169067 120.92295837 7.50822401 117.088996887 120.41475677 7.068860054 114.67628479 120.26717377
		 5.51077175 112.34080505 121.077072144 12.29439926 128.1628418 106.023422241 13.67941761 126.059883118 104.89682007
		 13.99620438 119.041702271 102.61924744 9.95275402 113.93630981 101.71882629 14.023686409 116.94893646 90.40904236
		 19.7997551 122.99494934 92.41798401 15.88848495 131.51911926 95.18639374 15.5539217 134.4131012 98.85057831
		 7.20139456 135.50326538 96.29177094 15.39534283 137.12098694 99.86289978 13.44557381 141.84457397 101.46835327
		 10.88994789 132.45510864 106.058059692 8.64153671 134.74041748 106.82416534 24.12502861 138.6829071 83.1865387
		 16.3813324 142.21232605 88.11706543 16.462883 140.70109558 95.7695694 15.62713623 139.44985962 100.71809387
		 14.58871651 137.058914185 104.61763763 9.99280262 133.18284607 106.14447021 8.53070259 128.98797607 108.41158295
		 8.13612556 125.38526154 112.27560425 7.56011438 122.18945313 116.035232544 6.76541138 119.34856415 120.8673172
		 4.74745846 117.49731445 126.30711365 8.76684093 117.63236237 115.10611725 11.45726967 120.18267822 108.94049072
		 14.013195992 122.47608185 103.95292664 16.51726532 124.88737488 99.33049011 18.42709732 127.61969757 93.42913055
		 20.67339134 129.61912537 87.50278473 27.46432114 129.0059814453 77.2983551 18.10525513 145.55158997 80.45843506
		 20.82032013 139.43467712 77.84778595 22.87327194 133.80419922 75.86864471 23.66838646 129.80773926 74.84965515
		 23.086456299 126.17318726 73.89771271 20.18207741 122.52478027 85.010520935 17.88006592 120.45198822 91.63052368
		 14.8449955 118.34950256 97.49449921 12.65883636 116.88192749 102.24828339 10.36551762 115.47687531 107.77919769
		 7.73913431 114.23866272 115.630867 8.44394493 156.74118042 85.026199341;
	setAttr ".vt[1494:1549]" 15.4886322 155.5100708 81.44325256 16.72909546 130.8755188 71.52841949
		 16.11091995 134.56774902 70.88635254 14.70969677 141.013214111 70.51969147 25.37771797 129.82304382 79.1498642
		 28.17567062 131.32025146 77.52213287 31.5935688 131.16873169 74.57424164 34.056674957 128.60028076 71.26132965
		 30.94525337 129.085693359 74.11149597 27.85351563 128.24674988 76.30672455 25.62849426 126.8432312 77.49835968
		 31.61271477 129.92704773 74.75157166 28.61693573 129.43310547 77.62968445 26.10276222 127.98318481 79.03440094
		 30.92391777 130.32319641 73.9316864 27.41127014 130.12718201 76.19445801 24.90460014 128.67324829 77.60808563
		 23.8592205 129.93888855 80.11953735 26.040672302 132.64100647 79.30944824 29.097763062 134.59770203 76.62138367
		 31.78757668 134.33851624 72.57803345 28.93610001 132.79307556 75.32138062 26.36373138 130.3609314 76.91798401
		 24.67100716 128.067840576 77.38033295 29.43627548 133.44287109 76.26435852 26.9372921 131.059967041 78.62679291
		 24.99666214 128.56478882 79.25899506 28.59690475 133.9434967 75.67365265 25.4680481 131.93647766 77.59282684
		 23.53655434 129.4359436 78.23149109 -21.94195747 129.92855835 80.12521362 -24.12172699 132.62367249 79.32042694
		 -27.17759705 134.56713867 76.643013 -29.86757278 134.3062439 72.60565948 -27.017049789 132.76477051 75.34005737
		 -24.44620323 130.34971619 76.92573547 -22.75491524 128.064453125 77.38382721 -27.51681137 133.40719604 76.28652954
		 -25.01931572 131.039535522 78.63739014 -23.08026123 128.55718994 79.26334381 -26.67713737 133.90948486 75.6964798
		 -23.54952621 131.91749573 77.60429382 -21.61960983 129.42910767 78.23636627 -23.460495 129.78675842 79.16222382
		 -26.25750542 131.26933289 77.54351807 -29.67545509 131.097381592 74.60684204 -32.14013672 128.52705383 71.29065704
		 -29.028429031 129.018463135 74.13583374 -25.93724823 128.21083069 76.31817627 -23.71313095 126.82415009 77.50352478
		 -29.69534683 129.84541321 74.78257751 -26.69990921 129.37646484 77.64791107 -24.18668175 127.95320129 79.042503357
		 -29.0063266754 130.24765015 73.96353912 -25.49383354 130.076675415 76.21396637 -22.98810005 128.64726257 77.61694336;
	setAttr -s 3108 ".ed";
	setAttr ".ed[0:165]"  1 0 1 89 1 1 0 96 1 53 54 1 54 39 1 39 3 1 3 53 1 52 53 1
		 3 14 1 14 52 1 50 51 1 51 2 1 2 38 1 38 50 1 58 59 1 59 6 1 6 40 1 40 58 1 61 62 1
		 62 41 1 41 7 1 7 61 1 60 61 1 7 16 1 16 60 1 66 67 1 67 8 1 8 42 1 42 66 1 68 69 1
		 69 9 1 9 17 1 17 68 1 69 70 1 70 43 1 43 9 1 74 75 1 75 10 1 10 44 1 44 74 1 76 77 1
		 77 11 1 11 18 1 18 76 1 77 78 1 78 45 1 45 11 1 82 83 1 83 12 1 12 46 1 46 82 1 84 85 1
		 85 13 1 13 19 1 19 84 1 85 86 1 86 47 1 47 13 1 12 19 1 19 48 1 48 12 1 47 48 1 48 13 1
		 48 46 1 83 84 1 75 76 1 18 10 1 67 68 1 17 8 1 59 60 1 16 6 1 51 52 1 14 2 1 5 37 1
		 37 89 1 90 5 1 4 15 1 15 91 1 92 4 1 94 4 1 15 5 1 55 21 1 21 39 1 54 55 1 56 31 1
		 31 21 1 55 56 1 38 20 1 20 49 1 49 50 1 40 23 1 23 57 1 57 58 1 63 24 1 24 41 1 62 63 1
		 64 33 1 33 24 1 63 64 1 42 25 1 25 65 1 65 66 1 72 34 1 34 26 1 26 71 1 71 72 1 26 43 1
		 70 71 1 44 27 1 27 73 1 73 74 1 80 35 1 35 28 1 28 79 1 79 80 1 28 45 1 78 79 1 46 29 1
		 29 81 1 81 82 1 88 36 1 36 30 1 30 87 1 87 88 1 30 47 1 86 87 1 29 48 1 48 36 1 36 29 1
		 30 48 1 88 81 1 80 73 1 27 35 1 72 65 1 25 34 1 64 57 1 23 33 1 56 49 1 20 31 1 22 1 1
		 37 22 1 0 32 1 32 95 1 22 32 1 37 50 1 49 22 1 5 51 1 15 52 1 4 53 1 94 54 1 95 55 1
		 32 56 1 38 58 1 57 20 1 2 59 1 14 60 1 3 61 1 39 62 1 21 63 1 31 64 1 40 66 1 65 23 1
		 6 67 1 16 68 1 7 69 1 41 70 1;
	setAttr ".ed[166:331]" 24 71 1 33 72 1 42 74 1 73 25 1 8 75 1 17 76 1 9 77 1
		 43 78 1 26 79 1 34 80 1 44 82 1 81 27 1 10 83 1 18 84 1 11 85 1 45 86 1 28 87 1 35 88 1
		 90 89 1 92 91 1 93 92 1 93 94 1 91 90 1 95 96 1 95 94 1 93 96 1 97 98 1 98 105 1
		 105 106 1 106 97 0 98 99 1 99 104 1 104 105 1 101 104 1 104 100 1 100 101 1 102 105 1
		 101 102 1 102 103 1 103 106 0 99 100 1 97 109 0 109 108 1 108 98 1 108 107 1 107 99 1
		 100 107 1 107 101 1 108 102 1 109 103 0 110 111 1 111 118 1 118 119 1 119 110 0 111 112 1
		 112 117 1 117 118 1 114 117 1 117 113 1 113 114 1 115 118 1 114 115 1 115 116 1 116 119 0
		 112 113 1 110 122 0 122 121 1 121 111 1 121 120 1 120 112 1 113 120 1 120 114 1 121 115 1
		 122 116 0 123 124 1 124 131 1 131 132 1 132 123 0 124 125 1 125 130 1 130 131 1 127 130 1
		 130 126 1 126 127 1 128 131 1 127 128 1 128 129 1 129 132 0 125 126 1 123 135 0 135 134 1
		 134 124 1 134 133 1 133 125 1 126 133 1 133 127 1 134 128 1 135 129 0 136 137 1 137 144 1
		 144 145 1 145 136 0 137 138 1 138 143 1 143 144 1 140 143 1 143 139 1 139 140 1 141 144 1
		 140 141 1 141 142 1 142 145 0 138 139 1 136 148 0 148 147 1 147 137 1 147 146 1 146 138 1
		 139 146 1 146 140 1 147 141 1 148 142 0 149 150 1 150 157 1 157 158 1 158 149 0 150 151 1
		 151 156 1 156 157 1 153 156 1 156 152 1 152 153 1 154 157 1 153 154 1 154 155 1 155 158 0
		 151 152 1 149 161 0 161 160 1 160 150 1 160 159 1 159 151 1 152 159 1 159 153 1 160 154 1
		 161 155 0 162 163 1 163 170 1 170 171 1 171 162 0 163 164 1 164 169 1 169 170 1 166 169 1
		 169 165 1 165 166 1 167 170 1 166 167 1 167 168 1 168 171 0 164 165 1 162 174 0 174 173 1
		 173 163 1 173 172 1 172 164 1;
	setAttr ".ed[332:497]" 165 172 1 172 166 1 173 167 1 174 168 0 179 175 1 180 179 1
		 177 178 1 182 176 1 175 181 1 181 191 1 183 189 1 184 187 1 176 188 1 188 177 1 189 184 1
		 185 190 1 191 183 1 186 185 1 206 327 1 327 328 1 328 208 1 208 206 1 179 194 1 194 196 1
		 196 175 1 180 195 1 195 194 1 192 193 1 193 178 1 177 192 1 197 176 1 182 199 1 199 197 1
		 196 198 1 198 181 1 228 226 1 226 207 1 207 218 1 218 228 1 198 393 1 393 191 1 394 395 1
		 395 323 1 323 199 1 199 394 1 183 200 1 200 391 1 391 189 1 438 201 1 201 392 1 392 437 1
		 437 438 1 396 495 1 397 274 1 274 494 1 297 396 1 198 209 1 209 395 1 395 393 1 211 214 1
		 214 196 1 194 211 1 446 447 1 447 327 1 206 446 1 192 206 1 208 193 1 273 272 1 272 271 1
		 271 204 1 204 273 1 184 202 1 202 205 1 205 187 1 214 213 1 213 198 1 211 210 1 210 215 1
		 215 214 1 329 330 1 330 324 1 324 221 1 221 329 1 215 212 1 212 213 1 197 329 1 221 227 1
		 227 197 1 222 325 1 325 326 1 326 220 1 220 222 1 324 325 1 222 221 1 220 226 1 228 222 1
		 224 223 1 223 390 1 390 383 1 383 224 1 228 227 1 217 224 1 383 384 1 384 217 1 192 445 1
		 445 446 1 270 219 1 219 386 1 386 387 1 387 270 1 223 218 1 218 389 1 389 390 1 207 388 1
		 388 389 1 194 216 1 216 210 1 420 421 1 421 463 1 241 237 1 237 456 1 427 420 1 237 244 1
		 244 457 1 422 423 1 423 461 1 243 238 1 238 462 1 423 424 1 424 460 1 240 243 1 424 425 1
		 425 459 1 242 240 1 425 426 1 426 458 1 239 242 1 426 427 1 244 239 1 421 422 1 238 241 1
		 237 455 1 428 429 1 429 454 1 243 450 1 433 434 1 434 449 1 240 451 1 432 433 1 242 452 1
		 431 432 1 239 453 1 430 431 1 429 430 1 434 435 1 435 448 1 435 428 1 269 262 1 262 255 1
		 255 264 1 264 269 1 268 261 1 261 253 1 253 258 1 258 268 1 267 260 1;
	setAttr ".ed[498:663]" 260 254 1 254 257 1 257 267 1 266 263 1 263 256 1 256 259 1
		 259 266 1 265 258 1 253 257 1 257 265 1 363 364 1 364 267 1 267 261 1 261 363 1 360 361 1
		 361 262 1 269 360 1 362 363 1 268 362 1 259 265 1 254 259 1 256 264 1 264 265 1 255 258 1
		 260 266 1 359 360 1 269 263 1 263 359 1 366 359 1 266 366 1 361 362 1 268 262 1 364 365 1
		 365 260 1 365 366 1 212 331 1 331 198 1 195 439 1 439 216 1 192 270 1 270 445 1 207 270 1
		 387 388 1 223 227 1 177 219 1 219 225 1 225 385 1 385 386 1 224 197 1 217 176 1 225 217 1
		 384 385 1 225 188 1 397 398 1 398 275 1 275 274 1 273 205 1 202 272 1 271 497 1 276 277 1
		 277 496 1 398 465 1 399 296 1 296 466 1 399 400 1 400 294 1 294 296 1 400 401 1 401 295 1
		 295 294 1 402 490 1 403 285 1 285 489 1 300 402 1 275 339 1 339 340 1 340 274 1 202 436 1
		 436 271 1 295 336 1 336 337 1 337 294 1 411 412 1 412 358 1 358 353 1 353 411 1 406 407 1
		 407 283 1 283 282 1 282 406 1 405 406 1 282 301 1 301 405 1 403 404 1 404 284 1 284 285 1
		 418 419 1 419 291 1 291 290 1 290 418 1 409 410 1 410 354 1 354 355 1 355 409 1 408 488 1
		 355 487 1 356 408 1 412 413 1 413 357 1 357 358 1 291 304 1 304 321 1 321 311 1 311 291 1
		 417 418 1 290 305 1 305 417 1 415 416 1 416 292 1 292 293 1 293 415 1 414 484 1 293 483 1
		 304 414 1 419 414 1 416 476 1 305 477 1 292 320 1 320 313 1 313 293 1 413 408 1 356 357 1
		 404 470 1 301 471 1 410 472 1 353 473 1 296 338 1 338 467 1 407 402 1 300 283 1 340 493 1
		 335 297 1 337 338 1 295 297 1 335 336 1 401 396 1 322 311 1 311 307 1 307 312 1 312 322 1
		 321 482 1 313 309 1 309 481 1 314 321 1 320 315 1 315 308 1 308 316 1 316 320 1 319 310 1
		 310 306 1 306 317 1 317 319 1 318 314 1 309 316 1 316 480 1 317 318 1;
	setAttr ".ed[664:829]" 308 479 1 306 312 1 312 318 1 307 314 1 315 478 1 290 310 1
		 319 305 1 310 322 1 322 290 1 315 292 1 204 186 1 209 323 1 212 324 1 330 331 1 215 325 1
		 210 326 1 216 327 1 447 216 1 197 332 1 332 329 1 332 333 1 333 330 1 333 334 1 334 331 1
		 334 198 1 199 332 1 323 333 1 209 334 1 335 298 1 298 279 1 279 336 1 279 278 1 278 337 1
		 278 299 1 299 338 1 299 468 1 280 339 1 280 281 1 281 340 1 281 492 1 280 342 1 342 341 1
		 341 281 1 299 343 1 343 469 1 278 344 1 344 343 1 279 345 1 345 344 1 298 346 1 346 345 1
		 341 491 1 286 287 1 287 348 1 348 347 1 347 286 1 287 302 1 302 349 1 349 348 1 302 486 1
		 289 350 1 350 485 1 289 288 1 288 351 1 351 350 1 288 474 1 303 352 1 352 475 1 303 286 1
		 347 352 1 353 303 1 288 354 1 289 355 1 302 356 1 287 357 1 286 358 1 245 249 1 249 360 1
		 359 245 1 249 246 1 246 361 1 246 251 1 251 362 1 251 248 1 248 363 1 248 250 1 250 364 1
		 250 247 1 247 365 1 247 252 1 252 366 1 252 245 1 368 367 1 367 252 1 247 368 1 369 368 1
		 250 369 1 370 369 1 248 370 1 371 370 1 251 371 1 372 371 1 246 372 1 373 372 1 249 373 1
		 374 373 1 245 374 1 367 374 1 232 234 1 234 376 1 376 375 1 375 232 1 234 231 1 231 377 1
		 377 376 1 231 236 1 236 378 1 378 377 1 236 229 1 229 379 1 379 378 1 229 233 1 233 380 1
		 380 379 1 233 230 1 230 381 1 381 380 1 230 235 1 235 382 1 382 381 1 235 232 1 375 382 1
		 383 235 1 230 384 1 233 385 1 229 386 1 236 387 1 231 388 1 234 389 1 232 390 1 391 202 1
		 392 190 1 185 203 1 203 392 1 436 437 1 203 436 1 393 200 1 438 395 1 394 201 1 277 397 1
		 396 204 1 276 398 1 276 464 1 203 399 1 185 400 1 186 401 1 341 403 1 402 346 1 342 404 1
		 343 405 1 344 406 1 345 407 1 285 409 1 408 300 1 284 410 1 301 411 1;
	setAttr ".ed[830:995]" 282 412 1 283 413 1 350 415 1 414 349 1 351 416 1 352 417 1
		 347 418 1 348 419 1 380 421 1 420 379 1 381 422 1 382 423 1 375 424 1 376 425 1 377 426 1
		 378 427 1 428 374 1 367 429 1 368 430 1 369 431 1 370 432 1 371 433 1 372 434 1 373 435 1
		 391 437 1 200 438 1 439 328 1 394 440 1 440 441 1 441 201 1 182 440 1 190 441 1 226 442 1
		 442 270 1 220 443 1 443 442 1 326 444 1 444 443 1 216 444 1 442 445 1 443 446 1 444 447 1
		 448 241 1 449 238 1 448 449 1 450 433 1 449 450 1 451 432 1 450 451 1 452 431 1 451 452 1
		 453 430 1 452 453 1 454 244 1 453 454 1 455 428 1 454 455 1 455 448 1 456 420 1 457 427 1
		 456 457 1 458 239 1 457 458 1 459 242 1 458 459 1 460 240 1 459 460 1 461 243 1 460 461 1
		 462 422 1 461 462 1 463 241 1 462 463 1 463 456 1 464 203 1 465 399 1 464 465 1 466 275 1
		 465 466 1 467 339 1 466 467 1 468 280 1 467 468 1 469 342 1 468 469 1 470 405 1 469 470 1
		 471 284 1 470 471 1 472 411 1 471 472 1 473 354 1 472 473 1 474 303 1 473 474 1 475 351 1
		 474 475 1 476 417 1 475 476 1 477 292 1 476 477 1 478 319 1 477 478 1 479 317 1 478 479 1
		 480 318 1 479 480 1 481 314 1 480 481 1 482 313 1 481 482 1 483 304 1 482 483 1 484 415 1
		 483 484 1 485 349 1 484 485 1 486 289 1 485 486 1 487 356 1 486 487 1 488 409 1 487 488 1
		 489 300 1 488 489 1 490 403 1 489 490 1 491 346 1 490 491 1 492 298 1 491 492 1 493 335 1
		 492 493 1 494 297 1 493 494 1 495 397 1 494 495 1 496 204 1 495 496 1 497 276 1 496 497 1
		 497 498 1 498 464 1 498 436 1 513 634 1 634 635 1 635 515 1 515 513 1 179 501 1 501 503 1
		 503 175 1 180 502 1 502 501 1 499 500 1 500 178 1 177 499 1 504 176 1 182 506 1 506 504 1
		 503 505 1 505 181 1 535 533 1 533 514 1 514 525 1 525 535 1 505 700 1;
	setAttr ".ed[996:1161]" 700 191 1 701 702 1 702 630 1 630 506 1 506 701 1 183 507 1
		 507 698 1 698 189 1 745 508 1 508 699 1 699 744 1 744 745 1 703 800 1 704 581 1 581 799 1
		 604 703 1 505 516 1 516 702 1 702 700 1 518 521 1 521 503 1 501 518 1 751 752 1 752 634 1
		 513 751 1 499 513 1 515 500 1 580 579 1 579 578 1 578 511 1 511 580 1 184 509 1 509 512 1
		 512 187 1 521 520 1 520 505 1 518 517 1 517 522 1 522 521 1 636 637 1 637 631 1 631 528 1
		 528 636 1 522 519 1 519 520 1 504 636 1 528 534 1 534 504 1 529 632 1 632 633 1 633 527 1
		 527 529 1 631 632 1 529 528 1 527 533 1 535 529 1 531 530 1 530 697 1 697 690 1 690 531 1
		 535 534 1 524 531 1 690 691 1 691 524 1 499 750 1 750 751 1 577 526 1 526 693 1 693 694 1
		 694 577 1 530 525 1 525 696 1 696 697 1 514 695 1 695 696 1 501 523 1 523 517 1 727 728 1
		 728 768 1 548 544 1 544 761 1 734 727 1 544 551 1 551 762 1 729 730 1 730 766 1 550 545 1
		 545 767 1 730 731 1 731 765 1 547 550 1 731 732 1 732 764 1 549 547 1 732 733 1 733 763 1
		 546 549 1 733 734 1 551 546 1 728 729 1 545 548 1 544 760 1 735 736 1 736 759 1 550 755 1
		 740 741 1 741 754 1 547 756 1 739 740 1 549 757 1 738 739 1 546 758 1 737 738 1 736 737 1
		 741 742 1 742 753 1 742 735 1 576 569 1 569 562 1 562 571 1 571 576 1 575 568 1 568 560 1
		 560 565 1 565 575 1 574 567 1 567 561 1 561 564 1 564 574 1 573 570 1 570 563 1 563 566 1
		 566 573 1 572 565 1 560 564 1 564 572 1 670 671 1 671 574 1 574 568 1 568 670 1 667 668 1
		 668 569 1 576 667 1 669 670 1 575 669 1 566 572 1 561 566 1 563 571 1 571 572 1 562 565 1
		 567 573 1 666 667 1 576 570 1 570 666 1 673 666 1 573 673 1 668 669 1 575 569 1 671 672 1
		 672 567 1 672 673 1 519 638 1 638 505 1 502 746 1 746 523 1 499 577 1;
	setAttr ".ed[1162:1327]" 577 750 1 514 577 1 694 695 1 530 534 1 177 526 1 526 532 1
		 532 692 1 692 693 1 531 504 1 524 176 1 532 524 1 691 692 1 532 188 1 704 705 1 705 582 1
		 582 581 1 580 512 1 509 579 1 578 802 1 583 584 1 584 801 1 705 770 1 706 603 1 603 771 1
		 706 707 1 707 601 1 601 603 1 707 708 1 708 602 1 602 601 1 709 795 1 710 592 1 592 794 1
		 607 709 1 582 646 1 646 647 1 647 581 1 509 743 1 743 578 1 602 643 1 643 644 1 644 601 1
		 718 719 1 719 665 1 665 660 1 660 718 1 713 714 1 714 590 1 590 589 1 589 713 1 712 713 1
		 589 608 1 608 712 1 710 711 1 711 591 1 591 592 1 725 726 1 726 598 1 598 597 1 597 725 1
		 716 717 1 717 661 1 661 662 1 662 716 1 715 793 1 662 792 1 663 715 1 719 720 1 720 664 1
		 664 665 1 598 611 1 611 628 1 628 618 1 618 598 1 724 725 1 597 612 1 612 724 1 722 723 1
		 723 599 1 599 600 1 600 722 1 721 789 1 600 788 1 611 721 1 726 721 1 723 781 1 612 782 1
		 599 627 1 627 620 1 620 600 1 720 715 1 663 664 1 711 775 1 608 776 1 717 777 1 660 778 1
		 603 645 1 645 772 1 714 709 1 607 590 1 647 798 1 642 604 1 644 645 1 602 604 1 642 643 1
		 708 703 1 629 618 1 618 614 1 614 619 1 619 629 1 628 787 1 620 616 1 616 786 1 621 628 1
		 627 622 1 622 615 1 615 623 1 623 627 1 626 617 1 617 613 1 613 624 1 624 626 1 625 621 1
		 616 623 1 623 785 1 624 625 1 615 784 1 613 619 1 619 625 1 614 621 1 622 783 1 597 617 1
		 626 612 1 617 629 1 629 597 1 622 599 1 511 186 1 516 630 1 519 631 1 637 638 1 522 632 1
		 517 633 1 523 634 1 752 523 1 504 639 1 639 636 1 639 640 1 640 637 1 640 641 1 641 638 1
		 641 505 1 506 639 1 630 640 1 516 641 1 642 605 1 605 586 1 586 643 1 586 585 1 585 644 1
		 585 606 1 606 645 1 606 773 1 587 646 1 587 588 1 588 647 1 588 797 1;
	setAttr ".ed[1328:1493]" 587 649 1 649 648 1 648 588 1 606 650 1 650 774 1 585 651 1
		 651 650 1 586 652 1 652 651 1 605 653 1 653 652 1 648 796 1 593 594 1 594 655 1 655 654 1
		 654 593 1 594 609 1 609 656 1 656 655 1 609 791 1 596 657 1 657 790 1 596 595 1 595 658 1
		 658 657 1 595 779 1 610 659 1 659 780 1 610 593 1 654 659 1 660 610 1 595 661 1 596 662 1
		 609 663 1 594 664 1 593 665 1 552 556 1 556 667 1 666 552 1 556 553 1 553 668 1 553 558 1
		 558 669 1 558 555 1 555 670 1 555 557 1 557 671 1 557 554 1 554 672 1 554 559 1 559 673 1
		 559 552 1 675 674 1 674 559 1 554 675 1 676 675 1 557 676 1 677 676 1 555 677 1 678 677 1
		 558 678 1 679 678 1 553 679 1 680 679 1 556 680 1 681 680 1 552 681 1 674 681 1 539 541 1
		 541 683 1 683 682 1 682 539 1 541 538 1 538 684 1 684 683 1 538 543 1 543 685 1 685 684 1
		 543 536 1 536 686 1 686 685 1 536 540 1 540 687 1 687 686 1 540 537 1 537 688 1 688 687 1
		 537 542 1 542 689 1 689 688 1 542 539 1 682 689 1 690 542 1 537 691 1 540 692 1 536 693 1
		 543 694 1 538 695 1 541 696 1 539 697 1 698 509 1 699 190 1 185 510 1 510 699 1 743 744 1
		 510 743 1 700 507 1 745 702 1 701 508 1 584 704 1 703 511 1 583 705 1 583 769 1 510 706 1
		 185 707 1 186 708 1 648 710 1 709 653 1 649 711 1 650 712 1 651 713 1 652 714 1 592 716 1
		 715 607 1 591 717 1 608 718 1 589 719 1 590 720 1 657 722 1 721 656 1 658 723 1 659 724 1
		 654 725 1 655 726 1 687 728 1 727 686 1 688 729 1 689 730 1 682 731 1 683 732 1 684 733 1
		 685 734 1 735 681 1 674 736 1 675 737 1 676 738 1 677 739 1 678 740 1 679 741 1 680 742 1
		 698 744 1 507 745 1 746 635 1 701 440 1 441 508 1 533 747 1 747 577 1 527 748 1 748 747 1
		 633 749 1 749 748 1 523 749 1 747 750 1 748 751 1 749 752 1 753 548 1;
	setAttr ".ed[1494:1659]" 754 545 1 753 754 1 755 740 1 754 755 1 756 739 1 755 756 1
		 757 738 1 756 757 1 758 737 1 757 758 1 759 551 1 758 759 1 760 735 1 759 760 1 760 753 1
		 761 727 1 762 734 1 761 762 1 763 546 1 762 763 1 764 549 1 763 764 1 765 547 1 764 765 1
		 766 550 1 765 766 1 767 729 1 766 767 1 768 548 1 767 768 1 768 761 1 769 510 1 770 706 1
		 769 770 1 771 582 1 770 771 1 772 646 1 771 772 1 773 587 1 772 773 1 774 649 1 773 774 1
		 775 712 1 774 775 1 776 591 1 775 776 1 777 718 1 776 777 1 778 661 1 777 778 1 779 610 1
		 778 779 1 780 658 1 779 780 1 781 724 1 780 781 1 782 599 1 781 782 1 783 626 1 782 783 1
		 784 624 1 783 784 1 785 625 1 784 785 1 786 621 1 785 786 1 787 620 1 786 787 1 788 611 1
		 787 788 1 789 722 1 788 789 1 790 656 1 789 790 1 791 596 1 790 791 1 792 663 1 791 792 1
		 793 716 1 792 793 1 794 607 1 793 794 1 795 710 1 794 795 1 796 653 1 795 796 1 797 605 1
		 796 797 1 798 642 1 797 798 1 799 604 1 798 799 1 800 704 1 799 800 1 801 511 1 800 801 1
		 802 583 1 801 802 1 802 803 1 803 769 1 803 743 1 812 911 1 911 912 1 912 814 0 814 812 1
		 179 806 1 806 808 1 808 175 1 180 807 0 807 806 1 804 805 1 805 178 0 177 804 1 809 176 1
		 182 811 1 811 809 1 808 810 1 810 181 1 834 832 1 832 813 1 813 824 1 824 834 1 810 961 1
		 961 191 1 962 963 1 963 907 1 907 811 1 811 962 1 810 815 1 815 963 1 963 961 1 817 820 1
		 820 808 1 806 817 1 994 995 1 995 911 1 812 994 1 804 812 1 814 805 0 820 819 1 819 810 1
		 817 816 1 816 821 1 821 820 1 913 914 1 914 908 1 908 827 1 827 913 1 821 818 1 818 819 1
		 809 913 1 827 833 1 833 809 1 828 909 1 909 910 1 910 826 1 826 828 1 908 909 1 828 827 1
		 826 832 1 834 828 1 830 829 1 829 960 1 960 953 1 953 830 1 834 833 1;
	setAttr ".ed[1660:1825]" 823 830 1 953 954 1 954 823 1 804 993 1 993 994 1 876 825 1
		 825 956 1 956 957 1 957 876 1 829 824 1 824 959 1 959 960 1 813 958 1 958 959 1 806 822 1
		 822 816 1 973 974 1 974 1011 1 847 843 1 843 1004 1 980 973 1 843 850 1 850 1005 1
		 975 976 1 976 1009 1 849 844 1 844 1010 1 976 977 1 977 1008 1 846 849 1 977 978 1
		 978 1007 1 848 846 1 978 979 1 979 1006 1 845 848 1 979 980 1 850 845 1 974 975 1
		 844 847 1 843 1003 1 981 982 1 982 1002 1 849 998 1 986 987 1 987 997 1 846 999 1
		 985 986 1 848 1000 1 984 985 1 845 1001 1 983 984 1 982 983 1 987 988 1 988 996 1
		 988 981 1 875 868 1 868 861 1 861 870 1 870 875 1 874 867 1 867 859 1 859 864 1 864 874 1
		 873 866 1 866 860 1 860 863 1 863 873 1 872 869 1 869 862 1 862 865 1 865 872 1 871 864 1
		 859 863 1 863 871 1 933 934 1 934 873 1 873 867 1 867 933 1 930 931 1 931 868 1 875 930 1
		 932 933 1 874 932 1 865 871 1 860 865 1 862 870 1 870 871 1 861 864 1 866 872 1 929 930 1
		 875 869 1 869 929 1 936 929 1 872 936 1 931 932 1 874 868 1 934 935 1 935 866 1 935 936 1
		 818 915 1 915 810 1 807 989 0 989 822 1 804 876 1 876 993 1 813 876 1 957 958 1 829 833 1
		 177 825 1 825 831 1 831 955 1 955 956 1 830 809 1 823 176 1 831 823 1 954 955 1 831 188 1
		 964 285 1 966 406 1 301 966 1 964 965 1 965 878 1 878 285 1 971 972 1 972 883 1 883 882 1
		 882 971 1 410 926 1 926 927 1 927 409 1 927 1027 1 928 408 1 883 888 1 888 905 1
		 905 895 1 895 883 1 970 971 1 882 889 1 889 970 1 968 969 1 969 884 1 884 885 1 885 968 1
		 967 1024 1 885 1023 1 888 967 1 972 967 1 969 1016 1 889 1017 1 884 904 1 904 897 1
		 897 885 1 928 357 1 965 1012 1 353 1013 1 906 895 1 895 891 1 891 896 1 896 906 1
		 905 1022 1 897 893 1 893 1021 1 898 905 1 904 899 1 899 892 1;
	setAttr ".ed[1826:1991]" 892 900 1 900 904 1 903 894 1 894 890 1 890 901 1 901 903 1
		 902 898 1 893 900 1 900 1020 1 901 902 1 892 1019 1 890 896 1 896 902 1 891 898 1
		 899 1018 1 882 894 1 903 889 1 894 906 1 906 882 1 899 884 1 815 907 1 818 908 1
		 914 915 1 821 909 1 816 910 1 822 911 1 995 822 1 809 916 1 916 913 1 916 917 1 917 914 1
		 917 918 1 918 915 1 918 810 1 811 916 1 907 917 1 815 918 1 280 877 1 877 340 1 877 492 1
		 342 919 1 919 877 1 919 491 1 286 879 1 879 921 1 921 920 1 920 286 1 879 886 1 886 922 1
		 922 921 1 886 1026 1 881 923 1 923 1025 1 881 880 1 880 924 1 924 923 1 880 1014 1
		 887 925 1 925 1015 1 887 286 1 920 925 1 353 887 1 880 926 1 881 927 1 886 928 1
		 879 357 1 851 855 1 855 930 1 929 851 1 855 852 1 852 931 1 852 857 1 857 932 1 857 854 1
		 854 933 1 854 856 1 856 934 1 856 853 1 853 935 1 853 858 1 858 936 1 858 851 1 938 937 1
		 937 858 1 853 938 1 939 938 1 856 939 1 940 939 1 854 940 1 941 940 1 857 941 1 942 941 1
		 852 942 1 943 942 1 855 943 1 944 943 1 851 944 1 937 944 1 838 840 1 840 946 1 946 945 1
		 945 838 1 840 837 1 837 947 1 947 946 1 837 842 1 842 948 1 948 947 1 842 835 1 835 949 1
		 949 948 1 835 839 1 839 950 1 950 949 1 839 836 1 836 951 1 951 950 1 836 841 1 841 952 1
		 952 951 1 841 838 1 945 952 1 953 841 1 836 954 1 839 955 1 835 956 1 842 957 1 837 958 1
		 840 959 1 838 960 1 961 200 1 438 963 1 962 201 1 919 964 1 342 965 1 343 966 1 878 410 1
		 923 968 1 967 922 1 924 969 1 925 970 1 920 971 1 921 972 1 950 974 1 973 949 1 951 975 1
		 952 976 1 945 977 1 946 978 1 947 979 1 948 980 1 981 944 1 937 982 1 938 983 1 939 984 1
		 940 985 1 941 986 1 942 987 1 943 988 1 989 912 0 962 440 1 832 990 1 990 876 1 826 991 1
		 991 990 1 910 992 1;
	setAttr ".ed[1992:2157]" 992 991 1 822 992 1 990 993 1 991 994 1 992 995 1 996 847 1
		 997 844 1 996 997 1 998 986 1 997 998 1 999 985 1 998 999 1 1000 984 1 999 1000 1
		 1001 983 1 1000 1001 1 1002 850 1 1001 1002 1 1003 981 1 1002 1003 1 1003 996 1 1004 973 1
		 1005 980 1 1004 1005 1 1006 845 1 1005 1006 1 1007 848 1 1006 1007 1 1008 846 1 1007 1008 1
		 1009 849 1 1008 1009 1 1010 975 1 1009 1010 1 1011 847 1 1010 1011 1 1011 1004 1
		 1012 966 1 469 1012 1 471 878 1 1012 471 1 1013 926 1 472 1013 1 1014 887 1 1013 1014 1
		 1015 924 1 1014 1015 1 1016 970 1 1015 1016 1 1017 884 1 1016 1017 1 1018 903 1 1017 1018 1
		 1019 901 1 1018 1019 1 1020 902 1 1019 1020 1 1021 898 1 1020 1021 1 1022 897 1 1021 1022 1
		 1023 888 1 1022 1023 1 1024 968 1 1023 1024 1 1025 922 1 1024 1025 1 1026 881 1 1025 1026 1
		 1027 928 1 1026 1027 1 1027 488 1 490 964 1 1028 1029 1 1029 1036 1 1036 1037 1 1037 1028 0
		 1029 1030 1 1030 1035 1 1035 1036 1 1032 1035 1 1035 1031 1 1031 1032 1 1033 1036 1
		 1032 1033 1 1033 1034 1 1034 1037 0 1030 1031 1 1028 1040 0 1040 1039 1 1039 1029 1
		 1039 1038 1 1038 1030 1 1031 1038 1 1038 1032 1 1039 1033 1 1040 1034 0 1041 1042 1
		 1042 1049 1 1049 1050 1 1050 1041 0 1042 1043 1 1043 1048 1 1048 1049 1 1045 1048 1
		 1048 1044 1 1044 1045 1 1046 1049 1 1045 1046 1 1046 1047 1 1047 1050 0 1043 1044 1
		 1041 1053 0 1053 1052 1 1052 1042 1 1052 1051 1 1051 1043 1 1044 1051 1 1051 1045 1
		 1052 1046 1 1053 1047 0 1054 1055 1 1055 1062 1 1062 1063 1 1063 1054 0 1055 1056 1
		 1056 1061 1 1061 1062 1 1058 1061 1 1061 1057 1 1057 1058 1 1059 1062 1 1058 1059 1
		 1059 1060 1 1060 1063 0 1056 1057 1 1054 1066 0 1066 1065 1 1065 1055 1 1065 1064 1
		 1064 1056 1 1057 1064 1 1064 1058 1 1065 1059 1 1066 1060 0 1067 1068 1 1068 1075 1
		 1075 1076 1 1076 1067 0 1068 1069 1 1069 1074 1 1074 1075 1 1071 1074 1 1074 1070 1
		 1070 1071 1 1072 1075 1 1071 1072 1 1072 1073 1 1073 1076 0 1069 1070 1 1067 1079 0
		 1079 1078 1 1078 1068 1 1078 1077 1 1077 1069 1 1070 1077 1;
	setAttr ".ed[2158:2323]" 1077 1071 1 1078 1072 1 1079 1073 0 1080 1081 1 1081 1088 1
		 1088 1089 1 1089 1080 0 1081 1082 1 1082 1087 1 1087 1088 1 1084 1087 1 1087 1083 1
		 1083 1084 1 1085 1088 1 1084 1085 1 1085 1086 1 1086 1089 0 1082 1083 1 1080 1092 0
		 1092 1091 1 1091 1081 1 1091 1090 1 1090 1082 1 1083 1090 1 1090 1084 1 1091 1085 1
		 1092 1086 0 1093 1094 1 1094 1101 1 1101 1102 1 1102 1093 0 1094 1095 1 1095 1100 1
		 1100 1101 1 1097 1100 1 1100 1096 1 1096 1097 1 1098 1101 1 1097 1098 1 1098 1099 1
		 1099 1102 0 1095 1096 1 1093 1105 0 1105 1104 1 1104 1094 1 1104 1103 1 1103 1095 1
		 1096 1103 1 1103 1097 1 1104 1098 1 1105 1099 0 93 186 1 511 96 1 580 0 1 512 1 1
		 187 89 1 90 205 1 92 204 1 91 273 1 1107 1106 0 1195 1107 0 1106 1202 0 1159 1160 1
		 1160 1145 1 1145 1109 1 1109 1159 1 1158 1159 1 1109 1120 1 1120 1158 1 1156 1157 1
		 1157 1108 1 1108 1144 1 1144 1156 1 1164 1165 1 1165 1112 1 1112 1146 1 1146 1164 1
		 1167 1168 1 1168 1147 1 1147 1113 1 1113 1167 1 1166 1167 1 1113 1122 1 1122 1166 1
		 1172 1173 1 1173 1114 1 1114 1148 1 1148 1172 1 1174 1175 1 1175 1115 1 1115 1123 1
		 1123 1174 1 1175 1176 1 1176 1149 1 1149 1115 1 1180 1181 1 1181 1116 1 1116 1150 1
		 1150 1180 1 1182 1183 1 1183 1117 1 1117 1124 1 1124 1182 1 1183 1184 1 1184 1151 1
		 1151 1117 1 1188 1189 1 1189 1118 1 1118 1152 1 1152 1188 1 1190 1191 1 1191 1119 1
		 1119 1125 1 1125 1190 1 1191 1192 1 1192 1153 1 1153 1119 1 1118 1125 1 1125 1154 1
		 1154 1118 1 1153 1154 1 1154 1119 1 1154 1152 1 1189 1190 1 1181 1182 1 1124 1116 1
		 1173 1174 1 1123 1114 1 1165 1166 1 1122 1112 1 1157 1158 1 1120 1108 1 1111 1143 1
		 1143 1195 1 1196 1111 1 1110 1121 1 1121 1197 1 1198 1110 1 1200 1110 1 1121 1111 1
		 1161 1127 1 1127 1145 1 1160 1161 1 1162 1137 1 1137 1127 1 1161 1162 1 1144 1126 1
		 1126 1155 1 1155 1156 1 1146 1129 1 1129 1163 1 1163 1164 1 1169 1130 1 1130 1147 1
		 1168 1169 1 1170 1139 1 1139 1130 1 1169 1170 1 1148 1131 1 1131 1171 1 1171 1172 1
		 1178 1140 1 1140 1132 1 1132 1177 1 1177 1178 1 1132 1149 1;
	setAttr ".ed[2324:2489]" 1176 1177 1 1150 1133 1 1133 1179 1 1179 1180 1 1186 1141 1
		 1141 1134 1 1134 1185 1 1185 1186 1 1134 1151 1 1184 1185 1 1152 1135 1 1135 1187 1
		 1187 1188 1 1194 1142 1 1142 1136 1 1136 1193 1 1193 1194 1 1136 1153 1 1192 1193 1
		 1135 1154 1 1154 1142 1 1142 1135 1 1136 1154 1 1194 1187 1 1186 1179 1 1133 1141 1
		 1178 1171 1 1131 1140 1 1170 1163 1 1129 1139 1 1162 1155 1 1126 1137 1 1128 1107 1
		 1143 1128 1 1106 1138 1 1138 1201 1 1128 1138 1 1143 1156 1 1155 1128 1 1111 1157 1
		 1121 1158 1 1110 1159 1 1200 1160 1 1201 1161 1 1138 1162 1 1144 1164 1 1163 1126 1
		 1108 1165 1 1120 1166 1 1109 1167 1 1145 1168 1 1127 1169 1 1137 1170 1 1146 1172 1
		 1171 1129 1 1112 1173 1 1122 1174 1 1113 1175 1 1147 1176 1 1130 1177 1 1139 1178 1
		 1148 1180 1 1179 1131 1 1114 1181 1 1123 1182 1 1115 1183 1 1149 1184 1 1132 1185 1
		 1140 1186 1 1150 1188 1 1187 1133 1 1116 1189 1 1124 1190 1 1117 1191 1 1151 1192 1
		 1134 1193 1 1141 1194 1 1196 1195 0 1198 1197 0 1199 1198 0 1199 1200 0 1197 1196 0
		 1201 1202 0 1201 1200 0 1204 1203 0 1292 1204 0 1203 1299 0 1256 1257 1 1257 1242 1
		 1242 1206 1 1206 1256 1 1255 1256 1 1206 1217 1 1217 1255 1 1253 1254 1 1254 1205 1
		 1205 1241 1 1241 1253 1 1261 1262 1 1262 1209 1 1209 1243 1 1243 1261 1 1264 1265 1
		 1265 1244 1 1244 1210 1 1210 1264 1 1263 1264 1 1210 1219 1 1219 1263 1 1269 1270 1
		 1270 1211 1 1211 1245 1 1245 1269 1 1271 1272 1 1272 1212 1 1212 1220 1 1220 1271 1
		 1272 1273 1 1273 1246 1 1246 1212 1 1277 1278 1 1278 1213 1 1213 1247 1 1247 1277 1
		 1279 1280 1 1280 1214 1 1214 1221 1 1221 1279 1 1280 1281 1 1281 1248 1 1248 1214 1
		 1285 1286 1 1286 1215 1 1215 1249 1 1249 1285 1 1287 1288 1 1288 1216 1 1216 1222 1
		 1222 1287 1 1288 1289 1 1289 1250 1 1250 1216 1 1215 1222 1 1222 1251 1 1251 1215 1
		 1250 1251 1 1251 1216 1 1251 1249 1 1286 1287 1 1278 1279 1 1221 1213 1 1270 1271 1
		 1220 1211 1 1262 1263 1 1219 1209 1 1254 1255 1 1217 1205 1 1208 1240 1 1240 1292 1
		 1293 1208 1 1207 1218 1 1218 1294 1 1295 1207 1 1297 1207 1 1218 1208 1 1258 1224 1;
	setAttr ".ed[2490:2655]" 1224 1242 1 1257 1258 1 1259 1234 1 1234 1224 1 1258 1259 1
		 1241 1223 1 1223 1252 1 1252 1253 1 1243 1226 1 1226 1260 1 1260 1261 1 1266 1227 1
		 1227 1244 1 1265 1266 1 1267 1236 1 1236 1227 1 1266 1267 1 1245 1228 1 1228 1268 1
		 1268 1269 1 1275 1237 1 1237 1229 1 1229 1274 1 1274 1275 1 1229 1246 1 1273 1274 1
		 1247 1230 1 1230 1276 1 1276 1277 1 1283 1238 1 1238 1231 1 1231 1282 1 1282 1283 1
		 1231 1248 1 1281 1282 1 1249 1232 1 1232 1284 1 1284 1285 1 1291 1239 1 1239 1233 1
		 1233 1290 1 1290 1291 1 1233 1250 1 1289 1290 1 1232 1251 1 1251 1239 1 1239 1232 1
		 1233 1251 1 1291 1284 1 1283 1276 1 1230 1238 1 1275 1268 1 1228 1237 1 1267 1260 1
		 1226 1236 1 1259 1252 1 1223 1234 1 1225 1204 1 1240 1225 1 1203 1235 1 1235 1298 1
		 1225 1235 1 1240 1253 1 1252 1225 1 1208 1254 1 1218 1255 1 1207 1256 1 1297 1257 1
		 1298 1258 1 1235 1259 1 1241 1261 1 1260 1223 1 1205 1262 1 1217 1263 1 1206 1264 1
		 1242 1265 1 1224 1266 1 1234 1267 1 1243 1269 1 1268 1226 1 1209 1270 1 1219 1271 1
		 1210 1272 1 1244 1273 1 1227 1274 1 1236 1275 1 1245 1277 1 1276 1228 1 1211 1278 1
		 1220 1279 1 1212 1280 1 1246 1281 1 1229 1282 1 1237 1283 1 1247 1285 1 1284 1230 1
		 1213 1286 1 1221 1287 1 1214 1288 1 1248 1289 1 1231 1290 1 1238 1291 1 1293 1292 0
		 1295 1294 0 1296 1295 0 1296 1297 0 1294 1293 0 1298 1299 0 1298 1297 0 1369 1314 1
		 1314 1301 1 1301 1370 1 1370 1369 1 1397 1346 1 1346 1316 1 1316 1398 1 1398 1397 1
		 1387 1386 1 1386 1335 1 1335 1334 1 1334 1387 1 1390 1389 1 1389 1333 1 1333 1365 1
		 1365 1390 1 1315 1363 1 1363 1316 1 1316 1300 1 1300 1315 1 1389 1388 1 1388 1359 1
		 1359 1333 1 1372 1319 1 1319 1304 1 1304 1373 1 1373 1372 1 1300 1362 1 1362 1361 1
		 1361 1315 1 1321 1353 1 1353 1352 1 1352 1306 1 1306 1321 1 1303 1305 1 1305 1322 1
		 1322 1320 1 1320 1303 1 1350 1321 1 1306 1351 1 1351 1350 1 1329 1324 1 1324 1307 1
		 1307 1309 1 1309 1329 1 1386 1354 1 1354 1335 1 1305 1357 1 1357 1356 1 1356 1322 1
		 1356 1355 1 1355 1403 1 1403 1322 1 1361 1401 1 1401 1400 1 1400 1315 1 1400 1399 1;
	setAttr ".ed[2656:2821]" 1399 1363 1 1403 1402 1 1402 1320 1 1312 1300 1 1300 1347 1
		 1347 1312 1 1391 1332 1 1332 1331 1 1331 1392 1 1392 1391 1 1407 1396 1 1396 1395 1
		 1395 1408 1 1408 1407 1 1317 1330 1 1330 1318 1 1318 1317 1 1316 1347 1 1313 1405 1
		 1405 1404 1 1404 1313 1 1348 1393 1 1393 1406 1 1406 1348 1 1302 1330 1 1317 1302 1
		 1406 1405 1 1313 1348 1 1395 1394 1 1394 1409 1 1409 1408 1 1332 1375 1 1375 1374 1
		 1374 1331 1 1341 1378 1 1378 1377 1 1377 1368 1 1368 1341 1 1337 1380 1 1380 1379 1
		 1379 1371 1 1371 1337 1 1335 1382 1 1382 1381 1 1381 1349 1 1349 1335 1 1354 1383 1
		 1383 1382 1 1384 1336 1 1336 1310 1 1310 1385 1 1385 1384 1 1349 1337 1 1337 1334 1
		 1359 1358 1 1358 1338 1 1338 1333 1 1338 1366 1 1366 1365 1 1342 1376 1 1376 1375 1
		 1332 1342 1 1317 1340 1 1340 1311 1 1311 1302 1 1371 1341 1 1341 1343 1 1343 1337 1
		 1368 1367 1 1367 1343 1 1344 1342 1 1332 1344 1 1343 1338 1 1358 1337 1 1367 1366 1
		 1339 1344 1 1332 1339 1 178 1312 1 1347 500 1 1409 1348 1 1348 502 1 746 1409 1 1346 1347 1
		 1381 1380 1 1319 1350 1 1351 1304 1 1353 1323 1 1323 1308 1 1308 1352 1 1384 1383 1
		 1354 1336 1 1356 1324 1 1329 1355 1 1357 1307 1 1359 1334 1 1388 1387 1 1361 1320 1
		 1402 1401 1 1362 1303 1 1399 1398 1 1391 1390 1 1365 1332 1 1366 1339 1 1367 1344 1
		 1368 1342 1 1377 1376 1 1340 1369 1 1370 1311 1 1379 1378 1 1314 1372 1 1373 1301 1
		 1394 1393 1 1375 1317 1 1318 1374 1 1376 1340 1 1377 1369 1 1378 1314 1 1379 1372 1
		 1380 1319 1 1381 1350 1 1382 1321 1 1383 1353 1 1384 1323 1 1385 1308 1 1336 1329 1
		 1309 1310 1 1354 1355 1 1328 1355 1 1386 1328 1 1327 1328 1 1387 1327 1 1360 1327 1
		 1388 1360 1 1326 1360 1 1389 1326 1 1364 1326 1 1390 1364 1 1325 1364 1 1391 1325 1
		 1392 1345 1 1345 1325 1 1397 1396 1 1407 1346 1 1318 1393 1 1394 1374 1 1395 1331 1
		 1396 1392 1 1397 1345 1 1398 1325 1 1399 1364 1 1400 1326 1 1401 1360 1 1402 1327 1
		 1403 1328 1 1346 515 1 1405 1330 1 1302 1404 1 1406 1330 1 1313 180 1 746 1408 1
		 635 1407 1 1461 1370 1 1301 1410 1 1410 1461 1 1486 1487 1 1487 1412 1;
	setAttr ".ed[2822:2987]" 1412 1442 1 1442 1486 1 1476 1430 1 1430 1431 1 1431 1475 1
		 1475 1476 1 1479 1457 1 1457 1429 1 1429 1478 1 1478 1479 1 1411 1300 1 1300 1412 1
		 1412 1455 1 1455 1411 1 1429 1452 1 1452 1477 1 1477 1478 1 1463 1373 1 1304 1415 1
		 1415 1463 1 1411 1454 1 1454 1362 1 1417 1306 1 1352 1447 1 1447 1417 1 1303 1416 1
		 1416 1418 1 1418 1305 1 1446 1351 1 1417 1446 1 1425 1309 1 1307 1420 1 1420 1425 1
		 1431 1448 1 1448 1475 1 1418 1450 1 1450 1357 1 1418 1492 1 1492 1449 1 1449 1450 1
		 1411 1489 1 1489 1490 1 1490 1454 1 1455 1488 1 1488 1489 1 1416 1491 1 1491 1492 1
		 1312 1443 1 1443 1300 1 1480 1481 1 1481 1427 1 1427 1428 1 1428 1480 1 1495 1496 1
		 1496 1484 1 1484 1485 1 1485 1495 1 1413 1414 1 1414 1426 1 1426 1413 1 1443 1412 1
		 1404 1493 1 1493 1313 1 1444 1494 1 1494 1482 1 1482 1444 1 1302 1413 1 1426 1302 1
		 1444 1313 1 1493 1494 1 1496 1497 1 1497 1483 1 1483 1484 1 1427 1464 1 1464 1465 1
		 1465 1428 1 1437 1460 1 1460 1467 1 1467 1468 1 1468 1437 1 1433 1462 1 1462 1469 1
		 1469 1470 1 1470 1433 1 1431 1445 1 1445 1471 1 1471 1472 1 1472 1431 1 1472 1473 1
		 1473 1448 1 1474 1385 1 1310 1432 1 1432 1474 1 1430 1433 1 1433 1445 1 1429 1434 1
		 1434 1451 1 1451 1452 1 1457 1458 1 1458 1434 1 1438 1428 1 1465 1466 1 1466 1438 1
		 1311 1436 1 1436 1413 1 1433 1439 1 1439 1437 1 1437 1462 1 1439 1459 1 1459 1460 1
		 1440 1428 1 1438 1440 1 1433 1451 1 1434 1439 1 1458 1459 1 1435 1428 1 1440 1435 1
		 193 1443 1 1497 439 1 195 1444 1 1444 1497 1 1443 1442 1 1470 1471 1 1446 1415 1
		 1308 1419 1 1419 1447 1 1432 1448 1 1473 1474 1 1449 1425 1 1420 1450 1 1430 1452 1
		 1476 1477 1 1490 1491 1 1416 1454 1 1487 1488 1 1428 1457 1 1479 1480 1 1435 1458 1
		 1440 1459 1 1438 1460 1 1466 1467 1 1461 1436 1 1468 1469 1 1463 1410 1 1482 1483 1
		 1464 1414 1 1413 1465 1 1436 1466 1 1461 1467 1 1410 1468 1 1463 1469 1 1415 1470 1
		 1446 1471 1 1417 1472 1 1447 1473 1 1419 1474 1 1425 1432 1 1449 1448 1 1424 1475 1
		 1449 1424 1 1423 1476 1 1424 1423 1 1453 1477 1 1423 1453 1 1422 1478 1 1453 1422 1;
	setAttr ".ed[2988:3107]" 1456 1479 1 1422 1456 1 1421 1480 1 1456 1421 1 1421 1441 1
		 1441 1481 1 1442 1495 1 1485 1486 1 1464 1483 1 1482 1414 1 1427 1484 1 1481 1485 1
		 1441 1486 1 1421 1487 1 1456 1488 1 1422 1489 1 1453 1490 1 1423 1491 1 1424 1492 1
		 208 1442 1 1426 1493 1 1426 1494 1 1496 439 1 1495 328 1 1498 1507 0 1507 1506 1
		 1506 1499 1 1499 1498 1 1506 1505 1 1505 1500 1 1500 1499 1 1502 1501 1 1501 1505 1
		 1505 1502 1 1503 1502 1 1506 1503 1 1507 1504 0 1504 1503 1 1501 1500 1 1499 1509 1
		 1509 1510 1 1510 1498 0 1500 1508 1 1508 1509 1 1502 1508 1 1508 1501 1 1503 1509 1
		 1504 1510 0 1511 1520 0 1520 1519 1 1519 1512 1 1512 1511 1 1519 1518 1 1518 1513 1
		 1513 1512 1 1515 1514 1 1514 1518 1 1518 1515 1 1516 1515 1 1519 1516 1 1520 1517 0
		 1517 1516 1 1514 1513 1 1512 1522 1 1522 1523 1 1523 1511 0 1513 1521 1 1521 1522 1
		 1515 1521 1 1521 1514 1 1516 1522 1 1517 1523 0 1524 1525 1 1525 1532 1 1532 1533 1
		 1533 1524 0 1525 1526 1 1526 1531 1 1531 1532 1 1528 1531 1 1531 1527 1 1527 1528 1
		 1529 1532 1 1528 1529 1 1529 1530 1 1530 1533 0 1526 1527 1 1524 1536 0 1536 1535 1
		 1535 1525 1 1535 1534 1 1534 1526 1 1527 1534 1 1534 1528 1 1535 1529 1 1536 1530 0
		 1537 1538 1 1538 1545 1 1545 1546 1 1546 1537 0 1538 1539 1 1539 1544 1 1544 1545 1
		 1541 1544 1 1544 1540 1 1540 1541 1 1542 1545 1 1541 1542 1 1542 1543 1 1543 1546 0
		 1539 1540 1 1537 1549 0 1549 1548 1 1548 1538 1 1548 1547 1 1547 1539 1 1540 1547 1
		 1547 1541 1 1548 1542 1 1549 1543 0;
	setAttr -s 1647 -ch 6441 ".fc";
	setAttr ".fc[0:499]" -type "polyFaces" 
		f 4 3 4 5 6
		mu 0 4 0 1 2 3
		f 4 7 -7 8 9
		mu 0 4 4 0 3 5
		f 4 10 11 12 13
		mu 0 4 6 7 8 9
		f 4 14 15 16 17
		mu 0 4 10 11 12 13
		f 4 18 19 20 21
		mu 0 4 14 15 16 17
		f 4 22 -22 23 24
		mu 0 4 18 14 17 19
		f 4 25 26 27 28
		mu 0 4 20 21 22 23
		f 4 29 30 31 32
		mu 0 4 24 25 26 27
		f 4 33 34 35 -31
		mu 0 4 25 28 29 26
		f 4 36 37 38 39
		mu 0 4 30 31 32 33
		f 4 40 41 42 43
		mu 0 4 34 35 36 37
		f 4 44 45 46 -42
		mu 0 4 35 38 39 36
		f 4 47 48 49 50
		mu 0 4 40 41 42 43
		f 4 51 52 53 54
		mu 0 4 44 45 46 47
		f 4 55 56 57 -53
		mu 0 4 45 48 49 46
		f 3 58 59 60
		mu 0 3 42 47 50
		f 3 -58 61 62
		mu 0 3 46 49 50
		f 3 -50 -61 63
		mu 0 3 43 42 50
		f 4 64 -55 -59 -49
		mu 0 4 41 44 47 42
		f 4 65 -44 66 -38
		mu 0 4 31 34 37 32
		f 4 67 -33 68 -27
		mu 0 4 21 24 27 22
		f 4 69 -25 70 -16
		mu 0 4 11 18 19 12
		f 4 71 -10 72 -12
		mu 0 4 7 4 5 8
		f 3 -54 -63 -60
		mu 0 3 47 46 50
		f 4 73 74 -185 75
		mu 0 4 51 52 53 54
		f 4 76 77 -186 78
		mu 0 4 55 56 57 58
		f 4 79 -79 -187 187
		mu 0 4 59 55 58 60
		f 4 80 -76 -189 -78
		mu 0 4 56 51 54 57
		f 4 81 82 -5 83
		mu 0 4 61 62 63 64
		f 4 84 85 -82 86
		mu 0 4 65 66 62 61
		f 4 -14 87 88 89
		mu 0 4 6 9 67 68
		f 4 -18 90 91 92
		mu 0 4 10 13 69 70
		f 4 93 94 -20 95
		mu 0 4 71 72 73 74
		f 4 96 97 -94 98
		mu 0 4 75 76 72 71
		f 4 -29 99 100 101
		mu 0 4 20 23 77 78
		f 4 102 103 104 105
		mu 0 4 79 80 81 82
		f 4 -105 106 -35 107
		mu 0 4 82 81 83 84
		f 4 -40 108 109 110
		mu 0 4 30 33 85 86
		f 4 111 112 113 114
		mu 0 4 87 88 89 90
		f 4 -114 115 -46 116
		mu 0 4 90 89 91 92
		f 4 -51 117 118 119
		mu 0 4 40 43 93 94
		f 4 120 121 122 123
		mu 0 4 95 96 97 98
		f 4 -123 124 -57 125
		mu 0 4 98 97 99 100
		f 3 126 127 128
		mu 0 3 93 50 96
		f 3 129 -62 -125
		mu 0 3 97 50 99
		f 3 -64 -127 -118
		mu 0 3 43 50 93
		f 4 130 -119 -129 -121
		mu 0 4 95 94 93 96
		f 4 131 -110 132 -112
		mu 0 4 87 86 85 88
		f 4 133 -101 134 -103
		mu 0 4 79 78 77 80
		f 4 135 -92 136 -97
		mu 0 4 75 70 69 76
		f 4 137 -89 138 -85
		mu 0 4 65 68 67 66
		f 3 -128 -130 -122
		mu 0 3 96 50 97
		f 4 139 -2 -75 140
		mu 0 4 101 102 53 52
		f 4 189 -3 141 142
		mu 0 4 103 104 105 106
		f 4 -142 -1 -140 143
		mu 0 4 106 105 102 101
		f 4 144 -90 145 -141
		mu 0 4 52 6 68 101
		f 4 -74 146 -11 -145
		mu 0 4 52 51 7 6
		f 4 -81 147 -72 -147
		mu 0 4 51 56 4 7
		f 4 -77 148 -8 -148
		mu 0 4 56 55 0 4
		f 4 -80 149 -4 -149
		mu 0 4 55 59 1 0
		f 4 150 -84 -150 -191
		mu 0 4 103 61 64 107
		f 4 151 -87 -151 -143
		mu 0 4 106 65 61 103
		f 4 -146 -138 -152 -144
		mu 0 4 101 68 65 106
		f 4 152 -93 153 -88
		mu 0 4 9 10 70 67
		f 4 -13 154 -15 -153
		mu 0 4 9 8 11 10
		f 4 -73 155 -70 -155
		mu 0 4 8 5 18 11
		f 4 -9 156 -23 -156
		mu 0 4 5 3 14 18
		f 4 -6 157 -19 -157
		mu 0 4 3 2 15 14
		f 4 158 -96 -158 -83
		mu 0 4 62 71 74 63
		f 4 159 -99 -159 -86
		mu 0 4 66 75 71 62
		f 4 -154 -136 -160 -139
		mu 0 4 67 70 75 66
		f 4 160 -102 161 -91
		mu 0 4 13 20 78 69
		f 4 -17 162 -26 -161
		mu 0 4 13 12 21 20
		f 4 -71 163 -68 -163
		mu 0 4 12 19 24 21
		f 4 -24 164 -30 -164
		mu 0 4 19 17 25 24
		f 4 -21 165 -34 -165
		mu 0 4 17 16 28 25
		f 4 166 -108 -166 -95
		mu 0 4 72 82 84 73
		f 4 167 -106 -167 -98
		mu 0 4 76 79 82 72
		f 4 -162 -134 -168 -137
		mu 0 4 69 78 79 76
		f 4 168 -111 169 -100
		mu 0 4 23 30 86 77
		f 4 -28 170 -37 -169
		mu 0 4 23 22 31 30
		f 4 -69 171 -66 -171
		mu 0 4 22 27 34 31
		f 4 -32 172 -41 -172
		mu 0 4 27 26 35 34
		f 4 -36 173 -45 -173
		mu 0 4 26 29 38 35
		f 4 174 -117 -174 -107
		mu 0 4 81 90 92 83
		f 4 175 -115 -175 -104
		mu 0 4 80 87 90 81
		f 4 -170 -132 -176 -135
		mu 0 4 77 86 87 80
		f 4 176 -120 177 -109
		mu 0 4 33 40 94 85
		f 4 -39 178 -48 -177
		mu 0 4 33 32 41 40
		f 4 -67 179 -65 -179
		mu 0 4 32 37 44 41
		f 4 -43 180 -52 -180
		mu 0 4 37 36 45 44
		f 4 -47 181 -56 -181
		mu 0 4 36 39 48 45
		f 4 182 -126 -182 -116
		mu 0 4 89 98 100 91
		f 4 183 -124 -183 -113
		mu 0 4 88 95 98 89
		f 4 -178 -131 -184 -133
		mu 0 4 85 94 95 88
		f 4 -190 190 -188 191
		mu 0 4 108 109 110 111
		f 4 -196 -195 -194 -193
		mu 0 4 112 113 114 115
		f 4 -199 -198 -197 193
		mu 0 4 114 116 117 115
		f 3 -202 -201 -200
		mu 0 3 118 119 116
		f 4 -204 199 198 -203
		mu 0 4 120 118 116 114
		f 4 -206 -205 202 194
		mu 0 4 113 121 120 114
		f 3 -207 197 200
		mu 0 3 119 117 116
		f 4 192 -210 -209 -208
		mu 0 4 122 123 124 125
		f 4 209 196 -212 -211
		mu 0 4 124 123 126 127
		f 3 -214 -213 201
		mu 0 3 128 127 129
		f 4 -215 210 213 203
		mu 0 4 130 124 127 128
		f 4 208 214 204 -216
		mu 0 4 125 124 130 131
		f 3 212 211 206
		mu 0 3 129 127 126
		f 4 -220 -219 -218 -217
		mu 0 4 132 133 134 135
		f 4 -223 -222 -221 217
		mu 0 4 134 136 137 135
		f 3 -226 -225 -224
		mu 0 3 138 139 136
		f 4 -228 223 222 -227
		mu 0 4 140 138 136 134
		f 4 -230 -229 226 218
		mu 0 4 133 141 140 134
		f 3 -231 221 224
		mu 0 3 139 137 136
		f 4 216 -234 -233 -232
		mu 0 4 142 143 144 145
		f 4 233 220 -236 -235
		mu 0 4 144 143 146 147
		f 3 -238 -237 225
		mu 0 3 148 147 149
		f 4 -239 234 237 227
		mu 0 4 150 144 147 148
		f 4 232 238 228 -240
		mu 0 4 145 144 150 151
		f 3 236 235 230
		mu 0 3 149 147 146
		f 4 -244 -243 -242 -241
		mu 0 4 152 153 154 155
		f 4 -247 -246 -245 241
		mu 0 4 154 156 157 155
		f 3 -250 -249 -248
		mu 0 3 158 159 156
		f 4 -252 247 246 -251
		mu 0 4 160 158 156 154
		f 4 -254 -253 250 242
		mu 0 4 153 161 160 154
		f 3 -255 245 248
		mu 0 3 159 157 156
		f 4 240 -258 -257 -256
		mu 0 4 162 163 164 165
		f 4 257 244 -260 -259
		mu 0 4 164 163 166 167
		f 3 -262 -261 249
		mu 0 3 168 167 169
		f 4 -263 258 261 251
		mu 0 4 170 164 167 168
		f 4 256 262 252 -264
		mu 0 4 165 164 170 171
		f 3 260 259 254
		mu 0 3 169 167 166
		f 4 -268 -267 -266 -265
		mu 0 4 172 173 174 175
		f 4 -271 -270 -269 265
		mu 0 4 174 176 177 175
		f 3 -274 -273 -272
		mu 0 3 178 179 176
		f 4 -276 271 270 -275
		mu 0 4 180 178 176 174
		f 4 -278 -277 274 266
		mu 0 4 173 181 180 174
		f 3 -279 269 272
		mu 0 3 179 177 176
		f 4 264 -282 -281 -280
		mu 0 4 182 183 184 185
		f 4 281 268 -284 -283
		mu 0 4 184 183 186 187
		f 3 -286 -285 273
		mu 0 3 188 187 189
		f 4 -287 282 285 275
		mu 0 4 190 184 187 188
		f 4 280 286 276 -288
		mu 0 4 185 184 190 191
		f 3 284 283 278
		mu 0 3 189 187 186
		f 4 -292 -291 -290 -289
		mu 0 4 192 193 194 195
		f 4 -295 -294 -293 289
		mu 0 4 194 196 197 195
		f 3 -298 -297 -296
		mu 0 3 198 199 196
		f 4 -300 295 294 -299
		mu 0 4 200 198 196 194
		f 4 -302 -301 298 290
		mu 0 4 193 201 200 194
		f 3 -303 293 296
		mu 0 3 199 197 196
		f 4 288 -306 -305 -304
		mu 0 4 202 203 204 205
		f 4 305 292 -308 -307
		mu 0 4 204 203 206 207
		f 3 -310 -309 297
		mu 0 3 208 207 209
		f 4 -311 306 309 299
		mu 0 4 210 204 207 208
		f 4 304 310 300 -312
		mu 0 4 205 204 210 211
		f 3 308 307 302
		mu 0 3 209 207 206
		f 4 -316 -315 -314 -313
		mu 0 4 212 213 214 215
		f 4 -319 -318 -317 313
		mu 0 4 214 216 217 215
		f 3 -322 -321 -320
		mu 0 3 218 219 216
		f 4 -324 319 318 -323
		mu 0 4 220 218 216 214
		f 4 -326 -325 322 314
		mu 0 4 213 221 220 214
		f 3 -327 317 320
		mu 0 3 219 217 216
		f 4 312 -330 -329 -328
		mu 0 4 222 223 224 225
		f 4 329 316 -332 -331
		mu 0 4 224 223 226 227
		f 3 -334 -333 321
		mu 0 3 228 227 229
		f 4 -335 330 333 323
		mu 0 4 230 224 227 228
		f 4 328 334 324 -336
		mu 0 4 225 224 230 231
		f 3 332 331 326
		mu 0 3 229 227 226
		f 4 350 351 352 353
		mu 0 4 232 233 234 235
		f 4 354 355 356 -337
		mu 0 4 236 237 238 239
		f 4 -355 -338 357 358
		mu 0 4 237 236 240 241
		f 4 359 360 -339 361
		mu 0 4 242 243 244 245
		f 4 362 -340 363 364
		mu 0 4 246 247 248 249
		f 4 -357 365 366 -341
		mu 0 4 239 238 250 251
		f 4 367 368 369 370
		mu 0 4 252 253 254 255
		f 4 -367 371 372 -342
		mu 0 4 251 250 256 257
		f 4 373 374 375 376
		mu 0 4 258 259 260 249
		f 4 377 378 379 -343
		mu 0 4 261 262 263 264
		f 4 380 381 382 383
		mu 0 4 265 266 267 268
		f 4 965 385 386 966
		mu 0 4 269 270 271 272
		f 4 388 389 390 -372
		mu 0 4 250 273 259 256
		f 4 391 392 -356 393
		mu 0 4 274 275 276 277
		f 4 394 395 -351 396
		mu 0 4 278 279 280 281
		f 4 397 -354 398 -360
		mu 0 4 242 232 235 243
		f 4 399 400 401 402
		mu 0 4 282 283 284 285
		f 4 403 404 405 -344
		mu 0 4 286 287 288 289
		f 4 406 407 -366 -393
		mu 0 4 275 290 291 276
		f 4 -392 408 409 410
		mu 0 4 275 274 292 293
		f 4 411 412 413 414
		mu 0 4 294 295 296 297
		f 4 -407 -411 415 416
		mu 0 4 290 275 293 298
		f 4 417 -415 418 419
		mu 0 4 299 294 297 300
		f 4 420 421 422 423
		mu 0 4 301 302 303 304
		f 4 424 -421 425 -414
		mu 0 4 296 302 301 297
		f 4 -424 426 -368 427
		mu 0 4 301 304 253 252
		f 4 428 429 430 431
		mu 0 4 305 306 307 308
		f 4 -426 -428 432 -419
		mu 0 4 297 301 252 300
		f 4 433 -432 434 435
		mu 0 4 309 305 308 310
		f 4 -397 -398 436 437
		mu 0 4 278 281 311 312
		f 4 438 439 440 441
		mu 0 4 313 314 315 316
		f 4 442 443 444 -430
		mu 0 4 306 255 317 307
		f 4 -370 445 446 -444
		mu 0 4 255 254 318 317
		f 4 -394 447 448 -409
		mu 0 4 274 277 319 292
		f 4 449 450 903 888
		mu 0 4 320 321 322 323
		f 4 453 -889 890 889
		mu 0 4 324 320 323 325
		f 4 456 457 900 899
		mu 0 4 326 327 328 329
		f 4 460 461 898 -458
		mu 0 4 327 330 331 328
		f 4 463 464 896 -462
		mu 0 4 330 332 333 331
		f 4 466 467 894 -465
		mu 0 4 332 334 335 333
		f 4 469 -890 892 -468
		mu 0 4 334 324 325 335
		f 4 471 -900 902 -451
		mu 0 4 336 326 329 337
		f 4 886 885 474 475
		mu 0 4 338 339 340 341
		f 4 876 875 477 478
		mu 0 4 342 343 344 345
		f 4 878 877 480 -876
		mu 0 4 343 346 347 344
		f 4 880 879 482 -878
		mu 0 4 346 348 349 347
		f 4 882 881 484 -880
		mu 0 4 348 350 351 349
		f 4 884 -476 485 -882
		mu 0 4 350 338 341 351
		f 4 874 -479 486 487
		mu 0 4 352 342 345 353
		f 4 887 -488 488 -886
		mu 0 4 339 354 355 340
		f 4 489 490 491 492
		mu 0 4 356 357 358 359
		f 4 493 494 495 496
		mu 0 4 360 361 362 363
		f 4 497 498 499 500
		mu 0 4 364 365 366 367
		f 4 501 502 503 504
		mu 0 4 368 369 370 371
		f 4 505 -496 506 507
		mu 0 4 372 373 362 367
		f 4 508 509 510 511
		mu 0 4 374 375 364 361
		f 4 512 513 -490 514
		mu 0 4 376 377 357 356
		f 4 515 -512 -494 516
		mu 0 4 378 374 361 360
		f 4 517 -508 -500 518
		mu 0 4 379 372 367 366
		f 4 519 520 -518 -504
		mu 0 4 380 381 372 379
		f 4 -492 521 -506 -521
		mu 0 4 381 382 373 372
		f 4 522 -505 -519 -499
		mu 0 4 365 368 371 366
		f 4 523 -515 524 525
		mu 0 4 383 384 385 369
		f 4 526 -526 -502 527
		mu 0 4 386 383 369 368
		f 4 -511 -501 -507 -495
		mu 0 4 361 364 367 362
		f 4 528 -517 529 -514
		mu 0 4 377 378 360 357
		f 4 -530 -497 -522 -491
		mu 0 4 357 360 363 358
		f 4 -525 -493 -520 -503
		mu 0 4 369 385 387 370
		f 4 530 531 -498 -510
		mu 0 4 375 388 365 364
		f 4 532 -528 -523 -532
		mu 0 4 388 386 368 365
		f 4 -408 -417 533 534
		mu 0 4 291 290 298 389
		f 4 -448 -359 535 536
		mu 0 4 390 237 241 391
		f 3 -437 537 538
		mu 0 3 312 311 313
		f 4 539 -442 540 -446
		mu 0 4 254 313 316 318
		f 4 -433 -371 -443 541
		mu 0 4 300 252 255 306
		f 4 -362 542 -439 -538
		mu 0 4 392 393 394 395
		f 4 -440 543 544 545
		mu 0 4 315 314 396 397
		f 4 -420 -542 -429 546
		mu 0 4 299 300 306 305
		f 4 -363 -547 -434 547
		mu 0 4 247 246 398 399
		f 4 548 -436 549 -545
		mu 0 4 400 309 310 401
		f 4 -345 -548 -549 550
		mu 0 4 402 247 399 403
		f 4 -543 -346 -551 -544
		mu 0 4 394 393 402 403
		f 4 551 552 553 -386
		mu 0 4 270 404 405 271
		f 4 -400 554 -405 555
		mu 0 4 283 282 288 287
		f 4 970 969 557 558
		mu 0 4 406 407 408 409
		f 4 559 908 907 -553
		mu 0 4 404 410 411 405
		f 4 562 563 564 -561
		mu 0 4 412 413 414 415
		f 4 565 566 567 -564
		mu 0 4 413 416 417 414
		f 4 955 569 570 956
		mu 0 4 418 419 420 421
		f 4 -554 572 573 574
		mu 0 4 271 405 422 423
		f 4 575 576 -401 -556
		mu 0 4 287 424 284 283
		f 4 -568 577 578 579
		mu 0 4 414 417 425 426
		f 4 580 581 582 583
		mu 0 4 427 428 429 430
		f 4 584 585 586 587
		mu 0 4 431 432 433 434
		f 4 588 -588 589 590
		mu 0 4 435 431 434 436
		f 4 591 592 593 -570
		mu 0 4 419 437 438 420
		f 4 594 595 596 597
		mu 0 4 439 440 441 442
		f 4 598 599 600 601
		mu 0 4 443 444 445 446
		f 4 951 -602 603 952
		mu 0 4 447 443 446 448
		f 4 605 606 607 -582
		mu 0 4 428 449 450 429
		f 4 608 609 610 611
		mu 0 4 451 452 453 454
		f 4 612 -598 613 614
		mu 0 4 455 439 442 456
		f 4 615 616 617 618
		mu 0 4 457 458 459 460
		f 4 943 -619 620 944
		mu 0 4 461 457 460 462
		f 4 622 -622 -609 -596
		mu 0 4 463 464 452 451
		f 4 623 930 929 -617
		mu 0 4 458 465 466 459
		f 4 -618 625 626 627
		mu 0 4 460 459 467 468
		f 4 628 -605 629 -607
		mu 0 4 469 470 471 472
		f 4 630 918 917 -593
		mu 0 4 437 473 474 438
		f 4 632 922 921 -600
		mu 0 4 444 475 476 445
		f 4 -908 910 909 -573
		mu 0 4 405 411 477 422
		f 4 636 -572 637 -586
		mu 0 4 478 479 480 481
		f 4 -387 -575 638 964
		mu 0 4 272 271 423 482
		f 4 -565 -580 640 -635
		mu 0 4 415 414 426 483
		f 4 641 -640 642 -578
		mu 0 4 484 485 486 487
		f 4 643 -388 -642 -567
		mu 0 4 488 489 485 484
		f 4 644 645 646 647
		mu 0 4 490 491 492 493
		f 4 939 649 650 940
		mu 0 4 494 468 495 496
		f 4 652 653 654 655
		mu 0 4 467 497 498 499
		f 4 656 657 658 659
		mu 0 4 500 501 502 503
		f 4 938 -651 661 662
		mu 0 4 504 505 495 499
		f 4 -621 -628 -940 942
		mu 0 4 462 460 468 494
		f 4 936 -663 -655 664
		mu 0 4 506 504 499 498
		f 4 665 666 -664 -659
		mu 0 4 507 508 509 510
		f 4 -647 667 -661 -667
		mu 0 4 508 511 512 509
		f 4 668 934 -665 -654
		mu 0 4 497 513 514 498
		f 4 -614 669 -657 670
		mu 0 4 456 442 501 500
		f 4 -627 -656 -662 -650
		mu 0 4 468 467 499 495
		f 4 -611 -652 -668 -646
		mu 0 4 454 453 515 516
		f 4 671 -648 -666 -658
		mu 0 4 501 490 493 502
		f 4 -597 -612 -645 672
		mu 0 4 442 441 491 490
		f 3 -673 -672 -670
		mu 0 3 442 490 501
		f 4 -930 932 -669 673
		mu 0 4 459 466 513 497
		f 3 -674 -653 -626
		mu 0 3 459 497 467
		f 3 675 -375 -390
		mu 0 3 273 260 259
		f 4 676 -413 677 -534
		mu 0 4 298 296 295 389
		f 4 678 -425 -677 -416
		mu 0 4 293 302 296 298
		f 4 679 -422 -679 -410
		mu 0 4 292 303 302 293
		f 3 680 -396 681
		mu 0 3 319 280 279
		f 3 682 683 -418
		mu 0 3 299 517 294
		f 4 684 685 -412 -684
		mu 0 4 517 518 295 294
		f 4 -686 686 687 -678
		mu 0 4 295 518 519 389
		f 3 -535 -688 688
		mu 0 3 291 389 519
		f 3 689 -683 -365
		mu 0 3 520 517 299
		f 4 690 -685 -690 -376
		mu 0 4 521 518 517 520
		f 4 -691 -676 691 -687
		mu 0 4 518 521 522 519
		f 3 -689 -692 -389
		mu 0 3 291 519 522
		f 4 -643 692 693 694
		mu 0 4 487 486 523 524
		f 4 -579 -695 695 696
		mu 0 4 426 425 525 526
		f 4 -641 -697 697 698
		mu 0 4 483 426 526 527
		f 4 -910 912 911 700
		mu 0 4 422 477 528 529
		f 4 -574 -701 701 702
		mu 0 4 423 422 529 530
		f 4 -639 -703 703 962
		mu 0 4 482 423 530 531
		f 4 -702 704 705 706
		mu 0 4 530 529 532 533
		f 4 -912 914 913 -705
		mu 0 4 529 528 534 532
		f 4 -698 709 710 -708
		mu 0 4 527 526 535 536
		f 4 -696 711 712 -710
		mu 0 4 526 525 537 535
		f 4 -694 713 714 -712
		mu 0 4 524 523 538 539
		f 4 -704 -707 715 960
		mu 0 4 531 530 533 540
		f 4 716 717 718 719
		mu 0 4 541 542 543 544
		f 4 720 721 722 -718
		mu 0 4 545 546 547 548
		f 4 947 724 725 948
		mu 0 4 549 550 551 552
		f 4 726 727 728 -725
		mu 0 4 550 553 554 551
		f 4 729 926 925 -728
		mu 0 4 553 555 556 554
		f 4 732 -720 733 -731
		mu 0 4 557 541 544 558
		f 4 -922 924 -730 735
		mu 0 4 445 476 555 553
		f 4 -601 -736 -727 736
		mu 0 4 446 445 553 550
		f 4 -604 -737 -948 950
		mu 0 4 448 446 550 549
		f 4 -630 -738 -721 738
		mu 0 4 472 471 546 545
		f 4 -608 -739 -717 739
		mu 0 4 429 450 542 541
		f 4 -583 -740 -733 -735
		mu 0 4 430 429 541 557
		f 4 740 741 -524 742
		mu 0 4 559 560 384 383
		f 4 743 744 -513 -742
		mu 0 4 561 562 377 376
		f 4 745 746 -529 -745
		mu 0 4 562 563 378 377
		f 4 747 748 -516 -747
		mu 0 4 563 564 374 378
		f 4 749 750 -509 -749
		mu 0 4 564 565 375 374
		f 4 751 752 -531 -751
		mu 0 4 565 566 388 375
		f 4 753 754 -533 -753
		mu 0 4 566 567 386 388
		f 4 755 -743 -527 -755
		mu 0 4 567 559 383 386
		f 4 756 757 -754 758
		mu 0 4 568 569 567 566
		f 4 759 -759 -752 760
		mu 0 4 570 568 566 565
		f 4 761 -761 -750 762
		mu 0 4 571 570 565 564
		f 4 763 -763 -748 764
		mu 0 4 572 571 564 563
		f 4 765 -765 -746 766
		mu 0 4 573 572 563 562
		f 4 767 -767 -744 768
		mu 0 4 574 573 562 561
		f 4 769 -769 -741 770
		mu 0 4 575 576 560 559
		f 4 771 -771 -756 -758
		mu 0 4 569 575 559 567
		f 4 772 773 774 775
		mu 0 4 577 578 579 580
		f 4 776 777 778 -774
		mu 0 4 578 581 582 579
		f 4 779 780 781 -778
		mu 0 4 581 583 584 582
		f 4 782 783 784 -781
		mu 0 4 583 585 586 584
		f 4 785 786 787 -784
		mu 0 4 585 587 588 586
		f 4 788 789 790 -787
		mu 0 4 589 590 591 592
		f 4 791 792 793 -790
		mu 0 4 590 593 594 591
		f 4 794 -776 795 -793
		mu 0 4 593 577 580 594
		f 4 -435 796 -792 797
		mu 0 4 310 308 593 590
		f 4 -550 -798 -789 798
		mu 0 4 401 310 590 589
		f 4 799 -546 -799 -786
		mu 0 4 585 315 397 587
		f 4 -441 -800 -783 800
		mu 0 4 316 315 585 583
		f 4 -541 -801 -780 801
		mu 0 4 318 316 583 581
		f 4 -447 -802 -777 802
		mu 0 4 317 318 581 578
		f 4 -445 -803 -773 803
		mu 0 4 307 317 578 577
		f 4 -431 -804 -795 -797
		mu 0 4 308 307 577 593
		f 4 -380 804 -404 -347
		mu 0 4 264 263 595 596
		f 4 805 -348 806 807
		mu 0 4 267 597 598 599
		f 4 808 -383 -808 809
		mu 0 4 600 268 267 599
		f 4 -373 810 -378 -349
		mu 0 4 257 256 262 261
		f 4 811 -374 812 -381
		mu 0 4 265 259 258 266
		f 4 -559 813 -966 968
		mu 0 4 406 409 270 269
		f 4 -558 815 -552 -814
		mu 0 4 409 408 404 270
		f 4 816 906 -560 -816
		mu 0 4 408 601 410 404
		f 4 -807 818 -563 -818
		mu 0 4 602 603 413 412
		f 4 -350 819 -566 -819
		mu 0 4 603 604 416 413
		f 4 -675 -815 -644 -820
		mu 0 4 605 285 489 488
		f 4 -716 820 -956 958
		mu 0 4 540 533 419 418
		f 4 -706 822 -592 -821
		mu 0 4 533 532 437 419
		f 4 -914 916 -631 -823
		mu 0 4 532 534 473 437
		f 4 -711 824 -589 -824
		mu 0 4 536 535 431 435
		f 4 -713 825 -585 -825
		mu 0 4 535 537 432 431
		f 4 -715 -822 -637 -826
		mu 0 4 539 538 479 478
		f 4 -571 826 -952 954
		mu 0 4 421 420 443 447
		f 4 -594 828 -599 -827
		mu 0 4 420 438 444 443
		f 4 -918 920 -633 -829
		mu 0 4 438 474 475 444
		f 4 -590 830 -581 -830
		mu 0 4 436 434 428 427
		f 4 -587 831 -606 -831
		mu 0 4 434 433 449 428
		f 4 -638 -828 -629 -832
		mu 0 4 481 480 470 469
		f 4 -726 832 -944 946
		mu 0 4 552 551 457 461
		f 4 -729 834 -616 -833
		mu 0 4 551 554 458 457
		f 4 -926 928 -624 -835
		mu 0 4 554 556 465 458
		f 4 -734 836 -613 -836
		mu 0 4 558 544 439 455
		f 4 -719 837 -595 -837
		mu 0 4 544 543 440 439
		f 4 -723 -834 -623 -838
		mu 0 4 548 547 464 463
		f 4 -788 838 -450 839
		mu 0 4 586 588 321 320
		f 4 -791 840 -472 -839
		mu 0 4 592 591 326 336
		f 4 -794 841 -457 -841
		mu 0 4 591 594 327 326
		f 4 -796 842 -461 -842
		mu 0 4 594 580 330 327
		f 4 -775 843 -464 -843
		mu 0 4 580 579 332 330
		f 4 -779 844 -467 -844
		mu 0 4 579 582 334 332
		f 4 -782 845 -470 -845
		mu 0 4 582 584 324 334
		f 4 -785 -840 -454 -846
		mu 0 4 584 586 320 324
		f 4 -475 846 -772 847
		mu 0 4 341 340 575 569
		f 4 -486 -848 -757 848
		mu 0 4 351 341 569 568
		f 4 -485 -849 -760 849
		mu 0 4 349 351 568 570
		f 4 -483 -850 -762 850
		mu 0 4 347 349 570 571
		f 4 -481 -851 -764 851
		mu 0 4 344 347 571 572
		f 4 -478 -852 -766 852
		mu 0 4 345 344 572 573
		f 4 -487 -853 -768 853
		mu 0 4 353 345 573 574
		f 4 -489 -854 -770 -847
		mu 0 4 340 355 576 575
		f 4 -805 854 -809 -576
		mu 0 4 595 263 268 600
		f 4 855 -384 -855 -379
		mu 0 4 262 265 268 263
		f 4 971 972 -817 -970
		mu 0 4 407 606 601 408
		f 4 -811 -391 -812 -856
		mu 0 4 262 256 259 265
		f 4 -537 856 -352 -681
		mu 0 4 390 391 234 233
		f 4 857 858 859 -813
		mu 0 4 607 608 609 610
		f 4 -377 -364 860 -858
		mu 0 4 607 611 612 608
		f 4 -860 -862 -806 -382
		mu 0 4 610 609 597 267
		f 4 862 863 -540 -369
		mu 0 4 253 613 313 254
		f 4 864 865 -863 -427
		mu 0 4 304 614 613 253
		f 4 -423 866 867 -865
		mu 0 4 304 303 615 614
		f 4 868 -867 -680 -449
		mu 0 4 319 615 303 292
		f 3 869 -539 -864
		mu 0 3 613 312 313
		f 4 870 -438 -870 -866
		mu 0 4 614 278 312 613
		f 4 -868 871 -395 -871
		mu 0 4 614 615 279 278
		f 3 -682 -872 -869
		mu 0 3 319 279 615
		f 4 -473 -874 -875 872
		mu 0 4 616 617 342 352
		f 4 -459 476 -877 873
		mu 0 4 617 618 343 342
		f 4 -463 479 -879 -477
		mu 0 4 618 619 346 343
		f 4 -466 481 -881 -480
		mu 0 4 619 620 348 346
		f 4 -469 483 -883 -482
		mu 0 4 620 621 350 348
		f 4 -471 -884 -885 -484
		mu 0 4 621 622 338 350
		f 4 -455 473 -887 883
		mu 0 4 622 623 339 338
		f 4 -452 -873 -888 -474
		mu 0 4 623 624 354 339
		f 4 -891 -453 454 455
		mu 0 4 325 323 623 622
		f 4 -893 -456 470 -892
		mu 0 4 335 325 622 621
		f 4 -895 891 468 -894
		mu 0 4 333 335 621 620
		f 4 -897 893 465 -896
		mu 0 4 331 333 620 619
		f 4 -899 895 462 -898
		mu 0 4 328 331 619 618
		f 4 -901 897 458 459
		mu 0 4 329 328 618 617
		f 4 -903 -460 472 -902
		mu 0 4 337 329 617 616
		f 4 -904 901 451 452
		mu 0 4 323 322 624 623
		f 4 904 817 -906 -907
		mu 0 4 601 602 412 410
		f 4 -909 905 560 561
		mu 0 4 411 410 412 415
		f 4 -911 -562 634 635
		mu 0 4 477 411 415 483
		f 4 -913 -636 -699 699
		mu 0 4 528 477 483 527
		f 4 -915 -700 707 708
		mu 0 4 534 528 527 536
		f 4 -917 -709 823 -916
		mu 0 4 473 534 536 435
		f 4 -919 915 -591 631
		mu 0 4 474 473 435 436
		f 4 -921 -632 829 -920
		mu 0 4 475 474 436 427
		f 4 -923 919 -584 633
		mu 0 4 476 475 427 430
		f 4 -925 -634 734 -924
		mu 0 4 555 476 430 557
		f 4 -927 923 730 731
		mu 0 4 556 555 557 558
		f 4 -929 -732 835 -928
		mu 0 4 465 556 558 455
		f 4 -931 927 -615 624
		mu 0 4 466 465 455 456
		f 4 -933 -625 -671 -932
		mu 0 4 513 466 456 500
		f 4 -935 931 -660 -934
		mu 0 4 514 513 500 503
		f 4 663 -936 -937 933
		mu 0 4 510 509 504 506
		f 4 660 -938 -939 935
		mu 0 4 509 512 505 504
		f 4 648 -941 937 651
		mu 0 4 453 494 496 515
		f 4 -942 -943 -649 -610
		mu 0 4 452 462 494 453
		f 4 619 -945 941 621
		mu 0 4 464 461 462 452
		f 4 -946 -947 -620 833
		mu 0 4 547 552 461 464
		f 4 723 -949 945 -722
		mu 0 4 546 549 552 547
		f 4 -950 -951 -724 737
		mu 0 4 471 448 549 546
		f 4 602 -953 949 604
		mu 0 4 470 447 448 471
		f 4 -954 -955 -603 827
		mu 0 4 480 421 447 470
		f 4 568 -957 953 571
		mu 0 4 479 418 421 480
		f 4 -958 -959 -569 821
		mu 0 4 538 540 418 479
		f 4 -960 -961 957 -714
		mu 0 4 523 531 540 538
		f 4 -962 -963 959 -693
		mu 0 4 486 482 531 523
		f 4 -964 -965 961 639
		mu 0 4 485 272 482 486
		f 4 384 -967 963 387
		mu 0 4 489 269 272 485
		f 4 -968 -969 -385 814
		mu 0 4 285 406 269 489
		f 4 -402 556 -971 967
		mu 0 4 285 284 407 406
		f 4 973 -810 -905 -973
		mu 0 4 606 424 602 601
		f 4 -577 -974 -972 -557
		mu 0 4 284 424 606 407
		f 4 -978 -977 -976 -975
		mu 0 4 625 626 627 628
		f 4 336 -981 -980 -979
		mu 0 4 629 630 631 632
		f 4 -983 -982 337 978
		mu 0 4 632 633 634 629
		f 4 -986 338 -985 -984
		mu 0 4 635 636 637 638
		f 4 -989 -988 339 -987
		mu 0 4 639 640 641 642
		f 4 340 -991 -990 980
		mu 0 4 630 643 644 631
		f 4 -995 -994 -993 -992
		mu 0 4 645 646 647 648
		f 4 341 -997 -996 990
		mu 0 4 643 649 650 644
		f 4 -1001 -1000 -999 -998
		mu 0 4 651 640 652 653
		f 4 342 -1004 -1003 -1002
		mu 0 4 654 655 656 657
		f 4 -1008 -1007 -1006 -1005
		mu 0 4 658 659 660 661
		f 4 -1588 -1011 -1010 -1587
		mu 0 4 662 663 664 665
		f 4 995 -1015 -1014 -1013
		mu 0 4 644 650 653 666
		f 4 -1018 979 -1017 -1016
		mu 0 4 667 668 669 670
		f 4 -1021 974 -1020 -1019
		mu 0 4 671 672 673 674
		f 4 983 -1023 977 -1022
		mu 0 4 635 638 626 625
		f 4 -1027 -1026 -1025 -1024
		mu 0 4 675 676 677 678;
	setAttr ".fc[500:999]"
		f 4 343 -1030 -1029 -1028
		mu 0 4 679 680 681 682
		f 4 1016 989 -1032 -1031
		mu 0 4 670 669 683 684
		f 4 -1035 -1034 -1033 1015
		mu 0 4 670 685 686 667
		f 4 -1039 -1038 -1037 -1036
		mu 0 4 687 688 689 690
		f 4 -1041 -1040 1034 1030
		mu 0 4 684 691 685 670
		f 4 -1044 -1043 1038 -1042
		mu 0 4 692 693 688 687
		f 4 -1048 -1047 -1046 -1045
		mu 0 4 694 695 696 697
		f 4 1037 -1050 1044 -1049
		mu 0 4 689 688 694 697
		f 4 -1052 991 -1051 1047
		mu 0 4 694 645 648 695
		f 4 -1056 -1055 -1054 -1053
		mu 0 4 698 699 700 701
		f 4 1042 -1057 1051 1049
		mu 0 4 688 693 645 694
		f 4 -1060 -1059 1055 -1058
		mu 0 4 702 703 699 698
		f 4 -1062 -1061 1021 1020
		mu 0 4 671 704 705 672
		f 4 -1066 -1065 -1064 -1063
		mu 0 4 706 707 708 709
		f 4 1053 -1069 -1068 -1067
		mu 0 4 701 700 710 646
		f 4 1067 -1071 -1070 993
		mu 0 4 646 710 711 647
		f 4 1032 -1073 -1072 1017
		mu 0 4 667 686 712 668
		f 4 -1510 -1525 -1075 -1074
		mu 0 4 713 714 715 716
		f 4 -1511 -1512 1509 -1078
		mu 0 4 717 718 714 713
		f 4 -1521 -1522 -1082 -1081
		mu 0 4 719 720 721 722
		f 4 1081 -1520 -1086 -1085
		mu 0 4 722 721 723 724
		f 4 1085 -1518 -1089 -1088
		mu 0 4 724 723 725 726
		f 4 1088 -1516 -1092 -1091
		mu 0 4 726 725 727 728
		f 4 1091 -1514 1510 -1094
		mu 0 4 728 727 718 717
		f 4 1074 -1524 1520 -1096
		mu 0 4 729 730 720 719
		f 4 -1100 -1099 -1507 -1508
		mu 0 4 731 732 733 734
		f 4 -1103 -1102 -1497 -1498
		mu 0 4 735 736 737 738
		f 4 1496 -1105 -1499 -1500
		mu 0 4 738 737 739 740
		f 4 1498 -1107 -1501 -1502
		mu 0 4 740 739 741 742
		f 4 1500 -1109 -1503 -1504
		mu 0 4 742 741 743 744
		f 4 1502 -1110 1099 -1506
		mu 0 4 744 743 732 731
		f 4 -1112 -1111 1102 -1496
		mu 0 4 745 746 736 735
		f 4 1506 -1113 1111 -1509
		mu 0 4 734 733 747 748
		f 4 -1117 -1116 -1115 -1114
		mu 0 4 749 750 751 752
		f 4 -1121 -1120 -1119 -1118
		mu 0 4 753 754 755 756
		f 4 -1125 -1124 -1123 -1122
		mu 0 4 757 758 759 760
		f 4 -1129 -1128 -1127 -1126
		mu 0 4 761 762 763 764
		f 4 -1132 -1131 1119 -1130
		mu 0 4 765 758 755 766
		f 4 -1136 -1135 -1134 -1133
		mu 0 4 767 756 757 768
		f 4 -1139 1113 -1138 -1137
		mu 0 4 769 749 752 770
		f 4 -1141 1117 1135 -1140
		mu 0 4 771 753 756 767
		f 4 -1143 1123 1131 -1142
		mu 0 4 772 759 758 765
		f 4 1127 1141 -1145 -1144
		mu 0 4 773 772 765 774
		f 4 1144 1129 -1146 1115
		mu 0 4 774 765 766 775
		f 4 1122 1142 1128 -1147
		mu 0 4 760 759 762 761
		f 4 -1150 -1149 1138 -1148
		mu 0 4 776 764 777 778
		f 4 -1152 1125 1149 -1151
		mu 0 4 779 761 764 776
		f 4 1118 1130 1124 1134
		mu 0 4 756 755 758 757
		f 4 1137 -1154 1140 -1153
		mu 0 4 770 752 753 771
		f 4 1114 1145 1120 1153
		mu 0 4 752 751 754 753
		f 4 1126 1143 1116 1148
		mu 0 4 764 763 780 777
		f 4 1133 1121 -1156 -1155
		mu 0 4 768 757 760 781
		f 4 1155 1146 1151 -1157
		mu 0 4 781 760 761 779
		f 4 -1159 -1158 1040 1031
		mu 0 4 683 782 691 684
		f 4 -1161 -1160 982 1071
		mu 0 4 783 784 633 632
		f 3 -1163 -1162 1060
		mu 0 3 704 706 705
		f 4 1069 -1165 1065 -1164
		mu 0 4 647 711 707 706
		f 4 -1166 1066 994 1056
		mu 0 4 693 701 646 645
		f 4 1161 1062 -1167 985
		mu 0 4 785 786 787 788
		f 4 -1170 -1169 -1168 1063
		mu 0 4 708 789 790 709
		f 4 -1171 1052 1165 1043
		mu 0 4 692 698 701 693
		f 4 -1172 1057 1170 986
		mu 0 4 642 791 792 639
		f 4 1168 -1174 1059 -1173
		mu 0 4 793 794 703 702
		f 4 -1175 1172 1171 344
		mu 0 4 795 796 791 642
		f 4 1167 1174 345 1166
		mu 0 4 787 796 795 788
		f 4 1009 -1178 -1177 -1176
		mu 0 4 665 664 797 798
		f 4 -1180 1028 -1179 1023
		mu 0 4 678 682 681 675
		f 4 -1183 -1182 -1591 -1592
		mu 0 4 799 800 801 802
		f 4 1176 -1529 -1530 -1184
		mu 0 4 798 797 803 804
		f 4 1184 -1189 -1188 -1187
		mu 0 4 805 806 807 808
		f 4 1187 -1192 -1191 -1190
		mu 0 4 808 807 809 810
		f 4 -1578 -1195 -1194 -1577
		mu 0 4 811 812 813 814
		f 4 -1199 -1198 -1197 1177
		mu 0 4 664 815 816 797
		f 4 1179 1024 -1201 -1200
		mu 0 4 682 678 677 817
		f 4 -1204 -1203 -1202 1191
		mu 0 4 807 818 819 809
		f 4 -1208 -1207 -1206 -1205
		mu 0 4 820 821 822 823
		f 4 -1212 -1211 -1210 -1209
		mu 0 4 824 825 826 827
		f 4 -1215 -1214 1211 -1213
		mu 0 4 828 829 825 824
		f 4 1193 -1218 -1217 -1216
		mu 0 4 814 813 830 831
		f 4 -1222 -1221 -1220 -1219
		mu 0 4 832 833 834 835
		f 4 -1226 -1225 -1224 -1223
		mu 0 4 836 837 838 839
		f 4 -1574 -1228 1225 -1573
		mu 0 4 840 841 837 836
		f 4 1205 -1232 -1231 -1230
		mu 0 4 823 822 842 843
		f 4 -1236 -1235 -1234 -1233
		mu 0 4 844 845 846 847
		f 4 -1239 -1238 1221 -1237
		mu 0 4 848 849 833 832
		f 4 -1243 -1242 -1241 -1240
		mu 0 4 850 851 852 853
		f 4 -1566 -1245 1242 -1565
		mu 0 4 854 855 851 850
		f 4 1219 1232 1245 -1247
		mu 0 4 856 844 847 857
		f 4 1240 -1551 -1552 -1248
		mu 0 4 853 852 858 859
		f 4 -1252 -1251 -1250 1241
		mu 0 4 851 860 861 852
		f 4 1230 -1254 1228 -1253
		mu 0 4 862 863 864 865
		f 4 1216 -1539 -1540 -1255
		mu 0 4 831 830 866 867
		f 4 1223 -1543 -1544 -1257
		mu 0 4 839 838 868 869
		f 4 1196 -1531 -1532 1528
		mu 0 4 797 816 870 803
		f 4 1209 -1262 1195 -1261
		mu 0 4 871 872 873 874
		f 4 -1586 -1263 1198 1010
		mu 0 4 663 875 815 664
		f 4 1258 -1265 1203 1188
		mu 0 4 806 876 818 807
		f 4 1201 -1267 1263 -1266
		mu 0 4 877 878 879 880
		f 4 1190 1265 1011 -1268
		mu 0 4 881 877 880 882
		f 4 -1272 -1271 -1270 -1269
		mu 0 4 883 884 885 886
		f 4 -1562 -1275 -1274 -1561
		mu 0 4 887 888 889 860
		f 4 -1280 -1279 -1278 -1277
		mu 0 4 861 890 891 892
		f 4 -1284 -1283 -1282 -1281
		mu 0 4 893 894 895 896
		f 4 -1287 -1286 1274 -1560
		mu 0 4 897 890 889 898
		f 4 -1564 1560 1251 1244
		mu 0 4 855 887 860 851
		f 4 -1289 1278 1286 -1558
		mu 0 4 899 891 890 897
		f 4 1282 1287 -1291 -1290
		mu 0 4 900 901 902 903
		f 4 1290 1284 -1292 1270
		mu 0 4 903 902 904 905
		f 4 1277 1288 -1556 -1293
		mu 0 4 892 891 906 907
		f 4 -1295 1280 -1294 1237
		mu 0 4 849 893 896 833
		f 4 1273 1285 1279 1250
		mu 0 4 860 889 890 861
		f 4 1269 1291 1275 1234
		mu 0 4 845 908 909 846
		f 4 1281 1289 1271 -1296
		mu 0 4 896 895 884 883
		f 4 -1297 1268 1235 1220
		mu 0 4 833 883 886 834
		f 3 1293 1295 1296
		mu 0 3 833 896 883
		f 4 -1298 1292 -1554 1550
		mu 0 4 852 892 907 858
		f 3 1249 1276 1297
		mu 0 3 852 861 892
		f 3 1013 998 -1300
		mu 0 3 666 653 652
		f 4 1157 -1302 1036 -1301
		mu 0 4 691 782 690 689
		f 4 1039 1300 1048 -1303
		mu 0 4 685 691 689 697
		f 4 1033 1302 1045 -1304
		mu 0 4 686 685 697 696
		f 3 -1306 1019 -1305
		mu 0 3 712 674 673
		f 3 1041 -1308 -1307
		mu 0 3 692 687 910
		f 4 1307 1035 -1310 -1309
		mu 0 4 910 687 690 911
		f 4 1301 -1312 -1311 1309
		mu 0 4 690 782 912 911
		f 3 -1313 1311 1158
		mu 0 3 683 912 782
		f 3 988 1306 -1314
		mu 0 3 913 692 910
		f 4 999 1313 1308 -1315
		mu 0 4 914 913 910 911
		f 4 1310 -1316 1299 1314
		mu 0 4 911 912 915 914
		f 3 1012 1315 1312
		mu 0 3 683 915 912
		f 4 -1319 -1318 -1317 1266
		mu 0 4 878 916 917 879
		f 4 -1321 -1320 1318 1202
		mu 0 4 818 918 919 819
		f 4 -1323 -1322 1320 1264
		mu 0 4 876 920 918 818
		f 4 -1325 -1533 -1534 1530
		mu 0 4 816 921 922 870
		f 4 -1327 -1326 1324 1197
		mu 0 4 815 923 921 816
		f 4 -1584 -1328 1326 1262
		mu 0 4 875 924 923 815
		f 4 -1331 -1330 -1329 1325
		mu 0 4 923 925 926 921
		f 4 1328 -1535 -1536 1532
		mu 0 4 921 926 927 922
		f 4 1331 -1335 -1334 1321
		mu 0 4 920 928 929 918
		f 4 1333 -1337 -1336 1319
		mu 0 4 918 929 930 919
		f 4 1335 -1339 -1338 1317
		mu 0 4 916 931 932 917
		f 4 -1582 -1340 1330 1327
		mu 0 4 924 933 925 923
		f 4 -1344 -1343 -1342 -1341
		mu 0 4 934 935 936 937
		f 4 1341 -1347 -1346 -1345
		mu 0 4 938 939 940 941
		f 4 -1570 -1350 -1349 -1569
		mu 0 4 942 943 944 945
		f 4 1348 -1353 -1352 -1351
		mu 0 4 945 944 946 947
		f 4 1351 -1547 -1548 -1354
		mu 0 4 947 946 948 949
		f 4 1354 -1358 1343 -1357
		mu 0 4 950 951 935 934
		f 4 -1360 1353 -1546 1542
		mu 0 4 838 947 949 868
		f 4 -1361 1350 1359 1224
		mu 0 4 837 945 947 838
		f 4 -1572 1568 1360 1227
		mu 0 4 841 942 945 837
		f 4 -1363 1344 1361 1253
		mu 0 4 863 938 941 864
		f 4 -1364 1340 1362 1231
		mu 0 4 822 934 937 842
		f 4 1358 1356 1363 1206
		mu 0 4 821 950 934 822
		f 4 -1367 1147 -1366 -1365
		mu 0 4 952 776 778 953
		f 4 1365 1136 -1369 -1368
		mu 0 4 954 769 770 955
		f 4 1368 1152 -1371 -1370
		mu 0 4 955 770 771 956
		f 4 1370 1139 -1373 -1372
		mu 0 4 956 771 767 957
		f 4 1372 1132 -1375 -1374
		mu 0 4 957 767 768 958
		f 4 1374 1154 -1377 -1376
		mu 0 4 958 768 781 959
		f 4 1376 1156 -1379 -1378
		mu 0 4 959 781 779 960
		f 4 1378 1150 1366 -1380
		mu 0 4 960 779 776 952
		f 4 -1383 1377 -1382 -1381
		mu 0 4 961 959 960 962
		f 4 -1385 1375 1382 -1384
		mu 0 4 963 958 959 961
		f 4 -1387 1373 1384 -1386
		mu 0 4 964 957 958 963
		f 4 -1389 1371 1386 -1388
		mu 0 4 965 956 957 964
		f 4 -1391 1369 1388 -1390
		mu 0 4 966 955 956 965
		f 4 -1393 1367 1390 -1392
		mu 0 4 967 954 955 966
		f 4 -1395 1364 1392 -1394
		mu 0 4 968 952 953 969
		f 4 1381 1379 1394 -1396
		mu 0 4 962 960 952 968
		f 4 -1400 -1399 -1398 -1397
		mu 0 4 970 971 972 973
		f 4 1397 -1403 -1402 -1401
		mu 0 4 973 972 974 975
		f 4 1401 -1406 -1405 -1404
		mu 0 4 975 974 976 977
		f 4 1404 -1409 -1408 -1407
		mu 0 4 977 976 978 979
		f 4 1407 -1412 -1411 -1410
		mu 0 4 979 978 980 981
		f 4 1410 -1415 -1414 -1413
		mu 0 4 982 983 984 985
		f 4 1413 -1418 -1417 -1416
		mu 0 4 985 984 986 987
		f 4 1416 -1420 1399 -1419
		mu 0 4 987 986 971 970
		f 4 -1422 1415 -1421 1058
		mu 0 4 703 985 987 699
		f 4 -1423 1412 1421 1173
		mu 0 4 794 982 985 703
		f 4 1409 1422 1169 -1424
		mu 0 4 979 981 789 708
		f 4 -1425 1406 1423 1064
		mu 0 4 707 977 979 708
		f 4 -1426 1403 1424 1164
		mu 0 4 711 975 977 707
		f 4 -1427 1400 1425 1070
		mu 0 4 710 973 975 711
		f 4 -1428 1396 1426 1068
		mu 0 4 700 970 973 710
		f 4 1420 1418 1427 1054
		mu 0 4 699 987 970 700
		f 4 346 1027 -1429 1003
		mu 0 4 655 988 989 656
		f 4 -1432 -1431 347 -1430
		mu 0 4 660 990 991 992
		f 4 -1434 1431 1006 -1433
		mu 0 4 993 990 660 659
		f 4 348 1001 -1435 996
		mu 0 4 649 654 657 650
		f 4 1004 -1437 997 -1436
		mu 0 4 658 661 651 653
		f 4 -1590 1586 -1438 1182
		mu 0 4 799 662 665 800
		f 4 1437 1175 -1440 1181
		mu 0 4 800 665 798 801
		f 4 1439 1183 -1528 -1441
		mu 0 4 801 798 804 994
		f 4 1441 1186 -1443 1430
		mu 0 4 995 805 808 996
		f 4 1442 1189 -1444 349
		mu 0 4 996 808 810 997
		f 4 1443 1267 1438 1298
		mu 0 4 998 881 882 676
		f 4 -1580 1576 -1445 1339
		mu 0 4 933 811 814 925
		f 4 1444 1215 -1447 1329
		mu 0 4 925 814 831 926
		f 4 1446 1254 -1538 1534
		mu 0 4 926 831 867 927
		f 4 1447 1212 -1449 1334
		mu 0 4 928 828 824 929
		f 4 1448 1208 -1450 1336
		mu 0 4 929 824 827 930
		f 4 1449 1260 1445 1338
		mu 0 4 931 871 874 932
		f 4 -1576 1572 -1451 1194
		mu 0 4 812 840 836 813
		f 4 1450 1222 -1453 1217
		mu 0 4 813 836 839 830
		f 4 1452 1256 -1542 1538
		mu 0 4 830 839 869 866
		f 4 1453 1204 -1455 1213
		mu 0 4 829 820 823 825
		f 4 1454 1229 -1456 1210
		mu 0 4 825 823 843 826
		f 4 1455 1252 1451 1261
		mu 0 4 872 862 865 873
		f 4 -1568 1564 -1457 1349
		mu 0 4 943 854 850 944
		f 4 1456 1239 -1459 1352
		mu 0 4 944 850 853 946
		f 4 1458 1247 -1550 1546
		mu 0 4 946 853 859 948
		f 4 1459 1236 -1461 1357
		mu 0 4 951 848 832 935
		f 4 1460 1218 -1462 1342
		mu 0 4 935 832 835 936
		f 4 1461 1246 1457 1346
		mu 0 4 939 856 857 940
		f 4 -1464 1073 -1463 1411
		mu 0 4 978 713 716 980
		f 4 1462 1095 -1465 1414
		mu 0 4 983 729 719 984
		f 4 1464 1080 -1466 1417
		mu 0 4 984 719 722 986
		f 4 1465 1084 -1467 1419
		mu 0 4 986 722 724 971
		f 4 1466 1087 -1468 1398
		mu 0 4 971 724 726 972
		f 4 1467 1090 -1469 1402
		mu 0 4 972 726 728 974
		f 4 1468 1093 -1470 1405
		mu 0 4 974 728 717 976
		f 4 1469 1077 1463 1408
		mu 0 4 976 717 713 978
		f 4 -1472 1395 -1471 1098
		mu 0 4 732 962 968 733
		f 4 -1473 1380 1471 1109
		mu 0 4 743 961 962 732
		f 4 -1474 1383 1472 1108
		mu 0 4 741 963 961 743
		f 4 -1475 1385 1473 1106
		mu 0 4 739 964 963 741
		f 4 -1476 1387 1474 1104
		mu 0 4 737 965 964 739
		f 4 -1477 1389 1475 1101
		mu 0 4 736 966 965 737
		f 4 -1478 1391 1476 1110
		mu 0 4 746 967 966 736
		f 4 1470 1393 1477 1112
		mu 0 4 733 968 969 747
		f 4 1199 1432 -1479 1428
		mu 0 4 989 993 659 656
		f 4 1002 1478 1007 -1480
		mu 0 4 657 656 659 658
		f 4 1590 1440 -1594 -1593
		mu 0 4 802 801 994 999
		f 4 1479 1435 1014 1434
		mu 0 4 657 658 653 650
		f 4 1304 975 -1481 1160
		mu 0 4 783 628 627 784
		f 4 1436 -1483 -859 -1482
		mu 0 4 1000 1001 1002 1003
		f 4 1481 -861 987 1000
		mu 0 4 1000 1003 1004 1005
		f 4 1005 1429 861 1482
		mu 0 4 1001 660 992 1002
		f 4 992 1163 -1485 -1484
		mu 0 4 648 647 706 1006
		f 4 1050 1483 -1487 -1486
		mu 0 4 695 648 1006 1007
		f 4 1485 -1489 -1488 1046
		mu 0 4 695 1007 1008 696
		f 4 1072 1303 1487 -1490
		mu 0 4 712 686 696 1008
		f 3 1484 1162 -1491
		mu 0 3 1006 706 704
		f 4 1486 1490 1061 -1492
		mu 0 4 1007 1006 704 671
		f 4 1491 1018 -1493 1488
		mu 0 4 1007 671 674 1008
		f 3 1489 1492 1305
		mu 0 3 712 1008 674
		f 4 -1494 1495 1494 1096
		mu 0 4 1009 745 735 1010
		f 4 -1495 1497 -1101 1082
		mu 0 4 1010 735 738 1011
		f 4 1100 1499 -1104 1086
		mu 0 4 1011 738 740 1012
		f 4 1103 1501 -1106 1089
		mu 0 4 1012 740 742 1013
		f 4 1105 1503 -1108 1092
		mu 0 4 1013 742 744 1014
		f 4 1107 1505 1504 1094
		mu 0 4 1014 744 731 1015
		f 4 -1505 1507 -1098 1078
		mu 0 4 1015 731 734 1016
		f 4 1097 1508 1493 1075
		mu 0 4 1016 734 748 1017
		f 4 -1080 -1079 1076 1511
		mu 0 4 718 1015 1016 714
		f 4 1512 -1095 1079 1513
		mu 0 4 727 1014 1015 718
		f 4 1514 -1093 -1513 1515
		mu 0 4 725 1013 1014 727
		f 4 1516 -1090 -1515 1517
		mu 0 4 723 1012 1013 725
		f 4 1518 -1087 -1517 1519
		mu 0 4 721 1011 1012 723
		f 4 -1084 -1083 -1519 1521
		mu 0 4 720 1010 1011 721
		f 4 1522 -1097 1083 1523
		mu 0 4 730 1009 1010 720
		f 4 -1077 -1076 -1523 1524
		mu 0 4 714 1016 1017 715
		f 4 1527 1526 -1442 -1526
		mu 0 4 994 804 805 995
		f 4 -1186 -1185 -1527 1529
		mu 0 4 803 806 805 804
		f 4 -1260 -1259 1185 1531
		mu 0 4 870 876 806 803
		f 4 -1324 1322 1259 1533
		mu 0 4 922 920 876 870
		f 4 -1333 -1332 1323 1535
		mu 0 4 927 928 920 922
		f 4 1536 -1448 1332 1537
		mu 0 4 867 828 928 927
		f 4 -1256 1214 -1537 1539
		mu 0 4 866 829 828 867
		f 4 1540 -1454 1255 1541
		mu 0 4 869 820 829 866
		f 4 -1258 1207 -1541 1543
		mu 0 4 868 821 820 869
		f 4 1544 -1359 1257 1545
		mu 0 4 949 950 821 868
		f 4 -1356 -1355 -1545 1547
		mu 0 4 948 951 950 949
		f 4 1548 -1460 1355 1549
		mu 0 4 859 848 951 948
		f 4 -1249 1238 -1549 1551
		mu 0 4 858 849 848 859
		f 4 1552 1294 1248 1553
		mu 0 4 907 893 849 858
		f 4 1554 1283 -1553 1555
		mu 0 4 906 894 893 907
		f 4 -1555 1557 1556 -1288
		mu 0 4 901 899 897 902
		f 4 -1557 1559 1558 -1285
		mu 0 4 902 897 898 904
		f 4 -1276 -1559 1561 -1273
		mu 0 4 846 909 888 887
		f 4 1233 1272 1563 1562
		mu 0 4 847 846 887 855
		f 4 -1246 -1563 1565 -1244
		mu 0 4 857 847 855 854
		f 4 -1458 1243 1567 1566
		mu 0 4 940 857 854 943
		f 4 1345 -1567 1569 -1348
		mu 0 4 941 940 943 942
		f 4 -1362 1347 1571 1570
		mu 0 4 864 941 942 841
		f 4 -1229 -1571 1573 -1227
		mu 0 4 865 864 841 840
		f 4 -1452 1226 1575 1574
		mu 0 4 873 865 840 812
		f 4 -1196 -1575 1577 -1193
		mu 0 4 874 873 812 811
		f 4 -1446 1192 1579 1578
		mu 0 4 932 874 811 933
		f 4 1337 -1579 1581 1580
		mu 0 4 917 932 933 924
		f 4 1316 -1581 1583 1582
		mu 0 4 879 917 924 875
		f 4 -1264 -1583 1585 1584
		mu 0 4 880 879 875 663
		f 4 -1012 -1585 1587 -1009
		mu 0 4 882 880 663 662
		f 4 -1439 1008 1589 1588
		mu 0 4 676 882 662 799
		f 4 -1589 1591 -1181 1025
		mu 0 4 676 799 802 677
		f 4 1593 1525 1433 -1595
		mu 0 4 999 994 995 817
		f 4 1180 1592 1594 1200
		mu 0 4 677 802 999 817
		f 4 1595 1596 1597 1598
		mu 0 4 1018 1019 1020 1021
		f 4 1599 1600 1601 -337
		mu 0 4 1022 1023 1024 1025
		f 4 -1600 -338 1602 1603
		mu 0 4 1023 1022 1026 1027
		f 4 1604 1605 -339 1606
		mu 0 4 1028 1029 1030 1031
		f 4 1607 -340 1608 1609
		mu 0 4 1032 1033 1034 1035
		f 4 -1602 1610 1611 -341
		mu 0 4 1025 1024 1036 1037
		f 4 1612 1613 1614 1615
		mu 0 4 1038 1039 1040 1041
		f 4 -1612 1616 1617 -342
		mu 0 4 1037 1036 1042 1043
		f 4 1618 1619 1620 1621
		mu 0 4 1044 1045 1046 1035
		f 4 377 378 379 -343
		mu 0 4 1047 1048 1049 1050
		f 4 380 381 382 383
		mu 0 4 1051 1052 1053 1054
		f 4 965 385 386 966
		mu 0 4 1055 1056 1057 1058
		f 4 1622 1623 1624 -1617
		mu 0 4 1036 1059 1045 1042
		f 4 1625 1626 -1601 1627
		mu 0 4 1060 1061 1062 1063
		f 4 1628 1629 -1596 1630
		mu 0 4 1064 1065 1066 1067
		f 4 1631 -1599 1632 -1605
		mu 0 4 1028 1018 1021 1029
		f 4 399 400 401 402
		mu 0 4 1068 1069 1070 1071
		f 4 403 404 405 -344
		mu 0 4 1072 1073 1074 1075
		f 4 1633 1634 -1611 -1627
		mu 0 4 1061 1076 1077 1062
		f 4 -1626 1635 1636 1637
		mu 0 4 1061 1060 1078 1079
		f 4 1638 1639 1640 1641
		mu 0 4 1080 1081 1082 1083
		f 4 -1634 -1638 1642 1643
		mu 0 4 1076 1061 1079 1084
		f 4 1644 -1642 1645 1646
		mu 0 4 1085 1080 1083 1086
		f 4 1647 1648 1649 1650
		mu 0 4 1087 1088 1089 1090
		f 4 1651 -1648 1652 -1641
		mu 0 4 1082 1088 1087 1083
		f 4 -1651 1653 -1613 1654
		mu 0 4 1087 1090 1039 1038
		f 4 1655 1656 1657 1658
		mu 0 4 1091 1092 1093 1094
		f 4 -1653 -1655 1659 -1646
		mu 0 4 1083 1087 1038 1086
		f 4 1660 -1659 1661 1662
		mu 0 4 1095 1091 1094 1096
		f 4 -1631 -1632 1663 1664
		mu 0 4 1064 1067 1097 1098
		f 4 1665 1666 1667 1668
		mu 0 4 1099 1100 1101 1102
		f 4 1669 1670 1671 -1657
		mu 0 4 1092 1041 1103 1093
		f 4 -1615 1672 1673 -1671
		mu 0 4 1041 1040 1104 1103
		f 4 -1628 1674 1675 -1636
		mu 0 4 1060 1063 1105 1078
		f 4 1676 1677 2028 2013
		mu 0 4 1106 1107 1108 1109
		f 4 1680 -2014 2015 2014
		mu 0 4 1110 1106 1109 1111
		f 4 1683 1684 2025 2024
		mu 0 4 1112 1113 1114 1115
		f 4 1687 1688 2023 -1685
		mu 0 4 1113 1116 1117 1114
		f 4 1690 1691 2021 -1689
		mu 0 4 1116 1118 1119 1117
		f 4 1693 1694 2019 -1692
		mu 0 4 1118 1120 1121 1119
		f 4 1696 -2015 2017 -1695
		mu 0 4 1120 1110 1111 1121
		f 4 1698 -2025 2027 -1678
		mu 0 4 1122 1112 1115 1123
		f 4 2011 2010 1701 1702
		mu 0 4 1124 1125 1126 1127
		f 4 2001 2000 1704 1705
		mu 0 4 1128 1129 1130 1131
		f 4 2003 2002 1707 -2001
		mu 0 4 1129 1132 1133 1130
		f 4 2005 2004 1709 -2003
		mu 0 4 1132 1134 1135 1133
		f 4 2007 2006 1711 -2005
		mu 0 4 1134 1136 1137 1135
		f 4 2009 -1703 1712 -2007
		mu 0 4 1136 1124 1127 1137
		f 4 1999 -1706 1713 1714
		mu 0 4 1138 1128 1131 1139
		f 4 2012 -1715 1715 -2011
		mu 0 4 1125 1140 1141 1126
		f 4 1716 1717 1718 1719
		mu 0 4 1142 1143 1144 1145
		f 4 1720 1721 1722 1723
		mu 0 4 1146 1147 1148 1149
		f 4 1724 1725 1726 1727
		mu 0 4 1150 1151 1152 1153
		f 4 1728 1729 1730 1731
		mu 0 4 1154 1155 1156 1157
		f 4 1732 -1723 1733 1734
		mu 0 4 1158 1159 1148 1153
		f 4 1735 1736 1737 1738
		mu 0 4 1160 1161 1150 1147
		f 4 1739 1740 -1717 1741
		mu 0 4 1162 1163 1143 1142
		f 4 1742 -1739 -1721 1743
		mu 0 4 1164 1160 1147 1146
		f 4 1744 -1735 -1727 1745
		mu 0 4 1165 1158 1153 1152
		f 4 1746 1747 -1745 -1731
		mu 0 4 1166 1167 1158 1165
		f 4 -1719 1748 -1733 -1748
		mu 0 4 1167 1168 1159 1158
		f 4 1749 -1732 -1746 -1726
		mu 0 4 1151 1154 1157 1152
		f 4 1750 -1742 1751 1752
		mu 0 4 1169 1170 1171 1155
		f 4 1753 -1753 -1729 1754
		mu 0 4 1172 1169 1155 1154
		f 4 -1738 -1728 -1734 -1722
		mu 0 4 1147 1150 1153 1148
		f 4 1755 -1744 1756 -1741
		mu 0 4 1163 1164 1146 1143
		f 4 -1757 -1724 -1749 -1718
		mu 0 4 1143 1146 1149 1144
		f 4 -1752 -1720 -1747 -1730
		mu 0 4 1155 1171 1173 1156
		f 4 1757 1758 -1725 -1737
		mu 0 4 1161 1174 1151 1150
		f 4 1759 -1755 -1750 -1759
		mu 0 4 1174 1172 1154 1151
		f 4 -1635 -1644 1760 1761
		mu 0 4 1077 1076 1084 1175
		f 4 -1675 -1604 1762 1763
		mu 0 4 1176 1023 1027 1177
		f 3 -1664 1764 1765
		mu 0 3 1098 1097 1099
		f 4 1766 -1669 1767 -1673
		mu 0 4 1040 1099 1102 1104
		f 4 -1660 -1616 -1670 1768
		mu 0 4 1086 1038 1041 1092
		f 4 -1607 1769 -1666 -1765
		mu 0 4 1178 1179 1180 1181
		f 4 -1667 1770 1771 1772
		mu 0 4 1101 1100 1182 1183
		f 4 -1647 -1769 -1656 1773
		mu 0 4 1085 1086 1092 1091
		f 4 -1608 -1774 -1661 1774
		mu 0 4 1033 1032 1184 1185
		f 4 1775 -1663 1776 -1772
		mu 0 4 1186 1095 1096 1187
		f 4 -345 -1775 -1776 1777
		mu 0 4 1188 1033 1185 1189
		f 4 -1770 -346 -1778 -1771
		mu 0 4 1180 1179 1188 1189
		f 4 551 552 553 -386
		mu 0 4 1056 1190 1191 1057
		f 4 -400 554 -405 555
		mu 0 4 1069 1068 1074 1073
		f 4 970 969 557 558
		mu 0 4 1192 1193 1194 1195
		f 4 559 908 907 -553
		mu 0 4 1190 1196 1197 1191
		f 4 562 563 564 -561
		mu 0 4 1198 1199 1200 1201
		f 4 565 566 567 -564
		mu 0 4 1199 1202 1203 1200
		f 4 2064 1778 570 956
		mu 0 4 1204 1205 1206 1207
		f 4 -554 572 573 574
		mu 0 4 1057 1191 1208 1209
		f 4 575 576 -401 -556
		mu 0 4 1073 1210 1070 1069
		f 4 -568 577 578 579
		mu 0 4 1200 1203 1211 1212
		f 4 580 581 582 583
		mu 0 4 1213 1214 1215 1216
		f 4 584 585 586 587
		mu 0 4 1217 1218 1219 1220
		f 4 1779 -588 589 1780
		mu 0 4 1221 1217 1220 1222
		f 4 1781 1782 1783 -1779
		mu 0 4 1205 1223 1224 1206
		f 4 1784 1785 1786 1787
		mu 0 4 1225 1226 1227 1228
		f 4 598 1788 1789 1790
		mu 0 4 1229 1230 1231 1232
		f 4 951 -1791 1791 2063
		mu 0 4 1233 1229 1232 1234
		f 4 605 606 607 -582
		mu 0 4 1214 1235 1236 1215
		f 4 1793 1794 1795 1796
		mu 0 4 1237 1238 1239 1240
		f 4 1797 -1788 1798 1799
		mu 0 4 1241 1225 1228 1242
		f 4 1800 1801 1802 1803
		mu 0 4 1243 1244 1245 1246
		f 4 2055 -1804 1805 2056
		mu 0 4 1247 1243 1246 1248
		f 4 1807 -1807 -1794 -1786
		mu 0 4 1249 1250 1238 1237
		f 4 1808 2042 2041 -1802
		mu 0 4 1244 1251 1252 1245
		f 4 -1803 1810 1811 1812
		mu 0 4 1246 1245 1253 1254
		f 4 628 -1793 1813 -607
		mu 0 4 1255 1256 1257 1258
		f 4 1814 2032 2031 -1783
		mu 0 4 1223 1259 1260 1224
		f 4 632 2034 2033 -1789
		mu 0 4 1230 1261 1262 1231
		f 4 -908 910 909 -573
		mu 0 4 1191 1197 1263 1208
		f 4 636 -572 637 -586
		mu 0 4 1264 1265 1266 1267
		f 4 -387 -575 638 964
		mu 0 4 1058 1057 1209 1268
		f 4 -565 -580 640 -635
		mu 0 4 1201 1200 1212 1269
		f 4 641 -640 642 -578
		mu 0 4 1270 1271 1272 1273
		f 4 643 -388 -642 -567
		mu 0 4 1274 1275 1271 1270
		f 4 1816 1817 1818 1819
		mu 0 4 1276 1277 1278 1279
		f 4 2051 1821 1822 2052
		mu 0 4 1280 1254 1281 1282
		f 4 1824 1825 1826 1827
		mu 0 4 1253 1283 1284 1285
		f 4 1828 1829 1830 1831
		mu 0 4 1286 1287 1288 1289
		f 4 2050 -1823 1833 1834
		mu 0 4 1290 1291 1281 1285
		f 4 -1806 -1813 -2052 2054
		mu 0 4 1248 1246 1254 1280
		f 4 2048 -1835 -1827 1836
		mu 0 4 1292 1290 1285 1284
		f 4 1837 1838 -1836 -1831
		mu 0 4 1293 1294 1295 1296
		f 4 -1819 1839 -1833 -1839
		mu 0 4 1294 1297 1298 1295
		f 4 1840 2046 -1837 -1826
		mu 0 4 1283 1299 1300 1284
		f 4 -1799 1841 -1829 1842
		mu 0 4 1242 1228 1287 1286
		f 4 -1812 -1828 -1834 -1822
		mu 0 4 1254 1253 1285 1281
		f 4 -1796 -1824 -1840 -1818
		mu 0 4 1240 1239 1301 1302
		f 4 1843 -1820 -1838 -1830
		mu 0 4 1287 1276 1279 1288
		f 4 -1787 -1797 -1817 1844
		mu 0 4 1228 1227 1277 1276
		f 3 -1845 -1844 -1842
		mu 0 3 1228 1276 1287
		f 4 -2042 2044 -1841 1845
		mu 0 4 1245 1252 1299 1283
		f 3 -1846 -1825 -1811
		mu 0 3 1245 1283 1253
		f 3 1846 -1620 -1624
		mu 0 3 1059 1046 1045
		f 4 1847 -1640 1848 -1761
		mu 0 4 1084 1082 1081 1175
		f 4 1849 -1652 -1848 -1643
		mu 0 4 1079 1088 1082 1084
		f 4 1850 -1649 -1850 -1637
		mu 0 4 1078 1089 1088 1079
		f 3 1851 -1630 1852
		mu 0 3 1105 1066 1065
		f 3 1853 1854 -1645
		mu 0 3 1085 1303 1080
		f 4 1855 1856 -1639 -1855
		mu 0 4 1303 1304 1081 1080
		f 4 -1857 1857 1858 -1849
		mu 0 4 1081 1304 1305 1175
		f 3 -1762 -1859 1859
		mu 0 3 1077 1175 1305
		f 3 1860 -1854 -1610
		mu 0 3 1306 1303 1085
		f 4 1861 -1856 -1861 -1621
		mu 0 4 1307 1304 1303 1306
		f 4 -1862 -1847 1862 -1858
		mu 0 4 1304 1307 1308 1305
		f 3 -1860 -1863 -1623
		mu 0 3 1077 1305 1308
		f 4 -643 692 693 694
		mu 0 4 1273 1272 1309 1310
		f 4 -579 -695 695 696
		mu 0 4 1212 1211 1311 1312
		f 4 -641 -697 697 698
		mu 0 4 1269 1212 1312 1313
		f 4 -910 912 911 700
		mu 0 4 1208 1263 1314 1315
		f 4 -574 -701 1863 1864
		mu 0 4 1209 1208 1315 1316
		f 4 -639 -1865 1865 962
		mu 0 4 1268 1209 1316 1317
		f 4 -1864 704 1866 1867
		mu 0 4 1316 1315 1318 1319
		f 4 -912 914 913 -705
		mu 0 4 1315 1314 1320 1318
		f 4 -698 709 710 -708
		mu 0 4 1313 1312 1321 1322
		f 4 -696 711 712 -710
		mu 0 4 1312 1311 1323 1321
		f 4 -694 713 714 -712
		mu 0 4 1310 1309 1324 1325
		f 4 -1866 -1868 1868 960
		mu 0 4 1317 1316 1319 1326
		f 4 1869 1870 1871 1872
		mu 0 4 1327 1328 1329 1330
		f 4 1873 1874 1875 -1871
		mu 0 4 1331 1332 1333 1334
		f 4 2059 1877 1878 2060
		mu 0 4 1335 1336 1337 1338
		f 4 1879 1880 1881 -1878
		mu 0 4 1336 1339 1340 1337
		f 4 1882 2038 2037 -1881
		mu 0 4 1339 1341 1342 1340
		f 4 1885 -1873 1886 -1884
		mu 0 4 1343 1327 1330 1344
		f 4 -2034 2036 -1883 1888
		mu 0 4 1231 1262 1341 1339
		f 4 -1790 -1889 -1880 1889
		mu 0 4 1232 1231 1339 1336
		f 4 -1792 -1890 -2060 2062
		mu 0 4 1234 1232 1336 1335
		f 4 -1814 -1891 -1874 1891
		mu 0 4 1258 1257 1332 1331
		f 4 -608 -1892 -1870 739
		mu 0 4 1215 1236 1328 1327
		f 4 -583 -740 -1886 -1888
		mu 0 4 1216 1215 1327 1343
		f 4 1892 1893 -1751 1894
		mu 0 4 1345 1346 1170 1169
		f 4 1895 1896 -1740 -1894
		mu 0 4 1347 1348 1163 1162
		f 4 1897 1898 -1756 -1897
		mu 0 4 1348 1349 1164 1163
		f 4 1899 1900 -1743 -1899
		mu 0 4 1349 1350 1160 1164
		f 4 1901 1902 -1736 -1901
		mu 0 4 1350 1351 1161 1160
		f 4 1903 1904 -1758 -1903
		mu 0 4 1351 1352 1174 1161
		f 4 1905 1906 -1760 -1905
		mu 0 4 1352 1353 1172 1174
		f 4 1907 -1895 -1754 -1907
		mu 0 4 1353 1345 1169 1172
		f 4 1908 1909 -1906 1910
		mu 0 4 1354 1355 1353 1352
		f 4 1911 -1911 -1904 1912
		mu 0 4 1356 1354 1352 1351
		f 4 1913 -1913 -1902 1914
		mu 0 4 1357 1356 1351 1350
		f 4 1915 -1915 -1900 1916
		mu 0 4 1358 1357 1350 1349
		f 4 1917 -1917 -1898 1918
		mu 0 4 1359 1358 1349 1348
		f 4 1919 -1919 -1896 1920
		mu 0 4 1360 1359 1348 1347
		f 4 1921 -1921 -1893 1922
		mu 0 4 1361 1362 1346 1345
		f 4 1923 -1923 -1908 -1910
		mu 0 4 1355 1361 1345 1353
		f 4 1924 1925 1926 1927
		mu 0 4 1363 1364 1365 1366
		f 4 1928 1929 1930 -1926
		mu 0 4 1364 1367 1368 1365
		f 4 1931 1932 1933 -1930
		mu 0 4 1367 1369 1370 1368
		f 4 1934 1935 1936 -1933
		mu 0 4 1369 1371 1372 1370
		f 4 1937 1938 1939 -1936
		mu 0 4 1371 1373 1374 1372
		f 4 1940 1941 1942 -1939
		mu 0 4 1375 1376 1377 1378
		f 4 1943 1944 1945 -1942
		mu 0 4 1376 1379 1380 1377
		f 4 1946 -1928 1947 -1945
		mu 0 4 1379 1363 1366 1380
		f 4 -1662 1948 -1944 1949
		mu 0 4 1096 1094 1379 1376
		f 4 -1777 -1950 -1941 1950
		mu 0 4 1187 1096 1376 1375
		f 4 1951 -1773 -1951 -1938
		mu 0 4 1371 1101 1183 1373
		f 4 -1668 -1952 -1935 1952
		mu 0 4 1102 1101 1371 1369
		f 4 -1768 -1953 -1932 1953
		mu 0 4 1104 1102 1369 1367
		f 4 -1674 -1954 -1929 1954
		mu 0 4 1103 1104 1367 1364
		f 4 -1672 -1955 -1925 1955
		mu 0 4 1093 1103 1364 1363;
	setAttr ".fc[1000:1499]"
		f 4 -1658 -1956 -1947 -1949
		mu 0 4 1094 1093 1363 1379
		f 4 -380 804 -404 -347
		mu 0 4 1050 1049 1381 1382
		f 4 805 -348 806 807
		mu 0 4 1053 1383 1384 1385
		f 4 808 -383 -808 809
		mu 0 4 1386 1054 1053 1385
		f 4 -1618 1956 -378 -349
		mu 0 4 1043 1042 1048 1047
		f 4 1957 -1619 1958 -381
		mu 0 4 1051 1045 1044 1052
		f 4 -559 813 -966 968
		mu 0 4 1192 1195 1056 1055
		f 4 -558 815 -552 -814
		mu 0 4 1195 1194 1190 1056
		f 4 816 906 -560 -816
		mu 0 4 1194 1387 1196 1190
		f 4 -807 818 -563 -818
		mu 0 4 1388 1389 1199 1198
		f 4 -350 819 -566 -819
		mu 0 4 1389 1390 1202 1199
		f 4 -675 -815 -644 -820
		mu 0 4 1391 1071 1275 1274
		f 4 -1869 1959 -2065 958
		mu 0 4 1326 1319 1205 1204
		f 4 -1867 1960 -1782 -1960
		mu 0 4 1319 1318 1223 1205
		f 4 -914 2030 -1815 -1961
		mu 0 4 1318 1320 1259 1223
		f 4 -711 824 -1780 -1962
		mu 0 4 1322 1321 1217 1221
		f 4 -713 825 -585 -825
		mu 0 4 1321 1323 1218 1217
		f 4 -715 -822 -637 -826
		mu 0 4 1325 1324 1265 1264
		f 4 -571 826 -952 954
		mu 0 4 1207 1206 1229 1233
		f 4 -1784 1962 -599 -827
		mu 0 4 1206 1224 1230 1229
		f 4 -2032 920 -633 -1963
		mu 0 4 1224 1260 1261 1230
		f 4 -590 830 -581 -830
		mu 0 4 1222 1220 1214 1213
		f 4 -587 831 -606 -831
		mu 0 4 1220 1219 1235 1214
		f 4 -638 -828 -629 -832
		mu 0 4 1267 1266 1256 1255
		f 4 -1879 1963 -2056 2058
		mu 0 4 1338 1337 1243 1247
		f 4 -1882 1965 -1801 -1964
		mu 0 4 1337 1340 1244 1243
		f 4 -2038 2040 -1809 -1966
		mu 0 4 1340 1342 1251 1244
		f 4 -1887 1967 -1798 -1967
		mu 0 4 1344 1330 1225 1241
		f 4 -1872 1968 -1785 -1968
		mu 0 4 1330 1329 1226 1225
		f 4 -1876 -1965 -1808 -1969
		mu 0 4 1334 1333 1250 1249
		f 4 -1940 1969 -1677 1970
		mu 0 4 1372 1374 1107 1106
		f 4 -1943 1971 -1699 -1970
		mu 0 4 1378 1377 1112 1122
		f 4 -1946 1972 -1684 -1972
		mu 0 4 1377 1380 1113 1112
		f 4 -1948 1973 -1688 -1973
		mu 0 4 1380 1366 1116 1113
		f 4 -1927 1974 -1691 -1974
		mu 0 4 1366 1365 1118 1116
		f 4 -1931 1975 -1694 -1975
		mu 0 4 1365 1368 1120 1118
		f 4 -1934 1976 -1697 -1976
		mu 0 4 1368 1370 1110 1120
		f 4 -1937 -1971 -1681 -1977
		mu 0 4 1370 1372 1106 1110
		f 4 -1702 1977 -1924 1978
		mu 0 4 1127 1126 1361 1355
		f 4 -1713 -1979 -1909 1979
		mu 0 4 1137 1127 1355 1354
		f 4 -1712 -1980 -1912 1980
		mu 0 4 1135 1137 1354 1356
		f 4 -1710 -1981 -1914 1981
		mu 0 4 1133 1135 1356 1357
		f 4 -1708 -1982 -1916 1982
		mu 0 4 1130 1133 1357 1358
		f 4 -1705 -1983 -1918 1983
		mu 0 4 1131 1130 1358 1359
		f 4 -1714 -1984 -1920 1984
		mu 0 4 1139 1131 1359 1360
		f 4 -1716 -1985 -1922 -1978
		mu 0 4 1126 1141 1362 1361
		f 4 -805 854 -809 -576
		mu 0 4 1381 1049 1054 1386
		f 4 855 -384 -855 -379
		mu 0 4 1048 1051 1054 1049
		f 4 971 972 -817 -970
		mu 0 4 1193 1392 1387 1194
		f 4 -1957 -1625 -1958 -856
		mu 0 4 1048 1042 1045 1051
		f 4 -1764 1985 -1597 -1852
		mu 0 4 1176 1177 1020 1019
		f 4 1986 858 859 -1959
		mu 0 4 1393 1394 1395 1396
		f 4 -1622 -1609 860 -1987
		mu 0 4 1393 1397 1398 1394
		f 4 -860 -862 -806 -382
		mu 0 4 1396 1395 1383 1053
		f 4 1987 1988 -1767 -1614
		mu 0 4 1039 1399 1099 1040
		f 4 1989 1990 -1988 -1654
		mu 0 4 1090 1400 1399 1039
		f 4 -1650 1991 1992 -1990
		mu 0 4 1090 1089 1401 1400
		f 4 1993 -1992 -1851 -1676
		mu 0 4 1105 1401 1089 1078
		f 3 1994 -1766 -1989
		mu 0 3 1399 1098 1099
		f 4 1995 -1665 -1995 -1991
		mu 0 4 1400 1064 1098 1399
		f 4 -1993 1996 -1629 -1996
		mu 0 4 1400 1401 1065 1064
		f 3 -1853 -1997 -1994
		mu 0 3 1105 1065 1401
		f 4 -1700 -1999 -2000 1997
		mu 0 4 1402 1403 1128 1138
		f 4 -1686 1703 -2002 1998
		mu 0 4 1403 1404 1129 1128
		f 4 -1690 1706 -2004 -1704
		mu 0 4 1404 1405 1132 1129
		f 4 -1693 1708 -2006 -1707
		mu 0 4 1405 1406 1134 1132
		f 4 -1696 1710 -2008 -1709
		mu 0 4 1406 1407 1136 1134
		f 4 -1698 -2009 -2010 -1711
		mu 0 4 1407 1408 1124 1136
		f 4 -1682 1700 -2012 2008
		mu 0 4 1408 1409 1125 1124
		f 4 -1679 -1998 -2013 -1701
		mu 0 4 1409 1410 1140 1125
		f 4 -2016 -1680 1681 1682
		mu 0 4 1111 1109 1409 1408
		f 4 -2018 -1683 1697 -2017
		mu 0 4 1121 1111 1408 1407
		f 4 -2020 2016 1695 -2019
		mu 0 4 1119 1121 1407 1406
		f 4 -2022 2018 1692 -2021
		mu 0 4 1117 1119 1406 1405
		f 4 -2024 2020 1689 -2023
		mu 0 4 1114 1117 1405 1404
		f 4 -2026 2022 1685 1686
		mu 0 4 1115 1114 1404 1403
		f 4 -2028 -1687 1699 -2027
		mu 0 4 1123 1115 1403 1402
		f 4 -2029 2026 1678 1679
		mu 0 4 1109 1108 1410 1409
		f 4 904 817 -906 -907
		mu 0 4 1387 1388 1198 1196
		f 4 -909 905 560 561
		mu 0 4 1197 1196 1198 1201
		f 4 -911 -562 634 635
		mu 0 4 1263 1197 1201 1269
		f 4 -913 -636 -699 699
		mu 0 4 1314 1263 1269 1313
		f 4 -915 -700 707 708
		mu 0 4 1320 1314 1313 1322
		f 4 -2031 -709 1961 -2030
		mu 0 4 1259 1320 1322 1221
		f 4 -2033 2029 -1781 631
		mu 0 4 1260 1259 1221 1222
		f 4 -921 -632 829 -920
		mu 0 4 1261 1260 1222 1213
		f 4 -2035 919 -584 1815
		mu 0 4 1262 1261 1213 1216
		f 4 -2037 -1816 1887 -2036
		mu 0 4 1341 1262 1216 1343
		f 4 -2039 2035 1883 1884
		mu 0 4 1342 1341 1343 1344
		f 4 -2041 -1885 1966 -2040
		mu 0 4 1251 1342 1344 1241
		f 4 -2043 2039 -1800 1809
		mu 0 4 1252 1251 1241 1242
		f 4 -2045 -1810 -1843 -2044
		mu 0 4 1299 1252 1242 1286
		f 4 -2047 2043 -1832 -2046
		mu 0 4 1300 1299 1286 1289
		f 4 1835 -2048 -2049 2045
		mu 0 4 1296 1295 1290 1292
		f 4 1832 -2050 -2051 2047
		mu 0 4 1295 1298 1291 1290
		f 4 1820 -2053 2049 1823
		mu 0 4 1239 1280 1282 1301
		f 4 -2054 -2055 -1821 -1795
		mu 0 4 1238 1248 1280 1239
		f 4 1804 -2057 2053 1806
		mu 0 4 1250 1247 1248 1238
		f 4 -2058 -2059 -1805 1964
		mu 0 4 1333 1338 1247 1250
		f 4 1876 -2061 2057 -1875
		mu 0 4 1332 1335 1338 1333
		f 4 -2062 -2063 -1877 1890
		mu 0 4 1257 1234 1335 1332
		f 4 602 -2064 2061 1792
		mu 0 4 1256 1233 1234 1257
		f 4 -954 -955 -603 827
		mu 0 4 1266 1207 1233 1256
		f 4 568 -957 953 571
		mu 0 4 1265 1204 1207 1266
		f 4 -958 -959 -569 821
		mu 0 4 1324 1326 1204 1265
		f 4 -960 -961 957 -714
		mu 0 4 1309 1317 1326 1324
		f 4 -962 -963 959 -693
		mu 0 4 1272 1268 1317 1309
		f 4 -964 -965 961 639
		mu 0 4 1271 1058 1268 1272
		f 4 384 -967 963 387
		mu 0 4 1275 1055 1058 1271
		f 4 -968 -969 -385 814
		mu 0 4 1071 1192 1055 1275
		f 4 -402 556 -971 967
		mu 0 4 1071 1070 1193 1192
		f 4 973 -810 -905 -973
		mu 0 4 1392 1210 1388 1387
		f 4 -577 -974 -972 -557
		mu 0 4 1070 1210 1392 1193
		f 4 2065 2066 2067 2068
		mu 0 4 1411 1412 1413 1414
		f 4 -2067 2069 2070 2071
		mu 0 4 1413 1412 1415 1416
		f 3 2072 2073 2074
		mu 0 3 1417 1416 1418
		f 4 2075 -2072 -2073 2076
		mu 0 4 1419 1413 1416 1417
		f 4 -2068 -2076 2077 2078
		mu 0 4 1414 1413 1419 1420
		f 3 -2074 -2071 2079
		mu 0 3 1418 1416 1415
		f 4 2080 2081 2082 -2066
		mu 0 4 1421 1422 1423 1424
		f 4 2083 2084 -2070 -2083
		mu 0 4 1423 1425 1426 1424
		f 3 -2075 2085 2086
		mu 0 3 1427 1428 1425
		f 4 -2077 -2087 -2084 2087
		mu 0 4 1429 1427 1425 1423
		f 4 2088 -2078 -2088 -2082
		mu 0 4 1422 1430 1429 1423
		f 3 -2080 -2085 -2086
		mu 0 3 1428 1426 1425
		f 4 2089 2090 2091 2092
		mu 0 4 1431 1432 1433 1434
		f 4 -2091 2093 2094 2095
		mu 0 4 1433 1432 1435 1436
		f 3 2096 2097 2098
		mu 0 3 1437 1436 1438
		f 4 2099 -2096 -2097 2100
		mu 0 4 1439 1433 1436 1437
		f 4 -2092 -2100 2101 2102
		mu 0 4 1434 1433 1439 1440
		f 3 -2098 -2095 2103
		mu 0 3 1438 1436 1435
		f 4 2104 2105 2106 -2090
		mu 0 4 1441 1442 1443 1444
		f 4 2107 2108 -2094 -2107
		mu 0 4 1443 1445 1446 1444
		f 3 -2099 2109 2110
		mu 0 3 1447 1448 1445
		f 4 -2101 -2111 -2108 2111
		mu 0 4 1449 1447 1445 1443
		f 4 2112 -2102 -2112 -2106
		mu 0 4 1442 1450 1449 1443
		f 3 -2104 -2109 -2110
		mu 0 3 1448 1446 1445
		f 4 2113 2114 2115 2116
		mu 0 4 1451 1452 1453 1454
		f 4 -2115 2117 2118 2119
		mu 0 4 1453 1452 1455 1456
		f 3 2120 2121 2122
		mu 0 3 1457 1456 1458
		f 4 2123 -2120 -2121 2124
		mu 0 4 1459 1453 1456 1457
		f 4 -2116 -2124 2125 2126
		mu 0 4 1454 1453 1459 1460
		f 3 -2122 -2119 2127
		mu 0 3 1458 1456 1455
		f 4 2128 2129 2130 -2114
		mu 0 4 1461 1462 1463 1464
		f 4 2131 2132 -2118 -2131
		mu 0 4 1463 1465 1466 1464
		f 3 -2123 2133 2134
		mu 0 3 1467 1468 1465
		f 4 -2125 -2135 -2132 2135
		mu 0 4 1469 1467 1465 1463
		f 4 2136 -2126 -2136 -2130
		mu 0 4 1462 1470 1469 1463
		f 3 -2128 -2133 -2134
		mu 0 3 1468 1466 1465
		f 4 2137 2138 2139 2140
		mu 0 4 1471 1472 1473 1474
		f 4 -2139 2141 2142 2143
		mu 0 4 1473 1472 1475 1476
		f 3 2144 2145 2146
		mu 0 3 1477 1476 1478
		f 4 2147 -2144 -2145 2148
		mu 0 4 1479 1473 1476 1477
		f 4 -2140 -2148 2149 2150
		mu 0 4 1474 1473 1479 1480
		f 3 -2146 -2143 2151
		mu 0 3 1478 1476 1475
		f 4 2152 2153 2154 -2138
		mu 0 4 1481 1482 1483 1484
		f 4 2155 2156 -2142 -2155
		mu 0 4 1483 1485 1486 1484
		f 3 -2147 2157 2158
		mu 0 3 1487 1488 1485
		f 4 -2149 -2159 -2156 2159
		mu 0 4 1489 1487 1485 1483
		f 4 2160 -2150 -2160 -2154
		mu 0 4 1482 1490 1489 1483
		f 3 -2152 -2157 -2158
		mu 0 3 1488 1486 1485
		f 4 2161 2162 2163 2164
		mu 0 4 1491 1492 1493 1494
		f 4 -2163 2165 2166 2167
		mu 0 4 1493 1492 1495 1496
		f 3 2168 2169 2170
		mu 0 3 1497 1496 1498
		f 4 2171 -2168 -2169 2172
		mu 0 4 1499 1493 1496 1497
		f 4 -2164 -2172 2173 2174
		mu 0 4 1494 1493 1499 1500
		f 3 -2170 -2167 2175
		mu 0 3 1498 1496 1495
		f 4 2176 2177 2178 -2162
		mu 0 4 1501 1502 1503 1504
		f 4 2179 2180 -2166 -2179
		mu 0 4 1503 1505 1506 1504
		f 3 -2171 2181 2182
		mu 0 3 1507 1508 1505
		f 4 -2173 -2183 -2180 2183
		mu 0 4 1509 1507 1505 1503
		f 4 2184 -2174 -2184 -2178
		mu 0 4 1502 1510 1509 1503
		f 3 -2176 -2181 -2182
		mu 0 3 1508 1506 1505
		f 4 2185 2186 2187 2188
		mu 0 4 1511 1512 1513 1514
		f 4 -2187 2189 2190 2191
		mu 0 4 1513 1512 1515 1516
		f 3 2192 2193 2194
		mu 0 3 1517 1516 1518
		f 4 2195 -2192 -2193 2196
		mu 0 4 1519 1513 1516 1517
		f 4 -2188 -2196 2197 2198
		mu 0 4 1514 1513 1519 1520
		f 3 -2194 -2191 2199
		mu 0 3 1518 1516 1515
		f 4 2200 2201 2202 -2186
		mu 0 4 1521 1522 1523 1524
		f 4 2203 2204 -2190 -2203
		mu 0 4 1523 1525 1526 1524
		f 3 -2195 2205 2206
		mu 0 3 1527 1528 1525
		f 4 -2197 -2207 -2204 2207
		mu 0 4 1529 1527 1525 1523
		f 4 2208 -2198 -2208 -2202
		mu 0 4 1522 1530 1529 1523
		f 3 -2200 -2205 -2206
		mu 0 3 1528 1526 1525
		f 4 -192 2209 -1299 2210
		mu 0 4 1531 1532 1533 1534
		f 4 2 -2211 1026 2211
		mu 0 4 1535 1536 1537 1538
		f 4 0 -2212 1178 2212
		mu 0 4 1539 1540 1541 1542
		f 4 1029 2213 1 -2213
		mu 0 4 1543 1544 1545 1546
		f 4 184 -2214 -406 -2215
		mu 0 4 1547 1548 1549 1550
		f 4 185 2216 -403 -2216
		mu 0 4 1551 1552 1553 1554
		f 4 186 2215 674 -2210
		mu 0 4 1555 1556 1557 1558
		f 4 188 2214 -555 -2217
		mu 0 4 1559 1560 1561 1562
		f 4 2220 2221 2222 2223
		mu 0 4 1563 1564 1565 1566
		f 4 2224 -2224 2225 2226
		mu 0 4 1567 1563 1566 1568
		f 4 2227 2228 2229 2230
		mu 0 4 1569 1570 1571 1572
		f 4 2231 2232 2233 2234
		mu 0 4 1573 1574 1575 1576
		f 4 2235 2236 2237 2238
		mu 0 4 1577 1578 1579 1580
		f 4 2239 -2239 2240 2241
		mu 0 4 1581 1577 1580 1582
		f 4 2242 2243 2244 2245
		mu 0 4 1583 1584 1585 1586
		f 4 2246 2247 2248 2249
		mu 0 4 1587 1588 1589 1590
		f 4 2250 2251 2252 -2248
		mu 0 4 1588 1591 1592 1589
		f 4 2253 2254 2255 2256
		mu 0 4 1593 1594 1595 1596
		f 4 2257 2258 2259 2260
		mu 0 4 1597 1598 1599 1600
		f 4 2261 2262 2263 -2259
		mu 0 4 1598 1601 1602 1599
		f 4 2264 2265 2266 2267
		mu 0 4 1603 1604 1605 1606
		f 4 2268 2269 2270 2271
		mu 0 4 1607 1608 1609 1610
		f 4 2272 2273 2274 -2270
		mu 0 4 1608 1611 1612 1609
		f 3 2275 2276 2277
		mu 0 3 1605 1610 1613
		f 3 -2275 2278 2279
		mu 0 3 1609 1612 1613
		f 3 -2267 -2278 2280
		mu 0 3 1606 1605 1613
		f 4 2281 -2272 -2276 -2266
		mu 0 4 1604 1607 1610 1605
		f 4 2282 -2261 2283 -2255
		mu 0 4 1594 1597 1600 1595
		f 4 2284 -2250 2285 -2244
		mu 0 4 1584 1587 1590 1585
		f 4 2286 -2242 2287 -2233
		mu 0 4 1574 1581 1582 1575
		f 4 2288 -2227 2289 -2229
		mu 0 4 1570 1567 1568 1571
		f 3 -2271 -2280 -2277
		mu 0 3 1610 1609 1613
		f 4 2290 2291 -2402 2292
		mu 0 4 1614 1615 1616 1617
		f 4 2293 2294 -2403 2295
		mu 0 4 1618 1619 1620 1621
		f 4 2296 -2296 -2404 2404
		mu 0 4 1622 1618 1621 1623
		f 4 2297 -2293 -2406 -2295
		mu 0 4 1619 1614 1617 1620
		f 4 2298 2299 -2222 2300
		mu 0 4 1624 1625 1626 1627
		f 4 2301 2302 -2299 2303
		mu 0 4 1628 1629 1625 1624
		f 4 -2231 2304 2305 2306
		mu 0 4 1569 1572 1630 1631
		f 4 -2235 2307 2308 2309
		mu 0 4 1573 1576 1632 1633
		f 4 2310 2311 -2237 2312
		mu 0 4 1634 1635 1636 1637
		f 4 2313 2314 -2311 2315
		mu 0 4 1638 1639 1635 1634
		f 4 -2246 2316 2317 2318
		mu 0 4 1583 1586 1640 1641
		f 4 2319 2320 2321 2322
		mu 0 4 1642 1643 1644 1645
		f 4 -2322 2323 -2252 2324
		mu 0 4 1645 1644 1646 1647
		f 4 -2257 2325 2326 2327
		mu 0 4 1593 1596 1648 1649
		f 4 2328 2329 2330 2331
		mu 0 4 1650 1651 1652 1653
		f 4 -2331 2332 -2263 2333
		mu 0 4 1653 1652 1654 1655
		f 4 -2268 2334 2335 2336
		mu 0 4 1603 1606 1656 1657
		f 4 2337 2338 2339 2340
		mu 0 4 1658 1659 1660 1661
		f 4 -2340 2341 -2274 2342
		mu 0 4 1661 1660 1662 1663
		f 3 2343 2344 2345
		mu 0 3 1656 1613 1659
		f 3 2346 -2279 -2342
		mu 0 3 1660 1613 1662
		f 3 -2281 -2344 -2335
		mu 0 3 1606 1613 1656
		f 4 2347 -2336 -2346 -2338
		mu 0 4 1658 1657 1656 1659
		f 4 2348 -2327 2349 -2329
		mu 0 4 1650 1649 1648 1651
		f 4 2350 -2318 2351 -2320
		mu 0 4 1642 1641 1640 1643
		f 4 2352 -2309 2353 -2314
		mu 0 4 1638 1633 1632 1639
		f 4 2354 -2306 2355 -2302
		mu 0 4 1628 1631 1630 1629
		f 3 -2345 -2347 -2339
		mu 0 3 1659 1613 1660
		f 4 2356 -2219 -2292 2357
		mu 0 4 1664 1665 1616 1615
		f 4 2406 -2220 2358 2359
		mu 0 4 1666 1667 1668 1669
		f 4 -2359 -2218 -2357 2360
		mu 0 4 1669 1668 1665 1664
		f 4 2361 -2307 2362 -2358
		mu 0 4 1615 1569 1631 1664
		f 4 -2291 2363 -2228 -2362
		mu 0 4 1615 1614 1570 1569
		f 4 -2298 2364 -2289 -2364
		mu 0 4 1614 1619 1567 1570
		f 4 -2294 2365 -2225 -2365
		mu 0 4 1619 1618 1563 1567
		f 4 -2297 2366 -2221 -2366
		mu 0 4 1618 1622 1564 1563
		f 4 2367 -2301 -2367 -2408
		mu 0 4 1666 1624 1627 1670
		f 4 2368 -2304 -2368 -2360
		mu 0 4 1669 1628 1624 1666
		f 4 -2363 -2355 -2369 -2361
		mu 0 4 1664 1631 1628 1669
		f 4 2369 -2310 2370 -2305
		mu 0 4 1572 1573 1633 1630
		f 4 -2230 2371 -2232 -2370
		mu 0 4 1572 1571 1574 1573
		f 4 -2290 2372 -2287 -2372
		mu 0 4 1571 1568 1581 1574
		f 4 -2226 2373 -2240 -2373
		mu 0 4 1568 1566 1577 1581
		f 4 -2223 2374 -2236 -2374
		mu 0 4 1566 1565 1578 1577
		f 4 2375 -2313 -2375 -2300
		mu 0 4 1625 1634 1637 1626
		f 4 2376 -2316 -2376 -2303
		mu 0 4 1629 1638 1634 1625
		f 4 -2371 -2353 -2377 -2356
		mu 0 4 1630 1633 1638 1629
		f 4 2377 -2319 2378 -2308
		mu 0 4 1576 1583 1641 1632
		f 4 -2234 2379 -2243 -2378
		mu 0 4 1576 1575 1584 1583
		f 4 -2288 2380 -2285 -2380
		mu 0 4 1575 1582 1587 1584
		f 4 -2241 2381 -2247 -2381
		mu 0 4 1582 1580 1588 1587
		f 4 -2238 2382 -2251 -2382
		mu 0 4 1580 1579 1591 1588
		f 4 2383 -2325 -2383 -2312
		mu 0 4 1635 1645 1647 1636
		f 4 2384 -2323 -2384 -2315
		mu 0 4 1639 1642 1645 1635
		f 4 -2379 -2351 -2385 -2354
		mu 0 4 1632 1641 1642 1639
		f 4 2385 -2328 2386 -2317
		mu 0 4 1586 1593 1649 1640
		f 4 -2245 2387 -2254 -2386
		mu 0 4 1586 1585 1594 1593
		f 4 -2286 2388 -2283 -2388
		mu 0 4 1585 1590 1597 1594
		f 4 -2249 2389 -2258 -2389
		mu 0 4 1590 1589 1598 1597
		f 4 -2253 2390 -2262 -2390
		mu 0 4 1589 1592 1601 1598
		f 4 2391 -2334 -2391 -2324
		mu 0 4 1644 1653 1655 1646
		f 4 2392 -2332 -2392 -2321
		mu 0 4 1643 1650 1653 1644
		f 4 -2387 -2349 -2393 -2352
		mu 0 4 1640 1649 1650 1643
		f 4 2393 -2337 2394 -2326
		mu 0 4 1596 1603 1657 1648
		f 4 -2256 2395 -2265 -2394
		mu 0 4 1596 1595 1604 1603
		f 4 -2284 2396 -2282 -2396
		mu 0 4 1595 1600 1607 1604
		f 4 -2260 2397 -2269 -2397
		mu 0 4 1600 1599 1608 1607
		f 4 -2264 2398 -2273 -2398
		mu 0 4 1599 1602 1611 1608
		f 4 2399 -2343 -2399 -2333
		mu 0 4 1652 1661 1663 1654
		f 4 2400 -2341 -2400 -2330
		mu 0 4 1651 1658 1661 1652
		f 4 -2395 -2348 -2401 -2350
		mu 0 4 1648 1657 1658 1651
		f 4 2411 2412 2413 2414
		mu 0 4 1671 1672 1673 1674
		f 4 2415 -2415 2416 2417
		mu 0 4 1675 1671 1674 1676
		f 4 2418 2419 2420 2421
		mu 0 4 1677 1678 1679 1680
		f 4 2422 2423 2424 2425
		mu 0 4 1681 1682 1683 1684
		f 4 2426 2427 2428 2429
		mu 0 4 1685 1686 1687 1688
		f 4 2430 -2430 2431 2432
		mu 0 4 1689 1685 1688 1690
		f 4 2433 2434 2435 2436
		mu 0 4 1691 1692 1693 1694
		f 4 2437 2438 2439 2440
		mu 0 4 1695 1696 1697 1698
		f 4 2441 2442 2443 -2439
		mu 0 4 1696 1699 1700 1697
		f 4 2444 2445 2446 2447
		mu 0 4 1701 1702 1703 1704
		f 4 2448 2449 2450 2451
		mu 0 4 1705 1706 1707 1708
		f 4 2452 2453 2454 -2450
		mu 0 4 1706 1709 1710 1707
		f 4 2455 2456 2457 2458
		mu 0 4 1711 1712 1713 1714
		f 4 2459 2460 2461 2462
		mu 0 4 1715 1716 1717 1718
		f 4 2463 2464 2465 -2461
		mu 0 4 1716 1719 1720 1717
		f 3 2466 2467 2468
		mu 0 3 1713 1718 1721
		f 3 -2466 2469 2470
		mu 0 3 1717 1720 1721
		f 3 -2458 -2469 2471
		mu 0 3 1714 1713 1721
		f 4 2472 -2463 -2467 -2457
		mu 0 4 1712 1715 1718 1713
		f 4 2473 -2452 2474 -2446
		mu 0 4 1702 1705 1708 1703
		f 4 2475 -2441 2476 -2435
		mu 0 4 1692 1695 1698 1693
		f 4 2477 -2433 2478 -2424
		mu 0 4 1682 1689 1690 1683
		f 4 2479 -2418 2480 -2420
		mu 0 4 1678 1675 1676 1679
		f 3 -2462 -2471 -2468
		mu 0 3 1718 1717 1721
		f 4 2481 2482 -2593 2483
		mu 0 4 1722 1723 1724 1725
		f 4 2484 2485 -2594 2486
		mu 0 4 1726 1727 1728 1729
		f 4 2487 -2487 -2595 2595
		mu 0 4 1730 1726 1729 1731
		f 4 2488 -2484 -2597 -2486
		mu 0 4 1727 1722 1725 1728
		f 4 2489 2490 -2413 2491
		mu 0 4 1732 1733 1734 1735
		f 4 2492 2493 -2490 2494
		mu 0 4 1736 1737 1733 1732
		f 4 -2422 2495 2496 2497
		mu 0 4 1677 1680 1738 1739
		f 4 -2426 2498 2499 2500
		mu 0 4 1681 1684 1740 1741
		f 4 2501 2502 -2428 2503
		mu 0 4 1742 1743 1744 1745
		f 4 2504 2505 -2502 2506
		mu 0 4 1746 1747 1743 1742
		f 4 -2437 2507 2508 2509
		mu 0 4 1691 1694 1748 1749
		f 4 2510 2511 2512 2513
		mu 0 4 1750 1751 1752 1753
		f 4 -2513 2514 -2443 2515
		mu 0 4 1753 1752 1754 1755
		f 4 -2448 2516 2517 2518
		mu 0 4 1701 1704 1756 1757
		f 4 2519 2520 2521 2522
		mu 0 4 1758 1759 1760 1761
		f 4 -2522 2523 -2454 2524
		mu 0 4 1761 1760 1762 1763
		f 4 -2459 2525 2526 2527
		mu 0 4 1711 1714 1764 1765
		f 4 2528 2529 2530 2531
		mu 0 4 1766 1767 1768 1769
		f 4 -2531 2532 -2465 2533
		mu 0 4 1769 1768 1770 1771
		f 3 2534 2535 2536
		mu 0 3 1764 1721 1767
		f 3 2537 -2470 -2533
		mu 0 3 1768 1721 1770
		f 3 -2472 -2535 -2526
		mu 0 3 1714 1721 1764
		f 4 2538 -2527 -2537 -2529
		mu 0 4 1766 1765 1764 1767
		f 4 2539 -2518 2540 -2520
		mu 0 4 1758 1757 1756 1759
		f 4 2541 -2509 2542 -2511
		mu 0 4 1750 1749 1748 1751
		f 4 2543 -2500 2544 -2505
		mu 0 4 1746 1741 1740 1747
		f 4 2545 -2497 2546 -2493
		mu 0 4 1736 1739 1738 1737
		f 3 -2536 -2538 -2530
		mu 0 3 1767 1721 1768
		f 4 2547 -2410 -2483 2548
		mu 0 4 1772 1773 1724 1723
		f 4 2597 -2411 2549 2550
		mu 0 4 1774 1775 1776 1777
		f 4 -2550 -2409 -2548 2551
		mu 0 4 1777 1776 1773 1772
		f 4 2552 -2498 2553 -2549
		mu 0 4 1723 1677 1739 1772
		f 4 -2482 2554 -2419 -2553
		mu 0 4 1723 1722 1678 1677
		f 4 -2489 2555 -2480 -2555
		mu 0 4 1722 1727 1675 1678
		f 4 -2485 2556 -2416 -2556
		mu 0 4 1727 1726 1671 1675
		f 4 -2488 2557 -2412 -2557
		mu 0 4 1726 1730 1672 1671
		f 4 2558 -2492 -2558 -2599
		mu 0 4 1774 1732 1735 1778
		f 4 2559 -2495 -2559 -2551
		mu 0 4 1777 1736 1732 1774
		f 4 -2554 -2546 -2560 -2552
		mu 0 4 1772 1739 1736 1777
		f 4 2560 -2501 2561 -2496
		mu 0 4 1680 1681 1741 1738
		f 4 -2421 2562 -2423 -2561
		mu 0 4 1680 1679 1682 1681
		f 4 -2481 2563 -2478 -2563
		mu 0 4 1679 1676 1689 1682
		f 4 -2417 2564 -2431 -2564
		mu 0 4 1676 1674 1685 1689
		f 4 -2414 2565 -2427 -2565
		mu 0 4 1674 1673 1686 1685
		f 4 2566 -2504 -2566 -2491
		mu 0 4 1733 1742 1745 1734
		f 4 2567 -2507 -2567 -2494
		mu 0 4 1737 1746 1742 1733
		f 4 -2562 -2544 -2568 -2547
		mu 0 4 1738 1741 1746 1737
		f 4 2568 -2510 2569 -2499
		mu 0 4 1684 1691 1749 1740
		f 4 -2425 2570 -2434 -2569
		mu 0 4 1684 1683 1692 1691
		f 4 -2479 2571 -2476 -2571
		mu 0 4 1683 1690 1695 1692
		f 4 -2432 2572 -2438 -2572
		mu 0 4 1690 1688 1696 1695
		f 4 -2429 2573 -2442 -2573
		mu 0 4 1688 1687 1699 1696
		f 4 2574 -2516 -2574 -2503
		mu 0 4 1743 1753 1755 1744
		f 4 2575 -2514 -2575 -2506
		mu 0 4 1747 1750 1753 1743
		f 4 -2570 -2542 -2576 -2545
		mu 0 4 1740 1749 1750 1747
		f 4 2576 -2519 2577 -2508
		mu 0 4 1694 1701 1757 1748
		f 4 -2436 2578 -2445 -2577
		mu 0 4 1694 1693 1702 1701
		f 4 -2477 2579 -2474 -2579
		mu 0 4 1693 1698 1705 1702
		f 4 -2440 2580 -2449 -2580
		mu 0 4 1698 1697 1706 1705
		f 4 -2444 2581 -2453 -2581
		mu 0 4 1697 1700 1709 1706
		f 4 2582 -2525 -2582 -2515
		mu 0 4 1752 1761 1763 1754
		f 4 2583 -2523 -2583 -2512
		mu 0 4 1751 1758 1761 1752
		f 4 -2578 -2540 -2584 -2543
		mu 0 4 1748 1757 1758 1751
		f 4 2584 -2528 2585 -2517
		mu 0 4 1704 1711 1765 1756
		f 4 -2447 2586 -2456 -2585
		mu 0 4 1704 1703 1712 1711
		f 4 -2475 2587 -2473 -2587
		mu 0 4 1703 1708 1715 1712
		f 4 -2451 2588 -2460 -2588
		mu 0 4 1708 1707 1716 1715
		f 4 -2455 2589 -2464 -2589
		mu 0 4 1707 1710 1719 1716
		f 4 2590 -2534 -2590 -2524
		mu 0 4 1760 1769 1771 1762
		f 4 2591 -2532 -2591 -2521
		mu 0 4 1759 1766 1769 1760
		f 4 -2586 -2539 -2592 -2541
		mu 0 4 1756 1765 1766 1759
		f 4 2599 2600 2601 2602
		mu 0 4 1779 1780 1781 1782
		f 4 2603 2604 2605 2606
		mu 0 4 1783 1784 1785 1786
		f 4 2607 2608 2609 2610
		mu 0 4 1787 1788 1789 1790
		f 4 2611 2612 2613 2614
		mu 0 4 1791 1792 1793 1794
		f 4 2615 2616 2617 2618
		mu 0 4 1795 1796 1785 1797
		f 4 2619 2620 2621 -2613
		mu 0 4 1792 1798 1799 1793
		f 4 2622 2623 2624 2625
		mu 0 4 1800 1801 1802 1803
		f 4 2626 2627 2628 -2619
		mu 0 4 1797 1804 1805 1795
		f 4 2629 2630 2631 2632
		mu 0 4 1806 1807 1808 1809
		f 4 2633 2634 2635 2636
		mu 0 4 1810 1811 1812 1813
		f 4 2637 -2633 2638 2639
		mu 0 4 1814 1806 1809 1815
		f 4 2640 2641 2642 2643
		mu 0 4 1816 1817 1818 1819
		f 3 2644 2645 -2609
		mu 0 3 1788 1820 1789
		f 4 2646 2647 2648 -2635
		mu 0 4 1811 1821 1822 1812
		f 4 -2649 2649 2650 2651
		mu 0 4 1812 1822 1823 1824
		f 4 -2629 2652 2653 2654
		mu 0 4 1795 1805 1825 1826
		f 4 -2616 -2655 2655 2656
		mu 0 4 1796 1795 1826 1827
		f 4 -2636 -2652 2657 2658
		mu 0 4 1813 1812 1824 1828
		f 3 2659 2660 2661
		mu 0 3 1829 1797 1830
		f 4 2662 2663 2664 2665
		mu 0 4 1831 1832 1833 1834
		f 4 2666 2667 2668 2669
		mu 0 4 1835 1836 1837 1838
		f 3 2670 2671 2672
		mu 0 3 1839 1840 1841
		f 3 -2661 -2618 2673
		mu 0 3 1830 1797 1785
		f 3 2674 2675 2676
		mu 0 3 1842 1843 1844
		f 3 2677 2678 2679
		mu 0 3 1845 1846 1847
		f 3 2680 -2671 2681
		mu 0 3 1848 1840 1839
		f 4 -2680 2682 -2675 2683
		mu 0 4 1845 1847 1843 1842
		f 4 2684 2685 2686 -2669
		mu 0 4 1837 1849 1850 1838
		f 4 2687 2688 2689 -2664
		mu 0 4 1832 1851 1852 1833
		f 4 2690 2691 2692 2693
		mu 0 4 1853 1854 1855 1856
		f 4 2694 2695 2696 2697
		mu 0 4 1857 1858 1859 1860
		f 4 2698 2699 2700 2701
		mu 0 4 1789 1861 1862 1863
		f 4 2702 2703 -2699 -2646
		mu 0 4 1820 1864 1861 1789
		f 4 2704 2705 2706 2707
		mu 0 4 1865 1866 1867 1868
		f 4 -2702 2708 2709 -2610
		mu 0 4 1789 1863 1857 1790
		f 4 2710 2711 2712 -2622
		mu 0 4 1799 1869 1870 1793
		f 4 -2713 2713 2714 -2614
		mu 0 4 1793 1870 1871 1794
		f 4 2715 2716 -2688 2717
		mu 0 4 1872 1873 1851 1832
		f 4 2718 2719 2720 -2682
		mu 0 4 1839 1874 1875 1848
		f 4 -2698 2721 2722 2723
		mu 0 4 1857 1860 1853 1876
		f 4 -2723 -2694 2724 2725
		mu 0 4 1876 1853 1856 1877
		f 3 2726 -2718 2727
		mu 0 3 1878 1872 1832
		f 4 -2724 2728 -2712 2729
		mu 0 4 1857 1876 1870 1869
		f 4 -2729 -2726 2730 -2714
		mu 0 4 1870 1876 1877 1871
		f 3 2731 -2728 2732
		mu 0 3 1879 1878 1832
		f 4 2733 -2662 2734 984
		mu 0 4 1880 1829 1830 1881
		f 4 2735 2736 1159 2737
		mu 0 4 1850 1845 1882 1883
		f 3 -2605 2738 -2674
		mu 0 3 1785 1784 1830
		f 4 -2701 2739 -2695 -2709
		mu 0 4 1863 1862 1858 1857
		f 4 2740 -2640 2741 -2624
		mu 0 4 1801 1814 1815 1802
		f 4 2742 2743 2744 -2631
		mu 0 4 1807 1884 1885 1808
		f 4 -2705 2745 -2703 2746
		mu 0 4 1866 1865 1864 1820
		f 4 2747 -2641 2748 -2650
		mu 0 4 1822 1817 1816 1823
		f 4 2749 -2642 -2748 -2648
		mu 0 4 1821 1818 1817 1822
		f 4 -2710 -2730 -2711 2750
		mu 0 4 1790 1857 1869 1799
		f 4 2751 -2611 -2751 -2621
		mu 0 4 1798 1787 1790 1799
		f 4 2752 -2659 2753 -2653
		mu 0 4 1805 1813 1828 1825
		f 4 2754 -2637 -2753 -2628
		mu 0 4 1804 1810 1813 1805
		f 4 -2617 -2657 2755 -2606
		mu 0 4 1785 1796 1827 1786
		f 4 2756 -2615 2757 -2663
		mu 0 4 1831 1791 1794 1832
		f 4 2758 -2733 -2758 -2715
		mu 0 4 1871 1879 1832 1794
		f 4 2759 -2732 -2759 -2731
		mu 0 4 1877 1878 1879 1871
		f 4 2760 -2727 -2760 -2725
		mu 0 4 1856 1872 1878 1877
		f 4 2761 -2716 -2761 -2693
		mu 0 4 1855 1873 1872 1856
		f 4 2762 -2603 2763 -2720
		mu 0 4 1874 1779 1782 1875
		f 4 -2697 2764 -2691 -2722
		mu 0 4 1860 1859 1854 1853
		f 4 2765 -2626 2766 -2601
		mu 0 4 1780 1800 1803 1781
		f 4 2767 -2678 -2736 -2686
		mu 0 4 1849 1846 1845 1850
		f 4 2768 -2673 2769 -2689
		mu 0 4 1851 1839 1841 1852
		f 4 2770 -2719 -2769 -2717
		mu 0 4 1873 1874 1839 1851
		f 4 -2763 -2771 -2762 2771
		mu 0 4 1779 1874 1873 1855
		f 4 2772 -2600 -2772 -2692
		mu 0 4 1854 1780 1779 1855
		f 4 2773 -2766 -2773 -2765
		mu 0 4 1859 1800 1780 1854
		f 4 2774 -2623 -2774 -2696
		mu 0 4 1858 1801 1800 1859
		f 4 2775 -2741 -2775 -2740
		mu 0 4 1862 1814 1801 1858
		f 4 2776 -2638 -2776 -2700
		mu 0 4 1861 1806 1814 1862
		f 4 2777 -2630 -2777 -2704
		mu 0 4 1864 1807 1806 1861
		f 4 2778 -2743 -2778 -2746
		mu 0 4 1865 1884 1807 1864
		f 4 -2779 -2708 2779 -2744
		mu 0 4 1884 1865 1868 1885
		f 4 2780 -2644 2781 -2706
		mu 0 4 1866 1816 1819 1867
		f 4 -2749 -2781 -2747 2782
		mu 0 4 1823 1816 1866 1820
		f 4 2783 -2783 -2645 2784
		mu 0 4 1886 1823 1820 1788
		f 4 2785 -2785 -2608 2786
		mu 0 4 1887 1886 1788 1787
		f 4 2787 -2787 -2752 2788
		mu 0 4 1888 1887 1787 1798
		f 4 2789 -2789 -2620 2790
		mu 0 4 1889 1888 1798 1792
		f 4 2791 -2791 -2612 2792
		mu 0 4 1890 1889 1792 1791
		f 4 2793 -2793 -2757 2794
		mu 0 4 1891 1890 1791 1831
		f 4 -2795 -2666 2795 2796
		mu 0 4 1891 1831 1834 1892
		f 4 -2604 2797 -2667 2798
		mu 0 4 1784 1783 1836 1835
		f 4 -2770 2799 -2768 2800
		mu 0 4 1852 1841 1846 1849
		f 4 -2690 -2801 -2685 2801
		mu 0 4 1833 1852 1849 1837
		f 4 2802 -2665 -2802 -2668
		mu 0 4 1836 1834 1833 1837
		f 4 2803 -2796 -2803 -2798
		mu 0 4 1783 1892 1834 1836
		f 4 -2804 -2607 2804 -2797
		mu 0 4 1892 1783 1786 1891
		f 4 2805 -2794 -2805 -2756
		mu 0 4 1827 1890 1891 1786
		f 4 2806 -2792 -2806 -2656
		mu 0 4 1826 1889 1890 1827
		f 4 2807 -2790 -2807 -2654
		mu 0 4 1825 1888 1889 1826
		f 4 2808 -2788 -2808 -2754
		mu 0 4 1828 1887 1888 1825
		f 4 2809 -2786 -2809 -2658
		mu 0 4 1824 1886 1887 1828
		f 3 -2784 -2810 -2651
		mu 0 3 1823 1886 1824
		f 4 1022 -2735 -2739 2810
		mu 0 4 1893 1881 1830 1784
		f 4 2811 -2681 2812 -2676
		mu 0 4 1843 1840 1848 1844
		f 3 2813 -2812 -2683
		mu 0 3 1847 1840 1843
		f 4 -2800 -2672 -2814 -2679
		mu 0 4 1846 1841 1840 1847
		f 4 -2684 2814 981 -2737
		mu 0 4 1845 1842 1894 1882
		f 3 -2738 2815 -2687
		mu 0 3 1895 1896 1897
		f 4 -2816 1480 2816 -2670
		mu 0 4 1898 1899 1900 1835
		f 4 976 -2811 -2799 -2817
		mu 0 4 1900 1901 1784 1835
		f 4 2817 -2602 2818 2819
		mu 0 4 1902 1903 1904 1905
		f 4 2820 2821 2822 2823
		mu 0 4 1906 1907 1908 1909
		f 4 2824 2825 2826 2827
		mu 0 4 1910 1911 1912 1913
		f 4 2828 2829 2830 2831
		mu 0 4 1914 1915 1916 1917
		f 4 2832 2833 2834 2835
		mu 0 4 1918 1919 1908 1920
		f 4 -2831 2836 2837 2838
		mu 0 4 1917 1916 1921 1922
		f 4 2839 -2625 2840 2841
		mu 0 4 1923 1924 1925 1926
		f 4 -2833 2842 2843 -2627
		mu 0 4 1919 1918 1927 1928
		f 4 2844 -2632 2845 2846
		mu 0 4 1929 1930 1931 1932;
	setAttr ".fc[1500:1646]"
		f 4 2847 2848 2849 -2634
		mu 0 4 1933 1934 1935 1936
		f 4 2850 -2639 -2845 2851
		mu 0 4 1937 1938 1930 1929
		f 4 2852 -2643 2853 2854
		mu 0 4 1939 1940 1941 1942
		f 3 -2827 2855 2856
		mu 0 3 1913 1912 1943
		f 4 -2850 2857 2858 -2647
		mu 0 4 1936 1935 1944 1945
		f 4 2859 2860 2861 -2858
		mu 0 4 1935 1946 1947 1944
		f 4 2862 2863 2864 -2843
		mu 0 4 1918 1948 1949 1927
		f 4 2865 2866 -2863 -2836
		mu 0 4 1920 1950 1948 1918
		f 4 2867 2868 -2860 -2849
		mu 0 4 1934 1951 1946 1935
		f 3 2869 2870 -2660
		mu 0 3 1952 1953 1919
		f 4 2871 2872 2873 2874
		mu 0 4 1954 1955 1956 1957
		f 4 2875 2876 2877 2878
		mu 0 4 1958 1959 1960 1961
		f 3 2879 2880 2881
		mu 0 3 1962 1963 1964
		f 3 2882 -2834 -2871
		mu 0 3 1953 1908 1919
		f 3 -2677 2883 2884
		mu 0 3 1965 1966 1967
		f 3 2885 2886 2887
		mu 0 3 1968 1969 1970
		f 3 2888 -2882 2889
		mu 0 3 1971 1962 1964
		f 4 2890 -2885 2891 -2886
		mu 0 4 1968 1965 1967 1969
		f 4 -2877 2892 2893 2894
		mu 0 4 1960 1959 1972 1973
		f 4 -2874 2895 2896 2897
		mu 0 4 1957 1956 1974 1975
		f 4 2898 2899 2900 2901
		mu 0 4 1976 1977 1978 1979
		f 4 2902 2903 2904 2905
		mu 0 4 1980 1981 1982 1983
		f 4 2906 2907 2908 2909
		mu 0 4 1912 1984 1985 1986
		f 4 -2856 -2910 2910 2911
		mu 0 4 1943 1912 1986 1987
		f 4 2912 -2707 2913 2914
		mu 0 4 1988 1989 1990 1991
		f 4 -2826 2915 2916 -2907
		mu 0 4 1912 1911 1980 1984
		f 4 -2837 2917 2918 2919
		mu 0 4 1921 1916 1992 1993
		f 4 -2830 2920 2921 -2918
		mu 0 4 1916 1915 1994 1992
		f 4 2922 -2898 2923 2924
		mu 0 4 1995 1957 1975 1996
		f 4 -2889 -2721 2925 2926
		mu 0 4 1962 1971 1997 1998
		f 4 2927 2928 2929 -2903
		mu 0 4 1980 1999 1976 1981
		f 4 2930 2931 -2899 -2929
		mu 0 4 1999 2000 1977 1976
		f 3 2932 -2923 2933
		mu 0 3 2001 1957 1995
		f 4 2934 -2919 2935 -2928
		mu 0 4 1980 1993 1992 1999
		f 4 -2922 2936 -2931 -2936
		mu 0 4 1992 1994 2000 1999
		f 3 2937 -2933 2938
		mu 0 3 2002 1957 2001
		f 4 -361 2939 -2870 -2734
		mu 0 4 2003 2004 1953 1952
		f 4 2940 -536 2941 2942
		mu 0 4 1972 2005 2006 1968
		f 3 -2883 2943 -2823
		mu 0 3 1908 1953 1909
		f 4 -2917 -2906 2944 -2908
		mu 0 4 1984 1980 1983 1985
		f 4 -2841 -2742 -2851 2945
		mu 0 4 1926 1925 1938 1937
		f 4 -2846 -2745 2946 2947
		mu 0 4 1932 1931 2007 2008
		f 4 2948 -2912 2949 -2915
		mu 0 4 1991 1943 1987 1988
		f 4 -2862 2950 -2855 2951
		mu 0 4 1944 1947 1939 1942
		f 4 -2859 -2952 -2854 -2750
		mu 0 4 1945 1944 1942 1941
		f 4 2952 -2920 -2935 -2916
		mu 0 4 1911 1921 1993 1980
		f 4 -2838 -2953 -2825 2953
		mu 0 4 1922 1921 1911 1910
		f 4 -2865 2954 -2868 2955
		mu 0 4 1927 1949 1951 1934
		f 4 -2844 -2956 -2848 -2755
		mu 0 4 1928 1927 1934 1933
		f 4 -2822 2956 -2866 -2835
		mu 0 4 1908 1907 1950 1920
		f 4 -2875 2957 -2829 2958
		mu 0 4 1954 1957 1915 1914
		f 4 -2921 -2958 -2938 2959
		mu 0 4 1994 1915 1957 2002
		f 4 -2937 -2960 -2939 2960
		mu 0 4 2000 1994 2002 2001
		f 4 -2932 -2961 -2934 2961
		mu 0 4 1977 2000 2001 1995
		f 4 -2900 -2962 -2925 2962
		mu 0 4 1978 1977 1995 1996
		f 4 -2926 -2764 -2818 2963
		mu 0 4 1998 1997 1903 1902
		f 4 -2930 -2902 2964 -2904
		mu 0 4 1981 1976 1979 1982
		f 4 -2819 -2767 -2840 2965
		mu 0 4 1905 1904 1924 1923
		f 4 -2894 -2943 -2888 2966
		mu 0 4 1973 1972 1968 1970
		f 4 -2897 2967 -2880 2968
		mu 0 4 1975 1974 1963 1962
		f 4 -2924 -2969 -2927 2969
		mu 0 4 1996 1975 1962 1998
		f 4 2970 -2963 -2970 -2964
		mu 0 4 1902 1978 1996 1998
		f 4 -2901 -2971 -2820 2971
		mu 0 4 1979 1978 1902 1905
		f 4 -2965 -2972 -2966 2972
		mu 0 4 1982 1979 1905 1923
		f 4 -2905 -2973 -2842 2973
		mu 0 4 1983 1982 1923 1926
		f 4 -2945 -2974 -2946 2974
		mu 0 4 1985 1983 1926 1937
		f 4 -2909 -2975 -2852 2975
		mu 0 4 1986 1985 1937 1929
		f 4 -2911 -2976 -2847 2976
		mu 0 4 1987 1986 1929 1932
		f 4 -2950 -2977 -2948 2977
		mu 0 4 1988 1987 1932 2008
		f 4 -2947 -2780 -2913 -2978
		mu 0 4 2008 2007 1989 1988
		f 4 -2914 -2782 -2853 2978
		mu 0 4 1991 1990 1940 1939
		f 4 2979 -2949 -2979 -2951
		mu 0 4 1947 1943 1991 1939
		f 4 2980 -2857 -2980 2981
		mu 0 4 2009 1913 1943 1947
		f 4 2982 -2828 -2981 2983
		mu 0 4 2010 1910 1913 2009
		f 4 2984 -2954 -2983 2985
		mu 0 4 2011 1922 1910 2010
		f 4 2986 -2839 -2985 2987
		mu 0 4 2012 1917 1922 2011
		f 4 2988 -2832 -2987 2989
		mu 0 4 2013 1914 1917 2012
		f 4 2990 -2959 -2989 2991
		mu 0 4 2014 1954 1914 2013
		f 4 2992 2993 -2872 -2991
		mu 0 4 2014 2015 1955 1954
		f 4 2994 -2879 2995 -2824
		mu 0 4 1909 1958 1961 1906
		f 4 2996 -2967 2997 -2968
		mu 0 4 1974 1973 1970 1963
		f 4 2998 -2895 -2997 -2896
		mu 0 4 1956 1960 1973 1974
		f 4 -2878 -2999 -2873 2999
		mu 0 4 1961 1960 1956 1955
		f 4 -2996 -3000 -2994 3000
		mu 0 4 1906 1961 1955 2015
		f 4 -2993 3001 -2821 -3001
		mu 0 4 2015 2014 1907 1906
		f 4 -2957 -3002 -2992 3002
		mu 0 4 1950 1907 2014 2013
		f 4 -2867 -3003 -2990 3003
		mu 0 4 1948 1950 2013 2012
		f 4 -2864 -3004 -2988 3004
		mu 0 4 1949 1948 2012 2011
		f 4 -2955 -3005 -2986 3005
		mu 0 4 1951 1949 2011 2010
		f 4 -2869 -3006 -2984 3006
		mu 0 4 1946 1951 2010 2009
		f 3 -2861 -3007 -2982
		mu 0 3 1947 1946 2009
		f 4 3007 -2944 -2940 -399
		mu 0 4 2016 1909 1953 2004
		f 4 -2884 -2813 -2890 3008
		mu 0 4 1967 1966 1971 1964
		f 3 -2892 -3009 3009
		mu 0 3 1969 1967 1964
		f 4 -2887 -3010 -2881 -2998
		mu 0 4 1970 1969 1964 1963
		f 4 -2942 -358 -2815 -2891
		mu 0 4 1968 2006 2017 1965
		f 3 -2893 3010 -2941
		mu 0 3 2018 2019 2020
		f 4 -2876 3011 -857 -3011
		mu 0 4 2021 1958 2022 2023
		f 4 -3012 -2995 -3008 -353
		mu 0 4 2022 1958 1909 2024
		f 4 3012 3013 3014 3015
		mu 0 4 2025 2026 2027 2028
		f 4 3016 3017 3018 -3015
		mu 0 4 2027 2029 2030 2028
		f 3 3019 3020 3021
		mu 0 3 2031 2032 2029
		f 4 3022 -3022 -3017 3023
		mu 0 4 2033 2031 2029 2027
		f 4 3024 3025 -3024 -3014
		mu 0 4 2026 2034 2033 2027
		f 3 3026 -3018 -3021
		mu 0 3 2032 2030 2029
		f 4 -3016 3027 3028 3029
		mu 0 4 2035 2036 2037 2038
		f 4 -3028 -3019 3030 3031
		mu 0 4 2037 2036 2039 2040
		f 3 3032 3033 -3020
		mu 0 3 2041 2040 2042
		f 4 3034 -3032 -3033 -3023
		mu 0 4 2043 2037 2040 2041
		f 4 -3029 -3035 -3026 3035
		mu 0 4 2038 2037 2043 2044
		f 3 -3034 -3031 -3027
		mu 0 3 2042 2040 2039
		f 4 3036 3037 3038 3039
		mu 0 4 2045 2046 2047 2048
		f 4 3040 3041 3042 -3039
		mu 0 4 2047 2049 2050 2048
		f 3 3043 3044 3045
		mu 0 3 2051 2052 2049
		f 4 3046 -3046 -3041 3047
		mu 0 4 2053 2051 2049 2047
		f 4 3048 3049 -3048 -3038
		mu 0 4 2046 2054 2053 2047
		f 3 3050 -3042 -3045
		mu 0 3 2052 2050 2049
		f 4 -3040 3051 3052 3053
		mu 0 4 2055 2056 2057 2058
		f 4 -3052 -3043 3054 3055
		mu 0 4 2057 2056 2059 2060
		f 3 3056 3057 -3044
		mu 0 3 2061 2060 2062
		f 4 3058 -3056 -3057 -3047
		mu 0 4 2063 2057 2060 2061
		f 4 -3053 -3059 -3050 3059
		mu 0 4 2058 2057 2063 2064
		f 3 -3058 -3055 -3051
		mu 0 3 2062 2060 2059
		f 4 3060 3061 3062 3063
		mu 0 4 2065 2066 2067 2068
		f 4 -3062 3064 3065 3066
		mu 0 4 2067 2066 2069 2070
		f 3 3067 3068 3069
		mu 0 3 2071 2070 2072
		f 4 3070 -3067 -3068 3071
		mu 0 4 2073 2067 2070 2071
		f 4 -3063 -3071 3072 3073
		mu 0 4 2068 2067 2073 2074
		f 3 -3069 -3066 3074
		mu 0 3 2072 2070 2069
		f 4 3075 3076 3077 -3061
		mu 0 4 2075 2076 2077 2078
		f 4 3078 3079 -3065 -3078
		mu 0 4 2077 2079 2080 2078
		f 3 -3070 3080 3081
		mu 0 3 2081 2082 2079
		f 4 -3072 -3082 -3079 3082
		mu 0 4 2083 2081 2079 2077
		f 4 3083 -3073 -3083 -3077
		mu 0 4 2076 2084 2083 2077
		f 3 -3075 -3080 -3081
		mu 0 3 2082 2080 2079
		f 4 3084 3085 3086 3087
		mu 0 4 2085 2086 2087 2088
		f 4 -3086 3088 3089 3090
		mu 0 4 2087 2086 2089 2090
		f 3 3091 3092 3093
		mu 0 3 2091 2090 2092
		f 4 3094 -3091 -3092 3095
		mu 0 4 2093 2087 2090 2091
		f 4 -3087 -3095 3096 3097
		mu 0 4 2088 2087 2093 2094
		f 3 -3093 -3090 3098
		mu 0 3 2092 2090 2089
		f 4 3099 3100 3101 -3085
		mu 0 4 2095 2096 2097 2098
		f 4 3102 3103 -3089 -3102
		mu 0 4 2097 2099 2100 2098
		f 3 -3094 3104 3105
		mu 0 3 2101 2102 2099
		f 4 -3096 -3106 -3103 3106
		mu 0 4 2103 2101 2099 2097
		f 4 3107 -3097 -3107 -3101
		mu 0 4 2096 2104 2103 2097
		f 3 -3099 -3104 -3105
		mu 0 3 2102 2100 2099;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "imagePlane1";
	rename -uid "ED64DD41-4385-63E9-BFBF-799730A61D55";
	setAttr ".t" -type "double3" -155.77230499814382 86.674488529742092 -20.277059243196561 ;
	setAttr ".r" -type "double3" 0 90 0 ;
	setAttr ".s" -type "double3" 57.463352632654249 57.463352632654249 57.463352632654249 ;
createNode imagePlane -n "imagePlaneShape1" -p "imagePlane1";
	rename -uid "0492345D-4470-3B19-8B03-428E7AA7BE78";
	setAttr -k off ".v";
	setAttr ".fc" 101;
	setAttr ".imn" -type "string" "C:/Users/Noradninja/Desktop/Dog_Run/Run_09.png";
	setAttr ".cov" -type "short2" 550 400 ;
	setAttr ".ag" 0.25;
	setAttr ".dlc" no;
	setAttr ".w" 5.5;
	setAttr ".h" 4;
	setAttr ".cs" -type "string" "sRGB";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "826E03D6-4D92-0211-39D2-5C9B2AE49946";
	setAttr -s 8 ".lnk";
	setAttr -s 8 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "7F4A6EF5-4260-69E8-024A-2381C6B22656";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "0FB7172A-4D6B-BAE6-6A1B-5AB91D431948";
createNode displayLayerManager -n "layerManager";
	rename -uid "114BEBF2-498F-3123-2C2B-ADA20E092E62";
	setAttr -s 5 ".dli[1:4]"  1 2 3 4;
	setAttr -s 5 ".dli";
createNode displayLayer -n "defaultLayer";
	rename -uid "BA506A15-483A-D739-7E22-F1AB0463B2A8";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "E7344A0F-40B1-AA70-6C1E-1A98A6E22793";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "DD04F748-4B66-3178-5EB9-6B9E61970CE2";
	setAttr ".g" yes;
createNode lambert -n "Fox_Rigged:lambert2";
	rename -uid "04D2F3A0-4A49-D8AE-F7FA-0A930F384792";
createNode shadingEngine -n "Fox_Rigged:polySurface78SG";
	rename -uid "577792FA-4280-72BF-C3BB-39AAA26BA383";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Fox_Rigged:materialInfo1";
	rename -uid "C3E1F8F6-4C67-0D4B-B1B3-5B875B9D8B7D";
createNode script -n "Fox_Rigged:uiConfigurationScriptNode";
	rename -uid "B5E675F4-4830-BF75-3A64-AFBE59DC6BAB";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 0\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 645\n            -height 413\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 0\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 645\n            -height 413\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 0\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 645\n            -height 413\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n"
		+ "            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 1\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 0\n            -imagePlane 0\n            -joints 0\n            -ikHandles 0\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n"
		+ "            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 645\n            -height 413\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n"
		+ "            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n"
		+ "            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n"
		+ "            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n"
		+ "                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -isSet 0\n                -isSetMember 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n"
		+ "                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                -selectionOrder \"display\" \n                -expandAttribute 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n"
		+ "                -autoFit 1\n                -autoFitTime 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1.25\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n                -showActiveCurveNames 0\n                -clipTime \"on\" \n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 1\n                -outliner \"graphEditor1OutlineEd\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n"
		+ "                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n"
		+ "                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n"
		+ "                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n"
		+ "                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n"
		+ "                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n"
		+ "                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n"
		+ "                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n"
		+ "                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n"
		+ "        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xpm\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"quad\\\" -ps 1 50 50 -ps 2 50 50 -ps 3 50 50 -ps 4 50 50 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Top View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Top View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera top` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"wireframe\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 645\\n    -height 413\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Top View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera top` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"wireframe\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 645\\n    -height 413\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 1\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 0\\n    -joints 0\\n    -ikHandles 0\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 645\\n    -height 413\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 1\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 0\\n    -joints 0\\n    -ikHandles 0\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 645\\n    -height 413\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Side View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Side View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera side` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"wireframe\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 645\\n    -height 413\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Side View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera side` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"wireframe\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 645\\n    -height 413\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Front View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Front View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera front` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"wireframe\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 645\\n    -height 413\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Front View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera front` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"wireframe\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 645\\n    -height 413\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "Fox_Rigged:sceneConfigurationScriptNode";
	rename -uid "17941D20-4550-454D-3612-63BAB3918823";
	setAttr ".b" -type "string" "playbackOptions -min 35 -max 117 -ast 35 -aet 117 ";
	setAttr ".st" 6;
createNode lambert -n "lambert2";
	rename -uid "D24D9DFD-4345-5C87-0E69-DEAD9A95A17D";
createNode shadingEngine -n "polySurface78SG";
	rename -uid "64F31FE2-462B-6DFE-ED8B-C1A4BAE79BA4";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "E9E5A5AF-4A46-26A2-4E1F-23B4FBC932E6";
createNode blindDataTemplate -n "blindDataTemplate1";
	rename -uid "1421CDF9-46C3-4C2A-9720-C99567252DC2";
	addAttr -ci true -sn "MaxVisibility" -ln "MaxVisibility" -min 0 -max 1 -at "bool";
	setAttr ".tid" 16180;
createNode phong -n "fox_material";
	rename -uid "2F26C6F3-4C3B-4EFE-F727-54966AD3EEB2";
	setAttr ".dc" 1;
	setAttr ".ambc" -type "float3" 1 1 1 ;
	setAttr ".sc" -type "float3" 0 0 0 ;
	setAttr ".rfl" 1;
	setAttr ".cp" 2;
createNode shadingEngine -n "fox1SG";
	rename -uid "D5B64C0E-4683-F6D5-C817-FB8E6D7977F4";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
	rename -uid "24B3DACD-4DE1-56F2-9C43-A78DBA4D1ABF";
createNode file -n "MapFBXASC032FBXASC0355";
	rename -uid "ADFB2406-4E62-A471-38D4-B59A94F6C0EB";
	setAttr ".ftn" -type "string" "Q:\\Dropbox\\Dropbox\\Nedodelki\\Public\\fox\\texture\\texture.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture1";
	rename -uid "B4E8CEC6-45F7-1A39-FBA5-0EBBD687F42A";
createNode displayLayer -n "Joints";
	rename -uid "1FDF26CE-43A1-F5AC-0400-078887500A9C";
	setAttr ".c" 4;
	setAttr ".do" 1;
createNode displayLayer -n "Geometry";
	rename -uid "4CCDBFC3-4CC7-DF3D-1C2D-B8A92022FFBD";
	setAttr ".c" 5;
	setAttr ".do" 2;
createNode ikRPsolver -n "ikRPsolver";
	rename -uid "7420C3E0-4BFE-1FF1-903E-7087E57FD6F9";
createNode ikSCsolver -n "ikSCsolver";
	rename -uid "B682B90B-43EA-FDEA-F5FF-2A9DFBBCCCDD";
createNode lambert -n "Fox_Rigged_0056:Fox_Rigged:lambert2";
	rename -uid "0126C300-48FA-4D4C-6B26-259463AB115E";
createNode shadingEngine -n "Fox_Rigged_0056:Fox_Rigged:polySurface78SG";
	rename -uid "69D7EAAE-4877-AC32-AEE1-B28709AF7CF1";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Fox_Rigged_0056:Fox_Rigged:materialInfo1";
	rename -uid "B1A25F2C-4148-A533-BBAB-DAA534ED0FFF";
createNode lambert -n "Fox_Rigged_0056:lambert2";
	rename -uid "937FDC2B-4FB9-DFD5-B6BC-A7B4E80CB6BD";
createNode shadingEngine -n "Fox_Rigged_0056:polySurface78SG";
	rename -uid "A4D41255-4E59-A058-DCCF-D78E712837B7";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Fox_Rigged_0056:materialInfo1";
	rename -uid "BBAA15EA-46BA-999C-0F3A-66BFD6A510C1";
createNode blindDataTemplate -n "Fox_Rigged_0056:blindDataTemplate1";
	rename -uid "9B90C66F-432F-8590-4B77-B7978CFABD2C";
	addAttr -ci true -sn "MaxVisibility" -ln "MaxVisibility" -min 0 -max 1 -at "bool";
	setAttr ".tid" 16180;
createNode phong -n "Fox_Rigged_0056:fox_material";
	rename -uid "2D573AD9-4E41-FA77-EA2A-D5A5C6984990";
	setAttr ".dc" 1;
	setAttr ".ambc" -type "float3" 1 1 1 ;
	setAttr ".sc" -type "float3" 0 0 0 ;
	setAttr ".rfl" 1;
	setAttr ".cp" 2;
createNode shadingEngine -n "Fox_Rigged_0056:fox1SG";
	rename -uid "2591391B-470E-1881-4C15-C1B6CE6EFB11";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "Fox_Rigged_0056:materialInfo2";
	rename -uid "1D36459F-4207-FF38-D069-139A2EC31415";
createNode file -n "Fox_Rigged_0056:MapFBXASC032FBXASC0355";
	rename -uid "50C40E5B-464F-BBF0-54E2-76A5C3F5DD41";
	setAttr ".ftn" -type "string" "Q:\\Dropbox\\Dropbox\\Nedodelki\\Public\\fox\\texture\\texture.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "Fox_Rigged_0056:place2dTexture1";
	rename -uid "1FBA8E48-48E0-857B-7ECE-B8B8ED924328";
createNode displayLayer -n "Fox_Rigged_0056:Joints";
	rename -uid "947E4382-46E9-2694-8B79-9BBBDA1BAC9A";
	setAttr ".c" 4;
	setAttr ".do" 1;
createNode displayLayer -n "Fox_Rigged_0056:Geometry";
	rename -uid "AF2EEFB7-4A1B-3595-A4CA-D4A3FCF177E1";
	setAttr ".c" 5;
	setAttr ".do" 2;
createNode animCurveTL -n "b_RightFoot02_translateX";
	rename -uid "8E152965-4D12-5713-71FA-3286EA490EDA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 15.779935836791992 8.75 15.779935836791992
		 17.5 15.779935836791992 26.25 15.779935836791992 35 15.779935836791992 43.75 15.779935836791992
		 52.5 15.779935836791992 61.25 15.779935836791992 70 15.779935836791992 117 15.779935836791992
		 1000 15.779935836791992;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTL -n "b_Root_translateX";
	rename -uid "DA1F680F-4262-2260-CADE-299798A99B40";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 6.2330578032288031e-08 8.75 6.2330578032288031e-08
		 17.5 6.2330578032288031e-08 26.25 6.2330578032288031e-08 35 6.2330578032288031e-08
		 43.75 6.2330578032288031e-08 52.5 6.2330578032288031e-08 61.25 6.2330578032288031e-08
		 70 6.2330578032288031e-08 117 6.2330578032288031e-08 1000 6.2330578032288031e-08;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTL -n "b_Hip_translateX";
	rename -uid "62145899-4F57-0F81-25DB-FC9B65B5B728";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -6.0716044252711756e-07 8.75 -9.8766332725501826e-07
		 17.5 -7.7376975910941569e-07 26.25 -5.1638862162286574e-07 35 -3.6597730193970894e-07
		 43.75 2.0520796023420827e-07 52.5 3.674525042515889e-07 61.25 3.697266827927349e-07
		 70 -8.9612539660213232e-07 117 1.6346138338290397e-07 1000 1.6904879203138989e-06;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTL -n "b_Spine01_translateX";
	rename -uid "90FA1727-464D-BE4F-2F8A-EA8EC2DFEEDA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 14.69027785072562 8.75 14.69027785072562
		 17.5 14.69027785072562 26.25 14.69027785072562 35 14.69027785072562 43.75 14.69027785072562
		 52.5 14.69027785072562 61.25 14.69027785072562 70 13.532063110622785 117 14.69027785072562
		 1000 12.850601196289063;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTL -n "b_Spine02_translateX";
	rename -uid "947A72D4-4252-F3B9-BE19-83BA16550AE9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 9.018372831260848 8.75 10.416077881754944
		 17.5 10.419221435027669 26.25 4.4712537034511985 35 4.8865659442866498 43.75 6.372556936098027
		 52.5 8.2069718820611151 61.25 10.069077755244855 70 12.200142345545419 117 20.385436198927511
		 1000 21.655754089355469;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTL -n "b_Neck_translateX";
	rename -uid "C3CF58E0-4B8A-AFFA-F334-EFAEF0D46A66";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 25.649145126342773 8.75 25.649145126342773
		 17.5 25.649145126342773 26.25 25.649145126342773 35 25.649145126342773 43.75 25.649145126342773
		 52.5 25.649145126342773 61.25 25.649145126342773 70 25.649145126342773 117 25.649145126342773
		 1000 25.649145126342773;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTL -n "b_Head_translateX";
	rename -uid "16ACB541-4D89-4BED-14B6-089F38F3027A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 13.376956939697266 8.75 13.376956939697266
		 17.5 13.376956939697266 26.25 13.376956939697266 35 13.376956939697266 43.75 13.376956939697266
		 52.5 13.376956939697266 61.25 13.376956939697266 70 13.376956939697266 117 13.376956939697266
		 1000 13.376956939697266;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTL -n "b_RightUpperArm_translateX";
	rename -uid "C97D58E7-4AFC-D057-B035-62A58C413290";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 18.675959190670774 8.75 18.675959190670774
		 17.5 18.675959190670774 26.25 18.675959190670774 35 18.675959190670774 43.75 18.675959190670774
		 52.5 18.675959190670774 61.25 18.675959190670774 70 18.675959190670774 117 18.675959190670774
		 1000 18.675959190670774;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTL -n "b_RightForeArm_translateX";
	rename -uid "10CC522E-466B-2EAB-8A9E-20985EBAAD72";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 18.24924228424986 8.75 18.24924228424986
		 17.5 18.24924228424986 26.25 18.24924228424986 35 18.24924228424986 43.75 18.24924228424986
		 52.5 18.24924228424986 61.25 18.24924228424986 70 18.24924228424986 117 18.24924228424986
		 1000 18.24924228424986;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTL -n "b_RightWrist_translateX";
	rename -uid "AF29A0EC-4126-24C1-F741-3B82EE7DC792";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 16.76844696634711 8.75 16.76844696634711
		 17.5 16.76844696634711 26.25 16.76844696634711 35 16.76844696634711 43.75 16.76844696634711
		 52.5 16.76844696634711 61.25 16.76844696634711 70 16.76844696634711 117 16.76844696634711
		 1000 16.76844696634711;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTL -n "b_RightHand_translateX";
	rename -uid "FC15039A-413C-580F-3CA3-10B30F68233B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 11.20559500421987 8.75 11.20559500421987
		 17.5 11.20559500421987 26.25 11.20559500421987 35 11.20559500421987 43.75 11.20559500421987
		 52.5 11.20559500421987 61.25 11.20559500421987 70 11.20559500421987 117 11.20559500421987
		 1000 11.20559500421987;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode pairBlend -n "pairBlend1";
	rename -uid "E9EF6202-4B33-EA89-DAD2-C197B3809CBB";
	setAttr ".rm" 2;
createNode animCurveTL -n "pairBlend1_inTranslateX1";
	rename -uid "5C8683F4-44B8-5453-C3D3-EAA5087239DF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 11.20559500421987 8.75 11.20559500421987
		 17.5 11.20559500421987 26.25 11.20559500421987 35 11.20559500421987 43.75 11.20559500421987
		 52.5 11.20559500421987 61.25 11.20559500421987 70 11.20559500421987 117 11.20559500421987
		 1000 11.20559500421987;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTL -n "b_LeftUpperArm_translateX";
	rename -uid "0F07E05C-4461-CD71-D195-3194DD6B5111";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 18.677638056112624 8.75 18.677638056112624
		 17.5 18.677638056112624 26.25 18.677638056112624 35 18.677638056112624 43.75 18.677638056112624
		 52.5 18.677638056112624 61.25 18.677638056112624 70 18.677638056112624 117 18.677638056112624
		 1000 18.677638056112624;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTL -n "b_LeftForeArm_translateX";
	rename -uid "BA0DC587-4055-68B5-5F0C-5C8A884F83AA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 18.057607177181776 8.75 18.057607177181776
		 17.5 18.057607177181776 26.25 18.057607177181776 35 18.057607177181776 43.75 18.057607177181776
		 52.5 18.057607177181776 61.25 18.057607177181776 70 18.057607177181776 117 18.057607177181776
		 1000 18.057607177181776;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTL -n "b_LeftWrist_translateX";
	rename -uid "694DF1D7-449A-AFDA-8B37-BE949B2AE466";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 16.905768920515541 8.75 16.905768920515541
		 17.5 16.905768920515541 26.25 16.905768920515541 35 16.905768920515541 43.75 16.905768920515541
		 52.5 16.905768920515541 61.25 16.905768920515541 70 16.905768920515541 117 16.905768920515541
		 1000 16.905768920515541;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTL -n "b_LeftHand_translateX";
	rename -uid "CDCD1AC1-4011-A63D-5585-BBB60A4F07B0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 11.108568591316594 8.75 11.108568591316594
		 17.5 11.108568591316594 26.25 11.108568591316594 35 11.108568591316594 43.75 11.108568591316594
		 52.5 11.108568591316594 61.25 11.108568591316594 70 11.108568591316594 117 11.108568591316594
		 1000 11.108568591316594;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode pairBlend -n "pairBlend2";
	rename -uid "CBDB91AD-4851-FB02-A6AE-92986FD222EA";
	setAttr ".rm" 2;
createNode animCurveTL -n "pairBlend2_inTranslateX1";
	rename -uid "BD41A1A9-4A12-D437-5F1E-E1AEF884A2A3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 11.108568591316594 8.75 11.108568591316594
		 17.5 11.108568591316594 26.25 11.108568591316594 35 11.108568591316594 43.75 11.108568591316594
		 52.5 11.108568591316594 61.25 11.108568591316594 70 11.108568591316594 117 11.108568591316594
		 1000 11.108568591316594;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTL -n "b_Tail01_translateX";
	rename -uid "D430B648-46DC-B872-C4B7-4C8CE14EF6A3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 4.2603816986083984 8.75 4.2603816986083984
		 17.5 4.2603816986083984 26.25 4.2603816986083984 35 4.2603816986083984 43.75 4.2603816986083984
		 52.5 4.2603816986083984 61.25 4.2603816986083984 70 4.2603816986083984 117 4.2603816986083984
		 1000 4.2603816986083984;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTL -n "b_Tail02_translateX";
	rename -uid "AA48FC67-4FE3-58BD-EFDB-ABA3950C8912";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 12.411914825439453 8.75 12.411914825439453
		 17.5 12.411914825439453 26.25 12.411914825439453 35 12.411914825439453 43.75 12.411914825439453
		 52.5 12.411914825439453 61.25 12.411914825439453 70 12.411914825439453 117 12.411914825439453
		 1000 12.411914825439453;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTL -n "b_Tail03_translateX";
	rename -uid "D2353759-4070-5938-E7EA-08AD6BB00B08";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 24.240320205688477 8.75 24.240320205688477
		 17.5 24.240320205688477 26.25 24.240320205688477 35 24.240320205688477 43.75 24.240320205688477
		 52.5 24.240320205688477 61.25 24.240320205688477 70 24.240320205688477 117 24.240320205688477
		 1000 24.240320205688477;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTL -n "b_Tail05_translateX";
	rename -uid "0CD8235C-4836-6A7C-A0A6-0380CB7A7247";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 20.434858039432498 8.75 20.434858039432498
		 17.5 20.434858039432498 26.25 20.434858039432498 35 20.434858039432498 43.75 20.434858039432498
		 52.5 20.434858039432498 61.25 20.434858039432498 70 20.434858039432498 117 20.434858039432498
		 1000 20.434858039432498;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTL -n "b_Tail04_translateX";
	rename -uid "F87F2BA6-496B-1B37-2013-418E1FC5C000";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -1.1652956282098803 8.75 -1.1652956282098803
		 17.5 -1.1652956282098803 26.25 -1.1652956282098803 35 -1.1652956282098803 43.75 -1.1652956282098803
		 52.5 -1.1652956282098803 61.25 -1.1652956282098803 70 -1.1652956282098803 117 -1.1652956282098803
		 1000 -1.1652956282098803;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTL -n "b_Tail02_translateX1";
	rename -uid "99FC5601-40A8-7D29-6A08-149A53461C0C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 13.655589496305408 8.75 13.655589496305408
		 17.5 13.655589496305408 26.25 13.655589496305408 35 13.655589496305408 43.75 13.655589496305408
		 52.5 13.655589496305408 61.25 13.655589496305408 70 13.655589496305408 117 13.655589496305408
		 1000 13.655589496305408;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTL -n "b_Tail03_translateX1";
	rename -uid "7BF8D928-4488-4FBC-CC06-E2B888491387";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 19.316033339125489 8.75 19.316033339125489
		 17.5 19.316033339125489 26.25 19.316033339125489 35 19.316033339125489 43.75 19.316033339125489
		 52.5 19.316033339125489 61.25 19.316033339125489 70 19.316033339125489 117 19.316033339125489
		 1000 19.316033339125489;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTL -n "b_Tail06_translateX";
	rename -uid "557CFD50-495F-3C4A-AAF6-7EB9F750E6BE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -1.1652956282098803 8.75 -1.1652956282098803
		 17.5 -1.1652956282098803 26.25 -1.1652956282098803 35 -1.1652956282098803 43.75 -1.1652956282098803
		 52.5 -1.1652956282098803 61.25 -1.1652956282098803 70 -1.1652956282098803 117 -1.1652956282098803
		 1000 -1.1652956282098803;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTL -n "b_Tail02_translateX2";
	rename -uid "D3D076A2-41D3-E496-6621-CFA353E5CF51";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 13.85295379324724 8.75 13.85295379324724
		 17.5 13.85295379324724 26.25 13.85295379324724 35 13.85295379324724 43.75 13.85295379324724
		 52.5 13.85295379324724 61.25 13.85295379324724 70 13.85295379324724 117 13.85295379324724
		 1000 13.85295379324724;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTL -n "b_Tail03_translateX2";
	rename -uid "338390DA-445F-9FD9-BCCD-109EF6A01A88";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 11.482117904302346 8.75 11.482117904302346
		 17.5 11.482117904302346 26.25 11.482117904302346 35 11.482117904302346 43.75 11.482117904302346
		 52.5 11.482117904302346 61.25 11.482117904302346 70 11.482117904302346 117 11.482117904302346
		 1000 11.482117904302346;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTL -n "b_Tail05_translateX1";
	rename -uid "35732D57-4B45-1F76-2F37-52902D47E62E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 11.482117904302346 8.75 11.482117904302346
		 17.5 11.482117904302346 26.25 11.482117904302346 35 11.482117904302346 43.75 11.482117904302346
		 52.5 11.482117904302346 61.25 11.482117904302346 70 11.482117904302346 117 11.482117904302346
		 1000 11.482117904302346;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTL -n "b_LeftLeg01_translateX";
	rename -uid "238EDB54-42F6-33D6-3086-A8A820AA16DA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 4.8137702941894531 8.75 4.8137702941894531
		 17.5 4.8137702941894531 26.25 4.8137702941894531 35 4.8137702941894531 43.75 4.8137702941894531
		 52.5 4.8137702941894531 61.25 4.8137702941894531 70 4.8137702941894531 117 4.8137702941894531
		 1000 4.8137702941894531;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTL -n "b_LeftLeg02_translateX";
	rename -uid "82169BEF-46AD-1982-443E-65B969143FF0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 18.944175720214844 8.75 18.944175720214844
		 17.5 18.944175720214844 26.25 18.944175720214844 35 18.944175720214844 43.75 18.944175720214844
		 52.5 18.944175720214844 61.25 18.944175720214844 70 18.944175720214844 117 18.944175720214844
		 1000 18.944175720214844;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTL -n "b_LeftFoot01_translateX";
	rename -uid "A2162E6A-41CF-F809-BA28-72915A810535";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 17.942811965942383 8.75 17.942811965942383
		 17.5 17.942811965942383 26.25 17.942811965942383 35 17.942811965942383 43.75 17.942811965942383
		 52.5 17.942811965942383 61.25 17.942811965942383 70 17.942811965942383 117 17.942811965942383
		 1000 17.942811965942383;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTL -n "b_LeftFoot02_translateX";
	rename -uid "20777C7B-430E-87EA-7369-D29E33D18790";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 15.779938697814941 8.75 15.779938697814941
		 17.5 15.779938697814941 26.25 15.779938697814941 35 15.779938697814941 43.75 15.779938697814941
		 52.5 15.779938697814941 61.25 15.779938697814941 70 15.779938697814941 117 15.779938697814941
		 1000 15.779938697814941;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode pairBlend -n "pairBlend3";
	rename -uid "EC5DDCA9-4890-C9AF-8D3C-3AA9DF930D64";
	setAttr ".rm" 2;
createNode animCurveTL -n "pairBlend3_inTranslateX1";
	rename -uid "8E0D6CF4-4E60-94F7-2A59-BD9D9BE5913C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 15.779938697814941 8.75 15.779938697814941
		 17.5 15.779938697814941 26.25 15.779938697814941 35 15.779938697814941 43.75 15.779938697814941
		 52.5 15.779938697814941 61.25 15.779938697814941 70 15.779938697814941 117 15.779938697814941
		 1000 15.779938697814941;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTL -n "b_RightLeg01_translateX";
	rename -uid "0F3158F4-4D67-D5A5-E1B9-B4938B02650C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 4.8137779235839844 8.75 4.8137779235839844
		 17.5 4.8137779235839844 26.25 4.8137779235839844 35 4.8137779235839844 43.75 4.8137779235839844
		 52.5 4.8137779235839844 61.25 4.8137779235839844 70 4.8137779235839844 117 4.8137779235839844
		 1000 4.8137779235839844;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTL -n "b_RightLeg02_translateX";
	rename -uid "AD1AAE46-4261-A57E-BD4D-478BFC6B148A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 18.944183349609375 8.75 18.944183349609375
		 17.5 18.944183349609375 26.25 18.944183349609375 35 18.944183349609375 43.75 18.944183349609375
		 52.5 18.944183349609375 61.25 18.944183349609375 70 18.944183349609375 117 18.944183349609375
		 1000 18.944183349609375;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTL -n "b_RightFoot01_translateX";
	rename -uid "F8DC0417-4E3F-AC7D-49C2-C1958B65F055";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 17.94281005859375 8.75 17.94281005859375
		 17.5 17.94281005859375 26.25 17.94281005859375 35 17.94281005859375 43.75 17.94281005859375
		 52.5 17.94281005859375 61.25 17.94281005859375 70 17.94281005859375 117 17.94281005859375
		 1000 17.94281005859375;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTL -n "b_RightFoot02_translateY";
	rename -uid "6B294D54-4C1C-DBE0-B187-429E5201DAF7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 2.09808349609375e-05 8.75 2.09808349609375e-05
		 17.5 2.09808349609375e-05 26.25 2.09808349609375e-05 35 2.09808349609375e-05 43.75 2.09808349609375e-05
		 52.5 2.09808349609375e-05 61.25 2.09808349609375e-05 70 2.09808349609375e-05 117 2.09808349609375e-05
		 1000 2.09808349609375e-05;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTL -n "b_Root_translateY";
	rename -uid "27B22F63-4F21-37BB-443E-3F825D6BB030";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 8.75 0 17.5 0 26.25 0 35 0 43.75 0 52.5 0
		 61.25 0 70 0 117 0 1000 0;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTL -n "b_Hip_translateY";
	rename -uid "D93526B6-4F41-B2AE-4B25-C5B1BDA71317";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 15.706842533088953 8.75 13.186885746337898
		 17.5 13.08609724314134 26.25 12.129645273771123 35 10.913620440404113 43.75 12.8816315205809
		 52.5 14.075030678817731 61.25 15.685992597174964 70 10.190923647267011 117 20.343566026333512
		 1000 26.748403549194336;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTL -n "b_Spine01_translateY";
	rename -uid "E12F5F27-4803-EC33-E638-0E9189EB79E7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.076212827986548132 8.75 0.076212827986548132
		 17.5 0.076212827986548132 26.25 0.076212827986548132 35 0.076212827986548132 43.75 0.076212827986548132
		 52.5 0.076212827986548132 61.25 0.076212827986548132 70 -0.76035226571881742 117 0.076212827986548132
		 1000 3.814697265625e-06;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTL -n "b_Spine02_translateY";
	rename -uid "6F4ADA16-4650-1D09-84FD-6CAFCBB4CDAA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -14.672224333627558 8.75 -16.067846951539519
		 17.5 -13.250194929462609 26.25 -15.034168028378607 35 -14.95818337907866 43.75 -14.686309609722548
		 52.5 -14.350688930545861 61.25 -14.010001977884388 70 -9.8378726894625554 117 -12.1225428535906
		 1000 -0.000118255615234375;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTL -n "b_Neck_translateY";
	rename -uid "2DC43C95-4BDE-BD80-B4CD-C3B719BFC0C2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 8.75 0 17.5 0 26.25 0 35 0 43.75 0 52.5 0
		 61.25 0 70 0 117 0 1000 0;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTL -n "b_Head_translateY";
	rename -uid "B3F5159D-4961-A8CE-1354-2B9106D57F42";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -3.5762786865234375e-06 8.75 -3.5762786865234375e-06
		 17.5 -3.5762786865234375e-06 26.25 -3.5762786865234375e-06 35 -3.5762786865234375e-06
		 43.75 -3.5762786865234375e-06 52.5 -3.5762786865234375e-06 61.25 -3.5762786865234375e-06
		 70 -3.5762786865234375e-06 117 -3.5762786865234375e-06 1000 -3.5762786865234375e-06;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTL -n "b_RightUpperArm_translateY";
	rename -uid "20EBD096-4F8E-4F46-199C-B9B2E364B7C8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -4.2973716301368308 8.75 -4.2973716301368308
		 17.5 -4.2973716301368308 26.25 -4.2973716301368308 35 -4.2973716301368308 43.75 -4.2973716301368308
		 52.5 -4.2973716301368308 61.25 -4.2973716301368308 70 -4.2973716301368308 117 -4.2973716301368308
		 1000 -4.2973716301368308;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTL -n "b_RightForeArm_translateY";
	rename -uid "AC76A489-474D-785F-2103-5AA22D5FF9E5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -0.60621496350072956 8.75 -0.60621496350072956
		 17.5 -0.60621496350072956 26.25 -0.60621496350072956 35 -0.60621496350072956 43.75 -0.60621496350072956
		 52.5 -0.60621496350072956 61.25 -0.60621496350072956 70 -0.60621496350072956 117 -0.60621496350072956
		 1000 -0.60621496350072956;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTL -n "b_RightWrist_translateY";
	rename -uid "CE6672E4-43CF-79A0-E31D-E9B54229A033";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 8.6979165543211767 8.75 8.6979165543211767
		 17.5 8.6979165543211767 26.25 8.6979165543211767 35 8.6979165543211767 43.75 8.6979165543211767
		 52.5 8.6979165543211767 61.25 8.6979165543211767 70 8.6979165543211767 117 8.6979165543211767
		 1000 8.6979165543211767;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTL -n "b_RightHand_translateY";
	rename -uid "2D6A3BE4-4EA4-4B20-460E-959C094C740B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -0.18036411645980718 8.75 -0.18036411645980718
		 17.5 -0.18036411645980718 26.25 -0.18036411645980718 35 -0.18036411645980718 43.75 -0.18036411645980718
		 52.5 -0.18036411645980718 61.25 -0.18036411645980718 70 -0.18036411645980718 117 -0.18036411645980718
		 1000 -0.18036411645980718;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTL -n "pairBlend1_inTranslateY1";
	rename -uid "32BCEDC7-4A18-EA33-3BEB-A0A1CB09078D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -0.18036411645980718 8.75 -0.18036411645980718
		 17.5 -0.18036411645980718 26.25 -0.18036411645980718 35 -0.18036411645980718 43.75 -0.18036411645980718
		 52.5 -0.18036411645980718 61.25 -0.18036411645980718 70 -0.18036411645980718 117 -0.18036411645980718
		 1000 -0.18036411645980718;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTL -n "b_LeftUpperArm_translateY";
	rename -uid "2144E7C2-4210-3A43-8B51-96B124D4F4B7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -4.2972641022727531 8.75 -4.2972641022727531
		 17.5 -4.2972641022727531 26.25 -4.2972641022727531 35 -4.2972641022727531 43.75 -4.2972641022727531
		 52.5 -4.2972641022727531 61.25 -4.2972641022727531 70 -4.2972641022727531 117 -4.2972641022727531
		 1000 -4.2972641022727531;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTL -n "b_LeftForeArm_translateY";
	rename -uid "D682A515-4B79-7B52-FD5F-F4B91B548491";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -0.64413197292899149 8.75 -0.64413197292899149
		 17.5 -0.64413197292899149 26.25 -0.64413197292899149 35 -0.64413197292899149 43.75 -0.64413197292899149
		 52.5 -0.64413197292899149 61.25 -0.64413197292899149 70 -0.64413197292899149 117 -0.64413197292899149
		 1000 -0.64413197292899149;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTL -n "b_LeftWrist_translateY";
	rename -uid "7AC27124-4D1B-FD38-6DA2-87BDD10C1B61";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 8.4901391167076437 8.75 8.4901391167076437
		 17.5 8.4901391167076437 26.25 8.4901391167076437 35 8.4901391167076437 43.75 8.4901391167076437
		 52.5 8.4901391167076437 61.25 8.4901391167076437 70 8.4901391167076437 117 8.4901391167076437
		 1000 8.4901391167076437;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTL -n "b_LeftHand_translateY";
	rename -uid "C6F71945-43BB-FA96-B5B5-948FBAD5C862";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.10307713074418484 8.75 0.10307713074418484
		 17.5 0.10307713074418484 26.25 0.10307713074418484 35 0.10307713074418484 43.75 0.10307713074418484
		 52.5 0.10307713074418484 61.25 0.10307713074418484 70 0.10307713074418484 117 0.10307713074418484
		 1000 0.10307713074418484;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTL -n "pairBlend2_inTranslateY1";
	rename -uid "32DB9637-4367-0C32-C5FD-F3B42236530D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.10307713074418484 8.75 0.10307713074418484
		 17.5 0.10307713074418484 26.25 0.10307713074418484 35 0.10307713074418484 43.75 0.10307713074418484
		 52.5 0.10307713074418484 61.25 0.10307713074418484 70 0.10307713074418484 117 0.10307713074418484
		 1000 0.10307713074418484;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTL -n "b_Tail01_translateY";
	rename -uid "4EA58822-438D-B230-B1C8-C8974F10BA11";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 15.958770751953125 8.75 15.958770751953125
		 17.5 15.958770751953125 26.25 15.958770751953125 35 15.958770751953125 43.75 15.958770751953125
		 52.5 15.958770751953125 61.25 15.958770751953125 70 15.958770751953125 117 15.958770751953125
		 1000 15.958770751953125;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTL -n "b_Tail02_translateY";
	rename -uid "5E628D23-4570-EECC-CA9C-0DAE0B75D797";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 7.62939453125e-06 8.75 7.62939453125e-06
		 17.5 7.62939453125e-06 26.25 7.62939453125e-06 35 7.62939453125e-06 43.75 7.62939453125e-06
		 52.5 7.62939453125e-06 61.25 7.62939453125e-06 70 7.62939453125e-06 117 7.62939453125e-06
		 1000 7.62939453125e-06;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTL -n "b_Tail03_translateY";
	rename -uid "51716A90-45A3-5982-E655-D5924DF37870";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 8.75 0 17.5 0 26.25 0 35 0 43.75 0 52.5 0
		 61.25 0 70 0 117 0 1000 0;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTL -n "b_Tail05_translateY";
	rename -uid "6978BFD4-452D-1990-35BA-6EB7F20D378F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -0.31018519859221877 8.75 -0.31018519859221877
		 17.5 -0.31018519859221877 26.25 -0.31018519859221877 35 -0.31018519859221877 43.75 -0.31018519859221877
		 52.5 -0.31018519859221877 61.25 -0.31018519859221877 70 -0.31018519859221877 117 -0.31018519859221877
		 1000 -0.31018519859221877;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTL -n "b_Tail04_translateY";
	rename -uid "1990FFE7-4D3A-9DB7-27A6-14B046C1D184";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 8.0866788938982026 8.75 8.0866788938982026
		 17.5 8.0866788938982026 26.25 8.0866788938982026 35 8.0866788938982026 43.75 8.0866788938982026
		 52.5 8.0866788938982026 61.25 8.0866788938982026 70 8.0866788938982026 117 8.0866788938982026
		 1000 8.0866788938982026;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTL -n "b_Tail02_translateY1";
	rename -uid "05AEC4C2-4B84-4DEE-000D-35B5F4C12622";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -0.20392618497759915 8.75 -0.20392618497759915
		 17.5 -0.20392618497759915 26.25 -0.20392618497759915 35 -0.20392618497759915 43.75 -0.20392618497759915
		 52.5 -0.20392618497759915 61.25 -0.20392618497759915 70 -0.20392618497759915 117 -0.20392618497759915
		 1000 -0.20392618497759915;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTL -n "b_Tail03_translateY1";
	rename -uid "EA937663-48FC-020D-529F-2BB45419D6C0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.60781264577373673 8.75 0.60781264577373673
		 17.5 0.60781264577373673 26.25 0.60781264577373673 35 0.60781264577373673 43.75 0.60781264577373673
		 52.5 0.60781264577373673 61.25 0.60781264577373673 70 0.60781264577373673 117 0.60781264577373673
		 1000 0.60781264577373673;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTL -n "b_Tail06_translateY";
	rename -uid "FE11C26D-426F-0A81-4B2F-549320FBBCB4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 8.0866788938982026 8.75 8.0866788938982026
		 17.5 8.0866788938982026 26.25 8.0866788938982026 35 8.0866788938982026 43.75 8.0866788938982026
		 52.5 8.0866788938982026 61.25 8.0866788938982026 70 8.0866788938982026 117 8.0866788938982026
		 1000 8.0866788938982026;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTL -n "b_Tail02_translateY2";
	rename -uid "43DEA3BC-455C-8CC6-522F-4C93F2978021";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.19724971232937172 8.75 0.19724971232937172
		 17.5 0.19724971232937172 26.25 0.19724971232937172 35 0.19724971232937172 43.75 0.19724971232937172
		 52.5 0.19724971232937172 61.25 0.19724971232937172 70 0.19724971232937172 117 0.19724971232937172
		 1000 0.19724971232937172;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTL -n "b_Tail03_translateY2";
	rename -uid "E1C6E829-48B9-AA4D-B75B-4EAE4CCD634D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 8.3350428031729002 8.75 8.3350428031729002
		 17.5 8.3350428031729002 26.25 8.3350428031729002 35 8.3350428031729002 43.75 8.3350428031729002
		 52.5 8.3350428031729002 61.25 8.3350428031729002 70 8.3350428031729002 117 8.3350428031729002
		 1000 8.3350428031729002;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTL -n "b_Tail05_translateY1";
	rename -uid "4B9DB35D-470B-CAC3-C000-169CE6C6B9C4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 8.3350428031729002 8.75 8.3350428031729002
		 17.5 8.3350428031729002 26.25 8.3350428031729002 35 8.3350428031729002 43.75 8.3350428031729002
		 52.5 8.3350428031729002 61.25 8.3350428031729002 70 8.3350428031729002 117 8.3350428031729002
		 1000 8.3350428031729002;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTL -n "b_LeftLeg01_translateY";
	rename -uid "9E3C2308-41AA-121E-AC80-9A97FE045BB1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 5.1540184020996094 8.75 5.1540184020996094
		 17.5 5.1540184020996094 26.25 5.1540184020996094 35 5.1540184020996094 43.75 5.1540184020996094
		 52.5 5.1540184020996094 61.25 5.1540184020996094 70 5.1540184020996094 117 5.1540184020996094
		 1000 5.1540184020996094;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTL -n "b_LeftLeg02_translateY";
	rename -uid "E12DEA2D-42DA-71AE-4A36-A3A7BE820051";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -1.9073486328125e-06 8.75 -1.9073486328125e-06
		 17.5 -1.9073486328125e-06 26.25 -1.9073486328125e-06 35 -1.9073486328125e-06 43.75 -1.9073486328125e-06
		 52.5 -1.9073486328125e-06 61.25 -1.9073486328125e-06 70 -1.9073486328125e-06 117 -1.9073486328125e-06
		 1000 -1.9073486328125e-06;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTL -n "b_LeftFoot01_translateY";
	rename -uid "95EB8A01-4C20-D9E7-E17D-469F64AF0E16";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -3.814697265625e-06 8.75 -3.814697265625e-06
		 17.5 -3.814697265625e-06 26.25 -3.814697265625e-06 35 -3.814697265625e-06 43.75 -3.814697265625e-06
		 52.5 -3.814697265625e-06 61.25 -3.814697265625e-06 70 -3.814697265625e-06 117 -3.814697265625e-06
		 1000 -3.814697265625e-06;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTL -n "b_LeftFoot02_translateY";
	rename -uid "64CDF6C1-4EB3-6D00-797B-3E9AE66A0333";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 2.288818359375e-05 8.75 2.288818359375e-05
		 17.5 2.288818359375e-05 26.25 2.288818359375e-05 35 2.288818359375e-05 43.75 2.288818359375e-05
		 52.5 2.288818359375e-05 61.25 2.288818359375e-05 70 2.288818359375e-05 117 2.288818359375e-05
		 1000 2.288818359375e-05;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTL -n "pairBlend3_inTranslateY1";
	rename -uid "3F424C9E-40C8-4DDF-1E29-3BA4AB0846D0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 2.288818359375e-05 8.75 2.288818359375e-05
		 17.5 2.288818359375e-05 26.25 2.288818359375e-05 35 2.288818359375e-05 43.75 2.288818359375e-05
		 52.5 2.288818359375e-05 61.25 2.288818359375e-05 70 2.288818359375e-05 117 2.288818359375e-05
		 1000 2.288818359375e-05;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTL -n "b_RightLeg01_translateY";
	rename -uid "062F9574-4265-ADD2-EC5B-BEB97908DCC1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 5.1540260314941406 8.75 5.1540260314941406
		 17.5 5.1540260314941406 26.25 5.1540260314941406 35 5.1540260314941406 43.75 5.1540260314941406
		 52.5 5.1540260314941406 61.25 5.1540260314941406 70 5.1540260314941406 117 5.1540260314941406
		 1000 5.1540260314941406;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTL -n "b_RightLeg02_translateY";
	rename -uid "E23CFBC7-40CB-DBF3-709A-D9BD3949ACFA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -1.9073486328125e-06 8.75 -1.9073486328125e-06
		 17.5 -1.9073486328125e-06 26.25 -1.9073486328125e-06 35 -1.9073486328125e-06 43.75 -1.9073486328125e-06
		 52.5 -1.9073486328125e-06 61.25 -1.9073486328125e-06 70 -1.9073486328125e-06 117 -1.9073486328125e-06
		 1000 -1.9073486328125e-06;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTL -n "b_RightFoot01_translateY";
	rename -uid "2CF49B83-4E85-3F62-8484-8394C8DF35BA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -7.62939453125e-06 8.75 -7.62939453125e-06
		 17.5 -7.62939453125e-06 26.25 -7.62939453125e-06 35 -7.62939453125e-06 43.75 -7.62939453125e-06
		 52.5 -7.62939453125e-06 61.25 -7.62939453125e-06 70 -7.62939453125e-06 117 -7.62939453125e-06
		 1000 -7.62939453125e-06;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTL -n "b_RightFoot02_translateZ";
	rename -uid "78F0B294-4A95-68C1-5052-9E97C7CEEC13";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 8.75 0 17.5 0 26.25 0 35 0 43.75 0 52.5 0
		 61.25 0 70 0 117 0 1000 0;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTL -n "b_Root_translateZ";
	rename -uid "32921F78-411F-E418-3902-3F8103F7A232";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 8.75 0 17.5 0 26.25 0 35 0 43.75 0 52.5 0
		 61.25 0 70 0 117 0 1000 0;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTL -n "b_Hip_translateZ";
	rename -uid "B7D42724-48FD-3B11-E294-84A9BA307135";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 50.149330054012722 8.75 50.149320661442033
		 17.5 47.528565227518101 26.25 43.817836359001298 35 40.74363043801084 43.75 38.155696714718964
		 52.5 36.927666025928033 61.25 38.496514201042181 70 43.667564406583281 117 49.342961164582462
		 1000 42.93817138671875;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTL -n "b_Spine01_translateZ";
	rename -uid "B4033940-4AF7-CA73-8D30-68A171ECCA6E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 2.1134662586947127e-06 8.75 2.1134662586947127e-06
		 17.5 2.1134662586947127e-06 26.25 2.1134662586947127e-06 35 2.1134662586947127e-06
		 43.75 2.1134662586947127e-06 52.5 2.1134662586947127e-06 61.25 2.1134662586947127e-06
		 70 2.9824455654991722e-06 117 2.1134662586947127e-06 1000 2.0315565052442253e-06;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTL -n "b_Spine02_translateZ";
	rename -uid "96D963D7-442C-6D8F-12A6-B299FBFB1239";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -3.9081153196240762e-06 8.75 -3.1822263020239563e-06
		 17.5 -3.363985631547041e-06 26.25 -6.8267233304707461e-06 35 -6.5519752410197896e-06
		 43.75 -5.5689240669917468e-06 52.5 -4.3553744719935943e-06 61.25 -3.123506059005163e-06
		 70 -0.88568801962396859 117 3.7012380583156083e-06 1000 2.8129034035373479e-06;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTL -n "b_Neck_translateZ";
	rename -uid "49FE890E-4E1F-5E32-161F-599B70549428";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 7.3706587500055321e-08 8.75 7.3706587500055321e-08
		 17.5 7.3706587500055321e-08 26.25 7.3706587500055321e-08 35 7.3706587500055321e-08
		 43.75 7.3706587500055321e-08 52.5 7.3706587500055321e-08 61.25 7.3706587500055321e-08
		 70 7.3706587500055321e-08 117 7.3706587500055321e-08 1000 7.3706587500055321e-08;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTL -n "b_Head_translateZ";
	rename -uid "46A88EDE-4D05-67E6-11BC-5E843820BB93";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1.2611906186066335e-07 8.75 1.2611906186066335e-07
		 17.5 1.2611906186066335e-07 26.25 1.2611906186066335e-07 35 1.2611906186066335e-07
		 43.75 1.2611906186066335e-07 52.5 1.2611906186066335e-07 61.25 1.2611906186066335e-07
		 70 1.2611906186066335e-07 117 1.2611906186066335e-07 1000 1.2611906186066335e-07;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTL -n "b_RightUpperArm_translateZ";
	rename -uid "25F96A21-4FFF-506E-2199-DBA93EE8CB41";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 8.4802881890573811 8.75 8.4802881890573811
		 17.5 8.4802881890573811 26.25 8.4802881890573811 35 8.4802881890573811 43.75 8.4802881890573811
		 52.5 8.4802881890573811 61.25 8.4802881890573811 70 8.4802881890573811 117 8.4802881890573811
		 1000 8.4802881890573811;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTL -n "b_RightForeArm_translateZ";
	rename -uid "9B4035BC-4E3E-B361-4346-AC8C5CAE8B59";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -0.79192192195109534 8.75 -0.79192192195109534
		 17.5 -0.79192192195109534 26.25 -0.79192192195109534 35 -0.79192192195109534 43.75 -0.79192192195109534
		 52.5 -0.79192192195109534 61.25 -0.79192192195109534 70 -0.79192192195109534 117 -0.79192192195109534
		 1000 -0.79192192195109534;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTL -n "b_RightWrist_translateZ";
	rename -uid "68471E5E-4971-14BA-5A89-E0B6D05B5E88";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1.7902961379782658 8.75 1.7902961379782658
		 17.5 1.7902961379782658 26.25 1.7902961379782658 35 1.7902961379782658 43.75 1.7902961379782658
		 52.5 1.7902961379782658 61.25 1.7902961379782658 70 1.7902961379782658 117 1.7902961379782658
		 1000 1.7902961379782658;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTL -n "b_RightHand_translateZ";
	rename -uid "55E19AEF-42B9-EF87-BB61-84994919201D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.00050456120321619468 8.75 0.00050456120321619468
		 17.5 0.00050456120321619468 26.25 0.00050456120321619468 35 0.00050456120321619468
		 43.75 0.00050456120321619468 52.5 0.00050456120321619468 61.25 0.00050456120321619468
		 70 0.00050456120321619468 117 0.00050456120321619468 1000 0.00050456120321619468;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTL -n "pairBlend1_inTranslateZ1";
	rename -uid "8156308F-45D5-5BE8-B7A1-89B27DACC235";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.00050456120321619468 8.75 0.00050456120321619468
		 17.5 0.00050456120321619468 26.25 0.00050456120321619468 35 0.00050456120321619468
		 43.75 0.00050456120321619468 52.5 0.00050456120321619468 61.25 0.00050456120321619468
		 70 0.00050456120321619468 117 0.00050456120321619468 1000 0.00050456120321619468;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTL -n "b_LeftUpperArm_translateZ";
	rename -uid "089C3356-4E7E-A42B-E43B-7285A2351D87";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -6.8244679574164175 8.75 -6.8244679574164175
		 17.5 -6.8244679574164175 26.25 -6.8244679574164175 35 -6.8244679574164175 43.75 -6.8244679574164175
		 52.5 -6.8244679574164175 61.25 -6.8244679574164175 70 -6.8244679574164175 117 -6.8244679574164175
		 1000 -6.8244679574164175;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTL -n "b_LeftForeArm_translateZ";
	rename -uid "754E6857-40C8-3FF9-6879-68801637DD87";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -2.2257531009857257 8.75 -2.2257531009857257
		 17.5 -2.2257531009857257 26.25 -2.2257531009857257 35 -2.2257531009857257 43.75 -2.2257531009857257
		 52.5 -2.2257531009857257 61.25 -2.2257531009857257 70 -2.2257531009857257 117 -2.2257531009857257
		 1000 -2.2257531009857257;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTL -n "b_LeftWrist_translateZ";
	rename -uid "C5D70DE4-4383-62BB-34C6-24B591306657";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -1.49740469340112 8.75 -1.49740469340112
		 17.5 -1.49740469340112 26.25 -1.49740469340112 35 -1.49740469340112 43.75 -1.49740469340112
		 52.5 -1.49740469340112 61.25 -1.49740469340112 70 -1.49740469340112 117 -1.49740469340112
		 1000 -1.49740469340112;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTL -n "b_LeftHand_translateZ";
	rename -uid "469E3B1B-44B6-E4A1-A67D-FAAECC0DF722";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.0002425780929622473 8.75 0.0002425780929622473
		 17.5 0.0002425780929622473 26.25 0.0002425780929622473 35 0.0002425780929622473 43.75 0.0002425780929622473
		 52.5 0.0002425780929622473 61.25 0.0002425780929622473 70 0.0002425780929622473 117 0.0002425780929622473
		 1000 0.0002425780929622473;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTL -n "pairBlend2_inTranslateZ1";
	rename -uid "5BDD4370-4E12-B81F-239D-ABB2F01E8E7D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.0002425780929622473 8.75 0.0002425780929622473
		 17.5 0.0002425780929622473 26.25 0.0002425780929622473 35 0.0002425780929622473 43.75 0.0002425780929622473
		 52.5 0.0002425780929622473 61.25 0.0002425780929622473 70 0.0002425780929622473 117 0.0002425780929622473
		 1000 0.0002425780929622473;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTL -n "b_Tail01_translateZ";
	rename -uid "F361728A-41B2-BF83-CAE0-00A98EE8BA93";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -1.1444091796875e-05 8.75 -1.1444091796875e-05
		 17.5 -1.1444091796875e-05 26.25 -1.1444091796875e-05 35 -1.1444091796875e-05 43.75 -1.1444091796875e-05
		 52.5 -1.1444091796875e-05 61.25 -1.1444091796875e-05 70 -1.1444091796875e-05 117 -1.1444091796875e-05
		 1000 -1.1444091796875e-05;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTL -n "b_Tail02_translateZ";
	rename -uid "D9BC355B-4585-4C13-E47D-008C990B2231";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 2.6728503144113347e-07 8.75 2.6728503144113347e-07
		 17.5 2.6728503144113347e-07 26.25 2.6728503144113347e-07 35 2.6728503144113347e-07
		 43.75 2.6728503144113347e-07 52.5 2.6728503144113347e-07 61.25 2.6728503144113347e-07
		 70 2.6728503144113347e-07 117 2.6728503144113347e-07 1000 2.6728503144113347e-07;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTL -n "b_Tail03_translateZ";
	rename -uid "03D372FC-4C08-1C27-3688-318EF202ACDB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 6.3581501308362931e-07 8.75 6.3581501308362931e-07
		 17.5 6.3581501308362931e-07 26.25 6.3581501308362931e-07 35 6.3581501308362931e-07
		 43.75 6.3581501308362931e-07 52.5 6.3581501308362931e-07 61.25 6.3581501308362931e-07
		 70 6.3581501308362931e-07 117 6.3581501308362931e-07 1000 6.3581501308362931e-07;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTL -n "b_Tail05_translateZ";
	rename -uid "C8C4C776-46F3-FA41-1212-A787C74B48DA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -5.6855900419674592 8.75 -5.6855900419674592
		 17.5 -5.6855900419674592 26.25 -5.6855900419674592 35 -5.6855900419674592 43.75 -5.6855900419674592
		 52.5 -5.6855900419674592 61.25 -5.6855900419674592 70 -5.6855900419674592 117 -5.6855900419674592
		 1000 -5.6855900419674592;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTL -n "b_Tail04_translateZ";
	rename -uid "B0474150-4F73-9694-E1A7-6BBA737A0AD3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -6.4731602471500633e-06 8.75 -6.4731602471500633e-06
		 17.5 -6.4731602471500633e-06 26.25 -6.4731602471500633e-06 35 -6.4731602471500633e-06
		 43.75 -6.4731602471500633e-06 52.5 -6.4731602471500633e-06 61.25 -6.4731602471500633e-06
		 70 -6.4731602471500633e-06 117 -6.4731602471500633e-06 1000 -6.4731602471500633e-06;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTL -n "b_Tail02_translateZ1";
	rename -uid "0F63EA99-4B1B-D372-0706-EC943FCC52A1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 15.609529820838954 8.75 15.609529820838954
		 17.5 15.609529820838954 26.25 15.609529820838954 35 15.609529820838954 43.75 15.609529820838954
		 52.5 15.609529820838954 61.25 15.609529820838954 70 15.609529820838954 117 15.609529820838954
		 1000 15.609529820838954;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTL -n "b_Tail03_translateZ1";
	rename -uid "6C318C3D-4B3F-70E4-AD24-4E9902673B93";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 17.160149510223718 8.75 17.160149510223718
		 17.5 17.160149510223718 26.25 17.160149510223718 35 17.160149510223718 43.75 17.160149510223718
		 52.5 17.160149510223718 61.25 17.160149510223718 70 17.160149510223718 117 17.160149510223718
		 1000 17.160149510223718;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTL -n "b_Tail06_translateZ";
	rename -uid "E76E99D8-46F5-AA38-F622-10988FAF5F73";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -6.4731602471500633e-06 8.75 -6.4731602471500633e-06
		 17.5 -6.4731602471500633e-06 26.25 -6.4731602471500633e-06 35 -6.4731602471500633e-06
		 43.75 -6.4731602471500633e-06 52.5 -6.4731602471500633e-06 61.25 -6.4731602471500633e-06
		 70 -6.4731602471500633e-06 117 -6.4731602471500633e-06 1000 -6.4731602471500633e-06;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTL -n "b_Tail02_translateZ2";
	rename -uid "08E0D503-4535-F71D-16CE-28BFE3A91E00";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -19.582793408913723 8.75 -19.582793408913723
		 17.5 -19.582793408913723 26.25 -19.582793408913723 35 -19.582793408913723 43.75 -19.582793408913723
		 52.5 -19.582793408913723 61.25 -19.582793408913723 70 -19.582793408913723 117 -19.582793408913723
		 1000 -19.582793408913723;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTL -n "b_Tail03_translateZ2";
	rename -uid "3C038A9E-4224-72F4-1CD4-07856D471385";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -19.901780274750767 8.75 -19.901780274750767
		 17.5 -19.901780274750767 26.25 -19.901780274750767 35 -19.901780274750767 43.75 -19.901780274750767
		 52.5 -19.901780274750767 61.25 -19.901780274750767 70 -19.901780274750767 117 -19.901780274750767
		 1000 -19.901780274750767;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTL -n "b_Tail05_translateZ1";
	rename -uid "D6AE00EC-4C62-A867-8040-0DB6511DFFDB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -19.901780274750767 8.75 -19.901780274750767
		 17.5 -19.901780274750767 26.25 -19.901780274750767 35 -19.901780274750767 43.75 -19.901780274750767
		 52.5 -19.901780274750767 61.25 -19.901780274750767 70 -19.901780274750767 117 -19.901780274750767
		 1000 -19.901780274750767;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTL -n "b_LeftLeg01_translateZ";
	rename -uid "A61B2651-47E2-989F-B463-0E910FD341D3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -6.9680061340332031 8.75 -6.9680061340332031
		 17.5 -6.9680061340332031 26.25 -6.9680061340332031 35 -6.9680061340332031 43.75 -6.9680061340332031
		 52.5 -6.9680061340332031 61.25 -6.9680061340332031 70 -6.9680061340332031 117 -6.9680061340332031
		 1000 -6.9680061340332031;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTL -n "b_LeftLeg02_translateZ";
	rename -uid "F3D8DF19-4F98-BC06-EFEA-F797DFCEFC81";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 9.5367431640625e-07 8.75 9.5367431640625e-07
		 17.5 9.5367431640625e-07 26.25 9.5367431640625e-07 35 9.5367431640625e-07 43.75 9.5367431640625e-07
		 52.5 9.5367431640625e-07 61.25 9.5367431640625e-07 70 9.5367431640625e-07 117 9.5367431640625e-07
		 1000 9.5367431640625e-07;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTL -n "b_LeftFoot01_translateZ";
	rename -uid "2DBD3777-414F-EC41-F44A-8DB7984829EF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -4.76837158203125e-07 8.75 -4.76837158203125e-07
		 17.5 -4.76837158203125e-07 26.25 -4.76837158203125e-07 35 -4.76837158203125e-07 43.75 -4.76837158203125e-07
		 52.5 -4.76837158203125e-07 61.25 -4.76837158203125e-07 70 -4.76837158203125e-07 117 -4.76837158203125e-07
		 1000 -4.76837158203125e-07;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTL -n "b_LeftFoot02_translateZ";
	rename -uid "CAE9ABA6-458C-5905-2931-CFA22488BDFE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 8.75 0 17.5 0 26.25 0 35 0 43.75 0 52.5 0
		 61.25 0 70 0 117 0 1000 0;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTL -n "pairBlend3_inTranslateZ1";
	rename -uid "88E429BD-4083-39C5-2FF2-FBA380CAC891";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 8.75 0 17.5 0 26.25 0 35 0 43.75 0 52.5 0
		 61.25 0 70 0 117 0 1000 0;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTL -n "b_RightLeg01_translateZ";
	rename -uid "5E1817CC-41CC-7753-9B68-00AF162BEEA1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 6.9675636291503906 8.75 6.9675636291503906
		 17.5 6.9675636291503906 26.25 6.9675636291503906 35 6.9675636291503906 43.75 6.9675636291503906
		 52.5 6.9675636291503906 61.25 6.9675636291503906 70 6.9675636291503906 117 6.9675636291503906
		 1000 6.9675636291503906;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTL -n "b_RightLeg02_translateZ";
	rename -uid "BB6CDFB2-4441-1A48-EDE4-06948E0B0DB9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 9.5367431640625e-07 8.75 9.5367431640625e-07
		 17.5 9.5367431640625e-07 26.25 9.5367431640625e-07 35 9.5367431640625e-07 43.75 9.5367431640625e-07
		 52.5 9.5367431640625e-07 61.25 9.5367431640625e-07 70 9.5367431640625e-07 117 9.5367431640625e-07
		 1000 9.5367431640625e-07;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTL -n "b_RightFoot01_translateZ";
	rename -uid "ECC4F5C1-4A59-DCAF-6F6F-C58DA1ED9F6A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -4.76837158203125e-07 8.75 -4.76837158203125e-07
		 17.5 -4.76837158203125e-07 26.25 -4.76837158203125e-07 35 -4.76837158203125e-07 43.75 -4.76837158203125e-07
		 52.5 -4.76837158203125e-07 61.25 -4.76837158203125e-07 70 -4.76837158203125e-07 117 -4.76837158203125e-07
		 1000 -4.76837158203125e-07;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTA -n "b_RightFoot02_rotateX";
	rename -uid "D149E763-4CB8-BA66-CCC7-F4A6237C342D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 8.337631696164749e-10 8.75 0 17.5 1.5462047010521996e-11
		 26.25 3.3333766148181076e-11 35 5.4222563249728393e-11 43.75 7.8956855952110442e-11
		 52.5 1.0869523368229313e-10 61.25 1.4510587513697277e-10 70 1.9067298395706443e-10
		 117 8.337631696164749e-10 1000 8.337631696164749e-10;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTA -n "b_Root_rotateX";
	rename -uid "E45A1040-4BE8-13D3-5247-D09E40C60E36";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -0.00021355709759518504 8.75 -0.00021355709759518504
		 17.5 -0.00021355709759518504 26.25 -0.00021355709759518504 35 -0.00021355709759518504
		 43.75 -0.00021355709759518504 52.5 -0.00021355709759518504 61.25 -0.00021355709759518504
		 70 -0.00021355709759518504 117 -0.00021355709759518504 1000 -0.00021355709759518504;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTA -n "b_Hip_rotateX";
	rename -uid "B91D68CB-463E-3C44-B06C-08A8D809163C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 90.00006103515625 8.75 90.00006103515625
		 17.5 90.00006103515625 26.25 90.00006103515625 35 90.00006103515625 43.75 90.000149851718774
		 52.5 90.000146352462821 61.25 90.000082136178833 70 90.000073678515022 117 90.00006103515625
		 1000 90.00006103515625;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTA -n "b_Spine01_rotateX";
	rename -uid "A0B0761A-48AB-654B-1C35-83B744E2C898";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -5.0089538490283303e-06 8.75 -3.6699006701156238e-07
		 17.5 -4.5307477887488375e-07 26.25 -1.0148303869293249e-06 35 0 117 -5.0089538490283303e-06
		 1000 -5.0089538490283303e-06;
	setAttr -s 7 ".kit[5:6]"  1 18;
	setAttr -s 7 ".kot[5:6]"  1 18;
	setAttr -s 7 ".kix[5:6]"  1 1;
	setAttr -s 7 ".kiy[5:6]"  0 0;
	setAttr -s 7 ".kox[5:6]"  1 1;
	setAttr -s 7 ".koy[5:6]"  0 0;
createNode animCurveTA -n "b_Spine02_rotateX";
	rename -uid "9CA39294-46CB-C987-5511-9EA9CEC0B758";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 5.2802714452904448e-06 8.75 5.231928853935205e-06
		 17.5 5.2328253620173366e-06 26.25 5.236098877272763e-06 35 5.1879341581139687e-06
		 43.75 5.1848656835589878e-06 52.5 -1.236762456208863 61.25 -1.2030734230028655 70 1.0794487209389982
		 117 5.2802714452904448e-06 1000 5.3774215302837547e-06;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTA -n "b_Neck_rotateX";
	rename -uid "369788B0-4622-EDFB-3FB3-EA9C1EC76465";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 8.75 0 17.5 0 26.25 0 35 0 43.75 0 52.5 0
		 61.25 0 70 0 117 0 1000 3.6823530878173083e-13;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTA -n "b_Head_rotateX";
	rename -uid "E002A8E4-4815-C144-8130-42955F057B07";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 2.0718048290291335e-06 8.75 2.0718048290291335e-06
		 17.5 2.0718048290291335e-06 26.25 2.0718048290291335e-06 35 2.0718048290291335e-06
		 43.75 2.0718048290291335e-06 52.5 2.0718048290291335e-06 61.25 2.0718048290291335e-06
		 70 2.0718048290291335e-06 117 2.0718048290291335e-06 1000 2.0718048290291335e-06;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTA -n "b_RightUpperArm_rotateX";
	rename -uid "E5AF1E31-48C4-4564-2CF6-71BEBB7B1CA0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -0.39573461519354508 8.75 -0.13087064903139783
		 17.5 0.73401793196141263 26.25 -3.8879716531687194 35 23.569848289401357 43.75 18.742673452322215
		 52.5 4.8830491456513823 61.25 3.1870371633148258 70 8.6708931427286977 117 -0.1554393302045935
		 1000 -0.13989543033981144;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTA -n "b_RightForeArm_rotateX";
	rename -uid "8471ADB1-4A5E-E0AC-30F3-219C7A42C8A9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -0.19606585300028501 8.75 -0.15297180499732302
		 17.5 -0.066297184239313273 26.25 -0.37591566966704859 35 -0.46653817736436048 43.75 -0.3337407646175552
		 52.5 -0.39692072957426289 61.25 -0.25404887757772476 70 -0.16649799286249994 117 -0.098058603740034458
		 1000 -0.0072658046254533469;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTA -n "b_RightWrist_rotateX";
	rename -uid "FF57C7DF-4C82-8EBC-B5BC-F18DE0501C81";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.0028297061433223522 8.75 -0.0011601986132718232
		 17.5 -0.009185053498443195 26.25 0.019481278048147543 35 0.027871651922775083 43.75 0.0155764730445815
		 52.5 0.021426052148519351 61.25 0.0081981214183817434 70 9.2136774161414282e-05 117 -0.0062443912813917772
		 1000 -0.014650544707912667;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTA -n "b_RightHand_rotateX";
	rename -uid "E2A1684B-4416-8D68-547F-B7AA62B3671E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 8.75 0 17.5 0 26.25 0 35 0 43.75 0 52.5 0
		 61.25 0 70 0 117 0 1000 0;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTA -n "effector5_rotateX";
	rename -uid "08BCC06C-4521-B519-3BDF-4BA9ACB0E216";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 8.75 0 17.5 0 26.25 0 35 0 43.75 0 52.5 0
		 61.25 0 70 0 117 0 1000 0;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTA -n "b_LeftUpperArm_rotateX";
	rename -uid "EFDDD843-4BAF-E1B3-514C-FAA544A849BF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -1.4026836148849662 8.75 -3.9269975227118725
		 17.5 -1.8068702606201559 26.25 -4.0760136817996075 35 16.533135057104481 43.75 15.200501671112672
		 52.5 5.7380301185944997 61.25 5.1187034827166977 70 -0.99025795828683671 117 -2.5599349706253931
		 1000 0.65023931459996354;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTA -n "b_LeftForeArm_rotateX";
	rename -uid "BADBD32B-49C4-7BCF-155B-42BD3777D8A6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1.2201937969865313 8.75 0.53000923491958007
		 17.5 -2.0347954393878207 26.25 0.49365130330565143 35 -2.5427312233505517 43.75 2.8829939807318197
		 52.5 4.0800229039631573 61.25 1.0570108972201118 70 4.604187390798729 117 0.488913463105488
		 1000 -0.22784558446556569;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTA -n "b_LeftWrist_rotateX";
	rename -uid "64B97D6F-484B-D2CF-6E53-00BF06D7C5F2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.018008674146229222 8.75 0.007533828419184708
		 17.5 -0.033997002891907033 26.25 0.0069820285883252725 35 -0.042438189371150709 43.75 0.043244786857112472
		 52.5 0.061411946760121364 61.25 0.015532067461162279 70 0.069367126341007834 117 0.0069101229736481268
		 1000 -0.0039680404327971245;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTA -n "b_LeftHand_rotateX";
	rename -uid "0E25FC8D-403D-B24C-8695-05B55A144808";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 8.75 0 17.5 0 26.25 0 35 0 43.75 0 52.5 0
		 61.25 0 70 0 117 0 1000 0;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTA -n "effector6_rotateX";
	rename -uid "76AE503C-4CC9-F205-F39B-9E9CB97C80EE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 8.75 0 17.5 0 26.25 0 35 0 43.75 0 52.5 0
		 61.25 0 70 0 117 0 1000 0;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTA -n "b_Tail01_rotateX";
	rename -uid "6A653F26-4BA0-A37A-0CCE-489ABC1223BA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 360.00003051757813 8.75 360.00003051757813
		 11 360.00003051757813 17.5 360.00003051757813 26.25 360.00003051757813 35 360.00003051757813
		 43.75 360.00003051757813 52.5 360.00003051757813 61.25 360.00003051757813 70 360.00003051757813
		 1000 360.00003051757813;
createNode animCurveTA -n "b_Tail02_rotateX";
	rename -uid "681A5B3E-4270-6DBC-CFE0-9C990408F5B1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 8.75 0 17.5 0 26.25 0 35 0 43.75 0 52.5 0
		 61.25 0 70 0 117 0 1000 0;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTA -n "b_Tail03_rotateX";
	rename -uid "AE09AB45-4186-4570-95D0-23A97B11959E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 8.75 0 17.5 0 26.25 0 35 0 43.75 0 52.5 0
		 61.25 0 70 0 117 0 1000 0;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTA -n "b_Tail05_rotateX";
	rename -uid "8F341624-4112-75E6-47CD-778696DF3C68";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 8.75 0 17.5 0 26.25 0 35 0 43.75 0 52.5 0
		 61.25 0 70 0 117 0 1000 0;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTA -n "b_Tail04_rotateX";
	rename -uid "BA4DE00B-48AB-8EB0-5782-B2B5EC5728E5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 360.00003051757813 8.75 360.00003051757813
		 11 360.00003051757813 17.5 360.00003051757813 26.25 360.00003051757813 35 360.00003051757813
		 43.75 360.00003051757813 52.5 360.00003051757813 61.25 360.00003051757813 70 360.00003051757813
		 1000 360.00003051757813;
createNode animCurveTA -n "b_Tail02_rotateX1";
	rename -uid "14B15FDB-499F-9C98-6684-67A257F521C3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 8.75 0 17.5 0 26.25 0 35 0 43.75 0 52.5 0
		 61.25 0 70 0 117 0 1000 0;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTA -n "b_Tail03_rotateX1";
	rename -uid "43E9C99E-40BC-00E9-4CBA-07A4CB680BFB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 8.75 0 17.5 0 26.25 0 35 0 43.75 0 52.5 0
		 61.25 0 70 0 117 0 1000 0;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTA -n "b_Tail06_rotateX";
	rename -uid "DC746DCB-4FFB-D607-4E80-02AE9587A2CB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 360.00003051757813 8.75 360.00003051757813
		 11 360.00003051757813 17.5 360.00003051757813 26.25 360.00003051757813 35 360.00003051757813
		 43.75 360.00003051757813 52.5 360.00003051757813 61.25 360.00003051757813 70 360.00003051757813
		 1000 360.00003051757813;
createNode animCurveTA -n "b_Tail02_rotateX2";
	rename -uid "31D907DC-46D5-536D-D7F6-E587B03337B2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 8.75 0 17.5 0 26.25 0 35 0 43.75 0 52.5 0
		 61.25 0 70 0 117 0 1000 0;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTA -n "b_Tail03_rotateX2";
	rename -uid "FA7230E1-4157-DF55-EC80-F19B6CEFAFB5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 8.75 0 17.5 0 26.25 0 35 0 43.75 0 52.5 0
		 61.25 0 70 0 117 0 1000 0;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTA -n "b_Tail05_rotateX1";
	rename -uid "EC99D9C0-4F9E-34FE-6E03-3383E1F3BEB7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 8.75 0 17.5 0 26.25 0 35 0 43.75 0 52.5 0
		 61.25 0 70 0 117 0 1000 0;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTA -n "b_LeftLeg01_rotateX";
	rename -uid "4EDAD77E-4AB4-329F-D6EA-73A2320ACA3A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -5.9869289509635735 8.75 -1.5956814875856904
		 17.5 13.085651125851216 26.25 8.4095702151809526 35 6.139879709271499 43.75 3.0384156137418969
		 52.5 -0.365769802825962 61.25 -4.5324967055579988 70 -12.614483210885465 117 -9.9178898058388754
		 1000 2.2948376447597401;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTA -n "b_LeftLeg02_rotateX";
	rename -uid "4BCA1BD2-4AFB-005D-42D5-0AB576DAA5DE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.0065848146073700818 8.75 0.0069701936995080196
		 17.5 0.0054444435312050602 26.25 -2.7239951754449511e-05 35 0.0020738462469462779
		 43.75 0.0034629042567103836 52.5 0.0032951330582622618 61.25 -0.00043174377836508642
		 70 -0.0027029790060363072 117 0.00086632892274224988 1000 -0.00070000987094206123;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTA -n "b_LeftFoot01_rotateX";
	rename -uid "74E5EBBB-4186-0FFD-7366-A581370ACB18";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.027971345234398998 8.75 0.027971343667443947
		 17.5 0.027971349871158631 26.25 0.027971372159698769 35 0.027971363576039202 43.75 0.027971357928116138
		 52.5 0.027971358610275422 61.25 0.027971374407686815 70 0.027971387029840956 117 0.027971368485816109
		 1000 0.027971375898547795;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTA -n "b_LeftFoot02_rotateX";
	rename -uid "7EA13CD8-429D-B73A-9A9E-D9AD3D16CADA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -8.337631696164749e-10 8.75 0 17.5 -1.5462047010521996e-11
		 26.25 -3.3333766148181076e-11 35 -5.4222563249728393e-11 43.75 -7.8956855952110442e-11
		 52.5 -1.0869523368229313e-10 61.25 -1.4510587513697277e-10 70 -1.9067298395706443e-10
		 117 -8.337631696164749e-10 1000 -8.337631696164749e-10;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTA -n "effector4_rotateX";
	rename -uid "7BEC94F4-4EB3-DCE0-F254-2AAC7F41792B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 8.75 0 17.5 0 26.25 0 35 0 43.75 0 52.5 0
		 61.25 0 70 0 117 0 1000 0;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTA -n "b_RightLeg01_rotateX";
	rename -uid "66192831-4D13-0BE6-BD52-ED953E2D49C9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 17.565251709755294 8.75 13.880302544014306
		 17.5 8.3668371221449895 26.25 2.9803157983556661 35 0.3475590725530866 43.75 3.6810248147841014
		 52.5 3.2799559931415594 61.25 3.5715763016662341 70 7.4203994632958583 117 13.958579819653327
		 1000 6.3804500131497575;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTA -n "b_RightLeg02_rotateX";
	rename -uid "938D90B6-4E66-626E-F0BE-75AD026476CD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 3.7123226102040716e-08 8.75 -3.6403061983607331e-06
		 17.5 -6.2455486339873104e-06 26.25 -6.6150913124089427e-06 35 -6.6296048161182667e-06
		 43.75 -1.4966518547080468e-06 52.5 -2.7828273028686653e-06 61.25 -4.8553196028845282e-06
		 70 -4.1113892392153132e-07 117 -4.4731530089014569e-06 1000 2.8729396599133391e-07;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTA -n "b_RightFoot01_rotateX";
	rename -uid "0E7C3C54-440E-5E9D-803C-74A764F61023";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -0.019780226255667104 8.75 -0.01978020688864306
		 17.5 -0.019780193174241241 26.25 -0.019780191228911045 35 -0.019780191152509702 43.75 -0.019780218173173294
		 52.5 -0.019780211402545479 61.25 -0.019780200492623322 70 -0.019780223887482379 117 -0.019780202504407776
		 1000 -0.01978022762964371;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTA -n "b_RightFoot02_rotateY";
	rename -uid "F8994ADA-4F56-0F9B-0532-2BBE3DD4EAB8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 3.586171715141973e-06 8.75 3.586171715141973e-06
		 17.5 3.586171715141973e-06 26.25 3.586171715141973e-06 35 3.586171715141973e-06 43.75 3.586171715141973e-06
		 52.5 3.586171715141973e-06 61.25 3.586171715141973e-06 70 3.586171715141973e-06 117 3.586171715141973e-06
		 1000 3.586171715141973e-06;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTA -n "b_Root_rotateY";
	rename -uid "C12559D7-44A7-8CD0-C260-C1B89700FABB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 5.0089561227650847e-06 8.75 5.0089561227650847e-06
		 17.5 5.0089561227650847e-06 26.25 5.0089561227650847e-06 35 5.0089561227650847e-06
		 43.75 5.0089561227650847e-06 52.5 5.0089561227650847e-06 61.25 5.0089561227650847e-06
		 70 5.0089561227650847e-06 117 5.0089561227650847e-06 1000 5.0089561227650847e-06;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTA -n "b_Hip_rotateY";
	rename -uid "57E57893-40BE-2494-D48E-19BD55D42251";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -69.192703247070313 8.75 -69.192703247070313
		 17.5 -69.192703247070313 26.25 -69.192703247070313 35 -69.192703247070313 43.75 -81.680969367553999
		 52.5 -81.18894807896271 61.25 -72.646849827601827 70 -71.26236665841482 117 -69.192703247070313
		 1000 -69.192703247070313;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTA -n "b_Spine01_rotateY";
	rename -uid "CE771E29-4248-7BF9-49C5-C69B0DCB2E0C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -1.8669345081434585e-05 8.75 -1.9229887971071085e-05
		 17.5 -1.9219492764342344e-05 26.25 -1.9121946428457044e-05 35 0 117 -1.8669345081434585e-05
		 1000 -1.8669345081434585e-05;
	setAttr -s 7 ".kit[5:6]"  1 18;
	setAttr -s 7 ".kot[5:6]"  1 18;
	setAttr -s 7 ".kix[5:6]"  1 1;
	setAttr -s 7 ".kiy[5:6]"  0 0;
	setAttr -s 7 ".kox[5:6]"  1 1;
	setAttr -s 7 ".koy[5:6]"  0 0;
createNode animCurveTA -n "b_Spine02_rotateY";
	rename -uid "2611B820-4EC0-E95B-99EC-F4A955884E2C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -1.2065204442978609e-07 8.75 -2.8972112429309384e-08
		 17.5 -3.0672306765267993e-08 26.25 -3.6880407067850665e-08 35 2.8900628892201468e-08
		 43.75 5.1929895717404923e-08 52.5 -6.2381988069629557 61.25 -5.9192506672386171 70 -4.9201105709119721
		 117 -1.2065204442978609e-07 1000 -1.5012217814344697e-12;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTA -n "b_Neck_rotateY";
	rename -uid "7161C609-4053-C494-FF10-B9A626E55659";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 8.75 0 17.5 0 26.25 0 35 0 43.75 0 52.5 0
		 61.25 0 70 0 117 0 1000 0;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTA -n "b_Head_rotateY";
	rename -uid "71C2FAB3-48CE-E409-EA26-01B4703D7BA2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 8.75 0 17.5 0 26.25 0 35 0 43.75 0 52.5 0
		 61.25 0 70 0 117 0 1000 0;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTA -n "b_RightUpperArm_rotateY";
	rename -uid "AF750108-44EF-25B5-F0C4-C59D41204DE0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 2.0206998167365038 8.75 1.3975365970720193
		 17.5 0.32496565390708165 26.25 3.3492480755049585 35 -8.0454817527570537 43.75 -21.042791463045621
		 52.5 -22.114450085981623 61.25 -16.420500649049405 70 -13.919275094328643 117 0.53038326210138631
		 1000 -0.72534756325188365;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTA -n "b_RightForeArm_rotateY";
	rename -uid "A67F7FCD-4C26-7639-695B-B2BA7B40767B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -3.2433886010521027 8.75 -2.1680363925911705
		 17.5 -0.0051914251554562993 26.25 -7.7312913743215024 35 -9.9926503857068827 43.75 -6.6788751036688705
		 52.5 -8.2554435161329316 61.25 -4.6902745730617097 70 -2.5055636537079669 117 -0.79775360454521937
		 1000 1.4678562847313936;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTA -n "b_RightWrist_rotateY";
	rename -uid "37875A92-4CB8-093B-F7F4-4E9579700D29";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.17627043323572586 8.75 -0.068403646345264787
		 17.5 -0.5605141358388448 26.25 1.1973995773979473 35 1.71192489325217 43.75 0.95794409450408724
		 52.5 1.3166595201860554 61.25 0.5054793107315676 70 0.008393677636094856 117 -0.380183058981304
		 1000 -0.89567602579572381;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTA -n "b_RightHand_rotateY";
	rename -uid "B91603D4-4D41-3B70-1AF4-F78D2190E8CA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 8.75 0 17.5 0 26.25 0 35 0 43.75 0 52.5 0
		 61.25 0 70 0 117 0 1000 0;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTA -n "effector5_rotateY";
	rename -uid "5C3FC4A0-4086-8245-394E-C7A4739ED9C7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 8.75 0 17.5 0 26.25 0 35 0 43.75 0 52.5 0
		 61.25 0 70 0 117 0 1000 0;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTA -n "b_LeftUpperArm_rotateY";
	rename -uid "AC719BE4-464C-70B5-3591-8EA837BFEE0B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1.3021091629842902 8.75 -0.82926607523933293
		 17.5 -2.5425253627268272 26.25 -0.91979141380692653 35 -19.395825969074615 43.75 -12.680011442593456
		 52.5 -16.827351148397774 61.25 -14.733386442227031 70 -13.730798573137346 117 -0.19577254265095675
		 1000 -0.084240825666014707;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTA -n "b_LeftForeArm_rotateY";
	rename -uid "AD19018C-4440-35F5-9C98-7BAF03CF6C21";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -1.8417622140233341 8.75 -0.89402912841431137
		 17.5 1.219214200383048 26.25 -0.84410391042386923 35 1.5207152279724492 43.75 -4.1250511131153758
		 52.5 -5.7687620526643721 61.25 -1.6176861601471035 70 -6.4885231916090564 117 -0.83759810290685366
		 1000 0.14662597443030936;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTA -n "b_LeftWrist_rotateY";
	rename -uid "9AF9E153-49B4-E93C-1EF6-898769A0B42E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -1.9386165766709695 8.75 -0.81308842306887574
		 17.5 3.6231280631896783 26.25 -0.75379721621303952 35 4.5227467097702672 43.75 -4.6502512950935895
		 52.5 -6.6023229985493046 61.25 -1.6725037744322591 70 -7.4571115862352206 117 -0.74607091686409188
		 1000 0.42279395164913142;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTA -n "b_LeftHand_rotateY";
	rename -uid "FCD58392-49EE-00DC-FBD5-4F9229890E9D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 8.75 0 17.5 0 26.25 0 35 0 43.75 0 52.5 0
		 61.25 0 70 0 117 0 1000 0;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTA -n "effector6_rotateY";
	rename -uid "5841DC12-4EF6-EDC8-334F-A89F0A905B5C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 8.75 0 17.5 0 26.25 0 35 0 43.75 0 52.5 0
		 61.25 0 70 0 117 0 1000 0;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTA -n "b_Tail01_rotateY";
	rename -uid "36E91F92-4029-FFB5-1569-F7AEF8F9446B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1.9963299564551562e-05 8.75 1.9963299564551562e-05
		 17.5 1.9963299564551562e-05 26.25 1.9963299564551562e-05 35 1.9963299564551562e-05
		 43.75 1.9963299564551562e-05 52.5 1.9963299564551562e-05 61.25 1.9963299564551562e-05
		 70 1.9963299564551562e-05 117 1.9963299564551562e-05 1000 1.9963299564551562e-05;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTA -n "b_Tail02_rotateY";
	rename -uid "011C6FE9-45C4-2A71-9807-4F82825CB30C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 8.75 0 17.5 0 26.25 0 35 0 43.75 0 52.5 0
		 61.25 0 70 0 117 0 1000 0;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTA -n "b_Tail03_rotateY";
	rename -uid "B491FC11-4181-B068-72E6-C18A192A6DA1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 8.75 0 17.5 0 26.25 0 35 0 43.75 0 52.5 0
		 61.25 0 70 0 117 0 1000 0;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTA -n "b_Tail05_rotateY";
	rename -uid "A17BA1FF-4925-5D89-EC2A-A2BAB278A798";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 8.75 0 17.5 0 26.25 0 35 0 43.75 0 52.5 0
		 61.25 0 70 0 117 0 1000 0;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTA -n "b_Tail04_rotateY";
	rename -uid "2CD37D49-4E92-071B-CFA7-AAB982D938A3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1.9963299564551562e-05 8.75 1.9963299564551562e-05
		 17.5 1.9963299564551562e-05 26.25 1.9963299564551562e-05 35 1.9963299564551562e-05
		 43.75 1.9963299564551562e-05 52.5 1.9963299564551562e-05 61.25 1.9963299564551562e-05
		 70 1.9963299564551562e-05 117 1.9963299564551562e-05 1000 1.9963299564551562e-05;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTA -n "b_Tail02_rotateY1";
	rename -uid "63A42314-4DE6-0C0D-DB9C-3EB3E5676A28";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 8.75 0 17.5 0 26.25 0 35 0 43.75 0 52.5 0
		 61.25 0 70 0 117 0 1000 0;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTA -n "b_Tail03_rotateY1";
	rename -uid "E15964F2-4EB9-ADE6-286C-F3AAB448185C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 8.75 0 17.5 0 26.25 0 35 0 43.75 0 52.5 0
		 61.25 0 70 0 117 0 1000 0;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTA -n "b_Tail06_rotateY";
	rename -uid "5FBF2EF3-4E76-5B50-757B-BA9F2D8548A9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1.9963299564551562e-05 8.75 1.9963299564551562e-05
		 17.5 1.9963299564551562e-05 26.25 1.9963299564551562e-05 35 1.9963299564551562e-05
		 43.75 1.9963299564551562e-05 52.5 1.9963299564551562e-05 61.25 1.9963299564551562e-05
		 70 1.9963299564551562e-05 117 1.9963299564551562e-05 1000 1.9963299564551562e-05;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTA -n "b_Tail02_rotateY2";
	rename -uid "9758FC02-4344-D3EF-8074-0EB79057C435";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 8.75 0 17.5 0 26.25 0 35 0 43.75 0 52.5 0
		 61.25 0 70 0 117 0 1000 0;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTA -n "b_Tail03_rotateY2";
	rename -uid "37669984-4179-8AF8-5316-ACB89E716169";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 8.75 0 17.5 0 26.25 0 35 0 43.75 0 52.5 0
		 61.25 0 70 0 117 0 1000 0;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTA -n "b_Tail05_rotateY1";
	rename -uid "2E3B39BF-4365-0455-6161-43AA1A422F7D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 8.75 0 17.5 0 26.25 0 35 0 43.75 0 52.5 0
		 61.25 0 70 0 117 0 1000 0;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTA -n "b_LeftLeg01_rotateY";
	rename -uid "785EF85D-4A04-0EFC-3AAF-D3A5657BCC4A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 20.525141509896233 8.75 20.107134384139691
		 17.5 14.345096143972253 26.25 11.569934756277011 35 13.005729852609186 43.75 14.701634433687161
		 52.5 15.33859418449078 61.25 13.764208860207514 70 13.233873463636385 117 15.615395430049515
		 1000 12.451335756918553;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTA -n "b_LeftLeg02_rotateY";
	rename -uid "A8EC9DC5-4488-7F17-42A0-DCA9C5142DEE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -0.0070077723492418826 8.75 -0.0074180313450452973
		 17.5 -0.0057937794209922426 26.25 2.0940966257083486e-06 35 -0.002205577867487154
		 43.75 -0.0036843128477297774 52.5 -0.0035057104149454218 61.25 1.1669507319624987e-06
		 70 -4.0388502432980891e-06 117 -0.00092010375913605233 1000 5.5206951254847726e-07;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTA -n "b_LeftFoot01_rotateY";
	rename -uid "B7132D17-404B-99B3-00D8-A3A283295177";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -0.0225908777841171 8.75 -0.023452518167154105
		 17.5 -0.020041207106810482 26.25 -0.0078246953603981709 35 -0.012505139908767721
		 43.75 -0.015610831161902351 52.5 -0.015235724046227082 61.25 -0.007175982296211322
		 70 -0.0035335446550714186 117 -0.0098053419410602007 1000 -0.0067457571475613562;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTA -n "b_LeftFoot02_rotateY";
	rename -uid "0EB79FBE-422D-47F6-C769-B08AD8625F0A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 3.5897151065000803e-06 8.75 3.5897151065000803e-06
		 17.5 3.5897151065000803e-06 26.25 3.5897151065000803e-06 35 3.5897151065000803e-06
		 43.75 3.5897151065000803e-06 52.5 3.5897151065000803e-06 61.25 3.5897151065000803e-06
		 70 3.5897151065000803e-06 117 3.5897151065000803e-06 1000 3.5897151065000803e-06;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTA -n "effector4_rotateY";
	rename -uid "EDF47961-43A6-2B81-EBC2-40AC2BA55691";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 8.75 0 17.5 0 26.25 0 35 0 43.75 0 52.5 0
		 61.25 0 70 0 117 0 1000 0;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTA -n "b_RightLeg01_rotateY";
	rename -uid "F3415FA1-45AD-05DF-9292-189D3DF94358";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -8.700387205975753 8.75 -9.7147166117706654
		 17.5 -9.9930851526870921 26.25 -8.9813953653472236 35 -8.3615569356253818 43.75 -6.5401308738429238
		 52.5 -6.908324201784847 61.25 -7.9546576374641562 70 -6.9609759367532895 117 -10.192528157209496
		 1000 -6.4922802102373867;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTA -n "b_RightLeg02_rotateY";
	rename -uid "B47B2DA3-4DB0-BF53-1E17-75A31ABB68C1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 2.1181185913446411e-06 8.75 8.8910548829424935e-06
		 17.5 1.3710058495977325e-05 26.25 1.4393613883426752e-05 35 1.4420459994121323e-05
		 43.75 4.9258661212771686e-06 52.5 7.3049476404955636e-06 61.25 1.113850560239069e-05
		 70 2.9179567367526015e-06 117 1.0431599338312925e-05 1000 1.8530298015391137e-06;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTA -n "b_RightFoot01_rotateY";
	rename -uid "8947D705-40B7-032E-62D7-45B9A4FD5E7E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1.8790354938251532e-08 8.75 2.3018735799738197e-06
		 17.5 3.9492457630387241e-06 26.25 4.1829185761950478e-06 35 4.1920958957268484e-06
		 43.75 9.463772593443093e-07 52.5 1.7596642021893244e-06 61.25 3.0701626486961682e-06
		 70 2.5997518709152867e-07 117 2.8285073587258301e-06 1000 1.4545581675972627e-07;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTA -n "b_RightFoot02_rotateZ";
	rename -uid "621C11CC-4133-4622-D4F2-608B5245E413";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 66.362350463867202 8.75 66.362350463867202
		 17.5 66.362350463867202 26.25 66.362350463867202 35 66.362350463867202 43.75 66.362350463867202
		 52.5 66.362350463867202 61.25 66.362350463867202 70 66.362350463867202 117 66.362350463867202
		 1000 66.362350463867202;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTA -n "b_Root_rotateZ";
	rename -uid "8854D7AA-42C2-FF19-63F2-F09858C1DA06";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 8.6514219219679944e-06 8.75 8.6514219219679944e-06
		 17.5 8.6514219219679944e-06 26.25 8.6514219219679944e-06 35 8.6514219219679944e-06
		 43.75 8.6514219219679944e-06 52.5 8.6514219219679944e-06 61.25 8.6514219219679944e-06
		 70 8.6514219219679944e-06 117 8.6514219219679944e-06 1000 8.6514219219679944e-06;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTA -n "b_Hip_rotateZ";
	rename -uid "81D3BF73-4C19-49AE-72B3-48A2CCD1431A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -90.000007629394531 8.75 -90.000007629394531
		 17.5 -90.000007629394531 26.25 -90.000007629394531 35 -90.000007629394531 43.75 -90.000098849871222
		 52.5 -90.000095255904213 61.25 -90.00002922746333 70 -90.000020570574563 117 -90.000007629394531
		 1000 -90.000007629394531;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTA -n "b_Spine01_rotateZ";
	rename -uid "6CC2C95B-4C30-2D9B-E1E6-B7A9B339538F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -72.373031616210938 8.75 -81.587096453221733
		 17.5 -81.416222626145156 26.25 -69.460533566460199 35 -45.380512929367228 43.75 -46.236967169880273
		 52.5 -31.795707703819744 61.25 -22.178717136527379 70 -25.499976939306862 117 -72.373031616210938
		 1000 -72.373031616210938;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTA -n "b_Spine02_rotateZ";
	rename -uid "984745B2-4355-B61B-465E-B5AA7ED96EB4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 20.822897889997336 8.75 38.489334957109634
		 17.5 38.16171280924506 26.25 36.965431235854197 35 21.89423664722527 43.75 14.256737289715769
		 52.5 -3.7693497449308739 61.25 -2.2589767266121137 70 -22.81756824622699 117 20.822897889997336
		 1000 1.995363712310791;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTA -n "b_Neck_rotateZ";
	rename -uid "C1752578-4EB9-425B-AFDD-8CA332D83758";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -6.8512515775895277 8.75 7.4922497704590976
		 17.5 19.784579664581525 26.25 19.311416996273767 35 -15.306248946852477 43.75 -19.213927288800299
		 52.5 -10.232780221343338 61.25 -22.600091177247347 70 -24.551102220977878 117 -1.8803502545320934
		 1000 35.321353912353516;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTA -n "b_Head_rotateZ";
	rename -uid "1BB99A24-4AB1-DB77-2DBF-839808D47D61";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -47.192043304443359 8.75 -47.192043304443359
		 17.5 -47.192043304443359 26.25 -47.192043304443359 35 -47.192043304443359 43.75 -47.192043304443359
		 52.5 -47.192043304443359 61.25 -47.192043304443359 70 -47.192043304443359 117 -47.192043304443359
		 1000 -47.192043304443359;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTA -n "b_RightUpperArm_rotateZ";
	rename -uid "17FCA259-42CC-0F94-D9E4-9598FFF5EE99";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -61.698240178551991 8.75 -48.92053678272562
		 17.5 -56.341809202147864 26.25 -88.538284379467072 35 -94.105973834839006 43.75 -62.965286356795232
		 52.5 -46.949905177211342 61.25 -49.82497648890282 70 -42.562214863544582 117 -22.872214902892615
		 1000 -2.1604121099018494;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTA -n "b_RightForeArm_rotateZ";
	rename -uid "CB6244E6-4B2B-B58F-53DC-2FB613CE4CF7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 26.982390367970325 8.75 21.206375971226105
		 17.5 9.5891369201116881 26.25 51.088158529913088 35 63.234543782297827 43.75 45.435339404393702
		 52.5 53.903524782352541 61.25 34.754015458819218 70 23.019328326896179 117 13.846207787174089
		 1000 1.6769906043678475;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTA -n "b_RightWrist_rotateZ";
	rename -uid "FFA0C894-47AD-D030-6539-C2B0237C0E84";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.087645204938161636 8.75 1.1386371536707625
		 17.5 3.2524865783026398 26.25 -4.2985918291137519 35 -6.5087236310110006 43.75 -3.2700162438604736
		 52.5 -4.8108702032319295 61.25 -1.3264640472227189 70 0.80875599369320617 117 2.4778785356030499
		 1000 4.6921675384182731;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTA -n "b_RightHand_rotateZ";
	rename -uid "45B83812-4A1D-B18F-0E2D-DEADA61F4DF6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 8.75 0 17.5 0 26.25 0 35 0 43.75 0 52.5 0
		 61.25 0 70 0 117 0 1000 0;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTA -n "effector5_rotateZ";
	rename -uid "6481ADB0-46A7-15C8-27E8-4B9AF27A8FF7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 8.75 0 17.5 0 26.25 0 35 0 43.75 0 52.5 0
		 61.25 0 70 0 117 0 1000 0;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTA -n "b_LeftUpperArm_rotateZ";
	rename -uid "4DC429B3-44CC-2A6B-6E23-C4A0BC193B8B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -20.175359339326491 8.75 -70.393520880165013
		 17.5 -59.662566044628207 26.25 -73.002226582762091 35 -75.596655609442735 43.75 -84.663959225621213
		 52.5 -74.692116859497574 61.25 -77.267421570688029 70 -49.423326354971167 117 -55.836947080074296
		 1000 -1.1169319609217014;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTA -n "b_LeftForeArm_rotateZ";
	rename -uid "AAF79CE7-4C83-B0E3-1805-4990F7B1E4C8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 14.734930924698155 8.75 8.0882561614078767
		 17.5 -25.456550205214167 26.25 7.738118879606013 35 -32.834488550003911 43.75 30.748172346087898
		 52.5 42.275903292637921 61.25 13.163432920700824 70 47.323757240615734 117 7.6924921231966552
		 1000 0.78989746274355521;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTA -n "b_LeftWrist_rotateZ";
	rename -uid "3E817FA3-45F2-62D2-8784-5EBEC0AAE028";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -0.62744759351013557 8.75 0.83501194974135307
		 17.5 20.933854930457546 26.25 0.91205221836520689 35 26.132308059926462 43.75 -4.1508210951659592
		 52.5 -6.6872533316173826 61.25 -0.28167285125256925 70 -7.7979263285770601 117 0.92209141656804583
		 1000 2.4408606950243952;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTA -n "b_LeftHand_rotateZ";
	rename -uid "E7CF9A08-4834-EEC3-9F2F-CDAA02AA6525";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 8.75 0 17.5 0 26.25 0 35 0 43.75 0 52.5 0
		 61.25 0 70 0 117 0 1000 0;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTA -n "effector6_rotateZ";
	rename -uid "9B027460-4F73-F912-02DC-D99A592B7D37";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 8.75 0 17.5 0 26.25 0 35 0 43.75 0 52.5 0
		 61.25 0 70 0 117 0 1000 0;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTA -n "b_Tail01_rotateZ";
	rename -uid "7DEBD5DF-4A0B-983C-1D07-71A319E3F722";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 158.16015625 8.75 158.16015625 17.5 158.16015625
		 26.25 158.16015625 35 158.16015625 43.75 158.16015625 52.5 158.16015625 61.25 158.16015625
		 70 158.16015625 117 158.16015625 1000 158.16015625;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTA -n "b_Tail02_rotateZ";
	rename -uid "158EFF7E-4AE7-24EE-1CB5-CE8758D88F33";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -7.9839992523193359 8.75 -7.9839992523193359
		 17.5 -7.9839992523193359 26.25 -7.9839992523193359 35 -7.9839992523193359 43.75 -7.9839992523193359
		 52.5 -7.9839992523193359 61.25 -7.9839992523193359 70 -7.9839992523193359 117 -7.9839992523193359
		 1000 -7.9839992523193359;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTA -n "b_Tail03_rotateZ";
	rename -uid "FEACE874-4BFC-627D-6406-06B7317DE94F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -6.1717591285705566 8.75 -6.1717591285705566
		 17.5 -6.1717591285705566 26.25 -6.1717591285705566 35 -6.1717591285705566 43.75 -6.1717591285705566
		 52.5 -6.1717591285705566 61.25 -6.1717591285705566 70 -6.1717591285705566 117 -6.1717591285705566
		 1000 -6.1717591285705566;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTA -n "b_Tail05_rotateZ";
	rename -uid "8B38868C-4184-8CAC-54AE-498B40A83079";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -6.1717591285705566 8.75 -6.1717591285705566
		 17.5 -6.1717591285705566 26.25 -6.1717591285705566 35 -6.1717591285705566 43.75 -6.1717591285705566
		 52.5 -6.1717591285705566 61.25 -6.1717591285705566 70 -6.1717591285705566 117 -6.1717591285705566
		 1000 -6.1717591285705566;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTA -n "b_Tail04_rotateZ";
	rename -uid "168F00E4-48DF-1CC1-25EA-9FB660B18142";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 158.16015625 8.75 158.16015625 17.5 158.16015625
		 26.25 158.16015625 35 158.16015625 43.75 158.16015625 52.5 158.16015625 61.25 158.16015625
		 70 158.16015625 117 158.16015625 1000 158.16015625;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTA -n "b_Tail02_rotateZ1";
	rename -uid "CCE424B4-4768-AACC-A5B4-1582102C0564";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -7.9839992523193359 8.75 -7.9839992523193359
		 17.5 -7.9839992523193359 26.25 -7.9839992523193359 35 -7.9839992523193359 43.75 -7.9839992523193359
		 52.5 -7.9839992523193359 61.25 -7.9839992523193359 70 -7.9839992523193359 117 -7.9839992523193359
		 1000 -7.9839992523193359;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTA -n "b_Tail03_rotateZ1";
	rename -uid "A053A035-4CCF-585E-6514-4CA17857AB58";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -6.1717591285705566 8.75 -6.1717591285705566
		 17.5 -6.1717591285705566 26.25 -6.1717591285705566 35 -6.1717591285705566 43.75 -6.1717591285705566
		 52.5 -6.1717591285705566 61.25 -6.1717591285705566 70 -6.1717591285705566 117 -6.1717591285705566
		 1000 -6.1717591285705566;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTA -n "b_Tail06_rotateZ";
	rename -uid "B780C41E-47B9-012B-568B-0FA18BDC834B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 158.16015625 8.75 158.16015625 17.5 158.16015625
		 26.25 158.16015625 35 158.16015625 43.75 158.16015625 52.5 158.16015625 61.25 158.16015625
		 70 158.16015625 117 158.16015625 1000 158.16015625;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTA -n "b_Tail02_rotateZ2";
	rename -uid "00719056-4D50-6168-37EF-C7A9D99E6EF3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -7.9839992523193359 8.75 -7.9839992523193359
		 17.5 -7.9839992523193359 26.25 -7.9839992523193359 35 -7.9839992523193359 43.75 -7.9839992523193359
		 52.5 -7.9839992523193359 61.25 -7.9839992523193359 70 -7.9839992523193359 117 -7.9839992523193359
		 1000 -7.9839992523193359;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTA -n "b_Tail03_rotateZ2";
	rename -uid "9FA5FB2E-4AA0-715F-E0B0-6BAF0091809F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -6.1717591285705566 8.75 -6.1717591285705566
		 17.5 -6.1717591285705566 26.25 -6.1717591285705566 35 -6.1717591285705566 43.75 -6.1717591285705566
		 52.5 -6.1717591285705566 61.25 -6.1717591285705566 70 -6.1717591285705566 117 -6.1717591285705566
		 1000 -6.1717591285705566;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTA -n "b_Tail05_rotateZ1";
	rename -uid "F82ED397-483D-F53B-61F4-1CACF450934D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -6.1717591285705566 8.75 -6.1717591285705566
		 17.5 -6.1717591285705566 26.25 -6.1717591285705566 35 -6.1717591285705566 43.75 -6.1717591285705566
		 52.5 -6.1717591285705566 61.25 -6.1717591285705566 70 -6.1717591285705566 117 -6.1717591285705566
		 1000 -6.1717591285705566;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTA -n "b_LeftLeg01_rotateZ";
	rename -uid "F1AA3D49-4077-359F-784E-9790199A9D37";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -178.2084231540525 8.75 -166.17746152755808
		 17.5 -118.3413200765706 26.25 -125.11923767615686 35 -135.96091978729976 43.75 -162.19091037160101
		 52.5 -174.90448756792608 61.25 176.59439933190944 70 152.0392222612839 117 165.4472448762981
		 1000 -150.9782053452777;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTA -n "b_LeftLeg02_rotateZ";
	rename -uid "1350CBE4-4F61-F5F8-EB1F-AABD294BB4D7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -83.913649833235411 8.75 -86.297015512817865
		 17.5 -76.861058396989634 26.25 -42.950072430164113 35 -56.015698462100474 43.75 -64.606286937086765
		 52.5 -63.56871088648839 61.25 -39.386324407741867 70 -19.376352885617781 117 -48.547843026448042
		 1000 -37.022854165903126;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTA -n "b_LeftFoot01_rotateZ";
	rename -uid "01B3A20E-4AD0-FF54-ABC1-92B862373AC1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 122.54653732235823 8.75 126.524385149184
		 17.5 110.77573112233132 26.25 54.275412322090673 35 75.984733489552085 43.75 90.322463527842132
		 52.5 88.5907445250065 61.25 49.771949060048257 70 24.485601356051244 117 63.520849843730922
		 1000 46.785261634875937;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTA -n "b_LeftFoot02_rotateZ";
	rename -uid "A6435539-4A0F-95AC-E85E-33B7C4B88C0C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 66.362350463867202 8.75 66.362350463867202
		 17.5 66.362350463867202 26.25 66.362350463867202 35 66.362350463867202 43.75 66.362350463867202
		 52.5 66.362350463867202 61.25 66.362350463867202 70 66.362350463867202 117 66.362350463867202
		 1000 66.362350463867202;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTA -n "effector4_rotateZ";
	rename -uid "60DF1564-4096-D714-FA24-BB9032F30A6E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 8.75 0 17.5 0 26.25 0 35 0 43.75 0 52.5 0
		 61.25 0 70 0 117 0 1000 0;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTA -n "b_RightLeg01_rotateZ";
	rename -uid "A3374619-4447-2075-9DBB-98A05FA426D3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 156.58082232819268 8.75 169.28329120477284
		 17.5 -166.30762125239562 26.25 -127.09387662689281 35 -99.838869790872536 43.75 -116.66936505202385
		 52.5 -120.01862255612649 61.25 -129.44826408714499 70 -162.68595035111204 117 169.83481117652005
		 1000 -150.2150384229756;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTA -n "b_RightLeg02_rotateZ";
	rename -uid "6B6917FE-4F76-0445-C468-ADAD518E5CC7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -42.838162673974864 8.75 -68.313980849197435
		 17.5 -86.294294601619299 26.25 -88.844726458581263 35 -88.944892702909243 43.75 -53.519358610385638
		 52.5 -62.396013535986725 61.25 -76.699504563992093 70 -46.027594001093767 117 -74.061947624360343
		 1000 -40.466519302490148;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTA -n "b_RightFoot01_rotateZ";
	rename -uid "64BAE16F-40C7-DAC5-860E-049C389A33DC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 54.060503263833162 8.75 96.259756112359099
		 17.5 126.14246951490988 26.25 130.38120668511445 35 130.54767981862469 43.75 71.671561359535616
		 52.5 86.424281404776778 61.25 110.19623160160076 70 59.220485267012634 117 105.81269529655111
		 1000 51.067549974448497;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTU -n "b_RightFoot02_scaleX";
	rename -uid "B34A0DD3-4183-F619-FAB4-78AF334B73DA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1.0000002384185791 8.75 1.0000002384185791
		 17.5 1.0000002384185791 26.25 1.0000002384185791 35 1.0000002384185791 43.75 1.0000002384185791
		 52.5 1.0000002384185791 61.25 1.0000002384185791 70 1.0000002384185791 117 1.0000002384185791
		 1000 1.0000002384185791;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTU -n "b_Root_scaleX";
	rename -uid "7B89842D-43D1-E3B0-2FBF-DCB9BE09661B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 2.5399999618530273 8.75 2.5399999618530273
		 17.5 2.5399999618530273 26.25 2.5399999618530273 35 2.5399999618530273 43.75 2.5399999618530273
		 52.5 2.5399999618530273 61.25 2.5399999618530273 70 2.5399999618530273 117 2.5399999618530273
		 1000 2.5399999618530273;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTU -n "b_Hip_scaleX";
	rename -uid "41C72294-4F2E-E2AA-5431-A0A49DFAF836";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1 8.75 1 17.5 1 26.25 1 35 1 43.75 1 52.5 1
		 61.25 1 70 1 117 1 1000 1;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTU -n "b_Spine01_scaleX";
	rename -uid "0F2261EA-4EAD-7AB6-8440-A6B861831556";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.99999994039535522 8.75 0.99999994039535522
		 17.5 0.99999994039535522 26.25 0.99999994039535522 35 0.99999994039535522 43.75 0.99999994039535522
		 52.5 0.99999994039535522 61.25 0.99999994039535522 70 0.99999994039535522 117 0.99999994039535522
		 1000 0.99999994039535522;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTU -n "b_Spine02_scaleX";
	rename -uid "58577A3C-4883-0FE2-3CA1-7994473C3FAE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1 8.75 1 17.5 1 26.25 1 35 1 43.75 1 52.5 1
		 61.25 1 70 1 117 1 1000 1;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTU -n "b_Neck_scaleX";
	rename -uid "0C02652E-4A5D-7A57-F377-D5AF591B6E31";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1 8.75 1 17.5 1 26.25 1 35 1 43.75 1 52.5 1
		 61.25 1 70 1 117 1 1000 1;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTU -n "b_Head_scaleX";
	rename -uid "C678FF6D-430E-39AA-A0E0-F8A09298D21B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1.0000001192092896 8.75 1.0000001192092896
		 17.5 1.0000001192092896 26.25 1.0000001192092896 35 1.0000001192092896 43.75 1.0000001192092896
		 52.5 1.0000001192092896 61.25 1.0000001192092896 70 1.0000001192092896 117 1.0000001192092896
		 1000 1.0000001192092896;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTU -n "b_RightUpperArm_scaleX";
	rename -uid "06FF26A5-4707-6025-6B6B-A1986316B898";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1 8.75 1 17.5 1 26.25 1 35 1 43.75 1 52.5 1
		 61.25 1 70 1 117 1 1000 1;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTU -n "b_RightForeArm_scaleX";
	rename -uid "3D1B0B04-4CC6-F50A-73AA-FA9EC8B53611";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1 8.75 1 17.5 1 26.25 1 35 1 43.75 1 52.5 1
		 61.25 1 70 1 117 1 1000 1;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTU -n "b_RightWrist_scaleX";
	rename -uid "B3EEA2E2-44B5-35B4-92BF-DEB4E5F0DAE6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1 8.75 1 17.5 1 26.25 1 35 1 43.75 1 52.5 1
		 61.25 1 70 1 117 1 1000 1;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTU -n "b_RightHand_scaleX";
	rename -uid "62D832C7-47DB-D332-C9C3-38A5091C871B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1 8.75 1 17.5 1 26.25 1 35 1 43.75 1 52.5 1
		 61.25 1 70 1 117 1 1000 1;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTU -n "effector5_scaleX";
	rename -uid "D27D3151-4D70-A7E3-73FE-E695E9DB65F3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1 8.75 1 17.5 1 26.25 1 35 1 43.75 1 52.5 1
		 61.25 1 70 1 117 1 1000 1;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTU -n "b_LeftUpperArm_scaleX";
	rename -uid "116D057D-4801-1033-2BE8-16915A7EC94B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1 8.75 1 17.5 1 26.25 1 35 1 43.75 1 52.5 1
		 61.25 1 70 1 117 1 1000 1;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTU -n "b_LeftForeArm_scaleX";
	rename -uid "F8952BBF-4303-407D-EF2E-83B3E6A6B82E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1 8.75 1 17.5 1 26.25 1 35 1 43.75 1 52.5 1
		 61.25 1 70 1 117 1 1000 1;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTU -n "b_LeftWrist_scaleX";
	rename -uid "29A77B74-4C97-C8EB-4841-7CB87AF6995A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1 8.75 1 17.5 1 26.25 1 35 1 43.75 1 52.5 1
		 61.25 1 70 1 117 1 1000 1;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTU -n "b_LeftHand_scaleX";
	rename -uid "A4491C0D-4CDF-4FB0-1220-9DBD9C148606";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1 8.75 1 17.5 1 26.25 1 35 1 43.75 1 52.5 1
		 61.25 1 70 1 117 1 1000 1;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTU -n "effector6_scaleX";
	rename -uid "86DCB7B8-4D64-D4B7-C0ED-10B9377BAEB2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1 8.75 1 17.5 1 26.25 1 35 1 43.75 1 52.5 1
		 61.25 1 70 1 117 1 1000 1;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTU -n "b_Tail01_scaleX";
	rename -uid "A6113E20-4397-9E07-D230-9985E469D70E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.99999982118606567 8.75 0.99999982118606567
		 17.5 0.99999982118606567 26.25 0.99999982118606567 35 0.99999982118606567 43.75 0.99999982118606567
		 52.5 0.99999982118606567 61.25 0.99999982118606567 70 0.99999982118606567 117 0.99999982118606567
		 1000 0.99999982118606567;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTU -n "b_Tail02_scaleX";
	rename -uid "668E569F-43C2-8059-0275-5A8E29B1FC3F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1 8.75 1 17.5 1 26.25 1 35 1 43.75 1 52.5 1
		 61.25 1 70 1 117 1 1000 1;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTU -n "b_Tail03_scaleX";
	rename -uid "C5FB50AE-4DC4-2901-2A30-4F84CF75B6DF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1 8.75 1 17.5 1 26.25 1 35 1 43.75 1 52.5 1
		 61.25 1 70 1 117 1 1000 1;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTU -n "b_Tail05_scaleX";
	rename -uid "97856E5B-4B3F-2D14-EA1F-11A32415B879";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1 8.75 1 17.5 1 26.25 1 35 1 43.75 1 52.5 1
		 61.25 1 70 1 117 1 1000 1;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTU -n "b_Tail04_scaleX";
	rename -uid "6319CCC5-49D0-E93C-5D83-A98FEDBCDCE6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.99999982118606567 8.75 0.99999982118606567
		 17.5 0.99999982118606567 26.25 0.99999982118606567 35 0.99999982118606567 43.75 0.99999982118606567
		 52.5 0.99999982118606567 61.25 0.99999982118606567 70 0.99999982118606567 117 0.99999982118606567
		 1000 0.99999982118606567;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTU -n "b_Tail02_scaleX1";
	rename -uid "76436E85-494F-4B8E-D6F6-919263EE6968";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1 8.75 1 17.5 1 26.25 1 35 1 43.75 1 52.5 1
		 61.25 1 70 1 117 1 1000 1;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTU -n "b_Tail03_scaleX1";
	rename -uid "D14EA785-4605-0A64-42A6-CCA0C9DC120D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1 8.75 1 17.5 1 26.25 1 35 1 43.75 1 52.5 1
		 61.25 1 70 1 117 1 1000 1;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTU -n "b_Tail06_scaleX";
	rename -uid "10960440-4333-E57D-335D-3795CD66BA4A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.99999982118606567 8.75 0.99999982118606567
		 17.5 0.99999982118606567 26.25 0.99999982118606567 35 0.99999982118606567 43.75 0.99999982118606567
		 52.5 0.99999982118606567 61.25 0.99999982118606567 70 0.99999982118606567 117 0.99999982118606567
		 1000 0.99999982118606567;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTU -n "b_Tail02_scaleX2";
	rename -uid "85030A14-46F7-5AEF-5F3C-D59CFEAD0C17";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1 8.75 1 17.5 1 26.25 1 35 1 43.75 1 52.5 1
		 61.25 1 70 1 117 1 1000 1;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTU -n "b_Tail03_scaleX2";
	rename -uid "0A6E83A5-48B7-B0A0-C92A-089F4BD47E9B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1 8.75 1 17.5 1 26.25 1 35 1 43.75 1 52.5 1
		 61.25 1 70 1 117 1 1000 1;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTU -n "b_Tail05_scaleX1";
	rename -uid "0F71F7B2-4606-1BEA-C214-17B00F231D4D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1 8.75 1 17.5 1 26.25 1 35 1 43.75 1 52.5 1
		 61.25 1 70 1 117 1 1000 1;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTU -n "b_LeftLeg01_scaleX";
	rename -uid "93405E47-4ADB-A6DD-028B-E1829454771E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.99999988079071045 8.75 0.99999988079071045
		 17.5 0.99999988079071045 26.25 0.99999988079071045 35 0.99999988079071045 43.75 0.99999988079071045
		 52.5 0.99999988079071045 61.25 0.99999988079071045 70 0.99999988079071045 117 0.99999988079071045
		 1000 0.99999988079071045;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTU -n "b_LeftLeg02_scaleX";
	rename -uid "1B66B201-40CF-7087-F870-56AA7F83DC75";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1 8.75 1 17.5 1 26.25 1 35 1 43.75 1 52.5 1
		 61.25 1 70 1 117 1 1000 1;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTU -n "b_LeftFoot01_scaleX";
	rename -uid "31E4C681-4239-2242-A396-15906D722EAB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.99999994039535522 8.75 0.99999994039535522
		 17.5 0.99999994039535522 26.25 0.99999994039535522 35 0.99999994039535522 43.75 0.99999994039535522
		 52.5 0.99999994039535522 61.25 0.99999994039535522 70 0.99999994039535522 117 0.99999994039535522
		 1000 0.99999994039535522;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTU -n "b_LeftFoot02_scaleX";
	rename -uid "E0F0D6BC-4468-6432-5F53-12AAF8AF9EE2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1.0000002384185791 8.75 1.0000002384185791
		 17.5 1.0000002384185791 26.25 1.0000002384185791 35 1.0000002384185791 43.75 1.0000002384185791
		 52.5 1.0000002384185791 61.25 1.0000002384185791 70 1.0000002384185791 117 1.0000002384185791
		 1000 1.0000002384185791;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTU -n "effector4_scaleX";
	rename -uid "111CA801-4898-FEE6-EBA8-0787578A2B25";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1 8.75 1 17.5 1 26.25 1 35 1 43.75 1 52.5 1
		 61.25 1 70 1 117 1 1000 1;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTU -n "b_RightLeg01_scaleX";
	rename -uid "A590066E-4B69-F728-4844-05996B4077F2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.99999988079071045 8.75 0.99999988079071045
		 17.5 0.99999988079071045 26.25 0.99999988079071045 35 0.99999988079071045 43.75 0.99999988079071045
		 52.5 0.99999988079071045 61.25 0.99999988079071045 70 0.99999988079071045 117 0.99999988079071045
		 1000 0.99999988079071045;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTU -n "b_RightLeg02_scaleX";
	rename -uid "08F25FC1-4AE8-D64D-6FC5-3F9F29E236AD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1 8.75 1 17.5 1 26.25 1 35 1 43.75 1 52.5 1
		 61.25 1 70 1 117 1 1000 1;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTU -n "b_RightFoot01_scaleX";
	rename -uid "5A06DE7A-4986-E469-80A5-A79AC391F00E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1 8.75 1 17.5 1 26.25 1 35 1 43.75 1 52.5 1
		 61.25 1 70 1 117 1 1000 1;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTU -n "b_RightFoot02_scaleY";
	rename -uid "CFB90B6D-4983-3CC4-2766-F3A88E514071";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1.0000001192092896 8.75 1.0000001192092896
		 17.5 1.0000001192092896 26.25 1.0000001192092896 35 1.0000001192092896 43.75 1.0000001192092896
		 52.5 1.0000001192092896 61.25 1.0000001192092896 70 1.0000001192092896 117 1.0000001192092896
		 1000 1.0000001192092896;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTU -n "b_Root_scaleY";
	rename -uid "1A751DFA-4C23-ADE0-83CB-A592EDB38145";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 2.5399999618530273 8.75 2.5399999618530273
		 17.5 2.5399999618530273 26.25 2.5399999618530273 35 2.5399999618530273 43.75 2.5399999618530273
		 52.5 2.5399999618530273 61.25 2.5399999618530273 70 2.5399999618530273 117 2.5399999618530273
		 1000 2.5399999618530273;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTU -n "b_Hip_scaleY";
	rename -uid "C0406DFB-44A6-4C97-D498-E49A5C656E6E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1.0000001192092896 8.75 1.0000001192092896
		 17.5 1.0000001192092896 26.25 1.0000001192092896 35 1.0000001192092896 43.75 1.0000001192092896
		 52.5 1.0000001192092896 61.25 1.0000001192092896 70 1.0000001192092896 117 1.0000001192092896
		 1000 1.0000001192092896;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTU -n "b_Spine01_scaleY";
	rename -uid "0E8B32A8-4783-B92F-2C4E-C5AFFE3C7B61";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1 8.75 1 17.5 1 26.25 1 35 1 43.75 1 52.5 1
		 61.25 1 70 1 117 1 1000 1;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTU -n "b_Spine02_scaleY";
	rename -uid "F77AC488-48CC-5FCF-F7F9-E9ADE6A6555E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1 8.75 1 17.5 1 26.25 1 35 1 43.75 1 52.5 1
		 61.25 1 70 1 117 1 1000 1;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTU -n "b_Neck_scaleY";
	rename -uid "AAA800B3-4C3D-5B4D-8E17-A183FA151F95";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1 8.75 1 17.5 1 26.25 1 35 1 43.75 1 52.5 1
		 61.25 1 70 1 117 1 1000 1;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTU -n "b_Head_scaleY";
	rename -uid "7C5AD246-4B2E-8EA1-D7C7-6D98BED563A7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1.0000001192092896 8.75 1.0000001192092896
		 17.5 1.0000001192092896 26.25 1.0000001192092896 35 1.0000001192092896 43.75 1.0000001192092896
		 52.5 1.0000001192092896 61.25 1.0000001192092896 70 1.0000001192092896 117 1.0000001192092896
		 1000 1.0000001192092896;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTU -n "b_RightUpperArm_scaleY";
	rename -uid "4FF6A5B3-461D-42E6-EBC3-09909A0CF395";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1 8.75 1 17.5 1 26.25 1 35 1 43.75 1 52.5 1
		 61.25 1 70 1 117 1 1000 1;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTU -n "b_RightForeArm_scaleY";
	rename -uid "09A2243D-454A-F57A-DC7A-26910A925657";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1 8.75 1 17.5 1 26.25 1 35 1 43.75 1 52.5 1
		 61.25 1 70 1 117 1 1000 1;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTU -n "b_RightWrist_scaleY";
	rename -uid "6128B7C5-437B-6F33-99C5-7C81AEAA5758";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1 8.75 1 17.5 1 26.25 1 35 1 43.75 1 52.5 1
		 61.25 1 70 1 117 1 1000 1;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTU -n "b_RightHand_scaleY";
	rename -uid "626A58A4-4F4E-5A6D-FBA0-6F9AC50CB47B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1 8.75 1 17.5 1 26.25 1 35 1 43.75 1 52.5 1
		 61.25 1 70 1 117 1 1000 1;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTU -n "effector5_scaleY";
	rename -uid "910FE5C5-453F-9F88-8DD3-DA88BC3F37DC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1 8.75 1 17.5 1 26.25 1 35 1 43.75 1 52.5 1
		 61.25 1 70 1 117 1 1000 1;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTU -n "b_LeftUpperArm_scaleY";
	rename -uid "19E49D12-48A9-9E84-84E6-A09580A1DABF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1 8.75 1 17.5 1 26.25 1 35 1 43.75 1 52.5 1
		 61.25 1 70 1 117 1 1000 1;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTU -n "b_LeftForeArm_scaleY";
	rename -uid "AE645C58-4E63-DCE6-7FFB-809339A4EEE2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1 8.75 1 17.5 1 26.25 1 35 1 43.75 1 52.5 1
		 61.25 1 70 1 117 1 1000 1;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTU -n "b_LeftWrist_scaleY";
	rename -uid "443CEA62-4BF7-2579-95F5-0ABA98E38F28";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1 8.75 1 17.5 1 26.25 1 35 1 43.75 1 52.5 1
		 61.25 1 70 1 117 1 1000 1;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTU -n "b_LeftHand_scaleY";
	rename -uid "D903ED68-410C-3604-651D-069CF87664C8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1 8.75 1 17.5 1 26.25 1 35 1 43.75 1 52.5 1
		 61.25 1 70 1 117 1 1000 1;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTU -n "effector6_scaleY";
	rename -uid "FCC0EB34-4F3E-44AD-D01C-03B67D038363";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1 8.75 1 17.5 1 26.25 1 35 1 43.75 1 52.5 1
		 61.25 1 70 1 117 1 1000 1;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTU -n "b_Tail01_scaleY";
	rename -uid "6D71BF4F-4ED9-3419-E5D6-E795AC878CBB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.99999982118606567 8.75 0.99999982118606567
		 17.5 0.99999982118606567 26.25 0.99999982118606567 35 0.99999982118606567 43.75 0.99999982118606567
		 52.5 0.99999982118606567 61.25 0.99999982118606567 70 0.99999982118606567 117 0.99999982118606567
		 1000 0.99999982118606567;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTU -n "b_Tail02_scaleY";
	rename -uid "353ED2FF-4247-19BF-0A27-79B44569A563";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1 8.75 1 17.5 1 26.25 1 35 1 43.75 1 52.5 1
		 61.25 1 70 1 117 1 1000 1;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTU -n "b_Tail03_scaleY";
	rename -uid "3BFDFDA8-4C77-FA78-49AB-54B4452376D5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1 8.75 1 17.5 1 26.25 1 35 1 43.75 1 52.5 1
		 61.25 1 70 1 117 1 1000 1;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTU -n "b_Tail05_scaleY";
	rename -uid "75B5F76F-4501-C65C-5962-9082A51BB2A2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1 8.75 1 17.5 1 26.25 1 35 1 43.75 1 52.5 1
		 61.25 1 70 1 117 1 1000 1;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTU -n "b_Tail04_scaleY";
	rename -uid "86865B83-436F-81BF-76DB-CBB81196E929";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.99999982118606567 8.75 0.99999982118606567
		 17.5 0.99999982118606567 26.25 0.99999982118606567 35 0.99999982118606567 43.75 0.99999982118606567
		 52.5 0.99999982118606567 61.25 0.99999982118606567 70 0.99999982118606567 117 0.99999982118606567
		 1000 0.99999982118606567;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTU -n "b_Tail02_scaleY1";
	rename -uid "8EFCA5B8-401C-FF6A-89B3-9B8137FAFD4B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1 8.75 1 17.5 1 26.25 1 35 1 43.75 1 52.5 1
		 61.25 1 70 1 117 1 1000 1;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTU -n "b_Tail03_scaleY1";
	rename -uid "1BE10B70-4C3C-EC20-9C49-8AB0674E1196";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1 8.75 1 17.5 1 26.25 1 35 1 43.75 1 52.5 1
		 61.25 1 70 1 117 1 1000 1;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTU -n "b_Tail06_scaleY";
	rename -uid "CEF18642-4F0F-1B34-3BFA-8388AE4829FC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.99999982118606567 8.75 0.99999982118606567
		 17.5 0.99999982118606567 26.25 0.99999982118606567 35 0.99999982118606567 43.75 0.99999982118606567
		 52.5 0.99999982118606567 61.25 0.99999982118606567 70 0.99999982118606567 117 0.99999982118606567
		 1000 0.99999982118606567;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTU -n "b_Tail02_scaleY2";
	rename -uid "A2AABA31-4CD6-DD32-4BEE-CEB8A8CA3E07";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1 8.75 1 17.5 1 26.25 1 35 1 43.75 1 52.5 1
		 61.25 1 70 1 117 1 1000 1;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTU -n "b_Tail03_scaleY2";
	rename -uid "B366CB81-4214-CF22-96E1-45AA35987FB6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1 8.75 1 17.5 1 26.25 1 35 1 43.75 1 52.5 1
		 61.25 1 70 1 117 1 1000 1;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTU -n "b_Tail05_scaleY1";
	rename -uid "819BAD18-439B-8EB9-E1AF-0A8F84105CA2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1 8.75 1 17.5 1 26.25 1 35 1 43.75 1 52.5 1
		 61.25 1 70 1 117 1 1000 1;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTU -n "b_LeftLeg01_scaleY";
	rename -uid "15AC328F-4424-C36A-EE66-769949AE70C1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.99999982118606567 8.75 0.99999982118606567
		 17.5 0.99999982118606567 26.25 0.99999982118606567 35 0.99999982118606567 43.75 0.99999982118606567
		 52.5 0.99999982118606567 61.25 0.99999982118606567 70 0.99999982118606567 117 0.99999982118606567
		 1000 0.99999982118606567;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTU -n "b_LeftLeg02_scaleY";
	rename -uid "2C0EFD34-41D8-7BDD-43F9-E2BD9819AD1E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1 8.75 1 17.5 1 26.25 1 35 1 43.75 1 52.5 1
		 61.25 1 70 1 117 1 1000 1;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTU -n "b_LeftFoot01_scaleY";
	rename -uid "9E14017E-4455-B59D-B931-26AA070E1404";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.99999994039535522 8.75 0.99999994039535522
		 17.5 0.99999994039535522 26.25 0.99999994039535522 35 0.99999994039535522 43.75 0.99999994039535522
		 52.5 0.99999994039535522 61.25 0.99999994039535522 70 0.99999994039535522 117 0.99999994039535522
		 1000 0.99999994039535522;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTU -n "b_LeftFoot02_scaleY";
	rename -uid "E630BD7A-46B3-22DA-AFEB-97B903C971E3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1.0000001192092896 8.75 1.0000001192092896
		 17.5 1.0000001192092896 26.25 1.0000001192092896 35 1.0000001192092896 43.75 1.0000001192092896
		 52.5 1.0000001192092896 61.25 1.0000001192092896 70 1.0000001192092896 117 1.0000001192092896
		 1000 1.0000001192092896;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTU -n "effector4_scaleY";
	rename -uid "58FE0F4F-4868-3C2C-96F6-858CA8CBA4D2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1 8.75 1 17.5 1 26.25 1 35 1 43.75 1 52.5 1
		 61.25 1 70 1 117 1 1000 1;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTU -n "b_RightLeg01_scaleY";
	rename -uid "9C1B8CFC-4151-A171-4695-04B303DCF871";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.99999988079071045 8.75 0.99999988079071045
		 17.5 0.99999988079071045 26.25 0.99999988079071045 35 0.99999988079071045 43.75 0.99999988079071045
		 52.5 0.99999988079071045 61.25 0.99999988079071045 70 0.99999988079071045 117 0.99999988079071045
		 1000 0.99999988079071045;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTU -n "b_RightLeg02_scaleY";
	rename -uid "05F054F4-4E3B-BFD0-EC6A-738B3D7FEE33";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1 8.75 1 17.5 1 26.25 1 35 1 43.75 1 52.5 1
		 61.25 1 70 1 117 1 1000 1;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTU -n "b_RightFoot01_scaleY";
	rename -uid "BCA4170D-4663-0C4A-A53E-96B8082C5915";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1.0000001192092896 8.75 1.0000001192092896
		 17.5 1.0000001192092896 26.25 1.0000001192092896 35 1.0000001192092896 43.75 1.0000001192092896
		 52.5 1.0000001192092896 61.25 1.0000001192092896 70 1.0000001192092896 117 1.0000001192092896
		 1000 1.0000001192092896;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTU -n "b_RightFoot02_scaleZ";
	rename -uid "08C4A863-4B89-A0F5-94CD-7DB7D1D26453";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1 8.75 1 17.5 1 26.25 1 35 1 43.75 1 52.5 1
		 61.25 1 70 1 117 1 1000 1;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTU -n "b_Root_scaleZ";
	rename -uid "BFF1D685-4045-61AC-6847-098548F04DC1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 2.5399999618530273 8.75 2.5399999618530273
		 17.5 2.5399999618530273 26.25 2.5399999618530273 35 2.5399999618530273 43.75 2.5399999618530273
		 52.5 2.5399999618530273 61.25 2.5399999618530273 70 2.5399999618530273 117 2.5399999618530273
		 1000 2.5399999618530273;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTU -n "b_Hip_scaleZ";
	rename -uid "2848EAE6-49F7-24CE-CD2B-77B553375FEB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1 8.75 1 17.5 1 26.25 1 35 1 43.75 1 52.5 1
		 61.25 1 70 1 117 1 1000 1;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTU -n "b_Spine01_scaleZ";
	rename -uid "E8AB66CE-4D5E-388E-1FF4-91B44228540C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1 8.75 1 17.5 1 26.25 1 35 1 43.75 1 52.5 1
		 61.25 1 70 1 117 1 1000 1;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTU -n "b_Spine02_scaleZ";
	rename -uid "D82F89F4-4C16-CE62-D3C9-EB85267606BA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1 8.75 1 17.5 1 26.25 1 35 1 43.75 1 52.5 1
		 61.25 1 70 1 117 1 1000 1;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTU -n "b_Neck_scaleZ";
	rename -uid "56BE6515-4420-4630-5869-4FB08CC2FB51";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1 8.75 1 17.5 1 26.25 1 35 1 43.75 1 52.5 1
		 61.25 1 70 1 117 1 1000 1;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTU -n "b_Head_scaleZ";
	rename -uid "CEDC77BD-4EC6-3225-339A-B1AAE091C03B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1 8.75 1 17.5 1 26.25 1 35 1 43.75 1 52.5 1
		 61.25 1 70 1 117 1 1000 1;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTU -n "b_RightUpperArm_scaleZ";
	rename -uid "06CC6D23-4B79-43D4-0952-8583308F56DD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1 8.75 1 17.5 1 26.25 1 35 1 43.75 1 52.5 1
		 61.25 1 70 1 117 1 1000 1;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTU -n "b_RightForeArm_scaleZ";
	rename -uid "7BC59150-4EA4-3215-C063-45BCBF7D6BFE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1 8.75 1 17.5 1 26.25 1 35 1 43.75 1 52.5 1
		 61.25 1 70 1 117 1 1000 1;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTU -n "b_RightWrist_scaleZ";
	rename -uid "046D75F3-481D-EED9-260D-C885E7D2BB33";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1 8.75 1 17.5 1 26.25 1 35 1 43.75 1 52.5 1
		 61.25 1 70 1 117 1 1000 1;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTU -n "b_RightHand_scaleZ";
	rename -uid "20B8694E-40DD-0A4D-5372-BB9DA1742355";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1 8.75 1 17.5 1 26.25 1 35 1 43.75 1 52.5 1
		 61.25 1 70 1 117 1 1000 1;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTU -n "effector5_scaleZ";
	rename -uid "EDB7AD89-4F02-41D1-99EA-E2B7D38944B9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1 8.75 1 17.5 1 26.25 1 35 1 43.75 1 52.5 1
		 61.25 1 70 1 117 1 1000 1;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTU -n "b_LeftUpperArm_scaleZ";
	rename -uid "1192376A-409C-130D-16D5-578CFC59D062";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1 8.75 1 17.5 1 26.25 1 35 1 43.75 1 52.5 1
		 61.25 1 70 1 117 1 1000 1;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTU -n "b_LeftForeArm_scaleZ";
	rename -uid "8D7FFDE1-47C2-6D35-40DA-14872A979BF6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1 8.75 1 17.5 1 26.25 1 35 1 43.75 1 52.5 1
		 61.25 1 70 1 117 1 1000 1;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTU -n "b_LeftWrist_scaleZ";
	rename -uid "886123EB-465D-3342-6C7A-F4B1CB206D84";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1 8.75 1 17.5 1 26.25 1 35 1 43.75 1 52.5 1
		 61.25 1 70 1 117 1 1000 1;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTU -n "b_LeftHand_scaleZ";
	rename -uid "F38DE8F4-4957-3534-4F10-7AA46317D1F3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1 8.75 1 17.5 1 26.25 1 35 1 43.75 1 52.5 1
		 61.25 1 70 1 117 1 1000 1;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTU -n "effector6_scaleZ";
	rename -uid "8133D07E-4F5B-0168-9283-4190AEA82115";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1 8.75 1 17.5 1 26.25 1 35 1 43.75 1 52.5 1
		 61.25 1 70 1 117 1 1000 1;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTU -n "b_Tail01_scaleZ";
	rename -uid "892F8943-4E30-BD04-F782-0280957E1FDD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1 8.75 1 17.5 1 26.25 1 35 1 43.75 1 52.5 1
		 61.25 1 70 1 117 1 1000 1;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTU -n "b_Tail02_scaleZ";
	rename -uid "291AA016-4A95-712E-748E-68874ECEFC60";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1 8.75 1 17.5 1 26.25 1 35 1 43.75 1 52.5 1
		 61.25 1 70 1 117 1 1000 1;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTU -n "b_Tail03_scaleZ";
	rename -uid "214C890B-49F1-5E7F-50C7-01BDD71AF29B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1 8.75 1 17.5 1 26.25 1 35 1 43.75 1 52.5 1
		 61.25 1 70 1 117 1 1000 1;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTU -n "b_Tail05_scaleZ";
	rename -uid "C44532E9-4CD1-A718-C24A-F0980BFC5464";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1 8.75 1 17.5 1 26.25 1 35 1 43.75 1 52.5 1
		 61.25 1 70 1 117 1 1000 1;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTU -n "b_Tail04_scaleZ";
	rename -uid "4E937011-468A-5F6A-4F33-47A3E2BDA4B6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1 8.75 1 17.5 1 26.25 1 35 1 43.75 1 52.5 1
		 61.25 1 70 1 117 1 1000 1;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTU -n "b_Tail02_scaleZ1";
	rename -uid "B5DA6E5A-4E43-E35E-3137-24B97D6BAD75";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1 8.75 1 17.5 1 26.25 1 35 1 43.75 1 52.5 1
		 61.25 1 70 1 117 1 1000 1;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTU -n "b_Tail03_scaleZ1";
	rename -uid "BD78293A-49D3-09C3-D5A0-9582110682F9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1 8.75 1 17.5 1 26.25 1 35 1 43.75 1 52.5 1
		 61.25 1 70 1 117 1 1000 1;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTU -n "b_Tail06_scaleZ";
	rename -uid "C410D404-4FB6-462B-D968-86BF142A05E7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1 8.75 1 17.5 1 26.25 1 35 1 43.75 1 52.5 1
		 61.25 1 70 1 117 1 1000 1;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTU -n "b_Tail02_scaleZ2";
	rename -uid "90A562D2-4521-C629-7A31-6CA92ED812D3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1 8.75 1 17.5 1 26.25 1 35 1 43.75 1 52.5 1
		 61.25 1 70 1 117 1 1000 1;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTU -n "b_Tail03_scaleZ2";
	rename -uid "EFDD97E7-44FF-469C-F7CE-5C8D4F90DD55";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1 8.75 1 17.5 1 26.25 1 35 1 43.75 1 52.5 1
		 61.25 1 70 1 117 1 1000 1;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTU -n "b_Tail05_scaleZ1";
	rename -uid "05622FB7-4F31-A861-D3B2-64A10766710E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1 8.75 1 17.5 1 26.25 1 35 1 43.75 1 52.5 1
		 61.25 1 70 1 117 1 1000 1;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTU -n "b_LeftLeg01_scaleZ";
	rename -uid "BD85C44B-44FD-924B-5E19-739D3355BD7E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1 8.75 1 17.5 1 26.25 1 35 1 43.75 1 52.5 1
		 61.25 1 70 1 117 1 1000 1;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTU -n "b_LeftLeg02_scaleZ";
	rename -uid "E4EABFFA-47E0-4C58-C1B4-7CB7EB6098CF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1 8.75 1 17.5 1 26.25 1 35 1 43.75 1 52.5 1
		 61.25 1 70 1 117 1 1000 1;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTU -n "b_LeftFoot01_scaleZ";
	rename -uid "97588388-4497-13F2-2EBF-B1878F98F218";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1 8.75 1 17.5 1 26.25 1 35 1 43.75 1 52.5 1
		 61.25 1 70 1 117 1 1000 1;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTU -n "b_LeftFoot02_scaleZ";
	rename -uid "6D970E0E-4AB5-62C5-74D5-B9B055155645";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0.99999994039535522 8.75 0.99999994039535522
		 17.5 0.99999994039535522 26.25 0.99999994039535522 35 0.99999994039535522 43.75 0.99999994039535522
		 52.5 0.99999994039535522 61.25 0.99999994039535522 70 0.99999994039535522 117 0.99999994039535522
		 1000 0.99999994039535522;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTU -n "effector4_scaleZ";
	rename -uid "16A25EC8-40C7-09FF-0904-ECAB767A9C94";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1 8.75 1 17.5 1 26.25 1 35 1 43.75 1 52.5 1
		 61.25 1 70 1 117 1 1000 1;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTU -n "b_RightLeg01_scaleZ";
	rename -uid "4E7E4FF2-4144-A6D6-B7B0-B6A0562EF0E4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1 8.75 1 17.5 1 26.25 1 35 1 43.75 1 52.5 1
		 61.25 1 70 1 117 1 1000 1;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTU -n "b_RightLeg02_scaleZ";
	rename -uid "8093E615-499F-2426-5A9E-B589640552E2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1 8.75 1 17.5 1 26.25 1 35 1 43.75 1 52.5 1
		 61.25 1 70 1 117 1 1000 1;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode animCurveTU -n "b_RightFoot01_scaleZ";
	rename -uid "9BA2D83F-48D6-1AA3-26A9-66AA6B5BF292";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 1 8.75 1 17.5 1 26.25 1 35 1 43.75 1 52.5 1
		 61.25 1 70 1 117 1 1000 1;
	setAttr -s 11 ".kit[9:10]"  1 18;
	setAttr -s 11 ".kot[9:10]"  1 18;
	setAttr -s 11 ".kix[9:10]"  1 1;
	setAttr -s 11 ".kiy[9:10]"  0 0;
	setAttr -s 11 ".kox[9:10]"  1 1;
	setAttr -s 11 ".koy[9:10]"  0 0;
createNode skinCluster -n "skinCluster1";
	rename -uid "8A788207-4321-3EBA-6BD3-51AADEF81BB4";
	setAttr ".skm" 2;
	setAttr -s 1550 ".wl";
	setAttr ".wl[0:166].w"
		3 1 0.59021524351715382 14 0.33971505531383855 29 0.070069701169007473
		3 1 0.55172045580486762 14 0.42831920946982577 18 0.019960334725306471
		3 1 0.018206192285173051 14 0.570731778849071 15 0.41106202886575588
		3 1 0.017994039493411371 14 0.50621632477999889 15 0.47578963572658983
		3 1 0.35898795361124997 14 0.60129651949752927 15 0.039715526891220647
		3 1 0.31164474812294751 14 0.62121239881386126 15 0.067142853063191177
		3 1 0.0013715968171270068 14 0.17292425040646103 15 0.82570415277641207
		3 14 0.057922578707217669 15 0.94153007433531022 17 0.00054734695747201626
		3 14 0.011062998969052393 15 0.98451125807715378 17 0.004425742953793688
		3 14 0.004125055412240293 15 0.98769542302469171 17 0.0081795215630681029
		3 14 0.00020324418947865558 15 0.9113947886457745 17 0.08840196716474677
		3 14 0.00036892381843080507 15 0.95345896745159686 17 0.046172108729972273
		3 14 5.160757585745386e-06 15 0.74748563994807571 17 0.25250919929433857
		3 14 5.1452370276580862e-06 15 0.81509014818392911 17 0.18490470657904318
		3 1 0.022449267764361139 14 0.57589991131600926 15 0.40165082091962961
		3 1 0.26157886920641643 14 0.66537995766756219 15 0.07304117312602143
		3 1 0.00041994190001804236 14 0.10400458219769598 15 0.89557547590228603
		3 14 0.0044999452911084967 15 0.98890473444504379 17 0.0065953202638477136
		3 14 0.00016076850470552674 15 0.92672363683465531 17 0.073115594660639188
		3 14 4.2224945970454971e-06 15 0.77544936869676873 17 0.22454640880863425
		3 1 0.017641585020916974 14 0.71803046894770051 15 0.2643279460313826
		3 1 0.015962492340039765 14 0.64694467766189923 15 0.33709282999806095
		3 1 0.24939926070536281 14 0.69760686723481669 15 0.052993872059820438
		3 1 0.0022406693146124141 14 0.28049359750947817 15 0.71726573317590936
		3 14 0.1949596101663004 15 0.80469052412478737 18 0.00034986570891219748
		3 14 0.04122839209197237 15 0.95636796391396373 17 0.0024036439940638976
		3 14 0.015950188823753497 15 0.98106935283022112 17 0.0029804583460254146
		3 14 0.00037883260431898109 15 0.97178382735915414 17 0.027837340036526739
		3 14 0.00077605059868140396 15 0.97361703249232823 17 0.025606916908990397
		3 14 1.2849777671387202e-05 15 0.82778580640317834 17 0.17220134381915037
		3 14 8.9289104550853213e-06 15 0.88591064439669187 17 0.11408042669285298
		3 1 0.0096522535337549512 14 0.64650633022172821 15 0.34384141624451681
		3 1 0.29703992033897725 14 0.65917528843381423 15 0.043784791227208582
		3 1 0.00074877802885254434 14 0.24631744212964218 15 0.75293377984150522
		3 14 0.025415900049971997 15 0.9724292606266115 17 0.0021548393234164659
		3 14 0.00054686781573735617 15 0.98135641372167304 17 0.018096718462589773
		3 14 1.0779716022774619e-05 15 0.87858091445111863 17 0.12140830583285844
		3 1 0.30215740182935352 14 0.64205915735850405 15 0.055783440812142322
		3 1 0.011824558295674832 14 0.56994534194484314 15 0.41823009975948205
		3 1 0.027122439270508062 14 0.62889960959793245 15 0.34397795113155938
		3 1 0.0024991931379241376 14 0.24487522642965481 15 0.752625580432421
		3 14 0.12276074352439202 15 0.8769437790546456 17 0.00029547742096238723
		3 14 0.031197775207993186 15 0.96644697248916933 17 0.0023552523028375111
		3 14 0.0090237576385789626 15 0.98618183243523527 17 0.0047944099261857023
		3 14 0.00068935915714710421 15 0.95183810125028012 17 0.047472539592572846
		3 14 0.001079962583632232 15 0.97220812446007876 17 0.026711912956288948
		3 14 9.5935708622791206e-06 15 0.77411014549744728 17 0.22588026093169042
		3 14 1.3173329045127475e-05 15 0.86460441398867072 17 0.13538241268228413
		3 14 4.6535438213655727e-06 15 0.79309007866987047 17 0.20690526778630824
		3 1 0.059849917343507204 14 0.81121595876654484 15 0.12893412388994799
		3 1 0.073219585225824016 14 0.74189728490676576 15 0.18488312986741023
		3 1 0.098866228386994964 14 0.70706274630541455 15 0.19407102530759066
		3 1 0.097086707184641394 14 0.69201070925985542 15 0.21090258355550315
		3 1 0.12479111005343257 14 0.7098826364409011 15 0.16532625350566632
		3 1 0.13943098266518744 14 0.74487522518559657 15 0.11569379214921593
		3 1 0.10839737323502416 14 0.74751148811685153 15 0.14409113864812431
		3 1 0.070692841730057146 14 0.77035178622403899 15 0.15895537204590385
		3 1 0.0050996045624928489 14 0.50334819545483922 15 0.49155219998266791
		3 1 0.0047546704664677177 14 0.38154652151752116 15 0.61369880801601107
		3 1 0.004447146891822313 14 0.3595415365663574 15 0.6360113165418203
		3 1 0.0033105254864454667 14 0.32186470141005802 15 0.67482477310349642
		3 1 0.00098018953850317805 14 0.20242689077472706 15 0.79659291968676971
		3 1 0.0016903035818884799 14 0.32382884541568246 15 0.67448085100242905
		3 14 0.40995180039267554 15 0.58816159983326444 18 0.0018865997740600592
		3 1 0.0024298186144130194 14 0.44726318013404331 15 0.55030700125154364
		3 1 0.00060336734016817255 14 0.13026534217100655 15 0.8691312904888252
		3 1 0.00076796534740055798 14 0.11361590585772485 15 0.88561612879487472
		3 14 0.053891386786698227 15 0.94522054651524645 17 0.00088806669805534786
		3 14 0.022685916889179609 15 0.97609631191602075 17 0.0012177711947997578
		3 14 0.013458593717846076 15 0.9841272263988039 17 0.0024141798833500418
		3 14 0.03328226449261474 15 0.96526255325787735 17 0.0014551822495077243
		3 14 0.063808994535414748 15 0.93539940497072704 17 0.00079160049385813087
		3 14 0.096420620683670397 15 0.90299095545175401 17 0.00058842386457552665
		3 14 0.0054764905742451572 15 0.98451367024131475 17 0.010009839184440072
		3 14 0.0074761957363598929 15 0.98191724257005542 17 0.010606561693584801
		3 14 0.0017053729809027778 15 0.97494342270524892 17 0.023351204313848364
		3 14 0.0010500126532639873 15 0.97099746445652357 17 0.02795252289021246
		3 14 0.0015232154548676055 15 0.97955593815084174 17 0.01892084639429056
		3 14 0.0031917750403706578 15 0.98517791575535874 17 0.011630309204270635
		3 14 0.0037566046051857979 15 0.98581026467914046 17 0.010433130715673773
		3 14 0.0042243750091421617 15 0.98903133092503337 17 0.0067442940658244922
		3 14 5.8545870957337619e-05 15 0.91477865630403488 17 0.085162797825007713
		3 14 5.4885311493368588e-05 15 0.85774787226436189 17 0.14219724242414475
		3 14 1.817217267754167e-05 15 0.80333936665572048 17 0.19664246117160206
		3 14 2.2432140272432844e-05 15 0.85051315184363685 17 0.14946441601609081
		3 14 4.0427237083519095e-05 15 0.89081846479687909 17 0.10914110796603749
		3 14 0.00016924513349120677 15 0.93367358896072383 17 0.06615716590578502
		3 14 8.8030553362397431e-05 15 0.93968857483640111 17 0.06022339461023659
		3 14 4.8841427554848068e-05 15 0.94684267123286092 17 0.0531084873395841
		3 1 0.60621023722266998 2 0.01285766162296868 14 0.38093210115436144
		3 1 0.63880286491202631 14 0.34619576355835824 25 0.015001371529615368
		3 1 0.57525495949277683 14 0.37451213455964755 25 0.050232905947575665
		3 1 0.55266662653249987 14 0.31431156482413392 25 0.13302180864336632
		3 1 0.52253284116242793 14 0.32242601991777775 29 0.15504113891979435
		3 1 0.3420058946093541 14 0.61929377790583828 15 0.038700327484807645
		3 1 0.37107868247059383 14 0.58199262109492433 18 0.046928696434481811
		3 1 0.57635621473531773 14 0.24943011150835931 29 0.17421367375632296
		3 29 2.7110311130340377e-06 30 0.43608035230286268 31 0.56391693666602427
		3 29 6.9056983312112422e-06 30 0.52199789718338896 31 0.47799519711827987
		3 29 1.8731871049940646e-05 30 0.58175394833510319 31 0.41822731979384692
		3 29 2.7957040208594785e-05 30 0.60606589028501889 31 0.39390615267477253
		3 29 1.8271045057553583e-05 30 0.55463531048851711 31 0.44534641846642542
		3 29 4.9392154114151403e-06 30 0.42599263890528827 31 0.57400242187930028
		3 29 7.7955612923290962e-07 30 0.32972189433432963 31 0.67027732610954116
		3 29 2.204886403386932e-05 30 0.59936694886777653 31 0.40061100226818969
		3 29 9.0118490232365868e-06 30 0.51738368080315711 31 0.48260730734781981
		3 29 1.8038132765954482e-06 30 0.39685514738357131 31 0.60314304880315206
		3 29 2.2464201848251438e-05 30 0.57815369882702339 31 0.42182383697112841
		3 29 9.2821402822718034e-06 30 0.48845677814080773 31 0.51153393971890992
		3 29 1.9337641905039019e-06 30 0.36708056034455505 31 0.63291750589125428
		3 29 5.0536919533502307e-06 30 0.33888176368491019 31 0.66111318262313656
		3 29 1.1263509453509174e-05 30 0.39834889032480109 31 0.60163984616574528
		3 29 2.6127740057486764e-05 30 0.40789993135068114 31 0.59207394090926124
		3 29 3.6792240680949898e-05 30 0.39977113253325858 31 0.60019207522606033
		3 29 2.4578257484653056e-05 30 0.36974951788305549 31 0.63022590385945976
		3 29 7.4660223340044597e-06 30 0.29582465734274221 31 0.70416787663492364
		3 29 1.6080269859991372e-06 30 0.23195521346747638 31 0.76804317850553772
		3 29 2.9391661044359958e-05 30 0.39704318011514028 31 0.6029274282238154
		3 29 1.3070739036939708e-05 30 0.36609664659562974 31 0.63389028266533343
		3 29 3.1894551700995835e-06 30 0.28726085812029262 31 0.71273595242453724
		3 29 3.0708214700557352e-05 30 0.39465200863019001 31 0.60531728315510946
		3 29 1.397240917641867e-05 30 0.35898424289787717 31 0.64100178469294644
		3 29 3.667464966430406e-06 30 0.2755487051979259 31 0.72444762733710766
		3 29 4.0232745235714848e-06 30 0.41007332617439179 31 0.58992265055108473
		3 29 8.9995925181689945e-06 30 0.47743394012946344 31 0.52255706027801851
		3 29 2.2016012378180889e-05 30 0.50447575385058185 31 0.49550223013704014
		3 29 3.1927183727999483e-05 30 0.50827761127969362 31 0.49169046153657858
		3 29 2.1476381426892511e-05 30 0.46950775880254497 31 0.53047076481602828
		3 29 6.5142233447581794e-06 30 0.37444314734013606 31 0.62555033843651908
		3 29 1.4693007790334269e-06 30 0.2978876702803907 31 0.7021108604188302
		3 29 2.5752111353716375e-05 30 0.5066180077469008 31 0.49335624014174551
		3 29 1.1251269914488154e-05 30 0.45540243367754552 31 0.54458631505253996
		3 29 2.780377266427163e-06 30 0.35990731102362328 31 0.64008990859911041
		3 29 2.60048440114217e-05 30 0.49176512048620818 31 0.50820887466978037
		3 29 1.1523731417105745e-05 30 0.43862792507199749 31 0.56136055119658546
		3 29 3.0054107727623832e-06 30 0.34231042099088738 31 0.65768657359833982
		3 6 0.048092858666390216 7 0.95188261230239068 10 2.4529031219037116e-05
		3 6 0.074543505304713806 7 0.92540037136322395 10 5.6123332062195806e-05
		3 6 0.1258729767956073 7 0.87398145860790266 10 0.00014556459649001587
		3 6 0.1614337121976962 7 0.83834488892549297 10 0.00022139887681074211
		3 6 0.12628331031130668 7 0.87356822274821777 10 0.00014846694047549705
		3 6 0.063300824227454464 7 0.93665360949858556 10 4.556627395991649e-05
		3 6 0.033634369378614026 7 0.96635481919743782 10 1.0811423948011639e-05
		3 6 0.14393630609525951 7 0.85588733786409543 10 0.00017635604064499051
		3 6 0.086576322658051347 7 0.91334687471564391 10 7.680262630474819e-05
		3 6 0.043610164118529901 7 0.95637017528163537 10 1.9660599834675048e-05
		3 6 0.13920299109018919 7 0.86062408252201061 10 0.00017292638780026741
		3 6 0.082534539906047796 7 0.91739070931986311 10 7.4750774089242766e-05
		3 6 0.04069029523817496 7 0.95929096916696155 10 1.8735594863527607e-05
		3 6 0.03485453036123818 7 0.96511938979116352 10 2.6079847598429667e-05
		3 6 0.049430189301368374 7 0.95051405542119627 8 5.5755277435263826e-05
		3 6 0.071808561719195932 7 0.92806262419896335 8 0.00012881408184075617
		3 6 0.085487823543536803 7 0.9143302204347421 8 0.00018195602172098801
		3 6 0.069182903085984376 7 0.93069206554479278 8 0.00012503136922288797
		3 6 0.038644470469895713 7 0.96131545415077402 8 4.0075379330377763e-05
		3 6 0.02284868658361202 7 0.97714123269846509 10 1.0080717922906858e-05
		3 6 0.08076303628600244 7 0.91908355675002273 8 0.0001534069639748384
		3 6 0.05447730456309452 7 0.94545193506893777 8 7.0760367967602494e-05
		3 6 0.03146891991911973 7 0.96851065408415471 10 2.0425996725612627e-05
		3 6 0.074428494956008395 7 0.92542469448675513 8 0.00014681055723637863
		3 6 0.04841092093946589 7 0.95152236263138112 8 6.6716429153084966e-05
		3 6 0.026779836186577345 7 0.97320243240888071 8 1.7731404541948206e-05
		3 6 0.029613917275208037 7 0.97036295924753835 8 2.3123477253534796e-05
		3 6 0.041184835112117693 7 0.95876648822774957 8 4.8676660132798515e-05
		3 6 0.053713976153466431 7 0.94617460217031368 8 0.00011142167621975005
		3 6 0.059880221867838375 7 0.93996201950824054 8 0.00015775862392121493
		2 6 0.047679195172401143 7 0.95221388838764331;
	setAttr ".wl[166:333].w"
		1 8 0.00010691643995562519
		3 6 0.027246757386800071 7 0.97271936080302335 8 3.388181017666976e-05
		3 6 0.016360645841684385 7 0.98363077697640167 8 8.5771819139296624e-06
		3 6 0.056136681991659478 7 0.94373344474005105 8 0.00012987326828946404
		3 6 0.040512241223137548 7 0.95942781091535778 8 5.9947861504770903e-05
		3 6 0.024084038317756799 7 0.97589868476383934 8 1.7276918403804997e-05
		3 6 0.053833582997349416 7 0.94603794994703161 8 0.00012846705561901574
		3 6 0.037406433228680612 7 0.96253552481693971 8 5.8041954379500879e-05
		3 6 0.021067478176377819 7 0.97891701949386511 8 1.5502329757244129e-05
		3 3 0.80702922407250588 4 0.11194400671135381 10 0.081026769216140396
		3 6 0.28137789600067942 10 0.39102549366447631 11 0.32759661033484427
		3 6 0.28229589812632272 10 0.49081669837098585 11 0.22688740350269143
		3 3 0.22130273270418954 6 0.26833869579796921 10 0.51035857149784125
		3 3 0.56115054567673517 4 0.39180332869811652 10 0.047046125625148344
		3 3 0.2777630844144035 4 0.71485509930163449 10 0.0073818162839617979
		3 2 0.14772086714622548 3 0.75667131780561114 10 0.095607815048163375
		3 6 0.31838961595083154 10 0.5057647109003216 11 0.17584567314884683
		3 1 0.23162329543713436 2 0.53413293621586155 3 0.23424376834700397
		3 1 0.73459795835018704 2 0.21911037805969288 14 0.046291663590120102
		3 0 0.42746268220684552 1 0.33446715927758425 25 0.23807015851557004
		3 1 0.40973971381348018 25 0.29873345904265264 29 0.29152682714386718
		3 1 0.78924800558685093 2 0.054129770155408388 14 0.15662222425774058
		3 6 0.26792483345153251 10 0.35954710580929883 11 0.37252806073916866
		3 1 0.48788152842027649 2 0.43409639415681717 3 0.0780220774229064
		3 0 0.32780278180346295 1 0.37831844569277762 2 0.29387877250375949
		3 1 0.065911061557330911 2 0.41618617714558648 3 0.51790276129708235
		3 3 0.15125039440790336 10 0.74410911760110576 11 0.10464048799099081
		3 3 0.28944606396243466 4 0.30015465982147055 10 0.41039927621609473
		3 3 0.57950236351423445 4 0.22416995335855444 10 0.19632768312721108
		3 3 0.35505524584798825 4 0.60776846101369164 10 0.03717629313832
		3 3 0.73558962947409245 4 0.037057885058687734 10 0.22735248546721987
		3 6 0.089503777300859136 10 0.66055532258848393 11 0.24994090011065695
		3 2 0.071192145914105637 3 0.54821916215103539 10 0.38058869193485917
		3 3 0.22622273115753544 10 0.64896598096904123 11 0.12481128787342322
		3 1 0.22751075029373169 2 0.43390862108086914 3 0.33858062862539912
		3 1 0.29567998647689819 2 0.32381001270945808 3 0.38051000081364367
		3 1 0.57063660987809406 2 0.25103204090543896 25 0.17833134921646701
		3 0 0.2548147985834241 1 0.37132678114932338 25 0.37385842026725252
		3 1 0.38401815776349979 21 0.10202335742193877 25 0.51395848481456141
		3 1 0.78960093748247095 14 0.12104063913399538 25 0.089358423383533725
		3 3 0.25666187882669816 4 0.18589146708186066 10 0.55744665409144112
		3 6 0.0072513084214460713 10 0.42181786838351065 11 0.57093082319504318
		3 3 0.35270183395111343 4 0.39706662678496807 10 0.25023153926391861
		3 2 0.044774174499644603 3 0.31999281806054175 10 0.63523300743981359
		3 3 0.26728582938753626 4 0.050515388393887785 10 0.68219878221857611
		3 3 0.4112992581332014 4 0.076728542156395366 10 0.5119721997104032
		3 3 0.33057948312123442 4 0.0026487386743242768 10 0.66677177820444133
		3 2 0.0074597166296504151 3 0.52283992325605999 10 0.46970036011428956
		3 3 0.50461523540032394 4 0.033985653441541454 10 0.46139911115813459
		3 3 0.2431000796100754 4 0.011069104113651699 10 0.7458308162762729
		3 3 0.3759301332335947 4 0.21435157486739656 10 0.40971829189900877
		3 6 0.080242558643810399 10 0.38437628315367012 11 0.53538115820251952
		3 6 0.00032616041694944029 10 0.31753863584865533 11 0.68213520373439507
		3 6 0.11753001088934437 10 0.36364016194278248 11 0.51882982716787307
		3 3 0.035632269800217144 10 0.88935424949581166 11 0.075013480703971125
		3 3 0.02673782267464022 10 0.90937842170358507 11 0.063883755621774702
		3 3 0.021096175116351385 10 0.85753359532150053 11 0.12137022956214812
		3 6 0.0021373444258213315 10 0.45737869544130333 11 0.54048396013287536
		3 6 0.02166900269768476 10 0.48299575382724985 11 0.49533524347506536
		3 6 0.12766125140987097 10 0.31100554653473528 11 0.56133320205539383
		3 3 0.0084528046975559084 10 0.72915655267668877 11 0.26239064262575534
		3 6 0.011385400296229833 10 0.737379489639723 11 0.25123511006404725
		3 3 0.0017765864228082976 10 0.60941670223840161 11 0.38880671133878997
		3 6 0.0053275404634593581 10 0.08730130207931433 11 0.9073711574572263
		3 6 0.0020752775993023117 10 0.090914766621701379 11 0.90700995577899635
		3 6 3.2959263939921758e-06 10 0.035084970114694011 11 0.96491173395891194
		3 10 0.067889842216321383 11 0.93210713206240581 12 3.0257212728303936e-06
		3 6 0.0017190458154188442 10 0.048292093506937438 11 0.94998886067764376
		3 10 0.024965846380930544 11 0.97503155708405609 12 2.5965350133695333e-06
		3 6 0.00059527285612206396 10 0.14362758755646832 11 0.85577713958740964
		3 6 0.0011854151961929332 10 0.054840119027113832 11 0.94397446577669319
		3 11 0.98988988357674912 12 0.0087896518843986488 13 0.0013204645388520926
		3 11 0.99815652589660542 12 0.0015213826399190209 13 0.00032209146347549175
		3 11 0.98852831300265043 12 0.010331938753379882 13 0.0011397482439697354
		3 11 0.99106036764371586 12 0.0075964589323695509 13 0.001343173423914532
		3 11 0.9929204705968081 12 0.0060453667330190438 13 0.0010341626701728388
		3 11 0.98143541063590534 12 0.016231560475910071 13 0.0023330288881845507
		3 11 0.99452835675663265 12 0.004596437057255774 13 0.00087520618611177964
		3 11 0.99123104734492995 12 0.0077968965646007605 13 0.00097205609046935315
		3 11 0.093896840253315253 12 0.83056725650813523 13 0.075535903238549501
		3 11 0.10628756689215652 12 0.78743350157692238 13 0.10627893153092106
		3 11 0.045431296060328662 12 0.87066040659144406 13 0.083908297348227329
		3 11 0.051481530329680877 12 0.83509833983996151 13 0.11342012983035754
		3 11 0.037632277173463222 12 0.86333933613076586 13 0.09902838669577077
		3 11 0.027096036098674045 12 0.8729310700565418 13 0.099972893844784208
		3 11 0.071140747584512179 12 0.81173357692840986 13 0.11712567548707786
		3 11 0.071426868816928057 12 0.85644914574442499 13 0.072123985438647065
		3 11 2.2669984197787761e-05 12 0.78163215861758506 13 0.21834517139821721
		3 11 3.1110441850232951e-06 12 0.7344713140921425 13 0.26552557486367251
		3 11 2.2331154329718012e-05 12 0.76204592394245985 13 0.23793174490321059
		3 11 3.7107130366368474e-06 12 0.7301018479893403 13 0.26989444129762291
		3 11 7.0055033276692721e-06 12 0.75858189038092561 13 0.24141110411574679
		3 11 3.0786653846785064e-05 12 0.77330000711380775 13 0.22666920623234554
		3 11 1.9235203188736769e-06 12 0.71721691778658003 13 0.28278115869310105
		3 11 2.8729178093996838e-05 12 0.79867707127334187 13 0.20129419954856395
		3 11 6.6817518519758306e-05 12 0.83975878088943701 13 0.1601744015920431
		3 11 9.9767341433669595e-05 12 0.81821365857868 13 0.18168657407988645
		3 11 4.0261096096071773e-05 12 0.7915298883908205 13 0.20842985051308346
		3 11 9.3660422889609291e-06 12 0.74692967433220603 13 0.25306095962550496
		3 11 6.4828840016647566e-06 12 0.73188738822228028 13 0.2681061288937181
		3 11 1.6250440124177763e-05 12 0.75969301280434298 13 0.24029073675553284
		3 11 3.8144904678401046e-05 12 0.82297699444885519 13 0.17698486064646646
		3 11 0.00010456372212266967 12 0.83083141078043576 13 0.16906402549744159
		3 11 6.6943029863473605e-05 12 0.80860060478371398 13 0.19133245218642256
		3 6 0.057129230166114923 10 0.60314890013567091 11 0.33972186969821405
		3 1 0.4105486116875115 2 0.069803801029612811 25 0.51964758728287552
		3 1 0.64561468482943229 2 0.095896816366979026 25 0.25848849880358865
		3 1 0.64106318609590507 14 0.10844003193001527 25 0.25049678197407954
		3 1 0.003422376776961983 25 0.56968346312361173 26 0.42689416009942627
		3 1 0.02256382314628191 25 0.68680524050321412 26 0.29063093635050402
		3 0 0.027867029285547681 1 0.16253865334372941 25 0.80959431737072296
		3 1 0.078630985185782418 25 0.87965134526471156 26 0.041717669549506037
		3 0 0.0034988187718278962 25 0.37261018225400638 26 0.62389099897416567
		3 1 0.00091301333455912016 25 0.26046977684406702 26 0.73861720982137391
		3 0 0.00011960507294988333 25 0.31500321693215882 26 0.68487717799489145
		3 25 0.19687140379255191 26 0.80304633571619977 27 8.226049124825986e-05
		3 25 0.015530380245269608 26 0.95298197649746685 27 0.031487643257263505
		3 25 0.0019206446582175269 26 0.94541545422425199 27 0.052663901117530644
		3 25 0.012347580917584935 26 0.93478667964939044 27 0.05286573943302475
		3 25 0.0045887923902066278 26 0.93706110012983135 27 0.058350107479962054
		3 25 2.5732029692053115e-07 26 0.26578748744351188 27 0.73421225523619127
		3 25 7.157739240452021e-08 26 0.33753496676268147 27 0.6624649616599263
		3 25 1.737168268239918e-06 26 0.39797327779179914 27 0.60202498503993274
		3 25 4.6509231920172671e-07 26 0.38908677975734696 27 0.61091275515033372
		3 25 5.8348779344591857e-07 26 0.077501763519611855 27 0.92249765299259456
		3 25 3.2951401277729396e-07 26 0.045989530427906128 27 0.95401014005808116
		3 25 2.7275836990171631e-07 26 0.040312233486608305 27 0.95968749375502183
		3 25 1.1489160751180282e-07 26 0.025976050920891974 27 0.97402383418750049
		3 0 0.14982600452058029 25 0.56445278868383786 26 0.28572120679558194
		3 0 0.055055960047493614 25 0.56137280779418131 26 0.38357123215832511
		3 0 0.21631571272532626 25 0.59633135019241768 26 0.18735293708225606
		3 1 0.051152206499382978 25 0.6959925202843672 26 0.25285527321624979
		3 1 0.00046250054530832656 25 0.18323390351563928 26 0.81630359593905244
		3 0 0.011502907888302055 25 0.48658522841804358 26 0.50191186369365437
		3 25 9.1174972066097271e-05 26 0.8930638071898841 27 0.10684501783804987
		3 25 0.063093911122525492 26 0.92657752708533692 27 0.010328561792137579
		3 25 8.6095761899585649e-08 26 0.34113255033010048 27 0.65886736357413767
		3 25 3.249784447832413e-06 26 0.3650227008937294 27 0.63497404932182278
		3 25 1.5269224154176032e-07 26 0.0382117092734209 27 0.96178813803433771
		3 25 6.248178631861674e-07 26 0.084261693403503007 27 0.91573768177863379
		3 25 4.9558790833105317e-08 26 0.0043004781746062391 27 0.99569947226660305
		3 25 8.9935859094387988e-08 26 0.0037675052826882881 27 0.99623240478145259
		3 25 5.346046806303698e-08 26 0.0041695593222918067 27 0.99583038721724015
		3 25 8.9283033617007684e-08 26 0.00063805173700952355 27 0.99936185897995689
		3 25 2.3679049797226859e-07 26 0.029242896578666154 27 0.97075686663083582
		3 25 2.2437892687911675e-07 26 0.022486508828685203 27 0.97751326679238804
		3 25 6.8249719526663757e-08 26 0.0045450565249101705 27 0.99545487522537035
		3 25 1.0949087655535544e-07 26 0.0053673407965548732 27 0.99463254971256854
		3 25 9.4006634159567294e-08 26 0.001431235941416711 27 0.99856867005194927
		3 25 1.6371452923042533e-07 26 0.019410873739966663 27 0.98058896254550421
		3 25 6.1424277174094249e-08 26 0.0015969370667403759 27 0.99840300150898231
		3 25 2.614521422840241e-08 26 0.0017219877767826104 27 0.99827798607800322
		3 25 5.0433365814536766e-08 26 0.00038297604462727273 27 0.99961697352200696
		3 25 1.4138604476716996e-07 26 0.018017351276039911 27 0.98198250733791537
		3 25 9.6261351028555698e-08 26 0.005602741461194694 27 0.99439716227745423
		3 25 1.239335980713372e-07 26 0.0094294727882195135 27 0.99057040327818258
		3 25 1.9671148419833158e-07 26 0.020823056798951273 27 0.97917674648956454
		3 3 0.17343818198642175 10 0.78267801806378423 11 0.043883799949793967
		3 3 0.12134402951436052 10 0.86167135801597494 11 0.016984612469664543
		3 3 0.07813579314003391 10 0.89506602681830116 11 0.026798180041664867
		3 3 0.12474632799820914 10 0.86129464984291748 11 0.013959022158873414
		3 3 0.35022447990567296 4 0.28993648238606601 10 0.35983903770826103
		3 3 0.37680038081381584 4 0.47405401096241068 10 0.1491456082237734
		3 3 0.018811118092886304 10 0.89448793396509996 11 0.086700947942013731
		3 3 0.089885323763451458 10 0.89323845134105329 11 0.016876224895495322
		3 2 0.0055475515564555513 3 0.29475685496916543 10 0.69969559347437893
		3 3 0.061431722779626503 10 0.84758805637273515 11 0.090980220847638335
		1 3 0.063310822448323936;
	setAttr ".wl[333:499].w"
		2 10 0.9030578144931346 11 0.033631363058541489
		3 2 0.010968420878309085 3 0.21670284428707659 10 0.77232873483461428
		3 1 0.0084648752965107883 25 0.44458298007199104 26 0.54695214463149811
		3 0 0.0094557715536120381 25 0.42582831249116698 26 0.56471591595522086
		3 0 0.035018300841465677 25 0.51060206733865232 26 0.45437963181988195
		3 0 0.070927332961254835 25 0.58480900399864122 26 0.34426366304010403
		3 0 0.0028477677771313833 25 0.50967096904295062 26 0.48748126317991808
		3 1 0.00014396580019732062 25 0.3225167817256418 26 0.67733925247416094
		3 25 0.08826085447705892 26 0.91104216883208677 27 0.00069697669085439092
		3 25 0.15041700426946719 26 0.84903539426423935 27 0.00054760146629339679
		3 0 0.00060874367534135426 25 0.31202246456543148 26 0.68736879175922716
		3 25 0.2008300757259156 26 0.79893501888775642 27 0.00023490538632794732
		3 25 0.099475486554761156 26 0.9003248825521587 27 0.00019963089308015357
		3 25 0.042933932779984224 26 0.95663257549818792 27 0.00043349172182797303
		3 25 3.2825280425895465e-07 26 0.14996505813495903 27 0.85003461361223687
		3 25 1.2572010906203396e-07 26 0.18683492049743924 27 0.81316495378245168
		3 25 9.0696045717427944e-08 26 0.24435091898105121 27 0.75564899032290311
		3 25 1.9138050678274817e-07 26 0.26194666998992022 27 0.73805313862957289
		3 25 3.3409131358555032e-07 26 0.22972004438990981 27 0.7702796215187766
		3 25 5.849731617900819e-07 26 0.18685321004323346 27 0.81314620498360468
		3 25 0.00021256959419643285 26 0.61857361466265348 27 0.38121381574315005
		3 25 4.4096995411959537e-05 26 0.56977349183969184 27 0.43018241116489631
		3 25 5.2547358430295889e-06 26 0.56106276486296047 27 0.43893198040119658
		3 25 1.2627498622130346e-07 26 0.47434802121953595 27 0.52565185250547797
		3 25 3.7988366851481138e-07 26 0.48976119153161596 27 0.5102384285847158
		3 25 8.3952232727342008e-06 26 0.51624668578981858 27 0.48374491898690886
		3 11 0.010835199805780247 12 0.87325799732269938 13 0.11590680287152025
		3 11 0.0071652933125531219 12 0.87067763874827864 13 0.12215706793916832
		3 11 0.010571627839815106 12 0.85978753188902202 13 0.12964084027116296
		3 11 0.0088812311496668378 12 0.86193835078029402 13 0.12918041807003913
		3 11 0.0045565064663967356 12 0.86884082718579703 13 0.12660266634780634
		3 11 0.0040957470039528236 12 0.88112563770298535 13 0.11477861529306181
		3 11 0.0037855513812603682 12 0.87651091525859548 13 0.11970353336014429
		3 11 0.006522319430444689 12 0.86408391433227361 13 0.12939376623728166
		3 11 0.28459556883371123 12 0.66549830512051866 13 0.049906126045769952
		3 11 0.23901340517586303 12 0.70145133556464401 13 0.059535259259493038
		3 11 0.14832866709321327 12 0.76426346649736943 13 0.087407866409417279
		3 11 0.2418791866054904 12 0.66312471724557953 13 0.094996096148930009
		3 11 0.28705728338690345 12 0.62071520037017547 13 0.092227516242920971
		3 11 0.39285465107668227 12 0.53298054427116215 13 0.074164804652155678
		3 11 0.19863114325574066 12 0.72196595331019953 13 0.07940290343405973
		3 11 0.39002101840840064 12 0.56057081958452104 13 0.04940816200707835
		3 10 0.014820566404999614 11 0.98517175162727544 12 7.6819677250477888e-06
		3 10 0.0041527392073757849 11 0.99584063477038709 12 6.6260222370520653e-06
		3 10 0.0037507085224373431 11 0.99624628218728317 12 3.009290279286199e-06
		3 10 0.0056914633828910512 11 0.99430627422836904 12 2.2623887398910033e-06
		3 10 0.01305561612853277 11 0.98693923464736966 12 5.1492240976771252e-06
		3 10 0.0087595570691217789 11 0.99122995310164352 12 1.0489829234581933e-05
		3 10 0.025618073780017816 11 0.97437328850881022 12 8.6377111718250011e-06
		3 10 0.035521461334545729 11 0.96447048405483182 12 8.0546106225058071e-06
		3 6 0.0023026671481598433 10 0.29707492206025327 11 0.70062241079158682
		3 6 0.012478262829347176 10 0.25407734218256595 11 0.733444394988087
		3 6 0.025469272059388363 10 0.17814130739543454 11 0.79638942054517714
		3 6 0.038745061608421491 10 0.20119551748280035 11 0.7600594209087782
		3 6 0.019217258150553921 10 0.22579879109779044 11 0.75498395075165559
		3 6 0.0014699982937997264 10 0.15177176551884275 11 0.84675823618735757
		3 3 3.14019037945617e-06 10 0.11039445041458834 11 0.88960240939503221
		3 3 5.9003541180489552e-06 10 0.21749612567122351 11 0.78249797397465848
		3 1 0.40997758970225057 2 0.46685324265483569 3 0.12316916764291361
		3 0 0.24399643501165588 1 0.39269292621777485 2 0.36331063877056918
		3 2 0.3043350007001715 3 0.57892333469668955 10 0.11674166460313884
		3 2 0.22621701065229413 3 0.41632721725040539 10 0.35745577209730051
		3 2 0.18909355743988857 3 0.4331864437073788 10 0.37771999885273261
		3 1 0.17559995490401092 21 0.077582181995506025 25 0.74681786310048315
		3 1 0.023560994072684169 25 0.79063348762137253 26 0.18580551830594338
		3 1 0.10404075916701544 25 0.79787361952805103 26 0.098085621304933479
		3 0 0.31320752158176945 1 0.24912327502942833 25 0.43766920338880227
		3 0 0.32579309540509765 1 0.20740549701084476 25 0.46680140758405742
		3 0 0.20019197122066801 1 0.19689797708928286 25 0.60291005169004919
		3 25 0.003998196421571551 26 0.98154304735432962 27 0.014458756224098746
		3 25 0.023222248272384498 26 0.9675432014184786 27 0.0092345503091367607
		3 25 0.060324675136804999 26 0.93356114828274628 27 0.006114176580448767
		3 25 0.15878292338805275 26 0.84029349292703948 27 0.00092358368490778366
		3 25 0.082845450220139213 26 0.91488445521596484 27 0.002270094563895968
		3 25 0.021707415189436873 26 0.97348204829869833 27 0.0048105365118646529
		3 25 1.3740632642881659e-06 26 0.65668338859052744 27 0.34331523734620817
		3 25 0.00019718495398500161 26 0.73037399249010404 27 0.269428822555911
		3 25 0.0012711154357474062 26 0.77471830870717795 27 0.22401057585707448
		3 25 0.0079710738696971532 26 0.88789205840172514 27 0.10413686772857783
		3 25 0.00086699653030450959 26 0.81921225287102906 27 0.17992075059866652
		3 25 3.289254639338681e-05 26 0.76204385786878182 27 0.23792324958482486
		3 25 1.3685487210805848e-07 26 0.1210998013052749 27 0.87890006183985303
		3 25 1.2943871052836145e-07 26 0.10914474199193638 27 0.89085512856935301
		3 25 2.5339158288609963e-07 26 0.09163016846510183 27 0.9083695781433152
		3 25 9.6401391993592989e-07 26 0.1475588599207418 27 0.85244017606533817
		3 25 6.6905930326537875e-07 26 0.11936515740711572 27 0.88063417353358109
		3 25 2.7064789226351294e-07 26 0.087403493540916713 27 0.91259623581119098
		3 10 0.00078458158878297909 11 0.99920239393004928 12 1.3024481167585513e-05
		3 10 0.0016448965485810353 11 0.99833737635937125 12 1.7727092047619531e-05
		3 10 0.0060513988765292679 11 0.99393208625391649 12 1.6514869554316404e-05
		3 10 0.0048182658023016023 11 0.99516248247199723 12 1.9251725701297201e-05
		3 10 0.0019285208345824097 11 0.99805382004681409 12 1.7659118603428139e-05
		3 10 0.00068140703379737449 11 0.99930631797967584 12 1.2274986526804866e-05
		3 10 0.00021838143011753203 11 0.99977380349619793 12 7.8150736844767167e-06
		3 10 0.00029754197010055183 11 0.9996946332937372 12 7.8247361622504875e-06
		3 11 0.77554155634694788 12 0.2042416278092393 13 0.020216815843812866
		3 11 0.70597664968706864 12 0.27163585109336663 13 0.022387499219564812
		3 11 0.61573064214605622 12 0.35327981218222115 13 0.030989545671722563
		3 11 0.59018535086286139 12 0.36523403992291414 13 0.044580609214224569
		3 11 0.67421414161084436 12 0.28260145700699157 13 0.043184401382164034
		3 11 0.72350365410739914 12 0.23905447590508946 13 0.037441869987511429
		3 11 0.8115990852332714 12 0.16374690754535862 13 0.024654007221369786
		3 11 0.66077290391886156 12 0.30297009158928701 13 0.036257004491851555
		3 1 0.41839754226402648 2 0.20178099268455976 25 0.37982146505141379
		3 1 0.40311724134410631 2 0.39815094702462128 25 0.19873181163127254
		3 1 0.34688147902488708 2 0.30871739590078001 3 0.34440112507433296
		3 3 0.3830749740858293 4 0.51034995543787265 10 0.10657507047629829
		3 2 0.28172440016959466 3 0.37985664014434894 10 0.33841895968605645
		3 1 0.21655922747843595 2 0.45278093440458472 3 0.33065983811697947
		3 3 0.025665346422316389 10 0.82624316852792679 11 0.14809148504975692
		3 3 0.080011128266625403 10 0.87852319748913321 11 0.041465674244241385
		3 3 0.19658956011795536 4 0.051923521009140126 10 0.75148691887290453
		3 3 0.066176706533517371 10 0.82832222368466701 11 0.10550106978181566
		3 3 0.15700584428242026 4 0.056266835065487977 10 0.78672732065209183
		3 3 0.26374260701951652 4 0.12802185231216184 10 0.60823554066832153
		3 11 0.9278259526839957 12 0.063182824741738475 13 0.0089912225742659509
		3 11 0.9711590915285665 12 0.024645292111905956 13 0.0041956163595274843
		3 11 0.94210623323219556 12 0.049589174191636332 13 0.008304592576168111
		3 11 0.92083342724916539 12 0.068079544797392588 13 0.011087027953441984
		3 11 0.88574840528682874 12 0.099829957798400218 13 0.014421636914771035
		3 11 0.88408379033128459 12 0.10483091468071541 13 0.011085294988000007
		3 11 0.93277869399138369 12 0.061304525707886019 13 0.0059167803007302688
		3 11 0.92562480926451907 12 0.066293701769314706 13 0.0080814889661663687
		3 11 0.99968215348740552 12 0.00025482485567927468 13 6.3021656915136849e-05
		3 11 0.99973074731486311 12 0.00021543007860856095 13 5.3822606528223812e-05
		3 11 0.99980568383978485 12 0.00015350165765535078 13 4.0814502559920388e-05
		3 10 6.3751724447533436e-05 11 0.99972573586188462 12 0.00021051241366790225
		3 10 0.00027442399087326195 11 0.99953121814243195 12 0.00019435786669483407
		3 10 0.00057783878311520995 11 0.99927968151718405 12 0.00014247969970081055
		3 10 0.00087717148332051571 11 0.99905968940247802 12 6.3139114201497685e-05
		3 10 0.00016851222078459176 11 0.99965839238937082 12 0.00017309538984462927
		3 0 0.099076846879862096 1 0.26710568031053339 25 0.63381747280960454
		3 0 0.1776227260168218 1 0.20609341156125255 25 0.61628386242192568
		3 0 0.084128778538215265 25 0.68563913727291292 26 0.23023208418887176
		3 0 0.020812836800798588 25 0.58737309224483192 26 0.39181407095436932
		3 0 0.0021101352096047779 25 0.43576352326563256 26 0.5621263415247626
		3 25 0.23666625539718342 26 0.76299376107620986 27 0.00033998352660660275
		3 25 0.10902771917541985 26 0.88835197881135408 27 0.0026203020132259556
		3 25 0.033571991457789836 26 0.94069054747192971 27 0.025737461070280469
		3 25 0.0032078841451798146 26 0.82194241599699813 27 0.17484969985782195
		3 25 0.00011575523724146545 26 0.58215675533182232 27 0.41772748943093613
		3 25 2.981082901741667e-06 26 0.36131838087370699 27 0.63867863804339142
		3 25 4.2999451905550467e-07 26 0.19842333478768995 27 0.80157623521779109
		3 25 6.616689727457988e-07 26 0.12561615697097386 27 0.87438318136005344
		3 25 6.3452479996424323e-07 26 0.088918394531525127 27 0.91108097094367491
		3 25 2.2197282673162987e-07 26 0.029007100652947759 27 0.97099267737422557
		3 25 4.3717218076477847e-08 26 0.0034739534460729773 27 0.996526002836709
		3 25 5.7817493144168901e-08 26 0.00030750949695742695 27 0.99969243268554941
		3 25 9.7392995527161502e-08 26 0.00096645163667053553 27 0.99903345097033391
		3 25 1.0011049243834437e-07 26 0.0045476238587713047 27 0.99545227603073627
		3 25 1.0305648406439122e-07 26 0.025962111995657747 27 0.97403778494785809
		3 25 1.2054750444878675e-07 26 0.08291862708401794 27 0.9170812523684776
		3 25 1.1890140561317029e-07 26 0.22188619070086762 27 0.77811369039772693
		3 25 1.7426824402522982e-07 26 0.37750120104038437 27 0.62249862469137174
		3 25 5.1299419921897361e-07 26 0.53889087549742343 27 0.4611086115083774
		3 25 1.2409550947523673e-05 26 0.71242059462870277 27 0.28756699582034961
		3 25 0.00063687038401302656 26 0.92119803676201506 27 0.078165092853971968
		3 25 0.0085171884269729086 26 0.98248767444172658 27 0.0089951371313005731
		3 25 0.039644918901276395 26 0.95948842623265262 27 0.00086665486607102177
		3 25 0.14068358003245862 26 0.85925142118855169 27 6.499877898961388e-05
		3 1 0.00095457207986136491 25 0.36470010388304397 26 0.63434532403709465
		3 1 0.009641285809744873 25 0.6479697900763044 26 0.34238892411395083
		3 1 0.04837542311700168 25 0.84196682731332195 26 0.10965774956967642
		3 1 0.16194879281135385 21 0.067036954684759509 25 0.77101425250388667
		3 1 0.19270496376556084 21 0.031973232853307172 25 0.77532180338113188
		3 1 0.27741605265097974 2 0.048294523637251452 25 0.67428942371176892
		3 3 0.11832387296721425 6 0.69668124257044661 10 0.18499488446233908;
	setAttr ".wl[500:666].w"
		3 3 0.2944456761437903 4 0.32573783848429128 6 0.37981648537191837
		3 3 0.49336995441933557 4 0.23684307391970183 6 0.26978697166096255
		3 3 0.3468136729037094 4 0.61176208398816834 6 0.04142424310812224
		3 3 0.59365349600874906 4 0.039550850039059532 6 0.36679565395219138
		3 6 0.64623602060247776 7 0.25005460250008299 10 0.10370937689743924
		3 2 0.080804917945459256 3 0.43221459508673948 6 0.48698048696780111
		3 3 0.20434025092971445 6 0.66681635219150082 10 0.12884339687878482
		3 1 0.20703183897271105 2 0.50832619479681151 3 0.28464196623047738
		3 1 0.22669121804202336 2 0.44300195643911455 3 0.33030682551886204
		3 1 0.59907085074531474 2 0.25032342185077971 29 0.15060572740390563
		3 0 0.28907717420962231 1 0.40999637631361258 29 0.30092644947676517
		3 1 0.4000240068240164 14 0.055035641758317148 29 0.5449403514176665
		3 1 0.76530046404644037 14 0.16005601203914219 29 0.074643523914417503
		3 3 0.2119057622565558 4 0.21510033721377966 6 0.57299390052966448
		3 6 0.40862788460069627 7 0.58060510027079126 10 0.010767015128512483
		3 3 0.35469547399206658 4 0.4146209268101525 6 0.23068359919778086
		3 2 0.056626738209286535 3 0.25140811819544745 6 0.69196514359526595
		3 3 0.12339827222854834 4 0.078263080246912614 6 0.79833864752453909
		3 3 0.23821201223830143 4 0.10219708794491025 6 0.65959089981678831
		3 3 0.11719178140089909 4 0.004088070079999717 6 0.8787201485191013
		3 2 0.0095695220776401482 3 0.29590827892999283 6 0.694522198992367
		3 3 0.28501773023328791 4 0.041288526073525102 6 0.67369374369318702
		3 3 0.077248743548237853 4 0.020240210568190684 6 0.90251104588357145
		3 3 0.29431295920799189 4 0.25113121366923558 6 0.45455582712277248
		3 6 0.3754973980898052 7 0.55052330746006384 10 0.073979294450131058
		3 6 0.28639846303245475 7 0.71309967312685119 10 0.00050186384069426438
		3 6 0.33382291117561352 7 0.51571338058608085 10 0.15046370823830554
		3 3 0.003849181779270688 6 0.92559969794108021 7 0.070551120279649174
		3 3 0.003952005731776365 6 0.93243941868322722 7 0.06360857558499633
		3 3 0.0011410942563516964 6 0.88063647294602387 7 0.11822243279762437
		3 6 0.41995861768414522 7 0.57890570795277851 10 0.0011356743630762313
		3 6 0.4562760411963136 7 0.52782360353748459 10 0.015900355266201947
		3 6 0.30566784465313246 7 0.5628221633960192 10 0.13150999195084839
		3 6 0.7315536036683129 7 0.25708593182472356 10 0.011360464506963482
		3 6 0.7280877300657197 7 0.26252530144584085 10 0.0093869684884394858
		3 6 0.59726419565267741 7 0.40121667781888043 10 0.0015191265284422539
		3 6 0.087152824627894476 7 0.90907268875879088 10 0.003774486613314601
		3 6 0.075799255594666548 7 0.92337929740532609 10 0.00082144700000734308
		3 6 0.028293251503313775 7 0.97170268636910984 10 4.0621275763036246e-06
		3 6 0.047368290662963698 7 0.95262984666194062 8 1.8626750955641715e-06
		3 6 0.046015877512920252 7 0.95324709893733273 10 0.00073702354974701024
		3 6 0.017420604898832504 7 0.98257744689009885 8 1.9482110686323717e-06
		3 6 0.10850967804655992 7 0.89130291238714543 10 0.00018740956629476356
		3 6 0.051534543516895188 7 0.94716930472866445 10 0.0012961517544403461
		3 7 0.99076118179562134 8 0.0080615794794123823 9 0.0011772387249663278
		3 7 0.99850547144180901 8 0.0012330869830278345 9 0.0002614415751632296
		3 7 0.98899803350336357 8 0.009967200153725363 9 0.0010347663429110408
		3 7 0.99179402254580729 8 0.0069793742169006155 9 0.0012266032372920345
		3 7 0.99368591156170583 8 0.005402543501117363 9 0.00091154493717674693
		3 7 0.98220526184222468 8 0.015626790421040634 9 0.002167947736734694
		3 7 0.99517316078645157 8 0.0040538616429011539 9 0.00077297757064728322
		3 7 0.99187140586544376 8 0.0072738821195471471 9 0.00085471201500916685
		3 7 0.094860439535863664 8 0.82853910713799472 9 0.076600453326141751
		3 7 0.10764531880992569 8 0.78499424824090402 9 0.1073604329491703
		3 7 0.045798719415497624 8 0.86220331706148612 9 0.091997963523016119
		3 7 0.051949448020950154 8 0.83684049178619024 9 0.11121006019285966
		3 7 0.038351413835303015 8 0.86224233413889084 9 0.09940625202580608
		3 7 0.027395240737403573 8 0.87337837346234737 9 0.099226385800249006
		3 7 0.071871069225932421 8 0.81138751093999095 9 0.11674141983407667
		3 7 0.071961896236031914 8 0.8492496919940159 9 0.078788411769952341
		3 7 3.2059482134877391e-05 8 0.77486047095753829 9 0.22510746956032687
		3 7 4.8583818535606766e-06 8 0.6595893135888532 9 0.34040582802929337
		3 7 2.9379111852874606e-05 8 0.78060520961198521 9 0.21936541127616208
		3 7 4.6900953575793546e-06 8 0.67607736736826829 9 0.32391794253637407
		3 7 1.0562573225066882e-05 8 0.71446036258373713 9 0.2855290748430378
		3 7 4.2092370834208606e-05 8 0.78795431618457645 9 0.21200359144458947
		3 7 2.7648209478109413e-06 8 0.63775391614663646 9 0.3622433190324158
		3 7 4.2309659206985789e-05 8 0.73451745754516573 9 0.26544023279562712
		3 7 9.5051521840120698e-05 8 0.83572443506835026 9 0.16418051340980971
		3 7 0.00013974884510397964 8 0.83505452722534468 9 0.16480572392955134
		3 7 5.7630811813458222e-05 8 0.75747686375294476 9 0.24246550543524176
		3 7 1.1627752659885232e-05 8 0.73989713497299736 9 0.26009123727434286
		3 7 8.5379138529797527e-06 8 0.70769679424781506 9 0.29229466783833208
		3 7 2.3753385610895457e-05 8 0.67994126735918559 9 0.32003497925520347
		3 7 5.5371291617960413e-05 8 0.79333382253127616 9 0.20661080617710592
		3 7 0.00014729279294979571 8 0.83860517872177587 9 0.16124752848527429
		3 7 9.4175948237638487e-05 8 0.81673535936063757 9 0.18317046469112488
		3 6 0.5755226963832063 7 0.33388737784846184 10 0.090589925768331914
		3 1 0.47073385502124182 2 0.073255656016878085 29 0.45601048896187996
		3 1 0.67432533482997348 2 0.09329958493055282 29 0.23237508023947359
		3 1 0.64370990481100676 14 0.098165798349964334 29 0.25812429683902899
		3 0 0.0041353446301703543 29 0.57912020726960345 30 0.41674444810022626
		3 0 0.034385058030407964 29 0.65782575228351658 30 0.30778918968607549
		3 0 0.032078134436946064 1 0.17510301443721318 29 0.79281885112584072
		3 1 0.075301888189508406 29 0.88372800855281941 30 0.040970103257672204
		3 0 0.011677030751837004 29 0.35757284492466701 30 0.63075012432349598
		3 0 0.0031846123467221417 29 0.26504919139367733 30 0.73176619625960049
		3 0 0.00060767132556538981 29 0.34794570065071329 30 0.65144662802372122
		3 29 0.21064985246803228 30 0.78931672426741917 31 3.3423264548390127e-05
		3 29 0.013632900097690253 30 0.96226420825710923 31 0.024102891645200492
		3 29 0.0020580476041104395 30 0.9558494486252519 31 0.042092503770637613
		3 29 0.011563855422337545 30 0.95358135210199535 31 0.034854792475667119
		3 29 0.0024036171118238889 30 0.95550027600261622 31 0.042096106885559849
		3 29 1.2618970600362513e-07 30 0.34787448110368252 31 0.65212539270661152
		3 29 1.2343472168594548e-07 30 0.39832320107283525 31 0.60167667549244319
		3 29 1.1587031870827903e-06 30 0.47650345938730976 31 0.52349538190950318
		3 29 4.8374790903582247e-07 30 0.47077098766923375 31 0.52922852858285718
		3 29 1.0059528546040371e-07 30 0.0072601901389714868 31 0.99273970926574295
		3 29 1.9642438110348386e-07 30 0.019546136153922117 31 0.98045366742169682
		3 29 7.8555902656285714e-08 30 0.011227864831490093 31 0.98877205661260725
		3 29 1.5579600068746332e-07 30 0.025859190965883867 31 0.97414065323811549
		3 0 0.26109799955540636 29 0.4331070907116456 30 0.30579490973294821
		3 0 0.10270291584891737 29 0.49602052503306199 30 0.40127655911802068
		3 0 0.35281380004820401 29 0.4489539030895382 30 0.19823229686225785
		3 0 0.062096007144385609 29 0.68265180307258433 30 0.25525218978303005
		3 0 0.0011451975032505117 29 0.19866716372883708 30 0.80018763876791232
		3 0 0.029765650523602211 29 0.44707873127757769 30 0.52315561819882006
		3 29 8.0196270672157433e-05 30 0.92980973962627977 31 0.07011006410304807
		3 29 0.048291872433325146 30 0.94191689048339944 31 0.0097912370832755648
		3 29 2.00537777215381e-07 30 0.40071428577099266 31 0.59928551369123018
		3 29 1.8174233806757104e-06 30 0.42992256572562954 31 0.57007561685098984
		3 29 2.3982741402210591e-07 30 0.044195351622179392 31 0.9558044085504066
		3 29 3.4174875450371484e-08 30 0.002789328468895414 31 0.99721063735622906
		3 29 2.2284150668410998e-08 30 0.00025770729215118235 31 0.99974227042369823
		3 29 1.0462140603882297e-07 30 0.0019921316115916491 31 0.99800776376700229
		3 29 2.9684845480389288e-08 30 0.00019645802250711384 31 0.99980351229264741
		3 29 1.1132505233523146e-07 30 0.00078011435687030169 31 0.9992197743180774
		3 29 3.7983278963795201e-08 30 0.0010537703207924144 31 0.99894619169592858
		3 29 1.4699880008781905e-07 30 0.0047903335859498172 31 0.99520951941525027
		3 29 4.6889486071846195e-08 30 0.00060970483354402035 31 0.99939024827696987
		3 29 1.3024118087097354e-07 30 0.0035873920911977109 31 0.99641247766762131
		3 29 1.3199947804685678e-07 30 0.0022100971394632459 31 0.99778977086105869
		3 29 3.8582866998795337e-08 30 0.0010233174484420254 31 0.99897664396869112
		3 29 6.5119893470387967e-08 30 0.00035014635069110194 31 0.99964978852941544
		3 29 1.6135586750749687e-08 30 0.00012508258500950692 31 0.9998749012794037
		3 29 6.04207083230496e-08 30 0.00048043178687931802 31 0.99951950779241228
		3 29 1.2582025382606694e-08 30 0.00034427171095389688 31 0.99965571570702072
		3 29 8.5440832216737364e-08 30 0.0013185246131507075 31 0.99868138994601707
		3 29 1.8585557616559321e-07 30 0.0091151666723941205 31 0.99088464747202976
		3 29 7.895666987827953e-08 30 0.0018421730976641974 31 0.99815774794566581
		3 2 0.044197123861655065 3 0.1371971893314336 6 0.81860568680691137
		3 3 0.026942386589505398 6 0.95774055590067919 7 0.015317057509815312
		3 3 0.0090610488367419105 6 0.96733739165365928 7 0.023601559509598885
		3 3 0.031051814605721591 4 0.020769458170810277 6 0.94817872722346808
		3 3 0.31598330152461435 4 0.32634623153357473 6 0.35767046694181087
		3 3 0.37917483490918835 4 0.49013233896886016 6 0.13069282612195154
		3 6 0.90119922542753272 7 0.087974794913161874 10 0.0108259796593055
		3 3 0.037656471848537855 6 0.94565983081666516 7 0.016683697334796927
		3 2 0.0075166804364693966 3 0.14562015476371945 6 0.84686316479981116
		3 3 0.048332311346003153 6 0.86055677689488241 7 0.091110911759114441
		3 3 0.040847124815477975 6 0.92576904378394831 7 0.033383831400573744
		3 2 0.01547970138955526 3 0.14661141966810853 6 0.83790887894233623
		3 0 0.016514273230937921 29 0.44582475407174477 30 0.53766097269731727
		3 0 0.025440235298362569 29 0.3986439913484085 30 0.57591577335322908
		3 0 0.078476103789528379 29 0.4401174359938913 30 0.48140646021658018
		3 0 0.14195864379791065 29 0.48392226329321197 30 0.37411909290887752
		3 0 0.0076340120830989877 29 0.5002628012990058 30 0.49210318661789537
		3 0 0.00049573250476923978 29 0.35360085526376012 30 0.64590341223147074
		3 29 0.09321944962808372 30 0.90620281531929647 31 0.00057773505261981141
		3 29 0.19567985663657642 30 0.80400112222681042 31 0.00031902113661314138
		3 0 0.0027263695728185398 29 0.33742579810582313 30 0.65984783232135813
		3 0 0.00073331336019712471 29 0.21489364408878814 30 0.78437304255101481
		3 29 0.10733696688482083 30 0.89246481253937371 31 0.00019822057580547891
		3 29 0.046901266170064668 30 0.95251527480236853 31 0.00058345902756667045
		3 29 8.3354140585433609e-08 30 0.14983046417160772 31 0.85016945247425169
		3 29 1.3374624220425841e-07 30 0.22517045407624217 31 0.77482941217751555
		3 29 1.8472965349446157e-07 30 0.28986878090489598 31 0.71013103436545044
		3 29 3.1988429190274731e-07 30 0.31592537359583645 31 0.68407430651987167
		3 29 3.3763751465825993e-07 30 0.27140942779595112 31 0.72859023456653427
		3 29 7.8641349899771605e-08 30 0.15366089465542482 31 0.84633902670322525
		3 29 0.00015519039111737808 30 0.73605819228158764 31 0.26378661732729503
		3 29 1.8215525175399639e-05 30 0.65766282289565414 31 0.34231896157917063
		3 29 2.6941116295491792e-06 30 0.66292207458489338 31 0.33707523130347722
		3 29 1.8811683092495019e-07 30 0.55184379975979159 31 0.44815601212337747
		3 29 5.480565687174154e-07 30 0.58489088624593266 31 0.41510856569749865
		3 29 6.5309635901045299e-06 30 0.62544009698154968 31 0.37455337205486022
		2 7 0.011022887379571019 8 0.86513434303101078;
	setAttr ".wl[666:833].w"
		1 9 0.1238427695894181
		3 7 0.0073680687507142704 8 0.87545237057928882 9 0.11717956066999684
		3 7 0.010835715508963726 8 0.86273062331225914 9 0.12643366117877722
		3 7 0.0090599656351558425 8 0.86419019278906006 9 0.12674984157578414
		3 7 0.0046694700288371655 8 0.87066137780578023 9 0.12466915216538259
		3 7 0.0041931359115661669 8 0.87224698237461895 9 0.12355988171381484
		3 7 0.0038659709474142753 8 0.8474008260904321 9 0.1487332029621535
		3 7 0.0066282642644382309 8 0.82889651191650648 9 0.16447522381905527
		3 7 0.28604535628646083 8 0.66370967200021225 9 0.050244971713326869
		3 7 0.24009682475699623 8 0.70054653023936631 9 0.059356645003637569
		3 7 0.14918370768498129 8 0.7653023591825231 9 0.085513933132495626
		3 7 0.24327744106534305 8 0.66312892133809409 9 0.093593637596563029
		3 7 0.28923602631509598 8 0.61833778216856006 9 0.092426191516343792
		3 7 0.39617160786409683 8 0.52894290979499281 9 0.074885482340910206
		3 7 0.20079996721845209 8 0.71853576372311712 9 0.080664269058430757
		3 7 0.39259460732886881 8 0.55771532716305561 9 0.049690065508075532
		3 6 0.009447265411805043 7 0.99054765570717862 8 5.078881016294241e-06
		3 6 0.0026986199817108907 7 0.99729634739714135 8 5.0326211476680062e-06
		3 6 0.0028324074113867306 7 0.99716503611509144 8 2.5564735217531474e-06
		3 6 0.0053572751404503509 7 0.99464084694190547 8 1.8779176441116596e-06
		3 6 0.013321042252899207 7 0.98667447830288324 10 4.4794442177260636e-06
		3 6 0.0078668716632350633 7 0.99212719564175667 8 5.9326950082841834e-06
		3 6 0.020117210727832454 7 0.97987831136172354 8 4.4779104440174194e-06
		3 6 0.02439492841098825 7 0.97560062325276153 8 4.4483362502408041e-06
		3 6 0.2494392616591444 7 0.74957309519869275 10 0.0009876431421628883
		3 6 0.22617769477789115 7 0.76672888908496606 10 0.0070934161371429679
		3 6 0.17512427041600584 7 0.80767923762874216 10 0.017196491955251986
		3 6 0.19947278651613159 7 0.76609347573152187 10 0.034433737752346552
		3 6 0.21702898947124288 7 0.76052691935036287 10 0.022444091178394257
		3 6 0.1366932012580229 7 0.86155490835938553 10 0.001751890382591708
		3 6 0.086938932897601628 7 0.91305741307888377 10 3.6540235146037914e-06
		3 6 0.17438710627987514 7 0.82560971236092717 10 3.1813591975518825e-06
		3 1 0.43092837571018983 2 0.46321389968135551 3 0.10585772460845468
		3 0 0.23756994759971892 1 0.41387864329423124 2 0.3485514091060497
		3 2 0.33321492631688276 3 0.52091780323523151 6 0.14586727044788569
		3 2 0.26554134044083805 3 0.36649083330632032 6 0.36796782625284175
		3 2 0.22217776787919843 3 0.35802168015373542 6 0.41980055196706623
		3 0 0.0724579033883129 1 0.1807086077220412 29 0.74683348888964585
		3 1 0.022818003894069783 29 0.79379788876784152 30 0.18338410733808869
		3 1 0.11257642461945302 29 0.78069391633477425 30 0.10672965904577278
		3 0 0.42140890127272246 1 0.25981250143632428 29 0.31877859729095326
		3 0 0.46580378345822676 1 0.21031678907644949 29 0.32387942746532372
		3 0 0.27427287460337058 1 0.21061185316932693 29 0.51511527222730247
		3 29 0.0041785654532918168 30 0.98509895421154892 31 0.010722480335159231
		3 29 0.021738414827066576 30 0.97107458693338999 31 0.007186998239543451
		3 29 0.066895077177563766 30 0.92843481320823007 31 0.0046701096142062557
		3 29 0.17077090409077425 30 0.82848999447155514 31 0.00073910143767056964
		3 29 0.077144739721897435 30 0.92077779354889444 31 0.002077466729207967
		3 29 0.023007805065055866 30 0.97255972924532674 31 0.0044324656896172912
		3 29 1.5753929139125025e-06 30 0.76581572576663315 31 0.23418269884045292
		3 29 8.6202929520893333e-05 30 0.847563094979776 31 0.15235070209070306
		3 29 0.00076433259592439647 30 0.85569670131762088 31 0.14353896608645458
		3 29 0.0057497563224196743 30 0.92214976793657233 31 0.072100475741008085
		3 29 0.00076554744837091656 30 0.86660605407687741 31 0.13262839847475169
		3 29 3.0708538904202972e-05 30 0.81667479775183915 31 0.18329449370925668
		3 29 2.2450106703350871e-07 30 0.14704792573888614 31 0.85295184976004679
		3 29 2.2779038410679722e-07 30 0.12839725219895629 31 0.87160252001065963
		3 29 1.2866083743907505e-07 30 0.080138585922102656 31 0.9198612854170598
		3 29 4.8947955461076963e-08 30 0.025158055961773763 31 0.97484189509027075
		3 29 1.1132893551218901e-07 30 0.047106564177920356 31 0.95289332449314401
		3 29 1.8602161866833953e-07 30 0.082449763332651138 31 0.91755005064573003
		3 6 0.00092528705642431607 7 0.99906488217341849 8 9.8307701571551697e-06
		3 6 0.001442177401706543 7 0.99854606809650759 8 1.1754501785954067e-05
		3 6 0.0040193252017359732 7 0.99597099339557782 8 9.681402686263423e-06
		3 6 0.0029059641194268877 7 0.99708148750509207 8 1.2548375480964474e-05
		3 6 0.0010941554888325093 7 0.99889311328895025 8 1.2731222217378869e-05
		3 6 0.00043453541418948333 7 0.99955607226516641 8 9.3923206441373241e-06
		3 6 0.00019017703989580832 7 0.99980368759202876 8 6.1353680755054399e-06
		3 6 0.00033806881721291503 7 0.99965560989649527 8 6.3212862919210427e-06
		3 7 0.77873200157484734 8 0.20140806420400625 9 0.019859934221146437
		3 7 0.70816279219782208 8 0.26978422349812636 9 0.022052984304051681
		3 7 0.61749006629837722 8 0.35225172493579615 9 0.030258208765826682
		3 7 0.59199552876768902 8 0.36472797655209049 9 0.043276494680220448
		3 7 0.67681762792771061 8 0.28064193851927999 9 0.042540433553009481
		3 7 0.72700117142714449 8 0.23571151376987634 9 0.037287314802979123
		3 7 0.81549225207612497 8 0.16004932120839371 9 0.024458426715481232
		3 7 0.66465959891958271 8 0.29908133306593337 9 0.036259068014483926
		3 1 0.46675277586327762 2 0.19969629070677156 29 0.33355093342995068
		3 1 0.44982091271086844 2 0.39999432217355668 29 0.15018476511557483
		3 1 0.23482960096131161 2 0.46263694116665033 3 0.30253345787203806
		3 3 0.37004674131028398 4 0.52479542533016721 6 0.10515783335954886
		3 6 0.83704107504285896 7 0.14473213556118322 10 0.01822678939595777
		3 3 0.023528751869493211 6 0.93248532001003026 7 0.043985928120476601
		3 3 0.098591497696918245 4 0.080228564635536168 6 0.8211799376675456
		3 6 0.84691928181786791 7 0.10927531258151643 10 0.043805405600615674
		3 3 0.085240410750084789 4 0.078730269607024422 6 0.83602931964289073
		3 3 0.18443081975130218 4 0.16740679387021909 6 0.64816238637847867
		3 7 0.93042843030849076 8 0.060870279227306985 9 0.0087012904642022777
		3 7 0.9729214794761728 8 0.023107310835911606 9 0.0039712096879156245
		3 7 0.94433520044492381 8 0.04760399138110382 9 0.0080608081739724172
		3 7 0.92283832629850238 8 0.066375238186598962 9 0.010786435514898716
		3 7 0.88746929637056926 8 0.098629947291897183 9 0.01390075633753355
		3 7 0.88543915596625622 8 0.10389985791578908 9 0.010660986117954702
		3 7 0.93436377820900318 8 0.060011370215227809 9 0.005624851575769081
		3 7 0.92794154789965022 8 0.064290137108402992 9 0.0077683149919467636
		3 6 3.9576456032252951e-05 7 0.99980886726271534 8 0.00015155628125222988
		3 7 0.99984230493674286 8 0.00012574623771754201 9 3.1948825539474088e-05
		3 7 0.99988810463516242 8 8.8143909137907466e-05 9 2.3751455699610615e-05
		3 6 3.9760164174930533e-05 7 0.99984258491320011 8 0.00011765492262502061
		3 6 0.00014117083395769533 7 0.9997456175931585 8 0.00011321157288388563
		3 6 0.00030463779442564448 7 0.99960870974606542 8 8.6652459508869075e-05
		3 6 0.00051162719614129002 7 0.99944787739491225 8 4.0495408946312317e-05
		3 6 0.00012340568000760672 7 0.99977046071221232 8 0.00010613360777995082
		3 0 0.11904321362455141 1 0.29613017829828814 29 0.58482660807716047
		3 0 0.25530620149786015 1 0.22192184906864715 29 0.5227719494334927
		3 0 0.15181566206286118 29 0.59532169663576584 30 0.25286264130137293
		3 0 0.0467735749388688 29 0.53242096156384844 30 0.42080546349728271
		3 0 0.0064594038285815643 29 0.43164324855080355 30 0.56189734762061483
		3 0 0.00032056851507414498 29 0.2889307287104067 30 0.71074870277451918
		3 29 0.12286840801853609 30 0.87492836185263756 31 0.0022032301288264031
		3 29 0.027726219938985906 30 0.94994673517819073 31 0.022327044882823419
		3 29 0.0024279963557683449 30 0.88011704241185806 31 0.11745496123237353
		3 29 5.4676348306786282e-05 30 0.66250395492972991 31 0.33744136872196345
		3 29 1.627788571999496e-06 30 0.42746755319545693 31 0.57253081901597114
		3 29 1.9372821781367482e-07 30 0.20736146961723778 31 0.79263833665454442
		3 29 4.9351047305596644e-08 30 0.048941192382558243 31 0.95105875826639441
		3 29 3.0711238631259879e-08 30 0.0060430223897329051 31 0.99395694689902858
		3 29 1.5074289248552246e-08 30 0.00053550809436182887 31 0.99946447683134909
		3 29 2.2072328888384308e-08 30 0.00015256987137691956 31 0.99984740805629424
		3 29 6.8769655641276408e-08 30 0.00033552860738928874 31 0.99966440262295497
		3 29 1.2397947727853915e-07 30 0.0012965742750955368 31 0.9987033017454271
		3 29 1.6301182466266048e-07 30 0.0063247048043620661 31 0.9936751321838132
		3 29 2.1155095011370728e-07 30 0.033091315208514424 31 0.9669084732405353
		3 29 2.4265972256446633e-07 30 0.10305681239234109 31 0.89694294494793636
		3 29 2.5043064787316859e-07 30 0.26680810422031526 31 0.7331916453490368
		3 29 2.8605311507973743e-07 30 0.45247391401123821 31 0.54752579993564665
		3 29 4.5421537728340019e-07 30 0.63720724040883137 31 0.36279230537579132
		3 29 6.1938134582498639e-06 30 0.83602834425522354 31 0.16396546193131811
		3 29 0.00025294709985748432 30 0.95580894169820729 31 0.04393811120193504
		3 29 0.0065108865583132182 30 0.9861065613979364 31 0.0073825520437504726
		3 29 0.038558257428452952 30 0.9606879807195936 31 0.00075376185195347926
		3 0 5.1172620184568798e-05 29 0.15397549278270231 30 0.84597333459711299
		3 0 0.0017078777499954126 29 0.38747668325723911 30 0.61081543899276547
		3 1 0.011474454804477417 29 0.66093236833670799 30 0.32759317685881451
		3 1 0.046176707825259837 29 0.84885731106355344 30 0.10496598111118682
		3 1 0.13725191881743512 29 0.84307371657177366 30 0.019674364610791417
		3 1 0.22531796525848874 2 0.014072414558060619 29 0.76060962018345069
		3 1 0.31178090424545979 2 0.045310513178643798 29 0.64290858257589656
		3 3 0.14284598642251031 10 0.7516242378387743 11 0.10552977573871547
		3 3 0.24171083251394077 4 0.20188813749320161 10 0.55640102999285768
		3 3 0.60213773146377536 4 0.19335749243254871 10 0.20450477610367596
		3 3 0.4634789820882369 4 0.4754655512517158 10 0.061055466660047353
		3 3 0.7375225409552032 4 0.034721815326125803 10 0.22775564371867091
		3 6 0.089503777024537531 10 0.66055532253858895 11 0.24994090043687356
		3 2 0.071189590336651412 3 0.54823554923919737 10 0.38057486042415128
		3 3 0.22622273192121281 10 0.64896598021990826 11 0.12481128785887886
		3 3 0.24868035779259656 4 0.16583942367834198 10 0.58548021852906151
		3 6 0.0072583707700654048 10 0.42175641914691148 11 0.57098521008302305
		3 3 0.33834792701198346 4 0.29829228750785591 10 0.36335978548016051
		3 2 0.044774174463469277 3 0.31999281806974206 10 0.63523300746678879
		3 3 0.26840844491001181 4 0.047997714854839349 10 0.6835938402351488
		3 3 0.41422189152791811 4 0.071782076976159973 10 0.51399603149592188
		3 3 0.33062736670211007 4 0.0026010883587213201 10 0.66677154493916846
		3 2 0.0074589518602985331 3 0.52288931789840254 10 0.46965173024129891
		3 3 0.50625717553991101 4 0.031723757643712158 10 0.462019066816377
		3 3 0.24330111785506908 4 0.010896400543526648 10 0.74580248160140417
		3 3 0.38628941422818247 4 0.18408382943837179 10 0.42962675633344566
		3 6 0.080242558626952828 10 0.38437628311013378 11 0.53538115826291333
		3 6 0.00032616041694944029 10 0.31753863584865533 11 0.68213520373439507
		3 6 0.11755082107752614 10 0.36356154655815659 11 0.51888763236431723
		3 3 0.035632269800217144 10 0.88935424949581166 11 0.075013480703971125
		3 3 0.02673782267464022 10 0.90937842170358507 11 0.063883755621774702
		3 3 0.021096175116351385 10 0.85753359532150053 11 0.12137022956214812
		3 6 0.0021373444258213315 10 0.45737869544130333 11 0.54048396013287536
		3 6 0.021669002672695985 10 0.48299575379763432 11 0.49533524352966968
		3 6 0.12766125140987097 10 0.31100554653473528 11 0.56133320205539383
		3 3 0.0084909881817637426 10 0.72909982568567133 11 0.26240918613256503
		1 6 0.011385400272855098;
	setAttr ".wl[833:999].w"
		2 10 0.73737948964497047 11 0.25123511008217436
		3 3 0.0017765864228082976 10 0.60941670223840161 11 0.38880671133878997
		3 6 0.0053275404634593581 10 0.08730130207931433 11 0.9073711574572263
		3 6 0.0020752775993023117 10 0.090914766621701379 11 0.90700995577899635
		3 6 3.2959263939921758e-06 10 0.035084970114694011 11 0.96491173395891194
		3 10 0.067889842216321383 11 0.93210713206240581 12 3.0257212728303936e-06
		3 6 0.0017190458154188442 10 0.048292093506937438 11 0.94998886067764376
		3 10 0.024965846380930544 11 0.97503155708405609 12 2.5965350133695333e-06
		3 6 0.00059527285612206396 10 0.14362758755646832 11 0.85577713958740964
		3 6 0.0011854151961929332 10 0.054840119027113832 11 0.94397446577669319
		3 11 0.98988988357674912 12 0.0087896518843986488 13 0.0013204645388520926
		3 11 0.99815652589660542 12 0.0015213826399190209 13 0.00032209146347549175
		3 11 0.98852831300265043 12 0.010331938753379882 13 0.0011397482439697354
		3 11 0.99106036764371586 12 0.0075964589323695509 13 0.001343173423914532
		3 11 0.9929204705968081 12 0.0060453667330190438 13 0.0010341626701728388
		3 11 0.98143541063590534 12 0.016231560475910071 13 0.0023330288881845507
		3 11 0.99452835675663265 12 0.004596437057255774 13 0.00087520618611177964
		3 11 0.99123104734492995 12 0.0077968965646007605 13 0.00097205609046935315
		3 11 0.093896840253315253 12 0.83056725650813523 13 0.075535903238549501
		3 11 0.10628756689215652 12 0.78743350157692238 13 0.10627893153092106
		3 11 0.045431296060328662 12 0.87066040659144406 13 0.083908297348227329
		3 11 0.051481530329680877 12 0.83509833983996151 13 0.11342012983035754
		3 11 0.037632277173463222 12 0.86333933613076586 13 0.09902838669577077
		3 11 0.027096036098674045 12 0.8729310700565418 13 0.099972893844784208
		3 11 0.071140747584512179 12 0.81173357692840986 13 0.11712567548707786
		3 11 0.071426868816928057 12 0.85644914574442499 13 0.072123985438647065
		3 11 2.2669984197787761e-05 12 0.78163215861758506 13 0.21834517139821721
		3 11 3.1110441850232951e-06 12 0.7344713140921425 13 0.26552557486367251
		3 11 2.2331154329718012e-05 12 0.76204592394245985 13 0.23793174490321059
		3 11 3.7107130366368474e-06 12 0.7301018479893403 13 0.26989444129762291
		3 11 7.0055033276692721e-06 12 0.75858189038092561 13 0.24141110411574679
		3 11 3.0786653846785064e-05 12 0.77330000711380775 13 0.22666920623234554
		3 11 1.9235203188736769e-06 12 0.71721691778658003 13 0.28278115869310105
		3 11 2.8729178093996838e-05 12 0.79867707127334187 13 0.20129419954856395
		3 11 6.6817518519758306e-05 12 0.83975878088943701 13 0.1601744015920431
		3 11 9.9767341433669595e-05 12 0.81821365857868 13 0.18168657407988645
		3 11 4.0261096096071773e-05 12 0.7915298883908205 13 0.20842985051308346
		3 11 9.3660422889609291e-06 12 0.74692967433220603 13 0.25306095962550496
		3 11 6.4828840016647566e-06 12 0.73188738822228028 13 0.2681061288937181
		3 11 1.6250440124177763e-05 12 0.75969301280434298 13 0.24029073675553284
		3 11 3.8144904678401046e-05 12 0.82297699444885519 13 0.17698486064646646
		3 11 0.00010456372212266967 12 0.83083141078043576 13 0.16906402549744159
		3 11 6.6943029863473605e-05 12 0.80860060478371398 13 0.19133245218642256
		3 6 0.057249972506976152 10 0.60279485794729126 11 0.33995516954573263
		3 25 0.19687140374455214 26 0.80304633576377382 27 8.2260491674144854e-05
		3 25 0.012347580888531979 26 0.93478667981382468 27 0.05286573929764346
		3 25 7.1577392406690295e-08 26 0.33753496674610384 27 0.66246496167650382
		3 25 1.7371682685922869e-06 26 0.39797327777048658 27 0.6020249850612448
		3 25 4.6509231990918218e-07 26 0.38908677957118148 27 0.61091275533649858
		3 25 5.8348779344591857e-07 26 0.077501763519611855 27 0.92249765299259456
		3 25 3.2951401277729396e-07 26 0.045989530427906128 27 0.95401014005808116
		3 25 2.7275836990171631e-07 26 0.040312233486608305 27 0.95968749375502183
		3 25 1.1489160751180282e-07 26 0.025976050920891974 27 0.97402383418750049
		3 25 8.60957619088186e-08 26 0.34113255028911177 27 0.65886736361512643
		3 25 3.2497844478324121e-06 26 0.3650227008937294 27 0.63497404932182278
		3 25 1.5269224154176032e-07 26 0.0382117092734209 27 0.96178813803433771
		3 25 6.248178631861674e-07 26 0.084261693403503007 27 0.91573768177863379
		3 25 4.9558790833105317e-08 26 0.0043004781746062391 27 0.99569947226660305
		3 25 8.9935859094387988e-08 26 0.0037675052826882881 27 0.99623240478145259
		3 25 5.346046806303698e-08 26 0.0041695593222918067 27 0.99583038721724015
		3 25 8.9283033617007684e-08 26 0.00063805173700952355 27 0.99936185897995689
		3 25 2.3679049797226859e-07 26 0.029242896578666154 27 0.97075686663083582
		3 25 2.2437892687911675e-07 26 0.022486508828685203 27 0.97751326679238804
		3 25 6.8249719526663757e-08 26 0.0045450565249101705 27 0.99545487522537035
		3 25 1.0949087655535544e-07 26 0.0053673407965548732 27 0.99463254971256854
		3 25 9.4006634159567294e-08 26 0.001431235941416711 27 0.99856867005194927
		3 25 1.6371452923042533e-07 26 0.019410873739966663 27 0.98058896254550421
		3 25 6.1424277174094249e-08 26 0.0015969370667403759 27 0.99840300150898231
		3 25 2.614521422840241e-08 26 0.0017219877767826104 27 0.99827798607800322
		3 25 5.0433365814536766e-08 26 0.00038297604462727273 27 0.99961697352200696
		3 25 1.4138604476716996e-07 26 0.018017351276039911 27 0.98198250733791537
		3 25 9.6261351028555698e-08 26 0.005602741461194694 27 0.99439716227745423
		3 25 1.239335980713372e-07 26 0.0094294727882195135 27 0.99057040327818258
		3 25 1.9671148419833158e-07 26 0.020823056798951273 27 0.97917674648956454
		3 3 0.17343818187917404 10 0.78267801837207795 11 0.043883799748748134
		3 3 0.12134402951436052 10 0.86167135801597494 11 0.016984612469664543
		3 3 0.07813579314003391 10 0.89506602681830116 11 0.026798180041664867
		3 3 0.12486107214599311 10 0.86118129456452808 11 0.013957633289478742
		3 3 0.35165005040630581 4 0.25590805883137013 10 0.392441890762324
		3 3 0.4006552598049653 4 0.33679106885407101 10 0.2625536713409638
		3 3 0.01881111802602398 10 0.89448793403668814 11 0.086700947937287956
		3 3 0.089885323763451458 10 0.89323845134105329 11 0.016876224895495322
		3 2 0.0055475515564555513 3 0.29475685496916543 10 0.69969559347437893
		3 3 0.061431722303702883 10 0.84758805692805905 11 0.090980220768238126
		3 3 0.063310822373911169 10 0.9030578145985958 11 0.033631363027493068
		3 2 0.010968420860403493 3 0.21670284428602893 10 0.77232873485356757
		3 25 0.088260854212421705 26 0.91104216908079616 27 0.0006969767067821766
		3 25 3.2825280425895465e-07 26 0.14996505813495903 27 0.85003461361223687
		3 25 1.2572010906203396e-07 26 0.18683492049743924 27 0.81316495378245168
		3 25 9.0696045717427944e-08 26 0.24435091898105121 27 0.75564899032290311
		3 25 1.9138050681778119e-07 26 0.26194666993080284 27 0.73805313868869038
		3 25 3.3409131360849226e-07 26 0.22972004436805918 27 0.77027962154062724
		3 25 5.8497316179008169e-07 26 0.18685321004323346 27 0.81314620498360468
		3 25 4.4096995416206011e-05 26 0.56977349184641857 27 0.43018241115816536
		3 25 5.2547358516352895e-06 26 0.56106276496552898 27 0.4389319802986193
		3 25 1.2627498635670364e-07 26 0.47434802117747615 27 0.52565185254753755
		3 11 0.010835199805780247 12 0.87325799732269938 13 0.11590680287152025
		3 11 0.0071652933125531219 12 0.87067763874827864 13 0.12215706793916832
		3 11 0.010571627839815106 12 0.85978753188902202 13 0.12964084027116296
		3 11 0.0088812311496668378 12 0.86193835078029402 13 0.12918041807003913
		3 11 0.0045565064663967356 12 0.86884082718579703 13 0.12660266634780634
		3 11 0.0040957470039528236 12 0.88112563770298535 13 0.11477861529306181
		3 11 0.0037855513812603682 12 0.87651091525859548 13 0.11970353336014429
		3 11 0.006522319430444689 12 0.86408391433227361 13 0.12939376623728166
		3 11 0.28459556883371123 12 0.66549830512051866 13 0.049906126045769952
		3 11 0.23901340517586303 12 0.70145133556464401 13 0.059535259259493038
		3 11 0.14832866709321327 12 0.76426346649736943 13 0.087407866409417279
		3 11 0.2418791866054904 12 0.66312471724557953 13 0.094996096148930009
		3 11 0.28705728338690345 12 0.62071520037017547 13 0.092227516242920971
		3 11 0.39285465107668227 12 0.53298054427116215 13 0.074164804652155678
		3 11 0.19863114325574066 12 0.72196595331019953 13 0.07940290343405973
		3 11 0.39002101840840064 12 0.56057081958452104 13 0.04940816200707835
		3 10 0.014820566404999614 11 0.98517175162727544 12 7.6819677250477888e-06
		3 10 0.0041527392073757849 11 0.99584063477038709 12 6.6260222370520653e-06
		3 10 0.0037507085224373431 11 0.99624628218728317 12 3.009290279286199e-06
		3 10 0.0056914633828910512 11 0.99430627422836904 12 2.2623887398910033e-06
		3 10 0.01305561612853277 11 0.98693923464736966 12 5.1492240976771252e-06
		3 10 0.0087595570691217789 11 0.99122995310164352 12 1.0489829234581933e-05
		3 10 0.025618073780017816 11 0.97437328850881022 12 8.6377111718250011e-06
		3 10 0.035521461334545729 11 0.96447048405483182 12 8.0546106225058071e-06
		3 6 0.0023026671481598433 10 0.29707492206025327 11 0.70062241079158682
		3 6 0.012478262829347176 10 0.25407734218256595 11 0.733444394988087
		3 6 0.025469272059388363 10 0.17814130739543454 11 0.79638942054517714
		3 6 0.038745061608421491 10 0.20119551748280035 11 0.7600594209087782
		3 6 0.019223996665605279 10 0.22573285384748662 11 0.7550431494869082
		3 6 0.0014699982937997264 10 0.15177176551884275 11 0.84675823618735757
		3 3 3.14019037945617e-06 10 0.11039445041458834 11 0.88960240939503221
		3 3 5.9003541180489552e-06 10 0.21749612567122351 11 0.78249797397465848
		3 2 0.30433500069785668 3 0.578923334691265 10 0.11674166461087837
		3 2 0.22621700811633089 3 0.41632721433468733 10 0.35745577754898178
		3 2 0.18909355735217281 3 0.4331864437989163 10 0.37771999884891083
		3 25 0.023222248204580374 26 0.96754320149784445 27 0.009234550297575108
		3 25 0.060324673942285405 26 0.93356114921109312 27 0.0061141768466214802
		3 25 0.15878292335181665 26 0.84029349296306932 27 0.00092358368511414994
		3 25 1.3685487210805848e-07 26 0.1210998013052749 27 0.87890006183985303
		3 25 1.2943871052836145e-07 26 0.10914474199193638 27 0.89085512856935301
		3 25 2.5339158288609963e-07 26 0.09163016846510183 27 0.9083695781433152
		3 25 9.6401391993592989e-07 26 0.1475588599207418 27 0.85244017606533817
		3 25 6.6905930326537875e-07 26 0.11936515740711572 27 0.88063417353358109
		3 25 2.7064789226351294e-07 26 0.087403493540916713 27 0.91259623581119098
		3 10 0.00078458158878297909 11 0.99920239393004928 12 1.3024481167585513e-05
		3 10 0.0016448965485810353 11 0.99833737635937125 12 1.7727092047619531e-05
		3 10 0.0060513988765292679 11 0.99393208625391649 12 1.6514869554316404e-05
		3 10 0.0048182658023016023 11 0.99516248247199723 12 1.9251725701297201e-05
		3 10 0.0019285208345824097 11 0.99805382004681409 12 1.7659118603428139e-05
		3 10 0.00068140703379737449 11 0.99930631797967584 12 1.2274986526804866e-05
		3 10 0.00021838143011753203 11 0.99977380349619793 12 7.8150736844767167e-06
		3 10 0.00029754197010055183 11 0.9996946332937372 12 7.8247361622504875e-06
		3 11 0.77554155634694788 12 0.2042416278092393 13 0.020216815843812866
		3 11 0.70597664968706864 12 0.27163585109336663 13 0.022387499219564812
		3 11 0.61573064214605622 12 0.35327981218222115 13 0.030989545671722563
		3 11 0.59018535086286139 12 0.36523403992291414 13 0.044580609214224569
		3 11 0.67421414161084436 12 0.28260145700699157 13 0.043184401382164034
		3 11 0.72350365410739914 12 0.23905447590508946 13 0.037441869987511429
		3 11 0.8115990852332714 12 0.16374690754535862 13 0.024654007221369786
		3 11 0.66077290391886156 12 0.30297009158928701 13 0.036257004491851555
		3 3 0.46771164554173134 4 0.35754150090368142 10 0.17474685355458722
		3 3 0.025806827134479439 10 0.82606586584944031 11 0.14812730701608018
		3 3 0.080276821980377805 10 0.87824939548507686 11 0.041473782534545367
		3 3 0.19754221589670257 4 0.050456238783819073 10 0.75200154531947838
		3 3 0.066242310714591759 10 0.82806794925481542 11 0.10568974003059287
		3 3 0.15701111173769552 4 0.056343030130940969 10 0.78664585813136356
		3 3 0.26481659140326347 4 0.12414741927128151 10 0.611035989325455
		3 11 0.9278259526839957 12 0.063182824741738475 13 0.0089912225742659509
		3 11 0.9711590915285665 12 0.024645292111905956 13 0.0041956163595274843
		3 11 0.94210623323219556 12 0.049589174191636332 13 0.008304592576168111
		3 11 0.92083342724916539 12 0.068079544797392588 13 0.011087027953441984;
	setAttr ".wl[1000:1166].w"
		3 11 0.88574840528682874 12 0.099829957798400218 13 0.014421636914771035
		3 11 0.88408379033128459 12 0.10483091468071541 13 0.011085294988000007
		3 11 0.93277869399138369 12 0.061304525707886019 13 0.0059167803007302688
		3 11 0.92562480926451907 12 0.066293701769314706 13 0.0080814889661663687
		3 11 0.99968215348740552 12 0.00025482485567927468 13 6.3021656915136849e-05
		3 11 0.99973074731486311 12 0.00021543007860856095 13 5.3822606528223812e-05
		3 11 0.99980568383978485 12 0.00015350165765535078 13 4.0814502559920388e-05
		3 10 6.3751724447533436e-05 11 0.99972573586188462 12 0.00021051241366790225
		3 10 0.00027442399087326195 11 0.99953121814243195 12 0.00019435786669483407
		3 10 0.00057783878311520995 11 0.99927968151718405 12 0.00014247969970081055
		3 10 0.00087717148332051571 11 0.99905968940247802 12 6.3139114201497685e-05
		3 10 0.00016851222078459176 11 0.99965839238937082 12 0.00017309538984462927
		3 25 0.10902771884719042 26 0.88835197912879615 27 0.0026203020240134168
		3 25 0.00011575523724146546 26 0.58215675533182232 27 0.41772748943093613
		3 25 2.981082901741667e-06 26 0.36131838087370699 27 0.63867863804339142
		3 25 4.2999451905550467e-07 26 0.19842333478768995 27 0.80157623521779109
		3 25 6.616689727457988e-07 26 0.12561615697097386 27 0.87438318136005344
		3 25 6.3452479996424323e-07 26 0.088918394531525127 27 0.91108097094367491
		3 25 2.2197282673162987e-07 26 0.029007100652947759 27 0.97099267737422557
		3 25 4.3717218076477847e-08 26 0.0034739534460729773 27 0.996526002836709
		3 25 5.7817493144168901e-08 26 0.00030750949695742695 27 0.99969243268554941
		3 25 9.7392995527161502e-08 26 0.00096645163667053553 27 0.99903345097033391
		3 25 1.0011049243834437e-07 26 0.0045476238587713047 27 0.99545227603073627
		3 25 1.0305648406439122e-07 26 0.025962111995657747 27 0.97403778494785809
		3 25 1.2054750444878675e-07 26 0.08291862708401794 27 0.9170812523684776
		3 25 1.1890140561946042e-07 26 0.22188619067536328 27 0.77811369042323109
		3 25 1.7426824423973515e-07 26 0.37750120083525801 27 0.62249862489649777
		3 25 5.1299420449627898e-07 26 0.53889087605019181 27 0.46110861095560385
		3 10 0.052721295892189782 11 0.94725058875309309 12 2.8115354717195942e-05
		3 10 0.073155040946284222 11 0.92678445854056446 12 6.0500513151289609e-05
		3 10 0.10413082785466307 11 0.89572709035361664 12 0.000142081791720287
		3 10 0.12337166140451949 11 0.87642580949099014 12 0.00020252910449031832
		3 10 0.1015090663623465 11 0.89835108007779862 12 0.00013985355985476487
		3 10 0.058795199195155495 11 0.94115976764276821 12 4.5033162076218204e-05
		3 10 0.036032680425363707 11 0.963956187185668 12 1.1132388968315537e-05
		3 10 0.11766899753749023 11 0.88216030114547739 12 0.00017070131703238832
		3 10 0.081406960112746715 11 0.91851464367951619 12 7.839620773695661e-05
		3 10 0.048930094968875439 11 0.95104804899319406 12 2.1856037930717726e-05
		3 10 0.10758007180653291 11 0.89225683439149572 12 0.00016309380197138462
		3 10 0.071212769586786046 11 0.92871355619071827 12 7.3674222495520854e-05
		3 10 0.04080837804714324 11 0.95917194658342697 12 1.9675369429878114e-05
		3 6 2.1843765526134088e-05 10 0.072715816908222 11 0.92726233932625168
		3 6 4.9937869558576362e-05 10 0.10696931012384438 11 0.89298075200659721
		3 6 0.0001303243035836337 10 0.16938239096197408 11 0.83048728473444233
		3 6 0.00019895373186992068 10 0.2119862980747845 11 0.78781474819334563
		3 6 0.00013328014271274863 10 0.17008393640315672 11 0.82978278345413059
		3 6 4.0965037448164563e-05 10 0.092043476507838465 11 0.90791555845471339
		3 6 9.9679684516719022e-06 10 0.05323577182514825 11 0.94675426020640008
		3 6 0.00015738573524051583 10 0.1918910517157609 11 0.80795156254899858
		3 6 6.8235095684854896e-05 10 0.12187187638404773 11 0.87805988852026751
		3 6 1.751588797414496e-05 10 0.06698227899744863 11 0.93300020511457715
		3 6 0.00015585189668092887 10 0.18507072583541609 11 0.81477342226790317
		3 6 6.7322024077146029e-05 10 0.11566394646567635 11 0.88426873151024654
		3 6 1.707922571049687e-05 10 0.062307664576283103 11 0.9376752561980064
		3 10 0.05122192773181166 11 0.94875131007741942 12 2.6762190768981106e-05
		3 10 0.067994935499097589 11 0.93194967249737115 12 5.5392003531225497e-05
		3 10 0.08423362194608161 11 0.91563957224780101 12 0.00012680580611725551
		3 10 0.091942912977321836 11 0.90787687218884472 12 0.00018021483383339981
		3 10 0.075593327166610047 11 0.92428369405893074 12 0.00012297877445915735
		3 10 0.046780221188601749 11 0.9531801474849626 12 3.9631326435648607e-05
		3 10 0.030382198249895197 11 0.96960724872846848 12 1.0553021636258656e-05
		3 10 0.08745384288325557 11 0.91239746087852847 12 0.00014869623821605767
		3 10 0.06642561529941611 11 0.93350534509347571 12 6.903960710811549e-05
		3 10 0.042431465141707633 11 0.95754797517571244 12 2.0559682579900582e-05
		3 10 0.083802650549270108 11 0.91605065901625271 12 0.00014669043447708237
		3 10 0.061634284590146478 11 0.93829925936651526 12 6.6456043338196898e-05
		3 10 0.037917808910381913 11 0.96206398206686994 12 1.8209022748155794e-05
		3 25 2.6696130966809856e-06 26 0.30579514767512928 27 0.69420218271177414
		3 25 7.1614648003538397e-06 26 0.38712752688640573 27 0.61286531164879399
		3 25 2.0328030159879957e-05 26 0.4541749300971456 27 0.54580474187269457
		3 25 3.0788929284720102e-05 26 0.48302054744016937 27 0.51694866363054592
		3 25 1.9884343927252412e-05 26 0.43100039251112632 27 0.56897972314494649
		3 25 5.1533392151874144e-06 26 0.30745699916046504 27 0.69253784750031977
		3 25 7.2362657944145494e-07 26 0.21912502368725501 27 0.78087425268616539
		3 25 2.4096817119425492e-05 26 0.46739247435269898 27 0.53258342883018162
		3 25 9.5766594331067743e-06 26 0.37909087190126362 27 0.6208995514393032
		3 25 1.7659174963465265e-06 26 0.26511266151333535 27 0.73488557256916842
		3 25 2.4482190986832195e-05 26 0.46093927954782865 27 0.53903623826118452
		3 25 9.8344752688353999e-06 26 0.37167349562324886 27 0.62831666990148238
		3 25 1.8964119568331123e-06 26 0.25946993285266956 27 0.74052817073537369
		3 25 3.206795461669147e-06 26 0.30347917845862493 27 0.69651761474591345
		3 25 6.894513660420727e-06 26 0.35825593339906442 27 0.64173717208727499
		3 25 1.5605756319953704e-05 26 0.39619104398256205 27 0.60379335026111802
		3 25 2.182976571906881e-05 26 0.41305889528178419 27 0.58691927495249674
		3 25 1.4712060407846935e-05 26 0.38027227584910767 27 0.61971301209048435
		3 25 4.6184343209171221e-06 26 0.2965814746585973 27 0.70341390690708161
		3 25 1.0945638126753236e-06 26 0.23321246894160913 27 0.76678643649457812
		3 25 1.8179857581224285e-05 26 0.40297683838869403 27 0.59700498175372474
		3 25 8.3154236212922612e-06 26 0.35032598387816383 27 0.64966570069821483
		3 25 2.2022816846135971e-06 26 0.27491129768102246 27 0.72508650003729291
		3 25 1.7647453779733806e-05 26 0.39992725164316556 27 0.60005510090305469
		3 25 8.1084498433788192e-06 26 0.34215937440814931 27 0.6578325171420073
		3 25 2.2209213171521918e-06 26 0.26088134297320859 27 0.73911643610547428
		3 25 3.2241171036014972e-06 26 0.30660613542215315 27 0.69339064046074317
		3 25 7.2286546675202865e-06 26 0.35129148551791867 27 0.64870128582741382
		3 25 1.7182238670956041e-05 26 0.37113343784628861 27 0.62884937991504042
		3 25 2.4511434294251792e-05 26 0.37478493868320845 27 0.62519054988249723
		3 25 1.6304348677384053e-05 26 0.34655960028691379 27 0.65342409536440871
		3 25 4.8845259006008741e-06 26 0.27976834438401393 27 0.72022677109008548
		3 25 1.0591582903514539e-06 26 0.22718257589111976 27 0.77281636495058992
		3 25 1.9460626105751852e-05 26 0.36777574586455281 27 0.63220479350934145
		3 25 8.505733204025889e-06 26 0.33336680998976903 27 0.66662468427702681
		3 25 2.0306912408001326e-06 26 0.27091166926557575 27 0.72908630004318342
		3 25 2.0329681388383015e-05 26 0.3679815283729696 27 0.63199814194564197
		3 25 9.1397578259810572e-06 26 0.32828994949887835 27 0.67170091074329574
		3 25 2.3986177054058977e-06 26 0.25912175625925388 27 0.74087584512304072
		3 1 0.61237033143278152 18 0.35101489507640998 21 0.03661477349080855
		3 1 0.58693639919852025 14 0.06572899049297265 18 0.34733461030850704
		3 14 0.12001072541600467 18 0.67913997719970531 19 0.20084929738429
		3 14 0.061546229929146698 18 0.78333776544858469 19 0.15511600462226863
		3 1 0.17819421867793053 14 0.26838634039953119 18 0.55341944092253836
		3 1 0.31116125196687394 14 0.42838843505710256 18 0.26045031297602356
		3 14 0.0020487042723913319 18 0.36270106123239815 19 0.63525023449521056
		3 14 0.00037967451791906249 18 0.40530680731466318 19 0.59431351816741773
		3 14 8.0611261390824636e-06 18 0.039594569146411671 19 0.96039736972744927
		3 14 3.7806613025956934e-06 18 0.052289601006995673 19 0.94770661833170156
		3 14 1.7631141951302438e-07 18 0.00075726384433718707 19 0.99924255984424337
		3 14 1.099798371515302e-06 18 0.0025812740858588948 19 0.99741762611576956
		3 14 3.6047611745963258e-09 18 1.9751944147944775e-06 19 0.99999802120082393
		3 14 2.545411735108554e-08 18 2.3004465804386465e-05 19 0.99997697008007813
		3 14 0.18534131682670607 18 0.67562999088056563 19 0.13902869229272843
		3 1 0.30600408762773695 14 0.42397694204011671 18 0.27001897033214628
		3 14 0.0041568731555081846 18 0.38074605843653925 19 0.61509706840795264
		3 14 3.0869282923066558e-06 18 0.044470183580132008 19 0.95552672949157569
		3 14 2.9496527368256155e-07 18 0.00090326901355219523 19 0.99909643602117415
		3 14 6.3625462995407028e-09 18 4.4932955070914446e-06 19 0.99999550034194662
		3 14 0.021428700775492387 18 0.79082793668629936 19 0.18774336253820817
		3 14 0.011197527687036401 18 0.89612830784938413 19 0.092674164463579387
		3 1 0.32997763671023017 14 0.11306227655642026 18 0.5569600867333494
		3 14 0.00020663087847444772 18 0.45207611781695789 19 0.54771725130456761
		3 14 1.6995223249525649e-05 18 0.44202424039159871 19 0.5579587643851518
		3 14 3.8555743944791395e-06 18 0.075191426155922766 19 0.92480471826968269
		3 14 5.0110788394259146e-06 18 0.068841022137425559 19 0.93115396678373497
		3 14 6.5587597854679348e-07 18 0.0024467817300978315 19 0.99755256239392354
		3 14 2.2548586235603768e-06 18 0.0059237730468330663 19 0.9940739720945434
		3 14 2.6970624328347514e-08 18 3.1225294464587825e-05 19 0.99996874773491118
		3 14 2.0667530315225648e-07 18 0.00025695191683202566 19 0.99974284140786496
		3 1 0.019002067707057795 18 0.89141585794232037 19 0.089582074350621987
		3 1 0.38750615058786286 18 0.57478110766663815 21 0.037712741745499045
		3 14 7.5598444463442332e-05 18 0.48331676483712299 19 0.5166076367184137
		3 14 3.294034488271421e-06 18 0.082304913265503002 19 0.91769179270000878
		3 14 1.4331733854020057e-06 18 0.0047396933073932373 19 0.99525887351922127
		3 14 8.3729967306677022e-08 18 9.7994997414363325e-05 19 0.99990192127261823
		3 1 0.28664608596322316 14 0.26475396339904755 18 0.44859995063772923
		3 14 0.057714963643509212 18 0.74339943146385656 19 0.19888560489263427
		3 14 0.01637729965871091 18 0.84587551323597499 19 0.13774718710531425
		3 14 0.00076702507544844551 18 0.44180277839837923 19 0.55743019652617232
		3 14 1.9585954528011889e-05 18 0.42012112847777489 19 0.57985928556769717
		3 14 1.656173055607284e-05 18 0.080176512143677547 19 0.91980692612576642
		3 14 5.6432429792855557e-06 18 0.059965355102640276 19 0.94002900165438041
		3 14 4.1104883529167323e-07 18 0.0022967036565496959 19 0.99770288529461504
		3 14 2.8042480780409802e-06 18 0.0073758837261554419 19 0.99262131202576653
		3 14 7.9476809452034239e-09 18 8.3448365705851562e-06 19 0.99999164721574829
		3 14 1.222082132408911e-07 18 0.00014346998478881703 19 0.9998564078069978
		3 14 2.1007788710698015e-08 18 1.7622970354905418e-05 19 0.99998235602185637
		3 1 0.093485890286265971 14 0.099884290888978572 18 0.80662981882475537
		3 14 0.18763633221785128 18 0.72568701486051512 19 0.086676652921633568
		3 1 0.1056051149762369 14 0.3289662232367585 18 0.56542866178700468
		3 1 0.11785499996422007 14 0.39024400449743135 18 0.49190099553834871
		3 14 0.19960373640605952 15 0.065461708361727655 18 0.73493455523221285
		3 1 0.051012563290520951 14 0.079000877578736722 18 0.8699865591307423
		3 1 0.0673294475565301 14 0.025937981795481287 18 0.90673257064798851
		3 1 0.13254038600266141 14 0.041176955728261848 18 0.82628265826907676
		3 14 0.0023943673211506426 18 0.62492152149706437 19 0.37268411118178496
		3 14 0.0082471112576211203 18 0.600394681260077 19 0.39135820748230188
		3 14 0.022071472510748407 18 0.56278455776545455 19 0.41514396972379697
		2 14 0.042628583979702837 18 0.62353732191164035;
	setAttr ".wl[1166:1333].w"
		1 19 0.33383409410865683
		3 14 0.0082340593584054097 18 0.64048995313594626 19 0.35127598750564842
		3 14 0.0013690186158840903 18 0.69471931510549145 19 0.30391166627862443
		3 14 0.0013809576095118777 18 0.70502746217694434 19 0.29359158021354387
		3 14 0.0026700050557655194 18 0.70848101268989283 19 0.28884898225434158
		3 14 2.6011557666905962e-05 18 0.22160656892816272 19 0.77836741951417043
		3 14 0.00015248781184821369 18 0.23524805246093589 19 0.76459945972721588
		3 14 0.00022094796024982181 18 0.1516710479207479 19 0.84810800411900245
		3 14 0.00014761896926570296 18 0.15175632032740452 19 0.84809606070332988
		3 14 7.2495204067972836e-06 18 0.17582285319062832 19 0.82416989728896506
		3 14 4.490405925941442e-06 18 0.15004982011134732 19 0.84994568948272675
		3 14 3.7105606875708065e-06 18 0.21703667166927476 19 0.78295961777003764
		3 14 5.9243451979097351e-06 18 0.2308563466107674 19 0.76913772904403477
		3 14 1.6701413472085237e-06 18 0.016894459877444319 19 0.98310386998120836
		3 14 1.7236082125381781e-06 18 0.016950639930421344 19 0.98304763646136617
		3 14 6.8728074673633972e-07 18 0.006642673802339385 19 0.99335663891691395
		3 14 1.1992234674775938e-06 18 0.0088035662365772184 19 0.99119523453995528
		3 14 2.9031187162462752e-06 18 0.012835541041116743 19 0.98716155584016696
		3 14 4.9123750701726551e-06 18 0.026723941636129633 19 0.97327114598880027
		3 14 4.3170018446249687e-06 18 0.019279198397977943 19 0.98071648460017746
		3 14 3.2581625828801316e-06 18 0.02241804179814328 19 0.97757870003927394
		3 14 1.6317118315859604e-07 18 0.0003587847673928221 19 0.99964105206142406
		3 14 6.1229980861715542e-08 18 0.00017019617433319085 19 0.99982974259568591
		3 14 1.5521612213487151e-08 18 3.1926913526898603e-05 19 0.99996805756486096
		3 14 3.9995201912960833e-08 18 7.0764506989908947e-05 19 0.99992919549780823
		3 14 2.0995389704204735e-07 18 0.00030118244628575259 19 0.99969860759981721
		3 14 8.2368587789159986e-07 18 0.0013816126671757128 19 0.99861756364694632
		3 14 7.9790300123384473e-07 18 0.0014055635970767039 19 0.99859363849992222
		3 14 4.0627325817219561e-07 18 0.00075661278506727165 19 0.99924298094167463
		3 1 0.5576835550555419 14 0.16748048902154003 18 0.27483595592291793
		3 1 0.54124730757960771 14 0.29649116418568394 18 0.16226152823470857
		3 1 0.50938321640206019 14 0.35198552376994241 18 0.13863125982799754
		3 1 0.42155476026725575 14 0.25509768215977435 18 0.3233475575729699
		3 1 0.47815509186801536 14 0.1430450377626761 18 0.37879987036930857
		3 1 0.22129225703756825 14 0.10247662277216921 18 0.67623112019026255
		3 1 0.21955966741548175 18 0.74485585756772965 21 0.035584475016788804
		3 1 0.47504187600031378 18 0.48583714134926254 21 0.039120982650423602
		3 1 0.4584745423105322 18 0.13907670616084025 21 0.40244875152862752
		3 1 0.49505618091314502 18 0.065919262184435071 21 0.43902455690241998
		3 21 0.92216892260658212 22 0.049398739310314507 25 0.028432338083103421
		3 21 0.92646056915949782 22 0.028312098152934694 25 0.045227332687567352
		3 1 0.16841148480682591 21 0.58156129027215797 25 0.25002722492101609
		3 1 0.31981095616650934 21 0.45616437444354613 25 0.2240246693899445
		3 21 0.59308440559630504 22 0.40667358120478825 25 0.00024201319890671978
		3 21 0.65418565858212319 22 0.34574887252106135 25 6.5468896815466958e-05
		3 21 0.13025997000996473 22 0.86973687071863059 25 3.1592714044982455e-06
		3 21 0.15684194321826958 22 0.84314919774993069 25 8.8590317998039817e-06
		3 21 0.0054151495917472122 22 0.99458447264410432 25 3.7776414856603874e-07
		3 21 0.014018608753027729 22 0.9859794240348656 25 1.9672121066630507e-06
		3 21 2.1797537910599325e-05 22 0.99997819262940157 25 9.8326877956436144e-09
		3 21 0.00017612212818688311 22 0.99982383307034173 25 4.4801471271816188e-08
		3 1 0.026328772692476011 21 0.88792934026930626 25 0.085741887038217793
		3 1 0.3113668038731538 21 0.37239240921405076 25 0.31624078691279545
		3 21 0.6470156415903302 22 0.35250644737648368 25 0.00047791103318592929
		3 21 0.13742045016491594 22 0.86257531477097815 25 4.2350641056786809e-06
		3 21 0.0054240468009853007 22 0.99457539905245596 25 5.5414655861400066e-07
		3 21 3.1190966981734463e-05 22 0.99996879822528573 25 1.0807732604264193e-08
		3 1 0.0063304250029363488 21 0.89969179325010429 22 0.093977781746959393
		3 21 0.95028367448474504 22 0.032486027883637449 25 0.017230297631617458
		3 1 0.28343324461394892 18 0.028302637357455415 21 0.68826411802859577
		3 21 0.61308893870324521 22 0.38685400424740812 25 5.7057049346800944e-05
		3 18 1.762457287884367e-05 21 0.63933396753963689 22 0.36064840788748437
		3 21 0.20875629119392691 22 0.79123867831455363 25 5.0304915193474002e-06
		3 21 0.2054076924717326 22 0.79457985314834223 25 1.2454379925279962e-05
		3 21 0.01994023821328491 22 0.98005807584451876 25 1.6859421962759957e-06
		3 21 0.03636806788460336 22 0.96362704757357509 25 4.8845418216037401e-06
		3 21 0.0005595317505962471 22 0.99944033264443155 25 1.3560497222230963e-07
		3 21 0.0023728681066357321 22 0.99762660475529785 25 5.2713806631509839e-07
		3 1 0.011536680009813245 21 0.94569599906370849 22 0.042767320926478253
		3 1 0.27837443744244217 18 0.089222630625766949 21 0.63240293193179076
		3 18 3.5005421513392232e-05 21 0.64717785982703602 22 0.35278713475145063
		3 21 0.23283147488037587 22 0.76715966161821725 25 8.863501406809042e-06
		3 21 0.033651527278207735 22 0.96634500176253935 25 3.4709592528386696e-06
		3 21 0.0013630946329340964 22 0.99863657996345201 25 3.2540361392778978e-07
		3 1 0.27020487720903397 21 0.6483524102595104 25 0.081442712531455588
		3 1 0.010930753076149276 21 0.91546729839787511 22 0.073601948525975583
		3 21 0.94578285911646121 22 0.032548404366982191 25 0.021668736516556635
		3 21 0.62799564514512607 22 0.37187170763519922 25 0.00013264721967467516
		3 21 0.63555074831109226 22 0.36443435939301727 25 1.4892295890426678e-05
		3 21 0.20940925777457209 22 0.79058416871030945 25 6.5735151185818056e-06
		3 21 0.18638568381888854 22 0.81360118648309698 25 1.3129698014468563e-05
		3 21 0.018101022343513039 22 0.98189803756971983 25 9.4008676718152866e-07
		3 21 0.037276815429675432 22 0.96271775373274537 25 5.4308375790843312e-06
		3 21 0.00014314119099626823 22 0.99985682374229901 25 3.5066704698794569e-08
		3 21 0.0010764487110410327 22 0.99892330015944963 25 2.5112950923143637e-07
		3 21 0.0002391377560100037 22 0.99976078102469257 25 8.1219297489274288e-08
		3 1 0.074965614381302753 21 0.90603912216987204 22 0.018995263448825329
		3 1 0.064076847913496424 21 0.89754611611388346 25 0.038377035972620058
		3 1 0.10598705190485042 21 0.77821380935134854 25 0.11579913874380103
		3 1 0.12886368700697357 21 0.63999870784400581 25 0.23113760514902046
		3 1 0.046078483730045826 21 0.80120184434273845 25 0.15271967192721564
		3 1 0.042428155186622935 21 0.86461410575644371 25 0.092957739056933358
		3 1 0.041206432165409763 21 0.92405141702455151 25 0.034742150810038862
		3 1 0.090172562651787636 18 0.031482439707349263 21 0.87834499764086316
		3 21 0.76846677543171438 22 0.23126507727726073 25 0.00026814729102494941
		3 21 0.78518256889554294 22 0.2140296994916101 25 0.00078773161284688149
		3 21 0.81241342727247001 22 0.18480621954113924 25 0.0027803531863907116
		3 21 0.88063978209502847 22 0.1069663715665386 25 0.012393846338432858
		3 21 0.86430768052894946 22 0.13113627176337644 25 0.0045560477076740137
		3 21 0.86562872626615917 22 0.13213760021209137 25 0.0022336735217494152
		3 21 0.83665688129585758 22 0.16237050555827034 25 0.00097261314587212134
		3 1 0.00034828879486989406 21 0.82111917276600488 22 0.17853253843912531
		3 21 0.39364790243200282 22 0.60633876117668284 25 1.3336391314343924e-05
		3 21 0.41779541525881481 22 0.5821657662333144 25 3.881850787083393e-05
		3 21 0.33404164628620242 22 0.66592383139820033 25 3.4522315597217392e-05
		3 21 0.34108134369384668 22 0.65889756625741536 25 2.1090048738020848e-05
		3 21 0.36837868029889254 22 0.63161160898765389 25 9.7107134535521914e-06
		3 21 0.33290499839467402 22 0.66708284956283326 25 1.2152042492621468e-05
		3 21 0.42179877823149459 22 0.57818995365106374 25 1.1268117441527931e-05
		3 18 1.0024303645760841e-05 21 0.42303223761493164 22 0.57695773808142248
		3 21 0.081949609687326647 22 0.91804633220200327 25 4.058110670052777e-06
		3 21 0.07708631161973295 22 0.92291183774043917 25 1.8506398278592102e-06
		3 21 0.034758307884963487 22 0.96524056949097603 25 1.122624060422534e-06
		3 21 0.037883178226167949 22 0.96211421954101195 25 2.6022328202823109e-06
		3 21 0.053927616295129002 22 0.94606666314580601 25 5.7205590649690147e-06
		3 21 0.10364802819829094 22 0.89634155368327073 25 1.0418118438355036e-05
		3 21 0.086452244917278639 22 0.91353828134733195 25 9.4737353895497642e-06
		3 21 0.1024948167975395 22 0.89749710947029848 25 8.0737321619768564e-06
		3 21 0.0040437781414618679 22 0.99595571791911486 25 5.0393942318403339e-07
		3 21 0.0018541628033321093 22 0.99814566248449033 25 1.7471217757111214e-07
		3 21 0.00028653854200066486 22 0.99971342903520377 25 3.2422795520745648e-08
		3 21 0.00052798684258104826 22 0.99947194862951527 25 6.4527903671665786e-08
		3 21 0.0020025862173351427 22 0.99799705909545289 25 3.5468721190491982e-07
		3 21 0.0088771261033974164 22 0.991121283939704 25 1.5899568984956229e-06
		3 21 0.0111993524044948 22 0.98879883751669229 25 1.8100788130319812e-06
		3 21 0.0073214857556050169 22 0.99267742666078285 25 1.0875836120743941e-06
		3 1 0.52429665088722155 21 0.43028054427998325 25 0.045422804832795149
		3 1 0.53563831083301305 21 0.3252029404922076 25 0.1391587486747792
		3 1 0.51240560484993591 21 0.24033034661921007 25 0.24726404853085404
		3 1 0.39107564665600858 21 0.35636220083764492 25 0.25256215250634662
		3 1 0.40721953703243302 21 0.41017526288080253 25 0.18260520008676451
		3 1 0.17479168800671852 21 0.68919544770993235 25 0.1360128642833493
		3 1 0.13617021107015587 18 0.079818908623646281 21 0.78401088030619781
		3 1 0.3166355462638899 18 0.15355993338076934 21 0.52980452035534076
		3 3 0.30928888097797502 4 0.64814034677997079 10 0.042570772242054286
		3 3 0.0069021978191887799 4 0.99285797836998613 10 0.00023982381082514003
		3 3 0.062704786146202729 4 0.93689449576684136 10 0.00040071808695584389
		3 3 0.1514487836837021 4 0.83302509742610331 10 0.015526118890194493
		3 3 0.021111615173366259 4 0.9776193088496582 10 0.0012690759769756347
		3 3 0.11495701843848971 4 0.87027863710707021 10 0.014764344454440055
		3 3 0.044560700745780946 4 0.95187324750334079 10 0.0035660517508783567
		3 3 0.095414058190787188 4 0.89088145752645831 10 0.013704484282754588
		3 3 0.072804952614510796 4 0.9189543284804329 10 0.0082407189050563434
		3 3 0.087371227051759953 4 0.90038286458863825 10 0.012245908359601682
		3 3 0.082821082511476934 4 0.90625328540815553 10 0.010925632080367398
		3 3 0.016532884369074387 4 0.98331211495697513 10 0.00015500067395053622
		3 3 0.34718453917806313 4 0.44335083575944229 10 0.20946462506249458
		3 3 0.12150919736382765 4 0.87798328673214499 10 0.00050751590402741613
		3 3 0.0081261363349656758 4 0.9916799912587555 6 0.00019387240627884893
		3 3 0.22261663118516464 4 0.76437237845074912 6 0.013010990364086107
		3 3 0.33039239917983765 4 0.64191155118442877 6 0.027696049635733695
		3 3 0.037397538358255641 4 0.96230534048592031 6 0.00029712115582388945
		3 3 0.077602697071339849 4 0.92158202447706905 6 0.00081527845159097903
		3 3 0.021257323392763868 4 0.9778173003618611 10 0.00092537624537489033
		3 3 0.144097919819277 4 0.84408470808408309 6 0.011817372096640006
		3 3 0.053308433306638932 4 0.94278849782125507 10 0.0039030688721060471
		3 3 0.12119725194434834 4 0.86639404560594657 10 0.012408702449705192
		3 3 0.077631971799060021 4 0.91394738585603719 10 0.0084206423449026142
		3 3 0.093083997484425696 4 0.89442865921538117 10 0.012487343300193255
		3 3 0.27923151184355544 4 0.70855606978169505 6 0.012212418374749448
		3 3 0.1556914641463239 4 0.83480218059824585 6 0.0095063552554303012
		3 3 0.12615847746166897 4 0.86316490858092487 6 0.010676613957406269
		3 3 0.11129170333526797 4 0.87823557338890867 6 0.010472723275823291
		3 3 0.092030299722721753 4 0.89660388560796966 10 0.011365814669308579
		3 3 0.056209848983370309 4 0.94351674462813373 10 0.0002734063884958026
		3 3 0.24782832803730029 4 0.74571152974077637 6 0.0064601422219233385
		3 3 0.09159677414814528 4 0.9057182513353681 6 0.0026849745164865936
		1 3 0.062647937363867451;
	setAttr ".wl[1333:1499].w"
		2 4 0.93429333941474724 6 0.0030587232213851946
		3 3 0.072304014534104857 4 0.92254676627602272 6 0.0051492191898725101
		3 3 0.07819977647373752 4 0.91548175681608357 6 0.006318466710178966
		3 3 0.086140928575615228 4 0.90405244628701031 10 0.0098066251373742554
		3 3 0.042553905147074494 4 0.9551044022002424 6 0.0023416926526831578
		3 3 0.040141854175763075 4 0.95815909307657676 6 0.0016990527476602039
		3 3 0.057107580125234474 4 0.94114113765988372 6 0.0017512822148817537
		3 3 0.020112767103172353 4 0.97970177740596065 6 0.00018545549086709931
		3 3 0.013139579476580593 4 0.98648127565182242 6 0.0003791448715969444
		3 3 0.029604162096401807 4 0.969689214114692 6 0.0007066237889061614
		3 3 0.022803069764151206 4 0.97635064747118261 6 0.00084628276466624684
		3 3 0.041238870580043156 4 0.95765527131067452 6 0.0011058581092823136
		3 3 0.35078299537555224 4 0.63608046096784321 6 0.013136543656604464
		3 3 0.38536208787676318 4 0.5613283034359926 6 0.05330960868724418
		3 3 0.3688087035926077 4 0.51194556776468836 6 0.11924572864270401
		3 3 0.15876717570738494 4 0.83850844547612835 6 0.0027243788164867501
		3 3 0.057722025824837687 4 0.93835661904903167 6 0.0039213551261306065
		3 3 0.034854316858881088 4 0.96308726401418376 10 0.0020584191269351045
		3 3 0.032703185071033085 4 0.96500762490119163 10 0.0022891900277753285
		3 3 0.060123429338599127 4 0.93410193740166192 10 0.0057746332597391186
		3 3 0.06845112488587754 4 0.92528537802433175 10 0.0062634970897906834
		3 3 0.087111609593374578 4 0.90473035807927049 6 0.0081580323273548593
		3 3 0.10194366470682546 4 0.8877561639613456 6 0.010300171331828867
		3 3 0.10293132417065548 4 0.88427098354555433 10 0.012797692283790223
		3 3 0.10339010247622324 4 0.88215919656704245 10 0.01445070095673419
		3 3 0.051493488583345494 4 0.9458358319408332 6 0.002670679475821123
		3 3 0.069186950088334712 4 0.92660079686824537 6 0.0042122530434199508
		3 3 0.13918022005981248 4 0.85060180819519227 6 0.010217971744995207
		3 3 0.17455837954510586 4 0.81367034374739278 6 0.01177127670750135
		3 3 0.21440899891183188 4 0.76775810157626145 10 0.017832899511906759
		3 3 0.26524742943521301 4 0.72020345426218013 6 0.014549116302606861
		3 3 0.19631633762942519 4 0.79410677851864753 6 0.0095768838519271222
		3 3 0.074722889117078528 4 0.92227080812673412 6 0.0030063027561872636
		3 3 0.046882670401259791 4 0.95143809217183206 6 0.0016792374269082686
		3 3 0.026537579768703384 4 0.97267011852823737 6 0.00079230170305922144
		3 3 0.013380348908033655 4 0.98630369212867064 6 0.00031595896329563485
		3 3 0.0064933343404456586 4 0.99340705609090352 10 9.9609568650742394e-05
		3 3 0.0053596153639523698 4 0.99453100938782846 10 0.00010937524821908277
		3 3 0.021311561056248238 4 0.97782826392373468 6 0.00086017502001715083
		3 3 0.012633014541237849 4 0.98689793908687529 10 0.0004690463718868434
		3 3 0.011465987931782457 4 0.98801154295750493 10 0.00052246911071265466
		3 3 0.13358588689319636 4 0.86394693739789352 6 0.0024671757089101266
		3 3 0.050300334325760976 4 0.94885488144602759 6 0.00084478422821146276
		3 3 0.024530844898217538 4 0.97496186181808964 6 0.00050729328369288919
		3 3 0.008651955038662798 4 0.99118605294913475 6 0.00016199201220246055
		3 3 0.0093953817349795108 4 0.99037845625489507 6 0.00022616201012550666
		3 3 0.014835728866880234 4 0.98467160723095692 6 0.00049266390216288916
		3 3 0.028308386286938336 4 0.97035423964796164 6 0.0013373740651000479
		3 3 0.045391462806046598 4 0.95186021278006161 6 0.0027483244138918153
		3 3 0.065339649115384188 4 0.92956250351958336 6 0.0050978473650324678
		3 3 0.077416836728566446 4 0.91518698128241649 10 0.0073961819890170349
		3 3 0.081681332802597179 4 0.90892472241261058 10 0.0093939447847923799
		3 3 0.079553495280842629 4 0.91055015176865728 10 0.0098963529505000526
		3 3 0.099017152250844162 4 0.89213731328231904 6 0.0088455344668369445
		3 3 0.10128700569934818 4 0.89053622699916013 6 0.0081767673014915832
		3 3 0.10277506483924242 4 0.89002253024385136 6 0.007202404916906149
		3 3 0.10510171472130651 4 0.88906595903747121 6 0.0058323262412223568
		3 3 0.12625913305573319 4 0.86822070744096158 6 0.0055201595033051633
		3 3 0.20671555547087864 4 0.78505211065947089 6 0.0082323338696504364
		3 3 0.3142493429755337 4 0.67423768583851318 6 0.011512971185953085
		3 3 0.11834189714072009 4 0.88077808601391516 6 0.00088001684536468934
		3 3 0.20530010391031553 4 0.79169068925824215 6 0.003009206831442267
		3 3 0.3195515887950241 4 0.67408508684830004 6 0.0063633243566759094
		3 3 0.35643950573506145 4 0.63333525325322593 6 0.010225241011712634
		3 3 0.37973289032023305 4 0.60553254988278649 6 0.014734559796980644
		3 3 0.31340694936569413 4 0.67135577229548038 6 0.015237278338825376
		3 3 0.23918578914499414 4 0.74833215312414436 6 0.012482057730861485
		3 3 0.19457122378240382 4 0.79371618817768919 6 0.011712588039907049
		3 3 0.16575672070634392 4 0.82238982706538211 6 0.011853452228273813
		3 3 0.14120114677204448 4 0.84693005022993684 6 0.0118688029980186
		3 3 0.12189935267334157 4 0.86661616512439921 6 0.011484482202259364
		3 3 0.13523537723480042 4 0.86406459363708843 10 0.00070002912811103623
		3 3 0.10211696649616162 4 0.89737308658824833 10 0.00050994691559006367
		3 3 0.07754586396892521 4 0.92216090738210854 6 0.00029322864896618947
		3 3 0.38259524402975098 4 0.59679475652727376 6 0.020609999442975261
		3 3 0.33201052835547662 4 0.64654698272114575 6 0.0214424889233777
		3 3 0.24245240449757227 4 0.74606249487795928 6 0.011485100624468456
		3 3 0.0085275090855725169 4 0.99108104169126032 10 0.00039144922316727886
		3 3 0.22516277409254831 4 0.75277408328265083 10 0.022063142624800938
		3 3 0.32415812460263838 4 0.63362400811736175 10 0.042217867279999925
		3 3 0.038499590876313057 4 0.96069074932656895 10 0.00080965979711800377
		3 3 0.078674617554747278 4 0.91899950576258016 10 0.0023258766826724448
		3 3 0.020319706812219621 4 0.97820346011019021 10 0.0014768330775900024
		3 3 0.14206296252661157 4 0.83848869849654972 10 0.019448338976838769
		3 3 0.050470718438976644 4 0.94442402616649501 10 0.0051052553945285465
		3 3 0.11618485731180907 4 0.86691901138175487 10 0.01689613130643608
		3 3 0.075071981043496383 4 0.91519421015993097 10 0.0097338087965726117
		3 3 0.090664787331804428 4 0.89548791716647469 10 0.013847295501720999
		3 3 0.26811535374119372 4 0.70960726573591748 10 0.022277380522888943
		3 3 0.17041227419188509 4 0.81309839037119136 10 0.016489335436923377
		3 3 0.12407466604242447 4 0.85864060288095645 10 0.017284731076618893
		3 3 0.10280307350378975 4 0.88099683666716599 10 0.016200089829044272
		3 3 0.088032545313770708 4 0.89824670596341072 10 0.0137207487228186
		3 3 0.057838072068171265 4 0.94147485858819202 10 0.00068706934363677605
		3 3 0.22542856363933064 4 0.76044835874432726 10 0.014123077616342
		3 3 0.087432933165972185 4 0.90707547484554341 10 0.0054915919884843548
		3 3 0.061361507918601531 4 0.93359759075596538 10 0.0050409013254331505
		3 3 0.070911512727994785 4 0.92109202614936736 10 0.0079964611226377869
		3 3 0.071754971727211986 4 0.91878488038845318 10 0.0094601478843346718
		3 3 0.081846457850435775 4 0.90594046418925012 10 0.012213077960314055
		3 3 0.040958833445270411 4 0.95530504896831525 10 0.0037361175864143135
		3 3 0.037676748070109352 4 0.95949817850905317 10 0.0028250734208375436
		3 3 0.055974404631868563 4 0.94057372996443678 10 0.0034518654036947687
		3 3 0.021222319036682723 4 0.97831714305957551 10 0.00046053790374167005
		3 3 0.013193797599979913 4 0.98607368656929539 10 0.00073251583072449764
		3 3 0.030478804970173655 4 0.9679778138576548 10 0.0015433811721716677
		3 3 0.021845444784504797 4 0.97667974367093513 10 0.0014748115445601274
		3 3 0.041093671921590171 4 0.95661591644044908 10 0.0022904116379607376
		3 3 0.32343746866120987 4 0.6508610127635901 10 0.025701518575199853
		3 3 0.36678802313069564 4 0.56037351618046616 10 0.072838460688838397
		3 3 0.35213740546698769 4 0.50089110368883194 10 0.14697149084418049
		3 3 0.16124654932198856 4 0.83498168249425853 10 0.0037717681837528805
		3 3 0.053926168993665681 4 0.94008678896673681 10 0.005987042039597437
		3 3 0.033375981663027167 4 0.96382943677674349 10 0.0027945815602294344
		3 3 0.065135919684125382 4 0.92715139485911591 10 0.0077126854567587328
		3 3 0.078814202906526618 4 0.90930840035192839 10 0.011877396741545089
		3 3 0.094291063214638093 4 0.89057989492091683 10 0.015129041864445187
		3 3 0.099134744466090843 4 0.88580048930738264 10 0.015064766226526473
		3 3 0.049734114746119031 4 0.94602166063728244 10 0.0042442246165985765
		3 3 0.070030542010786498 4 0.92324973723704573 10 0.0067197207521677753
		3 3 0.14701143303085037 4 0.83577169530612549 10 0.017216871663024061
		3 3 0.17611732489023685 4 0.80392442434216538 10 0.019958250767598034
		3 3 0.26826764626133515 4 0.70693127487933549 10 0.024801078859329362
		3 3 0.20363366045469924 4 0.77945601752967997 10 0.016910322015620944
		3 3 0.073697304314602613 4 0.92091762809959388 10 0.0053850675858035831
		3 3 0.045073310533022617 4 0.95190897723085721 10 0.0030177122361201908
		3 3 0.025963528312679895 4 0.97254398291512145 10 0.0014924887721987315
		3 3 0.014417222452610854 4 0.98491936398998392 10 0.00066341355740533062
		3 3 0.0072294666412637369 4 0.99256777474408231 10 0.00020275861465393098
		3 3 0.020579988783109716 4 0.97791134737089991 10 0.0015086638459903133
		3 3 0.01231890040674118 4 0.98699699527447204 10 0.00068410431878687976
		3 3 0.12598425141172037 4 0.86805963622797822 10 0.0059561123603015
		3 3 0.049709065863283691 4 0.94820430304973125 10 0.0020866310869850388
		3 3 0.025728245655886786 4 0.97310136704342498 10 0.00117038730068812
		3 3 0.010062060422758539 4 0.9895666040866774 10 0.00037133549056392627
		3 3 0.010052596182592152 4 0.98947951511214516 10 0.00046788870526266735
		3 3 0.014417964069998023 4 0.98466236406230856 10 0.00091967186769346043
		3 3 0.026964147972308578 4 0.97079683040692633 10 0.0022390216207651093
		3 3 0.042406145536742247 4 0.95336972554231236 10 0.00422412892094539
		3 3 0.059792968952590536 4 0.93283468159549221 10 0.0073723494519171541
		3 3 0.072108066340167365 4 0.9179328907058435 10 0.0099590429539890956
		3 3 0.078980691876668799 4 0.91009551940852074 10 0.010923788714810412
		3 3 0.090638672443891038 4 0.89595565883124617 10 0.013405668724862775
		3 3 0.099482707479306293 4 0.88767301201261195 10 0.012844280508081707
		3 3 0.10868481674703645 4 0.87949961606529448 10 0.011815567187669114
		3 3 0.11101139967120809 4 0.87908309907881799 10 0.0099055012499739605
		3 3 0.12694607322118415 4 0.86316150501736555 10 0.009892421761450278
		3 3 0.19626322698311649 4 0.7882918612340919 10 0.015444911782791707
		3 3 0.28426933955014139 4 0.69299506575513814 10 0.022735594694720477
		3 3 0.12268947056475793 4 0.87436446998084449 10 0.0029460594543976467
		3 3 0.19779426587916771 4 0.79363346246290634 10 0.0085722716579260845
		3 3 0.29451027747099678 4 0.68884983017656098 10 0.016639892352442173
		3 3 0.32231873031950109 4 0.65518932290408283 10 0.022491946776416107
		3 3 0.35297396216537918 4 0.618197857184559 10 0.028828180650061829
		3 3 0.30722288547633192 4 0.66588027628217472 10 0.026896838241493477
		3 3 0.24985467746084308 4 0.728272149486896 10 0.021873173052260914
		3 3 0.2053002728645224 4 0.77430098354886046 10 0.020398743586617214
		3 3 0.17037119635667164 4 0.80930182505497961 10 0.020326978588348771
		3 3 0.13931870363348423 4 0.84088094264092528 10 0.019800353725590469
		3 3 0.11471381770400185 4 0.86717538364743574 10 0.018110798648562385
		3 3 0.10317646931308942 4 0.89621317312340465 10 0.00061035756350606902
		3 3 0.080876001828175892 4 0.91828116525814774 10 0.00084283291367639969
		3 3 0.35643053093292532 4 0.6061085976220828 10 0.037460871444991835
		3 3 0.31854288826027433 4 0.64548138465503224 10 0.035975727084693439
		3 3 0.24202369561256112 4 0.74031898502001192 10 0.0176573193674271
		3 3 0.35979110569679956 4 0.59623704262846289 10 0.043971851674737703
		3 3 0.36395872927704087 4 0.58444106806035534 10 0.051600202662603754;
	setAttr ".wl[1500:1549].w"
		3 3 0.37152774544505435 4 0.5637844084281135 10 0.064687846126832038
		3 3 0.3768384887881075 4 0.54963107725086024 10 0.073530433961032218
		3 3 0.37379445266348033 4 0.56132547208791561 10 0.064880075248603883
		3 3 0.36487079096187114 4 0.58763223296163758 10 0.047496976076491414
		3 3 0.35886558303155319 4 0.60282413414514879 10 0.038310282823297986
		3 3 0.37494255825600831 4 0.55585875899584924 10 0.069198682748142365
		3 3 0.36699307217441746 4 0.57884407066528287 10 0.05416285716029972
		3 3 0.36042031264143487 4 0.59767991571907275 10 0.041899771639492468
		3 3 0.37450183822975902 4 0.55692247397611205 10 0.068575687794128801
		3 3 0.36622916811844297 4 0.58034850808788085 10 0.053422323793676153
		3 3 0.35938478484545022 4 0.59951275216858424 10 0.041102462985965642
		3 3 0.32463061283117711 4 0.64857073654577813 10 0.026798650623044706
		3 3 0.31996001041960365 4 0.65045076626792064 10 0.029589223312475817
		3 3 0.3225836832307733 4 0.64058642889068629 10 0.036829887878540302
		3 3 0.32606908020345393 4 0.6318694425214102 10 0.042061477275135928
		3 3 0.32783583133345096 4 0.6344397929264628 10 0.037724375740086302
		3 3 0.33118512836547487 4 0.6390752045206074 10 0.029739667113917765
		3 3 0.33443044962481883 4 0.63937518270950766 10 0.026194367665673571
		3 3 0.32654157039733761 4 0.63360226254996566 10 0.039856167052696789
		3 3 0.32674707271739811 4 0.640903450177429 10 0.03234947710517283
		3 3 0.3320276794517148 4 0.64043360984691655 10 0.027538710701368572
		3 3 0.32440390593634255 4 0.63657245300967313 10 0.039023641053984294
		3 3 0.32361148579029186 4 0.64535641744191097 10 0.03103209676779729
		3 3 0.3286790604161049 4 0.64526669872036402 10 0.026054240863530993
		3 3 0.39381245010672361 4 0.59314383051565667 6 0.013043719377619774
		3 3 0.38698277152912292 4 0.59791231738472661 6 0.015104911086150488
		3 3 0.38574774313059418 4 0.59404410346780101 6 0.020208153401604881
		3 3 0.38672959188663358 4 0.58939366332400078 6 0.023876744789365606
		3 3 0.39006348338534491 4 0.58930468312983431 6 0.020631833484820693
		3 3 0.39773466894797682 4 0.58740011919937318 6 0.014865211852650054
		3 3 0.40388884631596517 4 0.58372052172690214 6 0.012390631957132596
		3 3 0.38875315489793871 4 0.58904100110884383 6 0.022205843993217473
		3 3 0.39303365769837434 4 0.59014673848272925 6 0.016819603818896453
		3 3 0.40145584635998954 4 0.58520147737589767 6 0.013342676264112974
		3 3 0.38554930383455083 4 0.59271294446427103 6 0.021737751701178164
		3 3 0.38875651657948479 4 0.59519723769158672 6 0.01604624572892846
		3 3 0.39732285601011064 4 0.59023835231398414 6 0.01243879167590517
		3 3 0.41903980991821099 4 0.55553851301011392 6 0.025421677071674968
		3 3 0.41969665076758061 4 0.54935168266863221 6 0.030951666563787224
		3 3 0.42385470663011343 4 0.53511220730799181 6 0.041033086061894694
		3 3 0.42705482557049607 4 0.52522827792298798 6 0.047716896506516157
		3 3 0.42533899437440731 4 0.53385247808029967 6 0.040808527545293002
		3 3 0.42143930683031622 4 0.55069095345938335 6 0.027869739710300483
		3 3 0.41966437536960621 4 0.55881103851205016 6 0.021524586118343781
		3 3 0.42622455654305125 4 0.52968891188783562 6 0.044086531569113213
		3 3 0.4222716894649845 4 0.54500150058664665 6 0.032726809948368928
		3 3 0.42029107930833726 4 0.55577843315273623 6 0.023930487538926484
		3 3 0.4253627488594362 4 0.53053195437636802 6 0.04410529676419591
		3 3 0.42113011193936367 4 0.54640974663126729 6 0.032460141429369101
		3 3 0.41909222995114048 4 0.55743753941222685 6 0.023470230636632738;
	setAttr -s 33 ".pm";
	setAttr ".pm[0]" -type "matrix" 0.39370079331436153 -5.9447293556270525e-08 3.4418194858164092e-08 0
		 -3.4418416434306427e-08 -1.4674309252113332e-06 0.39370079331163133 0 -5.9447165269797503e-08 -0.39370079331162833 -1.4674309304476543e-06 0
		 -2.4539598019054517e-08 3.7053841698174532e-15 -2.1453059803372914e-15 1;
	setAttr ".pm[1]" -type "matrix" 3.4668158790105531e-08 -4.1373400009597613e-07 -0.39370079331414848 0
		 0.36802432407945718 0.1398513742482354 -1.1456049200332104e-07 0 0.1398513909198609 -0.36802428020732941 3.990659576533057e-07 0
		 -30.636034246389599 -40.25663515170843 4.1037228992768405e-05 1;
	setAttr ".pm[2]" -type "matrix" 2.7652256447129594e-07 -5.7827485632144088e-08 -0.39370079331426616 0
		 -0.02184052935809954 0.3930945195846553 -7.3078541986281277e-08 0 0.39309450625123765 0.021840557230398433 2.728888069517068e-07 0
		 25.197962214408086 -53.635316899674372 2.6106183952778479e-05 1;
	setAttr ".pm[3]" -type "matrix" 2.7434142071986071e-07 -1.0437083841062696e-07 -0.39370079331425817 0
		 -0.0081402746952345274 0.39361662309665274 -1.1002092276380883e-07 0 0.39361661074180354 0.00814030301490987 2.721248093053296e-07 0
		 1.6725563023055408 -53.726011646168459 2.8335666117909806e-05 1;
	setAttr ".pm[4]" -type "matrix" 1.6349801964145807e-07 -2.4377219818193013e-07 -0.39370079331425811 0
		 0.22093224723410818 0.325866924038346 -1.1002092276380882e-07 0 0.32586693033110387 -0.22093221698435592 2.721248093053296e-07 0
		 -50.625355548339648 -29.97389722150546 2.8261959530409747e-05 1;
	setAttr ".pm[5]" -type "matrix" 2.8994387069587009e-07 -5.9941926574760921e-08 -0.39370079331425617 0
		 -0.088934529825143147 0.38352434407734365 -1.2388909402501789e-07 0 0.38352432616125853 0.08893455499775367 2.6890895180164151e-07 0
		 -21.502420564192661 -67.322916032476215 3.0570224996572921e-05 1;
	setAttr ".pm[6]" -type "matrix" -0.0049492990559076144 0.0004539170287464756 -0.39366942103057545 0
		 -0.3926269462004966 -0.028641754726451623 0.0049031677108278375 0 -0.028633846922877893 0.39265728447017562 0.00081274105215111217 0
		 50.136786513325013 -14.394640806370875 -9.1278653020508322 1;
	setAttr ".pm[7]" -type "matrix" 0.0052100027760623108 0.0010129029332442948 -0.39366501566062939 0
		 -0.3934810174263112 0.012091454676030077 -0.0051764562309498784 0 0.012077009099237897 0.39351375101254316 0.0011723482282391441 0
		 30.495297504502144 -17.009300391764057 -7.5594078151944579 1;
	setAttr ".pm[8]" -type "matrix" -0.00087896097279774159 0.00068398724619082114 -0.39369921798933988 0
		 -0.39120631052232979 0.044238328161009713 0.00095025215801496261 0 0.044239772338154487 0.39120685819241136 0.00058088880513050122 0
		 11.430369594170758 -26.741511119108658 -9.5363843687824215 1;
	setAttr ".pm[9]" -type "matrix" -0.0010477103734193971 0.012360744265226369 -0.39350530995215993 0
		 -0.18901870178847072 0.34517171696227233 0.011345758399355511 0 0.34535652031495212 0.1889550613154318 0.0050159210861513547 0
		 -21.616247496301529 -15.196498558963597 -9.9147153212559083 1;
	setAttr ".pm[10]" -type "matrix" -0.00077259862862165407 -0.005241067123375515 -0.39366514827087457 0
		 -0.39311946210750609 -0.021360796006257312 0.0010559149693565551 0 -0.021372946589523639 0.39308592852660784 -0.0051914095936379601 0
		 49.985965511200398 -15.242270986762348 6.9299398226335907 1;
	setAttr ".pm[11]" -type "matrix" -0.0002230788995858643 -0.0035873328887838568 -0.39368438619649621 0
		 -0.39347629123408107 0.013293153021347833 0.00010183104645510458 0 0.013291642224769255 0.39345994037691107 -0.0035928193218333518 0
		 30.497345007065409 -17.385987864175068 9.1647048501897856 1;
	setAttr ".pm[12]" -type "matrix" 0.0025293841794614275 -0.003547313407055185 -0.39367668643142584 0
		 -0.39254322779530082 0.030038721418128668 -0.0027927724126535921 0 0.030062016089977425 0.39253712478517233 -0.0033438957981642967 0
		 12.398211435503125 -26.432234957446958 10.752059166580656 1;
	setAttr ".pm[13]" -type "matrix" 0.0023689852846214511 -0.020728531679096471 -0.39314759383660519 0
		 -0.20163539400263192 0.33761204229352076 -0.0190154367275535 0 0.33813880155176346 0.20146650932844584 -0.0085847125322490603 0
		 -21.045628907222238 -15.886185747271634 11.229342480235376 1;
	setAttr ".pm[14]" -type "matrix" -4.891922214917589e-08 1.6144449691032889e-07 -0.39370079331433128 0
		 -0.28958370751392243 -0.26672390550568476 -7.3393046140781676e-08 0 -0.2667239046597692 0.28958366058871604 1.5189105603534291e-07 0
		 11.478924448683303 65.162623994850335 2.1773161100670086e-05 1;
	setAttr ".pm[15]" -type "matrix" -7.086912631116583e-08 1.5308488760880881e-07 -0.39370079331433122 0
		 -0.24972971299954078 -0.30436070027334572 -7.3393046140781636e-08 0 -0.30436069291788054 0.24972966664667998 1.5189105603534288e-07 0
		 -9.9748092502373424 64.401399232128995 2.1505876069228946e-05 1;
	setAttr ".pm[16]" -type "matrix" -8.6916427824018158e-08 1.4457852694166534e-07 -0.39370079331433128 0
		 -0.21556068370478476 -0.32944492265997993 -7.3393046140781636e-08 0 -0.32944491036378143 0.21556063841136283 1.5189105603534288e-07 0
		 -40.940572397800047 60.349687973363388 2.0870061056145313e-05 1;
	setAttr ".pm[17]" -type "matrix" -8.6916427824018158e-08 1.4457852694166534e-07 -0.39370079331433128 0
		 -0.21556068370478476 -0.32944492265997993 -7.3393046140781636e-08 0 -0.32944491036378143 0.21556063841136283 1.5189105603534288e-07 0
		 -37.190514204954376 61.067198047510431 5.6856115478435285 1;
	setAttr ".pm[18]" -type "matrix" -4.891922214917589e-08 1.6144449691032889e-07 -0.39370079331433128 0
		 -0.28958370751392243 -0.26672390550568476 -7.3393046140781676e-08 0 -0.2667239046597692 0.28958366058871604 1.5189105603534291e-07 0
		 9.3711857838016002 55.837106578268092 2.1034910329164438e-05 1;
	setAttr ".pm[19]" -type "matrix" -7.086912631116583e-08 1.5308488760880881e-07 -0.39370079331433122 0
		 -0.24972971299954078 -0.30436070027334572 -7.3393046140781636e-08 0 -0.30436069291788054 0.24972966664667998 1.5189105603534288e-07 0
		 -12.026780518319374 54.902732342817558 -15.609508785928623 1;
	setAttr ".pm[20]" -type "matrix" -8.6916427824018158e-08 1.4457852694166534e-07 -0.39370079331433128 0
		 -0.21556068370478476 -0.32944492265997993 -7.3393046140781636e-08 0 -0.32944491036378143 0.21556063841136283 1.5189105603534288e-07 0
		 -36.998363685902568 50.610585552595232 -32.769658296152343 1;
	setAttr ".pm[21]" -type "matrix" -4.891922214917589e-08 1.6144449691032889e-07 -0.39370079331433128 0
		 -0.28958370751392243 -0.26672390550568476 -7.3393046140781676e-08 0 -0.2667239046597692 0.28958366058871604 1.5189105603534291e-07 0
		 9.3711857838016002 55.837106578268092 2.1034910329164438e-05 1;
	setAttr ".pm[22]" -type "matrix" -7.086912631116583e-08 1.5308488760880881e-07 -0.39370079331433122 0
		 -0.24972971299954078 -0.30436070027334572 -7.3393046140781636e-08 0 -0.30436069291788054 0.24972966664667998 1.5189105603534288e-07 0
		 -12.166509795567736 54.478031865578551 19.582814443824049 1;
	setAttr ".pm[23]" -type "matrix" -8.6916427824018158e-08 1.4457852694166534e-07 -0.39370079331433128 0
		 -0.21556068370478476 -0.32944492265997993 -7.3393046140781636e-08 0 -0.32944491036378143 0.21556063841136283 1.5189105603534288e-07 0
		 -28.472363853296748 43.333099684950199 39.484594718574826 1;
	setAttr ".pm[24]" -type "matrix" -8.6916427824018158e-08 1.4457852694166534e-07 -0.39370079331433128 0
		 -0.21556068370478476 -0.32944492265997993 -7.3393046140781636e-08 0 -0.32944491036378143 0.21556063841136283 1.5189105603534288e-07 0
		 -28.472363853296748 43.333099684950199 39.484594718574826 1;
	setAttr ".pm[25]" -type "matrix" -0.00041992934645354688 0.00018933484925500095 -0.39370052383515569 0
		 -0.38831111894413228 0.064920135338728369 0.00044540157945867901 0 0.064920264703217989 0.38831132190505779 0.00011749773929892708 0
		 53.524937020301337 21.320158379616625 6.9211696107155793 1;
	setAttr ".pm[26]" -type "matrix" -0.00043524721203314504 -0.00015230370665513798 -0.39370052326592414 0
		 -0.32625398099670777 -0.2203599067008056 0.00044592961545728406 0 -0.22035995299443606 0.32625421779269104 0.00011740220298007357 0
		 10.389451319208083 39.273887581682182 6.9211211405274442 1;
	setAttr ".pm[27]" -type "matrix" -0.00042864559187505278 7.7898463282290886e-05 -0.39370055226177375 0
		 -0.3672906567510939 0.14176655549665443 0.00042794162576589157 0 0.14176651252678676 0.36729089973327417 -8.1676821996615518e-05 0
		 27.910688383356039 28.648431212410127 6.9032442123506419 1;
	setAttr ".pm[28]" -type "matrix" -0.00010047848943493823 0.00042391541850950296 -0.39370057573445277 0
		 -0.017393322342657315 0.39331618083395459 0.00042794056154039667 0 0.39331633931911925 0.017393461177918838 -8.1652184665496867e-05 0
		 31.1086208969407 0.37363743832131946 6.903246572844818 1;
	setAttr ".pm[29]" -type "matrix" -0.0031960962142285258 -0.051562689586665801 -0.39029654021559351 0
		 -0.38866399795632112 0.062568393758246812 -0.0050832801610697243 0 0.062693094128700222 0.38526200115377757 -0.051410943434755343 0
		 53.336207276058403 20.474018241693638 -10.169958292841558 1;
	setAttr ".pm[30]" -type "matrix" 0.031800835547252618 -0.040714047965143579 -0.39029653912054157 0
		 -0.33240583142377844 -0.21090488454271339 -0.0050832916073640759 0 -0.20855555685777702 0.32994213515367449 -0.051410950616302943 0
		 12.165313926056047 38.131377583584765 -10.169958827606973 1;
	setAttr ".pm[31]" -type "matrix" -0.012873089796552098 -0.04989734268730598 -0.39031378844580655 0
		 -0.36986267363931447 0.13482053414980064 -0.0050367477980097592 0 0.13429900253098956 0.36651599243621308 -0.051284421311516802 0
		 26.696504285989842 27.83655575473124 -10.160348938694563 1;
	setAttr ".pm[32]" -type "matrix" -0.05087237154361525 -0.0082133626449017224 -0.39031379162993551 0
		 -0.024787819625446659 0.39288738929526329 -0.0050367493494922599 0 0.38961234493643077 0.023923742337178183 -0.051284396925478086 0
		 29.87803804142462 1.1604265287508819 -10.160347068612678 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 26 ".ma";
	setAttr -s 33 ".dpf[0:32]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4 4 4 4 4 4 4 4 4 4 4;
	setAttr -s 26 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 3;
	setAttr ".bm" 3;
	setAttr ".ucm" yes;
	setAttr -s 26 ".ifcl";
createNode groupId -n "groupId1";
	rename -uid "F2E25074-4E13-BF3C-74E5-38A077B00554";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	rename -uid "ED1EE842-42AE-705C-55EB-CC90BFC5596D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:1382]";
createNode groupId -n "groupId2";
	rename -uid "96C79E52-49B3-FD95-9648-1AB67A78D0B9";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	rename -uid "DCF8DF7E-4C28-9186-865C-67A35D718E2F";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[1383:1646]";
createNode tweak -n "tweak1";
	rename -uid "20664B4A-49D4-E25C-3F39-76BEC8A37DC3";
createNode objectSet -n "skinCluster1Set";
	rename -uid "94AE9B84-4E3C-81CF-84C1-58855288A9AF";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster1GroupId";
	rename -uid "2E96ECDB-4130-3F6A-5276-3782B154B8C5";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster1GroupParts";
	rename -uid "C27B85E3-466F-3C4D-2375-D390E895C0D1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet1";
	rename -uid "A428634E-4E6B-22EC-1D30-C79C910588AF";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId4";
	rename -uid "4328E251-4EA7-8E19-D660-D2B6B28933DF";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts4";
	rename -uid "6118C967-447E-1748-05CA-7E82309FDAD4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose1";
	rename -uid "F19B7BE2-4707-EAA5-5021-7A9FF70775EF";
	setAttr -s 26 ".wm";
	setAttr -s 33 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 2.5399999618530273 2.5399999618530273 2.5399999618530273 -3.7272744940388435e-06
		 8.7422776430180025e-08 1.5099579751755745e-07 0 6.2330578032288031e-08 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.70710678118654757 0 0 0.70710678118654757 1
		 1 1 no;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1.0000001192092896 1 1.5707973920593326
		 -1.2076404900167486 -1.5707964599529511 0 1.6904879203138989e-06 26.748403549194336
		 42.93817138671875 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0.39370079331436747
		 0.39370079331436747 0.39370079331436747 no;
	setAttr ".xm[2]" -type "matrix" "xform" 0.99999994039535522 1 1 -8.7422736745987326e-08
		 -3.2584154086204241e-07 -1.2631476913528339 0 12.850601196289063 3.814697265625e-06
		 2.0315565052442253e-06 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 0.99999988079072466
		 1 no;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 9.3853710971083485e-08 -2.620126288868618e-14
		 0.034825666554640214 0 21.655754089355469 -0.000118255615234375 2.8129034035373479e-06 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1.0000000596046483 1 1 no;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 6.4269185603391922e-15 0 0.61647392203274942 0 25.649145126342773
		 0 7.3706587500055321e-08 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[5]" -type "matrix" "xform" 1.0000001192092896 1.0000001192092896 1 3.6159815725276572e-08
		 0 -0.82365653640628134 0 13.376956939697266 -3.5762786865234375e-06 1.2611906186066335e-07 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 -0.0024416358679240796 -0.012659703200063196
		 -0.037706304517744857 0 18.675959190670774 -4.2973716301368308 8.4802881890573811 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.00046732735245499322 -0.00044614848224208616 -0.71217929032400162 0.70199732263754289 1
		 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 -0.0001268122135207943 0.02561892511465419
		 0.02926900757122854 0 18.24924228424986 -0.60621496350072956 -0.79192192195109534 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 3.763989559132329e-08 1.3983791182128406e-09 0.037125901870726799 0.99931059606624995 1
		 1 1 yes;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1 1 -0.00025570024236370699 -0.015632495681313044
		 0.081893772600596382 0 16.76844696634711 8.6979165543211767 1.7902961379782658 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[9]" -type "matrix" "xform" 1 1 1 0 0 0 0 11.20559500421987 -0.18036411645980718
		 0.00050456120321619468 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.012037406850911477 -0.0078222098064859996 0.46056233341313996 0.88751126804739366 1
		 1 1 yes;
	setAttr ".xm[10]" -type "matrix" "xform" 1 1 1 0.011348816965680599 -0.0014702797724705017
		 -0.01949414023884033 0 18.677638056112624 -4.2972641022727531 -6.8244679574164175 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.00049726195784851397 -0.00088219232830547695 -0.71208750348218786 0.7020899955502472 1
		 1 1 yes;
	setAttr ".xm[11]" -type "matrix" "xform" 1 1 1 -0.003976655635054966 0.0025591060227539153
		 0.013786311478024279 0 18.057607177181776 -0.64413197292899149 -2.2257531009857257 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 3.7680742130600723e-08 1.3998966289997194e-09 0.037125901870726799 0.99931059606624995 1
		 1 1 yes;
	setAttr ".xm[12]" -type "matrix" "xform" 1 1 1 -6.9255370404570609e-05 0.007379146513795053
		 0.042601055710692871 0 16.905768920515541 8.4901391167076437 -1.49740469340112 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[13]" -type "matrix" "xform" 1 1 1 0 0 0 0 11.108568591316594 0.10307713074418484
		 0.0002425780929622473 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.016517913272511592 0.014013739763765267 0.46007556920228532 0.88761548221183495 1
		 1 1 yes;
	setAttr ".xm[14]" -type "matrix" "xform" 0.99999982118606567 0.99999982118606567
		 1 6.2831858398118046 3.4842530696337501e-07 2.760415472031188 0 4.2603816986083984
		 15.958770751953125 -1.1444091796875e-05 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 0.99999988079072466 1 no;
	setAttr ".xm[15]" -type "matrix" "xform" 1 1 1 0 0 -0.13934707442973793 0 12.411914825439453
		 7.62939453125e-06 2.6728503144113347e-07 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1.0000001788139663
		 1.0000001788139663 1 no;
	setAttr ".xm[16]" -type "matrix" "xform" 1 1 1 0 0 -0.10771751743357225 0 24.240320205688477
		 0 6.3581501308362931e-07 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[17]" -type "matrix" "xform" 1 1 1 0 0 -0.10771751743357225 0 20.434858039432498
		 -0.31018519859221877 -5.6855900419674592 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 no;
	setAttr ".xm[18]" -type "matrix" "xform" 0.99999982118606567 0.99999982118606567
		 1 6.2831858398118046 3.4842530696337501e-07 2.760415472031188 0 -1.1652956282098803
		 8.0866788938982026 -6.4731602471500633e-06 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 0.99999988079072466 1 no;
	setAttr ".xm[19]" -type "matrix" "xform" 1 1 1 0 0 -0.13934707442973793 0 13.655589496305408
		 -0.20392618497759915 15.609529820838954 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1.0000001788139663
		 1.0000001788139663 1 no;
	setAttr ".xm[20]" -type "matrix" "xform" 1 1 1 0 0 -0.10771751743357225 0 19.316033339125489
		 0.60781264577373673 17.160149510223718 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 no;
	setAttr ".xm[21]" -type "matrix" "xform" 0.99999982118606567 0.99999982118606567
		 1 6.2831858398118046 3.4842530696337501e-07 2.760415472031188 0 -1.1652956282098803
		 8.0866788938982026 -6.4731602471500633e-06 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 0.99999988079072466 1 no;
	setAttr ".xm[22]" -type "matrix" "xform" 1 1 1 0 0 -0.13934707442973793 0 13.85295379324724
		 0.19724971232937172 -19.582793408913723 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1.0000001788139663
		 1.0000001788139663 1 no;
	setAttr ".xm[23]" -type "matrix" "xform" 1 1 1 0 0 -0.10771751743357225 0 11.482117904302346
		 8.3350428031729002 -19.901780274750767 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 no;
	setAttr ".xm[24]" -type "matrix" "xform" 1 1 1 0 0 -0.10771751743357225 0 11.482117904302346
		 8.3350428031729002 -19.901780274750767 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 no;
	setAttr ".xm[25]" -type "matrix" "xform" 0.99999988079071045 0.99999982118606567
		 1 -0.00047995894640288781 -0.001067074744029286 -2.6127863556991855 0 4.8137702941894531
		 5.1540184020996094 -6.9680061340332031 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 0.99999988079072466 1 no;
	setAttr ".xm[26]" -type "matrix" "xform" 1 1 1 9.5178624167024711e-07 -9.7562172208614034e-07
		 -0.75969499705271859 0 18.944175720214844 -1.9073486328125e-06 9.5367431640625e-07 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1.0000001192093038 1.0000001788139663
		 1 no;
	setAttr ".xm[27]" -type "matrix" "xform" 0.99999994039535522 0.99999994039535522
		 1 0.00048819253397535127 -0.00013945719511851987 0.96240194863804929 0 17.942811965942383
		 -3.814697265625e-06 -4.76837158203125e-07 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 no;
	setAttr ".xm[28]" -type "matrix" "xform" 1.0000002384185791 1.0000001192092896 0.99999994039535522 -1.4551912491671435e-11
		 6.2652347817005297e-08 1.158241514956869 0 15.779938697814941 2.288818359375e-05
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1.0000000596046483 1.0000000596046483
		 1 no;
	setAttr ".xm[29]" -type "matrix" "xform" 0.99999988079071045 0.99999988079071045
		 1 0.13135185937505731 -0.0081186211513547477 -2.6185139547010374 0 4.8137779235839844
		 5.1540260314941406 6.9675636291503906 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 0.99999988079072466 1 no;
	setAttr ".xm[30]" -type "matrix" "xform" 1 1 1 3.0387967585804501e-09 3.4434697778326442e-08
		 -0.72500125982107755 0 18.944183349609375 -1.9073486328125e-06 9.5367431640625e-07 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1.0000001192093038 1.0000001192093038
		 1 no;
	setAttr ".xm[31]" -type "matrix" "xform" 1 1.0000001192092896 1 -0.00034523008808187369
		 1.538491568885642e-09 0.91493021270253094 0 17.94281005859375 -7.62939453125e-06
		 -4.76837158203125e-07 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[32]" -type "matrix" "xform" 1.0000002384185791 1.0000001192092896 1 1.4551912491671435e-11
		 6.2590503971119613e-08 1.158241514956869 0 15.779935836791992 2.09808349609375e-05
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 0.99999988079072466 1 no;
	setAttr -s 26 ".m";
	setAttr -s 26 ".p";
	setAttr ".bp" yes;
createNode geomBind -n "geomBind1";
	rename -uid "991F166E-4A73-291C-BF64-939BA747E617";
	setAttr ".mi" 3;
createNode animCurveTU -n "b_RightFoot02_visibility";
	rename -uid "73C426AA-44D6-4CE8-110F-7A94C4E8C95A";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  8.75 1 117 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTU -n "b_Root_visibility";
	rename -uid "F91AB96D-433B-0D49-22FD-D494F787573A";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  8.75 1 117 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTU -n "b_Hip_visibility";
	rename -uid "E2650240-4373-6A91-3D6E-BCAD8CE5A826";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  8.75 1 117 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTU -n "b_Spine01_visibility";
	rename -uid "5DE94B8F-4390-D4CB-A0B3-FEBEF66CDE5D";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  8.75 1 117 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTU -n "b_Spine02_visibility";
	rename -uid "C34F408C-4F77-6FD1-985A-43B177438D26";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  8.75 1 117 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTU -n "b_Neck_visibility";
	rename -uid "7D48DA4C-499F-B870-D407-3488A33C1D4A";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  8.75 1 117 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTU -n "b_Head_visibility";
	rename -uid "5AAF8061-4B45-4606-78B9-8CA9AB2365EB";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  8.75 1 117 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTU -n "b_RightUpperArm_visibility";
	rename -uid "05DB8DF1-49BE-C7E2-2483-EB833EC98F97";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  8.75 1 117 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTU -n "b_RightForeArm_visibility";
	rename -uid "360A7ECB-415F-7EEB-5C00-AFAF3324B1D3";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  8.75 1 117 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTU -n "b_RightWrist_visibility";
	rename -uid "68C0509C-4B1F-53F8-209A-3799B31B3609";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  8.75 1 117 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTU -n "b_RightHand_visibility";
	rename -uid "BF7A4682-43F6-D70E-9D06-AB83D4BE53E0";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  8.75 1 117 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTU -n "b_LeftUpperArm_visibility";
	rename -uid "0E36F49D-4071-E6E6-63B9-0AA5BA144719";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  8.75 1 117 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTU -n "b_LeftForeArm_visibility";
	rename -uid "E4596274-4FE3-F904-AD47-188D8D0D4244";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  8.75 1 117 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTU -n "b_LeftWrist_visibility";
	rename -uid "22313454-4489-0A95-DFCB-719960564AFB";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  8.75 1 117 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTU -n "b_LeftHand_visibility";
	rename -uid "C24C6362-496D-0CC8-8B71-1FBABFF8B139";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  8.75 1 117 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTU -n "b_LeftLeg01_visibility";
	rename -uid "505903CF-4C47-F375-F630-21AB177A2D61";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  8.75 1 117 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTU -n "b_LeftLeg02_visibility";
	rename -uid "B5C0F103-4564-6D51-01CA-DD8D6567FB96";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  8.75 1 117 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTU -n "b_LeftFoot01_visibility";
	rename -uid "1C587685-4EA0-9387-8A8D-30B4921A2A30";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  8.75 1 117 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTU -n "b_LeftFoot02_visibility";
	rename -uid "2238E126-4424-0E23-111B-92A6FFCDCA49";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  8.75 1 117 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTU -n "b_RightLeg01_visibility";
	rename -uid "76FE6108-42CC-3B3B-506C-87B94075F571";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  8.75 1 117 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTU -n "b_RightLeg02_visibility";
	rename -uid "6B6232AD-41AD-B0BD-904F-1AA972DAE869";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  8.75 1 117 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTU -n "b_RightFoot01_visibility";
	rename -uid "49457900-4232-27AD-8B5A-CFBED09796FA";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  8.75 1 117 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode pairBlend -n "pairBlend4";
	rename -uid "603015C5-4A71-EB03-DDB2-CA9AECD93EAF";
	setAttr ".rm" 2;
createNode animCurveTL -n "pairBlend4_inTranslateX1";
	rename -uid "C733E62E-4276-12FC-ABB7-49973AC5D6A3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 15.779935836791992 8.75 15.779935836791992
		 17.5 15.779935836791992 26.25 15.779935836791992 35 15.779935836791992 43.75 15.779935836791992
		 52.5 15.779935836791992 61.25 15.779935836791992 70 15.779935836791992 117 15.779935836791992;
createNode animCurveTL -n "pairBlend4_inTranslateY1";
	rename -uid "9B7D9B3D-4894-C1D6-CFFA-F6A7ABF3978B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 2.09808349609375e-05 8.75 2.09808349609375e-05
		 17.5 2.09808349609375e-05 26.25 2.09808349609375e-05 35 2.09808349609375e-05 43.75 2.09808349609375e-05
		 52.5 2.09808349609375e-05 61.25 2.09808349609375e-05 70 2.09808349609375e-05 117 2.09808349609375e-05;
createNode animCurveTL -n "pairBlend4_inTranslateZ1";
	rename -uid "27596860-4D04-069A-56A8-D2B6AA16CA47";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 8.75 0 17.5 0 26.25 0 35 0 43.75 0 52.5 0
		 61.25 0 70 0 117 0;
createNode animCurveTA -n "effector3_rotateX";
	rename -uid "A16699AD-4A7F-E3CD-A729-F5AB60B69D54";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 8.75 0 17.5 0 26.25 0 35 0 43.75 0 52.5 0
		 61.25 0 70 0 117 0;
createNode animCurveTA -n "effector3_rotateY";
	rename -uid "1566A377-487E-8A75-20FA-8DB19EFC2B1C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 8.75 0 17.5 0 26.25 0 35 0 43.75 0 52.5 0
		 61.25 0 70 0 117 0;
createNode animCurveTA -n "effector3_rotateZ";
	rename -uid "00B767A1-4830-DA65-1B34-38BDBA248C8D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 8.75 0 17.5 0 26.25 0 35 0 43.75 0 52.5 0
		 61.25 0 70 0 117 0;
createNode animCurveTU -n "effector3_scaleX";
	rename -uid "9735C76B-460C-5C09-4B0D-8A8A73E4BE43";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 1 8.75 1 17.5 1 26.25 1 35 1 43.75 1 52.5 1
		 61.25 1 70 1 117 1;
createNode animCurveTU -n "effector3_scaleY";
	rename -uid "2FAAA3AE-4A0E-39CE-4B35-D688B47EEFA4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 1 8.75 1 17.5 1 26.25 1 35 1 43.75 1 52.5 1
		 61.25 1 70 1 117 1;
createNode animCurveTU -n "effector3_scaleZ";
	rename -uid "DAF69184-44C3-BE62-CB0A-EBB82EE8A1A8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 1 8.75 1 17.5 1 26.25 1 35 1 43.75 1 52.5 1
		 61.25 1 70 1 117 1;
createNode animCurveTL -n "FL_translateX";
	rename -uid "43EA75D5-4C82-F8E5-5AE6-1CA4E23B7332";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 26.458797526308569 8.75 26.017072172701063
		 17.5 26.017035109945294 26.25 26.017034675472956 35 26.622342118977386 43.75 26.622342162623458
		 52.5 26.622342141484932 61.25 26.622341652606721 70 26.622341467287296;
createNode animCurveTL -n "RR_translateX";
	rename -uid "C4C27A38-4E3B-7C0C-247D-11B56721564F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -29.061477938904538 8.75 -29.061515177681954
		 17.5 -29.061515222715851 26.25 -29.061515420271117 35 -29.061515630972838 43.75 -29.061516084507911
		 52.5 -29.061514173675288 61.25 -29.061526428557666 70 -29.061476858081853;
createNode animCurveTL -n "RL_translateX";
	rename -uid "86732541-4569-B489-34D0-0A8A4C904BFD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 45.238433788722872 8.75 45.238433871119014
		 17.5 45.238471667152851 26.25 45.238429542060551 35 45.238428354513545 43.75 45.238426804892029
		 52.5 45.238424805163021 61.25 45.238412248362991 70 45.238412171843478;
createNode animCurveTL -n "FR_translateX";
	rename -uid "5F5DC7AF-447E-46BD-9346-A4B869465F40";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -24.105095036448503 8.75 -24.105094940684921
		 17.5 -24.105094877621568 26.25 -24.105094830004376 35 -24.105095276518956 43.75 -24.105094813453213
		 52.5 -24.105094727946796 61.25 -24.10509472724933 70 -24.105094668943391;
createNode animCurveTL -n "FL_translateY";
	rename -uid "8A828379-4C57-6724-E7CE-928E36C6C200";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 19.596993296956057 8.75 25.069891451679485
		 17.5 26.094437332535499 26.25 18.370746658102242 35 34.697308067403704 43.75 40.147115159295254
		 52.5 54.37716741345092 61.25 50.908648246621567 70 65.583182751504538;
createNode animCurveTL -n "RR_translateY";
	rename -uid "47097747-43ED-5CE5-BFC4-4880665E765C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 72.514540750404734 8.75 70.279775830495154
		 17.5 58.75853326980284 26.25 51.034835864938195 35 63.448282945895684 43.75 26.510707123472216
		 52.5 23.180284395570403 61.25 24.781046844165786 70 9.0397944947309838;
createNode animCurveTL -n "RL_translateY";
	rename -uid "35C78FD3-4182-EED9-F166-1B8A0530BA3E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 74.720367478378819 8.75 69.530018599674193
		 17.5 56.472500441187584 26.25 17.081819153960222 35 11.026483287358765 43.75 8.3015858146832109
		 52.5 8.604360050992149 61.25 9.1380211957610129 70 47.024993331939115;
createNode animCurveTL -n "FR_translateY";
	rename -uid "CF7FBD4D-44DC-B6DA-CC0F-66B65E071B22";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 22.109583113628315 8.75 15.818385142396881
		 17.5 14.538249905951613 26.25 31.272926529083644 35 42.47530464649877 43.75 54.283220437875791
		 52.5 76.38521387714809 61.25 62.511111498080673 70 41.166339441235763;
createNode animCurveTL -n "FL_translateZ";
	rename -uid "A038275A-4F95-4B3C-C6A3-6798E9AEA742";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 78.041084101795079 8.75 -9.8954095067952554
		 17.5 -21.160337438983539 26.25 -1.5936388299440267 35 -12.069107383389298 43.75 35.768082957290623
		 52.5 65.74201833511836 61.25 36.659766184333712 70 97.75917784972674;
createNode animCurveTL -n "RR_translateZ";
	rename -uid "6106BBA7-4B61-56F1-68D9-47BAF529090E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -147.6926120333784 8.75 -113.11357313379543
		 17.5 -70.612990746463254 26.25 -13.200182792224105 35 21.920793447598989 43.75 34.63700710855187
		 52.5 20.104178695528766 61.25 -17.249139989094132 70 -60.738998776568252;
createNode animCurveTL -n "RL_translateZ";
	rename -uid "92EA7DFF-4CD0-C86D-4631-70801DFF4C2D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -92.825319816161496 8.75 -70.178937374292559
		 17.5 -0.027316757500948086 26.25 8.2112206301215807 35 -15.101841360673561 43.75 -50.828350198798375
		 52.5 -77.169079374471181 61.25 -111.32069069358889 70 -135.33355993648337;
createNode animCurveTL -n "FR_translateZ";
	rename -uid "064CDCA4-427E-C534-8D28-A281479F17D3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 13.02289229759252 8.75 48.466584476683316
		 17.5 21.583686479584877 26.25 23.128425971181958 35 62.79090670578357 43.75 101.24231811573426
		 52.5 121.52770850320357 61.25 111.92256068617132 70 88.71012003812136;
createNode animCurveTA -n "FL_rotateX";
	rename -uid "38F1AF58-4786-AA77-712C-87880C08AF11";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 91.01902836021155 8.75 89.374549224165349
		 17.5 88.898727064630847 26.25 85.714536655044697 35 82.956738276576374 43.75 82.400787245322093
		 52.5 85.904734821034324 61.25 83.669143341985034 70 90.655387872768628;
createNode animCurveTA -n "RR_rotateX";
	rename -uid "B335FDA9-4252-FAA9-4F89-9D9ED636C507";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 8.75 0 17.5 0 26.25 0 35 0 43.75 0 52.5 0
		 61.25 0 70 0;
createNode animCurveTA -n "RL_rotateX";
	rename -uid "AA344FF5-4D70-7CEE-E83B-0A8C7D68741F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 8.75 0 17.5 0 26.25 0 35 0 43.75 0 52.5 0
		 61.25 0 70 0;
createNode animCurveTA -n "FR_rotateX";
	rename -uid "C2724603-4885-BB50-1168-2FB4901C5254";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 90.312634688554823 8.75 90.460479254361289
		 17.5 90.671875956773476 26.25 90.408997437029512 35 89.141057757087026 43.75 91.49607996609258
		 52.5 92.967175620792631 61.25 91.16726764795952 70 91.955943209172418;
createNode animCurveTA -n "FL_rotateY";
	rename -uid "6EF05727-4F32-B8BF-8373-ABB2A2368902";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -15.026317361408418 8.75 31.253684188619808
		 17.5 35.008642519719629 26.25 24.124803345544166 35 29.412170685162515 43.75 0.34314254780198211
		 52.5 -13.041332397462211 61.25 11.038288719229394 70 -17.889656528256289;
createNode animCurveTA -n "RR_rotateY";
	rename -uid "C7633452-4D6A-6085-5234-8681F0EDD854";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 8.75 0 17.5 0 26.25 0 35 0 43.75 0 52.5 0
		 61.25 0 70 0;
createNode animCurveTA -n "RL_rotateY";
	rename -uid "C5BF4EFB-482B-4A58-176D-3AB9E726890E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 8.75 0 17.5 0 26.25 0 35 0 43.75 0 52.5 0
		 61.25 0 70 0;
createNode animCurveTA -n "FR_rotateY";
	rename -uid "AE9ABF7C-4ADD-1BAE-95FF-68875940EB01";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 13.57348313628208 8.75 2.9078316874629735
		 17.5 14.140159517978933 26.25 1.5541980413148944 35 -14.01068738715108 43.75 -36.83423190305264
		 52.5 -52.445017956709243 61.25 -35.631944416835012 70 -8.3564674143471525;
createNode animCurveTA -n "FL_rotateZ";
	rename -uid "A1DB6391-4EAC-DCE5-5C20-D28B5E85642E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -92.190768791858517 8.75 -85.284859103927445
		 17.5 -86.320473423486078 26.25 -91.651312338224571 35 -93.174993531240546 43.75 -103.16693115056161
		 52.5 -99.709856521763854 61.25 -92.514678622336888 70 -97.806833332211596;
createNode animCurveTA -n "RR_rotateZ";
	rename -uid "C2EE8DF6-44E6-A11F-0632-0B937F75979A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 8.75 0 17.5 0 26.25 0 35 0 43.75 0 52.5 0
		 61.25 0 70 0;
createNode animCurveTA -n "RL_rotateZ";
	rename -uid "C9D3509B-46F2-98A2-5297-AFBE6D096E10";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 8.75 0 17.5 0 26.25 0 35 0 43.75 0 52.5 0
		 61.25 0 70 0;
createNode animCurveTA -n "FR_rotateZ";
	rename -uid "078A6922-43E5-204A-5F31-A285CF974CBA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -91.126906806327838 8.75 -90.654024509707881
		 17.5 -90.431573685715392 26.25 -91.366483969009209 35 -102.35686181205156 43.75 -105.08796118986001
		 52.5 -101.0923105805974 61.25 -93.198660337179135 70 -93.577992911686849;
createNode animCurveTU -n "FL_scaleX";
	rename -uid "3315EBB0-49ED-1C85-64F7-2ABF15CC078A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 8.75 1 17.5 1 26.25 1 35 1 43.75 1 52.5 1
		 61.25 1 70 1;
createNode animCurveTU -n "RR_scaleX";
	rename -uid "25E42392-47B7-D116-D4C5-F6B6095506D4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 8.75 1 17.5 1 26.25 1 35 1 43.75 1 52.5 1
		 61.25 1 70 1;
createNode animCurveTU -n "RL_scaleX";
	rename -uid "5866F69B-49A1-58EA-06A5-E087EDD406D8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 8.75 1 17.5 1 26.25 1 35 1 43.75 1 52.5 1
		 61.25 1 70 1;
createNode animCurveTU -n "FR_scaleX";
	rename -uid "EFD1ED99-4B8A-8EC6-50F1-E99EE4C70DA3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 8.75 1 17.5 1 26.25 1 35 1 43.75 1 52.5 1
		 61.25 1 70 1;
createNode animCurveTU -n "FL_scaleY";
	rename -uid "6670A35F-442D-19F0-8958-E78892D4D0F5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 8.75 1 17.5 1 26.25 1 35 1 43.75 1 52.5 1
		 61.25 1 70 1;
createNode animCurveTU -n "RR_scaleY";
	rename -uid "977DD523-4160-138F-1084-019F54C4AE30";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 8.75 1 17.5 1 26.25 1 35 1 43.75 1 52.5 1
		 61.25 1 70 1;
createNode animCurveTU -n "RL_scaleY";
	rename -uid "4B1330EE-4F83-B6B0-DD99-0EA7000CD914";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 8.75 1 17.5 1 26.25 1 35 1 43.75 1 52.5 1
		 61.25 1 70 1;
createNode animCurveTU -n "FR_scaleY";
	rename -uid "45419A13-45C5-4086-B290-5DA2B502BA20";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 8.75 1 17.5 1 26.25 1 35 1 43.75 1 52.5 1
		 61.25 1 70 1;
createNode animCurveTU -n "FL_scaleZ";
	rename -uid "22960199-4A8F-459C-A499-82BD3CAB44C8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 8.75 1 17.5 1 26.25 1 35 1 43.75 1 52.5 1
		 61.25 1 70 1;
createNode animCurveTU -n "RR_scaleZ";
	rename -uid "5DD97ECB-4941-B1D1-DF40-A4AA2BECDC6D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 8.75 1 17.5 1 26.25 1 35 1 43.75 1 52.5 1
		 61.25 1 70 1;
createNode animCurveTU -n "RL_scaleZ";
	rename -uid "996BB665-489B-CF47-2B2D-4AA6E1BF1324";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 8.75 1 17.5 1 26.25 1 35 1 43.75 1 52.5 1
		 61.25 1 70 1;
createNode animCurveTU -n "FR_scaleZ";
	rename -uid "AF84CA59-4E3C-BFCA-5F2D-05B08AF40675";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 8.75 1 17.5 1 26.25 1 35 1 43.75 1 52.5 1
		 61.25 1 70 1;
createNode animCurveTU -n "FL_visibility";
	rename -uid "1AB55AE0-45E8-0124-0F4A-A080160985FF";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 8.75 1 17.5 1 26.25 1 35 1 43.75 1 52.5 1
		 61.25 1 70 1;
	setAttr -s 9 ".kot[0:8]"  5 5 5 5 5 5 5 5 
		5;
createNode animCurveTU -n "RR_visibility";
	rename -uid "7DF92043-4EB2-6CE8-2743-09BFE2B60770";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 8.75 1 17.5 1 26.25 1 35 1 43.75 1 52.5 1
		 61.25 1 70 1;
	setAttr -s 9 ".kot[0:8]"  5 5 5 5 5 5 5 5 
		5;
createNode animCurveTU -n "RL_visibility";
	rename -uid "79AF5F54-4CA8-EE4C-B171-A3AC32A707F8";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 8.75 1 17.5 1 26.25 1 35 1 43.75 1 52.5 1
		 61.25 1 70 1;
	setAttr -s 9 ".kot[0:8]"  5 5 5 5 5 5 5 5 
		5;
createNode animCurveTU -n "FR_visibility";
	rename -uid "C723F0E9-44CB-DD6C-4B86-43AB6D8708AF";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 8.75 1 17.5 1 26.25 1 35 1 43.75 1 52.5 1
		 61.25 1 70 1;
	setAttr -s 9 ".kot[0:8]"  5 5 5 5 5 5 5 5 
		5;
createNode animCurveTU -n "FL_poleVectorX";
	rename -uid "706B213C-4C02-F95D-C2E2-24B1D5551ACE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 8.75 0 17.5 0 26.25 0 35 0 43.75 0 52.5 0
		 61.25 0 70 0;
createNode animCurveTU -n "RR_poleVectorX";
	rename -uid "42BCC458-4943-E919-87C4-78B9CEEED8AF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.26044548199752549 8.75 0.26044565151061144
		 17.5 0.26044532516189095 26.25 0.26044511214090399 35 0.26044495816189256 43.75 0.26044500511826796
		 52.5 0.2604449093282411 61.25 0.26044472565179677 70 0.26044472565179622;
createNode animCurveTU -n "RL_poleVectorX";
	rename -uid "981618A1-4ACB-3FE3-6895-D4BEB962421F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 4.0349431392857559e-06 8.75 4.0349431392372344e-06
		 17.5 4.0700361933168923e-06 26.25 5.239701916998417e-06 35 5.2115349513692219e-06
		 43.75 5.2115349513691948e-06 52.5 5.2394078576602124e-06 61.25 -1.2438219003053158e-05
		 70 -1.2457203796125676e-05;
createNode animCurveTU -n "FR_poleVectorX";
	rename -uid "A2FAD625-4DEE-6108-44F5-31A54E4969A2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 8.75 0 17.5 0 26.25 0 35 0 43.75 0 52.5 0
		 61.25 0 70 0;
createNode animCurveTU -n "FL_poleVectorY";
	rename -uid "91175189-4561-49CF-7116-51BEB7815646";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 8.75 0 17.5 0 26.25 0 35 0 43.75 0 52.5 0
		 61.25 0 70 0;
createNode animCurveTU -n "RR_poleVectorY";
	rename -uid "1748AF8E-4EDB-677C-A25E-F698B4B6CD08";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.051455231075575536 8.75 0.051455170950362644
		 17.5 0.051455243735189775 26.25 0.051455266290055049 35 0.051455277014061891 43.75 0.051455276418398629
		 52.5 0.051455279387616723 61.25 0.051455294525777372 70 0.051455294525777469;
createNode animCurveTU -n "RL_poleVectorY";
	rename -uid "C4C2E6D0-42A8-A911-D885-D993FB5A0351";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0.082969897048604177 8.75 0.082969897048604288
		 17.5 0.082969909340888812 26.25 0.082970206647644984 35 0.082970199444480169 43.75 0.082970199444480225
		 52.5 0.082970207079343078 61.25 0.082965649451009246 70 0.082965643216787274;
createNode animCurveTU -n "FR_poleVectorY";
	rename -uid "3973746F-47E2-D699-A550-5FBE6F47474C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 8.75 0 17.5 0 26.25 0 35 0 43.75 0 52.5 0
		 61.25 0 70 0;
createNode animCurveTU -n "FL_poleVectorZ";
	rename -uid "298A6EBF-4C27-CD74-C192-F28574DA7476";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 8.75 1 17.5 1 26.25 1 35 1 43.75 1 52.5 1
		 61.25 1 70 1;
createNode animCurveTU -n "RR_poleVectorZ";
	rename -uid "93FFCB67-41BD-5E6D-6FD9-1E82D57724F7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -1.9823018156571872 8.75 -1.9823017949463178
		 17.5 -1.9823018359344871 26.25 -1.9823018633368459 35 -1.9823018832890402 43.75 -1.9823018771351313
		 52.5 -1.9823018896434448 61.25 -1.9823019133828419 70 -1.9823019133828419;
createNode animCurveTU -n "RL_poleVectorZ";
	rename -uid "395F6B55-4A58-D2E3-A024-5F87AC76032A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 -1.9982782579431659 8.75 -1.9982782579431664
		 17.5 -1.9982782574327107 26.25 -1.9982782450856007 35 -1.998278245384755 43.75 -1.9982782453847547
		 52.5 -1.9982782450676757 61.25 -1.9982784342669488 70 -1.9982784345256663;
createNode animCurveTU -n "FR_poleVectorZ";
	rename -uid "BBB18C0D-442A-ACD9-C97C-6F915A02C25A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 8.75 1 17.5 1 26.25 1 35 1 43.75 1 52.5 1
		 61.25 1 70 1;
createNode animCurveTU -n "FL_offset";
	rename -uid "E8DA5D0C-495D-2F30-6729-BEB5091FC054";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 8.75 0 17.5 0 26.25 0 35 0 43.75 0 52.5 0
		 61.25 0 70 0;
createNode animCurveTU -n "RR_offset";
	rename -uid "54AE745F-4E98-E830-3C4B-0F8B843165FB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 8.75 0 17.5 0 26.25 0 35 0 43.75 0 52.5 0
		 61.25 0 70 0;
createNode animCurveTU -n "RL_offset";
	rename -uid "EEA72394-4571-252A-27DD-608E2D055746";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 8.75 0 17.5 0 26.25 0 35 0 43.75 0 52.5 0
		 61.25 0 70 0;
createNode animCurveTU -n "FR_offset";
	rename -uid "D24E6E92-497F-B79D-3B06-7ABB7466FE1C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 8.75 0 17.5 0 26.25 0 35 0 43.75 0 52.5 0
		 61.25 0 70 0;
createNode animCurveTA -n "FL_roll";
	rename -uid "EDB5178F-44F0-40E9-179A-73B5F749B4CD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 8.75 0 17.5 0 26.25 0 35 0 43.75 0 52.5 0
		 61.25 0 70 0;
createNode animCurveTA -n "RR_roll";
	rename -uid "7317CD41-42C5-6E15-9CDE-D0BE6C49ABAF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 8.75 0 17.5 0 26.25 0 35 0 43.75 0 52.5 0
		 61.25 0 70 0;
createNode animCurveTA -n "RL_roll";
	rename -uid "0906D957-4868-EB2B-56E3-B099B5BFC85A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 8.75 0 17.5 0 26.25 0 35 0 43.75 0 52.5 0
		 61.25 0 70 0;
createNode animCurveTA -n "FR_roll";
	rename -uid "7F3A7EC4-4262-25A2-CB7D-9FA81CB36E0A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 8.75 0 17.5 0 26.25 0 35 0 43.75 0 52.5 0
		 61.25 0 70 0;
createNode animCurveTA -n "FL_twist";
	rename -uid "CFAD8195-4E62-E368-DBBF-FF85F08D1A68";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 8.75 0 17.5 0 26.25 0 35 0 43.75 0 52.5 0
		 61.25 0 70 0;
createNode animCurveTA -n "RR_twist";
	rename -uid "43D86254-4785-1FD8-E660-D58C8C5CCBC5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 8.75 0 17.5 0 26.25 0 35 0 43.75 0 52.5 0
		 61.25 0 70 0;
createNode animCurveTA -n "RL_twist";
	rename -uid "0CB04358-47AC-7B16-E448-89854C65E93D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 8.75 0 17.5 0 26.25 0 35 0 43.75 0 52.5 0
		 61.25 0 70 0;
createNode animCurveTA -n "FR_twist";
	rename -uid "7E1C2A47-47F5-8BD4-7DF2-38B692F14586";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 8.75 0 17.5 0 26.25 0 35 0 43.75 0 52.5 0
		 61.25 0 70 0;
createNode animCurveTU -n "FL_ikBlend";
	rename -uid "801A6DDA-4C6E-D78F-C57C-09A184A4443B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 8.75 1 17.5 1 26.25 1 35 1 43.75 1 52.5 1
		 61.25 1 70 1;
createNode animCurveTU -n "RR_ikBlend";
	rename -uid "267D505A-4405-1446-EBED-3DB6EA3562F5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 8.75 1 17.5 1 26.25 1 35 1 43.75 1 52.5 1
		 61.25 1 70 1;
createNode animCurveTU -n "RL_ikBlend";
	rename -uid "D7395616-40A2-C681-06D1-1E9B92CCB170";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 8.75 1 17.5 1 26.25 1 35 1 43.75 1 52.5 1
		 61.25 1 70 1;
createNode animCurveTU -n "FR_ikBlend";
	rename -uid "53BA837C-40CA-B8D5-FC76-2BB90CD4E996";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 8.75 1 17.5 1 26.25 1 35 1 43.75 1 52.5 1
		 61.25 1 70 1;
createNode animCurveTU -n "b_Tail01_visibility";
	rename -uid "8E66E2DD-4605-FE1E-BDAD-20A314230753";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8.75 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "b_Tail02_visibility";
	rename -uid "BBEDB782-4ACE-3B1D-6870-79BAE01A786A";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8.75 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "b_Tail03_visibility";
	rename -uid "8456E319-46FE-EE4B-183C-BEBEC173D519";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8.75 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "b_Tail05_visibility";
	rename -uid "FE47E152-4C03-7478-4EA3-F0ABE84C2AB9";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8.75 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "b_Tail04_visibility";
	rename -uid "FCB209CA-445E-2C98-69ED-0F91BB6257CA";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8.75 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "b_Tail02_visibility1";
	rename -uid "9663DEE8-4DD0-D763-97A7-AD9717389801";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8.75 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "b_Tail03_visibility1";
	rename -uid "AEC0BE05-4F60-EC90-15E9-8AA0EE05FBC0";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8.75 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "b_Tail06_visibility";
	rename -uid "0773689A-484C-3764-FD98-7C9351F99EC2";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8.75 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "b_Tail02_visibility2";
	rename -uid "B877B09B-423E-5C56-324B-C59E554D52C3";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8.75 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "b_Tail03_visibility2";
	rename -uid "504646BD-432D-048F-7AD3-DCBB54CAE94F";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8.75 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "b_Tail05_visibility1";
	rename -uid "6ED34C7D-4CDA-7103-1DC8-9DBFBAB7AF54";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  8.75 1;
	setAttr ".kot[0]"  5;
select -ne :time1;
	setAttr ".o" 35;
	setAttr ".unw" 35;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 8 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 10 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 2 ".u";
select -ne :defaultRenderingList1;
select -ne :defaultTextureList1;
	setAttr -s 2 ".tx";
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
	setAttr -s 2 ".sol";
connectAttr "b_Root_scaleX.o" "b_Root.sx";
connectAttr "b_Root_scaleY.o" "b_Root.sy";
connectAttr "b_Root_scaleZ.o" "b_Root.sz";
connectAttr "b_Root_translateX.o" "b_Root.tx";
connectAttr "b_Root_translateY.o" "b_Root.ty";
connectAttr "b_Root_translateZ.o" "b_Root.tz";
connectAttr "b_Root_rotateX.o" "b_Root.rx";
connectAttr "b_Root_rotateY.o" "b_Root.ry";
connectAttr "b_Root_rotateZ.o" "b_Root.rz";
connectAttr "Joints.di" "b_Root.do";
connectAttr "b_Root_visibility.o" "b_Root.v";
connectAttr "b_Hip_translateX.o" "b_Hip.tx";
connectAttr "b_Hip_translateY.o" "b_Hip.ty";
connectAttr "b_Hip_translateZ.o" "b_Hip.tz";
connectAttr "b_Root.s" "b_Hip.is";
connectAttr "b_Hip_scaleX.o" "b_Hip.sx";
connectAttr "b_Hip_scaleY.o" "b_Hip.sy";
connectAttr "b_Hip_scaleZ.o" "b_Hip.sz";
connectAttr "b_Hip_rotateX.o" "b_Hip.rx";
connectAttr "b_Hip_rotateY.o" "b_Hip.ry";
connectAttr "b_Hip_rotateZ.o" "b_Hip.rz";
connectAttr "Joints.di" "b_Hip.do";
connectAttr "b_Hip_visibility.o" "b_Hip.v";
connectAttr "b_Spine01_translateX.o" "b_Spine01.tx";
connectAttr "b_Spine01_translateY.o" "b_Spine01.ty";
connectAttr "b_Spine01_translateZ.o" "b_Spine01.tz";
connectAttr "b_Hip.s" "b_Spine01.is";
connectAttr "b_Spine01_scaleX.o" "b_Spine01.sx";
connectAttr "b_Spine01_scaleY.o" "b_Spine01.sy";
connectAttr "b_Spine01_scaleZ.o" "b_Spine01.sz";
connectAttr "b_Spine01_rotateX.o" "b_Spine01.rx";
connectAttr "b_Spine01_rotateY.o" "b_Spine01.ry";
connectAttr "b_Spine01_rotateZ.o" "b_Spine01.rz";
connectAttr "Joints.di" "b_Spine01.do";
connectAttr "b_Spine01_visibility.o" "b_Spine01.v";
connectAttr "b_Spine02_translateX.o" "b_Spine02.tx";
connectAttr "b_Spine02_translateY.o" "b_Spine02.ty";
connectAttr "b_Spine02_translateZ.o" "b_Spine02.tz";
connectAttr "b_Spine02_rotateX.o" "b_Spine02.rx";
connectAttr "b_Spine02_rotateY.o" "b_Spine02.ry";
connectAttr "b_Spine02_rotateZ.o" "b_Spine02.rz";
connectAttr "b_Spine01.s" "b_Spine02.is";
connectAttr "b_Spine02_scaleX.o" "b_Spine02.sx";
connectAttr "b_Spine02_scaleY.o" "b_Spine02.sy";
connectAttr "b_Spine02_scaleZ.o" "b_Spine02.sz";
connectAttr "Joints.di" "b_Spine02.do";
connectAttr "b_Spine02_visibility.o" "b_Spine02.v";
connectAttr "b_Neck_rotateZ.o" "b_Neck.rz";
connectAttr "b_Neck_rotateX.o" "b_Neck.rx";
connectAttr "b_Neck_rotateY.o" "b_Neck.ry";
connectAttr "b_Spine02.s" "b_Neck.is";
connectAttr "b_Neck_scaleX.o" "b_Neck.sx";
connectAttr "b_Neck_scaleY.o" "b_Neck.sy";
connectAttr "b_Neck_scaleZ.o" "b_Neck.sz";
connectAttr "b_Neck_translateX.o" "b_Neck.tx";
connectAttr "b_Neck_translateY.o" "b_Neck.ty";
connectAttr "b_Neck_translateZ.o" "b_Neck.tz";
connectAttr "Joints.di" "b_Neck.do";
connectAttr "b_Neck_visibility.o" "b_Neck.v";
connectAttr "b_Neck.s" "b_Head.is";
connectAttr "b_Head_translateX.o" "b_Head.tx";
connectAttr "b_Head_translateY.o" "b_Head.ty";
connectAttr "b_Head_translateZ.o" "b_Head.tz";
connectAttr "b_Head_scaleX.o" "b_Head.sx";
connectAttr "b_Head_scaleY.o" "b_Head.sy";
connectAttr "b_Head_scaleZ.o" "b_Head.sz";
connectAttr "b_Head_rotateX.o" "b_Head.rx";
connectAttr "b_Head_rotateY.o" "b_Head.ry";
connectAttr "b_Head_rotateZ.o" "b_Head.rz";
connectAttr "Joints.di" "b_Head.do";
connectAttr "b_Head_visibility.o" "b_Head.v";
connectAttr "b_Spine02.s" "b_RightUpperArm.is";
connectAttr "Joints.di" "b_RightUpperArm.do";
connectAttr "b_RightUpperArm_scaleX.o" "b_RightUpperArm.sx";
connectAttr "b_RightUpperArm_scaleY.o" "b_RightUpperArm.sy";
connectAttr "b_RightUpperArm_scaleZ.o" "b_RightUpperArm.sz";
connectAttr "b_RightUpperArm_translateX.o" "b_RightUpperArm.tx";
connectAttr "b_RightUpperArm_translateY.o" "b_RightUpperArm.ty";
connectAttr "b_RightUpperArm_translateZ.o" "b_RightUpperArm.tz";
connectAttr "b_RightUpperArm_rotateX.o" "b_RightUpperArm.rx";
connectAttr "b_RightUpperArm_rotateY.o" "b_RightUpperArm.ry";
connectAttr "b_RightUpperArm_rotateZ.o" "b_RightUpperArm.rz";
connectAttr "b_RightUpperArm_visibility.o" "b_RightUpperArm.v";
connectAttr "b_RightUpperArm.s" "b_RightForeArm.is";
connectAttr "Joints.di" "b_RightForeArm.do";
connectAttr "b_RightForeArm_scaleX.o" "b_RightForeArm.sx";
connectAttr "b_RightForeArm_scaleY.o" "b_RightForeArm.sy";
connectAttr "b_RightForeArm_scaleZ.o" "b_RightForeArm.sz";
connectAttr "b_RightForeArm_translateX.o" "b_RightForeArm.tx";
connectAttr "b_RightForeArm_translateY.o" "b_RightForeArm.ty";
connectAttr "b_RightForeArm_translateZ.o" "b_RightForeArm.tz";
connectAttr "b_RightForeArm_rotateX.o" "b_RightForeArm.rx";
connectAttr "b_RightForeArm_rotateY.o" "b_RightForeArm.ry";
connectAttr "b_RightForeArm_rotateZ.o" "b_RightForeArm.rz";
connectAttr "b_RightForeArm_visibility.o" "b_RightForeArm.v";
connectAttr "b_RightForeArm.s" "b_RightWrist.is";
connectAttr "b_RightWrist_scaleX.o" "b_RightWrist.sx";
connectAttr "b_RightWrist_scaleY.o" "b_RightWrist.sy";
connectAttr "b_RightWrist_scaleZ.o" "b_RightWrist.sz";
connectAttr "b_RightWrist_translateX.o" "b_RightWrist.tx";
connectAttr "b_RightWrist_translateY.o" "b_RightWrist.ty";
connectAttr "b_RightWrist_translateZ.o" "b_RightWrist.tz";
connectAttr "b_RightWrist_rotateX.o" "b_RightWrist.rx";
connectAttr "b_RightWrist_rotateY.o" "b_RightWrist.ry";
connectAttr "b_RightWrist_rotateZ.o" "b_RightWrist.rz";
connectAttr "b_RightWrist_visibility.o" "b_RightWrist.v";
connectAttr "b_RightWrist.s" "b_RightHand.is";
connectAttr "Joints.di" "b_RightHand.do";
connectAttr "b_RightHand_translateX.o" "b_RightHand.tx";
connectAttr "b_RightHand_translateY.o" "b_RightHand.ty";
connectAttr "b_RightHand_translateZ.o" "b_RightHand.tz";
connectAttr "b_RightHand_rotateX.o" "b_RightHand.rx";
connectAttr "b_RightHand_rotateY.o" "b_RightHand.ry";
connectAttr "b_RightHand_rotateZ.o" "b_RightHand.rz";
connectAttr "b_RightHand_scaleX.o" "b_RightHand.sx";
connectAttr "b_RightHand_scaleY.o" "b_RightHand.sy";
connectAttr "b_RightHand_scaleZ.o" "b_RightHand.sz";
connectAttr "b_RightHand_visibility.o" "b_RightHand.v";
connectAttr "pairBlend1.otx" "effector5.tx";
connectAttr "pairBlend1.oty" "effector5.ty";
connectAttr "pairBlend1.otz" "effector5.tz";
connectAttr "effector5_rotateX.o" "effector5.rx";
connectAttr "effector5_rotateY.o" "effector5.ry";
connectAttr "effector5_rotateZ.o" "effector5.rz";
connectAttr "effector5_scaleX.o" "effector5.sx";
connectAttr "effector5_scaleY.o" "effector5.sy";
connectAttr "effector5_scaleZ.o" "effector5.sz";
connectAttr "b_Spine02.s" "b_LeftUpperArm.is";
connectAttr "Joints.di" "b_LeftUpperArm.do";
connectAttr "b_LeftUpperArm_scaleX.o" "b_LeftUpperArm.sx";
connectAttr "b_LeftUpperArm_scaleY.o" "b_LeftUpperArm.sy";
connectAttr "b_LeftUpperArm_scaleZ.o" "b_LeftUpperArm.sz";
connectAttr "b_LeftUpperArm_translateX.o" "b_LeftUpperArm.tx";
connectAttr "b_LeftUpperArm_translateY.o" "b_LeftUpperArm.ty";
connectAttr "b_LeftUpperArm_translateZ.o" "b_LeftUpperArm.tz";
connectAttr "b_LeftUpperArm_rotateX.o" "b_LeftUpperArm.rx";
connectAttr "b_LeftUpperArm_rotateY.o" "b_LeftUpperArm.ry";
connectAttr "b_LeftUpperArm_rotateZ.o" "b_LeftUpperArm.rz";
connectAttr "b_LeftUpperArm_visibility.o" "b_LeftUpperArm.v";
connectAttr "b_LeftUpperArm.s" "b_LeftForeArm.is";
connectAttr "Joints.di" "b_LeftForeArm.do";
connectAttr "b_LeftForeArm_scaleX.o" "b_LeftForeArm.sx";
connectAttr "b_LeftForeArm_scaleY.o" "b_LeftForeArm.sy";
connectAttr "b_LeftForeArm_scaleZ.o" "b_LeftForeArm.sz";
connectAttr "b_LeftForeArm_translateX.o" "b_LeftForeArm.tx";
connectAttr "b_LeftForeArm_translateY.o" "b_LeftForeArm.ty";
connectAttr "b_LeftForeArm_translateZ.o" "b_LeftForeArm.tz";
connectAttr "b_LeftForeArm_rotateX.o" "b_LeftForeArm.rx";
connectAttr "b_LeftForeArm_rotateY.o" "b_LeftForeArm.ry";
connectAttr "b_LeftForeArm_rotateZ.o" "b_LeftForeArm.rz";
connectAttr "b_LeftForeArm_visibility.o" "b_LeftForeArm.v";
connectAttr "b_LeftForeArm.s" "b_LeftWrist.is";
connectAttr "b_LeftWrist_scaleX.o" "b_LeftWrist.sx";
connectAttr "b_LeftWrist_scaleY.o" "b_LeftWrist.sy";
connectAttr "b_LeftWrist_scaleZ.o" "b_LeftWrist.sz";
connectAttr "b_LeftWrist_translateX.o" "b_LeftWrist.tx";
connectAttr "b_LeftWrist_translateY.o" "b_LeftWrist.ty";
connectAttr "b_LeftWrist_translateZ.o" "b_LeftWrist.tz";
connectAttr "b_LeftWrist_rotateX.o" "b_LeftWrist.rx";
connectAttr "b_LeftWrist_rotateY.o" "b_LeftWrist.ry";
connectAttr "b_LeftWrist_rotateZ.o" "b_LeftWrist.rz";
connectAttr "b_LeftWrist_visibility.o" "b_LeftWrist.v";
connectAttr "b_LeftWrist.s" "b_LeftHand.is";
connectAttr "Joints.di" "b_LeftHand.do";
connectAttr "b_LeftHand_translateX.o" "b_LeftHand.tx";
connectAttr "b_LeftHand_translateY.o" "b_LeftHand.ty";
connectAttr "b_LeftHand_translateZ.o" "b_LeftHand.tz";
connectAttr "b_LeftHand_rotateX.o" "b_LeftHand.rx";
connectAttr "b_LeftHand_rotateY.o" "b_LeftHand.ry";
connectAttr "b_LeftHand_rotateZ.o" "b_LeftHand.rz";
connectAttr "b_LeftHand_scaleX.o" "b_LeftHand.sx";
connectAttr "b_LeftHand_scaleY.o" "b_LeftHand.sy";
connectAttr "b_LeftHand_scaleZ.o" "b_LeftHand.sz";
connectAttr "b_LeftHand_visibility.o" "b_LeftHand.v";
connectAttr "pairBlend2.otx" "effector6.tx";
connectAttr "pairBlend2.oty" "effector6.ty";
connectAttr "pairBlend2.otz" "effector6.tz";
connectAttr "effector6_rotateX.o" "effector6.rx";
connectAttr "effector6_rotateY.o" "effector6.ry";
connectAttr "effector6_rotateZ.o" "effector6.rz";
connectAttr "effector6_scaleX.o" "effector6.sx";
connectAttr "effector6_scaleY.o" "effector6.sy";
connectAttr "effector6_scaleZ.o" "effector6.sz";
connectAttr "b_Hip.s" "b_Tail01.is";
connectAttr "b_Tail01_scaleX.o" "b_Tail01.sx";
connectAttr "b_Tail01_scaleY.o" "b_Tail01.sy";
connectAttr "b_Tail01_scaleZ.o" "b_Tail01.sz";
connectAttr "b_Tail01_translateX.o" "b_Tail01.tx";
connectAttr "b_Tail01_translateY.o" "b_Tail01.ty";
connectAttr "b_Tail01_translateZ.o" "b_Tail01.tz";
connectAttr "b_Tail01_rotateX.o" "b_Tail01.rx";
connectAttr "b_Tail01_rotateY.o" "b_Tail01.ry";
connectAttr "b_Tail01_rotateZ.o" "b_Tail01.rz";
connectAttr "Joints.di" "b_Tail01.do";
connectAttr "b_Tail01_visibility.o" "b_Tail01.v";
connectAttr "b_Tail01.s" "|b_Root|b_Hip|b_Tail01|b_Tail02.is";
connectAttr "b_Tail02_scaleX.o" "|b_Root|b_Hip|b_Tail01|b_Tail02.sx";
connectAttr "b_Tail02_scaleY.o" "|b_Root|b_Hip|b_Tail01|b_Tail02.sy";
connectAttr "b_Tail02_scaleZ.o" "|b_Root|b_Hip|b_Tail01|b_Tail02.sz";
connectAttr "b_Tail02_translateX.o" "|b_Root|b_Hip|b_Tail01|b_Tail02.tx";
connectAttr "b_Tail02_translateY.o" "|b_Root|b_Hip|b_Tail01|b_Tail02.ty";
connectAttr "b_Tail02_translateZ.o" "|b_Root|b_Hip|b_Tail01|b_Tail02.tz";
connectAttr "b_Tail02_rotateX.o" "|b_Root|b_Hip|b_Tail01|b_Tail02.rx";
connectAttr "b_Tail02_rotateY.o" "|b_Root|b_Hip|b_Tail01|b_Tail02.ry";
connectAttr "b_Tail02_rotateZ.o" "|b_Root|b_Hip|b_Tail01|b_Tail02.rz";
connectAttr "Joints.di" "|b_Root|b_Hip|b_Tail01|b_Tail02.do";
connectAttr "b_Tail02_visibility.o" "|b_Root|b_Hip|b_Tail01|b_Tail02.v";
connectAttr "|b_Root|b_Hip|b_Tail01|b_Tail02.s" "|b_Root|b_Hip|b_Tail01|b_Tail02|b_Tail03.is"
		;
connectAttr "b_Tail03_translateX.o" "|b_Root|b_Hip|b_Tail01|b_Tail02|b_Tail03.tx"
		;
connectAttr "b_Tail03_translateY.o" "|b_Root|b_Hip|b_Tail01|b_Tail02|b_Tail03.ty"
		;
connectAttr "b_Tail03_translateZ.o" "|b_Root|b_Hip|b_Tail01|b_Tail02|b_Tail03.tz"
		;
connectAttr "b_Tail03_scaleX.o" "|b_Root|b_Hip|b_Tail01|b_Tail02|b_Tail03.sx";
connectAttr "b_Tail03_scaleY.o" "|b_Root|b_Hip|b_Tail01|b_Tail02|b_Tail03.sy";
connectAttr "b_Tail03_scaleZ.o" "|b_Root|b_Hip|b_Tail01|b_Tail02|b_Tail03.sz";
connectAttr "b_Tail03_rotateX.o" "|b_Root|b_Hip|b_Tail01|b_Tail02|b_Tail03.rx";
connectAttr "b_Tail03_rotateY.o" "|b_Root|b_Hip|b_Tail01|b_Tail02|b_Tail03.ry";
connectAttr "b_Tail03_rotateZ.o" "|b_Root|b_Hip|b_Tail01|b_Tail02|b_Tail03.rz";
connectAttr "Joints.di" "|b_Root|b_Hip|b_Tail01|b_Tail02|b_Tail03.do";
connectAttr "b_Tail03_visibility.o" "|b_Root|b_Hip|b_Tail01|b_Tail02|b_Tail03.v"
		;
connectAttr "|b_Root|b_Hip|b_Tail01|b_Tail02.s" "|b_Root|b_Hip|b_Tail01|b_Tail02|b_Tail05.is"
		;
connectAttr "b_Tail05_translateX.o" "|b_Root|b_Hip|b_Tail01|b_Tail02|b_Tail05.tx"
		;
connectAttr "b_Tail05_translateY.o" "|b_Root|b_Hip|b_Tail01|b_Tail02|b_Tail05.ty"
		;
connectAttr "b_Tail05_translateZ.o" "|b_Root|b_Hip|b_Tail01|b_Tail02|b_Tail05.tz"
		;
connectAttr "b_Tail05_scaleX.o" "|b_Root|b_Hip|b_Tail01|b_Tail02|b_Tail05.sx";
connectAttr "b_Tail05_scaleY.o" "|b_Root|b_Hip|b_Tail01|b_Tail02|b_Tail05.sy";
connectAttr "b_Tail05_scaleZ.o" "|b_Root|b_Hip|b_Tail01|b_Tail02|b_Tail05.sz";
connectAttr "b_Tail05_rotateX.o" "|b_Root|b_Hip|b_Tail01|b_Tail02|b_Tail05.rx";
connectAttr "b_Tail05_rotateY.o" "|b_Root|b_Hip|b_Tail01|b_Tail02|b_Tail05.ry";
connectAttr "b_Tail05_rotateZ.o" "|b_Root|b_Hip|b_Tail01|b_Tail02|b_Tail05.rz";
connectAttr "Joints.di" "|b_Root|b_Hip|b_Tail01|b_Tail02|b_Tail05.do";
connectAttr "b_Tail05_visibility.o" "|b_Root|b_Hip|b_Tail01|b_Tail02|b_Tail05.v"
		;
connectAttr "b_Hip.s" "b_Tail04.is";
connectAttr "b_Tail04_scaleX.o" "b_Tail04.sx";
connectAttr "b_Tail04_scaleY.o" "b_Tail04.sy";
connectAttr "b_Tail04_scaleZ.o" "b_Tail04.sz";
connectAttr "b_Tail04_translateX.o" "b_Tail04.tx";
connectAttr "b_Tail04_translateY.o" "b_Tail04.ty";
connectAttr "b_Tail04_translateZ.o" "b_Tail04.tz";
connectAttr "b_Tail04_rotateX.o" "b_Tail04.rx";
connectAttr "b_Tail04_rotateY.o" "b_Tail04.ry";
connectAttr "b_Tail04_rotateZ.o" "b_Tail04.rz";
connectAttr "Joints.di" "b_Tail04.do";
connectAttr "b_Tail04_visibility.o" "b_Tail04.v";
connectAttr "b_Tail04.s" "|b_Root|b_Hip|b_Tail04|b_Tail02.is";
connectAttr "b_Tail02_scaleX1.o" "|b_Root|b_Hip|b_Tail04|b_Tail02.sx";
connectAttr "b_Tail02_scaleY1.o" "|b_Root|b_Hip|b_Tail04|b_Tail02.sy";
connectAttr "b_Tail02_scaleZ1.o" "|b_Root|b_Hip|b_Tail04|b_Tail02.sz";
connectAttr "b_Tail02_translateX1.o" "|b_Root|b_Hip|b_Tail04|b_Tail02.tx";
connectAttr "b_Tail02_translateY1.o" "|b_Root|b_Hip|b_Tail04|b_Tail02.ty";
connectAttr "b_Tail02_translateZ1.o" "|b_Root|b_Hip|b_Tail04|b_Tail02.tz";
connectAttr "b_Tail02_rotateX1.o" "|b_Root|b_Hip|b_Tail04|b_Tail02.rx";
connectAttr "b_Tail02_rotateY1.o" "|b_Root|b_Hip|b_Tail04|b_Tail02.ry";
connectAttr "b_Tail02_rotateZ1.o" "|b_Root|b_Hip|b_Tail04|b_Tail02.rz";
connectAttr "Joints.di" "|b_Root|b_Hip|b_Tail04|b_Tail02.do";
connectAttr "b_Tail02_visibility1.o" "|b_Root|b_Hip|b_Tail04|b_Tail02.v";
connectAttr "|b_Root|b_Hip|b_Tail04|b_Tail02.s" "|b_Root|b_Hip|b_Tail04|b_Tail02|b_Tail03.is"
		;
connectAttr "b_Tail03_translateX1.o" "|b_Root|b_Hip|b_Tail04|b_Tail02|b_Tail03.tx"
		;
connectAttr "b_Tail03_translateY1.o" "|b_Root|b_Hip|b_Tail04|b_Tail02|b_Tail03.ty"
		;
connectAttr "b_Tail03_translateZ1.o" "|b_Root|b_Hip|b_Tail04|b_Tail02|b_Tail03.tz"
		;
connectAttr "b_Tail03_scaleX1.o" "|b_Root|b_Hip|b_Tail04|b_Tail02|b_Tail03.sx";
connectAttr "b_Tail03_scaleY1.o" "|b_Root|b_Hip|b_Tail04|b_Tail02|b_Tail03.sy";
connectAttr "b_Tail03_scaleZ1.o" "|b_Root|b_Hip|b_Tail04|b_Tail02|b_Tail03.sz";
connectAttr "b_Tail03_rotateX1.o" "|b_Root|b_Hip|b_Tail04|b_Tail02|b_Tail03.rx";
connectAttr "b_Tail03_rotateY1.o" "|b_Root|b_Hip|b_Tail04|b_Tail02|b_Tail03.ry";
connectAttr "b_Tail03_rotateZ1.o" "|b_Root|b_Hip|b_Tail04|b_Tail02|b_Tail03.rz";
connectAttr "Joints.di" "|b_Root|b_Hip|b_Tail04|b_Tail02|b_Tail03.do";
connectAttr "b_Tail03_visibility1.o" "|b_Root|b_Hip|b_Tail04|b_Tail02|b_Tail03.v"
		;
connectAttr "b_Hip.s" "b_Tail06.is";
connectAttr "b_Tail06_scaleX.o" "b_Tail06.sx";
connectAttr "b_Tail06_scaleY.o" "b_Tail06.sy";
connectAttr "b_Tail06_scaleZ.o" "b_Tail06.sz";
connectAttr "b_Tail06_translateX.o" "b_Tail06.tx";
connectAttr "b_Tail06_translateY.o" "b_Tail06.ty";
connectAttr "b_Tail06_translateZ.o" "b_Tail06.tz";
connectAttr "b_Tail06_rotateX.o" "b_Tail06.rx";
connectAttr "b_Tail06_rotateY.o" "b_Tail06.ry";
connectAttr "b_Tail06_rotateZ.o" "b_Tail06.rz";
connectAttr "Joints.di" "b_Tail06.do";
connectAttr "b_Tail06_visibility.o" "b_Tail06.v";
connectAttr "b_Tail06.s" "|b_Root|b_Hip|b_Tail06|b_Tail02.is";
connectAttr "b_Tail02_scaleX2.o" "|b_Root|b_Hip|b_Tail06|b_Tail02.sx";
connectAttr "b_Tail02_scaleY2.o" "|b_Root|b_Hip|b_Tail06|b_Tail02.sy";
connectAttr "b_Tail02_scaleZ2.o" "|b_Root|b_Hip|b_Tail06|b_Tail02.sz";
connectAttr "b_Tail02_translateX2.o" "|b_Root|b_Hip|b_Tail06|b_Tail02.tx";
connectAttr "b_Tail02_translateY2.o" "|b_Root|b_Hip|b_Tail06|b_Tail02.ty";
connectAttr "b_Tail02_translateZ2.o" "|b_Root|b_Hip|b_Tail06|b_Tail02.tz";
connectAttr "b_Tail02_rotateX2.o" "|b_Root|b_Hip|b_Tail06|b_Tail02.rx";
connectAttr "b_Tail02_rotateY2.o" "|b_Root|b_Hip|b_Tail06|b_Tail02.ry";
connectAttr "b_Tail02_rotateZ2.o" "|b_Root|b_Hip|b_Tail06|b_Tail02.rz";
connectAttr "Joints.di" "|b_Root|b_Hip|b_Tail06|b_Tail02.do";
connectAttr "b_Tail02_visibility2.o" "|b_Root|b_Hip|b_Tail06|b_Tail02.v";
connectAttr "|b_Root|b_Hip|b_Tail06|b_Tail02.s" "|b_Root|b_Hip|b_Tail06|b_Tail02|b_Tail03.is"
		;
connectAttr "b_Tail03_translateX2.o" "|b_Root|b_Hip|b_Tail06|b_Tail02|b_Tail03.tx"
		;
connectAttr "b_Tail03_translateY2.o" "|b_Root|b_Hip|b_Tail06|b_Tail02|b_Tail03.ty"
		;
connectAttr "b_Tail03_translateZ2.o" "|b_Root|b_Hip|b_Tail06|b_Tail02|b_Tail03.tz"
		;
connectAttr "b_Tail03_scaleX2.o" "|b_Root|b_Hip|b_Tail06|b_Tail02|b_Tail03.sx";
connectAttr "b_Tail03_scaleY2.o" "|b_Root|b_Hip|b_Tail06|b_Tail02|b_Tail03.sy";
connectAttr "b_Tail03_scaleZ2.o" "|b_Root|b_Hip|b_Tail06|b_Tail02|b_Tail03.sz";
connectAttr "b_Tail03_rotateX2.o" "|b_Root|b_Hip|b_Tail06|b_Tail02|b_Tail03.rx";
connectAttr "b_Tail03_rotateY2.o" "|b_Root|b_Hip|b_Tail06|b_Tail02|b_Tail03.ry";
connectAttr "b_Tail03_rotateZ2.o" "|b_Root|b_Hip|b_Tail06|b_Tail02|b_Tail03.rz";
connectAttr "Joints.di" "|b_Root|b_Hip|b_Tail06|b_Tail02|b_Tail03.do";
connectAttr "b_Tail03_visibility2.o" "|b_Root|b_Hip|b_Tail06|b_Tail02|b_Tail03.v"
		;
connectAttr "|b_Root|b_Hip|b_Tail06|b_Tail02.s" "|b_Root|b_Hip|b_Tail06|b_Tail02|b_Tail05.is"
		;
connectAttr "b_Tail05_translateX1.o" "|b_Root|b_Hip|b_Tail06|b_Tail02|b_Tail05.tx"
		;
connectAttr "b_Tail05_translateY1.o" "|b_Root|b_Hip|b_Tail06|b_Tail02|b_Tail05.ty"
		;
connectAttr "b_Tail05_translateZ1.o" "|b_Root|b_Hip|b_Tail06|b_Tail02|b_Tail05.tz"
		;
connectAttr "b_Tail05_scaleX1.o" "|b_Root|b_Hip|b_Tail06|b_Tail02|b_Tail05.sx";
connectAttr "b_Tail05_scaleY1.o" "|b_Root|b_Hip|b_Tail06|b_Tail02|b_Tail05.sy";
connectAttr "b_Tail05_scaleZ1.o" "|b_Root|b_Hip|b_Tail06|b_Tail02|b_Tail05.sz";
connectAttr "b_Tail05_rotateX1.o" "|b_Root|b_Hip|b_Tail06|b_Tail02|b_Tail05.rx";
connectAttr "b_Tail05_rotateY1.o" "|b_Root|b_Hip|b_Tail06|b_Tail02|b_Tail05.ry";
connectAttr "b_Tail05_rotateZ1.o" "|b_Root|b_Hip|b_Tail06|b_Tail02|b_Tail05.rz";
connectAttr "Joints.di" "|b_Root|b_Hip|b_Tail06|b_Tail02|b_Tail05.do";
connectAttr "b_Tail05_visibility1.o" "|b_Root|b_Hip|b_Tail06|b_Tail02|b_Tail05.v"
		;
connectAttr "b_Hip.s" "b_LeftLeg01.is";
connectAttr "b_LeftLeg01_scaleX.o" "b_LeftLeg01.sx";
connectAttr "b_LeftLeg01_scaleY.o" "b_LeftLeg01.sy";
connectAttr "b_LeftLeg01_scaleZ.o" "b_LeftLeg01.sz";
connectAttr "b_LeftLeg01_translateX.o" "b_LeftLeg01.tx";
connectAttr "b_LeftLeg01_translateY.o" "b_LeftLeg01.ty";
connectAttr "b_LeftLeg01_translateZ.o" "b_LeftLeg01.tz";
connectAttr "b_LeftLeg01_rotateX.o" "b_LeftLeg01.rx";
connectAttr "b_LeftLeg01_rotateY.o" "b_LeftLeg01.ry";
connectAttr "b_LeftLeg01_rotateZ.o" "b_LeftLeg01.rz";
connectAttr "Joints.di" "b_LeftLeg01.do";
connectAttr "b_LeftLeg01_visibility.o" "b_LeftLeg01.v";
connectAttr "b_LeftLeg01.s" "b_LeftLeg02.is";
connectAttr "b_LeftLeg02_scaleX.o" "b_LeftLeg02.sx";
connectAttr "b_LeftLeg02_scaleY.o" "b_LeftLeg02.sy";
connectAttr "b_LeftLeg02_scaleZ.o" "b_LeftLeg02.sz";
connectAttr "b_LeftLeg02_translateX.o" "b_LeftLeg02.tx";
connectAttr "b_LeftLeg02_translateY.o" "b_LeftLeg02.ty";
connectAttr "b_LeftLeg02_translateZ.o" "b_LeftLeg02.tz";
connectAttr "b_LeftLeg02_rotateX.o" "b_LeftLeg02.rx";
connectAttr "b_LeftLeg02_rotateY.o" "b_LeftLeg02.ry";
connectAttr "b_LeftLeg02_rotateZ.o" "b_LeftLeg02.rz";
connectAttr "Joints.di" "b_LeftLeg02.do";
connectAttr "b_LeftLeg02_visibility.o" "b_LeftLeg02.v";
connectAttr "b_LeftLeg02.s" "b_LeftFoot01.is";
connectAttr "b_LeftFoot01_scaleX.o" "b_LeftFoot01.sx";
connectAttr "b_LeftFoot01_scaleY.o" "b_LeftFoot01.sy";
connectAttr "b_LeftFoot01_scaleZ.o" "b_LeftFoot01.sz";
connectAttr "b_LeftFoot01_translateX.o" "b_LeftFoot01.tx";
connectAttr "b_LeftFoot01_translateY.o" "b_LeftFoot01.ty";
connectAttr "b_LeftFoot01_translateZ.o" "b_LeftFoot01.tz";
connectAttr "b_LeftFoot01_rotateX.o" "b_LeftFoot01.rx";
connectAttr "b_LeftFoot01_rotateY.o" "b_LeftFoot01.ry";
connectAttr "b_LeftFoot01_rotateZ.o" "b_LeftFoot01.rz";
connectAttr "Joints.di" "b_LeftFoot01.do";
connectAttr "b_LeftFoot01_visibility.o" "b_LeftFoot01.v";
connectAttr "b_LeftFoot01.s" "b_LeftFoot02.is";
connectAttr "b_LeftFoot02_translateX.o" "b_LeftFoot02.tx";
connectAttr "b_LeftFoot02_translateY.o" "b_LeftFoot02.ty";
connectAttr "b_LeftFoot02_translateZ.o" "b_LeftFoot02.tz";
connectAttr "b_LeftFoot02_scaleX.o" "b_LeftFoot02.sx";
connectAttr "b_LeftFoot02_scaleY.o" "b_LeftFoot02.sy";
connectAttr "b_LeftFoot02_scaleZ.o" "b_LeftFoot02.sz";
connectAttr "b_LeftFoot02_rotateX.o" "b_LeftFoot02.rx";
connectAttr "b_LeftFoot02_rotateY.o" "b_LeftFoot02.ry";
connectAttr "b_LeftFoot02_rotateZ.o" "b_LeftFoot02.rz";
connectAttr "Joints.di" "b_LeftFoot02.do";
connectAttr "b_LeftFoot02_visibility.o" "b_LeftFoot02.v";
connectAttr "pairBlend3.otx" "effector4.tx";
connectAttr "pairBlend3.oty" "effector4.ty";
connectAttr "pairBlend3.otz" "effector4.tz";
connectAttr "effector4_rotateX.o" "effector4.rx";
connectAttr "effector4_rotateY.o" "effector4.ry";
connectAttr "effector4_rotateZ.o" "effector4.rz";
connectAttr "effector4_scaleX.o" "effector4.sx";
connectAttr "effector4_scaleY.o" "effector4.sy";
connectAttr "effector4_scaleZ.o" "effector4.sz";
connectAttr "b_Hip.s" "b_RightLeg01.is";
connectAttr "b_RightLeg01_scaleX.o" "b_RightLeg01.sx";
connectAttr "b_RightLeg01_scaleY.o" "b_RightLeg01.sy";
connectAttr "b_RightLeg01_scaleZ.o" "b_RightLeg01.sz";
connectAttr "b_RightLeg01_translateX.o" "b_RightLeg01.tx";
connectAttr "b_RightLeg01_translateY.o" "b_RightLeg01.ty";
connectAttr "b_RightLeg01_translateZ.o" "b_RightLeg01.tz";
connectAttr "b_RightLeg01_rotateX.o" "b_RightLeg01.rx";
connectAttr "b_RightLeg01_rotateY.o" "b_RightLeg01.ry";
connectAttr "b_RightLeg01_rotateZ.o" "b_RightLeg01.rz";
connectAttr "Joints.di" "b_RightLeg01.do";
connectAttr "b_RightLeg01_visibility.o" "b_RightLeg01.v";
connectAttr "b_RightLeg01.s" "b_RightLeg02.is";
connectAttr "b_RightLeg02_scaleX.o" "b_RightLeg02.sx";
connectAttr "b_RightLeg02_scaleY.o" "b_RightLeg02.sy";
connectAttr "b_RightLeg02_scaleZ.o" "b_RightLeg02.sz";
connectAttr "b_RightLeg02_translateX.o" "b_RightLeg02.tx";
connectAttr "b_RightLeg02_translateY.o" "b_RightLeg02.ty";
connectAttr "b_RightLeg02_translateZ.o" "b_RightLeg02.tz";
connectAttr "b_RightLeg02_rotateX.o" "b_RightLeg02.rx";
connectAttr "b_RightLeg02_rotateY.o" "b_RightLeg02.ry";
connectAttr "b_RightLeg02_rotateZ.o" "b_RightLeg02.rz";
connectAttr "Joints.di" "b_RightLeg02.do";
connectAttr "b_RightLeg02_visibility.o" "b_RightLeg02.v";
connectAttr "b_RightLeg02.s" "b_RightFoot01.is";
connectAttr "b_RightFoot01_scaleX.o" "b_RightFoot01.sx";
connectAttr "b_RightFoot01_scaleY.o" "b_RightFoot01.sy";
connectAttr "b_RightFoot01_scaleZ.o" "b_RightFoot01.sz";
connectAttr "b_RightFoot01_translateX.o" "b_RightFoot01.tx";
connectAttr "b_RightFoot01_translateY.o" "b_RightFoot01.ty";
connectAttr "b_RightFoot01_translateZ.o" "b_RightFoot01.tz";
connectAttr "b_RightFoot01_rotateX.o" "b_RightFoot01.rx";
connectAttr "b_RightFoot01_rotateY.o" "b_RightFoot01.ry";
connectAttr "b_RightFoot01_rotateZ.o" "b_RightFoot01.rz";
connectAttr "Joints.di" "b_RightFoot01.do";
connectAttr "b_RightFoot01_visibility.o" "b_RightFoot01.v";
connectAttr "b_RightFoot01.s" "b_RightFoot02.is";
connectAttr "b_RightFoot02_translateX.o" "b_RightFoot02.tx";
connectAttr "b_RightFoot02_translateY.o" "b_RightFoot02.ty";
connectAttr "b_RightFoot02_translateZ.o" "b_RightFoot02.tz";
connectAttr "b_RightFoot02_scaleX.o" "b_RightFoot02.sx";
connectAttr "b_RightFoot02_scaleY.o" "b_RightFoot02.sy";
connectAttr "b_RightFoot02_scaleZ.o" "b_RightFoot02.sz";
connectAttr "b_RightFoot02_rotateX.o" "b_RightFoot02.rx";
connectAttr "b_RightFoot02_rotateY.o" "b_RightFoot02.ry";
connectAttr "b_RightFoot02_rotateZ.o" "b_RightFoot02.rz";
connectAttr "Joints.di" "b_RightFoot02.do";
connectAttr "b_RightFoot02_visibility.o" "b_RightFoot02.v";
connectAttr "pairBlend4.otx" "effector3.tx";
connectAttr "pairBlend4.oty" "effector3.ty";
connectAttr "pairBlend4.otz" "effector3.tz";
connectAttr "effector3_rotateX.o" "effector3.rx";
connectAttr "effector3_rotateY.o" "effector3.ry";
connectAttr "effector3_rotateZ.o" "effector3.rz";
connectAttr "effector3_scaleX.o" "effector3.sx";
connectAttr "effector3_scaleY.o" "effector3.sy";
connectAttr "effector3_scaleZ.o" "effector3.sz";
connectAttr "RR_translateX.o" "RR.tx";
connectAttr "RR_translateY.o" "RR.ty";
connectAttr "RR_translateZ.o" "RR.tz";
connectAttr "b_RightLeg01.msg" "RR.hsj";
connectAttr "effector3.hp" "RR.hee";
connectAttr "ikRPsolver.msg" "RR.hsv";
connectAttr "RR_rotateX.o" "RR.rx";
connectAttr "RR_rotateY.o" "RR.ry";
connectAttr "RR_rotateZ.o" "RR.rz";
connectAttr "RR_scaleX.o" "RR.sx";
connectAttr "RR_scaleY.o" "RR.sy";
connectAttr "RR_scaleZ.o" "RR.sz";
connectAttr "RR_visibility.o" "RR.v";
connectAttr "RR_poleVectorX.o" "RR.pvx";
connectAttr "RR_poleVectorY.o" "RR.pvy";
connectAttr "RR_poleVectorZ.o" "RR.pvz";
connectAttr "RR_offset.o" "RR.off";
connectAttr "RR_roll.o" "RR.rol";
connectAttr "RR_twist.o" "RR.twi";
connectAttr "RR_ikBlend.o" "RR.ikb";
connectAttr "RL_translateX.o" "RL.tx";
connectAttr "RL_translateY.o" "RL.ty";
connectAttr "RL_translateZ.o" "RL.tz";
connectAttr "b_LeftLeg01.msg" "RL.hsj";
connectAttr "effector4.hp" "RL.hee";
connectAttr "ikRPsolver.msg" "RL.hsv";
connectAttr "RL_rotateX.o" "RL.rx";
connectAttr "RL_rotateY.o" "RL.ry";
connectAttr "RL_rotateZ.o" "RL.rz";
connectAttr "RL_scaleX.o" "RL.sx";
connectAttr "RL_scaleY.o" "RL.sy";
connectAttr "RL_scaleZ.o" "RL.sz";
connectAttr "RL_visibility.o" "RL.v";
connectAttr "RL_poleVectorX.o" "RL.pvx";
connectAttr "RL_poleVectorY.o" "RL.pvy";
connectAttr "RL_poleVectorZ.o" "RL.pvz";
connectAttr "RL_offset.o" "RL.off";
connectAttr "RL_roll.o" "RL.rol";
connectAttr "RL_twist.o" "RL.twi";
connectAttr "RL_ikBlend.o" "RL.ikb";
connectAttr "FR_translateX.o" "FR.tx";
connectAttr "FR_translateY.o" "FR.ty";
connectAttr "FR_translateZ.o" "FR.tz";
connectAttr "FR_rotateX.o" "FR.rx";
connectAttr "FR_rotateY.o" "FR.ry";
connectAttr "FR_rotateZ.o" "FR.rz";
connectAttr "b_RightUpperArm.msg" "FR.hsj";
connectAttr "effector5.hp" "FR.hee";
connectAttr "ikSCsolver.msg" "FR.hsv";
connectAttr "FR_scaleX.o" "FR.sx";
connectAttr "FR_scaleY.o" "FR.sy";
connectAttr "FR_scaleZ.o" "FR.sz";
connectAttr "FR_visibility.o" "FR.v";
connectAttr "FR_poleVectorX.o" "FR.pvx";
connectAttr "FR_poleVectorY.o" "FR.pvy";
connectAttr "FR_poleVectorZ.o" "FR.pvz";
connectAttr "FR_offset.o" "FR.off";
connectAttr "FR_roll.o" "FR.rol";
connectAttr "FR_twist.o" "FR.twi";
connectAttr "FR_ikBlend.o" "FR.ikb";
connectAttr "FL_translateX.o" "FL.tx";
connectAttr "FL_translateY.o" "FL.ty";
connectAttr "FL_translateZ.o" "FL.tz";
connectAttr "FL_rotateX.o" "FL.rx";
connectAttr "FL_rotateY.o" "FL.ry";
connectAttr "FL_rotateZ.o" "FL.rz";
connectAttr "b_LeftUpperArm.msg" "FL.hsj";
connectAttr "effector6.hp" "FL.hee";
connectAttr "ikSCsolver.msg" "FL.hsv";
connectAttr "FL_scaleX.o" "FL.sx";
connectAttr "FL_scaleY.o" "FL.sy";
connectAttr "FL_scaleZ.o" "FL.sz";
connectAttr "FL_visibility.o" "FL.v";
connectAttr "FL_poleVectorX.o" "FL.pvx";
connectAttr "FL_poleVectorY.o" "FL.pvy";
connectAttr "FL_poleVectorZ.o" "FL.pvz";
connectAttr "FL_offset.o" "FL.off";
connectAttr "FL_roll.o" "FL.rol";
connectAttr "FL_twist.o" "FL.twi";
connectAttr "FL_ikBlend.o" "FL.ikb";
connectAttr "skinCluster1.og[0]" "Rigged_FoxShape.i";
connectAttr "groupId1.id" "Rigged_FoxShape.iog.og[0].gid";
connectAttr "Fox_Rigged:polySurface78SG.mwc" "Rigged_FoxShape.iog.og[0].gco";
connectAttr "groupId2.id" "Rigged_FoxShape.iog.og[1].gid";
connectAttr "Fox_Rigged_0056:Fox_Rigged:polySurface78SG.mwc" "Rigged_FoxShape.iog.og[1].gco"
		;
connectAttr "skinCluster1GroupId.id" "Rigged_FoxShape.iog.og[8].gid";
connectAttr "skinCluster1Set.mwc" "Rigged_FoxShape.iog.og[8].gco";
connectAttr "groupId4.id" "Rigged_FoxShape.iog.og[9].gid";
connectAttr "tweakSet1.mwc" "Rigged_FoxShape.iog.og[9].gco";
connectAttr "tweak1.vl[0].vt[0]" "Rigged_FoxShape.twl";
connectAttr ":defaultColorMgtGlobals.cme" "imagePlaneShape1.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "imagePlaneShape1.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "imagePlaneShape1.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "imagePlaneShape1.ws";
connectAttr ":sideShape.msg" "imagePlaneShape1.ltc";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Fox_Rigged:polySurface78SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "polySurface78SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "fox1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Fox_Rigged_0056:Fox_Rigged:polySurface78SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Fox_Rigged_0056:polySurface78SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "Fox_Rigged_0056:fox1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Fox_Rigged:polySurface78SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "polySurface78SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "fox1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Fox_Rigged_0056:Fox_Rigged:polySurface78SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Fox_Rigged_0056:polySurface78SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "Fox_Rigged_0056:fox1SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "Fox_Rigged:lambert2.oc" "Fox_Rigged:polySurface78SG.ss";
connectAttr "Rigged_FoxShape.iog.og[0]" "Fox_Rigged:polySurface78SG.dsm" -na;
connectAttr "groupId1.msg" "Fox_Rigged:polySurface78SG.gn" -na;
connectAttr "Fox_Rigged:polySurface78SG.msg" "Fox_Rigged:materialInfo1.sg";
connectAttr "Fox_Rigged:lambert2.msg" "Fox_Rigged:materialInfo1.m";
connectAttr "lambert2.oc" "polySurface78SG.ss";
connectAttr "polySurface78SG.msg" "materialInfo1.sg";
connectAttr "lambert2.msg" "materialInfo1.m";
connectAttr "MapFBXASC032FBXASC0355.oc" "fox_material.c";
connectAttr "fox_material.oc" "fox1SG.ss";
connectAttr "fox1SG.msg" "materialInfo2.sg";
connectAttr "fox_material.msg" "materialInfo2.m";
connectAttr "MapFBXASC032FBXASC0355.msg" "materialInfo2.t" -na;
connectAttr "place2dTexture1.o" "MapFBXASC032FBXASC0355.uv";
connectAttr "place2dTexture1.ofu" "MapFBXASC032FBXASC0355.ofu";
connectAttr "place2dTexture1.ofv" "MapFBXASC032FBXASC0355.ofv";
connectAttr "place2dTexture1.rf" "MapFBXASC032FBXASC0355.rf";
connectAttr "place2dTexture1.reu" "MapFBXASC032FBXASC0355.reu";
connectAttr "place2dTexture1.rev" "MapFBXASC032FBXASC0355.rev";
connectAttr "place2dTexture1.vt1" "MapFBXASC032FBXASC0355.vt1";
connectAttr "place2dTexture1.vt2" "MapFBXASC032FBXASC0355.vt2";
connectAttr "place2dTexture1.vt3" "MapFBXASC032FBXASC0355.vt3";
connectAttr "place2dTexture1.vc1" "MapFBXASC032FBXASC0355.vc1";
connectAttr "place2dTexture1.ofs" "MapFBXASC032FBXASC0355.fs";
connectAttr ":defaultColorMgtGlobals.cme" "MapFBXASC032FBXASC0355.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "MapFBXASC032FBXASC0355.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "MapFBXASC032FBXASC0355.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "MapFBXASC032FBXASC0355.ws";
connectAttr "layerManager.dli[1]" "Joints.id";
connectAttr "layerManager.dli[2]" "Geometry.id";
connectAttr "Fox_Rigged_0056:Fox_Rigged:lambert2.oc" "Fox_Rigged_0056:Fox_Rigged:polySurface78SG.ss"
		;
connectAttr "Rigged_FoxShape.iog.og[1]" "Fox_Rigged_0056:Fox_Rigged:polySurface78SG.dsm"
		 -na;
connectAttr "groupId2.msg" "Fox_Rigged_0056:Fox_Rigged:polySurface78SG.gn" -na;
connectAttr "Fox_Rigged_0056:Fox_Rigged:polySurface78SG.msg" "Fox_Rigged_0056:Fox_Rigged:materialInfo1.sg"
		;
connectAttr "Fox_Rigged_0056:Fox_Rigged:lambert2.msg" "Fox_Rigged_0056:Fox_Rigged:materialInfo1.m"
		;
connectAttr "Fox_Rigged_0056:lambert2.oc" "Fox_Rigged_0056:polySurface78SG.ss";
connectAttr "Fox_Rigged_0056:polySurface78SG.msg" "Fox_Rigged_0056:materialInfo1.sg"
		;
connectAttr "Fox_Rigged_0056:lambert2.msg" "Fox_Rigged_0056:materialInfo1.m";
connectAttr "Fox_Rigged_0056:MapFBXASC032FBXASC0355.oc" "Fox_Rigged_0056:fox_material.c"
		;
connectAttr "Fox_Rigged_0056:fox_material.oc" "Fox_Rigged_0056:fox1SG.ss";
connectAttr "Fox_Rigged_0056:fox1SG.msg" "Fox_Rigged_0056:materialInfo2.sg";
connectAttr "Fox_Rigged_0056:fox_material.msg" "Fox_Rigged_0056:materialInfo2.m"
		;
connectAttr "Fox_Rigged_0056:MapFBXASC032FBXASC0355.msg" "Fox_Rigged_0056:materialInfo2.t"
		 -na;
connectAttr "Fox_Rigged_0056:place2dTexture1.o" "Fox_Rigged_0056:MapFBXASC032FBXASC0355.uv"
		;
connectAttr "Fox_Rigged_0056:place2dTexture1.ofu" "Fox_Rigged_0056:MapFBXASC032FBXASC0355.ofu"
		;
connectAttr "Fox_Rigged_0056:place2dTexture1.ofv" "Fox_Rigged_0056:MapFBXASC032FBXASC0355.ofv"
		;
connectAttr "Fox_Rigged_0056:place2dTexture1.rf" "Fox_Rigged_0056:MapFBXASC032FBXASC0355.rf"
		;
connectAttr "Fox_Rigged_0056:place2dTexture1.reu" "Fox_Rigged_0056:MapFBXASC032FBXASC0355.reu"
		;
connectAttr "Fox_Rigged_0056:place2dTexture1.rev" "Fox_Rigged_0056:MapFBXASC032FBXASC0355.rev"
		;
connectAttr "Fox_Rigged_0056:place2dTexture1.vt1" "Fox_Rigged_0056:MapFBXASC032FBXASC0355.vt1"
		;
connectAttr "Fox_Rigged_0056:place2dTexture1.vt2" "Fox_Rigged_0056:MapFBXASC032FBXASC0355.vt2"
		;
connectAttr "Fox_Rigged_0056:place2dTexture1.vt3" "Fox_Rigged_0056:MapFBXASC032FBXASC0355.vt3"
		;
connectAttr "Fox_Rigged_0056:place2dTexture1.vc1" "Fox_Rigged_0056:MapFBXASC032FBXASC0355.vc1"
		;
connectAttr "Fox_Rigged_0056:place2dTexture1.ofs" "Fox_Rigged_0056:MapFBXASC032FBXASC0355.fs"
		;
connectAttr ":defaultColorMgtGlobals.cme" "Fox_Rigged_0056:MapFBXASC032FBXASC0355.cme"
		;
connectAttr ":defaultColorMgtGlobals.cfe" "Fox_Rigged_0056:MapFBXASC032FBXASC0355.cmcf"
		;
connectAttr ":defaultColorMgtGlobals.cfp" "Fox_Rigged_0056:MapFBXASC032FBXASC0355.cmcp"
		;
connectAttr ":defaultColorMgtGlobals.wsn" "Fox_Rigged_0056:MapFBXASC032FBXASC0355.ws"
		;
connectAttr "layerManager.dli[3]" "Fox_Rigged_0056:Joints.id";
connectAttr "layerManager.dli[4]" "Fox_Rigged_0056:Geometry.id";
connectAttr "b_RightHand.tx" "pairBlend1.itx2";
connectAttr "b_RightHand.ty" "pairBlend1.ity2";
connectAttr "b_RightHand.tz" "pairBlend1.itz2";
connectAttr "effector5.blendBRightHand" "pairBlend1.w";
connectAttr "pairBlend1_inTranslateX1.o" "pairBlend1.itx1";
connectAttr "pairBlend1_inTranslateY1.o" "pairBlend1.ity1";
connectAttr "pairBlend1_inTranslateZ1.o" "pairBlend1.itz1";
connectAttr "b_LeftHand.tx" "pairBlend2.itx2";
connectAttr "b_LeftHand.ty" "pairBlend2.ity2";
connectAttr "b_LeftHand.tz" "pairBlend2.itz2";
connectAttr "effector6.blendBLeftHand" "pairBlend2.w";
connectAttr "pairBlend2_inTranslateX1.o" "pairBlend2.itx1";
connectAttr "pairBlend2_inTranslateY1.o" "pairBlend2.ity1";
connectAttr "pairBlend2_inTranslateZ1.o" "pairBlend2.itz1";
connectAttr "b_LeftFoot02.tx" "pairBlend3.itx2";
connectAttr "b_LeftFoot02.ty" "pairBlend3.ity2";
connectAttr "b_LeftFoot02.tz" "pairBlend3.itz2";
connectAttr "effector4.blendBLeftFoot02" "pairBlend3.w";
connectAttr "pairBlend3_inTranslateX1.o" "pairBlend3.itx1";
connectAttr "pairBlend3_inTranslateY1.o" "pairBlend3.ity1";
connectAttr "pairBlend3_inTranslateZ1.o" "pairBlend3.itz1";
connectAttr "skinCluster1GroupParts.og" "skinCluster1.ip[0].ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1.ip[0].gi";
connectAttr "bindPose1.msg" "skinCluster1.bp";
connectAttr "b_Root.wm" "skinCluster1.ma[0]";
connectAttr "b_Hip.wm" "skinCluster1.ma[1]";
connectAttr "b_Spine01.wm" "skinCluster1.ma[2]";
connectAttr "b_Spine02.wm" "skinCluster1.ma[3]";
connectAttr "b_Neck.wm" "skinCluster1.ma[4]";
connectAttr "b_RightUpperArm.wm" "skinCluster1.ma[6]";
connectAttr "b_RightForeArm.wm" "skinCluster1.ma[7]";
connectAttr "b_RightWrist.wm" "skinCluster1.ma[8]";
connectAttr "b_RightHand.wm" "skinCluster1.ma[9]";
connectAttr "b_LeftUpperArm.wm" "skinCluster1.ma[10]";
connectAttr "b_LeftForeArm.wm" "skinCluster1.ma[11]";
connectAttr "b_LeftWrist.wm" "skinCluster1.ma[12]";
connectAttr "b_LeftHand.wm" "skinCluster1.ma[13]";
connectAttr "b_Tail01.wm" "skinCluster1.ma[14]";
connectAttr "|b_Root|b_Hip|b_Tail01|b_Tail02.wm" "skinCluster1.ma[15]";
connectAttr "|b_Root|b_Hip|b_Tail01|b_Tail02|b_Tail05.wm" "skinCluster1.ma[17]";
connectAttr "b_Tail04.wm" "skinCluster1.ma[18]";
connectAttr "|b_Root|b_Hip|b_Tail04|b_Tail02.wm" "skinCluster1.ma[19]";
connectAttr "b_Tail06.wm" "skinCluster1.ma[21]";
connectAttr "|b_Root|b_Hip|b_Tail06|b_Tail02.wm" "skinCluster1.ma[22]";
connectAttr "b_LeftLeg01.wm" "skinCluster1.ma[25]";
connectAttr "b_LeftLeg02.wm" "skinCluster1.ma[26]";
connectAttr "b_LeftFoot01.wm" "skinCluster1.ma[27]";
connectAttr "b_RightLeg01.wm" "skinCluster1.ma[29]";
connectAttr "b_RightLeg02.wm" "skinCluster1.ma[30]";
connectAttr "b_RightFoot01.wm" "skinCluster1.ma[31]";
connectAttr "b_Root.liw" "skinCluster1.lw[0]";
connectAttr "b_Hip.liw" "skinCluster1.lw[1]";
connectAttr "b_Spine01.liw" "skinCluster1.lw[2]";
connectAttr "b_Spine02.liw" "skinCluster1.lw[3]";
connectAttr "b_Neck.liw" "skinCluster1.lw[4]";
connectAttr "b_RightUpperArm.liw" "skinCluster1.lw[6]";
connectAttr "b_RightForeArm.liw" "skinCluster1.lw[7]";
connectAttr "b_RightWrist.liw" "skinCluster1.lw[8]";
connectAttr "b_RightHand.liw" "skinCluster1.lw[9]";
connectAttr "b_LeftUpperArm.liw" "skinCluster1.lw[10]";
connectAttr "b_LeftForeArm.liw" "skinCluster1.lw[11]";
connectAttr "b_LeftWrist.liw" "skinCluster1.lw[12]";
connectAttr "b_LeftHand.liw" "skinCluster1.lw[13]";
connectAttr "b_Tail01.liw" "skinCluster1.lw[14]";
connectAttr "|b_Root|b_Hip|b_Tail01|b_Tail02.liw" "skinCluster1.lw[15]";
connectAttr "|b_Root|b_Hip|b_Tail01|b_Tail02|b_Tail05.liw" "skinCluster1.lw[17]"
		;
connectAttr "b_Tail04.liw" "skinCluster1.lw[18]";
connectAttr "|b_Root|b_Hip|b_Tail04|b_Tail02.liw" "skinCluster1.lw[19]";
connectAttr "b_Tail06.liw" "skinCluster1.lw[21]";
connectAttr "|b_Root|b_Hip|b_Tail06|b_Tail02.liw" "skinCluster1.lw[22]";
connectAttr "b_LeftLeg01.liw" "skinCluster1.lw[25]";
connectAttr "b_LeftLeg02.liw" "skinCluster1.lw[26]";
connectAttr "b_LeftFoot01.liw" "skinCluster1.lw[27]";
connectAttr "b_RightLeg01.liw" "skinCluster1.lw[29]";
connectAttr "b_RightLeg02.liw" "skinCluster1.lw[30]";
connectAttr "b_RightFoot01.liw" "skinCluster1.lw[31]";
connectAttr "b_Root.obcc" "skinCluster1.ifcl[0]";
connectAttr "b_Hip.obcc" "skinCluster1.ifcl[1]";
connectAttr "b_Spine01.obcc" "skinCluster1.ifcl[2]";
connectAttr "b_Spine02.obcc" "skinCluster1.ifcl[3]";
connectAttr "b_Neck.obcc" "skinCluster1.ifcl[4]";
connectAttr "b_RightUpperArm.obcc" "skinCluster1.ifcl[6]";
connectAttr "b_RightForeArm.obcc" "skinCluster1.ifcl[7]";
connectAttr "b_RightWrist.obcc" "skinCluster1.ifcl[8]";
connectAttr "b_RightHand.obcc" "skinCluster1.ifcl[9]";
connectAttr "b_LeftUpperArm.obcc" "skinCluster1.ifcl[10]";
connectAttr "b_LeftForeArm.obcc" "skinCluster1.ifcl[11]";
connectAttr "b_LeftWrist.obcc" "skinCluster1.ifcl[12]";
connectAttr "b_LeftHand.obcc" "skinCluster1.ifcl[13]";
connectAttr "b_Tail01.obcc" "skinCluster1.ifcl[14]";
connectAttr "|b_Root|b_Hip|b_Tail01|b_Tail02.obcc" "skinCluster1.ifcl[15]";
connectAttr "|b_Root|b_Hip|b_Tail01|b_Tail02|b_Tail05.obcc" "skinCluster1.ifcl[17]"
		;
connectAttr "b_Tail04.obcc" "skinCluster1.ifcl[18]";
connectAttr "|b_Root|b_Hip|b_Tail04|b_Tail02.obcc" "skinCluster1.ifcl[19]";
connectAttr "b_Tail06.obcc" "skinCluster1.ifcl[21]";
connectAttr "|b_Root|b_Hip|b_Tail06|b_Tail02.obcc" "skinCluster1.ifcl[22]";
connectAttr "b_LeftLeg01.obcc" "skinCluster1.ifcl[25]";
connectAttr "b_LeftLeg02.obcc" "skinCluster1.ifcl[26]";
connectAttr "b_LeftFoot01.obcc" "skinCluster1.ifcl[27]";
connectAttr "b_RightLeg01.obcc" "skinCluster1.ifcl[29]";
connectAttr "b_RightLeg02.obcc" "skinCluster1.ifcl[30]";
connectAttr "b_RightFoot01.obcc" "skinCluster1.ifcl[31]";
connectAttr "geomBind1.scs" "skinCluster1.gb";
connectAttr "b_Hip.msg" "skinCluster1.ptt";
connectAttr "Rigged_FoxShapeOrig.w" "groupParts1.ig";
connectAttr "groupId1.id" "groupParts1.gi";
connectAttr "groupParts1.og" "groupParts2.ig";
connectAttr "groupId2.id" "groupParts2.gi";
connectAttr "groupParts4.og" "tweak1.ip[0].ig";
connectAttr "groupId4.id" "tweak1.ip[0].gi";
connectAttr "skinCluster1GroupId.msg" "skinCluster1Set.gn" -na;
connectAttr "Rigged_FoxShape.iog.og[8]" "skinCluster1Set.dsm" -na;
connectAttr "skinCluster1.msg" "skinCluster1Set.ub[0]";
connectAttr "tweak1.og[0]" "skinCluster1GroupParts.ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1GroupParts.gi";
connectAttr "groupId4.msg" "tweakSet1.gn" -na;
connectAttr "Rigged_FoxShape.iog.og[9]" "tweakSet1.dsm" -na;
connectAttr "tweak1.msg" "tweakSet1.ub[0]";
connectAttr "groupParts2.og" "groupParts4.ig";
connectAttr "groupId4.id" "groupParts4.gi";
connectAttr "b_Root.msg" "bindPose1.m[0]";
connectAttr "b_Hip.msg" "bindPose1.m[1]";
connectAttr "b_Spine01.msg" "bindPose1.m[2]";
connectAttr "b_Spine02.msg" "bindPose1.m[3]";
connectAttr "b_Neck.msg" "bindPose1.m[4]";
connectAttr "b_RightUpperArm.msg" "bindPose1.m[6]";
connectAttr "b_RightForeArm.msg" "bindPose1.m[7]";
connectAttr "b_RightWrist.msg" "bindPose1.m[8]";
connectAttr "b_RightHand.msg" "bindPose1.m[9]";
connectAttr "b_LeftUpperArm.msg" "bindPose1.m[10]";
connectAttr "b_LeftForeArm.msg" "bindPose1.m[11]";
connectAttr "b_LeftWrist.msg" "bindPose1.m[12]";
connectAttr "b_LeftHand.msg" "bindPose1.m[13]";
connectAttr "b_Tail01.msg" "bindPose1.m[14]";
connectAttr "|b_Root|b_Hip|b_Tail01|b_Tail02.msg" "bindPose1.m[15]";
connectAttr "|b_Root|b_Hip|b_Tail01|b_Tail02|b_Tail05.msg" "bindPose1.m[17]";
connectAttr "b_Tail04.msg" "bindPose1.m[18]";
connectAttr "|b_Root|b_Hip|b_Tail04|b_Tail02.msg" "bindPose1.m[19]";
connectAttr "b_Tail06.msg" "bindPose1.m[21]";
connectAttr "|b_Root|b_Hip|b_Tail06|b_Tail02.msg" "bindPose1.m[22]";
connectAttr "b_LeftLeg01.msg" "bindPose1.m[25]";
connectAttr "b_LeftLeg02.msg" "bindPose1.m[26]";
connectAttr "b_LeftFoot01.msg" "bindPose1.m[27]";
connectAttr "b_RightLeg01.msg" "bindPose1.m[29]";
connectAttr "b_RightLeg02.msg" "bindPose1.m[30]";
connectAttr "b_RightFoot01.msg" "bindPose1.m[31]";
connectAttr "bindPose1.w" "bindPose1.p[0]";
connectAttr "bindPose1.m[0]" "bindPose1.p[1]";
connectAttr "bindPose1.m[1]" "bindPose1.p[2]";
connectAttr "bindPose1.m[2]" "bindPose1.p[3]";
connectAttr "bindPose1.m[3]" "bindPose1.p[4]";
connectAttr "bindPose1.m[3]" "bindPose1.p[6]";
connectAttr "bindPose1.m[6]" "bindPose1.p[7]";
connectAttr "bindPose1.m[7]" "bindPose1.p[8]";
connectAttr "bindPose1.m[8]" "bindPose1.p[9]";
connectAttr "bindPose1.m[3]" "bindPose1.p[10]";
connectAttr "bindPose1.m[10]" "bindPose1.p[11]";
connectAttr "bindPose1.m[11]" "bindPose1.p[12]";
connectAttr "bindPose1.m[12]" "bindPose1.p[13]";
connectAttr "bindPose1.m[1]" "bindPose1.p[14]";
connectAttr "bindPose1.m[14]" "bindPose1.p[15]";
connectAttr "bindPose1.m[15]" "bindPose1.p[17]";
connectAttr "bindPose1.m[1]" "bindPose1.p[18]";
connectAttr "bindPose1.m[18]" "bindPose1.p[19]";
connectAttr "bindPose1.m[1]" "bindPose1.p[21]";
connectAttr "bindPose1.m[21]" "bindPose1.p[22]";
connectAttr "bindPose1.m[1]" "bindPose1.p[25]";
connectAttr "bindPose1.m[25]" "bindPose1.p[26]";
connectAttr "bindPose1.m[26]" "bindPose1.p[27]";
connectAttr "bindPose1.m[1]" "bindPose1.p[29]";
connectAttr "bindPose1.m[29]" "bindPose1.p[30]";
connectAttr "bindPose1.m[30]" "bindPose1.p[31]";
connectAttr "b_Root.bps" "bindPose1.wm[0]";
connectAttr "b_Hip.bps" "bindPose1.wm[1]";
connectAttr "b_Spine01.bps" "bindPose1.wm[2]";
connectAttr "b_Spine02.bps" "bindPose1.wm[3]";
connectAttr "b_Neck.bps" "bindPose1.wm[4]";
connectAttr "b_RightUpperArm.bps" "bindPose1.wm[6]";
connectAttr "b_RightForeArm.bps" "bindPose1.wm[7]";
connectAttr "b_RightWrist.bps" "bindPose1.wm[8]";
connectAttr "b_RightHand.bps" "bindPose1.wm[9]";
connectAttr "b_LeftUpperArm.bps" "bindPose1.wm[10]";
connectAttr "b_LeftForeArm.bps" "bindPose1.wm[11]";
connectAttr "b_LeftWrist.bps" "bindPose1.wm[12]";
connectAttr "b_LeftHand.bps" "bindPose1.wm[13]";
connectAttr "b_Tail01.bps" "bindPose1.wm[14]";
connectAttr "|b_Root|b_Hip|b_Tail01|b_Tail02.bps" "bindPose1.wm[15]";
connectAttr "|b_Root|b_Hip|b_Tail01|b_Tail02|b_Tail05.bps" "bindPose1.wm[17]";
connectAttr "b_Tail04.bps" "bindPose1.wm[18]";
connectAttr "|b_Root|b_Hip|b_Tail04|b_Tail02.bps" "bindPose1.wm[19]";
connectAttr "b_Tail06.bps" "bindPose1.wm[21]";
connectAttr "|b_Root|b_Hip|b_Tail06|b_Tail02.bps" "bindPose1.wm[22]";
connectAttr "b_LeftLeg01.bps" "bindPose1.wm[25]";
connectAttr "b_LeftLeg02.bps" "bindPose1.wm[26]";
connectAttr "b_LeftFoot01.bps" "bindPose1.wm[27]";
connectAttr "b_RightLeg01.bps" "bindPose1.wm[29]";
connectAttr "b_RightLeg02.bps" "bindPose1.wm[30]";
connectAttr "b_RightFoot01.bps" "bindPose1.wm[31]";
connectAttr "bindPose1.msg" "geomBind1.bp";
connectAttr "b_RightFoot02.tx" "pairBlend4.itx2";
connectAttr "b_RightFoot02.ty" "pairBlend4.ity2";
connectAttr "b_RightFoot02.tz" "pairBlend4.itz2";
connectAttr "effector3.blendBRightFoot02" "pairBlend4.w";
connectAttr "pairBlend4_inTranslateX1.o" "pairBlend4.itx1";
connectAttr "pairBlend4_inTranslateY1.o" "pairBlend4.ity1";
connectAttr "pairBlend4_inTranslateZ1.o" "pairBlend4.itz1";
connectAttr "Fox_Rigged:polySurface78SG.pa" ":renderPartition.st" -na;
connectAttr "polySurface78SG.pa" ":renderPartition.st" -na;
connectAttr "fox1SG.pa" ":renderPartition.st" -na;
connectAttr "Fox_Rigged_0056:Fox_Rigged:polySurface78SG.pa" ":renderPartition.st"
		 -na;
connectAttr "Fox_Rigged_0056:polySurface78SG.pa" ":renderPartition.st" -na;
connectAttr "Fox_Rigged_0056:fox1SG.pa" ":renderPartition.st" -na;
connectAttr "Fox_Rigged:lambert2.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert2.msg" ":defaultShaderList1.s" -na;
connectAttr "fox_material.msg" ":defaultShaderList1.s" -na;
connectAttr "Fox_Rigged_0056:Fox_Rigged:lambert2.msg" ":defaultShaderList1.s" -na
		;
connectAttr "Fox_Rigged_0056:lambert2.msg" ":defaultShaderList1.s" -na;
connectAttr "Fox_Rigged_0056:fox_material.msg" ":defaultShaderList1.s" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "Fox_Rigged_0056:place2dTexture1.msg" ":defaultRenderUtilityList1.u"
		 -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "MapFBXASC032FBXASC0355.msg" ":defaultTextureList1.tx" -na;
connectAttr "Fox_Rigged_0056:MapFBXASC032FBXASC0355.msg" ":defaultTextureList1.tx"
		 -na;
connectAttr "ikRPsolver.msg" ":ikSystem.sol" -na;
connectAttr "ikSCsolver.msg" ":ikSystem.sol" -na;
// End of Fox_Rigged.ma
