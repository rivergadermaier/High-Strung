//Maya ASCII 2023 scene
//Name: Scene06_Performance02.ma
//Last modified: Thu, Jun 15, 2023 05:04:04 PM
//Codeset: 1252
file -rdi 1 -ns "stage_fertig" -rfn "stage_fertigRN" -op "v=0;" -typ "mayaAscii"
		 "E:/High-Strung//scenes/stage_fertig.ma";
file -rdi 1 -ns "Geige_Rig" -rfn "Geige_RigRN" -op "v=0;" -typ "mayaAscii" "E:/High-Strung//scenes/Geige_Rig.ma";
file -rdi 1 -ns "Bow_BottomCTRL" -rfn "Bow_BottomCTRLRN" -op "v=0;" -typ "mayaAscii"
		 "E:/High-Strung//scenes/Bow_BottomCTRL.ma";
file -r -ns "stage_fertig" -dr 1 -rfn "stage_fertigRN" -op "v=0;" -typ "mayaAscii"
		 "E:/High-Strung//scenes/stage_fertig.ma";
file -r -ns "Geige_Rig" -dr 1 -rfn "Geige_RigRN" -op "v=0;" -typ "mayaAscii" "E:/High-Strung//scenes/Geige_Rig.ma";
file -r -ns "Bow_BottomCTRL" -dr 1 -rfn "Bow_BottomCTRLRN" -op "v=0;" -typ "mayaAscii"
		 "E:/High-Strung//scenes/Bow_BottomCTRL.ma";
requires maya "2023";
requires -nodeType "timeSliderBookmark" "timeSliderBookmark" "Version 1.0, unsupported - cut 202205052305";
requires "stereoCamera" "10.0";
requires -nodeType "aiOptions" -nodeType "aiAOV" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter"
		 -nodeType "aiAreaLight" -nodeType "aiAmbientOcclusion" -nodeType "aiStandardSurface"
		 -nodeType "aiAtmosphereVolume" -nodeType "cryptomatte" "mtoa" "5.1.2";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2023";
fileInfo "version" "2023";
fileInfo "cutIdentifier" "202205052215-234554116d";
fileInfo "osv" "Windows 11 Home v2009 (Build: 22621)";
fileInfo "UUID" "ACBA2EE7-4E3D-5350-B54C-F8A8B18272CF";
createNode transform -s -n "persp";
	rename -uid "37C5FE8C-4A08-816E-EFA9-E2BCB9C23993";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -67.562387449978118 49.177528897262512 188.04725467654984 ;
	setAttr ".r" -type "double3" -21.600000000000154 -22.000000000000693 8.5758468123606366e-16 ;
	setAttr ".rpt" -type "double3" 3.5223043107672939e-15 -2.9897324802534104e-16 1.0643737403186561e-15 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "F9EF8120-45F2-69B4-2154-96900ED0A24B";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".fl" 34.999999999999979;
	setAttr ".coi" 180.23710459241619;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -1.7662525922247218e-13 2.2013952690862162 44.515714599945454 ;
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
	setAttr ".ow" 333.10766898533177;
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
	setAttr ".ow" 82.503957148261691;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "planes";
	rename -uid "FFE9E34B-4045-7236-EB54-F68FE99E794B";
	setAttr ".v" no;
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
	setAttr ".fl" 34.999999999999993;
	setAttr -l on ".coi" 161.61805477630759;
	setAttr -l on ".ow";
	setAttr ".imn" -type "string" "persp1";
	setAttr ".den" -type "string" "persp1_depth";
	setAttr ".man" -type "string" "persp1_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
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
	setAttr ".fl" 34.999999999999993;
	setAttr -l on ".coi" 35.39033897087068;
	setAttr -l on ".ow";
	setAttr ".imn" -type "string" "persp1";
	setAttr ".den" -type "string" "persp1_depth";
	setAttr ".man" -type "string" "persp1_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -n "low_shot";
	rename -uid "8CA58408-4C6F-1FD5-0A67-3B825F00E31A";
createNode camera -n "low_shotShape" -p "low_shot";
	rename -uid "4135DE77-4868-26E3-5584-DCB5E9748905";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".fl" 34.999999999999993;
	setAttr -l on ".coi" 15.489222612155167;
	setAttr -l on ".ow";
	setAttr ".imn" -type "string" "persp1";
	setAttr ".den" -type "string" "persp1_depth";
	setAttr ".man" -type "string" "persp1_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -n "last_shot";
	rename -uid "14359CEB-49CB-66CB-D530-2490E7FD013A";
	setAttr ".t" -type "double3" -8.6468468769737505 -29.983276540353923 55.801356799663729 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr ".r" -type "double3" 25.851799462949749 -12.716238877229182 0.6414120180096119 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
createNode camera -n "last_shotShape" -p "last_shot";
	rename -uid "DCE91EEA-4484-707A-0E9B-C5987BCEA3CE";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".fl" 34.999999999999993;
	setAttr -l on ".coi" 61.774965130806372;
	setAttr -l on ".ow";
	setAttr ".imn" -type "string" "persp2";
	setAttr ".den" -type "string" "persp2_depth";
	setAttr ".man" -type "string" "persp2_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
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
	setAttr -s 47 ".pt";
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
	setAttr ".s" -type "double3" 20.422784562403049 11.58916004715522 20.422784562403049 ;
createNode nurbsCurve -n "camera_pathShape" -p "camera_path";
	rename -uid "979B3C5D-44B1-1177-A628-5AA1DE44A7E2";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode transform -n "positionMarker1" -p "camera_pathShape";
	rename -uid "7C1C27CE-44F1-2F41-03EE-BAA64E14D4DA";
createNode positionMarker -n "positionMarkerShape1" -p "positionMarker1";
	rename -uid "41A1597D-44AC-6E6B-3CBC-31A5E0726A04";
	setAttr -k off ".v";
	setAttr ".uwo" yes;
	setAttr ".t" 786;
createNode transform -n "positionMarker2" -p "camera_pathShape";
	rename -uid "5B7368E5-4210-1C08-61E5-679B4B894934";
createNode positionMarker -n "positionMarkerShape2" -p "positionMarker2";
	rename -uid "9978F0B7-4720-8135-EAF9-5FBE5249DD19";
	setAttr -k off ".v";
	setAttr ".uwo" yes;
	setAttr ".lp" -type "double3" 1 0 0 ;
	setAttr ".t" 458;
createNode lookAt -n "cameraAim_360";
	rename -uid "15D71206-42CA-5662-E9D7-87A1989572E5";
	setAttr ".smd" 7;
	setAttr ".a" -type "double3" 0 0 -1 ;
	setAttr ".db" 21.796969397848031;
createNode transform -n "camera_360" -p "cameraAim_360";
	rename -uid "6D6C9B3A-4493-7B3C-6D68-B6A751141BAE";
	setAttr ".t" -type "double3" 0.328123934224824 -0.66775412428112491 0.5042987160072484 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
createNode camera -n "camera_Shape360" -p "camera_360";
	rename -uid "BBA748DD-4B0C-0400-DA4E-EC93AA3AD999";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".cap" -type "double2" 1.41732 0.94488 ;
	setAttr ".ff" 0;
	setAttr ".coi" 21.796969397848031;
	setAttr -l on ".ow" 30;
	setAttr ".imn" -type "string" "camera1";
	setAttr ".den" -type "string" "camera1_depth";
	setAttr ".man" -type "string" "camera1_mask";
createNode transform -n "aim_360" -p "cameraAim_360";
	rename -uid "F2E55978-4742-3CF3-2575-4EB0722506D0";
	setAttr ".drp" yes;
createNode locator -n "aim_360Shape" -p "aim_360";
	rename -uid "22C95E57-418C-5234-9FDF-FA8D8167B3E7";
	setAttr -k off ".v" no;
createNode pointConstraint -n "camera1_aim_pointConstraint1" -p "aim_360";
	rename -uid "9EA0A69D-4DCC-2897-D243-A8ACD590754E";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "body_lowW0" -dv 1 -min 0 -at "double";
	addAttr -dcb 0 -ci true -k true -sn "w1" -ln "griffbrett_lowW1" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".rst" -type "double3" 2.8945000082930941 -14.578445213636046 20.564094065956777 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode transform -n "final_planes";
	rename -uid "82E5F3AC-4FB4-BCCB-AF12-0CB695A3A56D";
	setAttr ".rp" -type "double3" 0 0 17.388358848788091 ;
	setAttr ".sp" -type "double3" 0 0 17.388358848788091 ;
createNode transform -n "BG_plane" -p "final_planes";
	rename -uid "E964D12B-44A9-3200-B30B-05A1C2AD143A";
	setAttr ".r" -type "double3" 90.000000000000028 0 0 ;
	setAttr ".s" -type "double3" 100 1 60 ;
	setAttr ".rp" -type "double3" 0 -3.5206068934599486 1.5634635335093122e-15 ;
	setAttr ".rpt" -type "double3" 0 3.5206068934599486 -3.5206068934599504 ;
	setAttr ".sp" -type "double3" 0 -3.5206068934599486 2.6057725558488534e-17 ;
	setAttr ".spt" -type "double3" 0 0 1.5374058079508236e-15 ;
createNode mesh -n "BG_planeShape" -p "BG_plane";
	rename -uid "D3269C14-468E-5C18-5F25-E6B4DBE14201";
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
createNode transform -n "mid_plane_clouds" -p "final_planes";
	rename -uid "45E020B2-46A9-2B4F-9EDA-78A66632A8DB";
	setAttr ".t" -type "double3" 0 0 34.912215582705464 ;
	setAttr ".r" -type "double3" 90.000000000000028 0 0 ;
	setAttr ".s" -type "double3" 100 1 60 ;
	setAttr ".rp" -type "double3" 0 -3.5206068934599486 1.5634635335093122e-15 ;
	setAttr ".rpt" -type "double3" 0 3.5206068934599486 -3.5206068934599504 ;
	setAttr ".sp" -type "double3" 0 -3.5206068934599486 2.6057725558488534e-17 ;
	setAttr ".spt" -type "double3" 0 0 1.5374058079508236e-15 ;
createNode mesh -n "mid_plane_cloudsShape" -p "mid_plane_clouds";
	rename -uid "D82D9CEC-47B7-1D56-8AC2-199D8CB97173";
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
createNode transform -n "front_plane_gold" -p "final_planes";
	rename -uid "E8FFD24B-42BB-39DD-C712-CC931A1629F4";
	setAttr ".t" -type "double3" 0 0 41.817931686833994 ;
	setAttr ".r" -type "double3" 90.000000000000028 0 0 ;
	setAttr ".s" -type "double3" 100 1 60 ;
	setAttr ".rp" -type "double3" 0 -3.5206068934599486 1.5634635335093122e-15 ;
	setAttr ".rpt" -type "double3" 0 3.5206068934599486 -3.5206068934599504 ;
	setAttr ".sp" -type "double3" 0 -3.5206068934599486 2.6057725558488534e-17 ;
	setAttr ".spt" -type "double3" 0 0 1.5374058079508236e-15 ;
createNode mesh -n "front_plane_goldShape" -p "front_plane_gold";
	rename -uid "FA03FA6D-4B6B-D642-803B-208B06E6E6EF";
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
createNode transform -n "ubercam";
	rename -uid "97941602-4E22-F53F-B116-FCBF98AF9359";
	setAttr -av ".cch";
	setAttr -av ".fzn";
	setAttr -av ".nds";
	setAttr -av ".vwm";
	setAttr -av ".tpv";
	setAttr -av ".uit";
	setAttr -av ".io";
	setAttr -av ".tmp";
	setAttr -av ".wfcr";
	setAttr -av ".wfcg";
	setAttr -av ".wfcb";
	setAttr -av ".uoc";
	setAttr -av ".oc";
	setAttr -av ".ovdt";
	setAttr -av ".ovlod";
	setAttr -av ".ovs";
	setAttr -av ".ovt";
	setAttr -av ".ovp";
	setAttr -av ".ove";
	setAttr -av ".ovv";
	setAttr -av ".hpb";
	setAttr -av ".ovrgbf";
	setAttr -av ".ovc";
	setAttr -av ".ovcr";
	setAttr -av ".ovcg";
	setAttr -av ".ovcb";
	setAttr -av ".ovca";
	setAttr -av ".lodv";
	setAttr -av ".sech";
	setAttr -av ".rlid";
	setAttr -av ".rndr";
	setAttr -av ".lovc";
	setAttr -av ".gh";
	setAttr -av ".gm";
	setAttr -av ".gprf";
	setAttr -av ".gpof";
	setAttr -av ".gstp";
	setAttr -av ".gfro";
	setAttr -av ".gnro";
	setAttr -av ".grr";
	setAttr -av ".gpg";
	setAttr -av ".gpb";
	setAttr -av ".gar";
	setAttr -av ".gag";
	setAttr -av ".gab";
	setAttr -av ".ro";
	setAttr -av ".shxy";
	setAttr -av ".shxz";
	setAttr -av ".shyz";
	setAttr -av ".rpx";
	setAttr -av ".rpy";
	setAttr -av ".rpz";
	setAttr -av ".rptx";
	setAttr -av ".rpty";
	setAttr -av ".rptz";
	setAttr -av ".spx";
	setAttr -av ".spy";
	setAttr -av ".spz";
	setAttr -av ".sptx";
	setAttr -av ".spty";
	setAttr -av ".sptz";
	setAttr -av ".rax";
	setAttr -av ".ray";
	setAttr -av ".raz";
	setAttr -av ".mtxl";
	setAttr -av ".mtyl";
	setAttr -av ".mtzl";
	setAttr -av ".xtxl";
	setAttr -av ".xtyl";
	setAttr -av ".xtzl";
	setAttr -av ".mtxe";
	setAttr -av ".mtye";
	setAttr -av ".mtze";
	setAttr -av ".xtxe";
	setAttr -av ".xtye";
	setAttr -av ".xtze";
	setAttr -av ".mrxl";
	setAttr -av ".mryl";
	setAttr -av ".mrzl";
	setAttr -av ".xrxl";
	setAttr -av ".xryl";
	setAttr -av ".xrzl";
	setAttr -av ".mrxe";
	setAttr -av ".mrye";
	setAttr -av ".mrze";
	setAttr -av ".xrxe";
	setAttr -av ".xrye";
	setAttr -av ".xrze";
	setAttr -av ".msxl";
	setAttr -av ".msyl";
	setAttr -av ".mszl";
	setAttr -av ".xsxl";
	setAttr -av ".xsyl";
	setAttr -av ".xszl";
	setAttr -av ".msxe";
	setAttr -av ".msye";
	setAttr -av ".msze";
	setAttr -av ".xsxe";
	setAttr -av ".xsye";
	setAttr -av ".xsze";
	setAttr -av ".hdlx";
	setAttr -av ".hdly";
	setAttr -av ".hdlz";
	setAttr -av ".it";
	setAttr -av ".dh";
	setAttr -av ".dsp";
	setAttr -av ".drp";
	setAttr -av ".dla";
	setAttr -av ".smd";
	setAttr -av ".rqx";
	setAttr -av ".rqy";
	setAttr -av ".rqz";
	setAttr -av ".rqw";
	setAttr -av ".hio";
	setAttr -av ".uocol";
	setAttr -av ".oclrr";
	setAttr -av ".oclrg";
	setAttr -av ".oclrb";
createNode camera -n "ubercamShape" -p "ubercam";
	rename -uid "A575BE54-4C52-FFB4-FDDA-F5829651BF2E";
	setAttr -av ".cch";
	setAttr -av ".fzn";
	setAttr -av ".nds";
	setAttr -av ".vwm";
	setAttr -av ".tpv";
	setAttr -av ".uit";
	setAttr -av -k off ".v";
	setAttr -av ".io";
	setAttr -av ".tmp";
	setAttr -av ".wfcr";
	setAttr -av ".wfcg";
	setAttr -av ".wfcb";
	setAttr -av ".uoc";
	setAttr -av ".oc";
	setAttr -av ".ovdt";
	setAttr -av ".ovlod";
	setAttr -av ".ovs";
	setAttr -av ".ovt";
	setAttr -av ".ovp";
	setAttr -av ".ove";
	setAttr -av ".ovv";
	setAttr -av ".hpb";
	setAttr -av ".ovrgbf";
	setAttr -av ".ovc";
	setAttr -av ".ovcr";
	setAttr -av ".ovcg";
	setAttr -av ".ovcb";
	setAttr -av ".ovca";
	setAttr -av ".lodv";
	setAttr -av ".sech";
	setAttr -av ".rlid";
	setAttr -av ".rndr";
	setAttr -av ".lovc";
	setAttr -av ".gh";
	setAttr -av ".gm";
	setAttr -av ".gprf";
	setAttr -av ".gpof";
	setAttr -av ".gstp";
	setAttr -av ".gfro";
	setAttr -av ".gnro";
	setAttr -av ".grr";
	setAttr -av ".gpg";
	setAttr -av ".gpb";
	setAttr -av ".gar";
	setAttr -av ".gag";
	setAttr -av ".gab";
	setAttr -av ".sos";
	setAttr -av ".soe";
	setAttr -av ".hfo";
	setAttr -av ".vfo";
	setAttr -av ".se";
	setAttr -av ".hs";
	setAttr -av ".vs";
	setAttr -av ".hte";
	setAttr -av ".hit";
	setAttr -av ".psc";
	setAttr -av ".fth";
	setAttr -av ".ftv";
	setAttr -av ".hrp";
	setAttr -av ".vrp";
	setAttr -av ".frv";
	setAttr -av ".fro";
	setAttr -av ".ptsc";
	setAttr -av ".ff";
	setAttr -av ".ffo";
	setAttr -av ".ovr";
	setAttr -av ".pze";
	setAttr -av ".rpz";
	setAttr -av ".hpn";
	setAttr -av ".vpn";
	setAttr -av ".zom";
	setAttr ".fl" 34.999999999999993;
	setAttr -av ".cs";
	setAttr -av ".ncp";
	setAttr -av ".fcp";
	setAttr ".coi" 15.489222612155167;
	setAttr -l on -av ".ow";
	setAttr -av ".tpx";
	setAttr -av ".tpy";
	setAttr -av ".tpz";
	setAttr -av ".asp";
	setAttr -av ".uls";
	setAttr -av ".lls";
	setAttr -av ".dgo";
	setAttr -av ".dgm";
	setAttr -av ".dfg";
	setAttr -av ".dr";
	setAttr -av ".dsa";
	setAttr -av ".dst";
	setAttr -av ".dfc";
	setAttr -av ".dfp";
	setAttr -av ".dfo";
	setAttr -av ".cp";
	setAttr -av ".bfc";
	setAttr -av ".dof";
	setAttr -av ".mb";
	setAttr -av ".jc";
	setAttr -av ".img";
	setAttr -av ".dep";
	setAttr -av ".tdth";
	setAttr -av ".tthd";
	setAttr -av ".dptp";
	setAttr -av ".ma";
	setAttr -av ".dgcr";
	setAttr -av ".dgcg";
	setAttr -av ".dgcb";
	setAttr -av ".colr";
	setAttr -av ".colg";
	setAttr -av ".colb";
	setAttr -av ".frs";
	setAttr -av ".cnc";
	setAttr -av ".cfp";
	setAttr -av ".dcf";
	setAttr -av ".hio";
	setAttr -av ".uocol";
	setAttr -av ".oclrr";
	setAttr -av ".oclrg";
	setAttr -av ".oclrb";
	setAttr -av ".ai_handedness";
	setAttr -av ".ai_near_clip";
	setAttr -av ".ai_far_clip";
	setAttr -av ".ai_shutter_start";
	setAttr -av ".ai_shutter_end";
	setAttr -av ".ai_shutter_type";
	setAttr -av ".ai_rolling_shutter";
	setAttr -av ".ai_rolling_shutter_duration";
	setAttr -av ".ai_motion_start";
	setAttr -av ".ai_motion_end";
	setAttr -av ".ai_exposure";
	setAttr -av ".ai_offset";
	setAttr -av ".ai_grid_size";
	setAttr -av ".ai_u_offset";
	setAttr -av ".ai_v_offset";
	setAttr -av ".ai_u_scale";
	setAttr -av ".ai_v_scale";
	setAttr -av ".ai_extend_edges";
	setAttr -av ".ai_ray_originx";
	setAttr -av ".ai_ray_originy";
	setAttr -av ".ai_ray_originz";
	setAttr -av ".ai_ray_directionx";
	setAttr -av ".ai_ray_directiony";
	setAttr -av ".ai_ray_directionz";
	setAttr -av ".ai_ugs";
	setAttr -av ".ai_projective";
	setAttr -av ".ai_horizontal_fov";
	setAttr -av ".ai_vertical_fov";
	setAttr -av ".ai_mode";
	setAttr -av ".ai_projection";
	setAttr -av ".ai_eye_separation";
	setAttr -av ".ai_eye_to_neck";
	setAttr -av ".ai_top_merge_mode";
	setAttr -av ".ai_top_merge_angle";
	setAttr -av ".ai_bottom_merge_mode";
	setAttr -av ".ai_bottom_merge_angle";
	setAttr -av ".ai_merge_shader";
	setAttr -av ".ai_focus_distance";
	setAttr -av ".ai_aperture_size";
	setAttr -av ".ai_aperture_blades";
	setAttr -av ".ai_aperture_blade_curvature";
	setAttr -av ".ai_aperture_rotation";
	setAttr -av ".ai_aperture_aspect_ratio";
	setAttr -av ".ai_edof";
	setAttr -av ".ai_uv_remapr";
	setAttr -av ".ai_uv_remapg";
	setAttr -av ".ai_uv_remapb";
	setAttr -av ".ai_radial_distortion";
	setAttr -av ".ai_radial_distortion_type";
	setAttr -av ".ai_lens_tilt_anglex";
	setAttr -av ".ai_lens_tilt_angley";
	setAttr -av ".ai_lens_shiftx";
	setAttr -av ".ai_lens_shifty";
	setAttr -av ".motion_blur_override";
	setAttr -av ".ai_fov";
createNode transform -n "lighting";
	rename -uid "AC5A2BF7-4D6D-D72A-CBAF-B7A277629AED";
	setAttr ".rp" -type "double3" 0 20.574875248986846 73.756654489884113 ;
	setAttr ".sp" -type "double3" 0 20.574875248986846 73.756654489884113 ;
createNode transform -n "pasted__Lights" -p "lighting";
	rename -uid "2855784A-457D-4D78-BDF3-8D9B9C3990B0";
createNode transform -n "pasted__aiAreaLight1" -p "pasted__Lights";
	rename -uid "6C587870-4221-989A-351C-57B5299F5E42";
	setAttr ".t" -type "double3" 0 0 83.638076401284081 ;
	setAttr ".s" -type "double3" 60.730507187034554 44.403453358311943 60.730507187034554 ;
createNode aiAreaLight -n "pasted__aiAreaLightShape1" -p "pasted__aiAreaLight1";
	rename -uid "56763763-4C99-5977-7EFD-B2AE639483D8";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr -k off ".v";
	setAttr ".csh" no;
	setAttr ".rcsh" no;
	setAttr ".sc" -type "float3" 0.67559999 0.65609998 0.7604 ;
	setAttr ".ai_exposure" 13;
	setAttr ".ai_volume" 0;
	setAttr ".ai_aov" -type "string" "frontLight";
	setAttr ".ai_translator" -type "string" "quad";
	setAttr ".aal" -type "attributeAlias" {"exposure","aiExposure","normalize","aiNormalize"
		} ;
createNode transform -n "pasted__aiAreaLight2" -p "pasted__Lights";
	rename -uid "E5404569-4AC0-CBEB-1FC9-27ABDC39112F";
	setAttr ".t" -type "double3" 0 0 34.401935052959864 ;
	setAttr ".s" -type "double3" 31.25720966151027 22.853885396368977 31.25720966151027 ;
createNode aiAreaLight -n "pasted__aiAreaLightShape2" -p "pasted__aiAreaLight2";
	rename -uid "17BD3656-4561-D0C5-A283-589B0656A067";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr -k off ".v";
	setAttr ".csh" no;
	setAttr ".rcsh" no;
	setAttr ".sc" -type "float3" 1 0.75 0.75 ;
	setAttr ".ai_exposure" 13;
	setAttr ".ai_volume" 0;
	setAttr ".ai_aov" -type "string" "BG_light";
	setAttr ".ai_translator" -type "string" "quad";
	setAttr ".aal" -type "attributeAlias" {"exposure","aiExposure","normalize","aiNormalize"
		} ;
createNode transform -n "pasted__spotLight1" -p "pasted__Lights";
	rename -uid "D4E6CAB5-4A0A-A69B-5145-AC8CDD7578A9";
	setAttr ".t" -type "double3" 0 38.409881769766535 36.873897921753105 ;
	setAttr ".r" -type "double3" -84.623565374188217 0 0 ;
	setAttr ".s" -type "double3" 15.866335339311734 15.866335339311734 45.354327602213814 ;
createNode spotLight -n "pasted__spotLightShape1" -p "pasted__spotLight1";
	rename -uid "31C72661-4D4A-FBC6-9B6F-15AEC82E8BAB";
	setAttr -k off ".v";
	setAttr ".cl" -type "float3" 1 0.81553566 0.56400001 ;
	setAttr ".sc" -type "float3" 0.31288671 0.20519231 0.3525641 ;
	setAttr ".col" 9.9999997473787516e-06;
	setAttr ".ca" 25.388728970741294;
	setAttr ".pa" -1.7950000000000002;
createNode transform -n "pasted__spotLight2" -p "pasted__Lights";
	rename -uid "FCDD1267-4FDA-7082-FE1D-1988FA188B67";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -44.550811260411194 38.409881769766535 29.263766116791288 ;
	setAttr ".r" -type "double3" -85.577208340132728 -3.0599954608182869 34.612146773176242 ;
	setAttr ".s" -type "double3" 15.866335339311734 15.866335339311734 45.354327602213814 ;
createNode spotLight -n "pasted__spotLightShape2" -p "pasted__spotLight2";
	rename -uid "27295F3D-465F-31B9-559E-68ACA598BE07";
	setAttr -k off ".v";
	setAttr ".cl" -type "float3" 1 0.7448808 0.39700001 ;
	setAttr ".col" 9.9999997473787516e-06;
	setAttr ".ca" 12.000000000000002;
	setAttr ".pa" -0.76923076206674956;
	setAttr ".ai_exposure" 12.5;
createNode transform -n "pasted__spotLight3" -p "pasted__Lights";
	rename -uid "BBFF109A-429F-513E-E09F-8CB4F333412A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 45.170007170874179 38.409881769766535 29.263766116791288 ;
	setAttr ".r" -type "double3" -85.601052928349446 3.094210207391622 -35.056345237192026 ;
	setAttr ".s" -type "double3" 15.866335339311734 15.866335339311734 45.354327602213814 ;
createNode spotLight -n "pasted__spotLightShape3" -p "pasted__spotLight3";
	rename -uid "FD56EDD6-4100-634F-2E56-468B3E798407";
	setAttr -k off ".v";
	setAttr ".cl" -type "float3" 1 0.7448808 0.39700001 ;
	setAttr ".col" 9.9999997473787516e-06;
	setAttr ".ca" 12.000000000000002;
	setAttr ".pa" -0.769;
	setAttr ".ai_exposure" 12.5;
createNode transform -n "spotLight1" -p "pasted__Lights";
	rename -uid "F2A26047-42A3-97A0-664F-74A89496DC5F";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 47.967877495168096 -29.277466981009283 30.431231442047064 ;
	setAttr ".r" -type "double3" 61.489815315288602 71.19096585924872 50.550271616786809 ;
	setAttr ".s" -type "double3" 28.281247484744714 28.281247484744714 28.281247484744714 ;
createNode spotLight -n "spotLightShape1" -p "spotLight1";
	rename -uid "1EC98D6B-4504-2EE1-53D6-A2B56D1E4C79";
	setAttr -k off ".v";
	setAttr ".cl" -type "float3" 1 0.67135596 0.37800002 ;
	setAttr ".ca" 11.543456559435176;
	setAttr ".ai_exposure" 12.5;
createNode transform -n "pasted__spotLight4" -p "pasted__Lights";
	rename -uid "A260A0CD-4A84-98AF-C9B0-AF90B4B3852E";
	setAttr ".t" -type "double3" -21.187543828156464 38.409881769766535 29.263766116791288 ;
	setAttr ".r" -type "double3" -84.784110152517982 -1.3058544295548329 16.049028554185245 ;
	setAttr ".s" -type "double3" 15.866335339311734 15.866335339311734 45.354327602213814 ;
createNode spotLight -n "pasted__spotLightShape4" -p "pasted__spotLight4";
	rename -uid "3FE7B9C4-47BC-D72F-4A3B-E2B5714D8330";
	setAttr -k off ".v";
	setAttr ".cl" -type "float3" 1 0.81553566 0.56400001 ;
	setAttr ".col" 9.9999997473787516e-06;
	setAttr ".ca" 15.004774620354858;
	setAttr ".pa" -1.7948718029910167;
createNode transform -n "pasted__spotLight5" -p "pasted__Lights";
	rename -uid "94E8C39B-4401-FEE2-CAAD-D2AED99766F8";
	setAttr ".t" -type "double3" 21.008426192500693 38.409881769766535 29.263766116791288 ;
	setAttr ".r" -type "double3" -84.820495223565658 1.4437662558223465 -15.533636351442999 ;
	setAttr ".s" -type "double3" 15.866335339311734 15.866335339311734 45.354327602213814 ;
createNode spotLight -n "pasted__spotLightShape5" -p "pasted__spotLight5";
	rename -uid "290261CF-4A18-18FE-54B8-E5A3D5201EC3";
	setAttr -k off ".v";
	setAttr ".cl" -type "float3" 1 0.81553566 0.56400001 ;
	setAttr ".col" 9.9999997473787516e-06;
	setAttr ".ca" 15.004774620354858;
	setAttr ".pa" -1.7950000000000002;
createNode transform -n "aiAreaLight1" -p "pasted__Lights";
	rename -uid "70D8B1A6-4C2F-FABB-705F-98BB220C7B3D";
	setAttr ".t" -type "double3" 10.098172070516611 -18.14819751703515 30.479598748275105 ;
	setAttr ".r" -type "double3" 0 78.440252812853089 0 ;
	setAttr ".s" -type "double3" 15.154145052910003 17.804759126663139 6.517012449974203 ;
createNode aiAreaLight -n "aiAreaLightShape1" -p "aiAreaLight1";
	rename -uid "2F3DFA22-4168-6004-359E-72B05D362A89";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr -k off ".v";
	setAttr ".csh" no;
	setAttr ".rcsh" no;
	setAttr ".sc" -type "float3" 0.47530943 0.28200001 1 ;
	setAttr ".ai_exposure" 10;
	setAttr ".ai_volume" 0;
	setAttr ".ai_aov" -type "string" "basicLight";
	setAttr ".ai_translator" -type "string" "quad";
	setAttr ".aal" -type "attributeAlias" {"exposure","aiExposure","normalize","aiNormalize"
		} ;
createNode transform -n "aiAreaLight2" -p "pasted__Lights";
	rename -uid "DEA42EED-47EC-ECAF-D2C9-2DAB27D8BA2C";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -10.650263412547593 -17.900642896242413 29.296815060275943 ;
	setAttr ".r" -type "double3" -4.7999999999997991 -72.400000000000745 3.9445329777667802e-15 ;
	setAttr ".s" -type "double3" 1.632700005816305 5.8054843693363294 5.8054843693363294 ;
createNode aiAreaLight -n "aiAreaLightShape2" -p "aiAreaLight2";
	rename -uid "49FA0D4F-4655-CF06-58CF-B482F90BE420";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr -k off ".v";
	setAttr ".csh" no;
	setAttr ".rcsh" no;
	setAttr ".sc" -type "float3" 1 0.7899 0.57099998 ;
	setAttr ".ai_exposure" 7;
	setAttr ".ai_volume" 0;
	setAttr ".ai_translator" -type "string" "quad";
	setAttr ".aal" -type "attributeAlias" {"exposure","aiExposure","normalize","aiNormalize"
		} ;
createNode transform -n "pasted__spotLight6" -p "pasted__Lights";
	rename -uid "C70A9252-4FC4-5187-5F5B-0B95A0C54D60";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 45.170007170874179 -27.307568734882246 29.263766116791288 ;
	setAttr ".r" -type "double3" -91.999184915051401 4.9919362819820199 -111.85832649241307 ;
	setAttr ".s" -type "double3" 15.866335339311734 15.866335339311734 45.354327602213814 ;
createNode spotLight -n "pasted__spotLightShape6" -p "pasted__spotLight6";
	rename -uid "7446C9DC-4B3C-CB64-1284-05A846C8300E";
	setAttr -k off ".v";
	setAttr ".cl" -type "float3" 1 0.81553566 0.56400001 ;
	setAttr ".col" 9.9999997473787516e-06;
	setAttr ".ca" 15.004774620354858;
	setAttr ".pa" -0.769;
	setAttr ".ai_exposure" 13.5;
createNode transform -n "spotLight2" -p "pasted__Lights";
	rename -uid "A504183B-44D6-C5CB-C400-2F8FEACD638A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -48.276511688302257 -29.277466981009283 30.431231442047064 ;
	setAttr ".r" -type "double3" 49.684352723091585 -57.695419193655425 -45.281524431126599 ;
	setAttr ".s" -type "double3" 28.281247484744714 28.281247484744714 28.281247484744714 ;
createNode spotLight -n "spotLightShape2" -p "spotLight2";
	rename -uid "A338EB72-40C5-E033-3CB8-BA92653E20B9";
	setAttr -k off ".v";
	setAttr ".cl" -type "float3" 1 0.67135596 0.37800002 ;
	setAttr ".ca" 11.543456559435176;
	setAttr ".ai_exposure" 12.5;
createNode transform -n "pasted__spotLight8" -p "pasted__Lights";
	rename -uid "38F64AC1-4FCF-ADAF-1DC9-E2B151561B4C";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -52.278813267516718 40.090782068198557 29.263766116791288 ;
	setAttr ".r" -type "double3" -85.753879018544694 -3.3009795246681346 37.795641323176753 ;
	setAttr ".s" -type "double3" 15.866335339311734 15.866335339311734 45.354327602213814 ;
createNode spotLight -n "pasted__spotLightShape8" -p "pasted__spotLight8";
	rename -uid "3D6FDFD4-4E17-CE3D-1E40-EFA5A7A25909";
	setAttr -k off ".v";
	setAttr ".cl" -type "float3" 1 0.7448808 0.39700001 ;
	setAttr ".col" 9.9999997473787516e-06;
	setAttr ".ca" 12.000000000000002;
	setAttr ".pa" -0.76923076206674956;
	setAttr ".ai_exposure" 13.5;
createNode transform -n "pasted__spotLight9" -p "pasted__Lights";
	rename -uid "ADE698A2-4D77-7404-9846-4082F616A5E0";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 52.613079073652237 40.090782068198557 29.263766116791288 ;
	setAttr ".r" -type "double3" -276.48461014615958 16.549015291865629 140.33709593672756 ;
	setAttr ".s" -type "double3" 15.866335339311734 15.866335339311734 45.354327602213814 ;
createNode spotLight -n "pasted__spotLightShape9" -p "pasted__spotLight9";
	rename -uid "79449941-48FD-686E-734A-30A371793094";
	setAttr -k off ".v";
	setAttr ".cl" -type "float3" 1 0.7448808 0.39700001 ;
	setAttr ".col" 9.9999997473787516e-06;
	setAttr ".ca" 12.000000000000002;
	setAttr ".pa" -0.76923076206674956;
	setAttr ".ai_exposure" 13.5;
createNode transform -n "pasted__spotLight10" -p "pasted__Lights";
	rename -uid "4A432401-4C69-D82A-61C7-63834D523146";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -52.278813267516718 40.090782068198557 29.263766116791288 ;
	setAttr ".r" -type "double3" -85.75387901854468 -3.3009795246681417 41.887497111642254 ;
	setAttr ".s" -type "double3" 15.866335339311734 15.866335339311734 45.354327602213814 ;
createNode spotLight -n "pasted__spotLightShape10" -p "pasted__spotLight10";
	rename -uid "D782D63A-4C4F-16D6-E666-F08F28B99CBB";
	setAttr -k off ".v";
	setAttr ".cl" -type "float3" 1 0.7448808 0.39700001 ;
	setAttr ".col" 9.9999997473787516e-06;
	setAttr ".ca" 18.466;
	setAttr ".pa" -0.76923076206674956;
	setAttr ".ai_exposure" 14;
createNode transform -n "pasted__spotLight11" -p "pasted__Lights";
	rename -uid "E34434FD-49E1-A5E4-C13F-E8AE02D2481F";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 52.613079073652237 40.090782068198557 29.263766116791288 ;
	setAttr ".r" -type "double3" -276.48461014615953 16.54901529186558 135.62054327962963 ;
	setAttr ".s" -type "double3" 15.866335339311734 15.866335339311734 45.354327602213814 ;
createNode spotLight -n "pasted__spotLightShape11" -p "pasted__spotLight11";
	rename -uid "1B0573A2-485D-8582-BB0E-8091529121B0";
	setAttr -k off ".v";
	setAttr ".cl" -type "float3" 1 0.7448808 0.39700001 ;
	setAttr ".col" 9.9999997473787516e-06;
	setAttr ".ca" 18.466092681274542;
	setAttr ".pa" -0.76923076206674956;
	setAttr ".ai_exposure" 14;
createNode transform -n "aiAreaLight3" -p "pasted__Lights";
	rename -uid "CE7D12DD-48C0-214F-AB54-A4B8B590CE37";
	setAttr ".t" -type "double3" -12.264771828390904 -17.772468268204449 24.137207613410872 ;
	setAttr ".r" -type "double3" 119.06252470911207 -84.940524724858022 -98.984204597695054 ;
	setAttr ".s" -type "double3" 4.8341924852017399 7.6274095681959704 14.34128180994818 ;
createNode aiAreaLight -n "aiAreaLightShape3" -p "aiAreaLight3";
	rename -uid "2630AF8C-46B4-8562-CFE7-CFA6CF377E9B";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr -k off ".v";
	setAttr ".csh" no;
	setAttr ".rcsh" no;
	setAttr ".sc" -type "float3" 1 0.69869661 0.583 ;
	setAttr ".ai_exposure" 9;
	setAttr ".ai_volume" 0;
	setAttr ".ai_aov" -type "string" "basicLight";
	setAttr ".ai_translator" -type "string" "quad";
	setAttr ".aal" -type "attributeAlias" {"exposure","aiExposure","normalize","aiNormalize"
		} ;
createNode fosterParent -n "Bow_BottomCTRLRNfosterParent1";
	rename -uid "73653118-471B-1A5A-54ED-97AD81A8F111";
createNode mesh -n "metall_lowShapeDeformed" -p "Bow_BottomCTRLRNfosterParent1";
	rename -uid "0B89EE8D-4B14-B479-D2F8-29A295EE4A26";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "sehne_lowShapeDeformed" -p "Bow_BottomCTRLRNfosterParent1";
	rename -uid "E60FC6DE-43F4-D132-85A2-9485B6617669";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "griff_lowShapeDeformed" -p "Bow_BottomCTRLRNfosterParent1";
	rename -uid "F03DB1CB-4A1B-038C-980A-F9824C24E510";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "5EB860E2-4BE1-3274-5341-E2B5A6402EF2";
	setAttr -s 53 ".lnk";
	setAttr -s 389 ".ign";
	setAttr -s 22 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "047CBD83-48D3-3704-8B18-DC893C9FBC3A";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "26AC0027-4023-192A-92BC-C398B27725B5";
createNode displayLayerManager -n "layerManager";
	rename -uid "42DB5B8C-480A-5D2D-98CC-419CBDB0A6AE";
createNode displayLayer -n "defaultLayer";
	rename -uid "B34918BE-41F2-0950-DF76-819062BC127E";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "A9BA7A69-4D26-C595-3873-AF9FEC784EF1";
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
		"stage_fertigRN" 196
		2 "|stage_fertig:plane_canvasSize" "visibility" " 0"
		2 "|stage_fertig:curtains" "visibility" " 1"
		2 "|stage_fertig:curtains|stage_fertig:plane_canvasSize1" "visibility" " 1"
		
		2 "stage_fertig:set1" "aiCustomAOVs" " -s 12"
		2 "stage_fertig:set1" "aiCustomAOVs[0].aovName" " -type \"string\" \"N\""
		
		2 "stage_fertig:set1" "aiCustomAOVs[1].aovName" " -type \"string\" \"RGBA\""
		
		2 "stage_fertig:set1" "aiCustomAOVs[2].aovName" " -type \"string\" \"Z\""
		
		2 "stage_fertig:set1" "aiCustomAOVs[3].aovName" " -type \"string\" \"albedo\""
		
		2 "stage_fertig:set1" "aiCustomAOVs[4].aovName" " -type \"string\" \"diffuse\""
		
		2 "stage_fertig:set1" "aiCustomAOVs[5].aovName" " -type \"string\" \"direct\""
		
		2 "stage_fertig:set1" "aiCustomAOVs[6].aovName" " -type \"string\" \"indirect\""
		
		2 "stage_fertig:set1" "aiCustomAOVs[7].aovName" " -type \"string\" \"opacity\""
		
		2 "stage_fertig:set1" "aiCustomAOVs[8].aovName" " -type \"string\" \"specular\""
		
		2 "stage_fertig:set1" "aiCustomAOVs[9].aovName" " -type \"string\" \"crypto_asset\""
		
		2 "stage_fertig:set1" "aiCustomAOVs[10].aovName" " -type \"string\" \"AO\""
		
		2 "stage_fertig:set1" "aiCustomAOVs[11].aovName" " -type \"string\" \"volume\""
		
		2 "stage_fertig:aiStandardSurface1SG" "aiCustomAOVs" " -s 12"
		2 "stage_fertig:aiStandardSurface1SG" "aiCustomAOVs[0].aovName" " -type \"string\" \"N\""
		
		2 "stage_fertig:aiStandardSurface1SG" "aiCustomAOVs[1].aovName" " -type \"string\" \"RGBA\""
		
		2 "stage_fertig:aiStandardSurface1SG" "aiCustomAOVs[2].aovName" " -type \"string\" \"Z\""
		
		2 "stage_fertig:aiStandardSurface1SG" "aiCustomAOVs[3].aovName" " -type \"string\" \"albedo\""
		
		2 "stage_fertig:aiStandardSurface1SG" "aiCustomAOVs[4].aovName" " -type \"string\" \"diffuse\""
		
		2 "stage_fertig:aiStandardSurface1SG" "aiCustomAOVs[5].aovName" " -type \"string\" \"direct\""
		
		2 "stage_fertig:aiStandardSurface1SG" "aiCustomAOVs[6].aovName" " -type \"string\" \"indirect\""
		
		2 "stage_fertig:aiStandardSurface1SG" "aiCustomAOVs[7].aovName" " -type \"string\" \"opacity\""
		
		2 "stage_fertig:aiStandardSurface1SG" "aiCustomAOVs[8].aovName" " -type \"string\" \"specular\""
		
		2 "stage_fertig:aiStandardSurface1SG" "aiCustomAOVs[9].aovName" " -type \"string\" \"crypto_asset\""
		
		2 "stage_fertig:aiStandardSurface1SG" "aiCustomAOVs[10].aovName" " -type \"string\" \"AO\""
		
		2 "stage_fertig:aiStandardSurface1SG" "aiCustomAOVs[11].aovName" " -type \"string\" \"volume\""
		
		2 "stage_fertig:aiStandardSurface2" "specularColor" " -type \"float3\" 0 0 0"
		
		2 "stage_fertig:aiStandardSurface2SG" "aiCustomAOVs" " -s 12"
		2 "stage_fertig:aiStandardSurface2SG" "aiCustomAOVs[0].aovName" " -type \"string\" \"N\""
		
		2 "stage_fertig:aiStandardSurface2SG" "aiCustomAOVs[1].aovName" " -type \"string\" \"RGBA\""
		
		2 "stage_fertig:aiStandardSurface2SG" "aiCustomAOVs[2].aovName" " -type \"string\" \"Z\""
		
		2 "stage_fertig:aiStandardSurface2SG" "aiCustomAOVs[3].aovName" " -type \"string\" \"albedo\""
		
		2 "stage_fertig:aiStandardSurface2SG" "aiCustomAOVs[4].aovName" " -type \"string\" \"diffuse\""
		
		2 "stage_fertig:aiStandardSurface2SG" "aiCustomAOVs[5].aovName" " -type \"string\" \"direct\""
		
		2 "stage_fertig:aiStandardSurface2SG" "aiCustomAOVs[6].aovName" " -type \"string\" \"indirect\""
		
		2 "stage_fertig:aiStandardSurface2SG" "aiCustomAOVs[7].aovName" " -type \"string\" \"opacity\""
		
		2 "stage_fertig:aiStandardSurface2SG" "aiCustomAOVs[8].aovName" " -type \"string\" \"specular\""
		
		2 "stage_fertig:aiStandardSurface2SG" "aiCustomAOVs[9].aovName" " -type \"string\" \"crypto_asset\""
		
		2 "stage_fertig:aiStandardSurface2SG" "aiCustomAOVs[10].aovName" " -type \"string\" \"AO\""
		
		2 "stage_fertig:aiStandardSurface2SG" "aiCustomAOVs[11].aovName" " -type \"string\" \"volume\""
		
		2 "stage_fertig:file11" "viewNameUsed" " 0"
		2 "stage_fertig:file11" "viewNameStr" " -type \"string\" \"<N/A>\""
		2 "stage_fertig:aiStandardSurface3SG" "aiCustomAOVs" " -s 12"
		2 "stage_fertig:aiStandardSurface3SG" "aiCustomAOVs[0].aovName" " -type \"string\" \"N\""
		
		2 "stage_fertig:aiStandardSurface3SG" "aiCustomAOVs[1].aovName" " -type \"string\" \"RGBA\""
		
		2 "stage_fertig:aiStandardSurface3SG" "aiCustomAOVs[2].aovName" " -type \"string\" \"Z\""
		
		2 "stage_fertig:aiStandardSurface3SG" "aiCustomAOVs[3].aovName" " -type \"string\" \"albedo\""
		
		2 "stage_fertig:aiStandardSurface3SG" "aiCustomAOVs[4].aovName" " -type \"string\" \"diffuse\""
		
		2 "stage_fertig:aiStandardSurface3SG" "aiCustomAOVs[5].aovName" " -type \"string\" \"direct\""
		
		2 "stage_fertig:aiStandardSurface3SG" "aiCustomAOVs[6].aovName" " -type \"string\" \"indirect\""
		
		2 "stage_fertig:aiStandardSurface3SG" "aiCustomAOVs[7].aovName" " -type \"string\" \"opacity\""
		
		2 "stage_fertig:aiStandardSurface3SG" "aiCustomAOVs[8].aovName" " -type \"string\" \"specular\""
		
		2 "stage_fertig:aiStandardSurface3SG" "aiCustomAOVs[9].aovName" " -type \"string\" \"crypto_asset\""
		
		2 "stage_fertig:aiStandardSurface3SG" "aiCustomAOVs[10].aovName" " -type \"string\" \"AO\""
		
		2 "stage_fertig:aiStandardSurface3SG" "aiCustomAOVs[11].aovName" " -type \"string\" \"volume\""
		
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
		""
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:plane_canvasSize|stage_fertig:plane_canvasSizeShape.message" "|lighting|pasted__Lights|pasted__aiAreaLight2|pasted__aiAreaLightShape2.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:plane_canvasSize|stage_fertig:plane_canvasSizeShape.message" "|lighting|pasted__Lights|spotLight2|spotLightShape2.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:plane_canvasSize|stage_fertig:plane_canvasSizeShape.message" "|lighting|pasted__Lights|spotLight1|spotLightShape1.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:plane_canvasSize|stage_fertig:plane_canvasSizeShape.message" "|lighting|pasted__Lights|pasted__spotLight8|pasted__spotLightShape8.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:plane_canvasSize|stage_fertig:plane_canvasSizeShape.message" "|lighting|pasted__Lights|pasted__spotLight9|pasted__spotLightShape9.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:plane_canvasSize|stage_fertig:plane_canvasSizeShape.message" "|lighting|pasted__Lights|pasted__spotLight10|pasted__spotLightShape10.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:plane_canvasSize|stage_fertig:plane_canvasSizeShape.message" "|lighting|pasted__Lights|aiAreaLight1|aiAreaLightShape1.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:plane_canvasSize|stage_fertig:plane_canvasSizeShape.message" "|lighting|pasted__Lights|aiAreaLight2|aiAreaLightShape2.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:plane_canvasSize|stage_fertig:plane_canvasSizeShape.message" "|lighting|pasted__Lights|aiAreaLight3|aiAreaLightShape3.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:stage|stage_fertig:stageShape.message" "|lighting|pasted__Lights|pasted__spotLight2|pasted__spotLightShape2.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:stage|stage_fertig:stageShape.message" "|lighting|pasted__Lights|pasted__aiAreaLight2|pasted__aiAreaLightShape2.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:stage|stage_fertig:stageShape.message" "|lighting|pasted__Lights|pasted__spotLight3|pasted__spotLightShape3.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:stage|stage_fertig:stageShape.message" "|lighting|pasted__Lights|pasted__spotLight4|pasted__spotLightShape4.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:stage|stage_fertig:stageShape.message" "|lighting|pasted__Lights|pasted__spotLight5|pasted__spotLightShape5.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:stage|stage_fertig:stageShape.message" "|lighting|pasted__Lights|spotLight2|spotLightShape2.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:stage|stage_fertig:stageShape.message" "|lighting|pasted__Lights|spotLight1|spotLightShape1.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:stage|stage_fertig:stageShape.message" "|lighting|pasted__Lights|pasted__spotLight8|pasted__spotLightShape8.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:stage|stage_fertig:stageShape.message" "|lighting|pasted__Lights|pasted__spotLight9|pasted__spotLightShape9.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:stage|stage_fertig:stageShape.message" "|lighting|pasted__Lights|aiAreaLight1|aiAreaLightShape1.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:stage|stage_fertig:stageShape.message" "|lighting|pasted__Lights|aiAreaLight2|aiAreaLightShape2.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:stage|stage_fertig:stageShape.message" "|lighting|pasted__Lights|aiAreaLight3|aiAreaLightShape3.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:stage|stage_fertig:verziehrung|stage_fertig:verziehrungShape.message" "|lighting|pasted__Lights|pasted__spotLight2|pasted__spotLightShape2.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:stage|stage_fertig:verziehrung|stage_fertig:verziehrungShape.message" "|lighting|pasted__Lights|pasted__aiAreaLight2|pasted__aiAreaLightShape2.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:stage|stage_fertig:verziehrung|stage_fertig:verziehrungShape.message" "|lighting|pasted__Lights|pasted__spotLight3|pasted__spotLightShape3.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:stage|stage_fertig:verziehrung|stage_fertig:verziehrungShape.message" "|lighting|pasted__Lights|pasted__spotLight4|pasted__spotLightShape4.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:stage|stage_fertig:verziehrung|stage_fertig:verziehrungShape.message" "|lighting|pasted__Lights|pasted__spotLight5|pasted__spotLightShape5.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:stage|stage_fertig:verziehrung|stage_fertig:verziehrungShape.message" "|lighting|pasted__Lights|spotLight2|spotLightShape2.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:stage|stage_fertig:verziehrung|stage_fertig:verziehrungShape.message" "|lighting|pasted__Lights|spotLight1|spotLightShape1.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:stage|stage_fertig:verziehrung|stage_fertig:verziehrungShape.message" "|lighting|pasted__Lights|pasted__spotLight8|pasted__spotLightShape8.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:stage|stage_fertig:verziehrung|stage_fertig:verziehrungShape.message" "|lighting|pasted__Lights|pasted__spotLight9|pasted__spotLightShape9.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:stage|stage_fertig:verziehrung|stage_fertig:verziehrungShape.message" "|lighting|pasted__Lights|aiAreaLight1|aiAreaLightShape1.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:stage|stage_fertig:verziehrung|stage_fertig:verziehrungShape.message" "|lighting|pasted__Lights|aiAreaLight2|aiAreaLightShape2.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:stage|stage_fertig:verziehrung|stage_fertig:verziehrungShape.message" "|lighting|pasted__Lights|aiAreaLight3|aiAreaLightShape3.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:stage|stage_fertig:verziehrung|stage_fertig:verziehrung_cubes|stage_fertig:verziehrung_cubesShape.message" "|lighting|pasted__Lights|pasted__spotLight2|pasted__spotLightShape2.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:stage|stage_fertig:verziehrung|stage_fertig:verziehrung_cubes|stage_fertig:verziehrung_cubesShape.message" "|lighting|pasted__Lights|pasted__aiAreaLight2|pasted__aiAreaLightShape2.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:stage|stage_fertig:verziehrung|stage_fertig:verziehrung_cubes|stage_fertig:verziehrung_cubesShape.message" "|lighting|pasted__Lights|pasted__spotLight3|pasted__spotLightShape3.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:stage|stage_fertig:verziehrung|stage_fertig:verziehrung_cubes|stage_fertig:verziehrung_cubesShape.message" "|lighting|pasted__Lights|pasted__spotLight4|pasted__spotLightShape4.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:stage|stage_fertig:verziehrung|stage_fertig:verziehrung_cubes|stage_fertig:verziehrung_cubesShape.message" "|lighting|pasted__Lights|pasted__spotLight5|pasted__spotLightShape5.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:stage|stage_fertig:verziehrung|stage_fertig:verziehrung_cubes|stage_fertig:verziehrung_cubesShape.message" "|lighting|pasted__Lights|spotLight2|spotLightShape2.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:stage|stage_fertig:verziehrung|stage_fertig:verziehrung_cubes|stage_fertig:verziehrung_cubesShape.message" "|lighting|pasted__Lights|spotLight1|spotLightShape1.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:stage|stage_fertig:verziehrung|stage_fertig:verziehrung_cubes|stage_fertig:verziehrung_cubesShape.message" "|lighting|pasted__Lights|pasted__spotLight8|pasted__spotLightShape8.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:stage|stage_fertig:verziehrung|stage_fertig:verziehrung_cubes|stage_fertig:verziehrung_cubesShape.message" "|lighting|pasted__Lights|pasted__spotLight9|pasted__spotLightShape9.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:stage|stage_fertig:verziehrung|stage_fertig:verziehrung_cubes|stage_fertig:verziehrung_cubesShape.message" "|lighting|pasted__Lights|aiAreaLight1|aiAreaLightShape1.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:stage|stage_fertig:verziehrung|stage_fertig:verziehrung_cubes|stage_fertig:verziehrung_cubesShape.message" "|lighting|pasted__Lights|aiAreaLight2|aiAreaLightShape2.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:stage|stage_fertig:verziehrung|stage_fertig:verziehrung_cubes|stage_fertig:verziehrung_cubesShape.message" "|lighting|pasted__Lights|aiAreaLight3|aiAreaLightShape3.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:stage|stage_fertig:pillars|stage_fertig:pillarsShape.message" "|lighting|pasted__Lights|pasted__spotLight2|pasted__spotLightShape2.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:stage|stage_fertig:pillars|stage_fertig:pillarsShape.message" "|lighting|pasted__Lights|pasted__aiAreaLight2|pasted__aiAreaLightShape2.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:stage|stage_fertig:pillars|stage_fertig:pillarsShape.message" "|lighting|pasted__Lights|pasted__spotLight3|pasted__spotLightShape3.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:stage|stage_fertig:pillars|stage_fertig:pillarsShape.message" "|lighting|pasted__Lights|pasted__spotLight4|pasted__spotLightShape4.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:stage|stage_fertig:pillars|stage_fertig:pillarsShape.message" "|lighting|pasted__Lights|pasted__spotLight5|pasted__spotLightShape5.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:stage|stage_fertig:pillars|stage_fertig:pillarsShape.message" "|lighting|pasted__Lights|spotLight2|spotLightShape2.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:stage|stage_fertig:pillars|stage_fertig:pillarsShape.message" "|lighting|pasted__Lights|spotLight1|spotLightShape1.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:stage|stage_fertig:pillars|stage_fertig:pillarsShape.message" "|lighting|pasted__Lights|pasted__spotLight8|pasted__spotLightShape8.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:stage|stage_fertig:pillars|stage_fertig:pillarsShape.message" "|lighting|pasted__Lights|pasted__spotLight9|pasted__spotLightShape9.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:stage|stage_fertig:pillars|stage_fertig:pillarsShape.message" "|lighting|pasted__Lights|aiAreaLight1|aiAreaLightShape1.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:stage|stage_fertig:pillars|stage_fertig:pillarsShape.message" "|lighting|pasted__Lights|aiAreaLight2|aiAreaLightShape2.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:stage|stage_fertig:pillars|stage_fertig:pillarsShape.message" "|lighting|pasted__Lights|aiAreaLight3|aiAreaLightShape3.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:stage|stage_fertig:vorbau|stage_fertig:vorbauShape.message" "|lighting|pasted__Lights|pasted__spotLight2|pasted__spotLightShape2.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:stage|stage_fertig:vorbau|stage_fertig:vorbauShape.message" "|lighting|pasted__Lights|pasted__aiAreaLight2|pasted__aiAreaLightShape2.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:stage|stage_fertig:vorbau|stage_fertig:vorbauShape.message" "|lighting|pasted__Lights|pasted__spotLight3|pasted__spotLightShape3.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:stage|stage_fertig:vorbau|stage_fertig:vorbauShape.message" "|lighting|pasted__Lights|pasted__spotLight4|pasted__spotLightShape4.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:stage|stage_fertig:vorbau|stage_fertig:vorbauShape.message" "|lighting|pasted__Lights|pasted__spotLight5|pasted__spotLightShape5.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:stage|stage_fertig:vorbau|stage_fertig:vorbauShape.message" "|lighting|pasted__Lights|spotLight2|spotLightShape2.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:stage|stage_fertig:vorbau|stage_fertig:vorbauShape.message" "|lighting|pasted__Lights|spotLight1|spotLightShape1.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:stage|stage_fertig:vorbau|stage_fertig:vorbauShape.message" "|lighting|pasted__Lights|pasted__spotLight8|pasted__spotLightShape8.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:stage|stage_fertig:vorbau|stage_fertig:vorbauShape.message" "|lighting|pasted__Lights|pasted__spotLight9|pasted__spotLightShape9.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:stage|stage_fertig:vorbau|stage_fertig:vorbauShape.message" "|lighting|pasted__Lights|aiAreaLight1|aiAreaLightShape1.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:stage|stage_fertig:vorbau|stage_fertig:vorbauShape.message" "|lighting|pasted__Lights|aiAreaLight2|aiAreaLightShape2.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:stage|stage_fertig:vorbau|stage_fertig:vorbauShape.message" "|lighting|pasted__Lights|aiAreaLight3|aiAreaLightShape3.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:stage|stage_fertig:dach|stage_fertig:dachShape.message" "|lighting|pasted__Lights|pasted__aiAreaLight2|pasted__aiAreaLightShape2.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:stage|stage_fertig:dach|stage_fertig:dachShape.message" "|lighting|pasted__Lights|pasted__spotLight1|pasted__spotLightShape1.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:stage|stage_fertig:dach|stage_fertig:dachShape.message" "|lighting|pasted__Lights|pasted__spotLight2|pasted__spotLightShape2.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:stage|stage_fertig:dach|stage_fertig:dachShape.message" "|lighting|pasted__Lights|pasted__spotLight3|pasted__spotLightShape3.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:stage|stage_fertig:dach|stage_fertig:dachShape.message" "|lighting|pasted__Lights|pasted__spotLight4|pasted__spotLightShape4.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:stage|stage_fertig:dach|stage_fertig:dachShape.message" "|lighting|pasted__Lights|pasted__spotLight5|pasted__spotLightShape5.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:stage|stage_fertig:dach|stage_fertig:dachShape.message" "|lighting|pasted__Lights|spotLight2|spotLightShape2.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:stage|stage_fertig:dach|stage_fertig:dachShape.message" "|lighting|pasted__Lights|spotLight1|spotLightShape1.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:stage|stage_fertig:dach|stage_fertig:dachShape.message" "|lighting|pasted__Lights|pasted__spotLight8|pasted__spotLightShape8.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:stage|stage_fertig:dach|stage_fertig:dachShape.message" "|lighting|pasted__Lights|pasted__spotLight9|pasted__spotLightShape9.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:stage|stage_fertig:dach|stage_fertig:dachShape.message" "|lighting|pasted__Lights|pasted__spotLight10|pasted__spotLightShape10.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:stage|stage_fertig:dach|stage_fertig:dachShape.message" "|lighting|pasted__Lights|pasted__spotLight11|pasted__spotLightShape11.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:stage|stage_fertig:dach|stage_fertig:dachShape.message" "|lighting|pasted__Lights|aiAreaLight1|aiAreaLightShape1.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:stage|stage_fertig:dach|stage_fertig:dachShape.message" "|lighting|pasted__Lights|aiAreaLight2|aiAreaLightShape2.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:stage|stage_fertig:dach|stage_fertig:dachShape.message" "|lighting|pasted__Lights|aiAreaLight3|aiAreaLightShape3.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:curtains|stage_fertig:plane_canvasSize1|stage_fertig:plane_canvasSize1Shape.message" "|lighting|pasted__Lights|pasted__aiAreaLight2|pasted__aiAreaLightShape2.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:curtains|stage_fertig:plane_canvasSize1|stage_fertig:plane_canvasSize1Shape.message" "|lighting|pasted__Lights|spotLight2|spotLightShape2.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:curtains|stage_fertig:plane_canvasSize1|stage_fertig:plane_canvasSize1Shape.message" "|lighting|pasted__Lights|spotLight1|spotLightShape1.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:curtains|stage_fertig:plane_canvasSize1|stage_fertig:plane_canvasSize1Shape.message" "|lighting|pasted__Lights|pasted__spotLight8|pasted__spotLightShape8.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:curtains|stage_fertig:plane_canvasSize1|stage_fertig:plane_canvasSize1Shape.message" "|lighting|pasted__Lights|pasted__spotLight9|pasted__spotLightShape9.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:curtains|stage_fertig:plane_canvasSize1|stage_fertig:plane_canvasSize1Shape.message" "|lighting|pasted__Lights|aiAreaLight1|aiAreaLightShape1.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:curtains|stage_fertig:plane_canvasSize1|stage_fertig:plane_canvasSize1Shape.message" "|lighting|pasted__Lights|aiAreaLight2|aiAreaLightShape2.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:curtains|stage_fertig:plane_canvasSize1|stage_fertig:plane_canvasSize1Shape.message" "|lighting|pasted__Lights|aiAreaLight3|aiAreaLightShape3.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:curtains|stage_fertig:plane_canvasSize2|stage_fertig:plane_canvasSize2Shape.message" "|lighting|pasted__Lights|pasted__aiAreaLight2|pasted__aiAreaLightShape2.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:curtains|stage_fertig:plane_canvasSize2|stage_fertig:plane_canvasSize2Shape.message" "|lighting|pasted__Lights|spotLight2|spotLightShape2.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:curtains|stage_fertig:plane_canvasSize2|stage_fertig:plane_canvasSize2Shape.message" "|lighting|pasted__Lights|spotLight1|spotLightShape1.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:curtains|stage_fertig:plane_canvasSize2|stage_fertig:plane_canvasSize2Shape.message" "|lighting|pasted__Lights|pasted__spotLight8|pasted__spotLightShape8.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:curtains|stage_fertig:plane_canvasSize2|stage_fertig:plane_canvasSize2Shape.message" "|lighting|pasted__Lights|pasted__spotLight9|pasted__spotLightShape9.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:curtains|stage_fertig:plane_canvasSize2|stage_fertig:plane_canvasSize2Shape.message" "|lighting|pasted__Lights|aiAreaLight1|aiAreaLightShape1.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:curtains|stage_fertig:plane_canvasSize2|stage_fertig:plane_canvasSize2Shape.message" "|lighting|pasted__Lights|aiAreaLight2|aiAreaLightShape2.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:curtains|stage_fertig:plane_canvasSize2|stage_fertig:plane_canvasSize2Shape.message" "|lighting|pasted__Lights|aiAreaLight3|aiAreaLightShape3.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:curtains|stage_fertig:plane_canvasSize3|stage_fertig:plane_canvasSize3Shape.message" "|lighting|pasted__Lights|pasted__aiAreaLight2|pasted__aiAreaLightShape2.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:curtains|stage_fertig:plane_canvasSize3|stage_fertig:plane_canvasSize3Shape.message" "|lighting|pasted__Lights|spotLight2|spotLightShape2.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:curtains|stage_fertig:plane_canvasSize3|stage_fertig:plane_canvasSize3Shape.message" "|lighting|pasted__Lights|spotLight1|spotLightShape1.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:curtains|stage_fertig:plane_canvasSize3|stage_fertig:plane_canvasSize3Shape.message" "|lighting|pasted__Lights|pasted__spotLight8|pasted__spotLightShape8.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:curtains|stage_fertig:plane_canvasSize3|stage_fertig:plane_canvasSize3Shape.message" "|lighting|pasted__Lights|pasted__spotLight9|pasted__spotLightShape9.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:curtains|stage_fertig:plane_canvasSize3|stage_fertig:plane_canvasSize3Shape.message" "|lighting|pasted__Lights|aiAreaLight1|aiAreaLightShape1.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:curtains|stage_fertig:plane_canvasSize3|stage_fertig:plane_canvasSize3Shape.message" "|lighting|pasted__Lights|aiAreaLight2|aiAreaLightShape2.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:curtains|stage_fertig:plane_canvasSize3|stage_fertig:plane_canvasSize3Shape.message" "|lighting|pasted__Lights|aiAreaLight3|aiAreaLightShape3.message" 
		0;
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "895D829F-49BA-1B03-49C7-9897964CB793";
	addAttr -ci true -sn "ARV_options" -ln "ARV_options" -dt "string";
	setAttr -s 12 ".aovs";
	setAttr ".version" -type "string" "4.2.4";
	setAttr ".ARV_options" -type "string" "Test Resolution=100%;Camera=ubercamShape;Color Management.Gamma=1;Color Management.Exposure=0;Background.BG=BG Color;Background.Color=0 0 0;Background.Image=;Background.Scale=1   1;Background.Offset=0   0;Background.Apply Color Management=1;Foreground.Enable FG=0;Foreground.Image=;Foreground.Scale=1   1;Foreground.Offset=0   0;Foreground.Apply Color Management=1;";
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
	setAttr -s 2 ".st";
createNode reference -n "Geige_RigRN";
	rename -uid "140C44AF-4B09-CD9C-145E-3280188422FA";
	setAttr -s 82 ".phl";
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
	setAttr ".phl[33]" 0;
	setAttr ".phl[34]" 0;
	setAttr ".phl[35]" 0;
	setAttr ".phl[36]" 0;
	setAttr ".phl[37]" 0;
	setAttr ".phl[38]" 0;
	setAttr ".phl[39]" 0;
	setAttr ".phl[40]" 0;
	setAttr ".phl[41]" 0;
	setAttr ".phl[42]" 0;
	setAttr ".phl[43]" 0;
	setAttr ".phl[44]" 0;
	setAttr ".phl[45]" 0;
	setAttr ".phl[46]" 0;
	setAttr ".phl[47]" 0;
	setAttr ".phl[48]" 0;
	setAttr ".phl[49]" 0;
	setAttr ".phl[50]" 0;
	setAttr ".phl[51]" 0;
	setAttr ".phl[52]" 0;
	setAttr ".phl[53]" 0;
	setAttr ".phl[54]" 0;
	setAttr ".phl[55]" 0;
	setAttr ".phl[56]" 0;
	setAttr ".phl[57]" 0;
	setAttr ".phl[58]" 0;
	setAttr ".phl[59]" 0;
	setAttr ".phl[60]" 0;
	setAttr ".phl[61]" 0;
	setAttr ".phl[62]" 0;
	setAttr ".phl[63]" 0;
	setAttr ".phl[64]" 0;
	setAttr ".phl[65]" 0;
	setAttr ".phl[66]" 0;
	setAttr ".phl[67]" 0;
	setAttr ".phl[68]" 0;
	setAttr ".phl[69]" 0;
	setAttr ".phl[70]" 0;
	setAttr ".phl[71]" 0;
	setAttr ".phl[72]" 0;
	setAttr ".phl[73]" 0;
	setAttr ".phl[74]" 0;
	setAttr ".phl[75]" 0;
	setAttr ".phl[76]" 0;
	setAttr ".phl[77]" 0;
	setAttr ".phl[78]" 0;
	setAttr ".phl[79]" 0;
	setAttr ".phl[80]" 0;
	setAttr ".phl[81]" 0;
	setAttr ".phl[82]" 0;
	setAttr ".ed" -type "dataReferenceEdits" 
		"Geige_RigRN"
		"Geige_RigRN" 0
		"Geige_RigRN" 327
		2 "|Geige_Rig:Geige|Geige_Rig:bogen_ctrlMiddle|Geige_Rig:bogen_LP_pivotMiddle|Geige_Rig:griff_low|Geige_Rig:griff_lowShape" 
		"uvPivot" " -type \"double2\" 0.49411535263061523 0.30526250600814819"
		2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:griffbrett_low" 
		"translate" " -type \"double3\" 3.12315837267231045 2.17448248438907665 9.04174171291828976"
		
		2 "Geige_Rig:inside_highSG" "aiCustomAOVs" " -s 12"
		2 "Geige_Rig:inside_highSG" "aiCustomAOVs[0].aovName" " -type \"string\" \"N\""
		
		2 "Geige_Rig:inside_highSG" "aiCustomAOVs[1].aovName" " -type \"string\" \"RGBA\""
		
		2 "Geige_Rig:inside_highSG" "aiCustomAOVs[2].aovName" " -type \"string\" \"Z\""
		
		2 "Geige_Rig:inside_highSG" "aiCustomAOVs[3].aovName" " -type \"string\" \"albedo\""
		
		2 "Geige_Rig:inside_highSG" "aiCustomAOVs[4].aovName" " -type \"string\" \"diffuse\""
		
		2 "Geige_Rig:inside_highSG" "aiCustomAOVs[5].aovName" " -type \"string\" \"direct\""
		
		2 "Geige_Rig:inside_highSG" "aiCustomAOVs[6].aovName" " -type \"string\" \"indirect\""
		
		2 "Geige_Rig:inside_highSG" "aiCustomAOVs[7].aovName" " -type \"string\" \"opacity\""
		
		2 "Geige_Rig:inside_highSG" "aiCustomAOVs[8].aovName" " -type \"string\" \"specular\""
		
		2 "Geige_Rig:inside_highSG" "aiCustomAOVs[9].aovName" " -type \"string\" \"crypto_asset\""
		
		2 "Geige_Rig:inside_highSG" "aiCustomAOVs[10].aovName" " -type \"string\" \"AO\""
		
		2 "Geige_Rig:inside_highSG" "aiCustomAOVs[11].aovName" " -type \"string\" \"volume\""
		
		2 "Geige_Rig:set1" "aiCustomAOVs" " -s 12"
		2 "Geige_Rig:set1" "aiCustomAOVs[0].aovName" " -type \"string\" \"N\""
		2 "Geige_Rig:set1" "aiCustomAOVs[1].aovName" " -type \"string\" \"RGBA\""
		
		2 "Geige_Rig:set1" "aiCustomAOVs[2].aovName" " -type \"string\" \"Z\""
		2 "Geige_Rig:set1" "aiCustomAOVs[3].aovName" " -type \"string\" \"albedo\""
		
		2 "Geige_Rig:set1" "aiCustomAOVs[4].aovName" " -type \"string\" \"diffuse\""
		
		2 "Geige_Rig:set1" "aiCustomAOVs[5].aovName" " -type \"string\" \"direct\""
		
		2 "Geige_Rig:set1" "aiCustomAOVs[6].aovName" " -type \"string\" \"indirect\""
		
		2 "Geige_Rig:set1" "aiCustomAOVs[7].aovName" " -type \"string\" \"opacity\""
		
		2 "Geige_Rig:set1" "aiCustomAOVs[8].aovName" " -type \"string\" \"specular\""
		
		2 "Geige_Rig:set1" "aiCustomAOVs[9].aovName" " -type \"string\" \"crypto_asset\""
		
		2 "Geige_Rig:set1" "aiCustomAOVs[10].aovName" " -type \"string\" \"AO\""
		2 "Geige_Rig:set1" "aiCustomAOVs[11].aovName" " -type \"string\" \"volume\""
		
		2 "Geige_Rig:set2" "aiCustomAOVs" " -s 12"
		2 "Geige_Rig:set2" "aiCustomAOVs[0].aovName" " -type \"string\" \"N\""
		2 "Geige_Rig:set2" "aiCustomAOVs[1].aovName" " -type \"string\" \"RGBA\""
		
		2 "Geige_Rig:set2" "aiCustomAOVs[2].aovName" " -type \"string\" \"Z\""
		2 "Geige_Rig:set2" "aiCustomAOVs[3].aovName" " -type \"string\" \"albedo\""
		
		2 "Geige_Rig:set2" "aiCustomAOVs[4].aovName" " -type \"string\" \"diffuse\""
		
		2 "Geige_Rig:set2" "aiCustomAOVs[5].aovName" " -type \"string\" \"direct\""
		
		2 "Geige_Rig:set2" "aiCustomAOVs[6].aovName" " -type \"string\" \"indirect\""
		
		2 "Geige_Rig:set2" "aiCustomAOVs[7].aovName" " -type \"string\" \"opacity\""
		
		2 "Geige_Rig:set2" "aiCustomAOVs[8].aovName" " -type \"string\" \"specular\""
		
		2 "Geige_Rig:set2" "aiCustomAOVs[9].aovName" " -type \"string\" \"crypto_asset\""
		
		2 "Geige_Rig:set2" "aiCustomAOVs[10].aovName" " -type \"string\" \"AO\""
		2 "Geige_Rig:set2" "aiCustomAOVs[11].aovName" " -type \"string\" \"volume\""
		
		2 "Geige_Rig:set3" "aiCustomAOVs" " -s 12"
		2 "Geige_Rig:set3" "aiCustomAOVs[0].aovName" " -type \"string\" \"N\""
		2 "Geige_Rig:set3" "aiCustomAOVs[1].aovName" " -type \"string\" \"RGBA\""
		
		2 "Geige_Rig:set3" "aiCustomAOVs[2].aovName" " -type \"string\" \"Z\""
		2 "Geige_Rig:set3" "aiCustomAOVs[3].aovName" " -type \"string\" \"albedo\""
		
		2 "Geige_Rig:set3" "aiCustomAOVs[4].aovName" " -type \"string\" \"diffuse\""
		
		2 "Geige_Rig:set3" "aiCustomAOVs[5].aovName" " -type \"string\" \"direct\""
		
		2 "Geige_Rig:set3" "aiCustomAOVs[6].aovName" " -type \"string\" \"indirect\""
		
		2 "Geige_Rig:set3" "aiCustomAOVs[7].aovName" " -type \"string\" \"opacity\""
		
		2 "Geige_Rig:set3" "aiCustomAOVs[8].aovName" " -type \"string\" \"specular\""
		
		2 "Geige_Rig:set3" "aiCustomAOVs[9].aovName" " -type \"string\" \"crypto_asset\""
		
		2 "Geige_Rig:set3" "aiCustomAOVs[10].aovName" " -type \"string\" \"AO\""
		2 "Geige_Rig:set3" "aiCustomAOVs[11].aovName" " -type \"string\" \"volume\""
		
		2 "Geige_Rig:set5" "aiCustomAOVs" " -s 12"
		2 "Geige_Rig:set5" "aiCustomAOVs[0].aovName" " -type \"string\" \"N\""
		2 "Geige_Rig:set5" "aiCustomAOVs[1].aovName" " -type \"string\" \"RGBA\""
		
		2 "Geige_Rig:set5" "aiCustomAOVs[2].aovName" " -type \"string\" \"Z\""
		2 "Geige_Rig:set5" "aiCustomAOVs[3].aovName" " -type \"string\" \"albedo\""
		
		2 "Geige_Rig:set5" "aiCustomAOVs[4].aovName" " -type \"string\" \"diffuse\""
		
		2 "Geige_Rig:set5" "aiCustomAOVs[5].aovName" " -type \"string\" \"direct\""
		
		2 "Geige_Rig:set5" "aiCustomAOVs[6].aovName" " -type \"string\" \"indirect\""
		
		2 "Geige_Rig:set5" "aiCustomAOVs[7].aovName" " -type \"string\" \"opacity\""
		
		2 "Geige_Rig:set5" "aiCustomAOVs[8].aovName" " -type \"string\" \"specular\""
		
		2 "Geige_Rig:set5" "aiCustomAOVs[9].aovName" " -type \"string\" \"crypto_asset\""
		
		2 "Geige_Rig:set5" "aiCustomAOVs[10].aovName" " -type \"string\" \"AO\""
		2 "Geige_Rig:set5" "aiCustomAOVs[11].aovName" " -type \"string\" \"volume\""
		
		2 "Geige_Rig:set6" "aiCustomAOVs" " -s 12"
		2 "Geige_Rig:set6" "aiCustomAOVs[0].aovName" " -type \"string\" \"N\""
		2 "Geige_Rig:set6" "aiCustomAOVs[1].aovName" " -type \"string\" \"RGBA\""
		
		2 "Geige_Rig:set6" "aiCustomAOVs[2].aovName" " -type \"string\" \"Z\""
		2 "Geige_Rig:set6" "aiCustomAOVs[3].aovName" " -type \"string\" \"albedo\""
		
		2 "Geige_Rig:set6" "aiCustomAOVs[4].aovName" " -type \"string\" \"diffuse\""
		
		2 "Geige_Rig:set6" "aiCustomAOVs[5].aovName" " -type \"string\" \"direct\""
		
		2 "Geige_Rig:set6" "aiCustomAOVs[6].aovName" " -type \"string\" \"indirect\""
		
		2 "Geige_Rig:set6" "aiCustomAOVs[7].aovName" " -type \"string\" \"opacity\""
		
		2 "Geige_Rig:set6" "aiCustomAOVs[8].aovName" " -type \"string\" \"specular\""
		
		2 "Geige_Rig:set6" "aiCustomAOVs[9].aovName" " -type \"string\" \"crypto_asset\""
		
		2 "Geige_Rig:set6" "aiCustomAOVs[10].aovName" " -type \"string\" \"AO\""
		2 "Geige_Rig:set6" "aiCustomAOVs[11].aovName" " -type \"string\" \"volume\""
		
		3 "|Geige_Rig:Geige|Geige_Rig:bogen_ctrlMiddle|Geige_Rig:bogen_LP_pivotMiddle|Geige_Rig:metall_low|Geige_Rig:metall_lowShape.instObjGroups" 
		"Geige_Rig:set1.dagSetMembers" "-na"
		3 "|Geige_Rig:Geige|Geige_Rig:bogen_ctrlMiddle|Geige_Rig:bogen_LP_pivotMiddle|Geige_Rig:sehne_low|Geige_Rig:sehne_lowShape.instObjGroups" 
		"Geige_Rig:set1.dagSetMembers" "-na"
		3 "|Geige_Rig:Geige|Geige_Rig:bogen_ctrlMiddle|Geige_Rig:bogen_LP_pivotMiddle|Geige_Rig:griff_low|Geige_Rig:griff_lowShape.instObjGroups" 
		"Geige_Rig:set1.dagSetMembers" "-na"
		3 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:schraube_low|Geige_Rig:schraube_lowShape.instObjGroups" 
		"Geige_Rig:set3.dagSetMembers" "-na"
		3 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:inside_low|Geige_Rig:inside_lowShape.instObjGroups" 
		"Geige_Rig:set3.dagSetMembers" "-na"
		3 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:saitenhalter_low|Geige_Rig:saitenhalter_lowShape.instObjGroups" 
		"Geige_Rig:set3.dagSetMembers" "-na"
		3 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:metallplatte_low|Geige_Rig:metallplatte_lowShape.instObjGroups" 
		"Geige_Rig:set3.dagSetMembers" "-na"
		3 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:kinnstuetze_low|Geige_Rig:kinnstuetze_lowShape.instObjGroups" 
		"Geige_Rig:set3.dagSetMembers" "-na"
		3 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:hals_low|Geige_Rig:hals_lowShape.instObjGroups" 
		"Geige_Rig:set3.dagSetMembers" "-na"
		3 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:wirbel_low|Geige_Rig:wirbel_low_04|Geige_Rig:wirbel_low_04Shape.instObjGroups" 
		"Geige_Rig:set3.dagSetMembers" "-na"
		3 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:wirbel_low|Geige_Rig:wirbel_low_03|Geige_Rig:wirbel_low_03Shape.instObjGroups" 
		"Geige_Rig:set3.dagSetMembers" "-na"
		3 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:wirbel_low|Geige_Rig:wirbel_low_02|Geige_Rig:wirbel_low_02Shape.instObjGroups" 
		"Geige_Rig:set3.dagSetMembers" "-na"
		3 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:wirbel_low|Geige_Rig:wirbel_low_01|Geige_Rig:wirbel_low_01Shape.instObjGroups" 
		"Geige_Rig:set3.dagSetMembers" "-na"
		3 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:griffbrett_low|Geige_Rig:griffbrett_lowShape.instObjGroups" 
		"Geige_Rig:set3.dagSetMembers" "-na"
		3 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:saiten_low|Geige_Rig:saiten_lowShape.instObjGroups" 
		"Geige_Rig:set3.dagSetMembers" "-na"
		3 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:body_low|Geige_Rig:body_lowShape.instObjGroups" 
		"Geige_Rig:set3.dagSetMembers" "-na"
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
		5 4 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:bogen_ctrlMiddle.visibility" 
		"Geige_RigRN.placeHolderList[11]" ""
		5 3 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:bogen_ctrlMiddle|Geige_Rig:bogen_LP_pivotMiddle|Geige_Rig:griff_low|Geige_Rig:griff_lowShape.worldMesh" 
		"Geige_RigRN.placeHolderList[12]" ""
		5 3 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:bogen_ctrlMiddle|Geige_Rig:bogen_LP_pivotMiddle|Geige_Rig:sehne_low|Geige_Rig:sehne_lowShape.worldMesh" 
		"Geige_RigRN.placeHolderList[13]" ""
		5 3 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:bogen_ctrlMiddle|Geige_Rig:bogen_LP_pivotMiddle|Geige_Rig:metall_low|Geige_Rig:metall_lowShape.worldMesh" 
		"Geige_RigRN.placeHolderList[14]" ""
		5 4 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:bogen_ctrlMiddle|Geige_Rig:bogenCTRL_middle.Bend" 
		"Geige_RigRN.placeHolderList[15]" ""
		5 4 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:bogen_ctrlMiddle|Geige_Rig:bogenCTRL_middle.squashNstretch" 
		"Geige_RigRN.placeHolderList[16]" ""
		5 4 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:bogen_ctrlMiddle|Geige_Rig:bogenCTRL_middle.translateX" 
		"Geige_RigRN.placeHolderList[17]" ""
		5 4 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:bogen_ctrlMiddle|Geige_Rig:bogenCTRL_middle.translateY" 
		"Geige_RigRN.placeHolderList[18]" ""
		5 4 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:bogen_ctrlMiddle|Geige_Rig:bogenCTRL_middle.translateZ" 
		"Geige_RigRN.placeHolderList[19]" ""
		5 4 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:bogen_ctrlMiddle|Geige_Rig:bogenCTRL_middle.rotateY" 
		"Geige_RigRN.placeHolderList[20]" ""
		5 4 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:bogen_ctrlMiddle|Geige_Rig:bogenCTRL_middle.rotateX" 
		"Geige_RigRN.placeHolderList[21]" ""
		5 4 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:bogen_ctrlMiddle|Geige_Rig:bogenCTRL_middle.rotateZ" 
		"Geige_RigRN.placeHolderList[22]" ""
		5 4 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:bogen_ctrlMiddle|Geige_Rig:bogenCTRL_middle.scaleX" 
		"Geige_RigRN.placeHolderList[23]" ""
		5 4 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:bogen_ctrlMiddle|Geige_Rig:bogenCTRL_middle.scaleY" 
		"Geige_RigRN.placeHolderList[24]" ""
		5 4 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:bogen_ctrlMiddle|Geige_Rig:bogenCTRL_middle.scaleZ" 
		"Geige_RigRN.placeHolderList[25]" ""
		5 4 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:bogen_ctrlMiddle|Geige_Rig:bogenCTRL_middle.visibility" 
		"Geige_RigRN.placeHolderList[26]" ""
		5 4 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geigeCTRL_bottom.translateX" 
		"Geige_RigRN.placeHolderList[27]" ""
		5 4 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geigeCTRL_bottom.translateY" 
		"Geige_RigRN.placeHolderList[28]" ""
		5 4 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geigeCTRL_bottom.translateZ" 
		"Geige_RigRN.placeHolderList[29]" ""
		5 4 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geigeCTRL_bottom.rotateX" 
		"Geige_RigRN.placeHolderList[30]" ""
		5 4 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geigeCTRL_bottom.rotateY" 
		"Geige_RigRN.placeHolderList[31]" ""
		5 4 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geigeCTRL_bottom.rotateZ" 
		"Geige_RigRN.placeHolderList[32]" ""
		5 4 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geigeCTRL_bottom.scaleX" 
		"Geige_RigRN.placeHolderList[33]" ""
		5 4 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geigeCTRL_bottom.scaleY" 
		"Geige_RigRN.placeHolderList[34]" ""
		5 4 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geigeCTRL_bottom.scaleZ" 
		"Geige_RigRN.placeHolderList[35]" ""
		5 4 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geigeCTRL_bottom.visibility" 
		"Geige_RigRN.placeHolderList[36]" ""
		5 3 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:body_low.parentMatrix" 
		"Geige_RigRN.placeHolderList[37]" ""
		5 3 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:body_low.translate" 
		"Geige_RigRN.placeHolderList[38]" ""
		5 3 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:body_low.rotatePivot" 
		"Geige_RigRN.placeHolderList[39]" ""
		5 3 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:body_low.rotatePivotTranslate" 
		"Geige_RigRN.placeHolderList[40]" ""
		5 3 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:griffbrett_low.translate" 
		"Geige_RigRN.placeHolderList[41]" ""
		5 3 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:griffbrett_low.parentMatrix" 
		"Geige_RigRN.placeHolderList[42]" ""
		5 3 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:griffbrett_low.rotatePivot" 
		"Geige_RigRN.placeHolderList[43]" ""
		5 3 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:griffbrett_low.rotatePivotTranslate" 
		"Geige_RigRN.placeHolderList[44]" ""
		5 0 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:bogen_ctrlMiddle|Geige_Rig:bogen_LP_pivotMiddle|Geige_Rig:metall_low|Geige_Rig:metall_lowShape.instObjGroups" 
		"Geige_Rig:set2.dagSetMembers" "Geige_RigRN.placeHolderList[45]" "Geige_RigRN.placeHolderList[46]" 
		"Geige_Rig:set1.dsm"
		5 0 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:bogen_ctrlMiddle|Geige_Rig:bogen_LP_pivotMiddle|Geige_Rig:sehne_low|Geige_Rig:sehne_lowShape.instObjGroups" 
		"Geige_Rig:set2.dagSetMembers" "Geige_RigRN.placeHolderList[47]" "Geige_RigRN.placeHolderList[48]" 
		"Geige_Rig:set1.dsm"
		5 0 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:bogen_ctrlMiddle|Geige_Rig:bogen_LP_pivotMiddle|Geige_Rig:griff_low|Geige_Rig:griff_lowShape.instObjGroups" 
		"Geige_Rig:set2.dagSetMembers" "Geige_RigRN.placeHolderList[49]" "Geige_RigRN.placeHolderList[50]" 
		"Geige_Rig:set1.dsm"
		5 2 "Geige_RigRN" "Geige_Rig:set2.dagSetMembers" "Geige_RigRN.placeHolderList[51]" 
		"Bow_BottomCTRL:metall_lowSG.dsm"
		5 2 "Geige_RigRN" "Geige_Rig:set2.dagSetMembers" "Geige_RigRN.placeHolderList[52]" 
		"Bow_BottomCTRL:sehne_lowSG.dsm"
		5 2 "Geige_RigRN" "Geige_Rig:set2.dagSetMembers" "Geige_RigRN.placeHolderList[53]" 
		"Bow_BottomCTRL:griff_lowSG.dsm"
		5 4 "Geige_RigRN" "Geige_Rig:set2.dagSetMembers" "Geige_RigRN.placeHolderList[54]" 
		""
		5 4 "Geige_RigRN" "Geige_Rig:set2.dagSetMembers" "Geige_RigRN.placeHolderList[55]" 
		""
		5 4 "Geige_RigRN" "Geige_Rig:set2.dagSetMembers" "Geige_RigRN.placeHolderList[56]" 
		""
		5 0 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:schraube_low|Geige_Rig:schraube_lowShape.instObjGroups" 
		"Geige_Rig:set6.dagSetMembers" "Geige_RigRN.placeHolderList[57]" "Geige_RigRN.placeHolderList[58]" 
		"Geige_Rig:set3.dsm"
		5 0 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:inside_low|Geige_Rig:inside_lowShape.instObjGroups" 
		"Geige_Rig:set6.dagSetMembers" "Geige_RigRN.placeHolderList[59]" "Geige_RigRN.placeHolderList[60]" 
		"Geige_Rig:set3.dsm"
		5 0 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:saitenhalter_low|Geige_Rig:saitenhalter_lowShape.instObjGroups" 
		"Geige_Rig:set6.dagSetMembers" "Geige_RigRN.placeHolderList[61]" "Geige_RigRN.placeHolderList[62]" 
		"Geige_Rig:set3.dsm"
		5 0 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:metallplatte_low|Geige_Rig:metallplatte_lowShape.instObjGroups" 
		"Geige_Rig:set6.dagSetMembers" "Geige_RigRN.placeHolderList[63]" "Geige_RigRN.placeHolderList[64]" 
		"Geige_Rig:set3.dsm"
		5 0 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:kinnstuetze_low|Geige_Rig:kinnstuetze_lowShape.instObjGroups" 
		"Geige_Rig:set6.dagSetMembers" "Geige_RigRN.placeHolderList[65]" "Geige_RigRN.placeHolderList[66]" 
		"Geige_Rig:set3.dsm"
		5 0 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:hals_low|Geige_Rig:hals_lowShape.instObjGroups" 
		"Geige_Rig:set6.dagSetMembers" "Geige_RigRN.placeHolderList[67]" "Geige_RigRN.placeHolderList[68]" 
		"Geige_Rig:set3.dsm"
		5 0 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:wirbel_low|Geige_Rig:wirbel_low_04|Geige_Rig:wirbel_low_04Shape.instObjGroups" 
		"Geige_Rig:set6.dagSetMembers" "Geige_RigRN.placeHolderList[69]" "Geige_RigRN.placeHolderList[70]" 
		"Geige_Rig:set3.dsm"
		5 0 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:wirbel_low|Geige_Rig:wirbel_low_03|Geige_Rig:wirbel_low_03Shape.instObjGroups" 
		"Geige_Rig:set6.dagSetMembers" "Geige_RigRN.placeHolderList[71]" "Geige_RigRN.placeHolderList[72]" 
		"Geige_Rig:set3.dsm"
		5 0 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:wirbel_low|Geige_Rig:wirbel_low_02|Geige_Rig:wirbel_low_02Shape.instObjGroups" 
		"Geige_Rig:set6.dagSetMembers" "Geige_RigRN.placeHolderList[73]" "Geige_RigRN.placeHolderList[74]" 
		"Geige_Rig:set3.dsm"
		5 0 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:wirbel_low|Geige_Rig:wirbel_low_01|Geige_Rig:wirbel_low_01Shape.instObjGroups" 
		"Geige_Rig:set6.dagSetMembers" "Geige_RigRN.placeHolderList[75]" "Geige_RigRN.placeHolderList[76]" 
		"Geige_Rig:set3.dsm"
		5 0 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:griffbrett_low|Geige_Rig:griffbrett_lowShape.instObjGroups" 
		"Geige_Rig:set6.dagSetMembers" "Geige_RigRN.placeHolderList[77]" "Geige_RigRN.placeHolderList[78]" 
		"Geige_Rig:set3.dsm"
		5 0 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:saiten_low|Geige_Rig:saiten_lowShape.instObjGroups" 
		"Geige_Rig:set6.dagSetMembers" "Geige_RigRN.placeHolderList[79]" "Geige_RigRN.placeHolderList[80]" 
		"Geige_Rig:set3.dsm"
		5 0 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:body_low|Geige_Rig:body_lowShape.instObjGroups" 
		"Geige_Rig:set6.dagSetMembers" "Geige_RigRN.placeHolderList[81]" "Geige_RigRN.placeHolderList[82]" 
		"Geige_Rig:set3.dsm"
		7 "link" ":lightLinker1" 2 "|Geige_Rig:substance_objects|Geige_Rig:bogen_low|Geige_Rig:griff_low|Geige_Rig:griff_lowShape.message" "|lighting|pasted__Lights|pasted__spotLight10|pasted__spotLightShape10.message" 
		0
		7 "link" ":lightLinker1" 2 "|Geige_Rig:substance_objects|Geige_Rig:bogen_low|Geige_Rig:sehne_low|Geige_Rig:sehne_lowShape.message" "|lighting|pasted__Lights|pasted__spotLight10|pasted__spotLightShape10.message" 
		0
		7 "link" ":lightLinker1" 2 "|Geige_Rig:substance_objects|Geige_Rig:bogen_low|Geige_Rig:metall_low|Geige_Rig:metall_lowShape.message" "|lighting|pasted__Lights|pasted__spotLight10|pasted__spotLightShape10.message" 
		0
		7 "link" ":lightLinker1" 2 "|Geige_Rig:substance_objects|Geige_Rig:geige_low|Geige_Rig:body_low|Geige_Rig:body_lowShape.message" "|lighting|pasted__Lights|pasted__spotLight10|pasted__spotLightShape10.message" 
		0
		7 "link" ":lightLinker1" 2 "|Geige_Rig:substance_objects|Geige_Rig:geige_low|Geige_Rig:saiten_low|Geige_Rig:saiten_lowShape.message" "|lighting|pasted__Lights|pasted__spotLight10|pasted__spotLightShape10.message" 
		0
		7 "link" ":lightLinker1" 2 "|Geige_Rig:substance_objects|Geige_Rig:geige_low|Geige_Rig:griffbrett_low|Geige_Rig:griffbrett_lowShape.message" "|lighting|pasted__Lights|pasted__spotLight10|pasted__spotLightShape10.message" 
		0
		7 "link" ":lightLinker1" 2 "|Geige_Rig:substance_objects|Geige_Rig:geige_low|Geige_Rig:wirbel_low|Geige_Rig:wirbel_low_01|Geige_Rig:wirbel_low_01Shape.message" "|lighting|pasted__Lights|pasted__spotLight10|pasted__spotLightShape10.message" 
		0
		7 "link" ":lightLinker1" 2 "|Geige_Rig:substance_objects|Geige_Rig:geige_low|Geige_Rig:wirbel_low|Geige_Rig:wirbel_low_02|Geige_Rig:wirbel_low_02Shape.message" "|lighting|pasted__Lights|pasted__spotLight10|pasted__spotLightShape10.message" 
		0
		7 "link" ":lightLinker1" 2 "|Geige_Rig:substance_objects|Geige_Rig:geige_low|Geige_Rig:wirbel_low|Geige_Rig:wirbel_low_03|Geige_Rig:wirbel_low_03Shape.message" "|lighting|pasted__Lights|pasted__spotLight10|pasted__spotLightShape10.message" 
		0
		7 "link" ":lightLinker1" 2 "|Geige_Rig:substance_objects|Geige_Rig:geige_low|Geige_Rig:wirbel_low|Geige_Rig:wirbel_low_04|Geige_Rig:wirbel_low_04Shape.message" "|lighting|pasted__Lights|pasted__spotLight10|pasted__spotLightShape10.message" 
		0
		7 "link" ":lightLinker1" 2 "|Geige_Rig:substance_objects|Geige_Rig:geige_low|Geige_Rig:hals_low|Geige_Rig:hals_lowShape.message" "|lighting|pasted__Lights|pasted__spotLight10|pasted__spotLightShape10.message" 
		0
		7 "link" ":lightLinker1" 2 "|Geige_Rig:substance_objects|Geige_Rig:geige_low|Geige_Rig:kinnstuetze_low|Geige_Rig:kinnstuetze_lowShape.message" "|lighting|pasted__Lights|pasted__spotLight10|pasted__spotLightShape10.message" 
		0
		7 "link" ":lightLinker1" 2 "|Geige_Rig:substance_objects|Geige_Rig:geige_low|Geige_Rig:metallplatte_low|Geige_Rig:metallplatte_lowShape.message" "|lighting|pasted__Lights|pasted__spotLight10|pasted__spotLightShape10.message" 
		0
		7 "link" ":lightLinker1" 2 "|Geige_Rig:substance_objects|Geige_Rig:geige_low|Geige_Rig:saitenhalter_low|Geige_Rig:saitenhalter_lowShape.message" "|lighting|pasted__Lights|pasted__spotLight10|pasted__spotLightShape10.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:substance_objects|Geige_Rig:geige_low|Geige_Rig:inside_low|Geige_Rig:inside_lowShape.message" "|lighting|pasted__Lights|pasted__aiAreaLight2|pasted__aiAreaLightShape2.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:substance_objects|Geige_Rig:geige_low|Geige_Rig:inside_low|Geige_Rig:inside_lowShape.message" "|lighting|pasted__Lights|pasted__spotLight2|pasted__spotLightShape2.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:substance_objects|Geige_Rig:geige_low|Geige_Rig:inside_low|Geige_Rig:inside_lowShape.message" "|lighting|pasted__Lights|pasted__spotLight3|pasted__spotLightShape3.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:substance_objects|Geige_Rig:geige_low|Geige_Rig:inside_low|Geige_Rig:inside_lowShape.message" "|lighting|pasted__Lights|pasted__spotLight8|pasted__spotLightShape8.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:substance_objects|Geige_Rig:geige_low|Geige_Rig:inside_low|Geige_Rig:inside_lowShape.message" "|lighting|pasted__Lights|pasted__spotLight9|pasted__spotLightShape9.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:substance_objects|Geige_Rig:geige_low|Geige_Rig:inside_low|Geige_Rig:inside_lowShape.message" "|lighting|pasted__Lights|aiAreaLight1|aiAreaLightShape1.message" 
		0
		7 "link" ":lightLinker1" 2 "|Geige_Rig:substance_objects|Geige_Rig:geige_low|Geige_Rig:schraube_low|Geige_Rig:schraube_lowShape.message" "|lighting|pasted__Lights|pasted__spotLight10|pasted__spotLightShape10.message" 
		0
		7 "link" ":lightLinker1" 2 "|Geige_Rig:substance_objects|Geige_Rig:geige_high|Geige_Rig:body_high|Geige_Rig:body_highShape.message" "|lighting|pasted__Lights|pasted__spotLight10|pasted__spotLightShape10.message" 
		0
		7 "link" ":lightLinker1" 2 "|Geige_Rig:substance_objects|Geige_Rig:geige_high|Geige_Rig:saiten_high|Geige_Rig:saiten_highShape.message" "|lighting|pasted__Lights|pasted__spotLight10|pasted__spotLightShape10.message" 
		0
		7 "link" ":lightLinker1" 2 "|Geige_Rig:substance_objects|Geige_Rig:geige_high|Geige_Rig:griffbrett_high|Geige_Rig:griffbrett_highShape.message" "|lighting|pasted__Lights|pasted__spotLight10|pasted__spotLightShape10.message" 
		0
		7 "link" ":lightLinker1" 2 "|Geige_Rig:substance_objects|Geige_Rig:geige_high|Geige_Rig:wirbel_high|Geige_Rig:wirbel_high_01|Geige_Rig:wirbel_high_01Shape.message" "|lighting|pasted__Lights|pasted__spotLight10|pasted__spotLightShape10.message" 
		0
		7 "link" ":lightLinker1" 2 "|Geige_Rig:substance_objects|Geige_Rig:geige_high|Geige_Rig:wirbel_high|Geige_Rig:wirbel_high_02|Geige_Rig:wirbel_high_02Shape.message" "|lighting|pasted__Lights|pasted__spotLight10|pasted__spotLightShape10.message" 
		0
		7 "link" ":lightLinker1" 2 "|Geige_Rig:substance_objects|Geige_Rig:geige_high|Geige_Rig:wirbel_high|Geige_Rig:wirbel_high_03|Geige_Rig:wirbel_high_03Shape.message" "|lighting|pasted__Lights|pasted__spotLight10|pasted__spotLightShape10.message" 
		0
		7 "link" ":lightLinker1" 2 "|Geige_Rig:substance_objects|Geige_Rig:geige_high|Geige_Rig:wirbel_high|Geige_Rig:wirbel_high_04|Geige_Rig:wirbel_high_04Shape.message" "|lighting|pasted__Lights|pasted__spotLight10|pasted__spotLightShape10.message" 
		0
		7 "link" ":lightLinker1" 2 "|Geige_Rig:substance_objects|Geige_Rig:geige_high|Geige_Rig:kinnstuetze_high|Geige_Rig:kinnstuetze_highShape.message" "|lighting|pasted__Lights|pasted__spotLight10|pasted__spotLightShape10.message" 
		0
		7 "link" ":lightLinker1" 2 "|Geige_Rig:substance_objects|Geige_Rig:geige_high|Geige_Rig:hals_high|Geige_Rig:hals_highShape.message" "|lighting|pasted__Lights|pasted__spotLight10|pasted__spotLightShape10.message" 
		0
		7 "link" ":lightLinker1" 2 "|Geige_Rig:substance_objects|Geige_Rig:geige_high|Geige_Rig:metallplatte_high|Geige_Rig:metallplatte_highShape.message" "|lighting|pasted__Lights|pasted__spotLight10|pasted__spotLightShape10.message" 
		0
		7 "link" ":lightLinker1" 2 "|Geige_Rig:substance_objects|Geige_Rig:geige_high|Geige_Rig:saitenhalter_high|Geige_Rig:saitenhalter_highShape.message" "|lighting|pasted__Lights|pasted__spotLight10|pasted__spotLightShape10.message" 
		0
		7 "link" ":lightLinker1" 2 "|Geige_Rig:substance_objects|Geige_Rig:geige_high|Geige_Rig:schraube_high|Geige_Rig:schraube_highShape.message" "|lighting|pasted__Lights|pasted__spotLight10|pasted__spotLightShape10.message" 
		0
		7 "link" ":lightLinker1" 2 "|Geige_Rig:substance_objects|Geige_Rig:geige_high|Geige_Rig:inside_high|Geige_Rig:inside_highShape.message" "|lighting|pasted__Lights|pasted__spotLight10|pasted__spotLightShape10.message" 
		0
		7 "link" ":lightLinker1" 2 "|Geige_Rig:substance_objects|Geige_Rig:bogen_high|Geige_Rig:griff_high|Geige_Rig:griff_highShape.message" "|lighting|pasted__Lights|pasted__spotLight10|pasted__spotLightShape10.message" 
		0
		7 "link" ":lightLinker1" 2 "|Geige_Rig:substance_objects|Geige_Rig:bogen_high|Geige_Rig:sehne_high|Geige_Rig:sehne_highShape.message" "|lighting|pasted__Lights|pasted__spotLight10|pasted__spotLightShape10.message" 
		0
		7 "link" ":lightLinker1" 2 "|Geige_Rig:substance_objects|Geige_Rig:bogen_high|Geige_Rig:metall_high|Geige_Rig:metall_highShape.message" "|lighting|pasted__Lights|pasted__spotLight10|pasted__spotLightShape10.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:bogen_ctrlMiddle|Geige_Rig:bogen_LP_pivotMiddle|Geige_Rig:griff_low|Geige_Rig:griff_lowShape.message" "|lighting|pasted__Lights|pasted__aiAreaLight2|pasted__aiAreaLightShape2.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:bogen_ctrlMiddle|Geige_Rig:bogen_LP_pivotMiddle|Geige_Rig:griff_low|Geige_Rig:griff_lowShape.message" "|lighting|pasted__Lights|pasted__spotLight2|pasted__spotLightShape2.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:bogen_ctrlMiddle|Geige_Rig:bogen_LP_pivotMiddle|Geige_Rig:griff_low|Geige_Rig:griff_lowShape.message" "|lighting|pasted__Lights|pasted__spotLight3|pasted__spotLightShape3.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:bogen_ctrlMiddle|Geige_Rig:bogen_LP_pivotMiddle|Geige_Rig:griff_low|Geige_Rig:griff_lowShape.message" "|lighting|pasted__Lights|spotLight2|spotLightShape2.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:bogen_ctrlMiddle|Geige_Rig:bogen_LP_pivotMiddle|Geige_Rig:griff_low|Geige_Rig:griff_lowShape.message" "|lighting|pasted__Lights|spotLight1|spotLightShape1.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:bogen_ctrlMiddle|Geige_Rig:bogen_LP_pivotMiddle|Geige_Rig:griff_low|Geige_Rig:griff_lowShape.message" "|lighting|pasted__Lights|pasted__spotLight8|pasted__spotLightShape8.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:bogen_ctrlMiddle|Geige_Rig:bogen_LP_pivotMiddle|Geige_Rig:griff_low|Geige_Rig:griff_lowShape.message" "|lighting|pasted__Lights|pasted__spotLight9|pasted__spotLightShape9.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:bogen_ctrlMiddle|Geige_Rig:bogen_LP_pivotMiddle|Geige_Rig:griff_low|Geige_Rig:griff_lowShape.message" "|lighting|pasted__Lights|pasted__aiAreaLight1|pasted__aiAreaLightShape1.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:bogen_ctrlMiddle|Geige_Rig:bogen_LP_pivotMiddle|Geige_Rig:sehne_low|Geige_Rig:sehne_lowShape.message" "|lighting|pasted__Lights|pasted__aiAreaLight2|pasted__aiAreaLightShape2.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:bogen_ctrlMiddle|Geige_Rig:bogen_LP_pivotMiddle|Geige_Rig:sehne_low|Geige_Rig:sehne_lowShape.message" "|lighting|pasted__Lights|pasted__spotLight2|pasted__spotLightShape2.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:bogen_ctrlMiddle|Geige_Rig:bogen_LP_pivotMiddle|Geige_Rig:sehne_low|Geige_Rig:sehne_lowShape.message" "|lighting|pasted__Lights|pasted__spotLight3|pasted__spotLightShape3.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:bogen_ctrlMiddle|Geige_Rig:bogen_LP_pivotMiddle|Geige_Rig:sehne_low|Geige_Rig:sehne_lowShape.message" "|lighting|pasted__Lights|spotLight2|spotLightShape2.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:bogen_ctrlMiddle|Geige_Rig:bogen_LP_pivotMiddle|Geige_Rig:sehne_low|Geige_Rig:sehne_lowShape.message" "|lighting|pasted__Lights|spotLight1|spotLightShape1.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:bogen_ctrlMiddle|Geige_Rig:bogen_LP_pivotMiddle|Geige_Rig:sehne_low|Geige_Rig:sehne_lowShape.message" "|lighting|pasted__Lights|pasted__spotLight8|pasted__spotLightShape8.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:bogen_ctrlMiddle|Geige_Rig:bogen_LP_pivotMiddle|Geige_Rig:sehne_low|Geige_Rig:sehne_lowShape.message" "|lighting|pasted__Lights|pasted__spotLight9|pasted__spotLightShape9.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:bogen_ctrlMiddle|Geige_Rig:bogen_LP_pivotMiddle|Geige_Rig:sehne_low|Geige_Rig:sehne_lowShape.message" "|lighting|pasted__Lights|pasted__aiAreaLight1|pasted__aiAreaLightShape1.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:bogen_ctrlMiddle|Geige_Rig:bogen_LP_pivotMiddle|Geige_Rig:metall_low|Geige_Rig:metall_lowShape.message" "|lighting|pasted__Lights|pasted__aiAreaLight2|pasted__aiAreaLightShape2.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:bogen_ctrlMiddle|Geige_Rig:bogen_LP_pivotMiddle|Geige_Rig:metall_low|Geige_Rig:metall_lowShape.message" "|lighting|pasted__Lights|pasted__spotLight2|pasted__spotLightShape2.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:bogen_ctrlMiddle|Geige_Rig:bogen_LP_pivotMiddle|Geige_Rig:metall_low|Geige_Rig:metall_lowShape.message" "|lighting|pasted__Lights|pasted__spotLight3|pasted__spotLightShape3.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:bogen_ctrlMiddle|Geige_Rig:bogen_LP_pivotMiddle|Geige_Rig:metall_low|Geige_Rig:metall_lowShape.message" "|lighting|pasted__Lights|spotLight2|spotLightShape2.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:bogen_ctrlMiddle|Geige_Rig:bogen_LP_pivotMiddle|Geige_Rig:metall_low|Geige_Rig:metall_lowShape.message" "|lighting|pasted__Lights|spotLight1|spotLightShape1.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:bogen_ctrlMiddle|Geige_Rig:bogen_LP_pivotMiddle|Geige_Rig:metall_low|Geige_Rig:metall_lowShape.message" "|lighting|pasted__Lights|pasted__spotLight8|pasted__spotLightShape8.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:bogen_ctrlMiddle|Geige_Rig:bogen_LP_pivotMiddle|Geige_Rig:metall_low|Geige_Rig:metall_lowShape.message" "|lighting|pasted__Lights|pasted__spotLight9|pasted__spotLightShape9.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:bogen_ctrlMiddle|Geige_Rig:bogen_LP_pivotMiddle|Geige_Rig:metall_low|Geige_Rig:metall_lowShape.message" "|lighting|pasted__Lights|pasted__aiAreaLight1|pasted__aiAreaLightShape1.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:body_low|Geige_Rig:body_lowShape.message" "|lighting|pasted__Lights|pasted__aiAreaLight2|pasted__aiAreaLightShape2.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:body_low|Geige_Rig:body_lowShape.message" "|lighting|pasted__Lights|pasted__spotLight2|pasted__spotLightShape2.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:body_low|Geige_Rig:body_lowShape.message" "|lighting|pasted__Lights|pasted__spotLight3|pasted__spotLightShape3.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:body_low|Geige_Rig:body_lowShape.message" "|lighting|pasted__Lights|spotLight2|spotLightShape2.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:body_low|Geige_Rig:body_lowShape.message" "|lighting|pasted__Lights|spotLight1|spotLightShape1.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:body_low|Geige_Rig:body_lowShape.message" "|lighting|pasted__Lights|pasted__spotLight8|pasted__spotLightShape8.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:body_low|Geige_Rig:body_lowShape.message" "|lighting|pasted__Lights|pasted__spotLight9|pasted__spotLightShape9.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:body_low|Geige_Rig:body_lowShape.message" "|lighting|pasted__Lights|pasted__aiAreaLight1|pasted__aiAreaLightShape1.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:saiten_low|Geige_Rig:saiten_lowShape.message" "|lighting|pasted__Lights|pasted__aiAreaLight2|pasted__aiAreaLightShape2.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:saiten_low|Geige_Rig:saiten_lowShape.message" "|lighting|pasted__Lights|pasted__spotLight2|pasted__spotLightShape2.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:saiten_low|Geige_Rig:saiten_lowShape.message" "|lighting|pasted__Lights|pasted__spotLight3|pasted__spotLightShape3.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:saiten_low|Geige_Rig:saiten_lowShape.message" "|lighting|pasted__Lights|spotLight2|spotLightShape2.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:saiten_low|Geige_Rig:saiten_lowShape.message" "|lighting|pasted__Lights|spotLight1|spotLightShape1.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:saiten_low|Geige_Rig:saiten_lowShape.message" "|lighting|pasted__Lights|pasted__spotLight8|pasted__spotLightShape8.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:saiten_low|Geige_Rig:saiten_lowShape.message" "|lighting|pasted__Lights|pasted__spotLight9|pasted__spotLightShape9.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:saiten_low|Geige_Rig:saiten_lowShape.message" "|lighting|pasted__Lights|pasted__aiAreaLight1|pasted__aiAreaLightShape1.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:griffbrett_low|Geige_Rig:griffbrett_lowShape.message" "|lighting|pasted__Lights|pasted__aiAreaLight2|pasted__aiAreaLightShape2.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:griffbrett_low|Geige_Rig:griffbrett_lowShape.message" "|lighting|pasted__Lights|pasted__spotLight2|pasted__spotLightShape2.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:griffbrett_low|Geige_Rig:griffbrett_lowShape.message" "|lighting|pasted__Lights|pasted__spotLight3|pasted__spotLightShape3.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:griffbrett_low|Geige_Rig:griffbrett_lowShape.message" "|lighting|pasted__Lights|spotLight2|spotLightShape2.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:griffbrett_low|Geige_Rig:griffbrett_lowShape.message" "|lighting|pasted__Lights|spotLight1|spotLightShape1.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:griffbrett_low|Geige_Rig:griffbrett_lowShape.message" "|lighting|pasted__Lights|pasted__spotLight8|pasted__spotLightShape8.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:griffbrett_low|Geige_Rig:griffbrett_lowShape.message" "|lighting|pasted__Lights|pasted__spotLight9|pasted__spotLightShape9.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:griffbrett_low|Geige_Rig:griffbrett_lowShape.message" "|lighting|pasted__Lights|pasted__aiAreaLight1|pasted__aiAreaLightShape1.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:wirbel_low|Geige_Rig:wirbel_low_01|Geige_Rig:wirbel_low_01Shape.message" "|lighting|pasted__Lights|pasted__aiAreaLight2|pasted__aiAreaLightShape2.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:wirbel_low|Geige_Rig:wirbel_low_01|Geige_Rig:wirbel_low_01Shape.message" "|lighting|pasted__Lights|pasted__spotLight2|pasted__spotLightShape2.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:wirbel_low|Geige_Rig:wirbel_low_01|Geige_Rig:wirbel_low_01Shape.message" "|lighting|pasted__Lights|pasted__spotLight3|pasted__spotLightShape3.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:wirbel_low|Geige_Rig:wirbel_low_01|Geige_Rig:wirbel_low_01Shape.message" "|lighting|pasted__Lights|spotLight2|spotLightShape2.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:wirbel_low|Geige_Rig:wirbel_low_01|Geige_Rig:wirbel_low_01Shape.message" "|lighting|pasted__Lights|spotLight1|spotLightShape1.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:wirbel_low|Geige_Rig:wirbel_low_01|Geige_Rig:wirbel_low_01Shape.message" "|lighting|pasted__Lights|pasted__spotLight8|pasted__spotLightShape8.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:wirbel_low|Geige_Rig:wirbel_low_01|Geige_Rig:wirbel_low_01Shape.message" "|lighting|pasted__Lights|pasted__spotLight9|pasted__spotLightShape9.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:wirbel_low|Geige_Rig:wirbel_low_01|Geige_Rig:wirbel_low_01Shape.message" "|lighting|pasted__Lights|pasted__aiAreaLight1|pasted__aiAreaLightShape1.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:wirbel_low|Geige_Rig:wirbel_low_02|Geige_Rig:wirbel_low_02Shape.message" "|lighting|pasted__Lights|pasted__aiAreaLight2|pasted__aiAreaLightShape2.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:wirbel_low|Geige_Rig:wirbel_low_02|Geige_Rig:wirbel_low_02Shape.message" "|lighting|pasted__Lights|pasted__spotLight2|pasted__spotLightShape2.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:wirbel_low|Geige_Rig:wirbel_low_02|Geige_Rig:wirbel_low_02Shape.message" "|lighting|pasted__Lights|pasted__spotLight3|pasted__spotLightShape3.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:wirbel_low|Geige_Rig:wirbel_low_02|Geige_Rig:wirbel_low_02Shape.message" "|lighting|pasted__Lights|spotLight2|spotLightShape2.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:wirbel_low|Geige_Rig:wirbel_low_02|Geige_Rig:wirbel_low_02Shape.message" "|lighting|pasted__Lights|spotLight1|spotLightShape1.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:wirbel_low|Geige_Rig:wirbel_low_02|Geige_Rig:wirbel_low_02Shape.message" "|lighting|pasted__Lights|pasted__spotLight8|pasted__spotLightShape8.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:wirbel_low|Geige_Rig:wirbel_low_02|Geige_Rig:wirbel_low_02Shape.message" "|lighting|pasted__Lights|pasted__spotLight9|pasted__spotLightShape9.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:wirbel_low|Geige_Rig:wirbel_low_02|Geige_Rig:wirbel_low_02Shape.message" "|lighting|pasted__Lights|pasted__aiAreaLight1|pasted__aiAreaLightShape1.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:wirbel_low|Geige_Rig:wirbel_low_03|Geige_Rig:wirbel_low_03Shape.message" "|lighting|pasted__Lights|pasted__aiAreaLight2|pasted__aiAreaLightShape2.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:wirbel_low|Geige_Rig:wirbel_low_03|Geige_Rig:wirbel_low_03Shape.message" "|lighting|pasted__Lights|pasted__spotLight2|pasted__spotLightShape2.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:wirbel_low|Geige_Rig:wirbel_low_03|Geige_Rig:wirbel_low_03Shape.message" "|lighting|pasted__Lights|pasted__spotLight3|pasted__spotLightShape3.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:wirbel_low|Geige_Rig:wirbel_low_03|Geige_Rig:wirbel_low_03Shape.message" "|lighting|pasted__Lights|spotLight2|spotLightShape2.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:wirbel_low|Geige_Rig:wirbel_low_03|Geige_Rig:wirbel_low_03Shape.message" "|lighting|pasted__Lights|spotLight1|spotLightShape1.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:wirbel_low|Geige_Rig:wirbel_low_03|Geige_Rig:wirbel_low_03Shape.message" "|lighting|pasted__Lights|pasted__spotLight8|pasted__spotLightShape8.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:wirbel_low|Geige_Rig:wirbel_low_03|Geige_Rig:wirbel_low_03Shape.message" "|lighting|pasted__Lights|pasted__spotLight9|pasted__spotLightShape9.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:wirbel_low|Geige_Rig:wirbel_low_03|Geige_Rig:wirbel_low_03Shape.message" "|lighting|pasted__Lights|pasted__aiAreaLight1|pasted__aiAreaLightShape1.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:wirbel_low|Geige_Rig:wirbel_low_04|Geige_Rig:wirbel_low_04Shape.message" "|lighting|pasted__Lights|pasted__aiAreaLight2|pasted__aiAreaLightShape2.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:wirbel_low|Geige_Rig:wirbel_low_04|Geige_Rig:wirbel_low_04Shape.message" "|lighting|pasted__Lights|pasted__spotLight2|pasted__spotLightShape2.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:wirbel_low|Geige_Rig:wirbel_low_04|Geige_Rig:wirbel_low_04Shape.message" "|lighting|pasted__Lights|pasted__spotLight3|pasted__spotLightShape3.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:wirbel_low|Geige_Rig:wirbel_low_04|Geige_Rig:wirbel_low_04Shape.message" "|lighting|pasted__Lights|spotLight2|spotLightShape2.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:wirbel_low|Geige_Rig:wirbel_low_04|Geige_Rig:wirbel_low_04Shape.message" "|lighting|pasted__Lights|spotLight1|spotLightShape1.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:wirbel_low|Geige_Rig:wirbel_low_04|Geige_Rig:wirbel_low_04Shape.message" "|lighting|pasted__Lights|pasted__spotLight8|pasted__spotLightShape8.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:wirbel_low|Geige_Rig:wirbel_low_04|Geige_Rig:wirbel_low_04Shape.message" "|lighting|pasted__Lights|pasted__spotLight9|pasted__spotLightShape9.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:wirbel_low|Geige_Rig:wirbel_low_04|Geige_Rig:wirbel_low_04Shape.message" "|lighting|pasted__Lights|pasted__aiAreaLight1|pasted__aiAreaLightShape1.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:hals_low|Geige_Rig:hals_lowShape.message" "|lighting|pasted__Lights|pasted__aiAreaLight2|pasted__aiAreaLightShape2.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:hals_low|Geige_Rig:hals_lowShape.message" "|lighting|pasted__Lights|pasted__spotLight2|pasted__spotLightShape2.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:hals_low|Geige_Rig:hals_lowShape.message" "|lighting|pasted__Lights|pasted__spotLight3|pasted__spotLightShape3.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:hals_low|Geige_Rig:hals_lowShape.message" "|lighting|pasted__Lights|spotLight2|spotLightShape2.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:hals_low|Geige_Rig:hals_lowShape.message" "|lighting|pasted__Lights|spotLight1|spotLightShape1.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:hals_low|Geige_Rig:hals_lowShape.message" "|lighting|pasted__Lights|pasted__spotLight8|pasted__spotLightShape8.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:hals_low|Geige_Rig:hals_lowShape.message" "|lighting|pasted__Lights|pasted__spotLight9|pasted__spotLightShape9.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:hals_low|Geige_Rig:hals_lowShape.message" "|lighting|pasted__Lights|pasted__aiAreaLight1|pasted__aiAreaLightShape1.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:kinnstuetze_low|Geige_Rig:kinnstuetze_lowShape.message" "|lighting|pasted__Lights|pasted__aiAreaLight2|pasted__aiAreaLightShape2.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:kinnstuetze_low|Geige_Rig:kinnstuetze_lowShape.message" "|lighting|pasted__Lights|pasted__spotLight2|pasted__spotLightShape2.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:kinnstuetze_low|Geige_Rig:kinnstuetze_lowShape.message" "|lighting|pasted__Lights|pasted__spotLight3|pasted__spotLightShape3.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:kinnstuetze_low|Geige_Rig:kinnstuetze_lowShape.message" "|lighting|pasted__Lights|spotLight2|spotLightShape2.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:kinnstuetze_low|Geige_Rig:kinnstuetze_lowShape.message" "|lighting|pasted__Lights|spotLight1|spotLightShape1.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:kinnstuetze_low|Geige_Rig:kinnstuetze_lowShape.message" "|lighting|pasted__Lights|pasted__spotLight8|pasted__spotLightShape8.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:kinnstuetze_low|Geige_Rig:kinnstuetze_lowShape.message" "|lighting|pasted__Lights|pasted__spotLight9|pasted__spotLightShape9.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:kinnstuetze_low|Geige_Rig:kinnstuetze_lowShape.message" "|lighting|pasted__Lights|pasted__aiAreaLight1|pasted__aiAreaLightShape1.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:metallplatte_low|Geige_Rig:metallplatte_lowShape.message" "|lighting|pasted__Lights|pasted__aiAreaLight2|pasted__aiAreaLightShape2.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:metallplatte_low|Geige_Rig:metallplatte_lowShape.message" "|lighting|pasted__Lights|pasted__spotLight2|pasted__spotLightShape2.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:metallplatte_low|Geige_Rig:metallplatte_lowShape.message" "|lighting|pasted__Lights|pasted__spotLight3|pasted__spotLightShape3.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:metallplatte_low|Geige_Rig:metallplatte_lowShape.message" "|lighting|pasted__Lights|spotLight2|spotLightShape2.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:metallplatte_low|Geige_Rig:metallplatte_lowShape.message" "|lighting|pasted__Lights|spotLight1|spotLightShape1.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:metallplatte_low|Geige_Rig:metallplatte_lowShape.message" "|lighting|pasted__Lights|pasted__spotLight8|pasted__spotLightShape8.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:metallplatte_low|Geige_Rig:metallplatte_lowShape.message" "|lighting|pasted__Lights|pasted__spotLight9|pasted__spotLightShape9.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:metallplatte_low|Geige_Rig:metallplatte_lowShape.message" "|lighting|pasted__Lights|pasted__aiAreaLight1|pasted__aiAreaLightShape1.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:saitenhalter_low|Geige_Rig:saitenhalter_lowShape.message" "|lighting|pasted__Lights|pasted__aiAreaLight2|pasted__aiAreaLightShape2.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:saitenhalter_low|Geige_Rig:saitenhalter_lowShape.message" "|lighting|pasted__Lights|pasted__spotLight2|pasted__spotLightShape2.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:saitenhalter_low|Geige_Rig:saitenhalter_lowShape.message" "|lighting|pasted__Lights|pasted__spotLight3|pasted__spotLightShape3.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:saitenhalter_low|Geige_Rig:saitenhalter_lowShape.message" "|lighting|pasted__Lights|spotLight2|spotLightShape2.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:saitenhalter_low|Geige_Rig:saitenhalter_lowShape.message" "|lighting|pasted__Lights|spotLight1|spotLightShape1.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:saitenhalter_low|Geige_Rig:saitenhalter_lowShape.message" "|lighting|pasted__Lights|pasted__spotLight8|pasted__spotLightShape8.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:saitenhalter_low|Geige_Rig:saitenhalter_lowShape.message" "|lighting|pasted__Lights|pasted__spotLight9|pasted__spotLightShape9.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:saitenhalter_low|Geige_Rig:saitenhalter_lowShape.message" "|lighting|pasted__Lights|pasted__aiAreaLight1|pasted__aiAreaLightShape1.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:inside_low|Geige_Rig:inside_lowShape.message" "|lighting|pasted__Lights|pasted__aiAreaLight2|pasted__aiAreaLightShape2.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:inside_low|Geige_Rig:inside_lowShape.message" "|lighting|pasted__Lights|pasted__spotLight2|pasted__spotLightShape2.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:inside_low|Geige_Rig:inside_lowShape.message" "|lighting|pasted__Lights|pasted__spotLight3|pasted__spotLightShape3.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:inside_low|Geige_Rig:inside_lowShape.message" "|lighting|pasted__Lights|spotLight2|spotLightShape2.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:inside_low|Geige_Rig:inside_lowShape.message" "|lighting|pasted__Lights|spotLight1|spotLightShape1.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:inside_low|Geige_Rig:inside_lowShape.message" "|lighting|pasted__Lights|pasted__spotLight8|pasted__spotLightShape8.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:inside_low|Geige_Rig:inside_lowShape.message" "|lighting|pasted__Lights|pasted__spotLight9|pasted__spotLightShape9.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:inside_low|Geige_Rig:inside_lowShape.message" "|lighting|pasted__Lights|pasted__aiAreaLight1|pasted__aiAreaLightShape1.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:schraube_low|Geige_Rig:schraube_lowShape.message" "|lighting|pasted__Lights|pasted__aiAreaLight2|pasted__aiAreaLightShape2.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:schraube_low|Geige_Rig:schraube_lowShape.message" "|lighting|pasted__Lights|pasted__spotLight2|pasted__spotLightShape2.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:schraube_low|Geige_Rig:schraube_lowShape.message" "|lighting|pasted__Lights|pasted__spotLight3|pasted__spotLightShape3.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:schraube_low|Geige_Rig:schraube_lowShape.message" "|lighting|pasted__Lights|spotLight2|spotLightShape2.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:schraube_low|Geige_Rig:schraube_lowShape.message" "|lighting|pasted__Lights|spotLight1|spotLightShape1.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:schraube_low|Geige_Rig:schraube_lowShape.message" "|lighting|pasted__Lights|pasted__spotLight8|pasted__spotLightShape8.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:schraube_low|Geige_Rig:schraube_lowShape.message" "|lighting|pasted__Lights|pasted__spotLight9|pasted__spotLightShape9.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:schraube_low|Geige_Rig:schraube_lowShape.message" "|lighting|pasted__Lights|pasted__aiAreaLight1|pasted__aiAreaLightShape1.message" 
		0;
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode audio -n "Performance02";
	rename -uid "30A02023-4481-FD1C-51A4-F69DFE67E91D";
	setAttr ".o" 190;
	setAttr ".ef" 1223.8220824829932;
	setAttr ".se" 1033.8220824829932;
	setAttr ".f" -type "string" "D:/FH Hagenberg/Unity_Projects/Semesterprojekt_ViolinAnimation/High-Strung//sound/Performance02.wav";
createNode script -n "uiConfigurationScriptNode";
	rename -uid "8CC0B0B7-46C3-B6D6-9896-B2AC9182976F";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 0\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n"
		+ "            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n"
		+ "            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n"
		+ "            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n"
		+ "            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n"
		+ "            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 0\n            -controlVertices 1\n            -hulls 1\n            -grid 0\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n"
		+ "            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1117\n            -height 726\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n"
		+ "            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n"
		+ "            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -selectCommand \"print 999\" \n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n"
		+ "            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n"
		+ "                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n"
		+ "                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -valueLinesToggle 0\n                -outliner \"graphEditor1OutlineEd\" \n"
		+ "                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n"
		+ "                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n"
		+ "                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n"
		+ "                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n"
		+ "                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n"
		+ "                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n"
		+ "                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"|persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n"
		+ "                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n"
		+ "                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n"
		+ "                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 0\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n"
		+ "                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 0\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1117\\n    -height 726\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 0\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1117\\n    -height 726\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ttimeControl -e -displaySound 1 -sound Performance02 $gPlayBackSlider;\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "65F42BF2-4E10-9FDB-00D0-AF9DDF08536E";
	setAttr ".b" -type "string" "playbackOptions -min -48 -max 1200 -ast -48 -aet 1200 ";
	setAttr ".st" 6;
createNode animCurveTL -n "bogenCTRL_middle_translateX";
	rename -uid "6BA32818-475D-45B4-F51F-15905FA964CA";
	setAttr ".tan" 18;
	setAttr -s 176 ".ktv[0:175]"  159 0 173 -4.6324615857615328 187 -9.0010716129472588
		 203 -9.0010716129472588 218 -8.886273833403548 222 -8.886273833403548 232 -7.4830736450482789
		 236 -7.985680655002275 240 -8.5249936997679541 247 -7.1613023567702854 254 -8.6281585418509987
		 256 -8.2189242757273586 258 -7.5925701663107459 261 -7.041188955449841 269 -8.6756498921871259
		 274 -8.1724243291895444 277 -7.7273466893808935 279 -7.4331477597685298 282 -7.0488588673640287
		 284 -6.8524613822309686 286 -6.7165600221793191 288 -6.6395985481595003 289 -6.7654593864378887
		 290 -6.9894519919137696 291 -7.2646731480005835 292 -7.6730025355377149 293 -8.1005605388421671
		 295 -8.6726858452073152 298 -8.3672029208161369 299 -8.2087252865280149 300 -8.0174489101716429
		 302 -7.6130935312935764 305 -7.0635592056660528 308 -6.5636999654312671 310 -6.2969468998519815
		 312 -6.1066673657433741 314 -6.0014267826366634 315 -6.1384164416496887 316 -6.4054802525752708
		 317 -6.7494878496401114 318 -7.1314697928220223 319 -7.5095482555410209 321 -8.0571297922077996
		 328 -6.6882203610859703 331 -6.9326656679931649 333 -7.2079262723147641 336 -7.7297129739265538
		 337 -7.9243454824794055 338 -8.1265812594125357 340 -8.5481198925011874 343 -9.1409619253277459
		 346 -9.60265162359633 348 -9.7431233759167419 351 -9.5446226809364685 353 -9.2917977095193969
		 354 -9.1353279769969014 358 -8.4145614260266637 360 -8.0724721258831273 361 -7.9206379719711668
		 364 -7.3926954309648281 367 -6.9280626881977634 370 -6.5424588291755956 374 -6.2349659099961645
		 378 -6.9904368596214272 379 -7.2611617524796666 381 -7.8792175427226203 383 -8.4720778506879721
		 385 -8.9945347819712271 388 -9.4364785705592542 394 -8.5059817902273771 400 -7.5699209240273913
		 408 -8.0543319853159279 416 -8.9365262064273825 425 -9.5975710234430789 431 -8.9541326488668371
		 439 -7.3937068924439107 451 -5.6504426733902129 464 -7.5054396858516794 470 -8.5441976912989901
		 476 -9.1582765489030074 488 -7.2353255589793335 502 -9.2619306116126285 515 -6.5372366435607994
		 518 -7.0449816273375454 519 -7.3057828519869732 521 -7.848445261264466 523 -8.3167183256566464
		 526 -8.7313393192904591 528 -8.5038850185268355 529 -8.3069522063927508 530 -8.056186963134472
		 531 -7.7891871270100435 532 -7.5310639686462828 533 -7.2402105812971982 534 -6.9456933840013049
		 535 -6.6813153503386244 536 -6.4567783432633279 538 -6.1629896398542767 551 -9.5953390233759297
		 559 -8.3526366640775258 566 -6.693508715166602 575 -5.3584790390879347 578 -5.9009155810063465
		 580 -6.5438171493909891 582 -7.2831139302568912 585 -8.4028389544705657 586 -8.7417265360974348
		 587 -9.0245527488922477 589 -9.3502386490638454 595 -7.4897887433710544 602 -5.1439410706946278
		 608 -6.8894474246656978 614 -8.6342181530132436 621 -6.5900809558217102 627 -4.9675862173273178
		 665 -10.633301684625314 679 -7.4184578187777221 690 -8.977051101430142 703 -6.8421284358682444
		 725 -10.168497074880863 732 -9.1638304465315894 740 -7.1863932988859904 747 -5.4871461694676293
		 754 -4.524751717506879 761 -5.5062860756873766 769 -7.5343185200182319 776 -9.2397095991141196
		 780 -10.00034167860362 783 -10.257393513803587 786 -9.9987325201298596 789 -9.4620364192981263
		 791 -9.0150505443038966 793 -8.5438478800142583 796 -7.8385721418323016 799 -7.1086677306540613
		 803 -6.2425533620196587 806 -5.7674149627369005 809 -5.5256407226241526 813 -5.9243449110416693
		 815 -6.2660294531233731 819 -7.1541718866297579 821 -7.5905818165364138 822 -7.7871790108783134
		 824 -8.2593094902386888 825 -8.4986631090413987 827 -8.9704262655057079 829 -9.3779763034770429
		 835 -10.140063062882774 839 -9.8483502472894262 843 -9.2891915406270016 846 -8.7739198927738151
		 848 -8.4267806300078032 850 -8.1127816201817389 852 -7.7700378442892637 854 -7.4347559997983641
		 857 -6.9947881946799164 860 -6.6415533832553608 864 -6.3621282029856525 885 -9.5934251448371111
		 897 -7.1980020863198177 911 -9.4890783258334679 918 -8.8748618723323016 924 -8.0687689370874232
		 931 -7.1737107868705277 934 -6.8992727814974089 937 -6.7718774727489368 942 -7.0531628526031644
		 947 -7.6012279891203249 951 -8.1532677550865085 956 -8.8418071036569916 960 -9.4276228812187792
		 964 -9.9640722972303344 973 -10.740630017010689 978 -10.740630017010689 987 -12.942270313988207
		 1005 -6.3223399626291279;
	setAttr -s 176 ".kit[0:175]"  3 28 3 3 3 3 3 3 
		3 3 3 18 18 3 3 18 18 18 18 18 18 3 18 18 18 
		18 18 3 18 18 18 18 18 18 18 18 3 18 18 18 18 18 
		3 3 18 18 18 18 18 18 18 18 3 18 18 18 18 18 18 
		18 18 18 3 18 18 18 18 18 3 18 3 18 18 3 18 18 
		3 18 18 3 3 3 3 18 18 18 18 3 18 18 18 18 18 
		18 18 18 18 3 3 18 18 3 18 18 18 18 18 18 3 18 
		3 18 3 18 3 3 3 3 3 3 18 18 18 3 18 18 18 
		18 3 18 18 18 18 18 18 18 18 3 18 18 18 18 18 18 
		18 18 18 3 18 18 18 18 18 18 18 18 18 3 3 3 3 
		18 18 18 18 3 18 18 18 18 18 18 3 3 3 3;
	setAttr -s 176 ".kot[0:175]"  3 18 3 3 3 3 3 3 
		3 3 3 18 18 3 3 18 18 18 18 18 18 3 18 18 18 
		18 18 3 18 18 18 18 18 18 18 18 3 18 18 18 18 18 
		3 3 18 18 18 18 18 18 18 18 3 18 18 18 18 18 18 
		18 18 18 3 18 18 18 18 18 3 18 3 18 18 3 18 18 
		3 18 18 3 3 3 3 18 18 18 18 3 18 18 18 18 18 
		18 18 18 18 3 3 18 18 3 18 18 18 18 18 18 3 18 
		3 18 3 18 3 3 3 3 3 3 18 18 18 3 18 18 18 
		18 3 18 18 18 18 18 18 18 18 3 18 18 18 18 18 18 
		18 18 18 3 18 18 18 18 18 18 18 18 18 3 3 3 3 
		18 18 18 18 3 18 18 18 18 18 18 3 3 3 3;
createNode animCurveTL -n "bogenCTRL_middle_translateY";
	rename -uid "864A308F-4476-A657-A922-01B985EA13DD";
	setAttr ".tan" 18;
	setAttr -s 176 ".ktv[0:175]"  159 0 173 2.5182107159483764 187 1.7093197427783196
		 203 1.7093197427783196 218 1.3166764983153918 222 1.3166764983153918 232 1.9518723946014251
		 236 1.6868965963706035 240 1.6689686397280799 247 1.6717608095176022 254 1.6669707230329305
		 256 1.6470983526283891 258 1.8576056913987844 261 2.4522722684106011 269 1.3347050784436127
		 274 1.6715480882867884 277 2.0520258581654454 279 2.3690711173426413 282 2.887899577186583
		 284 3.2230297237106722 286 3.4847759908088398 288 3.6161486058471031 289 3.3777438862248665
		 290 2.9464501109050523 291 2.4949057348712786 292 2.0392725407915022 293 1.6975181012571758
		 295 1.3652287317655505 298 1.5433583285633348 299 1.6454598322907494 300 1.777403802010274
		 302 2.1049971261848999 305 2.7134815912094039 308 3.4310431193496065 310 3.8882640927880199
		 312 4.2432337608428226 314 4.4213548765488833 315 4.1673526233489069 316 3.666593941070313
		 317 3.0943665019449424 318 2.5703948013480193 319 2.1635591639643397 321 1.7360089816865967
		 328 2.6050071922675015 331 2.3997633156323044 333 2.1746530591701956 336 1.8279507805732176
		 337 1.7276675456235129 338 1.6474827713023545 340 1.5226745377538335 343 1.4428398185212901
		 346 1.4348194045757483 348 1.436603293088891 351 1.4429709155481558 353 1.457323798137087
		 354 1.4666395454665262 358 1.5766396600959285 360 1.6649748724501006 361 1.7131155829272413
		 364 1.9268289918395265 367 2.1880214456764007 370 2.4449915178216184 374 2.654873934182425
		 378 2.305086372947541 379 2.1739655128373778 381 1.8385159960162547 383 1.4754264434449531
		 385 1.1177025863475343 388 0.79928135705264103 394 1.4463812642054834 400 2.0809270247964222
		 408 1.7504441406392608 416 1.1766526328747857 425 0.76760098812471478 431 1.174874507097567
		 439 2.1568032389020351 451 3.277945701493937 464 2.080761664660125 470 1.4334253888751358
		 476 1.0442156986489157 488 2.2578472684328537 502 0.97879653638222264 515 2.7100460579832455
		 518 2.4737117176878094 519 2.3474921158767512 521 2.0298982613309526 523 1.6666240591225694
		 526 1.2494771959601831 528 1.4784483441460321 529 1.6546605012520779 530 1.8493495529480375
		 531 2.0211633107382303 532 2.1483055390604138 533 2.2684813219038875 534 2.3698445688403296
		 535 2.435387346504442 536 2.4698311760669709 538 2.5444841267110694 551 1.0202570663871666
		 559 1.5640711262205058 566 2.2801853910087484 575 2.8856550274655528 578 2.5127164129896293
		 580 2.1330100314810756 582 1.8295416807069396 585 1.6249704757416659 586 1.6161463261853992
		 587 1.6270538760715736 589 1.6440231270239019 595 1.6625271592354984 602 1.7010939778527989
		 608 1.6710111051480157 614 1.6507247610142697 621 1.677367671301651 627 1.7056253979087002
		 665 1.6311089976215731 679 1.6626800529218981 690 1.6499911040545447 703 2.4247791655559272
		 725 1.6859344439736803 732 1.6896880113494694 740 1.6363590608088689 747 1.3897453075625898
		 754 1.1819826282984687 761 1.38971008125014 769 1.6767864317164671 776 1.7060475383051379
		 780 1.6757390452019336 783 1.6688548974361155 786 1.6339455262185325 789 1.5830427530633711
		 791 1.574121697215995 793 1.6115810283905863 796 1.7556834525759581 799 2.0321131395524881
		 803 2.5406438658940793 806 2.8920816167270793 809 3.0711701515344201 813 2.7676147324448883
		 815 2.51215501048131 819 1.9985077659592618 821 1.8209926034614363 822 1.7587874592236981
		 824 1.6563106899268072 825 1.6270891720432996 827 1.6094530045823843 829 1.639754745838746
		 835 1.7632595725976321 839 1.7043625001818539 843 1.6136456049013757 846 1.5969593249963407
		 848 1.6241323831389851 850 1.6848983450269677 852 1.7872482468592636 854 1.9259000029960633
		 857 2.1780887255039696 860 2.424706507628362 864 2.6222781458866842 885 1.0033591728663913
		 897 2.2034951887232164 911 1.0450667360869683 918 1.3303063861502962 924 1.8064294616094325
		 931 2.5338903776130759 934 2.7921361108239564 937 2.9165510613767975 942 2.6696115192170904
		 947 2.1997735087848649 951 1.7717472775336562 956 1.3167693148804906 960 0.98576479590732613
		 964 0.72393165125385828 973 0.38058153492855029 978 0.38058153492855029 987 3.7072021826408399
		 1005 3.2782565204220795;
	setAttr -s 176 ".kit[0:175]"  3 28 3 3 3 3 3 3 
		3 3 3 18 18 3 3 18 18 18 18 18 18 3 18 18 18 
		18 18 3 18 18 18 18 18 18 18 18 3 18 18 18 18 18 
		3 3 18 18 18 18 18 18 18 18 3 18 18 18 18 18 18 
		18 18 18 3 18 18 18 18 18 3 18 3 18 18 3 18 18 
		3 18 18 3 3 3 3 18 18 18 18 3 18 18 18 18 18 
		18 18 18 18 3 3 18 18 3 18 18 18 18 18 18 3 18 
		3 18 3 18 3 3 3 3 3 3 18 18 18 3 18 18 18 
		18 3 18 18 18 18 18 18 18 18 3 18 18 18 18 18 18 
		18 18 18 3 18 18 18 18 18 18 18 18 18 3 3 3 3 
		18 18 18 18 3 18 18 18 18 18 18 3 3 3 3;
	setAttr -s 176 ".kot[0:175]"  3 18 3 3 3 3 3 3 
		3 3 3 18 18 3 3 18 18 18 18 18 18 3 18 18 18 
		18 18 3 18 18 18 18 18 18 18 18 3 18 18 18 18 18 
		3 3 18 18 18 18 18 18 18 18 3 18 18 18 18 18 18 
		18 18 18 3 18 18 18 18 18 3 18 3 18 18 3 18 18 
		3 18 18 3 3 3 3 18 18 18 18 3 18 18 18 18 18 
		18 18 18 18 3 3 18 18 3 18 18 18 18 18 18 3 18 
		3 18 3 18 3 3 3 3 3 3 18 18 18 3 18 18 18 
		18 3 18 18 18 18 18 18 18 18 3 18 18 18 18 18 18 
		18 18 18 3 18 18 18 18 18 18 18 18 18 3 3 3 3 
		18 18 18 18 3 18 18 18 18 18 18 3 3 3 3;
createNode animCurveTL -n "bogenCTRL_middle_translateZ";
	rename -uid "622E341C-43CE-26BA-E4CD-5B88DFB300D9";
	setAttr ".tan" 18;
	setAttr -s 176 ".ktv[0:175]"  159 0 173 -0.29095557755927531 187 -0.058226350674739788
		 203 -0.058226350674739788 218 0.026777615586962428 222 0.026777615586962428 232 1.065801035233803
		 236 0.69363713548905215 240 0.29429362863748199 247 1.3040620524894166 254 0.21790346856055259
		 256 0.52092793374598001 258 0.9847224757341182 261 1.3930020612074006 269 0.18273769133263199
		 274 0.51714560246257302 277 0.8204691483489891 279 1.0299090635064247 282 1.3232656001306233
		 284 1.4874046039043074 286 1.608118097469343 288 1.6720362479944131 289 1.5623708402771013
		 290 1.363655976329305 291 1.1323300829117127 292 0.84330382974553952 293 0.55943531277823888
		 295 0.18493247027760187 298 0.41113249175612743 299 0.52847994857808844 300 0.67011379121062242
		 302 0.9695256014434418 305 1.3764376293673342 308 1.7465668963392686 310 1.9440887358455332
		 312 2.0849844496994985 314 2.1629116274839664 315 2.0614753070322105 316 1.8637233708547627
		 317 1.6089971009661035 318 1.3261520813161156 319 1.0461974600944921 321 0.6407314079341988
		 328 1.6543636537922646 331 1.4733599732005207 333 1.2695385820905916 336 0.8831727537974855
		 337 0.7390538060598435 338 0.58930488907153245 340 0.2771694463173574 343 -0.16181050919407614
		 346 -0.50367649032183803 348 -0.60769118592334215 351 -0.46070797382554535 353 -0.27349942827811169
		 354 -0.15763875643248848 358 0.37606508195849464 360 0.62937091630016051 361 0.74179909520576481
		 364 1.1327231193654312 367 1.4767683277940149 370 1.7622952565637728 374 1.9899836128328028
		 378 1.430582312834727 379 1.2301194663389625 381 0.77246955577027432 383 0.33347606812184361
		 385 -0.05338604311861217 388 -0.3806308299431071 394 0.30837132006659768 400 1.0014934919903926
		 408 0.64280309158165483 416 -0.010432607799404359 425 -0.49991447361965369 431 -0.022285896056746801
		 439 1.1356056804504631 451 2.4248459154810256 464 1.052839518858345 470 0.28145875434383127
		 476 -0.1746314163934426 488 1.2492503147697034 502 -0.25138382819511002 515 1.7661621126265059
		 518 1.3762345231740416 519 1.1772251029655294 521 0.77329314893133971 523 0.44251022696227871
		 526 0.18025565549790423 528 0.30836601835759303 529 0.42592159905390348 530 0.58771900359382312
		 531 0.77292224843874568 532 0.9624932066096985 533 1.1822162526588271 534 1.4092354994934431
		 535 1.6175207406517964 536 1.7971078668447127 538 2.028049054290848 551 -0.43504336450092679
		 559 0.45414773040690898 566 1.6422458099758648 575 2.6014951432097888 578 2.187635907001594
		 580 1.7009628994558001 582 1.1541476627752254 585 0.33858199195113203 586 0.092247550596761707
		 587 -0.11596923023219052 589 -0.35646682588230277 595 0.92225192459984728 602 2.5319231943503975
		 608 1.334436349418147 614 0.13573977475548479 621 1.5396038919462174 627 2.6526481983203878
		 665 -1.2354493937443869 679 0.97421303525187941 690 -0.09811948260109099 703 1.4809508958086797
		 725 -1.0286876404929519 732 -0.082821617244811296 740 1.7933566958370679 747 3.4216064669688961
		 754 4.3411996719291173 761 3.4524797966706036 769 1.610375500970235 776 0.058570792302688357
		 780 -0.62771031621620788 783 -0.86064766042638263 786 -0.65469935419955094 789 -0.23828742312049378
		 791 0.097671520511533827 793 0.44204969378736059 796 0.94658651440848507 799 1.4486303854842186
		 803 2.0139923246374098 806 2.3121732441051015 809 2.4639560735300545 813 2.2060212147327087
		 815 1.988990338996568 819 1.4094447276741091 821 1.1183108104026038 822 0.98476983103960936
		 824 0.64732092737681568 825 0.47261468105526905 827 0.12232331684628278 829 -0.19174385592676368
		 835 -0.78840646616692656 839 -0.55444050987489235 843 -0.11178162742536168 846 0.27773029318604153
		 848 0.52893275678131024 850 0.75213050893018152 852 0.99232353176178667 854 1.2212097467782173
		 857 1.5096505775720797 860 1.7337407644832035 864 1.9105954991804164 885 -0.24668617177213617
		 897 1.3525485476948909 911 -0.17521434355247867 918 0.23869524802046743 924 0.7645033518050206
		 931 1.3143500083866946 934 1.4769227165084653 937 1.5516139942208795 942 1.3819498661533263
		 947 1.0494376150650466 951 0.7067815601421974 956 0.26590999667692977 960 -0.11877984460552482
		 964 -0.47811052734806064 973 -1.0043739020590945 978 -1.0043739020590945 987 -2.0368340401656786
		 1005 6.7154077472839306;
	setAttr -s 176 ".kit[0:175]"  3 28 3 3 3 3 3 3 
		3 3 3 18 18 3 3 18 18 18 18 18 18 3 18 18 18 
		18 18 3 18 18 18 18 18 18 18 18 3 18 18 18 18 18 
		3 3 18 18 18 18 18 18 18 18 3 18 18 18 18 18 18 
		18 18 18 3 18 18 18 18 18 3 18 3 18 18 3 18 18 
		3 18 18 3 3 3 3 18 18 18 18 3 18 18 18 18 18 
		18 18 18 18 3 3 18 18 3 18 18 18 18 18 18 3 18 
		3 18 3 18 3 3 3 3 3 3 18 18 18 3 18 18 18 
		18 3 18 18 18 18 18 18 18 18 3 18 18 18 18 18 18 
		18 18 18 3 18 18 18 18 18 18 18 18 18 3 3 3 3 
		18 18 18 18 3 18 18 18 18 18 18 3 3 3 3;
	setAttr -s 176 ".kot[0:175]"  3 18 3 3 3 3 3 3 
		3 3 3 18 18 3 3 18 18 18 18 18 18 3 18 18 18 
		18 18 3 18 18 18 18 18 18 18 18 3 18 18 18 18 18 
		3 3 18 18 18 18 18 18 18 18 3 18 18 18 18 18 18 
		18 18 18 3 18 18 18 18 18 3 18 3 18 18 3 18 18 
		3 18 18 3 3 3 3 18 18 18 18 3 18 18 18 18 18 
		18 18 18 18 3 3 18 18 3 18 18 18 18 18 18 3 18 
		3 18 3 18 3 3 3 3 3 3 18 18 18 3 18 18 18 
		18 3 18 18 18 18 18 18 18 18 3 18 18 18 18 18 18 
		18 18 18 3 18 18 18 18 18 18 18 18 18 3 3 3 3 
		18 18 18 18 3 18 18 18 18 18 18 3 3 3 3;
createNode animCurveTU -n "bogenCTRL_middle_visibility";
	rename -uid "B1C2A413-4B4B-A275-BF87-30ABABDFCD35";
	setAttr ".tan" 3;
	setAttr -s 50 ".ktv[0:49]"  187 1 203 1 218 1 222 1 232 1 240 1 247 1
		 254 1 261 1 269 1 288 1 295 1 314 1 321 1 328 1 348 1 374 1 388 1 400 1 425 1 451 1
		 476 1 488 1 502 1 515 1 526 1 538 1 551 1 575 1 589 1 602 1 614 1 627 1 665 1 679 1
		 690 1 703 1 725 1 754 1 783 1 809 1 835 1 864 1 885 1 897 1 911 1 937 1 973 1 978 1
		 1005 1;
	setAttr -s 50 ".kit[49]"  9;
	setAttr -s 50 ".kot[49]"  5;
createNode animCurveTA -n "bogenCTRL_middle_rotateX";
	rename -uid "6A046D3E-413F-7F6E-FFE1-CFA1AD737BB6";
	setAttr ".tan" 3;
	setAttr -s 51 ".ktv[0:50]"  159 0 187 -19.991344787507344 203 -19.991344787507344
		 218 -19.991344787507344 222 -19.991344787507344 232 -19.991344787507344 240 -0.10679555284371253
		 247 -0.10679555284371253 254 -0.10679555284371253 261 -28.648044253156129 269 -28.648044253156129
		 288 -12.66358926132752 295 -25.332771150086892 314 -43 321 -26.667491321049937 328 -26.667491321049937
		 348 -6.2915895553386401 374 -22.416468290658855 388 -29.391689630111721 400 -28.360382084353716
		 425 -26.894818552894144 451 -43.467764639137833 476 -26.894818552894144 488 -26.894818552894144
		 502 -26.894818552894144 515 -26.894818552894144 526 -56.626481571429338 538 -26.946984490932845
		 551 -26.946984490932845 575 -2.3749810765688273 589 -12.175902406387765 602 -12.175902406387765
		 614 -12.175902406387765 627 -12.175902406387765 665 -25.10894984637817 679 -25.10894984637817
		 690 -25.10894984637817 703 -39.898675028652804 725 -21.20242889959852 754 17.891590632694111
		 783 -10.474327341216448 809 -33.299374809382641 835 -8.362460361859279 864 -33.026848909500472
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
		 754 42.560022918190519 783 52.315427679003385 809 52.315427679003406 835 52.315427679003434
		 864 52.315427679003413 885 52.315427679003413 897 52.315427679003413 911 52.315427679003413
		 937 52.315427679003434 973 52.315427679003513 978 52.315427679003513 1005 8.6373935794769352;
	setAttr -s 51 ".kit[40:50]"  1 3 3 3 3 3 3 3 
		3 3 3;
	setAttr -s 51 ".kot[40:50]"  1 3 3 3 3 3 3 3 
		3 3 3;
	setAttr -s 51 ".kix[40:50]"  1.2165722845432647 1.0833333333333357 1.0833333333333286 
		1.2083333333333357 0.875 0.5 0.5833333333333357 1.0833333333333286 1.5 0.2083333333333357 
		1.125;
	setAttr -s 51 ".kiy[40:50]"  0.18725162954069674 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 51 ".kox[40:50]"  1.0920421129625995 1.0833333333333286 1.2083333333333357 
		0.875 0.5 0.5833333333333357 1.0833333333333286 1.5 0.2083333333333357 1.125 1.125;
	setAttr -s 51 ".koy[40:50]"  0.16808429953860574 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "bogenCTRL_middle_rotateZ";
	rename -uid "3F37B5DA-40AF-5E4B-C749-349E62107965";
	setAttr ".tan" 3;
	setAttr -s 50 ".ktv[0:49]"  187 0 203 0 218 0 222 0 232 0 240 0 247 0
		 254 0 261 0 269 0 288 35.151487038268442 295 0 314 0 321 0 328 0 348 0 374 0 388 0
		 400 0 425 0 451 -22.004231718872106 476 0 488 0 502 0 515 0 526 -18.449961546615473
		 538 -9.1761290508200553 551 -9.1761290508200553 575 20.830339680310075 589 -14.267844568324797
		 602 -14.267844568324797 614 -14.267844568324797 627 -14.267844568324797 665 -30.430410826319108
		 679 -30.430410826319108 690 -30.430410826319108 703 -20.326151119784882 725 -28.087206403398365
		 754 17.222795291452208 783 -12.789459035676009 809 -12.789459035676007 835 -12.789459035676057
		 864 -12.789459035676073 885 -12.789459035676073 897 -12.789459035676073 911 -12.789459035676073
		 937 -12.78945903567609 973 -12.78945903567614 978 -12.78945903567614 1005 -161.831286121734;
createNode animCurveTU -n "bogenCTRL_middle_scaleX";
	rename -uid "EAA25CF9-48B0-E9AA-C14E-9C9805B0C28C";
	setAttr ".tan" 3;
	setAttr -s 50 ".ktv[0:49]"  187 1 203 1 218 1 222 1 232 1 240 1 247 1
		 254 1 261 1 269 1 288 1 295 1 314 1 321 1 328 1 348 1 374 1 388 1 400 1 425 1 451 1
		 476 1 488 1 502 1 515 1 526 1 538 1 551 1 575 1 589 1 602 1 614 1 627 1 665 1 679 1
		 690 1 703 1 725 1 754 1 783 1 809 1 835 1 864 1 885 1 897 1 911 1 937 1 973 1 978 1
		 1005 1;
	setAttr -s 50 ".kit[49]"  18;
	setAttr -s 50 ".kot[49]"  18;
createNode animCurveTU -n "bogenCTRL_middle_scaleY";
	rename -uid "6C463F88-4FBA-B696-B69B-73B68BA3755F";
	setAttr ".tan" 3;
	setAttr -s 50 ".ktv[0:49]"  187 1 203 1 218 1 222 1 232 1 240 1 247 1
		 254 1 261 1 269 1 288 1 295 1 314 1 321 1 328 1 348 1 374 1 388 1 400 1 425 1 451 1
		 476 1 488 1 502 1 515 1 526 1 538 1 551 1 575 1 589 1 602 1 614 1 627 1 665 1 679 1
		 690 1 703 1 725 1 754 1 783 1 809 1 835 1 864 1 885 1 897 1 911 1 937 1 973 1 978 1
		 1005 1;
	setAttr -s 50 ".kit[49]"  18;
	setAttr -s 50 ".kot[49]"  18;
createNode animCurveTU -n "bogenCTRL_middle_scaleZ";
	rename -uid "5B6F6C90-4084-A76D-B825-6BAAE55E4966";
	setAttr ".tan" 3;
	setAttr -s 50 ".ktv[0:49]"  187 1 203 1 218 1 222 1 232 1 240 1 247 1
		 254 1 261 1 269 1 288 1 295 1 314 1 321 1 328 1 348 1 374 1 388 1 400 1 425 1 451 1
		 476 1 488 1 502 1 515 1 526 1 538 1 551 1 575 1 589 1 602 1 614 1 627 1 665 1 679 1
		 690 1 703 1 725 1 754 1 783 1 809 1 835 1 864 1 885 1 897 1 911 1 937 1 973 1 978 1
		 1005 1;
	setAttr -s 50 ".kit[49]"  18;
	setAttr -s 50 ".kot[49]"  18;
createNode animCurveTU -n "bogenCTRL_middle_Bend";
	rename -uid "33120531-45E7-6425-4267-5CA155240D06";
	setAttr ".tan" 3;
	setAttr -s 50 ".ktv[0:49]"  187 0 203 0 218 0 222 0 232 0 240 0 247 0
		 254 0 261 0 269 0 288 0 295 0 314 0 321 0 328 0 348 0 374 0 388 0 400 0 425 0 451 0
		 476 0 488 0 502 0 515 0 526 0 538 0 551 0 575 0 589 0 602 0 614 0 627 0 665 0 679 0
		 690 0 703 0 725 0 754 0 783 0 809 0 835 0 864 0 885 0 897 0 911 0 937 0 973 0 978 0
		 1005 0;
	setAttr -s 50 ".kit[49]"  18;
	setAttr -s 50 ".kot[49]"  18;
createNode animCurveTU -n "bogenCTRL_middle_squashNstretch";
	rename -uid "5C38DCEC-42DE-A36A-CFFC-C6AD98DF20BA";
	setAttr ".tan" 3;
	setAttr -s 50 ".ktv[0:49]"  187 0 203 0 218 0 222 0 232 0 240 0 247 0
		 254 0 261 0 269 0 288 0 295 0 314 0 321 0 328 0 348 0 374 0 388 0 400 0 425 0 451 0
		 476 0 488 0 502 0 515 0 526 0 538 0 551 0 575 0 589 0 602 0 614 0 627 0 665 0 679 0
		 690 0 703 0 725 0 754 0 783 0 809 0 835 0 864 0 885 0 897 0 911 0 937 0 973 0 978 0
		 1005 0;
	setAttr -s 50 ".kit[49]"  18;
	setAttr -s 50 ".kot[49]"  18;
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
	setAttr -s 2 ".ktv[0:1]"  187 1 992 1;
	setAttr -s 2 ".kit[1]"  9;
	setAttr -s 2 ".kot[1]"  5;
createNode animCurveTL -n "geigeCTRL_bottom_translateX";
	rename -uid "7848348E-4448-C991-7520-23BDC3A43113";
	setAttr ".tan" 28;
	setAttr -s 3 ".ktv[0:2]"  187 0 992 0 1029 -4.7881331339040738;
	setAttr -s 3 ".kit[0:2]"  3 28 28;
	setAttr -s 3 ".kot[0:2]"  3 28 28;
createNode animCurveTL -n "geigeCTRL_bottom_translateY";
	rename -uid "A6A2D03F-42FB-5E76-309A-71B1E6D8CAB6";
	setAttr ".tan" 28;
	setAttr -s 3 ".ktv[0:2]"  187 0 992 0 1029 -2.6559930738572977;
	setAttr -s 3 ".kit[0:2]"  3 28 28;
	setAttr -s 3 ".kot[0:2]"  3 28 28;
createNode animCurveTL -n "geigeCTRL_bottom_translateZ";
	rename -uid "D6896EE9-4578-61AA-8577-6393C203B4BE";
	setAttr ".tan" 28;
	setAttr -s 3 ".ktv[0:2]"  187 0 992 0 1029 -0.84897370539946593;
	setAttr -s 3 ".kit[0:2]"  3 28 28;
	setAttr -s 3 ".kot[0:2]"  3 28 28;
createNode animCurveTA -n "geigeCTRL_bottom_rotateX";
	rename -uid "E44EC85A-4C27-708F-AC19-59B22056FBB8";
	setAttr ".tan" 3;
	setAttr -s 4 ".ktv[0:3]"  154 0 187 -22.001816681844499 992 -22.001816681844499
		 1029 27.360135935538555;
	setAttr -s 4 ".kit[2:3]"  28 28;
	setAttr -s 4 ".kot[2:3]"  28 28;
createNode animCurveTA -n "geigeCTRL_bottom_rotateY";
	rename -uid "CFD4F08F-45B5-44BF-C73E-94A8D8BF7F81";
	setAttr ".tan" 3;
	setAttr -s 4 ".ktv[0:3]"  154 0 187 -32.193234844081594 992 -32.193234844081594
		 1029 -8.8135885072107154;
	setAttr -s 4 ".kit[2:3]"  28 28;
	setAttr -s 4 ".kot[2:3]"  28 28;
createNode animCurveTA -n "geigeCTRL_bottom_rotateZ";
	rename -uid "783E502B-4E1B-FC46-A456-F6AF45259316";
	setAttr ".tan" 3;
	setAttr -s 4 ".ktv[0:3]"  154 0 187 38.19520770959236 992 38.19520770959236
		 1029 29.01727500072489;
	setAttr -s 4 ".kit[2:3]"  28 28;
	setAttr -s 4 ".kot[2:3]"  28 28;
createNode animCurveTU -n "geigeCTRL_bottom_scaleX";
	rename -uid "38B3F20B-41CF-CDE6-4CBC-AAACD63DF5A9";
	setAttr ".tan" 3;
	setAttr -s 2 ".ktv[0:1]"  187 1 992 1;
	setAttr -s 2 ".kit[1]"  28;
	setAttr -s 2 ".kot[1]"  28;
createNode animCurveTU -n "geigeCTRL_bottom_scaleY";
	rename -uid "682D16EA-4E08-2880-C2AF-368887F4AD86";
	setAttr ".tan" 3;
	setAttr -s 2 ".ktv[0:1]"  187 1 992 1;
	setAttr -s 2 ".kit[1]"  28;
	setAttr -s 2 ".kot[1]"  28;
createNode animCurveTU -n "geigeCTRL_bottom_scaleZ";
	rename -uid "2687044F-442E-45E6-4AAD-B286CBD5CC13";
	setAttr ".tan" 3;
	setAttr -s 2 ".ktv[0:1]"  187 1 992 1;
	setAttr -s 2 ".kit[1]"  28;
	setAttr -s 2 ".kot[1]"  28;
createNode materialInfo -n "pasted__materialInfo1";
	rename -uid "C845E283-48A0-9E68-9621-8BA65D1EC5D6";
createNode shadingEngine -n "pasted__aiStandardSurface1SG";
	rename -uid "0695E201-48AA-08A9-5CD7-4CBAD6D21199";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
	setAttr -s 12 ".aovs";
	setAttr ".aovs[0].aov_name" -type "string" "N";
	setAttr ".aovs[1].aov_name" -type "string" "RGBA";
	setAttr ".aovs[2].aov_name" -type "string" "Z";
	setAttr ".aovs[3].aov_name" -type "string" "albedo";
	setAttr ".aovs[4].aov_name" -type "string" "diffuse";
	setAttr ".aovs[5].aov_name" -type "string" "direct";
	setAttr ".aovs[6].aov_name" -type "string" "indirect";
	setAttr ".aovs[7].aov_name" -type "string" "opacity";
	setAttr ".aovs[8].aov_name" -type "string" "specular";
	setAttr ".aovs[9].aov_name" -type "string" "crypto_asset";
	setAttr ".aovs[10].aov_name" -type "string" "AO";
	setAttr ".aovs[11].aov_name" -type "string" "volume";
	setAttr ".aal" -type "attributeAlias" {"ai_aov_N","aiCustomAOVs[0]","ai_aov_AO","aiCustomAOVs[10]"
		,"ai_aov_volume","aiCustomAOVs[11].aovName","ai_aov_RGBA","aiCustomAOVs[1]","ai_aov_Z"
		,"aiCustomAOVs[2]","ai_aov_albedo","aiCustomAOVs[3]","ai_aov_diffuse","aiCustomAOVs[4]"
		,"ai_aov_direct","aiCustomAOVs[5]","ai_aov_indirect","aiCustomAOVs[6]","ai_aov_opacity"
		,"aiCustomAOVs[7]","ai_aov_specular","aiCustomAOVs[8]","ai_aov_crypto_asset","aiCustomAOVs[9]"
		} ;
createNode aiStandardSurface -n "pasted__aiStandardSurface1";
	rename -uid "6704A198-4EC7-225A-C07D-1EBD875A37EA";
	setAttr ".specular_roughness" 0;
	setAttr ".internal_reflections" no;
createNode file -n "pasted__file1";
	rename -uid "06AFA97D-4D5E-1EDA-CF2D-12817105E2D1";
	setAttr ".ftn" -type "string" "D:/FH Hagenberg/Unity_Projects/Semesterprojekt_ViolinAnimation/High-Strung//assets/2D Planes/First Performance/Sketches/first perf sketch01.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "pasted__place2dTexture1";
	rename -uid "B2AC42C5-4480-856D-B939-90808CAD95EB";
createNode file -n "pasted__file2";
	rename -uid "7810FA61-485F-A70B-8014-59B00DC57758";
	setAttr ".ftn" -type "string" "D:/FH Hagenberg/Unity_Projects/Semesterprojekt_ViolinAnimation/High-Strung//assets/2D Planes/First Performance/Sketches/first perf sketch01 alpha.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "pasted__place2dTexture2";
	rename -uid "B5508008-4610-15AC-0640-A88E649FA707";
createNode materialInfo -n "pasted__materialInfo2";
	rename -uid "976CB96E-47D0-1E25-7EC0-E98E7C7DDE00";
createNode shadingEngine -n "pasted__aiStandardSurface2SG";
	rename -uid "5369F08A-42FB-A235-6446-EA93BCF3DFCC";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
	setAttr -s 12 ".aovs";
	setAttr ".aovs[0].aov_name" -type "string" "N";
	setAttr ".aovs[1].aov_name" -type "string" "RGBA";
	setAttr ".aovs[2].aov_name" -type "string" "Z";
	setAttr ".aovs[3].aov_name" -type "string" "albedo";
	setAttr ".aovs[4].aov_name" -type "string" "diffuse";
	setAttr ".aovs[5].aov_name" -type "string" "direct";
	setAttr ".aovs[6].aov_name" -type "string" "indirect";
	setAttr ".aovs[7].aov_name" -type "string" "opacity";
	setAttr ".aovs[8].aov_name" -type "string" "specular";
	setAttr ".aovs[9].aov_name" -type "string" "crypto_asset";
	setAttr ".aovs[10].aov_name" -type "string" "AO";
	setAttr ".aovs[11].aov_name" -type "string" "volume";
	setAttr ".aal" -type "attributeAlias" {"ai_aov_N","aiCustomAOVs[0]","ai_aov_AO","aiCustomAOVs[10]"
		,"ai_aov_volume","aiCustomAOVs[11].aovName","ai_aov_RGBA","aiCustomAOVs[1]","ai_aov_Z"
		,"aiCustomAOVs[2]","ai_aov_albedo","aiCustomAOVs[3]","ai_aov_diffuse","aiCustomAOVs[4]"
		,"ai_aov_direct","aiCustomAOVs[5]","ai_aov_indirect","aiCustomAOVs[6]","ai_aov_opacity"
		,"aiCustomAOVs[7]","ai_aov_specular","aiCustomAOVs[8]","ai_aov_crypto_asset","aiCustomAOVs[9]"
		} ;
createNode aiStandardSurface -n "pasted__aiStandardSurface2";
	rename -uid "97E227B5-4E74-2282-FF6D-D4A352DF14F6";
	setAttr ".specular_roughness" 0;
	setAttr ".internal_reflections" no;
createNode file -n "pasted__file3";
	rename -uid "E7132A14-44C9-4A7A-0FC4-4D9C5836F0EB";
	setAttr ".ftn" -type "string" "D:/FH Hagenberg/Unity_Projects/Semesterprojekt_ViolinAnimation/High-Strung//assets/2D Planes/First Performance/Sketches/first perf sketch03.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "pasted__place2dTexture3";
	rename -uid "45C0D563-4AFC-4F06-5255-BD810D650171";
createNode file -n "pasted__file4";
	rename -uid "EC8C3CBB-4857-16DF-9D4D-5A9E0BDE8663";
	setAttr ".ftn" -type "string" "D:/FH Hagenberg/Unity_Projects/Semesterprojekt_ViolinAnimation/High-Strung//assets/2D Planes/First Performance/Sketches/first perf sketch03_alpha.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "pasted__place2dTexture4";
	rename -uid "5EFBBB78-4236-95A8-2C1D-23AD130680CD";
createNode materialInfo -n "pasted__materialInfo3";
	rename -uid "4D0C8A81-4146-2111-12CA-C3BE341F40AB";
createNode shadingEngine -n "pasted__aiStandardSurface3SG";
	rename -uid "861A8675-45BC-430D-E6FB-E9ACBF76FDF5";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
	setAttr -s 12 ".aovs";
	setAttr ".aovs[0].aov_name" -type "string" "N";
	setAttr ".aovs[1].aov_name" -type "string" "RGBA";
	setAttr ".aovs[2].aov_name" -type "string" "Z";
	setAttr ".aovs[3].aov_name" -type "string" "albedo";
	setAttr ".aovs[4].aov_name" -type "string" "diffuse";
	setAttr ".aovs[5].aov_name" -type "string" "direct";
	setAttr ".aovs[6].aov_name" -type "string" "indirect";
	setAttr ".aovs[7].aov_name" -type "string" "opacity";
	setAttr ".aovs[8].aov_name" -type "string" "specular";
	setAttr ".aovs[9].aov_name" -type "string" "crypto_asset";
	setAttr ".aovs[10].aov_name" -type "string" "AO";
	setAttr ".aovs[11].aov_name" -type "string" "volume";
	setAttr ".aal" -type "attributeAlias" {"ai_aov_N","aiCustomAOVs[0]","ai_aov_AO","aiCustomAOVs[10]"
		,"ai_aov_volume","aiCustomAOVs[11].aovName","ai_aov_RGBA","aiCustomAOVs[1]","ai_aov_Z"
		,"aiCustomAOVs[2]","ai_aov_albedo","aiCustomAOVs[3]","ai_aov_diffuse","aiCustomAOVs[4]"
		,"ai_aov_direct","aiCustomAOVs[5]","ai_aov_indirect","aiCustomAOVs[6]","ai_aov_opacity"
		,"aiCustomAOVs[7]","ai_aov_specular","aiCustomAOVs[8]","ai_aov_crypto_asset","aiCustomAOVs[9]"
		} ;
createNode aiStandardSurface -n "pasted__aiStandardSurface3";
	rename -uid "D73B0EB7-498A-E991-D750-FEB1D00CF3DC";
	setAttr ".specular_roughness" 0;
	setAttr ".internal_reflections" no;
createNode file -n "pasted__file5";
	rename -uid "AC85C258-47AD-D8C4-FE84-3A925ADF8E9C";
	setAttr ".ftn" -type "string" "D:/FH Hagenberg/Unity_Projects/Semesterprojekt_ViolinAnimation/High-Strung//assets/2D Planes/First Performance/Sketches/first perf sketch02.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "pasted__place2dTexture5";
	rename -uid "EA15C947-4355-3F69-80A8-0C98BD2710E8";
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
	setAttr ".tan" 18;
	setAttr -s 32 ".ktv[0:31]"  0 1 154 1 222 1 232 1 239 1 247 1 254 1
		 261 1 269 1 288 1 295 1 314 1 321 1 328 1 348 1 374 1 388 1 401 1 425 1 451 1 703 1
		 725 1 754 1 783 1 809 1 835 1 864 1 884 1 897 1 911 1 939 1 980 1;
	setAttr -s 32 ".kit[0:31]"  28 28 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18;
createNode animCurveTU -n "Geige_scaleY";
	rename -uid "AF04741C-4C52-FC7E-1280-48A55BC08EAA";
	setAttr ".tan" 18;
	setAttr -s 32 ".ktv[0:31]"  0 1 154 1 222 1 232 1 239 1 247 1 254 1
		 261 1 269 1 288 1 295 1 314 1 321 1 328 1 348 1 374 1 388 1 401 1 425 1 451 1 703 1
		 725 1 754 1 783 1 809 1 835 1 864 1 884 1 897 1 911 1 939 1 980 1;
	setAttr -s 32 ".kit[0:31]"  28 28 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18;
createNode animCurveTU -n "Geige_scaleZ";
	rename -uid "34B513C9-4EFC-B829-9EA7-7F91ED113C6D";
	setAttr ".tan" 18;
	setAttr -s 32 ".ktv[0:31]"  0 1 154 1 222 1 232 1 239 1 247 1 254 1
		 261 1 269 1 288 1 295 1 314 1 321 1 328 1 348 1 374 1 388 1 401 1 425 1 451 1 703 1
		 725 1 754 1 783 1 809 1 835 1 864 1 884 1 897 1 911 1 939 1 980 1;
	setAttr -s 32 ".kit[0:31]"  28 28 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18;
createNode animCurveTU -n "Geige_visibility";
	rename -uid "E45BC4F9-4EEB-D36A-3F57-F78D32459F97";
	setAttr ".tan" 9;
	setAttr -s 32 ".ktv[0:31]"  0 1 154 1 222 1 232 1 239 1 247 1 254 1
		 261 1 269 1 288 1 295 1 314 1 321 1 328 1 348 1 374 1 388 1 401 1 425 1 451 1 703 1
		 725 1 754 1 783 1 809 1 835 1 864 1 884 1 897 1 911 1 939 1 980 1;
	setAttr -s 32 ".kot[0:31]"  5 5 5 5 5 5 5 5 
		5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 
		5 5 5 5 5 5 5;
createNode animCurveTL -n "Geige_translateX";
	rename -uid "DAE56335-47C3-1B08-A0C3-219157254940";
	setAttr ".tan" 18;
	setAttr -s 35 ".ktv[0:34]"  0 5.9848834376296312 38 6.025 76 5.985 115 6.025
		 154 5.9848834376296312 222 5.9848834376296312 232 5.9848834376296312 239 5.9848834376296312
		 247 5.9848834376296312 254 5.9848834376296312 261 5.9848834376296312 269 5.9848834376296312
		 288 5.9848834376296312 295 5.9848834376296312 314 5.9848834376296312 321 5.9848834376296312
		 328 5.9848834376296312 348 5.9848834376296312 374 5.9848834376296312 388 5.9848834376296312
		 401 5.9848834376296312 425 5.9848834376296312 451 5.9848834376296312 703 5.9848834376296312
		 725 5.9848834376296312 754 5.9848834376296312 783 5.9848834376296312 809 5.9848834376296312
		 835 5.9848834376296312 864 5.9848834376296312 884 5.9848834376296312 897 5.9848834376296312
		 911 5.9848834376296312 939 5.9848834376296312 980 5.9848834376296312;
	setAttr -s 35 ".kit[0:34]"  28 28 28 28 28 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18;
createNode animCurveTL -n "Geige_translateY";
	rename -uid "C471A8E6-4A6A-137F-CB4B-CB95BE4124C9";
	setAttr ".tan" 18;
	setAttr -s 35 ".ktv[0:34]"  0 -15.582677595359231 38 -15.4 76 -15.583
		 115 -15.4 154 -15.582677595359231 222 -15.582677595359231 232 -15.582677595359231
		 239 -15.582677595359231 247 -15.582677595359231 254 -15.582677595359231 261 -15.582677595359231
		 269 -15.582677595359231 288 -15.582677595359231 295 -15.582677595359231 314 -15.582677595359231
		 321 -15.582677595359231 328 -15.582677595359231 348 -15.582677595359231 374 -15.582677595359231
		 388 -15.582677595359231 401 -15.582677595359231 425 -15.582677595359231 451 -15.582677595359231
		 703 -15.582677595359231 725 -15.582677595359231 754 -15.582677595359231 783 -15.582677595359231
		 809 -15.582677595359231 835 -15.582677595359231 864 -15.582677595359231 884 -15.582677595359231
		 897 -15.582677595359231 911 -15.582677595359231 939 -15.582677595359231 980 -15.582677595359231;
	setAttr -s 35 ".kit[0:34]"  28 28 28 28 28 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18;
createNode animCurveTL -n "Geige_translateZ";
	rename -uid "601B3CF3-49BA-6F32-0A66-4DAB31BA5C16";
	setAttr ".tan" 18;
	setAttr -s 32 ".ktv[0:31]"  0 27.909341399001097 154 27.909341399001097
		 222 27.909341399001097 232 27.909341399001097 239 27.909341399001097 247 27.909341399001097
		 254 27.909341399001097 261 27.909341399001097 269 27.909341399001097 288 27.909341399001097
		 295 27.909341399001097 314 27.909341399001097 321 27.909341399001097 328 27.909341399001097
		 348 27.909341399001097 374 27.909341399001097 388 27.909341399001097 401 27.909341399001097
		 425 27.909341399001097 451 27.909341399001097 703 27.909341399001097 725 27.909341399001097
		 754 27.909341399001097 783 27.909341399001097 809 27.909341399001097 835 27.909341399001097
		 864 27.909341399001097 884 27.909341399001097 897 27.909341399001097 911 27.909341399001097
		 939 27.909341399001097 980 27.909341399001097;
	setAttr -s 32 ".kit[0:31]"  28 28 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18;
createNode animCurveTA -n "Geige_rotateX";
	rename -uid "2552A99B-4ABA-6811-8080-859CC2D48BAA";
	setAttr ".tan" 18;
	setAttr -s 32 ".ktv[0:31]"  0 90 154 90 222 90 232 93.823351962221679
		 239 86.86302566732401 247 88.7934411921822 254 84.829803214633557 261 86.903838586994183
		 269 83.511595987679883 288 99.449594934968957 295 90 314 97.832252253054847 321 93.132972320763187
		 328 98.895207543733065 348 82.30379640574742 374 95.569054763087635 388 90.124685743328484
		 401 96.51154843224262 425 87.256738747440977 451 100.25317855798259 703 97.164731921249754
		 725 93.093106957066965 754 104.13098889200764 783 89.746038288761042 809 94.133140913516527
		 835 88.042552764490779 864 96.630108898116006 884 89.113262810393906 897 95.999434823866906
		 911 90.675002178397094 939 101.66699689410819 980 85.923360437581962;
	setAttr -s 32 ".kit[0:31]"  28 28 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18;
createNode animCurveTA -n "Geige_rotateY";
	rename -uid "3224FA8E-41F5-772D-C4D2-FAAB277A2793";
	setAttr ".tan" 18;
	setAttr -s 32 ".ktv[0:31]"  0 0 154 0 222 0 232 0 239 0 247 0 254 0
		 261 0 269 0 288 0 295 0 314 0 321 0 328 0 348 0 374 0 388 0 401 0 425 0 451 0 703 0
		 725 0 754 0 783 0 809 0 835 0 864 0 884 0 897 0 911 0 939 0 980 0;
	setAttr -s 32 ".kit[0:31]"  28 28 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18;
createNode animCurveTA -n "Geige_rotateZ";
	rename -uid "E96820B4-4869-E365-FDB3-44919F304647";
	setAttr ".tan" 18;
	setAttr -s 32 ".ktv[0:31]"  0 0 154 0 222 0 232 0 239 0 247 0 254 0
		 261 0 269 0 288 0 295 0 314 0 321 0 328 0 348 0 374 0 388 0 401 0 425 0 451 0 703 0
		 725 0 754 0 783 0 809 0 835 0 864 0 884 0 897 0 911 0 939 0 980 0;
	setAttr -s 32 ".kit[0:31]"  28 28 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18;
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
	setAttr -s 3 ".ktv[0:2]"  330 -3.1556827648363877 338 -4.4592671178355534
		 459 -6.205136551195725;
	setAttr -s 3 ".kot[0:2]"  18 28 28;
createNode animCurveTL -n "persp1_translateY";
	rename -uid "B41A0EA0-48B2-A9DC-ED9D-E7B218B057EA";
	setAttr ".tan" 28;
	setAttr -s 3 ".ktv[0:2]"  330 -18.60886208458254 338 -21.443998808908944
		 459 -24.525547552992794;
	setAttr -s 3 ".kot[0:2]"  18 28 28;
createNode animCurveTL -n "persp1_translateZ";
	rename -uid "E7661FDD-4366-E304-BB87-8A9CF71C0D1D";
	setAttr ".tan" 28;
	setAttr -s 3 ".ktv[0:2]"  330 70.20683134995312 338 65.064198054636677
		 459 47.853410916274029;
	setAttr -s 3 ".kot[0:2]"  18 28 28;
createNode animCurveTA -n "persp1_rotateX";
	rename -uid "1F179838-4E61-4EAE-DD0F-E1943C0A51BD";
	setAttr ".tan" 28;
	setAttr -s 3 ".ktv[0:2]"  330 0 338 0 459 24.191958778806605;
	setAttr -s 3 ".kot[0:2]"  18 28 28;
createNode animCurveTA -n "persp1_rotateY";
	rename -uid "4E1978A6-4495-C37E-9787-D9B1C0B6293D";
	setAttr ".tan" 28;
	setAttr -s 3 ".ktv[0:2]"  330 0 338 0 459 -11.500701799809605;
	setAttr -s 3 ".kot[0:2]"  18 28 28;
createNode animCurveTA -n "persp1_rotateZ";
	rename -uid "90FB68C3-4115-692F-AAC3-09884193F234";
	setAttr ".tan" 28;
	setAttr -s 3 ".ktv[0:2]"  330 0 338 0 459 0.037780623912155177;
	setAttr -s 3 ".kot[0:2]"  18 28 28;
createNode timeSliderBookmark -n "timeSliderBookmark3";
	rename -uid "4D0D4A40-4502-5EC7-EDEB-BD878EF8104B";
	setAttr ".nm" -type "string" "low_shot";
	setAttr ".c" -type "float3" 0.27843139 0.7019608 0.41960785 ;
	setAttr ".tst" 338;
	setAttr ".tsp" 458;
	setAttr ".prty" 3;
createNode timeSliderBookmark -n "timeSliderBookmark4";
	rename -uid "3094BC4A-4555-71FE-F3E8-82BE4B23128A";
	setAttr ".nm" -type "string" "360";
	setAttr ".c" -type "float3" 0.082352944 0.50980395 0.54901963 ;
	setAttr ".tst" 458;
	setAttr ".tsp" 786;
	setAttr ".prty" 4;
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
	setAttr ".tst" 786;
	setAttr ".tsp" 980;
	setAttr ".prty" 6;
createNode sequencer -n "sequencer1";
	rename -uid "372C766E-48B7-8520-CBED-6B81DE366CDE";
	setAttr ".mnf" 0;
	setAttr ".mxf" 1014;
	setAttr -s 4 ".shts";
createNode trackInfoManager -n "trackInfoManager1";
	rename -uid "1B5254E6-4F7A-B8FE-7A13-9FBA4DDA7B50";
	setAttr ".ti[0].t" -type "string" "";
createNode shot -n "establishing";
	rename -uid "0720D794-4075-E2ED-406F-0AAA307984EA";
	setAttr ".ef" 242;
	setAttr ".cv" no;
	setAttr ".sn" -type "string" "establishing";
	setAttr ".wres" 1024;
	setAttr ".ca" 1;
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
createNode shot -n "final";
	rename -uid "6A3AA180-4347-8962-284A-21B21D1586DC";
	setAttr ".sf" 786;
	setAttr ".ef" 1014;
	setAttr ".ssf" 786;
	setAttr ".czo" 135;
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
createNode motionPath -n "motionPath1";
	rename -uid "7EB97CD0-46B9-4496-AE0B-FE86D2B423C1";
	setAttr -s 2 ".pmt";
	setAttr -s 2 ".pmt";
	setAttr ".f" yes;
	setAttr ".fa" 0;
	setAttr ".ua" 1;
	setAttr ".fm" yes;
createNode animCurveTL -n "motionPath1_uValue";
	rename -uid "4C5909F8-47D3-F318-0460-FCB96D807E3A";
	setAttr ".tan" 28;
	setAttr -s 2 ".ktv[0:1]"  458 1 786 0;
createNode addDoubleLinear -n "addDoubleLinear1";
	rename -uid "0D162498-46A8-2856-AB89-FD90AAA1EC75";
	setAttr ".ihi" 2;
createNode addDoubleLinear -n "addDoubleLinear2";
	rename -uid "B19A7A9A-45EC-FC85-0C6A-5FB3C29510C5";
	setAttr ".ihi" 2;
createNode addDoubleLinear -n "addDoubleLinear3";
	rename -uid "EB9DA2FB-4110-FC7D-DCD3-A4ABA3C32FE5";
	setAttr ".ihi" 2;
createNode animCurveTU -n "low_shot_visibility";
	rename -uid "6F3AE78E-4861-E1C0-554A-FFB6AC9288E5";
	setAttr ".tan" 9;
	setAttr -s 3 ".ktv[0:2]"  330 1 338 1 459 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTU -n "low_shot_scaleX";
	rename -uid "79B50FB8-4577-9ED6-D245-2DBD73F379D3";
	setAttr ".tan" 28;
	setAttr -s 3 ".ktv[0:2]"  330 1 338 1 459 1;
createNode animCurveTU -n "low_shot_scaleY";
	rename -uid "E56AB21D-46E1-1435-C3AC-BFB66CD2FE22";
	setAttr ".tan" 28;
	setAttr -s 3 ".ktv[0:2]"  330 1 338 1 459 1;
createNode animCurveTU -n "low_shot_scaleZ";
	rename -uid "12E53CDB-42A1-1D32-C52B-7B8E4BB87BF2";
	setAttr ".tan" 28;
	setAttr -s 3 ".ktv[0:2]"  330 1 338 1 459 1;
createNode materialInfo -n "pasted__materialInfo4";
	rename -uid "8A476CC3-49A9-0E47-E74A-9FBC8F656135";
createNode shadingEngine -n "pasted__aiStandardSurface1SG1";
	rename -uid "880CFA55-483D-B7AC-80B8-B5B775D4566A";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
	setAttr -s 12 ".aovs";
	setAttr ".aovs[0].aov_name" -type "string" "N";
	setAttr ".aovs[1].aov_name" -type "string" "RGBA";
	setAttr ".aovs[2].aov_name" -type "string" "Z";
	setAttr ".aovs[3].aov_name" -type "string" "albedo";
	setAttr ".aovs[4].aov_name" -type "string" "diffuse";
	setAttr ".aovs[5].aov_name" -type "string" "direct";
	setAttr ".aovs[6].aov_name" -type "string" "indirect";
	setAttr ".aovs[7].aov_name" -type "string" "opacity";
	setAttr ".aovs[8].aov_name" -type "string" "specular";
	setAttr ".aovs[9].aov_name" -type "string" "crypto_asset";
	setAttr ".aovs[10].aov_name" -type "string" "AO";
	setAttr ".aovs[11].aov_name" -type "string" "volume";
	setAttr ".aal" -type "attributeAlias" {"ai_aov_N","aiCustomAOVs[0]","ai_aov_AO","aiCustomAOVs[10]"
		,"ai_aov_volume","aiCustomAOVs[11].aovName","ai_aov_RGBA","aiCustomAOVs[1]","ai_aov_Z"
		,"aiCustomAOVs[2]","ai_aov_albedo","aiCustomAOVs[3]","ai_aov_diffuse","aiCustomAOVs[4]"
		,"ai_aov_direct","aiCustomAOVs[5]","ai_aov_indirect","aiCustomAOVs[6]","ai_aov_opacity"
		,"aiCustomAOVs[7]","ai_aov_specular","aiCustomAOVs[8]","ai_aov_crypto_asset","aiCustomAOVs[9]"
		} ;
createNode aiStandardSurface -n "pasted__aiStandardSurface4";
	rename -uid "438BE693-41A3-EE42-E7C4-D6811F72CA57";
	setAttr ".specular_roughness" 1;
	setAttr ".internal_reflections" no;
createNode file -n "pasted__file6";
	rename -uid "2B3B9DBC-4B25-B151-0CAC-F2897AFB88DD";
	setAttr ".ftn" -type "string" "D:/FH Hagenberg/Unity_Projects/Semesterprojekt_ViolinAnimation/High-Strung//assets/2D Planes/First Performance/s3_l3.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "pasted__place2dTexture6";
	rename -uid "B234AA00-40D3-CA61-4E98-1894EC18AB97";
createNode file -n "pasted__file7";
	rename -uid "6F58D06C-49B0-41F1-D13A-C39167E42B57";
	setAttr ".ftn" -type "string" "D:/FH Hagenberg/Unity_Projects/Semesterprojekt_ViolinAnimation/High-Strung//assets/2D Planes/First Performance/s3_l3_alpha.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "pasted__place2dTexture7";
	rename -uid "99DABE27-49D3-98F8-45DD-68AF323DB456";
createNode materialInfo -n "pasted__materialInfo5";
	rename -uid "E4086F22-47EA-34A0-2EDA-539049F308F3";
createNode shadingEngine -n "pasted__aiStandardSurface2SG1";
	rename -uid "284BAA66-4D52-93B8-4511-B0B086139928";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
	setAttr -s 12 ".aovs";
	setAttr ".aovs[0].aov_name" -type "string" "N";
	setAttr ".aovs[1].aov_name" -type "string" "RGBA";
	setAttr ".aovs[2].aov_name" -type "string" "Z";
	setAttr ".aovs[3].aov_name" -type "string" "albedo";
	setAttr ".aovs[4].aov_name" -type "string" "diffuse";
	setAttr ".aovs[5].aov_name" -type "string" "direct";
	setAttr ".aovs[6].aov_name" -type "string" "indirect";
	setAttr ".aovs[7].aov_name" -type "string" "opacity";
	setAttr ".aovs[8].aov_name" -type "string" "specular";
	setAttr ".aovs[9].aov_name" -type "string" "crypto_asset";
	setAttr ".aovs[10].aov_name" -type "string" "AO";
	setAttr ".aovs[11].aov_name" -type "string" "volume";
	setAttr ".aal" -type "attributeAlias" {"ai_aov_N","aiCustomAOVs[0]","ai_aov_AO","aiCustomAOVs[10]"
		,"ai_aov_volume","aiCustomAOVs[11].aovName","ai_aov_RGBA","aiCustomAOVs[1]","ai_aov_Z"
		,"aiCustomAOVs[2]","ai_aov_albedo","aiCustomAOVs[3]","ai_aov_diffuse","aiCustomAOVs[4]"
		,"ai_aov_direct","aiCustomAOVs[5]","ai_aov_indirect","aiCustomAOVs[6]","ai_aov_opacity"
		,"aiCustomAOVs[7]","ai_aov_specular","aiCustomAOVs[8]","ai_aov_crypto_asset","aiCustomAOVs[9]"
		} ;
createNode aiStandardSurface -n "pasted__aiStandardSurface5";
	rename -uid "FBCB0E47-4927-3996-BE92-AA97298CD115";
	setAttr ".specular_roughness" 1;
	setAttr ".internal_reflections" no;
createNode file -n "pasted__file8";
	rename -uid "092E7CF5-449A-8714-7687-84A91D6E0CA2";
	setAttr ".ftn" -type "string" "D:/FH Hagenberg/Unity_Projects/Semesterprojekt_ViolinAnimation/High-Strung//assets/2D Planes/First Performance/s3_l2.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "pasted__place2dTexture8";
	rename -uid "5F901788-458E-3BAE-E313-0DA23E519DE9";
createNode file -n "pasted__file9";
	rename -uid "BFBCFCC7-4179-D29E-3C2D-6DAB0DFA88E8";
	setAttr ".ftn" -type "string" "D:/FH Hagenberg/Unity_Projects/Semesterprojekt_ViolinAnimation/High-Strung//assets/2D Planes/First Performance/s3_l2_alpha.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "pasted__place2dTexture9";
	rename -uid "05D8022E-4A8D-F8C0-0101-859FA1A590AA";
createNode materialInfo -n "pasted__materialInfo6";
	rename -uid "7C2FBD69-4316-5BE0-C68E-17A8786D0722";
createNode shadingEngine -n "pasted__aiStandardSurface3SG1";
	rename -uid "83F5FC62-4C59-A245-C6A1-A69BE95C0852";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
	setAttr -s 12 ".aovs";
	setAttr ".aovs[0].aov_name" -type "string" "N";
	setAttr ".aovs[1].aov_name" -type "string" "RGBA";
	setAttr ".aovs[2].aov_name" -type "string" "Z";
	setAttr ".aovs[3].aov_name" -type "string" "albedo";
	setAttr ".aovs[4].aov_name" -type "string" "diffuse";
	setAttr ".aovs[5].aov_name" -type "string" "direct";
	setAttr ".aovs[6].aov_name" -type "string" "indirect";
	setAttr ".aovs[7].aov_name" -type "string" "opacity";
	setAttr ".aovs[8].aov_name" -type "string" "specular";
	setAttr ".aovs[9].aov_name" -type "string" "crypto_asset";
	setAttr ".aovs[10].aov_name" -type "string" "AO";
	setAttr ".aovs[11].aov_name" -type "string" "volume";
	setAttr ".aal" -type "attributeAlias" {"ai_aov_N","aiCustomAOVs[0]","ai_aov_AO","aiCustomAOVs[10]"
		,"ai_aov_volume","aiCustomAOVs[11].aovName","ai_aov_RGBA","aiCustomAOVs[1]","ai_aov_Z"
		,"aiCustomAOVs[2]","ai_aov_albedo","aiCustomAOVs[3]","ai_aov_diffuse","aiCustomAOVs[4]"
		,"ai_aov_direct","aiCustomAOVs[5]","ai_aov_indirect","aiCustomAOVs[6]","ai_aov_opacity"
		,"aiCustomAOVs[7]","ai_aov_specular","aiCustomAOVs[8]","ai_aov_crypto_asset","aiCustomAOVs[9]"
		} ;
createNode aiStandardSurface -n "pasted__aiStandardSurface6";
	rename -uid "B4390FD2-432E-FB67-F355-2F8B4D23250E";
	setAttr ".specular_roughness" 1;
	setAttr ".internal_reflections" no;
createNode file -n "pasted__file10";
	rename -uid "FF1AB564-4303-11E1-0260-4AA98E8C60A3";
	setAttr ".ftn" -type "string" "D:/FH Hagenberg/Unity_Projects/Semesterprojekt_ViolinAnimation/High-Strung//assets/2D Planes/First Performance/s6_l1.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "pasted__place2dTexture10";
	rename -uid "168947F7-4715-A1F1-D02E-20B4E1211B2D";
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "6C7CDAE1-4035-49E2-3915-E6AABDC9ED69";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -704.76187675718393 -645.82572873297511 ;
	setAttr ".tgi[0].vh" -type "double2" 980.95234197283719 412.49240467147501 ;
	setAttr -s 6 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" 725.71429443359375;
	setAttr ".tgi[0].ni[0].y" 211.42857360839844;
	setAttr ".tgi[0].ni[0].nvs" 1923;
	setAttr ".tgi[0].ni[1].x" -237.14285278320312;
	setAttr ".tgi[0].ni[1].y" 7.1428570747375488;
	setAttr ".tgi[0].ni[1].nvs" 1923;
	setAttr ".tgi[0].ni[2].x" 70;
	setAttr ".tgi[0].ni[2].y" 28.571428298950195;
	setAttr ".tgi[0].ni[2].nvs" 1923;
	setAttr ".tgi[0].ni[3].x" -237.14285278320312;
	setAttr ".tgi[0].ni[3].y" -168.57142639160156;
	setAttr ".tgi[0].ni[3].nvs" 1923;
	setAttr ".tgi[0].ni[4].x" 70;
	setAttr ".tgi[0].ni[4].y" -147.14285278320312;
	setAttr ".tgi[0].ni[4].nvs" 1923;
	setAttr ".tgi[0].ni[5].x" 377.14285278320312;
	setAttr ".tgi[0].ni[5].y" 211.42857360839844;
	setAttr ".tgi[0].ni[5].nvs" 2387;
createNode timeEditor -s -n "timeEditor";
	rename -uid "848DF1BC-4D1B-D8F5-3337-A4AEC637783B";
	setAttr ".ac" 0;
createNode timeEditorTracks -n "Composition1";
	rename -uid "DAFE5B46-4D92-914D-A1D7-FF8DD82A7457";
createNode animCurveTL -n "ubercam_translateX";
	rename -uid "9287DF51-4BD0-3988-CE40-6581C772B040";
	setAttr ".tan" 1;
	setAttr -s 8 ".ktv[0:7]"  0 -0.0053920752278673323 242 -0.0053920752278673323
		 243 1.5671563207121575 338 1.5671563207121575 339 -4.5021963866479746 458 -6.2051355656979448
		 786 -8.6468468769737505 1014 -8.6468468769737505;
	setAttr -s 8 ".kot[1:7]"  5 1 5 1 5 1 5;
	setAttr -s 8 ".kix[0:7]"  1 1 1 1 0.041666666666662522 4.9583333333333357 
		1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 -0.042573504113692984 -0.00035182270760714118 
		0 0;
	setAttr -s 8 ".kox[0:7]"  1 0 1 0 4.9583333333333357 0 1 0;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 -5.0662469895295557 0 0 0;
createNode animCurveTL -n "ubercam_translateY";
	rename -uid "334C1936-4389-C5A1-41FE-A6BA5F0074EC";
	setAttr ".tan" 1;
	setAttr -s 8 ".ktv[0:7]"  0 -0.54965439937256155 242 -0.54965439937256155
		 243 -4.1496204630652205 338 -4.1496204630652205 339 -21.519771161563487 458 -24.525545813538866
		 786 -29.983276540353923 1014 -29.983276540353923;
	setAttr -s 8 ".kot[1:7]"  5 1 5 1 5 1 5;
	setAttr -s 8 ".kix[0:7]"  1 1 1 1 0.041666666666662522 4.9583333333333357 
		1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 -0.075144409785735888 -0.00062098505308583185 
		0 0;
	setAttr -s 8 ".kox[0:7]"  1 0 1 0 4.9583333333333357 0 1 0;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 -8.9421847645021764 0 0 0;
createNode animCurveTL -n "ubercam_translateZ";
	rename -uid "56900900-417C-78CB-4631-F081B9E000D1";
	setAttr ".tan" 1;
	setAttr -s 8 ".ktv[0:7]"  0 163.1814562014994 242 163.1814562014994
		 243 41.541277398150058 338 41.541277398150058 339 64.641001168650703 458 47.853420631314684
		 786 55.801356799663729 1014 55.801356799663729;
	setAttr -s 8 ".kot[1:7]"  5 1 5 1 5 1 5;
	setAttr -s 8 ".kix[0:7]"  1 1 1 1 0.041666666666662522 4.9583333333333357 
		1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 -0.41968975630942396 -0.0034682695139522934 
		0 0;
	setAttr -s 8 ".kox[0:7]"  1 0 1 0 4.9583333333333357 0 1 0;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 -49.943081000820555 0 0 0;
createNode animCurveTA -n "ubercam_rotateX";
	rename -uid "9FFC0313-4E0A-45BA-6A96-F2BFED43E743";
	setAttr ".tan" 1;
	setAttr -s 8 ".ktv[0:7]"  0 0 242 0 243 -36.938352729605853 338 -36.938352729605853
		 339 0.0049297185471733349 458 24.187029060259441 786 25.851799462949749 1014 25.851799462949749;
	setAttr -s 8 ".kot[1:7]"  5 1 5 1 5 1 5;
	setAttr -s 8 ".kix[0:7]"  1 1 1 1 0.041666666666662522 4.9583333333333357 
		1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0.00017160296478742487 0.020420752809704457 
		0 0;
	setAttr -s 8 ".kox[0:7]"  1 0 1 0 4.9583333333333357 0 1 0;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0.020420752809703843 0 0 0;
createNode animCurveTA -n "ubercam_rotateY";
	rename -uid "257CDAF0-42AF-4C6A-AD9C-5D9D955D764E";
	setAttr ".tan" 1;
	setAttr -s 8 ".ktv[0:7]"  0 0 242 0 243 15.400000000000407 338 15.400000000000407
		 339 -0.002343556529936678 458 -11.498358243279668 786 -12.716238877229182 1014 -12.716238877229182;
	setAttr -s 8 ".kot[1:7]"  5 1 5 1 5 1 5;
	setAttr -s 8 ".kix[0:7]"  1 1 1 1 0.041666666666662522 4.9583333333333357 
		1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 -8.1578947121567383e-05 -0.0097078947074670241 
		0 0;
	setAttr -s 8 ".kox[0:7]"  1 0 1 0 4.9583333333333357 0 1 0;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 -0.0097078947074666511 0 0 0;
createNode animCurveTA -n "ubercam_rotateZ";
	rename -uid "053765BC-42A0-FFC1-C2EA-DD86DDD13B5E";
	setAttr ".tan" 1;
	setAttr -s 8 ".ktv[0:7]"  0 -1.9413629656111229e-18 242 -1.9413629656111229e-18
		 243 0 338 0 339 7.6987499907074232e-06 458 0.037772925162164468 786 0.6414120180096119
		 1014 0.6414120180096119;
	setAttr -s 8 ".kot[1:7]"  5 1 5 1 5 1 5;
	setAttr -s 8 ".kix[0:7]"  1 1 1 1 0.041666666666662522 4.9583333333333357 
		1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 2.6799264723136771e-07 3.1891125020534327e-05 
		0 0;
	setAttr -s 8 ".kox[0:7]"  1 0 1 0 4.9583333333333357 0 1 0;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 3.1891125020533202e-05 0 0 0;
createNode animCurveTU -n "ubercamShape_renderable";
	rename -uid "A837E75E-466A-9AD1-448F-97AA4D25F516";
	setAttr ".tan" 1;
	setAttr -s 8 ".ktv[0:7]"  0 1 242 1 243 0 338 0 339 0 458 0 786 0
		 1014 0;
	setAttr -s 8 ".kot[1:7]"  5 1 5 1 5 1 5;
	setAttr -s 8 ".kwl[0:7]" yes yes yes yes yes yes yes yes;
	setAttr -s 8 ".kix[0:7]"  1 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[0:7]"  1 0 1 0 1 0 1 0;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 0 0;
createNode animCurveTL -n "ubercamShape_centerOfInterest";
	rename -uid "2F1CF1A8-49BF-AD70-6576-63952E64DB1D";
	setAttr ".tan" 1;
	setAttr -s 8 ".ktv[0:7]"  0 161.61805477630759 242 161.61805477630759
		 243 35.39033897087068 338 35.39033897087068 339 15.489222612155167 458 15.489222612155167
		 786 61.774965130806372 1014 61.774965130806372;
	setAttr -s 8 ".kot[1:7]"  5 1 5 1 5 1 5;
	setAttr -s 8 ".kwl[0:7]" yes yes yes yes yes yes yes yes;
	setAttr -s 8 ".kix[0:7]"  1 1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[0:7]"  0 0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[0:7]"  1 0 1 0 1 0 1 0;
	setAttr -s 8 ".koy[0:7]"  0 0 0 0 0 0 0 0;
createNode reference -n "Bow_BottomCTRLRN";
	rename -uid "6B2E9EF0-45B5-5662-C6F3-8EA122468DB0";
	setAttr -s 17 ".phl";
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
	setAttr ".ed" -type "dataReferenceEdits" 
		"Bow_BottomCTRLRN"
		"Bow_BottomCTRLRN" 0
		"Bow_BottomCTRLRN" 180
		0 "|Bow_BottomCTRLRNfosterParent1|griff_lowShapeDeformed" "|Bow_BottomCTRL:Geige_BowBottom|Bow_BottomCTRL:bogen_ctrlBottom|Bow_BottomCTRL:bogen_LP_pivotBottom|Bow_BottomCTRL:griff_low" 
		"-s -r "
		0 "|Bow_BottomCTRLRNfosterParent1|sehne_lowShapeDeformed" "|Bow_BottomCTRL:Geige_BowBottom|Bow_BottomCTRL:bogen_ctrlBottom|Bow_BottomCTRL:bogen_LP_pivotBottom|Bow_BottomCTRL:sehne_low" 
		"-s -r "
		0 "|Bow_BottomCTRLRNfosterParent1|metall_lowShapeDeformed" "|Bow_BottomCTRL:Geige_BowBottom|Bow_BottomCTRL:bogen_ctrlBottom|Bow_BottomCTRL:bogen_LP_pivotBottom|Bow_BottomCTRL:metall_low" 
		"-s -r "
		2 "|Bow_BottomCTRL:Geige_BowBottom" "translate" " -type \"double3\" 5.985 -15.583 27.909"
		
		2 "|Bow_BottomCTRL:Geige_BowBottom" "rotate" " -type \"double3\" 86.032 0 0"
		
		2 "|Bow_BottomCTRL:Geige_BowBottom|Bow_BottomCTRL:bogen_ctrlBottom|Bow_BottomCTRL:bogen_LP_pivotBottom|Bow_BottomCTRL:griff_low|Bow_BottomCTRL:griff_lowShape" 
		"intermediateObject" " 1"
		2 "|Bow_BottomCTRL:Geige_BowBottom|Bow_BottomCTRL:bogen_ctrlBottom|Bow_BottomCTRL:bogen_LP_pivotBottom|Bow_BottomCTRL:griff_low|Bow_BottomCTRL:griff_lowShape" 
		"uvPivot" " -type \"double2\" 0.5 0.27678948640823364"
		2 "|Bow_BottomCTRL:Geige_BowBottom|Bow_BottomCTRL:bogen_ctrlBottom|Bow_BottomCTRL:bogen_LP_pivotBottom|Bow_BottomCTRL:griff_low|Bow_BottomCTRL:griff_lowShape" 
		"uvSet[0].uvSetName" " -type \"string\" \"map1\""
		2 "|Bow_BottomCTRL:Geige_BowBottom|Bow_BottomCTRL:bogen_ctrlBottom|Bow_BottomCTRL:bogen_LP_pivotBottom|Bow_BottomCTRL:griff_low|Bow_BottomCTRL:griff_lowShape" 
		"uvSet[0].uvSetPoints" " -s 461"
		2 "|Bow_BottomCTRL:Geige_BowBottom|Bow_BottomCTRL:bogen_ctrlBottom|Bow_BottomCTRL:bogen_LP_pivotBottom|Bow_BottomCTRL:griff_low|Bow_BottomCTRL:griff_lowShape" 
		"uvst[0].uvsp[0:249]" (" -type \"float2\" 0.071576528 0.39032876 0.071593165 0.40263164000000001 0.071573988000000005 0.41493434000000001 0.071537346000000002 0.42724156000000002 0.071506046000000004 0.43955498999999998 0.071511403000000001 0.35339034000000003 0.071513377000000003 0.36570868000000001 0.071542136000000006 0.37802169000000002 0.95258635000000003 0.13081487999999999 0.93709933999999995 0.065978049999999996 0.93726098999999996 0.053686362000000001 0.93679345000000003 0.04140228 0.93606621000000001 0.031154036999999999 0.93490779000000002 0.018932264000000001 0.93362277999999999 0.0067041484000000002 0.93577284000000005 0.088488108999999995 0.93662696999999995 0.076241097999999993 0.97388947000000003 0.016098841999999999 0.97823203000000003 0.028132284 0.97885442 0.078213498000000006 0.97481262999999996 0.090351254000000006 0.98152225999999998 0.066134668999999993 0.98197179999999995 0.053130391999999999 0.28649119000000001 0.46880140999999997 0.28649119000000001 0.45564026000000002 0.98119931999999999 0.040141339999999998"
		+ " 0.67927694000000005 0.473212 0.67860997000000001 0.46085745 0.10518223 0.53551996000000002 0.27337657999999998 0.46880140999999997 0.27337657999999998 0.45564026000000002 0.27337657999999998 0.48110439999999999 0.69700110000000004 0.45882647999999998 0.25650637999999998 0.45564026000000002 0.25650637999999998 0.46880140999999997 0.27337657999999998 0.46880140999999997 0.97125130999999998 0.00390625 0.12867176999999999 0.50528055000000005 0.66645889999999997 0.43451113000000002 0.11732984 0.50917155000000003 0.12774879 0.48185259000000003 0.66799259 0.40716654000000002 0.11579108 0.48182708000000002 0.75165318999999997 0.40986991 0.73824244999999999 0.41544583000000002 0.76538295000000001 0.41460427999999999 0.23675520999999999 0.46880140999999997 0.23675520999999999 0.48110439999999999 0.71397591000000005 0.42533839000000001 0.21599983 0.46880140999999997 0.080668091999999997 0.51608127000000004 0.21599983 0.45564026000000002 0.73282831999999998 0.40987667 0.19153 0.46880140999999997 0.76074355999999999 0.40"
		+ "123254000000003 0.16140932 0.46880140999999997 0.023039042999999999 0.47590873 0.77669948 0.39868024000000002 0.14564741 0.46880140999999997 0.14564741 0.45564026000000002 0.74866080000000002 0.52085232999999997 0.75517498999999999 0.52347171000000003 0.76151460000000004 0.52045399000000003 0.69020724 0.43326967999999999 0.67970549999999996 0.44815834999999998 0.10408443000000001 0.52282101000000003 0.093580364999999999 0.50793414999999997 0.69390953 0.40696832999999999 0.089874148000000001 0.48163325000000001 0.73862117999999999 0.44187361000000003 0.76664233000000004 0.44100468999999998 0.74156635999999998 0.48099135999999998 0.74633740999999998 0.51072896000000001 0.76320642000000005 0.51020597999999995 0.76612639000000005 0.48023215000000002 0.050955355000000001 0.48454836000000001 0.95953487999999998 0.053409364000000001 0.95893251999999995 0.040663618999999998 0.95707750000000003 0.029446514 0.95439649000000004 0.017265761000000001 0.95375365000000001 0.10195334 0.95529646000000001 0.089669548000000002 "
		+ "0.95767420999999997 0.077425784999999997 0.95925009000000006 0.066166385999999994 0.75263314999999997 0.44148734000000001 0.75384629000000003 0.48061362000000002 0.75477176999999995 0.51045573 0.73752379000000001 0.41504973000000001 0.12921589999999999 0.45631483 0.11537838 0.45560690999999998 0.089445114000000006 0.4557696 0.050604582000000002 0.45561310999999999 0.020904183 0.45789489 0.13297063000000001 0.45564026000000002 0.13297063000000001 0.46880140999999997 0.77987397000000003 0.38710265999999999 0.76287495999999999 0.38321829000000002 0.73317288999999997 0.38094169 0.69433409000000001 0.38110438000000002 0.49005607000000001 0.067425921999999999 0.48997130999999999 0.059256217999999999 0.4898518 0.051086381 0.48970717000000002 0.042918798000000001 0.48956597000000002 0.034755725000000001 0.48946208000000002 0.026596175999999999 0.49017720999999997 0.083754882000000003 0.49011514 0.075592794000000005 0.64088184000000004 0.16179213000000001 0.64072317000000001 0.15034710000000001 0.64059776000000002 0.1"
		+ "3890152 0.64050048999999998 0.12745565 0.64042294 0.11600909 0.64035481000000005 0.10456308 0.64127588000000002 0.18468018999999999 0.64106929000000001 0.17323658 0.74353153000000005 0.064844265999999998 0.74346124999999996 0.072637438999999998 0.74335015000000004 0.081387497000000003 0.74247640000000004 0.022070032 0.74272084000000005 0.030816985000000002 0.74304974000000001 0.039561688999999997 0.74331427000000005 0.047350634000000003 0.74349988 0.056096463999999999 0.84033656000000001 0.064506225 0.84005552999999999 0.072754159999999998 0.83953266999999998 0.082330561999999996 0.83806610000000004 0.017940424 0.83885085999999998 0.027481444000000001 0.83961147000000003 0.037041775999999998 0.84009754999999997 0.045280263000000001 0.84038787999999998 0.054891057 0.61686300999999999 0.066615924000000007 0.61682605999999995 0.057673453999999999 0.61663984999999999 0.048732947999999998 0.61636257000000005 0.040300347 0.61604535999999999 0.031352941000000002 0.61669700999999999 0.092967875000000005 0.61670124999"
		+ "999998 0.084005095000000002 0.61679572000000005 0.075052753 0.27000189000000002 0.071083284999999996 0.27020287999999998 0.080171667000000002 0.27045268 0.089258768000000002 0.26983801000000002 0.025638733 0.26977520999999999 0.034727391000000003 0.26975185000000002 0.043816473000000002 0.26977627999999998 0.052905407000000002 0.26985832999999998 0.061994631000000001 0.0042274295999999998 0.076039374000000007 0.92405778000000005 0.14683225999999999 0.92395311999999996 0.13608555 0.92390280999999996 0.12533772000000001 0.92389845999999998 0.11458904 0.92499803999999997 0.18981680000000001 0.92469763999999999 0.17906995000000001 0.92443567999999998 0.16832380999999999 0.22716722 0.16741054 0.51617139999999995 0.40028237999999999 0.35762966000000002 0.40028237999999999 0.094794996000000006 0.15714747000000001 0.094713098999999995 0.1450825 0.22698557 0.15549175000000001 0.094738469000000006 0.13301626999999999 0.22687012000000001 0.14357169 0.094790131 0.12094764 0.22680557000000001 0.13165262 0.0960211380000000"
		+ "06 0.20539874 0.22675567999999999 0.11973411 0.095698549999999993 0.19333574000000001 0.22668377000000001 0.1078156 0.095344103999999999 0.18127204 0.22764656 0.19124474 0.095015951000000001 0.16921061000000001 0.22739966 0.17932835 0.29336283000000002 0.39030227000000001 0.34904107000000001 0.40255239999999998 0.29337382000000001 0.40261935999999998 0.34904221000000002 0.41492628999999998 0.29337183 0.41493701999999999 0.34901907999999998 0.42729371999999999 0.29335776000000002 0.42725495000000002 0.34896411999999999 0.43964803000000002 0.29333379999999998 0.439574 0.34868949999999999 0.35309288 0.29330729999999999 0.45189717000000001 0.34886908999999999 0.36544125999999999 0.29330787000000003 0.36566781999999998 0.34896242999999999 0.37780476000000002 0.29334 0.37798533000000001 0.34901570999999998 0.39017695000000002 0.64415944000000003 0.46210532999999998 0.64415944000000003 0.44047134999999998 0.64415944000000003 0.44047134999999998 0.64415944000000003 0.41890031 0.64415944000000003 0.41890031 0.64415944"
		+ "000000003 0.39755564999999998 0.64415944000000003 0.39755564999999998 0.64415944000000003 0.37704489000000002 0.64415944000000003 0.37704489000000002 0.64415944000000003 0.52116161999999999 0.64415944000000003 0.37194284999999999 0.64415944000000003 0.50350004000000004 0.64415944000000003 0.50350004000000004 0.64415944000000003 0.483318 0.64415944000000003 0.483318 0.64415944000000003 0.46210532999999998 0.51617139999999995 0.41647171999999999 0.35849883999999999 0.40028237999999999 0.51617139999999995 0.43264448999999999 0.35849883999999999 0.41647171999999999 0.51617139999999995 0.44880082999999998 0.35849883999999999 0.43264448999999999 0.51617139999999995 0.46482569000000001 0.35849883999999999 0.44880082999999998 0.51617139999999995 0.35301062 0.35849883999999999 0.46482569000000001 0.51617139999999995 0.36808822000000002 0.35849883999999999 0.47992509999999999 0.51617139999999995 0.38405328999999999 0.35849883999999999 0.36808822000000002 0.35849883999999999 0.38405328999999999 0.0045185941000000004 0.3"
		+ "9029622000000003 0.0045515796999999998 0.40261765999999999 0.0045149294000000001 0.41493899000000001 0.0044094887999999999 0.42724394999999998 0.0043212455000000002 0.43952847 0.0043669184999999998 0.45179429999999998 0.0043347784999999998 0.365706 0.0044176648000000002 0.37799095999999999 0.52092636000000003 0.41647171999999999 0.51703858000000003 0.40028237999999999 0.35376333999999998 0.40028237999999999 0.35762966000000002 0.41647171999999999 0.52092636000000003 0.43264448999999999 0.51703858000000003 0.41647171999999999 0.35376333999999998 0.41647171999999999 0.35762966000000002 0.43264448999999999 0.52092636000000003 0.44880082999999998 0.51703858000000003 0.43264448999999999 0.35376333999999998 0.43264448999999999 0.35762966000000002 0.44880082999999998 0.52092636000000003 0.46482569000000001 0.51703858000000003 0.44880082999999998 0.35376333999999998 0.44880082999999998 0.35762966000000002 0.46482569000000001 0.52092636000000003 0.35301062 0.51703858000000003 0.46482569000000001 0.35376333999999998 0."
		+ "46482569000000001 0.35762966000000002 0.35301062 0.52092636000000003 0.36808822000000002 0.51703858000000003 0.47992509999999999"
		)
		2 "|Bow_BottomCTRL:Geige_BowBottom|Bow_BottomCTRL:bogen_ctrlBottom|Bow_BottomCTRL:bogen_LP_pivotBottom|Bow_BottomCTRL:griff_low|Bow_BottomCTRL:griff_lowShape" 
		"uvst[0].uvsp[250:460]" (" 0.35376333999999998 0.47992509999999999 0.35762966000000002 0.36808822000000002 0.52092636000000003 0.38405328999999999 0.51703858000000003 0.36808822000000002 0.35376333999999998 0.36808822000000002 0.35762966000000002 0.38405328999999999 0.52092636000000003 0.40028237999999999 0.51703858000000003 0.38405328999999999 0.35376333999999998 0.38405328999999999 0.34942958000000002 0.39017384999999999 0.64415944000000003 0.44047134999999998 0.64415944000000003 0.41890031 0.64415944000000003 0.39755564999999998 0.64415944000000003 0.37704489000000002 0.64415944000000003 0.50885552000000001 0.64415944000000003 0.50350004000000004 0.64415944000000003 0.483318 0.63932186000000002 0.46210532999999998 0.63932186000000002 0.44047134999999998 0.63932186000000002 0.41890031 0.63932186000000002 0.39755564999999998 0.63932186000000002 0.37704489000000002 0.63932186000000002 0.52753585999999997 0.63932186000000002 0.50350004000000004 0.63932186000000002 0.483318 0.094602160000000005 0.16921723 0.35335847999999997 0.416471719"
		+ "99999999 0.35335847999999997 0.43264448999999999 0.35335847999999997 0.44880082999999998 0.35335847999999997 0.46482569000000001 0.35335847999999997 0.35301062 0.35335847999999997 0.36808822000000002 0.35335847999999997 0.38405328999999999 0.0041050082000000003 0.39029369000000003 0.0041379937999999998 0.40261781000000002 0.0041021890999999996 0.41494154999999999 0.0039953389000000001 0.42724863000000002 0.00390625 0.43953836000000002 0.0039727842000000001 0.35336030000000002 0.0039200642999999997 0.36569613000000001 0.52133571999999995 0.38405328999999999 0.51660835999999999 0.40028237999999999 0.51660835999999999 0.41647171999999999 0.35806015000000002 0.41647171999999999 0.35806015000000002 0.40028237999999999 0.51660835999999999 0.43264448999999999 0.35806015000000002 0.43264448999999999 0.51660835999999999 0.44880082999999998 0.35806015000000002 0.44880082999999998 0.51660835999999999 0.46482569000000001 0.35806015000000002 0.46482569000000001 0.51660835999999999 0.35301062 0.35806015000000002 0.35301062"
		+ " 0.51660835999999999 0.36808822000000002 0.35806015000000002 0.36808822000000002 0.51660835999999999 0.38405328999999999 0.35806015000000002 0.38405328999999999 0.96738404 0.13698088999999999 0.96273505999999998 0.15545183000000001 0.96740996999999995 0.12465788 0.97718382000000004 0.14100594999999999 0.95871477999999999 0.1159258 0.97718548999999999 0.12057447 0.94639181999999999 0.11589985999999999 0.96273964999999995 0.10612604 0.93765944000000001 0.12459531 0.94230842999999997 0.10612463 0.93763350999999995 0.13691802 0.92786031999999996 0.12057025 0.94632864000000005 0.1456501 0.927858 0.14100143000000001 0.95865166000000002 0.14567632999999999 0.94230336000000003 0.15544986999999999 0.63888173999999998 0.46210532999999998 0.53740953999999996 0.44047134999999998 0.63888173999999998 0.44047134999999998 0.53740953999999996 0.41890031 0.63888173999999998 0.41890031 0.53740953999999996 0.39755564999999998 0.63888204000000004 0.39755564999999998 0.53740953999999996 0.37704489000000002 0.63888173999999998 0.37"
		+ "704489000000002 0.53740953999999996 0.52753585999999997 0.63888173999999998 0.35301062 0.53740953999999996 0.50350004000000004 0.63888173999999998 0.50350004000000004 0.53740953999999996 0.483318 0.63888173999999998 0.483318 0.53740953999999996 0.46210532999999998 0.64415944000000003 0.46210532999999998 0.34937628999999998 0.37779868 0.34928298000000002 0.36542886000000002 0.34925025999999998 0.45205507 0.34937826 0.43965763000000002 0.34943295000000002 0.42729764999999997 0.34945579999999998 0.41492741999999999 0.34945493999999999 0.40255126000000002 0.525289 0.50350004000000004 0.525289 0.483318 0.525289 0.35301062 0.525289 0.37704489000000002 0.525289 0.39755564999999998 0.525289 0.41890031 0.525289 0.44047134999999998 0.525289 0.46210532999999998 0.53740953999999996 0.35301062 0.63888173999999998 0.52753585999999997 0.525289 0.52753585999999997 0.35762966000000002 0.47992509999999999 0.35376333999999998 0.35301062 0.52092636000000003 0.47992509999999999 0.51703858000000003 0.35301062 0.071501530999999993 "
		+ "0.45187461000000001 0.0043869353999999999 0.35343996 0.51617139999999995 0.47992509999999999 0.35849883999999999 0.35301062 0.64415944000000003 0.35999 0.64415944000000003 0.50924062999999997 0.34883639 0.45197511000000001 0.29327151000000001 0.35334789999999999 0.094810783999999995 0.10888014 0.22787160000000001 0.20316139999999999 0.35806015000000002 0.47992509999999999 0.51660835999999999 0.47992509999999999 0.0039533316000000002 0.45187347999999999 0.35335847999999997 0.47992509999999999 0.63932186000000002 0.35301062 0.64415944000000003 0.37233107999999998 0.34910169000000002 0.35301059000000001 0.64149206999999997 0.19612352999999999 0.92393225000000001 0.10383882 0.27074134 0.098344892000000003 0.49027690000000002 0.091912031000000005 0.61581772999999995 0.022393265999999998 0.74332339000000003 0.090137838999999997 0.83898585999999997 0.091888211999999997 0.93479263999999995 0.10074442 0.65456331000000001 0.38165641 0.95254826999999997 0.0050241123000000004 0.13572608999999999 0.51841110000000001 0.656"
		+ "03500999999997 0.4071939 0.65511589999999997 0.43062194999999998 0.52133571999999995 0.36808822000000002 0.0040040789000000002 0.37798619 0.52133571999999995 0.47992509999999999 0.52133571999999995 0.35301062 0.52133571999999995 0.46482569000000001 0.52133571999999995 0.44880082999999998 0.52133571999999995 0.43264448999999999 0.52133571999999995 0.41647171999999999 0.52133571999999995 0.40028237999999999 0.35335847999999997 0.40028237999999999 0.094930813000000003 0.18128063999999999 0.095285043 0.19334912000000001 0.094396285999999996 0.10880753999999999 0.095609605 0.20548177000000001 0.094376974000000002 0.12094468 0.094324611000000003 0.13301810999999999 0.094297892999999994 0.14508660000000001 0.094380855999999999 0.15715267999999999 0.73752302000000003 0.44186908000000003 0.66840082000000001 0.38094607000000003 0.74065554 0.48099758999999997 0.74449759999999998 0.51077938000000001 0.74871938999999998 0.52791684999999999 0.75545072999999996 0.53235661999999995 0.76189381 0.52750832000000003 0.7650457000"
		+ "0000005 0.51014227000000001 0.76703560000000004 0.48018166000000001 0.76773793000000001 0.44093251 0.76607566999999999 0.41416445000000002 0.75122213000000004 0.40911913 0.75203681 0.40909403999999999 0.12662321000000001 0.52600455000000002 0.65716772999999995 0.45134568000000003 0.64806324000000004 0.44375381000000003 0.97247863000000001 0.10260574 0.12170482000000001 0.53773576000000001 0.11802453 0.54967272 0.66208792000000005 0.46307622999999998 0.30060077000000002 0.48110439999999999 0.30060077000000002 0.46880140999999997 0.25650637999999998 0.48110439999999999 0.70312118999999995 0.44141465000000002 0.086791635000000006 0.53349208999999997 0.23675520999999999 0.45564026000000002 0.069810569000000003 0.50000668000000004 0.19153 0.45564026000000002 0.16140932 0.45564026000000002 0.0070830583999999999 0.47335926 0.00390625 0.46178209999999997 0.14564741 0.48110439999999999 0.13297063000000001 0.48110439999999999 0.16140932 0.48110439999999999 0.19153 0.48110439999999999 0.21599983 0.48110439999999999 0.09"
		+ "1168225000000006 0.54632354000000005 0.69262617999999998 0.47165877 0.28649119000000001 0.48110439999999999 0.10451746000000001 0.54787469 0.66577047 0.47501241999999999 0.30060077000000002 0.45564026000000002 0.0044434964999999996 0.086785375999999997 0.92421967000000005 0.15757824000000001 0.0047054588999999999 0.097531936999999999 0.0039399862000000004 0.022297833 0.0050058663 0.10827921 0.00390625 0.033048480999999998 0.0039106011000000001 0.043797579000000003 0.0039609075000000002 0.054545835000000001 0.0040655433999999997 0.065292961999999996"
		)
		2 "|Bow_BottomCTRL:Geige_BowBottom|Bow_BottomCTRL:bogen_ctrlBottom|Bow_BottomCTRL:bogen_LP_pivotBottom|Bow_BottomCTRL:griff_low|Bow_BottomCTRL:griff_lowShape" 
		"displayColors" " 1"
		2 "|Bow_BottomCTRL:Geige_BowBottom|Bow_BottomCTRL:bogen_ctrlBottom|Bow_BottomCTRL:bogen_LP_pivotBottom|Bow_BottomCTRL:sehne_low|Bow_BottomCTRL:sehne_lowShape" 
		"intermediateObject" " 1"
		2 "|Bow_BottomCTRL:Geige_BowBottom|Bow_BottomCTRL:bogen_ctrlBottom|Bow_BottomCTRL:bogen_LP_pivotBottom|Bow_BottomCTRL:sehne_low|Bow_BottomCTRL:sehne_lowShape" 
		"uvPivot" " -type \"double2\" 0.498046875 0.26730000972747803"
		2 "|Bow_BottomCTRL:Geige_BowBottom|Bow_BottomCTRL:bogen_ctrlBottom|Bow_BottomCTRL:bogen_LP_pivotBottom|Bow_BottomCTRL:sehne_low|Bow_BottomCTRL:sehne_lowShape" 
		"uvSet[0].uvSetName" " -type \"string\" \"map1\""
		2 "|Bow_BottomCTRL:Geige_BowBottom|Bow_BottomCTRL:bogen_ctrlBottom|Bow_BottomCTRL:bogen_LP_pivotBottom|Bow_BottomCTRL:sehne_low|Bow_BottomCTRL:sehne_lowShape" 
		"uvst[0].uvsp[0:140]" (" -s 141 -type \"float2\" 0.083524904999999997 0.33786358999999999 0.0043413936999999996 0.25747018999999999 0.99581253999999997 0.24960876000000001 0.99581306999999997 0.24979346999999999 0.083378240000000006 0.31797641999999998 0.99578111999999996 0.30993429 0.99581306999999997 0.23096781999999999 0.99581306999999997 0.25985032000000002 0.99599230000000005 0.34045135999999998 0.082956961999999995 0.28856271999999999 0.083533332000000002 0.34565824000000001 0.99581253999999997 0.22072597999999999 0.99581306999999997 0.22091094 0.0040678679999999997 0.22858903999999999 0.99565309000000002 0.29911330000000003 0.083215154999999999 0.30805170999999998 0.083223729999999996 0.30824688 0.033112838999999998 0.33735241999999999 0.033112838999999998 0.31465152000000002 0.033112838999999998 0.31611531999999998 0.033112838999999998 0.33595195 0.99594318999999998 0.32962981000000002 0.99581253999999997 0.23115252999999999 0.99581306999999997 0.27588596999999998 0.064661949999999996 0.30974436 0.064459659000000002 0.31752712"
		+ " 0.083380856000000003 0.31817189000000001 0.064108818999999997 0.33727199000000002 0.063914515000000005 0.34447907999999999 0.063881702999999998 0.34733319000000001 0.049303513 0.31204227000000001 0.064680681000000004 0.30993867000000003 0.049079150000000002 0.31688612999999999 0.064453565000000004 0.31772316 0.048482601 0.33661356999999997 0.064105041000000001 0.33746832999999998 0.048381238999999999 0.34145278000000001 0.046686991999999997 0.29259162999999999 0.033112838999999998 0.34028202000000002 0.049333139999999998 0.31223687999999999 0.033112838999999998 0.31487489000000002 0.04907044 0.31708160000000002 0.033112838999999998 0.31632152000000002 0.048477082999999997 0.33680904 0.033112838999999998 0.33614713000000002 0.083524473000000002 0.33766842000000002 0.0041893423000000001 0.23883007000000001 0.00390625 0.20994852 0.034367949000000002 0.29503270999999998 0.034367949000000002 0.33758621999999999 0.034367949000000002 0.33617443000000002 0.034367803000000002 0.33597869000000002 0.034367803000000002 "
		+ "0.31635085000000002 0.034367803000000002 0.31615248000000001 0.034367949000000002 0.31472181999999999 0.034367803000000002 0.31452112999999998 0.078288674000000003 0.33775844999999999 0.078200384999999997 0.34605788999999998 0.077451936999999998 0.28889643999999998 0.078290558999999996 0.30830294000000003 0.078302181999999998 0.30849755000000001 0.078306682000000002 0.3179709 0.078306973000000002 0.31816345000000001 0.078289837000000001 0.33756533 0.030697588000000001 0.29537573 0.030697588000000001 0.29513031000000001 0.030697588000000001 0.31487950999999997 0.032273772999999999 0.31487950999999997 0.078180632999999999 0.34949606999999999 0.062740296000000001 0.29030182999999998 0.034367949000000002 0.34058902000000002 0.048335350999999999 0.34444859999999999 0.083528392000000007 0.34928315999999998 0.0043880938999999999 0.27588596999999998 0.99581306999999997 0.20227017 0.033016704000000001 0.31489550999999999 0.033112838999999998 0.29513031000000001 0.031532004000000002 0.29513031000000001 0.00438702110000"
		+ "00001 0.26752731000000002 0.99594413999999998 0.32982495000000001 0.0041871666999999998 0.23864508000000001 0.99565506000000004 0.29930907000000001 0.0040659605999999997 0.22840378 0.99599349000000004 0.34928315999999998 0.99548435000000002 0.27961343999999999 0.0043405592 0.25728548000000001 0.99578345000000001 0.31012975999999998 0.77302152000000002 0.33159378 0.77302234999999997 0.33178896000000002 0.77306079999999999 0.34172350000000001 0.77306050000000004 0.34928315999999998 0.77253616000000003 0.28179990999999999 0.77272671000000004 0.30129713000000002 0.77273029000000004 0.30149274999999998 0.77286326999999999 0.31189913000000002 0.77286571000000004 0.3120946 0.55882275000000003 0.31378572999999998 0.55882525000000005 0.31398121000000001 0.55897730999999995 0.33347958 0.55897796 0.33367472999999997 0.55900711000000003 0.34294498000000001 0.55900538 0.34928315999999998 0.55846642999999996 0.28389934 0.55867796999999997 0.30339399 0.55868304000000002 0.30358945999999998 0.31131428 0.31596732 0.3113168499"
		+ "9999998 0.31616279000000003 0.31146452000000002 0.33566022000000001 0.31146505000000002 0.33585535999999999 0.31148341000000002 0.34435746 0.31148002000000002 0.34928315999999998 0.31092417 0.286327 0.31115997000000001 0.30581873999999998 0.31116687999999998 0.30601405999999998 0.29330816999999998 0.22634973999999999 0.29330665 0.22616458 0.29353499 0.27588596999999998 0.29319367000000002 0.20770916 0.29353422000000001 0.26528835000000001 0.29350190999999998 0.25523129 0.29350116999999998 0.25504658000000002 0.29339406000000001 0.23659092000000001 0.29339266000000003 0.23640602999999999 0.58372950999999995 0.23415822 0.58373010000000003 0.23434302000000001 0.58379292000000005 0.25279890999999999 0.58379358000000003 0.25298363000000001 0.58381253 0.26304060000000001 0.58381300999999997 0.27588596999999998 0.58361273999999996 0.20546102999999999 0.58367884000000003 0.22391660999999999 0.58367990999999997 0.22410168999999999 0.81063240999999997 0.23240151000000001 0.81063235 0.23258625999999999 0.810660599999999"
		+ "95 0.25104233999999997 0.81066119999999997 0.25122705000000001 0.81066972000000004 0.26128395999999998 0.81066990000000005 0.27588596999999998 0.81057995999999999 0.20370405999999999 0.81060933999999996 0.22215977000000001 0.81061011999999999 0.22234478999999999"
		)
		2 "|Bow_BottomCTRL:Geige_BowBottom|Bow_BottomCTRL:bogen_ctrlBottom|Bow_BottomCTRL:bogen_LP_pivotBottom|Bow_BottomCTRL:sehne_low|Bow_BottomCTRL:sehne_lowShape" 
		"displayColors" " 1"
		2 "|Bow_BottomCTRL:Geige_BowBottom|Bow_BottomCTRL:bogen_ctrlBottom|Bow_BottomCTRL:bogen_LP_pivotBottom|Bow_BottomCTRL:metall_low|Bow_BottomCTRL:metall_lowShape" 
		"intermediateObject" " 1"
		2 "|Bow_BottomCTRL:Geige_BowBottom|Bow_BottomCTRL:bogen_ctrlBottom|Bow_BottomCTRL:bogen_LP_pivotBottom|Bow_BottomCTRL:metall_low|Bow_BottomCTRL:metall_lowShape" 
		"uvPivot" " -type \"double2\" 0.498046875 0.26730000972747803"
		2 "|Bow_BottomCTRL:Geige_BowBottom|Bow_BottomCTRL:bogen_ctrlBottom|Bow_BottomCTRL:bogen_LP_pivotBottom|Bow_BottomCTRL:metall_low|Bow_BottomCTRL:metall_lowShape" 
		"uvSet[0].uvSetName" " -type \"string\" \"map1\""
		2 "|Bow_BottomCTRL:Geige_BowBottom|Bow_BottomCTRL:bogen_ctrlBottom|Bow_BottomCTRL:bogen_LP_pivotBottom|Bow_BottomCTRL:metall_low|Bow_BottomCTRL:metall_lowShape" 
		"uvSet[0].uvSetPoints" " -s 358"
		2 "|Bow_BottomCTRL:Geige_BowBottom|Bow_BottomCTRL:bogen_ctrlBottom|Bow_BottomCTRL:bogen_LP_pivotBottom|Bow_BottomCTRL:metall_low|Bow_BottomCTRL:metall_lowShape" 
		"uvst[0].uvsp[0:249]" (" -type \"float2\" 0.77444296999999995 0.38125684999999998 0.30445156000000001 0.48363423 0.81788868000000003 0.38144094000000001 0.83100556999999997 0.38228756000000003 0.83998256999999998 0.38916825999999999 0.85838342000000001 0.49862590000000001 0.83989864999999997 0.40305299 0.85837036 0.48480984999999999 0.83153074999999999 0.41106631999999999 0.85837036 0.47465735999999997 0.81826275999999998 0.41360563 0.81826078999999996 0.43241774999999999 0.89764476000000004 0.39977460999999997 0.89997035000000003 0.43239039000000001 0.91342813 0.43240448999999997 0.92705673 0.43239518999999998 0.92892253000000002 0.39978912 0.99603343 0.40292456999999998 0.99605655999999998 0.3533732 0.99602329999999994 0.43239235999999998 0.90234022999999997 0.38867037999999998 0.91346055000000004 0.38409472 0.92424958999999995 0.38859072 0.99603646999999995 0.39395480999999999 0.90241444000000004 0.41084303999999999 0.91343622999999996 0.41524053 0.92453205999999999 0.41094130000000001 0.99602835999999995 0.41145145999999999 0.8179"
		+ "9268999999997 0.35319995999999998 0.83729421999999998 0.35326069999999998 0.85837722000000005 0.38902925999999999 0.85835808999999996 0.40284112 0.85835302000000002 0.41299021000000002 0.90004516000000001 0.35330158 0.91348344000000004 0.35329621999999999 0.92709397999999998 0.35331510999999999 0.33268565 0.50649816000000003 0.37613255000000001 0.50652945000000005 0.81798362999999996 0.53443593 0.77455622000000002 0.53460001999999995 0.38926657999999997 0.50653904999999999 0.83728623000000002 0.53438591999999996 0.40057015000000001 0.50654637999999996 0.41444092999999999 0.50655454 0.42602046999999998 0.50655824000000005 0.43950762999999998 0.50655514000000001 0.90232730000000005 0.49900946000000002 0.91347544999999997 0.50359714 0.91350036999999995 0.53437895000000002 0.90004980999999995 0.53437263000000002 0.92429220999999995 0.49908474000000003 0.92712212000000005 0.53435308000000004 0.99606335000000001 0.49367586000000002 0.090340100000000007 0.13474891 0.92897362000000006 0.48786195999999998 0.9245687700"
		+ "0000004 0.47668132000000002 0.99604583000000002 0.47617343000000001 0.99605632 0.48470297000000001 0.91344565 0.47236449000000003 0.90239811000000003 0.47677733999999999 0.89997154000000001 0.45523351000000001 0.91343658999999999 0.45521616999999998 0.92706639000000002 0.45523291999999999 0.99602895999999996 0.45523432000000003 0.89762056000000001 0.48787575999999999 0.81828475000000001 0.45525350999999997 0.73118519999999998 0.35301599 0.91346174000000002 0.38436311000000001 0.9240585 0.38877877999999999 0.92865419000000005 0.39979293999999999 0.92434174000000002 0.41075339999999999 0.91343719000000001 0.41497159 0.90260249000000004 0.41065148000000001 0.89791310000000002 0.39977336000000002 0.73118346999999995 0.37519541000000001 0.89798849999999997 0.48787606 0.90265715000000002 0.47703907000000001 0.91344809999999999 0.47273365000000001 0.92430853999999996 0.47694041999999998 0.92860514000000005 0.48785830000000002 0.92402881000000003 0.49882805000000002 0.91347544999999997 0.50322865999999999 0.77444541 "
		+ "0.38067733999999998 0.33210599000000002 0.50649792000000005 0.81789767999999996 0.50677430999999995 0.83118175999999999 0.50591737000000003 0.84049063999999996 0.49848323999999999 0.84042101999999996 0.48460317000000003 0.83229565999999999 0.47653868999999999 0.81832874 0.47326213 0.81826299000000002 0.41441619000000002 0.83225811000000005 0.41111790999999998 0.84039909000000002 0.40304678999999999 0.84048109999999998 0.38916430000000002 0.83117574000000005 0.38172581999999999 0.81789111999999997 0.38086157999999998 0.37613278999999999 0.506064 0.38926657999999997 0.50607329999999995 0.40057050999999999 0.50608092999999998 0.41444092999999999 0.50608909000000002 0.42602083000000002 0.50609278999999996 0.43950879999999998 0.50608969000000004 0.81828451000000002 0.45478803000000001 0.89997214000000003 0.45476802999999999 0.91343658999999999 0.45475167 0.92706579 0.45476731999999997 0.99602860000000004 0.45476886999999999 0.032291467999999997 0.13428034 0.040813493999999999 0.13428061999999999 0.0497776080000000"
		+ "01 0.13428118999999999 0.090340100000000007 0.13428316000000001 0.30443545999999999 0.50601214000000005 0.33210658999999998 0.50603217 0.33268588999999998 0.50603271000000005 0.37614884999999998 0.48409885000000002 0.38928264000000001 0.48410869000000001 0.40058645999999998 0.48411745 0.41445783000000003 0.48412928 0.42603936999999997 0.48414224 0.43952876000000002 0.48416197 0.81826138000000004 0.43283048000000002 0.89997070999999995 0.432803 0.91342776999999997 0.43281639 0.92705649000000001 0.43280776999999998 0.99602329999999994 0.43280481999999998 0.032293110999999999 0.11232194 0.040814667999999998 0.11232223 0.049778782000000001 0.11232279000000001 0.090341747 0.11232506 0.30445156000000001 0.48404697000000002 0.33212229999999998 0.48406669000000002 0.33270198000000001 0.48406726 0.81909858999999996 0.43178031 0.90002227000000001 0.43177297999999997 0.91342836999999999 0.43187898000000002 0.92700344000000001 0.43178003999999998 0.99602329999999994 0.43172336 0.012031057 0.11232082 0.01203047 0.13427921"
		+ "000000001 0.99602919999999995 0.45590334999999998 0.92701387000000002 0.45584809999999998 0.91343682999999998 0.45574149000000003 0.90002340000000003 0.4558509 0.81912315000000002 0.45589038999999998 0.81828672000000002 0.45590475000000003 0.81826102999999994 0.43159874999999998 0.77467631999999997 0.35301118999999997 0.77466672999999997 0.53459953999999998 0.77456272000000004 0.50693284999999999 0.33279648000000001 0.50649816000000003 0.33279671999999999 0.50603271000000005 0.33281279000000002 0.48406726 0.77455342000000005 0.38125741000000002 0.77455622000000002 0.38067775999999998 0.99564998999999998 0.35337305000000002 0.99568783999999999 0.53426622999999995 0.99563979999999996 0.49368867 0.99566012999999998 0.48470323999999998 0.99562466000000005 0.47615861999999998 0.99562269000000003 0.45590334999999998 0.99562287000000005 0.45523461999999998 0.99562234000000005 0.45476902000000002 0.99561727 0.43280497000000001 0.99561727 0.43239235999999998 0.99561666999999998 0.43172361999999997 0.99560683999999999 "
		+ "0.41146653999999999 0.99563736000000003 0.40292430000000001 0.99561303999999995 0.39394184999999998 0.91347825999999999 0.50524497000000002 0.90221792000000001 0.50066566000000001 0.90098756999999996 0.49907389000000002 0.89637721000000004 0.48787745999999999 0.90110820999999997 0.47682722999999999 0.90229570999999997 0.47540534000000001 0.91344528999999997 0.47102432999999999 0.92467480999999996 0.47532624000000001 0.92585516000000001 0.47675547000000001 0.93030058999999998 0.48786056 0.92564957999999997 0.49902355999999998 0.92441112000000003 0.50049281000000001 0.91346221999999999 0.38295742999999999 0.92433589999999999 0.38758510000000002 0.92539567 0.38863723999999999 0.92991263000000002 0.39979010999999998 0.92561375999999995 0.41088971000000002 0.92462515999999995 0.41207451 0.91343622999999996 0.41638458 0.90232246999999999 0.41203135000000002 0.90131861000000002 0.41080584999999997 0.89669894999999999 0.39977362999999999 0.90129285999999997 0.3886154 0.90227257999999999 0.3876656 0.77516609000000003 "
		+ "0.43250962999999998 0.77516549999999995 0.43169036999999999 0.48243292999999998 0.48365256000000001 0.48246731999999998 0.48406612999999998 0.77516717000000002 0.43292394000000001 0.77524048000000001 0.45600837 0.77520895000000001 0.45535274999999997 0.77526724000000002 0.47416469 0.77526671000000003 0.47335570999999999 0.77514117999999999 0.41449711 0.48274472000000002 0.50597351999999995 0.77522868 0.45489067 0.77490102999999999 0.43278229000000001 0.77477872000000003 0.43170953000000001 0.77487223999999999 0.41396368 0.48285660000000002 0.48442194 0.77478491999999999 0.43330552999999999 0.77485990999999999 0.45599443000000001 0.77484523999999999 0.45561326000000002 0.48295534000000001 0.50616497000000005 0.77487963000000004 0.47337460999999997 0.77475441 0.41447821000000001 0.48312706 0.50561040999999995 0.77484465000000002 0.45451248 0.77136629999999995 0.433588 0.77461517000000002 0.42878428000000002 0.77397411999999999 0.41747028000000003 0.48590451000000001 0.48424882000000002 0.77174967999999999 0.433"
		+ "74701999999998 0.77448720000000004 0.45895745999999998 0.77395099000000001 0.45920274 0.48632347999999997 0.50580042999999997 0.77450072999999997 0.47044977999999998 0.77459650999999996 0.41740501000000002 0.48606192999999998 0.50553793000000002 0.77181107000000004 0.45412438999999999 0.77535014999999996 0.43251023 0.77535074999999998 0.43292308000000002 0.77541190000000004 0.45488994999999999 0.77541351000000003 0.45535555 0.77542233000000005 0.45600735999999997 0.77544992999999995 0.47335586000000002 0.77545189999999997 0.47416638999999999 0.48256030999999999 0.50597382000000002 0.48228430999999999 0.48406865999999998 0.48226764999999999 0.48365649999999999 0.77532445999999999 0.41449680999999999 0.77534895999999998 0.43169025 0.80125725000000003 0.43244722000000002 0.80125785000000005 0.43285981000000001 0.80129784000000004 0.45482086999999999 0.80129892000000003 0.45528649999999998 0.80130034999999999 0.45593801 0.80134457000000003 0.47330075999999999 0.45651141000000001 0.50652945000000005 0.456515400000"
		+ "00002 0.506064 0.45652667000000002 0.48418313000000002 0.80123471999999996 0.41362566000000001"
		)
		2 "|Bow_BottomCTRL:Geige_BowBottom|Bow_BottomCTRL:bogen_ctrlBottom|Bow_BottomCTRL:bogen_LP_pivotBottom|Bow_BottomCTRL:metall_low|Bow_BottomCTRL:metall_lowShape" 
		"uvst[0].uvsp[250:357]" (" 0.80123633000000005 0.41443618999999998 0.80125581999999995 0.43162750999999999 0.48597223000000001 0.48427194000000001 0.48637008999999998 0.50580382000000002 0.48613118999999999 0.50552326000000003 0.48704237 0.48477519000000002 0.48736858 0.50545870999999998 0.48719214999999999 0.50510966999999996 0.64806324000000004 0.37518974999999999 0.90258603999999998 0.49874771000000001 0.65966332000000005 0.37519061999999997 0.67173486999999998 0.37519144999999998 0.68365246000000002 0.37519202000000001 0.69545436000000005 0.37519288000000001 0.70722717000000002 0.37519372000000001 0.71920276000000005 0.37519455000000002 0.71920443000000001 0.35301515 0.90252971999999998 0.38886026000000001 0.70722878 0.35301459000000002 0.69545555000000003 0.35301371999999998 0.68365293999999999 0.35301289000000002 0.671736 0.35301206000000002 0.65966504999999998 0.35301118999999997 0.74312365000000002 0.35301682000000001 0.77421390999999995 0.47034249 0.48631278 0.48407853000000001 0.48730719 0.48446423 0.77419512999999995 0.4704"
		+ "0957 0.48627134999999999 0.48408672000000003 0.4565208 0.48377067000000001 0.77532255999999999 0.41368624999999998 0.80134689999999997 0.47411129000000002 0.4825508 0.50643927 0.77513874000000005 0.41369006000000003 0.48272275999999997 0.50643866999999998 0.77499753000000005 0.47389561000000002 0.48264857999999999 0.48393023000000002 0.818331 0.47407278000000003 0.43952793000000001 0.48374924000000002 0.33281302000000001 0.48365453000000003 0.77456044999999996 0.50635350000000001 0.83156936999999997 0.47659122999999998 0.83992093999999995 0.48459685000000002 0.83999223000000001 0.49847901 0.83101201000000002 0.50535565999999998 0.81789511000000004 0.50619477000000002 0.42603936999999997 0.48372950999999997 0.41445783000000003 0.48371681999999999 0.40058681000000002 0.48370471999999998 0.389283 0.48369594999999999 0.37614884999999998 0.48368609000000001 0.77449082999999996 0.42865684999999998 0.77447920999999997 0.41757657999999998 0.77439332000000005 0.45912956999999999 0.77439444999999996 0.47035363000000002"
		+ " 0.77167916000000003 0.43374929000000001 0.77174120999999996 0.45412058 0.77399324999999997 0.45920583999999998 0.77397572999999997 0.41752031000000001 0.77134174 0.43364607999999999 0.015658445999999999 0.0039063207999999999 0.016201375 0.0039063207999999999 0.016201375 0.0049718833000000004 0.015658445999999999 0.0049718833000000004 0.016607303 0.0039063207999999999 0.016607303 0.0049718833000000004 0.038065704999999998 0.0039063207999999999 0.038725338999999998 0.0039063207999999999 0.038725338999999998 0.0049718833000000004 0.038065704999999998 0.0049718833000000004 0.049353334999999998 0.0039063207999999999 0.050683882 0.0039063207999999999 0.050683882 0.0049718833000000004 0.049353334999999998 0.0049718833000000004 0.00390625 0.0039063207999999999 0.0049932366000000001 0.0039063207999999999 0.0049932366000000001 0.0049718833000000004 0.00390625 0.0049718833000000004 0.037590991999999997 0.0039063207999999999 0.037590991999999997 0.0049718833000000004 0.77445191000000002 0.50693345000000001 0.30443515999"
		+ "999998 0.50647788999999999 0.33212265000000002 0.48365423000000002 0.77456552000000001 0.35301062 0.77444964999999999 0.50635390999999996 0.33270221999999999 0.48365453000000003 0.64806425999999995 0.35301062 0.74312197999999996 0.37519597999999998 0.01203047 0.13474467000000001 0.011361230999999999 0.13474467000000001 0.012031057 0.11190836999999999 0.011362405000000001 0.11190836999999999 0.011362405000000001 0.11232082 0.011361230999999999 0.13427921000000001 0.032291467999999997 0.13474552000000001 0.049777608000000001 0.13474664 0.040813493999999999 0.13474609000000001 0.99609375 0.53426605000000005 0.032293110999999999 0.11190949 0.049778782000000001 0.11191034 0.040814667999999998 0.11190978 0.090341747 0.11191231 0.77130335999999999 0.45409706 0.77131437999999997 0.45402756 0.77409726000000001 0.42873833 0.77411050000000003 0.42866926999999999 0.77496219 0.45507982000000002 0.77489715999999997 0.43223985999999998"
		)
		2 "|Bow_BottomCTRL:Geige_BowBottom|Bow_BottomCTRL:bogen_ctrlBottom|Bow_BottomCTRL:bogen_LP_pivotBottom|Bow_BottomCTRL:metall_low|Bow_BottomCTRL:metall_lowShape" 
		"displayColors" " 1"
		2 "|Bow_BottomCTRL:Geige_BowBottom|Bow_BottomCTRL:geige_ctrlBottom" "visibility" 
		" 0"
		2 "Bow_BottomCTRL:griff_lowSG" "aiCustomAOVs" " -s 12"
		2 "Bow_BottomCTRL:griff_lowSG" "aiCustomAOVs[0].aovName" " -type \"string\" \"N\""
		
		2 "Bow_BottomCTRL:griff_lowSG" "aiCustomAOVs[1].aovName" " -type \"string\" \"RGBA\""
		
		2 "Bow_BottomCTRL:griff_lowSG" "aiCustomAOVs[2].aovName" " -type \"string\" \"Z\""
		
		2 "Bow_BottomCTRL:griff_lowSG" "aiCustomAOVs[3].aovName" " -type \"string\" \"albedo\""
		
		2 "Bow_BottomCTRL:griff_lowSG" "aiCustomAOVs[4].aovName" " -type \"string\" \"diffuse\""
		
		2 "Bow_BottomCTRL:griff_lowSG" "aiCustomAOVs[5].aovName" " -type \"string\" \"direct\""
		
		2 "Bow_BottomCTRL:griff_lowSG" "aiCustomAOVs[6].aovName" " -type \"string\" \"indirect\""
		
		2 "Bow_BottomCTRL:griff_lowSG" "aiCustomAOVs[7].aovName" " -type \"string\" \"opacity\""
		
		2 "Bow_BottomCTRL:griff_lowSG" "aiCustomAOVs[8].aovName" " -type \"string\" \"specular\""
		
		2 "Bow_BottomCTRL:griff_lowSG" "aiCustomAOVs[9].aovName" " -type \"string\" \"crypto_asset\""
		
		2 "Bow_BottomCTRL:griff_lowSG" "aiCustomAOVs[10].aovName" " -type \"string\" \"AO\""
		
		2 "Bow_BottomCTRL:griff_lowSG" "aiCustomAOVs[11].aovName" " -type \"string\" \"volume\""
		
		2 "Bow_BottomCTRL:sehne_lowSG" "aiCustomAOVs" " -s 12"
		2 "Bow_BottomCTRL:sehne_lowSG" "aiCustomAOVs[0].aovName" " -type \"string\" \"N\""
		
		2 "Bow_BottomCTRL:sehne_lowSG" "aiCustomAOVs[1].aovName" " -type \"string\" \"RGBA\""
		
		2 "Bow_BottomCTRL:sehne_lowSG" "aiCustomAOVs[2].aovName" " -type \"string\" \"Z\""
		
		2 "Bow_BottomCTRL:sehne_lowSG" "aiCustomAOVs[3].aovName" " -type \"string\" \"albedo\""
		
		2 "Bow_BottomCTRL:sehne_lowSG" "aiCustomAOVs[4].aovName" " -type \"string\" \"diffuse\""
		
		2 "Bow_BottomCTRL:sehne_lowSG" "aiCustomAOVs[5].aovName" " -type \"string\" \"direct\""
		
		2 "Bow_BottomCTRL:sehne_lowSG" "aiCustomAOVs[6].aovName" " -type \"string\" \"indirect\""
		
		2 "Bow_BottomCTRL:sehne_lowSG" "aiCustomAOVs[7].aovName" " -type \"string\" \"opacity\""
		
		2 "Bow_BottomCTRL:sehne_lowSG" "aiCustomAOVs[8].aovName" " -type \"string\" \"specular\""
		
		2 "Bow_BottomCTRL:sehne_lowSG" "aiCustomAOVs[9].aovName" " -type \"string\" \"crypto_asset\""
		
		2 "Bow_BottomCTRL:sehne_lowSG" "aiCustomAOVs[10].aovName" " -type \"string\" \"AO\""
		
		2 "Bow_BottomCTRL:sehne_lowSG" "aiCustomAOVs[11].aovName" " -type \"string\" \"volume\""
		
		2 "Bow_BottomCTRL:metall_lowSG" "aiCustomAOVs" " -s 12"
		2 "Bow_BottomCTRL:metall_lowSG" "aiCustomAOVs[0].aovName" " -type \"string\" \"N\""
		
		2 "Bow_BottomCTRL:metall_lowSG" "aiCustomAOVs[1].aovName" " -type \"string\" \"RGBA\""
		
		2 "Bow_BottomCTRL:metall_lowSG" "aiCustomAOVs[2].aovName" " -type \"string\" \"Z\""
		
		2 "Bow_BottomCTRL:metall_lowSG" "aiCustomAOVs[3].aovName" " -type \"string\" \"albedo\""
		
		2 "Bow_BottomCTRL:metall_lowSG" "aiCustomAOVs[4].aovName" " -type \"string\" \"diffuse\""
		
		2 "Bow_BottomCTRL:metall_lowSG" "aiCustomAOVs[5].aovName" " -type \"string\" \"direct\""
		
		2 "Bow_BottomCTRL:metall_lowSG" "aiCustomAOVs[6].aovName" " -type \"string\" \"indirect\""
		
		2 "Bow_BottomCTRL:metall_lowSG" "aiCustomAOVs[7].aovName" " -type \"string\" \"opacity\""
		
		2 "Bow_BottomCTRL:metall_lowSG" "aiCustomAOVs[8].aovName" " -type \"string\" \"specular\""
		
		2 "Bow_BottomCTRL:metall_lowSG" "aiCustomAOVs[9].aovName" " -type \"string\" \"crypto_asset\""
		
		2 "Bow_BottomCTRL:metall_lowSG" "aiCustomAOVs[10].aovName" " -type \"string\" \"AO\""
		
		2 "Bow_BottomCTRL:metall_lowSG" "aiCustomAOVs[11].aovName" " -type \"string\" \"volume\""
		
		3 "|Bow_BottomCTRL:Geige_BowBottom|Bow_BottomCTRL:bogen_ctrlBottom|Bow_BottomCTRL:bogen_LP_pivotBottom|Bow_BottomCTRL:sehne_low|Bow_BottomCTRL:sehne_lowShape.instObjGroups" 
		"Bow_BottomCTRL:sehne_lowSG.dagSetMembers" "-na"
		3 "|Bow_BottomCTRL:Geige_BowBottom|Bow_BottomCTRL:bogen_ctrlBottom|Bow_BottomCTRL:bogen_LP_pivotBottom|Bow_BottomCTRL:griff_low|Bow_BottomCTRL:griff_lowShape.instObjGroups" 
		"Bow_BottomCTRL:griff_lowSG.dagSetMembers" "-na"
		3 "|Bow_BottomCTRL:Geige_BowBottom|Bow_BottomCTRL:bogen_ctrlBottom|Bow_BottomCTRL:bogen_LP_pivotBottom|Bow_BottomCTRL:metall_low|Bow_BottomCTRL:metall_lowShape.instObjGroups" 
		"Bow_BottomCTRL:metall_lowSG.dagSetMembers" "-na"
		5 1 "Bow_BottomCTRLRN" "|Bow_BottomCTRL:Geige_BowBottom|Bow_BottomCTRL:bogen_ctrlBottom|Bow_BottomCTRL:bogen_LP_pivotBottom|Bow_BottomCTRL:metall_low|Bow_BottomCTRL:metall_lowShape.instObjGroups" 
		"Bow_BottomCTRLRN.placeHolderList[1]" "Bow_BottomCTRL:metall_lowSG.dsm"
		5 1 "Bow_BottomCTRLRN" "|Bow_BottomCTRL:Geige_BowBottom|Bow_BottomCTRL:bogen_ctrlBottom|Bow_BottomCTRL:bogen_LP_pivotBottom|Bow_BottomCTRL:sehne_low|Bow_BottomCTRL:sehne_lowShape.instObjGroups" 
		"Bow_BottomCTRLRN.placeHolderList[2]" "Bow_BottomCTRL:sehne_lowSG.dsm"
		5 1 "Bow_BottomCTRLRN" "|Bow_BottomCTRL:Geige_BowBottom|Bow_BottomCTRL:bogen_ctrlBottom|Bow_BottomCTRL:bogen_LP_pivotBottom|Bow_BottomCTRL:griff_low|Bow_BottomCTRL:griff_lowShape.instObjGroups" 
		"Bow_BottomCTRLRN.placeHolderList[3]" "Bow_BottomCTRL:griff_lowSG.dsm"
		5 4 "Bow_BottomCTRLRN" "|Bow_BottomCTRL:Geige_BowBottom|Bow_BottomCTRL:bogen_ctrlBottom.visibility" 
		"Bow_BottomCTRLRN.placeHolderList[4]" ""
		5 3 "Bow_BottomCTRLRN" "|Bow_BottomCTRL:Geige_BowBottom|Bow_BottomCTRL:bogen_ctrlBottom|Bow_BottomCTRL:bogen_LP_pivotBottom|Bow_BottomCTRL:griff_low|Bow_BottomCTRL:griff_lowShape.worldMesh" 
		"Bow_BottomCTRLRN.placeHolderList[5]" ""
		5 3 "Bow_BottomCTRLRN" "|Bow_BottomCTRL:Geige_BowBottom|Bow_BottomCTRL:bogen_ctrlBottom|Bow_BottomCTRL:bogen_LP_pivotBottom|Bow_BottomCTRL:sehne_low|Bow_BottomCTRL:sehne_lowShape.worldMesh" 
		"Bow_BottomCTRLRN.placeHolderList[6]" ""
		5 3 "Bow_BottomCTRLRN" "|Bow_BottomCTRL:Geige_BowBottom|Bow_BottomCTRL:bogen_ctrlBottom|Bow_BottomCTRL:bogen_LP_pivotBottom|Bow_BottomCTRL:metall_low|Bow_BottomCTRL:metall_lowShape.worldMesh" 
		"Bow_BottomCTRLRN.placeHolderList[7]" ""
		5 4 "Bow_BottomCTRLRN" "|Bow_BottomCTRL:Geige_BowBottom|Bow_BottomCTRL:bogen_ctrlBottom|Bow_BottomCTRL:bogenCTRL_bottom.translateX" 
		"Bow_BottomCTRLRN.placeHolderList[8]" ""
		5 4 "Bow_BottomCTRLRN" "|Bow_BottomCTRL:Geige_BowBottom|Bow_BottomCTRL:bogen_ctrlBottom|Bow_BottomCTRL:bogenCTRL_bottom.translateY" 
		"Bow_BottomCTRLRN.placeHolderList[9]" ""
		5 4 "Bow_BottomCTRLRN" "|Bow_BottomCTRL:Geige_BowBottom|Bow_BottomCTRL:bogen_ctrlBottom|Bow_BottomCTRL:bogenCTRL_bottom.translateZ" 
		"Bow_BottomCTRLRN.placeHolderList[10]" ""
		5 4 "Bow_BottomCTRLRN" "|Bow_BottomCTRL:Geige_BowBottom|Bow_BottomCTRL:bogen_ctrlBottom|Bow_BottomCTRL:bogenCTRL_bottom.rotateX" 
		"Bow_BottomCTRLRN.placeHolderList[11]" ""
		5 4 "Bow_BottomCTRLRN" "|Bow_BottomCTRL:Geige_BowBottom|Bow_BottomCTRL:bogen_ctrlBottom|Bow_BottomCTRL:bogenCTRL_bottom.rotateY" 
		"Bow_BottomCTRLRN.placeHolderList[12]" ""
		5 4 "Bow_BottomCTRLRN" "|Bow_BottomCTRL:Geige_BowBottom|Bow_BottomCTRL:bogen_ctrlBottom|Bow_BottomCTRL:bogenCTRL_bottom.rotateZ" 
		"Bow_BottomCTRLRN.placeHolderList[13]" ""
		5 4 "Bow_BottomCTRLRN" "|Bow_BottomCTRL:Geige_BowBottom|Bow_BottomCTRL:bogen_ctrlBottom|Bow_BottomCTRL:bogenCTRL_bottom.scaleX" 
		"Bow_BottomCTRLRN.placeHolderList[14]" ""
		5 4 "Bow_BottomCTRLRN" "|Bow_BottomCTRL:Geige_BowBottom|Bow_BottomCTRL:bogen_ctrlBottom|Bow_BottomCTRL:bogenCTRL_bottom.scaleY" 
		"Bow_BottomCTRLRN.placeHolderList[15]" ""
		5 4 "Bow_BottomCTRLRN" "|Bow_BottomCTRL:Geige_BowBottom|Bow_BottomCTRL:bogen_ctrlBottom|Bow_BottomCTRL:bogenCTRL_bottom.scaleZ" 
		"Bow_BottomCTRLRN.placeHolderList[16]" ""
		5 4 "Bow_BottomCTRLRN" "|Bow_BottomCTRL:Geige_BowBottom|Bow_BottomCTRL:bogen_ctrlBottom|Bow_BottomCTRL:bogenCTRL_bottom.visibility" 
		"Bow_BottomCTRLRN.placeHolderList[17]" ""
		7 "ignore" ":lightLinker1" 2 "|Bow_BottomCTRL:Geige_BowBottom|Bow_BottomCTRL:geige_ctrlBottom|Bow_BottomCTRL:geige_pivotBottom|Bow_BottomCTRL:body_low|Bow_BottomCTRL:body_lowShape.message" "|lighting|pasted__Lights|pasted__aiAreaLight2|pasted__aiAreaLightShape2.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Bow_BottomCTRL:Geige_BowBottom|Bow_BottomCTRL:geige_ctrlBottom|Bow_BottomCTRL:geige_pivotBottom|Bow_BottomCTRL:body_low|Bow_BottomCTRL:body_lowShape.message" "|lighting|pasted__Lights|pasted__spotLight2|pasted__spotLightShape2.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Bow_BottomCTRL:Geige_BowBottom|Bow_BottomCTRL:geige_ctrlBottom|Bow_BottomCTRL:geige_pivotBottom|Bow_BottomCTRL:body_low|Bow_BottomCTRL:body_lowShape.message" "|lighting|pasted__Lights|pasted__spotLight3|pasted__spotLightShape3.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Bow_BottomCTRL:Geige_BowBottom|Bow_BottomCTRL:geige_ctrlBottom|Bow_BottomCTRL:geige_pivotBottom|Bow_BottomCTRL:body_low|Bow_BottomCTRL:body_lowShape.message" "|lighting|pasted__Lights|spotLight2|spotLightShape2.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Bow_BottomCTRL:Geige_BowBottom|Bow_BottomCTRL:geige_ctrlBottom|Bow_BottomCTRL:geige_pivotBottom|Bow_BottomCTRL:body_low|Bow_BottomCTRL:body_lowShape.message" "|lighting|pasted__Lights|spotLight1|spotLightShape1.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Bow_BottomCTRL:Geige_BowBottom|Bow_BottomCTRL:geige_ctrlBottom|Bow_BottomCTRL:geige_pivotBottom|Bow_BottomCTRL:body_low|Bow_BottomCTRL:body_lowShape.message" "|lighting|pasted__Lights|pasted__spotLight8|pasted__spotLightShape8.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Bow_BottomCTRL:Geige_BowBottom|Bow_BottomCTRL:geige_ctrlBottom|Bow_BottomCTRL:geige_pivotBottom|Bow_BottomCTRL:body_low|Bow_BottomCTRL:body_lowShape.message" "|lighting|pasted__Lights|pasted__spotLight9|pasted__spotLightShape9.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Bow_BottomCTRL:Geige_BowBottom|Bow_BottomCTRL:geige_ctrlBottom|Bow_BottomCTRL:geige_pivotBottom|Bow_BottomCTRL:body_low|Bow_BottomCTRL:body_lowShape.message" "|lighting|pasted__Lights|pasted__aiAreaLight1|pasted__aiAreaLightShape1.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Bow_BottomCTRL:Geige_BowBottom|Bow_BottomCTRL:geige_ctrlBottom|Bow_BottomCTRL:geige_pivotBottom|Bow_BottomCTRL:saiten_low|Bow_BottomCTRL:saiten_lowShape.message" "|lighting|pasted__Lights|pasted__aiAreaLight2|pasted__aiAreaLightShape2.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Bow_BottomCTRL:Geige_BowBottom|Bow_BottomCTRL:geige_ctrlBottom|Bow_BottomCTRL:geige_pivotBottom|Bow_BottomCTRL:saiten_low|Bow_BottomCTRL:saiten_lowShape.message" "|lighting|pasted__Lights|pasted__spotLight2|pasted__spotLightShape2.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Bow_BottomCTRL:Geige_BowBottom|Bow_BottomCTRL:geige_ctrlBottom|Bow_BottomCTRL:geige_pivotBottom|Bow_BottomCTRL:saiten_low|Bow_BottomCTRL:saiten_lowShape.message" "|lighting|pasted__Lights|pasted__spotLight3|pasted__spotLightShape3.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Bow_BottomCTRL:Geige_BowBottom|Bow_BottomCTRL:geige_ctrlBottom|Bow_BottomCTRL:geige_pivotBottom|Bow_BottomCTRL:saiten_low|Bow_BottomCTRL:saiten_lowShape.message" "|lighting|pasted__Lights|spotLight2|spotLightShape2.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Bow_BottomCTRL:Geige_BowBottom|Bow_BottomCTRL:geige_ctrlBottom|Bow_BottomCTRL:geige_pivotBottom|Bow_BottomCTRL:saiten_low|Bow_BottomCTRL:saiten_lowShape.message" "|lighting|pasted__Lights|spotLight1|spotLightShape1.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Bow_BottomCTRL:Geige_BowBottom|Bow_BottomCTRL:geige_ctrlBottom|Bow_BottomCTRL:geige_pivotBottom|Bow_BottomCTRL:saiten_low|Bow_BottomCTRL:saiten_lowShape.message" "|lighting|pasted__Lights|pasted__spotLight8|pasted__spotLightShape8.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Bow_BottomCTRL:Geige_BowBottom|Bow_BottomCTRL:geige_ctrlBottom|Bow_BottomCTRL:geige_pivotBottom|Bow_BottomCTRL:saiten_low|Bow_BottomCTRL:saiten_lowShape.message" "|lighting|pasted__Lights|pasted__spotLight9|pasted__spotLightShape9.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Bow_BottomCTRL:Geige_BowBottom|Bow_BottomCTRL:geige_ctrlBottom|Bow_BottomCTRL:geige_pivotBottom|Bow_BottomCTRL:saiten_low|Bow_BottomCTRL:saiten_lowShape.message" "|lighting|pasted__Lights|pasted__aiAreaLight1|pasted__aiAreaLightShape1.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Bow_BottomCTRL:Geige_BowBottom|Bow_BottomCTRL:geige_ctrlBottom|Bow_BottomCTRL:geige_pivotBottom|Bow_BottomCTRL:griffbrett_low|Bow_BottomCTRL:griffbrett_lowShape.message" "|lighting|pasted__Lights|pasted__aiAreaLight2|pasted__aiAreaLightShape2.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Bow_BottomCTRL:Geige_BowBottom|Bow_BottomCTRL:geige_ctrlBottom|Bow_BottomCTRL:geige_pivotBottom|Bow_BottomCTRL:griffbrett_low|Bow_BottomCTRL:griffbrett_lowShape.message" "|lighting|pasted__Lights|pasted__spotLight2|pasted__spotLightShape2.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Bow_BottomCTRL:Geige_BowBottom|Bow_BottomCTRL:geige_ctrlBottom|Bow_BottomCTRL:geige_pivotBottom|Bow_BottomCTRL:griffbrett_low|Bow_BottomCTRL:griffbrett_lowShape.message" "|lighting|pasted__Lights|pasted__spotLight3|pasted__spotLightShape3.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Bow_BottomCTRL:Geige_BowBottom|Bow_BottomCTRL:geige_ctrlBottom|Bow_BottomCTRL:geige_pivotBottom|Bow_BottomCTRL:griffbrett_low|Bow_BottomCTRL:griffbrett_lowShape.message" "|lighting|pasted__Lights|spotLight2|spotLightShape2.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Bow_BottomCTRL:Geige_BowBottom|Bow_BottomCTRL:geige_ctrlBottom|Bow_BottomCTRL:geige_pivotBottom|Bow_BottomCTRL:griffbrett_low|Bow_BottomCTRL:griffbrett_lowShape.message" "|lighting|pasted__Lights|spotLight1|spotLightShape1.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Bow_BottomCTRL:Geige_BowBottom|Bow_BottomCTRL:geige_ctrlBottom|Bow_BottomCTRL:geige_pivotBottom|Bow_BottomCTRL:griffbrett_low|Bow_BottomCTRL:griffbrett_lowShape.message" "|lighting|pasted__Lights|pasted__spotLight8|pasted__spotLightShape8.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Bow_BottomCTRL:Geige_BowBottom|Bow_BottomCTRL:geige_ctrlBottom|Bow_BottomCTRL:geige_pivotBottom|Bow_BottomCTRL:griffbrett_low|Bow_BottomCTRL:griffbrett_lowShape.message" "|lighting|pasted__Lights|pasted__spotLight9|pasted__spotLightShape9.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Bow_BottomCTRL:Geige_BowBottom|Bow_BottomCTRL:geige_ctrlBottom|Bow_BottomCTRL:geige_pivotBottom|Bow_BottomCTRL:griffbrett_low|Bow_BottomCTRL:griffbrett_lowShape.message" "|lighting|pasted__Lights|pasted__aiAreaLight1|pasted__aiAreaLightShape1.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Bow_BottomCTRL:Geige_BowBottom|Bow_BottomCTRL:geige_ctrlBottom|Bow_BottomCTRL:geige_pivotBottom|Bow_BottomCTRL:wirbel_low|Bow_BottomCTRL:wirbel_low_01|Bow_BottomCTRL:wirbel_low_01Shape.message" "|lighting|pasted__Lights|pasted__aiAreaLight2|pasted__aiAreaLightShape2.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Bow_BottomCTRL:Geige_BowBottom|Bow_BottomCTRL:geige_ctrlBottom|Bow_BottomCTRL:geige_pivotBottom|Bow_BottomCTRL:wirbel_low|Bow_BottomCTRL:wirbel_low_01|Bow_BottomCTRL:wirbel_low_01Shape.message" "|lighting|pasted__Lights|pasted__spotLight2|pasted__spotLightShape2.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Bow_BottomCTRL:Geige_BowBottom|Bow_BottomCTRL:geige_ctrlBottom|Bow_BottomCTRL:geige_pivotBottom|Bow_BottomCTRL:wirbel_low|Bow_BottomCTRL:wirbel_low_01|Bow_BottomCTRL:wirbel_low_01Shape.message" "|lighting|pasted__Lights|pasted__spotLight3|pasted__spotLightShape3.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Bow_BottomCTRL:Geige_BowBottom|Bow_BottomCTRL:geige_ctrlBottom|Bow_BottomCTRL:geige_pivotBottom|Bow_BottomCTRL:wirbel_low|Bow_BottomCTRL:wirbel_low_01|Bow_BottomCTRL:wirbel_low_01Shape.message" "|lighting|pasted__Lights|spotLight2|spotLightShape2.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Bow_BottomCTRL:Geige_BowBottom|Bow_BottomCTRL:geige_ctrlBottom|Bow_BottomCTRL:geige_pivotBottom|Bow_BottomCTRL:wirbel_low|Bow_BottomCTRL:wirbel_low_01|Bow_BottomCTRL:wirbel_low_01Shape.message" "|lighting|pasted__Lights|spotLight1|spotLightShape1.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Bow_BottomCTRL:Geige_BowBottom|Bow_BottomCTRL:geige_ctrlBottom|Bow_BottomCTRL:geige_pivotBottom|Bow_BottomCTRL:wirbel_low|Bow_BottomCTRL:wirbel_low_01|Bow_BottomCTRL:wirbel_low_01Shape.message" "|lighting|pasted__Lights|pasted__spotLight8|pasted__spotLightShape8.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Bow_BottomCTRL:Geige_BowBottom|Bow_BottomCTRL:geige_ctrlBottom|Bow_BottomCTRL:geige_pivotBottom|Bow_BottomCTRL:wirbel_low|Bow_BottomCTRL:wirbel_low_01|Bow_BottomCTRL:wirbel_low_01Shape.message" "|lighting|pasted__Lights|pasted__spotLight9|pasted__spotLightShape9.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Bow_BottomCTRL:Geige_BowBottom|Bow_BottomCTRL:geige_ctrlBottom|Bow_BottomCTRL:geige_pivotBottom|Bow_BottomCTRL:wirbel_low|Bow_BottomCTRL:wirbel_low_01|Bow_BottomCTRL:wirbel_low_01Shape.message" "|lighting|pasted__Lights|pasted__aiAreaLight1|pasted__aiAreaLightShape1.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Bow_BottomCTRL:Geige_BowBottom|Bow_BottomCTRL:geige_ctrlBottom|Bow_BottomCTRL:geige_pivotBottom|Bow_BottomCTRL:wirbel_low|Bow_BottomCTRL:wirbel_low_02|Bow_BottomCTRL:wirbel_low_02Shape.message" "|lighting|pasted__Lights|pasted__aiAreaLight2|pasted__aiAreaLightShape2.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Bow_BottomCTRL:Geige_BowBottom|Bow_BottomCTRL:geige_ctrlBottom|Bow_BottomCTRL:geige_pivotBottom|Bow_BottomCTRL:wirbel_low|Bow_BottomCTRL:wirbel_low_02|Bow_BottomCTRL:wirbel_low_02Shape.message" "|lighting|pasted__Lights|pasted__spotLight2|pasted__spotLightShape2.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Bow_BottomCTRL:Geige_BowBottom|Bow_BottomCTRL:geige_ctrlBottom|Bow_BottomCTRL:geige_pivotBottom|Bow_BottomCTRL:wirbel_low|Bow_BottomCTRL:wirbel_low_02|Bow_BottomCTRL:wirbel_low_02Shape.message" "|lighting|pasted__Lights|pasted__spotLight3|pasted__spotLightShape3.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Bow_BottomCTRL:Geige_BowBottom|Bow_BottomCTRL:geige_ctrlBottom|Bow_BottomCTRL:geige_pivotBottom|Bow_BottomCTRL:wirbel_low|Bow_BottomCTRL:wirbel_low_02|Bow_BottomCTRL:wirbel_low_02Shape.message" "|lighting|pasted__Lights|spotLight2|spotLightShape2.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Bow_BottomCTRL:Geige_BowBottom|Bow_BottomCTRL:geige_ctrlBottom|Bow_BottomCTRL:geige_pivotBottom|Bow_BottomCTRL:wirbel_low|Bow_BottomCTRL:wirbel_low_02|Bow_BottomCTRL:wirbel_low_02Shape.message" "|lighting|pasted__Lights|spotLight1|spotLightShape1.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Bow_BottomCTRL:Geige_BowBottom|Bow_BottomCTRL:geige_ctrlBottom|Bow_BottomCTRL:geige_pivotBottom|Bow_BottomCTRL:wirbel_low|Bow_BottomCTRL:wirbel_low_02|Bow_BottomCTRL:wirbel_low_02Shape.message" "|lighting|pasted__Lights|pasted__spotLight8|pasted__spotLightShape8.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Bow_BottomCTRL:Geige_BowBottom|Bow_BottomCTRL:geige_ctrlBottom|Bow_BottomCTRL:geige_pivotBottom|Bow_BottomCTRL:wirbel_low|Bow_BottomCTRL:wirbel_low_02|Bow_BottomCTRL:wirbel_low_02Shape.message" "|lighting|pasted__Lights|pasted__spotLight9|pasted__spotLightShape9.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Bow_BottomCTRL:Geige_BowBottom|Bow_BottomCTRL:geige_ctrlBottom|Bow_BottomCTRL:geige_pivotBottom|Bow_BottomCTRL:wirbel_low|Bow_BottomCTRL:wirbel_low_02|Bow_BottomCTRL:wirbel_low_02Shape.message" "|lighting|pasted__Lights|pasted__aiAreaLight1|pasted__aiAreaLightShape1.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Bow_BottomCTRL:Geige_BowBottom|Bow_BottomCTRL:geige_ctrlBottom|Bow_BottomCTRL:geige_pivotBottom|Bow_BottomCTRL:wirbel_low|Bow_BottomCTRL:wirbel_low_03|Bow_BottomCTRL:wirbel_low_03Shape.message" "|lighting|pasted__Lights|pasted__aiAreaLight2|pasted__aiAreaLightShape2.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Bow_BottomCTRL:Geige_BowBottom|Bow_BottomCTRL:geige_ctrlBottom|Bow_BottomCTRL:geige_pivotBottom|Bow_BottomCTRL:wirbel_low|Bow_BottomCTRL:wirbel_low_03|Bow_BottomCTRL:wirbel_low_03Shape.message" "|lighting|pasted__Lights|pasted__spotLight2|pasted__spotLightShape2.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Bow_BottomCTRL:Geige_BowBottom|Bow_BottomCTRL:geige_ctrlBottom|Bow_BottomCTRL:geige_pivotBottom|Bow_BottomCTRL:wirbel_low|Bow_BottomCTRL:wirbel_low_03|Bow_BottomCTRL:wirbel_low_03Shape.message" "|lighting|pasted__Lights|pasted__spotLight3|pasted__spotLightShape3.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Bow_BottomCTRL:Geige_BowBottom|Bow_BottomCTRL:geige_ctrlBottom|Bow_BottomCTRL:geige_pivotBottom|Bow_BottomCTRL:wirbel_low|Bow_BottomCTRL:wirbel_low_03|Bow_BottomCTRL:wirbel_low_03Shape.message" "|lighting|pasted__Lights|spotLight2|spotLightShape2.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Bow_BottomCTRL:Geige_BowBottom|Bow_BottomCTRL:geige_ctrlBottom|Bow_BottomCTRL:geige_pivotBottom|Bow_BottomCTRL:wirbel_low|Bow_BottomCTRL:wirbel_low_03|Bow_BottomCTRL:wirbel_low_03Shape.message" "|lighting|pasted__Lights|spotLight1|spotLightShape1.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Bow_BottomCTRL:Geige_BowBottom|Bow_BottomCTRL:geige_ctrlBottom|Bow_BottomCTRL:geige_pivotBottom|Bow_BottomCTRL:wirbel_low|Bow_BottomCTRL:wirbel_low_03|Bow_BottomCTRL:wirbel_low_03Shape.message" "|lighting|pasted__Lights|pasted__spotLight8|pasted__spotLightShape8.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Bow_BottomCTRL:Geige_BowBottom|Bow_BottomCTRL:geige_ctrlBottom|Bow_BottomCTRL:geige_pivotBottom|Bow_BottomCTRL:wirbel_low|Bow_BottomCTRL:wirbel_low_03|Bow_BottomCTRL:wirbel_low_03Shape.message" "|lighting|pasted__Lights|pasted__spotLight9|pasted__spotLightShape9.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Bow_BottomCTRL:Geige_BowBottom|Bow_BottomCTRL:geige_ctrlBottom|Bow_BottomCTRL:geige_pivotBottom|Bow_BottomCTRL:wirbel_low|Bow_BottomCTRL:wirbel_low_03|Bow_BottomCTRL:wirbel_low_03Shape.message" "|lighting|pasted__Lights|pasted__aiAreaLight1|pasted__aiAreaLightShape1.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Bow_BottomCTRL:Geige_BowBottom|Bow_BottomCTRL:geige_ctrlBottom|Bow_BottomCTRL:geige_pivotBottom|Bow_BottomCTRL:wirbel_low|Bow_BottomCTRL:wirbel_low_04|Bow_BottomCTRL:wirbel_low_04Shape.message" "|lighting|pasted__Lights|pasted__aiAreaLight2|pasted__aiAreaLightShape2.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Bow_BottomCTRL:Geige_BowBottom|Bow_BottomCTRL:geige_ctrlBottom|Bow_BottomCTRL:geige_pivotBottom|Bow_BottomCTRL:wirbel_low|Bow_BottomCTRL:wirbel_low_04|Bow_BottomCTRL:wirbel_low_04Shape.message" "|lighting|pasted__Lights|pasted__spotLight2|pasted__spotLightShape2.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Bow_BottomCTRL:Geige_BowBottom|Bow_BottomCTRL:geige_ctrlBottom|Bow_BottomCTRL:geige_pivotBottom|Bow_BottomCTRL:wirbel_low|Bow_BottomCTRL:wirbel_low_04|Bow_BottomCTRL:wirbel_low_04Shape.message" "|lighting|pasted__Lights|pasted__spotLight3|pasted__spotLightShape3.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Bow_BottomCTRL:Geige_BowBottom|Bow_BottomCTRL:geige_ctrlBottom|Bow_BottomCTRL:geige_pivotBottom|Bow_BottomCTRL:wirbel_low|Bow_BottomCTRL:wirbel_low_04|Bow_BottomCTRL:wirbel_low_04Shape.message" "|lighting|pasted__Lights|spotLight2|spotLightShape2.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Bow_BottomCTRL:Geige_BowBottom|Bow_BottomCTRL:geige_ctrlBottom|Bow_BottomCTRL:geige_pivotBottom|Bow_BottomCTRL:wirbel_low|Bow_BottomCTRL:wirbel_low_04|Bow_BottomCTRL:wirbel_low_04Shape.message" "|lighting|pasted__Lights|spotLight1|spotLightShape1.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Bow_BottomCTRL:Geige_BowBottom|Bow_BottomCTRL:geige_ctrlBottom|Bow_BottomCTRL:geige_pivotBottom|Bow_BottomCTRL:wirbel_low|Bow_BottomCTRL:wirbel_low_04|Bow_BottomCTRL:wirbel_low_04Shape.message" "|lighting|pasted__Lights|pasted__spotLight8|pasted__spotLightShape8.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Bow_BottomCTRL:Geige_BowBottom|Bow_BottomCTRL:geige_ctrlBottom|Bow_BottomCTRL:geige_pivotBottom|Bow_BottomCTRL:wirbel_low|Bow_BottomCTRL:wirbel_low_04|Bow_BottomCTRL:wirbel_low_04Shape.message" "|lighting|pasted__Lights|pasted__spotLight9|pasted__spotLightShape9.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Bow_BottomCTRL:Geige_BowBottom|Bow_BottomCTRL:geige_ctrlBottom|Bow_BottomCTRL:geige_pivotBottom|Bow_BottomCTRL:wirbel_low|Bow_BottomCTRL:wirbel_low_04|Bow_BottomCTRL:wirbel_low_04Shape.message" "|lighting|pasted__Lights|pasted__aiAreaLight1|pasted__aiAreaLightShape1.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Bow_BottomCTRL:Geige_BowBottom|Bow_BottomCTRL:geige_ctrlBottom|Bow_BottomCTRL:geige_pivotBottom|Bow_BottomCTRL:hals_low|Bow_BottomCTRL:hals_lowShape.message" "|lighting|pasted__Lights|pasted__aiAreaLight2|pasted__aiAreaLightShape2.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Bow_BottomCTRL:Geige_BowBottom|Bow_BottomCTRL:geige_ctrlBottom|Bow_BottomCTRL:geige_pivotBottom|Bow_BottomCTRL:hals_low|Bow_BottomCTRL:hals_lowShape.message" "|lighting|pasted__Lights|pasted__spotLight2|pasted__spotLightShape2.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Bow_BottomCTRL:Geige_BowBottom|Bow_BottomCTRL:geige_ctrlBottom|Bow_BottomCTRL:geige_pivotBottom|Bow_BottomCTRL:hals_low|Bow_BottomCTRL:hals_lowShape.message" "|lighting|pasted__Lights|pasted__spotLight3|pasted__spotLightShape3.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Bow_BottomCTRL:Geige_BowBottom|Bow_BottomCTRL:geige_ctrlBottom|Bow_BottomCTRL:geige_pivotBottom|Bow_BottomCTRL:hals_low|Bow_BottomCTRL:hals_lowShape.message" "|lighting|pasted__Lights|spotLight2|spotLightShape2.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Bow_BottomCTRL:Geige_BowBottom|Bow_BottomCTRL:geige_ctrlBottom|Bow_BottomCTRL:geige_pivotBottom|Bow_BottomCTRL:hals_low|Bow_BottomCTRL:hals_lowShape.message" "|lighting|pasted__Lights|spotLight1|spotLightShape1.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Bow_BottomCTRL:Geige_BowBottom|Bow_BottomCTRL:geige_ctrlBottom|Bow_BottomCTRL:geige_pivotBottom|Bow_BottomCTRL:hals_low|Bow_BottomCTRL:hals_lowShape.message" "|lighting|pasted__Lights|pasted__spotLight8|pasted__spotLightShape8.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Bow_BottomCTRL:Geige_BowBottom|Bow_BottomCTRL:geige_ctrlBottom|Bow_BottomCTRL:geige_pivotBottom|Bow_BottomCTRL:hals_low|Bow_BottomCTRL:hals_lowShape.message" "|lighting|pasted__Lights|pasted__spotLight9|pasted__spotLightShape9.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Bow_BottomCTRL:Geige_BowBottom|Bow_BottomCTRL:geige_ctrlBottom|Bow_BottomCTRL:geige_pivotBottom|Bow_BottomCTRL:hals_low|Bow_BottomCTRL:hals_lowShape.message" "|lighting|pasted__Lights|pasted__aiAreaLight1|pasted__aiAreaLightShape1.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Bow_BottomCTRL:Geige_BowBottom|Bow_BottomCTRL:geige_ctrlBottom|Bow_BottomCTRL:geige_pivotBottom|Bow_BottomCTRL:kinnstuetze_low|Bow_BottomCTRL:kinnstuetze_lowShape.message" "|lighting|pasted__Lights|pasted__aiAreaLight2|pasted__aiAreaLightShape2.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Bow_BottomCTRL:Geige_BowBottom|Bow_BottomCTRL:geige_ctrlBottom|Bow_BottomCTRL:geige_pivotBottom|Bow_BottomCTRL:kinnstuetze_low|Bow_BottomCTRL:kinnstuetze_lowShape.message" "|lighting|pasted__Lights|pasted__spotLight2|pasted__spotLightShape2.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Bow_BottomCTRL:Geige_BowBottom|Bow_BottomCTRL:geige_ctrlBottom|Bow_BottomCTRL:geige_pivotBottom|Bow_BottomCTRL:kinnstuetze_low|Bow_BottomCTRL:kinnstuetze_lowShape.message" "|lighting|pasted__Lights|pasted__spotLight3|pasted__spotLightShape3.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Bow_BottomCTRL:Geige_BowBottom|Bow_BottomCTRL:geige_ctrlBottom|Bow_BottomCTRL:geige_pivotBottom|Bow_BottomCTRL:kinnstuetze_low|Bow_BottomCTRL:kinnstuetze_lowShape.message" "|lighting|pasted__Lights|spotLight2|spotLightShape2.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Bow_BottomCTRL:Geige_BowBottom|Bow_BottomCTRL:geige_ctrlBottom|Bow_BottomCTRL:geige_pivotBottom|Bow_BottomCTRL:kinnstuetze_low|Bow_BottomCTRL:kinnstuetze_lowShape.message" "|lighting|pasted__Lights|spotLight1|spotLightShape1.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Bow_BottomCTRL:Geige_BowBottom|Bow_BottomCTRL:geige_ctrlBottom|Bow_BottomCTRL:geige_pivotBottom|Bow_BottomCTRL:kinnstuetze_low|Bow_BottomCTRL:kinnstuetze_lowShape.message" "|lighting|pasted__Lights|pasted__spotLight8|pasted__spotLightShape8.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Bow_BottomCTRL:Geige_BowBottom|Bow_BottomCTRL:geige_ctrlBottom|Bow_BottomCTRL:geige_pivotBottom|Bow_BottomCTRL:kinnstuetze_low|Bow_BottomCTRL:kinnstuetze_lowShape.message" "|lighting|pasted__Lights|pasted__spotLight9|pasted__spotLightShape9.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Bow_BottomCTRL:Geige_BowBottom|Bow_BottomCTRL:geige_ctrlBottom|Bow_BottomCTRL:geige_pivotBottom|Bow_BottomCTRL:kinnstuetze_low|Bow_BottomCTRL:kinnstuetze_lowShape.message" "|lighting|pasted__Lights|pasted__aiAreaLight1|pasted__aiAreaLightShape1.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Bow_BottomCTRL:Geige_BowBottom|Bow_BottomCTRL:geige_ctrlBottom|Bow_BottomCTRL:geige_pivotBottom|Bow_BottomCTRL:metallplatte_low|Bow_BottomCTRL:metallplatte_lowShape.message" "|lighting|pasted__Lights|pasted__aiAreaLight2|pasted__aiAreaLightShape2.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Bow_BottomCTRL:Geige_BowBottom|Bow_BottomCTRL:geige_ctrlBottom|Bow_BottomCTRL:geige_pivotBottom|Bow_BottomCTRL:metallplatte_low|Bow_BottomCTRL:metallplatte_lowShape.message" "|lighting|pasted__Lights|pasted__spotLight2|pasted__spotLightShape2.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Bow_BottomCTRL:Geige_BowBottom|Bow_BottomCTRL:geige_ctrlBottom|Bow_BottomCTRL:geige_pivotBottom|Bow_BottomCTRL:metallplatte_low|Bow_BottomCTRL:metallplatte_lowShape.message" "|lighting|pasted__Lights|pasted__spotLight3|pasted__spotLightShape3.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Bow_BottomCTRL:Geige_BowBottom|Bow_BottomCTRL:geige_ctrlBottom|Bow_BottomCTRL:geige_pivotBottom|Bow_BottomCTRL:metallplatte_low|Bow_BottomCTRL:metallplatte_lowShape.message" "|lighting|pasted__Lights|spotLight2|spotLightShape2.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Bow_BottomCTRL:Geige_BowBottom|Bow_BottomCTRL:geige_ctrlBottom|Bow_BottomCTRL:geige_pivotBottom|Bow_BottomCTRL:metallplatte_low|Bow_BottomCTRL:metallplatte_lowShape.message" "|lighting|pasted__Lights|spotLight1|spotLightShape1.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Bow_BottomCTRL:Geige_BowBottom|Bow_BottomCTRL:geige_ctrlBottom|Bow_BottomCTRL:geige_pivotBottom|Bow_BottomCTRL:metallplatte_low|Bow_BottomCTRL:metallplatte_lowShape.message" "|lighting|pasted__Lights|pasted__spotLight8|pasted__spotLightShape8.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Bow_BottomCTRL:Geige_BowBottom|Bow_BottomCTRL:geige_ctrlBottom|Bow_BottomCTRL:geige_pivotBottom|Bow_BottomCTRL:metallplatte_low|Bow_BottomCTRL:metallplatte_lowShape.message" "|lighting|pasted__Lights|pasted__spotLight9|pasted__spotLightShape9.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Bow_BottomCTRL:Geige_BowBottom|Bow_BottomCTRL:geige_ctrlBottom|Bow_BottomCTRL:geige_pivotBottom|Bow_BottomCTRL:metallplatte_low|Bow_BottomCTRL:metallplatte_lowShape.message" "|lighting|pasted__Lights|pasted__aiAreaLight1|pasted__aiAreaLightShape1.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Bow_BottomCTRL:Geige_BowBottom|Bow_BottomCTRL:geige_ctrlBottom|Bow_BottomCTRL:geige_pivotBottom|Bow_BottomCTRL:saitenhalter_low|Bow_BottomCTRL:saitenhalter_lowShape.message" "|lighting|pasted__Lights|pasted__aiAreaLight2|pasted__aiAreaLightShape2.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Bow_BottomCTRL:Geige_BowBottom|Bow_BottomCTRL:geige_ctrlBottom|Bow_BottomCTRL:geige_pivotBottom|Bow_BottomCTRL:saitenhalter_low|Bow_BottomCTRL:saitenhalter_lowShape.message" "|lighting|pasted__Lights|pasted__spotLight2|pasted__spotLightShape2.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Bow_BottomCTRL:Geige_BowBottom|Bow_BottomCTRL:geige_ctrlBottom|Bow_BottomCTRL:geige_pivotBottom|Bow_BottomCTRL:saitenhalter_low|Bow_BottomCTRL:saitenhalter_lowShape.message" "|lighting|pasted__Lights|pasted__spotLight3|pasted__spotLightShape3.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Bow_BottomCTRL:Geige_BowBottom|Bow_BottomCTRL:geige_ctrlBottom|Bow_BottomCTRL:geige_pivotBottom|Bow_BottomCTRL:saitenhalter_low|Bow_BottomCTRL:saitenhalter_lowShape.message" "|lighting|pasted__Lights|spotLight2|spotLightShape2.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Bow_BottomCTRL:Geige_BowBottom|Bow_BottomCTRL:geige_ctrlBottom|Bow_BottomCTRL:geige_pivotBottom|Bow_BottomCTRL:saitenhalter_low|Bow_BottomCTRL:saitenhalter_lowShape.message" "|lighting|pasted__Lights|spotLight1|spotLightShape1.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Bow_BottomCTRL:Geige_BowBottom|Bow_BottomCTRL:geige_ctrlBottom|Bow_BottomCTRL:geige_pivotBottom|Bow_BottomCTRL:saitenhalter_low|Bow_BottomCTRL:saitenhalter_lowShape.message" "|lighting|pasted__Lights|pasted__spotLight8|pasted__spotLightShape8.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Bow_BottomCTRL:Geige_BowBottom|Bow_BottomCTRL:geige_ctrlBottom|Bow_BottomCTRL:geige_pivotBottom|Bow_BottomCTRL:saitenhalter_low|Bow_BottomCTRL:saitenhalter_lowShape.message" "|lighting|pasted__Lights|pasted__spotLight9|pasted__spotLightShape9.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Bow_BottomCTRL:Geige_BowBottom|Bow_BottomCTRL:geige_ctrlBottom|Bow_BottomCTRL:geige_pivotBottom|Bow_BottomCTRL:saitenhalter_low|Bow_BottomCTRL:saitenhalter_lowShape.message" "|lighting|pasted__Lights|pasted__aiAreaLight1|pasted__aiAreaLightShape1.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Bow_BottomCTRL:Geige_BowBottom|Bow_BottomCTRL:geige_ctrlBottom|Bow_BottomCTRL:geige_pivotBottom|Bow_BottomCTRL:schraube_low|Bow_BottomCTRL:schraube_lowShape.message" "|lighting|pasted__Lights|pasted__aiAreaLight2|pasted__aiAreaLightShape2.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Bow_BottomCTRL:Geige_BowBottom|Bow_BottomCTRL:geige_ctrlBottom|Bow_BottomCTRL:geige_pivotBottom|Bow_BottomCTRL:schraube_low|Bow_BottomCTRL:schraube_lowShape.message" "|lighting|pasted__Lights|pasted__spotLight2|pasted__spotLightShape2.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Bow_BottomCTRL:Geige_BowBottom|Bow_BottomCTRL:geige_ctrlBottom|Bow_BottomCTRL:geige_pivotBottom|Bow_BottomCTRL:schraube_low|Bow_BottomCTRL:schraube_lowShape.message" "|lighting|pasted__Lights|pasted__spotLight3|pasted__spotLightShape3.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Bow_BottomCTRL:Geige_BowBottom|Bow_BottomCTRL:geige_ctrlBottom|Bow_BottomCTRL:geige_pivotBottom|Bow_BottomCTRL:schraube_low|Bow_BottomCTRL:schraube_lowShape.message" "|lighting|pasted__Lights|spotLight2|spotLightShape2.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Bow_BottomCTRL:Geige_BowBottom|Bow_BottomCTRL:geige_ctrlBottom|Bow_BottomCTRL:geige_pivotBottom|Bow_BottomCTRL:schraube_low|Bow_BottomCTRL:schraube_lowShape.message" "|lighting|pasted__Lights|spotLight1|spotLightShape1.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Bow_BottomCTRL:Geige_BowBottom|Bow_BottomCTRL:geige_ctrlBottom|Bow_BottomCTRL:geige_pivotBottom|Bow_BottomCTRL:schraube_low|Bow_BottomCTRL:schraube_lowShape.message" "|lighting|pasted__Lights|pasted__spotLight8|pasted__spotLightShape8.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Bow_BottomCTRL:Geige_BowBottom|Bow_BottomCTRL:geige_ctrlBottom|Bow_BottomCTRL:geige_pivotBottom|Bow_BottomCTRL:schraube_low|Bow_BottomCTRL:schraube_lowShape.message" "|lighting|pasted__Lights|pasted__spotLight9|pasted__spotLightShape9.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Bow_BottomCTRL:Geige_BowBottom|Bow_BottomCTRL:geige_ctrlBottom|Bow_BottomCTRL:geige_pivotBottom|Bow_BottomCTRL:schraube_low|Bow_BottomCTRL:schraube_lowShape.message" "|lighting|pasted__Lights|pasted__aiAreaLight1|pasted__aiAreaLightShape1.message" 
		0;
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode transferAttributes -n "transferAttributes1";
	rename -uid "88D760FE-4FEC-4FBC-4D7B-849DB1BFFE02";
	setAttr ".uvs" 1;
	setAttr ".suv" -type "string" "map1";
	setAttr ".tuv" -type "string" "map1";
	setAttr ".spa" 4;
	setAttr ".sus" -type "string" "map1";
	setAttr ".tus" -type "string" "map1";
createNode tweak -n "tweak1";
	rename -uid "02EDC19F-4153-C01B-1886-EAA8F7ECDE1C";
createNode transferAttributes -n "transferAttributes2";
	rename -uid "E1F75BB9-4617-3CC9-42A1-41B1FD1B2AC8";
	setAttr ".uvs" 1;
	setAttr ".suv" -type "string" "map1";
	setAttr ".tuv" -type "string" "map1";
	setAttr ".spa" 4;
	setAttr ".sus" -type "string" "map1";
	setAttr ".tus" -type "string" "map1";
createNode tweak -n "tweak2";
	rename -uid "6CDB2C2F-4B58-9FAC-A420-3A9E22B2D9FF";
createNode transferAttributes -n "transferAttributes3";
	rename -uid "AC1F258D-44B0-443C-DCE3-A9B875704BF6";
	setAttr ".uvs" 1;
	setAttr ".suv" -type "string" "map1";
	setAttr ".tuv" -type "string" "map1";
	setAttr ".spa" 4;
	setAttr ".sus" -type "string" "map1";
	setAttr ".tus" -type "string" "map1";
createNode tweak -n "tweak3";
	rename -uid "64580A6A-4DAB-3FA5-B27A-BE997668DE45";
createNode animCurveTU -n "bogenCTRL_bottom_visibility";
	rename -uid "777273C9-47A3-68D7-8D9B-B6B4571F4824";
	setAttr ".tan" 9;
	setAttr -s 3 ".ktv[0:2]"  970 1 978 1 1015 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "bogenCTRL_bottom_translateX";
	rename -uid "4EA3D6BE-4907-5162-2CDB-DCB230623828";
	setAttr ".tan" 28;
	setAttr -s 3 ".ktv[0:2]"  978 -6.1199474278603496 992 -5.5069282360549954
		 1029 -6.1219122329622895;
createNode animCurveTL -n "bogenCTRL_bottom_translateY";
	rename -uid "1F044E5E-436D-20D7-414E-1FA4BC0E8502";
	setAttr ".tan" 28;
	setAttr -s 3 ".ktv[0:2]"  978 2.7725361919580176 992 3.3591914488857522
		 1029 2.7706558866473521;
createNode animCurveTL -n "bogenCTRL_bottom_translateZ";
	rename -uid "BA2C1D30-4BBF-A13A-2041-2587892B5B11";
	setAttr ".tan" 28;
	setAttr -s 3 ".ktv[0:2]"  978 -3.9376733356882343 992 -3.576197227036817
		 1029 -3.9388319129595533;
createNode animCurveTA -n "bogenCTRL_bottom_rotateX";
	rename -uid "5699087E-4FD6-F40B-61D6-6B9F8DCF9A9A";
	setAttr ".tan" 28;
	setAttr -s 4 ".ktv[0:3]"  978 -33.694 992 -34.154239287221415 1018 -166.61650020242928
		 1029 -178.20913618752448;
createNode animCurveTA -n "bogenCTRL_bottom_rotateY";
	rename -uid "8DC208DB-402D-0190-AB8D-AC8C34471D1F";
	setAttr ".tan" 28;
	setAttr -s 3 ".ktv[0:2]"  978 52.315 992 52.135757585601311 1029 -3.9671181211882018;
createNode animCurveTA -n "bogenCTRL_bottom_rotateZ";
	rename -uid "188780A4-44B6-A9AE-2784-CAB525C053E3";
	setAttr ".tan" 28;
	setAttr -s 3 ".ktv[0:2]"  978 -12.789000000000001 992 -13.613651719407953
		 1029 -271.7296398940972;
createNode animCurveTU -n "bogenCTRL_bottom_scaleX";
	rename -uid "DFF771C4-4F74-C6EE-1317-1484F4E6617A";
	setAttr ".tan" 28;
	setAttr -s 3 ".ktv[0:2]"  978 1 992 0.9999251209508877 1029 0.9999251209508877;
createNode animCurveTU -n "bogenCTRL_bottom_scaleY";
	rename -uid "DE4C9C20-4862-6114-8312-638940112F52";
	setAttr ".tan" 28;
	setAttr -s 3 ".ktv[0:2]"  978 1 992 0.9999251209508877 1029 0.9999251209508877;
createNode animCurveTU -n "bogenCTRL_bottom_scaleZ";
	rename -uid "A4A30D90-427E-11C3-4695-199C7D26E711";
	setAttr ".tan" 28;
	setAttr -s 3 ".ktv[0:2]"  978 1 992 0.9999251209508877 1029 0.9999251209508877;
createNode animCurveTU -n "bogen_ctrlMiddle_visibility";
	rename -uid "035DA395-4DDC-2FC2-9DEB-B79BD751CBE3";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  977 1 978 0;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTU -n "bogen_ctrlBottom_visibility";
	rename -uid "964D4EDF-4445-5AE8-8A22-738675649937";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  977 0 978 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode aiAtmosphereVolume -n "aiAtmosphereVolume";
	rename -uid "6E9E9C36-41B8-8C31-BB65-36A6FD45DAF4";
	setAttr ".density" 0.0040000001899898052;
createNode animCurveTU -n "pasted__spotLightShape1_aiExposure";
	rename -uid "F496D50F-437A-FB68-FE1C-D7B8DC8B5DDA";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  129 0 130 13.5;
createNode animCurveTU -n "pasted__spotLightShape4_aiExposure";
	rename -uid "0F23F71B-4CCF-CEDF-8C72-9E991DA7311D";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  139 0 140 13;
createNode animCurveTU -n "pasted__spotLightShape5_aiExposure";
	rename -uid "885DD943-4E1A-0D01-D2B5-E39986D5D434";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  139 0 140 13;
createNode aiAOV -n "aiAOV_N";
	rename -uid "0FC922FE-49D3-B602-FCD4-FD88DD41B314";
	setAttr ".aovn" -type "string" "N";
	setAttr ".aovt" 7;
createNode aiAOVFilter -n "aiAOVFilter1";
	rename -uid "908B3220-4CE3-1DB7-0248-3483C0294E66";
	setAttr ".ai_translator" -type "string" "closest";
createNode aiAOV -n "aiAOV_RGBA";
	rename -uid "0E6A9F1B-443E-560A-834B-EE91D8BEABCD";
	setAttr ".aovn" -type "string" "RGBA";
	setAttr ".lg" yes;
createNode aiAOV -n "aiAOV_Z";
	rename -uid "20C2E7B8-4EC6-AF96-16AC-2FA479C5647D";
	setAttr ".aovn" -type "string" "Z";
	setAttr ".aovt" 4;
createNode aiAOVFilter -n "aiAOVFilter2";
	rename -uid "6948059F-4993-7EFF-5A3B-76A267414BCE";
	setAttr ".ai_translator" -type "string" "closest";
createNode aiAOV -n "aiAOV_albedo";
	rename -uid "EC750101-4755-C133-9494-56BADAD85821";
	setAttr ".aovn" -type "string" "albedo";
	setAttr ".aovt" 5;
createNode aiAOV -n "aiAOV_diffuse";
	rename -uid "77A41CB1-44C3-C421-B32E-2AB882DC826F";
	setAttr ".aovn" -type "string" "diffuse";
	setAttr ".aovt" 5;
createNode aiAOV -n "aiAOV_direct";
	rename -uid "038024C0-4150-D2B1-DEC3-E7B21136BB92";
	setAttr ".aovn" -type "string" "direct";
	setAttr ".aovt" 5;
createNode aiAOV -n "aiAOV_indirect";
	rename -uid "C31F54C3-432F-6643-2BBF-D8BAC6A89B7B";
	setAttr ".aovn" -type "string" "indirect";
	setAttr ".aovt" 5;
createNode aiAOV -n "aiAOV_opacity";
	rename -uid "AA1AE902-4536-A347-E5A5-2893B2803C12";
	setAttr ".aovn" -type "string" "opacity";
	setAttr ".aovt" 5;
createNode aiAOV -n "aiAOV_specular";
	rename -uid "E8CE5FCA-4041-23E6-97E6-A6B772D8828E";
	setAttr ".aovn" -type "string" "specular";
	setAttr ".aovt" 5;
createNode aiAOV -n "aiAOV_crypto_asset";
	rename -uid "3DC7582D-4BFA-E833-F5E2-6FA4BE9A8CD0";
	setAttr ".aovn" -type "string" "crypto_asset";
	setAttr ".aovt" 5;
createNode cryptomatte -n "_aov_cryptomatte";
	rename -uid "7D9FE510-4F2A-83EA-B463-0C81FE82B10D";
createNode aiAOV -n "aiAOV_AO";
	rename -uid "AAAB41EE-4B85-54B2-70D7-909DD6C1B3D0";
	setAttr ".aovn" -type "string" "AO";
createNode aiAmbientOcclusion -n "aiAmbientOcclusion1";
	rename -uid "19999246-4F70-70A1-AD56-89BF0B8E27EA";
createNode shadingEngine -n "aiAmbientOcclusion1SG";
	rename -uid "35F2AE1B-4610-1A1D-F454-A7815CDFEDE2";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
	setAttr -s 12 ".aovs";
	setAttr ".aovs[0].aov_name" -type "string" "AO";
	setAttr ".aovs[1].aov_name" -type "string" "N";
	setAttr ".aovs[2].aov_name" -type "string" "RGBA";
	setAttr ".aovs[3].aov_name" -type "string" "Z";
	setAttr ".aovs[4].aov_name" -type "string" "albedo";
	setAttr ".aovs[5].aov_name" -type "string" "crypto_asset";
	setAttr ".aovs[6].aov_name" -type "string" "diffuse";
	setAttr ".aovs[7].aov_name" -type "string" "direct";
	setAttr ".aovs[8].aov_name" -type "string" "indirect";
	setAttr ".aovs[9].aov_name" -type "string" "opacity";
	setAttr ".aovs[10].aov_name" -type "string" "specular";
	setAttr ".aovs[11].aov_name" -type "string" "volume";
	setAttr ".aal" -type "attributeAlias" {"ai_aov_AO","aiCustomAOVs[0]","ai_aov_specular"
		,"aiCustomAOVs[10]","ai_aov_volume","aiCustomAOVs[11].aovName","ai_aov_N","aiCustomAOVs[1]"
		,"ai_aov_RGBA","aiCustomAOVs[2]","ai_aov_Z","aiCustomAOVs[3]","ai_aov_albedo","aiCustomAOVs[4]"
		,"ai_aov_crypto_asset","aiCustomAOVs[5]","ai_aov_diffuse","aiCustomAOVs[6]","ai_aov_direct"
		,"aiCustomAOVs[7]","ai_aov_indirect","aiCustomAOVs[8]","ai_aov_opacity","aiCustomAOVs[9]"
		} ;
createNode materialInfo -n "materialInfo1";
	rename -uid "9A4084DB-4969-8702-700B-90B0F4CA5571";
createNode aiAOV -n "aiAOV_volume";
	rename -uid "C28F10C3-44EE-46A6-34F4-7DA311C1743C";
	setAttr ".aovn" -type "string" "volume";
	setAttr ".aovt" 5;
select -ne :time1;
	setAttr -av -k on ".cch";
	setAttr -k on ".fzn";
	setAttr -av -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr ".o" 477;
	setAttr -av -k on ".unw" 477;
	setAttr -av -k on ".etw";
	setAttr -av -k on ".tps";
	setAttr -av -k on ".tms";
select -ne :sequenceManager1;
	setAttr ".o" 69;
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
	setAttr -s 22 ".st";
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
	setAttr -s 30 ".s";
select -ne :postProcessList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 34 ".u";
select -ne :defaultRenderingList1;
	setAttr -k on ".ihi";
	setAttr -s 4 ".r";
select -ne :lightList1;
	setAttr -s 17 ".l";
select -ne :defaultTextureList1;
	setAttr -s 46 ".tx";
select -ne :initialShadingGroup;
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr -av -k on ".cch";
	setAttr -k on ".fzn";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".bbx";
	setAttr -k on ".vwm";
	setAttr -k on ".tpv";
	setAttr -k on ".uit";
	setAttr -s 14 ".dsm";
	setAttr -k on ".mwc";
	setAttr -cb on ".an";
	setAttr -cb on ".il";
	setAttr -cb on ".vo";
	setAttr -cb on ".eo";
	setAttr -cb on ".fo";
	setAttr -cb on ".epo";
	setAttr ".ro" yes;
	setAttr -s 12 ".aovs";
	setAttr ".aovs[0].aov_name" -type "string" "N";
	setAttr ".aovs[1].aov_name" -type "string" "RGBA";
	setAttr ".aovs[2].aov_name" -type "string" "Z";
	setAttr ".aovs[3].aov_name" -type "string" "albedo";
	setAttr ".aovs[4].aov_name" -type "string" "diffuse";
	setAttr ".aovs[5].aov_name" -type "string" "direct";
	setAttr ".aovs[6].aov_name" -type "string" "indirect";
	setAttr ".aovs[7].aov_name" -type "string" "opacity";
	setAttr ".aovs[8].aov_name" -type "string" "specular";
	setAttr ".aovs[9].aov_name" -type "string" "crypto_asset";
	setAttr ".aovs[10].aov_name" -type "string" "AO";
	setAttr ".aovs[11].aov_name" -type "string" "volume";
	setAttr -k on ".ai_surface_shader";
	setAttr -k on ".ai_volume_shader";
	setAttr ".aal" -type "attributeAlias" {"ai_aov_N","aiCustomAOVs[0].aovName","ai_aov_AO"
		,"aiCustomAOVs[10].aovName","ai_aov_volume","aiCustomAOVs[11].aovName","ai_aov_RGBA"
		,"aiCustomAOVs[1].aovName","ai_aov_Z","aiCustomAOVs[2].aovName","ai_aov_albedo","aiCustomAOVs[3].aovName"
		,"ai_aov_diffuse","aiCustomAOVs[4].aovName","ai_aov_direct","aiCustomAOVs[5].aovName"
		,"ai_aov_indirect","aiCustomAOVs[6].aovName","ai_aov_opacity","aiCustomAOVs[7].aovName"
		,"ai_aov_specular","aiCustomAOVs[8].aovName","ai_aov_crypto_asset","aiCustomAOVs[9].aovName"
		} ;
select -ne :initialParticleSE;
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
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
	setAttr -s 12 ".aovs";
	setAttr ".aovs[0].aov_name" -type "string" "N";
	setAttr ".aovs[1].aov_name" -type "string" "RGBA";
	setAttr ".aovs[2].aov_name" -type "string" "Z";
	setAttr ".aovs[3].aov_name" -type "string" "albedo";
	setAttr ".aovs[4].aov_name" -type "string" "diffuse";
	setAttr ".aovs[5].aov_name" -type "string" "direct";
	setAttr ".aovs[6].aov_name" -type "string" "indirect";
	setAttr ".aovs[7].aov_name" -type "string" "opacity";
	setAttr ".aovs[8].aov_name" -type "string" "specular";
	setAttr ".aovs[9].aov_name" -type "string" "crypto_asset";
	setAttr ".aovs[10].aov_name" -type "string" "AO";
	setAttr ".aovs[11].aov_name" -type "string" "volume";
	setAttr -k on ".ai_surface_shader";
	setAttr -k on ".ai_volume_shader";
	setAttr ".aal" -type "attributeAlias" {"ai_aov_N","aiCustomAOVs[0].aovName","ai_aov_AO"
		,"aiCustomAOVs[10].aovName","ai_aov_volume","aiCustomAOVs[11].aovName","ai_aov_RGBA"
		,"aiCustomAOVs[1].aovName","ai_aov_Z","aiCustomAOVs[2].aovName","ai_aov_albedo","aiCustomAOVs[3].aovName"
		,"ai_aov_diffuse","aiCustomAOVs[4].aovName","ai_aov_direct","aiCustomAOVs[5].aovName"
		,"ai_aov_indirect","aiCustomAOVs[6].aovName","ai_aov_opacity","aiCustomAOVs[7].aovName"
		,"ai_aov_specular","aiCustomAOVs[8].aovName","ai_aov_crypto_asset","aiCustomAOVs[9].aovName"
		} ;
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
select -ne :defaultLightSet;
	setAttr -s 17 ".dsm";
select -ne :defaultColorMgtGlobals;
	setAttr ".cfe" yes;
	setAttr ".cfp" -type "string" "<MAYA_RESOURCES>/OCIO-configs/Maya2022-default/config.ocio";
	setAttr ".vtn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".vn" -type "string" "ACES 1.0 SDR-video";
	setAttr ".dn" -type "string" "sRGB";
	setAttr ".wsn" -type "string" "ACEScg";
	setAttr ".povt" no;
	setAttr ".otn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".potn" -type "string" "Un-tone-mapped (sRGB)";
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
connectAttr "stage_fertigRN.phl[25]" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[5].dn"
		;
connectAttr "stage_fertigRN.phl[26]" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "stage_fertigRN.phl[27]" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[4].dn"
		;
connectAttr "stage_fertigRN.phl[28]" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "stage_fertigRN.phl[29]" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "stage_fertigRN.phl[30]" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
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
connectAttr "bogen_ctrlMiddle_visibility.o" "Geige_RigRN.phl[11]";
connectAttr "Geige_RigRN.phl[12]" "transferAttributes1.src[0]";
connectAttr "Geige_RigRN.phl[13]" "transferAttributes3.src[0]";
connectAttr "Geige_RigRN.phl[14]" "transferAttributes2.src[0]";
connectAttr "bogenCTRL_middle_Bend.o" "Geige_RigRN.phl[15]";
connectAttr "bogenCTRL_middle_squashNstretch.o" "Geige_RigRN.phl[16]";
connectAttr "bogenCTRL_middle_translateX.o" "Geige_RigRN.phl[17]";
connectAttr "bogenCTRL_middle_translateY.o" "Geige_RigRN.phl[18]";
connectAttr "bogenCTRL_middle_translateZ.o" "Geige_RigRN.phl[19]";
connectAttr "bogenCTRL_middle_rotateY.o" "Geige_RigRN.phl[20]";
connectAttr "bogenCTRL_middle_rotateX.o" "Geige_RigRN.phl[21]";
connectAttr "bogenCTRL_middle_rotateZ.o" "Geige_RigRN.phl[22]";
connectAttr "bogenCTRL_middle_scaleX.o" "Geige_RigRN.phl[23]";
connectAttr "bogenCTRL_middle_scaleY.o" "Geige_RigRN.phl[24]";
connectAttr "bogenCTRL_middle_scaleZ.o" "Geige_RigRN.phl[25]";
connectAttr "bogenCTRL_middle_visibility.o" "Geige_RigRN.phl[26]";
connectAttr "geigeCTRL_bottom_translateX.o" "Geige_RigRN.phl[27]";
connectAttr "geigeCTRL_bottom_translateY.o" "Geige_RigRN.phl[28]";
connectAttr "geigeCTRL_bottom_translateZ.o" "Geige_RigRN.phl[29]";
connectAttr "geigeCTRL_bottom_rotateX.o" "Geige_RigRN.phl[30]";
connectAttr "geigeCTRL_bottom_rotateY.o" "Geige_RigRN.phl[31]";
connectAttr "geigeCTRL_bottom_rotateZ.o" "Geige_RigRN.phl[32]";
connectAttr "geigeCTRL_bottom_scaleX.o" "Geige_RigRN.phl[33]";
connectAttr "geigeCTRL_bottom_scaleY.o" "Geige_RigRN.phl[34]";
connectAttr "geigeCTRL_bottom_scaleZ.o" "Geige_RigRN.phl[35]";
connectAttr "geigeCTRL_bottom_visibility.o" "Geige_RigRN.phl[36]";
connectAttr "Geige_RigRN.phl[37]" "camera1_aim_pointConstraint1.tg[0].tpm";
connectAttr "Geige_RigRN.phl[38]" "camera1_aim_pointConstraint1.tg[0].tt";
connectAttr "Geige_RigRN.phl[39]" "camera1_aim_pointConstraint1.tg[0].trp";
connectAttr "Geige_RigRN.phl[40]" "camera1_aim_pointConstraint1.tg[0].trt";
connectAttr "Geige_RigRN.phl[41]" "camera1_aim_pointConstraint1.tg[1].tt";
connectAttr "Geige_RigRN.phl[42]" "camera1_aim_pointConstraint1.tg[1].tpm";
connectAttr "Geige_RigRN.phl[43]" "camera1_aim_pointConstraint1.tg[1].trp";
connectAttr "Geige_RigRN.phl[44]" "camera1_aim_pointConstraint1.tg[1].trt";
connectAttr "Geige_RigRN.phl[45]" "Geige_RigRN.phl[46]";
connectAttr "Geige_RigRN.phl[47]" "Geige_RigRN.phl[48]";
connectAttr "Geige_RigRN.phl[49]" "Geige_RigRN.phl[50]";
connectAttr "Bow_BottomCTRLRN.phl[1]" "Geige_RigRN.phl[51]";
connectAttr "Bow_BottomCTRLRN.phl[2]" "Geige_RigRN.phl[52]";
connectAttr "Bow_BottomCTRLRN.phl[3]" "Geige_RigRN.phl[53]";
connectAttr "griff_lowShapeDeformed.iog" "Geige_RigRN.phl[54]";
connectAttr "metall_lowShapeDeformed.iog" "Geige_RigRN.phl[55]";
connectAttr "sehne_lowShapeDeformed.iog" "Geige_RigRN.phl[56]";
connectAttr "Geige_RigRN.phl[57]" "Geige_RigRN.phl[58]";
connectAttr "Geige_RigRN.phl[59]" "Geige_RigRN.phl[60]";
connectAttr "Geige_RigRN.phl[61]" "Geige_RigRN.phl[62]";
connectAttr "Geige_RigRN.phl[63]" "Geige_RigRN.phl[64]";
connectAttr "Geige_RigRN.phl[65]" "Geige_RigRN.phl[66]";
connectAttr "Geige_RigRN.phl[67]" "Geige_RigRN.phl[68]";
connectAttr "Geige_RigRN.phl[69]" "Geige_RigRN.phl[70]";
connectAttr "Geige_RigRN.phl[71]" "Geige_RigRN.phl[72]";
connectAttr "Geige_RigRN.phl[73]" "Geige_RigRN.phl[74]";
connectAttr "Geige_RigRN.phl[75]" "Geige_RigRN.phl[76]";
connectAttr "Geige_RigRN.phl[77]" "Geige_RigRN.phl[78]";
connectAttr "Geige_RigRN.phl[79]" "Geige_RigRN.phl[80]";
connectAttr "Geige_RigRN.phl[81]" "Geige_RigRN.phl[82]";
connectAttr "bogen_ctrlBottom_visibility.o" "Bow_BottomCTRLRN.phl[4]";
connectAttr "Bow_BottomCTRLRN.phl[5]" "tweak1.ip[0].ig";
connectAttr "Bow_BottomCTRLRN.phl[6]" "tweak3.ip[0].ig";
connectAttr "Bow_BottomCTRLRN.phl[7]" "tweak2.ip[0].ig";
connectAttr "bogenCTRL_bottom_translateX.o" "Bow_BottomCTRLRN.phl[8]";
connectAttr "bogenCTRL_bottom_translateY.o" "Bow_BottomCTRLRN.phl[9]";
connectAttr "bogenCTRL_bottom_translateZ.o" "Bow_BottomCTRLRN.phl[10]";
connectAttr "bogenCTRL_bottom_rotateX.o" "Bow_BottomCTRLRN.phl[11]";
connectAttr "bogenCTRL_bottom_rotateY.o" "Bow_BottomCTRLRN.phl[12]";
connectAttr "bogenCTRL_bottom_rotateZ.o" "Bow_BottomCTRLRN.phl[13]";
connectAttr "bogenCTRL_bottom_scaleX.o" "Bow_BottomCTRLRN.phl[14]";
connectAttr "bogenCTRL_bottom_scaleY.o" "Bow_BottomCTRLRN.phl[15]";
connectAttr "bogenCTRL_bottom_scaleZ.o" "Bow_BottomCTRLRN.phl[16]";
connectAttr "bogenCTRL_bottom_visibility.o" "Bow_BottomCTRLRN.phl[17]";
connectAttr "persp1_translateX.o" "low_shot.tx" -l on;
connectAttr "persp1_translateY.o" "low_shot.ty" -l on;
connectAttr "persp1_translateZ.o" "low_shot.tz" -l on;
connectAttr "persp1_rotateX.o" "low_shot.rx" -l on;
connectAttr "persp1_rotateY.o" "low_shot.ry" -l on;
connectAttr "persp1_rotateZ.o" "low_shot.rz" -l on;
connectAttr "low_shot_visibility.o" "low_shot.v";
connectAttr "low_shot_scaleX.o" "low_shot.sx";
connectAttr "low_shot_scaleY.o" "low_shot.sy";
connectAttr "low_shot_scaleZ.o" "low_shot.sz";
connectAttr "polyHelix1.out" "pHelixShape1.i";
connectAttr "polyEdgeToCurve1.oc" "polyToCurveShape1.cr";
connectAttr "polyEdgeToCurve2.oc" "camera_pathShape.cr";
connectAttr "aim_360.tx" "cameraAim_360.tg[0].ttx";
connectAttr "aim_360.ty" "cameraAim_360.tg[0].tty";
connectAttr "aim_360.tz" "cameraAim_360.tg[0].ttz";
connectAttr "aim_360.rp" "cameraAim_360.tg[0].trp";
connectAttr "aim_360.rpt" "cameraAim_360.tg[0].trt";
connectAttr "aim_360.pm" "cameraAim_360.tg[0].tpm";
connectAttr "camera_360.pim" "cameraAim_360.cpim";
connectAttr "camera_360.t" "cameraAim_360.ct";
connectAttr "camera_360.rp" "cameraAim_360.crp";
connectAttr "camera_360.rpt" "cameraAim_360.crt";
connectAttr "addDoubleLinear1.o" "cameraAim_360.tx";
connectAttr "addDoubleLinear2.o" "cameraAim_360.ty";
connectAttr "addDoubleLinear3.o" "cameraAim_360.tz";
connectAttr "motionPath1.msg" "cameraAim_360.sml";
connectAttr "motionPath1.rx" "cameraAim_360.rx";
connectAttr "motionPath1.ry" "cameraAim_360.ry";
connectAttr "motionPath1.rz" "cameraAim_360.rz";
connectAttr "motionPath1.ro" "cameraAim_360.ro";
connectAttr "cameraAim_360.crx" "camera_360.rx" -l on;
connectAttr "cameraAim_360.cry" "camera_360.ry" -l on;
connectAttr "cameraAim_360.crz" "camera_360.rz" -l on;
connectAttr "cameraAim_360.db" "camera_Shape360.coi" -l on;
connectAttr "camera1_aim_pointConstraint1.ctx" "aim_360.tx" -l on;
connectAttr "camera1_aim_pointConstraint1.cty" "aim_360.ty" -l on;
connectAttr "camera1_aim_pointConstraint1.ctz" "aim_360.tz" -l on;
connectAttr "camera1_aim_pointConstraint1.w0" "camera1_aim_pointConstraint1.tg[0].tw"
		;
connectAttr "camera1_aim_pointConstraint1.w1" "camera1_aim_pointConstraint1.tg[1].tw"
		;
connectAttr "aim_360.pim" "camera1_aim_pointConstraint1.cpim";
connectAttr "aim_360.rp" "camera1_aim_pointConstraint1.crp";
connectAttr "aim_360.rpt" "camera1_aim_pointConstraint1.crt";
connectAttr "ubercam_translateX.o" "ubercam.tx" -l on;
connectAttr "ubercam_translateY.o" "ubercam.ty" -l on;
connectAttr "ubercam_translateZ.o" "ubercam.tz" -l on;
connectAttr "ubercam_rotateX.o" "ubercam.rx" -l on;
connectAttr "ubercam_rotateY.o" "ubercam.ry" -l on;
connectAttr "ubercam_rotateZ.o" "ubercam.rz" -l on;
connectAttr "ubercamShape_renderable.o" "ubercamShape.rnd";
connectAttr "ubercamShape_centerOfInterest.o" "ubercamShape.coi" -l on;
connectAttr "pasted__spotLightShape1_aiExposure.o" "pasted__spotLightShape1.ai_exposure"
		;
connectAttr "pasted__spotLightShape4_aiExposure.o" "pasted__spotLightShape4.ai_exposure"
		;
connectAttr "pasted__spotLightShape5_aiExposure.o" "pasted__spotLightShape5.ai_exposure"
		;
connectAttr "transferAttributes2.og[0]" "metall_lowShapeDeformed.i";
connectAttr "tweak2.vl[0].vt[0]" "metall_lowShapeDeformed.twl";
connectAttr "transferAttributes3.og[0]" "sehne_lowShapeDeformed.i";
connectAttr "tweak3.vl[0].vt[0]" "sehne_lowShapeDeformed.twl";
connectAttr "transferAttributes1.og[0]" "griff_lowShapeDeformed.i";
connectAttr "tweak1.vl[0].vt[0]" "griff_lowShapeDeformed.twl";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__aiStandardSurface1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__aiStandardSurface2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__aiStandardSurface3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__aiStandardSurface1SG1.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__aiStandardSurface2SG1.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__aiStandardSurface3SG1.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "aiAmbientOcclusion1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__aiStandardSurface1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__aiStandardSurface2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__aiStandardSurface3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__aiStandardSurface1SG1.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__aiStandardSurface2SG1.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__aiStandardSurface3SG1.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "aiAmbientOcclusion1SG.message" ":defaultLightSet.message";
relationship "ignore" ":lightLinker1" "pHelixShape1.message" "pasted__aiAreaLightShape2.message";
relationship "ignore" ":lightLinker1" "sehne_lowShapeDeformed.message" "pasted__aiAreaLightShape2.message";
relationship "ignore" ":lightLinker1" "metall_lowShapeDeformed.message" "pasted__aiAreaLightShape2.message";
relationship "ignore" ":lightLinker1" "griff_lowShapeDeformed.message" "pasted__aiAreaLightShape2.message";
relationship "ignore" ":lightLinker1" "mid_plane_cloudsShape.message" "pasted__aiAreaLightShape2.message";
relationship "ignore" ":lightLinker1" "front_plane_goldShape.message" "pasted__aiAreaLightShape2.message";
relationship "ignore" ":lightLinker1" "mid_plane_cloudsShape.message" "pasted__spotLightShape5.message";
relationship "ignore" ":lightLinker1" "front_plane_goldShape.message" "pasted__spotLightShape5.message";
relationship "ignore" ":lightLinker1" "BG_planeShape.message" "pasted__spotLightShape5.message";
relationship "ignore" ":lightLinker1" "griff_lowShapeDeformed.message" "pasted__spotLightShape2.message";
relationship "ignore" ":lightLinker1" "metall_lowShapeDeformed.message" "pasted__spotLightShape2.message";
relationship "ignore" ":lightLinker1" "sehne_lowShapeDeformed.message" "pasted__spotLightShape2.message";
relationship "ignore" ":lightLinker1" "griff_lowShapeDeformed.message" "pasted__spotLightShape3.message";
relationship "ignore" ":lightLinker1" "metall_lowShapeDeformed.message" "pasted__spotLightShape3.message";
relationship "ignore" ":lightLinker1" "sehne_lowShapeDeformed.message" "pasted__spotLightShape3.message";
relationship "ignore" ":lightLinker1" "mid_plane_cloudsShape.message" "spotLightShape2.message";
relationship "ignore" ":lightLinker1" "BG_planeShape.message" "spotLightShape2.message";
relationship "ignore" ":lightLinker1" "front_plane_goldShape.message" "spotLightShape2.message";
relationship "ignore" ":lightLinker1" "griff_lowShapeDeformed.message" "spotLightShape2.message";
relationship "ignore" ":lightLinker1" "metall_lowShapeDeformed.message" "spotLightShape2.message";
relationship "ignore" ":lightLinker1" "sehne_lowShapeDeformed.message" "spotLightShape2.message";
relationship "ignore" ":lightLinker1" "griff_lowShapeDeformed.message" "spotLightShape1.message";
relationship "ignore" ":lightLinker1" "metall_lowShapeDeformed.message" "spotLightShape1.message";
relationship "ignore" ":lightLinker1" "sehne_lowShapeDeformed.message" "spotLightShape1.message";
relationship "ignore" ":lightLinker1" "mid_plane_cloudsShape.message" "spotLightShape1.message";
relationship "ignore" ":lightLinker1" "BG_planeShape.message" "spotLightShape1.message";
relationship "ignore" ":lightLinker1" "front_plane_goldShape.message" "spotLightShape1.message";
relationship "ignore" ":lightLinker1" "griff_lowShapeDeformed.message" "pasted__spotLightShape8.message";
relationship "ignore" ":lightLinker1" "metall_lowShapeDeformed.message" "pasted__spotLightShape8.message";
relationship "ignore" ":lightLinker1" "sehne_lowShapeDeformed.message" "pasted__spotLightShape8.message";
relationship "ignore" ":lightLinker1" "mid_plane_cloudsShape.message" "pasted__spotLightShape8.message";
relationship "ignore" ":lightLinker1" "BG_planeShape.message" "pasted__spotLightShape8.message";
relationship "ignore" ":lightLinker1" "front_plane_goldShape.message" "pasted__spotLightShape8.message";
relationship "ignore" ":lightLinker1" "mid_plane_cloudsShape.message" "pasted__spotLightShape9.message";
relationship "ignore" ":lightLinker1" "BG_planeShape.message" "pasted__spotLightShape9.message";
relationship "ignore" ":lightLinker1" "front_plane_goldShape.message" "pasted__spotLightShape9.message";
relationship "ignore" ":lightLinker1" "griff_lowShapeDeformed.message" "pasted__spotLightShape9.message";
relationship "ignore" ":lightLinker1" "metall_lowShapeDeformed.message" "pasted__spotLightShape9.message";
relationship "ignore" ":lightLinker1" "sehne_lowShapeDeformed.message" "pasted__spotLightShape9.message";
relationship "ignore" ":lightLinker1" "BG_planeShape.message" "aiAreaLightShape1.message";
relationship "ignore" ":lightLinker1" "front_plane_goldShape.message" "aiAreaLightShape1.message";
relationship "ignore" ":lightLinker1" "mid_plane_cloudsShape.message" "aiAreaLightShape1.message";
relationship "ignore" ":lightLinker1" "sehne_lowShapeDeformed.message" "pasted__aiAreaLightShape1.message";
relationship "ignore" ":lightLinker1" "metall_lowShapeDeformed.message" "pasted__aiAreaLightShape1.message";
relationship "ignore" ":lightLinker1" "griff_lowShapeDeformed.message" "pasted__aiAreaLightShape1.message";
relationship "ignore" ":lightLinker1" "BG_planeShape.message" "aiAreaLightShape2.message";
relationship "ignore" ":lightLinker1" "front_plane_goldShape.message" "aiAreaLightShape2.message";
relationship "ignore" ":lightLinker1" "mid_plane_cloudsShape.message" "aiAreaLightShape2.message";
relationship "ignore" ":lightLinker1" "front_plane_goldShape.message" "aiAreaLightShape3.message";
relationship "ignore" ":lightLinker1" "mid_plane_cloudsShape.message" "aiAreaLightShape3.message";
relationship "ignore" ":lightLinker1" "BG_planeShape.message" "aiAreaLightShape3.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "aiAtmosphereVolume.msg" ":defaultArnoldRenderOptions.atm";
connectAttr "aiAOV_N.msg" ":defaultArnoldRenderOptions.aovs" -na;
connectAttr "aiAOV_RGBA.msg" ":defaultArnoldRenderOptions.aovs" -na;
connectAttr "aiAOV_Z.msg" ":defaultArnoldRenderOptions.aovs" -na;
connectAttr "aiAOV_albedo.msg" ":defaultArnoldRenderOptions.aovs" -na;
connectAttr "aiAOV_diffuse.msg" ":defaultArnoldRenderOptions.aovs" -na;
connectAttr "aiAOV_direct.msg" ":defaultArnoldRenderOptions.aovs" -na;
connectAttr "aiAOV_indirect.msg" ":defaultArnoldRenderOptions.aovs" -na;
connectAttr "aiAOV_opacity.msg" ":defaultArnoldRenderOptions.aovs" -na;
connectAttr "aiAOV_specular.msg" ":defaultArnoldRenderOptions.aovs" -na;
connectAttr "aiAOV_crypto_asset.msg" ":defaultArnoldRenderOptions.aovs" -na;
connectAttr "aiAOV_AO.msg" ":defaultArnoldRenderOptions.aovs" -na;
connectAttr "aiAOV_volume.msg" ":defaultArnoldRenderOptions.aovs" -na;
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
connectAttr "final.msg" "sequencer1.shts" -na;
connectAttr "establishing_shotShape.msg" "establishing.ccm";
connectAttr "top_shotShape.msg" "top1.ccm";
connectAttr "low_shotShape.msg" "low.ccm";
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
connectAttr "motionPath1_uValue.o" "motionPath1.u";
connectAttr "camera_pathShape.ws" "motionPath1.gp";
connectAttr "positionMarkerShape1.t" "motionPath1.pmt[0]";
connectAttr "positionMarkerShape2.t" "motionPath1.pmt[1]";
connectAttr "cameraAim_360.tmrx" "addDoubleLinear1.i1";
connectAttr "motionPath1.xc" "addDoubleLinear1.i2";
connectAttr "cameraAim_360.tmry" "addDoubleLinear2.i1";
connectAttr "motionPath1.yc" "addDoubleLinear2.i2";
connectAttr "cameraAim_360.tmrz" "addDoubleLinear3.i1";
connectAttr "motionPath1.zc" "addDoubleLinear3.i2";
connectAttr "pasted__aiStandardSurface1SG1.msg" "pasted__materialInfo4.sg";
connectAttr "pasted__aiStandardSurface4.msg" "pasted__materialInfo4.m";
connectAttr "pasted__file6.msg" "pasted__materialInfo4.t" -na;
connectAttr "pasted__aiStandardSurface4.out" "pasted__aiStandardSurface1SG1.ss";
connectAttr "front_plane_goldShape.iog" "pasted__aiStandardSurface1SG1.dsm" -na;
connectAttr "pasted__file6.oc" "pasted__aiStandardSurface4.base_color";
connectAttr "pasted__file7.oc" "pasted__aiStandardSurface4.opacity";
connectAttr ":defaultColorMgtGlobals.cme" "pasted__file6.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "pasted__file6.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "pasted__file6.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "pasted__file6.ws";
connectAttr "pasted__place2dTexture6.c" "pasted__file6.c";
connectAttr "pasted__place2dTexture6.tf" "pasted__file6.tf";
connectAttr "pasted__place2dTexture6.rf" "pasted__file6.rf";
connectAttr "pasted__place2dTexture6.mu" "pasted__file6.mu";
connectAttr "pasted__place2dTexture6.mv" "pasted__file6.mv";
connectAttr "pasted__place2dTexture6.s" "pasted__file6.s";
connectAttr "pasted__place2dTexture6.wu" "pasted__file6.wu";
connectAttr "pasted__place2dTexture6.wv" "pasted__file6.wv";
connectAttr "pasted__place2dTexture6.re" "pasted__file6.re";
connectAttr "pasted__place2dTexture6.of" "pasted__file6.of";
connectAttr "pasted__place2dTexture6.r" "pasted__file6.ro";
connectAttr "pasted__place2dTexture6.n" "pasted__file6.n";
connectAttr "pasted__place2dTexture6.vt1" "pasted__file6.vt1";
connectAttr "pasted__place2dTexture6.vt2" "pasted__file6.vt2";
connectAttr "pasted__place2dTexture6.vt3" "pasted__file6.vt3";
connectAttr "pasted__place2dTexture6.vc1" "pasted__file6.vc1";
connectAttr "pasted__place2dTexture6.o" "pasted__file6.uv";
connectAttr "pasted__place2dTexture6.ofs" "pasted__file6.fs";
connectAttr ":defaultColorMgtGlobals.cme" "pasted__file7.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "pasted__file7.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "pasted__file7.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "pasted__file7.ws";
connectAttr "pasted__place2dTexture7.c" "pasted__file7.c";
connectAttr "pasted__place2dTexture7.tf" "pasted__file7.tf";
connectAttr "pasted__place2dTexture7.rf" "pasted__file7.rf";
connectAttr "pasted__place2dTexture7.mu" "pasted__file7.mu";
connectAttr "pasted__place2dTexture7.mv" "pasted__file7.mv";
connectAttr "pasted__place2dTexture7.s" "pasted__file7.s";
connectAttr "pasted__place2dTexture7.wu" "pasted__file7.wu";
connectAttr "pasted__place2dTexture7.wv" "pasted__file7.wv";
connectAttr "pasted__place2dTexture7.re" "pasted__file7.re";
connectAttr "pasted__place2dTexture7.of" "pasted__file7.of";
connectAttr "pasted__place2dTexture7.r" "pasted__file7.ro";
connectAttr "pasted__place2dTexture7.n" "pasted__file7.n";
connectAttr "pasted__place2dTexture7.vt1" "pasted__file7.vt1";
connectAttr "pasted__place2dTexture7.vt2" "pasted__file7.vt2";
connectAttr "pasted__place2dTexture7.vt3" "pasted__file7.vt3";
connectAttr "pasted__place2dTexture7.vc1" "pasted__file7.vc1";
connectAttr "pasted__place2dTexture7.o" "pasted__file7.uv";
connectAttr "pasted__place2dTexture7.ofs" "pasted__file7.fs";
connectAttr "pasted__aiStandardSurface2SG1.msg" "pasted__materialInfo5.sg";
connectAttr "pasted__aiStandardSurface5.msg" "pasted__materialInfo5.m";
connectAttr "pasted__aiStandardSurface5.msg" "pasted__materialInfo5.t" -na;
connectAttr "pasted__aiStandardSurface5.out" "pasted__aiStandardSurface2SG1.ss";
connectAttr "mid_plane_cloudsShape.iog" "pasted__aiStandardSurface2SG1.dsm" -na;
connectAttr "pasted__file8.oc" "pasted__aiStandardSurface5.base_color";
connectAttr "pasted__file9.oc" "pasted__aiStandardSurface5.opacity";
connectAttr ":defaultColorMgtGlobals.cme" "pasted__file8.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "pasted__file8.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "pasted__file8.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "pasted__file8.ws";
connectAttr "pasted__place2dTexture8.c" "pasted__file8.c";
connectAttr "pasted__place2dTexture8.tf" "pasted__file8.tf";
connectAttr "pasted__place2dTexture8.rf" "pasted__file8.rf";
connectAttr "pasted__place2dTexture8.mu" "pasted__file8.mu";
connectAttr "pasted__place2dTexture8.mv" "pasted__file8.mv";
connectAttr "pasted__place2dTexture8.s" "pasted__file8.s";
connectAttr "pasted__place2dTexture8.wu" "pasted__file8.wu";
connectAttr "pasted__place2dTexture8.wv" "pasted__file8.wv";
connectAttr "pasted__place2dTexture8.re" "pasted__file8.re";
connectAttr "pasted__place2dTexture8.of" "pasted__file8.of";
connectAttr "pasted__place2dTexture8.r" "pasted__file8.ro";
connectAttr "pasted__place2dTexture8.n" "pasted__file8.n";
connectAttr "pasted__place2dTexture8.vt1" "pasted__file8.vt1";
connectAttr "pasted__place2dTexture8.vt2" "pasted__file8.vt2";
connectAttr "pasted__place2dTexture8.vt3" "pasted__file8.vt3";
connectAttr "pasted__place2dTexture8.vc1" "pasted__file8.vc1";
connectAttr "pasted__place2dTexture8.o" "pasted__file8.uv";
connectAttr "pasted__place2dTexture8.ofs" "pasted__file8.fs";
connectAttr ":defaultColorMgtGlobals.cme" "pasted__file9.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "pasted__file9.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "pasted__file9.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "pasted__file9.ws";
connectAttr "pasted__place2dTexture9.c" "pasted__file9.c";
connectAttr "pasted__place2dTexture9.tf" "pasted__file9.tf";
connectAttr "pasted__place2dTexture9.rf" "pasted__file9.rf";
connectAttr "pasted__place2dTexture9.mu" "pasted__file9.mu";
connectAttr "pasted__place2dTexture9.mv" "pasted__file9.mv";
connectAttr "pasted__place2dTexture9.s" "pasted__file9.s";
connectAttr "pasted__place2dTexture9.wu" "pasted__file9.wu";
connectAttr "pasted__place2dTexture9.wv" "pasted__file9.wv";
connectAttr "pasted__place2dTexture9.re" "pasted__file9.re";
connectAttr "pasted__place2dTexture9.of" "pasted__file9.of";
connectAttr "pasted__place2dTexture9.r" "pasted__file9.ro";
connectAttr "pasted__place2dTexture9.n" "pasted__file9.n";
connectAttr "pasted__place2dTexture9.vt1" "pasted__file9.vt1";
connectAttr "pasted__place2dTexture9.vt2" "pasted__file9.vt2";
connectAttr "pasted__place2dTexture9.vt3" "pasted__file9.vt3";
connectAttr "pasted__place2dTexture9.vc1" "pasted__file9.vc1";
connectAttr "pasted__place2dTexture9.o" "pasted__file9.uv";
connectAttr "pasted__place2dTexture9.ofs" "pasted__file9.fs";
connectAttr "pasted__aiStandardSurface3SG1.msg" "pasted__materialInfo6.sg";
connectAttr "pasted__aiStandardSurface6.msg" "pasted__materialInfo6.m";
connectAttr "pasted__file10.msg" "pasted__materialInfo6.t" -na;
connectAttr "pasted__aiStandardSurface6.out" "pasted__aiStandardSurface3SG1.ss";
connectAttr "BG_planeShape.iog" "pasted__aiStandardSurface3SG1.dsm" -na;
connectAttr "pasted__file10.oc" "pasted__aiStandardSurface6.base_color";
connectAttr ":defaultColorMgtGlobals.cme" "pasted__file10.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "pasted__file10.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "pasted__file10.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "pasted__file10.ws";
connectAttr "pasted__place2dTexture10.c" "pasted__file10.c";
connectAttr "pasted__place2dTexture10.tf" "pasted__file10.tf";
connectAttr "pasted__place2dTexture10.rf" "pasted__file10.rf";
connectAttr "pasted__place2dTexture10.mu" "pasted__file10.mu";
connectAttr "pasted__place2dTexture10.mv" "pasted__file10.mv";
connectAttr "pasted__place2dTexture10.s" "pasted__file10.s";
connectAttr "pasted__place2dTexture10.wu" "pasted__file10.wu";
connectAttr "pasted__place2dTexture10.wv" "pasted__file10.wv";
connectAttr "pasted__place2dTexture10.re" "pasted__file10.re";
connectAttr "pasted__place2dTexture10.of" "pasted__file10.of";
connectAttr "pasted__place2dTexture10.r" "pasted__file10.ro";
connectAttr "pasted__place2dTexture10.n" "pasted__file10.n";
connectAttr "pasted__place2dTexture10.vt1" "pasted__file10.vt1";
connectAttr "pasted__place2dTexture10.vt2" "pasted__file10.vt2";
connectAttr "pasted__place2dTexture10.vt3" "pasted__file10.vt3";
connectAttr "pasted__place2dTexture10.vc1" "pasted__file10.vc1";
connectAttr "pasted__place2dTexture10.o" "pasted__file10.uv";
connectAttr "pasted__place2dTexture10.ofs" "pasted__file10.fs";
connectAttr ":timeEditor.cmp[0]" "Composition1.cmp";
connectAttr "Bow_BottomCTRLRNfosterParent1.msg" "Bow_BottomCTRLRN.fp";
connectAttr "tweak1.og[0]" "transferAttributes1.ip[0].ig";
connectAttr "tweak2.og[0]" "transferAttributes2.ip[0].ig";
connectAttr "tweak3.og[0]" "transferAttributes3.ip[0].ig";
connectAttr ":defaultArnoldDriver.msg" "aiAOV_N.out[0].drvr";
connectAttr "aiAOVFilter1.msg" "aiAOV_N.out[0].ftr";
connectAttr ":defaultArnoldDriver.msg" "aiAOV_RGBA.out[0].drvr";
connectAttr ":defaultArnoldFilter.msg" "aiAOV_RGBA.out[0].ftr";
connectAttr ":defaultArnoldDriver.msg" "aiAOV_Z.out[0].drvr";
connectAttr "aiAOVFilter2.msg" "aiAOV_Z.out[0].ftr";
connectAttr ":defaultArnoldDriver.msg" "aiAOV_albedo.out[0].drvr";
connectAttr ":defaultArnoldFilter.msg" "aiAOV_albedo.out[0].ftr";
connectAttr ":defaultArnoldDriver.msg" "aiAOV_diffuse.out[0].drvr";
connectAttr ":defaultArnoldFilter.msg" "aiAOV_diffuse.out[0].ftr";
connectAttr ":defaultArnoldDriver.msg" "aiAOV_direct.out[0].drvr";
connectAttr ":defaultArnoldFilter.msg" "aiAOV_direct.out[0].ftr";
connectAttr ":defaultArnoldDriver.msg" "aiAOV_indirect.out[0].drvr";
connectAttr ":defaultArnoldFilter.msg" "aiAOV_indirect.out[0].ftr";
connectAttr ":defaultArnoldDriver.msg" "aiAOV_opacity.out[0].drvr";
connectAttr ":defaultArnoldFilter.msg" "aiAOV_opacity.out[0].ftr";
connectAttr ":defaultArnoldDriver.msg" "aiAOV_specular.out[0].drvr";
connectAttr ":defaultArnoldFilter.msg" "aiAOV_specular.out[0].ftr";
connectAttr ":defaultArnoldDriver.msg" "aiAOV_crypto_asset.out[0].drvr";
connectAttr ":defaultArnoldFilter.msg" "aiAOV_crypto_asset.out[0].ftr";
connectAttr "_aov_cryptomatte.out" "aiAOV_crypto_asset.dftv";
connectAttr ":defaultArnoldDriver.msg" "aiAOV_AO.out[0].drvr";
connectAttr ":defaultArnoldFilter.msg" "aiAOV_AO.out[0].ftr";
connectAttr "aiAmbientOcclusion1.out" "aiAOV_AO.dftv";
connectAttr "aiAmbientOcclusion1.out" "aiAmbientOcclusion1SG.ss";
connectAttr "aiAmbientOcclusion1SG.msg" "materialInfo1.sg";
connectAttr "aiAmbientOcclusion1.msg" "materialInfo1.m";
connectAttr "aiAmbientOcclusion1.msg" "materialInfo1.t" -na;
connectAttr ":defaultArnoldDriver.msg" "aiAOV_volume.out[0].drvr";
connectAttr ":defaultArnoldFilter.msg" "aiAOV_volume.out[0].ftr";
connectAttr "sequencer1.msg" ":sequenceManager1.seqts" -na;
connectAttr "trackInfoManager1.msg" ":sequenceManager1.tim";
connectAttr "pasted__aiStandardSurface1SG.pa" ":renderPartition.st" -na;
connectAttr "pasted__aiStandardSurface2SG.pa" ":renderPartition.st" -na;
connectAttr "pasted__aiStandardSurface3SG.pa" ":renderPartition.st" -na;
connectAttr "pasted__aiStandardSurface1SG1.pa" ":renderPartition.st" -na;
connectAttr "pasted__aiStandardSurface2SG1.pa" ":renderPartition.st" -na;
connectAttr "pasted__aiStandardSurface3SG1.pa" ":renderPartition.st" -na;
connectAttr "aiAmbientOcclusion1SG.pa" ":renderPartition.st" -na;
connectAttr "pasted__aiStandardSurface1.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__aiStandardSurface2.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__aiStandardSurface3.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__aiStandardSurface4.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__aiStandardSurface5.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__aiStandardSurface6.msg" ":defaultShaderList1.s" -na;
connectAttr "aiAtmosphereVolume.msg" ":defaultShaderList1.s" -na;
connectAttr "_aov_cryptomatte.msg" ":defaultShaderList1.s" -na;
connectAttr "aiAmbientOcclusion1.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "pasted__place2dTexture2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "pasted__place2dTexture3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "pasted__place2dTexture4.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "pasted__place2dTexture5.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "pasted__place2dTexture6.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "pasted__place2dTexture7.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "pasted__place2dTexture8.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "pasted__place2dTexture9.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "pasted__place2dTexture10.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "pasted__aiAreaLightShape1.ltd" ":lightList1.l" -na;
connectAttr "pasted__aiAreaLightShape2.ltd" ":lightList1.l" -na;
connectAttr "pasted__spotLightShape1.ltd" ":lightList1.l" -na;
connectAttr "pasted__spotLightShape2.ltd" ":lightList1.l" -na;
connectAttr "pasted__spotLightShape3.ltd" ":lightList1.l" -na;
connectAttr "pasted__spotLightShape4.ltd" ":lightList1.l" -na;
connectAttr "pasted__spotLightShape5.ltd" ":lightList1.l" -na;
connectAttr "pasted__spotLightShape6.ltd" ":lightList1.l" -na;
connectAttr "spotLightShape1.ltd" ":lightList1.l" -na;
connectAttr "spotLightShape2.ltd" ":lightList1.l" -na;
connectAttr "pasted__spotLightShape8.ltd" ":lightList1.l" -na;
connectAttr "pasted__spotLightShape9.ltd" ":lightList1.l" -na;
connectAttr "pasted__spotLightShape10.ltd" ":lightList1.l" -na;
connectAttr "pasted__spotLightShape11.ltd" ":lightList1.l" -na;
connectAttr "aiAreaLightShape1.ltd" ":lightList1.l" -na;
connectAttr "aiAreaLightShape2.ltd" ":lightList1.l" -na;
connectAttr "aiAreaLightShape3.ltd" ":lightList1.l" -na;
connectAttr "pasted__file1.msg" ":defaultTextureList1.tx" -na;
connectAttr "pasted__file2.msg" ":defaultTextureList1.tx" -na;
connectAttr "pasted__file3.msg" ":defaultTextureList1.tx" -na;
connectAttr "pasted__file4.msg" ":defaultTextureList1.tx" -na;
connectAttr "pasted__file5.msg" ":defaultTextureList1.tx" -na;
connectAttr "pasted__file6.msg" ":defaultTextureList1.tx" -na;
connectAttr "pasted__file7.msg" ":defaultTextureList1.tx" -na;
connectAttr "pasted__file8.msg" ":defaultTextureList1.tx" -na;
connectAttr "pasted__file9.msg" ":defaultTextureList1.tx" -na;
connectAttr "pasted__file10.msg" ":defaultTextureList1.tx" -na;
connectAttr "pHelixShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pasted__aiAreaLight1.iog" ":defaultLightSet.dsm" -na;
connectAttr "pasted__aiAreaLight2.iog" ":defaultLightSet.dsm" -na;
connectAttr "pasted__spotLight1.iog" ":defaultLightSet.dsm" -na;
connectAttr "pasted__spotLight2.iog" ":defaultLightSet.dsm" -na;
connectAttr "pasted__spotLight3.iog" ":defaultLightSet.dsm" -na;
connectAttr "pasted__spotLight4.iog" ":defaultLightSet.dsm" -na;
connectAttr "pasted__spotLight5.iog" ":defaultLightSet.dsm" -na;
connectAttr "pasted__spotLight6.iog" ":defaultLightSet.dsm" -na;
connectAttr "spotLight1.iog" ":defaultLightSet.dsm" -na;
connectAttr "spotLight2.iog" ":defaultLightSet.dsm" -na;
connectAttr "pasted__spotLight8.iog" ":defaultLightSet.dsm" -na;
connectAttr "pasted__spotLight9.iog" ":defaultLightSet.dsm" -na;
connectAttr "pasted__spotLight10.iog" ":defaultLightSet.dsm" -na;
connectAttr "pasted__spotLight11.iog" ":defaultLightSet.dsm" -na;
connectAttr "aiAreaLight1.iog" ":defaultLightSet.dsm" -na;
connectAttr "aiAreaLight2.iog" ":defaultLightSet.dsm" -na;
connectAttr "aiAreaLight3.iog" ":defaultLightSet.dsm" -na;
// End of Scene06_Performance02.ma
