//Maya ASCII 2019 scene
//Name: Fox_Rigged.ma
//Last modified: Thu, Jan 28, 2021 12:17:21 PM
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
	setAttr ".t" -type "double3" 32.376544428241544 -178.06737873628379 -306.32606643123773 ;
	setAttr ".r" -type "double3" 398.06164731499581 4126.1999999943864 359.99999999758381 ;
	setAttr ".rp" -type "double3" -7.1054273576010019e-15 0 2.7533531010703882e-14 ;
	setAttr ".rpt" -type "double3" -1.6189540902672813e-13 8.8023140795421656e-14 3.0136240865312325e-14 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "1A13335A-4647-43A9-6939-93B5D8D21F0D";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 372.46824996781589;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0.98080617189407349 146.56351470947266 66.0531005859375 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "9FEC7A45-453D-5478-8BAF-C5B721B05064";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -40.36512991177699 1107.2504192918332 -128.78499312037812 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "C1B4A979-4595-C805-75AE-388B0ADEADE9";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1020.2661742250668;
	setAttr ".ow" 169.88339270234687;
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
	setAttr ".ow" 275.14950562740734;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".tp" -type "double3" 26.466786353172481 18.051326604176147 55.511403843466546 ;
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "D117F813-4449-60C4-3011-759A066BAAAA";
	setAttr ".t" -type "double3" 1197.2196621695109 154.242750928416 91.832315956179087 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "112C2D79-4F40-8B86-9F17-F7BDEAB427B7";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 1197.2195703338764;
	setAttr ".ow" 183.92992021510864;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".tp" -type "double3" 9.1835634480563755e-05 154.242750928416 91.832315956179087 ;
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
		 -1.57272105868432e-06 2.1023631498862301 -1.4253665283996184 0 -2.5399999618523212 -7.0981089807651397e-07 1.7556401930513141e-06 0
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
	setAttr ".pa" -type "double3" -0.0072657919425629797 1.4678551094952428 1.6769962054020895 ;
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
	setAttr ".pa" -type "double3" -0.0039683740134445304 0.4228297950801409 2.4409072683309581 ;
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
	setAttr ".bps" -type "matrix" 0.54765120701156078 -2.4548089654349865 0.35438638787617566 0
		 -0.099311434247807126 0.34092785862208275 2.5150554901898312 0 -2.4782685741593169 -0.5561291760392062 -0.022472817720689875 0
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
	setAttr ".bps" -type "matrix" 0.49704094635294399 -2.1651922686458702 -1.23145879404321 0
		 0.25049964388666152 -1.2059207742845848 2.2213969227271049 0 -2.4782655138706291 -0.55614390939008995 -0.022445677856455827 0
		 28.073524790801926 78.638218646372565 -69.121940479173162 1;
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
	setAttr ".bps" -type "matrix" 0.52261158311653622 -2.3615134128807216 0.77571231393448448 0
		 -0.19192381521045113 0.75196873862139146 2.4185338461383616 0 -2.4782336606092832 -0.55623305072568685 -0.023717720219286781 0
		 36.991837256735636 39.788585765360274 -91.217782527750487 1;
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
	setAttr ".bps" -type "matrix" 0.033720546889503988 -0.25797326238565321 2.5266408542268097 0
		 -0.55571631882832284 2.4648841435806315 0.25908419530629079 0 -2.4782335107823799 -0.55623303373424027 -0.023717560505666108 0
		 45.238611608295074 2.5240660872332867 -78.977034410877451 1;
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
	setAttr ".bps" -type "matrix" -0.28719496834382147 -2.4927922036194574 0.39383336891167714 0
		 -0.28045719066054814 0.42544453160846024 2.4883609285183765 0 -2.5080794608943435 0.23787067014113575 -0.32334935287316585 0
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
	setAttr ".bps" -type "matrix" -0.036475915321465303 -2.1725948017724388 -1.3153325256039892 0
		 -0.39975828611697861 -1.2941591403845158 2.1487077866994762 0 -2.5080794620740297 0.23787059987622369 -0.32334939541295499 0
		 -23.138296395410727 77.918653784102318 -68.374622522490597 1;
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
	setAttr ".bps" -type "matrix" -0.3338885230759101 -2.3719767119850643 0.8448927951451769 0
		 -0.22196958992539506 0.87669756875730254 2.3735483032031244 0 -2.5081562421126833 0.23817327641572678 -0.32252999443155994 0
		 -23.792772569877965 38.936207681836436 -91.975400432447799 1;
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
	setAttr ".bps" -type "matrix" -0.33721911383518499 -0.14790454332581179 2.5131676279104269 0
		 0.21687617093222419 2.5244797344422816 0.17767098145720317 0 -2.5081562632193974 0.23817326715830953 -0.32252983713116967 0
		 -29.0615166977644 1.5065857541942833 -78.642996537063851 1;
	setAttr ".radi" 3.3137865257263188;
	setAttr -k on ".MaxHandle" 122;
	setAttr ".fbxID" 5;
createNode ikEffector -n "effector3" -p "b_RightFoot01";
	rename -uid "A896B768-4E32-2658-343B-72A08EC61FB8";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode ikHandle -n "ikHandle3";
	rename -uid "FCB0C86F-4DF1-51D2-A8BD-3096F036376F";
	setAttr ".pv" -type "double3" 0.26044448781331253 0.051455489422295803 -1.9823019395722481 ;
	setAttr ".roc" yes;
createNode ikHandle -n "ikHandle4";
	rename -uid "0AE891A9-499D-C26D-4748-5A909E602993";
	setAttr ".pv" -type "double3" 1.7880231183068337e-05 0.082969893133141751 -1.9982782580298191 ;
	setAttr ".roc" yes;
createNode ikHandle -n "ikHandle5";
	rename -uid "8BEB2DD0-4712-D596-2558-AB9BA8E54ECD";
	setAttr ".t" -type "double3" -24.105116613358174 8.2065363007739478 67.009538815774178 ;
	setAttr ".r" -type "double3" 89.91492365071764 -6.4519018761005329 -90.128731735888834 ;
	setAttr ".roc" yes;
createNode ikHandle -n "ikHandle6";
	rename -uid "317D9D5F-4107-EFB8-920F-518FA1E1C6F2";
	setAttr ".t" -type "double3" 26.679613304694076 8.6022668793416948 67.182312893950126 ;
	setAttr ".r" -type "double3" 90.488072242193169 -4.3792306170067441 -89.630815112307005 ;
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
	setAttr ".pv" -type "double2" 0.57697402344869719 0.098635464251696225 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
createNode mesh -n "Rigged_FoxShapeOrig" -p "Rigged_Fox";
	rename -uid "3D8000A8-4A72-B1B9-D6A3-D9802257DEDB";
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
		 0.10132629 0.42648718 0.45469067 0 0.73194748 0 0.99999994 0.95947617 0 0.98117751
		 0 0 0.36277908 0 1 0.85397464 0.078171879 0.87810516 0.23363782 0 0.65097427 0 0.9251678
		 0.74639916 0 0.99999994 0.38646805 1.1071993e-15 0.73874164 0 0.3736625 1 0 0.95638084
		 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0.22441556 0.24444209
		 0.24571848 0.23855647 0.253968 0.264258 0.232778 0.269371 0.19456249 0.24615553 0.19867299
		 0.27222601 0.14145672 0.24575827 0.16453913 0.24685141 0.165143 0.27259099 0.141544
		 0.270518 0.13788953 0.3040728 0.16311714 0.3076227 0.16171101 0.331938 0.135353 0.32736301
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
	setAttr ".vcs" 2;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "3EEE6CAC-4309-CE93-FB92-7EBC3A198A6A";
	setAttr -s 8 ".lnk";
	setAttr -s 8 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "2727882B-4F6D-0E08-B3FB-52BDFADAB784";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "A5E27503-4EE3-7ED9-0D41-7BBE1D6D4D99";
createNode displayLayerManager -n "layerManager";
	rename -uid "26B72D94-4E62-FF86-E992-EBB749DD9789";
	setAttr -s 5 ".dli[1:4]"  1 2 3 4;
	setAttr -s 5 ".dli";
createNode displayLayer -n "defaultLayer";
	rename -uid "BA506A15-483A-D739-7E22-F1AB0463B2A8";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "16A0D836-40C3-3571-328A-86B62664F6EA";
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
		+ "            -hulls 1\n            -grid 0\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 647\n            -height 413\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 0\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 647\n            -height 413\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 0\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 647\n            -height 413\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n"
		+ "            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 1\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 0\n            -imagePlane 0\n            -joints 0\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n"
		+ "            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1303\n            -height 856\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n"
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
		+ "        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xpm\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 1\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 0\\n    -joints 0\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1303\\n    -height 856\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 1\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 0\\n    -joints 0\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1303\\n    -height 856\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "Fox_Rigged:sceneConfigurationScriptNode";
	rename -uid "17941D20-4550-454D-3612-63BAB3918823";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 1000 -ast 0 -aet 1000 ";
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
createNode animCurveTL -n "ikHandle4_translateX";
	rename -uid "60B34F0B-4739-3ED1-30CD-D39C6597F29C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  217 45.238700227803193 323 45.238700227803193;
createNode animCurveTL -n "ikHandle3_translateX";
	rename -uid "367DE6CE-4AC1-71EA-F096-BCB30772553D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  217 -29.061517881153861 323 -29.061517881153861;
createNode animCurveTL -n "ikHandle4_translateY";
	rename -uid "D743D2A2-4167-0CEC-C784-4C9359F768F6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  217 2.5236747285740577 323 2.5236747285740577;
createNode animCurveTL -n "ikHandle3_translateY";
	rename -uid "4278FCF1-4B97-C5CD-95EB-70AAAC2B4E03";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  217 1.5065734707502401 323 1.5065734707502401;
createNode animCurveTL -n "ikHandle4_translateZ";
	rename -uid "EA319BC0-4E0C-9FEA-8690-28A74B5E55B1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  217 -78.977044435403513 323 -78.977044435403513;
createNode animCurveTL -n "ikHandle3_translateZ";
	rename -uid "10BEC604-4852-7AAC-971E-20B7780C97B4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  217 -78.642996823061111 323 -78.642996823061111;
createNode animCurveTA -n "ikHandle4_rotateX";
	rename -uid "673DF5FD-4A88-FF1D-89F3-C3B84FC31743";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  217 0 323 0;
createNode animCurveTA -n "ikHandle3_rotateX";
	rename -uid "193BC8D3-4AF0-9038-9A83-CA8FDD4C299B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  217 0 323 0;
createNode animCurveTA -n "ikHandle4_rotateY";
	rename -uid "C551F3AD-4F6C-EB3A-F983-14AEBB07CB56";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  217 0 323 0;
createNode animCurveTA -n "ikHandle3_rotateY";
	rename -uid "06C1F991-4AFB-B7A6-8B0D-8BB38D99DB08";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  217 0 323 0;
createNode animCurveTA -n "ikHandle4_rotateZ";
	rename -uid "55934B88-471E-B139-0385-C998DD18EE03";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  217 0 323 0;
createNode animCurveTA -n "ikHandle3_rotateZ";
	rename -uid "FD0F7B4F-497F-61FF-85D4-528AD4E53F79";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  217 0 323 0;
createNode animCurveTU -n "ikHandle4_scaleX";
	rename -uid "67CFFA19-481C-E28D-ECFE-B3A998CA04BF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  217 1 323 1;
createNode animCurveTU -n "ikHandle3_scaleX";
	rename -uid "30601EEB-43F0-FCA3-D7D2-C09B03495A50";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  217 1 323 1;
createNode animCurveTU -n "ikHandle4_scaleY";
	rename -uid "69512CFC-4902-3CEC-7D1A-ECA08C756296";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  217 1 323 1;
createNode animCurveTU -n "ikHandle3_scaleY";
	rename -uid "EEBB7817-40D2-78F0-AB3C-A2A279788A12";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  217 1 323 1;
createNode animCurveTU -n "ikHandle4_scaleZ";
	rename -uid "BD307E2D-40F9-E076-941F-7AA3E9F407D8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  217 1 323 1;
createNode animCurveTU -n "ikHandle3_scaleZ";
	rename -uid "56F7E28F-414C-785F-0B67-62B0544B0A9B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  217 1 323 1;
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
createNode skinCluster -n "skinCluster1";
	rename -uid "087D5330-43C1-6C04-FABE-2F846BC77B06";
	setAttr ".skm" 2;
	setAttr -s 1550 ".wl";
	setAttr ".wl[0:166].w"
		3 1 0.59313912392466062 14 0.33977239291235606 29 0.067088483162983395
		3 1 0.55211156310778819 14 0.42791674291420839 18 0.019971693978003243
		3 1 0.018206197990550455 14 0.57073179130425067 15 0.41106201070519899
		3 1 0.017994089228540296 14 0.50621644933661447 15 0.4757894614348453
		3 1 0.35966547641962632 14 0.60066180728732665 15 0.039672716293047118
		3 1 0.31220401785841911 14 0.62070999478151578 15 0.067085987360065047
		3 1 0.0013716000416547367 14 0.17292437848730344 15 0.82570402147104183
		3 14 0.057922583801617897 15 0.94153006918914828 17 0.0005473470092337906
		3 14 0.011063005300517939 15 0.98451125194744593 17 0.004425742752035995
		3 14 0.0041250557520454735 15 0.98769542285906398 17 0.0081795213888903838
		3 14 0.00020324419854465272 15 0.91139478883279168 17 0.088401966968663662
		3 14 0.00036892386181460737 15 0.95345896772496896 17 0.046172108413216395
		3 14 5.1607575998266438e-06 15 0.74748563977643923 17 0.25250919946596107
		3 14 5.1452370575065913e-06 15 0.81509014797607959 17 0.18490470678686288
		3 1 0.022449283999927419 14 0.57589998471455572 15 0.4016507312855167
		3 1 0.26199251792325423 14 0.66500851666764105 15 0.072998965409104846
		3 1 0.00041994271031321658 14 0.10400462758992858 15 0.89557542969975823
		3 14 0.0044999459122635442 15 0.9889047339148519 17 0.0065953201728845539
		3 14 0.00016076851549138332 15 0.92672363699782312 17 0.073115594486685503
		3 14 4.222494609401121e-06 15 0.77544936851129764 17 0.22454640899409284
		3 1 0.017641613430277182 14 0.71803028702309057 15 0.26432809954663217
		3 1 0.015962675193321597 14 0.64694471433726242 15 0.33709261046941597
		3 1 0.24947153834698343 14 0.69754022791949222 15 0.052988233733524445
		3 1 0.002240673652621825 14 0.28049374188289311 15 0.71726558446448496
		3 14 0.19495965325848413 15 0.80469048041580271 18 0.00034986632571322603
		3 14 0.041228420208956028 15 0.95636793618031546 17 0.002403643610728424
		3 14 0.015950189394605699 15 0.981069352260587 17 0.002980458344807221
		3 14 0.0003788326476701353 15 0.97178382739492974 17 0.027837339957400051
		3 14 0.00077605071918508391 15 0.97361703273557387 17 0.025606916545240992
		3 14 1.284977771625924e-05 15 0.82778580618252917 17 0.17220134403975459
		3 14 8.928910523335001e-06 15 0.88591064412405207 17 0.11408042696542446
		3 1 0.0096523008936650403 14 0.64650626025759461 15 0.34384143884874041
		3 1 0.29721095151374721 14 0.65901516346374844 15 0.04377388502250424
		3 1 0.0007487792619078579 14 0.24631752930534209 15 0.75293369143274991
		3 14 0.025415905083153872 15 0.97242925567152239 17 0.0021548392453236173
		3 14 0.00054686787959716012 15 0.98135641377724026 17 0.018096718343162614
		3 14 1.0779716076830974e-05 15 0.87858091416005324 17 0.12140830612387002
		3 1 0.30246823670825534 14 0.6417748059550421 15 0.055756957336702627
		3 1 0.011824563110784014 14 0.56994527653147176 15 0.41823016035774419
		3 1 0.027122696509033282 14 0.62889973033607793 15 0.34397757315488875
		3 1 0.0024991984443961091 14 0.24487539811532702 15 0.75262540344027684
		3 14 0.12276075578862211 15 0.8769437667607225 17 0.00029547745065526939
		3 14 0.031197802902311295 15 0.96644694513224694 17 0.0023552519654417136
		3 14 0.0090237579570018409 15 0.98618183217464073 17 0.004794409868357402
		3 14 0.0006893592401801586 15 0.95183810142509995 17 0.047472539334719836
		3 14 0.0010799627692451358 15 0.97220812480192031 17 0.026711912428834552
		3 14 9.5935708888920674e-06 15 0.77411014534743117 17 0.22588026108168002
		3 14 1.317332919363423e-05 15 0.86460441380798214 17 0.13538241286282401
		3 14 4.6535438373363306e-06 15 0.79309007836997114 17 0.20690526808619156
		3 1 0.059855347712248853 14 0.81121121874110613 15 0.12893343354664505
		3 1 0.073237046295639832 14 0.74188347714661518 15 0.184879476557745
		3 1 0.098912502423652265 14 0.70702710749600572 15 0.19406039008034207
		3 1 0.097135553158901641 14 0.69197393270874308 15 0.21089051413235527
		3 1 0.12485350131468086 14 0.70983244919966848 15 0.16531404948565057
		3 1 0.1394952031553148 14 0.74481991665401992 15 0.11568488019066532
		3 1 0.10842974728401215 14 0.74748463064614556 15 0.14408562206984243
		3 1 0.070698024255837738 14 0.77034757225584316 15 0.15895440348831921
		3 1 0.0050996109834113568 14 0.50334818866250319 15 0.49155220035408548
		3 1 0.0047546784382823618 14 0.38154664201322291 15 0.61369867954849477
		3 1 0.004447154718877488 14 0.35954167717106472 15 0.63601116811005787
		3 1 0.0033105304023771996 14 0.32186480984664645 15 0.6748246597509765
		3 1 0.00098019112544643844 14 0.20242693755084432 15 0.79659287132370915
		3 1 0.0016903217728248441 14 0.32382894258789835 15 0.67448073563927669
		3 14 0.40995192538330583 15 0.58816145653751528 18 0.0018866180791789805
		3 1 0.0024298303907691675 14 0.44726325016517976 15 0.55030691944405119
		3 1 0.00060336845175561551 14 0.13026542772527444 15 0.86913120382296993
		3 1 0.00076796689174979914 14 0.11361601253809833 15 0.88561602057015198
		3 14 0.053891429740547274 15 0.9452205036726794 17 0.00088806658677321603
		3 14 0.022685923986353791 15 0.97609630482260024 17 0.0012177711910458721
		3 14 0.013458594141642863 15 0.98412722591001112 17 0.0024141799483459146
		3 14 0.033282264395774787 15 0.96526255326133203 17 0.0014551823428931327
		3 14 0.063809000220569664 15 0.93539939925612325 17 0.00079160052330700835
		3 14 0.096420651705271032 15 0.90299092449124707 17 0.00058842380348181496
		3 14 0.0054764927229975545 15 0.98451366836844068 17 0.010009838908561736
		3 14 0.0074761999029008715 15 0.98191723884122917 17 0.010606561255870022
		3 14 0.0017053732740119375 15 0.97494342266381961 17 0.023351204062168531
		3 14 0.0010500127541492107 15 0.97099746468387738 17 0.027952522561973361
		3 14 0.0015232156711375202 15 0.97955593831777377 17 0.018920846011088545
		3 14 0.0031917754443644493 15 0.98517791572537738 17 0.011630308830258155
		3 14 0.0037566049960534947 15 0.98581026462807364 17 0.010433130375872957
		3 14 0.0042243754493699924 15 0.98903133062109161 17 0.0067442939295382972
		3 14 5.8545871829298427e-05 15 0.91477865623493149 17 0.085162797893239106
		3 14 5.4885312374226184e-05 15 0.85774787227391858 17 0.14219724241370718
		3 14 1.8172172887117764e-05 15 0.8033393666029105 17 0.19664246122420248
		3 14 2.2432140690909716e-05 15 0.85051315180812526 17 0.14946441605118377
		3 14 4.0427237975840834e-05 15 0.89081846481490679 17 0.10914110794711744
		3 14 0.00016924515709545475 15 0.93367358917782106 17 0.066157165665083464
		3 14 8.8030562781722167e-05 15 0.93968857486831636 17 0.06022339456890196
		3 14 4.884142879670107e-05 15 0.94684267115283571 17 0.053108487418367732
		3 1 0.60676128447261624 2 0.012841737280372691 14 0.38039697824701102
		3 1 0.6405313681688598 2 0.014105271975802794 14 0.34536335985533739
		3 1 0.578395426291893 14 0.37412081566747279 25 0.047483758040634205
		3 1 0.55623457223275163 14 0.31317739265642958 25 0.13058803511081879
		3 1 0.52900190969381811 14 0.32205154405583897 29 0.14894654625034298
		3 1 0.3427398283722799 14 0.61860327857533781 15 0.038656893052382492
		3 1 0.37170402322277668 14 0.58120897076257816 18 0.04708700601464505
		3 1 0.58182718542857137 14 0.24957377748671042 29 0.16859903708471824
		3 0 4.6609791024958196e-05 29 0.0033790053919218795 30 0.99657438481705318
		3 0 6.6528995193470042e-05 29 0.0040371665230608039 30 0.9958963044817456
		3 0 0.00012856610458497215 29 0.0060563083023428771 30 0.99381512559307228
		3 0 0.00017757984469914253 29 0.0076044415838095085 30 0.99221797857149152
		3 0 0.00012964141208618129 29 0.0061174491125906951 30 0.99375290947532313
		3 0 6.1330353768916678e-05 29 0.0039125910961506881 30 0.9960260785500803
		3 0 4.0556089000344146e-05 29 0.0032205892077507474 30 0.99673885470324897
		3 0 0.00014600003076788268 29 0.0065935204416630918 30 0.99326047952756924
		3 0 7.8241153469206919e-05 29 0.0043948232381694902 30 0.99552693560836136
		3 0 4.2633436185610305e-05 29 0.0032264615441869285 30 0.99673090501962724
		3 0 0.00015138821723539815 29 0.0068458136419662849 30 0.99300279814079839
		3 0 8.3103732633943997e-05 29 0.0046494731006213397 30 0.99526742316674477
		3 0 4.6548941081872568e-05 29 0.003450035405509711 30 0.99650341565340839
		3 0 0.00013139363537260934 29 0.0060613885282831109 30 0.99380721783634429
		3 0 0.00021408230230878696 29 0.0081748668048634374 30 0.99161105089282786
		3 0 0.00039747679638521815 29 0.012541593959267443 30 0.98706092924434741
		3 0 0.00052529345217905475 29 0.015474667015520353 30 0.98400003953230064
		3 0 0.00038795817213425318 29 0.012351196959440654 30 0.98726084486842502
		3 0 0.0001713275138182336 29 0.0071184455490095498 30 0.99271022693717226
		3 0 8.5697216553926202e-05 29 0.0048780056398793972 30 0.99503629714356667
		3 0 0.0004429810861575041 29 0.013625943878045764 30 0.98593107503579669
		3 0 0.00024120609917100094 29 0.0088078080101354206 30 0.99095098589069353
		3 0 0.00010891269728161091 29 0.0054715178860141305 30 0.99441956941670429
		3 0 0.0004574352196976351 29 0.013981397349976507 30 0.98556116743032585
		3 0 0.00025065048756330938 29 0.0090679811899435376 30 0.99068136832249309
		3 0 0.00011356062494000521 29 0.0056245185334202015 30 0.99426192084163989
		3 0 8.695861659980354e-05 29 0.0048269111251459211 30 0.99508613025825421
		3 0 0.00013257926924769404 29 0.0061847703338329795 30 0.99368265039691928
		3 0 0.00024956598984918654 29 0.0094275046673436974 30 0.99032292934280719
		3 0 0.00033841008901456312 29 0.011771210698301829 30 0.98789037921268363
		3 0 0.00025377517913104136 29 0.0095512542642499903 30 0.99019497055661887
		3 0 0.00011871811995462236 29 0.0058103968103372502 30 0.99407088506970809
		3 0 6.7896819766072436e-05 29 0.0043003519479811935 30 0.99563175123225278
		3 0 0.00028520199262714688 29 0.01035197465852006 30 0.98936282334885273
		3 0 0.00015549113832483491 29 0.0067652352983129001 30 0.99307927356336223
		3 0 7.7292361930493244e-05 29 0.004508777804904089 30 0.99541392983316546
		3 0 0.00029143780256036573 29 0.01063006000115215 30 0.98907850219628746
		3 0 0.00016195013704000348 29 0.0070775241833453051 30 0.9927605256796147
		3 0 8.2538582682187915e-05 29 0.004776891292683107 30 0.99514057012463475
		3 6 0.048092862124027538 7 0.95188260883067954 10 2.452904529297316e-05
		3 6 0.074543514017790719 7 0.92540036260831504 10 5.6123373894387976e-05
		3 6 0.12587299658743381 7 0.87398143869634404 10 0.00014556471622213338
		3 6 0.16143373657271298 7 0.83834486437395361 10 0.00022139905333352669
		3 6 0.12628333006943437 7 0.87356820287128611 10 0.00014846705927955815
		3 6 0.063300831270257513 7 0.93665360242403661 10 4.5566305705843937e-05
		3 6 0.033634370453050365 7 0.96635481811959001 10 1.0811427359500592e-05
		3 6 0.14393632733240275 7 0.85588731648689331 10 0.00017635618070408602
		3 6 0.086576334386668202 7 0.91334686292796274 10 7.6802685369063383e-05
		3 6 0.04361016667914535 7 0.95637017271120772 10 1.9660609647137787e-05
		3 6 0.13920301288631468 7 0.86062406058545404 10 0.00017292652823114589
		3 6 0.082534551746531917 7 0.91739069742029267 10 7.4750833175550227e-05
		3 6 0.04069029776129357 7 0.95929096663407731 10 1.8735604629082613e-05
		3 6 0.034854531769588304 7 0.9651193883771686 10 2.6079853243133088e-05
		3 6 0.049430192343067253 7 0.95051405236279329 8 5.5755294139329237e-05
		3 6 0.071808567872357523 7 0.92806261800238421 8 0.00012881412525825856
		3 6 0.085487830818450017 7 0.9143302131000407 8 0.00018195608150931193
		3 6 0.069182909394513062 7 0.93069205919287257 8 0.00012503141261435658
		3 6 0.038644472971754912 7 0.96131545163615983 8 4.0075392085245725e-05
		3 6 0.022848687033524797 7 0.97714123224708627 10 1.0080719388793061e-05
		3 6 0.080763042808056879 7 0.91908355017792742 8 0.00015340701401575624
		3 6 0.05447730858377927 7 0.94545193102504221 8 7.076039117855215e-05
		3 6 0.031468921028222518 7 0.9685106529708738 10 2.0426000903641041e-05
		3 6 0.074428501774627218 7 0.9254246876179647 8 0.00014681060740807936
		3 6 0.048410924887809202 7 0.95152235866031543 8 6.6716451875323783e-05
		3 6 0.026779837141882402 7 0.97320243144944663 8 1.7731408670969373e-05
		3 6 0.029613917866982416 7 0.97036295865183153 8 2.3123481186191185e-05
		3 6 0.041184836404417495 7 0.95876648692418076 8 4.8676671401719099e-05
		3 6 0.053713979033720417 7 0.94617459925872993 8 0.00011142170754959056
		3 6 0.059880225674081744 7 0.93996201565723991 8 0.00015775866867829958
		2 6 0.047679198349027584 7 0.95221388517963568;
	setAttr ".wl[166:333].w"
		1 8 0.00010691647133675635
		3 6 0.027246758530301889 7 0.97271935965092993 8 3.3881818768240269e-05
		3 6 0.016360646028741332 7 0.98363077678841293 8 8.5771828456005338e-06
		3 6 0.056136685251064466 7 0.94373344144393823 8 0.00012987330499729093
		3 6 0.040512242987835637 7 0.95942780913483172 8 5.9947877332463155e-05
		3 6 0.024084038755938744 7 0.97589868432294347 8 1.7276921117680291e-05
		3 6 0.053833586438278548 7 0.94603794646925299 8 0.00012846709246852654
		3 6 0.037406435090439387 7 0.96253552293927414 8 5.8041970286461795e-05
		3 6 0.021067478624085641 7 0.97891701904343409 8 1.5502332480327231e-05
		3 3 0.80702928422419307 4 0.1119439649145187 10 0.081026750861288174
		3 6 0.28137808581971313 10 0.39102551815270398 11 0.32759639602758278
		3 6 0.28229590128134863 10 0.49081670057886523 11 0.22688739813978617
		3 3 0.22130273194572742 6 0.26833869723905701 10 0.51035857081521563
		3 3 0.56115054576597456 4 0.39180332860095546 10 0.047046125633069986
		3 3 0.27776308489421303 4 0.71485509882275922 10 0.0073818162830276641
		3 2 0.14776730320055112 3 0.75663119537875745 10 0.095601501420691376
		3 6 0.31839060572983358 10 0.50576327851216463 11 0.17584611575800191
		3 1 0.23315933113369794 2 0.53315440535473535 3 0.23368626351156677
		3 1 0.7361253501092041 2 0.21780985097220917 14 0.046064798918586586
		3 0 0.45530739050597313 1 0.36248384809878603 25 0.18220876139524081
		3 1 0.44611935694932603 25 0.27781231436194009 29 0.27606832868873371
		3 1 0.7901691158148727 2 0.053882436451560461 14 0.15594844773356681
		3 6 0.26792484764921831 10 0.35954711138428214 11 0.37252804096649961
		3 1 0.49007954857660185 2 0.43227366263295292 3 0.077646788790445287
		3 0 0.33001389099817025 1 0.38350942716823905 2 0.28647668183359071
		3 1 0.066599560892866269 2 0.41597436013137074 3 0.51742607897576309
		3 3 0.15125039560934306 10 0.74410911783130107 11 0.10464048655935598
		3 3 0.28944606310051296 4 0.30015466051408757 10 0.41039927638539941
		3 3 0.57950236964952861 4 0.22416994886860014 10 0.19632768148187107
		3 3 0.35505524586195741 4 0.60776846099880011 10 0.03717629313924236
		3 3 0.73559006940578664 4 0.037057814347606598 10 0.2273521162466067
		3 6 0.089504803170661409 10 0.66055445070793595 11 0.24994074612140252
		3 2 0.071269139255426606 3 0.54818140996035469 10 0.38054945078421865
		3 3 0.22630591545797696 10 0.64889455027509757 11 0.12479953426692561
		3 1 0.1651333242341293 2 0.4692468732426523 3 0.36561980252321841
		3 2 0.36756159176730319 3 0.42991162225175961 10 0.20252678598093712
		3 1 0.57214287492974669 2 0.25110454183738484 25 0.17675258323286852
		3 0 0.27363811791390946 1 0.38130871813954936 25 0.34505316394654123
		3 1 0.38536544394799727 21 0.089780560959343766 25 0.52485399509265906
		3 1 0.79734779712644333 2 0.081638852197173525 14 0.12101335067638312
		3 3 0.25666187813745306 4 0.18589146761195433 10 0.55744665425059248
		3 6 0.0072513090260185129 10 0.42181786927113324 11 0.57093082170284837
		3 3 0.3527018329786632 4 0.39706662702015488 10 0.25023154000118192
		3 2 0.044872868000113746 3 0.3199783660116467 10 0.63514876598823955
		3 3 0.26728582918073096 4 0.050515388354357947 10 0.68219878246491117
		3 3 0.41129925795637862 4 0.076728542131532435 10 0.51197219991208887
		3 3 0.33057951752059483 4 0.0026487385337157377 10 0.6667717439456895
		3 2 0.0074645835375681665 3 0.52283806271525735 10 0.46969735374717464
		3 3 0.50461525612056846 4 0.033985651583263915 10 0.4613990922961676
		3 3 0.24310007944507475 4 0.011069104102067387 10 0.74583081645285776
		3 3 0.37593013297583783 4 0.21435157489715695 10 0.40971829212700517
		3 6 0.080242665189604614 10 0.38437629803770473 11 0.53538103677269056
		3 6 0.00032616045331734008 10 0.31753863602838206 11 0.68213520351830059
		3 6 0.11753001485034344 10 0.3636401645235145 11 0.51882982062614191
		3 3 0.035632269785273694 10 0.88935424959601539 11 0.075013480618710868
		3 3 0.026737822702375659 10 0.90937842122031309 11 0.063883756077311282
		3 3 0.021096175139805575 10 0.85753359525916373 11 0.12137022960103079
		3 6 0.0021373451464797772 10 0.45737869563830108 11 0.54048395921521919
		3 6 0.021669096890404475 10 0.48299573985588784 11 0.49533516325370774
		3 6 0.12766128015463557 10 0.31100555617752884 11 0.56133316366783548
		3 3 0.00845280481631136 10 0.72915655329325479 11 0.2623906418904341
		3 6 0.011385485762469394 10 0.73737941368951265 11 0.25123510054801795
		3 3 0.0017765864400068779 10 0.60941670255606684 11 0.38880671100392628
		3 6 0.0053275407031974902 10 0.087301302382864418 11 0.9073711569139381
		3 6 0.0020752776663552587 10 0.090914766705351271 11 0.90700995562829356
		3 6 3.2959263980429402e-06 10 0.035084970125458803 11 0.96491173394814322
		3 10 0.067889842220391169 11 0.93210713205833584 12 3.0257212731583715e-06
		3 6 0.0017190458688148347 10 0.048292093559883301 11 0.94998886057130194
		3 10 0.024965846383212347 11 0.97503155708177403 12 2.5965350136842196e-06
		3 6 0.00059527287741817998 10 0.14362758762360853 11 0.85577713949897338
		3 6 0.0011854152803811935 10 0.054840119211572634 11 0.9439744655080462
		3 11 0.98988988357652574 12 0.0087896518845754883 13 0.0013204645388985728
		3 11 0.99815652589655601 12 0.0015213826399583638 13 0.00032209146348558909
		3 11 0.98852831300254984 12 0.010331938753451439 13 0.0011397482439987265
		3 11 0.99106036764368655 12 0.0075964589323891125 13 0.0013431734239243067
		3 11 0.99292047059666499 12 0.0060453667331332945 13 0.0010341626702016265
		3 11 0.98143541063586104 12 0.016231560475938264 13 0.0023330288882007044
		3 11 0.99452835675658213 12 0.0045964370572934669 13 0.00087520618612436072
		3 11 0.99123104734473066 12 0.0077968965647534222 13 0.00097205609051606719
		3 11 0.09389684026215861 12 0.83056725649991192 13 0.07553590323792933
		3 11 0.10628756689957745 12 0.78743350157032543 13 0.10627893153009711
		3 11 0.045431296062873619 12 0.8706604065889344 13 0.083908297348192176
		3 11 0.051481530332477626 12 0.83509833983735127 13 0.11342012983017127
		3 11 0.037632277177238674 12 0.8633393361272983 13 0.099028386695463086
		3 11 0.027096036100383036 12 0.87293107005479564 13 0.099972893844821414
		3 11 0.071140747588350844 12 0.81173357692497794 13 0.11712567548667126
		3 11 0.071426868821384951 12 0.85644914574020214 13 0.072123985438412988
		3 11 2.2669984197865871e-05 12 0.78163215861759738 13 0.21834517139820478
		3 11 3.1110441850258553e-06 12 0.73447131409214417 13 0.26552557486367101
		3 11 2.2331154329818622e-05 12 0.76204592394247483 13 0.23793174490319541
		3 11 3.710713036639535e-06 12 0.73010184798934241 13 0.26989444129762086
		3 11 7.0055033276793958e-06 12 0.75858189038092705 13 0.24141110411574523
		3 11 3.0786653846926912e-05 12 0.77330000711382973 13 0.22666920623232328
		3 11 1.9235203188750165e-06 12 0.71721691778658125 13 0.2827811586931
		3 11 2.8729178094272804e-05 12 0.79867707127336307 13 0.20129419954854258
		3 11 6.6817518520420496e-05 12 0.83975878088944911 13 0.1601744015920305
		3 11 9.9767341434669948e-05 12 0.81821365857872497 13 0.18168657407984035
		3 11 4.0261096096442157e-05 12 0.79152988839084959 13 0.20842985051305388
		3 11 9.3660422889853863e-06 12 0.74692967433221058 13 0.25306095962550046
		3 11 6.482884001683598e-06 12 0.73188738822228272 13 0.26810612889371555
		3 11 1.6250440124309622e-05 12 0.7596930128043603 13 0.24029073675551549
		3 11 3.8144904678804973e-05 12 0.82297699444886996 13 0.1769848606464513
		3 11 0.00010456372212355427 12 0.83083141078046718 13 0.16906402549740937
		3 11 6.6943029864191252e-05 12 0.80860060478375095 13 0.19133245218638478
		3 6 0.057129233142679856 10 0.60314890129246845 11 0.33972186556485173
		3 1 0.39105512727960862 2 0.069463891537701827 25 0.5394809811826895
		3 1 0.64888862988795293 2 0.095730834586872066 25 0.25538053552517498
		3 1 0.64119086574058681 14 0.10786023875501471 25 0.25094889550439847
		3 0 0.0045651566809521609 1 0.004569709390212731 25 0.99086513392883513
		3 0 0.031206992493173914 1 0.028855659162108697 25 0.93993734834471732
		3 0 0.028792671521493549 1 0.12413153315799835 25 0.84707579532050803
		3 1 0.0555494160307081 21 0.014967470442269926 25 0.92948311352702206
		3 0 0.025665393016111926 1 0.020665318519232756 25 0.95366928846465537
		3 0 0.012540757033796401 1 0.01124552886576155 25 0.976213714100442
		3 0 0.0012487717958509614 1 0.00095132455839593011 25 0.99779990364575322
		3 0 0.00025422128003868723 1 0.00021530576209305457 25 0.99953047295786823
		3 0 0.005447287876335867 1 0.004870011324911017 25 0.98968270079875298
		3 0 0.0069267009833000673 1 0.0062434554984273517 25 0.98682984351827241
		3 0 0.0038181858552540182 1 0.0034479167366212047 25 0.9927338974081249
		3 0 0.004070380091888837 1 0.0036883887394292439 25 0.9922412311686819
		3 0 0.020024536205630435 1 0.018340655893537144 25 0.96163480790083256
		3 0 0.020691406668558621 1 0.018955057757207294 25 0.96035353557423409
		3 0 0.016646576880102772 1 0.01523518917663098 25 0.96811823394326635
		3 0 0.018812565536219239 1 0.017239278757456553 25 0.96394815570632419
		3 0 0.038208398997662103 1 0.035448419748649047 25 0.92634318125368886
		3 0 0.035753460013310319 1 0.033121269304120335 25 0.93112527068256945
		3 0 0.035765295660383174 1 0.033192764418675337 25 0.93104193992094153
		3 0 0.033767790450792867 1 0.031294447931632864 25 0.93493776161757414
		3 0 0.22960410731171085 1 0.16778157698889365 25 0.60261431569939539
		3 0 0.11352273845330235 1 0.10369213653190205 25 0.78278512501479558
		3 0 0.27004888214536704 1 0.18974316172965272 25 0.54020795612498018
		3 0 0.066606110071636429 1 0.082659031016211512 25 0.85073485891215206
		3 0 0.0045678064489919259 1 0.0043623568573592439 25 0.99106983669364879
		3 0 0.03999717881309954 1 0.029311173530438626 25 0.93069164765646173
		3 0 0.008435919875481087 1 0.0076553318851057808 25 0.98390874823941321
		3 0 0.0030067386309749183 1 0.0026437882571490293 25 0.99434947311187594
		3 0 0.020870803641383936 1 0.019132955440982806 25 0.95999624091763325
		3 0 0.016055813733042396 1 0.014666454843530553 25 0.9692777314234271
		3 0 0.032866728577530313 1 0.030408967792790856 25 0.93672430362967884
		3 0 0.039945826156667079 1 0.037113817501920013 25 0.92294035634141292
		3 0 0.048959737858114784 1 0.045648148985588125 25 0.90539211315629697
		3 0 0.044973020055548589 1 0.041852797454850703 25 0.91317418248960081
		3 0 0.04696967542679141 1 0.043802128387728428 25 0.90922819618548012
		3 0 0.04499354905728796 1 0.041922433050287491 25 0.91308401789242466
		3 0 0.045301129503775461 1 0.042172518921597305 25 0.91252635157462714
		3 0 0.041156835004034178 1 0.038229031391731776 25 0.92061413360423394
		3 0 0.047506637939714241 1 0.044260001394311424 25 0.90823336066597427
		3 0 0.040692848693491997 1 0.037843603734454168 25 0.92146354757205373
		3 0 0.044140219394032384 1 0.041075968867064806 25 0.914783811738903
		3 0 0.042967330239115545 1 0.040012216884930667 25 0.9170204528759538
		3 0 0.046009037508005127 1 0.042895167460626785 25 0.91109579503136806
		3 0 0.049717005591644138 1 0.046376546092965494 25 0.90390644831539035
		3 0 0.048131789629779008 1 0.044867564744646565 25 0.90700064562557436
		3 0 0.047280145261190114 1 0.044066843829227723 25 0.90865301090958206
		3 0 0.042763204109130357 1 0.039817818763366791 25 0.91741897712750264
		3 0 0.039520560771925915 1 0.036693308008592704 25 0.92378613121948139
		3 0 0.044203905635300945 1 0.041120324983546258 25 0.91467576938115291
		3 3 0.1734617912408265 10 0.78265504072734493 11 0.043883168031828568
		3 3 0.12134404435764792 10 0.86167134325939765 11 0.016984612382954508
		3 3 0.078135793123716671 10 0.89506602683368541 11 0.026798180042598003
		3 3 0.12474632783108136 10 0.86129464998347705 11 0.013959022185441599
		3 3 0.35022447937595752 4 0.28993648241700937 10 0.35983903820703322
		3 3 0.37680038048340075 4 0.47405401140293441 10 0.14914560811366478
		3 3 0.018812185963928453 10 0.89448688621921757 11 0.086700927816854081
		3 3 0.089885441920408038 10 0.89323833355177662 11 0.01687622452781545
		3 2 0.0055515474981108932 3 0.29475659475666327 10 0.6996918577452258
		3 3 0.061445200712622716 10 0.84757540319569069 11 0.090979396091686635
		1 3 0.063313660922519263;
	setAttr ".wl[333:499].w"
		2 10 0.90305497077755759 11 0.033631368299922984
		3 2 0.010982649590925622 3 0.2167036924248531 10 0.77231365798422125
		3 0 0.026178280552343145 1 0.027425074128563987 25 0.94639664531909296
		3 0 0.044637230681996022 1 0.040367315655550615 25 0.91499545366245338
		3 0 0.093694964911719122 1 0.072908626006685698 25 0.83339640908159507
		3 0 0.13328268170976246 1 0.094309197135580405 25 0.77240812115465707
		3 0 0.0088170981179736072 1 0.0066224072571433338 25 0.98456049462488315
		3 0 0.00079074153786044875 1 0.00061788368364144375 25 0.99859137477849813
		3 0 0.00053242149656741451 1 0.00047196007150688668 25 0.99899561843192553
		3 0 0.00061618577742466761 1 0.00052929202167717102 25 0.99885452220089821
		3 0 0.0076516643732920534 1 0.0059228484081756509 25 0.98642548721853218
		3 0 0.005815992269489716 1 0.0047506681925221974 25 0.98943333953798818
		3 0 0.003835461772356268 1 0.0032640915876413078 25 0.99290044664000243
		3 0 0.0019651218957334711 1 0.0017322994438573407 25 0.99630257866040928
		3 0 0.024110950378089364 1 0.022165924712319228 25 0.95372312490959144
		3 0 0.023675356541491242 1 0.021752286580920745 25 0.95457235687758812
		3 0 0.022653723310339585 1 0.020799640020683071 25 0.95654663666897743
		3 0 0.021557303225046252 1 0.019796297374949069 25 0.95864639940000484
		3 0 0.020338335795507232 1 0.018672654886511705 25 0.96098900931798092
		3 0 0.022553510381530192 1 0.020727172747239085 25 0.95671931687123068
		3 0 0.011942676854656059 1 0.010858423363303562 25 0.97719889978204033
		3 0 0.013004973180216987 1 0.01186754071591504 25 0.97512748610386801
		3 0 0.015102659168391453 1 0.013807634766762611 25 0.9710897060648459
		3 0 0.018796135708204036 1 0.017199485355008769 25 0.96400437893678714
		3 0 0.017975368251605079 1 0.016427512918380367 25 0.96559711883001442
		3 0 0.014925458688666413 1 0.013601261964794005 25 0.97147327934653971
		3 11 0.010835199806770526 12 0.87325799732185572 13 0.11590680287137373
		3 11 0.0071652933133264487 12 0.87067763874762127 13 0.12215706793905226
		3 11 0.010571627840593227 12 0.859787531888347 13 0.12964084027105985
		3 11 0.0088812311502213196 12 0.86193835077977132 13 0.12918041807000746
		3 11 0.0045565064667242375 12 0.86884082718546385 13 0.126602666347812
		3 11 0.0040957470042535899 12 0.88112563770267005 13 0.11477861529307642
		3 11 0.0037855513815267449 12 0.87651091525835412 13 0.1197035333601192
		3 11 0.0065223194308524201 12 0.86408391433194653 13 0.12939376623720092
		3 11 0.28459556884827353 12 0.66549830510678742 13 0.049906126044938992
		3 11 0.23901340518465591 12 0.70145133555626382 13 0.059535259259080195
		3 11 0.14832866709918405 12 0.76426346649171983 13 0.087407866409095925
		3 11 0.24187918661340829 12 0.66312471723851973 13 0.094996096148072043
		3 11 0.28705728339761316 12 0.62071520036078809 13 0.092227516241598792
		3 11 0.39285465109287904 12 0.53298054425688124 13 0.074164804650239793
		3 11 0.19863114327143136 12 0.72196595329591362 13 0.079402903432655048
		3 11 0.3900210184309022 12 0.56057081956363741 13 0.049408162005460318
		3 10 0.014820566406546429 11 0.9851717516257279 12 7.6819677256965178e-06
		3 10 0.0041527392077732525 11 0.99584063476998907 12 6.6260222377280297e-06
		3 10 0.0037507085228007282 11 0.99624628218691968 12 3.0092902795480055e-06
		3 10 0.0056914633852513255 11 0.9943062742260087 12 2.2623887400138701e-06
		3 10 0.013055616135386456 11 0.98693923464051536 12 5.1492240981158366e-06
		3 10 0.0087595570713296569 11 0.99122995309943485 12 1.0489829235429191e-05
		3 10 0.025618073785040402 11 0.97437328850378713 12 8.6377111723668599e-06
		3 10 0.035521461338746861 11 0.96447048405063029 12 8.0546106230128732e-06
		3 6 0.0023026676027755257 10 0.2970749224459171 11 0.7006224099513072
		3 6 0.012478264057684407 10 0.25407734297796569 11 0.73344439296434982
		3 6 0.025469273468328973 10 0.17814130833325628 11 0.79638941819841491
		3 6 0.038745063309826987 10 0.20119551879423853 11 0.76005941789593456
		3 6 0.019217259239280506 10 0.22579879258501184 11 0.75498394817570769
		3 6 0.001469998411854718 10 0.15177176580076476 11 0.84675823578738052
		3 3 3.1401903820313784e-06 10 0.11039445043178212 11 0.88960240937783586
		3 3 5.9003541498603744e-06 10 0.21749612573773722 11 0.78249797390811293
		3 1 0.4110612290132068 2 0.4661804871804906 3 0.1227582838063027
		3 0 0.24759669627812658 1 0.39729198554441536 2 0.355111318177458
		3 2 0.30458658843225855 3 0.57872216703444135 10 0.11669124453330008
		3 2 0.2269063672200903 3 0.41607562090669414 10 0.35701801187321552
		3 2 0.1895622843201738 3 0.43299600519241205 10 0.37744171048741409
		3 0 0.074783418262834342 1 0.18968342238111605 25 0.73553315935604968
		3 0 0.01135157015247046 1 0.019685893913835361 25 0.96896253593369419
		3 0 0.060712051842310169 1 0.093014094598211403 25 0.84627385355947837
		3 0 0.35517404468072117 1 0.27968649737885837 25 0.36513945794042041
		3 0 0.37717986821034993 1 0.25656291965416045 25 0.36625721213548951
		3 0 0.23803910819380622 1 0.23533790524451023 25 0.52662298656168349
		3 0 0.0040180091596987121 1 0.0036123352258170586 25 0.99236965561448442
		3 0 0.0016320035988530786 1 0.0014688429579959084 25 0.99689915344315094
		3 0 0.0014124130991690579 1 0.0012561633135141654 25 0.99733142358731675
		3 0 0.002626932389992149 1 0.0021890975330029019 25 0.99518397007700488
		3 0 0.0033205484505204729 1 0.0028529766244719487 25 0.99382647492500764
		3 0 0.0038748831030527165 1 0.0034289475546608293 25 0.99269616934228644
		3 0 0.015124698743109686 1 0.013806799830180013 25 0.97106850142671031
		3 0 0.010603545122727912 1 0.0096681295816541443 25 0.97972832529561793
		3 0 0.0085010157400751424 1 0.0077282123926206044 25 0.98377077186730422
		3 0 0.0068689155808047643 1 0.0061964471333819321 25 0.9869346372858131
		3 0 0.0098627581922057627 1 0.0089307886600821264 25 0.98120645314771215
		3 0 0.012273180400778407 1 0.011158205696700264 25 0.97656861390252125
		3 0 0.026827168287941055 1 0.02472331880168379 25 0.94844951291037527
		3 0 0.026410365054937417 1 0.024357939607584388 25 0.9492316953374782
		3 0 0.026675219022921772 1 0.024620418078941945 25 0.94870436289813642
		3 0 0.031255739166480424 1 0.02890462610542166 25 0.93983963472809795
		3 0 0.029855870359950867 1 0.027569021426757691 25 0.94257510821329138
		3 0 0.029228845805752066 1 0.02697276285637519 25 0.94379839133787291
		3 10 0.00078458158889746022 11 0.9992023939299346 12 1.3024481167939408e-05
		3 10 0.001644896548867272 11 0.99833737635908437 12 1.7727092048261776e-05
		3 10 0.0060513988776600943 11 0.99393208625278473 12 1.6514869555036552e-05
		3 10 0.0048182658031066493 11 0.99516248247119143 12 1.9251725701833257e-05
		3 10 0.0019285208348063492 11 0.9980538200465896 12 1.7659118604026165e-05
		3 10 0.00068140703386779071 11 0.99930631797960479 12 1.2274986527317236e-05
		3 10 0.00021838143014195745 11 0.99977380349617329 12 7.8150736846852376e-06
		3 10 0.00029754197012237411 11 0.99969463329371522 12 7.8247361624292775e-06
		3 11 0.7755415563585768 12 0.20424162779849631 13 0.020216815842926991
		3 11 0.70597664969885954 12 0.27163585108233179 13 0.022387499218808705
		3 11 0.6157306421558012 12 0.35327981217310672 13 0.030989545671091998
		3 11 0.59018535086970636 12 0.36523403991666448 13 0.044580609213629059
		3 11 0.67421414161710369 12 0.28260145700150674 13 0.043184401381389528
		3 11 0.72350365411469164 12 0.23905447589874448 13 0.037441869986563944
		3 11 0.81159908523938595 12 0.16374690753999646 13 0.024654007220617596
		3 11 0.66077290393385757 12 0.30297009157576582 13 0.036257004490376575
		3 1 0.40915509815116419 2 0.20288375740474809 25 0.38796114444408775
		3 1 0.41383249155853541 2 0.40216686439491567 25 0.18400064404654895
		3 1 0.15924384678501349 2 0.39808561272068327 3 0.4426705404943031
		3 3 0.38307497395852069 4 0.51034995557483187 10 0.10657507046664728
		3 2 0.28249397900918383 3 0.37960673388175992 10 0.33789928710905631
		3 1 0.22134668520580539 2 0.45077887843708608 3 0.32787443635710845
		3 3 0.025665346598335491 10 0.82624316903879924 11 0.14809148436286526
		3 3 0.080011128142907312 10 0.87852319761524311 11 0.041465674241849632
		3 3 0.19658955974301168 4 0.051923520960748738 10 0.75148691929623956
		3 3 0.066176707023515954 10 0.82832222393577226 11 0.10550106904071183
		3 3 0.15700584397488279 4 0.056266835574388767 10 0.78672732045072857
		3 3 0.26374260646688136 4 0.128021852335203 10 0.60823554119791556
		3 11 0.92782595268526091 12 0.063182824740585036 13 0.0089912225741540022
		3 11 0.97115909152869229 12 0.024645292111781909 13 0.0041956163595258103
		3 11 0.94210623323297438 12 0.049589174190948326 13 0.0083045925760773451
		3 11 0.92083342725010209 12 0.068079544796567429 13 0.011087027953330331
		3 11 0.88574840528801624 12 0.099829957797327215 13 0.01442163691465663
		3 11 0.88408379033313145 12 0.10483091467897998 13 0.011085294987888605
		3 11 0.93277869399286628 12 0.061304525706452895 13 0.0059167803006807624
		3 11 0.9256248092661824 12 0.066293701767754787 13 0.0080814889660629722
		3 11 0.9996821534873731 12 0.00025482485570530838 13 6.3021656921561858e-05
		3 11 0.99973074731482503 12 0.00021543007863892219 13 5.3822606536232739e-05
		3 11 0.99980568383975299 12 0.00015350165768022748 13 4.0814502566882898e-05
		3 10 6.3751724457695148e-05 11 0.99972573586185975 12 0.00021051241368238744
		3 10 0.00027442399090816746 11 0.99953121814238666 12 0.00019435786670522249
		3 10 0.0005778387831936381 11 0.99927968151709856 12 0.00014247969970769957
		3 10 0.00087717148347859521 11 0.99905968940231804 12 6.3139114203402709e-05
		3 10 0.0001685122208119446 11 0.99965839238933163 12 0.00017309538985639086
		3 0 0.10702192484085622 1 0.24602327485089642 25 0.64695480030824737
		3 0 0.2049862291451636 1 0.21258500235472286 25 0.58242876850011371
		3 0 0.12458549802038076 1 0.10005948482556958 25 0.77535501715404964
		3 0 0.047815704928247847 1 0.034573747510698749 25 0.91761054756105342
		3 0 0.010229988538060095 1 0.0074332086986365863 25 0.98233680276330326
		3 0 0.0018317852153226753 1 0.0014792617083451594 25 0.9966889530763321
		3 0 0.0015676211535585762 1 0.0013581571319899702 25 0.99707422171445148
		3 0 0.0030613382347214092 1 0.0027404527346692924 25 0.99419820903060929
		3 0 0.0075668702337340346 1 0.0068581213189265675 25 0.98557500844733947
		3 0 0.012060638911500459 1 0.010982063333059663 25 0.97695729775543982
		3 0 0.015822040847112754 1 0.014464772591795438 25 0.96971318656109184
		3 0 0.02003372915499009 1 0.018387149802847155 25 0.9615791210421627
		3 0 0.027783863947201941 1 0.02565613170216241 25 0.94656000435063559
		3 0 0.036470854842052688 1 0.033847466954433657 25 0.92968167820351355
		3 0 0.044613012089371816 1 0.041557075928669522 25 0.91382991198195862
		3 0 0.048538943854346935 1 0.045272508598867334 25 0.90618854754678568
		3 0 0.047485500959193419 1 0.044279848619882739 25 0.90823465042092388
		3 0 0.044779184681681995 1 0.041700681134945343 25 0.91352013418337252
		3 0 0.039837896354022753 1 0.037014853180506228 25 0.92314725046547086
		3 0 0.033557277090948336 1 0.031077530811049504 25 0.93536519209800217
		3 0 0.028185702930761676 1 0.026013023553363927 25 0.94580127351587429
		3 0 0.023202382746866413 1 0.021328465871056936 25 0.95546915138207655
		3 0 0.020082224191630742 1 0.018407890700163822 25 0.96150988510820534
		3 0 0.017064987666452838 1 0.015610775834245222 25 0.96732423649930199
		3 0 0.012717119337519496 1 0.011605921132638426 25 0.97567695952984212
		3 0 0.0059249322937001388 1 0.0053773524597196011 25 0.98869771524658023
		3 0 0.0021761842705505033 1 0.0019599047982396629 25 0.99586391093120996
		3 0 0.0008569263965309109 1 0.00076619055560785034 25 0.99837688304786132
		3 0 0.00065088965088237337 1 0.00057424151493752802 25 0.9987748688341801
		3 0 0.0039013246175909648 1 0.0041212249028265719 25 0.99197745047958252
		3 0 0.012574990175448672 1 0.017026665443580044 25 0.97039834438097139
		3 1 0.049432414529434525 21 0.025655943321294849 25 0.92491164214927046
		3 1 0.14694718175684407 21 0.051833591707650076 25 0.80121922653550581
		3 1 0.15537366372552883 21 0.022160167185269634 25 0.82246616908920145
		3 1 0.23931869579481252 2 0.048376141035218277 25 0.71230516316996939
		3 3 0.11832387351685653 6 0.69668123581047381 10 0.18499489067266969;
	setAttr ".wl[500:666].w"
		3 3 0.29444567587430981 4 0.32573783909915055 6 0.37981648502653964
		3 3 0.49336996204517364 4 0.23684306810599923 6 0.26978696984882705
		3 3 0.34681367299302218 4 0.61176208389253761 6 0.041424243114440283
		3 3 0.59365393752633477 4 0.039550796745696642 6 0.36679526572796861
		3 6 0.64623512362722402 7 0.25005447536293224 10 0.10371040100984381
		3 2 0.080842485322207586 3 0.4322028246761519 6 0.48695469000164038
		3 3 0.20441369501203133 6 0.66675071849457435 10 0.12883558649339449
		3 1 0.20914082417271238 2 0.50708390163657446 3 0.28377527419071324
		3 1 0.23056816795565252 2 0.44130294048640861 3 0.32812889155793884
		3 1 0.60909576351382488 2 0.25053608393669058 29 0.14036815254948456
		3 0 0.29725785802541987 1 0.4225622224481963 29 0.28017991952638394
		3 1 0.41170428976152795 14 0.055086493628671761 29 0.53320921660980025
		3 1 0.7689555344929544 2 0.071383528724360823 14 0.15966093678268481
		3 3 0.21190576185607005 4 0.21510033691545472 6 0.57299390122847516
		3 6 0.40862788547700518 7 0.58060509849031805 10 0.010767016032676624
		3 3 0.35469547306823201 4 0.41462092688168051 6 0.23068360005008745
		3 2 0.056676528829901165 3 0.25140705825281351 6 0.69191641291728545
		3 3 0.1233982720826069 4 0.078263080172758959 6 0.79833864774463414
		3 3 0.23821201236808373 4 0.10219708790154007 6 0.65959089973037621
		3 3 0.11719183384852327 4 0.0040880698452788735 6 0.87872009630619785
		3 2 0.0095719615323882137 3 0.29590817927350266 6 0.6945198591941093
		3 3 0.28501776495633158 4 0.041288523362495201 6 0.67369371168117309
		3 3 0.07724874384468508 4 0.020240210552756703 6 0.90251104560255824
		3 3 0.29431295893227782 4 0.25113121349610684 6 0.45455582757161528
		3 6 0.37549741590622049 7 0.55052317832166697 10 0.073979405772112594
		3 6 0.28639846321147133 7 0.71309967289283882 10 0.00050186389568979866
		3 6 0.33382291297819683 7 0.5157133740315657 10 0.15046371299023739
		3 3 0.0038491817984063112 6 0.92559969794036745 7 0.070551120261226202
		3 3 0.0039520059847234709 6 0.93243941805544917 7 0.06360857595982726
		3 3 0.0011410943192508118 6 0.8806364728365772 7 0.11822243284417186
		3 6 0.41995861785912192 7 0.57890570705848432 10 0.0011356750823938904
		3 6 0.45627603387444737 7 0.52782351229192226 10 0.015900453833630382
		3 6 0.30566785396865204 7 0.56282212522371433 10 0.13151002080763377
		3 6 0.73155360374269007 7 0.25708593083530779 10 0.011360465422001999
		3 6 0.72808765198285985 7 0.26252529095410637 10 0.0093870570630338653
		3 6 0.59726419570611577 7 0.40121667731763982 10 0.0015191269762444379
		3 6 0.087152824941969811 7 0.90907268820634568 10 0.0037744868516845142
		3 6 0.075799255692688638 7 0.92337929728259027 10 0.00082144702472122821
		3 6 0.028293251514176606 7 0.97170268635824197 10 4.0621275812643417e-06
		3 6 0.047368290665867757 7 0.95262984665903649 8 1.8626750956323158e-06
		3 6 0.04601587758297912 7 0.95324709884631564 10 0.00073702357070518098
		3 6 0.017420604900541415 7 0.98257744688838977 8 1.9482110687605523e-06
		3 6 0.10850967810519298 7 0.89130291232183678 10 0.00018740957297008916
		3 6 0.051534543700483597 7 0.94716930443018621 10 0.0012961518693300749
		3 7 0.99076118179551098 8 0.0080615794795038023 9 0.0011772387249852495
		3 7 0.99850547144179591 8 0.001233086983038287 9 0.00026144157516590748
		3 7 0.98899803350329996 8 0.0099672001537759822 9 0.0010347663429240686
		3 7 0.99179402254580773 8 0.0069793742168983864 9 0.0012266032372938772
		3 7 0.99368591156164465 8 0.0054025435011680299 9 0.00091154493718734132
		3 7 0.98220526184215684 8 0.015626790421095917 9 0.0021679477367470392
		3 7 0.99517316078644669 8 0.0040538616429037578 9 0.00077297757064949185
		3 7 0.99187140586535238 8 0.0072738821196207601 9 0.00085471201502696317
		3 7 0.094860439540339972 8 0.8285391071338073 9 0.076600453325852844
		3 7 0.10764531881345313 8 0.78499424823775776 9 0.10736043294878916
		3 7 0.045798719416684411 8 0.86220331706030373 9 0.091997963523011983
		3 7 0.05194944802221526 8 0.83684049178495901 9 0.1112100601928258
		3 7 0.038351413837190922 8 0.86224233413712636 9 0.099406252025682831
		3 7 0.027395240738201834 8 0.87337837346146951 9 0.099226385800328623
		3 7 0.071871069227681703 8 0.81138751093840134 9 0.11674141983391693
		3 7 0.071961896238190048 8 0.8492496919919772 9 0.078788411769832797
		3 7 3.2059482134977781e-05 8 0.77486047095755783 9 0.22510746956030717
		3 7 4.8583818535638292e-06 8 0.65958931358885897 9 0.34040582802928754
		3 7 2.9379111853005788e-05 8 0.78060520961200175 9 0.21936541127614534
		3 7 4.6900953575824421e-06 8 0.6760773673682744 9 0.32391794253636802
		3 7 1.0562573225079692e-05 8 0.7144603625837469 9 0.2855290748430282
		3 7 4.2092370834392947e-05 8 0.78795431618459799 9 0.21200359144456773
		3 7 2.7648209478124491e-06 8 0.63775391614664056 9 0.36224331903241169
		3 7 4.2309659207354391e-05 8 0.73451745754519915 9 0.26544023279559342
		3 7 9.5051521840997804e-05 8 0.8357244350683698 9 0.16418051340978915
		3 7 0.0001397488451052993 8 0.83505452722537288 9 0.16480572392952178
		3 7 5.7630811813954895e-05 8 0.7574768637529834 9 0.24246550543520268
		3 7 1.1627752659916472e-05 8 0.73989713497300813 9 0.26009123727433192
		3 7 8.5379138530035679e-06 8 0.70769679424782628 9 0.29229466783832081
		3 7 2.37533856110723e-05 8 0.67994126735920923 9 0.32003497925517976
		3 7 5.5371291618497419e-05 8 0.7933338225313048 9 0.20661080617707675
		3 7 0.00014729279295096055 8 0.83860517872179952 9 0.16124752848524967
		3 7 9.4175948238592476e-05 8 0.81673535936067376 9 0.18317046469108772
		3 6 0.57552269667104039 7 0.33388737332450652 10 0.090589930004453187
		3 1 0.48377010995465802 2 0.07354426115621282 29 0.44268562888912921
		3 1 0.68793353982929195 2 0.093439020682305599 29 0.21862743948840252
		3 1 0.65439166042917518 14 0.098243153257031077 29 0.24736518631379378
		3 0 0.0058813801101108279 29 0.59937548198480184 30 0.39474313790508714
		3 0 0.042083656065762011 29 0.67899715243201342 30 0.27891919150222449
		3 0 0.034209510494191651 1 0.17541837946293748 29 0.79037211004287078
		3 1 0.073789190030536272 29 0.89425060537103107 30 0.031960204598432775
		3 0 0.023119755112531257 29 0.42054763242708804 30 0.55633261246038068
		3 0 0.0091806621965323278 29 0.3493141350470878 30 0.6415052027563799
		3 0 0.0011120865716114047 29 0.32835551190978829 30 0.67053240151860038
		3 0 4.2113899363459412e-05 29 0.17900266980914306 30 0.82095521629149359
		3 0 4.55529759091351e-05 29 0.025805646160267624 30 0.97414880086382316
		3 0 2.2297097741168752e-05 29 0.0094732305272271621 30 0.9905044723750317
		3 0 3.0332118425035569e-06 29 0.0091251038569290059 30 0.99087186293122842
		3 0 3.8236678989190457e-06 29 0.0026833823453947317 30 0.99731279398670625
		3 0 8.5768815251992375e-05 29 0.0046941706070628402 30 0.99522006057768519
		3 0 9.0116098452943622e-05 29 0.0050579385126741589 30 0.99485194538887289
		3 0 5.4667707007408419e-05 29 0.0037035792956984556 30 0.99624175299729412
		3 0 7.2990922021259151e-05 29 0.0045177156335345203 30 0.99540929344444418
		3 0 0.00072046620642110136 29 0.019318534544658629 30 0.97996099924892033
		3 0 0.00056287539256639422 29 0.016711343450825516 30 0.98272578115660814
		3 0 0.000706218383869289 29 0.019325496555267292 30 0.97996828506086331
		3 0 0.00056058668767740326 29 0.016825736380090484 30 0.98261367693223223
		3 0 0.3216254822797911 29 0.43503523138831002 30 0.24333928633189897
		3 0 0.14429277875017915 29 0.535161498123357 30 0.32054572312646384
		3 0 0.39490134999381432 1 0.16893087411342592 29 0.43616777589275979
		3 0 0.084166467707133721 29 0.70833829648902202 30 0.20749523580384438
		3 0 0.0032477745257745621 29 0.25426917226939411 30 0.74248305320483121
		3 0 0.044567882309039367 29 0.47638942020354941 30 0.47904269748741135
		3 0 1.36368839010031e-05 29 0.0028699899824441754 30 0.99711637313365487
		3 0 6.0278671618101588e-05 29 0.05864167449597725 30 0.9412980468324047
		3 0 9.5394283194206843e-05 29 0.0053681276252437954 30 0.99453647809156198
		3 0 5.346688792345543e-05 29 0.0033718593711726569 30 0.99657467374090369
		3 0 0.00044566384698749956 29 0.014515565691064526 30 0.9850387704619481
		3 0 0.00086316561293775941 29 0.021675878316557626 30 0.97746095607050465
		3 0 0.0013693406140932872 29 0.029814536717225826 30 0.968816122668681
		3 0 0.0010745946039888083 29 0.025661446855877609 30 0.9732639585401337
		3 0 0.0013225930616645907 29 0.029818388002781474 30 0.96885901893555393
		3 0 0.0011866808257858144 29 0.028050819472440109 30 0.97076249970177397
		3 0 0.0011367190783734815 29 0.026194560887497793 30 0.97266872003412885
		3 0 0.00083818353665769045 29 0.021796791931258497 30 0.97736502453208374
		3 0 0.0012507105947536738 29 0.028183377365992055 30 0.97056591203925424
		3 0 0.00092514686307537685 29 0.02364504652734609 30 0.97542980660957868
		3 0 0.0010395996227330171 29 0.025273513353472467 30 0.97368688702379447
		3 0 0.0011061753268173022 29 0.02638748017638505 30 0.97250634449679774
		3 0 0.0012774609866156024 29 0.029434421807759913 30 0.96928811720562469
		3 0 0.0014372961552101984 29 0.030866385290092356 30 0.96769631855469762
		3 0 0.001312131554929264 29 0.029279375537180047 30 0.96940849290789066
		3 0 0.0012939514593242843 29 0.028648040384642238 30 0.97005800815603338
		3 0 0.0010930227544133939 29 0.026467457363440784 30 0.97243951988214594
		3 0 0.00076314065870720829 29 0.020613916720217378 30 0.97862294262107541
		3 0 0.0010345468169682729 29 0.024841975531272213 30 0.97412347765175944
		3 2 0.04424561424302114 3 0.13720735116695998 6 0.81854703459001898
		3 3 0.026942405298039283 6 0.95774053690285188 7 0.015317057799108953
		3 3 0.0090610489064819333 6 0.96733739155698595 7 0.023601559536532139
		3 3 0.031051814540721125 4 0.020769458136381608 6 0.94817872732289721
		3 3 0.31598330093446886 4 0.32634623109352107 6 0.35767046797201013
		3 3 0.37917483461547741 4 0.49013233919878291 6 0.13069282618573966
		3 6 0.90119898968169543 7 0.087974864173673478 10 0.010826146144631186
		3 3 0.037656606924014943 6 0.94565969345377521 7 0.016683699622209874
		3 2 0.0075186960517156076 3 0.14562056154738157 6 0.8468607424009027
		3 3 0.04834358042094062 6 0.86054602739931951 7 0.091110392179739902
		3 3 0.040849297416728207 6 0.92576681404976191 7 0.033383888533509938
		3 2 0.015486907845877614 3 0.14661303470153525 6 0.83790005745258722
		3 0 0.028916644208926048 29 0.50852327189809166 30 0.46256008389298237
		3 0 0.046937676954049969 29 0.47567572237058625 30 0.47738660067536376
		3 0 0.11372816283480527 29 0.47935221434109571 30 0.40691962282409894
		3 0 0.17797184838753238 29 0.49591918883291419 30 0.32610896277955342
		3 0 0.010815694981477969 29 0.50427472580378674 30 0.48490957921473538
		3 0 0.00089664429745907998 29 0.34262485815952887 30 0.65647849754301191
		3 0 6.5116517267028792e-06 29 0.074075768297385269 30 0.92591772005088802
		3 0 5.6383031869486249e-05 29 0.1721999910822731 30 0.82774362588585759
		3 0 0.0058230655063028396 29 0.37136539345892111 30 0.62281154103477621
		3 0 0.0027212858674786661 29 0.27366486371803134 30 0.72361385041449
		3 0 0.00094624854231698365 29 0.16748149659529277 30 0.83157225486239028
		3 0 0.00018645344453208145 29 0.073464571837841663 30 0.92634897471762634
		3 0 0.00017485270426895381 29 0.0075034273700152337 30 0.99232171992571594
		3 0 0.00015319913249450367 29 0.0070428010080647724 30 0.99280399985944068
		3 0 0.00013081085170453432 29 0.006519088525396427 30 0.99335010062289886
		3 0 0.00011993166660299673 29 0.0062525706876162494 30 0.99362749764578073
		3 0 0.00011615615077916898 29 0.0059294115239222978 30 0.99395443232529868
		3 0 0.0001692926909098976 29 0.0071604431470160797 30 0.99267026416207416
		3 0 1.8760903338354053e-05 29 0.0020308605482078604 30 0.9979503785484537
		3 0 2.6973852001001401e-05 29 0.0022460289110285718 30 0.99772699723697034
		3 0 3.9084020790773041e-05 29 0.0028468080356438973 30 0.99711410794356536
		3 0 6.5094925822769872e-05 29 0.0040812502830771561 30 0.99585365479110011
		3 0 5.3392850968620446e-05 29 0.0034536435295638348 30 0.9964929636194676
		3 0 3.6087257851068644e-05 29 0.0026926333162761982 30 0.99727127942587279
		2 7 0.011022887380078637 8 0.86513434303061265;
	setAttr ".wl[666:833].w"
		1 9 0.12384276958930859
		3 7 0.0073680687511148649 8 0.87545237057894409 9 0.11717956066994104
		3 7 0.010835715509341318 8 0.86273062331192063 9 0.12643366117873819
		3 7 0.0090599656354194459 8 0.86419019278879472 9 0.12674984157578587
		3 7 0.0046694700289981982 8 0.87066137780560693 9 0.1246691521653949
		3 7 0.0041931359117158137 8 0.87224698237447629 9 0.12355988171380788
		3 7 0.0038659709475471144 8 0.84740082609035872 9 0.14873320296209405
		3 7 0.0066282642646388664 8 0.82889651191641389 9 0.16447522381894727
		3 7 0.28604535629348787 8 0.66370967199354491 9 0.05024497171296731
		3 7 0.24009682476082386 8 0.70054653023562319 9 0.059356645003552935
		3 7 0.14918370768747524 8 0.76530235918005118 9 0.085513933132473532
		3 7 0.2432774410686013 8 0.66312892133514334 9 0.093593637596255275
		3 7 0.28923602631984185 8 0.61833778216439039 9 0.092426191515767656
		3 7 0.39617160787163597 8 0.52894290978836134 9 0.074885482340002849
		3 7 0.20079996722616353 8 0.7185357637160783 9 0.080664269057758253
		3 7 0.39259460734000928 8 0.55771532715269467 9 0.049690065507295995
		3 6 0.0094472654125102445 7 0.99054765570647341 8 5.0788810165037165e-06
		3 6 0.0026986199819179326 7 0.99729634739693429 8 5.0326211479774528e-06
		3 6 0.0028324074116273515 7 0.99716503611485063 8 2.5564735218790232e-06
		3 6 0.0053572751428212755 7 0.9946408469395347 8 1.8779176441437693e-06
		3 6 0.013321042258505628 7 0.98667447829727239 10 4.4794442218199e-06
		3 6 0.0078668716640964472 7 0.99212719564089524 8 5.9326950083856105e-06
		3 6 0.020117210729562345 7 0.9798783113599937 8 4.4779104440731872e-06
		3 6 0.024394928412506796 7 0.97560062325124297 8 4.4483362503072886e-06
		3 6 0.24943926202906092 7 0.74957309440077835 10 0.00098764357016073597
		3 6 0.22617769563266807 7 0.76672888714822385 10 0.0070934172191080775
		3 6 0.17512427146807763 7 0.8076792353952631 10 0.017196493136659382
		3 6 0.19947278774583749 7 0.76609347272524253 10 0.034433739528919871
		3 6 0.21702899087548042 7 0.76052691649340021 10 0.022444092631119381
		3 6 0.13669320155681025 7 0.86155490789414824 10 0.0017518905490416245
		3 6 0.086938932915495107 7 0.91305741306098642 10 3.6540235185709329e-06
		3 6 0.17438710632958171 7 0.82560971231120706 10 3.1813592112608147e-06
		3 1 0.43472235819208854 2 0.46019665999926535 3 0.10508098180864606
		3 0 0.23857032243579254 1 0.41790394593979846 2 0.34352573162440886
		3 2 0.33332785973127055 3 0.52083655578998078 6 0.14583558447874864
		3 2 0.2660191285775978 3 0.36635900197035726 6 0.36762186945204489
		3 2 0.22243723710904043 3 0.35795084910095459 6 0.41961191379000501
		3 0 0.087123430511982139 1 0.19282250588850977 29 0.72005406359950819
		3 1 0.022947511809612936 29 0.81982715817746143 30 0.15722533001292568
		3 1 0.11696305216852826 29 0.79526975275275624 30 0.087767195078715429
		3 0 0.43651715072697916 1 0.27216862771714678 29 0.29131422155587416
		3 0 0.48992717993497636 1 0.22721995945225654 29 0.2828528606127671
		3 0 0.30404457647284566 1 0.23071947726850228 29 0.465235946258652
		3 0 2.1374919421115006e-05 29 0.014581774111877712 30 0.98539685096870111
		3 0 2.180630941645779e-06 29 0.016704915333913179 30 0.98329290403514524
		3 0 7.6112117115969904e-06 29 0.055153125228610461 30 0.94483926355967773
		3 0 0.00043847924557083697 29 0.19468429048576355 30 0.80487723026866564
		3 0 0.00026908260250819202 29 0.11125113576161845 30 0.88847978163587338
		3 0 9.7356541474199606e-05 29 0.049263852734739724 30 0.9506387907237861
		3 0 3.3551624570345622e-05 29 0.0024778966277603383 30 0.99748855174766937
		3 0 1.4504435718043443e-05 29 0.0014458412102085858 30 0.99853965435407344
		3 0 9.3833028534612845e-06 29 0.0015257936066758223 30 0.99846482309047058
		3 0 1.3395023965684695e-05 29 0.0088857254156634903 30 0.99110087956037074
		3 0 1.7858655095097882e-05 29 0.0040123513686258034 30 0.99596978997627905
		3 0 2.4773507334616475e-05 29 0.0025760935802447349 30 0.99739913291242077
		3 0 0.00023911201846828892 29 0.0096005124839299918 30 0.99016037549760172
		3 0 0.00026330017712222076 29 0.010226794423013616 30 0.98950990539986416
		3 0 0.00030683195678551548 29 0.010968860404068579 30 0.98872430763914587
		3 0 0.00044678041455244481 29 0.013885238129836873 30 0.98566798145561052
		3 0 0.00035569024031970097 29 0.011995527192173505 30 0.98764878256750677
		3 0 0.00030655669405589434 29 0.011121498304118035 30 0.98857194500182599
		3 6 0.00092528705651671156 7 0.99906488217332601 8 9.8307701572266982e-06
		3 6 0.0014421774018220685 7 0.9985460680963919 8 1.1754501785974003e-05
		3 6 0.004019325202027497 7 0.99597099339528616 8 9.6814026863082259e-06
		3 6 0.0029059641196759445 7 0.99708148750484304 8 1.2548375481047397e-05
		3 6 0.0010941554889204997 7 0.99889311328886177 8 1.2731222217615356e-05
		3 6 0.00043453541421894658 7 0.99955607226513676 8 9.3923206443826571e-06
		3 6 0.00019017703991052622 7 0.99980368759201388 8 6.1353680756136314e-06
		3 6 0.00033806881723157453 7 0.99965560989647628 8 6.3212862920024079e-06
		3 7 0.77873200158039235 8 0.20140806419888871 9 0.019859934220718925
		3 7 0.70816279220338207 8 0.26978422349291326 9 0.022052984303704715
		3 7 0.61749006630249625 8 0.35225172493189499 9 0.030258208765608724
		3 7 0.59199552876998174 8 0.36472797654993278 9 0.043276494680085598
		3 7 0.67681762793001865 8 0.28064193851724545 9 0.042540433552735943
		3 7 0.72700117143026011 8 0.23571151376717009 9 0.037287314802569686
		3 7 0.81549225207881848 8 0.16004932120604681 9 0.024458426715134624
		3 7 0.66465959892664606 8 0.29908133305957785 9 0.036259068013776243
		3 1 0.4803041713020928 2 0.20061335228282673 29 0.31908247641508047
		3 0 0.14308828539023824 1 0.45819509402487629 2 0.39871662058488533
		3 1 0.23793347227573167 2 0.4610107525280141 3 0.30105577519625415
		3 3 0.37004674127442255 4 0.52479542531574364 6 0.1051578334098338
		3 6 0.83704107454538601 7 0.14473213469445614 10 0.018226790760157895
		3 3 0.023528751884389649 6 0.93248531983627481 7 0.043985928279335479
		3 3 0.098591497353606256 4 0.080228564390052728 6 0.82117993825634084
		3 6 0.84691927962073144 7 0.10927531166190463 10 0.043805408717363881
		3 3 0.085240410750877529 4 0.078730269675134343 6 0.83602931957398807
		3 3 0.18443081914177389 4 0.16740679338392928 6 0.64816238747429678
		3 7 0.9304284303089726 8 0.060870279226873651 9 0.0087012904641536881
		3 7 0.97292147947622154 8 0.023107310835866583 9 0.0039712096879117977
		3 7 0.94433520044525299 8 0.047603991380815683 9 0.008060808173931332
		3 7 0.92283832629880524 8 0.066375238186330635 9 0.010786435514864261
		3 7 0.88746929637071226 8 0.098629947291753478 9 0.013900756337534325
		3 7 0.88543915596680989 8 0.10389985791525104 9 0.010660986117938948
		3 7 0.93436377820964434 8 0.06001137021461108 9 0.0056248515757444228
		3 7 0.9279415479003168 8 0.064290137107782169 9 0.0077683149919010258
		3 6 3.9576456034035846e-05 7 0.99980886726270601 8 0.00015155628125978967
		3 7 0.99984230493673132 8 0.00012574623772677182 9 3.1948825541950263e-05
		3 7 0.99988810463515265 8 8.8143909145617838e-05 9 2.3751455701793852e-05
		3 6 3.9760164179252935e-05 7 0.99984258491319167 8 0.00011765492262890258
		3 6 0.00014117083396908696 7 0.99974561759314473 8 0.00011321157288635609
		3 6 0.00030463779444578944 7 0.99960870974604354 8 8.665245951057645e-05
		3 6 0.00051162719617614376 7 0.99944787739487706 8 4.0495408946727763e-05
		3 6 0.00012340568001483347 7 0.99977046071220188 8 0.00010613360778320066
		3 0 0.12400360926032269 1 0.30395222347314571 29 0.57204416726653173
		3 0 0.2672264990288451 1 0.22981930993372515 29 0.50295419103742989
		3 0 0.17571412750216392 29 0.60514118166618158 30 0.21914469083165447
		3 0 0.060785881889777633 29 0.54826238975564889 30 0.39095172835457359
		3 0 0.010308574686940424 29 0.44213222323030094 30 0.54755920208275854
		3 0 0.00078290733952321022 29 0.29136776716043883 30 0.70784932550003787
		3 0 6.2239409338271732e-05 29 0.12153784887530542 30 0.87839991171535636
		3 0 1.1023558842549365e-05 29 0.027056423080243377 30 0.972932553360914
		3 0 7.7853612567301501e-06 29 0.0031492213511698087 30 0.99684299328757353
		3 0 2.1402253993817741e-05 29 0.0019348581650961737 30 0.99804373958091008
		3 0 5.0546678323795856e-05 29 0.0034201179252297534 30 0.99652933539644661
		3 0 0.00012365594644600368 29 0.0059088610856544276 30 0.9939674829678995
		3 0 0.00034770332342067998 29 0.011737325605436109 30 0.98791497107114323
		3 0 0.0007209377424583312 29 0.019347577625929979 30 0.97993148463161173
		3 0 0.001168058684701779 29 0.026982615206723067 30 0.97184932610857522
		3 0 0.0013840197518998054 29 0.030346051246269622 30 0.96826992900183062
		3 0 0.0013214555234143616 29 0.029856426593919433 30 0.96882211788266615
		3 0 0.0011198230756813709 29 0.026742277188244987 30 0.97213789973607379
		3 0 0.00081960249123306313 29 0.021755810678754609 30 0.97742458683001221
		3 0 0.0005051162906571404 29 0.015836287778686828 30 0.98365859593065597
		3 0 0.00029346256368317477 29 0.011127489902113118 30 0.98857904753420367
		3 0 0.0001529829117242417 29 0.0072467105573862135 30 0.99260030653088949
		3 0 8.5580742556347903e-05 29 0.0050069100658281969 30 0.99490750919161541
		3 0 5.1302080120314217e-05 29 0.0034335928186924316 30 0.99651510510118724
		3 0 2.1723619340597408e-05 29 0.0018600028399019415 30 0.99811827354075755
		3 0 7.2909280674744488e-06 29 0.0025732475348155077 30 0.9974194615371168
		3 0 1.0141819754869524e-05 29 0.01220868917770186 30 0.9877811690025432
		3 0 1.3637533876930745e-05 29 0.040233856429387975 30 0.95975250603673501
		3 0 0.00026252568232742991 29 0.15771572906204884 30 0.84202174525562368
		3 0 0.0038735652007524353 29 0.41933681824372687 30 0.57678961655552063
		3 0 0.014999645460690927 29 0.69759980778590125 30 0.28740054675340776
		3 1 0.049623145258438417 29 0.86409370729424462 30 0.086283147447316938
		3 1 0.14016318756409357 18 0.020479565161137133 29 0.83935724727476912
		3 1 0.22876774812307285 2 0.014183395667599123 29 0.75704885620932805
		3 1 0.31940049994212588 2 0.045699612538962334 29 0.6348998875189118
		3 3 0.14284598690180597 10 0.7516242385909353 11 0.1055297745072586
		3 3 0.24171083083579059 4 0.2018881367795409 10 0.55640103238466843
		3 3 0.60213773729229669 4 0.19335748843497683 10 0.2045047742727264
		3 3 0.46347898212862915 4 0.47546555118578315 10 0.061055466685587825
		3 3 0.73752297771346831 4 0.03472174902270498 10 0.22775527326382666
		3 6 0.089504802894305638 10 0.66055445065807261 11 0.24994074644762174
		3 2 0.071266581182158562 3 0.54819779668721846 10 0.38053562213062281
		3 3 0.22630591622040089 10 0.64889454952707948 11 0.12479953425251958
		3 3 0.2486803566047176 4 0.16583942332992133 10 0.58548022006536105
		3 6 0.0072583713746587021 10 0.42175642002646208 11 0.57098520859887925
		3 3 0.33834792563890992 4 0.29829228638272004 10 0.36335978797836993
		3 2 0.044872867963947315 3 0.31997836602080859 10 0.63514876601524395
		3 3 0.26840844469730157 4 0.04799771480456666 10 0.68359384049813188
		3 3 0.41422189134866538 4 0.071782076937777842 10 0.51399603171355679
		3 3 0.33062740109838151 4 0.0026010882211453634 10 0.66677151068047313
		3 2 0.0074638182743582138 3 0.52288745722524788 10 0.46964872450039391
		3 3 0.50625719619321663 4 0.031723755906152055 10 0.46201904790063142
		3 3 0.24330111768953247 4 0.010896400531397227 10 0.74580248177907027
		3 3 0.38628941396070005 4 0.18408382931738679 10 0.42962675672191325
		3 6 0.080242665172743907 10 0.38437629799416839 11 0.5353810368330878
		3 6 0.00032616045331734008 10 0.31753863602838206 11 0.68213520351830059
		3 6 0.1175508250405628 10 0.36356154912959754 11 0.5188876258298396
		3 3 0.035632269785273694 10 0.88935424959601539 11 0.075013480618710868
		3 3 0.026737822702375659 10 0.90937842122031309 11 0.063883756077311282
		3 3 0.021096175139805575 10 0.85753359525916373 11 0.12137022960103079
		3 6 0.0021373451464797772 10 0.45737869563830108 11 0.54048395921521919
		3 6 0.021669096865411932 10 0.48299573982627308 11 0.4953351633083149
		3 6 0.12766128015463557 10 0.31100555617752884 11 0.56133316366783548
		3 3 0.0084909882963083803 10 0.72909982630141701 11 0.26240918540227465
		1 6 0.011385485739091233;
	setAttr ".wl[833:999].w"
		2 10 0.73737941369476323 11 0.2512351005661454
		3 3 0.0017765864400068779 10 0.60941670255606684 11 0.38880671100392628
		3 6 0.0053275407031974902 10 0.087301302382864418 11 0.9073711569139381
		3 6 0.0020752776663552587 10 0.090914766705351271 11 0.90700995562829356
		3 6 3.2959263980429402e-06 10 0.035084970125458803 11 0.96491173394814322
		3 10 0.067889842220391169 11 0.93210713205833584 12 3.0257212731583715e-06
		3 6 0.0017190458688148347 10 0.048292093559883301 11 0.94998886057130194
		3 10 0.024965846383212347 11 0.97503155708177403 12 2.5965350136842196e-06
		3 6 0.00059527287741817998 10 0.14362758762360853 11 0.85577713949897338
		3 6 0.0011854152803811935 10 0.054840119211572634 11 0.9439744655080462
		3 11 0.98988988357652574 12 0.0087896518845754883 13 0.0013204645388985728
		3 11 0.99815652589655601 12 0.0015213826399583638 13 0.00032209146348558909
		3 11 0.98852831300254984 12 0.010331938753451439 13 0.0011397482439987265
		3 11 0.99106036764368655 12 0.0075964589323891125 13 0.0013431734239243067
		3 11 0.99292047059666499 12 0.0060453667331332945 13 0.0010341626702016265
		3 11 0.98143541063586104 12 0.016231560475938264 13 0.0023330288882007044
		3 11 0.99452835675658213 12 0.0045964370572934669 13 0.00087520618612436072
		3 11 0.99123104734473066 12 0.0077968965647534222 13 0.00097205609051606719
		3 11 0.09389684026215861 12 0.83056725649991192 13 0.07553590323792933
		3 11 0.10628756689957745 12 0.78743350157032543 13 0.10627893153009711
		3 11 0.045431296062873619 12 0.8706604065889344 13 0.083908297348192176
		3 11 0.051481530332477626 12 0.83509833983735127 13 0.11342012983017127
		3 11 0.037632277177238674 12 0.8633393361272983 13 0.099028386695463086
		3 11 0.027096036100383036 12 0.87293107005479564 13 0.099972893844821414
		3 11 0.071140747588350844 12 0.81173357692497794 13 0.11712567548667126
		3 11 0.071426868821384951 12 0.85644914574020214 13 0.072123985438412988
		3 11 2.2669984197865871e-05 12 0.78163215861759738 13 0.21834517139820478
		3 11 3.1110441850258553e-06 12 0.73447131409214417 13 0.26552557486367101
		3 11 2.2331154329818622e-05 12 0.76204592394247483 13 0.23793174490319541
		3 11 3.710713036639535e-06 12 0.73010184798934241 13 0.26989444129762086
		3 11 7.0055033276793958e-06 12 0.75858189038092705 13 0.24141110411574523
		3 11 3.0786653846926912e-05 12 0.77330000711382973 13 0.22666920623232328
		3 11 1.9235203188750165e-06 12 0.71721691778658125 13 0.2827811586931
		3 11 2.8729178094272804e-05 12 0.79867707127336307 13 0.20129419954854258
		3 11 6.6817518520420496e-05 12 0.83975878088944911 13 0.1601744015920305
		3 11 9.9767341434669948e-05 12 0.81821365857872497 13 0.18168657407984035
		3 11 4.0261096096442157e-05 12 0.79152988839084959 13 0.20842985051305388
		3 11 9.3660422889853863e-06 12 0.74692967433221058 13 0.25306095962550046
		3 11 6.482884001683598e-06 12 0.73188738822228272 13 0.26810612889371555
		3 11 1.6250440124309622e-05 12 0.7596930128043603 13 0.24029073675551549
		3 11 3.8144904678804973e-05 12 0.82297699444886996 13 0.1769848606464513
		3 11 0.00010456372212355427 12 0.83083141078046718 13 0.16906402549740937
		3 11 6.6943029864191252e-05 12 0.80860060478375095 13 0.19133245218638478
		3 6 0.057249975495538667 10 0.60279485904521712 11 0.33995516545924426
		3 0 0.00025422128049203856 1 0.00021530576249941745 25 0.99953047295700848
		3 0 0.0038181858513098919 1 0.0034479167329931754 25 0.99273389741569695
		3 0 0.020691406668678407 1 0.018955057757317893 25 0.9603535355740036
		3 0 0.016646576879504892 1 0.015235189176082024 25 0.9681182339444131
		3 0 0.018812565535261255 1 0.017239278756611413 25 0.96394815570812731
		3 0 0.038208398997662103 1 0.035448419748649047 25 0.92634318125368886
		3 0 0.035753460013310319 1 0.033121269304120335 25 0.93112527068256945
		3 0 0.035765295660383174 1 0.033192764418675337 25 0.93104193992094153
		3 0 0.033767790450792867 1 0.031294447931632864 25 0.93493776161757414
		3 0 0.020870803641733368 1 0.019132955441308608 25 0.95999624091695812
		3 0 0.016055813733042396 1 0.014666454843530553 25 0.9692777314234271
		3 0 0.032866728577530313 1 0.030408967792790856 25 0.93672430362967884
		3 0 0.039945826156667079 1 0.037113817501920013 25 0.92294035634141292
		3 0 0.048959737858114784 1 0.045648148985588125 25 0.90539211315629697
		3 0 0.044973020055548589 1 0.041852797454850703 25 0.91317418248960081
		3 0 0.04696967542679141 1 0.043802128387728428 25 0.90922819618548012
		3 0 0.04499354905728796 1 0.041922433050287491 25 0.91308401789242466
		3 0 0.045301129503775461 1 0.042172518921597305 25 0.91252635157462714
		3 0 0.041156835004034178 1 0.038229031391731776 25 0.92061413360423394
		3 0 0.047506637939714241 1 0.044260001394311424 25 0.90823336066597427
		3 0 0.040692848693491997 1 0.037843603734454168 25 0.92146354757205373
		3 0 0.044140219394032384 1 0.041075968867064806 25 0.914783811738903
		3 0 0.042967330239115545 1 0.040012216884930667 25 0.9170204528759538
		3 0 0.046009037508005127 1 0.042895167460626785 25 0.91109579503136806
		3 0 0.049717005591644138 1 0.046376546092965494 25 0.90390644831539035
		3 0 0.048131789629779008 1 0.044867564744646565 25 0.90700064562557436
		3 0 0.047280145261190114 1 0.044066843829227723 25 0.90865301090958206
		3 0 0.042763204109130357 1 0.039817818763366791 25 0.91741897712750264
		3 0 0.039520560771925915 1 0.036693308008592704 25 0.92378613121948139
		3 0 0.044203905635300945 1 0.041120324983546258 25 0.91467576938115291
		3 3 0.17346179113322915 10 0.78265504103599159 11 0.043883167830779196
		3 3 0.12134404435764792 10 0.86167134325939765 11 0.016984612382954508
		3 3 0.078135793123716671 10 0.89506602683368541 11 0.026798180042598003
		3 3 0.12486107197808141 10 0.86118129470586224 11 0.013957633316056373
		3 3 0.35165004979012104 4 0.25590805845944836 10 0.39244189175043048
		3 3 0.40065525942072666 4 0.33679106855189811 10 0.26255367202737512
		3 3 0.018812185897017969 10 0.89448688629085338 11 0.086700927812128778
		3 3 0.089885441920408038 10 0.89323833355177662 11 0.01687622452781545
		3 2 0.0055515474981108932 3 0.29475659475666327 10 0.6996918577452258
		3 3 0.061445200236218439 10 0.84757540375147333 11 0.090979396012308311
		3 3 0.063313660848043143 10 0.90305497088308617 11 0.033631368268870511
		3 2 0.010982649573009758 3 0.21670369242378867 10 0.77231365800320162
		3 0 0.00053242150246563631 1 0.00047196007678964225 25 0.99899561842074491
		3 0 0.024110950378089364 1 0.022165924712319228 25 0.95372312490959144
		3 0 0.023675356541491242 1 0.021752286580920745 25 0.95457235687758812
		3 0 0.022653723310339585 1 0.020799640020683071 25 0.95654663666897743
		3 0 0.021557303225554235 1 0.019796297375428502 25 0.9586463993990173
		3 0 0.020338335795573578 1 0.018672654886576493 25 0.96098900931785003
		3 0 0.022553510381530192 1 0.020727172747239085 25 0.95671931687123068
		3 0 0.013004973179594611 1 0.011867540715341296 25 0.97512748610506417
		3 0 0.015102659161381964 1 0.013807634760319133 25 0.97108970607829892
		3 0 0.018796135707228372 1 0.017199485354106168 25 0.96400437893866553
		3 11 0.010835199806770526 12 0.87325799732185572 13 0.11590680287137373
		3 11 0.0071652933133264487 12 0.87067763874762127 13 0.12215706793905226
		3 11 0.010571627840593227 12 0.859787531888347 13 0.12964084027105985
		3 11 0.0088812311502213196 12 0.86193835077977132 13 0.12918041807000746
		3 11 0.0045565064667242375 12 0.86884082718546385 13 0.126602666347812
		3 11 0.0040957470042535899 12 0.88112563770267005 13 0.11477861529307642
		3 11 0.0037855513815267449 12 0.87651091525835412 13 0.1197035333601192
		3 11 0.0065223194308524201 12 0.86408391433194653 13 0.12939376623720092
		3 11 0.28459556884827353 12 0.66549830510678742 13 0.049906126044938992
		3 11 0.23901340518465591 12 0.70145133555626382 13 0.059535259259080195
		3 11 0.14832866709918405 12 0.76426346649171983 13 0.087407866409095925
		3 11 0.24187918661340829 12 0.66312471723851973 13 0.094996096148072043
		3 11 0.28705728339761316 12 0.62071520036078809 13 0.092227516241598792
		3 11 0.39285465109287904 12 0.53298054425688124 13 0.074164804650239793
		3 11 0.19863114327143136 12 0.72196595329591362 13 0.079402903432655048
		3 11 0.3900210184309022 12 0.56057081956363741 13 0.049408162005460318
		3 10 0.014820566406546429 11 0.9851717516257279 12 7.6819677256965178e-06
		3 10 0.0041527392077732525 11 0.99584063476998907 12 6.6260222377280297e-06
		3 10 0.0037507085228007282 11 0.99624628218691968 12 3.0092902795480055e-06
		3 10 0.0056914633852513255 11 0.9943062742260087 12 2.2623887400138701e-06
		3 10 0.013055616135386456 11 0.98693923464051536 12 5.1492240981158366e-06
		3 10 0.0087595570713296569 11 0.99122995309943485 12 1.0489829235429191e-05
		3 10 0.025618073785040402 11 0.97437328850378713 12 8.6377111723668599e-06
		3 10 0.035521461338746861 11 0.96447048405063029 12 8.0546106230128732e-06
		3 6 0.0023026676027755257 10 0.2970749224459171 11 0.7006224099513072
		3 6 0.012478264057684407 10 0.25407734297796569 11 0.73344439296434982
		3 6 0.025469273468328973 10 0.17814130833325628 11 0.79638941819841491
		3 6 0.038745063309826987 10 0.20119551879423853 11 0.76005941789593456
		3 6 0.019223997754525431 10 0.22573285532584533 11 0.75504314691962926
		3 6 0.001469998411854718 10 0.15177176580076476 11 0.84675823578738052
		3 3 3.1401903820313784e-06 10 0.11039445043178212 11 0.88960240937783586
		3 3 5.9003541498603744e-06 10 0.21749612573773722 11 0.78249797390811293
		3 2 0.3045865884299564 3 0.57872216702900936 10 0.11669124454103422
		3 2 0.22690636467872993 3 0.41607561799786175 10 0.35701801732340832
		3 2 0.18956228423248575 3 0.432996005283803 10 0.37744171048371111
		3 0 0.0016320036014324396 1 0.0014688429602662612 25 0.99689915343830138
		3 0 0.0014124131348286864 1 0.0012561633457516602 25 0.99733142351941961
		3 0 0.0026269323898748913 1 0.002189097532932767 25 0.99518397007719239
		3 0 0.026827168287941055 1 0.02472331880168379 25 0.94844951291037527
		3 0 0.026410365054937417 1 0.024357939607584388 25 0.9492316953374782
		3 0 0.026675219022921772 1 0.024620418078941945 25 0.94870436289813642
		3 0 0.031255739166480424 1 0.02890462610542166 25 0.93983963472809795
		3 0 0.029855870359950867 1 0.027569021426757691 25 0.94257510821329138
		3 0 0.029228845805752066 1 0.02697276285637519 25 0.94379839133787291
		3 10 0.00078458158889746022 11 0.9992023939299346 12 1.3024481167939408e-05
		3 10 0.001644896548867272 11 0.99833737635908437 12 1.7727092048261776e-05
		3 10 0.0060513988776600943 11 0.99393208625278473 12 1.6514869555036552e-05
		3 10 0.0048182658031066493 11 0.99516248247119143 12 1.9251725701833257e-05
		3 10 0.0019285208348063492 11 0.9980538200465896 12 1.7659118604026165e-05
		3 10 0.00068140703386779071 11 0.99930631797960479 12 1.2274986527317236e-05
		3 10 0.00021838143014195745 11 0.99977380349617329 12 7.8150736846852376e-06
		3 10 0.00029754197012237411 11 0.99969463329371522 12 7.8247361624292775e-06
		3 11 0.7755415563585768 12 0.20424162779849631 13 0.020216815842926991
		3 11 0.70597664969885954 12 0.27163585108233179 13 0.022387499218808705
		3 11 0.6157306421558012 12 0.35327981217310672 13 0.030989545671091998
		3 11 0.59018535086970636 12 0.36523403991666448 13 0.044580609213629059
		3 11 0.67421414161710369 12 0.28260145700150674 13 0.043184401381389528
		3 11 0.72350365411469164 12 0.23905447589874448 13 0.037441869986563944
		3 11 0.81159908523938595 12 0.16374690753999646 13 0.024654007220617596
		3 11 0.66077290393385757 12 0.30297009157576582 13 0.036257004490376575
		3 3 0.46771164545620669 4 0.35754150082450836 10 0.17474685371928492
		3 3 0.025806827296079415 10 0.82606586636502422 11 0.14812730633889651
		3 3 0.08027682183986487 10 0.87824939562463877 11 0.041473782535496287
		3 3 0.19754221551069676 4 0.050456238710661516 10 0.75200154577864164
		3 3 0.066242311050235148 10 0.828067949609678 11 0.10568973934008696
		3 3 0.1570111112790803 4 0.056343030386996951 10 0.78664585833392275
		3 3 0.26481659079671394 4 0.12414741911699224 10 0.61103599008629395
		3 11 0.92782595268526091 12 0.063182824740585036 13 0.0089912225741540022
		3 11 0.97115909152869229 12 0.024645292111781909 13 0.0041956163595258103
		3 11 0.94210623323297438 12 0.049589174190948326 13 0.0083045925760773451
		3 11 0.92083342725010209 12 0.068079544796567429 13 0.011087027953330331;
	setAttr ".wl[1000:1174].w"
		3 11 0.88574840528801624 12 0.099829957797327215 13 0.01442163691465663
		3 11 0.88408379033313145 12 0.10483091467897998 13 0.011085294987888605
		3 11 0.93277869399286628 12 0.061304525706452895 13 0.0059167803006807624
		3 11 0.9256248092661824 12 0.066293701767754787 13 0.0080814889660629722
		3 11 0.9996821534873731 12 0.00025482485570530838 13 6.3021656921561858e-05
		3 11 0.99973074731482503 12 0.00021543007863892219 13 5.3822606536232739e-05
		3 11 0.99980568383975299 12 0.00015350165768022748 13 4.0814502566882898e-05
		3 10 6.3751724457695148e-05 11 0.99972573586185975 12 0.00021051241368238744
		3 10 0.00027442399090816746 11 0.99953121814238666 12 0.00019435786670522249
		3 10 0.0005778387831936381 11 0.99927968151709856 12 0.00014247969970769957
		3 10 0.00087717148347859521 11 0.99905968940231804 12 6.3139114203402709e-05
		3 10 0.0001685122208119446 11 0.99965839238933163 12 0.00017309538985639086
		3 0 0.0015676211563451954 1 0.0013581571346129682 25 0.9970742217090417
		3 0 0.012060638911500459 1 0.010982063333059662 25 0.97695729775543982
		3 0 0.015822040847112754 1 0.014464772591795438 25 0.96971318656109184
		3 0 0.02003372915499009 1 0.018387149802847155 25 0.9615791210421627
		3 0 0.027783863947201941 1 0.02565613170216241 25 0.94656000435063559
		3 0 0.036470854842052688 1 0.033847466954433657 25 0.92968167820351355
		3 0 0.044613012089371816 1 0.041557075928669522 25 0.91382991198195862
		3 0 0.048538943854346935 1 0.045272508598867334 25 0.90618854754678568
		3 0 0.047485500959193419 1 0.044279848619882739 25 0.90823465042092388
		3 0 0.044779184681681995 1 0.041700681134945343 25 0.91352013418337252
		3 0 0.039837896354022753 1 0.037014853180506228 25 0.92314725046547086
		3 0 0.033557277090948336 1 0.031077530811049504 25 0.93536519209800217
		3 0 0.028185702930761676 1 0.026013023553363927 25 0.94580127351587429
		3 0 0.023202382747206329 1 0.021328465871375855 25 0.95546915138141797
		3 0 0.02008222419282156 1 0.018407890701296479 25 0.96150988510588187
		3 0 0.017064987642759006 1 0.015610775812506571 25 0.96732423654473443
		3 10 0.052721298219461622 11 0.94725058641726045 12 2.8115363277950308e-05
		3 10 0.073155045874297581 11 0.92678445358935446 12 6.0500536347889062e-05
		3 10 0.10413083759870879 11 0.89572708054899797 12 0.00014208185229320041
		3 10 0.1233716725709209 11 0.87642579824132061 12 0.00020252918775853722
		3 10 0.10150907631984167 11 0.89835107005996118 12 0.00013985362019724122
		3 10 0.058795203334055905 11 0.94115976348610286 12 4.5033179841135359e-05
		3 10 0.036032681213430458 11 0.96395618639538427 12 1.1132391185331121e-05
		3 10 0.11766900762783547 11 0.88216029098535254 12 0.0001707013868120578
		3 10 0.08140696660162533 11 0.91851463715828674 12 7.839624008792308e-05
		3 10 0.048930096838034877 11 0.9510480471177486 12 2.1856044216408122e-05
		3 10 0.10758008254527184 11 0.89225682358293268 12 0.00016309387179545601
		3 10 0.071212776018442892 11 0.9287135497274992 12 7.3674254057948087e-05
		3 10 0.040808379651433815 11 0.95917194497342129 12 1.9675375144720529e-05
		3 6 2.1843779437425119e-05 10 0.072715821131627278 11 0.9272623350889353
		3 6 4.9937911006329273e-05 10 0.10696932050375157 11 0.89298074158524199
		3 6 0.00013032442263586735 10 0.16938241376418858 11 0.83048726181317545
		3 6 0.00019895390778834957 10 0.21198632523638578 11 0.78781472085582582
		3 6 0.0001332802608144329 10 0.17008395917866989 11 0.82978276056051559
		3 6 4.096506888477962e-05 10 0.092043485033624556 11 0.90791554989749057
		3 6 9.9679718217837988e-06 10 0.053235773197031058 11 0.94675425883114706
		3 6 0.0001573858747624975 10 0.19189107568074495 11 0.80795153844449263
		3 6 6.8235154260520048e-05 10 0.12187189023697347 11 0.87805987460876611
		3 6 1.7515897657110693e-05 10 0.066982282137343835 11 0.93300020196499911
		3 6 0.00015585203631022444 10 0.18507075077234264 11 0.81477339719134712
		3 6 6.7322082663019879e-05 10 0.11566396062526614 11 0.8842687172920709
		3 6 1.7079235376570973e-05 10 0.06230766772595947 11 0.93767525303866384
		3 10 0.051221928668934311 11 0.94875130913471128 12 2.6762196354395683e-05
		3 10 0.067994937449932971 11 0.93194967053047761 12 5.5392019589395984e-05
		3 10 0.084233626207917078 11 0.91563956794116508 12 0.00012680585091777693
		3 10 0.091942918558692618 11 0.90787686654354927 12 0.00018021489775806889
		3 10 0.075593332006535799 11 0.92428368917422499 12 0.00012297881923925314
		3 10 0.046780223037364108 11 0.95318014562392583 12 3.963133871007543e-05
		3 10 0.03038219858068367 11 0.96960724839634049 12 1.0553022975841155e-05
		3 10 0.087453847682496755 11 0.91239745602687639 12 0.00014869629062678105
		3 10 0.06642561801373012 11 0.93350534235657301 12 6.9039629696759634e-05
		3 10 0.04243146586975563 11 0.95754797444379158 12 2.0559686452810038e-05
		3 10 0.083802655700450993 11 0.91605065381241457 12 0.0001466904871345358
		3 10 0.061634287481199708 11 0.93829925645274936 12 6.6456066051025708e-05
		3 10 0.037917809645937633 11 0.96206398132743354 12 1.8209026628774907e-05
		3 0 0.015933512467910572 1 0.014565000391823119 25 0.96950148714026629
		3 0 0.016751028839973734 1 0.015337828507254698 25 0.96791114265277156
		3 0 0.019579950900287409 1 0.017994996216925081 25 0.96242505288278746
		3 0 0.021774096030140657 1 0.020054893366291102 25 0.95817101060356824
		3 0 0.019853062857002668 1 0.018245851998939952 25 0.96190108514405748
		3 0 0.016927262274420197 1 0.015491581657487239 25 0.96758115606809258
		3 0 0.016021965433117728 1 0.014637056473471596 25 0.96934097809341058
		3 0 0.020354153154880185 1 0.018721398732677967 25 0.96092444811244182
		3 0 0.017323360269956612 1 0.015872218036623999 25 0.96680442169341929
		3 0 0.015823504723377468 1 0.014456756799960994 25 0.96971973847666137
		3 0 0.020817947253225895 1 0.019154103285132982 25 0.96002794946164116
		3 0 0.017822259583018592 1 0.016337704850012118 25 0.96584003556696929
		3 0 0.016292970407439107 1 0.014895080295975877 25 0.9688119492965851
		3 0 0.018897839565522625 1 0.017326813004111916 25 0.96377534743036541
		3 0 0.020914682958166994 1 0.019221329687137974 25 0.95986398735469503
		3 0 0.02560161548465793 1 0.023620330456616864 25 0.95077805405872529
		3 0 0.02889501486403926 1 0.026711295673276941 25 0.94439368946268387
		3 0 0.025800174662494024 1 0.023801401166946262 25 0.95039842417055964
		3 0 0.020461137142054206 1 0.018787109133982183 25 0.9607517537239636
		3 0 0.018233132441637965 1 0.016695916141424298 25 0.96507095141693788
		3 0 0.026948600632160803 1 0.024883088205686698 25 0.9481683111621525
		3 0 0.021819198748069226 1 0.020066395851478572 25 0.95811440540045212
		3 0 0.018552465398952257 1 0.016997510673228931 25 0.96445002392781864
		3 0 0.02733239998050176 1 0.025242194642478784 25 0.94742540537701947
		3 0 0.022197826727037327 1 0.020422209727987604 25 0.95737996354497501
		3 0 0.01883413666818318 1 0.017263635217701388 25 0.96390222811411552
		3 0 0.020814170014076833 1 0.019113928341737797 25 0.96007190164418554
		3 0 0.023726204966182479 1 0.021846906153493047 25 0.95442688888032434
		3 0 0.029047176645685176 1 0.026850583813729293 25 0.9441022395405857
		3 0 0.032525283050969973 1 0.03012384566699948 25 0.93735087128203065
		3 0 0.028688060763440035 1 0.026512668900084108 25 0.94479927033647571
		3 0 0.022067021912709959 1 0.020289482909172693 25 0.95764349517811742
		3 0 0.019032505674222419 1 0.017442030169382644 25 0.96352546415639495
		3 0 0.030363211122616772 1 0.028086391599361372 25 0.94155039727802181
		3 0 0.024394823693673844 1 0.022474278943827801 25 0.95313089736249834
		3 0 0.019970145863153023 1 0.018319572960012156 25 0.96171028117683488
		3 0 0.030710261177703601 1 0.028416668398201055 25 0.94087307042409529
		3 0 0.024602328121781019 1 0.022673899241677103 25 0.95272377263654184
		3 0 0.020041506696649655 1 0.018391129243290713 25 0.9615673640600596
		3 1 0.61235008482569475 18 0.35103266088405638 21 0.036617254290248799
		3 1 0.58690817200945089 14 0.065736853475913751 18 0.34735497451463548
		2 18 0.77176449685564541 19 0.22823550314435459
		2 18 0.83471199132040208 19 0.16528800867959798
		2 1 0.24356149700223095 18 0.75643850299776905
		2 1 0.54434290560139109 18 0.45565709439860896
		3 14 0.0020488110005302232 18 0.36270254984359163 19 0.63524863915587815
		3 14 0.00037968732729104846 18 0.40530700464340008 19 0.59431330802930893
		3 14 8.061151321035566e-06 18 0.039594591840593635 19 0.96039734700808521
		3 14 3.7806617585280247e-06 18 0.052289600200632703 19 0.94770661913760879
		3 14 1.7631143836228141e-07 18 0.0007572639113390912 19 0.99924255977722265
		3 14 1.0997985821651358e-06 18 0.0025812744931296796 19 0.99741762570828818
		3 14 3.6047611786689582e-09 18 1.9751944173469181e-06 19 0.99999802120082149
		3 14 2.5454117822755936e-08 18 2.3004466297142024e-05 19 0.99997697007958497
		2 18 0.82934370175728178 19 0.17065629824271825
		2 1 0.53122794123035622 18 0.46877205876964384
		2 18 0.38233689367208795 19 0.61766310632791199
		3 14 3.0869315777873444e-06 18 0.044470187853492278 19 0.95552672521492998
		3 14 2.9496531541022536e-07 18 0.00090326912010192163 19 0.99909643591458275
		3 14 6.362546321061096e-09 18 4.493295525098662e-06 19 0.99999550034192841
		2 18 0.80814754073331496 19 0.19185245926668498
		3 14 0.011198322234357789 18 0.89612792793225415 19 0.092673749833388094
		2 1 0.37202717665246321 18 0.62797282334753679
		3 14 0.00020663319897059606 18 0.45207642010446292 19 0.54771694669656634
		3 14 1.6995449401551484e-05 18 0.44202426946526518 19 0.55795873508533311
		3 14 3.8555765233427397e-06 18 0.075191434036419175 19 0.92480471038705747
		3 14 5.0110791955643122e-06 18 0.068841017424791706 19 0.93115397149601264
		3 14 6.5587605004368677e-07 18 0.0024467819544586908 19 0.99755256216949117
		3 14 2.2548589323684596e-06 18 0.0059237737192450205 19 0.99407397142182252
		3 14 2.6970624996017436e-08 18 3.1225295562575581e-05 19 0.9999687477338125
		3 14 2.0667532446928487e-07 18 0.00025695194935001792 19 0.99974284137532565
		3 1 0.019003160518670254 18 0.89141587087189 19 0.089580968609439704
		3 1 0.38749220450628707 18 0.57479195083979939 21 0.03771584465391338
		3 14 7.5599467379551096e-05 18 0.48331689616079176 19 0.51660750437182879
		3 14 3.2940347501650975e-06 18 0.082304910051790803 19 0.91769179591345884
		3 14 1.4331735580960905e-06 18 0.0047396937620042233 19 0.99525887306443761
		3 14 8.3729972040169307e-08 18 9.799500463076673e-05 19 0.99990192126539723
		2 1 0.3898494997482127 18 0.6101505002517873
		2 18 0.78893697691878339 19 0.21106302308121661
		3 14 0.016378007656681143 18 0.84587523069756765 19 0.13774676164575106
		3 14 0.00076705653369182252 18 0.44180356753107797 19 0.55742937593523034
		3 14 1.9586119494718352e-05 18 0.42012115177737036 19 0.57985926210313488
		3 14 1.6561790098470908e-05 18 0.080176565489000193 19 0.91980687272090134
		3 14 5.6432434209753457e-06 18 0.05996535213938417 19 0.94002900461719474
		3 14 4.1104887465122827e-07 18 0.0022967038425893804 19 0.99770288510853589
		3 14 2.8042485304222513e-06 18 0.0073758846602753588 19 0.99262131109119434
		3 14 7.9476810814201358e-09 18 8.3448368255198099e-06 19 0.99999164721549338
		3 14 1.2220822664232894e-07 18 0.00014347000410775538 19 0.9998564077876656
		3 14 2.1007789183891893e-08 18 1.7622970850887528e-05 19 0.99998235602135999
		2 1 0.10386034531179988 18 0.89613965468820023
		2 18 0.89330692001188106 19 0.10669307998811892
		2 1 0.15737379377674784 18 0.84262620622325224
		2 1 0.19327921010752905 18 0.80672078989247098
		1 18 1
		2 1 0.055388648949429693 18 0.94461135105057037
		3 1 0.06732980038522389 14 0.025940048462351678 18 0.9067301511524245
		2 1 0.13823142164042942 18 0.86176857835957066
		2 18 0.62642234696163168 19 0.37357765303836832
		2 18 0.60538986969234154 19 0.3946101303076584
		2 18 0.57549052344294116 19 0.4245094765570589
		2 18 0.65130445538803072 19 0.34869554461196928
		2 18 0.64580837138210001 19 0.35419162861790005
		3 14 0.0013691045965226847 18 0.694719440562928 19 0.30391145484054932
		3 14 0.0013811609335197847 18 0.70502768821839334 19 0.29359115084808685
		3 14 0.0026704159807234519 18 0.70848145929034356 19 0.28884812472893295
		3 14 2.6011656732179071e-05 18 0.22160664357342791 19 0.77836734476983993
		3 14 0.00015248976418739922 18 0.23524837023864215 19 0.76459913999717044
		3 14 0.000220953830202162 18 0.15167139383655343 19 0.84810765233324448
		2 14 0.00014762383099043111 18 0.15175648967703165;
	setAttr ".wl[1174:1343].w"
		1 19 0.84809588649197787
		3 14 7.2495293315294756e-06 18 0.17582285696145472 19 0.82416989350921377
		3 14 4.4904062907518434e-06 18 0.1500498108991104 19 0.84994569869459891
		3 14 3.7105610053754503e-06 18 0.21703665967736904 19 0.7829596297616257
		3 14 5.9243543159341079e-06 18 0.23085635350243566 19 0.76913772214324827
		3 14 1.6701415216639526e-06 18 0.016894460654808402 19 0.98310386920366999
		3 14 1.7236089689414735e-06 18 0.01695064327089247 19 0.98304763312013865
		3 14 6.8728085824655042e-07 18 0.0066426743840293 19 0.99335663833511245
		3 14 1.1992236667144562e-06 18 0.0088035668788378658 19 0.99119523389749553
		3 14 2.9031191941073163e-06 18 0.012835542030531041 19 0.98716155485027479
		3 14 4.9123755983763422e-06 18 0.026723941976419949 19 0.97327114564798178
		3 14 4.3170022842199208e-06 18 0.019279198862250605 19 0.98071648413546508
		3 14 3.2581628855035682e-06 18 0.022418041893551999 19 0.97757869994356261
		3 14 1.6317119605869866e-07 18 0.00035878479761750504 19 0.99964105203118647
		3 14 6.1229984704673663e-08 18 0.00017019618588575439 19 0.99982974258412971
		3 14 1.552161271314202e-08 18 3.1926915005708469e-05 19 0.99996805756338147
		3 14 3.9995203052453922e-08 18 7.0764510117656194e-05 19 0.99992919549467929
		3 14 2.0995392568034856e-07 18 0.00030118248881757143 19 0.9996986075572567
		3 14 8.2368602032310903e-07 18 0.00138161291565325 19 0.9986175633983263
		3 14 7.9790310649530491e-07 18 0.0014055638007371934 19 0.99859363829615633
		3 14 4.0627330226649082e-07 18 0.00075661287658284671 19 0.99924298085011476
		3 1 0.55765629223296598 14 0.16748776168957591 18 0.27485594607745811
		2 1 0.76933336954254417 18 0.23066663045745586
		2 1 0.78605807574676778 18 0.21394192425323222
		2 1 0.56591520524993255 18 0.4340847947500675
		3 1 0.47815221713005857 14 0.14304571099943622 18 0.37880207187050513
		2 1 0.24655780639813804 18 0.75344219360186193
		3 1 0.21955593291933623 18 0.7448578145502267 21 0.0355862525304372
		3 1 0.47502865368296315 18 0.4858484993325301 21 0.039122846984506722
		3 1 0.45839720277541068 18 0.13905924200830724 21 0.40254355521628216
		3 1 0.49494242982121778 18 0.065831017906933798 21 0.43922655227184831
		3 21 0.92037401648730921 22 0.049523884194297395 25 0.030102099318393388
		3 21 0.93014097521827099 22 0.028507712819616945 25 0.041351311962111954
		3 1 0.19964004214771 21 0.5842800732505592 25 0.2160798846017308
		3 1 0.34397946446806854 21 0.45778232350482367 25 0.19823821202710795
		3 21 0.59295586893512697 22 0.40666750362230714 25 0.0003766274425656575
		3 21 0.65414167752317376 22 0.34574777813538105 25 0.00011054434144522808
		3 21 0.13025939786609397 22 0.86973637876380228 25 4.2233701038181378e-06
		3 21 0.15684134834029873 22 0.84314722838736655 25 1.1423272334842734e-05
		3 21 0.0054151400887294202 22 0.99458437867633731 25 4.8123493316081993e-07
		3 21 0.014018577875125499 22 0.98597893022513616 25 2.4918997383514233e-06
		3 21 2.1797537597711093e-05 22 0.99997819074205618 25 1.1720346092643325e-08
		3 21 0.00017612210202335121 22 0.99982382252409041 25 5.5373886152297603e-08
		3 1 0.035958426803261112 21 0.88210922080126708 25 0.081932352395471766
		3 1 0.34727488208152968 21 0.37550865188380478 25 0.27721646603466538
		3 21 0.64667232156877474 22 0.35250277182034601 25 0.00082490661087941989
		3 21 0.13741999896311416 22 0.86257443303063397 25 5.568006251932528e-06
		3 21 0.0054240355599254712 22 0.99457525646900946 25 7.0797106508082601e-07
		3 21 3.1190966315002263e-05 22 0.99996879597008159 25 1.3063603337170537e-08
		3 1 0.006436074098306206 21 0.89958300457582985 22 0.093980921325864053
		3 21 0.95360209038857657 22 0.032588064197839335 25 0.013809845413584163
		2 1 0.29268763788207081 21 0.70731236211792925
		3 21 0.613069418310906 22 0.38685043811248709 25 8.0143576606948693e-05
		3 21 0.63933229134321912 22 0.3606488883752218 25 1.8820281558994719e-05
		3 21 0.20875575859117768 22 0.79123773781268258 25 6.5035961395828234e-06
		3 21 0.20540685857436228 22 0.79457721699830897 25 1.5924427328761578e-05
		3 21 0.019940209809274623 22 0.9800576876613496 25 2.102529375640263e-06
		3 21 0.036367972926536409 22 0.96362588849638098 25 6.1385770826684679e-06
		3 21 0.00055953168345853591 22 0.99944030537504502 25 1.6294149647405102e-07
		3 21 0.002372866650289132 22 0.99762648362237127 25 6.4972733949898909e-07
		3 1 0.012101168816974879 21 0.94516321287083171 22 0.042735618312193462
		2 1 0.30587389585357311 21 0.69412610414642684
		3 21 0.6471735346804669 22 0.35278881016744013 25 3.7655152093034454e-05
		3 21 0.2328307233411171 22 0.7671578962551473 25 1.1380403735465119e-05
		3 21 0.033651456790452838 22 0.96634419060587307 25 4.3526036741694176e-06
		3 21 0.0013630942578553883 22 0.99863651086466554 25 3.9487747900512488e-07
		3 1 0.27878134700101487 21 0.64953713443198247 25 0.071681518567002819
		3 1 0.011406961677969171 21 0.91493134487115357 22 0.073661693450877266
		3 21 0.9492174964794815 22 0.032672978479000407 25 0.01810952504151803
		3 21 0.62794377864279471 22 0.37186505256615732 25 0.0001911687910479257
		3 21 0.63554516748369316 22 0.36443324409209604 25 2.1588424210751505e-05
		3 21 0.20940803154744464 22 0.79058324062710239 25 8.7278254530545739e-06
		3 21 0.18638487937300546 22 0.81359830612409034 25 1.6814502904056759e-05
		3 21 0.018101001936298246 22 0.98189782068306952 25 1.1773806321896305e-06
		3 21 0.037276706576691868 22 0.96271643903806359 25 6.8543852445948571e-06
		3 21 0.00014314118032889901 22 0.99985681687306138 25 4.1946609663312953e-08
		3 21 0.0010764479961111943 22 0.99892324045466974 25 3.1154921899852069e-07
		3 21 0.00023913772297093393 22 0.99976076406630476 25 9.8210724159043985e-08
		3 1 0.076258648372992455 21 0.90477722371743685 22 0.018964127909570767
		3 1 0.067711251886304877 21 0.89520244750832212 25 0.037086300605373018
		3 1 0.11816689487281136 21 0.77402287742532994 25 0.10781022770185875
		3 1 0.15525882480421219 21 0.63706139044277377 25 0.20767978475301405
		3 1 0.065475906296777617 21 0.79898360536020918 25 0.13554048834301319
		3 1 0.055516155413587613 21 0.86648563515472599 25 0.077998209431686311
		3 1 0.046526446003029118 21 0.92582644110022572 25 0.027647112896745176
		2 1 0.093920668586064779 21 0.90607933141393526
		3 21 0.76839434272387397 22 0.23125936637560798 25 0.00034629090051805695
		3 21 0.78487588790138119 22 0.21402205939817801 25 0.0011020527004407981
		3 21 0.8113263501063015 22 0.18481826334237134 25 0.0038553865513272449
		3 21 0.8791028439015961 22 0.10710502400352603 25 0.013792132094877819
		3 21 0.86427985919245987 22 0.13122721892951611 25 0.0044929218780241009
		3 21 0.86598877076385505 22 0.13219221151719354 25 0.0018190177189514195
		3 21 0.83681809919628702 22 0.16239792947713474 25 0.00078397132657815282
		3 1 0.00034998569518604613 21 0.82111315178091115 22 0.17853686252390272
		3 21 0.39364471992642713 22 0.60633728236722473 25 1.7997706348147697e-05
		3 21 0.41778361693973159 22 0.58216252053256579 25 5.3862527702654476e-05
		3 21 0.33402759889730577 22 0.66592189465779827 25 5.0506444895893496e-05
		3 21 0.34107165241469728 22 0.65889652244043262 25 3.1825144870214262e-05
		3 21 0.36837651589370751 22 0.63161016763373601 25 1.331647255646385e-05
		3 21 0.33290358995674268 22 0.66708057243969199 25 1.5837603565252313e-05
		3 21 0.42179704731737588 22 0.57818813813207892 25 1.4814550545346714e-05
		3 21 0.42303065525288186 22 0.57695688205350137 25 1.2462693616595643e-05
		3 21 0.081949443095716612 22 0.91804542141217971 25 5.1354921036920954e-06
		3 21 0.077086206630000764 22 0.92291143641953566 25 2.3569504636664714e-06
		3 21 0.034758250279202305 22 0.96524030342937406 25 1.4462914237453995e-06
		3 21 0.037883070873442927 22 0.96211358158940319 25 3.3475371538219927e-06
		3 21 0.053927440650897419 22 0.94606527320968148 25 7.2861394208825624e-06
		3 21 0.10364762201038145 22 0.89633913250458108 25 1.3245485037507921e-05
		3 21 0.086451932052010502 22 0.91353608871122716 25 1.197923676234699e-05
		3 21 0.10249449358324698 22 0.89749528786681099 25 1.0218549942029711e-05
		3 21 0.0040437753586006746 22 0.99595560744044676 25 6.1720095240672072e-07
		3 21 0.0018541616378468699 22 0.99814562418694575 25 2.1417520749134315e-07
		3 21 0.00028653835948082106 22 0.99971342155135678 25 4.0089162282878082e-08
		3 21 0.00052798640859747436 22 0.99947193212452168 25 8.1466880833399819e-08
		3 21 0.0020025842860497568 22 0.99799696986231035 25 4.4585163997562822e-07
		3 21 0.0088771113548046839 22 0.99112089647156065 25 1.992173634547116e-06
		3 21 0.011199335691266278 22 0.98879840880552972 25 2.2555032039750629e-06
		3 21 0.0073214779197500277 22 0.99267717781523368 25 1.3442650163409061e-06
		3 1 0.52926567676838865 21 0.43320128343746789 25 0.037533039794143533
		3 1 0.55067303157930614 21 0.3300255884655644 25 0.11930137995512949
		3 1 0.53976780529745372 21 0.24608228550611944 25 0.21414990919642679
		3 1 0.42159183047625926 21 0.36199650206755996 25 0.21641166745618073
		3 1 0.43069292735607601 21 0.41584903891209873 25 0.15345803373182523
		3 1 0.19340452363284324 21 0.69370873965268853 25 0.11288673671446821
		2 1 0.15163885931552062 21 0.84836114068447943
		3 1 0.31690186715132007 18 0.15351312642682216 21 0.52958500642185791
		3 3 0.30928887195886084 4 0.64814035687499116 10 0.042570771166147992
		3 3 0.0069021979029090666 4 0.99285797828037892 10 0.00023982381671189534
		3 3 0.06270478919137544 4 0.93689449270562519 10 0.00040071810299946073
		3 3 0.15144876166213334 4 0.83302511922307687 10 0.015526119114789863
		3 3 0.021111616549937956 4 0.97761930734888447 10 0.0012690761011776223
		3 3 0.11495700629686667 4 0.87027864894230655 10 0.014764344760826895
		3 3 0.044560705190247678 4 0.95187324246698912 10 0.003566052342763219
		3 3 0.095414059410141167 4 0.89088145548445086 10 0.013704485105407995
		3 3 0.072804958630216188 4 0.91895432111046615 10 0.0082407202593176316
		3 3 0.087371229831791658 4 0.90038286093875741 10 0.01224590922945094
		3 3 0.082821084716407256 4 0.90625328255978899 10 0.010925632723803808
		3 3 0.016532885097358851 4 0.98331211422466014 10 0.00015500067798101402
		3 3 0.34718453616780215 4 0.44335083708526679 10 0.20946462674693106
		3 3 0.12150920084786973 4 0.87798328322921293 10 0.00050751592291736411
		3 3 0.008126136408105309 4 0.99167999118206696 6 0.00019387240982775809
		3 3 0.22261662137133525 4 0.76437238842853794 6 0.013010990200126926
		3 3 0.33039239519887709 4 0.64191155548917223 6 0.027696049311950681
		3 3 0.037397539352572555 4 0.96230533948588315 6 0.00029712116154436444
		3 3 0.077602697990767314 4 0.92158202353260443 6 0.00081527847662840006
		3 3 0.021257324478361501 4 0.9778172991918842 10 0.00092537632975418218
		3 3 0.14409790689809537 4 0.84408472100452059 6 0.011817372097383986
		3 3 0.05330843910249089 4 0.94278849114819896 10 0.0039030697493100913
		3 3 0.12119723998717886 4 0.86639405694124527 10 0.012408703071575796
		3 3 0.077631976325114635 4 0.91394738010627974 10 0.0084206435686056836
		3 3 0.093083999000618978 4 0.89442865670439331 10 0.012487344294987589
		3 3 0.27923151448545258 4 0.70855606682341976 6 0.012212418691127793
		3 3 0.15569146320343061 4 0.83480218142147056 6 0.0095063553750988471
		3 3 0.12615847352255866 4 0.86316491238290127 6 0.010676614094540043
		3 3 0.11129169985610848 4 0.87823557668184404 6 0.010472723462047476
		3 3 0.092030300377862334 4 0.89660388388371126 10 0.011365815738426282
		3 3 0.056209851085701493 4 0.94351674251472206 10 0.0002734063995764794
		3 3 0.2478283320314342 4 0.74571152536395424 6 0.0064601426046116128
		3 3 0.09159677665416148 4 0.90571824868328266 6 0.0026849746625556706
		3 3 0.06264793806605258 4 0.93429333863593311 6 0.0030587232980141417
		3 3 0.072304017509493612 4 0.92254676288805459 6 0.0051492196024518948
		3 3 0.078199781006794672 4 0.91548175147143629 6 0.0063184675217690606
		3 3 0.086140930621238274 4 0.90405244294090747 10 0.0098066264378542049
		3 3 0.042553906920688986 4 0.95510440025553234 6 0.0023416928237788245
		3 3 0.040141854805077717 4 0.95815909239833441 6 0.0016990527965877716
		3 3 0.057107580869469307 4 0.94114113687099388 6 0.0017512822595369129
		3 3 0.020112767725548149 4 0.97970177678018322 6 0.00018545549426866891
		3 3 0.013139579636677248 4 0.98648127548227083 6 0.00037914488105193317
		3 3 0.029604162682429398 4 0.96968921350423654 6 0.00070662381333398022
		3 3 0.022803070306558912 4 0.97635064689218676 6 0.00084628280125452189;
	setAttr ".wl[1344:1510].w"
		3 3 0.041238871251785783 4 0.95765527060770661 6 0.001105858140507658
		3 3 0.35078299614382091 4 0.63608045983884232 6 0.013136544017336754
		3 3 0.38536208615837986 4 0.5613283053306185 6 0.05330960851100168
		3 3 0.36880870093232127 4 0.51194557093862048 6 0.11924572812905826
		3 3 0.15876717646059599 4 0.8385084447224439 6 0.0027243788169600781
		3 3 0.05772202978065262 4 0.93835661457637898 6 0.0039213556429685366
		3 3 0.034854319808139314 4 0.96308726076470119 10 0.0020584194271596142
		3 3 0.032703187470394753 4 0.96500762226063452 10 0.0022891902689707762
		3 3 0.060123436089698182 4 0.9341019294045908 10 0.0057746345057109105
		3 3 0.068451131744534197 4 0.92528536969142972 10 0.006263498564036258
		3 3 0.087111613401534255 4 0.90473035325738582 6 0.008158033341079847
		3 3 0.10194366203765023 4 0.8877561662731267 6 0.010300171689223139
		3 3 0.10293132049176189 4 0.88427098621497069 10 0.01279769329326746
		3 3 0.10339009955050064 4 0.88215919884070215 10 0.014450701608797205
		3 3 0.0514934892917739 4 0.94583583116098646 6 0.0026706795472396369
		3 3 0.069186951408331074 4 0.92660079538220907 6 0.0042122532094599546
		3 3 0.13918021777157813 4 0.85060181032678994 6 0.010217971901631944
		3 3 0.17455836600707023 4 0.81367035725187375 6 0.011771276741055854
		3 3 0.2144089808730503 4 0.76775811984482578 10 0.017832899282123924
		3 3 0.26524742403898754 4 0.7202034597833602 6 0.014549116177652267
		3 3 0.19631633866390319 4 0.79410677731185064 6 0.0095768840242462829
		3 3 0.074722890077115911 4 0.92227080708124387 6 0.0030063028416402343
		3 3 0.046882670944126598 4 0.95143809159106507 6 0.0016792374648084043
		3 3 0.026537580162832936 4 0.97267011811421233 6 0.00079230172295469104
		3 3 0.013380349039747753 4 0.98630369199130863 6 0.00031595896894352852
		3 3 0.0064933344480254916 4 0.99340705598243151 10 9.960956954297302e-05
		3 3 0.0053596154723399075 4 0.99453100927846783 10 0.00010937524919219942
		3 3 0.021311561703164547 4 0.97782826323098582 6 0.00086017506584969107
		3 3 0.012633014938850171 4 0.98689793865967046 10 0.0004690464014794695
		3 3 0.011465988340029955 4 0.98801154251575596 10 0.00052246914421405705
		3 3 0.13358588927592105 4 0.86394693487883534 6 0.00246717584524369
		3 3 0.05030033524286736 4 0.94885488049663069 6 0.00084478426050179809
		3 3 0.024530845395058152 4 0.97496186130334439 6 0.00050729330159735746
		3 3 0.0086519551097190943 4 0.99118605287697104 6 0.00016199201330994548
		3 3 0.009395381787291282 4 0.99037845619997222 6 0.00022616201273647292
		3 3 0.014835729241620537 4 0.98467160683264132 6 0.00049266392573825445
		3 3 0.028308387727623511 4 0.97035423809424981 6 0.0013373741781265971
		3 3 0.04539146655974597 4 0.9518602086007284 6 0.0027483248395255488
		3 3 0.06533965587224988 4 0.9295624956454156 6 0.005097848482334578
		3 3 0.07741684230204389 4 0.91518697409909977 10 0.0073961835988563497
		3 3 0.081681335526792395 4 0.90892471870804203 10 0.0093939457651656382
		3 3 0.079553498493777977 4 0.91055014775485743 10 0.0098963537513647032
		3 3 0.09901715329915374 4 0.89213731170276311 6 0.0088455349980832779
		3 3 0.10128700686962959 4 0.89053622540674016 6 0.0081767677236301729
		3 3 0.10277506585295797 4 0.8900225289763164 6 0.00720240517072565
		3 3 0.10510171568123546 4 0.88906595792611987 6 0.0058323263926447089
		3 3 0.12625913535683006 4 0.86822070495300996 6 0.0055201596901598617
		3 3 0.20671556022931664 4 0.78505210552250926 6 0.0082323342481741332
		3 3 0.31424934650222669 4 0.67423768183088428 6 0.011512971666888779
		3 3 0.11834189770666827 4 0.88077808543183078 6 0.00088001686150085022
		3 3 0.20530010534115772 4 0.79169068771957096 6 0.003009206939271349
		3 3 0.31955159013557244 4 0.6740850852846284 6 0.0063633245797989737
		3 3 0.35643950706055294 4 0.63333525153154702 6 0.010225241407899915
		3 3 0.37973288954548734 4 0.60553255046681786 6 0.014734559987694738
		3 3 0.31340694788501389 4 0.67135577372154775 6 0.015237278393438521
		3 3 0.23918578638144208 4 0.74833215587963176 6 0.01248205773892617
		3 3 0.19457121945855385 4 0.79371619246063152 6 0.011712588080814575
		3 3 0.16575671354938007 4 0.82238983417590827 6 0.011853452274711672
		3 3 0.14120113801015158 4 0.84693005901732166 6 0.011868802972526824
		3 3 0.12189934481295604 4 0.86661617303383209 6 0.011484482153212039
		3 3 0.1352353836535701 4 0.86406458718509704 10 0.00070002916133298496
		3 3 0.10211697121738936 4 0.89737308184246789 10 0.00050994694014268272
		3 3 0.077545865864661917 4 0.92216090547905705 6 0.00029322865628096347
		3 3 0.38259524395514671 4 0.59679475657871439 6 0.020609999466138906
		3 3 0.33201052854102331 4 0.64654698253721299 6 0.021442488921763862
		3 3 0.24245240465252901 4 0.74606249472324937 6 0.011485100624221782
		3 3 0.008527509159496691 4 0.99108104161064392 10 0.00039144922985930746
		3 3 0.22516276308774083 4 0.75277409435266562 10 0.022063142559593452
		3 3 0.32415812069537631 4 0.6336240124514857 10 0.042217866853137921
		3 3 0.038499591865401389 4 0.96069074832375989 10 0.00080965981083861089
		3 3 0.078674618424160653 4 0.91899950483288795 10 0.0023258767429515342
		3 3 0.020319707853990628 4 0.978203458959646 10 0.0014768331863634068
		3 3 0.14206294636467423 4 0.83848871513162349 10 0.019448338503702287
		3 3 0.050470724083156657 4 0.94442401957019606 10 0.0051052563466472958
		3 3 0.11618484404286945 4 0.86691902508610696 10 0.016896130871023707
		3 3 0.07507198613092797 4 0.91519420395682982 10 0.0097338099122423125
		3 3 0.090664789471893256 4 0.89548791445173315 10 0.013847296076373717
		3 3 0.26811535607787546 4 0.7096072627423996 10 0.022277381179725039
		3 3 0.17041227285095586 4 0.81309839149331076 10 0.016489335655733416
		3 3 0.12407465935102091 4 0.85864060949730581 10 0.017284731151673213
		3 3 0.1028030687566022 4 0.88099684136546697 10 0.01620008987793085
		3 3 0.088032547110572526 4 0.89824670374955262 10 0.013720749139874894
		3 3 0.057838074141949879 4 0.94147485649988427 10 0.0006870693581658583
		3 3 0.22542856737767328 4 0.7604483542015964 10 0.014123078420730248
		3 3 0.08743293575328856 4 0.90707547194516636 10 0.0054915923015451526
		3 3 0.061361508942622003 4 0.93359758959197237 10 0.0050409014654057369
		3 3 0.070911514894489103 4 0.9210920233612484 10 0.0079964617442624935
		3 3 0.071754974984019809 4 0.91878487598156477 10 0.0094601490344154056
		3 3 0.081846461498222514 4 0.90594045978171245 10 0.012213078720065006
		3 3 0.040958835110792916 4 0.95530504704392116 10 0.0037361178452857981
		3 3 0.037676748761927538 4 0.95949817773734691 10 0.0028250735007255331
		3 3 0.055974405393046378 4 0.94057372911655346 10 0.003451865490400254
		3 3 0.021222319659898427 4 0.97831714242841794 10 0.00046053791168354855
		3 3 0.01319379776826754 4 0.98607368638349946 10 0.00073251584823295457
		3 3 0.030478805584511805 4 0.96797781318767628 10 0.0015433812278118604
		3 3 0.021845445340641693 4 0.97667974305358896 10 0.0014748116057694655
		3 3 0.041093672623515036 4 0.95661591567115978 10 0.0022904117053251993
		3 3 0.32343746918451777 4 0.65086101154714882 10 0.025701519268333351
		3 3 0.3667880216478831 4 0.56037351789083256 10 0.072838460461284296
		3 3 0.35213740294760543 4 0.50089110621015254 10 0.14697149084224193
		3 3 0.16124655005577859 4 0.83498168175743892 10 0.0037717681867825122
		3 3 0.053926172184048216 4 0.94008678505944931 10 0.0059870427565025201
		3 3 0.0333759844786789 4 0.96382943362358831 10 0.002794581897732865
		3 3 0.065135926814392675 4 0.92715138623420912 10 0.0077126869513982456
		3 3 0.07881420741594071 4 0.90930839447468048 10 0.011877398109378701
		3 3 0.094291061470699447 4 0.89057989651980496 10 0.015129042009495539
		3 3 0.099134741659055198 4 0.88580049195761756 10 0.015064766383327296
		3 3 0.049734115584829451 4 0.94602165968156315 10 0.0042442247336073134
		3 3 0.070030543568371087 4 0.92324973538931909 10 0.0067197210423098862
		3 3 0.14701142895964703 4 0.83577169917019789 10 0.017216871870154984
		3 3 0.17611730942621695 4 0.80392443969999272 10 0.019958250873790433
		3 3 0.26826764010408971 4 0.70693128121757021 10 0.024801078678340027
		3 3 0.20363366154004589 4 0.77945601609749693 10 0.016910322362457101
		3 3 0.0736973055465453 4 0.92091762670492672 10 0.0053850677485280619
		3 3 0.045073311135906312 4 0.95190897656188744 10 0.0030177123022062449
		3 3 0.025963528723262144 4 0.97254398246713636 10 0.0014924888096015205
		3 3 0.014417222585808392 4 0.98491936384541989 10 0.00066341356877181931
		3 3 0.007229466750165052 4 0.99256777463382295 10 0.00020275861601193546
		3 3 0.020579989437339956 4 0.97791134664178503 10 0.0015086639208751064
		3 3 0.012318900802152609 4 0.98699699484280057 10 0.0006841043550467658
		3 3 0.12598425363640092 4 0.8680596336984443 10 0.0059561126651548465
		3 3 0.049709066776694129 4 0.9482043020604467 10 0.0020866311628593009
		3 3 0.025728246172798515 4 0.97310136648488821 10 0.0011703873423132773
		3 3 0.010062060494958615 4 0.98956660401183782 10 0.00037133549320354542
		3 3 0.010052596234640301 4 0.98947951505488341 10 0.00046788871047630796
		3 3 0.014417964441932831 4 0.98466236365071125 10 0.00091967190735576436
		3 3 0.026964149322121485 4 0.9707968288948865 10 0.0022390217829921532
		3 3 0.042406148906628173 4 0.95336972161565359 10 0.0042241294777181871
		3 3 0.059792975407012908 4 0.932834673684654 10 0.0073723509083329711
		3 3 0.072108072965289718 4 0.91793288257724015 10 0.0099590444574700777
		3 3 0.078980695469255735 4 0.91009551507906961 10 0.01092378945167468
		3 3 0.090638671971111515 4 0.89595565856478909 10 0.013405669464099275
		3 3 0.099482706649492908 4 0.88767301225751694 10 0.012844281092990103
		3 3 0.10868481737649181 4 0.87949961501388929 10 0.011815567609618905
		3 3 0.11101140128879053 4 0.87908309715336386 10 0.009905501557845366
		3 3 0.12694607601376673 4 0.86316150183827167 10 0.0098924221479615437
		3 3 0.19626323187442235 4 0.78829185554428216 10 0.015444912581295414
		3 3 0.28426934291689221 4 0.69299506140490763 10 0.022735595678200306
		3 3 0.12268947107638527 4 0.87436446943152868 10 0.0029460594920859757
		3 3 0.19779426703737607 4 0.79363346107801547 10 0.0085722718846082749
		3 3 0.29451027836754179 4 0.68884982885835011 10 0.016639892774107944
		3 3 0.32231873129878297 4 0.6551893211822758 10 0.022491947518941187
		3 3 0.35297396131727848 4 0.61819785771551727 10 0.028828180967204298
		3 3 0.30722288382553065 4 0.66588027784061443 10 0.026896838333854894
		3 3 0.24985467406766307 4 0.72827215289681102 10 0.021873173035525894
		3 3 0.20530026726783698 4 0.77430098904388989 10 0.020398743688273165
		3 3 0.17037118709823057 4 0.80930183420813129 10 0.020326978693638129
		3 3 0.13931869166910291 4 0.84088095494461024 10 0.019800353386286978
		3 3 0.11471380765048346 4 0.86717539435096258 10 0.018110797998554029
		3 3 0.10317647399344818 4 0.89621316841862431 10 0.0006103575879275123
		3 3 0.080876003691531376 4 0.91828116338040078 10 0.00084283292806780008
		3 3 0.35643053067631869 4 0.60610859787274141 10 0.037460871450939841
		3 3 0.31854288825383897 4 0.64548138469554839 10 0.035975727050612728
		3 3 0.24202369568018964 4 0.74031898495462367 10 0.017657319365186597
		3 3 0.35979111725871654 4 0.5962370104853526 10 0.043971872255930765
		3 3 0.36395874711334764 4 0.5844410124370516 10 0.051600240449600737
		3 3 0.37152776966675372 4 0.56378431730265521 10 0.064687913030591015
		3 3 0.3768385076214954 4 0.54963098564288693 10 0.073530506735617618
		3 3 0.37379447300977087 4 0.56132538494753748 10 0.064880142042691602
		3 3 0.36487080561715596 4 0.58763218602642919 10 0.047497008356414822
		3 3 0.35886558991037637 4 0.6028241177744228 10 0.03831029231520084
		3 3 0.3749425786182119 4 0.55585866955987862 10 0.069198751821909349
		3 3 0.36699309188372509 4 0.57884400360846655 10 0.054162904507808397
		3 3 0.36042032225248638 4 0.59767988948547235 10 0.041899788262041222
		3 3 0.3745018593140032 4 0.55692238332684463 10 0.068575757359152278
		3 3 0.36622918825166012 4 0.58034844089889115 10 0.05342237084944871
		2 3 0.35938479446984167 4 0.59951272644317644;
	setAttr ".wl[1510:1549].w"
		1 10 0.041102479086981905
		3 3 0.32463061419472244 4 0.64857073145894073 10 0.026798654346336812
		3 3 0.31996001488273235 4 0.65045075394869922 10 0.029589231168568351
		3 3 0.32258369302355033 4 0.64058640342277062 10 0.036829903553679016
		3 3 0.32606909145487506 4 0.63186941295672128 10 0.042061495588403656
		3 3 0.3278358372298773 4 0.63443977202085899 10 0.037724390749263578
		3 3 0.33118512916509762 4 0.63907519764127996 10 0.02973967319362239
		3 3 0.33443044977508507 4 0.63937518100408797 10 0.026194369220826727
		3 3 0.32654157869697609 4 0.63360223810285143 10 0.0398561832001725
		3 3 0.32674707600439185 4 0.64090343746468359 10 0.032349486530924489
		3 3 0.33202767979079573 4 0.64043360678999606 10 0.02753871341920824
		3 3 0.32440391609289904 4 0.63657242580470919 10 0.039023658102391598
		3 3 0.32361149023872043 4 0.64535640291198615 10 0.031032106849293455
		3 3 0.32867906103138828 4 0.64526669517873458 10 0.026054243789877213
		3 3 0.39381244976442736 4 0.59314382852929648 6 0.013043721706276089
		3 3 0.38698277280567411 4 0.59791231109525611 6 0.015104916099069937
		3 3 0.38574774757010416 4 0.59404408876146919 6 0.020208163668426787
		3 3 0.3867295978124286 4 0.58939364516441251 6 0.02387675702315898
		3 3 0.39006348496412352 4 0.58930467156628363 6 0.020631843469592834
		3 3 0.39773466758997761 4 0.58740011662431701 6 0.014865215785705446
		3 3 0.40388884563885413 4 0.58372052147011644 6 0.012390632891029419
		3 3 0.38875315792380716 4 0.5890409873011353 6 0.022205854775057574
		3 3 0.39303365733933521 4 0.59014673269096618 6 0.016819609969698709
		3 3 0.40145584539258583 4 0.58520147664440036 6 0.013342677963013971
		3 3 0.3855493093047842 4 0.59271292774106976 6 0.021737762954145954
		3 3 0.38875651762527791 4 0.59519723013865966 6 0.016046252236062306
		3 3 0.39732285535464773 4 0.5902383511502225 6 0.012438793495129942
		3 3 0.41903981578379274 4 0.55553849126782284 6 0.02542169294838436
		3 3 0.41969666140413403 4 0.54935164356940169 6 0.030951695026464259
		3 3 0.42385471986157341 4 0.53511214761824544 6 0.041033132520181044
		3 3 0.42705483386058429 4 0.52522822172817574 6 0.04771694441123988
		3 3 0.42533900447939782 4 0.53385242123481236 6 0.040808574285789864
		3 3 0.42143931389443873 4 0.55069092231578287 6 0.027869763789778405
		3 3 0.41966437814261354 4 0.55881102845803254 6 0.021524593399353725
		3 3 0.42622456590267671 4 0.5296888558432401 6 0.044086578254083124
		3 3 0.42227169927927583 4 0.5450014571032189 6 0.032726843617505358
		3 3 0.42029108350985539 4 0.5557784168071076 6 0.023930499683037017
		3 3 0.42536276032686604 4 0.53053189487771579 6 0.044105344795418347
		3 3 0.42113012313250853 4 0.54640970019749979 6 0.032460176669991667
		3 3 0.41909223449644489 4 0.55743752195020202 6 0.023470243553353216;
	setAttr -s 33 ".pm";
	setAttr ".pm[0]" -type "matrix" 0.39370079331436153 -5.9447293556270525e-08 3.4418194858164092e-08 -0
		 -3.4418416434306427e-08 -1.4674309252113332e-06 0.39370079331163133 0 -5.9447165269797503e-08 -0.39370079331162833 -1.4674309304476543e-06 0
		 -2.4539598019054517e-08 3.7053841698174532e-15 -2.1453059803372914e-15 1;
	setAttr ".pm[1]" -type "matrix" 3.4668158790105531e-08 -4.1373400009597613e-07 -0.39370079331414848 -0
		 0.36802432407945718 0.1398513742482354 -1.1456049200332104e-07 -0 0.1398513909198609 -0.36802428020732941 3.990659576533057e-07 -0
		 -30.636034246389599 -40.25663515170843 4.1037228992768405e-05 1;
	setAttr ".pm[2]" -type "matrix" 2.7652256447129594e-07 -5.7827485632144088e-08 -0.39370079331426616 -0
		 -0.02184052935809954 0.3930945195846553 -7.3078541986281277e-08 0 0.39309450625123765 0.021840557230398433 2.728888069517068e-07 -0
		 25.197962214408086 -53.635316899674372 2.6106183952778479e-05 1;
	setAttr ".pm[3]" -type "matrix" 2.7434142071986071e-07 -1.0437083841062696e-07 -0.39370079331425817 -0
		 -0.0081402746952345274 0.39361662309665274 -1.1002092276380883e-07 0 0.39361661074180354 0.00814030301490987 2.721248093053296e-07 -0
		 1.6725563023055408 -53.726011646168459 2.8335666117909806e-05 1;
	setAttr ".pm[4]" -type "matrix" 1.6349801964145807e-07 -2.4377219818193013e-07 -0.39370079331425811 -0
		 0.22093224723410818 0.325866924038346 -1.1002092276380882e-07 -0 0.32586693033110387 -0.22093221698435592 2.721248093053296e-07 -0
		 -50.625355548339648 -29.97389722150546 2.8261959530409747e-05 1;
	setAttr ".pm[5]" -type "matrix" 2.8994387069587009e-07 -5.9941926574760921e-08 -0.39370079331425617 -0
		 -0.088934529825143147 0.38352434407734365 -1.2388909402501789e-07 0 0.38352432616125853 0.08893455499775367 2.6890895180164151e-07 -0
		 -21.502420564192661 -67.322916032476215 3.0570224996572921e-05 1;
	setAttr ".pm[6]" -type "matrix" -0.0049492990559076144 0.0004539170287464756 -0.39366942103057545 0
		 -0.3926269462004966 -0.028641754726451623 0.0049031677108278375 0 -0.028633846922877893 0.39265728447017562 0.00081274105215111217 -0
		 50.136786513325013 -14.394640806370875 -9.1278653020508322 1;
	setAttr ".pm[7]" -type "matrix" 0.0052100027760623108 0.0010129029332442948 -0.39366501566062939 -0
		 -0.3934810174263112 0.012091454676030077 -0.0051764562309498784 0 0.012077009099237897 0.39351375101254316 0.0011723482282391441 -0
		 30.495297504502144 -17.009300391764057 -7.5594078151944579 1;
	setAttr ".pm[8]" -type "matrix" -0.00087896097279774159 0.00068398724619082114 -0.39369921798933988 0
		 -0.39120631052232979 0.044238328161009713 0.00095025215801496261 0 0.044239772338154487 0.39120685819241136 0.00058088880513050122 -0
		 11.430369594170758 -26.741511119108658 -9.5363843687824215 1;
	setAttr ".pm[9]" -type "matrix" -0.0010477103734193971 0.012360744265226369 -0.39350530995215993 0
		 -0.18901870178847072 0.34517171696227233 0.011345758399355511 0 0.34535652031495212 0.1889550613154318 0.0050159210861513547 -0
		 -21.616247496301529 -15.196498558963597 -9.9147153212559083 1;
	setAttr ".pm[10]" -type "matrix" -0.00077259862862165407 -0.005241067123375515 -0.39366514827087457 0
		 -0.39311946210750609 -0.021360796006257312 0.0010559149693565551 0 -0.021372946589523639 0.39308592852660784 -0.0051914095936379601 -0
		 49.985965511200398 -15.242270986762348 6.9299398226335907 1;
	setAttr ".pm[11]" -type "matrix" -0.0002230788995858643 -0.0035873328887838568 -0.39368438619649621 0
		 -0.39347629123408107 0.013293153021347833 0.00010183104645510458 0 0.013291642224769255 0.39345994037691107 -0.0035928193218333518 -0
		 30.497345007065409 -17.385987864175068 9.1647048501897856 1;
	setAttr ".pm[12]" -type "matrix" 0.0025293841794614275 -0.003547313407055185 -0.39367668643142584 -0
		 -0.39254322779530082 0.030038721418128668 -0.0027927724126535921 0 0.030062016089977425 0.39253712478517233 -0.0033438957981642967 -0
		 12.398211435503125 -26.432234957446958 10.752059166580656 1;
	setAttr ".pm[13]" -type "matrix" 0.0023689852846214511 -0.020728531679096471 -0.39314759383660519 -0
		 -0.20163539400263192 0.33761204229352076 -0.0190154367275535 0 0.33813880155176346 0.20146650932844584 -0.0085847125322490603 -0
		 -21.045628907222238 -15.886185747271634 11.229342480235376 1;
	setAttr ".pm[14]" -type "matrix" -4.891922214917589e-08 1.6144449691032889e-07 -0.39370079331433128 -0
		 -0.28958370751392243 -0.26672390550568476 -7.3393046140781676e-08 0 -0.2667239046597692 0.28958366058871604 1.5189105603534291e-07 -0
		 11.478924448683303 65.162623994850335 2.1773161100670086e-05 1;
	setAttr ".pm[15]" -type "matrix" -7.086912631116583e-08 1.5308488760880881e-07 -0.39370079331433122 -0
		 -0.24972971299954078 -0.30436070027334572 -7.3393046140781636e-08 0 -0.30436069291788054 0.24972966664667998 1.5189105603534288e-07 -0
		 -9.9748092502373424 64.401399232128995 2.1505876069228946e-05 1;
	setAttr ".pm[16]" -type "matrix" -8.6916427824018158e-08 1.4457852694166534e-07 -0.39370079331433128 -0
		 -0.21556068370478476 -0.32944492265997993 -7.3393046140781636e-08 0 -0.32944491036378143 0.21556063841136283 1.5189105603534288e-07 -0
		 -40.940572397800047 60.349687973363388 2.0870061056145313e-05 1;
	setAttr ".pm[17]" -type "matrix" -8.6916427824018158e-08 1.4457852694166534e-07 -0.39370079331433128 -0
		 -0.21556068370478476 -0.32944492265997993 -7.3393046140781636e-08 0 -0.32944491036378143 0.21556063841136283 1.5189105603534288e-07 -0
		 -37.190514204954376 61.067198047510431 5.6856115478435285 1;
	setAttr ".pm[18]" -type "matrix" -4.891922214917589e-08 1.6144449691032889e-07 -0.39370079331433128 -0
		 -0.28958370751392243 -0.26672390550568476 -7.3393046140781676e-08 0 -0.2667239046597692 0.28958366058871604 1.5189105603534291e-07 -0
		 9.3711857838016002 55.837106578268092 2.1034910329164438e-05 1;
	setAttr ".pm[19]" -type "matrix" -7.086912631116583e-08 1.5308488760880881e-07 -0.39370079331433122 -0
		 -0.24972971299954078 -0.30436070027334572 -7.3393046140781636e-08 0 -0.30436069291788054 0.24972966664667998 1.5189105603534288e-07 -0
		 -12.026780518319374 54.902732342817558 -15.609508785928623 1;
	setAttr ".pm[20]" -type "matrix" -8.6916427824018158e-08 1.4457852694166534e-07 -0.39370079331433128 -0
		 -0.21556068370478476 -0.32944492265997993 -7.3393046140781636e-08 0 -0.32944491036378143 0.21556063841136283 1.5189105603534288e-07 -0
		 -36.998363685902568 50.610585552595232 -32.769658296152343 1;
	setAttr ".pm[21]" -type "matrix" -4.891922214917589e-08 1.6144449691032889e-07 -0.39370079331433128 -0
		 -0.28958370751392243 -0.26672390550568476 -7.3393046140781676e-08 0 -0.2667239046597692 0.28958366058871604 1.5189105603534291e-07 -0
		 9.3711857838016002 55.837106578268092 2.1034910329164438e-05 1;
	setAttr ".pm[22]" -type "matrix" -7.086912631116583e-08 1.5308488760880881e-07 -0.39370079331433122 -0
		 -0.24972971299954078 -0.30436070027334572 -7.3393046140781636e-08 0 -0.30436069291788054 0.24972966664667998 1.5189105603534288e-07 -0
		 -12.166509795567736 54.478031865578551 19.582814443824049 1;
	setAttr ".pm[23]" -type "matrix" -8.6916427824018158e-08 1.4457852694166534e-07 -0.39370079331433128 -0
		 -0.21556068370478476 -0.32944492265997993 -7.3393046140781636e-08 0 -0.32944491036378143 0.21556063841136283 1.5189105603534288e-07 -0
		 -28.472363853296748 43.333099684950199 39.484594718574826 1;
	setAttr ".pm[24]" -type "matrix" -8.6916427824018158e-08 1.4457852694166534e-07 -0.39370079331433128 -0
		 -0.21556068370478476 -0.32944492265997993 -7.3393046140781636e-08 0 -0.32944491036378143 0.21556063841136283 1.5189105603534288e-07 -0
		 -28.472363853296748 43.333099684950199 39.484594718574826 1;
	setAttr ".pm[25]" -type "matrix" 0.084886129647110953 -0.015393309062547145 -0.38413240879767524 -0
		 -0.38049623698534213 0.052843973532726365 -0.086200194958181542 0 0.054929973160053693 0.38983445474102896 -0.0034832999164570999 -0
		 50.279535468638585 23.22270056876193 17.321808983991275 1;
	setAttr ".pm[26]" -type "matrix" 0.077041522554876632 0.038827531414651686 -0.38413193445187072 -0
		 -0.33560557175422623 -0.18691810611797571 -0.086202478632285751 0 -0.1908765608570393 0.34431725466291041 -0.0034790932285620282 -0
		 11.034838958754717 37.408758014898389 17.32226507225208 1;
	setAttr ".pm[27]" -type "matrix" 0.081004988494514679 -0.029748264151061684 -0.38412699718425364 -0
		 -0.3660354313649975 0.11655546517123225 -0.086216295588999126 0 0.12023564959470243 0.37487361815160253 -0.0036762602253691229 -0
		 22.53513813946639 30.658005999703281 17.304647531419864 1;
	setAttr ".pm[28]" -type "matrix" 0.005226693017858268 -0.08613621497784596 -0.38412701975254437 -0
		 -0.039985893742811113 0.38205785658917535 -0.086216303233102157 0 0.39163004110355831 0.040158169607161821 -0.0036762359079424603 -0
		 30.794257935502344 6.1039166385562789 17.304650492190461 1;
	setAttr ".pm[29]" -type "matrix" -0.044515321074343979 -0.043470963164393438 -0.38875310562176768 0
		 -0.38638365159810611 0.065944080541458172 0.036870023642298591 0 0.061044267350679138 0.38569674372308688 -0.050119238078694929 -0
		 52.194547370429049 20.227749341758667 -15.294830220780087 1;
	setAttr ".pm[30]" -type "matrix" -0.0056537797001572155 -0.06196267490776762 -0.38875310580461936 0
		 -0.33675296419323392 -0.20059508939883 0.036870012751212322 0 -0.20387698814000757 0.33305037718187958 -0.050119244672376682 -0
		 12.168506692190888 36.968582404974214 -15.294830780907002 1;
	setAttr ".pm[31]" -type "matrix" -0.051752838475816895 -0.034405356314650616 -0.38876500673761294 0
		 -0.36765720294305965 0.13588842405680471 0.036916927729903876 0 0.13095862393146226 0.36790066795620141 -0.049992237254896314 -0
		 25.128805569991897 27.728232536023334 -15.285258593535005 1;
	setAttr ".pm[32]" -type "matrix" -0.052269048805443349 0.033615878012116115 -0.38876501000916053 0
		 -0.022925243437105794 0.39129513060159754 0.036916926295001054 0 0.3895415169077272 0.027539048101150935 -0.049992212873290733 -0
		 29.150233175755112 2.553161995162013 -15.285256769006814 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 23 ".ma";
	setAttr -s 33 ".dpf[0:32]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4 4 4 4 4 4 4 4 4 4 4;
	setAttr -s 23 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 3;
	setAttr ".bm" 3;
	setAttr ".ucm" yes;
	setAttr -s 23 ".ifcl";
createNode groupId -n "groupId1";
	rename -uid "DBAE9188-4FF1-75C1-3611-1BA67BCB2E7E";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	rename -uid "9DA04D52-4777-5BB8-18E0-76B3A79E7319";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:1382]";
createNode groupId -n "groupId2";
	rename -uid "EE36E6E0-4ACD-F77E-FC2F-87A13453DD24";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	rename -uid "18FC2EE5-453D-3406-BC1C-68AA503185BD";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[1383:1646]";
createNode tweak -n "tweak1";
	rename -uid "D23363F8-4F24-EC7A-103F-409C4E50D501";
createNode objectSet -n "skinCluster1Set";
	rename -uid "24BCCE81-4B07-1F48-AA8A-BF953A1EFEFF";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster1GroupId";
	rename -uid "D7FE97FF-48DA-7A3D-5321-E7B1C9AE70DA";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster1GroupParts";
	rename -uid "1518E8E8-441B-06B7-51D5-4DBEEE763F63";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet1";
	rename -uid "B80C77E6-45DE-712B-229E-25B874758598";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId4";
	rename -uid "146619A2-46E8-B033-A476-A59323AEE620";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts4";
	rename -uid "9D80B474-4271-2785-99A3-C29700C90475";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose1";
	rename -uid "5179A732-4BF1-A02B-8ED2-DD90B7D5CD3E";
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
	setAttr ".xm[2]" -type "matrix" "xform" 0.99999994039535522 1 1 -8.742273674598734e-08
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
		 1 0.040052472699769449 0.21731680522952906 -2.6350667820271982 0 4.8137702941894531
		 5.1540184020996094 -6.9680061340332031 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 0.99999988079072466 1 no;
	setAttr ".xm[26]" -type "matrix" "xform" 1 1 1 -1.2217477044399549e-05 9.63543069385108e-09
		 -0.6461707036807085 0 18.944175720214844 -1.9073486328125e-06 9.5367431640625e-07 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1.0000001192093038 1.0000001788139663
		 1 no;
	setAttr ".xm[27]" -type "matrix" "xform" 0.99999994039535522 0.99999994039535522
		 1 0.00048819260574264639 -0.00011773567276488662 0.81655685693557023 0 17.942811965942383
		 -3.814697265625e-06 -4.76837158203125e-07 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 no;
	setAttr ".xm[28]" -type "matrix" "xform" 1.0000002384185791 1.0000001192092896 0.99999994039535522 -1.4551912491671435e-11
		 6.2652347817005297e-08 1.158241514956869 0 15.779938697814941 2.288818359375e-05
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1.0000000596046483 1.0000000596046483
		 1 no;
	setAttr ".xm[29]" -type "matrix" "xform" 0.99999988079071045 0.99999988079071045
		 1 0.11135986048837876 -0.11331166563071207 -2.6217470064907147 0 4.8137779235839844
		 5.1540260314941406 6.9675636291503906 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 0.99999988079072466 1 no;
	setAttr ".xm[30]" -type "matrix" "xform" 1 1 1 5.0142256276613914e-09 3.2341471174434623e-08
		 -0.70627399865029228 0 18.944183349609375 -1.9073486328125e-06 9.5367431640625e-07 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1.0000001192093038 1.0000001192093038
		 1 no;
	setAttr ".xm[31]" -type "matrix" "xform" 1 1.0000001192092896 1 -0.00034523009893123622
		 2.5386829186347731e-09 0.89129688798087237 0 17.94281005859375 -7.62939453125e-06
		 -4.76837158203125e-07 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[32]" -type "matrix" "xform" 1.0000002384185791 1.0000001192092896 1 1.4551912491671435e-11
		 6.2590503971119613e-08 1.158241514956869 0 15.779935836791992 2.09808349609375e-05
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 0.99999988079072466 1 no;
	setAttr -s 26 ".m";
	setAttr -s 26 ".p";
	setAttr -s 33 ".g[26:32]" yes yes no no no yes no;
	setAttr ".bp" yes;
createNode geomBind -n "geomBind1";
	rename -uid "2A990B81-4882-B9E8-657F-97811C531592";
	setAttr ".mi" 3;
createNode animCurveTL -n "b_RightFoot02_translateX";
	rename -uid "8E152965-4D12-5713-71FA-3286EA490EDA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 15.779935836791992 1000 15.779935836791992;
createNode animCurveTL -n "b_Root_translateX";
	rename -uid "DA1F680F-4262-2260-CADE-299798A99B40";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 6.2330578032288031e-08 1000 6.2330578032288031e-08;
createNode animCurveTL -n "b_Hip_translateX";
	rename -uid "62145899-4F57-0F81-25DB-FC9B65B5B728";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1.6904879203138989e-06 1000 1.6904879203138989e-06;
createNode animCurveTL -n "b_Spine01_translateX";
	rename -uid "90FA1727-464D-BE4F-2F8A-EA8EC2DFEEDA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 12.850601196289063 1000 12.850601196289063;
createNode animCurveTL -n "b_Spine02_translateX";
	rename -uid "947A72D4-4252-F3B9-BE19-83BA16550AE9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 21.655754089355469 1000 21.655754089355469;
createNode animCurveTL -n "b_Neck_translateX";
	rename -uid "C3CF58E0-4B8A-AFFA-F334-EFAEF0D46A66";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 25.649145126342773 1000 25.649145126342773;
createNode animCurveTL -n "b_Head_translateX";
	rename -uid "16ACB541-4D89-4BED-14B6-089F38F3027A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 13.376956939697266 1000 13.376956939697266;
createNode animCurveTL -n "b_RightUpperArm_translateX";
	rename -uid "C97D58E7-4AFC-D057-B035-62A58C413290";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 18.675959190670774 1000 18.675959190670774;
createNode animCurveTL -n "b_RightForeArm_translateX";
	rename -uid "10CC522E-466B-2EAB-8A9E-20985EBAAD72";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 18.24924228424986 1000 18.24924228424986;
createNode animCurveTL -n "b_RightWrist_translateX";
	rename -uid "AF29A0EC-4126-24C1-F741-3B82EE7DC792";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 16.76844696634711 1000 16.76844696634711;
createNode animCurveTL -n "b_RightHand_translateX";
	rename -uid "FC15039A-413C-580F-3CA3-10B30F68233B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 11.20559500421987 1000 11.20559500421987;
createNode pairBlend -n "pairBlend1";
	rename -uid "E9EF6202-4B33-EA89-DAD2-C197B3809CBB";
	setAttr ".rm" 2;
createNode animCurveTL -n "pairBlend1_inTranslateX1";
	rename -uid "5C8683F4-44B8-5453-C3D3-EAA5087239DF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 11.20559500421987 1000 11.20559500421987;
createNode animCurveTL -n "b_LeftUpperArm_translateX";
	rename -uid "0F07E05C-4461-CD71-D195-3194DD6B5111";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 18.677638056112624 1000 18.677638056112624;
createNode animCurveTL -n "b_LeftForeArm_translateX";
	rename -uid "BA0DC587-4055-68B5-5F0C-5C8A884F83AA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 18.057607177181776 1000 18.057607177181776;
createNode animCurveTL -n "b_LeftWrist_translateX";
	rename -uid "694DF1D7-449A-AFDA-8B37-BE949B2AE466";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 16.905768920515541 1000 16.905768920515541;
createNode animCurveTL -n "b_LeftHand_translateX";
	rename -uid "CDCD1AC1-4011-A63D-5585-BBB60A4F07B0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 11.108568591316594 1000 11.108568591316594;
createNode pairBlend -n "pairBlend2";
	rename -uid "CBDB91AD-4851-FB02-A6AE-92986FD222EA";
	setAttr ".rm" 2;
createNode animCurveTL -n "pairBlend2_inTranslateX1";
	rename -uid "BD41A1A9-4A12-D437-5F1E-E1AEF884A2A3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 11.108568591316594 1000 11.108568591316594;
createNode animCurveTL -n "b_Tail01_translateX";
	rename -uid "D430B648-46DC-B872-C4B7-4C8CE14EF6A3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 4.2603816986083984 1000 4.2603816986083984;
createNode animCurveTL -n "b_Tail02_translateX";
	rename -uid "AA48FC67-4FE3-58BD-EFDB-ABA3950C8912";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 12.411914825439453 1000 12.411914825439453;
createNode animCurveTL -n "b_Tail03_translateX";
	rename -uid "D2353759-4070-5938-E7EA-08AD6BB00B08";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 24.240320205688477 1000 24.240320205688477;
createNode animCurveTL -n "b_Tail05_translateX";
	rename -uid "0CD8235C-4836-6A7C-A0A6-0380CB7A7247";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 20.434858039432498 1000 20.434858039432498;
createNode animCurveTL -n "b_Tail04_translateX";
	rename -uid "F87F2BA6-496B-1B37-2013-418E1FC5C000";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -1.1652956282098803 1000 -1.1652956282098803;
createNode animCurveTL -n "b_Tail02_translateX1";
	rename -uid "99FC5601-40A8-7D29-6A08-149A53461C0C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 13.655589496305408 1000 13.655589496305408;
createNode animCurveTL -n "b_Tail03_translateX1";
	rename -uid "7BF8D928-4488-4FBC-CC06-E2B888491387";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 19.316033339125489 1000 19.316033339125489;
createNode animCurveTL -n "b_Tail06_translateX";
	rename -uid "557CFD50-495F-3C4A-AAF6-7EB9F750E6BE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -1.1652956282098803 1000 -1.1652956282098803;
createNode animCurveTL -n "b_Tail02_translateX2";
	rename -uid "D3D076A2-41D3-E496-6621-CFA353E5CF51";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 13.85295379324724 1000 13.85295379324724;
createNode animCurveTL -n "b_Tail03_translateX2";
	rename -uid "338390DA-445F-9FD9-BCCD-109EF6A01A88";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 11.482117904302346 1000 11.482117904302346;
createNode animCurveTL -n "b_Tail05_translateX1";
	rename -uid "35732D57-4B45-1F76-2F37-52902D47E62E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 11.482117904302346 1000 11.482117904302346;
createNode animCurveTL -n "b_LeftLeg01_translateX";
	rename -uid "238EDB54-42F6-33D6-3086-A8A820AA16DA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 4.8137702941894531 1000 4.8137702941894531;
createNode animCurveTL -n "b_LeftLeg02_translateX";
	rename -uid "82169BEF-46AD-1982-443E-65B969143FF0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 18.944175720214844 1000 18.944175720214844;
createNode animCurveTL -n "b_LeftFoot01_translateX";
	rename -uid "A2162E6A-41CF-F809-BA28-72915A810535";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 17.942811965942383 1000 17.942811965942383;
createNode animCurveTL -n "b_LeftFoot02_translateX";
	rename -uid "20777C7B-430E-87EA-7369-D29E33D18790";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 15.779938697814941 1000 15.779938697814941;
createNode pairBlend -n "pairBlend3";
	rename -uid "EC5DDCA9-4890-C9AF-8D3C-3AA9DF930D64";
	setAttr ".rm" 2;
createNode animCurveTL -n "pairBlend3_inTranslateX1";
	rename -uid "8E0D6CF4-4E60-94F7-2A59-BD9D9BE5913C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 15.779938697814941 1000 15.779938697814941;
createNode animCurveTL -n "b_RightLeg01_translateX";
	rename -uid "0F3158F4-4D67-D5A5-E1B9-B4938B02650C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 4.8137779235839844 1000 4.8137779235839844;
createNode animCurveTL -n "b_RightLeg02_translateX";
	rename -uid "AD1AAE46-4261-A57E-BD4D-478BFC6B148A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 18.944183349609375 1000 18.944183349609375;
createNode animCurveTL -n "b_RightFoot01_translateX";
	rename -uid "F8DC0417-4E3F-AC7D-49C2-C1958B65F055";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 17.94281005859375 1000 17.94281005859375;
createNode animCurveTL -n "b_RightFoot02_translateY";
	rename -uid "6B294D54-4C1C-DBE0-B187-429E5201DAF7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 2.09808349609375e-05 1000 2.09808349609375e-05;
createNode animCurveTL -n "b_Root_translateY";
	rename -uid "27B22F63-4F21-37BB-443E-3F825D6BB030";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1000 0;
createNode animCurveTL -n "b_Hip_translateY";
	rename -uid "D93526B6-4F41-B2AE-4B25-C5B1BDA71317";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 26.748403549194336 1000 26.748403549194336;
createNode animCurveTL -n "b_Spine01_translateY";
	rename -uid "E12F5F27-4803-EC33-E638-0E9189EB79E7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 3.814697265625e-06 1000 3.814697265625e-06;
createNode animCurveTL -n "b_Spine02_translateY";
	rename -uid "6F4ADA16-4650-1D09-84FD-6CAFCBB4CDAA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.000118255615234375 1000 -0.000118255615234375;
createNode animCurveTL -n "b_Neck_translateY";
	rename -uid "2DC43C95-4BDE-BD80-B4CD-C3B719BFC0C2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1000 0;
createNode animCurveTL -n "b_Head_translateY";
	rename -uid "B3F5159D-4961-A8CE-1354-2B9106D57F42";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -3.5762786865234375e-06 1000 -3.5762786865234375e-06;
createNode animCurveTL -n "b_RightUpperArm_translateY";
	rename -uid "20EBD096-4F8E-4F46-199C-B9B2E364B7C8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -4.2973716301368308 1000 -4.2973716301368308;
createNode animCurveTL -n "b_RightForeArm_translateY";
	rename -uid "AC76A489-474D-785F-2103-5AA22D5FF9E5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.60621496350072956 1000 -0.60621496350072956;
createNode animCurveTL -n "b_RightWrist_translateY";
	rename -uid "CE6672E4-43CF-79A0-E31D-E9B54229A033";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 8.6979165543211767 1000 8.6979165543211767;
createNode animCurveTL -n "b_RightHand_translateY";
	rename -uid "2D6A3BE4-4EA4-4B20-460E-959C094C740B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.18036411645980718 1000 -0.18036411645980718;
createNode animCurveTL -n "pairBlend1_inTranslateY1";
	rename -uid "32BCEDC7-4A18-EA33-3BEB-A0A1CB09078D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.18036411645980718 1000 -0.18036411645980718;
createNode animCurveTL -n "b_LeftUpperArm_translateY";
	rename -uid "2144E7C2-4210-3A43-8B51-96B124D4F4B7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -4.2972641022727531 1000 -4.2972641022727531;
createNode animCurveTL -n "b_LeftForeArm_translateY";
	rename -uid "D682A515-4B79-7B52-FD5F-F4B91B548491";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.64413197292899149 1000 -0.64413197292899149;
createNode animCurveTL -n "b_LeftWrist_translateY";
	rename -uid "7AC27124-4D1B-FD38-6DA2-87BDD10C1B61";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 8.4901391167076437 1000 8.4901391167076437;
createNode animCurveTL -n "b_LeftHand_translateY";
	rename -uid "C6F71945-43BB-FA96-B5B5-948FBAD5C862";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.10307713074418484 1000 0.10307713074418484;
createNode animCurveTL -n "pairBlend2_inTranslateY1";
	rename -uid "32DB9637-4367-0C32-C5FD-F3B42236530D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.10307713074418484 1000 0.10307713074418484;
createNode animCurveTL -n "b_Tail01_translateY";
	rename -uid "4EA58822-438D-B230-B1C8-C8974F10BA11";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 15.958770751953125 1000 15.958770751953125;
createNode animCurveTL -n "b_Tail02_translateY";
	rename -uid "5E628D23-4570-EECC-CA9C-0DAE0B75D797";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 7.62939453125e-06 1000 7.62939453125e-06;
createNode animCurveTL -n "b_Tail03_translateY";
	rename -uid "51716A90-45A3-5982-E655-D5924DF37870";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1000 0;
createNode animCurveTL -n "b_Tail05_translateY";
	rename -uid "6978BFD4-452D-1990-35BA-6EB7F20D378F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.31018519859221877 1000 -0.31018519859221877;
createNode animCurveTL -n "b_Tail04_translateY";
	rename -uid "1990FFE7-4D3A-9DB7-27A6-14B046C1D184";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 8.0866788938982026 1000 8.0866788938982026;
createNode animCurveTL -n "b_Tail02_translateY1";
	rename -uid "05AEC4C2-4B84-4DEE-000D-35B5F4C12622";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.20392618497759915 1000 -0.20392618497759915;
createNode animCurveTL -n "b_Tail03_translateY1";
	rename -uid "EA937663-48FC-020D-529F-2BB45419D6C0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.60781264577373673 1000 0.60781264577373673;
createNode animCurveTL -n "b_Tail06_translateY";
	rename -uid "FE11C26D-426F-0A81-4B2F-549320FBBCB4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 8.0866788938982026 1000 8.0866788938982026;
createNode animCurveTL -n "b_Tail02_translateY2";
	rename -uid "43DEA3BC-455C-8CC6-522F-4C93F2978021";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.19724971232937172 1000 0.19724971232937172;
createNode animCurveTL -n "b_Tail03_translateY2";
	rename -uid "E1C6E829-48B9-AA4D-B75B-4EAE4CCD634D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 8.3350428031729002 1000 8.3350428031729002;
createNode animCurveTL -n "b_Tail05_translateY1";
	rename -uid "4B9DB35D-470B-CAC3-C000-169CE6C6B9C4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 8.3350428031729002 1000 8.3350428031729002;
createNode animCurveTL -n "b_LeftLeg01_translateY";
	rename -uid "9E3C2308-41AA-121E-AC80-9A97FE045BB1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 5.1540184020996094 1000 5.1540184020996094;
createNode animCurveTL -n "b_LeftLeg02_translateY";
	rename -uid "E12DEA2D-42DA-71AE-4A36-A3A7BE820051";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -1.9073486328125e-06 1000 -1.9073486328125e-06;
createNode animCurveTL -n "b_LeftFoot01_translateY";
	rename -uid "95EB8A01-4C20-D9E7-E17D-469F64AF0E16";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -3.814697265625e-06 1000 -3.814697265625e-06;
createNode animCurveTL -n "b_LeftFoot02_translateY";
	rename -uid "64CDF6C1-4EB3-6D00-797B-3E9AE66A0333";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 2.288818359375e-05 1000 2.288818359375e-05;
createNode animCurveTL -n "pairBlend3_inTranslateY1";
	rename -uid "3F424C9E-40C8-4DDF-1E29-3BA4AB0846D0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 2.288818359375e-05 1000 2.288818359375e-05;
createNode animCurveTL -n "b_RightLeg01_translateY";
	rename -uid "062F9574-4265-ADD2-EC5B-BEB97908DCC1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 5.1540260314941406 1000 5.1540260314941406;
createNode animCurveTL -n "b_RightLeg02_translateY";
	rename -uid "E23CFBC7-40CB-DBF3-709A-D9BD3949ACFA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -1.9073486328125e-06 1000 -1.9073486328125e-06;
createNode animCurveTL -n "b_RightFoot01_translateY";
	rename -uid "2CF49B83-4E85-3F62-8484-8394C8DF35BA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -7.62939453125e-06 1000 -7.62939453125e-06;
createNode animCurveTL -n "b_RightFoot02_translateZ";
	rename -uid "78F0B294-4A95-68C1-5052-9E97C7CEEC13";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1000 0;
createNode animCurveTL -n "b_Root_translateZ";
	rename -uid "32921F78-411F-E418-3902-3F8103F7A232";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1000 0;
createNode animCurveTL -n "b_Hip_translateZ";
	rename -uid "B7D42724-48FD-3B11-E294-84A9BA307135";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 42.93817138671875 1000 42.93817138671875;
createNode animCurveTL -n "b_Spine01_translateZ";
	rename -uid "B4033940-4AF7-CA73-8D30-68A171ECCA6E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 2.0315565052442253e-06 1000 2.0315565052442253e-06;
createNode animCurveTL -n "b_Spine02_translateZ";
	rename -uid "96D963D7-442C-6D8F-12A6-B299FBFB1239";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 2.8129034035373479e-06 1000 2.8129034035373479e-06;
createNode animCurveTL -n "b_Neck_translateZ";
	rename -uid "49FE890E-4E1F-5E32-161F-599B70549428";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 7.3706587500055321e-08 1000 7.3706587500055321e-08;
createNode animCurveTL -n "b_Head_translateZ";
	rename -uid "46A88EDE-4D05-67E6-11BC-5E843820BB93";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1.2611906186066335e-07 1000 1.2611906186066335e-07;
createNode animCurveTL -n "b_RightUpperArm_translateZ";
	rename -uid "25F96A21-4FFF-506E-2199-DBA93EE8CB41";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 8.4802881890573811 1000 8.4802881890573811;
createNode animCurveTL -n "b_RightForeArm_translateZ";
	rename -uid "9B4035BC-4E3E-B361-4346-AC8C5CAE8B59";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.79192192195109534 1000 -0.79192192195109534;
createNode animCurveTL -n "b_RightWrist_translateZ";
	rename -uid "68471E5E-4971-14BA-5A89-E0B6D05B5E88";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1.7902961379782658 1000 1.7902961379782658;
createNode animCurveTL -n "b_RightHand_translateZ";
	rename -uid "55E19AEF-42B9-EF87-BB61-84994919201D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.00050456120321619468 1000 0.00050456120321619468;
createNode animCurveTL -n "pairBlend1_inTranslateZ1";
	rename -uid "8156308F-45D5-5BE8-B7A1-89B27DACC235";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.00050456120321619468 1000 0.00050456120321619468;
createNode animCurveTL -n "b_LeftUpperArm_translateZ";
	rename -uid "089C3356-4E7E-A42B-E43B-7285A2351D87";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -6.8244679574164175 1000 -6.8244679574164175;
createNode animCurveTL -n "b_LeftForeArm_translateZ";
	rename -uid "754E6857-40C8-3FF9-6879-68801637DD87";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -2.2257531009857257 1000 -2.2257531009857257;
createNode animCurveTL -n "b_LeftWrist_translateZ";
	rename -uid "C5D70DE4-4383-62BB-34C6-24B591306657";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -1.49740469340112 1000 -1.49740469340112;
createNode animCurveTL -n "b_LeftHand_translateZ";
	rename -uid "469E3B1B-44B6-E4A1-A67D-FAAECC0DF722";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.0002425780929622473 1000 0.0002425780929622473;
createNode animCurveTL -n "pairBlend2_inTranslateZ1";
	rename -uid "5BDD4370-4E12-B81F-239D-ABB2F01E8E7D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.0002425780929622473 1000 0.0002425780929622473;
createNode animCurveTL -n "b_Tail01_translateZ";
	rename -uid "F361728A-41B2-BF83-CAE0-00A98EE8BA93";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -1.1444091796875e-05 1000 -1.1444091796875e-05;
createNode animCurveTL -n "b_Tail02_translateZ";
	rename -uid "D9BC355B-4585-4C13-E47D-008C990B2231";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 2.6728503144113347e-07 1000 2.6728503144113347e-07;
createNode animCurveTL -n "b_Tail03_translateZ";
	rename -uid "03D372FC-4C08-1C27-3688-318EF202ACDB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 6.3581501308362931e-07 1000 6.3581501308362931e-07;
createNode animCurveTL -n "b_Tail05_translateZ";
	rename -uid "C8C4C776-46F3-FA41-1212-A787C74B48DA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -5.6855900419674592 1000 -5.6855900419674592;
createNode animCurveTL -n "b_Tail04_translateZ";
	rename -uid "B0474150-4F73-9694-E1A7-6BBA737A0AD3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -6.4731602471500633e-06 1000 -6.4731602471500633e-06;
createNode animCurveTL -n "b_Tail02_translateZ1";
	rename -uid "0F63EA99-4B1B-D372-0706-EC943FCC52A1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 15.609529820838954 1000 15.609529820838954;
createNode animCurveTL -n "b_Tail03_translateZ1";
	rename -uid "6C318C3D-4B3F-70E4-AD24-4E9902673B93";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 17.160149510223718 1000 17.160149510223718;
createNode animCurveTL -n "b_Tail06_translateZ";
	rename -uid "E76E99D8-46F5-AA38-F622-10988FAF5F73";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -6.4731602471500633e-06 1000 -6.4731602471500633e-06;
createNode animCurveTL -n "b_Tail02_translateZ2";
	rename -uid "08E0D503-4535-F71D-16CE-28BFE3A91E00";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -19.582793408913723 1000 -19.582793408913723;
createNode animCurveTL -n "b_Tail03_translateZ2";
	rename -uid "3C038A9E-4224-72F4-1CD4-07856D471385";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -19.901780274750767 1000 -19.901780274750767;
createNode animCurveTL -n "b_Tail05_translateZ1";
	rename -uid "D6AE00EC-4C62-A867-8040-0DB6511DFFDB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -19.901780274750767 1000 -19.901780274750767;
createNode animCurveTL -n "b_LeftLeg01_translateZ";
	rename -uid "A61B2651-47E2-989F-B463-0E910FD341D3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -6.9680061340332031 1000 -6.9680061340332031;
createNode animCurveTL -n "b_LeftLeg02_translateZ";
	rename -uid "F3D8DF19-4F98-BC06-EFEA-F797DFCEFC81";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 9.5367431640625e-07 1000 9.5367431640625e-07;
createNode animCurveTL -n "b_LeftFoot01_translateZ";
	rename -uid "2DBD3777-414F-EC41-F44A-8DB7984829EF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -4.76837158203125e-07 1000 -4.76837158203125e-07;
createNode animCurveTL -n "b_LeftFoot02_translateZ";
	rename -uid "CAE9ABA6-458C-5905-2931-CFA22488BDFE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1000 0;
createNode animCurveTL -n "pairBlend3_inTranslateZ1";
	rename -uid "88E429BD-4083-39C5-2FF2-FBA380CAC891";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1000 0;
createNode animCurveTL -n "b_RightLeg01_translateZ";
	rename -uid "5E1817CC-41CC-7753-9B68-00AF162BEEA1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 6.9675636291503906 1000 6.9675636291503906;
createNode animCurveTL -n "b_RightLeg02_translateZ";
	rename -uid "BB6CDFB2-4441-1A48-EDE4-06948E0B0DB9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 9.5367431640625e-07 1000 9.5367431640625e-07;
createNode animCurveTL -n "b_RightFoot01_translateZ";
	rename -uid "ECC4F5C1-4A59-DCAF-6F6F-C58DA1ED9F6A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -4.76837158203125e-07 1000 -4.76837158203125e-07;
createNode animCurveTA -n "b_RightFoot02_rotateX";
	rename -uid "D149E763-4CB8-BA66-CCC7-F4A6237C342D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 8.337631696164749e-10 1000 8.337631696164749e-10;
createNode animCurveTA -n "b_Root_rotateX";
	rename -uid "E45A1040-4BE8-13D3-5247-D09E40C60E36";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.00021355709759518504 1000 -0.00021355709759518504;
createNode animCurveTA -n "b_Hip_rotateX";
	rename -uid "B91D68CB-463E-3C44-B06C-08A8D809163C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 90.00006103515625 1000 90.00006103515625;
createNode animCurveTA -n "b_Spine01_rotateX";
	rename -uid "A0B0761A-48AB-654B-1C35-83B744E2C898";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -5.0089538490283303e-06 1000 -5.0089538490283303e-06;
createNode animCurveTA -n "b_Spine02_rotateX";
	rename -uid "9CA39294-46CB-C987-5511-9EA9CEC0B758";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 5.3774215302837547e-06 1000 5.3774215302837547e-06;
createNode animCurveTA -n "b_Neck_rotateX";
	rename -uid "369788B0-4622-EDFB-3FB3-EA9C1EC76465";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 3.6823530878173083e-13 1000 3.6823530878173083e-13;
createNode animCurveTA -n "b_Head_rotateX";
	rename -uid "E002A8E4-4815-C144-8130-42955F057B07";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 2.0718048290291335e-06 1000 2.0718048290291335e-06;
createNode animCurveTA -n "b_RightUpperArm_rotateX";
	rename -uid "E5AF1E31-48C4-4564-2CF6-71BEBB7B1CA0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.13989543033981144 1000 -0.13989543033981144;
createNode animCurveTA -n "b_RightForeArm_rotateX";
	rename -uid "8471ADB1-4A5E-E0AC-30F3-219C7A42C8A9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.0072658046254533469 1000 -0.0072658046254533469;
createNode animCurveTA -n "b_RightWrist_rotateX";
	rename -uid "FF57C7DF-4C82-8EBC-B5BC-F18DE0501C81";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.014650544707912667 1000 -0.014650544707912667;
createNode animCurveTA -n "b_RightHand_rotateX";
	rename -uid "E2A1684B-4416-8D68-547F-B7AA62B3671E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1000 0;
createNode animCurveTA -n "effector5_rotateX";
	rename -uid "08BCC06C-4521-B519-3BDF-4BA9ACB0E216";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1000 0;
createNode animCurveTA -n "b_LeftUpperArm_rotateX";
	rename -uid "EFDDD843-4BAF-E1B3-514C-FAA544A849BF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.65023931459996354 1000 0.65023931459996354;
createNode animCurveTA -n "b_LeftForeArm_rotateX";
	rename -uid "BADBD32B-49C4-7BCF-155B-42BD3777D8A6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.22784558446556569 1000 -0.22784558446556569;
createNode animCurveTA -n "b_LeftWrist_rotateX";
	rename -uid "64B97D6F-484B-D2CF-6E53-00BF06D7C5F2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.0039680404327971245 1000 -0.0039680404327971245;
createNode animCurveTA -n "b_LeftHand_rotateX";
	rename -uid "0E25FC8D-403D-B24C-8695-05B55A144808";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1000 0;
createNode animCurveTA -n "effector6_rotateX";
	rename -uid "76AE503C-4CC9-F205-F39B-9E9CB97C80EE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1000 0;
createNode animCurveTA -n "b_Tail01_rotateX";
	rename -uid "6A653F26-4BA0-A37A-0CCE-489ABC1223BA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 360.00003051757813 1000 360.00003051757813;
createNode animCurveTA -n "b_Tail02_rotateX";
	rename -uid "681A5B3E-4270-6DBC-CFE0-9C990408F5B1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1000 0;
createNode animCurveTA -n "b_Tail03_rotateX";
	rename -uid "AE09AB45-4186-4570-95D0-23A97B11959E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1000 0;
createNode animCurveTA -n "b_Tail05_rotateX";
	rename -uid "8F341624-4112-75E6-47CD-778696DF3C68";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1000 0;
createNode animCurveTA -n "b_Tail04_rotateX";
	rename -uid "BA4DE00B-48AB-8EB0-5782-B2B5EC5728E5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 360.00003051757813 1000 360.00003051757813;
createNode animCurveTA -n "b_Tail02_rotateX1";
	rename -uid "14B15FDB-499F-9C98-6684-67A257F521C3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1000 0;
createNode animCurveTA -n "b_Tail03_rotateX1";
	rename -uid "43E9C99E-40BC-00E9-4CBA-07A4CB680BFB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1000 0;
createNode animCurveTA -n "b_Tail06_rotateX";
	rename -uid "DC746DCB-4FFB-D607-4E80-02AE9587A2CB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 360.00003051757813 1000 360.00003051757813;
createNode animCurveTA -n "b_Tail02_rotateX2";
	rename -uid "31D907DC-46D5-536D-D7F6-E587B03337B2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1000 0;
createNode animCurveTA -n "b_Tail03_rotateX2";
	rename -uid "FA7230E1-4157-DF55-EC80-F19B6CEFAFB5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1000 0;
createNode animCurveTA -n "b_Tail05_rotateX1";
	rename -uid "EC99D9C0-4F9E-34FE-6E03-3383E1F3BEB7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1000 0;
createNode animCurveTA -n "b_LeftLeg01_rotateX";
	rename -uid "4EDAD77E-4AB4-329F-D6EA-73A2320ACA3A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 2.2948376447597396 1000 2.2948376447597396;
createNode animCurveTA -n "b_LeftLeg02_rotateX";
	rename -uid "4BCA1BD2-4AFB-005D-42D5-0AB576DAA5DE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.00070000987094206123 1000 -0.00070000987094206123;
createNode animCurveTA -n "b_LeftFoot01_rotateX";
	rename -uid "74E5EBBB-4186-0FFD-7366-A581370ACB18";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.027971375898547795 1000 0.027971375898547795;
createNode animCurveTA -n "b_LeftFoot02_rotateX";
	rename -uid "7EA13CD8-429D-B73A-9A9E-D9AD3D16CADA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -8.337631696164749e-10 1000 -8.337631696164749e-10;
createNode animCurveTA -n "effector4_rotateX";
	rename -uid "7BEC94F4-4EB3-DCE0-F254-2AAC7F41792B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1000 0;
createNode animCurveTA -n "b_RightLeg01_rotateX";
	rename -uid "66192831-4D13-0BE6-BD52-ED953E2D49C9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 6.3804500131497575 1000 6.3804500131497575;
createNode animCurveTA -n "b_RightLeg02_rotateX";
	rename -uid "938D90B6-4E66-626E-F0BE-75AD026476CD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 2.8729396599133391e-07 1000 2.8729396599133391e-07;
createNode animCurveTA -n "b_RightFoot01_rotateX";
	rename -uid "0E7C3C54-440E-5E9D-803C-74A764F61023";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.01978022762964371 1000 -0.01978022762964371;
createNode animCurveTA -n "b_RightFoot02_rotateY";
	rename -uid "F8994ADA-4F56-0F9B-0532-2BBE3DD4EAB8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 3.586171715141973e-06 1000 3.586171715141973e-06;
createNode animCurveTA -n "b_Root_rotateY";
	rename -uid "C12559D7-44A7-8CD0-C260-C1B89700FABB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 5.0089561227650847e-06 1000 5.0089561227650847e-06;
createNode animCurveTA -n "b_Hip_rotateY";
	rename -uid "57E57893-40BE-2494-D48E-19BD55D42251";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -69.192703247070313 1000 -69.192703247070313;
createNode animCurveTA -n "b_Spine01_rotateY";
	rename -uid "CE771E29-4248-7BF9-49C5-C69B0DCB2E0C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -1.8669345081434585e-05 1000 -1.8669345081434585e-05;
createNode animCurveTA -n "b_Spine02_rotateY";
	rename -uid "2611B820-4EC0-E95B-99EC-F4A955884E2C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -1.5012217814344697e-12 1000 -1.5012217814344697e-12;
createNode animCurveTA -n "b_Neck_rotateY";
	rename -uid "7161C609-4053-C494-FF10-B9A626E55659";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1000 0;
createNode animCurveTA -n "b_Head_rotateY";
	rename -uid "71C2FAB3-48CE-E409-EA26-01B4703D7BA2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1000 0;
createNode animCurveTA -n "b_RightUpperArm_rotateY";
	rename -uid "AF750108-44EF-25B5-F0C4-C59D41204DE0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.72534756325188365 1000 -0.72534756325188365;
createNode animCurveTA -n "b_RightForeArm_rotateY";
	rename -uid "A67F7FCD-4C26-7639-695B-B2BA7B40767B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1.4678562847313936 1000 1.4678562847313936;
createNode animCurveTA -n "b_RightWrist_rotateY";
	rename -uid "37875A92-4CB8-093B-F7F4-4E9579700D29";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.89567602579572381 1000 -0.89567602579572381;
createNode animCurveTA -n "b_RightHand_rotateY";
	rename -uid "B91603D4-4D41-3B70-1AF4-F78D2190E8CA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1000 0;
createNode animCurveTA -n "effector5_rotateY";
	rename -uid "5C3FC4A0-4086-8245-394E-C7A4739ED9C7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1000 0;
createNode animCurveTA -n "b_LeftUpperArm_rotateY";
	rename -uid "AC719BE4-464C-70B5-3591-8EA837BFEE0B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.084240825666014707 1000 -0.084240825666014707;
createNode animCurveTA -n "b_LeftForeArm_rotateY";
	rename -uid "AD19018C-4440-35F5-9C98-7BAF03CF6C21";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.14662597443030936 1000 0.14662597443030936;
createNode animCurveTA -n "b_LeftWrist_rotateY";
	rename -uid "9AF9E153-49B4-E93C-1EF6-898769A0B42E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.42279395164913142 1000 0.42279395164913142;
createNode animCurveTA -n "b_LeftHand_rotateY";
	rename -uid "FCD58392-49EE-00DC-FBD5-4F9229890E9D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1000 0;
createNode animCurveTA -n "effector6_rotateY";
	rename -uid "5841DC12-4EF6-EDC8-334F-A89F0A905B5C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1000 0;
createNode animCurveTA -n "b_Tail01_rotateY";
	rename -uid "36E91F92-4029-FFB5-1569-F7AEF8F9446B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1.9963299564551562e-05 1000 1.9963299564551562e-05;
createNode animCurveTA -n "b_Tail02_rotateY";
	rename -uid "011C6FE9-45C4-2A71-9807-4F82825CB30C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1000 0;
createNode animCurveTA -n "b_Tail03_rotateY";
	rename -uid "B491FC11-4181-B068-72E6-C18A192A6DA1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1000 0;
createNode animCurveTA -n "b_Tail05_rotateY";
	rename -uid "A17BA1FF-4925-5D89-EC2A-A2BAB278A798";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1000 0;
createNode animCurveTA -n "b_Tail04_rotateY";
	rename -uid "2CD37D49-4E92-071B-CFA7-AAB982D938A3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1.9963299564551562e-05 1000 1.9963299564551562e-05;
createNode animCurveTA -n "b_Tail02_rotateY1";
	rename -uid "63A42314-4DE6-0C0D-DB9C-3EB3E5676A28";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1000 0;
createNode animCurveTA -n "b_Tail03_rotateY1";
	rename -uid "E15964F2-4EB9-ADE6-286C-F3AAB448185C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1000 0;
createNode animCurveTA -n "b_Tail06_rotateY";
	rename -uid "5FBF2EF3-4E76-5B50-757B-BA9F2D8548A9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1.9963299564551562e-05 1000 1.9963299564551562e-05;
createNode animCurveTA -n "b_Tail02_rotateY2";
	rename -uid "9758FC02-4344-D3EF-8074-0EB79057C435";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1000 0;
createNode animCurveTA -n "b_Tail03_rotateY2";
	rename -uid "37669984-4179-8AF8-5316-ACB89E716169";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1000 0;
createNode animCurveTA -n "b_Tail05_rotateY1";
	rename -uid "2E3B39BF-4365-0455-6161-43AA1A422F7D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1000 0;
createNode animCurveTA -n "b_LeftLeg01_rotateY";
	rename -uid "785EF85D-4A04-0EFC-3AAF-D3A5657BCC4A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 12.451335756918553 1000 12.451335756918553;
createNode animCurveTA -n "b_LeftLeg02_rotateY";
	rename -uid "A8EC9DC5-4488-7F17-42A0-DCA9C5142DEE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 5.5206951254847726e-07 1000 5.5206951254847726e-07;
createNode animCurveTA -n "b_LeftFoot01_rotateY";
	rename -uid "B7132D17-404B-99B3-00D8-A3A283295177";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -0.0067457571475613553 1000 -0.0067457571475613553;
createNode animCurveTA -n "b_LeftFoot02_rotateY";
	rename -uid "0EB79FBE-422D-47F6-C769-B08AD8625F0A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 3.5897151065000803e-06 1000 3.5897151065000803e-06;
createNode animCurveTA -n "effector4_rotateY";
	rename -uid "EDF47961-43A6-2B81-EBC2-40AC2BA55691";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1000 0;
createNode animCurveTA -n "b_RightLeg01_rotateY";
	rename -uid "F3415FA1-45AD-05DF-9292-189D3DF94358";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -6.4922802102373867 1000 -6.4922802102373867;
createNode animCurveTA -n "b_RightLeg02_rotateY";
	rename -uid "B47B2DA3-4DB0-BF53-1E17-75A31ABB68C1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1.8530298015391137e-06 1000 1.8530298015391137e-06;
createNode animCurveTA -n "b_RightFoot01_rotateY";
	rename -uid "8947D705-40B7-032E-62D7-45B9A4FD5E7E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1.4545581675972627e-07 1000 1.4545581675972627e-07;
createNode animCurveTA -n "b_RightFoot02_rotateZ";
	rename -uid "621C11CC-4133-4622-D4F2-608B5245E413";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 66.362350463867202 1000 66.362350463867202;
createNode animCurveTA -n "b_Root_rotateZ";
	rename -uid "8854D7AA-42C2-FF19-63F2-F09858C1DA06";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 8.6514219219679944e-06 1000 8.6514219219679944e-06;
createNode animCurveTA -n "b_Hip_rotateZ";
	rename -uid "81D3BF73-4C19-49AE-72B3-48A2CCD1431A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -90.000007629394531 1000 -90.000007629394531;
createNode animCurveTA -n "b_Spine01_rotateZ";
	rename -uid "6CC2C95B-4C30-2D9B-E1E6-B7A9B339538F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -72.373031616210938 1000 -72.373031616210938;
createNode animCurveTA -n "b_Spine02_rotateZ";
	rename -uid "984745B2-4355-B61B-465E-B5AA7ED96EB4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1.995363712310791 1000 1.995363712310791;
createNode animCurveTA -n "b_Neck_rotateZ";
	rename -uid "C1752578-4EB9-425B-AFDD-8CA332D83758";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 35.321353912353516 1000 35.321353912353516;
createNode animCurveTA -n "b_Head_rotateZ";
	rename -uid "1BB99A24-4AB1-DB77-2DBF-839808D47D61";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -47.192043304443359 1000 -47.192043304443359;
createNode animCurveTA -n "b_RightUpperArm_rotateZ";
	rename -uid "17FCA259-42CC-0F94-D9E4-9598FFF5EE99";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -2.1604121099018494 1000 -2.1604121099018494;
createNode animCurveTA -n "b_RightForeArm_rotateZ";
	rename -uid "CB6244E6-4B2B-B58F-53DC-2FB613CE4CF7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1.6769906043678475 1000 1.6769906043678475;
createNode animCurveTA -n "b_RightWrist_rotateZ";
	rename -uid "FFA0C894-47AD-D030-6539-C2B0237C0E84";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 4.6921675384182731 1000 4.6921675384182731;
createNode animCurveTA -n "b_RightHand_rotateZ";
	rename -uid "45B83812-4A1D-B18F-0E2D-DEADA61F4DF6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1000 0;
createNode animCurveTA -n "effector5_rotateZ";
	rename -uid "6481ADB0-46A7-15C8-27E8-4B9AF27A8FF7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1000 0;
createNode animCurveTA -n "b_LeftUpperArm_rotateZ";
	rename -uid "4DC429B3-44CC-2A6B-6E23-C4A0BC193B8B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -1.1169319609217014 1000 -1.1169319609217014;
createNode animCurveTA -n "b_LeftForeArm_rotateZ";
	rename -uid "AAF79CE7-4C83-B0E3-1805-4990F7B1E4C8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.78989746274355521 1000 0.78989746274355521;
createNode animCurveTA -n "b_LeftWrist_rotateZ";
	rename -uid "3E817FA3-45F2-62D2-8784-5EBEC0AAE028";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 2.4408606950243952 1000 2.4408606950243952;
createNode animCurveTA -n "b_LeftHand_rotateZ";
	rename -uid "E7CF9A08-4834-EEC3-9F2F-CDAA02AA6525";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1000 0;
createNode animCurveTA -n "effector6_rotateZ";
	rename -uid "9B027460-4F73-F912-02DC-D99A592B7D37";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1000 0;
createNode animCurveTA -n "b_Tail01_rotateZ";
	rename -uid "7DEBD5DF-4A0B-983C-1D07-71A319E3F722";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 158.16015625 1000 158.16015625;
createNode animCurveTA -n "b_Tail02_rotateZ";
	rename -uid "158EFF7E-4AE7-24EE-1CB5-CE8758D88F33";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -7.9839992523193359 1000 -7.9839992523193359;
createNode animCurveTA -n "b_Tail03_rotateZ";
	rename -uid "FEACE874-4BFC-627D-6406-06B7317DE94F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -6.1717591285705566 1000 -6.1717591285705566;
createNode animCurveTA -n "b_Tail05_rotateZ";
	rename -uid "8B38868C-4184-8CAC-54AE-498B40A83079";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -6.1717591285705566 1000 -6.1717591285705566;
createNode animCurveTA -n "b_Tail04_rotateZ";
	rename -uid "168F00E4-48DF-1CC1-25EA-9FB660B18142";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 158.16015625 1000 158.16015625;
createNode animCurveTA -n "b_Tail02_rotateZ1";
	rename -uid "CCE424B4-4768-AACC-A5B4-1582102C0564";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -7.9839992523193359 1000 -7.9839992523193359;
createNode animCurveTA -n "b_Tail03_rotateZ1";
	rename -uid "A053A035-4CCF-585E-6514-4CA17857AB58";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -6.1717591285705566 1000 -6.1717591285705566;
createNode animCurveTA -n "b_Tail06_rotateZ";
	rename -uid "B780C41E-47B9-012B-568B-0FA18BDC834B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 158.16015625 1000 158.16015625;
createNode animCurveTA -n "b_Tail02_rotateZ2";
	rename -uid "00719056-4D50-6168-37EF-C7A9D99E6EF3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -7.9839992523193359 1000 -7.9839992523193359;
createNode animCurveTA -n "b_Tail03_rotateZ2";
	rename -uid "9FA5FB2E-4AA0-715F-E0B0-6BAF0091809F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -6.1717591285705566 1000 -6.1717591285705566;
createNode animCurveTA -n "b_Tail05_rotateZ1";
	rename -uid "F82ED397-483D-F53B-61F4-1CACF450934D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -6.1717591285705566 1000 -6.1717591285705566;
createNode animCurveTA -n "b_LeftLeg01_rotateZ";
	rename -uid "F1AA3D49-4077-359F-784E-9790199A9D37";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -150.9782053452777 1000 -150.9782053452777;
createNode animCurveTA -n "b_LeftLeg02_rotateZ";
	rename -uid "1350CBE4-4F61-F5F8-EB1F-AABD294BB4D7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -37.022854165903126 1000 -37.022854165903126;
createNode animCurveTA -n "b_LeftFoot01_rotateZ";
	rename -uid "01B3A20E-4AD0-FF54-ABC1-92B862373AC1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 46.785261634875937 1000 46.785261634875937;
createNode animCurveTA -n "b_LeftFoot02_rotateZ";
	rename -uid "A6435539-4A0F-95AC-E85E-33B7C4B88C0C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 66.362350463867202 1000 66.362350463867202;
createNode animCurveTA -n "effector4_rotateZ";
	rename -uid "60DF1564-4096-D714-FA24-BB9032F30A6E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1000 0;
createNode animCurveTA -n "b_RightLeg01_rotateZ";
	rename -uid "A3374619-4447-2075-9DBB-98A05FA426D3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -150.2150384229756 1000 -150.2150384229756;
createNode animCurveTA -n "b_RightLeg02_rotateZ";
	rename -uid "6B6917FE-4F76-0445-C468-ADAD518E5CC7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -40.466519302490148 1000 -40.466519302490148;
createNode animCurveTA -n "b_RightFoot01_rotateZ";
	rename -uid "64BAE16F-40C7-DAC5-860E-049C389A33DC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 51.067549974448497 1000 51.067549974448497;
createNode animCurveTU -n "b_RightFoot02_scaleX";
	rename -uid "B34A0DD3-4183-F619-FAB4-78AF334B73DA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1.0000002384185791 1000 1.0000002384185791;
createNode animCurveTU -n "b_Root_scaleX";
	rename -uid "7B89842D-43D1-E3B0-2FBF-DCB9BE09661B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 2.5399999618530273 1000 2.5399999618530273;
createNode animCurveTU -n "b_Hip_scaleX";
	rename -uid "41C72294-4F2E-E2AA-5431-A0A49DFAF836";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 1000 1;
createNode animCurveTU -n "b_Spine01_scaleX";
	rename -uid "0F2261EA-4EAD-7AB6-8440-A6B861831556";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.99999994039535522 1000 0.99999994039535522;
createNode animCurveTU -n "b_Spine02_scaleX";
	rename -uid "58577A3C-4883-0FE2-3CA1-7994473C3FAE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 1000 1;
createNode animCurveTU -n "b_Neck_scaleX";
	rename -uid "0C02652E-4A5D-7A57-F377-D5AF591B6E31";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 1000 1;
createNode animCurveTU -n "b_Head_scaleX";
	rename -uid "C678FF6D-430E-39AA-A0E0-F8A09298D21B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1.0000001192092896 1000 1.0000001192092896;
createNode animCurveTU -n "b_RightUpperArm_scaleX";
	rename -uid "06FF26A5-4707-6025-6B6B-A1986316B898";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 1000 1;
createNode animCurveTU -n "b_RightForeArm_scaleX";
	rename -uid "3D1B0B04-4CC6-F50A-73AA-FA9EC8B53611";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 1000 1;
createNode animCurveTU -n "b_RightWrist_scaleX";
	rename -uid "B3EEA2E2-44B5-35B4-92BF-DEB4E5F0DAE6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 1000 1;
createNode animCurveTU -n "b_RightHand_scaleX";
	rename -uid "62D832C7-47DB-D332-C9C3-38A5091C871B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 1000 1;
createNode animCurveTU -n "effector5_scaleX";
	rename -uid "D27D3151-4D70-A7E3-73FE-E695E9DB65F3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 1000 1;
createNode animCurveTU -n "b_LeftUpperArm_scaleX";
	rename -uid "116D057D-4801-1033-2BE8-16915A7EC94B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 1000 1;
createNode animCurveTU -n "b_LeftForeArm_scaleX";
	rename -uid "F8952BBF-4303-407D-EF2E-83B3E6A6B82E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 1000 1;
createNode animCurveTU -n "b_LeftWrist_scaleX";
	rename -uid "29A77B74-4C97-C8EB-4841-7CB87AF6995A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 1000 1;
createNode animCurveTU -n "b_LeftHand_scaleX";
	rename -uid "A4491C0D-4CDF-4FB0-1220-9DBD9C148606";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 1000 1;
createNode animCurveTU -n "effector6_scaleX";
	rename -uid "86DCB7B8-4D64-D4B7-C0ED-10B9377BAEB2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 1000 1;
createNode animCurveTU -n "b_Tail01_scaleX";
	rename -uid "A6113E20-4397-9E07-D230-9985E469D70E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.99999982118606567 1000 0.99999982118606567;
createNode animCurveTU -n "b_Tail02_scaleX";
	rename -uid "668E569F-43C2-8059-0275-5A8E29B1FC3F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 1000 1;
createNode animCurveTU -n "b_Tail03_scaleX";
	rename -uid "C5FB50AE-4DC4-2901-2A30-4F84CF75B6DF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 1000 1;
createNode animCurveTU -n "b_Tail05_scaleX";
	rename -uid "97856E5B-4B3F-2D14-EA1F-11A32415B879";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 1000 1;
createNode animCurveTU -n "b_Tail04_scaleX";
	rename -uid "6319CCC5-49D0-E93C-5D83-A98FEDBCDCE6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.99999982118606567 1000 0.99999982118606567;
createNode animCurveTU -n "b_Tail02_scaleX1";
	rename -uid "76436E85-494F-4B8E-D6F6-919263EE6968";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 1000 1;
createNode animCurveTU -n "b_Tail03_scaleX1";
	rename -uid "D14EA785-4605-0A64-42A6-CCA0C9DC120D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 1000 1;
createNode animCurveTU -n "b_Tail06_scaleX";
	rename -uid "10960440-4333-E57D-335D-3795CD66BA4A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.99999982118606567 1000 0.99999982118606567;
createNode animCurveTU -n "b_Tail02_scaleX2";
	rename -uid "85030A14-46F7-5AEF-5F3C-D59CFEAD0C17";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 1000 1;
createNode animCurveTU -n "b_Tail03_scaleX2";
	rename -uid "0A6E83A5-48B7-B0A0-C92A-089F4BD47E9B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 1000 1;
createNode animCurveTU -n "b_Tail05_scaleX1";
	rename -uid "0F71F7B2-4606-1BEA-C214-17B00F231D4D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 1000 1;
createNode animCurveTU -n "b_LeftLeg01_scaleX";
	rename -uid "93405E47-4ADB-A6DD-028B-E1829454771E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.99999988079071045 1000 0.99999988079071045;
createNode animCurveTU -n "b_LeftLeg02_scaleX";
	rename -uid "1B66B201-40CF-7087-F870-56AA7F83DC75";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 1000 1;
createNode animCurveTU -n "b_LeftFoot01_scaleX";
	rename -uid "31E4C681-4239-2242-A396-15906D722EAB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.99999994039535522 1000 0.99999994039535522;
createNode animCurveTU -n "b_LeftFoot02_scaleX";
	rename -uid "E0F0D6BC-4468-6432-5F53-12AAF8AF9EE2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1.0000002384185791 1000 1.0000002384185791;
createNode animCurveTU -n "effector4_scaleX";
	rename -uid "111CA801-4898-FEE6-EBA8-0787578A2B25";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 1000 1;
createNode animCurveTU -n "b_RightLeg01_scaleX";
	rename -uid "A590066E-4B69-F728-4844-05996B4077F2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.99999988079071045 1000 0.99999988079071045;
createNode animCurveTU -n "b_RightLeg02_scaleX";
	rename -uid "08F25FC1-4AE8-D64D-6FC5-3F9F29E236AD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 1000 1;
createNode animCurveTU -n "b_RightFoot01_scaleX";
	rename -uid "5A06DE7A-4986-E469-80A5-A79AC391F00E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 1000 1;
createNode animCurveTU -n "b_RightFoot02_scaleY";
	rename -uid "CFB90B6D-4983-3CC4-2766-F3A88E514071";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1.0000001192092896 1000 1.0000001192092896;
createNode animCurveTU -n "b_Root_scaleY";
	rename -uid "1A751DFA-4C23-ADE0-83CB-A592EDB38145";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 2.5399999618530273 1000 2.5399999618530273;
createNode animCurveTU -n "b_Hip_scaleY";
	rename -uid "C0406DFB-44A6-4C97-D498-E49A5C656E6E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1.0000001192092896 1000 1.0000001192092896;
createNode animCurveTU -n "b_Spine01_scaleY";
	rename -uid "0E8B32A8-4783-B92F-2C4E-C5AFFE3C7B61";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 1000 1;
createNode animCurveTU -n "b_Spine02_scaleY";
	rename -uid "F77AC488-48CC-5FCF-F7F9-E9ADE6A6555E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 1000 1;
createNode animCurveTU -n "b_Neck_scaleY";
	rename -uid "AAA800B3-4C3D-5B4D-8E17-A183FA151F95";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 1000 1;
createNode animCurveTU -n "b_Head_scaleY";
	rename -uid "7C5AD246-4B2E-8EA1-D7C7-6D98BED563A7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1.0000001192092896 1000 1.0000001192092896;
createNode animCurveTU -n "b_RightUpperArm_scaleY";
	rename -uid "4FF6A5B3-461D-42E6-EBC3-09909A0CF395";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 1000 1;
createNode animCurveTU -n "b_RightForeArm_scaleY";
	rename -uid "09A2243D-454A-F57A-DC7A-26910A925657";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 1000 1;
createNode animCurveTU -n "b_RightWrist_scaleY";
	rename -uid "6128B7C5-437B-6F33-99C5-7C81AEAA5758";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 1000 1;
createNode animCurveTU -n "b_RightHand_scaleY";
	rename -uid "626A58A4-4F4E-5A6D-FBA0-6F9AC50CB47B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 1000 1;
createNode animCurveTU -n "effector5_scaleY";
	rename -uid "910FE5C5-453F-9F88-8DD3-DA88BC3F37DC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 1000 1;
createNode animCurveTU -n "b_LeftUpperArm_scaleY";
	rename -uid "19E49D12-48A9-9E84-84E6-A09580A1DABF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 1000 1;
createNode animCurveTU -n "b_LeftForeArm_scaleY";
	rename -uid "AE645C58-4E63-DCE6-7FFB-809339A4EEE2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 1000 1;
createNode animCurveTU -n "b_LeftWrist_scaleY";
	rename -uid "443CEA62-4BF7-2579-95F5-0ABA98E38F28";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 1000 1;
createNode animCurveTU -n "b_LeftHand_scaleY";
	rename -uid "D903ED68-410C-3604-651D-069CF87664C8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 1000 1;
createNode animCurveTU -n "effector6_scaleY";
	rename -uid "FCC0EB34-4F3E-44AD-D01C-03B67D038363";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 1000 1;
createNode animCurveTU -n "b_Tail01_scaleY";
	rename -uid "6D71BF4F-4ED9-3419-E5D6-E795AC878CBB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.99999982118606567 1000 0.99999982118606567;
createNode animCurveTU -n "b_Tail02_scaleY";
	rename -uid "353ED2FF-4247-19BF-0A27-79B44569A563";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 1000 1;
createNode animCurveTU -n "b_Tail03_scaleY";
	rename -uid "3BFDFDA8-4C77-FA78-49AB-54B4452376D5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 1000 1;
createNode animCurveTU -n "b_Tail05_scaleY";
	rename -uid "75B5F76F-4501-C65C-5962-9082A51BB2A2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 1000 1;
createNode animCurveTU -n "b_Tail04_scaleY";
	rename -uid "86865B83-436F-81BF-76DB-CBB81196E929";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.99999982118606567 1000 0.99999982118606567;
createNode animCurveTU -n "b_Tail02_scaleY1";
	rename -uid "8EFCA5B8-401C-FF6A-89B3-9B8137FAFD4B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 1000 1;
createNode animCurveTU -n "b_Tail03_scaleY1";
	rename -uid "1BE10B70-4C3C-EC20-9C49-8AB0674E1196";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 1000 1;
createNode animCurveTU -n "b_Tail06_scaleY";
	rename -uid "CEF18642-4F0F-1B34-3BFA-8388AE4829FC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.99999982118606567 1000 0.99999982118606567;
createNode animCurveTU -n "b_Tail02_scaleY2";
	rename -uid "A2AABA31-4CD6-DD32-4BEE-CEB8A8CA3E07";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 1000 1;
createNode animCurveTU -n "b_Tail03_scaleY2";
	rename -uid "B366CB81-4214-CF22-96E1-45AA35987FB6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 1000 1;
createNode animCurveTU -n "b_Tail05_scaleY1";
	rename -uid "819BAD18-439B-8EB9-E1AF-0A8F84105CA2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 1000 1;
createNode animCurveTU -n "b_LeftLeg01_scaleY";
	rename -uid "15AC328F-4424-C36A-EE66-769949AE70C1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.99999982118606567 1000 0.99999982118606567;
createNode animCurveTU -n "b_LeftLeg02_scaleY";
	rename -uid "2C0EFD34-41D8-7BDD-43F9-E2BD9819AD1E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 1000 1;
createNode animCurveTU -n "b_LeftFoot01_scaleY";
	rename -uid "9E14017E-4455-B59D-B931-26AA070E1404";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.99999994039535522 1000 0.99999994039535522;
createNode animCurveTU -n "b_LeftFoot02_scaleY";
	rename -uid "E630BD7A-46B3-22DA-AFEB-97B903C971E3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1.0000001192092896 1000 1.0000001192092896;
createNode animCurveTU -n "effector4_scaleY";
	rename -uid "58FE0F4F-4868-3C2C-96F6-858CA8CBA4D2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 1000 1;
createNode animCurveTU -n "b_RightLeg01_scaleY";
	rename -uid "9C1B8CFC-4151-A171-4695-04B303DCF871";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.99999988079071045 1000 0.99999988079071045;
createNode animCurveTU -n "b_RightLeg02_scaleY";
	rename -uid "05F054F4-4E3B-BFD0-EC6A-738B3D7FEE33";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 1000 1;
createNode animCurveTU -n "b_RightFoot01_scaleY";
	rename -uid "BCA4170D-4663-0C4A-A53E-96B8082C5915";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1.0000001192092896 1000 1.0000001192092896;
createNode animCurveTU -n "b_RightFoot02_scaleZ";
	rename -uid "08C4A863-4B89-A0F5-94CD-7DB7D1D26453";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 1000 1;
createNode animCurveTU -n "b_Root_scaleZ";
	rename -uid "BFF1D685-4045-61AC-6847-098548F04DC1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 2.5399999618530273 1000 2.5399999618530273;
createNode animCurveTU -n "b_Hip_scaleZ";
	rename -uid "2848EAE6-49F7-24CE-CD2B-77B553375FEB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 1000 1;
createNode animCurveTU -n "b_Spine01_scaleZ";
	rename -uid "E8AB66CE-4D5E-388E-1FF4-91B44228540C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 1000 1;
createNode animCurveTU -n "b_Spine02_scaleZ";
	rename -uid "D82F89F4-4C16-CE62-D3C9-EB85267606BA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 1000 1;
createNode animCurveTU -n "b_Neck_scaleZ";
	rename -uid "56BE6515-4420-4630-5869-4FB08CC2FB51";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 1000 1;
createNode animCurveTU -n "b_Head_scaleZ";
	rename -uid "CEDC77BD-4EC6-3225-339A-B1AAE091C03B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 1000 1;
createNode animCurveTU -n "b_RightUpperArm_scaleZ";
	rename -uid "06CC6D23-4B79-43D4-0952-8583308F56DD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 1000 1;
createNode animCurveTU -n "b_RightForeArm_scaleZ";
	rename -uid "7BC59150-4EA4-3215-C063-45BCBF7D6BFE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 1000 1;
createNode animCurveTU -n "b_RightWrist_scaleZ";
	rename -uid "046D75F3-481D-EED9-260D-C885E7D2BB33";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 1000 1;
createNode animCurveTU -n "b_RightHand_scaleZ";
	rename -uid "20B8694E-40DD-0A4D-5372-BB9DA1742355";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 1000 1;
createNode animCurveTU -n "effector5_scaleZ";
	rename -uid "EDB7AD89-4F02-41D1-99EA-E2B7D38944B9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 1000 1;
createNode animCurveTU -n "b_LeftUpperArm_scaleZ";
	rename -uid "1192376A-409C-130D-16D5-578CFC59D062";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 1000 1;
createNode animCurveTU -n "b_LeftForeArm_scaleZ";
	rename -uid "8D7FFDE1-47C2-6D35-40DA-14872A979BF6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 1000 1;
createNode animCurveTU -n "b_LeftWrist_scaleZ";
	rename -uid "886123EB-465D-3342-6C7A-F4B1CB206D84";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 1000 1;
createNode animCurveTU -n "b_LeftHand_scaleZ";
	rename -uid "F38DE8F4-4957-3534-4F10-7AA46317D1F3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 1000 1;
createNode animCurveTU -n "effector6_scaleZ";
	rename -uid "8133D07E-4F5B-0168-9283-4190AEA82115";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 1000 1;
createNode animCurveTU -n "b_Tail01_scaleZ";
	rename -uid "892F8943-4E30-BD04-F782-0280957E1FDD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 1000 1;
createNode animCurveTU -n "b_Tail02_scaleZ";
	rename -uid "291AA016-4A95-712E-748E-68874ECEFC60";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 1000 1;
createNode animCurveTU -n "b_Tail03_scaleZ";
	rename -uid "214C890B-49F1-5E7F-50C7-01BDD71AF29B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 1000 1;
createNode animCurveTU -n "b_Tail05_scaleZ";
	rename -uid "C44532E9-4CD1-A718-C24A-F0980BFC5464";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 1000 1;
createNode animCurveTU -n "b_Tail04_scaleZ";
	rename -uid "4E937011-468A-5F6A-4F33-47A3E2BDA4B6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 1000 1;
createNode animCurveTU -n "b_Tail02_scaleZ1";
	rename -uid "B5DA6E5A-4E43-E35E-3137-24B97D6BAD75";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 1000 1;
createNode animCurveTU -n "b_Tail03_scaleZ1";
	rename -uid "BD78293A-49D3-09C3-D5A0-9582110682F9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 1000 1;
createNode animCurveTU -n "b_Tail06_scaleZ";
	rename -uid "C410D404-4FB6-462B-D968-86BF142A05E7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 1000 1;
createNode animCurveTU -n "b_Tail02_scaleZ2";
	rename -uid "90A562D2-4521-C629-7A31-6CA92ED812D3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 1000 1;
createNode animCurveTU -n "b_Tail03_scaleZ2";
	rename -uid "EFDD97E7-44FF-469C-F7CE-5C8D4F90DD55";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 1000 1;
createNode animCurveTU -n "b_Tail05_scaleZ1";
	rename -uid "05622FB7-4F31-A861-D3B2-64A10766710E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 1000 1;
createNode animCurveTU -n "b_LeftLeg01_scaleZ";
	rename -uid "BD85C44B-44FD-924B-5E19-739D3355BD7E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 1000 1;
createNode animCurveTU -n "b_LeftLeg02_scaleZ";
	rename -uid "E4EABFFA-47E0-4C58-C1B4-7CB7EB6098CF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 1000 1;
createNode animCurveTU -n "b_LeftFoot01_scaleZ";
	rename -uid "97588388-4497-13F2-2EBF-B1878F98F218";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 1000 1;
createNode animCurveTU -n "b_LeftFoot02_scaleZ";
	rename -uid "6D970E0E-4AB5-62C5-74D5-B9B055155645";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.99999994039535522 1000 0.99999994039535522;
createNode animCurveTU -n "effector4_scaleZ";
	rename -uid "16A25EC8-40C7-09FF-0904-ECAB767A9C94";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 1000 1;
createNode animCurveTU -n "b_RightLeg01_scaleZ";
	rename -uid "4E7E4FF2-4144-A6D6-B7B0-B6A0562EF0E4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 1000 1;
createNode animCurveTU -n "b_RightLeg02_scaleZ";
	rename -uid "8093E615-499F-2426-5A9E-B589640552E2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 1000 1;
createNode animCurveTU -n "b_RightFoot01_scaleZ";
	rename -uid "9BA2D83F-48D6-1AA3-26A9-66AA6B5BF292";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 1000 1;
createNode polyTweakUV -n "polyTweakUV1";
	rename -uid "E37CFD5B-4F9B-965D-2918-1A81B683B28F";
	setAttr ".uopa" yes;
	setAttr -s 29 ".uvtk";
	setAttr ".uvtk[1531]" -type "float2" 0.1615572 0.051022831 ;
	setAttr ".uvtk[1532]" -type "float2" -0.11016273 0.051022831 ;
	setAttr ".uvtk[1533]" -type "float2" -0.37286231 -0.88929272 ;
	setAttr ".uvtk[1534]" -type "float2" 0.60716784 -0.91056073 ;
	setAttr ".uvtk[1535]" -type "float2" 0.76030254 0.089528918 ;
	setAttr ".uvtk[1536]" -type "float2" 0.45997989 0.089528918 ;
	setAttr ".uvtk[1537]" -type "float2" -0.067536369 -0.61742449 ;
	setAttr ".uvtk[1538]" -type "float2" 0.69558883 -0.63740063 ;
	setAttr ".uvtk[1539]" -type "float2" 0.56688803 0.089528918 ;
	setAttr ".uvtk[1540]" -type "float2" 0.22140071 0.089528918 ;
	setAttr ".uvtk[1541]" -type "float2" -0.0055873394 -0.52836931 ;
	setAttr ".uvtk[1542]" -type "float2" 0.76030254 -0.73830986 ;
	setAttr ".uvtk[1543]" -type "float2" 0.44036925 0.089528918 ;
	setAttr ".uvtk[1544]" -type "float2" 0.14874348 0.089528918 ;
	setAttr ".uvtk[1545]" -type "float2" 0.45097017 -0.73830998 ;
	setAttr ".uvtk[1546]" -type "float2" 0.76030254 -0.70220029 ;
	setAttr ".uvtk[1547]" -type "float2" 0.76030254 0.089528918 ;
	setAttr ".uvtk[1548]" -type "float2" -0.067536369 0.089528918 ;
	setAttr ".uvtk[1549]" -type "float2" -0.067536369 -0.73830998 ;
	setAttr ".uvtk[1550]" -type "float2" 0.76030254 -0.73830998 ;
	setAttr ".uvtk[1555]" -type "float2" 0.51897651 0.040637914 ;
	setAttr ".uvtk[1556]" -type "float2" -0.36502844 0.040637914 ;
	setAttr ".uvtk[1557]" -type "float2" -0.36502844 -0.84336698 ;
	setAttr ".uvtk[1558]" -type "float2" 0.51897651 -0.84336698 ;
	setAttr ".uvtk[1559]" -type "float2" 0.76030254 0.089528918 ;
	setAttr ".uvtk[1560]" -type "float2" -0.067536369 0.089528918 ;
	setAttr ".uvtk[1561]" -type "float2" -0.067536369 -0.73830998 ;
	setAttr ".uvtk[1562]" -type "float2" 0.76030254 -0.73830998 ;
select -ne :time1;
	setAttr ".o" 0;
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
	setAttr -s 5 ".sol";
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
connectAttr "b_Root.s" "b_Hip.is";
connectAttr "b_Hip_scaleX.o" "b_Hip.sx";
connectAttr "b_Hip_scaleY.o" "b_Hip.sy";
connectAttr "b_Hip_scaleZ.o" "b_Hip.sz";
connectAttr "b_Hip_translateX.o" "b_Hip.tx";
connectAttr "b_Hip_translateY.o" "b_Hip.ty";
connectAttr "b_Hip_translateZ.o" "b_Hip.tz";
connectAttr "b_Hip_rotateX.o" "b_Hip.rx";
connectAttr "b_Hip_rotateY.o" "b_Hip.ry";
connectAttr "b_Hip_rotateZ.o" "b_Hip.rz";
connectAttr "Joints.di" "b_Hip.do";
connectAttr "b_Hip.s" "b_Spine01.is";
connectAttr "b_Spine01_scaleX.o" "b_Spine01.sx";
connectAttr "b_Spine01_scaleY.o" "b_Spine01.sy";
connectAttr "b_Spine01_scaleZ.o" "b_Spine01.sz";
connectAttr "b_Spine01_translateX.o" "b_Spine01.tx";
connectAttr "b_Spine01_translateY.o" "b_Spine01.ty";
connectAttr "b_Spine01_translateZ.o" "b_Spine01.tz";
connectAttr "b_Spine01_rotateX.o" "b_Spine01.rx";
connectAttr "b_Spine01_rotateY.o" "b_Spine01.ry";
connectAttr "b_Spine01_rotateZ.o" "b_Spine01.rz";
connectAttr "Joints.di" "b_Spine01.do";
connectAttr "b_Spine01.s" "b_Spine02.is";
connectAttr "b_Spine02_scaleX.o" "b_Spine02.sx";
connectAttr "b_Spine02_scaleY.o" "b_Spine02.sy";
connectAttr "b_Spine02_scaleZ.o" "b_Spine02.sz";
connectAttr "b_Spine02_translateX.o" "b_Spine02.tx";
connectAttr "b_Spine02_translateY.o" "b_Spine02.ty";
connectAttr "b_Spine02_translateZ.o" "b_Spine02.tz";
connectAttr "b_Spine02_rotateX.o" "b_Spine02.rx";
connectAttr "b_Spine02_rotateY.o" "b_Spine02.ry";
connectAttr "b_Spine02_rotateZ.o" "b_Spine02.rz";
connectAttr "Joints.di" "b_Spine02.do";
connectAttr "b_Spine02.s" "b_Neck.is";
connectAttr "b_Neck_scaleX.o" "b_Neck.sx";
connectAttr "b_Neck_scaleY.o" "b_Neck.sy";
connectAttr "b_Neck_scaleZ.o" "b_Neck.sz";
connectAttr "b_Neck_translateX.o" "b_Neck.tx";
connectAttr "b_Neck_translateY.o" "b_Neck.ty";
connectAttr "b_Neck_translateZ.o" "b_Neck.tz";
connectAttr "b_Neck_rotateX.o" "b_Neck.rx";
connectAttr "b_Neck_rotateY.o" "b_Neck.ry";
connectAttr "b_Neck_rotateZ.o" "b_Neck.rz";
connectAttr "Joints.di" "b_Neck.do";
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
connectAttr "b_RightFoot02.tx" "effector3.tx";
connectAttr "b_RightFoot02.ty" "effector3.ty";
connectAttr "b_RightFoot02.tz" "effector3.tz";
connectAttr "b_RightLeg01.msg" "ikHandle3.hsj";
connectAttr "effector3.hp" "ikHandle3.hee";
connectAttr "ikRPsolver.msg" "ikHandle3.hsv";
connectAttr "ikHandle3_translateX.o" "ikHandle3.tx";
connectAttr "ikHandle3_translateY.o" "ikHandle3.ty";
connectAttr "ikHandle3_translateZ.o" "ikHandle3.tz";
connectAttr "ikHandle3_rotateX.o" "ikHandle3.rx";
connectAttr "ikHandle3_rotateY.o" "ikHandle3.ry";
connectAttr "ikHandle3_rotateZ.o" "ikHandle3.rz";
connectAttr "ikHandle3_scaleX.o" "ikHandle3.sx";
connectAttr "ikHandle3_scaleY.o" "ikHandle3.sy";
connectAttr "ikHandle3_scaleZ.o" "ikHandle3.sz";
connectAttr "b_LeftLeg01.msg" "ikHandle4.hsj";
connectAttr "effector4.hp" "ikHandle4.hee";
connectAttr "ikRPsolver.msg" "ikHandle4.hsv";
connectAttr "ikHandle4_translateX.o" "ikHandle4.tx";
connectAttr "ikHandle4_translateY.o" "ikHandle4.ty";
connectAttr "ikHandle4_translateZ.o" "ikHandle4.tz";
connectAttr "ikHandle4_rotateX.o" "ikHandle4.rx";
connectAttr "ikHandle4_rotateY.o" "ikHandle4.ry";
connectAttr "ikHandle4_rotateZ.o" "ikHandle4.rz";
connectAttr "ikHandle4_scaleX.o" "ikHandle4.sx";
connectAttr "ikHandle4_scaleY.o" "ikHandle4.sy";
connectAttr "ikHandle4_scaleZ.o" "ikHandle4.sz";
connectAttr "b_RightUpperArm.msg" "ikHandle5.hsj";
connectAttr "effector5.hp" "ikHandle5.hee";
connectAttr "ikSCsolver.msg" "ikHandle5.hsv";
connectAttr "b_LeftUpperArm.msg" "ikHandle6.hsj";
connectAttr "effector6.hp" "ikHandle6.hee";
connectAttr "ikSCsolver.msg" "ikHandle6.hsv";
connectAttr "polyTweakUV1.out" "Rigged_FoxShape.i";
connectAttr "groupId1.id" "Rigged_FoxShape.iog.og[0].gid";
connectAttr "Fox_Rigged:polySurface78SG.mwc" "Rigged_FoxShape.iog.og[0].gco";
connectAttr "groupId2.id" "Rigged_FoxShape.iog.og[1].gid";
connectAttr "Fox_Rigged_0056:Fox_Rigged:polySurface78SG.mwc" "Rigged_FoxShape.iog.og[1].gco"
		;
connectAttr "skinCluster1GroupId.id" "Rigged_FoxShape.iog.og[6].gid";
connectAttr "skinCluster1Set.mwc" "Rigged_FoxShape.iog.og[6].gco";
connectAttr "groupId4.id" "Rigged_FoxShape.iog.og[7].gid";
connectAttr "tweakSet1.mwc" "Rigged_FoxShape.iog.og[7].gco";
connectAttr "tweak1.vl[0].vt[0]" "Rigged_FoxShape.twl";
connectAttr "polyTweakUV1.uvtk[0]" "Rigged_FoxShape.uvst[0].uvtw";
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
connectAttr "b_RightLeg01.wm" "skinCluster1.ma[29]";
connectAttr "b_RightLeg02.wm" "skinCluster1.ma[30]";
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
connectAttr "b_RightLeg01.liw" "skinCluster1.lw[29]";
connectAttr "b_RightLeg02.liw" "skinCluster1.lw[30]";
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
connectAttr "b_RightLeg01.obcc" "skinCluster1.ifcl[29]";
connectAttr "b_RightLeg02.obcc" "skinCluster1.ifcl[30]";
connectAttr "geomBind1.scs" "skinCluster1.gb";
connectAttr "|b_Root|b_Hip|b_Tail06|b_Tail02.msg" "skinCluster1.ptt";
connectAttr "Rigged_FoxShapeOrig.w" "groupParts1.ig";
connectAttr "groupId1.id" "groupParts1.gi";
connectAttr "groupParts1.og" "groupParts2.ig";
connectAttr "groupId2.id" "groupParts2.gi";
connectAttr "groupParts4.og" "tweak1.ip[0].ig";
connectAttr "groupId4.id" "tweak1.ip[0].gi";
connectAttr "skinCluster1GroupId.msg" "skinCluster1Set.gn" -na;
connectAttr "Rigged_FoxShape.iog.og[6]" "skinCluster1Set.dsm" -na;
connectAttr "skinCluster1.msg" "skinCluster1Set.ub[0]";
connectAttr "tweak1.og[0]" "skinCluster1GroupParts.ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1GroupParts.gi";
connectAttr "groupId4.msg" "tweakSet1.gn" -na;
connectAttr "Rigged_FoxShape.iog.og[7]" "tweakSet1.dsm" -na;
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
connectAttr "skinCluster1.og[0]" "polyTweakUV1.ip";
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
