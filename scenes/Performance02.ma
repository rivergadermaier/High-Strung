//Maya ASCII 2023 scene
//Name: Performance02.ma
//Last modified: Mon, May 29, 2023 06:03:40 PM
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
fileInfo "UUID" "236DB6E4-4820-19C6-7018-058602333F1F";
createNode transform -s -n "persp";
	rename -uid "37C5FE8C-4A08-816E-EFA9-E2BCB9C23993";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -11.954679055871368 -2.0300085416588476 130.43297757161059 ;
	setAttr ".r" -type "double3" -9.9383527293829932 -4.6000000000209136 9.9713523173435262e-17 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "F9EF8120-45F2-69B4-2154-96900ED0A24B";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 101.23316471464381;
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
	rename -uid "D7AF6E58-423B-6D7A-D2B7-3FAC98A752A0";
	setAttr -s 12 ".lnk";
	setAttr -s 12 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "19168A8E-4A91-B9C8-F7E8-E6AA414CAB02";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "7C7DA210-4376-B09F-720E-4DABBE5E055B";
createNode displayLayerManager -n "layerManager";
	rename -uid "DA80EBD5-42C2-DB24-DBC0-A9B8BD537B69";
createNode displayLayer -n "defaultLayer";
	rename -uid "B34918BE-41F2-0950-DF76-819062BC127E";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "0DEA2724-4370-1BF9-16F4-06BE3D57F41D";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "1D504B90-43B4-14D8-F7DB-9CA327FB6C2D";
	setAttr ".g" yes;
createNode reference -n "stage_fertigRN";
	rename -uid "C89DA658-4B96-1630-CD68-CC8917822A9D";
	setAttr ".ed" -type "dataReferenceEdits" 
		"stage_fertigRN"
		"stage_fertigRN" 0
		"stage_fertigRN" 2
		2 "|stage_fertig:plane_canvasSize" "visibility" " 0"
		2 "|stage_fertig:curtains" "visibility" " 0";
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
	setAttr -s 12 ".phl";
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
	setAttr ".ed" -type "dataReferenceEdits" 
		"Geige_RigRN"
		"Geige_RigRN" 0
		"Geige_RigRN" 15
		2 "|Geige_Rig:Geige" "translate" " -type \"double3\" 5.98488343762963115 -15.58267759535923069 27.90934139900109656"
		
		2 "|Geige_Rig:Geige" "rotate" " -type \"double3\" 90 0 0"
		2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geigeCTRL_bottom" 
		"rotate" " -type \"double3\" -22.0018166818444989 -32.1932348440815943 38.19520770959235989"
		
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
		"Geige_RigRN.placeHolderList[12]" "";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode audio -n "Performance02";
	rename -uid "30A02023-4481-FD1C-51A4-F69DFE67E91D";
	setAttr ".ef" 1033.8220824829932;
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
		+ "            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1197\n            -height 485\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n"
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
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1197\\n    -height 485\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1197\\n    -height 485\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ttimeControl -e -displaySound 1 -sound Performance02 $gPlayBackSlider;\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "65F42BF2-4E10-9FDB-00D0-AF9DDF08536E";
	setAttr ".b" -type "string" "playbackOptions -min 32 -max 860 -ast 0 -aet 1050 ";
	setAttr ".st" 6;
createNode animCurveTL -n "bogenCTRL_middle_translateX";
	rename -uid "6BA32818-475D-45B4-F51F-15905FA964CA";
	setAttr ".tan" 28;
	setAttr -s 140 ".ktv[0:139]"  32 -8.886273833403548 44 -7.4830736450482789
		 48 -7.985680655002275 52 -8.525009880624566 59 -7.1613190928388777 66 -8.6281773571073117
		 68 -8.2119759657262712 70 -7.5914658975184564 73 -7.041188955449841 81 -8.6778507407978349
		 87 -8.1298876024037963 92 -7.4061379021792284 100 -6.6395985481595003 107 -8.6548399161853595
		 110 -8.4170724921586952 113 -7.9372707862808127 116 -7.2497533571670987 119 -6.6770763126126322
		 123 -6.1726667749339033 126 -6.0127024509090674 128 -6.4108087733754999 130 -7.133641618429027
		 133 -8.0614871657604681 140 -6.6882203610859703 145 -7.2063398039042168 150 -8.1286879971300028
		 155 -9.1418626741386131 160 -9.7435221591133594 164 -9.4238625556327325 166 -9.1881621434966192
		 167 -9.0525063387232176 170 -8.54253501262985 174 -7.806642978642218 180 -6.787472537397818
		 183 -6.4069507094707427 185 -6.2566076997619335 186 -6.2356686459960011 190 -7.3072062703729506
		 193 -8.354814134119497 200 -9.4364785705592542 204 -8.8913194027483726 208 -8.0109063489409138
		 212 -7.4702278745627151 221 -8.12608615635075 226 -8.7269493848444224 230 -9.1708458944171589
		 234 -9.4937460851908462 237 -9.5955720104662934 242 -9.1476303967186645 246 -8.5007007263164525
		 255 -6.6563365584527876 263 -5.6513142040604558 269 -6.259750268596906 276 -7.5059795600168977
		 282 -8.5622864054529835 288 -9.1582765489030074 300 -7.2353255589793335 314 -9.2619306116126285
		 327 -6.5372366435607994 331 -7.3395264975250898 333 -7.8810530672288124 334 -8.1284022662168152
		 336 -8.5203510243939284 338 -8.7310502146657427 343 -7.8462352708979219 345 -7.2658348249494979
		 347 -6.6800591929130553 350 -6.1612439189828416 363 -9.5953390233759297 369 -8.8025816200883149
		 376 -7.2082715624385258 387 -5.3576702822345039 390 -5.8364482127015442 392 -6.4267227339333584
		 395 -7.6676414190243207 397 -8.4099057421764307 401 -9.3502386490638454 414 -5.1442316330988183
		 426 -8.6332905402869073 439 -4.9680875997153571 477 -10.633281880081979 491 -7.4184578187777221
		 502 -8.9775201754709304 507 -8.3721039800009027 511 -7.5885623468146335 515 -6.6939197309840193
		 520 -7.3599753395876935 525 -8.0066973540302158 530 -8.6798932995512157 534 -9.7208817642490519
		 537 -10.168497074880863 541 -9.1124241772486219 544 -8.7656140484928855 548 -8.1593345686569663
		 552 -7.5281822480919587 556 -6.8634440361713773 560 -6.2794293309636888 566 -5.6695872537010246
		 571 -5.9694125716985349 575 -6.4760667191526293 578 -6.9072738037400221 581 -7.472499591227896
		 584 -8.2579024003156967 587 -8.9296887052904275 589 -9.3679486000938468 591 -9.7670396872831251
		 593 -10.09186144924695 595 -10.257393513803587 599 -9.9975166765194725 602 -9.6041275253804095
		 609 -8.3111600644695134 615 -7.2765833485053664 621 -6.6997819768709732 629 -7.3694941310292714
		 634 -7.9791342008374961 637 -8.3845102824558051 640 -8.7622339096801731 647 -9.3193550949075217
		 650 -9.178393965464263 652 -8.9854109973981817 653 -8.8833693235487807 655 -8.6720266050418893
		 658 -8.2239656873074818 660 -7.9061208139562247 665 -7.1747577998804566 676 -6.3621282029856525
		 697 -9.5934251448371111 709 -7.1980020863198177 723 -9.4914885900637351 731 -8.7290424576718468
		 740 -7.4683860513493929 745 -6.9583228040216598 749 -6.7734277933269897 756 -7.2448538227190094
		 765 -8.7448663029931453 773 -10.092094734617078 785 -10.740630017010689 790 -10.740630017010689
		 799 -12.942270313988207 817 -6.3223399626291279;
	setAttr -s 140 ".kot[0:139]"  18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
createNode animCurveTL -n "bogenCTRL_middle_translateY";
	rename -uid "864A308F-4476-A657-A922-01B985EA13DD";
	setAttr ".tan" 28;
	setAttr -s 140 ".ktv[0:139]"  32 1.3166764983153918 44 1.9518723946014251
		 48 1.6868965963706035 52 1.6797704567459082 59 1.6829332681138158 66 1.6795311801662596
		 68 1.6476026319512895 70 1.8560968959066559 73 2.4522722684106011 81 1.339717880459564
		 87 1.737596712409426 92 2.5288741951329907 100 3.6161486058471031 107 1.3183215564717647
		 110 1.5360932858436374 113 1.8297596735912833 116 2.333789432716328 119 3.0293825963128871
		 123 4.0218052137594418 126 4.436400589420594 128 3.6600538458188372 130 2.5734924761761486
		 133 1.7468044757153913 140 2.6050071922675015 145 2.1714639471234722 150 1.6563441596598016
		 155 1.4455568542911905 160 1.4411039399976648 164 1.3152691671698178 166 1.2784129239389646
		 167 1.2953129149373144 170 1.4781061911619597 174 1.7976462325001969 180 2.2976745620768688
		 183 2.5106174763309395 185 2.6230328917645629 186 2.656993699083162 190 2.1476621461930976
		 193 1.5559718659713209 200 0.79928135705264103 204 1.2530913192481083 208 1.7086493964620693
		 212 1.869865605266485 221 1.6426196020623902 226 1.3686888401802113 230 1.1193249569684844
		 234 0.88194507238714304 237 0.76269699723156004 242 1.0051181830120866 246 1.4481988851847849
		 255 2.6705932318149497 263 3.2824796685992506 269 2.8702488608629428 276 2.0833166745924938
		 282 1.4231275132722552 288 1.0442156986489157 300 2.2578472684328537 314 0.97879653638222264
		 327 2.7100460579832455 331 2.3209617068210209 333 1.9981249183235978 334 1.816768893066818
		 336 1.4703712463723351 338 1.24884600433201 343 1.9595705195738651 345 2.2538536203867001
		 347 2.4384577003964245 350 2.53669802846369 363 1.0202570663871666 369 1.3730816926495875
		 376 2.0562336520315094 387 2.8837323924208849 390 2.5257533744707037 392 2.1664323564272947
		 395 1.7285382162718921 397 1.625552365148303 401 1.6440231270239019 414 1.6972244784725516
		 426 1.6630780345895628 439 1.6989483508723167 477 1.6312174687915855 491 1.6626800529218981
		 502 1.6474219455958183 507 1.5699670024708818 511 1.8209812675418018 515 2.4179573875624865
		 520 1.8320769813427265 525 1.673832155437573 530 1.6011439313298561 534 1.5971825077785822
		 537 1.6859344439736803 541 1.7932301922557117 544 1.7909677903175854 548 1.6943597904411698
		 552 1.5855557848015296 556 1.5173980522850692 560 1.5467027092072576 566 1.6497930795711733
		 571 1.6054966526101555 575 1.5608874833467397 578 1.5658581813520849 581 1.6156921068748873
		 584 1.7061551074874557 587 1.7762475080415336 589 1.8022423513701269 591 1.7974920387008209
		 593 1.7657669976863046 595 1.6688548974361155 599 1.4651187551262341 602 1.4004750179635705
		 609 1.6107097422364718 615 2.1242323553381319 621 2.464559421426034 629 1.9815910586922836
		 634 1.7164162297050636 637 1.6410320754681664 640 1.6460326646296737 647 1.7242388345161066
		 650 1.5703725503965864 652 1.4523490959325995 653 1.4275847128673831 655 1.4708834341391781
		 658 1.678759490767751 660 1.824384684089029 665 2.1980660467237945 676 2.6222781458866842
		 697 1.0033591728663913 709 2.2034951887232164 723 1.0544306235986187 731 1.4051796569061623
		 740 2.262615411053349 745 2.734066875705456 749 2.9199133256061995 756 2.4883501956962828
		 765 1.3759138249943224 773 0.66161433617012544 785 0.38058153492855029 790 0.38058153492855029
		 799 3.7072021826408399 817 3.2782565204220795;
	setAttr -s 140 ".kot[0:139]"  18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
createNode animCurveTL -n "bogenCTRL_middle_translateZ";
	rename -uid "622E341C-43CE-26BA-E4CD-5B88DFB300D9";
	setAttr ".tan" 28;
	setAttr -s 140 ".ktv[0:139]"  32 0.026777615586962428 44 1.065801035233803
		 48 0.69363713548905215 52 0.29428164724729089 59 1.3040496599830818 66 0.21788953648434167
		 68 0.52607292793711991 70 0.98554015032274966 73 1.3930020612074006 81 0.18110803558671276
		 87 0.58685665122931341 92 1.1227694131689621 100 1.6720362479944131 107 0.19814679162179541
		 110 0.37420572037833677 113 0.72948304526093732 116 1.2385670064752268 119 1.6626154538202034
		 123 2.0361140658434396 126 2.1545623673396062 128 1.8597777770973989 130 1.3245439161463914
		 133 0.63750491665594367 140 1.6543636537922646 145 1.270713309579067 150 0.58774491933545048
		 155 -0.16247748395468409 160 -0.60798647171655296 164 -0.3712890873464012 166 -0.19676071266246462
		 167 -0.096312067244447089 170 0.28130486550443146 174 0.82620862477552104 180 1.5808706935612569
		 183 1.8626345460636422 185 1.9739585819096894 186 1.9894632600223341 190 1.196025020774826
		 193 0.42030597934945857 200 -0.3806308299431071 204 0.023041538042120429 208 0.67495834183115089
		 212 1.0753129042377776 221 0.58967149654537199 226 0.14475211042321912 230 -0.18393860183086141
		 234 -0.42303553411929318 237 -0.49843427049803735 242 -0.16423531747993825 246 0.31410462847054299
		 255 1.6684908954926829 263 2.4221584346555254 269 1.9783696057985838 276 1.0513960355465619
		 282 0.26721815904071966 288 -0.1746314163934426 300 1.2492503147697034 314 -0.25138382819511002
		 327 1.7661621126265059 331 1.1468591656338045 333 0.74189811066592082 334 0.56649888794125602
		 336 0.30680669374643416 338 0.180862551181042 343 0.73034961690141309 345 1.1549672770755566
		 347 1.6133419982229331 350 2.0303709341945733 363 -0.43504336450092679 369 0.13178962773486896
		 376 1.2742714471565488 387 2.6015427011312546 390 2.217718777260238 392 1.7579404801701204
		 395 0.86450423979714508 397 0.33183710020209256 401 -0.35646682588230277 414 2.5324010216142194
		 426 0.13421432395895669 439 2.6534727171540409 477 -1.2354797513154305 491 0.97421303525187941
		 502 -0.097400458270359647 507 0.34871047122915738 511 0.77364674805979716 515 1.2877728914245745
		 520 0.94360707145492217 525 0.65164827711819218 530 0.19372246761223005 534 -0.6408827848462022
		 537 -1.0286876404929519 541 -0.23354684751685617 544 0.010577191466322751 548 0.46196436682145764
		 552 0.92526065159090853 556 1.3743032757559466 560 1.7898869301003058 566 2.2603595076400094
		 571 2.0458150383947356 575 1.6968887142453122 578 1.398665801528618 581 1.0592799573901739
		 584 0.64828430508331114 587 0.060546291862586088 589 -0.26503017672329188 591 -0.54100933024837883
		 593 -0.76114499355955678 595 -0.86064766042638263 599 -0.63482876878439654 602 -0.32265433019572665
		 609 0.60092016008569882 615 1.2996779561094629 621 1.6832128361148602 629 1.2526830784134591
		 634 0.84741669789082086 637 0.55767113887832331 640 0.27384909951775893 647 -0.16350024963621221
		 650 -0.027509056132615554 652 0.14321523076490311 653 0.23091856726413323 655 0.38690222509043037
		 658 0.67417944160105103 660 0.88246631442394607 665 1.3657690260921902 676 1.9105954991804164
		 697 -0.24668617177213617 709 1.3525485476948909 723 -0.17863118791581845 731 0.33573682177023412
		 740 1.1387606869879212 745 1.4423704751903117 749 1.5498712068487031 756 1.2685457356865824
		 765 0.32882123360132098 773 -0.56389280587800905 785 -1.0043739020590945 790 -1.0043739020590945
		 799 -2.0368340401656786 817 6.7154077472839306;
	setAttr -s 140 ".kot[0:139]"  18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
createNode animCurveTU -n "bogenCTRL_middle_visibility";
	rename -uid "B1C2A413-4B4B-A275-BF87-30ABABDFCD35";
	setAttr ".tan" 9;
	setAttr -s 46 ".ktv[0:45]"  32 1 44 1 52 1 59 1 66 1 73 1 81 1 100 1
		 107 1 126 1 133 1 140 1 160 1 186 1 200 1 212 1 237 1 263 1 288 1 300 1 314 1 327 1
		 338 1 350 1 363 1 387 1 401 1 414 1 426 1 439 1 477 1 491 1 502 1 515 1 537 1 566 1
		 595 1 621 1 647 1 676 1 697 1 709 1 723 1 749 1 785 1 790 1;
	setAttr -s 46 ".kot[0:45]"  5 5 5 5 5 5 5 5 
		5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 
		5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 
		5 5 5 5;
createNode animCurveTA -n "bogenCTRL_middle_rotateX";
	rename -uid "6A046D3E-413F-7F6E-FFE1-CFA1AD737BB6";
	setAttr ".tan" 28;
	setAttr -s 51 ".ktv[0:50]"  32 -19.991344787507344 44 -19.991344787507344
		 52 -0.10679555284371253 59 -0.10679555284371253 66 -0.10679555284371253 73 -28.648044253156129
		 81 -28.648044253156129 100 -12.66358926132752 107 -43 113 -27.349853708401458 126 -43
		 133 -26.667491321049937 140 -26.667491321049937 160 -6.2915895553386401 167 -16.867991874808812
		 186 -22.416468290658855 200 -29.391689630111721 212 -15.876961756127526 237 -26.894818552894144
		 263 -43.467764639137833 288 -26.894818552894144 300 -26.894818552894144 314 -26.894818552894144
		 327 -26.894818552894144 338 -56.626481571429338 350 -26.946984490932845 363 -26.946984490932845
		 387 -2.3749810765688273 401 -12.175902406387765 414 -12.175902406387765 426 -12.175902406387765
		 439 -12.175902406387765 477 -25.10894984637817 491 -25.10894984637817 502 -25.10894984637817
		 515 -42.045420143056361 520 -30.218768388257853 537 -21.20242889959852 566 33.695163696240407
		 595 -10.474327341216448 621 -33.299374809382641 647 -8.362460361859279 655 -30.588128527085466
		 676 -33.026848909500472 697 -33.026848909500472 709 -33.026848909500472 723 -33.026848909500472
		 749 -44.160742532753005 785 -33.693775058682093 790 -33.693775058682093 817 -159.93907172124221;
	setAttr -s 51 ".kot[0:50]"  18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18;
createNode animCurveTA -n "bogenCTRL_middle_rotateY";
	rename -uid "3020D6C4-410C-1191-D7C4-848036ADC372";
	setAttr ".tan" 28;
	setAttr -s 47 ".ktv[0:46]"  32 53.48127368038984 44 53.48127368038984
		 52 53.481273680389855 59 53.481273680389855 66 53.481273680389855 73 53.481273680389947
		 81 53.481273680389947 100 63.508245238646538 107 53.481273680389911 126 53.481273680389911
		 133 53.481273680389933 140 53.481273680389933 160 53.481273680389975 186 53.481273680390082
		 200 53.481273680390096 212 53.481273680390125 237 53.481273680390125 263 43.007902506137043
		 288 53.481273680390125 300 53.481273680390125 314 53.481273680390125 327 53.481273680390125
		 338 37.990800853441129 350 51.935913975046404 363 51.935913975046404 387 56.627866084845238
		 401 54.587521653134814 414 54.587521653134814 426 54.587521653134814 439 54.587521653134814
		 477 51.278529577427349 491 51.278529577427349 502 51.278529577427349 515 44.682603817593936
		 537 47.520520053185571 566 50.260806812260519 595 52.315427679003385 621 52.315427679003406
		 647 52.315427679003434 676 52.315427679003413 697 52.315427679003413 709 52.315427679003413
		 723 52.315427679003413 749 52.315427679003427 785 52.315427679003513 790 52.315427679003513
		 817 8.6373935794769352;
	setAttr -s 47 ".kot[0:46]"  18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18;
createNode animCurveTA -n "bogenCTRL_middle_rotateZ";
	rename -uid "3F37B5DA-40AF-5E4B-C749-349E62107965";
	setAttr ".tan" 28;
	setAttr -s 47 ".ktv[0:46]"  32 2.6723510869095612e-15 44 2.6723510869095612e-15
		 52 -4.1755485732961912e-17 59 -4.1755485732961912e-17 66 -4.1755485732961912e-17
		 73 -2.6723510869095671e-15 81 -2.6723510869095671e-15 100 35.151487038268442 107 0
		 126 0 133 0 140 0 160 0 186 5.3447021738191524e-15 200 2.6723510869095774e-15 212 2.6723510869095786e-15
		 237 2.6723510869095786e-15 263 -22.004231718872106 288 2.6723510869095786e-15 300 2.6723510869095786e-15
		 314 0 327 0 338 -18.449961546615473 350 -9.1761290508200553 363 -9.1761290508200553
		 387 20.830339680310075 401 -14.267844568324797 414 -14.267844568324797 426 -14.267844568324797
		 439 -14.267844568324797 477 -30.430410826319108 491 -30.430410826319108 502 -30.430410826319108
		 515 -20.326151119784882 537 -28.087206403398365 566 40.741979879642031 595 -12.789459035676009
		 621 -12.789459035676005 647 -12.789459035676057 676 -12.789459035676073 697 -12.789459035676073
		 709 -12.789459035676073 723 -12.789459035676073 749 -12.78945903567609 785 -12.78945903567614
		 790 -12.78945903567614 817 -161.831286121734;
	setAttr -s 47 ".kot[0:46]"  18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18;
createNode animCurveTU -n "bogenCTRL_middle_scaleX";
	rename -uid "EAA25CF9-48B0-E9AA-C14E-9C9805B0C28C";
	setAttr ".tan" 28;
	setAttr -s 46 ".ktv[0:45]"  32 1 44 1 52 1 59 1 66 1 73 1 81 1 100 1
		 107 1 126 1 133 1 140 1 160 1 186 1 200 1 212 1 237 1 263 1 288 1 300 1 314 1 327 1
		 338 1 350 1 363 1 387 1 401 1 414 1 426 1 439 1 477 1 491 1 502 1 515 1 537 1 566 1
		 595 1 621 1 647 1 676 1 697 1 709 1 723 1 749 1 785 1 790 1;
	setAttr -s 46 ".kot[0:45]"  18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18;
createNode animCurveTU -n "bogenCTRL_middle_scaleY";
	rename -uid "6C463F88-4FBA-B696-B69B-73B68BA3755F";
	setAttr ".tan" 28;
	setAttr -s 46 ".ktv[0:45]"  32 1 44 1 52 1 59 1 66 1 73 1 81 1 100 1
		 107 1 126 1 133 1 140 1 160 1 186 1 200 1 212 1 237 1 263 1 288 1 300 1 314 1 327 1
		 338 1 350 1 363 1 387 1 401 1 414 1 426 1 439 1 477 1 491 1 502 1 515 1 537 1 566 1
		 595 1 621 1 647 1 676 1 697 1 709 1 723 1 749 1 785 1 790 1;
	setAttr -s 46 ".kot[0:45]"  18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18;
createNode animCurveTU -n "bogenCTRL_middle_scaleZ";
	rename -uid "5B6F6C90-4084-A76D-B825-6BAAE55E4966";
	setAttr ".tan" 28;
	setAttr -s 46 ".ktv[0:45]"  32 1 44 1 52 1 59 1 66 1 73 1 81 1 100 1
		 107 1 126 1 133 1 140 1 160 1 186 1 200 1 212 1 237 1 263 1 288 1 300 1 314 1 327 1
		 338 1 350 1 363 1 387 1 401 1 414 1 426 1 439 1 477 1 491 1 502 1 515 1 537 1 566 1
		 595 1 621 1 647 1 676 1 697 1 709 1 723 1 749 1 785 1 790 1;
	setAttr -s 46 ".kot[0:45]"  18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18;
createNode animCurveTU -n "bogenCTRL_middle_Bend";
	rename -uid "33120531-45E7-6425-4267-5CA155240D06";
	setAttr ".tan" 28;
	setAttr -s 46 ".ktv[0:45]"  32 0 44 0 52 0 59 0 66 0 73 0 81 0 100 0
		 107 0 126 0 133 0 140 0 160 0 186 0 200 0 212 0 237 0 263 0 288 0 300 0 314 0 327 0
		 338 0 350 0 363 0 387 0 401 0 414 0 426 0 439 0 477 0 491 0 502 0 515 0 537 0 566 0
		 595 0 621 0 647 0 676 0 697 0 709 0 723 0 749 0 785 0 790 0;
	setAttr -s 46 ".kot[0:45]"  18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18;
createNode animCurveTU -n "bogenCTRL_middle_squashNstretch";
	rename -uid "5C38DCEC-42DE-A36A-CFFC-C6AD98DF20BA";
	setAttr ".tan" 28;
	setAttr -s 46 ".ktv[0:45]"  32 0 44 0 52 0 59 0 66 0 73 0 81 0 100 0
		 107 0 126 0 133 0 140 0 160 0 186 0 200 0 212 0 237 0 263 0 288 0 300 0 314 0 327 0
		 338 0 350 0 363 0 387 0 401 0 414 0 426 0 439 0 477 0 491 0 502 0 515 0 537 0 566 0
		 595 0 621 0 647 0 676 0 697 0 709 0 723 0 749 0 785 0 790 0;
	setAttr -s 46 ".kot[0:45]"  18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18;
select -ne :time1;
	setAttr ".o" 829;
	setAttr ".unw" 829;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 12 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 20 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 24 ".u";
select -ne :defaultRenderingList1;
	setAttr -s 3 ".r";
select -ne :defaultTextureList1;
	setAttr -s 36 ".tx";
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".ren" -type "string" "arnold";
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
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of Performance02.ma
