//Maya ASCII 2012 scene
//Name: face.ma
//Last modified: Sun, Sep 02, 2018 11:28:11 AM
//Codeset: 1252
requires maya "2008";
currentUnit -l centimeter -a degree -t pal;
fileInfo "application" "maya";
fileInfo "product" "Maya 2012";
fileInfo "version" "2012 x64";
fileInfo "cutIdentifier" "201201172029-821146";
fileInfo "osv" "Microsoft Business Edition, 64-bit  (Build 9200)\n";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.91913981555134661 1.6066858421394605 7.8255376055402834 ;
	setAttr ".r" -type "double3" 0.26164727030817253 -8.1999999999388944 6.2761871504380549e-018 ;
	setAttr ".rp" -type "double3" -4.4408920985006262e-016 2.7755575615628914e-017 -4.4408920985006262e-016 ;
	setAttr ".rpt" -type "double3" 6.4392273906675548e-017 -5.3849836276039159e-017 
		-5.6260818614062492e-017 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999979;
	setAttr ".ncp" 1;
	setAttr ".coi" 7.9299078718623868;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0.24760341644287109 1.9660592526197433 -0.049999944865703583 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.24760341644287109 100.10399354707498 -0.049999944865681795 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".ncp" 1;
	setAttr ".coi" 100.1;
	setAttr ".ow" 5.7961052342465056;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.27005993217398516 1.2393372929563498 101.54728393535211 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".ncp" 1;
	setAttr ".coi" 101.54099861407981;
	setAttr ".ow" 5.7804242051879475;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".tp" -type "double3" -0.48646836380762393 2.5872141555737871 0 ;
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 102.39132526668359 1.9660592526197433 -0.0499999448656809 ;
	setAttr ".r" -type "double3" -1.2676529855478182e-016 89.999999999999986 0 ;
	setAttr ".rp" -type "double3" 2.7755575615628914e-017 0 -1.4210854715202004e-014 ;
	setAttr ".rpt" -type "double3" -1.4238610290817636e-014 0 1.4183099139586397e-014 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".ncp" 1;
	setAttr ".coi" 100.36042095823363;
	setAttr ".ow" 9.4229253781293991;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".tp" -type "double3" 2.0277654755965528 0.90414548348679857 0.19549626760205965 ;
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "Group";
	setAttr ".s" -type "double3" 1 1 0.1 ;
createNode transform -n "_M" -p "Group";
	setAttr ".s" -type "double3" 1 1 10 ;
createNode transform -n "face_M" -p "_M";
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
createNode mesh -n "face_MShape" -p "face_M";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0]";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 50 ".uvst[0].uvsp[0:49]" -type "float2" 0 0 0.1 0 0.2 0 0.30000001
		 0 0.40000001 0 0.5 0 0.60000002 0 0.69999999 0 0.80000001 0 0.90000004 0 0 0.60000002
		 0 0.69999999 0 0.80000001 0 0.90000004 0 1 0.1 1 0.2 1 0.30000001 1 0.40000001 1
		 0.5 1 0.60000002 1 0.69999999 1 0.80000001 1 0.90000004 1 1 1 1 0 0.90000004 1 0.80000001
		 1 0.69999999 1 0.60000002 1 0.5 1 0.40000001 1 0.30000001 1 0.2 1 0.1 1 0 1 0 0.90000004
		 0 0.80000001 0 0.69999999 0 0.60000002 0 0 0.1 0 0.2 0 0.30000001 0 0.40000001 0
		 0.5 0 0.60000002 0 0.69999999 0 0.80000001 0 0.90000004 0;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".bnr" 0;
	setAttr -s 50 ".vt[0:49]"  -1.077519298 1.55473816 -0.099999972 -0.99975169 1.18844521 -0.099999972
		 -0.86459756 0.85325336 -0.099999972 -0.77116787 0.7251184 -0.099999972 -0.67773962 0.60026914 -0.099999972
		 -0.56788325 0.48856169 -0.099999972 -0.46788281 0.40313858 -0.099999972 -0.36788279 0.30785912 -0.099999972
		 -0.26131231 0.23229253 -0.099999972 -0.1317417 0.15344006 -0.099999972 0 0.1501548 -0.099999972
		 -1.12625587 1.82590592 -0.099999994 -1.15104246 2.03918004 -0.099999972 -1.1549964 2.25175428 -0.10000003
		 -1.14083266 2.39424539 -0.099999972 -1.1155324 2.59544778 -0.10000003 -1.040121198 2.85317111 -0.10000003
		 -0.94807339 2.99631 -0.10000003 -0.83216912 3.07980752 -0.10000003 -0.71626508 3.07185483 -0.10000003
		 -0.62819296 3.095712185 -0.10000003 -0.50433666 3.083783627 -0.10000003 -0.38048047 3.051975489 -0.10000003
		 -0.28445643 2.97245312 -0.10000003 -0.14867175 2.896909 -0.10000003 0 2.84919524 -0.10000003
		 1.077519298 1.55473816 -0.099999972 0.99975169 1.18844521 -0.099999972 0.86459756 0.85325336 -0.099999972
		 0.77116787 0.7251184 -0.099999972 0.67773962 0.60026914 -0.099999972 0.56788325 0.48856169 -0.099999972
		 0.46788281 0.40313858 -0.099999972 0.36788279 0.30785912 -0.099999972 0.26131231 0.23229253 -0.099999972
		 0.1317417 0.15344006 -0.099999972 1.12625587 1.82590592 -0.099999994 1.15104246 2.03918004 -0.099999972
		 1.1549964 2.25175428 -0.10000003 1.14083266 2.39424539 -0.099999972 1.1155324 2.59544778 -0.10000003
		 1.040121198 2.85317111 -0.10000003 0.94807339 2.99631 -0.10000003 0.83216912 3.07980752 -0.10000003
		 0.71626508 3.07185483 -0.10000003 0.62819296 3.095712185 -0.10000003 0.50433666 3.083783627 -0.10000003
		 0.38048047 3.051975489 -0.10000003 0.28445643 2.97245312 -0.10000003 0.14867175 2.896909 -0.10000003;
	setAttr -s 50 ".ed[0:49]"  0 1 0 0 11 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0
		 6 7 0 7 8 0 8 9 0 9 10 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 26 27 0 26 36 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 32 0 32 33 0 33 34 0 34 35 0 35 10 0 36 37 0 37 38 0 38 39 0 39 40 0
		 40 41 0 41 42 0 42 43 0 43 44 0 44 45 0 45 46 0 46 47 0 47 48 0 48 49 0 49 25 0;
	setAttr ".fc[0]" -type "polyFaces" 
		f 50 -25 -24 -23 -22 -21 -20 -19 -18 -17 -16 -15 -14 -13 -12 -2 0 2 3 4 5 6 7 8 9 10
		 -36 -35 -34 -33 -32 -31 -30 -29 -28 -26 26 36 37 38 39 40 41 42 43 44 45 46 47 48
		 49
		mu 0 50 24 23 22 21 20 19 18 17 16 15 14 13 12 11 10 0 1 2 3 4 5 6 7 8 9 25 49 48 47 46
		 45 44 43 42 41 40 39 38 37 36 35 34 33 32 31 30 29 28 27 26;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dsm" 2;
createNode transform -n "nose_M" -p "_M";
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
createNode mesh -n "nose_MShape" -p "nose_M";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:3]";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 80 ".uvst[0].uvsp[0:79]" -type "float2" 0.64860266 0.79546607
		 0.62640899 0.75190848 0.59184152 0.71734101 0.54828393 0.69514734 0.5 0.68749994
		 0.45171607 0.69514734 0.40815851 0.71734107 0.37359107 0.75190854 0.3513974 0.79546607
		 0.34374997 0.84375 0.3513974 0.89203393 0.37359107 0.93559146 0.40815854 0.97015893
		 0.4517161 0.9923526 0.5 1 0.54828387 0.9923526 0.59184146 0.97015893 0.62640893 0.93559146
		 0.6486026 0.89203393 0.65625 0.84375 0.65625 0.84375 0.6486026 0.89203393 0.62640893
		 0.93559146 0.59184146 0.97015893 0.54828387 0.9923526 0.5 1 0.4517161 0.9923526 0.40815854
		 0.97015893 0.37359107 0.93559146 0.3513974 0.89203393 0.34374997 0.84375 0.3513974
		 0.79546607 0.37359107 0.75190854 0.40815851 0.71734107 0.45171607 0.69514734 0.5
		 0.68749994 0.54828393 0.69514734 0.59184152 0.71734101 0.62640899 0.75190848 0.64860266
		 0.79546607 0.65625 0.84375 0.6486026 0.89203393 0.62640893 0.93559146 0.59184146
		 0.97015893 0.54828387 0.9923526 0.5 1 0.4517161 0.9923526 0.40815854 0.97015893 0.37359107
		 0.93559146 0.3513974 0.89203393 0.34374997 0.84375 0.3513974 0.79546607 0.37359107
		 0.75190854 0.40815851 0.71734107 0.45171607 0.69514734 0.5 0.68749994 0.54828393
		 0.69514734 0.59184152 0.71734101 0.62640899 0.75190848 0.64860266 0.79546607 0.65625
		 0.84375 0.6486026 0.89203393 0.62640893 0.93559146 0.59184146 0.97015893 0.54828387
		 0.9923526 0.5 1 0.4517161 0.9923526 0.40815854 0.97015893 0.37359107 0.93559146 0.3513974
		 0.89203393 0.34374997 0.84375 0.3513974 0.79546607 0.37359107 0.75190854 0.40815851
		 0.71734107 0.45171607 0.69514734 0.5 0.68749994 0.54828393 0.69514734 0.59184152
		 0.71734101 0.62640899 0.75190848 0.64860266 0.79546607;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".bnr" 0;
	setAttr -s 80 ".pt[0:79]" -type "float3"  0 0 0.13 0 0 0.13 0 0 0.13 
		0 0 0.13 0 0 0.13 0 0 0.13 0 0 0.13 0 0 0.13 0 0 0.13 0 0 0.13 0 0 0.13 0 0 0.13 
		0 0 0.13 0 0 0.13 0 0 0.13 0 0 0.13 0 0 0.13 0 0 0.13 0 0 0.13 0 0 0.13 0 0 0.13 
		0 0 0.13 0 0 0.13 0 0 0.13 0 0 0.13 0 0 0.13 0 0 0.13 0 0 0.13 0 0 0.13 0 0 0.13 
		0 0 0.13 0 0 0.13 0 0 0.13 0 0 0.13 0 0 0.13 0 0 0.13 0 0 0.13 0 0 0.13 0 0 0.13 
		0 0 0.13 0 0 0.13 0 0 0.13 0 0 0.13 0 0 0.13 0 0 0.13 0 0 0.13 0 0 0.13 0 0 0.13 
		0 0 0.13 0 0 0.13 0 0 0.13 0 0 0.13 0 0 0.13 0 0 0.13 0 0 0.13 0 0 0.13 0 0 0.13 
		0 0 0.13 0 0 0.13 0 0 0.13 0 0 0.13 0 0 0.13 0 0 0.13 0 0 0.13 0 0 0.13 0 0 0.13 
		0 0 0.13 0 0 0.13 0 0 0.13 0 0 0.13 0 0 0.13 0 0 0.13 0 0 0.13 0 0 0.13 0 0 0.13 
		0 0 0.13 0 0 0.13 0 0 0.13 0 0 0.13 0 0 0.13;
	setAttr -s 80 ".vt[0:79]"  0.3029218 1.38910329 -0.079999998 0.28532901 1.40757871 -0.079999998
		 0.26342088 1.41809928 -0.080000006 0.22888739 1.45922256 -0.080000006 0.18874688 1.56997085 -0.079999998
		 0.16533841 1.64634323 -0.079999998 0.14816241 1.71343148 -0.079999998 0.13601184 1.78408587 -0.079999991
		 0.12555978 1.82995367 -0.079999998 0.1301468 1.83310652 -0.079999998 0.14326161 1.784513 -0.079999998
		 0.16051638 1.71769321 -0.080000006 0.17845753 1.64644802 -0.080000006 0.19931519 1.57378483 -0.080000006
		 0.24081634 1.46521282 -0.079999998 0.27501744 1.42274415 -0.080000006 0.28917107 1.41248679 -0.080000006
		 0.31116602 1.39114666 -0.079999991 0.31535414 1.36540258 -0.079999991 0.30885923 1.36792028 -0.079999998
		 0.31326851 1.35646868 -0.079999998 0.30939171 1.34618819 -0.079999998 0.28720504 1.33329368 -0.080000006
		 0.25894678 1.3272109 -0.080000006 0.20590672 1.32217264 -0.079999998 0.15977442 1.31812716 -0.079999998
		 0.11746944 1.29440475 -0.079999998 0.06889075 1.27813959 -0.079999991 0 1.26367605 -0.079999998
		 0 1.27017093 -0.079999998 0 1.2723242 -0.079999998 0.06546852 1.28767371 -0.080000006
		 0.096408695 1.34305894 -0.080000006 0.14324817 1.3647753 -0.080000006 0.1659565 1.35848331 -0.079999998
		 0.18486787 1.34423327 -0.080000006 0.20606476 1.33572447 -0.080000006 0.25801709 1.34296501 -0.079999991
		 0.28064886 1.34765887 -0.079999991 0.30226254 1.36323762 -0.079999998 -0.31326851 1.35646868 -0.079999998
		 -0.30939171 1.34618819 -0.079999998 -0.28720504 1.33329368 -0.080000006 -0.25894678 1.3272109 -0.080000006
		 -0.20590672 1.32217264 -0.079999998 -0.15977442 1.31812716 -0.079999998 -0.11746944 1.29440475 -0.079999998
		 -0.06889075 1.27813959 -0.079999991 0 1.26367605 -0.079999998 0 1.27017093 -0.079999998
		 0 1.2723242 -0.079999998 -0.06546852 1.28767371 -0.080000006 -0.096408695 1.34305894 -0.080000006
		 -0.14324817 1.3647753 -0.080000006 -0.1659565 1.35848331 -0.079999998 -0.18486787 1.34423327 -0.080000006
		 -0.20606476 1.33572447 -0.080000006 -0.25801709 1.34296501 -0.079999991 -0.28064886 1.34765887 -0.079999991
		 -0.30226254 1.36323762 -0.079999998 -0.3029218 1.38910329 -0.079999998 -0.28532901 1.40757871 -0.079999998
		 -0.26342088 1.41809928 -0.080000006 -0.22888739 1.45922256 -0.080000006 -0.18874688 1.56997085 -0.079999998
		 -0.16533841 1.64634323 -0.079999998 -0.14816241 1.71343148 -0.079999998 -0.13601184 1.78408587 -0.079999991
		 -0.12555978 1.82995367 -0.079999998 -0.1301468 1.83310652 -0.079999998 -0.14326161 1.784513 -0.079999998
		 -0.16051638 1.71769321 -0.080000006 -0.17845753 1.64644802 -0.080000006 -0.19931519 1.57378483 -0.080000006
		 -0.24081634 1.46521282 -0.079999998 -0.27501744 1.42274415 -0.080000006 -0.28917107 1.41248679 -0.080000006
		 -0.31116602 1.39114666 -0.079999991 -0.31535414 1.36540258 -0.079999991 -0.30885923 1.36792028 -0.079999998;
	setAttr -s 80 ".ed[0:79]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 0 0 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 32 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 20 0
		 40 41 0 41 42 0 42 43 0 43 44 0 44 45 0 45 46 0 46 47 0 47 48 0 48 49 0 49 50 0 50 51 0
		 51 52 0 52 53 0 53 54 0 54 55 0 55 56 0 56 57 0 57 58 0 58 59 0 59 40 0 60 61 0 61 62 0
		 62 63 0 63 64 0 64 65 0 65 66 0 66 67 0 67 68 0 68 69 0 69 70 0 70 71 0 71 72 0 72 73 0
		 73 74 0 74 75 0 75 76 0 76 77 0 77 78 0 78 79 0 79 60 0;
	setAttr -s 4 ".fc[0:3]" -type "polyFaces" 
		f 20 -19 -18 -17 -16 -15 -14 -13 -12 -11 -10 -9 -8 -7 -6 -5 -4 -3 -2 -1 -20
		mu 0 20 19 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18
		f 20 -39 -38 -37 -36 -35 -34 -33 -32 -31 -30 -29 -28 -27 -26 -25 -24 -23 -22 -21 -40
		mu 0 20 20 39 38 37 36 35 34 33 32 31 30 29 28 27 26 25 24 23 22 21
		f 20 59 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58
		mu 0 20 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59
		f 20 79 60 61 62 63 64 65 66 67 68 69 70 71 72 73 74 75 76 77 78
		mu 0 20 60 61 62 63 64 65 66 67 68 69 70 71 72 73 74 75 76 77 78 79;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dsm" 2;
createNode transform -n "lip2_M" -p "_M";
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
createNode mesh -n "lip2_MShape" -p "lip2_M";
	setAttr -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".bnr" 0;
	setAttr -s 14 ".pt[0:13]" -type "float3"  0.050727837 0.85539931 -0.44999987 
		0.010488123 0.8105033 -0.44999987 0.0056309765 0.78102607 -0.44999987 0 0.76735038 
		-0.44999987 -0.0057071536 0.77564746 -0.44999999 -0.010486566 0.81049865 -0.44999999 
		-0.050727837 0.85539931 -0.44999987 0.051109307 0.86443251 0.54999989 0.010674013 
		0.81981319 0.54999989 0.0054747886 0.78994435 0.54999989 0 0.77645737 0.54999989 
		-0.0055177477 0.78458798 0.54999989 -0.010674022 0.81981325 0.54999989 -0.051109307 
		0.86443251 0.54999989;
createNode transform -n "upperLip_M" -p "_M";
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
createNode mesh -n "upperLip_MShape" -p "upperLip_M";
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
	setAttr ".bnr" 0;
	setAttr -s 20 ".pt[0:19]" -type "float3"  -0.40048587 0.75893086 0 
		-0.34067339 0.64154238 -1.0039692e-007 -0.24751389 0.54838222 5.0198462e-008 -0.1301263 
		0.48856992 5.0198462e-008 -2.0861626e-007 0.46796003 0 0.13012518 0.48856997 0 0.24751368 
		0.54838234 -1.0039692e-007 0.34067345 0.64154249 -5.0198462e-008 0.40048558 0.75893086 
		-1.0039692e-007 0.42109537 0.88905621 0 0.40048558 1.019182 0 0.34067339 1.1365683 
		1.0039692e-007 0.24751356 1.2297297 5.0198462e-008 0.13012519 1.2895401 5.0198462e-008 
		-2.0861626e-007 1.3101497 -1.0039692e-007 -0.13012618 1.2895401 1.0039692e-007 -0.24751377 
		1.2297297 1.0039692e-007 -0.34067315 1.1365683 -5.0198462e-008 -0.40048549 1.019182 
		-5.0198462e-008 -0.42109522 0.88905621 0;
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
createNode transform -n "lowerLip_M" -p "_M";
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
createNode mesh -n "lowerLip_MShape" -p "lowerLip_M";
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
	setAttr ".bnr" 0;
	setAttr -s 20 ".pt[0:19]" -type "float3"  -0.40048587 0.52872181 0 
		-0.34067339 0.41133291 -1.0039692e-007 -0.24751389 0.31817317 5.0198462e-008 -0.1301263 
		0.2583611 5.0198462e-008 -2.0861626e-007 0.23775126 0 0.13012518 0.25836116 0 0.24751368 
		0.31817329 -1.0039692e-007 0.34067345 0.41133302 -5.0198462e-008 0.40048558 0.52872181 
		-1.0039692e-007 0.42109537 0.65884715 0 0.40048558 0.78897256 0 0.34067339 0.90636003 
		1.0039692e-007 0.24751356 0.99952239 5.0198462e-008 0.13012519 1.0593328 5.0198462e-008 
		-2.0861626e-007 1.0799425 -1.0039692e-007 -0.13012618 1.0593328 1.0039692e-007 -0.24751377 
		0.99952239 1.0039692e-007 -0.34067315 0.90636003 -5.0198462e-008 -0.40048549 0.78897256 
		-5.0198462e-008 -0.42109522 0.65884715 0;
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
createNode transform -n "Jaw_M" -p "_M";
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
createNode mesh -n "Jaw_MShape" -p "Jaw_M";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 10 ".uvst[0].uvsp[0:9]" -type "float2" 0.59184152 0.71734101
		 0.54828393 0.69514734 0.5 0.68749994 0.45171607 0.69514734 0.40815851 0.71734107
		 0.37359107 0.93559146 0.4517161 0.9923526 0.5 1 0.54828387 0.9923526 0.62640893 0.93559146;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".bnr" 0;
	setAttr -s 10 ".pt[0:9]" -type "float3"  0.52274191 0.020959964 5.0074892e-008 
		0.22976637 0.02095986 -5.007491e-008 4.3625983e-013 -0.14509585 0 -0.22975613 0.02095986 
		0 -0.52274883 0.02095986 0 -0.52430534 -0.026461527 -5.007491e-008 -0.22975613 -0.026461527 
		-5.007491e-008 4.3418524e-013 -0.19438234 1.0014982e-007 0.22976108 -0.026460484 
		-1.0014982e-007 0.52430439 -0.026461527 -1.0014982e-007;
	setAttr -s 10 ".vt[0:9]"  0.11380723 0.29551077 2.1857232e-008 0.05002299 0.29551065 -2.1857236e-008
		 1.9778515e-006 0.2033225 0 -0.050020769 0.29551065 0 -0.1138086 0.29551065 0 -0.11225298 0.28145409 -2.1857236e-008
		 -0.050020769 0.28145409 -2.1857236e-008 1.9699894e-006 0.18950868 4.3714472e-008
		 0.050021805 0.28145468 -4.3714472e-008 0.11225268 0.28145409 -4.3714472e-008;
	setAttr -s 10 ".ed[0:9]"  9 0 0 0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0
		 6 7 0 7 8 0 8 9 0;
	setAttr ".fc[0]" -type "polyFaces" 
		f 10 0 1 2 3 4 5 6 7 8 9
		mu 0 10 0 9 8 7 6 5 4 3 2 1;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "upperFace_M" -p "_M";
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
createNode mesh -n "upperFace_MShape" -p "upperFace_M";
	addAttr -ci true -sn "mso" -ln "miShadingSamplesOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "msh" -ln "miShadingSamples" -min 0 -smx 8 -at "float";
	addAttr -ci true -sn "mdo" -ln "miMaxDisplaceOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mmd" -ln "miMaxDisplace" -min 0 -smx 1 -at "float";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:1]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 8 ".uvst[0].uvsp[0:7]" -type "float2" 0.45171607 0.69514734
		 0.40815851 0.71734107 0.37359107 0.93559146 0.4517161 0.9923526 0.45171607 0.69514734
		 0.4517161 0.9923526 0.37359107 0.93559146 0.40815851 0.71734107;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".bnr" 0;
	setAttr -s 8 ".vt[0:7]"  -1.085359216 1.59764981 -0.15000001 -1.58205986 1.59764981 -0.15000001
		 -1.58206081 1.53617191 -0.15000002 -1.073649406 1.53617191 -0.15000002 1.085359216 1.59764981 -0.15000001
		 1.58205986 1.59764981 -0.15000001 1.58206081 1.53617191 -0.15000002 1.073649406 1.53617191 -0.15000002;
	setAttr -s 8 ".ed[0:7]"  3 0 0 0 1 0 1 2 0 2 3 0 7 4 0 4 5 0 5 6 0
		 6 7 0;
	setAttr -s 2 ".fc[0:1]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 3 2 1
		f 4 -8 -7 -6 -5
		mu 0 4 4 7 6 5;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "middleFace_M" -p "_M";
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
createNode mesh -n "middleFace_MShape" -p "middleFace_M";
	addAttr -ci true -sn "mso" -ln "miShadingSamplesOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "msh" -ln "miShadingSamples" -min 0 -smx 8 -at "float";
	addAttr -ci true -sn "mdo" -ln "miMaxDisplaceOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mmd" -ln "miMaxDisplace" -min 0 -smx 1 -at "float";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:1]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 8 ".uvst[0].uvsp[0:7]" -type "float2" 0.45171607 0.69514734
		 0.40815851 0.71734107 0.37359107 0.93559146 0.4517161 0.9923526 0.45171607 0.69514734
		 0.4517161 0.9923526 0.37359107 0.93559146 0.40815851 0.71734107;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".bnr" 0;
	setAttr -s 8 ".pt[0:7]" -type "float3"  0.04553742 -0.28797728 0 
		0.066377029 -0.28797728 0 0.066377066 -0.28797728 0 0.045046121 -0.28797728 0 -0.04553742 
		-0.28797728 0 -0.066377029 -0.28797728 0 -0.066377066 -0.28797728 0 -0.045046121 
		-0.28797728 0;
	setAttr -s 8 ".vt[0:7]"  -1.085359216 1.59764981 -0.15000001 -1.58205986 1.59764981 -0.15000001
		 -1.58206081 1.53617191 -0.15000002 -1.073649406 1.53617191 -0.15000002 1.085359216 1.59764981 -0.15000001
		 1.58205986 1.59764981 -0.15000001 1.58206081 1.53617191 -0.15000002 1.073649406 1.53617191 -0.15000002;
	setAttr -s 8 ".ed[0:7]"  3 0 0 0 1 0 1 2 0 2 3 0 7 4 0 4 5 0 5 6 0
		 6 7 0;
	setAttr -s 2 ".fc[0:1]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 3 2 1
		f 4 -8 -7 -6 -5
		mu 0 4 4 7 6 5;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "lowerFace_M" -p "_M";
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
createNode mesh -n "lowerFace_MShape" -p "lowerFace_M";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:1]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 8 ".uvst[0].uvsp[0:7]" -type "float2" 0.45171607 0.69514734
		 0.40815851 0.71734107 0.37359107 0.93559146 0.4517161 0.9923526 0.45171607 0.69514734
		 0.4517161 0.9923526 0.37359107 0.93559146 0.40815851 0.71734107;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".bnr" 0;
	setAttr -s 8 ".vt[0:7]"  0.95215011 1.069989681 -0.15000001 1.46996427 1.069989681 -0.15000001
		 1.4699651 1.0085117817 -0.15000002 0.92790067 1.0080223083 -0.15000002 -0.95215011 1.069989681 -0.15000001
		 -1.46996427 1.069989681 -0.15000001 -1.4699651 1.0085117817 -0.15000002 -0.92790067 1.0080223083 -0.15000002;
	setAttr -s 8 ".ed[0:7]"  3 0 0 0 1 0 1 2 0 2 3 0 7 4 0 4 5 0 5 6 0
		 6 7 0;
	setAttr -s 2 ".fc[0:1]" -type "polyFaces" 
		f 4 -4 -3 -2 -1
		mu 0 4 0 1 2 3
		f 4 4 5 6 7
		mu 0 4 4 5 6 7;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "upperTeeth_M" -p "_M";
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
createNode mesh -n "upperTeeth_MShape" -p "upperTeeth_M";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".bnr" 0;
	setAttr -s 4 ".pt[0:3]" -type "float3"  1.5170636 0.75726223 -0.5 
		0.99761194 0.75726223 -0.5 1.5170636 0.83174163 0.5 0.99761194 0.83174163 0.5;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-016 0.5 0.5 -1.110223e-016 0.5
		 -0.5 1.110223e-016 -0.5 0.5 1.110223e-016 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "lowerTeeth_M" -p "_M";
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
createNode mesh -n "lowerTeeth_MShape" -p "lowerTeeth_M";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".bnr" 0;
	setAttr -s 4 ".pt[0:3]" -type "float3"  1.5170633 0.55767512 -0.5 
		0.99761176 0.55767512 -0.5 1.5170633 0.63215446 0.5 0.99761176 0.63215446 0.5;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-016 0.5 0.5 -1.110223e-016 0.5
		 -0.5 1.110223e-016 -0.5 0.5 1.110223e-016 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Tongue" -p "_M";
	setAttr -l on -k off ".v";
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
createNode mesh -n "TongueShape" -p "Tongue";
	setAttr -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
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
	setAttr ".bnr" 0;
	setAttr -s 20 ".pt[0:19]" -type "float3"  -2.3895726 0.40010267 -0.050000001 
		-2.2990651 0.6887992 -0.050000075 -2.2094011 0.61444974 -0.049999963 -2.1982479 0.56511134 
		-0.049999963 -2.1270132 0.53350651 -0.050000001 -2.0557823 0.56511116 -0.050000001 
		-2.0446348 0.6144498 -0.050000075 -1.9549727 0.6887992 -0.050000038 -1.8644605 0.40010285 
		-0.050000075 -1.825417 0.44585967 -0.050000001 -1.8234177 0.46354496 -0.050000001 
		-1.8613105 0.50635743 -0.049999926 -1.935185 0.55531007 -0.049999963 -2.0431542 0.58994174 
		-0.049999963 -2.1270132 0.6064316 -0.050000075 -2.2108769 0.58994222 -0.049999926 
		-2.3188486 0.55531007 -0.049999926 -2.3927264 0.50635689 -0.050000038 -2.4306178 
		0.46354559 -0.050000038 -2.428616 0.44585985 -0.050000001;
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
createNode transform -n "Tongue0_M" -p "_M";
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
createNode mesh -n "Tongue0_MShape" -p "Tongue0_M";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".bnr" 0;
	setAttr -s 4 ".pt[0:3]" -type "float3"  -1.9116888 0.91018564 -0.5 
		-2.3394585 0.91018564 -0.5 -1.9116888 0.99875402 0.5 -2.3394585 0.99875402 0.5;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-016 0.5 0.5 -1.110223e-016 0.5
		 -0.5 1.110223e-016 -0.5 0.5 1.110223e-016 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Tongue1_M" -p "_M";
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
createNode mesh -n "Tongue1_MShape" -p "Tongue1_M";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".bnr" 0;
	setAttr -s 4 ".pt[0:3]" -type "float3"  -1.9003625 0.68758494 -0.5 
		-2.3507848 0.68758494 -0.5 -1.9003625 0.76303971 0.5 -2.3507848 0.76303971 0.5;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-016 0.5 0.5 -1.110223e-016 0.5
		 -0.5 1.110223e-016 -0.5 0.5 1.110223e-016 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Tongue2_M" -p "_M";
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
createNode mesh -n "Tongue2_MShape" -p "Tongue2_M";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".bnr" 0;
	setAttr -s 4 ".pt[0:3]" -type "float3"  -1.878109 0.46429986 -0.5 
		-2.3730383 0.46429986 -0.5 -1.878109 0.54467463 0.5 -2.3730383 0.54467463 0.5;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-016 0.5 0.5 -1.110223e-016 0.5
		 -0.5 1.110223e-016 -0.5 0.5 1.110223e-016 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Tongue3_M" -p "_M";
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
createNode mesh -n "Tongue3_MShape" -p "Tongue3_M";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".bnr" 0;
	setAttr -s 4 ".pt[0:3]" -type "float3"  -1.8463182 0.2530539 -0.5 
		-2.4048285 0.2530539 -0.5 -1.8463182 0.32260406 0.5 -2.4048285 0.32260406 0.5;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-016 0.5 0.5 -1.110223e-016 0.5
		 -0.5 1.110223e-016 -0.5 0.5 1.110223e-016 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "ctrlBrow_R" -p "_M";
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
createNode mesh -n "ctrlBrow_RShape" -p "ctrlBrow_R";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".bnr" 0;
	setAttr -s 4 ".pt[0:3]" -type "float3"  2.5654478 2.3923688 -0.5 
		1.8329911 2.3923688 -0.5 2.5654478 2.6599102 0.5 1.8329911 2.6599102 0.5;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-016 0.5 0.5 -1.110223e-016 0.5
		 -0.5 1.110223e-016 -0.5 0.5 1.110223e-016 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "ctrlEye_R" -p "_M";
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
createNode mesh -n "ctrlEye_RShape" -p "ctrlEye_R";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".bnr" 0;
	setAttr -s 4 ".pt[0:3]" -type "float3"  2.5654478 1.9910653 -0.5 
		1.8329911 1.9910653 -0.5 2.5654478 2.2586019 0.5 1.8329911 2.2586019 0.5;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-016 0.5 0.5 -1.110223e-016 0.5
		 -0.5 1.110223e-016 -0.5 0.5 1.110223e-016 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "ctrlCheek_R" -p "_M";
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
createNode mesh -n "ctrlCheek_RShape" -p "ctrlCheek_R";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".bnr" 0;
	setAttr -s 4 ".pt[0:3]" -type "float3"  2.5654478 1.5823091 -0.5 
		1.8329911 1.5823091 -0.5 2.5654478 1.849842 0.5 1.8329911 1.849842 0.5;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-016 0.5 0.5 -1.110223e-016 0.5
		 -0.5 1.110223e-016 -0.5 0.5 1.110223e-016 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "ctrlNose_R" -p "_M";
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
createNode mesh -n "ctrlNose_RShape" -p "ctrlNose_R";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".bnr" 0;
	setAttr -s 4 ".pt[0:3]" -type "float3"  2.5654478 1.1836587 -0.5 
		1.8329911 1.1836587 -0.5 2.5654478 1.4511948 0.5 1.8329911 1.4511948 0.5;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-016 0.5 0.5 -1.110223e-016 0.5
		 -0.5 1.110223e-016 -0.5 0.5 1.110223e-016 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "ctrlMouthCorner_R" -p "_M";
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
createNode mesh -n "ctrlMouthCorner_RShape" -p "ctrlMouthCorner_R";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".bnr" 0;
	setAttr -s 4 ".pt[0:3]" -type "float3"  2.5654478 0.23964912 -0.5 
		1.8329911 0.23964912 -0.5 2.5654478 0.50718844 0.5 1.8329911 0.50718844 0.5;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-016 0.5 0.5 -1.110223e-016 0.5
		 -0.5 1.110223e-016 -0.5 0.5 1.110223e-016 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "ctrlMouthCorner_L" -p "_M";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1 1 -1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode mesh -n "ctrlMouthCorner_LShape" -p "ctrlMouthCorner_L";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".bnr" 0;
	setAttr -s 4 ".pt[0:3]" -type "float3"  -2.3251204 0.23964912 -0.5 
		-3.0575786 0.23964912 -0.5 -2.3251204 0.50718844 0.5 -3.0575786 0.50718844 0.5;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-016 0.5 0.5 -1.110223e-016 0.5
		 -0.5 1.110223e-016 -0.5 0.5 1.110223e-016 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "ctrlNose_L" -p "_M";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1 1 -1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode mesh -n "ctrlNose_LShape" -p "ctrlNose_L";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".bnr" 0;
	setAttr -s 4 ".pt[0:3]" -type "float3"  -2.3251204 1.1836587 -0.5 
		-3.0575786 1.1836587 -0.5 -2.3251204 1.4511948 0.5 -3.0575786 1.4511948 0.5;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-016 0.5 0.5 -1.110223e-016 0.5
		 -0.5 1.110223e-016 -0.5 0.5 1.110223e-016 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "ctrlCheek_L" -p "_M";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1 1 -1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode mesh -n "ctrlCheek_LShape" -p "ctrlCheek_L";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".bnr" 0;
	setAttr -s 4 ".pt[0:3]" -type "float3"  -2.3251204 1.5823091 -0.5 
		-3.0575786 1.5823091 -0.5 -2.3251204 1.849842 0.5 -3.0575786 1.849842 0.5;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-016 0.5 0.5 -1.110223e-016 0.5
		 -0.5 1.110223e-016 -0.5 0.5 1.110223e-016 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "ctrlEye_L" -p "_M";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1 1 -1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode mesh -n "ctrlEye_LShape" -p "ctrlEye_L";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".bnr" 0;
	setAttr -s 4 ".pt[0:3]" -type "float3"  -2.3251204 1.9910653 -0.5 
		-3.0575786 1.9910653 -0.5 -2.3251204 2.2586019 0.5 -3.0575786 2.2586019 0.5;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-016 0.5 0.5 -1.110223e-016 0.5
		 -0.5 1.110223e-016 -0.5 0.5 1.110223e-016 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "ctrlBrow_L" -p "_M";
	setAttr -l on -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 14;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1 1 -1 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode mesh -n "ctrlBrow_LShape" -p "ctrlBrow_L";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".bnr" 0;
	setAttr -s 4 ".pt[0:3]" -type "float3"  -2.3251204 2.3923688 -0.5 
		-3.0575786 2.3923688 -0.5 -2.3251204 2.6599102 0.5 -3.0575786 2.6599102 0.5;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-016 0.5 0.5 -1.110223e-016 0.5
		 -0.5 1.110223e-016 -0.5 0.5 1.110223e-016 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "ctrlMouth_M" -p "_M";
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
createNode mesh -n "ctrlMouth_MShape" -p "ctrlMouth_M";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".bnr" 0;
	setAttr -s 4 ".pt[0:3]" -type "float3"  2.734612 0.64386219 -0.5 
		2.1559563 0.64386219 -0.5 2.734612 1.0428617 0.5 2.1559563 1.0428617 0.5;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-016 0.5 0.5 -1.110223e-016 0.5
		 -0.5 1.110223e-016 -0.5 0.5 1.110223e-016 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "ctrlBox" -p "_M";
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
createNode mesh -n "ctrlBoxShape" -p "ctrlBox";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".bnr" 0;
	setAttr -s 4 ".pt[0:3]" -type "float3"  2.3898149 0.046339191 -0.5 
		2.5007534 0.046339191 -0.5 2.3898149 0.10658962 0.5 2.5007534 0.10658962 0.5;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-016 0.5 0.5 -1.110223e-016 0.5
		 -0.5 1.110223e-016 -0.5 0.5 1.110223e-016 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "squashTop_M" -p "_M";
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
createNode mesh -n "squashTop_MShape" -p "squashTop_M";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".bnr" 0;
	setAttr -s 4 ".pt[0:3]" -type "float3"  -1.9292008 2.8094277 -0.5 
		-2.3400841 2.8094277 -0.5 -1.9292008 2.8714459 0.5 -2.3400841 2.8714459 0.5;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-016 0.5 0.5 -1.110223e-016 0.5
		 -0.5 1.110223e-016 -0.5 0.5 1.110223e-016 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "squashMiddle_M" -p "_M";
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
createNode mesh -n "squashMiddle_MShape" -p "squashMiddle_M";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".bnr" 0;
	setAttr -s 4 ".pt[0:3]" -type "float3"  -1.9292008 2.6225963 -0.5 
		-2.3400841 2.6225963 -0.5 -1.9292008 2.6846147 0.5 -2.3400841 2.6846147 0.5;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-016 0.5 0.5 -1.110223e-016 0.5
		 -0.5 1.110223e-016 -0.5 0.5 1.110223e-016 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "squashBase_M" -p "_M";
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
createNode mesh -n "squashBase_MShape" -p "squashBase_M";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".bnr" 0;
	setAttr -s 4 ".pt[0:3]" -type "float3"  -1.9292008 2.4357662 -0.5 
		-2.3400841 2.4357662 -0.5 -1.9292008 2.4977844 0.5 -2.3400841 2.4977844 0.5;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-016 0.5 0.5 -1.110223e-016 0.5
		 -0.5 1.110223e-016 -0.5 0.5 1.110223e-016 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "AimEye_M" -p "_M";
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
createNode mesh -n "AimEye_MShape" -p "AimEye_M";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".bnr" 0;
	setAttr -s 14 ".pt";
	setAttr ".pt[0:11]" -type "float3" -2.094285 2.4483089 0  -2.1425664 2.4483089 
		0  -2.2435949 2.5896947 0  -2.2435949 2.5439866 0  -1.9932532 2.5896947 0  -1.9932532 
		2.5439866 0  -2.094285 2.6853709 0  -2.1425664 2.6853709 0  -2.1425664 2.5896947 
		0  -2.1425664 2.5439866 0  -2.094285 2.5439866 0  -2.094285 2.5896947 0 ;
	setAttr ".pt[15:16]" -type "float3" 0 0 0  0 0 0 ;
createNode mesh -n "polySurfaceShape1" -p "AimEye_M";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".bnr" 0;
	setAttr -s 4 ".pt[0:3]" -type "float3"  2.734612 0.64386219 -0.5 
		2.1559563 0.64386219 -0.5 2.734612 1.0428617 0.5 2.1559563 1.0428617 0.5;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-016 0.5 0.5 -1.110223e-016 0.5
		 -0.5 1.110223e-016 -0.5 0.5 1.110223e-016 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "AimEye_R" -p "_M";
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
createNode mesh -n "AimEye_RShape" -p "AimEye_R";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 12 ".uvst[0].uvsp[0:11]" -type "float2" 0.625 0.375 0.625
		 0.625 0.375 0.625 0.375 0.375 1 0.375 0.625 0 0.625 1 1 0.625 0 0.625 0.375 1 0.375
		 0 0 0.375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".bnr" 0;
	setAttr -s 14 ".pt";
	setAttr ".pt[0:11]" -type "float3" -2.3922682 2.8411381 0  -2.4863541 2.8411381 
		0  -2.2948744 2.7489078 0  -2.2948744 2.6598179 0  -2.5837476 2.7489078 0  -2.5837476 
		2.6598179 0  -2.3922682 2.5675876 0  -2.4863541 2.5675876 0  -2.4863541 2.7489078 
		0  -2.4863541 2.6598179 0  -2.3922682 2.6598179 0  -2.3922682 2.7489078 0 ;
	setAttr ".pt[15:16]" -type "float3" 0 0 0  0 0 0 ;
	setAttr -s 12 ".vt[0:11]"  -0.052667975 -1.19949985 0 0.052667975 -1.19949985 0
		 -0.21067214 -1.049875021 0 -0.21067214 -0.9501251 0 0.21067214 -1.049875021 0 0.21067214 -0.9501251 0
		 -0.052667975 -0.80050027 0 0.052667975 -0.80050027 0 0.052667975 -1.049875021 0 0.052667975 -0.9501251 0
		 -0.052667975 -0.9501251 0 -0.052668035 -1.049875021 0;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 8 4 0 8 1 0 9 7 0
		 9 5 0 10 3 0 10 6 0 11 0 0 11 2 0;
	setAttr ".fc[0]" -type "polyFaces" 
		f 12 10 0 -6 4 2 -8 6 -4 -10 8 -2 -12
		mu 0 12 3 10 5 0 4 7 1 6 9 2 8 11;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape1" -p "AimEye_R";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".bnr" 0;
	setAttr -s 4 ".pt[0:3]" -type "float3"  2.734612 0.64386219 -0.5 
		2.1559563 0.64386219 -0.5 2.734612 1.0428617 0.5 2.1559563 1.0428617 0.5;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-016 0.5 0.5 -1.110223e-016 0.5
		 -0.5 1.110223e-016 -0.5 0.5 1.110223e-016 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "AimEye_L" -p "_M";
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
createNode mesh -n "AimEye_LShape" -p "AimEye_L";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 12 ".uvst[0].uvsp[0:11]" -type "float2" 0.625 0.375 0.625
		 0.625 0.375 0.625 0.375 0.375 1 0.375 0.625 0 0.625 1 1 0.625 0 0.625 0.375 1 0.375
		 0 0 0.375;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".bnr" 0;
	setAttr -s 14 ".pt";
	setAttr ".pt[0:11]" -type "float3" -1.7505016 2.8411381 0  -1.8445876 2.8411381 
		0  -1.6531081 2.7489078 0  -1.6531081 2.6598179 0  -1.9419811 2.7489078 0  -1.9419811 
		2.6598179 0  -1.7505016 2.5675876 0  -1.8445876 2.5675876 0  -1.8445876 2.7489078 
		0  -1.8445876 2.6598179 0  -1.7505016 2.6598179 0  -1.7505016 2.7489078 0 ;
	setAttr ".pt[15:16]" -type "float3" 0 0 0  0 0 0 ;
	setAttr -s 12 ".vt[0:11]"  -0.052667975 -1.19949985 0 0.052667975 -1.19949985 0
		 -0.21067214 -1.049875021 0 -0.21067214 -0.9501251 0 0.21067214 -1.049875021 0 0.21067214 -0.9501251 0
		 -0.052667975 -0.80050027 0 0.052667975 -0.80050027 0 0.052667975 -1.049875021 0 0.052667975 -0.9501251 0
		 -0.052667975 -0.9501251 0 -0.052668035 -1.049875021 0;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 8 4 0 8 1 0 9 7 0
		 9 5 0 10 3 0 10 6 0 11 0 0 11 2 0;
	setAttr ".fc[0]" -type "polyFaces" 
		f 12 10 0 -6 4 2 -8 6 -4 -10 8 -2 -12
		mu 0 12 3 10 5 0 4 7 1 6 9 2 8 11;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape1" -p "AimEye_L";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 1 0 0 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".bnr" 0;
	setAttr -s 4 ".pt[0:3]" -type "float3"  2.734612 0.64386219 -0.5 
		2.1559563 0.64386219 -0.5 2.734612 1.0428617 0.5 2.1559563 1.0428617 0.5;
	setAttr -s 4 ".vt[0:3]"  -0.5 -1.110223e-016 0.5 0.5 -1.110223e-016 0.5
		 -0.5 1.110223e-016 -0.5 0.5 1.110223e-016 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "EyeBrowMiddle_M" -p "_M";
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
createNode mesh -n "EyeBrowMiddle_MShape" -p "EyeBrowMiddle_M";
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
	setAttr ".bnr" 0;
	setAttr -s 20 ".pt[0:19]" -type "float3"  -0.42084691 2.340771 0 -0.35799357 
		2.2174141 -1.055012e-007 -0.26009765 2.119518 5.27506e-008 -0.13674179 2.0566645 
		5.27506e-008 -2.294062e-007 2.0350072 0 0.13674101 2.0566645 0 0.2600975 2.119518 
		-1.055012e-007 0.35799357 2.2174144 -5.27506e-008 0.42084649 2.340771 -1.055012e-007 
		0.44250423 2.4775124 0 0.42084649 2.6142545 0 0.35799351 2.7376099 1.055012e-007 
		0.26009738 2.8355076 5.27506e-008 0.13674101 2.8983595 5.27506e-008 -2.3079218e-007 
		2.9200168 -1.055012e-007 -0.13674167 2.8983595 1.055012e-007 -0.26009753 2.8355076 
		1.055012e-007 -0.35799333 2.7376099 -5.27506e-008 -0.4208464 2.6142545 -5.27506e-008 
		-0.44250408 2.4775124 0;
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
createNode transform -n "LipRegion_M" -p "_M";
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
createNode mesh -n "LipRegion_MShape" -p "LipRegion_M";
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
	setAttr ".bnr" 0;
	setAttr -s 20 ".pt[0:19]" -type "float3"  -1.4838141 0.55986673 0 -1.4633698 
		0.42929497 -7.5494818e-008 -1.4315085 0.32567379 3.7747409e-008 -1.3913667 0.25914446 
		3.7747409e-008 -1.3468723 0.23621972 0 -1.3023815 0.25914451 0 -1.2622441 0.32567388 
		-7.5494818e-008 -1.2303894 0.42929497 -3.7747409e-008 -1.209938 0.55986696 -7.5494818e-008 
		-1.2028846 0.70460618 0 -1.2099359 0.84934533 0 -1.2303864 0.97991627 7.5494818e-008 
		-1.2622427 1.0835395 3.7747409e-008 -1.3023814 1.1500655 3.7747409e-008 -1.3468723 
		1.1729909 -7.5494818e-008 -1.3913689 1.1500661 7.5494818e-008 -1.4315103 1.0835395 
		7.5494818e-008 -1.46337 0.9799158 -3.7747409e-008 -1.4838176 0.84934533 -3.7747409e-008 
		-1.4908675 0.70460629 0;
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
createNode transform -n "Nose_M" -p "_M";
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
createNode mesh -n "Nose_MShape" -p "Nose_M";
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
	setAttr ".bnr" 0;
	setAttr -s 20 ".pt[0:19]" -type "float3"  -0.40048587 1.2282424 0 -0.34067339 
		1.110854 -1.0039692e-007 -0.24751389 1.0176939 5.0198462e-008 -0.1301263 0.95788103 
		5.0198462e-008 -2.0861626e-007 0.93727112 0 0.13012518 0.95788115 0 0.24751368 1.017694 
		-1.0039692e-007 0.34067345 1.1108541 -5.0198462e-008 0.40048558 1.2282424 -1.0039692e-007 
		0.42109537 1.3583676 0 0.40048558 1.4884933 0 0.34067339 1.6058797 1.0039692e-007 
		0.24751356 1.699041 5.0198462e-008 0.13012519 1.7588514 5.0198462e-008 -2.0861626e-007 
		1.779461 -1.0039692e-007 -0.13012618 1.7588514 1.0039692e-007 -0.24751377 1.699041 
		1.0039692e-007 -0.34067315 1.6058797 -5.0198462e-008 -0.40048549 1.4884933 -5.0198462e-008 
		-0.42109522 1.3583676 0;
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
createNode transform -n "NoseUnder_M" -p "_M";
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
createNode mesh -n "NoseUnder_MShape" -p "NoseUnder_M";
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
	setAttr ".bnr" 0;
	setAttr -s 20 ".pt[0:19]" -type "float3"  -0.42084691 1.0531737 0 -0.35799357 
		0.92981648 -1.055012e-007 -0.26009765 0.83192015 5.27506e-008 -0.13674179 0.76906675 
		5.27506e-008 -2.294062e-007 0.74740946 0 0.13674101 0.76906675 0 0.2600975 0.83192015 
		-1.055012e-007 0.35799357 0.92981672 -5.27506e-008 0.42084649 1.0531737 -1.055012e-007 
		0.44250423 1.1899149 0 0.42084649 1.3266571 0 0.35799351 1.4500126 1.055012e-007 
		0.26009738 1.5479099 5.27506e-008 0.13674101 1.6107618 5.27506e-008 -2.3079218e-007 
		1.6324189 -1.055012e-007 -0.13674167 1.6107618 1.055012e-007 -0.26009753 1.5479099 
		1.055012e-007 -0.35799333 1.4500126 -5.27506e-008 -0.4208464 1.3266571 -5.27506e-008 
		-0.44250408 1.1899149 0;
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
createNode transform -n "NoseMiddle_M" -p "_M";
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
createNode mesh -n "NoseMiddle_MShape" -p "NoseMiddle_M";
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
	setAttr ".bnr" 0;
	setAttr -s 20 ".pt[0:19]" -type "float3"  -0.42084691 1.598699 0 -0.35799357 
		1.4753423 -1.055012e-007 -0.26009765 1.3774461 5.27506e-008 -0.13674179 1.3145926 
		5.27506e-008 -2.294062e-007 1.2929356 0 0.13674101 1.3145926 0 0.2600975 1.3774461 
		-1.055012e-007 0.35799357 1.4753425 -5.27506e-008 0.42084649 1.598699 -1.055012e-007 
		0.44250423 1.735441 0 0.42084649 1.8721837 0 0.35799351 1.9955394 1.055012e-007 0.26009738 
		2.0934372 5.27506e-008 0.13674101 2.1562891 5.27506e-008 -2.3079218e-007 2.1779463 
		-1.055012e-007 -0.13674167 2.1562891 1.055012e-007 -0.26009753 2.0934372 1.055012e-007 
		-0.35799333 1.9955394 -5.27506e-008 -0.4208464 1.8721837 -5.27506e-008 -0.44250408 
		1.735441 0;
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
createNode transform -n "cam" -p "Group";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -1.3849950652414527 1.4870805131836751 14.350749866588373 ;
createNode camera -n "camShape" -p "cam";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 13.850749896390692;
	setAttr ".ow" 6.1013672246968014;
	setAttr ".imn" -type "string" "front1";
	setAttr ".den" -type "string" "front1_depth";
	setAttr ".man" -type "string" "front1_mask";
	setAttr ".tp" -type "double3" 1.0966866630101688 0.71163755102025084 0.049999997019768205 ;
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -n "_R" -p "Group";
createNode transform -n "Cheek_R" -p "_R";
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
createNode mesh -n "Cheek_RShape" -p "Cheek_R";
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
	setAttr ".bnr" 0;
	setAttr -s 20 ".pt[0:19]" -type "float3"  -1.2703867 1.1346443 0 -1.2102984 
		1.0167133 -1.0086045e-007 -1.1167088 0.9231239 5.0430224e-008 -0.9987787 0.86303562 
		5.0430224e-008 -0.86805218 0.84233052 0 -0.73732567 0.86303568 0 -0.61939549 0.92312402 
		-1.0086045e-007 -0.525805 1.0167134 -5.0430224e-008 -0.46571651 1.1346443 -1.0086045e-007 
		-0.44501153 1.2653702 0 -0.46571651 1.3960968 0 -0.52580506 1.514026 1.0086045e-007 
		-0.61939561 1.6076167 5.0430224e-008 -0.73732567 1.667704 5.0430224e-008 -0.86805218 
		1.688409 -1.0086045e-007 -0.99877858 1.667704 1.0086045e-007 -1.1167086 1.6076167 
		1.0086045e-007 -1.2102982 1.514026 -5.0430224e-008 -1.2703863 1.3960968 -5.0430224e-008 
		-1.2910913 1.2653702 0;
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
createNode transform -n "ear_R" -p "_R";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -0.80102289838751872 -0.1308862528745125 0 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1 1 10 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode mesh -n "ear_RShape" -p "ear_R";
	setAttr -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 26 ".uvst[0].uvsp[0:25]" -type "float2" 0 0 0.1 0 0.2 0 0.30000001
		 0 0.40000001 0 0.5 0 0.60000002 0 0.69999999 0 0.80000001 0 0.90000004 0 1 0 0 0.60000002
		 0 0.69999999 0 0.80000001 0 0.90000004 0 1 0.1 1 0.2 1 0.30000001 1 0.40000001 1
		 0.5 1 0.60000002 1 0.69999999 1 0.80000001 1 0.90000004 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".bnr" 0;
	setAttr -s 26 ".pt[0:25]" -type "float3"  0.46396169 0.59669316 -0.10000002 
		0.42972052 0.77835977 -0.10000003 0.36758459 0.94223851 -0.10000002 0.30316079 1.0121889 
		-0.10000002 0.23692718 1.0865636 -0.10000002 0.14823981 1.1520576 -0.10000002 0.06742125 
		1.1932172 -0.10000002 0.036334835 1.1773473 -0.10000002 -0.030289918 1.2331332 -0.10000003 
		-0.11349593 1.2961111 -0.10000002 -0.30413923 1.5325005 -0.10000002 0.53589189 0.02324287 
		-0.10000001 0.51810765 -0.073901117 -0.10000002 0.51184934 -0.19416024 -0.099999979 
		0.50577319 -0.24346745 -0.10000002 0.48056981 -0.37154731 -0.099999979 0.40471005 
		-0.56845629 -0.099999972 0.31038976 -0.6620186 -0.099999972 0.23029864 -0.73036885 
		-0.099999972 0.15150148 -0.71524054 -0.099999972 0.093873911 -0.72944695 -0.1 -0.0020561768 
		-0.73394066 -0.099999972 -0.10993834 -0.71507227 -0.099999972 -0.17622428 -0.68847555 
		-0.099999972 -0.29129496 -0.65255481 -0.099999972 -0.39655063 -0.65378845 -0.1;
	setAttr -s 26 ".vt[0:25]"  -1.035027981 1.3493638 2.9802322e-008 -0.96788323 1.09638083 2.9802322e-008
		 -0.86459756 0.85325336 2.9802322e-008 -0.77116787 0.7251184 2.9802322e-008 -0.67773962 0.60026914 2.9802322e-008
		 -0.56788325 0.48856169 2.9802322e-008 -0.46788281 0.40313858 2.9802322e-008 -0.36788279 0.30785912 2.9802322e-008
		 -0.26131231 0.23229253 2.9802322e-008 -0.1317417 0.15344006 2.9802322e-008 0 0.1501548 2.9802322e-008
		 -1.13687873 1.98878908 7.4505806e-009 -1.13687873 2.13478541 2.9802322e-008 -1.14083266 2.29424548 -2.9802322e-008
		 -1.14083266 2.39424539 2.9802322e-008 -1.1155324 2.59544778 -2.9802322e-008 -1.040121198 2.85317111 -2.9802322e-008
		 -0.94807339 2.99631 -2.9802322e-008 -0.83216912 3.07980752 -2.9802322e-008 -0.71626508 3.07185483 -2.9802322e-008
		 -0.62819296 3.095712185 -2.9802322e-008 -0.50433666 3.083783627 -2.9802322e-008 -0.38048047 3.051975489 -2.9802322e-008
		 -0.28445643 2.97245312 -2.9802322e-008 -0.14867175 2.896909 -2.9802322e-008 0 2.84919524 -2.9802322e-008;
	setAttr -s 26 ".ed[0:25]"  0 1 0 0 11 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0
		 6 7 0 7 8 0 8 9 0 9 10 0 11 12 0 12 13 0 13 14 0 14 15 0 10 25 0 15 16 0 16 17 0
		 17 18 0 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0;
	setAttr ".fc[0]" -type "polyFaces" 
		f 26 15 -26 -25 -24 -23 -22 -21 -20 -19 -18 -17 -15 -14 -13 -12 -2 0 2 3 4 5 6 7 8 9
		 10
		mu 0 26 10 25 24 23 22 21 20 19 18 17 16 15 14 13 12 11 0 1 2 3 4 5 6 7 8 9;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "eyeBall_R" -p "_R";
	setAttr -l on -k off ".v";
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
createNode mesh -n "eyeBall_RShape" -p "eyeBall_R";
	setAttr -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
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
	setAttr ".bnr" 0;
	setAttr -s 20 ".pt[0:19]" -type "float3"  -0.69657117 1.9353905 -0.89999998 
		-0.67113298 1.8638299 -0.9000001 -0.63223588 1.8102716 -0.89999998 -0.58419973 1.7767906 
		-0.89999998 -0.53183532 1.7637235 -0.89999998 -0.4799262 1.7718661 -0.89999998 -0.43289623 
		1.8028991 -0.9000001 -0.39486134 1.857365 -0.89999998 -0.3696813 1.9322543 -0.9000001 
		-0.36037338 2.0207016 -0.89999998 -0.3682425 2.1134861 -0.89999998 -0.39244911 2.2005782 
		-0.89999998 -0.43021062 2.2720435 -0.89999998 -0.47748309 2.3186858 -0.89999998 -0.52980775 
		2.3336804 -0.9000001 -0.5826993 2.3149452 -0.89999998 -0.6314109 2.2659624 -0.89999998 
		-0.67090201 2.194289 -0.89999998 -0.69660127 2.1090693 -0.89999998 -0.70543599 2.0197456 
		-0.89999998;
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
createNode transform -n "iris_R" -p "_R";
	setAttr -l on -k off ".v";
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
createNode mesh -n "iris_RShape" -p "iris_R";
	setAttr -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
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
	setAttr ".bnr" 0;
	setAttr -s 20 ".pt[0:19]" -type "float3"  -0.82188785 1.912306 -0.8238135 
		-0.76800436 1.8065537 -0.82381362 -0.68408 1.7226292 -0.8238135 -0.57832944 1.6687499 
		-0.8238135 -0.46110278 1.6501802 -0.8238135 -0.34387645 1.6687499 -0.8238135 -0.23812544 
		1.7226293 -0.82381362 -0.1542007 1.8065538 -0.82381356 -0.10031775 1.912306 -0.82381362 
		-0.081751011 2.0295327 -0.8238135 -0.10031775 2.1467619 -0.8238135 -0.15420076 2.2525098 
		-0.82381344 -0.23812556 2.3364344 -0.8238135 -0.34387648 2.3903146 -0.8238135 -0.46110275 
		2.408885 -0.82381362 -0.57832932 2.3903146 -0.82381344 -0.68407983 2.3364344 -0.82381344 
		-0.76800412 2.2525098 -0.82381356 -0.82188755 2.1467619 -0.82381356 -0.84045488 2.0295327 
		-0.8238135;
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
createNode transform -n "pupil_R" -p "_R";
	setAttr -l on -k off ".v";
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
createNode mesh -n "pupil_RShape" -p "pupil_R";
	setAttr -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
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
	setAttr ".bnr" 0;
	setAttr -s 20 ".pt[0:19]" -type "float3"  -0.8798582 1.8934698 -0.67618638 
		-0.81731808 1.7707243 -0.67618638 -0.71990758 1.6733167 -0.67618638 -0.59716469 1.6107776 
		-0.67618638 -0.46110293 1.5892255 -0.67618638 -0.32503989 1.6107777 -0.67618638 -0.20229682 
		1.6733168 -0.67618638 -0.10488718 1.7707244 -0.67618638 -0.042346213 1.8934698 -0.67618638 
		-0.020796174 2.0295329 -0.67618638 -0.042346213 2.1655996 -0.67618638 -0.10488724 
		2.2883394 -0.67618638 -0.20229694 2.3857489 -0.67618638 -0.32503989 2.4482884 -0.67618638 
		-0.46110293 2.4698379 -0.67618638 -0.59716457 2.4482884 -0.67618638 -0.71990728 2.3857489 
		-0.67618638 -0.81731784 2.2883394 -0.67618638 -0.87985784 2.1655996 -0.67618638 -0.90140909 
		2.0295329 -0.67618638;
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
createNode transform -n "eyeBrow_R" -p "_R";
	setAttr -l on -k off ".v";
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
createNode mesh -n "eyeBrow_RShape" -p "eyeBrow_R";
	setAttr -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
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
	setAttr ".bnr" 0;
	setAttr -s 20 ".pt[0:19]" -type "float3"  -0.71043336 2.378298 0.5 
		-0.73196888 2.257021 0.49999988 -0.7021845 2.1546276 0.5 -0.67801106 2.0948305 0.5 
		-0.61390686 2.0700459 0.5 -0.57271343 2.0773251 0.5 -0.54544646 2.1140506 0.49999988 
		-0.52737385 2.1775839 0.5 -0.49087274 2.2744153 0.49999988 -0.45604634 2.4135571 
		0.5 -0.45173144 2.568656 0.5 -0.47918081 2.7444985 0.5 -0.52637893 2.8811913 0.5 
		-0.57118106 2.9823804 0.5 -0.58691227 3.020694 0.49999988 -0.66211706 2.9985597 0.5 
		-0.6982609 2.9161794 0.5 -0.74110895 2.8005743 0.5 -0.73091143 2.6463771 0.5 -0.72638547 
		2.5051775 0.5;
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
createNode transform -n "hair_R" -p "_R";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1 1 10 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode mesh -n "hair_RShape" -p "hair_R";
	addAttr -ci true -sn "mso" -ln "miShadingSamplesOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "msh" -ln "miShadingSamples" -min 0 -smx 8 -at "float";
	addAttr -ci true -sn "mdo" -ln "miMaxDisplaceOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mmd" -ln "miMaxDisplace" -min 0 -smx 1 -at "float";
	setAttr -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 26 ".uvst[0].uvsp[0:25]" -type "float2" 0 0 0.1 0 0.2 0 0.30000001
		 0 0.40000001 0 0.5 0 0.60000002 0 0.69999999 0 0.80000001 0 0.90000004 0 1 0 0 0.60000002
		 0 0.69999999 0 0.80000001 0 0.90000004 0 1 0.1 1 0.2 1 0.30000001 1 0.40000001 1
		 0.5 1 0.60000002 1 0.69999999 1 0.80000001 1 0.90000004 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".bnr" 0;
	setAttr -s 26 ".pt[0:25]" -type "float3"  -0.094134204 1.2508366 -0.1 
		-0.085865915 1.766566 -0.1 -0.1015723 2.1511874 -0.1 -0.068276882 2.3699322 -0.1 
		-0.045819454 2.4896126 -0.1 -0.063303784 2.6236048 -0.1 -0.036205571 2.6961389 -0.1 
		-0.0048661316 2.7611957 -0.1 -0.013867149 2.7538452 -0.1 -0.011604209 2.7628911 -0.1 
		0 2.7181671 -0.1 -0.030676087 0.26235357 -0.1 -0.023150545 -0.1052907 -0.1 -0.065752931 
		-0.19385248 -0.1 -0.14408118 -0.15459195 -0.1 -0.22531068 -0.13197565 -0.1 -0.32847992 
		-0.022796039 -0.1 -0.35789278 0.21808667 -0.1 -0.28960097 0.40019867 -0.1 -0.20434219 
		0.56604803 -0.1 -0.11783411 0.63672036 -0.1 -0.10459045 0.69589055 -0.1 -0.074898735 
		0.7849651 -0.1 -0.040965967 0.86979789 -0.1 -0.079140671 1.0012887 -0.1 0 1.087797 
		-0.1;
	setAttr -s 26 ".vt[0:25]"  -1.035027981 1.3493638 2.9802322e-008 -0.96788323 1.09638083 2.9802322e-008
		 -0.86459756 0.85325336 2.9802322e-008 -0.77116787 0.7251184 2.9802322e-008 -0.67773962 0.60026914 2.9802322e-008
		 -0.56788325 0.48856169 2.9802322e-008 -0.46788281 0.40313858 2.9802322e-008 -0.36788279 0.30785912 2.9802322e-008
		 -0.26131231 0.23229253 2.9802322e-008 -0.1317417 0.15344006 2.9802322e-008 0 0.1501548 2.9802322e-008
		 -1.13687873 1.98878908 7.4505806e-009 -1.13687873 2.13478541 2.9802322e-008 -1.14083266 2.29424548 -2.9802322e-008
		 -1.14083266 2.39424539 2.9802322e-008 -1.1155324 2.59544778 -2.9802322e-008 -1.040121198 2.85317111 -2.9802322e-008
		 -0.94807339 2.99631 -2.9802322e-008 -0.83216912 3.07980752 -2.9802322e-008 -0.71626508 3.07185483 -2.9802322e-008
		 -0.62819296 3.095712185 -2.9802322e-008 -0.50433666 3.083783627 -2.9802322e-008 -0.38048047 3.051975489 -2.9802322e-008
		 -0.28445643 2.97245312 -2.9802322e-008 -0.14867175 2.896909 -2.9802322e-008 0 2.84919524 -2.9802322e-008;
	setAttr -s 26 ".ed[0:25]"  0 1 0 0 11 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0
		 6 7 0 7 8 0 8 9 0 9 10 0 11 12 0 12 13 0 13 14 0 14 15 0 10 25 0 15 16 0 16 17 0
		 17 18 0 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0;
	setAttr ".fc[0]" -type "polyFaces" 
		f 26 15 -26 -25 -24 -23 -22 -21 -20 -19 -18 -17 -15 -14 -13 -12 -2 0 2 3 4 5 6 7 8 9
		 10
		mu 0 26 10 25 24 23 22 21 20 19 18 17 16 15 14 13 12 11 0 1 2 3 4 5 6 7 8 9;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "SmilePull_R" -p "_R";
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
createNode mesh -n "SmilePull_RShape" -p "SmilePull_R";
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
	setAttr ".bnr" 0;
	setAttr -s 20 ".pt[0:19]" -type "float3"  -1.0056071 0.75652409 0 -0.90530527 
		0.66577208 -9.2443912e-008 -0.76287955 0.59374988 4.622196e-008 -0.60604578 0.54750943 
		4.622196e-008 -0.45658708 0.53157723 0 -0.32710829 0.54750931 0 -0.22396906 0.59375 
		-9.2443912e-008 -0.15169312 0.6657722 -4.622196e-008 -0.11028652 0.75652409 -9.2443912e-008 
		-0.096776351 0.85712409 0 -0.11028652 0.95772481 0 -0.15169318 1.0484773 9.2443912e-008 
		-0.22396918 1.1204981 4.622196e-008 -0.32710829 1.1667373 4.622196e-008 -0.45658708 
		1.1826699 -9.2443912e-008 -0.60604566 1.1667378 9.2443912e-008 -0.76287943 1.1204985 
		9.2443912e-008 -0.90530503 1.0484778 -4.622196e-008 -1.0056068 0.95772606 -4.622196e-008 
		-1.0418205 0.85712409 0;
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
createNode transform -n "upperLipA_R" -p "_R";
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
createNode mesh -n "upperLipA_RShape" -p "upperLipA_R";
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
	setAttr ".bnr" 0;
	setAttr -s 20 ".pt[0:19]" -type "float3"  -0.66654402 0.76849687 0.038265921 
		-0.60109562 0.64004409 0.038265802 -0.49915603 0.53810483 0.03826597 -0.37070447 
		0.47265413 0.03826597 -0.22831488 0.45010158 0.038265921 -0.085925236 0.47265419 
		0.038265921 0.042526495 0.53810495 0.038265802 0.14446627 0.64004421 0.038265862 
		0.20991546 0.76849687 0.038265802 0.23246759 0.91088545 0.038265921 0.20991546 1.0532759 
		0.038265921 0.14446621 1.1817254 0.038266029 0.042526376 1.2836653 0.03826597 -0.085925281 
		1.3490536 0.03826597 -0.22831494 1.3714248 0.038265802 -0.37070435 1.3490536 0.038266029 
		-0.49915591 1.2836653 0.038266029 -0.60109538 1.1817254 0.038265862 -0.66654366 1.0532759 
		0.038265862 -0.68909693 0.91088545 0.038265921;
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
createNode transform -n "lowerLipA_R" -p "_R";
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
createNode mesh -n "lowerLipA_RShape" -p "lowerLipA_R";
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
	setAttr ".bnr" 0;
	setAttr -s 20 ".pt[0:19]" -type "float3"  -0.66541022 0.56242555 0.080578595 
		-0.59996182 0.43397239 0.080578491 -0.49802145 0.33203289 0.080578655 -0.36956933 
		0.26658407 0.080578655 -0.22717978 0.24403195 0.080578595 -0.084790364 0.26658413 
		0.080578595 0.043661408 0.33203301 0.080578491 0.14560123 0.43397251 0.080578536 
		0.21105044 0.56242555 0.080578491 0.2336026 0.70481515 0.080578595 0.21105044 0.84720421 
		0.080578595 0.14560117 0.97565633 0.0805787 0.043661289 1.0775973 0.080578655 -0.084790424 
		1.1430459 0.080578655 -0.22717977 1.1655977 0.080578491 -0.36956921 1.1430459 0.0805787 
		-0.49802133 1.0775973 0.0805787 -0.59996158 0.97565633 0.080578536 -0.66540986 0.84720421 
		0.080578536 -0.68796313 0.70481515 0.080578595;
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
createNode transform -n "NoseCorner_R" -p "_R";
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
createNode mesh -n "NoseCorner_RShape" -p "NoseCorner_R";
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
	setAttr ".bnr" 0;
	setAttr -s 20 ".pt[0:19]" -type "float3"  -0.7158953 1.2298993 0 -0.65319109 
		1.1068348 -1.0525153e-007 -0.55552655 1.0091708 5.2625765e-008 -0.43246236 0.94646597 
		5.2625765e-008 -0.29604453 0.92485934 0 -0.15962659 0.94646609 0 -0.036562555 1.0091709 
		-1.0525153e-007 0.061101772 1.1068349 -5.2625765e-008 0.12380613 1.2298993 -1.0525153e-007 
		0.14541256 1.3663164 0 0.12380613 1.5027343 0 0.061101712 1.6257976 1.0525153e-007 
		-0.036562674 1.7234628 5.2625765e-008 -0.1596266 1.7861665 5.2625765e-008 -0.29604453 
		1.807773 -1.0525153e-007 -0.43246225 1.7861665 1.0525153e-007 -0.55552644 1.7234628 
		1.0525153e-007 -0.65319085 1.6257976 -5.2625765e-008 -0.71589494 1.5027343 -5.2625765e-008 
		-0.73750126 1.3663164 0;
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
createNode transform -n "CheekRaiser_R" -p "_R";
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
createNode mesh -n "CheekRaiser_RShape" -p "CheekRaiser_R";
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
	setAttr ".bnr" 0;
	setAttr -s 20 ".pt[0:19]" -type "float3"  -1.0558577 1.469911 0 -0.99834168 
		1.3514594 -9.6543474e-008 -0.90875727 1.2605247 4.8271737e-008 -0.79587436 1.2030061 
		4.8271737e-008 -0.670744 1.1831875 0 -0.54561347 1.2030063 0 -0.43273202 1.2605249 
		-9.6543474e-008 -0.34314781 1.3514595 -4.8271737e-008 -0.28563136 1.469911 -9.6543474e-008 
		-0.26581249 1.6073527 0 -0.28563136 1.7526969 0 -0.34314787 1.8919942 9.6543474e-008 
		-0.43273214 2.0090227 4.8271737e-008 -0.54561347 2.0875754 4.8271737e-008 -0.670744 
		2.1153142 -9.6543474e-008 -0.79587424 2.0875754 9.6543474e-008 -0.90875715 2.0090227 
		9.6543474e-008 -0.99834144 1.8919942 -4.8271737e-008 -1.0558573 1.7526969 -4.8271737e-008 
		-1.075677 1.6073527 0;
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
createNode transform -n "innerLid_R" -p "_R";
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
createNode mesh -n "innerLid_RShape" -p "innerLid_R";
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
	setAttr ".bnr" 0;
	setAttr -s 20 ".pt[0:19]" -type "float3"  -0.6344949 1.8673868 0 -0.57094663 
		1.7426661 -1.0666771e-007 -0.47196832 1.6436877 5.3333856e-008 -0.34724852 1.5801396 
		5.3333856e-008 -0.20899497 1.5582426 0 -0.07074181 1.5801396 0 0.05397848 1.6436878 
		-1.0666771e-007 0.15295701 1.7426662 -5.3333856e-008 0.21650504 1.8673868 -1.0666771e-007 
		0.23840214 2.00564 0 0.21650504 2.1438937 0 0.15295695 2.2686129 1.0666771e-007 0.053978361 
		2.3675928 5.3333856e-008 -0.07074181 2.4311395 5.3333856e-008 -0.20899497 2.4530365 
		-1.0666771e-007 -0.34724841 2.4311395 1.0666771e-007 -0.4719682 2.3675928 1.0666771e-007 
		-0.5709464 2.2686129 -5.3333856e-008 -0.63449454 2.1438937 -5.3333856e-008 -0.65639156 
		2.00564 0;
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
createNode transform -n "outerLid_R" -p "_R";
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
createNode mesh -n "outerLid_RShape" -p "outerLid_R";
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
	setAttr ".bnr" 0;
	setAttr -s 20 ".pt[0:19]" -type "float3"  -1.2754328 1.8673868 0 -1.2118845 
		1.7426661 -1.0666771e-007 -1.1129062 1.6436877 5.3333856e-008 -0.98818636 1.5801396 
		5.3333856e-008 -0.84993267 1.5582426 0 -0.71167952 1.5801396 0 -0.58695918 1.6436878 
		-1.0666771e-007 -0.48798066 1.7426662 -5.3333856e-008 -0.42443269 1.8673868 -1.0666771e-007 
		-0.40253568 2.00564 0 -0.42443269 2.1438937 0 -0.48798072 2.2686129 1.0666771e-007 
		-0.5869593 2.3675928 5.3333856e-008 -0.71167952 2.4311395 5.3333856e-008 -0.84993267 
		2.4530365 -1.0666771e-007 -0.98818624 2.4311395 1.0666771e-007 -1.1129061 2.3675928 
		1.0666771e-007 -1.2118843 2.2686129 -5.3333856e-008 -1.2754325 2.1438937 -5.3333856e-008 
		-1.2973295 2.00564 0;
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
createNode transform -n "upperLid_R" -p "_R";
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
createNode mesh -n "upperLid_RShape" -p "upperLid_R";
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
	setAttr ".bnr" 0;
	setAttr -s 20 ".pt[0:19]" -type "float3"  -0.92406213 2.1358476 0 -0.86636734 
		2.0226152 -9.6839507e-008 -0.77650976 1.9327519 4.8419754e-008 -0.66328311 1.875062 
		4.8419754e-008 -0.53776819 1.8551784 0 -0.41225064 1.875062 0 -0.29902193 1.9327524 
		-9.6839507e-008 -0.20916335 2.0226159 -4.8419754e-008 -0.1514708 2.1358476 -9.6839507e-008 
		-0.13159131 2.2613571 0 -0.1514708 2.3868647 0 -0.20916341 2.5000949 9.6839507e-008 
		-0.29902205 2.5899522 4.8419754e-008 -0.41225067 2.6476502 4.8419754e-008 -0.53776819 
		2.6675203 -9.6839507e-008 -0.66328299 2.6476502 9.6839507e-008 -0.77650964 2.5899522 
		9.6839507e-008 -0.8663671 2.5000949 -4.8419754e-008 -0.92406178 2.3868647 -4.8419754e-008 
		-0.94394034 2.2613571 0;
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
createNode transform -n "lowerLid_R" -p "_R";
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
createNode mesh -n "lowerLid_RShape" -p "lowerLid_R";
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
	setAttr ".bnr" 0;
	setAttr -s 20 ".pt[0:19]" -type "float3"  -0.94825786 1.702896 0 -0.88695097 
		1.5825748 -1.0290524e-007 -0.79146373 1.4870877 5.145262e-008 -0.671143 1.4257811 
		5.145262e-008 -0.5377658 1.4046564 0 -0.40438944 1.4257811 0 -0.28406841 1.4870878 
		-1.0290524e-007 -0.18858105 1.5825751 -5.145262e-008 -0.1272746 1.702896 -1.0290524e-007 
		-0.10614996 1.8362725 0 -0.1272746 1.9696496 0 -0.18858111 2.0899696 1.0290524e-007 
		-0.28406852 2.1854584 5.145262e-008 -0.40438941 2.2467632 5.145262e-008 -0.5377658 
		2.2678881 -1.0290524e-007 -0.67114288 2.2467632 1.0290524e-007 -0.79146361 2.1854584 
		1.0290524e-007 -0.88695073 2.0899696 -5.145262e-008 -0.94825751 1.9696496 -5.145262e-008 
		-0.96938205 1.8362725 0;
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
createNode transform -n "upperInnerLid_R" -p "_R";
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
createNode mesh -n "upperInnerLid_RShape" -p "upperInnerLid_R";
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
	setAttr ".bnr" 0;
	setAttr -s 20 ".pt[0:19]" -type "float3"  -0.7341646 2.0485897 0 -0.66983038 
		1.9223241 -1.0798893e-007 -0.56962538 1.8221202 5.3994462e-008 -0.44335982 1.7577835 
		5.3994462e-008 -0.30339384 1.735615 0 -0.16342825 1.7577834 0 -0.037163146 1.8221202 
		-1.0798893e-007 0.063041627 1.9223241 -5.3994462e-008 0.12737662 2.0485897 -1.0798893e-007 
		0.14954478 2.1885545 0 0.12737662 2.3285213 0 0.063041568 2.4547839 1.0798893e-007 
		-0.037163265 2.5549881 5.3994462e-008 -0.16342831 2.6192505 5.3994462e-008 -0.30339387 
		2.6412017 -1.0798893e-007 -0.4433597 2.6192505 1.0798893e-007 -0.56962526 2.5549881 
		1.0798893e-007 -0.66983014 2.4547839 -5.3994462e-008 -0.73416412 2.3285213 -5.3994462e-008 
		-0.75633383 2.1885545 0;
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
createNode transform -n "lowerInnerLid_R" -p "_R";
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
createNode mesh -n "lowerInnerLid_RShape" -p "lowerInnerLid_R";
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
	setAttr ".bnr" 0;
	setAttr -s 20 ".pt[0:19]" -type "float3"  -0.75207454 1.7294707 0 -0.68774039 
		1.6032056 -1.0798893e-007 -0.58753538 1.5030018 5.3994462e-008 -0.46126968 1.438665 
		5.3994462e-008 -0.32130367 1.4164965 0 -0.18133773 1.438665 0 -0.055072758 1.5030018 
		-1.0798893e-007 0.045132015 1.6032057 -5.3994462e-008 0.10946706 1.7294707 -1.0798893e-007 
		0.13163525 1.8694352 0 0.10946706 2.0094016 0 0.045131955 2.1356647 1.0798893e-007 
		-0.055072878 2.2358685 5.3994462e-008 -0.18133779 2.3001311 5.3994462e-008 -0.32130367 
		2.3220823 -1.0798893e-007 -0.46126956 2.3001311 1.0798893e-007 -0.58753526 2.2358685 
		1.0798893e-007 -0.68774015 2.1356647 -5.3994462e-008 -0.75207418 2.0094016 -5.3994462e-008 
		-0.77424377 1.8694352 0;
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
createNode transform -n "upperOuterLid_R" -p "_R";
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
createNode mesh -n "upperOuterLid_RShape" -p "upperOuterLid_R";
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
	setAttr ".bnr" 0;
	setAttr -s 20 ".pt[0:19]" -type "float3"  -1.1900468 2.0485878 0 -1.1257125 
		1.9223225 -1.0798893e-007 -1.0255077 1.822119 5.3994462e-008 -0.89924181 1.757782 
		5.3994462e-008 -0.75927591 1.7356133 0 -0.61931002 1.7577817 0 -0.49304491 1.8221188 
		-1.0798893e-007 -0.39284006 1.9223225 -5.3994462e-008 -0.32850504 2.0485878 -1.0798893e-007 
		-0.30633676 2.1885538 0 -0.32850504 2.3285208 0 -0.39284012 2.4547839 1.0798893e-007 
		-0.49304503 2.5549874 5.3994462e-008 -0.61931002 2.6192503 5.3994462e-008 -0.75927591 
		2.6412013 -1.0798893e-007 -0.89924169 2.6192503 1.0798893e-007 -1.0255076 2.5549874 
		1.0798893e-007 -1.1257123 2.4547839 -5.3994462e-008 -1.1900464 2.3285208 -5.3994462e-008 
		-1.2122159 2.1885538 0;
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
createNode transform -n "lowerOuterLid_R" -p "_R";
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
createNode mesh -n "lowerOuterLid_RShape" -p "lowerOuterLid_R";
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
	setAttr ".bnr" 0;
	setAttr -s 20 ".pt[0:19]" -type "float3"  -1.1623679 1.7310985 0 -1.0980334 
		1.6048337 -1.0798893e-007 -0.9978289 1.50463 5.3994462e-008 -0.87156284 1.4402932 
		5.3994462e-008 -0.73159707 1.4181246 0 -0.59163117 1.4402931 0 -0.46536624 1.50463 
		-1.0798893e-007 -0.36516139 1.6048336 -5.3994462e-008 -0.30082631 1.7310985 -1.0798893e-007 
		-0.27865815 1.8710641 0 -0.30082631 2.0110302 0 -0.36516145 2.1372931 1.0798893e-007 
		-0.46536636 2.2374971 5.3994462e-008 -0.59163117 2.3017597 5.3994462e-008 -0.73159707 
		2.3237109 -1.0798893e-007 -0.87156272 2.3017597 1.0798893e-007 -0.99782878 2.2374971 
		1.0798893e-007 -1.0980332 2.1372931 -5.3994462e-008 -1.1623673 2.0110302 -5.3994462e-008 
		-1.1845372 1.8710641 0;
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
createNode transform -n "EyeRegion_R" -p "_R";
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
createNode mesh -n "EyeRegion_RShape" -p "EyeRegion_R";
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
	setAttr ".bnr" 0;
	setAttr -s 20 ".pt[0:19]" -type "float3"  -1.9515764 1.9037715 0 -1.9024537 
		1.8063235 -8.3342641e-008 -1.8259363 1.7289885 4.1671321e-008 -1.7295244 1.6793371 
		4.1671321e-008 -1.6226488 1.6622267 0 -1.5157741 1.6793373 0 -1.4193631 1.7289886 
		-8.3342641e-008 -1.3428469 1.8063236 -4.1671321e-008 -1.2937229 1.9037715 -8.3342641e-008 
		-1.2767962 2.0117903 0 -1.2937229 2.1198137 0 -1.3428468 2.217258 8.3342641e-008 
		-1.4193633 2.2945936 4.1671321e-008 -1.5157748 2.3442421 4.1671321e-008 -1.6226488 
		2.3613513 -8.3342641e-008 -1.7295243 2.3442421 8.3342641e-008 -1.8259361 2.2945936 
		8.3342641e-008 -1.9024534 2.217258 -4.1671321e-008 -1.9515761 2.1198137 -4.1671321e-008 
		-1.9685028 2.0117903 0;
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
createNode transform -n "EyeBrowInner_R" -p "_R";
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
createNode mesh -n "EyeBrowInner_RShape" -p "EyeBrowInner_R";
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
	setAttr ".bnr" 0;
	setAttr -s 20 ".pt[0:19]" -type "float3"  -0.62696224 2.3886588 0 -0.57045043 
		2.2777469 -9.485791e-008 -0.48243007 2.1897275 4.7428955e-008 -0.37151781 2.1332145 
		4.7428955e-008 -0.24857083 2.1137416 0 -0.12562448 2.1332145 0 -0.014713231 2.1897278 
		-9.485791e-008 0.073306538 2.2777469 -4.7428955e-008 0.12981886 2.3886588 -9.485791e-008 
		0.14929183 2.5116043 0 0.12981886 2.6345508 0 0.073306479 2.7454619 9.485791e-008 
		-0.01471335 2.8334818 4.7428955e-008 -0.12562445 2.8899946 4.7428955e-008 -0.24857083 
		2.9094667 -9.485791e-008 -0.37151769 2.8899946 9.485791e-008 -0.48242995 2.8334818 
		9.485791e-008 -0.57045019 2.7454619 -4.7428955e-008 -0.62696189 2.6345508 -4.7428955e-008 
		-0.64643496 2.5116043 0;
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
createNode transform -n "EyeBrowRegion_R" -p "_R";
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
createNode mesh -n "EyeBrowRegion_RShape" -p "EyeBrowRegion_R";
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
	setAttr ".bnr" 0;
	setAttr -s 20 ".pt[0:19]" -type "float3"  -1.9227914 2.2725704 0 -1.8779678 
		2.1508064 -8.3342641e-008 -1.8081465 2.0541749 4.1671321e-008 -1.7201715 1.9921335 
		4.1671321e-008 -1.6226488 1.9707552 0 -1.5251266 1.9921337 0 -1.4371531 2.0541749 
		-8.3342641e-008 -1.3673328 2.1508067 -4.1671321e-008 -1.3225079 2.2725704 -8.3342641e-008 
		-1.3070625 2.4075458 0 -1.3225079 2.5425224 0 -1.3673329 2.6642821 8.3342641e-008 
		-1.4371532 2.7609167 4.1671321e-008 -1.5251276 2.8229563 4.1671321e-008 -1.6226488 
		2.8443341 -8.3342641e-008 -1.7201713 2.8229563 8.3342641e-008 -1.8081462 2.7609167 
		8.3342641e-008 -1.8779676 2.6642821 -4.1671321e-008 -1.9227911 2.5425224 -4.1671321e-008 
		-1.9382365 2.4075458 0;
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
createNode transform -n "EyeBrowMid1_R" -p "_R";
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
createNode mesh -n "EyeBrowMid1_RShape" -p "EyeBrowMid1_R";
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
	setAttr ".bnr" 0;
	setAttr -s 20 ".pt[0:19]" -type "float3"  -0.88801086 2.4280729 0 -0.82779503 
		2.3098922 -1.0107505e-007 -0.73400575 2.2161031 5.0537523e-008 -0.61582416 2.1558869 
		5.0537523e-008 -0.48481917 2.1351373 0 -0.3538146 2.1558869 0 -0.23563388 2.2161033 
		-1.0107505e-007 -0.14184508 2.3098922 -5.0537523e-008 -0.081629097 2.4280729 -1.0107505e-007 
		-0.060879856 2.559077 0 -0.081629097 2.6900821 0 -0.14184514 2.8082621 1.0107505e-007 
		-0.235634 2.9020517 5.0537523e-008 -0.35381466 2.9622672 5.0537523e-008 -0.48481917 
		2.9830167 -1.0107505e-007 -0.61582404 2.9622672 1.0107505e-007 -0.73400563 2.9020517 
		1.0107505e-007 -0.82779479 2.8082621 -5.0537523e-008 -0.88801062 2.6900821 -5.0537523e-008 
		-0.90875971 2.559077 0;
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
createNode transform -n "EyeBrowMid2_R" -p "_R";
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
createNode mesh -n "EyeBrowMid2_RShape" -p "EyeBrowMid2_R";
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
	setAttr ".bnr" 0;
	setAttr -s 20 ".pt[0:19]" -type "float3"  -1.0585699 2.4188538 0 -0.99835408 
		2.300673 -1.0107505e-007 -0.9045648 2.2068839 5.0537523e-008 -0.78638321 2.1466677 
		5.0537523e-008 -0.65537822 2.1259181 0 -0.52437365 2.1466677 0 -0.40619293 2.2068841 
		-1.0107505e-007 -0.31240413 2.300673 -5.0537523e-008 -0.25218815 2.4188538 -1.0107505e-007 
		-0.23143891 2.5498579 0 -0.25218815 2.6808629 0 -0.31240419 2.7990429 1.0107505e-007 
		-0.40619305 2.8928325 5.0537523e-008 -0.52437371 2.953048 5.0537523e-008 -0.65537822 
		2.9737976 -1.0107505e-007 -0.78638309 2.953048 1.0107505e-007 -0.90456468 2.8928325 
		1.0107505e-007 -0.99835384 2.7990429 -5.0537523e-008 -1.0585697 2.6808629 -5.0537523e-008 
		-1.0793188 2.5498579 0;
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
createNode transform -n "EyeBrowMid3_R" -p "_R";
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
createNode mesh -n "EyeBrowMid3_RShape" -p "EyeBrowMid3_R";
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
	setAttr ".bnr" 0;
	setAttr -s 20 ".pt[0:19]" -type "float3"  -1.229129 2.3773675 0 -1.1689131 
		2.2591867 -1.0107505e-007 -1.0751238 2.1653976 5.0537523e-008 -0.9569422 2.1051815 
		5.0537523e-008 -0.82593727 2.0844319 0 -0.6949327 2.1051815 0 -0.57675195 2.1653979 
		-1.0107505e-007 -0.48296314 2.2591867 -5.0537523e-008 -0.42274719 2.3773675 -1.0107505e-007 
		-0.40199795 2.5083716 0 -0.42274719 2.6393766 0 -0.4829632 2.7575567 1.0107505e-007 
		-0.57675207 2.8513463 5.0537523e-008 -0.69493276 2.9115617 5.0537523e-008 -0.82593727 
		2.9323113 -1.0107505e-007 -0.95694208 2.9115617 1.0107505e-007 -1.0751237 2.8513463 
		1.0107505e-007 -1.1689129 2.7575567 -5.0537523e-008 -1.2291287 2.6393766 -5.0537523e-008 
		-1.2498778 2.5083716 0;
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
createNode transform -n "EyeBrowOuter_R" -p "_R";
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
createNode mesh -n "EyeBrowOuter_RShape" -p "EyeBrowOuter_R";
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
	setAttr ".bnr" 0;
	setAttr -s 20 ".pt[0:19]" -type "float3"  -1.3582007 2.2713468 0 -1.2979848 
		2.1531661 -1.0107505e-007 -1.2041955 2.059377 5.0537523e-008 -1.0860139 1.9991602 
		5.0537523e-008 -0.95500898 1.9784104 0 -0.82400441 1.9991602 0 -0.70582366 2.0593772 
		-1.0107505e-007 -0.61203486 2.1531661 -5.0537523e-008 -0.55181891 2.2713468 -1.0107505e-007 
		-0.53106964 2.4023509 0 -0.55181891 2.533356 0 -0.61203492 2.651536 1.0107505e-007 
		-0.70582378 2.7453256 5.0537523e-008 -0.82400447 2.805541 5.0537523e-008 -0.95500898 
		2.8262906 -1.0107505e-007 -1.0860138 2.805541 1.0107505e-007 -1.2041954 2.7453256 
		1.0107505e-007 -1.2979846 2.651536 -5.0537523e-008 -1.3582004 2.533356 -5.0537523e-008 
		-1.3789495 2.4023509 0;
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
createNode transform -n "upperLipB_R" -p "_R";
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
createNode mesh -n "upperLipB_RShape" -p "upperLipB_R";
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
	setAttr ".bnr" 0;
	setAttr -s 20 ".pt[0:19]" -type "float3"  -0.83276933 0.75318515 -0.11938212 
		-0.76516706 0.62050617 -0.11938224 -0.65987325 0.51521266 -0.11938208 -0.52719533 
		0.44760892 -0.11938208 -0.38012072 0.42431471 -0.11938212 -0.23304571 0.44760898 
		-0.11938212 -0.10036755 0.51521277 -0.11938224 0.0049263434 0.62050629 -0.11938218 
		0.072529078 0.75318515 -0.11938224 0.095823243 0.90025926 -0.11938212 0.072529078 
		1.0473346 -0.11938212 0.0049262838 1.1800109 -0.11938202 -0.10036767 1.2853053 -0.11938208 
		-0.23304576 1.3528703 -0.11938208 -0.38012075 1.3760536 -0.11938224 -0.52719522 1.3528703 
		-0.11938202 -0.65987313 1.2853053 -0.11938202 -0.76516682 1.1800109 -0.11938218 -0.83276904 
		1.0473346 -0.11938218 -0.85606396 0.90025926 -0.11938212;
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
createNode transform -n "lowerLipB_R" -p "_R";
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
createNode mesh -n "lowerLipB_RShape" -p "lowerLipB_R";
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
	setAttr ".bnr" 0;
	setAttr -s 20 ".pt[0:19]" -type "float3"  -0.83767682 0.62987494 -0.086528376 
		-0.77007455 0.4971959 -0.08652848 -0.66478038 0.39190221 -0.086528316 -0.53210241 
		0.32429966 -0.086528316 -0.38502797 0.30100551 -0.086528376 -0.23795304 0.32429972 
		-0.086528376 -0.10527486 0.39190233 -0.08652848 1.9104686e-005 0.49719602 -0.086528435 
		0.067621857 0.62987494 -0.08652848 0.090916008 0.77694952 -0.086528376 0.067621857 
		0.92402393 -0.086528376 1.9045081e-005 1.0567025 -0.086528271 -0.10527498 1.1619976 
		-0.086528316 -0.2379531 1.2295998 -0.086528316 -0.38502795 1.252894 -0.08652848 -0.53210229 
		1.2295998 -0.086528271 -0.6647802 1.1619976 -0.086528271 -0.77007431 1.0567025 -0.086528435 
		-0.83767647 0.92402393 -0.086528435 -0.86097145 0.77694952 -0.086528376;
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
createNode transform -n "Nostril_R" -p "_R";
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
createNode mesh -n "Nostril_RShape" -p "Nostril_R";
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
	setAttr ".bnr" 0;
	setAttr -s 20 ".pt[0:19]" -type "float3"  -0.57432669 1.3218632 0 -0.51077837 
		1.1971425 -1.0666771e-007 -0.41180015 1.0981641 5.3333856e-008 -0.28708041 1.034616 
		5.3333856e-008 -0.14882688 1.012719 0 -0.010573717 1.034616 0 0.11414663 1.0981642 
		-1.0666771e-007 0.2131252 1.1971426 -5.3333856e-008 0.2766732 1.3218632 -1.0666771e-007 
		0.29857031 1.4601164 0 0.2766732 1.5983698 0 0.21312514 1.7230889 1.0666771e-007 
		0.11414651 1.822069 5.3333856e-008 -0.010573717 1.8856162 5.3333856e-008 -0.14882688 
		1.9075135 -1.0666771e-007 -0.28708029 1.8856162 1.0666771e-007 -0.41180003 1.822069 
		1.0666771e-007 -0.51077813 1.7230889 -5.3333856e-008 -0.57432634 1.5983698 -5.3333856e-008 
		-0.59622335 1.4601164 0;
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
createNode transform -n "NoseSide_R" -p "_R";
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
createNode mesh -n "NoseSide_RShape" -p "NoseSide_R";
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
	setAttr ".bnr" 0;
	setAttr -s 20 ".pt[0:19]" -type "float3"  -0.68861383 1.4818664 0 -0.62506551 
		1.3571457 -1.0666771e-007 -0.52608728 1.2581673 5.3333856e-008 -0.40136755 1.1946192 
		5.3333856e-008 -0.26311404 1.1727222 0 -0.12486087 1.1946192 0 -0.00014052819 1.2581674 
		-1.0666771e-007 0.098838061 1.3571458 -5.3333856e-008 0.16238606 1.4818664 -1.0666771e-007 
		0.18428317 1.6201196 0 0.16238606 1.758373 0 0.098838001 1.883092 1.0666771e-007 
		-0.0001406474 1.9820722 5.3333856e-008 -0.12486087 2.0456192 5.3333856e-008 -0.26311404 
		2.0675168 -1.0666771e-007 -0.40136743 2.0456192 1.0666771e-007 -0.52608716 1.9820722 
		1.0666771e-007 -0.62506527 1.883092 -5.3333856e-008 -0.68861347 1.758373 -5.3333856e-008 
		-0.71051049 1.6201196 0;
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
createNode transform -n "SmileBulge_R" -p "_R";
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
createNode mesh -n "SmileBulge_RShape" -p "SmileBulge_R";
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
	setAttr ".bnr" 0;
	setAttr -s 20 ".pt[0:19]" -type "float3"  -1.0116458 1.016044 0 -0.96417487 
		0.87078196 -1.0086045e-007 -0.88697588 0.74774003 5.0430224e-008 -0.78574675 0.65711361 
		5.0430224e-008 -0.66703898 0.60441619 0 -0.5407564 0.59308577 0 -0.42097849 0.62595087 
		-1.0086045e-007 -0.32278979 0.70314908 -5.0430224e-008 -0.25764835 0.81898665 -1.0086045e-007 
		-0.23181114 0.96198428 0 -0.24823192 1.1185879 0 -0.30596837 1.2741116 1.0086045e-007 
		-0.39936501 1.4133558 5.0430224e-008 -0.51694119 1.5203307 5.0430224e-008 -0.64272445 
		1.5800991 -1.0086045e-007 -0.76193571 1.5843545 1.0086045e-007 -0.86536413 1.5351418 
		1.0086045e-007 -0.94735348 1.4417446 -5.0430224e-008 -1.0022314 1.3156447 -5.0430224e-008 
		-1.0246061 1.1691867 0;
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
createNode transform -n "FrownBulge_R" -p "_R";
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
createNode mesh -n "FrownBulge_RShape" -p "FrownBulge_R";
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
	setAttr ".bnr" 0;
	setAttr -s 20 ".pt[0:19]" -type "float3"  -1.0961834 0.5733484 0 -1.020188 
		0.41170761 -1.0186768e-007 -0.89905262 0.26950887 5.0933838e-008 -0.7430709 0.1624282 
		5.0933838e-008 -0.5646683 0.1041211 0 -0.37985224 0.10191624 0 -0.20816904 0.15440597 
		-1.0186768e-007 -0.069264211 0.25327665 -5.0933838e-008 0.021688893 0.3871057 -1.0186768e-007 
		0.055904843 0.54290468 0 0.029660128 0.70502251 0 -0.055023439 0.85695994 1.0186768e-007 
		-0.18987317 0.98385102 5.0933838e-008 -0.35969394 1.0754807 5.0933838e-008 -0.54408306 
		1.1271009 -1.0186768e-007 -0.72290987 1.1359891 1.0186768e-007 -0.88075328 1.0989521 
		1.0186768e-007 -1.0059466 1.0153902 -5.0933838e-008 -1.0882108 0.89126277 -5.0933838e-008 
		-1.119498 0.73873597 0;
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
createNode transform -n "Lip_R" -p "_R";
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
createNode mesh -n "Lip_RShape" -p "Lip_R";
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
	setAttr ".bnr" 0;
	setAttr -s 20 ".pt[0:19]" -type "float3"  -0.89228505 0.716474 -0.1193822 
		-0.82683665 0.58802122 -0.11938232 -0.72489703 0.48608199 -0.11938216 -0.59644514 
		0.4206315 -0.11938216 -0.45405528 0.39807925 -0.1193822 -0.31166559 0.42063156 -0.1193822 
		-0.18321377 0.48608211 -0.11938232 -0.081273995 0.58802134 -0.11938226 -0.015824858 
		0.716474 -0.11938232 0.0067272149 0.85886258 -0.1193822 -0.015824858 1.0012536 -0.1193822 
		-0.081274055 1.1297032 -0.1193821 -0.18321389 1.231643 -0.11938216 -0.31166562 1.2970313 
		-0.11938216 -0.45405534 1.3194025 -0.11938232 -0.59644502 1.2970313 -0.1193821 -0.72489691 
		1.231643 -0.1193821 -0.82683641 1.1297032 -0.11938226 -0.89228469 1.0012536 -0.11938226 
		-0.91483802 0.85886258 -0.1193822;
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
createNode transform -n "Cheek_L" -p "_L";
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
createNode mesh -n "Cheek_LShape" -p "Cheek_L";
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
	setAttr ".bnr" 0;
	setAttr -s 20 ".pt[0:19]" -type "float3"  -1.2703867 1.1346443 0 -1.2102984 
		1.0167133 -1.0086045e-007 -1.1167088 0.9231239 5.0430224e-008 -0.9987787 0.86303562 
		5.0430224e-008 -0.86805218 0.84233052 0 -0.73732567 0.86303568 0 -0.61939549 0.92312402 
		-1.0086045e-007 -0.525805 1.0167134 -5.0430224e-008 -0.46571651 1.1346443 -1.0086045e-007 
		-0.44501153 1.2653702 0 -0.46571651 1.3960968 0 -0.52580506 1.514026 1.0086045e-007 
		-0.61939561 1.6076167 5.0430224e-008 -0.73732567 1.667704 5.0430224e-008 -0.86805218 
		1.688409 -1.0086045e-007 -0.99877858 1.667704 1.0086045e-007 -1.1167086 1.6076167 
		1.0086045e-007 -1.2102982 1.514026 -5.0430224e-008 -1.2703863 1.3960968 -5.0430224e-008 
		-1.2910913 1.2653702 0;
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
createNode transform -n "ear_L" -p "_L";
	setAttr -l on -k off ".v";
	setAttr ".t" -type "double3" -0.80102289838751872 -0.1308862528745125 0 ;
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1 1 10 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode mesh -n "ear_LShape" -p "ear_L";
	setAttr -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 26 ".uvst[0].uvsp[0:25]" -type "float2" 0 0 0.1 0 0.2 0 0.30000001
		 0 0.40000001 0 0.5 0 0.60000002 0 0.69999999 0 0.80000001 0 0.90000004 0 1 0 0 0.60000002
		 0 0.69999999 0 0.80000001 0 0.90000004 0 1 0.1 1 0.2 1 0.30000001 1 0.40000001 1
		 0.5 1 0.60000002 1 0.69999999 1 0.80000001 1 0.90000004 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".bnr" 0;
	setAttr -s 26 ".pt[0:25]" -type "float3"  0.46396169 0.59669316 -0.10000002 
		0.42972052 0.77835977 -0.10000003 0.36758459 0.94223851 -0.10000002 0.30316079 1.0121889 
		-0.10000002 0.23692718 1.0865636 -0.10000002 0.14823981 1.1520576 -0.10000002 0.06742125 
		1.1932172 -0.10000002 0.036334835 1.1773473 -0.10000002 -0.030289918 1.2331332 -0.10000003 
		-0.11349593 1.2961111 -0.10000002 -0.30413923 1.5325005 -0.10000002 0.53589189 0.02324287 
		-0.10000001 0.51810765 -0.073901117 -0.10000002 0.51184934 -0.19416024 -0.099999979 
		0.50577319 -0.24346745 -0.10000002 0.48056981 -0.37154731 -0.099999979 0.40471005 
		-0.56845629 -0.099999972 0.31038976 -0.6620186 -0.099999972 0.23029864 -0.73036885 
		-0.099999972 0.15150148 -0.71524054 -0.099999972 0.093873911 -0.72944695 -0.1 -0.0020561768 
		-0.73394066 -0.099999972 -0.10993834 -0.71507227 -0.099999972 -0.17622428 -0.68847555 
		-0.099999972 -0.29129496 -0.65255481 -0.099999972 -0.39655063 -0.65378845 -0.1;
	setAttr -s 26 ".vt[0:25]"  -1.035027981 1.3493638 2.9802322e-008 -0.96788323 1.09638083 2.9802322e-008
		 -0.86459756 0.85325336 2.9802322e-008 -0.77116787 0.7251184 2.9802322e-008 -0.67773962 0.60026914 2.9802322e-008
		 -0.56788325 0.48856169 2.9802322e-008 -0.46788281 0.40313858 2.9802322e-008 -0.36788279 0.30785912 2.9802322e-008
		 -0.26131231 0.23229253 2.9802322e-008 -0.1317417 0.15344006 2.9802322e-008 0 0.1501548 2.9802322e-008
		 -1.13687873 1.98878908 7.4505806e-009 -1.13687873 2.13478541 2.9802322e-008 -1.14083266 2.29424548 -2.9802322e-008
		 -1.14083266 2.39424539 2.9802322e-008 -1.1155324 2.59544778 -2.9802322e-008 -1.040121198 2.85317111 -2.9802322e-008
		 -0.94807339 2.99631 -2.9802322e-008 -0.83216912 3.07980752 -2.9802322e-008 -0.71626508 3.07185483 -2.9802322e-008
		 -0.62819296 3.095712185 -2.9802322e-008 -0.50433666 3.083783627 -2.9802322e-008 -0.38048047 3.051975489 -2.9802322e-008
		 -0.28445643 2.97245312 -2.9802322e-008 -0.14867175 2.896909 -2.9802322e-008 0 2.84919524 -2.9802322e-008;
	setAttr -s 26 ".ed[0:25]"  0 1 0 0 11 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0
		 6 7 0 7 8 0 8 9 0 9 10 0 11 12 0 12 13 0 13 14 0 14 15 0 10 25 0 15 16 0 16 17 0
		 17 18 0 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0;
	setAttr ".fc[0]" -type "polyFaces" 
		f 26 15 -26 -25 -24 -23 -22 -21 -20 -19 -18 -17 -15 -14 -13 -12 -2 0 2 3 4 5 6 7 8 9
		 10
		mu 0 26 10 25 24 23 22 21 20 19 18 17 16 15 14 13 12 11 0 1 2 3 4 5 6 7 8 9;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "eyeBall_L" -p "_L";
	setAttr -l on -k off ".v";
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
createNode mesh -n "eyeBall_LShape" -p "eyeBall_L";
	setAttr -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
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
	setAttr ".bnr" 0;
	setAttr -s 20 ".pt[0:19]" -type "float3"  -0.69657117 1.9353905 -0.89999998 
		-0.67113298 1.8638299 -0.9000001 -0.63223588 1.8102716 -0.89999998 -0.58419973 1.7767906 
		-0.89999998 -0.53183532 1.7637235 -0.89999998 -0.4799262 1.7718661 -0.89999998 -0.43289623 
		1.8028991 -0.9000001 -0.39486134 1.857365 -0.89999998 -0.3696813 1.9322543 -0.9000001 
		-0.36037338 2.0207016 -0.89999998 -0.3682425 2.1134861 -0.89999998 -0.39244911 2.2005782 
		-0.89999998 -0.43021062 2.2720435 -0.89999998 -0.47748309 2.3186858 -0.89999998 -0.52980775 
		2.3336804 -0.9000001 -0.5826993 2.3149452 -0.89999998 -0.6314109 2.2659624 -0.89999998 
		-0.67090201 2.194289 -0.89999998 -0.69660127 2.1090693 -0.89999998 -0.70543599 2.0197456 
		-0.89999998;
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
createNode transform -n "iris_L" -p "_L";
	setAttr -l on -k off ".v";
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
createNode mesh -n "iris_LShape" -p "iris_L";
	setAttr -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
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
	setAttr ".bnr" 0;
	setAttr -s 20 ".pt[0:19]" -type "float3"  -0.82188785 1.912306 -0.8238135 
		-0.76800436 1.8065537 -0.82381362 -0.68408 1.7226292 -0.8238135 -0.57832944 1.6687499 
		-0.8238135 -0.46110278 1.6501802 -0.8238135 -0.34387645 1.6687499 -0.8238135 -0.23812544 
		1.7226293 -0.82381362 -0.1542007 1.8065538 -0.82381356 -0.10031775 1.912306 -0.82381362 
		-0.081751011 2.0295327 -0.8238135 -0.10031775 2.1467619 -0.8238135 -0.15420076 2.2525098 
		-0.82381344 -0.23812556 2.3364344 -0.8238135 -0.34387648 2.3903146 -0.8238135 -0.46110275 
		2.408885 -0.82381362 -0.57832932 2.3903146 -0.82381344 -0.68407983 2.3364344 -0.82381344 
		-0.76800412 2.2525098 -0.82381356 -0.82188755 2.1467619 -0.82381356 -0.84045488 2.0295327 
		-0.8238135;
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
createNode transform -n "pupil_L" -p "_L";
	setAttr -l on -k off ".v";
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
createNode mesh -n "pupil_LShape" -p "pupil_L";
	setAttr -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
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
	setAttr ".bnr" 0;
	setAttr -s 20 ".pt[0:19]" -type "float3"  -0.8798582 1.8934698 -0.67618638 
		-0.81731808 1.7707243 -0.67618638 -0.71990758 1.6733167 -0.67618638 -0.59716469 1.6107776 
		-0.67618638 -0.46110293 1.5892255 -0.67618638 -0.32503989 1.6107777 -0.67618638 -0.20229682 
		1.6733168 -0.67618638 -0.10488718 1.7707244 -0.67618638 -0.042346213 1.8934698 -0.67618638 
		-0.020796174 2.0295329 -0.67618638 -0.042346213 2.1655996 -0.67618638 -0.10488724 
		2.2883394 -0.67618638 -0.20229694 2.3857489 -0.67618638 -0.32503989 2.4482884 -0.67618638 
		-0.46110293 2.4698379 -0.67618638 -0.59716457 2.4482884 -0.67618638 -0.71990728 2.3857489 
		-0.67618638 -0.81731784 2.2883394 -0.67618638 -0.87985784 2.1655996 -0.67618638 -0.90140909 
		2.0295329 -0.67618638;
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
createNode transform -n "eyeBrow_L" -p "_L";
	setAttr -l on -k off ".v";
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
createNode mesh -n "eyeBrow_LShape" -p "eyeBrow_L";
	setAttr -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
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
	setAttr ".bnr" 0;
	setAttr -s 20 ".pt[0:19]" -type "float3"  -0.71043336 2.378298 0.5 
		-0.73196888 2.257021 0.49999988 -0.7021845 2.1546276 0.5 -0.67801106 2.0948305 0.5 
		-0.61390686 2.0700459 0.5 -0.57271343 2.0773251 0.5 -0.54544646 2.1140506 0.49999988 
		-0.52737385 2.1775839 0.5 -0.49087274 2.2744153 0.49999988 -0.45604634 2.4135571 
		0.5 -0.45173144 2.568656 0.5 -0.47918081 2.7444985 0.5 -0.52637893 2.8811913 0.5 
		-0.57118106 2.9823804 0.5 -0.58691227 3.020694 0.49999988 -0.66211706 2.9985597 0.5 
		-0.6982609 2.9161794 0.5 -0.74110895 2.8005743 0.5 -0.73091143 2.6463771 0.5 -0.72638547 
		2.5051775 0.5;
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
createNode transform -n "hair_L" -p "_L";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".s" -type "double3" 1 1 10 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode mesh -n "hair_LShape" -p "hair_L";
	addAttr -ci true -sn "mso" -ln "miShadingSamplesOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "msh" -ln "miShadingSamples" -min 0 -smx 8 -at "float";
	addAttr -ci true -sn "mdo" -ln "miMaxDisplaceOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mmd" -ln "miMaxDisplace" -min 0 -smx 1 -at "float";
	setAttr -k off ".v";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 26 ".uvst[0].uvsp[0:25]" -type "float2" 0 0 0.1 0 0.2 0 0.30000001
		 0 0.40000001 0 0.5 0 0.60000002 0 0.69999999 0 0.80000001 0 0.90000004 0 1 0 0 0.60000002
		 0 0.69999999 0 0.80000001 0 0.90000004 0 1 0.1 1 0.2 1 0.30000001 1 0.40000001 1
		 0.5 1 0.60000002 1 0.69999999 1 0.80000001 1 0.90000004 1 1 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".bnr" 0;
	setAttr -s 26 ".pt[0:25]" -type "float3"  -0.094134204 1.2508366 -0.1 
		-0.085865915 1.766566 -0.1 -0.1015723 2.1511874 -0.1 -0.068276882 2.3699322 -0.1 
		-0.045819454 2.4896126 -0.1 -0.063303784 2.6236048 -0.1 -0.036205571 2.6961389 -0.1 
		-0.0048661316 2.7611957 -0.1 -0.013867149 2.7538452 -0.1 -0.011604209 2.7628911 -0.1 
		0 2.7181671 -0.1 -0.030676087 0.26235357 -0.1 -0.023150545 -0.1052907 -0.1 -0.065752931 
		-0.19385248 -0.1 -0.14408118 -0.15459195 -0.1 -0.22531068 -0.13197565 -0.1 -0.32847992 
		-0.022796039 -0.1 -0.35789278 0.21808667 -0.1 -0.28960097 0.40019867 -0.1 -0.20434219 
		0.56604803 -0.1 -0.11783411 0.63672036 -0.1 -0.10459045 0.69589055 -0.1 -0.074898735 
		0.7849651 -0.1 -0.040965967 0.86979789 -0.1 -0.079140671 1.0012887 -0.1 0 1.087797 
		-0.1;
	setAttr -s 26 ".vt[0:25]"  -1.035027981 1.3493638 2.9802322e-008 -0.96788323 1.09638083 2.9802322e-008
		 -0.86459756 0.85325336 2.9802322e-008 -0.77116787 0.7251184 2.9802322e-008 -0.67773962 0.60026914 2.9802322e-008
		 -0.56788325 0.48856169 2.9802322e-008 -0.46788281 0.40313858 2.9802322e-008 -0.36788279 0.30785912 2.9802322e-008
		 -0.26131231 0.23229253 2.9802322e-008 -0.1317417 0.15344006 2.9802322e-008 0 0.1501548 2.9802322e-008
		 -1.13687873 1.98878908 7.4505806e-009 -1.13687873 2.13478541 2.9802322e-008 -1.14083266 2.29424548 -2.9802322e-008
		 -1.14083266 2.39424539 2.9802322e-008 -1.1155324 2.59544778 -2.9802322e-008 -1.040121198 2.85317111 -2.9802322e-008
		 -0.94807339 2.99631 -2.9802322e-008 -0.83216912 3.07980752 -2.9802322e-008 -0.71626508 3.07185483 -2.9802322e-008
		 -0.62819296 3.095712185 -2.9802322e-008 -0.50433666 3.083783627 -2.9802322e-008 -0.38048047 3.051975489 -2.9802322e-008
		 -0.28445643 2.97245312 -2.9802322e-008 -0.14867175 2.896909 -2.9802322e-008 0 2.84919524 -2.9802322e-008;
	setAttr -s 26 ".ed[0:25]"  0 1 0 0 11 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0
		 6 7 0 7 8 0 8 9 0 9 10 0 11 12 0 12 13 0 13 14 0 14 15 0 10 25 0 15 16 0 16 17 0
		 17 18 0 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0;
	setAttr ".fc[0]" -type "polyFaces" 
		f 26 15 -26 -25 -24 -23 -22 -21 -20 -19 -18 -17 -15 -14 -13 -12 -2 0 2 3 4 5 6 7 8 9
		 10
		mu 0 26 10 25 24 23 22 21 20 19 18 17 16 15 14 13 12 11 0 1 2 3 4 5 6 7 8 9;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "NoseCorner_L" -p "_L";
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
createNode mesh -n "NoseCorner_LShape" -p "NoseCorner_L";
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
	setAttr ".bnr" 0;
	setAttr -s 20 ".pt[0:19]" -type "float3"  -0.7158953 1.2298993 0 -0.65319109 
		1.1068348 -1.0525153e-007 -0.55552655 1.0091708 5.2625765e-008 -0.43246236 0.94646597 
		5.2625765e-008 -0.29604453 0.92485934 0 -0.15962659 0.94646609 0 -0.036562555 1.0091709 
		-1.0525153e-007 0.061101772 1.1068349 -5.2625765e-008 0.12380613 1.2298993 -1.0525153e-007 
		0.14541256 1.3663164 0 0.12380613 1.5027343 0 0.061101712 1.6257976 1.0525153e-007 
		-0.036562674 1.7234628 5.2625765e-008 -0.1596266 1.7861665 5.2625765e-008 -0.29604453 
		1.807773 -1.0525153e-007 -0.43246225 1.7861665 1.0525153e-007 -0.55552644 1.7234628 
		1.0525153e-007 -0.65319085 1.6257976 -5.2625765e-008 -0.71589494 1.5027343 -5.2625765e-008 
		-0.73750126 1.3663164 0;
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
createNode transform -n "CheekRaiser_L" -p "_L";
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
createNode mesh -n "CheekRaiser_LShape" -p "CheekRaiser_L";
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
	setAttr ".bnr" 0;
	setAttr -s 20 ".pt[0:19]" -type "float3"  -1.0558577 1.469911 0 -0.99834168 
		1.3514594 -9.6543474e-008 -0.90875727 1.2605247 4.8271737e-008 -0.79587436 1.2030061 
		4.8271737e-008 -0.670744 1.1831875 0 -0.54561347 1.2030063 0 -0.43273202 1.2605249 
		-9.6543474e-008 -0.34314781 1.3514595 -4.8271737e-008 -0.28563136 1.469911 -9.6543474e-008 
		-0.26581249 1.6073527 0 -0.28563136 1.7526969 0 -0.34314787 1.8919942 9.6543474e-008 
		-0.43273214 2.0090227 4.8271737e-008 -0.54561347 2.0875754 4.8271737e-008 -0.670744 
		2.1153142 -9.6543474e-008 -0.79587424 2.0875754 9.6543474e-008 -0.90875715 2.0090227 
		9.6543474e-008 -0.99834144 1.8919942 -4.8271737e-008 -1.0558573 1.7526969 -4.8271737e-008 
		-1.075677 1.6073527 0;
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
createNode transform -n "innerLid_L" -p "_L";
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
createNode mesh -n "innerLid_LShape" -p "innerLid_L";
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
	setAttr ".bnr" 0;
	setAttr -s 20 ".pt[0:19]" -type "float3"  -0.6344949 1.8673868 0 -0.57094663 
		1.7426661 -1.0666771e-007 -0.47196832 1.6436877 5.3333856e-008 -0.34724852 1.5801396 
		5.3333856e-008 -0.20899497 1.5582426 0 -0.07074181 1.5801396 0 0.05397848 1.6436878 
		-1.0666771e-007 0.15295701 1.7426662 -5.3333856e-008 0.21650504 1.8673868 -1.0666771e-007 
		0.23840214 2.00564 0 0.21650504 2.1438937 0 0.15295695 2.2686129 1.0666771e-007 0.053978361 
		2.3675928 5.3333856e-008 -0.07074181 2.4311395 5.3333856e-008 -0.20899497 2.4530365 
		-1.0666771e-007 -0.34724841 2.4311395 1.0666771e-007 -0.4719682 2.3675928 1.0666771e-007 
		-0.5709464 2.2686129 -5.3333856e-008 -0.63449454 2.1438937 -5.3333856e-008 -0.65639156 
		2.00564 0;
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
createNode transform -n "outerLid_L" -p "_L";
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
createNode mesh -n "outerLid_LShape" -p "outerLid_L";
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
	setAttr ".bnr" 0;
	setAttr -s 20 ".pt[0:19]" -type "float3"  -1.2754328 1.8673868 0 -1.2118845 
		1.7426661 -1.0666771e-007 -1.1129062 1.6436877 5.3333856e-008 -0.98818636 1.5801396 
		5.3333856e-008 -0.84993267 1.5582426 0 -0.71167952 1.5801396 0 -0.58695918 1.6436878 
		-1.0666771e-007 -0.48798066 1.7426662 -5.3333856e-008 -0.42443269 1.8673868 -1.0666771e-007 
		-0.40253568 2.00564 0 -0.42443269 2.1438937 0 -0.48798072 2.2686129 1.0666771e-007 
		-0.5869593 2.3675928 5.3333856e-008 -0.71167952 2.4311395 5.3333856e-008 -0.84993267 
		2.4530365 -1.0666771e-007 -0.98818624 2.4311395 1.0666771e-007 -1.1129061 2.3675928 
		1.0666771e-007 -1.2118843 2.2686129 -5.3333856e-008 -1.2754325 2.1438937 -5.3333856e-008 
		-1.2973295 2.00564 0;
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
createNode transform -n "upperLid_L" -p "_L";
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
createNode mesh -n "upperLid_LShape" -p "upperLid_L";
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
	setAttr ".bnr" 0;
	setAttr -s 20 ".pt[0:19]" -type "float3"  -0.92406213 2.1358476 0 -0.86636734 
		2.0226152 -9.6839507e-008 -0.77650976 1.9327519 4.8419754e-008 -0.66328311 1.875062 
		4.8419754e-008 -0.53776819 1.8551784 0 -0.41225064 1.875062 0 -0.29902193 1.9327524 
		-9.6839507e-008 -0.20916335 2.0226159 -4.8419754e-008 -0.1514708 2.1358476 -9.6839507e-008 
		-0.13159131 2.2613571 0 -0.1514708 2.3868647 0 -0.20916341 2.5000949 9.6839507e-008 
		-0.29902205 2.5899522 4.8419754e-008 -0.41225067 2.6476502 4.8419754e-008 -0.53776819 
		2.6675203 -9.6839507e-008 -0.66328299 2.6476502 9.6839507e-008 -0.77650964 2.5899522 
		9.6839507e-008 -0.8663671 2.5000949 -4.8419754e-008 -0.92406178 2.3868647 -4.8419754e-008 
		-0.94394034 2.2613571 0;
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
createNode transform -n "lowerLid_L" -p "_L";
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
createNode mesh -n "lowerLid_LShape" -p "lowerLid_L";
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
	setAttr ".bnr" 0;
	setAttr -s 20 ".pt[0:19]" -type "float3"  -0.94825786 1.702896 0 -0.88695097 
		1.5825748 -1.0290524e-007 -0.79146373 1.4870877 5.145262e-008 -0.671143 1.4257811 
		5.145262e-008 -0.5377658 1.4046564 0 -0.40438944 1.4257811 0 -0.28406841 1.4870878 
		-1.0290524e-007 -0.18858105 1.5825751 -5.145262e-008 -0.1272746 1.702896 -1.0290524e-007 
		-0.10614996 1.8362725 0 -0.1272746 1.9696496 0 -0.18858111 2.0899696 1.0290524e-007 
		-0.28406852 2.1854584 5.145262e-008 -0.40438941 2.2467632 5.145262e-008 -0.5377658 
		2.2678881 -1.0290524e-007 -0.67114288 2.2467632 1.0290524e-007 -0.79146361 2.1854584 
		1.0290524e-007 -0.88695073 2.0899696 -5.145262e-008 -0.94825751 1.9696496 -5.145262e-008 
		-0.96938205 1.8362725 0;
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
createNode transform -n "upperInnerLid_L" -p "_L";
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
createNode mesh -n "upperInnerLid_LShape" -p "upperInnerLid_L";
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
	setAttr ".bnr" 0;
	setAttr -s 20 ".pt[0:19]" -type "float3"  -0.7341646 2.0485897 0 -0.66983038 
		1.9223241 -1.0798893e-007 -0.56962538 1.8221202 5.3994462e-008 -0.44335982 1.7577835 
		5.3994462e-008 -0.30339384 1.735615 0 -0.16342825 1.7577834 0 -0.037163146 1.8221202 
		-1.0798893e-007 0.063041627 1.9223241 -5.3994462e-008 0.12737662 2.0485897 -1.0798893e-007 
		0.14954478 2.1885545 0 0.12737662 2.3285213 0 0.063041568 2.4547839 1.0798893e-007 
		-0.037163265 2.5549881 5.3994462e-008 -0.16342831 2.6192505 5.3994462e-008 -0.30339387 
		2.6412017 -1.0798893e-007 -0.4433597 2.6192505 1.0798893e-007 -0.56962526 2.5549881 
		1.0798893e-007 -0.66983014 2.4547839 -5.3994462e-008 -0.73416412 2.3285213 -5.3994462e-008 
		-0.75633383 2.1885545 0;
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
createNode transform -n "lowerInnerLid_L" -p "_L";
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
createNode mesh -n "lowerInnerLid_LShape" -p "lowerInnerLid_L";
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
	setAttr ".bnr" 0;
	setAttr -s 20 ".pt[0:19]" -type "float3"  -0.75207454 1.7294707 0 -0.68774039 
		1.6032056 -1.0798893e-007 -0.58753538 1.5030018 5.3994462e-008 -0.46126968 1.438665 
		5.3994462e-008 -0.32130367 1.4164965 0 -0.18133773 1.438665 0 -0.055072758 1.5030018 
		-1.0798893e-007 0.045132015 1.6032057 -5.3994462e-008 0.10946706 1.7294707 -1.0798893e-007 
		0.13163525 1.8694352 0 0.10946706 2.0094016 0 0.045131955 2.1356647 1.0798893e-007 
		-0.055072878 2.2358685 5.3994462e-008 -0.18133779 2.3001311 5.3994462e-008 -0.32130367 
		2.3220823 -1.0798893e-007 -0.46126956 2.3001311 1.0798893e-007 -0.58753526 2.2358685 
		1.0798893e-007 -0.68774015 2.1356647 -5.3994462e-008 -0.75207418 2.0094016 -5.3994462e-008 
		-0.77424377 1.8694352 0;
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
createNode transform -n "upperOuterLid_L" -p "_L";
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
createNode mesh -n "upperOuterLid_LShape" -p "upperOuterLid_L";
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
	setAttr ".bnr" 0;
	setAttr -s 20 ".pt[0:19]" -type "float3"  -1.1900468 2.0485878 0 -1.1257125 
		1.9223225 -1.0798893e-007 -1.0255077 1.822119 5.3994462e-008 -0.89924181 1.757782 
		5.3994462e-008 -0.75927591 1.7356133 0 -0.61931002 1.7577817 0 -0.49304491 1.8221188 
		-1.0798893e-007 -0.39284006 1.9223225 -5.3994462e-008 -0.32850504 2.0485878 -1.0798893e-007 
		-0.30633676 2.1885538 0 -0.32850504 2.3285208 0 -0.39284012 2.4547839 1.0798893e-007 
		-0.49304503 2.5549874 5.3994462e-008 -0.61931002 2.6192503 5.3994462e-008 -0.75927591 
		2.6412013 -1.0798893e-007 -0.89924169 2.6192503 1.0798893e-007 -1.0255076 2.5549874 
		1.0798893e-007 -1.1257123 2.4547839 -5.3994462e-008 -1.1900464 2.3285208 -5.3994462e-008 
		-1.2122159 2.1885538 0;
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
createNode transform -n "lowerOuterLid_L" -p "_L";
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
createNode mesh -n "lowerOuterLid_LShape" -p "lowerOuterLid_L";
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
	setAttr ".bnr" 0;
	setAttr -s 20 ".pt[0:19]" -type "float3"  -1.1623679 1.7310985 0 -1.0980334 
		1.6048337 -1.0798893e-007 -0.9978289 1.50463 5.3994462e-008 -0.87156284 1.4402932 
		5.3994462e-008 -0.73159707 1.4181246 0 -0.59163117 1.4402931 0 -0.46536624 1.50463 
		-1.0798893e-007 -0.36516139 1.6048336 -5.3994462e-008 -0.30082631 1.7310985 -1.0798893e-007 
		-0.27865815 1.8710641 0 -0.30082631 2.0110302 0 -0.36516145 2.1372931 1.0798893e-007 
		-0.46536636 2.2374971 5.3994462e-008 -0.59163117 2.3017597 5.3994462e-008 -0.73159707 
		2.3237109 -1.0798893e-007 -0.87156272 2.3017597 1.0798893e-007 -0.99782878 2.2374971 
		1.0798893e-007 -1.0980332 2.1372931 -5.3994462e-008 -1.1623673 2.0110302 -5.3994462e-008 
		-1.1845372 1.8710641 0;
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
createNode transform -n "EyeRegion_L" -p "_L";
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
createNode mesh -n "EyeRegion_LShape" -p "EyeRegion_L";
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
	setAttr ".bnr" 0;
	setAttr -s 20 ".pt[0:19]" -type "float3"  -1.9515764 1.9037715 0 -1.9024537 
		1.8063235 -8.3342641e-008 -1.8259363 1.7289885 4.1671321e-008 -1.7295244 1.6793371 
		4.1671321e-008 -1.6226488 1.6622267 0 -1.5157741 1.6793373 0 -1.4193631 1.7289886 
		-8.3342641e-008 -1.3428469 1.8063236 -4.1671321e-008 -1.2937229 1.9037715 -8.3342641e-008 
		-1.2767962 2.0117903 0 -1.2937229 2.1198137 0 -1.3428468 2.217258 8.3342641e-008 
		-1.4193633 2.2945936 4.1671321e-008 -1.5157748 2.3442421 4.1671321e-008 -1.6226488 
		2.3613513 -8.3342641e-008 -1.7295243 2.3442421 8.3342641e-008 -1.8259361 2.2945936 
		8.3342641e-008 -1.9024534 2.217258 -4.1671321e-008 -1.9515761 2.1198137 -4.1671321e-008 
		-1.9685028 2.0117903 0;
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
createNode transform -n "EyeBrowInner_L" -p "_L";
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
createNode mesh -n "EyeBrowInner_LShape" -p "EyeBrowInner_L";
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
	setAttr ".bnr" 0;
	setAttr -s 20 ".pt[0:19]" -type "float3"  -0.62696224 2.3886588 0 -0.57045043 
		2.2777469 -9.485791e-008 -0.48243007 2.1897275 4.7428955e-008 -0.37151781 2.1332145 
		4.7428955e-008 -0.24857083 2.1137416 0 -0.12562448 2.1332145 0 -0.014713231 2.1897278 
		-9.485791e-008 0.073306538 2.2777469 -4.7428955e-008 0.12981886 2.3886588 -9.485791e-008 
		0.14929183 2.5116043 0 0.12981886 2.6345508 0 0.073306479 2.7454619 9.485791e-008 
		-0.01471335 2.8334818 4.7428955e-008 -0.12562445 2.8899946 4.7428955e-008 -0.24857083 
		2.9094667 -9.485791e-008 -0.37151769 2.8899946 9.485791e-008 -0.48242995 2.8334818 
		9.485791e-008 -0.57045019 2.7454619 -4.7428955e-008 -0.62696189 2.6345508 -4.7428955e-008 
		-0.64643496 2.5116043 0;
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
createNode transform -n "EyeBrowRegion_L" -p "_L";
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
createNode mesh -n "EyeBrowRegion_LShape" -p "EyeBrowRegion_L";
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
	setAttr ".bnr" 0;
	setAttr -s 20 ".pt[0:19]" -type "float3"  -1.9227914 2.2725704 0 -1.8779678 
		2.1508064 -8.3342641e-008 -1.8081465 2.0541749 4.1671321e-008 -1.7201715 1.9921335 
		4.1671321e-008 -1.6226488 1.9707552 0 -1.5251266 1.9921337 0 -1.4371531 2.0541749 
		-8.3342641e-008 -1.3673328 2.1508067 -4.1671321e-008 -1.3225079 2.2725704 -8.3342641e-008 
		-1.3070625 2.4075458 0 -1.3225079 2.5425224 0 -1.3673329 2.6642821 8.3342641e-008 
		-1.4371532 2.7609167 4.1671321e-008 -1.5251276 2.8229563 4.1671321e-008 -1.6226488 
		2.8443341 -8.3342641e-008 -1.7201713 2.8229563 8.3342641e-008 -1.8081462 2.7609167 
		8.3342641e-008 -1.8779676 2.6642821 -4.1671321e-008 -1.9227911 2.5425224 -4.1671321e-008 
		-1.9382365 2.4075458 0;
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
createNode transform -n "EyeBrowMid1_L" -p "_L";
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
createNode mesh -n "EyeBrowMid1_LShape" -p "EyeBrowMid1_L";
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
	setAttr ".bnr" 0;
	setAttr -s 20 ".pt[0:19]" -type "float3"  -0.88801086 2.4280729 0 -0.82779503 
		2.3098922 -1.0107505e-007 -0.73400575 2.2161031 5.0537523e-008 -0.61582416 2.1558869 
		5.0537523e-008 -0.48481917 2.1351373 0 -0.3538146 2.1558869 0 -0.23563388 2.2161033 
		-1.0107505e-007 -0.14184508 2.3098922 -5.0537523e-008 -0.081629097 2.4280729 -1.0107505e-007 
		-0.060879856 2.559077 0 -0.081629097 2.6900821 0 -0.14184514 2.8082621 1.0107505e-007 
		-0.235634 2.9020517 5.0537523e-008 -0.35381466 2.9622672 5.0537523e-008 -0.48481917 
		2.9830167 -1.0107505e-007 -0.61582404 2.9622672 1.0107505e-007 -0.73400563 2.9020517 
		1.0107505e-007 -0.82779479 2.8082621 -5.0537523e-008 -0.88801062 2.6900821 -5.0537523e-008 
		-0.90875971 2.559077 0;
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
createNode transform -n "EyeBrowMid2_L" -p "_L";
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
createNode mesh -n "EyeBrowMid2_LShape" -p "EyeBrowMid2_L";
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
	setAttr ".bnr" 0;
	setAttr -s 20 ".pt[0:19]" -type "float3"  -1.0585699 2.4188538 0 -0.99835408 
		2.300673 -1.0107505e-007 -0.9045648 2.2068839 5.0537523e-008 -0.78638321 2.1466677 
		5.0537523e-008 -0.65537822 2.1259181 0 -0.52437365 2.1466677 0 -0.40619293 2.2068841 
		-1.0107505e-007 -0.31240413 2.300673 -5.0537523e-008 -0.25218815 2.4188538 -1.0107505e-007 
		-0.23143891 2.5498579 0 -0.25218815 2.6808629 0 -0.31240419 2.7990429 1.0107505e-007 
		-0.40619305 2.8928325 5.0537523e-008 -0.52437371 2.953048 5.0537523e-008 -0.65537822 
		2.9737976 -1.0107505e-007 -0.78638309 2.953048 1.0107505e-007 -0.90456468 2.8928325 
		1.0107505e-007 -0.99835384 2.7990429 -5.0537523e-008 -1.0585697 2.6808629 -5.0537523e-008 
		-1.0793188 2.5498579 0;
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
createNode transform -n "EyeBrowMid3_L" -p "_L";
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
createNode mesh -n "EyeBrowMid3_LShape" -p "EyeBrowMid3_L";
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
	setAttr ".bnr" 0;
	setAttr -s 20 ".pt[0:19]" -type "float3"  -1.229129 2.3773675 0 -1.1689131 
		2.2591867 -1.0107505e-007 -1.0751238 2.1653976 5.0537523e-008 -0.9569422 2.1051815 
		5.0537523e-008 -0.82593727 2.0844319 0 -0.6949327 2.1051815 0 -0.57675195 2.1653979 
		-1.0107505e-007 -0.48296314 2.2591867 -5.0537523e-008 -0.42274719 2.3773675 -1.0107505e-007 
		-0.40199795 2.5083716 0 -0.42274719 2.6393766 0 -0.4829632 2.7575567 1.0107505e-007 
		-0.57675207 2.8513463 5.0537523e-008 -0.69493276 2.9115617 5.0537523e-008 -0.82593727 
		2.9323113 -1.0107505e-007 -0.95694208 2.9115617 1.0107505e-007 -1.0751237 2.8513463 
		1.0107505e-007 -1.1689129 2.7575567 -5.0537523e-008 -1.2291287 2.6393766 -5.0537523e-008 
		-1.2498778 2.5083716 0;
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
createNode transform -n "EyeBrowOuter_L" -p "_L";
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
createNode mesh -n "EyeBrowOuter_LShape" -p "EyeBrowOuter_L";
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
	setAttr ".bnr" 0;
	setAttr -s 20 ".pt[0:19]" -type "float3"  -1.3582007 2.2713468 0 -1.2979848 
		2.1531661 -1.0107505e-007 -1.2041955 2.059377 5.0537523e-008 -1.0860139 1.9991602 
		5.0537523e-008 -0.95500898 1.9784104 0 -0.82400441 1.9991602 0 -0.70582366 2.0593772 
		-1.0107505e-007 -0.61203486 2.1531661 -5.0537523e-008 -0.55181891 2.2713468 -1.0107505e-007 
		-0.53106964 2.4023509 0 -0.55181891 2.533356 0 -0.61203492 2.651536 1.0107505e-007 
		-0.70582378 2.7453256 5.0537523e-008 -0.82400447 2.805541 5.0537523e-008 -0.95500898 
		2.8262906 -1.0107505e-007 -1.0860138 2.805541 1.0107505e-007 -1.2041954 2.7453256 
		1.0107505e-007 -1.2979846 2.651536 -5.0537523e-008 -1.3582004 2.533356 -5.0537523e-008 
		-1.3789495 2.4023509 0;
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
createNode transform -n "Nostril_L" -p "_L";
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
createNode mesh -n "Nostril_LShape" -p "Nostril_L";
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
	setAttr ".bnr" 0;
	setAttr -s 20 ".pt[0:19]" -type "float3"  -0.57432669 1.3218632 0 -0.51077837 
		1.1971425 -1.0666771e-007 -0.41180015 1.0981641 5.3333856e-008 -0.28708041 1.034616 
		5.3333856e-008 -0.14882688 1.012719 0 -0.010573717 1.034616 0 0.11414663 1.0981642 
		-1.0666771e-007 0.2131252 1.1971426 -5.3333856e-008 0.2766732 1.3218632 -1.0666771e-007 
		0.29857031 1.4601164 0 0.2766732 1.5983698 0 0.21312514 1.7230889 1.0666771e-007 
		0.11414651 1.822069 5.3333856e-008 -0.010573717 1.8856162 5.3333856e-008 -0.14882688 
		1.9075135 -1.0666771e-007 -0.28708029 1.8856162 1.0666771e-007 -0.41180003 1.822069 
		1.0666771e-007 -0.51077813 1.7230889 -5.3333856e-008 -0.57432634 1.5983698 -5.3333856e-008 
		-0.59622335 1.4601164 0;
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
createNode transform -n "NoseSide_L" -p "_L";
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
createNode mesh -n "NoseSide_LShape" -p "NoseSide_L";
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
	setAttr ".bnr" 0;
	setAttr -s 20 ".pt[0:19]" -type "float3"  -0.68861383 1.4818664 0 -0.62506551 
		1.3571457 -1.0666771e-007 -0.52608728 1.2581673 5.3333856e-008 -0.40136755 1.1946192 
		5.3333856e-008 -0.26311404 1.1727222 0 -0.12486087 1.1946192 0 -0.00014052819 1.2581674 
		-1.0666771e-007 0.098838061 1.3571458 -5.3333856e-008 0.16238606 1.4818664 -1.0666771e-007 
		0.18428317 1.6201196 0 0.16238606 1.758373 0 0.098838001 1.883092 1.0666771e-007 
		-0.0001406474 1.9820722 5.3333856e-008 -0.12486087 2.0456192 5.3333856e-008 -0.26311404 
		2.0675168 -1.0666771e-007 -0.40136743 2.0456192 1.0666771e-007 -0.52608716 1.9820722 
		1.0666771e-007 -0.62506527 1.883092 -5.3333856e-008 -0.68861347 1.758373 -5.3333856e-008 
		-0.71051049 1.6201196 0;
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
createNode transform -n "SmileBulge_L" -p "_L";
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
createNode mesh -n "SmileBulge_LShape" -p "SmileBulge_L";
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
	setAttr ".bnr" 0;
	setAttr -s 20 ".pt[0:19]" -type "float3"  -1.0116463 1.0160444 0 -0.96417469 
		0.8707816 -1.0086045e-007 -0.88697553 0.74773997 5.0430224e-008 -0.78574675 0.65711385 
		5.0430224e-008 -0.6670391 0.60441595 0 -0.54075646 0.59308594 0 -0.42097855 0.62595081 
		-1.0086045e-007 -0.32278991 0.70314926 -5.0430224e-008 -0.2576482 0.81898671 -1.0086045e-007 
		-0.23181134 0.96198416 0 -0.24823174 1.1185881 0 -0.30596873 1.2741114 1.0086045e-007 
		-0.39936543 1.4133556 5.0430224e-008 -0.51694143 1.5203302 5.0430224e-008 -0.6427238 
		1.5800996 -1.0086045e-007 -0.76193559 1.5843545 1.0086045e-007 -0.86536413 1.5351413 
		1.0086045e-007 -0.94735235 1.441745 -5.0430224e-008 -1.0022315 1.3156451 -5.0430224e-008 
		-1.0246071 1.1691866 0;
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
createNode transform -n "FrownBulge_L" -p "_L";
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
createNode mesh -n "FrownBulge_LShape" -p "FrownBulge_L";
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
	setAttr ".bnr" 0;
	setAttr -s 20 ".pt[0:19]" -type "float3"  -1.0961838 0.57334977 0 -1.0201877 
		0.41170901 -1.0186768e-007 -0.8990528 0.26951101 5.0933838e-008 -0.74307108 0.16243026 
		5.0933838e-008 -0.56466818 0.10412288 0 -0.37985244 0.10191803 0 -0.20816901 0.15440784 
		-1.0186768e-007 -0.069264367 0.25327843 -5.0933838e-008 0.021688767 0.38710767 -1.0186768e-007 
		0.055904899 0.5429064 0 0.02965972 0.70502442 0 -0.055023171 0.85696155 1.0186768e-007 
		-0.18987285 0.98385239 5.0933838e-008 -0.35969421 1.0754824 5.0933838e-008 -0.54408371 
		1.1271032 -1.0186768e-007 -0.72290987 1.1359912 1.0186768e-007 -0.88075322 1.0989537 
		1.0186768e-007 -1.0059476 1.0153933 -5.0933838e-008 -1.0882114 0.89126462 -5.0933838e-008 
		-1.119498 0.73873681 0;
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
createNode transform -n "upperLipA_L" -p "_L";
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
createNode mesh -n "upperLipA_LShape" -p "upperLipA_L";
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
	setAttr ".bnr" 0;
	setAttr -s 20 ".pt[0:19]" -type "float3"  -0.66654402 0.76849687 0.038265921 
		-0.60109562 0.64004409 0.038265802 -0.49915603 0.53810483 0.03826597 -0.37070447 
		0.47265413 0.03826597 -0.22831488 0.45010158 0.038265921 -0.085925236 0.47265419 
		0.038265921 0.042526495 0.53810495 0.038265802 0.14446627 0.64004421 0.038265862 
		0.20991546 0.76849687 0.038265802 0.23246759 0.91088545 0.038265921 0.20991546 1.0532759 
		0.038265921 0.14446621 1.1817254 0.038266029 0.042526376 1.2836653 0.03826597 -0.085925281 
		1.3490536 0.03826597 -0.22831494 1.3714248 0.038265802 -0.37070435 1.3490536 0.038266029 
		-0.49915591 1.2836653 0.038266029 -0.60109538 1.1817254 0.038265862 -0.66654366 1.0532759 
		0.038265862 -0.68909693 0.91088545 0.038265921;
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
createNode transform -n "upperLipB_L" -p "_L";
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
createNode mesh -n "upperLipB_LShape" -p "upperLipB_L";
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
	setAttr ".bnr" 0;
	setAttr -s 20 ".pt[0:19]" -type "float3"  -0.83276933 0.75318515 -0.11938212 
		-0.76516706 0.62050617 -0.11938224 -0.65987325 0.51521266 -0.11938208 -0.52719533 
		0.44760892 -0.11938208 -0.38012072 0.42431471 -0.11938212 -0.23304571 0.44760898 
		-0.11938212 -0.10036755 0.51521277 -0.11938224 0.0049263434 0.62050629 -0.11938218 
		0.072529078 0.75318515 -0.11938224 0.095823243 0.90025926 -0.11938212 0.072529078 
		1.0473346 -0.11938212 0.0049262838 1.1800109 -0.11938202 -0.10036767 1.2853053 -0.11938208 
		-0.23304576 1.3528703 -0.11938208 -0.38012075 1.3760536 -0.11938224 -0.52719522 1.3528703 
		-0.11938202 -0.65987313 1.2853053 -0.11938202 -0.76516682 1.1800109 -0.11938218 -0.83276904 
		1.0473346 -0.11938218 -0.85606396 0.90025926 -0.11938212;
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
createNode transform -n "Lip_L" -p "_L";
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
createNode mesh -n "Lip_LShape" -p "Lip_L";
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
	setAttr ".bnr" 0;
	setAttr -s 20 ".pt[0:19]" -type "float3"  -0.89228505 0.716474 -0.1193822 
		-0.82683665 0.58802122 -0.11938232 -0.72489703 0.48608199 -0.11938216 -0.59644514 
		0.4206315 -0.11938216 -0.45405528 0.39807925 -0.1193822 -0.31166559 0.42063156 -0.1193822 
		-0.18321377 0.48608211 -0.11938232 -0.081273995 0.58802134 -0.11938226 -0.015824858 
		0.716474 -0.11938232 0.0067272149 0.85886258 -0.1193822 -0.015824858 1.0012536 -0.1193822 
		-0.081274055 1.1297032 -0.1193821 -0.18321389 1.231643 -0.11938216 -0.31166562 1.2970313 
		-0.11938216 -0.45405534 1.3194025 -0.11938232 -0.59644502 1.2970313 -0.1193821 -0.72489691 
		1.231643 -0.1193821 -0.82683641 1.1297032 -0.11938226 -0.89228469 1.0012536 -0.11938226 
		-0.91483802 0.85886258 -0.1193822;
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
createNode transform -n "SmilePull_L" -p "_L";
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
createNode mesh -n "SmilePull_LShape" -p "SmilePull_L";
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
	setAttr ".bnr" 0;
	setAttr -s 20 ".pt[0:19]" -type "float3"  -1.0056071 0.75652409 0 -0.90530527 
		0.66577208 -9.2443912e-008 -0.76287955 0.59374988 4.622196e-008 -0.60604578 0.54750943 
		4.622196e-008 -0.45658708 0.53157723 0 -0.32710829 0.54750931 0 -0.22396906 0.59375 
		-9.2443912e-008 -0.15169312 0.6657722 -4.622196e-008 -0.11028652 0.75652409 -9.2443912e-008 
		-0.096776351 0.85712409 0 -0.11028652 0.95772481 0 -0.15169318 1.0484773 9.2443912e-008 
		-0.22396918 1.1204981 4.622196e-008 -0.32710829 1.1667373 4.622196e-008 -0.45658708 
		1.1826699 -9.2443912e-008 -0.60604566 1.1667378 9.2443912e-008 -0.76287943 1.1204985 
		9.2443912e-008 -0.90530503 1.0484778 -4.622196e-008 -1.0056068 0.95772606 -4.622196e-008 
		-1.0418205 0.85712409 0;
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
createNode transform -n "lowerLipB_L" -p "_L";
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
createNode mesh -n "lowerLipB_LShape" -p "lowerLipB_L";
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
	setAttr ".bnr" 0;
	setAttr -s 20 ".pt[0:19]" -type "float3"  -0.83767682 0.62987494 -0.086528376 
		-0.77007455 0.4971959 -0.08652848 -0.66478038 0.39190221 -0.086528316 -0.53210241 
		0.32429966 -0.086528316 -0.38502797 0.30100551 -0.086528376 -0.23795304 0.32429972 
		-0.086528376 -0.10527486 0.39190233 -0.08652848 1.9104686e-005 0.49719602 -0.086528435 
		0.067621857 0.62987494 -0.08652848 0.090916008 0.77694952 -0.086528376 0.067621857 
		0.92402393 -0.086528376 1.9045081e-005 1.0567025 -0.086528271 -0.10527498 1.1619976 
		-0.086528316 -0.2379531 1.2295998 -0.086528316 -0.38502795 1.252894 -0.08652848 -0.53210229 
		1.2295998 -0.086528271 -0.6647802 1.1619976 -0.086528271 -0.77007431 1.0567025 -0.086528435 
		-0.83767647 0.92402393 -0.086528435 -0.86097145 0.77694952 -0.086528376;
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
createNode transform -n "lowerLipA_L" -p "_L";
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
createNode mesh -n "lowerLipA_LShape" -p "lowerLipA_L";
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
	setAttr ".bnr" 0;
	setAttr -s 20 ".pt[0:19]" -type "float3"  -0.66541022 0.56242555 0.080578595 
		-0.59996182 0.43397239 0.080578491 -0.49802145 0.33203289 0.080578655 -0.36956933 
		0.26658407 0.080578655 -0.22717978 0.24403195 0.080578595 -0.084790364 0.26658413 
		0.080578595 0.043661408 0.33203301 0.080578491 0.14560123 0.43397251 0.080578536 
		0.21105044 0.56242555 0.080578491 0.2336026 0.70481515 0.080578595 0.21105044 0.84720421 
		0.080578595 0.14560117 0.97565633 0.0805787 0.043661289 1.0775973 0.080578655 -0.084790424 
		1.1430459 0.080578655 -0.22717977 1.1655977 0.080578491 -0.36956921 1.1430459 0.0805787 
		-0.49802133 1.0775973 0.0805787 -0.59996158 0.97565633 0.080578536 -0.66540986 0.84720421 
		0.080578536 -0.68796313 0.70481515 0.080578595;
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
createNode transform -n "FaceControlSet" -p "Group";
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
createNode mesh -n "FaceControlSetShape" -p "FaceControlSet";
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
	setAttr ".bnr" 0;
	setAttr -s 24 ".pt[0:23]" -type "float3"  -8.347209 -12.849133 0 -9.3701382 
		-12.849133 0 -8.347209 -13.399166 0 -9.3701382 -13.399166 0 -8.8586731 -12.849133 
		0 -8.347209 -13.124149 0 -9.3701382 -13.124149 0 -8.8586731 -13.399166 0 -8.6029367 
		-12.849133 0 -9.1144094 -12.849133 0 -8.347209 -12.986645 0 -8.347209 -13.261654 
		0 -9.3701382 -12.986645 0 -9.3701382 -13.261654 0 -8.6029367 -13.399166 0 -9.1144094 
		-13.399166 0 -8.8586731 -13.047514 0 -9.0011873 -13.124149 0 -8.8586731 -13.200785 
		0 -8.7161579 -13.124149 0 -9.0011873 -13.047514 0 -9.0011873 -13.200785 0 -8.7161579 
		-13.200785 0 -8.7161579 -13.047514 0;
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
createNode mesh -n "FaceControlSetShape1" -p "FaceControlSet";
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
	setAttr ".bnr" 0;
	setAttr -s 71 ".pt[0:70]" -type "float3"  -3.8013997 2.3706679 0 -2.7980347 
		2.3706679 0 -2.8322406 3.1003888 0 -2.5600231 2.9625998 0 -2.8322406 3.1916051 0 
		-2.0839946 3.1916051 0 -2.0839946 3.1003888 0 -3.3139703 0.8200174 0 -3.4066081 0.8200174 
		0 -4.6650863 3.1003888 0 -4.6650863 3.1916051 0 -3.7985492 3.1916051 0 -3.7985492 
		3.1003888 0 -4.0380106 2.9685826 0 -3.7614923 2.2794583 0 -3.3025696 1.2433113 0 
		-2.8393672 2.2794583 0 -3.3745413 2.3706679 0 -3.3745413 0.8200174 0 -3.3745413 1.4058115 
		0 -3.3745413 2.2794583 0 -4.0389147 2.2429717 0 -3.7453303 2.2429717 0 -4.2348776 
		2.6840446 0 -4.2349081 3.1916051 0 -4.2496414 2.7173004 0 -4.375844 2.9544437 0 -4.449966 
		3.0340943 0 -4.4499969 3.1916051 0 -3.9538569 2.7172859 0 -3.9097738 3.1916051 0 
		-3.9097748 3.0883172 0 -4.0373049 2.9544437 0 -4.0723405 3.1916051 0 -3.9614592 3.0730357 
		0 -3.9910579 3.1916051 0 -3.9910612 3.0561414 0 -4.0277276 3.013737 0 -4.0317049 
		3.0046504 0 -3.9097738 2.6170659 0 -3.8281446 1.7686508 0 -3.5352488 1.7686508 0 
		-3.9097738 1.9523575 0 -3.6173782 1.2943373 0 -2.6749351 2.2429717 0 -2.8556767 2.2429717 
		0 -2.9443576 2.3706679 0 -2.9443576 2.2794583 0 -2.6437125 2.7172852 0 -2.4623075 
		2.7172842 0 -2.5141757 3.1916051 0 -2.5602491 2.9544432 0 -2.7292662 3.0895157 0 
		-2.7292662 3.1916051 0 -2.6563494 3.0730226 0 -2.6217227 3.1916051 0 -2.6217289 3.0583479 
		0 -2.5746646 3.0137351 0 -2.567945 3.0011604 0 -2.3388216 2.9544442 0 -2.2990854 
		3.1916051 0 -2.2990808 3.0077431 0 -2.5141757 2.6009462 0 -2.8879492 1.7686508 0 
		-3.0677185 1.7686508 0 -2.9443576 1.7686508 0 -2.9443576 2.0445948 0 -2.9443576 1.6430464 
		0 -3.1009598 1.2943373 0 -3.3251655 1.2943373 0 -3.2797582 1.2943373 0;
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
createNode mesh -n "FaceControlSetShape2" -p "FaceControlSet";
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
	setAttr ".bnr" 0;
	setAttr -s 38 ".pt[0:37]" -type "float3"  -5.1867218 0.72880328 0 -4.7164006 
		0.91123736 0 -4.7463222 1.0024513 0 -4.7164006 3.1003888 0 -4.9900451 1.395811 0 
		-4.8660583 0.97537667 0 -4.9900408 2.7440801 0 -4.9901271 2.8026066 0 -4.7164006 
		3.1916051 0 -5.5373302 3.1916051 0 -5.5373302 3.1003888 0 -5.2636833 0.72880328 0 
		-5.2636228 2.7837517 0 -4.9900408 1.9602047 0 -5.2636833 1.9602047 0 -4.9900408 2.5759082 
		0 -5.2636833 2.5759082 0 -4.9886556 2.8837492 0 -5.2648201 2.8837492 0 -5.1268635 
		3.1916051 0 -4.9456439 3.037679 0 -4.9216399 3.0613482 0 -4.921629 3.1916051 0 -5.3056908 
		3.0376773 0 -5.3320961 3.1916051 0 -5.3321052 3.0616872 0 -4.9900408 2.2680502 0 
		-5.2636833 2.2680502 0 -4.9899955 1.3445014 0 -5.2636833 1.3445014 0 -4.9900408 1.6523585 
		0 -5.2636833 1.6523585 0 -4.9655523 1.036648 0 -5.2636833 1.0366569 0 -5.1268635 
		0.75202715 0 -4.7898841 0.88272887 0 -4.9216475 0.98721743 0 -4.921629 0.83163053 
		0;
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
createNode mesh -n "FaceControlSetShape3" -p "FaceControlSet";
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
	setAttr ".bnr" 0;
	setAttr -s 38 ".pt[0:37]" -type "float3"  -6.1900883 0.72880328 0 -5.7197585 
		0.91123736 0 -5.7496901 1.0024513 0 -5.7197585 3.1003888 0 -5.9934063 1.395811 0 
		-5.8694224 0.97537667 0 -5.9934025 2.7440801 0 -5.9934893 2.8026066 0 -5.7197585 
		3.1916051 0 -6.5406923 3.1916051 0 -6.5406923 3.1003888 0 -6.2670503 0.72880328 0 
		-6.2669821 2.7837517 0 -5.9934025 1.9602047 0 -6.2670503 1.9602047 0 -5.9934025 2.5759082 
		0 -6.2670503 2.5759082 0 -5.9920163 2.8837492 0 -6.268187 2.8837492 0 -6.1302252 
		3.1916051 0 -5.9490113 3.037679 0 -5.9250011 3.0613482 0 -5.9249926 3.1916051 0 -6.3090529 
		3.0376773 0 -6.3354592 3.1916051 0 -6.3354692 3.0616872 0 -5.9934025 2.2680502 0 
		-6.2670503 2.2680502 0 -5.993361 1.3445014 0 -6.2670503 1.3445014 0 -5.9934025 1.6523585 
		0 -6.2670503 1.6523585 0 -5.9689169 1.036648 0 -6.2670503 1.0366569 0 -6.1302252 
		0.75202715 0 -5.7932453 0.88272887 0 -5.9250093 0.98721743 0 -5.9249926 0.83163053 
		0;
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
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 11 ".lnk";
	setAttr -s 11 ".slnk";
createNode displayLayerManager -n "layerManager";
	setAttr ".cdl" 2;
	setAttr -s 4 ".dli[1:3]"  4 2 3;
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode surfaceShader -n "surfaceShaderBlue1";
	setAttr ".oc" -type "float3" 0 0.86666656 1 ;
createNode shadingEngine -n "surfaceShaderBlue1SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 24 -ast 1 -aet 48 ";
	setAttr ".st" 6;
createNode surfaceShader -n "surfaceShaderSkin";
	setAttr ".oc" -type "float3" 0.86000001 0.64999998 0.55000001 ;
createNode shadingEngine -n "surfaceShaderSkinSG";
	setAttr ".ihi" 0;
	setAttr -s 3 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo3";
createNode surfaceShader -n "surfaceShaderBlack";
createNode shadingEngine -n "surfaceShaderBlackSG";
	setAttr ".ihi" 0;
	setAttr -s 8 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo5";
createNode surfaceShader -n "surfaceShaderWhite";
	setAttr ".oc" -type "float3" 1 1 1 ;
createNode shadingEngine -n "surfaceShaderWhiteSG";
	setAttr ".ihi" 0;
	setAttr -s 4 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo6";
createNode surfaceShader -n "surfaceShaderRed";
	setAttr ".oc" -type "float3" 0.90196079 0.070742019 0.070742019 ;
createNode shadingEngine -n "surfaceShaderRedSG";
	setAttr ".ihi" 0;
	setAttr -s 34 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo7";
createNode groupId -n "groupId1";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2";
	setAttr ".ihi" 0;
createNode polyPlane -n "polyPlane1";
	setAttr ".sw" 6;
	setAttr ".sh" 1;
	setAttr ".cuv" 2;
createNode surfaceShader -n "surfaceShaderGreen";
	setAttr ".oc" -type "float3" 0.40962312 0.7647059 0.32987311 ;
createNode shadingEngine -n "surfaceShaderGreenSG";
	setAttr ".ihi" 0;
	setAttr -s 13 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo8";
createNode surfaceShader -n "surfaceShaderBrown";
	setAttr ".oc" -type "float3" 1 0.41666663 0 ;
createNode shadingEngine -n "surfaceShaderBrownSG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo9";
createNode surfaceShader -n "surfaceShaderBlue2";
	setAttr ".oc" -type "float3" 0.17301036 0.17301036 0.98039216 ;
createNode shadingEngine -n "surfaceShaderBlue2SG";
	setAttr ".ihi" 0;
	setAttr -s 21 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo10";
createNode surfaceShader -n "surfaceShaderYellow";
	setAttr ".oc" -type "float3" 0.89208817 0.77358663 0 ;
createNode shadingEngine -n "surfaceShaderYellowSG";
	setAttr ".ihi" 0;
	setAttr -s 28 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 3 ".gn";
createNode materialInfo -n "materialInfo11";
createNode groupId -n "groupId8";
	setAttr ".ihi" 0;
createNode groupId -n "groupId9";
	setAttr ".ihi" 0;
createNode polySmoothFace -n "polySmoothFace1";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".suv" yes;
	setAttr ".bnr" 0;
	setAttr ".ps" 0.10000000149011612;
	setAttr ".ro" 1;
	setAttr ".ma" yes;
	setAttr ".m08" yes;
createNode polySmoothFace -n "polySmoothFace2";
	setAttr ".ics" -type "componentList" 1 "f[0:3]";
	setAttr ".suv" yes;
	setAttr ".bnr" 0;
	setAttr ".ps" 0.10000000149011612;
	setAttr ".ro" 1;
	setAttr ".ma" yes;
	setAttr ".m08" yes;
createNode polySmoothFace -n "polySmoothFace3";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".suv" yes;
	setAttr ".bnr" 0;
	setAttr ".ps" 0.10000000149011612;
	setAttr ".ro" 1;
	setAttr ".ma" yes;
	setAttr ".m08" yes;
createNode polyTweak -n "polyTweak1";
	setAttr ".uopa" yes;
	setAttr -s 25 ".tk[0:24]" -type "float3"  -2.44528413 -1.84336197 0
		 -2.44528413 -1.84336197 0 -2.44528413 -1.84336197 0 -2.44528413 -1.84336197 0 -2.44528413
		 -1.84336197 0 -2.44528413 -1.84336197 0 -2.44528413 -1.84336197 0 -2.44528413 -1.84336197
		 0 -2.44528413 -1.84336197 0 -2.44528413 -1.84336197 0 -2.44528413 -1.84336197 0 -2.44528413
		 -1.84336197 0 -2.44528413 -1.84336197 0 -2.44528413 -1.84336197 0 -2.44528413 -1.84336197
		 0 -2.44528413 -1.84336197 0 -2.44528413 -1.84336197 0 -2.44528413 -1.84336197 0 -2.44528413
		 -1.84336197 0 -2.44528413 -1.84336197 0 -2.44528413 -1.84336197 0 -2.44528413 -1.84336197
		 0 -2.44528413 -1.84336197 0 -2.44528413 -1.84336197 0 -2.44528413 -1.84336197 0;
createNode deleteComponent -n "deleteComponent1";
	setAttr ".dc" -type "componentList" 16 "f[0:3]" "f[6:7]" "f[10]" "f[13:14]" "f[16:19]" "f[22:23]" "f[26]" "f[29:30]" "f[32:35]" "f[38:39]" "f[42]" "f[45:46]" "f[48:51]" "f[54:55]" "f[58]" "f[61:62]";
createNode deleteComponent -n "deleteComponent2";
	setAttr ".dc" -type "componentList" 12 "e[8:12]" "e[16:20]" "e[25:26]" "e[29:30]" "e[36]" "e[39]" "e[43]" "e[45]" "e[56]" "e[59]" "e[63]" "e[65]";
createNode deleteComponent -n "deleteComponent3";
	setAttr ".dc" -type "componentList" 9 "e[8:17]" "e[19]" "e[21]" "e[28]" "e[31]" "e[35]" "e[37]" "e[44]" "e[47]";
createNode deleteComponent -n "deleteComponent4";
	setAttr ".dc" -type "componentList" 2 "vtx[16]" "vtx[26]";
createNode deleteComponent -n "deleteComponent5";
	setAttr ".dc" -type "componentList" 2 "vtx[16]" "vtx[26]";
createNode deleteComponent -n "deleteComponent6";
	setAttr ".dc" -type "componentList" 1 "vtx[3]";
createNode deleteComponent -n "deleteComponent7";
	setAttr ".dc" -type "componentList" 1 "vtx[0]";
createNode deleteComponent -n "deleteComponent8";
	setAttr ".dc" -type "componentList" 2 "vtx[15]" "vtx[25]";
createNode deleteComponent -n "deleteComponent9";
	setAttr ".dc" -type "componentList" 1 "vtx[0:1]";
createNode deleteComponent -n "deleteComponent10";
	setAttr ".dc" -type "componentList" 4 "vtx[8]" "vtx[11]" "vtx[13]" "vtx[18]";
createNode deleteComponent -n "deleteComponent11";
	setAttr ".dc" -type "componentList" 4 "vtx[8]" "vtx[10]" "vtx[12]" "vtx[16]";
createNode deleteComponent -n "deleteComponent12";
	setAttr ".dc" -type "componentList" 2 "vtx[8]" "vtx[10]";
createNode groupId -n "groupId10";
	setAttr ".ihi" 0;

connectAttr "groupId1.id" "face_MShape.iog.og[0].gid";
connectAttr "surfaceShaderSkinSG.mwc" "face_MShape.iog.og[0].gco";
connectAttr "groupId2.id" "nose_MShape.iog.og[0].gid";
connectAttr "surfaceShaderBlackSG.mwc" "nose_MShape.iog.og[0].gco";
connectAttr "polyPlane1.out" "lip2_MShape.i";
connectAttr "groupId9.id" "upperFace_MShape.iog.og[0].gid";
connectAttr "surfaceShaderYellowSG.mwc" "upperFace_MShape.iog.og[0].gco";
connectAttr "groupId10.id" "middleFace_MShape.iog.og[0].gid";
connectAttr "surfaceShaderYellowSG.mwc" "middleFace_MShape.iog.og[0].gco";
connectAttr "groupId8.id" "lowerFace_MShape.iog.og[0].gid";
connectAttr "surfaceShaderYellowSG.mwc" "lowerFace_MShape.iog.og[0].gco";
connectAttr "deleteComponent12.og" "AimEye_MShape.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "surfaceShaderBlue1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "surfaceShaderSkinSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "surfaceShaderBlackSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "surfaceShaderWhiteSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "surfaceShaderRedSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "surfaceShaderGreenSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "surfaceShaderBrownSG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "surfaceShaderBlue2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "surfaceShaderYellowSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "surfaceShaderBlue1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "surfaceShaderSkinSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "surfaceShaderBlackSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "surfaceShaderWhiteSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "surfaceShaderRedSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "surfaceShaderGreenSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "surfaceShaderBrownSG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "surfaceShaderBlue2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "surfaceShaderYellowSG.message" ":defaultLightSet.message";
connectAttr "surfaceShaderBlue1.oc" "surfaceShaderBlue1SG.ss";
connectAttr "surfaceShaderBlue1SG.msg" "materialInfo1.sg";
connectAttr "surfaceShaderBlue1.msg" "materialInfo1.m";
connectAttr "surfaceShaderBlue1.msg" "materialInfo1.t" -na;
connectAttr "surfaceShaderSkin.oc" "surfaceShaderSkinSG.ss";
connectAttr "ear_RShape.iog" "surfaceShaderSkinSG.dsm" -na;
connectAttr "face_MShape.iog.og[0]" "surfaceShaderSkinSG.dsm" -na;
connectAttr "ear_LShape.iog" "surfaceShaderSkinSG.dsm" -na;
connectAttr "groupId1.msg" "surfaceShaderSkinSG.gn" -na;
connectAttr "surfaceShaderSkinSG.msg" "materialInfo3.sg";
connectAttr "surfaceShaderSkin.msg" "materialInfo3.m";
connectAttr "surfaceShaderSkin.msg" "materialInfo3.t" -na;
connectAttr "surfaceShaderBlack.oc" "surfaceShaderBlackSG.ss";
connectAttr "pupil_RShape.iog" "surfaceShaderBlackSG.dsm" -na;
connectAttr "eyeBrow_RShape.iog" "surfaceShaderBlackSG.dsm" -na;
connectAttr "hair_RShape.iog" "surfaceShaderBlackSG.dsm" -na;
connectAttr "nose_MShape.iog.og[0]" "surfaceShaderBlackSG.dsm" -na;
connectAttr "lip2_MShape.iog" "surfaceShaderBlackSG.dsm" -na;
connectAttr "pupil_LShape.iog" "surfaceShaderBlackSG.dsm" -na;
connectAttr "eyeBrow_LShape.iog" "surfaceShaderBlackSG.dsm" -na;
connectAttr "hair_LShape.iog" "surfaceShaderBlackSG.dsm" -na;
connectAttr "groupId2.msg" "surfaceShaderBlackSG.gn" -na;
connectAttr "surfaceShaderBlackSG.msg" "materialInfo5.sg";
connectAttr "surfaceShaderBlack.msg" "materialInfo5.m";
connectAttr "surfaceShaderBlack.msg" "materialInfo5.t" -na;
connectAttr "surfaceShaderWhite.oc" "surfaceShaderWhiteSG.ss";
connectAttr "eyeBall_RShape.iog" "surfaceShaderWhiteSG.dsm" -na;
connectAttr "upperTeeth_MShape.iog" "surfaceShaderWhiteSG.dsm" -na;
connectAttr "lowerTeeth_MShape.iog" "surfaceShaderWhiteSG.dsm" -na;
connectAttr "eyeBall_LShape.iog" "surfaceShaderWhiteSG.dsm" -na;
connectAttr "surfaceShaderWhiteSG.msg" "materialInfo6.sg";
connectAttr "surfaceShaderWhite.msg" "materialInfo6.m";
connectAttr "surfaceShaderWhite.msg" "materialInfo6.t" -na;
connectAttr "surfaceShaderRed.oc" "surfaceShaderRedSG.ss";
connectAttr "TongueShape.iog" "surfaceShaderRedSG.dsm" -na;
connectAttr "squashTop_MShape.iog" "surfaceShaderRedSG.dsm" -na;
connectAttr "squashMiddle_MShape.iog" "surfaceShaderRedSG.dsm" -na;
connectAttr "squashBase_MShape.iog" "surfaceShaderRedSG.dsm" -na;
connectAttr "EyeBrowMid1_RShape.iog" "surfaceShaderRedSG.dsm" -na;
connectAttr "EyeBrowMid2_RShape.iog" "surfaceShaderRedSG.dsm" -na;
connectAttr "EyeBrowMid3_RShape.iog" "surfaceShaderRedSG.dsm" -na;
connectAttr "EyeBrowOuter_RShape.iog" "surfaceShaderRedSG.dsm" -na;
connectAttr "lowerOuterLid_RShape.iog" "surfaceShaderRedSG.dsm" -na;
connectAttr "lowerInnerLid_RShape.iog" "surfaceShaderRedSG.dsm" -na;
connectAttr "upperInnerLid_RShape.iog" "surfaceShaderRedSG.dsm" -na;
connectAttr "upperOuterLid_RShape.iog" "surfaceShaderRedSG.dsm" -na;
connectAttr "CheekRaiser_RShape.iog" "surfaceShaderRedSG.dsm" -na;
connectAttr "NoseCorner_RShape.iog" "surfaceShaderRedSG.dsm" -na;
connectAttr "lowerLipA_RShape.iog" "surfaceShaderRedSG.dsm" -na;
connectAttr "upperLipA_RShape.iog" "surfaceShaderRedSG.dsm" -na;
connectAttr "SmileBulge_RShape.iog" "surfaceShaderRedSG.dsm" -na;
connectAttr "NoseCorner_LShape.iog" "surfaceShaderRedSG.dsm" -na;
connectAttr "CheekRaiser_LShape.iog" "surfaceShaderRedSG.dsm" -na;
connectAttr "upperInnerLid_LShape.iog" "surfaceShaderRedSG.dsm" -na;
connectAttr "lowerInnerLid_LShape.iog" "surfaceShaderRedSG.dsm" -na;
connectAttr "upperOuterLid_LShape.iog" "surfaceShaderRedSG.dsm" -na;
connectAttr "lowerOuterLid_LShape.iog" "surfaceShaderRedSG.dsm" -na;
connectAttr "EyeBrowMid1_LShape.iog" "surfaceShaderRedSG.dsm" -na;
connectAttr "EyeBrowMid2_LShape.iog" "surfaceShaderRedSG.dsm" -na;
connectAttr "EyeBrowMid3_LShape.iog" "surfaceShaderRedSG.dsm" -na;
connectAttr "EyeBrowOuter_LShape.iog" "surfaceShaderRedSG.dsm" -na;
connectAttr "SmileBulge_LShape.iog" "surfaceShaderRedSG.dsm" -na;
connectAttr "FrownBulge_RShape.iog" "surfaceShaderRedSG.dsm" -na;
connectAttr "FrownBulge_LShape.iog" "surfaceShaderRedSG.dsm" -na;
connectAttr "Lip_RShape.iog" "surfaceShaderRedSG.dsm" -na;
connectAttr "upperLipA_LShape.iog" "surfaceShaderRedSG.dsm" -na;
connectAttr "Lip_LShape.iog" "surfaceShaderRedSG.dsm" -na;
connectAttr "lowerLipA_LShape.iog" "surfaceShaderRedSG.dsm" -na;
connectAttr "surfaceShaderRedSG.msg" "materialInfo7.sg";
connectAttr "surfaceShaderRed.msg" "materialInfo7.m";
connectAttr "surfaceShaderRed.msg" "materialInfo7.t" -na;
connectAttr "surfaceShaderGreen.oc" "surfaceShaderGreenSG.ss";
connectAttr "SmilePull_RShape.iog" "surfaceShaderGreenSG.dsm" -na;
connectAttr "upperLip_MShape.iog" "surfaceShaderGreenSG.dsm" -na;
connectAttr "lowerLip_MShape.iog" "surfaceShaderGreenSG.dsm" -na;
connectAttr "upperLid_RShape.iog" "surfaceShaderGreenSG.dsm" -na;
connectAttr "lowerLid_RShape.iog" "surfaceShaderGreenSG.dsm" -na;
connectAttr "EyeBrowInner_RShape.iog" "surfaceShaderGreenSG.dsm" -na;
connectAttr "Cheek_RShape.iog" "surfaceShaderGreenSG.dsm" -na;
connectAttr "Nose_MShape.iog" "surfaceShaderGreenSG.dsm" -na;
connectAttr "Cheek_LShape.iog" "surfaceShaderGreenSG.dsm" -na;
connectAttr "upperLid_LShape.iog" "surfaceShaderGreenSG.dsm" -na;
connectAttr "lowerLid_LShape.iog" "surfaceShaderGreenSG.dsm" -na;
connectAttr "EyeBrowInner_LShape.iog" "surfaceShaderGreenSG.dsm" -na;
connectAttr "SmilePull_LShape.iog" "surfaceShaderGreenSG.dsm" -na;
connectAttr "surfaceShaderGreenSG.msg" "materialInfo8.sg";
connectAttr "surfaceShaderGreen.msg" "materialInfo8.m";
connectAttr "surfaceShaderGreen.msg" "materialInfo8.t" -na;
connectAttr "surfaceShaderBrown.oc" "surfaceShaderBrownSG.ss";
connectAttr "surfaceShaderBrownSG.msg" "materialInfo9.sg";
connectAttr "surfaceShaderBrown.msg" "materialInfo9.m";
connectAttr "surfaceShaderBrown.msg" "materialInfo9.t" -na;
connectAttr "surfaceShaderBlue2.oc" "surfaceShaderBlue2SG.ss";
connectAttr "FaceControlSetShape1.iog" "surfaceShaderBlue2SG.dsm" -na;
connectAttr "FaceControlSetShape.iog" "surfaceShaderBlue2SG.dsm" -na;
connectAttr "FaceControlSetShape2.iog" "surfaceShaderBlue2SG.dsm" -na;
connectAttr "FaceControlSetShape3.iog" "surfaceShaderBlue2SG.dsm" -na;
connectAttr "iris_RShape.iog" "surfaceShaderBlue2SG.dsm" -na;
connectAttr "EyeBrowMiddle_MShape.iog" "surfaceShaderBlue2SG.dsm" -na;
connectAttr "innerLid_RShape.iog" "surfaceShaderBlue2SG.dsm" -na;
connectAttr "outerLid_RShape.iog" "surfaceShaderBlue2SG.dsm" -na;
connectAttr "NoseUnder_MShape.iog" "surfaceShaderBlue2SG.dsm" -na;
connectAttr "Nostril_RShape.iog" "surfaceShaderBlue2SG.dsm" -na;
connectAttr "NoseMiddle_MShape.iog" "surfaceShaderBlue2SG.dsm" -na;
connectAttr "NoseSide_RShape.iog" "surfaceShaderBlue2SG.dsm" -na;
connectAttr "iris_LShape.iog" "surfaceShaderBlue2SG.dsm" -na;
connectAttr "innerLid_LShape.iog" "surfaceShaderBlue2SG.dsm" -na;
connectAttr "outerLid_LShape.iog" "surfaceShaderBlue2SG.dsm" -na;
connectAttr "Nostril_LShape.iog" "surfaceShaderBlue2SG.dsm" -na;
connectAttr "NoseSide_LShape.iog" "surfaceShaderBlue2SG.dsm" -na;
connectAttr "lowerLipB_RShape.iog" "surfaceShaderBlue2SG.dsm" -na;
connectAttr "upperLipB_RShape.iog" "surfaceShaderBlue2SG.dsm" -na;
connectAttr "upperLipB_LShape.iog" "surfaceShaderBlue2SG.dsm" -na;
connectAttr "lowerLipB_LShape.iog" "surfaceShaderBlue2SG.dsm" -na;
connectAttr "surfaceShaderBlue2SG.msg" "materialInfo10.sg";
connectAttr "surfaceShaderBlue2.msg" "materialInfo10.m";
connectAttr "surfaceShaderBlue2.msg" "materialInfo10.t" -na;
connectAttr "surfaceShaderYellow.oc" "surfaceShaderYellowSG.ss";
connectAttr "Jaw_MShape.iog" "surfaceShaderYellowSG.dsm" -na;
connectAttr "lowerFace_MShape.iog.og[0]" "surfaceShaderYellowSG.dsm" -na;
connectAttr "upperFace_MShape.iog.og[0]" "surfaceShaderYellowSG.dsm" -na;
connectAttr "ctrlBrow_RShape.iog" "surfaceShaderYellowSG.dsm" -na;
connectAttr "Tongue0_MShape.iog" "surfaceShaderYellowSG.dsm" -na;
connectAttr "Tongue1_MShape.iog" "surfaceShaderYellowSG.dsm" -na;
connectAttr "Tongue2_MShape.iog" "surfaceShaderYellowSG.dsm" -na;
connectAttr "Tongue3_MShape.iog" "surfaceShaderYellowSG.dsm" -na;
connectAttr "ctrlEye_RShape.iog" "surfaceShaderYellowSG.dsm" -na;
connectAttr "ctrlCheek_RShape.iog" "surfaceShaderYellowSG.dsm" -na;
connectAttr "ctrlNose_RShape.iog" "surfaceShaderYellowSG.dsm" -na;
connectAttr "ctrlMouthCorner_RShape.iog" "surfaceShaderYellowSG.dsm" -na;
connectAttr "ctrlBrow_LShape.iog" "surfaceShaderYellowSG.dsm" -na;
connectAttr "ctrlEye_LShape.iog" "surfaceShaderYellowSG.dsm" -na;
connectAttr "ctrlCheek_LShape.iog" "surfaceShaderYellowSG.dsm" -na;
connectAttr "ctrlNose_LShape.iog" "surfaceShaderYellowSG.dsm" -na;
connectAttr "ctrlMouthCorner_LShape.iog" "surfaceShaderYellowSG.dsm" -na;
connectAttr "ctrlMouth_MShape.iog" "surfaceShaderYellowSG.dsm" -na;
connectAttr "ctrlBoxShape.iog" "surfaceShaderYellowSG.dsm" -na;
connectAttr "AimEye_MShape.iog" "surfaceShaderYellowSG.dsm" -na;
connectAttr "AimEye_RShape.iog" "surfaceShaderYellowSG.dsm" -na;
connectAttr "AimEye_LShape.iog" "surfaceShaderYellowSG.dsm" -na;
connectAttr "EyeRegion_RShape.iog" "surfaceShaderYellowSG.dsm" -na;
connectAttr "EyeBrowRegion_RShape.iog" "surfaceShaderYellowSG.dsm" -na;
connectAttr "middleFace_MShape.iog.og[0]" "surfaceShaderYellowSG.dsm" -na;
connectAttr "LipRegion_MShape.iog" "surfaceShaderYellowSG.dsm" -na;
connectAttr "EyeRegion_LShape.iog" "surfaceShaderYellowSG.dsm" -na;
connectAttr "EyeBrowRegion_LShape.iog" "surfaceShaderYellowSG.dsm" -na;
connectAttr "groupId8.msg" "surfaceShaderYellowSG.gn" -na;
connectAttr "groupId9.msg" "surfaceShaderYellowSG.gn" -na;
connectAttr "groupId10.msg" "surfaceShaderYellowSG.gn" -na;
connectAttr "surfaceShaderYellowSG.msg" "materialInfo11.sg";
connectAttr "surfaceShaderYellow.msg" "materialInfo11.m";
connectAttr "surfaceShaderYellow.msg" "materialInfo11.t" -na;
connectAttr "|Group|_M|AimEye_M|polySurfaceShape1.o" "polySmoothFace1.ip";
connectAttr "polySmoothFace1.out" "polySmoothFace2.ip";
connectAttr "polyTweak1.out" "polySmoothFace3.ip";
connectAttr "polySmoothFace2.out" "polyTweak1.ip";
connectAttr "polySmoothFace3.out" "deleteComponent1.ig";
connectAttr "deleteComponent1.og" "deleteComponent2.ig";
connectAttr "deleteComponent2.og" "deleteComponent3.ig";
connectAttr "deleteComponent3.og" "deleteComponent4.ig";
connectAttr "deleteComponent4.og" "deleteComponent5.ig";
connectAttr "deleteComponent5.og" "deleteComponent6.ig";
connectAttr "deleteComponent6.og" "deleteComponent7.ig";
connectAttr "deleteComponent7.og" "deleteComponent8.ig";
connectAttr "deleteComponent8.og" "deleteComponent9.ig";
connectAttr "deleteComponent9.og" "deleteComponent10.ig";
connectAttr "deleteComponent10.og" "deleteComponent11.ig";
connectAttr "deleteComponent11.og" "deleteComponent12.ig";
connectAttr "surfaceShaderBlue1SG.pa" ":renderPartition.st" -na;
connectAttr "surfaceShaderSkinSG.pa" ":renderPartition.st" -na;
connectAttr "surfaceShaderBlackSG.pa" ":renderPartition.st" -na;
connectAttr "surfaceShaderWhiteSG.pa" ":renderPartition.st" -na;
connectAttr "surfaceShaderRedSG.pa" ":renderPartition.st" -na;
connectAttr "surfaceShaderGreenSG.pa" ":renderPartition.st" -na;
connectAttr "surfaceShaderBrownSG.pa" ":renderPartition.st" -na;
connectAttr "surfaceShaderBlue2SG.pa" ":renderPartition.st" -na;
connectAttr "surfaceShaderYellowSG.pa" ":renderPartition.st" -na;
connectAttr "surfaceShaderBlue1.msg" ":defaultShaderList1.s" -na;
connectAttr "surfaceShaderSkin.msg" ":defaultShaderList1.s" -na;
connectAttr "surfaceShaderBlack.msg" ":defaultShaderList1.s" -na;
connectAttr "surfaceShaderWhite.msg" ":defaultShaderList1.s" -na;
connectAttr "surfaceShaderRed.msg" ":defaultShaderList1.s" -na;
connectAttr "surfaceShaderGreen.msg" ":defaultShaderList1.s" -na;
connectAttr "surfaceShaderBrown.msg" ":defaultShaderList1.s" -na;
connectAttr "surfaceShaderBlue2.msg" ":defaultShaderList1.s" -na;
connectAttr "surfaceShaderYellow.msg" ":defaultShaderList1.s" -na;
// End of face.ma
