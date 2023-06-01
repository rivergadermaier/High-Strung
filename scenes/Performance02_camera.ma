//Maya ASCII 2023 scene
//Name: Performance02_camera.ma
//Last modified: Thu, Jun 01, 2023 03:57:49 PM
//Codeset: 1252
file -rdi 1 -ns "stage_fertig" -rfn "stage_fertigRN" -op "v=0;" -typ "mayaAscii"
		 "E:/High-Strung//scenes/stage_fertig.ma";
file -rdi 1 -ns "Geige_Rig" -rfn "Geige_RigRN" -op "v=0;" -typ "mayaAscii" "E:/High-Strung//scenes/Geige_Rig.ma";
file -r -ns "stage_fertig" -dr 1 -rfn "stage_fertigRN" -op "v=0;" -typ "mayaAscii"
		 "E:/High-Strung//scenes/stage_fertig.ma";
file -r -ns "Geige_Rig" -dr 1 -rfn "Geige_RigRN" -op "v=0;" -typ "mayaAscii" "E:/High-Strung//scenes/Geige_Rig.ma";
requires maya "2023";
requires "stereoCamera" "10.0";
requires -nodeType "timeSliderBookmark" "timeSliderBookmark" "Version 1.0, unsupported - cut 202205052305";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" -nodeType "aiStandardSurface"
		 "mtoa" "5.1.2";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2023";
fileInfo "version" "2023";
fileInfo "cutIdentifier" "202205052215-234554116d";
fileInfo "osv" "Windows 10 Pro N v2009 (Build: 19045)";
fileInfo "UUID" "1406E95B-4918-E78C-BF6F-B190D91DE849";
createNode transform -s -n "persp";
	rename -uid "37C5FE8C-4A08-816E-EFA9-E2BCB9C23993";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -10.077963471428195 6.9729775083483299 123.54015316363018 ;
	setAttr ".r" -type "double3" -18.33835272939157 -2.1999999999999758 -9.9465648292798417e-17 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "F9EF8120-45F2-69B4-2154-96900ED0A24B";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 103.15124906495677;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0 0 54.279865301964534 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "8C8A4BAD-4F6A-8143-D50A-8F91671E6894";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "9AB4E43C-4B41-9419-5BF7-F7A22E961DD6";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "EB081F86-4F2D-D932-3777-DCB7235CA83F";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "2A27302F-4903-C78A-9875-918F4B20B897";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "4E30F516-4924-E986-24BA-FD83C50BFD55";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "41E3849C-4443-4B3D-A405-C491268FED06";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "planes";
	rename -uid "FFE9E34B-4045-7236-EB54-F68FE99E794B";
createNode transform -n "plane_front" -p "planes";
	rename -uid "6838469C-478A-851A-3A2F-BA9E5164748E";
	setAttr ".t" -type "double3" 0 0 41.817931686833994 ;
	setAttr ".r" -type "double3" 90.000000000000028 0 0 ;
	setAttr ".s" -type "double3" 100 1 60 ;
	setAttr ".rp" -type "double3" 0 -3.5206068934599486 1.5634635335093122e-15 ;
	setAttr ".rpt" -type "double3" 0 3.5206068934599486 -3.5206068934599504 ;
	setAttr ".sp" -type "double3" 0 -3.5206068934599486 2.6057725558488534e-17 ;
	setAttr ".spt" -type "double3" 0 0 1.5374058079508236e-15 ;
createNode mesh -n "plane_frontShape" -p "plane_front";
	rename -uid "CC53616B-41C5-DDB3-0529-D5B74687797E";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" -2.1739148283623231e-06 0.50007727550109848 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" -4.8143876e-05 7.5515243e-05
		 0.99996632 -7.7683595e-05 4.3796288e-05 1.000079035759 1.000058174133 0.99992573;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  -0.5 -3.52060699 0.5 0.5 -3.52060699 0.5
		 -0.5 -3.52060699 -0.5 0.5 -3.52060699 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_opaque" no;
createNode transform -n "plane_mid" -p "planes";
	rename -uid "73B24FCA-4123-D8C8-45D6-6C8121C0CB85";
	setAttr ".t" -type "double3" 0 0 34.912215582705464 ;
	setAttr ".r" -type "double3" 90.000000000000028 0 0 ;
	setAttr ".s" -type "double3" 100 1 60 ;
	setAttr ".rp" -type "double3" 0 -3.5206068934599486 1.5634635335093122e-15 ;
	setAttr ".rpt" -type "double3" 0 3.5206068934599486 -3.5206068934599504 ;
	setAttr ".sp" -type "double3" 0 -3.5206068934599486 2.6057725558488534e-17 ;
	setAttr ".spt" -type "double3" 0 0 1.5374058079508236e-15 ;
createNode mesh -n "plane_midShape" -p "plane_mid";
	rename -uid "95D901B7-49B7-AF48-98A3-769B6E724D8B";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" -2.1737942006438971e-06 0.50007727550109848 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" -4.8143876e-05 7.5515243e-05
		 0.99996632 -7.7683595e-05 4.3796288e-05 1.000079035759 1.000058174133 0.99992573;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  -0.5 -3.52060699 0.5 0.5 -3.52060699 0.5
		 -0.5 -3.52060699 -0.5 0.5 -3.52060699 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_opaque" no;
createNode transform -n "plane_BG" -p "planes";
	rename -uid "FD1FFE48-4926-E25C-981C-C996B00D2744";
	setAttr ".r" -type "double3" 90.000000000000028 0 0 ;
	setAttr ".s" -type "double3" 100 1 60 ;
	setAttr ".rp" -type "double3" 0 -3.5206068934599486 1.5634635335093122e-15 ;
	setAttr ".rpt" -type "double3" 0 3.5206068934599486 -3.5206068934599504 ;
	setAttr ".sp" -type "double3" 0 -3.5206068934599486 2.6057725558488534e-17 ;
	setAttr ".spt" -type "double3" 0 0 1.5374058079508236e-15 ;
createNode mesh -n "plane_BGShape" -p "plane_BG";
	rename -uid "77CA1939-44AA-5F07-E7AF-D289F22E2434";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 2.206016829791181e-06 0.50007717571133981 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" -4.3763968e-05 7.9964826e-05
		 0.99995464 -7.3234012e-05 4.8176196e-05 1.000074386597 1.000046610832 0.9999212;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  -0.5 -3.52060699 0.5 0.5 -3.52060699 0.5
		 -0.5 -3.52060699 -0.5 0.5 -3.52060699 -0.5;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "spotlight_dummy";
	rename -uid "FBEE192C-48B3-D915-10E5-56B16468260C";
	setAttr ".t" -type "double3" -0.97416107923455142 0 20.741865012731829 ;
	setAttr ".r" -type "double3" 90 0 0 ;
	setAttr ".s" -type "double3" 26.162150316282716 19.621612795562758 68.573052488503109 ;
createNode mesh -n "spotlight_dummyShape" -p "spotlight_dummy";
	rename -uid "A7AC0914-423B-F97C-70A8-7796D1F9339F";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 1 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 121 ".pt[0:120]" -type "float3"  0.059013732 0 0 0.0471224 
		0 0 0.035341803 0 0 0.023561198 0 0 0.011780599 0 0 0 0 0 -0.011780597 0 0 -0.023561198 
		0 0 -0.035341803 0 0 -0.047122397 0 0 -0.059013732 0 0 0.077857845 0 0 0.062207107 
		0 0 0.046655335 0 0 0.031103551 0 0 0.015551776 0 0 0 0 0 -0.015551781 0 0 -0.031103551 
		0 0 -0.046655335 0 0 -0.062207114 0 0 -0.077857845 0 0 0.098185629 0 0 0.078485601 
		0 0 0.058864169 0 0 0.0392428 0 0 0.0196214 0 0 0 0 0 -0.0196214 0 0 -0.0392428 0 
		0 -0.058864169 0 0 -0.078485571 0 0 -0.098185629 0 0 0.11920196 0 0 0.095361568 0 
		0 0.071521148 0 0 0.047680799 0 0 0.023840399 0 0 0 0 0 -0.023840396 0 0 -0.047680799 
		0 0 -0.071521148 0 0 -0.095361583 0 0 -0.11920196 0 0 0.13988262 0 0 0.11190608 0 
		0 0.083929554 0 0 0.055953026 0 0 0.027976513 0 0 0 0 0 -0.027976517 0 0 -0.055953026 
		0 0 -0.083929554 0 0 -0.1119061 0 0 -0.13988262 0 0 0.15903148 0 0 0.12722519 0 0 
		0.09541893 0 0 0.06361258 0 0 0.03180629 0 0 0 0 0 -0.031806305 0 0 -0.06361258 0 
		0 -0.09541893 0 0 -0.12722519 0 0 -0.15903148 0 0 0.17903177 0 0 0.14322545 0 0 0.10741917 
		0 0 0.071612708 0 0 0.03580546 0 0 0 0 0 -0.035805479 0 0 -0.071612708 0 0 -0.10741917 
		0 0 -0.14322543 0 0 -0.17903177 0 0 0.20715706 0 0 0.16572548 0 0 0.1242941 0 0 0.082862727 
		0 0 0.041431364 0 0 0 0 0 -0.041431386 0 0 -0.082862727 0 0 -0.1242941 0 0 -0.1657255 
		0 0 -0.20715706 0 0 0.24817452 0 0 0.19862512 0 0 0.14896215 0 0 0.099308193 0 0 
		0.049656272 0 0 0 0 0 -0.049656291 0 0 -0.099308193 0 0 -0.14896215 0 0 -0.19862515 
		0 0 -0.24817452 0 0 0.30453047 0 0 0.24362457 0 0 0.18271847 0 0 0.12181227 0 0 0.060906135 
		0 0 0 0 0 -0.060906138 0 0 -0.12181227 0 0 -0.18271847 0 0 -0.24362449 0 0 -0.30453047 
		0 0 0.38670546 0 0 0.30936441 0 0 0.23202339 0 0 0.1546822 0 0 0.077341102 0 0 0 
		0 0 -0.077341124 0 0 -0.1546822 0 0 -0.23202339 0 0 -0.30936444 0 0 -0.38670546 0 
		0;
createNode transform -n "establishing_shot";
	rename -uid "8C61E0F3-4B85-0B50-9DE7-A3A6B9549AAD";
	setAttr ".t" -type "double3" -0.0053920752278673323 -0.54965439937256155 163.1814562014994 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr ".r" -type "double3" 0 0 -1.9413629656111229e-18 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
createNode camera -n "establishing_shotShape" -p "establishing_shot";
	rename -uid "56015D99-4FBD-8834-B259-FB96BAE4A0D0";
	setAttr -k off ".v";
	setAttr ".ovr" 1.3;
	setAttr ".fl" 34.999999999999993;
	setAttr -l on ".coi" 161.61805477630759;
	setAttr -l on ".ow";
	setAttr ".imn" -type "string" "persp1";
	setAttr ".den" -type "string" "persp1_depth";
	setAttr ".man" -type "string" "persp1_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".dr" yes;
createNode transform -n "top_shot";
	rename -uid "E3E963EF-4C0A-3874-089C-83A427FA571F";
	setAttr ".t" -type "double3" 1.5671563207121575 -4.1496204630652205 41.541277398150058 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr ".r" -type "double3" -36.938352729605853 15.400000000000407 0 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
createNode camera -n "top_shotShape" -p "top_shot";
	rename -uid "61300802-4985-6DAF-C3D4-699B005C0433";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".ovr" 1.3;
	setAttr ".fl" 34.999999999999993;
	setAttr -l on ".coi" 35.39033897087068;
	setAttr -l on ".ow";
	setAttr ".imn" -type "string" "persp1";
	setAttr ".den" -type "string" "persp1_depth";
	setAttr ".man" -type "string" "persp1_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".dr" yes;
createNode transform -n "low_shot";
	rename -uid "8CA58408-4C6F-1FD5-0A67-3B825F00E31A";
createNode camera -n "low_shotShape" -p "low_shot";
	rename -uid "4135DE77-4868-26E3-5584-DCB5E9748905";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".ovr" 1.3;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 27.943414719608761;
	setAttr ".imn" -type "string" "persp1";
	setAttr ".den" -type "string" "persp1_depth";
	setAttr ".man" -type "string" "persp1_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".dr" yes;
createNode transform -n "last_shot";
	rename -uid "14359CEB-49CB-66CB-D530-2490E7FD013A";
	setAttr ".t" -type "double3" -10.162650780314765 -29.845968084572782 56.919197836626608 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr ".r" -type "double3" 26.000000000000057 -14 4.9726458913073326e-17 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
createNode camera -n "last_shotShape" -p "last_shot";
	rename -uid "DCE91EEA-4484-707A-0E9B-C5987BCEA3CE";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".ovr" 1.3;
	setAttr ".fl" 34.999999999999993;
	setAttr -l on ".coi" 61.774965130806372;
	setAttr -l on ".ow";
	setAttr ".imn" -type "string" "persp2";
	setAttr ".den" -type "string" "persp2_depth";
	setAttr ".man" -type "string" "persp2_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".dr" yes;
createNode transform -n "shot_360";
	rename -uid "05A315FC-4DEC-721B-6B82-10AC7247F0EC";
createNode camera -n "shot_360Shape" -p "shot_360";
	rename -uid "EAEAB126-44B3-5D2B-288F-94BC2145FC09";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".ovr" 1.3;
	setAttr ".fl" 34.999999999999993;
	setAttr -l on ".coi" 40.348392818047813;
	setAttr -l on ".ow";
	setAttr ".imn" -type "string" "persp2";
	setAttr ".den" -type "string" "persp2_depth";
	setAttr ".man" -type "string" "persp2_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".dr" yes;
createNode transform -n "pHelix1";
	rename -uid "2FC2CA22-4703-EFFB-ECE6-B4A5C5D9B8B9";
	setAttr ".v" no;
	setAttr ".r" -type "double3" 0 -108.45967684602017 0 ;
createNode mesh -n "pHelixShape1" -p "pHelix1";
	rename -uid "4A53B836-4B09-86FB-B3BB-82A5787A977F";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.59375 0.50000020861625671 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 59 ".pt";
	setAttr ".pt[7]" -type "float3" 1.4901161e-08 0 5.9604645e-08 ;
	setAttr ".pt[23]" -type "float3" 7.4505806e-09 0 -1.1920929e-07 ;
	setAttr ".pt[31]" -type "float3" 1.4901161e-08 0 5.9604645e-08 ;
	setAttr ".pt[39]" -type "float3" 5.9604645e-08 0 0 ;
	setAttr ".pt[47]" -type "float3" 5.9604645e-08 0 -2.9802322e-08 ;
	setAttr ".pt[55]" -type "float3" -5.9604645e-08 0 2.9802322e-08 ;
	setAttr ".pt[79]" -type "float3" 0 0 3.7252903e-09 ;
	setAttr ".pt[87]" -type "float3" 0 0 -2.9802322e-08 ;
	setAttr ".pt[95]" -type "float3" -5.9604645e-08 0 5.9604645e-08 ;
	setAttr ".pt[103]" -type "float3" 0 0 2.9802322e-08 ;
	setAttr ".pt[111]" -type "float3" 0 0 -5.9604645e-08 ;
	setAttr ".pt[127]" -type "float3" -7.4505806e-09 0 -5.9604645e-08 ;
	setAttr ".pt[135]" -type "float3" 9.3132257e-10 0 0 ;
	setAttr ".pt[143]" -type "float3" 1.4901161e-08 0 0 ;
	setAttr ".pt[151]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[159]" -type "float3" 5.9604645e-08 0 -2.9802322e-08 ;
	setAttr ".pt[167]" -type "float3" 2.9802322e-08 0 0 ;
	setAttr ".pt[175]" -type "float3" 5.9604645e-08 0 -2.9802322e-08 ;
	setAttr ".pt[183]" -type "float3" -5.9604645e-08 0 1.4901161e-08 ;
	setAttr ".pt[191]" -type "float3" 0 0 3.7252903e-09 ;
	setAttr ".pt[199]" -type "float3" -5.9604645e-08 0 -1.4901161e-08 ;
	setAttr ".pt[207]" -type "float3" 5.9604645e-08 0 0 ;
	setAttr ".pt[215]" -type "float3" -2.9802322e-08 0 2.9802322e-08 ;
	setAttr ".pt[223]" -type "float3" -2.9802322e-08 0 8.9406967e-08 ;
	setAttr ".pt[239]" -type "float3" -1.4901161e-08 0 0 ;
	setAttr ".pt[247]" -type "float3" 3.7252903e-09 0 0 ;
	setAttr ".pt[255]" -type "float3" 7.4505806e-09 0 -1.1920929e-07 ;
	setAttr ".pt[263]" -type "float3" 1.4901161e-08 0 0 ;
	setAttr ".pt[271]" -type "float3" -2.9802322e-08 0 0 ;
	setAttr ".pt[287]" -type "float3" 0 0 2.9802322e-08 ;
	setAttr ".pt[295]" -type "float3" 0 0 -1.4901161e-08 ;
	setAttr ".pt[303]" -type "float3" 0 0 -7.4505806e-09 ;
	setAttr ".pt[311]" -type "float3" 0 0 -7.4505806e-09 ;
	setAttr ".pt[327]" -type "float3" 0 0 5.9604645e-08 ;
	setAttr ".pt[335]" -type "float3" 0 0 5.9604645e-08 ;
	setAttr ".pt[351]" -type "float3" -1.4901161e-08 0 0 ;
	setAttr ".pt[359]" -type "float3" -1.4901161e-08 0 -5.9604645e-08 ;
	setAttr ".pt[367]" -type "float3" 8.3819032e-09 0 -1.1920929e-07 ;
	setAttr ".pt[383]" -type "float3" 2.9802322e-08 0 1.1920929e-07 ;
	setAttr ".pt[391]" -type "float3" -5.9604645e-08 0 -2.9802322e-08 ;
	setAttr ".pt[399]" -type "float3" 5.9604645e-08 0 -2.9802322e-08 ;
	setAttr ".pt[415]" -type "float3" 1.1920929e-07 0 1.4901161e-08 ;
	setAttr ".pt[423]" -type "float3" 5.9604645e-08 0 1.8626451e-09 ;
	setAttr ".pt[431]" -type "float3" 0 0 -7.4505806e-09 ;
	setAttr ".pt[439]" -type "float3" 5.9604645e-08 0 2.9802322e-08 ;
	setAttr ".pt[447]" -type "float3" 2.9802322e-08 0 0 ;
	setAttr ".pt[471]" -type "float3" -1.4901161e-08 0 0 ;
createNode transform -n "polyToCurve1";
	rename -uid "25336F42-4D35-9BBB-12FD-1DA8208435AB";
	setAttr ".v" no;
createNode nurbsCurve -n "polyToCurveShape1" -p "polyToCurve1";
	rename -uid "21ED4F6C-4D00-99B0-9C24-91AD16302261";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "camera_path";
	rename -uid "364F5E8E-4055-A759-D1AD-8A826ACEE277";
	setAttr ".t" -type "double3" -3.2450352500527089 -12.221705624529573 28.140627639984995 ;
	setAttr ".r" -type "double3" 0 10.588757883472493 0 ;
	setAttr ".s" -type "double3" 11.976074720990255 6.6416575786220022 11.976074720990255 ;
createNode nurbsCurve -n "camera_pathShape" -p "camera_path";
	rename -uid "979B3C5D-44B1-1177-A628-5AA1DE44A7E2";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "A2E2515D-4D74-79E4-9C59-7895D088E3E0";
	setAttr -s 15 ".lnk";
	setAttr -s 15 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "A40E9B1D-4996-C4D2-3601-68B9B64D161C";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "2BA22538-4B78-F657-375D-04893F05E087";
createNode displayLayerManager -n "layerManager";
	rename -uid "1DD2A193-4992-EC34-BF0E-E8B45CF581C6";
createNode displayLayer -n "defaultLayer";
	rename -uid "B34918BE-41F2-0950-DF76-819062BC127E";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "B41874E1-46C7-9C4B-D10E-75B8A7C210FD";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "1D504B90-43B4-14D8-F7DB-9CA327FB6C2D";
	setAttr ".g" yes;
createNode reference -n "stage_fertigRN";
	rename -uid "C89DA658-4B96-1630-CD68-CC8917822A9D";
	setAttr -s 30 ".phl";
	setAttr ".phl[1]" 0;
	setAttr ".phl[2]" 0;
	setAttr ".phl[3]" 0;
	setAttr ".phl[4]" 0;
	setAttr ".phl[5]" 0;
	setAttr ".phl[6]" 0;
	setAttr ".phl[7]" 0;
	setAttr ".phl[8]" 0;
	setAttr ".phl[9]" 0;
	setAttr ".phl[10]" 0;
	setAttr ".phl[11]" 0;
	setAttr ".phl[12]" 0;
	setAttr ".phl[13]" 0;
	setAttr ".phl[14]" 0;
	setAttr ".phl[15]" 0;
	setAttr ".phl[16]" 0;
	setAttr ".phl[17]" 0;
	setAttr ".phl[18]" 0;
	setAttr ".phl[19]" 0;
	setAttr ".phl[20]" 0;
	setAttr ".phl[21]" 0;
	setAttr ".phl[22]" 0;
	setAttr ".phl[23]" 0;
	setAttr ".phl[24]" 0;
	setAttr ".phl[25]" 0;
	setAttr ".phl[26]" 0;
	setAttr ".phl[27]" 0;
	setAttr ".phl[28]" 0;
	setAttr ".phl[29]" 0;
	setAttr ".phl[30]" 0;
	setAttr ".ed" -type "dataReferenceEdits" 
		"stage_fertigRN"
		"stage_fertigRN" 0
		"stage_fertigRN" 36
		2 "|stage_fertig:plane_canvasSize" "visibility" " 0"
		2 "|stage_fertig:curtains" "visibility" " 1"
		2 "|stage_fertig:curtains|stage_fertig:plane_canvasSize1" "visibility" " 1"
		
		2 "stage_fertig:aiStandardSurface2" "specularColor" " -type \"float3\" 0 0 0"
		
		2 "stage_fertig:file11" "viewNameUsed" " 0"
		2 "stage_fertig:file11" "viewNameStr" " -type \"string\" \"<N/A>\""
		3 "stage_fertig:file11.outColor" "stage_fertig:aiStandardSurface2.opacity" 
		""
		3 "stage_fertig:file10.outColor" "stage_fertig:aiStandardSurface2.baseColor" 
		""
		5 4 "stage_fertigRN" "|stage_fertig:curtains|stage_fertig:plane_canvasSize2.visibility" 
		"stage_fertigRN.placeHolderList[1]" ""
		5 4 "stage_fertigRN" "|stage_fertig:curtains|stage_fertig:plane_canvasSize2.translateX" 
		"stage_fertigRN.placeHolderList[2]" ""
		5 4 "stage_fertigRN" "|stage_fertig:curtains|stage_fertig:plane_canvasSize2.translateY" 
		"stage_fertigRN.placeHolderList[3]" ""
		5 4 "stage_fertigRN" "|stage_fertig:curtains|stage_fertig:plane_canvasSize2.translateZ" 
		"stage_fertigRN.placeHolderList[4]" ""
		5 4 "stage_fertigRN" "|stage_fertig:curtains|stage_fertig:plane_canvasSize2.rotateX" 
		"stage_fertigRN.placeHolderList[5]" ""
		5 4 "stage_fertigRN" "|stage_fertig:curtains|stage_fertig:plane_canvasSize2.rotateY" 
		"stage_fertigRN.placeHolderList[6]" ""
		5 4 "stage_fertigRN" "|stage_fertig:curtains|stage_fertig:plane_canvasSize2.rotateZ" 
		"stage_fertigRN.placeHolderList[7]" ""
		5 4 "stage_fertigRN" "|stage_fertig:curtains|stage_fertig:plane_canvasSize2.scaleX" 
		"stage_fertigRN.placeHolderList[8]" ""
		5 4 "stage_fertigRN" "|stage_fertig:curtains|stage_fertig:plane_canvasSize2.scaleY" 
		"stage_fertigRN.placeHolderList[9]" ""
		5 4 "stage_fertigRN" "|stage_fertig:curtains|stage_fertig:plane_canvasSize2.scaleZ" 
		"stage_fertigRN.placeHolderList[10]" ""
		5 4 "stage_fertigRN" "|stage_fertig:curtains|stage_fertig:plane_canvasSize3.visibility" 
		"stage_fertigRN.placeHolderList[11]" ""
		5 4 "stage_fertigRN" "|stage_fertig:curtains|stage_fertig:plane_canvasSize3.translateX" 
		"stage_fertigRN.placeHolderList[12]" ""
		5 4 "stage_fertigRN" "|stage_fertig:curtains|stage_fertig:plane_canvasSize3.translateY" 
		"stage_fertigRN.placeHolderList[13]" ""
		5 4 "stage_fertigRN" "|stage_fertig:curtains|stage_fertig:plane_canvasSize3.translateZ" 
		"stage_fertigRN.placeHolderList[14]" ""
		5 4 "stage_fertigRN" "|stage_fertig:curtains|stage_fertig:plane_canvasSize3.rotateX" 
		"stage_fertigRN.placeHolderList[15]" ""
		5 4 "stage_fertigRN" "|stage_fertig:curtains|stage_fertig:plane_canvasSize3.rotateY" 
		"stage_fertigRN.placeHolderList[16]" ""
		5 4 "stage_fertigRN" "|stage_fertig:curtains|stage_fertig:plane_canvasSize3.rotateZ" 
		"stage_fertigRN.placeHolderList[17]" ""
		5 4 "stage_fertigRN" "|stage_fertig:curtains|stage_fertig:plane_canvasSize3.scaleX" 
		"stage_fertigRN.placeHolderList[18]" ""
		5 4 "stage_fertigRN" "|stage_fertig:curtains|stage_fertig:plane_canvasSize3.scaleY" 
		"stage_fertigRN.placeHolderList[19]" ""
		5 4 "stage_fertigRN" "|stage_fertig:curtains|stage_fertig:plane_canvasSize3.scaleZ" 
		"stage_fertigRN.placeHolderList[20]" ""
		5 0 "stage_fertigRN" "stage_fertig:file10.outColor" "stage_fertig:aiStandardSurface2.baseColor" 
		"stage_fertigRN.placeHolderList[21]" "stage_fertigRN.placeHolderList[22]" "stage_fertig:aiStandardSurface2.base_color"
		
		5 0 "stage_fertigRN" "stage_fertig:file11.outColor" "stage_fertig:aiStandardSurface2.opacity" 
		"stage_fertigRN.placeHolderList[23]" "stage_fertigRN.placeHolderList[24]" "stage_fertig:aiStandardSurface2.opacity"
		
		5 3 "stage_fertigRN" "stage_fertig:aiStandardSurface2.message" "stage_fertigRN.placeHolderList[25]" 
		""
		5 3 "stage_fertigRN" "stage_fertig:aiStandardSurface2SG.message" "stage_fertigRN.placeHolderList[26]" 
		""
		5 3 "stage_fertigRN" "stage_fertig:file10.message" "stage_fertigRN.placeHolderList[27]" 
		""
		5 3 "stage_fertigRN" "stage_fertig:place2dTexture6.message" "stage_fertigRN.placeHolderList[28]" 
		""
		5 3 "stage_fertigRN" "stage_fertig:file11.message" "stage_fertigRN.placeHolderList[29]" 
		""
		5 3 "stage_fertigRN" "stage_fertig:place2dTexture7.message" "stage_fertigRN.placeHolderList[30]" 
		"";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "895D829F-49BA-1B03-49C7-9897964CB793";
	addAttr -ci true -sn "ARV_options" -ln "ARV_options" -dt "string";
	setAttr ".version" -type "string" "4.2.4";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "78C44D3B-408D-6EBC-5980-B68E5D995468";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "4E64C303-4C27-0762-6D64-C498374DCBDE";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "714F18F5-4E41-AD4E-D659-BEB51ABA6148";
	setAttr ".output_mode" 0;
	setAttr ".ai_translator" -type "string" "maya";
createNode partition -s -n "creasePartition";
	rename -uid "D94EFE65-412A-FA80-77D7-85B08A9F876E";
createNode reference -n "Geige_RigRN";
	rename -uid "140C44AF-4B09-CD9C-145E-3280188422FA";
	setAttr -s 32 ".phl";
	setAttr ".phl[1]" 0;
	setAttr ".phl[2]" 0;
	setAttr ".phl[3]" 0;
	setAttr ".phl[4]" 0;
	setAttr ".phl[5]" 0;
	setAttr ".phl[6]" 0;
	setAttr ".phl[7]" 0;
	setAttr ".phl[8]" 0;
	setAttr ".phl[9]" 0;
	setAttr ".phl[10]" 0;
	setAttr ".phl[11]" 0;
	setAttr ".phl[12]" 0;
	setAttr ".phl[13]" 0;
	setAttr ".phl[14]" 0;
	setAttr ".phl[15]" 0;
	setAttr ".phl[16]" 0;
	setAttr ".phl[17]" 0;
	setAttr ".phl[18]" 0;
	setAttr ".phl[19]" 0;
	setAttr ".phl[20]" 0;
	setAttr ".phl[21]" 0;
	setAttr ".phl[22]" 0;
	setAttr ".phl[23]" 0;
	setAttr ".phl[24]" 0;
	setAttr ".phl[25]" 0;
	setAttr ".phl[26]" 0;
	setAttr ".phl[27]" 0;
	setAttr ".phl[28]" 0;
	setAttr ".phl[29]" 0;
	setAttr ".phl[30]" 0;
	setAttr ".phl[31]" 0;
	setAttr ".phl[32]" 0;
	setAttr ".ed" -type "dataReferenceEdits" 
		"Geige_RigRN"
		"Geige_RigRN" 0
		"Geige_RigRN" 32
		5 4 "Geige_RigRN" "|Geige_Rig:Geige.translateX" "Geige_RigRN.placeHolderList[1]" 
		""
		5 4 "Geige_RigRN" "|Geige_Rig:Geige.translateY" "Geige_RigRN.placeHolderList[2]" 
		""
		5 4 "Geige_RigRN" "|Geige_Rig:Geige.translateZ" "Geige_RigRN.placeHolderList[3]" 
		""
		5 4 "Geige_RigRN" "|Geige_Rig:Geige.rotateX" "Geige_RigRN.placeHolderList[4]" 
		""
		5 4 "Geige_RigRN" "|Geige_Rig:Geige.rotateY" "Geige_RigRN.placeHolderList[5]" 
		""
		5 4 "Geige_RigRN" "|Geige_Rig:Geige.rotateZ" "Geige_RigRN.placeHolderList[6]" 
		""
		5 4 "Geige_RigRN" "|Geige_Rig:Geige.scaleX" "Geige_RigRN.placeHolderList[7]" 
		""
		5 4 "Geige_RigRN" "|Geige_Rig:Geige.scaleY" "Geige_RigRN.placeHolderList[8]" 
		""
		5 4 "Geige_RigRN" "|Geige_Rig:Geige.scaleZ" "Geige_RigRN.placeHolderList[9]" 
		""
		5 4 "Geige_RigRN" "|Geige_Rig:Geige.visibility" "Geige_RigRN.placeHolderList[10]" 
		""
		5 4 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:bogen_ctrlMiddle|Geige_Rig:bogenCTRL_middle.Bend" 
		"Geige_RigRN.placeHolderList[11]" ""
		5 4 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:bogen_ctrlMiddle|Geige_Rig:bogenCTRL_middle.squashNstretch" 
		"Geige_RigRN.placeHolderList[12]" ""
		5 4 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:bogen_ctrlMiddle|Geige_Rig:bogenCTRL_middle.translateX" 
		"Geige_RigRN.placeHolderList[13]" ""
		5 4 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:bogen_ctrlMiddle|Geige_Rig:bogenCTRL_middle.translateY" 
		"Geige_RigRN.placeHolderList[14]" ""
		5 4 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:bogen_ctrlMiddle|Geige_Rig:bogenCTRL_middle.translateZ" 
		"Geige_RigRN.placeHolderList[15]" ""
		5 4 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:bogen_ctrlMiddle|Geige_Rig:bogenCTRL_middle.rotateY" 
		"Geige_RigRN.placeHolderList[16]" ""
		5 4 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:bogen_ctrlMiddle|Geige_Rig:bogenCTRL_middle.rotateX" 
		"Geige_RigRN.placeHolderList[17]" ""
		5 4 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:bogen_ctrlMiddle|Geige_Rig:bogenCTRL_middle.rotateZ" 
		"Geige_RigRN.placeHolderList[18]" ""
		5 4 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:bogen_ctrlMiddle|Geige_Rig:bogenCTRL_middle.scaleX" 
		"Geige_RigRN.placeHolderList[19]" ""
		5 4 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:bogen_ctrlMiddle|Geige_Rig:bogenCTRL_middle.scaleY" 
		"Geige_RigRN.placeHolderList[20]" ""
		5 4 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:bogen_ctrlMiddle|Geige_Rig:bogenCTRL_middle.scaleZ" 
		"Geige_RigRN.placeHolderList[21]" ""
		5 4 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:bogen_ctrlMiddle|Geige_Rig:bogenCTRL_middle.visibility" 
		"Geige_RigRN.placeHolderList[22]" ""
		5 4 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geigeCTRL_bottom.translateX" 
		"Geige_RigRN.placeHolderList[23]" ""
		5 4 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geigeCTRL_bottom.translateY" 
		"Geige_RigRN.placeHolderList[24]" ""
		5 4 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geigeCTRL_bottom.translateZ" 
		"Geige_RigRN.placeHolderList[25]" ""
		5 4 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geigeCTRL_bottom.rotateX" 
		"Geige_RigRN.placeHolderList[26]" ""
		5 4 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geigeCTRL_bottom.rotateY" 
		"Geige_RigRN.placeHolderList[27]" ""
		5 4 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geigeCTRL_bottom.rotateZ" 
		"Geige_RigRN.placeHolderList[28]" ""
		5 4 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geigeCTRL_bottom.scaleX" 
		"Geige_RigRN.placeHolderList[29]" ""
		5 4 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geigeCTRL_bottom.scaleY" 
		"Geige_RigRN.placeHolderList[30]" ""
		5 4 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geigeCTRL_bottom.scaleZ" 
		"Geige_RigRN.placeHolderList[31]" ""
		5 4 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geigeCTRL_bottom.visibility" 
		"Geige_RigRN.placeHolderList[32]" "";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode audio -n "Performance02";
	rename -uid "30A02023-4481-FD1C-51A4-F69DFE67E91D";
	setAttr ".o" 190;
	setAttr ".ef" 1223.8220824829932;
	setAttr ".se" 1033.8220824829932;
	setAttr ".f" -type "string" "E:/High-Strung//sound/Performance02.wav";
createNode script -n "uiConfigurationScriptNode";
	rename -uid "8CC0B0B7-46C3-B6D6-9896-B2AC9182976F";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n"
		+ "            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 0\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n"
		+ "            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1170\n            -height 726\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 0\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n"
		+ "            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -selectCommand \"print 999\" \n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n"
		+ "            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n"
		+ "            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n"
		+ "            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n"
		+ "                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n"
		+ "                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n"
		+ "                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -valueLinesToggle 0\n                -outliner \"graphEditor1OutlineEd\" \n                -highlightAffectedCurves 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n"
		+ "                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n"
		+ "                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n"
		+ "                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n"
		+ "            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n"
		+ "                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n"
		+ "                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n"
		+ "                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"|persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n"
		+ "                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n"
		+ "                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n"
		+ "                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 0\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n"
		+ "\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1170\\n    -height 726\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1170\\n    -height 726\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ttimeControl -e -displaySound 1 -sound Performance02 $gPlayBackSlider;\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "65F42BF2-4E10-9FDB-00D0-AF9DDF08536E";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 1200 -ast 0 -aet 9671 ";
	setAttr ".st" 6;
createNode animCurveTL -n "bogenCTRL_middle_translateX";
	rename -uid "6BA32818-475D-45B4-F51F-15905FA964CA";
	setAttr ".tan" 3;
	setAttr -s 145 ".ktv[0:144]"  159 0 173 -4.6324615857615328 187 -9.0010716129472588
		 203 -9.0010716129472588 218 -8.886273833403548 222 -8.886273833403548 232 -7.4830736450482789
		 236 -7.985680655002275 240 -8.525009880624566 247 -7.1613190928388777 254 -8.6281773571073117
		 256 -8.2119759657262712 258 -7.5914658975184564 261 -7.041188955449841 269 -8.6778507407978349
		 275 -8.1298876024037963 280 -7.4061379021792284 288 -6.6395985481595003 295 -8.6548399161853595
		 298 -8.4170724921586952 301 -7.9372707862808127 304 -7.2497533571670987 307 -6.6770763126126322
		 311 -6.1726667749339033 314 -6.0127024509090674 316 -6.4108087733754999 318 -7.133641618429027
		 321 -8.0614871657604681 328 -6.6882203610859703 333 -7.2063398039042168 338 -8.1286879971300028
		 343 -9.1418626741386131 348 -9.7435221591133594 352 -9.4238625556327325 354 -9.1881621434966192
		 355 -9.0525063387232176 358 -8.54253501262985 362 -7.806642978642218 368 -6.787472537397818
		 371 -6.4069507094707427 373 -6.2566076997619335 374 -6.2356686459960011 378 -7.3072062703729506
		 381 -8.354814134119497 388 -9.4364785705592542 392 -8.8913194027483726 396 -8.0109063489409138
		 400 -7.4702278745627151 409 -8.12608615635075 414 -8.7269493848444224 418 -9.1708458944171589
		 422 -9.4937460851908462 425 -9.5955720104662934 430 -9.1476303967186645 434 -8.5007007263164525
		 443 -6.6563365584527876 451 -5.6513142040604558 457 -6.259750268596906 464 -7.5059795600168977
		 470 -8.5622864054529835 476 -9.1582765489030074 488 -7.2353255589793335 502 -9.2619306116126285
		 515 -6.5372366435607994 519 -7.3395264975250898 521 -7.8810530672288124 522 -8.1284022662168152
		 524 -8.5203510243939284 526 -8.7310502146657427 531 -7.8462352708979219 533 -7.2658348249494979
		 535 -6.6800591929130553 538 -6.1612439189828416 551 -9.5953390233759297 557 -8.8025816200883149
		 564 -7.2082715624385258 575 -5.3576702822345039 578 -5.8364482127015442 580 -6.4267227339333584
		 583 -7.6676414190243207 585 -8.4099057421764307 589 -9.3502386490638454 602 -5.1442316330988183
		 614 -8.6332905402869073 627 -4.9680875997153571 665 -10.633281880081979 679 -7.4184578187777221
		 690 -8.9775201754709304 695 -8.3721039800009027 699 -7.5885623468146335 703 -6.6939197309840193
		 708 -7.3599753395876935 713 -8.0066973540302158 718 -8.6798932995512157 722 -9.7208817642490519
		 725 -10.168497074880863 729 -9.1124241772486219 732 -8.7656140484928855 736 -8.1593345686569663
		 740 -7.5281822480919587 744 -6.8634440361713773 748 -6.2794293309636888 754 -5.6695872537010246
		 759 -5.9694125716985349 763 -6.4760667191526293 766 -6.9072738037400221 769 -7.472499591227896
		 772 -8.2579024003156967 775 -8.9296887052904275 777 -9.3679486000938468 779 -9.7670396872831251
		 781 -10.09186144924695 783 -10.257393513803587 787 -9.9975166765194725 790 -9.6041275253804095
		 797 -8.3111600644695134 803 -7.2765833485053664 809 -6.6997819768709732 817 -7.3694941310292714
		 822 -7.9791342008374961 825 -8.3845102824558051 828 -8.7622339096801731 835 -9.3193550949075217
		 838 -9.178393965464263 840 -8.9854109973981817 841 -8.8833693235487807 843 -8.6720266050418893
		 846 -8.2239656873074818 848 -7.9061208139562247 853 -7.1747577998804566 864 -6.3621282029856525
		 885 -9.5934251448371111 897 -7.1980020863198177 911 -9.4914885900637351 919 -8.7290424576718468
		 928 -7.4683860513493929 933 -6.9583228040216598 937 -6.7734277933269897 944 -7.2448538227190094
		 953 -8.7448663029931453 961 -10.092094734617078 973 -10.740630017010689 978 -10.740630017010689
		 987 -12.942270313988207 1005 -6.3223399626291279;
	setAttr -s 145 ".kit[1:144]"  28 3 3 3 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3;
	setAttr -s 145 ".kot[1:144]"  18 3 3 3 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3;
createNode animCurveTL -n "bogenCTRL_middle_translateY";
	rename -uid "864A308F-4476-A657-A922-01B985EA13DD";
	setAttr ".tan" 3;
	setAttr -s 145 ".ktv[0:144]"  159 0 173 2.5182107159483764 187 1.7093197427783196
		 203 1.7093197427783196 218 1.3166764983153918 222 1.3166764983153918 232 1.9518723946014251
		 236 1.6868965963706035 240 1.6797704567459082 247 1.6829332681138158 254 1.6795311801662596
		 256 1.6476026319512895 258 1.8560968959066559 261 2.4522722684106011 269 1.339717880459564
		 275 1.737596712409426 280 2.5288741951329907 288 3.6161486058471031 295 1.3183215564717647
		 298 1.5360932858436374 301 1.8297596735912833 304 2.333789432716328 307 3.0293825963128871
		 311 4.0218052137594418 314 4.436400589420594 316 3.6600538458188372 318 2.5734924761761486
		 321 1.7468044757153913 328 2.6050071922675015 333 2.1714639471234722 338 1.6563441596598016
		 343 1.4455568542911905 348 1.4411039399976648 352 1.3152691671698178 354 1.2784129239389646
		 355 1.2953129149373144 358 1.4781061911619597 362 1.7976462325001969 368 2.2976745620768688
		 371 2.5106174763309395 373 2.6230328917645629 374 2.656993699083162 378 2.1476621461930976
		 381 1.5559718659713209 388 0.79928135705264103 392 1.2530913192481083 396 1.7086493964620693
		 400 1.869865605266485 409 1.6426196020623902 414 1.3686888401802113 418 1.1193249569684844
		 422 0.88194507238714304 425 0.76269699723156004 430 1.0051181830120866 434 1.4481988851847849
		 443 2.6705932318149497 451 3.2824796685992506 457 2.8702488608629428 464 2.0833166745924938
		 470 1.4231275132722552 476 1.0442156986489157 488 2.2578472684328537 502 0.97879653638222264
		 515 2.7100460579832455 519 2.3209617068210209 521 1.9981249183235978 522 1.816768893066818
		 524 1.4703712463723351 526 1.24884600433201 531 1.9595705195738651 533 2.2538536203867001
		 535 2.4384577003964245 538 2.53669802846369 551 1.0202570663871666 557 1.3730816926495875
		 564 2.0562336520315094 575 2.8837323924208849 578 2.5257533744707037 580 2.1664323564272947
		 583 1.7285382162718921 585 1.625552365148303 589 1.6440231270239019 602 1.6972244784725516
		 614 1.6630780345895628 627 1.6989483508723167 665 1.6312174687915855 679 1.6626800529218981
		 690 1.6474219455958183 695 1.5699670024708818 699 1.8209812675418018 703 2.4179573875624865
		 708 1.8320769813427265 713 1.673832155437573 718 1.6011439313298561 722 1.5971825077785822
		 725 1.6859344439736803 729 1.7932301922557117 732 1.7909677903175854 736 1.6943597904411698
		 740 1.5855557848015296 744 1.5173980522850692 748 1.5467027092072576 754 1.6497930795711733
		 759 1.6054966526101555 763 1.5608874833467397 766 1.5658581813520849 769 1.6156921068748873
		 772 1.7061551074874557 775 1.7762475080415336 777 1.8022423513701269 779 1.7974920387008209
		 781 1.7657669976863046 783 1.6688548974361155 787 1.4651187551262341 790 1.4004750179635705
		 797 1.6107097422364718 803 2.1242323553381319 809 2.464559421426034 817 1.9815910586922836
		 822 1.7164162297050636 825 1.6410320754681664 828 1.6460326646296737 835 1.7242388345161066
		 838 1.5703725503965864 840 1.4523490959325995 841 1.4275847128673831 843 1.4708834341391781
		 846 1.678759490767751 848 1.824384684089029 853 2.1980660467237945 864 2.6222781458866842
		 885 1.0033591728663913 897 2.2034951887232164 911 1.0544306235986187 919 1.4051796569061623
		 928 2.262615411053349 933 2.734066875705456 937 2.9199133256061995 944 2.4883501956962828
		 953 1.3759138249943224 961 0.66161433617012544 973 0.38058153492855029 978 0.38058153492855029
		 987 3.7072021826408399 1005 3.2782565204220795;
	setAttr -s 145 ".kit[1:144]"  28 3 3 3 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3;
	setAttr -s 145 ".kot[1:144]"  18 3 3 3 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3;
createNode animCurveTL -n "bogenCTRL_middle_translateZ";
	rename -uid "622E341C-43CE-26BA-E4CD-5B88DFB300D9";
	setAttr ".tan" 3;
	setAttr -s 145 ".ktv[0:144]"  159 0 173 -0.29095557755927531 187 -0.058226350674739788
		 203 -0.058226350674739788 218 0.026777615586962428 222 0.026777615586962428 232 1.065801035233803
		 236 0.69363713548905215 240 0.29428164724729089 247 1.3040496599830818 254 0.21788953648434167
		 256 0.52607292793711991 258 0.98554015032274966 261 1.3930020612074006 269 0.18110803558671276
		 275 0.58685665122931341 280 1.1227694131689621 288 1.6720362479944131 295 0.19814679162179541
		 298 0.37420572037833677 301 0.72948304526093732 304 1.2385670064752268 307 1.6626154538202034
		 311 2.0361140658434396 314 2.1545623673396062 316 1.8597777770973989 318 1.3245439161463914
		 321 0.63750491665594367 328 1.6543636537922646 333 1.270713309579067 338 0.58774491933545048
		 343 -0.16247748395468409 348 -0.60798647171655296 352 -0.3712890873464012 354 -0.19676071266246462
		 355 -0.096312067244447089 358 0.28130486550443146 362 0.82620862477552104 368 1.5808706935612569
		 371 1.8626345460636422 373 1.9739585819096894 374 1.9894632600223341 378 1.196025020774826
		 381 0.42030597934945857 388 -0.3806308299431071 392 0.023041538042120429 396 0.67495834183115089
		 400 1.0753129042377776 409 0.58967149654537199 414 0.14475211042321912 418 -0.18393860183086141
		 422 -0.42303553411929318 425 -0.49843427049803735 430 -0.16423531747993825 434 0.31410462847054299
		 443 1.6684908954926829 451 2.4221584346555254 457 1.9783696057985838 464 1.0513960355465619
		 470 0.26721815904071966 476 -0.1746314163934426 488 1.2492503147697034 502 -0.25138382819511002
		 515 1.7661621126265059 519 1.1468591656338045 521 0.74189811066592082 522 0.56649888794125602
		 524 0.30680669374643416 526 0.180862551181042 531 0.73034961690141309 533 1.1549672770755566
		 535 1.6133419982229331 538 2.0303709341945733 551 -0.43504336450092679 557 0.13178962773486896
		 564 1.2742714471565488 575 2.6015427011312546 578 2.217718777260238 580 1.7579404801701204
		 583 0.86450423979714508 585 0.33183710020209256 589 -0.35646682588230277 602 2.5324010216142194
		 614 0.13421432395895669 627 2.6534727171540409 665 -1.2354797513154305 679 0.97421303525187941
		 690 -0.097400458270359647 695 0.34871047122915738 699 0.77364674805979716 703 1.2877728914245745
		 708 0.94360707145492217 713 0.65164827711819218 718 0.19372246761223005 722 -0.6408827848462022
		 725 -1.0286876404929519 729 -0.23354684751685617 732 0.010577191466322751 736 0.46196436682145764
		 740 0.92526065159090853 744 1.3743032757559466 748 1.7898869301003058 754 2.2603595076400094
		 759 2.0458150383947356 763 1.6968887142453122 766 1.398665801528618 769 1.0592799573901739
		 772 0.64828430508331114 775 0.060546291862586088 777 -0.26503017672329188 779 -0.54100933024837883
		 781 -0.76114499355955678 783 -0.86064766042638263 787 -0.63482876878439654 790 -0.32265433019572665
		 797 0.60092016008569882 803 1.2996779561094629 809 1.6832128361148602 817 1.2526830784134591
		 822 0.84741669789082086 825 0.55767113887832331 828 0.27384909951775893 835 -0.16350024963621221
		 838 -0.027509056132615554 840 0.14321523076490311 841 0.23091856726413323 843 0.38690222509043037
		 846 0.67417944160105103 848 0.88246631442394607 853 1.3657690260921902 864 1.9105954991804164
		 885 -0.24668617177213617 897 1.3525485476948909 911 -0.17863118791581845 919 0.33573682177023412
		 928 1.1387606869879212 933 1.4423704751903117 937 1.5498712068487031 944 1.2685457356865824
		 953 0.32882123360132098 961 -0.56389280587800905 973 -1.0043739020590945 978 -1.0043739020590945
		 987 -2.0368340401656786 1005 6.7154077472839306;
	setAttr -s 145 ".kit[1:144]"  28 3 3 3 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3;
	setAttr -s 145 ".kot[1:144]"  18 3 3 3 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3;
createNode animCurveTU -n "bogenCTRL_middle_visibility";
	rename -uid "B1C2A413-4B4B-A275-BF87-30ABABDFCD35";
	setAttr ".tan" 3;
	setAttr -s 49 ".ktv[0:48]"  187 1 203 1 218 1 222 1 232 1 240 1 247 1
		 254 1 261 1 269 1 288 1 295 1 314 1 321 1 328 1 348 1 374 1 388 1 400 1 425 1 451 1
		 476 1 488 1 502 1 515 1 526 1 538 1 551 1 575 1 589 1 602 1 614 1 627 1 665 1 679 1
		 690 1 703 1 725 1 754 1 783 1 809 1 835 1 864 1 885 1 897 1 911 1 937 1 973 1 978 1;
createNode animCurveTA -n "bogenCTRL_middle_rotateX";
	rename -uid "6A046D3E-413F-7F6E-FFE1-CFA1AD737BB6";
	setAttr ".tan" 3;
	setAttr -s 55 ".ktv[0:54]"  159 0 187 -19.991344787507344 203 -19.991344787507344
		 218 -19.991344787507344 222 -19.991344787507344 232 -19.991344787507344 240 -0.10679555284371253
		 247 -0.10679555284371253 254 -0.10679555284371253 261 -28.648044253156129 269 -28.648044253156129
		 288 -12.66358926132752 295 -43 301 -27.349853708401458 314 -43 321 -26.667491321049937
		 328 -26.667491321049937 348 -6.2915895553386401 355 -16.867991874808812 374 -22.416468290658855
		 388 -29.391689630111721 400 -15.876961756127526 425 -26.894818552894144 451 -43.467764639137833
		 476 -26.894818552894144 488 -26.894818552894144 502 -26.894818552894144 515 -26.894818552894144
		 526 -56.626481571429338 538 -26.946984490932845 551 -26.946984490932845 575 -2.3749810765688273
		 589 -12.175902406387765 602 -12.175902406387765 614 -12.175902406387765 627 -12.175902406387765
		 665 -25.10894984637817 679 -25.10894984637817 690 -25.10894984637817 703 -42.045420143056361
		 708 -30.218768388257853 725 -21.20242889959852 754 33.695163696240407 783 -10.474327341216448
		 809 -33.299374809382641 835 -8.362460361859279 843 -30.588128527085466 864 -33.026848909500472
		 885 -33.026848909500472 897 -33.026848909500472 911 -33.026848909500472 937 -44.160742532753005
		 973 -33.693775058682093 978 -33.693775058682093 1005 -159.93907172124221;
createNode animCurveTA -n "bogenCTRL_middle_rotateY";
	rename -uid "3020D6C4-410C-1191-D7C4-848036ADC372";
	setAttr ".tan" 3;
	setAttr -s 51 ".ktv[0:50]"  159 0 187 53.48127368038984 203 53.48127368038984
		 218 53.48127368038984 222 53.48127368038984 232 53.48127368038984 240 53.481273680389855
		 247 53.481273680389855 254 53.481273680389855 261 53.481273680389947 269 53.481273680389947
		 288 63.508245238646538 295 53.481273680389911 314 53.481273680389911 321 53.481273680389933
		 328 53.481273680389933 348 53.481273680389975 374 53.481273680390082 388 53.481273680390096
		 400 53.481273680390125 425 53.481273680390125 451 43.007902506137043 476 53.481273680390125
		 488 53.481273680390125 502 53.481273680390125 515 53.481273680390125 526 37.990800853441129
		 538 51.935913975046404 551 51.935913975046404 575 56.627866084845238 589 54.587521653134814
		 602 54.587521653134814 614 54.587521653134814 627 54.587521653134814 665 51.278529577427349
		 679 51.278529577427349 690 51.278529577427349 703 44.682603817593936 725 47.520520053185571
		 754 50.260806812260519 783 52.315427679003385 809 52.315427679003406 835 52.315427679003434
		 864 52.315427679003413 885 52.315427679003413 897 52.315427679003413 911 52.315427679003413
		 937 52.315427679003434 973 52.315427679003513 978 52.315427679003513 1005 8.6373935794769352;
createNode animCurveTA -n "bogenCTRL_middle_rotateZ";
	rename -uid "3F37B5DA-40AF-5E4B-C749-349E62107965";
	setAttr ".tan" 3;
	setAttr -s 50 ".ktv[0:49]"  187 0 203 0 218 0 222 0 232 0 240 0 247 0
		 254 0 261 0 269 0 288 35.151487038268442 295 0 314 0 321 0 328 0 348 0 374 0 388 0
		 400 0 425 0 451 -22.004231718872106 476 0 488 0 502 0 515 0 526 -18.449961546615473
		 538 -9.1761290508200553 551 -9.1761290508200553 575 20.830339680310075 589 -14.267844568324797
		 602 -14.267844568324797 614 -14.267844568324797 627 -14.267844568324797 665 -30.430410826319108
		 679 -30.430410826319108 690 -30.430410826319108 703 -20.326151119784882 725 -28.087206403398365
		 754 40.741979879642031 783 -12.789459035676009 809 -12.789459035676007 835 -12.789459035676057
		 864 -12.789459035676073 885 -12.789459035676073 897 -12.789459035676073 911 -12.789459035676073
		 937 -12.78945903567609 973 -12.78945903567614 978 -12.78945903567614 1005 -161.831286121734;
createNode animCurveTU -n "bogenCTRL_middle_scaleX";
	rename -uid "EAA25CF9-48B0-E9AA-C14E-9C9805B0C28C";
	setAttr ".tan" 3;
	setAttr -s 49 ".ktv[0:48]"  187 1 203 1 218 1 222 1 232 1 240 1 247 1
		 254 1 261 1 269 1 288 1 295 1 314 1 321 1 328 1 348 1 374 1 388 1 400 1 425 1 451 1
		 476 1 488 1 502 1 515 1 526 1 538 1 551 1 575 1 589 1 602 1 614 1 627 1 665 1 679 1
		 690 1 703 1 725 1 754 1 783 1 809 1 835 1 864 1 885 1 897 1 911 1 937 1 973 1 978 1;
createNode animCurveTU -n "bogenCTRL_middle_scaleY";
	rename -uid "6C463F88-4FBA-B696-B69B-73B68BA3755F";
	setAttr ".tan" 3;
	setAttr -s 49 ".ktv[0:48]"  187 1 203 1 218 1 222 1 232 1 240 1 247 1
		 254 1 261 1 269 1 288 1 295 1 314 1 321 1 328 1 348 1 374 1 388 1 400 1 425 1 451 1
		 476 1 488 1 502 1 515 1 526 1 538 1 551 1 575 1 589 1 602 1 614 1 627 1 665 1 679 1
		 690 1 703 1 725 1 754 1 783 1 809 1 835 1 864 1 885 1 897 1 911 1 937 1 973 1 978 1;
createNode animCurveTU -n "bogenCTRL_middle_scaleZ";
	rename -uid "5B6F6C90-4084-A76D-B825-6BAAE55E4966";
	setAttr ".tan" 3;
	setAttr -s 49 ".ktv[0:48]"  187 1 203 1 218 1 222 1 232 1 240 1 247 1
		 254 1 261 1 269 1 288 1 295 1 314 1 321 1 328 1 348 1 374 1 388 1 400 1 425 1 451 1
		 476 1 488 1 502 1 515 1 526 1 538 1 551 1 575 1 589 1 602 1 614 1 627 1 665 1 679 1
		 690 1 703 1 725 1 754 1 783 1 809 1 835 1 864 1 885 1 897 1 911 1 937 1 973 1 978 1;
createNode animCurveTU -n "bogenCTRL_middle_Bend";
	rename -uid "33120531-45E7-6425-4267-5CA155240D06";
	setAttr ".tan" 3;
	setAttr -s 49 ".ktv[0:48]"  187 0 203 0 218 0 222 0 232 0 240 0 247 0
		 254 0 261 0 269 0 288 0 295 0 314 0 321 0 328 0 348 0 374 0 388 0 400 0 425 0 451 0
		 476 0 488 0 502 0 515 0 526 0 538 0 551 0 575 0 589 0 602 0 614 0 627 0 665 0 679 0
		 690 0 703 0 725 0 754 0 783 0 809 0 835 0 864 0 885 0 897 0 911 0 937 0 973 0 978 0;
createNode animCurveTU -n "bogenCTRL_middle_squashNstretch";
	rename -uid "5C38DCEC-42DE-A36A-CFFC-C6AD98DF20BA";
	setAttr ".tan" 3;
	setAttr -s 49 ".ktv[0:48]"  187 0 203 0 218 0 222 0 232 0 240 0 247 0
		 254 0 261 0 269 0 288 0 295 0 314 0 321 0 328 0 348 0 374 0 388 0 400 0 425 0 451 0
		 476 0 488 0 502 0 515 0 526 0 538 0 551 0 575 0 589 0 602 0 614 0 627 0 665 0 679 0
		 690 0 703 0 725 0 754 0 783 0 809 0 835 0 864 0 885 0 897 0 911 0 937 0 973 0 978 0;
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "C04AE490-490C-6A34-D052-07B9C9EAE362";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -705.20957102904345 -496.19888634247417 ;
	setAttr ".tgi[0].vh" -type "double2" 979.41715392313267 264.51536914374287 ;
	setAttr -s 6 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" 377.14285278320312;
	setAttr ".tgi[0].ni[0].y" 211.42857360839844;
	setAttr ".tgi[0].ni[0].nvs" 2387;
	setAttr ".tgi[0].ni[1].x" 70;
	setAttr ".tgi[0].ni[1].y" 28.571428298950195;
	setAttr ".tgi[0].ni[1].nvs" 1923;
	setAttr ".tgi[0].ni[2].x" -237.14285278320312;
	setAttr ".tgi[0].ni[2].y" -168.57142639160156;
	setAttr ".tgi[0].ni[2].nvs" 1923;
	setAttr ".tgi[0].ni[3].x" 725.71429443359375;
	setAttr ".tgi[0].ni[3].y" 211.42857360839844;
	setAttr ".tgi[0].ni[3].nvs" 1923;
	setAttr ".tgi[0].ni[4].x" 70;
	setAttr ".tgi[0].ni[4].y" -147.14285278320312;
	setAttr ".tgi[0].ni[4].nvs" 1923;
	setAttr ".tgi[0].ni[5].x" -237.14285278320312;
	setAttr ".tgi[0].ni[5].y" 7.1428570747375488;
	setAttr ".tgi[0].ni[5].nvs" 1923;
createNode animCurveTU -n "plane_canvasSize2_visibility";
	rename -uid "24176E5C-4A14-F113-EBE2-D0ACF6E8D4DF";
	setAttr ".tan" 9;
	setAttr -s 4 ".ktv[0:3]"  0 0 24 1 35 0 120 1;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "plane_canvasSize2_translateX";
	rename -uid "B414B84C-461D-735C-26A7-B2AF4897A556";
	setAttr ".tan" 28;
	setAttr -s 2 ".ktv[0:1]"  24 -50 120 -98.942398829020163;
	setAttr -s 2 ".kot[0:1]"  18 18;
createNode animCurveTL -n "plane_canvasSize2_translateY";
	rename -uid "F3DDBBA3-4C84-B2B7-84F8-35B60C22F517";
	setAttr ".tan" 28;
	setAttr -s 2 ".ktv[0:1]"  24 0 120 0;
	setAttr -s 2 ".kot[0:1]"  18 18;
createNode animCurveTL -n "plane_canvasSize2_translateZ";
	rename -uid "817B399A-4175-3127-03EC-2FA025A4F382";
	setAttr ".tan" 28;
	setAttr -s 2 ".ktv[0:1]"  24 50.892382629912234 120 50.892382629912234;
	setAttr -s 2 ".kot[0:1]"  18 18;
createNode animCurveTA -n "plane_canvasSize2_rotateX";
	rename -uid "F81E0F3B-4A51-5CBF-4075-7C9E406F60D7";
	setAttr ".tan" 28;
	setAttr -s 2 ".ktv[0:1]"  24 90.000000000000028 120 90.000000000000028;
	setAttr -s 2 ".kot[0:1]"  18 18;
createNode animCurveTA -n "plane_canvasSize2_rotateY";
	rename -uid "A2A4C429-4F0C-6120-81A8-84B2AB753E40";
	setAttr ".tan" 28;
	setAttr -s 2 ".ktv[0:1]"  24 0 120 0;
	setAttr -s 2 ".kot[0:1]"  18 18;
createNode animCurveTA -n "plane_canvasSize2_rotateZ";
	rename -uid "B3E82824-472A-3936-84EC-3F962A2BC690";
	setAttr ".tan" 28;
	setAttr -s 2 ".ktv[0:1]"  24 0 120 0;
	setAttr -s 2 ".kot[0:1]"  18 18;
createNode animCurveTU -n "plane_canvasSize2_scaleX";
	rename -uid "E9DD0F28-4A61-8C0E-60A0-FC885E831290";
	setAttr ".tan" 28;
	setAttr -s 2 ".ktv[0:1]"  24 100 120 100;
	setAttr -s 2 ".kot[0:1]"  18 18;
createNode animCurveTU -n "plane_canvasSize2_scaleY";
	rename -uid "4ADB3DC9-40F4-7C90-D791-BAA342B7D4E8";
	setAttr ".tan" 28;
	setAttr -s 2 ".ktv[0:1]"  24 1 120 1;
	setAttr -s 2 ".kot[0:1]"  18 18;
createNode animCurveTU -n "plane_canvasSize2_scaleZ";
	rename -uid "6027BBA7-44B0-C23D-7AE1-BA9A53702F02";
	setAttr ".tan" 28;
	setAttr -s 2 ".ktv[0:1]"  24 60 120 60;
	setAttr -s 2 ".kot[0:1]"  18 18;
createNode animCurveTU -n "plane_canvasSize3_visibility";
	rename -uid "8AC076B8-4FA0-4950-8834-E8893CFD25DE";
	setAttr ".tan" 9;
	setAttr -s 3 ".ktv[0:2]"  0 0 24 1 120 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "plane_canvasSize3_translateX";
	rename -uid "62779056-4478-A7F6-45B8-189AD6D29469";
	setAttr ".tan" 28;
	setAttr -s 2 ".ktv[0:1]"  24 50 120 98.942398829020163;
	setAttr -s 2 ".kot[0:1]"  18 18;
createNode animCurveTL -n "plane_canvasSize3_translateY";
	rename -uid "05D9F005-452C-C6FC-E1BA-D69553517124";
	setAttr ".tan" 28;
	setAttr -s 2 ".ktv[0:1]"  24 0 120 0;
	setAttr -s 2 ".kot[0:1]"  18 18;
createNode animCurveTL -n "plane_canvasSize3_translateZ";
	rename -uid "63B5EF7F-48DA-369D-9088-E2B1D20FDB7D";
	setAttr ".tan" 28;
	setAttr -s 2 ".ktv[0:1]"  24 50.892382629912234 120 50.892382629912234;
	setAttr -s 2 ".kot[0:1]"  18 18;
createNode animCurveTA -n "plane_canvasSize3_rotateX";
	rename -uid "4D5205F2-479F-F895-9E8E-4C84DCACC1CB";
	setAttr ".tan" 28;
	setAttr -s 2 ".ktv[0:1]"  24 90.000000000000028 120 90.000000000000028;
	setAttr -s 2 ".kot[0:1]"  18 18;
createNode animCurveTA -n "plane_canvasSize3_rotateY";
	rename -uid "5D3123FC-4A03-8AC1-3876-17B087C76021";
	setAttr ".tan" 28;
	setAttr -s 2 ".ktv[0:1]"  24 0 120 0;
	setAttr -s 2 ".kot[0:1]"  18 18;
createNode animCurveTA -n "plane_canvasSize3_rotateZ";
	rename -uid "5613606D-49B0-211D-930B-ECAF9219DF43";
	setAttr ".tan" 28;
	setAttr -s 2 ".ktv[0:1]"  24 0 120 0;
	setAttr -s 2 ".kot[0:1]"  18 18;
createNode animCurveTU -n "plane_canvasSize3_scaleX";
	rename -uid "7BCCD821-41B5-6D86-BA8A-0D8EEF2631C6";
	setAttr ".tan" 28;
	setAttr -s 2 ".ktv[0:1]"  24 100 120 100;
	setAttr -s 2 ".kot[0:1]"  18 18;
createNode animCurveTU -n "plane_canvasSize3_scaleY";
	rename -uid "4E8A376C-4F8B-C6FD-816A-6997D866F326";
	setAttr ".tan" 28;
	setAttr -s 2 ".ktv[0:1]"  24 1 120 1;
	setAttr -s 2 ".kot[0:1]"  18 18;
createNode animCurveTU -n "plane_canvasSize3_scaleZ";
	rename -uid "C1D340A8-4096-B436-660C-36A382DAA9DD";
	setAttr ".tan" 28;
	setAttr -s 2 ".ktv[0:1]"  24 60 120 60;
	setAttr -s 2 ".kot[0:1]"  18 18;
createNode animCurveTU -n "geigeCTRL_bottom_visibility";
	rename -uid "1B91C8A5-4098-EE81-D27D-77A157919F28";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  187 1;
createNode animCurveTL -n "geigeCTRL_bottom_translateX";
	rename -uid "7848348E-4448-C991-7520-23BDC3A43113";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  187 0;
createNode animCurveTL -n "geigeCTRL_bottom_translateY";
	rename -uid "A6A2D03F-42FB-5E76-309A-71B1E6D8CAB6";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  187 0;
createNode animCurveTL -n "geigeCTRL_bottom_translateZ";
	rename -uid "D6896EE9-4578-61AA-8577-6393C203B4BE";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  187 0;
createNode animCurveTA -n "geigeCTRL_bottom_rotateX";
	rename -uid "E44EC85A-4C27-708F-AC19-59B22056FBB8";
	setAttr ".tan" 3;
	setAttr -s 2 ".ktv[0:1]"  154 0 187 -22.001816681844499;
createNode animCurveTA -n "geigeCTRL_bottom_rotateY";
	rename -uid "CFD4F08F-45B5-44BF-C73E-94A8D8BF7F81";
	setAttr ".tan" 3;
	setAttr -s 2 ".ktv[0:1]"  154 0 187 -32.193234844081594;
createNode animCurveTA -n "geigeCTRL_bottom_rotateZ";
	rename -uid "783E502B-4E1B-FC46-A456-F6AF45259316";
	setAttr ".tan" 3;
	setAttr -s 2 ".ktv[0:1]"  154 0 187 38.19520770959236;
createNode animCurveTU -n "geigeCTRL_bottom_scaleX";
	rename -uid "38B3F20B-41CF-CDE6-4CBC-AAACD63DF5A9";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  187 1;
createNode animCurveTU -n "geigeCTRL_bottom_scaleY";
	rename -uid "682D16EA-4E08-2880-C2AF-368887F4AD86";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  187 1;
createNode animCurveTU -n "geigeCTRL_bottom_scaleZ";
	rename -uid "2687044F-442E-45E6-4AAD-B286CBD5CC13";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  187 1;
createNode materialInfo -n "pasted__materialInfo1";
	rename -uid "C845E283-48A0-9E68-9621-8BA65D1EC5D6";
createNode shadingEngine -n "pasted__aiStandardSurface1SG";
	rename -uid "0695E201-48AA-08A9-5CD7-4CBAD6D21199";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode aiStandardSurface -n "pasted__aiStandardSurface1";
	rename -uid "6704A198-4EC7-225A-C07D-1EBD875A37EA";
	setAttr ".specular_roughness" 0;
	setAttr ".internal_reflections" no;
createNode file -n "pasted__file1";
	rename -uid "06AFA97D-4D5E-1EDA-CF2D-12817105E2D1";
	setAttr ".ftn" -type "string" "E:/High-Strung//assets/2D Planes/First Performance/Sketches/first perf sketch01.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "pasted__place2dTexture1";
	rename -uid "B2AC42C5-4480-856D-B939-90808CAD95EB";
createNode file -n "pasted__file2";
	rename -uid "7810FA61-485F-A70B-8014-59B00DC57758";
	setAttr ".ftn" -type "string" "E:/High-Strung//assets/2D Planes/First Performance/Sketches/first perf sketch01 alpha.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "pasted__place2dTexture2";
	rename -uid "B5508008-4610-15AC-0640-A88E649FA707";
createNode materialInfo -n "pasted__materialInfo2";
	rename -uid "976CB96E-47D0-1E25-7EC0-E98E7C7DDE00";
createNode shadingEngine -n "pasted__aiStandardSurface2SG";
	rename -uid "5369F08A-42FB-A235-6446-EA93BCF3DFCC";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode aiStandardSurface -n "pasted__aiStandardSurface2";
	rename -uid "97E227B5-4E74-2282-FF6D-D4A352DF14F6";
	setAttr ".specular_roughness" 0;
	setAttr ".internal_reflections" no;
createNode file -n "pasted__file3";
	rename -uid "E7132A14-44C9-4A7A-0FC4-4D9C5836F0EB";
	setAttr ".ftn" -type "string" "E:/High-Strung//assets/2D Planes/First Performance/Sketches/first perf sketch03.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "pasted__place2dTexture3";
	rename -uid "45C0D563-4AFC-4F06-5255-BD810D650171";
createNode file -n "pasted__file4";
	rename -uid "EC8C3CBB-4857-16DF-9D4D-5A9E0BDE8663";
	setAttr ".ftn" -type "string" "E:/High-Strung//assets/2D Planes/First Performance/Sketches/first perf sketch03_alpha.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "pasted__place2dTexture4";
	rename -uid "5EFBBB78-4236-95A8-2C1D-23AD130680CD";
createNode materialInfo -n "pasted__materialInfo3";
	rename -uid "4D0C8A81-4146-2111-12CA-C3BE341F40AB";
createNode shadingEngine -n "pasted__aiStandardSurface3SG";
	rename -uid "861A8675-45BC-430D-E6FB-E9ACBF76FDF5";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode aiStandardSurface -n "pasted__aiStandardSurface3";
	rename -uid "D73B0EB7-498A-E991-D750-FEB1D00CF3DC";
	setAttr ".specular_roughness" 0;
	setAttr ".internal_reflections" no;
createNode file -n "pasted__file5";
	rename -uid "AC85C258-47AD-D8C4-FE84-3A925ADF8E9C";
	setAttr ".ftn" -type "string" "E:/High-Strung//assets/2D Planes/First Performance/Sketches/first perf sketch02.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "pasted__place2dTexture5";
	rename -uid "EA15C947-4355-3F69-80A8-0C98BD2710E8";
createNode polyPlane -n "polyPlane1";
	rename -uid "A3A9B2D1-44B5-6F82-AF0E-3D86CF40BC0E";
	setAttr ".cuv" 2;
createNode animCurveTU -n "spotlight_dummy_visibility";
	rename -uid "2DCCD72F-4F01-486A-BBB4-E6AFF1509495";
	setAttr ".tan" 9;
	setAttr -s 3 ".ktv[0:2]"  0 0 130 1 458 0;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "plane_canvasSize3_visibility1";
	rename -uid "8639E455-4163-49EF-B71D-CDA8A8A86D2D";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  120 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "plane_canvasSize2_visibility1";
	rename -uid "A4158D8C-43D3-BF48-03BD-1990E664EEA7";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  120 1;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "Geige_scaleX";
	rename -uid "CA7C930C-42E6-C8DD-0E86-C6907F30240A";
	setAttr ".tan" 28;
	setAttr -s 2 ".ktv[0:1]"  0 1 154 1;
	setAttr -s 2 ".kot[0:1]"  18 18;
createNode animCurveTU -n "Geige_scaleY";
	rename -uid "AF04741C-4C52-FC7E-1280-48A55BC08EAA";
	setAttr ".tan" 28;
	setAttr -s 2 ".ktv[0:1]"  0 1 154 1;
	setAttr -s 2 ".kot[0:1]"  18 18;
createNode animCurveTU -n "Geige_scaleZ";
	rename -uid "34B513C9-4EFC-B829-9EA7-7F91ED113C6D";
	setAttr ".tan" 28;
	setAttr -s 2 ".ktv[0:1]"  0 1 154 1;
	setAttr -s 2 ".kot[0:1]"  18 18;
createNode animCurveTU -n "Geige_visibility";
	rename -uid "E45BC4F9-4EEB-D36A-3F57-F78D32459F97";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 1 154 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "Geige_translateX";
	rename -uid "DAE56335-47C3-1B08-A0C3-219157254940";
	setAttr ".tan" 28;
	setAttr -s 5 ".ktv[0:4]"  0 5.9848834376296312 38 6.025 76 5.985 115 6.025
		 154 5.9848834376296312;
	setAttr -s 5 ".kot[0:4]"  18 18 18 18 18;
createNode animCurveTL -n "Geige_translateY";
	rename -uid "C471A8E6-4A6A-137F-CB4B-CB95BE4124C9";
	setAttr ".tan" 28;
	setAttr -s 5 ".ktv[0:4]"  0 -15.582677595359231 38 -15.4 76 -15.583
		 115 -15.4 154 -15.582677595359231;
	setAttr -s 5 ".kot[0:4]"  18 18 18 18 18;
createNode animCurveTL -n "Geige_translateZ";
	rename -uid "601B3CF3-49BA-6F32-0A66-4DAB31BA5C16";
	setAttr ".tan" 28;
	setAttr -s 2 ".ktv[0:1]"  0 27.909341399001097 154 27.909341399001097;
	setAttr -s 2 ".kot[0:1]"  18 18;
createNode animCurveTA -n "Geige_rotateX";
	rename -uid "2552A99B-4ABA-6811-8080-859CC2D48BAA";
	setAttr ".tan" 28;
	setAttr -s 2 ".ktv[0:1]"  0 90 154 90;
	setAttr -s 2 ".kot[0:1]"  18 18;
createNode animCurveTA -n "Geige_rotateY";
	rename -uid "3224FA8E-41F5-772D-C4D2-FAAB277A2793";
	setAttr ".tan" 28;
	setAttr -s 2 ".ktv[0:1]"  0 0 154 0;
	setAttr -s 2 ".kot[0:1]"  18 18;
createNode animCurveTA -n "Geige_rotateZ";
	rename -uid "E96820B4-4869-E365-FDB3-44919F304647";
	setAttr ".tan" 28;
	setAttr -s 2 ".ktv[0:1]"  0 0 154 0;
	setAttr -s 2 ".kot[0:1]"  18 18;
createNode timeSliderBookmark -n "timeSliderBookmark1";
	rename -uid "45BBCBD7-47C8-C3B8-D83C-95B12FF39A15";
	setAttr ".nm" -type "string" "Establishing_Shot";
	setAttr ".c" -type "float3" 0.67058825 0.23529412 0.23529412 ;
	setAttr ".tsp" 242;
	setAttr ".prty" 1;
createNode timeSliderBookmark -n "timeSliderBookmark2";
	rename -uid "334E06C0-4C60-F1C7-0537-258D531D179E";
	setAttr ".nm" -type "string" "Top_Shot";
	setAttr ".c" -type "float3" 0.8509804 0.51764709 0.28235295 ;
	setAttr ".tst" 242;
	setAttr ".tsp" 338;
	setAttr ".prty" 2;
createNode animCurveTL -n "persp1_translateX";
	rename -uid "37287125-4D9F-C070-D2E5-2AA84D36D6A6";
	setAttr ".tan" 28;
	setAttr -s 3 ".ktv[0:2]"  338 -3.1556827648363877 390 -3.1556827648363877
		 458 -3.4645445432023165;
	setAttr -s 3 ".kot[0:2]"  18 18 18;
createNode animCurveTL -n "persp1_translateY";
	rename -uid "B41A0EA0-48B2-A9DC-ED9D-E7B218B057EA";
	setAttr ".tan" 28;
	setAttr -s 3 ".ktv[0:2]"  338 -18.60886208458254 390 -18.60886208458254
		 458 -23.813399063145731;
	setAttr -s 3 ".kot[0:2]"  18 18 18;
createNode animCurveTL -n "persp1_translateZ";
	rename -uid "E7661FDD-4366-E304-BB87-8A9CF71C0D1D";
	setAttr ".tan" 28;
	setAttr -s 3 ".ktv[0:2]"  338 70.20683134995312 390 52.808567545092096
		 458 40.001089696946501;
	setAttr -s 3 ".kot[0:2]"  18 18 18;
createNode animCurveTA -n "persp1_rotateX";
	rename -uid "1F179838-4E61-4EAE-DD0F-E1943C0A51BD";
	setAttr ".tan" 28;
	setAttr -s 3 ".ktv[0:2]"  338 0 390 0 458 25.800000000000061;
	setAttr -s 3 ".kot[0:2]"  18 18 18;
createNode animCurveTA -n "persp1_rotateY";
	rename -uid "4E1978A6-4495-C37E-9787-D9B1C0B6293D";
	setAttr ".tan" 28;
	setAttr -s 3 ".ktv[0:2]"  338 0 390 0 458 -6.4000000000000083;
	setAttr -s 3 ".kot[0:2]"  18 18 18;
createNode animCurveTA -n "persp1_rotateZ";
	rename -uid "90FB68C3-4115-692F-AAC3-09884193F234";
	setAttr ".tan" 28;
	setAttr -s 2 ".ktv[0:1]"  338 -1.0086415376687809e-16 390 -1.0086415376687809e-16;
	setAttr -s 2 ".kot[0:1]"  18 18;
createNode timeSliderBookmark -n "timeSliderBookmark3";
	rename -uid "4D0D4A40-4502-5EC7-EDEB-BD878EF8104B";
	setAttr ".nm" -type "string" "low_shot";
	setAttr ".c" -type "float3" 0.27843139 0.7019608 0.41960785 ;
	setAttr ".tst" 338;
	setAttr ".tsp" 458;
	setAttr ".prty" 3;
createNode animCurveTL -n "shot_360_translateX";
	rename -uid "8FA18B8F-4D7E-FC6D-3E3E-23B74CC5CDD6";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  458 -13.282127485409491 504 -21.302778746155692
		 550 -1.6932417015098857 600 18 625 13 650 -2.8757468715131891;
	setAttr -s 6 ".kit[1:5]"  28 28 28 28 2;
	setAttr -s 6 ".kot[5]"  2;
createNode animCurveTL -n "shot_360_translateY";
	rename -uid "107C7CE7-4783-1801-EEB0-7EB648AC5578";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  458 -16.675243457549964 504 -9.0414336608192496
		 550 -3.8230282787698648 600 -3.8230282787698648 650 4.5121253021926879;
	setAttr -s 5 ".kit[3:4]"  28 2;
	setAttr -s 5 ".kot[4]"  2;
createNode animCurveTL -n "shot_360_translateZ";
	rename -uid "FDE95A62-4609-E4B9-2E60-6EB34E260185";
	setAttr ".tan" 18;
	setAttr -s 6 ".ktv[0:5]"  458 52.404078648881573 504 26.074787110959928
		 550 11.615334680379343 600 28.834345658687422 625 39.454400170646871 650 43.339854100052548;
	setAttr -s 6 ".kit[4:5]"  28 2;
	setAttr -s 6 ".kot[5]"  2;
createNode animCurveTA -n "shot_360_rotateX";
	rename -uid "B2399BA8-4059-42CA-BF91-0980A6B8450E";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  458 3.2616472703971553 504 -23.366145608693458
		 550 -33.976451956442524 600 -29.239230279526122 650 -51.938352729604986;
	setAttr -s 5 ".kit[3:4]"  1 2;
	setAttr -s 5 ".kot[3:4]"  1 2;
	setAttr -s 5 ".kix[3:4]"  1.4660180342706477 2.0833333333333321;
	setAttr -s 5 ".kiy[3:4]"  -0.091417330264379218 -0.39617442406723835;
	setAttr -s 5 ".kox[3:4]"  1.4660179664691277 1;
	setAttr -s 5 ".koy[3:4]"  -0.091417333111166954 0;
createNode animCurveTA -n "shot_360_rotateY";
	rename -uid "6C51677C-41E2-827E-C817-0D9139E48DB9";
	setAttr ".tan" 18;
	setAttr -s 5 ".ktv[0:4]"  458 -24.600000000000424 504 -97.562290219905677
		 550 -184.52458043981318 600 -276.13903132107248 650 -364;
	setAttr -s 5 ".kit[3:4]"  2 2;
	setAttr -s 5 ".kot[3:4]"  2 2;
createNode animCurveTA -n "shot_360_rotateZ";
	rename -uid "76E7E7EE-48F1-970D-0599-34B12AC5DB6F";
	setAttr ".tan" 2;
	setAttr -s 5 ".ktv[0:4]"  458 -4.3587388122887496e-16 504 -4.3587388122887496e-16
		 550 -4.3587388122887496e-16 600 -4.3587388122887496e-16 650 -4.3587388122887496e-16;
createNode timeSliderBookmark -n "timeSliderBookmark4";
	rename -uid "3094BC4A-4555-71FE-F3E8-82BE4B23128A";
	setAttr ".nm" -type "string" "360";
	setAttr ".c" -type "float3" 0.082352944 0.50980395 0.54901963 ;
	setAttr ".tst" 458;
	setAttr ".tsp" 650;
	setAttr ".prty" 4;
createNode animCurveTU -n "shot_360_visibility";
	rename -uid "A11B1B9D-49EA-D68E-0808-218C4D91B4CC";
	setAttr ".tan" 2;
	setAttr -s 5 ".ktv[0:4]"  458 1 504 1 550 1 600 1 650 1;
createNode animCurveTU -n "shot_360_scaleX";
	rename -uid "01C1E183-4BD8-A913-3E4A-2D801D80DB52";
	setAttr ".tan" 2;
	setAttr -s 5 ".ktv[0:4]"  458 1 504 1 550 1 600 1 650 1;
createNode animCurveTU -n "shot_360_scaleY";
	rename -uid "DD7A8440-4C4D-E7A3-95D2-4BA9DC269683";
	setAttr ".tan" 2;
	setAttr -s 5 ".ktv[0:4]"  458 1 504 1 550 1 600 1 650 1;
createNode animCurveTU -n "shot_360_scaleZ";
	rename -uid "CF04D3E4-460A-0711-1811-3D8CBCA23E8E";
	setAttr ".tan" 2;
	setAttr -s 5 ".ktv[0:4]"  458 1 504 1 550 1 600 1 650 1;
createNode timeSliderBookmark -n "timeSliderBookmark5";
	rename -uid "5C64A1D3-4AAB-8B23-E495-6AA299FB2896";
	setAttr ".nm" -type "string" "Credits";
	setAttr ".c" -type "float3" 0.76862746 0.34509805 0.55686277 ;
	setAttr ".tst" 980;
	setAttr ".tsp" 1200;
	setAttr ".prty" 5;
createNode timeSliderBookmark -n "timeSliderBookmark6";
	rename -uid "69EE8AAF-46DE-618D-57B2-31980A50F86F";
	setAttr ".nm" -type "string" "last_shot";
	setAttr ".c" -type "float3" 0.56862748 0.40000001 0.80000001 ;
	setAttr ".tst" 650;
	setAttr ".tsp" 980;
	setAttr ".prty" 6;
createNode sequencer -n "sequencer1";
	rename -uid "372C766E-48B7-8520-CBED-6B81DE366CDE";
	setAttr ".mnf" 0;
	setAttr ".mxf" 1014;
	setAttr -s 5 ".shts";
createNode trackInfoManager -n "trackInfoManager1";
	rename -uid "1B5254E6-4F7A-B8FE-7A13-9FBA4DDA7B50";
	setAttr ".ti[0].t" -type "string" "";
createNode shot -n "establishing";
	rename -uid "0720D794-4075-E2ED-406F-0AAA307984EA";
	setAttr ".ef" 242;
	setAttr ".cv" no;
	setAttr ".sn" -type "string" "establishing";
	setAttr ".wres" 1024;
createNode shot -n "top1";
	rename -uid "0FDFB432-4812-590D-1D33-EFB667B02739";
	setAttr ".sf" 243;
	setAttr ".ef" 338;
	setAttr ".ssf" 243;
	setAttr ".cv" no;
	setAttr ".sn" -type "string" "top1";
	setAttr ".wres" 1024;
createNode shot -n "low";
	rename -uid "1F218CB0-4472-4917-877F-8EBB20978F6C";
	setAttr ".sf" 339;
	setAttr ".ef" 458;
	setAttr ".ssf" 339;
	setAttr ".cv" no;
	setAttr ".sn" -type "string" "low";
	setAttr ".wres" 1024;
createNode shot -n "shot_361";
	rename -uid "178A6D1D-4B87-521C-82F9-E0983ADF46E9";
	setAttr ".sf" 459;
	setAttr ".ef" 650;
	setAttr ".ssf" 459;
	setAttr ".cv" no;
	setAttr ".sn" -type "string" "360";
	setAttr ".wres" 1024;
	setAttr ".ca" 1;
createNode shot -n "final";
	rename -uid "6A3AA180-4347-8962-284A-21B21D1586DC";
	setAttr ".sf" 651;
	setAttr ".ef" 1014;
	setAttr ".ssf" 651;
	setAttr ".cv" no;
	setAttr ".sn" -type "string" "final";
	setAttr ".wres" 1024;
createNode polyHelix -n "polyHelix1";
	rename -uid "E8E0D05F-44D0-F570-0940-ECBBEE162047";
	setAttr ".c" 1;
	setAttr ".sco" 29;
	setAttr ".cuv" 3;
createNode polyEdgeToCurve -n "polyEdgeToCurve1";
	rename -uid "767DEA57-4CBA-31E5-5D61-4BBF30130704";
	setAttr ".ics" -type "componentList" 151 "vtx[1207]" "vtx[1199]" "vtx[1191]" "vtx[1183]" "vtx[1175]" "vtx[1167]" "vtx[1159]" "vtx[1151]" "vtx[1143]" "vtx[1135]" "vtx[1127]" "vtx[1119]" "vtx[1111]" "vtx[1103]" "vtx[1095]" "vtx[1087]" "vtx[1079]" "vtx[1071]" "vtx[1063]" "vtx[1055]" "vtx[1047]" "vtx[1039]" "vtx[1031]" "vtx[1023]" "vtx[1015]" "vtx[1007]" "vtx[999]" "vtx[991]" "vtx[983]" "vtx[975]" "vtx[967]" "vtx[959]" "vtx[951]" "vtx[943]" "vtx[935]" "vtx[927]" "vtx[919]" "vtx[911]" "vtx[903]" "vtx[895]" "vtx[887]" "vtx[879]" "vtx[871]" "vtx[863]" "vtx[855]" "vtx[847]" "vtx[839]" "vtx[831]" "vtx[823]" "vtx[815]" "vtx[807]" "vtx[799]" "vtx[791]" "vtx[783]" "vtx[775]" "vtx[767]" "vtx[759]" "vtx[751]" "vtx[743]" "vtx[735]" "vtx[727]" "vtx[719]" "vtx[711]" "vtx[703]" "vtx[695]" "vtx[687]" "vtx[679]" "vtx[671]" "vtx[663]" "vtx[655]" "vtx[647]" "vtx[639]" "vtx[631]" "vtx[623]" "vtx[615]" "vtx[607]" "vtx[599]" "vtx[591]" "vtx[583]" "vtx[575]" "vtx[567]" "vtx[559]" "vtx[551]" "vtx[543]" "vtx[535]" "vtx[527]" "vtx[519]" "vtx[511]" "vtx[503]" "vtx[495]" "vtx[487]" "vtx[479]" "vtx[471]" "vtx[463]" "vtx[455]" "vtx[447]" "vtx[439]" "vtx[431]" "vtx[423]" "vtx[415]" "vtx[407]" "vtx[399]" "vtx[391]" "vtx[383]" "vtx[375]" "vtx[367]" "vtx[359]" "vtx[351]" "vtx[343]" "vtx[335]" "vtx[327]" "vtx[319]" "vtx[311]" "vtx[303]" "vtx[295]" "vtx[287]" "vtx[279]" "vtx[271]" "vtx[263]" "vtx[255]" "vtx[247]" "vtx[239]" "vtx[231]" "vtx[223]" "vtx[215]" "vtx[207]" "vtx[199]" "vtx[191]" "vtx[183]" "vtx[175]" "vtx[167]" "vtx[159]" "vtx[151]" "vtx[143]" "vtx[135]" "vtx[127]" "vtx[119]" "vtx[111]" "vtx[103]" "vtx[95]" "vtx[87]" "vtx[79]" "vtx[71]" "vtx[63]" "vtx[55]" "vtx[47]" "vtx[39]" "vtx[31]" "vtx[23]" "vtx[15]" "vtx[7]";
createNode polyEdgeToCurve -n "polyEdgeToCurve2";
	rename -uid "529B69C4-4BC9-1F32-6C26-FBA625734314";
	setAttr ".ics" -type "componentList" 30 "vtx[239]" "vtx[231]" "vtx[223]" "vtx[215]" "vtx[207]" "vtx[199]" "vtx[191]" "vtx[183]" "vtx[175]" "vtx[167]" "vtx[159]" "vtx[151]" "vtx[143]" "vtx[135]" "vtx[127]" "vtx[119]" "vtx[111]" "vtx[103]" "vtx[95]" "vtx[87]" "vtx[79]" "vtx[71]" "vtx[63]" "vtx[55]" "vtx[47]" "vtx[39]" "vtx[31]" "vtx[23]" "vtx[15]" "vtx[7]";
select -ne :time1;
	setAttr -av -k on ".cch";
	setAttr -k on ".fzn";
	setAttr -av -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr ".o" 663;
	setAttr -av -k on ".unw" 663;
	setAttr -av -k on ".etw";
	setAttr -av -k on ".tps";
	setAttr -av -k on ".tms";
select -ne :sequenceManager1;
	setAttr ".o" 525;
select -ne :hardwareRenderingGlobals;
	setAttr -av -k on ".ihi";
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr -k on ".hwi";
	setAttr -av ".ta" 5;
	setAttr -av ".tq";
	setAttr -av ".etmr";
	setAttr -av ".aoon";
	setAttr -av ".aoam";
	setAttr -av ".aora";
	setAttr -k on ".hff";
	setAttr -av -k on ".hfd";
	setAttr -av -k on ".hfs";
	setAttr -av -k on ".hfe";
	setAttr -av -k on ".hfcr";
	setAttr -av -k on ".hfcg";
	setAttr -av -k on ".hfcb";
	setAttr -av -k on ".hfa";
	setAttr -av ".mbe";
	setAttr -av -k on ".mbsof";
	setAttr -k on ".blen";
	setAttr -k on ".blat";
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 15 ".st";
	setAttr -cb on ".an";
	setAttr -cb on ".pt";
select -ne :renderGlobalsList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
select -ne :defaultShaderList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 23 ".s";
select -ne :postProcessList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 29 ".u";
select -ne :defaultRenderingList1;
	setAttr -k on ".ihi";
	setAttr -s 3 ".r";
select -ne :defaultTextureList1;
	setAttr -s 41 ".tx";
select -ne :initialShadingGroup;
	setAttr -av -k on ".cch";
	setAttr -k on ".fzn";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".bbx";
	setAttr -k on ".vwm";
	setAttr -k on ".tpv";
	setAttr -k on ".uit";
	setAttr -s 3 ".dsm";
	setAttr -k on ".mwc";
	setAttr -cb on ".an";
	setAttr -cb on ".il";
	setAttr -cb on ".vo";
	setAttr -cb on ".eo";
	setAttr -cb on ".fo";
	setAttr -cb on ".epo";
	setAttr ".ro" yes;
	setAttr -k on ".ai_surface_shader";
	setAttr -k on ".ai_volume_shader";
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
	setAttr ".ro" yes;
	setAttr -k on ".ai_surface_shader";
	setAttr -k on ".ai_volume_shader";
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -av -k on ".macc";
	setAttr -av -k on ".macd";
	setAttr -av -k on ".macq";
	setAttr -av -k on ".mcfr";
	setAttr -cb on ".ifg";
	setAttr -av -k on ".clip";
	setAttr -av -k on ".edm";
	setAttr -av -k on ".edl";
	setAttr -av -k on ".ren" -type "string" "arnold";
	setAttr -av -k on ".esr";
	setAttr -av -k on ".ors";
	setAttr -cb on ".sdf";
	setAttr -av -k on ".outf" 51;
	setAttr -av -cb on ".imfkey" -type "string" "exr";
	setAttr -av -k on ".gama";
	setAttr -k on ".exrc";
	setAttr -k on ".expt";
	setAttr -av -k on ".an";
	setAttr -cb on ".ar";
	setAttr -av -k on ".fs";
	setAttr -av -k on ".ef";
	setAttr -av -k on ".bfs";
	setAttr -cb on ".me";
	setAttr -cb on ".se";
	setAttr -av -k on ".be";
	setAttr -av -cb on ".ep";
	setAttr -av -k on ".fec";
	setAttr -av -k on ".ofc";
	setAttr -cb on ".ofe";
	setAttr -cb on ".efe";
	setAttr -cb on ".oft";
	setAttr -cb on ".umfn";
	setAttr -cb on ".ufe";
	setAttr -av -k on ".pff";
	setAttr -av -k on ".peie";
	setAttr -av -k on ".ifp";
	setAttr -k on ".rv";
	setAttr -av -k on ".comp";
	setAttr -av -k on ".cth";
	setAttr -av -k on ".soll";
	setAttr -k on ".sosl";
	setAttr -av -k on ".rd";
	setAttr -av -k on ".lp";
	setAttr -av -k on ".sp";
	setAttr -av -k on ".shs";
	setAttr -av -k on ".lpr";
	setAttr -cb on ".gv";
	setAttr -cb on ".sv";
	setAttr -av -k on ".mm";
	setAttr -av -k on ".npu";
	setAttr -av -k on ".itf";
	setAttr -av -k on ".shp";
	setAttr -cb on ".isp";
	setAttr -av -k on ".uf";
	setAttr -av -k on ".oi";
	setAttr -av -k on ".rut";
	setAttr -av -k on ".mot";
	setAttr -av -k on ".mb";
	setAttr -av -k on ".mbf";
	setAttr -av -k on ".mbso";
	setAttr -av -k on ".mbsc";
	setAttr -av -k on ".afp";
	setAttr -av -k on ".pfb";
	setAttr -av -k on ".pram";
	setAttr -av -k on ".poam";
	setAttr -av -k on ".prlm";
	setAttr -av -k on ".polm";
	setAttr -av -cb on ".prm";
	setAttr -av -cb on ".pom";
	setAttr -cb on ".pfrm";
	setAttr -cb on ".pfom";
	setAttr -av -k on ".bll";
	setAttr -av -k on ".bls";
	setAttr -av -k on ".smv";
	setAttr -av -k on ".ubc";
	setAttr -av -k on ".mbc";
	setAttr -cb on ".mbt";
	setAttr -av -k on ".udbx";
	setAttr -av -k on ".smc";
	setAttr -av -k on ".kmv";
	setAttr -cb on ".isl";
	setAttr -cb on ".ism";
	setAttr -cb on ".imb";
	setAttr -av -k on ".rlen";
	setAttr -av -k on ".frts";
	setAttr -av -k on ".tlwd";
	setAttr -av -k on ".tlht";
	setAttr -av -k on ".jfc";
	setAttr -cb on ".rsb";
	setAttr -av -k on ".ope";
	setAttr -av -k on ".oppf";
	setAttr -av -k on ".rcp";
	setAttr -av -k on ".icp";
	setAttr -av -k on ".ocp";
	setAttr -cb on ".hbl";
	setAttr ".dss" -type "string" "lambert1";
select -ne :defaultResolution;
	setAttr -av -k on ".cch";
	setAttr -av -k on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -k on ".bnm";
	setAttr -av -k on ".w" 1920;
	setAttr -av -k on ".h" 1080;
	setAttr -av ".pa" 1;
	setAttr -av -k on ".al";
	setAttr -av -k on ".dar" 1.7769999504089355;
	setAttr -av -k on ".ldar";
	setAttr -av -k on ".dpi";
	setAttr -av -k on ".off";
	setAttr -av -k on ".fld";
	setAttr -av -k on ".zsl";
	setAttr -av -k on ".isu";
	setAttr -av -k on ".pdu";
select -ne :defaultColorMgtGlobals;
	setAttr ".cfe" yes;
	setAttr ".cfp" -type "string" "<MAYA_RESOURCES>/OCIO-configs/Maya2022-default/config.ocio";
	setAttr ".vtn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".vn" -type "string" "ACES 1.0 SDR-video";
	setAttr ".dn" -type "string" "sRGB";
	setAttr ".wsn" -type "string" "ACEScg";
	setAttr ".otn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".potn" -type "string" "ACES 1.0 SDR-video (sRGB)";
select -ne :hardwareRenderGlobals;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -av ".ctrs" 256;
	setAttr -av ".btrs" 512;
	setAttr -av -k off -cb on ".fbfm";
	setAttr -av -k off -cb on ".ehql";
	setAttr -av -k off -cb on ".eams";
	setAttr -av -k off -cb on ".eeaa";
	setAttr -av -k off -cb on ".engm";
	setAttr -av -k off -cb on ".mes";
	setAttr -av -k off -cb on ".emb";
	setAttr -av -k off -cb on ".mbbf";
	setAttr -av -k off -cb on ".mbs";
	setAttr -av -k off -cb on ".trm";
	setAttr -av -k off -cb on ".tshc";
	setAttr -av -k off -cb on ".enpt";
	setAttr -av -k off -cb on ".clmt";
	setAttr -av -k off -cb on ".tcov";
	setAttr -av -k off -cb on ".lith";
	setAttr -av -k off -cb on ".sobc";
	setAttr -av -k off -cb on ".cuth";
	setAttr -av -k off -cb on ".hgcd";
	setAttr -av -k off -cb on ".hgci";
	setAttr -av -k off -cb on ".mgcs";
	setAttr -av -k off -cb on ".twa";
	setAttr -av -k off -cb on ".twz";
	setAttr -k on ".hwcc";
	setAttr -k on ".hwdp";
	setAttr -k on ".hwql";
	setAttr -k on ".hwfr";
	setAttr -k on ".soll";
	setAttr -k on ".sosl";
	setAttr -k on ".bswa";
	setAttr -k on ".shml";
	setAttr -k on ".hwel";
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "plane_canvasSize2_visibility1.o" "stage_fertigRN.phl[1]";
connectAttr "plane_canvasSize2_translateX.o" "stage_fertigRN.phl[2]";
connectAttr "plane_canvasSize2_translateY.o" "stage_fertigRN.phl[3]";
connectAttr "plane_canvasSize2_translateZ.o" "stage_fertigRN.phl[4]";
connectAttr "plane_canvasSize2_rotateX.o" "stage_fertigRN.phl[5]";
connectAttr "plane_canvasSize2_rotateY.o" "stage_fertigRN.phl[6]";
connectAttr "plane_canvasSize2_rotateZ.o" "stage_fertigRN.phl[7]";
connectAttr "plane_canvasSize2_scaleX.o" "stage_fertigRN.phl[8]";
connectAttr "plane_canvasSize2_scaleY.o" "stage_fertigRN.phl[9]";
connectAttr "plane_canvasSize2_scaleZ.o" "stage_fertigRN.phl[10]";
connectAttr "plane_canvasSize3_visibility1.o" "stage_fertigRN.phl[11]";
connectAttr "plane_canvasSize3_translateX.o" "stage_fertigRN.phl[12]";
connectAttr "plane_canvasSize3_translateY.o" "stage_fertigRN.phl[13]";
connectAttr "plane_canvasSize3_translateZ.o" "stage_fertigRN.phl[14]";
connectAttr "plane_canvasSize3_rotateX.o" "stage_fertigRN.phl[15]";
connectAttr "plane_canvasSize3_rotateY.o" "stage_fertigRN.phl[16]";
connectAttr "plane_canvasSize3_rotateZ.o" "stage_fertigRN.phl[17]";
connectAttr "plane_canvasSize3_scaleX.o" "stage_fertigRN.phl[18]";
connectAttr "plane_canvasSize3_scaleY.o" "stage_fertigRN.phl[19]";
connectAttr "plane_canvasSize3_scaleZ.o" "stage_fertigRN.phl[20]";
connectAttr "stage_fertigRN.phl[21]" "stage_fertigRN.phl[22]";
connectAttr "stage_fertigRN.phl[23]" "stage_fertigRN.phl[24]";
connectAttr "stage_fertigRN.phl[25]" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "stage_fertigRN.phl[26]" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "stage_fertigRN.phl[27]" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[4].dn"
		;
connectAttr "stage_fertigRN.phl[28]" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "stage_fertigRN.phl[29]" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "stage_fertigRN.phl[30]" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[5].dn"
		;
connectAttr "Geige_translateX.o" "Geige_RigRN.phl[1]";
connectAttr "Geige_translateY.o" "Geige_RigRN.phl[2]";
connectAttr "Geige_translateZ.o" "Geige_RigRN.phl[3]";
connectAttr "Geige_rotateX.o" "Geige_RigRN.phl[4]";
connectAttr "Geige_rotateY.o" "Geige_RigRN.phl[5]";
connectAttr "Geige_rotateZ.o" "Geige_RigRN.phl[6]";
connectAttr "Geige_scaleX.o" "Geige_RigRN.phl[7]";
connectAttr "Geige_scaleY.o" "Geige_RigRN.phl[8]";
connectAttr "Geige_scaleZ.o" "Geige_RigRN.phl[9]";
connectAttr "Geige_visibility.o" "Geige_RigRN.phl[10]";
connectAttr "bogenCTRL_middle_Bend.o" "Geige_RigRN.phl[11]";
connectAttr "bogenCTRL_middle_squashNstretch.o" "Geige_RigRN.phl[12]";
connectAttr "bogenCTRL_middle_translateX.o" "Geige_RigRN.phl[13]";
connectAttr "bogenCTRL_middle_translateY.o" "Geige_RigRN.phl[14]";
connectAttr "bogenCTRL_middle_translateZ.o" "Geige_RigRN.phl[15]";
connectAttr "bogenCTRL_middle_rotateY.o" "Geige_RigRN.phl[16]";
connectAttr "bogenCTRL_middle_rotateX.o" "Geige_RigRN.phl[17]";
connectAttr "bogenCTRL_middle_rotateZ.o" "Geige_RigRN.phl[18]";
connectAttr "bogenCTRL_middle_scaleX.o" "Geige_RigRN.phl[19]";
connectAttr "bogenCTRL_middle_scaleY.o" "Geige_RigRN.phl[20]";
connectAttr "bogenCTRL_middle_scaleZ.o" "Geige_RigRN.phl[21]";
connectAttr "bogenCTRL_middle_visibility.o" "Geige_RigRN.phl[22]";
connectAttr "geigeCTRL_bottom_translateX.o" "Geige_RigRN.phl[23]";
connectAttr "geigeCTRL_bottom_translateY.o" "Geige_RigRN.phl[24]";
connectAttr "geigeCTRL_bottom_translateZ.o" "Geige_RigRN.phl[25]";
connectAttr "geigeCTRL_bottom_rotateX.o" "Geige_RigRN.phl[26]";
connectAttr "geigeCTRL_bottom_rotateY.o" "Geige_RigRN.phl[27]";
connectAttr "geigeCTRL_bottom_rotateZ.o" "Geige_RigRN.phl[28]";
connectAttr "geigeCTRL_bottom_scaleX.o" "Geige_RigRN.phl[29]";
connectAttr "geigeCTRL_bottom_scaleY.o" "Geige_RigRN.phl[30]";
connectAttr "geigeCTRL_bottom_scaleZ.o" "Geige_RigRN.phl[31]";
connectAttr "geigeCTRL_bottom_visibility.o" "Geige_RigRN.phl[32]";
connectAttr "spotlight_dummy_visibility.o" "spotlight_dummy.v";
connectAttr "polyPlane1.out" "spotlight_dummyShape.i";
connectAttr "persp1_translateX.o" "low_shot.tx";
connectAttr "persp1_translateY.o" "low_shot.ty";
connectAttr "persp1_translateZ.o" "low_shot.tz";
connectAttr "persp1_rotateX.o" "low_shot.rx";
connectAttr "persp1_rotateY.o" "low_shot.ry";
connectAttr "persp1_rotateZ.o" "low_shot.rz";
connectAttr "shot_360_translateX.o" "shot_360.tx" -l on;
connectAttr "shot_360_translateY.o" "shot_360.ty" -l on;
connectAttr "shot_360_translateZ.o" "shot_360.tz" -l on;
connectAttr "shot_360_rotateX.o" "shot_360.rx" -l on;
connectAttr "shot_360_rotateY.o" "shot_360.ry" -l on;
connectAttr "shot_360_rotateZ.o" "shot_360.rz" -l on;
connectAttr "shot_360_visibility.o" "shot_360.v";
connectAttr "shot_360_scaleX.o" "shot_360.sx";
connectAttr "shot_360_scaleY.o" "shot_360.sy";
connectAttr "shot_360_scaleZ.o" "shot_360.sz";
connectAttr "polyHelix1.out" "pHelixShape1.i";
connectAttr "polyEdgeToCurve1.oc" "polyToCurveShape1.cr";
connectAttr "polyEdgeToCurve2.oc" "camera_pathShape.cr";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__aiStandardSurface1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__aiStandardSurface2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__aiStandardSurface3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__aiStandardSurface1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__aiStandardSurface2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__aiStandardSurface3SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "pasted__aiStandardSurface1SG.msg" "pasted__materialInfo1.sg";
connectAttr "pasted__aiStandardSurface1.msg" "pasted__materialInfo1.m";
connectAttr "pasted__file1.msg" "pasted__materialInfo1.t" -na;
connectAttr "pasted__aiStandardSurface1.out" "pasted__aiStandardSurface1SG.ss";
connectAttr "plane_frontShape.iog" "pasted__aiStandardSurface1SG.dsm" -na;
connectAttr "pasted__file1.oc" "pasted__aiStandardSurface1.base_color";
connectAttr "pasted__file2.oc" "pasted__aiStandardSurface1.opacity";
connectAttr ":defaultColorMgtGlobals.cme" "pasted__file1.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "pasted__file1.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "pasted__file1.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "pasted__file1.ws";
connectAttr "pasted__place2dTexture1.c" "pasted__file1.c";
connectAttr "pasted__place2dTexture1.tf" "pasted__file1.tf";
connectAttr "pasted__place2dTexture1.rf" "pasted__file1.rf";
connectAttr "pasted__place2dTexture1.mu" "pasted__file1.mu";
connectAttr "pasted__place2dTexture1.mv" "pasted__file1.mv";
connectAttr "pasted__place2dTexture1.s" "pasted__file1.s";
connectAttr "pasted__place2dTexture1.wu" "pasted__file1.wu";
connectAttr "pasted__place2dTexture1.wv" "pasted__file1.wv";
connectAttr "pasted__place2dTexture1.re" "pasted__file1.re";
connectAttr "pasted__place2dTexture1.of" "pasted__file1.of";
connectAttr "pasted__place2dTexture1.r" "pasted__file1.ro";
connectAttr "pasted__place2dTexture1.n" "pasted__file1.n";
connectAttr "pasted__place2dTexture1.vt1" "pasted__file1.vt1";
connectAttr "pasted__place2dTexture1.vt2" "pasted__file1.vt2";
connectAttr "pasted__place2dTexture1.vt3" "pasted__file1.vt3";
connectAttr "pasted__place2dTexture1.vc1" "pasted__file1.vc1";
connectAttr "pasted__place2dTexture1.o" "pasted__file1.uv";
connectAttr "pasted__place2dTexture1.ofs" "pasted__file1.fs";
connectAttr ":defaultColorMgtGlobals.cme" "pasted__file2.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "pasted__file2.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "pasted__file2.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "pasted__file2.ws";
connectAttr "pasted__place2dTexture2.c" "pasted__file2.c";
connectAttr "pasted__place2dTexture2.tf" "pasted__file2.tf";
connectAttr "pasted__place2dTexture2.rf" "pasted__file2.rf";
connectAttr "pasted__place2dTexture2.mu" "pasted__file2.mu";
connectAttr "pasted__place2dTexture2.mv" "pasted__file2.mv";
connectAttr "pasted__place2dTexture2.s" "pasted__file2.s";
connectAttr "pasted__place2dTexture2.wu" "pasted__file2.wu";
connectAttr "pasted__place2dTexture2.wv" "pasted__file2.wv";
connectAttr "pasted__place2dTexture2.re" "pasted__file2.re";
connectAttr "pasted__place2dTexture2.of" "pasted__file2.of";
connectAttr "pasted__place2dTexture2.r" "pasted__file2.ro";
connectAttr "pasted__place2dTexture2.n" "pasted__file2.n";
connectAttr "pasted__place2dTexture2.vt1" "pasted__file2.vt1";
connectAttr "pasted__place2dTexture2.vt2" "pasted__file2.vt2";
connectAttr "pasted__place2dTexture2.vt3" "pasted__file2.vt3";
connectAttr "pasted__place2dTexture2.vc1" "pasted__file2.vc1";
connectAttr "pasted__place2dTexture2.o" "pasted__file2.uv";
connectAttr "pasted__place2dTexture2.ofs" "pasted__file2.fs";
connectAttr "pasted__aiStandardSurface2SG.msg" "pasted__materialInfo2.sg";
connectAttr "pasted__aiStandardSurface2.msg" "pasted__materialInfo2.m";
connectAttr "pasted__aiStandardSurface2.msg" "pasted__materialInfo2.t" -na;
connectAttr "pasted__aiStandardSurface2.out" "pasted__aiStandardSurface2SG.ss";
connectAttr "plane_midShape.iog" "pasted__aiStandardSurface2SG.dsm" -na;
connectAttr "pasted__file3.oc" "pasted__aiStandardSurface2.base_color";
connectAttr "pasted__file4.oc" "pasted__aiStandardSurface2.opacity";
connectAttr ":defaultColorMgtGlobals.cme" "pasted__file3.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "pasted__file3.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "pasted__file3.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "pasted__file3.ws";
connectAttr "pasted__place2dTexture3.c" "pasted__file3.c";
connectAttr "pasted__place2dTexture3.tf" "pasted__file3.tf";
connectAttr "pasted__place2dTexture3.rf" "pasted__file3.rf";
connectAttr "pasted__place2dTexture3.mu" "pasted__file3.mu";
connectAttr "pasted__place2dTexture3.mv" "pasted__file3.mv";
connectAttr "pasted__place2dTexture3.s" "pasted__file3.s";
connectAttr "pasted__place2dTexture3.wu" "pasted__file3.wu";
connectAttr "pasted__place2dTexture3.wv" "pasted__file3.wv";
connectAttr "pasted__place2dTexture3.re" "pasted__file3.re";
connectAttr "pasted__place2dTexture3.of" "pasted__file3.of";
connectAttr "pasted__place2dTexture3.r" "pasted__file3.ro";
connectAttr "pasted__place2dTexture3.n" "pasted__file3.n";
connectAttr "pasted__place2dTexture3.vt1" "pasted__file3.vt1";
connectAttr "pasted__place2dTexture3.vt2" "pasted__file3.vt2";
connectAttr "pasted__place2dTexture3.vt3" "pasted__file3.vt3";
connectAttr "pasted__place2dTexture3.vc1" "pasted__file3.vc1";
connectAttr "pasted__place2dTexture3.o" "pasted__file3.uv";
connectAttr "pasted__place2dTexture3.ofs" "pasted__file3.fs";
connectAttr ":defaultColorMgtGlobals.cme" "pasted__file4.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "pasted__file4.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "pasted__file4.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "pasted__file4.ws";
connectAttr "pasted__place2dTexture4.c" "pasted__file4.c";
connectAttr "pasted__place2dTexture4.tf" "pasted__file4.tf";
connectAttr "pasted__place2dTexture4.rf" "pasted__file4.rf";
connectAttr "pasted__place2dTexture4.mu" "pasted__file4.mu";
connectAttr "pasted__place2dTexture4.mv" "pasted__file4.mv";
connectAttr "pasted__place2dTexture4.s" "pasted__file4.s";
connectAttr "pasted__place2dTexture4.wu" "pasted__file4.wu";
connectAttr "pasted__place2dTexture4.wv" "pasted__file4.wv";
connectAttr "pasted__place2dTexture4.re" "pasted__file4.re";
connectAttr "pasted__place2dTexture4.of" "pasted__file4.of";
connectAttr "pasted__place2dTexture4.r" "pasted__file4.ro";
connectAttr "pasted__place2dTexture4.n" "pasted__file4.n";
connectAttr "pasted__place2dTexture4.vt1" "pasted__file4.vt1";
connectAttr "pasted__place2dTexture4.vt2" "pasted__file4.vt2";
connectAttr "pasted__place2dTexture4.vt3" "pasted__file4.vt3";
connectAttr "pasted__place2dTexture4.vc1" "pasted__file4.vc1";
connectAttr "pasted__place2dTexture4.o" "pasted__file4.uv";
connectAttr "pasted__place2dTexture4.ofs" "pasted__file4.fs";
connectAttr "pasted__aiStandardSurface3SG.msg" "pasted__materialInfo3.sg";
connectAttr "pasted__aiStandardSurface3.msg" "pasted__materialInfo3.m";
connectAttr "pasted__file5.msg" "pasted__materialInfo3.t" -na;
connectAttr "pasted__aiStandardSurface3.out" "pasted__aiStandardSurface3SG.ss";
connectAttr "plane_BGShape.iog" "pasted__aiStandardSurface3SG.dsm" -na;
connectAttr "pasted__file5.oc" "pasted__aiStandardSurface3.base_color";
connectAttr ":defaultColorMgtGlobals.cme" "pasted__file5.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "pasted__file5.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "pasted__file5.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "pasted__file5.ws";
connectAttr "pasted__place2dTexture5.c" "pasted__file5.c";
connectAttr "pasted__place2dTexture5.tf" "pasted__file5.tf";
connectAttr "pasted__place2dTexture5.rf" "pasted__file5.rf";
connectAttr "pasted__place2dTexture5.mu" "pasted__file5.mu";
connectAttr "pasted__place2dTexture5.mv" "pasted__file5.mv";
connectAttr "pasted__place2dTexture5.s" "pasted__file5.s";
connectAttr "pasted__place2dTexture5.wu" "pasted__file5.wu";
connectAttr "pasted__place2dTexture5.wv" "pasted__file5.wv";
connectAttr "pasted__place2dTexture5.re" "pasted__file5.re";
connectAttr "pasted__place2dTexture5.of" "pasted__file5.of";
connectAttr "pasted__place2dTexture5.r" "pasted__file5.ro";
connectAttr "pasted__place2dTexture5.n" "pasted__file5.n";
connectAttr "pasted__place2dTexture5.vt1" "pasted__file5.vt1";
connectAttr "pasted__place2dTexture5.vt2" "pasted__file5.vt2";
connectAttr "pasted__place2dTexture5.vt3" "pasted__file5.vt3";
connectAttr "pasted__place2dTexture5.vc1" "pasted__file5.vc1";
connectAttr "pasted__place2dTexture5.o" "pasted__file5.uv";
connectAttr "pasted__place2dTexture5.ofs" "pasted__file5.fs";
connectAttr "establishing.msg" "sequencer1.shts" -na;
connectAttr "top1.msg" "sequencer1.shts" -na;
connectAttr "low.msg" "sequencer1.shts" -na;
connectAttr "shot_361.msg" "sequencer1.shts" -na;
connectAttr "final.msg" "sequencer1.shts" -na;
connectAttr "establishing_shotShape.msg" "establishing.ccm";
connectAttr "top_shotShape.msg" "top1.ccm";
connectAttr "low_shotShape.msg" "low.ccm";
connectAttr "shot_360Shape.msg" "shot_361.ccm";
connectAttr "last_shotShape.msg" "final.ccm";
connectAttr "pHelixShape1.o" "polyEdgeToCurve1.ipm";
connectAttr "pHelixShape1.wm" "polyEdgeToCurve1.im";
connectAttr "pHelixShape1.os" "polyEdgeToCurve1.ism";
connectAttr "pHelixShape1.dsm" "polyEdgeToCurve1.dsm";
connectAttr "pHelixShape1.lev" "polyEdgeToCurve1.lev";
connectAttr "pHelixShape1.o" "polyEdgeToCurve2.ipm";
connectAttr "pHelixShape1.wm" "polyEdgeToCurve2.im";
connectAttr "pHelixShape1.os" "polyEdgeToCurve2.ism";
connectAttr "pHelixShape1.dsm" "polyEdgeToCurve2.dsm";
connectAttr "pHelixShape1.lev" "polyEdgeToCurve2.lev";
connectAttr "sequencer1.msg" ":sequenceManager1.seqts" -na;
connectAttr "trackInfoManager1.msg" ":sequenceManager1.tim";
connectAttr "pasted__aiStandardSurface1SG.pa" ":renderPartition.st" -na;
connectAttr "pasted__aiStandardSurface2SG.pa" ":renderPartition.st" -na;
connectAttr "pasted__aiStandardSurface3SG.pa" ":renderPartition.st" -na;
connectAttr "pasted__aiStandardSurface1.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__aiStandardSurface2.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__aiStandardSurface3.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "pasted__place2dTexture2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "pasted__place2dTexture3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "pasted__place2dTexture4.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "pasted__place2dTexture5.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "pasted__file1.msg" ":defaultTextureList1.tx" -na;
connectAttr "pasted__file2.msg" ":defaultTextureList1.tx" -na;
connectAttr "pasted__file3.msg" ":defaultTextureList1.tx" -na;
connectAttr "pasted__file4.msg" ":defaultTextureList1.tx" -na;
connectAttr "pasted__file5.msg" ":defaultTextureList1.tx" -na;
connectAttr "spotlight_dummyShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pHelixShape1.iog" ":initialShadingGroup.dsm" -na;
// End of Performance02_camera.ma
