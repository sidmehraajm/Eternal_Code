//Maya ASCII 2012 scene
//Name: asUnreal.ma
//Last modified: Tue, Jul 19, 2016 04:10:09 PM
//Codeset: 1252
requires maya "2008";
fileInfo "application" "maya";
fileInfo "product" "Maya 2012";
fileInfo "version" "2012 x64";
fileInfo "cutIdentifier" "201201172029-821146";
fileInfo "osv" "Microsoft Enterprise Edition, 64-bit  (Build 9200)\n";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -184.36736486800223 281.62208368471715 383.7330518155747 ;
	setAttr ".r" -type "double3" -23.738352729602308 -25.800000000000015 1.7663491990231365e-015 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".ncp" 1;
	setAttr ".coi" 462.76030451107397;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -0.00012120267213333591 95.333011330679639 2.3510905013242862 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.00012120267213333591 100.6482542727789 2.3510905013242875 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".ncp" 1;
	setAttr ".coi" 100.1;
	setAttr ".ow" 354.44069614411461;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.00012120267213333591 95.333011330679639 138.89131299114769 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".ncp" 1;
	setAttr ".coi" 100.1;
	setAttr ".ow" 459.93785497005831;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 138.25307022779924 95.333011330679639 2.3510905013243169 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".ncp" 1;
	setAttr ".coi" 100.1;
	setAttr ".ow" 459.36862495153099;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode joint -n "root";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".jo" -type "double3" -89.999999999999986 0 0 ;
	setAttr ".ssc" no;
	setAttr ".is" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 0 -1 0 0 1 0 0 0 0 0 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 2;
createNode joint -n "pelvis" -p "root";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 1.3536841578012896e-028 1.0561532974243164 96.750602722167969 ;
	setAttr ".r" -type "double3" 89.9981155395526 -89.790634155274049 -89.998115539550867 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 1.2018400000000001e-007 0.99999300000000002 0.0036541199999999999 0
		 2.1958399999999999e-010 0.0036541199999999999 -0.99999300000000002 0 -1 1.2018400000000001e-007 2.1958399999999999e-010 0
		 0 96.750602999999998 -1.0561529999999999 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "spine_01" -p "pelvis";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 10.808877944946289 -0.85141515731811523 -6.0910938836158945e-013 ;
	setAttr ".r" -type "double3" 0 0 -7.1538553237915066 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 1 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 1.1922100000000001e-007 0.99175400000000002 0.128159 0
		 1.5184900000000001e-008 0.128159 -0.99175400000000002 0 -1 1.2018400000000001e-007 2.1958399999999999e-010 0
		 1.29887e-006 107.556297 -0.165247 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "spine_02" -p "spine_01";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 18.875349044799805 3.8011586666107178 5.966093397091754e-008 ;
	setAttr ".r" -type "double3" 0 0 14.063553810119632 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 1.1933800000000001e-007 0.99317 -0.116677 0 -1.42407e-008 -0.116677 -0.99317 0
		 -1 1.2018400000000001e-007 2.1958399999999999e-010 0 3.5472699999999999e-006 126.76314600000001 -1.516014 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "spine_03" -p "spine_02";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 13.407328605651855 0.42047739028930664 -5.5752391635646714e-013 ;
	setAttr ".r" -type "double3" 0 0 2.7794167995452881 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 1.18507e-007 0.986344 -0.16469900000000001 0 -2.0010799999999999e-008 -0.16469900000000001 -0.986344 0
		 -1 1.2018400000000001e-007 2.1958399999999999e-010 0 5.1412799999999997e-006 140.029842 -3.4979399999999998 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "clavicle_l" -p "spine_03";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 11.883687973022461 -2.7320878505706787 -3.7819831371307373 ;
	setAttr ".r" -type "double3" 108.71916198730472 61.853576660156257 101.54093170166017 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.881745 -0.169211 -0.440334 0 -0.446774 1.66167e-005 -0.89464699999999997 0
		 0.151391 0.98558000000000001 -0.075584200000000004 0 3.78199 152.20121700000001 -2.7603930000000001 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "upperarm_l" -p "clavicle_l";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 15.784872055053711 1.4317954599718519e-009 6.3591301113774534e-009 ;
	setAttr ".r" -type "double3" 7.6739015579223624 40.300533294677741 -17.021003723144538 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.64483999999999997 -0.76087199999999999 -0.072499800000000003 0
		 -0.068049100000000001 0.037325999999999998 -0.99698299999999995 0 0.76128300000000004 0.64782799999999996 -0.0277074 0
		 17.700220999999999 149.530248 -9.7110020000000006 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "lowerarm_l" -p "upperarm_l";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 30.339929580688477 8.4074702755287944e-009 3.197527576048742e-009 ;
	setAttr ".r" -type "double3" -3.6132805347442623 -10.397336959838864 -30.360864639282223 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.71849099999999999 -0.54738500000000001 0.42911500000000002 0
		 0.226213 -0.399509 -0.88838099999999998 0 0.65772200000000003 0.73536500000000005 -0.163218 0
		 37.264611000000002 126.445457 -11.910640000000001 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "hand_l" -p "lowerarm_l";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 26.975143432617188 1.5729675340026006e-009 -9.6207486421917565e-009 ;
	setAttr ".r" -type "double3" -76.356178283691392 2.4998080730438237 -0.41257095336913996 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.68747400000000003 -0.57604999999999995 0.44220500000000001 0
		 -0.61435799999999996 -0.78602099999999997 -0.068818900000000002 0 0.38722600000000001 -0.224361 -0.89427000000000001 0
		 56.646011000000001 111.67965599999999 -0.3352 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "index_01_l" -p "hand_l";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 12.068114280700684 1.7634615898132324 -2.1093976497650146 ;
	setAttr ".r" -type "double3" 14.866970062255861 -3.7637891769409189 25.536914825439457 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.38012000000000001 -0.87149799999999999 0.30983899999999998 0
		 -0.72907500000000003 -0.48845300000000003 -0.47943999999999998 0 0.56917300000000004 -0.043650700000000001 -0.82105799999999995 0
		 63.042318000000002 103.81496799999999 6.7663960000000003 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "index_02_l" -p "index_01_l";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 4.2874979972839355 -2.9850326654923265e-008 5.0484132430028694e-009 ;
	setAttr ".r" -type "double3" 1.3378193378448495 -0.47529235482215926 11.986148834228521 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.225136 -0.95426599999999995 0.19669800000000001 0
		 -0.77866000000000002 -0.297568 -0.552396 0 0.58566399999999996 -0.0287964 -0.81004200000000004 0
		 64.672083000000001 100.078422 8.0948290000000007 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "index_03_l" -p "index_02_l";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 3.3937902450561523 1.1695448165482958e-008 -2.3492283673931524e-009 ;
	setAttr ".r" -type "double3" 1.1373670101165774 0.99726903438568182 -9.4963321685791069 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999989 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.34027099999999999 -0.891459 0.29919400000000002 0
		 -0.71895699999999996 -0.45172000000000001 -0.52825100000000003 0 0.60606599999999999 -0.035359300000000003 -0.794628 0
		 65.436147000000005 96.839843000000002 8.7623789999999993 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "middle_01_l" -p "hand_l";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 12.244280815124512 1.293643593788147 0.57116198539733887 ;
	setAttr ".r" -type "double3" 1.917851328849792 -7.0405654907226536 22.825855255126939 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.43979000000000001 -0.85705799999999999 0.26839400000000002 0
		 -0.82123299999999999 -0.504741 -0.26610800000000001 0 0.36353999999999997 -0.103382 -0.92582500000000001 0
		 64.490046000000007 103.48136 4.4794869999999998 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "middle_02_l" -p "middle_01_l";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 4.6403741836547852 -3.648182200777228e-009 1.8308625726604077e-009 ;
	setAttr ".r" -type "double3" -2.0249526500701909 1.1368371248245241 12.280713081359863 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 1 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.24778600000000001 -0.94256899999999999 0.22397900000000001 0
		 -0.908447 -0.30638399999999999 -0.28434599999999999 0 0.33663900000000002 -0.133016 -0.93219200000000002 0
		 66.530837000000005 99.504288000000003 5.7249359999999996 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "middle_03_l" -p "middle_02_l";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 3.64884352684021 -1.9989442989754025e-008 1.6076349140803359e-009 ;
	setAttr ".r" -type "double3" 0.78144752979278542 -4.3899536132812482 -15.39975643157959 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999989 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.50448899999999997 -0.83511999999999997 0.21923699999999999 0
		 -0.80587900000000001 -0.54657900000000004 -0.22761899999999999 0 0.30991999999999997 -0.061847100000000002 -0.94874899999999995 0
		 67.434971000000004 96.065003000000004 6.5422000000000002 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "pinky_01_l" -p "hand_l";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 10.140665054321289 2.2631511688232422 4.6431479454040527 ;
	setAttr ".r" -type "double3" -18.72459793090821 -18.933965682983409 20.185865402221687 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.53545799999999999 -0.84076899999999999 0.079954300000000006 0
		 -0.84322399999999997 -0.52688299999999999 0.106617 0 -0.047513600000000003 -0.12450799999999999 -0.99107999999999996 0
		 64.025017000000005 103.0175 -0.158918 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "pinky_02_l" -p "pinky_01_l";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 3.5709807872772217 1.8669879864319228e-008 3.9181813349387085e-010 ;
	setAttr ".r" -type "double3" 1.0638334751129148 -1.3156856298446651 11.208059310913086 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.36015999999999998 -0.929759 0.076370400000000005 0
		 -0.93209600000000004 -0.355267 0.070589100000000002 0 -0.038498999999999999 -0.096607899999999997 -0.99457799999999996 0
		 65.937128000000001 100.015131 0.12659799999999999 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "pinky_03_l" -p "pinky_02_l";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 2.9856307506561279 -3.0058785682740563e-008 -4.0375418564053689e-009 ;
	setAttr ".r" -type "double3" 0.44569900631904613 3.8696639537811293 1.0389990806579588 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 1 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.34501500000000002 -0.92739499999999997 0.14458199999999999 0
		 -0.93856399999999995 -0.33957999999999999 0.061512400000000002 0 -0.0079490499999999992 -0.15692200000000001 -0.98757899999999998 0
		 67.012433000000001 97.239213000000007 0.35461199999999998 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "ring_01_l" -p "hand_l";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 11.497884750366211 1.7535265684127808 2.8469123840332031 ;
	setAttr ".r" -type "double3" -13.510274887084966 -10.989254951477056 23.292085647583018 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.455208 -0.86727699999999996 0.20153499999999999 0
		 -0.884494 -0.46645500000000001 -0.0095143399999999996 0 0.102259 -0.173925 -0.97943499999999994 0
		 64.575614000000002 103.039254 2.082643 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "ring_02_l" -p "ring_01_l";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 4.4301772117614746 4.6665036279591732e-009 -9.4033403286175599e-010 ;
	setAttr ".r" -type "double3" 0.30135601758956898 -1.6697421073913579 13.315453529357915 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.24213899999999999 -0.95605600000000002 0.16530400000000001 0
		 -0.96504100000000004 -0.254936 -0.060852700000000003 0 0.10032099999999999 -0.144791 -0.98436299999999999 0
		 66.592264999999998 99.197063 2.9754779999999998 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "ring_03_l" -p "ring_02_l";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 3.4766523838043213 -1.6786358969511639e-008 2.7686510861713032e-009 ;
	setAttr ".r" -type "double3" -0.36076423525810247 2.9876680374145508 -12.899674415588377 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.44562499999999999 -0.86627900000000002 0.22578599999999999 0
		 -0.88739100000000004 -0.46072999999999997 -0.016281 0 0.11813 -0.193105 -0.97404100000000005 0
		 67.434096999999994 95.873187999999999 3.5501830000000001 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "thumb_01_l" -p "hand_l";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 4.7620363235473633 2.3749806880950928 -2.5378196239471436 ;
	setAttr ".r" -type "double3" 95.069137573242188 36.918972015380866 27.056173324584968 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.033459099999999999 -0.56121399999999999 0.82699400000000001 0
		 0.58346200000000004 -0.66084900000000002 -0.47207100000000002 0 0.81145100000000003 0.49831500000000001 0.305336 0
		 57.477991000000003 107.639089 3.8766500000000002 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "thumb_02_l" -p "thumb_01_l";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 3.8696718215942383 5.0118700301027275e-009 9.9849728485423839e-009 ;
	setAttr ".r" -type "double3" 1.6131404638290407 9.8332386016845774 15.151322364807122 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.043499799999999998 -0.78903800000000002 0.61280199999999996 0
		 0.57761200000000001 -0.48061100000000001 -0.65983199999999997 0 0.81515199999999999 0.382664 0.43485099999999999 0
		 57.607466000000002 105.467375 7.0768459999999997 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "thumb_03_l" -p "thumb_02_l";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 4.062171459197998 1.0721912246935972e-009 -5.1272763812448829e-010 ;
	setAttr ".r" -type "double3" 2.4147641658782968 0.47919920086860662 -12.385654449462892 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.088219599999999995 -0.67076499999999994 0.73640499999999998 0
		 0.60730399999999995 -0.62221199999999999 -0.49399700000000002 0 0.78955600000000004 0.403642 0.46224999999999999 0
		 57.784170000000003 102.26216599999999 9.5661529999999999 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "lowerarm_twist_01_l" -p "lowerarm_l";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 14 3.5527136788005009e-015 1.4210854715202004e-014 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.71849099999999999 -0.54738500000000001 0.42911500000000002 0
		 0.226213 -0.399509 -0.88838099999999998 0 0.65772200000000003 0.73536500000000005 -0.163218 0
		 47.323486000000003 118.782061 -5.9030290000000001 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "upperarm_twist_01_l" -p "upperarm_l";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0.5 -3.5527136788005009e-015 0 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.64483999999999997 -0.76087199999999999 -0.072499800000000003 0
		 -0.068049100000000001 0.037325999999999998 -0.99698299999999995 0 0.76128300000000004 0.64782799999999996 -0.0277074 0
		 18.022639999999999 149.149812 -9.7472519999999996 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "clavicle_r" -p "spine_03";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 11.8837890625 -2.7321023941040039 3.7820026874542236 ;
	setAttr ".r" -type "double3" 108.71916198730472 61.853576660156257 -78.459037780761705 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.881745 0.169211 0.44033299999999997 0 -0.446774 -1.60328e-005 0.89464699999999997 0
		 0.151391 -0.98558000000000001 0.075584700000000005 0 -3.7819959999999999 152.20132000000001 -2.7603949999999999 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "upperarm_r" -p "clavicle_r";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -15.784797668457031 -7.0139599301910494e-006 -1.1171471669513267e-005 ;
	setAttr ".r" -type "double3" 7.6739015579223624 40.300533294677741 -17.021003723144538 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.64483999999999997 0.76087099999999996 0.072499400000000006 0
		 -0.068049100000000001 -0.037325499999999998 0.99698399999999998 0 0.76128200000000001 -0.64782799999999996 0.027707699999999998 0
		 -17.70016 149.53037399999999 -9.7109769999999997 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "lowerarm_r" -p "upperarm_r";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -30.340049743652344 -4.0850213736121077e-006 1.7513536931801355e-006 ;
	setAttr ".r" -type "double3" -3.6132805347442623 -10.397336959838864 -30.360864639282223 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.71849099999999999 0.54738500000000001 -0.42911500000000002 0
		 0.226213 0.39950999999999998 0.88837999999999995 0 0.65772200000000003 -0.73536500000000005 0.163219 0
		 -37.264631999999999 126.445494 -11.910615999999999 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "hand_r" -p "lowerarm_r";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -26.975244522094727 2.5634119083406404e-005 -1.1905384553756448e-006 ;
	setAttr ".r" -type "double3" -76.356178283691392 2.4998080730438237 -0.41257095336913996 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.68747400000000003 0.57604999999999995 -0.44220599999999999 0
		 -0.61435799999999996 0.78602099999999997 0.068818400000000002 0 0.38722600000000001 0.22436200000000001 0.89427000000000001 0
		 -56.646102999999997 111.67966 -0.33510200000000001 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "index_01_r" -p "hand_r";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -12.067941665649414 -1.7637253999710083 2.1094281673431396 ;
	setAttr ".r" -type "double3" 14.866970062255861 -3.7637891769409189 25.536914825439457 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.38012000000000001 0.87149799999999999 -0.30983899999999998 0
		 -0.72907500000000003 0.48845300000000003 0.47943999999999998 0 0.56917300000000004 0.043651000000000002 0.82105799999999995 0
		 -63.042119999999997 103.814876 6.7664309999999999 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "index_02_r" -p "index_01_r";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -4.2876882553100586 9.2459835286717862e-005 -7.4262097768951207e-005 ;
	setAttr ".r" -type "double3" 1.3378193378448495 -0.47529235482215926 11.986148834228521 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.225136 0.95426599999999995 -0.19669800000000001 0
		 -0.77866000000000002 0.29756899999999997 0.552396 0 0.58566399999999996 0.028796700000000001 0.81004200000000004 0
		 -64.672067999999996 100.07820700000001 8.0949080000000002 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "index_03_r" -p "index_02_r";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -3.3937981128692627 0.00012069699005223811 -1.2407956091919914e-005 ;
	setAttr ".r" -type "double3" 1.1373670101165774 0.99726903438568182 -9.4963321685791069 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999989 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.34027099999999999 0.89145799999999997 -0.29919499999999999 0
		 -0.71895699999999996 0.45172099999999998 0.52825100000000003 0 0.60606599999999999 0.035359500000000002 0.794628 0
		 -65.436234999999996 96.839657000000003 8.762518 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "middle_01_r" -p "hand_r";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -12.244112968444824 -1.2937241792678833 -0.57113021612167358 ;
	setAttr ".r" -type "double3" 1.917851328849792 -7.0405654907226536 22.825855255126939 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.43979099999999999 0.85705799999999999 -0.26839400000000002 0
		 -0.82123299999999999 0.504741 0.26610800000000001 0 0.36353999999999997 0.103383 0.92582399999999998 0
		 -64.489963000000003 103.481409 4.4795379999999998 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "middle_02_r" -p "middle_01_r";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -4.640568733215332 -0.00014491056208498776 7.6369551607058384e-006 ;
	setAttr ".r" -type "double3" -2.0249526500701909 1.1368371248245241 12.280713081359863 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 1 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.24778700000000001 0.94256799999999996 -0.22397900000000001 0
		 -0.908447 0.30638500000000002 0.28434500000000001 0 0.33663900000000002 0.133017 0.93219099999999999 0
		 -66.530719000000005 99.504098999999997 5.7250100000000002 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "middle_03_r" -p "middle_02_r";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -3.6489090919494629 3.2996809750329703e-005 -2.2666431505058426e-006 ;
	setAttr ".r" -type "double3" 0.78144752979278542 -4.3899536132812482 -15.39975643157959 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999989 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.50448899999999997 0.83511999999999997 -0.21923699999999999 0
		 -0.80587900000000001 0.54657999999999995 0.22761899999999999 0 0.30991999999999997 0.0618475 0.94874899999999995 0
		 -67.434900999999996 96.064762999999999 6.5422969999999996 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "pinky_01_r" -p "hand_r";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -10.140592575073242 -2.2633547782897949 -4.643094539642334 ;
	setAttr ".r" -type "double3" -18.72459793090821 -18.933965682983409 20.185865402221687 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.53545799999999999 0.84076799999999996 -0.079954800000000006 0
		 -0.84322399999999997 0.52688299999999999 -0.106617 0 -0.047513600000000003 0.12450899999999999 0.99107999999999996 0
		 -64.024916000000005 103.017399 -0.15881300000000001 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "pinky_02_r" -p "pinky_01_r";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -3.5710570812225342 -7.8019678767304868e-005 -8.1079842857434414e-006 ;
	setAttr ".r" -type "double3" 1.0638334751129148 -1.3156856298446651 11.208059310913086 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.36015999999999998 0.929759 -0.076370900000000005 0
		 -0.93209600000000004 0.355267 -0.070589299999999994 0 -0.038498999999999999 0.0966085 0.99457799999999996 0
		 -65.937002000000007 100.01492500000001 0.12670999999999999 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "pinky_03_r" -p "pinky_02_r";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -2.9854192733764648 0.00031727668829262257 -3.5056928027188405e-005 ;
	setAttr ".r" -type "double3" 0.44570046663284296 3.8696639537811306 1.0389991998672488 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999989 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.34501500000000002 0.92739400000000005 -0.14458199999999999 0
		 -0.93856300000000004 0.33957999999999999 -0.061512499999999998 0 -0.0079489899999999995 0.15692300000000001 0.98757899999999998 0
		 -67.012525999999994 97.239312999999996 0.35465200000000002 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "ring_01_r" -p "hand_r";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -11.497973442077637 -1.7537660598754883 -2.8469147682189941 ;
	setAttr ".r" -type "double3" -13.510274887084966 -10.989254951477056 23.292085647583018 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.455208 0.86727699999999996 -0.20153499999999999 0
		 -0.884494 0.46645500000000001 0.0095140999999999993 0 0.102259 0.173926 0.97943499999999994 0
		 -64.575622999999993 103.03902100000001 2.082767 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "ring_02_r" -p "ring_01_r";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -4.4298644065856934 8.4479885117616504e-005 -1.837869785958901e-005 ;
	setAttr ".r" -type "double3" 0.30135601758956898 -1.6697421073913579 13.315453529357915 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.24213899999999999 0.95605600000000002 -0.16530500000000001 0
		 -0.96504100000000004 0.254936 0.0608526 0 0.10032099999999999 0.144791 0.98436299999999999 0
		 -66.592209999999994 99.197139000000007 2.9755229999999999 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "ring_03_r" -p "ring_02_r";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -3.476658821105957 7.1941642090678215e-005 -2.8431277314666659e-006 ;
	setAttr ".r" -type "double3" -0.36076423525810247 2.9876680374145508 -12.899674415588377 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.44562600000000002 0.86627799999999999 -0.22578599999999999 0
		 -0.88739100000000004 0.46072999999999997 0.016280699999999999 0 0.11813 0.193106 0.97404100000000005 0
		 -67.434113999999994 95.873276000000004 3.550233 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "thumb_01_r" -p "hand_r";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -4.7621245384216309 -2.3751199245452881 2.5378017425537109 ;
	setAttr ".r" -type "double3" 95.069137573242188 36.918972015380866 27.056173324584968 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.033459200000000001 0.56121399999999999 -0.82699400000000001 0
		 0.58346299999999995 0.66084900000000002 0.47206999999999999 0 0.81145 -0.49831500000000001 -0.305336 0
		 -57.478065999999998 107.638931 3.8767640000000001 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "thumb_02_r" -p "thumb_01_r";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -3.8695690631866455 0.00011357050243532285 5.5954889830900356e-005 ;
	setAttr ".r" -type "double3" 1.6131424903869631 9.8332386016845703 15.151324272155765 ;
	setAttr ".s" -type "double3" 0.99999999999999989 1 1 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.0435001 0.78903800000000002 -0.61280299999999999 0
		 0.57761200000000001 0.48061100000000001 0.65983199999999997 0 0.81515199999999999 -0.38266499999999998 -0.43485099999999999 0
		 -57.607427000000001 105.46732299999999 7.0769120000000001 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "thumb_03_r" -p "thumb_02_r";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -4.0621762275695801 2.0121733541600406e-006 3.2049592846306041e-006 ;
	setAttr ".r" -type "double3" 2.4147622585296631 0.47919237613677962 -12.385654449462887 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 1 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.088219400000000003 0.67076400000000003 -0.73640499999999998 0
		 0.60730499999999998 0.62221199999999999 0.49399700000000002 0 0.78955600000000004 -0.403642 -0.46224900000000002 0
		 -57.784128000000003 102.262112 9.5662240000000001 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "lowerarm_twist_01_r" -p "lowerarm_r";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -14 2.4331944587174803e-005 -6.578326974704396e-006 ;
	setAttr ".r" -type "double3" -13.510370254516607 0 0 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.71849099999999999 0.54738500000000001 -0.42911500000000002 0
		 0.066295000000000007 0.56025100000000005 0.82566499999999998 0 0.69236900000000001 -0.62168199999999996 0.36624699999999999 0
		 -47.323507999999997 118.782118 -5.9029800000000003 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "upperarm_twist_01_r" -p "upperarm_r";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -0.5 -3.700793968164362e-006 -1.1559803851923789e-006 ;
	setAttr ".r" -type "double3" -19.951902389526371 0 0 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.64483999999999997 0.76087099999999996 0.072499400000000006 0
		 -0.32373800000000003 0.185974 0.92768899999999999 0 0.69236900000000001 -0.62168199999999996 0.36624699999999999 0
		 -18.022580999999999 149.14993899999999 -9.7472300000000001 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "neck_01" -p "spine_03";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 16.558782577514648 -0.35531756281852722 -5.9659740259121463e-008 ;
	setAttr ".r" -type "double3" 0 0 -23.508049011230465 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 1.1665300000000001e-007 0.97017600000000004 0.24240100000000001 0
		 2.8919700000000001e-008 0.24240100000000001 -0.97017600000000004 0 -1 1.2018400000000001e-007 2.1958399999999999e-010 0
		 7.1703699999999996e-006 156.42101700000001 -5.874689 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "head" -p "neck_01";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 9.2836132049560547 0.36415687203407288 2.9273693708751483e-015 ;
	setAttr ".r" -type "double3" 0 0 15.348649978637697 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 1.20147e-007 0.99973400000000001 -0.023042400000000001 0
		 -2.98886e-009 -0.023042400000000001 -0.99973400000000001 0 -1 1.2018400000000001e-007 2.1958399999999999e-010 0
		 8.2638599999999995e-006 165.51602800000001 -3.977627 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "thigh_l" -p "pelvis";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -1.4488286972045898 -0.53142350912094116 -9.0058097839355469 ;
	setAttr ".r" -type "double3" 8.563466072082516 -7.0322942733764631 -1.5154702663421626 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.122429 0.99202800000000002 0.0298731 0 -0.147785 0.011542 -0.98895200000000005 0
		 -0.98141299999999998 -0.12549099999999999 0.14519299999999999 0 9.0058100000000003 95.299841000000001 -0.53002800000000005 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "calf_l" -p "thigh_l";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -42.572036743164062 1.7074197611322006e-010 -4.6678749754391902e-010 ;
	setAttr ".r" -type "double3" -5.7359738349914551 1.7872760295867924 -7.613584041595459 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 1 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.071110499999999993 0.98518899999999998 0.156031 0
		 -0.063531599999999994 0.15163599999999999 -0.98639299999999996 0 -0.99544299999999997 -0.080055799999999996 0.051807800000000001 0
		 14.217846 53.067203999999997 -1.8017860000000001 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "calf_twist_01_l" -p "calf_l";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -20.476776123046875 0 0 ;
	setAttr ".r" -type "double3" 0.32356074452400213 -0.21909196674823764 -0.87298214435577393 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.0739403 0.98245099999999996 0.171238 0 -0.070226499999999997 0.16615199999999999 -0.98359600000000003 0
		 -0.99478699999999998 -0.084752800000000003 0.056708799999999997 0 15.673961 32.893706000000002 -4.9967940000000004 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "foot_l" -p "calf_l";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -40.196689605712891 -3.9338505786190581e-009 1.8994583683706878e-010 ;
	setAttr ".r" -type "double3" -0.41538643836975109 3.7049334049224849 8.0595779418945313 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.014825899999999999 0.99980800000000003 0.0128132 0
		 -0.045693999999999999 0.012123699999999999 -0.99888200000000005 0 -0.99884499999999998 -0.0153949 0.045505499999999997 0
		 17.076255 13.465861 -8.0737089999999991 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "ball_l" -p "foot_l";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -10.453837394714355 -16.577854156494141 0.080155946314334869 ;
	setAttr ".r" -type "double3" 0.0039439606480300418 0.0089543778449296969 -91.883583068847685 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.046312699999999998 -0.044977299999999998 0.99791399999999997 0
		 -0.013384800000000001 0.99886799999999998 0.045641500000000002 0 -0.99883699999999997 -0.015470599999999999 0.045658299999999999 0
		 17.908688000000001 2.8118120000000002 8.3553099999999993 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "thigh_twist_01_l" -p "thigh_l";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -22.09423828125 3.3306690738754696e-016 0 ;
	setAttr ".r" -type "double3" -5.4386773109436017 -0.0002117358526447789 -0.056330300867557526 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.12228700000000001 0.99201499999999998 0.030845899999999999 0
		 -0.054220499999999998 0.024355399999999999 -0.99823200000000001 0 -0.99101300000000003 -0.12374300000000001 0.050809300000000002 0
		 11.710777 73.381746000000007 -1.190051 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "thigh_r" -p "pelvis";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -1.4486445188522339 -0.53142756223678589 9.005803108215332 ;
	setAttr ".r" -type "double3" 8.5634660720825213 -7.0322942733764648 178.48452758789062 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.122429 -0.99202800000000002 -0.0298731 0 -0.147785 -0.011542 0.98895200000000005 0
		 -0.98141299999999998 0.12549099999999999 -0.14519299999999999 0 -9.0058030000000002 95.300027 -0.53002300000000002 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "calf_r" -p "thigh_r";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 42.572250366210938 -1.6233628912232234e-006 -5.8367555766380974e-007 ;
	setAttr ".r" -type "double3" -5.7359738349914551 1.7872760295867924 -7.613584041595459 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 1 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.071110800000000002 -0.98518899999999998 -0.156031 0
		 -0.063531699999999997 -0.15163599999999999 0.98639299999999996 0 -0.99544299999999997 0.080056100000000005 -0.051807800000000001 0
		 -14.217876 53.06718 -1.8017909999999999 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "calf_twist_01_r" -p "calf_r";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 20.476907730102539 0 -3.5527136788005009e-015 ;
	setAttr ".r" -type "double3" 0.3233703374862672 -0.21913294494152077 -0.87296384572982844 ;
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 0.99999999999999989 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.073941199999999999 -0.98245099999999996 -0.171238 0
		 -0.0702232 -0.16615199999999999 0.98359700000000005 0 -0.99478699999999998 0.084753200000000001 -0.056705400000000003 0
		 -15.674004999999999 32.893552999999997 -4.9968199999999996 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "foot_r" -p "calf_r";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 40.196819305419922 1.6769354260759428e-006 -1.0918018233496696e-005 ;
	setAttr ".r" -type "double3" -0.41538643836975109 3.7049334049224849 8.0595779418945313 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.014826199999999999 -0.99980800000000003 -0.0128132 0
		 -0.045693999999999999 -0.012123699999999999 0.99888200000000005 0 -0.99884499999999998 0.0153951 -0.045505499999999997 0
		 -17.076291999999999 13.465709 -8.0737330000000007 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "ball_r" -p "foot_r";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 10.453816413879395 16.577796936035156 -0.080158449709415436 ;
	setAttr ".r" -type "double3" 0.0039439606480300418 0.0089543778449296969 -91.883583068847685 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.046312699999999998 0.044977299999999998 -0.99791399999999997 0
		 -0.013384999999999999 -0.99886799999999998 -0.045641500000000002 0 -0.99883699999999997 0.015470899999999999 -0.045658299999999999 0
		 -17.908722000000001 2.8116810000000001 8.3552289999999996 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "thigh_twist_01_r" -p "thigh_r";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 22.094240188598633 2.2204460492503131e-016 -3.5527136788005009e-015 ;
	setAttr ".r" -type "double3" -5.4388685226440465 -0.00016392453107982822 -0.056340634822845466 ;
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.12228600000000001 -0.99201499999999998 -0.030845999999999998 0
		 -0.054217300000000003 -0.0243559 0.99823200000000001 0 -0.99101300000000003 0.12374300000000001 -0.050805999999999997 0
		 -11.710775999999999 73.381930999999994 -1.1900470000000001 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "ik_foot_root" -p "root";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 0 -1 0 0 1 0 0 0 0 0 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "ik_foot_l" -p "ik_foot_root";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 17.076271057128906 8.0721273422241211 13.465730667114258 ;
	setAttr ".r" -type "double3" 141.82099914550813 -88.877769470214858 -139.20716857910196 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.0148276 0.99980800000000003 0.012795600000000001 0
		 -0.045693900000000003 0.0121061 -0.99888200000000005 0 -0.99884499999999998 -0.0153957 0.0455056 0
		 17.076270999999998 13.465731 -8.0721270000000001 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "ik_foot_r" -p "ik_foot_root";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -17.076288223266602 8.072148323059082 13.465573310852051 ;
	setAttr ".r" -type "double3" -38.178882598877323 88.877769470214858 139.20716857910145 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" -0.0148276 -0.99980800000000003 -0.012795600000000001 0
		 -0.045695899999999998 -0.0121061 0.99888200000000005 0 -0.99884499999999998 0.015395799999999999 -0.045507699999999998 0
		 -17.076288000000002 13.465572999999999 -8.0721480000000003 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "ik_hand_root" -p "root";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".v" no;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 0 -1 0 0 1 0 0 0 0 0 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "ik_hand_gun" -p "ik_hand_root";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -56.646099090576172 0.33541175723075867 111.67965698242187 ;
	setAttr ".r" -type "double3" 74.068016052246065 -35.172615051269531 32.751056671142585 ;
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.68747400000000003 0.57604200000000005 -0.442216 0
		 -0.61435799999999996 0.786022 0.068803299999999998 0 0.38722499999999999 0.224379 0.89426600000000001 0
		 -56.646099 111.67965700000001 -0.33541199999999999 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "ik_hand_l" -p "ik_hand_gun";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 77.885429382324219 -69.601913452148438 43.869503021240234 ;
	setAttr ".r" -type "double3" -145.80032348632812 -32.168746948242202 -93.709014892578139 ;
	setAttr ".s" -type "double3" 1 1.0000000000000002 1.0000000000000002 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.68747400000000003 -0.57604200000000005 0.442216 0
		 -0.61435799999999996 -0.786022 -0.068804100000000007 0 0.38722600000000001 -0.22437799999999999 -0.89426499999999998 0
		 56.646000000000001 111.67967299999999 -0.33546300000000001 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "ik_hand_r" -p "ik_hand_gun";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -3.5527136788005009e-014 0 3.5527136788005009e-015 ;
	setAttr ".ssc" no;
	setAttr ".bps" -type "matrix" 0.68747400000000003 0.57604200000000005 -0.442216 0
		 -0.61435799999999996 0.786022 0.068803299999999998 0 0.38722499999999999 0.224379 0.89426600000000001 0
		 -56.646099 111.67965700000001 -0.33541199999999999 1;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 4 ".lnk";
	setAttr -s 4 ".slnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode phong -n "M_UE4Man_Body";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 0.2158605 0.2158605 0.2158605 ;
	setAttr ".sc" -type "float3" 0.2 0.2 0.2 ;
	setAttr ".rfl" 1;
createNode shadingEngine -n "SK_MannequinSG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
createNode lambert -n "FbxFBXASC032DefaultFBXASC032MaterialFBXASC0321";
	setAttr ".dc" 1;
	setAttr ".c" -type "float3" 0.72000003 0.72000003 0.72000003 ;
	setAttr ".ambc" -type "float3" 0.2 0.2 0.2 ;
createNode shadingEngine -n "SK_MannequinSG1";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
createNode dagPose -n "bindPose1";
	setAttr -s 69 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 -0 0 -0 2.2204460492503131e-016 -1.0000000000000002 0
		 0 1.0000000000000002 2.2204460492503131e-016 0 0 0 0 1;
	setAttr -s 69 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 -1.5707963267948963 -0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 0.99999999999999978 0.99999999999999978 -2.2204460492503126e-016
		 -0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 1.5707634367554355 -1.5671422034632094
		 -1.5707634367554355 0 1.3536841578012896e-028 1.0561532974243379 96.750602722167969 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1.0000000000000002 1.0000000000000002 no;
	setAttr ".xm[3]" -type "matrix" "xform" 0.99999999999999989 1 1 -8.2782984593630523e-019
		 5.3478025670949693e-018 -0.1248583296114972 0 10.808877944946289 -0.85141515731822759
		 -6.0916772521473275e-013 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1.0000000000000002 1.0563400411177279e-018
		 1.3594831046675846e-017 0.24545531851798108 0 18.87534904479979 3.8011586666107124
		 5.9660933866571551e-008 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1.0000000000000002
		 1 1 no;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 0.99999999999999989 1.1237317122427358e-018
		 8.1207659312831189e-018 0.048509974437308423 0 13.407328605651855 0.42047739028930842
		 -5.5770533726124186e-013 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 0.99999999999999978 no;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 1.8975073366875286 1.0795485668544444
		 1.7722235837366584 0 11.883687973022461 -2.7320878505706823 -3.7819831371307373 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1.0000000000000002 no;
	setAttr ".xm[7]" -type "matrix" "xform" 0.99999999999999978 1 0.99999999999999978 0.13393484865966768
		 0.70337699630172457 -0.29707255696308532 0 15.784872055053706 1.4318062291351907e-009
		 6.3591585330868838e-009 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1.0000000000000004 1.0000000000000004 -0.063063642129508796
		 -0.18146776338848586 -0.52989705170779533 0 30.339929580688477 8.407477380956152e-009
		 3.1975133651940268e-009 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1.0000000000000002
		 1 1.0000000000000002 no;
	setAttr ".xm[9]" -type "matrix" "xform" 1.0000000000000002 0.99999999999999989 1.0000000000000002 -1.3326667152902076
		 0.043629881542549619 -0.0072007215343830788 0 26.975143432617177 1.5729639812889218e-009
		 -9.6207202204823261e-009 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 0.99999999999999956
		 0.99999999999999956 no;
	setAttr ".xm[10]" -type "matrix" "xform" 1.0000000000000004 0.99999999999999978 1.0000000000000002 0.25947757738179095
		 -0.065690513488546348 0.44570324450527155 0 12.068114280700694 1.7634615898132466
		 -2.1093976497650195 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0.99999999999999978
		 1.0000000000000002 0.99999999999999978 no;
	setAttr ".xm[11]" -type "matrix" "xform" 1 1.0000000000000002 1.0000000000000002 0.023349352242242737
		 -0.0082954165012037919 0.20919776179136793 0 4.2874979972839284 -2.9850326654923265e-008
		 5.0484096902891906e-009 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0.99999999999999956
		 1.0000000000000002 0.99999999999999978 no;
	setAttr ".xm[12]" -type "matrix" "xform" 0.99999999999999956 1 1 0.019850799130098063
		 0.017405628178214682 -0.16574226320475924 0 3.3937902450561381 1.1695419743773527e-008
		 -2.34923547282051e-009 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 0.99999999999999978
		 0.99999999999999978 no;
	setAttr ".xm[13]" -type "matrix" "xform" 1.0000000000000002 0.99999999999999978 1 0.033472820252177148
		 -0.12288104901540052 0.39838632878561575 0 12.244280815124528 1.2936435937881612
		 0.57116198539733665 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0.99999999999999978
		 1.0000000000000002 0.99999999999999978 no;
	setAttr ".xm[14]" -type "matrix" "xform" 1.0000000000000002 1.0000000000000002 1 -0.035342090940709461
		 0.019841550887093738 0.21433887776246804 0 4.6403741836547781 -3.6481964116319432e-009
		 1.8308519145193713e-009 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0.99999999999999978
		 1.0000000000000002 1 no;
	setAttr ".xm[15]" -type "matrix" "xform" 0.99999999999999967 1 1.0000000000000007 0.013638832326460574
		 -0.076619144561579838 -0.26877645373623715 0 3.6488435268402242 -1.9989442989754025e-008
		 1.6076384667940147e-009 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0.99999999999999978
		 0.99999999999999978 1 no;
	setAttr ".xm[16]" -type "matrix" "xform" 1.0000000000000004 1 1 -0.3268058850064659
		 -0.330460041627677 0.3523098136331777 0 10.140665054321296 2.2631511688232564
		 4.6431479454040439 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0.99999999999999978
		 1.0000000000000002 0.99999999999999978 no;
	setAttr ".xm[17]" -type "matrix" "xform" 0.99999999999999967 1 1.0000000000000007 0.018567396833653289
		 -0.022963046161964897 0.19561753773424051 0 3.5709807872772288 1.8669894075173943e-008
		 3.9181635713703145e-010 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0.99999999999999956
		 1 1 no;
	setAttr ".xm[18]" -type "matrix" "xform" 1.0000000000000004 1.0000000000000002 1.0000000000000002 0.0077789151331343351
		 0.067538376939222364 0.018133954882675194 0 2.9856307506561279 -3.0058785682740563e-008
		 -4.0375489618327265e-009 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1.0000000000000004
		 1 0.99999999999999933 no;
	setAttr ".xm[19]" -type "matrix" "xform" 1.0000000000000007 0.99999999999999989 0.99999999999999989 -0.23579877962913798
		 -0.19179868124436422 0.40652358420683932 0 11.49788475036622 1.753526568412795
		 2.8469123840331951 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0.99999999999999978
		 1.0000000000000002 0.99999999999999978 no;
	setAttr ".xm[20]" -type "matrix" "xform" 1 1.0000000000000004 1.0000000000000004 0.00525965472763581
		 -0.029142497433167838 0.23239850548359506 0 4.4301772117614462 4.6665036279591732e-009
		 -9.4033936193227419e-010 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0.99999999999999933
		 1.0000000000000002 1.0000000000000002 no;
	setAttr ".xm[21]" -type "matrix" "xform" 0.99999999999999978 1.0000000000000002 0.99999999999999989 -0.0062965237286933158
		 0.052144644209481061 -0.22514179098729306 0 3.4766523838043497 -1.6786373180366354e-008
		 2.7686475334576244e-009 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 0.99999999999999956
		 0.99999999999999956 no;
	setAttr ".xm[22]" -type "matrix" "xform" 1.0000000000000002 1.0000000000000002 0.99999999999999989 1.6592694676845277
		 0.64435761812004277 0.47221930750426805 0 4.7620363235473704 2.374980688095107
		 -2.5378196239471493 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0.99999999999999978
		 1.0000000000000002 0.99999999999999978 no;
	setAttr ".xm[23]" -type "matrix" "xform" 1.0000000000000002 0.99999999999999989 1 0.028154612390965696
		 0.17162238973359908 0.26444046129693749 0 3.8696718215942383 5.0118771355300851e-009
		 9.9849870593970991e-009 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0.99999999999999978
		 0.99999999999999978 1.0000000000000002 no;
	setAttr ".xm[24]" -type "matrix" "xform" 0.99999999999999989 1.0000000000000002 1.0000000000000004 0.042145585353750598
		 0.0083636038280826986 -0.21617045015741307 0 4.062171459197998 1.0721876719799184e-009
		 -5.1271342726977309e-010 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0.99999999999999978
		 1.0000000000000002 1 no;
	setAttr ".xm[25]" -type "matrix" "xform" 1.0000000000000002 1.0000000000000002 0.99999999999999989 1.3877787807814454e-016
		 -0 3.8857805861880469e-016 0 13.999999999999993 0 2.8421709430404007e-014 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 0.99999999999999956 0.99999999999999956 no;
	setAttr ".xm[26]" -type "matrix" "xform" 1 1.0000000000000004 1.0000000000000004 1.3877787807814451e-017
		 -7.7195194680967916e-017 2.4980018054066027e-016 0 0.5 -1.7763568394002505e-015
		 -1.4210854715202004e-014 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1.0000000000000002
		 1 1.0000000000000002 no;
	setAttr ".xm[27]" -type "matrix" "xform" 1.0000000000000002 1.0000000000000002 1 1.8975073366875288
		 1.0795485668544447 -1.3693685372209168 0 11.8837890625 -2.7321023941040039 3.7820026874542232 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1.0000000000000002 no;
	setAttr ".xm[28]" -type "matrix" "xform" 0.99999999999999978 0.99999999999999944
		 0.99999999999999989 0.13393484865966762 0.70337699630172534 -0.29707255696308493 0 -15.784797668457026
		 -7.0139599455121271e-006 -1.1171471697934976e-005 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 1 0 0 0 1 0.99999999999999978 0.99999999999999978 1 no;
	setAttr ".xm[29]" -type "matrix" "xform" 1 1.0000000000000002 0.99999999999999978 -0.063063642129508435
		 -0.18146776338848641 -0.52989705170779544 0 -30.340049743652358 -4.0850213824938919e-006
		 1.7513536931801355e-006 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1.0000000000000002
		 1.0000000000000007 1.0000000000000002 no;
	setAttr ".xm[30]" -type "matrix" "xform" 0.99999999999999978 0.99999999999999978
		 1 -1.3326667152902079 0.043629881542549487 -0.0072007215343831447 0 -26.975244522094712
		 2.5634119086959117e-005 -1.1905384695864996e-006 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 0.99999999999999978 1.0000000000000002 no;
	setAttr ".xm[31]" -type "matrix" "xform" 1.0000000000000002 0.99999999999999978 0.99999999999999989 0.25947757738179078
		 -0.065690513488546279 0.44570324450527143 0 -12.067941665649402 -1.7637253999710083
		 2.1094281673431525 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1.0000000000000002
		 1.0000000000000002 1 no;
	setAttr ".xm[32]" -type "matrix" "xform" 1.0000000000000002 0.99999999999999978 1.0000000000000002 0.023349352242243302
		 -0.0082954165012039584 0.20919776179136779 0 -4.2876882553100728 9.2459835286717862e-005
		 -7.4262097754740353e-005 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0.99999999999999978
		 1.0000000000000002 1.0000000000000002 no;
	setAttr ".xm[33]" -type "matrix" "xform" 1 0.99999999999999989 0.99999999999999967 0.019850799130098067
		 0.017405628178214751 -0.16574226320475907 0 -3.3937981128692485 0.00012069699005223811
		 -1.2407956099025341e-005 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0.99999999999999978
		 1.0000000000000002 0.99999999999999978 no;
	setAttr ".xm[34]" -type "matrix" "xform" 1 0.99999999999999989 1 0.033472820252177342
		 -0.12288104901540053 0.39838632878561564 0 -12.244112968444814 -1.2937241792678691
		 -0.57113021612166159 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1.0000000000000002
		 1.0000000000000002 1 no;
	setAttr ".xm[35]" -type "matrix" "xform" 1.0000000000000007 1 1.0000000000000002 -0.035342090940709239
		 0.019841550887093672 0.21433887776246804 0 -4.6405687332153462 -0.00014491056209919861
		 7.6369551678112657e-006 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1.0000000000000002
		 1 no;
	setAttr ".xm[36]" -type "matrix" "xform" 1.0000000000000002 1 1.0000000000000002 0.013638832326460458
		 -0.076619144561579713 -0.26877645373623676 0 -3.6489090919494629 3.2996809750329703e-005
		 -2.2666431451767721e-006 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0.99999999999999933
		 1 0.99999999999999978 no;
	setAttr ".xm[37]" -type "matrix" "xform" 1 1.0000000000000002 0.99999999999999967 -0.32680588500646568
		 -0.33046004162767689 0.35230981363317793 0 -10.140592575073226 -2.2633547782897807
		 -4.643094539642318 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1.0000000000000002
		 1.0000000000000002 1 no;
	setAttr ".xm[38]" -type "matrix" "xform" 0.99999999999999989 0.99999999999999978
		 1.0000000000000011 0.018567396833653327 -0.022963046161964776 0.19561753773423993 0 -3.5710570812225484
		 -7.8019678781515722e-005 -8.1079842786380141e-006 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 1 0 0 0 1 1 0.99999999999999978 1.0000000000000004 no;
	setAttr ".xm[39]" -type "matrix" "xform" 1.0000000000000004 0.99999999999999989 0.99999999999999978 0.0077789406204182522
		 0.067538376939222364 0.018133956963270009 0 -2.9854192733764506 0.00031727668827841171
		 -3.5056928027188405e-005 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1.0000000000000002
		 1.0000000000000002 0.99999999999999889 no;
	setAttr ".xm[40]" -type "matrix" "xform" 1.0000000000000002 1 0.99999999999999978 -0.2357987796291377
		 -0.19179868124436408 0.40652358420683932 0 -11.497973442077617 -1.7537660598754883
		 -2.8469147682189799 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1.0000000000000002
		 1.0000000000000002 1 no;
	setAttr ".xm[41]" -type "matrix" "xform" 1 0.99999999999999956 1.0000000000000007 0.0052596547276358837
		 -0.029142497433168001 0.23239850548359473 0 -4.4298644065857147 8.4479885117616504e-005
		 -1.8378697848930869e-005 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0.99999999999999978
		 1 1.0000000000000002 no;
	setAttr ".xm[42]" -type "matrix" "xform" 1.0000000000000004 0.99999999999999967 1 -0.0062965237286933115
		 0.052144644209481131 -0.22514179098729276 0 -3.476658821105957 7.194164207646736e-005
		 -2.843127729690309e-006 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1.0000000000000004
		 0.99999999999999933 no;
	setAttr ".xm[43]" -type "matrix" "xform" 0.99999999999999989 0.99999999999999978
		 1.0000000000000004 1.6592694676845277 0.64435761812004277 0.47221930750426855 0 -4.7621245384216238
		 -2.3751199245452881 2.5378017425537238 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1.0000000000000002
		 1.0000000000000002 1 no;
	setAttr ".xm[44]" -type "matrix" "xform" 1.0000000000000007 0.99999999999999967 0.99999999999999989 0.028154647761074288
		 0.17162238973359842 0.2644404945864508 0 -3.8695690631866597 0.00011357050243532285
		 5.5954889845111211e-005 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1.0000000000000002
		 1.0000000000000002 0.99999999999999956 no;
	setAttr ".xm[45]" -type "matrix" "xform" 1.0000000000000002 0.99999999999999989 1.0000000000000002 0.042145552064236792
		 0.008363484714042144 -0.21617045015741276 0 -4.0621762275695943 2.0121733577127543e-006
		 3.2049592846306041e-006 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0.99999999999999933
		 1.0000000000000004 1.0000000000000002 no;
	setAttr ".xm[46]" -type "matrix" "xform" 0.99999999999999978 0.99999999999999978
		 1.0000000000000002 -0.23580044410481912 -1.387778780781446e-017 5.5511151231257837e-016 0 -13.999999999999979
		 2.4331944590727517e-005 -6.578326974704396e-006 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 0.99999999999999978 1.0000000000000002 no;
	setAttr ".xm[47]" -type "matrix" "xform" 1 1.0000000000000002 1.0000000000000002 -0.34822638873375938
		 -6.6223068695414611e-016 2.0816681711721685e-016 0 -0.5 -3.700793968164362e-006
		 -1.1559803851923789e-006 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1.0000000000000002
		 1.0000000000000007 1.0000000000000002 no;
	setAttr ".xm[48]" -type "matrix" "xform" 1 0.99999999999999978 1.0000000000000002 -5.0965478971357075e-018
		 3.023612077173571e-017 -0.41029285596616905 0 16.558782577514677 -0.35531756281852367
		 -5.965974039340329e-008 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1.0000000000000002 no;
	setAttr ".xm[49]" -type "matrix" "xform" 0.99999999999999989 1.0000000000000004 0.99999999999999989 1.5784854984802135e-018
		 2.3934836093599755e-017 0.26788447786338515 0 9.2836132049560547 0.36415687203407288
		 2.6455193694345167e-015 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1.0000000000000002
		 0.99999999999999978 no;
	setAttr ".xm[50]" -type "matrix" "xform" 1 1 1.0000000000000002 0.14946067834066595
		 -0.12273668903956152 -0.02644994586375651 0 -1.4488286972045898 -0.5314235091209264
		 -9.0058097839355451 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[51]" -type "matrix" "xform" 0.99999999999999978 1 0.99999999999999989 -0.1001116292288468
		 0.031193851358261075 -0.13288210940313772 0 -42.572036743164062 1.7074230918012745e-010
		 -4.6679105025759782e-010 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 0.99999999999999978 no;
	setAttr ".xm[52]" -type "matrix" "xform" 1 1.0000000000000002 1 0.0056472003221480086
		 -0.0038238761844266891 -0.015236412730128686 0 -20.476776123046889 0 -3.5527136788005009e-015 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1.0000000000000002 1 1.0000000000000002 no;
	setAttr ".xm[53]" -type "matrix" "xform" 0.99999999999999989 0.99999999999999989
		 0.99999999999999989 -0.0072498610176846877 0.064663286483021734 0.14066617140716786 0 -40.196689605712905
		 -3.9338523549758975e-009 1.8994228412338998e-010 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1.0000000000000002 1 1.0000000000000002 no;
	setAttr ".xm[54]" -type "matrix" "xform" 1.0000000000000002 1.0000000000000002 1 6.8835098878650589e-005
		 0.00015628337586003559 -1.6036710530811074 0 -10.453837394714352 -16.577854156494141
		 0.080155946314338422 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1.0000000000000002
		 1.0000000000000002 1.0000000000000002 no;
	setAttr ".xm[55]" -type "matrix" "xform" 0.99999999999999989 1.0000000000000004 0.99999999999999989 -0.094922826029477145
		 -3.6954877731755014e-006 -0.00098314921877791072 0 -22.094238281250014 5.5511151231257827e-016
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 0.99999999999999978 no;
	setAttr ".xm[56]" -type "matrix" "xform" 0.99999999999999978 1 1 0.14946067834066612
		 -0.1227366890395616 3.115142670275334 0 -1.4486445188522197 -0.53142756223677112
		 9.0058031082153285 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[57]" -type "matrix" "xform" 1 1 1.0000000000000002 -0.10011162922884703
		 0.031193851358261217 -0.1328821094031378 0 42.572250366210959 -1.62336289732945e-006
		 -5.8367556121652342e-007 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1.0000000000000002
		 1 1 no;
	setAttr ".xm[58]" -type "matrix" "xform" 0.99999999999999956 0.99999999999999956
		 0.99999999999999989 0.0056438770924206521 -0.0038245913888209949 -0.015236093358857285 0 20.476907730102525
		 -1.7763568394002505e-015 3.5527136788005009e-015 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 0.99999999999999978 no;
	setAttr ".xm[59]" -type "matrix" "xform" 0.99999999999999978 0.99999999999999956
		 1 -0.0072498610176846235 0.064663286483021595 0.14066617140716789 0 40.196819305419908
		 1.6769354278522997e-006 -1.0918018226391268e-005 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 0.99999999999999978 no;
	setAttr ".xm[60]" -type "matrix" "xform" 1.0000000000000002 0.99999999999999956 0.99999999999999978 6.8835098881035888e-005
		 0.00015628337585812043 -1.6036710530811074 0 10.453816413879393 16.577796936035156
		 -0.080158449709411883 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1.0000000000000002
		 1.0000000000000004 1 no;
	setAttr ".xm[61]" -type "matrix" "xform" 1 1 1.0000000000000002 -0.094926163303218528
		 -2.8610227920141991e-006 -0.00098332958032258861 0 22.094240188598661 -2.7755575615628914e-015
		 -7.1054273576010019e-015 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1.0000000000000002
		 1 1 no;
	setAttr ".xm[62]" -type "matrix" "xform" 1 1 1 -2.2204460492503126e-016 -0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1.0000000000000002 1.0000000000000002 no;
	setAttr ".xm[63]" -type "matrix" "xform" 1 1 1 2.4752433835571845 -1.5512097090837456
		 -2.4296234340841285 0 17.076271057128906 8.0721273422241246 13.465730667114256 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[64]" -type "matrix" "xform" 1 0.99999999999999978 0.99999999999999989 -0.66634720608276155
		 1.5512097090837456 2.4296234340841272 0 -17.076288223266602 8.0721483230590856
		 13.465573310852049 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[65]" -type "matrix" "xform" 1 1 1 -2.2204460492503126e-016 -0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1.0000000000000002 1.0000000000000002 no;
	setAttr ".xm[66]" -type "matrix" "xform" 1 1 0.99999999999999989 1.2927307505317063
		 -0.6138779391811674 0.57161377241869193 0 -56.646099090576172 0.33541175723078348
		 111.67965698242187 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 no;
	setAttr ".xm[67]" -type "matrix" "xform" 1.0000000000000002 1.0000000000000002 1 -2.5446956953092434
		 -0.56145055048770376 -1.6355308486758895 0 77.885429382324205 -69.601913452148452
		 43.86950302124022 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1.0000000000000002 no;
	setAttr ".xm[68]" -type "matrix" "xform" 1.0000000000000002 1.0000000000000002 1.0000000000000004 -9.7144514654701173e-017
		 -0 1.9775847626135596e-016 0 -2.1316282072803006e-014 0 6.2172489379008766e-015 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1.0000000000000002 no;
	setAttr -s 69 ".m";
	setAttr -s 69 ".p";
	setAttr -s 69 ".g[0:68]" yes no no no no no no no no no no no no no 
		no no no no no no no no no no no no no no no no no no no no no no no no no no no 
		no no no no no no no no no no no no no no no no no no no no no no no no no no no 
		no;
	setAttr ".bp" yes;

select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :renderPartition;
	setAttr -s 4 ".st";
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultShaderList1;
	setAttr -s 4 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :renderGlobalsList1;
select -ne :defaultRenderGlobals;
	setAttr ".fs" 1;
	setAttr ".ef" 10;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :defaultHardwareRenderGlobals;
	setAttr ".fn" -type "string" "im";
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
connectAttr "root.s" "pelvis.is";
connectAttr "pelvis.s" "spine_01.is";
connectAttr "spine_01.s" "spine_02.is";
connectAttr "spine_02.s" "spine_03.is";
connectAttr "spine_03.s" "clavicle_l.is";
connectAttr "clavicle_l.s" "upperarm_l.is";
connectAttr "upperarm_l.s" "lowerarm_l.is";
connectAttr "lowerarm_l.s" "hand_l.is";
connectAttr "hand_l.s" "index_01_l.is";
connectAttr "index_01_l.s" "index_02_l.is";
connectAttr "index_02_l.s" "index_03_l.is";
connectAttr "hand_l.s" "middle_01_l.is";
connectAttr "middle_01_l.s" "middle_02_l.is";
connectAttr "middle_02_l.s" "middle_03_l.is";
connectAttr "hand_l.s" "pinky_01_l.is";
connectAttr "pinky_01_l.s" "pinky_02_l.is";
connectAttr "pinky_02_l.s" "pinky_03_l.is";
connectAttr "hand_l.s" "ring_01_l.is";
connectAttr "ring_01_l.s" "ring_02_l.is";
connectAttr "ring_02_l.s" "ring_03_l.is";
connectAttr "hand_l.s" "thumb_01_l.is";
connectAttr "thumb_01_l.s" "thumb_02_l.is";
connectAttr "thumb_02_l.s" "thumb_03_l.is";
connectAttr "lowerarm_l.s" "lowerarm_twist_01_l.is";
connectAttr "upperarm_l.s" "upperarm_twist_01_l.is";
connectAttr "spine_03.s" "clavicle_r.is";
connectAttr "clavicle_r.s" "upperarm_r.is";
connectAttr "upperarm_r.s" "lowerarm_r.is";
connectAttr "lowerarm_r.s" "hand_r.is";
connectAttr "hand_r.s" "index_01_r.is";
connectAttr "index_01_r.s" "index_02_r.is";
connectAttr "index_02_r.s" "index_03_r.is";
connectAttr "hand_r.s" "middle_01_r.is";
connectAttr "middle_01_r.s" "middle_02_r.is";
connectAttr "middle_02_r.s" "middle_03_r.is";
connectAttr "hand_r.s" "pinky_01_r.is";
connectAttr "pinky_01_r.s" "pinky_02_r.is";
connectAttr "pinky_02_r.s" "pinky_03_r.is";
connectAttr "hand_r.s" "ring_01_r.is";
connectAttr "ring_01_r.s" "ring_02_r.is";
connectAttr "ring_02_r.s" "ring_03_r.is";
connectAttr "hand_r.s" "thumb_01_r.is";
connectAttr "thumb_01_r.s" "thumb_02_r.is";
connectAttr "thumb_02_r.s" "thumb_03_r.is";
connectAttr "lowerarm_r.s" "lowerarm_twist_01_r.is";
connectAttr "upperarm_r.s" "upperarm_twist_01_r.is";
connectAttr "spine_03.s" "neck_01.is";
connectAttr "neck_01.s" "head.is";
connectAttr "pelvis.s" "thigh_l.is";
connectAttr "thigh_l.s" "calf_l.is";
connectAttr "calf_l.s" "calf_twist_01_l.is";
connectAttr "calf_l.s" "foot_l.is";
connectAttr "foot_l.s" "ball_l.is";
connectAttr "thigh_l.s" "thigh_twist_01_l.is";
connectAttr "pelvis.s" "thigh_r.is";
connectAttr "thigh_r.s" "calf_r.is";
connectAttr "calf_r.s" "calf_twist_01_r.is";
connectAttr "calf_r.s" "foot_r.is";
connectAttr "foot_r.s" "ball_r.is";
connectAttr "thigh_r.s" "thigh_twist_01_r.is";
connectAttr "root.s" "ik_foot_root.is";
connectAttr "ik_foot_root.s" "ik_foot_l.is";
connectAttr "ik_foot_root.s" "ik_foot_r.is";
connectAttr "root.s" "ik_hand_root.is";
connectAttr "ik_hand_root.s" "ik_hand_gun.is";
connectAttr "ik_hand_gun.s" "ik_hand_l.is";
connectAttr "ik_hand_gun.s" "ik_hand_r.is";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "SK_MannequinSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "SK_MannequinSG1.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "SK_MannequinSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "SK_MannequinSG1.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "M_UE4Man_Body.oc" "SK_MannequinSG.ss";
connectAttr "SK_MannequinSG.msg" "materialInfo1.sg";
connectAttr "M_UE4Man_Body.msg" "materialInfo1.m";
connectAttr "FbxFBXASC032DefaultFBXASC032MaterialFBXASC0321.oc" "SK_MannequinSG1.ss"
		;
connectAttr "SK_MannequinSG1.msg" "materialInfo2.sg";
connectAttr "FbxFBXASC032DefaultFBXASC032MaterialFBXASC0321.msg" "materialInfo2.m"
		;
connectAttr "root.msg" "bindPose1.m[1]";
connectAttr "pelvis.msg" "bindPose1.m[2]";
connectAttr "spine_01.msg" "bindPose1.m[3]";
connectAttr "spine_02.msg" "bindPose1.m[4]";
connectAttr "spine_03.msg" "bindPose1.m[5]";
connectAttr "clavicle_l.msg" "bindPose1.m[6]";
connectAttr "upperarm_l.msg" "bindPose1.m[7]";
connectAttr "lowerarm_l.msg" "bindPose1.m[8]";
connectAttr "hand_l.msg" "bindPose1.m[9]";
connectAttr "index_01_l.msg" "bindPose1.m[10]";
connectAttr "index_02_l.msg" "bindPose1.m[11]";
connectAttr "index_03_l.msg" "bindPose1.m[12]";
connectAttr "middle_01_l.msg" "bindPose1.m[13]";
connectAttr "middle_02_l.msg" "bindPose1.m[14]";
connectAttr "middle_03_l.msg" "bindPose1.m[15]";
connectAttr "pinky_01_l.msg" "bindPose1.m[16]";
connectAttr "pinky_02_l.msg" "bindPose1.m[17]";
connectAttr "pinky_03_l.msg" "bindPose1.m[18]";
connectAttr "ring_01_l.msg" "bindPose1.m[19]";
connectAttr "ring_02_l.msg" "bindPose1.m[20]";
connectAttr "ring_03_l.msg" "bindPose1.m[21]";
connectAttr "thumb_01_l.msg" "bindPose1.m[22]";
connectAttr "thumb_02_l.msg" "bindPose1.m[23]";
connectAttr "thumb_03_l.msg" "bindPose1.m[24]";
connectAttr "lowerarm_twist_01_l.msg" "bindPose1.m[25]";
connectAttr "upperarm_twist_01_l.msg" "bindPose1.m[26]";
connectAttr "clavicle_r.msg" "bindPose1.m[27]";
connectAttr "upperarm_r.msg" "bindPose1.m[28]";
connectAttr "lowerarm_r.msg" "bindPose1.m[29]";
connectAttr "hand_r.msg" "bindPose1.m[30]";
connectAttr "index_01_r.msg" "bindPose1.m[31]";
connectAttr "index_02_r.msg" "bindPose1.m[32]";
connectAttr "index_03_r.msg" "bindPose1.m[33]";
connectAttr "middle_01_r.msg" "bindPose1.m[34]";
connectAttr "middle_02_r.msg" "bindPose1.m[35]";
connectAttr "middle_03_r.msg" "bindPose1.m[36]";
connectAttr "pinky_01_r.msg" "bindPose1.m[37]";
connectAttr "pinky_02_r.msg" "bindPose1.m[38]";
connectAttr "pinky_03_r.msg" "bindPose1.m[39]";
connectAttr "ring_01_r.msg" "bindPose1.m[40]";
connectAttr "ring_02_r.msg" "bindPose1.m[41]";
connectAttr "ring_03_r.msg" "bindPose1.m[42]";
connectAttr "thumb_01_r.msg" "bindPose1.m[43]";
connectAttr "thumb_02_r.msg" "bindPose1.m[44]";
connectAttr "thumb_03_r.msg" "bindPose1.m[45]";
connectAttr "lowerarm_twist_01_r.msg" "bindPose1.m[46]";
connectAttr "upperarm_twist_01_r.msg" "bindPose1.m[47]";
connectAttr "neck_01.msg" "bindPose1.m[48]";
connectAttr "head.msg" "bindPose1.m[49]";
connectAttr "thigh_l.msg" "bindPose1.m[50]";
connectAttr "calf_l.msg" "bindPose1.m[51]";
connectAttr "calf_twist_01_l.msg" "bindPose1.m[52]";
connectAttr "foot_l.msg" "bindPose1.m[53]";
connectAttr "ball_l.msg" "bindPose1.m[54]";
connectAttr "thigh_twist_01_l.msg" "bindPose1.m[55]";
connectAttr "thigh_r.msg" "bindPose1.m[56]";
connectAttr "calf_r.msg" "bindPose1.m[57]";
connectAttr "calf_twist_01_r.msg" "bindPose1.m[58]";
connectAttr "foot_r.msg" "bindPose1.m[59]";
connectAttr "ball_r.msg" "bindPose1.m[60]";
connectAttr "thigh_twist_01_r.msg" "bindPose1.m[61]";
connectAttr "ik_foot_root.msg" "bindPose1.m[62]";
connectAttr "ik_foot_l.msg" "bindPose1.m[63]";
connectAttr "ik_foot_r.msg" "bindPose1.m[64]";
connectAttr "ik_hand_root.msg" "bindPose1.m[65]";
connectAttr "ik_hand_gun.msg" "bindPose1.m[66]";
connectAttr "ik_hand_l.msg" "bindPose1.m[67]";
connectAttr "ik_hand_r.msg" "bindPose1.m[68]";
connectAttr "bindPose1.w" "bindPose1.p[0]";
connectAttr "bindPose1.m[0]" "bindPose1.p[1]";
connectAttr "bindPose1.m[1]" "bindPose1.p[2]";
connectAttr "bindPose1.m[2]" "bindPose1.p[3]";
connectAttr "bindPose1.m[3]" "bindPose1.p[4]";
connectAttr "bindPose1.m[4]" "bindPose1.p[5]";
connectAttr "bindPose1.m[5]" "bindPose1.p[6]";
connectAttr "bindPose1.m[6]" "bindPose1.p[7]";
connectAttr "bindPose1.m[7]" "bindPose1.p[8]";
connectAttr "bindPose1.m[8]" "bindPose1.p[9]";
connectAttr "bindPose1.m[9]" "bindPose1.p[10]";
connectAttr "bindPose1.m[10]" "bindPose1.p[11]";
connectAttr "bindPose1.m[11]" "bindPose1.p[12]";
connectAttr "bindPose1.m[9]" "bindPose1.p[13]";
connectAttr "bindPose1.m[13]" "bindPose1.p[14]";
connectAttr "bindPose1.m[14]" "bindPose1.p[15]";
connectAttr "bindPose1.m[9]" "bindPose1.p[16]";
connectAttr "bindPose1.m[16]" "bindPose1.p[17]";
connectAttr "bindPose1.m[17]" "bindPose1.p[18]";
connectAttr "bindPose1.m[9]" "bindPose1.p[19]";
connectAttr "bindPose1.m[19]" "bindPose1.p[20]";
connectAttr "bindPose1.m[20]" "bindPose1.p[21]";
connectAttr "bindPose1.m[9]" "bindPose1.p[22]";
connectAttr "bindPose1.m[22]" "bindPose1.p[23]";
connectAttr "bindPose1.m[23]" "bindPose1.p[24]";
connectAttr "bindPose1.m[8]" "bindPose1.p[25]";
connectAttr "bindPose1.m[7]" "bindPose1.p[26]";
connectAttr "bindPose1.m[5]" "bindPose1.p[27]";
connectAttr "bindPose1.m[27]" "bindPose1.p[28]";
connectAttr "bindPose1.m[28]" "bindPose1.p[29]";
connectAttr "bindPose1.m[29]" "bindPose1.p[30]";
connectAttr "bindPose1.m[30]" "bindPose1.p[31]";
connectAttr "bindPose1.m[31]" "bindPose1.p[32]";
connectAttr "bindPose1.m[32]" "bindPose1.p[33]";
connectAttr "bindPose1.m[30]" "bindPose1.p[34]";
connectAttr "bindPose1.m[34]" "bindPose1.p[35]";
connectAttr "bindPose1.m[35]" "bindPose1.p[36]";
connectAttr "bindPose1.m[30]" "bindPose1.p[37]";
connectAttr "bindPose1.m[37]" "bindPose1.p[38]";
connectAttr "bindPose1.m[38]" "bindPose1.p[39]";
connectAttr "bindPose1.m[30]" "bindPose1.p[40]";
connectAttr "bindPose1.m[40]" "bindPose1.p[41]";
connectAttr "bindPose1.m[41]" "bindPose1.p[42]";
connectAttr "bindPose1.m[30]" "bindPose1.p[43]";
connectAttr "bindPose1.m[43]" "bindPose1.p[44]";
connectAttr "bindPose1.m[44]" "bindPose1.p[45]";
connectAttr "bindPose1.m[29]" "bindPose1.p[46]";
connectAttr "bindPose1.m[28]" "bindPose1.p[47]";
connectAttr "bindPose1.m[5]" "bindPose1.p[48]";
connectAttr "bindPose1.m[48]" "bindPose1.p[49]";
connectAttr "bindPose1.m[2]" "bindPose1.p[50]";
connectAttr "bindPose1.m[50]" "bindPose1.p[51]";
connectAttr "bindPose1.m[51]" "bindPose1.p[52]";
connectAttr "bindPose1.m[51]" "bindPose1.p[53]";
connectAttr "bindPose1.m[53]" "bindPose1.p[54]";
connectAttr "bindPose1.m[50]" "bindPose1.p[55]";
connectAttr "bindPose1.m[2]" "bindPose1.p[56]";
connectAttr "bindPose1.m[56]" "bindPose1.p[57]";
connectAttr "bindPose1.m[57]" "bindPose1.p[58]";
connectAttr "bindPose1.m[57]" "bindPose1.p[59]";
connectAttr "bindPose1.m[59]" "bindPose1.p[60]";
connectAttr "bindPose1.m[56]" "bindPose1.p[61]";
connectAttr "bindPose1.m[1]" "bindPose1.p[62]";
connectAttr "bindPose1.m[62]" "bindPose1.p[63]";
connectAttr "bindPose1.m[62]" "bindPose1.p[64]";
connectAttr "bindPose1.m[1]" "bindPose1.p[65]";
connectAttr "bindPose1.m[65]" "bindPose1.p[66]";
connectAttr "bindPose1.m[66]" "bindPose1.p[67]";
connectAttr "bindPose1.m[66]" "bindPose1.p[68]";
connectAttr "root.bps" "bindPose1.wm[1]";
connectAttr "pelvis.bps" "bindPose1.wm[2]";
connectAttr "spine_01.bps" "bindPose1.wm[3]";
connectAttr "spine_02.bps" "bindPose1.wm[4]";
connectAttr "spine_03.bps" "bindPose1.wm[5]";
connectAttr "clavicle_l.bps" "bindPose1.wm[6]";
connectAttr "upperarm_l.bps" "bindPose1.wm[7]";
connectAttr "lowerarm_l.bps" "bindPose1.wm[8]";
connectAttr "hand_l.bps" "bindPose1.wm[9]";
connectAttr "index_01_l.bps" "bindPose1.wm[10]";
connectAttr "index_02_l.bps" "bindPose1.wm[11]";
connectAttr "index_03_l.bps" "bindPose1.wm[12]";
connectAttr "middle_01_l.bps" "bindPose1.wm[13]";
connectAttr "middle_02_l.bps" "bindPose1.wm[14]";
connectAttr "middle_03_l.bps" "bindPose1.wm[15]";
connectAttr "pinky_01_l.bps" "bindPose1.wm[16]";
connectAttr "pinky_02_l.bps" "bindPose1.wm[17]";
connectAttr "pinky_03_l.bps" "bindPose1.wm[18]";
connectAttr "ring_01_l.bps" "bindPose1.wm[19]";
connectAttr "ring_02_l.bps" "bindPose1.wm[20]";
connectAttr "ring_03_l.bps" "bindPose1.wm[21]";
connectAttr "thumb_01_l.bps" "bindPose1.wm[22]";
connectAttr "thumb_02_l.bps" "bindPose1.wm[23]";
connectAttr "thumb_03_l.bps" "bindPose1.wm[24]";
connectAttr "lowerarm_twist_01_l.bps" "bindPose1.wm[25]";
connectAttr "upperarm_twist_01_l.bps" "bindPose1.wm[26]";
connectAttr "clavicle_r.bps" "bindPose1.wm[27]";
connectAttr "upperarm_r.bps" "bindPose1.wm[28]";
connectAttr "lowerarm_r.bps" "bindPose1.wm[29]";
connectAttr "hand_r.bps" "bindPose1.wm[30]";
connectAttr "index_01_r.bps" "bindPose1.wm[31]";
connectAttr "index_02_r.bps" "bindPose1.wm[32]";
connectAttr "index_03_r.bps" "bindPose1.wm[33]";
connectAttr "middle_01_r.bps" "bindPose1.wm[34]";
connectAttr "middle_02_r.bps" "bindPose1.wm[35]";
connectAttr "middle_03_r.bps" "bindPose1.wm[36]";
connectAttr "pinky_01_r.bps" "bindPose1.wm[37]";
connectAttr "pinky_02_r.bps" "bindPose1.wm[38]";
connectAttr "pinky_03_r.bps" "bindPose1.wm[39]";
connectAttr "ring_01_r.bps" "bindPose1.wm[40]";
connectAttr "ring_02_r.bps" "bindPose1.wm[41]";
connectAttr "ring_03_r.bps" "bindPose1.wm[42]";
connectAttr "thumb_01_r.bps" "bindPose1.wm[43]";
connectAttr "thumb_02_r.bps" "bindPose1.wm[44]";
connectAttr "thumb_03_r.bps" "bindPose1.wm[45]";
connectAttr "lowerarm_twist_01_r.bps" "bindPose1.wm[46]";
connectAttr "upperarm_twist_01_r.bps" "bindPose1.wm[47]";
connectAttr "neck_01.bps" "bindPose1.wm[48]";
connectAttr "head.bps" "bindPose1.wm[49]";
connectAttr "thigh_l.bps" "bindPose1.wm[50]";
connectAttr "calf_l.bps" "bindPose1.wm[51]";
connectAttr "calf_twist_01_l.bps" "bindPose1.wm[52]";
connectAttr "foot_l.bps" "bindPose1.wm[53]";
connectAttr "ball_l.bps" "bindPose1.wm[54]";
connectAttr "thigh_twist_01_l.bps" "bindPose1.wm[55]";
connectAttr "thigh_r.bps" "bindPose1.wm[56]";
connectAttr "calf_r.bps" "bindPose1.wm[57]";
connectAttr "calf_twist_01_r.bps" "bindPose1.wm[58]";
connectAttr "foot_r.bps" "bindPose1.wm[59]";
connectAttr "ball_r.bps" "bindPose1.wm[60]";
connectAttr "thigh_twist_01_r.bps" "bindPose1.wm[61]";
connectAttr "ik_foot_root.bps" "bindPose1.wm[62]";
connectAttr "ik_foot_l.bps" "bindPose1.wm[63]";
connectAttr "ik_foot_r.bps" "bindPose1.wm[64]";
connectAttr "ik_hand_root.bps" "bindPose1.wm[65]";
connectAttr "ik_hand_gun.bps" "bindPose1.wm[66]";
connectAttr "ik_hand_l.bps" "bindPose1.wm[67]";
connectAttr "ik_hand_r.bps" "bindPose1.wm[68]";
connectAttr "SK_MannequinSG.pa" ":renderPartition.st" -na;
connectAttr "SK_MannequinSG1.pa" ":renderPartition.st" -na;
connectAttr "M_UE4Man_Body.msg" ":defaultShaderList1.s" -na;
connectAttr "FbxFBXASC032DefaultFBXASC032MaterialFBXASC0321.msg" ":defaultShaderList1.s"
		 -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of asUnreal.ma
