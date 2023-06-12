//Maya ASCII 2023 scene
//Name: Practice01.ma
//Last modified: Mon, Jun 12, 2023 04:37:36 PM
//Codeset: 1252
file -rdi 1 -ns "stage_fertig" -rfn "stage_fertigRN" -op "v=0;" -typ "mayaAscii"
		 "E:/High-Strung//scenes/stage_fertig.ma";
file -rdi 1 -ns "Geige_Rig" -rfn "Geige_RigRN" -op "v=0;" -typ "mayaAscii" "E:/High-Strung//scenes/Geige_Rig.ma";
file -r -ns "stage_fertig" -dr 1 -rfn "stage_fertigRN" -op "v=0;" -typ "mayaAscii"
		 "E:/High-Strung//scenes/stage_fertig.ma";
file -r -ns "Geige_Rig" -dr 1 -rfn "Geige_RigRN" -op "v=0;" -typ "mayaAscii" "E:/High-Strung//scenes/Geige_Rig.ma";
requires maya "2023";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" -nodeType "aiStandardSurface"
		 "mtoa" "5.1.2";
requires "stereoCamera" "10.0";
requires "OpenEXRLoader" "2020";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2023";
fileInfo "version" "2023";
fileInfo "cutIdentifier" "202205052215-234554116d";
fileInfo "osv" "Windows 11 Home v2009 (Build: 22621)";
fileInfo "UUID" "E4ADADCE-4686-4191-7790-26833B6E4EBD";
createNode transform -s -n "persp";
	rename -uid "539E143C-40B0-FB15-755D-3D8AFB875474";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -43.737519307185565 23.941063505509725 128.76310282041791 ;
	setAttr ".r" -type "double3" -20.738352729267156 -379.79999999953361 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "C01235FC-47F2-FA1D-CDDE-1A9B73D664F6";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 116.79733569846002;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "37E32144-454D-A136-F84F-288B30EADD5D";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "E0804A62-43EC-F68C-840E-EEBD4FB3205A";
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
	rename -uid "E9417403-4F0D-D153-97B2-4FA463FF42D5";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "31847BBF-4EBE-52E0-0B26-71AFC10BF907";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "0D19E121-454B-8886-9D6E-72925F9DEC03";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "AC16E368-4C39-F655-4BFA-5494572511DF";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "BG_planes";
	rename -uid "81784926-4E6E-73CA-86ED-B8BE5F1A9F10";
createNode transform -n "BG" -p "BG_planes";
	rename -uid "8B9B6C92-4AA0-CF8C-2D4D-0F9229E19F97";
	setAttr ".t" -type "double3" 0 0 -23.241758476335505 ;
	setAttr ".r" -type "double3" 90.000000000000028 0 0 ;
	setAttr ".s" -type "double3" 100 1 60 ;
	setAttr ".rp" -type "double3" 0 -3.5206068934599486 1.5634635335093122e-15 ;
	setAttr ".rpt" -type "double3" 0 3.5206068934599486 -3.5206068934599504 ;
	setAttr ".sp" -type "double3" 0 -3.5206068934599486 2.6057725558488534e-17 ;
	setAttr ".spt" -type "double3" 0 0 1.5374058079508236e-15 ;
createNode mesh -n "BGShape" -p "BG";
	rename -uid "11B51B71-4464-1EA0-8343-A39AF6A44385";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.99999751320312913 0.49993032542988658 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" -4.3124688e-05 9.2945062e-05
		 0.9999516 -6.0253777e-05 4.8815476e-05 1.000074148178 1.000043511391 0.9999209;
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
createNode transform -n "sofa" -p "BG_planes";
	rename -uid "15A79B2A-4F33-49B1-6EDB-99B5C5CF7C9F";
	setAttr ".t" -type "double3" 0 0 -14.590598771589917 ;
	setAttr ".r" -type "double3" 90.000000000000028 0 0 ;
	setAttr ".s" -type "double3" 100 1 60 ;
	setAttr ".rp" -type "double3" 0 -3.5206068934599486 1.5634635335093122e-15 ;
	setAttr ".rpt" -type "double3" 0 3.5206068934599486 -3.5206068934599504 ;
	setAttr ".sp" -type "double3" 0 -3.5206068934599486 2.6057725558488534e-17 ;
	setAttr ".spt" -type "double3" 0 0 1.5374058079508236e-15 ;
createNode mesh -n "sofaShape" -p "sofa";
	rename -uid "128C1A73-4B61-C84C-5AE8-8393AB41EA0B";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.99999751320312913 0.49993032542988658 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" -4.3124688e-05 9.2945062e-05
		 0.9999516 -6.0253777e-05 4.8815476e-05 1.000074148178 1.000043511391 0.9999209;
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
createNode transform -n "arch" -p "BG_planes";
	rename -uid "ECD1EAE7-4AA9-9D0E-7C47-8E97317D8647";
	setAttr ".t" -type "double3" 0 0 42.123400992111648 ;
	setAttr ".r" -type "double3" 90.000000000000028 0 0 ;
	setAttr ".s" -type "double3" 100 1 60 ;
	setAttr ".rp" -type "double3" 0 -3.5206068934599486 1.5634635335093122e-15 ;
	setAttr ".rpt" -type "double3" 0 3.5206068934599486 -3.5206068934599504 ;
	setAttr ".sp" -type "double3" 0 -3.5206068934599486 2.6057725558488534e-17 ;
	setAttr ".spt" -type "double3" 0 0 1.5374058079508236e-15 ;
createNode mesh -n "archShape" -p "arch";
	rename -uid "A3387130-439B-5209-FE9A-C4B47119B4A5";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.99999751320312913 0.49993032542988658 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" -4.3124688e-05 9.2945062e-05
		 0.9999516 -6.0253777e-05 4.8815476e-05 1.000074148178 1.000043511391 0.9999209;
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
createNode transform -n "notenstand" -p "BG_planes";
	rename -uid "14A61C96-4670-DED4-4339-7BA92ED3FF4C";
	setAttr ".t" -type "double3" 0 0 27.511700704600564 ;
	setAttr ".r" -type "double3" 90.000000000000028 0 0 ;
	setAttr ".s" -type "double3" 100 1 60 ;
	setAttr ".rp" -type "double3" 0 -3.5206068934599486 1.5634635335093122e-15 ;
	setAttr ".rpt" -type "double3" 0 3.5206068934599486 -3.5206068934599504 ;
	setAttr ".sp" -type "double3" 0 -3.5206068934599486 2.6057725558488534e-17 ;
	setAttr ".spt" -type "double3" 0 0 1.5374058079508236e-15 ;
createNode mesh -n "notenstandShape" -p "notenstand";
	rename -uid "44B8B23D-4569-34FC-D110-84A1CFD41E51";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.99999751320312913 0.49993032542988658 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" -4.3124688e-05 9.2945062e-05
		 0.9999516 -6.0253777e-05 4.8815476e-05 1.000074148178 1.000043511391 0.9999209;
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
createNode lightLinker -s -n "lightLinker1";
	rename -uid "F4128EB7-4B4C-F8D9-2AF0-49A3D488F9B8";
	setAttr -s 16 ".lnk";
	setAttr -s 16 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "4AC5F485-4586-9343-920D-E4B458823F87";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "6863349C-4C53-1080-71A9-4A8DC9908DCC";
createNode displayLayerManager -n "layerManager";
	rename -uid "EB71ACB9-42FB-D2EE-DE53-14B601796FC1";
createNode displayLayer -n "defaultLayer";
	rename -uid "D538D237-4B69-3249-5193-E9A3A8F3762E";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "AE0A0923-4EAA-49EF-762C-9B9A03A56C43";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "2B7ABD1B-407B-488B-2F25-BA8769A9A0AE";
	setAttr ".g" yes;
createNode reference -n "stage_fertigRN";
	rename -uid "BF74864B-47FB-55E7-1C2B-469786194BFC";
	setAttr ".ed" -type "dataReferenceEdits" 
		"stage_fertigRN"
		"stage_fertigRN" 0
		"stage_fertigRN" 1
		2 "|stage_fertig:plane_canvasSize" "visibility" " 0";
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
createNode audio -n "Practice01";
	rename -uid "B5737086-445E-2899-DAD7-7DAC2899F79C";
	setAttr ".ef" 241.37143707482994;
	setAttr ".se" 241.37143707482994;
	setAttr ".f" -type "string" "C:/Users/simon/Desktop/Digital Arts Hagenberg/4. Semester/2. SemProj HIGH STRUNG/High-Strung//sound/Practice01.wav";
createNode reference -n "Geige_RigRN";
	rename -uid "C28F7C0E-43A3-1EA0-7931-6288F9F61FDF";
	setAttr -s 22 ".phl";
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
	setAttr ".ed" -type "dataReferenceEdits" 
		"Geige_RigRN"
		"Geige_RigRN" 0
		"Geige_RigRN" 23
		2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geigeCTRL_bottom" 
		"rotate" " -type \"double3\" -32.52252610032193303 -38.63573557732882335 46.16465009316085144"
		
		5 4 "Geige_RigRN" "|Geige_Rig:Geige.translateY" "Geige_RigRN.placeHolderList[1]" 
		""
		5 4 "Geige_RigRN" "|Geige_Rig:Geige.translateZ" "Geige_RigRN.placeHolderList[2]" 
		""
		5 4 "Geige_RigRN" "|Geige_Rig:Geige.translateX" "Geige_RigRN.placeHolderList[3]" 
		""
		5 4 "Geige_RigRN" "|Geige_Rig:Geige.rotateX" "Geige_RigRN.placeHolderList[4]" 
		""
		5 4 "Geige_RigRN" "|Geige_Rig:Geige.rotateZ" "Geige_RigRN.placeHolderList[5]" 
		""
		5 4 "Geige_RigRN" "|Geige_Rig:Geige.rotateY" "Geige_RigRN.placeHolderList[6]" 
		""
		5 4 "Geige_RigRN" "|Geige_Rig:Geige.visibility" "Geige_RigRN.placeHolderList[7]" 
		""
		5 4 "Geige_RigRN" "|Geige_Rig:Geige.scaleX" "Geige_RigRN.placeHolderList[8]" 
		""
		5 4 "Geige_RigRN" "|Geige_Rig:Geige.scaleY" "Geige_RigRN.placeHolderList[9]" 
		""
		5 4 "Geige_RigRN" "|Geige_Rig:Geige.scaleZ" "Geige_RigRN.placeHolderList[10]" 
		""
		5 4 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:bogen_ctrlMiddle|Geige_Rig:bogenCTRL_middle.Bend" 
		"Geige_RigRN.placeHolderList[11]" ""
		5 4 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:bogen_ctrlMiddle|Geige_Rig:bogenCTRL_middle.squashNstretch" 
		"Geige_RigRN.placeHolderList[12]" ""
		5 4 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:bogen_ctrlMiddle|Geige_Rig:bogenCTRL_middle.translateX" 
		"Geige_RigRN.placeHolderList[13]" ""
		5 4 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:bogen_ctrlMiddle|Geige_Rig:bogenCTRL_middle.translateZ" 
		"Geige_RigRN.placeHolderList[14]" ""
		5 4 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:bogen_ctrlMiddle|Geige_Rig:bogenCTRL_middle.translateY" 
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
		"Geige_RigRN.placeHolderList[22]" "";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "CF18BD81-4FB4-F739-DB3B-4FAC8C9B86EF";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 556\n            -height 329\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 556\n            -height 328\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 556\n            -height 328\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n"
		+ "            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 0\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n"
		+ "            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1119\n            -height 701\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n"
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
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"|persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n"
		+ "                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n"
		+ "                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n"
		+ "                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 0\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n"
		+ "\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1119\\n    -height 701\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1119\\n    -height 701\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ttimeControl -e -displaySound 1 -sound Practice01 $gPlayBackSlider;\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "37FA0095-46CF-59D1-2901-ADA4A8DAC288";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 250 -ast 0 -aet 250 ";
	setAttr ".st" 6;
createNode animCurveTL -n "bogenCTRL_middle_translateX";
	rename -uid "7FE55ADC-49D5-0DD3-E53D-25B526CB9565";
	setAttr ".tan" 28;
	setAttr -s 76 ".ktv[0:75]"  0 -10.410500979366207 19 -6.8613691553901637
		 20 -7.3714961148416887 21 -8.0939023875616929 22 -8.4709843899544914 24 -9.0169769226290377
		 26 -8.6595125337520837 28 -7.9540549862726682 29 -7.5616430961008341 34 -5.9762609096640746
		 36 -7.7803364484767261 39 -10.914156855236044 51 -7.1777269634011391 53 -7.5302953113625932
		 54 -7.8205109378732649 55 -8.1436828848533107 56 -8.5005138184292139 58 -9.2228760697088799
		 59 -9.4783715054530973 60 -9.5968175419131878 66 -7.7662082023525434 71 -9.4805459154192473
		 77 -7.6325108568820026 78 -7.7375505869091006 80 -8.2791739529901598 81 -8.5838508498335067
		 82 -8.9058139321067102 83 -9.1880339264008306 85 -9.4938415633391742 88 -9.3246779106430662
		 91 -9.0133560997985214 98 -8.1073944242767695 104 -7.3176464566420103 111 -6.786847556146701
		 113 -6.9492672041395354 114 -7.0921819572671456 117 -7.6984933006766259 120 -8.3752796242200063
		 122 -8.6619691254170128 123 -8.8220098112334249 126 -9.3708673651052283 130 -10.819026334926669
		 132 -10.679107710915433 135 -10.197668273656602 137 -9.8080755492830427 140 -9.1978005970538597
		 142 -8.7776220049759051 145 -8.2097343204090052 147 -7.9041082399371563 151 -7.5867218161049186
		 153 -7.9361779716252832 154 -8.2164593297369297 155 -8.4930679396842876 157 -9.1440273298579093
		 158 -9.4001595350155913 159 -9.5247418267665847 180 -6.6745232568010033 190 -8.934764338549412
		 202 -7.0902967920581395 203 -7.110138428120349 204 -7.1662597356921323 205 -7.2603343164948395
		 206 -7.3932411352444678 207 -7.5605284602285705 209 -7.9830672468883783 211 -8.4813545958720784
		 213 -9.0024762138891123 222 -10.844669587094918 224 -10.627731148723187 226 -10.200458919728876
		 229 -9.3481981150505966 232 -8.4106761189247141 235 -7.5720027018274365 238 -6.8651695059085629
		 239 -6.7021942202811591 241 -6.5286935015506513;
createNode animCurveTL -n "bogenCTRL_middle_translateY";
	rename -uid "BF11CBA2-42E3-F37F-9002-198101DD667E";
	setAttr ".tan" 28;
	setAttr -s 76 ".ktv[0:75]"  0 0.59962148421943107 19 3.2763068751782609
		 20 2.97194430054159 21 2.4996721424659625 22 2.2683535675125692 24 1.7658074080003581
		 26 2.1639088340541157 28 2.846879181535706 29 3.1627102433939509 34 4.1649170187919351
		 36 3.0109036663989057 39 0.10235252807852017 51 3.1701306185197087 53 2.7567472474837373
		 54 2.4427020332353671 55 2.1317403581399574 56 1.8779030544063586 58 1.5631848460756486
		 59 1.5007830154329085 60 1.4772073349655432 66 1.9866722047631722 71 1.5106744972990092
		 77 2.023433797258757 78 2.0206341131263157 80 1.9493562553825472 81 1.849014959237375
		 82 1.6933377186622247 83 1.5147617148036332 85 1.2760847062388285 88 1.3875918281862367
		 91 1.7001105823548395 98 2.8020091661943818 104 3.8226107307029018 111 4.48928211979017
		 113 4.2016011278059686 114 3.9364489461471401 117 2.9662769778275702 120 2.165573686852138
		 122 1.8966955293949745 123 1.7718377501662663 126 1.872751146525129 130 0.38200392116259346
		 132 0.46218423028467748 135 0.75568813923798794 137 1.0295603209255093 140 1.5612164766519865
		 142 2.0276282317653482 145 2.7889034324731159 147 3.2611411424783112 151 3.7797517536689771
		 153 3.1899733654185014 154 2.7404784761533456 155 2.3324585603448127 157 1.5809814756283818
		 158 1.3465557276168496 159 1.2390065918976687 180 3.7884804236834131 190 1.7673624821210911
		 202 3.4214451552155114 203 3.3076651747995833 204 3.0480981400854907 205 2.7544802016560714
		 206 2.525912378775526 207 2.3538306689908857 209 2.0612461212886402 211 1.841719312351374
		 213 1.6590798436379699 222 1.1530558838704872 224 1.1829062626826454 226 1.2487924069866503
		 229 1.4976113151648622 232 2.0051963771794332 235 2.7366875206940042 238 3.5224454526652478
		 239 3.7222443291085905 241 3.9308353984781439;
createNode animCurveTL -n "bogenCTRL_middle_translateZ";
	rename -uid "F3343D9C-45E0-30D2-B3A2-C7A69F3ACDFF";
	setAttr ".tan" 28;
	setAttr -s 76 ".ktv[0:75]"  0 -1.9963070259545004 19 1.8170473941589906
		 20 1.2492900465656327 21 0.45536036400191138 22 0.037227865087305426 24 -0.52721502441513513
		 26 -0.17456466415290028 28 0.54650339883889232 29 0.96326723544584203 34 2.713985592962628
		 36 0.72508249237900024 39 -2.5087437315132637 51 1.444756309358723 53 1.1020065955354337
		 54 0.81345869781774549 55 0.48266873838613883 56 0.095536718395259956 58 -0.73686661329220993
		 59 -1.0432442049651243 60 -1.1865880306567707 66 0.99333915253762806 71 -1.0484004372030959
		 77 1.1526579684194707 78 1.0211103802896591 80 0.35686082114694406 81 -0.0023100167722376291
		 82 -0.36961904287004071 83 -0.68123359296030273 85 -1.0077702257147696 88 -0.82208230766473034
		 91 -0.50659100381068578 98 0.36444045488188448 104 1.1090537959433016 111 1.6142337095947088
		 113 1.4801181522059998 114 1.3650475707619607 117 0.83902629952709917 120 0.18284284804730011
		 122 -0.11231147526213947 123 -0.28324984866424985 126 -0.97621443389716478 130 -2.4573733971732823
		 132 -2.2920200773158803 135 -1.7268454517004015 137 -1.2777254310930142 140 -0.59742156697991211
		 142 -0.1514630957100348 145 0.42203823321730072 147 0.71673663684260625 151 1.0164046640390774
		 153 0.67757331389676145 154 0.40081919218073936 155 0.12014071281956774 157 -0.58468989953174566
		 158 -0.87501710054580073 159 -1.0176057729339043 180 2.2266870560502077 190 -0.34026449761090588
		 202 1.7588580048448064 203 1.7506993090010023 204 1.7190894480111281 205 1.6438094377496486
		 206 1.5096053222040813 207 1.3230252558231732 209 0.82761939227802761 211 0.22622307553625476
		 213 -0.41008214017004518 222 -2.6811417289244832 224 -2.4091706253700647 226 -1.8745888839917768
		 229 -0.8261610437740825 232 0.29153651487603538 235 1.2491401201143821 238 2.0304315919344282
		 239 2.2077383072435399 241 2.3971221429773615;
createNode animCurveTU -n "bogenCTRL_middle_visibility";
	rename -uid "3C24A758-4F26-CB73-FECF-B2AEE245B920";
	setAttr ".tan" 9;
	setAttr -s 20 ".ktv[0:19]"  0 1 19 1 24 1 39 1 51 1 60 1 66 1 71 1 77 1
		 85 1 111 1 123 1 130 1 151 1 159 1 180 1 190 1 202 1 222 1 241 1;
	setAttr -s 20 ".kot[0:19]"  5 5 5 5 5 5 5 5 
		5 5 5 5 5 5 5 5 5 5 5 5;
createNode animCurveTA -n "bogenCTRL_middle_rotateX";
	rename -uid "2DBD17FD-4F8D-FA02-9FC2-39A24880B766";
	setAttr ".tan" 28;
	setAttr -s 23 ".ktv[0:22]"  0 -34.237814125696673 19 -34.237814125696673
		 24 -48.150172618787714 34 -36.452170986411964 39 -36.452170986411964 51 -36.452170986411964
		 60 -16.951986895525312 66 -16.951986895525312 71 -16.951986895525312 77 -16.951986895525312
		 85 -35.682670558583773 111 -48.378287339276952 123 -32.556740393304722 130 -32.285723153952418
		 151 -48.768257758840704 159 -36.023352427003097 180 -43.788514863569439 190 -34.650064379208622
		 202 -34.650064379208622 206 -22.684161870121756 211 -15.530625174902966 222 -14.039857178501041
		 241 -34.705107611247371;
createNode animCurveTA -n "bogenCTRL_middle_rotateY";
	rename -uid "3B0828CE-457E-4D4F-BD6B-739DC674BC75";
	setAttr ".tan" 28;
	setAttr -s 21 ".ktv[0:20]"  0 37.946444633605665 19 37.946444633605665
		 24 37.946444633605665 39 37.946444633605665 51 37.946444633605665 60 37.946444633605665
		 66 37.946444633605665 71 37.946444633605665 77 37.946444633605665 85 37.946444633605715
		 111 37.946444633605715 123 37.946444633605715 130 37.946444633605715 151 36.639463232956416
		 159 36.639463232956416 180 25.976484198330652 190 37.918559340456191 202 37.918559340456191
		 211 38.405589816952968 222 37.918559340456191 241 37.918559340456191;
createNode animCurveTA -n "bogenCTRL_middle_rotateZ";
	rename -uid "A52869C7-4F93-F2AF-1704-C8A90B9C7456";
	setAttr ".tan" 28;
	setAttr -s 21 ".ktv[0:20]"  0 -10.993161535138631 19 -10.993161535138631
		 24 -10.993161535138631 39 -10.993161535138631 51 -10.993161535138631 60 -10.993161535138631
		 66 -10.993161535138631 71 -10.993161535138631 77 -10.993161535138631 85 -10.993161535138688
		 111 -10.993161535138688 123 -10.993161535138688 130 -10.993161535138688 151 -9.0801378679880571
		 159 -9.0801378679880571 180 -23.89855637560095 190 -6.8131806655909424 202 -6.8131806655909424
		 211 -4.6799417559445589 222 -6.8131806655909424 241 -6.8131806655909424;
createNode animCurveTU -n "bogenCTRL_middle_scaleX";
	rename -uid "DDC22235-4E7B-3C4B-74BD-6B9422868E4A";
	setAttr ".tan" 28;
	setAttr -s 20 ".ktv[0:19]"  0 1 19 1 24 1 39 1 51 1 60 1 66 1 71 1 77 1
		 85 1 111 1 123 1 130 1 151 1 159 1 180 1 190 1 202 1 222 1 241 1;
createNode animCurveTU -n "bogenCTRL_middle_scaleY";
	rename -uid "BFCB0DE8-43F4-10F2-23DD-B69F4F52A92E";
	setAttr ".tan" 28;
	setAttr -s 20 ".ktv[0:19]"  0 1 19 1 24 1 39 1 51 1 60 1 66 1 71 1 77 1
		 85 1 111 1 123 1 130 1 151 1 159 1 180 1 190 1 202 1 222 1 241 1;
createNode animCurveTU -n "bogenCTRL_middle_scaleZ";
	rename -uid "46512FB5-4AA8-6A62-563B-938B7C1DBC4D";
	setAttr ".tan" 28;
	setAttr -s 20 ".ktv[0:19]"  0 1 19 1 24 1 39 1 51 1 60 1 66 1 71 1 77 1
		 85 1 111 1 123 1 130 1 151 1 159 1 180 1 190 1 202 1 222 1 241 1;
createNode animCurveTU -n "bogenCTRL_middle_Bend";
	rename -uid "1B9E910C-4113-D908-54CC-3084E50EA992";
	setAttr ".tan" 28;
	setAttr -s 20 ".ktv[0:19]"  0 0 19 0 24 0 39 0 51 0 60 0 66 0 71 0 77 0
		 85 0 111 0 123 0 130 0 151 0 159 0 180 0 190 0 202 0 222 0 241 0;
createNode animCurveTU -n "bogenCTRL_middle_squashNstretch";
	rename -uid "A609E8D4-4399-F098-4FF9-3EA8C006D28E";
	setAttr ".tan" 28;
	setAttr -s 20 ".ktv[0:19]"  0 0 19 0 24 0 39 0 51 0 60 0 66 0 71 0 77 0
		 85 0 111 0 123 0 130 0 151 0 159 0 180 0 190 0 202 0 222 0 241 0;
createNode timeEditor -s -n "timeEditor";
	rename -uid "121FC042-4C5A-4375-5A81-C49AFA5CC6FD";
	setAttr ".ac" 0;
createNode timeEditorTracks -n "Composition1";
	rename -uid "F7B3CEC9-4A27-A106-5BAF-A3ABD9819D30";
createNode animCurveTA -n "Geige_rotateX";
	rename -uid "9BB53375-437B-BB28-685A-DF9A60C171DD";
	setAttr ".tan" 28;
	setAttr -s 21 ".ktv[0:20]"  0 90 19 97.941201672010919 24 93.639449176393526
		 35 100.63230916576738 39 90 52 98.222123012637525 59 92.962958061433739 65 97.606999923183352
		 71 95.305040646833461 77 98.81973849582775 85 93.381113845566759 111 101.34882740194263
		 125 90 129 90 150 99.779151643024989 159 92.623537048644437 180 101.32577681233984
		 191 93.519748335568593 201 96.480753598891766 222 87.125886911035465 243 95;
createNode animCurveTA -n "Geige_rotateY";
	rename -uid "B8A7CB57-4FDA-41F8-D9C4-44BCEA1B8683";
	setAttr ".tan" 28;
	setAttr -s 2 ".ktv[0:1]"  0 0 243 0;
createNode animCurveTA -n "Geige_rotateZ";
	rename -uid "8300A84B-4CAF-BE8A-F623-9182283E57C0";
	setAttr ".tan" 28;
	setAttr -s 2 ".ktv[0:1]"  0 0 243 0;
createNode animCurveTU -n "Geige_visibility";
	rename -uid "7A1EBA72-4757-8E4E-5332-839CA34ACDAA";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 1 243 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "Geige_translateX";
	rename -uid "761D3648-477E-062E-6768-8891A2644255";
	setAttr ".tan" 28;
	setAttr -s 2 ".ktv[0:1]"  0 4.4286802751150347 243 4.4286802751150347;
createNode animCurveTL -n "Geige_translateY";
	rename -uid "25F3C9FA-4B6F-1C31-C160-9090374836F1";
	setAttr ".tan" 28;
	setAttr -s 2 ".ktv[0:1]"  0 -15.028908742710957 243 -15.028908742710957;
createNode animCurveTL -n "Geige_translateZ";
	rename -uid "2C5F2810-4A89-34BC-B973-F487389DCC5C";
	setAttr ".tan" 28;
	setAttr -s 2 ".ktv[0:1]"  0 30.175627136959179 243 30.175627136959179;
createNode animCurveTU -n "Geige_scaleX";
	rename -uid "F9B80DA3-4776-0008-7EB7-479844556ED3";
	setAttr ".tan" 28;
	setAttr -s 2 ".ktv[0:1]"  0 1 243 1;
createNode animCurveTU -n "Geige_scaleY";
	rename -uid "4F7D6901-43E2-A7E9-45CA-75886553618E";
	setAttr ".tan" 28;
	setAttr -s 2 ".ktv[0:1]"  0 1 243 1;
createNode animCurveTU -n "Geige_scaleZ";
	rename -uid "00184008-47B2-33A9-D141-BE907562CC8B";
	setAttr ".tan" 28;
	setAttr -s 2 ".ktv[0:1]"  0 1 243 1;
createNode aiStandardSurface -n "aiStandardSurface1";
	rename -uid "134CA0BF-47C9-730F-CB2B-BBB553003358";
	setAttr ".specular_roughness" 1;
createNode shadingEngine -n "aiStandardSurface1SG";
	rename -uid "CB59F9A9-4B6D-6011-7AEB-6EAF61B3ABBE";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "395064B4-4A57-9647-4016-BBA155C0ACA0";
createNode file -n "file1";
	rename -uid "48F6FFBC-4369-ED50-97EB-C0B106D68326";
	setAttr ".ftn" -type "string" "C:/Users/simon/Desktop/Digital Arts Hagenberg/4. Semester/2. SemProj HIGH STRUNG/High-Strung//assets/2D Planes/Scene 2 Practice/s2_l1.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture1";
	rename -uid "0AE32B0E-4500-6AD3-A97F-1A8606660940";
createNode aiStandardSurface -n "aiStandardSurface2";
	rename -uid "4961A4DE-4CBB-911E-45D5-62BEBCFA233C";
	setAttr ".specular_roughness" 1;
createNode shadingEngine -n "aiStandardSurface2SG";
	rename -uid "A23044A5-4D3C-3ACF-1EE2-A69DB3FF75BB";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
	rename -uid "825B995F-463C-E271-8BC8-FFA2C1AE0C0A";
createNode file -n "file2";
	rename -uid "6EBEC165-4087-E351-D3A3-10B79536E482";
	setAttr ".ftn" -type "string" "C:/Users/simon/Desktop/Digital Arts Hagenberg/4. Semester/2. SemProj HIGH STRUNG/High-Strung//assets/2D Planes/Scene 2 Practice/s2_l2.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture2";
	rename -uid "C1E028EC-456B-A404-3252-D78806596D12";
createNode file -n "file3";
	rename -uid "80D701C7-4CCE-3129-CFB5-C2A77D778768";
	setAttr ".ftn" -type "string" "C:/Users/simon/Desktop/Digital Arts Hagenberg/4. Semester/2. SemProj HIGH STRUNG/High-Strung//assets/2D Planes/Scene 2 Practice/s2_l2_alpha.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture3";
	rename -uid "B3C9E69F-4912-A085-8C1C-FB928FF209FA";
createNode aiStandardSurface -n "aiStandardSurface3";
	rename -uid "B460A46F-4767-5D00-1596-17A5B73013D0";
	setAttr ".specular_roughness" 1;
createNode shadingEngine -n "aiStandardSurface3SG";
	rename -uid "A3BE68F6-48C1-0064-CEE4-F49249ADCA03";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo3";
	rename -uid "9C77C43E-4303-DF2E-0519-2192E7D5A187";
createNode file -n "file4";
	rename -uid "4FC70FEE-4C41-F85D-60D0-B3A162914E3B";
	setAttr ".ftn" -type "string" "C:/Users/simon/Desktop/Digital Arts Hagenberg/4. Semester/2. SemProj HIGH STRUNG/High-Strung//assets/2D Planes/Scene 2 Practice/s2_l3.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture4";
	rename -uid "9E386877-4B38-D8E8-54A6-EF92C03A95BD";
createNode file -n "file5";
	rename -uid "E1792E8E-4B2C-FB09-FF19-699A1B11240E";
	setAttr ".ftn" -type "string" "C:/Users/simon/Desktop/Digital Arts Hagenberg/4. Semester/2. SemProj HIGH STRUNG/High-Strung//assets/2D Planes/Scene 2 Practice/s2_l3_alpha.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture5";
	rename -uid "5669DA87-4D62-48CF-2499-B0BD9C7D0367";
createNode aiStandardSurface -n "aiStandardSurface4";
	rename -uid "8633BA20-45C3-CB51-07F0-098006016ED2";
	setAttr ".specular_roughness" 1;
createNode shadingEngine -n "aiStandardSurface4SG";
	rename -uid "EA223ADD-4C10-FA8C-829D-ACBA198AE1C8";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo4";
	rename -uid "9B3B4AF8-4859-528A-8217-6184F142562C";
createNode file -n "file6";
	rename -uid "7402BD38-432F-F095-3111-8CB322F2161F";
	setAttr ".ftn" -type "string" "C:/Users/simon/Desktop/Digital Arts Hagenberg/4. Semester/2. SemProj HIGH STRUNG/High-Strung//assets/2D Planes/Scene 2 Practice/s2_notenstand.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture6";
	rename -uid "9AA020D0-4421-9B07-5CBD-749AE6B52D9D";
createNode file -n "file7";
	rename -uid "094B4E8F-4DA2-553B-189B-4AAFA0FDD3F5";
	setAttr ".ftn" -type "string" "C:/Users/simon/Desktop/Digital Arts Hagenberg/4. Semester/2. SemProj HIGH STRUNG/High-Strung//assets/2D Planes/Scene 2 Practice/s2_notenstand_alpha.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture7";
	rename -uid "57FB69F0-4510-2963-4E80-CAA15076A66D";
select -ne :time1;
	setAttr ".o" 179;
	setAttr ".unw" 179;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".ta" 5;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 16 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 24 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 31 ".u";
select -ne :defaultRenderingList1;
	setAttr -s 3 ".r";
select -ne :defaultTextureList1;
	setAttr -s 43 ".tx";
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".dss" -type "string" "lambert1";
select -ne :defaultResolution;
	setAttr ".pa" 1;
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
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "Geige_translateY.o" "Geige_RigRN.phl[1]";
connectAttr "Geige_translateZ.o" "Geige_RigRN.phl[2]";
connectAttr "Geige_translateX.o" "Geige_RigRN.phl[3]";
connectAttr "Geige_rotateX.o" "Geige_RigRN.phl[4]";
connectAttr "Geige_rotateZ.o" "Geige_RigRN.phl[5]";
connectAttr "Geige_rotateY.o" "Geige_RigRN.phl[6]";
connectAttr "Geige_visibility.o" "Geige_RigRN.phl[7]";
connectAttr "Geige_scaleX.o" "Geige_RigRN.phl[8]";
connectAttr "Geige_scaleY.o" "Geige_RigRN.phl[9]";
connectAttr "Geige_scaleZ.o" "Geige_RigRN.phl[10]";
connectAttr "bogenCTRL_middle_Bend.o" "Geige_RigRN.phl[11]";
connectAttr "bogenCTRL_middle_squashNstretch.o" "Geige_RigRN.phl[12]";
connectAttr "bogenCTRL_middle_translateX.o" "Geige_RigRN.phl[13]";
connectAttr "bogenCTRL_middle_translateZ.o" "Geige_RigRN.phl[14]";
connectAttr "bogenCTRL_middle_translateY.o" "Geige_RigRN.phl[15]";
connectAttr "bogenCTRL_middle_rotateY.o" "Geige_RigRN.phl[16]";
connectAttr "bogenCTRL_middle_rotateX.o" "Geige_RigRN.phl[17]";
connectAttr "bogenCTRL_middle_rotateZ.o" "Geige_RigRN.phl[18]";
connectAttr "bogenCTRL_middle_scaleX.o" "Geige_RigRN.phl[19]";
connectAttr "bogenCTRL_middle_scaleY.o" "Geige_RigRN.phl[20]";
connectAttr "bogenCTRL_middle_scaleZ.o" "Geige_RigRN.phl[21]";
connectAttr "bogenCTRL_middle_visibility.o" "Geige_RigRN.phl[22]";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "aiStandardSurface1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "aiStandardSurface2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "aiStandardSurface3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "aiStandardSurface4SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "aiStandardSurface1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "aiStandardSurface2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "aiStandardSurface3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "aiStandardSurface4SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr ":timeEditor.cmp[0]" "Composition1.cmp";
connectAttr "file1.oc" "aiStandardSurface1.base_color";
connectAttr "aiStandardSurface1.out" "aiStandardSurface1SG.ss";
connectAttr "BGShape.iog" "aiStandardSurface1SG.dsm" -na;
connectAttr "aiStandardSurface1SG.msg" "materialInfo1.sg";
connectAttr "aiStandardSurface1.msg" "materialInfo1.m";
connectAttr "file1.msg" "materialInfo1.t" -na;
connectAttr ":defaultColorMgtGlobals.cme" "file1.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file1.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file1.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file1.ws";
connectAttr "place2dTexture1.c" "file1.c";
connectAttr "place2dTexture1.tf" "file1.tf";
connectAttr "place2dTexture1.rf" "file1.rf";
connectAttr "place2dTexture1.mu" "file1.mu";
connectAttr "place2dTexture1.mv" "file1.mv";
connectAttr "place2dTexture1.s" "file1.s";
connectAttr "place2dTexture1.wu" "file1.wu";
connectAttr "place2dTexture1.wv" "file1.wv";
connectAttr "place2dTexture1.re" "file1.re";
connectAttr "place2dTexture1.of" "file1.of";
connectAttr "place2dTexture1.r" "file1.ro";
connectAttr "place2dTexture1.n" "file1.n";
connectAttr "place2dTexture1.vt1" "file1.vt1";
connectAttr "place2dTexture1.vt2" "file1.vt2";
connectAttr "place2dTexture1.vt3" "file1.vt3";
connectAttr "place2dTexture1.vc1" "file1.vc1";
connectAttr "place2dTexture1.o" "file1.uv";
connectAttr "place2dTexture1.ofs" "file1.fs";
connectAttr "file2.oc" "aiStandardSurface2.base_color";
connectAttr "file3.oc" "aiStandardSurface2.opacity";
connectAttr "aiStandardSurface2.out" "aiStandardSurface2SG.ss";
connectAttr "sofaShape.iog" "aiStandardSurface2SG.dsm" -na;
connectAttr "aiStandardSurface2SG.msg" "materialInfo2.sg";
connectAttr "aiStandardSurface2.msg" "materialInfo2.m";
connectAttr "aiStandardSurface2.msg" "materialInfo2.t" -na;
connectAttr ":defaultColorMgtGlobals.cme" "file2.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file2.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file2.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file2.ws";
connectAttr "place2dTexture2.c" "file2.c";
connectAttr "place2dTexture2.tf" "file2.tf";
connectAttr "place2dTexture2.rf" "file2.rf";
connectAttr "place2dTexture2.mu" "file2.mu";
connectAttr "place2dTexture2.mv" "file2.mv";
connectAttr "place2dTexture2.s" "file2.s";
connectAttr "place2dTexture2.wu" "file2.wu";
connectAttr "place2dTexture2.wv" "file2.wv";
connectAttr "place2dTexture2.re" "file2.re";
connectAttr "place2dTexture2.of" "file2.of";
connectAttr "place2dTexture2.r" "file2.ro";
connectAttr "place2dTexture2.n" "file2.n";
connectAttr "place2dTexture2.vt1" "file2.vt1";
connectAttr "place2dTexture2.vt2" "file2.vt2";
connectAttr "place2dTexture2.vt3" "file2.vt3";
connectAttr "place2dTexture2.vc1" "file2.vc1";
connectAttr "place2dTexture2.o" "file2.uv";
connectAttr "place2dTexture2.ofs" "file2.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file3.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file3.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file3.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file3.ws";
connectAttr "place2dTexture3.c" "file3.c";
connectAttr "place2dTexture3.tf" "file3.tf";
connectAttr "place2dTexture3.rf" "file3.rf";
connectAttr "place2dTexture3.mu" "file3.mu";
connectAttr "place2dTexture3.mv" "file3.mv";
connectAttr "place2dTexture3.s" "file3.s";
connectAttr "place2dTexture3.wu" "file3.wu";
connectAttr "place2dTexture3.wv" "file3.wv";
connectAttr "place2dTexture3.re" "file3.re";
connectAttr "place2dTexture3.of" "file3.of";
connectAttr "place2dTexture3.r" "file3.ro";
connectAttr "place2dTexture3.n" "file3.n";
connectAttr "place2dTexture3.vt1" "file3.vt1";
connectAttr "place2dTexture3.vt2" "file3.vt2";
connectAttr "place2dTexture3.vt3" "file3.vt3";
connectAttr "place2dTexture3.vc1" "file3.vc1";
connectAttr "place2dTexture3.o" "file3.uv";
connectAttr "place2dTexture3.ofs" "file3.fs";
connectAttr "file4.oc" "aiStandardSurface3.base_color";
connectAttr "file5.oc" "aiStandardSurface3.opacity";
connectAttr "aiStandardSurface3.out" "aiStandardSurface3SG.ss";
connectAttr "archShape.iog" "aiStandardSurface3SG.dsm" -na;
connectAttr "aiStandardSurface3SG.msg" "materialInfo3.sg";
connectAttr "aiStandardSurface3.msg" "materialInfo3.m";
connectAttr "aiStandardSurface3.msg" "materialInfo3.t" -na;
connectAttr ":defaultColorMgtGlobals.cme" "file4.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file4.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file4.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file4.ws";
connectAttr "place2dTexture4.c" "file4.c";
connectAttr "place2dTexture4.tf" "file4.tf";
connectAttr "place2dTexture4.rf" "file4.rf";
connectAttr "place2dTexture4.mu" "file4.mu";
connectAttr "place2dTexture4.mv" "file4.mv";
connectAttr "place2dTexture4.s" "file4.s";
connectAttr "place2dTexture4.wu" "file4.wu";
connectAttr "place2dTexture4.wv" "file4.wv";
connectAttr "place2dTexture4.re" "file4.re";
connectAttr "place2dTexture4.of" "file4.of";
connectAttr "place2dTexture4.r" "file4.ro";
connectAttr "place2dTexture4.n" "file4.n";
connectAttr "place2dTexture4.vt1" "file4.vt1";
connectAttr "place2dTexture4.vt2" "file4.vt2";
connectAttr "place2dTexture4.vt3" "file4.vt3";
connectAttr "place2dTexture4.vc1" "file4.vc1";
connectAttr "place2dTexture4.o" "file4.uv";
connectAttr "place2dTexture4.ofs" "file4.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file5.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file5.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file5.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file5.ws";
connectAttr "place2dTexture5.c" "file5.c";
connectAttr "place2dTexture5.tf" "file5.tf";
connectAttr "place2dTexture5.rf" "file5.rf";
connectAttr "place2dTexture5.mu" "file5.mu";
connectAttr "place2dTexture5.mv" "file5.mv";
connectAttr "place2dTexture5.s" "file5.s";
connectAttr "place2dTexture5.wu" "file5.wu";
connectAttr "place2dTexture5.wv" "file5.wv";
connectAttr "place2dTexture5.re" "file5.re";
connectAttr "place2dTexture5.of" "file5.of";
connectAttr "place2dTexture5.r" "file5.ro";
connectAttr "place2dTexture5.n" "file5.n";
connectAttr "place2dTexture5.vt1" "file5.vt1";
connectAttr "place2dTexture5.vt2" "file5.vt2";
connectAttr "place2dTexture5.vt3" "file5.vt3";
connectAttr "place2dTexture5.vc1" "file5.vc1";
connectAttr "place2dTexture5.o" "file5.uv";
connectAttr "place2dTexture5.ofs" "file5.fs";
connectAttr "file6.oc" "aiStandardSurface4.base_color";
connectAttr "file7.oc" "aiStandardSurface4.opacity";
connectAttr "aiStandardSurface4.out" "aiStandardSurface4SG.ss";
connectAttr "notenstandShape.iog" "aiStandardSurface4SG.dsm" -na;
connectAttr "aiStandardSurface4SG.msg" "materialInfo4.sg";
connectAttr "aiStandardSurface4.msg" "materialInfo4.m";
connectAttr "aiStandardSurface4.msg" "materialInfo4.t" -na;
connectAttr ":defaultColorMgtGlobals.cme" "file6.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file6.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file6.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file6.ws";
connectAttr "place2dTexture6.c" "file6.c";
connectAttr "place2dTexture6.tf" "file6.tf";
connectAttr "place2dTexture6.rf" "file6.rf";
connectAttr "place2dTexture6.mu" "file6.mu";
connectAttr "place2dTexture6.mv" "file6.mv";
connectAttr "place2dTexture6.s" "file6.s";
connectAttr "place2dTexture6.wu" "file6.wu";
connectAttr "place2dTexture6.wv" "file6.wv";
connectAttr "place2dTexture6.re" "file6.re";
connectAttr "place2dTexture6.of" "file6.of";
connectAttr "place2dTexture6.r" "file6.ro";
connectAttr "place2dTexture6.n" "file6.n";
connectAttr "place2dTexture6.vt1" "file6.vt1";
connectAttr "place2dTexture6.vt2" "file6.vt2";
connectAttr "place2dTexture6.vt3" "file6.vt3";
connectAttr "place2dTexture6.vc1" "file6.vc1";
connectAttr "place2dTexture6.o" "file6.uv";
connectAttr "place2dTexture6.ofs" "file6.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file7.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file7.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file7.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file7.ws";
connectAttr "place2dTexture7.c" "file7.c";
connectAttr "place2dTexture7.tf" "file7.tf";
connectAttr "place2dTexture7.rf" "file7.rf";
connectAttr "place2dTexture7.mu" "file7.mu";
connectAttr "place2dTexture7.mv" "file7.mv";
connectAttr "place2dTexture7.s" "file7.s";
connectAttr "place2dTexture7.wu" "file7.wu";
connectAttr "place2dTexture7.wv" "file7.wv";
connectAttr "place2dTexture7.re" "file7.re";
connectAttr "place2dTexture7.of" "file7.of";
connectAttr "place2dTexture7.r" "file7.ro";
connectAttr "place2dTexture7.n" "file7.n";
connectAttr "place2dTexture7.vt1" "file7.vt1";
connectAttr "place2dTexture7.vt2" "file7.vt2";
connectAttr "place2dTexture7.vt3" "file7.vt3";
connectAttr "place2dTexture7.vc1" "file7.vc1";
connectAttr "place2dTexture7.o" "file7.uv";
connectAttr "place2dTexture7.ofs" "file7.fs";
connectAttr "aiStandardSurface1SG.pa" ":renderPartition.st" -na;
connectAttr "aiStandardSurface2SG.pa" ":renderPartition.st" -na;
connectAttr "aiStandardSurface3SG.pa" ":renderPartition.st" -na;
connectAttr "aiStandardSurface4SG.pa" ":renderPartition.st" -na;
connectAttr "aiStandardSurface1.msg" ":defaultShaderList1.s" -na;
connectAttr "aiStandardSurface2.msg" ":defaultShaderList1.s" -na;
connectAttr "aiStandardSurface3.msg" ":defaultShaderList1.s" -na;
connectAttr "aiStandardSurface4.msg" ":defaultShaderList1.s" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture4.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture5.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture6.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture7.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "file1.msg" ":defaultTextureList1.tx" -na;
connectAttr "file2.msg" ":defaultTextureList1.tx" -na;
connectAttr "file3.msg" ":defaultTextureList1.tx" -na;
connectAttr "file4.msg" ":defaultTextureList1.tx" -na;
connectAttr "file5.msg" ":defaultTextureList1.tx" -na;
connectAttr "file6.msg" ":defaultTextureList1.tx" -na;
connectAttr "file7.msg" ":defaultTextureList1.tx" -na;
// End of Practice01.ma
