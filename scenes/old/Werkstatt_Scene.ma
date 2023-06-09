//Maya ASCII 2023 scene
//Name: Werkstatt_Scene.ma
//Last modified: Tue, May 16, 2023 08:56:50 PM
//Codeset: 1252
file -rdi 1 -ns "werkstatt_fertig" -rfn "werkstatt_fertigRN" -op "v=0;" -typ
		 "mayaAscii" "E:/High-Strung//scenes/werkstatt_fertig.ma";
file -rdi 1 -ns "stage_fertig" -rfn "stage_fertigRN" -op "v=0;" -typ "mayaAscii"
		 "E:/High-Strung//scenes/stage_fertig.ma";
file -rdi 1 -ns "Geige_Rig" -rfn "Geige_RigRN" -op "v=0;" -typ "mayaAscii" "E:/High-Strung//scenes/Geige_Rig.ma";
file -r -ns "werkstatt_fertig" -dr 1 -rfn "werkstatt_fertigRN" -op "v=0;" -typ "mayaAscii"
		 "E:/High-Strung//scenes/werkstatt_fertig.ma";
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
fileInfo "UUID" "0F82C07F-407E-C8B4-63EA-3C938015D3B2";
createNode transform -s -n "persp";
	rename -uid "1C8236DF-4A13-9F3B-3E97-208F4A5A1815";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -4.7700045920103591 2.4604963567605829 179.57265540739581 ;
	setAttr ".r" -type "double3" 2.6616472703669731 -1.4000000000001191 -6.2138757676485345e-18 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "9D9339B5-431F-C3D1-3E72-70991000F072";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 134.7961340016096;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0 -22.48381858447344 44.027483560576563 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "7926B9BD-4367-C5BE-A180-84ABF1C2003C";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "DAB7BA2D-45C1-CB64-B71E-87AFA4FF77E1";
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
	rename -uid "3F7D046A-4A61-24AB-ADF1-E8AA312CF044";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 2.6949261188006268 1.5606754811753714 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "B8ACD58A-4D2F-D504-CA7F-4BAB4C2FF628";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".ovr" 1.3;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 198.48928937060697;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".dr" yes;
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "F61FCF0D-4A3F-B944-43CC-49A0D02D3F6E";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "4C62C003-4B29-148E-0AA6-EF86B34E0CA9";
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
createNode transform -n "cam1_establishingShot";
	rename -uid "E802C0E0-4F90-3235-2D92-7E881B4428F6";
createNode camera -n "cam1_establishingShotShape" -p "cam1_establishingShot";
	rename -uid "11823E38-4277-575C-94D8-ABB97D5E4A62";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".ovr" 1.3;
	setAttr ".fl" 34.999999999999993;
	setAttr -l on ".coi" 19.084343962828534;
	setAttr -l on ".ow";
	setAttr ".imn" -type "string" "persp1";
	setAttr ".den" -type "string" "persp1_depth";
	setAttr ".man" -type "string" "persp1_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".dr" yes;
createNode transform -n "cam2_topViolin";
	rename -uid "DEC6F693-4782-485F-A63F-51B1F8EE5CF7";
	setAttr ".r" -type "double3" -46.799999999988195 0 9.9431100486335541e-17 ;
createNode camera -n "cam2_topViolinShape" -p "cam2_topViolin";
	rename -uid "C3D9E072-44F1-0A46-26D8-62BBFA096A58";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".ovr" 1.3;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 20.348584844376209;
	setAttr ".imn" -type "string" "persp1";
	setAttr ".den" -type "string" "persp1_depth";
	setAttr ".man" -type "string" "persp1_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".dr" yes;
createNode transform -n "cam3_slowSnail";
	rename -uid "60D86605-452A-FED3-A97F-CF93DC794F1C";
createNode camera -n "cam3_slowSnailShape" -p "cam3_slowSnail";
	rename -uid "BF25F822-46D1-C25F-E6C9-B4B04AA60DE9";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".ovr" 1.3;
	setAttr ".fl" 34.999999999999993;
	setAttr -l on ".coi" 19.699672775274205;
	setAttr -l on ".ow";
	setAttr ".imn" -type "string" "persp1";
	setAttr ".den" -type "string" "persp1_depth";
	setAttr ".man" -type "string" "persp1_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".dr" yes;
createNode transform -n "cam4_bodyCloseUp";
	rename -uid "3038B877-401C-71F3-23F4-D1806B9CD1AB";
	setAttr ".rp" -type "double3" 3.5527136788005009e-15 0 0 ;
	setAttr ".rpt" -type "double3" -6.8581473959812874e-16 0 2.098252834130458e-15 ;
createNode camera -n "cam4_bodyCloseUpShape" -p "cam4_bodyCloseUp";
	rename -uid "AD24E7CC-4C34-AEC8-C752-CC8BD256D3EF";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".ovr" 1.3;
	setAttr ".fl" 34.999999999999979;
	setAttr -l on ".coi" 1.297929766174637;
	setAttr -l on ".ow";
	setAttr ".imn" -type "string" "persp1";
	setAttr ".den" -type "string" "persp1_depth";
	setAttr ".man" -type "string" "persp1_mask";
	setAttr ".tp" -type "double3" -7.3468483642380589 -13.648611056607647 26.194380612301771 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".dr" yes;
createNode transform -n "cam5_woodScraps";
	rename -uid "4B14FB3F-49F8-479B-40D1-8FB5C07E83BA";
createNode camera -n "cam5_woodScrapsShape" -p "cam5_woodScraps";
	rename -uid "21FF30DC-46F4-F4C1-E1C2-53AECD7D34B5";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".ovr" 1.3;
	setAttr ".fl" 34.999999999999993;
	setAttr -l on ".coi" 2.1278917748304584;
	setAttr -l on ".ow";
	setAttr ".imn" -type "string" "persp1";
	setAttr ".den" -type "string" "persp1_depth";
	setAttr ".man" -type "string" "persp1_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".dr" yes;
createNode transform -n "cam6_frontCurtain";
	rename -uid "36E1781C-4F3E-4ABF-C4F0-9684C0C82AE5";
	setAttr ".t" -type "double3" 0 0 1000.1 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
createNode camera -n "cam6_frontCurtainShape" -p "cam6_frontCurtain";
	rename -uid "7903F5B1-427F-8342-F729-F1867AC3BB0C";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".ovr" 1.3;
	setAttr -l on ".coi" 1000.1;
	setAttr -l on ".ow" 108.58411525305185;
	setAttr ".imn" -type "string" "front1";
	setAttr ".den" -type "string" "front1_depth";
	setAttr ".man" -type "string" "front1_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".dr" yes;
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "BG_planes";
	rename -uid "08F85642-49A3-252A-016A-91B9D0B9F681";
createNode transform -n "wood_plane" -p "BG_planes";
	rename -uid "2C39EDAD-4B09-2FE0-43CD-40B45EF71592";
	setAttr ".t" -type "double3" 0 -1.3195093097120637e-14 29.712708177651706 ;
	setAttr ".r" -type "double3" 90.000000000000028 0 0 ;
	setAttr ".s" -type "double3" 100 1 60 ;
	setAttr ".rp" -type "double3" 0 -3.5206068934599486 1.5634635335093122e-15 ;
	setAttr ".rpt" -type "double3" 0 3.5206068934599486 -3.5206068934599504 ;
	setAttr ".sp" -type "double3" 0 -3.5206068934599486 2.6057725558488534e-17 ;
	setAttr ".spt" -type "double3" 0 0 1.5374058079508236e-15 ;
createNode mesh -n "wood_planeShape" -p "wood_plane";
	rename -uid "07D579E6-44AD-CF1E-B8C3-9CB3BB6E4C60";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.99999936724208671 0.49992145903524943 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" -4.4269531e-05 7.4675831e-05
		 0.99995345 -7.8523008e-05 4.7670634e-05 1.000074744225 1.000045418739 0.99992144;
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
createNode transform -n "gears_plane" -p "BG_planes";
	rename -uid "DB5C9985-49F6-29F3-DC76-BD83FB260EF3";
	setAttr ".t" -type "double3" 0 -9.9017124949089048e-15 22.296674351196131 ;
	setAttr ".r" -type "double3" 90.000000000000028 0 0 ;
	setAttr ".s" -type "double3" 100 1 60 ;
	setAttr ".rp" -type "double3" 0 -3.5206068934599486 1.5634635335093122e-15 ;
	setAttr ".rpt" -type "double3" 0 3.5206068934599486 -3.5206068934599504 ;
	setAttr ".sp" -type "double3" 0 -3.5206068934599486 2.6057725558488534e-17 ;
	setAttr ".spt" -type "double3" 0 0 1.5374058079508236e-15 ;
createNode mesh -n "gears_planeShape" -p "gears_plane";
	rename -uid "14C63F64-4C9E-13A1-E216-90B77B79AFC7";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.99999936724208671 0.49992145903524943 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" -4.4269531e-05 7.4675831e-05
		 0.99995345 -7.8523008e-05 4.7670634e-05 1.000074744225 1.000045418739 0.99992144;
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
createNode transform -n "BG_plane" -p "BG_planes";
	rename -uid "7CADF07E-437C-9C47-E40B-9A85B2CB2814";
	setAttr ".t" -type "double3" 0 1.5629097788578225e-14 -35.19359948839238 ;
	setAttr ".r" -type "double3" 90.000000000000028 0 0 ;
	setAttr ".s" -type "double3" 100 1 60 ;
	setAttr ".rp" -type "double3" 0 -3.5206068934599486 1.5634635335093122e-15 ;
	setAttr ".rpt" -type "double3" 0 3.5206068934599486 -3.5206068934599504 ;
	setAttr ".sp" -type "double3" 0 -3.5206068934599486 2.6057725558488534e-17 ;
	setAttr ".spt" -type "double3" 0 0 1.5374058079508236e-15 ;
createNode mesh -n "BG_planeShape" -p "BG_plane";
	rename -uid "3EABDABB-4FCA-16CD-D10A-B7A4E36F4487";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.99999936724208671 0.49992145903524943 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" -4.4269531e-05 7.4675831e-05
		 0.99995345 -7.8523008e-05 4.7670634e-05 1.000074744225 1.000045418739 0.99992144;
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
createNode transform -n "curtains1" -p "BG_planes";
	rename -uid "C3A898D3-48BF-84FE-59DD-6EBFF8795641";
	setAttr ".t" -type "double3" 0 -1.1127317631582893e-14 51.974505533825813 ;
	setAttr ".r" -type "double3" 90.000000000000028 0 0 ;
	setAttr ".s" -type "double3" 99.6839653957758 0.99683965395775798 59.810379237465483 ;
	setAttr ".rp" -type "double3" 0 -3.5206068934599486 1.5634635335093122e-15 ;
	setAttr ".rpt" -type "double3" 0 3.5206068934599486 -3.5206068934599504 ;
	setAttr ".sp" -type "double3" 0 -3.5206068934599486 2.6057725558488534e-17 ;
	setAttr ".spt" -type "double3" 0 0 1.5374058079508236e-15 ;
createNode mesh -n "curtains1Shape" -p "curtains1";
	rename -uid "52B07010-45B9-E7CA-FE0B-CCB9645E5E46";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49995458962075645 7.3674188884483114e-05 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" -4.4269531e-05 0.0001502736
		 0.99995345 -2.9252296e-06 4.7670634e-05 1.000074744225 1.000045418739 0.99992144;
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
createNode transform -n "left_curtain" -p "BG_planes";
	rename -uid "03A90C7E-42D4-37BD-CB23-408A3BBD659A";
	setAttr ".t" -type "double3" -142 -2.3871579966088403e-14 50.891550900882841 ;
	setAttr ".r" -type "double3" 90.000000000000028 0 0 ;
	setAttr ".s" -type "double3" 100 1 60 ;
	setAttr ".rp" -type "double3" 0 -3.5206068934599486 1.5634635335093122e-15 ;
	setAttr ".rpt" -type "double3" 0 3.5206068934599486 -3.5206068934599504 ;
	setAttr ".sp" -type "double3" 0 -3.5206068934599486 2.6057725558488534e-17 ;
	setAttr ".spt" -type "double3" 0 0 1.5374058079508236e-15 ;
createNode mesh -n "left_curtainShape" -p "left_curtain";
	rename -uid "DE2B2802-41DF-B62B-DDBC-A0A9BC4AE36D";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.99999936724208671 0.49992145903524943 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" -4.4269531e-05 7.4675831e-05
		 0.99995345 -7.8523008e-05 4.7670634e-05 1.000074744225 1.000045418739 0.99992144;
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
createNode transform -n "right_curtain" -p "BG_planes";
	rename -uid "FF67DC07-4104-46FF-72DC-0497C5D7C544";
	setAttr ".t" -type "double3" 142 -2.2858085117833382e-14 50.891550900882841 ;
	setAttr ".r" -type "double3" 90.000000000000028 0 0 ;
	setAttr ".s" -type "double3" 100 1 60 ;
	setAttr ".rp" -type "double3" 0 -3.5206068934599486 1.5634635335093122e-15 ;
	setAttr ".rpt" -type "double3" 0 3.5206068934599486 -3.5206068934599504 ;
	setAttr ".sp" -type "double3" 0 -3.5206068934599486 2.6057725558488534e-17 ;
	setAttr ".spt" -type "double3" 0 0 1.5374058079508236e-15 ;
createNode mesh -n "right_curtainShape" -p "right_curtain";
	rename -uid "DAC01F3B-47CB-23BE-8F61-1DB99E7D328D";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.99999936724208671 0.49992145903524943 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" -4.4269531e-05 7.4675831e-05
		 0.99995345 -7.8523008e-05 4.7670634e-05 1.000074744225 1.000045418739 0.99992144;
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
	rename -uid "473FD274-4DE7-B2AC-8CCD-20B1DCD90945";
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
	setAttr -l on ".rz";
	setAttr -av ".ro";
	setAttr -av ".shxy";
	setAttr -av ".shxz";
	setAttr -av ".shyz";
	setAttr -av ".rpx";
	setAttr -av ".rpy";
	setAttr -av ".rpz";
	setAttr ".rpt" -type "double3" -6.8581473959812874e-16 0 0 ;
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
	rename -uid "60DE77DC-41BD-B245-205C-D48ED71A00B2";
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
	setAttr -av ".rnd";
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
	setAttr ".coi" 19.084343962828534;
	setAttr ".ow" 10;
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
	setAttr ".ai_translator" -type "string" "orthographic";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "3918AE26-46FA-D3FA-285D-12834B978EF3";
	setAttr -s 30 ".lnk";
	setAttr -s 30 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "4FD540E1-47B3-6383-CC78-49AD803F4F0F";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "C7343D85-42D7-2A98-09B3-F3882DB14D95";
createNode displayLayerManager -n "layerManager";
	rename -uid "54CD9669-467D-80CA-B2AD-5E8C84C0CB3B";
createNode displayLayer -n "defaultLayer";
	rename -uid "73745007-49E7-1307-9590-C49235361C36";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "8FF28E1B-4BAD-249B-837C-74A5039A4AF4";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "4F4B4112-47EE-7924-7764-26B31285EFF0";
	setAttr ".g" yes;
createNode reference -n "werkstatt_fertigRN";
	rename -uid "E261624D-492A-0459-3D76-CEBF9A7A12D0";
	setAttr ".fn[0]" -type "string" "E:/High-Strung//scenes/werkstatt_fertig.ma";
	setAttr -s 24 ".phl";
	setAttr ".phl[23]" 0;
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
	setAttr ".ed" -type "dataReferenceEdits" 
		"werkstatt_fertigRN"
		"werkstatt_fertigRN" 2
		3 "|werkstatt_fertig:werktisch|werkstatt_fertig:tisch_low|werkstatt_fertig:tisch_lowShape.instObjGroups" 
		":initialShadingGroup.dagSetMembers" "-na"
		5 0 "werkstatt_fertigRN" "|werkstatt_fertig:werktisch|werkstatt_fertig:tisch_low|werkstatt_fertig:tisch_lowShape.instObjGroups" 
		"werkstatt_fertig:aiStandardSurface1SG.dagSetMembers" "werkstatt_fertigRN.placeHolderList[23]" 
		"werkstatt_fertigRN.placeHolderList[24]" ":initialShadingGroup.dsm"
		"werkstatt_fertigRN" 37
		2 "|werkstatt_fertig:spans" "visibility" " 1"
		2 "|werkstatt_fertig:spans" "translate" " -type \"double3\" -17.51368247273217449 -29.74715953448566097 31.97201029257290372"
		
		2 "|werkstatt_fertig:spans|werkstatt_fertig:span_02" "translate" " -type \"double3\" 8.73732880836319303 1.06038199306763481 -5.33965669048047875"
		
		2 "|werkstatt_fertig:spans|werkstatt_fertig:span_02" "rotate" " -type \"double3\" 0 53.23494319122720242 0"
		
		2 "|werkstatt_fertig:spans|werkstatt_fertig:span_03" "rotate" " -type \"double3\" -36.25855021437359937 56.75723443807343926 0"
		
		2 "|werkstatt_fertig:spans|werkstatt_fertig:span_04" "rotate" " -type \"double3\" -15.96431820709304183 0 0"
		
		2 "|werkstatt_fertig:spans|werkstatt_fertig:span_05" "translate" " -type \"double3\" 2.83229504264997445 1.2589085678574623 -3.11106670697745002"
		
		2 "|werkstatt_fertig:spans|werkstatt_fertig:span_06" "translate" " -type \"double3\" -12.47630505309370719 1.678121609360536 6.40383057943228273"
		
		2 "|werkstatt_fertig:spans|werkstatt_fertig:span_06" "rotate" " -type \"double3\" -14.50695065983655319 -26.54934022653396397 6.59704698139295687"
		
		2 "|werkstatt_fertig:spans|werkstatt_fertig:span_07" "translate" " -type \"double3\" 1.59180126860900328 2.55887200379474233 -1.28358878680320876"
		
		2 "|werkstatt_fertig:spans|werkstatt_fertig:span_07" "rotate" " -type \"double3\" 83.87541939493290499 43.26332389393569855 0"
		
		2 "|werkstatt_fertig:werktisch" "translate" " -type \"double3\" 0 -29.74715953448564676 19.10266014358572662"
		
		2 "|werkstatt_fertig:werktisch|werkstatt_fertig:hebel_low|werkstatt_fertig:hebel_lowShape" 
		"dispResolution" " 1"
		2 "|werkstatt_fertig:werktisch|werkstatt_fertig:hebel_low|werkstatt_fertig:hebel_lowShape" 
		"displaySmoothMesh" " 0"
		2 "werkstatt_fertig:ID_wood" "baseColor" " -type \"float3\" 1 0.68440002 0.33329998999999999"
		
		3 "|werkstatt_fertig:werktisch|werkstatt_fertig:zwinge_low|werkstatt_fertig:zwinge_lowShape.instObjGroups" 
		":initialShadingGroup.dagSetMembers" "-na"
		3 "|werkstatt_fertig:spans|werkstatt_fertig:span_04|werkstatt_fertig:span_Shape4.instObjGroups" 
		":initialShadingGroup.dagSetMembers" "-na"
		3 "|werkstatt_fertig:spans|werkstatt_fertig:span_01|werkstatt_fertig:span_Shape1.instObjGroups" 
		":initialShadingGroup.dagSetMembers" "-na"
		3 "|werkstatt_fertig:werktisch|werkstatt_fertig:zwinge_schrauben_low|werkstatt_fertig:zwinge_schrauben_lowShape.instObjGroups" 
		":initialShadingGroup.dagSetMembers" "-na"
		3 "|werkstatt_fertig:spans|werkstatt_fertig:span_06|werkstatt_fertig:span_Shape6.instObjGroups" 
		":initialShadingGroup.dagSetMembers" "-na"
		3 "|werkstatt_fertig:spans|werkstatt_fertig:span_02|werkstatt_fertig:span_Shape2.instObjGroups" 
		":initialShadingGroup.dagSetMembers" "-na"
		3 "|werkstatt_fertig:spans|werkstatt_fertig:span_05|werkstatt_fertig:span_Shape5.instObjGroups" 
		":initialShadingGroup.dagSetMembers" "-na"
		3 "|werkstatt_fertig:spans|werkstatt_fertig:span_07|werkstatt_fertig:span_Shape7.instObjGroups" 
		":initialShadingGroup.dagSetMembers" "-na"
		3 "|werkstatt_fertig:spans|werkstatt_fertig:span_03|werkstatt_fertig:span_Shape3.instObjGroups" 
		":initialShadingGroup.dagSetMembers" "-na"
		3 "|werkstatt_fertig:werktisch|werkstatt_fertig:hebel_low|werkstatt_fertig:hebel_lowShape.instObjGroups" 
		":initialShadingGroup.dagSetMembers" "-na"
		3 "|werkstatt_fertig:werktisch|werkstatt_fertig:schrauben_low|werkstatt_fertig:schrauben_lowShape.instObjGroups" 
		":initialShadingGroup.dagSetMembers" "-na"
		5 0 "werkstatt_fertigRN" "|werkstatt_fertig:spans|werkstatt_fertig:span_07|werkstatt_fertig:span_Shape7.instObjGroups" 
		"werkstatt_fertig:aiStandardSurface1SG.dagSetMembers" "werkstatt_fertigRN.placeHolderList[25]" 
		"werkstatt_fertigRN.placeHolderList[26]" ":initialShadingGroup.dsm"
		5 0 "werkstatt_fertigRN" "|werkstatt_fertig:spans|werkstatt_fertig:span_06|werkstatt_fertig:span_Shape6.instObjGroups" 
		"werkstatt_fertig:aiStandardSurface1SG.dagSetMembers" "werkstatt_fertigRN.placeHolderList[27]" 
		"werkstatt_fertigRN.placeHolderList[28]" ":initialShadingGroup.dsm"
		5 0 "werkstatt_fertigRN" "|werkstatt_fertig:spans|werkstatt_fertig:span_05|werkstatt_fertig:span_Shape5.instObjGroups" 
		"werkstatt_fertig:aiStandardSurface1SG.dagSetMembers" "werkstatt_fertigRN.placeHolderList[29]" 
		"werkstatt_fertigRN.placeHolderList[30]" ":initialShadingGroup.dsm"
		5 0 "werkstatt_fertigRN" "|werkstatt_fertig:spans|werkstatt_fertig:span_04|werkstatt_fertig:span_Shape4.instObjGroups" 
		"werkstatt_fertig:aiStandardSurface1SG.dagSetMembers" "werkstatt_fertigRN.placeHolderList[31]" 
		"werkstatt_fertigRN.placeHolderList[32]" ":initialShadingGroup.dsm"
		5 0 "werkstatt_fertigRN" "|werkstatt_fertig:spans|werkstatt_fertig:span_03|werkstatt_fertig:span_Shape3.instObjGroups" 
		"werkstatt_fertig:aiStandardSurface1SG.dagSetMembers" "werkstatt_fertigRN.placeHolderList[33]" 
		"werkstatt_fertigRN.placeHolderList[34]" ":initialShadingGroup.dsm"
		5 0 "werkstatt_fertigRN" "|werkstatt_fertig:spans|werkstatt_fertig:span_02|werkstatt_fertig:span_Shape2.instObjGroups" 
		"werkstatt_fertig:aiStandardSurface1SG.dagSetMembers" "werkstatt_fertigRN.placeHolderList[35]" 
		"werkstatt_fertigRN.placeHolderList[36]" ":initialShadingGroup.dsm"
		5 0 "werkstatt_fertigRN" "|werkstatt_fertig:spans|werkstatt_fertig:span_01|werkstatt_fertig:span_Shape1.instObjGroups" 
		"werkstatt_fertig:aiStandardSurface1SG.dagSetMembers" "werkstatt_fertigRN.placeHolderList[37]" 
		"werkstatt_fertigRN.placeHolderList[38]" ":initialShadingGroup.dsm"
		5 0 "werkstatt_fertigRN" "|werkstatt_fertig:werktisch|werkstatt_fertig:zwinge_low|werkstatt_fertig:zwinge_lowShape.instObjGroups" 
		"werkstatt_fertig:aiStandardSurface1SG.dagSetMembers" "werkstatt_fertigRN.placeHolderList[39]" 
		"werkstatt_fertigRN.placeHolderList[40]" ":initialShadingGroup.dsm"
		5 0 "werkstatt_fertigRN" "|werkstatt_fertig:werktisch|werkstatt_fertig:hebel_low|werkstatt_fertig:hebel_lowShape.instObjGroups" 
		"werkstatt_fertig:aiStandardSurface1SG.dagSetMembers" "werkstatt_fertigRN.placeHolderList[41]" 
		"werkstatt_fertigRN.placeHolderList[42]" ":initialShadingGroup.dsm"
		5 0 "werkstatt_fertigRN" "|werkstatt_fertig:werktisch|werkstatt_fertig:zwinge_schrauben_low|werkstatt_fertig:zwinge_schrauben_lowShape.instObjGroups" 
		"werkstatt_fertig:aiStandardSurface1SG.dagSetMembers" "werkstatt_fertigRN.placeHolderList[43]" 
		"werkstatt_fertigRN.placeHolderList[44]" ":initialShadingGroup.dsm"
		5 0 "werkstatt_fertigRN" "|werkstatt_fertig:werktisch|werkstatt_fertig:schrauben_low|werkstatt_fertig:schrauben_lowShape.instObjGroups" 
		"werkstatt_fertig:aiStandardSurface1SG.dagSetMembers" "werkstatt_fertigRN.placeHolderList[45]" 
		"werkstatt_fertigRN.placeHolderList[46]" ":initialShadingGroup.dsm";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode partition -s -n "creasePartition";
	rename -uid "D94EFE65-412A-FA80-77D7-85B08A9F876E";
	setAttr -s 3 ".st";
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "12E5D02D-40BA-5356-BAED-249C8F85C08D";
	addAttr -ci true -sn "ARV_options" -ln "ARV_options" -dt "string";
	setAttr ".version" -type "string" "5.1.2";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "24700549-4EE4-DD14-4EB4-47AC923E5D84";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "849002C9-403E-38C6-10A2-49A943834452";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "EF6FAF0B-4609-6DC4-3E04-3A81CC2578B6";
	setAttr ".output_mode" 0;
	setAttr ".ai_translator" -type "string" "maya";
createNode reference -n "stage_fertigRN";
	rename -uid "331A0338-4218-BB9C-421E-D89641898A20";
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
		"stage_fertigRN"
		"stage_fertigRN" 0
		"stage_fertigRN" 26
		2 "|stage_fertig:plane_canvasSize" "translate" " -type \"double3\" 0 0 -38.70749731903006108"
		
		2 "stage_fertig:pillar_MAT" "baseColor" " -type \"float3\" 1 0.83289999000000003 0.64700000999999996"
		
		3 "stage_fertig:groupId76.message" ":initialShadingGroup.groupNodes" "-na"
		
		3 "stage_fertig:groupId88.message" ":initialShadingGroup.groupNodes" "-na"
		
		3 "stage_fertig:groupId87.groupId" "|stage_fertig:stage|stage_fertig:verziehrung|stage_fertig:verziehrung_cubes|stage_fertig:verziehrung_cubesShape.instObjGroups.objectGroups[0].objectGroupId" 
		""
		3 ":initialShadingGroup.memberWireframeColor" "|stage_fertig:stage|stage_fertig:verziehrung|stage_fertig:verziehrung_cubes|stage_fertig:verziehrung_cubesShape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "|stage_fertig:stage|stage_fertig:verziehrung|stage_fertig:verziehrung_cubes|stage_fertig:verziehrung_cubesShape.instObjGroups.objectGroups[0]" 
		":initialShadingGroup.dagSetMembers" "-na"
		3 "stage_fertig:groupId86.groupId" "|stage_fertig:stage|stage_fertig:verziehrung|stage_fertig:verziehrungShape.instObjGroups.objectGroups[0].objectGroupId" 
		""
		3 ":initialShadingGroup.memberWireframeColor" "|stage_fertig:stage|stage_fertig:verziehrung|stage_fertig:verziehrungShape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "|stage_fertig:stage|stage_fertig:verziehrung|stage_fertig:verziehrungShape.instObjGroups.objectGroups[0]" 
		":initialShadingGroup.dagSetMembers" "-na"
		3 "stage_fertig:groupId87.message" ":initialShadingGroup.groupNodes" "-na"
		
		3 "|stage_fertig:plane_canvasSize|stage_fertig:plane_canvasSizeShape.instObjGroups" 
		":initialShadingGroup.dagSetMembers" "-na"
		3 "stage_fertig:groupId86.message" ":initialShadingGroup.groupNodes" "-na"
		
		3 "stage_fertig:groupId88.groupId" "|stage_fertig:stage|stage_fertig:stageShape.instObjGroups.objectGroups[0].objectGroupId" 
		""
		3 ":initialShadingGroup.memberWireframeColor" "|stage_fertig:stage|stage_fertig:stageShape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "|stage_fertig:stage|stage_fertig:stageShape.instObjGroups.objectGroups[0]" 
		":initialShadingGroup.dagSetMembers" "-na"
		3 "stage_fertig:groupId76.groupId" "|stage_fertig:stage|stage_fertig:pillars|stage_fertig:pillarsShape.instObjGroups.objectGroups[1].objectGroupId" 
		""
		3 ":initialShadingGroup.memberWireframeColor" "|stage_fertig:stage|stage_fertig:pillars|stage_fertig:pillarsShape.instObjGroups.objectGroups[1].objectGrpColor" 
		""
		3 "|stage_fertig:stage|stage_fertig:pillars|stage_fertig:pillarsShape.instObjGroups.objectGroups[1]" 
		":initialShadingGroup.dagSetMembers" "-na"
		3 "|stage_fertig:stage|stage_fertig:vorbau|stage_fertig:vorbauShape.instObjGroups" 
		":initialShadingGroup.dagSetMembers" "-na"
		5 0 "stage_fertigRN" "|stage_fertig:plane_canvasSize|stage_fertig:plane_canvasSizeShape.instObjGroups" 
		"stage_fertig:aiStandardSurface4SG.dagSetMembers" "stage_fertigRN.placeHolderList[1]" 
		"stage_fertigRN.placeHolderList[2]" ":initialShadingGroup.dsm"
		5 0 "stage_fertigRN" "|stage_fertig:stage|stage_fertig:verziehrung|stage_fertig:verziehrung_cubes|stage_fertig:verziehrung_cubesShape.instObjGroups" 
		"stage_fertig:aiStandardSurface4SG.dagSetMembers" "stage_fertigRN.placeHolderList[3]" 
		"stage_fertigRN.placeHolderList[4]" ""
		5 0 "stage_fertigRN" "|stage_fertig:stage|stage_fertig:verziehrung|stage_fertig:verziehrungShape.instObjGroups" 
		"stage_fertig:aiStandardSurface4SG.dagSetMembers" "stage_fertigRN.placeHolderList[5]" 
		"stage_fertigRN.placeHolderList[6]" ""
		5 0 "stage_fertigRN" "|stage_fertig:stage|stage_fertig:pillars|stage_fertig:pillarsShape.instObjGroups" 
		"stage_fertig:aiStandardSurface4SG.dagSetMembers" "stage_fertigRN.placeHolderList[7]" 
		"stage_fertigRN.placeHolderList[8]" ""
		5 0 "stage_fertigRN" "|stage_fertig:stage|stage_fertig:vorbau|stage_fertig:vorbauShape.instObjGroups" 
		"stage_fertig:aiStandardSurface4SG.dagSetMembers" "stage_fertigRN.placeHolderList[9]" 
		"stage_fertigRN.placeHolderList[10]" ":initialShadingGroup.dsm"
		5 0 "stage_fertigRN" "|stage_fertig:stage|stage_fertig:stageShape.instObjGroups" 
		"stage_fertig:aiStandardSurface4SG.dagSetMembers" "stage_fertigRN.placeHolderList[11]" 
		"stage_fertigRN.placeHolderList[12]" "";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode reference -n "Geige_RigRN";
	rename -uid "50F0A8A4-4622-2104-8021-058CC297A1E7";
	setAttr ".ed" -type "dataReferenceEdits" 
		"Geige_RigRN"
		"Geige_RigRN" 0
		"Geige_RigRN" 3
		2 "|Geige_Rig:Geige" "translate" " -type \"double3\" 1.6675419578355517 -13.81534217218106875 24.25187424300593264"
		
		2 "|Geige_Rig:Geige" "rotate" " -type \"double3\" 3.00000000000000044 -69.87141372781734106 0"
		
		2 "|Geige_Rig:Geige|Geige_Rig:bogen_ctrlMiddle" "visibility" " 0";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "E1186B5D-47E1-296F-C3BD-0C862FCCC73E";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 520\n            -height 220\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 520\n            -height 219\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 0\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 520\n            -height 219\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|cam1_establishingShot\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n"
		+ "            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 0\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 0\n            -controlVertices 1\n            -hulls 1\n            -grid 0\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n"
		+ "            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1047\n            -height 483\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n"
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
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -frameRange -148.031637 1393.972948 \n                -initialized 1\n                -manageSequencer 1 \n"
		+ "                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n"
		+ "                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n"
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
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -camera \\\"|cam1_establishingShot\\\" \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 0\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 0\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1047\\n    -height 483\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -camera \\\"|cam1_establishingShot\\\" \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 0\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 0\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1047\\n    -height 483\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "2B51A39F-4409-EF90-7ABD-8A84E92A7BA4";
	setAttr ".b" -type "string" "playbackOptions -min 285 -max 400 -ast 285 -aet 400 ";
	setAttr ".st" 6;
createNode animCurveTL -n "cam1_translateX";
	rename -uid "1DC83D6D-4E21-7641-218F-76AC631764C4";
	setAttr ".tan" 28;
	setAttr -s 4 ".ktv[0:3]"  0 0 96 0 168 0 287 0.63369708647754508;
	setAttr -s 4 ".kot[0:3]"  18 18 18 18;
createNode animCurveTL -n "cam1_translateY";
	rename -uid "7270D3B6-4A5E-E8A9-B8EF-39B055536EBE";
	setAttr ".tan" 28;
	setAttr -s 4 ".ktv[0:3]"  0 121.93370663554842 96 121.93370663554842
		 168 0.55298538569004307 287 0.62610428028360487;
	setAttr -s 4 ".kot[0:3]"  18 18 18 18;
createNode animCurveTL -n "cam1_translateZ";
	rename -uid "9C1C987F-4968-8955-A8AA-EFA1C83C091A";
	setAttr ".tan" 28;
	setAttr -s 4 ".ktv[0:3]"  0 222.49890184808683 96 222.49890184808683
		 168 222.49890184808683 287 104.12334029146285;
	setAttr -s 4 ".kot[0:3]"  18 18 18 18;
createNode animCurveTA -n "cam1_rotateX";
	rename -uid "F45ADD5A-461C-23F0-5F74-2387F30F819D";
	setAttr ".tan" 28;
	setAttr -s 3 ".ktv[0:2]"  0 0 96 0 168 0;
	setAttr -s 3 ".kot[0:2]"  18 18 18;
createNode animCurveTA -n "cam1_rotateY";
	rename -uid "83F8619B-473D-D258-D1F1-25A1287FE67B";
	setAttr ".tan" 28;
	setAttr -s 3 ".ktv[0:2]"  0 0 96 0 168 0;
	setAttr -s 3 ".kot[0:2]"  18 18 18;
createNode animCurveTA -n "cam1_rotateZ";
	rename -uid "38A75F09-4A97-A405-150B-FEB0288C2D0F";
	setAttr ".tan" 28;
	setAttr -s 3 ".ktv[0:2]"  0 0 96 0 168 0;
	setAttr -s 3 ".kot[0:2]"  18 18 18;
createNode animCurveTL -n "cam3_slowSnake_translateX";
	rename -uid "3A7D59CF-4090-F23F-598C-CAA4C2161A53";
	setAttr ".tan" 2;
	setAttr -s 2 ".ktv[0:1]"  359 3.7562448075395349 432 4.2938349255858608;
createNode animCurveTL -n "cam3_slowSnake_translateY";
	rename -uid "44BA51A9-4088-D531-BB6C-648CE39D6990";
	setAttr ".tan" 2;
	setAttr -s 2 ".ktv[0:1]"  359 -10.61662915032862 432 -10.455947629568302;
createNode animCurveTL -n "cam3_slowSnake_translateZ";
	rename -uid "08EC7EB6-435B-8100-79AF-E8A09BACEE1F";
	setAttr ".tan" 2;
	setAttr -s 2 ".ktv[0:1]"  359 19.181445824535576 432 19.07886531856721;
createNode animCurveTA -n "cam3_slowSnake_rotateX";
	rename -uid "03AA7B3C-4BFA-134B-DB69-77BB17607588";
	setAttr ".tan" 2;
	setAttr ".ktv[0]"  359 -64.80000000000156;
createNode animCurveTA -n "cam3_slowSnake_rotateY";
	rename -uid "538DCF4D-4EFA-57E9-1578-7790B6CE2165";
	setAttr ".tan" 2;
	setAttr ".ktv[0]"  359 -27.800000000000505;
createNode animCurveTA -n "cam3_slowSnake_rotateZ";
	rename -uid "BABBC2A5-4975-7AC3-F7C0-E7B77E8502DB";
	setAttr ".tan" 2;
	setAttr ".ktv[0]"  359 0;
createNode reference -n "sharedReferenceNode";
	rename -uid "67BDA74F-4420-DD26-CFA2-53A6341DFBB1";
	setAttr ".ed" -type "dataReferenceEdits" 
		"sharedReferenceNode";
createNode aiStandardSurface -n "aiStandardSurface1";
	rename -uid "B997C280-41A9-DC99-D483-558C004C4438";
createNode shadingEngine -n "aiStandardSurface1SG";
	rename -uid "48CFFE43-486D-5782-F8C4-B1981CD6907F";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "2D7BB1D8-47AD-CCFE-7C8C-3E8C804BD535";
createNode file -n "file1";
	rename -uid "2CEF77AA-4CEF-CA7A-EF99-AE94413EEC5A";
	setAttr ".ftn" -type "string" "E:/High-Strung//assets/2D Planes/Scene 1 Production/s1_l1.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture1";
	rename -uid "76377239-43C8-BD55-D86D-B88374426EF5";
createNode file -n "file2";
	rename -uid "D30EECC6-40A1-1CF3-1A84-3DBD126965C0";
	setAttr ".ftn" -type "string" "E:/High-Strung//assets/2D Planes/Scene 1 Production/s1_l1_alpha.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture2";
	rename -uid "48BEDAB7-4441-2ACF-A57E-7EA6DFAE19B8";
createNode aiStandardSurface -n "aiStandardSurface2";
	rename -uid "1A26E51C-483C-6EE6-66F7-4F890F684A59";
createNode shadingEngine -n "aiStandardSurface2SG";
	rename -uid "A950A5C0-4E50-0664-6801-47AB95435FAD";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
	rename -uid "61791212-401D-40BB-00A9-A7BE8DE64384";
createNode file -n "file3";
	rename -uid "9402CD49-41D5-B48A-C2F6-C59ED31014F1";
	setAttr ".ftn" -type "string" "E:/High-Strung//assets/2D Planes/Scene 1 Production/s1_l2_v2.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture3";
	rename -uid "D56AE7F2-4229-FA4B-625E-F8937151F08E";
createNode file -n "file4";
	rename -uid "0C858138-4A18-3DEA-CBCB-6C9B16CB14A6";
	setAttr ".ftn" -type "string" "E:/High-Strung//assets/2D Planes/Scene 1 Production/s1_l2_v2_alpha.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture4";
	rename -uid "61028E75-41F7-6014-8E0E-308B48BDAA4E";
createNode aiStandardSurface -n "aiStandardSurface3";
	rename -uid "4C628C2D-4A79-6800-4348-05AF52BD786F";
createNode shadingEngine -n "aiStandardSurface3SG";
	rename -uid "63E3226A-42B2-3678-AF7B-4B924435BBB2";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo3";
	rename -uid "59CC2457-492B-0482-237C-FE99837A808C";
createNode file -n "file5";
	rename -uid "5B849DB4-4173-3F75-ADAC-2287423F2E3B";
	setAttr ".ftn" -type "string" "E:/High-Strung//assets/2D Planes/Scene 1 Production/s1_l3.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture5";
	rename -uid "784B3B6F-4D4B-2C6F-8249-F694DE90FAD3";
createNode aiStandardSurface -n "aiStandardSurface4";
	rename -uid "A1B07764-4EBB-035E-4A75-B5BD2263DC1E";
createNode shadingEngine -n "aiStandardSurface4SG";
	rename -uid "BBBFF0E8-407B-4B0D-4F3E-829C8CA14ABA";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo4";
	rename -uid "EB2DE0B7-4417-7A6B-B370-109C3C0532A8";
createNode file -n "file6";
	rename -uid "29564E53-4C04-7413-E8E6-D48CDBC8C8BF";
	setAttr ".ftn" -type "string" "E:/High-Strung//assets/2D Planes/Stage Curtains/curtains.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture6";
	rename -uid "45B55F6C-43FB-8447-0248-B89A3BAABE7A";
createNode file -n "file7";
	rename -uid "7C655B0A-4D14-A669-4F7D-FF85BEB6E3DA";
	setAttr ".ftn" -type "string" "E:/High-Strung//assets/2D Planes/Stage Curtains/alpha_curtains.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture7";
	rename -uid "8B44F9CE-48CC-3D66-6E8C-8798ABE2AF97";
createNode aiStandardSurface -n "aiStandardSurface5";
	rename -uid "1A0C1696-413F-7BA4-6049-2CA973BBDF13";
createNode shadingEngine -n "aiStandardSurface5SG";
	rename -uid "C3F35DB8-4353-FE4C-5776-6ABAF1A26302";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo5";
	rename -uid "CA0B5861-4F59-0070-D820-9393016D7DD6";
createNode file -n "file8";
	rename -uid "3F518810-4317-31EC-20B5-63A3244382B4";
	setAttr ".ftn" -type "string" "E:/High-Strung//assets/2D Planes/Stage Curtains/Curtain_left.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture8";
	rename -uid "330349BF-4478-F0BB-BE02-0E8C75D9A1D7";
createNode file -n "file9";
	rename -uid "EF25CE9B-474E-0299-C4EE-119B5E9A7DA1";
	setAttr ".ftn" -type "string" "E:/High-Strung//assets/2D Planes/Stage Curtains/Curtains_left_alpha.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture9";
	rename -uid "0F20AB2E-45CF-1557-6328-738767FB2B3C";
createNode aiStandardSurface -n "aiStandardSurface6";
	rename -uid "2FE65438-41CD-A4FD-9C42-F79D8286D242";
createNode shadingEngine -n "aiStandardSurface6SG";
	rename -uid "4AD0A350-4EA2-C276-ECC5-D79439F314B2";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo6";
	rename -uid "042F67BE-4F18-E8B2-C181-4897A0E4CE29";
createNode file -n "file10";
	rename -uid "4B43C299-4DAF-A40B-03FA-9E9314233A07";
	setAttr ".ftn" -type "string" "E:/High-Strung//assets/2D Planes/Stage Curtains/Curtain_right.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture10";
	rename -uid "3A0F7CCF-42D7-9C88-245C-1D8684DF8260";
createNode file -n "file11";
	rename -uid "EB7D7A0B-4A84-388F-25AD-F494AF763CDF";
	setAttr ".ftn" -type "string" "E:/High-Strung//assets/2D Planes/Stage Curtains/Curtains_right_alpha.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture11";
	rename -uid "C42EBCE1-446E-1031-6824-A4BCD3AFC7D7";
createNode timeSliderBookmark -n "timeSliderBookmark1";
	rename -uid "8DE5EB34-49B8-6258-9421-1BB0F138A06E";
	setAttr ".nm" -type "string" "Titel";
	setAttr ".c" -type "float3" 0.67058825 0.23529412 0.23529412 ;
	setAttr ".tsp" 96;
	setAttr ".prty" 1;
createNode timeSliderBookmark -n "timeSliderBookmark2";
	rename -uid "B1E01DA8-4603-E0A4-FEDB-57BC72D96DA3";
	setAttr ".nm" -type "string" "MoveDown";
	setAttr ".c" -type "float3" 0.74901962 0.40000001 0.14901961 ;
	setAttr ".tst" 96;
	setAttr ".tsp" 168;
	setAttr ".prty" 2;
createNode timeSliderBookmark -n "timeSliderBookmark3";
	rename -uid "F8EB7B68-49C5-7B2D-5846-849280159AC7";
	setAttr ".nm" -type "string" "Zoom";
	setAttr ".c" -type "float3" 0.74901962 0.63921571 0.3019608 ;
	setAttr ".tst" 168;
	setAttr ".tsp" 288;
	setAttr ".prty" 3;
createNode timeSliderBookmark -n "timeSliderBookmark4";
	rename -uid "9805D72C-432F-47AD-F426-E393393FFB93";
	setAttr ".nm" -type "string" "Makro Body";
	setAttr ".c" -type "float3" 0.13725491 0.54901963 0.27450982 ;
	setAttr ".tst" 288;
	setAttr ".tsp" 360;
	setAttr ".prty" 4;
createNode timeSliderBookmark -n "timeSliderBookmark5";
	rename -uid "7778DB8C-4CA4-1C62-AA60-CBA4F355029C";
	setAttr ".nm" -type "string" "Makro Schnecke";
	setAttr ".c" -type "float3" 0.098039217 0.41960785 0.65098041 ;
	setAttr ".tst" 360;
	setAttr ".tsp" 432;
	setAttr ".prty" 5;
createNode timeSliderBookmark -n "timeSliderBookmark6";
	rename -uid "B7D66E54-472E-2135-EA3C-7D893E4BF483";
	setAttr ".nm" -type "string" "Makro Body Close Up";
	setAttr ".c" -type "float3" 0.45490196 0.27843139 0.7019608 ;
	setAttr ".tst" 432;
	setAttr ".tsp" 504;
	setAttr ".prty" 6;
createNode timeSliderBookmark -n "timeSliderBookmark7";
	rename -uid "8E945A3D-42A9-0A78-F061-F48DDFA4E40C";
	setAttr ".nm" -type "string" "Makro Wood Scraps";
	setAttr ".c" -type "float3" 0.49019608 0.38431373 0.24313726 ;
	setAttr ".tst" 504;
	setAttr ".tsp" 552;
	setAttr ".prty" 7;
createNode timeSliderBookmark -n "timeSliderBookmark8";
	rename -uid "C8750D10-45CB-675E-962D-DFA4504CF6A2";
	setAttr ".nm" -type "string" "Full Shot";
	setAttr ".c" -type "float3" 0.23529412 0.23529412 0.23529412 ;
	setAttr ".tst" 552;
	setAttr ".tsp" 712;
	setAttr ".prty" 8;
createNode trackInfoManager -n "trackInfoManager1";
	rename -uid "0C9E9562-4020-8657-05BD-F79DF74EE552";
	setAttr -s 2 ".ti";
	setAttr ".ti[0].t" -type "string" "";
	setAttr ".ti[1].t" -type "string" "";
createNode sequencer -n "sequencer1";
	rename -uid "05836156-47D2-6F7E-9EFF-2B9D59F8755C";
	setAttr ".mnf" 0;
	setAttr ".mxf" 707;
	setAttr -s 6 ".shts";
createNode shot -n "EstablishingShots";
	rename -uid "66BCDE57-4061-6277-3277-CA9FC1E0B33D";
	setAttr ".ef" 287;
	setAttr ".cv" no;
	setAttr ".sn" -type "string" "EstablishingShots";
	setAttr ".wres" 1024;
	setAttr ".ca" 1;
createNode shot -n "Makro_Violin_Top";
	rename -uid "337B5096-43D9-9BC0-54CD-28B4DD2F4294";
	setAttr ".sf" 288;
	setAttr ".ef" 359;
	setAttr ".ssf" 288;
	setAttr ".czo" 8;
	setAttr ".cv" no;
	setAttr ".tk" 2;
	setAttr ".sn" -type "string" "Makro_Violin_Top";
	setAttr ".wres" 1024;
createNode shot -n "Makro_Schnecke";
	rename -uid "89BFDB4C-43C9-B0CD-FD1D-E0978EE44B16";
	setAttr ".sf" 360;
	setAttr ".ef" 431;
	setAttr ".ssf" 360;
	setAttr ".cv" no;
	setAttr ".sn" -type "string" "Makro_Schnecke";
	setAttr ".wres" 1024;
createNode animCurveTL -n "cam4_bodyCloseUp_translateX";
	rename -uid "23C1E300-40ED-A779-558E-DA9DC914F6DF";
	setAttr ".tan" 2;
	setAttr -s 2 ".ktv[0:1]"  431 -6.5049311790351165 504 -4.9621039008913872;
createNode animCurveTL -n "cam4_bodyCloseUp_translateY";
	rename -uid "EAB52EBA-48D6-750C-749D-BCBBF31CC0B9";
	setAttr ".tan" 2;
	setAttr -s 2 ".ktv[0:1]"  431 -12.615329210394167 504 -12.703804483792579;
createNode animCurveTL -n "cam4_bodyCloseUp_translateZ";
	rename -uid "381F878A-455A-4873-6247-0086DA434267";
	setAttr ".tan" 2;
	setAttr -s 2 ".ktv[0:1]"  431 27.186702062847061 504 26.83139937174089;
createNode animCurveTA -n "cam4_bodyCloseUp_rotateX";
	rename -uid "5943B1A2-47E0-6F74-4B12-CEBF84AA1845";
	setAttr ".tan" 2;
	setAttr -s 2 ".ktv[0:1]"  431 -18.938352729604325 504 -20.138352729604648;
createNode animCurveTA -n "cam4_bodyCloseUp_rotateY";
	rename -uid "E6B83063-423F-8EF8-1CE6-3BA6178CEA46";
	setAttr ".tan" 2;
	setAttr -s 2 ".ktv[0:1]"  431 -21.400000000001288 504 -12.200000000001575;
createNode animCurveTA -n "cam4_bodyCloseUp_rotateZ";
	rename -uid "0F3EF84C-45BB-654E-7289-CFA6582E0787";
	setAttr ".tan" 2;
	setAttr ".ktv[0]"  431 0;
createNode shot -n "Makro_Body_CloseUp";
	rename -uid "CD7B1E51-4FE0-3715-664C-CDA1C2E7F26E";
	setAttr ".sf" 432;
	setAttr ".ef" 503;
	setAttr ".ssf" 432;
	setAttr ".cv" no;
	setAttr ".tk" 2;
	setAttr ".sn" -type "string" "Makro_Body_CloseUp";
	setAttr ".wres" 1024;
createNode animCurveTL -n "cam5_woodScraps_translateX";
	rename -uid "2703E771-404D-96FA-58DA-46A1D1854668";
	setAttr ".tan" 2;
	setAttr -s 2 ".ktv[0:1]"  503 -17.10622104230713 552 -17.554743459973565;
	setAttr -s 2 ".kwl[0:1]" yes yes;
createNode animCurveTL -n "cam5_woodScraps_translateY";
	rename -uid "C3D53683-4C49-18BE-2C64-16886343A793";
	setAttr ".tan" 2;
	setAttr ".ktv[0]"  503 -20.584842181556795;
	setAttr ".kwl[0]" yes;
createNode animCurveTL -n "cam5_woodScraps_translateZ";
	rename -uid "E5E01030-4BCF-74AF-07DD-7AA6BA052903";
	setAttr ".tan" 2;
	setAttr -s 2 ".ktv[0:1]"  503 31.682258198054264 552 31.402401211408637;
	setAttr -s 2 ".kwl[0:1]" yes yes;
createNode animCurveTA -n "cam5_woodScraps_rotateX";
	rename -uid "0A279AD3-4AA9-A45D-0A23-978DFFEF2601";
	setAttr ".tan" 2;
	setAttr ".ktv[0]"  503 -90;
	setAttr ".kwl[0]" yes;
createNode animCurveTA -n "cam5_woodScraps_rotateY";
	rename -uid "11CDD1B7-423E-232D-D40E-34A7F80208B1";
	setAttr ".tan" 2;
	setAttr ".ktv[0]"  503 41.000000000001208;
	setAttr ".kwl[0]" yes;
createNode animCurveTA -n "cam5_woodScraps_rotateZ";
	rename -uid "D1218FC6-4C39-D4BB-075C-CA872649C935";
	setAttr ".tan" 2;
	setAttr ".ktv[0]"  503 0;
	setAttr ".kwl[0]" yes;
createNode shot -n "Makro_WoodScraps";
	rename -uid "9A144EC6-443F-8BD8-0BD0-31927D53052A";
	setAttr ".sf" 504;
	setAttr ".ef" 551;
	setAttr ".ssf" 504;
	setAttr ".cv" no;
	setAttr ".sn" -type "string" "Makro_WoodScraps";
	setAttr ".wres" 1024;
createNode animCurveTL -n "left_curtain_translateX";
	rename -uid "278D4FBF-4762-DA32-D71F-E183FE7538C4";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 -142 540 -130.11813575725938 585.0000022108843 -100
		 706.91150459183677 -50;
	setAttr -s 4 ".kit[0:3]"  1 28 18 28;
	setAttr -s 4 ".kot[0:3]"  5 5 18 18;
	setAttr -s 4 ".kix[0:3]"  15.5 22.5 1.8750000921201817 5.0796459325396839;
	setAttr -s 4 ".kiy[0:3]"  0 35.645592728221857 21.600166477589422 
		0;
createNode animCurveTL -n "right_curtain_translateX";
	rename -uid "99AB52E4-403E-9488-0137-2996936D2E71";
	setAttr ".tan" 28;
	setAttr -s 4 ".ktv[0:3]"  0 142 540 131.57936228516934 585 100 697 50;
	setAttr -s 4 ".kot[0:3]"  5 5 18 18;
createNode animCurveTL -n "ubercam_translateX";
	rename -uid "FE7FD42A-4AC9-5E2D-438D-529C5284C9D5";
	setAttr ".tan" 1;
	setAttr -s 14 ".ktv[0:13]"  0 0 96 0 168 0 287 0.63369708647754508 288 -1.3469431324165684
		 359 0.61933489400404951 360 3.615627508849026 431 4.6200462590060125 432 -7.9976674377103638
		 503 -4.7262539249474518 504 -16.652008181754301 551 -17.899838441444956 552 0 672 0;
	setAttr -s 14 ".kot[3:13]"  5 1 5 1 5 1 5 1 
		5 1 5;
	setAttr -s 14 ".kix[0:13]"  4 4 3 4.9583333333333339 1 2.9583333333333339 
		0.041666666666662522 2.9583333333333321 0.041666666666667851 2.9583333333333321 0.041666666666667851 
		1.9583333333333357 1 1;
	setAttr -s 14 ".kiy[0:13]"  0 0 0 0 0 1.9662780264206179 0.01414674295995777 
		1.0044187501569857 0.046076246658635078 3.271413512762912 -0.026549579993417893 -1.2478302596906516 
		0 0;
	setAttr -s 14 ".kox[0:13]"  4 3 4.9583333333333339 0 2.9583333333333339 
		0 2.9583333333333321 0 2.9583333333333321 0 1.9583333333333357 0 1 0;
	setAttr -s 14 ".koy[0:13]"  0 0 0 0 1.9662780264206179 0 1.0044187501569857 
		0 3.2714135127629174 0 -1.2478302596906516 0 0 0;
createNode animCurveTL -n "ubercam_translateY";
	rename -uid "61CCDDA6-46D2-5AFA-D146-74A21971BE2D";
	setAttr ".tan" 1;
	setAttr -s 14 ".ktv[0:13]"  0 121.93370663554842 96 121.93370663554842
		 168 0.55298538569004307 287 0.62610428028360487 288 9.4159252573361449 359 9.4159252573361449
		 360 -10.634238084110518 431 -10.363353986098266 432 -12.561776080580808 503 -12.660396172455206
		 504 -20.584842181556795 551 -20.584842181556795 552 0 672 0;
	setAttr -s 14 ".kot[3:13]"  5 1 5 1 5 1 5 1 
		5 1 5;
	setAttr -s 14 ".kix[0:13]"  4 4 3 4.9583333333333339 1 2.9583333333333339 
		0.041666666666662522 2.9583333333333321 0.041666666666667851 2.9583333333333321 0.041666666666667851 
		1.9583333333333321 1 1;
	setAttr -s 14 ".kiy[0:13]"  0 0 0 0 0 0 0.0038152689860897482 0.27088409801224955 
		-0.0013890153785141024 -0.098620091874394689 0 0 0 0;
	setAttr -s 14 ".kox[0:13]"  4 3 4.9583333333333339 0 1 0 2.9583333333333321 
		0 2.9583333333333321 0 1.9583333333333321 0 1 0;
	setAttr -s 14 ".koy[0:13]"  0 0 0 0 0 0 0.27088409801224955 0 -0.098620091874394689 
		0 0 0 0 0;
createNode animCurveTL -n "ubercam_translateZ";
	rename -uid "E228FF5C-4D69-94BA-69A2-D6BDA798B032";
	setAttr ".tan" 1;
	setAttr -s 14 ".ktv[0:13]"  0 222.49890184808683 96 222.49890184808683
		 168 222.49890184808683 287 104.12334029146285 288 21.623471601604248 359 19.800195613468642
		 360 19.14961025357205 431 19.028411033502902 432 26.320237478199452 503 26.868862057476917
		 504 32.165207477573475 551 31.011839582813487 552 1000.1 672 1000.1;
	setAttr -s 14 ".kot[3:13]"  5 1 5 1 5 1 5 1 
		5 1 5;
	setAttr -s 14 ".kix[0:13]"  4 4 3 4.9583333333333339 1 2.9583333333333339 
		0.041666666666662522 2.9583333333333321 0.041666666666667851 2.9583333333333321 0.041666666666667851 
		1.9583333333333357 1 1;
	setAttr -s 14 ".kiy[0:13]"  0 0 0 0 0 -1.823275988135606 -0.0017070312685838473 
		-0.12119922006914408 0.0077271067503907886 0.54862457927745822 -0.024539742441703538 
		-1.1533678947599917 0 0;
	setAttr -s 14 ".kox[0:13]"  4 3 4.9583333333333339 0 2.9583333333333339 
		0 2.9583333333333321 0 2.9583333333333321 0 1.9583333333333357 0 1 0;
	setAttr -s 14 ".koy[0:13]"  0 0 0 0 -1.823275988135606 0 -0.12119922006914408 
		0 0.54862457927745822 0 -1.1533678947599917 0 0 0;
createNode animCurveTA -n "ubercam_rotateX";
	rename -uid "B3648517-42DA-811F-F299-FF8F324BCE78";
	setAttr ".tan" 1;
	setAttr -s 14 ".ktv[0:13]"  0 0 96 0 168 0 287 0 288 -90 359 -90 360 -64.80000000000156
		 431 -64.80000000000156 432 -20.730133551522073 503 -20.146571907686834 504 -90 551 -90
		 552 0 672 0;
	setAttr -s 14 ".kot[3:13]"  5 1 5 1 5 1 5 1 
		5 1 5;
	setAttr -s 14 ".kix[0:13]"  4 4 3 4.9583333333333339 1 2.9583333333333339 
		0.041666666666666075 2.9583333333333321 0.041666666666667851 2.9583333333333321 0.041666666666667851 
		1.9583333333333321 1 1;
	setAttr -s 14 ".kiy[0:13]"  0 0 0 0 0 0 0 0 0.00014345171934193601 
		0.010185072073275458 0 0 0 0;
	setAttr -s 14 ".kox[0:13]"  4 3 4.9583333333333339 0 1 0 2.9583333333333321 
		0 2.9583333333333321 0 1.9583333333333321 0 1 0;
	setAttr -s 14 ".koy[0:13]"  0 0 0 0 0 0 0 0 0.010185072073275458 0 
		0 0 0 0;
createNode animCurveTA -n "ubercam_rotateY";
	rename -uid "7A307DDC-46E2-A8B5-89BA-B5A8F0C63E84";
	setAttr ".tan" 1;
	setAttr -s 14 ".ktv[0:13]"  0 0 96 0 168 0 287 0 288 -45 359 -45 360 -27.800000000000505
		 431 -27.800000000000505 432 -41.789041095891633 503 -12.610958904111166 504 41.000000000001208
		 551 41.000000000001208 552 0 672 0;
	setAttr -s 14 ".kot[3:13]"  5 1 5 1 5 1 5 1 
		5 1 5;
	setAttr -s 14 ".kix[0:13]"  4 4 3 4.9583333333333339 1 2.9583333333333339 
		0.041666666666666075 2.9583333333333321 0.041666666666667851 2.9583333333333321 0.041666666666667851 
		1.9583333333333321 1 1;
	setAttr -s 14 ".kiy[0:13]"  0 0 0 0 0 0 0 0 0.0071725859671001313 0.50925360366409267 
		0 0 0 0;
	setAttr -s 14 ".kox[0:13]"  4 3 4.9583333333333339 0 1 0 2.9583333333333321 
		0 2.9583333333333321 0 1.9583333333333321 0 1 0;
	setAttr -s 14 ".koy[0:13]"  0 0 0 0 0 0 0 0 0.50925360366409267 0 0 
		0 0 0;
createNode animCurveTL -n "ubercamShape_centerOfInterest";
	rename -uid "30D01631-439F-3344-7618-FDAB3869E8FE";
	setAttr ".tan" 1;
	setAttr -s 12 ".ktv[0:11]"  0 19.084343962828534 287 19.084343962828534
		 288 39.58823204497471 359 39.58823204497471 360 19.699672775274205 431 19.699672775274205
		 432 1.297929766174637 503 1.297929766174637 504 2.1278917748304584 551 2.1278917748304584
		 552 1000.1 672 1000.1;
	setAttr -s 12 ".kot[1:11]"  5 1 5 1 5 1 5 1 
		5 1 5;
	setAttr -s 12 ".kwl[0:11]" yes yes yes yes yes yes yes yes yes yes 
		yes yes;
	setAttr -s 12 ".kix[0:11]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".kiy[0:11]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 12 ".kox[0:11]"  1 0 1 0 1 0 1 0 1 0 1 0;
	setAttr -s 12 ".koy[0:11]"  0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "ubercamShape_orthographicWidth";
	rename -uid "2CCAC460-4CF2-1AD7-7D02-6885AB3AA5EE";
	setAttr ".tan" 1;
	setAttr -s 12 ".ktv[0:11]"  0 10 287 10 288 10 359 10 360 10 431 10
		 432 10 503 10 504 10 551 10 552 108.58411525305185 672 108.58411525305185;
	setAttr -s 12 ".kot[1:11]"  5 1 5 1 5 1 5 1 
		5 1 5;
	setAttr -s 12 ".kwl[0:11]" yes yes yes yes yes yes yes yes yes yes 
		yes yes;
	setAttr -s 12 ".kix[0:11]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".kiy[0:11]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 12 ".kox[0:11]"  1 0 1 0 1 0 1 0 1 0 1 0;
	setAttr -s 12 ".koy[0:11]"  0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "ubercamShape_tumblePivotX";
	rename -uid "909315A9-4B56-59E7-BC1E-E98FCC3BBC04";
	setAttr ".tan" 1;
	setAttr -s 12 ".ktv[0:11]"  0 0 287 0 288 0 359 0 360 0 431 0 432 -7.3468483642380589
		 503 -7.3468483642380589 504 0 551 0 552 0 672 0;
	setAttr -s 12 ".kot[1:11]"  5 1 5 1 5 1 5 1 
		5 1 5;
	setAttr -s 12 ".kwl[0:11]" yes yes yes yes yes yes yes yes yes yes 
		yes yes;
	setAttr -s 12 ".kix[0:11]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".kiy[0:11]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 12 ".kox[0:11]"  1 0 1 0 1 0 1 0 1 0 1 0;
	setAttr -s 12 ".koy[0:11]"  0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "ubercamShape_tumblePivotY";
	rename -uid "0D8C7F83-4509-AFD1-2D31-E49F486A27D9";
	setAttr ".tan" 1;
	setAttr -s 12 ".ktv[0:11]"  0 0 287 0 288 0 359 0 360 0 431 0 432 -13.648611056607647
		 503 -13.648611056607647 504 0 551 0 552 0 672 0;
	setAttr -s 12 ".kot[1:11]"  5 1 5 1 5 1 5 1 
		5 1 5;
	setAttr -s 12 ".kwl[0:11]" yes yes yes yes yes yes yes yes yes yes 
		yes yes;
	setAttr -s 12 ".kix[0:11]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".kiy[0:11]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 12 ".kox[0:11]"  1 0 1 0 1 0 1 0 1 0 1 0;
	setAttr -s 12 ".koy[0:11]"  0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "ubercamShape_tumblePivotZ";
	rename -uid "284C0FF5-4855-9A83-9523-77A53EDE0815";
	setAttr ".tan" 1;
	setAttr -s 12 ".ktv[0:11]"  0 0 287 0 288 0 359 0 360 0 431 0 432 26.194380612301771
		 503 26.194380612301771 504 0 551 0 552 0 672 0;
	setAttr -s 12 ".kot[1:11]"  5 1 5 1 5 1 5 1 
		5 1 5;
	setAttr -s 12 ".kwl[0:11]" yes yes yes yes yes yes yes yes yes yes 
		yes yes;
	setAttr -s 12 ".kix[0:11]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".kiy[0:11]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 12 ".kox[0:11]"  1 0 1 0 1 0 1 0 1 0 1 0;
	setAttr -s 12 ".koy[0:11]"  0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "ubercamShape_orthographic";
	rename -uid "B2145623-4311-957B-EF45-01AB3606D587";
	setAttr ".tan" 1;
	setAttr -s 12 ".ktv[0:11]"  0 0 287 0 288 0 359 0 360 0 431 0 432 0
		 503 0 504 0 551 0 552 1 672 1;
	setAttr -s 12 ".kot[1:11]"  5 1 5 1 5 1 5 1 
		5 1 5;
	setAttr -s 12 ".kwl[0:11]" yes yes yes yes yes yes yes yes yes yes 
		yes yes;
	setAttr -s 12 ".kix[0:11]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".kiy[0:11]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 12 ".kox[0:11]"  1 0 1 0 1 0 1 0 1 0 1 0;
	setAttr -s 12 ".koy[0:11]"  0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "cam2_topViolin_translateZ";
	rename -uid "D28690BC-44AC-C292-75A5-049131B8B73C";
	setAttr ".tan" 2;
	setAttr -s 2 ".ktv[0:1]"  288 31.269736351484219 359 31.118183482102058;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  2.9583333333333339;
	setAttr -s 2 ".koy[1]"  0.28416163009181972;
createNode animCurveTL -n "cam2_topViolin_translateX";
	rename -uid "EC01C6A6-4110-0E13-651C-9C8A0C993608";
	setAttr ".tan" 2;
	setAttr -s 2 ".ktv[0:1]"  288 -2.0507702055340831 359 -0.54349230400377868;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  2.9583333333333339;
	setAttr -s 2 ".koy[1]"  -1.6372156516621152;
createNode animCurveTL -n "cam2_topViolin_translateY";
	rename -uid "9853D960-4689-1C25-C2D1-2C947F5FA0FF";
	setAttr ".tan" 2;
	setAttr -s 2 ".ktv[0:1]"  288 -1.586285232646004 359 -1.4439676153601007;
	setAttr -s 2 ".kit[1]"  1;
	setAttr -s 2 ".kot[1]"  1;
	setAttr -s 2 ".kix[1]"  1;
	setAttr -s 2 ".kiy[1]"  0;
	setAttr -s 2 ".kox[1]"  2.9583333333333339;
	setAttr -s 2 ".koy[1]"  -0.26684553241131725;
createNode shot -n "Front_Curtain";
	rename -uid "67B18B03-4C6A-82DC-BD3B-288434B427F3";
	setAttr ".sf" 552;
	setAttr ".ef" 707;
	setAttr ".ssf" 552;
	setAttr ".cv" no;
	setAttr ".tk" 2;
	setAttr ".sn" -type "string" "Front_Curtain";
	setAttr ".wres" 1024;
select -ne :time1;
	setAttr -av -k on ".cch";
	setAttr -k on ".fzn";
	setAttr -av -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr ".o" 43;
	setAttr -av -k on ".unw" 43;
	setAttr -av -k on ".etw";
	setAttr -av -k on ".tps";
	setAttr -av -k on ".tms";
select -ne :sequenceManager1;
	setAttr ".o" 43;
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
	setAttr -s 30 ".st";
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
	setAttr -s 31 ".s";
select -ne :postProcessList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 17 ".u";
select -ne :defaultRenderingList1;
	setAttr -k on ".ihi";
	setAttr -s 4 ".r";
select -ne :lightList1;
select -ne :defaultTextureList1;
	setAttr -s 19 ".tx";
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
	setAttr -s 2 ".gn";
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
	setAttr -av -k on ".dar" 1.7777777910232544;
	setAttr -av -k on ".ldar";
	setAttr -av -k on ".dpi";
	setAttr -av -k on ".off";
	setAttr -av -k on ".fld";
	setAttr -av -k on ".zsl";
	setAttr -av -k on ".isu";
	setAttr -av -k on ".pdu";
select -ne :defaultLightSet;
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
connectAttr "werkstatt_fertigRN.phl[25]" "werkstatt_fertigRN.phl[26]";
connectAttr "werkstatt_fertigRN.phl[27]" "werkstatt_fertigRN.phl[28]";
connectAttr "werkstatt_fertigRN.phl[29]" "werkstatt_fertigRN.phl[30]";
connectAttr "werkstatt_fertigRN.phl[31]" "werkstatt_fertigRN.phl[32]";
connectAttr "werkstatt_fertigRN.phl[33]" "werkstatt_fertigRN.phl[34]";
connectAttr "werkstatt_fertigRN.phl[35]" "werkstatt_fertigRN.phl[36]";
connectAttr "werkstatt_fertigRN.phl[37]" "werkstatt_fertigRN.phl[38]";
connectAttr "werkstatt_fertigRN.phl[39]" "werkstatt_fertigRN.phl[40]";
connectAttr "werkstatt_fertigRN.phl[41]" "werkstatt_fertigRN.phl[42]";
connectAttr "werkstatt_fertigRN.phl[43]" "werkstatt_fertigRN.phl[44]";
connectAttr "werkstatt_fertigRN.phl[45]" "werkstatt_fertigRN.phl[46]";
connectAttr "stage_fertigRN.phl[1]" "stage_fertigRN.phl[2]";
connectAttr "stage_fertigRN.phl[3]" "stage_fertigRN.phl[4]";
connectAttr "stage_fertigRN.phl[5]" "stage_fertigRN.phl[6]";
connectAttr "stage_fertigRN.phl[7]" "stage_fertigRN.phl[8]";
connectAttr "stage_fertigRN.phl[9]" "stage_fertigRN.phl[10]";
connectAttr "stage_fertigRN.phl[11]" "stage_fertigRN.phl[12]";
connectAttr "cam1_translateX.o" "cam1_establishingShot.tx" -l on;
connectAttr "cam1_translateY.o" "cam1_establishingShot.ty" -l on;
connectAttr "cam1_translateZ.o" "cam1_establishingShot.tz" -l on;
connectAttr "cam1_rotateX.o" "cam1_establishingShot.rx" -l on;
connectAttr "cam1_rotateY.o" "cam1_establishingShot.ry" -l on;
connectAttr "cam1_rotateZ.o" "cam1_establishingShot.rz" -l on;
connectAttr "cam2_topViolin_translateX.o" "cam2_topViolin.tx";
connectAttr "cam2_topViolin_translateY.o" "cam2_topViolin.ty";
connectAttr "cam2_topViolin_translateZ.o" "cam2_topViolin.tz";
connectAttr "cam3_slowSnake_translateX.o" "cam3_slowSnail.tx" -l on;
connectAttr "cam3_slowSnake_translateY.o" "cam3_slowSnail.ty" -l on;
connectAttr "cam3_slowSnake_translateZ.o" "cam3_slowSnail.tz" -l on;
connectAttr "cam3_slowSnake_rotateX.o" "cam3_slowSnail.rx" -l on;
connectAttr "cam3_slowSnake_rotateY.o" "cam3_slowSnail.ry" -l on;
connectAttr "cam3_slowSnake_rotateZ.o" "cam3_slowSnail.rz" -l on;
connectAttr "cam4_bodyCloseUp_translateX.o" "cam4_bodyCloseUp.tx" -l on;
connectAttr "cam4_bodyCloseUp_translateY.o" "cam4_bodyCloseUp.ty" -l on;
connectAttr "cam4_bodyCloseUp_translateZ.o" "cam4_bodyCloseUp.tz" -l on;
connectAttr "cam4_bodyCloseUp_rotateX.o" "cam4_bodyCloseUp.rx" -l on;
connectAttr "cam4_bodyCloseUp_rotateY.o" "cam4_bodyCloseUp.ry" -l on;
connectAttr "cam4_bodyCloseUp_rotateZ.o" "cam4_bodyCloseUp.rz" -l on;
connectAttr "cam5_woodScraps_translateX.o" "cam5_woodScraps.tx" -l on;
connectAttr "cam5_woodScraps_translateY.o" "cam5_woodScraps.ty" -l on;
connectAttr "cam5_woodScraps_translateZ.o" "cam5_woodScraps.tz" -l on;
connectAttr "cam5_woodScraps_rotateX.o" "cam5_woodScraps.rx" -l on;
connectAttr "cam5_woodScraps_rotateY.o" "cam5_woodScraps.ry" -l on;
connectAttr "cam5_woodScraps_rotateZ.o" "cam5_woodScraps.rz" -l on;
connectAttr "left_curtain_translateX.o" "left_curtain.tx";
connectAttr "right_curtain_translateX.o" "right_curtain.tx";
connectAttr "ubercam_rotateX.o" "ubercam.rx" -l on;
connectAttr "ubercam_rotateY.o" "ubercam.ry" -l on;
connectAttr "ubercam_translateX.o" "ubercam.tx" -l on;
connectAttr "ubercam_translateY.o" "ubercam.ty" -l on;
connectAttr "ubercam_translateZ.o" "ubercam.tz" -l on;
connectAttr "ubercamShape_centerOfInterest.o" "ubercamShape.coi" -l on;
connectAttr "ubercamShape_orthographicWidth.o" "ubercamShape.ow" -l on;
connectAttr "ubercamShape_tumblePivotX.o" "ubercamShape.tpx";
connectAttr "ubercamShape_tumblePivotY.o" "ubercamShape.tpy";
connectAttr "ubercamShape_tumblePivotZ.o" "ubercamShape.tpz";
connectAttr "ubercamShape_orthographic.o" "ubercamShape.o";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "aiStandardSurface1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "aiStandardSurface2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "aiStandardSurface3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "aiStandardSurface4SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "aiStandardSurface5SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "aiStandardSurface6SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "aiStandardSurface1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "aiStandardSurface2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "aiStandardSurface3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "aiStandardSurface4SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "aiStandardSurface5SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "aiStandardSurface6SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "werkstatt_fertigRN.phl[23]" "werkstatt_fertigRN.phl[24]";
connectAttr "sharedReferenceNode.sr" "werkstatt_fertigRN.sr";
connectAttr "file1.oc" "aiStandardSurface1.base_color";
connectAttr "file2.oc" "aiStandardSurface1.opacity";
connectAttr "aiStandardSurface1.out" "aiStandardSurface1SG.ss";
connectAttr "wood_planeShape.iog" "aiStandardSurface1SG.dsm" -na;
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
connectAttr "file3.oc" "aiStandardSurface2.base_color";
connectAttr "file4.oc" "aiStandardSurface2.opacity";
connectAttr "aiStandardSurface2.out" "aiStandardSurface2SG.ss";
connectAttr "gears_planeShape.iog" "aiStandardSurface2SG.dsm" -na;
connectAttr "aiStandardSurface2SG.msg" "materialInfo2.sg";
connectAttr "aiStandardSurface2.msg" "materialInfo2.m";
connectAttr "aiStandardSurface2.msg" "materialInfo2.t" -na;
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
connectAttr "file5.oc" "aiStandardSurface3.base_color";
connectAttr "aiStandardSurface3.out" "aiStandardSurface3SG.ss";
connectAttr "BG_planeShape.iog" "aiStandardSurface3SG.dsm" -na;
connectAttr "aiStandardSurface3SG.msg" "materialInfo3.sg";
connectAttr "aiStandardSurface3.msg" "materialInfo3.m";
connectAttr "aiStandardSurface3.msg" "materialInfo3.t" -na;
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
connectAttr "curtains1Shape.iog" "aiStandardSurface4SG.dsm" -na;
connectAttr "aiStandardSurface4SG.msg" "materialInfo4.sg";
connectAttr "aiStandardSurface4.msg" "materialInfo4.m";
connectAttr "file6.msg" "materialInfo4.t" -na;
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
connectAttr "file8.oc" "aiStandardSurface5.base_color";
connectAttr "file9.oc" "aiStandardSurface5.opacity";
connectAttr "aiStandardSurface5.out" "aiStandardSurface5SG.ss";
connectAttr "left_curtainShape.iog" "aiStandardSurface5SG.dsm" -na;
connectAttr "aiStandardSurface5SG.msg" "materialInfo5.sg";
connectAttr "aiStandardSurface5.msg" "materialInfo5.m";
connectAttr "aiStandardSurface5.msg" "materialInfo5.t" -na;
connectAttr ":defaultColorMgtGlobals.cme" "file8.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file8.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file8.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file8.ws";
connectAttr "place2dTexture8.c" "file8.c";
connectAttr "place2dTexture8.tf" "file8.tf";
connectAttr "place2dTexture8.rf" "file8.rf";
connectAttr "place2dTexture8.mu" "file8.mu";
connectAttr "place2dTexture8.mv" "file8.mv";
connectAttr "place2dTexture8.s" "file8.s";
connectAttr "place2dTexture8.wu" "file8.wu";
connectAttr "place2dTexture8.wv" "file8.wv";
connectAttr "place2dTexture8.re" "file8.re";
connectAttr "place2dTexture8.of" "file8.of";
connectAttr "place2dTexture8.r" "file8.ro";
connectAttr "place2dTexture8.n" "file8.n";
connectAttr "place2dTexture8.vt1" "file8.vt1";
connectAttr "place2dTexture8.vt2" "file8.vt2";
connectAttr "place2dTexture8.vt3" "file8.vt3";
connectAttr "place2dTexture8.vc1" "file8.vc1";
connectAttr "place2dTexture8.o" "file8.uv";
connectAttr "place2dTexture8.ofs" "file8.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file9.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file9.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file9.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file9.ws";
connectAttr "place2dTexture9.c" "file9.c";
connectAttr "place2dTexture9.tf" "file9.tf";
connectAttr "place2dTexture9.rf" "file9.rf";
connectAttr "place2dTexture9.mu" "file9.mu";
connectAttr "place2dTexture9.mv" "file9.mv";
connectAttr "place2dTexture9.s" "file9.s";
connectAttr "place2dTexture9.wu" "file9.wu";
connectAttr "place2dTexture9.wv" "file9.wv";
connectAttr "place2dTexture9.re" "file9.re";
connectAttr "place2dTexture9.of" "file9.of";
connectAttr "place2dTexture9.r" "file9.ro";
connectAttr "place2dTexture9.n" "file9.n";
connectAttr "place2dTexture9.vt1" "file9.vt1";
connectAttr "place2dTexture9.vt2" "file9.vt2";
connectAttr "place2dTexture9.vt3" "file9.vt3";
connectAttr "place2dTexture9.vc1" "file9.vc1";
connectAttr "place2dTexture9.o" "file9.uv";
connectAttr "place2dTexture9.ofs" "file9.fs";
connectAttr "file10.oc" "aiStandardSurface6.base_color";
connectAttr "file11.oc" "aiStandardSurface6.opacity";
connectAttr "aiStandardSurface6.out" "aiStandardSurface6SG.ss";
connectAttr "right_curtainShape.iog" "aiStandardSurface6SG.dsm" -na;
connectAttr "aiStandardSurface6SG.msg" "materialInfo6.sg";
connectAttr "aiStandardSurface6.msg" "materialInfo6.m";
connectAttr "aiStandardSurface6.msg" "materialInfo6.t" -na;
connectAttr ":defaultColorMgtGlobals.cme" "file10.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file10.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file10.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file10.ws";
connectAttr "place2dTexture10.c" "file10.c";
connectAttr "place2dTexture10.tf" "file10.tf";
connectAttr "place2dTexture10.rf" "file10.rf";
connectAttr "place2dTexture10.mu" "file10.mu";
connectAttr "place2dTexture10.mv" "file10.mv";
connectAttr "place2dTexture10.s" "file10.s";
connectAttr "place2dTexture10.wu" "file10.wu";
connectAttr "place2dTexture10.wv" "file10.wv";
connectAttr "place2dTexture10.re" "file10.re";
connectAttr "place2dTexture10.of" "file10.of";
connectAttr "place2dTexture10.r" "file10.ro";
connectAttr "place2dTexture10.n" "file10.n";
connectAttr "place2dTexture10.vt1" "file10.vt1";
connectAttr "place2dTexture10.vt2" "file10.vt2";
connectAttr "place2dTexture10.vt3" "file10.vt3";
connectAttr "place2dTexture10.vc1" "file10.vc1";
connectAttr "place2dTexture10.o" "file10.uv";
connectAttr "place2dTexture10.ofs" "file10.fs";
connectAttr ":defaultColorMgtGlobals.cme" "file11.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file11.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file11.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file11.ws";
connectAttr "place2dTexture11.c" "file11.c";
connectAttr "place2dTexture11.tf" "file11.tf";
connectAttr "place2dTexture11.rf" "file11.rf";
connectAttr "place2dTexture11.mu" "file11.mu";
connectAttr "place2dTexture11.mv" "file11.mv";
connectAttr "place2dTexture11.s" "file11.s";
connectAttr "place2dTexture11.wu" "file11.wu";
connectAttr "place2dTexture11.wv" "file11.wv";
connectAttr "place2dTexture11.re" "file11.re";
connectAttr "place2dTexture11.of" "file11.of";
connectAttr "place2dTexture11.r" "file11.ro";
connectAttr "place2dTexture11.n" "file11.n";
connectAttr "place2dTexture11.vt1" "file11.vt1";
connectAttr "place2dTexture11.vt2" "file11.vt2";
connectAttr "place2dTexture11.vt3" "file11.vt3";
connectAttr "place2dTexture11.vc1" "file11.vc1";
connectAttr "place2dTexture11.o" "file11.uv";
connectAttr "place2dTexture11.ofs" "file11.fs";
connectAttr "EstablishingShots.msg" "sequencer1.shts" -na;
connectAttr "Makro_Violin_Top.msg" "sequencer1.shts" -na;
connectAttr "Makro_Schnecke.msg" "sequencer1.shts" -na;
connectAttr "Makro_Body_CloseUp.msg" "sequencer1.shts" -na;
connectAttr "Makro_WoodScraps.msg" "sequencer1.shts" -na;
connectAttr "Front_Curtain.msg" "sequencer1.shts" -na;
connectAttr "cam1_establishingShotShape.msg" "EstablishingShots.ccm";
connectAttr "cam2_topViolinShape.msg" "Makro_Violin_Top.ccm";
connectAttr "cam3_slowSnailShape.msg" "Makro_Schnecke.ccm";
connectAttr "cam4_bodyCloseUpShape.msg" "Makro_Body_CloseUp.ccm";
connectAttr "cam5_woodScrapsShape.msg" "Makro_WoodScraps.ccm";
connectAttr "cam6_frontCurtainShape.msg" "Front_Curtain.ccm";
connectAttr "trackInfoManager1.msg" ":sequenceManager1.tim";
connectAttr "sequencer1.msg" ":sequenceManager1.seqts" -na;
connectAttr "aiStandardSurface1SG.pa" ":renderPartition.st" -na;
connectAttr "aiStandardSurface2SG.pa" ":renderPartition.st" -na;
connectAttr "aiStandardSurface3SG.pa" ":renderPartition.st" -na;
connectAttr "aiStandardSurface4SG.pa" ":renderPartition.st" -na;
connectAttr "aiStandardSurface5SG.pa" ":renderPartition.st" -na;
connectAttr "aiStandardSurface6SG.pa" ":renderPartition.st" -na;
connectAttr "aiStandardSurface1.msg" ":defaultShaderList1.s" -na;
connectAttr "aiStandardSurface2.msg" ":defaultShaderList1.s" -na;
connectAttr "aiStandardSurface3.msg" ":defaultShaderList1.s" -na;
connectAttr "aiStandardSurface4.msg" ":defaultShaderList1.s" -na;
connectAttr "aiStandardSurface5.msg" ":defaultShaderList1.s" -na;
connectAttr "aiStandardSurface6.msg" ":defaultShaderList1.s" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture4.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture5.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture6.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture7.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture8.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture9.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture10.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture11.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "file1.msg" ":defaultTextureList1.tx" -na;
connectAttr "file2.msg" ":defaultTextureList1.tx" -na;
connectAttr "file3.msg" ":defaultTextureList1.tx" -na;
connectAttr "file4.msg" ":defaultTextureList1.tx" -na;
connectAttr "file5.msg" ":defaultTextureList1.tx" -na;
connectAttr "file6.msg" ":defaultTextureList1.tx" -na;
connectAttr "file7.msg" ":defaultTextureList1.tx" -na;
connectAttr "file8.msg" ":defaultTextureList1.tx" -na;
connectAttr "file9.msg" ":defaultTextureList1.tx" -na;
connectAttr "file10.msg" ":defaultTextureList1.tx" -na;
connectAttr "file11.msg" ":defaultTextureList1.tx" -na;
// End of Werkstatt_Scene.ma
