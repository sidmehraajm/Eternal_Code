//Maya ASCII 2012 scene
//Name: biped.ma
//Last modified: Mon, Mar 27, 2017 08:46:19 AM
//Codeset: 1252
requires maya "2012";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -4.3499467910884988 1.7744201927805943 8.1400570813526301 ;
	setAttr ".r" -type "double3" -6.9383527296028324 -7.7999999999997964 6.9120834977217553e-014 ;
	setAttr ".rp" -type "double3" 0 -1.1102230246251565e-016 -1.7763568394002505e-015 ;
	setAttr ".rpt" -type "double3" 2.3749362102397506e-016 -2.1377324632762054e-016 
		4.2611124484951826e-017 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999979;
	setAttr ".ncp" 1;
	setAttr ".coi" 7.9716660919041828;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -0.52073713602523153 0.86142840413658917 0.67126665011834774 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 100.10000009517417 -0.0041740754757678966 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".ncp" 1;
	setAttr ".coi" 100.1;
	setAttr ".ow" 17.697368421052634;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 8.3039863223526336 101.54099861407981 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".ncp" 1;
	setAttr ".coi" 100.59800829983962;
	setAttr ".ow" 41.002174820020663;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".tp" -type "double3" 7.9002183059204647 16.225522908611964 0 ;
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 102.17418433298245 8.3039863223526336 -0.004174075475765592 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
	setAttr ".rp" -type "double3" 5.5511151231257827e-017 2.2204460492503131e-016 -1.4210854715202004e-014 ;
	setAttr ".rpt" -type "double3" -1.4266365866433265e-014 0 1.4155343563970755e-014 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".ncp" 1;
	setAttr ".coi" 101.60252605903396;
	setAttr ".ow" 41.116706034601741;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".tp" -type "double3" -1.4210854715202004e-014 1.4666388041528808 -0.35622522371116322 ;
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "Group";
createNode transform -n "_R" -p "Group";
createNode transform -n "FKHip_R" -p "_R";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode mesh -n "FKHip_RShape" -p "FKHip_R";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  -0.97594106 4.9069018 -0.5 
		-0.9191528 4.9069014 -0.5 -0.98041165 9.6780119 0.5 -0.59128088 9.6789837 0.5;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-016 0.5 0.5 -1.110223e-016 0.5
		 -0.5 1.110223e-016 -0.5 0.5 1.110223e-016 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "FKKnee_R" -p "_R";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode mesh -n "FKKnee_RShape" -p "FKKnee_R";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  -0.87815642 0.9979136 -0.5 
		-1.2483759 0.9979167 -0.5 -0.97458899 4.600913 0.5 -0.95907754 4.6009121 0.5;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-016 0.5 0.5 -1.110223e-016 0.5
		 -0.5 1.110223e-016 -0.5 0.5 1.110223e-016 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "FKAnkle_R" -p "_R";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -1.3043478260869548 2.0514152859146284 0 ;
	setAttr ".sp" -type "double3" -1.3043478260869548 2.0514152859146284 0 ;
createNode mesh -n "FKAnkle_RShape" -p "FKAnkle_R";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  -1.2705023 0.034620728 -0.5 
		-1.2408627 0.041922782 -0.5 -0.86595541 0.83304685 0.5 -1.2408627 0.83219922 0.5;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-016 0.5 0.5 -1.110223e-016 0.5
		 -0.5 1.110223e-016 -0.5 0.5 1.110223e-016 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "FKToes_R" -p "_R";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -1.3043478260869548 2.0514152859146284 0 ;
	setAttr ".sp" -type "double3" -1.3043478260869548 2.0514152859146284 0 ;
createNode mesh -n "FKToes_RShape" -p "FKToes_R";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  -2.2413864 0.031267166 -0.5 
		-2.3600919 0.031862088 -0.5 -1.96387 0.54473507 0.5 -2.0797753 0.54384184 0.5;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-016 0.5 0.5 -1.110223e-016 0.5
		 -0.5 1.110223e-016 -0.5 0.5 1.110223e-016 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "FKShoulder_R" -p "_R";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".t" -type "double3" -2.6407265504517889 1.9580897550969052 0 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -1.3043478260869548 4.7948560930802211 0 ;
	setAttr ".sp" -type "double3" -1.3043478260869548 4.7948560930802211 0 ;
createNode mesh -n "FKShoulder_RShape" -p "FKShoulder_R";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  -0.94570684 12.145122 -0.5 
		-1.9397871 11.358712 -0.5 1.5732213 12.302903 0.5 0.57909524 11.184678 0.5;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-016 0.5 0.5 -1.110223e-016 0.5
		 -0.5 1.110223e-016 -0.5 0.5 1.110223e-016 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "FKElbow_R" -p "_R";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".t" -type "double3" -2.6407265504517889 1.9580897550969052 0 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -1.3043478260869548 4.7948560930802211 0 ;
	setAttr ".sp" -type "double3" -1.3043478260869548 4.7948560930802211 0 ;
createNode mesh -n "FKElbow_RShape" -p "FKElbow_R";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  -3.1527545 11.882474 -0.5 
		-4.1532397 11.610774 -0.5 -1.044524 12.134378 0.5 -2.0454845 11.368914 0.5;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-016 0.5 0.5 -1.110223e-016 0.5
		 -0.5 1.110223e-016 -0.5 0.5 1.110223e-016 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "FKScapula_R" -p "_R";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".t" -type "double3" -2.6407265504517889 1.9580897550969052 0 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -1.3043478260869548 4.7948560930802211 0 ;
	setAttr ".sp" -type "double3" -1.3043478260869548 4.7948560930802211 0 ;
createNode mesh -n "FKScapula_RShape" -p "FKScapula_R";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  1.8041431 12.324175 -0.5 
		0.80441302 11.192442 -0.5 2.7754805 12.32356 0.5 1.774281 11.191203 0.5;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-016 0.5 0.5 -1.110223e-016 0.5
		 -0.5 1.110223e-016 -0.5 0.5 1.110223e-016 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "FKWrist_R" -p "_R";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode mesh -n "FKWrist_RShape" -p "FKWrist_R";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  -7.1648235 13.844802 -0.5 
		-8.1648235 13.572627 -0.5 -5.9048996 13.844802 0.5 -6.905333 13.572627 0.5;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-016 0.5 0.5 -1.110223e-016 0.5
		 -0.5 1.110223e-016 -0.5 0.5 1.110223e-016 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "FKWrist_R1Shape" -p "FKWrist_R";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  -7.9062495 6.6690869 -0.5 
		-6.0937481 6.6690869 -0.5 -7.9062495 8.5440969 0.5 -6.0937481 8.5440969 0.5;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-016 0.5 0.5 -1.110223e-016 0.5
		 -0.5 1.110223e-016 -0.5 0.5 1.110223e-016 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "IKLeg_R" -p "_R";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".t" -type "double3" -3 2 0 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode mesh -n "IKLeg_RShape" -p "IKLeg_R";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 20 ".uvst[0].uvsp[0:19]" -type "float2" 0.64860266 0.79546607
		 0.62640899 0.75190848 0.59184152 0.71734101 0.54828393 0.69514734 0.5 0.68749994
		 0.45171607 0.69514734 0.40815851 0.71734107 0.37359107 0.75190854 0.3513974 0.79546607
		 0.34374997 0.84375 0.3513974 0.89203393 0.37359107 0.93559146 0.40815854 0.97015893
		 0.4517161 0.9923526 0.5 1 0.54828387 0.9923526 0.59184146 0.97015893 0.62640893 0.93559146
		 0.6486026 0.89203393 0.65625 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 20 ".vt[0:19]"  0.47552863 0.15450823 0 0.4045088 0.29389298 1.1920929e-007
		 0.2938928 0.40450871 -5.9604645e-008 0.15450858 0.47552848 -5.9604645e-008 -3.5527137e-015 0.50000006 0
		 -0.15450858 0.47552842 0 -0.29389277 0.40450859 1.1920929e-007 -0.40450868 0.29389286 5.9604645e-008
		 -0.47552845 0.15450823 1.1920929e-007 -0.50000006 -2.3841858e-007 0 -0.47552845 -0.15450907 0
		 -0.40450862 -0.29389226 -1.1920929e-007 -0.29389265 -0.40450919 -5.9604645e-008 -0.15450853 -0.47552824 -5.9604645e-008
		 -1.4901165e-008 -0.49999988 1.1920929e-007 0.15450846 -0.47552824 -1.1920929e-007
		 0.29389265 -0.40450919 -1.1920929e-007 0.40450856 -0.29389226 5.9604645e-008 0.47552833 -0.15450907 5.9604645e-008
		 0.49999994 -2.3841858e-007 0;
	setAttr -s 20 ".ed[0:19]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 0 0;
	setAttr ".fc[0]" -type "polyFaces" 
		f 20 19 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18
		mu 0 20 19 18 17 16 15 14 13 12 11 10 9 8 7 6 5 4 3 2 1 0;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "PoleLeg_R" -p "_R";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".t" -type "double3" -3 5 0 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode mesh -n "PoleLeg_RShape" -p "PoleLeg_R";
	addAttr -ci true -sn "mso" -ln "miShadingSamplesOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "msh" -ln "miShadingSamples" -min 0 -smx 8 -at "float";
	addAttr -ci true -sn "mdo" -ln "miMaxDisplaceOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mmd" -ln "miMaxDisplace" -min 0 -smx 1 -at "float";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 16 ".uvst[0].uvsp[0:15]" -type "float2" 0.42857715 0.42857715
		 0.57142287 0.42857715 0.57142287 0.57142287 0.42857715 0.57142287 0.42857715 0.33333334
		 0.5 0.33333334 0.33333334 0.42857715 0.33333334 0.5 0.66666669 0.42857715 0.66666669
		 0.5 0.57142287 0.33333334 0.42857715 0.66666669 0.5 0.66666669 0.33333334 0.57142287
		 0.57142287 0.66666669 0.66666669 0.57142287;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".vt[0:15]"  -0.061301708 -0.061301947 1.8626451e-009
		 0.061302185 -0.061301947 1.8626451e-009 0.061302185 0.061301708 1.8626451e-009 -0.061301708 0.061301708 1.8626451e-009
		 -0.061301708 -0.43617773 1.8626451e-009 2.3841858e-007 -0.43617773 1.8626451e-009
		 -0.42587948 -0.061301947 1.8626451e-009 -0.42587948 -2.3841858e-007 1.8626451e-009
		 0.42587996 -0.061301947 1.8626451e-009 0.42587996 -2.3841858e-007 1.8626451e-009
		 0.061302185 -0.43617773 1.8626451e-009 -0.061301708 0.43617749 1.8626451e-009 2.3841858e-007 0.43617749 1.8626451e-009
		 -0.42587948 0.061301708 1.8626451e-009 0.061302185 0.43617749 1.8626451e-009 0.42587996 0.061301708 1.8626451e-009;
	setAttr -s 16 ".ed[0:15]"  6 0 0 0 4 0 4 5 0 7 6 0 10 1 0 1 8 0 8 9 0
		 5 10 0 11 3 0 3 13 0 13 7 0 12 11 0 15 2 0 2 14 0 14 12 0 9 15 0;
	setAttr ".fc[0]" -type "polyFaces" 
		f 16 3 0 1 2 7 4 5 6 15 12 13 14 11 8 9 10
		mu 0 16 7 6 0 4 5 10 1 8 9 15 2 14 12 11 3 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "RollHeel_R" -p "_R";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".t" -type "double3" -0.82542228468801238 0.045471152433888884 -0.37906402609351797 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 90 0 0 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 0.34160269979449409 0.34160269979449409 0.34160269979449409 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode mesh -n "RollHeel_RShape" -p "RollHeel_R";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 40 ".uvst[0].uvsp[0:39]" -type "float2" 0.64860266 0.79546607
		 0.62640899 0.75190848 0.59184152 0.71734101 0.54828393 0.69514734 0.5 0.68749994
		 0.45171607 0.69514734 0.40815851 0.71734107 0.37359107 0.75190854 0.3513974 0.79546607
		 0.34374997 0.84375 0.3513974 0.89203393 0.37359107 0.93559146 0.40815854 0.97015893
		 0.4517161 0.9923526 0.5 1 0.54828387 0.9923526 0.59184146 0.97015893 0.62640893 0.93559146
		 0.6486026 0.89203393 0.65625 0.84375 0.57430136 0.81960803 0.56320453 0.79782927
		 0.54592073 0.78054553 0.52414197 0.76944864 0.5 0.76562494 0.47585803 0.7694487 0.45407927
		 0.78054553 0.43679553 0.79782927 0.4256987 0.81960803 0.421875 0.84375 0.4256987
		 0.86789197 0.43679553 0.88967073 0.45407927 0.90695447 0.47585803 0.9180513 0.5 0.921875
		 0.52414197 0.9180513 0.54592073 0.90695447 0.56320447 0.88967073 0.5743013 0.86789197
		 0.578125 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 40 ".vt[0:39]"  0.95105714 1 -0.30901718 0.80901754 1 -0.5877856
		 0.5877856 1 -0.80901748 0.30901715 1 -0.95105702 0 1 -1.000000476837 -0.30901715 1 -0.95105696
		 -0.58778548 1 -0.8090173 -0.80901724 1 -0.58778542 -0.95105678 1 -0.30901706 -1.000000238419 1 0
		 -0.95105678 1 0.30901706 -0.80901718 1 0.58778536 -0.58778536 1 0.80901712 -0.30901706 1 0.95105666
		 -2.9802322e-008 1 1.000000119209 0.30901697 1 0.9510566 0.58778524 1 0.80901706 0.809017 1 0.5877853
		 0.95105654 1 0.309017 1 1 0 0.6846025 1 -0.22244078 0.58235776 1 -0.42310756 0.42310756 1 -0.58235753
		 0.22244084 1 -0.68460238 2.6206154e-008 1 -0.71983343 -0.22244078 1 -0.68460232 -0.42310748 1 -0.58235741
		 -0.58235741 1 -0.42310745 -0.68460226 1 -0.22244067 -0.71983325 1 3.9309231e-008
		 -0.68460226 1 0.22244076 -0.58235741 1 0.42310745 -0.42310739 1 0.58235735 -0.22244072 1 0.6846022
		 4.7534545e-009 1 0.71983325 0.22244069 1 0.68460214 0.42310736 1 0.58235735 0.58235729 1 0.42310742
		 0.68460214 1 0.22244072 0.71983314 1 3.9309231e-008;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 0 0 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 32 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 20 0;
	setAttr ".fc[0]" -type "polyFaces" 
		f 20 19 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18
		mu 0 20 19 18 17 16 15 14 13 12 11 10 9 8 7 6 5 4 3 2 1 0
		h 20 -38 -37 -36 -35 -34 -33 -32 -31 -30 -29 -28 -27 -26 -25 -24 -23 -22 -21 -40 -39
		mu 0 20 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "RollToes_R" -p "_R";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".t" -type "double3" -1.7186345555565361 0.045471152433888884 -0.37906402609351797 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 90 0 0 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 0.34160269979449409 0.34160269979449409 0.34160269979449409 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode mesh -n "RollToes_RShape" -p "RollToes_R";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 40 ".uvst[0].uvsp[0:39]" -type "float2" 0.64860266 0.79546607
		 0.62640899 0.75190848 0.59184152 0.71734101 0.54828393 0.69514734 0.5 0.68749994
		 0.45171607 0.69514734 0.40815851 0.71734107 0.37359107 0.75190854 0.3513974 0.79546607
		 0.34374997 0.84375 0.3513974 0.89203393 0.37359107 0.93559146 0.40815854 0.97015893
		 0.4517161 0.9923526 0.5 1 0.54828387 0.9923526 0.59184146 0.97015893 0.62640893 0.93559146
		 0.6486026 0.89203393 0.65625 0.84375 0.57430136 0.81960803 0.56320453 0.79782927
		 0.54592073 0.78054553 0.52414197 0.76944864 0.5 0.76562494 0.47585803 0.7694487 0.45407927
		 0.78054553 0.43679553 0.79782927 0.4256987 0.81960803 0.421875 0.84375 0.4256987
		 0.86789197 0.43679553 0.88967073 0.45407927 0.90695447 0.47585803 0.9180513 0.5 0.921875
		 0.52414197 0.9180513 0.54592073 0.90695447 0.56320447 0.88967073 0.5743013 0.86789197
		 0.578125 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 40 ".vt[0:39]"  0.95105714 1 -0.30901718 0.80901754 1 -0.5877856
		 0.5877856 1 -0.80901748 0.30901715 1 -0.95105702 0 1 -1.000000476837 -0.30901715 1 -0.95105696
		 -0.58778548 1 -0.8090173 -0.80901724 1 -0.58778542 -0.95105678 1 -0.30901706 -1.000000238419 1 0
		 -0.95105678 1 0.30901706 -0.80901718 1 0.58778536 -0.58778536 1 0.80901712 -0.30901706 1 0.95105666
		 -2.9802322e-008 1 1.000000119209 0.30901697 1 0.9510566 0.58778524 1 0.80901706 0.809017 1 0.5877853
		 0.95105654 1 0.309017 1 1 0 0.6846025 1 -0.22244078 0.58235776 1 -0.42310756 0.42310756 1 -0.58235753
		 0.22244084 1 -0.68460238 2.6206154e-008 1 -0.71983343 -0.22244078 1 -0.68460232 -0.42310748 1 -0.58235741
		 -0.58235741 1 -0.42310745 -0.68460226 1 -0.22244067 -0.71983325 1 3.9309231e-008
		 -0.68460226 1 0.22244076 -0.58235741 1 0.42310745 -0.42310739 1 0.58235735 -0.22244072 1 0.6846022
		 4.7534545e-009 1 0.71983325 0.22244069 1 0.68460214 0.42310736 1 0.58235735 0.58235729 1 0.42310742
		 0.68460214 1 0.22244072 0.71983314 1 3.9309231e-008;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 0 0 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 32 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 20 0;
	setAttr ".fc[0]" -type "polyFaces" 
		f 20 19 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18
		mu 0 20 19 18 17 16 15 14 13 12 11 10 9 8 7 6 5 4 3 2 1 0
		h 20 -38 -37 -36 -35 -34 -33 -32 -31 -30 -29 -28 -27 -26 -25 -24 -23 -22 -21 -40 -39
		mu 0 20 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "RollToesEnd_R" -p "_R";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".t" -type "double3" -2.6941163776892685 0.045471152433888884 -0.37906402609351797 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 90 0 0 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 0.34160269979449409 0.34160269979449409 0.34160269979449409 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode mesh -n "RollToesEnd_RShape" -p "RollToesEnd_R";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 40 ".uvst[0].uvsp[0:39]" -type "float2" 0.64860266 0.79546607
		 0.62640899 0.75190848 0.59184152 0.71734101 0.54828393 0.69514734 0.5 0.68749994
		 0.45171607 0.69514734 0.40815851 0.71734107 0.37359107 0.75190854 0.3513974 0.79546607
		 0.34374997 0.84375 0.3513974 0.89203393 0.37359107 0.93559146 0.40815854 0.97015893
		 0.4517161 0.9923526 0.5 1 0.54828387 0.9923526 0.59184146 0.97015893 0.62640893 0.93559146
		 0.6486026 0.89203393 0.65625 0.84375 0.57430136 0.81960803 0.56320453 0.79782927
		 0.54592073 0.78054553 0.52414197 0.76944864 0.5 0.76562494 0.47585803 0.7694487 0.45407927
		 0.78054553 0.43679553 0.79782927 0.4256987 0.81960803 0.421875 0.84375 0.4256987
		 0.86789197 0.43679553 0.88967073 0.45407927 0.90695447 0.47585803 0.9180513 0.5 0.921875
		 0.52414197 0.9180513 0.54592073 0.90695447 0.56320447 0.88967073 0.5743013 0.86789197
		 0.578125 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 40 ".vt[0:39]"  0.95105714 1 -0.30901718 0.80901754 1 -0.5877856
		 0.5877856 1 -0.80901748 0.30901715 1 -0.95105702 0 1 -1.000000476837 -0.30901715 1 -0.95105696
		 -0.58778548 1 -0.8090173 -0.80901724 1 -0.58778542 -0.95105678 1 -0.30901706 -1.000000238419 1 0
		 -0.95105678 1 0.30901706 -0.80901718 1 0.58778536 -0.58778536 1 0.80901712 -0.30901706 1 0.95105666
		 -2.9802322e-008 1 1.000000119209 0.30901697 1 0.9510566 0.58778524 1 0.80901706 0.809017 1 0.5877853
		 0.95105654 1 0.309017 1 1 0 0.6846025 1 -0.22244078 0.58235776 1 -0.42310756 0.42310756 1 -0.58235753
		 0.22244084 1 -0.68460238 2.6206154e-008 1 -0.71983343 -0.22244078 1 -0.68460232 -0.42310748 1 -0.58235741
		 -0.58235741 1 -0.42310745 -0.68460226 1 -0.22244067 -0.71983325 1 3.9309231e-008
		 -0.68460226 1 0.22244076 -0.58235741 1 0.42310745 -0.42310739 1 0.58235735 -0.22244072 1 0.6846022
		 4.7534545e-009 1 0.71983325 0.22244069 1 0.68460214 0.42310736 1 0.58235735 0.58235729 1 0.42310742
		 0.68460214 1 0.22244072 0.71983314 1 3.9309231e-008;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 0 0 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 32 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 20 0;
	setAttr ".fc[0]" -type "polyFaces" 
		f 20 19 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18
		mu 0 20 19 18 17 16 15 14 13 12 11 10 9 8 7 6 5 4 3 2 1 0
		h 20 -38 -37 -36 -35 -34 -33 -32 -31 -30 -29 -28 -27 -26 -25 -24 -23 -22 -21 -40 -39
		mu 0 20 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "FKIKLeg_R" -p "_R";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".t" -type "double3" -3 7 0 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode mesh -n "FKIKLeg_RShape" -p "FKIKLeg_R";
	addAttr -ci true -sn "mso" -ln "miShadingSamplesOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "msh" -ln "miShadingSamples" -min 0 -smx 8 -at "float";
	addAttr -ci true -sn "mdo" -ln "miMaxDisplaceOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mmd" -ln "miMaxDisplace" -min 0 -smx 1 -at "float";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 16 ".uvst[0].uvsp[0:15]" -type "float2" 0.42857715 0.42857715
		 0.57142287 0.42857715 0.57142287 0.57142287 0.42857715 0.57142287 0.42857715 0.33333334
		 0.5 0.33333334 0.33333334 0.42857715 0.33333334 0.5 0.66666669 0.42857715 0.66666669
		 0.5 0.57142287 0.33333334 0.42857715 0.66666669 0.5 0.66666669 0.33333334 0.57142287
		 0.57142287 0.66666669 0.66666669 0.57142287;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".vt[0:15]"  -0.061301708 -0.061301947 1.8626451e-009
		 0.061302185 -0.061301947 1.8626451e-009 0.061302185 0.061301708 1.8626451e-009 -0.061301708 0.061301708 1.8626451e-009
		 -0.061301708 -0.43617773 1.8626451e-009 2.3841858e-007 -0.43617773 1.8626451e-009
		 -0.42587948 -0.061301947 1.8626451e-009 -0.42587948 -2.3841858e-007 1.8626451e-009
		 0.42587996 -0.061301947 1.8626451e-009 0.42587996 -2.3841858e-007 1.8626451e-009
		 0.061302185 -0.43617773 1.8626451e-009 -0.061301708 0.43617749 1.8626451e-009 2.3841858e-007 0.43617749 1.8626451e-009
		 -0.42587948 0.061301708 1.8626451e-009 0.061302185 0.43617749 1.8626451e-009 0.42587996 0.061301708 1.8626451e-009;
	setAttr -s 16 ".ed[0:15]"  6 0 0 0 4 0 4 5 0 7 6 0 10 1 0 1 8 0 8 9 0
		 5 10 0 11 3 0 3 13 0 13 7 0 12 11 0 15 2 0 2 14 0 14 12 0 9 15 0;
	setAttr ".fc[0]" -type "polyFaces" 
		f 16 11 8 9 10 3 0 1 2 7 4 5 6 15 12 13 14
		mu 0 16 12 11 3 13 7 6 0 4 5 10 1 8 9 15 2 14;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "FKIKArm_R" -p "_R";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".t" -type "double3" -2.5 15 0 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode mesh -n "FKIKArm_RShape" -p "FKIKArm_R";
	addAttr -ci true -sn "mso" -ln "miShadingSamplesOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "msh" -ln "miShadingSamples" -min 0 -smx 8 -at "float";
	addAttr -ci true -sn "mdo" -ln "miMaxDisplaceOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mmd" -ln "miMaxDisplace" -min 0 -smx 1 -at "float";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 16 ".uvst[0].uvsp[0:15]" -type "float2" 0.42857715 0.42857715
		 0.57142287 0.42857715 0.57142287 0.57142287 0.42857715 0.57142287 0.42857715 0.33333334
		 0.5 0.33333334 0.33333334 0.42857715 0.33333334 0.5 0.66666669 0.42857715 0.66666669
		 0.5 0.57142287 0.33333334 0.42857715 0.66666669 0.5 0.66666669 0.33333334 0.57142287
		 0.57142287 0.66666669 0.66666669 0.57142287;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".vt[0:15]"  -0.061301708 -0.061301947 1.8626451e-009
		 0.061302185 -0.061301947 1.8626451e-009 0.061302185 0.061301708 1.8626451e-009 -0.061301708 0.061301708 1.8626451e-009
		 -0.061301708 -0.43617773 1.8626451e-009 2.3841858e-007 -0.43617773 1.8626451e-009
		 -0.42587948 -0.061301947 1.8626451e-009 -0.42587948 -2.3841858e-007 1.8626451e-009
		 0.42587996 -0.061301947 1.8626451e-009 0.42587996 -2.3841858e-007 1.8626451e-009
		 0.061302185 -0.43617773 1.8626451e-009 -0.061301708 0.43617749 1.8626451e-009 2.3841858e-007 0.43617749 1.8626451e-009
		 -0.42587948 0.061301708 1.8626451e-009 0.061302185 0.43617749 1.8626451e-009 0.42587996 0.061301708 1.8626451e-009;
	setAttr -s 16 ".ed[0:15]"  6 0 0 0 4 0 4 5 0 7 6 0 10 1 0 1 8 0 8 9 0
		 5 10 0 11 3 0 3 13 0 13 7 0 12 11 0 15 2 0 2 14 0 14 12 0 9 15 0;
	setAttr ".fc[0]" -type "polyFaces" 
		f 16 11 8 9 10 3 0 1 2 7 4 5 6 15 12 13 14
		mu 0 16 12 11 3 13 7 6 0 4 5 10 1 8 9 15 2 14;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "PoleArm_R" -p "_R";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".t" -type "double3" -4 15 0 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode mesh -n "PoleArm_RShape" -p "PoleArm_R";
	addAttr -ci true -sn "mso" -ln "miShadingSamplesOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "msh" -ln "miShadingSamples" -min 0 -smx 8 -at "float";
	addAttr -ci true -sn "mdo" -ln "miMaxDisplaceOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mmd" -ln "miMaxDisplace" -min 0 -smx 1 -at "float";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 16 ".uvst[0].uvsp[0:15]" -type "float2" 0.42857715 0.42857715
		 0.57142287 0.42857715 0.57142287 0.57142287 0.42857715 0.57142287 0.42857715 0.33333334
		 0.5 0.33333334 0.33333334 0.42857715 0.33333334 0.5 0.66666669 0.42857715 0.66666669
		 0.5 0.57142287 0.33333334 0.42857715 0.66666669 0.5 0.66666669 0.33333334 0.57142287
		 0.57142287 0.66666669 0.66666669 0.57142287;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".vt[0:15]"  -0.061301708 -0.061301947 1.8626451e-009
		 0.061302185 -0.061301947 1.8626451e-009 0.061302185 0.061301708 1.8626451e-009 -0.061301708 0.061301708 1.8626451e-009
		 -0.061301708 -0.43617773 1.8626451e-009 2.3841858e-007 -0.43617773 1.8626451e-009
		 -0.42587948 -0.061301947 1.8626451e-009 -0.42587948 -2.3841858e-007 1.8626451e-009
		 0.42587996 -0.061301947 1.8626451e-009 0.42587996 -2.3841858e-007 1.8626451e-009
		 0.061302185 -0.43617773 1.8626451e-009 -0.061301708 0.43617749 1.8626451e-009 2.3841858e-007 0.43617749 1.8626451e-009
		 -0.42587948 0.061301708 1.8626451e-009 0.061302185 0.43617749 1.8626451e-009 0.42587996 0.061301708 1.8626451e-009;
	setAttr -s 16 ".ed[0:15]"  6 0 0 0 4 0 4 5 0 7 6 0 10 1 0 1 8 0 8 9 0
		 5 10 0 11 3 0 3 13 0 13 7 0 12 11 0 15 2 0 2 14 0 14 12 0 9 15 0;
	setAttr ".fc[0]" -type "polyFaces" 
		f 16 11 8 9 10 3 0 1 2 7 4 5 6 15 12 13 14
		mu 0 16 12 11 3 13 7 6 0 4 5 10 1 8 9 15 2 14;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "IKArm_R" -p "_R";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".t" -type "double3" -7 15 0 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode mesh -n "IKArm_RShape" -p "IKArm_R";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 20 ".uvst[0].uvsp[0:19]" -type "float2" 0.64860266 0.79546607
		 0.62640899 0.75190848 0.59184152 0.71734101 0.54828393 0.69514734 0.5 0.68749994
		 0.45171607 0.69514734 0.40815851 0.71734107 0.37359107 0.75190854 0.3513974 0.79546607
		 0.34374997 0.84375 0.3513974 0.89203393 0.37359107 0.93559146 0.40815854 0.97015893
		 0.4517161 0.9923526 0.5 1 0.54828387 0.9923526 0.59184146 0.97015893 0.62640893 0.93559146
		 0.6486026 0.89203393 0.65625 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 20 ".vt[0:19]"  0.47552863 0.15450823 0 0.4045088 0.29389298 1.1920929e-007
		 0.2938928 0.40450871 -5.9604645e-008 0.15450858 0.47552848 -5.9604645e-008 -3.5527137e-015 0.50000006 0
		 -0.15450858 0.47552842 0 -0.29389277 0.40450859 1.1920929e-007 -0.40450868 0.29389286 5.9604645e-008
		 -0.47552845 0.15450823 1.1920929e-007 -0.50000006 -2.3841858e-007 0 -0.47552845 -0.15450907 0
		 -0.40450862 -0.29389226 -1.1920929e-007 -0.29389265 -0.40450919 -5.9604645e-008 -0.15450853 -0.47552824 -5.9604645e-008
		 -1.4901165e-008 -0.49999988 1.1920929e-007 0.15450846 -0.47552824 -1.1920929e-007
		 0.29389265 -0.40450919 -1.1920929e-007 0.40450856 -0.29389226 5.9604645e-008 0.47552833 -0.15450907 5.9604645e-008
		 0.49999994 -2.3841858e-007 0;
	setAttr -s 20 ".ed[0:19]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 0 0;
	setAttr ".fc[0]" -type "polyFaces" 
		f 20 19 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18
		mu 0 20 19 18 17 16 15 14 13 12 11 10 9 8 7 6 5 4 3 2 1 0;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "FKPinkyFinger1_R" -p "_R";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode mesh -n "FKPinkyFinger1_RShape" -p "FKPinkyFinger1_R";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  -7.9062495 8.7315922 -0.5 
		-8.3437538 8.7315922 -0.5 -7.9062495 9.6690893 0.5 -8.3437538 9.6690893 0.5;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-016 0.5 0.5 -1.110223e-016 0.5
		 -0.5 1.110223e-016 -0.5 0.5 1.110223e-016 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "FKRingFinger1_R" -p "_R";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode mesh -n "FKRingFinger1_RShape" -p "FKRingFinger1_R";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  -7.1562543 8.7315922 -0.5 
		-7.5937548 8.7315922 -0.5 -7.1562543 9.6690893 0.5 -7.5937548 9.6690893 0.5;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-016 0.5 0.5 -1.110223e-016 0.5
		 -0.5 1.110223e-016 -0.5 0.5 1.110223e-016 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "FKMiddleFinger1_R" -p "_R";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode mesh -n "FKMiddleFinger1_RShape" -p "FKMiddleFinger1_R";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  -6.4062576 8.7315922 -0.5 
		-6.8437514 8.7315922 -0.5 -6.4062576 9.6690893 0.5 -6.8437514 9.6690893 0.5;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-016 0.5 0.5 -1.110223e-016 0.5
		 -0.5 1.110223e-016 -0.5 0.5 1.110223e-016 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "FKIndexFinger1_R" -p "_R";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode mesh -n "FKIndexFinger1_RShape" -p "FKIndexFinger1_R";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  -5.6562529 8.7315922 -0.5 
		-6.0937552 8.7315922 -0.5 -5.6562529 9.6690893 0.5 -6.0937552 9.6690893 0.5;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-016 0.5 0.5 -1.110223e-016 0.5
		 -0.5 1.110223e-016 -0.5 0.5 1.110223e-016 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "FKPinkyFinger2_R" -p "_R";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode mesh -n "FKPinkyFinger2_RShape" -p "FKPinkyFinger2_R";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  -7.9062495 9.8565941 -0.5 
		-8.3437538 9.8565941 -0.5 -7.9062495 10.606584 0.5 -8.3437538 10.606584 0.5;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-016 0.5 0.5 -1.110223e-016 0.5
		 -0.5 1.110223e-016 -0.5 0.5 1.110223e-016 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "FKRingFinger2_R" -p "_R";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode mesh -n "FKRingFinger2_RShape" -p "FKRingFinger2_R";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  -7.1562543 9.8565941 -0.5 
		-7.5937548 9.8565941 -0.5 -7.1562543 10.606584 0.5 -7.5937548 10.606584 0.5;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-016 0.5 0.5 -1.110223e-016 0.5
		 -0.5 1.110223e-016 -0.5 0.5 1.110223e-016 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "FKMiddleFinger2_R" -p "_R";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode mesh -n "FKMiddleFinger2_RShape" -p "FKMiddleFinger2_R";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  -6.4062576 9.8565941 -0.5 
		-6.8437514 9.8565941 -0.5 -6.4062576 10.606584 0.5 -6.8437514 10.606584 0.5;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-016 0.5 0.5 -1.110223e-016 0.5
		 -0.5 1.110223e-016 -0.5 0.5 1.110223e-016 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "FKIndexFinger2_R" -p "_R";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode mesh -n "FKIndexFinger2_RShape" -p "FKIndexFinger2_R";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  -5.6562529 9.8565941 -0.5 
		-6.0937552 9.8565941 -0.5 -5.6562529 10.606584 0.5 -6.0937552 10.606584 0.5;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-016 0.5 0.5 -1.110223e-016 0.5
		 -0.5 1.110223e-016 -0.5 0.5 1.110223e-016 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "FKPinkyFinger3_R" -p "_R";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode mesh -n "FKPinkyFinger3_RShape" -p "FKPinkyFinger3_R";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  -7.9062495 10.794074 -0.5 
		-8.3437538 10.794074 -0.5 -7.9062495 11.544092 0.5 -8.3437538 11.544092 0.5;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-016 0.5 0.5 -1.110223e-016 0.5
		 -0.5 1.110223e-016 -0.5 0.5 1.110223e-016 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "FKRingFinger3_R" -p "_R";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode mesh -n "FKRingFinger3_RShape" -p "FKRingFinger3_R";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  -7.1562543 10.794074 -0.5 
		-7.5937548 10.794074 -0.5 -7.1562543 11.544092 0.5 -7.5937548 11.544092 0.5;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-016 0.5 0.5 -1.110223e-016 0.5
		 -0.5 1.110223e-016 -0.5 0.5 1.110223e-016 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "FKMiddleFinger3_R" -p "_R";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode mesh -n "FKMiddleFinger3_RShape" -p "FKMiddleFinger3_R";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  -6.4062576 10.794074 -0.5 
		-6.8437514 10.794074 -0.5 -6.4062576 11.544092 0.5 -6.8437514 11.544092 0.5;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-016 0.5 0.5 -1.110223e-016 0.5
		 -0.5 1.110223e-016 -0.5 0.5 1.110223e-016 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "FKIndexFinger3_R" -p "_R";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode mesh -n "FKIndexFinger3_RShape" -p "FKIndexFinger3_R";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  -5.6562529 10.794074 -0.5 
		-6.0937552 10.794074 -0.5 -5.6562529 11.544092 0.5 -6.0937552 11.544092 0.5;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-016 0.5 0.5 -1.110223e-016 0.5
		 -0.5 1.110223e-016 -0.5 0.5 1.110223e-016 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Fingers_R" -p "_R";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode mesh -n "Fingers_RShape" -p "Fingers_R";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  -7.9062495 5.808609 -0.5 
		-6.0937481 5.808609 -0.5 -7.9062495 6.225596 0.5 -6.0937481 6.225596 0.5;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-016 0.5 0.5 -1.110223e-016 0.5
		 -0.5 1.110223e-016 -0.5 0.5 1.110223e-016 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "FKThumbFinger1_R" -p "_R";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode mesh -n "FKThumbFinger1_RShape" -p "FKThumbFinger1_R";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  -4.9062548 6.6690903 -0.5 
		-5.3437481 6.6690903 -0.5 -4.9062548 7.6066031 0.5 -5.3437481 7.6066031 0.5;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-016 0.5 0.5 -1.110223e-016 0.5
		 -0.5 1.110223e-016 -0.5 0.5 1.110223e-016 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "FKThumbFinger2_R" -p "_R";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode mesh -n "FKThumbFinger2_RShape" -p "FKThumbFinger2_R";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  -4.9062548 7.7940974 -0.5 
		-5.3437481 7.7940974 -0.5 -4.9062548 8.5441141 0.5 -5.3437481 8.5441141 0.5;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-016 0.5 0.5 -1.110223e-016 0.5
		 -0.5 1.110223e-016 -0.5 0.5 1.110223e-016 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "FKThumbFinger3_R" -p "_R";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode mesh -n "FKThumbFinger3_RShape" -p "FKThumbFinger3_R";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  -4.9062548 8.7316036 -0.5 
		-5.3437481 8.7316036 -0.5 -4.9062548 9.4816151 0.5 -5.3437481 9.4816151 0.5;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-016 0.5 0.5 -1.110223e-016 0.5
		 -0.5 1.110223e-016 -0.5 0.5 1.110223e-016 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "_M" -p "Group";
createNode transform -n "RootX_M" -p "_M";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".t" -type "double3" -3 9.2996531659986594 0 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 90 0 0 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1.560541509012431 1 0.50414409833972007 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode mesh -n "RootX_MShape" -p "RootX_M";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-016 0.5 0.5 -1.110223e-016 0.5
		 -0.5 1.110223e-016 -0.5 0.5 1.110223e-016 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "FKRoot_M" -p "_M";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".t" -type "double3" 0 10.33314891379416 0 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 90 0 0 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 2.9618433634501518 1 0.94357853726987961 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode mesh -n "FKRoot_MShape" -p "FKRoot_M";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-016 0.5 0.5 -1.110223e-016 0.5
		 -0.5 1.110223e-016 -0.5 0.5 1.110223e-016 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "FKSpine1_M" -p "_M";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".t" -type "double3" 0 11.420298981641606 0 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 90 0 0 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 2.9618433634501518 1 0.94357853726987961 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode mesh -n "FKSpine1_MShape" -p "FKSpine1_M";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-016 0.5 0.5 -1.110223e-016 0.5
		 -0.5 1.110223e-016 -0.5 0.5 1.110223e-016 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "FKChest_M" -p "_M";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".t" -type "double3" 0 12.456289046296231 0 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 90 0 0 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 2.9618433634501518 1 0.94357853726987961 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode mesh -n "FKChest_MShape" -p "FKChest_M";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-016 0.5 0.5 -1.110223e-016 0.5
		 -0.5 1.110223e-016 -0.5 0.5 1.110223e-016 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "FKNeck_M" -p "_M";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".t" -type "double3" 0 14.1002956997011 0 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 90 0 0 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 0.54517320210029285 1 1.7993388310933505 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode mesh -n "FKNeck_MShape" -p "FKNeck_M";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-016 0.5 0.5 -1.110223e-016 0.5
		 -0.5 1.110223e-016 -0.5 0.5 1.110223e-016 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "HipSwinger_M" -p "_M";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".t" -type "double3" -3 10.5 0 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 90 0 0 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 0.34160269979449409 0.34160269979449409 0.67254645352039033 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode mesh -n "HipSwinger_MShape" -p "HipSwinger_M";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 40 ".uvst[0].uvsp[0:39]" -type "float2" 0.64860266 0.79546607
		 0.62640899 0.75190848 0.59184152 0.71734101 0.54828393 0.69514734 0.5 0.68749994
		 0.45171607 0.69514734 0.40815851 0.71734107 0.37359107 0.75190854 0.3513974 0.79546607
		 0.34374997 0.84375 0.3513974 0.89203393 0.37359107 0.93559146 0.40815854 0.97015893
		 0.4517161 0.9923526 0.5 1 0.54828387 0.9923526 0.59184146 0.97015893 0.62640893 0.93559146
		 0.6486026 0.89203393 0.65625 0.84375 0.57430136 0.81960803 0.56320453 0.79782927
		 0.54592073 0.78054553 0.52414197 0.76944864 0.5 0.76562494 0.47585803 0.7694487 0.45407927
		 0.78054553 0.43679553 0.79782927 0.4256987 0.81960803 0.421875 0.84375 0.4256987
		 0.86789197 0.43679553 0.88967073 0.45407927 0.90695447 0.47585803 0.9180513 0.5 0.921875
		 0.52414197 0.9180513 0.54592073 0.90695447 0.56320447 0.88967073 0.5743013 0.86789197
		 0.578125 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 20 ".pt[20:39]" -type "float3"  -0.085105598 0 0.027652455 
		-0.072395138 0 0.052598111 -0.052598145 0 0.072395079 -0.027652495 0 0.085105538 
		-2.834437e-008 0 0.089485236 0.027652444 0 0.085105538 0.05259807 0 0.072395079 0.072395042 
		0 0.052598082 0.085105479 0 0.027652442 0.089485221 0 -1.3055055e-008 0.085105479 
		0 -0.027652465 0.072395034 0 -0.05259813 0.052598059 0 -0.072395079 0.027652441 0 
		-0.085105538 -2.5677494e-008 0 -0.089485236 -0.027652483 0 -0.085105523 -0.052598119 
		0 -0.072395079 -0.072395094 0 -0.052598126 -0.085105501 0 -0.027652459 -0.089485236 
		0 -1.3055055e-008;
	setAttr -s 40 ".vt[0:39]"  0.95105714 1.1920929e-007 -0.30901718 0.80901754 1.1920929e-007 -0.5877856
		 0.5877856 1.1920929e-007 -0.80901748 0.30901715 1.1920929e-007 -0.95105702 0 1.1920929e-007 -1.000000476837
		 -0.30901715 1.1920929e-007 -0.95105696 -0.58778548 1.1920929e-007 -0.8090173 -0.80901724 1.1920929e-007 -0.58778542
		 -0.95105678 1.1920929e-007 -0.30901706 -1.000000238419 1.1920929e-007 -1.1278185e-016
		 -0.95105678 1.1920929e-007 0.30901706 -0.80901718 1.1920929e-007 0.58778536 -0.58778536 1.1920929e-007 0.80901712
		 -0.30901706 1.1920929e-007 0.95105666 -2.9802322e-008 1.1920929e-007 1.000000119209
		 0.30901697 1.1920929e-007 0.9510566 0.58778524 1.1920929e-007 0.80901706 0.809017 1.1920929e-007 0.5877853
		 0.95105654 1.1920929e-007 0.309017 1 1.1920929e-007 -1.1278185e-016 0.86090136 1.1920929e-007 -0.2797237
		 0.73232639 1.1920929e-007 -0.53206605 0.53206629 1.1920929e-007 -0.73232615 0.27972376 1.1920929e-007 -0.86090124
		 4.8304152e-008 1.1920929e-007 -0.90520489 -0.2797237 1.1920929e-007 -0.86090118 -0.53206599 1.1920929e-007 -0.73232603
		 -0.73232603 1.1920929e-007 -0.53206593 -0.86090076 1.1920929e-007 -0.2797235 -0.90520477 1.1920929e-007 7.2456231e-008
		 -0.86090076 1.1920929e-007 0.2797237 -0.73232591 1.1920929e-007 0.53206617 -0.53206587 1.1920929e-007 0.73232591
		 -0.27972364 1.1920929e-007 0.86090106 2.1326954e-008 1.1920929e-007 0.90520477 0.27972361 1.1920929e-007 0.860901
		 0.53206587 1.1920929e-007 0.73232591 0.73232591 1.1920929e-007 0.53206611 0.86090064 1.1920929e-007 0.27972364
		 0.90520465 1.1920929e-007 7.2456231e-008;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 0 0 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 32 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 20 0;
	setAttr ".fc[0]" -type "polyFaces" 
		f 20 19 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18
		mu 0 20 19 18 17 16 15 14 13 12 11 10 9 8 7 6 5 4 3 2 1 0
		h 20 -38 -37 -36 -35 -34 -33 -32 -31 -30 -29 -28 -27 -26 -25 -24 -23 -22 -21 -40 -39
		mu 0 20 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "HipSwinger_M1Shape" -p "HipSwinger_M";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 40 ".uvst[0].uvsp[0:39]" -type "float2" 0.64860266 0.79546607
		 0.62640899 0.75190848 0.59184152 0.71734101 0.54828393 0.69514734 0.5 0.68749994
		 0.45171607 0.69514734 0.40815851 0.71734107 0.37359107 0.75190854 0.3513974 0.79546607
		 0.34374997 0.84375 0.3513974 0.89203393 0.37359107 0.93559146 0.40815854 0.97015893
		 0.4517161 0.9923526 0.5 1 0.54828387 0.9923526 0.59184146 0.97015893 0.62640893 0.93559146
		 0.6486026 0.89203393 0.65625 0.84375 0.57430136 0.81960803 0.56320453 0.79782927
		 0.54592073 0.78054553 0.52414197 0.76944864 0.5 0.76562494 0.47585803 0.7694487 0.45407927
		 0.78054553 0.43679553 0.79782927 0.4256987 0.81960803 0.421875 0.84375 0.4256987
		 0.86789197 0.43679553 0.88967073 0.45407927 0.90695447 0.47585803 0.9180513 0.5 0.921875
		 0.52414197 0.9180513 0.54592073 0.90695447 0.56320447 0.88967073 0.5743013 0.86789197
		 0.578125 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 20 ".pt[20:39]" -type "float3"  0.054442067 0 0.043227162 
		0.10355496 0 0.036771234 0.14253122 0 0.026715862 0.16755556 0 0.014045375 0.17617835 
		0 -5.8922964e-009 0.16755556 0 -0.01404538 0.14253122 0 -0.026715893 0.10355499 0 
		-0.036771242 0.054441992 0 -0.043227158 -2.3569186e-008 0 -0.04545173 -0.0544421 
		0 -0.043227158 -0.10355502 0 -0.036771212 -0.14253123 0 -0.026715856 -0.16755559 
		0 -0.014045373 -0.17617835 0 -5.8922964e-009 -0.16755557 0 0.014045354 -0.14253123 
		0 0.026715862 -0.10355505 0 0.036771208 -0.05444207 0 0.043227155 -5.008452e-008 
		0 0.045451708;
	setAttr -s 40 ".vt[0:39]"  -0.60839218 1.1920929e-007 -0.48306537 -1.15723062 1.1920929e-007 -0.41091964
		 -1.5927912 1.1920929e-007 -0.29855043 -1.87243772 1.1920929e-007 -0.15695745 -1.96879864 1.1920929e-007 -1.1920929e-007
		 -1.87243855 1.1920929e-007 0.15695703 -1.59279084 1.1920929e-007 0.29855049 -1.15723038 1.1920929e-007 0.41091961
		 -0.60839194 1.1920929e-007 0.48306489 0 1.1920929e-007 0.50792456 0.60839206 1.1920929e-007 0.48306507
		 1.15723014 1.1920929e-007 0.41091943 1.59279072 1.1920929e-007 0.29855031 1.87243736 1.1920929e-007 0.15695727
		 1.96879816 1.1920929e-007 0 1.87243783 1.1920929e-007 -0.15695691 1.59279037 1.1920929e-007 -0.29855037
		 1.15723014 1.1920929e-007 -0.41091955 0.60839182 1.1920929e-007 -0.48306477 2.3841858e-007 1.1920929e-007 -0.50792444
		 -0.55071914 1.1920929e-007 -0.43727261 -1.047529697 1.1920929e-007 -0.37196639 -1.44180155 1.1920929e-007 -0.27024943
		 -1.69493997 1.1920929e-007 -0.14207867 -1.78216517 1.1920929e-007 0 -1.69493973 1.1920929e-007 0.14207864
		 -1.44180167 1.1920929e-007 0.27024955 -1.047530055 1.1920929e-007 0.37196633 -0.55071855 1.1920929e-007 0.43727237
		 0 1.1920929e-007 0.45977557 0.55071914 1.1920929e-007 0.43727237 1.047530293 1.1920929e-007 0.37196606
		 1.44180131 1.1920929e-007 0.27024922 1.69493985 1.1920929e-007 0.14207852 1.78216469 1.1920929e-007 0
		 1.69493961 1.1920929e-007 -0.14207846 1.44180131 1.1920929e-007 -0.27024943 1.047530532 1.1920929e-007 -0.37196615
		 0.55071878 1.1920929e-007 -0.4372724 2.682209e-007 1.1920929e-007 -0.45977545;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 0 0 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 32 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 20 0;
	setAttr ".fc[0]" -type "polyFaces" 
		f 20 19 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18
		mu 0 20 19 18 17 16 15 14 13 12 11 10 9 8 7 6 5 4 3 2 1 0
		h 20 -38 -37 -36 -35 -34 -33 -32 -31 -30 -29 -28 -27 -26 -25 -24 -23 -22 -21 -40 -39
		mu 0 20 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "FKIKSpine_M" -p "_M";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".t" -type "double3" 4 11 0 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode mesh -n "FKIKSpine_MShape" -p "FKIKSpine_M";
	addAttr -ci true -sn "mso" -ln "miShadingSamplesOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "msh" -ln "miShadingSamples" -min 0 -smx 8 -at "float";
	addAttr -ci true -sn "mdo" -ln "miMaxDisplaceOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mmd" -ln "miMaxDisplace" -min 0 -smx 1 -at "float";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 17 ".uvst[0].uvsp[0:16]" -type "float2" 0.42857715 0.42857715
		 0.57142287 0.42857715 0.57142287 0.57142287 0.42857715 0.57142287 0.5 0.5 0.42857715
		 0.33333334 0.5 0.33333334 0.33333334 0.42857715 0.33333334 0.5 0.66666669 0.42857715
		 0.66666669 0.5 0.57142287 0.33333334 0.42857715 0.66666669 0.5 0.66666669 0.33333334
		 0.57142287 0.57142287 0.66666669 0.66666669 0.57142287;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 17 ".pt[0:16]" -type "float3"  1.9371762 1.2444732 0 1.9371762 
		1.2444732 0 1.9371762 1.2444732 0 1.9371762 1.2444732 0 1.9371762 1.2444732 0 1.9371762 
		1.097909 0 1.9371762 1.097909 0 1.7957617 1.2444732 0 1.7957617 1.2444732 0 2.0785909 
		1.2444732 0 2.0785909 1.2444732 0 1.9371762 1.097909 0 1.9371762 1.3910375 0 1.9371762 
		1.3910375 0 1.7957617 1.2444732 0 1.9371762 1.3910375 0 2.0785909 1.2444732 0;
	setAttr -s 17 ".vt[0:16]"  -1.9678272 -1.27512431 0.029113175 -1.90652514 -1.27512431 0.029113175
		 -1.90652514 -1.21382225 0.029113175 -1.9678272 -1.21382225 0.029113175 -1.93717611 -1.24447322 0.029113175
		 -1.9678272 -1.31599808 0.029113175 -1.93717611 -1.31599808 0.029113175 -2.0087008476 -1.27512431 0.029113175
		 -2.0087008476 -1.24447322 0.029113175 -1.86565137 -1.27512431 0.029113175 -1.86565137 -1.24447322 0.029113175
		 -1.90652514 -1.31599808 0.029113175 -1.9678272 -1.17294848 0.029113175 -1.93717611 -1.17294848 0.029113175
		 -2.0087008476 -1.21382225 0.029113175 -1.90652514 -1.17294848 0.029113175 -1.86565137 -1.21382225 0.029113175;
	setAttr -s 20 ".ed[0:19]"  7 0 0 0 5 0 5 6 0 6 4 1 4 8 1 8 7 0 11 1 0
		 1 9 0 9 10 0 10 4 1 6 11 0 12 3 0 3 14 0 14 8 0 4 13 1 13 12 0 16 2 0 2 15 0 15 13 0
		 10 16 0;
	setAttr -s 4 ".fc[0:3]" -type "polyFaces" 
		f 6 0 1 2 3 4 5
		mu 0 6 7 0 5 6 4 8
		f 6 6 7 8 9 -4 10
		mu 0 6 11 1 9 10 4 6
		f 6 11 12 13 -5 14 15
		mu 0 6 12 3 14 8 4 13
		f 6 16 17 18 -15 -10 19
		mu 0 6 16 2 15 13 4 10;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "FKHead_M" -p "_M";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".t" -type "double3" 0 16 0 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 90 0 0 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1.911895455023495 1.1534868492041694 1.617049828077598 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode mesh -n "FKHead_MShape" -p "FKHead_M";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-016 0.5 0.5 -1.110223e-016 0.5
		 -0.5 1.110223e-016 -0.5 0.5 1.110223e-016 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "IKSpine2_M" -p "_M";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".t" -type "double3" 3 11 0 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 0.75 0.75 0.75 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode mesh -n "IKSpine2_MShape" -p "IKSpine2_M";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 20 ".uvst[0].uvsp[0:19]" -type "float2" 0.64860266 0.79546607
		 0.62640899 0.75190848 0.59184152 0.71734101 0.54828393 0.69514734 0.5 0.68749994
		 0.45171607 0.69514734 0.40815851 0.71734107 0.37359107 0.75190854 0.3513974 0.79546607
		 0.34374997 0.84375 0.3513974 0.89203393 0.37359107 0.93559146 0.40815854 0.97015893
		 0.4517161 0.9923526 0.5 1 0.54828387 0.9923526 0.59184146 0.97015893 0.62640893 0.93559146
		 0.6486026 0.89203393 0.65625 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 20 ".vt[0:19]"  0.47552863 0.15450823 0 0.4045088 0.29389298 1.1920929e-007
		 0.2938928 0.40450871 -5.9604645e-008 0.15450858 0.47552848 -5.9604645e-008 -3.5527137e-015 0.50000006 0
		 -0.15450858 0.47552842 0 -0.29389277 0.40450859 1.1920929e-007 -0.40450868 0.29389286 5.9604645e-008
		 -0.47552845 0.15450823 1.1920929e-007 -0.50000006 -2.3841858e-007 0 -0.47552845 -0.15450907 0
		 -0.40450862 -0.29389226 -1.1920929e-007 -0.29389265 -0.40450919 -5.9604645e-008 -0.15450853 -0.47552824 -5.9604645e-008
		 -1.4901165e-008 -0.49999988 1.1920929e-007 0.15450846 -0.47552824 -1.1920929e-007
		 0.29389265 -0.40450919 -1.1920929e-007 0.40450856 -0.29389226 5.9604645e-008 0.47552833 -0.15450907 5.9604645e-008
		 0.49999994 -2.3841858e-007 0;
	setAttr -s 20 ".ed[0:19]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 0 0;
	setAttr ".fc[0]" -type "polyFaces" 
		f 20 19 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18
		mu 0 20 19 18 17 16 15 14 13 12 11 10 9 8 7 6 5 4 3 2 1 0;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "IKSpine1_M" -p "_M";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".t" -type "double3" 3 9.5 0 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 0.75 0.75 0.75 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode mesh -n "IKSpine1_MShape" -p "IKSpine1_M";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 20 ".uvst[0].uvsp[0:19]" -type "float2" 0.64860266 0.79546607
		 0.62640899 0.75190848 0.59184152 0.71734101 0.54828393 0.69514734 0.5 0.68749994
		 0.45171607 0.69514734 0.40815851 0.71734107 0.37359107 0.75190854 0.3513974 0.79546607
		 0.34374997 0.84375 0.3513974 0.89203393 0.37359107 0.93559146 0.40815854 0.97015893
		 0.4517161 0.9923526 0.5 1 0.54828387 0.9923526 0.59184146 0.97015893 0.62640893 0.93559146
		 0.6486026 0.89203393 0.65625 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 20 ".vt[0:19]"  0.47552863 0.15450823 0 0.4045088 0.29389298 1.1920929e-007
		 0.2938928 0.40450871 -5.9604645e-008 0.15450858 0.47552848 -5.9604645e-008 -3.5527137e-015 0.50000006 0
		 -0.15450858 0.47552842 0 -0.29389277 0.40450859 1.1920929e-007 -0.40450868 0.29389286 5.9604645e-008
		 -0.47552845 0.15450823 1.1920929e-007 -0.50000006 -2.3841858e-007 0 -0.47552845 -0.15450907 0
		 -0.40450862 -0.29389226 -1.1920929e-007 -0.29389265 -0.40450919 -5.9604645e-008 -0.15450853 -0.47552824 -5.9604645e-008
		 -1.4901165e-008 -0.49999988 1.1920929e-007 0.15450846 -0.47552824 -1.1920929e-007
		 0.29389265 -0.40450919 -1.1920929e-007 0.40450856 -0.29389226 5.9604645e-008 0.47552833 -0.15450907 5.9604645e-008
		 0.49999994 -2.3841858e-007 0;
	setAttr -s 20 ".ed[0:19]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 0 0;
	setAttr ".fc[0]" -type "polyFaces" 
		f 20 19 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18
		mu 0 20 19 18 17 16 15 14 13 12 11 10 9 8 7 6 5 4 3 2 1 0;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "IKSpine3_M" -p "_M";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".t" -type "double3" 3 12.5 0 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 0.75 0.75 0.75 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode mesh -n "IKSpine3_MShape" -p "IKSpine3_M";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 20 ".uvst[0].uvsp[0:19]" -type "float2" 0.64860266 0.79546607
		 0.62640899 0.75190848 0.59184152 0.71734101 0.54828393 0.69514734 0.5 0.68749994
		 0.45171607 0.69514734 0.40815851 0.71734107 0.37359107 0.75190854 0.3513974 0.79546607
		 0.34374997 0.84375 0.3513974 0.89203393 0.37359107 0.93559146 0.40815854 0.97015893
		 0.4517161 0.9923526 0.5 1 0.54828387 0.9923526 0.59184146 0.97015893 0.62640893 0.93559146
		 0.6486026 0.89203393 0.65625 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 20 ".vt[0:19]"  0.47552863 0.15450823 0 0.4045088 0.29389298 1.1920929e-007
		 0.2938928 0.40450871 -5.9604645e-008 0.15450858 0.47552848 -5.9604645e-008 -3.5527137e-015 0.50000006 0
		 -0.15450858 0.47552842 0 -0.29389277 0.40450859 1.1920929e-007 -0.40450868 0.29389286 5.9604645e-008
		 -0.47552845 0.15450823 1.1920929e-007 -0.50000006 -2.3841858e-007 0 -0.47552845 -0.15450907 0
		 -0.40450862 -0.29389226 -1.1920929e-007 -0.29389265 -0.40450919 -5.9604645e-008 -0.15450853 -0.47552824 -5.9604645e-008
		 -1.4901165e-008 -0.49999988 1.1920929e-007 0.15450846 -0.47552824 -1.1920929e-007
		 0.29389265 -0.40450919 -1.1920929e-007 0.40450856 -0.29389226 5.9604645e-008 0.47552833 -0.15450907 5.9604645e-008
		 0.49999994 -2.3841858e-007 0;
	setAttr -s 20 ".ed[0:19]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 0 0;
	setAttr ".fc[0]" -type "polyFaces" 
		f 20 19 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18
		mu 0 20 19 18 17 16 15 14 13 12 11 10 9 8 7 6 5 4 3 2 1 0;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "_L" -p "Group";
	setAttr ".s" -type "double3" -1 1 1 ;
createNode transform -n "FKHip_L" -p "_L";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode mesh -n "FKHip_LShape" -p "FKHip_L";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  -0.97594106 4.9069018 -0.5 
		-0.9191528 4.9069014 -0.5 -0.98041165 9.6780119 0.5 -0.59128088 9.6789837 0.5;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-016 0.5 0.5 -1.110223e-016 0.5
		 -0.5 1.110223e-016 -0.5 0.5 1.110223e-016 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "FKKnee_L" -p "_L";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode mesh -n "FKKnee_LShape" -p "FKKnee_L";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  -0.87815642 0.9979136 -0.5 
		-1.2483759 0.9979167 -0.5 -0.97458899 4.600913 0.5 -0.95907754 4.6009121 0.5;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-016 0.5 0.5 -1.110223e-016 0.5
		 -0.5 1.110223e-016 -0.5 0.5 1.110223e-016 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "FKAnkle_L" -p "_L";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -1.3043478260869548 2.0514152859146284 0 ;
	setAttr ".sp" -type "double3" -1.3043478260869548 2.0514152859146284 0 ;
createNode mesh -n "FKAnkle_LShape" -p "FKAnkle_L";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  -1.2705023 0.034620728 -0.5 
		-1.2408627 0.041922782 -0.5 -0.86595541 0.83304685 0.5 -1.2408627 0.83219922 0.5;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-016 0.5 0.5 -1.110223e-016 0.5
		 -0.5 1.110223e-016 -0.5 0.5 1.110223e-016 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "FKToes_L" -p "_L";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -1.3043478260869548 2.0514152859146284 0 ;
	setAttr ".sp" -type "double3" -1.3043478260869548 2.0514152859146284 0 ;
createNode mesh -n "FKToes_LShape" -p "FKToes_L";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  -2.2413864 0.031267166 -0.5 
		-2.3600919 0.031862088 -0.5 -1.96387 0.54473507 0.5 -2.0797753 0.54384184 0.5;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-016 0.5 0.5 -1.110223e-016 0.5
		 -0.5 1.110223e-016 -0.5 0.5 1.110223e-016 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "FKShoulder_L" -p "_L";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".t" -type "double3" -2.6407265504517889 1.9580897550969052 0 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -1.3043478260869548 4.7948560930802211 0 ;
	setAttr ".sp" -type "double3" -1.3043478260869548 4.7948560930802211 0 ;
createNode mesh -n "FKShoulder_LShape" -p "FKShoulder_L";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  -0.94570684 12.145122 -0.5 
		-1.9397871 11.358712 -0.5 1.5732213 12.302903 0.5 0.57909524 11.184678 0.5;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-016 0.5 0.5 -1.110223e-016 0.5
		 -0.5 1.110223e-016 -0.5 0.5 1.110223e-016 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "FKElbow_L" -p "_L";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".t" -type "double3" -2.6407265504517889 1.9580897550969052 0 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -1.3043478260869548 4.7948560930802211 0 ;
	setAttr ".sp" -type "double3" -1.3043478260869548 4.7948560930802211 0 ;
createNode mesh -n "FKElbow_LShape" -p "FKElbow_L";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  -3.1527545 11.882474 -0.5 
		-4.1532397 11.610774 -0.5 -1.044524 12.134378 0.5 -2.0454845 11.368914 0.5;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-016 0.5 0.5 -1.110223e-016 0.5
		 -0.5 1.110223e-016 -0.5 0.5 1.110223e-016 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "FKScapula_L" -p "_L";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".t" -type "double3" -2.6407265504517889 1.9580897550969052 0 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -1.3043478260869548 4.7948560930802211 0 ;
	setAttr ".sp" -type "double3" -1.3043478260869548 4.7948560930802211 0 ;
createNode mesh -n "FKScapula_LShape" -p "FKScapula_L";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  1.8041431 12.324175 -0.5 
		0.80441302 11.192442 -0.5 2.7754805 12.32356 0.5 1.774281 11.191203 0.5;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-016 0.5 0.5 -1.110223e-016 0.5
		 -0.5 1.110223e-016 -0.5 0.5 1.110223e-016 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "FKWrist_L" -p "_L";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode mesh -n "FKWrist_LShape" -p "FKWrist_L";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  -7.1648235 13.844802 -0.5 
		-8.1648235 13.572627 -0.5 -5.9048996 13.844802 0.5 -6.905333 13.572627 0.5;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-016 0.5 0.5 -1.110223e-016 0.5
		 -0.5 1.110223e-016 -0.5 0.5 1.110223e-016 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "FKWrist_L1Shape" -p "FKWrist_L";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  -7.9062495 6.6690869 -0.5 
		-6.0937481 6.6690869 -0.5 -7.9062495 8.5440969 0.5 -6.0937481 8.5440969 0.5;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-016 0.5 0.5 -1.110223e-016 0.5
		 -0.5 1.110223e-016 -0.5 0.5 1.110223e-016 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "IKLeg_L" -p "_L";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".t" -type "double3" -3 2 0 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode mesh -n "IKLeg_LShape" -p "IKLeg_L";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 20 ".uvst[0].uvsp[0:19]" -type "float2" 0.64860266 0.79546607
		 0.62640899 0.75190848 0.59184152 0.71734101 0.54828393 0.69514734 0.5 0.68749994
		 0.45171607 0.69514734 0.40815851 0.71734107 0.37359107 0.75190854 0.3513974 0.79546607
		 0.34374997 0.84375 0.3513974 0.89203393 0.37359107 0.93559146 0.40815854 0.97015893
		 0.4517161 0.9923526 0.5 1 0.54828387 0.9923526 0.59184146 0.97015893 0.62640893 0.93559146
		 0.6486026 0.89203393 0.65625 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 20 ".vt[0:19]"  0.47552863 0.15450823 0 0.4045088 0.29389298 1.1920929e-007
		 0.2938928 0.40450871 -5.9604645e-008 0.15450858 0.47552848 -5.9604645e-008 -3.5527137e-015 0.50000006 0
		 -0.15450858 0.47552842 0 -0.29389277 0.40450859 1.1920929e-007 -0.40450868 0.29389286 5.9604645e-008
		 -0.47552845 0.15450823 1.1920929e-007 -0.50000006 -2.3841858e-007 0 -0.47552845 -0.15450907 0
		 -0.40450862 -0.29389226 -1.1920929e-007 -0.29389265 -0.40450919 -5.9604645e-008 -0.15450853 -0.47552824 -5.9604645e-008
		 -1.4901165e-008 -0.49999988 1.1920929e-007 0.15450846 -0.47552824 -1.1920929e-007
		 0.29389265 -0.40450919 -1.1920929e-007 0.40450856 -0.29389226 5.9604645e-008 0.47552833 -0.15450907 5.9604645e-008
		 0.49999994 -2.3841858e-007 0;
	setAttr -s 20 ".ed[0:19]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 0 0;
	setAttr ".fc[0]" -type "polyFaces" 
		f 20 19 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18
		mu 0 20 19 18 17 16 15 14 13 12 11 10 9 8 7 6 5 4 3 2 1 0;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "PoleLeg_L" -p "_L";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".t" -type "double3" -3 5 0 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode mesh -n "PoleLeg_LShape" -p "PoleLeg_L";
	addAttr -ci true -sn "mso" -ln "miShadingSamplesOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "msh" -ln "miShadingSamples" -min 0 -smx 8 -at "float";
	addAttr -ci true -sn "mdo" -ln "miMaxDisplaceOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mmd" -ln "miMaxDisplace" -min 0 -smx 1 -at "float";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 16 ".uvst[0].uvsp[0:15]" -type "float2" 0.42857715 0.42857715
		 0.57142287 0.42857715 0.57142287 0.57142287 0.42857715 0.57142287 0.42857715 0.33333334
		 0.5 0.33333334 0.33333334 0.42857715 0.33333334 0.5 0.66666669 0.42857715 0.66666669
		 0.5 0.57142287 0.33333334 0.42857715 0.66666669 0.5 0.66666669 0.33333334 0.57142287
		 0.57142287 0.66666669 0.66666669 0.57142287;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".vt[0:15]"  -0.061301708 -0.061301947 1.8626451e-009
		 0.061302185 -0.061301947 1.8626451e-009 0.061302185 0.061301708 1.8626451e-009 -0.061301708 0.061301708 1.8626451e-009
		 -0.061301708 -0.43617773 1.8626451e-009 2.3841858e-007 -0.43617773 1.8626451e-009
		 -0.42587948 -0.061301947 1.8626451e-009 -0.42587948 -2.3841858e-007 1.8626451e-009
		 0.42587996 -0.061301947 1.8626451e-009 0.42587996 -2.3841858e-007 1.8626451e-009
		 0.061302185 -0.43617773 1.8626451e-009 -0.061301708 0.43617749 1.8626451e-009 2.3841858e-007 0.43617749 1.8626451e-009
		 -0.42587948 0.061301708 1.8626451e-009 0.061302185 0.43617749 1.8626451e-009 0.42587996 0.061301708 1.8626451e-009;
	setAttr -s 16 ".ed[0:15]"  6 0 0 0 4 0 4 5 0 7 6 0 10 1 0 1 8 0 8 9 0
		 5 10 0 11 3 0 3 13 0 13 7 0 12 11 0 15 2 0 2 14 0 14 12 0 9 15 0;
	setAttr ".fc[0]" -type "polyFaces" 
		f 16 3 0 1 2 7 4 5 6 15 12 13 14 11 8 9 10
		mu 0 16 7 6 0 4 5 10 1 8 9 15 2 14 12 11 3 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "RollHeel_L" -p "_L";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".t" -type "double3" -0.82542228468801238 0.045471152433888884 -0.37906402609351797 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 90 0 0 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 0.34160269979449409 0.34160269979449409 0.34160269979449409 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode mesh -n "RollHeel_LShape" -p "RollHeel_L";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 40 ".uvst[0].uvsp[0:39]" -type "float2" 0.64860266 0.79546607
		 0.62640899 0.75190848 0.59184152 0.71734101 0.54828393 0.69514734 0.5 0.68749994
		 0.45171607 0.69514734 0.40815851 0.71734107 0.37359107 0.75190854 0.3513974 0.79546607
		 0.34374997 0.84375 0.3513974 0.89203393 0.37359107 0.93559146 0.40815854 0.97015893
		 0.4517161 0.9923526 0.5 1 0.54828387 0.9923526 0.59184146 0.97015893 0.62640893 0.93559146
		 0.6486026 0.89203393 0.65625 0.84375 0.57430136 0.81960803 0.56320453 0.79782927
		 0.54592073 0.78054553 0.52414197 0.76944864 0.5 0.76562494 0.47585803 0.7694487 0.45407927
		 0.78054553 0.43679553 0.79782927 0.4256987 0.81960803 0.421875 0.84375 0.4256987
		 0.86789197 0.43679553 0.88967073 0.45407927 0.90695447 0.47585803 0.9180513 0.5 0.921875
		 0.52414197 0.9180513 0.54592073 0.90695447 0.56320447 0.88967073 0.5743013 0.86789197
		 0.578125 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 40 ".vt[0:39]"  0.95105714 1 -0.30901718 0.80901754 1 -0.5877856
		 0.5877856 1 -0.80901748 0.30901715 1 -0.95105702 0 1 -1.000000476837 -0.30901715 1 -0.95105696
		 -0.58778548 1 -0.8090173 -0.80901724 1 -0.58778542 -0.95105678 1 -0.30901706 -1.000000238419 1 0
		 -0.95105678 1 0.30901706 -0.80901718 1 0.58778536 -0.58778536 1 0.80901712 -0.30901706 1 0.95105666
		 -2.9802322e-008 1 1.000000119209 0.30901697 1 0.9510566 0.58778524 1 0.80901706 0.809017 1 0.5877853
		 0.95105654 1 0.309017 1 1 0 0.6846025 1 -0.22244078 0.58235776 1 -0.42310756 0.42310756 1 -0.58235753
		 0.22244084 1 -0.68460238 2.6206154e-008 1 -0.71983343 -0.22244078 1 -0.68460232 -0.42310748 1 -0.58235741
		 -0.58235741 1 -0.42310745 -0.68460226 1 -0.22244067 -0.71983325 1 3.9309231e-008
		 -0.68460226 1 0.22244076 -0.58235741 1 0.42310745 -0.42310739 1 0.58235735 -0.22244072 1 0.6846022
		 4.7534545e-009 1 0.71983325 0.22244069 1 0.68460214 0.42310736 1 0.58235735 0.58235729 1 0.42310742
		 0.68460214 1 0.22244072 0.71983314 1 3.9309231e-008;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 0 0 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 32 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 20 0;
	setAttr ".fc[0]" -type "polyFaces" 
		f 20 19 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18
		mu 0 20 19 18 17 16 15 14 13 12 11 10 9 8 7 6 5 4 3 2 1 0
		h 20 -38 -37 -36 -35 -34 -33 -32 -31 -30 -29 -28 -27 -26 -25 -24 -23 -22 -21 -40 -39
		mu 0 20 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "RollToes_L" -p "_L";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".t" -type "double3" -1.7186345555565361 0.045471152433888884 -0.37906402609351797 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 90 0 0 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 0.34160269979449409 0.34160269979449409 0.34160269979449409 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode mesh -n "RollToes_LShape" -p "RollToes_L";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 40 ".uvst[0].uvsp[0:39]" -type "float2" 0.64860266 0.79546607
		 0.62640899 0.75190848 0.59184152 0.71734101 0.54828393 0.69514734 0.5 0.68749994
		 0.45171607 0.69514734 0.40815851 0.71734107 0.37359107 0.75190854 0.3513974 0.79546607
		 0.34374997 0.84375 0.3513974 0.89203393 0.37359107 0.93559146 0.40815854 0.97015893
		 0.4517161 0.9923526 0.5 1 0.54828387 0.9923526 0.59184146 0.97015893 0.62640893 0.93559146
		 0.6486026 0.89203393 0.65625 0.84375 0.57430136 0.81960803 0.56320453 0.79782927
		 0.54592073 0.78054553 0.52414197 0.76944864 0.5 0.76562494 0.47585803 0.7694487 0.45407927
		 0.78054553 0.43679553 0.79782927 0.4256987 0.81960803 0.421875 0.84375 0.4256987
		 0.86789197 0.43679553 0.88967073 0.45407927 0.90695447 0.47585803 0.9180513 0.5 0.921875
		 0.52414197 0.9180513 0.54592073 0.90695447 0.56320447 0.88967073 0.5743013 0.86789197
		 0.578125 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 40 ".vt[0:39]"  0.95105714 1 -0.30901718 0.80901754 1 -0.5877856
		 0.5877856 1 -0.80901748 0.30901715 1 -0.95105702 0 1 -1.000000476837 -0.30901715 1 -0.95105696
		 -0.58778548 1 -0.8090173 -0.80901724 1 -0.58778542 -0.95105678 1 -0.30901706 -1.000000238419 1 0
		 -0.95105678 1 0.30901706 -0.80901718 1 0.58778536 -0.58778536 1 0.80901712 -0.30901706 1 0.95105666
		 -2.9802322e-008 1 1.000000119209 0.30901697 1 0.9510566 0.58778524 1 0.80901706 0.809017 1 0.5877853
		 0.95105654 1 0.309017 1 1 0 0.6846025 1 -0.22244078 0.58235776 1 -0.42310756 0.42310756 1 -0.58235753
		 0.22244084 1 -0.68460238 2.6206154e-008 1 -0.71983343 -0.22244078 1 -0.68460232 -0.42310748 1 -0.58235741
		 -0.58235741 1 -0.42310745 -0.68460226 1 -0.22244067 -0.71983325 1 3.9309231e-008
		 -0.68460226 1 0.22244076 -0.58235741 1 0.42310745 -0.42310739 1 0.58235735 -0.22244072 1 0.6846022
		 4.7534545e-009 1 0.71983325 0.22244069 1 0.68460214 0.42310736 1 0.58235735 0.58235729 1 0.42310742
		 0.68460214 1 0.22244072 0.71983314 1 3.9309231e-008;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 0 0 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 32 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 20 0;
	setAttr ".fc[0]" -type "polyFaces" 
		f 20 19 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18
		mu 0 20 19 18 17 16 15 14 13 12 11 10 9 8 7 6 5 4 3 2 1 0
		h 20 -38 -37 -36 -35 -34 -33 -32 -31 -30 -29 -28 -27 -26 -25 -24 -23 -22 -21 -40 -39
		mu 0 20 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "RollToesEnd_L" -p "_L";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".t" -type "double3" -2.6941163776892685 0.045471152433888884 -0.37906402609351797 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 90 0 0 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 0.34160269979449409 0.34160269979449409 0.34160269979449409 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode mesh -n "RollToesEnd_LShape" -p "RollToesEnd_L";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 40 ".uvst[0].uvsp[0:39]" -type "float2" 0.64860266 0.79546607
		 0.62640899 0.75190848 0.59184152 0.71734101 0.54828393 0.69514734 0.5 0.68749994
		 0.45171607 0.69514734 0.40815851 0.71734107 0.37359107 0.75190854 0.3513974 0.79546607
		 0.34374997 0.84375 0.3513974 0.89203393 0.37359107 0.93559146 0.40815854 0.97015893
		 0.4517161 0.9923526 0.5 1 0.54828387 0.9923526 0.59184146 0.97015893 0.62640893 0.93559146
		 0.6486026 0.89203393 0.65625 0.84375 0.57430136 0.81960803 0.56320453 0.79782927
		 0.54592073 0.78054553 0.52414197 0.76944864 0.5 0.76562494 0.47585803 0.7694487 0.45407927
		 0.78054553 0.43679553 0.79782927 0.4256987 0.81960803 0.421875 0.84375 0.4256987
		 0.86789197 0.43679553 0.88967073 0.45407927 0.90695447 0.47585803 0.9180513 0.5 0.921875
		 0.52414197 0.9180513 0.54592073 0.90695447 0.56320447 0.88967073 0.5743013 0.86789197
		 0.578125 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 40 ".vt[0:39]"  0.95105714 1 -0.30901718 0.80901754 1 -0.5877856
		 0.5877856 1 -0.80901748 0.30901715 1 -0.95105702 0 1 -1.000000476837 -0.30901715 1 -0.95105696
		 -0.58778548 1 -0.8090173 -0.80901724 1 -0.58778542 -0.95105678 1 -0.30901706 -1.000000238419 1 0
		 -0.95105678 1 0.30901706 -0.80901718 1 0.58778536 -0.58778536 1 0.80901712 -0.30901706 1 0.95105666
		 -2.9802322e-008 1 1.000000119209 0.30901697 1 0.9510566 0.58778524 1 0.80901706 0.809017 1 0.5877853
		 0.95105654 1 0.309017 1 1 0 0.6846025 1 -0.22244078 0.58235776 1 -0.42310756 0.42310756 1 -0.58235753
		 0.22244084 1 -0.68460238 2.6206154e-008 1 -0.71983343 -0.22244078 1 -0.68460232 -0.42310748 1 -0.58235741
		 -0.58235741 1 -0.42310745 -0.68460226 1 -0.22244067 -0.71983325 1 3.9309231e-008
		 -0.68460226 1 0.22244076 -0.58235741 1 0.42310745 -0.42310739 1 0.58235735 -0.22244072 1 0.6846022
		 4.7534545e-009 1 0.71983325 0.22244069 1 0.68460214 0.42310736 1 0.58235735 0.58235729 1 0.42310742
		 0.68460214 1 0.22244072 0.71983314 1 3.9309231e-008;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 0 0 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 32 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 20 0;
	setAttr ".fc[0]" -type "polyFaces" 
		f 20 19 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18
		mu 0 20 19 18 17 16 15 14 13 12 11 10 9 8 7 6 5 4 3 2 1 0
		h 20 -38 -37 -36 -35 -34 -33 -32 -31 -30 -29 -28 -27 -26 -25 -24 -23 -22 -21 -40 -39
		mu 0 20 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "FKIKLeg_L" -p "_L";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".t" -type "double3" -3 7 0 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode mesh -n "FKIKLeg_LShape" -p "FKIKLeg_L";
	addAttr -ci true -sn "mso" -ln "miShadingSamplesOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "msh" -ln "miShadingSamples" -min 0 -smx 8 -at "float";
	addAttr -ci true -sn "mdo" -ln "miMaxDisplaceOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mmd" -ln "miMaxDisplace" -min 0 -smx 1 -at "float";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 16 ".uvst[0].uvsp[0:15]" -type "float2" 0.42857715 0.42857715
		 0.57142287 0.42857715 0.57142287 0.57142287 0.42857715 0.57142287 0.42857715 0.33333334
		 0.5 0.33333334 0.33333334 0.42857715 0.33333334 0.5 0.66666669 0.42857715 0.66666669
		 0.5 0.57142287 0.33333334 0.42857715 0.66666669 0.5 0.66666669 0.33333334 0.57142287
		 0.57142287 0.66666669 0.66666669 0.57142287;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".vt[0:15]"  -0.061301708 -0.061301947 1.8626451e-009
		 0.061302185 -0.061301947 1.8626451e-009 0.061302185 0.061301708 1.8626451e-009 -0.061301708 0.061301708 1.8626451e-009
		 -0.061301708 -0.43617773 1.8626451e-009 2.3841858e-007 -0.43617773 1.8626451e-009
		 -0.42587948 -0.061301947 1.8626451e-009 -0.42587948 -2.3841858e-007 1.8626451e-009
		 0.42587996 -0.061301947 1.8626451e-009 0.42587996 -2.3841858e-007 1.8626451e-009
		 0.061302185 -0.43617773 1.8626451e-009 -0.061301708 0.43617749 1.8626451e-009 2.3841858e-007 0.43617749 1.8626451e-009
		 -0.42587948 0.061301708 1.8626451e-009 0.061302185 0.43617749 1.8626451e-009 0.42587996 0.061301708 1.8626451e-009;
	setAttr -s 16 ".ed[0:15]"  6 0 0 0 4 0 4 5 0 7 6 0 10 1 0 1 8 0 8 9 0
		 5 10 0 11 3 0 3 13 0 13 7 0 12 11 0 15 2 0 2 14 0 14 12 0 9 15 0;
	setAttr ".fc[0]" -type "polyFaces" 
		f 16 11 8 9 10 3 0 1 2 7 4 5 6 15 12 13 14
		mu 0 16 12 11 3 13 7 6 0 4 5 10 1 8 9 15 2 14;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "FKIKArm_L" -p "_L";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".t" -type "double3" -2.5 15 0 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode mesh -n "FKIKArm_LShape" -p "FKIKArm_L";
	addAttr -ci true -sn "mso" -ln "miShadingSamplesOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "msh" -ln "miShadingSamples" -min 0 -smx 8 -at "float";
	addAttr -ci true -sn "mdo" -ln "miMaxDisplaceOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mmd" -ln "miMaxDisplace" -min 0 -smx 1 -at "float";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 16 ".uvst[0].uvsp[0:15]" -type "float2" 0.42857715 0.42857715
		 0.57142287 0.42857715 0.57142287 0.57142287 0.42857715 0.57142287 0.42857715 0.33333334
		 0.5 0.33333334 0.33333334 0.42857715 0.33333334 0.5 0.66666669 0.42857715 0.66666669
		 0.5 0.57142287 0.33333334 0.42857715 0.66666669 0.5 0.66666669 0.33333334 0.57142287
		 0.57142287 0.66666669 0.66666669 0.57142287;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".vt[0:15]"  -0.061301708 -0.061301947 1.8626451e-009
		 0.061302185 -0.061301947 1.8626451e-009 0.061302185 0.061301708 1.8626451e-009 -0.061301708 0.061301708 1.8626451e-009
		 -0.061301708 -0.43617773 1.8626451e-009 2.3841858e-007 -0.43617773 1.8626451e-009
		 -0.42587948 -0.061301947 1.8626451e-009 -0.42587948 -2.3841858e-007 1.8626451e-009
		 0.42587996 -0.061301947 1.8626451e-009 0.42587996 -2.3841858e-007 1.8626451e-009
		 0.061302185 -0.43617773 1.8626451e-009 -0.061301708 0.43617749 1.8626451e-009 2.3841858e-007 0.43617749 1.8626451e-009
		 -0.42587948 0.061301708 1.8626451e-009 0.061302185 0.43617749 1.8626451e-009 0.42587996 0.061301708 1.8626451e-009;
	setAttr -s 16 ".ed[0:15]"  6 0 0 0 4 0 4 5 0 7 6 0 10 1 0 1 8 0 8 9 0
		 5 10 0 11 3 0 3 13 0 13 7 0 12 11 0 15 2 0 2 14 0 14 12 0 9 15 0;
	setAttr ".fc[0]" -type "polyFaces" 
		f 16 11 8 9 10 3 0 1 2 7 4 5 6 15 12 13 14
		mu 0 16 12 11 3 13 7 6 0 4 5 10 1 8 9 15 2 14;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "PoleArm_L" -p "_L";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".t" -type "double3" -4 15 0 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode mesh -n "PoleArm_LShape" -p "PoleArm_L";
	addAttr -ci true -sn "mso" -ln "miShadingSamplesOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "msh" -ln "miShadingSamples" -min 0 -smx 8 -at "float";
	addAttr -ci true -sn "mdo" -ln "miMaxDisplaceOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mmd" -ln "miMaxDisplace" -min 0 -smx 1 -at "float";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 16 ".uvst[0].uvsp[0:15]" -type "float2" 0.42857715 0.42857715
		 0.57142287 0.42857715 0.57142287 0.57142287 0.42857715 0.57142287 0.42857715 0.33333334
		 0.5 0.33333334 0.33333334 0.42857715 0.33333334 0.5 0.66666669 0.42857715 0.66666669
		 0.5 0.57142287 0.33333334 0.42857715 0.66666669 0.5 0.66666669 0.33333334 0.57142287
		 0.57142287 0.66666669 0.66666669 0.57142287;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 16 ".vt[0:15]"  -0.061301708 -0.061301947 1.8626451e-009
		 0.061302185 -0.061301947 1.8626451e-009 0.061302185 0.061301708 1.8626451e-009 -0.061301708 0.061301708 1.8626451e-009
		 -0.061301708 -0.43617773 1.8626451e-009 2.3841858e-007 -0.43617773 1.8626451e-009
		 -0.42587948 -0.061301947 1.8626451e-009 -0.42587948 -2.3841858e-007 1.8626451e-009
		 0.42587996 -0.061301947 1.8626451e-009 0.42587996 -2.3841858e-007 1.8626451e-009
		 0.061302185 -0.43617773 1.8626451e-009 -0.061301708 0.43617749 1.8626451e-009 2.3841858e-007 0.43617749 1.8626451e-009
		 -0.42587948 0.061301708 1.8626451e-009 0.061302185 0.43617749 1.8626451e-009 0.42587996 0.061301708 1.8626451e-009;
	setAttr -s 16 ".ed[0:15]"  6 0 0 0 4 0 4 5 0 7 6 0 10 1 0 1 8 0 8 9 0
		 5 10 0 11 3 0 3 13 0 13 7 0 12 11 0 15 2 0 2 14 0 14 12 0 9 15 0;
	setAttr ".fc[0]" -type "polyFaces" 
		f 16 11 8 9 10 3 0 1 2 7 4 5 6 15 12 13 14
		mu 0 16 12 11 3 13 7 6 0 4 5 10 1 8 9 15 2 14;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "IKArm_L" -p "_L";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr ".t" -type "double3" -7 15 0 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode mesh -n "IKArm_LShape" -p "IKArm_L";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 20 ".uvst[0].uvsp[0:19]" -type "float2" 0.64860266 0.79546607
		 0.62640899 0.75190848 0.59184152 0.71734101 0.54828393 0.69514734 0.5 0.68749994
		 0.45171607 0.69514734 0.40815851 0.71734107 0.37359107 0.75190854 0.3513974 0.79546607
		 0.34374997 0.84375 0.3513974 0.89203393 0.37359107 0.93559146 0.40815854 0.97015893
		 0.4517161 0.9923526 0.5 1 0.54828387 0.9923526 0.59184146 0.97015893 0.62640893 0.93559146
		 0.6486026 0.89203393 0.65625 0.84375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 20 ".vt[0:19]"  0.47552863 0.15450823 0 0.4045088 0.29389298 1.1920929e-007
		 0.2938928 0.40450871 -5.9604645e-008 0.15450858 0.47552848 -5.9604645e-008 -3.5527137e-015 0.50000006 0
		 -0.15450858 0.47552842 0 -0.29389277 0.40450859 1.1920929e-007 -0.40450868 0.29389286 5.9604645e-008
		 -0.47552845 0.15450823 1.1920929e-007 -0.50000006 -2.3841858e-007 0 -0.47552845 -0.15450907 0
		 -0.40450862 -0.29389226 -1.1920929e-007 -0.29389265 -0.40450919 -5.9604645e-008 -0.15450853 -0.47552824 -5.9604645e-008
		 -1.4901165e-008 -0.49999988 1.1920929e-007 0.15450846 -0.47552824 -1.1920929e-007
		 0.29389265 -0.40450919 -1.1920929e-007 0.40450856 -0.29389226 5.9604645e-008 0.47552833 -0.15450907 5.9604645e-008
		 0.49999994 -2.3841858e-007 0;
	setAttr -s 20 ".ed[0:19]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 0 0;
	setAttr ".fc[0]" -type "polyFaces" 
		f 20 19 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18
		mu 0 20 19 18 17 16 15 14 13 12 11 10 9 8 7 6 5 4 3 2 1 0;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "FKPinkyFinger1_L" -p "_L";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode mesh -n "FKPinkyFinger1_LShape" -p "FKPinkyFinger1_L";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  -7.9062495 8.7315922 -0.5 
		-8.3437538 8.7315922 -0.5 -7.9062495 9.6690893 0.5 -8.3437538 9.6690893 0.5;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-016 0.5 0.5 -1.110223e-016 0.5
		 -0.5 1.110223e-016 -0.5 0.5 1.110223e-016 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "FKRingFinger1_L" -p "_L";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode mesh -n "FKRingFinger1_LShape" -p "FKRingFinger1_L";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  -7.1562543 8.7315922 -0.5 
		-7.5937548 8.7315922 -0.5 -7.1562543 9.6690893 0.5 -7.5937548 9.6690893 0.5;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-016 0.5 0.5 -1.110223e-016 0.5
		 -0.5 1.110223e-016 -0.5 0.5 1.110223e-016 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "FKMiddleFinger1_L" -p "_L";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode mesh -n "FKMiddleFinger1_LShape" -p "FKMiddleFinger1_L";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  -6.4062576 8.7315922 -0.5 
		-6.8437514 8.7315922 -0.5 -6.4062576 9.6690893 0.5 -6.8437514 9.6690893 0.5;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-016 0.5 0.5 -1.110223e-016 0.5
		 -0.5 1.110223e-016 -0.5 0.5 1.110223e-016 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "FKIndexFinger1_L" -p "_L";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode mesh -n "FKIndexFinger1_LShape" -p "FKIndexFinger1_L";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  -5.6562529 8.7315922 -0.5 
		-6.0937552 8.7315922 -0.5 -5.6562529 9.6690893 0.5 -6.0937552 9.6690893 0.5;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-016 0.5 0.5 -1.110223e-016 0.5
		 -0.5 1.110223e-016 -0.5 0.5 1.110223e-016 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "FKPinkyFinger2_L" -p "_L";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode mesh -n "FKPinkyFinger2_LShape" -p "FKPinkyFinger2_L";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  -7.9062495 9.8565941 -0.5 
		-8.3437538 9.8565941 -0.5 -7.9062495 10.606584 0.5 -8.3437538 10.606584 0.5;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-016 0.5 0.5 -1.110223e-016 0.5
		 -0.5 1.110223e-016 -0.5 0.5 1.110223e-016 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "FKRingFinger2_L" -p "_L";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode mesh -n "FKRingFinger2_LShape" -p "FKRingFinger2_L";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  -7.1562543 9.8565941 -0.5 
		-7.5937548 9.8565941 -0.5 -7.1562543 10.606584 0.5 -7.5937548 10.606584 0.5;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-016 0.5 0.5 -1.110223e-016 0.5
		 -0.5 1.110223e-016 -0.5 0.5 1.110223e-016 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "FKMiddleFinger2_L" -p "_L";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode mesh -n "FKMiddleFinger2_LShape" -p "FKMiddleFinger2_L";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  -6.4062576 9.8565941 -0.5 
		-6.8437514 9.8565941 -0.5 -6.4062576 10.606584 0.5 -6.8437514 10.606584 0.5;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-016 0.5 0.5 -1.110223e-016 0.5
		 -0.5 1.110223e-016 -0.5 0.5 1.110223e-016 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "FKIndexFinger2_L" -p "_L";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode mesh -n "FKIndexFinger2_LShape" -p "FKIndexFinger2_L";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  -5.6562529 9.8565941 -0.5 
		-6.0937552 9.8565941 -0.5 -5.6562529 10.606584 0.5 -6.0937552 10.606584 0.5;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-016 0.5 0.5 -1.110223e-016 0.5
		 -0.5 1.110223e-016 -0.5 0.5 1.110223e-016 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "FKPinkyFinger3_L" -p "_L";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode mesh -n "FKPinkyFinger3_LShape" -p "FKPinkyFinger3_L";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  -7.9062495 10.794074 -0.5 
		-8.3437538 10.794074 -0.5 -7.9062495 11.544092 0.5 -8.3437538 11.544092 0.5;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-016 0.5 0.5 -1.110223e-016 0.5
		 -0.5 1.110223e-016 -0.5 0.5 1.110223e-016 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "FKRingFinger3_L" -p "_L";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode mesh -n "FKRingFinger3_LShape" -p "FKRingFinger3_L";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  -7.1562543 10.794074 -0.5 
		-7.5937548 10.794074 -0.5 -7.1562543 11.544092 0.5 -7.5937548 11.544092 0.5;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-016 0.5 0.5 -1.110223e-016 0.5
		 -0.5 1.110223e-016 -0.5 0.5 1.110223e-016 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "FKMiddleFinger3_L" -p "_L";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode mesh -n "FKMiddleFinger3_LShape" -p "FKMiddleFinger3_L";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  -6.4062576 10.794074 -0.5 
		-6.8437514 10.794074 -0.5 -6.4062576 11.544092 0.5 -6.8437514 11.544092 0.5;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-016 0.5 0.5 -1.110223e-016 0.5
		 -0.5 1.110223e-016 -0.5 0.5 1.110223e-016 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "FKIndexFinger3_L" -p "_L";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode mesh -n "FKIndexFinger3_LShape" -p "FKIndexFinger3_L";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  -5.6562529 10.794074 -0.5 
		-6.0937552 10.794074 -0.5 -5.6562529 11.544092 0.5 -6.0937552 11.544092 0.5;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-016 0.5 0.5 -1.110223e-016 0.5
		 -0.5 1.110223e-016 -0.5 0.5 1.110223e-016 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Fingers_L" -p "_L";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode mesh -n "Fingers_LShape" -p "Fingers_L";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  -7.9062495 5.808609 -0.5 
		-6.0937481 5.808609 -0.5 -7.9062495 6.225596 0.5 -6.0937481 6.225596 0.5;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-016 0.5 0.5 -1.110223e-016 0.5
		 -0.5 1.110223e-016 -0.5 0.5 1.110223e-016 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "FKThumbFinger1_L" -p "_L";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode mesh -n "FKThumbFinger1_LShape" -p "FKThumbFinger1_L";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  -4.9062548 6.6690903 -0.5 
		-5.3437481 6.6690903 -0.5 -4.9062548 7.6066031 0.5 -5.3437481 7.6066031 0.5;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-016 0.5 0.5 -1.110223e-016 0.5
		 -0.5 1.110223e-016 -0.5 0.5 1.110223e-016 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "FKThumbFinger2_L" -p "_L";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode mesh -n "FKThumbFinger2_LShape" -p "FKThumbFinger2_L";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  -4.9062548 7.7940974 -0.5 
		-5.3437481 7.7940974 -0.5 -4.9062548 8.5441141 0.5 -5.3437481 8.5441141 0.5;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-016 0.5 0.5 -1.110223e-016 0.5
		 -0.5 1.110223e-016 -0.5 0.5 1.110223e-016 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "FKThumbFinger3_L" -p "_L";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode mesh -n "FKThumbFinger3_LShape" -p "FKThumbFinger3_L";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[0:3]" -type "float3"  -4.9062548 8.7316036 -0.5 
		-5.3437481 8.7316036 -0.5 -4.9062548 9.4816151 0.5 -5.3437481 9.4816151 0.5;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-016 0.5 0.5 -1.110223e-016 0.5
		 -0.5 1.110223e-016 -0.5 0.5 1.110223e-016 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "ControlSet" -p "Group";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode mesh -n "ControlSetShape" -p "ControlSet";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0 0 1 0 0 1 1 1 0.5
		 0 1 0.5 0.5 1 0 0.5 0.75 0.25 0.75 0.75 0.25 0.75 0.25 0.25 0.75 0 1 0.25 0.75 0.5
		 0.5 0.25 1 0.75 0.75 1 0.5 0.75 0.25 1 0 0.75 0.25 0.5 0 0.25 0.25 0;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[16:23]" -type "float3"  0 -0.18161646 0 0.33776316 
		-6.2139742e-007 0 0 0.18161646 0 -0.33776316 -6.2139742e-007 0 0.33776307 -0.18161646 
		0 0.33776307 0.18161646 0 -0.33776307 0.18161646 0 -0.33776307 -0.18161646 0;
	setAttr -s 24 ".vt[0:23]"  6.24173403 16.023008347 0 7.78043699 16.023008347 0
		 6.24173403 16.85037613 0 7.78043699 16.85037613 0 7.01108551 16.023008347 0 6.24173403 16.43669128 0
		 7.78043699 16.43669128 0 7.01108551 16.85037613 0 6.62640953 16.023008347 0 7.39576149 16.023008347 0
		 6.24173403 16.22985077 0 6.24173403 16.64353371 0 7.78043699 16.22985077 0 7.78043699 16.64353371 0
		 6.62640953 16.85037613 0 7.39576149 16.85037613 0 7.01108551 16.22985077 0 7.39576149 16.43669128 0
		 7.01108551 16.64353371 0 6.62640953 16.43669128 0 7.39576149 16.22985077 0 7.39576149 16.64353371 0
		 6.62640953 16.64353371 0 6.62640953 16.22985077 0;
	setAttr -s 24 ".ed[0:23]"  0 8 0 8 4 0 4 9 0 9 1 0 0 10 0 10 5 0 5 11 0
		 11 2 0 1 12 0 12 6 0 6 13 0 13 3 0 2 14 0 14 7 0 7 15 0 15 3 0 20 17 0 20 16 0 21 18 0
		 21 17 0 22 19 0 22 18 0 23 16 0 23 19 0;
	setAttr ".fc[0]" -type "polyFaces" 
		f 16 -5 0 1 2 3 8 9 10 11 -16 -15 -14 -13 -8 -7 -6
		mu 0 16 22 0 23 4 12 1 13 5 16 3 17 6 19 2 20 7
		h 8 23 -21 21 -19 19 -17 17 -23
		mu 0 8 11 21 10 18 9 14 8 15;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "ControlSetShape1" -p "ControlSet";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 71 ".uvst[0].uvsp[0:70]" -type "float2" 0.33462143 0.34615386
		 0.72335684 0.34615386 0.71010482 0.03846154 0.81558239 0.09655986 0.71010482 1.7388937e-016
		 1 0 1 0.03846154 0.52346754 1 0.48757574 1 0 0.03846154 4.7932387e-016 1.7388937e-016
		 0.33572578 0 0.33572578 0.03846154 0.2429505 0.094040036 0.35008273 0.38461539 0.52788502
		 0.82151461 0.70734388 0.38461539 0.5 0.34615386 0.5 1 0.5 0.75299501 0.5 0.38461539
		 0.24260014 0.40000001 0.35634372 0.40000001 0.16666667 0.21402195 0.16666667 1.7388937e-016
		 0.16094162 0.2 0.11206216 0.1 0.083333336 0.066434026 0.083333336 1.7388937e-016
		 0.27555373 0.2 0.29263273 0 0.29263273 0.04355292 0.24322329 0.1 0.22964969 0 0.27261174
		 0.050000001 0.26114121 0 0.26114121 0.057119831 0.2469359 0.075000003 0.24539545
		 0.078833051 0.29263273 0.24225935 0.32425869 0.60000002 0.43773651 0.60000002 0.29263273
		 0.52254099 0.4059172 0.80000001 0.7710489 0.40000001 0.70102459 0.40000001 0.66666669
		 0.34615386 0.66666669 0.38461539 0.78314751 0.2 0.85342836 0.2 0.83333331 1.7388937e-016
		 0.81547934 0.1 0.75 0.043046046 0.75 1.7388937e-016 0.7782504 0.050000001 0.79166669
		 1.7388937e-016 0.79166669 0.056183636 0.80989784 0.075000003 0.8125 0.080301881 0.9012714
		 0.1 0.91666669 0 0.91666669 0.077522434 0.83333331 0.24905701 0.68852174 0.60000002
		 0.61887342 0.60000002 0.66666669 0.60000002 0.66666669 0.48364562 0.66666669 0.65296465
		 0.60599464 0.80000001 0.51912934 0.80000001 0.5367223 0.80000001;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 71 ".pt[0:70]" -type "float3"  4.944417 15.41169 0 5.7561197 
		15.41169 0 5.7284451 16.002029 0 5.9486575 15.890553 0 5.7284451 16.075817 0 6.3337579 
		16.075817 0 6.3337579 16.002029 0 5.3387361 14.157252 0 5.2637992 14.157252 0 4.245717 
		16.002029 0 4.245717 16.075817 0 4.9467211 16.075817 0 4.9467211 16.002029 0 4.7530041 
		15.895403 0 4.9767017 15.337915 0 5.3479571 14.499686 0 5.7226796 15.337915 0 5.2897382 
		15.41169 0 5.2897382 14.157252 0 5.2897382 14.631146 0 5.2897382 15.337915 0 4.7522721 
		15.308397 0 4.9897819 15.308397 0 4.5937452 15.665215 0 4.5937161 16.075817 0 4.5818033 
		15.692108 0 4.4797058 15.883959 0 4.4197426 15.9484 0 4.4197183 16.075817 0 4.8210835 
		15.692103 0 4.8567486 16.075817 0 4.8567476 15.992255 0 4.7535782 15.883959 0 4.7252326 
		16.075817 0 4.8149309 15.979891 0 4.790988 16.075817 0 4.7909846 15.966229 0 4.761322 
		15.931924 0 4.7581053 15.924589 0 4.8567486 15.611031 0 4.9227839 14.924673 0 5.1597309 
		14.924673 0 4.8567486 15.073301 0 5.0932889 14.54097 0 5.8557086 15.308397 0 5.7094889 
		15.308397 0 5.6377478 15.41169 0 5.6377478 15.337915 0 5.8809576 15.692098 0 6.0277143 
		15.692096 0 5.9857526 16.075817 0 5.9484849 15.883959 0 5.8117523 15.993232 0 5.8117523 
		16.075817 0 5.8707376 15.979877 0 5.898747 16.075817 0 5.8987408 15.968015 0 5.9368186 
		15.931922 0 5.942256 15.921751 0 6.1276107 15.88396 0 6.1597538 16.075817 0 6.1597581 
		15.927071 0 5.9857526 15.597991 0 5.6833773 14.924673 0 5.5379486 14.924673 0 5.6377478 
		14.924673 0 5.6377478 15.147908 0 5.6377478 14.823074 0 5.5110579 14.54097 0 5.3296838 
		14.54097 0 5.3664136 14.54097 0;
	setAttr -s 71 ".vt[0:70]"  1.89687645 0.89999998 0 0.79687649 0.89999998 0
		 0.8343755 0.1 0 0.53593755 0.25105575 0 0.8343755 2.3006773e-016 0 0.014062715 -2.220446e-016 0
		 0.014062715 0.1 0 1.36250091 2.5999999 0 1.46406353 2.5999999 0 2.84375072 0.1 0
		 2.84375072 2.3006773e-016 0 1.89375138 -2.220446e-016 0 1.89375138 0.1 0 2.15627623 0.24450409 0
		 1.85312581 1 0 1.35000074 2.13593817 0 0.84218812 1 0 1.42890668 0.89999998 0 1.42890668 2.5999999 0
		 1.42890668 1.95778704 0 1.42890668 1 0 2.15726805 1.039999962 0 1.83540916 1.039999962 0
		 2.37210536 0.55644351 0 2.37213612 1.1339582e-016 0 2.38829112 0.51997995 0 2.52664971 0.26000002 0
		 2.6079092 0.17268196 0 2.6079433 2.787425e-016 0 2.064018488 0.51999956 0 2.01569128 -1.3654105e-016 0
		 2.015692234 0.11323308 0 2.15550542 0.26000008 0 2.1939137 -1.1572617e-017 0 2.072351456 0.12998366 0
		 2.10480261 -7.4056832e-017 0 2.10480618 0.14850663 0 2.1450038 0.19499768 0 2.1493628 0.20496418 0
		 2.01569128 0.62987429 0 1.92619979 1.55999994 0 1.60509288 1.55999994 0 2.01569128 1.35860658 0
		 1.69513166 2.079999924 0 0.66192293 1.039999962 0 0.86006987 1.039999962 0 0.95729202 0.89999998 0
		 0.95729202 1 0 0.62768883 0.51999944 0 0.42881462 0.52000004 0 0.48567736 -9.4386608e-017 0
		 0.53619075 0.26000047 0 0.72148472 0.11191971 0 0.72148472 -3.055761e-017 0 0.64154387 0.12999681 0
		 0.60358101 -6.2472108e-017 0 0.60358721 0.14608827 0 0.5519923 0.19499981 0 0.54462612 0.20878351 0
		 0.29343459 0.25999945 0 0.24987005 -1.582156e-016 0 0.24986552 0.2015622 0 0.48567736 0.6475482 0
		 0.89544892 1.55999994 0 1.092531919 1.55999994 0 0.95729202 1.55999994 0 0.95729202 1.25747859 0
		 0.95729202 1.69770801 0 1.12897491 2.079999924 0 1.3747766 2.079999924 0 1.32499409 2.079999924 0;
	setAttr -s 72 ".ed[0:71]"  63 67 0 18 8 0 8 43 0 0 17 0 20 14 0 14 22 0
		 39 0 0 23 25 0 25 26 0 26 27 0 28 24 0 27 9 0 9 10 0 10 28 0 30 11 0 11 12 0 12 31 0
		 32 29 0 34 36 0 24 33 0 35 30 0 31 34 0 33 35 0 37 38 0 36 37 0 38 13 0 13 32 0 21 23 0
		 29 39 0 40 42 0 22 41 0 42 21 0 43 40 0 41 19 0 49 62 0 17 46 0 47 20 0 59 49 0 48 51 0
		 51 3 0 3 58 0 52 2 0 2 4 0 4 53 0 55 50 0 54 52 0 53 55 0 56 54 0 57 56 0 58 57 0
		 60 5 0 5 6 0 6 61 0 50 60 0 61 59 0 46 1 0 1 48 0 62 44 0 45 16 0 16 47 0 44 63 0
		 65 66 1 66 45 0 65 64 1 64 66 0 68 7 0 7 18 0 69 15 0 15 70 0 67 68 0 70 64 0 19 69 0;
	setAttr -s 2 ".fc[0:1]" -type "polyFaces" 
		f 57 65 66 1 2 32 29 31 27 7 8 9 11 12 13 10 19 22 20 14 15 16 21 18 24 23 25 26 17
		 28 6 3 35 55 56 38 39 40 49 48 47 45 41 42 43 46 44 53 50 51 52 54 37 34 57 60 0
		 69
		mu 0 57 68 7 18 8 43 40 42 21 23 25 26 27 9 10 28 24 33 35 30 11 12 31 34 36 37 38 13 32
		 29 39 0 17 46 1 48 51 3 58 57 56 54 52 2 4 53 55 50 60 5 6 61 59 49 62 44 63 67
		h 14 58 59 36 4 5 30 33 71 67 68 70 -64 61 62
		mu 0 14 45 16 47 20 14 22 41 19 69 15 70 64 65 66
		f 3 63 64 -62
		mu 0 3 65 64 66;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "ControlSetShape2" -p "ControlSet";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 38 ".uvst[0].uvsp[0:37]" -type "float2" 0.57291692 1 0 0.92592591
		 0.036458891 0.8888889 3.3306691e-016 0.037037037 0.33333334 0.72916669 0.18230793
		 0.89988434 0.33333334 0.18171297 0.33343887 0.15794964 3.3306691e-016 0 1 0 1 0.037037037
		 0.66666669 1 0.66659522 0.1656045 0.33333334 0.5 0.66666669 0.5 0.33333334 0.25 0.66666669
		 0.25 0.3316811 0.125 0.66803724 0.125 0.5 0 0.27925631 0.0625 0.25 0.052893657 0.25
		 0 0.71783233 0.0625 0.75 0 0.75 0.052744735 0.33333334 0.375 0.66666669 0.375 0.3332682
		 0.75 0.66666669 0.75 0.33333334 0.625 0.66666669 0.625 0.30348349 0.875 0.66666669
		 0.875 0.5 0.99057233 0.089518271 0.9375 0.25 0.89505881 0.25 0.95824915;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 38 ".pt[0:37]" -type "float3"  3.82372 14.083464 0 4.204195 
		14.231058 0 4.1800041 14.304845 0 4.204195 16.002029 0 3.9828334 14.623055 0 4.0831327 
		14.282947 0 3.9828377 15.713776 0 3.9827673 15.761127 0 4.204195 16.075817 0 3.5400918 
		16.075817 0 3.5400918 16.002029 0 3.7614651 14.083464 0 3.7615113 15.745868 0 3.9828377 
		15.079641 0 3.7614651 15.079641 0 3.9828377 15.577741 0 3.7614651 15.577741 0 3.9839602 
		15.826766 0 3.7605429 15.826764 0 3.8721483 16.075817 0 4.0187511 15.951294 0 4.0381727 
		15.970437 0 4.0381832 16.075817 0 3.727483 15.951292 0 3.7061222 16.075817 0 3.7061157 
		15.97071 0 3.9828377 15.328673 0 3.7614651 15.328673 0 3.9828742 14.581543 0 3.7614651 
		14.581543 0 3.9828377 14.830609 0 3.7614651 14.830609 0 4.0026479 14.332507 0 3.7614651 
		14.332517 0 3.8721483 14.102263 0 4.1447587 14.207987 0 4.038168 14.29252 0 4.0381832 
		14.166656 0;
	setAttr -s 38 ".vt[0:37]"  3.41562533 2.70000005 0 2.9000001 2.5 0 2.93281293 2.4000001 0
		 2.9000001 0.1 0 3.20000434 1.96875 0 3.064077139 2.42968416 0 3.20000005 0.49062499 0
		 3.2000947 0.42646405 0 2.9000001 0 0 3.79999995 0 0 3.79999995 0.1 0 3.5 2.70000005 0
		 3.49992967 0.44713214 0 3.20000005 1.35000002 0 3.5 1.35000002 0 3.20000005 0.67500001 0
		 3.5 0.67500001 0 3.19848204 0.33750156 0 3.50124693 0.33750057 0 3.3499999 0 0 3.15132999 0.1687506 0
		 3.12501121 0.14279857 0 3.125 0 0 3.5460515 0.16875204 0 3.57500005 0 0 3.57501173 0.14242697 0
		 3.20000005 1.012500048 0 3.5 1.012500048 0 3.19995165 2.025000095 0 3.5 2.025000095 0
		 3.20000005 1.6875 0 3.5 1.6875 0 3.17315412 2.3625083 0 3.5 2.36249995 0 3.3499999 2.67454529 0
		 2.9805665 2.53125 0 3.12502098 2.4167006 0 3.125 2.58727264 0;
	setAttr -s 38 ".ed[0:37]"  0 34 0 33 11 0 11 0 0 27 14 0 18 12 0 12 16 0
		 23 18 0 17 20 0 20 21 0 22 19 0 21 3 0 3 8 0 8 22 0 24 9 0 9 10 0 10 25 0 19 24 0
		 25 23 0 15 6 0 6 7 0 7 17 0 16 27 0 26 15 0 13 26 0 31 29 0 14 31 0 30 13 0 28 4 0
		 4 30 0 29 33 0 32 28 0 34 37 0 36 32 0 35 1 0 1 2 0 2 5 0 5 36 0 37 35 0;
	setAttr ".fc[0]" -type "polyFaces" 
		f 38 32 30 27 28 26 23 22 18 19 20 7 8 10 11 12 9 16 13 14 15 17 6 4 5 21 3 25 24 29
		 1 2 0 31 37 33 34 35 36
		mu 0 38 36 32 28 4 30 13 26 15 6 7 17 20 21 3 8 22 19 24 9 10 25 23 18 12 16 27 14 31 29
		 33 11 0 34 37 35 1 2 5;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "ControlSetShape3" -p "ControlSet";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 38 ".uvst[0].uvsp[0:37]" -type "float2" 0.57291692 1 0 0.92592591
		 0.036458891 0.8888889 3.3306691e-016 0.037037037 0.33333334 0.72916669 0.18230793
		 0.89988434 0.33333334 0.18171297 0.33343887 0.15794964 3.3306691e-016 0 1 0 1 0.037037037
		 0.66666669 1 0.66659522 0.1656045 0.33333334 0.5 0.66666669 0.5 0.33333334 0.25 0.66666669
		 0.25 0.3316811 0.125 0.66803724 0.125 0.5 0 0.27925631 0.0625 0.25 0.052893657 0.25
		 0 0.71783233 0.0625 0.75 0 0.75 0.052744735 0.33333334 0.375 0.66666669 0.375 0.3332682
		 0.75 0.66666669 0.75 0.33333334 0.625 0.66666669 0.625 0.30348349 0.875 0.66666669
		 0.875 0.5 0.99057233 0.089518271 0.9375 0.25 0.89505881 0.25 0.95824915;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 38 ".pt[0:37]" -type "float3"  3.0120239 14.083464 0 3.3925123 
		14.231058 0 3.3682976 14.304845 0 3.3925123 16.002029 0 3.1711364 14.623055 0 3.271436 
		14.282947 0 3.171139 15.713776 0 3.1710663 15.761127 0 3.3925123 16.075817 0 2.7283936 
		16.075817 0 2.7283936 16.002029 0 2.9497635 14.083464 0 2.9498193 15.745868 0 3.171139 
		15.079641 0 2.9497635 15.079641 0 3.171139 15.577741 0 2.9497635 15.577741 0 3.172262 
		15.826766 0 2.9488456 15.826764 0 3.0604501 16.075817 0 3.2070487 15.951294 0 3.226474 
		15.970437 0 3.2264802 16.075817 0 2.9157858 15.951292 0 2.8944204 16.075817 0 2.8944156 
		15.97071 0 3.171139 15.328673 0 2.9497635 15.328673 0 3.1711717 14.581543 0 2.9497635 
		14.581543 0 3.171139 14.830609 0 2.9497635 14.830609 0 3.1909466 14.332507 0 2.9497635 
		14.332517 0 3.0604501 14.102263 0 3.3330605 14.207987 0 3.2264678 14.29252 0 3.2264802 
		14.166656 0;
	setAttr -s 38 ".vt[0:37]"  4.51562548 2.70000005 0 4 2.5 0 4.032813072 2.4000001 0
		 4 0.1 0 4.30000401 1.96875 0 4.16407728 2.42968416 0 4.30000019 0.49062499 0 4.3000946 0.42646405 0
		 4 0 0 4.9000001 0 0 4.9000001 0.1 0 4.5999999 2.70000005 0 4.59992981 0.44713214 0
		 4.30000019 1.35000002 0 4.5999999 1.35000002 0 4.30000019 0.67500001 0 4.5999999 0.67500001 0
		 4.29848194 0.33750156 0 4.60124683 0.33750057 0 4.44999981 0 0 4.2513299 0.1687506 0
		 4.22501135 0.14279857 0 4.2249999 0 0 4.64605141 0.16875204 0 4.67500019 0 0 4.67501163 0.14242697 0
		 4.30000019 1.012500048 0 4.5999999 1.012500048 0 4.29995155 2.025000095 0 4.5999999 2.025000095 0
		 4.30000019 1.6875 0 4.5999999 1.6875 0 4.27315426 2.3625083 0 4.5999999 2.36249995 0
		 4.44999981 2.67454529 0 4.080566406 2.53125 0 4.22502089 2.4167006 0 4.2249999 2.58727264 0;
	setAttr -s 38 ".ed[0:37]"  0 34 0 33 11 0 11 0 0 27 14 0 18 12 0 12 16 0
		 23 18 0 17 20 0 20 21 0 22 19 0 21 3 0 3 8 0 8 22 0 24 9 0 9 10 0 10 25 0 19 24 0
		 25 23 0 15 6 0 6 7 0 7 17 0 16 27 0 26 15 0 13 26 0 31 29 0 14 31 0 30 13 0 28 4 0
		 4 30 0 29 33 0 32 28 0 34 37 0 36 32 0 35 1 0 1 2 0 2 5 0 5 36 0 37 35 0;
	setAttr ".fc[0]" -type "polyFaces" 
		f 38 32 30 27 28 26 23 22 18 19 20 7 8 10 11 12 9 16 13 14 15 17 6 4 5 21 3 25 24 29
		 1 2 0 31 37 33 34 35 36
		mu 0 38 36 32 28 4 30 13 26 15 6 7 17 20 21 3 8 22 19 24 9 10 25 23 18 12 16 27 14 31 29
		 33 11 0 34 37 35 1 2 5;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Main" -p "Group";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode mesh -n "Trim_Char_M_1_1Shape" -p "Main";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 106 ".uvst[0].uvsp[0:105]" -type "float2" 0.51428574 0 0.80000001
		 0.84134668 0.6857143 0.03846154 0.71093082 0.03844215 0.6857143 0 1 0 1 0.03846154
		 1 0.96153843 0.88571429 0.22130409 0.97412109 0.03846154 0.88569695 0.20148268 0.88569552
		 0.79915386 1 1 0.79598254 1 0.51517856 0.1712743 0.20535722 1 2.9024402e-016 1 0
		 0.96153843 4.3536604e-016 0.03846154 0.11428571 0.35096154 0.11429345 0.8042559 0.11430699
		 0.24476132 0.019209642 0.038446359 2.9024402e-016 0 0.2857143 0 0.2857143 0.03846154
		 0.17142858 0.84134668 0.26053202 0.038444269 0.48571429 0 0.42857143 0.40293548 0.42857143
		 0.15297212 0.39228359 0.5 0.11428571 0.5 0.17142858 0.5 0.2989389 0.5 0.14285715
		 0 0.11430684 0.25 0.11160795 0.125 0.071428575 0.047979388 0.071428575 0 0.090050921
		 0.0625 0.10714286 0 0.10714286 0.095872261 0.17142858 0.25 0.39232659 0.25 0.25 0
		 0.25 0.038650654 0.17411003 0.125 0.19642857 0 0.19642857 0.060068179 0.19409829
		 0.0625 0.16964285 0 0.17887303 0.09375 0.18303572 0.079776131 0.14285715 1 0.11428571
		 0.75 0.1103262 0.875 0.071428575 1 0.071428575 0.94678819 0.083243072 0.9375 0.10714286
		 0.89226204 0.10714286 1 0.29882041 0.75 0.17142858 0.75 0.20555119 0.75 0.25 0.63101
		 0.25 0.88058728 0.68408155 0.5 0.80000001 0.5 0.88571429 0.5 0.62656343 0.5 0.71428573
		 0.038454186 0.71428573 0 0.59918362 0.25 0.54185385 0.25 0.48574677 0.25 0.5714286
		 0.16826934 0.5714286 0.33728269 0.80000001 0.25 0.88571429 0.25 0.85714287 0 0.79732186
		 0.125 0.78571427 0.076203384 0.78571427 0 0.77592307 0.0625 0.75 0.044588234 0.75
		 0 0.88845217 0.125 0.9285714 0 0.9285714 0.047659993 0.90893823 0.0625 0.89285713
		 0 0.89285713 0.09596993 0.71428573 0.58894265 0.71428573 0.7588914 0.71127295 0.75
		 0.76897943 0.75 0.80000001 0.75 0.88571429 0.75 0.85714287 1 0.88837582 0.875 0.9285714
		 0.95195746 0.9285714 1 0.90997219 0.9375 0.89285713 0.9041912 0.89285713 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 106 ".pt[0:105]" -type "float3"  -9.0575209 16.082825 0 -9.7916441 
		14.476924 0 -9.4979935 16.009426 0 -9.562789 16.009478 0 -9.4979935 16.082825 0 -10.305537 
		16.082825 0 -10.305537 16.009426 0 -10.305537 14.247512 0 -10.011888 15.660413 0 
		-10.23904 16.00943 0 -10.011844 15.698255 0 -10.011842 14.557456 0 -10.305537 14.174098 
		0 -9.7813272 14.174098 0 -9.0598145 15.755908 0 -8.263751 14.174098 0 -7.7360902 
		14.174098 0 -7.7360902 14.247512 0 -7.7360902 16.009426 0 -8.0298061 15.412932 0 
		-8.0297318 14.547715 0 -8.0298109 15.615645 0 -7.7854528 16.009455 0 -7.7360902 16.082825 
		0 -8.4702244 16.082825 0 -8.4702244 16.009426 0 -8.176569 14.476924 0 -8.405509 16.00946 
		0 -8.9841061 16.082825 0 -8.8372812 15.313733 0 -8.8372812 15.790858 0 -8.7440443 
		15.128457 0 -8.0297413 15.128457 0 -8.176569 15.128457 0 -8.5041943 15.128457 0 -8.1031542 
		16.082825 0 -8.0298119 15.605653 0 -8.0228662 15.84424 0 -7.9196196 15.991244 0 -7.9196196 
		16.082825 0 -7.9674687 15.963534 0 -8.0113888 16.082825 0 -8.0113888 15.899836 0 
		-8.176569 15.605653 0 -8.7441549 15.605653 0 -8.3784533 16.082825 0 -8.3784533 16.009064 
		0 -8.1834574 15.84424 0 -8.240798 16.082825 0 -8.240799 15.968181 0 -8.2348194 15.963534 
		0 -8.1719809 16.082825 0 -8.1956911 15.903892 0 -8.2063599 15.930579 0 -8.1031542 
		14.174098 0 -8.0297413 14.65128 0 -8.0195971 14.412684 0 -7.9196196 14.174098 0 -7.9196291 
		14.275655 0 -7.9499807 14.293389 0 -8.0113926 14.379738 0 -8.0113888 14.174098 0 
		-8.5038919 14.65128 0 -8.176569 14.65128 0 -8.2642431 14.65128 0 -8.3784533 14.878403 
		0 -8.3784533 14.402032 0 -9.4937983 15.128457 0 -9.7916441 15.128457 0 -10.011884 
		15.128457 0 -9.3460045 15.128457 0 -9.571413 16.009455 0 -9.571413 16.082825 0 -9.2756567 
		15.605653 0 -9.128355 15.605653 0 -8.9841881 15.605653 0 -9.2043505 15.761649 0 -9.2043505 
		15.439059 0 -9.7916441 15.605653 0 -10.01192 15.605653 0 -9.9384785 16.082825 0 -9.7847691 
		15.84424 0 -9.7549448 15.937379 0 -9.7549486 16.082825 0 -9.7297792 15.963534 0 -9.6631699 
		15.997735 0 -9.6631699 16.082825 0 -10.018933 15.84424 0 -10.122005 16.082825 0 -10.122005 
		15.991871 0 -10.071568 15.963527 0 -10.03024 16.082825 0 -10.030189 15.89967 0 -9.571413 
		14.958695 0 -9.571413 14.634301 0 -9.5636721 14.65128 0 -9.7119493 14.65128 0 -9.7916441 
		14.65128 0 -10.011926 14.65128 0 -9.9384785 14.174098 0 -10.01872 14.41269 0 -10.122006 
		14.265791 0 -10.122005 14.174098 0 -10.07422 14.293389 0 -10.030241 14.356973 0 -10.03024 
		14.174098 0;
	setAttr -s 106 ".vt[0:105]"  1.79999995 2.1570047e-016 0 2.79999995 2.18750143 0
		 2.4000001 0.1 0 2.48825788 0.099937223 0 2.4000001 1.395709e-016 0 3.5 0 0 3.5 0.1 0
		 3.5 2.5 0 3.1000042 0.57539064 0 3.40942383 0.099994227 0 3.099939346 0.52385497 0
		 3.09993434 2.077800035 0 3.5 2.5999999 0 2.78593874 2.5999999 0 1.80312502 0.44531319 0
		 0.7187503 2.5999999 0 5.7176487e-016 2.5999999 0 -4.4408921e-016 2.5 0 1.0796919e-015 0.1 0
		 0.40008777 0.91250002 0 0.39998963 2.091065407 0 0.40009212 0.63637942 0 0.067233749 0.099960521 0
		 5.7176487e-016 4.4408921e-016 0 1 3.1720659e-016 0 1 0.1 0 0.60000002 2.18750143 0
		 0.91186202 0.099954769 0 1.70000005 2.2838875e-016 0 1.5 1.047632217 0 1.5 0.39772752 0
		 1.37299252 1.29999995 0 0.40000001 1.29999995 0 0.60000002 1.29999995 0 1.046286106 1.29999995 0
		 0.5 0 0 0.40009654 0.64999998 0 0.39063212 0.32499942 0 0.24999979 0.12474695 0 0.25 0 0
		 0.3151798 0.16249809 0 0.375 0 0 0.37499976 0.24926795 0 0.59999996 0.64999998 0
		 1.37314308 0.64999998 0 0.875 0 0 0.87499994 0.10048983 0 0.60938424 0.3249999 0
		 0.6875 0 0 0.68750149 0.15617931 0 0.67934227 0.16249783 0 0.59375 0 0 0.62604916 0.24374799 0
		 0.64057416 0.20739113 0 0.5 2.5999999 0 0.40000001 1.95000005 0 0.38617194 2.27500582 0
		 0.25 2.5999999 0 0.25001207 2.46167445 0 0.29135299 2.4375031 0 0.37500358 2.31988239 0
		 0.375 2.5999999 0 1.045871377 1.95000005 0 0.60000002 1.95000005 0 0.71942919 1.95000005 0
		 0.875 1.64062595 0 0.875 2.28952694 0 2.39428544 1.29999995 0 2.79999995 1.29999995 0
		 3.099999905 1.29999995 0 2.19297194 1.29999995 0 2.5 0.099963337 0 2.5 0 0 2.097142696 0.64999998 0
		 1.89648855 0.64999998 0 1.70011365 0.64999998 0 2 0.43750027 0 2 0.87693501 0 2.79999995 0.64999998 0
		 3.10004926 0.64999998 0 3 0 0 2.7906251 0.3250002 0 2.74999619 0.19813171 0 2.75 0 0
		 2.71573091 0.16249982 0 2.62500024 0.1159283 0 2.625 0 0 3.10959601 0.32500181 0
		 3.25 0 0 3.24999976 0.12391534 0 3.18129349 0.16251211 0 3.125 0 0 3.12492418 0.24949926 0
		 2.5 1.53125095 0 2.5 1.97311771 0 2.48945546 1.95000005 0 2.69142795 1.95000005 0
		 2.79999995 1.95000005 0 3.1000545 1.95000005 0 3 2.5999999 0 3.1093154 2.2750001 0
		 3.25000143 2.47508597 0 3.25 2.5999999 0 3.18490314 2.43749952 0 3.12500215 2.35089636 0
		 3.125 2.5999999 0;
	setAttr -s 106 ".ed[0:105]"  101 7 0 7 12 0 12 102 0 62 66 0 29 31 0 34 44 0
		 32 19 0 19 36 0 36 21 0 21 37 0 37 42 0 38 22 0 22 18 0 18 23 0 23 39 0 41 35 0 40 38 0
		 39 41 0 42 40 0 45 24 0 24 25 0 25 27 0 27 46 0 47 43 0 48 45 0 46 49 0 52 47 0 51 48 0
		 49 50 0 35 51 0 50 53 0 53 52 0 43 33 0 54 61 0 55 32 0 56 20 0 20 55 0 57 16 0 16 17 0
		 17 58 0 60 56 0 59 60 0 61 57 0 58 59 0 31 62 0 65 34 0 33 63 0 66 15 0 15 54 0 63 26 0
		 26 64 0 79 69 0 73 67 0 70 77 0 76 73 0 0 76 0 74 14 0 14 75 0 30 28 0 28 0 0 77 74 0
		 87 10 0 10 8 0 8 79 0 78 81 0 81 82 0 83 80 0 82 84 0 84 85 0 86 83 0 85 71 0 72 86 0
		 88 5 0 5 6 0 6 9 0 9 89 0 90 92 0 91 88 0 89 90 0 80 91 0 92 87 0 68 78 0 94 95 0
		 67 93 0 95 70 0 69 98 0 93 96 0 96 1 0 1 97 0 99 13 0 13 94 0 98 11 0 11 100 0 103 101 0
		 102 105 0 104 103 0 100 104 0 105 99 0 44 30 0 64 65 0 71 3 0 3 2 0 2 4 0 4 72 0
		 75 29 0 97 68 0;
	setAttr ".fc[0]" -type "polyFaces" 
		f 106 93 0 1 2 94 97 89 90 82 84 53 60 56 57 104 4 44 3 47 48 33 42 37 38 39 43 41 40
		 35 36 34 6 7 8 9 10 18 16 11 12 13 14 17 15 29 27 24 19 20 21 22 25 28 30 31 26 23
		 32 46 49 50 99 45 5 98 58 59 55 54 52 83 86 87 88 105 81 64 65 67 68 70 100 101 102
		 103 71 69 66 79 77 72 73 74 75 78 76 80 61 62 63 51 85 91 92 96 95
		mu 0 106 103 101 7 12 102 105 99 13 94 95 70 77 74 14 75 29 31 62 66 15 54 61 57 16 17
		 58 59 60 56 20 55 32 19 36 21 37 42 40 38 22 18 23 39 41 35 51 48 45 24 25 27 46
		 49 50 53 52 47 43 33 63 26 64 65 34 44 30 28 0 76 73 67 93 96 1 97 68 78 81 82 84
		 85 71 3 2 4 72 86 83 80 91 88 5 6 9 89 90 92 87 10 8 79 69 98 11 100 104;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "Trim_Char_a_1_1Shape" -p "Main";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 94 ".uvst[0].uvsp[0:93]" -type "float2" 1 0.12763998 1 0.16670005
		 0.6250003 0.66667211 0.062485006 0.76502591 0.81250018 0.4901844 0.87138605 0.11115569
		 0.81248695 0.38550752 0.81250018 0.65311295 0.45463163 1 0.24709129 0.82838386 0.15555412
		 0.66667312 0.25000027 0.76618832 0.41723782 0.94443363 0.62501502 0.69164491 0.6250003
		 0.15020852 0 0.25125638 0.26789811 0 0.75116789 3.3922934e-005 0.6250003 0.61111963
		 0.6250003 0.2222525 0.36895344 0.11114705 0.18750066 0.2969014 0.81250018 0.5 0.19085062
		 0.5 0.6250003 0.5 0.34339646 0.5 0.40000001 0.022188867 0.40000001 0.11365978 0.030520435
		 0.12502503 0.30037338 0.12502503 0.2 0.006461822 0.082572483 0.062512517 0.1 0.04896985
		 0.014518846 0.33333334 0.19125667 0.33333334 0.2 0.22696418 0.2 0.36212078 0.072846822
		 0.41666666 0.1 0.44058615 0.23308121 0.41666666 0.30000001 0.47415027 0.92374057
		 0.12502503 0.83463579 0.12502503 0.58465391 0.12502503 0.62614489 0.12502503 0.99730599
		 0.12502503 0.44578329 0.12502503 0.80000001 0.0054140342 0.64054489 0.062512517 0.69999999
		 0.0082637258 0.66236508 0.031256258 0.64999998 0.045559593 0.92256337 0.062512517
		 0.89999998 0.047607217 0.89999998 0.11525737 0.85000002 0.11489317 0.60000002 0.13456504
		 0.60000002 0.20512357 0.81250006 0.33333334 0.6250003 0.33333334 0.40000001 0.99827445
		 0.40000001 0.94398171 0.40000001 0.590253 0.40000001 0.52753657 0.2 0.50491577 0.078912057
		 0.83333331 0.24727958 0.83333331 0.2 0.67574179 0.067427501 0.72916871 0.1 0.68313515
		 0.24513426 0.72916871 0.20275269 0.67708641 0.23277922 0.70312756 0.22499999 0.69363064
		 0.2 0.94790494 0.30508691 0.91666669 0.30000001 0.91326916 0.26143911 0.875 0.25
		 0.84959972 0.30000001 0.98422915 0.81250018 0.62500405 0.49820429 0.62500405 0.60000002
		 0.60244417 0.60000002 0.98613507 0.60000002 0.85175425 0.60000002 0.65867186 0.53994894
		 0.91666669 0.5 0.99884522 0.5 0.93356913 0.79814404 0.83333331 0.60739082 0.83333331
		 0.80000001 0.82616585 0.74712396 0.91666669 0.69999999 0.95120138;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 94 ".pt[0:93]" -type "float3"  -11.553555 15.914203 0 -11.553555 
		15.862602 0 -11.113082 15.201875 0 -10.452302 15.071916 0 -11.333318 15.435098 0 
		-11.402486 15.935986 0 -11.333304 15.573442 0 -11.333345 15.219783 0 -10.912962 14.761353 
		0 -10.66919 14.988185 0 -10.561667 15.201873 0 -10.672607 15.070361 0 -10.869039 
		14.834823 0 -11.113143 15.168876 0 -11.113082 15.884401 0 -10.378954 15.750836 0 
		-10.69363 16.082899 0 -11.261278 16.082851 0 -11.113082 15.27529 0 -11.113082 15.789186 
		0 -10.812323 15.935998 0 -10.599172 15.690518 0 -11.333318 15.422135 0 -10.603133 
		15.422143 0 -11.113082 15.422135 0 -10.782304 15.42213 0 -10.848788 16.05357 0 -10.84879 
		15.932681 0 -10.4148 15.917667 0 -10.731774 15.917658 0 -10.61387 16.074347 0 -10.475929 
		16.000286 0 -10.496405 16.018179 0 -10.396003 15.642388 0 -10.603628 15.642394 0 
		-10.61387 15.782941 0 -10.61389 15.604342 0 -10.464521 15.532252 0 -10.496416 15.500654 
		0 -10.652726 15.532248 0 -10.731317 15.456266 0 -11.463987 15.917681 0 -11.359321 
		15.917669 0 -11.065686 15.917662 0 -11.114418 15.917671 0 -11.550392 15.917671 0 
		-10.902572 15.917671 0 -11.318633 16.075716 0 -11.131353 16.000277 0 -11.201181 16.071939 
		0 -11.156945 16.041595 0 -11.142462 16.022673 0 -11.462599 16.000288 0 -11.436097 
		16.019972 0 -11.436094 15.93056 0 -11.377362 15.931067 0 -11.083713 15.905045 0 -11.083714 
		15.811824 0 -11.333332 15.642388 0 -11.113082 15.642388 0 -10.848788 14.763668 0 
		-10.848792 14.835441 0 -10.848786 15.302863 0 -10.8488 15.385761 0 -10.613875 15.415654 
		0 -10.471645 14.98164 0 -10.669405 14.98164 0 -10.61387 15.189883 0 -10.458152 15.119277 
		0 -10.496403 15.180124 0 -10.666842 15.119266 0 -10.617104 15.188119 0 -10.652394 
		15.15371 0 -10.643294 15.166291 0 -10.613878 14.830239 0 -10.737318 14.871528 0 -10.731341 
		14.876002 0 -10.686039 14.926568 0 -10.672591 14.960126 0 -10.731334 14.78222 0 -11.333342 
		15.256934 0 -10.964153 15.256958 0 -11.083714 15.286748 0 -11.083714 14.779704 0 
		-11.083714 14.957284 0 -11.083716 15.212451 0 -11.013176 14.871511 0 -10.96625 14.762935 
		0 -10.966252 14.849174 0 -11.31645 14.981641 0 -11.092396 14.98164 0 -11.318624 14.991103 
		0 -11.256525 14.871511 0 -11.20116 14.825897 0;
	setAttr -s 94 ".vt[0:93]"  5.19999981 0.22968796 0 5.19999981 0.30000001 0
		 4.5999999 1.20000005 0 3.6999197 1.37704659 0 4.90000057 0.88230437 0 4.9942174 0.20001523 0
		 4.89997959 0.69387549 0 4.90003443 1.17559218 0 4.32740974 1.80007041 0 3.99534464 1.49109745 0
		 3.84888554 1.2000016 0 4.000008106232 1.3791393 0 4.26757956 1.69998717 0 4.60008526 1.24495351 0
		 4.5999999 0.27031356 0 3.59999895 0.45220992 0 4.028635979 -7.4101219e-005 0 4.80186844 -2.6191281e-005 0
		 4.5999999 1.10000002 0 4.5999999 0.40000001 0 4.19032478 0.2000034 0 3.89997411 0.53437561 0
		 4.90000153 0.89997345 0 3.90536714 0.89996183 0 4.5999999 0.89997345 0 4.14942884 0.89998072 0
		 4.23999977 0.03986438 0 4.24000025 0.20451602 0 3.648839 0.22498456 0 4.080603123 0.22499439 0
		 3.91999888 0.011555182 0 3.7321105 0.11244751 0 3.75999761 0.0880723 0 3.62322736 0.59995723 0
		 3.90604329 0.59995031 0 3.91999865 0.40848142 0 3.92001915 0.65176982 0 3.71655369 0.74996507 0
		 3.76000905 0.79301119 0 3.97292399 0.74996871 0 4.079976559 0.85347152 0 5.077992916 0.22496594 0
		 4.93541956 0.22498313 0 4.53543901 0.22499019 0 4.60182142 0.22498007 0 5.19568968 0.22498083 0
		 4.31325245 0.2249808 0 4.87999821 0.0096756574 0 4.62489414 0.11246109 0 4.7200079 0.014819391 0
		 4.65975571 0.056161363 0 4.64002228 0.08194901 0 5.076106548 0.11244539 0 5.040001869 0.085617751 0
		 5.039995193 0.20741214 0 4.95999527 0.20673265 0 4.55999613 0.24215849 0 4.55999851 0.36916754 0
		 4.90001869 0.59995669 0 4.5999999 0.59995669 0 4.23999929 1.79691911 0 4.24000216 1.69913888 0
		 4.23999643 1.062444925 0 4.24001169 0.94951642 0 3.92000556 0.90881133 0 3.72625828 1.50000691 0
		 3.99564624 1.50000703 0 3.91999912 1.21632624 0 3.70788169 1.31249988 0 3.75999427 1.22962952 0
		 3.99214911 1.31251717 0 3.92440319 1.21874678 0 3.9724772 1.26560402 0 3.96007538 1.24846351 0
		 3.92000771 1.70623291 0 4.088154793 1.64999223 0 4.080007076 1.64388955 0 4.018301964 1.5750109 0
		 3.99999213 1.52928972 0 4.07999897 1.77163506 0 4.90002918 1.12499332 0 4.39713717 1.12496543 0
		 4.55999947 1.084383726 0 4.55999947 1.77506554 0 4.55999947 1.53316641 0 4.5600009 1.1855948 0
		 4.46391773 1.65001535 0 4.39999723 1.79791141 0 4.39999962 1.68044162 0 4.87702799 1.50000644 0
		 4.5718255 1.50000715 0 4.87998438 1.48710155 0 4.79539824 1.65001535 0 4.71998024 1.71214962 0;
	setAttr -s 94 ".ed[0:93]"  92 93 0 58 6 0 6 4 0 4 22 0 40 25 0 30 16 0
		 16 26 0 27 20 0 20 29 0 32 30 0 31 32 0 28 31 0 29 35 0 33 15 0 15 28 0 35 21 0 21 34 0
		 23 38 0 34 36 0 37 33 0 38 37 0 36 39 0 39 40 0 41 54 0 52 45 0 26 43 0 46 27 0 49 17 0
		 17 47 0 51 50 0 50 49 0 48 51 0 44 48 0 53 52 0 47 53 0 54 5 0 5 55 0 55 42 0 43 56 0
		 57 46 0 0 1 0 1 41 0 45 0 0 56 14 0 14 44 0 59 19 0 19 57 0 24 59 0 60 79 0 75 61 0
		 62 64 0 25 63 0 64 23 0 70 11 0 11 9 0 9 66 0 69 10 0 10 67 0 68 69 0 65 3 0 3 68 0
		 72 70 0 67 71 0 73 72 0 71 73 0 74 65 0 76 75 0 77 76 0 78 77 0 66 78 0 79 74 0 22 80 0
		 81 62 0 63 82 0 82 18 0 18 24 0 83 87 0 88 86 0 85 81 0 86 84 0 87 8 0 8 60 0 61 12 0
		 12 88 0 80 7 0 7 91 0 91 89 0 90 13 0 13 2 0 2 85 0 89 92 0 84 90 0 93 83 0 42 58 0;
	setAttr ".fc[0]" -type "polyFaces" 
		f 76 87 88 89 78 72 50 52 17 20 19 13 14 11 10 9 5 6 25 38 43 44 32 31 29 30 27 28 34
		 33 24 42 40 41 23 35 36 37 93 1 2 3 71 84 85 86 90 0 92 76 80 81 48 70 65 59 60 58
		 56 57 62 64 63 61 53 54 55 69 68 67 66 49 82 83 77 79 91
		mu 0 76 90 13 2 85 81 62 64 23 38 37 33 15 28 31 32 30 16 26 43 56 14 44 48 51 50 49 17
		 47 53 52 45 0 1 41 54 5 55 42 58 6 4 22 80 7 91 89 92 93 83 87 8 60 79 74 65 3 68
		 69 10 67 71 73 72 70 11 9 66 78 77 76 75 61 12 88 86 84
		h 18 74 75 47 45 46 39 26 7 8 12 15 16 18 21 22 4 51 73
		mu 0 18 82 18 24 59 19 57 46 27 20 29 35 21 34 36 39 40 25 63;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "Trim_Char_i_1_1Shape" -p "Main";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 53 ".uvst[0].uvsp[0:52]" -type "float2" 0.57465309 1 0 0.8888889
		 0.029514339 0.83333331 3.3306691e-016 0.055555556 0.33338007 0.59936309 0.17767929
		 0.84896153 3.3306691e-016 0 1 0 1 0.055555556 0.66666669 1 0.32560277 0.75 0.66666669
		 0.75 0.33333334 0.375 0.66666669 0.375 0.33171871 0.1875 0.6681779 0.1875 0.5 0 0.27937901
		 0.09375 0.25 0.079027109 0.25 0 0.71964771 0.09375 0.75 0 0.75 0.079536393 0.33333361
		 0.5625 0.66666669 0.5625 0.25141072 0.9375 0.66666669 0.9375 0.023980401 0.84375
		 0.098232746 0.84375 0.24049591 0.84375 0.25 0.84160477 0.31233871 0.796875 0.29349875
		 0.8203125 0.25 0.93722725 0.5 0.9855656 0.50000083 1.5 0.50000083 1.33333337 0.33333334
		 1.4166671 0.66666669 1.4166671 0.37500063 1.47203124 0.37500063 1.36220908 0.66546583
		 1.40625 0.38025624 1.359375 0.62056774 1.359375 0.53125048 1.33467817 0.45798331
		 1.3359375 0.45312557 1.33661091 0.65062231 1.453125 0.53125048 1.4986788 0.38370377
		 1.4765625 0.45312557 1.49690962 0.61629713 1.4765625 0.60937542 1.47976792;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 53 ".pt[0:52]" -type "float3"  -12.006647 14.761405 0 -11.626969 
		14.908219 0 -11.646469 14.981643 0 -11.626969 16.009426 0 -11.84723 15.290824 0 -11.744361 
		14.960948 0 -11.626969 16.082825 0 -12.28768 16.082825 0 -12.28768 16.009426 0 -12.067443 
		14.761405 0 -11.842099 15.091752 0 -12.067443 15.091752 0 -11.847206 15.587305 0 
		-12.067443 15.587305 0 -11.846135 15.835063 0 -12.068443 15.835063 0 -11.957323 16.082825 
		0 -11.81156 15.958959 0 -11.792149 15.978412 0 -11.792149 16.082825 0 -12.102447 
		15.958959 0 -12.122505 16.082825 0 -12.122503 15.977735 0 -11.847215 15.339524 0 
		-12.067443 15.339524 0 -11.793077 14.843986 0 -12.067443 14.843986 0 -11.642813 14.967877 
		0 -11.691875 14.967875 0 -11.785856 14.9679 0 -11.792126 14.970754 0 -11.833321 15.029822 
		0 -11.820883 14.998849 0 -11.792149 14.844361 0 -11.957323 14.780478 0 -11.957324 
		14.100688 0 -11.957324 14.320928 0 -11.847206 14.210795 0 -12.067443 14.210795 0 
		-11.874739 14.137633 0 -11.874737 14.282762 0 -12.066648 14.22458 0 -11.878213 14.286521 
		0 -12.036984 14.286523 0 -11.977968 14.319156 0 -11.929561 14.317491 0 -11.926354 
		14.316598 0 -12.056844 14.162629 0 -11.977968 14.102422 0 -11.880484 14.131661 0 
		-11.926354 14.104781 0 -12.03416 14.131661 0 -12.029593 14.127425 0;
	setAttr -s 53 ".vt[0:52]"  5.81718779 1.79999995 0 5.30000019 1.60000002 0
		 5.32656288 1.5 0 5.30000019 0.1 0 5.60003853 1.078853488 0 5.45991135 1.52817452 0
		 5.30000019 0 0 6.19999981 0 0 6.19999981 0.1 0 5.9000001 1.79999995 0 5.59304953 1.3500005 0
		 5.9000001 1.35000002 0 5.5999999 0.67500001 0 5.9000001 0.67500001 0 5.59854317 0.33750018 0
		 5.90136528 0.33750024 0 5.75 0 0 5.55144119 0.16875 0 5.5250001 0.14224848 0 5.5250001 0 0
		 5.94768286 0.16874999 0 5.9749999 0 0 5.97499847 0.14316343 0 5.60000801 1.012500048 0
		 5.9000001 1.012500048 0 5.52626944 1.6875 0 5.9000001 1.6875 0 5.32158232 1.51874995 0
		 5.38840914 1.51875198 0 5.51643085 1.51871073 0 5.52497339 1.51483631 0 5.58108473 1.43436956 0
		 5.5641489 1.4765625 0 5.5250001 1.68700898 0 5.75 1.77401805 0 5.75000095 2.70000005 0
		 5.75000095 2.39999962 0 5.5999999 2.55000067 0 5.9000001 2.55000067 0 5.63750076 2.6496563 0
		 5.63750029 2.4519763 0 5.89891815 2.53125024 0 5.64223051 2.4468751 0 5.85851288 2.44687319 0
		 5.77812624 2.40241694 0 5.71218491 2.40468764 0 5.70781326 2.40589976 0 5.88555908 2.61562467 0
		 5.77812529 2.69762182 0 5.64533329 2.6578126 0 5.70781279 2.6944375 0 5.85466719 2.6578126 0
		 5.84843779 2.66358232 0;
	setAttr -s 53 ".ed[0:52]"  0 34 0 26 9 0 9 0 0 24 11 0 15 13 0 20 15 0
		 14 17 0 17 18 0 19 16 0 18 3 0 3 6 0 6 19 0 21 7 0 7 8 0 8 22 0 16 21 0 22 20 0 12 14 0
		 13 24 0 23 12 0 10 4 0 4 23 0 11 26 0 25 33 0 27 2 0 2 28 0 31 10 0 32 31 0 30 32 0
		 33 1 0 1 27 0 28 5 0 5 29 0 34 25 0 29 30 0 51 52 0 39 37 0 37 40 0 43 41 0 44 43 0
		 46 45 0 45 36 0 36 44 0 42 46 0 40 42 0 41 38 0 38 47 0 35 50 0 48 35 0 49 39 0 50 49 0
		 47 51 0 52 48 0;
	setAttr -s 2 ".fc[0:1]" -type "polyFaces" 
		f 35 28 27 26 20 21 19 17 6 7 9 10 11 8 15 12 13 14 16 5 4 18 3 22 1 2 0 33 23 29 30
		 24 25 31 32 34
		mu 0 35 30 32 31 10 4 23 12 14 17 18 3 6 19 16 21 7 8 22 20 15 13 24 11 26 9 0 34 25 33
		 1 27 2 28 5 29
		f 18 48 47 50 49 36 37 44 43 40 41 42 39 38 45 46 51 35 52
		mu 0 18 48 35 50 49 39 37 40 42 46 45 36 44 43 41 38 47 51 52;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "Trim_Char_n_1_1Shape" -p "Main";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 78 ".uvst[0].uvsp[0:77]" -type "float2" 0.30000001 0.99997783
		 0.25937515 0.99997783 0 0.88886917 0.014843976 0.83331484 0 0.055554323 0.15000001
		 0.25758952 0.080093145 0.84895849 0.15004699 0.23263463 0.015799697 0.055512328 0
		 0 0.44999999 0 0.44999999 0.055554323 0.30000001 0.74824768 0.29997286 0.23563033
		 0.55000001 0.055554323 0.69999999 0.59174305 0.5496732 0.88887918 0.70003611 0.619865
		 0.70003659 0.24403071 0.56052941 0.055545885 0.55000001 0 1 0 1 0.055554323 0.30000001
		 0.81161445 0.85000002 0.57214463 0.84999615 0.22683147 0.85001069 0.61492318 0.61126429
		 1 0.5 0.88330084 0.5 0.97472411 0.15000001 0.40000001 0.30000001 0.40000001 0.16666667
		 0 0.14959283 0.2 0.12971176 0.1 0.083333336 0.063746013 0.083333336 0 0.30018112
		 0.2 0.33333334 0 0.33333334 0.079886191 0.31661913 0.1 0.25 0 0.15000001 0.60000002
		 0.30000001 0.60000002 0.16666667 0.96026427 0.14033897 0.80000001 0.025984121 0.89999998
		 0.083333336 0.84890425 0.125 0.83167994 0.083333336 0.92456669 0.35098082 0.80000001
		 0.33333334 0.78343982 0.33333334 0.84844023 0.69999999 0.40000001 0.85000002 0.40000001
		 0.66666669 0.079961978 0.66666669 0 0.6999138 0.2 0.85027349 0.2 0.83333331 0 0.68322557
		 0.1 0.75 0 0.86889297 0.1 0.91666669 0 0.91666669 0.063667938 0.7000075 0.60000002
		 0.85000771 0.60000002 0.66666669 0.82533902 0.66666669 0.99383199 0.58333331 0.8859148
		 0.64949584 0.85000002 0.625 0.87034756 0.58333331 0.9984411 0.67787558 0.80000001
		 0.83640367 0.80000001 0.83333331 0.81263918 0.79505104 0.89999998 0.75 0.95317161;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 78 ".pt[0:77]" -type "float3"  -12.801568 14.761405 0 -12.741925 
		14.761405 0 -12.361094 14.908219 0 -12.382883 14.981643 0 -12.361094 16.009426 0 
		-12.581335 15.742425 0 -12.478691 14.960965 0 -12.581404 15.775405 0 -12.384291 16.009487 
		0 -12.361094 16.082825 0 -13.021805 16.082825 0 -13.021805 16.009426 0 -12.801568 
		15.09405 0 -12.801526 15.771449 0 -13.168633 16.009426 0 -13.388902 15.300872 0 -13.16815 
		14.908183 0 -13.388923 15.263714 0 -13.388925 15.760345 0 -13.184088 16.009436 0 
		-13.168633 16.082825 0 -13.829342 16.082825 0 -13.829342 16.009426 0 -12.801568 15.010312 
		0 -13.60911 15.326766 0 -13.6091 15.783082 0 -13.60911 15.270234 0 -13.258584 14.761378 
		0 -13.095222 14.915593 0 -13.095215 14.794763 0 -12.581327 15.554242 0 -12.801568 
		15.554242 0 -12.605802 16.082825 0 -12.580735 15.818545 0 -12.551538 15.950681 0 
		-12.483447 15.99861 0 -12.483445 16.082825 0 -12.801843 15.818545 0 -12.850504 16.082825 
		0 -12.850516 15.977246 0 -12.825972 15.950677 0 -12.728159 16.082825 0 -12.581328 
		15.289964 0 -12.801568 15.289964 0 -12.605802 14.813879 0 -12.567164 15.025661 0 
		-12.399242 14.893525 0 -12.483445 14.961041 0 -12.544624 14.983802 0 -12.483445 14.861056 
		0 -12.876421 15.025661 0 -12.850506 15.04754 0 -12.850508 14.961659 0 -13.388864 
		15.554242 0 -13.609108 15.554242 0 -13.33993 15.977166 0 -13.33993 16.082825 0 -13.388737 
		15.818545 0 -13.609515 15.818545 0 -13.584632 16.082825 0 -13.364235 15.950681 0 
		-13.462282 16.082825 0 -13.636842 15.950683 0 -13.70699 16.082825 0 -13.706988 15.998704 
		0 -13.388907 15.289964 0 -13.609112 15.289964 0 -13.339931 14.992177 0 -13.33993 
		14.769531 0 -13.217572 14.912137 0 -13.314702 14.959585 0 -13.278749 14.932706 0 
		-13.217572 14.763469 0 -13.356402 15.025659 0 -13.589142 15.025661 0 -13.58466 15.008952 
		0 -13.52843 14.893523 0 -13.462257 14.823281 0;
	setAttr -s 78 ".vt[0:77]"  6.9000001 1.79999995 0 6.81875038 1.79999995 0
		 6.30000019 1.60000002 0 6.32968807 1.5 0 6.30000019 0.1 0 6.60000753 0.46367142 0
		 6.46018648 1.52815187 0 6.60009909 0.41875163 0 6.33159924 0.099928133 0 6.30000019 0 0
		 7.19999981 0 0 7.19999981 0.1 0 6.9000001 1.34687567 0 6.89994192 0.42414403 0 7.4000001 0.1 0
		 7.70004797 1.065161109 0 7.39934635 1.60004652 0 7.70007181 1.11578178 0 7.70007372 0.43926504 0
		 7.42105865 0.09998551 0 7.4000001 0 0 8.30000019 0 0 8.30000019 0.1 0 6.9000001 1.46093845 0
		 8.000010490417 1.029883146 0 7.99999142 0.4083057 0 8.000005722046 1.10688627 0 7.52252865 1.80004203 0
		 7.30000067 1.58997262 0 7.29999447 1.75455654 0 6.5999999 0.72001594 0 6.9000001 0.72001594 0
		 6.63333321 -8.223874e-017 0 6.59918499 0.360008 0 6.55942345 0.18000406 0 6.46666813 0.11473984 0
		 6.4666667 -4.111937e-017 0 6.90037251 0.36000818 0 6.9666667 -1.6447748e-016 0 6.96667719 0.14381117 0
		 6.93324661 0.18000975 0 6.80000019 -1.2335812e-016 0 6.60000086 1.080024004 0 6.9000001 1.080024004 0
		 6.63333321 1.72851396 0 6.58070898 1.4400419 0 6.35196829 1.62003589 0 6.46666622 1.52805161 0
		 6.55000019 1.49705708 0 6.4666667 1.66425705 0 7.0019621849 1.44003105 0 6.96666861 1.41022098 0
		 6.96667004 1.52722251 0 7.69999409 0.72001594 0 8 0.72001594 0 7.63333368 0.14393438 0
		 7.63333321 -2.220446e-016 0 7.69982243 0.36000803 0 8.00055980682 0.36000833 0 7.9666667 -2.220446e-016 0
		 7.66644859 0.1800056 0 7.80000019 -2.220446e-016 0 8.037780762 0.18000057 0 8.13333321 -2.220446e-016 0
		 8.1333313 0.11459819 0 7.70005369 1.080023885 0 8.000012397766 1.080024004 0 7.63333893 1.48564649 0
		 7.63333368 1.78893971 0 7.46666718 1.59468472 0 7.59897661 1.53001916 0 7.54999781 1.56665599 0
		 7.46667099 1.7971915 0 7.65577888 1.44004309 0 7.97280788 1.44003212 0 7.96669722 1.46279204 0
		 7.89010525 1.62003791 0 7.79996729 1.71570325 0;
	setAttr -s 78 ".ed[0:77]"  74 75 0 50 28 0 29 52 0 37 13 0 13 31 0 30 5 0
		 5 7 0 7 33 0 33 34 0 34 35 0 36 32 0 35 8 0 8 4 0 4 9 0 9 36 0 38 10 0 10 11 0 11 39 0
		 40 37 0 41 38 0 39 40 0 32 41 0 31 43 0 42 30 0 44 49 0 45 42 0 46 2 0 2 3 0 3 6 0
		 6 47 0 48 45 0 47 48 0 49 46 0 51 50 0 43 12 0 12 51 0 0 1 0 1 44 0 52 23 0 23 0 0
		 58 25 0 25 54 0 55 19 0 19 14 0 14 20 0 20 56 0 62 58 0 61 59 0 60 55 0 56 61 0 57 60 0
		 63 21 0 21 22 0 22 64 0 59 63 0 64 62 0 53 18 0 18 57 0 54 24 0 24 66 0 65 15 0 15 53 0
		 68 27 0 27 72 0 71 70 0 28 16 0 16 69 0 70 67 0 69 71 0 72 29 0 66 26 0 26 74 0 73 17 0
		 17 65 0 76 77 0 75 76 0 67 73 0 77 68 0;
	setAttr ".fc[0]" -type "polyFaces" 
		f 78 74 77 62 63 69 2 38 39 36 37 24 32 26 27 28 29 31 30 25 23 5 6 7 8 9 11 12 13 14
		 10 21 19 15 16 17 20 18 3 4 22 34 35 33 1 65 66 68 64 67 76 72 73 60 61 56 57 50
		 48 42 43 44 45 49 47 54 51 52 53 55 46 40 41 58 59 70 71 0 75
		mu 0 78 76 77 68 27 72 29 52 23 0 1 44 49 46 2 3 6 47 48 45 42 30 5 7 33 34 35 8 4 9 36
		 32 41 38 10 11 39 40 37 13 31 43 12 51 50 28 16 69 71 70 67 73 17 65 15 53 18 57
		 60 55 19 14 20 56 61 59 63 21 22 64 62 58 25 54 24 66 26 74 75;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "ControlSet1Shape" -p "Main";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0 0 1 0 0 1 1 1 0.5
		 0 1 0.5 0.5 1 0 0.5 0.75 0.25 0.75 0.75 0.25 0.75 0.25 0.25 0.75 0 1 0.25 0.75 0.5
		 0.5 0.25 1 0.75 0.75 1 0.5 0.75 0.25 1 0 0.75 0.25 0.5 0 0.25 0.25 0;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".pt[0:23]" -type "float3"  -14.158927 -0.067719787 0 
		-13.116146 -0.067719787 0 -14.158927 0.053728424 0 -13.116146 0.053728424 0 -13.637531 
		-0.067719787 0 -14.158927 -0.0069989921 0 -13.116146 -0.0069989921 0 -13.637531 0.053728424 
		0 -13.898228 -0.067719787 0 -13.376843 -0.067719787 0 -14.158927 -0.037364192 0 -14.158927 
		0.023360997 0 -13.116146 -0.037364192 0 -13.116146 0.023360997 0 -13.898228 0.053728424 
		0 -13.376843 0.053728424 0 -13.637531 -0.24564399 0 -12.810176 -0.0069989921 0 -13.637531 
		0.23164016 0 -14.46489 -0.0069989921 0 -12.810176 -0.24564399 0 -12.810176 0.23164016 
		0 -14.46489 0.23164016 0 -14.46489 -0.24564399 0;
	setAttr -s 24 ".vt[0:23]"  6.24173403 16.023008347 0 7.78043699 16.023008347 0
		 6.24173403 16.85037613 0 7.78043699 16.85037613 0 7.01108551 16.023008347 0 6.24173403 16.43669128 0
		 7.78043699 16.43669128 0 7.01108551 16.85037613 0 6.62640953 16.023008347 0 7.39576149 16.023008347 0
		 6.24173403 16.22985077 0 6.24173403 16.64353371 0 7.78043699 16.22985077 0 7.78043699 16.64353371 0
		 6.62640953 16.85037613 0 7.39576149 16.85037613 0 7.01108551 16.22985077 0 7.39576149 16.43669128 0
		 7.01108551 16.64353371 0 6.62640953 16.43669128 0 7.39576149 16.22985077 0 7.39576149 16.64353371 0
		 6.62640953 16.64353371 0 6.62640953 16.22985077 0;
	setAttr -s 24 ".ed[0:23]"  0 8 0 8 4 0 4 9 0 9 1 0 0 10 0 10 5 0 5 11 0
		 11 2 0 1 12 0 12 6 0 6 13 0 13 3 0 2 14 0 14 7 0 7 15 0 15 3 0 20 17 0 20 16 0 21 18 0
		 21 17 0 22 19 0 22 18 0 23 16 0 23 19 0;
	setAttr ".fc[0]" -type "polyFaces" 
		f 16 -5 0 1 2 3 8 9 10 11 -16 -15 -14 -13 -8 -7 -6
		mu 0 16 22 0 23 4 12 1 13 5 16 3 17 6 19 2 20 7
		h 8 23 -21 21 -19 19 -17 17 -23
		mu 0 8 11 21 10 18 9 14 8 15;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "cam" -p "Group";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -5.183537820107408 7.6908552733754645 3.4613795593290941 ;
createNode camera -n "camShape" -p "cam";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 3.4613795593290941;
	setAttr ".ow" 50.542299522987207;
	setAttr ".imn" -type "string" "front1";
	setAttr ".den" -type "string" "front1_depth";
	setAttr ".man" -type "string" "front1_mask";
	setAttr ".tp" -type "double3" -0.40827950640160893 0.096039307486147862 0 ;
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 6 ".lnk";
	setAttr -s 6 ".slnk";
createNode displayLayerManager -n "layerManager";
	setAttr ".cdl" 2;
	setAttr -s 4 ".dli[1:3]"  1 2 3;
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode surfaceShader -n "surfaceShaderBlue1";
	setAttr ".oc" -type "float3" 0 0.86666656 1 ;
createNode shadingEngine -n "surfaceShaderBlue1SG";
	setAttr ".ihi" 0;
	setAttr -s 51 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
createNode surfaceShader -n "surfaceShaderBlue2";
	setAttr ".oc" -type "float3" 0 0 1 ;
createNode shadingEngine -n "surfaceShaderBlue2SG";
	setAttr ".ihi" 0;
	setAttr -s 15 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
createNode surfaceShader -n "surfaceShaderYellow";
	setAttr ".oc" -type "float3" 1 0.96285409 0 ;
createNode shadingEngine -n "surfaceShaderYellowSG";
	setAttr ".ihi" 0;
	setAttr -s 6 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo3";
createNode surfaceShader -n "surfaceShaderRed";
	setAttr ".oc" -type "float3" 1 0 0 ;
createNode shadingEngine -n "surfaceShaderRedSG";
	setAttr ".ihi" 0;
	setAttr -s 17 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo4";

createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 24 -ast 1 -aet 48 ";
	setAttr ".st" 6;
select -ne :time1;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".o" 1;
	setAttr -av ".unw" 1;
	setAttr -k on ".etw";
	setAttr -k on ".tps";
	setAttr -k on ".tms";
select -ne :renderPartition;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 6 ".st";
	setAttr -cb on ".an";
	setAttr -cb on ".pt";
select -ne :initialShadingGroup;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".mwc";
	setAttr -cb on ".an";
	setAttr -cb on ".il";
	setAttr -cb on ".vo";
	setAttr -cb on ".eo";
	setAttr -cb on ".fo";
	setAttr -cb on ".epo";
	setAttr -k on ".ro" yes;
select -ne :initialParticleSE;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".mwc";
	setAttr -cb on ".an";
	setAttr -cb on ".il";
	setAttr -cb on ".vo";
	setAttr -cb on ".eo";
	setAttr -cb on ".fo";
	setAttr -cb on ".epo";
	setAttr -k on ".ro" yes;
select -ne :defaultShaderList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 6 ".s";
select -ne :postProcessList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :renderGlobalsList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
select -ne :defaultRenderGlobals;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".macc";
	setAttr -k on ".macd";
	setAttr -k on ".macq";
	setAttr -k on ".mcfr";
	setAttr -cb on ".ifg";
	setAttr -k on ".clip";
	setAttr -k on ".edm";
	setAttr -k on ".edl";
	setAttr -cb on ".ren";
	setAttr -av -k on ".esr";
	setAttr -k on ".ors";
	setAttr -cb on ".sdf";
	setAttr -av -k on ".outf";
	setAttr -cb on ".imfkey";
	setAttr -k on ".gama";
	setAttr -k on ".an";
	setAttr -cb on ".ar";
	setAttr -k on ".fs" 1;
	setAttr -k on ".ef" 10;
	setAttr -av -k on ".bfs";
	setAttr -cb on ".me";
	setAttr -cb on ".se";
	setAttr -k on ".be";
	setAttr -cb on ".ep";
	setAttr -k on ".fec";
	setAttr -av -k on ".ofc";
	setAttr -cb on ".ofe";
	setAttr -cb on ".efe";
	setAttr -cb on ".oft";
	setAttr -cb on ".umfn";
	setAttr -cb on ".ufe";
	setAttr -cb on ".pff";
	setAttr -cb on ".peie";
	setAttr -cb on ".ifp";
	setAttr -k on ".comp";
	setAttr -k on ".cth";
	setAttr -k on ".soll";
	setAttr -k on ".sosl";
	setAttr -k on ".rd";
	setAttr -k on ".lp";
	setAttr -av -k on ".sp";
	setAttr -k on ".shs";
	setAttr -av -k on ".lpr";
	setAttr -cb on ".gv";
	setAttr -cb on ".sv";
	setAttr -k on ".mm";
	setAttr -k on ".npu";
	setAttr -k on ".itf";
	setAttr -k on ".shp";
	setAttr -cb on ".isp";
	setAttr -k on ".uf";
	setAttr -k on ".oi";
	setAttr -k on ".rut";
	setAttr -cb on ".mb";
	setAttr -av -k on ".mbf";
	setAttr -k on ".afp";
	setAttr -k on ".pfb";
	setAttr -k on ".pram";
	setAttr -k on ".poam";
	setAttr -k on ".prlm";
	setAttr -k on ".polm";
	setAttr -cb on ".prm";
	setAttr -cb on ".pom";
	setAttr -cb on ".pfrm";
	setAttr -cb on ".pfom";
	setAttr -av -k on ".bll";
	setAttr -k on ".bls";
	setAttr -k on ".smv";
	setAttr -k on ".ubc";
	setAttr -k on ".mbc";
	setAttr -cb on ".mbt";
	setAttr -k on ".udbx";
	setAttr -k on ".smc";
	setAttr -k on ".kmv";
	setAttr -cb on ".isl";
	setAttr -cb on ".ism";
	setAttr -cb on ".imb";
	setAttr -k on ".rlen";
	setAttr -av -k on ".frts";
	setAttr -k on ".tlwd";
	setAttr -k on ".tlht";
	setAttr -k on ".jfc";
	setAttr -cb on ".rsb";
	setAttr -k on ".ope";
	setAttr -k on ".oppf";
	setAttr -cb on ".hbl";
select -ne :defaultLightSet;
	setAttr -k on ".cch";
	setAttr -k on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -k on ".bnm";
	setAttr -k on ".mwc";
	setAttr -k on ".an";
	setAttr -k on ".il";
	setAttr -k on ".vo";
	setAttr -k on ".eo";
	setAttr -k on ".fo";
	setAttr -k on ".epo";
	setAttr -k on ".ro" yes;
select -ne :defaultObjectSet;
	setAttr -k on ".cch";
	setAttr -k on ".ihi";
	setAttr -k on ".nds";
	setAttr -k on ".bnm";
	setAttr -k on ".mwc";
	setAttr -k on ".an";
	setAttr -k on ".il";
	setAttr -k on ".vo";
	setAttr -k on ".eo";
	setAttr -k on ".fo";
	setAttr -k on ".epo";
	setAttr -k on ".ro" yes;
select -ne :hardwareRenderGlobals;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k off ".ctrs" 256;
	setAttr -av -k off ".btrs" 512;
	setAttr -k off ".fbfm";
	setAttr -k off -cb on ".ehql";
	setAttr -k off -cb on ".eams";
	setAttr -k off -cb on ".eeaa";
	setAttr -k off -cb on ".engm";
	setAttr -k off -cb on ".mes";
	setAttr -k off -cb on ".emb";
	setAttr -av -k off -cb on ".mbbf";
	setAttr -k off -cb on ".mbs";
	setAttr -k off -cb on ".trm";
	setAttr -k off -cb on ".tshc";
	setAttr -k off ".enpt";
	setAttr -k off -cb on ".clmt";
	setAttr -k off -cb on ".tcov";
	setAttr -k off -cb on ".lith";
	setAttr -k off -cb on ".sobc";
	setAttr -k off -cb on ".cuth";
	setAttr -k off -cb on ".hgcd";
	setAttr -k off -cb on ".hgci";
	setAttr -k off -cb on ".mgcs";
	setAttr -k off -cb on ".twa";
	setAttr -k off -cb on ".twz";
	setAttr -k on ".hwcc";
	setAttr -k on ".hwdp";
	setAttr -k on ".hwql";
	setAttr -k on ".hwfr";
	setAttr -k on ".soll";
	setAttr -k on ".sosl";
	setAttr -k on ".bswa";
	setAttr -k on ".shml";
	setAttr -k on ".hwel";
select -ne :defaultHardwareRenderGlobals;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -av -k on ".rp";
	setAttr -k on ".cai";
	setAttr -k on ".coi";
	setAttr -cb on ".bc";
	setAttr -av -k on ".bcb";
	setAttr -av -k on ".bcg";
	setAttr -av -k on ".bcr";
	setAttr -k on ".ei";
	setAttr -av -k on ".ex";
	setAttr -av -k on ".es";
	setAttr -av -k on ".ef";
	setAttr -av -k on ".bf";
	setAttr -k on ".fii";
	setAttr -av -k on ".sf";
	setAttr -k on ".gr";
	setAttr -k on ".li";
	setAttr -k on ".ls";
	setAttr -av -k on ".mb";
	setAttr -k on ".ti";
	setAttr -k on ".txt";
	setAttr -k on ".mpr";
	setAttr -k on ".wzd";
	setAttr -k on ".fn" -type "string" "im";
	setAttr -k on ".if";
	setAttr -k on ".res" -type "string" "ntsc_4d 646 485 1.333";
	setAttr -k on ".as";
	setAttr -k on ".ds";
	setAttr -k on ".lm";
	setAttr -av -k on ".fir";
	setAttr -k on ".aap";
	setAttr -av -k on ".gh";
	setAttr -cb on ".sd";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "surfaceShaderBlue1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "surfaceShaderBlue2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "surfaceShaderYellowSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "surfaceShaderRedSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "surfaceShaderBlue1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "surfaceShaderBlue2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "surfaceShaderYellowSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "surfaceShaderRedSG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "surfaceShaderBlue1.oc" "surfaceShaderBlue1SG.ss";
connectAttr "FKHip_RShape.iog" "surfaceShaderBlue1SG.dsm" -na;
connectAttr "FKKnee_RShape.iog" "surfaceShaderBlue1SG.dsm" -na;
connectAttr "FKAnkle_RShape.iog" "surfaceShaderBlue1SG.dsm" -na;
connectAttr "FKToes_RShape.iog" "surfaceShaderBlue1SG.dsm" -na;
connectAttr "FKShoulder_RShape.iog" "surfaceShaderBlue1SG.dsm" -na;
connectAttr "FKElbow_RShape.iog" "surfaceShaderBlue1SG.dsm" -na;
connectAttr "FKChest_MShape.iog" "surfaceShaderBlue1SG.dsm" -na;
connectAttr "FKSpine1_MShape.iog" "surfaceShaderBlue1SG.dsm" -na;
connectAttr "FKRoot_MShape.iog" "surfaceShaderBlue1SG.dsm" -na;
connectAttr "FKNeck_MShape.iog" "surfaceShaderBlue1SG.dsm" -na;
connectAttr "FKWrist_RShape.iog" "surfaceShaderBlue1SG.dsm" -na;
connectAttr "FKHead_MShape.iog" "surfaceShaderBlue1SG.dsm" -na;
connectAttr "FKWrist_R1Shape.iog" "surfaceShaderBlue1SG.dsm" -na;
connectAttr "FKPinkyFinger1_RShape.iog" "surfaceShaderBlue1SG.dsm" -na;
connectAttr "FKRingFinger1_RShape.iog" "surfaceShaderBlue1SG.dsm" -na;
connectAttr "FKMiddleFinger1_RShape.iog" "surfaceShaderBlue1SG.dsm" -na;
connectAttr "FKIndexFinger1_RShape.iog" "surfaceShaderBlue1SG.dsm" -na;
connectAttr "FKPinkyFinger2_RShape.iog" "surfaceShaderBlue1SG.dsm" -na;
connectAttr "FKRingFinger2_RShape.iog" "surfaceShaderBlue1SG.dsm" -na;
connectAttr "FKMiddleFinger2_RShape.iog" "surfaceShaderBlue1SG.dsm" -na;
connectAttr "FKIndexFinger2_RShape.iog" "surfaceShaderBlue1SG.dsm" -na;
connectAttr "FKPinkyFinger3_RShape.iog" "surfaceShaderBlue1SG.dsm" -na;
connectAttr "FKRingFinger3_RShape.iog" "surfaceShaderBlue1SG.dsm" -na;
connectAttr "FKMiddleFinger3_RShape.iog" "surfaceShaderBlue1SG.dsm" -na;
connectAttr "FKIndexFinger3_RShape.iog" "surfaceShaderBlue1SG.dsm" -na;
connectAttr "FKThumbFinger1_RShape.iog" "surfaceShaderBlue1SG.dsm" -na;
connectAttr "FKThumbFinger2_RShape.iog" "surfaceShaderBlue1SG.dsm" -na;
connectAttr "FKThumbFinger3_RShape.iog" "surfaceShaderBlue1SG.dsm" -na;
connectAttr "FKHip_LShape.iog" "surfaceShaderBlue1SG.dsm" -na;
connectAttr "FKKnee_LShape.iog" "surfaceShaderBlue1SG.dsm" -na;
connectAttr "FKAnkle_LShape.iog" "surfaceShaderBlue1SG.dsm" -na;
connectAttr "FKToes_LShape.iog" "surfaceShaderBlue1SG.dsm" -na;
connectAttr "FKShoulder_LShape.iog" "surfaceShaderBlue1SG.dsm" -na;
connectAttr "FKElbow_LShape.iog" "surfaceShaderBlue1SG.dsm" -na;
connectAttr "FKWrist_LShape.iog" "surfaceShaderBlue1SG.dsm" -na;
connectAttr "FKWrist_L1Shape.iog" "surfaceShaderBlue1SG.dsm" -na;
connectAttr "FKPinkyFinger1_LShape.iog" "surfaceShaderBlue1SG.dsm" -na;
connectAttr "FKRingFinger1_LShape.iog" "surfaceShaderBlue1SG.dsm" -na;
connectAttr "FKMiddleFinger1_LShape.iog" "surfaceShaderBlue1SG.dsm" -na;
connectAttr "FKIndexFinger1_LShape.iog" "surfaceShaderBlue1SG.dsm" -na;
connectAttr "FKPinkyFinger2_LShape.iog" "surfaceShaderBlue1SG.dsm" -na;
connectAttr "FKRingFinger2_LShape.iog" "surfaceShaderBlue1SG.dsm" -na;
connectAttr "FKMiddleFinger2_LShape.iog" "surfaceShaderBlue1SG.dsm" -na;
connectAttr "FKIndexFinger2_LShape.iog" "surfaceShaderBlue1SG.dsm" -na;
connectAttr "FKPinkyFinger3_LShape.iog" "surfaceShaderBlue1SG.dsm" -na;
connectAttr "FKRingFinger3_LShape.iog" "surfaceShaderBlue1SG.dsm" -na;
connectAttr "FKMiddleFinger3_LShape.iog" "surfaceShaderBlue1SG.dsm" -na;
connectAttr "FKIndexFinger3_LShape.iog" "surfaceShaderBlue1SG.dsm" -na;
connectAttr "FKThumbFinger1_LShape.iog" "surfaceShaderBlue1SG.dsm" -na;
connectAttr "FKThumbFinger2_LShape.iog" "surfaceShaderBlue1SG.dsm" -na;
connectAttr "FKThumbFinger3_LShape.iog" "surfaceShaderBlue1SG.dsm" -na;
connectAttr "surfaceShaderBlue1SG.msg" "materialInfo1.sg";
connectAttr "surfaceShaderBlue1.msg" "materialInfo1.m";
connectAttr "surfaceShaderBlue1.msg" "materialInfo1.t" -na;
connectAttr "surfaceShaderBlue2.oc" "surfaceShaderBlue2SG.ss";
connectAttr "RootX_MShape.iog" "surfaceShaderBlue2SG.dsm" -na;
connectAttr "FKIKSpine_MShape.iog" "surfaceShaderBlue2SG.dsm" -na;
connectAttr "FKIKLeg_RShape.iog" "surfaceShaderBlue2SG.dsm" -na;
connectAttr "FKIKArm_RShape.iog" "surfaceShaderBlue2SG.dsm" -na;
connectAttr "ControlSetShape.iog" "surfaceShaderBlue2SG.dsm" -na;
connectAttr "ControlSetShape1.iog" "surfaceShaderBlue2SG.dsm" -na;
connectAttr "ControlSetShape2.iog" "surfaceShaderBlue2SG.dsm" -na;
connectAttr "ControlSetShape3.iog" "surfaceShaderBlue2SG.dsm" -na;
connectAttr "Trim_Char_n_1_1Shape.iog" "surfaceShaderBlue2SG.dsm" -na;
connectAttr "Trim_Char_i_1_1Shape.iog" "surfaceShaderBlue2SG.dsm" -na;
connectAttr "Trim_Char_a_1_1Shape.iog" "surfaceShaderBlue2SG.dsm" -na;
connectAttr "Trim_Char_M_1_1Shape.iog" "surfaceShaderBlue2SG.dsm" -na;
connectAttr "ControlSet1Shape.iog" "surfaceShaderBlue2SG.dsm" -na;
connectAttr "FKIKLeg_LShape.iog" "surfaceShaderBlue2SG.dsm" -na;
connectAttr "FKIKArm_LShape.iog" "surfaceShaderBlue2SG.dsm" -na;
connectAttr "surfaceShaderBlue2SG.msg" "materialInfo2.sg";
connectAttr "surfaceShaderBlue2.msg" "materialInfo2.m";
connectAttr "surfaceShaderBlue2.msg" "materialInfo2.t" -na;
connectAttr "surfaceShaderYellow.oc" "surfaceShaderYellowSG.ss";
connectAttr "FKScapula_RShape.iog" "surfaceShaderYellowSG.dsm" -na;
connectAttr "HipSwinger_MShape.iog" "surfaceShaderYellowSG.dsm" -na;
connectAttr "HipSwinger_M1Shape.iog" "surfaceShaderYellowSG.dsm" -na;
connectAttr "Fingers_RShape.iog" "surfaceShaderYellowSG.dsm" -na;
connectAttr "FKScapula_LShape.iog" "surfaceShaderYellowSG.dsm" -na;
connectAttr "Fingers_LShape.iog" "surfaceShaderYellowSG.dsm" -na;
connectAttr "surfaceShaderYellowSG.msg" "materialInfo3.sg";
connectAttr "surfaceShaderYellow.msg" "materialInfo3.m";
connectAttr "surfaceShaderYellow.msg" "materialInfo3.t" -na;
connectAttr "surfaceShaderRed.oc" "surfaceShaderRedSG.ss";
connectAttr "IKLeg_RShape.iog" "surfaceShaderRedSG.dsm" -na;
connectAttr "PoleLeg_RShape.iog" "surfaceShaderRedSG.dsm" -na;
connectAttr "RollHeel_RShape.iog" "surfaceShaderRedSG.dsm" -na;
connectAttr "RollToes_RShape.iog" "surfaceShaderRedSG.dsm" -na;
connectAttr "RollToesEnd_RShape.iog" "surfaceShaderRedSG.dsm" -na;
connectAttr "PoleArm_RShape.iog" "surfaceShaderRedSG.dsm" -na;
connectAttr "IKArm_RShape.iog" "surfaceShaderRedSG.dsm" -na;
connectAttr "IKSpine2_MShape.iog" "surfaceShaderRedSG.dsm" -na;
connectAttr "IKSpine1_MShape.iog" "surfaceShaderRedSG.dsm" -na;
connectAttr "IKSpine3_MShape.iog" "surfaceShaderRedSG.dsm" -na;
connectAttr "IKLeg_LShape.iog" "surfaceShaderRedSG.dsm" -na;
connectAttr "PoleLeg_LShape.iog" "surfaceShaderRedSG.dsm" -na;
connectAttr "RollHeel_LShape.iog" "surfaceShaderRedSG.dsm" -na;
connectAttr "RollToes_LShape.iog" "surfaceShaderRedSG.dsm" -na;
connectAttr "RollToesEnd_LShape.iog" "surfaceShaderRedSG.dsm" -na;
connectAttr "PoleArm_LShape.iog" "surfaceShaderRedSG.dsm" -na;
connectAttr "IKArm_LShape.iog" "surfaceShaderRedSG.dsm" -na;
connectAttr "surfaceShaderRedSG.msg" "materialInfo4.sg";
connectAttr "surfaceShaderRed.msg" "materialInfo4.m";
connectAttr "surfaceShaderRed.msg" "materialInfo4.t" -na;
connectAttr "surfaceShaderBlue1SG.pa" ":renderPartition.st" -na;
connectAttr "surfaceShaderBlue2SG.pa" ":renderPartition.st" -na;
connectAttr "surfaceShaderYellowSG.pa" ":renderPartition.st" -na;
connectAttr "surfaceShaderRedSG.pa" ":renderPartition.st" -na;
connectAttr "surfaceShaderBlue1.msg" ":defaultShaderList1.s" -na;
connectAttr "surfaceShaderBlue2.msg" ":defaultShaderList1.s" -na;
connectAttr "surfaceShaderYellow.msg" ":defaultShaderList1.s" -na;
connectAttr "surfaceShaderRed.msg" ":defaultShaderList1.s" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of biped.ma
