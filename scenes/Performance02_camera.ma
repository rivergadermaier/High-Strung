//Maya ASCII 2023 scene
//Name: Performance02_camera.ma
//Last modified: Wed, May 31, 2023 07:53:29 PM
//Codeset: 1252
file -rdi 1 -ns "stage_fertig" -rfn "stage_fertigRN" -op "v=0;" -typ "mayaAscii"
		 "E:/High-Strung//scenes/stage_fertig.ma";
file -rdi 1 -ns "Geige_Rig" -rfn "Geige_RigRN" -op "v=0;" -typ "mayaAscii" "E:/High-Strung//scenes/Geige_Rig.ma";
file -r -ns "stage_fertig" -dr 1 -rfn "stage_fertigRN" -op "v=0;" -typ "mayaAscii"
		 "E:/High-Strung//scenes/stage_fertig.ma";
file -r -ns "Geige_Rig" -dr 1 -rfn "Geige_RigRN" -op "v=0;" -typ "mayaAscii" "E:/High-Strung//scenes/Geige_Rig.ma";
requires maya "2023";
requires "stereoCamera" "10.0";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" "mtoa" "5.1.2";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2023";
fileInfo "version" "2023";
fileInfo "cutIdentifier" "202205052215-234554116d";
fileInfo "osv" "Windows 10 Pro N v2009 (Build: 19045)";
fileInfo "UUID" "63F57DA3-4C43-5BFF-9E15-8B88BF7A56D3";
createNode transform -s -n "persp";
	rename -uid "37C5FE8C-4A08-816E-EFA9-E2BCB9C23993";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -7.2421011602892555 13.803616831341841 354.5046197406416 ;
	setAttr ".r" -type "double3" -5.1383527293845885 -0.59999999999992748 3.1061807449777962e-18 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "F9EF8120-45F2-69B4-2154-96900ED0A24B";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 323.48291455133972;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
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
createNode lightLinker -s -n "lightLinker1";
	rename -uid "62E8AFBE-4478-320F-1152-828D8F0E9002";
	setAttr -s 12 ".lnk";
	setAttr -s 12 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "3B76AD1D-4C28-917B-62FE-F1BEA2250EE4";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "30FC3531-46B6-7090-32CC-72A8EBD7DFF8";
createNode displayLayerManager -n "layerManager";
	rename -uid "DA1316CE-49F5-24E5-A9DE-04A0AFD41021";
createNode displayLayer -n "defaultLayer";
	rename -uid "B34918BE-41F2-0950-DF76-819062BC127E";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "8755EC48-47D3-8E2F-BB69-69BD9EF32877";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "1D504B90-43B4-14D8-F7DB-9CA327FB6C2D";
	setAttr ".g" yes;
createNode reference -n "stage_fertigRN";
	rename -uid "C89DA658-4B96-1630-CD68-CC8917822A9D";
	setAttr -s 28 ".phl";
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
	setAttr ".ed" -type "dataReferenceEdits" 
		"stage_fertigRN"
		"stage_fertigRN" 0
		"stage_fertigRN" 36
		2 "|stage_fertig:plane_canvasSize" "visibility" " 1"
		2 "|stage_fertig:curtains" "visibility" " 1"
		2 "|stage_fertig:curtains|stage_fertig:plane_canvasSize1" "visibility" " 1"
		
		2 "|stage_fertig:curtains|stage_fertig:plane_canvasSize2" "visibility" " 1"
		
		2 "|stage_fertig:curtains|stage_fertig:plane_canvasSize3" "visibility" " 1"
		
		2 "stage_fertig:aiStandardSurface2" "specularColor" " -type \"float3\" 0 0 0"
		
		2 "stage_fertig:file11" "viewNameUsed" " 0"
		2 "stage_fertig:file11" "viewNameStr" " -type \"string\" \"<N/A>\""
		3 "stage_fertig:file11.outColor" "stage_fertig:aiStandardSurface2.opacity" 
		""
		3 "stage_fertig:file10.outColor" "stage_fertig:aiStandardSurface2.baseColor" 
		""
		5 4 "stage_fertigRN" "|stage_fertig:curtains|stage_fertig:plane_canvasSize2.translateX" 
		"stage_fertigRN.placeHolderList[1]" ""
		5 4 "stage_fertigRN" "|stage_fertig:curtains|stage_fertig:plane_canvasSize2.translateY" 
		"stage_fertigRN.placeHolderList[2]" ""
		5 4 "stage_fertigRN" "|stage_fertig:curtains|stage_fertig:plane_canvasSize2.translateZ" 
		"stage_fertigRN.placeHolderList[3]" ""
		5 4 "stage_fertigRN" "|stage_fertig:curtains|stage_fertig:plane_canvasSize2.rotateX" 
		"stage_fertigRN.placeHolderList[4]" ""
		5 4 "stage_fertigRN" "|stage_fertig:curtains|stage_fertig:plane_canvasSize2.rotateY" 
		"stage_fertigRN.placeHolderList[5]" ""
		5 4 "stage_fertigRN" "|stage_fertig:curtains|stage_fertig:plane_canvasSize2.rotateZ" 
		"stage_fertigRN.placeHolderList[6]" ""
		5 4 "stage_fertigRN" "|stage_fertig:curtains|stage_fertig:plane_canvasSize2.scaleX" 
		"stage_fertigRN.placeHolderList[7]" ""
		5 4 "stage_fertigRN" "|stage_fertig:curtains|stage_fertig:plane_canvasSize2.scaleY" 
		"stage_fertigRN.placeHolderList[8]" ""
		5 4 "stage_fertigRN" "|stage_fertig:curtains|stage_fertig:plane_canvasSize2.scaleZ" 
		"stage_fertigRN.placeHolderList[9]" ""
		5 4 "stage_fertigRN" "|stage_fertig:curtains|stage_fertig:plane_canvasSize3.translateX" 
		"stage_fertigRN.placeHolderList[10]" ""
		5 4 "stage_fertigRN" "|stage_fertig:curtains|stage_fertig:plane_canvasSize3.translateY" 
		"stage_fertigRN.placeHolderList[11]" ""
		5 4 "stage_fertigRN" "|stage_fertig:curtains|stage_fertig:plane_canvasSize3.translateZ" 
		"stage_fertigRN.placeHolderList[12]" ""
		5 4 "stage_fertigRN" "|stage_fertig:curtains|stage_fertig:plane_canvasSize3.rotateX" 
		"stage_fertigRN.placeHolderList[13]" ""
		5 4 "stage_fertigRN" "|stage_fertig:curtains|stage_fertig:plane_canvasSize3.rotateY" 
		"stage_fertigRN.placeHolderList[14]" ""
		5 4 "stage_fertigRN" "|stage_fertig:curtains|stage_fertig:plane_canvasSize3.rotateZ" 
		"stage_fertigRN.placeHolderList[15]" ""
		5 4 "stage_fertigRN" "|stage_fertig:curtains|stage_fertig:plane_canvasSize3.scaleX" 
		"stage_fertigRN.placeHolderList[16]" ""
		5 4 "stage_fertigRN" "|stage_fertig:curtains|stage_fertig:plane_canvasSize3.scaleY" 
		"stage_fertigRN.placeHolderList[17]" ""
		5 4 "stage_fertigRN" "|stage_fertig:curtains|stage_fertig:plane_canvasSize3.scaleZ" 
		"stage_fertigRN.placeHolderList[18]" ""
		5 0 "stage_fertigRN" "stage_fertig:file10.outColor" "stage_fertig:aiStandardSurface2.baseColor" 
		"stage_fertigRN.placeHolderList[19]" "stage_fertigRN.placeHolderList[20]" "stage_fertig:aiStandardSurface2.base_color"
		
		5 0 "stage_fertigRN" "stage_fertig:file11.outColor" "stage_fertig:aiStandardSurface2.opacity" 
		"stage_fertigRN.placeHolderList[21]" "stage_fertigRN.placeHolderList[22]" "stage_fertig:aiStandardSurface2.opacity"
		
		5 3 "stage_fertigRN" "stage_fertig:aiStandardSurface2.message" "stage_fertigRN.placeHolderList[23]" 
		""
		5 3 "stage_fertigRN" "stage_fertig:aiStandardSurface2SG.message" "stage_fertigRN.placeHolderList[24]" 
		""
		5 3 "stage_fertigRN" "stage_fertig:file10.message" "stage_fertigRN.placeHolderList[25]" 
		""
		5 3 "stage_fertigRN" "stage_fertig:place2dTexture6.message" "stage_fertigRN.placeHolderList[26]" 
		""
		5 3 "stage_fertigRN" "stage_fertig:file11.message" "stage_fertigRN.placeHolderList[27]" 
		""
		5 3 "stage_fertigRN" "stage_fertig:place2dTexture7.message" "stage_fertigRN.placeHolderList[28]" 
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
		"Geige_RigRN" 26
		2 "|Geige_Rig:Geige" "translate" " -type \"double3\" 5.98488343762963115 -15.58267759535923069 27.90934139900109656"
		
		2 "|Geige_Rig:Geige" "rotate" " -type \"double3\" 90 0 0"
		2 "|Geige_Rig:Geige|Geige_Rig:bogen_ctrlMiddle|Geige_Rig:bogenCTRL_middle" 
		"Bend" " -k 1"
		2 "|Geige_Rig:Geige|Geige_Rig:bogen_ctrlMiddle|Geige_Rig:bogenCTRL_middle" 
		"squashNstretch" " -k 1"
		5 4 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:bogen_ctrlMiddle|Geige_Rig:bogenCTRL_middle.Bend" 
		"Geige_RigRN.placeHolderList[1]" ""
		5 4 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:bogen_ctrlMiddle|Geige_Rig:bogenCTRL_middle.squashNstretch" 
		"Geige_RigRN.placeHolderList[2]" ""
		5 4 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:bogen_ctrlMiddle|Geige_Rig:bogenCTRL_middle.translateX" 
		"Geige_RigRN.placeHolderList[3]" ""
		5 4 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:bogen_ctrlMiddle|Geige_Rig:bogenCTRL_middle.translateY" 
		"Geige_RigRN.placeHolderList[4]" ""
		5 4 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:bogen_ctrlMiddle|Geige_Rig:bogenCTRL_middle.translateZ" 
		"Geige_RigRN.placeHolderList[5]" ""
		5 4 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:bogen_ctrlMiddle|Geige_Rig:bogenCTRL_middle.rotateY" 
		"Geige_RigRN.placeHolderList[6]" ""
		5 4 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:bogen_ctrlMiddle|Geige_Rig:bogenCTRL_middle.rotateX" 
		"Geige_RigRN.placeHolderList[7]" ""
		5 4 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:bogen_ctrlMiddle|Geige_Rig:bogenCTRL_middle.rotateZ" 
		"Geige_RigRN.placeHolderList[8]" ""
		5 4 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:bogen_ctrlMiddle|Geige_Rig:bogenCTRL_middle.scaleX" 
		"Geige_RigRN.placeHolderList[9]" ""
		5 4 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:bogen_ctrlMiddle|Geige_Rig:bogenCTRL_middle.scaleY" 
		"Geige_RigRN.placeHolderList[10]" ""
		5 4 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:bogen_ctrlMiddle|Geige_Rig:bogenCTRL_middle.scaleZ" 
		"Geige_RigRN.placeHolderList[11]" ""
		5 4 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:bogen_ctrlMiddle|Geige_Rig:bogenCTRL_middle.visibility" 
		"Geige_RigRN.placeHolderList[12]" ""
		5 4 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geigeCTRL_bottom.translateX" 
		"Geige_RigRN.placeHolderList[13]" ""
		5 4 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geigeCTRL_bottom.translateY" 
		"Geige_RigRN.placeHolderList[14]" ""
		5 4 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geigeCTRL_bottom.translateZ" 
		"Geige_RigRN.placeHolderList[15]" ""
		5 4 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geigeCTRL_bottom.rotateX" 
		"Geige_RigRN.placeHolderList[16]" ""
		5 4 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geigeCTRL_bottom.rotateY" 
		"Geige_RigRN.placeHolderList[17]" ""
		5 4 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geigeCTRL_bottom.rotateZ" 
		"Geige_RigRN.placeHolderList[18]" ""
		5 4 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geigeCTRL_bottom.scaleX" 
		"Geige_RigRN.placeHolderList[19]" ""
		5 4 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geigeCTRL_bottom.scaleY" 
		"Geige_RigRN.placeHolderList[20]" ""
		5 4 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geigeCTRL_bottom.scaleZ" 
		"Geige_RigRN.placeHolderList[21]" ""
		5 4 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geigeCTRL_bottom.visibility" 
		"Geige_RigRN.placeHolderList[22]" "";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode audio -n "Performance02";
	rename -uid "30A02023-4481-FD1C-51A4-F69DFE67E91D";
	setAttr ".o" 87;
	setAttr ".ef" 1120.8220824829932;
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
		+ "            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1047\n            -height 442\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n"
		+ "            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -selectCommand \"print 999\" \n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n"
		+ "            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n"
		+ "            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n"
		+ "            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n"
		+ "                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -isSet 0\n                -isSetMember 0\n"
		+ "                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                -selectionOrder \"display\" \n                -expandAttribute 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n"
		+ "                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -valueLinesToggle 0\n                -outliner \"graphEditor1OutlineEd\" \n                -highlightAffectedCurves 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n"
		+ "            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n"
		+ "                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n"
		+ "                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n"
		+ "                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n"
		+ "                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n"
		+ "                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n"
		+ "                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"|persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n"
		+ "                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n"
		+ "                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n"
		+ "                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 0\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n"
		+ "        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1047\\n    -height 442\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1047\\n    -height 442\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ttimeControl -e -displaySound 1 -sound Performance02 $gPlayBackSlider;\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "65F42BF2-4E10-9FDB-00D0-AF9DDF08536E";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 1143 -ast 0 -aet 1143 ";
	setAttr ".st" 6;
createNode animCurveTL -n "bogenCTRL_middle_translateX";
	rename -uid "6BA32818-475D-45B4-F51F-15905FA964CA";
	setAttr ".tan" 3;
	setAttr -s 145 ".ktv[0:144]"  56 0 70 -4.6324615857615328 84 -9.0010716129472588
		 100 -9.0010716129472588 115 -8.886273833403548 119 -8.886273833403548 129 -7.4830736450482789
		 133 -7.985680655002275 137 -8.525009880624566 144 -7.1613190928388777 151 -8.6281773571073117
		 153 -8.2119759657262712 155 -7.5914658975184564 158 -7.041188955449841 166 -8.6778507407978349
		 172 -8.1298876024037963 177 -7.4061379021792284 185 -6.6395985481595003 192 -8.6548399161853595
		 195 -8.4170724921586952 198 -7.9372707862808127 201 -7.2497533571670987 204 -6.6770763126126322
		 208 -6.1726667749339033 211 -6.0127024509090674 213 -6.4108087733754999 215 -7.133641618429027
		 218 -8.0614871657604681 225 -6.6882203610859703 230 -7.2063398039042168 235 -8.1286879971300028
		 240 -9.1418626741386131 245 -9.7435221591133594 249 -9.4238625556327325 251 -9.1881621434966192
		 252 -9.0525063387232176 255 -8.54253501262985 259 -7.806642978642218 265 -6.787472537397818
		 268 -6.4069507094707427 270 -6.2566076997619335 271 -6.2356686459960011 275 -7.3072062703729506
		 278 -8.354814134119497 285 -9.4364785705592542 289 -8.8913194027483726 293 -8.0109063489409138
		 297 -7.4702278745627151 306 -8.12608615635075 311 -8.7269493848444224 315 -9.1708458944171589
		 319 -9.4937460851908462 322 -9.5955720104662934 327 -9.1476303967186645 331 -8.5007007263164525
		 340 -6.6563365584527876 348 -5.6513142040604558 354 -6.259750268596906 361 -7.5059795600168977
		 367 -8.5622864054529835 373 -9.1582765489030074 385 -7.2353255589793335 399 -9.2619306116126285
		 412 -6.5372366435607994 416 -7.3395264975250898 418 -7.8810530672288124 419 -8.1284022662168152
		 421 -8.5203510243939284 423 -8.7310502146657427 428 -7.8462352708979219 430 -7.2658348249494979
		 432 -6.6800591929130553 435 -6.1612439189828416 448 -9.5953390233759297 454 -8.8025816200883149
		 461 -7.2082715624385258 472 -5.3576702822345039 475 -5.8364482127015442 477 -6.4267227339333584
		 480 -7.6676414190243207 482 -8.4099057421764307 486 -9.3502386490638454 499 -5.1442316330988183
		 511 -8.6332905402869073 524 -4.9680875997153571 562 -10.633281880081979 576 -7.4184578187777221
		 587 -8.9775201754709304 592 -8.3721039800009027 596 -7.5885623468146335 600 -6.6939197309840193
		 605 -7.3599753395876935 610 -8.0066973540302158 615 -8.6798932995512157 619 -9.7208817642490519
		 622 -10.168497074880863 626 -9.1124241772486219 629 -8.7656140484928855 633 -8.1593345686569663
		 637 -7.5281822480919587 641 -6.8634440361713773 645 -6.2794293309636888 651 -5.6695872537010246
		 656 -5.9694125716985349 660 -6.4760667191526293 663 -6.9072738037400221 666 -7.472499591227896
		 669 -8.2579024003156967 672 -8.9296887052904275 674 -9.3679486000938468 676 -9.7670396872831251
		 678 -10.09186144924695 680 -10.257393513803587 684 -9.9975166765194725 687 -9.6041275253804095
		 694 -8.3111600644695134 700 -7.2765833485053664 706 -6.6997819768709732 714 -7.3694941310292714
		 719 -7.9791342008374961 722 -8.3845102824558051 725 -8.7622339096801731 732 -9.3193550949075217
		 735 -9.178393965464263 737 -8.9854109973981817 738 -8.8833693235487807 740 -8.6720266050418893
		 743 -8.2239656873074818 745 -7.9061208139562247 750 -7.1747577998804566 761 -6.3621282029856525
		 782 -9.5934251448371111 794 -7.1980020863198177 808 -9.4914885900637351 816 -8.7290424576718468
		 825 -7.4683860513493929 830 -6.9583228040216598 834 -6.7734277933269897 841 -7.2448538227190094
		 850 -8.7448663029931453 858 -10.092094734617078 870 -10.740630017010689 875 -10.740630017010689
		 884 -12.942270313988207 902 -6.3223399626291279;
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
	setAttr -s 145 ".ktv[0:144]"  56 0 70 2.5182107159483764 84 1.7093197427783196
		 100 1.7093197427783196 115 1.3166764983153918 119 1.3166764983153918 129 1.9518723946014251
		 133 1.6868965963706035 137 1.6797704567459082 144 1.6829332681138158 151 1.6795311801662596
		 153 1.6476026319512895 155 1.8560968959066559 158 2.4522722684106011 166 1.339717880459564
		 172 1.737596712409426 177 2.5288741951329907 185 3.6161486058471031 192 1.3183215564717647
		 195 1.5360932858436374 198 1.8297596735912833 201 2.333789432716328 204 3.0293825963128871
		 208 4.0218052137594418 211 4.436400589420594 213 3.6600538458188372 215 2.5734924761761486
		 218 1.7468044757153913 225 2.6050071922675015 230 2.1714639471234722 235 1.6563441596598016
		 240 1.4455568542911905 245 1.4411039399976648 249 1.3152691671698178 251 1.2784129239389646
		 252 1.2953129149373144 255 1.4781061911619597 259 1.7976462325001969 265 2.2976745620768688
		 268 2.5106174763309395 270 2.6230328917645629 271 2.656993699083162 275 2.1476621461930976
		 278 1.5559718659713209 285 0.79928135705264103 289 1.2530913192481083 293 1.7086493964620693
		 297 1.869865605266485 306 1.6426196020623902 311 1.3686888401802113 315 1.1193249569684844
		 319 0.88194507238714304 322 0.76269699723156004 327 1.0051181830120866 331 1.4481988851847849
		 340 2.6705932318149497 348 3.2824796685992506 354 2.8702488608629428 361 2.0833166745924938
		 367 1.4231275132722552 373 1.0442156986489157 385 2.2578472684328537 399 0.97879653638222264
		 412 2.7100460579832455 416 2.3209617068210209 418 1.9981249183235978 419 1.816768893066818
		 421 1.4703712463723351 423 1.24884600433201 428 1.9595705195738651 430 2.2538536203867001
		 432 2.4384577003964245 435 2.53669802846369 448 1.0202570663871666 454 1.3730816926495875
		 461 2.0562336520315094 472 2.8837323924208849 475 2.5257533744707037 477 2.1664323564272947
		 480 1.7285382162718921 482 1.625552365148303 486 1.6440231270239019 499 1.6972244784725516
		 511 1.6630780345895628 524 1.6989483508723167 562 1.6312174687915855 576 1.6626800529218981
		 587 1.6474219455958183 592 1.5699670024708818 596 1.8209812675418018 600 2.4179573875624865
		 605 1.8320769813427265 610 1.673832155437573 615 1.6011439313298561 619 1.5971825077785822
		 622 1.6859344439736803 626 1.7932301922557117 629 1.7909677903175854 633 1.6943597904411698
		 637 1.5855557848015296 641 1.5173980522850692 645 1.5467027092072576 651 1.6497930795711733
		 656 1.6054966526101555 660 1.5608874833467397 663 1.5658581813520849 666 1.6156921068748873
		 669 1.7061551074874557 672 1.7762475080415336 674 1.8022423513701269 676 1.7974920387008209
		 678 1.7657669976863046 680 1.6688548974361155 684 1.4651187551262341 687 1.4004750179635705
		 694 1.6107097422364718 700 2.1242323553381319 706 2.464559421426034 714 1.9815910586922836
		 719 1.7164162297050636 722 1.6410320754681664 725 1.6460326646296737 732 1.7242388345161066
		 735 1.5703725503965864 737 1.4523490959325995 738 1.4275847128673831 740 1.4708834341391781
		 743 1.678759490767751 745 1.824384684089029 750 2.1980660467237945 761 2.6222781458866842
		 782 1.0033591728663913 794 2.2034951887232164 808 1.0544306235986187 816 1.4051796569061623
		 825 2.262615411053349 830 2.734066875705456 834 2.9199133256061995 841 2.4883501956962828
		 850 1.3759138249943224 858 0.66161433617012544 870 0.38058153492855029 875 0.38058153492855029
		 884 3.7072021826408399 902 3.2782565204220795;
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
	setAttr -s 145 ".ktv[0:144]"  56 0 70 -0.29095557755927531 84 -0.058226350674739788
		 100 -0.058226350674739788 115 0.026777615586962428 119 0.026777615586962428 129 1.065801035233803
		 133 0.69363713548905215 137 0.29428164724729089 144 1.3040496599830818 151 0.21788953648434167
		 153 0.52607292793711991 155 0.98554015032274966 158 1.3930020612074006 166 0.18110803558671276
		 172 0.58685665122931341 177 1.1227694131689621 185 1.6720362479944131 192 0.19814679162179541
		 195 0.37420572037833677 198 0.72948304526093732 201 1.2385670064752268 204 1.6626154538202034
		 208 2.0361140658434396 211 2.1545623673396062 213 1.8597777770973989 215 1.3245439161463914
		 218 0.63750491665594367 225 1.6543636537922646 230 1.270713309579067 235 0.58774491933545048
		 240 -0.16247748395468409 245 -0.60798647171655296 249 -0.3712890873464012 251 -0.19676071266246462
		 252 -0.096312067244447089 255 0.28130486550443146 259 0.82620862477552104 265 1.5808706935612569
		 268 1.8626345460636422 270 1.9739585819096894 271 1.9894632600223341 275 1.196025020774826
		 278 0.42030597934945857 285 -0.3806308299431071 289 0.023041538042120429 293 0.67495834183115089
		 297 1.0753129042377776 306 0.58967149654537199 311 0.14475211042321912 315 -0.18393860183086141
		 319 -0.42303553411929318 322 -0.49843427049803735 327 -0.16423531747993825 331 0.31410462847054299
		 340 1.6684908954926829 348 2.4221584346555254 354 1.9783696057985838 361 1.0513960355465619
		 367 0.26721815904071966 373 -0.1746314163934426 385 1.2492503147697034 399 -0.25138382819511002
		 412 1.7661621126265059 416 1.1468591656338045 418 0.74189811066592082 419 0.56649888794125602
		 421 0.30680669374643416 423 0.180862551181042 428 0.73034961690141309 430 1.1549672770755566
		 432 1.6133419982229331 435 2.0303709341945733 448 -0.43504336450092679 454 0.13178962773486896
		 461 1.2742714471565488 472 2.6015427011312546 475 2.217718777260238 477 1.7579404801701204
		 480 0.86450423979714508 482 0.33183710020209256 486 -0.35646682588230277 499 2.5324010216142194
		 511 0.13421432395895669 524 2.6534727171540409 562 -1.2354797513154305 576 0.97421303525187941
		 587 -0.097400458270359647 592 0.34871047122915738 596 0.77364674805979716 600 1.2877728914245745
		 605 0.94360707145492217 610 0.65164827711819218 615 0.19372246761223005 619 -0.6408827848462022
		 622 -1.0286876404929519 626 -0.23354684751685617 629 0.010577191466322751 633 0.46196436682145764
		 637 0.92526065159090853 641 1.3743032757559466 645 1.7898869301003058 651 2.2603595076400094
		 656 2.0458150383947356 660 1.6968887142453122 663 1.398665801528618 666 1.0592799573901739
		 669 0.64828430508331114 672 0.060546291862586088 674 -0.26503017672329188 676 -0.54100933024837883
		 678 -0.76114499355955678 680 -0.86064766042638263 684 -0.63482876878439654 687 -0.32265433019572665
		 694 0.60092016008569882 700 1.2996779561094629 706 1.6832128361148602 714 1.2526830784134591
		 719 0.84741669789082086 722 0.55767113887832331 725 0.27384909951775893 732 -0.16350024963621221
		 735 -0.027509056132615554 737 0.14321523076490311 738 0.23091856726413323 740 0.38690222509043037
		 743 0.67417944160105103 745 0.88246631442394607 750 1.3657690260921902 761 1.9105954991804164
		 782 -0.24668617177213617 794 1.3525485476948909 808 -0.17863118791581845 816 0.33573682177023412
		 825 1.1387606869879212 830 1.4423704751903117 834 1.5498712068487031 841 1.2685457356865824
		 850 0.32882123360132098 858 -0.56389280587800905 870 -1.0043739020590945 875 -1.0043739020590945
		 884 -2.0368340401656786 902 6.7154077472839306;
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
	setAttr -s 49 ".ktv[0:48]"  84 1 100 1 115 1 119 1 129 1 137 1 144 1
		 151 1 158 1 166 1 185 1 192 1 211 1 218 1 225 1 245 1 271 1 285 1 297 1 322 1 348 1
		 373 1 385 1 399 1 412 1 423 1 435 1 448 1 472 1 486 1 499 1 511 1 524 1 562 1 576 1
		 587 1 600 1 622 1 651 1 680 1 706 1 732 1 761 1 782 1 794 1 808 1 834 1 870 1 875 1;
createNode animCurveTA -n "bogenCTRL_middle_rotateX";
	rename -uid "6A046D3E-413F-7F6E-FFE1-CFA1AD737BB6";
	setAttr ".tan" 3;
	setAttr -s 55 ".ktv[0:54]"  56 0 84 -19.991344787507344 100 -19.991344787507344
		 115 -19.991344787507344 119 -19.991344787507344 129 -19.991344787507344 137 -0.10679555284371253
		 144 -0.10679555284371253 151 -0.10679555284371253 158 -28.648044253156129 166 -28.648044253156129
		 185 -12.66358926132752 192 -43 198 -27.349853708401458 211 -43 218 -26.667491321049937
		 225 -26.667491321049937 245 -6.2915895553386401 252 -16.867991874808812 271 -22.416468290658855
		 285 -29.391689630111721 297 -15.876961756127526 322 -26.894818552894144 348 -43.467764639137833
		 373 -26.894818552894144 385 -26.894818552894144 399 -26.894818552894144 412 -26.894818552894144
		 423 -56.626481571429338 435 -26.946984490932845 448 -26.946984490932845 472 -2.3749810765688273
		 486 -12.175902406387765 499 -12.175902406387765 511 -12.175902406387765 524 -12.175902406387765
		 562 -25.10894984637817 576 -25.10894984637817 587 -25.10894984637817 600 -42.045420143056361
		 605 -30.218768388257853 622 -21.20242889959852 651 33.695163696240407 680 -10.474327341216448
		 706 -33.299374809382641 732 -8.362460361859279 740 -30.588128527085466 761 -33.026848909500472
		 782 -33.026848909500472 794 -33.026848909500472 808 -33.026848909500472 834 -44.160742532753005
		 870 -33.693775058682093 875 -33.693775058682093 902 -159.93907172124221;
createNode animCurveTA -n "bogenCTRL_middle_rotateY";
	rename -uid "3020D6C4-410C-1191-D7C4-848036ADC372";
	setAttr ".tan" 3;
	setAttr -s 51 ".ktv[0:50]"  56 0 84 53.48127368038984 100 53.48127368038984
		 115 53.48127368038984 119 53.48127368038984 129 53.48127368038984 137 53.481273680389855
		 144 53.481273680389855 151 53.481273680389855 158 53.481273680389947 166 53.481273680389947
		 185 63.508245238646538 192 53.481273680389911 211 53.481273680389911 218 53.481273680389933
		 225 53.481273680389933 245 53.481273680389975 271 53.481273680390082 285 53.481273680390096
		 297 53.481273680390125 322 53.481273680390125 348 43.007902506137043 373 53.481273680390125
		 385 53.481273680390125 399 53.481273680390125 412 53.481273680390125 423 37.990800853441129
		 435 51.935913975046404 448 51.935913975046404 472 56.627866084845238 486 54.587521653134814
		 499 54.587521653134814 511 54.587521653134814 524 54.587521653134814 562 51.278529577427349
		 576 51.278529577427349 587 51.278529577427349 600 44.682603817593936 622 47.520520053185571
		 651 50.260806812260519 680 52.315427679003385 706 52.315427679003406 732 52.315427679003434
		 761 52.315427679003413 782 52.315427679003413 794 52.315427679003413 808 52.315427679003413
		 834 52.315427679003434 870 52.315427679003513 875 52.315427679003513 902 8.6373935794769352;
createNode animCurveTA -n "bogenCTRL_middle_rotateZ";
	rename -uid "3F37B5DA-40AF-5E4B-C749-349E62107965";
	setAttr ".tan" 3;
	setAttr -s 50 ".ktv[0:49]"  84 0 100 0 115 0 119 0 129 0 137 0 144 0
		 151 0 158 0 166 0 185 35.151487038268442 192 0 211 0 218 0 225 0 245 0 271 0 285 0
		 297 0 322 0 348 -22.004231718872106 373 0 385 0 399 0 412 0 423 -18.449961546615473
		 435 -9.1761290508200553 448 -9.1761290508200553 472 20.830339680310075 486 -14.267844568324797
		 499 -14.267844568324797 511 -14.267844568324797 524 -14.267844568324797 562 -30.430410826319108
		 576 -30.430410826319108 587 -30.430410826319108 600 -20.326151119784882 622 -28.087206403398365
		 651 40.741979879642031 680 -12.789459035676009 706 -12.789459035676007 732 -12.789459035676057
		 761 -12.789459035676073 782 -12.789459035676073 794 -12.789459035676073 808 -12.789459035676073
		 834 -12.78945903567609 870 -12.78945903567614 875 -12.78945903567614 902 -161.831286121734;
createNode animCurveTU -n "bogenCTRL_middle_scaleX";
	rename -uid "EAA25CF9-48B0-E9AA-C14E-9C9805B0C28C";
	setAttr ".tan" 3;
	setAttr -s 49 ".ktv[0:48]"  84 1 100 1 115 1 119 1 129 1 137 1 144 1
		 151 1 158 1 166 1 185 1 192 1 211 1 218 1 225 1 245 1 271 1 285 1 297 1 322 1 348 1
		 373 1 385 1 399 1 412 1 423 1 435 1 448 1 472 1 486 1 499 1 511 1 524 1 562 1 576 1
		 587 1 600 1 622 1 651 1 680 1 706 1 732 1 761 1 782 1 794 1 808 1 834 1 870 1 875 1;
createNode animCurveTU -n "bogenCTRL_middle_scaleY";
	rename -uid "6C463F88-4FBA-B696-B69B-73B68BA3755F";
	setAttr ".tan" 3;
	setAttr -s 49 ".ktv[0:48]"  84 1 100 1 115 1 119 1 129 1 137 1 144 1
		 151 1 158 1 166 1 185 1 192 1 211 1 218 1 225 1 245 1 271 1 285 1 297 1 322 1 348 1
		 373 1 385 1 399 1 412 1 423 1 435 1 448 1 472 1 486 1 499 1 511 1 524 1 562 1 576 1
		 587 1 600 1 622 1 651 1 680 1 706 1 732 1 761 1 782 1 794 1 808 1 834 1 870 1 875 1;
createNode animCurveTU -n "bogenCTRL_middle_scaleZ";
	rename -uid "5B6F6C90-4084-A76D-B825-6BAAE55E4966";
	setAttr ".tan" 3;
	setAttr -s 49 ".ktv[0:48]"  84 1 100 1 115 1 119 1 129 1 137 1 144 1
		 151 1 158 1 166 1 185 1 192 1 211 1 218 1 225 1 245 1 271 1 285 1 297 1 322 1 348 1
		 373 1 385 1 399 1 412 1 423 1 435 1 448 1 472 1 486 1 499 1 511 1 524 1 562 1 576 1
		 587 1 600 1 622 1 651 1 680 1 706 1 732 1 761 1 782 1 794 1 808 1 834 1 870 1 875 1;
createNode animCurveTU -n "bogenCTRL_middle_Bend";
	rename -uid "33120531-45E7-6425-4267-5CA155240D06";
	setAttr ".tan" 3;
	setAttr -s 49 ".ktv[0:48]"  84 0 100 0 115 0 119 0 129 0 137 0 144 0
		 151 0 158 0 166 0 185 0 192 0 211 0 218 0 225 0 245 0 271 0 285 0 297 0 322 0 348 0
		 373 0 385 0 399 0 412 0 423 0 435 0 448 0 472 0 486 0 499 0 511 0 524 0 562 0 576 0
		 587 0 600 0 622 0 651 0 680 0 706 0 732 0 761 0 782 0 794 0 808 0 834 0 870 0 875 0;
createNode animCurveTU -n "bogenCTRL_middle_squashNstretch";
	rename -uid "5C38DCEC-42DE-A36A-CFFC-C6AD98DF20BA";
	setAttr ".tan" 3;
	setAttr -s 49 ".ktv[0:48]"  84 0 100 0 115 0 119 0 129 0 137 0 144 0
		 151 0 158 0 166 0 185 0 192 0 211 0 218 0 225 0 245 0 271 0 285 0 297 0 322 0 348 0
		 373 0 385 0 399 0 412 0 423 0 435 0 448 0 472 0 486 0 499 0 511 0 524 0 562 0 576 0
		 587 0 600 0 622 0 651 0 680 0 706 0 732 0 761 0 782 0 794 0 808 0 834 0 870 0 875 0;
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
	setAttr -s 2 ".ktv[0:1]"  24 -50 120 -125;
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
	setAttr -s 2 ".ktv[0:1]"  24 50 120 125;
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
	setAttr ".ktv[0]"  83 1;
createNode animCurveTL -n "geigeCTRL_bottom_translateX";
	rename -uid "7848348E-4448-C991-7520-23BDC3A43113";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  83 0;
createNode animCurveTL -n "geigeCTRL_bottom_translateY";
	rename -uid "A6A2D03F-42FB-5E76-309A-71B1E6D8CAB6";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  83 0;
createNode animCurveTL -n "geigeCTRL_bottom_translateZ";
	rename -uid "D6896EE9-4578-61AA-8577-6393C203B4BE";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  83 0;
createNode animCurveTA -n "geigeCTRL_bottom_rotateX";
	rename -uid "E44EC85A-4C27-708F-AC19-59B22056FBB8";
	setAttr ".tan" 3;
	setAttr -s 2 ".ktv[0:1]"  51 0 83 -22.001816681844499;
createNode animCurveTA -n "geigeCTRL_bottom_rotateY";
	rename -uid "CFD4F08F-45B5-44BF-C73E-94A8D8BF7F81";
	setAttr ".tan" 3;
	setAttr -s 2 ".ktv[0:1]"  51 0 83 -32.193234844081594;
createNode animCurveTA -n "geigeCTRL_bottom_rotateZ";
	rename -uid "783E502B-4E1B-FC46-A456-F6AF45259316";
	setAttr ".tan" 3;
	setAttr -s 2 ".ktv[0:1]"  51 0 83 38.19520770959236;
createNode animCurveTU -n "geigeCTRL_bottom_scaleX";
	rename -uid "38B3F20B-41CF-CDE6-4CBC-AAACD63DF5A9";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  83 1;
createNode animCurveTU -n "geigeCTRL_bottom_scaleY";
	rename -uid "682D16EA-4E08-2880-C2AF-368887F4AD86";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  83 1;
createNode animCurveTU -n "geigeCTRL_bottom_scaleZ";
	rename -uid "2687044F-442E-45E6-4AAD-B286CBD5CC13";
	setAttr ".tan" 3;
	setAttr ".ktv[0]"  83 1;
select -ne :time1;
	setAttr -av -k on ".cch";
	setAttr -k on ".fzn";
	setAttr -av -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr ".o" 15;
	setAttr -av -k on ".unw" 15;
	setAttr -av -k on ".etw";
	setAttr -av -k on ".tps";
	setAttr -av -k on ".tms";
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
	setAttr -s 12 ".st";
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
	setAttr -s 20 ".s";
select -ne :postProcessList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 24 ".u";
select -ne :defaultRenderingList1;
	setAttr -k on ".ihi";
	setAttr -s 3 ".r";
select -ne :defaultTextureList1;
	setAttr -s 36 ".tx";
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
	setAttr -av -k on ".outf";
	setAttr -av -cb on ".imfkey";
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
	setAttr -av -k on ".w";
	setAttr -av -k on ".h";
	setAttr -av ".pa" 1;
	setAttr -av -k on ".al";
	setAttr -av -k on ".dar";
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
connectAttr "plane_canvasSize2_translateX.o" "stage_fertigRN.phl[1]";
connectAttr "plane_canvasSize2_translateY.o" "stage_fertigRN.phl[2]";
connectAttr "plane_canvasSize2_translateZ.o" "stage_fertigRN.phl[3]";
connectAttr "plane_canvasSize2_rotateX.o" "stage_fertigRN.phl[4]";
connectAttr "plane_canvasSize2_rotateY.o" "stage_fertigRN.phl[5]";
connectAttr "plane_canvasSize2_rotateZ.o" "stage_fertigRN.phl[6]";
connectAttr "plane_canvasSize2_scaleX.o" "stage_fertigRN.phl[7]";
connectAttr "plane_canvasSize2_scaleY.o" "stage_fertigRN.phl[8]";
connectAttr "plane_canvasSize2_scaleZ.o" "stage_fertigRN.phl[9]";
connectAttr "plane_canvasSize3_translateX.o" "stage_fertigRN.phl[10]";
connectAttr "plane_canvasSize3_translateY.o" "stage_fertigRN.phl[11]";
connectAttr "plane_canvasSize3_translateZ.o" "stage_fertigRN.phl[12]";
connectAttr "plane_canvasSize3_rotateX.o" "stage_fertigRN.phl[13]";
connectAttr "plane_canvasSize3_rotateY.o" "stage_fertigRN.phl[14]";
connectAttr "plane_canvasSize3_rotateZ.o" "stage_fertigRN.phl[15]";
connectAttr "plane_canvasSize3_scaleX.o" "stage_fertigRN.phl[16]";
connectAttr "plane_canvasSize3_scaleY.o" "stage_fertigRN.phl[17]";
connectAttr "plane_canvasSize3_scaleZ.o" "stage_fertigRN.phl[18]";
connectAttr "stage_fertigRN.phl[19]" "stage_fertigRN.phl[20]";
connectAttr "stage_fertigRN.phl[21]" "stage_fertigRN.phl[22]";
connectAttr "stage_fertigRN.phl[23]" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[0].dn"
		;
connectAttr "stage_fertigRN.phl[24]" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[3].dn"
		;
connectAttr "stage_fertigRN.phl[25]" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[4].dn"
		;
connectAttr "stage_fertigRN.phl[26]" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[2].dn"
		;
connectAttr "stage_fertigRN.phl[27]" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[1].dn"
		;
connectAttr "stage_fertigRN.phl[28]" "hyperShadePrimaryNodeEditorSavedTabsInfo.tgi[0].ni[5].dn"
		;
connectAttr "bogenCTRL_middle_Bend.o" "Geige_RigRN.phl[1]";
connectAttr "bogenCTRL_middle_squashNstretch.o" "Geige_RigRN.phl[2]";
connectAttr "bogenCTRL_middle_translateX.o" "Geige_RigRN.phl[3]";
connectAttr "bogenCTRL_middle_translateY.o" "Geige_RigRN.phl[4]";
connectAttr "bogenCTRL_middle_translateZ.o" "Geige_RigRN.phl[5]";
connectAttr "bogenCTRL_middle_rotateY.o" "Geige_RigRN.phl[6]";
connectAttr "bogenCTRL_middle_rotateX.o" "Geige_RigRN.phl[7]";
connectAttr "bogenCTRL_middle_rotateZ.o" "Geige_RigRN.phl[8]";
connectAttr "bogenCTRL_middle_scaleX.o" "Geige_RigRN.phl[9]";
connectAttr "bogenCTRL_middle_scaleY.o" "Geige_RigRN.phl[10]";
connectAttr "bogenCTRL_middle_scaleZ.o" "Geige_RigRN.phl[11]";
connectAttr "bogenCTRL_middle_visibility.o" "Geige_RigRN.phl[12]";
connectAttr "geigeCTRL_bottom_translateX.o" "Geige_RigRN.phl[13]";
connectAttr "geigeCTRL_bottom_translateY.o" "Geige_RigRN.phl[14]";
connectAttr "geigeCTRL_bottom_translateZ.o" "Geige_RigRN.phl[15]";
connectAttr "geigeCTRL_bottom_rotateX.o" "Geige_RigRN.phl[16]";
connectAttr "geigeCTRL_bottom_rotateY.o" "Geige_RigRN.phl[17]";
connectAttr "geigeCTRL_bottom_rotateZ.o" "Geige_RigRN.phl[18]";
connectAttr "geigeCTRL_bottom_scaleX.o" "Geige_RigRN.phl[19]";
connectAttr "geigeCTRL_bottom_scaleY.o" "Geige_RigRN.phl[20]";
connectAttr "geigeCTRL_bottom_scaleZ.o" "Geige_RigRN.phl[21]";
connectAttr "geigeCTRL_bottom_visibility.o" "Geige_RigRN.phl[22]";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of Performance02_camera.ma
