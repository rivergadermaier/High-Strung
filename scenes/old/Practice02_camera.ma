//Maya ASCII 2023 scene
//Name: Practice02_camera.ma
//Last modified: Tue, Jun 13, 2023 02:48:58 PM
//Codeset: 1252
file -rdi 1 -ns "stage_fertig" -rfn "stage_fertigRN" -op "v=0;" -typ "mayaAscii"
		 "E:/High-Strung//scenes/stage_fertig.ma";
file -rdi 1 -ns "Geige_Rig" -rfn "Geige_RigRN" -op "v=0;" -typ "mayaAscii" "E:/High-Strung//scenes/Geige_Rig.ma";
file -r -ns "stage_fertig" -dr 1 -rfn "stage_fertigRN" -op "v=0;" -typ "mayaAscii"
		 "E:/High-Strung//scenes/stage_fertig.ma";
file -r -ns "Geige_Rig" -dr 1 -rfn "Geige_RigRN" -op "v=0;" -typ "mayaAscii" "E:/High-Strung//scenes/Geige_Rig.ma";
requires maya "2023";
requires "stereoCamera" "10.0";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" -nodeType "aiStandardSurface"
		 "mtoa" "5.1.2";
requires "OpenEXRLoader" "2020";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2023";
fileInfo "version" "2023";
fileInfo "cutIdentifier" "202205052215-234554116d";
fileInfo "osv" "Windows 10 Pro N v2009 (Build: 19045)";
fileInfo "UUID" "34319D2B-4D8F-69BD-3B74-F8874F143D19";
createNode transform -s -n "persp";
	rename -uid "D89B634B-4FF6-E51C-602F-70840D7ECFD7";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 7.8660435251570595 7.6100818436229307 -23.599167063248537 ;
	setAttr ".r" -type "double3" -12.938352730855952 1603.3999999998482 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "404F161D-44F4-97C3-974F-E081DA827387";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 42.648885109082059;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "19D5C9B3-4C59-FE45-6780-3C8EBD41CCA5";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "F2E9F07F-4A7E-068A-EE81-A696C25B6FA1";
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
	rename -uid "88914202-4A51-1FF5-374D-218FC7284D68";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "A3966D92-4760-4DE6-112E-CF9A4B542AC2";
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
	rename -uid "1ED63E13-403B-CA7A-AFAA-359F5F496A9F";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "DDBFD225-4535-5931-D6E5-14AB0DE2F030";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "establishing";
	rename -uid "CBB9A267-4782-CD4C-8ECA-52B773CE0CE9";
	setAttr ".t" -type "double3" 0.03936773064629584 -0.87753224153857445 159.29314925508021 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr ".r" -type "double3" 0 0 -4.3560820575629035e-17 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
createNode camera -n "establishingShape" -p "establishing";
	rename -uid "E3DB5C88-410B-3BB3-EC5D-86AE2FE8EBB0";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".ovr" 1.3;
	setAttr ".fl" 34.999999999999993;
	setAttr -l on ".coi" 137.06914058024768;
	setAttr -l on ".ow";
	setAttr ".imn" -type "string" "persp1";
	setAttr ".den" -type "string" "persp1_depth";
	setAttr ".man" -type "string" "persp1_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".dr" yes;
createNode transform -n "MS";
	rename -uid "DDD83FA3-46A2-3F51-9E46-649E25EC7995";
createNode camera -n "MSShape" -p "MS";
	rename -uid "637B51BD-46F5-6827-998E-CB8E217D76F0";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".ovr" 1.3;
	setAttr ".fl" 34.999999999999993;
	setAttr -l on ".coi" 9.9999997473787516e-06;
	setAttr -l on ".ow";
	setAttr ".imn" -type "string" "persp1";
	setAttr ".den" -type "string" "persp1_depth";
	setAttr ".man" -type "string" "persp1_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".dr" yes;
createNode transform -n "BG_planes";
	rename -uid "1AB10D54-4B0F-0D33-E3B3-91892FAC987B";
createNode transform -n "BG" -p "BG_planes";
	rename -uid "5B76025E-4C17-F593-6DD2-C5B56D71D657";
	setAttr ".t" -type "double3" 0 0 -23.241758476335505 ;
	setAttr ".r" -type "double3" 90.000000000000028 0 0 ;
	setAttr ".s" -type "double3" 100 1 60 ;
	setAttr ".rp" -type "double3" 0 -3.5206068934599486 1.5634635335093122e-15 ;
	setAttr ".rpt" -type "double3" 0 3.5206068934599486 -3.5206068934599504 ;
	setAttr ".sp" -type "double3" 0 -3.5206068934599486 2.6057725558488534e-17 ;
	setAttr ".spt" -type "double3" 0 0 1.5374058079508236e-15 ;
createNode mesh -n "BGShape" -p "BG";
	rename -uid "1C2FFBA5-4FEB-D91D-189B-F8A703B591B1";
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
	rename -uid "FBCF5E5A-41EA-C788-1E20-64812B7DB77F";
	setAttr ".t" -type "double3" 0 0 -14.590598771589917 ;
	setAttr ".r" -type "double3" 90.000000000000028 0 0 ;
	setAttr ".s" -type "double3" 100 1 60 ;
	setAttr ".rp" -type "double3" 0 -3.5206068934599486 1.5634635335093122e-15 ;
	setAttr ".rpt" -type "double3" 0 3.5206068934599486 -3.5206068934599504 ;
	setAttr ".sp" -type "double3" 0 -3.5206068934599486 2.6057725558488534e-17 ;
	setAttr ".spt" -type "double3" 0 0 1.5374058079508236e-15 ;
createNode mesh -n "sofaShape" -p "sofa";
	rename -uid "36254467-4391-843A-4CE5-BF9E1E14CB7C";
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
	rename -uid "C33CDD3E-435C-42B0-AF71-22A6C16D640B";
	setAttr ".t" -type "double3" 0 0 42.123400992111648 ;
	setAttr ".r" -type "double3" 90.000000000000028 0 0 ;
	setAttr ".s" -type "double3" 100 1 60 ;
	setAttr ".rp" -type "double3" 0 -3.5206068934599486 1.5634635335093122e-15 ;
	setAttr ".rpt" -type "double3" 0 3.5206068934599486 -3.5206068934599504 ;
	setAttr ".sp" -type "double3" 0 -3.5206068934599486 2.6057725558488534e-17 ;
	setAttr ".spt" -type "double3" 0 0 1.5374058079508236e-15 ;
createNode mesh -n "archShape" -p "arch";
	rename -uid "57D0313D-467B-1503-700F-04AEFC341D94";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" -4.3124688090756536e-05 9.294506162405014e-05 ;
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
createNode transform -n "notenstaender" -p "BG_planes";
	rename -uid "B84F21F7-49E5-FBFA-C90D-E6A6D3419074";
	setAttr ".t" -type "double3" 0 0 27.511700704600564 ;
	setAttr ".r" -type "double3" 90.000000000000028 0 0 ;
	setAttr ".s" -type "double3" 100 1 60 ;
	setAttr ".rp" -type "double3" 0 -3.5206068934599486 1.5634635335093122e-15 ;
	setAttr ".rpt" -type "double3" 0 3.5206068934599486 -3.5206068934599504 ;
	setAttr ".sp" -type "double3" 0 -3.5206068934599486 2.6057725558488534e-17 ;
	setAttr ".spt" -type "double3" 0 0 1.5374058079508236e-15 ;
createNode mesh -n "notenstaenderShape" -p "notenstaender";
	rename -uid "0534AA09-44F8-48AE-A281-6DA477BC0158";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" -4.3124688090756536e-05 9.294506162405014e-05 ;
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
createNode transform -n "nurbsCircle1";
	rename -uid "CC416793-42EA-C626-4831-41A36EB95C13";
	setAttr ".t" -type "double3" -2.4865680040885829 -10.759274915471423 34.428723856182579 ;
	setAttr ".r" -type "double3" 180 -4.5164103707137375 -2.9636859945885499e-18 ;
	setAttr ".s" -type "double3" 20.130661383860399 20.130661383860399 20.130661383860399 ;
createNode nurbsCurve -n "nurbsCircleShape1" -p "nurbsCircle1";
	rename -uid "72132B9D-404A-D1F7-AF8F-9AB3A65FDE16";
	setAttr -k off ".v";
	setAttr ".tw" yes;
	setAttr -s 13 ".cp[0:12]" -type "double3" 0.35504129511896704 1.5261167263778811e-16 
		-1.2461688769696071 0.38309174805105989 -3.7058277236158513e-18 0.030260379778039748 
		0 0 0 0 0 0 0 0 0 0 0 0 0 -0.032574550193144571 -3.9892318627699758e-18 0 -0.065005944148775752 
		0 -0.091081387683107695 -0.12854616099969701 -0.0071945099209869134 -0.12172354931949014 
		-0.203901122130042 -0.0096149312771095508 -0.22143419276341642 -0.28973699037675177 
		-0.018712636617098211 -0.35463164334670355 -0.34360132843308444 -0.028012318885947129 
		-0.35906183753760568 -0.38394637452634206 -0.028362259492575648;
createNode transform -n "positionMarker1" -p "nurbsCircleShape1";
	rename -uid "829FD03D-423C-A10D-6FDF-DC9142AC9700";
createNode positionMarker -n "positionMarkerShape1" -p "positionMarker1";
	rename -uid "372D6059-47EA-D856-C3E6-20B93EF045DA";
	setAttr -k off ".v";
	setAttr ".uwo" yes;
createNode transform -n "positionMarker2" -p "nurbsCircleShape1";
	rename -uid "9E43048C-46EC-1BE8-E28F-5BB888D8CA23";
createNode positionMarker -n "positionMarkerShape2" -p "positionMarker2";
	rename -uid "9F9D0888-436D-E9AB-34E5-C5AC93EA95E4";
	setAttr -k off ".v";
	setAttr ".uwo" yes;
	setAttr ".lp" -type "double3" 1 0 0 ;
	setAttr ".t" 240;
createNode lookAt -n "camera180";
	rename -uid "D1ACEFA4-448D-326D-39D6-A2AEC669F336";
	setAttr ".smd" 7;
	setAttr ".a" -type "double3" 0 0 -1 ;
	setAttr ".db" 44.544576034404116;
createNode transform -n "cam180" -p "camera180";
	rename -uid "1EE9DB4F-43F2-6834-6497-8BB89066A722";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
createNode camera -n "camShape180" -p "cam180";
	rename -uid "9C958655-4936-7EF1-296B-8393272C3482";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".cap" -type "double2" 1.41732 0.94488 ;
	setAttr ".ff" 0;
	setAttr ".coi" 44.544576034404116;
	setAttr -l on ".ow" 30;
	setAttr ".imn" -type "string" "camera1";
	setAttr ".den" -type "string" "camera1_depth";
	setAttr ".man" -type "string" "camera1_mask";
createNode transform -n "cam180_aim" -p "camera180";
	rename -uid "94D20187-4EA6-04CB-C90F-4B9ECDF770B2";
	setAttr ".drp" yes;
createNode locator -n "cam180_aimShape" -p "cam180_aim";
	rename -uid "49543410-41AF-C8F8-057F-DA9678160FE4";
	setAttr -k off ".v" no;
createNode pointConstraint -n "cam180_aim_pointConstraint1" -p "cam180_aim";
	rename -uid "D409573B-4716-FCFE-12E7-AD9DF2A750B9";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "body_lowW0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" -0.79871248112077708 0.19489886886879404 -14.275362049069603 ;
	setAttr -k on ".w0";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "28ABF5E3-4519-A5F9-9263-52943C28CBF4";
	setAttr -s 16 ".lnk";
	setAttr -s 16 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "B66D3C03-4257-3607-9A86-4DAEE295BD23";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "5FFB5BA0-409F-8847-DFBE-1E939A2E36BB";
createNode displayLayerManager -n "layerManager";
	rename -uid "506EF588-46E5-4EAD-883B-B29432C07B11";
createNode displayLayer -n "defaultLayer";
	rename -uid "4B760D53-43C8-5620-01D8-50B0C9959C6A";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "8F3D96EB-4058-F57F-0202-10A84D42EA04";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "B4A6F314-4A3D-D2DA-BC58-808E92592FFD";
	setAttr ".g" yes;
createNode audio -n "Practice02";
	rename -uid "77A78CCE-4807-C896-508E-1A9BC0D71369";
	setAttr ".o" 40;
	setAttr ".ef" 233.0971450680272;
	setAttr ".se" 193.0971450680272;
	setAttr ".f" -type "string" "E:/High-Strung//sound/Practice02.wav";
createNode script -n "uiConfigurationScriptNode";
	rename -uid "C9520659-4D70-14EA-465A-6FA759C3C135";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|camera180|cam180\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n"
		+ "            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 0\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 0\n"
		+ "            -controlVertices 1\n            -hulls 1\n            -grid 0\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 0\n            -height 483\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n"
		+ "            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n"
		+ "            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n"
		+ "            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|camera180|cam180\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n"
		+ "            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 0\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 0\n            -controlVertices 1\n            -hulls 1\n            -grid 0\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1119\n            -height 607\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n"
		+ "            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n"
		+ "            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -selectCommand \"print 999\" \n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n"
		+ "            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n"
		+ "                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -isSet 0\n                -isSetMember 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n"
		+ "                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                -selectionOrder \"display\" \n                -expandAttribute 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 0\n"
		+ "                -valueLinesToggle 0\n                -outliner \"graphEditor1OutlineEd\" \n                -highlightAffectedCurves 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n"
		+ "                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n"
		+ "                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n"
		+ "                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n"
		+ "\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n"
		+ "                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n"
		+ "                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"|persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n"
		+ "                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n"
		+ "                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 0\n                -shadows 0\n                -captureSequenceNumber -1\n"
		+ "                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -camera \\\"|camera180|cam180\\\" \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 0\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 0\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1119\\n    -height 607\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -camera \\\"|camera180|cam180\\\" \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 0\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 0\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1119\\n    -height 607\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ttimeControl -e -displaySound 1 -sound Practice02 $gPlayBackSlider;\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "82BAE27E-403E-6F23-0CDA-EAAF79B27924";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 350 -ast 0 -aet 400 ";
	setAttr ".st" 6;
createNode reference -n "stage_fertigRN";
	rename -uid "CF6A39C8-4AA8-6D38-2C82-9D96E3352779";
	setAttr -s 20 ".phl";
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
	setAttr ".ed" -type "dataReferenceEdits" 
		"stage_fertigRN"
		"stage_fertigRN" 0
		"stage_fertigRN" 22
		2 "|stage_fertig:plane_canvasSize" "visibility" " 0"
		2 "|stage_fertig:stage|stage_fertig:stageShape" "uvPivot" " -type \"double2\" 0.67152607440948486 0.48334154486656189"
		
		5 4 "stage_fertigRN" "|stage_fertig:curtains|stage_fertig:plane_canvasSize2.rotateX" 
		"stage_fertigRN.placeHolderList[1]" ""
		5 4 "stage_fertigRN" "|stage_fertig:curtains|stage_fertig:plane_canvasSize2.rotateY" 
		"stage_fertigRN.placeHolderList[2]" ""
		5 4 "stage_fertigRN" "|stage_fertig:curtains|stage_fertig:plane_canvasSize2.rotateZ" 
		"stage_fertigRN.placeHolderList[3]" ""
		5 4 "stage_fertigRN" "|stage_fertig:curtains|stage_fertig:plane_canvasSize2.translateX" 
		"stage_fertigRN.placeHolderList[4]" ""
		5 4 "stage_fertigRN" "|stage_fertig:curtains|stage_fertig:plane_canvasSize2.translateY" 
		"stage_fertigRN.placeHolderList[5]" ""
		5 4 "stage_fertigRN" "|stage_fertig:curtains|stage_fertig:plane_canvasSize2.translateZ" 
		"stage_fertigRN.placeHolderList[6]" ""
		5 4 "stage_fertigRN" "|stage_fertig:curtains|stage_fertig:plane_canvasSize2.visibility" 
		"stage_fertigRN.placeHolderList[7]" ""
		5 4 "stage_fertigRN" "|stage_fertig:curtains|stage_fertig:plane_canvasSize2.scaleX" 
		"stage_fertigRN.placeHolderList[8]" ""
		5 4 "stage_fertigRN" "|stage_fertig:curtains|stage_fertig:plane_canvasSize2.scaleY" 
		"stage_fertigRN.placeHolderList[9]" ""
		5 4 "stage_fertigRN" "|stage_fertig:curtains|stage_fertig:plane_canvasSize2.scaleZ" 
		"stage_fertigRN.placeHolderList[10]" ""
		5 4 "stage_fertigRN" "|stage_fertig:curtains|stage_fertig:plane_canvasSize3.translateX" 
		"stage_fertigRN.placeHolderList[11]" ""
		5 4 "stage_fertigRN" "|stage_fertig:curtains|stage_fertig:plane_canvasSize3.translateY" 
		"stage_fertigRN.placeHolderList[12]" ""
		5 4 "stage_fertigRN" "|stage_fertig:curtains|stage_fertig:plane_canvasSize3.translateZ" 
		"stage_fertigRN.placeHolderList[13]" ""
		5 4 "stage_fertigRN" "|stage_fertig:curtains|stage_fertig:plane_canvasSize3.visibility" 
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
		"stage_fertigRN.placeHolderList[20]" "";
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
	rename -uid "C9711909-455F-29C0-61FA-F682A4C50E08";
	setAttr -s 61 ".phl";
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
	setAttr ".ed" -type "dataReferenceEdits" 
		"Geige_RigRN"
		"Geige_RigRN" 0
		"Geige_RigRN" 65
		2 "|Geige_Rig:Geige" "visibility" " 1"
		2 "|Geige_Rig:Geige" "translate" " -type \"double3\" 5.28615613898187053 -10.02974595268447011 31.81977700260607378"
		
		2 "|Geige_Rig:Geige" "rotate" " -type \"double3\" 90 0 0"
		2 "|Geige_Rig:Geige" "scale" " -type \"double3\" 1 1 1"
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
		5 4 "Geige_RigRN" "|Geige_Rig:Geige.rotateX" "Geige_RigRN.placeHolderList[3]" 
		""
		5 4 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:bogen_ctrlMiddle|Geige_Rig:bogenCTRL_middle.Bend" 
		"Geige_RigRN.placeHolderList[4]" ""
		5 4 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:bogen_ctrlMiddle|Geige_Rig:bogenCTRL_middle.squashNstretch" 
		"Geige_RigRN.placeHolderList[5]" ""
		5 4 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:bogen_ctrlMiddle|Geige_Rig:bogenCTRL_middle.translateX" 
		"Geige_RigRN.placeHolderList[6]" ""
		5 4 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:bogen_ctrlMiddle|Geige_Rig:bogenCTRL_middle.translateY" 
		"Geige_RigRN.placeHolderList[7]" ""
		5 4 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:bogen_ctrlMiddle|Geige_Rig:bogenCTRL_middle.translateZ" 
		"Geige_RigRN.placeHolderList[8]" ""
		5 4 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:bogen_ctrlMiddle|Geige_Rig:bogenCTRL_middle.rotateX" 
		"Geige_RigRN.placeHolderList[9]" ""
		5 4 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:bogen_ctrlMiddle|Geige_Rig:bogenCTRL_middle.rotateY" 
		"Geige_RigRN.placeHolderList[10]" ""
		5 4 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:bogen_ctrlMiddle|Geige_Rig:bogenCTRL_middle.rotateZ" 
		"Geige_RigRN.placeHolderList[11]" ""
		5 4 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:bogen_ctrlMiddle|Geige_Rig:bogenCTRL_middle.scaleX" 
		"Geige_RigRN.placeHolderList[12]" ""
		5 4 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:bogen_ctrlMiddle|Geige_Rig:bogenCTRL_middle.scaleY" 
		"Geige_RigRN.placeHolderList[13]" ""
		5 4 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:bogen_ctrlMiddle|Geige_Rig:bogenCTRL_middle.scaleZ" 
		"Geige_RigRN.placeHolderList[14]" ""
		5 4 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:bogen_ctrlMiddle|Geige_Rig:bogenCTRL_middle.visibility" 
		"Geige_RigRN.placeHolderList[15]" ""
		5 4 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geigeCTRL_bottom.translateX" 
		"Geige_RigRN.placeHolderList[16]" ""
		5 4 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geigeCTRL_bottom.translateY" 
		"Geige_RigRN.placeHolderList[17]" ""
		5 4 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geigeCTRL_bottom.translateZ" 
		"Geige_RigRN.placeHolderList[18]" ""
		5 4 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geigeCTRL_bottom.rotateX" 
		"Geige_RigRN.placeHolderList[19]" ""
		5 4 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geigeCTRL_bottom.rotateY" 
		"Geige_RigRN.placeHolderList[20]" ""
		5 4 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geigeCTRL_bottom.rotateZ" 
		"Geige_RigRN.placeHolderList[21]" ""
		5 4 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geigeCTRL_bottom.scaleX" 
		"Geige_RigRN.placeHolderList[22]" ""
		5 4 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geigeCTRL_bottom.scaleY" 
		"Geige_RigRN.placeHolderList[23]" ""
		5 4 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geigeCTRL_bottom.scaleZ" 
		"Geige_RigRN.placeHolderList[24]" ""
		5 4 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geigeCTRL_bottom.visibility" 
		"Geige_RigRN.placeHolderList[25]" ""
		5 3 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:body_low.parentMatrix" 
		"Geige_RigRN.placeHolderList[26]" ""
		5 3 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:body_low.translate" 
		"Geige_RigRN.placeHolderList[27]" ""
		5 3 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:body_low.rotatePivot" 
		"Geige_RigRN.placeHolderList[28]" ""
		5 3 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:body_low.rotatePivotTranslate" 
		"Geige_RigRN.placeHolderList[29]" ""
		5 0 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:bogen_ctrlMiddle|Geige_Rig:bogen_LP_pivotMiddle|Geige_Rig:metall_low|Geige_Rig:metall_lowShape.instObjGroups" 
		"Geige_Rig:set2.dagSetMembers" "Geige_RigRN.placeHolderList[30]" "Geige_RigRN.placeHolderList[31]" 
		"Geige_Rig:set1.dsm"
		5 0 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:bogen_ctrlMiddle|Geige_Rig:bogen_LP_pivotMiddle|Geige_Rig:sehne_low|Geige_Rig:sehne_lowShape.instObjGroups" 
		"Geige_Rig:set2.dagSetMembers" "Geige_RigRN.placeHolderList[32]" "Geige_RigRN.placeHolderList[33]" 
		"Geige_Rig:set1.dsm"
		5 0 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:bogen_ctrlMiddle|Geige_Rig:bogen_LP_pivotMiddle|Geige_Rig:griff_low|Geige_Rig:griff_lowShape.instObjGroups" 
		"Geige_Rig:set2.dagSetMembers" "Geige_RigRN.placeHolderList[34]" "Geige_RigRN.placeHolderList[35]" 
		"Geige_Rig:set1.dsm"
		5 0 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:schraube_low|Geige_Rig:schraube_lowShape.instObjGroups" 
		"Geige_Rig:set6.dagSetMembers" "Geige_RigRN.placeHolderList[36]" "Geige_RigRN.placeHolderList[37]" 
		"Geige_Rig:set3.dsm"
		5 0 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:inside_low|Geige_Rig:inside_lowShape.instObjGroups" 
		"Geige_Rig:set6.dagSetMembers" "Geige_RigRN.placeHolderList[38]" "Geige_RigRN.placeHolderList[39]" 
		"Geige_Rig:set3.dsm"
		5 0 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:saitenhalter_low|Geige_Rig:saitenhalter_lowShape.instObjGroups" 
		"Geige_Rig:set6.dagSetMembers" "Geige_RigRN.placeHolderList[40]" "Geige_RigRN.placeHolderList[41]" 
		"Geige_Rig:set3.dsm"
		5 0 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:metallplatte_low|Geige_Rig:metallplatte_lowShape.instObjGroups" 
		"Geige_Rig:set6.dagSetMembers" "Geige_RigRN.placeHolderList[42]" "Geige_RigRN.placeHolderList[43]" 
		"Geige_Rig:set3.dsm"
		5 0 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:kinnstuetze_low|Geige_Rig:kinnstuetze_lowShape.instObjGroups" 
		"Geige_Rig:set6.dagSetMembers" "Geige_RigRN.placeHolderList[44]" "Geige_RigRN.placeHolderList[45]" 
		"Geige_Rig:set3.dsm"
		5 0 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:hals_low|Geige_Rig:hals_lowShape.instObjGroups" 
		"Geige_Rig:set6.dagSetMembers" "Geige_RigRN.placeHolderList[46]" "Geige_RigRN.placeHolderList[47]" 
		"Geige_Rig:set3.dsm"
		5 0 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:wirbel_low|Geige_Rig:wirbel_low_04|Geige_Rig:wirbel_low_04Shape.instObjGroups" 
		"Geige_Rig:set6.dagSetMembers" "Geige_RigRN.placeHolderList[48]" "Geige_RigRN.placeHolderList[49]" 
		"Geige_Rig:set3.dsm"
		5 0 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:wirbel_low|Geige_Rig:wirbel_low_03|Geige_Rig:wirbel_low_03Shape.instObjGroups" 
		"Geige_Rig:set6.dagSetMembers" "Geige_RigRN.placeHolderList[50]" "Geige_RigRN.placeHolderList[51]" 
		"Geige_Rig:set3.dsm"
		5 0 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:wirbel_low|Geige_Rig:wirbel_low_02|Geige_Rig:wirbel_low_02Shape.instObjGroups" 
		"Geige_Rig:set6.dagSetMembers" "Geige_RigRN.placeHolderList[52]" "Geige_RigRN.placeHolderList[53]" 
		"Geige_Rig:set3.dsm"
		5 0 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:wirbel_low|Geige_Rig:wirbel_low_01|Geige_Rig:wirbel_low_01Shape.instObjGroups" 
		"Geige_Rig:set6.dagSetMembers" "Geige_RigRN.placeHolderList[54]" "Geige_RigRN.placeHolderList[55]" 
		"Geige_Rig:set3.dsm"
		5 0 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:griffbrett_low|Geige_Rig:griffbrett_lowShape.instObjGroups" 
		"Geige_Rig:set6.dagSetMembers" "Geige_RigRN.placeHolderList[56]" "Geige_RigRN.placeHolderList[57]" 
		"Geige_Rig:set3.dsm"
		5 0 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:saiten_low|Geige_Rig:saiten_lowShape.instObjGroups" 
		"Geige_Rig:set6.dagSetMembers" "Geige_RigRN.placeHolderList[58]" "Geige_RigRN.placeHolderList[59]" 
		"Geige_Rig:set3.dsm"
		5 0 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:body_low|Geige_Rig:body_lowShape.instObjGroups" 
		"Geige_Rig:set6.dagSetMembers" "Geige_RigRN.placeHolderList[60]" "Geige_RigRN.placeHolderList[61]" 
		"Geige_Rig:set3.dsm";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode animCurveTL -n "bogenCTRL_middle_translateX";
	rename -uid "77C5A28E-4C00-0792-976A-93AD5D1E7A13";
	setAttr ".tan" 28;
	setAttr -s 32 ".ktv[0:31]"  0 0 18 -5.4399346584319668 35 -10.634994493778722
		 40 -10.622362009028102 53 -8.4810939792420257 66 -10.068333729442607 80 -7.5037183681788377
		 86 -8.7399343284538453 93 -10.298932860787026 105 -8.7681137416339876 115 -7.5983829292864815
		 122 -8.540795944351018 126 -9.2549550867627222 130 -9.6907066639154795 140 -7.9157464943426969
		 148 -6.6393397803096867 150 -8.0210623355340331 153 -9.7895188558466177 171 -7.3843493996718399
		 188 -10.131053392501176 201 -8.3370499625206431 214 -9.595488373333982 215 -9.5665415338812974
		 217 -9.4179001926688635 219 -9.2104618197121209 222 -8.8513055400102889 224 -8.6242697714064054
		 226 -8.431802089021371 227 -8.3553533364922234 230 -8.2132912225760908 235 -8.1442918131321971
		 255 -7.1571418932159325;
createNode animCurveTL -n "bogenCTRL_middle_translateY";
	rename -uid "7394BC85-4CD3-6408-2EB8-A8989CA7A72D";
	setAttr ".tan" 28;
	setAttr -s 32 ".ktv[0:31]"  0 0 18 4.3694776785790266 35 1.0631245356760479
		 40 1.0068475391516141 53 3.424387799078032 66 1.6327094111230382 80 4.5287790362223967
		 86 3.1265239617671208 93 1.3849347954307378 105 3.0956337877698799 115 4.4169035345572194
		 122 3.3488065197592682 126 2.5512731098475179 130 2.0558383232013417 140 4.0900702327144067
		 148 5.526053206074077 150 4.3982612877050631 153 2.1334797670680254 171 4.4278913513829155
		 188 1.8122635300497036 201 3.5181266267753615 214 2.3201152153599915 215 2.3468706893712548
		 217 2.4919891965053385 219 2.71528811625529 222 3.1847429950770216 224 3.5528174633564436
		 226 3.9130773247133579 227 4.0688537844552153 230 4.3520890775279923 235 7.101370304850378
		 255 0;
createNode animCurveTL -n "bogenCTRL_middle_translateZ";
	rename -uid "2D3F7D34-41DE-26D3-6AA6-188906360C9F";
	setAttr ".tan" 28;
	setAttr -s 32 ".ktv[0:31]"  0 0 18 -3.3334766305178976 35 -2.8246953351640647
		 40 -2.7765145439328007 53 -0.52609566900595839 66 -2.1944136836047514 80 0.49870660980084813
		 86 -0.79465089704437752 93 -2.4506129674157027 105 -0.80442944484419177 115 0.4213822018018622
		 122 -0.57179851709883733 126 -1.3380729149440582 130 -1.799353260700018 140 0.059886821706177207
		 148 1.4039489102545142 150 -0.082770244652046868 153 -1.7307662465225124 171 0.65245817425670349
		 188 -2.0694321551986912 201 -0.28456094266439297 214 -1.533495340636762 215 -1.5044056930011998
		 217 -1.3585170139027194 219 -1.1642901256324216 222 -0.86536630661923253 224 -0.7085673214421282
		 226 -0.59739208604223759 227 -0.5589514390736241 230 -0.48470491686566025 235 0.29267432655639469
		 255 2.9721077734466803;
createNode animCurveTU -n "bogenCTRL_middle_visibility";
	rename -uid "E1BBD696-4500-9EFF-FFBC-34B78DCCF2F9";
	setAttr ".tan" 9;
	setAttr -s 13 ".ktv[0:12]"  40 1 53 1 66 1 80 1 93 1 115 1 130 1 148 1
		 153 1 171 1 201 1 214 1 230 1;
	setAttr -s 13 ".kot[0:12]"  5 5 5 5 5 5 5 5 
		5 5 5 5 5;
createNode animCurveTA -n "bogenCTRL_middle_rotateX";
	rename -uid "3D2F640A-4925-DFF1-1699-DCA2BDABEE84";
	setAttr ".tan" 28;
	setAttr -s 16 ".ktv[0:15]"  0 0 35 -48.067 40 -48.066782415460615 53 -48.066782415460615
		 66 -48.066782415460615 80 -41.346304989520746 93 -51.12664814027243 115 -54.535787865510855
		 130 -48.088640441782246 148 -44.354729483574943 153 -46.133435084869014 171 -48.366145845173449
		 201 -45.204867255481027 214 -45.204867255481027 230 -58.237398695869864 255 -48.002282400502502;
createNode animCurveTA -n "bogenCTRL_middle_rotateY";
	rename -uid "1E420B6D-483A-8922-2BA8-F09C50067774";
	setAttr ".tan" 28;
	setAttr -s 16 ".ktv[0:15]"  0 0 35 30.993 40 30.992639367068392 53 30.992639367068392
		 66 30.992639367068392 80 39.90636656441545 93 21.354930147484417 115 9.1209971861576324
		 130 30.952082988912881 148 36.757833808771736 153 32.381546039681183 171 28.252295736002964
		 201 33.839013840292445 214 33.839013840292445 230 41.617950355389553 255 165.59699523756026;
createNode animCurveTA -n "bogenCTRL_middle_rotateZ";
	rename -uid "4D3B844F-41F5-D16F-9DB1-4D96D4ABCF59";
	setAttr ".tan" 28;
	setAttr -s 16 ".ktv[0:15]"  0 0 35 -16.787 40 -16.787048862777109 53 -16.787048862777109
		 66 -16.787048862777109 80 -5.4684835066095641 93 -25.043923029290745 115 -35.167655027815208
		 130 -16.829522594697952 148 -10.140861568403272 153 -19.298472557521769 171 -23.717083086647587
		 201 -17.598809173782932 214 -17.598809173782932 230 -11.924457481095356 255 -77.376936076351498;
createNode animCurveTU -n "bogenCTRL_middle_scaleX";
	rename -uid "C4A0DC70-4792-0804-A642-AABACFB35B14";
	setAttr ".tan" 28;
	setAttr -s 13 ".ktv[0:12]"  40 1 53 1 66 1 80 1 93 1 115 1 130 1 148 1
		 153 1 171 1 201 1 214 1 230 1;
createNode animCurveTU -n "bogenCTRL_middle_scaleY";
	rename -uid "160F289B-40F5-5A27-8CC7-A2BCBA93E047";
	setAttr ".tan" 28;
	setAttr -s 13 ".ktv[0:12]"  40 1 53 1 66 1 80 1 93 1 115 1 130 1 148 1
		 153 1 171 1 201 1 214 1 230 1;
createNode animCurveTU -n "bogenCTRL_middle_scaleZ";
	rename -uid "FE37C0DB-4C95-E0FB-B8D1-898D0C9ED240";
	setAttr ".tan" 28;
	setAttr -s 13 ".ktv[0:12]"  40 1 53 1 66 1 80 1 93 1 115 1 130 1 148 1
		 153 1 171 1 201 1 214 1 230 1;
createNode animCurveTU -n "bogenCTRL_middle_Bend";
	rename -uid "E1BFE623-49F8-4FEE-A689-BF822E519B44";
	setAttr ".tan" 28;
	setAttr -s 13 ".ktv[0:12]"  40 0 53 0 66 0 80 0 93 0 115 0 130 0 148 0
		 153 0 171 0 201 0 214 0 230 0;
createNode animCurveTU -n "bogenCTRL_middle_squashNstretch";
	rename -uid "D1C72D6A-4EE7-D2E9-DC39-9099CD70BEE4";
	setAttr ".tan" 28;
	setAttr -s 13 ".ktv[0:12]"  40 0 53 0 66 0 80 0 93 0 115 0 130 0 148 0
		 153 0 171 0 201 0 214 0 230 0;
createNode animCurveTL -n "Geige_translateX";
	rename -uid "C54DED52-448B-04EF-4B82-BDA1C4A61434";
	setAttr ".tan" 28;
	setAttr ".ktv[0]"  40 5.2861561389818705;
createNode animCurveTL -n "Geige_translateY";
	rename -uid "012139E0-49B9-7ACD-C2A2-4BBC8E912192";
	setAttr ".tan" 28;
	setAttr ".ktv[0]"  40 -14.783675878474583;
createNode animCurveTL -n "Geige_translateZ";
	rename -uid "FCF606AD-4655-D98E-7585-9ABBFC51696E";
	setAttr ".tan" 28;
	setAttr ".ktv[0]"  40 31.819777002606074;
createNode animCurveTU -n "Geige_visibility";
	rename -uid "7FA8B7E5-4F41-5B07-0E65-2E909D304598";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  40 1;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "Geige_rotateX";
	rename -uid "0736B7C9-4FBA-6572-78CD-8A893455F4DD";
	setAttr ".tan" 28;
	setAttr -s 14 ".ktv[0:13]"  40 90 53 93.950071424095469 66 89.185908649070441
		 80 99.393049910196169 93 90.671297144700404 115 102.64644904071045 130 94.581001906327785
		 148 102.71914778714536 153 92.42498486756466 171 99.514720424214971 188 89.005308455328688
		 201 94.666774525792079 214 88.928312005724692 232 98.847944475027404;
createNode animCurveTA -n "Geige_rotateY";
	rename -uid "A4DB121D-4E83-0E7B-DEF8-048E87A84379";
	setAttr ".tan" 28;
	setAttr ".ktv[0]"  40 0;
createNode animCurveTA -n "Geige_rotateZ";
	rename -uid "BB090A92-4843-2E43-703E-3D9E9A44AA74";
	setAttr ".tan" 28;
	setAttr ".ktv[0]"  40 0;
createNode animCurveTU -n "Geige_scaleX";
	rename -uid "1B37478F-413A-64A5-7C9B-1F98DF10DCE6";
	setAttr ".tan" 28;
	setAttr ".ktv[0]"  40 1;
createNode animCurveTU -n "Geige_scaleY";
	rename -uid "68319562-496D-AA8E-89AB-CC9F67C27446";
	setAttr ".tan" 28;
	setAttr ".ktv[0]"  40 1;
createNode animCurveTU -n "Geige_scaleZ";
	rename -uid "DF6C169C-4207-576F-F333-9C8BCE2188DC";
	setAttr ".tan" 28;
	setAttr ".ktv[0]"  40 1;
createNode materialInfo -n "pasted__materialInfo1";
	rename -uid "FAF1DC2A-4DE4-B16B-DC35-66A282A156F2";
createNode shadingEngine -n "pasted__aiStandardSurface1SG";
	rename -uid "35506E35-432D-A85F-1167-C9B7A7F61F32";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode aiStandardSurface -n "pasted__aiStandardSurface1";
	rename -uid "D188C01A-455C-973D-D69B-279C7089BB99";
	setAttr ".specular_roughness" 1;
createNode file -n "pasted__file1";
	rename -uid "B4CDB1B4-41A1-40DD-ED0C-9C9FBA42E75B";
	setAttr ".ftn" -type "string" "E:/High-Strung//assets/2D Planes/Scene 2 Practice/s2_l1.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "pasted__place2dTexture1";
	rename -uid "ABEEBFE1-4265-5243-D59F-14AE44E1640A";
createNode materialInfo -n "pasted__materialInfo2";
	rename -uid "0F793D79-40F6-DEE3-53C3-F7B7DED3CA43";
createNode shadingEngine -n "pasted__aiStandardSurface2SG";
	rename -uid "0A391148-46D2-C4E2-4B32-39862144F8C1";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode aiStandardSurface -n "pasted__aiStandardSurface2";
	rename -uid "46B53D75-4FAF-1FD3-B743-20900EA1E303";
	setAttr ".specular_roughness" 1;
createNode file -n "pasted__file2";
	rename -uid "7979B748-4E12-60E3-75E8-BFA83F5386C0";
	setAttr ".ftn" -type "string" "E:/High-Strung//assets/2D Planes/Scene 2 Practice/s2_l2.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "pasted__place2dTexture2";
	rename -uid "1F2CFF25-4318-4FF3-4980-A985DEC4B367";
createNode file -n "pasted__file3";
	rename -uid "493D07B4-4057-4E78-29B4-8BB90EB34A71";
	setAttr ".ftn" -type "string" "E:/High-Strung//assets/2D Planes/Scene 2 Practice/s2_l2_alpha.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "pasted__place2dTexture3";
	rename -uid "B086F489-4B80-FD84-4587-D8A87FD0B285";
createNode materialInfo -n "pasted__materialInfo3";
	rename -uid "EE5023C9-492B-96B1-96D6-49A78AE59A8E";
createNode shadingEngine -n "pasted__aiStandardSurface3SG";
	rename -uid "1E313BCE-43DF-E9AC-96CC-93ACA4C8D6C2";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode aiStandardSurface -n "pasted__aiStandardSurface3";
	rename -uid "312C2C85-4067-A76E-6217-E7B645AFC45C";
	setAttr ".specular_roughness" 1;
createNode file -n "pasted__file4";
	rename -uid "4B447EFB-4FA3-E218-40FD-CD81DC8A8B30";
	setAttr ".ftn" -type "string" "E:/High-Strung//assets/2D Planes/Scene 2 Practice/s2_l3.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "pasted__place2dTexture4";
	rename -uid "8EB753B9-4036-3461-2EE4-E9A3599DC194";
createNode file -n "pasted__file5";
	rename -uid "73990B7F-455F-0C1B-C3BC-28810053CFBC";
	setAttr ".ftn" -type "string" "E:/High-Strung//assets/2D Planes/Scene 2 Practice/s2_l3_alpha.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "pasted__place2dTexture5";
	rename -uid "C760E09A-40CB-CF2E-8282-79AB86431C75";
createNode materialInfo -n "pasted__materialInfo4";
	rename -uid "FC80D587-4AB1-36C5-1AC6-83BDB9FBF58A";
createNode shadingEngine -n "pasted__aiStandardSurface4SG";
	rename -uid "220BE965-41C6-B3ED-4800-90A12B6E6E96";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode aiStandardSurface -n "pasted__aiStandardSurface4";
	rename -uid "7FD16880-4BF9-8BC3-A080-D2B05B5409BE";
	setAttr ".specular_roughness" 1;
createNode file -n "pasted__file6";
	rename -uid "F0D46D4B-4D51-3DD6-329F-BAA663CBB522";
	setAttr ".ftn" -type "string" "E:/High-Strung//assets/2D Planes/Scene 2 Practice/s2_notenstand.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "pasted__place2dTexture6";
	rename -uid "E42A96D6-4C12-77B8-6F82-5094792E20E0";
createNode file -n "pasted__file7";
	rename -uid "3BC65FCF-4AD6-1F6D-6AB1-98912BD17B0C";
	setAttr ".ftn" -type "string" "E:/High-Strung//assets/2D Planes/Scene 2 Practice/s2_notenstand_alpha.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "pasted__place2dTexture7";
	rename -uid "AE019F67-46F3-02F5-C6F4-FB9C8AD4CB4E";
createNode timeEditor -s -n "timeEditor";
	rename -uid "314685D1-407C-B660-7096-D184BE345E08";
	setAttr ".ac" 0;
createNode timeEditorTracks -n "Composition1";
	rename -uid "7BEA7631-4594-95A7-A3E0-CFBB7629B128";
createNode animCurveTU -n "geigeCTRL_bottom_visibility";
	rename -uid "359705EE-4BA2-F270-9A22-E8AB293B6720";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  35 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "geigeCTRL_bottom_translateX";
	rename -uid "31427BE2-4C1A-0FBC-2558-278C3AD0595E";
	setAttr ".tan" 28;
	setAttr ".ktv[0]"  35 0;
createNode animCurveTL -n "geigeCTRL_bottom_translateY";
	rename -uid "24589558-499B-F635-9439-AFB62E6CA986";
	setAttr ".tan" 28;
	setAttr ".ktv[0]"  35 0;
createNode animCurveTL -n "geigeCTRL_bottom_translateZ";
	rename -uid "4FBC756E-4EB0-1891-3754-13B03A448751";
	setAttr ".tan" 28;
	setAttr ".ktv[0]"  35 0;
createNode animCurveTA -n "geigeCTRL_bottom_rotateX";
	rename -uid "D1D26A89-460F-8732-25F8-2AA059517334";
	setAttr ".tan" 28;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 -50.777902105046529;
createNode animCurveTA -n "geigeCTRL_bottom_rotateY";
	rename -uid "F1A25E1D-486D-1BB5-2F65-6EA65AA76EE0";
	setAttr ".tan" 28;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 -20.462727062217603;
createNode animCurveTA -n "geigeCTRL_bottom_rotateZ";
	rename -uid "9EF283C4-4206-AB4A-138A-2488EBFC2F9C";
	setAttr ".tan" 28;
	setAttr -s 2 ".ktv[0:1]"  0 0 35 63.684044970882887;
createNode animCurveTU -n "geigeCTRL_bottom_scaleX";
	rename -uid "6BF467D4-46EF-E3BB-6B70-3A80079B1FB1";
	setAttr ".tan" 28;
	setAttr ".ktv[0]"  35 1;
createNode animCurveTU -n "geigeCTRL_bottom_scaleY";
	rename -uid "8F7F173C-4838-10B0-30C9-F8A401ECDC76";
	setAttr ".tan" 28;
	setAttr ".ktv[0]"  35 1;
createNode animCurveTU -n "geigeCTRL_bottom_scaleZ";
	rename -uid "784BBC51-442F-55D8-5A18-83B904987B01";
	setAttr ".tan" 28;
	setAttr ".ktv[0]"  35 1;
createNode animCurveTA -n "Geige_rotateY1";
	rename -uid "090EEF82-453D-92B4-6030-86A219BD5528";
	setAttr ".tan" 28;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "Geige_rotateZ1";
	rename -uid "9F46DFA5-4263-4861-911B-BD84C0E7E855";
	setAttr ".tan" 28;
	setAttr -s 2 ".ktv[0:1]"  0 0 40 41.196926026479389;
createNode animCurveTL -n "Geige_translateY1";
	rename -uid "BBEB3346-484F-F78C-41BC-ABA845681290";
	setAttr ".tan" 28;
	setAttr -s 2 ".ktv[0:1]"  0 -9.7801960809196853 40 -4.8450367258654996;
createNode animCurveTL -n "MS_translateX";
	rename -uid "3BB1AA1B-4847-871B-26F7-058CC3042D9F";
	setAttr ".tan" 28;
	setAttr -s 2 ".ktv[0:1]"  50 1.0571418878261003 100 -4.072;
createNode animCurveTL -n "MS_translateY";
	rename -uid "E89F2E8A-456F-A745-F4C8-A1B818DE0258";
	setAttr ".tan" 28;
	setAttr -s 2 ".ktv[0:1]"  50 -11.258154188823521 100 -10.760674063171839;
createNode animCurveTL -n "MS_translateZ";
	rename -uid "E0D8AAC8-4A67-1BFA-C232-A4B85A480CF1";
	setAttr ".tan" 28;
	setAttr -s 2 ".ktv[0:1]"  50 80.494882402728521 100 54.496707762631253;
createNode animCurveTU -n "MS_visibility";
	rename -uid "E515AD69-4799-AB47-90A3-91A81D9DF93A";
	setAttr ".tan" 9;
	setAttr -s 3 ".ktv[0:2]"  21 0 50 1 100 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "MS_rotateX";
	rename -uid "5EB6C11A-4F5D-90A8-A960-519D4249D4AF";
	setAttr ".tan" 28;
	setAttr -s 2 ".ktv[0:1]"  50 0 100 0.68188422833916995;
createNode animCurveTA -n "MS_rotateY";
	rename -uid "8871EE93-430D-212C-9BF3-538AEF09531E";
	setAttr ".tan" 28;
	setAttr -s 2 ".ktv[0:1]"  50 0 100 2.9784593258283483;
createNode animCurveTA -n "MS_rotateZ";
	rename -uid "40D7A24F-42FD-38DE-885B-D2A77ACEA4D6";
	setAttr ".tan" 28;
	setAttr -s 2 ".ktv[0:1]"  50 -4.3560820575629035e-17 100 -4.3560820575629035e-17;
createNode animCurveTU -n "MS_scaleX";
	rename -uid "23909962-4BCD-686E-B90C-31BD20EC23F6";
	setAttr ".tan" 28;
	setAttr -s 2 ".ktv[0:1]"  50 1 100 1;
createNode animCurveTU -n "MS_scaleY";
	rename -uid "035CF11A-4E07-2DC7-F2F9-4FA1294DC26D";
	setAttr ".tan" 28;
	setAttr -s 2 ".ktv[0:1]"  50 1 100 1;
createNode animCurveTU -n "MS_scaleZ";
	rename -uid "73CC98F8-4CF6-FDBE-7276-D2BDA1964652";
	setAttr ".tan" 28;
	setAttr -s 2 ".ktv[0:1]"  50 1 100 1;
createNode makeNurbCircle -n "makeNurbCircle1";
	rename -uid "210022FD-4086-7053-BF3B-C5BFCA27AD9B";
	setAttr ".nr" -type "double3" 0 1 0 ;
	setAttr ".sw" 180;
createNode rebuildCurve -n "rebuildCurve1";
	rename -uid "4C6B6313-4B25-AA8A-BDE0-7FB8A8C1F5D4";
	setAttr ".s" 10;
	setAttr ".end" 1;
	setAttr ".kr" 0;
	setAttr ".kt" no;
createNode motionPath -n "motionPath1";
	rename -uid "B1C01C02-4535-6BFD-BB2C-F5BBD9501CDA";
	setAttr -s 2 ".pmt";
	setAttr -s 2 ".pmt";
	setAttr ".f" yes;
	setAttr ".fa" 0;
	setAttr ".ua" 1;
	setAttr ".fm" yes;
createNode animCurveTL -n "motionPath1_uValue";
	rename -uid "48FC7FE3-46AB-EAD5-584B-CDB457FAB4CE";
	setAttr ".tan" 28;
	setAttr -s 2 ".ktv[0:1]"  0 0 240 1;
createNode addDoubleLinear -n "addDoubleLinear1";
	rename -uid "D314A794-46A9-DBA5-CE1C-CE9C43489DAA";
	setAttr ".ihi" 2;
createNode addDoubleLinear -n "addDoubleLinear2";
	rename -uid "1340FDC8-4376-3429-AAEA-EA867846B506";
	setAttr ".ihi" 2;
createNode addDoubleLinear -n "addDoubleLinear3";
	rename -uid "7C0ED506-4443-2280-E374-C1854A8FA1F3";
	setAttr ".ihi" 2;
createNode sequencer -n "sequencer1";
	rename -uid "3639FDC0-49B6-9F83-F848-78956DD0ABD3";
	setAttr ".mnf" 0;
	setAttr ".mxf" 300;
	setAttr -s 2 ".shts";
createNode trackInfoManager -n "trackInfoManager1";
	rename -uid "67229DD5-4C6E-2649-C2EE-148E5DFC390A";
	setAttr -s 2 ".ti";
	setAttr ".ti[0].t" -type "string" "";
	setAttr ".ti[1].t" -type "string" "";
createNode shot -n "establishing1";
	rename -uid "640E27E9-45D7-3A62-0ADC-2089725CFEA2";
	setAttr ".ef" 49;
	setAttr ".cv" no;
	setAttr ".sn" -type "string" "establishing1";
	setAttr ".wres" 1024;
createNode shot -n "cam181";
	rename -uid "DEF2EE74-4D1F-FE2E-3829-2DBED80BADD8";
	setAttr ".sf" 50;
	setAttr ".ef" 300;
	setAttr ".ssf" 50;
	setAttr ".czo" -52;
	setAttr ".cv" no;
	setAttr ".tk" 2;
	setAttr ".sn" -type "string" "cam181";
	setAttr ".wres" 1024;
	setAttr ".ca" 1;
createNode animCurveTL -n "plane_canvasSize2_translateX";
	rename -uid "7F7A278C-47BB-B4D6-F7EA-54BBD4C32ADC";
	setAttr ".tan" 28;
	setAttr -s 2 ".ktv[0:1]"  150 -100 300 -50;
createNode animCurveTL -n "plane_canvasSize2_translateY";
	rename -uid "4C13DA68-41E6-C403-4F9F-7E914B5F9227";
	setAttr ".tan" 28;
	setAttr ".ktv[0]"  150 0;
createNode animCurveTL -n "plane_canvasSize2_translateZ";
	rename -uid "22DE1386-4FE0-3EDC-A676-ED9C759440F7";
	setAttr ".tan" 28;
	setAttr ".ktv[0]"  150 50.892382629912234;
createNode animCurveTU -n "plane_canvasSize2_visibility";
	rename -uid "4617A3E4-4FF6-60B0-1956-7697EAB075F1";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  150 1;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "plane_canvasSize2_rotateX";
	rename -uid "E4B393C9-4CF5-F989-43B1-6386CEF13399";
	setAttr ".tan" 28;
	setAttr ".ktv[0]"  150 90.000000000000028;
createNode animCurveTA -n "plane_canvasSize2_rotateY";
	rename -uid "562D42DC-4EE8-D4FA-C045-6C99143F0BA7";
	setAttr ".tan" 28;
	setAttr ".ktv[0]"  150 0;
createNode animCurveTA -n "plane_canvasSize2_rotateZ";
	rename -uid "F8D87242-4B27-C414-B6E8-538AE6CD0B4B";
	setAttr ".tan" 28;
	setAttr ".ktv[0]"  150 0;
createNode animCurveTU -n "plane_canvasSize2_scaleX";
	rename -uid "BF418980-4B15-CC6F-6CD9-3099C591DF8A";
	setAttr ".tan" 28;
	setAttr ".ktv[0]"  150 100;
createNode animCurveTU -n "plane_canvasSize2_scaleY";
	rename -uid "E63B54DF-4C7F-2B45-9745-7C8FD08C9FBC";
	setAttr ".tan" 28;
	setAttr ".ktv[0]"  150 1;
createNode animCurveTU -n "plane_canvasSize2_scaleZ";
	rename -uid "957C896E-46E7-7AEE-EFAA-E7BA0B6FDE5C";
	setAttr ".tan" 28;
	setAttr ".ktv[0]"  150 60;
createNode animCurveTL -n "plane_canvasSize3_translateX";
	rename -uid "E174DC38-472B-1AC3-6F3C-5586E2683799";
	setAttr ".tan" 28;
	setAttr -s 2 ".ktv[0:1]"  150 100 300 50;
createNode animCurveTL -n "plane_canvasSize3_translateY";
	rename -uid "5B65FACC-4FC7-7E9C-F833-E7AFF400605B";
	setAttr ".tan" 28;
	setAttr ".ktv[0]"  150 0;
createNode animCurveTL -n "plane_canvasSize3_translateZ";
	rename -uid "501940FF-4907-2378-7F00-AC8A73810329";
	setAttr ".tan" 28;
	setAttr ".ktv[0]"  150 50.892382629912234;
createNode animCurveTU -n "plane_canvasSize3_visibility";
	rename -uid "AEC51F8C-4B22-069B-0293-25A909F9E1D5";
	setAttr ".tan" 9;
	setAttr ".ktv[0]"  150 1;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "plane_canvasSize3_rotateX";
	rename -uid "19D314A6-4C83-232C-5536-36AB2E1F0AA8";
	setAttr ".tan" 28;
	setAttr ".ktv[0]"  150 90.000000000000028;
createNode animCurveTA -n "plane_canvasSize3_rotateY";
	rename -uid "637CEEA4-49D6-7991-D817-1FBF048EDA98";
	setAttr ".tan" 28;
	setAttr ".ktv[0]"  150 0;
createNode animCurveTA -n "plane_canvasSize3_rotateZ";
	rename -uid "F82CF986-4DA3-959E-643A-17BAF80394C4";
	setAttr ".tan" 28;
	setAttr ".ktv[0]"  150 0;
createNode animCurveTU -n "plane_canvasSize3_scaleX";
	rename -uid "96BAAB00-4227-FEF9-5FD9-2086AFFAAA69";
	setAttr ".tan" 28;
	setAttr ".ktv[0]"  150 100;
createNode animCurveTU -n "plane_canvasSize3_scaleY";
	rename -uid "4525015C-48FD-F380-C100-0DAD89B4F919";
	setAttr ".tan" 28;
	setAttr ".ktv[0]"  150 1;
createNode animCurveTU -n "plane_canvasSize3_scaleZ";
	rename -uid "93D7F909-46E5-4486-8ACC-A782E4BA598F";
	setAttr ".tan" 28;
	setAttr ".ktv[0]"  150 60;
createNode animCurveTL -n "Geige_translateY2";
	rename -uid "5CDF295C-4853-16D2-4C44-4EB18F8DA452";
	setAttr ".tan" 28;
	setAttr -s 6 ".ktv[0:5]"  255 -10.02974595268447 280 -10.204795539707277
		 300 -10.031186220801304 320 -10.205019201174672 340 -10.031 360 -10.205019201174672;
select -ne :time1;
	setAttr -av -k on ".cch";
	setAttr -k on ".fzn";
	setAttr -av -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr ".o" 21;
	setAttr -av -k on ".unw" 21;
	setAttr -av -k on ".etw";
	setAttr -av -k on ".tps";
	setAttr -av -k on ".tms";
select -ne :sequenceManager1;
	setAttr ".o" 72;
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
	setAttr -s 16 ".st";
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
	setAttr -s 24 ".s";
select -ne :postProcessList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 31 ".u";
select -ne :defaultRenderingList1;
	setAttr -k on ".ihi";
	setAttr -s 3 ".r";
select -ne :defaultTextureList1;
	setAttr -s 43 ".tx";
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
	setAttr -av -k on ".outf" 51;
	setAttr -av -cb on ".imfkey" -type "string" "exr";
	setAttr -av -k on ".gama";
	setAttr -k on ".exrc";
	setAttr -k on ".expt";
	setAttr -av -k on ".an" yes;
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
	setAttr -av -k on ".pff" yes;
	setAttr -av -k on ".peie" 2;
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
connectAttr "plane_canvasSize2_rotateX.o" "stage_fertigRN.phl[1]";
connectAttr "plane_canvasSize2_rotateY.o" "stage_fertigRN.phl[2]";
connectAttr "plane_canvasSize2_rotateZ.o" "stage_fertigRN.phl[3]";
connectAttr "plane_canvasSize2_translateX.o" "stage_fertigRN.phl[4]";
connectAttr "plane_canvasSize2_translateY.o" "stage_fertigRN.phl[5]";
connectAttr "plane_canvasSize2_translateZ.o" "stage_fertigRN.phl[6]";
connectAttr "plane_canvasSize2_visibility.o" "stage_fertigRN.phl[7]";
connectAttr "plane_canvasSize2_scaleX.o" "stage_fertigRN.phl[8]";
connectAttr "plane_canvasSize2_scaleY.o" "stage_fertigRN.phl[9]";
connectAttr "plane_canvasSize2_scaleZ.o" "stage_fertigRN.phl[10]";
connectAttr "plane_canvasSize3_translateX.o" "stage_fertigRN.phl[11]";
connectAttr "plane_canvasSize3_translateY.o" "stage_fertigRN.phl[12]";
connectAttr "plane_canvasSize3_translateZ.o" "stage_fertigRN.phl[13]";
connectAttr "plane_canvasSize3_visibility.o" "stage_fertigRN.phl[14]";
connectAttr "plane_canvasSize3_rotateX.o" "stage_fertigRN.phl[15]";
connectAttr "plane_canvasSize3_rotateY.o" "stage_fertigRN.phl[16]";
connectAttr "plane_canvasSize3_rotateZ.o" "stage_fertigRN.phl[17]";
connectAttr "plane_canvasSize3_scaleX.o" "stage_fertigRN.phl[18]";
connectAttr "plane_canvasSize3_scaleY.o" "stage_fertigRN.phl[19]";
connectAttr "plane_canvasSize3_scaleZ.o" "stage_fertigRN.phl[20]";
connectAttr "Geige_translateX.o" "Geige_RigRN.phl[1]";
connectAttr "Geige_translateY2.o" "Geige_RigRN.phl[2]";
connectAttr "Geige_rotateX.o" "Geige_RigRN.phl[3]";
connectAttr "bogenCTRL_middle_Bend.o" "Geige_RigRN.phl[4]";
connectAttr "bogenCTRL_middle_squashNstretch.o" "Geige_RigRN.phl[5]";
connectAttr "bogenCTRL_middle_translateX.o" "Geige_RigRN.phl[6]";
connectAttr "bogenCTRL_middle_translateY.o" "Geige_RigRN.phl[7]";
connectAttr "bogenCTRL_middle_translateZ.o" "Geige_RigRN.phl[8]";
connectAttr "bogenCTRL_middle_rotateX.o" "Geige_RigRN.phl[9]";
connectAttr "bogenCTRL_middle_rotateY.o" "Geige_RigRN.phl[10]";
connectAttr "bogenCTRL_middle_rotateZ.o" "Geige_RigRN.phl[11]";
connectAttr "bogenCTRL_middle_scaleX.o" "Geige_RigRN.phl[12]";
connectAttr "bogenCTRL_middle_scaleY.o" "Geige_RigRN.phl[13]";
connectAttr "bogenCTRL_middle_scaleZ.o" "Geige_RigRN.phl[14]";
connectAttr "bogenCTRL_middle_visibility.o" "Geige_RigRN.phl[15]";
connectAttr "geigeCTRL_bottom_translateX.o" "Geige_RigRN.phl[16]";
connectAttr "geigeCTRL_bottom_translateY.o" "Geige_RigRN.phl[17]";
connectAttr "geigeCTRL_bottom_translateZ.o" "Geige_RigRN.phl[18]";
connectAttr "geigeCTRL_bottom_rotateX.o" "Geige_RigRN.phl[19]";
connectAttr "geigeCTRL_bottom_rotateY.o" "Geige_RigRN.phl[20]";
connectAttr "geigeCTRL_bottom_rotateZ.o" "Geige_RigRN.phl[21]";
connectAttr "geigeCTRL_bottom_scaleX.o" "Geige_RigRN.phl[22]";
connectAttr "geigeCTRL_bottom_scaleY.o" "Geige_RigRN.phl[23]";
connectAttr "geigeCTRL_bottom_scaleZ.o" "Geige_RigRN.phl[24]";
connectAttr "geigeCTRL_bottom_visibility.o" "Geige_RigRN.phl[25]";
connectAttr "Geige_RigRN.phl[26]" "cam180_aim_pointConstraint1.tg[0].tpm";
connectAttr "Geige_RigRN.phl[27]" "cam180_aim_pointConstraint1.tg[0].tt";
connectAttr "Geige_RigRN.phl[28]" "cam180_aim_pointConstraint1.tg[0].trp";
connectAttr "Geige_RigRN.phl[29]" "cam180_aim_pointConstraint1.tg[0].trt";
connectAttr "Geige_RigRN.phl[30]" "Geige_RigRN.phl[31]";
connectAttr "Geige_RigRN.phl[32]" "Geige_RigRN.phl[33]";
connectAttr "Geige_RigRN.phl[34]" "Geige_RigRN.phl[35]";
connectAttr "Geige_RigRN.phl[36]" "Geige_RigRN.phl[37]";
connectAttr "Geige_RigRN.phl[38]" "Geige_RigRN.phl[39]";
connectAttr "Geige_RigRN.phl[40]" "Geige_RigRN.phl[41]";
connectAttr "Geige_RigRN.phl[42]" "Geige_RigRN.phl[43]";
connectAttr "Geige_RigRN.phl[44]" "Geige_RigRN.phl[45]";
connectAttr "Geige_RigRN.phl[46]" "Geige_RigRN.phl[47]";
connectAttr "Geige_RigRN.phl[48]" "Geige_RigRN.phl[49]";
connectAttr "Geige_RigRN.phl[50]" "Geige_RigRN.phl[51]";
connectAttr "Geige_RigRN.phl[52]" "Geige_RigRN.phl[53]";
connectAttr "Geige_RigRN.phl[54]" "Geige_RigRN.phl[55]";
connectAttr "Geige_RigRN.phl[56]" "Geige_RigRN.phl[57]";
connectAttr "Geige_RigRN.phl[58]" "Geige_RigRN.phl[59]";
connectAttr "Geige_RigRN.phl[60]" "Geige_RigRN.phl[61]";
connectAttr "MS_translateX.o" "MS.tx" -l on;
connectAttr "MS_translateY.o" "MS.ty" -l on;
connectAttr "MS_translateZ.o" "MS.tz" -l on;
connectAttr "MS_rotateX.o" "MS.rx" -l on;
connectAttr "MS_rotateY.o" "MS.ry" -l on;
connectAttr "MS_rotateZ.o" "MS.rz" -l on;
connectAttr "MS_visibility.o" "MS.v";
connectAttr "MS_scaleX.o" "MS.sx";
connectAttr "MS_scaleY.o" "MS.sy";
connectAttr "MS_scaleZ.o" "MS.sz";
connectAttr "rebuildCurve1.oc" "nurbsCircleShape1.cr";
connectAttr "cam180_aim.tx" "camera180.tg[0].ttx";
connectAttr "cam180_aim.ty" "camera180.tg[0].tty";
connectAttr "cam180_aim.tz" "camera180.tg[0].ttz";
connectAttr "cam180_aim.rp" "camera180.tg[0].trp";
connectAttr "cam180_aim.rpt" "camera180.tg[0].trt";
connectAttr "cam180_aim.pm" "camera180.tg[0].tpm";
connectAttr "cam180.pim" "camera180.cpim";
connectAttr "cam180.t" "camera180.ct";
connectAttr "cam180.rp" "camera180.crp";
connectAttr "cam180.rpt" "camera180.crt";
connectAttr "addDoubleLinear1.o" "camera180.tx";
connectAttr "addDoubleLinear2.o" "camera180.ty";
connectAttr "addDoubleLinear3.o" "camera180.tz";
connectAttr "motionPath1.msg" "camera180.sml";
connectAttr "motionPath1.rx" "camera180.rx";
connectAttr "motionPath1.ry" "camera180.ry";
connectAttr "motionPath1.rz" "camera180.rz";
connectAttr "motionPath1.ro" "camera180.ro";
connectAttr "camera180.crx" "cam180.rx" -l on;
connectAttr "camera180.cry" "cam180.ry" -l on;
connectAttr "camera180.crz" "cam180.rz" -l on;
connectAttr "camera180.db" "camShape180.coi" -l on;
connectAttr "cam180_aim_pointConstraint1.ctx" "cam180_aim.tx" -l on;
connectAttr "cam180_aim_pointConstraint1.cty" "cam180_aim.ty" -l on;
connectAttr "cam180_aim_pointConstraint1.ctz" "cam180_aim.tz" -l on;
connectAttr "cam180_aim_pointConstraint1.w0" "cam180_aim_pointConstraint1.tg[0].tw"
		;
connectAttr "cam180_aim.pim" "cam180_aim_pointConstraint1.cpim";
connectAttr "cam180_aim.rp" "cam180_aim_pointConstraint1.crp";
connectAttr "cam180_aim.rpt" "cam180_aim_pointConstraint1.crt";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__aiStandardSurface1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__aiStandardSurface2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__aiStandardSurface3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "pasted__aiStandardSurface4SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__aiStandardSurface1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__aiStandardSurface2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__aiStandardSurface3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "pasted__aiStandardSurface4SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "pasted__aiStandardSurface1SG.msg" "pasted__materialInfo1.sg";
connectAttr "pasted__aiStandardSurface1.msg" "pasted__materialInfo1.m";
connectAttr "pasted__file1.msg" "pasted__materialInfo1.t" -na;
connectAttr "pasted__aiStandardSurface1.out" "pasted__aiStandardSurface1SG.ss";
connectAttr "BGShape.iog" "pasted__aiStandardSurface1SG.dsm" -na;
connectAttr "pasted__file1.oc" "pasted__aiStandardSurface1.base_color";
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
connectAttr "pasted__aiStandardSurface2SG.msg" "pasted__materialInfo2.sg";
connectAttr "pasted__aiStandardSurface2.msg" "pasted__materialInfo2.m";
connectAttr "pasted__aiStandardSurface2.msg" "pasted__materialInfo2.t" -na;
connectAttr "pasted__aiStandardSurface2.out" "pasted__aiStandardSurface2SG.ss";
connectAttr "sofaShape.iog" "pasted__aiStandardSurface2SG.dsm" -na;
connectAttr "pasted__file2.oc" "pasted__aiStandardSurface2.base_color";
connectAttr "pasted__file3.oc" "pasted__aiStandardSurface2.opacity";
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
connectAttr "pasted__aiStandardSurface3SG.msg" "pasted__materialInfo3.sg";
connectAttr "pasted__aiStandardSurface3.msg" "pasted__materialInfo3.m";
connectAttr "pasted__aiStandardSurface3.msg" "pasted__materialInfo3.t" -na;
connectAttr "pasted__aiStandardSurface3.out" "pasted__aiStandardSurface3SG.ss";
connectAttr "archShape.iog" "pasted__aiStandardSurface3SG.dsm" -na;
connectAttr "pasted__file4.oc" "pasted__aiStandardSurface3.base_color";
connectAttr "pasted__file5.oc" "pasted__aiStandardSurface3.opacity";
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
connectAttr "pasted__aiStandardSurface4SG.msg" "pasted__materialInfo4.sg";
connectAttr "pasted__aiStandardSurface4.msg" "pasted__materialInfo4.m";
connectAttr "pasted__aiStandardSurface4.msg" "pasted__materialInfo4.t" -na;
connectAttr "pasted__aiStandardSurface4.out" "pasted__aiStandardSurface4SG.ss";
connectAttr "notenstaenderShape.iog" "pasted__aiStandardSurface4SG.dsm" -na;
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
connectAttr ":timeEditor.cmp[0]" "Composition1.cmp";
connectAttr "makeNurbCircle1.oc" "rebuildCurve1.ic";
connectAttr "motionPath1_uValue.o" "motionPath1.u";
connectAttr "nurbsCircleShape1.ws" "motionPath1.gp";
connectAttr "positionMarkerShape1.t" "motionPath1.pmt[0]";
connectAttr "positionMarkerShape2.t" "motionPath1.pmt[1]";
connectAttr "camera180.tmrx" "addDoubleLinear1.i1";
connectAttr "motionPath1.xc" "addDoubleLinear1.i2";
connectAttr "camera180.tmry" "addDoubleLinear2.i1";
connectAttr "motionPath1.yc" "addDoubleLinear2.i2";
connectAttr "camera180.tmrz" "addDoubleLinear3.i1";
connectAttr "motionPath1.zc" "addDoubleLinear3.i2";
connectAttr "establishing1.msg" "sequencer1.shts" -na;
connectAttr "cam181.msg" "sequencer1.shts" -na;
connectAttr "establishingShape.msg" "establishing1.ccm";
connectAttr "camShape180.msg" "cam181.ccm";
connectAttr "sequencer1.msg" ":sequenceManager1.seqts" -na;
connectAttr "trackInfoManager1.msg" ":sequenceManager1.tim";
connectAttr "pasted__aiStandardSurface1SG.pa" ":renderPartition.st" -na;
connectAttr "pasted__aiStandardSurface2SG.pa" ":renderPartition.st" -na;
connectAttr "pasted__aiStandardSurface3SG.pa" ":renderPartition.st" -na;
connectAttr "pasted__aiStandardSurface4SG.pa" ":renderPartition.st" -na;
connectAttr "pasted__aiStandardSurface1.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__aiStandardSurface2.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__aiStandardSurface3.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__aiStandardSurface4.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "pasted__place2dTexture2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "pasted__place2dTexture3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "pasted__place2dTexture4.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "pasted__place2dTexture5.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "pasted__place2dTexture6.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "pasted__place2dTexture7.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "pasted__file1.msg" ":defaultTextureList1.tx" -na;
connectAttr "pasted__file2.msg" ":defaultTextureList1.tx" -na;
connectAttr "pasted__file3.msg" ":defaultTextureList1.tx" -na;
connectAttr "pasted__file4.msg" ":defaultTextureList1.tx" -na;
connectAttr "pasted__file5.msg" ":defaultTextureList1.tx" -na;
connectAttr "pasted__file6.msg" ":defaultTextureList1.tx" -na;
connectAttr "pasted__file7.msg" ":defaultTextureList1.tx" -na;
// End of Practice02_camera.ma
