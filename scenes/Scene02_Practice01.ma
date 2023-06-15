//Maya ASCII 2023 scene
//Name: Scene02_Practice01.ma
//Last modified: Thu, Jun 15, 2023 05:09:24 PM
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
requires "stereoCamera" "10.0";
requires -nodeType "aiOptions" -nodeType "aiAOV" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter"
		 -nodeType "aiSkyDomeLight" -nodeType "aiAreaLight" -nodeType "aiAmbientOcclusion"
		 -nodeType "aiStandardSurface" -nodeType "aiAtmosphereVolume" -nodeType "cryptomatte"
		 "mtoa" "5.1.2";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2023";
fileInfo "version" "2023";
fileInfo "cutIdentifier" "202205052215-234554116d";
fileInfo "osv" "Windows 11 Home v2009 (Build: 22621)";
fileInfo "UUID" "30AEA2F5-4E71-5084-32EF-52B87A88FB72";
createNode transform -s -n "persp";
	rename -uid "539E143C-40B0-FB15-755D-3D8AFB875474";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -17.058765694481252 6.5894444374447652 201.0577791618438 ;
	setAttr ".r" -type "double3" -5.7383527289280387 -4.6000000000004562 -9.9713523173432366e-17 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "C01235FC-47F2-FA1D-CDDE-1A9B73D664F6";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 172.74548044427527;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 44.391273433326134 0 38.42210985197854 ;
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
createNode transform -n "Shot7";
	rename -uid "E7444B8A-47E8-AAB2-9403-D098069D5B93";
createNode camera -n "ShotShape7" -p "Shot7";
	rename -uid "A228B214-48BC-B298-600C-A69795D829F2";
	setAttr -k off ".v";
	setAttr ".fl" 34.999999999999993;
	setAttr -l on ".coi" 18.947120232043606;
	setAttr -l on ".ow";
	setAttr ".imn" -type "string" "persp1";
	setAttr ".den" -type "string" "persp1_depth";
	setAttr ".man" -type "string" "persp1_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
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
createNode transform -n "Stage_Lighting";
	rename -uid "1D6C9EC8-49DE-BC77-F4B0-6E8F1E6502A2";
createNode transform -n "pasted__BG_Light" -p "Stage_Lighting";
	rename -uid "F12163BD-4715-B04C-1CF7-9F8DC1400006";
	setAttr ".t" -type "double3" 0 0 6.1518656724772196 ;
	setAttr ".s" -type "double3" 32.559872626610058 17.389322958962438 27.896594192768145 ;
createNode aiAreaLight -n "pasted__BG_LightShape" -p "pasted__BG_Light";
	rename -uid "B62DDF4D-4A35-12DE-0616-BCA5B112A0E0";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr -k off ".v";
	setAttr ".csh" no;
	setAttr ".rcsh" no;
	setAttr ".sc" -type "float3" 1 0.94988161 0.80799997 ;
	setAttr ".ai_exposure" 9;
	setAttr ".ai_volume" 0;
	setAttr ".ai_aov" -type "string" "BG_light";
	setAttr ".ai_color_temperature" 4607.36181640625;
	setAttr ".ai_translator" -type "string" "quad";
	setAttr ".aal" -type "attributeAlias" {"exposure","aiExposure","normalize","aiNormalize"
		} ;
createNode transform -n "pasted__aiSkyDomeLight1" -p "Stage_Lighting";
	rename -uid "D9D84B8C-45D0-7ED7-68A7-FAA782437E1A";
createNode aiSkyDomeLight -n "pasted__aiSkyDomeLightShape1" -p "pasted__aiSkyDomeLight1";
	rename -uid "1B440EC3-4C69-77A6-19E3-178099F5C9FC";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr -k off ".v";
	setAttr ".csh" no;
	setAttr ".rcsh" no;
	setAttr ".intensity" 0.80000001192092896;
	setAttr ".camera" 0;
	setAttr ".ai_volume" 0;
	setAttr ".ai_aov" -type "string" "HDRI_light";
	setAttr ".aal" -type "attributeAlias" {"exposure","aiExposure"} ;
createNode transform -n "spotLight1" -p "Stage_Lighting";
	rename -uid "902653C8-419C-9C8E-479A-088DA7F9DF8A";
	setAttr ".t" -type "double3" -42.977093236979073 36.007122400867601 28.230843852724838 ;
	setAttr ".r" -type "double3" -101.08503701866684 -111.79818500940181 41.757882419144202 ;
	setAttr ".s" -type "double3" 10.347848842012498 10.347848842012498 10.347848842012498 ;
createNode spotLight -n "spotLightShape1" -p "spotLight1";
	rename -uid "9E56293B-4642-6F9A-D728-FC913C6AC16C";
	setAttr -k off ".v";
	setAttr ".cl" -type "float3" 1 0.90785527 0.64700001 ;
	setAttr ".col" 34.457711501239402;
	setAttr ".ca" 38.080228583322587;
	setAttr ".pa" -4.743589749082159;
	setAttr ".ai_exposure" 13.5;
	setAttr ".ai_aov" -type "string" "spotLight";
createNode transform -n "aiAreaLight1" -p "Stage_Lighting";
	rename -uid "673DD393-493D-C42F-1EA3-A7AD1554140A";
	setAttr ".t" -type "double3" -44.718523189641338 0 38.436662593084733 ;
	setAttr ".s" -type "double3" 4.2450105453016791 29.025771997061593 5.8011513948784392 ;
createNode aiAreaLight -n "aiAreaLightShape1" -p "aiAreaLight1";
	rename -uid "8E66C7E6-4E07-9654-1822-D38EB7108249";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr -k off ".v";
	setAttr ".csh" no;
	setAttr ".rcsh" no;
	setAttr ".sc" -type "float3" 0.42900002 0.53881288 1 ;
	setAttr ".ai_exposure" 12;
	setAttr ".ai_volume" 0;
	setAttr ".ai_aov" -type "string" "basicLight";
	setAttr ".ai_translator" -type "string" "quad";
	setAttr ".aal" -type "attributeAlias" {"exposure","aiExposure","normalize","aiNormalize"
		} ;
createNode transform -n "aiAreaLight2" -p "Stage_Lighting";
	rename -uid "18EB4625-4BED-12AE-669A-FDB079E33FDF";
	setAttr ".t" -type "double3" 44.391273433326134 0 38.42210985197854 ;
	setAttr ".s" -type "double3" 4.2450105453016791 29.025771997061593 5.8011513948784392 ;
createNode aiAreaLight -n "aiAreaLightShape2" -p "aiAreaLight2";
	rename -uid "592579CD-4D0A-4825-268B-B6B1F47A336F";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr -k off ".v";
	setAttr ".csh" no;
	setAttr ".rcsh" no;
	setAttr ".sc" -type "float3" 0.42900002 0.53881288 1 ;
	setAttr ".ai_exposure" 12;
	setAttr ".ai_volume" 0;
	setAttr ".ai_aov" -type "string" "basicLight";
	setAttr ".ai_translator" -type "string" "quad";
	setAttr ".aal" -type "attributeAlias" {"exposure","aiExposure","normalize","aiNormalize"
		} ;
createNode transform -n "aiAreaLight3" -p "Stage_Lighting";
	rename -uid "CFB6F145-43A1-4499-727D-71A277AD05DB";
	setAttr ".t" -type "double3" -2.0284085030890893 0 52.098096257156108 ;
	setAttr ".s" -type "double3" 51.204064359138094 29.654000497796453 5.8011513948784392 ;
createNode aiAreaLight -n "aiAreaLightShape3" -p "aiAreaLight3";
	rename -uid "E2589A75-4C87-2B24-657F-E694A76E4DF5";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr -k off ".v";
	setAttr ".csh" no;
	setAttr ".rcsh" no;
	setAttr ".sc" -type "float3" 1 0.90785527 0.64700001 ;
	setAttr ".ai_exposure" 12;
	setAttr ".ai_volume" 0;
	setAttr ".ai_aov" -type "string" "frontLight";
	setAttr ".ai_translator" -type "string" "quad";
	setAttr ".aal" -type "attributeAlias" {"exposure","aiExposure","normalize","aiNormalize"
		} ;
createNode transform -n "violin_light" -p "Stage_Lighting";
	rename -uid "29B204B0-42C9-A317-820F-1292012A6C87";
createNode aiAreaLight -n "violin_lightShape" -p "violin_light";
	rename -uid "F6229E38-423E-FF64-B790-34AC486AFFD2";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr -k off ".v";
	setAttr ".csh" no;
	setAttr ".rcsh" no;
	setAttr ".sc" -type "float3" 0.112338 0.11475019 0.237 ;
	setAttr ".ai_exposure" 12;
	setAttr ".ai_volume" 0;
	setAttr ".ai_aov" -type "string" "accentLight";
	setAttr ".ai_translator" -type "string" "quad";
	setAttr ".aal" -type "attributeAlias" {"exposure","aiExposure","normalize","aiNormalize"
		} ;
createNode transform -n "notenständer_light" -p "Stage_Lighting";
	rename -uid "4084731E-46F9-969C-45D1-59A80672BB98";
	setAttr ".t" -type "double3" 27.360839894498572 -11.727627361199996 45.633463915420243 ;
	setAttr ".s" -type "double3" 7.9816360633142196 18.661386721255756 10.130052041183975 ;
createNode aiAreaLight -n "notenständer_lightShape" -p "notenständer_light";
	rename -uid "E22F0287-48F2-4162-0160-FFA9BBC06071";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr -k off ".v";
	setAttr ".csh" no;
	setAttr ".rcsh" no;
	setAttr ".sc" -type "float3" 1 0.81 0.39089999 ;
	setAttr ".ai_exposure" 9;
	setAttr ".ai_volume" 0;
	setAttr ".ai_aov" -type "string" "basicLight";
	setAttr ".ai_translator" -type "string" "quad";
	setAttr ".aal" -type "attributeAlias" {"exposure","aiExposure","normalize","aiNormalize"
		} ;
createNode transform -n "notenständer_light1" -p "Stage_Lighting";
	rename -uid "1CB5DC32-48BE-D5D1-68EF-A7BAB0FB49F5";
	setAttr ".t" -type "double3" 31.838446242160469 -11.727627361199996 37.472920702659408 ;
	setAttr ".r" -type "double3" 0 50.651751533796592 0 ;
	setAttr ".s" -type "double3" 10.130052041183975 18.661386721255756 10.130052041183975 ;
createNode aiAreaLight -n "notenständer_light1Shape" -p "notenständer_light1";
	rename -uid "2CFED05D-41BD-9475-BB53-A2B7823D69CE";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr -k off ".v";
	setAttr ".csh" no;
	setAttr ".rcsh" no;
	setAttr ".sc" -type "float3" 0 0.045600001 0.2375 ;
	setAttr ".ai_exposure" 9;
	setAttr ".ai_volume" 0;
	setAttr ".ai_aov" -type "string" "basicLight";
	setAttr ".ai_translator" -type "string" "quad";
	setAttr ".aal" -type "attributeAlias" {"exposure","aiExposure","normalize","aiNormalize"
		} ;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "A037A3AF-45E2-119A-ED10-EFB02BE8E30E";
	setAttr -s 18 ".lnk";
	setAttr -s 115 ".ign";
	setAttr -s 18 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "EB1F39B6-4F0F-29D4-2903-EC97C57617CE";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "69E6523F-41D5-FFE7-6024-4F9839CCF477";
createNode displayLayerManager -n "layerManager";
	rename -uid "A1A1DD9B-42EB-2D55-8CAB-98B914A2567B";
createNode displayLayer -n "defaultLayer";
	rename -uid "D538D237-4B69-3249-5193-E9A3A8F3762E";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "4B1BA8D9-4358-B4D2-34C2-C591C846E398";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "2B7ABD1B-407B-488B-2F25-BA8769A9A0AE";
	setAttr ".g" yes;
createNode reference -n "stage_fertigRN";
	rename -uid "BF74864B-47FB-55E7-1C2B-469786194BFC";
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
		"stage_fertigRN" 117
		2 "|stage_fertig:plane_canvasSize" "visibility" " 0"
		2 "|stage_fertig:curtains|stage_fertig:plane_canvasSize1" "translate" " -type \"double3\" 0 0 51.49736090395071386"
		
		2 "stage_fertig:set1" "aiCustomAOVs" " -s 11"
		2 "stage_fertig:set1" "aiCustomAOVs[0].aovName" " -type \"string\" \"RGBA\""
		
		2 "stage_fertig:set1" "aiCustomAOVs[1].aovName" " -type \"string\" \"Z\""
		
		2 "stage_fertig:set1" "aiCustomAOVs[2].aovName" " -type \"string\" \"albedo\""
		
		2 "stage_fertig:set1" "aiCustomAOVs[3].aovName" " -type \"string\" \"diffuse\""
		
		2 "stage_fertig:set1" "aiCustomAOVs[4].aovName" " -type \"string\" \"direct\""
		
		2 "stage_fertig:set1" "aiCustomAOVs[5].aovName" " -type \"string\" \"indirect\""
		
		2 "stage_fertig:set1" "aiCustomAOVs[6].aovName" " -type \"string\" \"opacity\""
		
		2 "stage_fertig:set1" "aiCustomAOVs[7].aovName" " -type \"string\" \"specular\""
		
		2 "stage_fertig:set1" "aiCustomAOVs[8].aovName" " -type \"string\" \"crypto_asset\""
		
		2 "stage_fertig:set1" "aiCustomAOVs[9].aovName" " -type \"string\" \"AO\""
		
		2 "stage_fertig:set1" "aiCustomAOVs[10].aovName" " -type \"string\" \"N\""
		
		2 "stage_fertig:aiStandardSurface1SG" "aiCustomAOVs" " -s 11"
		2 "stage_fertig:aiStandardSurface1SG" "aiCustomAOVs[0].aovName" " -type \"string\" \"RGBA\""
		
		2 "stage_fertig:aiStandardSurface1SG" "aiCustomAOVs[1].aovName" " -type \"string\" \"Z\""
		
		2 "stage_fertig:aiStandardSurface1SG" "aiCustomAOVs[2].aovName" " -type \"string\" \"albedo\""
		
		2 "stage_fertig:aiStandardSurface1SG" "aiCustomAOVs[3].aovName" " -type \"string\" \"diffuse\""
		
		2 "stage_fertig:aiStandardSurface1SG" "aiCustomAOVs[4].aovName" " -type \"string\" \"direct\""
		
		2 "stage_fertig:aiStandardSurface1SG" "aiCustomAOVs[5].aovName" " -type \"string\" \"indirect\""
		
		2 "stage_fertig:aiStandardSurface1SG" "aiCustomAOVs[6].aovName" " -type \"string\" \"opacity\""
		
		2 "stage_fertig:aiStandardSurface1SG" "aiCustomAOVs[7].aovName" " -type \"string\" \"specular\""
		
		2 "stage_fertig:aiStandardSurface1SG" "aiCustomAOVs[8].aovName" " -type \"string\" \"crypto_asset\""
		
		2 "stage_fertig:aiStandardSurface1SG" "aiCustomAOVs[9].aovName" " -type \"string\" \"AO\""
		
		2 "stage_fertig:aiStandardSurface1SG" "aiCustomAOVs[10].aovName" " -type \"string\" \"N\""
		
		2 "stage_fertig:aiStandardSurface2SG" "aiCustomAOVs" " -s 11"
		2 "stage_fertig:aiStandardSurface2SG" "aiCustomAOVs[0].aovName" " -type \"string\" \"RGBA\""
		
		2 "stage_fertig:aiStandardSurface2SG" "aiCustomAOVs[1].aovName" " -type \"string\" \"Z\""
		
		2 "stage_fertig:aiStandardSurface2SG" "aiCustomAOVs[2].aovName" " -type \"string\" \"albedo\""
		
		2 "stage_fertig:aiStandardSurface2SG" "aiCustomAOVs[3].aovName" " -type \"string\" \"diffuse\""
		
		2 "stage_fertig:aiStandardSurface2SG" "aiCustomAOVs[4].aovName" " -type \"string\" \"direct\""
		
		2 "stage_fertig:aiStandardSurface2SG" "aiCustomAOVs[5].aovName" " -type \"string\" \"indirect\""
		
		2 "stage_fertig:aiStandardSurface2SG" "aiCustomAOVs[6].aovName" " -type \"string\" \"opacity\""
		
		2 "stage_fertig:aiStandardSurface2SG" "aiCustomAOVs[7].aovName" " -type \"string\" \"specular\""
		
		2 "stage_fertig:aiStandardSurface2SG" "aiCustomAOVs[8].aovName" " -type \"string\" \"crypto_asset\""
		
		2 "stage_fertig:aiStandardSurface2SG" "aiCustomAOVs[9].aovName" " -type \"string\" \"AO\""
		
		2 "stage_fertig:aiStandardSurface2SG" "aiCustomAOVs[10].aovName" " -type \"string\" \"N\""
		
		2 "stage_fertig:aiStandardSurface3SG" "aiCustomAOVs" " -s 11"
		2 "stage_fertig:aiStandardSurface3SG" "aiCustomAOVs[0].aovName" " -type \"string\" \"RGBA\""
		
		2 "stage_fertig:aiStandardSurface3SG" "aiCustomAOVs[1].aovName" " -type \"string\" \"Z\""
		
		2 "stage_fertig:aiStandardSurface3SG" "aiCustomAOVs[2].aovName" " -type \"string\" \"albedo\""
		
		2 "stage_fertig:aiStandardSurface3SG" "aiCustomAOVs[3].aovName" " -type \"string\" \"diffuse\""
		
		2 "stage_fertig:aiStandardSurface3SG" "aiCustomAOVs[4].aovName" " -type \"string\" \"direct\""
		
		2 "stage_fertig:aiStandardSurface3SG" "aiCustomAOVs[5].aovName" " -type \"string\" \"indirect\""
		
		2 "stage_fertig:aiStandardSurface3SG" "aiCustomAOVs[6].aovName" " -type \"string\" \"opacity\""
		
		2 "stage_fertig:aiStandardSurface3SG" "aiCustomAOVs[7].aovName" " -type \"string\" \"specular\""
		
		2 "stage_fertig:aiStandardSurface3SG" "aiCustomAOVs[8].aovName" " -type \"string\" \"crypto_asset\""
		
		2 "stage_fertig:aiStandardSurface3SG" "aiCustomAOVs[9].aovName" " -type \"string\" \"AO\""
		
		2 "stage_fertig:aiStandardSurface3SG" "aiCustomAOVs[10].aovName" " -type \"string\" \"N\""
		
		5 4 "stage_fertigRN" "|stage_fertig:curtains|stage_fertig:plane_canvasSize2.translateX" 
		"stage_fertigRN.placeHolderList[1]" ""
		5 4 "stage_fertigRN" "|stage_fertig:curtains|stage_fertig:plane_canvasSize2.translateY" 
		"stage_fertigRN.placeHolderList[2]" ""
		5 4 "stage_fertigRN" "|stage_fertig:curtains|stage_fertig:plane_canvasSize2.translateZ" 
		"stage_fertigRN.placeHolderList[3]" ""
		5 4 "stage_fertigRN" "|stage_fertig:curtains|stage_fertig:plane_canvasSize2.visibility" 
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
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:plane_canvasSize|stage_fertig:plane_canvasSizeShape.message" "|Stage_Lighting|spotLight1|spotLightShape1.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:plane_canvasSize|stage_fertig:plane_canvasSizeShape.message" "|Stage_Lighting|pasted__BG_Light|pasted__BG_LightShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:plane_canvasSize|stage_fertig:plane_canvasSizeShape.message" "|Stage_Lighting|violin_light|violin_lightShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:plane_canvasSize|stage_fertig:plane_canvasSizeShape.message" "|Stage_Lighting|notenständer_light|notenständer_lightShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:plane_canvasSize|stage_fertig:plane_canvasSizeShape.message" "|Stage_Lighting|notenständer_light1|notenständer_light1Shape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:stage|stage_fertig:stageShape.message" "|Stage_Lighting|violin_light|violin_lightShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:stage|stage_fertig:stageShape.message" "|Stage_Lighting|pasted__BG_Light|pasted__BG_LightShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:stage|stage_fertig:stageShape.message" "|Stage_Lighting|notenständer_light|notenständer_lightShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:stage|stage_fertig:stageShape.message" "|Stage_Lighting|notenständer_light1|notenständer_light1Shape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:stage|stage_fertig:verziehrung|stage_fertig:verziehrungShape.message" "|Stage_Lighting|violin_light|violin_lightShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:stage|stage_fertig:verziehrung|stage_fertig:verziehrungShape.message" "|Stage_Lighting|pasted__BG_Light|pasted__BG_LightShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:stage|stage_fertig:verziehrung|stage_fertig:verziehrungShape.message" "|Stage_Lighting|notenständer_light|notenständer_lightShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:stage|stage_fertig:verziehrung|stage_fertig:verziehrungShape.message" "|Stage_Lighting|notenständer_light1|notenständer_light1Shape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:stage|stage_fertig:verziehrung|stage_fertig:verziehrung_cubes|stage_fertig:verziehrung_cubesShape.message" "|Stage_Lighting|violin_light|violin_lightShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:stage|stage_fertig:verziehrung|stage_fertig:verziehrung_cubes|stage_fertig:verziehrung_cubesShape.message" "|Stage_Lighting|pasted__BG_Light|pasted__BG_LightShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:stage|stage_fertig:verziehrung|stage_fertig:verziehrung_cubes|stage_fertig:verziehrung_cubesShape.message" "|Stage_Lighting|notenständer_light|notenständer_lightShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:stage|stage_fertig:verziehrung|stage_fertig:verziehrung_cubes|stage_fertig:verziehrung_cubesShape.message" "|Stage_Lighting|notenständer_light1|notenständer_light1Shape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:stage|stage_fertig:pillars|stage_fertig:pillarsShape.message" "|Stage_Lighting|violin_light|violin_lightShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:stage|stage_fertig:pillars|stage_fertig:pillarsShape.message" "|Stage_Lighting|pasted__BG_Light|pasted__BG_LightShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:stage|stage_fertig:pillars|stage_fertig:pillarsShape.message" "|Stage_Lighting|notenständer_light|notenständer_lightShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:stage|stage_fertig:pillars|stage_fertig:pillarsShape.message" "|Stage_Lighting|notenständer_light1|notenständer_light1Shape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:stage|stage_fertig:vorbau|stage_fertig:vorbauShape.message" "|Stage_Lighting|violin_light|violin_lightShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:stage|stage_fertig:vorbau|stage_fertig:vorbauShape.message" "|Stage_Lighting|pasted__BG_Light|pasted__BG_LightShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:stage|stage_fertig:vorbau|stage_fertig:vorbauShape.message" "|Stage_Lighting|notenständer_light|notenständer_lightShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:stage|stage_fertig:vorbau|stage_fertig:vorbauShape.message" "|Stage_Lighting|notenständer_light1|notenständer_light1Shape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:stage|stage_fertig:dach|stage_fertig:dachShape.message" "|Stage_Lighting|spotLight1|spotLightShape1.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:stage|stage_fertig:dach|stage_fertig:dachShape.message" "|Stage_Lighting|pasted__BG_Light|pasted__BG_LightShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:stage|stage_fertig:dach|stage_fertig:dachShape.message" "|Stage_Lighting|violin_light|violin_lightShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:stage|stage_fertig:dach|stage_fertig:dachShape.message" "|Stage_Lighting|notenständer_light|notenständer_lightShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:stage|stage_fertig:dach|stage_fertig:dachShape.message" "|Stage_Lighting|notenständer_light1|notenständer_light1Shape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:curtains|stage_fertig:plane_canvasSize1|stage_fertig:plane_canvasSize1Shape.message" "|Stage_Lighting|spotLight1|spotLightShape1.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:curtains|stage_fertig:plane_canvasSize1|stage_fertig:plane_canvasSize1Shape.message" "|Stage_Lighting|pasted__BG_Light|pasted__BG_LightShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:curtains|stage_fertig:plane_canvasSize1|stage_fertig:plane_canvasSize1Shape.message" "|Stage_Lighting|violin_light|violin_lightShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:curtains|stage_fertig:plane_canvasSize1|stage_fertig:plane_canvasSize1Shape.message" "|Stage_Lighting|notenständer_light|notenständer_lightShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:curtains|stage_fertig:plane_canvasSize1|stage_fertig:plane_canvasSize1Shape.message" "|Stage_Lighting|notenständer_light1|notenständer_light1Shape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:curtains|stage_fertig:plane_canvasSize2|stage_fertig:plane_canvasSize2Shape.message" "|Stage_Lighting|spotLight1|spotLightShape1.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:curtains|stage_fertig:plane_canvasSize2|stage_fertig:plane_canvasSize2Shape.message" "|Stage_Lighting|pasted__BG_Light|pasted__BG_LightShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:curtains|stage_fertig:plane_canvasSize2|stage_fertig:plane_canvasSize2Shape.message" "|Stage_Lighting|violin_light|violin_lightShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:curtains|stage_fertig:plane_canvasSize2|stage_fertig:plane_canvasSize2Shape.message" "|Stage_Lighting|aiAreaLight3|aiAreaLightShape3.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:curtains|stage_fertig:plane_canvasSize2|stage_fertig:plane_canvasSize2Shape.message" "|Stage_Lighting|notenständer_light|notenständer_lightShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:curtains|stage_fertig:plane_canvasSize2|stage_fertig:plane_canvasSize2Shape.message" "|Stage_Lighting|notenständer_light1|notenständer_light1Shape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:curtains|stage_fertig:plane_canvasSize3|stage_fertig:plane_canvasSize3Shape.message" "|Stage_Lighting|spotLight1|spotLightShape1.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:curtains|stage_fertig:plane_canvasSize3|stage_fertig:plane_canvasSize3Shape.message" "|Stage_Lighting|pasted__BG_Light|pasted__BG_LightShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:curtains|stage_fertig:plane_canvasSize3|stage_fertig:plane_canvasSize3Shape.message" "|Stage_Lighting|violin_light|violin_lightShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:curtains|stage_fertig:plane_canvasSize3|stage_fertig:plane_canvasSize3Shape.message" "|Stage_Lighting|aiAreaLight3|aiAreaLightShape3.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:curtains|stage_fertig:plane_canvasSize3|stage_fertig:plane_canvasSize3Shape.message" "|Stage_Lighting|notenständer_light|notenständer_lightShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:curtains|stage_fertig:plane_canvasSize3|stage_fertig:plane_canvasSize3Shape.message" "|Stage_Lighting|notenständer_light1|notenständer_light1Shape.message" 
		0;
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "895D829F-49BA-1B03-49C7-9897964CB793";
	addAttr -ci true -sn "ARV_options" -ln "ARV_options" -dt "string";
	setAttr -s 11 ".aovs";
	setAttr ".version" -type "string" "4.2.4";
	setAttr ".ARV_options" -type "string" "Test Resolution=100%;Camera=ShotShape7;Color Management.Gamma=1;Color Management.Exposure=0;Background.BG=BG Color;Background.Color=0 0 0;Background.Image=;Background.Scale=1 1;Background.Offset=0 0;Background.Apply Color Management=1;Foreground.Enable FG=0;Foreground.Image=;Foreground.Scale=1 1;Foreground.Offset=0 0;Foreground.Apply Color Management=1;";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "78C44D3B-408D-6EBC-5980-B68E5D995468";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "4E64C303-4C27-0762-6D64-C498374DCBDE";
	setAttr ".half_precision" yes;
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "714F18F5-4E41-AD4E-D659-BEB51ABA6148";
	setAttr ".output_mode" 0;
	setAttr ".ai_translator" -type "string" "maya";
createNode partition -s -n "creasePartition";
	rename -uid "D94EFE65-412A-FA80-77D7-85B08A9F876E";
	setAttr -s 2 ".st";
createNode audio -n "Practice01";
	rename -uid "B5737086-445E-2899-DAD7-7DAC2899F79C";
	setAttr ".o" 140;
	setAttr ".ef" 381.37143707482994;
	setAttr ".se" 241.37143707482994;
	setAttr ".f" -type "string" "D:/FH Hagenberg/Unity_Projects/Semesterprojekt_ViolinAnimation/High-Strung//sound/Practice01.wav";
createNode reference -n "Geige_RigRN";
	rename -uid "C28F7C0E-43A3-1EA0-7931-6288F9F61FDF";
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
		"Geige_RigRN" 158
		2 "Geige_Rig:inside_highSG" "aiCustomAOVs" " -s 11"
		2 "Geige_Rig:inside_highSG" "aiCustomAOVs[0].aovName" " -type \"string\" \"RGBA\""
		
		2 "Geige_Rig:inside_highSG" "aiCustomAOVs[1].aovName" " -type \"string\" \"Z\""
		
		2 "Geige_Rig:inside_highSG" "aiCustomAOVs[2].aovName" " -type \"string\" \"albedo\""
		
		2 "Geige_Rig:inside_highSG" "aiCustomAOVs[3].aovName" " -type \"string\" \"diffuse\""
		
		2 "Geige_Rig:inside_highSG" "aiCustomAOVs[4].aovName" " -type \"string\" \"direct\""
		
		2 "Geige_Rig:inside_highSG" "aiCustomAOVs[5].aovName" " -type \"string\" \"indirect\""
		
		2 "Geige_Rig:inside_highSG" "aiCustomAOVs[6].aovName" " -type \"string\" \"opacity\""
		
		2 "Geige_Rig:inside_highSG" "aiCustomAOVs[7].aovName" " -type \"string\" \"specular\""
		
		2 "Geige_Rig:inside_highSG" "aiCustomAOVs[8].aovName" " -type \"string\" \"crypto_asset\""
		
		2 "Geige_Rig:inside_highSG" "aiCustomAOVs[9].aovName" " -type \"string\" \"AO\""
		
		2 "Geige_Rig:inside_highSG" "aiCustomAOVs[10].aovName" " -type \"string\" \"N\""
		
		2 "Geige_Rig:set1" "aiCustomAOVs" " -s 11"
		2 "Geige_Rig:set1" "aiCustomAOVs[0].aovName" " -type \"string\" \"RGBA\""
		
		2 "Geige_Rig:set1" "aiCustomAOVs[1].aovName" " -type \"string\" \"Z\""
		2 "Geige_Rig:set1" "aiCustomAOVs[2].aovName" " -type \"string\" \"albedo\""
		
		2 "Geige_Rig:set1" "aiCustomAOVs[3].aovName" " -type \"string\" \"diffuse\""
		
		2 "Geige_Rig:set1" "aiCustomAOVs[4].aovName" " -type \"string\" \"direct\""
		
		2 "Geige_Rig:set1" "aiCustomAOVs[5].aovName" " -type \"string\" \"indirect\""
		
		2 "Geige_Rig:set1" "aiCustomAOVs[6].aovName" " -type \"string\" \"opacity\""
		
		2 "Geige_Rig:set1" "aiCustomAOVs[7].aovName" " -type \"string\" \"specular\""
		
		2 "Geige_Rig:set1" "aiCustomAOVs[8].aovName" " -type \"string\" \"crypto_asset\""
		
		2 "Geige_Rig:set1" "aiCustomAOVs[9].aovName" " -type \"string\" \"AO\""
		2 "Geige_Rig:set1" "aiCustomAOVs[10].aovName" " -type \"string\" \"N\""
		2 "Geige_Rig:set2" "aiCustomAOVs" " -s 11"
		2 "Geige_Rig:set2" "aiCustomAOVs[0].aovName" " -type \"string\" \"RGBA\""
		
		2 "Geige_Rig:set2" "aiCustomAOVs[1].aovName" " -type \"string\" \"Z\""
		2 "Geige_Rig:set2" "aiCustomAOVs[2].aovName" " -type \"string\" \"albedo\""
		
		2 "Geige_Rig:set2" "aiCustomAOVs[3].aovName" " -type \"string\" \"diffuse\""
		
		2 "Geige_Rig:set2" "aiCustomAOVs[4].aovName" " -type \"string\" \"direct\""
		
		2 "Geige_Rig:set2" "aiCustomAOVs[5].aovName" " -type \"string\" \"indirect\""
		
		2 "Geige_Rig:set2" "aiCustomAOVs[6].aovName" " -type \"string\" \"opacity\""
		
		2 "Geige_Rig:set2" "aiCustomAOVs[7].aovName" " -type \"string\" \"specular\""
		
		2 "Geige_Rig:set2" "aiCustomAOVs[8].aovName" " -type \"string\" \"crypto_asset\""
		
		2 "Geige_Rig:set2" "aiCustomAOVs[9].aovName" " -type \"string\" \"AO\""
		2 "Geige_Rig:set2" "aiCustomAOVs[10].aovName" " -type \"string\" \"N\""
		2 "Geige_Rig:set3" "aiCustomAOVs" " -s 11"
		2 "Geige_Rig:set3" "aiCustomAOVs[0].aovName" " -type \"string\" \"RGBA\""
		
		2 "Geige_Rig:set3" "aiCustomAOVs[1].aovName" " -type \"string\" \"Z\""
		2 "Geige_Rig:set3" "aiCustomAOVs[2].aovName" " -type \"string\" \"albedo\""
		
		2 "Geige_Rig:set3" "aiCustomAOVs[3].aovName" " -type \"string\" \"diffuse\""
		
		2 "Geige_Rig:set3" "aiCustomAOVs[4].aovName" " -type \"string\" \"direct\""
		
		2 "Geige_Rig:set3" "aiCustomAOVs[5].aovName" " -type \"string\" \"indirect\""
		
		2 "Geige_Rig:set3" "aiCustomAOVs[6].aovName" " -type \"string\" \"opacity\""
		
		2 "Geige_Rig:set3" "aiCustomAOVs[7].aovName" " -type \"string\" \"specular\""
		
		2 "Geige_Rig:set3" "aiCustomAOVs[8].aovName" " -type \"string\" \"crypto_asset\""
		
		2 "Geige_Rig:set3" "aiCustomAOVs[9].aovName" " -type \"string\" \"AO\""
		2 "Geige_Rig:set3" "aiCustomAOVs[10].aovName" " -type \"string\" \"N\""
		2 "Geige_Rig:set5" "aiCustomAOVs" " -s 11"
		2 "Geige_Rig:set5" "aiCustomAOVs[0].aovName" " -type \"string\" \"RGBA\""
		
		2 "Geige_Rig:set5" "aiCustomAOVs[1].aovName" " -type \"string\" \"Z\""
		2 "Geige_Rig:set5" "aiCustomAOVs[2].aovName" " -type \"string\" \"albedo\""
		
		2 "Geige_Rig:set5" "aiCustomAOVs[3].aovName" " -type \"string\" \"diffuse\""
		
		2 "Geige_Rig:set5" "aiCustomAOVs[4].aovName" " -type \"string\" \"direct\""
		
		2 "Geige_Rig:set5" "aiCustomAOVs[5].aovName" " -type \"string\" \"indirect\""
		
		2 "Geige_Rig:set5" "aiCustomAOVs[6].aovName" " -type \"string\" \"opacity\""
		
		2 "Geige_Rig:set5" "aiCustomAOVs[7].aovName" " -type \"string\" \"specular\""
		
		2 "Geige_Rig:set5" "aiCustomAOVs[8].aovName" " -type \"string\" \"crypto_asset\""
		
		2 "Geige_Rig:set5" "aiCustomAOVs[9].aovName" " -type \"string\" \"AO\""
		2 "Geige_Rig:set5" "aiCustomAOVs[10].aovName" " -type \"string\" \"N\""
		2 "Geige_Rig:set6" "aiCustomAOVs" " -s 11"
		2 "Geige_Rig:set6" "aiCustomAOVs[0].aovName" " -type \"string\" \"RGBA\""
		
		2 "Geige_Rig:set6" "aiCustomAOVs[1].aovName" " -type \"string\" \"Z\""
		2 "Geige_Rig:set6" "aiCustomAOVs[2].aovName" " -type \"string\" \"albedo\""
		
		2 "Geige_Rig:set6" "aiCustomAOVs[3].aovName" " -type \"string\" \"diffuse\""
		
		2 "Geige_Rig:set6" "aiCustomAOVs[4].aovName" " -type \"string\" \"direct\""
		
		2 "Geige_Rig:set6" "aiCustomAOVs[5].aovName" " -type \"string\" \"indirect\""
		
		2 "Geige_Rig:set6" "aiCustomAOVs[6].aovName" " -type \"string\" \"opacity\""
		
		2 "Geige_Rig:set6" "aiCustomAOVs[7].aovName" " -type \"string\" \"specular\""
		
		2 "Geige_Rig:set6" "aiCustomAOVs[8].aovName" " -type \"string\" \"crypto_asset\""
		
		2 "Geige_Rig:set6" "aiCustomAOVs[9].aovName" " -type \"string\" \"AO\""
		2 "Geige_Rig:set6" "aiCustomAOVs[10].aovName" " -type \"string\" \"N\""
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
		"Geige_RigRN.placeHolderList[32]" ""
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:substance_objects|Geige_Rig:geige_low|Geige_Rig:inside_low|Geige_Rig:inside_lowShape.message" "|Stage_Lighting|pasted__BG_Light|pasted__BG_LightShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:substance_objects|Geige_Rig:geige_low|Geige_Rig:inside_low|Geige_Rig:inside_lowShape.message" "|Stage_Lighting|notenständer_light1|notenständer_light1Shape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:substance_objects|Geige_Rig:geige_low|Geige_Rig:inside_low|Geige_Rig:inside_lowShape.message" "|Stage_Lighting|notenständer_light|notenständer_lightShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:bogen_ctrlMiddle|Geige_Rig:bogen_LP_pivotMiddle|Geige_Rig:griff_low|Geige_Rig:griff_lowShape.message" "|Stage_Lighting|violin_light|violin_lightShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:bogen_ctrlMiddle|Geige_Rig:bogen_LP_pivotMiddle|Geige_Rig:griff_low|Geige_Rig:griff_lowShape.message" "|Stage_Lighting|pasted__BG_Light|pasted__BG_LightShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:bogen_ctrlMiddle|Geige_Rig:bogen_LP_pivotMiddle|Geige_Rig:griff_low|Geige_Rig:griff_lowShape.message" "|Stage_Lighting|notenständer_light1|notenständer_light1Shape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:bogen_ctrlMiddle|Geige_Rig:bogen_LP_pivotMiddle|Geige_Rig:griff_low|Geige_Rig:griff_lowShape.message" "|Stage_Lighting|notenständer_light|notenständer_lightShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:bogen_ctrlMiddle|Geige_Rig:bogen_LP_pivotMiddle|Geige_Rig:sehne_low|Geige_Rig:sehne_lowShape.message" "|Stage_Lighting|violin_light|violin_lightShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:bogen_ctrlMiddle|Geige_Rig:bogen_LP_pivotMiddle|Geige_Rig:sehne_low|Geige_Rig:sehne_lowShape.message" "|Stage_Lighting|pasted__BG_Light|pasted__BG_LightShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:bogen_ctrlMiddle|Geige_Rig:bogen_LP_pivotMiddle|Geige_Rig:sehne_low|Geige_Rig:sehne_lowShape.message" "|Stage_Lighting|notenständer_light1|notenständer_light1Shape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:bogen_ctrlMiddle|Geige_Rig:bogen_LP_pivotMiddle|Geige_Rig:sehne_low|Geige_Rig:sehne_lowShape.message" "|Stage_Lighting|notenständer_light|notenständer_lightShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:bogen_ctrlMiddle|Geige_Rig:bogen_LP_pivotMiddle|Geige_Rig:metall_low|Geige_Rig:metall_lowShape.message" "|Stage_Lighting|violin_light|violin_lightShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:bogen_ctrlMiddle|Geige_Rig:bogen_LP_pivotMiddle|Geige_Rig:metall_low|Geige_Rig:metall_lowShape.message" "|Stage_Lighting|pasted__BG_Light|pasted__BG_LightShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:bogen_ctrlMiddle|Geige_Rig:bogen_LP_pivotMiddle|Geige_Rig:metall_low|Geige_Rig:metall_lowShape.message" "|Stage_Lighting|notenständer_light1|notenständer_light1Shape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:bogen_ctrlMiddle|Geige_Rig:bogen_LP_pivotMiddle|Geige_Rig:metall_low|Geige_Rig:metall_lowShape.message" "|Stage_Lighting|notenständer_light|notenständer_lightShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:body_low|Geige_Rig:body_lowShape.message" "|Stage_Lighting|pasted__BG_Light|pasted__BG_LightShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:body_low|Geige_Rig:body_lowShape.message" "|Stage_Lighting|notenständer_light1|notenständer_light1Shape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:body_low|Geige_Rig:body_lowShape.message" "|Stage_Lighting|notenständer_light|notenständer_lightShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:saiten_low|Geige_Rig:saiten_lowShape.message" "|Stage_Lighting|pasted__BG_Light|pasted__BG_LightShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:saiten_low|Geige_Rig:saiten_lowShape.message" "|Stage_Lighting|notenständer_light1|notenständer_light1Shape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:saiten_low|Geige_Rig:saiten_lowShape.message" "|Stage_Lighting|notenständer_light|notenständer_lightShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:griffbrett_low|Geige_Rig:griffbrett_lowShape.message" "|Stage_Lighting|pasted__BG_Light|pasted__BG_LightShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:griffbrett_low|Geige_Rig:griffbrett_lowShape.message" "|Stage_Lighting|notenständer_light1|notenständer_light1Shape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:griffbrett_low|Geige_Rig:griffbrett_lowShape.message" "|Stage_Lighting|notenständer_light|notenständer_lightShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:wirbel_low|Geige_Rig:wirbel_low_01|Geige_Rig:wirbel_low_01Shape.message" "|Stage_Lighting|pasted__BG_Light|pasted__BG_LightShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:wirbel_low|Geige_Rig:wirbel_low_01|Geige_Rig:wirbel_low_01Shape.message" "|Stage_Lighting|notenständer_light1|notenständer_light1Shape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:wirbel_low|Geige_Rig:wirbel_low_01|Geige_Rig:wirbel_low_01Shape.message" "|Stage_Lighting|notenständer_light|notenständer_lightShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:wirbel_low|Geige_Rig:wirbel_low_02|Geige_Rig:wirbel_low_02Shape.message" "|Stage_Lighting|pasted__BG_Light|pasted__BG_LightShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:wirbel_low|Geige_Rig:wirbel_low_02|Geige_Rig:wirbel_low_02Shape.message" "|Stage_Lighting|notenständer_light1|notenständer_light1Shape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:wirbel_low|Geige_Rig:wirbel_low_02|Geige_Rig:wirbel_low_02Shape.message" "|Stage_Lighting|notenständer_light|notenständer_lightShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:wirbel_low|Geige_Rig:wirbel_low_03|Geige_Rig:wirbel_low_03Shape.message" "|Stage_Lighting|pasted__BG_Light|pasted__BG_LightShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:wirbel_low|Geige_Rig:wirbel_low_03|Geige_Rig:wirbel_low_03Shape.message" "|Stage_Lighting|notenständer_light1|notenständer_light1Shape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:wirbel_low|Geige_Rig:wirbel_low_03|Geige_Rig:wirbel_low_03Shape.message" "|Stage_Lighting|notenständer_light|notenständer_lightShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:wirbel_low|Geige_Rig:wirbel_low_04|Geige_Rig:wirbel_low_04Shape.message" "|Stage_Lighting|pasted__BG_Light|pasted__BG_LightShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:wirbel_low|Geige_Rig:wirbel_low_04|Geige_Rig:wirbel_low_04Shape.message" "|Stage_Lighting|notenständer_light1|notenständer_light1Shape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:wirbel_low|Geige_Rig:wirbel_low_04|Geige_Rig:wirbel_low_04Shape.message" "|Stage_Lighting|notenständer_light|notenständer_lightShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:hals_low|Geige_Rig:hals_lowShape.message" "|Stage_Lighting|pasted__BG_Light|pasted__BG_LightShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:hals_low|Geige_Rig:hals_lowShape.message" "|Stage_Lighting|notenständer_light1|notenständer_light1Shape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:hals_low|Geige_Rig:hals_lowShape.message" "|Stage_Lighting|notenständer_light|notenständer_lightShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:kinnstuetze_low|Geige_Rig:kinnstuetze_lowShape.message" "|Stage_Lighting|pasted__BG_Light|pasted__BG_LightShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:kinnstuetze_low|Geige_Rig:kinnstuetze_lowShape.message" "|Stage_Lighting|notenständer_light1|notenständer_light1Shape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:kinnstuetze_low|Geige_Rig:kinnstuetze_lowShape.message" "|Stage_Lighting|notenständer_light|notenständer_lightShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:metallplatte_low|Geige_Rig:metallplatte_lowShape.message" "|Stage_Lighting|pasted__BG_Light|pasted__BG_LightShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:metallplatte_low|Geige_Rig:metallplatte_lowShape.message" "|Stage_Lighting|notenständer_light1|notenständer_light1Shape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:metallplatte_low|Geige_Rig:metallplatte_lowShape.message" "|Stage_Lighting|notenständer_light|notenständer_lightShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:saitenhalter_low|Geige_Rig:saitenhalter_lowShape.message" "|Stage_Lighting|pasted__BG_Light|pasted__BG_LightShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:saitenhalter_low|Geige_Rig:saitenhalter_lowShape.message" "|Stage_Lighting|notenständer_light1|notenständer_light1Shape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:saitenhalter_low|Geige_Rig:saitenhalter_lowShape.message" "|Stage_Lighting|notenständer_light|notenständer_lightShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:inside_low|Geige_Rig:inside_lowShape.message" "|Stage_Lighting|pasted__BG_Light|pasted__BG_LightShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:inside_low|Geige_Rig:inside_lowShape.message" "|Stage_Lighting|notenständer_light1|notenständer_light1Shape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:inside_low|Geige_Rig:inside_lowShape.message" "|Stage_Lighting|notenständer_light|notenständer_lightShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:schraube_low|Geige_Rig:schraube_lowShape.message" "|Stage_Lighting|pasted__BG_Light|pasted__BG_LightShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:schraube_low|Geige_Rig:schraube_lowShape.message" "|Stage_Lighting|notenständer_light1|notenständer_light1Shape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:schraube_low|Geige_Rig:schraube_lowShape.message" "|Stage_Lighting|notenständer_light|notenständer_lightShape.message" 
		0;
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "CF18BD81-4FB4-F739-DB3B-4FAC8C9B86EF";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n"
		+ "            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n"
		+ "            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n"
		+ "            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n"
		+ "            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n"
		+ "            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 0\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 0\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n"
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
		+ "                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n"
		+ "                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n"
		+ "                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 0\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n"
		+ "                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 0\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1117\\n    -height 726\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 0\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1117\\n    -height 726\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ttimeControl -e -displaySound 1 -sound Practice01 $gPlayBackSlider;\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "37FA0095-46CF-59D1-2901-ADA4A8DAC288";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 410 -ast 0 -aet 410 ";
	setAttr ".st" 6;
createNode animCurveTL -n "bogenCTRL_middle_translateX";
	rename -uid "7FE55ADC-49D5-0DD3-E53D-25B526CB9565";
	setAttr ".tan" 28;
	setAttr -s 80 ".ktv[0:79]"  90 0 140 -10.410500979366207 159 -6.8613691553901637
		 160 -7.3714961148416887 161 -8.0939023875616929 162 -8.4709843899544914 164 -9.0169769226290377
		 166 -8.6595125337520837 168 -7.9540549862726682 169 -7.5616430961008341 174 -5.9762609096640746
		 176 -7.7803364484767261 179 -10.914156855236044 191 -7.1777269634011391 193 -7.5302953113625932
		 194 -7.8205109378732649 195 -8.1436828848533107 196 -8.5005138184292139 198 -9.2228760697088799
		 199 -9.4783715054530973 200 -9.5968175419131878 206 -7.7662082023525434 211 -9.4805459154192473
		 217 -7.6325108568820026 218 -7.7375505869091006 220 -8.2791739529901598 221 -8.5838508498335067
		 222 -8.9058139321067102 223 -9.1880339264008306 225 -9.4938415633391742 228 -9.3246779106430662
		 231 -9.0133560997985214 238 -8.1073944242767695 244 -7.3176464566420103 251 -6.786847556146701
		 253 -6.9492672041395354 254 -7.0921819572671456 257 -7.6984933006766259 260 -8.3752796242200063
		 262 -8.6619691254170128 263 -8.8220098112334249 266 -9.3708673651052283 270 -10.819026334926669
		 272 -10.679107710915433 275 -10.197668273656602 277 -9.8080755492830427 280 -9.1978005970538597
		 282 -8.7776220049759051 285 -8.2097343204090052 287 -7.9041082399371563 291 -7.5867218161049186
		 293 -7.9361779716252832 294 -8.2164593297369297 295 -8.4930679396842876 297 -9.1440273298579093
		 298 -9.4001595350155913 299 -9.5247418267665847 320 -6.6745232568010033 330 -8.934764338549412
		 342 -7.0902967920581395 343 -7.110138428120349 344 -7.1662597356921323 345 -7.2603343164948395
		 346 -7.3932411352444678 347 -7.5605284602285705 349 -7.9830672468883783 351 -8.4813545958720784
		 353 -9.0024762138891123 362 -10.844669587094918 364 -10.627731148723187 366 -10.200458919728876
		 369 -9.3481981150505966 372 -8.4106761189247141 375 -7.5720027018274365 378 -6.8651695059085629
		 379 -6.7021942202811591 381 -6.5286935015506513 382 -6.5286935015506513 395 -3.7900325885550559
		 410 0;
createNode animCurveTL -n "bogenCTRL_middle_translateY";
	rename -uid "BF11CBA2-42E3-F37F-9002-198101DD667E";
	setAttr ".tan" 28;
	setAttr -s 81 ".ktv[0:80]"  90 0 114 4.5421793056070747 140 0.59962148421943107
		 159 3.2763068751782609 160 2.97194430054159 161 2.4996721424659625 162 2.2683535675125692
		 164 1.7658074080003581 166 2.1639088340541157 168 2.846879181535706 169 3.1627102433939509
		 174 4.1649170187919351 176 3.0109036663989057 179 0.10235252807852017 191 3.1701306185197087
		 193 2.7567472474837373 194 2.4427020332353671 195 2.1317403581399574 196 1.8779030544063586
		 198 1.5631848460756486 199 1.5007830154329085 200 1.4772073349655432 206 1.9866722047631722
		 211 1.5106744972990092 217 2.023433797258757 218 2.0206341131263157 220 1.9493562553825472
		 221 1.849014959237375 222 1.6933377186622247 223 1.5147617148036332 225 1.2760847062388285
		 228 1.3875918281862367 231 1.7001105823548395 238 2.8020091661943818 244 3.8226107307029018
		 251 4.48928211979017 253 4.2016011278059686 254 3.9364489461471401 257 2.9662769778275702
		 260 2.165573686852138 262 1.8966955293949745 263 1.7718377501662663 266 1.872751146525129
		 270 0.38200392116259346 272 0.46218423028467748 275 0.75568813923798794 277 1.0295603209255093
		 280 1.5612164766519865 282 2.0276282317653482 285 2.7889034324731159 287 3.2611411424783112
		 291 3.7797517536689771 293 3.1899733654185014 294 2.7404784761533456 295 2.3324585603448127
		 297 1.5809814756283818 298 1.3465557276168496 299 1.2390065918976687 320 3.7884804236834131
		 330 1.7673624821210911 342 3.4214451552155114 343 3.3076651747995833 344 3.0480981400854907
		 345 2.7544802016560714 346 2.525912378775526 347 2.3538306689908857 349 2.0612461212886402
		 351 1.841719312351374 353 1.6590798436379699 362 1.1530558838704872 364 1.1829062626826454
		 366 1.2487924069866503 369 1.4976113151648622 372 2.0051963771794332 375 2.7366875206940042
		 378 3.5224454526652478 379 3.7222443291085905 381 3.9308353984781439 382 3.9308353984781439
		 395 5.1987503070241905 410 0;
createNode animCurveTL -n "bogenCTRL_middle_translateZ";
	rename -uid "F3343D9C-45E0-30D2-B3A2-C7A69F3ACDFF";
	setAttr ".tan" 28;
	setAttr -s 80 ".ktv[0:79]"  90 0 140 -1.9963070259545004 159 1.8170473941589906
		 160 1.2492900465656327 161 0.45536036400191138 162 0.037227865087305426 164 -0.52721502441513513
		 166 -0.17456466415290028 168 0.54650339883889232 169 0.96326723544584203 174 2.713985592962628
		 176 0.72508249237900024 179 -2.5087437315132637 191 1.444756309358723 193 1.1020065955354337
		 194 0.81345869781774549 195 0.48266873838613883 196 0.095536718395259956 198 -0.73686661329220993
		 199 -1.0432442049651243 200 -1.1865880306567707 206 0.99333915253762806 211 -1.0484004372030959
		 217 1.1526579684194707 218 1.0211103802896591 220 0.35686082114694406 221 -0.0023100167722376291
		 222 -0.36961904287004071 223 -0.68123359296030273 225 -1.0077702257147696 228 -0.82208230766473034
		 231 -0.50659100381068578 238 0.36444045488188448 244 1.1090537959433016 251 1.6142337095947088
		 253 1.4801181522059998 254 1.3650475707619607 257 0.83902629952709917 260 0.18284284804730011
		 262 -0.11231147526213947 263 -0.28324984866424985 266 -0.97621443389716478 270 -2.4573733971732823
		 272 -2.2920200773158803 275 -1.7268454517004015 277 -1.2777254310930142 280 -0.59742156697991211
		 282 -0.1514630957100348 285 0.42203823321730072 287 0.71673663684260625 291 1.0164046640390774
		 293 0.67757331389676145 294 0.40081919218073936 295 0.12014071281956774 297 -0.58468989953174566
		 298 -0.87501710054580073 299 -1.0176057729339043 320 2.2266870560502077 330 -0.34026449761090588
		 342 1.7588580048448064 343 1.7506993090010023 344 1.7190894480111281 345 1.6438094377496486
		 346 1.5096053222040813 347 1.3230252558231732 349 0.82761939227802761 351 0.22622307553625476
		 353 -0.41008214017004518 362 -2.6811417289244832 364 -2.4091706253700647 366 -1.8745888839917768
		 369 -0.8261610437740825 372 0.29153651487603538 375 1.2491401201143821 378 2.0304315919344282
		 379 2.2077383072435399 381 2.3971221429773615 382 2.3971221429773615 395 0.34927192414952501
		 410 0;
createNode animCurveTU -n "bogenCTRL_middle_visibility";
	rename -uid "3C24A758-4F26-CB73-FECF-B2AEE245B920";
	setAttr ".tan" 9;
	setAttr -s 21 ".ktv[0:20]"  140 1 159 1 164 1 179 1 191 1 200 1 206 1
		 211 1 217 1 225 1 251 1 263 1 270 1 291 1 299 1 320 1 330 1 342 1 362 1 381 1 382 1;
	setAttr -s 21 ".kot[0:20]"  5 5 5 5 5 5 5 5 
		5 5 5 5 5 5 5 5 5 5 5 5 5;
createNode animCurveTA -n "bogenCTRL_middle_rotateX";
	rename -uid "2DBD17FD-4F8D-FA02-9FC2-39A24880B766";
	setAttr ".tan" 28;
	setAttr -s 26 ".ktv[0:25]"  90 0 140 -34.237814125696673 159 -34.237814125696673
		 164 -48.150172618787714 174 -36.452170986411964 179 -36.452170986411964 191 -36.452170986411964
		 200 -16.951986895525312 206 -16.951986895525312 211 -16.951986895525312 217 -16.951986895525312
		 225 -35.682670558583773 251 -48.378287339276952 263 -32.556740393304722 270 -32.285723153952418
		 291 -48.768257758840704 299 -36.023352427003097 320 -43.788514863569439 330 -34.650064379208622
		 342 -34.650064379208622 346 -22.684161870121756 351 -15.530625174902966 362 -14.039857178501041
		 381 -34.705107611247371 382 -34.705107611247371 410 0;
createNode animCurveTA -n "bogenCTRL_middle_rotateY";
	rename -uid "3B0828CE-457E-4D4F-BD6B-739DC674BC75";
	setAttr ".tan" 28;
	setAttr -s 24 ".ktv[0:23]"  90 0 140 37.946444633605665 159 37.946444633605665
		 164 37.946444633605665 179 37.946444633605665 191 37.946444633605665 200 37.946444633605665
		 206 37.946444633605665 211 37.946444633605665 217 37.946444633605665 225 37.946444633605715
		 251 37.946444633605715 263 37.946444633605715 270 37.946444633605715 291 36.639463232956416
		 299 36.639463232956416 320 25.976484198330652 330 37.918559340456191 342 37.918559340456191
		 351 38.405589816952968 362 37.918559340456191 381 37.918559340456191 382 37.918559340456191
		 410 0;
createNode animCurveTA -n "bogenCTRL_middle_rotateZ";
	rename -uid "A52869C7-4F93-F2AF-1704-C8A90B9C7456";
	setAttr ".tan" 28;
	setAttr -s 24 ".ktv[0:23]"  90 0 140 -10.993161535138631 159 -10.993161535138631
		 164 -10.993161535138631 179 -10.993161535138631 191 -10.993161535138631 200 -10.993161535138631
		 206 -10.993161535138631 211 -10.993161535138631 217 -10.993161535138631 225 -10.993161535138688
		 251 -10.993161535138688 263 -10.993161535138688 270 -10.993161535138688 291 -9.0801378679880571
		 299 -9.0801378679880571 320 -23.89855637560095 330 -6.8131806655909424 342 -6.8131806655909424
		 351 -4.6799417559445589 362 -6.8131806655909424 381 -6.8131806655909424 382 -6.8131806655909424
		 410 0;
createNode animCurveTU -n "bogenCTRL_middle_scaleX";
	rename -uid "DDC22235-4E7B-3C4B-74BD-6B9422868E4A";
	setAttr ".tan" 28;
	setAttr -s 21 ".ktv[0:20]"  140 1 159 1 164 1 179 1 191 1 200 1 206 1
		 211 1 217 1 225 1 251 1 263 1 270 1 291 1 299 1 320 1 330 1 342 1 362 1 381 1 382 1;
createNode animCurveTU -n "bogenCTRL_middle_scaleY";
	rename -uid "BFCB0DE8-43F4-10F2-23DD-B69F4F52A92E";
	setAttr ".tan" 28;
	setAttr -s 21 ".ktv[0:20]"  140 1 159 1 164 1 179 1 191 1 200 1 206 1
		 211 1 217 1 225 1 251 1 263 1 270 1 291 1 299 1 320 1 330 1 342 1 362 1 381 1 382 1;
createNode animCurveTU -n "bogenCTRL_middle_scaleZ";
	rename -uid "46512FB5-4AA8-6A62-563B-938B7C1DBC4D";
	setAttr ".tan" 28;
	setAttr -s 21 ".ktv[0:20]"  140 1 159 1 164 1 179 1 191 1 200 1 206 1
		 211 1 217 1 225 1 251 1 263 1 270 1 291 1 299 1 320 1 330 1 342 1 362 1 381 1 382 1;
createNode animCurveTU -n "bogenCTRL_middle_Bend";
	rename -uid "1B9E910C-4113-D908-54CC-3084E50EA992";
	setAttr ".tan" 28;
	setAttr -s 21 ".ktv[0:20]"  140 0 159 0 164 0 179 0 191 0 200 0 206 0
		 211 0 217 0 225 0 251 0 263 0 270 0 291 0 299 0 320 0 330 0 342 0 362 0 381 0 382 0;
createNode animCurveTU -n "bogenCTRL_middle_squashNstretch";
	rename -uid "A609E8D4-4399-F098-4FF9-3EA8C006D28E";
	setAttr ".tan" 28;
	setAttr -s 21 ".ktv[0:20]"  140 0 159 0 164 0 179 0 191 0 200 0 206 0
		 211 0 217 0 225 0 251 0 263 0 270 0 291 0 299 0 320 0 330 0 342 0 362 0 381 0 382 0;
createNode timeEditor -s -n "timeEditor";
	rename -uid "121FC042-4C5A-4375-5A81-C49AFA5CC6FD";
	setAttr ".ac" 0;
createNode timeEditorTracks -n "Composition1";
	rename -uid "F7B3CEC9-4A27-A106-5BAF-A3ABD9819D30";
createNode animCurveTA -n "Geige_rotateX";
	rename -uid "9BB53375-437B-BB28-685A-DF9A60C171DD";
	setAttr ".tan" 28;
	setAttr -s 22 ".ktv[0:21]"  90 90 140 90 159 97.941201672010919 164 93.639449176393526
		 175 100.63230916576738 179 90 192 98.222123012637525 199 92.962958061433739 205 97.606999923183352
		 211 95.305040646833461 217 98.81973849582775 225 93.381113845566759 251 101.34882740194263
		 265 90 269 90 290 99.779151643024989 299 92.623537048644437 320 101.32577681233984
		 331 93.519748335568593 341 96.480753598891766 362 87.125886911035465 383 95;
createNode animCurveTA -n "Geige_rotateY";
	rename -uid "B8A7CB57-4FDA-41F8-D9C4-44BCEA1B8683";
	setAttr ".tan" 28;
	setAttr -s 3 ".ktv[0:2]"  90 0 140 0 383 0;
createNode animCurveTA -n "Geige_rotateZ";
	rename -uid "8300A84B-4CAF-BE8A-F623-9182283E57C0";
	setAttr ".tan" 28;
	setAttr -s 3 ".ktv[0:2]"  90 0 140 0 383 0;
createNode animCurveTU -n "Geige_visibility";
	rename -uid "7A1EBA72-4757-8E4E-5332-839CA34ACDAA";
	setAttr ".tan" 9;
	setAttr -s 3 ".ktv[0:2]"  90 1 140 1 383 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "Geige_translateX";
	rename -uid "761D3648-477E-062E-6768-8891A2644255";
	setAttr ".tan" 28;
	setAttr -s 2 ".ktv[0:1]"  140 4.4286802751150347 383 4.4286802751150347;
createNode animCurveTL -n "Geige_translateY";
	rename -uid "25F3C9FA-4B6F-1C31-C160-9090374836F1";
	setAttr ".tan" 28;
	setAttr -s 5 ".ktv[0:4]"  50 -9.4921029884339259 70 -9.368 90 -9.4951215834099099
		 140 -9.4951215834099099 383 -9.4951215834099099;
createNode animCurveTL -n "Geige_translateZ";
	rename -uid "2C5F2810-4A89-34BC-B973-F487389DCC5C";
	setAttr ".tan" 28;
	setAttr -s 3 ".ktv[0:2]"  90 30.175627136959179 140 30.175627136959179
		 383 30.175627136959179;
createNode animCurveTU -n "Geige_scaleX";
	rename -uid "F9B80DA3-4776-0008-7EB7-479844556ED3";
	setAttr ".tan" 28;
	setAttr -s 3 ".ktv[0:2]"  90 1 140 1 383 1;
createNode animCurveTU -n "Geige_scaleY";
	rename -uid "4F7D6901-43E2-A7E9-45CA-75886553618E";
	setAttr ".tan" 28;
	setAttr -s 3 ".ktv[0:2]"  90 1 140 1 383 1;
createNode animCurveTU -n "Geige_scaleZ";
	rename -uid "00184008-47B2-33A9-D141-BE907562CC8B";
	setAttr ".tan" 28;
	setAttr -s 3 ".ktv[0:2]"  90 1 140 1 383 1;
createNode aiStandardSurface -n "aiStandardSurface1";
	rename -uid "134CA0BF-47C9-730F-CB2B-BBB553003358";
	setAttr ".specular_roughness" 1;
createNode shadingEngine -n "aiStandardSurface1SG";
	rename -uid "CB59F9A9-4B6D-6011-7AEB-6EAF61B3ABBE";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
	setAttr -s 11 ".aovs";
	setAttr ".aovs[0].aov_name" -type "string" "RGBA";
	setAttr ".aovs[1].aov_name" -type "string" "Z";
	setAttr ".aovs[2].aov_name" -type "string" "albedo";
	setAttr ".aovs[3].aov_name" -type "string" "diffuse";
	setAttr ".aovs[4].aov_name" -type "string" "direct";
	setAttr ".aovs[5].aov_name" -type "string" "indirect";
	setAttr ".aovs[6].aov_name" -type "string" "opacity";
	setAttr ".aovs[7].aov_name" -type "string" "specular";
	setAttr ".aovs[8].aov_name" -type "string" "crypto_asset";
	setAttr ".aovs[9].aov_name" -type "string" "AO";
	setAttr ".aovs[10].aov_name" -type "string" "N";
	setAttr ".aal" -type "attributeAlias" {"ai_aov_RGBA","aiCustomAOVs[0]","ai_aov_N"
		,"aiCustomAOVs[10]","ai_aov_Z","aiCustomAOVs[1]","ai_aov_albedo","aiCustomAOVs[2]"
		,"ai_aov_diffuse","aiCustomAOVs[3]","ai_aov_direct","aiCustomAOVs[4]","ai_aov_indirect"
		,"aiCustomAOVs[5]","ai_aov_opacity","aiCustomAOVs[6]","ai_aov_specular","aiCustomAOVs[7]"
		,"ai_aov_crypto_asset","aiCustomAOVs[8]","ai_aov_AO","aiCustomAOVs[9]"} ;
createNode materialInfo -n "materialInfo1";
	rename -uid "395064B4-4A57-9647-4016-BBA155C0ACA0";
createNode file -n "file1";
	rename -uid "48F6FFBC-4369-ED50-97EB-C0B106D68326";
	setAttr ".ftn" -type "string" "D:/FH Hagenberg/Unity_Projects/Semesterprojekt_ViolinAnimation/High-Strung//assets/2D Planes/Scene 2 Practice/s2_l1.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture1";
	rename -uid "0AE32B0E-4500-6AD3-A97F-1A8606660940";
createNode aiStandardSurface -n "aiStandardSurface2";
	rename -uid "4961A4DE-4CBB-911E-45D5-62BEBCFA233C";
	setAttr ".specular_roughness" 1;
createNode shadingEngine -n "aiStandardSurface2SG";
	rename -uid "A23044A5-4D3C-3ACF-1EE2-A69DB3FF75BB";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
	setAttr -s 11 ".aovs";
	setAttr ".aovs[0].aov_name" -type "string" "RGBA";
	setAttr ".aovs[1].aov_name" -type "string" "Z";
	setAttr ".aovs[2].aov_name" -type "string" "albedo";
	setAttr ".aovs[3].aov_name" -type "string" "diffuse";
	setAttr ".aovs[4].aov_name" -type "string" "direct";
	setAttr ".aovs[5].aov_name" -type "string" "indirect";
	setAttr ".aovs[6].aov_name" -type "string" "opacity";
	setAttr ".aovs[7].aov_name" -type "string" "specular";
	setAttr ".aovs[8].aov_name" -type "string" "crypto_asset";
	setAttr ".aovs[9].aov_name" -type "string" "AO";
	setAttr ".aovs[10].aov_name" -type "string" "N";
	setAttr ".aal" -type "attributeAlias" {"ai_aov_RGBA","aiCustomAOVs[0]","ai_aov_N"
		,"aiCustomAOVs[10]","ai_aov_Z","aiCustomAOVs[1]","ai_aov_albedo","aiCustomAOVs[2]"
		,"ai_aov_diffuse","aiCustomAOVs[3]","ai_aov_direct","aiCustomAOVs[4]","ai_aov_indirect"
		,"aiCustomAOVs[5]","ai_aov_opacity","aiCustomAOVs[6]","ai_aov_specular","aiCustomAOVs[7]"
		,"ai_aov_crypto_asset","aiCustomAOVs[8]","ai_aov_AO","aiCustomAOVs[9]"} ;
createNode materialInfo -n "materialInfo2";
	rename -uid "825B995F-463C-E271-8BC8-FFA2C1AE0C0A";
createNode file -n "file2";
	rename -uid "6EBEC165-4087-E351-D3A3-10B79536E482";
	setAttr ".ftn" -type "string" "D:/FH Hagenberg/Unity_Projects/Semesterprojekt_ViolinAnimation/High-Strung//assets/2D Planes/Scene 2 Practice/s2_l2.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture2";
	rename -uid "C1E028EC-456B-A404-3252-D78806596D12";
createNode file -n "file3";
	rename -uid "80D701C7-4CCE-3129-CFB5-C2A77D778768";
	setAttr ".ftn" -type "string" "D:/FH Hagenberg/Unity_Projects/Semesterprojekt_ViolinAnimation/High-Strung//assets/2D Planes/Scene 2 Practice/s2_l2_alpha.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture3";
	rename -uid "B3C9E69F-4912-A085-8C1C-FB928FF209FA";
createNode aiStandardSurface -n "aiStandardSurface3";
	rename -uid "B460A46F-4767-5D00-1596-17A5B73013D0";
	setAttr ".specular_roughness" 1;
createNode shadingEngine -n "aiStandardSurface3SG";
	rename -uid "A3BE68F6-48C1-0064-CEE4-F49249ADCA03";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
	setAttr -s 11 ".aovs";
	setAttr ".aovs[0].aov_name" -type "string" "RGBA";
	setAttr ".aovs[1].aov_name" -type "string" "Z";
	setAttr ".aovs[2].aov_name" -type "string" "albedo";
	setAttr ".aovs[3].aov_name" -type "string" "diffuse";
	setAttr ".aovs[4].aov_name" -type "string" "direct";
	setAttr ".aovs[5].aov_name" -type "string" "indirect";
	setAttr ".aovs[6].aov_name" -type "string" "opacity";
	setAttr ".aovs[7].aov_name" -type "string" "specular";
	setAttr ".aovs[8].aov_name" -type "string" "crypto_asset";
	setAttr ".aovs[9].aov_name" -type "string" "AO";
	setAttr ".aovs[10].aov_name" -type "string" "N";
	setAttr ".aal" -type "attributeAlias" {"ai_aov_RGBA","aiCustomAOVs[0]","ai_aov_N"
		,"aiCustomAOVs[10]","ai_aov_Z","aiCustomAOVs[1]","ai_aov_albedo","aiCustomAOVs[2]"
		,"ai_aov_diffuse","aiCustomAOVs[3]","ai_aov_direct","aiCustomAOVs[4]","ai_aov_indirect"
		,"aiCustomAOVs[5]","ai_aov_opacity","aiCustomAOVs[6]","ai_aov_specular","aiCustomAOVs[7]"
		,"ai_aov_crypto_asset","aiCustomAOVs[8]","ai_aov_AO","aiCustomAOVs[9]"} ;
createNode materialInfo -n "materialInfo3";
	rename -uid "9C77C43E-4303-DF2E-0519-2192E7D5A187";
createNode file -n "file4";
	rename -uid "4FC70FEE-4C41-F85D-60D0-B3A162914E3B";
	setAttr ".ftn" -type "string" "D:/FH Hagenberg/Unity_Projects/Semesterprojekt_ViolinAnimation/High-Strung//assets/2D Planes/Scene 2 Practice/s2_l3.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture4";
	rename -uid "9E386877-4B38-D8E8-54A6-EF92C03A95BD";
createNode file -n "file5";
	rename -uid "E1792E8E-4B2C-FB09-FF19-699A1B11240E";
	setAttr ".ftn" -type "string" "D:/FH Hagenberg/Unity_Projects/Semesterprojekt_ViolinAnimation/High-Strung//assets/2D Planes/Scene 2 Practice/s2_l3_alpha.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture5";
	rename -uid "5669DA87-4D62-48CF-2499-B0BD9C7D0367";
createNode aiStandardSurface -n "aiStandardSurface4";
	rename -uid "8633BA20-45C3-CB51-07F0-098006016ED2";
	setAttr ".specular_roughness" 1;
createNode shadingEngine -n "aiStandardSurface4SG";
	rename -uid "EA223ADD-4C10-FA8C-829D-ACBA198AE1C8";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
	setAttr -s 11 ".aovs";
	setAttr ".aovs[0].aov_name" -type "string" "RGBA";
	setAttr ".aovs[1].aov_name" -type "string" "Z";
	setAttr ".aovs[2].aov_name" -type "string" "albedo";
	setAttr ".aovs[3].aov_name" -type "string" "diffuse";
	setAttr ".aovs[4].aov_name" -type "string" "direct";
	setAttr ".aovs[5].aov_name" -type "string" "indirect";
	setAttr ".aovs[6].aov_name" -type "string" "opacity";
	setAttr ".aovs[7].aov_name" -type "string" "specular";
	setAttr ".aovs[8].aov_name" -type "string" "crypto_asset";
	setAttr ".aovs[9].aov_name" -type "string" "AO";
	setAttr ".aovs[10].aov_name" -type "string" "N";
	setAttr ".aal" -type "attributeAlias" {"ai_aov_RGBA","aiCustomAOVs[0]","ai_aov_N"
		,"aiCustomAOVs[10]","ai_aov_Z","aiCustomAOVs[1]","ai_aov_albedo","aiCustomAOVs[2]"
		,"ai_aov_diffuse","aiCustomAOVs[3]","ai_aov_direct","aiCustomAOVs[4]","ai_aov_indirect"
		,"aiCustomAOVs[5]","ai_aov_opacity","aiCustomAOVs[6]","ai_aov_specular","aiCustomAOVs[7]"
		,"ai_aov_crypto_asset","aiCustomAOVs[8]","ai_aov_AO","aiCustomAOVs[9]"} ;
createNode materialInfo -n "materialInfo4";
	rename -uid "9B3B4AF8-4859-528A-8217-6184F142562C";
createNode file -n "file6";
	rename -uid "7402BD38-432F-F095-3111-8CB322F2161F";
	setAttr ".ftn" -type "string" "D:/FH Hagenberg/Unity_Projects/Semesterprojekt_ViolinAnimation/High-Strung//assets/2D Planes/Scene 2 Practice/s2_notenstand.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture6";
	rename -uid "9AA020D0-4421-9B07-5CBD-749AE6B52D9D";
createNode file -n "file7";
	rename -uid "094B4E8F-4DA2-553B-189B-4AAFA0FDD3F5";
	setAttr ".ftn" -type "string" "D:/FH Hagenberg/Unity_Projects/Semesterprojekt_ViolinAnimation/High-Strung//assets/2D Planes/Scene 2 Practice/s2_notenstand_alpha.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture7";
	rename -uid "57FB69F0-4510-2963-4E80-CAA15076A66D";
createNode animCurveTU -n "plane_canvasSize3_visibility";
	rename -uid "82E48552-446D-7CA6-022B-ADB8EDF78617";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 1 48 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "plane_canvasSize3_translateX";
	rename -uid "64891148-48A4-A012-FA0E-43B89D05E7E2";
	setAttr ".tan" 28;
	setAttr -s 3 ".ktv[0:2]"  0 50 48 50 130 100;
createNode animCurveTL -n "plane_canvasSize3_translateY";
	rename -uid "01333AE5-4677-8CB2-6935-D8916885D20C";
	setAttr ".tan" 28;
	setAttr -s 2 ".ktv[0:1]"  0 0 48 0;
createNode animCurveTL -n "plane_canvasSize3_translateZ";
	rename -uid "6E91419B-457D-1FF7-799E-C58753840E4C";
	setAttr ".tan" 28;
	setAttr -s 2 ".ktv[0:1]"  0 50.892382629912234 48 50.892382629912234;
createNode animCurveTA -n "plane_canvasSize3_rotateX";
	rename -uid "080FC023-4DE3-3718-5147-7889533F6A7E";
	setAttr ".tan" 28;
	setAttr -s 2 ".ktv[0:1]"  0 90.000000000000028 48 90.000000000000028;
createNode animCurveTA -n "plane_canvasSize3_rotateY";
	rename -uid "27DDA1EE-4A49-F9A3-BA2A-5695AB018A0B";
	setAttr ".tan" 28;
	setAttr -s 2 ".ktv[0:1]"  0 0 48 0;
createNode animCurveTA -n "plane_canvasSize3_rotateZ";
	rename -uid "2BC626CC-4FDA-8FAA-B12D-B0917BD427D8";
	setAttr ".tan" 28;
	setAttr -s 2 ".ktv[0:1]"  0 0 48 0;
createNode animCurveTU -n "plane_canvasSize3_scaleX";
	rename -uid "7DD660CF-478E-9868-8CDC-4F84D6C453A5";
	setAttr ".tan" 28;
	setAttr -s 2 ".ktv[0:1]"  0 100 48 100;
createNode animCurveTU -n "plane_canvasSize3_scaleY";
	rename -uid "A8941489-4652-A2ED-BD17-46868DB0834A";
	setAttr ".tan" 28;
	setAttr -s 2 ".ktv[0:1]"  0 1 48 1;
createNode animCurveTU -n "plane_canvasSize3_scaleZ";
	rename -uid "4EF00C59-4F60-CA35-68F1-BDAC2DA7BFD2";
	setAttr ".tan" 28;
	setAttr -s 2 ".ktv[0:1]"  0 60 48 60;
createNode animCurveTU -n "plane_canvasSize2_visibility";
	rename -uid "871E9251-44D9-56A7-3D17-8EAD90D64142";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 1 48 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "plane_canvasSize2_translateX";
	rename -uid "75A73950-4E19-5901-97BD-45B6A86EC7DB";
	setAttr ".tan" 28;
	setAttr -s 3 ".ktv[0:2]"  0 -50 48 -50 130 -100;
createNode animCurveTL -n "plane_canvasSize2_translateY";
	rename -uid "69291E8B-458C-DE3D-D59A-63B0D04BC416";
	setAttr ".tan" 28;
	setAttr -s 2 ".ktv[0:1]"  0 0 48 0;
createNode animCurveTL -n "plane_canvasSize2_translateZ";
	rename -uid "2F327EFF-4107-59B0-C485-D7AEF397DAF6";
	setAttr ".tan" 28;
	setAttr -s 2 ".ktv[0:1]"  0 50.892382629912234 48 50.892382629912234;
createNode animCurveTA -n "plane_canvasSize2_rotateX";
	rename -uid "C8FE85CB-4A25-1667-385B-B6A7D5BA7B1C";
	setAttr ".tan" 28;
	setAttr -s 2 ".ktv[0:1]"  0 90.000000000000028 48 90.000000000000028;
createNode animCurveTA -n "plane_canvasSize2_rotateY";
	rename -uid "D8D3472B-4476-17D0-9D85-DB93A7F23F62";
	setAttr ".tan" 28;
	setAttr -s 2 ".ktv[0:1]"  0 0 48 0;
createNode animCurveTA -n "plane_canvasSize2_rotateZ";
	rename -uid "FA81B2F5-469B-4D3A-A71B-37B152302F02";
	setAttr ".tan" 28;
	setAttr -s 2 ".ktv[0:1]"  0 0 48 0;
createNode animCurveTU -n "plane_canvasSize2_scaleX";
	rename -uid "98965ED5-4986-3AD9-8912-24839C7631D7";
	setAttr ".tan" 28;
	setAttr -s 2 ".ktv[0:1]"  0 100 48 100;
createNode animCurveTU -n "plane_canvasSize2_scaleY";
	rename -uid "B129F7AE-4A0A-53EA-27BC-87AEFD1241E7";
	setAttr ".tan" 28;
	setAttr -s 2 ".ktv[0:1]"  0 1 48 1;
createNode animCurveTU -n "plane_canvasSize2_scaleZ";
	rename -uid "831BE5F4-4E54-1490-4215-B592C91E2043";
	setAttr ".tan" 28;
	setAttr -s 2 ".ktv[0:1]"  0 60 48 60;
createNode animCurveTU -n "geigeCTRL_bottom_visibility";
	rename -uid "D9423C45-4906-8273-9269-97ADEFBAC0A4";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  140 1 382 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "geigeCTRL_bottom_translateX";
	rename -uid "4CB915F5-4302-8CB0-732A-91A2F1A7F7CF";
	setAttr ".tan" 28;
	setAttr -s 2 ".ktv[0:1]"  140 0 382 0;
createNode animCurveTL -n "geigeCTRL_bottom_translateY";
	rename -uid "BD2B2B72-4B22-0C09-3111-C69CFFDC7F61";
	setAttr ".tan" 28;
	setAttr -s 2 ".ktv[0:1]"  140 0 382 0;
createNode animCurveTL -n "geigeCTRL_bottom_translateZ";
	rename -uid "98146E46-4A8B-35FC-F5E8-82A4F948B484";
	setAttr ".tan" 28;
	setAttr -s 2 ".ktv[0:1]"  140 0 382 0;
createNode animCurveTA -n "geigeCTRL_bottom_rotateX";
	rename -uid "DA6F0EE7-41A8-2C1C-4B72-18AF8480417B";
	setAttr ".tan" 28;
	setAttr -s 4 ".ktv[0:3]"  90 0 140 -32.522526100321933 382 -32.522526100321933
		 410 0;
createNode animCurveTA -n "geigeCTRL_bottom_rotateY";
	rename -uid "AF6C187B-424C-7B98-19E5-F5BC17471EEB";
	setAttr ".tan" 28;
	setAttr -s 4 ".ktv[0:3]"  90 0 140 -38.635735577328823 382 -38.635735577328823
		 410 0;
createNode animCurveTA -n "geigeCTRL_bottom_rotateZ";
	rename -uid "426259A8-4759-36DB-D7C7-8EB16124B503";
	setAttr ".tan" 28;
	setAttr -s 4 ".ktv[0:3]"  90 0 140 46.164650093160851 382 46.164650093160851
		 410 0;
createNode animCurveTU -n "geigeCTRL_bottom_scaleX";
	rename -uid "90F755B0-48CB-87E1-E30E-20AF968E1CA8";
	setAttr ".tan" 28;
	setAttr -s 2 ".ktv[0:1]"  140 1 382 1;
createNode animCurveTU -n "geigeCTRL_bottom_scaleY";
	rename -uid "120A1BAF-420F-35CA-C11F-9B8445065DCA";
	setAttr ".tan" 28;
	setAttr -s 2 ".ktv[0:1]"  140 1 382 1;
createNode animCurveTU -n "geigeCTRL_bottom_scaleZ";
	rename -uid "4FFECFDA-447F-3155-5505-1DADEE3141AF";
	setAttr ".tan" 28;
	setAttr -s 2 ".ktv[0:1]"  140 1 382 1;
createNode animCurveTL -n "Shot7_translateX";
	rename -uid "2F3A399E-4DB4-3BD9-2C4D-11BCB6A9A00B";
	setAttr ".tan" 28;
	setAttr -s 3 ".ktv[0:2]"  0 0.102 160 0.102 321 -26.542067391418541;
createNode animCurveTL -n "Shot7_translateY";
	rename -uid "363E41DA-439A-69E8-EF73-1FA856B5B8A9";
	setAttr ".tan" 28;
	setAttr -s 3 ".ktv[0:2]"  0 3.306 160 3.306 321 -6;
createNode animCurveTL -n "Shot7_translateZ";
	rename -uid "3660BE38-4FB7-6CBC-FF73-77B7EE0C5D35";
	setAttr ".tan" 28;
	setAttr -s 3 ".ktv[0:2]"  0 168.202 160 168.202 321 101.98181629277011;
createNode animCurveTU -n "Shot7_visibility";
	rename -uid "16C0CE90-47F7-A530-E463-46852CE33C52";
	setAttr ".tan" 9;
	setAttr -s 2 ".ktv[0:1]"  0 1 160 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTA -n "Shot7_rotateX";
	rename -uid "0E1C0903-4248-16F0-BA67-0DBB40DF591B";
	setAttr ".tan" 28;
	setAttr -s 3 ".ktv[0:2]"  0 0 160 0 321 0;
createNode animCurveTA -n "Shot7_rotateY";
	rename -uid "91B144CC-4E4C-FE1C-0F8E-4FB6617CC928";
	setAttr ".tan" 28;
	setAttr -s 3 ".ktv[0:2]"  0 0 160 0 321 -14;
createNode animCurveTA -n "Shot7_rotateZ";
	rename -uid "5EFA61E4-40E5-2778-AA5D-698CDF2C0186";
	setAttr ".tan" 28;
	setAttr -s 2 ".ktv[0:1]"  0 -5.172681101354183e-14 160 -5.172681101354183e-14;
createNode animCurveTU -n "Shot7_scaleX";
	rename -uid "6A2F93FE-4BD9-3827-AEA7-E4BABD196D30";
	setAttr ".tan" 28;
	setAttr -s 2 ".ktv[0:1]"  0 1 160 1;
createNode animCurveTU -n "Shot7_scaleY";
	rename -uid "100409D8-408F-EACD-6F64-BB87CD5E019B";
	setAttr ".tan" 28;
	setAttr -s 2 ".ktv[0:1]"  0 1 160 1;
createNode animCurveTU -n "Shot7_scaleZ";
	rename -uid "91458FFB-4B78-9478-3E52-F9B694FFC543";
	setAttr ".tan" 28;
	setAttr -s 2 ".ktv[0:1]"  0 1 160 1;
createNode aiAtmosphereVolume -n "aiAtmosphereVolume";
	rename -uid "38992FED-49DC-F3F5-A98A-14964AB6AF40";
	setAttr ".density" 0.004999999888241291;
createNode animCurveTL -n "aiAreaLight4_translateX";
	rename -uid "1594CB47-42F4-C57C-A992-BBBBB3EF83A4";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  90 5.637419454332945 138 -2.074928891302382
		 379 -2.074928891302382 410 8.668290401873616;
	setAttr -s 4 ".kit[1:3]"  1 18 18;
	setAttr -s 4 ".kot[1:3]"  1 18 18;
	setAttr -s 4 ".kix[1:3]"  2 10.041666666666666 1.2916666666666661;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
	setAttr -s 4 ".kox[1:3]"  10.041666666666666 1.2916666666666661 1.2916666666666661;
	setAttr -s 4 ".koy[1:3]"  0 0 0;
createNode animCurveTL -n "aiAreaLight4_translateY";
	rename -uid "8CB4D24B-4B92-8948-88CF-5AB67605B93A";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  90 -9.8319336473643872 138 -11.891888077946183
		 379 -11.891888077946183 410 -9.8818093522074495;
	setAttr -s 4 ".kit[1:3]"  1 18 18;
	setAttr -s 4 ".kot[1:3]"  1 18 18;
	setAttr -s 4 ".kix[1:3]"  2 10.041666666666666 1.2916666666666661;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
	setAttr -s 4 ".kox[1:3]"  10.041666666666666 1.2916666666666661 1.2916666666666661;
	setAttr -s 4 ".koy[1:3]"  0 0 0;
createNode animCurveTL -n "aiAreaLight4_translateZ";
	rename -uid "1192D784-4C0E-D78E-B3D8-8FB4A0FCE0D2";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  90 35.397660466395813 138 33.47794178376239
		 379 34.29708980330485 410 32.247742281340678;
	setAttr -s 4 ".kit[1:3]"  1 18 18;
	setAttr -s 4 ".kot[1:3]"  1 18 18;
	setAttr -s 4 ".kix[1:3]"  2 10.041666666666666 1.2916666666666661;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
	setAttr -s 4 ".kox[1:3]"  10.041666666666666 1.2916666666666661 1.2916666666666661;
	setAttr -s 4 ".koy[1:3]"  0 0 0;
createNode animCurveTA -n "aiAreaLight4_rotateX";
	rename -uid "F0E2D2A1-4C5A-21D3-1FD4-3F93DF747A14";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  90 -27.52963383131824 138 20.546590923674177
		 379 20.546590923674177 410 -37.637468149702713;
	setAttr -s 4 ".kit[1:3]"  1 18 18;
	setAttr -s 4 ".kot[1:3]"  1 18 18;
	setAttr -s 4 ".kix[1:3]"  2 10.041666666666666 1.2916666666666661;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
	setAttr -s 4 ".kox[1:3]"  10.041666666666666 1.2916666666666661 1.2916666666666661;
	setAttr -s 4 ".koy[1:3]"  0 0 0;
createNode animCurveTA -n "aiAreaLight4_rotateY";
	rename -uid "FABF88D9-4A7A-6D58-DF14-29A5F7EB8733";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  90 49.995181415891501 138 55.004857326940254
		 379 55.004857326940254 410 78.956491932087005;
	setAttr -s 4 ".kit[1:3]"  1 18 18;
	setAttr -s 4 ".kot[1:3]"  1 18 18;
	setAttr -s 4 ".kix[1:3]"  2 10.041666666666666 1.2916666666666661;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
	setAttr -s 4 ".kox[1:3]"  10.041666666666666 1.2916666666666661 1.2916666666666661;
	setAttr -s 4 ".koy[1:3]"  0 0 0;
createNode animCurveTA -n "aiAreaLight4_rotateZ";
	rename -uid "E888EE8C-4B42-72C9-F07F-A082D97F1A56";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  90 -30.812763254481485 138 -35.041562228125656
		 379 -35.041562228125656 410 -33.651172681640361;
	setAttr -s 4 ".kit[1:3]"  1 18 18;
	setAttr -s 4 ".kot[1:3]"  1 18 18;
	setAttr -s 4 ".kix[1:3]"  2 10.041666666666666 1.2916666666666661;
	setAttr -s 4 ".kiy[1:3]"  0 0 0;
	setAttr -s 4 ".kox[1:3]"  10.041666666666666 1.2916666666666661 1.2916666666666661;
	setAttr -s 4 ".koy[1:3]"  0 0 0;
createNode animCurveTU -n "aiAreaLight4_scaleX";
	rename -uid "FD0948A3-4A2C-E020-3D5C-8C85CC2D56EB";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  90 3.0202344359888564 138 1.8134547820588813
		 379 1.8134547820588813;
	setAttr -s 3 ".kit[1:2]"  1 18;
	setAttr -s 3 ".kot[1:2]"  1 18;
	setAttr -s 3 ".kix[1:2]"  2 10.041666666666666;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  10.041666666666666 10.041666666666666;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTU -n "aiAreaLight4_scaleY";
	rename -uid "ED2BF5DE-4682-E372-FFB1-F7AD6E3F2B43";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  90 9.3125402183482233 138 8.300258188809682
		 379 8.300258188809682;
	setAttr -s 3 ".kit[1:2]"  1 18;
	setAttr -s 3 ".kot[1:2]"  1 18;
	setAttr -s 3 ".kix[1:2]"  2 10.041666666666666;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  10.041666666666666 10.041666666666666;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTU -n "aiAreaLight4_scaleZ";
	rename -uid "FDDC9497-4977-944E-BC3D-ADBE3F7B79F4";
	setAttr ".tan" 18;
	setAttr -s 3 ".ktv[0:2]"  90 8.300258188809682 138 8.300258188809682
		 379 8.300258188809682;
	setAttr -s 3 ".kit[1:2]"  1 18;
	setAttr -s 3 ".kot[1:2]"  1 18;
	setAttr -s 3 ".kix[1:2]"  2 10.041666666666666;
	setAttr -s 3 ".kiy[1:2]"  0 0;
	setAttr -s 3 ".kox[1:2]"  10.041666666666666 10.041666666666666;
	setAttr -s 3 ".koy[1:2]"  0 0;
createNode animCurveTU -n "aiAreaLight4_visibility";
	rename -uid "C9613594-4987-1597-B134-5599CAE0E2A7";
	setAttr ".tan" 5;
	setAttr -s 3 ".ktv[0:2]"  90 1 138 1 379 1;
	setAttr -s 3 ".kit[0:2]"  9 1 9;
	setAttr -s 3 ".kix[1:2]"  2 10.041666666666666;
	setAttr -s 3 ".kiy[1:2]"  0 0;
createNode reference -n "notenblaetterRN";
	rename -uid "3A8A4E56-46A0-E5F3-7E99-D6AAE5A64F62";
	setAttr ".ed" -type "dataReferenceEdits" 
		"notenblaetterRN"
		"notenblaetterRN" 0
		"notenblaetterRN" 20
		2 "|notenblaetter:notenblaetter" "translate" " -type \"double3\" 3.06465468252253892 -30.25532847819206239 38.37627745917455968"
		
		2 "|notenblaetter:notenblaetter" "scale" " -type \"double3\" 0.21171961432526012 0.21171961432526012 0.21171961432526012"
		
		2 "|notenblaetter:notenblaetter|notenblaetter:blatt_01" "translate" " -type \"double3\" 83.38285105844300915 0 -26.00794210644758309"
		
		2 "|notenblaetter:notenblaetter|notenblaetter:blatt_01" "rotate" " -type \"double3\" 0 -54.18817930984279485 0"
		
		2 "|notenblaetter:notenblaetter|notenblaetter:blatt_02" "translate" " -type \"double3\" 127.98257652336903334 0 -32.06634832915847966"
		
		2 "|notenblaetter:notenblaetter|notenblaetter:blatt_02" "rotate" " -type \"double3\" 0 -21.47538912311561887 0"
		
		2 "|notenblaetter:notenblaetter|notenblaetter:blatt_03" "translate" " -type \"double3\" 114.6566977843474433 0 -29.71688604063096051"
		
		2 "|notenblaetter:notenblaetter|notenblaetter:blatt_03" "rotate" " -type \"double3\" 0 -43.13508128595345426 0"
		
		2 "notenblaetter:aiStandardSurface1SG" "aiCustomAOVs" " -s 11"
		2 "notenblaetter:aiStandardSurface1SG" "aiCustomAOVs[0].aovName" " -type \"string\" \"RGBA\""
		
		2 "notenblaetter:aiStandardSurface1SG" "aiCustomAOVs[1].aovName" " -type \"string\" \"Z\""
		
		2 "notenblaetter:aiStandardSurface1SG" "aiCustomAOVs[2].aovName" " -type \"string\" \"albedo\""
		
		2 "notenblaetter:aiStandardSurface1SG" "aiCustomAOVs[3].aovName" " -type \"string\" \"diffuse\""
		
		2 "notenblaetter:aiStandardSurface1SG" "aiCustomAOVs[4].aovName" " -type \"string\" \"direct\""
		
		2 "notenblaetter:aiStandardSurface1SG" "aiCustomAOVs[5].aovName" " -type \"string\" \"indirect\""
		
		2 "notenblaetter:aiStandardSurface1SG" "aiCustomAOVs[6].aovName" " -type \"string\" \"opacity\""
		
		2 "notenblaetter:aiStandardSurface1SG" "aiCustomAOVs[7].aovName" " -type \"string\" \"specular\""
		
		2 "notenblaetter:aiStandardSurface1SG" "aiCustomAOVs[8].aovName" " -type \"string\" \"crypto_asset\""
		
		2 "notenblaetter:aiStandardSurface1SG" "aiCustomAOVs[9].aovName" " -type \"string\" \"AO\""
		
		2 "notenblaetter:aiStandardSurface1SG" "aiCustomAOVs[10].aovName" " -type \"string\" \"N\"";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode aiAOV -n "aiAOV_RGBA";
	rename -uid "FE20F12F-4FE6-853D-E011-B8B27E58BD87";
	setAttr ".aovn" -type "string" "RGBA";
	setAttr ".lg" yes;
createNode aiAOV -n "aiAOV_Z";
	rename -uid "5A4C4E80-4E55-F4C2-B61F-20A1CFF83B8C";
	setAttr ".aovn" -type "string" "Z";
	setAttr ".aovt" 4;
createNode aiAOVFilter -n "aiAOVFilter1";
	rename -uid "8D7DC94A-4238-46AC-8FB7-53915645B917";
	setAttr ".ai_translator" -type "string" "closest";
createNode aiAOV -n "aiAOV_albedo";
	rename -uid "1740C295-423E-D79A-2B0E-DC949BD1EC97";
	setAttr ".aovn" -type "string" "albedo";
	setAttr ".aovt" 5;
createNode aiAOV -n "aiAOV_diffuse";
	rename -uid "6984BC69-43A7-9DCF-B43F-9FA2D3F164DE";
	setAttr ".aovn" -type "string" "diffuse";
	setAttr ".aovt" 5;
createNode aiAOV -n "aiAOV_direct";
	rename -uid "2FB49447-4A1B-1F39-49C8-1DB905B0B170";
	setAttr ".aovn" -type "string" "direct";
	setAttr ".aovt" 5;
createNode aiAOV -n "aiAOV_indirect";
	rename -uid "12E6FB21-4197-7451-9E4D-AD9074D922B2";
	setAttr ".aovn" -type "string" "indirect";
	setAttr ".aovt" 5;
createNode aiAOV -n "aiAOV_opacity";
	rename -uid "D75B8BFA-4C57-0F58-90F1-89B02777E368";
	setAttr ".aovn" -type "string" "opacity";
	setAttr ".aovt" 5;
createNode aiAOV -n "aiAOV_specular";
	rename -uid "04D2E801-4F44-9930-3121-EC97011B9EA1";
	setAttr ".aovn" -type "string" "specular";
	setAttr ".aovt" 5;
createNode aiAOV -n "aiAOV_crypto_asset";
	rename -uid "061C5056-4934-51AB-EEF6-D7AEFA901186";
	setAttr ".aovn" -type "string" "crypto_asset";
	setAttr ".aovt" 5;
createNode cryptomatte -n "_aov_cryptomatte";
	rename -uid "AB0DADBB-4AAF-AC20-5B16-359FB1C2A3E0";
createNode aiAOV -n "aiAOV_AO";
	rename -uid "3D6B0DF9-4AD1-3D5B-9093-6E91A38DCDB1";
	setAttr ".aovn" -type "string" "AO";
createNode aiAmbientOcclusion -n "aiAmbientOcclusion1";
	rename -uid "18072936-4B4E-084F-815C-99849F45A84B";
createNode shadingEngine -n "aiAmbientOcclusion1SG";
	rename -uid "DFA767A0-4D0A-DC75-4480-79A7CE6B0D49";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
	setAttr -s 11 ".aovs";
	setAttr ".aovs[0].aov_name" -type "string" "AO";
	setAttr ".aovs[1].aov_name" -type "string" "RGBA";
	setAttr ".aovs[2].aov_name" -type "string" "Z";
	setAttr ".aovs[3].aov_name" -type "string" "albedo";
	setAttr ".aovs[4].aov_name" -type "string" "crypto_asset";
	setAttr ".aovs[5].aov_name" -type "string" "diffuse";
	setAttr ".aovs[6].aov_name" -type "string" "direct";
	setAttr ".aovs[7].aov_name" -type "string" "indirect";
	setAttr ".aovs[8].aov_name" -type "string" "opacity";
	setAttr ".aovs[9].aov_name" -type "string" "specular";
	setAttr ".aovs[10].aov_name" -type "string" "N";
	setAttr ".aal" -type "attributeAlias" {"ai_aov_AO","aiCustomAOVs[0]","ai_aov_N","aiCustomAOVs[10]"
		,"ai_aov_RGBA","aiCustomAOVs[1]","ai_aov_Z","aiCustomAOVs[2]","ai_aov_albedo","aiCustomAOVs[3]"
		,"ai_aov_crypto_asset","aiCustomAOVs[4]","ai_aov_diffuse","aiCustomAOVs[5]","ai_aov_direct"
		,"aiCustomAOVs[6]","ai_aov_indirect","aiCustomAOVs[7]","ai_aov_opacity","aiCustomAOVs[8]"
		,"ai_aov_specular","aiCustomAOVs[9]"} ;
createNode materialInfo -n "materialInfo5";
	rename -uid "278B5534-47D0-D783-0C3B-B4A46EEFF0E7";
createNode aiAOV -n "aiAOV_N";
	rename -uid "325042DC-4658-870A-672F-2AB5DFE3175F";
	setAttr ".aovn" -type "string" "N";
	setAttr ".aovt" 7;
createNode aiAOVFilter -n "aiAOVFilter2";
	rename -uid "B4C47622-4AF1-1ADA-CA44-38AA819968DD";
	setAttr ".ai_translator" -type "string" "closest";
select -ne :time1;
	setAttr -av -k on ".cch";
	setAttr -k on ".fzn";
	setAttr -av -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr ".o" 336;
	setAttr -av -k on ".unw" 336;
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
	setAttr -s 18 ".st";
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
	setAttr -s 28 ".s";
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
	setAttr -s 9 ".l";
select -ne :defaultTextureList1;
	setAttr -s 44 ".tx";
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
	setAttr -k on ".mwc";
	setAttr -cb on ".an";
	setAttr -cb on ".il";
	setAttr -cb on ".vo";
	setAttr -cb on ".eo";
	setAttr -cb on ".fo";
	setAttr -cb on ".epo";
	setAttr ".ro" yes;
	setAttr -s 11 ".aovs";
	setAttr ".aovs[0].aov_name" -type "string" "RGBA";
	setAttr ".aovs[1].aov_name" -type "string" "Z";
	setAttr ".aovs[2].aov_name" -type "string" "albedo";
	setAttr ".aovs[3].aov_name" -type "string" "diffuse";
	setAttr ".aovs[4].aov_name" -type "string" "direct";
	setAttr ".aovs[5].aov_name" -type "string" "indirect";
	setAttr ".aovs[6].aov_name" -type "string" "opacity";
	setAttr ".aovs[7].aov_name" -type "string" "specular";
	setAttr ".aovs[8].aov_name" -type "string" "crypto_asset";
	setAttr ".aovs[9].aov_name" -type "string" "AO";
	setAttr ".aovs[10].aov_name" -type "string" "N";
	setAttr -k on ".ai_surface_shader";
	setAttr -k on ".ai_volume_shader";
	setAttr ".aal" -type "attributeAlias" {"ai_aov_RGBA","aiCustomAOVs[0].aovName","ai_aov_N"
		,"aiCustomAOVs[10].aovName","ai_aov_Z","aiCustomAOVs[1].aovName","ai_aov_albedo","aiCustomAOVs[2].aovName"
		,"ai_aov_diffuse","aiCustomAOVs[3].aovName","ai_aov_direct","aiCustomAOVs[4].aovName"
		,"ai_aov_indirect","aiCustomAOVs[5].aovName","ai_aov_opacity","aiCustomAOVs[6].aovName"
		,"ai_aov_specular","aiCustomAOVs[7].aovName","ai_aov_crypto_asset","aiCustomAOVs[8].aovName"
		,"ai_aov_AO","aiCustomAOVs[9].aovName"} ;
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
	setAttr -s 11 ".aovs";
	setAttr ".aovs[0].aov_name" -type "string" "RGBA";
	setAttr ".aovs[1].aov_name" -type "string" "Z";
	setAttr ".aovs[2].aov_name" -type "string" "albedo";
	setAttr ".aovs[3].aov_name" -type "string" "diffuse";
	setAttr ".aovs[4].aov_name" -type "string" "direct";
	setAttr ".aovs[5].aov_name" -type "string" "indirect";
	setAttr ".aovs[6].aov_name" -type "string" "opacity";
	setAttr ".aovs[7].aov_name" -type "string" "specular";
	setAttr ".aovs[8].aov_name" -type "string" "crypto_asset";
	setAttr ".aovs[9].aov_name" -type "string" "AO";
	setAttr ".aovs[10].aov_name" -type "string" "N";
	setAttr -k on ".ai_surface_shader";
	setAttr -k on ".ai_volume_shader";
	setAttr ".aal" -type "attributeAlias" {"ai_aov_RGBA","aiCustomAOVs[0].aovName","ai_aov_N"
		,"aiCustomAOVs[10].aovName","ai_aov_Z","aiCustomAOVs[1].aovName","ai_aov_albedo","aiCustomAOVs[2].aovName"
		,"ai_aov_diffuse","aiCustomAOVs[3].aovName","ai_aov_direct","aiCustomAOVs[4].aovName"
		,"ai_aov_indirect","aiCustomAOVs[5].aovName","ai_aov_opacity","aiCustomAOVs[6].aovName"
		,"ai_aov_specular","aiCustomAOVs[7].aovName","ai_aov_crypto_asset","aiCustomAOVs[8].aovName"
		,"ai_aov_AO","aiCustomAOVs[9].aovName"} ;
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
	setAttr -s 9 ".dsm";
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
connectAttr "plane_canvasSize2_translateX.o" "stage_fertigRN.phl[1]";
connectAttr "plane_canvasSize2_translateY.o" "stage_fertigRN.phl[2]";
connectAttr "plane_canvasSize2_translateZ.o" "stage_fertigRN.phl[3]";
connectAttr "plane_canvasSize2_visibility.o" "stage_fertigRN.phl[4]";
connectAttr "plane_canvasSize2_rotateX.o" "stage_fertigRN.phl[5]";
connectAttr "plane_canvasSize2_rotateY.o" "stage_fertigRN.phl[6]";
connectAttr "plane_canvasSize2_rotateZ.o" "stage_fertigRN.phl[7]";
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
connectAttr "Shot7_translateX.o" "Shot7.tx" -l on;
connectAttr "Shot7_translateY.o" "Shot7.ty" -l on;
connectAttr "Shot7_translateZ.o" "Shot7.tz" -l on;
connectAttr "Shot7_rotateX.o" "Shot7.rx" -l on;
connectAttr "Shot7_rotateY.o" "Shot7.ry" -l on;
connectAttr "Shot7_rotateZ.o" "Shot7.rz" -l on;
connectAttr "Shot7_visibility.o" "Shot7.v";
connectAttr "Shot7_scaleX.o" "Shot7.sx";
connectAttr "Shot7_scaleY.o" "Shot7.sy";
connectAttr "Shot7_scaleZ.o" "Shot7.sz";
connectAttr "aiAreaLight4_translateX.o" "violin_light.tx";
connectAttr "aiAreaLight4_translateY.o" "violin_light.ty";
connectAttr "aiAreaLight4_translateZ.o" "violin_light.tz";
connectAttr "aiAreaLight4_rotateX.o" "violin_light.rx";
connectAttr "aiAreaLight4_rotateY.o" "violin_light.ry";
connectAttr "aiAreaLight4_rotateZ.o" "violin_light.rz";
connectAttr "aiAreaLight4_scaleX.o" "violin_light.sx";
connectAttr "aiAreaLight4_scaleY.o" "violin_light.sy";
connectAttr "aiAreaLight4_scaleZ.o" "violin_light.sz";
connectAttr "aiAreaLight4_visibility.o" "violin_light.v";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "aiStandardSurface1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "aiStandardSurface2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "aiStandardSurface3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "aiStandardSurface4SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "aiAmbientOcclusion1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "aiStandardSurface1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "aiStandardSurface2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "aiStandardSurface3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "aiStandardSurface4SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "aiAmbientOcclusion1SG.message" ":defaultLightSet.message";
relationship "ignore" ":lightLinker1" "notenstandShape.message" "violin_lightShape.message";
relationship "ignore" ":lightLinker1" "sofaShape.message" "violin_lightShape.message";
relationship "ignore" ":lightLinker1" "BGShape.message" "violin_lightShape.message";
relationship "ignore" ":lightLinker1" "notenstandShape.message" "spotLightShape1.message";
relationship "ignore" ":lightLinker1" "sofaShape.message" "spotLightShape1.message";
relationship "ignore" ":lightLinker1" "BGShape.message" "spotLightShape1.message";
relationship "ignore" ":lightLinker1" "archShape.message" "spotLightShape1.message";
relationship "ignore" ":lightLinker1" "archShape.message" "violin_lightShape.message";
relationship "ignore" ":lightLinker1" "archShape.message" "notenständer_lightShape.message";
relationship "ignore" ":lightLinker1" "sofaShape.message" "notenständer_lightShape.message";
relationship "ignore" ":lightLinker1" "archShape.message" "notenständer_light1Shape.message";
relationship "ignore" ":lightLinker1" "sofaShape.message" "notenständer_light1Shape.message";
relationship "ignore" ":lightLinker1" "BGShape.message" "notenständer_light1Shape.message";
relationship "ignore" ":lightLinker1" "BGShape.message" "notenständer_lightShape.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "aiAtmosphereVolume.msg" ":defaultArnoldRenderOptions.atm";
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
connectAttr "aiAOV_N.msg" ":defaultArnoldRenderOptions.aovs" -na;
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
connectAttr ":defaultArnoldDriver.msg" "aiAOV_RGBA.out[0].drvr";
connectAttr ":defaultArnoldFilter.msg" "aiAOV_RGBA.out[0].ftr";
connectAttr ":defaultArnoldDriver.msg" "aiAOV_Z.out[0].drvr";
connectAttr "aiAOVFilter1.msg" "aiAOV_Z.out[0].ftr";
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
connectAttr "aiAmbientOcclusion1SG.msg" "materialInfo5.sg";
connectAttr "aiAmbientOcclusion1.msg" "materialInfo5.m";
connectAttr "aiAmbientOcclusion1.msg" "materialInfo5.t" -na;
connectAttr ":defaultArnoldDriver.msg" "aiAOV_N.out[0].drvr";
connectAttr "aiAOVFilter2.msg" "aiAOV_N.out[0].ftr";
connectAttr "aiStandardSurface1SG.pa" ":renderPartition.st" -na;
connectAttr "aiStandardSurface2SG.pa" ":renderPartition.st" -na;
connectAttr "aiStandardSurface3SG.pa" ":renderPartition.st" -na;
connectAttr "aiStandardSurface4SG.pa" ":renderPartition.st" -na;
connectAttr "aiAmbientOcclusion1SG.pa" ":renderPartition.st" -na;
connectAttr "aiStandardSurface1.msg" ":defaultShaderList1.s" -na;
connectAttr "aiStandardSurface2.msg" ":defaultShaderList1.s" -na;
connectAttr "aiStandardSurface3.msg" ":defaultShaderList1.s" -na;
connectAttr "aiStandardSurface4.msg" ":defaultShaderList1.s" -na;
connectAttr "aiAtmosphereVolume.msg" ":defaultShaderList1.s" -na;
connectAttr "_aov_cryptomatte.msg" ":defaultShaderList1.s" -na;
connectAttr "aiAmbientOcclusion1.msg" ":defaultShaderList1.s" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture4.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture5.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture6.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture7.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "pasted__aiSkyDomeLightShape1.ltd" ":lightList1.l" -na;
connectAttr "pasted__BG_LightShape.ltd" ":lightList1.l" -na;
connectAttr "spotLightShape1.ltd" ":lightList1.l" -na;
connectAttr "aiAreaLightShape1.ltd" ":lightList1.l" -na;
connectAttr "aiAreaLightShape2.ltd" ":lightList1.l" -na;
connectAttr "aiAreaLightShape3.ltd" ":lightList1.l" -na;
connectAttr "violin_lightShape.ltd" ":lightList1.l" -na;
connectAttr "notenständer_lightShape.ltd" ":lightList1.l" -na;
connectAttr "notenständer_light1Shape.ltd" ":lightList1.l" -na;
connectAttr "file1.msg" ":defaultTextureList1.tx" -na;
connectAttr "file2.msg" ":defaultTextureList1.tx" -na;
connectAttr "file3.msg" ":defaultTextureList1.tx" -na;
connectAttr "file4.msg" ":defaultTextureList1.tx" -na;
connectAttr "file5.msg" ":defaultTextureList1.tx" -na;
connectAttr "file6.msg" ":defaultTextureList1.tx" -na;
connectAttr "file7.msg" ":defaultTextureList1.tx" -na;
connectAttr "pasted__aiSkyDomeLight1.iog" ":defaultLightSet.dsm" -na;
connectAttr "pasted__BG_Light.iog" ":defaultLightSet.dsm" -na;
connectAttr "spotLight1.iog" ":defaultLightSet.dsm" -na;
connectAttr "aiAreaLight1.iog" ":defaultLightSet.dsm" -na;
connectAttr "aiAreaLight2.iog" ":defaultLightSet.dsm" -na;
connectAttr "aiAreaLight3.iog" ":defaultLightSet.dsm" -na;
connectAttr "violin_light.iog" ":defaultLightSet.dsm" -na;
connectAttr "notenständer_light.iog" ":defaultLightSet.dsm" -na;
connectAttr "notenständer_light1.iog" ":defaultLightSet.dsm" -na;
// End of Scene02_Practice01.ma
