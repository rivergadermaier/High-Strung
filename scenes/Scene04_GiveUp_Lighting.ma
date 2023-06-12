//Maya ASCII 2023 scene
//Name: Scene04_GiveUp_Lighting.ma
//Last modified: Mon, Jun 12, 2023 03:19:35 PM
//Codeset: 1252
file -rdi 1 -ns "Geige_Rig" -rfn "Geige_RigRN" -op "v=0;" -typ "mayaAscii" "E:/High-Strung//scenes/Geige_Rig.ma";
file -rdi 1 -ns "stage_fertig" -rfn "stage_fertigRN" -op "v=0;" -typ "mayaAscii"
		 "C:/Users/simon/Desktop/Digital Arts Hagenberg/4. Semester/2. SemProj HIGH STRUNG/High-Strung//scenes/stage_fertig.ma";
file -r -ns "Geige_Rig" -dr 1 -rfn "Geige_RigRN" -op "v=0;" -typ "mayaAscii" "E:/High-Strung//scenes/Geige_Rig.ma";
file -r -ns "stage_fertig" -dr 1 -rfn "stage_fertigRN" -op "v=0;" -typ "mayaAscii"
		 "C:/Users/simon/Desktop/Digital Arts Hagenberg/4. Semester/2. SemProj HIGH STRUNG/High-Strung//scenes/stage_fertig.ma";
requires maya "2023";
requires -nodeType "timeSliderBookmark" "timeSliderBookmark" "Version 1.0, unsupported - cut 202205052305";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" -nodeType "aiAreaLight"
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
fileInfo "UUID" "F2CB9A40-4B13-F947-D027-309A769F71E7";
createNode transform -s -n "persp";
	rename -uid "EC91D28C-47A7-6F78-97BD-25A7F411BD77";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -28.217582160299713 -14.854672175577972 80.840948746212618 ;
	setAttr ".r" -type "double3" -10.800000000009144 -25.599999999999824 0 ;
	setAttr ".rpt" -type "double3" 1.3457439164234464e-16 -1.8588340710222325e-16 -3.2080555489202877e-17 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "89E2E638-4D92-C963-A363-9594341AE8A5";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999979;
	setAttr ".coi" 55.590243922571261;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -8.5075042748338419e-14 -5.4721656006353138e-18 76.318209549283779 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "7B404C7C-42DB-7CB9-5D8F-C4816B02E8EA";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "6A2E3E18-4770-DB74-1770-21923D07A804";
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
	rename -uid "6560EB14-461F-9AB3-0638-C0AA16DF828C";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "B68244F8-4CCA-B593-ACA6-1186C86EF68A";
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
	rename -uid "2AE7874A-47B7-9FAA-2145-EC9807436870";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "521B627B-42E1-B5EC-525F-95AC91955E3E";
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
createNode transform -n "ubercam";
	rename -uid "E5F19B08-4B7B-BE61-81C9-CFBCB00CB9A4";
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
	setAttr ".r" -type "double3" -60.33835273023935 671.40000000005034 4.8094625973537513e-15 ;
	setAttr -l on ".rz";
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
	rename -uid "8F6C1EFA-4D31-834F-8420-839C1C94181E";
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
	setAttr ".coi" 30.903593874436293;
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
createNode transform -n "establishing";
	rename -uid "F4E728E2-4128-0F43-11B5-E4A1881D470D";
	setAttr ".t" -type "double3" -16.925852148422425 -4.1962525189260305 41.956106592437536 ;
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr ".r" -type "double3" -60.33835273023935 671.40000000005034 4.8094625973537513e-15 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
createNode camera -n "establishingShape" -p "establishing";
	rename -uid "B4463795-4755-30E0-B9B5-3899E758E967";
	setAttr -k off ".v";
	setAttr ".fl" 34.999999999999993;
	setAttr -l on ".coi" 30.903593874436293;
	setAttr -l on ".ow";
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -n "cameraPan";
	rename -uid "0A88A61E-47A5-1DBC-6D66-BCADB7C4DFEB";
createNode camera -n "cameraPanShape" -p "cameraPan";
	rename -uid "C0BB0878-4053-BF80-BC68-AC8500C8F53B";
	setAttr -k off ".v";
	setAttr ".fl" 34.999999999999993;
	setAttr -l on ".coi" 9.9999997473787499e-06;
	setAttr -l on ".ow";
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -n "zoomOut";
	rename -uid "764C3427-4BC2-38FF-4131-B2976195EE69";
createNode camera -n "zoomOutShape" -p "zoomOut";
	rename -uid "15D83F54-4FB7-DB53-177A-9A964235B62C";
	setAttr -k off ".v";
	setAttr ".fl" 34.999999999999993;
	setAttr -l on ".coi" 91.631602089526396;
	setAttr -l on ".ow";
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -n "lighting_1";
	rename -uid "9DB31412-4AEF-D8D6-A426-5F81D70C670F";
createNode transform -n "aiAreaLight1" -p "lighting_1";
	rename -uid "CD57090E-4DD3-967D-2D03-84806638A1CC";
	setAttr ".t" -type "double3" 0 0 76.318209549283793 ;
	setAttr ".s" -type "double3" 71.735462137470847 71.735462137470847 71.735462137470847 ;
createNode aiAreaLight -n "aiAreaLightShape1" -p "|lighting_1|aiAreaLight1";
	rename -uid "B8B70278-4BEF-E282-30D6-998D89385317";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr -k off ".v";
	setAttr ".csh" no;
	setAttr ".rcsh" no;
	setAttr ".sc" -type "float3" 1 0.83350003 0.667 ;
	setAttr ".ai_exposure" 14.5;
	setAttr ".ai_samples" 3;
	setAttr ".ai_translator" -type "string" "quad";
	setAttr ".aal" -type "attributeAlias" {"exposure","aiExposure","normalize","aiNormalize"
		} ;
createNode transform -n "spotLight1" -p "lighting_1";
	rename -uid "D3048915-4B68-5477-D286-45ADC7A1FB86";
	setAttr ".t" -type "double3" -5.2718757485632475 0 30.944481717311682 ;
	setAttr ".r" -type "double3" -90 0 0 ;
	setAttr ".s" -type "double3" 21.682476587130349 21.682476587130349 21.682476587130349 ;
createNode spotLight -n "spotLightShape1" -p "|lighting_1|spotLight1";
	rename -uid "E2CAACBC-4137-BD36-31A2-7289952F6DFF";
	setAttr -k off ".v";
	setAttr ".cl" -type "float3" 0.35299999 0.42765301 1 ;
	setAttr ".sc" -type "float3" 0.27200001 0.073168002 0.1453274 ;
	setAttr ".ca" 43.849092074064529;
	setAttr ".pa" -7.0512820539088583;
	setAttr ".ai_exposure" 12;
	setAttr ".ai_samples" 3;
createNode transform -n "aiAreaLight2" -p "lighting_1";
	rename -uid "D4F38963-43EB-A2EF-D8B1-AD85654AB7A2";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1.5367292564430781 -26.651700954016647 31.183732133693564 ;
	setAttr ".r" -type "double3" -4.1999999999996369 93.999999999998948 0 ;
	setAttr ".s" -type "double3" 8.5349639712683381 1.7792610399763866 1 ;
createNode aiAreaLight -n "aiAreaLightShape2" -p "|lighting_1|aiAreaLight2";
	rename -uid "0D2540C3-49DD-1A15-61D9-50BC04E78595";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr -k off ".v";
	setAttr ".csh" no;
	setAttr ".rcsh" no;
	setAttr ".sc" -type "float3" 0.3861559 0.16000003 1 ;
	setAttr ".ai_translator" -type "string" "quad";
	setAttr ".aal" -type "attributeAlias" {"exposure","aiExposure","normalize","aiNormalize"
		} ;
createNode transform -n "aiAreaLight3" -p "lighting_1";
	rename -uid "740A5742-4D48-FF92-B998-648CE120509D";
	setAttr ".t" -type "double3" 0.80229990264735407 -28.421108585374053 29.961035001873906 ;
	setAttr ".r" -type "double3" -0.57734180114733302 93.999999999998934 0 ;
	setAttr ".s" -type "double3" 8.5349639712683381 1.3947929554111693 1 ;
createNode aiAreaLight -n "aiAreaLightShape3" -p "|lighting_1|aiAreaLight3";
	rename -uid "A5326341-46EE-5E8E-2B11-E8A4DC78BAC4";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr -k off ".v";
	setAttr ".csh" no;
	setAttr ".rcsh" no;
	setAttr ".sc" -type "float3" 0.70500004 0.41000003 1 ;
	setAttr ".ai_samples" 3;
	setAttr ".ai_translator" -type "string" "quad";
	setAttr ".aal" -type "attributeAlias" {"exposure","aiExposure","normalize","aiNormalize"
		} ;
createNode transform -n "lighting_2";
	rename -uid "5CF74567-4F4F-3449-D8B2-9DB531C2B608";
	setAttr ".v" no;
createNode transform -n "aiAreaLight1" -p "lighting_2";
	rename -uid "7194DA2A-4C04-5F41-BB8B-1DA5FEE7462C";
	setAttr ".t" -type "double3" 0 0 76.318209549283793 ;
	setAttr ".s" -type "double3" 71.735462137470847 71.735462137470847 71.735462137470847 ;
createNode aiAreaLight -n "aiAreaLightShape1" -p "|lighting_2|aiAreaLight1";
	rename -uid "7F243712-44A1-B722-38A5-A3BE0632F12E";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr -k off ".v";
	setAttr ".csh" no;
	setAttr ".rcsh" no;
	setAttr ".sc" -type "float3" 1 0.83350003 0.667 ;
	setAttr ".ai_exposure" 14.5;
	setAttr ".ai_translator" -type "string" "quad";
	setAttr ".aal" -type "attributeAlias" {"exposure","aiExposure","normalize","aiNormalize"
		} ;
createNode transform -n "spotLight1" -p "lighting_2";
	rename -uid "D96E91C2-4F89-A56B-843F-A2AA2252E981";
	setAttr ".t" -type "double3" -5.2718757485632475 0 30.944481717311682 ;
	setAttr ".r" -type "double3" -90 0 0 ;
	setAttr ".s" -type "double3" 21.682476587130349 21.682476587130349 21.682476587130349 ;
createNode spotLight -n "spotLightShape1" -p "|lighting_2|spotLight1";
	rename -uid "8197A9CE-4B4F-178C-0444-84881D29CA55";
	setAttr -k off ".v";
	setAttr ".cl" -type "float3" 0.48699999 0.54619169 1 ;
	setAttr ".sc" -type "float3" 0.27200001 0.073168002 0.1453274 ;
	setAttr ".ca" 43.849092074064529;
	setAttr ".pa" -7.0512820539088583;
	setAttr ".ai_exposure" 12;
createNode transform -n "aiAreaLight2" -p "lighting_2";
	rename -uid "D43CF262-43E4-F9C7-EA13-F58F2C3ACE78";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1.5367292564430781 -26.651700954016647 31.183732133693564 ;
	setAttr ".r" -type "double3" -4.1999999999996369 93.999999999998948 0 ;
	setAttr ".s" -type "double3" 8.5349639712683381 1.7792610399763866 1 ;
createNode aiAreaLight -n "aiAreaLightShape2" -p "|lighting_2|aiAreaLight2";
	rename -uid "7A9944DE-4D1C-D296-FB9C-159D19E3860D";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr -k off ".v";
	setAttr ".csh" no;
	setAttr ".rcsh" no;
	setAttr ".sc" -type "float3" 0.3861559 0.16000003 1 ;
	setAttr ".ai_translator" -type "string" "quad";
	setAttr ".aal" -type "attributeAlias" {"exposure","aiExposure","normalize","aiNormalize"
		} ;
createNode transform -n "aiAreaLight3" -p "lighting_2";
	rename -uid "34D5816A-4333-243C-0D58-AB8D028DFB17";
	setAttr ".t" -type "double3" 1.2035852537558123 -27.149296444985268 29.961035001873906 ;
	setAttr ".r" -type "double3" -4.9881098863843301 93.999999999998963 0 ;
	setAttr ".s" -type "double3" 12.552119665500737 0.44580931251822592 1 ;
createNode aiAreaLight -n "aiAreaLightShape3" -p "|lighting_2|aiAreaLight3";
	rename -uid "51ED79B3-4A1E-4444-362D-22AFD9906CD7";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr -k off ".v";
	setAttr ".csh" no;
	setAttr ".rcsh" no;
	setAttr ".sc" -type "float3" 0.14369136 0.032000005 1 ;
	setAttr ".ai_translator" -type "string" "quad";
	setAttr ".aal" -type "attributeAlias" {"exposure","aiExposure","normalize","aiNormalize"
		} ;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "396919F7-424F-E048-5DDF-73B3778B6057";
	setAttr -s 12 ".lnk";
	setAttr -s 18 ".ign";
	setAttr -s 12 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "6FBB34CB-41D1-848A-148F-4EB619AB7A2A";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "AAC872CC-4020-57E5-84DE-66B5579ABEA7";
createNode displayLayerManager -n "layerManager";
	rename -uid "6BABB7AC-472D-788C-4C81-1E998B362E46";
createNode displayLayer -n "defaultLayer";
	rename -uid "D803BBA0-4099-5E6E-3880-D899922D204C";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "76F7D496-4078-4C29-158F-739035D90B15";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "D1867673-4751-8632-E4D6-62A32F008AB8";
	setAttr ".g" yes;
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "895D829F-49BA-1B03-49C7-9897964CB793";
	addAttr -ci true -sn "ARV_options" -ln "ARV_options" -dt "string";
	setAttr ".AA_samples" 5;
	setAttr ".GI_specular_samples" 3;
	setAttr ".version" -type "string" "4.2.4";
	setAttr ".ARV_options" -type "string" "Test Resolution=100%;Camera=ubercamShape;Color Management.Gamma=1;Color Management.Exposure=0;Background.BG=BG Color;Background.Color=0 0 0;Background.Image=;Background.Scale=1 1;Background.Offset=0 0;Background.Apply Color Management=1;Foreground.Enable FG=0;Foreground.Image=;Foreground.Scale=1 1;Foreground.Offset=0 0;Foreground.Apply Color Management=1;";
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
createNode script -n "uiConfigurationScriptNode";
	rename -uid "A7BEC6DB-401D-F3E5-CDE7-FAAA3C8B796E";
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
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 0\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 0\n            -controlVertices 1\n            -hulls 1\n            -grid 0\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n"
		+ "            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1119\n            -height 701\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n"
		+ "            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -selectCommand \"print 999\" \n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n"
		+ "            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n"
		+ "            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n"
		+ "            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n"
		+ "                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n"
		+ "                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n"
		+ "                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -keyMinScale 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -valueLinesToggle 0\n                -outliner \"graphEditor1OutlineEd\" \n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n"
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
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 0\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 0\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1119\\n    -height 701\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 0\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 0\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1119\\n    -height 701\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "02AEFDEC-4502-2047-FC9E-F5A4CD8D178D";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 380 -ast 0 -aet 380 ";
	setAttr ".st" 6;
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "8A301C57-4586-FBB7-D2E5-8A8274C6BDA1";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -1050.8232228732713 -224.99999105930354 ;
	setAttr ".tgi[0].vh" -type "double2" 1029.3946522961949 594.04759544228841 ;
createNode reference -n "Geige_RigRN";
	rename -uid "6A1641F9-4ECB-2916-9D1E-3C8336ECEF5A";
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
		"Geige_RigRN" 48
		2 "|Geige_Rig:Geige" "translate" " -type \"double3\" 0 -28.7506123727277263 29.99995664415824592"
		
		2 "|Geige_Rig:Geige" "rotate" " -type \"double3\" 0 0 0"
		2 "|Geige_Rig:Geige|Geige_Rig:bogen_ctrlMiddle" "translate" " -type \"double3\" 0 0 0"
		
		2 "|Geige_Rig:Geige|Geige_Rig:bogen_ctrlMiddle" "rotate" " -type \"double3\" 0 0 0"
		
		2 "|Geige_Rig:Geige|Geige_Rig:bogen_ctrlMiddle|Geige_Rig:bogen_LP_pivotMiddle" 
		"translate" " -type \"double3\" -8.99711274344115708 -1.13591664920489777 0.76417782741349405"
		
		2 "|Geige_Rig:Geige|Geige_Rig:bogen_ctrlMiddle|Geige_Rig:bogen_LP_pivotMiddle" 
		"translateX" " -av"
		2 "|Geige_Rig:Geige|Geige_Rig:bogen_ctrlMiddle|Geige_Rig:bogen_LP_pivotMiddle" 
		"translateY" " -av"
		2 "|Geige_Rig:Geige|Geige_Rig:bogen_ctrlMiddle|Geige_Rig:bogen_LP_pivotMiddle" 
		"translateZ" " -av"
		2 "|Geige_Rig:Geige|Geige_Rig:bogen_ctrlMiddle|Geige_Rig:bogen_LP_pivotMiddle" 
		"rotate" " -type \"double3\" -27.76001819953719618 0.31877420569126469 89.19124473748685489"
		
		2 "|Geige_Rig:Geige|Geige_Rig:bogen_ctrlMiddle|Geige_Rig:bogen_LP_pivotMiddle" 
		"rotateX" " -av"
		2 "|Geige_Rig:Geige|Geige_Rig:bogen_ctrlMiddle|Geige_Rig:bogen_LP_pivotMiddle" 
		"rotateY" " -av"
		2 "|Geige_Rig:Geige|Geige_Rig:bogen_ctrlMiddle|Geige_Rig:bogen_LP_pivotMiddle" 
		"rotateZ" " -av"
		2 "|Geige_Rig:Geige|Geige_Rig:bogen_ctrlMiddle|Geige_Rig:bogenCTRL_middle" 
		"translate" " -type \"double3\" 0.063473432169079497 1.39184132173497854 0.76433599476244418"
		
		2 "|Geige_Rig:Geige|Geige_Rig:bogen_ctrlMiddle|Geige_Rig:bogenCTRL_middle" 
		"rotate" " -type \"double3\" -37.5213261720370852 0 0"
		2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom" "translate" " -type \"double3\" 0 -0.36764142151845647 0"
		
		2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom" "rotate" " -type \"double3\" 3.22174726360398944 0 0"
		
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
		5 0 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:bogen_ctrlMiddle|Geige_Rig:bogen_LP_pivotMiddle|Geige_Rig:metall_low|Geige_Rig:metall_lowShape.instObjGroups" 
		"Geige_Rig:set2.dagSetMembers" "Geige_RigRN.placeHolderList[1]" "Geige_RigRN.placeHolderList[2]" 
		"Geige_Rig:set1.dsm"
		5 0 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:bogen_ctrlMiddle|Geige_Rig:bogen_LP_pivotMiddle|Geige_Rig:sehne_low|Geige_Rig:sehne_lowShape.instObjGroups" 
		"Geige_Rig:set2.dagSetMembers" "Geige_RigRN.placeHolderList[3]" "Geige_RigRN.placeHolderList[4]" 
		"Geige_Rig:set1.dsm"
		5 0 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:bogen_ctrlMiddle|Geige_Rig:bogen_LP_pivotMiddle|Geige_Rig:griff_low|Geige_Rig:griff_lowShape.instObjGroups" 
		"Geige_Rig:set2.dagSetMembers" "Geige_RigRN.placeHolderList[5]" "Geige_RigRN.placeHolderList[6]" 
		"Geige_Rig:set1.dsm"
		5 0 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:schraube_low|Geige_Rig:schraube_lowShape.instObjGroups" 
		"Geige_Rig:set6.dagSetMembers" "Geige_RigRN.placeHolderList[7]" "Geige_RigRN.placeHolderList[8]" 
		"Geige_Rig:set3.dsm"
		5 0 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:inside_low|Geige_Rig:inside_lowShape.instObjGroups" 
		"Geige_Rig:set6.dagSetMembers" "Geige_RigRN.placeHolderList[9]" "Geige_RigRN.placeHolderList[10]" 
		"Geige_Rig:set3.dsm"
		5 0 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:saitenhalter_low|Geige_Rig:saitenhalter_lowShape.instObjGroups" 
		"Geige_Rig:set6.dagSetMembers" "Geige_RigRN.placeHolderList[11]" "Geige_RigRN.placeHolderList[12]" 
		"Geige_Rig:set3.dsm"
		5 0 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:metallplatte_low|Geige_Rig:metallplatte_lowShape.instObjGroups" 
		"Geige_Rig:set6.dagSetMembers" "Geige_RigRN.placeHolderList[13]" "Geige_RigRN.placeHolderList[14]" 
		"Geige_Rig:set3.dsm"
		5 0 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:kinnstuetze_low|Geige_Rig:kinnstuetze_lowShape.instObjGroups" 
		"Geige_Rig:set6.dagSetMembers" "Geige_RigRN.placeHolderList[15]" "Geige_RigRN.placeHolderList[16]" 
		"Geige_Rig:set3.dsm"
		5 0 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:hals_low|Geige_Rig:hals_lowShape.instObjGroups" 
		"Geige_Rig:set6.dagSetMembers" "Geige_RigRN.placeHolderList[17]" "Geige_RigRN.placeHolderList[18]" 
		"Geige_Rig:set3.dsm"
		5 0 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:wirbel_low|Geige_Rig:wirbel_low_04|Geige_Rig:wirbel_low_04Shape.instObjGroups" 
		"Geige_Rig:set6.dagSetMembers" "Geige_RigRN.placeHolderList[19]" "Geige_RigRN.placeHolderList[20]" 
		"Geige_Rig:set3.dsm"
		5 0 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:wirbel_low|Geige_Rig:wirbel_low_03|Geige_Rig:wirbel_low_03Shape.instObjGroups" 
		"Geige_Rig:set6.dagSetMembers" "Geige_RigRN.placeHolderList[21]" "Geige_RigRN.placeHolderList[22]" 
		"Geige_Rig:set3.dsm"
		5 0 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:wirbel_low|Geige_Rig:wirbel_low_02|Geige_Rig:wirbel_low_02Shape.instObjGroups" 
		"Geige_Rig:set6.dagSetMembers" "Geige_RigRN.placeHolderList[23]" "Geige_RigRN.placeHolderList[24]" 
		"Geige_Rig:set3.dsm"
		5 0 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:wirbel_low|Geige_Rig:wirbel_low_01|Geige_Rig:wirbel_low_01Shape.instObjGroups" 
		"Geige_Rig:set6.dagSetMembers" "Geige_RigRN.placeHolderList[25]" "Geige_RigRN.placeHolderList[26]" 
		"Geige_Rig:set3.dsm"
		5 0 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:griffbrett_low|Geige_Rig:griffbrett_lowShape.instObjGroups" 
		"Geige_Rig:set6.dagSetMembers" "Geige_RigRN.placeHolderList[27]" "Geige_RigRN.placeHolderList[28]" 
		"Geige_Rig:set3.dsm"
		5 0 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:saiten_low|Geige_Rig:saiten_lowShape.instObjGroups" 
		"Geige_Rig:set6.dagSetMembers" "Geige_RigRN.placeHolderList[29]" "Geige_RigRN.placeHolderList[30]" 
		"Geige_Rig:set3.dsm"
		5 0 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:body_low|Geige_Rig:body_lowShape.instObjGroups" 
		"Geige_Rig:set6.dagSetMembers" "Geige_RigRN.placeHolderList[31]" "Geige_RigRN.placeHolderList[32]" 
		"Geige_Rig:set3.dsm";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode animCurveTL -n "zoomOut_translateX";
	rename -uid "38345893-4D15-4D53-A2B4-35BA7321D146";
	setAttr ".tan" 2;
	setAttr ".ktv[0]"  240 -5.9549038753039181;
createNode animCurveTL -n "zoomOut_translateY";
	rename -uid "D764C4CF-478A-AFAD-ECF6-2F995BF7DF4C";
	setAttr ".tan" 2;
	setAttr -s 2 ".ktv[0:1]"  240 7.1635841006265695 380 60.074608468177793;
createNode animCurveTL -n "zoomOut_translateZ";
	rename -uid "08B148A6-42F4-8367-92EA-FAB481DB74CA";
	setAttr ".tan" 2;
	setAttr ".ktv[0]"  240 31.440844624685354;
createNode animCurveTA -n "zoomOut_rotateX";
	rename -uid "B4E49CB0-497A-F43C-739B-0D955E12AFC3";
	setAttr ".tan" 2;
	setAttr ".ktv[0]"  240 -90.000000000001052;
createNode animCurveTA -n "zoomOut_rotateY";
	rename -uid "69DD1477-440D-3872-A248-2896B0C6854E";
	setAttr ".tan" 2;
	setAttr ".ktv[0]"  240 -44.800000000000139;
createNode animCurveTA -n "zoomOut_rotateZ";
	rename -uid "16BEEE1E-4947-4E7F-08C6-48BF5BAF6D54";
	setAttr ".tan" 2;
	setAttr ".ktv[0]"  240 0;
createNode timeSliderBookmark -n "timeSliderBookmark1";
	rename -uid "40422941-4D54-9184-2DBE-23B5AE1ADA83";
	setAttr ".nm" -type "string" "zoom out";
	setAttr ".c" -type "float3" 0.27843139 0.58431375 0.80000001 ;
	setAttr ".tst" 240;
	setAttr ".tsp" 408;
	setAttr ".prty" 1;
createNode timeSliderBookmark -n "timeSliderBookmark2";
	rename -uid "234762B9-4EC6-ACF9-62A3-D0A6960A9742";
	setAttr ".nm" -type "string" "establishing";
	setAttr ".c" -type "float3" 0.67058825 0.23529412 0.23529412 ;
	setAttr ".tsp" 96;
	setAttr ".prty" 2;
createNode timeSliderBookmark -n "timeSliderBookmark3";
	rename -uid "D11EF7B5-4666-79F1-EEAC-548D787BBA07";
	setAttr ".nm" -type "string" "camera pan";
	setAttr ".c" -type "float3" 0.27843139 0.7019608 0.41960785 ;
	setAttr ".tst" 96;
	setAttr ".tsp" 240;
	setAttr ".prty" 3;
createNode animCurveTL -n "cameraPan_translateX";
	rename -uid "ACACD99A-44EB-C0DD-A5EC-209E87B66865";
	setAttr ".tan" 2;
	setAttr -s 2 ".ktv[0:1]"  96 -11.67673433686115 240 -12.19475287137098;
createNode animCurveTL -n "cameraPan_translateY";
	rename -uid "5BAEAEAB-4C76-547E-7A96-0F88DC4981D0";
	setAttr ".tan" 2;
	setAttr -s 2 ".ktv[0:1]"  96 -24.142753799635468 240 -23.514981469140562;
createNode animCurveTL -n "cameraPan_translateZ";
	rename -uid "950ADA35-49A2-C54C-6E62-39A8ED09537A";
	setAttr ".tan" 2;
	setAttr -s 2 ".ktv[0:1]"  96 36.704118837538374 240 32.782674296963144;
createNode animCurveTA -n "cameraPan_rotateX";
	rename -uid "698F60FE-4052-6289-248A-4B96B0E8B16D";
	setAttr ".tan" 2;
	setAttr ".ktv[0]"  96 -48.338352730245305;
createNode animCurveTA -n "cameraPan_rotateY";
	rename -uid "13F53689-48E2-4ED3-A656-F4B580CA6EF0";
	setAttr ".tan" 2;
	setAttr ".ktv[0]"  96 647.7999999999488;
createNode animCurveTA -n "cameraPan_rotateZ";
	rename -uid "D5A59EFA-43E6-F01F-F4D7-5F948E8267E6";
	setAttr ".tan" 2;
	setAttr ".ktv[0]"  96 0;
createNode sequencer -n "sequencer1";
	rename -uid "EF034E0D-4A28-1D82-3DBA-7E9A6A52C9C4";
	setAttr ".mnf" 0;
	setAttr ".mxf" 380;
	setAttr -s 3 ".shts";
createNode trackInfoManager -n "trackInfoManager1";
	rename -uid "C105BCEA-4647-518A-ABD5-CA894A231925";
	setAttr ".ti[0].t" -type "string" "";
createNode shot -n "establishing1";
	rename -uid "E4328361-4444-CA07-D3EA-0F8D251F2876";
	setAttr ".ef" 95;
	setAttr ".cv" no;
	setAttr ".sn" -type "string" "establishing1";
	setAttr ".wres" 1024;
	setAttr ".ca" 1;
createNode shot -n "pan";
	rename -uid "6748C779-469A-F036-E216-038681357C0B";
	setAttr ".sf" 96;
	setAttr ".ef" 239;
	setAttr ".ssf" 96;
	setAttr ".cv" no;
	setAttr ".sn" -type "string" "pan";
	setAttr ".wres" 1024;
createNode shot -n "zoomOut1";
	rename -uid "C240565C-4B5A-2167-8BBC-68995F7C90C7";
	setAttr ".sf" 240;
	setAttr ".ef" 380;
	setAttr ".ssf" 240;
	setAttr ".cv" no;
	setAttr ".sn" -type "string" "zoomOut1";
	setAttr ".wres" 1024;
createNode animCurveTL -n "ubercam_translateX";
	rename -uid "ED2AAE72-4ABA-10C4-0A90-4699A9EE095F";
	setAttr ".tan" 1;
	setAttr -s 6 ".ktv[0:5]"  0 -16.925852148422425 95 -16.925852148422425
		 96 -11.67673433686115 239 -12.191155520436885 240 -5.9549038753039181 380 -5.9549038753039181;
	setAttr -s 6 ".kot[1:5]"  5 1 5 1 5;
	setAttr -s 6 ".kix[0:5]"  1 1 1 5.9583333333333321 1 5.8333333333333339;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 -0.51442118357573285 0 0;
	setAttr -s 6 ".kox[0:5]"  1 0 5.9583333333333348 0 1 0;
	setAttr -s 6 ".koy[0:5]"  0 0 -0.51442118357573285 0 0 0;
createNode animCurveTL -n "ubercam_translateY";
	rename -uid "1353D877-4987-DA02-210D-FA933E206E40";
	setAttr ".tan" 1;
	setAttr -s 6 ".ktv[0:5]"  0 -4.1962525189260305 95 -4.1962525189260305
		 96 -24.142753799635468 239 -23.519340999213444 240 7.1635841006265695 380 60.074608468177793;
	setAttr -s 6 ".kot[1:5]"  5 1 5 1 5;
	setAttr -s 6 ".kix[0:5]"  1 1 1 5.9583333333333321 1 5.8333333333333339;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0.6234128004220203 0 52.911024367551221;
	setAttr -s 6 ".kox[0:5]"  1 0 5.9583333333333348 0 5.8333333333333339 
		0;
	setAttr -s 6 ".koy[0:5]"  0 0 0.6234128004220203 0 52.911024367551221 
		0;
createNode animCurveTL -n "ubercam_translateZ";
	rename -uid "A3FB5E69-46F3-020B-ECF6-F3A8398FA4F5";
	setAttr ".tan" 1;
	setAttr -s 6 ".ktv[0:5]"  0 41.956106592437536 95 41.956106592437536
		 96 36.704118837538374 239 32.809906550717137 240 31.440844624685354 380 31.440844624685354;
	setAttr -s 6 ".kot[1:5]"  5 1 5 1 5;
	setAttr -s 6 ".kix[0:5]"  1 1 1 5.9583333333333321 1 5.8333333333333339;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 -3.8942122868212365 0 0;
	setAttr -s 6 ".kox[0:5]"  1 0 5.9583333333333348 0 1 0;
	setAttr -s 6 ".koy[0:5]"  0 0 -3.8942122868212365 0 0 0;
createNode animCurveTA -n "ubercam_rotateX";
	rename -uid "C8E67780-43DF-C6C7-C393-4DB9C0DCEFB5";
	setAttr ".tan" 1;
	setAttr -s 6 ".ktv[0:5]"  0 -60.33835273023935 95 -60.33835273023935
		 96 -48.338352730245305 239 -48.338352730245305 240 -90.000000000001052 380 -90.000000000001052;
	setAttr -s 6 ".kot[1:5]"  5 1 5 1 5;
	setAttr -s 6 ".kix[0:5]"  1 1 1 5.9583333333333339 1 5.8333333333333339;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 0 1 0 1 0;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "ubercam_rotateY";
	rename -uid "51D0EC68-4EDD-900E-683C-6E9AEF87902A";
	setAttr ".tan" 1;
	setAttr -s 6 ".ktv[0:5]"  0 671.40000000005034 95 671.40000000005034
		 96 647.7999999999488 239 647.7999999999488 240 -44.800000000000139 380 -44.800000000000139;
	setAttr -s 6 ".kot[1:5]"  5 1 5 1 5;
	setAttr -s 6 ".kix[0:5]"  1 1 1 5.9583333333333339 1 5.8333333333333339;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 0 1 0 1 0;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTL -n "ubercamShape_centerOfInterest";
	rename -uid "068DF2B5-46F0-CFB8-C008-A8A901AA7484";
	setAttr ".tan" 1;
	setAttr -s 6 ".ktv[0:5]"  0 30.903593874436293 95 30.903593874436293
		 96 9.9999997473787499e-06 239 9.9999997473787499e-06 240 91.631602089526396 380 91.631602089526396;
	setAttr -s 6 ".kot[1:5]"  5 1 5 1 5;
	setAttr -s 6 ".kwl[0:5]" yes yes yes yes yes yes;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 0 1 0 1 0;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode reference -n "stage_fertigRN";
	rename -uid "C1358499-4004-DBC3-62E3-AD8580FD9A3A";
	setAttr ".ed" -type "dataReferenceEdits" 
		"stage_fertigRN"
		"stage_fertigRN" 0
		"stage_fertigRN" 18
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:stage|stage_fertig:stageShape.message" "|lighting_1|aiAreaLight2|aiAreaLightShape2.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:stage|stage_fertig:stageShape.message" "|lighting_1|aiAreaLight3|aiAreaLightShape3.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:stage|stage_fertig:stageShape.message" "|lighting_2|aiAreaLight3|aiAreaLightShape3.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:stage|stage_fertig:verziehrung|stage_fertig:verziehrungShape.message" "|lighting_1|aiAreaLight2|aiAreaLightShape2.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:stage|stage_fertig:verziehrung|stage_fertig:verziehrungShape.message" "|lighting_1|aiAreaLight3|aiAreaLightShape3.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:stage|stage_fertig:verziehrung|stage_fertig:verziehrungShape.message" "|lighting_2|aiAreaLight3|aiAreaLightShape3.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:stage|stage_fertig:verziehrung|stage_fertig:verziehrung_cubes|stage_fertig:verziehrung_cubesShape.message" "|lighting_1|aiAreaLight2|aiAreaLightShape2.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:stage|stage_fertig:verziehrung|stage_fertig:verziehrung_cubes|stage_fertig:verziehrung_cubesShape.message" "|lighting_1|aiAreaLight3|aiAreaLightShape3.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:stage|stage_fertig:verziehrung|stage_fertig:verziehrung_cubes|stage_fertig:verziehrung_cubesShape.message" "|lighting_2|aiAreaLight3|aiAreaLightShape3.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:stage|stage_fertig:pillars|stage_fertig:pillarsShape.message" "|lighting_1|aiAreaLight2|aiAreaLightShape2.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:stage|stage_fertig:pillars|stage_fertig:pillarsShape.message" "|lighting_1|aiAreaLight3|aiAreaLightShape3.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:stage|stage_fertig:pillars|stage_fertig:pillarsShape.message" "|lighting_2|aiAreaLight3|aiAreaLightShape3.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:stage|stage_fertig:vorbau|stage_fertig:vorbauShape.message" "|lighting_1|aiAreaLight2|aiAreaLightShape2.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:stage|stage_fertig:vorbau|stage_fertig:vorbauShape.message" "|lighting_1|aiAreaLight3|aiAreaLightShape3.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:stage|stage_fertig:vorbau|stage_fertig:vorbauShape.message" "|lighting_2|aiAreaLight3|aiAreaLightShape3.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:stage|stage_fertig:dach|stage_fertig:dachShape.message" "|lighting_1|aiAreaLight2|aiAreaLightShape2.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:stage|stage_fertig:dach|stage_fertig:dachShape.message" "|lighting_1|aiAreaLight3|aiAreaLightShape3.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:stage|stage_fertig:dach|stage_fertig:dachShape.message" "|lighting_2|aiAreaLight3|aiAreaLightShape3.message" 
		0;
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode animCurveTU -n "aiAreaLightShape2_exposure";
	rename -uid "ECEB49F4-476D-2971-9B65-52944326F25A";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  95 9.5 96 7.5 239 7.5 240 9.5;
createNode animCurveTU -n "aiAreaLightShape3_exposure";
	rename -uid "9B46C0FC-4D13-DB67-7117-E89AA0890987";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  95 7.5 96 6.5 239 6.5 240 7.5;
createNode animCurveTU -n "aiAreaLightShape3_exposure1";
	rename -uid "4777BB7A-4D93-3C59-6162-7E9C7A4BE3D3";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  95 8 96 6.5 239 6.5 240 9;
select -ne :time1;
	setAttr ".o" 0;
select -ne :sequenceManager1;
	setAttr ".o" 29;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".ta" 5;
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
select -ne :lightList1;
	setAttr -s 8 ".l";
select -ne :defaultTextureList1;
	setAttr -s 36 ".tx";
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".ren" -type "string" "arnold";
	setAttr ".outf" 51;
	setAttr ".imfkey" -type "string" "exr";
	setAttr ".dss" -type "string" "lambert1";
select -ne :defaultResolution;
	setAttr ".w" 1920;
	setAttr ".h" 1080;
	setAttr ".pa" 1;
	setAttr ".dar" 1.7769999504089355;
select -ne :defaultLightSet;
	setAttr -s 8 ".dsm";
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
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "Geige_RigRN.phl[1]" "Geige_RigRN.phl[2]";
connectAttr "Geige_RigRN.phl[3]" "Geige_RigRN.phl[4]";
connectAttr "Geige_RigRN.phl[5]" "Geige_RigRN.phl[6]";
connectAttr "Geige_RigRN.phl[7]" "Geige_RigRN.phl[8]";
connectAttr "Geige_RigRN.phl[9]" "Geige_RigRN.phl[10]";
connectAttr "Geige_RigRN.phl[11]" "Geige_RigRN.phl[12]";
connectAttr "Geige_RigRN.phl[13]" "Geige_RigRN.phl[14]";
connectAttr "Geige_RigRN.phl[15]" "Geige_RigRN.phl[16]";
connectAttr "Geige_RigRN.phl[17]" "Geige_RigRN.phl[18]";
connectAttr "Geige_RigRN.phl[19]" "Geige_RigRN.phl[20]";
connectAttr "Geige_RigRN.phl[21]" "Geige_RigRN.phl[22]";
connectAttr "Geige_RigRN.phl[23]" "Geige_RigRN.phl[24]";
connectAttr "Geige_RigRN.phl[25]" "Geige_RigRN.phl[26]";
connectAttr "Geige_RigRN.phl[27]" "Geige_RigRN.phl[28]";
connectAttr "Geige_RigRN.phl[29]" "Geige_RigRN.phl[30]";
connectAttr "Geige_RigRN.phl[31]" "Geige_RigRN.phl[32]";
connectAttr "ubercam_rotateX.o" "ubercam.rx" -l on;
connectAttr "ubercam_rotateY.o" "ubercam.ry" -l on;
connectAttr "ubercam_translateX.o" "ubercam.tx" -l on;
connectAttr "ubercam_translateY.o" "ubercam.ty" -l on;
connectAttr "ubercam_translateZ.o" "ubercam.tz" -l on;
connectAttr "ubercamShape_centerOfInterest.o" "ubercamShape.coi" -l on;
connectAttr "cameraPan_translateX.o" "cameraPan.tx" -l on;
connectAttr "cameraPan_translateY.o" "cameraPan.ty" -l on;
connectAttr "cameraPan_translateZ.o" "cameraPan.tz" -l on;
connectAttr "cameraPan_rotateX.o" "cameraPan.rx" -l on;
connectAttr "cameraPan_rotateY.o" "cameraPan.ry" -l on;
connectAttr "cameraPan_rotateZ.o" "cameraPan.rz" -l on;
connectAttr "zoomOut_translateX.o" "zoomOut.tx" -l on;
connectAttr "zoomOut_translateY.o" "zoomOut.ty" -l on;
connectAttr "zoomOut_translateZ.o" "zoomOut.tz" -l on;
connectAttr "zoomOut_rotateX.o" "zoomOut.rx" -l on;
connectAttr "zoomOut_rotateY.o" "zoomOut.ry" -l on;
connectAttr "zoomOut_rotateZ.o" "zoomOut.rz" -l on;
connectAttr "aiAreaLightShape2_exposure.o" "|lighting_1|aiAreaLight2|aiAreaLightShape2.ai_exposure"
		;
connectAttr "aiAreaLightShape3_exposure.o" "|lighting_1|aiAreaLight3|aiAreaLightShape3.ai_exposure"
		;
connectAttr "aiAreaLightShape3_exposure1.o" "|lighting_2|aiAreaLight3|aiAreaLightShape3.ai_exposure"
		;
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "establishing1.msg" "sequencer1.shts" -na;
connectAttr "pan.msg" "sequencer1.shts" -na;
connectAttr "zoomOut1.msg" "sequencer1.shts" -na;
connectAttr "establishingShape.msg" "establishing1.ccm";
connectAttr "cameraPanShape.msg" "pan.ccm";
connectAttr "zoomOutShape.msg" "zoomOut1.ccm";
connectAttr "sequencer1.msg" ":sequenceManager1.seqts" -na;
connectAttr "trackInfoManager1.msg" ":sequenceManager1.tim";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "|lighting_1|aiAreaLight1|aiAreaLightShape1.ltd" ":lightList1.l" -na
		;
connectAttr "|lighting_1|spotLight1|spotLightShape1.ltd" ":lightList1.l" -na;
connectAttr "|lighting_1|aiAreaLight2|aiAreaLightShape2.ltd" ":lightList1.l" -na
		;
connectAttr "|lighting_1|aiAreaLight3|aiAreaLightShape3.ltd" ":lightList1.l" -na
		;
connectAttr "|lighting_2|aiAreaLight1|aiAreaLightShape1.ltd" ":lightList1.l" -na
		;
connectAttr "|lighting_2|spotLight1|spotLightShape1.ltd" ":lightList1.l" -na;
connectAttr "|lighting_2|aiAreaLight2|aiAreaLightShape2.ltd" ":lightList1.l" -na
		;
connectAttr "|lighting_2|aiAreaLight3|aiAreaLightShape3.ltd" ":lightList1.l" -na
		;
connectAttr "|lighting_1|aiAreaLight1.iog" ":defaultLightSet.dsm" -na;
connectAttr "|lighting_1|spotLight1.iog" ":defaultLightSet.dsm" -na;
connectAttr "|lighting_1|aiAreaLight2.iog" ":defaultLightSet.dsm" -na;
connectAttr "|lighting_1|aiAreaLight3.iog" ":defaultLightSet.dsm" -na;
connectAttr "|lighting_2|aiAreaLight1.iog" ":defaultLightSet.dsm" -na;
connectAttr "|lighting_2|spotLight1.iog" ":defaultLightSet.dsm" -na;
connectAttr "|lighting_2|aiAreaLight2.iog" ":defaultLightSet.dsm" -na;
connectAttr "|lighting_2|aiAreaLight3.iog" ":defaultLightSet.dsm" -na;
// End of Scene04_GiveUp_Lighting.ma
