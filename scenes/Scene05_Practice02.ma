//Maya ASCII 2023 scene
//Name: Scene05_Practice02.ma
//Last modified: Tue, Jun 13, 2023 11:16:22 PM
//Codeset: 1252
file -rdi 1 -ns "stage_fertig" -rfn "stage_fertigRN" -op "v=0;" -typ "mayaAscii"
		 "E:/High-Strung//scenes/stage_fertig.ma";
file -rdi 1 -ns "Geige_Rig" -rfn "Geige_RigRN" -op "v=0;" -typ "mayaAscii" "E:/High-Strung//scenes/Geige_Rig.ma";
file -rdi 1 -ns "notenblaetter" -rfn "notenblaetterRN" -op "v=0;" -typ "mayaAscii"
		 "C:/Users/simon/Desktop/Digital Arts Hagenberg/4. Semester/2. SemProj HIGH STRUNG/High-Strung//scenes/notenblaetter.ma";
file -r -ns "stage_fertig" -dr 1 -rfn "stage_fertigRN" -op "v=0;" -typ "mayaAscii"
		 "E:/High-Strung//scenes/stage_fertig.ma";
file -r -ns "Geige_Rig" -dr 1 -rfn "Geige_RigRN" -op "v=0;" -typ "mayaAscii" "E:/High-Strung//scenes/Geige_Rig.ma";
file -r -ns "notenblaetter" -dr 1 -rfn "notenblaetterRN" -op "v=0;" -typ "mayaAscii"
		 "C:/Users/simon/Desktop/Digital Arts Hagenberg/4. Semester/2. SemProj HIGH STRUNG/High-Strung//scenes/notenblaetter.ma";
requires maya "2023";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" -nodeType "aiSkyDomeLight"
		 -nodeType "aiAreaLight" -nodeType "aiStandardSurface" -nodeType "aiAtmosphereVolume"
		 "mtoa" "5.1.2";
requires "stereoCamera" "10.0";
requires "stereoCamera" "10.0";
requires "OpenEXRLoader" "2020";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2023";
fileInfo "version" "2023";
fileInfo "cutIdentifier" "202205052215-234554116d";
fileInfo "osv" "Windows 11 Home v2009 (Build: 22621)";
fileInfo "UUID" "AD164EAF-44D3-F2C7-BC1A-B098B9905BBE";
createNode transform -s -n "persp";
	rename -uid "D89B634B-4FF6-E51C-602F-70840D7ECFD7";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 13.79384085975763 34.607596313644827 179.86407316913647 ;
	setAttr ".r" -type "double3" -14.138352730836292 730.6000000000497 0 ;
	setAttr ".rp" -type "double3" -3.5527136788005009e-15 1.7763568394002505e-15 0 ;
	setAttr ".rpt" -type "double3" 7.6122216370870843e-16 -1.3008790216877643e-17 2.2080300910612519e-15 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "404F161D-44F4-97C3-974F-E081DA827387";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999979;
	setAttr ".coi" 161.26330233631492;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0.40501411188000702 -29.97291357973668 0.0011878013610842064 ;
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
		0 0 0 0 0 0 0 0 0 0 0 0 0 -0.032574550193144571 -3.9892318627699758e-18 0 -0.065005944148775738 
		0 -0.091081387683107695 -0.12854616099969701 -0.0071945099209869134 -0.12172354931949014 
		-0.17253071512272147 -0.0096149312771095508 -0.28740889721238455 -0.20013479050616706 
		-0.055523294801434808 -0.35463164334670355 -0.22076763138457639 -0.028012318885947129 
		-0.35906183753760568 -0.23451786147134759 -0.028362259492575648;
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
	setAttr ".db" 48.831986493378842;
	setAttr ".tws" 0.03875206632954601;
createNode transform -n "cam180" -p "camera180";
	rename -uid "1EE9DB4F-43F2-6834-6497-8BB89066A722";
	setAttr ".t" -type "double3" -1.1943798583975038 0.20253980493896329 0.11648108306730798 ;
createNode camera -n "camShape180" -p "cam180";
	rename -uid "9C958655-4936-7EF1-296B-8393272C3482";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".cap" -type "double2" 1.41732 0.94488 ;
	setAttr ".ff" 0;
	setAttr ".coi" 48.831986493378842;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "camera1";
	setAttr ".den" -type "string" "camera1_depth";
	setAttr ".man" -type "string" "camera1_mask";
createNode transform -n "cam180_aim" -p "camera180";
	rename -uid "94D20187-4EA6-04CB-C90F-4B9ECDF770B2";
	setAttr ".v" no;
	setAttr ".drp" yes;
createNode locator -n "cam180_aimShape" -p "cam180_aim";
	rename -uid "49543410-41AF-C8F8-057F-DA9678160FE4";
	setAttr -k off ".v" no;
createNode pointConstraint -n "cam180_aim_pointConstraint1" -p "cam180_aim";
	rename -uid "30AFF2E4-4E2A-3033-DA18-E387A8235316";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "pSphere1W0" -dv 1 -min 0 -at "double";
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
	setAttr ".rst" -type "double3" -1.1586124010197381 -0.12515601846725088 19.970616409665375 ;
	setAttr -k on ".w0";
createNode transform -n "pSphere1";
	rename -uid "9DA11233-40D4-73BC-FC2C-69A041F5D49F";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -2.9068757376276184 -9.2010912402112748 32.621885543978479 ;
createNode mesh -n "pSphereShape1" -p "pSphere1";
	rename -uid "938575C3-43D2-712F-7DB5-88ADB4639E13";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "lighting";
	rename -uid "2CCF2E4A-42DA-692A-D30A-519EBDF174FD";
createNode transform -n "pasted__Stage_Lighting" -p "lighting";
	rename -uid "1B59FD30-4C8D-088B-31A5-318458CBDD93";
createNode transform -n "pasted__pasted__BG_Light" -p "pasted__Stage_Lighting";
	rename -uid "C2ADE0AE-4581-AE99-0DF9-8C9F9823BCF9";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 6.1518656724772196 ;
	setAttr ".s" -type "double3" 32.559872626610058 17.389322958962438 27.896594192768145 ;
createNode aiAreaLight -n "pasted__pasted__BG_LightShape" -p "pasted__pasted__BG_Light";
	rename -uid "87F3AD9B-4A3F-6F32-7781-A3A41F8623E1";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr -k off ".v";
	setAttr ".csh" no;
	setAttr ".rcsh" no;
	setAttr ".sc" -type "float3" 1 0.94988161 0.80799997 ;
	setAttr ".ai_exposure" 12.5;
	setAttr ".ai_volume" 0;
	setAttr ".ai_color_temperature" 4607.36181640625;
	setAttr ".ai_translator" -type "string" "quad";
	setAttr ".aal" -type "attributeAlias" {"exposure","aiExposure","normalize","aiNormalize"
		} ;
createNode transform -n "pasted__pasted__aiSkyDomeLight1" -p "pasted__Stage_Lighting";
	rename -uid "6471B2F2-4890-D306-1017-32996AD4D5C8";
createNode aiSkyDomeLight -n "pasted__pasted__aiSkyDomeLightShape1" -p "pasted__pasted__aiSkyDomeLight1";
	rename -uid "073A4F4F-48FC-D0E0-84FF-C8860309E5F7";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr -k off ".v";
	setAttr ".csh" no;
	setAttr ".rcsh" no;
	setAttr ".intensity" 0.80000001192092896;
	setAttr ".camera" 0;
	setAttr ".ai_volume" 0;
	setAttr ".aal" -type "attributeAlias" {"exposure","aiExposure"} ;
createNode transform -n "pasted__spotLight1" -p "pasted__Stage_Lighting";
	rename -uid "6ECED1A7-45AD-514A-916D-10A115BB1F11";
	setAttr ".t" -type "double3" -42.977093236979073 36.007122400867601 28.230843852724838 ;
	setAttr ".r" -type "double3" -101.08503701866684 -111.79818500940181 41.757882419144202 ;
	setAttr ".s" -type "double3" 10.347848842012498 10.347848842012498 10.347848842012498 ;
createNode spotLight -n "pasted__spotLightShape1" -p "pasted__spotLight1";
	rename -uid "BB3A41F1-4FAD-9719-0DB1-35A38DCBC083";
	setAttr -k off ".v";
	setAttr ".col" 34.457711501239402;
	setAttr ".ca" 38.080228583322587;
	setAttr ".pa" -4.743589749082159;
	setAttr ".ai_exposure" 13;
createNode transform -n "pasted__aiAreaLight1" -p "pasted__Stage_Lighting";
	rename -uid "B84853F8-48A8-2801-B6C6-9F9FFDF57268";
	setAttr ".t" -type "double3" -44.718523189641338 0 38.436662593084733 ;
	setAttr ".s" -type "double3" 4.2450105453016791 29.025771997061593 5.8011513948784392 ;
createNode aiAreaLight -n "pasted__aiAreaLightShape1" -p "pasted__aiAreaLight1";
	rename -uid "60E723A3-4A4F-81CA-A3A5-D5A1D60BCBF7";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr -k off ".v";
	setAttr ".csh" no;
	setAttr ".rcsh" no;
	setAttr ".sc" -type "float3" 1 0.74150991 0.49400002 ;
	setAttr ".ai_exposure" 12;
	setAttr ".ai_volume" 0;
	setAttr ".ai_translator" -type "string" "quad";
	setAttr ".aal" -type "attributeAlias" {"exposure","aiExposure","normalize","aiNormalize"
		} ;
createNode transform -n "pasted__aiAreaLight2" -p "pasted__Stage_Lighting";
	rename -uid "818043B9-4012-9DE2-7AC8-539F4351B537";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 44.391273433326134 0 38.42210985197854 ;
	setAttr ".s" -type "double3" 4.2450105453016791 29.025771997061593 5.8011513948784392 ;
createNode aiAreaLight -n "pasted__aiAreaLightShape2" -p "pasted__aiAreaLight2";
	rename -uid "8C44EBD5-424B-5BB7-D2EE-4B9FC20FED6B";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr -k off ".v";
	setAttr ".csh" no;
	setAttr ".rcsh" no;
	setAttr ".sc" -type "float3" 0.42900002 0.53881288 1 ;
	setAttr ".ai_exposure" 12;
	setAttr ".ai_volume" 0;
	setAttr ".ai_translator" -type "string" "quad";
	setAttr ".aal" -type "attributeAlias" {"exposure","aiExposure","normalize","aiNormalize"
		} ;
createNode transform -n "pasted__aiAreaLight3" -p "pasted__Stage_Lighting";
	rename -uid "45AE3E34-4B58-8B09-48B4-DAA628FA6A4E";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -2.0284085030890893 0 52.098096257156108 ;
	setAttr ".s" -type "double3" 51.204064359138094 29.654000497796453 5.8011513948784392 ;
createNode aiAreaLight -n "pasted__aiAreaLightShape3" -p "pasted__aiAreaLight3";
	rename -uid "6C39E3B3-408B-9BF4-29B3-74A29C3DB79F";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr -k off ".v";
	setAttr ".csh" no;
	setAttr ".rcsh" no;
	setAttr ".sc" -type "float3" 1 0.90785527 0.64700001 ;
	setAttr ".ai_exposure" 12;
	setAttr ".ai_volume" 0;
	setAttr ".ai_translator" -type "string" "quad";
	setAttr ".aal" -type "attributeAlias" {"exposure","aiExposure","normalize","aiNormalize"
		} ;
createNode transform -n "pasted__violin_light" -p "pasted__Stage_Lighting";
	rename -uid "DF3546A5-4004-B9B8-A4D8-2FBA9B379654";
createNode aiAreaLight -n "pasted__violin_lightShape" -p "pasted__violin_light";
	rename -uid "DD26BE71-45F5-9E3A-AC03-609EFE2DF25A";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr -k off ".v";
	setAttr ".csh" no;
	setAttr ".rcsh" no;
	setAttr ".ai_exposure" 9;
	setAttr ".ai_volume" 0;
	setAttr ".ai_translator" -type "string" "quad";
	setAttr ".aal" -type "attributeAlias" {"exposure","aiExposure","normalize","aiNormalize"
		} ;
createNode transform -n "pasted__notenständer_light" -p "pasted__Stage_Lighting";
	rename -uid "026A8B42-422C-472D-3F9A-A18FB693DE7C";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 27.360839894498572 -11.727627361199996 45.633463915420243 ;
	setAttr ".s" -type "double3" 7.9816360633142196 18.661386721255756 10.130052041183975 ;
createNode aiAreaLight -n "pasted__notenständer_lightShape" -p "pasted__notenständer_light";
	rename -uid "912022DB-4D91-96E2-8420-0E96B03321E0";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr -k off ".v";
	setAttr ".csh" no;
	setAttr ".rcsh" no;
	setAttr ".sc" -type "float3" 1 0.81 0.39089999 ;
	setAttr ".ai_exposure" 9;
	setAttr ".ai_volume" 0;
	setAttr ".ai_translator" -type "string" "quad";
	setAttr ".aal" -type "attributeAlias" {"exposure","aiExposure","normalize","aiNormalize"
		} ;
createNode transform -n "pasted__notenständer_light1" -p "pasted__Stage_Lighting";
	rename -uid "FD12D71A-4327-6696-45FB-3A9EC1ADFDE3";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 31.838446242160469 -11.727627361199996 37.472920702659408 ;
	setAttr ".r" -type "double3" 0 50.651751533796592 0 ;
	setAttr ".s" -type "double3" 10.130052041183975 18.661386721255756 10.130052041183975 ;
createNode aiAreaLight -n "pasted__notenständer_light1Shape" -p "pasted__notenständer_light1";
	rename -uid "D12DEB9D-4091-FDC8-6366-67819D5DC848";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr -k off ".v";
	setAttr ".csh" no;
	setAttr ".rcsh" no;
	setAttr ".sc" -type "float3" 0 0.045600001 0.2375 ;
	setAttr ".ai_exposure" 9;
	setAttr ".ai_volume" 0;
	setAttr ".ai_translator" -type "string" "quad";
	setAttr ".aal" -type "attributeAlias" {"exposure","aiExposure","normalize","aiNormalize"
		} ;
createNode transform -n "pasted__aiAreaLight5" -p "pasted__Stage_Lighting";
	rename -uid "7A3FED98-4CEE-7446-C818-109CF76D4ED1";
	setAttr ".t" -type "double3" 44.584984999335781 0 38.436662593084733 ;
	setAttr ".s" -type "double3" 4.2450105453016791 29.025771997061593 5.8011513948784392 ;
createNode aiAreaLight -n "pasted__aiAreaLightShape5" -p "pasted__aiAreaLight5";
	rename -uid "CA6918A7-460C-205B-2A64-B3B54396A0DE";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr -k off ".v";
	setAttr ".csh" no;
	setAttr ".rcsh" no;
	setAttr ".sc" -type "float3" 0 0.045600001 0.2375 ;
	setAttr ".ai_exposure" 12;
	setAttr ".ai_volume" 0;
	setAttr ".ai_translator" -type "string" "quad";
	setAttr ".aal" -type "attributeAlias" {"exposure","aiExposure","normalize","aiNormalize"
		} ;
createNode fosterParent -n "notenblaetterRNfosterParent1";
	rename -uid "8E02397C-4C6C-1569-BDFA-5897AB5EBBDD";
createNode transform -n "blatt_01" -p "notenblaetterRNfosterParent1";
	rename -uid "794BA2A3-4AFA-6BF6-AA0F-86A02197F47A";
	setAttr ".t" -type "double3" 81.143263288769631 -7.9065138326329254e-13 -67.136854342100733 ;
	setAttr ".r" -type "double3" 0 66.513454311542432 0 ;
createNode mesh -n "blatt_Shape1" -p "blatt_01";
	rename -uid "C7F1F97B-4171-B0EC-B054-CEBCD5D2DF19";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:195]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 57 "e[0:2]" "e[4]" "e[6]" "e[8]" "e[10]" "e[12]" "e[14]" "e[16]" "e[18]" "e[20]" "e[22]" "e[41]" "e[43]" "e[62]" "e[64]" "e[83]" "e[85]" "e[104]" "e[115]" "e[125]" "e[127]" "e[146]" "e[148]" "e[167:178]" "e[180]" "e[184]" "e[186]" "e[190]" "e[194]" "e[198]" "e[202]" "e[206]" "e[210]" "e[214]" "e[217:218]" "e[220]" "e[225]" "e[243]" "e[248]" "e[266]" "e[271]" "e[289]" "e[294]" "e[312]" "e[317]" "e[335]" "e[340]" "e[358]" "e[362:364]" "e[367]" "e[370]" "e[373]" "e[376]" "e[379]" "e[382]" "e[385]" "e[388:391]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 5 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[1].gtagnm" -type "string" "front";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[2].gtagnm" -type "string" "left";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[3].gtagnm" -type "string" "right";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[4].gtagnm" -type "string" "rim";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 0;
	setAttr ".pv" -type "double2" 0.60219384578626567 0.5772758424282074 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 278 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.0092220902 0.53721857 0.070346698
		 0.046342671 0.04128021 0.58242965 0.0092878938 0.58248246 0.070346698 0.082620978
		 0.073444158 0.58237779 0.070346698 0.1188941 0.10548815 0.58233738 0.070346698 0.15512872
		 0.13746715 0.58233804 0.070346698 0.19132066 0.16950968 0.58235133 0.070346698 0.22744191
		 0.20165238 0.58237255 0.070346698 0.26365447 0.233556 0.58239293 0.070346698 0.30000484
		 0.2659823 0.58224255 0.070346698 0.3362661 0.29799807 0.58225101 0.023920262 0.52139544
		 0.023920262 0.47025761 0.04136765 0.62771606 0.0093815327 0.62775445 0.073452681
		 0.62766337 0.10549551 0.62763304 0.13751003 0.62762821 0.16955671 0.62764657 0.20163745
		 0.62768805 0.23357674 0.62772912 0.2656984 0.62767255 0.29779348 0.62764329 0.023920262
		 0.41896954 0.041459799 0.67297113 0.0094745755 0.67299312 0.073474318 0.67295998
		 0.10550258 0.67295939 0.13753188 0.67295527 0.16956431 0.67295492 0.20158392 0.67296755
		 0.23356923 0.67298925 0.26557401 0.67303622 0.29759082 0.67312813 0.023920344 0.3676759
		 0.041517019 0.71820319 0.009525001 0.71820521 0.073513329 0.71820903 0.10551745 0.71821785
		 0.13752386 0.71822071 0.16952908 0.71821988 0.20152798 0.71822697 0.23352286 0.71824557
		 0.26551798 0.7182771 0.29751286 0.71832108 0.023920262 0.31649891 0.041480124 0.85391718
		 0.0094870925 0.85389864 0.073472619 0.85393596 0.10546586 0.85395199 0.13745978 0.85396743
		 0.1694532 0.85398197 0.20144624 0.85399491 0.23343906 0.85400754 0.265432 0.85402197
		 0.29742542 0.85403818 0.023920344 0.16289523 0.041430831 0.89914536 0.009436965 0.89910722
		 0.073429793 0.89916539 0.10543355 0.89917904 0.13743758 0.89920247 0.16943887 0.89923078
		 0.20143434 0.8992483 0.23342827 0.89925706 0.26542279 0.89926648 0.29741666 0.89927649
		 0.023920344 0.11169402 0.041344643 0.9443987 0.0093266368 0.94431603 0.073381126
		 0.94448298 0.10539922 0.94452083 0.1374169 0.944525 0.16945365 0.94449782 0.20146081
		 0.94449425 0.23343793 0.94450361 0.26542547 0.94451106 0.29741725 0.94451791 0.023920352
		 0.060492821 0.041263402 0.98968375 0.042621084 0.010126927 0.073346734 0.98982507
		 0.10535669 0.98988527 0.13736215 0.98987114 0.16943201 0.98978764 0.20148703 0.98973858
		 0.23345071 0.98974973 0.26542816 0.98975778 0.29741707 0.98976386 0.063415229 0.010126927
		 0.69417316 0.011116505 0.69409424 0.051463202 0.66555315 0.0514035 0.66564542 0.011052579
		 0.63687366 0.051344611 0.63702255 0.010992482 0.60833973 0.0512954 0.60843223 0.010932423
		 0.57986683 0.051282674 0.5798611 0.010900952 0.55133432 0.051281422 0.55128139 0.010922998
		 0.52265424 0.05128248 0.52268368 0.010914408 0.49413219 0.051274434 0.49413463 0.010911785
		 0.46522418 0.051113836 0.46531734 0.010819145 0.43674877 0.051128618 0.43675533 0.010781355
		 0.40823022 0.051191658 0.40799966 0.010630384 0.69399613 0.091816142 0.66546458 0.091761887
		 0.63685673 0.091688022 0.60831779 0.091638461 0.57980615 0.091620967 0.55126363 0.091633201
		 0.5226509 0.091666028 0.49412236 0.091679171 0.46547589 0.091590568 0.43689689 0.091542497
		 0.40837911 0.091617987 0.69390506 0.13214535 0.66538221 0.13210586 0.63683873 0.13206877
		 0.60829955 0.13204479 0.57976109 0.13202769 0.55121785 0.13202411 0.52266842 0.13203499
		 0.49413434 0.13204187 0.46559682 0.13205683 0.43706289 0.1321142 0.40853706 0.13217887
		 0.693847 0.17245236 0.66532511 0.17243502 0.63680035 0.17242143 0.60827285 0.17241162
		 0.57974392 0.1724007 0.55121535 0.17239103 0.52268833 0.17238963 0.4941633 0.17239566
		 0.46564046 0.17241091 0.43711814 0.17243707 0.40859619 0.17246138 0.69382602 0.29341769
		 0.66530544 0.29342154 0.63678533 0.29342523 0.60826451 0.29342684 0.57974333 0.29342729
		 0.5512225 0.29342583 0.52270204 0.29342398 0.49418172 0.29342231 0.46566138 0.29342231
		 0.43714055 0.2934241 0.40861949 0.29342642 0.69384629 0.33372483 0.66532439 0.33375153
		 0.63680059 0.33376524 0.608275 0.33376858 0.57974833 0.33377406 0.55122262 0.33377215
		 0.52269799 0.33376849 0.49417391 0.3337608 0.46565178 0.33375603 0.43713072 0.33375245
		 0.40860966 0.3337467 0.69390768 0.37403604 0.66536456 0.37410679 0.63681513 0.37418476
		 0.60829061 0.37421229 0.57976717 0.37419865 0.55121702 0.37413946 0.522672 0.37410903
		 0.49415156 0.37409696 0.46563253 0.37408975 0.4371129 0.37408355 0.40859243 0.37407452
		 0.6940127 0.41436359 0.66540688 0.41447952 0.63682014 0.41460666 0.60831004 0.4146525
		 0.57980388 0.41462263 0.55122858 0.41451809 0.5226391 0.41444474 0.49412462 0.41443294
		 0.46561268 0.4144254 0.43709585 0.41441837 0.40857592 0.41440883 0.071206942 0.010126948
		 0.071206942 0.046342671 0.043481968 0.47037789 0.071206942 0.082620978 0.071206942
		 0.1188941 0.071206942 0.15512872 0.071206942 0.19132078 0.071206942 0.22744185 0.071206942
		 0.26365465 0.071206942 0.30000478 0.071206942 0.3362661 0.023060298 0.52139544 0.023060298
		 0.47025761 0.043481968 0.41923556 0.023060298 0.41896954 0.043481968 0.36809719 0.023060212
		 0.3676759 0.043481968 0.31695983 0.023060298 0.31649891 0.043481968 0.16354325 0.023060298
		 0.16289517 0.043481976 0.11240821 0.023060298 0.11169402 0.043481968 0.061272539
		 0.023060309 0.060492821 0.064276628 0.33576673 0.043481879 0.010126927 0.064276628
		 0.29958886 0.064276628 0.26339737 0.064276628 0.22720051 0.064276628 0.19100392 0.064276628
		 0.15482496 0.064276628 0.11865676 0.064276628 0.08248242 0.064276628 0.04630471 0.064276628
		 0.010126927 0.063415326 0.04630471 0.32940945 0.98976696 0.3294102 0.94452178 0.063415229
		 0.08248242 0.063415326 0.11865676 0.063415326 0.15482496 0.063415326 0.19100392 0.063415326
		 0.22720051 0.063415326 0.26339737 0.063415326 0.29958886 0.063415229 0.33576673 0.042621076
		 0.061272539 0.0091742873 0.98954982 0.3294102 0.89928412 0.042621076 0.11240821 0.32941905
		 0.85405529;
	setAttr ".uvst[0].uvsp[250:277]" 0.042621084 0.16354325 0.32950762 0.71836305
		 0.042621084 0.31695983 0.32959494 0.67321891 0.042621084 0.36809719 0.32979795 0.62774295
		 0.042621084 0.41923556 0.33001569 0.58232838 0.042621084 0.47037789 0.33031666 0.53678882
		 0.29802987 0.5369674 0.26590911 0.53699273 0.2335653 0.53709441 0.20163387 0.5370748
		 0.16959044 0.53705519 0.13749495 0.53700769 0.10540545 0.53702825 0.073298424 0.53708899
		 0.041198909 0.53715473 0.070346698 0.010127008 0.064276628 0.37193507 0.063415326
		 0.37193507 0.023060298 0.0092915678 0.023920344 0.0092915678 0.071206942 0.37238401
		 0.070346698 0.37238401 0.043481879 0.52151954 0.042621009 0.52151954;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 198 ".vt";
	setAttr ".vt[0:165]"  11.85436058 0 14.85000038 13.95436096 0.040110379 14.85000038
		 16.054359436 0.20460027 14.85000038 18.15435982 0.29909408 14.85000038 20.2543602 0.29909408 14.85000038
		 22.35436058 0.20460027 14.85000038 24.45436096 0.040110379 14.85000038 26.55435944 0.16669682 14.85000038
		 28.65435982 0.47110924 14.85000038 30.7543602 0.46905133 14.85000038 32.85436249 0.20496771 14.85000038
		 11.85436058 0 11.88000011 13.95436096 0.085310966 11.88000011 16.054359436 0.31718358 11.88000011
		 18.15435982 0.44064599 11.88000011 20.2543602 0.44064599 11.88000011 22.35436058 0.31718358 11.88000011
		 24.45436096 0.085310966 11.88000011 26.55435944 0.14414461 11.88000011 28.65435982 0.50282639 11.88000011
		 30.7543602 0.54659688 11.88000011 32.85436249 0.49386451 11.88000011 11.85436058 0 8.90999985
		 13.95436096 0.058129039 8.90999985 16.054359436 0.22781341 8.90999985 18.15435982 0.31960306 8.90999985
		 20.2543602 0.31960306 8.90999985 22.35436058 0.22781341 8.90999985 24.45436096 0.058129039 8.90999985
		 26.55435944 0.032962274 8.90999985 28.65435982 0.22329757 8.90999985 30.7543602 0.3370955 8.90999985
		 32.85436249 0.3370955 8.90999985 11.85436058 0 5.94000053 13.95436096 0.012312338 5.94000053
		 16.054359436 0.083407998 5.94000053 18.15435982 0.12591468 5.94000053 20.2543602 0.12591468 5.94000053
		 22.35436058 0.083407998 5.94000053 24.45436096 0.012312338 5.94000053 26.55435944 0 5.94000053
		 28.65435982 0 5.94000053 30.7543602 0 5.94000053 32.85436249 0 5.94000053 11.85436058 0 2.97000027
		 13.95436096 0 2.97000027 16.054359436 0 2.97000027 18.15435982 0 2.97000027 20.2543602 0 2.97000027
		 22.35436058 0 2.97000027 24.45436096 0 2.97000027 26.55435944 0 2.97000027 28.65435982 0 2.97000027
		 30.7543602 0 2.97000027 32.85436249 0 2.97000027 11.85436058 0 -5.94000053 13.95436096 0 -5.94000053
		 16.054359436 0 -5.94000053 18.15435982 0 -5.94000053 20.2543602 0 -5.94000053 22.35436058 0 -5.94000053
		 24.45436096 0 -5.94000053 26.55435944 0 -5.94000053 28.65435982 0 -5.94000053 30.7543602 0 -5.94000053
		 32.85436249 0 -5.94000053 11.85436058 0 -8.90999985 13.95436096 0 -8.90999985 16.054359436 0 -8.90999985
		 18.15435982 0 -8.90999985 20.2543602 0 -8.90999985 22.35436058 0 -8.90999985 24.45436096 0 -8.90999985
		 26.55435944 0 -8.90999985 28.65435982 0 -8.90999985 30.7543602 0 -8.90999985 32.85436249 0 -8.90999985
		 11.85436058 0.01289547 -11.87999916 13.95436096 0.095460273 -11.87999916 16.054359436 0.18703645 -11.87999916
		 18.15435982 0.21516587 -11.87999916 20.2543602 0.18703645 -11.87999916 22.35436058 0.095460273 -11.87999916
		 24.45436096 0.01289547 -11.87999916 26.55435944 0 -11.87999916 28.65435982 0 -11.87999916
		 30.7543602 0 -11.87999916 32.85436249 0 -11.87999916 11.85436058 0.053602248 -14.85000038
		 13.95436096 0.22257644 -14.85000038 16.054359436 0.37880221 -14.85000038 18.15435982 0.42355737 -14.85000038
		 20.2543602 0.37880221 -14.85000038 22.35436058 0.22257644 -14.85000038 24.45436096 0.053602248 -14.85000038
		 26.55435944 0 -14.85000038 28.65435982 0 -14.85000038 30.7543602 0 -14.85000038 32.85436249 0 -14.85000038
		 11.85286903 0.049976278 14.85037994 13.95126724 0.089979231 14.85085106 13.95119476 0.13521047 11.88012505
		 11.85276127 0.049973313 11.88007545 16.0507164 0.25442463 14.85172844 16.050708771 0.36704981 11.88017845
		 18.15306473 0.34900939 14.85225773 18.15307236 0.49062911 11.8801775 20.25565529 0.34900939 14.85225773
		 20.25564766 0.49062911 11.8801775 22.35800362 0.25442463 14.85172844 22.35801125 0.36704981 11.88017845
		 24.45560646 0.08996658 14.85075665 24.45607758 0.13528125 11.87984276 26.54935837 0.21636641 14.8501339
		 26.55013084 0.19395453 11.87895775 28.65021324 0.52079791 14.8504982 28.65019798 0.55262756 11.87840939
		 30.75598907 0.51892799 14.85199547 30.75486565 0.59658796 11.87920189 32.85811615 0.25473198 14.85307121
		 32.85655212 0.5436973 11.87999725 13.95181942 0.10805802 8.90920258 11.85308743 0.049980916 8.90969276
		 16.05141449 0.27769431 8.90820313 18.15332031 0.36953098 8.90752506 20.2553997 0.36953098 8.90752506
		 22.35730553 0.27769431 8.90820313 24.45627785 0.10808012 8.90889835 26.55218697 0.08288224 8.90818882
		 28.65136528 0.273081 8.90644455 30.7537117 0.3868992 8.90562153 32.85467529 0.38688666 8.90564251
		 13.95318794 0.062293343 5.93927717 11.85386753 0.049995579 5.93975592 16.052906036 0.1333562 5.93824911
		 18.15383339 0.17584969 5.93750668 20.25488663 0.17584969 5.93750668 22.35581398 0.1333562 5.93824911
		 24.45543671 0.062294494 5.93920803 26.55394173 0.04999293 5.9392705 28.65345573 0.049962468 5.93828726
		 30.7540226 0.049931891 5.93741369 32.85436249 0.04984051 5.937181 13.95411301 0.049998868 2.96977305
		 11.85428715 0.049999841 2.96994853 16.054021835 0.049994744 2.96935868 18.15423393 0.04999043 2.96903038
		 20.25448608 0.04999043 2.96903038 22.35469818 0.049994744 2.96935868 24.45460892 0.049998868 2.96977305
		 26.55439568 0.049999978 2.96997428 28.65435982 0.050000001 2.97000027 30.7543602 0.050000001 2.97000027
		 32.85436249 0.050000001 2.97000027 13.95436096 0.050000001 -5.94000053 11.85436058 0.050000004 -5.94000053
		 16.054359436 0.050000001 -5.94000053 18.15435982 0.050000001 -5.94000053 20.2543602 0.050000001 -5.94000053
		 22.35436058 0.050000001 -5.94000053 24.45436096 0.050000001 -5.94000053 26.55435944 0.050000001 -5.94000053
		 28.65435982 0.050000001 -5.94000053 30.7543602 0.050000001 -5.94000053 32.85436249 0.050000004 -5.94000053
		 13.95384312 0.049990565 -8.90917778;
	setAttr ".vt[166:197]" 11.85386944 0.049991019 -8.90954399 16.054002762 0.049978029 -8.90856075
		 18.15435982 0.049971439 -8.90830994 20.25471687 0.049978029 -8.90856075 22.35487938 0.049990565 -8.90917778
		 24.45464516 0.049998544 -8.90974522 26.55439758 0.049999978 -8.90997314 28.65435982 0.050000001 -8.90999985
		 30.7543602 0.050000001 -8.90999985 32.85436249 0.050000004 -8.90999985 13.95236015 0.14538622 -11.87815571
		 11.85237503 0.062831849 -11.87883854 16.053050995 0.23693232 -11.87705135 18.15435982 0.26505223 -11.87662983
		 20.25566864 0.23693234 -11.87705135 22.35636139 0.14538622 -11.87815571 24.45558929 0.062875561 -11.87930584
		 26.55459595 0.049999312 -11.87988663 28.65435982 0.050000001 -11.87999916 30.7543602 0.050000001 -11.87999916
		 32.85436249 0.050000004 -11.87999916 13.95139599 0.27244264 -14.84795761 11.85137177 0.10349298 -14.84859085
		 16.052455902 0.42866278 -14.846982 18.15435982 0.4734368 -14.84663963 20.25626373 0.42866278 -14.846982
		 22.3573246 0.27244264 -14.84795761 24.45624924 0.10354389 -14.84912395 26.55475426 0.049996279 -14.84982872
		 28.65435982 0.050000004 -14.85000038 30.7543602 0.050000004 -14.85000038 32.85436249 0.050000001 -14.85000038;
	setAttr -s 392 ".ed";
	setAttr ".ed[0:165]"  0 1 0 0 11 0 1 2 0 1 12 1 2 3 0 2 13 1 3 4 0 3 14 1
		 4 5 0 4 15 1 5 6 0 5 16 1 6 7 0 6 17 1 7 8 0 7 18 1 8 9 0 8 19 1 9 10 0 9 20 1 10 21 0
		 11 12 1 11 22 0 12 13 1 12 23 1 13 14 1 13 24 1 14 15 1 14 25 1 15 16 1 15 26 1 16 17 1
		 16 27 1 17 18 1 17 28 1 18 19 1 18 29 1 19 20 1 19 30 1 20 21 1 20 31 1 21 32 0 22 23 1
		 22 33 0 23 24 1 23 34 1 24 25 1 24 35 1 25 26 1 25 36 1 26 27 1 26 37 1 27 28 1 27 38 1
		 28 29 1 28 39 1 29 30 1 29 40 1 30 31 1 30 41 1 31 32 1 31 42 1 32 43 0 33 34 1 33 44 0
		 34 35 1 34 45 1 35 36 1 35 46 1 36 37 1 36 47 1 37 38 1 37 48 1 38 39 1 38 49 1 39 40 1
		 39 50 1 40 41 1 40 51 1 41 42 1 41 52 1 42 43 1 42 53 1 43 54 0 44 45 1 44 55 0 45 46 1
		 45 56 1 46 47 1 46 57 1 47 48 1 47 58 1 48 49 1 48 59 1 49 50 1 49 60 1 50 51 1 50 61 1
		 51 52 1 51 62 1 52 53 1 52 63 1 53 54 1 53 64 1 54 65 0 55 56 1 56 57 1 57 58 1 58 59 1
		 59 60 1 60 61 1 61 62 1 62 63 1 63 64 1 64 65 1 55 66 0 56 67 1 57 68 1 58 69 1 59 70 1
		 60 71 1 61 72 1 62 73 1 63 74 1 64 75 1 65 76 0 66 67 1 66 77 0 67 68 1 67 78 1 68 69 1
		 68 79 1 69 70 1 69 80 1 70 71 1 70 81 1 71 72 1 71 82 1 72 73 1 72 83 1 73 74 1 73 84 1
		 74 75 1 74 85 1 75 76 1 75 86 1 76 87 0 77 78 1 77 88 0 78 79 1 78 89 1 79 80 1 79 90 1
		 80 81 1 80 91 1 81 82 1 81 92 1 82 83 1 82 93 1 83 84 1 83 94 1 84 85 1 84 95 1 85 86 1
		 85 96 1 86 87 1;
	setAttr ".ed[166:331]" 86 97 1 87 98 0 88 89 0 89 90 0 90 91 0 91 92 0 92 93 0
		 93 94 0 94 95 0 95 96 0 96 97 0 97 98 0 0 99 0 1 100 1 99 100 0 100 101 1 11 102 1
		 102 101 1 99 102 0 2 103 1 100 103 0 103 104 1 101 104 1 3 105 1 103 105 0 105 106 1
		 104 106 1 4 107 1 105 107 0 107 108 1 106 108 1 5 109 1 107 109 0 109 110 1 108 110 1
		 6 111 1 109 111 0 111 112 1 110 112 1 7 113 1 111 113 0 113 114 1 112 114 1 8 115 1
		 113 115 0 115 116 1 114 116 1 9 117 1 115 117 0 117 118 1 116 118 1 10 119 0 117 119 0
		 21 120 1 119 120 0 118 120 1 101 121 1 22 122 1 122 121 1 102 122 0 104 123 1 121 123 1
		 106 124 1 123 124 1 108 125 1 124 125 1 110 126 1 125 126 1 112 127 1 126 127 1 114 128 1
		 127 128 1 116 129 1 128 129 1 118 130 1 129 130 1 32 131 1 120 131 0 130 131 1 121 132 1
		 33 133 1 133 132 1 122 133 0 123 134 1 132 134 1 124 135 1 134 135 1 125 136 1 135 136 1
		 126 137 1 136 137 1 127 138 1 137 138 1 128 139 1 138 139 1 129 140 1 139 140 1 130 141 1
		 140 141 1 43 142 1 131 142 0 141 142 1 132 143 1 44 144 1 144 143 1 133 144 0 134 145 1
		 143 145 1 135 146 1 145 146 1 136 147 1 146 147 1 137 148 1 147 148 1 138 149 1 148 149 1
		 139 150 1 149 150 1 140 151 1 150 151 1 141 152 1 151 152 1 54 153 1 142 153 0 152 153 1
		 143 154 1 55 155 1 155 154 1 144 155 0 145 156 1 154 156 1 146 157 1 156 157 1 147 158 1
		 157 158 1 148 159 1 158 159 1 149 160 1 159 160 1 150 161 1 160 161 1 151 162 1 161 162 1
		 152 163 1 162 163 1 65 164 1 153 164 0 163 164 1 154 165 1 66 166 1 166 165 1 155 166 0
		 156 167 1 165 167 1 157 168 1 167 168 1 158 169 1 168 169 1 159 170 1 169 170 1 160 171 1
		 170 171 1 161 172 1 171 172 1 162 173 1 172 173 1;
	setAttr ".ed[332:391]" 163 174 1 173 174 1 76 175 1 164 175 0 174 175 1 165 176 1
		 77 177 1 177 176 1 166 177 0 167 178 1 176 178 1 168 179 1 178 179 1 169 180 1 179 180 1
		 170 181 1 180 181 1 171 182 1 181 182 1 172 183 1 182 183 1 173 184 1 183 184 1 174 185 1
		 184 185 1 87 186 1 175 186 0 185 186 1 89 187 1 176 187 1 88 188 0 188 187 0 177 188 0
		 90 189 1 178 189 1 187 189 0 91 190 1 179 190 1 189 190 0 92 191 1 180 191 1 190 191 0
		 93 192 1 181 192 1 191 192 0 94 193 1 182 193 1 192 193 0 95 194 1 183 194 1 193 194 0
		 96 195 1 184 195 1 194 195 0 97 196 1 185 196 1 195 196 0 98 197 0 186 197 0 196 197 0;
	setAttr -s 196 -ch 784 ".fc[0:195]" -type "polyFaces" 
		f 4 180 181 -184 -185
		mu 0 4 0 268 2 3
		f 4 186 187 -189 -182
		mu 0 4 268 267 5 2
		f 4 190 191 -193 -188
		mu 0 4 267 266 7 5
		f 4 194 195 -197 -192
		mu 0 4 266 265 9 7
		f 4 198 199 -201 -196
		mu 0 4 265 264 11 9
		f 4 202 203 -205 -200
		mu 0 4 264 263 13 11
		f 4 206 207 -209 -204
		mu 0 4 263 262 15 13
		f 4 210 211 -213 -208
		mu 0 4 262 261 17 15
		f 4 214 215 -217 -212
		mu 0 4 261 260 19 17
		f 4 218 220 -222 -216
		mu 0 4 260 259 257 19
		f 4 183 222 -225 -226
		mu 0 4 3 2 22 23
		f 4 188 226 -228 -223
		mu 0 4 2 5 24 22
		f 4 192 228 -230 -227
		mu 0 4 5 7 25 24
		f 4 196 230 -232 -229
		mu 0 4 7 9 26 25
		f 4 200 232 -234 -231
		mu 0 4 9 11 27 26
		f 4 204 234 -236 -233
		mu 0 4 11 13 28 27
		f 4 208 236 -238 -235
		mu 0 4 13 15 29 28
		f 4 212 238 -240 -237
		mu 0 4 15 17 30 29
		f 4 216 240 -242 -239
		mu 0 4 17 19 31 30
		f 4 221 243 -245 -241
		mu 0 4 19 257 255 31
		f 4 224 245 -248 -249
		mu 0 4 23 22 33 34
		f 4 227 249 -251 -246
		mu 0 4 22 24 35 33
		f 4 229 251 -253 -250
		mu 0 4 24 25 36 35
		f 4 231 253 -255 -252
		mu 0 4 25 26 37 36
		f 4 233 255 -257 -254
		mu 0 4 26 27 38 37
		f 4 235 257 -259 -256
		mu 0 4 27 28 39 38
		f 4 237 259 -261 -258
		mu 0 4 28 29 40 39
		f 4 239 261 -263 -260
		mu 0 4 29 30 41 40
		f 4 241 263 -265 -262
		mu 0 4 30 31 42 41
		f 4 244 266 -268 -264
		mu 0 4 31 255 253 42
		f 4 247 268 -271 -272
		mu 0 4 34 33 44 45
		f 4 250 272 -274 -269
		mu 0 4 33 35 46 44
		f 4 252 274 -276 -273
		mu 0 4 35 36 47 46
		f 4 254 276 -278 -275
		mu 0 4 36 37 48 47
		f 4 256 278 -280 -277
		mu 0 4 37 38 49 48
		f 4 258 280 -282 -279
		mu 0 4 38 39 50 49
		f 4 260 282 -284 -281
		mu 0 4 39 40 51 50
		f 4 262 284 -286 -283
		mu 0 4 40 41 52 51
		f 4 264 286 -288 -285
		mu 0 4 41 42 53 52
		f 4 267 289 -291 -287
		mu 0 4 42 253 251 53
		f 4 270 291 -294 -295
		mu 0 4 45 44 55 56
		f 4 273 295 -297 -292
		mu 0 4 44 46 57 55
		f 4 275 297 -299 -296
		mu 0 4 46 47 58 57
		f 4 277 299 -301 -298
		mu 0 4 47 48 59 58
		f 4 279 301 -303 -300
		mu 0 4 48 49 60 59
		f 4 281 303 -305 -302
		mu 0 4 49 50 61 60
		f 4 283 305 -307 -304
		mu 0 4 50 51 62 61
		f 4 285 307 -309 -306
		mu 0 4 51 52 63 62
		f 4 287 309 -311 -308
		mu 0 4 52 53 64 63
		f 4 290 312 -314 -310
		mu 0 4 53 251 249 64
		f 4 293 314 -317 -318
		mu 0 4 56 55 66 67
		f 4 296 318 -320 -315
		mu 0 4 55 57 68 66
		f 4 298 320 -322 -319
		mu 0 4 57 58 69 68
		f 4 300 322 -324 -321
		mu 0 4 58 59 70 69
		f 4 302 324 -326 -323
		mu 0 4 59 60 71 70
		f 4 304 326 -328 -325
		mu 0 4 60 61 72 71
		f 4 306 328 -330 -327
		mu 0 4 61 62 73 72
		f 4 308 330 -332 -329
		mu 0 4 62 63 74 73
		f 4 310 332 -334 -331
		mu 0 4 63 64 75 74
		f 4 313 335 -337 -333
		mu 0 4 64 249 247 75
		f 4 316 337 -340 -341
		mu 0 4 67 66 77 78
		f 4 319 341 -343 -338
		mu 0 4 66 68 79 77
		f 4 321 343 -345 -342
		mu 0 4 68 69 80 79
		f 4 323 345 -347 -344
		mu 0 4 69 70 81 80
		f 4 325 347 -349 -346
		mu 0 4 70 71 82 81
		f 4 327 349 -351 -348
		mu 0 4 71 72 83 82
		f 4 329 351 -353 -350
		mu 0 4 72 73 84 83
		f 4 331 353 -355 -352
		mu 0 4 73 74 85 84
		f 4 333 355 -357 -354
		mu 0 4 74 75 86 85
		f 4 336 358 -360 -356
		mu 0 4 75 247 236 86
		f 4 339 361 -364 -365
		mu 0 4 78 77 88 246
		f 4 342 366 -368 -362
		mu 0 4 77 79 90 88
		f 4 344 369 -371 -367
		mu 0 4 79 80 91 90
		f 4 346 372 -374 -370
		mu 0 4 80 81 92 91
		f 4 348 375 -377 -373
		mu 0 4 81 82 93 92
		f 4 350 378 -380 -376
		mu 0 4 82 83 94 93
		f 4 352 381 -383 -379
		mu 0 4 83 84 95 94
		f 4 354 384 -386 -382
		mu 0 4 84 85 96 95
		f 4 356 387 -389 -385
		mu 0 4 85 86 97 96
		f 4 359 390 -392 -388
		mu 0 4 86 236 235 97
		f 4 1 21 -4 -1
		mu 0 4 99 100 101 102
		f 4 3 23 -6 -3
		mu 0 4 102 101 103 104
		f 4 5 25 -8 -5
		mu 0 4 104 103 105 106
		f 4 7 27 -10 -7
		mu 0 4 106 105 107 108
		f 4 9 29 -12 -9
		mu 0 4 108 107 109 110
		f 4 11 31 -14 -11
		mu 0 4 110 109 111 112
		f 4 13 33 -16 -13
		mu 0 4 112 111 113 114
		f 4 15 35 -18 -15
		mu 0 4 114 113 115 116
		f 4 17 37 -20 -17
		mu 0 4 116 115 117 118
		f 4 19 39 -21 -19
		mu 0 4 118 117 119 120
		f 4 22 42 -25 -22
		mu 0 4 100 121 122 101
		f 4 24 44 -27 -24
		mu 0 4 101 122 123 103
		f 4 26 46 -29 -26
		mu 0 4 103 123 124 105
		f 4 28 48 -31 -28
		mu 0 4 105 124 125 107
		f 4 30 50 -33 -30
		mu 0 4 107 125 126 109
		f 4 32 52 -35 -32
		mu 0 4 109 126 127 111
		f 4 34 54 -37 -34
		mu 0 4 111 127 128 113
		f 4 36 56 -39 -36
		mu 0 4 113 128 129 115
		f 4 38 58 -41 -38
		mu 0 4 115 129 130 117
		f 4 40 60 -42 -40
		mu 0 4 117 130 131 119
		f 4 43 63 -46 -43
		mu 0 4 121 132 133 122
		f 4 45 65 -48 -45
		mu 0 4 122 133 134 123
		f 4 47 67 -50 -47
		mu 0 4 123 134 135 124
		f 4 49 69 -52 -49
		mu 0 4 124 135 136 125
		f 4 51 71 -54 -51
		mu 0 4 125 136 137 126
		f 4 53 73 -56 -53
		mu 0 4 126 137 138 127
		f 4 55 75 -58 -55
		mu 0 4 127 138 139 128
		f 4 57 77 -60 -57
		mu 0 4 128 139 140 129
		f 4 59 79 -62 -59
		mu 0 4 129 140 141 130
		f 4 61 81 -63 -61
		mu 0 4 130 141 142 131
		f 4 64 84 -67 -64
		mu 0 4 132 143 144 133
		f 4 66 86 -69 -66
		mu 0 4 133 144 145 134
		f 4 68 88 -71 -68
		mu 0 4 134 145 146 135
		f 4 70 90 -73 -70
		mu 0 4 135 146 147 136
		f 4 72 92 -75 -72
		mu 0 4 136 147 148 137
		f 4 74 94 -77 -74
		mu 0 4 137 148 149 138
		f 4 76 96 -79 -76
		mu 0 4 138 149 150 139
		f 4 78 98 -81 -78
		mu 0 4 139 150 151 140
		f 4 80 100 -83 -80
		mu 0 4 140 151 152 141
		f 4 82 102 -84 -82
		mu 0 4 141 152 153 142
		f 4 85 105 -88 -85
		mu 0 4 143 154 155 144
		f 4 87 106 -90 -87
		mu 0 4 144 155 156 145
		f 4 89 107 -92 -89
		mu 0 4 145 156 157 146
		f 4 91 108 -94 -91
		mu 0 4 146 157 158 147
		f 4 93 109 -96 -93
		mu 0 4 147 158 159 148
		f 4 95 110 -98 -95
		mu 0 4 148 159 160 149
		f 4 97 111 -100 -97
		mu 0 4 149 160 161 150
		f 4 99 112 -102 -99
		mu 0 4 150 161 162 151
		f 4 101 113 -104 -101
		mu 0 4 151 162 163 152
		f 4 103 114 -105 -103
		mu 0 4 152 163 164 153
		f 4 115 126 -117 -106
		mu 0 4 154 165 166 155
		f 4 116 128 -118 -107
		mu 0 4 155 166 167 156
		f 4 117 130 -119 -108
		mu 0 4 156 167 168 157
		f 4 118 132 -120 -109
		mu 0 4 157 168 169 158
		f 4 119 134 -121 -110
		mu 0 4 158 169 170 159
		f 4 120 136 -122 -111
		mu 0 4 159 170 171 160
		f 4 121 138 -123 -112
		mu 0 4 160 171 172 161
		f 4 122 140 -124 -113
		mu 0 4 161 172 173 162
		f 4 123 142 -125 -114
		mu 0 4 162 173 174 163
		f 4 124 144 -126 -115
		mu 0 4 163 174 175 164
		f 4 127 147 -130 -127
		mu 0 4 165 176 177 166
		f 4 129 149 -132 -129
		mu 0 4 166 177 178 167
		f 4 131 151 -134 -131
		mu 0 4 167 178 179 168
		f 4 133 153 -136 -133
		mu 0 4 168 179 180 169
		f 4 135 155 -138 -135
		mu 0 4 169 180 181 170
		f 4 137 157 -140 -137
		mu 0 4 170 181 182 171
		f 4 139 159 -142 -139
		mu 0 4 171 182 183 172
		f 4 141 161 -144 -141
		mu 0 4 172 183 184 173
		f 4 143 163 -146 -143
		mu 0 4 173 184 185 174
		f 4 145 165 -147 -145
		mu 0 4 174 185 186 175
		f 4 148 168 -151 -148
		mu 0 4 176 187 188 177
		f 4 150 169 -153 -150
		mu 0 4 177 188 189 178
		f 4 152 170 -155 -152
		mu 0 4 178 189 190 179
		f 4 154 171 -157 -154
		mu 0 4 179 190 191 180
		f 4 156 172 -159 -156
		mu 0 4 180 191 192 181
		f 4 158 173 -161 -158
		mu 0 4 181 192 193 182
		f 4 160 174 -163 -160
		mu 0 4 182 193 194 183
		f 4 162 175 -165 -162
		mu 0 4 183 194 195 184
		f 4 164 176 -167 -164
		mu 0 4 184 195 196 185
		f 4 166 177 -168 -166
		mu 0 4 185 196 197 186
		f 4 0 179 -181 -179
		mu 0 4 198 199 1 269
		f 4 -2 178 184 -183
		mu 0 4 200 276 277 258
		f 4 2 185 -187 -180
		mu 0 4 199 201 4 1
		f 4 4 189 -191 -186
		mu 0 4 201 202 6 4
		f 4 6 193 -195 -190
		mu 0 4 202 203 8 6
		f 4 8 197 -199 -194
		mu 0 4 203 204 10 8
		f 4 10 201 -203 -198
		mu 0 4 204 205 12 10
		f 4 12 205 -207 -202
		mu 0 4 205 206 14 12
		f 4 14 209 -211 -206
		mu 0 4 206 207 16 14
		f 4 16 213 -215 -210
		mu 0 4 207 208 18 16
		f 4 18 217 -219 -214
		mu 0 4 208 274 275 18
		f 4 20 219 -221 -218
		mu 0 4 209 210 21 20
		f 4 -23 182 225 -224
		mu 0 4 211 200 258 256
		f 4 41 242 -244 -220
		mu 0 4 210 212 32 21
		f 4 -44 223 248 -247
		mu 0 4 213 211 256 254
		f 4 62 265 -267 -243
		mu 0 4 212 214 43 32
		f 4 -65 246 271 -270
		mu 0 4 215 213 254 252
		f 4 83 288 -290 -266
		mu 0 4 214 216 54 43
		f 4 -86 269 294 -293
		mu 0 4 217 215 252 250
		f 4 104 311 -313 -289
		mu 0 4 216 218 65 54
		f 4 -116 292 317 -316
		mu 0 4 219 217 250 248
		f 4 125 334 -336 -312
		mu 0 4 218 220 76 65
		f 4 -128 315 340 -339
		mu 0 4 221 219 248 245
		f 4 146 357 -359 -335
		mu 0 4 220 222 87 76
		f 4 -169 362 363 -361
		mu 0 4 223 270 271 244
		f 4 -149 338 364 -363
		mu 0 4 224 221 245 89
		f 4 -170 360 367 -366
		mu 0 4 225 223 244 243
		f 4 -171 365 370 -369
		mu 0 4 226 225 243 242
		f 4 -172 368 373 -372
		mu 0 4 227 226 242 241
		f 4 -173 371 376 -375
		mu 0 4 228 227 241 240
		f 4 -174 374 379 -378
		mu 0 4 229 228 240 239
		f 4 -175 377 382 -381
		mu 0 4 230 229 239 238
		f 4 -176 380 385 -384
		mu 0 4 231 230 238 237
		f 4 -177 383 388 -387
		mu 0 4 232 231 237 234
		f 4 167 389 -391 -358
		mu 0 4 222 272 273 87
		f 4 -178 386 391 -390
		mu 0 4 233 232 234 98;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 76 
		0 1.8 
		1 1.8 
		2 1.8 
		4 1.8 
		6 1.8 
		8 1.8 
		10 1.8 
		12 1.8 
		14 1.8 
		16 1.8 
		18 1.8 
		20 1.8 
		22 1.8 
		41 1.8 
		43 1.8 
		62 1.8 
		64 1.8 
		83 1.8 
		85 1.8 
		104 1.8 
		115 1.8 
		125 1.8 
		127 1.8 
		146 1.8 
		148 1.8 
		167 1.8 
		168 1.8 
		169 1.8 
		170 1.8 
		171 1.8 
		172 1.8 
		173 1.8 
		174 1.8 
		175 1.8 
		176 1.8 
		177 1.8 
		178 1.8 
		180 1.8 
		184 1.8 
		186 1.8 
		190 1.8 
		194 1.8 
		198 1.8 
		202 1.8 
		206 1.8 
		210 1.8 
		214 1.8 
		217 1.8 
		218 1.8 
		220 1.8 
		225 1.8 
		243 1.8 
		248 1.8 
		266 1.8 
		271 1.8 
		289 1.8 
		294 1.8 
		312 1.8 
		317 1.8 
		335 1.8 
		340 1.8 
		358 1.8 
		362 1.8 
		363 1.8 
		364 1.8 
		367 1.8 
		370 1.8 
		373 1.8 
		376 1.8 
		379 1.8 
		382 1.8 
		385 1.8 
		388 1.8 
		389 1.8 
		390 1.8 
		391 1.8 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "blatt_02" -p "notenblaetterRNfosterParent1";
	rename -uid "DC19EB0A-40D5-660E-D082-03A97E77A236";
	setAttr ".t" -type "double3" 114.9714085370441 -4.7439082995797552e-13 -54.112878736073284 ;
	setAttr ".r" -type "double3" 0 -46.59143949015602 0 ;
createNode mesh -n "blatt_Shape2" -p "blatt_02";
	rename -uid "32375689-45DA-A93A-D8E6-AA821C90B1B2";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:197]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 58 "e[0:2]" "e[4]" "e[6]" "e[8]" "e[10]" "e[12]" "e[14]" "e[16]" "e[18]" "e[20]" "e[37]" "e[39]" "e[56]" "e[58]" "e[75]" "e[77]" "e[94]" "e[96]" "e[113]" "e[123]" "e[132]" "e[134]" "e[151]" "e[153]" "e[170:180]" "e[182]" "e[186]" "e[188]" "e[192]" "e[196]" "e[200]" "e[204]" "e[208]" "e[212]" "e[215:216]" "e[218]" "e[223]" "e[239]" "e[244]" "e[260]" "e[265]" "e[281]" "e[286]" "e[302]" "e[307]" "e[323]" "e[328]" "e[344]" "e[349]" "e[365]" "e[369:371]" "e[374]" "e[377]" "e[380]" "e[383]" "e[386]" "e[389]" "e[392:395]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 5 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[1].gtagnm" -type "string" "front";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[2].gtagnm" -type "string" "left";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[3].gtagnm" -type "string" "right";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[4].gtagnm" -type "string" "rim";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 0;
	setAttr ".pv" -type "double2" 0.55014559641500882 0.21250989196910364 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 280 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.67111874 0.53721398 0.091140941
		 0.046285748 0.70310235 0.58245528 0.67111391 0.58245862 0.091140948 0.082443655 0.73510373
		 0.58245718 0.091140948 0.11860554 0.76711285 0.58246291 0.091140948 0.15477446 0.799124
		 0.58247387 0.091140948 0.19093989 0.83112431 0.58247477 0.091140933 0.22709638 0.86310959
		 0.58246696 0.091140941 0.26325512 0.89510036 0.58245963 0.091140941 0.29941624 0.92709506
		 0.5824542 0.028758392 0.010126963 0.028758302 0.061269298 0.70310104 0.62770218 0.67110354
		 0.62769824 0.73511517 0.62771672 0.76712304 0.62772048 0.79914296 0.62772596 0.831128
		 0.62772071 0.86311245 0.62771237 0.89510524 0.62770528 0.92710304 0.62770057 0.028758317
		 0.11241217 0.70313096 0.67297035 0.67113161 0.67297328 0.73513591 0.672975 0.76715279
		 0.6729852 0.79914802 0.67298019 0.83112848 0.67296815 0.86311662 0.67295963 0.89511144
		 0.67295426 0.92711103 0.67295069 0.028758302 0.16355868 0.703152 0.7182368 0.6711545
		 0.71824449 0.73515767 0.71823829 0.76716125 0.71823716 0.79914618 0.71822643 0.83113229
		 0.71821856 0.86312526 0.71821296 0.89512122 0.71820772 0.9271192 0.71820223 0.028758302
		 0.21470453 0.70317012 0.76350021 0.67117488 0.76350904 0.73516679 0.76348948 0.76715994
		 0.76348042 0.79915041 0.76347381 0.83114052 0.76346952 0.86313373 0.76346534 0.89512974
		 0.76345968 0.92712653 0.76345217 0.028758228 0.2658464 0.7031858 0.85396373 0.67119253
		 0.85396713 0.73517936 0.85396159 0.76717317 0.8539601 0.7991668 0.85395694 0.83115995
		 0.85395193 0.86315364 0.85394526 0.89514846 0.85393691 0.92714369 0.85392708 0.028758302
		 0.36812198 0.7031877 0.89922047 0.67119396 0.89922059 0.73518455 0.89922303 0.76718146
		 0.89923161 0.79917479 0.89923358 0.83116794 0.89922774 0.86316133 0.89921522 0.89515817
		 0.89919835 0.92715675 0.89918435 0.028758317 0.41928157 0.70318532 0.9445976 0.67119014
		 0.94459713 0.73518687 0.94459307 0.76719451 0.9445622 0.79918635 0.94454366 0.83117437
		 0.94453722 0.86316627 0.94454449 0.89517379 0.94456893 0.92717469 0.94456363 0.028758317
		 0.47048497 0.70319057 0.9898845 0.036550589 0.52165753 0.73520303 0.98986578 0.7672292
		 0.9898296 0.79920638 0.98980999 0.83117008 0.98980463 0.8631475 0.98981482 0.89517522
		 0.98984408 0.92718709 0.98985153 0.08507055 0.37176326 0.98886663 0.011086166 0.98887378
		 0.051422447 0.96035284 0.051427513 0.96034592 0.011091262 0.93182379 0.051437438
		 0.93182534 0.011096209 0.90329903 0.051442862 0.90329844 0.011105299 0.87477297 0.051449358
		 0.87477487 0.011107415 0.8462441 0.05145362 0.84624475 0.01111576 0.8177225 0.051454663
		 0.81772053 0.011118561 0.78920132 0.051455081 0.78920037 0.011118889 0.76068038 0.0514552
		 0.76068002 0.011118889 0.70363891 0.051455408 0.70363861 0.011119127 0.98888367 0.091760367
		 0.96035689 0.091768116 0.93182445 0.091781408 0.90330774 0.0917826 0.87476635 0.091789454
		 0.84624249 0.091791332 0.8177225 0.091791451 0.78920138 0.091791987 0.7606805 0.091792703
		 0.70363796 0.09179166 0.98886651 0.13211676 0.96034342 0.13211462 0.93182367 0.1321151
		 0.90329129 0.13212511 0.87476295 0.1321297 0.8462432 0.13212922 0.81772262 0.13212907
		 0.78920126 0.13212943 0.76068074 0.13212988 0.70363736 0.13212839 0.98885876 0.17245519
		 0.96033794 0.17245209 0.93181401 0.17245889 0.90328443 0.17246765 0.87476367 0.17246783
		 0.84624308 0.17246732 0.81772095 0.17246693 0.7892006 0.17246595 0.76068097 0.17246494
		 0.7036379 0.17246473 0.98884934 0.21280903 0.96032816 0.21280634 0.9318065 0.21280462
		 0.90328497 0.21280533 0.87476391 0.21280569 0.84624332 0.21280566 0.81772214 0.21280485
		 0.7892012 0.21280342 0.76068038 0.21280193 0.70363826 0.21279997 0.98884624 0.29347396
		 0.96032554 0.29347557 0.9318046 0.29347813 0.90328366 0.29348093 0.87476248 0.2934826
		 0.84624141 0.29348251 0.81772012 0.29348078 0.78919864 0.29347751 0.76067716 0.29347372
		 0.70363492 0.29346746 0.98885137 0.33384097 0.96033055 0.33384585 0.93180829 0.33385122
		 0.90328616 0.33385676 0.87476337 0.33386016 0.8462404 0.33385971 0.81771743 0.33385688
		 0.78919441 0.3338511 0.76067126 0.33384526 0.7036286 0.33383673 0.98886317 0.37428868
		 0.9603433 0.37429374 0.93182397 0.37429041 0.90329248 0.37425566 0.87476414 0.37423837
		 0.84623843 0.37423772 0.81771022 0.37425503 0.78917921 0.37428999 0.76066005 0.37429506
		 0.70361984 0.37428671 0.98886961 0.41464692 0.96034867 0.41465068 0.93182307 0.41463435
		 0.9032746 0.41459322 0.87475562 0.41457695 0.84624702 0.41457736 0.81772798 0.41459614
		 0.78917909 0.41463494 0.76065433 0.41465247 0.70361334 0.41464466 0.092001833 0.010126963
		 0.092001833 0.046285704 0.035689689 0.061268881 0.092001833 0.082443655 0.09200184
		 0.11860554 0.092001833 0.15477446 0.092001833 0.19093989 0.092001833 0.22709638 0.092001833
		 0.26325506 0.092001833 0.29941624 0.029619217 0.010126993 0.029619217 0.061269298
		 0.035689689 0.11240703 0.029619306 0.11241214 0.035689693 0.16357429 0.029619128
		 0.16355868 0.035689689 0.21472903 0.029619202 0.21470453 0.035689689 0.26584813 0.029619217
		 0.2658464 0.035689689 0.3681193 0.029619128 0.36812198 0.035689689 0.41927847 0.029619217
		 0.41928145 0.035689689 0.4704802 0.029619217 0.47048497 0.084209554 0.04629308 0.035689689
		 0.52165753 0.084209643 0.082464576 0.084209554 0.11862981 0.084209554 0.15478525
		 0.084209554 0.19094014 0.084209561 0.2270959 0.084209643 0.26326174 0.084209561 0.29943338
		 0.084209576 0.37176326 0.085070528 0.29943338 0.99117744 0.9898302 0.99116254 0.94454229
		 0.085070536 0.26326174 0.085070536 0.2270959 0.085070543 0.19094014 0.085070536 0.15478525
		 0.085070543 0.11862981 0.085070543 0.082464576 0.085070536 0.04629308 0.036550585
		 0.4704802 0.67119247 0.98988527 0.99114501 0.89916384 0.036550585 0.41927847;
	setAttr ".uvst[0].uvsp[250:279]" 0.99113154 0.85390902 0.036550585 0.3681193
		 0.99111581 0.76343852 0.036550585 0.26584813 0.99111164 0.71819139 0.036550581 0.21472903
		 0.99110472 0.67293954 0.036550585 0.16357429 0.99109411 0.62768984 0.036550581 0.11240703
		 0.99108267 0.58244455 0.036550585 0.061268836 0.99107456 0.53719914 0.92708826 0.53720921
		 0.89509535 0.53721434 0.86310709 0.53722119 0.83111936 0.53722787 0.79910994 0.53722382
		 0.76709819 0.53721768 0.73509532 0.53720802 0.70310783 0.53721154 0.091140948 0.010126963
		 0.035689689 0.010126993 0.036550589 0.010126963 0.029619306 0.52166289 0.028758392
		 0.52166289 0.084209561 0.010126948 0.085070536 0.010126948 0.092001855 0.37173858
		 0.091140941 0.37173858;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 200 ".vt";
	setAttr ".vt[0:165]"  -10.5 0.013443071 14.85000038 -8.39999962 0.013443071 14.85000038
		 -6.30000019 0.013443071 14.85000038 -4.20000029 0.059508793 14.85000038 -2.10000038 0.097728513 14.85000038
		 0 0.03767018 14.85000038 2.099999428 0 14.85000038 4.19999886 0 14.85000038 6.29999924 0 14.85000038
		 10.5 0 14.85000038 -10.5 0.013443071 11.88000011 -8.39999962 0.013443071 11.88000011
		 -6.30000019 0.059508793 11.88000011 -4.20000029 0.075758293 11.88000011 -2.10000038 0.053025901 11.88000011
		 0 0.0090625901 11.88000011 2.099999428 0 11.88000011 4.19999886 0 11.88000011 6.29999924 0 11.88000011
		 10.5 0 11.88000011 -10.5 0.013443071 8.90999985 -8.39999962 0.059508793 8.90999985
		 -6.30000019 0.12549047 8.90999985 -4.20000029 0.12424383 8.90999985 -2.10000038 0.03767018 8.90999985
		 0 0 8.90999985 2.099999428 0.0025796588 8.90999985 4.19999886 0.017475469 8.90999985
		 6.29999924 0.026381392 8.90999985 10.5 0.0025796588 8.90999985 -10.5 0.096495457 5.94000053
		 -8.39999962 0.12549047 5.94000053 -6.30000019 0.12424383 5.94000053 -4.20000029 0.061393093 5.94000053
		 -2.10000038 0.0090625901 5.94000053 0 0.0025796588 5.94000053 2.099999428 0.017475469 5.94000053
		 4.19999886 0.037747558 5.94000053 6.29999924 0.051903754 5.94000053 10.5 0.01072277 5.94000053
		 -10.5 0.092680462 2.97000027 -8.39999962 0.092680462 2.97000027 -6.30000019 0.061393093 2.97000027
		 -4.20000029 0.0090625901 2.97000027 -2.10000038 0 2.97000027 0 0.01072277 2.97000027
		 2.099999428 0.037747558 2.97000027 4.19999886 0.051903754 2.97000027 6.29999924 0.051903754 2.97000027
		 10.5 0.01072277 2.97000027 -10.5 0 0 -8.39999962 0 0 -6.30000019 0 0 -4.20000029 0 0
		 -2.10000038 0 0 0 0.0025796588 0 2.099999428 0.017475469 0 4.19999886 0.026381392 0
		 6.29999924 0.026381392 0 10.5 0.0025796588 0 -10.5 -1.4901161e-08 -5.94000053 -8.39999962 -1.4901161e-08 -5.94000053
		 -6.30000019 -1.4901161e-08 -5.94000053 -4.20000029 -1.4901161e-08 -5.94000053 -2.10000038 -1.4901161e-08 -5.94000053
		 0 -1.4901161e-08 -5.94000053 2.099999428 -1.4901161e-08 -5.94000053 4.19999886 -1.4901161e-08 -5.94000053
		 6.29999924 -1.4901161e-08 -5.94000053 10.5 -1.4901161e-08 -5.94000053 -10.5 0.12729797 -8.90999985
		 -8.39999962 0.12729797 -8.90999985 -6.30000019 0.12729797 -8.90999985 -4.20000029 0.12729797 -8.90999985
		 -2.10000038 0.12729797 -8.90999985 0 0.12729797 -8.90999985 2.099999428 0.12729797 -8.90999985
		 4.19999886 0.12729797 -8.90999985 6.29999924 0.12729797 -8.90999985 10.5 0.12729797 -8.90999985
		 -10.5 0.35211387 -11.87999916 -8.39999962 0.35211387 -11.87999916 -6.30000019 0.3425642 -11.87999916
		 -4.20000029 0.28734422 -11.87999916 -2.10000038 0.25432259 -11.87999916 0 0.25432259 -11.87999916
		 2.099999428 0.28734422 -11.87999916 4.19999886 0.3425642 -11.87999916 6.29999924 0.35211387 -11.87999916
		 10.5 0.35211387 -11.87999916 -10.5 0.45046666 -14.85000038 -8.39999962 0.45046666 -14.85000038
		 -6.30000019 0.41068581 -14.85000038 -4.20000029 0.3104254 -14.85000038 -2.10000038 0.25790679 -14.85000038
		 0 0.25790679 -14.85000038 2.099999428 0.3104254 -14.85000038 4.19999886 0.41068581 -14.85000038
		 6.29999924 0.45046666 -14.85000038 10.5 0.45046666 -14.85000038 -10.5 0.063443072 14.85000038
		 -8.40027332 0.063440815 14.85019398 -8.40060711 0.063437536 11.88042927 -10.5002737 0.063440815 11.88019371
		 -6.30064535 0.063436687 14.85045624 -6.30070066 0.10949892 11.88070488 -4.20046329 0.10950421 14.85014248
		 -4.19995117 0.12575682 11.88038158 -2.099473715 0.14771849 14.84957218 -2.099168777 0.10301861 11.87980461
		 0.00089709018 0.087658778 14.84957218 0.00071076787 0.059056759 11.87972069 2.10027766 0.049998164 14.84988022
		 2.10011339 0.049999859 11.87996864 4.19999886 0.050000001 14.85000038 4.19992781 0.04999977 11.88013458
		 6.29999924 0.050000001 14.85000038 6.3000083 0.049999762 11.88015366 10.5 0.050000001 14.85000038
		 10.50007057 0.049999602 11.88012218 -8.40088558 0.10949481 8.91078186 -10.50072002 0.063428961 8.91082001
		 -6.30038023 0.17548674 8.91047764 -4.19911575 0.174236 8.90998363 -2.098887682 0.087657273 8.90977097
		 0.00034160257 0.049998764 8.90991688 2.099817753 0.052579135 8.91013908 4.19975471 0.067473941 8.91030502
		 6.30003643 0.07638035 8.91032028 10.50026417 0.052578114 8.91026402 -8.40040493 0.17548853 5.94017172
		 -10.50061893 0.14648253 5.94047356 -6.29956245 0.17423995 5.93955851 -4.19887114 0.11137546 5.93930197
		 -2.099285841 0.059056051 5.9396224 -5.7985337e-05 0.052579612 5.94004059 2.099615574 0.067473412 5.94024372
		 4.19968081 0.087745801 5.94027328 6.30010796 0.10190325 5.94019747 10.50043869 0.060720421 5.94014215
		 -8.39989567 0.14267051 2.96900797 -10.50017262 0.14266722 2.96906614 -6.29931164 0.11137997 2.96908426
		 -4.19929218 0.059054673 2.96946144 -2.099843025 0.049999472 2.9698329 -0.00030172835 0.060721856 2.96998119
		 2.099578857 0.087745786 2.96997643 4.19978571 0.1019032 2.9698987 6.30017614 0.10190322 2.96985173
		 10.50043869 0.060720421 2.96985865 -8.39990616 0.049994815 -0.00071406818 -10.5 0.049987838 -0.00077975902
		 -6.29975128 0.049997151 -0.00047238776 -4.19981766 0.049999382 -0.00016731875 -2.10002065 0.049999982 -3.8921546e-05
		 -0.00021635706 0.05257909 -0.00010074496 2.09973526 0.067474268 -0.00022340531 4.19990349 0.076380372 -0.0003054413
		 6.30013132 0.076380521 -0.00026424587 10.50026417 0.052578337 -0.00020262778 -8.39999962 0.049988519 -5.93892956
		 -10.5 0.049977057 -5.93893003 -6.30000019 0.049988519 -5.93892956 -4.20000029 0.049988519 -5.93892956
		 -2.10000801 0.049988575 -5.93893242 -5.2022522e-05 0.049988996 -5.9389534;
	setAttr ".vt[166:199]" 2.099928617 0.049989864 -5.93899679 4.19997215 0.049990587 -5.9390316
		 6.30003452 0.04999027 -5.93901587 10.50007057 0.049976882 -5.93899107 -8.39997101 0.17721157 -8.90706158
		 -10.5 0.17720373 -8.90704155 -6.29980803 0.17722011 -8.90721703 -4.19973803 0.17723662 -8.90753746
		 -2.099902153 0.17724909 -8.90779209 -9.8161923e-05 0.17724909 -8.90779209 2.099737167 0.17723662 -8.90753746
		 4.19980669 0.17722011 -8.90721703 6.2999711 0.17721157 -8.90706158 10.5 0.17720373 -8.90704155
		 -8.39982414 0.40204427 -11.87736797 -10.5 0.40202886 -11.87728405 -6.29919815 0.39250693 -11.87774467
		 -4.19902086 0.33730769 -11.87835884 -2.099647522 0.30430672 -11.8787899 -0.00035278552 0.30430672 -11.8787899
		 2.099020004 0.33730772 -11.87835884 4.19919682 0.39250693 -11.87774467 6.29982424 0.40204427 -11.87736797
		 10.5 0.40202886 -11.87728405 -8.39970589 0.50044143 -14.8484726 -10.5 0.50043929 -14.8483448
		 -6.29878187 0.46065423 -14.84891701 -4.19856644 0.3603999 -14.84950447 -2.099491358 0.30790132 -14.84985733
		 -0.00050905754 0.30790132 -14.84985733 2.098565578 0.3603999 -14.84950447 4.19878054 0.46065423 -14.84891701
		 6.29970551 0.50044143 -14.8484726 10.5 0.50043929 -14.8483448;
	setAttr -s 396 ".ed";
	setAttr ".ed[0:165]"  0 1 0 0 10 0 1 2 0 1 11 1 2 3 0 2 12 1 3 4 0 3 13 1
		 4 5 0 4 14 1 5 6 0 5 15 1 6 7 0 6 16 1 7 8 0 7 17 1 8 9 0 8 18 1 9 19 0 10 11 1 10 20 0
		 11 12 1 11 21 1 12 13 1 12 22 1 13 14 1 13 23 1 14 15 1 14 24 1 15 16 1 15 25 1 16 17 1
		 16 26 1 17 18 1 17 27 1 18 19 1 18 28 1 19 29 0 20 21 1 20 30 0 21 22 1 21 31 1 22 23 1
		 22 32 1 23 24 1 23 33 1 24 25 1 24 34 1 25 26 1 25 35 1 26 27 1 26 36 1 27 28 1 27 37 1
		 28 29 1 28 38 1 29 39 0 30 31 1 30 40 0 31 32 1 31 41 1 32 33 1 32 42 1 33 34 1 33 43 1
		 34 35 1 34 44 1 35 36 1 35 45 1 36 37 1 36 46 1 37 38 1 37 47 1 38 39 1 38 48 1 39 49 0
		 40 41 1 40 50 0 41 42 1 41 51 1 42 43 1 42 52 1 43 44 1 43 53 1 44 45 1 44 54 1 45 46 1
		 45 55 1 46 47 1 46 56 1 47 48 1 47 57 1 48 49 1 48 58 1 49 59 0 50 51 1 50 60 0 51 52 1
		 51 61 1 52 53 1 52 62 1 53 54 1 53 63 1 54 55 1 54 64 1 55 56 1 55 65 1 56 57 1 56 66 1
		 57 58 1 57 67 1 58 59 1 58 68 1 59 69 0 60 61 1 61 62 1 62 63 1 63 64 1 64 65 1 65 66 1
		 66 67 1 67 68 1 68 69 1 60 70 0 61 71 1 62 72 1 63 73 1 64 74 1 65 75 1 66 76 1 67 77 1
		 68 78 1 69 79 0 70 71 1 70 80 0 71 72 1 71 81 1 72 73 1 72 82 1 73 74 1 73 83 1 74 75 1
		 74 84 1 75 76 1 75 85 1 76 77 1 76 86 1 77 78 1 77 87 1 78 79 1 78 88 1 79 89 0 80 81 1
		 80 90 0 81 82 1 81 91 1 82 83 1 82 92 1 83 84 1 83 93 1 84 85 1 84 94 1 85 86 1 85 95 1
		 86 87 1 86 96 1;
	setAttr ".ed[166:331]" 87 88 1 87 97 1 88 89 1 88 98 1 89 99 0 90 91 0 91 92 0
		 92 93 0 93 94 0 94 95 0 95 96 0 96 97 0 97 98 0 98 99 0 0 100 0 1 101 1 100 101 0
		 101 102 1 10 103 1 103 102 1 100 103 0 2 104 1 101 104 0 104 105 1 102 105 1 3 106 1
		 104 106 0 106 107 1 105 107 1 4 108 1 106 108 0 108 109 1 107 109 1 5 110 1 108 110 0
		 110 111 1 109 111 1 6 112 1 110 112 0 112 113 1 111 113 1 7 114 1 112 114 0 114 115 1
		 113 115 1 8 116 1 114 116 0 116 117 1 115 117 1 9 118 0 116 118 0 19 119 1 118 119 0
		 117 119 1 102 120 1 20 121 1 121 120 1 103 121 0 105 122 1 120 122 1 107 123 1 122 123 1
		 109 124 1 123 124 1 111 125 1 124 125 1 113 126 1 125 126 1 115 127 1 126 127 1 117 128 1
		 127 128 1 29 129 1 119 129 0 128 129 1 120 130 1 30 131 1 131 130 1 121 131 0 122 132 1
		 130 132 1 123 133 1 132 133 1 124 134 1 133 134 1 125 135 1 134 135 1 126 136 1 135 136 1
		 127 137 1 136 137 1 128 138 1 137 138 1 39 139 1 129 139 0 138 139 1 130 140 1 40 141 1
		 141 140 1 131 141 0 132 142 1 140 142 1 133 143 1 142 143 1 134 144 1 143 144 1 135 145 1
		 144 145 1 136 146 1 145 146 1 137 147 1 146 147 1 138 148 1 147 148 1 49 149 1 139 149 0
		 148 149 1 140 150 1 50 151 1 151 150 1 141 151 0 142 152 1 150 152 1 143 153 1 152 153 1
		 144 154 1 153 154 1 145 155 1 154 155 1 146 156 1 155 156 1 147 157 1 156 157 1 148 158 1
		 157 158 1 59 159 1 149 159 0 158 159 1 150 160 1 60 161 1 161 160 1 151 161 0 152 162 1
		 160 162 1 153 163 1 162 163 1 154 164 1 163 164 1 155 165 1 164 165 1 156 166 1 165 166 1
		 157 167 1 166 167 1 158 168 1 167 168 1 69 169 1 159 169 0 168 169 1 160 170 1 70 171 1
		 171 170 1 161 171 0 162 172 1 170 172 1 163 173 1;
	setAttr ".ed[332:395]" 172 173 1 164 174 1 173 174 1 165 175 1 174 175 1 166 176 1
		 175 176 1 167 177 1 176 177 1 168 178 1 177 178 1 79 179 1 169 179 0 178 179 1 170 180 1
		 80 181 1 181 180 1 171 181 0 172 182 1 180 182 1 173 183 1 182 183 1 174 184 1 183 184 1
		 175 185 1 184 185 1 176 186 1 185 186 1 177 187 1 186 187 1 178 188 1 187 188 1 89 189 1
		 179 189 0 188 189 1 91 190 1 180 190 1 90 191 0 191 190 0 181 191 0 92 192 1 182 192 1
		 190 192 0 93 193 1 183 193 1 192 193 0 94 194 1 184 194 1 193 194 0 95 195 1 185 195 1
		 194 195 0 96 196 1 186 196 1 195 196 0 97 197 1 187 197 1 196 197 0 98 198 1 188 198 1
		 197 198 0 99 199 0 189 199 0 198 199 0;
	setAttr -s 198 -ch 792 ".fc[0:197]" -type "polyFaces" 
		f 4 182 183 -186 -187
		mu 0 4 0 270 2 3
		f 4 188 189 -191 -184
		mu 0 4 270 269 5 2
		f 4 192 193 -195 -190
		mu 0 4 269 268 7 5
		f 4 196 197 -199 -194
		mu 0 4 268 267 9 7
		f 4 200 201 -203 -198
		mu 0 4 267 266 11 9
		f 4 204 205 -207 -202
		mu 0 4 266 265 13 11
		f 4 208 209 -211 -206
		mu 0 4 265 264 15 13
		f 4 212 213 -215 -210
		mu 0 4 264 263 17 15
		f 4 216 218 -220 -214
		mu 0 4 263 262 260 17
		f 4 185 220 -223 -224
		mu 0 4 3 2 20 21
		f 4 190 224 -226 -221
		mu 0 4 2 5 22 20
		f 4 194 226 -228 -225
		mu 0 4 5 7 23 22
		f 4 198 228 -230 -227
		mu 0 4 7 9 24 23
		f 4 202 230 -232 -229
		mu 0 4 9 11 25 24
		f 4 206 232 -234 -231
		mu 0 4 11 13 26 25
		f 4 210 234 -236 -233
		mu 0 4 13 15 27 26
		f 4 214 236 -238 -235
		mu 0 4 15 17 28 27
		f 4 219 239 -241 -237
		mu 0 4 17 260 258 28
		f 4 222 241 -244 -245
		mu 0 4 21 20 30 31
		f 4 225 245 -247 -242
		mu 0 4 20 22 32 30
		f 4 227 247 -249 -246
		mu 0 4 22 23 33 32
		f 4 229 249 -251 -248
		mu 0 4 23 24 34 33
		f 4 231 251 -253 -250
		mu 0 4 24 25 35 34
		f 4 233 253 -255 -252
		mu 0 4 25 26 36 35
		f 4 235 255 -257 -254
		mu 0 4 26 27 37 36
		f 4 237 257 -259 -256
		mu 0 4 27 28 38 37
		f 4 240 260 -262 -258
		mu 0 4 28 258 256 38
		f 4 243 262 -265 -266
		mu 0 4 31 30 40 41
		f 4 246 266 -268 -263
		mu 0 4 30 32 42 40
		f 4 248 268 -270 -267
		mu 0 4 32 33 43 42
		f 4 250 270 -272 -269
		mu 0 4 33 34 44 43
		f 4 252 272 -274 -271
		mu 0 4 34 35 45 44
		f 4 254 274 -276 -273
		mu 0 4 35 36 46 45
		f 4 256 276 -278 -275
		mu 0 4 36 37 47 46
		f 4 258 278 -280 -277
		mu 0 4 37 38 48 47
		f 4 261 281 -283 -279
		mu 0 4 38 256 254 48
		f 4 264 283 -286 -287
		mu 0 4 41 40 50 51
		f 4 267 287 -289 -284
		mu 0 4 40 42 52 50
		f 4 269 289 -291 -288
		mu 0 4 42 43 53 52
		f 4 271 291 -293 -290
		mu 0 4 43 44 54 53
		f 4 273 293 -295 -292
		mu 0 4 44 45 55 54
		f 4 275 295 -297 -294
		mu 0 4 45 46 56 55
		f 4 277 297 -299 -296
		mu 0 4 46 47 57 56
		f 4 279 299 -301 -298
		mu 0 4 47 48 58 57
		f 4 282 302 -304 -300
		mu 0 4 48 254 252 58
		f 4 285 304 -307 -308
		mu 0 4 51 50 60 61
		f 4 288 308 -310 -305
		mu 0 4 50 52 62 60
		f 4 290 310 -312 -309
		mu 0 4 52 53 63 62
		f 4 292 312 -314 -311
		mu 0 4 53 54 64 63
		f 4 294 314 -316 -313
		mu 0 4 54 55 65 64
		f 4 296 316 -318 -315
		mu 0 4 55 56 66 65
		f 4 298 318 -320 -317
		mu 0 4 56 57 67 66
		f 4 300 320 -322 -319
		mu 0 4 57 58 68 67
		f 4 303 323 -325 -321
		mu 0 4 58 252 250 68
		f 4 306 325 -328 -329
		mu 0 4 61 60 70 71
		f 4 309 329 -331 -326
		mu 0 4 60 62 72 70
		f 4 311 331 -333 -330
		mu 0 4 62 63 73 72
		f 4 313 333 -335 -332
		mu 0 4 63 64 74 73
		f 4 315 335 -337 -334
		mu 0 4 64 65 75 74
		f 4 317 337 -339 -336
		mu 0 4 65 66 76 75
		f 4 319 339 -341 -338
		mu 0 4 66 67 77 76
		f 4 321 341 -343 -340
		mu 0 4 67 68 78 77
		f 4 324 344 -346 -342
		mu 0 4 68 250 248 78
		f 4 327 346 -349 -350
		mu 0 4 71 70 80 81
		f 4 330 350 -352 -347
		mu 0 4 70 72 82 80
		f 4 332 352 -354 -351
		mu 0 4 72 73 83 82
		f 4 334 354 -356 -353
		mu 0 4 73 74 84 83
		f 4 336 356 -358 -355
		mu 0 4 74 75 85 84
		f 4 338 358 -360 -357
		mu 0 4 75 76 86 85
		f 4 340 360 -362 -359
		mu 0 4 76 77 87 86
		f 4 342 362 -364 -361
		mu 0 4 77 78 88 87
		f 4 345 365 -367 -363
		mu 0 4 78 248 238 88
		f 4 348 368 -371 -372
		mu 0 4 81 80 90 247
		f 4 351 373 -375 -369
		mu 0 4 80 82 92 90
		f 4 353 376 -378 -374
		mu 0 4 82 83 93 92
		f 4 355 379 -381 -377
		mu 0 4 83 84 94 93
		f 4 357 382 -384 -380
		mu 0 4 84 85 95 94
		f 4 359 385 -387 -383
		mu 0 4 85 86 96 95
		f 4 361 388 -390 -386
		mu 0 4 86 87 97 96
		f 4 363 391 -393 -389
		mu 0 4 87 88 98 97
		f 4 366 394 -396 -392
		mu 0 4 88 238 237 98
		f 4 1 19 -4 -1
		mu 0 4 100 101 102 103
		f 4 3 21 -6 -3
		mu 0 4 103 102 104 105
		f 4 5 23 -8 -5
		mu 0 4 105 104 106 107
		f 4 7 25 -10 -7
		mu 0 4 107 106 108 109
		f 4 9 27 -12 -9
		mu 0 4 109 108 110 111
		f 4 11 29 -14 -11
		mu 0 4 111 110 112 113
		f 4 13 31 -16 -13
		mu 0 4 113 112 114 115
		f 4 15 33 -18 -15
		mu 0 4 115 114 116 117
		f 4 17 35 -19 -17
		mu 0 4 117 116 118 119
		f 4 20 38 -23 -20
		mu 0 4 101 120 121 102
		f 4 22 40 -25 -22
		mu 0 4 102 121 122 104
		f 4 24 42 -27 -24
		mu 0 4 104 122 123 106
		f 4 26 44 -29 -26
		mu 0 4 106 123 124 108
		f 4 28 46 -31 -28
		mu 0 4 108 124 125 110
		f 4 30 48 -33 -30
		mu 0 4 110 125 126 112
		f 4 32 50 -35 -32
		mu 0 4 112 126 127 114
		f 4 34 52 -37 -34
		mu 0 4 114 127 128 116
		f 4 36 54 -38 -36
		mu 0 4 116 128 129 118
		f 4 39 57 -42 -39
		mu 0 4 120 130 131 121
		f 4 41 59 -44 -41
		mu 0 4 121 131 132 122
		f 4 43 61 -46 -43
		mu 0 4 122 132 133 123
		f 4 45 63 -48 -45
		mu 0 4 123 133 134 124
		f 4 47 65 -50 -47
		mu 0 4 124 134 135 125
		f 4 49 67 -52 -49
		mu 0 4 125 135 136 126
		f 4 51 69 -54 -51
		mu 0 4 126 136 137 127
		f 4 53 71 -56 -53
		mu 0 4 127 137 138 128
		f 4 55 73 -57 -55
		mu 0 4 128 138 139 129
		f 4 58 76 -61 -58
		mu 0 4 130 140 141 131
		f 4 60 78 -63 -60
		mu 0 4 131 141 142 132
		f 4 62 80 -65 -62
		mu 0 4 132 142 143 133
		f 4 64 82 -67 -64
		mu 0 4 133 143 144 134
		f 4 66 84 -69 -66
		mu 0 4 134 144 145 135
		f 4 68 86 -71 -68
		mu 0 4 135 145 146 136
		f 4 70 88 -73 -70
		mu 0 4 136 146 147 137
		f 4 72 90 -75 -72
		mu 0 4 137 147 148 138
		f 4 74 92 -76 -74
		mu 0 4 138 148 149 139
		f 4 77 95 -80 -77
		mu 0 4 140 150 151 141
		f 4 79 97 -82 -79
		mu 0 4 141 151 152 142
		f 4 81 99 -84 -81
		mu 0 4 142 152 153 143
		f 4 83 101 -86 -83
		mu 0 4 143 153 154 144
		f 4 85 103 -88 -85
		mu 0 4 144 154 155 145
		f 4 87 105 -90 -87
		mu 0 4 145 155 156 146
		f 4 89 107 -92 -89
		mu 0 4 146 156 157 147
		f 4 91 109 -94 -91
		mu 0 4 147 157 158 148
		f 4 93 111 -95 -93
		mu 0 4 148 158 159 149
		f 4 96 114 -99 -96
		mu 0 4 150 160 161 151
		f 4 98 115 -101 -98
		mu 0 4 151 161 162 152
		f 4 100 116 -103 -100
		mu 0 4 152 162 163 153
		f 4 102 117 -105 -102
		mu 0 4 153 163 164 154
		f 4 104 118 -107 -104
		mu 0 4 154 164 165 155
		f 4 106 119 -109 -106
		mu 0 4 155 165 166 156
		f 4 108 120 -111 -108
		mu 0 4 156 166 167 157
		f 4 110 121 -113 -110
		mu 0 4 157 167 168 158
		f 4 112 122 -114 -112
		mu 0 4 158 168 169 159
		f 4 123 133 -125 -115
		mu 0 4 160 170 171 161
		f 4 124 135 -126 -116
		mu 0 4 161 171 172 162
		f 4 125 137 -127 -117
		mu 0 4 162 172 173 163
		f 4 126 139 -128 -118
		mu 0 4 163 173 174 164
		f 4 127 141 -129 -119
		mu 0 4 164 174 175 165
		f 4 128 143 -130 -120
		mu 0 4 165 175 176 166
		f 4 129 145 -131 -121
		mu 0 4 166 176 177 167
		f 4 130 147 -132 -122
		mu 0 4 167 177 178 168
		f 4 131 149 -133 -123
		mu 0 4 168 178 179 169
		f 4 134 152 -137 -134
		mu 0 4 170 180 181 171
		f 4 136 154 -139 -136
		mu 0 4 171 181 182 172
		f 4 138 156 -141 -138
		mu 0 4 172 182 183 173
		f 4 140 158 -143 -140
		mu 0 4 173 183 184 174
		f 4 142 160 -145 -142
		mu 0 4 174 184 185 175
		f 4 144 162 -147 -144
		mu 0 4 175 185 186 176
		f 4 146 164 -149 -146
		mu 0 4 176 186 187 177
		f 4 148 166 -151 -148
		mu 0 4 177 187 188 178
		f 4 150 168 -152 -150
		mu 0 4 178 188 189 179
		f 4 153 171 -156 -153
		mu 0 4 180 190 191 181
		f 4 155 172 -158 -155
		mu 0 4 181 191 192 182
		f 4 157 173 -160 -157
		mu 0 4 182 192 193 183
		f 4 159 174 -162 -159
		mu 0 4 183 193 194 184
		f 4 161 175 -164 -161
		mu 0 4 184 194 195 185
		f 4 163 176 -166 -163
		mu 0 4 185 195 196 186
		f 4 165 177 -168 -165
		mu 0 4 186 196 197 187
		f 4 167 178 -170 -167
		mu 0 4 187 197 198 188
		f 4 169 179 -171 -169
		mu 0 4 188 198 199 189
		f 4 0 181 -183 -181
		mu 0 4 200 201 1 271
		f 4 -2 180 186 -185
		mu 0 4 202 272 273 261
		f 4 2 187 -189 -182
		mu 0 4 201 203 4 1
		f 4 4 191 -193 -188
		mu 0 4 203 204 6 4
		f 4 6 195 -197 -192
		mu 0 4 204 205 8 6
		f 4 8 199 -201 -196
		mu 0 4 205 206 10 8
		f 4 10 203 -205 -200
		mu 0 4 206 207 12 10
		f 4 12 207 -209 -204
		mu 0 4 207 208 14 12
		f 4 14 211 -213 -208
		mu 0 4 208 209 16 14
		f 4 16 215 -217 -212
		mu 0 4 209 278 279 16
		f 4 18 217 -219 -216
		mu 0 4 210 211 19 18
		f 4 -21 184 223 -222
		mu 0 4 212 202 261 259
		f 4 37 238 -240 -218
		mu 0 4 211 213 29 19
		f 4 -40 221 244 -243
		mu 0 4 214 212 259 257
		f 4 56 259 -261 -239
		mu 0 4 213 215 39 29
		f 4 -59 242 265 -264
		mu 0 4 216 214 257 255
		f 4 75 280 -282 -260
		mu 0 4 215 217 49 39
		f 4 -78 263 286 -285
		mu 0 4 218 216 255 253
		f 4 94 301 -303 -281
		mu 0 4 217 219 59 49
		f 4 -97 284 307 -306
		mu 0 4 220 218 253 251
		f 4 113 322 -324 -302
		mu 0 4 219 221 69 59
		f 4 -124 305 328 -327
		mu 0 4 222 220 251 249
		f 4 132 343 -345 -323
		mu 0 4 221 223 79 69
		f 4 -135 326 349 -348
		mu 0 4 224 222 249 246
		f 4 151 364 -366 -344
		mu 0 4 223 225 89 79
		f 4 -172 369 370 -368
		mu 0 4 226 276 277 245
		f 4 -154 347 371 -370
		mu 0 4 227 224 246 91
		f 4 -173 367 374 -373
		mu 0 4 228 226 245 244
		f 4 -174 372 377 -376
		mu 0 4 229 228 244 243
		f 4 -175 375 380 -379
		mu 0 4 230 229 243 242
		f 4 -176 378 383 -382
		mu 0 4 231 230 242 241
		f 4 -177 381 386 -385
		mu 0 4 232 231 241 240
		f 4 -178 384 389 -388
		mu 0 4 233 232 240 239
		f 4 -179 387 392 -391
		mu 0 4 234 233 239 236
		f 4 170 393 -395 -365
		mu 0 4 225 274 275 89
		f 4 -180 390 395 -394
		mu 0 4 235 234 236 99;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 76 
		0 1.8 
		1 1.8 
		2 1.8 
		4 1.8 
		6 1.8 
		8 1.8 
		10 1.8 
		12 1.8 
		14 1.8 
		16 1.8 
		18 1.8 
		20 1.8 
		37 1.8 
		39 1.8 
		56 1.8 
		58 1.8 
		75 1.8 
		77 1.8 
		94 1.8 
		96 1.8 
		113 1.8 
		123 1.8 
		132 1.8 
		134 1.8 
		151 1.8 
		153 1.8 
		170 1.8 
		171 1.8 
		172 1.8 
		173 1.8 
		174 1.8 
		175 1.8 
		176 1.8 
		177 1.8 
		178 1.8 
		179 1.8 
		180 1.8 
		182 1.8 
		186 1.8 
		188 1.8 
		192 1.8 
		196 1.8 
		200 1.8 
		204 1.8 
		208 1.8 
		212 1.8 
		215 1.8 
		216 1.8 
		218 1.8 
		223 1.8 
		239 1.8 
		244 1.8 
		260 1.8 
		265 1.8 
		281 1.8 
		286 1.8 
		302 1.8 
		307 1.8 
		323 1.8 
		328 1.8 
		344 1.8 
		349 1.8 
		365 1.8 
		369 1.8 
		370 1.8 
		371 1.8 
		374 1.8 
		377 1.8 
		380 1.8 
		383 1.8 
		386 1.8 
		389 1.8 
		392 1.8 
		393 1.8 
		394 1.8 
		395 1.8 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "blatt_03" -p "notenblaetterRNfosterParent1";
	rename -uid "244005FD-4D50-DC0A-90FB-CF8A50F10863";
	setAttr ".t" -type "double3" 85.645000218850839 -3.0044752564005113e-13 -51.732578651332233 ;
	setAttr ".r" -type "double3" 0 0.66150661696457902 0 ;
createNode mesh -n "blatt_Shape3" -p "blatt_03";
	rename -uid "10421F06-4CD2-7C3E-ACA9-C28B14369E56";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:197]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 58 "e[0:2]" "e[4]" "e[6]" "e[8]" "e[10]" "e[12]" "e[14]" "e[16]" "e[18]" "e[20]" "e[37]" "e[39]" "e[56]" "e[58]" "e[75]" "e[77]" "e[94]" "e[96]" "e[113]" "e[123]" "e[132]" "e[134]" "e[151]" "e[153]" "e[170:180]" "e[182]" "e[186]" "e[188]" "e[192]" "e[196]" "e[200]" "e[204]" "e[208]" "e[212]" "e[215:216]" "e[218]" "e[223]" "e[239]" "e[244]" "e[260]" "e[265]" "e[281]" "e[286]" "e[302]" "e[307]" "e[323]" "e[328]" "e[344]" "e[349]" "e[365]" "e[369:371]" "e[374]" "e[377]" "e[380]" "e[383]" "e[386]" "e[389]" "e[392:395]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 5 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 9 "e[171]" "e[172]" "e[173]" "e[174]" "e[175]" "e[176]" "e[177]" "e[178]" "e[179]";
	setAttr ".gtag[1].gtagnm" -type "string" "front";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 9 "e[0]" "e[2]" "e[4]" "e[6]" "e[8]" "e[10]" "e[12]" "e[14]" "e[16]";
	setAttr ".gtag[2].gtagnm" -type "string" "left";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 9 "e[1]" "e[20]" "e[39]" "e[58]" "e[77]" "e[96]" "e[123]" "e[134]" "e[153]";
	setAttr ".gtag[3].gtagnm" -type "string" "right";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 9 "e[18]" "e[37]" "e[56]" "e[75]" "e[94]" "e[113]" "e[132]" "e[151]" "e[170]";
	setAttr ".gtag[4].gtagnm" -type "string" "rim";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 36 "e[0]" "e[1]" "e[2]" "e[4]" "e[6]" "e[8]" "e[10]" "e[12]" "e[14]" "e[16]" "e[18]" "e[20]" "e[37]" "e[39]" "e[56]" "e[58]" "e[75]" "e[77]" "e[94]" "e[96]" "e[113]" "e[123]" "e[132]" "e[134]" "e[151]" "e[153]" "e[170]" "e[171]" "e[172]" "e[173]" "e[174]" "e[175]" "e[176]" "e[177]" "e[178]" "e[179]";
	setAttr ".pv" -type "double2" 0.090235679294108473 0.26320325188921989 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 280 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.33819827 0.53668946 0.3702558
		 0.58190733 0.3382346 0.58196962 0.40234807 0.58184946 0.43442884 0.58178419 0.49844125
		 0.58178556 0.53041923 0.58179021 0.56240553 0.58177722 0.59439522 0.58175737 0.62638623
		 0.58173621 0.37026623 0.627249 0.33818915 0.62740046 0.40232268 0.6271286 0.43436632
		 0.62707722 0.49845484 0.62703705 0.53043991 0.62703907 0.56242365 0.62702668 0.59441435
		 0.62700397 0.62640673 0.62697828 0.37031767 0.67251331 0.33824813 0.67263919 0.40237942
		 0.67239529 0.43438444 0.67234439 0.4984493 0.67232352 0.53046578 0.67230535 0.56244981
		 0.67228055 0.59444231 0.67225003 0.62643695 0.67221558 0.37039599 0.7178036 0.33838207
		 0.7178812 0.40243748 0.71770614 0.43445721 0.71764743 0.49849781 0.71761763 0.53049546
		 0.71757531 0.56248069 0.71753341 0.59447843 0.71748674 0.62648731 0.71743065 0.3705087
		 0.76305252 0.33851707 0.76309913 0.40251002 0.76301366 0.4345248 0.76296926 0.49852893
		 0.7628814 0.53051746 0.76283348 0.56250185 0.76278675 0.5945276 0.76274657 0.62657619
		 0.76271361 0.3705841 0.80827945 0.3385908 0.80831242 0.40257707 0.80824471 0.43457142
		 0.80820602 0.49856344 0.80813026 0.53054929 0.80809712 0.56254852 0.80807847 0.59464312
		 0.80807126 0.62668437 0.808034 0.37066492 0.89874345 0.33866608 0.89873278 0.40265968
		 0.89874262 0.43465087 0.89870864 0.49865553 0.89863849 0.53065985 0.89861465 0.56265044
		 0.8986131 0.59465218 0.89862972 0.62667054 0.89864451 0.37068287 0.94405848 0.33865607
		 0.94409657 0.40275213 0.94398743 0.43471059 0.94396365 0.4986994 0.94389808 0.53069955
		 0.94387555 0.56269252 0.94386721 0.59466749 0.94386441 0.62666965 0.9438647 0.37057731
		 0.98942775 0.40281984 0.98924434 0.43478581 0.98921913 0.49874094 0.98916137 0.53073478
		 0.98913693 0.56270903 0.9891187 0.59467179 0.98910904 0.62669224 0.9891243 0.36857525
		 0.050845593 0.33999184 0.050851673 0.31138173 0.050798327 0.25429508 0.050775141
		 0.22577408 0.050769746 0.19725543 0.050756484 0.16873714 0.050738186 0.14021814 0.050718516
		 0.36850175 0.091255933 0.33995715 0.091199487 0.31141827 0.091163129 0.25428519 0.091119409
		 0.22575763 0.091110706 0.19723773 0.091095507 0.16871786 0.09107402 0.14019793 0.091050327
		 0.36844614 0.13161531 0.33988401 0.1315276 0.31138793 0.13149771 0.25429234 0.13147837
		 0.22573796 0.13146102 0.19721329 0.13143903 0.16869125 0.13141119 0.14016971 0.13137892
		 0.36839095 0.17199293 0.33983716 0.17190212 0.3113167 0.17185321 0.25423923 0.17183945
		 0.22570434 0.17181545 0.1971783 0.17178592 0.16865116 0.17175028 0.14012209 0.17170417
		 0.36831012 0.21234369 0.33978364 0.2123026 0.31125197 0.21226445 0.2541962 0.21219695
		 0.22566953 0.21216726 0.19714049 0.2121374 0.16858751 0.21211249 0.14003769 0.21209124
		 0.36825195 0.25267228 0.33973119 0.25263968 0.31120858 0.25260714 0.25416157 0.25254583
		 0.2256389 0.25252125 0.19709331 0.25251019 0.16847575 0.25248784 0.13994229 0.25245824
		 0.36818996 0.33334157 0.33966526 0.33331636 0.31114104 0.33328858 0.2540898 0.33323589
		 0.2255635 0.333215 0.19703719 0.33320773 0.16850874 0.33320317 0.13997608 0.33322126
		 0.36823937 0.37376827 0.33963171 0.37366009 0.31110612 0.37362981 0.25405809 0.37357557
		 0.22554204 0.37355706 0.19701639 0.3735497 0.16849867 0.37354827 0.13996741 0.37355995
		 0.65870166 0.98912942 0.65867364 0.94386554 0.11141124 0.41392231 0.33814567 0.98988527
		 0.39726678 0.41465247 0.65867949 0.89864725 0.65871561 0.80802226 0.65859628 0.76263535
		 0.65849149 0.7173785 0.65843034 0.67218232 0.65839922 0.62695569 0.6583786 0.58171809
		 0.6583569 0.5364731 0.62636453 0.53649056 0.11171889 0.010367274 0.59437472 0.53651059
		 0.5623883 0.53652984 0.53040618 0.53654373 0.49843213 0.53654152 0.43449947 0.53646475
		 0.40245572 0.53652704 0.37023368 0.53663915 0.39713213 0.010542601 0.13994032 0.4139123
		 0.16848984 0.41388857 0.19700369 0.41388857 0.2255151 0.4138979 0.25402531 0.41391653
		 0.31104669 0.41396999 0.3395842 0.41401112 0.36835471 0.41421813 0.11144158 0.37356895
		 0.39679411 0.37381929 0.11145005 0.33323139 0.39670852 0.33333841 0.11140752 0.25245109
		 0.39677307 0.25270256 0.1115092 0.21202272 0.39683166 0.21238908 0.1115962 0.1716572
		 0.3969321 0.17206696 0.11164886 0.13134754 0.39703146 0.13172767 0.111678 0.091028839
		 0.39708605 0.091383129 0.11169827 0.050701171 0.39709291 0.050885946 0.14023861 0.010383874
		 0.16875598 0.010402828 0.1972698 0.010420322 0.22578016 0.010432631 0.25428745 0.010433882
		 0.31130829 0.010409445 0.33990112 0.010458261 0.36860338 0.010522068 0.016128916
		 0.060560696 0.016128916 0.0092626596 0.016988635 0.0092626596 0.016988635 0.060560696
		 0.016128916 0.11184842 0.016988637 0.11184842 0.016128918 0.16311903 0.016988637
		 0.16311903 0.016128918 0.21439777 0.016988637 0.2143978 0.016128918 0.26567319 0.016988637
		 0.26567319 0.016128918 0.31695122 0.016988637 0.31695122 0.016128918 0.41949677 0.016988637
		 0.41949677 0.016128916 0.47075355 0.016988635 0.47075349 0.016128918 0.52202803 0.016988637
		 0.52202809 0.049552552 0.52166998 0.049552552 0.4705143 0.05041302 0.4705143 0.05041302
		 0.52166998 0.049552552 0.41935879 0.05041302 0.41935879 0.049552552 0.36820352 0.05041302
		 0.36820352 0.049552552 0.31705955 0.05041302 0.31705955 0.049552627 0.26591614 0.05041302
		 0.26591614 0.049552552 0.21473731 0.05041302 0.21473731 0.049552552 0.1124183 0.05041302
		 0.1124183 0.049552552 0.061280854 0.05041302 0.061280854 0.049552552 0.010126926
		 0.05041302 0.010126927 0.077278182 0.37180582 0.077278182 0.33561879 0.07813932 0.33561879
		 0.07813932 0.37180582 0.077278182 0.29943466 0.07813932 0.29943466 0.077278174 0.26328185
		 0.078139231 0.26328179 0.077278182 0.19096176 0.078139238 0.19096176;
	setAttr ".uvst[0].uvsp[250:279]" 0.077278182 0.15479816 0.07813932 0.15479816
		 0.077278182 0.11863077 0.07813932 0.11863077 0.077278182 0.082462825 0.07813932 0.082462825
		 0.077278182 0.046294861 0.07813932 0.046294861 0.077278182 0.010126927 0.07813932
		 0.010126927 0.057344493 0.33629924 0.057344489 0.37254769 0.056483947 0.37254769
		 0.056483947 0.33629924 0.057344489 0.30006859 0.056483939 0.30006859 0.057344489
		 0.26384768 0.056483939 0.26384768 0.057344489 0.19135602 0.056483924 0.19135602 0.057344489
		 0.15510063 0.056483924 0.15510063 0.057344489 0.11885693 0.056483924 0.11885693 0.057344489
		 0.082622416 0.056483939 0.082622416 0.057344489 0.046378247 0.056483939 0.046378247
		 0.057344489 0.010126927 0.056483947 0.010126927;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 200 ".vt";
	setAttr ".vt[0:165]"  -32.045127869 0.46806592 14.85000038 -29.94512558 0.42088392 14.85000038
		 -27.84512711 0.17822108 14.85000038 -25.74512672 0.01509287 14.85000038 -21.54512596 0 14.85000038
		 -19.44512558 0 14.85000038 -17.34512711 0 14.85000038 -15.24512672 0 14.85000038
		 -13.14512634 0 14.85000038 -11.045125961 0 14.85000038 -32.045127869 0.42354462 11.88000011
		 -29.94512558 0.46176395 11.88000011 -27.84512711 0.32182786 11.88000011 -25.74512672 0.16516148 11.88000011
		 -21.54512596 0.0097538298 11.88000011 -19.44512558 0 11.88000011 -17.34512711 0 11.88000011
		 -15.24512672 0 11.88000011 -13.14512634 0 11.88000011 -11.045125961 0 11.88000011
		 -32.045127869 0.1465593 8.90999985 -29.94512558 0.27632165 8.90999985 -27.84512711 0.33107537 8.90999985
		 -25.74512672 0.28124529 8.90999985 -21.54512596 0.051898785 8.90999985 -19.44512558 0.0065192925 8.90999985
		 -17.34512711 0 8.90999985 -15.24512672 0 8.90999985 -13.14512634 0 8.90999985 -11.045125961 0 8.90999985
		 -32.045127869 0.056381922 5.94000053 -29.94512558 0.20303419 5.94000053 -27.84512711 0.33433428 5.94000053
		 -25.74512672 0.33942848 5.94000053 -21.54512596 0.13067493 5.94000053 -19.44512558 0.02691726 5.94000053
		 -17.34512711 0 5.94000053 -15.24512672 0 5.94000053 -13.14512634 0 5.94000053 -11.045125961 0 5.94000053
		 -32.045127869 0.0097538298 2.97000027 -29.94512558 0.085205182 2.97000027 -27.84512711 0.18998985 2.97000027
		 -25.74512672 0.21317834 2.97000027 -21.54512596 0.062915869 2.97000027 -19.44512558 0.0077744024 2.97000027
		 -17.34512711 0.008508388 2.97000027 -15.24512672 0.012846097 2.97000027 -13.14512634 0.008508388 2.97000027
		 -11.045125961 0.0012551093 2.97000027 -32.045127869 0 0 -29.94512558 0.0026376955 0
		 -27.84512711 0.017969433 0 -25.74512672 0.027101841 0 -21.54512596 0.0026376955 0
		 -19.44512558 0.0052196938 0 -17.34512711 0.031544562 0 -15.24512672 0.1193755 0 -13.14512634 0.1864858 0
		 -11.045125961 0.14495152 0 -32.045127869 0 -2.96999931 -29.94512558 0 -2.96999931
		 -27.84512711 0 -2.96999931 -25.74512672 0 -2.96999931 -21.54512596 0 -2.96999931
		 -19.44512558 0.0061590555 -2.96999931 -17.34512711 0.096494585 -2.96999931 -15.24512672 0.27614358 -2.96999931
		 -13.14512634 0.37871855 -2.96999931 -11.045125961 0.2982823 -2.96999931 -32.045127869 0 -8.90999985
		 -29.94512558 0 -8.90999985 -27.84512711 0 -8.90999985 -25.74512672 0.0053622313 -8.90999985
		 -21.54512596 0.054838005 -8.90999985 -19.44512558 0.041229546 -8.90999985 -17.34512711 0.038622372 -8.90999985
		 -15.24512672 0.050188512 -8.90999985 -13.14512634 0.033260141 -8.90999985 -11.045125961 0.0049039461 -8.90999985
		 -32.045127869 0.28291425 -11.87999916 -29.94512558 0.18740702 -11.87999916 -27.84512711 0.02766427 -11.87999916
		 -25.74512672 0.022289015 -11.87999916 -21.54512596 0.10789038 -11.87999916 -19.44512558 0.078464426 -11.87999916
		 -17.34512711 0.022289015 -11.87999916 -15.24512672 0.010201553 -11.87999916 -13.14512634 0.069108889 -11.87999916
		 -11.045125961 0.1043285 -11.87999916 -32.045127869 0.75750309 -14.85000038 -29.94512558 0.40480551 -14.85000038
		 -27.84512711 0.11499131 -14.85000038 -25.74512672 0.0053622313 -14.85000038 -21.54512596 0.054838005 -14.85000038
		 -19.44512558 0.036325596 -14.85000038 -17.34512711 0.0053622313 -14.85000038 -15.24512672 0.042404566 -14.85000038
		 -13.14512634 0.14927755 -14.85000038 -11.045125961 0.20526007 -14.85000038 -32.045021057 0.51806581 14.84996986
		 -29.94280434 0.47076887 14.8507576 -29.94420815 0.51174629 11.87903786 -32.046070099 0.47344935 11.87804604
		 -27.84096336 0.2280037 14.85200405 -27.84217644 0.37173268 11.88089466 -25.74272346 0.064976297 14.85190392
		 -25.74273872 0.21508037 11.88154888 -21.54456139 0.049985711 14.85071373 -21.54410744 0.059737187 11.88079166
		 -19.44506836 0.049999896 14.85004139 -19.44491386 0.049999364 11.88013649 -17.34512711 0.050000001 14.85000038
		 -17.34510803 0.049999993 11.88001347 -15.24512672 0.050000001 14.85000038 -15.24512672 0.050000001 11.88000011
		 -13.14512634 0.050000004 14.85000038 -13.14512634 0.050000001 11.88000011 -11.045125961 0.050000004 14.85000038
		 -11.045125961 0.050000004 11.88000011 -29.94674683 0.32626176 8.90816689 -32.047763824 0.19640072 8.90737438
		 -27.84467888 0.38107321 8.90987492 -25.74315643 0.33119619 8.91101265 -21.54329491 0.10185659 8.91093159
		 -19.44439888 0.056512665 8.91036701 -17.34500885 0.049999826 8.91005611 -15.24512672 0.050000001 8.90999985
		 -13.14512634 0.050000001 8.90999985 -11.045125961 0.050000004 8.90999985 -29.94786072 0.25294006 5.93861389
		 -32.048088074 0.10627414 5.93862343 -27.84633255 0.38430682 5.93886328 -25.74389267 0.38941014 5.93944073
		 -21.54302406 0.18063067 5.93990612 -19.44403267 0.076905273 5.94004679 -17.34496307 0.049999684 5.94006586
		 -15.24512672 0.049999919 5.94009018 -13.14509201 0.049999949 5.94006586 -11.045083046 0.04999993 5.94004154
		 -29.9470768 0.13514069 2.96837497 -32.046913147 0.059702076 2.96892095 -27.84636497 0.23991652 2.96759319
		 -25.74451256 0.26312405 2.96775317 -21.54370308 0.11288023 2.96875954 -19.44449997 0.057769611 2.96970606
		 -17.34541702 0.058506407 2.97033858 -15.24558735 0.062834755 2.97096086 -13.14513302 0.058490437 2.97134018
		 -11.044793129 0.051216781 2.97139311 -29.94576836 0.052627508 -0.00077829038 -32.045608521 0.049992658 -0.00039954513
		 -27.84565353 0.06794633 -0.0014259057 -25.74495316 0.077081144 -0.0014280652 -21.54469872 0.052630745 -0.00071632338
		 -19.44542313 0.05521879 4.5918914e-05 -17.34662247 0.081513718 0.00091967353 -15.24688625 0.16930169 0.00206891
		 -13.14530945 0.23641069 0.0027332585 -11.044111252 0.19486058 0.0028031026 -29.94517899 0.049999949 -2.97004819
		 -32.045143127 0.049999993 -2.97001052 -27.84521675 0.049999747 -2.97013187 -25.74520683 0.049999859 -2.97008777
		 -21.54516792 0.0499999 -2.96990752 -19.44573784 0.056154884 -2.96979356;
	setAttr ".vt[166:199]" -17.3470993 0.1464549 -2.96971726 -15.24724865 0.32609764 -2.96969986
		 -13.14519882 0.42871815 -2.96981239 -11.043754578 0.34818518 -2.96989012 -29.94436646 0.049973525 -8.90856075
		 -32.044559479 0.049915601 -8.9080267 -27.84466743 0.049994852 -8.90944862 -25.74541664 0.055360425 -8.9096899
		 -21.54524994 0.1048354 -8.90950489 -19.44506073 0.091228575 -8.90969563 -17.34577942 0.088616535 -8.91039658
		 -15.24607372 0.10016902 -8.911026 -13.14520264 0.08325015 -8.91099644 -11.044520378 0.054853018 -8.91077232
		 -29.94171715 0.23716651 -11.87648201 -32.041923523 0.33252358 -11.87514973 -27.84298134 0.077600434 -11.87866783
		 -25.74518585 0.072288394 -11.87975693 -21.54525757 0.15789022 -11.88000965 -19.44441986 0.12845936 -11.88008976
		 -17.34476471 0.072287425 -11.88016605 -15.24581718 0.060196586 -11.87985802 -13.14603615 0.11909264 -11.87910557
		 -11.04570961 0.1543045 -11.87866783 -29.93983269 0.45432496 -14.84585094 -32.039855957 0.80689055 -14.84424782
		 -27.84178543 0.1648059 -14.84843063 -25.74484444 0.055346146 -14.84999847 -21.54524231 0.1048282 -14.85069561
		 -19.44432068 0.086314142 -14.85064983 -17.34475708 0.055355094 -14.85018539 -15.2462616 0.092380136 -14.84946442
		 -13.14665508 0.19923615 -14.84876633 -11.046211243 0.25522509 -14.84847641;
	setAttr -s 396 ".ed";
	setAttr ".ed[0:165]"  0 1 0 0 10 0 1 2 0 1 11 1 2 3 0 2 12 1 3 4 0 3 13 1
		 4 5 0 4 14 1 5 6 0 5 15 1 6 7 0 6 16 1 7 8 0 7 17 1 8 9 0 8 18 1 9 19 0 10 11 1 10 20 0
		 11 12 1 11 21 1 12 13 1 12 22 1 13 14 1 13 23 1 14 15 1 14 24 1 15 16 1 15 25 1 16 17 1
		 16 26 1 17 18 1 17 27 1 18 19 1 18 28 1 19 29 0 20 21 1 20 30 0 21 22 1 21 31 1 22 23 1
		 22 32 1 23 24 1 23 33 1 24 25 1 24 34 1 25 26 1 25 35 1 26 27 1 26 36 1 27 28 1 27 37 1
		 28 29 1 28 38 1 29 39 0 30 31 1 30 40 0 31 32 1 31 41 1 32 33 1 32 42 1 33 34 1 33 43 1
		 34 35 1 34 44 1 35 36 1 35 45 1 36 37 1 36 46 1 37 38 1 37 47 1 38 39 1 38 48 1 39 49 0
		 40 41 1 40 50 0 41 42 1 41 51 1 42 43 1 42 52 1 43 44 1 43 53 1 44 45 1 44 54 1 45 46 1
		 45 55 1 46 47 1 46 56 1 47 48 1 47 57 1 48 49 1 48 58 1 49 59 0 50 51 1 50 60 0 51 52 1
		 51 61 1 52 53 1 52 62 1 53 54 1 53 63 1 54 55 1 54 64 1 55 56 1 55 65 1 56 57 1 56 66 1
		 57 58 1 57 67 1 58 59 1 58 68 1 59 69 0 60 61 1 61 62 1 62 63 1 63 64 1 64 65 1 65 66 1
		 66 67 1 67 68 1 68 69 1 60 70 0 61 71 1 62 72 1 63 73 1 64 74 1 65 75 1 66 76 1 67 77 1
		 68 78 1 69 79 0 70 71 1 70 80 0 71 72 1 71 81 1 72 73 1 72 82 1 73 74 1 73 83 1 74 75 1
		 74 84 1 75 76 1 75 85 1 76 77 1 76 86 1 77 78 1 77 87 1 78 79 1 78 88 1 79 89 0 80 81 1
		 80 90 0 81 82 1 81 91 1 82 83 1 82 92 1 83 84 1 83 93 1 84 85 1 84 94 1 85 86 1 85 95 1
		 86 87 1 86 96 1;
	setAttr ".ed[166:331]" 87 88 1 87 97 1 88 89 1 88 98 1 89 99 0 90 91 0 91 92 0
		 92 93 0 93 94 0 94 95 0 95 96 0 96 97 0 97 98 0 98 99 0 0 100 0 1 101 1 100 101 0
		 101 102 1 10 103 1 103 102 1 100 103 0 2 104 1 101 104 0 104 105 1 102 105 1 3 106 1
		 104 106 0 106 107 1 105 107 1 4 108 1 106 108 0 108 109 1 107 109 1 5 110 1 108 110 0
		 110 111 1 109 111 1 6 112 1 110 112 0 112 113 1 111 113 1 7 114 1 112 114 0 114 115 1
		 113 115 1 8 116 1 114 116 0 116 117 1 115 117 1 9 118 0 116 118 0 19 119 1 118 119 0
		 117 119 1 102 120 1 20 121 1 121 120 1 103 121 0 105 122 1 120 122 1 107 123 1 122 123 1
		 109 124 1 123 124 1 111 125 1 124 125 1 113 126 1 125 126 1 115 127 1 126 127 1 117 128 1
		 127 128 1 29 129 1 119 129 0 128 129 1 120 130 1 30 131 1 131 130 1 121 131 0 122 132 1
		 130 132 1 123 133 1 132 133 1 124 134 1 133 134 1 125 135 1 134 135 1 126 136 1 135 136 1
		 127 137 1 136 137 1 128 138 1 137 138 1 39 139 1 129 139 0 138 139 1 130 140 1 40 141 1
		 141 140 1 131 141 0 132 142 1 140 142 1 133 143 1 142 143 1 134 144 1 143 144 1 135 145 1
		 144 145 1 136 146 1 145 146 1 137 147 1 146 147 1 138 148 1 147 148 1 49 149 1 139 149 0
		 148 149 1 140 150 1 50 151 1 151 150 1 141 151 0 142 152 1 150 152 1 143 153 1 152 153 1
		 144 154 1 153 154 1 145 155 1 154 155 1 146 156 1 155 156 1 147 157 1 156 157 1 148 158 1
		 157 158 1 59 159 1 149 159 0 158 159 1 150 160 1 60 161 1 161 160 1 151 161 0 152 162 1
		 160 162 1 153 163 1 162 163 1 154 164 1 163 164 1 155 165 1 164 165 1 156 166 1 165 166 1
		 157 167 1 166 167 1 158 168 1 167 168 1 69 169 1 159 169 0 168 169 1 160 170 1 70 171 1
		 171 170 1 161 171 0 162 172 1 170 172 1 163 173 1;
	setAttr ".ed[332:395]" 172 173 1 164 174 1 173 174 1 165 175 1 174 175 1 166 176 1
		 175 176 1 167 177 1 176 177 1 168 178 1 177 178 1 79 179 1 169 179 0 178 179 1 170 180 1
		 80 181 1 181 180 1 171 181 0 172 182 1 180 182 1 173 183 1 182 183 1 174 184 1 183 184 1
		 175 185 1 184 185 1 176 186 1 185 186 1 177 187 1 186 187 1 178 188 1 187 188 1 89 189 1
		 179 189 0 188 189 1 91 190 1 180 190 1 90 191 0 191 190 0 181 191 0 92 192 1 182 192 1
		 190 192 0 93 193 1 183 193 1 192 193 0 94 194 1 184 194 1 193 194 0 95 195 1 185 195 1
		 194 195 0 96 196 1 186 196 1 195 196 0 97 197 1 187 197 1 196 197 0 98 198 1 188 198 1
		 197 198 0 99 199 0 189 199 0 198 199 0;
	setAttr -s 198 -ch 792 ".fc[0:197]" -type "polyFaces" 
		f 4 182 183 -186 -187
		mu 0 4 0 166 1 2
		f 4 188 189 -191 -184
		mu 0 4 166 165 3 1
		f 4 192 193 -195 -190
		mu 0 4 165 164 4 3
		f 4 196 197 -199 -194
		mu 0 4 164 163 5 4
		f 4 200 201 -203 -198
		mu 0 4 163 162 6 5
		f 4 204 205 -207 -202
		mu 0 4 162 161 7 6
		f 4 208 209 -211 -206
		mu 0 4 161 160 8 7
		f 4 212 213 -215 -210
		mu 0 4 160 158 9 8
		f 4 216 218 -220 -214
		mu 0 4 158 157 156 9
		f 4 185 220 -223 -224
		mu 0 4 2 1 10 11
		f 4 190 224 -226 -221
		mu 0 4 1 3 12 10
		f 4 194 226 -228 -225
		mu 0 4 3 4 13 12
		f 4 198 228 -230 -227
		mu 0 4 4 5 14 13
		f 4 202 230 -232 -229
		mu 0 4 5 6 15 14
		f 4 206 232 -234 -231
		mu 0 4 6 7 16 15
		f 4 210 234 -236 -233
		mu 0 4 7 8 17 16
		f 4 214 236 -238 -235
		mu 0 4 8 9 18 17
		f 4 219 239 -241 -237
		mu 0 4 9 156 155 18
		f 4 222 241 -244 -245
		mu 0 4 11 10 19 20
		f 4 225 245 -247 -242
		mu 0 4 10 12 21 19
		f 4 227 247 -249 -246
		mu 0 4 12 13 22 21
		f 4 229 249 -251 -248
		mu 0 4 13 14 23 22
		f 4 231 251 -253 -250
		mu 0 4 14 15 24 23
		f 4 233 253 -255 -252
		mu 0 4 15 16 25 24
		f 4 235 255 -257 -254
		mu 0 4 16 17 26 25
		f 4 237 257 -259 -256
		mu 0 4 17 18 27 26
		f 4 240 260 -262 -258
		mu 0 4 18 155 154 27
		f 4 243 262 -265 -266
		mu 0 4 20 19 28 29
		f 4 246 266 -268 -263
		mu 0 4 19 21 30 28
		f 4 248 268 -270 -267
		mu 0 4 21 22 31 30
		f 4 250 270 -272 -269
		mu 0 4 22 23 32 31
		f 4 252 272 -274 -271
		mu 0 4 23 24 33 32
		f 4 254 274 -276 -273
		mu 0 4 24 25 34 33
		f 4 256 276 -278 -275
		mu 0 4 25 26 35 34
		f 4 258 278 -280 -277
		mu 0 4 26 27 36 35
		f 4 261 281 -283 -279
		mu 0 4 27 154 153 36
		f 4 264 283 -286 -287
		mu 0 4 29 28 37 38
		f 4 267 287 -289 -284
		mu 0 4 28 30 39 37
		f 4 269 289 -291 -288
		mu 0 4 30 31 40 39
		f 4 271 291 -293 -290
		mu 0 4 31 32 41 40
		f 4 273 293 -295 -292
		mu 0 4 32 33 42 41
		f 4 275 295 -297 -294
		mu 0 4 33 34 43 42
		f 4 277 297 -299 -296
		mu 0 4 34 35 44 43
		f 4 279 299 -301 -298
		mu 0 4 35 36 45 44
		f 4 282 302 -304 -300
		mu 0 4 36 153 152 45
		f 4 285 304 -307 -308
		mu 0 4 38 37 46 47
		f 4 288 308 -310 -305
		mu 0 4 37 39 48 46
		f 4 290 310 -312 -309
		mu 0 4 39 40 49 48
		f 4 292 312 -314 -311
		mu 0 4 40 41 50 49
		f 4 294 314 -316 -313
		mu 0 4 41 42 51 50
		f 4 296 316 -318 -315
		mu 0 4 42 43 52 51
		f 4 298 318 -320 -317
		mu 0 4 43 44 53 52
		f 4 300 320 -322 -319
		mu 0 4 44 45 54 53
		f 4 303 323 -325 -321
		mu 0 4 45 152 151 54
		f 4 306 325 -328 -329
		mu 0 4 47 46 55 56
		f 4 309 329 -331 -326
		mu 0 4 46 48 57 55
		f 4 311 331 -333 -330
		mu 0 4 48 49 58 57
		f 4 313 333 -335 -332
		mu 0 4 49 50 59 58
		f 4 315 335 -337 -334
		mu 0 4 50 51 60 59
		f 4 317 337 -339 -336
		mu 0 4 51 52 61 60
		f 4 319 339 -341 -338
		mu 0 4 52 53 62 61
		f 4 321 341 -343 -340
		mu 0 4 53 54 63 62
		f 4 324 344 -346 -342
		mu 0 4 54 151 150 63
		f 4 327 346 -349 -350
		mu 0 4 56 55 64 65
		f 4 330 350 -352 -347
		mu 0 4 55 57 66 64
		f 4 332 352 -354 -351
		mu 0 4 57 58 67 66
		f 4 334 354 -356 -353
		mu 0 4 58 59 68 67
		f 4 336 356 -358 -355
		mu 0 4 59 60 69 68
		f 4 338 358 -360 -357
		mu 0 4 60 61 70 69
		f 4 340 360 -362 -359
		mu 0 4 61 62 71 70
		f 4 342 362 -364 -361
		mu 0 4 62 63 72 71
		f 4 345 365 -367 -363
		mu 0 4 63 150 146 72
		f 4 348 368 -371 -372
		mu 0 4 65 64 73 148
		f 4 351 373 -375 -369
		mu 0 4 64 66 74 73
		f 4 353 376 -378 -374
		mu 0 4 66 67 75 74
		f 4 355 379 -381 -377
		mu 0 4 67 68 76 75
		f 4 357 382 -384 -380
		mu 0 4 68 69 77 76
		f 4 359 385 -387 -383
		mu 0 4 69 70 78 77
		f 4 361 388 -390 -386
		mu 0 4 70 71 79 78
		f 4 363 391 -393 -389
		mu 0 4 71 72 80 79
		f 4 366 394 -396 -392
		mu 0 4 72 146 145 80
		f 4 1 19 -4 -1
		mu 0 4 167 191 81 199
		f 4 3 21 -6 -3
		mu 0 4 199 81 82 198
		f 4 5 23 -8 -5
		mu 0 4 198 82 83 197
		f 4 7 25 -10 -7
		mu 0 4 197 83 84 196
		f 4 9 27 -12 -9
		mu 0 4 196 84 85 195
		f 4 11 29 -14 -11
		mu 0 4 195 85 86 194
		f 4 13 31 -16 -13
		mu 0 4 194 86 87 193
		f 4 15 33 -18 -15
		mu 0 4 193 87 88 192
		f 4 17 35 -19 -17
		mu 0 4 192 88 190 159
		f 4 20 38 -23 -20
		mu 0 4 191 189 89 81
		f 4 22 40 -25 -22
		mu 0 4 81 89 90 82
		f 4 24 42 -27 -24
		mu 0 4 82 90 91 83
		f 4 26 44 -29 -26
		mu 0 4 83 91 92 84
		f 4 28 46 -31 -28
		mu 0 4 84 92 93 85
		f 4 30 48 -33 -30
		mu 0 4 85 93 94 86
		f 4 32 50 -35 -32
		mu 0 4 86 94 95 87
		f 4 34 52 -37 -34
		mu 0 4 87 95 96 88
		f 4 36 54 -38 -36
		mu 0 4 88 96 188 190
		f 4 39 57 -42 -39
		mu 0 4 189 187 97 89
		f 4 41 59 -44 -41
		mu 0 4 89 97 98 90
		f 4 43 61 -46 -43
		mu 0 4 90 98 99 91
		f 4 45 63 -48 -45
		mu 0 4 91 99 100 92
		f 4 47 65 -50 -47
		mu 0 4 92 100 101 93
		f 4 49 67 -52 -49
		mu 0 4 93 101 102 94
		f 4 51 69 -54 -51
		mu 0 4 94 102 103 95
		f 4 53 71 -56 -53
		mu 0 4 95 103 104 96
		f 4 55 73 -57 -55
		mu 0 4 96 104 186 188
		f 4 58 76 -61 -58
		mu 0 4 187 185 105 97
		f 4 60 78 -63 -60
		mu 0 4 97 105 106 98
		f 4 62 80 -65 -62
		mu 0 4 98 106 107 99
		f 4 64 82 -67 -64
		mu 0 4 99 107 108 100
		f 4 66 84 -69 -66
		mu 0 4 100 108 109 101
		f 4 68 86 -71 -68
		mu 0 4 101 109 110 102
		f 4 70 88 -73 -70
		mu 0 4 102 110 111 103
		f 4 72 90 -75 -72
		mu 0 4 103 111 112 104
		f 4 74 92 -76 -74
		mu 0 4 104 112 184 186
		f 4 77 95 -80 -77
		mu 0 4 185 183 113 105
		f 4 79 97 -82 -79
		mu 0 4 105 113 114 106
		f 4 81 99 -84 -81
		mu 0 4 106 114 115 107
		f 4 83 101 -86 -83
		mu 0 4 107 115 116 108
		f 4 85 103 -88 -85
		mu 0 4 108 116 117 109
		f 4 87 105 -90 -87
		mu 0 4 109 117 118 110
		f 4 89 107 -92 -89
		mu 0 4 110 118 119 111
		f 4 91 109 -94 -91
		mu 0 4 111 119 120 112
		f 4 93 111 -95 -93
		mu 0 4 112 120 182 184
		f 4 96 114 -99 -96
		mu 0 4 183 181 121 113
		f 4 98 115 -101 -98
		mu 0 4 113 121 122 114
		f 4 100 116 -103 -100
		mu 0 4 114 122 123 115
		f 4 102 117 -105 -102
		mu 0 4 115 123 124 116
		f 4 104 118 -107 -104
		mu 0 4 116 124 125 117
		f 4 106 119 -109 -106
		mu 0 4 117 125 126 118
		f 4 108 120 -111 -108
		mu 0 4 118 126 127 119
		f 4 110 121 -113 -110
		mu 0 4 119 127 128 120
		f 4 112 122 -114 -112
		mu 0 4 120 128 180 182
		f 4 123 133 -125 -115
		mu 0 4 181 179 129 121
		f 4 124 135 -126 -116
		mu 0 4 121 129 130 122
		f 4 125 137 -127 -117
		mu 0 4 122 130 131 123
		f 4 126 139 -128 -118
		mu 0 4 123 131 132 124
		f 4 127 141 -129 -119
		mu 0 4 124 132 133 125
		f 4 128 143 -130 -120
		mu 0 4 125 133 134 126
		f 4 129 145 -131 -121
		mu 0 4 126 134 135 127
		f 4 130 147 -132 -122
		mu 0 4 127 135 136 128
		f 4 131 149 -133 -123
		mu 0 4 128 136 178 180
		f 4 134 152 -137 -134
		mu 0 4 179 177 137 129
		f 4 136 154 -139 -136
		mu 0 4 129 137 138 130
		f 4 138 156 -141 -138
		mu 0 4 130 138 139 131
		f 4 140 158 -143 -140
		mu 0 4 131 139 140 132
		f 4 142 160 -145 -142
		mu 0 4 132 140 141 133
		f 4 144 162 -147 -144
		mu 0 4 133 141 142 134
		f 4 146 164 -149 -146
		mu 0 4 134 142 143 135
		f 4 148 166 -151 -148
		mu 0 4 135 143 144 136
		f 4 150 168 -152 -150
		mu 0 4 136 144 176 178
		f 4 153 171 -156 -153
		mu 0 4 177 149 175 137
		f 4 155 172 -158 -155
		mu 0 4 137 175 174 138
		f 4 157 173 -160 -157
		mu 0 4 138 174 173 139
		f 4 159 174 -162 -159
		mu 0 4 139 173 172 140
		f 4 161 175 -164 -161
		mu 0 4 140 172 171 141
		f 4 163 176 -166 -163
		mu 0 4 141 171 170 142
		f 4 165 177 -168 -165
		mu 0 4 142 170 169 143
		f 4 167 178 -170 -167
		mu 0 4 143 169 168 144
		f 4 169 179 -171 -169
		mu 0 4 144 168 147 176
		f 4 0 181 -183 -181
		mu 0 4 240 241 242 243
		f 4 -2 180 186 -185
		mu 0 4 200 201 202 203
		f 4 2 187 -189 -182
		mu 0 4 241 244 245 242
		f 4 4 191 -193 -188
		mu 0 4 244 246 247 245
		f 4 6 195 -197 -192
		mu 0 4 246 248 249 247
		f 4 8 199 -201 -196
		mu 0 4 248 250 251 249
		f 4 10 203 -205 -200
		mu 0 4 250 252 253 251
		f 4 12 207 -209 -204
		mu 0 4 252 254 255 253
		f 4 14 211 -213 -208
		mu 0 4 254 256 257 255
		f 4 16 215 -217 -212
		mu 0 4 256 258 259 257
		f 4 18 217 -219 -216
		mu 0 4 220 221 222 223
		f 4 -21 184 223 -222
		mu 0 4 204 200 203 205
		f 4 37 238 -240 -218
		mu 0 4 221 224 225 222
		f 4 -40 221 244 -243
		mu 0 4 206 204 205 207
		f 4 56 259 -261 -239
		mu 0 4 224 226 227 225
		f 4 -59 242 265 -264
		mu 0 4 208 206 207 209
		f 4 75 280 -282 -260
		mu 0 4 226 228 229 227
		f 4 -78 263 286 -285
		mu 0 4 210 208 209 211
		f 4 94 301 -303 -281
		mu 0 4 228 230 231 229
		f 4 -97 284 307 -306
		mu 0 4 212 210 211 213
		f 4 113 322 -324 -302
		mu 0 4 230 232 233 231
		f 4 -124 305 328 -327
		mu 0 4 214 212 213 215
		f 4 132 343 -345 -323
		mu 0 4 232 234 235 233
		f 4 -135 326 349 -348
		mu 0 4 216 214 215 217
		f 4 151 364 -366 -344
		mu 0 4 234 236 237 235
		f 4 -172 369 370 -368
		mu 0 4 260 261 262 263
		f 4 -154 347 371 -370
		mu 0 4 218 216 217 219
		f 4 -173 367 374 -373
		mu 0 4 264 260 263 265
		f 4 -174 372 377 -376
		mu 0 4 266 264 265 267
		f 4 -175 375 380 -379
		mu 0 4 268 266 267 269
		f 4 -176 378 383 -382
		mu 0 4 270 268 269 271
		f 4 -177 381 386 -385
		mu 0 4 272 270 271 273
		f 4 -178 384 389 -388
		mu 0 4 274 272 273 275
		f 4 -179 387 392 -391
		mu 0 4 276 274 275 277
		f 4 170 393 -395 -365
		mu 0 4 236 238 239 237
		f 4 -180 390 395 -394
		mu 0 4 278 276 277 279;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 76 
		0 1.8 
		1 1.8 
		2 1.8 
		4 1.8 
		6 1.8 
		8 1.8 
		10 1.8 
		12 1.8 
		14 1.8 
		16 1.8 
		18 1.8 
		20 1.8 
		37 1.8 
		39 1.8 
		56 1.8 
		58 1.8 
		75 1.8 
		77 1.8 
		94 1.8 
		96 1.8 
		113 1.8 
		123 1.8 
		132 1.8 
		134 1.8 
		151 1.8 
		153 1.8 
		170 1.8 
		171 1.8 
		172 1.8 
		173 1.8 
		174 1.8 
		175 1.8 
		176 1.8 
		177 1.8 
		178 1.8 
		179 1.8 
		180 1.8 
		182 1.8 
		186 1.8 
		188 1.8 
		192 1.8 
		196 1.8 
		200 1.8 
		204 1.8 
		208 1.8 
		212 1.8 
		215 1.8 
		216 1.8 
		218 1.8 
		223 1.8 
		239 1.8 
		244 1.8 
		260 1.8 
		265 1.8 
		281 1.8 
		286 1.8 
		302 1.8 
		307 1.8 
		323 1.8 
		328 1.8 
		344 1.8 
		349 1.8 
		365 1.8 
		369 1.8 
		370 1.8 
		371 1.8 
		374 1.8 
		377 1.8 
		380 1.8 
		383 1.8 
		386 1.8 
		389 1.8 
		392 1.8 
		393 1.8 
		394 1.8 
		395 1.8 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "blatt_04" -p "notenblaetterRNfosterParent1";
	rename -uid "A64150F3-410B-81F1-DAC4-238981F4C1E2";
	setAttr ".t" -type "double3" -65.114289469031917 -6.7996018960643176e-13 9.0846105627165183 ;
	setAttr ".r" -type "double3" 0 9.8874639451942432 0 ;
createNode mesh -n "blatt_Shape4" -p "blatt_04";
	rename -uid "E07E0B04-4806-B859-57D9-1F9D201308E9";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:195]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 57 "e[0:2]" "e[4]" "e[6]" "e[8]" "e[10]" "e[12]" "e[14]" "e[16]" "e[18]" "e[20]" "e[22]" "e[41]" "e[43]" "e[62]" "e[64]" "e[83]" "e[85]" "e[104]" "e[115]" "e[125]" "e[127]" "e[146]" "e[148]" "e[167:178]" "e[180]" "e[184]" "e[186]" "e[190]" "e[194]" "e[198]" "e[202]" "e[206]" "e[210]" "e[214]" "e[217:218]" "e[220]" "e[225]" "e[243]" "e[248]" "e[266]" "e[271]" "e[289]" "e[294]" "e[312]" "e[317]" "e[335]" "e[340]" "e[358]" "e[362:364]" "e[367]" "e[370]" "e[373]" "e[376]" "e[379]" "e[382]" "e[385]" "e[388:391]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 5 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[1].gtagnm" -type "string" "front";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[2].gtagnm" -type "string" "left";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[3].gtagnm" -type "string" "right";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[4].gtagnm" -type "string" "rim";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 0;
	setAttr ".pv" -type "double2" 0.60219384578626567 0.5772758424282074 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 278 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.0092220902 0.53721857 0.070346698
		 0.046342671 0.04128021 0.58242965 0.0092878938 0.58248246 0.070346698 0.082620978
		 0.073444158 0.58237779 0.070346698 0.1188941 0.10548815 0.58233738 0.070346698 0.15512872
		 0.13746715 0.58233804 0.070346698 0.19132066 0.16950968 0.58235133 0.070346698 0.22744191
		 0.20165238 0.58237255 0.070346698 0.26365447 0.233556 0.58239293 0.070346698 0.30000484
		 0.2659823 0.58224255 0.070346698 0.3362661 0.29799807 0.58225101 0.023920262 0.52139544
		 0.023920262 0.47025761 0.04136765 0.62771606 0.0093815327 0.62775445 0.073452681
		 0.62766337 0.10549551 0.62763304 0.13751003 0.62762821 0.16955671 0.62764657 0.20163745
		 0.62768805 0.23357674 0.62772912 0.2656984 0.62767255 0.29779348 0.62764329 0.023920262
		 0.41896954 0.041459799 0.67297113 0.0094745755 0.67299312 0.073474318 0.67295998
		 0.10550258 0.67295939 0.13753188 0.67295527 0.16956431 0.67295492 0.20158392 0.67296755
		 0.23356923 0.67298925 0.26557401 0.67303622 0.29759082 0.67312813 0.023920344 0.3676759
		 0.041517019 0.71820319 0.009525001 0.71820521 0.073513329 0.71820903 0.10551745 0.71821785
		 0.13752386 0.71822071 0.16952908 0.71821988 0.20152798 0.71822697 0.23352286 0.71824557
		 0.26551798 0.7182771 0.29751286 0.71832108 0.023920262 0.31649891 0.041480124 0.85391718
		 0.0094870925 0.85389864 0.073472619 0.85393596 0.10546586 0.85395199 0.13745978 0.85396743
		 0.1694532 0.85398197 0.20144624 0.85399491 0.23343906 0.85400754 0.265432 0.85402197
		 0.29742542 0.85403818 0.023920344 0.16289523 0.041430831 0.89914536 0.009436965 0.89910722
		 0.073429793 0.89916539 0.10543355 0.89917904 0.13743758 0.89920247 0.16943887 0.89923078
		 0.20143434 0.8992483 0.23342827 0.89925706 0.26542279 0.89926648 0.29741666 0.89927649
		 0.023920344 0.11169402 0.041344643 0.9443987 0.0093266368 0.94431603 0.073381126
		 0.94448298 0.10539922 0.94452083 0.1374169 0.944525 0.16945365 0.94449782 0.20146081
		 0.94449425 0.23343793 0.94450361 0.26542547 0.94451106 0.29741725 0.94451791 0.023920352
		 0.060492821 0.041263402 0.98968375 0.042621084 0.010126927 0.073346734 0.98982507
		 0.10535669 0.98988527 0.13736215 0.98987114 0.16943201 0.98978764 0.20148703 0.98973858
		 0.23345071 0.98974973 0.26542816 0.98975778 0.29741707 0.98976386 0.063415229 0.010126927
		 0.69417316 0.011116505 0.69409424 0.051463202 0.66555315 0.0514035 0.66564542 0.011052579
		 0.63687366 0.051344611 0.63702255 0.010992482 0.60833973 0.0512954 0.60843223 0.010932423
		 0.57986683 0.051282674 0.5798611 0.010900952 0.55133432 0.051281422 0.55128139 0.010922998
		 0.52265424 0.05128248 0.52268368 0.010914408 0.49413219 0.051274434 0.49413463 0.010911785
		 0.46522418 0.051113836 0.46531734 0.010819145 0.43674877 0.051128618 0.43675533 0.010781355
		 0.40823022 0.051191658 0.40799966 0.010630384 0.69399613 0.091816142 0.66546458 0.091761887
		 0.63685673 0.091688022 0.60831779 0.091638461 0.57980615 0.091620967 0.55126363 0.091633201
		 0.5226509 0.091666028 0.49412236 0.091679171 0.46547589 0.091590568 0.43689689 0.091542497
		 0.40837911 0.091617987 0.69390506 0.13214535 0.66538221 0.13210586 0.63683873 0.13206877
		 0.60829955 0.13204479 0.57976109 0.13202769 0.55121785 0.13202411 0.52266842 0.13203499
		 0.49413434 0.13204187 0.46559682 0.13205683 0.43706289 0.1321142 0.40853706 0.13217887
		 0.693847 0.17245236 0.66532511 0.17243502 0.63680035 0.17242143 0.60827285 0.17241162
		 0.57974392 0.1724007 0.55121535 0.17239103 0.52268833 0.17238963 0.4941633 0.17239566
		 0.46564046 0.17241091 0.43711814 0.17243707 0.40859619 0.17246138 0.69382602 0.29341769
		 0.66530544 0.29342154 0.63678533 0.29342523 0.60826451 0.29342684 0.57974333 0.29342729
		 0.5512225 0.29342583 0.52270204 0.29342398 0.49418172 0.29342231 0.46566138 0.29342231
		 0.43714055 0.2934241 0.40861949 0.29342642 0.69384629 0.33372483 0.66532439 0.33375153
		 0.63680059 0.33376524 0.608275 0.33376858 0.57974833 0.33377406 0.55122262 0.33377215
		 0.52269799 0.33376849 0.49417391 0.3337608 0.46565178 0.33375603 0.43713072 0.33375245
		 0.40860966 0.3337467 0.69390768 0.37403604 0.66536456 0.37410679 0.63681513 0.37418476
		 0.60829061 0.37421229 0.57976717 0.37419865 0.55121702 0.37413946 0.522672 0.37410903
		 0.49415156 0.37409696 0.46563253 0.37408975 0.4371129 0.37408355 0.40859243 0.37407452
		 0.6940127 0.41436359 0.66540688 0.41447952 0.63682014 0.41460666 0.60831004 0.4146525
		 0.57980388 0.41462263 0.55122858 0.41451809 0.5226391 0.41444474 0.49412462 0.41443294
		 0.46561268 0.4144254 0.43709585 0.41441837 0.40857592 0.41440883 0.071206942 0.010126948
		 0.071206942 0.046342671 0.043481968 0.47037789 0.071206942 0.082620978 0.071206942
		 0.1188941 0.071206942 0.15512872 0.071206942 0.19132078 0.071206942 0.22744185 0.071206942
		 0.26365465 0.071206942 0.30000478 0.071206942 0.3362661 0.023060298 0.52139544 0.023060298
		 0.47025761 0.043481968 0.41923556 0.023060298 0.41896954 0.043481968 0.36809719 0.023060212
		 0.3676759 0.043481968 0.31695983 0.023060298 0.31649891 0.043481968 0.16354325 0.023060298
		 0.16289517 0.043481976 0.11240821 0.023060298 0.11169402 0.043481968 0.061272539
		 0.023060309 0.060492821 0.064276628 0.33576673 0.043481879 0.010126927 0.064276628
		 0.29958886 0.064276628 0.26339737 0.064276628 0.22720051 0.064276628 0.19100392 0.064276628
		 0.15482496 0.064276628 0.11865676 0.064276628 0.08248242 0.064276628 0.04630471 0.064276628
		 0.010126927 0.063415326 0.04630471 0.32940945 0.98976696 0.3294102 0.94452178 0.063415229
		 0.08248242 0.063415326 0.11865676 0.063415326 0.15482496 0.063415326 0.19100392 0.063415326
		 0.22720051 0.063415326 0.26339737 0.063415326 0.29958886 0.063415229 0.33576673 0.042621076
		 0.061272539 0.0091742873 0.98954982 0.3294102 0.89928412 0.042621076 0.11240821 0.32941905
		 0.85405529;
	setAttr ".uvst[0].uvsp[250:277]" 0.042621084 0.16354325 0.32950762 0.71836305
		 0.042621084 0.31695983 0.32959494 0.67321891 0.042621084 0.36809719 0.32979795 0.62774295
		 0.042621084 0.41923556 0.33001569 0.58232838 0.042621084 0.47037789 0.33031666 0.53678882
		 0.29802987 0.5369674 0.26590911 0.53699273 0.2335653 0.53709441 0.20163387 0.5370748
		 0.16959044 0.53705519 0.13749495 0.53700769 0.10540545 0.53702825 0.073298424 0.53708899
		 0.041198909 0.53715473 0.070346698 0.010127008 0.064276628 0.37193507 0.063415326
		 0.37193507 0.023060298 0.0092915678 0.023920344 0.0092915678 0.071206942 0.37238401
		 0.070346698 0.37238401 0.043481879 0.52151954 0.042621009 0.52151954;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 198 ".vt";
	setAttr ".vt[0:165]"  11.85436058 0 14.85000038 13.95436096 0.040110379 14.85000038
		 16.054359436 0.20460027 14.85000038 18.15435982 0.29909408 14.85000038 20.2543602 0.29909408 14.85000038
		 22.35436058 0.20460027 14.85000038 24.45436096 0.040110379 14.85000038 26.55435944 0.16669682 14.85000038
		 28.65435982 0.47110924 14.85000038 30.7543602 0.46905133 14.85000038 32.85436249 0.20496771 14.85000038
		 11.85436058 0 11.88000011 13.95436096 0.085310966 11.88000011 16.054359436 0.31718358 11.88000011
		 18.15435982 0.44064599 11.88000011 20.2543602 0.44064599 11.88000011 22.35436058 0.31718358 11.88000011
		 24.45436096 0.085310966 11.88000011 26.55435944 0.14414461 11.88000011 28.65435982 0.50282639 11.88000011
		 30.7543602 0.54659688 11.88000011 32.85436249 0.49386451 11.88000011 11.85436058 0 8.90999985
		 13.95436096 0.058129039 8.90999985 16.054359436 0.22781341 8.90999985 18.15435982 0.31960306 8.90999985
		 20.2543602 0.31960306 8.90999985 22.35436058 0.22781341 8.90999985 24.45436096 0.058129039 8.90999985
		 26.55435944 0.032962274 8.90999985 28.65435982 0.22329757 8.90999985 30.7543602 0.3370955 8.90999985
		 32.85436249 0.3370955 8.90999985 11.85436058 0 5.94000053 13.95436096 0.012312338 5.94000053
		 16.054359436 0.083407998 5.94000053 18.15435982 0.12591468 5.94000053 20.2543602 0.12591468 5.94000053
		 22.35436058 0.083407998 5.94000053 24.45436096 0.012312338 5.94000053 26.55435944 0 5.94000053
		 28.65435982 0 5.94000053 30.7543602 0 5.94000053 32.85436249 0 5.94000053 11.85436058 0 2.97000027
		 13.95436096 0 2.97000027 16.054359436 0 2.97000027 18.15435982 0 2.97000027 20.2543602 0 2.97000027
		 22.35436058 0 2.97000027 24.45436096 0 2.97000027 26.55435944 0 2.97000027 28.65435982 0 2.97000027
		 30.7543602 0 2.97000027 32.85436249 0 2.97000027 11.85436058 0 -5.94000053 13.95436096 0 -5.94000053
		 16.054359436 0 -5.94000053 18.15435982 0 -5.94000053 20.2543602 0 -5.94000053 22.35436058 0 -5.94000053
		 24.45436096 0 -5.94000053 26.55435944 0 -5.94000053 28.65435982 0 -5.94000053 30.7543602 0 -5.94000053
		 32.85436249 0 -5.94000053 11.85436058 0 -8.90999985 13.95436096 0 -8.90999985 16.054359436 0 -8.90999985
		 18.15435982 0 -8.90999985 20.2543602 0 -8.90999985 22.35436058 0 -8.90999985 24.45436096 0 -8.90999985
		 26.55435944 0 -8.90999985 28.65435982 0 -8.90999985 30.7543602 0 -8.90999985 32.85436249 0 -8.90999985
		 11.85436058 0.01289547 -11.87999916 13.95436096 0.095460273 -11.87999916 16.054359436 0.18703645 -11.87999916
		 18.15435982 0.21516587 -11.87999916 20.2543602 0.18703645 -11.87999916 22.35436058 0.095460273 -11.87999916
		 24.45436096 0.01289547 -11.87999916 26.55435944 0 -11.87999916 28.65435982 0 -11.87999916
		 30.7543602 0 -11.87999916 32.85436249 0 -11.87999916 11.85436058 0.053602248 -14.85000038
		 13.95436096 0.22257644 -14.85000038 16.054359436 0.37880221 -14.85000038 18.15435982 0.42355737 -14.85000038
		 20.2543602 0.37880221 -14.85000038 22.35436058 0.22257644 -14.85000038 24.45436096 0.053602248 -14.85000038
		 26.55435944 0 -14.85000038 28.65435982 0 -14.85000038 30.7543602 0 -14.85000038 32.85436249 0 -14.85000038
		 11.85286903 0.049976278 14.85037994 13.95126724 0.089979231 14.85085106 13.95119476 0.13521047 11.88012505
		 11.85276127 0.049973313 11.88007545 16.0507164 0.25442463 14.85172844 16.050708771 0.36704981 11.88017845
		 18.15306473 0.34900939 14.85225773 18.15307236 0.49062911 11.8801775 20.25565529 0.34900939 14.85225773
		 20.25564766 0.49062911 11.8801775 22.35800362 0.25442463 14.85172844 22.35801125 0.36704981 11.88017845
		 24.45560646 0.08996658 14.85075665 24.45607758 0.13528125 11.87984276 26.54935837 0.21636641 14.8501339
		 26.55013084 0.19395453 11.87895775 28.65021324 0.52079791 14.8504982 28.65019798 0.55262756 11.87840939
		 30.75598907 0.51892799 14.85199547 30.75486565 0.59658796 11.87920189 32.85811615 0.25473198 14.85307121
		 32.85655212 0.5436973 11.87999725 13.95181942 0.10805802 8.90920258 11.85308743 0.049980916 8.90969276
		 16.05141449 0.27769431 8.90820313 18.15332031 0.36953098 8.90752506 20.2553997 0.36953098 8.90752506
		 22.35730553 0.27769431 8.90820313 24.45627785 0.10808012 8.90889835 26.55218697 0.08288224 8.90818882
		 28.65136528 0.273081 8.90644455 30.7537117 0.3868992 8.90562153 32.85467529 0.38688666 8.90564251
		 13.95318794 0.062293343 5.93927717 11.85386753 0.049995579 5.93975592 16.052906036 0.1333562 5.93824911
		 18.15383339 0.17584969 5.93750668 20.25488663 0.17584969 5.93750668 22.35581398 0.1333562 5.93824911
		 24.45543671 0.062294494 5.93920803 26.55394173 0.04999293 5.9392705 28.65345573 0.049962468 5.93828726
		 30.7540226 0.049931891 5.93741369 32.85436249 0.04984051 5.937181 13.95411301 0.049998868 2.96977305
		 11.85428715 0.049999841 2.96994853 16.054021835 0.049994744 2.96935868 18.15423393 0.04999043 2.96903038
		 20.25448608 0.04999043 2.96903038 22.35469818 0.049994744 2.96935868 24.45460892 0.049998868 2.96977305
		 26.55439568 0.049999978 2.96997428 28.65435982 0.050000001 2.97000027 30.7543602 0.050000001 2.97000027
		 32.85436249 0.050000001 2.97000027 13.95436096 0.050000001 -5.94000053 11.85436058 0.050000004 -5.94000053
		 16.054359436 0.050000001 -5.94000053 18.15435982 0.050000001 -5.94000053 20.2543602 0.050000001 -5.94000053
		 22.35436058 0.050000001 -5.94000053 24.45436096 0.050000001 -5.94000053 26.55435944 0.050000001 -5.94000053
		 28.65435982 0.050000001 -5.94000053 30.7543602 0.050000001 -5.94000053 32.85436249 0.050000004 -5.94000053
		 13.95384312 0.049990565 -8.90917778;
	setAttr ".vt[166:197]" 11.85386944 0.049991019 -8.90954399 16.054002762 0.049978029 -8.90856075
		 18.15435982 0.049971439 -8.90830994 20.25471687 0.049978029 -8.90856075 22.35487938 0.049990565 -8.90917778
		 24.45464516 0.049998544 -8.90974522 26.55439758 0.049999978 -8.90997314 28.65435982 0.050000001 -8.90999985
		 30.7543602 0.050000001 -8.90999985 32.85436249 0.050000004 -8.90999985 13.95236015 0.14538622 -11.87815571
		 11.85237503 0.062831849 -11.87883854 16.053050995 0.23693232 -11.87705135 18.15435982 0.26505223 -11.87662983
		 20.25566864 0.23693234 -11.87705135 22.35636139 0.14538622 -11.87815571 24.45558929 0.062875561 -11.87930584
		 26.55459595 0.049999312 -11.87988663 28.65435982 0.050000001 -11.87999916 30.7543602 0.050000001 -11.87999916
		 32.85436249 0.050000004 -11.87999916 13.95139599 0.27244264 -14.84795761 11.85137177 0.10349298 -14.84859085
		 16.052455902 0.42866278 -14.846982 18.15435982 0.4734368 -14.84663963 20.25626373 0.42866278 -14.846982
		 22.3573246 0.27244264 -14.84795761 24.45624924 0.10354389 -14.84912395 26.55475426 0.049996279 -14.84982872
		 28.65435982 0.050000004 -14.85000038 30.7543602 0.050000004 -14.85000038 32.85436249 0.050000001 -14.85000038;
	setAttr -s 392 ".ed";
	setAttr ".ed[0:165]"  0 1 0 0 11 0 1 2 0 1 12 1 2 3 0 2 13 1 3 4 0 3 14 1
		 4 5 0 4 15 1 5 6 0 5 16 1 6 7 0 6 17 1 7 8 0 7 18 1 8 9 0 8 19 1 9 10 0 9 20 1 10 21 0
		 11 12 1 11 22 0 12 13 1 12 23 1 13 14 1 13 24 1 14 15 1 14 25 1 15 16 1 15 26 1 16 17 1
		 16 27 1 17 18 1 17 28 1 18 19 1 18 29 1 19 20 1 19 30 1 20 21 1 20 31 1 21 32 0 22 23 1
		 22 33 0 23 24 1 23 34 1 24 25 1 24 35 1 25 26 1 25 36 1 26 27 1 26 37 1 27 28 1 27 38 1
		 28 29 1 28 39 1 29 30 1 29 40 1 30 31 1 30 41 1 31 32 1 31 42 1 32 43 0 33 34 1 33 44 0
		 34 35 1 34 45 1 35 36 1 35 46 1 36 37 1 36 47 1 37 38 1 37 48 1 38 39 1 38 49 1 39 40 1
		 39 50 1 40 41 1 40 51 1 41 42 1 41 52 1 42 43 1 42 53 1 43 54 0 44 45 1 44 55 0 45 46 1
		 45 56 1 46 47 1 46 57 1 47 48 1 47 58 1 48 49 1 48 59 1 49 50 1 49 60 1 50 51 1 50 61 1
		 51 52 1 51 62 1 52 53 1 52 63 1 53 54 1 53 64 1 54 65 0 55 56 1 56 57 1 57 58 1 58 59 1
		 59 60 1 60 61 1 61 62 1 62 63 1 63 64 1 64 65 1 55 66 0 56 67 1 57 68 1 58 69 1 59 70 1
		 60 71 1 61 72 1 62 73 1 63 74 1 64 75 1 65 76 0 66 67 1 66 77 0 67 68 1 67 78 1 68 69 1
		 68 79 1 69 70 1 69 80 1 70 71 1 70 81 1 71 72 1 71 82 1 72 73 1 72 83 1 73 74 1 73 84 1
		 74 75 1 74 85 1 75 76 1 75 86 1 76 87 0 77 78 1 77 88 0 78 79 1 78 89 1 79 80 1 79 90 1
		 80 81 1 80 91 1 81 82 1 81 92 1 82 83 1 82 93 1 83 84 1 83 94 1 84 85 1 84 95 1 85 86 1
		 85 96 1 86 87 1;
	setAttr ".ed[166:331]" 86 97 1 87 98 0 88 89 0 89 90 0 90 91 0 91 92 0 92 93 0
		 93 94 0 94 95 0 95 96 0 96 97 0 97 98 0 0 99 0 1 100 1 99 100 0 100 101 1 11 102 1
		 102 101 1 99 102 0 2 103 1 100 103 0 103 104 1 101 104 1 3 105 1 103 105 0 105 106 1
		 104 106 1 4 107 1 105 107 0 107 108 1 106 108 1 5 109 1 107 109 0 109 110 1 108 110 1
		 6 111 1 109 111 0 111 112 1 110 112 1 7 113 1 111 113 0 113 114 1 112 114 1 8 115 1
		 113 115 0 115 116 1 114 116 1 9 117 1 115 117 0 117 118 1 116 118 1 10 119 0 117 119 0
		 21 120 1 119 120 0 118 120 1 101 121 1 22 122 1 122 121 1 102 122 0 104 123 1 121 123 1
		 106 124 1 123 124 1 108 125 1 124 125 1 110 126 1 125 126 1 112 127 1 126 127 1 114 128 1
		 127 128 1 116 129 1 128 129 1 118 130 1 129 130 1 32 131 1 120 131 0 130 131 1 121 132 1
		 33 133 1 133 132 1 122 133 0 123 134 1 132 134 1 124 135 1 134 135 1 125 136 1 135 136 1
		 126 137 1 136 137 1 127 138 1 137 138 1 128 139 1 138 139 1 129 140 1 139 140 1 130 141 1
		 140 141 1 43 142 1 131 142 0 141 142 1 132 143 1 44 144 1 144 143 1 133 144 0 134 145 1
		 143 145 1 135 146 1 145 146 1 136 147 1 146 147 1 137 148 1 147 148 1 138 149 1 148 149 1
		 139 150 1 149 150 1 140 151 1 150 151 1 141 152 1 151 152 1 54 153 1 142 153 0 152 153 1
		 143 154 1 55 155 1 155 154 1 144 155 0 145 156 1 154 156 1 146 157 1 156 157 1 147 158 1
		 157 158 1 148 159 1 158 159 1 149 160 1 159 160 1 150 161 1 160 161 1 151 162 1 161 162 1
		 152 163 1 162 163 1 65 164 1 153 164 0 163 164 1 154 165 1 66 166 1 166 165 1 155 166 0
		 156 167 1 165 167 1 157 168 1 167 168 1 158 169 1 168 169 1 159 170 1 169 170 1 160 171 1
		 170 171 1 161 172 1 171 172 1 162 173 1 172 173 1;
	setAttr ".ed[332:391]" 163 174 1 173 174 1 76 175 1 164 175 0 174 175 1 165 176 1
		 77 177 1 177 176 1 166 177 0 167 178 1 176 178 1 168 179 1 178 179 1 169 180 1 179 180 1
		 170 181 1 180 181 1 171 182 1 181 182 1 172 183 1 182 183 1 173 184 1 183 184 1 174 185 1
		 184 185 1 87 186 1 175 186 0 185 186 1 89 187 1 176 187 1 88 188 0 188 187 0 177 188 0
		 90 189 1 178 189 1 187 189 0 91 190 1 179 190 1 189 190 0 92 191 1 180 191 1 190 191 0
		 93 192 1 181 192 1 191 192 0 94 193 1 182 193 1 192 193 0 95 194 1 183 194 1 193 194 0
		 96 195 1 184 195 1 194 195 0 97 196 1 185 196 1 195 196 0 98 197 0 186 197 0 196 197 0;
	setAttr -s 196 -ch 784 ".fc[0:195]" -type "polyFaces" 
		f 4 180 181 -184 -185
		mu 0 4 0 268 2 3
		f 4 186 187 -189 -182
		mu 0 4 268 267 5 2
		f 4 190 191 -193 -188
		mu 0 4 267 266 7 5
		f 4 194 195 -197 -192
		mu 0 4 266 265 9 7
		f 4 198 199 -201 -196
		mu 0 4 265 264 11 9
		f 4 202 203 -205 -200
		mu 0 4 264 263 13 11
		f 4 206 207 -209 -204
		mu 0 4 263 262 15 13
		f 4 210 211 -213 -208
		mu 0 4 262 261 17 15
		f 4 214 215 -217 -212
		mu 0 4 261 260 19 17
		f 4 218 220 -222 -216
		mu 0 4 260 259 257 19
		f 4 183 222 -225 -226
		mu 0 4 3 2 22 23
		f 4 188 226 -228 -223
		mu 0 4 2 5 24 22
		f 4 192 228 -230 -227
		mu 0 4 5 7 25 24
		f 4 196 230 -232 -229
		mu 0 4 7 9 26 25
		f 4 200 232 -234 -231
		mu 0 4 9 11 27 26
		f 4 204 234 -236 -233
		mu 0 4 11 13 28 27
		f 4 208 236 -238 -235
		mu 0 4 13 15 29 28
		f 4 212 238 -240 -237
		mu 0 4 15 17 30 29
		f 4 216 240 -242 -239
		mu 0 4 17 19 31 30
		f 4 221 243 -245 -241
		mu 0 4 19 257 255 31
		f 4 224 245 -248 -249
		mu 0 4 23 22 33 34
		f 4 227 249 -251 -246
		mu 0 4 22 24 35 33
		f 4 229 251 -253 -250
		mu 0 4 24 25 36 35
		f 4 231 253 -255 -252
		mu 0 4 25 26 37 36
		f 4 233 255 -257 -254
		mu 0 4 26 27 38 37
		f 4 235 257 -259 -256
		mu 0 4 27 28 39 38
		f 4 237 259 -261 -258
		mu 0 4 28 29 40 39
		f 4 239 261 -263 -260
		mu 0 4 29 30 41 40
		f 4 241 263 -265 -262
		mu 0 4 30 31 42 41
		f 4 244 266 -268 -264
		mu 0 4 31 255 253 42
		f 4 247 268 -271 -272
		mu 0 4 34 33 44 45
		f 4 250 272 -274 -269
		mu 0 4 33 35 46 44
		f 4 252 274 -276 -273
		mu 0 4 35 36 47 46
		f 4 254 276 -278 -275
		mu 0 4 36 37 48 47
		f 4 256 278 -280 -277
		mu 0 4 37 38 49 48
		f 4 258 280 -282 -279
		mu 0 4 38 39 50 49
		f 4 260 282 -284 -281
		mu 0 4 39 40 51 50
		f 4 262 284 -286 -283
		mu 0 4 40 41 52 51
		f 4 264 286 -288 -285
		mu 0 4 41 42 53 52
		f 4 267 289 -291 -287
		mu 0 4 42 253 251 53
		f 4 270 291 -294 -295
		mu 0 4 45 44 55 56
		f 4 273 295 -297 -292
		mu 0 4 44 46 57 55
		f 4 275 297 -299 -296
		mu 0 4 46 47 58 57
		f 4 277 299 -301 -298
		mu 0 4 47 48 59 58
		f 4 279 301 -303 -300
		mu 0 4 48 49 60 59
		f 4 281 303 -305 -302
		mu 0 4 49 50 61 60
		f 4 283 305 -307 -304
		mu 0 4 50 51 62 61
		f 4 285 307 -309 -306
		mu 0 4 51 52 63 62
		f 4 287 309 -311 -308
		mu 0 4 52 53 64 63
		f 4 290 312 -314 -310
		mu 0 4 53 251 249 64
		f 4 293 314 -317 -318
		mu 0 4 56 55 66 67
		f 4 296 318 -320 -315
		mu 0 4 55 57 68 66
		f 4 298 320 -322 -319
		mu 0 4 57 58 69 68
		f 4 300 322 -324 -321
		mu 0 4 58 59 70 69
		f 4 302 324 -326 -323
		mu 0 4 59 60 71 70
		f 4 304 326 -328 -325
		mu 0 4 60 61 72 71
		f 4 306 328 -330 -327
		mu 0 4 61 62 73 72
		f 4 308 330 -332 -329
		mu 0 4 62 63 74 73
		f 4 310 332 -334 -331
		mu 0 4 63 64 75 74
		f 4 313 335 -337 -333
		mu 0 4 64 249 247 75
		f 4 316 337 -340 -341
		mu 0 4 67 66 77 78
		f 4 319 341 -343 -338
		mu 0 4 66 68 79 77
		f 4 321 343 -345 -342
		mu 0 4 68 69 80 79
		f 4 323 345 -347 -344
		mu 0 4 69 70 81 80
		f 4 325 347 -349 -346
		mu 0 4 70 71 82 81
		f 4 327 349 -351 -348
		mu 0 4 71 72 83 82
		f 4 329 351 -353 -350
		mu 0 4 72 73 84 83
		f 4 331 353 -355 -352
		mu 0 4 73 74 85 84
		f 4 333 355 -357 -354
		mu 0 4 74 75 86 85
		f 4 336 358 -360 -356
		mu 0 4 75 247 236 86
		f 4 339 361 -364 -365
		mu 0 4 78 77 88 246
		f 4 342 366 -368 -362
		mu 0 4 77 79 90 88
		f 4 344 369 -371 -367
		mu 0 4 79 80 91 90
		f 4 346 372 -374 -370
		mu 0 4 80 81 92 91
		f 4 348 375 -377 -373
		mu 0 4 81 82 93 92
		f 4 350 378 -380 -376
		mu 0 4 82 83 94 93
		f 4 352 381 -383 -379
		mu 0 4 83 84 95 94
		f 4 354 384 -386 -382
		mu 0 4 84 85 96 95
		f 4 356 387 -389 -385
		mu 0 4 85 86 97 96
		f 4 359 390 -392 -388
		mu 0 4 86 236 235 97
		f 4 1 21 -4 -1
		mu 0 4 99 100 101 102
		f 4 3 23 -6 -3
		mu 0 4 102 101 103 104
		f 4 5 25 -8 -5
		mu 0 4 104 103 105 106
		f 4 7 27 -10 -7
		mu 0 4 106 105 107 108
		f 4 9 29 -12 -9
		mu 0 4 108 107 109 110
		f 4 11 31 -14 -11
		mu 0 4 110 109 111 112
		f 4 13 33 -16 -13
		mu 0 4 112 111 113 114
		f 4 15 35 -18 -15
		mu 0 4 114 113 115 116
		f 4 17 37 -20 -17
		mu 0 4 116 115 117 118
		f 4 19 39 -21 -19
		mu 0 4 118 117 119 120
		f 4 22 42 -25 -22
		mu 0 4 100 121 122 101
		f 4 24 44 -27 -24
		mu 0 4 101 122 123 103
		f 4 26 46 -29 -26
		mu 0 4 103 123 124 105
		f 4 28 48 -31 -28
		mu 0 4 105 124 125 107
		f 4 30 50 -33 -30
		mu 0 4 107 125 126 109
		f 4 32 52 -35 -32
		mu 0 4 109 126 127 111
		f 4 34 54 -37 -34
		mu 0 4 111 127 128 113
		f 4 36 56 -39 -36
		mu 0 4 113 128 129 115
		f 4 38 58 -41 -38
		mu 0 4 115 129 130 117
		f 4 40 60 -42 -40
		mu 0 4 117 130 131 119
		f 4 43 63 -46 -43
		mu 0 4 121 132 133 122
		f 4 45 65 -48 -45
		mu 0 4 122 133 134 123
		f 4 47 67 -50 -47
		mu 0 4 123 134 135 124
		f 4 49 69 -52 -49
		mu 0 4 124 135 136 125
		f 4 51 71 -54 -51
		mu 0 4 125 136 137 126
		f 4 53 73 -56 -53
		mu 0 4 126 137 138 127
		f 4 55 75 -58 -55
		mu 0 4 127 138 139 128
		f 4 57 77 -60 -57
		mu 0 4 128 139 140 129
		f 4 59 79 -62 -59
		mu 0 4 129 140 141 130
		f 4 61 81 -63 -61
		mu 0 4 130 141 142 131
		f 4 64 84 -67 -64
		mu 0 4 132 143 144 133
		f 4 66 86 -69 -66
		mu 0 4 133 144 145 134
		f 4 68 88 -71 -68
		mu 0 4 134 145 146 135
		f 4 70 90 -73 -70
		mu 0 4 135 146 147 136
		f 4 72 92 -75 -72
		mu 0 4 136 147 148 137
		f 4 74 94 -77 -74
		mu 0 4 137 148 149 138
		f 4 76 96 -79 -76
		mu 0 4 138 149 150 139
		f 4 78 98 -81 -78
		mu 0 4 139 150 151 140
		f 4 80 100 -83 -80
		mu 0 4 140 151 152 141
		f 4 82 102 -84 -82
		mu 0 4 141 152 153 142
		f 4 85 105 -88 -85
		mu 0 4 143 154 155 144
		f 4 87 106 -90 -87
		mu 0 4 144 155 156 145
		f 4 89 107 -92 -89
		mu 0 4 145 156 157 146
		f 4 91 108 -94 -91
		mu 0 4 146 157 158 147
		f 4 93 109 -96 -93
		mu 0 4 147 158 159 148
		f 4 95 110 -98 -95
		mu 0 4 148 159 160 149
		f 4 97 111 -100 -97
		mu 0 4 149 160 161 150
		f 4 99 112 -102 -99
		mu 0 4 150 161 162 151
		f 4 101 113 -104 -101
		mu 0 4 151 162 163 152
		f 4 103 114 -105 -103
		mu 0 4 152 163 164 153
		f 4 115 126 -117 -106
		mu 0 4 154 165 166 155
		f 4 116 128 -118 -107
		mu 0 4 155 166 167 156
		f 4 117 130 -119 -108
		mu 0 4 156 167 168 157
		f 4 118 132 -120 -109
		mu 0 4 157 168 169 158
		f 4 119 134 -121 -110
		mu 0 4 158 169 170 159
		f 4 120 136 -122 -111
		mu 0 4 159 170 171 160
		f 4 121 138 -123 -112
		mu 0 4 160 171 172 161
		f 4 122 140 -124 -113
		mu 0 4 161 172 173 162
		f 4 123 142 -125 -114
		mu 0 4 162 173 174 163
		f 4 124 144 -126 -115
		mu 0 4 163 174 175 164
		f 4 127 147 -130 -127
		mu 0 4 165 176 177 166
		f 4 129 149 -132 -129
		mu 0 4 166 177 178 167
		f 4 131 151 -134 -131
		mu 0 4 167 178 179 168
		f 4 133 153 -136 -133
		mu 0 4 168 179 180 169
		f 4 135 155 -138 -135
		mu 0 4 169 180 181 170
		f 4 137 157 -140 -137
		mu 0 4 170 181 182 171
		f 4 139 159 -142 -139
		mu 0 4 171 182 183 172
		f 4 141 161 -144 -141
		mu 0 4 172 183 184 173
		f 4 143 163 -146 -143
		mu 0 4 173 184 185 174
		f 4 145 165 -147 -145
		mu 0 4 174 185 186 175
		f 4 148 168 -151 -148
		mu 0 4 176 187 188 177
		f 4 150 169 -153 -150
		mu 0 4 177 188 189 178
		f 4 152 170 -155 -152
		mu 0 4 178 189 190 179
		f 4 154 171 -157 -154
		mu 0 4 179 190 191 180
		f 4 156 172 -159 -156
		mu 0 4 180 191 192 181
		f 4 158 173 -161 -158
		mu 0 4 181 192 193 182
		f 4 160 174 -163 -160
		mu 0 4 182 193 194 183
		f 4 162 175 -165 -162
		mu 0 4 183 194 195 184
		f 4 164 176 -167 -164
		mu 0 4 184 195 196 185
		f 4 166 177 -168 -166
		mu 0 4 185 196 197 186
		f 4 0 179 -181 -179
		mu 0 4 198 199 1 269
		f 4 -2 178 184 -183
		mu 0 4 200 276 277 258
		f 4 2 185 -187 -180
		mu 0 4 199 201 4 1
		f 4 4 189 -191 -186
		mu 0 4 201 202 6 4
		f 4 6 193 -195 -190
		mu 0 4 202 203 8 6
		f 4 8 197 -199 -194
		mu 0 4 203 204 10 8
		f 4 10 201 -203 -198
		mu 0 4 204 205 12 10
		f 4 12 205 -207 -202
		mu 0 4 205 206 14 12
		f 4 14 209 -211 -206
		mu 0 4 206 207 16 14
		f 4 16 213 -215 -210
		mu 0 4 207 208 18 16
		f 4 18 217 -219 -214
		mu 0 4 208 274 275 18
		f 4 20 219 -221 -218
		mu 0 4 209 210 21 20
		f 4 -23 182 225 -224
		mu 0 4 211 200 258 256
		f 4 41 242 -244 -220
		mu 0 4 210 212 32 21
		f 4 -44 223 248 -247
		mu 0 4 213 211 256 254
		f 4 62 265 -267 -243
		mu 0 4 212 214 43 32
		f 4 -65 246 271 -270
		mu 0 4 215 213 254 252
		f 4 83 288 -290 -266
		mu 0 4 214 216 54 43
		f 4 -86 269 294 -293
		mu 0 4 217 215 252 250
		f 4 104 311 -313 -289
		mu 0 4 216 218 65 54
		f 4 -116 292 317 -316
		mu 0 4 219 217 250 248
		f 4 125 334 -336 -312
		mu 0 4 218 220 76 65
		f 4 -128 315 340 -339
		mu 0 4 221 219 248 245
		f 4 146 357 -359 -335
		mu 0 4 220 222 87 76
		f 4 -169 362 363 -361
		mu 0 4 223 270 271 244
		f 4 -149 338 364 -363
		mu 0 4 224 221 245 89
		f 4 -170 360 367 -366
		mu 0 4 225 223 244 243
		f 4 -171 365 370 -369
		mu 0 4 226 225 243 242
		f 4 -172 368 373 -372
		mu 0 4 227 226 242 241
		f 4 -173 371 376 -375
		mu 0 4 228 227 241 240
		f 4 -174 374 379 -378
		mu 0 4 229 228 240 239
		f 4 -175 377 382 -381
		mu 0 4 230 229 239 238
		f 4 -176 380 385 -384
		mu 0 4 231 230 238 237
		f 4 -177 383 388 -387
		mu 0 4 232 231 237 234
		f 4 167 389 -391 -358
		mu 0 4 222 272 273 87
		f 4 -178 386 391 -390
		mu 0 4 233 232 234 98;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 76 
		0 1.8 
		1 1.8 
		2 1.8 
		4 1.8 
		6 1.8 
		8 1.8 
		10 1.8 
		12 1.8 
		14 1.8 
		16 1.8 
		18 1.8 
		20 1.8 
		22 1.8 
		41 1.8 
		43 1.8 
		62 1.8 
		64 1.8 
		83 1.8 
		85 1.8 
		104 1.8 
		115 1.8 
		125 1.8 
		127 1.8 
		146 1.8 
		148 1.8 
		167 1.8 
		168 1.8 
		169 1.8 
		170 1.8 
		171 1.8 
		172 1.8 
		173 1.8 
		174 1.8 
		175 1.8 
		176 1.8 
		177 1.8 
		178 1.8 
		180 1.8 
		184 1.8 
		186 1.8 
		190 1.8 
		194 1.8 
		198 1.8 
		202 1.8 
		206 1.8 
		210 1.8 
		214 1.8 
		217 1.8 
		218 1.8 
		220 1.8 
		225 1.8 
		243 1.8 
		248 1.8 
		266 1.8 
		271 1.8 
		289 1.8 
		294 1.8 
		312 1.8 
		317 1.8 
		335 1.8 
		340 1.8 
		358 1.8 
		362 1.8 
		363 1.8 
		364 1.8 
		367 1.8 
		370 1.8 
		373 1.8 
		376 1.8 
		379 1.8 
		382 1.8 
		385 1.8 
		388 1.8 
		389 1.8 
		390 1.8 
		391 1.8 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "blatt_05" -p "notenblaetterRNfosterParent1";
	rename -uid "ADD3773E-4532-EA37-43B2-E988A3F9A422";
	setAttr ".t" -type "double3" -28.896073508188795 -6.4833413427590008e-13 58.737498086601121 ;
	setAttr ".r" -type "double3" 0 9.8874639451942432 0 ;
createNode mesh -n "blatt_Shape5" -p "blatt_05";
	rename -uid "5CC26B22-4D4A-A6BF-CCFB-B9B450678C94";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:195]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 57 "e[0:2]" "e[4]" "e[6]" "e[8]" "e[10]" "e[12]" "e[14]" "e[16]" "e[18]" "e[20]" "e[22]" "e[41]" "e[43]" "e[62]" "e[64]" "e[83]" "e[85]" "e[104]" "e[115]" "e[125]" "e[127]" "e[146]" "e[148]" "e[167:178]" "e[180]" "e[184]" "e[186]" "e[190]" "e[194]" "e[198]" "e[202]" "e[206]" "e[210]" "e[214]" "e[217:218]" "e[220]" "e[225]" "e[243]" "e[248]" "e[266]" "e[271]" "e[289]" "e[294]" "e[312]" "e[317]" "e[335]" "e[340]" "e[358]" "e[362:364]" "e[367]" "e[370]" "e[373]" "e[376]" "e[379]" "e[382]" "e[385]" "e[388:391]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 5 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[1].gtagnm" -type "string" "front";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[2].gtagnm" -type "string" "left";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[3].gtagnm" -type "string" "right";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 0;
	setAttr ".gtag[4].gtagnm" -type "string" "rim";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 0;
	setAttr ".pv" -type "double2" 0.60219384578626567 0.5772758424282074 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 278 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.0092220902 0.53721857 0.070346698
		 0.046342671 0.04128021 0.58242965 0.0092878938 0.58248246 0.070346698 0.082620978
		 0.073444158 0.58237779 0.070346698 0.1188941 0.10548815 0.58233738 0.070346698 0.15512872
		 0.13746715 0.58233804 0.070346698 0.19132066 0.16950968 0.58235133 0.070346698 0.22744191
		 0.20165238 0.58237255 0.070346698 0.26365447 0.233556 0.58239293 0.070346698 0.30000484
		 0.2659823 0.58224255 0.070346698 0.3362661 0.29799807 0.58225101 0.023920262 0.52139544
		 0.023920262 0.47025761 0.04136765 0.62771606 0.0093815327 0.62775445 0.073452681
		 0.62766337 0.10549551 0.62763304 0.13751003 0.62762821 0.16955671 0.62764657 0.20163745
		 0.62768805 0.23357674 0.62772912 0.2656984 0.62767255 0.29779348 0.62764329 0.023920262
		 0.41896954 0.041459799 0.67297113 0.0094745755 0.67299312 0.073474318 0.67295998
		 0.10550258 0.67295939 0.13753188 0.67295527 0.16956431 0.67295492 0.20158392 0.67296755
		 0.23356923 0.67298925 0.26557401 0.67303622 0.29759082 0.67312813 0.023920344 0.3676759
		 0.041517019 0.71820319 0.009525001 0.71820521 0.073513329 0.71820903 0.10551745 0.71821785
		 0.13752386 0.71822071 0.16952908 0.71821988 0.20152798 0.71822697 0.23352286 0.71824557
		 0.26551798 0.7182771 0.29751286 0.71832108 0.023920262 0.31649891 0.041480124 0.85391718
		 0.0094870925 0.85389864 0.073472619 0.85393596 0.10546586 0.85395199 0.13745978 0.85396743
		 0.1694532 0.85398197 0.20144624 0.85399491 0.23343906 0.85400754 0.265432 0.85402197
		 0.29742542 0.85403818 0.023920344 0.16289523 0.041430831 0.89914536 0.009436965 0.89910722
		 0.073429793 0.89916539 0.10543355 0.89917904 0.13743758 0.89920247 0.16943887 0.89923078
		 0.20143434 0.8992483 0.23342827 0.89925706 0.26542279 0.89926648 0.29741666 0.89927649
		 0.023920344 0.11169402 0.041344643 0.9443987 0.0093266368 0.94431603 0.073381126
		 0.94448298 0.10539922 0.94452083 0.1374169 0.944525 0.16945365 0.94449782 0.20146081
		 0.94449425 0.23343793 0.94450361 0.26542547 0.94451106 0.29741725 0.94451791 0.023920352
		 0.060492821 0.041263402 0.98968375 0.042621084 0.010126927 0.073346734 0.98982507
		 0.10535669 0.98988527 0.13736215 0.98987114 0.16943201 0.98978764 0.20148703 0.98973858
		 0.23345071 0.98974973 0.26542816 0.98975778 0.29741707 0.98976386 0.063415229 0.010126927
		 0.69417316 0.011116505 0.69409424 0.051463202 0.66555315 0.0514035 0.66564542 0.011052579
		 0.63687366 0.051344611 0.63702255 0.010992482 0.60833973 0.0512954 0.60843223 0.010932423
		 0.57986683 0.051282674 0.5798611 0.010900952 0.55133432 0.051281422 0.55128139 0.010922998
		 0.52265424 0.05128248 0.52268368 0.010914408 0.49413219 0.051274434 0.49413463 0.010911785
		 0.46522418 0.051113836 0.46531734 0.010819145 0.43674877 0.051128618 0.43675533 0.010781355
		 0.40823022 0.051191658 0.40799966 0.010630384 0.69399613 0.091816142 0.66546458 0.091761887
		 0.63685673 0.091688022 0.60831779 0.091638461 0.57980615 0.091620967 0.55126363 0.091633201
		 0.5226509 0.091666028 0.49412236 0.091679171 0.46547589 0.091590568 0.43689689 0.091542497
		 0.40837911 0.091617987 0.69390506 0.13214535 0.66538221 0.13210586 0.63683873 0.13206877
		 0.60829955 0.13204479 0.57976109 0.13202769 0.55121785 0.13202411 0.52266842 0.13203499
		 0.49413434 0.13204187 0.46559682 0.13205683 0.43706289 0.1321142 0.40853706 0.13217887
		 0.693847 0.17245236 0.66532511 0.17243502 0.63680035 0.17242143 0.60827285 0.17241162
		 0.57974392 0.1724007 0.55121535 0.17239103 0.52268833 0.17238963 0.4941633 0.17239566
		 0.46564046 0.17241091 0.43711814 0.17243707 0.40859619 0.17246138 0.69382602 0.29341769
		 0.66530544 0.29342154 0.63678533 0.29342523 0.60826451 0.29342684 0.57974333 0.29342729
		 0.5512225 0.29342583 0.52270204 0.29342398 0.49418172 0.29342231 0.46566138 0.29342231
		 0.43714055 0.2934241 0.40861949 0.29342642 0.69384629 0.33372483 0.66532439 0.33375153
		 0.63680059 0.33376524 0.608275 0.33376858 0.57974833 0.33377406 0.55122262 0.33377215
		 0.52269799 0.33376849 0.49417391 0.3337608 0.46565178 0.33375603 0.43713072 0.33375245
		 0.40860966 0.3337467 0.69390768 0.37403604 0.66536456 0.37410679 0.63681513 0.37418476
		 0.60829061 0.37421229 0.57976717 0.37419865 0.55121702 0.37413946 0.522672 0.37410903
		 0.49415156 0.37409696 0.46563253 0.37408975 0.4371129 0.37408355 0.40859243 0.37407452
		 0.6940127 0.41436359 0.66540688 0.41447952 0.63682014 0.41460666 0.60831004 0.4146525
		 0.57980388 0.41462263 0.55122858 0.41451809 0.5226391 0.41444474 0.49412462 0.41443294
		 0.46561268 0.4144254 0.43709585 0.41441837 0.40857592 0.41440883 0.071206942 0.010126948
		 0.071206942 0.046342671 0.043481968 0.47037789 0.071206942 0.082620978 0.071206942
		 0.1188941 0.071206942 0.15512872 0.071206942 0.19132078 0.071206942 0.22744185 0.071206942
		 0.26365465 0.071206942 0.30000478 0.071206942 0.3362661 0.023060298 0.52139544 0.023060298
		 0.47025761 0.043481968 0.41923556 0.023060298 0.41896954 0.043481968 0.36809719 0.023060212
		 0.3676759 0.043481968 0.31695983 0.023060298 0.31649891 0.043481968 0.16354325 0.023060298
		 0.16289517 0.043481976 0.11240821 0.023060298 0.11169402 0.043481968 0.061272539
		 0.023060309 0.060492821 0.064276628 0.33576673 0.043481879 0.010126927 0.064276628
		 0.29958886 0.064276628 0.26339737 0.064276628 0.22720051 0.064276628 0.19100392 0.064276628
		 0.15482496 0.064276628 0.11865676 0.064276628 0.08248242 0.064276628 0.04630471 0.064276628
		 0.010126927 0.063415326 0.04630471 0.32940945 0.98976696 0.3294102 0.94452178 0.063415229
		 0.08248242 0.063415326 0.11865676 0.063415326 0.15482496 0.063415326 0.19100392 0.063415326
		 0.22720051 0.063415326 0.26339737 0.063415326 0.29958886 0.063415229 0.33576673 0.042621076
		 0.061272539 0.0091742873 0.98954982 0.3294102 0.89928412 0.042621076 0.11240821 0.32941905
		 0.85405529;
	setAttr ".uvst[0].uvsp[250:277]" 0.042621084 0.16354325 0.32950762 0.71836305
		 0.042621084 0.31695983 0.32959494 0.67321891 0.042621084 0.36809719 0.32979795 0.62774295
		 0.042621084 0.41923556 0.33001569 0.58232838 0.042621084 0.47037789 0.33031666 0.53678882
		 0.29802987 0.5369674 0.26590911 0.53699273 0.2335653 0.53709441 0.20163387 0.5370748
		 0.16959044 0.53705519 0.13749495 0.53700769 0.10540545 0.53702825 0.073298424 0.53708899
		 0.041198909 0.53715473 0.070346698 0.010127008 0.064276628 0.37193507 0.063415326
		 0.37193507 0.023060298 0.0092915678 0.023920344 0.0092915678 0.071206942 0.37238401
		 0.070346698 0.37238401 0.043481879 0.52151954 0.042621009 0.52151954;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 198 ".vt";
	setAttr ".vt[0:165]"  11.85436058 0 14.85000038 13.95436096 0.040110379 14.85000038
		 16.054359436 0.20460027 14.85000038 18.15435982 0.29909408 14.85000038 20.2543602 0.29909408 14.85000038
		 22.35436058 0.20460027 14.85000038 24.45436096 0.040110379 14.85000038 26.55435944 0.16669682 14.85000038
		 28.65435982 0.47110924 14.85000038 30.7543602 0.46905133 14.85000038 32.85436249 0.20496771 14.85000038
		 11.85436058 0 11.88000011 13.95436096 0.085310966 11.88000011 16.054359436 0.31718358 11.88000011
		 18.15435982 0.44064599 11.88000011 20.2543602 0.44064599 11.88000011 22.35436058 0.31718358 11.88000011
		 24.45436096 0.085310966 11.88000011 26.55435944 0.14414461 11.88000011 28.65435982 0.50282639 11.88000011
		 30.7543602 0.54659688 11.88000011 32.85436249 0.49386451 11.88000011 11.85436058 0 8.90999985
		 13.95436096 0.058129039 8.90999985 16.054359436 0.22781341 8.90999985 18.15435982 0.31960306 8.90999985
		 20.2543602 0.31960306 8.90999985 22.35436058 0.22781341 8.90999985 24.45436096 0.058129039 8.90999985
		 26.55435944 0.032962274 8.90999985 28.65435982 0.22329757 8.90999985 30.7543602 0.3370955 8.90999985
		 32.85436249 0.3370955 8.90999985 11.85436058 0 5.94000053 13.95436096 0.012312338 5.94000053
		 16.054359436 0.083407998 5.94000053 18.15435982 0.12591468 5.94000053 20.2543602 0.12591468 5.94000053
		 22.35436058 0.083407998 5.94000053 24.45436096 0.012312338 5.94000053 26.55435944 0 5.94000053
		 28.65435982 0 5.94000053 30.7543602 0 5.94000053 32.85436249 0 5.94000053 11.85436058 0 2.97000027
		 13.95436096 0 2.97000027 16.054359436 0 2.97000027 18.15435982 0 2.97000027 20.2543602 0 2.97000027
		 22.35436058 0 2.97000027 24.45436096 0 2.97000027 26.55435944 0 2.97000027 28.65435982 0 2.97000027
		 30.7543602 0 2.97000027 32.85436249 0 2.97000027 11.85436058 0 -5.94000053 13.95436096 0 -5.94000053
		 16.054359436 0 -5.94000053 18.15435982 0 -5.94000053 20.2543602 0 -5.94000053 22.35436058 0 -5.94000053
		 24.45436096 0 -5.94000053 26.55435944 0 -5.94000053 28.65435982 0 -5.94000053 30.7543602 0 -5.94000053
		 32.85436249 0 -5.94000053 11.85436058 0 -8.90999985 13.95436096 0 -8.90999985 16.054359436 0 -8.90999985
		 18.15435982 0 -8.90999985 20.2543602 0 -8.90999985 22.35436058 0 -8.90999985 24.45436096 0 -8.90999985
		 26.55435944 0 -8.90999985 28.65435982 0 -8.90999985 30.7543602 0 -8.90999985 32.85436249 0 -8.90999985
		 11.85436058 0.01289547 -11.87999916 13.95436096 0.095460273 -11.87999916 16.054359436 0.18703645 -11.87999916
		 18.15435982 0.21516587 -11.87999916 20.2543602 0.18703645 -11.87999916 22.35436058 0.095460273 -11.87999916
		 24.45436096 0.01289547 -11.87999916 26.55435944 0 -11.87999916 28.65435982 0 -11.87999916
		 30.7543602 0 -11.87999916 32.85436249 0 -11.87999916 11.85436058 0.053602248 -14.85000038
		 13.95436096 0.22257644 -14.85000038 16.054359436 0.37880221 -14.85000038 18.15435982 0.42355737 -14.85000038
		 20.2543602 0.37880221 -14.85000038 22.35436058 0.22257644 -14.85000038 24.45436096 0.053602248 -14.85000038
		 26.55435944 0 -14.85000038 28.65435982 0 -14.85000038 30.7543602 0 -14.85000038 32.85436249 0 -14.85000038
		 11.85286903 0.049976278 14.85037994 13.95126724 0.089979231 14.85085106 13.95119476 0.13521047 11.88012505
		 11.85276127 0.049973313 11.88007545 16.0507164 0.25442463 14.85172844 16.050708771 0.36704981 11.88017845
		 18.15306473 0.34900939 14.85225773 18.15307236 0.49062911 11.8801775 20.25565529 0.34900939 14.85225773
		 20.25564766 0.49062911 11.8801775 22.35800362 0.25442463 14.85172844 22.35801125 0.36704981 11.88017845
		 24.45560646 0.08996658 14.85075665 24.45607758 0.13528125 11.87984276 26.54935837 0.21636641 14.8501339
		 26.55013084 0.19395453 11.87895775 28.65021324 0.52079791 14.8504982 28.65019798 0.55262756 11.87840939
		 30.75598907 0.51892799 14.85199547 30.75486565 0.59658796 11.87920189 32.85811615 0.25473198 14.85307121
		 32.85655212 0.5436973 11.87999725 13.95181942 0.10805802 8.90920258 11.85308743 0.049980916 8.90969276
		 16.05141449 0.27769431 8.90820313 18.15332031 0.36953098 8.90752506 20.2553997 0.36953098 8.90752506
		 22.35730553 0.27769431 8.90820313 24.45627785 0.10808012 8.90889835 26.55218697 0.08288224 8.90818882
		 28.65136528 0.273081 8.90644455 30.7537117 0.3868992 8.90562153 32.85467529 0.38688666 8.90564251
		 13.95318794 0.062293343 5.93927717 11.85386753 0.049995579 5.93975592 16.052906036 0.1333562 5.93824911
		 18.15383339 0.17584969 5.93750668 20.25488663 0.17584969 5.93750668 22.35581398 0.1333562 5.93824911
		 24.45543671 0.062294494 5.93920803 26.55394173 0.04999293 5.9392705 28.65345573 0.049962468 5.93828726
		 30.7540226 0.049931891 5.93741369 32.85436249 0.04984051 5.937181 13.95411301 0.049998868 2.96977305
		 11.85428715 0.049999841 2.96994853 16.054021835 0.049994744 2.96935868 18.15423393 0.04999043 2.96903038
		 20.25448608 0.04999043 2.96903038 22.35469818 0.049994744 2.96935868 24.45460892 0.049998868 2.96977305
		 26.55439568 0.049999978 2.96997428 28.65435982 0.050000001 2.97000027 30.7543602 0.050000001 2.97000027
		 32.85436249 0.050000001 2.97000027 13.95436096 0.050000001 -5.94000053 11.85436058 0.050000004 -5.94000053
		 16.054359436 0.050000001 -5.94000053 18.15435982 0.050000001 -5.94000053 20.2543602 0.050000001 -5.94000053
		 22.35436058 0.050000001 -5.94000053 24.45436096 0.050000001 -5.94000053 26.55435944 0.050000001 -5.94000053
		 28.65435982 0.050000001 -5.94000053 30.7543602 0.050000001 -5.94000053 32.85436249 0.050000004 -5.94000053
		 13.95384312 0.049990565 -8.90917778;
	setAttr ".vt[166:197]" 11.85386944 0.049991019 -8.90954399 16.054002762 0.049978029 -8.90856075
		 18.15435982 0.049971439 -8.90830994 20.25471687 0.049978029 -8.90856075 22.35487938 0.049990565 -8.90917778
		 24.45464516 0.049998544 -8.90974522 26.55439758 0.049999978 -8.90997314 28.65435982 0.050000001 -8.90999985
		 30.7543602 0.050000001 -8.90999985 32.85436249 0.050000004 -8.90999985 13.95236015 0.14538622 -11.87815571
		 11.85237503 0.062831849 -11.87883854 16.053050995 0.23693232 -11.87705135 18.15435982 0.26505223 -11.87662983
		 20.25566864 0.23693234 -11.87705135 22.35636139 0.14538622 -11.87815571 24.45558929 0.062875561 -11.87930584
		 26.55459595 0.049999312 -11.87988663 28.65435982 0.050000001 -11.87999916 30.7543602 0.050000001 -11.87999916
		 32.85436249 0.050000004 -11.87999916 13.95139599 0.27244264 -14.84795761 11.85137177 0.10349298 -14.84859085
		 16.052455902 0.42866278 -14.846982 18.15435982 0.4734368 -14.84663963 20.25626373 0.42866278 -14.846982
		 22.3573246 0.27244264 -14.84795761 24.45624924 0.10354389 -14.84912395 26.55475426 0.049996279 -14.84982872
		 28.65435982 0.050000004 -14.85000038 30.7543602 0.050000004 -14.85000038 32.85436249 0.050000001 -14.85000038;
	setAttr -s 392 ".ed";
	setAttr ".ed[0:165]"  0 1 0 0 11 0 1 2 0 1 12 1 2 3 0 2 13 1 3 4 0 3 14 1
		 4 5 0 4 15 1 5 6 0 5 16 1 6 7 0 6 17 1 7 8 0 7 18 1 8 9 0 8 19 1 9 10 0 9 20 1 10 21 0
		 11 12 1 11 22 0 12 13 1 12 23 1 13 14 1 13 24 1 14 15 1 14 25 1 15 16 1 15 26 1 16 17 1
		 16 27 1 17 18 1 17 28 1 18 19 1 18 29 1 19 20 1 19 30 1 20 21 1 20 31 1 21 32 0 22 23 1
		 22 33 0 23 24 1 23 34 1 24 25 1 24 35 1 25 26 1 25 36 1 26 27 1 26 37 1 27 28 1 27 38 1
		 28 29 1 28 39 1 29 30 1 29 40 1 30 31 1 30 41 1 31 32 1 31 42 1 32 43 0 33 34 1 33 44 0
		 34 35 1 34 45 1 35 36 1 35 46 1 36 37 1 36 47 1 37 38 1 37 48 1 38 39 1 38 49 1 39 40 1
		 39 50 1 40 41 1 40 51 1 41 42 1 41 52 1 42 43 1 42 53 1 43 54 0 44 45 1 44 55 0 45 46 1
		 45 56 1 46 47 1 46 57 1 47 48 1 47 58 1 48 49 1 48 59 1 49 50 1 49 60 1 50 51 1 50 61 1
		 51 52 1 51 62 1 52 53 1 52 63 1 53 54 1 53 64 1 54 65 0 55 56 1 56 57 1 57 58 1 58 59 1
		 59 60 1 60 61 1 61 62 1 62 63 1 63 64 1 64 65 1 55 66 0 56 67 1 57 68 1 58 69 1 59 70 1
		 60 71 1 61 72 1 62 73 1 63 74 1 64 75 1 65 76 0 66 67 1 66 77 0 67 68 1 67 78 1 68 69 1
		 68 79 1 69 70 1 69 80 1 70 71 1 70 81 1 71 72 1 71 82 1 72 73 1 72 83 1 73 74 1 73 84 1
		 74 75 1 74 85 1 75 76 1 75 86 1 76 87 0 77 78 1 77 88 0 78 79 1 78 89 1 79 80 1 79 90 1
		 80 81 1 80 91 1 81 82 1 81 92 1 82 83 1 82 93 1 83 84 1 83 94 1 84 85 1 84 95 1 85 86 1
		 85 96 1 86 87 1;
	setAttr ".ed[166:331]" 86 97 1 87 98 0 88 89 0 89 90 0 90 91 0 91 92 0 92 93 0
		 93 94 0 94 95 0 95 96 0 96 97 0 97 98 0 0 99 0 1 100 1 99 100 0 100 101 1 11 102 1
		 102 101 1 99 102 0 2 103 1 100 103 0 103 104 1 101 104 1 3 105 1 103 105 0 105 106 1
		 104 106 1 4 107 1 105 107 0 107 108 1 106 108 1 5 109 1 107 109 0 109 110 1 108 110 1
		 6 111 1 109 111 0 111 112 1 110 112 1 7 113 1 111 113 0 113 114 1 112 114 1 8 115 1
		 113 115 0 115 116 1 114 116 1 9 117 1 115 117 0 117 118 1 116 118 1 10 119 0 117 119 0
		 21 120 1 119 120 0 118 120 1 101 121 1 22 122 1 122 121 1 102 122 0 104 123 1 121 123 1
		 106 124 1 123 124 1 108 125 1 124 125 1 110 126 1 125 126 1 112 127 1 126 127 1 114 128 1
		 127 128 1 116 129 1 128 129 1 118 130 1 129 130 1 32 131 1 120 131 0 130 131 1 121 132 1
		 33 133 1 133 132 1 122 133 0 123 134 1 132 134 1 124 135 1 134 135 1 125 136 1 135 136 1
		 126 137 1 136 137 1 127 138 1 137 138 1 128 139 1 138 139 1 129 140 1 139 140 1 130 141 1
		 140 141 1 43 142 1 131 142 0 141 142 1 132 143 1 44 144 1 144 143 1 133 144 0 134 145 1
		 143 145 1 135 146 1 145 146 1 136 147 1 146 147 1 137 148 1 147 148 1 138 149 1 148 149 1
		 139 150 1 149 150 1 140 151 1 150 151 1 141 152 1 151 152 1 54 153 1 142 153 0 152 153 1
		 143 154 1 55 155 1 155 154 1 144 155 0 145 156 1 154 156 1 146 157 1 156 157 1 147 158 1
		 157 158 1 148 159 1 158 159 1 149 160 1 159 160 1 150 161 1 160 161 1 151 162 1 161 162 1
		 152 163 1 162 163 1 65 164 1 153 164 0 163 164 1 154 165 1 66 166 1 166 165 1 155 166 0
		 156 167 1 165 167 1 157 168 1 167 168 1 158 169 1 168 169 1 159 170 1 169 170 1 160 171 1
		 170 171 1 161 172 1 171 172 1 162 173 1 172 173 1;
	setAttr ".ed[332:391]" 163 174 1 173 174 1 76 175 1 164 175 0 174 175 1 165 176 1
		 77 177 1 177 176 1 166 177 0 167 178 1 176 178 1 168 179 1 178 179 1 169 180 1 179 180 1
		 170 181 1 180 181 1 171 182 1 181 182 1 172 183 1 182 183 1 173 184 1 183 184 1 174 185 1
		 184 185 1 87 186 1 175 186 0 185 186 1 89 187 1 176 187 1 88 188 0 188 187 0 177 188 0
		 90 189 1 178 189 1 187 189 0 91 190 1 179 190 1 189 190 0 92 191 1 180 191 1 190 191 0
		 93 192 1 181 192 1 191 192 0 94 193 1 182 193 1 192 193 0 95 194 1 183 194 1 193 194 0
		 96 195 1 184 195 1 194 195 0 97 196 1 185 196 1 195 196 0 98 197 0 186 197 0 196 197 0;
	setAttr -s 196 -ch 784 ".fc[0:195]" -type "polyFaces" 
		f 4 180 181 -184 -185
		mu 0 4 0 268 2 3
		f 4 186 187 -189 -182
		mu 0 4 268 267 5 2
		f 4 190 191 -193 -188
		mu 0 4 267 266 7 5
		f 4 194 195 -197 -192
		mu 0 4 266 265 9 7
		f 4 198 199 -201 -196
		mu 0 4 265 264 11 9
		f 4 202 203 -205 -200
		mu 0 4 264 263 13 11
		f 4 206 207 -209 -204
		mu 0 4 263 262 15 13
		f 4 210 211 -213 -208
		mu 0 4 262 261 17 15
		f 4 214 215 -217 -212
		mu 0 4 261 260 19 17
		f 4 218 220 -222 -216
		mu 0 4 260 259 257 19
		f 4 183 222 -225 -226
		mu 0 4 3 2 22 23
		f 4 188 226 -228 -223
		mu 0 4 2 5 24 22
		f 4 192 228 -230 -227
		mu 0 4 5 7 25 24
		f 4 196 230 -232 -229
		mu 0 4 7 9 26 25
		f 4 200 232 -234 -231
		mu 0 4 9 11 27 26
		f 4 204 234 -236 -233
		mu 0 4 11 13 28 27
		f 4 208 236 -238 -235
		mu 0 4 13 15 29 28
		f 4 212 238 -240 -237
		mu 0 4 15 17 30 29
		f 4 216 240 -242 -239
		mu 0 4 17 19 31 30
		f 4 221 243 -245 -241
		mu 0 4 19 257 255 31
		f 4 224 245 -248 -249
		mu 0 4 23 22 33 34
		f 4 227 249 -251 -246
		mu 0 4 22 24 35 33
		f 4 229 251 -253 -250
		mu 0 4 24 25 36 35
		f 4 231 253 -255 -252
		mu 0 4 25 26 37 36
		f 4 233 255 -257 -254
		mu 0 4 26 27 38 37
		f 4 235 257 -259 -256
		mu 0 4 27 28 39 38
		f 4 237 259 -261 -258
		mu 0 4 28 29 40 39
		f 4 239 261 -263 -260
		mu 0 4 29 30 41 40
		f 4 241 263 -265 -262
		mu 0 4 30 31 42 41
		f 4 244 266 -268 -264
		mu 0 4 31 255 253 42
		f 4 247 268 -271 -272
		mu 0 4 34 33 44 45
		f 4 250 272 -274 -269
		mu 0 4 33 35 46 44
		f 4 252 274 -276 -273
		mu 0 4 35 36 47 46
		f 4 254 276 -278 -275
		mu 0 4 36 37 48 47
		f 4 256 278 -280 -277
		mu 0 4 37 38 49 48
		f 4 258 280 -282 -279
		mu 0 4 38 39 50 49
		f 4 260 282 -284 -281
		mu 0 4 39 40 51 50
		f 4 262 284 -286 -283
		mu 0 4 40 41 52 51
		f 4 264 286 -288 -285
		mu 0 4 41 42 53 52
		f 4 267 289 -291 -287
		mu 0 4 42 253 251 53
		f 4 270 291 -294 -295
		mu 0 4 45 44 55 56
		f 4 273 295 -297 -292
		mu 0 4 44 46 57 55
		f 4 275 297 -299 -296
		mu 0 4 46 47 58 57
		f 4 277 299 -301 -298
		mu 0 4 47 48 59 58
		f 4 279 301 -303 -300
		mu 0 4 48 49 60 59
		f 4 281 303 -305 -302
		mu 0 4 49 50 61 60
		f 4 283 305 -307 -304
		mu 0 4 50 51 62 61
		f 4 285 307 -309 -306
		mu 0 4 51 52 63 62
		f 4 287 309 -311 -308
		mu 0 4 52 53 64 63
		f 4 290 312 -314 -310
		mu 0 4 53 251 249 64
		f 4 293 314 -317 -318
		mu 0 4 56 55 66 67
		f 4 296 318 -320 -315
		mu 0 4 55 57 68 66
		f 4 298 320 -322 -319
		mu 0 4 57 58 69 68
		f 4 300 322 -324 -321
		mu 0 4 58 59 70 69
		f 4 302 324 -326 -323
		mu 0 4 59 60 71 70
		f 4 304 326 -328 -325
		mu 0 4 60 61 72 71
		f 4 306 328 -330 -327
		mu 0 4 61 62 73 72
		f 4 308 330 -332 -329
		mu 0 4 62 63 74 73
		f 4 310 332 -334 -331
		mu 0 4 63 64 75 74
		f 4 313 335 -337 -333
		mu 0 4 64 249 247 75
		f 4 316 337 -340 -341
		mu 0 4 67 66 77 78
		f 4 319 341 -343 -338
		mu 0 4 66 68 79 77
		f 4 321 343 -345 -342
		mu 0 4 68 69 80 79
		f 4 323 345 -347 -344
		mu 0 4 69 70 81 80
		f 4 325 347 -349 -346
		mu 0 4 70 71 82 81
		f 4 327 349 -351 -348
		mu 0 4 71 72 83 82
		f 4 329 351 -353 -350
		mu 0 4 72 73 84 83
		f 4 331 353 -355 -352
		mu 0 4 73 74 85 84
		f 4 333 355 -357 -354
		mu 0 4 74 75 86 85
		f 4 336 358 -360 -356
		mu 0 4 75 247 236 86
		f 4 339 361 -364 -365
		mu 0 4 78 77 88 246
		f 4 342 366 -368 -362
		mu 0 4 77 79 90 88
		f 4 344 369 -371 -367
		mu 0 4 79 80 91 90
		f 4 346 372 -374 -370
		mu 0 4 80 81 92 91
		f 4 348 375 -377 -373
		mu 0 4 81 82 93 92
		f 4 350 378 -380 -376
		mu 0 4 82 83 94 93
		f 4 352 381 -383 -379
		mu 0 4 83 84 95 94
		f 4 354 384 -386 -382
		mu 0 4 84 85 96 95
		f 4 356 387 -389 -385
		mu 0 4 85 86 97 96
		f 4 359 390 -392 -388
		mu 0 4 86 236 235 97
		f 4 1 21 -4 -1
		mu 0 4 99 100 101 102
		f 4 3 23 -6 -3
		mu 0 4 102 101 103 104
		f 4 5 25 -8 -5
		mu 0 4 104 103 105 106
		f 4 7 27 -10 -7
		mu 0 4 106 105 107 108
		f 4 9 29 -12 -9
		mu 0 4 108 107 109 110
		f 4 11 31 -14 -11
		mu 0 4 110 109 111 112
		f 4 13 33 -16 -13
		mu 0 4 112 111 113 114
		f 4 15 35 -18 -15
		mu 0 4 114 113 115 116
		f 4 17 37 -20 -17
		mu 0 4 116 115 117 118
		f 4 19 39 -21 -19
		mu 0 4 118 117 119 120
		f 4 22 42 -25 -22
		mu 0 4 100 121 122 101
		f 4 24 44 -27 -24
		mu 0 4 101 122 123 103
		f 4 26 46 -29 -26
		mu 0 4 103 123 124 105
		f 4 28 48 -31 -28
		mu 0 4 105 124 125 107
		f 4 30 50 -33 -30
		mu 0 4 107 125 126 109
		f 4 32 52 -35 -32
		mu 0 4 109 126 127 111
		f 4 34 54 -37 -34
		mu 0 4 111 127 128 113
		f 4 36 56 -39 -36
		mu 0 4 113 128 129 115
		f 4 38 58 -41 -38
		mu 0 4 115 129 130 117
		f 4 40 60 -42 -40
		mu 0 4 117 130 131 119
		f 4 43 63 -46 -43
		mu 0 4 121 132 133 122
		f 4 45 65 -48 -45
		mu 0 4 122 133 134 123
		f 4 47 67 -50 -47
		mu 0 4 123 134 135 124
		f 4 49 69 -52 -49
		mu 0 4 124 135 136 125
		f 4 51 71 -54 -51
		mu 0 4 125 136 137 126
		f 4 53 73 -56 -53
		mu 0 4 126 137 138 127
		f 4 55 75 -58 -55
		mu 0 4 127 138 139 128
		f 4 57 77 -60 -57
		mu 0 4 128 139 140 129
		f 4 59 79 -62 -59
		mu 0 4 129 140 141 130
		f 4 61 81 -63 -61
		mu 0 4 130 141 142 131
		f 4 64 84 -67 -64
		mu 0 4 132 143 144 133
		f 4 66 86 -69 -66
		mu 0 4 133 144 145 134
		f 4 68 88 -71 -68
		mu 0 4 134 145 146 135
		f 4 70 90 -73 -70
		mu 0 4 135 146 147 136
		f 4 72 92 -75 -72
		mu 0 4 136 147 148 137
		f 4 74 94 -77 -74
		mu 0 4 137 148 149 138
		f 4 76 96 -79 -76
		mu 0 4 138 149 150 139
		f 4 78 98 -81 -78
		mu 0 4 139 150 151 140
		f 4 80 100 -83 -80
		mu 0 4 140 151 152 141
		f 4 82 102 -84 -82
		mu 0 4 141 152 153 142
		f 4 85 105 -88 -85
		mu 0 4 143 154 155 144
		f 4 87 106 -90 -87
		mu 0 4 144 155 156 145
		f 4 89 107 -92 -89
		mu 0 4 145 156 157 146
		f 4 91 108 -94 -91
		mu 0 4 146 157 158 147
		f 4 93 109 -96 -93
		mu 0 4 147 158 159 148
		f 4 95 110 -98 -95
		mu 0 4 148 159 160 149
		f 4 97 111 -100 -97
		mu 0 4 149 160 161 150
		f 4 99 112 -102 -99
		mu 0 4 150 161 162 151
		f 4 101 113 -104 -101
		mu 0 4 151 162 163 152
		f 4 103 114 -105 -103
		mu 0 4 152 163 164 153
		f 4 115 126 -117 -106
		mu 0 4 154 165 166 155
		f 4 116 128 -118 -107
		mu 0 4 155 166 167 156
		f 4 117 130 -119 -108
		mu 0 4 156 167 168 157
		f 4 118 132 -120 -109
		mu 0 4 157 168 169 158
		f 4 119 134 -121 -110
		mu 0 4 158 169 170 159
		f 4 120 136 -122 -111
		mu 0 4 159 170 171 160
		f 4 121 138 -123 -112
		mu 0 4 160 171 172 161
		f 4 122 140 -124 -113
		mu 0 4 161 172 173 162
		f 4 123 142 -125 -114
		mu 0 4 162 173 174 163
		f 4 124 144 -126 -115
		mu 0 4 163 174 175 164
		f 4 127 147 -130 -127
		mu 0 4 165 176 177 166
		f 4 129 149 -132 -129
		mu 0 4 166 177 178 167
		f 4 131 151 -134 -131
		mu 0 4 167 178 179 168
		f 4 133 153 -136 -133
		mu 0 4 168 179 180 169
		f 4 135 155 -138 -135
		mu 0 4 169 180 181 170
		f 4 137 157 -140 -137
		mu 0 4 170 181 182 171
		f 4 139 159 -142 -139
		mu 0 4 171 182 183 172
		f 4 141 161 -144 -141
		mu 0 4 172 183 184 173
		f 4 143 163 -146 -143
		mu 0 4 173 184 185 174
		f 4 145 165 -147 -145
		mu 0 4 174 185 186 175
		f 4 148 168 -151 -148
		mu 0 4 176 187 188 177
		f 4 150 169 -153 -150
		mu 0 4 177 188 189 178
		f 4 152 170 -155 -152
		mu 0 4 178 189 190 179
		f 4 154 171 -157 -154
		mu 0 4 179 190 191 180
		f 4 156 172 -159 -156
		mu 0 4 180 191 192 181
		f 4 158 173 -161 -158
		mu 0 4 181 192 193 182
		f 4 160 174 -163 -160
		mu 0 4 182 193 194 183
		f 4 162 175 -165 -162
		mu 0 4 183 194 195 184
		f 4 164 176 -167 -164
		mu 0 4 184 195 196 185
		f 4 166 177 -168 -166
		mu 0 4 185 196 197 186
		f 4 0 179 -181 -179
		mu 0 4 198 199 1 269
		f 4 -2 178 184 -183
		mu 0 4 200 276 277 258
		f 4 2 185 -187 -180
		mu 0 4 199 201 4 1
		f 4 4 189 -191 -186
		mu 0 4 201 202 6 4
		f 4 6 193 -195 -190
		mu 0 4 202 203 8 6
		f 4 8 197 -199 -194
		mu 0 4 203 204 10 8
		f 4 10 201 -203 -198
		mu 0 4 204 205 12 10
		f 4 12 205 -207 -202
		mu 0 4 205 206 14 12
		f 4 14 209 -211 -206
		mu 0 4 206 207 16 14
		f 4 16 213 -215 -210
		mu 0 4 207 208 18 16
		f 4 18 217 -219 -214
		mu 0 4 208 274 275 18
		f 4 20 219 -221 -218
		mu 0 4 209 210 21 20
		f 4 -23 182 225 -224
		mu 0 4 211 200 258 256
		f 4 41 242 -244 -220
		mu 0 4 210 212 32 21
		f 4 -44 223 248 -247
		mu 0 4 213 211 256 254
		f 4 62 265 -267 -243
		mu 0 4 212 214 43 32
		f 4 -65 246 271 -270
		mu 0 4 215 213 254 252
		f 4 83 288 -290 -266
		mu 0 4 214 216 54 43
		f 4 -86 269 294 -293
		mu 0 4 217 215 252 250
		f 4 104 311 -313 -289
		mu 0 4 216 218 65 54
		f 4 -116 292 317 -316
		mu 0 4 219 217 250 248
		f 4 125 334 -336 -312
		mu 0 4 218 220 76 65
		f 4 -128 315 340 -339
		mu 0 4 221 219 248 245
		f 4 146 357 -359 -335
		mu 0 4 220 222 87 76
		f 4 -169 362 363 -361
		mu 0 4 223 270 271 244
		f 4 -149 338 364 -363
		mu 0 4 224 221 245 89
		f 4 -170 360 367 -366
		mu 0 4 225 223 244 243
		f 4 -171 365 370 -369
		mu 0 4 226 225 243 242
		f 4 -172 368 373 -372
		mu 0 4 227 226 242 241
		f 4 -173 371 376 -375
		mu 0 4 228 227 241 240
		f 4 -174 374 379 -378
		mu 0 4 229 228 240 239
		f 4 -175 377 382 -381
		mu 0 4 230 229 239 238
		f 4 -176 380 385 -384
		mu 0 4 231 230 238 237
		f 4 -177 383 388 -387
		mu 0 4 232 231 237 234
		f 4 167 389 -391 -358
		mu 0 4 222 272 273 87
		f 4 -178 386 391 -390
		mu 0 4 233 232 234 98;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 76 
		0 1.8 
		1 1.8 
		2 1.8 
		4 1.8 
		6 1.8 
		8 1.8 
		10 1.8 
		12 1.8 
		14 1.8 
		16 1.8 
		18 1.8 
		20 1.8 
		22 1.8 
		41 1.8 
		43 1.8 
		62 1.8 
		64 1.8 
		83 1.8 
		85 1.8 
		104 1.8 
		115 1.8 
		125 1.8 
		127 1.8 
		146 1.8 
		148 1.8 
		167 1.8 
		168 1.8 
		169 1.8 
		170 1.8 
		171 1.8 
		172 1.8 
		173 1.8 
		174 1.8 
		175 1.8 
		176 1.8 
		177 1.8 
		178 1.8 
		180 1.8 
		184 1.8 
		186 1.8 
		190 1.8 
		194 1.8 
		198 1.8 
		202 1.8 
		206 1.8 
		210 1.8 
		214 1.8 
		217 1.8 
		218 1.8 
		220 1.8 
		225 1.8 
		243 1.8 
		248 1.8 
		266 1.8 
		271 1.8 
		289 1.8 
		294 1.8 
		312 1.8 
		317 1.8 
		335 1.8 
		340 1.8 
		358 1.8 
		362 1.8 
		363 1.8 
		364 1.8 
		367 1.8 
		370 1.8 
		373 1.8 
		376 1.8 
		379 1.8 
		382 1.8 
		385 1.8 
		388 1.8 
		389 1.8 
		390 1.8 
		391 1.8 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "blatt_06" -p "notenblaetterRNfosterParent1";
	rename -uid "E0A40955-4693-FFA5-4A12-5988B3136626";
	setAttr ".t" -type "double3" -17.904689271569875 6.3252110661063363e-14 84.849715568985374 ;
	setAttr ".r" -type "double3" 0 0.66150661696457902 0 ;
createNode mesh -n "blatt_Shape6" -p "blatt_06";
	rename -uid "D61D495F-4C00-396C-A117-5FA3A8982837";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:197]";
	setAttr ".iog[0].og[1].gcl" -type "componentList" 58 "e[0:2]" "e[4]" "e[6]" "e[8]" "e[10]" "e[12]" "e[14]" "e[16]" "e[18]" "e[20]" "e[37]" "e[39]" "e[56]" "e[58]" "e[75]" "e[77]" "e[94]" "e[96]" "e[113]" "e[123]" "e[132]" "e[134]" "e[151]" "e[153]" "e[170:180]" "e[182]" "e[186]" "e[188]" "e[192]" "e[196]" "e[200]" "e[204]" "e[208]" "e[212]" "e[215:216]" "e[218]" "e[223]" "e[239]" "e[244]" "e[260]" "e[265]" "e[281]" "e[286]" "e[302]" "e[307]" "e[323]" "e[328]" "e[344]" "e[349]" "e[365]" "e[369:371]" "e[374]" "e[377]" "e[380]" "e[383]" "e[386]" "e[389]" "e[392:395]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 5 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 9 "e[171]" "e[172]" "e[173]" "e[174]" "e[175]" "e[176]" "e[177]" "e[178]" "e[179]";
	setAttr ".gtag[1].gtagnm" -type "string" "front";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 9 "e[0]" "e[2]" "e[4]" "e[6]" "e[8]" "e[10]" "e[12]" "e[14]" "e[16]";
	setAttr ".gtag[2].gtagnm" -type "string" "left";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 9 "e[1]" "e[20]" "e[39]" "e[58]" "e[77]" "e[96]" "e[123]" "e[134]" "e[153]";
	setAttr ".gtag[3].gtagnm" -type "string" "right";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 9 "e[18]" "e[37]" "e[56]" "e[75]" "e[94]" "e[113]" "e[132]" "e[151]" "e[170]";
	setAttr ".gtag[4].gtagnm" -type "string" "rim";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 36 "e[0]" "e[1]" "e[2]" "e[4]" "e[6]" "e[8]" "e[10]" "e[12]" "e[14]" "e[16]" "e[18]" "e[20]" "e[37]" "e[39]" "e[56]" "e[58]" "e[75]" "e[77]" "e[94]" "e[96]" "e[113]" "e[123]" "e[132]" "e[134]" "e[151]" "e[153]" "e[170]" "e[171]" "e[172]" "e[173]" "e[174]" "e[175]" "e[176]" "e[177]" "e[178]" "e[179]";
	setAttr ".pv" -type "double2" 0.090235679294108473 0.26320325188921989 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 280 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.33819827 0.53668946 0.3702558
		 0.58190733 0.3382346 0.58196962 0.40234807 0.58184946 0.43442884 0.58178419 0.49844125
		 0.58178556 0.53041923 0.58179021 0.56240553 0.58177722 0.59439522 0.58175737 0.62638623
		 0.58173621 0.37026623 0.627249 0.33818915 0.62740046 0.40232268 0.6271286 0.43436632
		 0.62707722 0.49845484 0.62703705 0.53043991 0.62703907 0.56242365 0.62702668 0.59441435
		 0.62700397 0.62640673 0.62697828 0.37031767 0.67251331 0.33824813 0.67263919 0.40237942
		 0.67239529 0.43438444 0.67234439 0.4984493 0.67232352 0.53046578 0.67230535 0.56244981
		 0.67228055 0.59444231 0.67225003 0.62643695 0.67221558 0.37039599 0.7178036 0.33838207
		 0.7178812 0.40243748 0.71770614 0.43445721 0.71764743 0.49849781 0.71761763 0.53049546
		 0.71757531 0.56248069 0.71753341 0.59447843 0.71748674 0.62648731 0.71743065 0.3705087
		 0.76305252 0.33851707 0.76309913 0.40251002 0.76301366 0.4345248 0.76296926 0.49852893
		 0.7628814 0.53051746 0.76283348 0.56250185 0.76278675 0.5945276 0.76274657 0.62657619
		 0.76271361 0.3705841 0.80827945 0.3385908 0.80831242 0.40257707 0.80824471 0.43457142
		 0.80820602 0.49856344 0.80813026 0.53054929 0.80809712 0.56254852 0.80807847 0.59464312
		 0.80807126 0.62668437 0.808034 0.37066492 0.89874345 0.33866608 0.89873278 0.40265968
		 0.89874262 0.43465087 0.89870864 0.49865553 0.89863849 0.53065985 0.89861465 0.56265044
		 0.8986131 0.59465218 0.89862972 0.62667054 0.89864451 0.37068287 0.94405848 0.33865607
		 0.94409657 0.40275213 0.94398743 0.43471059 0.94396365 0.4986994 0.94389808 0.53069955
		 0.94387555 0.56269252 0.94386721 0.59466749 0.94386441 0.62666965 0.9438647 0.37057731
		 0.98942775 0.40281984 0.98924434 0.43478581 0.98921913 0.49874094 0.98916137 0.53073478
		 0.98913693 0.56270903 0.9891187 0.59467179 0.98910904 0.62669224 0.9891243 0.36857525
		 0.050845593 0.33999184 0.050851673 0.31138173 0.050798327 0.25429508 0.050775141
		 0.22577408 0.050769746 0.19725543 0.050756484 0.16873714 0.050738186 0.14021814 0.050718516
		 0.36850175 0.091255933 0.33995715 0.091199487 0.31141827 0.091163129 0.25428519 0.091119409
		 0.22575763 0.091110706 0.19723773 0.091095507 0.16871786 0.09107402 0.14019793 0.091050327
		 0.36844614 0.13161531 0.33988401 0.1315276 0.31138793 0.13149771 0.25429234 0.13147837
		 0.22573796 0.13146102 0.19721329 0.13143903 0.16869125 0.13141119 0.14016971 0.13137892
		 0.36839095 0.17199293 0.33983716 0.17190212 0.3113167 0.17185321 0.25423923 0.17183945
		 0.22570434 0.17181545 0.1971783 0.17178592 0.16865116 0.17175028 0.14012209 0.17170417
		 0.36831012 0.21234369 0.33978364 0.2123026 0.31125197 0.21226445 0.2541962 0.21219695
		 0.22566953 0.21216726 0.19714049 0.2121374 0.16858751 0.21211249 0.14003769 0.21209124
		 0.36825195 0.25267228 0.33973119 0.25263968 0.31120858 0.25260714 0.25416157 0.25254583
		 0.2256389 0.25252125 0.19709331 0.25251019 0.16847575 0.25248784 0.13994229 0.25245824
		 0.36818996 0.33334157 0.33966526 0.33331636 0.31114104 0.33328858 0.2540898 0.33323589
		 0.2255635 0.333215 0.19703719 0.33320773 0.16850874 0.33320317 0.13997608 0.33322126
		 0.36823937 0.37376827 0.33963171 0.37366009 0.31110612 0.37362981 0.25405809 0.37357557
		 0.22554204 0.37355706 0.19701639 0.3735497 0.16849867 0.37354827 0.13996741 0.37355995
		 0.65870166 0.98912942 0.65867364 0.94386554 0.11141124 0.41392231 0.33814567 0.98988527
		 0.39726678 0.41465247 0.65867949 0.89864725 0.65871561 0.80802226 0.65859628 0.76263535
		 0.65849149 0.7173785 0.65843034 0.67218232 0.65839922 0.62695569 0.6583786 0.58171809
		 0.6583569 0.5364731 0.62636453 0.53649056 0.11171889 0.010367274 0.59437472 0.53651059
		 0.5623883 0.53652984 0.53040618 0.53654373 0.49843213 0.53654152 0.43449947 0.53646475
		 0.40245572 0.53652704 0.37023368 0.53663915 0.39713213 0.010542601 0.13994032 0.4139123
		 0.16848984 0.41388857 0.19700369 0.41388857 0.2255151 0.4138979 0.25402531 0.41391653
		 0.31104669 0.41396999 0.3395842 0.41401112 0.36835471 0.41421813 0.11144158 0.37356895
		 0.39679411 0.37381929 0.11145005 0.33323139 0.39670852 0.33333841 0.11140752 0.25245109
		 0.39677307 0.25270256 0.1115092 0.21202272 0.39683166 0.21238908 0.1115962 0.1716572
		 0.3969321 0.17206696 0.11164886 0.13134754 0.39703146 0.13172767 0.111678 0.091028839
		 0.39708605 0.091383129 0.11169827 0.050701171 0.39709291 0.050885946 0.14023861 0.010383874
		 0.16875598 0.010402828 0.1972698 0.010420322 0.22578016 0.010432631 0.25428745 0.010433882
		 0.31130829 0.010409445 0.33990112 0.010458261 0.36860338 0.010522068 0.016128916
		 0.060560696 0.016128916 0.0092626596 0.016988635 0.0092626596 0.016988635 0.060560696
		 0.016128916 0.11184842 0.016988637 0.11184842 0.016128918 0.16311903 0.016988637
		 0.16311903 0.016128918 0.21439777 0.016988637 0.2143978 0.016128918 0.26567319 0.016988637
		 0.26567319 0.016128918 0.31695122 0.016988637 0.31695122 0.016128918 0.41949677 0.016988637
		 0.41949677 0.016128916 0.47075355 0.016988635 0.47075349 0.016128918 0.52202803 0.016988637
		 0.52202809 0.049552552 0.52166998 0.049552552 0.4705143 0.05041302 0.4705143 0.05041302
		 0.52166998 0.049552552 0.41935879 0.05041302 0.41935879 0.049552552 0.36820352 0.05041302
		 0.36820352 0.049552552 0.31705955 0.05041302 0.31705955 0.049552627 0.26591614 0.05041302
		 0.26591614 0.049552552 0.21473731 0.05041302 0.21473731 0.049552552 0.1124183 0.05041302
		 0.1124183 0.049552552 0.061280854 0.05041302 0.061280854 0.049552552 0.010126926
		 0.05041302 0.010126927 0.077278182 0.37180582 0.077278182 0.33561879 0.07813932 0.33561879
		 0.07813932 0.37180582 0.077278182 0.29943466 0.07813932 0.29943466 0.077278174 0.26328185
		 0.078139231 0.26328179 0.077278182 0.19096176 0.078139238 0.19096176;
	setAttr ".uvst[0].uvsp[250:279]" 0.077278182 0.15479816 0.07813932 0.15479816
		 0.077278182 0.11863077 0.07813932 0.11863077 0.077278182 0.082462825 0.07813932 0.082462825
		 0.077278182 0.046294861 0.07813932 0.046294861 0.077278182 0.010126927 0.07813932
		 0.010126927 0.057344493 0.33629924 0.057344489 0.37254769 0.056483947 0.37254769
		 0.056483947 0.33629924 0.057344489 0.30006859 0.056483939 0.30006859 0.057344489
		 0.26384768 0.056483939 0.26384768 0.057344489 0.19135602 0.056483924 0.19135602 0.057344489
		 0.15510063 0.056483924 0.15510063 0.057344489 0.11885693 0.056483924 0.11885693 0.057344489
		 0.082622416 0.056483939 0.082622416 0.057344489 0.046378247 0.056483939 0.046378247
		 0.057344489 0.010126927 0.056483947 0.010126927;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 200 ".vt";
	setAttr ".vt[0:165]"  -32.045127869 0.46806592 14.85000038 -29.94512558 0.42088392 14.85000038
		 -27.84512711 0.17822108 14.85000038 -25.74512672 0.01509287 14.85000038 -21.54512596 0 14.85000038
		 -19.44512558 0 14.85000038 -17.34512711 0 14.85000038 -15.24512672 0 14.85000038
		 -13.14512634 0 14.85000038 -11.045125961 0 14.85000038 -32.045127869 0.42354462 11.88000011
		 -29.94512558 0.46176395 11.88000011 -27.84512711 0.32182786 11.88000011 -25.74512672 0.16516148 11.88000011
		 -21.54512596 0.0097538298 11.88000011 -19.44512558 0 11.88000011 -17.34512711 0 11.88000011
		 -15.24512672 0 11.88000011 -13.14512634 0 11.88000011 -11.045125961 0 11.88000011
		 -32.045127869 0.1465593 8.90999985 -29.94512558 0.27632165 8.90999985 -27.84512711 0.33107537 8.90999985
		 -25.74512672 0.28124529 8.90999985 -21.54512596 0.051898785 8.90999985 -19.44512558 0.0065192925 8.90999985
		 -17.34512711 0 8.90999985 -15.24512672 0 8.90999985 -13.14512634 0 8.90999985 -11.045125961 0 8.90999985
		 -32.045127869 0.056381922 5.94000053 -29.94512558 0.20303419 5.94000053 -27.84512711 0.33433428 5.94000053
		 -25.74512672 0.33942848 5.94000053 -21.54512596 0.13067493 5.94000053 -19.44512558 0.02691726 5.94000053
		 -17.34512711 0 5.94000053 -15.24512672 0 5.94000053 -13.14512634 0 5.94000053 -11.045125961 0 5.94000053
		 -32.045127869 0.0097538298 2.97000027 -29.94512558 0.085205182 2.97000027 -27.84512711 0.18998985 2.97000027
		 -25.74512672 0.21317834 2.97000027 -21.54512596 0.062915869 2.97000027 -19.44512558 0.0077744024 2.97000027
		 -17.34512711 0.008508388 2.97000027 -15.24512672 0.012846097 2.97000027 -13.14512634 0.008508388 2.97000027
		 -11.045125961 0.0012551093 2.97000027 -32.045127869 0 0 -29.94512558 0.0026376955 0
		 -27.84512711 0.017969433 0 -25.74512672 0.027101841 0 -21.54512596 0.0026376955 0
		 -19.44512558 0.0052196938 0 -17.34512711 0.031544562 0 -15.24512672 0.1193755 0 -13.14512634 0.1864858 0
		 -11.045125961 0.14495152 0 -32.045127869 0 -2.96999931 -29.94512558 0 -2.96999931
		 -27.84512711 0 -2.96999931 -25.74512672 0 -2.96999931 -21.54512596 0 -2.96999931
		 -19.44512558 0.0061590555 -2.96999931 -17.34512711 0.096494585 -2.96999931 -15.24512672 0.27614358 -2.96999931
		 -13.14512634 0.37871855 -2.96999931 -11.045125961 0.2982823 -2.96999931 -32.045127869 0 -8.90999985
		 -29.94512558 0 -8.90999985 -27.84512711 0 -8.90999985 -25.74512672 0.0053622313 -8.90999985
		 -21.54512596 0.054838005 -8.90999985 -19.44512558 0.041229546 -8.90999985 -17.34512711 0.038622372 -8.90999985
		 -15.24512672 0.050188512 -8.90999985 -13.14512634 0.033260141 -8.90999985 -11.045125961 0.0049039461 -8.90999985
		 -32.045127869 0.28291425 -11.87999916 -29.94512558 0.18740702 -11.87999916 -27.84512711 0.02766427 -11.87999916
		 -25.74512672 0.022289015 -11.87999916 -21.54512596 0.10789038 -11.87999916 -19.44512558 0.078464426 -11.87999916
		 -17.34512711 0.022289015 -11.87999916 -15.24512672 0.010201553 -11.87999916 -13.14512634 0.069108889 -11.87999916
		 -11.045125961 0.1043285 -11.87999916 -32.045127869 0.75750309 -14.85000038 -29.94512558 0.40480551 -14.85000038
		 -27.84512711 0.11499131 -14.85000038 -25.74512672 0.0053622313 -14.85000038 -21.54512596 0.054838005 -14.85000038
		 -19.44512558 0.036325596 -14.85000038 -17.34512711 0.0053622313 -14.85000038 -15.24512672 0.042404566 -14.85000038
		 -13.14512634 0.14927755 -14.85000038 -11.045125961 0.20526007 -14.85000038 -32.045021057 0.51806581 14.84996986
		 -29.94280434 0.47076887 14.8507576 -29.94420815 0.51174629 11.87903786 -32.046070099 0.47344935 11.87804604
		 -27.84096336 0.2280037 14.85200405 -27.84217644 0.37173268 11.88089466 -25.74272346 0.064976297 14.85190392
		 -25.74273872 0.21508037 11.88154888 -21.54456139 0.049985711 14.85071373 -21.54410744 0.059737187 11.88079166
		 -19.44506836 0.049999896 14.85004139 -19.44491386 0.049999364 11.88013649 -17.34512711 0.050000001 14.85000038
		 -17.34510803 0.049999993 11.88001347 -15.24512672 0.050000001 14.85000038 -15.24512672 0.050000001 11.88000011
		 -13.14512634 0.050000004 14.85000038 -13.14512634 0.050000001 11.88000011 -11.045125961 0.050000004 14.85000038
		 -11.045125961 0.050000004 11.88000011 -29.94674683 0.32626176 8.90816689 -32.047763824 0.19640072 8.90737438
		 -27.84467888 0.38107321 8.90987492 -25.74315643 0.33119619 8.91101265 -21.54329491 0.10185659 8.91093159
		 -19.44439888 0.056512665 8.91036701 -17.34500885 0.049999826 8.91005611 -15.24512672 0.050000001 8.90999985
		 -13.14512634 0.050000001 8.90999985 -11.045125961 0.050000004 8.90999985 -29.94786072 0.25294006 5.93861389
		 -32.048088074 0.10627414 5.93862343 -27.84633255 0.38430682 5.93886328 -25.74389267 0.38941014 5.93944073
		 -21.54302406 0.18063067 5.93990612 -19.44403267 0.076905273 5.94004679 -17.34496307 0.049999684 5.94006586
		 -15.24512672 0.049999919 5.94009018 -13.14509201 0.049999949 5.94006586 -11.045083046 0.04999993 5.94004154
		 -29.9470768 0.13514069 2.96837497 -32.046913147 0.059702076 2.96892095 -27.84636497 0.23991652 2.96759319
		 -25.74451256 0.26312405 2.96775317 -21.54370308 0.11288023 2.96875954 -19.44449997 0.057769611 2.96970606
		 -17.34541702 0.058506407 2.97033858 -15.24558735 0.062834755 2.97096086 -13.14513302 0.058490437 2.97134018
		 -11.044793129 0.051216781 2.97139311 -29.94576836 0.052627508 -0.00077829038 -32.045608521 0.049992658 -0.00039954513
		 -27.84565353 0.06794633 -0.0014259057 -25.74495316 0.077081144 -0.0014280652 -21.54469872 0.052630745 -0.00071632338
		 -19.44542313 0.05521879 4.5918914e-05 -17.34662247 0.081513718 0.00091967353 -15.24688625 0.16930169 0.00206891
		 -13.14530945 0.23641069 0.0027332585 -11.044111252 0.19486058 0.0028031026 -29.94517899 0.049999949 -2.97004819
		 -32.045143127 0.049999993 -2.97001052 -27.84521675 0.049999747 -2.97013187 -25.74520683 0.049999859 -2.97008777
		 -21.54516792 0.0499999 -2.96990752 -19.44573784 0.056154884 -2.96979356;
	setAttr ".vt[166:199]" -17.3470993 0.1464549 -2.96971726 -15.24724865 0.32609764 -2.96969986
		 -13.14519882 0.42871815 -2.96981239 -11.043754578 0.34818518 -2.96989012 -29.94436646 0.049973525 -8.90856075
		 -32.044559479 0.049915601 -8.9080267 -27.84466743 0.049994852 -8.90944862 -25.74541664 0.055360425 -8.9096899
		 -21.54524994 0.1048354 -8.90950489 -19.44506073 0.091228575 -8.90969563 -17.34577942 0.088616535 -8.91039658
		 -15.24607372 0.10016902 -8.911026 -13.14520264 0.08325015 -8.91099644 -11.044520378 0.054853018 -8.91077232
		 -29.94171715 0.23716651 -11.87648201 -32.041923523 0.33252358 -11.87514973 -27.84298134 0.077600434 -11.87866783
		 -25.74518585 0.072288394 -11.87975693 -21.54525757 0.15789022 -11.88000965 -19.44441986 0.12845936 -11.88008976
		 -17.34476471 0.072287425 -11.88016605 -15.24581718 0.060196586 -11.87985802 -13.14603615 0.11909264 -11.87910557
		 -11.04570961 0.1543045 -11.87866783 -29.93983269 0.45432496 -14.84585094 -32.039855957 0.80689055 -14.84424782
		 -27.84178543 0.1648059 -14.84843063 -25.74484444 0.055346146 -14.84999847 -21.54524231 0.1048282 -14.85069561
		 -19.44432068 0.086314142 -14.85064983 -17.34475708 0.055355094 -14.85018539 -15.2462616 0.092380136 -14.84946442
		 -13.14665508 0.19923615 -14.84876633 -11.046211243 0.25522509 -14.84847641;
	setAttr -s 396 ".ed";
	setAttr ".ed[0:165]"  0 1 0 0 10 0 1 2 0 1 11 1 2 3 0 2 12 1 3 4 0 3 13 1
		 4 5 0 4 14 1 5 6 0 5 15 1 6 7 0 6 16 1 7 8 0 7 17 1 8 9 0 8 18 1 9 19 0 10 11 1 10 20 0
		 11 12 1 11 21 1 12 13 1 12 22 1 13 14 1 13 23 1 14 15 1 14 24 1 15 16 1 15 25 1 16 17 1
		 16 26 1 17 18 1 17 27 1 18 19 1 18 28 1 19 29 0 20 21 1 20 30 0 21 22 1 21 31 1 22 23 1
		 22 32 1 23 24 1 23 33 1 24 25 1 24 34 1 25 26 1 25 35 1 26 27 1 26 36 1 27 28 1 27 37 1
		 28 29 1 28 38 1 29 39 0 30 31 1 30 40 0 31 32 1 31 41 1 32 33 1 32 42 1 33 34 1 33 43 1
		 34 35 1 34 44 1 35 36 1 35 45 1 36 37 1 36 46 1 37 38 1 37 47 1 38 39 1 38 48 1 39 49 0
		 40 41 1 40 50 0 41 42 1 41 51 1 42 43 1 42 52 1 43 44 1 43 53 1 44 45 1 44 54 1 45 46 1
		 45 55 1 46 47 1 46 56 1 47 48 1 47 57 1 48 49 1 48 58 1 49 59 0 50 51 1 50 60 0 51 52 1
		 51 61 1 52 53 1 52 62 1 53 54 1 53 63 1 54 55 1 54 64 1 55 56 1 55 65 1 56 57 1 56 66 1
		 57 58 1 57 67 1 58 59 1 58 68 1 59 69 0 60 61 1 61 62 1 62 63 1 63 64 1 64 65 1 65 66 1
		 66 67 1 67 68 1 68 69 1 60 70 0 61 71 1 62 72 1 63 73 1 64 74 1 65 75 1 66 76 1 67 77 1
		 68 78 1 69 79 0 70 71 1 70 80 0 71 72 1 71 81 1 72 73 1 72 82 1 73 74 1 73 83 1 74 75 1
		 74 84 1 75 76 1 75 85 1 76 77 1 76 86 1 77 78 1 77 87 1 78 79 1 78 88 1 79 89 0 80 81 1
		 80 90 0 81 82 1 81 91 1 82 83 1 82 92 1 83 84 1 83 93 1 84 85 1 84 94 1 85 86 1 85 95 1
		 86 87 1 86 96 1;
	setAttr ".ed[166:331]" 87 88 1 87 97 1 88 89 1 88 98 1 89 99 0 90 91 0 91 92 0
		 92 93 0 93 94 0 94 95 0 95 96 0 96 97 0 97 98 0 98 99 0 0 100 0 1 101 1 100 101 0
		 101 102 1 10 103 1 103 102 1 100 103 0 2 104 1 101 104 0 104 105 1 102 105 1 3 106 1
		 104 106 0 106 107 1 105 107 1 4 108 1 106 108 0 108 109 1 107 109 1 5 110 1 108 110 0
		 110 111 1 109 111 1 6 112 1 110 112 0 112 113 1 111 113 1 7 114 1 112 114 0 114 115 1
		 113 115 1 8 116 1 114 116 0 116 117 1 115 117 1 9 118 0 116 118 0 19 119 1 118 119 0
		 117 119 1 102 120 1 20 121 1 121 120 1 103 121 0 105 122 1 120 122 1 107 123 1 122 123 1
		 109 124 1 123 124 1 111 125 1 124 125 1 113 126 1 125 126 1 115 127 1 126 127 1 117 128 1
		 127 128 1 29 129 1 119 129 0 128 129 1 120 130 1 30 131 1 131 130 1 121 131 0 122 132 1
		 130 132 1 123 133 1 132 133 1 124 134 1 133 134 1 125 135 1 134 135 1 126 136 1 135 136 1
		 127 137 1 136 137 1 128 138 1 137 138 1 39 139 1 129 139 0 138 139 1 130 140 1 40 141 1
		 141 140 1 131 141 0 132 142 1 140 142 1 133 143 1 142 143 1 134 144 1 143 144 1 135 145 1
		 144 145 1 136 146 1 145 146 1 137 147 1 146 147 1 138 148 1 147 148 1 49 149 1 139 149 0
		 148 149 1 140 150 1 50 151 1 151 150 1 141 151 0 142 152 1 150 152 1 143 153 1 152 153 1
		 144 154 1 153 154 1 145 155 1 154 155 1 146 156 1 155 156 1 147 157 1 156 157 1 148 158 1
		 157 158 1 59 159 1 149 159 0 158 159 1 150 160 1 60 161 1 161 160 1 151 161 0 152 162 1
		 160 162 1 153 163 1 162 163 1 154 164 1 163 164 1 155 165 1 164 165 1 156 166 1 165 166 1
		 157 167 1 166 167 1 158 168 1 167 168 1 69 169 1 159 169 0 168 169 1 160 170 1 70 171 1
		 171 170 1 161 171 0 162 172 1 170 172 1 163 173 1;
	setAttr ".ed[332:395]" 172 173 1 164 174 1 173 174 1 165 175 1 174 175 1 166 176 1
		 175 176 1 167 177 1 176 177 1 168 178 1 177 178 1 79 179 1 169 179 0 178 179 1 170 180 1
		 80 181 1 181 180 1 171 181 0 172 182 1 180 182 1 173 183 1 182 183 1 174 184 1 183 184 1
		 175 185 1 184 185 1 176 186 1 185 186 1 177 187 1 186 187 1 178 188 1 187 188 1 89 189 1
		 179 189 0 188 189 1 91 190 1 180 190 1 90 191 0 191 190 0 181 191 0 92 192 1 182 192 1
		 190 192 0 93 193 1 183 193 1 192 193 0 94 194 1 184 194 1 193 194 0 95 195 1 185 195 1
		 194 195 0 96 196 1 186 196 1 195 196 0 97 197 1 187 197 1 196 197 0 98 198 1 188 198 1
		 197 198 0 99 199 0 189 199 0 198 199 0;
	setAttr -s 198 -ch 792 ".fc[0:197]" -type "polyFaces" 
		f 4 182 183 -186 -187
		mu 0 4 0 166 1 2
		f 4 188 189 -191 -184
		mu 0 4 166 165 3 1
		f 4 192 193 -195 -190
		mu 0 4 165 164 4 3
		f 4 196 197 -199 -194
		mu 0 4 164 163 5 4
		f 4 200 201 -203 -198
		mu 0 4 163 162 6 5
		f 4 204 205 -207 -202
		mu 0 4 162 161 7 6
		f 4 208 209 -211 -206
		mu 0 4 161 160 8 7
		f 4 212 213 -215 -210
		mu 0 4 160 158 9 8
		f 4 216 218 -220 -214
		mu 0 4 158 157 156 9
		f 4 185 220 -223 -224
		mu 0 4 2 1 10 11
		f 4 190 224 -226 -221
		mu 0 4 1 3 12 10
		f 4 194 226 -228 -225
		mu 0 4 3 4 13 12
		f 4 198 228 -230 -227
		mu 0 4 4 5 14 13
		f 4 202 230 -232 -229
		mu 0 4 5 6 15 14
		f 4 206 232 -234 -231
		mu 0 4 6 7 16 15
		f 4 210 234 -236 -233
		mu 0 4 7 8 17 16
		f 4 214 236 -238 -235
		mu 0 4 8 9 18 17
		f 4 219 239 -241 -237
		mu 0 4 9 156 155 18
		f 4 222 241 -244 -245
		mu 0 4 11 10 19 20
		f 4 225 245 -247 -242
		mu 0 4 10 12 21 19
		f 4 227 247 -249 -246
		mu 0 4 12 13 22 21
		f 4 229 249 -251 -248
		mu 0 4 13 14 23 22
		f 4 231 251 -253 -250
		mu 0 4 14 15 24 23
		f 4 233 253 -255 -252
		mu 0 4 15 16 25 24
		f 4 235 255 -257 -254
		mu 0 4 16 17 26 25
		f 4 237 257 -259 -256
		mu 0 4 17 18 27 26
		f 4 240 260 -262 -258
		mu 0 4 18 155 154 27
		f 4 243 262 -265 -266
		mu 0 4 20 19 28 29
		f 4 246 266 -268 -263
		mu 0 4 19 21 30 28
		f 4 248 268 -270 -267
		mu 0 4 21 22 31 30
		f 4 250 270 -272 -269
		mu 0 4 22 23 32 31
		f 4 252 272 -274 -271
		mu 0 4 23 24 33 32
		f 4 254 274 -276 -273
		mu 0 4 24 25 34 33
		f 4 256 276 -278 -275
		mu 0 4 25 26 35 34
		f 4 258 278 -280 -277
		mu 0 4 26 27 36 35
		f 4 261 281 -283 -279
		mu 0 4 27 154 153 36
		f 4 264 283 -286 -287
		mu 0 4 29 28 37 38
		f 4 267 287 -289 -284
		mu 0 4 28 30 39 37
		f 4 269 289 -291 -288
		mu 0 4 30 31 40 39
		f 4 271 291 -293 -290
		mu 0 4 31 32 41 40
		f 4 273 293 -295 -292
		mu 0 4 32 33 42 41
		f 4 275 295 -297 -294
		mu 0 4 33 34 43 42
		f 4 277 297 -299 -296
		mu 0 4 34 35 44 43
		f 4 279 299 -301 -298
		mu 0 4 35 36 45 44
		f 4 282 302 -304 -300
		mu 0 4 36 153 152 45
		f 4 285 304 -307 -308
		mu 0 4 38 37 46 47
		f 4 288 308 -310 -305
		mu 0 4 37 39 48 46
		f 4 290 310 -312 -309
		mu 0 4 39 40 49 48
		f 4 292 312 -314 -311
		mu 0 4 40 41 50 49
		f 4 294 314 -316 -313
		mu 0 4 41 42 51 50
		f 4 296 316 -318 -315
		mu 0 4 42 43 52 51
		f 4 298 318 -320 -317
		mu 0 4 43 44 53 52
		f 4 300 320 -322 -319
		mu 0 4 44 45 54 53
		f 4 303 323 -325 -321
		mu 0 4 45 152 151 54
		f 4 306 325 -328 -329
		mu 0 4 47 46 55 56
		f 4 309 329 -331 -326
		mu 0 4 46 48 57 55
		f 4 311 331 -333 -330
		mu 0 4 48 49 58 57
		f 4 313 333 -335 -332
		mu 0 4 49 50 59 58
		f 4 315 335 -337 -334
		mu 0 4 50 51 60 59
		f 4 317 337 -339 -336
		mu 0 4 51 52 61 60
		f 4 319 339 -341 -338
		mu 0 4 52 53 62 61
		f 4 321 341 -343 -340
		mu 0 4 53 54 63 62
		f 4 324 344 -346 -342
		mu 0 4 54 151 150 63
		f 4 327 346 -349 -350
		mu 0 4 56 55 64 65
		f 4 330 350 -352 -347
		mu 0 4 55 57 66 64
		f 4 332 352 -354 -351
		mu 0 4 57 58 67 66
		f 4 334 354 -356 -353
		mu 0 4 58 59 68 67
		f 4 336 356 -358 -355
		mu 0 4 59 60 69 68
		f 4 338 358 -360 -357
		mu 0 4 60 61 70 69
		f 4 340 360 -362 -359
		mu 0 4 61 62 71 70
		f 4 342 362 -364 -361
		mu 0 4 62 63 72 71
		f 4 345 365 -367 -363
		mu 0 4 63 150 146 72
		f 4 348 368 -371 -372
		mu 0 4 65 64 73 148
		f 4 351 373 -375 -369
		mu 0 4 64 66 74 73
		f 4 353 376 -378 -374
		mu 0 4 66 67 75 74
		f 4 355 379 -381 -377
		mu 0 4 67 68 76 75
		f 4 357 382 -384 -380
		mu 0 4 68 69 77 76
		f 4 359 385 -387 -383
		mu 0 4 69 70 78 77
		f 4 361 388 -390 -386
		mu 0 4 70 71 79 78
		f 4 363 391 -393 -389
		mu 0 4 71 72 80 79
		f 4 366 394 -396 -392
		mu 0 4 72 146 145 80
		f 4 1 19 -4 -1
		mu 0 4 167 191 81 199
		f 4 3 21 -6 -3
		mu 0 4 199 81 82 198
		f 4 5 23 -8 -5
		mu 0 4 198 82 83 197
		f 4 7 25 -10 -7
		mu 0 4 197 83 84 196
		f 4 9 27 -12 -9
		mu 0 4 196 84 85 195
		f 4 11 29 -14 -11
		mu 0 4 195 85 86 194
		f 4 13 31 -16 -13
		mu 0 4 194 86 87 193
		f 4 15 33 -18 -15
		mu 0 4 193 87 88 192
		f 4 17 35 -19 -17
		mu 0 4 192 88 190 159
		f 4 20 38 -23 -20
		mu 0 4 191 189 89 81
		f 4 22 40 -25 -22
		mu 0 4 81 89 90 82
		f 4 24 42 -27 -24
		mu 0 4 82 90 91 83
		f 4 26 44 -29 -26
		mu 0 4 83 91 92 84
		f 4 28 46 -31 -28
		mu 0 4 84 92 93 85
		f 4 30 48 -33 -30
		mu 0 4 85 93 94 86
		f 4 32 50 -35 -32
		mu 0 4 86 94 95 87
		f 4 34 52 -37 -34
		mu 0 4 87 95 96 88
		f 4 36 54 -38 -36
		mu 0 4 88 96 188 190
		f 4 39 57 -42 -39
		mu 0 4 189 187 97 89
		f 4 41 59 -44 -41
		mu 0 4 89 97 98 90
		f 4 43 61 -46 -43
		mu 0 4 90 98 99 91
		f 4 45 63 -48 -45
		mu 0 4 91 99 100 92
		f 4 47 65 -50 -47
		mu 0 4 92 100 101 93
		f 4 49 67 -52 -49
		mu 0 4 93 101 102 94
		f 4 51 69 -54 -51
		mu 0 4 94 102 103 95
		f 4 53 71 -56 -53
		mu 0 4 95 103 104 96
		f 4 55 73 -57 -55
		mu 0 4 96 104 186 188
		f 4 58 76 -61 -58
		mu 0 4 187 185 105 97
		f 4 60 78 -63 -60
		mu 0 4 97 105 106 98
		f 4 62 80 -65 -62
		mu 0 4 98 106 107 99
		f 4 64 82 -67 -64
		mu 0 4 99 107 108 100
		f 4 66 84 -69 -66
		mu 0 4 100 108 109 101
		f 4 68 86 -71 -68
		mu 0 4 101 109 110 102
		f 4 70 88 -73 -70
		mu 0 4 102 110 111 103
		f 4 72 90 -75 -72
		mu 0 4 103 111 112 104
		f 4 74 92 -76 -74
		mu 0 4 104 112 184 186
		f 4 77 95 -80 -77
		mu 0 4 185 183 113 105
		f 4 79 97 -82 -79
		mu 0 4 105 113 114 106
		f 4 81 99 -84 -81
		mu 0 4 106 114 115 107
		f 4 83 101 -86 -83
		mu 0 4 107 115 116 108
		f 4 85 103 -88 -85
		mu 0 4 108 116 117 109
		f 4 87 105 -90 -87
		mu 0 4 109 117 118 110
		f 4 89 107 -92 -89
		mu 0 4 110 118 119 111
		f 4 91 109 -94 -91
		mu 0 4 111 119 120 112
		f 4 93 111 -95 -93
		mu 0 4 112 120 182 184
		f 4 96 114 -99 -96
		mu 0 4 183 181 121 113
		f 4 98 115 -101 -98
		mu 0 4 113 121 122 114
		f 4 100 116 -103 -100
		mu 0 4 114 122 123 115
		f 4 102 117 -105 -102
		mu 0 4 115 123 124 116
		f 4 104 118 -107 -104
		mu 0 4 116 124 125 117
		f 4 106 119 -109 -106
		mu 0 4 117 125 126 118
		f 4 108 120 -111 -108
		mu 0 4 118 126 127 119
		f 4 110 121 -113 -110
		mu 0 4 119 127 128 120
		f 4 112 122 -114 -112
		mu 0 4 120 128 180 182
		f 4 123 133 -125 -115
		mu 0 4 181 179 129 121
		f 4 124 135 -126 -116
		mu 0 4 121 129 130 122
		f 4 125 137 -127 -117
		mu 0 4 122 130 131 123
		f 4 126 139 -128 -118
		mu 0 4 123 131 132 124
		f 4 127 141 -129 -119
		mu 0 4 124 132 133 125
		f 4 128 143 -130 -120
		mu 0 4 125 133 134 126
		f 4 129 145 -131 -121
		mu 0 4 126 134 135 127
		f 4 130 147 -132 -122
		mu 0 4 127 135 136 128
		f 4 131 149 -133 -123
		mu 0 4 128 136 178 180
		f 4 134 152 -137 -134
		mu 0 4 179 177 137 129
		f 4 136 154 -139 -136
		mu 0 4 129 137 138 130
		f 4 138 156 -141 -138
		mu 0 4 130 138 139 131
		f 4 140 158 -143 -140
		mu 0 4 131 139 140 132
		f 4 142 160 -145 -142
		mu 0 4 132 140 141 133
		f 4 144 162 -147 -144
		mu 0 4 133 141 142 134
		f 4 146 164 -149 -146
		mu 0 4 134 142 143 135
		f 4 148 166 -151 -148
		mu 0 4 135 143 144 136
		f 4 150 168 -152 -150
		mu 0 4 136 144 176 178
		f 4 153 171 -156 -153
		mu 0 4 177 149 175 137
		f 4 155 172 -158 -155
		mu 0 4 137 175 174 138
		f 4 157 173 -160 -157
		mu 0 4 138 174 173 139
		f 4 159 174 -162 -159
		mu 0 4 139 173 172 140
		f 4 161 175 -164 -161
		mu 0 4 140 172 171 141
		f 4 163 176 -166 -163
		mu 0 4 141 171 170 142
		f 4 165 177 -168 -165
		mu 0 4 142 170 169 143
		f 4 167 178 -170 -167
		mu 0 4 143 169 168 144
		f 4 169 179 -171 -169
		mu 0 4 144 168 147 176
		f 4 0 181 -183 -181
		mu 0 4 240 241 242 243
		f 4 -2 180 186 -185
		mu 0 4 200 201 202 203
		f 4 2 187 -189 -182
		mu 0 4 241 244 245 242
		f 4 4 191 -193 -188
		mu 0 4 244 246 247 245
		f 4 6 195 -197 -192
		mu 0 4 246 248 249 247
		f 4 8 199 -201 -196
		mu 0 4 248 250 251 249
		f 4 10 203 -205 -200
		mu 0 4 250 252 253 251
		f 4 12 207 -209 -204
		mu 0 4 252 254 255 253
		f 4 14 211 -213 -208
		mu 0 4 254 256 257 255
		f 4 16 215 -217 -212
		mu 0 4 256 258 259 257
		f 4 18 217 -219 -216
		mu 0 4 220 221 222 223
		f 4 -21 184 223 -222
		mu 0 4 204 200 203 205
		f 4 37 238 -240 -218
		mu 0 4 221 224 225 222
		f 4 -40 221 244 -243
		mu 0 4 206 204 205 207
		f 4 56 259 -261 -239
		mu 0 4 224 226 227 225
		f 4 -59 242 265 -264
		mu 0 4 208 206 207 209
		f 4 75 280 -282 -260
		mu 0 4 226 228 229 227
		f 4 -78 263 286 -285
		mu 0 4 210 208 209 211
		f 4 94 301 -303 -281
		mu 0 4 228 230 231 229
		f 4 -97 284 307 -306
		mu 0 4 212 210 211 213
		f 4 113 322 -324 -302
		mu 0 4 230 232 233 231
		f 4 -124 305 328 -327
		mu 0 4 214 212 213 215
		f 4 132 343 -345 -323
		mu 0 4 232 234 235 233
		f 4 -135 326 349 -348
		mu 0 4 216 214 215 217
		f 4 151 364 -366 -344
		mu 0 4 234 236 237 235
		f 4 -172 369 370 -368
		mu 0 4 260 261 262 263
		f 4 -154 347 371 -370
		mu 0 4 218 216 217 219
		f 4 -173 367 374 -373
		mu 0 4 264 260 263 265
		f 4 -174 372 377 -376
		mu 0 4 266 264 265 267
		f 4 -175 375 380 -379
		mu 0 4 268 266 267 269
		f 4 -176 378 383 -382
		mu 0 4 270 268 269 271
		f 4 -177 381 386 -385
		mu 0 4 272 270 271 273
		f 4 -178 384 389 -388
		mu 0 4 274 272 273 275
		f 4 -179 387 392 -391
		mu 0 4 276 274 275 277
		f 4 170 393 -395 -365
		mu 0 4 236 238 239 237
		f 4 -180 390 395 -394
		mu 0 4 278 276 277 279;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 76 
		0 1.8 
		1 1.8 
		2 1.8 
		4 1.8 
		6 1.8 
		8 1.8 
		10 1.8 
		12 1.8 
		14 1.8 
		16 1.8 
		18 1.8 
		20 1.8 
		37 1.8 
		39 1.8 
		56 1.8 
		58 1.8 
		75 1.8 
		77 1.8 
		94 1.8 
		96 1.8 
		113 1.8 
		123 1.8 
		132 1.8 
		134 1.8 
		151 1.8 
		153 1.8 
		170 1.8 
		171 1.8 
		172 1.8 
		173 1.8 
		174 1.8 
		175 1.8 
		176 1.8 
		177 1.8 
		178 1.8 
		179 1.8 
		180 1.8 
		182 1.8 
		186 1.8 
		188 1.8 
		192 1.8 
		196 1.8 
		200 1.8 
		204 1.8 
		208 1.8 
		212 1.8 
		215 1.8 
		216 1.8 
		218 1.8 
		223 1.8 
		239 1.8 
		244 1.8 
		260 1.8 
		265 1.8 
		281 1.8 
		286 1.8 
		302 1.8 
		307 1.8 
		323 1.8 
		328 1.8 
		344 1.8 
		349 1.8 
		365 1.8 
		369 1.8 
		370 1.8 
		371 1.8 
		374 1.8 
		377 1.8 
		380 1.8 
		383 1.8 
		386 1.8 
		389 1.8 
		392 1.8 
		393 1.8 
		394 1.8 
		395 1.8 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "B6D03259-40D5-BEC6-6DB7-C8B356E701C0";
	setAttr -s 17 ".lnk";
	setAttr -s 6 ".ign";
	setAttr -s 17 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "69390E81-40A5-E10C-01C6-FC8CF501BF0A";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "39372DB4-4788-2441-D666-ED8B01E1E991";
createNode displayLayerManager -n "layerManager";
	rename -uid "239C4469-41A6-61AF-3762-71AF88EDFB29";
createNode displayLayer -n "defaultLayer";
	rename -uid "4B760D53-43C8-5620-01D8-50B0C9959C6A";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "D7AD8A2F-40D7-2A6A-00D9-6081F54789C8";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "B4A6F314-4A3D-D2DA-BC58-808E92592FFD";
	setAttr ".g" yes;
createNode audio -n "Practice02";
	rename -uid "77A78CCE-4807-C896-508E-1A9BC0D71369";
	setAttr ".o" 40;
	setAttr ".ef" 233.0971450680272;
	setAttr ".se" 193.0971450680272;
	setAttr ".f" -type "string" "C:/Users/simon/Desktop/Digital Arts Hagenberg/4. Semester/2. SemProj HIGH STRUNG/High-Strung//sound/Practice02.wav";
createNode script -n "uiConfigurationScriptNode";
	rename -uid "C9520659-4D70-14EA-465A-6FA759C3C135";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|camera180|cam180\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n"
		+ "            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 0\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 0\n"
		+ "            -controlVertices 1\n            -hulls 1\n            -grid 0\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n"
		+ "            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n"
		+ "            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n"
		+ "            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n"
		+ "            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n"
		+ "            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n"
		+ "            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n"
		+ "            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 0\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 0\n            -controlVertices 1\n            -hulls 1\n            -grid 0\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n"
		+ "            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1119\n            -height 701\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n"
		+ "            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -selectCommand \"print 999\" \n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n"
		+ "            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n"
		+ "            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n"
		+ "            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n"
		+ "                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n"
		+ "                -alwaysToggleSelect 0\n                -directSelect 0\n                -isSet 0\n                -isSetMember 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                -selectionOrder \"display\" \n                -expandAttribute 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n"
		+ "                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -valueLinesToggle 0\n                -outliner \"graphEditor1OutlineEd\" \n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n"
		+ "                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n"
		+ "                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n"
		+ "                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n"
		+ "                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n"
		+ "                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n"
		+ "                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -connectedGraphingMode 1\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n"
		+ "                -extendToShapes 1\n                -showUnitConversions 0\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"|persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n"
		+ "                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n"
		+ "                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n"
		+ "                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 0\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n"
		+ "        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 0\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 0\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1119\\n    -height 701\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 0\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 0\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1119\\n    -height 701\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
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
		"stage_fertigRN" 23
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
		"stage_fertigRN.placeHolderList[20]" ""
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:stage|stage_fertig:dach|stage_fertig:dachShape.message" "|lighting|pasted__Stage_Lighting|pasted__spotLight1|pasted__spotLightShape1.message" 
		0;
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "895D829F-49BA-1B03-49C7-9897964CB793";
	addAttr -ci true -sn "ARV_options" -ln "ARV_options" -dt "string";
	setAttr ".version" -type "string" "4.2.4";
	setAttr ".ARV_options" -type "string" "Test Resolution=100%;Camera=perspShape;Color Management.Gamma=1;Color Management.Exposure=0;Background.BG=BG Color;Background.Color=0 0 0;Background.Image=;Background.Scale=1 1;Background.Offset=0 0;Background.Apply Color Management=1;Foreground.Enable FG=0;Foreground.Image=;Foreground.Scale=1 1;Foreground.Offset=0 0;Foreground.Apply Color Management=1;";
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
	rename -uid "C9711909-455F-29C0-61FA-F682A4C50E08";
	setAttr -s 57 ".phl";
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
	setAttr ".ed" -type "dataReferenceEdits" 
		"Geige_RigRN"
		"Geige_RigRN" 0
		"Geige_RigRN" 65
		2 "|Geige_Rig:Geige" "visibility" " 1"
		2 "|Geige_Rig:Geige" "translate" " -type \"double3\" 5.28615613898187053 -10.02974595268447011 31.81977700260607378"
		
		2 "|Geige_Rig:Geige" "rotate" " -type \"double3\" 90 0 0"
		2 "|Geige_Rig:Geige" "scale" " -type \"double3\" 1 1 1"
		2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:griffbrett_low" 
		"translate" " -type \"double3\" 3.12315837267231045 2.17448248438907665 9.04174171291828976"
		
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
		3 "|Geige_Rig:Geige|Geige_Rig:bogen_ctrlMiddle|Geige_Rig:bogen_LP_pivotMiddle|Geige_Rig:metall_low|Geige_Rig:metall_lowShape.instObjGroups" 
		"Geige_Rig:set1.dagSetMembers" "-na"
		3 "|Geige_Rig:Geige|Geige_Rig:bogen_ctrlMiddle|Geige_Rig:bogen_LP_pivotMiddle|Geige_Rig:sehne_low|Geige_Rig:sehne_lowShape.instObjGroups" 
		"Geige_Rig:set1.dagSetMembers" "-na"
		3 "|Geige_Rig:Geige|Geige_Rig:bogen_ctrlMiddle|Geige_Rig:bogen_LP_pivotMiddle|Geige_Rig:griff_low|Geige_Rig:griff_lowShape.instObjGroups" 
		"Geige_Rig:set1.dagSetMembers" "-na"
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
		5 0 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:bogen_ctrlMiddle|Geige_Rig:bogen_LP_pivotMiddle|Geige_Rig:metall_low|Geige_Rig:metall_lowShape.instObjGroups" 
		"Geige_Rig:set2.dagSetMembers" "Geige_RigRN.placeHolderList[26]" "Geige_RigRN.placeHolderList[27]" 
		"Geige_Rig:set1.dsm"
		5 0 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:bogen_ctrlMiddle|Geige_Rig:bogen_LP_pivotMiddle|Geige_Rig:sehne_low|Geige_Rig:sehne_lowShape.instObjGroups" 
		"Geige_Rig:set2.dagSetMembers" "Geige_RigRN.placeHolderList[28]" "Geige_RigRN.placeHolderList[29]" 
		"Geige_Rig:set1.dsm"
		5 0 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:bogen_ctrlMiddle|Geige_Rig:bogen_LP_pivotMiddle|Geige_Rig:griff_low|Geige_Rig:griff_lowShape.instObjGroups" 
		"Geige_Rig:set2.dagSetMembers" "Geige_RigRN.placeHolderList[30]" "Geige_RigRN.placeHolderList[31]" 
		"Geige_Rig:set1.dsm"
		5 0 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:schraube_low|Geige_Rig:schraube_lowShape.instObjGroups" 
		"Geige_Rig:set6.dagSetMembers" "Geige_RigRN.placeHolderList[32]" "Geige_RigRN.placeHolderList[33]" 
		"Geige_Rig:set3.dsm"
		5 0 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:inside_low|Geige_Rig:inside_lowShape.instObjGroups" 
		"Geige_Rig:set6.dagSetMembers" "Geige_RigRN.placeHolderList[34]" "Geige_RigRN.placeHolderList[35]" 
		"Geige_Rig:set3.dsm"
		5 0 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:saitenhalter_low|Geige_Rig:saitenhalter_lowShape.instObjGroups" 
		"Geige_Rig:set6.dagSetMembers" "Geige_RigRN.placeHolderList[36]" "Geige_RigRN.placeHolderList[37]" 
		"Geige_Rig:set3.dsm"
		5 0 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:metallplatte_low|Geige_Rig:metallplatte_lowShape.instObjGroups" 
		"Geige_Rig:set6.dagSetMembers" "Geige_RigRN.placeHolderList[38]" "Geige_RigRN.placeHolderList[39]" 
		"Geige_Rig:set3.dsm"
		5 0 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:kinnstuetze_low|Geige_Rig:kinnstuetze_lowShape.instObjGroups" 
		"Geige_Rig:set6.dagSetMembers" "Geige_RigRN.placeHolderList[40]" "Geige_RigRN.placeHolderList[41]" 
		"Geige_Rig:set3.dsm"
		5 0 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:hals_low|Geige_Rig:hals_lowShape.instObjGroups" 
		"Geige_Rig:set6.dagSetMembers" "Geige_RigRN.placeHolderList[42]" "Geige_RigRN.placeHolderList[43]" 
		"Geige_Rig:set3.dsm"
		5 0 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:wirbel_low|Geige_Rig:wirbel_low_04|Geige_Rig:wirbel_low_04Shape.instObjGroups" 
		"Geige_Rig:set6.dagSetMembers" "Geige_RigRN.placeHolderList[44]" "Geige_RigRN.placeHolderList[45]" 
		"Geige_Rig:set3.dsm"
		5 0 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:wirbel_low|Geige_Rig:wirbel_low_03|Geige_Rig:wirbel_low_03Shape.instObjGroups" 
		"Geige_Rig:set6.dagSetMembers" "Geige_RigRN.placeHolderList[46]" "Geige_RigRN.placeHolderList[47]" 
		"Geige_Rig:set3.dsm"
		5 0 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:wirbel_low|Geige_Rig:wirbel_low_02|Geige_Rig:wirbel_low_02Shape.instObjGroups" 
		"Geige_Rig:set6.dagSetMembers" "Geige_RigRN.placeHolderList[48]" "Geige_RigRN.placeHolderList[49]" 
		"Geige_Rig:set3.dsm"
		5 0 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:wirbel_low|Geige_Rig:wirbel_low_01|Geige_Rig:wirbel_low_01Shape.instObjGroups" 
		"Geige_Rig:set6.dagSetMembers" "Geige_RigRN.placeHolderList[50]" "Geige_RigRN.placeHolderList[51]" 
		"Geige_Rig:set3.dsm"
		5 0 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:griffbrett_low|Geige_Rig:griffbrett_lowShape.instObjGroups" 
		"Geige_Rig:set6.dagSetMembers" "Geige_RigRN.placeHolderList[52]" "Geige_RigRN.placeHolderList[53]" 
		"Geige_Rig:set3.dsm"
		5 0 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:saiten_low|Geige_Rig:saiten_lowShape.instObjGroups" 
		"Geige_Rig:set6.dagSetMembers" "Geige_RigRN.placeHolderList[54]" "Geige_RigRN.placeHolderList[55]" 
		"Geige_Rig:set3.dsm"
		5 0 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:body_low|Geige_Rig:body_lowShape.instObjGroups" 
		"Geige_Rig:set6.dagSetMembers" "Geige_RigRN.placeHolderList[56]" "Geige_RigRN.placeHolderList[57]" 
		"Geige_Rig:set3.dsm"
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:bogen_ctrlMiddle|Geige_Rig:bogen_LP_pivotMiddle|Geige_Rig:griff_low|Geige_Rig:griff_lowShape.message" "|lighting|pasted__Stage_Lighting|pasted__violin_light|pasted__violin_lightShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:bogen_ctrlMiddle|Geige_Rig:bogen_LP_pivotMiddle|Geige_Rig:sehne_low|Geige_Rig:sehne_lowShape.message" "|lighting|pasted__Stage_Lighting|pasted__violin_light|pasted__violin_lightShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:bogen_ctrlMiddle|Geige_Rig:bogen_LP_pivotMiddle|Geige_Rig:metall_low|Geige_Rig:metall_lowShape.message" "|lighting|pasted__Stage_Lighting|pasted__violin_light|pasted__violin_lightShape.message" 
		0;
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
	setAttr ".ftn" -type "string" "C:/Users/simon/Desktop/Digital Arts Hagenberg/4. Semester/2. SemProj HIGH STRUNG/High-Strung//assets/2D Planes/Scene 2 Practice/s2_l1.png";
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
	setAttr ".ftn" -type "string" "C:/Users/simon/Desktop/Digital Arts Hagenberg/4. Semester/2. SemProj HIGH STRUNG/High-Strung//assets/2D Planes/Scene 2 Practice/s5_l2.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "pasted__place2dTexture2";
	rename -uid "1F2CFF25-4318-4FF3-4980-A985DEC4B367";
createNode file -n "pasted__file3";
	rename -uid "493D07B4-4057-4E78-29B4-8BB90EB34A71";
	setAttr ".ftn" -type "string" "C:/Users/simon/Desktop/Digital Arts Hagenberg/4. Semester/2. SemProj HIGH STRUNG/High-Strung//assets/2D Planes/Scene 2 Practice/s5_l2_alpha.png";
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
	setAttr ".ftn" -type "string" "C:/Users/simon/Desktop/Digital Arts Hagenberg/4. Semester/2. SemProj HIGH STRUNG/High-Strung//assets/2D Planes/Scene 2 Practice/s2_l3.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "pasted__place2dTexture4";
	rename -uid "8EB753B9-4036-3461-2EE4-E9A3599DC194";
createNode file -n "pasted__file5";
	rename -uid "73990B7F-455F-0C1B-C3BC-28810053CFBC";
	setAttr ".ftn" -type "string" "C:/Users/simon/Desktop/Digital Arts Hagenberg/4. Semester/2. SemProj HIGH STRUNG/High-Strung//assets/2D Planes/Scene 2 Practice/s2_l3_alpha.png";
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
	setAttr ".ftn" -type "string" "C:/Users/simon/Desktop/Digital Arts Hagenberg/4. Semester/2. SemProj HIGH STRUNG/High-Strung//assets/2D Planes/Scene 2 Practice/s2_notenstand.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "pasted__place2dTexture6";
	rename -uid "E42A96D6-4C12-77B8-6F82-5094792E20E0";
createNode file -n "pasted__file7";
	rename -uid "3BC65FCF-4AD6-1F6D-6AB1-98912BD17B0C";
	setAttr ".ftn" -type "string" "C:/Users/simon/Desktop/Digital Arts Hagenberg/4. Semester/2. SemProj HIGH STRUNG/High-Strung//assets/2D Planes/Scene 2 Practice/s2_notenstand_alpha.png";
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
	setAttr -s 6 ".ktv[0:5]"  255 -10.02974595268447 280 -10.097485387570416
		 300 -10.031186220801304 320 -10.09770904903781 340 -10.031 360 -10.09770904903781;
createNode polySphere -n "polySphere1";
	rename -uid "9BDDBF1E-428E-00C0-4CBE-349EB5F899D2";
createNode animCurveTU -n "pasted__aiAreaLight4_visibility";
	rename -uid "7986FD9E-4C8C-2142-1BAC-829F370E63FF";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 1 38 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode aiAtmosphereVolume -n "aiAtmosphereVolume";
	rename -uid "A662B420-48AE-80AB-442B-BD8AAB059450";
	setAttr ".density" 0.0080000003799796104;
createNode animCurveTU -n "pasted__spotLightShape1_colorR";
	rename -uid "B340E154-45F5-AE1D-33B9-A8A9991A07A8";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0.080470427870750427 91 1;
createNode animCurveTU -n "pasted__spotLightShape1_colorG";
	rename -uid "18DAACE0-4C16-5438-61B2-48B1693624A5";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0.071007996797561646 91 0.90785527229309082;
createNode animCurveTU -n "pasted__spotLightShape1_colorB";
	rename -uid "9AB327FF-4C8F-F00C-B082-5486E1229CD0";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0.31700000166893005 91 0.6470000147819519;
createNode reference -n "notenblaetterRN";
	rename -uid "885C9A21-468E-3A30-F2C8-51B759E2778E";
	setAttr -s 24 ".phl";
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
	setAttr ".ed" -type "dataReferenceEdits" 
		"notenblaetterRN"
		"notenblaetterRN" 0
		"notenblaetterRN" 39
		0 "|notenblaetterRNfosterParent1|blatt_06" "|notenblaetter:notenblaetter" 
		"-s -r "
		0 "|notenblaetterRNfosterParent1|blatt_05" "|notenblaetter:notenblaetter" 
		"-s -r "
		0 "|notenblaetterRNfosterParent1|blatt_04" "|notenblaetter:notenblaetter" 
		"-s -r "
		0 "|notenblaetterRNfosterParent1|blatt_03" "|notenblaetter:notenblaetter" 
		"-s -r "
		0 "|notenblaetterRNfosterParent1|blatt_02" "|notenblaetter:notenblaetter" 
		"-s -r "
		0 "|notenblaetterRNfosterParent1|blatt_01" "|notenblaetter:notenblaetter" 
		"-s -r "
		2 "|notenblaetter:notenblaetter" "translate" " -type \"double3\" -4.71076270224620686 -30.28976959706681882 -6.16747932598870108"
		
		2 "|notenblaetter:notenblaetter" "rotate" " -type \"double3\" 0 -36.1080656301486087 0"
		
		2 "|notenblaetter:notenblaetter" "scale" " -type \"double3\" 0.22467004763447199 0.22467004763447199 0.22467004763447199"
		
		2 "|notenblaetter:notenblaetter|notenblaetter:blatt_01" "translate" " -type \"double3\" 16.97772580507797713 0 -12.96298192490897527"
		
		2 "|notenblaetter:notenblaetter|notenblaetter:blatt_01" "rotate" " -type \"double3\" 0 60.86413125650926048 0"
		
		2 "|notenblaetter:notenblaetter|notenblaetter:blatt_02" "translate" " -type \"double3\" -0.74184894927234457 0 11.60890708070405708"
		
		2 "|notenblaetter:notenblaetter|notenblaetter:blatt_02" "rotate" " -type \"double3\" 0 18.9524728521006196 0"
		
		2 "|notenblaetter:notenblaetter|notenblaetter:blatt_03" "translate" " -type \"double3\" -17.52595869888087421 0 31.1839066721852376"
		
		2 "|notenblaetter:notenblaetter|notenblaetter:blatt_03" "rotate" " -type \"double3\" 0 66.20541895922258391 0"
		
		5 3 "notenblaetterRN" "notenblaetter:notenblatt.memberWireframeColor" 
		"notenblaetterRN.placeHolderList[1]" ""
		5 3 "notenblaetterRN" "notenblaetter:notenblatt.memberWireframeColor" 
		"notenblaetterRN.placeHolderList[2]" ""
		5 3 "notenblaetterRN" "notenblaetter:notenblatt.memberWireframeColor" 
		"notenblaetterRN.placeHolderList[3]" ""
		5 3 "notenblaetterRN" "notenblaetter:notenblatt.memberWireframeColor" 
		"notenblaetterRN.placeHolderList[4]" ""
		5 3 "notenblaetterRN" "notenblaetter:notenblatt.memberWireframeColor" 
		"notenblaetterRN.placeHolderList[5]" ""
		5 3 "notenblaetterRN" "notenblaetter:notenblatt.memberWireframeColor" 
		"notenblaetterRN.placeHolderList[6]" ""
		5 4 "notenblaetterRN" "notenblaetter:notenblatt.groupNodes" "notenblaetterRN.placeHolderList[7]" 
		""
		5 4 "notenblaetterRN" "notenblaetter:notenblatt.groupNodes" "notenblaetterRN.placeHolderList[8]" 
		""
		5 4 "notenblaetterRN" "notenblaetter:notenblatt.groupNodes" "notenblaetterRN.placeHolderList[9]" 
		""
		5 4 "notenblaetterRN" "notenblaetter:notenblatt.groupNodes" "notenblaetterRN.placeHolderList[10]" 
		""
		5 4 "notenblaetterRN" "notenblaetter:notenblatt.groupNodes" "notenblaetterRN.placeHolderList[11]" 
		""
		5 4 "notenblaetterRN" "notenblaetter:notenblatt.groupNodes" "notenblaetterRN.placeHolderList[12]" 
		""
		5 4 "notenblaetterRN" "notenblaetter:notenblatt.dagSetMembers" "notenblaetterRN.placeHolderList[13]" 
		""
		5 4 "notenblaetterRN" "notenblaetter:notenblatt.dagSetMembers" "notenblaetterRN.placeHolderList[14]" 
		""
		5 4 "notenblaetterRN" "notenblaetter:notenblatt.dagSetMembers" "notenblaetterRN.placeHolderList[15]" 
		""
		5 4 "notenblaetterRN" "notenblaetter:notenblatt.dagSetMembers" "notenblaetterRN.placeHolderList[16]" 
		""
		5 4 "notenblaetterRN" "notenblaetter:notenblatt.dagSetMembers" "notenblaetterRN.placeHolderList[17]" 
		""
		5 4 "notenblaetterRN" "notenblaetter:notenblatt.dagSetMembers" "notenblaetterRN.placeHolderList[18]" 
		""
		5 4 "notenblaetterRN" "notenblaetter:aiStandardSurface1SG.dagSetMembers" 
		"notenblaetterRN.placeHolderList[19]" ""
		5 4 "notenblaetterRN" "notenblaetter:aiStandardSurface1SG.dagSetMembers" 
		"notenblaetterRN.placeHolderList[20]" ""
		5 4 "notenblaetterRN" "notenblaetter:aiStandardSurface1SG.dagSetMembers" 
		"notenblaetterRN.placeHolderList[21]" ""
		5 4 "notenblaetterRN" "notenblaetter:aiStandardSurface1SG.dagSetMembers" 
		"notenblaetterRN.placeHolderList[22]" ""
		5 4 "notenblaetterRN" "notenblaetter:aiStandardSurface1SG.dagSetMembers" 
		"notenblaetterRN.placeHolderList[23]" ""
		5 4 "notenblaetterRN" "notenblaetter:aiStandardSurface1SG.dagSetMembers" 
		"notenblaetterRN.placeHolderList[24]" "";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode groupId -n "groupId1";
	rename -uid "8353CBA3-4A1C-9928-D67F-46A2D1363E49";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2";
	rename -uid "A68EA210-4470-FEDE-5C22-FABA15A16B06";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3";
	rename -uid "26D43162-4E4F-8961-6B82-79839583988F";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4";
	rename -uid "7242A1BC-420C-F5A2-6700-84AF15BAD1F4";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5";
	rename -uid "EE103CD6-4B9A-0256-3F66-D8B7BE75C79D";
	setAttr ".ihi" 0;
createNode animCurveTA -n "pasted__violin_light_rotateX";
	rename -uid "45E4C73C-4E9A-1A20-4260-06A8B14DC2C8";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 -122.36577084801144 38 -11.620380716942593;
createNode animCurveTA -n "pasted__violin_light_rotateY";
	rename -uid "7BF53611-40FD-1401-1ED3-A699BCB29E58";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 81.010397900231837 38 31.21392508040309;
createNode animCurveTA -n "pasted__violin_light_rotateZ";
	rename -uid "5F3E115B-4698-F0BD-4106-F3A8E0C779D2";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 -125.13914195590831 38 -67.001179815917283;
createNode animCurveTL -n "pasted__violin_light_translateX";
	rename -uid "7E807402-4633-D544-E7B0-098845B3B87F";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 6.7040560280168302 38 -0.52050968551641663;
createNode animCurveTL -n "pasted__violin_light_translateY";
	rename -uid "0E77B92B-43D1-6A46-9A3D-C0A5CF641A71";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 -11.291242512225363 38 -10.728731180587385;
createNode animCurveTL -n "pasted__violin_light_translateZ";
	rename -uid "F5B186AD-4D09-D234-C79D-B99341B9DDD8";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 32.425960931263539 38 38.997696835948069;
createNode animCurveTU -n "pasted__violin_light_scaleX";
	rename -uid "4EFA3B95-4E6C-AC6E-72B2-24841B1E3B31";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  38 3.0202344359888564;
createNode animCurveTU -n "pasted__violin_light_scaleY";
	rename -uid "95E628F0-44F3-7769-3B02-00882BFF1F48";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  38 9.3125402183482233;
createNode animCurveTU -n "pasted__violin_light_scaleZ";
	rename -uid "DB56B6A3-446E-F63D-88E3-169734730627";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  38 8.300258188809682;
createNode animCurveTU -n "pasted__violin_lightShape_colorR";
	rename -uid "D08AAC57-420A-A89A-7CED-EABEF5686DB6";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 1 91 0;
createNode animCurveTU -n "pasted__violin_lightShape_colorG";
	rename -uid "7B0A1A52-4787-52D9-8424-00BB1655FD17";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0.88260000944137573 91 0.045600000768899918;
createNode animCurveTU -n "pasted__violin_lightShape_colorB";
	rename -uid "2A3BE97C-426F-93A0-D21A-FF8D96C16112";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  0 0.62199997901916504 91 0.23749999701976776;
createNode groupId -n "groupId6";
	rename -uid "D617BE69-4C3D-6012-E3FA-36A1AB559A20";
	setAttr ".ihi" 0;
select -ne :time1;
	setAttr -av -k on ".cch";
	setAttr -k on ".fzn";
	setAttr -av -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr ".o" 0;
	setAttr -av -k on ".unw";
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
	setAttr -s 17 ".st";
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
	setAttr -s 26 ".s";
select -ne :postProcessList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 32 ".u";
select -ne :defaultRenderingList1;
	setAttr -k on ".ihi";
	setAttr -s 4 ".r";
select -ne :lightList1;
	setAttr -s 10 ".l";
select -ne :defaultTextureList1;
	setAttr -s 44 ".tx";
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
	setAttr -s 2 ".dsm";
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
select -ne :defaultLightSet;
	setAttr -s 10 ".dsm";
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
select -ne :ikSystem;
	setAttr -s 4 ".sol";
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
connectAttr "Geige_RigRN.phl[26]" "Geige_RigRN.phl[27]";
connectAttr "Geige_RigRN.phl[28]" "Geige_RigRN.phl[29]";
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
connectAttr "notenblaetterRN.phl[1]" "blatt_Shape1.iog.og[1].gco";
connectAttr "notenblaetterRN.phl[2]" "blatt_Shape2.iog.og[1].gco";
connectAttr "notenblaetterRN.phl[3]" "blatt_Shape3.iog.og[1].gco";
connectAttr "notenblaetterRN.phl[4]" "blatt_Shape4.iog.og[1].gco";
connectAttr "notenblaetterRN.phl[5]" "blatt_Shape5.iog.og[1].gco";
connectAttr "notenblaetterRN.phl[6]" "blatt_Shape6.iog.og[1].gco";
connectAttr "groupId1.msg" "notenblaetterRN.phl[7]";
connectAttr "groupId2.msg" "notenblaetterRN.phl[8]";
connectAttr "groupId3.msg" "notenblaetterRN.phl[9]";
connectAttr "groupId4.msg" "notenblaetterRN.phl[10]";
connectAttr "groupId5.msg" "notenblaetterRN.phl[11]";
connectAttr "groupId6.msg" "notenblaetterRN.phl[12]";
connectAttr "blatt_Shape1.iog.og[1]" "notenblaetterRN.phl[13]";
connectAttr "blatt_Shape2.iog.og[1]" "notenblaetterRN.phl[14]";
connectAttr "blatt_Shape3.iog.og[1]" "notenblaetterRN.phl[15]";
connectAttr "blatt_Shape4.iog.og[1]" "notenblaetterRN.phl[16]";
connectAttr "blatt_Shape5.iog.og[1]" "notenblaetterRN.phl[17]";
connectAttr "blatt_Shape6.iog.og[1]" "notenblaetterRN.phl[18]";
connectAttr "blatt_Shape1.iog" "notenblaetterRN.phl[19]";
connectAttr "blatt_Shape2.iog" "notenblaetterRN.phl[20]";
connectAttr "blatt_Shape3.iog" "notenblaetterRN.phl[21]";
connectAttr "blatt_Shape4.iog" "notenblaetterRN.phl[22]";
connectAttr "blatt_Shape5.iog" "notenblaetterRN.phl[23]";
connectAttr "blatt_Shape6.iog" "notenblaetterRN.phl[24]";
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
connectAttr "camera180.crx" "cam180.rx";
connectAttr "camera180.cry" "cam180.ry";
connectAttr "camera180.crz" "cam180.rz";
connectAttr "camera180.db" "camShape180.coi";
connectAttr "cam180_aim_pointConstraint1.ctx" "cam180_aim.tx";
connectAttr "cam180_aim_pointConstraint1.cty" "cam180_aim.ty";
connectAttr "cam180_aim_pointConstraint1.ctz" "cam180_aim.tz";
connectAttr "cam180_aim.pim" "cam180_aim_pointConstraint1.cpim";
connectAttr "cam180_aim.rp" "cam180_aim_pointConstraint1.crp";
connectAttr "cam180_aim.rpt" "cam180_aim_pointConstraint1.crt";
connectAttr "pSphere1.t" "cam180_aim_pointConstraint1.tg[0].tt";
connectAttr "pSphere1.rp" "cam180_aim_pointConstraint1.tg[0].trp";
connectAttr "pSphere1.rpt" "cam180_aim_pointConstraint1.tg[0].trt";
connectAttr "pSphere1.pm" "cam180_aim_pointConstraint1.tg[0].tpm";
connectAttr "cam180_aim_pointConstraint1.w0" "cam180_aim_pointConstraint1.tg[0].tw"
		;
connectAttr "polySphere1.out" "pSphereShape1.i";
connectAttr "pasted__spotLightShape1_colorR.o" "pasted__spotLightShape1.cr";
connectAttr "pasted__spotLightShape1_colorG.o" "pasted__spotLightShape1.cg";
connectAttr "pasted__spotLightShape1_colorB.o" "pasted__spotLightShape1.cb";
connectAttr "pasted__violin_light_translateX.o" "pasted__violin_light.tx";
connectAttr "pasted__violin_light_translateY.o" "pasted__violin_light.ty";
connectAttr "pasted__violin_light_translateZ.o" "pasted__violin_light.tz";
connectAttr "pasted__violin_light_rotateX.o" "pasted__violin_light.rx";
connectAttr "pasted__violin_light_rotateY.o" "pasted__violin_light.ry";
connectAttr "pasted__violin_light_rotateZ.o" "pasted__violin_light.rz";
connectAttr "pasted__violin_light_scaleX.o" "pasted__violin_light.sx";
connectAttr "pasted__violin_light_scaleY.o" "pasted__violin_light.sy";
connectAttr "pasted__violin_light_scaleZ.o" "pasted__violin_light.sz";
connectAttr "pasted__aiAreaLight4_visibility.o" "pasted__violin_light.v";
connectAttr "pasted__violin_lightShape_colorR.o" "pasted__violin_lightShape.scr"
		;
connectAttr "pasted__violin_lightShape_colorG.o" "pasted__violin_lightShape.scg"
		;
connectAttr "pasted__violin_lightShape_colorB.o" "pasted__violin_lightShape.scb"
		;
connectAttr "groupId1.id" "blatt_Shape1.iog.og[1].gid";
connectAttr "groupId2.id" "blatt_Shape2.iog.og[1].gid";
connectAttr "groupId3.id" "blatt_Shape3.iog.og[1].gid";
connectAttr "groupId4.id" "blatt_Shape4.iog.og[1].gid";
connectAttr "groupId5.id" "blatt_Shape5.iog.og[1].gid";
connectAttr "groupId6.id" "blatt_Shape6.iog.og[1].gid";
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
connectAttr "aiAtmosphereVolume.msg" ":defaultArnoldRenderOptions.atm";
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
connectAttr "notenblaetterRNfosterParent1.msg" "notenblaetterRN.fp";
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
connectAttr "aiAtmosphereVolume.msg" ":defaultShaderList1.s" -na;
connectAttr "pasted__place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "pasted__place2dTexture2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "pasted__place2dTexture3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "pasted__place2dTexture4.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "pasted__place2dTexture5.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "pasted__place2dTexture6.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "pasted__place2dTexture7.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "pasted__pasted__aiSkyDomeLightShape1.ltd" ":lightList1.l" -na;
connectAttr "pasted__pasted__BG_LightShape.ltd" ":lightList1.l" -na;
connectAttr "pasted__spotLightShape1.ltd" ":lightList1.l" -na;
connectAttr "pasted__aiAreaLightShape1.ltd" ":lightList1.l" -na;
connectAttr "pasted__aiAreaLightShape2.ltd" ":lightList1.l" -na;
connectAttr "pasted__aiAreaLightShape3.ltd" ":lightList1.l" -na;
connectAttr "pasted__violin_lightShape.ltd" ":lightList1.l" -na;
connectAttr "pasted__notenständer_lightShape.ltd" ":lightList1.l" -na;
connectAttr "pasted__notenständer_light1Shape.ltd" ":lightList1.l" -na;
connectAttr "pasted__aiAreaLightShape5.ltd" ":lightList1.l" -na;
connectAttr "pasted__file1.msg" ":defaultTextureList1.tx" -na;
connectAttr "pasted__file2.msg" ":defaultTextureList1.tx" -na;
connectAttr "pasted__file3.msg" ":defaultTextureList1.tx" -na;
connectAttr "pasted__file4.msg" ":defaultTextureList1.tx" -na;
connectAttr "pasted__file5.msg" ":defaultTextureList1.tx" -na;
connectAttr "pasted__file6.msg" ":defaultTextureList1.tx" -na;
connectAttr "pasted__file7.msg" ":defaultTextureList1.tx" -na;
connectAttr "pSphereShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pasted__pasted__aiSkyDomeLight1.iog" ":defaultLightSet.dsm" -na;
connectAttr "pasted__pasted__BG_Light.iog" ":defaultLightSet.dsm" -na;
connectAttr "pasted__spotLight1.iog" ":defaultLightSet.dsm" -na;
connectAttr "pasted__aiAreaLight1.iog" ":defaultLightSet.dsm" -na;
connectAttr "pasted__aiAreaLight2.iog" ":defaultLightSet.dsm" -na;
connectAttr "pasted__aiAreaLight3.iog" ":defaultLightSet.dsm" -na;
connectAttr "pasted__violin_light.iog" ":defaultLightSet.dsm" -na;
connectAttr "pasted__notenständer_light.iog" ":defaultLightSet.dsm" -na;
connectAttr "pasted__notenständer_light1.iog" ":defaultLightSet.dsm" -na;
connectAttr "pasted__aiAreaLight5.iog" ":defaultLightSet.dsm" -na;
// End of Scene05_Practice02.ma
