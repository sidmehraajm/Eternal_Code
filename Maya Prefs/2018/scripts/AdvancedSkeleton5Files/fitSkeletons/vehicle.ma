//Maya ASCII 2012 scene
//Name: vehicle.ma
//Last modified: Mon, Jun 15, 2015 03:12:46 PM
//Codeset: 1252
requires maya "2008";
fileInfo "application" "maya";
fileInfo "product" "Maya 2012";
fileInfo "version" "2012 x64";
fileInfo "cutIdentifier" "001200000000-796618";
fileInfo "osv" "Microsoft Business Edition, 64-bit  (Build 9200)\n";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -20.088697006637645 17.31638329880764 13.82270750737603 ;
	setAttr ".r" -type "double3" -32.409559435282844 -56.199999999998298 0 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".ncp" 1;
	setAttr ".coi" 26.560198009119397;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -2 3.4999999999999996 0 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -2.1830751530186219 100.13996064592298 -1.0374258671055046 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".ncp" 1;
	setAttr ".coi" 100.1;
	setAttr ".ow" 44.548287234531323;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -2 3.4999999999999996 100.16170414884122 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".ncp" 1;
	setAttr ".coi" 100.1;
	setAttr ".ow" 11.256065862981494;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.11812565034988 3.4999999999999996 2.2648549702353193e-014 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".ncp" 1;
	setAttr ".coi" 100.1;
	setAttr ".ow" 14.454736842105261;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "FitSkeleton";
	addAttr -ci true -sn "visCylinders" -ln "visCylinders" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "visBoxes" -ln "visBoxes" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "visBones" -ln "visBones" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "lockCenterJoints" -ln "lockCenterJoints" -dv 1 -min 0 -max 
		1 -at "bool";
	addAttr -ci true -sn "visGap" -ln "visGap" -dv 0.75 -min 0 -max 1 -at "double";
	setAttr ".ove" yes;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".visCylinders" yes;
	setAttr ".visGap" 1;
createNode nurbsCurve -n "FitSkeletonShape" -p "FitSkeleton";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 29;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		7.4281782225557524 4.5484473418744768e-016 -7.4281782225557444
		-1.1984983579866045e-015 6.4324759186187512e-016 -10.50503038606281
		-7.4281782225557462 4.5484473418744807e-016 -7.4281782225557462
		-10.50503038606281 2.3964034686954702e-031 -4.003240790329802e-015
		-7.4281782225557471 -4.5484473418744768e-016 7.4281782225557444
		-3.1653706727369662e-015 -6.4324759186187522e-016 10.505030386062812
		7.4281782225557444 -4.5484473418744807e-016 7.4281782225557462
		10.50503038606281 -2.9224624886215383e-031 4.6831265133208731e-015
		7.4281782225557524 4.5484473418744768e-016 -7.4281782225557444
		-1.1984983579866045e-015 6.4324759186187512e-016 -10.50503038606281
		-7.4281782225557462 4.5484473418744807e-016 -7.4281782225557462
		;
createNode joint -n "Root" -p "FitSkeleton";
	addAttr -ci true -k true -sn "wheelRadius" -ln "wheelRadius" -dv 2 -at "long";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 2 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatY" -ln "fatY" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatZ" -ln "fatZ" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatYabs" -ln "fatYabs" -at "double";
	addAttr -ci true -sn "fatZabs" -ln "fatZabs" -at "double";
	addAttr -ci true -k true -sn "centerBtwFeet" -ln "centerBtwFeet" -dv 1 -min 0 -max 
		1 -at "bool";
	addAttr -ci true -k true -sn "numMainExtras" -ln "numMainExtras" -min 0 -at "long";
	setAttr ".t" -type "double3" 0 2 0 ;
	setAttr ".r" -type "double3" 1.9083328088781101e-014 9.5416640443905519e-015 -9.5416640443905487e-015 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 89.999999999999972 0 89.999999999999972 ;
	setAttr -k on ".fat" 4.1;
	setAttr -k on ".fatY" 2.4;
	setAttr ".fatYabs" 9.8400001525878906;
	setAttr ".fatZabs" 4.0999999046325684;
createNode joint -n "frontWheel" -p "Root";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatY" -ln "fatY" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatZ" -ln "fatZ" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatYabs" -ln "fatYabs" -at "double";
	addAttr -ci true -sn "fatZabs" -ln "fatZabs" -at "double";
	addAttr -ci true -k true -sn "wheel" -ln "wheel" -dv 1 -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 4.4408920985006262e-016 6.000000000000008 -2.9999999999999996 ;
	setAttr ".r" -type "double3" -1.1449996853268677e-013 -2.2263882770244645e-013 6.3611093629272655e-015 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 90.000000000000014 89.999999999999986 0 ;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "";
	setAttr ".fatYabs" 1;
	setAttr ".fatZabs" 1;
createNode joint -n "frontWheelEnd" -p "frontWheel";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatY" -ln "fatY" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatZ" -ln "fatZ" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatYabs" -ln "fatYabs" -at "double";
	addAttr -ci true -sn "fatZabs" -ln "fatZabs" -at "double";
	setAttr ".t" -type "double3" 0.99999999999999956 4.4408920985006262e-016 5.3290705182007514e-015 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".fatYabs" 1;
	setAttr ".fatZabs" 1;
createNode joint -n "backWheel" -p "Root";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatY" -ln "fatY" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatZ" -ln "fatZ" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatYabs" -ln "fatYabs" -at "double";
	addAttr -ci true -sn "fatZabs" -ln "fatZabs" -at "double";
	addAttr -ci true -k true -sn "wheel" -ln "wheel" -dv 1 -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" -2.2204460492503131e-015 -6.000000000000008 -3.0000000000000004 ;
	setAttr ".r" -type "double3" 1.4630551534732154e-013 7.6333312355124289e-014 -6.3611093629269263e-015 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 90.000000000000014 89.999999999999986 0 ;
	setAttr ".typ" 18;
	setAttr ".otp" -type "string" "";
	setAttr ".fatYabs" 1;
	setAttr ".fatZabs" 1;
createNode joint -n "backWheelEnd" -p "backWheel";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatY" -ln "fatY" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatZ" -ln "fatZ" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatYabs" -ln "fatYabs" -at "double";
	addAttr -ci true -sn "fatZabs" -ln "fatZabs" -at "double";
	setAttr ".t" -type "double3" 1 0 -2.6645352591003757e-015 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".fatYabs" 1;
	setAttr ".fatZabs" 1;
createNode joint -n "Body" -p "Root";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatY" -ln "fatY" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatZ" -ln "fatZ" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatYabs" -ln "fatYabs" -at "double";
	addAttr -ci true -sn "fatZabs" -ln "fatZabs" -at "double";
	setAttr ".t" -type "double3" 2 -1.3092296531052955e-016 -2.6184593062105919e-016 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr -k on ".fat" 4.1;
	setAttr -k on ".fatY" 2.4;
	setAttr ".fatYabs" 9.8400001525878906;
	setAttr ".fatZabs" 4.0999999046325684;
createNode joint -n "BodyEnd" -p "Body";
	addAttr -ci true -k true -sn "fat" -ln "fat" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatY" -ln "fatY" -dv 1 -min 0 -at "double";
	addAttr -ci true -k true -sn "fatZ" -ln "fatZ" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "fatYabs" -ln "fatYabs" -at "double";
	addAttr -ci true -sn "fatZabs" -ln "fatZabs" -at "double";
	setAttr ".t" -type "double3" 2 1.9721522630525295e-031 -4.8410201076931505e-016 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".fatYabs" 1;
	setAttr ".fatZabs" 1;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode displayLayerManager -n "layerManager";

connectAttr "Root.s" "frontWheel.is";
connectAttr "frontWheel.s" "frontWheelEnd.is";
connectAttr "Root.s" "backWheel.is";
connectAttr "backWheel.s" "backWheelEnd.is";
connectAttr "Root.s" "Body.is";
connectAttr "Body.s" "BodyEnd.is";

// End of vehicle.ma
