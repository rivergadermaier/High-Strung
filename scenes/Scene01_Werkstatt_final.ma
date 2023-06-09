//Maya ASCII 2023 scene
//Name: Scene01_Werkstatt_final.ma
//Last modified: Sat, Jun 24, 2023 03:41:37 PM
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
requires -nodeType "timeSliderBookmark" "timeSliderBookmark" "Version 1.0, unsupported - cut 202205052305";
requires -nodeType "aiOptions" -nodeType "aiAOV" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter"
		 -nodeType "aiSkyDomeLight" -nodeType "aiAreaLight" -nodeType "aiAmbientOcclusion"
		 -nodeType "aiStandardSurface" -nodeType "aiAtmosphereVolume" -nodeType "aiImagerDenoiserNoice"
		 -nodeType "cryptomatte" "mtoa" "5.1.2";
requires "stereoCamera" "10.0";
requires "OpenEXRLoader" "2020";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2023";
fileInfo "version" "2023";
fileInfo "cutIdentifier" "202205052215-234554116d";
fileInfo "osv" "Windows 11 Home v2009 (Build: 22621)";
fileInfo "UUID" "2F8AAB38-4DFB-BB2B-293E-F6A427365C53";
createNode transform -s -n "persp";
	rename -uid "1C8236DF-4A13-9F3B-3E97-208F4A5A1815";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -104.20131573507642 -0.54522685127369641 170.38989638486993 ;
	setAttr ".r" -type "double3" -1.800000000000076 -36.800000000000139 0 ;
	setAttr ".rpt" -type "double3" -3.1975105429482178e-16 -6.5907512524293972e-16 1.0487454091240642e-16 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "9D9339B5-431F-C3D1-3E72-70991000F072";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".fl" 34.999999999999979;
	setAttr ".coi" 211.41415596568686;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0 0 -42.228104313658967 ;
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
	setAttr ".t" -type "double3" 4.9560265220142066 0.56161691999260199 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "B8ACD58A-4D2F-D504-CA7F-4BAB4C2FF628";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".ovr" 1.3;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 150.45933719929229;
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
	setAttr ".fl" 34.999999999999993;
	setAttr -l on ".coi" 19.084343962828534;
	setAttr -l on ".ow";
	setAttr ".imn" -type "string" "persp1";
	setAttr ".den" -type "string" "persp1_depth";
	setAttr ".man" -type "string" "persp1_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -n "cam2_topViolin";
	rename -uid "DEC6F693-4782-485F-A63F-51B1F8EE5CF7";
	setAttr ".r" -type "double3" -46.799999999988195 0 9.9431100486335541e-17 ;
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
createNode camera -n "cam2_topViolinShape" -p "cam2_topViolin";
	rename -uid "C3D9E072-44F1-0A46-26D8-62BBFA096A58";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".fl" 34.999999999999993;
	setAttr -l on ".coi" 20.348584844376209;
	setAttr -l on ".ow";
	setAttr ".imn" -type "string" "persp1";
	setAttr ".den" -type "string" "persp1_depth";
	setAttr ".man" -type "string" "persp1_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -n "cam3_slowSnail";
	rename -uid "60D86605-452A-FED3-A97F-CF93DC794F1C";
createNode camera -n "cam3_slowSnailShape" -p "cam3_slowSnail";
	rename -uid "BF25F822-46D1-C25F-E6C9-B4B04AA60DE9";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".fl" 34.999999999999993;
	setAttr -l on ".coi" 19.699672775274205;
	setAttr -l on ".ow";
	setAttr ".imn" -type "string" "persp1";
	setAttr ".den" -type "string" "persp1_depth";
	setAttr ".man" -type "string" "persp1_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -n "cam4_bodyCloseUp";
	rename -uid "3038B877-401C-71F3-23F4-D1806B9CD1AB";
	setAttr ".rp" -type "double3" 3.5527136788005009e-15 0 0 ;
	setAttr ".rpt" -type "double3" -6.8581473959812874e-16 0 2.098252834130458e-15 ;
createNode camera -n "cam4_bodyCloseUpShape" -p "cam4_bodyCloseUp";
	rename -uid "AD24E7CC-4C34-AEC8-C752-CC8BD256D3EF";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".fl" 34.999999999999979;
	setAttr -l on ".coi" 1.297929766174637;
	setAttr -l on ".ow";
	setAttr ".imn" -type "string" "persp1";
	setAttr ".den" -type "string" "persp1_depth";
	setAttr ".man" -type "string" "persp1_mask";
	setAttr ".tp" -type "double3" -7.3468483642380589 -13.648611056607647 26.194380612301771 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -n "cam5_woodScraps_old";
	rename -uid "7CDEE9AA-436D-1DCE-BB55-54839316C58E";
createNode camera -n "cam5_woodScraps_oldShape" -p "cam5_woodScraps_old";
	rename -uid "AB668BDC-48F8-910D-EDFD-07A191946CD3";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".fl" 34.999999999999993;
	setAttr -l on ".coi" 138.23590786445791;
	setAttr -l on ".ow";
	setAttr ".imn" -type "string" "persp1";
	setAttr ".den" -type "string" "persp1_depth";
	setAttr ".man" -type "string" "persp1_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -n "cam5_woodScraps";
	rename -uid "C7E15506-45B4-63D3-DEF1-93AB4F727A1E";
createNode camera -n "cam5_woodScrapsShape" -p "cam5_woodScraps";
	rename -uid "12836E67-40BC-AC40-5743-028CD50728CF";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 30.225079302570382;
	setAttr ".imn" -type "string" "persp1";
	setAttr ".den" -type "string" "persp1_depth";
	setAttr ".man" -type "string" "persp1_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -n "ubercam_final";
	rename -uid "FC7A486B-4AE2-CAA3-658C-B0B019909553";
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
createNode camera -n "ubercam_finalShape" -p "ubercam_final";
	rename -uid "20C04B88-44BC-42B4-DDFF-FCBC534ABC8A";
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
	setAttr ".coi" 30.225079302570382;
	setAttr -l on -av ".ow";
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
createNode transform -n "cam6_frontCurtain";
	rename -uid "AC0E2DAF-42BB-052C-58C3-DFB23D342481";
	setAttr ".t" -type "double3" 0.39139384973024338 -1.373587163303597 167 ;
	setAttr -l on ".tx";
createNode camera -n "cam6_frontCurtainShape" -p "cam6_frontCurtain";
	rename -uid "E831326E-44E9-4FFE-497F-9FBBE379184B";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".ovr" 1.3;
	setAttr ".fl" 34.999999999999993;
	setAttr -l on ".coi" 158.49664591777659;
	setAttr -l on ".ow";
	setAttr ".imn" -type "string" "persp1";
	setAttr ".den" -type "string" "persp1_depth";
	setAttr ".man" -type "string" "persp1_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".dr" yes;
createNode transform -n "ubercam_v4";
	rename -uid "C6AF196B-47BD-EAFB-9FD9-38867BA8A41E";
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
createNode camera -n "ubercam_v4Shape" -p "ubercam_v4";
	rename -uid "AC145ED8-4B9E-D570-99C0-6AB1AA9531B9";
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
	setAttr -av ".rnd" no;
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
	setAttr ".coi" 138.23590786445791;
	setAttr -av ".ow";
	setAttr -av ".asp";
	setAttr -av ".uls";
	setAttr -av ".lls";
	setAttr -av ".dgo";
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
createNode transform -n "ubercam_afterTeamFeedback";
	rename -uid "8D30DF75-4DB1-0247-D19C-52AE84AE55A0";
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
	setAttr ".r" -type "double3" 0 0 9.9431100486335541e-17 ;
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
createNode camera -n "ubercam_afterTeamFeedbackShape" -p "ubercam_afterTeamFeedback";
	rename -uid "7F4E0E22-44B6-C16C-EB26-24896591A96F";
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
	setAttr -av ".rnd" no;
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
	setAttr ".coi" 138.23590786445791;
	setAttr -l on -av ".ow";
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
	setAttr ".t" -type "double3" -58.99207137665924 -2.3871579966088403e-14 50.891550900882841 ;
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
	setAttr ".t" -type "double3" 58.94987614495502 -2.2858085117833382e-14 50.891550900882841 ;
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
	rename -uid "5861F0AD-41BB-5414-510F-6EB715E67F27";
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
	rename -uid "A6F56BE8-4463-DA90-1F86-D9AD4B82EC61";
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
	setAttr -av ".rnd" no;
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
	setAttr ".coi" 158.49664591777659;
	setAttr -l on -av ".ow";
	setAttr -av ".asp";
	setAttr -av ".uls";
	setAttr -av ".lls";
	setAttr -av ".dgo";
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
createNode transform -n "Violin_Lighting";
	rename -uid "29541170-436F-19F6-1D5E-1CA8F59278C5";
createNode transform -n "Fill_Light" -p "Violin_Lighting";
	rename -uid "069DD0F0-43A2-7132-71BE-5184B970F0DA";
	setAttr ".t" -type "double3" 5.0446418264103867 -11.020311978279961 29.969359210881958 ;
	setAttr ".r" -type "double3" -23.423962649245702 25.432288277310846 -3.136979802349281 ;
	setAttr ".s" -type "double3" 11.468168744149343 2.6847787108855954 4.894086167229486 ;
createNode aiAreaLight -n "Fill_LightShape" -p "Fill_Light";
	rename -uid "DB76F544-4D37-65F8-37A4-62A152327330";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr -k off ".v";
	setAttr ".csh" no;
	setAttr ".rcsh" no;
	setAttr ".ai_exposure" 9;
	setAttr ".ai_samples" 2;
	setAttr ".ai_volume" 0;
	setAttr ".ai_aov" -type "string" "violin_light";
	setAttr ".ai_color_temperature" 12251.5341796875;
	setAttr ".ai_spread" 0.72794115543365479;
	setAttr ".ai_translator" -type "string" "quad";
	setAttr ".aal" -type "attributeAlias" {"exposure","aiExposure","normalize","aiNormalize"
		} ;
createNode transform -n "Key_Light" -p "Violin_Lighting";
	rename -uid "0E867C1E-4A86-9912-2342-FF89676895E5";
	setAttr ".t" -type "double3" -4.7064625000975226 -10.047185415223868 -1.4294855942946991 ;
	setAttr ".r" -type "double3" 3.2754662078113213 -167.7770174905599 0 ;
	setAttr ".s" -type "double3" 16.89155607054736 5.9915182241750351 5.9915182241750351 ;
createNode aiAreaLight -n "Key_LightShape" -p "Key_Light";
	rename -uid "C048C798-4256-DFED-8B12-8DA024A212F5";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr -k off ".v";
	setAttr ".csh" no;
	setAttr ".rcsh" no;
	setAttr ".ai_samples" 2;
	setAttr ".ai_volume" 0;
	setAttr ".ai_aov" -type "string" "violin_light";
	setAttr ".ai_use_color_temperature" yes;
	setAttr ".ai_color_temperature" 3834.355712890625;
	setAttr ".ai_spread" 0.63235294818878174;
	setAttr ".ai_translator" -type "string" "quad";
	setAttr ".aal" -type "attributeAlias" {"exposure","aiExposure","normalize","aiNormalize"
		} ;
createNode transform -n "Back_Light" -p "Violin_Lighting";
	rename -uid "F55479AF-427A-3D8F-265D-A9B330C6B251";
	setAttr ".t" -type "double3" -24.682414569223884 -2.8736333901753772 21.754632135723377 ;
	setAttr ".r" -type "double3" -31.529320920495067 -83.098209981599666 0 ;
	setAttr ".s" -type "double3" 11.553092121488824 11.553092121488824 11.553092121488824 ;
createNode aiAreaLight -n "Back_LightShape" -p "Back_Light";
	rename -uid "C223378D-49DE-51FF-8DBB-E680E1375F36";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr -k off ".v";
	setAttr ".csh" no;
	setAttr ".rcsh" no;
	setAttr ".sc" -type "float3" 0.177912 0.21553712 0.50400001 ;
	setAttr ".ai_exposure" 10;
	setAttr ".ai_samples" 2;
	setAttr ".ai_volume" 0;
	setAttr ".ai_aov" -type "string" "violin_light";
	setAttr ".ai_translator" -type "string" "quad";
	setAttr ".aal" -type "attributeAlias" {"exposure","aiExposure","normalize","aiNormalize"
		} ;
createNode transform -n "Stage_Lighting";
	rename -uid "9B4B55C6-4A75-2C24-D93E-709C8FC13E34";
createNode transform -n "Left_Light" -p "Stage_Lighting";
	rename -uid "30AF01F1-45EB-E6B9-609A-E7838CA94FDB";
	setAttr ".t" -type "double3" -45.952217179152271 -3.5589863361891494 44.611844531931375 ;
	setAttr ".r" -type "double3" 2.7097822172550075 -30.33807045153203 0.28128801301957551 ;
	setAttr ".s" -type "double3" 3.7514028979890393 23.625468054893147 3.7514028979890393 ;
createNode aiAreaLight -n "Left_LightShape" -p "Left_Light";
	rename -uid "99DE8DCC-4A4E-215A-EBED-8FAAC9D16E9E";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr -k off ".v";
	setAttr ".csh" no;
	setAttr ".rcsh" no;
	setAttr ".ai_exposure" 12;
	setAttr ".ai_samples" 2;
	setAttr ".ai_volume" 0;
	setAttr ".ai_aov" -type "string" "stage_light";
	setAttr ".ai_use_color_temperature" yes;
	setAttr ".ai_color_temperature" 3576.68701171875;
	setAttr ".ai_translator" -type "string" "quad";
	setAttr ".aal" -type "attributeAlias" {"exposure","aiExposure","normalize","aiNormalize"
		} ;
createNode transform -n "Right_Light" -p "Stage_Lighting";
	rename -uid "77960062-414A-B0B1-02FB-2395F0E07DB8";
	setAttr ".t" -type "double3" 45.63054647794862 -3.5589863361891494 44.611844531931375 ;
	setAttr ".r" -type "double3" 2.5949837397729785 25.682049819717076 2.7759933913434693 ;
	setAttr ".s" -type "double3" 3.7514028979890393 23.625468054893147 3.7514028979890393 ;
createNode aiAreaLight -n "Right_LightShape" -p "Right_Light";
	rename -uid "A1B8C67A-4384-D713-DDFA-B88FED554358";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr -k off ".v";
	setAttr ".csh" no;
	setAttr ".rcsh" no;
	setAttr ".ai_exposure" 12;
	setAttr ".ai_samples" 2;
	setAttr ".ai_volume" 0;
	setAttr ".ai_aov" -type "string" "stage_light";
	setAttr ".ai_use_color_temperature" yes;
	setAttr ".ai_color_temperature" 3577;
	setAttr ".ai_translator" -type "string" "quad";
	setAttr ".aal" -type "attributeAlias" {"exposure","aiExposure","normalize","aiNormalize"
		} ;
createNode transform -n "BG_Light" -p "Stage_Lighting";
	rename -uid "44D1D174-49D6-AC85-D193-EEA0D8FB9968";
	setAttr ".t" -type "double3" 0 0 6.1518656724772196 ;
	setAttr ".s" -type "double3" 32.559872626610058 17.389322958962438 27.896594192768145 ;
createNode aiAreaLight -n "BG_LightShape" -p "BG_Light";
	rename -uid "29849D4B-4A7E-6066-241B-FABDD32EF760";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr -k off ".v";
	setAttr ".csh" no;
	setAttr ".rcsh" no;
	setAttr ".ai_exposure" 14;
	setAttr ".ai_samples" 2;
	setAttr ".ai_volume" 0;
	setAttr ".ai_aov" -type "string" "stage_light";
	setAttr ".ai_use_color_temperature" yes;
	setAttr ".ai_color_temperature" 4607.36181640625;
	setAttr ".ai_translator" -type "string" "quad";
	setAttr ".aal" -type "attributeAlias" {"exposure","aiExposure","normalize","aiNormalize"
		} ;
createNode transform -n "Left_spotLight" -p "Stage_Lighting";
	rename -uid "48489946-4FA2-D0F5-8414-218984A1793C";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -41.021168584222359 29.801059937712839 24.990684608156531 ;
	setAttr ".r" -type "double3" -128.98601910753464 -97.482560456503833 80.36461173590618 ;
	setAttr ".s" -type "double3" 17.089832903142145 17.089832903142145 47.42067686623799 ;
createNode spotLight -n "Left_spotLightShape" -p "Left_spotLight";
	rename -uid "0DB8CD1A-42C4-2955-71A6-C494DB72C623";
	setAttr -k off ".v";
	setAttr ".in" 10;
	setAttr ".sc" -type "float3" 0.11571202 0.20666735 0.90399998 ;
	setAttr ".col" 52.915020618349281;
	setAttr ".ca" 17.31232005017711;
	setAttr ".pa" -5.1282051301155338;
	setAttr ".ai_exposure" 10;
	setAttr ".ai_use_color_temperature" yes;
	setAttr ".ai_color_temperature" 4043.478271484375;
createNode transform -n "aiSkyDomeLight1" -p "Stage_Lighting";
	rename -uid "8B465CAF-4A3D-3D0B-E606-D0A0172570D6";
createNode aiSkyDomeLight -n "aiSkyDomeLightShape1" -p "aiSkyDomeLight1";
	rename -uid "3307E6D4-4779-66B2-4CBA-BAAA516D94A7";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr -k off ".v";
	setAttr ".csh" no;
	setAttr ".rcsh" no;
	setAttr ".intensity" 0.80000001192092896;
	setAttr ".camera" 0;
	setAttr ".ai_samples" 2;
	setAttr ".ai_volume" 0;
	setAttr ".ai_aov" -type "string" "stage_light";
	setAttr ".aal" -type "attributeAlias" {"exposure","aiExposure"} ;
createNode transform -n "decoration_light" -p "Stage_Lighting";
	rename -uid "DE002317-4FAF-3EB6-3AD0-4EA767E0E84D";
	setAttr ".t" -type "double3" -1.2723512898537084 27.642353298828713 43.318349116224631 ;
	setAttr ".r" -type "double3" -13.200000000000131 1.2000000000000031 4.9707068479401964e-17 ;
	setAttr ".s" -type "double3" 13.095612285818433 1.7886981997741216 2.410344273986361 ;
createNode aiAreaLight -n "decoration_lightShape" -p "decoration_light";
	rename -uid "2AE129C6-4021-2E4A-1CB1-EA801EDF790C";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr -k off ".v";
	setAttr ".csh" no;
	setAttr ".rcsh" no;
	setAttr ".ai_exposure" 6;
	setAttr ".ai_samples" 2;
	setAttr ".ai_volume" 0;
	setAttr ".ai_aov" -type "string" "stage_light";
	setAttr ".ai_use_color_temperature" yes;
	setAttr ".ai_color_temperature" 5638.03662109375;
	setAttr ".ai_translator" -type "string" "quad";
	setAttr ".aal" -type "attributeAlias" {"exposure","aiExposure","normalize","aiNormalize"
		} ;
createNode transform -n "BG_Light1" -p "Stage_Lighting";
	rename -uid "961641B9-427B-3913-7B62-F19BD1D76EB6";
	setAttr ".t" -type "double3" 0 0 83.957729349272711 ;
	setAttr ".s" -type "double3" 47.356571671150242 27.100814480413653 29.531751492298831 ;
createNode aiAreaLight -n "BG_Light1Shape" -p "BG_Light1";
	rename -uid "37D82D7C-49C9-1D9D-055E-AB9EBA666A70";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr -k off ".v";
	setAttr ".csh" no;
	setAttr ".rcsh" no;
	setAttr ".ai_exposure" 14;
	setAttr ".ai_samples" 2;
	setAttr ".ai_volume" 0;
	setAttr ".ai_aov" -type "string" "stage_light";
	setAttr ".ai_use_color_temperature" yes;
	setAttr ".ai_color_temperature" 4607.36181640625;
	setAttr ".ai_translator" -type "string" "quad";
	setAttr ".aal" -type "attributeAlias" {"exposure","aiExposure","normalize","aiNormalize"
		} ;
createNode transform -n "Right_spotLight1" -p "Stage_Lighting";
	rename -uid "16B95480-4407-4BE9-708C-D1BB618A18EB";
	setAttr ".t" -type "double3" 58.352902458918535 45.632473435187478 25.219585222326021 ;
	setAttr ".r" -type "double3" -240.21562028198591 -97.736901408310317 107.50885318514366 ;
	setAttr ".s" -type "double3" 17.089832903142145 17.089832903142145 105.49582020783613 ;
createNode spotLight -n "Right_spotLight1Shape" -p "Right_spotLight1";
	rename -uid "FFAE066A-4A96-3027-3A2A-6492B6B103A5";
	setAttr -k off ".v";
	setAttr ".in" 10;
	setAttr ".sc" -type "float3" 0.11571202 0.20666735 0.90399998 ;
	setAttr ".col" 13.873113440466627;
	setAttr ".ca" 11;
	setAttr ".pa" -2.262;
	setAttr ".ai_exposure" 10.5;
	setAttr ".ai_samples" 2;
	setAttr ".ai_use_color_temperature" yes;
	setAttr ".ai_color_temperature" 4043.478271484375;
createNode transform -n "Left_spotLight2" -p "Stage_Lighting";
	rename -uid "139AE82D-4389-EF4B-DA7A-4DAAD786C23F";
	setAttr ".t" -type "double3" -59.723494240636796 46.53905155204189 27.192140567622609 ;
	setAttr ".r" -type "double3" -144.61006829073131 -95.348790738200151 97.857847161023841 ;
	setAttr ".s" -type "double3" 17.089832903142145 17.089832903142145 105.49582020783613 ;
createNode spotLight -n "Left_spotLight2Shape" -p "Left_spotLight2";
	rename -uid "C4E48CCB-4764-3708-263D-C785BC3D5BC4";
	setAttr -k off ".v";
	setAttr ".in" 10;
	setAttr ".sc" -type "float3" 0.11571202 0.20666735 0.90399998 ;
	setAttr ".col" 20.122297561392951;
	setAttr ".ca" 11;
	setAttr ".pa" -2.2619047616830184;
	setAttr ".ai_exposure" 10.5;
	setAttr ".ai_samples" 2;
	setAttr ".ai_use_color_temperature" yes;
	setAttr ".ai_color_temperature" 4043.478271484375;
createNode transform -n "Gears_Light" -p "Stage_Lighting";
	rename -uid "24CBE77C-40AA-81CF-59F9-81A2976A8567";
	setAttr ".t" -type "double3" 0.71540452530960863 0 25.383702898950339 ;
	setAttr ".s" -type "double3" 53.811797070736901 31.158296572531576 4.2593356920520602 ;
createNode aiAreaLight -n "Gears_LightShape" -p "Gears_Light";
	rename -uid "99CAF59C-4CCE-D16E-EEEE-7C96635954AF";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr -k off ".v";
	setAttr ".csh" no;
	setAttr ".rcsh" no;
	setAttr ".sc" -type "float3" 0.77600002 0.68768394 0.56725603 ;
	setAttr ".ai_exposure" 13;
	setAttr ".ai_samples" 2;
	setAttr ".ai_volume" 0;
	setAttr ".ai_aov" -type "string" "stage_light";
	setAttr ".ai_translator" -type "string" "quad";
	setAttr ".aal" -type "attributeAlias" {"exposure","aiExposure","normalize","aiNormalize"
		} ;
createNode transform -n "spans";
	rename -uid "3BECDB42-448C-552B-C9BB-B7B8C7F6B088";
	setAttr ".t" -type "double3" -12.695099500039303 -14.914590024942134 16.295087692988339 ;
	setAttr ".s" -type "double3" 0.18691657449170745 0.18691657449170745 0.18691657449170745 ;
createNode transform -n "span_01" -p "spans";
	rename -uid "6FCEE888-4848-2660-8516-A6A6C5FCB991";
	setAttr ".t" -type "double3" 80.090368516442965 -1.2594388991653152 -13.589819571803117 ;
createNode mesh -n "span_Shape1" -p "span_01";
	rename -uid "A008DEAF-4A93-4E54-3914-41BCD6A817B9";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.64118573005296642 -1.2659982740879054 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 1286 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.53043675 0.59141016 0.53519076
		 0.58150029 0.53963166 0.58314204 0.53634536 0.5905413 0.53958929 0.57136333 0.5437848
		 0.57293761 0.54416984 0.58485365 0.54024482 0.59505218 0.54313958 0.56083369 0.54756474
		 0.56251657 0.54814529 0.57460123 0.54892635 0.58667654 0.54912239 0.59840226 0.54704809
		 0.55039197 0.5515632 0.55211115 0.55209887 0.56426895 0.55284804 0.57642663 0.55379206
		 0.58856815 0.55263281 0.59166181 0.55259222 0.54046386 0.55640793 0.54193103 0.55616045
		 0.55390579 0.55685943 0.56614184 0.55771309 0.57834554 0.5586313 0.590491 0.55479878
		 0.60069597 0.55796325 0.53024763 0.56121367 0.53157192 0.56048125 0.54355365 0.56094021
		 0.55581546 0.56172723 0.56809103 0.56256324 0.58029306 0.56346762 0.59242707 0.55969197
		 0.60252666 0.56139469 0.51899767 0.56513023 0.5206576 0.56486338 0.53310156 0.56508595
		 0.54544228 0.56581062 0.55780423 0.56658506 0.57007015 0.56740129 0.58226758 0.57136679
		 0.5864628 0.56920677 0.59196693 0.56434989 0.50735128 0.56892419 0.50953734 0.56913
		 0.52246326 0.56931818 0.53501481 0.56995404 0.54748613 0.57067513 0.55982411 0.5714339
		 0.57207644 0.57283956 0.58272249 0.57301176 0.5964902 0.57080615 0.60209417 0.56766987
		 0.49717575 0.57281482 0.49956611 0.5735268 0.51176405 0.57366019 0.52453685 0.57416379
		 0.53713846 0.5748207 0.54956245 0.5755353 0.56187028 0.57627445 0.57411003 0.57703012
		 0.58630961 0.5778147 0.59847617 0.57395822 0.60864884 0.57782876 0.50192738 0.57818413
		 0.51404846 0.5784533 0.52676374 0.57901448 0.53929317 0.57968944 0.55166245 0.58039153
		 0.56393784 0.5811041 0.5761646 0.5818302 0.58835679 0.58264256 0.6004408 0.58023614
		 0.6109342 0.58263117 0.50420862 0.58288556 0.51637471 0.58325201 0.52901459 0.58387655
		 0.54146773 0.5845626 0.55377829 0.58524281 0.56602347 0.58592391 0.57824188 0.58662885
		 0.59042609 0.59255618 0.58968449 0.59140122 0.59253865 0.58729583 0.50644636 0.58757883
		 0.51871526 0.5880658 0.53128135 0.58875632 0.543652 0.58944023 0.55590338 0.59008718
		 0.56812459 0.59073424 0.58034039 0.59364122 0.58706349 0.59208512 0.60496461 0.58612424
		 0.61454314 0.59192914 0.50868708 0.59227115 0.52106607 0.59290659 0.53355527 0.59365934
		 0.54583573 0.59432018 0.55803311 0.59492117 0.5702405 0.59553522 0.58246088 0.59618372
		 0.59471917 0.5969007 0.60699409 0.59281039 0.61717868 0.5965277 0.51092571 0.59697312
		 0.52342153 0.59779024 0.53582621 0.59858948 0.54800886 0.59919572 0.56016636 0.5997408
		 0.57237226 0.60032731 0.58459306 0.60098588 0.59682208 0.6017229 0.6090253 0.59521532
		 0.61956835 0.60108948 0.51315689 0.60169923 0.52577388 0.60273564 0.53808159 0.6035465
		 0.55016208 0.60405529 0.56230867 0.60454321 0.57452202 0.60511929 0.58672571 0.60579574
		 0.59891242 0.60656369 0.61105901 0.60254484 0.62113261 0.60561472 0.51537246 0.60646945
		 0.52811229 0.60778964 0.54027927 0.6085127 0.55229908 0.60887748 0.56448734 0.60933363
		 0.57668573 0.6099124 0.58885568 0.61061448 0.60099328 0.61140746 0.61309594 0.6095745
		 0.61768574 0.61010724 0.51755768 0.61138952 0.53044415 0.61293346 0.54244763 0.61329931
		 0.5546959 0.61367667 0.56669289 0.61411577 0.57885957 0.61470884 0.59098029 0.61544186
		 0.60306346 0.61625862 0.61512059 0.61226231 0.6251331 0.61474526 0.51999658 0.61658132
		 0.53277004 0.61790639 0.54536319 0.61782318 0.55757248 0.61845857 0.5689283 0.61889392
		 0.58103776 0.61951089 0.59309423 0.62028015 0.60511732 0.62386835 0.60990131 0.62252551
		 0.61364698 0.61978114 0.5229069 0.62354481 0.53469962 0.62141728 0.55013263 0.62240142
		 0.56029952 0.62322235 0.57117504 0.6236726 0.58321166 0.62432098 0.59518957 0.62492788
		 0.607063 0.62547851 0.61893779 0.62204736 0.62933016 0.62525094 0.52564669 0.62531543
		 0.54339945 0.62533051 0.55421627 0.62735021 0.56222826 0.62798262 0.57343072 0.62845546
		 0.58537316 0.6290161 0.59719789 0.62918466 0.60880238 0.6298219 0.62064481 0.62694454
		 0.63122743 0.62763596 0.54621506 0.63088244 0.55501974 0.63238841 0.56397653 0.63274413
		 0.57568467 0.6321637 0.58703178 0.63345814 0.59904867 0.63325143 0.61041784 0.62583482
		 0.54335988 0.62658644 0.5445565 0.63516283 0.54735082 0.63689715 0.55515826 0.63722944
		 0.56614703 0.637591 0.57796407 0.63559055 0.58854437 0.63778853 0.60078853 0.63578331
		 0.5373739 0.6423021 0.53642076 0.64198542 0.54647344 0.64204431 0.55685526 0.64207894
		 0.56854475 0.64260709 0.58029872 0.64035273 0.59060514 0.64844626 0.5359143 0.6473009
		 0.54779983 0.64674395 0.55927318 0.64713395 0.57100111 0.64771026 0.58266073 0.65355963
		 0.53724861 0.65176165 0.55018276 0.65143073 0.56165975 0.65229952 0.57345092 0.65594077
		 0.5524134 0.65611374 0.56401551 0.65996391 0.55459106 0.5902437 0.4165363 0.58969903
		 0.40670806 0.59436572 0.40668288 0.59461808 0.41662669 0.58847457 0.39667892 0.59364957
		 0.39654672 0.5991798 0.40663651 0.59921658 0.41669923 0.58930337 0.42608288 0.59396482
		 0.42633948 0.58735216 0.38671282 0.59288687 0.38646945 0.59884244 0.3963981 0.60428858
		 0.4065676 0.60425901 0.41675669 0.59878188 0.42657909 0.58753699 0.43530142 0.59269315
		 0.43581372 0.58650005 0.37683001 0.59217435 0.37648544 0.59834737 0.3862167 0.60407269
		 0.39623174 0.60954726 0.40647596 0.60952568 0.4167974 0.60390067 0.42681104 0.59788424
		 0.43629634 0.58561105 0.44424897 0.59109402 0.44509321 0.586092 0.36699066 0.59161162
		 0.36657295 0.59773576 0.37613606 0.60366172 0.38595602 0.60932302 0.39604622 0.61480898
		 0.40636784 0.61479735 0.41682118 0.60917437 0.42703047 0.6031273 0.43675765 0.59653097
		 0.44587988 0.58586121 0.35719299 0.59142458 0.36066678 0.59705114 0.36614773 0.60307604
		 0.37578687;
	setAttr ".uvst[0].uvsp[250:499]" 0.60890353 0.38568175 0.61457533 0.39584514
		 0.6200735 0.40624544 0.62007272 0.41683123 0.61445516 0.42723459 0.60840219 0.43720248
		 0.60184765 0.44661498 0.5962863 0.35624713 0.60233843 0.36572003 0.60830665 0.37542662
		 0.61414582 0.38539243 0.61982936 0.39562994 0.62534016 0.40611088 0.62535059 0.41682982
		 0.61974066 0.42742673 0.61368769 0.43763453 0.60711324 0.44732159 0.60150146 0.35576195
		 0.6078552 0.36914352 0.61353594 0.37504911 0.6193887 0.38508892 0.62508512 0.39540234
		 0.63060838 0.40596628 0.63062978 0.41681916 0.62502861 0.42760915 0.61897999 0.43805808
		 0.6123957 0.44801983 0.60743213 0.36391282 0.61275029 0.36481258 0.61876333 0.37465686
		 0.62463254 0.38477242 0.6303423 0.39516425 0.63587767 0.40581375 0.63590944 0.41680115
		 0.63031715 0.42778304 0.62427545 0.4384748 0.61769009 0.44871628 0.61177766 0.35466659
		 0.61795598 0.36433315 0.62399161 0.37425116 0.62987745 0.3844448 0.63560069 0.3949174
		 0.64114761 0.40565535 0.64118892 0.41677782 0.6356048 0.42794964 0.62957048 0.43888515
		 0.62299079 0.44941401 0.61698472 0.35411996 0.62316573 0.3638393 0.62922096 0.37383354
		 0.63512349 0.38410774 0.64086002 0.39466405 0.64641768 0.40549353 0.64646769 0.41675127
		 0.6408906 0.42811018 0.63486242 0.43928754 0.62829208 0.4501116 0.6226455 0.35828841
		 0.62837577 0.36333054 0.63445115 0.37340564 0.64037067 0.38376281 0.64611995 0.39440617
		 0.6516875 0.40533051 0.65174544 0.41672412 0.64617425 0.42826626 0.64014983 0.43968081
		 0.63358837 0.4508028 0.62733042 0.35292467 0.6335845 0.36281368 0.63968283 0.3729682
		 0.64561874 0.38341177 0.65138024 0.39414594 0.65695673 0.40516886 0.65702182 0.4166989
		 0.65145552 0.42842034 0.64543247 0.44006509 0.63232309 0.35044798 0.63879955 0.36228552
		 0.64619744 0.37197158 0.65086758 0.38305685 0.65664041 0.39388591 0.66222495 0.40501127
		 0.66229647 0.41667876 0.65673435 0.4285751 0.65071064 0.44044167 0.63772923 0.35174245
		 0.64785671 0.3652797 0.65143108 0.37151599 0.65611696 0.38270047 0.66189998 0.39362836
		 0.66749161 0.40486017 0.66756886 0.41666624 0.66201049 0.42873427 0.65598452 0.44081461
		 0.64916092 0.36035627 0.65307891 0.36476725 0.65666646 0.37105769 0.66136652 0.38234448
		 0.66715854 0.39337572 0.67275631 0.40471813 0.67283845 0.41666445 0.66728354 0.4289014
		 0.66125482 0.44118845 0.64783704 0.35038203 0.65569955 0.36004972 0.66062218 0.37116045
		 0.66661543 0.38199067 0.67241544 0.3931306 0.67801863 0.40458736 0.67810452 0.41667598
		 0.67255276 0.4290804 0.66652143 0.44156742 0.65326613 0.34972769 0.65965062 0.36008295
		 0.6658594 0.37070593 0.67186326 0.38163993 0.67767292 0.39289296 0.6834048 0.40446803
		 0.68356067 0.41670504 0.67781723 0.42927507 0.67178267 0.44195795 0.65821064 0.34690404
		 0.66487753 0.35953417 0.67109901 0.37024912 0.67745531 0.38781145 0.68298674 0.39266774
		 0.68904251 0.40435892 0.68939441 0.41675687 0.68320364 0.42949438 0.67703694 0.44236538
		 0.66367549 0.34847745 0.66857129 0.35914686 0.67717624 0.38251495 0.68248624 0.38096082
		 0.68842536 0.39245477 0.69480366 0.4042632 0.69541192 0.41683435 0.68883747 0.42974991
		 0.68228275 0.44279507 0.66778898 0.34800076 0.67689711 0.37769261 0.68178916 0.36930165
		 0.68811363 0.38062984 0.69392371 0.3922582 0.69458848 0.43004131 0.68751848 0.44325179
		 0.67636424 0.37289503 0.68007582 0.35778603 0.68759847 0.36884546 0.69386494 0.38031787
		 0.69274241 0.44373977 0.67630827 0.3466078 0.68633741 0.35716945 0.69359726 0.36839634
		 0.68196303 0.34594467 0.69206989 0.35661596 0.6897952 0.34501207 0.79620677 0.69302607
		 0.79060864 0.6909548 0.78894103 0.68303192 0.79362226 0.68235213 0.78583491 0.69453537
		 0.78413463 0.68373203 0.78711212 0.67224252 0.79154146 0.67159939 0.77642053 0.6959092
		 0.77907705 0.68447059 0.78249419 0.67291504 0.78578603 0.66137433 0.79046744 0.66069478
		 0.77437025 0.68850994 0.77389354 0.68522775 0.7774986 0.67364478 0.78097862 0.66207474
		 0.78429925 0.65052301 0.78907108 0.64983165 0.77028 0.69680989 0.76871163 0.68598843
		 0.77231431 0.67440408 0.77591908 0.66281462 0.77942395 0.65123355 0.78198779 0.6397804
		 0.78602183 0.63919675 0.76509643 0.69756085 0.76353014 0.6867494 0.76713037 0.67516589
		 0.7707333 0.66357583 0.77434134 0.65197849 0.77766544 0.64041203 0.77983904 0.62899381
		 0.78329736 0.62848735 0.75796795 0.6849106 0.75710493 0.67903543 0.76194632 0.67593014
		 0.76554686 0.66433978 0.76915407 0.65274274 0.77276629 0.64113408 0.77594811 0.62956929
		 0.77882946 0.61801296 0.78286171 0.6174078 0.75401592 0.69418478 0.75316864 0.68829221
		 0.75651979 0.6750468 0.76036006 0.66510606 0.76396561 0.65351009 0.76757777 0.6419037
		 0.77119195 0.63027865 0.77450883 0.61866605 0.77818727 0.60695362 0.78318799 0.6061849
		 0.74951464 0.69988251 0.74799466 0.68905079 0.75157827 0.67746508 0.7551719 0.66587448
		 0.75877595 0.65427989 0.76238757 0.64267689 0.76600349 0.63105786 0.76961195 0.61941063
		 0.77314264 0.60773343 0.77737439 0.59691572 0.78300589 0.5962131 0.74289918 0.70080549
		 0.74282265 0.68980223 0.74639428 0.67823422 0.74998331 0.66664505 0.7535851 0.65505117
		 0.75719523 0.64345205 0.76081276 0.63184053 0.76442641 0.62020391 0.76801109 0.60853171
		 0.7718547 0.59760875 0.73600352 0.67977297 0.73555714 0.676723 0.7412082 0.67900932
		 0.74479437 0.66741842 0.74839336 0.65582353 0.75200087 0.64422792 0.75561917 0.6326248
		 0.75923926 0.62100023 0.76283365 0.60934043 0.76655328 0.59827709 0.73586082 0.70193619
		 0.73233956 0.69139445 0.73514301 0.67390913 0.73960495 0.66819483 0.7432012 0.6565966
		 0.74680459 0.6450032 0.75042218 0.63340873 0.7540493 0.6217978 0.75765675 0.61015213;
	setAttr ".uvst[0].uvsp[500:749]" 0.76136518 0.59893453 0.72877657 0.70298398
		 0.72716939 0.69215804 0.73080033 0.68056494 0.73441654 0.66896999 0.73800957 0.65736991
		 0.74160689 0.64577699 0.7452212 0.63419038 0.74885535 0.62259483 0.75247961 0.61096567
		 0.75618124 0.59959465 0.72589493 0.70473593 0.7219938 0.69292349 0.72561359 0.68133122
		 0.72922856 0.66974115 0.73281908 0.65814298 0.73640853 0.64654887 0.74001586 0.63496768
		 0.74365562 0.62338883 0.74730086 0.61177933 0.75100136 0.60025668 0.71839827 0.70450491
		 0.71681345 0.69368684 0.72042888 0.68209928 0.72403979 0.67051071 0.72763014 0.65891623
		 0.73121113 0.64731944 0.73480618 0.63573873 0.73844802 0.62417698 0.74211895 0.61259085
		 0.74582511 0.6009208 0.71234763 0.6993807 0.71163189 0.69444835 0.71524483 0.68286711
		 0.71885288 0.67128205 0.72244239 0.65969044 0.72601724 0.64809263 0.72959411 0.63650358
		 0.73322749 0.62495142 0.73693162 0.61339658 0.74065125 0.6015861 0.70800304 0.70601863
		 0.70644963 0.69520813 0.71006083 0.68363404 0.71366763 0.67205447 0.71725625 0.66046673
		 0.72082651 0.64886886 0.7244212 0.6374988 0.72799623 0.62571543 0.73167229 0.61424249
		 0.73547691 0.60225266 0.70071137 0.6921891 0.70027667 0.68818307 0.70487612 0.68439978
		 0.70848334 0.67282689 0.71207172 0.66124535 0.71563852 0.64965004 0.71932715 0.63896024
		 0.722875 0.62736887 0.72627711 0.61517501 0.73004711 0.60313874 0.69765067 0.70754945
		 0.69664407 0.69664484 0.69990647 0.6851306 0.70329946 0.67359823 0.70688832 0.66202551
		 0.71045339 0.65043616 0.71420538 0.64020377 0.71808338 0.63087934 0.71939278 0.61545449
		 0.72408903 0.60447776 0.69246542 0.7083056 0.69203538 0.69731587 0.69536847 0.68579501
		 0.69825888 0.67434531 0.70170569 0.66280621 0.70526987 0.6512273 0.70894778 0.64053982
		 0.71317303 0.6335066 0.71695244 0.62369323 0.71780634 0.60601103 0.69104648 0.68642277
		 0.69350624 0.67504531 0.69768852 0.66341037 0.70008719 0.65202183 0.70365691 0.64065802
		 0.70769483 0.63247198 0.71320969 0.62526023 0.68889689 0.67571801 0.69398582 0.66396564
		 0.69481492 0.65283096 0.69843745 0.64124411 0.70206946 0.63054717 0.70626956 0.62346345
		 0.6888572 0.66473073 0.68936312 0.6536656 0.69313931 0.64208019 0.69672489 0.63048583
		 0.70033181 0.62024838 0.70393038 0.6104002 0.71001226 0.61353153 0.6838218 0.65451044
		 0.68761867 0.64294463 0.69153732 0.63133067 0.69489115 0.61976498 0.69811732 0.60780501
		 0.681988 0.64381427 0.68635678 0.63216686 0.68987191 0.62060404 0.69273722 0.60735548
		 0.68118149 0.63299191 0.68518323 0.6213848 0.68066269 0.62214196 0.79324889 0.51782191
		 0.78924966 0.51607317 0.79359102 0.5072602 0.79780233 0.50925136 0.79019195 0.52672446
		 0.78585422 0.52502704 0.78505003 0.5142343 0.78924733 0.5052076 0.79844677 0.49845618
		 0.80307209 0.50076115 0.78803551 0.53564447 0.78313762 0.53399521 0.78138185 0.52327031
		 0.78044993 0.51221704 0.78463966 0.50302964 0.79380351 0.49614504 0.80333024 0.48971528
		 0.80823553 0.49227184 0.78614843 0.54435724 0.78081357 0.54289162 0.7782228 0.53233129
		 0.77663827 0.52140236 0.77564818 0.51010758 0.77990061 0.50078535 0.78912669 0.4938176
		 0.79848778 0.48719504 0.80814594 0.48101449 0.81313628 0.48372069 0.77554882 0.54143441
		 0.77327287 0.53065014 0.7717582 0.51947707 0.77084589 0.50799513 0.77516139 0.49853802
		 0.78443456 0.49147877 0.79377401 0.48474154 0.80325156 0.47836283 0.81281191 0.47229663
		 0.81763226 0.47500432 0.7704227 0.54000986 0.76830429 0.52895987 0.76687706 0.51754951
		 0.76604331 0.50587988 0.77042246 0.49628714 0.77974284 0.48913652 0.78912675 0.48231804
		 0.79855049 0.47581485 0.80805838 0.46962586 0.81546772 0.46703303 0.82197011 0.46623987
		 0.76536453 0.53860193 0.76333404 0.52726829 0.76199496 0.51562047 0.76124036 0.50376236
		 0.76568401 0.49403277 0.77505207 0.48679039 0.78448099 0.47989041 0.79394865 0.47331339
		 0.80343646 0.46702549 0.81291628 0.46098685 0.81551349 0.46675554 0.82201684 0.46597242
		 0.76030362 0.5371936 0.75836241 0.52557659 0.75711238 0.51369059 0.75643778 0.50164282
		 0.76094615 0.49177504 0.77036262 0.48444003 0.77983761 0.47745782 0.78935075 0.47080582
		 0.79698646 0.46782383 0.80839175 0.45835346 0.75524032 0.53578639 0.75338984 0.52388549
		 0.75222963 0.51176 0.75163549 0.49952152 0.75620925 0.48951432 0.76567459 0.48208541
		 0.77519679 0.47501999 0.78475821 0.46829194 0.7943418 0.46187904 0.79955995 0.46326929
		 0.750175 0.53438157 0.74841702 0.5221951 0.74734712 0.50982904 0.74683374 0.49739903
		 0.75147337 0.48725098 0.76098824 0.47972667 0.77055848 0.47257698 0.78016913 0.46577135
		 0.78980494 0.45928884 0.79945946 0.45311004 0.74510866 0.53297901 0.74344456 0.52050531
		 0.74246514 0.50789773 0.74203271 0.49527547 0.74673849 0.48498529 0.75630343 0.47736409
		 0.76592255 0.47012869 0.77558374 0.4632442 0.78526998 0.45669118 0.79496419 0.4504405
		 0.74004287 0.53157806 0.73847318 0.51881576 0.73758376 0.50596654 0.73723227 0.4931514
		 0.74200475 0.48271802 0.75162017 0.474998 0.761289 0.46767542 0.77100194 0.4607107
		 0.78074062 0.45408374 0.78806341 0.45187992 0.73350304 0.5171262 0.73270309 0.50403523
		 0.73243248 0.49102733 0.7372719 0.48044968 0.74693853 0.47262904 0.75665784 0.46521693
		 0.76642346 0.45817152 0.7762177 0.45146853 0.78603542 0.44509971 0.72853422 0.51543623
		 0.72782284 0.50210458 0.72763312 0.488904 0.73253989 0.47818103 0.74225843 0.47025776
		 0.75202894 0.46275368 0.76091182 0.45460165 0.77169728 0.44884789 0.78253949 0.4407807
		 0.72356665 0.51374614 0.72294307 0.50017488 0.72283411 0.48678181 0.72780871 0.47591269
		 0.7375797 0.46788478 0.74740219 0.46028677 0.7563417 0.45204261 0.76220071 0.4478581;
	setAttr ".uvst[0].uvsp[750:999]" 0.77708495 0.43970174 0.71859986 0.51205623
		 0.71806359 0.49824667 0.71803534 0.48466158 0.72307801 0.47364539 0.73290205 0.46551126
		 0.74277747 0.45781678 0.75177467 0.44947785 0.75766838 0.44523993 0.76307344 0.44287041
		 0.71363354 0.51036668 0.713184 0.49632069 0.71323669 0.48254389 0.71834767 0.47137982
		 0.72822523 0.46313787 0.73815429 0.4553445 0.74813914 0.44794682 0.757267 0.43988657
		 0.76845133 0.43442073 0.70866728 0.50867903 0.70830429 0.49439782 0.70826185 0.4803521
		 0.71350265 0.46906283 0.72354817 0.46076444 0.73353267 0.45287031 0.74357492 0.44537961
		 0.75366837 0.43827954 0.76381135 0.4315604 0.70370108 0.50699437 0.70330584 0.49243227
		 0.70293713 0.47801024 0.70842785 0.46663904 0.71881652 0.45836648 0.72587109 0.45620552
		 0.73901165 0.44280848 0.74916101 0.43561983 0.76051962 0.42693484 0.69873476 0.50531387
		 0.69806981 0.49037877 0.69743752 0.47559604 0.70323849 0.46416298 0.71397054 0.45591521
		 0.72417772 0.44786474 0.72833896 0.45147899 0.74597549 0.43373904 0.75490344 0.42606539
		 0.69376832 0.50363863 0.69271523 0.48828515 0.70906687 0.4534404 0.71921742 0.44521695
		 0.72972369 0.43755445 0.7306186 0.44720086 0.75137722 0.42389536 0.68880165 0.50196987
		 0.71414137 0.44251716 0.72465742 0.43470392 0.73613822 0.42785105 0.73312151 0.44306171
		 0.71942127 0.43176562 0.73073733 0.42465046 0.74426973 0.41935974 0.72579038 0.42172247
		 0.73944998 0.41635719 0.73277116 0.41219068 0.72537589 0.42152879 0.73236382 0.41200513
		 0.57129973 0.48835242 0.57664078 0.49053305 0.57587379 0.47990105 0.58081752 0.48167121
		 0.58182108 0.49268684 0.58009464 0.47121704 0.58466548 0.47270101 0.58574873 0.48344862
		 0.58671719 0.49474007 0.58242232 0.46210533 0.58733732 0.46349335 0.58937258 0.47416463
		 0.59066188 0.48521233 0.59146106 0.49673426 0.58382565 0.45307884 0.58927673 0.45426917
		 0.59234416 0.46479475 0.59432119 0.47566226 0.59555185 0.48695463 0.59615505 0.49871346
		 0.59468746 0.45536524 0.59746051 0.46606031 0.59938312 0.47716278 0.6004113 0.48867488
		 0.60078758 0.50067359 0.59997141 0.45638382 0.60264313 0.46731603 0.6044575 0.47865283
		 0.60523087 0.49037588 0.60534477 0.50260973 0.60521388 0.45736933 0.60785323 0.4685688
		 0.60954708 0.48014569 0.60999858 0.49206206 0.60981071 0.50451428 0.61047971 0.4583514
		 0.61309218 0.46983677 0.61465847 0.48165882 0.61469841 0.49374226 0.6141693 0.50637406
		 0.61576557 0.45934254 0.6183632 0.47113851 0.61980182 0.48321512 0.61930662 0.49543709
		 0.61859292 0.50842708 0.6210674 0.46035144 0.62366986 0.47249413 0.62499034 0.48484585
		 0.62404549 0.49664277 0.62328005 0.51082391 0.62637967 0.46138149 0.62901527 0.47392523
		 0.63038254 0.48544675 0.62924236 0.49686974 0.62797463 0.51332498 0.63169438 0.46242723
		 0.63432521 0.47459128 0.63630241 0.48389798 0.63471019 0.49679488 0.63695788 0.46324608
		 0.63934237 0.47335058 0.64174289 0.48535922 0.63887519 0.4514789 0.64211768 0.46356279
		 0.64407623 0.47314104 0.64415228 0.452135 0.64723682 0.4641369 0.64877158 0.47741932
		 0.64460683 0.48865294 0.64942282 0.45277166 0.652367 0.46579707 0.65380234 0.48218584
		 0.64728856 0.49984652 0.6546821 0.45339286 0.65759832 0.4675678 0.65972471 0.48328555
		 0.65633959 0.49756414 0.65993625 0.45400271 0.66302359 0.4684093 0.66579008 0.48296934
		 0.66274786 0.49687564 0.64718521 0.50973994 0.65334213 0.50972027 0.66519588 0.4546102
		 0.66846097 0.46890727 0.67125881 0.48361054 0.66826171 0.49757129 0.6592142 0.51010698
		 0.64398181 0.5215171 0.64941531 0.52213877 0.67044562 0.45522988 0.6737479 0.46965966
		 0.67629778 0.48472068 0.67323738 0.49898377 0.66445088 0.5113759 0.65469784 0.52306527
		 0.67568362 0.45586622 0.67875403 0.47051653 0.68106681 0.48578614 0.67805064 0.50035661
		 0.6691761 0.51304948 0.6596207 0.52472496 0.68078172 0.45650837 0.68336684 0.47132438
		 0.68569785 0.48682553 0.68278271 0.50170577 0.67353481 0.51459903 0.6640752 0.52665317
		 0.68561375 0.45714301 0.68777764 0.47211373 0.67771494 0.51608235 0.66796643 0.52834457
		 0.65791386 0.53946233 0.69030714 0.457789 0.67158079 0.5299207 0.66176844 0.5414387
		 0.66537702 0.54331249 0.77663207 0.58778197 0.78240204 0.58741039 0.77100217 0.58814728
		 0.77577865 0.57869548 0.78101814 0.57869893 0.7656495 0.58849561 0.77054167 0.57868987
		 0.77557528 0.56958044 0.78033447 0.56990039 0.7604382 0.58883411 0.76530898 0.57868087
		 0.77069902 0.56924105 0.77677876 0.56057751 0.7818265 0.56126511 0.75523579 0.58917296
		 0.76008177 0.57866877 0.76558769 0.56887782 0.77169371 0.55986774 0.77874529 0.55173302
		 0.78419852 0.55286193 0.75004458 0.58951235 0.754861 0.57865465 0.76036012 0.568501
		 0.76653469 0.55913824 0.77337205 0.55060709 0.74486744 0.58985263 0.74964809 0.57863986
		 0.75513196 0.56812191 0.76133645 0.55839944 0.76815712 0.5495069 0.73970819 0.59019327
		 0.74444437 0.57862586 0.74990177 0.56774282 0.75613427 0.55765963 0.76301861 0.54842013
		 0.73457205 0.59053171 0.73925173 0.57861513 0.74466765 0.56736624 0.75092643 0.55692184
		 0.75787628 0.54733324 0.72914934 0.591003 0.73407161 0.57861203 0.73942649 0.56699502
		 0.74571121 0.55618888 0.75272948 0.54624867 0.72313625 0.59173191 0.72891343 0.57801151
		 0.73417401 0.5666334 0.74048626 0.55546385 0.74757826 0.54516822 0.71687394 0.59260815
		 0.72377586 0.5761413 0.72932845 0.56513929 0.7352494 0.5547505 0.74242282 0.54409295
		 0.71864414 0.57356876 0.72532785 0.56126523 0.73039937 0.55328125 0.73726481 0.54302257
		 0.72054255 0.56018984 0.72640872 0.5501883 0.73222184 0.54177016 0.72216511 0.5482803
		 0.72741961 0.54012382 0.73497903 0.53017724 0.71677101 0.56274992 0.71640414 0.55067122;
	setAttr ".uvst[0].uvsp[1000:1249]" 0.72253382 0.53876269 0.729918 0.5287751 0.71067029
		 0.57284749 0.71015322 0.5535301 0.71721798 0.53844351 0.72485948 0.52737075 0.70281291
		 0.56760031 0.70427871 0.55253768 0.71176279 0.53822362 0.71980399 0.5259642 0.70768511
		 0.58258665 0.70179582 0.5805071 0.69698417 0.56470716 0.69875342 0.55007476 0.70646918
		 0.53705478 0.71475112 0.52455425 0.70698011 0.59521407 0.70158017 0.5940004 0.69607544
		 0.57886845 0.69156414 0.5634321 0.69345057 0.54871428 0.70128357 0.53552639 0.70969754
		 0.52314007 0.69623351 0.59310359 0.69069076 0.57827902 0.68642139 0.56301886 0.68837869
		 0.54794711 0.69613552 0.53427321 0.70464486 0.52172679 0.69100434 0.5930196 0.68566865
		 0.57824397 0.68144339 0.56261241 0.68356687 0.54721975 0.69119531 0.53320652 0.69959319
		 0.52031589 0.68614078 0.59335262 0.6810388 0.57820481 0.67654824 0.56220198 0.67888725
		 0.54650891 0.68663138 0.53222281 0.69466501 0.51894289 0.68783367 0.60801291 0.68189764
		 0.59364021 0.67660332 0.57815617 0.68225658 0.53128183 0.68998271 0.51764297 0.68351007
		 0.60860336 0.67796248 0.59390783 0.6854232 0.51638258 0.67947638 0.60916626 0.36450166
		 0.0096073747 0.36627796 0.0039091706 0.36664248 0.0040262341 0.3648681 0.0097182393
		 0.36282119 0.015334666 0.36318943 0.015439332 0.36021838 0.024489939 0.36058658 0.024594605
		 0.061817348 0.010300398 0.064296842 0.014915824 0.064037681 0.015054762 0.061564982
		 0.01043576 0.0715096 0.022016048 0.071239829 0.022164285 0.060304821 0.0039089322
		 0.060057759 0.0040433407 0.41842777 0.018087983 0.41937259 0.012934685 0.41974917
		 0.013003767 0.41880432 0.018157005 0.42139021 0.0039089322 0.42176035 0.004006803
		 0.4328078 0.0039095879 0.43542984 0.0084455013 0.43515396 0.0086048245 0.43253914
		 0.0040646195 0.43987033 0.013944268 0.43958494 0.014110386 0.44261909 0.020486653
		 0.44232842 0.0206545 0.44513366 0.02545476 0.44483629 0.025625885 0.44812635 0.030157328
		 0.44782031 0.030333817 0.45586005 0.042349041 0.4555321 0.042537928 0.35316268 0.027169883
		 0.35445854 0.020631492 0.35483411 0.020705819 0.35353819 0.02724427 0.35601735 0.013557076
		 0.3563894 0.013647318 0.35882312 0.0039092898 0.35918555 0.0040326118 0.46036699
		 0.011048436 0.46053928 0.0039095283 0.460922 0.0039188862 0.46074972 0.011057675
		 0.46029639 0.014416873 0.46067917 0.01442349 0.4601739 0.021911442 0.46055669 0.021917224
		 0.46027297 0.029842615 0.46065548 0.029827356 0.46080709 0.037756503 0.4611882 0.037720263
		 0.33760545 0.0039076805 0.34042063 0.0085844994 0.34009433 0.0087805986 0.3372874
		 0.004098773 0.34335947 0.013446987 0.3430264 0.013646901 0.3462221 0.018364668 0.34587947
		 0.018570065 0.34835455 0.02191633 0.3480055 0.022125483 0.2496793 0.0089201331 0.25121111
		 0.0039096475 0.25157723 0.004021585 0.25004539 0.0090321302 0.0680601 0.0039079785
		 0.071064293 0.0087262988 0.070696712 0.0089549422 0.067701399 0.0041311979 0.075228989
		 0.015406013 0.07484895 0.015642583 0.71031713 0.21774757 0.69940466 0.21896517 0.69938773
		 0.21858272 0.7102493 0.21737081 0.68846285 0.218714 0.6884973 0.21833271 0.67765319
		 0.21699995 0.67773837 0.21662673 0.66718048 0.21385628 0.66731495 0.21349782 0.65713
		 0.20930228 0.65731084 0.20896482 0.64780819 0.20347258 0.64803237 0.20316228 0.63934648
		 0.1964525 0.63961005 0.19617486 0.6318137 0.18828905 0.63211161 0.18804863 0.62569177
		 0.18056881 0.62602627 0.18041092 0.62120432 0.17310414 0.62156403 0.1729908 0.61832267
		 0.16489729 0.61869872 0.16483325 0.61716288 0.15627265 0.61754555 0.15626115 0.61775762
		 0.14760904 0.618137 0.14765055 0.62009597 0.13922952 0.62046218 0.13932155 0.6240871
		 0.13147771 0.62443113 0.13161607 0.62962174 0.12447284 0.6299355 0.12465125 0.63653499
		 0.11839327 0.63681215 0.11860439 0.64460105 0.11345997 0.64483589 0.11369535 0.65364051
		 0.10980444 0.65382862 0.11005342 0.66337329 0.1073688 0.66353613 0.10761659 0.6731571
		 0.10546125 0.67331707 0.10570189 0.68291563 0.10393783 0.68307328 0.10417205 0.69266123
		 0.10275042 0.69281691 0.10297914 0.70240033 0.10186097 0.70255429 0.10208461 0.34992883
		 0.011473954 0.35126778 0.0039097071 0.35164127 0.0039938688 0.35030848 0.011523068
		 0.24080876 0.003908217 0.24475926 0.013293684 0.24451321 0.013482571 0.24056572 0.0040970445
		 0.44870842 0.018253863 0.45109421 0.0039095879 0.45146585 0.0040015578 0.4490898
		 0.018287122 0.37138987 0.025971234 0.37371179 0.0039097071 0.37408388 0.0039996505
		 0.37177256 0.025960565 0.99071562 0.026015341 0.99052632 0.0039093494 0.99090612
		 0.0039568543 0.99109459 0.025961399 0.038339347 0.045535207 0.032991171 0.058180451
		 0.032667071 0.057952404 0.037983686 0.045376182 0.027762443 0.06631887 0.027461767
		 0.066081941 0.042535812 0.026637077 0.042156339 0.026581824 0.022117645 0.072854578
		 0.02183944 0.072591543 0.043075889 0.01297754 0.042693406 0.012998402 0.42800885
		 0.020163774 0.42724738 0.0083528161 0.42763028 0.0083517432 0.42838827 0.020107627
		 0.42725277 0.0039096475 0.42763573 0.0039184093 0.42965746 0.030297041 0.43002802
		 0.030187666 0.43309906 0.042621434 0.43344957 0.042444348 0.44116718 0.059484184
		 0.4414767 0.059259057 0.4489066 0.068636 0.44918016 0.068368196 0.46361503 0.053157032
		 0.46398443 0.053056598 0.2050522 0.01357919 0.18059242 0.0042771697 0.18079865 0.0039086342
		 0.20525889 0.013195217 0.72597778 0.019551516 0.72535008 0.0039095879 0.72573251
		 0.0039268732 0.72635758 0.019503534 0.5790655 0.94326043 0.56812125 0.94355524 0.56813663
		 0.94317257 0.57902956 0.94287932 0.55718958 0.94238043 0.5572558 0.94200349 0.58987188
		 0.94150352 0.58978528 0.94113064 0.60043943 0.93829441 0.60030413 0.93793631 0.61088312
		 0.93356228 0.61070317 0.93322444 0.62016618 0.92778432 0.61994255 0.92747366 0.62862062
		 0.92079329 0.62835747 0.92051524 0.63609493 0.91270781 0.63579714 0.91246724;
	setAttr ".uvst[0].uvsp[1250:1285]" 0.64267159 0.90131843 0.64234912 0.90105909
		 0.64787984 0.88692868 0.6475262 0.88674629 0.65126884 0.87155354 0.65089476 0.87145436
		 0.65269911 0.85560095 0.65231645 0.85558903 0.65212947 0.83958936 0.65175056 0.83966535
		 0.64957839 0.82399434 0.64921534 0.82415515 0.64514965 0.80921924 0.64481342 0.80945921
		 0.63901091 0.79557425 0.63871062 0.79588532 0.63139838 0.78339386 0.63114154 0.78376615
		 0.62257516 0.77298391 0.62236828 0.77340567 0.61276901 0.7645843 0.6126169 0.76504141
		 0.60232532 0.75811434 0.60220444 0.75857985 0.59175444 0.75221455 0.59163952 0.75267422
		 0.5811187 0.74663216 0.58100969 0.74708581 0.57042229 0.74140358 0.57031965 0.74184942
		 0.004247725 0.0039079785 0.0082879663 0.013062656 0.0079525113 0.013221264 0.00390625
		 0.0040712357 0.22699712 0.028515875 0.22718298 0.028153896;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 1044 ".vt";
	setAttr ".vt[0:165]"  -2.16503263 3.54352593 2.61655116 -2.22673583 2.71314049 2.55670452
		 -2.050861359 1.89986062 2.51346445 -1.71132588 1.16641486 2.28857827 -1.13321698 0.55856997 2.22455025
		 -0.56129164 0.15516846 2.12516785 0.062032752 0.0029353376 1.97008514 0.70741969 0.1157383 2.043238163
		 1.26713836 0.48011866 2.10184503 1.67929554 1.053573847 2.16568041 1.85995173 1.76651859 2.32696152
		 1.94662356 2.50841117 2.45190072 2.011900902 3.25147128 2.50714207 -2.28146315 3.55166292 2.23395777
		 -2.32831526 2.72023916 2.22291231 -2.15915918 1.90742946 2.1575954 -1.79381096 1.1721797 2.017530441
		 -1.24611151 0.56645983 1.85357654 -0.64483988 0.15894938 1.6968118 0.043019809 0.0031648653 1.60216081
		 0.74524951 0.11653316 1.62307203 1.35372198 0.48462 1.71633315 1.79066133 1.062351584 1.84276867
		 2.019699574 1.78245139 1.96590281 2.14903378 2.53248501 2.074243546 2.22614527 3.2811656 2.1706636
		 -2.43777251 3.27167773 1.85737228 -2.44262385 2.72822785 1.84729099 -2.27442789 1.91548526 1.77882028
		 -1.90539205 1.17997777 1.65087271 -1.36203682 0.5745616 1.47264314 -0.72240818 0.16245969 1.29911518
		 0.022609757 0.0034112593 1.20720053 0.78139853 0.11729269 1.22157347 1.4412179 0.4891687 1.32675827
		 1.9183172 1.072413325 1.47262287 2.18113065 1.79855168 1.60103917 2.33965731 2.55515695 1.71857822
		 2.40386772 2.98463988 1.7848624 -2.51432419 3.5679369 1.46877122 -2.55905461 2.73636484 1.46469748
		 -2.39085841 1.92362225 1.39622676 -2.021822691 1.18811476 1.26827919 -1.47846746 0.58269858 1.090049624
		 -0.79897994 0.16592491 0.90652788 0.0019668129 0.0036604649 0.8077336 0.81726748 0.11804634 0.82318556
		 1.52886617 0.49372536 0.93650568 2.048688173 1.082689047 1.094604373 2.34284258 1.8146801 1.23554063
		 2.5283165 2.57759523 1.36657786 2.65463328 3.34055424 1.49770713 -2.65983868 3.38740063 1.091015697
		 -2.67548513 2.74450183 1.082104087 -2.50728893 1.93175924 1.013633251 -2.13825321 1.19625187 0.88568568
		 -1.59489799 0.59083563 0.70745617 -0.87555176 0.16939011 0.51394051 -0.018676132 0.0039096703 0.40826657
		 0.85313642 0.11879998 0.42479762 1.61651444 0.49828199 0.54625309 2.17905903 1.092964768 0.71658605
		 2.50455475 1.8308084 0.87004209 2.71697569 2.60003352 1.014577389 2.86887741 3.37024856 1.16122866
		 -2.76303196 3.58531857 0.65151227 -2.79191566 2.75263906 0.69951051 -2.62371945 1.93989635 0.63103974
		 -2.25468373 1.20438886 0.50309217 -1.7133739 0.60011917 0.322788 -0.958175 0.17424418 0.10946217
		 0.0064930799 0.0031745357 0.020662399 0.89617592 0.1216843 0.029851569 1.7041626 0.50283861 0.15600048
		 2.30943012 1.10324049 0.33856764 2.66626668 1.84693682 0.50454354 2.90563512 2.62247181 0.66257697
		 3.083121538 3.39994287 0.82475019 -2.84248734 3.59087133 0.39042032 -2.90834641 2.76077604 0.31691706
		 -2.74015021 1.94803333 0.24844624 -2.37600851 1.21974051 0.1221415 -1.83388317 0.59632915 -0.13014382
		 -1.079229832 0.18776235 -0.36587861 0.16161776 0.0051403567 -0.32224926 0.96576023 0.13218877 -0.34966958
		 1.79181087 0.50739527 -0.23425214 2.43980098 1.11351633 -0.039450731 2.82797861 1.86306512 0.139045
		 3.12275791 2.66349697 0.26993406 3.29288101 3.42901564 0.49531525 -2.9467659 3.64824104 0.014662188
		 -3.024776936 2.76891303 -0.065676443 -2.85658073 1.95617032 -0.13414726 -2.51661181 1.26417089 -0.25232387
		 -2.15711164 0.82877696 -0.3187117 -1.22061932 0.22062285 -0.62575185 -0.36967158 0.025245804 -0.61331046
		 0.9391318 0.11579068 -0.75904983 1.87945914 0.51195186 -0.62450475 2.57017207 1.12379205 -0.41746911
		 2.98969078 1.87919354 -0.22645353 3.2829535 2.66734838 -0.041423835 3.53103495 3.53900218 0.17140502
		 -3.12984061 3.38382554 -0.43882388 -3.14120746 2.77705002 -0.44826949 -2.97301126 1.96430731 -0.51674032
		 -2.60886955 1.2360146 -0.64304501 -2.099750519 0.65718722 -0.81029028 -1.19724548 0.1882121 -1.051573873
		 -0.13268612 0.0059260251 -1.17748344 0.99139583 0.12055846 -1.16748166 1.9671073 0.51650852 -1.014756918
		 2.70054269 1.13406777 -0.79548705 3.15140247 1.89532185 -0.59195161 3.47161245 2.68978667 -0.39342383
		 3.7034297 3.48591781 -0.14946666 -3.26661372 3.056232452 -0.82236683 -3.25521326 2.78501749 -0.82289559
		 -3.076358557 1.97153008 -0.85634214 -2.72166896 1.23702526 -1.031431317 -2.17523241 0.63139361 -1.19953513
		 -1.2560519 0.18660946 -1.43690264 -0.12172962 0.0051537515 -1.58594835 1.031827569 0.12255447 -1.55988216
		 2.054755449 0.52106518 -1.40500975 2.83328938 1.14453077 -1.18039382 3.31409693 1.91154826 -0.95967031
		 3.66370964 2.71263385 -0.75183851 3.87731004 3.51001763 -0.42255235 -3.32933831 3.62489605 -1.20938289
		 -3.35467124 2.79196882 -1.14971578 -3.17556381 1.97846305 -1.18233252 -2.84693956 1.24577987 -1.44307315
		 -2.27893329 0.638641 -1.54029894 -1.31611276 0.18932751 -1.7448374 -0.1412441 0.0053893342 -1.9635781
		 1.0631212 0.12321197 -1.90745389 2.14240384 0.52562171 -1.7952621 2.9802897 1.1561172 -1.60662997
		 3.48268437 1.92836201 -1.34070909 3.87643313 2.73793435 -1.14873791 4.15434217 3.54841447 -0.85764176
		 -2.5794003 1.56714416 0.1914262 -1.77772129 0.60763162 0.12526593 -2.14206171 0.91651362 0.04449793
		 -1.015134692 0.18021999 -0.12238895 -1.54197979 0.39521587 -0.23357016 0.13799736 0.0042278999 -0.14179187
		 -0.35817337 0.026088897 -0.3632488 0.93644959 0.12860352 -0.15888774 0.6139102 0.052194115 -0.31934398
		 1.74798667 0.50511688 -0.039125595 1.38052428 0.28252551 -0.31484544 2.37461543 1.10837817 0.14955869
		 2.14747381 0.78734624 -0.13916501 2.74712253 1.85500073 0.32179439 2.66469002 1.47633135 0.055203632
		 3.028164148 2.65220952 0.44578788 2.96906948 2.25343585 0.22363108 3.21181011 3.066827536 0.40496212
		 3.23191977 2.90343428 0.25061736 -2.96656156 2.76484442 0.12562031 -3.029188156 3.18609905 -0.055461068
		 -2.92183113 3.59641647 0.12969416 -2.79836535 1.95210183 0.057149488;
	setAttr ".vt[166:331]" -2.96689272 2.35645556 -0.092063613 -2.44878721 1.24554121 -0.064261138
		 -2.69583082 1.57528114 -0.19116707 -2.088006735 0.79941231 -0.18354166 -2.36918879 1.058385849 -0.30156395
		 0.95493621 0.12434071 -0.55193806 0.36097792 0.017908495 -0.74700141 0.051442571 0.0030455661 -0.45118341
		 1.83563507 0.50967354 -0.42937845 1.44317901 0.2848368 -0.70990103 2.50498652 1.11865401 -0.22845992
		 2.25782418 0.79463494 -0.52357304 2.90883446 1.87112904 -0.043704357 2.81211805 1.48960602 -0.31639916
		 3.21735168 2.67478442 0.094079807 3.14441347 2.27259779 -0.1353776 3.40448785 3.44448447 0.32003266
		 3.40532947 3.0630548 0.05457538 -3.082992077 2.77298141 -0.25697297 -3.14561868 3.19423604 -0.43805456
		 -3.03826189 3.6045537 -0.25289935 -2.91479588 1.96023881 -0.32544377 -3.083323479 2.36459255 -0.47465712
		 -2.56521773 1.25367832 -0.44685441 -2.81226158 1.58341825 -0.57376057 -2.1554966 0.75868398 -0.58206803
		 -2.37492299 0.93278784 -0.72068876 -1.84344673 0.5334546 -0.47272167 -1.20324898 0.20159072 -0.84094626
		 -1.70980299 0.39603943 -0.93077284 -0.752859 0.086482272 -0.66809291 -0.2127617 0.0102336 -0.94083911
		 -0.67299747 0.061260447 -1.13174593 0.95833498 0.1164745 -0.96440428 0.4336822 0.024334127 -1.19193494
		 1.92328322 0.51423013 -0.8196308 1.50583375 0.28714809 -1.10495687 2.63535738 1.12892973 -0.6064781
		 2.36817479 0.80192363 -0.90798128 3.070546389 1.88725746 -0.40920267 2.95954633 1.50288069 -0.68800217
		 3.3772831 2.67856765 -0.21742383 3.31975746 2.29175997 -0.49438649 3.61873198 3.47417879 -0.016445803
		 3.57741714 3.085203409 -0.23943156 -3.19942284 2.78111863 -0.63956648 -3.26269031 2.9023068 -0.82102865
		 -3.15469241 3.61269069 -0.6354928 -3.031226635 1.96837592 -0.70803726 -3.19813752 2.37261677 -0.85193878
		 -2.66219068 1.23286831 -0.83598483 -2.92970228 1.59162581 -0.95967394 -2.11883569 0.62745219 -1.014214277
		 -2.46834254 0.9149884 -1.11083663 -1.22012484 0.18498361 -1.25270236 -1.77041566 0.38279116 -1.31743908
		 -0.11156937 0.0050310949 -1.38933468 -0.7011503 0.059178147 -1.53064692 1.014546514 0.12219135 -1.3679477
		 0.46275172 0.026570575 -1.59355104 2.010931492 0.51878679 -1.20988345 1.56772733 0.28943127 -1.49521351
		 2.76572824 1.13920546 -0.98449647 2.47986579 0.80930084 -1.29705942 3.23225856 1.90338576 -0.77470124
		 3.10876536 1.51631677 -1.064119458 3.38977027 2.25935483 -0.68469185 3.49723148 2.31115484 -0.85775661
		 3.52078032 2.59215689 -0.59062302 3.79838395 3.11364269 -0.616947 -3.30615449 2.7885778 -0.99028951
		 -3.36554813 3.20960641 -1.16074777 -3.27112293 3.62082767 -1.018086314 -3.11795473 1.97443712 -0.99302793
		 -3.30325294 2.37996292 -1.19735026 -2.78367281 1.24135828 -1.2351774 -3.053204775 1.60025728 -1.36550593
		 -2.22799206 0.63508087 -1.37290502 -2.5847733 0.92312557 -1.49342978 -1.28726172 0.18802187 -1.59691668
		 -1.85312903 0.3878572 -1.62885439 -0.13156748 0.005272516 -1.77632332 -0.74362046 0.0604003 -1.8745811
		 1.047801137 0.12289006 -1.73729789 0.46996468 0.026603807 -1.95946527 2.098579645 0.52334344 -1.60013604
		 1.62505412 0.29154602 -1.85667515 2.90560174 1.15023017 -1.39006793 2.59960008 0.8172093 -1.71415603
		 3.39789939 1.91990602 -1.14907992 3.26873016 1.53072023 -1.46732187 3.76835251 2.72507954 -0.94708133
		 3.68748569 2.33194661 -1.24729407 3.99340177 3.52610803 -0.6048789 4.029826641 3.14343047 -1.012360215
		 -2.22548938 3.12993073 2.58551073 -2.27646446 2.71661544 2.39329457 -2.33201909 3.13737559 2.2354517
		 -2.24122524 3.43999887 2.42843723 -2.16319418 2.30028725 2.54890823 -2.10442924 1.90360451 2.33743906
		 -2.26972389 2.30773234 2.1988492 -1.90668023 1.52012968 2.40199947 -1.75014377 1.1691277 2.16102171
		 -2.00048041344 1.526685 2.093770027 -1.44633079 0.8435629 2.24751711 -1.18941164 0.56249726 2.039893389
		 -1.54013073 0.85011816 1.93928754 -0.84069204 0.32584742 2.18296146 -0.60356408 0.15708147 1.90843499
		 -0.95084453 0.33259404 1.76823854 -0.26089978 0.046509165 2.034615993 0.052642714 0.0030486959 1.78837609
		 -0.30992043 0.047919821 1.63763404 0.39211625 0.026245154 1.98978734 0.72647452 0.11613865 1.83159971
		 0.39980808 0.026280591 1.59958148 1.0011162758 0.26852947 2.077428102 1.31035411 0.48236534 1.909428
		 1.066815615 0.27095306 1.66317558 1.49762702 0.74442375 2.12458897 1.733621 1.057855487 2.0081608295
		 1.59725332 0.75100404 1.77753901 1.7964958 1.39815736 2.24354839 1.93968511 1.77447081 2.1467495
		 1.92959619 1.41014206 1.90805924 1.90726852 2.13739944 2.39762115 2.048810959 2.52056479 2.26123929
		 2.091132879 2.1574924 2.021167278 1.98269594 2.87995553 2.48510551 2.11088538 3.11695838 2.321033
		 2.19412756 2.90716767 2.12388039 -2.38440871 2.72415948 2.03858757 -2.44703531 3.14541388 1.85750568
		 -2.387218 3.5590539 1.88644505 -2.21621251 1.91141665 1.97011673 -2.38474011 2.31577039 1.82090318
		 -1.84717679 1.17590916 1.84216917 -2.11367822 1.53459609 1.72179973 -1.30382156 0.57049304 1.66393971
		 -1.65332854 0.85802925 1.56731713 -0.68412238 0.1607271 1.49540865 -1.054582715 0.3389478 1.37766516
		 0.03293122 0.0032866567 1.4069339 -0.3589412 0.04933048 1.24065113 0.76346397 0.11691584 1.42076719
		 0.40766406 0.026316784 1.20104682 1.39739394 0.48689035 1.52188432 1.12990534 0.27328041 1.2653774
		 1.85313189 1.067275286 1.66163182 1.70607185 0.75819153 1.39846754 2.10027456 1.79048729 1.78378808
		 2.074977636 1.42323244 1.54161525 2.24532771 2.54393768 1.89457822 2.267694 2.17678761 1.6596663
		 2.33326721 3.29601288 2.0024244785 2.37690043 2.78896451 1.75480103 -2.50083923 2.73229647 1.65599406
		 -2.56346583 3.15355086 1.47491229 -2.45610905 3.56386852 1.66006768 -2.33264327 1.91955376 1.58752322
		 -2.50117064 2.32390761 1.43830967 -1.96360743 1.18404615 1.45957565 -2.23010874 1.54273307 1.33920622
		 -1.4202522 0.57863009 1.2813462 -1.76975906 0.86616629 1.18472362;
	setAttr ".vt[332:497]" -0.76069415 0.16419232 1.10282135 -1.15725183 0.34523606 0.99111682
		 0.012288273 0.0035358623 1.0074667931 -0.40796191 0.050741136 0.8436687 0.79933292 0.11766948 1.022379279
		 0.4155474 0.026353102 0.80112445 1.4850421 0.49144697 1.13163173 1.19256008 0.27559167 0.87032163
		 1.98350275 1.077551007 1.28361344 1.81642234 0.76548022 1.014059305 2.26198649 1.80661559 1.41828954
		 2.22240567 1.43650711 1.17001224 2.43398714 2.56637597 1.54257786 2.44303799 2.19594955 1.30065739
		 2.54751134 3.3257072 1.66594613 2.5987947 2.95925021 1.43251777 -2.61188579 2.67706847 1.27041447
		 -2.67989635 3.16168785 1.092319131 -2.62553144 3.056941271 1.28264618 -2.44907379 1.92769074 1.20492971
		 -2.61760116 2.3320446 1.055716634 -2.080038071 1.19218314 1.07698226 -2.34653926 1.55087018 0.95661318
		 -1.53668284 0.58676714 0.89875269 -1.88618958 0.87430328 0.80213064 -0.83726597 0.16765754 0.71023399
		 -1.25992084 0.35152435 0.60456896 -0.0083546722 0.0037850677 0.60799986 -0.45698255 0.052151792 0.44668674
		 0.83520186 0.11842313 0.62399137 0.42343074 0.026389422 0.4012025 1.57269037 0.49600363 0.74137914
		 1.25521469 0.27790296 0.47526625 2.11387372 1.087826729 0.905595 1.92677271 0.77276891 0.62965149
		 2.42369866 1.82274401 1.052790999 2.36983371 1.44978189 0.79840964 2.62264633 2.58881426 1.19057739
		 2.61838174 2.21511173 0.9416489 2.73486257 3.1783464 1.29759812 2.80042839 2.98520136 1.088032365
		 -2.73370051 2.74857044 0.89080709 -2.79632688 3.16982484 0.70972568 -2.68897009 3.5801425 0.89488071
		 -2.56550431 1.93582773 0.82233626 -2.73403168 2.34018159 0.67312312 -2.19646859 1.20032012 0.69438869
		 -2.46296978 1.55900717 0.57401967 -1.65311337 0.59490412 0.51615918 -2.0026202202 0.88244033 0.41953713
		 -0.91383773 0.17112274 0.31764662 -1.37173438 0.36158171 0.20973976 -0.028997617 0.0040342733 0.20853285
		 -0.48294997 0.049406562 0.047584053 0.8710708 0.11917677 0.22560343 0.4621298 0.030450264 0.013070473
		 1.66033864 0.50056022 0.35112655 1.31786942 0.28021425 0.08021041 2.24424481 1.09810245 0.52757663
		 2.037123203 0.78005761 0.24524325 2.58541059 1.83887231 0.68729252 2.51726198 1.46305656 0.42680666
		 2.81130552 2.61125255 0.83857697 2.79372549 2.23427367 0.58263999 2.98791122 3.45504665 1.0068898201
		 3.0020620823 3.011152506 0.74354666 -2.82520533 2.5310955 0.49583033 -2.91275764 3.17796206 0.3271322
		 -2.85002327 2.7552774 0.50815082 -2.68193483 1.94396484 0.43974322 -2.8504622 2.34831858 0.29052964
		 -2.31289911 1.20845723 0.31179568 -2.27804685 3.13360381 2.41280508 -2.21575165 2.30396032 2.37620258
		 -1.95196414 1.52329469 2.25319624 -1.49161458 0.84672761 2.098713636 -0.89630288 0.32925346 1.97358727
		 -0.28541011 0.047214493 1.83612502 0.3959485 0.02626281 1.79537809 1.034183383 0.26974931 1.8689307
		 1.54667425 0.74766332 1.95373213 1.86202264 1.4040575 2.078382969 1.99980915 2.14751267 2.208148
		 2.089111567 2.89365172 2.30329728 -2.38881993 3.14134526 2.048802614 -2.32652473 2.31170201 2.012200117
		 -2.055463076 1.53052795 1.91309679 -1.5951134 0.85396087 1.75861418 -1.0032480955 0.33580366 1.57093954
		 -0.33443081 0.048625149 1.43914258 0.40372238 0.026298624 1.40100825 1.098577857 0.27212477 1.46290565
		 1.65089643 0.75454724 1.5906719 2.0012633801 1.4165951 1.72741699 2.18002176 2.16720676 1.83917093
		 2.29634404 2.92032361 1.94924653 -2.50525045 3.14948249 1.66620922 -2.44295526 2.319839 1.6296066
		 -2.1718936 1.53866494 1.53050327 -1.71154392 0.86209792 1.37602067 -1.10591722 0.34209192 1.18439114
		 -0.38345152 0.050035808 1.042160153 0.41160572 0.026334943 1.0010858774 1.16123259 0.27443603 1.067849755
		 1.76124704 0.76183587 1.20626366 2.14869165 1.42986977 1.35581398 2.35536575 2.18636894 1.48016202
		 2.49797773 2.94627476 1.60476077 -2.62276912 2.83042312 1.27698791 -2.55938601 2.32797599 1.24701321
		 -2.28832412 1.54680204 1.14790976 -1.82797456 0.87023497 0.99342722 -1.20858634 0.34838021 0.79784292
		 -0.43247223 0.051446464 0.64517772 0.41948909 0.026371263 0.60116345 1.22388744 0.27674732 0.67279392
		 1.87159753 0.76912457 0.82185543 2.29611969 1.44314456 0.98421091 2.53070974 2.20553088 1.12115312
		 2.69961143 2.9722259 1.26027513 -2.73811173 3.16575646 0.9010222 -2.67581654 2.33611298 0.86441964
		 -2.40475464 1.55493903 0.76531625 -1.9444052 0.87837195 0.6108337 -1.31125546 0.3546685 0.41129461
		 -0.48149294 0.05285712 0.24819531 0.42737243 0.026407581 0.20124106 1.28654218 0.27905861 0.27773809
		 1.98194802 0.77641326 0.43744716 2.44354796 1.45641923 0.61260796 2.70605373 2.22469306 0.76214421
		 2.90124536 2.99817705 0.91578931 -2.83906341 2.63842535 0.5023303 -2.79224706 2.34424996 0.48182663
		 -2.52118516 1.56307602 0.38272324 -2.0608356 0.886509 0.22824068 -1.45138848 0.37625408 -0.0080876816
		 -0.43522555 0.03854683 -0.15712273 0.56126505 0.04447116 -0.15056084 1.34919679 0.28136986 -0.11731727
		 2.092298508 0.7837019 0.05303935 2.590976 1.4696939 0.24100536 2.88139749 2.243855 0.40313575
		 3.13342905 2.89110732 0.42424816 -2.97097278 3.18203044 0.13583568 -2.90867758 2.35238695 0.099233128
		 -2.63761568 1.57121313 0.00012974029 -2.26757836 1.000026464462 -0.12462786 0.49876329 0.033552431 -0.52506888
		 1.41185153 0.28368115 -0.51237309 2.20264912 0.79099059 -0.33136892 2.73840404 1.48296869 -0.13059765
		 3.056741476 2.26301694 0.044126842 3.33422709 3.0692029 0.187323 -3.087403297 3.19016743 -0.24675782
		 -3.025108099 2.36052418 -0.28336036 -2.75404644 1.57935011 -0.38246375 -2.38400888 1.0081634521 -0.50722134
		 -1.76943195 0.45303285 -0.70529014 -0.70569891 0.071449235 -0.9047491 0.36818016 0.018382251 -0.97193855
		 1.47450638 0.28599244 -0.90742898 2.31299949 0.79827929 -0.71577716 2.88583231 1.49624336 -0.50220066
		 3.23208523 2.28217912 -0.31488204 3.50614643 3.076030493 -0.11766749;
	setAttr ".vt[498:663]" -3.20383382 3.19830441 -0.62935132 -3.14153862 2.36866117 -0.66595387
		 -2.87047696 1.5874871 -0.76505727 -2.4101274 0.91092008 -0.91953981 -1.72193182 0.37982163 -1.13489807
		 -0.67757571 0.05849975 -1.33973396 0.45890582 0.026552858 -1.39844811 1.53716111 0.2883037 -1.30248475
		 2.4233501 0.80556798 -1.10018539 3.033260345 1.50951815 -0.87380368 3.31090879 2.077179432 -0.73112059
		 3.45866346 2.42584324 -0.64165711 -3.31379867 3.2059896 -0.99069774 -3.25150347 2.37634635 -1.027300358
		 -2.99094868 1.59590662 -1.16092992 -2.52655792 0.91905707 -1.30213332 -1.81319773 0.38541147 -1.47851336
		 -0.72285324 0.059802689 -1.70640302 0.46640608 0.026587412 -1.77893746 1.59677136 0.2905027 -1.67834401
		 2.53906274 0.81321079 -1.50327289 3.18785238 1.52343786 -1.26346362 3.59129357 2.32143426 -1.050344825
		 3.91921186 3.12919378 -0.82337826 -2.15130496 3.54084659 2.61231661 -2.21153045 3.1292007 2.58124709
		 -2.26408815 3.13287377 2.40854168 -2.22741294 3.43782544 2.42418766 -2.2127974 2.71437311 2.55248904
		 -2.26252627 2.71784806 2.38907909 -2.31437707 2.72147179 2.21869683 -2.31806016 3.13664579 2.2311883
		 -2.26773548 3.54898357 2.22972322 -2.14952826 2.30345988 2.54481673 -2.20208573 2.30713296 2.37211132
		 -2.037714243 1.90491652 2.50957108 -2.091282368 1.90866029 2.33354568 -2.14601231 1.91248524 2.15370202
		 -2.25605798 2.31090498 2.1947577 -1.89428937 1.5269773 2.39837432 -1.93957329 1.53014243 2.24957108
		 -1.69991481 1.17493069 2.2852869 -1.7387327 1.17764354 2.15773034 -1.78240013 1.18069553 2.014239073
		 -1.98808956 1.53353262 2.090144873 -1.43610549 0.85359323 2.24461865 -1.48138928 0.856758 2.095815182
		 -1.12436199 0.56993377 2.22209716 -1.18055665 0.57386112 2.0374403 -1.23725641 0.5778237 1.85112345
		 -1.52990556 0.86014855 1.93638909 -0.83484304 0.33862951 2.18161821 -0.89024711 0.34200975 1.97218871
		 -0.55705041 0.16890651 2.12446308 -0.59917653 0.17080615 1.90770149 -0.64030939 0.17266099 1.69605029
		 -0.94458598 0.34532499 1.76678586 -0.25848684 0.060865048 2.034369469 -0.28292802 0.061566386 1.83586979
		 0.062447846 0.017543215 1.97007287 0.053060267 0.017656514 1.7883637 0.04343988 0.017772622 1.60214818
		 -0.3073692 0.062267721 1.63737035 0.39050308 0.040723376 1.98975706 0.39427271 0.040740456 1.79534662
		 0.70389533 0.12971231 2.042948246 0.72281235 0.13010687 1.83129752 0.7414515 0.13049568 1.62275755
		 0.39806923 0.040757664 1.5995487 0.99586797 0.28164929 2.076674461 1.028733373 0.28285417 1.86814523
		 1.26042187 0.49207187 2.10047984 1.30339432 0.49429297 1.90800798 1.34651828 0.49652195 1.71485817
		 1.061166525 0.28404319 1.66235852 1.48975849 0.75494725 2.12253499 1.53854346 0.75815141 1.95160258
		 1.67066038 1.062466502 2.16295123 1.72470593 1.066702724 2.0053341389 1.78145289 1.071150899 1.83983982
		 1.58885205 0.76145566 1.77533138 1.78753912 1.40528953 2.24025846 1.85273862 1.41112804 2.074961662
		 1.85119355 1.77272356 2.3233695 1.93055475 1.78059745 2.14299011 2.010195494 1.78849924 1.9619751
		 1.91997457 1.41714907 1.90450191 1.89889884 2.14352989 2.39386964 1.99105 2.15355206 2.20420194
		 1.93861079 2.51447225 2.44800115 2.040408134 2.5265255 2.2571249 2.1402483 2.53834701 2.069918394
		 2.08198905 2.1634419 2.017028809 1.97499943 2.8859489 2.48106074 2.081044912 2.89954019 2.29902864
		 2.0045003891 3.25740123 2.50296164 2.10300612 3.12280488 2.31667447 2.21806407 3.28688478 2.16603255
		 2.18569589 2.91295314 2.11939073 -2.374861 3.14061546 2.044539213 -2.37349033 3.55637455 1.88221049
		 -2.37047052 2.72539186 2.034372091 -2.4286859 2.72946048 1.84307563 -2.43307638 3.14468408 1.85324228
		 -2.42385697 3.27035379 1.85310936 -2.31285882 2.31487465 2.0081088543 -2.20306563 1.91647255 1.96622336
		 -2.26128078 1.92054105 1.7749269 -2.3710742 2.31894302 1.8168118 -2.043071985 1.53737557 1.90947163
		 -1.83576572 1.184425 1.83887768 -1.8939811 1.18849373 1.64758122 -2.10128736 1.54144371 1.71817458
		 -1.5848881 0.86399126 1.75571573 -1.29496658 0.58185691 1.66148663 -1.35318184 0.5859254 1.47019017
		 -1.64310336 0.86805964 1.56441879 -0.99679476 0.3485103 1.56943476 -0.67945594 0.17442629 1.49462068
		 -0.71760917 0.17614676 1.29830134 -1.047938585 0.3516306 1.37610936 -0.33181044 0.062969059 1.43887031
		 0.033353928 0.01789435 1.40692115 0.023035171 0.018018886 1.20718777 -0.35625169 0.063670397 1.24037027
		 0.40191957 0.040775113 1.40097427 0.75953418 0.13087282 1.42044079 0.77733898 0.13124423 1.22123551
		 0.40579686 0.040792681 1.20101166 1.092735052 0.28520051 1.46205783 1.38994443 0.49876642 1.52035403
		 1.43352199 0.50101888 1.32517254 1.12387133 0.286342 1.26449943 1.64220846 0.76496011 1.58838141
		 1.84360147 1.076022267 1.65859091 1.90845144 1.081105709 1.46946514 1.69708884 0.76856458 1.39609194
		 1.99128366 1.42353475 1.72371554 2.090394497 1.79645598 1.77969098 2.17087317 1.80444098 1.59677196
		 2.064629555 1.43010283 1.53776574 2.17050385 2.173069 1.83484566 2.23617458 2.54970527 1.89005053
		 2.33014393 2.56083155 1.71385205 2.25780678 2.18256354 1.65515661 2.28755689 2.92600822 1.94454181
		 2.32484579 3.30162644 1.99756801 2.39478135 2.99021435 1.77992165 2.36761951 2.79458261 1.74995399
		 -2.49129152 3.14875245 1.6619457 -2.44238138 3.56118917 1.65583313 -2.48690104 2.73352909 1.65177858
		 -2.54511642 2.73759747 1.46048212 -2.5495069 3.15282106 1.47064877 -2.50059652 3.56525779 1.46453655
		 -2.42928934 2.32301164 1.62551534 -2.31949615 1.92460954 1.58362997 -2.37771153 1.92867815 1.39233339
		 -2.48750472 2.32708025 1.43421829 -2.15950274 1.54551268 1.52687812 -1.95219624 1.19256198 1.45628417
		 -2.010411739 1.19663072 1.26498771 -2.21771789 1.54958081 1.33558106 -1.70131862 0.87212825 1.37312233
		 -1.41139722 0.58999395 1.27889311 -1.46961248 0.59406245 1.087596655;
	setAttr ".vt[664:829]" -1.75953388 0.87619662 1.18182528 -1.099082232 0.35475093 1.18278456
		 -0.75576264 0.17786728 1.10198152 -0.79391587 0.17958775 0.90566212 -1.150226 0.35787123 0.98945916
		 -0.38069287 0.064371735 1.041870832 0.012716386 0.018143425 1.0074537992 0.0023976269 0.018267963 0.80772042
		 -0.40513411 0.065073065 0.8433708 0.40967411 0.040810253 1.0010493994 0.79514366 0.13161558 1.022029638
		 0.81294847 0.13198699 0.8228243 0.41355139 0.040827826 0.80108672 1.1550076 0.28748348 1.0669415
		 1.47709942 0.50327116 1.12999046 1.52067697 0.50552356 0.93480885 1.18614399 0.28862494 0.86938298
		 1.75196898 0.77216911 1.20380282 1.97330129 1.086188674 1.28033876 2.038151264 1.091272116 1.091212869
		 1.80684936 0.77577364 1.011513233 2.13797522 1.43667102 1.3518163 2.25135183 1.81242537 1.41385245
		 2.33183026 1.82041037 1.23093343 2.21132112 1.44323909 1.16586637 2.3451097 2.19205856 1.47546804
		 2.42411351 2.57195807 1.53765321 2.51808286 2.58308434 1.36145484 2.43241239 2.20155311 1.29577887
		 2.48848963 2.95176101 1.59963191 2.53840947 3.33111024 1.66063869 2.64519119 3.3458519 1.49217427
		 2.58895636 2.96463752 1.42717671 -2.6088047 2.83123207 1.27275562 -2.61155438 3.056684732 1.27838731
		 -2.59797287 2.67859912 1.26621294 -2.66154695 2.74573445 1.077888608 -2.66593742 3.16095805 1.08805573
		 -2.64597392 3.38560867 1.086758256 -2.54571986 2.33114862 1.24292183 -2.43592691 1.93274665 1.20103645
		 -2.49414206 1.93681514 1.0097398758 -2.60393524 2.33521724 1.051625252 -2.27593327 1.55364966 1.14428461
		 -2.068626881 1.20069897 1.073690653 -2.12684226 1.2047677 0.88239425 -2.33414841 1.5577178 0.95298803
		 -1.81774926 0.8802653 0.99052876 -1.52782774 0.59813094 0.89629966 -1.586043 0.60219944 0.70500314
		 -1.8759644 0.88433367 0.79923224 -1.20136964 0.36099154 0.79613429 -0.83206934 0.18130827 0.7093423
		 -0.87022257 0.18302874 0.5130229 -1.25251329 0.36411184 0.60280937 -0.42957529 0.065774404 0.64487129
		 -0.0079211574 0.0183925 0.60798657 -0.018239917 0.018517038 0.40825316 -0.45401648 0.066475742 0.44637176
		 0.41742867 0.040845394 0.60112447 0.83075309 0.13235833 0.62361842 0.84855795 0.13272974 0.42441308
		 0.42130592 0.040862966 0.40116227 1.21728027 0.28976643 0.67182505 1.56425452 0.5077759 0.73962677
		 1.60783207 0.5100283 0.54444522 1.24841642 0.29090792 0.47426704 1.86172962 0.77937818 0.81922418
		 2.10300088 1.0963552 0.90208656 2.16785097 1.10143864 0.71296078 1.91660976 0.78298265 0.62693506
		 2.28466678 1.44980717 0.97991693 2.41230893 1.82839477 1.048013806 2.4927876 1.83637977 0.86509484
		 2.35801244 1.45637524 0.79396749 2.51971531 2.21104836 1.11609042 2.61205244 2.59421086 1.185256
		 2.70602202 2.60533714 1.0090575218 2.60701799 2.22054291 0.93640167 2.68942261 2.97751403 1.25472188
		 2.72489214 3.18358135 1.29193127 2.85875487 3.37533545 1.15524495 2.78988886 2.9903903 1.082267165
		 -2.7241528 3.16502643 0.89675874 -2.67524242 3.57746315 0.8906461 -2.71976233 2.74980307 0.88659161
		 -2.77797747 2.75387144 0.6952951 -2.78236794 3.16909504 0.70546222 -2.74930429 3.58263922 0.64727771
		 -2.66215062 2.33928561 0.86032832 -2.55235744 1.94088364 0.81844294 -2.61057258 1.94495213 0.62714642
		 -2.72036576 2.34335423 0.6690318 -2.39236379 1.56178665 0.76169115 -2.1850574 1.20883608 0.6910972
		 -2.24327302 1.21290481 0.49980077 -2.45057893 1.56585479 0.57039458 -1.93417978 0.88840228 0.60793531
		 -1.64425838 0.60626799 0.51370615 -1.70451283 0.61147785 0.32033297 -1.99239492 0.89247066 0.41663873
		 -1.30365705 0.36723217 0.40948403 -0.90837604 0.18474926 0.31670311 -0.95255244 0.18785031 0.10848457
		 -1.36390162 0.37409955 0.20785901 -0.47845772 0.06717708 0.24787177 -0.028558701 0.018641574 0.20851928
		 0.0066758799 0.017787362 0.020661065 -0.47997591 0.063747063 0.047275893 0.42518321 0.040880535 0.20119956
		 0.86636257 0.13310108 0.22520722 0.89129841 0.13559061 0.029435175 0.45970273 0.044898592 0.013013564
		 1.27955282 0.29204938 0.2767086 1.65140951 0.51228058 0.3492631 1.69498718 0.51453304 0.15408155
		 1.31068909 0.29319087 0.079150617 1.97149014 0.78658718 0.43464553 2.23270059 1.10652161 0.52383441
		 2.29755068 1.11160505 0.3347086 2.026370287 0.79019171 0.24235643 2.4313581 1.46294332 0.60801756
		 2.57326603 1.84436429 0.68217528 2.6537447 1.85234916 0.49925631 2.50470376 1.46951151 0.42206815
		 2.69432116 2.23003793 0.75671273 2.79999161 2.61646366 0.83285868 2.89396095 2.62758994 0.65666026
		 2.7816236 2.23953247 0.57702404 2.89035535 3.0032668114 0.90981191 2.97752619 3.46000981 1.00064182281
		 3.072318792 3.40481901 0.81831568 2.9908216 3.016143084 0.73735714 -2.82517719 2.6402142 0.49814254
		 -2.83608556 2.75651693 0.50393569 -2.8113842 2.53338933 0.49167311 -2.89440823 2.76200867 0.31270161
		 -2.8987987 3.17723203 0.3228687 -2.82875943 3.58819222 0.38618574 -2.7785809 2.3474226 0.47773528
		 -2.66878796 1.94902062 0.43584988 -2.72700334 1.95308912 0.24455291 -2.83679628 2.35149121 0.28643832
		 -2.50879431 1.56992376 0.37909809 -2.30148792 1.21697307 0.30850416 -2.36457443 1.22822249 0.1188423
		 -2.56700945 1.57399189 0.18780105 -2.050610304 0.89653933 0.22534226 -1.76884222 0.61897486 0.1228051
		 -1.82509637 0.60775048 -0.1325749 -2.13172817 0.926422 0.041563991 -1.44323087 0.38868046 -0.010079502
		 -1.0092927217 0.19378866 -0.12341792 -1.073135376 0.20128407 -0.36696926 -1.53344679 0.40752518 -0.23569761
		 -0.43258876 0.052951857 -0.15737019 0.13738555 0.018834114 -0.14177498 0.16082612 0.019741289 -0.3222318
		 -0.3560361 0.040568214 -0.36342081 0.55824208 0.05883491 -0.15067193 0.93132007 0.14246564 -0.15934283
		 0.96044028 0.14602622 -0.35015041 0.61055803 0.066510543 -0.31948829 1.34182525 0.29433236 -0.11840736
		 1.73856449 0.51678532 -0.041100074 1.78214216 0.51903778 -0.23628211;
	setAttr ".vt[830:995]" 1.37296164 0.29547381 -0.3159658 2.081250429 0.79379618 0.050067343
		 2.36240029 1.11668801 0.14558266 2.42725039 1.12177145 -0.043543559 2.13613081 0.79740071 -0.14222221
		 2.57804942 1.47607958 0.23611869 2.73422289 1.86033368 0.31633714 2.8147018 1.86831868 0.13341774
		 2.65139532 1.48264766 0.050168805 2.86892653 2.24902749 0.3973355 3.016057491 2.65720582 0.43961078
		 3.11029124 2.66840029 0.26355797 2.95622945 2.25852227 0.21764635 3.12144017 2.89598107 0.4178082
		 3.19990134 3.071609259 0.39832586 3.28141189 3.4336853 0.48843938 3.2195766 2.90821075 0.24397019
		 -2.95701385 3.18130064 0.13157219 -2.90810347 3.59373736 0.12545957 -2.95262337 2.76607704 0.12140486
		 -3.010838747 2.77014565 -0.069891885 -3.015229225 3.18536901 -0.059724554 -2.93308282 3.64532924 0.010436227
		 -2.89501166 2.35555983 0.095141798 -2.78521848 1.95715773 0.053256154 -2.84343386 1.96122622 -0.13804059
		 -2.9532268 2.3596282 -0.096154951 -2.62522483 1.57806075 -0.0034954038 -2.43728471 1.25392091 -0.06758333
		 -2.50506401 1.27248204 -0.25566134 -2.68343997 1.58212888 -0.19479221 -2.25692821 1.0095610619 -0.12766612
		 -2.078201294 0.80989063 -0.18630275 -2.14718652 0.83913153 -0.32151186 -2.35833454 1.0676651 -0.30466977
		 0.4960188 0.047980301 -0.52514195 0.051242597 0.017660161 -0.45117199 0.94964516 0.13822162 -0.55239588
		 0.93389517 0.12971969 -0.75948024 0.35896057 0.032431215 -0.74701726 -0.36754864 0.039730854 -0.6134786
		 1.40409791 0.2966153 -0.51352376 1.82571959 0.52129006 -0.43146396 1.86929727 0.52354246 -0.62664574
		 1.43523419 0.29775679 -0.71108198 2.19101119 0.80100524 -0.33451128 2.4921 1.12685454 -0.23266973
		 2.55695009 1.13193798 -0.42179573 2.24589133 0.80460978 -0.52680063 2.72474098 1.48921573 -0.13578065
		 2.89518023 1.87630308 -0.049501628 2.97565889 1.88428807 -0.2324208 2.79808688 1.49578381 -0.32173032
		 3.043532372 2.26801729 0.037957828 3.20452547 2.67959476 0.087504759 3.26983881 2.67209554 -0.048134267
		 3.13083506 2.27751184 -0.14173111 3.3218658 3.073865414 0.18043172 3.39266419 3.44904447 0.31292197
		 3.51896811 3.54343057 0.16401264 3.39268708 3.067648888 0.047537416 -3.073444366 3.18943763 -0.2510213
		 -3.024534225 3.60187435 -0.25713393 -3.069053888 2.77421403 -0.26118842 -3.12726927 2.77828264 -0.45248494
		 -3.13165975 3.193506 -0.44231805 -3.11595583 3.38220382 -0.44308382 -3.011442184 2.36369681 -0.28745168
		 -2.901649 1.96529472 -0.32933712 -2.95986438 1.96936321 -0.52063364 -3.069657564 2.36776519 -0.47874844
		 -2.74165559 1.58619773 -0.38608891 -2.55371523 1.26205802 -0.4501766 -2.59743547 1.24449646 -0.64634424
		 -2.79987073 1.59026587 -0.57738572 -2.37335873 1.017698169 -0.51025963 -2.14592147 0.76939225 -0.58475417
		 -2.090711594 0.66839206 -0.81280273 -2.36458945 0.94269615 -0.72362274 -1.83506572 0.54520315 -0.47502232
		 -1.75993514 0.46498948 -0.70780188 -1.21387267 0.23394734 -0.62704432 -1.19667053 0.21502541 -0.84215564
		 -1.19077325 0.20172426 -1.052726626 -1.70067108 0.40832266 -0.93303955 -0.74863559 0.1006029 -0.66863698
		 -0.70181376 0.0856594 -0.90521115 -0.21161291 0.024808623 -0.94090158 -0.13205017 0.020527 -1.17750823
		 -0.66936624 0.075531684 -1.13215089 0.36607257 0.032901842 -0.97195661 0.95296019 0.13039625 -0.96484756
		 0.98580796 0.13445231 -1.16795349 0.43116173 0.038816594 -1.19197631 1.46637046 0.29889825 -0.90864021
		 1.91287458 0.5257948 -0.82182735 1.95645213 0.5280472 -1.017008901 1.49750674 0.30003974 -1.10619843
		 2.30077171 0.80821431 -0.71908993 2.62179971 1.13702095 -0.61092168 2.6866498 1.14210439 -0.8000474
		 2.35565186 0.81181878 -0.91137928 2.87143254 1.502352 -0.50768 3.056137323 1.89227247 -0.41533998
		 3.13661599 1.90025747 -0.59825891 2.9447782 1.50892007 -0.69362962 3.21813798 2.28700686 -0.32141984
		 3.36380816 2.68322182 -0.22433269 3.4577775 2.69434834 -0.40053111 3.30544066 2.2965014 -0.50110877
		 3.49315333 3.080525398 -0.12491757 3.60622787 3.47852802 -0.02400733 3.69065642 3.49018383 -0.15720642
		 3.56417632 3.089627981 -0.24683158 -3.18987513 3.19757462 -0.63361478 -3.14096475 3.61001134 -0.63972741
		 -3.18548465 2.78235102 -0.6437819 -3.24127507 2.78625011 -0.82711107 -3.24872065 2.90298772 -0.82526541
		 -3.25263333 3.056189775 -0.82662231 -3.12787271 2.3718338 -0.6700452 -3.018079758 1.97343171 -0.71193063
		 -3.063211679 1.97658587 -0.86023545 -3.18447161 2.3757894 -0.85603011 -2.85808611 1.59433484 -0.76868242
		 -2.65077972 1.24138415 -0.83927631 -2.71025801 1.2455411 -1.034722686 -2.91731143 1.59847355 -0.96329904
		 -2.39990211 0.92095041 -0.9224382 -2.10998058 0.63881606 -1.016667366 -2.16637731 0.64275748 -1.20198822
		 -2.45811725 0.92501879 -1.11373496 -1.7128067 0.39219466 -1.13711643 -1.21360266 0.19851322 -1.25385308
		 -1.24940538 0.20012771 -1.43807781 -1.76111031 0.39514169 -1.31970549 -0.67398739 0.072787769 -1.3401258
		 -0.11110885 0.019637875 -1.38934934 -0.12126644 0.019760467 -1.58596313 -0.69749546 0.07346233 -1.53104699
		 0.45620134 0.041021105 -1.39849961 1.0088003874 0.1360721 -1.36843717 1.025956392 0.13642998 -1.56038272
		 0.45998442 0.041038249 -1.59360385 1.52864301 0.30118123 -1.30375659 2.000029563904 0.53029948 -1.21219099
		 2.043607235 0.53255194 -1.40737283 1.5590229 0.30229497 -1.49651492 2.41053224 0.81542331 -1.10366857
		 2.75149941 1.14718747 -0.98917383 2.81871295 1.15245616 -1.18519223 2.46674585 0.8191154 -1.30062973
		 3.018124104 1.51548815 -0.87957931 3.21709442 1.90824187 -0.78117853 3.29855084 1.9163239 -0.96631968
		 3.093251944 1.52221584 -1.070046782 3.29595208 2.081946135 -0.73778939 3.37503362 2.26403069 -0.69155473
		 3.64914131 2.71700644 -0.75934988 3.48216748 2.31572175 -0.86485219 3.44412947 2.43043876 -0.64869148
		 3.50646639 2.5966785 -0.59781551 3.86398458 3.51411247 -0.43065798 3.78437471 3.11785007 -0.62481195
		 -3.29983974 3.2052598 -0.99496126 -3.25739527 3.61814833 -1.022320867;
	setAttr ".vt[996:1043]" -3.2922163 2.78981042 -0.99450493 -3.34073281 2.79320145 -1.15393126
		 -3.3515892 3.20887637 -1.16501117 -3.31561065 3.62221694 -1.21361744 -3.23783755 2.37951899 -1.031391621
		 -3.10480785 1.9794929 -0.9969213 -3.1624167 1.98351896 -1.18622589 -3.28958702 2.38313556 -1.20144165
		 -2.97855783 1.60275424 -1.16455507 -2.77226162 1.24987423 -1.23846889 -2.83552837 1.25429571 -1.44636464
		 -3.040813923 1.6071049 -1.36913109 -2.51633263 0.9290874 -1.30503178 -2.21913719 0.64644474 -1.3753581
		 -2.27007842 0.65000486 -1.54275191 -2.57454777 0.93315595 -1.49632823 -1.80373335 0.39774215 -1.48082232
		 -1.28050721 0.20153023 -1.59811294 -1.30925834 0.20282674 -1.7460531 -1.84351623 0.40016934 -1.63120306
		 -0.71913719 0.074083336 -1.70681071 -0.13110173 0.01987917 -1.77633822 -0.14077581 0.019995926 -1.96359324
		 -0.73984575 0.074677564 -1.87499595 0.46357909 0.041054539 -1.77899134 1.041814327 0.13676071 -1.73780894
		 1.057023644 0.13707797 -1.90797484 0.46707955 0.041070402 -1.95952046 1.58788967 0.30335325 -1.67967355
		 2.087184668 0.53480422 -1.60255468 2.1307621 0.53705657 -1.79773629 1.61599994 0.30438378 -1.85803199
		 2.52562618 0.82298267 -1.50693464 2.89065266 1.15809488 -1.39499605 2.96495628 1.16391933 -1.61169195
		 2.58583999 0.82693744 -1.71791124 3.17194366 1.52926266 -1.26954997 3.38196206 1.92459929 -1.15590549
		 3.46635127 1.93297195 -1.34771299 3.25241733 1.5364691 -1.47357082 3.57583404 2.32590914 -1.057638049
		 3.75338459 2.72934937 -0.95481282 3.86105251 2.74209785 -1.1566968 3.67162132 2.3363266 -1.25478959
		 3.90478277 3.13328242 -0.83149737 3.97970772 3.53008866 -0.6132288 4.14013672 3.5522368 -0.86633033
		 4.015012741 3.14741015 -1.020712018;
	setAttr -s 2088 ".ed";
	setAttr ".ed[0:165]"  0 261 0 261 1 0 0 264 0 264 13 0 1 265 0 265 2 0 1 262 1
		 262 14 1 2 268 0 268 3 0 2 266 1 266 15 1 3 271 0 271 4 0 3 269 1 269 16 1 4 274 0
		 274 5 0 4 272 1 272 17 1 5 277 0 277 6 0 5 275 1 275 18 1 6 280 0 280 7 0 6 278 1
		 278 19 1 7 283 0 283 8 0 7 281 1 281 20 1 8 286 0 286 9 0 8 284 1 284 21 1 9 289 0
		 289 10 0 9 287 1 287 22 1 10 292 0 292 11 0 10 290 1 290 23 1 11 295 0 295 12 0 11 293 1
		 293 24 1 12 296 0 296 25 0 13 263 1 263 14 1 13 300 0 300 26 0 14 267 1 267 15 1
		 14 298 1 298 27 1 15 270 1 270 16 1 15 301 1 301 28 1 16 273 1 273 17 1 16 303 1
		 303 29 1 17 276 1 276 18 1 17 305 1 305 30 1 18 279 1 279 19 1 18 307 1 307 31 1
		 19 282 1 282 20 1 19 309 1 309 32 1 20 285 1 285 21 1 20 311 1 311 33 1 21 288 1
		 288 22 1 21 313 1 313 34 1 22 291 1 291 23 1 22 315 1 315 35 1 23 294 1 294 24 1
		 23 317 1 317 36 1 24 297 1 297 25 1 24 319 1 319 37 1 25 321 0 321 38 0 26 299 1
		 299 27 1 26 325 0 325 39 0 27 302 1 302 28 1 27 323 1 323 40 1 28 304 1 304 29 1
		 28 326 1 326 41 1 29 306 1 306 30 1 29 328 1 328 42 1 30 308 1 308 31 1 30 330 1
		 330 43 1 31 310 1 310 32 1 31 332 1 332 44 1 32 312 1 312 33 1 32 334 1 334 45 1
		 33 314 1 314 34 1 33 336 1 336 46 1 34 316 1 316 35 1 34 338 1 338 47 1 35 318 1
		 318 36 1 35 340 1 340 48 1 36 320 1 320 37 1 36 342 1 342 49 1 37 322 1 322 38 1
		 37 344 1 344 50 1 38 346 0 346 51 0 39 324 1 324 40 1 39 350 0 350 52 0 40 327 1
		 327 41 1 40 348 1 348 53 1 41 329 1 329 42 1 41 351 1 351 54 1 42 331 1 331 43 1
		 42 353 1 353 55 1;
	setAttr ".ed[166:331]" 43 333 1 333 44 1 43 355 1 355 56 1 44 335 1 335 45 1
		 44 357 1 357 57 1 45 337 1 337 46 1 45 359 1 359 58 1 46 339 1 339 47 1 46 361 1
		 361 59 1 47 341 1 341 48 1 47 363 1 363 60 1 48 343 1 343 49 1 48 365 1 365 61 1
		 49 345 1 345 50 1 49 367 1 367 62 1 50 347 1 347 51 1 50 369 1 369 63 1 51 371 0
		 371 64 0 52 349 1 349 53 1 52 375 0 375 65 0 53 352 1 352 54 1 53 373 1 373 66 1
		 54 354 1 354 55 1 54 376 1 376 67 1 55 356 1 356 56 1 55 378 1 378 68 1 56 358 1
		 358 57 1 56 380 1 380 69 1 57 360 1 360 58 1 57 382 1 382 70 1 58 362 1 362 59 1
		 58 384 1 384 71 1 59 364 1 364 60 1 59 386 1 386 72 1 60 366 1 366 61 1 60 388 1
		 388 73 1 61 368 1 368 62 1 61 390 1 390 74 1 62 370 1 370 63 1 62 392 1 392 75 1
		 63 372 1 372 64 1 63 394 1 394 76 1 64 396 0 396 77 0 65 374 1 374 66 1 65 400 0
		 400 78 0 66 377 1 377 67 1 66 398 1 398 79 1 67 379 1 379 68 1 67 401 1 401 80 1
		 68 381 1 381 69 1 68 403 1 403 81 1 69 383 1 383 70 1 69 144 1 144 82 1 70 385 1
		 385 71 1 70 146 1 146 83 1 71 387 1 387 72 1 71 148 1 148 84 1 72 389 1 389 73 1
		 72 150 1 150 85 1 73 391 1 391 74 1 73 152 1 152 86 1 74 393 1 393 75 1 74 154 1
		 154 87 1 75 395 1 395 76 1 75 156 1 156 88 1 76 397 1 397 77 1 76 158 1 158 89 1
		 77 160 0 160 90 0 78 399 1 399 79 1 78 164 0 164 91 0 79 402 1 402 80 1 79 162 1
		 162 92 1 80 143 1 143 81 1 80 165 1 165 93 1 81 145 1 145 82 1 81 167 1 167 94 1
		 82 147 0 147 83 0 82 169 0 169 95 0 83 149 0 149 84 0 84 151 1 151 85 1 84 173 0
		 173 97 0 85 153 1 153 86 1 85 171 1 171 98 1 86 155 1 155 87 1;
	setAttr ".ed[332:497]" 86 174 1 174 99 1 87 157 1 157 88 1 87 176 1 176 100 1
		 88 159 1 159 89 1 88 178 1 178 101 1 89 161 1 161 90 1 89 180 1 180 102 1 90 182 0
		 182 103 0 91 163 1 163 92 1 91 186 0 186 104 0 92 166 1 166 93 1 92 184 1 184 105 1
		 93 168 1 168 94 1 93 187 1 187 106 1 94 170 1 170 95 1 94 189 1 189 107 1 95 193 0
		 193 96 0 95 191 1 191 108 1 96 196 0 196 97 0 96 194 1 194 109 1 97 172 1 172 98 1
		 97 197 1 197 110 1 98 175 1 175 99 1 98 199 1 199 111 1 99 177 1 177 100 1 99 201 1
		 201 112 1 100 179 1 179 101 1 100 203 1 203 113 1 101 181 1 181 102 1 101 205 1 205 114 1
		 102 183 1 183 103 1 102 207 1 207 115 1 103 209 0 209 116 0 104 185 1 185 105 1 104 213 0
		 213 117 0 105 188 1 188 106 1 105 211 1 211 118 1 106 190 1 190 107 1 106 214 1 214 119 1
		 107 192 1 192 108 1 107 216 1 216 120 1 108 195 1 195 109 1 108 218 1 218 121 1 109 198 1
		 198 110 1 109 220 1 220 122 1 110 200 1 200 111 1 110 222 1 222 123 1 111 202 1 202 112 1
		 111 224 1 224 124 1 112 204 1 204 113 1 112 226 1 226 125 1 113 206 1 206 114 1 113 228 1
		 228 126 1 114 208 1 208 115 1 114 230 1 230 127 1 115 210 1 210 116 1 115 232 1 232 128 1
		 116 234 0 234 129 0 117 212 1 212 118 1 117 238 0 238 130 0 118 215 1 215 119 1 118 236 1
		 236 131 1 119 217 1 217 120 1 119 239 1 239 132 1 120 219 1 219 121 1 120 241 1 241 133 1
		 121 221 1 221 122 1 121 243 1 243 134 1 122 223 1 223 123 1 122 245 1 245 135 1 123 225 1
		 225 124 1 123 247 1 247 136 1 124 227 1 227 125 1 124 249 1 249 137 1 125 229 1 229 126 1
		 125 251 1 251 138 1 126 231 1 231 127 1 126 253 1 253 139 1 127 233 1 233 128 1 127 255 1
		 255 140 1 128 235 1 235 129 1 128 257 1 257 141 1 129 259 0 259 142 0;
	setAttr ".ed[498:663]" 130 237 0 237 131 0 131 240 0 240 132 0 132 242 0 242 133 0
		 133 244 0 244 134 0 134 246 0 246 135 0 135 248 0 248 136 0 136 250 0 250 137 0 137 252 0
		 252 138 0 138 254 0 254 139 0 139 256 0 256 140 0 140 258 0 258 141 0 141 260 0 260 142 0
		 261 404 1 404 264 1 262 404 1 263 404 1 265 405 1 405 262 1 266 405 1 267 405 1 268 406 1
		 406 266 1 269 406 1 270 406 1 271 407 1 407 269 1 272 407 1 273 407 1 274 408 1 408 272 1
		 275 408 1 276 408 1 277 409 1 409 275 1 278 409 1 279 409 1 280 410 1 410 278 1 281 410 1
		 282 410 1 283 411 1 411 281 1 284 411 1 285 411 1 286 412 1 412 284 1 287 412 1 288 412 1
		 289 413 1 413 287 1 290 413 1 291 413 1 292 414 1 414 290 1 293 414 1 294 414 1 295 415 1
		 415 293 1 296 415 1 297 415 1 263 416 1 416 300 1 298 416 1 299 416 1 267 417 1 417 298 1
		 301 417 1 302 417 1 270 418 1 418 301 1 303 418 1 304 418 1 273 419 1 419 303 1 305 419 1
		 306 419 1 276 420 1 420 305 1 307 420 1 308 420 1 279 421 1 421 307 1 309 421 1 310 421 1
		 282 422 1 422 309 1 311 422 1 312 422 1 285 423 1 423 311 1 313 423 1 314 423 1 288 424 1
		 424 313 1 315 424 1 316 424 1 291 425 1 425 315 1 317 425 1 318 425 1 294 426 1 426 317 1
		 319 426 1 320 426 1 297 427 1 427 319 1 321 427 1 322 427 1 299 428 1 428 325 1 323 428 1
		 324 428 1 302 429 1 429 323 1 326 429 1 327 429 1 304 430 1 430 326 1 328 430 1 329 430 1
		 306 431 1 431 328 1 330 431 1 331 431 1 308 432 1 432 330 1 332 432 1 333 432 1 310 433 1
		 433 332 1 334 433 1 335 433 1 312 434 1 434 334 1 336 434 1 337 434 1 314 435 1 435 336 1
		 338 435 1 339 435 1 316 436 1 436 338 1 340 436 1 341 436 1 318 437 1 437 340 1 342 437 1
		 343 437 1 320 438 1 438 342 1 344 438 1 345 438 1 322 439 1 439 344 1;
	setAttr ".ed[664:829]" 346 439 1 347 439 1 324 440 1 440 350 1 348 440 1 349 440 1
		 327 441 1 441 348 1 351 441 1 352 441 1 329 442 1 442 351 1 353 442 1 354 442 1 331 443 1
		 443 353 1 355 443 1 356 443 1 333 444 1 444 355 1 357 444 1 358 444 1 335 445 1 445 357 1
		 359 445 1 360 445 1 337 446 1 446 359 1 361 446 1 362 446 1 339 447 1 447 361 1 363 447 1
		 364 447 1 341 448 1 448 363 1 365 448 1 366 448 1 343 449 1 449 365 1 367 449 1 368 449 1
		 345 450 1 450 367 1 369 450 1 370 450 1 347 451 1 451 369 1 371 451 1 372 451 1 349 452 1
		 452 375 1 373 452 1 374 452 1 352 453 1 453 373 1 376 453 1 377 453 1 354 454 1 454 376 1
		 378 454 1 379 454 1 356 455 1 455 378 1 380 455 1 381 455 1 358 456 1 456 380 1 382 456 1
		 383 456 1 360 457 1 457 382 1 384 457 1 385 457 1 362 458 1 458 384 1 386 458 1 387 458 1
		 364 459 1 459 386 1 388 459 1 389 459 1 366 460 1 460 388 1 390 460 1 391 460 1 368 461 1
		 461 390 1 392 461 1 393 461 1 370 462 1 462 392 1 394 462 1 395 462 1 372 463 1 463 394 1
		 396 463 1 397 463 1 374 464 1 464 400 1 398 464 1 399 464 1 377 465 1 465 398 1 401 465 1
		 402 465 1 379 466 1 466 401 1 403 466 1 143 466 1 381 467 1 467 403 1 144 467 1 145 467 1
		 383 468 1 468 144 1 146 468 1 147 468 1 385 469 1 469 146 1 148 469 1 149 469 1 387 470 1
		 470 148 1 150 470 1 151 470 1 389 471 1 471 150 1 152 471 1 153 471 1 391 472 1 472 152 1
		 154 472 1 155 472 1 393 473 1 473 154 1 156 473 1 157 473 1 395 474 1 474 156 1 158 474 1
		 159 474 1 397 475 1 475 158 1 160 475 1 161 475 1 399 476 1 476 164 1 162 476 1 163 476 1
		 402 477 1 477 162 1 165 477 1 166 477 1 143 478 1 478 165 1 167 478 1 168 478 1 145 479 1
		 479 167 1 169 479 1 170 479 1 151 480 1 480 173 1 171 480 1 172 480 1;
	setAttr ".ed[830:995]" 153 481 1 481 171 1 174 481 1 175 481 1 155 482 1 482 174 1
		 176 482 1 177 482 1 157 483 1 483 176 1 178 483 1 179 483 1 159 484 1 484 178 1 180 484 1
		 181 484 1 161 485 1 485 180 1 182 485 1 183 485 1 163 486 1 486 186 1 184 486 1 185 486 1
		 166 487 1 487 184 1 187 487 1 188 487 1 168 488 1 488 187 1 189 488 1 190 488 1 170 489 1
		 489 189 1 191 489 1 192 489 1 193 490 1 490 191 1 194 490 1 195 490 1 196 491 1 491 194 1
		 197 491 1 198 491 1 172 492 1 492 197 1 199 492 1 200 492 1 175 493 1 493 199 1 201 493 1
		 202 493 1 177 494 1 494 201 1 203 494 1 204 494 1 179 495 1 495 203 1 205 495 1 206 495 1
		 181 496 1 496 205 1 207 496 1 208 496 1 183 497 1 497 207 1 209 497 1 210 497 1 185 498 1
		 498 213 1 211 498 1 212 498 1 188 499 1 499 211 1 214 499 1 215 499 1 190 500 1 500 214 1
		 216 500 1 217 500 1 192 501 1 501 216 1 218 501 1 219 501 1 195 502 1 502 218 1 220 502 1
		 221 502 1 198 503 1 503 220 1 222 503 1 223 503 1 200 504 1 504 222 1 224 504 1 225 504 1
		 202 505 1 505 224 1 226 505 1 227 505 1 204 506 1 506 226 1 228 506 1 229 506 1 206 507 1
		 507 228 1 230 507 1 231 507 1 208 508 1 508 230 1 232 508 1 233 508 1 210 509 1 509 232 1
		 234 509 1 235 509 1 212 510 1 510 238 1 236 510 1 237 510 1 215 511 1 511 236 1 239 511 1
		 240 511 1 217 512 1 512 239 1 241 512 1 242 512 1 219 513 1 513 241 1 243 513 1 244 513 1
		 221 514 1 514 243 1 245 514 1 246 514 1 223 515 1 515 245 1 247 515 1 248 515 1 225 516 1
		 516 247 1 249 516 1 250 516 1 227 517 1 517 249 1 251 517 1 252 517 1 229 518 1 518 251 1
		 253 518 1 254 518 1 231 519 1 519 253 1 255 519 1 256 519 1 233 520 1 520 255 1 257 520 1
		 258 520 1 235 521 1 521 257 1 259 521 1 260 521 1 0 522 0 261 523 1;
	setAttr ".ed[996:1161]" 522 523 0 523 524 1 264 525 0 524 525 1 522 525 0 1 526 1
		 523 526 0 526 527 1 527 524 1 527 528 1 529 528 1 529 524 1 13 530 1 530 529 1 525 530 0
		 265 531 1 526 531 0 531 532 1 532 527 1 2 533 1 531 533 0 533 534 1 534 532 1 534 535 1
		 536 535 1 536 532 1 528 536 1 268 537 1 533 537 0 537 538 1 538 534 1 3 539 1 537 539 0
		 539 540 1 540 538 1 540 541 1 542 541 1 542 538 1 535 542 1 271 543 1 539 543 0 543 544 1
		 544 540 1 4 545 1 543 545 0 545 546 1 546 544 1 546 547 1 548 547 1 548 544 1 541 548 1
		 274 549 1 545 549 0 549 550 1 550 546 1 5 551 1 549 551 0 551 552 1 552 550 1 552 553 1
		 554 553 1 554 550 1 547 554 1 277 555 1 551 555 0 555 556 1 556 552 1 6 557 1 555 557 0
		 557 558 1 558 556 1 558 559 1 560 559 1 560 556 1 553 560 1 280 561 1 557 561 0 561 562 1
		 562 558 1 7 563 1 561 563 0 563 564 1 564 562 1 564 565 1 566 565 1 566 562 1 559 566 1
		 283 567 1 563 567 0 567 568 1 568 564 1 8 569 1 567 569 0 569 570 1 570 568 1 570 571 1
		 572 571 1 572 568 1 565 572 1 286 573 1 569 573 0 573 574 1 574 570 1 9 575 1 573 575 0
		 575 576 1 576 574 1 576 577 1 578 577 1 578 574 1 571 578 1 289 579 1 575 579 0 579 580 1
		 580 576 1 10 581 1 579 581 0 581 582 1 582 580 1 582 583 1 584 583 1 584 580 1 577 584 1
		 292 585 1 581 585 0 585 586 1 586 582 1 11 587 1 585 587 0 587 588 1 588 586 1 588 589 1
		 590 589 1 590 586 1 583 590 1 295 591 1 587 591 0 591 592 1 592 588 1 12 593 0 591 593 0
		 296 594 0 593 594 0 594 592 1 25 595 0 594 595 0 596 595 1 596 592 1 589 596 1 529 597 1
		 300 598 0 597 598 1 530 598 0 528 599 1 599 597 1 599 600 1 601 600 1 601 597 1 26 602 0
		 602 601 1 598 602 0 536 603 1 603 599 1 535 604 1 604 603 1 604 605 1;
	setAttr ".ed[1162:1327]" 606 605 1 606 603 1 600 606 1 542 607 1 607 604 1 541 608 1
		 608 607 1 608 609 1 610 609 1 610 607 1 605 610 1 548 611 1 611 608 1 547 612 1 612 611 1
		 612 613 1 614 613 1 614 611 1 609 614 1 554 615 1 615 612 1 553 616 1 616 615 1 616 617 1
		 618 617 1 618 615 1 613 618 1 560 619 1 619 616 1 559 620 1 620 619 1 620 621 1 622 621 1
		 622 619 1 617 622 1 566 623 1 623 620 1 565 624 1 624 623 1 624 625 1 626 625 1 626 623 1
		 621 626 1 572 627 1 627 624 1 571 628 1 628 627 1 628 629 1 630 629 1 630 627 1 625 630 1
		 578 631 1 631 628 1 577 632 1 632 631 1 632 633 1 634 633 1 634 631 1 629 634 1 584 635 1
		 635 632 1 583 636 1 636 635 1 636 637 1 638 637 1 638 635 1 633 638 1 590 639 1 639 636 1
		 589 640 1 640 639 1 640 641 1 642 641 1 642 639 1 637 642 1 596 643 1 643 640 1 321 644 0
		 595 644 0 644 643 1 38 645 0 644 645 0 646 645 1 646 643 1 641 646 1 601 647 1 325 648 0
		 647 648 1 602 648 0 600 649 1 649 647 1 649 650 1 651 650 1 651 647 1 39 652 0 652 651 1
		 648 652 0 606 653 1 653 649 1 605 654 1 654 653 1 654 655 1 656 655 1 656 653 1 650 656 1
		 610 657 1 657 654 1 609 658 1 658 657 1 658 659 1 660 659 1 660 657 1 655 660 1 614 661 1
		 661 658 1 613 662 1 662 661 1 662 663 1 664 663 1 664 661 1 659 664 1 618 665 1 665 662 1
		 617 666 1 666 665 1 666 667 1 668 667 1 668 665 1 663 668 1 622 669 1 669 666 1 621 670 1
		 670 669 1 670 671 1 672 671 1 672 669 1 667 672 1 626 673 1 673 670 1 625 674 1 674 673 1
		 674 675 1 676 675 1 676 673 1 671 676 1 630 677 1 677 674 1 629 678 1 678 677 1 678 679 1
		 680 679 1 680 677 1 675 680 1 634 681 1 681 678 1 633 682 1 682 681 1 682 683 1 684 683 1
		 684 681 1 679 684 1 638 685 1 685 682 1 637 686 1 686 685 1 686 687 1;
	setAttr ".ed[1328:1493]" 688 687 1 688 685 1 683 688 1 642 689 1 689 686 1 641 690 1
		 690 689 1 690 691 1 692 691 1 692 689 1 687 692 1 646 693 1 693 690 1 346 694 0 645 694 0
		 694 693 1 51 695 0 694 695 0 696 695 1 696 693 1 691 696 1 651 697 1 350 698 0 697 698 1
		 652 698 0 650 699 1 699 697 1 699 700 1 701 700 1 701 697 1 52 702 1 702 701 1 698 702 0
		 656 703 1 703 699 1 655 704 1 704 703 1 704 705 1 706 705 1 706 703 1 700 706 1 660 707 1
		 707 704 1 659 708 1 708 707 1 708 709 1 710 709 1 710 707 1 705 710 1 664 711 1 711 708 1
		 663 712 1 712 711 1 712 713 1 714 713 1 714 711 1 709 714 1 668 715 1 715 712 1 667 716 1
		 716 715 1 716 717 1 718 717 1 718 715 1 713 718 1 672 719 1 719 716 1 671 720 1 720 719 1
		 720 721 1 722 721 1 722 719 1 717 722 1 676 723 1 723 720 1 675 724 1 724 723 1 724 725 1
		 726 725 1 726 723 1 721 726 1 680 727 1 727 724 1 679 728 1 728 727 1 728 729 1 730 729 1
		 730 727 1 725 730 1 684 731 1 731 728 1 683 732 1 732 731 1 732 733 1 734 733 1 734 731 1
		 729 734 1 688 735 1 735 732 1 687 736 1 736 735 1 736 737 1 738 737 1 738 735 1 733 738 1
		 692 739 1 739 736 1 691 740 1 740 739 1 740 741 1 742 741 1 742 739 1 737 742 1 696 743 1
		 743 740 1 371 744 0 695 744 0 744 743 1 64 745 1 744 745 0 746 745 1 746 743 1 741 746 1
		 701 747 1 375 748 0 747 748 1 702 748 0 700 749 1 749 747 1 749 750 1 751 750 1 751 747 1
		 65 752 0 752 751 1 748 752 0 706 753 1 753 749 1 705 754 1 754 753 1 754 755 1 756 755 1
		 756 753 1 750 756 1 710 757 1 757 754 1 709 758 1 758 757 1 758 759 1 760 759 1 760 757 1
		 755 760 1 714 761 1 761 758 1 713 762 1 762 761 1 762 763 1 764 763 1 764 761 1 759 764 1
		 718 765 1 765 762 1 717 766 1 766 765 1 766 767 1 768 767 1 768 765 1;
	setAttr ".ed[1494:1659]" 763 768 1 722 769 1 769 766 1 721 770 1 770 769 1 770 771 1
		 772 771 1 772 769 1 767 772 1 726 773 1 773 770 1 725 774 1 774 773 1 774 775 1 776 775 1
		 776 773 1 771 776 1 730 777 1 777 774 1 729 778 1 778 777 1 778 779 1 780 779 1 780 777 1
		 775 780 1 734 781 1 781 778 1 733 782 1 782 781 1 782 783 1 784 783 1 784 781 1 779 784 1
		 738 785 1 785 782 1 737 786 1 786 785 1 786 787 1 788 787 1 788 785 1 783 788 1 742 789 1
		 789 786 1 741 790 1 790 789 1 790 791 1 792 791 1 792 789 1 787 792 1 746 793 1 793 790 1
		 396 794 0 745 794 0 794 793 1 77 795 1 794 795 0 796 795 1 796 793 1 791 796 1 751 797 1
		 400 798 0 797 798 1 752 798 0 750 799 1 799 797 1 799 800 1 801 800 1 801 797 1 78 802 0
		 802 801 1 798 802 0 756 803 1 803 799 1 755 804 1 804 803 1 804 805 1 806 805 1 806 803 1
		 800 806 1 760 807 1 807 804 1 759 808 1 808 807 1 808 809 1 810 809 1 810 807 1 805 810 1
		 764 811 1 811 808 1 763 812 1 812 811 1 82 813 1 812 813 1 814 813 1 814 811 1 809 814 1
		 768 815 1 815 812 1 767 816 1 816 815 1 83 817 1 816 817 1 147 818 1 818 817 0 818 815 1
		 813 818 0 772 819 1 819 816 1 771 820 1 820 819 1 84 821 0 820 821 1 149 822 1 822 821 0
		 822 819 1 817 822 0 776 823 1 823 820 1 775 824 1 824 823 1 824 825 1 826 825 1 826 823 1
		 821 826 1 780 827 1 827 824 1 779 828 1 828 827 1 828 829 1 830 829 1 830 827 1 825 830 1
		 784 831 1 831 828 1 783 832 1 832 831 1 832 833 1 834 833 1 834 831 1 829 834 1 788 835 1
		 835 832 1 787 836 1 836 835 1 836 837 1 838 837 1 838 835 1 833 838 1 792 839 1 839 836 1
		 791 840 1 840 839 1 840 841 1 842 841 1 842 839 1 837 842 1 796 843 1 843 840 1 160 844 0
		 795 844 0 844 843 1 90 845 0 844 845 0 846 845 1 846 843 1 841 846 1;
	setAttr ".ed[1660:1825]" 801 847 1 164 848 1 847 848 1 802 848 0 800 849 1 849 847 1
		 849 850 1 851 850 1 851 847 1 91 852 0 852 851 1 848 852 0 806 853 1 853 849 1 805 854 1
		 854 853 1 854 855 1 856 855 1 856 853 1 850 856 1 810 857 1 857 854 1 809 858 1 858 857 1
		 858 859 1 860 859 1 860 857 1 855 860 1 814 861 1 861 858 1 169 862 0 813 862 0 862 861 1
		 95 863 0 862 863 0 864 863 1 864 861 1 859 864 1 826 865 1 173 866 1 865 866 1 821 866 0
		 825 867 1 867 865 1 867 868 1 869 868 1 869 865 1 97 870 1 870 869 1 866 870 0 830 871 1
		 871 867 1 829 872 1 872 871 1 872 873 1 874 873 1 874 871 1 868 874 1 834 875 1 875 872 1
		 833 876 1 876 875 1 876 877 1 878 877 1 878 875 1 873 878 1 838 879 1 879 876 1 837 880 1
		 880 879 1 880 881 1 882 881 1 882 879 1 877 882 1 842 883 1 883 880 1 841 884 1 884 883 1
		 884 885 1 886 885 1 886 883 1 881 886 1 846 887 1 887 884 1 182 888 1 845 888 0 888 887 1
		 103 889 0 888 889 0 890 889 1 890 887 1 885 890 1 851 891 1 186 892 0 891 892 1 852 892 0
		 850 893 1 893 891 1 893 894 1 895 894 1 895 891 1 104 896 0 896 895 1 892 896 0 856 897 1
		 897 893 1 855 898 1 898 897 1 898 899 1 900 899 1 900 897 1 894 900 1 860 901 1 901 898 1
		 859 902 1 902 901 1 902 903 1 904 903 1 904 901 1 899 904 1 864 905 1 905 902 1 863 906 1
		 906 905 1 906 907 1 908 907 1 908 905 1 903 908 1 193 909 1 863 909 0 909 910 1 910 906 1
		 96 911 1 909 911 0 911 912 1 912 910 1 912 913 1 914 913 1 914 910 1 907 914 1 196 915 1
		 911 915 0 915 916 1 916 912 1 915 870 0 870 917 1 917 916 1 917 918 1 919 918 1 919 916 1
		 913 919 1 869 920 1 920 917 1 868 921 1 921 920 1 921 922 1 923 922 1 923 920 1 918 923 1
		 874 924 1 924 921 1 873 925 1 925 924 1 925 926 1 927 926 1 927 924 1;
	setAttr ".ed[1826:1991]" 922 927 1 878 928 1 928 925 1 877 929 1 929 928 1 929 930 1
		 931 930 1 931 928 1 926 931 1 882 932 1 932 929 1 881 933 1 933 932 1 933 934 1 935 934 1
		 935 932 1 930 935 1 886 936 1 936 933 1 885 937 1 937 936 1 937 938 1 939 938 1 939 936 1
		 934 939 1 890 940 1 940 937 1 209 941 1 889 941 0 941 940 1 116 942 0 941 942 0 943 942 1
		 943 940 1 938 943 1 895 944 1 213 945 0 944 945 1 896 945 0 894 946 1 946 944 1 946 947 1
		 948 947 1 948 944 1 117 949 0 949 948 1 945 949 0 900 950 1 950 946 1 899 951 1 951 950 1
		 951 952 1 953 952 1 953 950 1 947 953 1 904 954 1 954 951 1 903 955 1 955 954 1 955 956 1
		 957 956 1 957 954 1 952 957 1 908 958 1 958 955 1 907 959 1 959 958 1 959 960 1 961 960 1
		 961 958 1 956 961 1 914 962 1 962 959 1 913 963 1 963 962 1 963 964 1 965 964 1 965 962 1
		 960 965 1 919 966 1 966 963 1 918 967 1 967 966 1 967 968 1 969 968 1 969 966 1 964 969 1
		 923 970 1 970 967 1 922 971 1 971 970 1 971 972 1 973 972 1 973 970 1 968 973 1 927 974 1
		 974 971 1 926 975 1 975 974 1 975 976 1 977 976 1 977 974 1 972 977 1 931 978 1 978 975 1
		 930 979 1 979 978 1 979 980 1 981 980 1 981 978 1 976 981 1 935 982 1 982 979 1 934 983 1
		 983 982 1 983 984 1 985 984 1 985 982 1 980 985 1 939 986 1 986 983 1 938 987 1 987 986 1
		 987 988 1 989 988 1 989 986 1 984 989 1 943 990 1 990 987 1 234 991 0 942 991 0 991 990 1
		 129 992 0 991 992 0 993 992 1 993 990 1 988 993 1 948 994 1 238 995 0 994 995 1 949 995 0
		 947 996 1 996 994 1 131 997 1 996 997 1 237 998 1 998 997 0 998 994 1 130 999 0 999 998 0
		 995 999 0 953 1000 1 1000 996 1 952 1001 1 1001 1000 1 132 1002 1 1001 1002 1 240 1003 1
		 1003 1002 0 1003 1000 1 997 1003 0 957 1004 1 1004 1001 1 956 1005 1 1005 1004 1
		 133 1006 1;
	setAttr ".ed[1992:2087]" 1005 1006 1 242 1007 1 1007 1006 0 1007 1004 1 1002 1007 0
		 961 1008 1 1008 1005 1 960 1009 1 1009 1008 1 134 1010 1 1009 1010 1 244 1011 1 1011 1010 0
		 1011 1008 1 1006 1011 0 965 1012 1 1012 1009 1 964 1013 1 1013 1012 1 135 1014 1
		 1013 1014 1 246 1015 1 1015 1014 0 1015 1012 1 1010 1015 0 969 1016 1 1016 1013 1
		 968 1017 1 1017 1016 1 136 1018 1 1017 1018 1 248 1019 1 1019 1018 0 1019 1016 1
		 1014 1019 0 973 1020 1 1020 1017 1 972 1021 1 1021 1020 1 137 1022 1 1021 1022 1
		 250 1023 1 1023 1022 0 1023 1020 1 1018 1023 0 977 1024 1 1024 1021 1 976 1025 1
		 1025 1024 1 138 1026 1 1025 1026 1 252 1027 1 1027 1026 0 1027 1024 1 1022 1027 0
		 981 1028 1 1028 1025 1 980 1029 1 1029 1028 1 139 1030 1 1029 1030 1 254 1031 1 1031 1030 0
		 1031 1028 1 1026 1031 0 985 1032 1 1032 1029 1 984 1033 1 1033 1032 1 140 1034 1
		 1033 1034 1 256 1035 1 1035 1034 0 1035 1032 1 1030 1035 0 989 1036 1 1036 1033 1
		 988 1037 1 1037 1036 1 141 1038 1 1037 1038 1 258 1039 1 1039 1038 0 1039 1036 1
		 1034 1039 0 993 1040 1 1040 1037 1 259 1041 1 992 1041 0 1041 1040 1 142 1042 0 1041 1042 0
		 260 1043 1 1043 1042 0 1043 1040 1 1038 1043 0;
	setAttr -s 1044 -ch 4176 ".fc";
	setAttr ".fc[0:499]" -type "polyFaces" 
		f 4 996 997 999 -1001
		mu 0 4 0 1 2 3
		f 4 1002 1003 1004 -998
		mu 0 4 1 4 5 2
		f 4 -1005 1005 -1007 1007
		mu 0 4 2 5 10 6
		f 4 -1000 -1008 -1010 -1011
		mu 0 4 3 2 6 7
		f 4 1012 1013 1014 -1004
		mu 0 4 4 8 9 5
		f 4 1016 1017 1018 -1014
		mu 0 4 8 13 14 9
		f 4 -1019 1019 -1021 1021
		mu 0 4 9 14 21 15
		f 4 -1015 -1022 -1023 -1006
		mu 0 4 5 9 15 10
		f 4 1024 1025 1026 -1018
		mu 0 4 13 19 20 14
		f 4 1028 1029 1030 -1026
		mu 0 4 19 26 27 20
		f 4 -1031 1031 -1033 1033
		mu 0 4 20 27 36 28
		f 4 -1027 -1034 -1035 -1020
		mu 0 4 14 20 28 21
		f 4 1036 1037 1038 -1030
		mu 0 4 26 34 35 27
		f 4 1040 1041 1042 -1038
		mu 0 4 34 43 44 35
		f 4 -1043 1043 -1045 1045
		mu 0 4 35 44 55 45
		f 4 -1039 -1046 -1047 -1032
		mu 0 4 27 35 45 36
		f 4 1048 1049 1050 -1042
		mu 0 4 43 53 54 44
		f 4 1052 1053 1054 -1050
		mu 0 4 53 816 817 54
		f 4 -1055 1055 -1057 1057
		mu 0 4 54 817 820 64
		f 4 -1051 -1058 -1059 -1044
		mu 0 4 44 54 64 55
		f 4 1060 1061 1062 -1054
		mu 0 4 816 818 819 817
		f 4 1064 1065 1066 -1062
		mu 0 4 818 821 822 819
		f 4 -1067 1067 -1069 1069
		mu 0 4 819 822 827 823
		f 4 -1063 -1070 -1071 -1056
		mu 0 4 817 819 823 820
		f 4 1072 1073 1074 -1066
		mu 0 4 821 825 826 822
		f 4 1076 1077 1078 -1074
		mu 0 4 825 830 831 826
		f 4 -1079 1079 -1081 1081
		mu 0 4 826 831 836 832
		f 4 -1075 -1082 -1083 -1068
		mu 0 4 822 826 832 827
		f 4 1084 1085 1086 -1078
		mu 0 4 830 234 235 831
		f 4 1088 1089 1090 -1086
		mu 0 4 234 224 225 235
		f 4 -1091 1091 -1093 1093
		mu 0 4 235 225 233 245
		f 4 -1087 -1094 -1095 -1080
		mu 0 4 831 235 245 836
		f 4 1096 1097 1098 -1090
		mu 0 4 224 216 217 225
		f 4 1100 1101 1102 -1098
		mu 0 4 216 208 211 217
		f 4 -1103 1103 -1105 1105
		mu 0 4 217 211 215 223
		f 4 -1099 -1106 -1107 -1092
		mu 0 4 225 217 223 233
		f 4 1108 1109 1110 -1102
		mu 0 4 208 209 210 211
		f 4 1112 1113 1114 -1110
		mu 0 4 209 212 213 210
		f 4 -1115 1115 -1117 1117
		mu 0 4 210 213 220 214
		f 4 -1111 -1118 -1119 -1104
		mu 0 4 211 210 214 215
		f 4 1120 1121 1122 -1114
		mu 0 4 212 218 219 213
		f 4 1124 1125 1126 -1122
		mu 0 4 218 226 227 219
		f 4 -1127 1127 -1129 1129
		mu 0 4 219 227 238 228
		f 4 -1123 -1130 -1131 -1116
		mu 0 4 213 219 228 220
		f 4 1132 1133 1134 -1126
		mu 0 4 226 236 237 227
		f 4 1136 1138 1139 -1134
		mu 0 4 236 246 247 237
		f 4 -1140 1141 -1143 1143
		mu 0 4 237 247 257 248
		f 4 -1135 -1144 -1145 -1128
		mu 0 4 227 237 248 238
		f 4 1009 1145 1147 -1149
		mu 0 4 7 6 11 12
		f 4 1006 1149 1150 -1146
		mu 0 4 6 10 16 11
		f 4 -1151 1151 -1153 1153
		mu 0 4 11 16 23 17
		f 4 -1148 -1154 -1156 -1157
		mu 0 4 12 11 17 18
		f 4 1022 1157 1158 -1150
		mu 0 4 10 15 22 16
		f 4 1020 1159 1160 -1158
		mu 0 4 15 21 29 22
		f 4 -1161 1161 -1163 1163
		mu 0 4 22 29 38 30
		f 4 -1159 -1164 -1165 -1152
		mu 0 4 16 22 30 23
		f 4 1034 1165 1166 -1160
		mu 0 4 21 28 37 29
		f 4 1032 1167 1168 -1166
		mu 0 4 28 36 46 37
		f 4 -1169 1169 -1171 1171
		mu 0 4 37 46 57 47
		f 4 -1167 -1172 -1173 -1162
		mu 0 4 29 37 47 38
		f 4 1046 1173 1174 -1168
		mu 0 4 36 45 56 46
		f 4 1044 1175 1176 -1174
		mu 0 4 45 55 65 56
		f 4 -1177 1177 -1179 1179
		mu 0 4 56 65 75 66
		f 4 -1175 -1180 -1181 -1170
		mu 0 4 46 56 66 57
		f 4 1058 1181 1182 -1176
		mu 0 4 55 64 74 65
		f 4 1056 1183 1184 -1182
		mu 0 4 64 820 824 74
		f 4 -1185 1185 -1187 1187
		mu 0 4 74 824 829 84
		f 4 -1183 -1188 -1189 -1178
		mu 0 4 65 74 84 75
		f 4 1070 1189 1190 -1184
		mu 0 4 820 823 828 824
		f 4 1068 1191 1192 -1190
		mu 0 4 823 827 833 828
		f 4 -1193 1193 -1195 1195
		mu 0 4 828 833 838 834
		f 4 -1191 -1196 -1197 -1186
		mu 0 4 824 828 834 829
		f 4 1082 1197 1198 -1192
		mu 0 4 827 832 837 833
		f 4 1080 1199 1200 -1198
		mu 0 4 832 836 841 837
		f 4 -1201 1201 -1203 1203
		mu 0 4 837 841 846 842
		f 4 -1199 -1204 -1205 -1194
		mu 0 4 833 837 842 838
		f 4 1094 1205 1206 -1200
		mu 0 4 836 245 256 841
		f 4 1092 1207 1208 -1206
		mu 0 4 245 233 244 256
		f 4 -1209 1209 -1211 1211
		mu 0 4 256 244 255 266
		f 4 -1207 -1212 -1213 -1202
		mu 0 4 841 256 266 846
		f 4 1106 1213 1214 -1208
		mu 0 4 233 223 232 244
		f 4 1104 1215 1216 -1214
		mu 0 4 223 215 222 232
		f 4 -1217 1217 -1219 1219
		mu 0 4 232 222 231 243
		f 4 -1215 -1220 -1221 -1210
		mu 0 4 244 232 243 255
		f 4 1118 1221 1222 -1216
		mu 0 4 215 214 221 222
		f 4 1116 1223 1224 -1222
		mu 0 4 214 220 229 221
		f 4 -1225 1225 -1227 1227
		mu 0 4 221 229 240 230
		f 4 -1223 -1228 -1229 -1218
		mu 0 4 222 221 230 231
		f 4 1130 1229 1230 -1224
		mu 0 4 220 228 239 229
		f 4 1128 1231 1232 -1230
		mu 0 4 228 238 249 239
		f 4 -1233 1233 -1235 1235
		mu 0 4 239 249 259 250
		f 4 -1231 -1236 -1237 -1226
		mu 0 4 229 239 250 240
		f 4 1144 1237 1238 -1232
		mu 0 4 238 248 258 249
		f 4 1142 1240 1241 -1238
		mu 0 4 248 257 267 258
		f 4 -1242 1243 -1245 1245
		mu 0 4 258 267 277 268
		f 4 -1239 -1246 -1247 -1234
		mu 0 4 249 258 268 259
		f 4 1155 1247 1249 -1251
		mu 0 4 18 17 24 25
		f 4 1152 1251 1252 -1248
		mu 0 4 17 23 31 24
		f 4 -1253 1253 -1255 1255
		mu 0 4 24 31 40 32
		f 4 -1250 -1256 -1258 -1259
		mu 0 4 25 24 32 33
		f 4 1164 1259 1260 -1252
		mu 0 4 23 30 39 31
		f 4 1162 1261 1262 -1260
		mu 0 4 30 38 48 39
		f 4 -1263 1263 -1265 1265
		mu 0 4 39 48 59 49
		f 4 -1261 -1266 -1267 -1254
		mu 0 4 31 39 49 40
		f 4 1172 1267 1268 -1262
		mu 0 4 38 47 58 48
		f 4 1170 1269 1270 -1268
		mu 0 4 47 57 67 58
		f 4 -1271 1271 -1273 1273
		mu 0 4 58 67 77 68
		f 4 -1269 -1274 -1275 -1264
		mu 0 4 48 58 68 59
		f 4 1180 1275 1276 -1270
		mu 0 4 57 66 76 67
		f 4 1178 1277 1278 -1276
		mu 0 4 66 75 85 76
		f 4 -1279 1279 -1281 1281
		mu 0 4 76 85 95 86
		f 4 -1277 -1282 -1283 -1272
		mu 0 4 67 76 86 77
		f 4 1188 1283 1284 -1278
		mu 0 4 75 84 94 85
		f 4 1186 1285 1286 -1284
		mu 0 4 84 829 835 94
		f 4 -1287 1287 -1289 1289
		mu 0 4 94 835 840 104
		f 4 -1285 -1290 -1291 -1280
		mu 0 4 85 94 104 95
		f 4 1196 1291 1292 -1286
		mu 0 4 829 834 839 835
		f 4 1194 1293 1294 -1292
		mu 0 4 834 838 843 839
		f 4 -1295 1295 -1297 1297
		mu 0 4 839 843 848 844
		f 4 -1293 -1298 -1299 -1288
		mu 0 4 835 839 844 840
		f 4 1204 1299 1300 -1294
		mu 0 4 838 842 847 843
		f 4 1202 1301 1302 -1300
		mu 0 4 842 846 851 847
		f 4 -1303 1303 -1305 1305
		mu 0 4 847 851 856 852
		f 4 -1301 -1306 -1307 -1296
		mu 0 4 843 847 852 848
		f 4 1212 1307 1308 -1302
		mu 0 4 846 266 276 851
		f 4 1210 1309 1310 -1308
		mu 0 4 266 255 265 276
		f 4 -1311 1311 -1313 1313
		mu 0 4 276 265 275 286
		f 4 -1309 -1314 -1315 -1304
		mu 0 4 851 276 286 856
		f 4 1220 1315 1316 -1310
		mu 0 4 255 243 254 265
		f 4 1218 1317 1318 -1316
		mu 0 4 243 231 242 254
		f 4 -1319 1319 -1321 1321
		mu 0 4 254 242 253 264
		f 4 -1317 -1322 -1323 -1312
		mu 0 4 265 254 264 275
		f 4 1228 1323 1324 -1318
		mu 0 4 231 230 241 242
		f 4 1226 1325 1326 -1324
		mu 0 4 230 240 251 241
		f 4 -1327 1327 -1329 1329
		mu 0 4 241 251 261 252
		f 4 -1325 -1330 -1331 -1320
		mu 0 4 242 241 252 253
		f 4 1236 1331 1332 -1326
		mu 0 4 240 250 260 251
		f 4 1234 1333 1334 -1332
		mu 0 4 250 259 269 260
		f 4 -1335 1335 -1337 1337
		mu 0 4 260 269 279 270
		f 4 -1333 -1338 -1339 -1328
		mu 0 4 251 260 270 261
		f 4 1246 1339 1340 -1334
		mu 0 4 259 268 278 269
		f 4 1244 1342 1343 -1340
		mu 0 4 268 277 287 278
		f 4 -1344 1345 -1347 1347
		mu 0 4 278 287 297 288
		f 4 -1341 -1348 -1349 -1336
		mu 0 4 269 278 288 279
		f 4 1257 1349 1351 -1353
		mu 0 4 33 32 41 42
		f 4 1254 1353 1354 -1350
		mu 0 4 32 40 50 41
		f 4 -1355 1355 -1357 1357
		mu 0 4 41 50 61 51
		f 4 -1352 -1358 -1360 -1361
		mu 0 4 42 41 51 52
		f 4 1266 1361 1362 -1354
		mu 0 4 40 49 60 50
		f 4 1264 1363 1364 -1362
		mu 0 4 49 59 69 60
		f 4 -1365 1365 -1367 1367
		mu 0 4 60 69 79 70
		f 4 -1363 -1368 -1369 -1356
		mu 0 4 50 60 70 61
		f 4 1274 1369 1370 -1364
		mu 0 4 59 68 78 69
		f 4 1272 1371 1372 -1370
		mu 0 4 68 77 87 78
		f 4 -1373 1373 -1375 1375
		mu 0 4 78 87 97 88
		f 4 -1371 -1376 -1377 -1366
		mu 0 4 69 78 88 79
		f 4 1282 1377 1378 -1372
		mu 0 4 77 86 96 87
		f 4 1280 1379 1380 -1378
		mu 0 4 86 95 105 96
		f 4 -1381 1381 -1383 1383
		mu 0 4 96 105 115 106
		f 4 -1379 -1384 -1385 -1374
		mu 0 4 87 96 106 97
		f 4 1290 1385 1386 -1380
		mu 0 4 95 104 114 105
		f 4 1288 1387 1388 -1386
		mu 0 4 104 840 845 114
		f 4 -1389 1389 -1391 1391
		mu 0 4 114 845 850 124
		f 4 -1387 -1392 -1393 -1382
		mu 0 4 105 114 124 115
		f 4 1298 1393 1394 -1388
		mu 0 4 840 844 849 845
		f 4 1296 1395 1396 -1394
		mu 0 4 844 848 853 849
		f 4 -1397 1397 -1399 1399
		mu 0 4 849 853 858 854
		f 4 -1395 -1400 -1401 -1390
		mu 0 4 845 849 854 850
		f 4 1306 1401 1402 -1396
		mu 0 4 848 852 857 853
		f 4 1304 1403 1404 -1402
		mu 0 4 852 856 861 857
		f 4 -1405 1405 -1407 1407
		mu 0 4 857 861 866 862
		f 4 -1403 -1408 -1409 -1398
		mu 0 4 853 857 862 858
		f 4 1314 1409 1410 -1404
		mu 0 4 856 286 296 861
		f 4 1312 1411 1412 -1410
		mu 0 4 286 275 285 296
		f 4 -1413 1413 -1415 1415
		mu 0 4 296 285 295 306
		f 4 -1411 -1416 -1417 -1406
		mu 0 4 861 296 306 866
		f 4 1322 1417 1418 -1412
		mu 0 4 275 264 274 285
		f 4 1320 1419 1420 -1418
		mu 0 4 264 253 263 274
		f 4 -1421 1421 -1423 1423
		mu 0 4 274 263 273 284
		f 4 -1419 -1424 -1425 -1414
		mu 0 4 285 274 284 295
		f 4 1330 1425 1426 -1420
		mu 0 4 253 252 262 263
		f 4 1328 1427 1428 -1426
		mu 0 4 252 261 271 262
		f 4 -1429 1429 -1431 1431
		mu 0 4 262 271 281 272
		f 4 -1427 -1432 -1433 -1422
		mu 0 4 263 262 272 273
		f 4 1338 1433 1434 -1428
		mu 0 4 261 270 280 271
		f 4 1336 1435 1436 -1434
		mu 0 4 270 279 289 280
		f 4 -1437 1437 -1439 1439
		mu 0 4 280 289 299 290
		f 4 -1435 -1440 -1441 -1430
		mu 0 4 271 280 290 281
		f 4 1348 1441 1442 -1436
		mu 0 4 279 288 298 289
		f 4 1346 1444 1445 -1442
		mu 0 4 288 297 307 298
		f 4 -1446 1447 -1449 1449
		mu 0 4 298 307 317 308
		f 4 -1443 -1450 -1451 -1438
		mu 0 4 289 298 308 299
		f 4 1359 1451 1453 -1455
		mu 0 4 52 51 62 63
		f 4 1356 1455 1456 -1452
		mu 0 4 51 61 71 62
		f 4 -1457 1457 -1459 1459
		mu 0 4 62 71 81 72
		f 4 -1454 -1460 -1462 -1463
		mu 0 4 63 62 72 73
		f 4 1368 1463 1464 -1456
		mu 0 4 61 70 80 71
		f 4 1366 1465 1466 -1464
		mu 0 4 70 79 89 80
		f 4 -1467 1467 -1469 1469
		mu 0 4 80 89 99 90
		f 4 -1465 -1470 -1471 -1458
		mu 0 4 71 80 90 81
		f 4 1376 1471 1472 -1466
		mu 0 4 79 88 98 89
		f 4 1374 1473 1474 -1472
		mu 0 4 88 97 107 98
		f 4 -1475 1475 -1477 1477
		mu 0 4 98 107 117 108
		f 4 -1473 -1478 -1479 -1468
		mu 0 4 89 98 108 99
		f 4 1384 1479 1480 -1474
		mu 0 4 97 106 116 107
		f 4 1382 1481 1482 -1480
		mu 0 4 106 115 125 116
		f 4 -1483 1483 -1485 1485
		mu 0 4 116 125 135 126
		f 4 -1481 -1486 -1487 -1476
		mu 0 4 107 116 126 117
		f 4 1392 1487 1488 -1482
		mu 0 4 115 124 134 125
		f 4 1390 1489 1490 -1488
		mu 0 4 124 850 855 134
		f 4 -1491 1491 -1493 1493
		mu 0 4 134 855 860 144
		f 4 -1489 -1494 -1495 -1484
		mu 0 4 125 134 144 135
		f 4 1400 1495 1496 -1490
		mu 0 4 850 854 859 855
		f 4 1398 1497 1498 -1496
		mu 0 4 854 858 863 859
		f 4 -1499 1499 -1501 1501
		mu 0 4 859 863 868 864
		f 4 -1497 -1502 -1503 -1492
		mu 0 4 855 859 864 860
		f 4 1408 1503 1504 -1498
		mu 0 4 858 862 867 863
		f 4 1406 1505 1506 -1504
		mu 0 4 862 866 871 867
		f 4 -1507 1507 -1509 1509
		mu 0 4 867 871 875 872
		f 4 -1505 -1510 -1511 -1500
		mu 0 4 863 867 872 868
		f 4 1416 1511 1512 -1506
		mu 0 4 866 306 316 871
		f 4 1414 1513 1514 -1512
		mu 0 4 306 295 305 316
		f 4 -1515 1515 -1517 1517
		mu 0 4 316 305 315 878
		f 4 -1513 -1518 -1519 -1508
		mu 0 4 871 316 878 875
		f 4 1424 1519 1520 -1514
		mu 0 4 295 284 294 305
		f 4 1422 1521 1522 -1520
		mu 0 4 284 273 283 294
		f 4 -1523 1523 -1525 1525
		mu 0 4 294 283 293 304
		f 4 -1521 -1526 -1527 -1516
		mu 0 4 305 294 304 315
		f 4 1432 1527 1528 -1522
		mu 0 4 273 272 282 283
		f 4 1430 1529 1530 -1528
		mu 0 4 272 281 291 282
		f 4 -1531 1531 -1533 1533
		mu 0 4 282 291 301 292
		f 4 -1529 -1534 -1535 -1524
		mu 0 4 283 282 292 293
		f 4 1440 1535 1536 -1530
		mu 0 4 281 290 300 291
		f 4 1438 1537 1538 -1536
		mu 0 4 290 299 309 300
		f 4 -1539 1539 -1541 1541
		mu 0 4 300 309 319 310
		f 4 -1537 -1542 -1543 -1532
		mu 0 4 291 300 310 301
		f 4 1450 1543 1544 -1538
		mu 0 4 299 308 318 309
		f 4 1448 1546 1547 -1544
		mu 0 4 308 317 326 318
		f 4 -1548 1549 -1551 1551
		mu 0 4 318 326 335 327
		f 4 -1545 -1552 -1553 -1540
		mu 0 4 309 318 327 319
		f 4 1461 1553 1555 -1557
		mu 0 4 73 72 82 83
		f 4 1458 1557 1558 -1554
		mu 0 4 72 81 91 82
		f 4 -1559 1559 -1561 1561
		mu 0 4 82 91 101 92
		f 4 -1556 -1562 -1564 -1565
		mu 0 4 83 82 92 93
		f 4 1470 1565 1566 -1558
		mu 0 4 81 90 100 91
		f 4 1468 1567 1568 -1566
		mu 0 4 90 99 109 100
		f 4 -1569 1569 -1571 1571
		mu 0 4 100 109 119 110
		f 4 -1567 -1572 -1573 -1560
		mu 0 4 91 100 110 101
		f 4 1478 1573 1574 -1568
		mu 0 4 99 108 118 109
		f 4 1476 1575 1576 -1574
		mu 0 4 108 117 127 118
		f 4 -1577 1577 -1579 1579
		mu 0 4 118 127 137 128
		f 4 -1575 -1580 -1581 -1570
		mu 0 4 109 118 128 119
		f 4 1486 1581 1582 -1576
		mu 0 4 117 126 136 127
		f 4 1484 1583 1584 -1582
		mu 0 4 126 135 145 136
		f 4 -1585 1586 -1588 1588
		mu 0 4 136 145 155 146
		f 4 -1583 -1589 -1590 -1578
		mu 0 4 127 136 146 137
		f 4 1494 1590 1591 -1584
		mu 0 4 135 144 154 145
		f 4 1492 1592 1593 -1591
		mu 0 4 144 860 865 154
		f 4 -1594 1595 -1598 1598
		mu 0 4 154 865 870 164
		f 4 -1592 -1599 -1600 -1587
		mu 0 4 145 154 164 155
		f 4 1502 1600 1601 -1593
		mu 0 4 860 864 869 865
		f 4 1500 1602 1603 -1601
		mu 0 4 864 868 873 869
		f 4 -1604 1605 -1608 1608
		mu 0 4 869 873 877 874
		f 4 -1602 -1609 -1610 -1596
		mu 0 4 865 869 874 870
		f 4 1510 1610 1611 -1603
		mu 0 4 868 872 876 873
		f 4 1508 1612 1613 -1611
		mu 0 4 872 875 879 876
		f 4 -1614 1614 -1616 1616
		mu 0 4 876 879 882 880
		f 4 -1612 -1617 -1618 -1606
		mu 0 4 873 876 880 877
		f 4 1518 1618 1619 -1613
		mu 0 4 875 878 881 879
		f 4 1516 1620 1621 -1619
		mu 0 4 878 315 325 881
		f 4 -1622 1622 -1624 1624
		mu 0 4 881 325 334 885
		f 4 -1620 -1625 -1626 -1615
		mu 0 4 879 881 885 882
		f 4 1526 1626 1627 -1621
		mu 0 4 315 304 314 325
		f 4 1524 1628 1629 -1627
		mu 0 4 304 293 303 314
		f 4 -1630 1630 -1632 1632
		mu 0 4 314 303 313 324
		f 4 -1628 -1633 -1634 -1623
		mu 0 4 325 314 324 334
		f 4 1534 1634 1635 -1629
		mu 0 4 293 292 302 303
		f 4 1532 1636 1637 -1635
		mu 0 4 292 301 311 302
		f 4 -1638 1638 -1640 1640
		mu 0 4 302 311 321 312
		f 4 -1636 -1641 -1642 -1631
		mu 0 4 303 302 312 313
		f 4 1542 1642 1643 -1637
		mu 0 4 301 310 320 311
		f 4 1540 1644 1645 -1643
		mu 0 4 310 319 328 320
		f 4 -1646 1646 -1648 1648
		mu 0 4 320 328 337 329
		f 4 -1644 -1649 -1650 -1639
		mu 0 4 311 320 329 321
		f 4 1552 1650 1651 -1645
		mu 0 4 319 327 336 328
		f 4 1550 1653 1654 -1651
		mu 0 4 327 335 344 336
		f 4 -1655 1656 -1658 1658
		mu 0 4 336 344 353 345
		f 4 -1652 -1659 -1660 -1647
		mu 0 4 328 336 345 337
		f 4 1563 1660 1662 -1664
		mu 0 4 93 92 102 103
		f 4 1560 1664 1665 -1661
		mu 0 4 92 101 111 102
		f 4 -1666 1666 -1668 1668
		mu 0 4 102 111 121 112
		f 4 -1663 -1669 -1671 -1672
		mu 0 4 103 102 112 113
		f 4 1572 1672 1673 -1665
		mu 0 4 101 110 120 111
		f 4 1570 1674 1675 -1673
		mu 0 4 110 119 129 120
		f 4 -1676 1676 -1678 1678
		mu 0 4 120 129 139 130
		f 4 -1674 -1679 -1680 -1667
		mu 0 4 111 120 130 121
		f 4 1580 1680 1681 -1675
		mu 0 4 119 128 138 129
		f 4 1578 1682 1683 -1681
		mu 0 4 128 137 147 138
		f 4 -1684 1684 -1686 1686
		mu 0 4 138 147 157 148
		f 4 -1682 -1687 -1688 -1677
		mu 0 4 129 138 148 139
		f 4 1589 1688 1689 -1683
		mu 0 4 137 146 156 147
		f 4 1587 1691 1692 -1689
		mu 0 4 146 155 165 156
		f 4 -1693 1694 -1696 1696
		mu 0 4 156 165 174 166
		f 4 -1690 -1697 -1698 -1685
		mu 0 4 147 156 166 157
		f 4 1617 1698 1700 -1702
		mu 0 4 877 880 883 884
		f 4 1615 1702 1703 -1699
		mu 0 4 880 882 886 883
		f 4 -1704 1704 -1706 1706
		mu 0 4 883 886 890 887
		f 4 -1701 -1707 -1709 -1710
		mu 0 4 884 883 887 888
		f 4 1625 1710 1711 -1703
		mu 0 4 882 885 889 886
		f 4 1623 1712 1713 -1711
		mu 0 4 885 334 343 889
		f 4 -1714 1714 -1716 1716
		mu 0 4 889 343 352 893
		f 4 -1712 -1717 -1718 -1705
		mu 0 4 886 889 893 890
		f 4 1633 1718 1719 -1713
		mu 0 4 334 324 333 343
		f 4 1631 1720 1721 -1719
		mu 0 4 324 313 323 333
		f 4 -1722 1722 -1724 1724
		mu 0 4 333 323 332 342
		f 4 -1720 -1725 -1726 -1715
		mu 0 4 343 333 342 352
		f 4 1641 1726 1727 -1721
		mu 0 4 313 312 322 323
		f 4 1639 1728 1729 -1727
		mu 0 4 312 321 330 322
		f 4 -1730 1730 -1732 1732
		mu 0 4 322 330 339 331
		f 4 -1728 -1733 -1734 -1723
		mu 0 4 323 322 331 332
		f 4 1649 1734 1735 -1729
		mu 0 4 321 329 338 330
		f 4 1647 1736 1737 -1735
		mu 0 4 329 337 346 338
		f 4 -1738 1738 -1740 1740
		mu 0 4 338 346 355 347
		f 4 -1736 -1741 -1742 -1731
		mu 0 4 330 338 347 339
		f 4 1659 1742 1743 -1737
		mu 0 4 337 345 354 346
		f 4 1657 1745 1746 -1743
		mu 0 4 345 353 362 354
		f 4 -1747 1748 -1750 1750
		mu 0 4 354 362 371 363
		f 4 -1744 -1751 -1752 -1739
		mu 0 4 346 354 363 355
		f 4 1670 1752 1754 -1756
		mu 0 4 113 112 122 123
		f 4 1667 1756 1757 -1753
		mu 0 4 112 121 131 122
		f 4 -1758 1758 -1760 1760
		mu 0 4 122 131 141 132
		f 4 -1755 -1761 -1763 -1764
		mu 0 4 123 122 132 133
		f 4 1679 1764 1765 -1757
		mu 0 4 121 130 140 131
		f 4 1677 1766 1767 -1765
		mu 0 4 130 139 149 140
		f 4 -1768 1768 -1770 1770
		mu 0 4 140 149 159 150
		f 4 -1766 -1771 -1772 -1759
		mu 0 4 131 140 150 141
		f 4 1687 1772 1773 -1767
		mu 0 4 139 148 158 149
		f 4 1685 1774 1775 -1773
		mu 0 4 148 157 167 158
		f 4 -1776 1776 -1778 1778
		mu 0 4 158 167 176 168
		f 4 -1774 -1779 -1780 -1769
		mu 0 4 149 158 168 159
		f 4 1697 1780 1781 -1775
		mu 0 4 157 166 175 167
		f 4 1695 1782 1783 -1781
		mu 0 4 166 174 183 175
		f 4 -1784 1784 -1786 1786
		mu 0 4 175 183 191 184
		f 4 -1782 -1787 -1788 -1777
		mu 0 4 167 175 184 176
		f 4 1789 1790 1791 -1783
		mu 0 4 174 189 190 183
		f 4 1793 1794 1795 -1791
		mu 0 4 189 904 905 190
		f 4 -1796 1796 -1798 1798
		mu 0 4 190 905 911 196
		f 4 -1792 -1799 -1800 -1785
		mu 0 4 183 190 196 191
		f 4 1801 1802 1803 -1795
		mu 0 4 904 897 898 905
		f 4 1804 1805 1806 -1803
		mu 0 4 897 888 892 898
		f 4 -1807 1807 -1809 1809
		mu 0 4 898 892 896 903
		f 4 -1804 -1810 -1811 -1797
		mu 0 4 905 898 903 911
		f 4 1708 1811 1812 -1806
		mu 0 4 888 887 891 892
		f 4 1705 1813 1814 -1812
		mu 0 4 887 890 894 891
		f 4 -1815 1815 -1817 1817
		mu 0 4 891 894 900 895
		f 4 -1813 -1818 -1819 -1808
		mu 0 4 892 891 895 896
		f 4 1717 1819 1820 -1814
		mu 0 4 890 893 899 894
		f 4 1715 1821 1822 -1820
		mu 0 4 893 352 361 899
		f 4 -1823 1823 -1825 1825
		mu 0 4 899 361 370 906
		f 4 -1821 -1826 -1827 -1816
		mu 0 4 894 899 906 900
		f 4 1725 1827 1828 -1822
		mu 0 4 352 342 351 361
		f 4 1723 1829 1830 -1828
		mu 0 4 342 332 341 351
		f 4 -1831 1831 -1833 1833
		mu 0 4 351 341 350 360
		f 4 -1829 -1834 -1835 -1824
		mu 0 4 361 351 360 370
		f 4 1733 1835 1836 -1830
		mu 0 4 332 331 340 341
		f 4 1731 1837 1838 -1836
		mu 0 4 331 339 348 340
		f 4 -1839 1839 -1841 1841
		mu 0 4 340 348 357 349
		f 4 -1837 -1842 -1843 -1832
		mu 0 4 341 340 349 350
		f 4 1741 1843 1844 -1838
		mu 0 4 339 347 356 348
		f 4 1739 1845 1846 -1844
		mu 0 4 347 355 364 356
		f 4 -1847 1847 -1849 1849
		mu 0 4 356 364 373 365
		f 4 -1845 -1850 -1851 -1840
		mu 0 4 348 356 365 357
		f 4 1751 1851 1852 -1846
		mu 0 4 355 363 372 364
		f 4 1749 1854 1855 -1852
		mu 0 4 363 371 380 372
		f 4 -1856 1857 -1859 1859
		mu 0 4 372 380 389 381
		f 4 -1853 -1860 -1861 -1848
		mu 0 4 364 372 381 373
		f 4 1762 1861 1863 -1865
		mu 0 4 133 132 142 143
		f 4 1759 1865 1866 -1862
		mu 0 4 132 141 151 142
		f 4 -1867 1867 -1869 1869
		mu 0 4 142 151 161 152
		f 4 -1864 -1870 -1872 -1873
		mu 0 4 143 142 152 153
		f 4 1771 1873 1874 -1866
		mu 0 4 141 150 160 151
		f 4 1769 1875 1876 -1874
		mu 0 4 150 159 169 160
		f 4 -1877 1877 -1879 1879
		mu 0 4 160 169 178 170
		f 4 -1875 -1880 -1881 -1868
		mu 0 4 151 160 170 161
		f 4 1779 1881 1882 -1876
		mu 0 4 159 168 177 169
		f 4 1777 1883 1884 -1882
		mu 0 4 168 176 185 177
		f 4 -1885 1885 -1887 1887
		mu 0 4 177 185 193 186
		f 4 -1883 -1888 -1889 -1878
		mu 0 4 169 177 186 178
		f 4 1787 1889 1890 -1884
		mu 0 4 176 184 192 185
		f 4 1785 1891 1892 -1890
		mu 0 4 184 191 197 192
		f 4 -1893 1893 -1895 1895
		mu 0 4 192 197 202 198
		f 4 -1891 -1896 -1897 -1886
		mu 0 4 185 192 198 193
		f 4 1799 1897 1898 -1892
		mu 0 4 191 196 201 197
		f 4 1797 1899 1900 -1898
		mu 0 4 196 911 917 201
		f 4 -1901 1901 -1903 1903
		mu 0 4 201 917 923 928
		f 4 -1899 -1904 -1905 -1894
		mu 0 4 197 201 928 202
		f 4 1810 1905 1906 -1900
		mu 0 4 911 903 910 917
		f 4 1808 1907 1908 -1906
		mu 0 4 903 896 902 910
		f 4 -1909 1909 -1911 1911
		mu 0 4 910 902 909 916
		f 4 -1907 -1912 -1913 -1902
		mu 0 4 917 910 916 923
		f 4 1818 1913 1914 -1908
		mu 0 4 896 895 901 902
		f 4 1816 1915 1916 -1914
		mu 0 4 895 900 907 901
		f 4 -1917 1917 -1919 1919
		mu 0 4 901 907 913 908
		f 4 -1915 -1920 -1921 -1910
		mu 0 4 902 901 908 909
		f 4 1826 1921 1922 -1916
		mu 0 4 900 906 912 907
		f 4 1824 1923 1924 -1922
		mu 0 4 906 370 379 912
		f 4 -1925 1925 -1927 1927
		mu 0 4 912 379 388 918
		f 4 -1923 -1928 -1929 -1918
		mu 0 4 907 912 918 913
		f 4 1834 1929 1930 -1924
		mu 0 4 370 360 369 379
		f 4 1832 1931 1932 -1930
		mu 0 4 360 350 359 369
		f 4 -1933 1933 -1935 1935
		mu 0 4 369 359 368 378
		f 4 -1931 -1936 -1937 -1926
		mu 0 4 379 369 378 388
		f 4 1842 1937 1938 -1932
		mu 0 4 350 349 358 359
		f 4 1840 1939 1940 -1938
		mu 0 4 349 357 366 358
		f 4 -1941 1941 -1943 1943
		mu 0 4 358 366 375 367
		f 4 -1939 -1944 -1945 -1934
		mu 0 4 359 358 367 368
		f 4 1850 1945 1946 -1940
		mu 0 4 357 365 374 366
		f 4 1848 1947 1948 -1946
		mu 0 4 365 373 382 374
		f 4 -1949 1949 -1951 1951
		mu 0 4 374 382 391 383
		f 4 -1947 -1952 -1953 -1942
		mu 0 4 366 374 383 375
		f 4 1860 1953 1954 -1948
		mu 0 4 373 381 390 382
		f 4 1858 1956 1957 -1954
		mu 0 4 381 389 396 390
		f 4 -1958 1959 -1961 1961
		mu 0 4 390 396 401 397
		f 4 -1955 -1962 -1963 -1950
		mu 0 4 382 390 397 391
		f 4 1871 1963 1965 -1967
		mu 0 4 153 152 162 163
		f 4 1868 1967 1968 -1964
		mu 0 4 152 161 171 162
		f 4 -1969 1970 -1973 1973
		mu 0 4 162 171 180 172
		f 4 -1966 -1974 -1976 -1977
		mu 0 4 163 162 172 173
		f 4 1880 1977 1978 -1968
		mu 0 4 161 170 179 171
		f 4 1878 1979 1980 -1978
		mu 0 4 170 178 187 179
		f 4 -1981 1982 -1985 1985
		mu 0 4 179 187 195 188
		f 4 -1979 -1986 -1987 -1971
		mu 0 4 171 179 188 180
		f 4 1888 1987 1988 -1980
		mu 0 4 178 186 194 187
		f 4 1886 1989 1990 -1988
		mu 0 4 186 193 199 194
		f 4 -1991 1992 -1995 1995
		mu 0 4 194 199 204 200
		f 4 -1989 -1996 -1997 -1983
		mu 0 4 187 194 200 195
		f 4 1896 1997 1998 -1990
		mu 0 4 193 198 203 199
		f 4 1894 1999 2000 -1998
		mu 0 4 198 202 205 203
		f 4 -2001 2002 -2005 2005
		mu 0 4 203 205 207 206
		f 4 -1999 -2006 -2007 -1993
		mu 0 4 199 203 206 204
		f 4 1904 2007 2008 -2000
		mu 0 4 202 928 931 205
		f 4 1902 2009 2010 -2008
		mu 0 4 928 923 927 931
		f 4 -2011 2012 -2015 2015
		mu 0 4 931 927 930 932
		f 4 -2009 -2016 -2017 -2003
		mu 0 4 205 931 932 207
		f 4 1912 2017 2018 -2010
		mu 0 4 923 916 922 927
		f 4 1910 2019 2020 -2018
		mu 0 4 916 909 915 922
		f 4 -2021 2022 -2025 2025
		mu 0 4 922 915 921 926
		f 4 -2019 -2026 -2027 -2013
		mu 0 4 927 922 926 930
		f 4 1920 2027 2028 -2020
		mu 0 4 909 908 914 915
		f 4 1918 2029 2030 -2028
		mu 0 4 908 913 919 914
		f 4 -2031 2032 -2035 2035
		mu 0 4 914 919 925 920
		f 4 -2029 -2036 -2037 -2023
		mu 0 4 915 914 920 921
		f 4 1928 2037 2038 -2030
		mu 0 4 913 918 924 919
		f 4 1926 2039 2040 -2038
		mu 0 4 918 388 395 924
		f 4 -2041 2042 -2045 2045
		mu 0 4 924 395 400 929
		f 4 -2039 -2046 -2047 -2033
		mu 0 4 919 924 929 925
		f 4 1936 2047 2048 -2040
		mu 0 4 388 378 387 395
		f 4 1934 2049 2050 -2048
		mu 0 4 378 368 377 387
		f 4 -2051 2052 -2055 2055
		mu 0 4 387 377 386 394
		f 4 -2049 -2056 -2057 -2043
		mu 0 4 395 387 394 400
		f 4 1944 2057 2058 -2050
		mu 0 4 368 367 376 377
		f 4 1942 2059 2060 -2058
		mu 0 4 367 375 384 376
		f 4 -2061 2062 -2065 2065
		mu 0 4 376 384 393 385
		f 4 -2059 -2066 -2067 -2053
		mu 0 4 377 376 385 386
		f 4 1952 2067 2068 -2060
		mu 0 4 375 383 392 384
		f 4 1950 2069 2070 -2068
		mu 0 4 383 391 398 392
		f 4 -2071 2072 -2075 2075
		mu 0 4 392 398 403 399
		f 4 -2069 -2076 -2077 -2063
		mu 0 4 384 392 399 393
		f 4 1962 2077 2078 -2070
		mu 0 4 391 397 402 398
		f 4 1960 2080 2081 -2078
		mu 0 4 397 401 404 402
		f 4 -2082 2083 -2086 2086
		mu 0 4 402 404 406 405
		f 4 -2079 -2087 -2088 -2073
		mu 0 4 398 402 405 403
		f 4 2 -524 -523 -1
		mu 0 4 407 408 409 410
		f 4 522 -525 -7 -2
		mu 0 4 410 409 413 414
		f 4 -526 51 -8 524
		mu 0 4 409 412 417 413
		f 4 3 50 525 523
		mu 0 4 408 411 412 409
		f 4 6 -528 -527 -5
		mu 0 4 414 413 418 419
		f 4 526 -529 -11 -6
		mu 0 4 419 418 424 425
		f 4 -530 55 -12 528
		mu 0 4 418 423 430 424
		f 4 7 54 529 527
		mu 0 4 413 417 423 418
		f 4 10 -532 -531 -9
		mu 0 4 425 424 431 432
		f 4 530 -533 -15 -10
		mu 0 4 432 431 439 440
		f 4 -534 59 -16 532
		mu 0 4 431 438 447 439
		f 4 11 58 533 531
		mu 0 4 424 430 438 431
		f 4 14 -536 -535 -13
		mu 0 4 440 439 448 449
		f 4 534 -537 -19 -14
		mu 0 4 449 448 458 459
		f 4 -538 63 -20 536
		mu 0 4 448 457 468 458
		f 4 15 62 537 535
		mu 0 4 439 447 457 448
		f 4 18 -540 -539 -17
		mu 0 4 459 458 469 470
		f 4 538 -541 -23 -18
		mu 0 4 470 469 933 934
		f 4 -542 67 -24 540
		mu 0 4 469 480 935 933
		f 4 19 66 541 539
		mu 0 4 458 468 480 469
		f 4 22 -544 -543 -21
		mu 0 4 934 933 936 937
		f 4 542 -545 -27 -22
		mu 0 4 937 936 940 941
		f 4 -546 71 -28 544
		mu 0 4 936 939 944 940
		f 4 23 70 545 543
		mu 0 4 933 935 939 936
		f 4 26 -548 -547 -25
		mu 0 4 941 940 945 946
		f 4 546 -549 -31 -26
		mu 0 4 946 945 951 952
		f 4 -550 75 -32 548
		mu 0 4 945 950 957 951
		f 4 27 74 549 547
		mu 0 4 940 944 950 945;
	setAttr ".fc[500:999]"
		f 4 30 -552 -551 -29
		mu 0 4 952 951 632 631
		f 4 550 -553 -35 -30
		mu 0 4 631 632 624 623
		f 4 -554 79 -36 552
		mu 0 4 632 641 633 624
		f 4 31 78 553 551
		mu 0 4 951 957 641 632
		f 4 34 -556 -555 -33
		mu 0 4 623 624 618 617
		f 4 554 -557 -39 -34
		mu 0 4 617 618 614 613
		f 4 -558 83 -40 556
		mu 0 4 618 625 619 614
		f 4 35 82 557 555
		mu 0 4 624 633 625 618
		f 4 38 -560 -559 -37
		mu 0 4 613 614 615 616
		f 4 558 -561 -43 -38
		mu 0 4 616 615 621 622
		f 4 -562 87 -44 560
		mu 0 4 615 620 628 621
		f 4 39 86 561 559
		mu 0 4 614 619 620 615
		f 4 42 -564 -563 -41
		mu 0 4 622 621 629 630
		f 4 562 -565 -47 -42
		mu 0 4 630 629 639 640
		f 4 -566 91 -48 564
		mu 0 4 629 638 648 639
		f 4 43 90 565 563
		mu 0 4 621 628 638 629
		f 4 46 -568 -567 -45
		mu 0 4 640 639 649 650
		f 4 566 -569 -49 -46
		mu 0 4 650 649 660 661
		f 4 -570 95 -50 568
		mu 0 4 649 659 671 660
		f 4 47 94 569 567
		mu 0 4 639 648 659 649
		f 4 52 -572 -571 -51
		mu 0 4 411 415 416 412
		f 4 570 -573 -57 -52
		mu 0 4 412 416 422 417
		f 4 -574 101 -58 572
		mu 0 4 416 421 428 422
		f 4 53 100 573 571
		mu 0 4 415 420 421 416
		f 4 56 -576 -575 -55
		mu 0 4 417 422 429 423
		f 4 574 -577 -61 -56
		mu 0 4 423 429 437 430
		f 4 -578 105 -62 576
		mu 0 4 429 436 445 437
		f 4 57 104 577 575
		mu 0 4 422 428 436 429
		f 4 60 -580 -579 -59
		mu 0 4 430 437 446 438
		f 4 578 -581 -65 -60
		mu 0 4 438 446 456 447
		f 4 -582 109 -66 580
		mu 0 4 446 455 466 456
		f 4 61 108 581 579
		mu 0 4 437 445 455 446
		f 4 64 -584 -583 -63
		mu 0 4 447 456 467 457
		f 4 582 -585 -69 -64
		mu 0 4 457 467 479 468
		f 4 -586 113 -70 584
		mu 0 4 467 478 489 479
		f 4 65 112 585 583
		mu 0 4 456 466 478 467
		f 4 68 -588 -587 -67
		mu 0 4 468 479 490 480
		f 4 586 -589 -73 -68
		mu 0 4 480 490 938 935
		f 4 -590 117 -74 588
		mu 0 4 490 500 942 938
		f 4 69 116 589 587
		mu 0 4 479 489 500 490
		f 4 72 -592 -591 -71
		mu 0 4 935 938 943 939
		f 4 590 -593 -77 -72
		mu 0 4 939 943 949 944
		f 4 -594 121 -78 592
		mu 0 4 943 948 955 949
		f 4 73 120 593 591
		mu 0 4 938 942 948 943
		f 4 76 -596 -595 -75
		mu 0 4 944 949 956 950
		f 4 594 -597 -81 -76
		mu 0 4 950 956 962 957
		f 4 -598 125 -82 596
		mu 0 4 956 961 967 962
		f 4 77 124 597 595
		mu 0 4 949 955 961 956
		f 4 80 -600 -599 -79
		mu 0 4 957 962 651 641
		f 4 598 -601 -85 -80
		mu 0 4 641 651 642 633
		f 4 -602 129 -86 600
		mu 0 4 651 662 652 642
		f 4 81 128 601 599
		mu 0 4 962 967 662 651
		f 4 84 -604 -603 -83
		mu 0 4 633 642 634 625
		f 4 602 -605 -89 -84
		mu 0 4 625 634 626 619
		f 4 -606 133 -90 604
		mu 0 4 634 643 635 626
		f 4 85 132 605 603
		mu 0 4 642 652 643 634
		f 4 88 -608 -607 -87
		mu 0 4 619 626 627 620
		f 4 606 -609 -93 -88
		mu 0 4 620 627 637 628
		f 4 -610 137 -94 608
		mu 0 4 627 636 646 637
		f 4 89 136 609 607
		mu 0 4 626 635 636 627
		f 4 92 -612 -611 -91
		mu 0 4 628 637 647 638
		f 4 610 -613 -97 -92
		mu 0 4 638 647 658 648
		f 4 -614 141 -98 612
		mu 0 4 647 657 669 658
		f 4 93 140 613 611
		mu 0 4 637 646 657 647
		f 4 96 -616 -615 -95
		mu 0 4 648 658 670 659
		f 4 614 -617 -99 -96
		mu 0 4 659 670 683 671
		f 4 -618 145 -100 616
		mu 0 4 670 682 693 683
		f 4 97 144 617 615
		mu 0 4 658 669 682 670
		f 4 102 -620 -619 -101
		mu 0 4 420 426 427 421
		f 4 618 -621 -107 -102
		mu 0 4 421 427 435 428
		f 4 -622 151 -108 620
		mu 0 4 427 434 443 435
		f 4 103 150 621 619
		mu 0 4 426 433 434 427
		f 4 106 -624 -623 -105
		mu 0 4 428 435 444 436
		f 4 622 -625 -111 -106
		mu 0 4 436 444 454 445
		f 4 -626 155 -112 624
		mu 0 4 444 453 464 454
		f 4 107 154 625 623
		mu 0 4 435 443 453 444
		f 4 110 -628 -627 -109
		mu 0 4 445 454 465 455
		f 4 626 -629 -115 -110
		mu 0 4 455 465 477 466
		f 4 -630 159 -116 628
		mu 0 4 465 476 487 477
		f 4 111 158 629 627
		mu 0 4 454 464 476 465
		f 4 114 -632 -631 -113
		mu 0 4 466 477 488 478
		f 4 630 -633 -119 -114
		mu 0 4 478 488 499 489
		f 4 -634 163 -120 632
		mu 0 4 488 498 509 499
		f 4 115 162 633 631
		mu 0 4 477 487 498 488
		f 4 118 -636 -635 -117
		mu 0 4 489 499 510 500
		f 4 634 -637 -123 -118
		mu 0 4 500 510 947 942
		f 4 -638 167 -124 636
		mu 0 4 510 520 953 947
		f 4 119 166 637 635
		mu 0 4 499 509 520 510
		f 4 122 -640 -639 -121
		mu 0 4 942 947 954 948
		f 4 638 -641 -127 -122
		mu 0 4 948 954 960 955
		f 4 -642 171 -128 640
		mu 0 4 954 959 965 960
		f 4 123 170 641 639
		mu 0 4 947 953 959 954
		f 4 126 -644 -643 -125
		mu 0 4 955 960 966 961
		f 4 642 -645 -131 -126
		mu 0 4 961 966 972 967
		f 4 -646 175 -132 644
		mu 0 4 966 971 977 972
		f 4 127 174 645 643
		mu 0 4 960 965 971 966
		f 4 130 -648 -647 -129
		mu 0 4 967 972 674 662
		f 4 646 -649 -135 -130
		mu 0 4 662 674 663 652
		f 4 -650 179 -136 648
		mu 0 4 674 684 675 663
		f 4 131 178 649 647
		mu 0 4 972 977 684 674
		f 4 134 -652 -651 -133
		mu 0 4 652 663 653 643
		f 4 650 -653 -139 -134
		mu 0 4 643 653 644 635
		f 4 -654 183 -140 652
		mu 0 4 653 664 654 644
		f 4 135 182 653 651
		mu 0 4 663 675 664 653
		f 4 138 -656 -655 -137
		mu 0 4 635 644 645 636
		f 4 654 -657 -143 -138
		mu 0 4 636 645 656 646
		f 4 -658 187 -144 656
		mu 0 4 645 655 667 656
		f 4 139 186 657 655
		mu 0 4 644 654 655 645
		f 4 142 -660 -659 -141
		mu 0 4 646 656 668 657
		f 4 658 -661 -147 -142
		mu 0 4 657 668 681 669
		f 4 -662 191 -148 660
		mu 0 4 668 680 691 681
		f 4 143 190 661 659
		mu 0 4 656 667 680 668
		f 4 146 -664 -663 -145
		mu 0 4 669 681 692 682
		f 4 662 -665 -149 -146
		mu 0 4 682 692 703 693
		f 4 -666 195 -150 664
		mu 0 4 692 702 713 703
		f 4 147 194 665 663
		mu 0 4 681 691 702 692
		f 4 152 -668 -667 -151
		mu 0 4 433 441 442 434
		f 4 666 -669 -157 -152
		mu 0 4 434 442 452 443
		f 4 -670 201 -158 668
		mu 0 4 442 451 462 452
		f 4 153 200 669 667
		mu 0 4 441 450 451 442
		f 4 156 -672 -671 -155
		mu 0 4 443 452 463 453
		f 4 670 -673 -161 -156
		mu 0 4 453 463 475 464
		f 4 -674 205 -162 672
		mu 0 4 463 474 485 475
		f 4 157 204 673 671
		mu 0 4 452 462 474 463
		f 4 160 -676 -675 -159
		mu 0 4 464 475 486 476
		f 4 674 -677 -165 -160
		mu 0 4 476 486 497 487
		f 4 -678 209 -166 676
		mu 0 4 486 496 507 497
		f 4 161 208 677 675
		mu 0 4 475 485 496 486
		f 4 164 -680 -679 -163
		mu 0 4 487 497 508 498
		f 4 678 -681 -169 -164
		mu 0 4 498 508 519 509
		f 4 -682 213 -170 680
		mu 0 4 508 518 529 519
		f 4 165 212 681 679
		mu 0 4 497 507 518 508
		f 4 168 -684 -683 -167
		mu 0 4 509 519 530 520
		f 4 682 -685 -173 -168
		mu 0 4 520 530 958 953
		f 4 -686 217 -174 684
		mu 0 4 530 540 963 958
		f 4 169 216 685 683
		mu 0 4 519 529 540 530
		f 4 172 -688 -687 -171
		mu 0 4 953 958 964 959
		f 4 686 -689 -177 -172
		mu 0 4 959 964 970 965
		f 4 -690 221 -178 688
		mu 0 4 964 969 975 970
		f 4 173 220 689 687
		mu 0 4 958 963 969 964
		f 4 176 -692 -691 -175
		mu 0 4 965 970 976 971
		f 4 690 -693 -181 -176
		mu 0 4 971 976 982 977
		f 4 -694 225 -182 692
		mu 0 4 976 981 987 982
		f 4 177 224 693 691
		mu 0 4 970 975 981 976
		f 4 180 -696 -695 -179
		mu 0 4 977 982 694 684
		f 4 694 -697 -185 -180
		mu 0 4 684 694 685 675
		f 4 -698 229 -186 696
		mu 0 4 694 704 695 685
		f 4 181 228 697 695
		mu 0 4 982 987 704 694
		f 4 184 -700 -699 -183
		mu 0 4 675 685 676 664
		f 4 698 -701 -189 -184
		mu 0 4 664 676 665 654
		f 4 -702 233 -190 700
		mu 0 4 676 686 677 665
		f 4 185 232 701 699
		mu 0 4 685 695 686 676
		f 4 188 -704 -703 -187
		mu 0 4 654 665 666 655
		f 4 702 -705 -193 -188
		mu 0 4 655 666 679 667
		f 4 -706 237 -194 704
		mu 0 4 666 678 689 679
		f 4 189 236 705 703
		mu 0 4 665 677 678 666
		f 4 192 -708 -707 -191
		mu 0 4 667 679 690 680
		f 4 706 -709 -197 -192
		mu 0 4 680 690 701 691
		f 4 -710 241 -198 708
		mu 0 4 690 700 711 701
		f 4 193 240 709 707
		mu 0 4 679 689 700 690
		f 4 196 -712 -711 -195
		mu 0 4 691 701 712 702
		f 4 710 -713 -199 -196
		mu 0 4 702 712 723 713
		f 4 -714 245 -200 712
		mu 0 4 712 722 732 723
		f 4 197 244 713 711
		mu 0 4 701 711 722 712
		f 4 202 -716 -715 -201
		mu 0 4 450 460 461 451
		f 4 714 -717 -207 -202
		mu 0 4 451 461 473 462
		f 4 -718 251 -208 716
		mu 0 4 461 472 483 473
		f 4 203 250 717 715
		mu 0 4 460 471 472 461
		f 4 206 -720 -719 -205
		mu 0 4 462 473 484 474
		f 4 718 -721 -211 -206
		mu 0 4 474 484 495 485
		f 4 -722 255 -212 720
		mu 0 4 484 494 505 495
		f 4 207 254 721 719
		mu 0 4 473 483 494 484
		f 4 210 -724 -723 -209
		mu 0 4 485 495 506 496
		f 4 722 -725 -215 -210
		mu 0 4 496 506 517 507
		f 4 -726 259 -216 724
		mu 0 4 506 516 527 517
		f 4 211 258 725 723
		mu 0 4 495 505 516 506
		f 4 214 -728 -727 -213
		mu 0 4 507 517 528 518
		f 4 726 -729 -219 -214
		mu 0 4 518 528 539 529
		f 4 -730 263 -220 728
		mu 0 4 528 538 549 539
		f 4 215 262 729 727
		mu 0 4 517 527 538 528
		f 4 218 -732 -731 -217
		mu 0 4 529 539 550 540
		f 4 730 -733 -223 -218
		mu 0 4 540 550 968 963
		f 4 -734 267 -224 732
		mu 0 4 550 560 973 968
		f 4 219 266 733 731
		mu 0 4 539 549 560 550
		f 4 222 -736 -735 -221
		mu 0 4 963 968 974 969
		f 4 734 -737 -227 -222
		mu 0 4 969 974 980 975
		f 4 -738 271 -228 736
		mu 0 4 974 979 985 980
		f 4 223 270 737 735
		mu 0 4 968 973 979 974
		f 4 226 -740 -739 -225
		mu 0 4 975 980 986 981
		f 4 738 -741 -231 -226
		mu 0 4 981 986 991 987
		f 4 -742 275 -232 740
		mu 0 4 986 990 994 991
		f 4 227 274 741 739
		mu 0 4 980 985 990 986
		f 4 230 -744 -743 -229
		mu 0 4 987 991 714 704
		f 4 742 -745 -235 -230
		mu 0 4 704 714 705 695
		f 4 -746 279 -236 744
		mu 0 4 714 997 715 705
		f 4 231 278 745 743
		mu 0 4 991 994 997 714
		f 4 234 -748 -747 -233
		mu 0 4 695 705 696 686
		f 4 746 -749 -239 -234
		mu 0 4 686 696 687 677
		f 4 -750 283 -240 748
		mu 0 4 696 706 697 687
		f 4 235 282 749 747
		mu 0 4 705 715 706 696
		f 4 238 -752 -751 -237
		mu 0 4 677 687 688 678
		f 4 750 -753 -243 -238
		mu 0 4 678 688 699 689
		f 4 -754 287 -244 752
		mu 0 4 688 698 709 699
		f 4 239 286 753 751
		mu 0 4 687 697 698 688
		f 4 242 -756 -755 -241
		mu 0 4 689 699 710 700
		f 4 754 -757 -247 -242
		mu 0 4 700 710 721 711
		f 4 -758 291 -248 756
		mu 0 4 710 720 730 721
		f 4 243 290 757 755
		mu 0 4 699 709 720 710
		f 4 246 -760 -759 -245
		mu 0 4 711 721 731 722
		f 4 758 -761 -249 -246
		mu 0 4 722 731 741 732
		f 4 -762 295 -250 760
		mu 0 4 731 740 750 741
		f 4 247 294 761 759
		mu 0 4 721 730 740 731
		f 4 252 -764 -763 -251
		mu 0 4 471 481 482 472
		f 4 762 -765 -257 -252
		mu 0 4 472 482 493 483
		f 4 -766 301 -258 764
		mu 0 4 482 492 503 493
		f 4 253 300 765 763
		mu 0 4 481 491 492 482
		f 4 256 -768 -767 -255
		mu 0 4 483 493 504 494
		f 4 766 -769 -261 -256
		mu 0 4 494 504 515 505
		f 4 -770 305 -262 768
		mu 0 4 504 514 525 515
		f 4 257 304 769 767
		mu 0 4 493 503 514 504
		f 4 260 -772 -771 -259
		mu 0 4 505 515 526 516
		f 4 770 -773 -265 -260
		mu 0 4 516 526 537 527
		f 4 -774 309 -266 772
		mu 0 4 526 536 547 537
		f 4 261 308 773 771
		mu 0 4 515 525 536 526
		f 4 264 -776 -775 -263
		mu 0 4 527 537 548 538
		f 4 774 -777 -269 -264
		mu 0 4 538 548 559 549
		f 4 -778 313 -270 776
		mu 0 4 548 558 569 559
		f 4 265 312 777 775
		mu 0 4 537 547 558 548
		f 4 268 -780 -779 -267
		mu 0 4 549 559 570 560
		f 4 778 -781 -273 -268
		mu 0 4 560 570 978 973
		f 4 -782 317 -274 780
		mu 0 4 570 580 983 978
		f 4 269 316 781 779
		mu 0 4 559 569 580 570
		f 4 272 -784 -783 -271
		mu 0 4 973 978 984 979
		f 4 782 -785 -277 -272
		mu 0 4 979 984 989 985
		f 4 -786 321 -278 784
		mu 0 4 984 988 992 989
		f 4 273 320 785 783
		mu 0 4 978 983 988 984
		f 4 276 -788 -787 -275
		mu 0 4 985 989 993 990
		f 4 786 -789 -281 -276
		mu 0 4 990 993 996 994
		f 4 -790 323 -282 788
		mu 0 4 993 995 1000 996
		f 4 277 322 789 787
		mu 0 4 989 992 995 993
		f 4 280 -792 -791 -279
		mu 0 4 994 996 1001 997
		f 4 790 -793 -285 -280
		mu 0 4 997 1001 724 715
		f 4 -794 327 -286 792
		mu 0 4 1001 1005 733 724
		f 4 281 326 793 791
		mu 0 4 996 1000 1005 1001
		f 4 284 -796 -795 -283
		mu 0 4 715 724 716 706
		f 4 794 -797 -289 -284
		mu 0 4 706 716 707 697
		f 4 -798 331 -290 796
		mu 0 4 716 725 717 707
		f 4 285 330 797 795
		mu 0 4 724 733 725 716
		f 4 288 -800 -799 -287
		mu 0 4 697 707 708 698
		f 4 798 -801 -293 -288
		mu 0 4 698 708 719 709
		f 4 -802 335 -294 800
		mu 0 4 708 718 728 719
		f 4 289 334 801 799
		mu 0 4 707 717 718 708
		f 4 292 -804 -803 -291
		mu 0 4 709 719 729 720
		f 4 802 -805 -297 -292
		mu 0 4 720 729 739 730
		f 4 -806 339 -298 804
		mu 0 4 729 738 748 739
		f 4 293 338 805 803
		mu 0 4 719 728 738 729
		f 4 296 -808 -807 -295
		mu 0 4 730 739 749 740
		f 4 806 -809 -299 -296
		mu 0 4 740 749 759 750
		f 4 -810 343 -300 808
		mu 0 4 749 758 768 759
		f 4 297 342 809 807
		mu 0 4 739 748 758 749
		f 4 302 -812 -811 -301
		mu 0 4 491 501 502 492
		f 4 810 -813 -307 -302
		mu 0 4 492 502 513 503
		f 4 -814 349 -308 812
		mu 0 4 502 512 523 513
		f 4 303 348 813 811
		mu 0 4 501 511 512 502
		f 4 306 -816 -815 -305
		mu 0 4 503 513 524 514
		f 4 814 -817 -311 -306
		mu 0 4 514 524 535 525
		f 4 -818 353 -312 816
		mu 0 4 524 534 545 535
		f 4 307 352 817 815
		mu 0 4 513 523 534 524
		f 4 310 -820 -819 -309
		mu 0 4 525 535 546 536
		f 4 818 -821 -315 -310
		mu 0 4 536 546 557 547
		f 4 -822 357 -316 820
		mu 0 4 546 556 567 557
		f 4 311 356 821 819
		mu 0 4 535 545 556 546
		f 4 314 -824 -823 -313
		mu 0 4 547 557 568 558
		f 4 822 -825 -319 -314
		mu 0 4 558 568 579 569
		f 4 -826 361 -320 824
		mu 0 4 568 578 587 579
		f 4 315 360 825 823
		mu 0 4 557 567 578 568
		f 4 324 -828 -827 -323
		mu 0 4 992 998 999 995
		f 4 826 -829 -329 -324
		mu 0 4 995 999 1004 1000
		f 4 -830 373 -330 828
		mu 0 4 999 1003 1008 1004
		f 4 325 372 829 827
		mu 0 4 998 1002 1003 999
		f 4 328 -832 -831 -327
		mu 0 4 1000 1004 1009 1005
		f 4 830 -833 -333 -328
		mu 0 4 1005 1009 742 733
		f 4 -834 377 -334 832
		mu 0 4 1009 1015 751 742
		f 4 329 376 833 831
		mu 0 4 1004 1008 1015 1009
		f 4 332 -836 -835 -331
		mu 0 4 733 742 734 725
		f 4 834 -837 -337 -332
		mu 0 4 725 734 726 717
		f 4 -838 381 -338 836
		mu 0 4 734 743 735 726
		f 4 333 380 837 835
		mu 0 4 742 751 743 734
		f 4 336 -840 -839 -335
		mu 0 4 717 726 727 718
		f 4 838 -841 -341 -336
		mu 0 4 718 727 737 728
		f 4 -842 385 -342 840
		mu 0 4 727 736 746 737
		f 4 337 384 841 839
		mu 0 4 726 735 736 727
		f 4 340 -844 -843 -339
		mu 0 4 728 737 747 738
		f 4 842 -845 -345 -340
		mu 0 4 738 747 757 748
		f 4 -846 389 -346 844
		mu 0 4 747 756 766 757
		f 4 341 388 845 843
		mu 0 4 737 746 756 747
		f 4 344 -848 -847 -343
		mu 0 4 748 757 767 758
		f 4 846 -849 -347 -344
		mu 0 4 758 767 777 768
		f 4 -850 393 -348 848
		mu 0 4 767 776 786 777
		f 4 345 392 849 847
		mu 0 4 757 766 776 767
		f 4 350 -852 -851 -349
		mu 0 4 511 521 522 512
		f 4 850 -853 -355 -350
		mu 0 4 512 522 533 523
		f 4 -854 399 -356 852
		mu 0 4 522 532 543 533
		f 4 351 398 853 851
		mu 0 4 521 531 532 522
		f 4 354 -856 -855 -353
		mu 0 4 523 533 544 534
		f 4 854 -857 -359 -354
		mu 0 4 534 544 555 545
		f 4 -858 403 -360 856
		mu 0 4 544 554 565 555
		f 4 355 402 857 855
		mu 0 4 533 543 554 544
		f 4 358 -860 -859 -357
		mu 0 4 545 555 566 556
		f 4 858 -861 -363 -358
		mu 0 4 556 566 577 567
		f 4 -862 407 -364 860
		mu 0 4 566 576 585 577
		f 4 359 406 861 859
		mu 0 4 555 565 576 566
		f 4 362 -864 -863 -361
		mu 0 4 567 577 586 578
		f 4 862 -865 -367 -362
		mu 0 4 578 586 593 587
		f 4 -866 411 -368 864
		mu 0 4 586 592 598 593
		f 4 363 410 865 863
		mu 0 4 577 585 592 586
		f 4 366 -868 -867 -365
		mu 0 4 587 593 599 600
		f 4 866 -869 -371 -366
		mu 0 4 600 599 1017 1016
		f 4 -870 415 -372 868
		mu 0 4 599 605 1023 1017
		f 4 367 414 869 867
		mu 0 4 593 598 605 599
		f 4 370 -872 -871 -369
		mu 0 4 1016 1017 1011 1010
		f 4 870 -873 -375 -370
		mu 0 4 1010 1011 1006 1002
		f 4 -874 419 -376 872
		mu 0 4 1011 1018 1012 1006
		f 4 371 418 873 871
		mu 0 4 1017 1023 1018 1011
		f 4 374 -876 -875 -373
		mu 0 4 1002 1006 1007 1003
		f 4 874 -877 -379 -374
		mu 0 4 1003 1007 1014 1008
		f 4 -878 423 -380 876
		mu 0 4 1007 1013 1021 1014
		f 4 375 422 877 875
		mu 0 4 1006 1012 1013 1007
		f 4 378 -880 -879 -377
		mu 0 4 1008 1014 1022 1015
		f 4 878 -881 -383 -378
		mu 0 4 1015 1022 760 751
		f 4 -882 427 -384 880
		mu 0 4 1022 1028 769 760
		f 4 379 426 881 879
		mu 0 4 1014 1021 1028 1022
		f 4 382 -884 -883 -381
		mu 0 4 751 760 752 743
		f 4 882 -885 -387 -382
		mu 0 4 743 752 744 735
		f 4 -886 431 -388 884
		mu 0 4 752 761 753 744
		f 4 383 430 885 883
		mu 0 4 760 769 761 752
		f 4 386 -888 -887 -385
		mu 0 4 735 744 745 736
		f 4 886 -889 -391 -386
		mu 0 4 736 745 755 746
		f 4 -890 435 -392 888
		mu 0 4 745 754 764 755
		f 4 387 434 889 887
		mu 0 4 744 753 754 745
		f 4 390 -892 -891 -389
		mu 0 4 746 755 765 756
		f 4 890 -893 -395 -390
		mu 0 4 756 765 775 766
		f 4 -894 439 -396 892
		mu 0 4 765 774 784 775
		f 4 391 438 893 891
		mu 0 4 755 764 774 765
		f 4 394 -896 -895 -393
		mu 0 4 766 775 785 776
		f 4 894 -897 -397 -394
		mu 0 4 776 785 795 786
		f 4 -898 443 -398 896
		mu 0 4 785 794 802 795
		f 4 395 442 897 895
		mu 0 4 775 784 794 785
		f 4 400 -900 -899 -399
		mu 0 4 531 541 542 532
		f 4 898 -901 -405 -400
		mu 0 4 532 542 553 543
		f 4 -902 449 -406 900
		mu 0 4 542 552 563 553
		f 4 401 448 901 899
		mu 0 4 541 551 552 542
		f 4 404 -904 -903 -403
		mu 0 4 543 553 564 554
		f 4 902 -905 -409 -404
		mu 0 4 554 564 575 565
		f 4 -906 453 -410 904
		mu 0 4 564 574 583 575
		f 4 405 452 905 903
		mu 0 4 553 563 574 564
		f 4 408 -908 -907 -407
		mu 0 4 565 575 584 576
		f 4 906 -909 -413 -408
		mu 0 4 576 584 591 585
		f 4 -910 457 -414 908
		mu 0 4 584 590 596 591
		f 4 409 456 909 907
		mu 0 4 575 583 590 584
		f 4 412 -912 -911 -411
		mu 0 4 585 591 597 592
		f 4 910 -913 -417 -412
		mu 0 4 592 597 604 598
		f 4 -914 461 -418 912
		mu 0 4 597 603 608 604
		f 4 413 460 913 911
		mu 0 4 591 596 603 597
		f 4 416 -916 -915 -415
		mu 0 4 598 604 609 605
		f 4 914 -917 -421 -416
		mu 0 4 605 609 1029 1023
		f 4 -918 465 -422 916
		mu 0 4 609 1041 1035 1029
		f 4 417 464 917 915
		mu 0 4 604 608 1041 609
		f 4 420 -920 -919 -419
		mu 0 4 1023 1029 1024 1018
		f 4 918 -921 -425 -420
		mu 0 4 1018 1024 1019 1012
		f 4 -922 469 -426 920
		mu 0 4 1024 1030 1025 1019
		f 4 421 468 921 919
		mu 0 4 1029 1035 1030 1024
		f 4 424 -924 -923 -423
		mu 0 4 1012 1019 1020 1013
		f 4 922 -925 -429 -424
		mu 0 4 1013 1020 1027 1021
		f 4 -926 473 -430 924
		mu 0 4 1020 1026 1033 1027
		f 4 425 472 925 923
		mu 0 4 1019 1025 1026 1020
		f 4 428 -928 -927 -427
		mu 0 4 1021 1027 1034 1028
		f 4 926 -929 -433 -428
		mu 0 4 1028 1034 778 769
		f 4 -930 477 -434 928
		mu 0 4 1034 1040 787 778
		f 4 429 476 929 927
		mu 0 4 1027 1033 1040 1034
		f 4 432 -932 -931 -431
		mu 0 4 769 778 770 761
		f 4 930 -933 -437 -432
		mu 0 4 761 770 762 753
		f 4 -934 481 -438 932
		mu 0 4 770 779 771 762
		f 4 433 480 933 931
		mu 0 4 778 787 779 770
		f 4 436 -936 -935 -435
		mu 0 4 753 762 763 754
		f 4 934 -937 -441 -436
		mu 0 4 754 763 773 764
		f 4 -938 485 -442 936
		mu 0 4 763 772 782 773
		f 4 437 484 937 935
		mu 0 4 762 771 772 763
		f 4 440 -940 -939 -439
		mu 0 4 764 773 783 774
		f 4 938 -941 -445 -440
		mu 0 4 774 783 793 784
		f 4 -942 489 -446 940
		mu 0 4 783 792 800 793
		f 4 441 488 941 939
		mu 0 4 773 782 792 783
		f 4 444 -944 -943 -443
		mu 0 4 784 793 801 794
		f 4 942 -945 -447 -444
		mu 0 4 794 801 807 802
		f 4 -946 493 -448 944
		mu 0 4 801 806 810 807
		f 4 445 492 945 943
		mu 0 4 793 800 806 801
		f 4 450 -948 -947 -449
		mu 0 4 551 561 562 552
		f 4 946 -949 -455 -450
		mu 0 4 552 562 573 563
		f 4 -950 499 -456 948
		mu 0 4 562 572 581 573
		f 4 451 498 949 947
		mu 0 4 561 571 572 562
		f 4 454 -952 -951 -453
		mu 0 4 563 573 582 574
		f 4 950 -953 -459 -454
		mu 0 4 574 582 589 583
		f 4 -954 501 -460 952
		mu 0 4 582 588 594 589
		f 4 455 500 953 951
		mu 0 4 573 581 588 582
		f 4 458 -956 -955 -457
		mu 0 4 583 589 595 590
		f 4 954 -957 -463 -458
		mu 0 4 590 595 602 596
		f 4 -958 503 -464 956
		mu 0 4 595 601 606 602
		f 4 459 502 957 955
		mu 0 4 589 594 601 595
		f 4 462 -960 -959 -461
		mu 0 4 596 602 607 603
		f 4 958 -961 -467 -462
		mu 0 4 603 607 611 608
		f 4 -962 505 -468 960
		mu 0 4 607 610 612 611
		f 4 463 504 961 959
		mu 0 4 602 606 610 607
		f 4 466 -964 -963 -465
		mu 0 4 608 611 1046 1041
		f 4 962 -965 -471 -466
		mu 0 4 1041 1046 1042 1035
		f 4 -966 507 -472 964
		mu 0 4 1046 1049 1047 1042
		f 4 467 506 965 963
		mu 0 4 611 612 1049 1046
		f 4 470 -968 -967 -469
		mu 0 4 1035 1042 1036 1030
		f 4 966 -969 -475 -470
		mu 0 4 1030 1036 1031 1025
		f 4 -970 509 -476 968
		mu 0 4 1036 1043 1037 1031
		f 4 471 508 969 967
		mu 0 4 1042 1047 1043 1036
		f 4 474 -972 -971 -473
		mu 0 4 1025 1031 1032 1026
		f 4 970 -973 -479 -474
		mu 0 4 1026 1032 1039 1033
		f 4 -974 511 -480 972
		mu 0 4 1032 1038 1044 1039
		f 4 475 510 973 971
		mu 0 4 1031 1037 1038 1032
		f 4 478 -976 -975 -477
		mu 0 4 1033 1039 1045 1040
		f 4 974 -977 -483 -478
		mu 0 4 1040 1045 796 787
		f 4 -978 513 -484 976
		mu 0 4 1045 1048 803 796
		f 4 479 512 977 975
		mu 0 4 1039 1044 1048 1045
		f 4 482 -980 -979 -481
		mu 0 4 787 796 788 779
		f 4 978 -981 -487 -482
		mu 0 4 779 788 780 771
		f 4 -982 515 -488 980
		mu 0 4 788 797 789 780
		f 4 483 514 981 979
		mu 0 4 796 803 797 788
		f 4 486 -984 -983 -485
		mu 0 4 771 780 781 772
		f 4 982 -985 -491 -486
		mu 0 4 772 781 791 782
		f 4 -986 517 -492 984
		mu 0 4 781 790 798 791
		f 4 487 516 985 983
		mu 0 4 780 789 790 781
		f 4 490 -988 -987 -489
		mu 0 4 782 791 799 792
		f 4 986 -989 -495 -490
		mu 0 4 792 799 805 800
		f 4 -990 519 -496 988
		mu 0 4 799 804 808 805
		f 4 491 518 989 987
		mu 0 4 791 798 804 799
		f 4 494 -992 -991 -493
		mu 0 4 800 805 809 806
		f 4 990 -993 -497 -494
		mu 0 4 806 809 812 810
		f 4 -994 521 -498 992
		mu 0 4 809 811 813 812
		f 4 495 520 993 991
		mu 0 4 805 808 811 809
		f 4 0 995 -997 -995
		mu 0 4 1126 1127 1128 1129
		f 4 -3 994 1000 -999
		mu 0 4 1050 1051 1052 1053
		f 4 1 1001 -1003 -996
		mu 0 4 1127 1130 1131 1128
		f 4 -4 998 1010 -1009
		mu 0 4 1054 1050 1053 1055
		f 4 4 1011 -1013 -1002
		mu 0 4 1130 1132 1133 1131
		f 4 5 1015 -1017 -1012
		mu 0 4 1132 1134 1135 1133
		f 4 8 1023 -1025 -1016
		mu 0 4 1134 1136 1137 1135
		f 4 9 1027 -1029 -1024
		mu 0 4 1136 1138 1139 1137
		f 4 12 1035 -1037 -1028
		mu 0 4 1138 1140 1141 1139
		f 4 13 1039 -1041 -1036
		mu 0 4 1140 1142 1143 1141
		f 4 16 1047 -1049 -1040
		mu 0 4 1142 1144 1145 1143
		f 4 17 1051 -1053 -1048
		mu 0 4 1144 1146 1147 1145
		f 4 20 1059 -1061 -1052
		mu 0 4 1146 1148 1149 1147
		f 4 21 1063 -1065 -1060
		mu 0 4 1148 1150 1151 1149
		f 4 24 1071 -1073 -1064
		mu 0 4 1150 1152 1153 1151
		f 4 25 1075 -1077 -1072
		mu 0 4 1152 1154 1155 1153
		f 4 28 1083 -1085 -1076
		mu 0 4 1154 1156 1157 1155
		f 4 29 1087 -1089 -1084
		mu 0 4 1156 1158 1159 1157
		f 4 32 1095 -1097 -1088
		mu 0 4 1158 1160 1161 1159
		f 4 33 1099 -1101 -1096
		mu 0 4 1160 1162 1163 1161
		f 4 36 1107 -1109 -1100
		mu 0 4 1162 1164 1165 1163
		f 4 37 1111 -1113 -1108
		mu 0 4 1164 1166 1167 1165
		f 4 40 1119 -1121 -1112
		mu 0 4 1166 1168 1169 1167
		f 4 41 1123 -1125 -1120
		mu 0 4 1168 1170 1171 1169
		f 4 44 1131 -1133 -1124
		mu 0 4 1170 1172 1173 1171
		f 4 45 1135 -1137 -1132
		mu 0 4 1172 1174 1175 1173
		f 4 48 1137 -1139 -1136
		mu 0 4 661 660 672 673
		f 4 49 1140 -1142 -1138
		mu 0 4 1064 1058 1061 1065
		f 4 -53 1008 1148 -1147
		mu 0 4 1056 1054 1055 1057
		f 4 -54 1146 1156 -1155
		mu 0 4 1176 1177 1178 1179
		f 4 98 1239 -1241 -1141
		mu 0 4 1058 1059 1060 1061
		f 4 99 1242 -1244 -1240
		mu 0 4 1059 1062 1063 1060
		f 4 -103 1154 1250 -1249
		mu 0 4 1067 1070 1071 1068
		f 4 -104 1248 1258 -1257
		mu 0 4 1066 1067 1068 1069
		f 4 148 1341 -1343 -1243
		mu 0 4 1180 1181 1182 1183
		f 4 149 1344 -1346 -1342
		mu 0 4 1072 1073 1074 1075
		f 4 -153 1256 1352 -1351
		mu 0 4 1184 1185 1186 1187
		f 4 -154 1350 1360 -1359
		mu 0 4 1090 1092 1093 1091
		f 4 198 1443 -1445 -1345
		mu 0 4 1073 1076 1077 1074
		f 4 199 1446 -1448 -1444
		mu 0 4 1076 1078 1079 1077
		f 4 -203 1358 1454 -1453
		mu 0 4 1087 1090 1091 1088
		f 4 -204 1452 1462 -1461
		mu 0 4 1086 1087 1088 1089
		f 4 248 1545 -1547 -1447
		mu 0 4 1078 1080 1081 1079
		f 4 249 1548 -1550 -1546
		mu 0 4 1080 1082 1083 1081
		f 4 -253 1460 1556 -1555
		mu 0 4 1188 1189 1190 1191
		f 4 -254 1554 1564 -1563
		mu 0 4 1192 1193 1194 1195
		f 4 -318 1596 1597 -1595
		mu 0 4 1196 1197 1198 1199
		f 4 -317 1585 1599 -1597
		mu 0 4 1197 1200 1201 1198
		f 4 -322 1606 1607 -1605
		mu 0 4 1206 1202 1203 1207
		f 4 -321 1594 1609 -1607
		mu 0 4 1202 1196 1199 1203
		f 4 298 1652 -1654 -1549
		mu 0 4 1082 1084 1085 1083
		f 4 299 1655 -1657 -1653
		mu 0 4 1280 1281 1282 1283
		f 4 -303 1562 1663 -1662
		mu 0 4 1094 1095 1096 1097
		f 4 -304 1661 1671 -1670
		mu 0 4 1098 1094 1097 1099
		f 4 318 1690 -1692 -1586
		mu 0 4 1200 1204 1205 1201
		f 4 319 1693 -1695 -1691
		mu 0 4 181 182 174 165;
	setAttr ".fc[1000:1043]"
		f 4 -325 1604 1701 -1700
		mu 0 4 1209 1212 1213 1210
		f 4 -326 1699 1709 -1708
		mu 0 4 1208 1209 1210 1211
		f 4 346 1744 -1746 -1656
		mu 0 4 1106 1107 1108 1109
		f 4 347 1747 -1749 -1745
		mu 0 4 1107 1110 1111 1108
		f 4 -351 1669 1755 -1754
		mu 0 4 1100 1098 1099 1101
		f 4 -352 1753 1763 -1762
		mu 0 4 1102 1100 1101 1103
		f 4 364 1788 -1790 -1694
		mu 0 4 1220 1218 1219 1221
		f 4 365 1792 -1794 -1789
		mu 0 4 1218 1216 1217 1219
		f 4 368 1800 -1802 -1793
		mu 0 4 1216 1214 1215 1217
		f 4 369 1707 -1805 -1801
		mu 0 4 1214 1208 1211 1215
		f 4 396 1853 -1855 -1748
		mu 0 4 1110 1112 1113 1111
		f 4 397 1856 -1858 -1854
		mu 0 4 1112 1114 1115 1113
		f 4 -401 1761 1864 -1863
		mu 0 4 1104 1102 1103 1105
		f 4 -402 1862 1872 -1871
		mu 0 4 1222 1104 1105 1223
		f 4 446 1955 -1957 -1857
		mu 0 4 1284 1224 1227 1285
		f 4 447 1958 -1960 -1956
		mu 0 4 1224 1225 1226 1227
		f 4 -451 1870 1966 -1965
		mu 0 4 1228 1229 1230 1231
		f 4 -500 1971 1972 -1970
		mu 0 4 1232 1233 1234 1235
		f 4 -499 1974 1975 -1972
		mu 0 4 1233 1236 1237 1234
		f 4 -452 1964 1976 -1975
		mu 0 4 1116 1117 1118 1119
		f 4 -502 1983 1984 -1982
		mu 0 4 1240 1238 1239 1241
		f 4 -501 1969 1986 -1984
		mu 0 4 1238 1232 1235 1239
		f 4 -504 1993 1994 -1992
		mu 0 4 1244 1242 1243 1245
		f 4 -503 1981 1996 -1994
		mu 0 4 1242 1240 1241 1243
		f 4 -506 2003 2004 -2002
		mu 0 4 1248 1246 1247 1249
		f 4 -505 1991 2006 -2004
		mu 0 4 1246 1244 1245 1247
		f 4 -508 2013 2014 -2012
		mu 0 4 1252 1250 1251 1253
		f 4 -507 2001 2016 -2014
		mu 0 4 1250 1248 1249 1251
		f 4 -510 2023 2024 -2022
		mu 0 4 1256 1254 1255 1257
		f 4 -509 2011 2026 -2024
		mu 0 4 1254 1252 1253 1255
		f 4 -512 2033 2034 -2032
		mu 0 4 1260 1258 1259 1261
		f 4 -511 2021 2036 -2034
		mu 0 4 1258 1256 1257 1259
		f 4 -514 2043 2044 -2042
		mu 0 4 1264 1262 1263 1265
		f 4 -513 2031 2046 -2044
		mu 0 4 1262 1260 1261 1263
		f 4 -516 2053 2054 -2052
		mu 0 4 1268 1266 1267 1269
		f 4 -515 2041 2056 -2054
		mu 0 4 1266 1264 1265 1267
		f 4 -518 2063 2064 -2062
		mu 0 4 1272 1270 1271 1273
		f 4 -517 2051 2066 -2064
		mu 0 4 1270 1268 1269 1271
		f 4 -520 2073 2074 -2072
		mu 0 4 1276 1274 1275 1277
		f 4 -519 2061 2076 -2074
		mu 0 4 1274 1272 1273 1275
		f 4 496 2079 -2081 -1959
		mu 0 4 1120 1121 1122 1123
		f 4 497 2082 -2084 -2080
		mu 0 4 1121 1124 1125 1122
		f 4 -522 2084 2085 -2083
		mu 0 4 813 811 814 815
		f 4 -521 2071 2087 -2085
		mu 0 4 1278 1276 1277 1279;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 90 
		53 0 
		54 0 
		64 0 
		74 0 
		84 0 
		94 0 
		104 0 
		114 0 
		124 0 
		134 0 
		144 0 
		154 0 
		164 0 
		189 0 
		190 0 
		196 0 
		197 0 
		201 0 
		202 0 
		205 0 
		207 0 
		234 0 
		235 0 
		245 0 
		256 0 
		266 0 
		276 0 
		286 0 
		296 0 
		305 0 
		306 0 
		315 0 
		316 0 
		325 0 
		334 0 
		343 0 
		352 0 
		361 0 
		370 0 
		379 0 
		388 0 
		395 0 
		400 0 
		469 0 
		470 0 
		480 0 
		490 0 
		500 0 
		510 0 
		520 0 
		530 0 
		540 0 
		550 0 
		560 0 
		570 0 
		580 0 
		599 0 
		600 0 
		604 0 
		605 0 
		608 0 
		609 0 
		611 0 
		612 0 
		631 0 
		632 0 
		641 0 
		651 0 
		662 0 
		674 0 
		684 0 
		694 0 
		704 0 
		705 0 
		714 0 
		715 0 
		724 0 
		733 0 
		742 0 
		751 0 
		760 0 
		769 0 
		778 0 
		787 0 
		796 0 
		803 0 
		1104 0 
		1105 0 
		1224 0 
		1227 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 3;
	setAttr ".dsm" 2;
createNode transform -n "span_02" -p "spans";
	rename -uid "4823FC09-4DBE-8CC3-CEC4-F39ED655CA81";
	setAttr ".t" -type "double3" 83.814292707479225 -0.54659956726308667 -9.1866101291861746 ;
	setAttr ".r" -type "double3" 24.860917164603769 38.166207911195023 51.511114799982685 ;
createNode mesh -n "span_Shape2" -p "span_02";
	rename -uid "2C65E21B-4FC3-A654-8921-D8A63742A083";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 1.917538046836853 -0.63834351301193237 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 384 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.21146387 0.24233043 0.23657936
		 0.2294624 0.24660526 0.23185156 0.22227281 0.24731924 0.24432595 0.21419732 0.25278309
		 0.21378618 0.25688767 0.23353039 0.23211607 0.25127268 0.17194191 0.26357427 0.18185821
		 0.26671937 0.26307446 0.21320064 0.26730713 0.23472293 0.24223247 0.25489756 0.1919359
		 0.26979518 0.10917535 0.37220818 0.15273336 0.28917792 0.27780357 0.23555422 0.25250822
		 0.25827113 0.20212498 0.27293131 0.1631577 0.29061946 0.2883341 0.23612197 0.26285905
		 0.26144737 0.21233514 0.27622476 0.17365475 0.29173183 0.29887164 0.23652747 0.27320784
		 0.26442856 0.2224578 0.27976364 0.18417749 0.29296321 0.30939907 0.23686443 0.28351894
		 0.26725155 0.23258631 0.28374004 0.19454741 0.29455772 0.31990537 0.23721077 0.29374638
		 0.26999524 0.24240035 0.28802568 0.2230331 0.28711188 0.33038256 0.23763289 0.30386469
		 0.27272496 0.25206292 0.2924616 0.21347594 0.29924074 0.18678099 0.30887583 0.21101671
		 0.293147 0.34143457 0.23820078 0.31267828 0.27518722 0.26150259 0.29706669 0.22284693
		 0.30329207 0.18948072 0.31168115 0.27149907 0.30225724 0.23216856 0.30781227 0.24034774
		 0.31229833 0.22241092 0.31132856 0.23384923 0.024101019 0.23321599 0.022651017 0.24338824
		 0.023251593 0.2316518 0.11967677 0.23085193 0.09965837 0.24130291 0.098552644 0.24363855
		 0.11837929 0.22702807 0.079794466 0.24047066 0.091309309 0.25173089 0.097411036 0.25410116
		 0.11727935 0.23781356 0.13899213 0.24577326 0.13819814 0.23246644 0.059224904 0.23958607
		 0.083467245 0.24951956 0.077428937 0.2621325 0.096334875 0.26458934 0.11618626 0.25622061
		 0.13714901 0.25983939 0.076320291 0.27251124 0.095271379 0.27512023 0.11506641 0.2666842
		 0.13609177 0.27010646 0.075272262 0.28287235 0.094202876 0.28571174 0.11386681 0.27716672
		 0.13502145 0.28038514 0.074384868 0.2967675 0.11477119 0.29747063 0.12405905 0.28766781
		 0.13394189 0.29599541 0.10415542 0.30752358 0.092338651 0.30755895 0.11213458 0.29815203
		 0.13299754 0.28837293 0.054017365 0.29517034 0.092778444 0.30710077 0.072435319 0.31795049
		 0.091791719 0.31822428 0.11170879 0.30865404 0.13223603 0.3176029 0.079612076 0.32841772
		 0.091268748 0.32878983 0.11122346 0.31918445 0.13161337 0.32339072 0.071211159 0.33732295
		 0.090943456 0.33927968 0.11077863 0.32969847 0.13101041 0.33385566 0.070788085 0.34143826
		 0.13034612 0.10320352 0.12214909 0.11468702 0.12526564 0.12367716 0.15333687 0.11447638
		 0.14867879 0.08587373 0.079625972 0.095489062 0.083589703 0.12476804 0.12855493 0.13261564
		 0.15869308 0.11611621 0.17157862 0.10988328 0.1658397 0.079305857 0.042127341 0.087168738
		 0.046931028 0.10518549 0.087707832 0.13484885 0.13227293 0.14134073 0.16451231 0.096082002
		 0.052528143 0.11500894 0.091846727 0.1448898 0.13629089 0.14988734 0.17066169 0.10483098
		 0.058441818 0.12495163 0.095875531 0.15485948 0.14051488 0.15828703 0.17703719 0.11367865
		 0.064282358 0.13498548 0.099661417 0.16469879 0.14489447 0.16658635 0.18354216 0.12264541
		 0.069745302 0.14530955 0.10311534 0.17440484 0.1493758 0.17483343 0.19009265 0.13998264
		 0.094210565 0.15558714 0.10613766 0.18399352 0.15386732 0.18307085 0.19662091 0.32341421
		 0.035237759 0.29672197 0.020403743 0.14013141 0.078380018 0.16584128 0.10895003 0.19348782
		 0.15830098 0.19133568 0.2030708 0.3223218 0.035707861 0.29611436 0.021318734 0.14991301
		 0.081311107 0.17603055 0.11149169 0.20181116 0.16209823 0.20013379 0.20977955 0.15995544
		 0.083848894 0.18702047 0.11394526 0.45092952 0.71536827 0.15457791 0.074694395 0.15618117
		 0.064729095 0.44477755 0.69156754 0.45230418 0.71557415 0.18185186 0.44766057 0.048800766
		 0.23878668 0.034848154 0.25219616 0.027480155 0.24470408 0.17638054 0.42860717 0.062615931
		 0.22527109 0.056177825 0.24628469 0.042173922 0.25970358 0.029765993 0.25710618 0.21674055
		 0.45987234 0.070011199 0.23272523 0.18103921 0.44820955 0.17540036 0.42857343 0.063577205
		 0.25379303 0.049520284 0.26714703 0.028217822 0.27329433 0.02427718 0.2624312 0.0039062798
		 0.27607304 0.077413678 0.24019574 0.070991874 0.26134756 0.056857169 0.27456683 0.035484523
		 0.28071296 0.23453283 0.44873285 0.21703339 0.46080822 0.084822178 0.24768913 0.07840237
		 0.26900023 0.064177305 0.28197947 0.042750329 0.2880536 0.092238307 0.25520286 0.093703151
		 0.26886553 0.08745262 0.27536878 0.050118357 0.29528105 0.099723756 0.26260716 0.094122797
		 0.2842207 0.081846595 0.29896492 0.08032465 0.28282681 0.10734069 0.26988101 0.10206139
		 0.29134813 0.089528784 0.30603555 0.069227219 0.31355405 0.072690904 0.29081813 0.043699741
		 0.31560272 0.11506397 0.27706921 0.10988694 0.29845807 0.097255915 0.313113 0.081738532
		 0.31491026 0.12278605 0.2842316 0.11768362 0.30548978 0.10390717 0.31904522 0.0810121
		 0.32487941 0.13141465 0.29221964 0.088805169 0.33187741 0.354361 0.074595034 0.34752667
		 0.10081011 0.34672052 0.10039312 0.35335249 0.074383557 0.067993343 0.066388667 0.069806695
		 0.037213922 0.070786953 0.037184596 0.068962753 0.066536844 0.06967473 0.033670545
		 0.070654452 0.033626556 0.0097178221 0.057467282 0.015088379 0.06646508 0.014246345
		 0.066967666 0.0088757873 0.057969868 0.0048869252 0.039990187 0.00390625 0.039992273
		 0.2401408 0.19038078 0.25057763 0.18946475 0.23679209 0.16440415 0.24816352 0.16336486
		 0.26095909 0.18860343 0.25858575 0.16239697 0.27131826 0.18771076 0.27337906 0.21245709
		 0.268996 0.1614188 0.28166938 0.18677193 0.2837078 0.21155638 0.27939922 0.16043383
		 0.29202348 0.18579674 0.29406214 0.21054083 0.28979927 0.15945843 0.30238861 0.18480754
		 0.30444127 0.20946246 0.30019754 0.15852717 0.31277114 0.18382543 0.3148421 0.20836851
		 0.31060493 0.15765435 0.32317442 0.18286622 0.32526037 0.20729631 0.32103038 0.15683675
		 0.33359873 0.18193898 0.33569068 0.20627052;
	setAttr ".uvst[0].uvsp[250:383]" 0.33147484 0.15605527 0.34405291 0.18104661
		 0.34458369 0.20544273 0.34098828 0.1553601 0.13627377 0.31012046 0.14976345 0.33313164
		 0.12297098 0.31942761 0.15712696 0.31744704 0.094748296 0.4080545 0.10844441 0.37186679
		 0.17425257 0.30647755 0.13533032 0.3437289 0.13545871 0.34464425 0.18074153 0.32992655
		 0.17976883 0.33093554 0.21012573 0.34202725 0.20859975 0.34255731 0.24698511 0.057506621
		 0.25899392 0.067779481 0.28490865 0.05290693 0.30196702 0.053057551 0.31489965 0.069081962
		 0.31997624 0.051291585 0.33044222 0.050776303 0.09860158 0.18913564 0.091135979 0.18178394
		 0.12364882 0.17861797 0.10605937 0.19641201 0.0801211 0.20773581 0.072011113 0.19969708
		 0.13109255 0.18578136 0.11348075 0.2036971 0.087545037 0.21511604 0.13845479 0.19307795
		 0.12086719 0.21101126 0.094953775 0.22249685 0.14576387 0.20047854 0.12823319 0.21835428
		 0.10235316 0.22987896 0.15305156 0.20794328 0.1355986 0.22571471 0.10975569 0.23725201
		 0.16034657 0.2154343 0.14298201 0.23308036 0.11718512 0.24459049 0.16766977 0.22292
		 0.15039623 0.24044135 0.12465888 0.25188914 0.17503321 0.23037738 0.15784764 0.24779063
		 0.1321817 0.25915647 0.18134266 0.23669931 0.16534531 0.25513077 0.13974202 0.26640713
		 0.14663929 0.27299774 0.087908566 0.01977545 0.11314112 0.010398805 0.34852248 0.058051348
		 0.083730042 0.0039075017 0.34750476 0.058170915 0.33404508 0.043254614 0.33305061
		 0.043672383 0.014060616 0.28664443 0.029589772 0.28657526 0.040349662 0.31422478
		 0.073168159 0.32105315 0.053449929 0.32489771 0.066103935 0.33759564 0.073842466
		 0.34466088 0.26629108 0.0065684319 0.26626676 0.0079479218 0.27213824 0.003908813
		 0.27210462 0.005225718 0.47694173 0.73978591 0.47787085 0.739308 0.52824521 0.7503202
		 0.52808875 0.74953067 0.57471299 0.73330188 0.57376695 0.73300326 0.19517148 0.31463856
		 0.12935305 0.052928925 0.13559991 0.054302514 0.21199217 0.36145508 0.2109637 0.36128747
		 0.19991824 0.38320816 0.19908811 0.38268593 0.1859407 0.40542504 0.18511067 0.40490282
		 0.19727266 0.45954734 0.19694889 0.460473 0.34366155 0.043291271 0.33750173 0.019541562
		 0.33828411 0.018950105 0.34463289 0.043427527 0.31523874 0.0056772232 0.29974383
		 0.0048863888 0.29965708 0.0039095283 0.31542253 0.0047137737 0.04513675 0.0048687458
		 0.04533577 0.0039084554 0.0096728206 0.021237671 0.0088123083 0.020767391 0.59613425
		 0.7072888 0.59523636 0.70694327 0.60611629 0.68452287 0.60519767 0.68417901 0.61531985
		 0.65994108 0.61440134 0.65959722 0.62791842 0.63841999 0.6272999 0.63765895 0.64610595
		 0.63153124 0.64606488 0.63055146 0.66482723 0.63688052 0.66537958 0.63607013 0.67676699
		 0.652435 0.67769259 0.6521107 0.67712945 0.6719985 0.67806643 0.67228818 0.34942049
		 0.11716419 0.34871766 0.11655426 0.056978196 0.21959555 0.04036957 0.23016882 0.012359738
		 0.257182 0.23376101 0.44812772 0.4434166 0.69076055 0.16910063 0.085681409 0.12577674
		 0.05337584 0.13446027 0.081585348 0.11469653 0.047165632 0.10872626 0.027480304 0.24383336
		 0.024604321 0.21750832 0.31994385 0.095592834 0.40766406 0.14361963 0.28780583;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 286 ".vt";
	setAttr ".vt[0:165]"  1.31855726 3.92860746 2.50291634 0.15867072 3.2493434 3.11517119
		 -1.087424994 2.44052935 3.12464285 -2.22553444 1.32086909 2.26812243 -2.22043586 0.45732555 1.41617429
		 -1.59825742 0.052133705 1.35464001 -0.78209382 -2.220446e-16 1.83746636 0.099768683 1.110223e-16 2.31313205
		 0.99505788 -0.1623414 2.61043 1.36353874 -0.72050184 2.96441054 1.43993306 -1.45927036 2.93610859
		 1.057262659 -2.084425211 2.81297779 0.55698603 -2.34699154 2.26168513 0.72041345 3.75861526 2.59387994
		 -0.12651566 3.2493434 2.90778995 -1.30812323 2.44052935 2.79103756 -2.26654053 1.32086909 1.81072724
		 -2.1051383 0.45732555 1.033151388 -1.45247257 0.052133705 1.059787154 -0.6048072 -2.220446e-16 1.47890043
		 0.29280624 1.110223e-16 1.9227097 1.13034213 -0.1623414 2.33681464 1.56707692 -0.72050184 2.55275035
		 1.61721969 -1.45927036 2.57754254 1.53138912 -1.71278298 2.53510523 1.38311207 -1.95373785 2.46179223
		 0.56806266 4.23430729 1.68836367 -0.45002455 3.2493434 2.67254138 -1.52882123 2.44052935 2.45743275
		 -2.30225754 1.32086909 1.41232526 -1.98984063 0.45732555 0.65012878 -1.27518606 0.052133705 0.70122141
		 -0.42752063 -2.220446e-16 1.12033474 0.47009277 1.110223e-16 1.5641439 1.30762863 -0.1623414 1.97824895
		 1.74436343 -0.72050184 2.19418478 1.79450619 -1.45927036 2.21897697 1.43808734 -2.084425211 2.042751789
		 0.81705379 -2.34699154 1.73569274 0.13783696 3.92860746 2.10059142 -0.77353364 3.2493434 2.43729281
		 -1.74951935 2.44052935 2.12382746 -2.33797479 1.32086909 1.013923049 -1.87454295 0.45732555 0.26710588
		 -1.097899437 0.052133705 0.34265548 -0.25023401 -2.220446e-16 0.76176882 0.6473794 1.110223e-16 1.20557797
		 1.48491538 -0.1623414 1.61968303 1.92165005 -0.72050184 1.83561885 1.97179282 -1.45927036 1.86041105
		 1.61537397 -2.084425211 1.68418598 1.37568629 -2.24812746 1.56567657 -0.61301583 3.68231773 2.10226417
		 -1.097042561 3.2493434 2.20204425 -1.97021735 2.44052935 1.79022253 -2.37369204 1.32086909 0.61552095
		 -1.7592454 0.45732555 -0.11591677 -0.92061287 0.052133705 -0.015910231 -0.072947465 -2.220446e-16 0.40320307
		 0.8246659 1.110223e-16 0.84701228 1.66220188 -0.1623414 1.26111722 2.098936558 -0.72050184 1.47705305
		 2.14907932 -1.45927036 1.50184536 1.79266047 -2.084425211 1.32562029 1.39651155 -2.3479898 0.4545207
		 -1.042366624 3.75861526 1.84116662 -1.42055166 3.2493434 1.96679544 -2.19091535 2.44052935 1.45661736
		 -2.40940928 1.32086909 0.21711871 -1.64394772 0.45732555 -0.49893963 -0.74332625 0.052133705 -0.37447616
		 0.10433917 -2.220446e-16 0.044637155 1.001952529 1.110223e-16 0.48844635 1.83948851 -0.1623414 0.90255135
		 2.27622318 -0.72050184 1.11848712 2.32636595 -1.45927036 1.14327943 1.9699471 -2.084425211 0.96705431
		 1.49592209 -2.34699154 0.36266741 -1.9435066 3.049471855 1.63170648 -2.24165821 2.70115519 1.37293017
		 -2.41161346 2.44052935 1.12301219 -2.4451263 1.32086909 -0.18128355 -1.52865005 0.45732555 -0.88196254
		 -0.56603962 0.052133705 -0.73304206 0.28162581 -2.220446e-16 -0.31392878 1.17923915 1.110223e-16 0.12988044
		 2.016775131 -0.1623414 0.54398543 2.24440527 -0.36378533 0.65653312 2.41841674 -0.63649303 0.74257004
		 2.52432919 -1.0057256222 0.7949366 2.5129087 -1.41432202 0.78928995 -1.31663775 3.98699021 1.5596143
		 -2.067569733 3.2493434 1.49629807 -2.63231158 2.44052935 0.78940701 -2.48084354 1.32086909 -0.57968581
		 -1.41335249 0.45732555 -1.26498544 -0.38875297 0.052133705 -1.091608047 0.45891246 -2.220446e-16 -0.67249471
		 1.3565259 1.110223e-16 -0.22868548 2.19406176 -0.1623414 0.18541948 2.63079643 -0.72050184 0.4013553
		 2.6809392 -1.45927036 0.42614752 2.32452035 -2.084425211 0.24992245 1.69298613 -2.34699154 -0.035898708
		 -1.5408498 4.020136356 1.46604538 -2.39107847 3.2493434 1.26104963 -2.85300946 2.44052935 0.45580223
		 -2.51656079 1.32086909 -0.9780876 -1.29805493 0.45732555 -1.64800787 -0.21146654 0.052133705 -1.4501735
		 0.63619888 -2.220446e-16 -1.031060219 1.53381228 1.110223e-16 -0.58725101 2.37134814 -0.1623414 -0.17314602
		 2.80808282 -0.72050184 0.042789806 2.85822582 -1.45927036 0.067582026 2.68652701 -1.86749852 -0.017311342
		 2.40100765 -2.138201 -0.065978393 -2.48107195 3.5426414 1.22547185 -2.71458793 3.2493434 1.025800705
		 -3.073708057 2.44052935 0.12219667 -2.55227804 1.32086909 -1.37649035 -1.18275714 0.45732555 -2.031031132
		 -0.03417968 0.052133705 -1.8087399 0.81348574 -2.220446e-16 -1.3896265 1.71109915 1.110223e-16 -0.94581735
		 2.54863501 -0.1623414 -0.53171235 2.98536968 -0.72050184 -0.31577656 3.035512447 -1.45927036 -0.29098433
		 2.60558939 -2.084425211 -0.31854531 1.94255352 -2.34699154 -0.54065382 -2.43275762 3.92860746 1.22467303
		 -3.0093545914 3.2493434 0.81145275 -3.31401348 2.44052935 -0.24104701 -2.58376408 1.32086909 -1.72769761
		 -1.06063056 0.45732555 -2.43674016 0.11685532 0.052133705 -2.11421132 0.99077219 -2.220446e-16 -1.74819207
		 1.87263465 1.110223e-16 -1.27252626 2.74692249 -0.1623414 -0.93275297 3.16265631 -0.72050184 -0.67434204
		 3.18654752 -1.45927036 -0.59645575 2.78287601 -2.084425211 -0.67711121 2.11984015 -2.34699154 -0.89921975
		 1.29731429 3.90160847 2.4938817 0.15700245 3.23348522 3.088832617 -0.12672287 3.23348522 2.879457
		 0.70416367 3.73440433 2.57517004 -1.059828639 2.43793678 3.10281014 -1.28014421 2.43793678 2.76895213
		 -2.17591166 1.33664083 2.28040767 -2.22010612 1.33664083 1.82330954 -2.17996621 0.48726055 1.45180011
		 -2.069747925 0.48726055 1.067284822 -1.58595622 0.088714428 1.36427379 -1.44129717 0.088714428 1.068866968
		 -0.78209382 0.037435792 1.83746636 -0.6048072 0.037435789 1.47890043 0.099768683 0.037435792 2.31313205
		 0.29280624 0.037435789 1.9227097 1.012084842 -0.13008226 2.61884856 1.14736915 -0.13008228 2.3452332
		 1.39449179 -0.70604104 2.97971487 1.59802997 -0.70604104 2.56805468 1.47248518 -1.46836698 2.95220351
		 1.64977181 -1.46836698 2.59363747 1.078449488 -2.11345649 2.82345319;
	setAttr ".vt[166:285]" 1.56120443 -1.72996354 2.54984689 0.5583697 -2.3843956 2.26236939
		 1.40819919 -1.97860193 2.4741962 -0.44857439 3.23348522 2.64194584 0.54819083 4.20229483 1.67706525
		 -1.50045967 2.43793678 2.43509436 -2.25860047 1.33664083 1.42516625 -1.95952976 0.48726055 0.68276978
		 -1.26537967 0.088714428 0.70962763 -0.42752063 0.037435789 1.12033474 0.47009277 0.037435789 1.5641439
		 1.32465565 -0.13008228 1.98666763 1.77531648 -0.70604104 2.20948887 1.82705843 -1.46836698 2.2350719
		 1.45927417 -2.11345649 2.053227425 0.81843746 -2.3843956 1.73637688 -0.77042609 3.23348522 2.40443468
		 0.12148063 3.90160847 2.077491045 -1.72077525 2.43793678 2.10123658 -2.29709506 1.33664083 1.027022719
		 -1.84931147 0.48726055 0.29825449 -1.089462042 0.088714428 0.35038808 -0.25023401 0.037435789 0.76176882
		 0.6473794 0.037435789 1.20557797 1.5019424 -0.13008228 1.62810171 1.95260322 -0.70604104 1.85092306
		 2.0043449402 -1.46836698 1.87650585 1.6365608 -2.11345649 1.6946615 1.38923025 -2.28237891 1.57237315
		 -1.092277646 3.23348522 2.16692376 -0.62147027 3.65935826 2.06914711 -1.9410907 2.43793678 1.76737869
		 -2.33558941 1.33664083 0.62887949 -1.7390933 0.48726055 -0.086260572 -0.91354454 0.088714428 -0.0088512823
		 -0.072947465 0.037435789 0.40320307 0.8246659 0.037435789 0.84701228 1.6792289 -0.13008228 1.26953602
		 2.12988973 -0.70604104 1.49235737 2.18163157 -1.46836698 1.51794016 1.81384742 -2.11345649 1.33609569
		 1.39651167 -2.38542581 0.45452076 -1.41412926 3.23348522 1.92941248 -1.050458074 3.73440433 1.80363047
		 -2.16140628 2.43793678 1.43352079 -2.374084 1.33664083 0.23073596 -1.62887514 0.48726055 -0.47077587
		 -0.73762697 0.088714428 -0.36809087 0.10433917 0.037435789 0.044637155 1.001952529 0.037435789 0.48844635
		 1.85651553 -0.13008228 0.91097003 2.30717635 -0.70604104 1.13379145 2.35891819 -1.46836698 1.15937424
		 1.99113405 -2.11345649 0.97752982 1.49730575 -2.3843956 0.36335152 -2.21757245 2.69428825 1.34246624
		 -1.9291991 3.036892176 1.59435558 -2.38172197 2.43793678 1.0996629 -2.41257834 1.33664083 -0.16740754
		 -1.51865685 0.48726055 -0.85529119 -0.56170934 0.088714428 -0.72733045 0.28162581 0.037435789 -0.31392878
		 1.17923915 0.037435789 0.12988044 2.033802271 -0.13008228 0.55240411 2.26869059 -0.33794975 0.6685406
		 2.44825101 -0.61935341 0.75732106 2.55754066 -1.00035989285 0.81135744 2.5457561 -1.42198551 0.80553073
		 -2.057832718 3.23348522 1.45439017 -1.32802784 3.95903373 1.51939237 -2.60203743 2.43793678 0.76580495
		 -2.45107293 1.33664083 -0.56555104 -1.40843856 0.48726055 -1.23980641 -0.38579175 0.088714428 -1.086570024
		 0.45891246 0.037435789 -0.67249471 1.3565259 0.037435789 -0.22868548 2.2110889 -0.13008228 0.19383818
		 2.6617496 -0.70604104 0.41665953 2.71349144 -1.46836698 0.44224238 2.34570742 -2.11345649 0.26039794
		 1.69436979 -2.3843956 -0.035214592 -2.37968397 3.23348522 1.21687925 -1.55193937 3.99163628 1.42316926
		 -2.82235289 2.43793678 0.43194741 -2.48956728 1.33664083 -0.9636941 -1.29822052 0.48726055 -1.62432134
		 -0.20987433 0.088714428 -1.44580913 0.63619888 0.037435789 -1.031060219 1.53381228 0.037435789 -0.58725101
		 2.38837528 -0.13008228 -0.16472732 2.83903599 -0.70604104 0.058094036 2.89077783 -1.46836698 0.08367689
		 2.71360421 -1.88961256 -0.003923561 2.42015243 -2.16894722 -0.056512695 -2.70153618 3.23348522 0.97936779
		 -2.47692418 3.52197266 1.17536414 -3.042668581 2.43793678 0.098089077 -2.52806187 1.33664083 -1.3618381
		 -1.18800211 0.48726055 -2.0088369846 -0.033956524 0.088714428 -1.80504918 0.81348574 0.037435789 -1.3896265
		 1.71109915 0.037435789 -0.94581735 2.56566215 -0.13008228 -0.52329367 3.016322851 -0.70604104 -0.30047232
		 3.06806469 -1.46836698 -0.27488947 2.62677622 -2.11345649 -0.3080698 1.94393706 -2.3843956 -0.53996974
		 -2.9947927 3.23348522 0.76295841 -2.43847489 3.90160847 1.17095006 -3.28255773 2.43793678 -0.26542982
		 -2.56199622 1.33664083 -1.71281719 -1.071255684 0.48726055 -2.41612697 0.11591215 0.088714428 -2.11109447
		 0.99077219 0.037435792 -1.74819207 1.87263465 0.037435792 -1.27252626 2.76394963 -0.13008228 -0.92433423
		 3.19360924 -0.70604104 -0.65903783 3.21909976 -1.46836698 -0.58036089 2.80406284 -2.11345649 -0.66663575
		 2.12122369 -2.3843956 -0.89853567;
	setAttr -s 568 ".ed";
	setAttr ".ed[0:165]"  0 1 0 0 13 0 1 2 0 1 14 1 2 3 0 2 15 1 3 4 0 3 16 1
		 4 5 0 4 17 1 5 6 0 5 18 1 6 7 0 6 19 1 7 8 0 7 20 1 8 9 0 8 21 1 9 10 0 9 22 1 10 11 0
		 10 23 1 11 12 0 11 24 1 12 25 0 13 14 1 13 26 0 14 15 1 14 27 1 15 16 1 15 28 1 16 17 1
		 16 29 1 17 18 1 17 30 1 18 19 1 18 31 1 19 20 1 19 32 1 20 21 1 20 33 1 21 22 1 21 34 1
		 22 23 1 22 35 1 23 24 1 23 36 1 24 25 1 24 37 1 25 38 0 26 27 1 26 39 0 27 28 1 27 40 1
		 28 29 1 28 41 1 29 30 1 29 42 1 30 31 1 30 43 1 31 32 1 31 44 1 32 33 1 32 45 1 33 34 1
		 33 46 1 34 35 1 34 47 1 35 36 1 35 48 1 36 37 1 36 49 1 37 38 1 37 50 1 38 51 0 39 40 1
		 39 52 0 40 41 1 40 53 1 41 42 1 41 54 1 42 43 1 42 55 1 43 44 1 43 56 1 44 45 1 44 57 1
		 45 46 1 45 58 1 46 47 1 46 59 1 47 48 1 47 60 1 48 49 1 48 61 1 49 50 1 49 62 1 50 51 1
		 50 63 1 51 64 0 52 53 1 52 65 0 53 54 1 53 66 1 54 55 1 54 67 1 55 56 1 55 68 1 56 57 1
		 56 69 1 57 58 1 57 70 1 58 59 1 58 71 1 59 60 1 59 72 1 60 61 1 60 73 1 61 62 1 61 74 1
		 62 63 1 62 75 1 63 64 1 63 76 1 64 77 0 65 66 1 65 78 0 66 67 1 66 79 1 67 68 1 67 80 1
		 68 69 1 68 81 1 69 70 1 69 82 1 70 71 1 70 83 1 71 72 1 71 84 1 72 73 1 72 85 1 73 74 1
		 73 86 1 74 75 1 74 87 1 75 76 1 75 88 1 76 77 1 76 89 1 77 90 0 78 79 1 78 91 0 79 80 1
		 79 92 1 80 81 1 80 93 1 81 82 1 81 94 1 82 83 1 82 95 1 83 84 1 83 96 1 84 85 1 84 97 1
		 85 86 1 85 98 1;
	setAttr ".ed[166:331]" 86 87 1 86 99 1 87 88 1 87 100 1 88 89 1 88 101 1 89 90 1
		 89 102 1 90 103 0 91 92 1 91 104 0 92 93 1 92 105 1 93 94 1 93 106 1 94 95 1 94 107 1
		 95 96 1 95 108 1 96 97 1 96 109 1 97 98 1 97 110 1 98 99 1 98 111 1 99 100 1 99 112 1
		 100 101 1 100 113 1 101 102 1 101 114 1 102 103 1 102 115 1 103 116 0 104 105 1 104 117 0
		 105 106 1 105 118 1 106 107 1 106 119 1 107 108 1 107 120 1 108 109 1 108 121 1 109 110 1
		 109 122 1 110 111 1 110 123 1 111 112 1 111 124 1 112 113 1 112 125 1 113 114 1 113 126 1
		 114 115 1 114 127 1 115 116 1 115 128 1 116 129 0 117 118 1 117 130 0 118 119 1 118 131 1
		 119 120 1 119 132 1 120 121 1 120 133 1 121 122 1 121 134 1 122 123 1 122 135 1 123 124 1
		 123 136 1 124 125 1 124 137 1 125 126 1 125 138 1 126 127 1 126 139 1 127 128 1 127 140 1
		 128 129 1 128 141 1 129 142 0 130 131 0 131 132 0 132 133 0 133 134 0 134 135 0 135 136 0
		 136 137 0 137 138 0 138 139 0 139 140 0 140 141 0 141 142 0 0 143 0 1 144 1 143 144 0
		 144 145 1 13 146 0 146 145 1 143 146 0 2 147 1 144 147 0 147 148 1 145 148 1 3 149 1
		 147 149 0 149 150 1 148 150 1 4 151 1 149 151 0 151 152 1 150 152 1 5 153 1 151 153 0
		 153 154 1 152 154 1 6 155 1 153 155 0 155 156 1 154 156 1 7 157 1 155 157 0 157 158 1
		 156 158 1 8 159 1 157 159 0 159 160 1 158 160 1 9 161 1 159 161 0 161 162 1 160 162 1
		 10 163 1 161 163 0 163 164 1 162 164 1 11 165 1 163 165 0 165 166 1 164 166 1 12 167 0
		 165 167 0 25 168 0 167 168 0 166 168 1 145 169 1 26 170 0 170 169 1 146 170 0 148 171 1
		 169 171 1 150 172 1 171 172 1 152 173 1 172 173 1 154 174 1 173 174 1 156 175 1 174 175 1
		 158 176 1 175 176 1 160 177 1 176 177 1;
	setAttr ".ed[332:497]" 162 178 1 177 178 1 164 179 1 178 179 1 166 180 1 179 180 1
		 38 181 0 168 181 0 180 181 1 169 182 1 39 183 0 183 182 1 170 183 0 171 184 1 182 184 1
		 172 185 1 184 185 1 173 186 1 185 186 1 174 187 1 186 187 1 175 188 1 187 188 1 176 189 1
		 188 189 1 177 190 1 189 190 1 178 191 1 190 191 1 179 192 1 191 192 1 180 193 1 192 193 1
		 51 194 0 181 194 0 193 194 1 182 195 1 52 196 0 196 195 1 183 196 0 184 197 1 195 197 1
		 185 198 1 197 198 1 186 199 1 198 199 1 187 200 1 199 200 1 188 201 1 200 201 1 189 202 1
		 201 202 1 190 203 1 202 203 1 191 204 1 203 204 1 192 205 1 204 205 1 193 206 1 205 206 1
		 64 207 0 194 207 0 206 207 1 195 208 1 65 209 0 209 208 1 196 209 0 197 210 1 208 210 1
		 198 211 1 210 211 1 199 212 1 211 212 1 200 213 1 212 213 1 201 214 1 213 214 1 202 215 1
		 214 215 1 203 216 1 215 216 1 204 217 1 216 217 1 205 218 1 217 218 1 206 219 1 218 219 1
		 77 220 0 207 220 0 219 220 1 208 221 1 78 222 0 222 221 1 209 222 0 210 223 1 221 223 1
		 211 224 1 223 224 1 212 225 1 224 225 1 213 226 1 225 226 1 214 227 1 226 227 1 215 228 1
		 227 228 1 216 229 1 228 229 1 217 230 1 229 230 1 218 231 1 230 231 1 219 232 1 231 232 1
		 90 233 0 220 233 0 232 233 1 221 234 1 91 235 0 235 234 1 222 235 0 223 236 1 234 236 1
		 224 237 1 236 237 1 225 238 1 237 238 1 226 239 1 238 239 1 227 240 1 239 240 1 228 241 1
		 240 241 1 229 242 1 241 242 1 230 243 1 242 243 1 231 244 1 243 244 1 232 245 1 244 245 1
		 103 246 0 233 246 0 245 246 1 234 247 1 104 248 0 248 247 1 235 248 0 236 249 1 247 249 1
		 237 250 1 249 250 1 238 251 1 250 251 1 239 252 1 251 252 1 240 253 1 252 253 1 241 254 1
		 253 254 1 242 255 1 254 255 1 243 256 1 255 256 1 244 257 1 256 257 1;
	setAttr ".ed[498:567]" 245 258 1 257 258 1 116 259 0 246 259 0 258 259 1 247 260 1
		 117 261 0 261 260 1 248 261 0 249 262 1 260 262 1 250 263 1 262 263 1 251 264 1 263 264 1
		 252 265 1 264 265 1 253 266 1 265 266 1 254 267 1 266 267 1 255 268 1 267 268 1 256 269 1
		 268 269 1 257 270 1 269 270 1 258 271 1 270 271 1 129 272 0 259 272 0 271 272 1 131 273 1
		 260 273 1 130 274 0 274 273 0 261 274 0 132 275 1 262 275 1 273 275 0 133 276 1 263 276 1
		 275 276 0 134 277 1 264 277 1 276 277 0 135 278 1 265 278 1 277 278 0 136 279 1 266 279 1
		 278 279 0 137 280 1 267 280 1 279 280 0 138 281 1 268 281 1 280 281 0 139 282 1 269 282 1
		 281 282 0 140 283 1 270 283 1 282 283 0 141 284 1 271 284 1 283 284 0 142 285 0 272 285 0
		 284 285 0;
	setAttr -s 284 -ch 1136 ".fc[0:283]" -type "polyFaces" 
		f 4 264 265 -268 -269
		mu 0 4 256 383 15 254
		f 4 270 271 -273 -266
		mu 0 4 383 8 9 15
		f 4 274 275 -277 -272
		mu 0 4 8 0 3 9
		f 4 278 279 -281 -276
		mu 0 4 0 1 2 3
		f 4 282 283 -285 -280
		mu 0 4 1 4 5 2
		f 4 286 287 -289 -284
		mu 0 4 4 224 225 5
		f 4 290 291 -293 -288
		mu 0 4 224 226 227 225
		f 4 294 295 -297 -292
		mu 0 4 226 62 63 227
		f 4 298 299 -301 -296
		mu 0 4 62 54 57 63
		f 4 302 303 -305 -300
		mu 0 4 54 55 56 57
		f 4 306 307 -309 -304
		mu 0 4 55 58 59 56
		f 4 310 312 -314 -308
		mu 0 4 58 64 65 59
		f 4 267 314 -317 -318
		mu 0 4 254 15 19 255
		f 4 272 318 -320 -315
		mu 0 4 15 9 13 19
		f 4 276 320 -322 -319
		mu 0 4 9 3 7 13
		f 4 280 322 -324 -321
		mu 0 4 3 2 6 7
		f 4 284 324 -326 -323
		mu 0 4 2 5 10 6
		f 4 288 326 -328 -325
		mu 0 4 5 225 228 10
		f 4 292 328 -330 -327
		mu 0 4 225 227 229 228
		f 4 296 330 -332 -329
		mu 0 4 227 63 69 229
		f 4 300 332 -334 -331
		mu 0 4 63 57 61 69
		f 4 304 334 -336 -333
		mu 0 4 57 56 60 61
		f 4 308 336 -338 -335
		mu 0 4 56 59 66 60
		f 4 313 339 -341 -337
		mu 0 4 59 65 267 66
		f 4 316 341 -344 -345
		mu 0 4 255 19 23 257
		f 4 319 345 -347 -342
		mu 0 4 19 13 18 23
		f 4 321 347 -349 -346
		mu 0 4 13 7 12 18
		f 4 323 349 -351 -348
		mu 0 4 7 6 11 12
		f 4 325 351 -353 -350
		mu 0 4 6 10 231 11
		f 4 327 353 -355 -352
		mu 0 4 10 228 230 231
		f 4 329 355 -357 -354
		mu 0 4 228 229 232 230
		f 4 331 357 -359 -356
		mu 0 4 229 69 73 232
		f 4 333 359 -361 -358
		mu 0 4 69 61 68 73
		f 4 335 361 -363 -360
		mu 0 4 61 60 67 68
		f 4 337 363 -365 -362
		mu 0 4 60 66 70 67
		f 4 340 366 -368 -364
		mu 0 4 66 267 268 70
		f 4 343 368 -371 -372
		mu 0 4 257 23 27 260
		f 4 346 372 -374 -369
		mu 0 4 23 18 22 27
		f 4 348 374 -376 -373
		mu 0 4 18 12 17 22
		f 4 350 376 -378 -375
		mu 0 4 12 11 16 17
		f 4 352 378 -380 -377
		mu 0 4 11 231 234 16
		f 4 354 380 -382 -379
		mu 0 4 231 230 233 234
		f 4 356 382 -384 -381
		mu 0 4 230 232 235 233
		f 4 358 384 -386 -383
		mu 0 4 232 73 77 235
		f 4 360 386 -388 -385
		mu 0 4 73 68 72 77
		f 4 362 388 -390 -387
		mu 0 4 68 67 71 72
		f 4 364 390 -392 -389
		mu 0 4 67 70 74 71
		f 4 367 393 -395 -391
		mu 0 4 70 268 269 74
		f 4 370 395 -398 -399
		mu 0 4 260 27 31 40
		f 4 373 399 -401 -396
		mu 0 4 27 22 26 31
		f 4 375 401 -403 -400
		mu 0 4 22 17 21 26
		f 4 377 403 -405 -402
		mu 0 4 17 16 20 21
		f 4 379 405 -407 -404
		mu 0 4 16 234 237 20
		f 4 381 407 -409 -406
		mu 0 4 234 233 236 237
		f 4 383 409 -411 -408
		mu 0 4 233 235 238 236
		f 4 385 411 -413 -410
		mu 0 4 235 77 81 238
		f 4 387 413 -415 -412
		mu 0 4 77 72 76 81
		f 4 389 415 -417 -414
		mu 0 4 72 71 75 76
		f 4 391 417 -419 -416
		mu 0 4 71 74 78 75
		f 4 394 420 -422 -418
		mu 0 4 74 269 86 78
		f 4 397 422 -425 -426
		mu 0 4 40 31 35 41
		f 4 400 426 -428 -423
		mu 0 4 31 26 30 35
		f 4 402 428 -430 -427
		mu 0 4 26 21 25 30
		f 4 404 430 -432 -429
		mu 0 4 21 20 24 25
		f 4 406 432 -434 -431
		mu 0 4 20 237 240 24
		f 4 408 434 -436 -433
		mu 0 4 237 236 239 240
		f 4 410 436 -438 -435
		mu 0 4 236 238 241 239
		f 4 412 438 -440 -437
		mu 0 4 238 81 85 241
		f 4 414 440 -442 -439
		mu 0 4 81 76 80 85
		f 4 416 442 -444 -441
		mu 0 4 76 75 79 80
		f 4 418 444 -446 -443
		mu 0 4 75 78 82 79
		f 4 421 447 -449 -445
		mu 0 4 78 86 87 82
		f 4 424 449 -452 -453
		mu 0 4 41 35 39 46
		f 4 427 453 -455 -450
		mu 0 4 35 30 34 39
		f 4 429 455 -457 -454
		mu 0 4 30 25 29 34
		f 4 431 457 -459 -456
		mu 0 4 25 24 28 29
		f 4 433 459 -461 -458
		mu 0 4 24 240 243 28
		f 4 435 461 -463 -460
		mu 0 4 240 239 242 243
		f 4 437 463 -465 -462
		mu 0 4 239 241 244 242
		f 4 439 465 -467 -464
		mu 0 4 241 85 91 244
		f 4 441 467 -469 -466
		mu 0 4 85 80 84 91
		f 4 443 469 -471 -468
		mu 0 4 80 79 83 84
		f 4 445 471 -473 -470
		mu 0 4 79 82 88 83
		f 4 448 474 -476 -472
		mu 0 4 82 87 270 88
		f 4 451 476 -479 -480
		mu 0 4 46 39 45 329
		f 4 454 480 -482 -477
		mu 0 4 39 34 38 45
		f 4 456 482 -484 -481
		mu 0 4 34 29 33 38
		f 4 458 484 -486 -483
		mu 0 4 29 28 32 33
		f 4 460 486 -488 -485
		mu 0 4 28 243 246 32
		f 4 462 488 -490 -487
		mu 0 4 243 242 245 246
		f 4 464 490 -492 -489
		mu 0 4 242 244 247 245
		f 4 466 492 -494 -491
		mu 0 4 244 91 95 247
		f 4 468 494 -496 -493
		mu 0 4 91 84 90 95
		f 4 470 496 -498 -495
		mu 0 4 84 83 89 90
		f 4 472 498 -500 -497
		mu 0 4 83 88 92 89
		f 4 475 501 -503 -499
		mu 0 4 88 270 271 92
		f 4 478 503 -506 -507
		mu 0 4 329 45 48 50
		f 4 481 507 -509 -504
		mu 0 4 45 38 44 48
		f 4 483 509 -511 -508
		mu 0 4 38 33 37 44
		f 4 485 511 -513 -510
		mu 0 4 33 32 36 37
		f 4 487 513 -515 -512
		mu 0 4 32 246 249 36
		f 4 489 515 -517 -514
		mu 0 4 246 245 248 249
		f 4 491 517 -519 -516
		mu 0 4 245 247 250 248
		f 4 493 519 -521 -518
		mu 0 4 247 95 99 250
		f 4 495 521 -523 -520
		mu 0 4 95 90 94 99
		f 4 497 523 -525 -522
		mu 0 4 90 89 93 94
		f 4 499 525 -527 -524
		mu 0 4 89 92 96 93
		f 4 502 528 -530 -526
		mu 0 4 92 271 272 96
		f 4 505 531 -534 -535
		mu 0 4 50 48 49 381
		f 4 508 536 -538 -532
		mu 0 4 48 44 47 49
		f 4 510 539 -541 -537
		mu 0 4 44 37 43 47
		f 4 512 542 -544 -540
		mu 0 4 37 36 42 43
		f 4 514 545 -547 -543
		mu 0 4 36 249 252 42
		f 4 516 548 -550 -546
		mu 0 4 249 248 251 252
		f 4 518 551 -553 -549
		mu 0 4 248 250 253 251
		f 4 520 554 -556 -552
		mu 0 4 250 99 101 253
		f 4 522 557 -559 -555
		mu 0 4 99 94 98 101
		f 4 524 560 -562 -558
		mu 0 4 94 93 97 98
		f 4 526 563 -565 -561
		mu 0 4 93 96 100 97
		f 4 529 566 -568 -564
		mu 0 4 96 272 273 100
		f 4 1 25 -4 -1
		mu 0 4 308 305 113 112
		f 4 3 27 -6 -3
		mu 0 4 112 113 107 106
		f 4 5 29 -8 -5
		mu 0 4 106 107 103 102
		f 4 7 31 -10 -7
		mu 0 4 102 103 104 105
		f 4 9 33 -12 -9
		mu 0 4 105 104 110 111
		f 4 11 35 -14 -11
		mu 0 4 111 110 274 275
		f 4 13 37 -16 -13
		mu 0 4 275 274 278 279
		f 4 15 39 -18 -15
		mu 0 4 279 278 161 370
		f 4 17 41 -20 -17
		mu 0 4 370 161 157 371
		f 4 19 43 -22 -19
		mu 0 4 371 157 158 159
		f 4 21 45 -24 -21
		mu 0 4 159 158 164 372
		f 4 23 47 -25 -23
		mu 0 4 372 164 172 173
		f 4 26 50 -29 -26
		mu 0 4 305 306 117 113
		f 4 28 52 -31 -28
		mu 0 4 113 117 114 107
		f 4 30 54 -33 -30
		mu 0 4 107 114 108 103
		f 4 32 56 -35 -32
		mu 0 4 103 108 109 104
		f 4 34 58 -37 -34
		mu 0 4 104 109 276 110
		f 4 36 60 -39 -36
		mu 0 4 110 276 277 274
		f 4 38 62 -41 -38
		mu 0 4 274 277 282 278
		f 4 40 64 -43 -40
		mu 0 4 278 282 166 161
		f 4 42 66 -45 -42
		mu 0 4 161 166 162 157
		f 4 44 68 -47 -44
		mu 0 4 157 162 163 158
		f 4 46 70 -49 -46
		mu 0 4 158 163 171 164
		f 4 48 72 -50 -48
		mu 0 4 164 171 312 172
		f 4 51 75 -54 -51
		mu 0 4 306 379 121 117
		f 4 53 77 -56 -53
		mu 0 4 117 121 118 114
		f 4 55 79 -58 -55
		mu 0 4 114 118 115 108
		f 4 57 81 -60 -57
		mu 0 4 108 115 116 109
		f 4 59 83 -62 -59
		mu 0 4 109 116 280 276
		f 4 61 85 -64 -61
		mu 0 4 276 280 281 277
		f 4 63 87 -66 -63
		mu 0 4 277 281 285 282
		f 4 65 89 -68 -65
		mu 0 4 282 285 174 166
		f 4 67 91 -70 -67
		mu 0 4 166 174 169 162
		f 4 69 93 -72 -69
		mu 0 4 162 169 170 163
		f 4 71 95 -74 -71
		mu 0 4 163 170 177 171
		f 4 73 97 -75 -73
		mu 0 4 171 177 313 312
		f 4 76 100 -79 -76
		mu 0 4 379 378 125 121
		f 4 78 102 -81 -78
		mu 0 4 121 125 122 118
		f 4 80 104 -83 -80
		mu 0 4 118 122 119 115
		f 4 82 106 -85 -82
		mu 0 4 115 119 120 116
		f 4 84 108 -87 -84
		mu 0 4 116 120 283 280
		f 4 86 110 -89 -86
		mu 0 4 280 283 284 281
		f 4 88 112 -91 -88
		mu 0 4 281 284 288 285
		f 4 90 114 -93 -90
		mu 0 4 285 288 180 174
		f 4 92 116 -95 -92
		mu 0 4 174 180 175 169
		f 4 94 118 -97 -94
		mu 0 4 169 175 176 170
		f 4 96 120 -99 -96
		mu 0 4 170 176 183 177
		f 4 98 122 -100 -98
		mu 0 4 177 183 314 313
		f 4 101 125 -104 -101
		mu 0 4 378 376 129 125
		f 4 103 127 -106 -103
		mu 0 4 125 129 126 122
		f 4 105 129 -108 -105
		mu 0 4 122 126 123 119
		f 4 107 131 -110 -107
		mu 0 4 119 123 124 120
		f 4 109 133 -112 -109
		mu 0 4 120 124 286 283
		f 4 111 135 -114 -111
		mu 0 4 283 286 287 284
		f 4 113 137 -116 -113
		mu 0 4 284 287 291 288
		f 4 115 139 -118 -115
		mu 0 4 288 291 184 180
		f 4 117 141 -120 -117
		mu 0 4 180 184 181 175
		f 4 119 143 -122 -119
		mu 0 4 175 181 182 176
		f 4 121 145 -124 -121
		mu 0 4 176 182 187 183
		f 4 123 147 -125 -123
		mu 0 4 183 187 197 314
		f 4 126 150 -129 -126
		mu 0 4 376 377 133 129
		f 4 128 152 -131 -128
		mu 0 4 129 133 130 126
		f 4 130 154 -133 -130
		mu 0 4 126 130 127 123
		f 4 132 156 -135 -132
		mu 0 4 123 127 128 124
		f 4 134 158 -137 -134
		mu 0 4 124 128 289 286
		f 4 136 160 -139 -136
		mu 0 4 286 289 290 287
		f 4 138 162 -141 -138
		mu 0 4 287 290 294 291
		f 4 140 164 -143 -140
		mu 0 4 291 294 188 184
		f 4 142 166 -145 -142
		mu 0 4 184 188 185 181
		f 4 144 168 -147 -144
		mu 0 4 181 185 186 182
		f 4 146 170 -149 -146
		mu 0 4 182 186 191 187
		f 4 148 172 -150 -148
		mu 0 4 187 191 196 197
		f 4 151 175 -154 -151
		mu 0 4 377 330 139 133
		f 4 153 177 -156 -153
		mu 0 4 133 139 134 130
		f 4 155 179 -158 -155
		mu 0 4 130 134 131 127
		f 4 157 181 -160 -157
		mu 0 4 127 131 132 128
		f 4 159 183 -162 -159
		mu 0 4 128 132 292 289
		f 4 161 185 -164 -161
		mu 0 4 289 292 293 290
		f 4 163 187 -166 -163
		mu 0 4 290 293 297 294
		f 4 165 189 -168 -165
		mu 0 4 294 297 192 188
		f 4 167 191 -170 -167
		mu 0 4 188 192 189 185
		f 4 169 193 -172 -169
		mu 0 4 185 189 190 186
		f 4 171 195 -174 -171
		mu 0 4 186 190 195 191
		f 4 173 197 -175 -173
		mu 0 4 191 195 316 196
		f 4 176 200 -179 -176
		mu 0 4 330 331 145 139
		f 4 178 202 -181 -178
		mu 0 4 139 145 140 134
		f 4 180 204 -183 -180
		mu 0 4 134 140 135 131
		f 4 182 206 -185 -182
		mu 0 4 131 135 136 132
		f 4 184 208 -187 -184
		mu 0 4 132 136 295 292
		f 4 186 210 -189 -186
		mu 0 4 292 295 296 293
		f 4 188 212 -191 -188
		mu 0 4 293 296 300 297
		f 4 190 214 -193 -190
		mu 0 4 297 300 198 192
		f 4 192 216 -195 -192
		mu 0 4 192 198 193 189
		f 4 194 218 -197 -194
		mu 0 4 189 193 194 190
		f 4 196 220 -199 -196
		mu 0 4 190 194 201 195
		f 4 198 222 -200 -198
		mu 0 4 195 201 315 316
		f 4 201 225 -204 -201
		mu 0 4 331 152 149 145
		f 4 203 227 -206 -203
		mu 0 4 145 149 146 140
		f 4 205 229 -208 -205
		mu 0 4 140 146 141 135
		f 4 207 231 -210 -207
		mu 0 4 135 141 142 136
		f 4 209 233 -212 -209
		mu 0 4 136 142 298 295
		f 4 211 235 -214 -211
		mu 0 4 295 298 299 296
		f 4 213 237 -216 -213
		mu 0 4 296 299 303 300
		f 4 215 239 -218 -215
		mu 0 4 300 303 202 198
		f 4 217 241 -220 -217
		mu 0 4 198 202 199 193
		f 4 219 243 -222 -219
		mu 0 4 193 199 200 194
		f 4 221 245 -224 -221
		mu 0 4 194 200 205 201
		f 4 223 247 -225 -223
		mu 0 4 201 205 317 315
		f 4 226 250 -229 -226
		mu 0 4 152 153 375 149
		f 4 228 251 -231 -228
		mu 0 4 149 375 150 146
		f 4 230 252 -233 -230
		mu 0 4 146 150 147 141
		f 4 232 253 -235 -232
		mu 0 4 141 147 148 142
		f 4 234 254 -237 -234
		mu 0 4 142 148 301 298
		f 4 236 255 -239 -236
		mu 0 4 298 301 302 299
		f 4 238 256 -241 -238
		mu 0 4 299 302 304 303
		f 4 240 257 -243 -240
		mu 0 4 303 304 206 202
		f 4 242 258 -245 -242
		mu 0 4 202 206 203 199
		f 4 244 259 -247 -244
		mu 0 4 199 203 204 200
		f 4 246 260 -249 -246
		mu 0 4 200 204 207 205
		f 4 248 261 -250 -248
		mu 0 4 205 207 318 317
		f 4 0 263 -265 -263
		mu 0 4 258 259 14 382
		f 4 -2 262 268 -267
		mu 0 4 209 368 369 210
		f 4 2 269 -271 -264
		mu 0 4 259 261 262 14
		f 4 4 273 -275 -270
		mu 0 4 261 263 264 262
		f 4 6 277 -279 -274
		mu 0 4 263 265 266 264
		f 4 8 281 -283 -278
		mu 0 4 265 332 333 266
		f 4 10 285 -287 -282
		mu 0 4 332 334 335 333
		f 4 12 289 -291 -286
		mu 0 4 334 336 337 335
		f 4 14 293 -295 -290
		mu 0 4 336 160 168 337
		f 4 16 297 -299 -294
		mu 0 4 160 156 167 168
		f 4 18 301 -303 -298
		mu 0 4 156 338 339 167
		f 4 20 305 -307 -302
		mu 0 4 338 165 179 339
		f 4 22 309 -311 -306
		mu 0 4 165 373 178 179
		f 4 24 311 -313 -310
		mu 0 4 340 341 342 343
		f 4 -27 266 317 -316
		mu 0 4 208 209 210 211
		f 4 49 338 -340 -312
		mu 0 4 341 344 347 342
		f 4 -52 315 344 -343
		mu 0 4 307 208 211 309
		f 4 74 365 -367 -339
		mu 0 4 344 345 346 347
		f 4 -77 342 371 -370
		mu 0 4 310 307 309 311
		f 4 99 392 -394 -366
		mu 0 4 212 213 214 215
		f 4 -102 369 398 -397
		mu 0 4 137 310 311 143
		f 4 124 419 -421 -393
		mu 0 4 213 216 217 214
		f 4 -127 396 425 -424
		mu 0 4 138 137 143 144
		f 4 149 446 -448 -420
		mu 0 4 216 348 349 217
		f 4 -152 423 452 -451
		mu 0 4 321 138 144 322
		f 4 174 473 -475 -447
		mu 0 4 348 350 351 349
		f 4 -177 450 479 -478
		mu 0 4 319 321 322 320
		f 4 199 500 -502 -474
		mu 0 4 350 222 223 351
		f 4 -202 477 506 -505
		mu 0 4 53 319 320 380
		f 4 224 527 -529 -501
		mu 0 4 222 218 221 223
		f 4 -251 532 533 -531
		mu 0 4 151 374 154 155
		f 4 -227 504 534 -533
		mu 0 4 52 53 380 51
		f 4 -252 530 537 -536
		mu 0 4 323 151 155 324
		f 4 -253 535 540 -539
		mu 0 4 325 323 324 326
		f 4 -254 538 543 -542
		mu 0 4 327 325 326 328
		f 4 -255 541 546 -545
		mu 0 4 352 327 328 353
		f 4 -256 544 549 -548
		mu 0 4 354 352 353 355
		f 4 -257 547 552 -551
		mu 0 4 356 354 355 357
		f 4 -258 550 555 -554
		mu 0 4 358 356 357 359
		f 4 -259 553 558 -557
		mu 0 4 360 358 359 361
		f 4 -260 556 561 -560
		mu 0 4 362 360 361 363
		f 4 -261 559 564 -563
		mu 0 4 364 362 363 365
		f 4 249 565 -567 -528
		mu 0 4 218 219 220 221
		f 4 -262 562 567 -566
		mu 0 4 366 364 365 367;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 129 
		4 0 
		5 0 
		6 0 
		10 0 
		11 0 
		14 0 
		15 0 
		16 0 
		19 0 
		20 0 
		23 0 
		24 0 
		27 0 
		28 0 
		31 0 
		32 0 
		36 0 
		39 0 
		40 0 
		42 0 
		45 0 
		46 0 
		48 0 
		50 0 
		53 0 
		59 0 
		62 0 
		63 0 
		65 0 
		66 0 
		69 0 
		70 0 
		73 0 
		74 0 
		77 0 
		78 0 
		81 0 
		82 0 
		85 0 
		86 0 
		87 0 
		88 0 
		91 0 
		92 0 
		95 0 
		96 0 
		99 0 
		100 0 
		101 0 
		104 0 
		109 0 
		110 0 
		111 0 
		112 0 
		113 0 
		116 0 
		117 0 
		120 0 
		121 0 
		124 0 
		125 0 
		128 0 
		129 0 
		132 0 
		133 0 
		136 0 
		137 0 
		138 0 
		139 0 
		142 0 
		143 0 
		144 0 
		145 0 
		148 0 
		149 0 
		151 0 
		152 0 
		155 0 
		156 0 
		160 0 
		161 0 
		164 0 
		165 0 
		166 0 
		167 0 
		168 0 
		171 0 
		172 0 
		174 0 
		177 0 
		179 0 
		180 0 
		183 0 
		184 0 
		187 0 
		188 0 
		191 0 
		192 0 
		195 0 
		196 0 
		197 0 
		198 0 
		201 0 
		202 0 
		205 0 
		206 0 
		207 0 
		208 0 
		209 0 
		210 0 
		211 0 
		216 0 
		217 0 
		222 0 
		223 0 
		265 0 
		266 0 
		321 0 
		322 0 
		327 0 
		328 0 
		341 0 
		342 0 
		344 0 
		347 0 
		348 0 
		349 0 
		350 0 
		351 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 3;
	setAttr ".dsm" 2;
createNode transform -n "span_03" -p "spans";
	rename -uid "897A36F8-44E9-C988-2B92-A2997A17E32E";
	setAttr ".t" -type "double3" 87.831938809690186 -1.2556831006717015 -16.689618674192324 ;
	setAttr ".r" -type "double3" 6.8573792999047685 56.494178564122045 9.6091070341073213 ;
createNode mesh -n "span_Shape3" -p "span_03";
	rename -uid "183B37ED-488E-B62E-3EF7-3C8513EAF32B";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 2.650658130645752 1.6801233291625977 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 376 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.96331751 0.8805545 0.954584
		 0.88047552 0.95456898 0.85205305 0.96530795 0.85187382 0.96001291 0.91657746 0.95459712
		 0.9166609 0.94738132 0.88048112 0.94737011 0.85206574 0.95451009 0.82366246 0.95911294
		 0.82366025 0.94739783 0.91669279 0.94017977 0.88048679 0.9401722 0.85207403 0.94732273
		 0.82366771 0.95453686 0.79564565 0.96173137 0.79565907 0.94019055 0.91672671 0.93297982
		 0.88048929 0.93297529 0.85207891 0.94013548 0.8236708 0.94733864 0.79563582 0.93298745
		 0.91672277 0.92577887 0.8804884 0.92577899 0.85208076 0.9329477 0.82367271 0.94014043
		 0.79563028 0.92578125 0.91670549 0.9185766 0.88048482 0.91858327 0.85207999 0.92575979
		 0.8236742 0.9329415 0.79562753 0.91857886 0.91668892 0.91137326 0.88047957 0.91138744
		 0.85207623 0.91857243 0.82367605 0.92574143 0.79562652 0.91138291 0.91665936 0.90416813
		 0.88047475 0.90419155 0.85206866 0.91138506 0.82367933 0.91853988 0.79562658 0.90418947
		 0.91662818 0.89433771 0.88046879 0.89699817 0.85205775 0.90419877 0.82368588 0.91133618
		 0.79562771 0.89923531 0.9165352 0.89908719 0.82359564 0.90413022 0.79563004 0.89409864
		 0.79563719 0.39223891 0.61631858 0.40097126 0.61616671 0.40320605 0.64539123 0.39246598
		 0.64530188 0.39194193 0.57917267 0.39735833 0.57921046 0.39725062 0.67419791 0.39264777
		 0.67423385 0.38503641 0.6163733 0.38526705 0.64534938 0.38474301 0.57920104 0.40010831
		 0.70299906 0.39291412 0.70307195 0.38546047 0.67428863 0.37783524 0.61642778 0.37806937
		 0.645401 0.37753651 0.57922781 0.3857162 0.70314169 0.37827319 0.67434525 0.37063542
		 0.61648542 0.37087265 0.64545619 0.37033385 0.57929122 0.37851822 0.70320702 0.37108567
		 0.67440313 0.36343497 0.61654603 0.36367658 0.64551413 0.36312863 0.57936835 0.3713192
		 0.70326984 0.36389792 0.67446148 0.35623333 0.61660933 0.35648102 0.64557475 0.35592714
		 0.57944465 0.36411956 0.70333099 0.35671058 0.67451942 0.34903017 0.61667418 0.34928539
		 0.64563823 0.34873167 0.57953382 0.3569181 0.70339096 0.3495234 0.67457592 0.34182557
		 0.61673886 0.34208962 0.64570558 0.34153858 0.57962465 0.34971467 0.7034499 0.34233704
		 0.67462933 0.33199564 0.61682659 0.33489668 0.64577603 0.33658528 0.57975882 0.34250912
		 0.70350778 0.3372263 0.67476225 0.3324779 0.70358479 0.96409374 0.71054399 0.95457166
		 0.71055138 0.95452285 0.68270743 0.96171772 0.68269432 0.96175671 0.73898029 0.95456433
		 0.73898017 0.94737005 0.71055436 0.94732547 0.682715 0.95450163 0.6545949 0.95911026
		 0.65460384 0.94737124 0.73898053 0.94016957 0.71055698 0.94012749 0.6827175 0.94731247
		 0.65458333 0.95461673 0.62664193 0.96181291 0.62668031 0.94017762 0.73898077 0.93297017
		 0.71055913 0.93292892 0.68271732 0.94012296 0.65457082 0.94741619 0.62660748 0.9329834
		 0.73898089 0.92577219 0.71056151 0.92572987 0.68271589 0.93293238 0.65455788 0.94021523
		 0.62657768 0.92578948 0.73898125 0.91857493 0.71056521 0.91852963 0.68271446 0.92574143
		 0.65454507 0.9330135 0.62655044 0.91859591 0.73898196 0.91137898 0.71057141 0.9113279
		 0.68271345 0.91855073 0.65453303 0.92581081 0.62652403 0.9114024 0.73898298 0.90418458
		 0.71058184 0.90412456 0.68271321 0.91136086 0.65452248 0.91860664 0.62649786 0.90420926
		 0.73898447 0.89699131 0.71059656 0.89411664 0.68271691 0.90417272 0.65451503 0.91140115
		 0.62647128 0.89915651 0.73898518 0.89698571 0.65450823 0.90419364 0.6264441 0.89481223
		 0.62641191 0.39367306 0.78991419 0.40319484 0.78984213 0.4010573 0.81862897 0.39386255
		 0.81867611 0.39342481 0.76094246 0.40061674 0.7608825 0.39869115 0.84748232 0.39408258
		 0.84752965 0.38647163 0.78997093 0.3866652 0.81872857 0.38623199 0.76100188 0.40163735
		 0.87623608 0.39444169 0.87633395 0.38689372 0.84760094 0.37927163 0.79002827 0.37946746
		 0.81878579 0.37903842 0.76106161 0.38724178 0.87642878 0.37970418 0.84767348 0.37207264
		 0.79008591 0.372269 0.81884575 0.37184465 0.76112127 0.38004118 0.87651902 0.37251398
		 0.84774643 0.36487454 0.79014325 0.36507007 0.81890696 0.36465073 0.76118082 0.3728396
		 0.87660694 0.36532322 0.84781933 0.35767761 0.79019946 0.35787007 0.81896836 0.35745734
		 0.76124007 0.36563671 0.87669396 0.35813263 0.84789139 0.35048181 0.79025316 0.35066879
		 0.81902933 0.35026419 0.76129895 0.35843265 0.87678069 0.35094303 0.8479619 0.34328741
		 0.79030269 0.34346566 0.81908953 0.34307119 0.76135761 0.35122663 0.87686753 0.34375495
		 0.84802961 0.33609432 0.79034823 0.33345819 0.8191694 0.33801845 0.76139903 0.34401873
		 0.87695456 0.33656791 0.84809649 0.33463857 0.87706703 0.12465081 0.0063220449 0.12415768
		 0.0076574506 0.11679728 0.0052448311 0.11729033 0.0039093364 0.24509226 0.042599075
		 0.24455941 0.043919262 0.23752725 0.041080792 0.23805986 0.039760605 0.22997816 0.038035814
		 0.23051086 0.036715686 0.22278056 0.035130095 0.22331329 0.033809938 0.17771804 0.025914889
		 0.17722479 0.027250385 0.16904263 0.025668032 0.16953577 0.024332508 0.18343085 0.017715175
		 0.18289822 0.019035362 0.17639358 0.016409233 0.1769262 0.015089117 0.16661383 0.012465477
		 0.16714662 0.011145424 0.1555063 0.0065659974 0.15603904 0.0052458607 0.14884172
		 0.0052292859 0.14937443 0.0039092312 0.23756377 0.048010949 0.23707063 0.049346372
		 0.23031937 0.046853628 0.23081236 0.045518134 0.22167246 0.043037988 0.22216547 0.041702505
		 0.21262068 0.040318944 0.21311377 0.038983509 0.9623493 0.95040554 0.95525402 0.95350486
		 0.94802082 0.92864573 0.9404794 0.95013857 0.93292832 0.95364416 0.92568529 0.93608725
		 0.91825819 0.95358235 0.9109894 0.95962667 0.90383136 0.95346105 0.89663494 0.9533928
		 0.39228848 0.5417217 0.39941025 0.54475999 0.38526651 0.56664073 0.37754351 0.5452109
		 0.36996326 0.5417676 0.36286414 0.55938411;
	setAttr ".uvst[0].uvsp[250:375]" 0.35529155 0.54195154 0.34797266 0.53596795
		 0.34086582 0.54219246 0.3336702 0.54232025 0.95457792 0.76747835 0.96575123 0.76748651
		 0.94737673 0.76747382 0.94017589 0.76747048 0.93297613 0.76746786 0.92577696 0.76746559
		 0.91857886 0.76746279 0.91138154 0.76745838 0.90418494 0.76745093 0.89699125 0.76743889
		 0.40436956 0.73187619 0.39319697 0.73197711 0.38599578 0.7320416 0.37879536 0.7321049
		 0.37159583 0.73216748 0.36439735 0.73222983 0.35719916 0.73229277 0.35000214 0.7323572
		 0.34280592 0.73242474 0.33561242 0.73249644 0.95476139 0.59959251 0.96344572 0.59963441
		 0.94756168 0.59955949 0.95462161 0.56960166 0.96207434 0.57098848 0.94036305 0.59952784
		 0.9476738 0.57383877 0.93316263 0.59949422 0.94049221 0.57090074 0.92596334 0.59945869
		 0.93320674 0.59160286 0.91876668 0.59941983 0.92496049 0.57224399 0.91157031 0.59937716
		 0.91848063 0.56956887 0.9043749 0.59933001 0.91172308 0.57766211 0.89718258 0.5992974
		 0.90396273 0.56776732 0.89816248 0.57130456 0.39482915 0.90459967 0.40351287 0.90448582
		 0.38763013 0.90469229 0.40238219 0.93327159 0.39494154 0.93472028 0.3804324 0.90478384
		 0.38795871 0.9305411 0.37323269 0.9048779 0.38080224 0.93353903 0.36603412 0.90497434
		 0.37334514 0.91289824 0.35883898 0.90507483 0.36526671 0.93232685 0.35164446 0.9051798
		 0.35881045 0.93505746 0.34445089 0.90528971 0.35198465 0.92702258 0.33725902 0.90538406
		 0.3443093 0.93698376 0.33847916 0.93349665 0.32656991 0.80707729 0.32554486 0.808065
		 0.29752722 0.78892064 0.29805121 0.78759706 0.26135132 0.78705376 0.26091778 0.78569776
		 0.23636417 0.80135363 0.23544103 0.80026996 0.21834624 0.82394356 0.21709095 0.82327235
		 0.21199644 0.85133708 0.21057895 0.85146922 0.22240016 0.87786031 0.22123621 0.87867957
		 0.24287583 0.89812887 0.24203645 0.89927876 0.26845661 0.9108358 0.26810813 0.91221607
		 0.2963666 0.90870643 0.2969307 0.91001344 0.31809214 0.89068627 0.31923574 0.89153385
		 0.328583 0.86464 0.33000576 0.86468267 0.31608751 0.84055942 0.31702068 0.83948421
		 0.29274285 0.82387346 0.2935743 0.82271785 0.72724545 0.95714891 0.72628099 0.95819634
		 0.70416445 0.92783505 0.70547557 0.92728066 0.70124316 0.8905375 0.70261014 0.89093482
		 0.71525735 0.86497641 0.71636575 0.86586964 0.73742062 0.84616184 0.73811632 0.84740394
		 0.76569152 0.83873391 0.76559603 0.84015441 0.79287964 0.84916699 0.79208761 0.85034984
		 0.81383938 0.86922437 0.81270754 0.87008768 0.827218 0.89497745 0.82584518 0.89535487
		 0.82608581 0.92393863 0.82476676 0.9234035 0.80796194 0.94673562 0.80708891 0.9456113
		 0.78124905 0.95821142 0.78117561 0.95678973 0.75580502 0.94538713 0.75685823 0.9444294
		 0.73877966 0.9229697 0.73991585 0.92211199 0.2024243 0.026922658 0.20295678 0.025602551
		 0.14701013 0.019840242 0.14750312 0.018504668 0.1941497 0.035877872 0.1946429 0.034542464;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 280 ".vt";
	setAttr ".vt[0:165]"  -0.745107 4.83522654 -1.23424971 -0.73199493 4.78249073 -1.23424971
		 -0.62425464 4.82053137 1.23626375 -0.63736671 4.87326717 1.23626375 -1.9315356 4.2641778 -1.16823423
		 -1.8977375 4.2216258 -1.16823423 -1.89776039 4.21937895 1.15055943 -1.93155849 4.26193094 1.15055943
		 -2.69716287 3.075786352 -1.29481626 -2.64401937 3.06444025 -1.29481626 -2.64805532 3.062047482 1.33646405
		 -2.70119882 3.073393583 1.33646405 -2.69677663 1.95804274 -1.371328 -2.6433804 1.96813285 -1.371328
		 -2.63763976 1.97527909 1.23626375 -2.69103599 1.96518898 1.23626375 -2.28620386 0.93909419 -1.1371876
		 -2.24044585 0.96840578 -1.1371876 -2.23894358 0.96485496 1.15669096 -2.28470159 0.93554336 1.15669096
		 -1.4706763 0.20058155 -1.23626375 -1.44878364 0.25031772 -1.23626375 -1.45313239 0.24074443 1.34408152
		 -1.47502506 0.19100825 1.34408152 -0.37505233 0.055561256 -1.3877492 -0.38106379 0.109569 -1.3877492
		 -0.38180444 0.11930542 1.23626375 -0.37579298 0.065297678 1.23626375 0.68604249 0.37158078 -1.23626375
		 0.66284823 0.42072344 -1.23626375 0.66093266 0.4246861 1.15440202 0.68412691 0.37554345 1.15440202
		 1.59289479 1.007293582 -1.32475173 1.55296671 1.044154406 -1.32475173 1.54721105 1.048889279 1.23626375
		 1.58713913 1.012028456 1.23626375 2.042112589 2.011264801 -1.23626375 1.98798335 2.016060591 -1.23626375
		 1.99851584 2.014804602 1.34312582 2.052644968 2.010008812 1.34312582 1.82631123 3.091165781 -1.13733339
		 1.7771306 3.068051815 -1.13733339 1.78445268 3.071583509 1.23626375 1.8336333 3.094697475 1.23626375
		 1.12035286 3.93462992 -1.23626375 1.093307376 3.88749671 -1.23626375 1.098225236 3.89790988 1.31900895
		 1.12527072 3.94504309 1.31900895 0.03986083 3.95017838 -1.29292011 0.059325237 3.89944291 -1.29292011
		 0.060219202 3.89531612 1.23626375 0.040754795 3.9460516 1.23626375 -0.94450229 3.46182537 -1.23626375
		 -0.92049444 3.41307497 -1.23626375 -0.90002501 3.42557764 1.19987512 -0.92403287 3.47432804 1.19987512
		 1.12035286 3.93462992 0.4120878 1.8336333 3.094697475 0.4120878 2.042112589 2.011264801 0.4120878
		 1.58713913 1.012028456 0.4120878 0.68604249 0.37158078 0.4120878 -0.37579298 0.065297678 0.4120878
		 -1.4706763 0.20058155 0.4120878 -2.29234815 0.93481994 0.4120878 -2.69103599 1.96518898 0.4120878
		 -2.69247508 3.070874691 0.4120878 -1.93503511 4.27023745 0.4120878 -0.63736671 4.87326717 0.4120878
		 -0.62425464 4.82053137 0.4120878 -1.90123701 4.22768545 0.4120878 -2.63933158 3.059528351 0.4120878
		 -2.63763976 1.97527909 0.4120878 -2.24659014 0.96413153 0.4120878 -1.44878364 0.25031772 0.4120878
		 -0.38180444 0.11930542 0.4120878 0.66284823 0.42072344 0.4120878 1.54721105 1.048889279 0.4120878
		 1.98798335 2.016060591 0.4120878 1.78445268 3.071583271 0.4120878 1.093307376 3.88749671 0.4120878
		 0.060219198 3.89531612 0.4120878 -0.96218699 3.39256048 0.43080398 -0.98619491 3.44131088 0.43080398
		 0.040754795 3.9460516 0.4120878 1.12035286 3.93462992 -0.41208798 1.8336333 3.094697475 -0.41208798
		 2.042112589 2.011264801 -0.41208798 1.58713913 1.012028456 -0.41208798 0.68604249 0.37158078 -0.41208798
		 -0.37579298 0.065297678 -0.41208798 -1.4706763 0.20058155 -0.41208798 -2.29234815 0.93481994 -0.41208798
		 -2.69103599 1.96518898 -0.41208798 -2.69247508 3.070874691 -0.41208798 -1.93503511 4.27023745 -0.41208798
		 -0.74800038 4.79267883 -0.42453417 -0.73488832 4.73994303 -0.42453417 -1.90123701 4.22768545 -0.41208798
		 -2.63933158 3.059528351 -0.41208798 -2.63763976 1.97527909 -0.41208798 -2.24659014 0.96413153 -0.41208798
		 -1.44878364 0.25031772 -0.41208798 -0.38180444 0.11930542 -0.41208798 0.66284823 0.42072344 -0.41208798
		 1.54721105 1.048889279 -0.41208798 1.98798335 2.016060591 -0.41208798 1.78445268 3.071583271 -0.41208798
		 1.093307376 3.88749671 -0.41208798 0.060219198 3.89531612 -0.41208798 -0.92049444 3.41307497 -0.41208798
		 -0.94450235 3.46182537 -0.41208798 0.040754795 3.9460516 -0.41208798 1.12035286 3.93462992 -0.68681324
		 1.8336333 3.094697475 -0.68681324 2.042112589 2.011264801 -0.68681324 1.58713913 1.012028456 -0.68681324
		 0.68604249 0.37158078 -0.68681324 -0.37579298 0.065297678 -0.68681324 -1.4706763 0.20058155 -0.68681324
		 -2.29234815 0.93481994 -0.68681324 -2.69103599 1.96518898 -0.68681324 -2.69247508 3.070874691 -0.68681324
		 -1.93503511 4.27023745 -0.68681324 -1.52270603 4.51493549 -0.7065438 -1.50959396 4.46219969 -0.7065438
		 -1.90123701 4.22768545 -0.68681324 -2.63933158 3.059528351 -0.68681324 -2.63763976 1.97527909 -0.68681324
		 -2.24659014 0.96413153 -0.68681324 -1.44878364 0.25031772 -0.68681324 -0.38180444 0.11930542 -0.68681324
		 0.66284823 0.42072344 -0.68681324 1.54721105 1.048889279 -0.68681324 1.98798335 2.016060591 -0.68681324
		 1.78445268 3.071583271 -0.68681324 1.093307376 3.88749671 -0.68681324 0.060219198 3.89531612 -0.68681324
		 -0.82091719 3.46206975 -0.68681324 -0.84492511 3.51082015 -0.68681324 0.040754795 3.9460516 -0.68681324
		 1.12035286 3.93462992 -0.96153849 1.8336333 3.094697475 -0.96153849 2.042112589 2.011264801 -0.96153849
		 1.58713913 1.012028456 -0.96153849 0.68604249 0.37158078 -0.96153849 -0.37579298 0.065297678 -0.96153849
		 -1.4706763 0.20058155 -0.96153849 -2.29234815 0.93481994 -0.96153849 -2.69103599 1.96518898 -0.96153849
		 -2.69247508 3.070874691 -0.96153849 -1.93503511 4.27023745 -0.96153849 -0.63736671 4.87326717 -0.96153849
		 -0.62425464 4.82053137 -0.96153849 -1.90123701 4.22768545 -0.96153849 -2.63933158 3.059528351 -0.96153849
		 -2.63763976 1.97527909 -0.96153849 -2.24659014 0.96413153 -0.96153849 -1.44878364 0.25031772 -0.96153849
		 -0.38180444 0.11930542 -0.96153849 0.66284823 0.42072344 -0.96153849 1.54721105 1.048889279 -0.96153849
		 1.98798335 2.016060591 -0.96153849 1.78445268 3.071583271 -0.96153849 1.093307376 3.88749671 -0.96153849
		 0.060219198 3.89531612 -0.96153849 -0.9670108 3.39018679 -0.95146239;
	setAttr ".vt[166:279]" -0.99101871 3.43893719 -0.95146239 0.040754795 3.9460516 -0.96153849
		 1.12035286 3.93462992 0.1373625 1.8336333 3.094697475 0.1373625 2.042112589 2.011264801 0.1373625
		 1.58713913 1.012028456 0.1373625 0.68604249 0.37158078 0.1373625 -0.37579298 0.065297678 0.1373625
		 -1.4706763 0.20058155 0.1373625 -2.29234815 0.93481994 0.1373625 -2.69103599 1.96518898 0.1373625
		 -2.69247508 3.070874691 0.1373625 -1.93503511 4.27023745 0.1373625 -1.26283789 4.62997961 0.1373625
		 -1.2497257 4.5772438 0.1373625 -1.90123701 4.22768545 0.1373625 -2.63933158 3.059528351 0.1373625
		 -2.63763976 1.97527909 0.1373625 -2.24659014 0.96413153 0.1373625 -1.44878364 0.25031772 0.1373625
		 -0.38180444 0.11930542 0.1373625 0.66284823 0.42072344 0.1373625 1.54721105 1.048889279 0.1373625
		 1.98798335 2.016060591 0.1373625 1.78445268 3.071583271 0.1373625 1.093307376 3.88749671 0.1373625
		 0.060219198 3.89531612 0.1373625 -0.87196809 3.43695045 0.18263 -0.89597601 3.48570085 0.18263
		 0.040754795 3.9460516 0.1373625 1.12035286 3.93462992 -0.13736275 1.8336333 3.094697475 -0.13736275
		 2.042112589 2.011264801 -0.13736275 1.58713913 1.012028456 -0.13736275 0.68604249 0.37158078 -0.13736275
		 -0.37579298 0.065297678 -0.13736275 -1.4706763 0.20058155 -0.13736275 -2.29234815 0.93481994 -0.13736275
		 -2.69103599 1.96518898 -0.13736275 -2.69247508 3.070874691 -0.13736275 -1.93503511 4.27023745 -0.13736275
		 -0.63736671 4.87326717 -0.13736275 -0.62425464 4.82053137 -0.13736275 -1.90123701 4.22768545 -0.13736275
		 -2.63933158 3.059528351 -0.13736275 -2.63763976 1.97527909 -0.13736275 -2.24659014 0.96413153 -0.13736275
		 -1.44878364 0.25031772 -0.13736275 -0.38180444 0.11930542 -0.13736275 0.66284823 0.42072344 -0.13736275
		 1.54721105 1.048889279 -0.13736275 1.98798335 2.016060591 -0.13736275 1.78445268 3.071583271 -0.13736275
		 1.093307376 3.88749671 -0.13736275 0.060219198 3.89531612 -0.13736275 -0.21029466 3.7625165 -0.13736275
		 -0.23430258 3.8112669 -0.13736275 0.040754795 3.9460516 -0.13736275 1.12035286 3.93462992 0.96153837
		 1.8336333 3.094697475 0.96153837 2.042112589 2.011264801 0.96153837 1.58713913 1.012028456 0.96153837
		 0.68604249 0.37158078 0.96153837 -0.37579298 0.065297678 0.96153837 -1.4706763 0.20058155 0.96153837
		 -2.29234815 0.93481994 0.96153837 -2.69103599 1.96518898 0.96153837 -2.69247508 3.070874691 0.96153837
		 -1.93503511 4.27023745 0.96153837 -0.63736671 4.87326717 0.96153837 -0.62425464 4.82053137 0.96153837
		 -1.90123701 4.22768545 0.96153837 -2.63933158 3.059528351 0.96153837 -2.63763976 1.97527909 0.96153837
		 -2.24659014 0.96413153 0.96153837 -1.44878364 0.25031772 0.96153837 -0.38180444 0.11930542 0.96153837
		 0.66284823 0.42072344 0.96153837 1.54721105 1.048889279 0.96153837 1.98798335 2.016060591 0.96153837
		 1.78445268 3.071583271 0.96153837 1.093307376 3.88749671 0.96153837 0.060219198 3.89531612 0.96153837
		 -1.041581631 3.40925097 0.98303586 -1.065589547 3.45800138 0.98303586 0.040754795 3.9460516 0.96153837
		 1.12035286 3.93462992 0.68681312 1.8336333 3.094697475 0.68681312 2.042112589 2.011264801 0.68681312
		 1.58713913 1.012028456 0.68681312 0.68604249 0.37158078 0.68681312 -0.37579298 0.065297678 0.68681312
		 -1.4706763 0.20058155 0.68681312 -2.29234815 0.93481994 0.68681312 -2.69103599 1.96518898 0.68681312
		 -2.69247508 3.070874691 0.68681312 -1.93503511 4.27023745 0.68681312 -0.41683421 4.95109463 0.68681312
		 -0.40372211 4.89835882 0.68681312 -1.90123701 4.22768545 0.68681312 -2.63933158 3.059528351 0.68681312
		 -2.63763976 1.97527909 0.68681312 -2.24659014 0.96413153 0.68681312 -1.44878364 0.25031772 0.68681312
		 -0.38180444 0.11930542 0.68681312 0.66284823 0.42072344 0.68681312 1.54721105 1.048889279 0.68681312
		 1.98798335 2.016060591 0.68681312 1.78445268 3.071583271 0.68681312 1.093307376 3.88749671 0.68681312
		 0.060219198 3.89531612 0.68681312 -0.68347853 3.52969551 0.68681312 -0.70748645 3.57844591 0.68681312
		 0.040754795 3.9460516 0.68681312;
	setAttr -s 556 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 5 0 5 4 1 4 0 0 1 152 0 2 6 0 6 237 1 2 3 0
		 3 7 0 7 6 1 3 235 0 4 150 1 5 9 0 9 8 1 8 4 0 6 10 0 10 238 1 7 11 0 11 10 1 8 149 1
		 9 13 0 13 12 1 12 8 0 10 14 0 14 239 1 11 15 0 15 14 1 12 148 1 13 17 0 17 16 1 16 12 0
		 14 18 0 18 240 1 15 19 0 19 18 1 16 147 1 17 21 0 21 20 1 20 16 0 18 22 0 22 241 1
		 19 23 0 23 22 1 20 146 1 21 25 0 25 24 1 24 20 0 22 26 0 26 242 1 23 27 0 27 26 1
		 24 145 1 25 29 0 29 28 1 28 24 0 26 30 0 30 243 1 27 31 0 31 30 1 28 144 1 29 33 0
		 33 32 1 32 28 0 30 34 0 34 244 1 31 35 0 35 34 1 32 143 1 33 37 0 37 36 1 36 32 0
		 34 38 0 38 245 1 35 39 0 39 38 1 36 142 1 37 41 0 41 40 1 40 36 0 38 42 0 42 246 1
		 39 43 0 43 42 1 40 141 1 41 45 0 45 44 1 44 40 0 42 46 0 46 247 1 43 47 0 47 46 1
		 44 140 1 45 49 0 49 48 1 48 44 0 46 50 0 50 248 1 47 51 0 51 50 1 48 167 1 49 53 0
		 53 52 0 52 48 0 50 54 0 54 249 0 51 55 0 55 54 0 52 166 0 56 252 1 57 253 1 56 57 1
		 58 254 1 57 58 1 59 255 1 58 59 1 60 256 1 59 60 1 61 257 1 60 61 1 62 258 1 61 62 1
		 63 259 1 62 63 1 64 260 1 63 64 1 65 261 1 64 65 1 66 262 1 65 66 1 67 179 0 66 67 1
		 68 264 0 67 68 1 69 181 1 68 69 1 70 182 1 69 70 1 71 183 1 70 71 1 72 184 1 71 72 1
		 73 185 1 72 73 1 74 186 1 73 74 1 75 187 1 74 75 1 76 188 1 75 76 1 77 189 1 76 77 1
		 78 190 1 77 78 1 79 191 1 78 79 1 80 192 1 79 80 1 81 193 0 80 81 1 82 278 0 81 82 1
		 83 279 1 82 83 1 83 56 1 84 196 1 85 197 1;
	setAttr ".ed[166:331]" 84 85 1 86 198 1 85 86 1 87 199 1 86 87 1 88 200 1 87 88 1
		 89 201 1 88 89 1 90 202 1 89 90 1 91 203 1 90 91 1 92 204 1 91 92 1 93 205 1 92 93 1
		 94 206 1 93 94 1 95 123 0 94 95 1 96 208 0 95 96 1 97 125 1 96 97 1 98 126 1 97 98 1
		 99 127 1 98 99 1 100 128 1 99 100 1 101 129 1 100 101 1 102 130 1 101 102 1 103 131 1
		 102 103 1 104 132 1 103 104 1 105 133 1 104 105 1 106 134 1 105 106 1 107 135 1 106 107 1
		 108 136 1 107 108 1 109 137 0 108 109 1 110 222 0 109 110 1 111 223 1 110 111 1 111 84 1
		 112 84 1 113 85 1 112 113 1 114 86 1 113 114 1 115 87 1 114 115 1 116 88 1 115 116 1
		 117 89 1 116 117 1 118 90 1 117 118 1 119 91 1 118 119 1 120 92 1 119 120 1 121 93 1
		 120 121 1 122 94 1 121 122 1 123 151 0 122 123 1 124 96 0 123 124 1 125 153 1 124 125 1
		 126 154 1 125 126 1 127 155 1 126 127 1 128 156 1 127 128 1 129 157 1 128 129 1 130 158 1
		 129 130 1 131 159 1 130 131 1 132 160 1 131 132 1 133 161 1 132 133 1 134 162 1 133 134 1
		 135 163 1 134 135 1 136 164 1 135 136 1 137 165 0 136 137 1 138 110 0 137 138 1 139 111 1
		 138 139 1 139 112 1 140 112 1 141 113 1 140 141 1 142 114 1 141 142 1 143 115 1 142 143 1
		 144 116 1 143 144 1 145 117 1 144 145 1 146 118 1 145 146 1 147 119 1 146 147 1 148 120 1
		 147 148 1 149 121 1 148 149 1 150 122 1 149 150 1 151 0 0 150 151 1 152 124 0 151 152 1
		 153 5 1 152 153 1 154 9 1 153 154 1 155 13 1 154 155 1 156 17 1 155 156 1 157 21 1
		 156 157 1 158 25 1 157 158 1 159 29 1 158 159 1 160 33 1 159 160 1 161 37 1 160 161 1
		 162 41 1 161 162 1 163 45 1 162 163 1 164 49 1 163 164 1 165 53 0 164 165 1 166 138 0
		 165 166 1 167 139 1 166 167 1 167 140 1;
	setAttr ".ed[332:497]" 168 56 1 169 57 1 168 169 1 170 58 1 169 170 1 171 59 1
		 170 171 1 172 60 1 171 172 1 173 61 1 172 173 1 174 62 1 173 174 1 175 63 1 174 175 1
		 176 64 1 175 176 1 177 65 1 176 177 1 178 66 1 177 178 1 179 207 0 178 179 1 180 68 0
		 179 180 1 181 209 1 180 181 1 182 210 1 181 182 1 183 211 1 182 183 1 184 212 1 183 184 1
		 185 213 1 184 185 1 186 214 1 185 186 1 187 215 1 186 187 1 188 216 1 187 188 1 189 217 1
		 188 189 1 190 218 1 189 190 1 191 219 1 190 191 1 192 220 1 191 192 1 193 221 0 192 193 1
		 194 82 0 193 194 1 195 83 1 194 195 1 195 168 1 196 168 1 197 169 1 196 197 1 198 170 1
		 197 198 1 199 171 1 198 199 1 200 172 1 199 200 1 201 173 1 200 201 1 202 174 1 201 202 1
		 203 175 1 202 203 1 204 176 1 203 204 1 205 177 1 204 205 1 206 178 1 205 206 1 207 95 0
		 206 207 1 208 180 0 207 208 1 209 97 1 208 209 1 210 98 1 209 210 1 211 99 1 210 211 1
		 212 100 1 211 212 1 213 101 1 212 213 1 214 102 1 213 214 1 215 103 1 214 215 1 216 104 1
		 215 216 1 217 105 1 216 217 1 218 106 1 217 218 1 219 107 1 218 219 1 220 108 1 219 220 1
		 221 109 0 220 221 1 222 194 0 221 222 1 223 195 1 222 223 1 223 196 1 224 47 1 225 43 1
		 224 225 1 226 39 1 225 226 1 227 35 1 226 227 1 228 31 1 227 228 1 229 27 1 228 229 1
		 230 23 1 229 230 1 231 19 1 230 231 1 232 15 1 231 232 1 233 11 1 232 233 1 234 7 1
		 233 234 1 235 263 0 234 235 1 236 2 0 235 236 1 237 265 1 236 237 1 238 266 1 237 238 1
		 239 267 1 238 239 1 240 268 1 239 240 1 241 269 1 240 241 1 242 270 1 241 242 1 243 271 1
		 242 243 1 244 272 1 243 244 1 245 273 1 244 245 1 246 274 1 245 246 1 247 275 1 246 247 1
		 248 276 1 247 248 1 249 277 0 248 249 1 250 55 0 249 250 1 251 51 1;
	setAttr ".ed[498:555]" 250 251 1 251 224 1 252 224 1 253 225 1 252 253 1 254 226 1
		 253 254 1 255 227 1 254 255 1 256 228 1 255 256 1 257 229 1 256 257 1 258 230 1 257 258 1
		 259 231 1 258 259 1 260 232 1 259 260 1 261 233 1 260 261 1 262 234 1 261 262 1 263 67 0
		 262 263 1 264 236 0 263 264 1 265 69 1 264 265 1 266 70 1 265 266 1 267 71 1 266 267 1
		 268 72 1 267 268 1 269 73 1 268 269 1 270 74 1 269 270 1 271 75 1 270 271 1 272 76 1
		 271 272 1 273 77 1 272 273 1 274 78 1 273 274 1 275 79 1 274 275 1 276 80 1 275 276 1
		 277 81 0 276 277 1 278 250 0 277 278 1 279 251 1 278 279 1 279 252 1;
	setAttr -s 278 -ch 1112 ".fc[0:277]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 314 315 316 317
		f 4 4 302 301 -2
		mu 0 4 234 235 5 4
		f 4 7 8 9 -6
		mu 0 4 342 343 344 345
		f 4 297 -4 11 298
		mu 0 4 244 245 55 54
		f 4 -3 12 13 14
		mu 0 4 317 316 318 319
		f 4 -302 304 303 -13
		mu 0 4 4 5 1 0
		f 4 -10 17 18 -16
		mu 0 4 345 344 346 347
		f 4 -12 -15 19 296
		mu 0 4 54 55 51 50
		f 4 -14 20 21 22
		mu 0 4 319 318 320 321
		f 4 -304 306 305 -21
		mu 0 4 0 1 2 3
		f 4 -19 25 26 -24
		mu 0 4 347 346 348 349
		f 4 -20 -23 27 294
		mu 0 4 50 51 52 53
		f 4 -22 28 29 30
		mu 0 4 321 320 322 323
		f 4 -306 308 307 -29
		mu 0 4 3 2 8 9
		f 4 -27 33 34 -32
		mu 0 4 349 348 350 351
		f 4 -28 -31 35 292
		mu 0 4 53 52 56 57
		f 4 -30 36 37 38
		mu 0 4 323 322 324 325
		f 4 -308 310 309 -37
		mu 0 4 9 8 14 15
		f 4 -35 41 42 -40
		mu 0 4 351 350 352 353
		f 4 -36 -39 43 290
		mu 0 4 57 56 61 62
		f 4 -38 44 45 46
		mu 0 4 325 324 326 327
		f 4 -310 312 311 -45
		mu 0 4 15 14 254 255
		f 4 -43 49 50 -48
		mu 0 4 353 352 354 355
		f 4 -44 -47 51 288
		mu 0 4 62 61 264 265
		f 4 -46 52 53 54
		mu 0 4 327 326 328 329
		f 4 -312 314 313 -53
		mu 0 4 255 254 105 104
		f 4 -51 57 58 -56
		mu 0 4 355 354 356 357
		f 4 -52 -55 59 286
		mu 0 4 265 264 155 154
		f 4 -54 60 61 62
		mu 0 4 329 328 330 331
		f 4 -314 316 315 -61
		mu 0 4 104 105 101 100
		f 4 -59 65 66 -64
		mu 0 4 357 356 358 359
		f 4 -60 -63 67 284
		mu 0 4 154 155 151 150
		f 4 -62 68 69 70
		mu 0 4 331 330 332 333
		f 4 -316 318 317 -69
		mu 0 4 100 101 102 103
		f 4 -67 73 74 -72
		mu 0 4 359 358 360 361
		f 4 -68 -71 75 282
		mu 0 4 150 151 152 153
		f 4 -70 76 77 78
		mu 0 4 333 332 334 335
		f 4 -318 320 319 -77
		mu 0 4 103 102 108 109
		f 4 -75 81 82 -80
		mu 0 4 361 360 362 363
		f 4 -76 -79 83 280
		mu 0 4 153 152 156 157
		f 4 -78 84 85 86
		mu 0 4 335 334 336 337
		f 4 -320 322 321 -85
		mu 0 4 109 108 114 115
		f 4 -83 89 90 -88
		mu 0 4 363 362 364 365
		f 4 -84 -87 91 278
		mu 0 4 157 156 161 162
		f 4 -86 92 93 94
		mu 0 4 337 336 338 339
		f 4 -322 324 323 -93
		mu 0 4 115 114 274 275
		f 4 -91 97 98 -96
		mu 0 4 365 364 366 367
		f 4 331 -92 -95 99
		mu 0 4 294 162 161 295
		f 4 -94 100 101 102
		mu 0 4 339 338 340 341
		f 4 -324 326 325 -101
		mu 0 4 275 274 277 278
		f 4 -99 105 106 -104
		mu 0 4 367 366 368 369
		f 4 -100 -103 107 330
		mu 0 4 294 295 297 298
		f 4 300 -5 -1 -298
		mu 0 4 200 201 202 203
		f 4 -102 -326 328 -108
		mu 0 4 204 205 206 207
		f 4 -110 -111 108 502
		mu 0 4 188 183 187 192
		f 4 -112 -113 109 504
		mu 0 4 185 180 183 188
		f 4 -114 -115 111 506
		mu 0 4 184 179 180 185
		f 4 -116 -117 113 508
		mu 0 4 186 181 179 184
		f 4 -118 -119 115 510
		mu 0 4 271 270 181 186
		f 4 -120 -121 117 512
		mu 0 4 92 87 270 271
		f 4 -122 -123 119 514
		mu 0 4 88 83 87 92
		f 4 -124 -125 121 516
		mu 0 4 85 80 83 88
		f 4 -126 -127 123 518
		mu 0 4 84 79 80 85
		f 4 -128 -129 125 520
		mu 0 4 86 81 79 84
		f 4 521 -131 127 522
		mu 0 4 251 250 81 86
		f 4 524 -132 -133 -522
		mu 0 4 231 230 232 233
		f 4 -135 131 526 525
		mu 0 4 31 240 241 36
		f 4 -137 -526 528 527
		mu 0 4 27 31 36 32
		f 4 -139 -528 530 529
		mu 0 4 28 27 32 33
		f 4 -141 -530 532 531
		mu 0 4 34 28 33 39
		f 4 -143 -532 534 533
		mu 0 4 40 34 39 45
		f 4 -145 -534 536 535
		mu 0 4 260 40 45 261
		f 4 -147 -536 538 537
		mu 0 4 131 260 261 136
		f 4 -149 -538 540 539
		mu 0 4 127 131 136 132
		f 4 -151 -540 542 541
		mu 0 4 128 127 132 133
		f 4 -153 -542 544 543
		mu 0 4 134 128 133 139
		f 4 -155 -544 546 545
		mu 0 4 140 134 139 145
		f 4 -157 -546 548 547
		mu 0 4 285 140 145 287
		f 4 -159 -548 550 549
		mu 0 4 288 285 287 290
		f 4 -161 -550 552 -160
		mu 0 4 219 218 220 221
		f 4 -162 -163 159 554
		mu 0 4 307 305 308 310
		f 4 555 -109 -164 161
		mu 0 4 307 192 187 305
		f 4 -166 -167 164 390
		mu 0 4 173 168 172 177
		f 4 -168 -169 165 392
		mu 0 4 170 165 168 173
		f 4 -170 -171 167 394
		mu 0 4 169 164 165 170
		f 4 -172 -173 169 396
		mu 0 4 171 166 164 169
		f 4 -174 -175 171 398
		mu 0 4 268 267 166 171
		f 4 -176 -177 173 400
		mu 0 4 77 72 267 268
		f 4 -178 -179 175 402
		mu 0 4 73 68 72 77
		f 4 -180 -181 177 404
		mu 0 4 70 65 68 73
		f 4 -182 -183 179 406
		mu 0 4 69 64 65 70
		f 4 -184 -185 181 408
		mu 0 4 71 66 64 69
		f 4 409 -187 183 410
		mu 0 4 248 247 66 71
		f 4 412 -188 -189 -410
		mu 0 4 212 213 214 215
		f 4 -191 187 414 413
		mu 0 4 16 237 238 21
		f 4 -193 -414 416 415
		mu 0 4 11 16 21 17
		f 4 -195 -416 418 417
		mu 0 4 12 11 17 18
		f 4 -197 -418 420 419
		mu 0 4 19 12 18 24
		f 4 -199 -420 422 421
		mu 0 4 25 19 24 30
		f 4 -201 -422 424 423
		mu 0 4 257 25 30 258
		f 4 -203 -424 426 425
		mu 0 4 116 257 258 121
		f 4 -205 -426 428 427
		mu 0 4 111 116 121 117
		f 4 -207 -428 430 429
		mu 0 4 112 111 117 118
		f 4 -209 -430 432 431
		mu 0 4 119 112 118 124
		f 4 -211 -432 434 433
		mu 0 4 125 119 124 130
		f 4 -213 -434 436 435
		mu 0 4 279 125 130 281
		f 4 -215 -436 438 437
		mu 0 4 282 279 281 284
		f 4 -217 -438 440 -216
		mu 0 4 211 210 370 371
		f 4 -218 -219 215 442
		mu 0 4 301 299 302 304
		f 4 443 -165 -220 217
		mu 0 4 301 177 172 299
		f 4 -222 -223 220 166
		mu 0 4 168 163 167 172
		f 4 -224 -225 221 168
		mu 0 4 165 159 163 168
		f 4 -226 -227 223 170
		mu 0 4 164 158 159 165
		f 4 -228 -229 225 172
		mu 0 4 166 160 158 164
		f 4 -230 -231 227 174
		mu 0 4 267 266 160 166
		f 4 -232 -233 229 176
		mu 0 4 72 67 266 267
		f 4 -234 -235 231 178
		mu 0 4 68 63 67 72
		f 4 -236 -237 233 180
		mu 0 4 65 59 63 68
		f 4 -238 -239 235 182
		mu 0 4 64 58 59 65
		f 4 -240 -241 237 184
		mu 0 4 66 60 58 64
		f 4 185 -243 239 186
		mu 0 4 247 246 60 66
		f 4 188 -244 -245 -186
		mu 0 4 215 214 372 373
		f 4 -247 243 190 189
		mu 0 4 10 236 237 16
		f 4 -249 -190 192 191
		mu 0 4 6 10 16 11
		f 4 -251 -192 194 193
		mu 0 4 7 6 11 12
		f 4 -253 -194 196 195
		mu 0 4 13 7 12 19
		f 4 -255 -196 198 197
		mu 0 4 20 13 19 25
		f 4 -257 -198 200 199
		mu 0 4 256 20 25 257
		f 4 -259 -200 202 201
		mu 0 4 110 256 257 116
		f 4 -261 -202 204 203
		mu 0 4 106 110 116 111
		f 4 -263 -204 206 205
		mu 0 4 107 106 111 112
		f 4 -265 -206 208 207
		mu 0 4 113 107 112 119
		f 4 -267 -208 210 209
		mu 0 4 120 113 119 125
		f 4 -269 -210 212 211
		mu 0 4 276 120 125 279
		f 4 -271 -212 214 213
		mu 0 4 280 276 279 282
		f 4 -273 -214 216 -272
		mu 0 4 209 208 210 211
		f 4 -274 -275 271 218
		mu 0 4 299 296 300 302
		f 4 219 -221 -276 273
		mu 0 4 299 172 167 296
		f 4 -278 -279 276 222
		mu 0 4 163 157 162 167
		f 4 -280 -281 277 224
		mu 0 4 159 153 157 163
		f 4 -282 -283 279 226
		mu 0 4 158 150 153 159
		f 4 -284 -285 281 228
		mu 0 4 160 154 150 158
		f 4 -286 -287 283 230
		mu 0 4 266 265 154 160
		f 4 -288 -289 285 232
		mu 0 4 67 62 265 266
		f 4 -290 -291 287 234
		mu 0 4 63 57 62 67
		f 4 -292 -293 289 236
		mu 0 4 59 53 57 63
		f 4 -294 -295 291 238
		mu 0 4 58 50 53 59
		f 4 -296 -297 293 240
		mu 0 4 60 54 50 58
		f 4 241 -299 295 242
		mu 0 4 246 244 54 60
		f 4 244 -300 -301 -242
		mu 0 4 373 372 201 200
		f 4 -303 299 246 245
		mu 0 4 5 235 236 10
		f 4 -305 -246 248 247
		mu 0 4 1 5 10 6
		f 4 -307 -248 250 249
		mu 0 4 2 1 6 7
		f 4 -309 -250 252 251
		mu 0 4 8 2 7 13
		f 4 -311 -252 254 253
		mu 0 4 14 8 13 20
		f 4 -313 -254 256 255
		mu 0 4 254 14 20 256
		f 4 -315 -256 258 257
		mu 0 4 105 254 256 110
		f 4 -317 -258 260 259
		mu 0 4 101 105 110 106
		f 4 -319 -260 262 261
		mu 0 4 102 101 106 107
		f 4 -321 -262 264 263
		mu 0 4 108 102 107 113
		f 4 -323 -264 266 265
		mu 0 4 114 108 113 120
		f 4 -325 -266 268 267
		mu 0 4 274 114 120 276
		f 4 -327 -268 270 269
		mu 0 4 277 274 276 280
		f 4 -329 -270 272 -328
		mu 0 4 207 206 208 209
		f 4 -330 -331 327 274
		mu 0 4 296 294 298 300
		f 4 275 -277 -332 329
		mu 0 4 296 167 162 294
		f 4 -334 -335 332 110
		mu 0 4 183 178 182 187
		f 4 -336 -337 333 112
		mu 0 4 180 175 178 183
		f 4 -338 -339 335 114
		mu 0 4 179 174 175 180
		f 4 -340 -341 337 116
		mu 0 4 181 176 174 179
		f 4 -342 -343 339 118
		mu 0 4 270 269 176 181
		f 4 -344 -345 341 120
		mu 0 4 87 82 269 270
		f 4 -346 -347 343 122
		mu 0 4 83 78 82 87
		f 4 -348 -349 345 124
		mu 0 4 80 75 78 83
		f 4 -350 -351 347 126
		mu 0 4 79 74 75 80
		f 4 -352 -353 349 128
		mu 0 4 81 76 74 79
		f 4 129 -355 351 130
		mu 0 4 250 249 76 81
		f 4 132 -356 -357 -130
		mu 0 4 233 232 374 375
		f 4 -359 355 134 133
		mu 0 4 26 239 240 31
		f 4 -361 -134 136 135
		mu 0 4 22 26 31 27
		f 4 -363 -136 138 137
		mu 0 4 23 22 27 28
		f 4 -365 -138 140 139
		mu 0 4 29 23 28 34
		f 4 -367 -140 142 141
		mu 0 4 35 29 34 40
		f 4 -369 -142 144 143
		mu 0 4 259 35 40 260
		f 4 -371 -144 146 145
		mu 0 4 126 259 260 131
		f 4 -373 -146 148 147
		mu 0 4 122 126 131 127
		f 4 -375 -148 150 149
		mu 0 4 123 122 127 128
		f 4 -377 -150 152 151
		mu 0 4 129 123 128 134
		f 4 -379 -152 154 153
		mu 0 4 135 129 134 140
		f 4 -381 -154 156 155
		mu 0 4 283 135 140 285
		f 4 -383 -156 158 157
		mu 0 4 286 283 285 288
		f 4 -385 -158 160 -384
		mu 0 4 216 217 218 219
		f 4 -386 -387 383 162
		mu 0 4 305 303 306 308
		f 4 163 -333 -388 385
		mu 0 4 305 187 182 303
		f 4 -390 -391 388 334
		mu 0 4 178 173 177 182
		f 4 -392 -393 389 336
		mu 0 4 175 170 173 178
		f 4 -394 -395 391 338
		mu 0 4 174 169 170 175
		f 4 -396 -397 393 340
		mu 0 4 176 171 169 174
		f 4 -398 -399 395 342
		mu 0 4 269 268 171 176
		f 4 -400 -401 397 344
		mu 0 4 82 77 268 269
		f 4 -402 -403 399 346
		mu 0 4 78 73 77 82
		f 4 -404 -405 401 348
		mu 0 4 75 70 73 78
		f 4 -406 -407 403 350
		mu 0 4 74 69 70 75
		f 4 -408 -409 405 352
		mu 0 4 76 71 69 74
		f 4 353 -411 407 354
		mu 0 4 249 248 71 76
		f 4 356 -412 -413 -354
		mu 0 4 375 374 213 212
		f 4 -415 411 358 357
		mu 0 4 21 238 239 26
		f 4 -417 -358 360 359
		mu 0 4 17 21 26 22
		f 4 -419 -360 362 361
		mu 0 4 18 17 22 23
		f 4 -421 -362 364 363
		mu 0 4 24 18 23 29
		f 4 -423 -364 366 365
		mu 0 4 30 24 29 35
		f 4 -425 -366 368 367
		mu 0 4 258 30 35 259
		f 4 -427 -368 370 369
		mu 0 4 121 258 259 126
		f 4 -429 -370 372 371
		mu 0 4 117 121 126 122
		f 4 -431 -372 374 373
		mu 0 4 118 117 122 123
		f 4 -433 -374 376 375
		mu 0 4 124 118 123 129
		f 4 -435 -376 378 377
		mu 0 4 130 124 129 135
		f 4 -437 -378 380 379
		mu 0 4 281 130 135 283
		f 4 -439 -380 382 381
		mu 0 4 284 281 283 286
		f 4 -441 -382 384 -440
		mu 0 4 371 370 217 216
		f 4 -442 -443 439 386
		mu 0 4 303 301 304 306
		f 4 387 -389 -444 441
		mu 0 4 303 182 177 301
		f 4 -446 -447 444 -90
		mu 0 4 198 193 197 199
		f 4 -448 -449 445 -82
		mu 0 4 195 190 193 198
		f 4 -450 -451 447 -74
		mu 0 4 194 189 190 195
		f 4 -452 -453 449 -66
		mu 0 4 196 191 189 194
		f 4 -454 -455 451 -58
		mu 0 4 273 272 191 196
		f 4 -456 -457 453 -50
		mu 0 4 99 97 272 273
		f 4 -458 -459 455 -42
		mu 0 4 98 93 97 99
		f 4 -460 -461 457 -34
		mu 0 4 95 90 93 98
		f 4 -462 -463 459 -26
		mu 0 4 94 89 90 95
		f 4 -464 -465 461 -18
		mu 0 4 96 91 89 94
		f 4 10 -467 463 -9
		mu 0 4 253 252 91 96
		f 4 -8 -468 -469 -11
		mu 0 4 226 227 228 229
		f 4 -471 467 5 6
		mu 0 4 41 242 243 46
		f 4 -473 -7 15 16
		mu 0 4 37 41 46 42
		f 4 -475 -17 23 24
		mu 0 4 38 37 42 43
		f 4 -477 -25 31 32
		mu 0 4 44 38 43 47
		f 4 -479 -33 39 40
		mu 0 4 48 44 47 49
		f 4 -481 -41 47 48
		mu 0 4 262 48 49 263
		f 4 -483 -49 55 56
		mu 0 4 141 262 263 146
		f 4 -485 -57 63 64
		mu 0 4 137 141 146 142
		f 4 -487 -65 71 72
		mu 0 4 138 137 142 143
		f 4 -489 -73 79 80
		mu 0 4 144 138 143 147
		f 4 -491 -81 87 88
		mu 0 4 148 144 147 149
		f 4 -493 -89 95 96
		mu 0 4 289 148 149 291
		f 4 -495 -97 103 104
		mu 0 4 292 289 291 293
		f 4 -497 -105 -107 -496
		mu 0 4 223 222 224 225
		f 4 -498 -499 495 -106
		mu 0 4 311 309 312 313
		f 4 -445 -500 497 -98
		mu 0 4 199 197 309 311
		f 4 -502 -503 500 446
		mu 0 4 193 188 192 197
		f 4 -504 -505 501 448
		mu 0 4 190 185 188 193
		f 4 -506 -507 503 450
		mu 0 4 189 184 185 190
		f 4 -508 -509 505 452
		mu 0 4 191 186 184 189
		f 4 -510 -511 507 454
		mu 0 4 272 271 186 191
		f 4 -512 -513 509 456
		mu 0 4 97 92 271 272
		f 4 -514 -515 511 458
		mu 0 4 93 88 92 97
		f 4 -516 -517 513 460
		mu 0 4 90 85 88 93
		f 4 -518 -519 515 462
		mu 0 4 89 84 85 90
		f 4 -520 -521 517 464
		mu 0 4 91 86 84 89
		f 4 465 -523 519 466
		mu 0 4 252 251 86 91
		f 4 468 -524 -525 -466
		mu 0 4 229 228 230 231
		f 4 -527 523 470 469
		mu 0 4 36 241 242 41
		f 4 -529 -470 472 471
		mu 0 4 32 36 41 37
		f 4 -531 -472 474 473
		mu 0 4 33 32 37 38
		f 4 -533 -474 476 475
		mu 0 4 39 33 38 44
		f 4 -535 -476 478 477
		mu 0 4 45 39 44 48
		f 4 -537 -478 480 479
		mu 0 4 261 45 48 262
		f 4 -539 -480 482 481
		mu 0 4 136 261 262 141
		f 4 -541 -482 484 483
		mu 0 4 132 136 141 137
		f 4 -543 -484 486 485
		mu 0 4 133 132 137 138
		f 4 -545 -486 488 487
		mu 0 4 139 133 138 144
		f 4 -547 -488 490 489
		mu 0 4 145 139 144 148
		f 4 -549 -490 492 491
		mu 0 4 287 145 148 289
		f 4 -551 -492 494 493
		mu 0 4 290 287 289 292
		f 4 -553 -494 496 -552
		mu 0 4 221 220 222 223
		f 4 -554 -555 551 498
		mu 0 4 309 307 310 312
		f 4 499 -501 -556 553
		mu 0 4 309 197 192 307;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 98 
		4 0 
		5 0 
		10 0 
		14 0 
		15 0 
		16 0 
		20 0 
		21 0 
		25 0 
		26 0 
		30 0 
		31 0 
		35 0 
		36 0 
		40 0 
		41 0 
		45 0 
		46 0 
		48 0 
		49 0 
		54 0 
		55 0 
		60 0 
		61 0 
		62 0 
		66 0 
		67 0 
		71 0 
		72 0 
		76 0 
		77 0 
		81 0 
		82 0 
		86 0 
		87 0 
		91 0 
		92 0 
		96 0 
		97 0 
		99 0 
		104 0 
		105 0 
		110 0 
		114 0 
		115 0 
		116 0 
		120 0 
		121 0 
		125 0 
		126 0 
		130 0 
		131 0 
		135 0 
		136 0 
		140 0 
		141 0 
		145 0 
		146 0 
		148 0 
		149 0 
		154 0 
		155 0 
		160 0 
		161 0 
		162 0 
		166 0 
		167 0 
		171 0 
		172 0 
		176 0 
		177 0 
		181 0 
		182 0 
		186 0 
		187 0 
		191 0 
		192 0 
		196 0 
		197 0 
		199 0 
		200 0 
		201 0 
		210 0 
		211 0 
		212 0 
		213 0 
		214 0 
		215 0 
		216 0 
		217 0 
		232 0 
		233 0 
		370 0 
		371 0 
		372 0 
		373 0 
		374 0 
		375 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 3;
	setAttr ".dsm" 2;
createNode transform -n "span_04" -p "spans";
	rename -uid "2D4D7E48-42DB-6D13-842C-789755E293C0";
	setAttr ".t" -type "double3" -7.7349645172978363 -1.3097921905362873 5.2582153901136888 ;
	setAttr ".r" -type "double3" -1.5001592189911368 0 0 ;
	setAttr ".s" -type "double3" 1.5898765352017281 1 0.60000001545564785 ;
createNode mesh -n "span_Shape4" -p "span_04";
	rename -uid "04B65EFD-4FAC-01A9-B4E7-2B9582CBEB72";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49999995529651642 0.4917331337928772 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 570 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.046187162 0.49834114 0.027336389
		 0.47168031 0.47486746 0.68772471 0.45103168 0.66786402 0.43336397 0.64088863 0.050477773
		 0.50339794 0.82030129 0.37415567 0.81437981 0.068601213 0.81918973 0.038519405 0.42783445
		 0.63269508 0.055422872 0.50913221 0.080557704 0.5330646 0.82056588 0.069544628 0.82535636
		 0.039581574 0.41901574 0.6189304 0.17618664 0.5729264 0.14223889 0.56563377 0.43205303
		 0.54453427 0.42180955 0.57329232 0.42006841 0.60533178 0.18410704 0.57386625 0.83928126
		 0.37156954 0.0079928339 0.51310527 0.037589848 0.52005535 0.065441817 0.53586853
		 0.1960018 0.57494307 0.84548497 0.37072739 0.83959275 0.072487339 0.84441608 0.042886928
		 0.072494507 0.53963184 0.04247034 0.33111441 0.85168719 0.36988443 0.84577197 0.073453359
		 0.8505792 0.043966763 0.07968694 0.54358423 0.04288568 0.33848453 0.046476211 0.36529809
		 0.13584054 0.58196056 0.1138683 0.56144971 0.08546412 0.54684085 0.067230381 0.42104971
		 0.049988627 0.37964946 0.14212739 0.59264535 0.13235402 0.63281101 0.11456889 0.65924823
		 0.07056278 0.42692196 0.87045628 0.36728469 0.86491323 0.076619655 0.86939973 0.047450762
		 0.10982141 0.66680163 0.076412216 0.43669146 0.092819542 0.45900875 0.070646912 0.71903908
		 0.091675133 0.69805318 0.10588822 0.67283696 0.73579383 0.0046931743 0.73006135 0.036899786
		 0.73804688 0.037878968 0.74178392 0.0075620404 0.71213263 0.34352571 0.71980208 0.34417915
		 0.71314305 0.37483978 0.71729064 0.37506405 0.71212065 0.40806419 0.72133178 0.41097572
		 0.74429548 0.03862647 0.74855822 0.0041592456 0.7260288 0.34483087 0.72366804 0.37523049
		 0.72415125 0.39497241 0.73223472 0.34559429 0.72854364 0.37542546 0.7307964 0.4067153
		 0.75414062 0.0051092124 0.7492013 0.039469309 0.75647217 0.040475491 0.76199186 0.003909451
		 0.76268882 0.041186769 0.76564622 0.015298974 0.75067586 0.34423494 0.75818247 0.34238148
		 0.7572636 0.37352186 0.76339138 0.37220868 0.76219946 0.40524691 0.76874262 0.40057248
		 0.76890343 0.041809201 0.77290386 0.0072937948 0.76442146 0.34126651 0.76954997 0.37109417
		 0.77586192 0.40460661 0.77730531 0.038722321 0.7786954 0.01182288 0.77070409 0.34052452
		 0.77785414 0.36983356 0.78161603 0.40141666 0.7804262 0.052973107 0.77322555 0.3289654
		 0.78625977 0.0084402459 0.78799826 0.043844201 0.79280651 0.006795574 0.78482974
		 0.33635488 0.79033834 0.36636707 0.79489303 0.36468768 0.79812735 0.39675936 0.80234176
		 0.38898522 0.79390818 0.044543948 0.79785568 0.017017286 0.79257298 0.33401686 0.80086344
		 0.36263043 0.80941248 0.39091384 0.81832874 0.40705743 0.027780831 0.47142044 0.82426167
		 0.40416956 0.47500938 0.68726891 0.45124155 0.66749889 0.43378955 0.64059889 0.42826229
		 0.6324088 0.82650465 0.37333709 0.055810675 0.50879359 0.41937202 0.61884707 0.82675189
		 0.070488967 0.83014506 0.04040657 0.42058161 0.60537285 0.83765948 0.40654615 0.14239278
		 0.56514239 0.84552538 0.40759444 0.84895706 0.39624286 0.0080888271 0.51356596 0.037585407
		 0.52046812 0.065200955 0.53632361 0.072250664 0.54008526 0.85636657 0.40401211 0.079434961
		 0.54403311 0.86014289 0.37259024 0.043399502 0.33845282 0.85880798 0.045408644 0.13540328
		 0.58211935 0.085210472 0.54728889 0.86281806 0.35816264 0.14166355 0.59276795 0.86888719
		 0.40225813 0.8754198 0.40382555 0.13195091 0.63279259 0.11412978 0.65897948 0.10938883
		 0.6665225 0.87630671 0.36647168 0.076848246 0.43641776 0.87280416 0.077889226 0.87557769
		 0.04848019 0.1054582 0.6725539 0.72247976 0.11288433 0.0069833398 0.36589241 0.014309108
		 0.34794343 0.022784948 0.334795 0.037116736 0.31964278 0.58993053 0.65474409 0.56381142
		 0.68036807 0.53122759 0.69427741 0.18329874 0.51358747 0.21523456 0.50959963 0.24447189
		 0.49346536 0.26577291 0.46756846 0.019128382 0.72922635 0.013111249 0.44002229 0.81235093
		 0.3137854 0.0044060349 0.39874557 0.80846298 0.28145775 0.0074877441 0.36599579 0.80556941
		 0.24709007 0.023224086 0.33506647 0.80417812 0.21126178 0.58948737 0.65448242 0.80448645
		 0.17525256 0.56349957 0.67995846 0.80638278 0.14041506 0.53107399 0.69378555 0.81017244
		 0.099717319 0.81579578 0.34000477 0.81911194 0.31288418 0.81042778 0.29834872 0.81469035
		 0.28085157 0.80698943 0.2659632 0.81181741 0.2467564 0.80476558 0.23154444 0.8104347
		 0.21122611 0.80410004 0.19569497 0.81073713 0.17551637 0.80513448 0.15970108 0.81261826
		 0.14095078 0.80766636 0.12491612 0.81638098 0.1004726 0.82442105 0.33886573 0.82477593
		 0.31214902 0.81662935 0.29750812 0.82091719 0.28024465 0.81321645 0.26535401 0.81806493
		 0.24642283 0.81101358 0.23120999 0.81669104 0.21119104 0.81035644 0.19565876 0.81698716
		 0.17578128 0.81138551 0.15996148 0.81885493 0.14147387 0.81390697 0.12543724 0.82256079
		 0.10475426 0.83028895 0.35208458 0.83099633 0.31129709 0.82283121 0.29666847 0.82714343
		 0.27963591 0.81944323 0.26474482 0.82431245 0.24608946 0.81726128 0.23087597 0.82294708
		 0.21115667 0.81661254 0.19562322 0.82323658 0.17604782 0.81763583 0.16022348 0.82508844
		 0.14205599 0.82023281 0.12596709 0.82731998 0.097033791 0.83468777 0.33744609 0.83720452
		 0.31044734 0.82903355 0.29584789 0.83336985 0.27902535 0.82566965 0.26413527 0.83055967
		 0.24575612 0.82350886 0.2305423 0.82920313 0.21112292 0.82286823 0.19558862 0.8294856
		 0.17631625 0.82388526 0.16048823 0.83132136 0.14258522 0.8259145 0.12644984 0.83538163
		 0.10284524 0.84087867 0.33659616 0.84341025 0.30960098 0.83523583 0.2950041 0.83959651
		 0.27841353 0.83189613 0.26352519 0.83680701 0.24542266 0.82975632 0.23020896 0.83545899
		 0.21108972 0.82912374 0.19555505 0.83573467 0.17658664 0.83013368 0.16075692 0.8375544
		 0.1431476 0.83266604 0.12706323 0.84158891 0.10364708 0.8470723 0.33574563 0.84961396
		 0.30875605 0.84143817 0.2941601;
	setAttr ".uvst[0].uvsp[250:499]" 0.84582317 0.27780101 0.83812255 0.26291469
		 0.84305447 0.24508923 0.83600384 0.22987586 0.84171498 0.21105722 0.83537924 0.19552249
		 0.84198385 0.17685872 0.83638215 0.16102944 0.8437869 0.14371306 0.83890563 0.12763339
		 0.84779984 0.10444876 0.8532685 0.3348946 0.85581583 0.30791095 0.84763998 0.29331633
		 0.85204995 0.27718809 0.84434927 0.26230389 0.84930217 0.24475583 0.8422513 0.22954303
		 0.84797126 0.2110251 0.84163487 0.19549088 0.84823358 0.1771321 0.84263086 0.16130482
		 0.85001862 0.144281 0.84514165 0.12820439 0.85401165 0.10528904 0.8594647 0.33403215
		 0.86201674 0.30706507 0.85384113 0.29247281 0.85827667 0.27657512 0.8505761 0.26169318
		 0.85555005 0.24442255 0.84849912 0.2292105 0.85422784 0.21099344 0.84789079 0.19546001
		 0.8544836 0.17740625 0.84887999 0.16158243 0.85624957 0.14485075 0.85137397 0.12877986
		 0.86022061 0.10613122 0.86566186 0.33316961 0.14005205 0.49770844 0.86004174 0.29162937
		 0.16791613 0.51042479 0.85680318 0.26108259 0.1998591 0.51257104 0.85474712 0.22887826
		 0.23131241 0.50193608 0.8541472 0.19542962 0.25670078 0.48031461 0.85512942 0.16186111
		 0.2718209 0.45173019 0.85760498 0.12936001 0.04261291 0.72959745 0.73394173 0.0724224
		 0.0058789551 0.41432476 0.72903109 0.11397031 0.0039465725 0.3812485 0.72534913 0.14629011
		 0.71983963 0.16508271 0.72252637 0.18085967 0.71883452 0.19692402 0.72171688 0.21741286
		 0.57606709 0.67064571 0.72277176 0.25361258 0.54618841 0.68971372 0.7247467 0.28820509
		 0.50550038 0.69698572 0.74256605 0.073378518 0.73101497 0.098700091 0.73527664 0.11497955
		 0.72693008 0.13083614 0.7316066 0.14715268 0.72374958 0.16537777 0.72883135 0.18150629
		 0.72167772 0.20168316 0.72796905 0.21762377 0.72214282 0.2381345 0.72900718 0.25373039
		 0.72385037 0.27297583 0.73104298 0.28882068 0.72461206 0.31264862 0.74807864 0.060127161
		 0.73780328 0.099682346 0.74151289 0.11592695 0.73320842 0.13170828 0.73787314 0.14796767
		 0.73000193 0.16590367 0.73512059 0.18206337 0.72791576 0.20186326 0.73420638 0.21783565
		 0.72836816 0.23811975 0.73519135 0.25379896 0.73003608 0.27308595 0.73714495 0.28888369
		 0.73102105 0.31358472 0.75282228 0.074929386 0.74347383 0.10042575 0.7477448 0.11682156
		 0.73948759 0.13249354 0.74414361 0.14873609 0.73627204 0.16645528 0.74140286 0.18258485
		 0.73415869 0.20208114 0.74043381 0.21802144 0.73457146 0.23807919 0.74135196 0.25376406
		 0.73615605 0.27303359 0.74260998 0.28879339 0.73842418 0.31154045 0.75904286 0.075685345
		 0.74969441 0.10133702 0.75398976 0.11769694 0.74576366 0.13322242 0.75041544 0.14945899
		 0.74255037 0.16698033 0.74768227 0.18307337 0.74040371 0.20228285 0.74665725 0.21816096
		 0.74075806 0.2379868 0.74751037 0.25360206 0.74229133 0.27272484 0.74947387 0.28785956
		 0.74390799 0.31905013 0.76527184 0.076388337 0.75592148 0.10215627 0.76023734 0.11851211
		 0.75203961 0.13390431 0.75668782 0.15013577 0.74883157 0.16746561 0.75396037 0.1835254
		 0.74665284 0.20245028 0.75288349 0.21824142 0.74693865 0.23781934 0.7536872 0.25331989
		 0.74844939 0.27224153 0.75578684 0.28720453 0.75216347 0.31233314 0.77150369 0.077012569
		 0.76215726 0.102923 0.76648682 0.11927618 0.75831658 0.13453922 0.76295996 0.15076528
		 0.75511283 0.16790779 0.76023924 0.18393877 0.75291085 0.20257474 0.7591179 0.21825872
		 0.7531237 0.23756778 0.75988263 0.25293604 0.75469744 0.27157381 0.76204658 0.28643435
		 0.75868511 0.31134793 0.77771199 0.077618428 0.76839972 0.10363574 0.77273828 0.11999507
		 0.76459336 0.13512747 0.76923263 0.15134816 0.76139164 0.1683055 0.76651877 0.18431018
		 0.75918263 0.20265393 0.76536304 0.21822156 0.75932002 0.23723602 0.76608974 0.25245985
		 0.76096314 0.2708371 0.76821691 0.28555906 0.76515806 0.31044897 0.78390026 0.07816688
		 0.77464336 0.10430097 0.77899444 0.12067902 0.77086961 0.13567312 0.77550858 0.15189534
		 0.76766676 0.16865648 0.77279741 0.18462101 0.76547313 0.20269072 0.77161902 0.21817535
		 0.76553237 0.23683405 0.77231169 0.25188848 0.76725274 0.26998308 0.77435219 0.28470913
		 0.77130222 0.30920061 0.11777857 0.48328757 0.78089893 0.10494211 0.15374634 0.50543404
		 0.77714521 0.1361756 0.77393842 0.16895787 0.77178115 0.20269285 0.77177262 0.23635656
		 0.77900243 0.25120276 0.77356869 0.2689462 0.78167617 0.28364116 0.77732992 0.30758175
		 0.72772026 0.071593828 0.80534446 0.31470907 0.00390625 0.39880624 0.80357134 0.28192726
		 0.72126663 0.14587611 0.80168515 0.24729759 0.7267915 0.17587543 0.79249495 0.21292442
		 0.71538711 0.21736407 0.80014724 0.1771353 0.7153545 0.2535868 0.79983687 0.13985379
		 0.71876979 0.2877064 0.80534959 0.099130929 0.78826308 0.10561862 0.87428236 0.33196303
		 0.78307158 0.13655585 0.86657947 0.29072869 0.78082019 0.16918615 0.86276293 0.26048839
		 0.77751857 0.20257321 0.86154646 0.22851622 0.77779138 0.2358481 0.85960287 0.19540426
		 0.78109068 0.26826152 0.86180359 0.1621657 0.78251666 0.30679271 0.86486441 0.13003594
		 0.86538792 0.10685088 0.019273639 0.72873718 0.86379659 0.1455458 0.26534706 0.46727937
		 0.86048776 0.17766416 0.24417874 0.49304205 0.85993385 0.21096376 0.21511248 0.50910038
		 0.86241728 0.2440576 0.18334955 0.51308209 0.86416942 0.27600408 0.15393691 0.50498331
		 0.86930811 0.3060793 0.11810222 0.48288715 0.80175984 0.12442386 0.50551564 0.69648039
		 0.79779768 0.15939637 0.54604548 0.68921649 0.79781526 0.19573726 0.57575285 0.67023695
		 0.7906152 0.23016185 0.59748185 0.64102584 0.80292851 0.26636785 0.014746517 0.34821573
		 0.80392909 0.29922023 0.0044524968 0.38135156 0.80959344 0.34082425 0.0063826144
		 0.41427481 0.091488272 0.69769979 0.8803491 0.020249566 0.87358427 0.022608967 0.070520163
		 0.71859699;
	setAttr ".uvst[0].uvsp[500:569]" 0.093210846 0.45867419 0.071009941 0.4266668
		 0.88039368 0.39366525 0.86846852 0.015367936 0.86460161 0.046652675 0.85464358 0.086410597
		 0.067678742 0.42079669 0.050484024 0.37950945 0.85194993 0.074417025 0.046980351
		 0.36519349 0.11352462 0.56166476 0.86229438 0.013998667 0.8565138 0.01081709 0.042984493
		 0.33108824 0.86205339 0.39937064 0.84941596 0.014839639 0.1960347 0.57442921 0.84279001
		 0.010442222 0.83825302 0.041807104 0.83202988 0.071302414 0.46497452 0.51655865 0.18416697
		 0.57335496 0.45649964 0.51993024 0.83204025 0.37255034 0.12305575 0.55789888 0.17624804
		 0.57241523 0.42216396 0.57350928 0.83702505 0.0094105517 0.82875562 0.020035554 0.4323926
		 0.54486185 0.10995958 0.55158687 0.82812637 0.0039090747 0.080876917 0.53266072 0.050869778
		 0.50306416 0.83102131 0.40748644 0.81853718 0.0060881334 0.81508976 0.037813947 0.80681205
		 0.067447484 0.81236541 0.37520283 0.046580307 0.49800876 0.45625731 0.51948768 0.46476677
		 0.51610535 0.042622745 0.7300927 0.00390625 0.72557402 0.72201431 0.13034245 0.77709258
		 0.21804525 0.25712639 0.48060352 0.77966416 0.18495278 0.23160556 0.50235945 0.78152752
		 0.15245968 0.19998123 0.51307058 0.7856124 0.12142019 0.16786528 0.51093036 0.79259038
		 0.07904432 0.13985837 0.49816591 0.71972418 0.31204575 0.71730429 0.27280816 0.71490121
		 0.23808318 0.7239809 0.097577728 0.012626782 0.44019642 0.10971952 0.55204237 0.12284905
		 0.55837035 0.037421942 0.32005706 0.59792489 0.64128757 0.27231523 0.45185584 0.0040514171
		 0.72508502 0.49090824 0.51229346 0.49100423 0.51275408 0.042124547 0.32031244 0.042639337
		 0.32030571;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 418 ".vt";
	setAttr ".vt[0:165]"  -2.59764576 5.66772747 1.26092911 -2.57699013 4.42699194 1.45131493
		 -2.39766216 3.13153219 1.47309113 2.060837746 2.071516514 1.48176384 2.23170185 3.26252794 1.49176025
		 2.076460838 4.4071722 1.19584846 1.72750568 5.50252962 1.34095383 -2.58094025 5.5791688 0.86815262
		 -2.55256939 4.41658163 0.94400787 -2.37857342 3.12339473 1.076534271 2.04479599 2.064007998 1.17430878
		 2.20069695 3.24369359 1.010362625 2.057286263 4.3930974 0.93585777 1.64078236 5.59826326 0.7777195
		 -2.55652046 5.73182869 0.46423149 -2.53347969 4.4084444 0.54745483 -2.35201931 3.11207581 0.52492523
		 2.024129868 2.054330587 0.77840614 2.17534542 3.22828531 0.61688232 2.028442383 4.37191725 0.54481697
		 1.79666424 5.040342808 0.56227493 -2.53743076 5.72369146 0.067672729 -2.51758862 4.40167093 0.21734428
		 -2.42873287 3.62401867 0.22409439 1.96687031 1.91900611 0.38127327 2.14998436 3.21286535 0.22340584
		 2.0060377121 4.35545921 0.24114799 1.63610554 5.42905045 0.17204475 -2.51057053 5.79405832 -0.42087555
		 -2.49529839 4.39216995 -0.24565887 -2.32130241 3.098982811 -0.11313629 2.032585144 2.21143031 0.11379051
		 2.13028526 3.2008822 -0.082151413 1.97073174 4.32951498 -0.23723793 1.61074448 5.40866184 -0.15229988
		 -2.50781727 5.3722744 -0.70923042 -2.47620964 4.38403273 -0.64221573 -2.30221272 3.090845346 -0.50969315
		 1.96207714 2.025239706 -0.40928459 2.099239349 3.18198919 -0.56352806 1.94186687 4.30829382 -0.62826157
		 1.60883141 5.2717514 -0.60679054 -2.48016071 5.69927931 -1.12199593 -2.45711994 4.37589502 -1.038772583
		 -2.28312302 3.08270812 -0.90625 1.94137573 2.015523195 -0.80517387 2.073854446 3.16653347 -0.95698547
		 1.91299438 4.28705931 -1.019275665 1.52164936 5.42728806 -0.99672508 -2.46604061 5.54375219 -1.51183128
		 -2.44278717 4.51209879 -1.55784798 -2.26403332 3.074570894 -1.30280685 1.92066288 2.0057969093 -1.20105934
		 2.048461914 3.15106559 -1.35044289 1.87443447 4.25868702 -1.5413208 1.51423931 5.33107853 -1.3864975
		 -2.44198132 5.68300486 -1.91510963 -2.38336658 3.97505236 -1.79794502 -2.24494267 3.06643343 -1.69936562
		 1.8999424 1.99606073 -1.59693909 2.019582748 2.6976912 -1.56318665 1.848773 4.23979664 -1.88864708
		 1.48377323 5.30658531 -1.77613449 -2.41874695 5.76856995 -2.31560707 -2.39984894 4.35148335 -2.22844505
		 -2.22585297 3.058296204 -2.09592247 1.87921143 1.98631489 -1.99281502 1.99765205 3.12009382 -2.13733864
		 1.82633495 4.22327375 -2.19228554 1.5195055 5.06460762 -2.16413879 -2.41143322 5.39865494 -2.69552422
		 -2.38182545 4.34380054 -2.60285378 -2.19929981 3.046977282 -2.64752769 1.86194801 1.97819459 -2.32235146
		 1.96513462 3.10025811 -2.64065552 1.79743385 4.20198488 -2.58327675 1.45281315 5.1613636 -2.55505753
		 -2.58540058 5.66677046 1.26512337 -2.56481647 4.42942715 1.45528984 -2.54039574 4.41901731 0.9479847
		 -2.56868839 5.57843208 0.87233353 -2.38596439 3.13749599 1.47670555 -2.36687374 3.12935853 1.080148697
		 2.050173759 2.080525875 1.48504448 2.034166336 2.073052883 1.17757607 2.22063255 3.26637292 1.4963131
		 2.18969059 3.24762797 1.014879227 2.066534042 4.40710497 1.20093155 2.047395706 4.39309692 0.94091225
		 1.71675396 5.49391127 1.34836197 1.63014793 5.58928728 0.78512573 -2.52130508 4.41088009 0.55142784
		 -2.54428387 5.73065329 0.46843338 -2.34031963 3.11803961 0.52853966 2.01354599 2.063421011 0.78165245
		 2.16438866 3.23229313 0.62136459 2.018604279 4.37201595 0.54983139 1.78812504 5.038847923 0.56714058
		 -2.41679287 3.62857199 0.22786903 1.95647907 1.92873538 0.38433838 2.13907909 3.21694613 0.2278595
		 1.99623966 4.35563612 0.2461319 1.62535381 5.42043209 0.1794529 -2.52519512 5.72251606 0.071876526
		 -2.50541401 4.40410614 0.22132111 -2.48312569 4.39460516 -0.24168587 -2.49834347 5.79266357 -0.41666222
		 -2.30960464 3.10494661 -0.10952187 2.021907806 2.21979356 0.11721992 -2.46403599 4.38646793 -0.63824272
		 -2.49555683 5.37201309 -0.7050724 -2.29051399 3.096809387 -0.50607872 1.95162678 2.03446722 -0.4060955
		 2.1194191 3.20501995 -0.077726364 2.088436127 3.18621659 -0.55913734 1.96099949 4.32981443 -0.23231125
		 1.93218613 4.30869341 -0.62337112 1.59999275 5.40004301 -0.14489174 1.59798813 5.26342916 -0.59938622
		 -2.44494534 4.37833071 -1.034795761 -2.46792412 5.6981039 -1.11779404 -2.27142429 3.088671923 -0.90263557
		 1.93096924 2.024796486 -0.80200386 2.063102722 3.17083406 -0.95262718 1.90336704 4.28755856 -1.014431
		 1.51096249 5.41847372 -0.98931885 -2.43058491 4.51413393 -1.55384064 -2.45379066 5.54297829 -1.50764656
		 -2.25233364 3.080534697 -1.29919243 1.91030121 2.015115976 -1.19790649 2.037760735 3.15543938 -1.3461132
		 1.8648777 4.25931978 -1.53653336 1.50348759 5.3224597 -1.37908936 -2.2332449 3.072397232 -1.69575119
		 -2.37129021 3.97853684 -1.79406166 1.8896246 2.0054254532 -1.59380722 2.008852005 2.70392013 -1.55926514
		 -2.42974472 5.68182945 -1.91090775 -2.38767624 4.35391855 -2.22447014 -2.4065218 5.76713896 -2.31139374
		 -2.21415424 3.064260006 -2.092308044 1.86893845 1.99572539 -1.98970222 1.98705101 3.12461448 -2.1330719
		 1.83926201 4.24051857 -1.88389587 1.81686497 4.22407341 -2.18756866 1.47302151 5.29796696 -1.76872635
		 1.50857353 5.056582928 -2.15673637 -2.36965179 4.34623575 -2.59887695 -2.3991766 5.39821053 -2.69135475
		 -2.18760014 3.052941084 -2.64391327 1.85171127 1.98764336 -2.31925583 1.95459938 3.10487247 -2.63642883
		 1.78801632 4.20288467 -2.57860374 1.44198036 5.15300798 -2.54764938 -2.15567207 2.19290876 1.66056442
		 -1.96778011 1.67669892 1.71004486 -1.94838428 1.66784728 1.29408264 -2.13444424 2.18419862 1.21255302
		 -1.709795 1.14668763 1.69718361 -1.42765808 0.75208795 1.71631622 -1.41913891 0.74921483 1.4564209
		 -1.69905472 1.14492035 1.38458061 -1.026563644 0.37836394 1.77711296 -0.67379284 0.17683162 1.83983994
		 -0.66948128 0.17605187 1.56746864 -1.022528648 0.37826476 1.52870941;
	setAttr ".vt[166:331]" -0.18077564 0.050652713 1.93882561 0.19453144 0.06346678 1.98543167
		 0.19376087 0.063754171 1.5837841 -0.18168736 0.050812136 1.59021187 0.69061661 0.22549295 2.0087299347
		 1.038131714 0.45033956 1.96198273 1.028403282 0.44927865 1.49318504 0.68122482 0.22369699 1.54410172
		 1.43851852 0.85978812 1.82295036 1.70730305 1.27022088 1.70014191 1.6928978 1.2664212 1.32318687
		 1.42311096 0.85399979 1.40521812 -1.9300518 1.65903437 0.89731979 -2.11381817 2.17526197 0.78063965
		 -1.40633583 0.74498349 1.057924271 -1.68549824 1.14204109 0.98624039 -0.66316795 0.17499253 1.16781998
		 -1.016025543 0.37804404 1.12908363 0.19286442 0.063957393 1.1837883 -0.18258381 0.051024526 1.19022179
		 1.020087242 0.44848126 1.093801498 0.67311573 0.22209725 1.14468956 1.67749214 1.26235235 0.92535019
		 1.40847683 0.84864837 1.0072021484 -1.91176701 1.65027368 0.50053596 -2.090550423 2.17319536 0.42106819
		 -1.3935461 0.74074793 0.65942574 -1.67193985 1.13917506 0.58790016 -0.65686798 0.17393143 0.76816559
		 -1.0095300674 0.37783632 0.72945976 0.19195747 0.064163089 0.7837944 -0.18349075 0.051240854 0.79022789
		 1.01175499 0.44768813 0.69441605 0.66499424 0.22049049 0.7452755 1.66498756 1.25387764 0.52176476
		 1.39414597 0.84360415 0.60912132 -1.89390087 1.6423713 0.10360527 -2.077947617 2.16057038 0.0225811
		 -1.38077259 0.73650831 0.26092339 -1.65838337 1.13632274 0.18955994 -0.65057659 0.17286836 0.36851692
		 -1.0030412674 0.37764138 0.32983589 0.19103909 0.064371161 0.3837986 -0.18440914 0.051461384 0.39023781
		 1.0034093857 0.44689977 0.29503632 0.65686226 0.21887679 0.34586716 1.64357758 1.26003158 0.16244698
		 1.37865829 0.83734941 0.2112999 -1.87578011 1.63388312 -0.29323196 -2.059131622 2.15271306 -0.37408066
		 -1.36801147 0.73226434 -0.13757896 -1.64482594 1.13348413 -0.20878029 -0.6442976 0.17180321 -0.031139374
		 -0.99655819 0.37745965 -0.069787979 0.19010925 0.064581871 -0.016195297 -0.18533897 0.051686157 -0.0097560883
		 0.99504852 0.44611597 -0.1043396 0.64871883 0.21725594 -0.053541183 1.63115406 1.25014353 -0.2681179
		 1.36453247 0.83250105 -0.1868248 -1.85768032 1.62539721 -0.69007492 -2.040326118 2.14486623 -0.77075005
		 -1.35526848 0.72801602 -0.53608131 -1.63126945 1.13065922 -0.60712051 -0.63802814 0.17073581 -0.43078995
		 -0.99008179 0.3772909 -0.46940994 0.18916702 0.064795151 -0.41618538 -0.1862812 0.051915362 -0.40974617
		 0.9866724 0.44533724 -0.50371361 0.64056492 0.21562797 -0.45294952 1.61566639 1.24607325 -0.6659317
		 1.34987164 0.82708693 -0.58483124 -1.83959961 1.6169132 -1.086923599 -2.021525383 2.13702893 -1.16741753
		 -1.34253788 0.72376257 -0.9345932 -1.61771107 1.12784827 -1.0054607391 -0.63177109 0.16966616 -0.83044243
		 -0.98361206 0.37713605 -0.86903763 0.1882143 0.065011173 -0.81618118 -0.18723392 0.052148994 -0.80973816
		 0.97828197 0.44456363 -0.9030838 0.63239956 0.21399269 -0.85235786 1.60015869 1.24200296 -1.063735962
		 1.33520412 0.82165658 -0.98283386 -1.82154083 1.60843098 -1.48378372 -2.0027360916 2.12920141 -1.56409454
		 -1.32982635 0.71950442 -1.33310509 -1.60415363 1.12505114 -1.40380096 -0.62552547 0.16859403 -1.23009872
		 -0.97714996 0.37699467 -1.26866531 0.18725109 0.065230072 -1.21617508 -0.18819714 0.052387245 -1.20972824
		 0.96987438 0.44379526 -1.30245399 0.62422276 0.21234995 -1.2517662 1.58462906 1.23793244 -1.4615345
		 1.3205328 0.81621003 -1.38083649 -1.80350208 1.59995067 -1.88064575 -1.98395348 2.12138367 -1.96077156
		 -1.31712914 0.71524084 -1.73162079 -1.59059334 1.12226784 -1.80214119 -0.61929131 0.16751926 -1.62975502
		 -0.97069168 0.37686741 -1.668293 0.18627739 0.065451756 -1.61616516 -0.18917179 0.052630328 -1.60972214
		 0.96145344 0.44303259 -1.70182419 0.61603546 0.21069986 -1.65116882 1.56907749 1.23386192 -1.85932541
		 1.30585384 0.81074679 -1.7788372 -1.78422737 1.59077442 -2.29924774 -1.96196842 2.1125803 -2.42714119
		 -1.3048439 0.71081066 -2.11288452 -1.57778549 1.12007117 -2.17896461 -0.61248684 0.16640747 -2.064842224
		 -0.96366787 0.3766135 -2.10766602 0.18539619 0.065671958 -1.9648571 -0.1900444 0.052918334 -1.97431755
		 0.95226669 0.44222879 -2.12813759 0.60828304 0.209181 -2.034902573 1.55118942 1.22898781 -2.32314301
		 1.28791904 0.80414587 -2.26104927 -2.14539528 2.20307779 1.66337204 -1.95740891 1.68645298 1.71255302
		 -2.12416935 2.19422698 1.21543694 -1.93816185 1.67781985 1.29680061 -1.70175076 1.16146672 1.70142817
		 -1.41957092 0.76693285 1.71767044 -1.69103241 1.15972054 1.38859248 -1.41107845 0.76407176 1.45779419
		 -1.022208214 0.3967706 1.77760887 -0.66939259 0.19525459 1.84034157 -1.018170357 0.3966617 1.52917671
		 -0.66511345 0.1944823 1.56781006 -0.18100834 0.070290968 1.93870354 0.19429588 0.083108306 1.98558998
		 -0.18192482 0.070451431 1.59025002 0.19352341 0.083397143 1.58381462 0.68578243 0.24361119 2.0090923309
		 1.033254623 0.46839532 1.96250153 0.67638397 0.24181201 1.54458809 1.023570061 0.46736747 1.49379539
		 1.4298439 0.87388116 1.82476807 1.69886494 1.28456748 1.70188713 1.41458797 0.86823249 1.40687943
		 1.68441105 1.28060842 1.32507706 -2.10358238 2.18534136 0.78337669 -1.91988277 1.66904545 0.90001869
		 -1.67751408 1.15686715 0.98783493 -1.39831543 0.75986004 1.05929184 -1.011691093 0.39645052 1.12955093
		 -0.65882397 0.19342765 1.16815567 -0.18282604 0.070665061 1.19025993 0.19262123 0.083601035 1.18382263
		 0.66828918 0.24021667 1.14517403 1.015268326 0.46657825 1.094408035 1.39998531 0.8628999 1.0088577271
		 1.669034 1.27656388 0.92723274 -2.08039093 2.18330455 0.42390633 -1.90165329 1.66033399 0.50321388
		 -1.66399479 1.15402746 0.58948326 -1.38556767 0.75564438 0.66077995 -1.0052156448 0.39625195 0.72992516
		 -0.65254593 0.19237123 0.76850128 -0.1837368 0.070882678 0.79026413 0.19171047 0.083807461 0.78382301
		 0.66018295 0.23861425 0.74575806 1.0069522858 0.46579328 0.69502258;
	setAttr ".vt[332:417]" 1.38568687 0.8578741 0.61076546 1.65655899 1.26811385 0.52360535
		 -2.067804337 2.17075562 0.025409698 -1.88384151 1.65247381 0.10626602 -1.6504755 1.15120137 0.19113541
		 -1.37283421 0.75142443 0.26227188 -0.99874878 0.39606646 0.33029938 -0.64627838 0.1913127 0.36884689
		 -0.18465996 0.071104594 0.39027214 0.19078827 0.084016293 0.38383293 0.65206528 0.23700489 0.3463459
		 0.99861908 0.46501303 0.29564095 1.37023163 0.85163718 0.21293449 1.63518524 1.27428854 0.16447067
		 -2.049034119 2.16295099 -0.37127113 -1.86577511 1.6440289 -0.29059219 -1.63695621 1.14838886 -0.20721436
		 -1.360116 0.74719995 -0.13624191 -0.99228954 0.3958942 -0.069324493 -0.64002323 0.19025218 -0.030805588
		 -0.18559361 0.071330652 -0.0097198486 0.18985462 0.084227815 -0.016162872 0.64393806 0.23538832 -0.053064346
		 0.99027348 0.46423748 -0.10373878 1.35614109 0.84680891 -0.18519974 1.62278652 1.26442909 -0.26626587
		 -2.030269623 2.15515614 -0.76795578 -1.84772873 1.63558614 -0.68745613 -1.62343693 1.14559042 -0.60556412
		 -1.34741306 0.74297088 -0.53475571 -0.98583508 0.39573526 -0.46895599 -0.63377762 0.18918937 -0.43046188
		 -0.1865387 0.071561188 -0.40970993 0.18890953 0.084441945 -0.41615677 0.63579941 0.23376459 -0.45247269
		 0.98191166 0.46346703 -0.50311279 1.34151363 0.8414135 -0.5832119 1.60732937 1.26038373 -0.66408348
		 -2.011515617 2.14737105 -1.16464233 -1.82970333 1.62714529 -1.08432579 -1.60991669 1.1428057 -1.003911972
		 -1.33472443 0.73873705 -0.93327522 -0.97938824 0.39558983 -0.86858368 -0.62754345 0.18812412 -0.83011818
		 -0.18749619 0.071796328 -0.80970001 0.18795204 0.084658802 -0.81614685 0.62764931 0.2321336 -0.85188484
		 0.97353554 0.46270183 -0.9024868 1.3268795 0.83600175 -0.98122787 1.59185028 1.256338 -1.061897278
		 -1.99276924 2.13959551 -1.56133461 -1.81169891 1.61870611 -1.48120117 -1.59639454 1.14003491 -1.40226364
		 -1.32205486 0.73449814 -1.33179855 -0.97294712 0.39545816 -1.26821518 -0.62132072 0.18705642 -1.2297802
		 -0.18846321 0.072036065 -1.20969391 0.18698502 0.084878601 -1.21614075 0.61948872 0.23049508 -1.25129509
		 0.9651413 0.46194196 -1.30186272 1.31224155 0.8305738 -1.37924194 1.57634926 1.25229239 -1.45970535
		 -1.97403145 2.13183022 -1.95802879 -1.79371548 1.61026907 -1.87808418 -1.58287239 1.13727772 -1.8006134
		 -1.30939674 0.73025364 -1.73032188 -0.96651173 0.39534089 -1.66784477 -0.6151104 0.18598598 -1.6294384
		 -0.18944359 0.072280675 -1.6096859 0.18600655 0.085101172 -1.61613274 0.61131668 0.22884922 -1.65069771
		 0.95673561 0.46118781 -1.7012291 1.29759693 0.82512903 -1.77725029 1.56082726 1.24824655 -1.8575058
		 -1.95209026 2.12309122 -2.4245224 -1.77450275 1.60113823 -2.29659843 -1.57009506 1.13510573 -2.17755508
		 -1.2971487 0.72583991 -2.11174202 -0.95951271 0.39509723 -2.10707664 -0.60833359 0.18487974 -2.064350128
		 -0.19031811 0.072570458 -1.97445679 0.18512154 0.085322231 -1.96491241 0.60358238 0.22733533 -2.034349442
		 0.94755936 0.46039194 -2.12769127 1.27970695 0.81855303 -2.25932884 1.54298401 1.24340308 -2.32110786;
	setAttr -s 832 ".ed";
	setAttr ".ed[0:165]"  0 1 0 0 7 0 1 2 0 1 8 1 2 9 1 3 4 0 3 10 1 4 5 0 4 11 1
		 5 6 0 5 12 1 6 13 0 7 8 1 7 14 0 8 9 1 8 15 1 9 16 1 10 11 1 10 17 1 11 12 1 11 18 1
		 12 13 1 12 19 1 13 20 0 14 15 0 15 16 0 16 23 0 17 18 1 17 24 1 18 19 1 18 25 1 19 20 1
		 19 26 1 20 27 0 21 22 0 21 28 0 22 23 0 22 29 1 23 30 1 24 25 0 24 31 0 25 26 0 26 27 0
		 28 29 1 28 35 0 29 30 1 29 36 1 30 37 1 31 32 0 31 38 1 32 33 0 32 39 1 33 34 0 33 40 1
		 34 41 0 35 36 1 35 42 0 36 37 1 36 43 1 37 44 1 38 39 1 38 45 1 39 40 1 39 46 1 40 41 1
		 40 47 1 41 48 0 42 43 1 42 49 0 43 44 1 43 50 1 44 51 1 45 46 1 45 52 1 46 47 1 46 53 1
		 47 48 1 47 54 1 48 55 0 49 50 0 50 51 1 50 57 0 51 58 1 52 53 1 52 59 1 53 54 0 53 60 0
		 54 55 0 56 57 0 56 63 0 57 58 1 57 64 1 58 65 1 59 60 1 59 66 1 60 61 0 60 67 1 61 62 0
		 61 68 1 62 69 0 63 64 1 63 70 0 64 65 1 64 71 1 65 72 1 66 67 1 66 73 1 67 68 1 67 74 1
		 68 69 1 68 75 1 69 76 0 70 71 0 71 72 0 73 74 0 74 75 0 75 76 0 0 77 0 1 78 1 77 78 0
		 78 79 1 7 80 0 80 79 1 77 80 0 2 81 1 78 81 0 81 82 1 79 82 1 3 83 1 83 84 1 4 85 1
		 83 85 0 85 86 1 84 86 1 5 87 1 85 87 0 87 88 1 86 88 1 6 89 0 87 89 0 13 90 0 89 90 0
		 88 90 1 15 91 1 79 91 1 14 92 0 92 91 0 80 92 0 16 93 0 82 93 1 91 93 0 84 94 1 86 95 1
		 94 95 1 88 96 1 95 96 1 20 97 0 90 97 0 96 97 1 23 98 1 93 98 0 24 99 0 94 99 1 25 100 1
		 95 100 1 99 100 0;
	setAttr ".ed[166:331]" 26 101 1 96 101 1 100 101 0 27 102 0 97 102 0 101 102 0
		 21 103 0 22 104 1 103 104 0 104 105 1 28 106 0 106 105 1 103 106 0 104 98 0 98 107 1
		 105 107 1 31 108 1 99 108 0 105 109 1 35 110 0 110 109 1 106 110 0 107 111 1 109 111 1
		 108 112 1 32 113 1 108 113 0 113 114 1 112 114 1 33 115 1 113 115 0 115 116 1 114 116 1
		 34 117 0 115 117 0 41 118 0 117 118 0 116 118 1 109 119 1 42 120 0 120 119 1 110 120 0
		 111 121 1 119 121 1 112 122 1 114 123 1 122 123 1 116 124 1 123 124 1 48 125 0 118 125 0
		 124 125 1 50 126 1 119 126 1 49 127 0 127 126 0 120 127 0 121 128 1 126 128 1 122 129 1
		 53 130 1 123 130 1 129 130 1 54 131 1 124 131 1 130 131 0 55 132 0 125 132 0 131 132 0
		 128 133 1 57 134 0 134 133 1 126 134 0 129 135 1 60 136 0 130 136 0 135 136 1 56 137 0
		 137 134 0 134 138 1 63 139 0 139 138 1 137 139 0 133 140 1 138 140 1 135 141 1 136 142 1
		 141 142 1 61 143 1 136 143 0 143 144 1 142 144 1 62 145 0 143 145 0 69 146 0 145 146 0
		 144 146 1 71 147 1 138 147 1 70 148 0 148 147 0 139 148 0 72 149 1 140 149 1 147 149 0
		 73 150 1 141 150 1 74 151 1 142 151 1 150 151 0 75 152 1 144 152 1 151 152 0 76 153 0
		 146 153 0 152 153 0 154 155 0 155 287 1 287 286 0 286 154 1 154 157 1 157 156 1 156 155 1
		 157 179 1 179 178 1 178 156 1 158 159 0 159 291 1 291 290 0 290 158 1 158 161 1 161 160 1
		 160 159 1 161 181 1 181 180 1 180 160 1 162 163 0 163 295 1 295 294 0 294 162 1 162 165 1
		 165 164 1 164 163 1 165 183 1 183 182 1 182 164 1 166 167 0 167 299 1 299 298 0 298 166 1
		 166 169 1 169 168 1 168 167 1 169 185 1 185 184 1 184 168 1 170 171 0 171 303 1 303 302 0
		 302 170 1 170 173 1 173 172 1 172 171 1 173 187 1 187 186 1 186 172 1;
	setAttr ".ed[332:497]" 174 175 0 175 307 1 307 306 0 306 174 1 174 177 1 177 176 1
		 176 175 1 177 189 1 189 188 1 188 176 1 179 191 1 191 190 1 190 178 1 181 193 1 193 192 1
		 192 180 1 183 195 1 195 194 1 194 182 1 185 197 1 197 196 1 196 184 1 187 199 1 199 198 1
		 198 186 1 189 201 1 201 200 1 200 188 1 191 203 1 203 202 1 202 190 1 193 205 1 205 204 1
		 204 192 1 195 207 1 207 206 1 206 194 1 197 209 1 209 208 1 208 196 1 199 211 1 211 210 1
		 210 198 1 201 213 1 213 212 1 212 200 1 203 215 1 215 214 1 214 202 1 205 217 1 217 216 1
		 216 204 1 207 219 1 219 218 1 218 206 1 209 221 1 221 220 1 220 208 1 211 223 1 223 222 1
		 222 210 1 213 225 1 225 224 1 224 212 1 215 227 1 227 226 1 226 214 1 217 229 1 229 228 1
		 228 216 1 219 231 1 231 230 1 230 218 1 221 233 1 233 232 1 232 220 1 223 235 1 235 234 1
		 234 222 1 225 237 1 237 236 1 236 224 1 227 239 1 239 238 1 238 226 1 229 241 1 241 240 1
		 240 228 1 231 243 1 243 242 1 242 230 1 233 245 1 245 244 1 244 232 1 235 247 1 247 246 1
		 246 234 1 237 249 1 249 248 1 248 236 1 239 251 1 251 250 1 250 238 1 241 253 1 253 252 1
		 252 240 1 243 255 1 255 254 1 254 242 1 245 257 1 257 256 1 256 244 1 247 259 1 259 258 1
		 258 246 1 249 261 1 261 260 1 260 248 1 251 263 1 263 262 1 262 250 1 253 265 1 265 264 1
		 264 252 1 255 267 1 267 266 1 266 254 1 257 269 1 269 268 1 268 256 1 259 271 1 271 270 1
		 270 258 1 261 273 1 273 272 1 272 260 1 263 275 1 275 274 0 274 262 1 265 277 1 277 276 0
		 276 264 1 267 279 1 279 278 0 278 266 1 269 281 1 281 280 0 280 268 1 271 283 1 283 282 0
		 282 270 1 273 285 1 285 284 0 284 272 1 275 406 1 406 407 0 407 274 1 277 408 1 408 409 0
		 409 276 1 279 410 1 410 411 0 411 278 1 281 412 1 412 413 0 413 280 1;
	setAttr ".ed[498:663]" 283 414 1 414 415 0 415 282 1 285 416 1 416 417 0 417 284 1
		 287 289 1 289 288 1 288 286 1 289 311 1 311 310 1 310 288 1 291 293 1 293 292 1 292 290 1
		 293 313 1 313 312 1 312 292 1 295 297 1 297 296 1 296 294 1 297 315 1 315 314 1 314 296 1
		 299 301 1 301 300 1 300 298 1 301 317 1 317 316 1 316 300 1 303 305 1 305 304 1 304 302 1
		 305 319 1 319 318 1 318 304 1 307 309 1 309 308 1 308 306 1 309 321 1 321 320 1 320 308 1
		 311 323 1 323 322 1 322 310 1 313 325 1 325 324 1 324 312 1 315 327 1 327 326 1 326 314 1
		 317 329 1 329 328 1 328 316 1 319 331 1 331 330 1 330 318 1 321 333 1 333 332 1 332 320 1
		 323 335 1 335 334 1 334 322 1 325 337 1 337 336 1 336 324 1 327 339 1 339 338 1 338 326 1
		 329 341 1 341 340 1 340 328 1 331 343 1 343 342 1 342 330 1 333 345 1 345 344 1 344 332 1
		 335 347 1 347 346 1 346 334 1 337 349 1 349 348 1 348 336 1 339 351 1 351 350 1 350 338 1
		 341 353 1 353 352 1 352 340 1 343 355 1 355 354 1 354 342 1 345 357 1 357 356 1 356 344 1
		 347 359 1 359 358 1 358 346 1 349 361 1 361 360 1 360 348 1 351 363 1 363 362 1 362 350 1
		 353 365 1 365 364 1 364 352 1 355 367 1 367 366 1 366 354 1 357 369 1 369 368 1 368 356 1
		 359 371 1 371 370 1 370 358 1 361 373 1 373 372 1 372 360 1 363 375 1 375 374 1 374 362 1
		 365 377 1 377 376 1 376 364 1 367 379 1 379 378 1 378 366 1 369 381 1 381 380 1 380 368 1
		 371 383 1 383 382 1 382 370 1 373 385 1 385 384 1 384 372 1 375 387 1 387 386 1 386 374 1
		 377 389 1 389 388 1 388 376 1 379 391 1 391 390 1 390 378 1 381 393 1 393 392 1 392 380 1
		 383 395 1 395 394 1 394 382 1 385 397 1 397 396 1 396 384 1 387 399 1 399 398 1 398 386 1
		 389 401 1 401 400 1 400 388 1 391 403 1 403 402 1 402 390 1 393 405 1;
	setAttr ".ed[664:829]" 405 404 1 404 392 1 395 407 1 406 394 1 397 409 1 408 396 1
		 399 411 1 410 398 1 401 413 1 412 400 1 403 415 1 414 402 1 405 417 1 416 404 1 81 286 0
		 288 82 1 287 290 0 292 289 1 291 294 0 296 293 1 295 298 0 300 297 1 299 302 0 304 301 1
		 303 306 0 308 305 1 307 83 0 84 309 1 310 93 1 312 311 1 314 313 1 316 315 1 318 317 1
		 320 319 1 94 321 1 322 98 1 324 323 1 326 325 1 328 327 1 330 329 1 332 331 1 99 333 1
		 334 107 1 336 335 1 338 337 1 340 339 1 342 341 1 344 343 1 108 345 1 346 111 1 348 347 1
		 350 349 1 352 351 1 354 353 1 356 355 1 112 357 1 358 121 1 360 359 1 362 361 1 364 363 1
		 366 365 1 368 367 1 122 369 1 370 128 1 372 371 1 374 373 1 376 375 1 378 377 1 380 379 1
		 129 381 1 382 133 1 384 383 1 386 385 1 388 387 1 390 389 1 392 391 1 135 393 1 394 140 1
		 396 395 1 398 397 1 400 399 1 402 401 1 404 403 1 141 405 1 406 149 0 408 407 0 410 409 0
		 412 411 0 414 413 0 416 415 0 150 417 0 9 157 1 154 2 0 156 161 1 158 155 0 160 165 1
		 162 159 0 164 169 1 166 163 0 168 173 1 170 167 0 172 177 1 174 171 0 176 10 1 3 175 0
		 16 179 1 178 181 1 180 183 1 182 185 1 184 187 1 186 189 1 188 17 1 23 191 1 190 193 1
		 192 195 1 194 197 1 196 199 1 198 201 1 200 24 1 30 203 1 202 205 1 204 207 1 206 209 1
		 208 211 1 210 213 1 212 31 1 37 215 1 214 217 1 216 219 1 218 221 1 220 223 1 222 225 1
		 224 38 1 44 227 1 226 229 1 228 231 1 230 233 1 232 235 1 234 237 1 236 45 1 51 239 1
		 238 241 1 240 243 1 242 245 1 244 247 1 246 249 1 248 52 1 58 251 1 250 253 1 252 255 1
		 254 257 1 256 259 1 258 261 1 260 59 1 65 263 1 262 265 1 264 267 1 266 269 1 268 271 1
		 270 273 1 272 66 1 72 275 0 274 277 0 276 279 0 278 281 0 280 283 0;
	setAttr ".ed[830:831]" 282 285 0 284 73 0;
	setAttr -s 416 -ch 1664 ".fc[0:415]" -type "polyFaces" 
		f 4 119 120 -123 -124
		mu 0 4 110 538 6 112
		f 4 125 126 -128 -121
		mu 0 4 538 494 177 6
		f 4 131 132 -134 -130
		mu 0 4 453 537 7 176
		f 4 135 136 -138 -133
		mu 0 4 537 536 8 7
		f 4 139 141 -143 -137
		mu 0 4 536 535 531 8
		f 4 122 144 -147 -148
		mu 0 4 112 6 117 534
		f 4 127 149 -151 -145
		mu 0 4 6 177 191 117
		f 4 133 152 -154 -152
		mu 0 4 176 7 12 190
		f 4 137 154 -156 -153
		mu 0 4 7 8 13 12
		f 4 142 157 -159 -155
		mu 0 4 8 531 528 13
		f 4 153 164 -166 -163
		mu 0 4 190 12 120 204
		f 4 155 167 -169 -165
		mu 0 4 12 13 121 120
		f 4 158 170 -172 -168
		mu 0 4 13 528 527 121
		f 4 174 175 -178 -179
		mu 0 4 123 523 21 125
		f 4 179 180 -182 -176
		mu 0 4 523 205 219 21
		f 4 177 184 -187 -188
		mu 0 4 125 21 26 126
		f 4 181 188 -190 -185
		mu 0 4 21 219 233 26
		f 4 192 193 -195 -191
		mu 0 4 218 519 27 232
		f 4 196 197 -199 -194
		mu 0 4 519 518 28 27
		f 4 200 202 -204 -198
		mu 0 4 518 517 515 28
		f 4 186 204 -207 -208
		mu 0 4 126 26 31 131
		f 4 189 208 -210 -205
		mu 0 4 26 233 247 31
		f 4 194 211 -213 -211
		mu 0 4 232 27 32 246
		f 4 198 213 -215 -212
		mu 0 4 27 28 33 32
		f 4 203 216 -218 -214
		mu 0 4 28 515 512 33
		f 4 206 219 -222 -223
		mu 0 4 131 31 133 514
		f 4 209 223 -225 -220
		mu 0 4 31 247 261 133
		f 4 212 227 -229 -226
		mu 0 4 246 32 508 260
		f 4 214 230 -232 -228
		mu 0 4 32 33 135 508
		f 4 217 233 -235 -231
		mu 0 4 33 512 511 135
		f 4 224 235 -238 -239
		mu 0 4 133 261 275 138
		f 4 228 241 -243 -240
		mu 0 4 260 508 505 274
		f 4 244 245 -248 -249
		mu 0 4 140 138 46 141
		f 4 237 249 -251 -246
		mu 0 4 138 275 289 46
		f 4 242 252 -254 -252
		mu 0 4 274 505 47 288
		f 4 255 256 -258 -253
		mu 0 4 505 504 48 47
		f 4 259 261 -263 -257
		mu 0 4 504 503 498 48
		f 4 247 264 -267 -268
		mu 0 4 141 46 145 502
		f 4 250 269 -271 -265
		mu 0 4 46 289 455 145
		f 4 253 274 -276 -273
		mu 0 4 288 47 147 468
		f 4 257 277 -279 -275
		mu 0 4 47 48 148 147
		f 4 262 280 -282 -278
		mu 0 4 48 498 497 148
		f 4 1 12 -4 -1
		mu 0 4 55 58 57 56
		f 4 3 14 -5 -3
		mu 0 4 56 57 303 440
		f 4 6 17 -9 -6
		mu 0 4 555 330 60 59
		f 4 8 19 -11 -8
		mu 0 4 59 60 62 61
		f 4 10 21 -12 -10
		mu 0 4 61 62 64 63
		f 4 13 24 -16 -13
		mu 0 4 58 66 65 57
		f 4 15 25 -17 -15
		mu 0 4 57 65 317 303
		f 4 18 27 -21 -18
		mu 0 4 330 344 67 60
		f 4 20 29 -23 -20
		mu 0 4 60 67 68 62
		f 4 22 31 -24 -22
		mu 0 4 62 68 69 64
		f 4 28 39 -31 -28
		mu 0 4 344 358 70 67
		f 4 30 41 -33 -30
		mu 0 4 67 70 71 68
		f 4 32 42 -34 -32
		mu 0 4 68 71 72 69
		f 4 35 43 -38 -35
		mu 0 4 73 76 75 74
		f 4 37 45 -39 -37
		mu 0 4 74 75 345 331
		f 4 44 55 -47 -44
		mu 0 4 76 78 77 75
		f 4 46 57 -48 -46
		mu 0 4 75 77 359 345
		f 4 49 60 -52 -49
		mu 0 4 372 386 80 79
		f 4 51 62 -54 -51
		mu 0 4 79 80 82 81
		f 4 53 64 -55 -53
		mu 0 4 81 82 84 83
		f 4 56 67 -59 -56
		mu 0 4 78 86 85 77
		f 4 58 69 -60 -58
		mu 0 4 77 85 373 359
		f 4 61 72 -64 -61
		mu 0 4 386 400 87 80
		f 4 63 74 -66 -63
		mu 0 4 80 87 88 82
		f 4 65 76 -67 -65
		mu 0 4 82 88 89 84
		f 4 68 79 -71 -68
		mu 0 4 86 91 90 85
		f 4 70 80 -72 -70
		mu 0 4 85 90 387 373
		f 4 73 83 -76 -73
		mu 0 4 400 414 92 87
		f 4 75 85 -78 -75
		mu 0 4 87 92 93 88
		f 4 77 87 -79 -77
		mu 0 4 88 93 94 89
		f 4 81 90 -83 -81
		mu 0 4 90 95 401 387
		f 4 84 93 -87 -84
		mu 0 4 414 428 96 92
		f 4 89 100 -92 -89
		mu 0 4 97 99 98 95
		f 4 91 102 -93 -91
		mu 0 4 95 98 415 401
		f 4 94 105 -97 -94
		mu 0 4 428 439 100 96
		f 4 96 107 -99 -96
		mu 0 4 96 100 102 101
		f 4 98 109 -100 -98
		mu 0 4 101 102 104 103
		f 4 101 112 -104 -101
		mu 0 4 99 106 105 98
		f 4 103 113 -105 -103
		mu 0 4 98 105 553 415
		f 4 106 114 -109 -106
		mu 0 4 439 466 107 100
		f 4 108 115 -111 -108
		mu 0 4 100 107 108 102
		f 4 110 116 -112 -110
		mu 0 4 102 108 109 104
		f 4 0 118 -120 -118
		mu 0 4 0 1 111 539
		f 4 -2 117 123 -122
		mu 0 4 5 0 539 533
		f 4 2 124 -126 -119
		mu 0 4 1 559 163 111
		f 4 5 130 -132 -129
		mu 0 4 316 2 113 483
		f 4 7 134 -136 -131
		mu 0 4 2 3 114 113
		f 4 9 138 -140 -135
		mu 0 4 3 4 115 114
		f 4 11 140 -142 -139
		mu 0 4 4 9 116 115
		f 4 -25 145 146 -144
		mu 0 4 11 10 118 532
		f 4 -14 121 147 -146
		mu 0 4 10 5 533 118
		f 4 -26 143 150 -149
		mu 0 4 560 11 532 530
		f 4 23 156 -158 -141
		mu 0 4 9 14 119 116
		f 4 -27 148 160 -160
		mu 0 4 561 560 530 524
		f 4 -40 161 165 -164
		mu 0 4 17 540 522 529
		f 4 -42 163 168 -167
		mu 0 4 18 17 529 526
		f 4 33 169 -171 -157
		mu 0 4 14 19 122 119
		f 4 -43 166 171 -170
		mu 0 4 19 18 526 122
		f 4 34 173 -175 -173
		mu 0 4 15 16 124 525
		f 4 -36 172 178 -177
		mu 0 4 20 15 525 521
		f 4 36 159 -180 -174
		mu 0 4 16 561 524 124
		f 4 40 182 -184 -162
		mu 0 4 540 541 520 522
		f 4 -45 176 187 -186
		mu 0 4 25 20 521 516
		f 4 48 191 -193 -183
		mu 0 4 541 566 567 520
		f 4 50 195 -197 -192
		mu 0 4 22 23 128 127
		f 4 52 199 -201 -196
		mu 0 4 23 24 129 128
		f 4 54 201 -203 -200
		mu 0 4 24 29 130 129
		f 4 -57 185 207 -206
		mu 0 4 30 568 569 513
		f 4 66 215 -217 -202
		mu 0 4 29 34 132 130
		f 4 -80 220 221 -219
		mu 0 4 36 35 134 509
		f 4 -69 205 222 -221
		mu 0 4 35 30 513 134
		f 4 -86 226 231 -230
		mu 0 4 38 37 136 510
		f 4 78 232 -234 -216
		mu 0 4 34 39 137 132
		f 4 -88 229 234 -233
		mu 0 4 39 38 510 137
		f 4 -82 218 238 -237
		mu 0 4 41 36 509 507
		f 4 86 240 -242 -227
		mu 0 4 37 42 139 136
		f 4 88 236 -245 -244
		mu 0 4 40 41 507 506
		f 4 -90 243 248 -247
		mu 0 4 45 40 506 501
		f 4 95 254 -256 -241
		mu 0 4 42 43 142 139
		f 4 97 258 -260 -255
		mu 0 4 43 44 143 142
		f 4 99 260 -262 -259
		mu 0 4 44 49 144 143
		f 4 -113 265 266 -264
		mu 0 4 51 50 146 500
		f 4 -102 246 267 -266
		mu 0 4 50 45 501 146
		f 4 -114 263 270 -269
		mu 0 4 429 51 500 481
		f 4 -115 271 275 -274
		mu 0 4 52 542 302 499
		f 4 -116 273 278 -277
		mu 0 4 53 52 499 496
		f 4 111 279 -281 -261
		mu 0 4 49 54 149 144
		f 4 -117 276 281 -280
		mu 0 4 54 53 496 149
		f 4 282 283 284 285
		mu 0 4 304 442 165 495
		f 4 -283 286 287 288
		mu 0 4 150 558 318 305
		f 4 -288 289 290 291
		mu 0 4 305 318 332 319
		f 4 292 293 294 295
		mu 0 4 306 151 167 493
		f 4 -293 296 297 298
		mu 0 4 444 544 320 307
		f 4 -298 299 300 301
		mu 0 4 307 320 334 321
		f 4 302 303 304 305
		mu 0 4 152 153 169 491
		f 4 -303 306 307 308
		mu 0 4 446 308 322 309
		f 4 -308 309 310 311
		mu 0 4 309 322 336 323
		f 4 312 313 314 315
		mu 0 4 563 155 171 489
		f 4 -313 316 317 318
		mu 0 4 448 310 324 311
		f 4 -318 319 320 321
		mu 0 4 311 324 338 325
		f 4 322 323 324 325
		mu 0 4 312 156 173 487
		f 4 -323 326 327 328
		mu 0 4 450 557 326 313
		f 4 -328 329 330 331
		mu 0 4 313 326 340 327
		f 4 332 333 334 335
		mu 0 4 314 157 175 485
		f 4 -333 336 337 338
		mu 0 4 452 556 328 315
		f 4 -338 339 340 341
		mu 0 4 315 328 342 329
		f 4 -291 342 343 344
		mu 0 4 319 332 346 333
		f 4 -301 345 346 347
		mu 0 4 321 334 348 335
		f 4 -311 348 349 350
		mu 0 4 323 336 350 337
		f 4 -321 351 352 353
		mu 0 4 325 338 352 339
		f 4 -331 354 355 356
		mu 0 4 327 340 354 341
		f 4 -341 357 358 359
		mu 0 4 329 342 356 343
		f 4 -344 360 361 362
		mu 0 4 333 346 360 347
		f 4 -347 363 364 365
		mu 0 4 335 348 362 349
		f 4 -350 366 367 368
		mu 0 4 337 350 364 351
		f 4 -353 369 370 371
		mu 0 4 339 352 366 353
		f 4 -356 372 373 374
		mu 0 4 341 354 368 355
		f 4 -359 375 376 377
		mu 0 4 343 356 370 357
		f 4 -362 378 379 380
		mu 0 4 347 360 374 361
		f 4 -365 381 382 383
		mu 0 4 349 362 376 363
		f 4 -368 384 385 386
		mu 0 4 351 364 378 365
		f 4 -371 387 388 389
		mu 0 4 353 366 380 367
		f 4 -374 390 391 392
		mu 0 4 355 368 382 369
		f 4 -377 393 394 395
		mu 0 4 357 370 384 371
		f 4 -380 396 397 398
		mu 0 4 361 374 388 375
		f 4 -383 399 400 401
		mu 0 4 363 376 390 377
		f 4 -386 402 403 404
		mu 0 4 365 378 392 379
		f 4 -389 405 406 407
		mu 0 4 367 380 394 381
		f 4 -392 408 409 410
		mu 0 4 369 382 396 383
		f 4 -395 411 412 413
		mu 0 4 371 384 398 385
		f 4 -398 414 415 416
		mu 0 4 375 388 402 389
		f 4 -401 417 418 419
		mu 0 4 377 390 404 391
		f 4 -404 420 421 422
		mu 0 4 379 392 406 393
		f 4 -407 423 424 425
		mu 0 4 381 394 408 395
		f 4 -410 426 427 428
		mu 0 4 383 396 410 397
		f 4 -413 429 430 431
		mu 0 4 385 398 412 399
		f 4 -416 432 433 434
		mu 0 4 389 402 416 403
		f 4 -419 435 436 437
		mu 0 4 391 404 418 405
		f 4 -422 438 439 440
		mu 0 4 393 406 420 407
		f 4 -425 441 442 443
		mu 0 4 395 408 422 409
		f 4 -428 444 445 446
		mu 0 4 397 410 424 411
		f 4 -431 447 448 449
		mu 0 4 399 412 426 413
		f 4 -434 450 451 452
		mu 0 4 403 416 430 417
		f 4 -437 453 454 455
		mu 0 4 405 418 432 419
		f 4 -440 456 457 458
		mu 0 4 407 420 433 421
		f 4 -443 459 460 461
		mu 0 4 409 422 434 423
		f 4 -446 462 463 464
		mu 0 4 411 424 435 425
		f 4 -449 465 466 467
		mu 0 4 413 426 437 427
		f 4 -452 468 469 470
		mu 0 4 417 430 454 551
		f 4 -455 471 472 473
		mu 0 4 419 432 456 549
		f 4 -458 474 475 476
		mu 0 4 421 433 458 547
		f 4 -461 477 478 479
		mu 0 4 423 434 460 545
		f 4 -464 480 481 482
		mu 0 4 425 435 462 436
		f 4 -467 483 484 485
		mu 0 4 427 437 464 438
		f 4 -470 486 487 488
		mu 0 4 431 554 290 479
		f 4 -473 489 490 491
		mu 0 4 158 552 292 477
		f 4 -476 492 493 494
		mu 0 4 159 550 294 475
		f 4 -479 495 496 497
		mu 0 4 160 548 296 473
		f 4 -482 498 499 500
		mu 0 4 161 546 298 471
		f 4 -485 501 502 503
		mu 0 4 162 543 565 469
		f 4 -285 504 505 506
		mu 0 4 441 492 179 164
		f 4 -506 507 508 509
		mu 0 4 164 179 193 178
		f 4 -295 510 511 512
		mu 0 4 443 490 181 166
		f 4 -512 513 514 515
		mu 0 4 166 181 195 180
		f 4 -305 516 517 518
		mu 0 4 445 488 183 168
		f 4 -518 519 520 521
		mu 0 4 168 183 197 182
		f 4 -315 522 523 524
		mu 0 4 447 486 185 170
		f 4 -524 525 526 527
		mu 0 4 170 185 199 184
		f 4 -325 528 529 530
		mu 0 4 449 484 187 172
		f 4 -530 531 532 533
		mu 0 4 172 187 201 186
		f 4 -335 534 535 536
		mu 0 4 451 482 189 174
		f 4 -536 537 538 539
		mu 0 4 174 189 203 188
		f 4 -509 540 541 542
		mu 0 4 178 193 207 192
		f 4 -515 543 544 545
		mu 0 4 180 195 209 194
		f 4 -521 546 547 548
		mu 0 4 182 197 211 196
		f 4 -527 549 550 551
		mu 0 4 184 199 213 198
		f 4 -533 552 553 554
		mu 0 4 186 201 215 200
		f 4 -539 555 556 557
		mu 0 4 188 203 217 202
		f 4 -542 558 559 560
		mu 0 4 192 207 221 206
		f 4 -545 561 562 563
		mu 0 4 194 209 223 208
		f 4 -548 564 565 566
		mu 0 4 196 211 225 210
		f 4 -551 567 568 569
		mu 0 4 198 213 227 212
		f 4 -554 570 571 572
		mu 0 4 200 215 229 214
		f 4 -557 573 574 575
		mu 0 4 202 217 231 216
		f 4 -560 576 577 578
		mu 0 4 206 221 235 220
		f 4 -563 579 580 581
		mu 0 4 208 223 237 222
		f 4 -566 582 583 584
		mu 0 4 210 225 239 224
		f 4 -569 585 586 587
		mu 0 4 212 227 241 226
		f 4 -572 588 589 590
		mu 0 4 214 229 243 228
		f 4 -575 591 592 593
		mu 0 4 216 231 245 230
		f 4 -578 594 595 596
		mu 0 4 220 235 249 234
		f 4 -581 597 598 599
		mu 0 4 222 237 251 236
		f 4 -584 600 601 602
		mu 0 4 224 239 253 238
		f 4 -587 603 604 605
		mu 0 4 226 241 255 240
		f 4 -590 606 607 608
		mu 0 4 228 243 257 242
		f 4 -593 609 610 611
		mu 0 4 230 245 259 244
		f 4 -596 612 613 614
		mu 0 4 234 249 263 248
		f 4 -599 615 616 617
		mu 0 4 236 251 265 250
		f 4 -602 618 619 620
		mu 0 4 238 253 267 252
		f 4 -605 621 622 623
		mu 0 4 240 255 269 254
		f 4 -608 624 625 626
		mu 0 4 242 257 271 256
		f 4 -611 627 628 629
		mu 0 4 244 259 273 258
		f 4 -614 630 631 632
		mu 0 4 248 263 277 262
		f 4 -617 633 634 635
		mu 0 4 250 265 279 264
		f 4 -620 636 637 638
		mu 0 4 252 267 281 266
		f 4 -623 639 640 641
		mu 0 4 254 269 283 268
		f 4 -626 642 643 644
		mu 0 4 256 271 285 270
		f 4 -629 645 646 647
		mu 0 4 258 273 287 272
		f 4 -632 648 649 650
		mu 0 4 262 277 291 276
		f 4 -635 651 652 653
		mu 0 4 264 279 293 278
		f 4 -638 654 655 656
		mu 0 4 266 281 295 280
		f 4 -641 657 658 659
		mu 0 4 268 283 297 282
		f 4 -644 660 661 662
		mu 0 4 270 285 299 284
		f 4 -647 663 664 665
		mu 0 4 272 287 301 286
		f 4 -650 666 -488 667
		mu 0 4 276 291 457 480
		f 4 -653 668 -491 669
		mu 0 4 278 293 459 478
		f 4 -656 670 -494 671
		mu 0 4 280 295 461 476
		f 4 -659 672 -497 673
		mu 0 4 282 297 463 474
		f 4 -662 674 -500 675
		mu 0 4 284 299 465 472
		f 4 -665 676 -503 677
		mu 0 4 286 301 467 470
		f 4 678 -507 679 -127
		mu 0 4 494 441 164 177
		f 4 680 -513 681 -505
		mu 0 4 492 443 166 179
		f 4 682 -519 683 -511
		mu 0 4 490 445 168 181
		f 4 684 -525 685 -517
		mu 0 4 488 447 170 183
		f 4 686 -531 687 -523
		mu 0 4 486 449 172 185
		f 4 688 -537 689 -529
		mu 0 4 484 451 174 187
		f 4 690 129 691 -535
		mu 0 4 482 453 176 189
		f 4 -680 -510 692 -150
		mu 0 4 177 164 178 191
		f 4 -682 -516 693 -508
		mu 0 4 179 166 180 193
		f 4 -684 -522 694 -514
		mu 0 4 181 168 182 195
		f 4 -686 -528 695 -520
		mu 0 4 183 170 184 197
		f 4 -688 -534 696 -526
		mu 0 4 185 172 186 199
		f 4 -690 -540 697 -532
		mu 0 4 187 174 188 201
		f 4 -692 151 698 -538
		mu 0 4 189 176 190 203
		f 4 -693 -543 699 -161
		mu 0 4 191 178 192 205
		f 4 -694 -546 700 -541
		mu 0 4 193 180 194 207
		f 4 -695 -549 701 -544
		mu 0 4 195 182 196 209
		f 4 -696 -552 702 -547
		mu 0 4 197 184 198 211
		f 4 -697 -555 703 -550
		mu 0 4 199 186 200 213
		f 4 -698 -558 704 -553
		mu 0 4 201 188 202 215
		f 4 -699 162 705 -556
		mu 0 4 203 190 204 217
		f 4 -700 -561 706 -181
		mu 0 4 205 192 206 219
		f 4 -701 -564 707 -559
		mu 0 4 207 194 208 221
		f 4 -702 -567 708 -562
		mu 0 4 209 196 210 223
		f 4 -703 -570 709 -565
		mu 0 4 211 198 212 225
		f 4 -704 -573 710 -568
		mu 0 4 213 200 214 227
		f 4 -705 -576 711 -571
		mu 0 4 215 202 216 229
		f 4 -706 183 712 -574
		mu 0 4 217 204 218 231
		f 4 -707 -579 713 -189
		mu 0 4 219 206 220 233
		f 4 -708 -582 714 -577
		mu 0 4 221 208 222 235
		f 4 -709 -585 715 -580
		mu 0 4 223 210 224 237
		f 4 -710 -588 716 -583
		mu 0 4 225 212 226 239
		f 4 -711 -591 717 -586
		mu 0 4 227 214 228 241
		f 4 -712 -594 718 -589
		mu 0 4 229 216 230 243
		f 4 -713 190 719 -592
		mu 0 4 231 218 232 245
		f 4 -714 -597 720 -209
		mu 0 4 233 220 234 247
		f 4 -715 -600 721 -595
		mu 0 4 235 222 236 249
		f 4 -716 -603 722 -598
		mu 0 4 237 224 238 251
		f 4 -717 -606 723 -601
		mu 0 4 239 226 240 253
		f 4 -718 -609 724 -604
		mu 0 4 241 228 242 255
		f 4 -719 -612 725 -607
		mu 0 4 243 230 244 257
		f 4 -720 210 726 -610
		mu 0 4 245 232 246 259
		f 4 -721 -615 727 -224
		mu 0 4 247 234 248 261
		f 4 -722 -618 728 -613
		mu 0 4 249 236 250 263
		f 4 -723 -621 729 -616
		mu 0 4 251 238 252 265
		f 4 -724 -624 730 -619
		mu 0 4 253 240 254 267
		f 4 -725 -627 731 -622
		mu 0 4 255 242 256 269
		f 4 -726 -630 732 -625
		mu 0 4 257 244 258 271
		f 4 -727 225 733 -628
		mu 0 4 259 246 260 273
		f 4 -728 -633 734 -236
		mu 0 4 261 248 262 275
		f 4 -729 -636 735 -631
		mu 0 4 263 250 264 277
		f 4 -730 -639 736 -634
		mu 0 4 265 252 266 279
		f 4 -731 -642 737 -637
		mu 0 4 267 254 268 281
		f 4 -732 -645 738 -640
		mu 0 4 269 256 270 283
		f 4 -733 -648 739 -643
		mu 0 4 271 258 272 285
		f 4 -734 239 740 -646
		mu 0 4 273 260 274 287
		f 4 -735 -651 741 -250
		mu 0 4 275 262 276 289
		f 4 -736 -654 742 -649
		mu 0 4 277 264 278 291
		f 4 -737 -657 743 -652
		mu 0 4 279 266 280 293
		f 4 -738 -660 744 -655
		mu 0 4 281 268 282 295
		f 4 -739 -663 745 -658
		mu 0 4 283 270 284 297
		f 4 -740 -666 746 -661
		mu 0 4 285 272 286 299
		f 4 -741 251 747 -664
		mu 0 4 287 274 288 301
		f 4 -742 -668 748 -270
		mu 0 4 289 276 480 455
		f 4 -743 -670 749 -667
		mu 0 4 291 278 478 457
		f 4 -744 -672 750 -669
		mu 0 4 293 280 476 459
		f 4 -745 -674 751 -671
		mu 0 4 295 282 474 461
		f 4 -746 -676 752 -673
		mu 0 4 297 284 472 463
		f 4 -747 -678 753 -675
		mu 0 4 299 286 470 465
		f 4 -748 272 754 -677
		mu 0 4 301 288 468 467
		f 4 4 755 -287 756
		mu 0 4 440 303 318 558
		f 4 -289 757 -297 758
		mu 0 4 150 305 320 544
		f 4 -299 759 -307 760
		mu 0 4 444 307 322 308
		f 4 -309 761 -317 762
		mu 0 4 446 309 324 310
		f 4 -319 763 -327 764
		mu 0 4 448 311 326 557
		f 4 -329 765 -337 766
		mu 0 4 450 313 328 556
		f 4 -339 767 -7 768
		mu 0 4 452 315 330 555
		f 4 16 769 -290 -756
		mu 0 4 303 317 332 318
		f 4 -292 770 -300 -758
		mu 0 4 305 319 334 320
		f 4 -302 771 -310 -760
		mu 0 4 307 321 336 322
		f 4 -312 772 -320 -762
		mu 0 4 309 323 338 324
		f 4 -322 773 -330 -764
		mu 0 4 311 325 340 326
		f 4 -332 774 -340 -766
		mu 0 4 313 327 342 328
		f 4 -342 775 -19 -768
		mu 0 4 315 329 344 330
		f 4 26 776 -343 -770
		mu 0 4 317 331 346 332
		f 4 -345 777 -346 -771
		mu 0 4 319 333 348 334
		f 4 -348 778 -349 -772
		mu 0 4 321 335 350 336
		f 4 -351 779 -352 -773
		mu 0 4 323 337 352 338
		f 4 -354 780 -355 -774
		mu 0 4 325 339 354 340
		f 4 -357 781 -358 -775
		mu 0 4 327 341 356 342
		f 4 -360 782 -29 -776
		mu 0 4 329 343 358 344
		f 4 38 783 -361 -777
		mu 0 4 331 345 360 346
		f 4 -363 784 -364 -778
		mu 0 4 333 347 362 348
		f 4 -366 785 -367 -779
		mu 0 4 335 349 364 350
		f 4 -369 786 -370 -780
		mu 0 4 337 351 366 352
		f 4 -372 787 -373 -781
		mu 0 4 339 353 368 354
		f 4 -375 788 -376 -782
		mu 0 4 341 355 370 356
		f 4 -378 789 -41 -783
		mu 0 4 343 357 372 358
		f 4 47 790 -379 -784
		mu 0 4 345 359 374 360
		f 4 -381 791 -382 -785
		mu 0 4 347 361 376 362
		f 4 -384 792 -385 -786
		mu 0 4 349 363 378 364
		f 4 -387 793 -388 -787
		mu 0 4 351 365 380 366
		f 4 -390 794 -391 -788
		mu 0 4 353 367 382 368
		f 4 -393 795 -394 -789
		mu 0 4 355 369 384 370
		f 4 -396 796 -50 -790
		mu 0 4 357 371 386 372
		f 4 59 797 -397 -791
		mu 0 4 359 373 388 374
		f 4 -399 798 -400 -792
		mu 0 4 361 375 390 376
		f 4 -402 799 -403 -793
		mu 0 4 363 377 392 378
		f 4 -405 800 -406 -794
		mu 0 4 365 379 394 380
		f 4 -408 801 -409 -795
		mu 0 4 367 381 396 382
		f 4 -411 802 -412 -796
		mu 0 4 369 383 398 384
		f 4 -414 803 -62 -797
		mu 0 4 371 385 400 386
		f 4 71 804 -415 -798
		mu 0 4 373 387 402 388
		f 4 -417 805 -418 -799
		mu 0 4 375 389 404 390
		f 4 -420 806 -421 -800
		mu 0 4 377 391 406 392
		f 4 -423 807 -424 -801
		mu 0 4 379 393 408 394
		f 4 -426 808 -427 -802
		mu 0 4 381 395 410 396
		f 4 -429 809 -430 -803
		mu 0 4 383 397 412 398
		f 4 -432 810 -74 -804
		mu 0 4 385 399 414 400
		f 4 82 811 -433 -805
		mu 0 4 387 401 416 402
		f 4 -435 812 -436 -806
		mu 0 4 389 403 418 404
		f 4 -438 813 -439 -807
		mu 0 4 391 405 420 406
		f 4 -441 814 -442 -808
		mu 0 4 393 407 422 408
		f 4 -444 815 -445 -809
		mu 0 4 395 409 424 410
		f 4 -447 816 -448 -810
		mu 0 4 397 411 426 412
		f 4 -450 817 -85 -811
		mu 0 4 399 413 428 414
		f 4 92 818 -451 -812
		mu 0 4 401 415 430 416
		f 4 -453 819 -454 -813
		mu 0 4 403 417 432 418
		f 4 -456 820 -457 -814
		mu 0 4 405 419 433 420
		f 4 -459 821 -460 -815
		mu 0 4 407 421 434 422
		f 4 -462 822 -463 -816
		mu 0 4 409 423 435 424
		f 4 -465 823 -466 -817
		mu 0 4 411 425 437 426
		f 4 -468 824 -95 -818
		mu 0 4 413 427 439 428
		f 4 104 825 -469 -819
		mu 0 4 415 553 454 430
		f 4 -471 826 -472 -820
		mu 0 4 417 551 456 432
		f 4 -474 827 -475 -821
		mu 0 4 419 549 458 433
		f 4 -477 828 -478 -822
		mu 0 4 421 547 460 434
		f 4 -480 829 -481 -823
		mu 0 4 423 545 462 435
		f 4 -483 830 -484 -824
		mu 0 4 425 436 464 437
		f 4 -486 831 -107 -825
		mu 0 4 427 438 466 439
		f 4 -757 -286 -679 -125
		mu 0 4 559 304 495 163
		f 4 -759 -296 -681 -284
		mu 0 4 442 306 493 165
		f 4 -761 -306 -683 -294
		mu 0 4 151 152 491 167
		f 4 -763 -316 -685 -304
		mu 0 4 153 154 562 169
		f 4 -765 -326 -687 -314
		mu 0 4 155 312 487 171
		f 4 -767 -336 -689 -324
		mu 0 4 156 314 485 173
		f 4 -769 128 -691 -334
		mu 0 4 157 316 483 175
		f 4 -826 268 -749 -487
		mu 0 4 554 429 481 290
		f 4 -827 -489 -750 -490
		mu 0 4 552 431 479 292
		f 4 -828 -492 -751 -493
		mu 0 4 550 158 477 294
		f 4 -829 -495 -752 -496
		mu 0 4 548 159 475 296
		f 4 -830 -498 -753 -499
		mu 0 4 546 160 473 298
		f 4 -831 -501 -754 -502
		mu 0 4 564 161 471 300
		f 4 -832 -504 -755 -272
		mu 0 4 542 162 469 302;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 33 
		151 0 
		153 0 
		155 0 
		156 0 
		157 0 
		158 0 
		159 0 
		160 0 
		161 0 
		162 0 
		167 0 
		169 0 
		171 0 
		173 0 
		175 0 
		300 0 
		302 0 
		306 0 
		316 0 
		444 0 
		446 0 
		464 0 
		466 0 
		469 0 
		471 0 
		473 0 
		475 0 
		477 0 
		483 0 
		493 0 
		542 0 
		543 0 
		544 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 3;
	setAttr ".dsm" 2;
createNode mesh -n "polySurfaceShape4" -p "span_04";
	rename -uid "757C789D-4780-F612-ED15-03932926975C";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.19999998807907104 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 143 ".uvst[0].uvsp[0:142]" -type "float2" 0 0 0.083333336 0
		 0.16666667 0 0.25 0 0.33333334 0 0.41666669 0 0.5 0 0.58333337 0 0.66666669 0 0.75
		 0 0.83333337 0 0.91666669 0 1 0 0 0.039999999 0.083333336 0.039999999 0.16666667
		 0.039999999 0.25 0.039999999 0.33333334 0.039999999 0.41666669 0.039999999 0.5 0.039999999
		 0.58333337 0.039999999 0.66666669 0.039999999 0.75 0.039999999 0.83333337 0.039999999
		 0.91666669 0.039999999 1 0.039999999 0 0.079999998 0.083333336 0.079999998 0.16666667
		 0.079999998 0.25 0.079999998 0.33333334 0.079999998 0.41666669 0.079999998 0.5 0.079999998
		 0.58333337 0.079999998 0.66666669 0.079999998 0.75 0.079999998 0.83333337 0.079999998
		 0.91666669 0.079999998 1 0.079999998 0 0.12 0.083333336 0.12 0.16666667 0.12 0.25
		 0.12 0.33333334 0.12 0.41666669 0.12 0.5 0.12 0.58333337 0.12 0.66666669 0.12 0.75
		 0.12 0.83333337 0.12 0.91666669 0.12 1 0.12 0 0.16 0.083333336 0.16 0.16666667 0.16
		 0.25 0.16 0.33333334 0.16 0.41666669 0.16 0.5 0.16 0.58333337 0.16 0.66666669 0.16
		 0.75 0.16 0.83333337 0.16 0.91666669 0.16 1 0.16 0 0.19999999 0.083333336 0.19999999
		 0.16666667 0.19999999 0.25 0.19999999 0.33333334 0.19999999 0.41666669 0.19999999
		 0.5 0.19999999 0.58333337 0.19999999 0.66666669 0.19999999 0.75 0.19999999 0.83333337
		 0.19999999 0.91666669 0.19999999 1 0.19999999 0 0.23999999 0.083333336 0.23999999
		 0.16666667 0.23999999 0.25 0.23999999 0.33333334 0.23999999 0.41666669 0.23999999
		 0.5 0.23999999 0.58333337 0.23999999 0.66666669 0.23999999 0.75 0.23999999 0.83333337
		 0.23999999 0.91666669 0.23999999 1 0.23999999 0 0.28 0.083333336 0.28 0.16666667
		 0.28 0.25 0.28 0.33333334 0.28 0.41666669 0.28 0.5 0.28 0.58333337 0.28 0.66666669
		 0.28 0.75 0.28 0.83333337 0.28 0.91666669 0.28 1 0.28 0 0.31999999 0.083333336 0.31999999
		 0.16666667 0.31999999 0.25 0.31999999 0.33333334 0.31999999 0.41666669 0.31999999
		 0.5 0.31999999 0.58333337 0.31999999 0.66666669 0.31999999 0.75 0.31999999 0.83333337
		 0.31999999 0.91666669 0.31999999 1 0.31999999 0 0.35999998 0.083333336 0.35999998
		 0.16666667 0.35999998 0.25 0.35999998 0.33333334 0.35999998 0.41666669 0.35999998
		 0.5 0.35999998 0.58333337 0.35999998 0.66666669 0.35999998 0.75 0.35999998 0.83333337
		 0.35999998 0.91666669 0.35999998 1 0.35999998 0 0.39999998 0.083333336 0.39999998
		 0.16666667 0.39999998 0.25 0.39999998 0.33333334 0.39999998 0.41666669 0.39999998
		 0.5 0.39999998 0.58333337 0.39999998 0.66666669 0.39999998 0.75 0.39999998 0.83333337
		 0.39999998 0.91666669 0.39999998 1 0.39999998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 45 ".pt";
	setAttr ".pt[0]" -type "float3" 0.050590001 0 0 ;
	setAttr ".pt[1]" -type "float3" 0 0 0.11171092 ;
	setAttr ".pt[3]" -type "float3" 0 0 0.067026556 ;
	setAttr ".pt[4]" -type "float3" 0 0 -0.13405311 ;
	setAttr ".pt[5]" -type "float3" 0 0 -0.1563953 ;
	setAttr ".pt[6]" -type "float3" 0 0 -0.022342185 ;
	setAttr ".pt[7]" -type "float3" 0 0 0.089368738 ;
	setAttr ".pt[9]" -type "float3" 0 0 -0.089368738 ;
	setAttr ".pt[10]" -type "float3" 0 0 0.089368753 ;
	setAttr ".pt[11]" -type "float3" 0 0 -0.13405311 ;
	setAttr ".pt[13]" -type "float3" 0.10118 0 0 ;
	setAttr ".pt[25]" -type "float3" 0.092748329 0 -0.17873749 ;
	setAttr ".pt[28]" -type "float3" 0 0 -0.15639532 ;
	setAttr ".pt[38]" -type "float3" -0.29510841 0 0 ;
	setAttr ".pt[40]" -type "float3" 0 0 0.067026556 ;
	setAttr ".pt[41]" -type "float3" -0.3372668 0 0 ;
	setAttr ".pt[48]" -type "float3" -0.092748329 0 -0.022342185 ;
	setAttr ".pt[50]" -type "float3" 0 0 0.089368738 ;
	setAttr ".pt[52]" -type "float3" -0.050590001 0 -0.089368738 ;
	setAttr ".pt[61]" -type "float3" 0.12647501 0 0.1563953 ;
	setAttr ".pt[62]" -type "float3" 0 0 0.089368746 ;
	setAttr ".pt[64]" -type "float3" 0 0 0.067026556 ;
	setAttr ".pt[65]" -type "float3" 0.21079169 0 0 ;
	setAttr ".pt[77]" -type "float3" -0.075885005 0 0 ;
	setAttr ".pt[90]" -type "float3" 0.050590001 0 0 ;
	setAttr ".pt[91]" -type "float3" 0.092748336 0 -1.1175871e-08 ;
	setAttr ".pt[92]" -type "float3" -0.092748329 0 -0.11171092 ;
	setAttr ".pt[102]" -type "float3" 0 0 -0.13405311 ;
	setAttr ".pt[105]" -type "float3" 0.2445184 0 -1.1175871e-08 ;
	setAttr ".pt[114]" -type "float3" -0.32040346 0 0.13405311 ;
	setAttr ".pt[115]" -type "float3" 0 0 -0.089368738 ;
	setAttr ".pt[117]" -type "float3" -0.059021667 0 0 ;
	setAttr ".pt[129]" -type "float3" -0.15177003 0 0 ;
	setAttr ".pt[130]" -type "float3" 0.16863337 0 0 ;
	setAttr ".pt[131]" -type "float3" 0 0 0.022342185 ;
	setAttr ".pt[132]" -type "float3" 0 0 -0.1563953 ;
	setAttr ".pt[133]" -type "float3" 0 0 -0.044684369 ;
	setAttr ".pt[134]" -type "float3" 0 0 0.044684369 ;
	setAttr ".pt[135]" -type "float3" 0 0 -0.067026556 ;
	setAttr ".pt[136]" -type "float3" 0 0 0.067026556 ;
	setAttr ".pt[137]" -type "float3" 0 0 3.7252903e-09 ;
	setAttr ".pt[138]" -type "float3" 0 0 -0.11171092 ;
	setAttr ".pt[139]" -type "float3" 0 0 0.067026556 ;
	setAttr ".pt[140]" -type "float3" 0 0 -0.11171092 ;
	setAttr ".pt[142]" -type "float3" -0.06745334 0 0 ;
	setAttr -s 143 ".vt[0:142]"  -5 0 2 -4.16666651 0 2 -3.33333349 0 2 -2.5 0 2
		 -1.66666675 0 2 -0.83333349 0 2 0 0 2 0.83333302 0 2 1.66666651 0 2 2.5 0 2 3.33333302 0 2
		 4.16666603 0 2 5 0 2 -5 0 1.60000002 -4.16666651 0 1.60000002 -3.33333349 0 1.60000002
		 -2.5 0 1.60000002 -1.66666675 0 1.60000002 -0.83333349 0 1.60000002 0 0 1.60000002
		 0.83333302 0 1.60000002 1.66666651 0 1.60000002 2.5 0 1.60000002 3.33333302 0 1.60000002
		 4.16666603 0 1.60000002 5 0 1.60000002 -5 0 1.20000005 -4.16666651 0 1.20000005 -3.33333349 0 1.20000005
		 -2.5 0 1.20000005 -1.66666675 0 1.20000005 -0.83333349 0 1.20000005 0 0 1.20000005
		 0.83333302 0 1.20000005 1.66666651 0 1.20000005 2.5 0 1.20000005 3.33333302 0 1.20000005
		 4.16666603 0 1.20000005 5 0 1.20000005 -5 0 0.79999995 -4.16666651 0 0.79999995 -3.33333349 0 0.79999995
		 -2.5 0 0.79999995 -1.66666675 0 0.79999995 -0.83333349 0 0.79999995 0 0 0.79999995
		 0.83333302 0 0.79999995 1.66666651 0 0.79999995 2.5 0 0.79999995 3.33333302 0 0.79999995
		 4.16666603 0 0.79999995 5 0 0.79999995 -5 0 0.39999998 -4.16666651 0 0.39999998 -3.33333349 0 0.39999998
		 -2.5 0 0.39999998 -1.66666675 0 0.39999998 -0.83333349 0 0.39999998 0 0 0.39999998
		 0.83333302 0 0.39999998 1.66666651 0 0.39999998 2.5 0 0.39999998 3.33333302 0 0.39999998
		 4.16666603 0 0.39999998 5 0 0.39999998 -5 0 0 -4.16666651 0 0 -3.33333349 0 0 -2.5 0 0
		 -1.66666675 0 0 -0.83333349 0 0 0 0 0 0.83333302 0 0 1.66666651 0 0 2.5 0 0 3.33333302 0 0
		 4.16666603 0 0 5 0 0 -5 0 -0.4000001 -4.16666651 0 -0.4000001 -3.33333349 0 -0.4000001
		 -2.5 0 -0.4000001 -1.66666675 0 -0.4000001 -0.83333349 0 -0.4000001 0 0 -0.4000001
		 0.83333302 0 -0.4000001 1.66666651 0 -0.4000001 2.5 0 -0.4000001 3.33333302 0 -0.4000001
		 4.16666603 0 -0.4000001 5 0 -0.4000001 -5 0 -0.79999995 -4.16666651 0 -0.79999995
		 -3.33333349 0 -0.79999995 -2.5 0 -0.79999995 -1.66666675 0 -0.79999995 -0.83333349 0 -0.79999995
		 0 0 -0.79999995 0.83333302 0 -0.79999995 1.66666651 0 -0.79999995 2.5 0 -0.79999995
		 3.33333302 0 -0.79999995 4.16666603 0 -0.79999995 5 0 -0.79999995 -5 0 -1.20000005
		 -4.16666651 0 -1.20000005 -3.33333349 0 -1.20000005 -2.5 0 -1.20000005 -1.66666675 0 -1.20000005
		 -0.83333349 0 -1.20000005 0 0 -1.20000005 0.83333302 0 -1.20000005 1.66666651 0 -1.20000005
		 2.5 0 -1.20000005 3.33333302 0 -1.20000005 4.16666603 0 -1.20000005 5 0 -1.20000005
		 -5 0 -1.60000014 -4.16666651 0 -1.60000014 -3.33333349 0 -1.60000014 -2.5 0 -1.60000014
		 -1.66666675 0 -1.60000014 -0.83333349 0 -1.60000014 0 0 -1.60000014 0.83333302 0 -1.60000014
		 1.66666651 0 -1.60000014 2.5 0 -1.60000014 3.33333302 0 -1.60000014 4.16666603 0 -1.60000014
		 5 0 -1.60000014 -5 0 -2 -4.16666651 0 -2 -3.33333349 0 -2 -2.5 0 -2 -1.66666675 0 -2
		 -0.83333349 0 -2 0 0 -2 0.83333302 0 -2 1.66666651 0 -2 2.5 0 -2 3.33333302 0 -2
		 4.16666603 0 -2 5 0 -2;
	setAttr -s 254 ".ed";
	setAttr ".ed[0:165]"  0 1 0 0 13 0 1 2 0 1 14 1 2 3 0 2 15 1 3 4 0 3 16 1
		 4 5 0 4 17 1 5 6 0 5 18 1 6 7 0 6 19 1 7 8 0 7 20 1 8 9 0 8 21 1 9 10 0 9 22 1 10 11 0
		 10 23 1 11 12 0 11 24 1 12 25 0 13 14 1 13 26 0 14 15 1 14 27 1 15 16 1 15 28 1 16 17 1
		 16 29 1 17 18 1 17 30 1 18 19 1 18 31 1 19 20 1 19 32 1 20 21 1 20 33 1 21 22 1 21 34 1
		 22 23 1 22 35 1 23 24 1 23 36 1 24 25 1 24 37 1 25 38 0 26 27 0 27 28 0 28 29 1 28 41 0
		 29 30 1 29 42 1 30 31 1 30 43 1 31 32 1 31 44 1 32 33 1 32 45 1 33 34 1 33 46 1 34 35 1
		 34 47 1 35 36 1 35 48 1 36 37 1 36 49 1 37 38 1 37 50 1 38 51 0 39 40 0 39 52 0 40 41 0
		 40 53 1 41 42 1 41 54 1 42 43 1 42 55 1 43 44 1 43 56 1 44 45 1 44 57 1 45 46 1 45 58 1
		 46 47 1 46 59 1 47 48 1 47 60 1 48 49 0 48 61 0 49 50 0 50 51 0 52 53 1 52 65 0 53 54 1
		 53 66 1 54 55 1 54 67 1 55 56 1 55 68 1 56 57 1 56 69 1 57 58 1 57 70 1 58 59 1 58 71 1
		 59 60 1 59 72 1 60 61 1 60 73 1 61 62 0 61 74 1 62 63 0 62 75 1 63 64 0 63 76 1 64 77 0
		 65 66 1 65 78 0 66 67 1 66 79 1 67 68 1 67 80 1 68 69 1 68 81 1 69 70 1 69 82 1 70 71 1
		 70 83 1 71 72 1 71 84 1 72 73 1 72 85 1 73 74 1 73 86 1 74 75 1 74 87 1 75 76 1 75 88 1
		 76 77 1 76 89 1 77 90 0 78 79 1 78 91 0 79 80 1 79 92 1 80 81 1 80 93 1 81 82 1 81 94 1
		 82 83 1 82 95 1 83 84 1 83 96 1 84 85 1 84 97 1 85 86 1 85 98 1 86 87 1 86 99 1 87 88 1
		 87 100 1 88 89 1;
	setAttr ".ed[166:253]" 88 101 1 89 90 1 89 102 1 90 103 0 91 92 0 92 93 1 92 105 0
		 93 94 1 93 106 1 94 95 1 94 107 1 95 96 1 95 108 1 96 97 1 96 109 1 97 98 1 97 110 1
		 98 99 1 98 111 1 99 100 1 99 112 1 100 101 1 100 113 1 101 102 0 101 114 0 102 103 0
		 104 105 0 104 117 0 105 106 1 105 118 1 106 107 1 106 119 1 107 108 1 107 120 1 108 109 1
		 108 121 1 109 110 1 109 122 1 110 111 1 110 123 1 111 112 1 111 124 1 112 113 1 112 125 1
		 113 114 1 113 126 1 114 115 0 114 127 1 115 116 0 115 128 1 116 129 0 117 118 1 117 130 0
		 118 119 1 118 131 1 119 120 1 119 132 1 120 121 1 120 133 1 121 122 1 121 134 1 122 123 1
		 122 135 1 123 124 1 123 136 1 124 125 1 124 137 1 125 126 1 125 138 1 126 127 1 126 139 1
		 127 128 1 127 140 1 128 129 1 128 141 1 129 142 0 130 131 0 131 132 0 132 133 0 133 134 0
		 134 135 0 135 136 0 136 137 0 137 138 0 138 139 0 139 140 0 140 141 0 141 142 0;
	setAttr -s 112 -ch 448 ".fc[0:111]" -type "polyFaces" 
		f 4 0 3 -26 -2
		mu 0 4 0 1 14 13
		f 4 2 5 -28 -4
		mu 0 4 1 2 15 14
		f 4 4 7 -30 -6
		mu 0 4 2 3 16 15
		f 4 6 9 -32 -8
		mu 0 4 3 4 17 16
		f 4 8 11 -34 -10
		mu 0 4 4 5 18 17
		f 4 10 13 -36 -12
		mu 0 4 5 6 19 18
		f 4 12 15 -38 -14
		mu 0 4 6 7 20 19
		f 4 14 17 -40 -16
		mu 0 4 7 8 21 20
		f 4 16 19 -42 -18
		mu 0 4 8 9 22 21
		f 4 18 21 -44 -20
		mu 0 4 9 10 23 22
		f 4 20 23 -46 -22
		mu 0 4 10 11 24 23
		f 4 22 24 -48 -24
		mu 0 4 11 12 25 24
		f 4 25 28 -51 -27
		mu 0 4 13 14 27 26
		f 4 27 30 -52 -29
		mu 0 4 14 15 28 27
		f 4 29 32 -53 -31
		mu 0 4 15 16 29 28
		f 4 31 34 -55 -33
		mu 0 4 16 17 30 29
		f 4 33 36 -57 -35
		mu 0 4 17 18 31 30
		f 4 35 38 -59 -37
		mu 0 4 18 19 32 31
		f 4 37 40 -61 -39
		mu 0 4 19 20 33 32
		f 4 39 42 -63 -41
		mu 0 4 20 21 34 33
		f 4 41 44 -65 -43
		mu 0 4 21 22 35 34
		f 4 43 46 -67 -45
		mu 0 4 22 23 36 35
		f 4 45 48 -69 -47
		mu 0 4 23 24 37 36
		f 4 47 49 -71 -49
		mu 0 4 24 25 38 37
		f 4 52 55 -78 -54
		mu 0 4 28 29 42 41
		f 4 54 57 -80 -56
		mu 0 4 29 30 43 42
		f 4 56 59 -82 -58
		mu 0 4 30 31 44 43
		f 4 58 61 -84 -60
		mu 0 4 31 32 45 44
		f 4 60 63 -86 -62
		mu 0 4 32 33 46 45
		f 4 62 65 -88 -64
		mu 0 4 33 34 47 46
		f 4 64 67 -90 -66
		mu 0 4 34 35 48 47
		f 4 66 69 -92 -68
		mu 0 4 35 36 49 48
		f 4 68 71 -94 -70
		mu 0 4 36 37 50 49
		f 4 70 72 -95 -72
		mu 0 4 37 38 51 50
		f 4 73 76 -96 -75
		mu 0 4 39 40 53 52
		f 4 75 78 -98 -77
		mu 0 4 40 41 54 53
		f 4 77 80 -100 -79
		mu 0 4 41 42 55 54
		f 4 79 82 -102 -81
		mu 0 4 42 43 56 55
		f 4 81 84 -104 -83
		mu 0 4 43 44 57 56
		f 4 83 86 -106 -85
		mu 0 4 44 45 58 57
		f 4 85 88 -108 -87
		mu 0 4 45 46 59 58
		f 4 87 90 -110 -89
		mu 0 4 46 47 60 59
		f 4 89 92 -112 -91
		mu 0 4 47 48 61 60
		f 4 95 98 -121 -97
		mu 0 4 52 53 66 65
		f 4 97 100 -123 -99
		mu 0 4 53 54 67 66
		f 4 99 102 -125 -101
		mu 0 4 54 55 68 67
		f 4 101 104 -127 -103
		mu 0 4 55 56 69 68
		f 4 103 106 -129 -105
		mu 0 4 56 57 70 69
		f 4 105 108 -131 -107
		mu 0 4 57 58 71 70
		f 4 107 110 -133 -109
		mu 0 4 58 59 72 71
		f 4 109 112 -135 -111
		mu 0 4 59 60 73 72
		f 4 111 114 -137 -113
		mu 0 4 60 61 74 73
		f 4 113 116 -139 -115
		mu 0 4 61 62 75 74
		f 4 115 118 -141 -117
		mu 0 4 62 63 76 75
		f 4 117 119 -143 -119
		mu 0 4 63 64 77 76
		f 4 120 123 -146 -122
		mu 0 4 65 66 79 78
		f 4 122 125 -148 -124
		mu 0 4 66 67 80 79
		f 4 124 127 -150 -126
		mu 0 4 67 68 81 80
		f 4 126 129 -152 -128
		mu 0 4 68 69 82 81
		f 4 128 131 -154 -130
		mu 0 4 69 70 83 82
		f 4 130 133 -156 -132
		mu 0 4 70 71 84 83
		f 4 132 135 -158 -134
		mu 0 4 71 72 85 84
		f 4 134 137 -160 -136
		mu 0 4 72 73 86 85
		f 4 136 139 -162 -138
		mu 0 4 73 74 87 86
		f 4 138 141 -164 -140
		mu 0 4 74 75 88 87
		f 4 140 143 -166 -142
		mu 0 4 75 76 89 88
		f 4 142 144 -168 -144
		mu 0 4 76 77 90 89
		f 4 145 148 -171 -147
		mu 0 4 78 79 92 91
		f 4 147 150 -172 -149
		mu 0 4 79 80 93 92
		f 4 149 152 -174 -151
		mu 0 4 80 81 94 93
		f 4 151 154 -176 -153
		mu 0 4 81 82 95 94
		f 4 153 156 -178 -155
		mu 0 4 82 83 96 95
		f 4 155 158 -180 -157
		mu 0 4 83 84 97 96
		f 4 157 160 -182 -159
		mu 0 4 84 85 98 97
		f 4 159 162 -184 -161
		mu 0 4 85 86 99 98
		f 4 161 164 -186 -163
		mu 0 4 86 87 100 99
		f 4 163 166 -188 -165
		mu 0 4 87 88 101 100
		f 4 165 168 -190 -167
		mu 0 4 88 89 102 101
		f 4 167 169 -192 -169
		mu 0 4 89 90 103 102
		f 4 171 174 -195 -173
		mu 0 4 92 93 106 105
		f 4 173 176 -197 -175
		mu 0 4 93 94 107 106
		f 4 175 178 -199 -177
		mu 0 4 94 95 108 107
		f 4 177 180 -201 -179
		mu 0 4 95 96 109 108
		f 4 179 182 -203 -181
		mu 0 4 96 97 110 109
		f 4 181 184 -205 -183
		mu 0 4 97 98 111 110
		f 4 183 186 -207 -185
		mu 0 4 98 99 112 111
		f 4 185 188 -209 -187
		mu 0 4 99 100 113 112
		f 4 187 190 -211 -189
		mu 0 4 100 101 114 113
		f 4 192 195 -218 -194
		mu 0 4 104 105 118 117
		f 4 194 197 -220 -196
		mu 0 4 105 106 119 118
		f 4 196 199 -222 -198
		mu 0 4 106 107 120 119
		f 4 198 201 -224 -200
		mu 0 4 107 108 121 120
		f 4 200 203 -226 -202
		mu 0 4 108 109 122 121
		f 4 202 205 -228 -204
		mu 0 4 109 110 123 122
		f 4 204 207 -230 -206
		mu 0 4 110 111 124 123
		f 4 206 209 -232 -208
		mu 0 4 111 112 125 124
		f 4 208 211 -234 -210
		mu 0 4 112 113 126 125
		f 4 210 213 -236 -212
		mu 0 4 113 114 127 126
		f 4 212 215 -238 -214
		mu 0 4 114 115 128 127
		f 4 214 216 -240 -216
		mu 0 4 115 116 129 128
		f 4 217 220 -243 -219
		mu 0 4 117 118 131 130
		f 4 219 222 -244 -221
		mu 0 4 118 119 132 131
		f 4 221 224 -245 -223
		mu 0 4 119 120 133 132
		f 4 223 226 -246 -225
		mu 0 4 120 121 134 133
		f 4 225 228 -247 -227
		mu 0 4 121 122 135 134
		f 4 227 230 -248 -229
		mu 0 4 122 123 136 135
		f 4 229 232 -249 -231
		mu 0 4 123 124 137 136
		f 4 231 234 -250 -233
		mu 0 4 124 125 138 137
		f 4 233 236 -251 -235
		mu 0 4 125 126 139 138
		f 4 235 238 -252 -237
		mu 0 4 126 127 140 139
		f 4 237 240 -253 -239
		mu 0 4 127 128 141 140
		f 4 239 241 -254 -241
		mu 0 4 128 129 142 141;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 1;
createNode transform -n "span_05" -p "spans";
	rename -uid "453A6ECA-41BA-4926-846E-4EBFADE9294D";
	setAttr ".t" -type "double3" 2.8322950426499744 0.096458218694580988 -3.11106670697745 ;
	setAttr ".rp" -type "double3" -16.22850513458252 0.51293677091598511 2.8847833275794983 ;
	setAttr ".sp" -type "double3" -16.22850513458252 0.51293677091598511 2.8847833275794983 ;
createNode mesh -n "span_Shape5" -p "span_05";
	rename -uid "89A20F32-4B03-5815-ED0A-B1A7B9EA1C41";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" -1.5443239212036133 1.5569672584533691 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 1102 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.30703449 0.526191 0.29969737
		 0.52109522 0.30052438 0.51436037 0.31054226 0.52111697 0.30344608 0.53126621 0.29611358
		 0.5260855 0.30381179 0.50950664 0.31393346 0.51602197 0.31699085 0.53311777 0.32055813
		 0.52787721 0.29982141 0.53636992 0.29361066 0.53203225 0.31339586 0.53828377 0.3068994
		 0.50469255 0.31716824 0.51088417 0.32405406 0.52253956 0.3269476 0.54004562 0.33057332
		 0.53463823 0.29620406 0.54153413 0.28869158 0.53644896 0.30982256 0.54339355 0.32334557
		 0.54530215 0.30974853 0.49990821 0.32020357 0.50568444 0.32743612 0.51707774 0.33417407
		 0.52905756 0.29263458 0.54678184 0.28498539 0.54181653 0.30632505 0.54846787 0.31982437
		 0.55041802 0.31057465 0.49431914 0.32299203 0.50040686 0.33065787 0.51146287 0.33770376
		 0.52327156 0.3028886 0.55360103 0.31644654 0.55540097 0.31282753 0.48958257 0.32548246
		 0.49504045 0.33366469 0.50566804 0.3411119 0.51724148 0.31314367 0.56041974 0.31648478
		 0.48567066 0.32762456 0.48957875 0.33639237 0.49967292 0.34433681 0.51092887 0.31813255
		 0.48070991 0.3294335 0.48395953 0.33876574 0.49348357 0.34730178 0.50430495 0.32190144
		 0.47598571 0.33096609 0.47818688 0.34073555 0.4872058 0.34990698 0.49738798 0.32315198
		 0.4705393 0.33226493 0.47230095 0.34236193 0.48089033 0.35203767 0.49045178 0.32423946
		 0.46492571 0.33337009 0.46633321 0.34370938 0.47456247 0.35375822 0.48359382 0.32285574
		 0.45868805 0.33431605 0.46030504 0.34483242 0.46823767 0.35515422 0.47682425 0.32369253
		 0.45283633 0.33513585 0.45422992 0.34577641 0.46192378 0.35629517 0.47014278 0.32444081
		 0.44689146 0.33585688 0.44811559 0.34657922 0.45562398 0.35723627 0.46354359 0.32512182
		 0.44088289 0.33650318 0.44198781 0.34727314 0.44933873 0.35953906 0.4571757 0.34788498
		 0.44309053 0.36020598 0.45072025 0.3592667 0.44419181 0.62730491 0.21166842 0.6199851
		 0.21678866 0.61650848 0.21179633 0.62650359 0.20500614 0.6308533 0.21657287 0.62353826
		 0.22177806 0.61005175 0.2237487 0.60651541 0.21859011 0.61314571 0.2067817 0.62324572
		 0.20023251 0.63331836 0.2224299 0.62712216 0.22678819 0.61361194 0.22882874 0.60011834
		 0.23070998 0.59652281 0.22538465 0.60304743 0.21333316 0.60993826 0.20172542 0.62018633
		 0.19549936 0.63818717 0.22673708 0.63069159 0.23184727 0.61714458 0.23384511 0.60368562
		 0.23588032 0.59294933 0.2198851 0.59969127 0.20795336 0.60692883 0.19661039 0.61736453
		 0.19079894 0.64184332 0.23199257 0.63421082 0.2369833 0.62059379 0.2388145 0.60716617
		 0.24090298 0.58944458 0.21418151 0.59649408 0.20242395 0.60416496 0.19142236 0.61656177
		 0.18529288 0.62397945 0.24383666 0.61049551 0.24578133 0.58605969 0.20823763 0.59351003
		 0.19671933 0.60169679 0.18615149 0.61433327 0.18065095 0.6137473 0.25068942 0.58285558
		 0.20201613 0.59080249 0.19082059 0.59957266 0.18078986 0.6106993 0.17684442 0.57990861
		 0.19548936 0.58844459 0.18473214 0.59777343 0.17526539 0.60906339 0.17197773 0.57731658
		 0.18867412 0.58648229 0.17854972 0.59624314 0.16957964 0.60530031 0.16734798 0.57519114
		 0.18183368 0.58485645 0.17232144 0.59494126 0.16377427 0.60404825 0.16198188 0.57346934
		 0.17506319 0.58350444 0.16607431 0.59382951 0.15788281 0.6029554 0.15644455 0.57206726
		 0.16837461 0.58237362 0.15982577 0.59287423 0.15192863 0.60432911 0.1502731 0.57091731
		 0.16176942 0.58141953 0.15358593 0.59204376 0.14592737 0.60348213 0.14449534 0.56996524
		 0.15524442 0.58060497 0.14735997 0.5913108 0.1398887 0.60272253 0.13862634 0.5676505
		 0.14895527 0.57989848 0.14115037 0.59065187 0.13384034 0.60202944 0.13269712 0.56697047
		 0.14257541 0.57927376 0.1349813 0.56789595 0.13612106 0.4697749 0.0053486228 0.46987876
		 0.0047038794 0.47388369 0.0052115321 0.47382236 0.0058585405 0.46575966 0.004550457
		 0.46591377 0.0039128065 0.47907656 0.005648911 0.47904745 0.0062951446 0.48255053
		 0.0057165623 0.48255414 0.006360352 0.48528185 0.0056363344 0.48531547 0.0062762499
		 0.48746741 0.0054730177 0.48752809 0.0061078072 0.49012983 0.0051677823 0.49021262
		 0.0057969093 0.49337429 0.0046932101 0.4934738 0.0053168535 0.49793741 0.0039092302
		 0.49804798 0.0045278668 0.72224236 0.046637416 0.72289228 0.046639264 0.72258878
		 0.055876613 0.72194302 0.055839777 0.72197294 0.037611544 0.72262478 0.037572801
		 0.7218405 0.064882696 0.72120035 0.064813375 0.72115272 0.029236615 0.72180301 0.029149175
		 0.72061092 0.074250102 0.71997774 0.074152172 0.71963042 0.020836949 0.72027272 0.020688951
		 0.71881133 0.084406435 0.71818602 0.084282041 0.71725905 0.012514979 0.71788538 0.012299567
		 0.7168014 0.093640089 0.71618366 0.093494773 0.71388459 0.0041915178 0.7144866 0.0039084256
		 0.71451032 0.10281467 0.71389973 0.10265344 0.55686355 0.014030695 0.55746067 0.014155209
		 0.55656153 0.026058316 0.55595624 0.026101828 0.5597204 0.0039086938 0.56030047 0.004107058
		 0.55628508 0.037354231 0.55571973 0.037565112 0.55724609 0.046271503 0.55671436 0.046549678
		 0.38875961 0.0039112568 0.38846755 0.004427433 0.37903357 0.0044260025 0.37932545
		 0.0039096475 0.95424902 0.4395535 0.95339298 0.43967426 0.95323789 0.43414044 0.9540987
		 0.43419695 0.95394528 0.42840028 0.95479381 0.42852974 0.95488417 0.42258894 0.95572525
		 0.42272627 0.95583832 0.41665316 0.95668012 0.41678596 0.95676452 0.41065633 0.95760417
		 0.41078401 0.95767045 0.40463305 0.95850766 0.40475762 0.95857584 0.39852452 0.95941013
		 0.39864743 0.95947278 0.39240885 0.96030438 0.39252996 0.96036363 0.38627219 0.96119237
		 0.3863914 0.96125013 0.38009632 0.96207595 0.38021362 0.96213728 0.37385356 0.96296006
		 0.37396967 0.96301222 0.36765862 0.96383196 0.36777329 0.96387982 0.36147809 0.96469635
		 0.36159158 0.96473837 0.35533237 0.96555156 0.35544491 0.96558774 0.3492322 0.9663977
		 0.3493439;
	setAttr ".uvst[0].uvsp[250:499]" 0.96642989 0.34318852 0.9672364 0.34330034
		 0.96726954 0.3372097 0.96807241 0.33732224 0.96811378 0.33129334 0.9689129 0.3314079
		 0.96897233 0.32542002 0.96976811 0.3255378 0.96985513 0.31953448 0.97064817 0.31965327
		 0.97076511 0.31345099 0.97155577 0.31356835 0.97168952 0.307199 0.97247756 0.3073144
		 0.97262353 0.30080414 0.97340888 0.30091774 0.97356641 0.29427612 0.9743489 0.29438782
		 0.9745189 0.2876119 0.97529852 0.28772205 0.97548378 0.2808013 0.97626024 0.28090996
		 0.97646457 0.27383226 0.97723806 0.27394009 0.97746944 0.26670015 0.9782396 0.26680857
		 0.9785161 0.25943941 0.97928268 0.25955218 0.9795711 0.25231361 0.98033464 0.25242725
		 0.98059797 0.24536586 0.98135895 0.24547809 0.98159313 0.23856872 0.98235136 0.23867932
		 0.98256052 0.23189938 0.98331606 0.23200864 0.98350728 0.22533862 0.98425984 0.22544681
		 0.98444474 0.21866865 0.98519415 0.21877538 0.98534465 0.21228158 0.98609364 0.21238592
		 0.98626864 0.20579202 0.9870103 0.20589358 0.98713547 0.19950978 0.98787582 0.19961213
		 0.98799217 0.19336323 0.98872924 0.19346631 0.98888081 0.18713377 0.98961484 0.18723874
		 0.98978698 0.18078823 0.99052036 0.18089244 0.99077386 0.17403601 0.99150026 0.17413829
		 0.9917137 0.16742504 0.99243903 0.16752855 0.99267995 0.16042817 0.99340212 0.16052978
		 0.99365324 0.15349126 0.99437255 0.15358999 0.99462754 0.14632066 0.99534363 0.14640972
		 0.99537355 0.13885891 0.99609375 0.13889068 0.99513316 0.13094896 0.99583298 0.13085073
		 0.99322236 0.12291297 0.9939031 0.12270677 0.9905594 0.11524457 0.99122643 0.11500067
		 0.5816673 0.058580786 0.57933891 0.065033779 0.98777974 0.10780185 0.98844278 0.10755396
		 0.58475798 0.052491441 0.59165788 0.062876403 0.58982956 0.068069696 0.98505038 0.10052747
		 0.98571068 0.10028005 0.58848053 0.046832323 0.59412992 0.057915449 0.60032123 0.071103886
		 0.60164905 0.067170739 0.98234093 0.093340993 0.98299754 0.093092084 0.59271646 0.041609421
		 0.59719092 0.053185612 0.60350257 0.063338071 0.97966427 0.086280823 0.98031801 0.086033046
		 0.59737462 0.036815375 0.600757 0.048721254 0.60484725 0.058720261 0.97699946 0.079247415
		 0.97765034 0.079000711 0.60239267 0.032442033 0.60474563 0.044555068 0.60774487 0.055013329
		 0.97428983 0.072144687 0.97493702 0.071897149 0.60773426 0.02848956 0.60908568 0.04071483
		 0.61211622 0.052295208 0.97157264 0.065041006 0.97221673 0.064793646 0.6133824 0.024974287
		 0.61372274 0.037229329 0.61577892 0.048987865 0.96868503 0.057373524 0.96932811 0.057132363
		 0.61930978 0.02194497 0.61861414 0.034133494 0.61971182 0.045969009 0.96597493 0.050108194
		 0.96661586 0.049869895 0.6255694 0.019439757 0.62370378 0.03148219 0.62384707 0.043291807
		 0.96328819 0.042861462 0.96392661 0.042625308 0.63202232 0.017555326 0.62901282 0.029310226
		 0.62742239 0.039179474 0.96061414 0.035607576 0.96125042 0.035373807 0.6386205 0.01629284
		 0.63449448 0.027664781 0.63178349 0.037340015 0.95781696 0.027961731 0.95845187 0.027732849
		 0.64531267 0.015656799 0.64012265 0.026544571 0.63629627 0.03593272 0.95521343 0.020535946
		 0.95585513 0.020331025 0.6520142 0.015661836 0.64583766 0.025957942 0.6416223 0.03679654
		 0.95318985 0.012265563 0.95385534 0.012188077 0.65873653 0.016341805 0.65154141 0.025918901
		 0.64636064 0.036259115 0.95342445 0.0039093494 0.95408469 0.0039908886 0.66539729
		 0.017761171 0.6572091 0.026448309 0.65092373 0.037896723 0.67190695 0.020015955 0.66272897
		 0.027579606 0.65553635 0.03827548 0.66798264 0.029352546 0.67811823 0.023227036 0.6834178
		 0.014651954 0.6600619 0.037398219 0.6640594 0.038689435 0.67281979 0.031803012 0.68376935
		 0.027430654 0.68860132 0.021581471 0.66752267 0.040379763 0.67717183 0.034990013
		 0.68865114 0.03244251 0.69452995 0.027725697 0.67057538 0.042550862 0.68100852 0.038870275
		 0.69271272 0.038105488 0.70117515 0.032890499 0.67565948 0.043825865 0.68424994 0.043319881
		 0.69589651 0.044286311 0.70748687 0.0393489 0.678083 0.04706347 0.68680304 0.048184216
		 0.69812793 0.050947428 0.70767981 0.048554659 0.68000638 0.05061394 0.68857592 0.053340435
		 0.6992054 0.058026493 0.70898938 0.057463527 0.67902344 0.055732191 0.68942094 0.058589995
		 0.69875365 0.065422118 0.70623791 0.066470981 0.67963624 0.059152722 0.68916124 0.063653708
		 0.69632643 0.072611332 0.70291424 0.07620579 0.67956877 0.061884761 0.68763006 0.068297386
		 0.69221836 0.078763723 0.69957727 0.085022151 0.67893416 0.063982904 0.68485802 0.072505653
		 0.68697411 0.083726943 0.69375581 0.092450202 0.67749894 0.066246867 0.68106836 0.076139629
		 0.68098897 0.087542892 0.68543369 0.096014857 0.6751647 0.068551719 0.67654055 0.079071403
		 0.67447513 0.090261877 0.67741525 0.099316895 0.67300195 0.072647929 0.67152941 0.081207871
		 0.66753751 0.091827095 0.66862053 0.099820822 0.6694923 0.07420063 0.6662814 0.082435846
		 0.6602838 0.092004627 0.65953755 0.1014021 0.66502321 0.073047042 0.66101897 0.082606196
		 0.65316039 0.090630621 0.6512177 0.097110361 0.66175687 0.073211938 0.65588349 0.081658602
		 0.6464209 0.087674111 0.6417318 0.095742822 0.65942985 0.071908683 0.65111035 0.079608083
		 0.64047599 0.083001286 0.63273752 0.090354115 0.65663511 0.070787221 0.64718008 0.076570839
		 0.63610417 0.076183081 0.62747228 0.079492807 0.6547271 0.069435805 0.64472866 0.072842449
		 0.63634801 0.068027169 0.63109678 0.068680584 0.65418845 0.068865627 0.64480478 0.068158329
		 0.63922197 0.061203003 0.63171804 0.059814006 0.65408194 0.067656279 0.64666563 0.062704414
		 0.64439952 0.053994089 0.63860446 0.049872398 0.65415138 0.064197451 0.80991006 0.019948095
		 0.80973327 0.018933401 0.64858907 0.059776545 0.65000594 0.048807144 0.64324236 0.04903385
		 0.65627766 0.059236914 0.80990642 0.015498489 0.6507268 0.05787915 0.65938175 0.053991258
		 0.80988628 0.010004535;
	setAttr ".uvst[0].uvsp[500:749]" 0.80987799 0.0039095879 0.0039163809 0.66590118
		 0.0041625104 0.66507328 0.019163735 0.66832227 0.019086462 0.66917938 0.025789596
		 0.66844803 0.025823843 0.66930491 0.032137468 0.66788048 0.032251969 0.66872728 0.038469039
		 0.66680306 0.038643613 0.66763645 0.044734582 0.66530812 0.044956699 0.66612703 0.050840616
		 0.66347086 0.051102519 0.66427481 0.057135418 0.66124856 0.057431251 0.66203737 0.062843695
		 0.658961 0.063173532 0.65973294 0.068852291 0.65626717 0.069212705 0.65702188 0.07427147
		 0.65352488 0.074665532 0.6542592 0.07958582 0.65049624 0.080016553 0.65120608 0.08511737
		 0.64696044 0.08558616 0.64764202 0.090061113 0.64330173 0.090575561 0.64394581 0.09472847
		 0.63925081 0.095293164 0.63984692 0.099030554 0.63476515 0.099649161 0.63530052 0.10312122
		 0.62944651 0.1037913 0.62991077 0.10636935 0.62404728 0.10709172 0.62441814 0.10914224
		 0.61759102 0.10990313 0.6178658 0.11086187 0.61142713 0.11165223 0.61158502 0.11166134
		 0.60498017 0.11246294 0.60502797 0.11167371 0.59862942 0.11247203 0.59857959 0.11095324
		 0.59262168 0.11173785 0.59248257 0.10953298 0.58606416 0.11029801 0.58585227 0.10770276
		 0.5805828 0.10843858 0.58029342 0.10536847 0.5754534 0.10606703 0.57508922 0.10257605
		 0.57073545 0.10322806 0.57029897 0.099271119 0.56625849 0.099869311 0.56575525 0.095723808
		 0.56252563 0.096253693 0.56195509 0.091629565 0.55921853 0.092086136 0.55859154 0.087302089
		 0.55645567 0.087678581 0.55578119 0.081931114 0.5538584 0.082236975 0.55315244 0.076770455
		 0.55192977 0.077002257 0.55119932 0.071315587 0.5504849 0.071475238 0.54973853 0.065090835
		 0.54937983 0.06518434 0.54862529 0.059268624 0.54893476 0.059290275 0.54817772 0.053352103
		 0.54905057 0.053300038 0.54829806 0.047425777 0.5497638 0.047296949 0.54902369 0.041242853
		 0.55121309 0.041035719 0.55049413 0.035366572 0.55330807 0.035076283 0.55262196 0.029853068
		 0.55606353 0.029480718 0.55542177 0.024682276 0.5594511 0.024240121 0.55885899 0.020129535
		 0.5632633 0.019626629 0.56272608 0.01586609 0.56762868 0.015312692 0.56714833 0.012404656
		 0.57206935 0.011805968 0.57165194 0.0095277783 0.57671034 0.008889934 0.57636213
		 0.0072291377 0.58146489 0.0065588914 0.58119208 0.0056631649 0.58611435 0.004966801
		 0.58592939 0.0048166467 0.59062624 0.004104699 0.59053767 0.0046203639 0.59477264
		 0.0039062276 0.59479451 0.0050622365 0.59900665 0.0043617073 0.59912968 0.33710149
		 0.375269 0.33521813 0.36997795 0.0062169167 0.60367513 0.0055391178 0.60388047 0.33268335
		 0.36493436 0.34758183 0.37219772 0.34519428 0.36564884 0.0078324042 0.60809338 0.0071840291
		 0.6083709 0.3295576 0.36014014 0.3420369 0.35947883 0.35625795 0.36968115 0.35517094
		 0.36132115 0.010052769 0.6127367 0.009436598 0.61307329 0.32592753 0.35562736 0.33824664
		 0.35375762 0.35139087 0.35402387 0.012614541 0.61695415 0.012034079 0.61734378 0.32187662
		 0.35142487 0.33394408 0.34848851 0.34693575 0.34737495 0.01555546 0.62094516 0.015014011
		 0.6213823 0.31747547 0.34755725 0.32922164 0.34366041 0.34196085 0.34134942 0.018814616
		 0.62463856 0.018316109 0.62511986 0.31277734 0.34405085 0.32414061 0.33926201 0.33519909
		 0.33763134 0.022798523 0.6283555 0.022345409 0.62887561 0.30782354 0.34093881 0.3187364
		 0.33529103 0.32943729 0.33270073 0.026515737 0.631284 0.026118752 0.63184428 0.30266777
		 0.33827558 0.31302446 0.33176222 0.32332534 0.3282643 0.030500539 0.63382536 0.030161068
		 0.63441885 0.2972874 0.33609599 0.30702966 0.32872373 0.31822541 0.32258594 0.035266079
		 0.63635516 0.034979962 0.63697267 0.2917366 0.33445033 0.30069765 0.32621396 0.31139177
		 0.31917137 0.039676815 0.63816774 0.03944698 0.63880515 0.28604344 0.33333737 0.29417473
		 0.32433265 0.3043718 0.31488413 0.044289723 0.63966072 0.044112548 0.64031166 0.28026724
		 0.33276418 0.28751108 0.3230806 0.29687715 0.31276736 0.048803449 0.64068407 0.048683867
		 0.6413449 0.27450567 0.33274442 0.28075752 0.3224614 0.28924346 0.31137663 0.053375006
		 0.64127988 0.053311646 0.64194524 0.26878172 0.3332988 0.27399832 0.32248899 0.28151301
		 0.31071141 0.057571277 0.64147729 0.057574064 0.64214265 0.26320598 0.33446145 0.26722023
		 0.32319748 0.2734912 0.31223381 0.061418667 0.64125681 0.06149444 0.64191473 0.25789598
		 0.33627373 0.26050478 0.32465202 0.26565948 0.31309634 0.065109834 0.64061886 0.065256268
		 0.64126158 0.25300199 0.3387742 0.25394037 0.32695046 0.25719899 0.31317568 0.24860273
		 0.34201899 0.24767475 0.33021611 0.24938092 0.31596002 0.25010228 0.35089329 0.24473649
		 0.34595579 0.24197981 0.33448187 0.24234641 0.32165897 0.24765992 0.35418028 0.24148051
		 0.35045737 0.23707236 0.33955365 0.23712827 0.3286489 0.24572903 0.35777491 0.23892431
		 0.35536802 0.23300035 0.34527153 0.23117766 0.33485666 0.24671774 0.36292464 0.23715733
		 0.36056501 0.22981775 0.35150063 0.22452033 0.34008491 0.236325 0.36584985 0.24611147
		 0.36637962 0.22759703 0.35820407 0.21821086 0.3466022 0.22653867 0.36531919 0.24619006
		 0.36914155 0.23660356 0.3709428 0.21803725 0.35584339 0.21675275 0.3647891 0.22701728
		 0.37274331 0.24684051 0.37126356 0.23815911 0.37560722 0.21953645 0.37381732 0.22947735
		 0.37995023 0.24829593 0.3735415 0.2409576 0.37982488 0.22290146 0.38356686 0.23361827
		 0.38610756 0.25065041 0.3758505 0.24477223 0.38345811 0.2262803 0.39239061 0.23889159
		 0.39106512 0.25283843 0.37994677 0.24932098 0.38638204 0.23213919 0.39981103 0.24490055
		 0.39486825 0.25636342 0.38149196 0.25434929 0.388506 0.24048418 0.40335494 0.25143334
		 0.3975696 0.2608383 0.38032585 0.25961035 0.38971862 0.24852329 0.40663448 0.258385
		 0.39911395 0.26411146 0.38048035 0.26487944 0.3898719 0.25732839 0.40711135 0.26564494
		 0.39926785 0.26642653 0.37917146 0.27000368 0.38890919;
	setAttr ".uvst[0].uvsp[750:999]" 0.26642174 0.40866286 0.27275512 0.39787233
		 0.26918849 0.3780545 0.27474093 0.38685581 0.27471837 0.40434575 0.27945524 0.39490741
		 0.27103278 0.37674469 0.27860191 0.38385272 0.2841692 0.40296191 0.28532559 0.39026397
		 0.27148059 0.37631345 0.28095177 0.38026008 0.29308644 0.39759362 0.28958634 0.38357621
		 0.27155516 0.37529472 0.28083387 0.37576601 0.29822838 0.38686028 0.28929055 0.37560791
		 0.27148995 0.37190866 0.27897117 0.37039059 0.29454437 0.3762444 0.28640968 0.36886343
		 0.2693578 0.36697212 0.27705666 0.36747488 0.29390973 0.36745155 0.2812402 0.36167043
		 0.26622388 0.36172861 0.27489662 0.36557627 0.28703791 0.35753125 0.2755796 0.35650542
		 0.28234154 0.35667431 0.55926788 0.058599114 0.52893573 0.01123634 0.52893579 0.0041130781
		 0.24880342 0.61492211 0.23666735 0.60714185 0.24135029 0.60275 0.25217009 0.6097154
		 0.24543419 0.6201843 0.2344818 0.61325538 0.24684715 0.59889376 0.2555669 0.60449129
		 0.25970513 0.62184691 0.26300332 0.61666459 0.24208017 0.62550914 0.23206322 0.61926913
		 0.25642639 0.62704927 0.25026318 0.59373116 0.25894552 0.59930277 0.26634663 0.61143905
		 0.27058253 0.62882543 0.27382401 0.62364352 0.23875146 0.63086665 0.22862047 0.62471795
		 0.25319779 0.63226134 0.26736701 0.63400865 0.25159696 0.58724535 0.26230657 0.59413052
		 0.26968515 0.60622793 0.27711961 0.61840296 0.23545666 0.63634467 0.2241343 0.62973064
		 0.25153267 0.63458312 0.26419476 0.63917267 0.25495303 0.5821349 0.26564905 0.58895606
		 0.27301842 0.60101348 0.28042099 0.6131618 0.23130621 0.64640033 0.2176975 0.64384836
		 0.2496568 0.63758409 0.2611959 0.64430797 0.25831354 0.57697034 0.26899928 0.58372134
		 0.2763463 0.59577614 0.28372809 0.60790128 0.24787071 0.64079654 0.25836742 0.64938921
		 0.2596496 0.57049417 0.27232337 0.57848543 0.27968541 0.59047228 0.28704211 0.60259914
		 0.25587827 0.65432322 0.26300481 0.56526929 0.27565008 0.57321906 0.28299013 0.58518052
		 0.29037076 0.59722501 0.26637822 0.56000853 0.27898279 0.56793618 0.28628758 0.5798738
		 0.2936562 0.59187651 0.26978442 0.55471313 0.28233302 0.5626424 0.28957874 0.57457006
		 0.2969245 0.5865289 0.27525231 0.55067521 0.28571475 0.55734557 0.2928727 0.56927902
		 0.30017433 0.58120388 0.27877605 0.54532242 0.289143 0.552055 0.29617971 0.56401271
		 0.30341187 0.57591516 0.29951322 0.55878335 0.30664474 0.57067913 0.30988356 0.56551105
		 0.68993431 0.29646629 0.67782485 0.30428767 0.6744644 0.29912874 0.68526077 0.29212704
		 0.6921128 0.30252928 0.68118429 0.3094959 0.66694605 0.31124821 0.66365427 0.30611381
		 0.67107219 0.29394946 0.67977285 0.28832301 0.69451833 0.30848157 0.68452299 0.31475687
		 0.67021459 0.31639671 0.65609217 0.31826305 0.65285712 0.3131288 0.66031545 0.30093288
		 0.66769671 0.28880405 0.67636037 0.28320345 0.69793773 0.3138487 0.68782842 0.32003397
		 0.67342752 0.32154527 0.65929759 0.3233926 0.64956576 0.30793288 0.65698022 0.29576465
		 0.66433901 0.28367445 0.67502558 0.27675369 0.70238352 0.31874725 0.69108486 0.32540181
		 0.67506105 0.32379764 0.66245395 0.32849294 0.64626753 0.30273432 0.6536501 0.29059285
		 0.66100037 0.27854395 0.67167366 0.27168736 0.80357319 0.050962865 0.69518745 0.33529246
		 0.67688996 0.3266961 0.66542548 0.33354983 0.64296335 0.29751635 0.65032607 0.28539965
		 0.65765655 0.27335745 0.6683197 0.26657104 0.80270964 0.050971746 0.80277354 0.037117839
		 0.67860383 0.32975253 0.66821015 0.33852461 0.63965291 0.29225814 0.64699304 0.28014398
		 0.65434217 0.26817551 0.66698951 0.260142 0.80337775 0.019594133 0.67063272 0.34329948
		 0.63633025 0.2869322 0.64369774 0.27490601 0.65102953 0.26297021 0.66364831 0.2549783
		 0.80266869 0.0039185286 0.63305408 0.28163728 0.64041424 0.26966026 0.64771634 0.25775689
		 0.66029435 0.24978745 0.62979954 0.27635089 0.6371423 0.26442608 0.64439172 0.252543
		 0.65691394 0.24457192 0.62656897 0.27109513 0.63387436 0.25921461 0.64104319 0.24733683
		 0.6514833 0.2406317 0.62335718 0.2658858 0.63060057 0.25403884 0.63765544 0.24214748
		 0.64799994 0.23538059 0.62015766 0.26074001 0.62730789 0.24891038 0.61695981 0.25567245
		 0.32748067 0.43489885 0.33710882 0.43576607 0.32933623 0.42884731 0.33768788 0.4295716
		 0.34845027 0.43679613 0.32995632 0.42261845 0.3382645 0.42331371 0.34898436 0.43057927
		 0.35979193 0.43782523 0.32929772 0.41638374 0.33879852 0.41709173 0.3495172 0.42428651
		 0.36028153 0.43158609 0.32978156 0.41038144 0.33924919 0.4109022 0.350014 0.41795346
		 0.36077031 0.42525896 0.32842103 0.40435424 0.33956924 0.4047448 0.35043034 0.41157335
		 0.36122954 0.41881454 0.32860053 0.3986485 0.33970904 0.39866212 0.35071737 0.40513787
		 0.35948899 0.41217077 0.32855883 0.39310861 0.33961007 0.39262 0.35081792 0.39867753
		 0.35974303 0.40545467 0.32700062 0.387977 0.33920035 0.38666874 0.35066167 0.39213341
		 0.36192629 0.39869449 0.32636648 0.3830198 0.33839595 0.38085952 0.35015652 0.38552505
		 0.36171293 0.39164722 0.34918195 0.37886494 0.36111227 0.38438079 0.35996723 0.37686867
		 0.59003359 0.12770474 0.59965867 0.12680516 0.5786956 0.12877309 0.58944201 0.12160334
		 0.59779119 0.12085088 0.56735736 0.12984027 0.57814896 0.12264895 0.58885288 0.11544031
		 0.59715855 0.11471701 0.56685531 0.12369391 0.57760358 0.11645103 0.58830523 0.10930683
		 0.59780359 0.10856691 0.56635386 0.11746132 0.57709271 0.1102063 0.58783966 0.10320073
		 0.59730536 0.10264805 0.56588018 0.11110523 0.57666087 0.10390951 0.58750284 0.097123027
		 0.59864962 0.096695036 0.56760412 0.10453739 0.57635623 0.097553596 0.58734417 0.091118395
		 0.59845275 0.091067508 0.56733149 0.097900935 0.57623553 0.091171332 0.58742142 0.085155383;
	setAttr ".uvst[0].uvsp[1000:1101]" 0.59847438 0.085606828 0.56512725 0.091225661
		 0.57636833 0.084706038 0.58780521 0.079286605 0.60000932 0.08055377 0.56531549 0.084257066
		 0.57684517 0.078179747 0.58857739 0.073565483 0.60061407 0.075685173 0.56588566 0.077072471
		 0.57778466 0.071607172 0.56699258 0.069647245 0.4137941 0.0092028379 0.41313607 0.0091658235
		 0.41313642 0.003924787 0.41379231 0.0039095879 0.97641492 0.003935039 0.97704589
		 0.0039094687 0.97730833 0.012975156 0.9766801 0.012987316 0.97739887 0.021661818
		 0.9767735 0.021663189 0.97734869 0.030488074 0.97672635 0.030480206 0.97718126 0.039722443
		 0.9765622 0.039708853 0.97703099 0.049091756 0.97641492 0.049086332 0.97715533 0.058674455
		 0.97654271 0.058699906 0.59266186 0.01078403 0.59265059 0.011412382 0.58881837 0.011376917
		 0.58881867 0.010751426 0.58421063 0.011391938 0.58420289 0.010769725 0.58094692 0.011455417
		 0.58093321 0.010836363 0.57829219 0.011657178 0.57828671 0.011041045 0.57528538 0.011630177
		 0.5753119 0.011017621 0.57295638 0.011435032 0.57305843 0.010833561 0.57218289 0.011301577
		 0.5724417 0.010752678 0.55983734 0.058289826 0.56034857 0.063335836 0.5598045 0.063572168
		 0.28495777 0.0044761896 0.28513399 0.0039096475 0.29458261 0.0039115548 0.29440653
		 0.0044779181 0.52837896 0.0039088577 0.80928487 0.0039197505 0.80363703 0.037108958
		 0.80424142 0.019585252 0.52837878 0.01103209 0.80353224 0.0039096475 0.80928969 0.010001242
		 0.80930662 0.015513971 0.80913639 0.019022584 0.80936944 0.020224079 0.25522467 0.34955758
		 0.25832814 0.34733322 0.26185063 0.34559736 0.67642945 0.0090103149 0.26590604 0.34427091
		 0.66866446 0.0062738061 0.27049434 0.34512025 0.66026348 0.0062355995 0.27516347
		 0.34472016 0.65248686 0.0054050088 0.27977893 0.34306705 0.64451766 0.003909409 0.28457826
		 0.34359419 0.63684869 0.0045948029 0.28996259 0.34272423 0.62928098 0.0059992373
		 0.29454365 0.34413499 0.62185723 0.0081225038 0.2989749 0.34598529 0.61491555 0.012407362
		 0.30262128 0.35011476 0.60815054 0.015815645 0.30681777 0.35281059 0.6031217 0.021478385
		 0.31081021 0.35585272 0.59707415 0.025898606 0.3145321 0.35918975 0.59137696 0.030806452
		 0.31896091 0.36194295 0.58467579 0.034497276 0.32191992 0.36570063 0.57976997 0.0404789
		 0.32332915 0.37038845 0.57538599 0.04706797 0.32524157 0.37430587 0.57167614 0.054286852
		 0.32662019 0.37833846 0.57065445 0.06254635 0.70878661 0.33269203;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 712 ".vt";
	setAttr ".vt[0:165]"  -18.57839203 -1.43489802 2.052803516 -18.60712814 -1.43489802 2.036645412
		 -18.84409332 -0.01110363 2.42366648 -18.81535721 -0.01110363 2.43982434 -18.4598999 -1.418365 1.8870908
		 -18.48477745 -1.41790688 1.86564064 -18.51875496 0.080228083 1.9370383 -18.49387741 0.079770021 1.95848846
		 -18.30701065 -1.40749431 1.73338759 -18.32876396 -1.40686917 1.70893157 -18.33967018 0.041201212 1.7565577
		 -18.31791687 0.040576048 1.78101385 -18.13329506 -1.40070736 1.59377515 -18.15257645 -1.40002537 1.56747234
		 -18.14767265 0.043162629 1.60219133 -18.12839127 0.042480625 1.62849426 -17.94419861 -1.39673388 1.46594095
		 -17.96144485 -1.39603949 1.43839729 -17.9458828 0.088018313 1.46606493 -17.92863655 0.087323956 1.49360871
		 -17.74510002 -1.3947196 1.34964311 -17.76061058 -1.39403248 1.3212173 -17.73670387 0.14202379 1.34472454
		 -17.72119331 0.14133668 1.37315047 -17.5390358 -1.39400685 1.24411082 -17.55300713 -1.3933357 1.21502495
		 -17.52600098 0.080115512 1.23604977 -17.51202965 0.079444416 1.26513565 -17.32507706 -1.39412141 1.1475234
		 -17.33761024 -1.39347041 1.11791408 -17.31127167 -0.019250952 1.1376946 -17.29874039 -0.019901991 1.16730392
		 -17.10666466 -1.39460945 1.060775638 -17.1178112 -1.39397979 1.030740619 -17.091821671 -0.025029637 1.050546408
		 -17.080675125 -0.025659375 1.080581427 -16.88386536 -1.39507902 0.98362744 -16.89362144 -1.39447021 0.953233
		 -16.86769867 0.063175678 0.97411019 -16.85794258 0.062566847 1.0045046806 -16.65640259 -1.39512467 0.91633022
		 -16.66469193 -1.39453471 0.88562292 -16.64400101 0.057897978 0.90794349 -16.63571167 0.057307988 0.93865079
		 -16.4235096 -1.39438915 0.85982132 -16.43013954 -1.39381492 0.82883197 -16.41549683 0.053361759 0.85251546
		 -16.40886497 0.052787516 0.88350475 -16.18970108 -1.39301574 0.8170017 -16.19441032 -1.39245427 0.78578001
		 -16.18242073 0.14064051 0.81044644 -16.17771339 0.14007901 0.84166813 -15.95427322 -1.39137101 0.7898224
		 -15.95672607 -1.39082146 0.75845951 -15.94698048 0.13697697 0.78328854 -15.94452763 0.13642748 0.81465137
		 -15.7189312 -1.3898828 0.78105658 -15.7187376 -1.38934886 0.74971449 -15.7086153 0.13314126 0.7744382
		 -15.7088089 0.13260736 0.80578029 -15.48565865 -1.38906968 0.79370987 -15.48237801 -1.38856292 0.76265579
		 -15.46866322 0.12859164 0.78749055 -15.47194386 0.12808482 0.81854463 -15.25736141 -1.38953364 0.83085281
		 -15.25055027 -1.38907814 0.80049616 -15.23117447 0.031467218 0.82616144 -15.23798561 0.031011663 0.85651815
		 -15.0378685 -1.39192438 0.89511085 -15.02717495 -1.39156151 0.86601752 -14.99656677 0.023414712 0.89491343
		 -15.0072603226 0.023051905 0.92400676 -14.83157158 -1.39686024 0.98796904 -14.81686878 -1.396649 0.96081227
		 -14.78003979 -0.10926291 0.99284977 -14.79474354 -0.10947412 1.020006657 -14.64258289 -1.40482593 1.10922956
		 -14.62407207 -1.40483344 1.084654808 -14.57097816 -0.12367748 1.12711108 -14.58948898 -0.12366992 1.15168583
		 -14.47299004 -1.41594028 1.25727427 -14.45129204 -1.41620862 1.23562908 -14.38993645 -0.19656786 1.28685176
		 -14.4116354 -0.19629949 1.30849695 -14.31941795 -1.42889392 1.43227947 -14.29529476 -1.42941296 1.4135679
		 -14.22821808 -0.16005318 1.46879721 -14.25234032 -0.15953414 1.48750877 -14.18391895 -1.44128942 1.62965441
		 -14.15794086 -1.44202054 1.61384881 -14.096092224 -0.17741218 1.66166115 -14.12207031 -0.1766811 1.67746663
		 -14.068155289 -1.45088732 1.84562635 -14.040748596 -1.45177531 1.83273089 -13.9800148 -0.069764689 1.86663818
		 -14.0074205399 -0.068876691 1.87953365 -13.97365475 -1.45552194 2.077386618 -13.94516563 -1.45649636 2.06746006
		 -13.895854 -0.078940198 2.07375598 -13.92434311 -0.077965736 2.083682537 -13.90225887 -1.45295072 2.32271719
		 -13.87299347 -1.45392036 2.31587815 -13.83510971 -0.081680946 2.28342485 -13.86437416 -0.080711268 2.29026413
		 -13.85638332 -1.44072449 2.57946754 -13.82665825 -1.44156778 2.57588506 -13.79796696 -0.076564878 2.49265647
		 -13.82769203 -0.075721629 2.49623895 -13.83908176 -1.41614544 2.84490585 -13.80925083 -1.41669917 2.84477377
		 -13.78193283 0.010804377 2.68920016 -13.81176472 0.011358146 2.68933225 -13.85375595 -1.37641013 3.1149714
		 -13.82424068 -1.37646306 3.11845517 -13.79283428 0.03530651 2.88762712 -13.82234955 0.035359427 2.88414335
		 -13.90317726 -1.31926286 3.38285995 -13.8744545 -1.31856942 3.38999629 -13.83046436 -0.0022325222 3.085031986
		 -13.85918713 -0.0029259776 3.077895641 -13.98439693 -1.24738455 3.63385224 -13.95684052 -1.2457974 3.64422631
		 -13.89007854 0.045839496 3.26929021 -13.91763592 0.044252437 3.25891614 -14.091504097 -1.16559303 3.86394787
		 -14.065349579 -1.16305733 3.87707043 -13.98209858 0.019295022 3.4791584 -14.0082530975 0.016759299 3.46603608
		 -14.21997547 -1.077530265 4.073184967 -14.19538975 -1.074031353 4.088650227 -14.087625504 0.08678259 3.65177536
		 -14.11221123 0.083283722 3.6363101 -14.36646175 -0.98602194 4.26200294 -14.34358406 -0.98156077 4.27949047
		 -14.21310997 0.16025943 3.81449318 -14.23598671 0.15579827 3.79700565 -14.52856541 -0.8933354 4.43076706
		 -14.50754166 -0.88791418 4.45002651 -14.34844875 0.32310799 3.93548465 -14.3694725 0.31768674 3.91622496
		 -14.71256447 -0.85363632 4.60398006 -14.69356823 -0.84725243 4.62481213 -14.50924206 0.40207377 4.072678089
		 -14.52823925 0.39568987 4.051846027 -14.90115356 -0.76436681 4.7322135 -14.88440323 -0.75701255 4.75444508
		 -14.68613815 0.48077911 4.19441986 -14.70288849 0.47342485 4.17218781 -15.092404366 -0.62775379 4.81408882
		 -15.07817173 -0.61942494 4.8375473 -14.8777113 0.55687916 4.29827642 -14.89194393 0.54855031 4.27481794
		 -15.30374336 -0.54933125 4.89820719 -15.29240227 -0.54002112 4.92270756 -15.096489906 0.56968355 4.40894079
		 -15.107831 0.56037337 4.38444042 -15.52126217 -0.48079526 4.95639515 -15.51319313 -0.4705472 4.9816699
		 -15.32361031 0.59108835 4.48835897 -15.3316803 0.58084029 4.4630847 -15.75024986 -0.42188612 4.98865414
		 -15.74562931 -0.41083625 5.014321804 -15.55368805 0.64521199 4.52275944 -15.5583086 0.63416213 4.49709177
		 -15.98827934 -0.37209114 4.99419975 -15.98692703 -0.36043885 5.019852161;
	setAttr ".vt[166:331]" -15.7766428 0.73120719 4.51142454 -15.77799511 0.7195549 4.48577166
		 -16.21455574 -0.25879914 4.93838453 -16.21628189 -0.2466955 4.96367455 -16.0031852722 0.76538366 4.49361563
		 -16.0014572144 0.75328004 4.46832561 -16.46071815 -0.22327186 4.88948298 -16.46535873 -0.21082413 4.91410017
		 -16.21200752 0.85173631 4.4261651 -16.20736694 0.83928859 4.40154791 -16.72247314 -0.26404971 4.84687233
		 -16.72989845 -0.25132966 4.8705163 -16.4194603 0.87311029 4.36307287 -16.41203499 0.86039025 4.3394289
		 -16.96419907 -0.23635311 4.73915529 -16.97434616 -0.22339675 4.76148462 -16.61281395 0.89080161 4.27929115
		 -16.60266685 0.87784523 4.25696182 -17.19855499 -0.20952173 4.59758997 -17.21139145 -0.1963333 4.61818695
		 -16.77001572 0.94860214 4.16157627 -16.75717735 0.93541372 4.14097977 -17.41964722 -0.18093301 4.41753721
		 -17.43513107 -0.16747804 4.43585968 -16.91887283 0.96362668 4.04321003 -16.90338898 0.95017171 4.024888039
		 -17.58254242 -0.08656159 4.17762995 -17.60052681 -0.072756082 4.19299221 -17.053710938 0.9373129 3.92851996
		 -17.035726547 0.92350739 3.9131577 -17.77686119 -0.10520267 3.92702961 -17.79691887 -0.0909205 3.93875051
		 -17.13825226 0.95557404 3.79074621 -17.11819267 0.94129187 3.77902532 -17.87960625 -0.055950698 3.63895249
		 -17.90089035 -0.041140519 3.64701176 -17.19543457 0.97857404 3.6361866 -17.17415047 0.96376389 3.62812734
		 -17.92865753 -0.0022011173 3.34576797 -17.95042419 0.013124594 3.35049462 -17.25525284 0.96497917 3.45970392
		 -17.23348808 0.94965351 3.45497704 -17.93134689 0.054311972 3.055958748 -17.95306396 0.07011693 3.057751417
		 -17.25925064 0.99641734 3.27992892 -17.23753548 0.98061228 3.27813601 -17.84672928 0.17540693 2.80409431
		 -17.86803055 0.19165421 2.80330825 -17.20848656 1.071894169 3.10289168 -17.18718529 1.055646777 3.10367751
		 -17.77481651 0.23490304 2.53270245 -17.79542732 0.25156653 2.52961063 -17.16309357 1.10798573 2.92111683
		 -17.14248276 1.091322303 2.9242084 -17.67076111 0.29542205 2.27338552 -17.69044304 0.31249082 2.2681787
		 -17.095718384 1.14513552 2.7456615 -17.076036453 1.12806678 2.75086832 -17.58311081 0.29406202 1.99794507
		 -17.60161209 0.31154177 1.99074602 -17.0082073212 1.18260193 2.58079243 -16.98970604 1.16512215 2.58799148
		 -17.41671562 0.35620973 1.76981115 -17.43373871 0.37412083 1.76070595 -16.93107605 1.16718304 2.38579154
		 -16.91405487 1.14927185 2.39489675 -17.23097038 0.38302287 1.52136874 -17.24614525 0.40139785 1.51044285
		 -16.80864334 1.20318925 2.25425673 -16.79346848 1.18481421 2.2651825 -17.0038089752 0.44477108 1.34403872
		 -17.01697731 0.46357766 1.33162689 -16.66903877 1.23850918 2.14142203 -16.65587044 1.2197026 2.15383387
		 -16.7551384 0.50487512 1.19959474 -16.76624298 0.52406955 1.18605447 -16.48611069 1.32554328 2.093405724
		 -16.47500801 1.30634892 2.10694599 -16.48915291 0.56339681 1.089127421 -16.49815941 0.58294296 1.07478106
		 -16.32006454 1.35937893 2.020931721 -16.31105804 1.33983278 2.035277843 -16.19601631 0.65654731 1.054641843
		 -16.20289993 0.67641836 1.039785981 -16.14768791 1.43221903 2.023390532 -16.14080429 1.41234791 2.038246155
		 -15.90519333 0.71265388 1.017174721 -15.90988064 0.73284054 1.0020931959 -15.97339725 1.46317649 1.99750865
		 -15.9687109 1.44298995 2.012590408 -15.58895016 0.73137701 0.96728957 -15.59132957 0.75188285 0.95229709
		 -15.80372143 1.45166969 1.94450331 -15.80134201 1.43116391 1.95949578 -15.28417587 0.78663605 1.02053225
		 -15.28410149 0.80747819 1.0060213804 -15.64480305 1.47793615 1.96870875 -15.64487839 1.45709407 1.9832195
		 -14.9984169 0.87833166 1.18629372 -14.99575329 0.8995344 1.1727891 -15.50463104 1.50091982 2.016610146
		 -15.50729465 1.47971702 2.030114651 -14.78011227 0.97513676 1.4145081 -14.77513504 0.99666637 1.40247416
		 -15.38026333 1.5218575 2.089661837 -15.38524055 1.50032783 2.10169601 -14.54290199 1.024174452 1.63248003
		 -14.53624344 1.045944929 1.62204254 -15.18748474 1.49396503 2.14338303 -15.1941433 1.47219455 2.15382051
		 -14.28884411 1.027372956 1.82902133 -14.28104496 1.049319863 1.82014072 -15.090747833 1.51499569 2.26429677
		 -15.098546982 1.49304879 2.27317739 -14.051346779 1.032484293 2.078783751 -14.042822838 1.054566979 2.07135129
		 -15.015309334 1.53654778 2.39881015 -15.023832321 1.51446509 2.40624261 -14.037251472 1.12904084 2.41643167
		 -14.02832222 1.15124202 2.41034055 -15.044826508 1.60760462 2.58357453 -15.05375576 1.58540344 2.58966565
		 -13.98983288 1.19201016 2.75098777 -13.98076725 1.21433234 2.74614143 -15.022573471 1.63037586 2.71362281
		 -15.031639099 1.60805368 2.71846938 -14.092687607 1.2962563 3.079338074 -14.083749771 1.31871927 3.075632572
		 -15.026683807 1.65157866 2.81684422 -15.035622597 1.62911582 2.82054949 -14.22272301 1.39760256 3.4357419
		 -14.21416569 1.42022443 3.43300247 -15.052179337 1.67243791 2.8948791 -15.06073761 1.64981604 2.89761853
		 -14.3571167 1.48075676 3.75906777 -14.34907532 1.50351417 3.75701332 -15.10791779 1.70122457 2.97676992
		 -15.11595917 1.67846715 2.97882438 -14.58195305 1.57887304 4.022981644 -14.5744257 1.60171628 4.021353722
		 -15.19720268 1.73799884 3.05745101 -15.20473003 1.71515572 3.059079409 -14.89200783 1.68485761 4.13318062
		 -14.8849411 1.70774066 4.13180113 -15.2851038 1.77524662 3.2067163 -15.29217052 1.75236344 3.20809603
		 -15.19235802 1.78073525 4.23461294 -15.18569851 1.80362546 4.23336887 -15.41694546 1.8174386 3.25530648
		 -15.42360497 1.79454839 3.25655031 -15.51625919 1.87196016 4.22754478 -15.50996971 1.89483643 4.22635841
		 -15.57798004 1.86032546 3.19807243 -15.58426952 1.83744931 3.1992588 -15.85454655 1.96478403 4.26050806
		 -15.84850407 1.98760509 4.25931597 -15.69859982 1.89230144 3.19459057 -15.70464134 1.86948037 3.19578266
		 -16.15071297 2.035699844 4.072293758 -16.14439964 2.058329582 4.071193218 -15.78188324 1.90563643 3.13843036
		 -15.78819847 1.88300669 3.13953114 -16.49407387 2.13593197 3.99012208 -16.48675346 2.15815425 3.98960686
		 -15.87977505 1.93247426 3.087518692 -15.88709545 1.91025198 3.088033915;
	setAttr ".vt[332:497]" -16.79760361 2.2534225 3.75507188 -16.78835297 2.2747407 3.75654459
		 -15.94158745 1.95501888 3.031655312 -15.95083904 1.9337008 3.030182362 -16.9125061 2.39825678 3.33157682
		 -16.90111351 2.41715097 3.33864522 -15.95578575 1.96144247 3.013749361 -15.9671793 1.94254816 3.0066809654
		 -16.72637177 2.38493562 2.93567395 -16.71624756 2.40050745 2.94930077 -15.94460869 1.98097908 2.98151445
		 -15.95473385 1.96540713 2.96788764 -16.61901855 2.46805811 2.61844754 -16.61045074 2.4823699 2.63414621
		 -15.89155388 2.062205315 2.89307308 -15.90012074 2.047893763 2.87737465 -16.28583336 2.42682576 2.28927636
		 -16.27779007 2.44381905 2.30535316 -15.75257778 2.13755655 2.75528312 -15.76062202 2.12357569 2.73920608
		 -16.18940735 2.26259279 2.30289102 -16.181036 2.27664065 2.31855249 -15.58535767 2.20681834 2.60911179
		 -15.59372711 2.19277048 2.59345031 -14.36715698 1.30336285 2.46808529 -14.45266533 1.26034904 2.2160902
		 -14.57756233 1.22076869 1.98343027 -14.73953247 1.1819818 1.77351427 -14.93643761 1.14220345 1.5939908
		 -15.16537952 1.099996209 1.45406282 -15.41536331 1.055505395 1.36314881 -15.67315483 1.0096863508 1.31926417
		 -15.93119812 0.96281552 1.3165381 -16.18464279 0.91488159 1.35029387 -16.42901421 0.86593199 1.41703069
		 -16.66308594 0.81540453 1.51537097 -16.8818264 0.76350057 1.64359546 -17.081140518 0.71027398 1.80041766
		 -17.25679398 0.65591025 1.98423862 -17.4038105 0.60189521 2.18742824 -17.52394295 0.54815024 2.40736055
		 -17.61639023 0.49515072 2.64013362 -17.67992401 0.44317865 2.88319016 -17.71205521 0.39263386 3.13395095
		 -17.70896149 0.34415963 3.38903809 -17.66573906 0.29876438 3.64340329 -17.57736206 0.25791106 3.88941574
		 -17.44173622 0.22344795 4.11575413 -17.26860046 0.19547912 4.31005859 -17.069822311 0.17123412 4.47106552
		 -16.85383606 0.14800276 4.60075331 -16.62641907 0.12348369 4.70136833 -16.39245605 0.095787689 4.77438545
		 -16.15328407 0.062887147 4.8212347 -15.91331673 0.023241103 4.84169245 -15.67570114 -0.024767742 4.8355341
		 -15.44404984 -0.08261624 4.80229902 -15.22358322 -0.1503216 4.74276829 -15.011350632 -0.22732355 4.65779018
		 -14.81298351 -0.30960938 4.5514493 -14.62679482 -0.39600438 4.42444658 -14.45451069 -0.48424006 4.27851248
		 -14.29728127 -0.57241917 4.11454344 -14.15665627 -0.65855849 3.93307734 -14.034787178 -0.74040496 3.73448515
		 -13.93458652 -0.81525171 3.51924753 -13.8597908 -0.87979037 3.28834152 -13.81471348 -0.93023938 3.044516563
		 -13.80108643 -0.96523082 2.7959199 -13.8170948 -0.98656678 2.54814219 -13.86036587 -0.99650717 2.30506039
		 -13.9287281 -0.99731094 2.06955862 -14.020503998 -0.99110502 1.84403324 -14.13455963 -0.97990352 1.63090372
		 -14.27017117 -0.96571207 1.43309522 -14.42675018 -0.95067483 1.25445986 -14.60360909 -0.93720049 1.099924445
		 -14.80182648 -0.92693937 0.97260904 -15.016971588 -0.91990268 0.87564945 -15.24409199 -0.91556299 0.80905122
		 -15.47836494 -0.91324472 0.77083731 -15.7159214 -0.91225219 0.75785899 -15.95403481 -0.91195536 0.76663911
		 -16.19097137 -0.91182268 0.79390544 -16.42525864 -0.91142261 0.83672643 -16.65779495 -0.91039044 0.89306307
		 -16.88498116 -0.90858817 0.96019208 -17.10829353 -0.9063518 1.037432075 -17.32797623 -0.90408599 1.12459719
		 -17.54400635 -0.90218526 1.22203326 -17.7530365 -0.90111101 1.32899952 -17.95625687 -0.90135348 1.4476198
		 -18.15101051 -0.90360898 1.57919526 -18.25631142 -0.89659226 1.60936034 -18.36553001 -0.89747334 1.69025099
		 -18.45124817 -0.90621573 1.80211198 -18.42251205 -0.90621573 1.81826961 -18.34065247 -0.89793146 1.71170127
		 -18.23455811 -0.89721745 1.63381648 -18.13172913 -0.90429097 1.60549808 -17.93901062 -0.90204787 1.47516358
		 -17.73752594 -0.90179819 1.35742533 -17.53003311 -0.90285641 1.25111914 -17.31544304 -0.904737 1.15420651
		 -17.097146988 -0.90698153 1.067467093 -16.87522507 -0.90919703 0.99058652 -16.64950562 -0.91098034 0.92377043
		 -16.41862869 -0.9119969 0.86771584 -16.18626404 -0.91238415 0.82512712 -15.95158291 -0.91250485 0.798002
		 -15.71611595 -0.91278613 0.78920108 -15.48164463 -0.91375154 0.80189139 -15.25090218 -0.91601849 0.83940792
		 -15.027666092 -0.92026556 0.90474284 -14.81653023 -0.92715055 0.99976575 -14.6221199 -0.93719298 1.1244992
		 -14.44844818 -0.95040649 1.27610505 -14.29429436 -0.96519303 1.45180678 -14.16053772 -0.97917235 1.64670932
		 -14.04791069 -0.99021703 1.85692883 -13.95721722 -0.99633646 2.079485178 -13.88963127 -0.99553752 2.31189942
		 -13.84681892 -0.9857235 2.55172467 -13.83091736 -0.9646771 2.79605198 -13.84422874 -0.93018645 3.041032791
		 -13.88851357 -0.88048381 3.28120518 -13.96214294 -0.8168388 3.50887346 -14.06094265 -0.74294072 3.72136283
		 -14.18124294 -0.6620574 3.91761208 -14.320158 -0.57688034 4.097055912 -14.47553444 -0.48966134 4.25925303
		 -14.64579201 -0.4023883 4.40361452 -14.82973289 -0.31696364 4.52921772 -15.025585175 -0.23565239 4.6343317
		 -15.23492432 -0.15963176 4.71826792 -15.45211983 -0.092864305 4.77702475 -15.68032074 -0.035817593 4.80986595
		 -15.91467094 0.011588827 4.81604004 -16.15155792 0.050783515 4.79594469 -16.38781738 0.083339974 4.74976826
		 -16.61899376 0.11076365 4.67772484 -16.84368896 0.13504638 4.57842398 -17.056985855 0.15804569 4.45046902
		 -17.25311661 0.18202415 4.2917366 -17.42375183 0.20964244 4.10039186 -17.55730438 0.24362889 3.87769485
		 -17.64445496 0.2839542 3.63534403 -17.68719482 0.32883397 3.38431144 -17.69033813 0.37682888 3.13215804
		 -17.65862274 0.42693135 2.88397622 -17.59577942 0.47848725 2.64322519 -17.50426102 0.53108144 2.41256738
		 -17.38530922 0.58441544 2.19462729 -17.23977089 0.63799918 1.99334383 -17.065965652 0.69189906 1.81134343
		 -16.86865997 0.74469399 1.65600729 -16.65198135 0.79621011 1.52891123 -16.42000771 0.84638584 1.43137693
		 -16.17775726 0.89501047 1.36514974 -15.92651176 0.94262886 1.3316195 -15.67077541 0.98918045 1.33425665
		 -15.41543865 1.0346632 1.37765968 -15.16804314 1.078793526 1.46756744 -14.94141388 1.12067378 1.60602474
		 -14.74619102 1.16021121 1.78395176 -14.58536148 1.19882178 1.99231088;
	setAttr ".vt[498:663]" -14.46118927 1.23826635 2.22352266 -14.37608528 1.28116179 2.47417641
		 -14.33710098 1.33069134 2.74014831 -14.35745811 1.39144897 3.015640736 -14.45251942 1.46591306 3.27893305
		 -14.61006355 1.54666018 3.49898672 -14.80919743 1.6284523 3.67117071 -15.034858704 1.7087636 3.7979641
		 -15.27890396 1.78674364 3.88173676 -15.53705978 1.86187315 3.92050028 -15.80457878 1.93301606 3.90559959
		 -16.063503265 1.99915409 3.83192706 -16.30191803 2.065862417 3.6984446 -16.49877548 2.14304066 3.50136185
		 -16.60756683 2.2515111 3.23229671 -16.54401779 2.29888821 2.93127489 -16.37938499 2.32800341 2.7047565
		 -16.13443947 2.310112 2.47877669 -15.91760445 2.25907469 2.29608679 -15.90923309 2.27312255 2.3117485
		 -16.12639618 2.3261013 2.4948535 -16.37081909 2.34231496 2.72045517 -16.53389359 2.31446004 2.9449017
		 -16.59617233 2.27040529 3.2393651 -16.48952675 2.16435885 3.5028348 -16.29459572 2.088084698 3.69792938
		 -16.057188034 2.021783829 3.83082628 -15.7985363 1.95583725 3.9044075 -15.53077126 1.88474941 3.91931415
		 -15.2722435 1.80963397 3.88049316 -15.027791977 1.73164666 3.79658461 -14.80167007 1.65129542 3.66954231
		 -14.60202217 1.5694176 3.49693203 -14.4439621 1.48853505 3.27619362 -14.34852028 1.41391182 3.011935472
		 -14.32803535 1.35301352 2.73530197 -14.70599174 1.45548368 2.52582979 -14.77391148 1.42278361 2.33030653
		 -14.87407875 1.3922174 2.14671969 -15.0034332275 1.36230862 1.98130488 -15.15834999 1.33203053 1.84182632
		 -15.33500481 1.30045795 1.73533654 -15.5300827 1.26672077 1.66592884 -15.73843765 1.23067808 1.63188374
		 -15.95251656 1.19279051 1.63098288 -16.16638565 1.15334475 1.66080165 -16.37453842 1.1126554 1.71898127
		 -16.57459831 1.070473909 1.80438828 -16.76134491 1.027157903 1.91526484 -16.93080521 0.98288465 2.050093174
		 -17.079849243 0.93769968 2.2077713 -17.20600891 0.89224857 2.38411045 -17.30982971 0.84664285 2.57651091
		 -17.3897419 0.80156821 2.78062534 -17.44420624 0.75753641 2.99304104 -17.47104454 0.71515071 3.21015048
		 -17.46749878 0.67519462 3.42758155 -17.43058777 0.63866919 3.63979483 -17.35780716 0.60674256 3.84008098
		 -17.24772263 0.58038044 4.022137165 -17.10207176 0.55843621 4.18425751 -16.92825317 0.53880143 4.32394409
		 -16.73332596 0.51940221 4.44002247 -16.52293968 0.49829698 4.53222084 -16.30223083 0.47376201 4.60027504
		 -16.072963715 0.44383225 4.64439964 -15.83970833 0.406921 4.66353321 -15.60577202 0.36130071 4.65674591
		 -15.37490749 0.30531466 4.62292862 -15.15476418 0.23937783 4.56282902 -14.94453049 0.16477782 4.47803307
		 -14.74956131 0.085584864 4.37293434 -14.56801796 0.003034696 4.24856234 -14.40147972 -0.080566034 4.10699844
		 -14.25097847 -0.16327761 3.94959664 -14.11792374 -0.2430857 3.77750468 -14.0042257309 -0.31775272 3.59190011
		 -13.91233253 -0.38470611 3.39426899 -13.84512711 -0.44101146 3.18668675 -13.80518627 -0.48401576 2.97057796
		 -13.79292202 -0.51376253 2.74706602 -13.80753136 -0.53156585 2.52039933 -13.84773827 -0.53909403 2.29424262
		 -13.91229057 -0.53812557 2.071657181 -14.00025939941 -0.53043485 1.85533571 -14.1111784 -0.5177865 1.64795876
		 -14.24504662 -0.5020113 1.45262253 -14.40220833 -0.48514116 1.27329063 -14.5831461 -0.46956766 1.11519408
		 -14.78678513 -0.45722979 0.98440576 -15.0067691803 -0.44824398 0.88528144 -15.23763275 -0.44204789 0.81760633
		 -15.47435093 -0.43792668 0.77901888 -15.7131052 -0.4351556 0.76600349 -15.95134449 -0.43308932 0.77481878
		 -16.18753433 -0.43119121 0.80203086 -16.42037773 -0.42903042 0.84462094 -16.65089798 -0.42624623 0.90050328
		 -16.87633896 -0.42270625 0.96715117 -17.098773956 -0.41872391 1.04412365 -17.3183403 -0.41470164 1.13128018
		 -17.53500366 -0.41103488 1.22904158 -17.74546242 -0.40818968 1.33678174 -17.95106888 -0.40666759 1.45684242
		 -18.14944458 -0.40719268 1.5909183 -18.3361702 -0.41078153 1.74098229 -18.50742912 -0.4191502 1.913239
		 -18.7372818 -0.49899346 2.24974489 -18.70854568 -0.49899346 2.265903 -18.48255157 -0.41960829 1.93468928
		 -18.31441879 -0.41140673 1.76543832 -18.13016129 -0.40787467 1.61722112 -17.93382263 -0.40736195 1.48438621
		 -17.72995186 -0.40887684 1.36520755 -17.52103043 -0.411706 1.25812745 -17.30580902 -0.41535267 1.16088963
		 -17.087627411 -0.41935363 1.074158669 -16.86658478 -0.42331511 0.9975456 -16.64260864 -0.42683619 0.93121064
		 -16.41374588 -0.42960468 0.87561029 -16.182827 -0.43175271 0.83325255 -15.94889259 -0.43363881 0.80618161
		 -15.7132988 -0.43568951 0.79734564 -15.47763062 -0.4384335 0.8100729 -15.24444389 -0.44250342 0.84796304
		 -15.017463684 -0.44860682 0.91437483 -14.80148888 -0.457441 1.011562586 -14.60165691 -0.46956012 1.13976884
		 -14.42390633 -0.48487279 1.2949357 -14.26916981 -0.50149226 1.4713341 -14.13715649 -0.51705539 1.66376424
		 -14.027666092 -0.52954686 1.8682313 -13.94078064 -0.5371511 2.081583977 -13.87700272 -0.53812438 2.30108166
		 -13.83725548 -0.53072256 2.52398181 -13.82275391 -0.51320881 2.7471981 -13.83470154 -0.48396283 2.96709418
		 -13.87384987 -0.4417049 3.17955041 -13.93988991 -0.38629317 3.38389492 -14.030380249 -0.32028845 3.57877779
		 -14.14250946 -0.24658459 3.76203942 -14.27385521 -0.16773877 3.93210912 -14.42250347 -0.0859873 4.087738991
		 -14.58701515 -0.0033492148 4.22773027 -14.76631069 0.078230605 4.35070276 -14.95876503 0.15644896 4.45457458
		 -15.16610527 0.23006766 4.53832865 -15.38297749 0.2950666 4.59765434 -15.61039162 0.35025084 4.63107824
		 -15.84106064 0.39526871 4.63788033 -16.071237564 0.43172863 4.61910963 -16.29759216 0.46131429 4.57565784
		 -16.51551437 0.48557696 4.50857687 -16.72317886 0.50644583 4.41769314 -16.91541672 0.52561301 4.30334759
		 -17.086587906 0.54498124 4.16593552 -17.22974014 0.56657493 4.0067749023 -17.33774948 0.59246039 3.82836008
		 -17.40930176 0.62385905 3.6317358 -17.44573212 0.65986896 3.4228549 -17.44932938 0.69934577 3.20835757
		 -17.42290497 0.74128908 2.99382687 -17.36913109 0.78490478 2.78371668 -17.29014969 0.82957411 2.58171797
		 -17.18750763 0.87476879 2.39130926 -17.062826157 0.91978854 2.21687651;
	setAttr ".vt[664:711]" -16.91563034 0.96450967 2.061018944 -16.74817848 1.008351326 1.92767668
		 -16.56349564 1.051279545 1.81792855 -16.36553192 1.093109369 1.73332739 -16.15950012 1.13347363 1.67565751
		 -15.9478302 1.17260385 1.64606428 -15.73605919 1.21017218 1.64687622 -15.530159 1.2458787 1.68043959
		 -15.33766937 1.27925527 1.74884105 -15.16332722 1.31050086 1.85386038 -15.010091782 1.34053802 1.99174237
		 -14.8818779 1.37027049 2.15560031 -14.78243446 1.40070093 2.33773899 -14.71492004 1.43328261 2.53192091
		 -14.68437004 1.46937251 2.72930884 -14.69654083 1.5102824 2.91809511 -14.75662804 1.55786455 3.088275909
		 -14.86301136 1.61256361 3.23890543 -15.0069637299 1.67180395 3.36512518 -15.17770958 1.73266959 3.46274757
		 -15.36544991 1.79275203 3.52886105 -15.56066513 1.84966123 3.55987954 -15.75461006 1.90124822 3.55069113
		 -15.94110489 1.94881606 3.49925709 -16.10976028 1.99579287 3.40676737 -16.24006081 2.046106339 3.27930021
		 -16.30262756 2.10476542 3.13301682 -16.26462936 2.13988328 2.96310925 -16.13975334 2.1879487 2.79106569
		 -16.041015625 2.19859838 2.70232248 -15.95030212 2.17541027 2.6448288 -15.94193172 2.18945813 2.66049051
		 -16.032972336 2.21358347 2.71839929 -16.13118744 2.20226002 2.80676413 -16.25450516 2.15545511 2.97673607
		 -16.29123306 2.12365961 3.14008522 -16.23081017 2.067424536 3.28077316 -16.10243988 2.018015146 3.40625191
		 -15.93478966 1.9714458 3.49815631 -15.74856758 1.9240694 3.54949903 -15.55437565 1.87253737 3.55869341
		 -15.35878944 1.81564236 3.52761722 -15.17064285 1.75555277 3.46136785 -14.99943638 1.69464707 3.36349678
		 -14.85496998 1.63532114 3.23685098 -14.74807072 1.58048654 3.08553648 -14.68760204 1.53274524 2.91438985
		 -14.67530441 1.49169469 2.72446251;
	setAttr -s 1420 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 5 0 5 4 1 4 0 0 1 427 0 2 6 0 6 604 1 2 3 0
		 3 7 0 7 6 1 3 606 0 4 429 1 5 9 0 9 8 1 8 4 0 6 10 0 10 603 1 7 11 0 11 10 1 8 430 1
		 9 13 0 13 12 1 12 8 0 10 14 0 14 602 1 11 15 0 15 14 1 12 431 1 13 17 0 17 16 1 16 12 0
		 14 18 0 18 601 1 15 19 0 19 18 1 16 432 1 17 21 0 21 20 1 20 16 0 18 22 0 22 600 1
		 19 23 0 23 22 1 20 433 1 21 25 0 25 24 1 24 20 0 22 26 0 26 599 1 23 27 0 27 26 1
		 24 434 1 25 29 0 29 28 1 28 24 0 26 30 0 30 598 1 27 31 0 31 30 1 28 435 1 29 33 0
		 33 32 1 32 28 0 30 34 0 34 597 1 31 35 0 35 34 1 32 436 1 33 37 0 37 36 1 36 32 0
		 34 38 0 38 596 1 35 39 0 39 38 1 36 437 1 37 41 0 41 40 1 40 36 0 38 42 0 42 595 1
		 39 43 0 43 42 1 40 438 1 41 45 0 45 44 1 44 40 0 42 46 0 46 594 1 43 47 0 47 46 1
		 44 439 1 45 49 0 49 48 1 48 44 0 46 50 0 50 593 1 47 51 0 51 50 1 48 440 1 49 53 0
		 53 52 1 52 48 0 50 54 0 54 592 1 51 55 0 55 54 1 52 441 1 53 57 0 57 56 1 56 52 0
		 54 58 0 58 591 1 55 59 0 59 58 1 56 442 1 57 61 0 61 60 1 60 56 0 58 62 0 62 590 1
		 59 63 0 63 62 1 60 443 1 61 65 0 65 64 1 64 60 0 62 66 0 66 589 1 63 67 0 67 66 1
		 64 444 1 65 69 0 69 68 1 68 64 0 66 70 0 70 588 1 67 71 0 71 70 1 68 445 1 69 73 0
		 73 72 1 72 68 0 70 74 0 74 587 1 71 75 0 75 74 1 72 446 1 73 77 0 77 76 1 76 72 0
		 74 78 0 78 586 1 75 79 0 79 78 1 76 447 1 77 81 0 81 80 1 80 76 0 78 82 0 82 585 1
		 79 83 0 83 82 1 80 448 1 81 85 0 85 84 1;
	setAttr ".ed[166:331]" 84 80 0 82 86 0 86 584 1 83 87 0 87 86 1 84 449 1 85 89 0
		 89 88 1 88 84 0 86 90 0 90 583 1 87 91 0 91 90 1 88 450 1 89 93 0 93 92 1 92 88 0
		 90 94 0 94 582 1 91 95 0 95 94 1 92 451 1 93 97 0 97 96 1 96 92 0 94 98 0 98 581 1
		 95 99 0 99 98 1 96 452 1 97 101 0 101 100 1 100 96 0 98 102 0 102 580 1 99 103 0
		 103 102 1 100 453 1 101 105 0 105 104 1 104 100 0 102 106 0 106 579 1 103 107 0 107 106 1
		 104 454 1 105 109 0 109 108 1 108 104 0 106 110 0 110 578 1 107 111 0 111 110 1 108 455 1
		 109 113 0 113 112 1 112 108 0 110 114 0 114 577 1 111 115 0 115 114 1 112 456 1 113 117 0
		 117 116 1 116 112 0 114 118 0 118 576 1 115 119 0 119 118 1 116 457 1 117 121 0 121 120 1
		 120 116 0 118 122 0 122 575 1 119 123 0 123 122 1 120 458 1 121 125 0 125 124 1 124 120 0
		 122 126 0 126 574 1 123 127 0 127 126 1 124 459 1 125 129 0 129 128 1 128 124 0 126 130 0
		 130 573 1 127 131 0 131 130 1 128 460 1 129 133 0 133 132 1 132 128 0 130 134 0 134 572 1
		 131 135 0 135 134 1 132 461 1 133 137 0 137 136 1 136 132 0 134 138 0 138 571 1 135 139 0
		 139 138 1 136 462 1 137 141 0 141 140 1 140 136 0 138 142 0 142 570 1 139 143 0 143 142 1
		 140 463 1 141 145 0 145 144 1 144 140 0 142 146 0 146 569 1 143 147 0 147 146 1 144 464 1
		 145 149 0 149 148 1 148 144 0 146 150 0 150 568 1 147 151 0 151 150 1 148 465 1 149 153 0
		 153 152 1 152 148 0 150 154 0 154 567 1 151 155 0 155 154 1 152 466 1 153 157 0 157 156 1
		 156 152 0 154 158 0 158 566 1 155 159 0 159 158 1 156 467 1 157 161 0 161 160 1 160 156 0
		 158 162 0 162 565 1 159 163 0 163 162 1 160 468 1 161 165 0 165 164 1 164 160 0 162 166 0
		 166 564 1 163 167 0 167 166 1 164 469 1;
	setAttr ".ed[332:497]" 165 169 0 169 168 1 168 164 0 166 170 0 170 563 1 167 171 0
		 171 170 1 168 470 1 169 173 0 173 172 1 172 168 0 170 174 0 174 562 1 171 175 0 175 174 1
		 172 471 1 173 177 0 177 176 1 176 172 0 174 178 0 178 561 1 175 179 0 179 178 1 176 472 1
		 177 181 0 181 180 1 180 176 0 178 182 0 182 560 1 179 183 0 183 182 1 180 473 1 181 185 0
		 185 184 1 184 180 0 182 186 0 186 559 1 183 187 0 187 186 1 184 474 1 185 189 0 189 188 1
		 188 184 0 186 190 0 190 558 1 187 191 0 191 190 1 188 475 1 189 193 0 193 192 1 192 188 0
		 190 194 0 194 557 1 191 195 0 195 194 1 192 476 1 193 197 0 197 196 1 196 192 0 194 198 0
		 198 556 1 195 199 0 199 198 1 196 477 1 197 201 0 201 200 1 200 196 0 198 202 0 202 555 1
		 199 203 0 203 202 1 200 478 1 201 205 0 205 204 1 204 200 0 202 206 0 206 554 1 203 207 0
		 207 206 1 204 479 1 205 209 0 209 208 1 208 204 0 206 210 0 210 553 1 207 211 0 211 210 1
		 208 480 1 209 213 0 213 212 1 212 208 0 210 214 0 214 552 1 211 215 0 215 214 1 212 481 1
		 213 217 0 217 216 1 216 212 0 214 218 0 218 551 1 215 219 0 219 218 1 216 482 1 217 221 0
		 221 220 1 220 216 0 218 222 0 222 550 1 219 223 0 223 222 1 220 483 1 221 225 0 225 224 1
		 224 220 0 222 226 0 226 549 1 223 227 0 227 226 1 224 484 1 225 229 0 229 228 1 228 224 0
		 226 230 0 230 548 1 227 231 0 231 230 1 228 485 1 229 233 0 233 232 1 232 228 0 230 234 0
		 234 547 1 231 235 0 235 234 1 232 486 1 233 237 0 237 236 1 236 232 0 234 238 0 238 546 1
		 235 239 0 239 238 1 236 487 1 237 241 0 241 240 1 240 236 0 238 242 0 242 545 1 239 243 0
		 243 242 1 240 488 1 241 245 0 245 244 1 244 240 0 242 246 0 246 544 1 243 247 0 247 246 1
		 244 489 1 245 249 0 249 248 1 248 244 0 246 250 0 250 543 1 247 251 0;
	setAttr ".ed[498:663]" 251 250 1 248 490 1 249 253 0 253 252 1 252 248 0 250 254 0
		 254 542 1 251 255 0 255 254 1 252 491 1 253 257 0 257 256 1 256 252 0 254 258 0 258 541 1
		 255 259 0 259 258 1 256 492 1 257 261 0 261 260 1 260 256 0 258 262 0 262 540 1 259 263 0
		 263 262 1 260 493 1 261 265 0 265 264 1 264 260 0 262 266 0 266 539 1 263 267 0 267 266 1
		 264 494 1 265 269 0 269 268 1 268 264 0 266 270 0 270 538 1 267 271 0 271 270 1 268 495 1
		 269 273 0 273 272 1 272 268 0 270 274 0 274 537 1 271 275 0 275 274 1 272 496 1 273 277 0
		 277 276 1 276 272 0 274 278 0 278 536 1 275 279 0 279 278 1 276 497 1 277 281 0 281 280 1
		 280 276 0 278 282 0 282 535 1 279 283 0 283 282 1 280 498 1 281 285 0 285 284 1 284 280 0
		 282 286 0 286 534 1 283 287 0 287 286 1 284 499 1 285 289 0 289 288 1 288 284 0 286 290 0
		 290 711 1 287 291 0 291 290 1 288 500 1 289 293 0 293 292 1 292 288 0 290 294 0 294 710 1
		 291 295 0 295 294 1 292 501 1 293 297 0 297 296 1 296 292 0 294 298 0 298 709 1 295 299 0
		 299 298 1 296 502 1 297 301 0 301 300 1 300 296 0 298 302 0 302 708 1 299 303 0 303 302 1
		 300 503 1 301 305 0 305 304 1 304 300 0 302 306 0 306 707 1 303 307 0 307 306 1 304 504 1
		 305 309 0 309 308 1 308 304 0 306 310 0 310 706 1 307 311 0 311 310 1 308 505 1 309 313 0
		 313 312 1 312 308 0 310 314 0 314 705 1 311 315 0 315 314 1 312 506 1 313 317 0 317 316 1
		 316 312 0 314 318 0 318 704 1 315 319 0 319 318 1 316 507 1 317 321 0 321 320 1 320 316 0
		 318 322 0 322 703 1 319 323 0 323 322 1 320 508 1 321 325 0 325 324 1 324 320 0 322 326 0
		 326 702 1 323 327 0 327 326 1 324 509 1 325 329 0 329 328 1 328 324 0 326 330 0 330 701 1
		 327 331 0 331 330 1 328 510 1 329 333 0 333 332 1 332 328 0 330 334 0;
	setAttr ".ed[664:829]" 334 700 1 331 335 0 335 334 1 332 511 1 333 337 0 337 336 1
		 336 332 0 334 338 0 338 699 1 335 339 0 339 338 1 336 512 1 337 341 0 341 340 1 340 336 0
		 338 342 0 342 698 1 339 343 0 343 342 1 340 513 1 341 345 0 345 344 1 344 340 0 342 346 0
		 346 697 1 343 347 0 347 346 1 344 514 1 345 349 0 349 348 1 348 344 0 346 350 0 350 696 1
		 347 351 0 351 350 1 348 515 1 349 353 0 353 352 0 352 348 0 350 354 0 354 695 0 351 355 0
		 355 354 0 352 516 0 356 285 1 357 281 1 356 357 1 358 277 1 357 358 1 359 273 1 358 359 1
		 360 269 1 359 360 1 361 265 1 360 361 1 362 261 1 361 362 1 363 257 1 362 363 1 364 253 1
		 363 364 1 365 249 1 364 365 1 366 245 1 365 366 1 367 241 1 366 367 1 368 237 1 367 368 1
		 369 233 1 368 369 1 370 229 1 369 370 1 371 225 1 370 371 1 372 221 1 371 372 1 373 217 1
		 372 373 1 374 213 1 373 374 1 375 209 1 374 375 1 376 205 1 375 376 1 377 201 1 376 377 1
		 378 197 1 377 378 1 379 193 1 378 379 1 380 189 1 379 380 1 381 185 1 380 381 1 382 181 1
		 381 382 1 383 177 1 382 383 1 384 173 1 383 384 1 385 169 1 384 385 1 386 165 1 385 386 1
		 387 161 1 386 387 1 388 157 1 387 388 1 389 153 1 388 389 1 390 149 1 389 390 1 391 145 1
		 390 391 1 392 141 1 391 392 1 393 137 1 392 393 1 394 133 1 393 394 1 395 129 1 394 395 1
		 396 125 1 395 396 1 397 121 1 396 397 1 398 117 1 397 398 1 399 113 1 398 399 1 400 109 1
		 399 400 1 401 105 1 400 401 1 402 101 1 401 402 1 403 97 1 402 403 1 404 93 1 403 404 1
		 405 89 1 404 405 1 406 85 1 405 406 1 407 81 1 406 407 1 408 77 1 407 408 1 409 73 1
		 408 409 1 410 69 1 409 410 1 411 65 1 410 411 1 412 61 1 411 412 1 413 57 1 412 413 1
		 414 53 1 413 414 1 415 49 1 414 415 1 416 45 1 415 416 1 417 41 1;
	setAttr ".ed[830:995]" 416 417 1 418 37 1 417 418 1 419 33 1 418 419 1 420 29 1
		 419 420 1 421 25 1 420 421 1 422 21 1 421 422 1 423 17 1 422 423 1 424 13 1 423 424 1
		 425 9 1 424 425 1 426 5 1 425 426 1 427 605 0 426 427 1 428 0 0 427 428 1 429 607 1
		 428 429 1 430 608 1 429 430 1 431 609 1 430 431 1 432 610 1 431 432 1 433 611 1 432 433 1
		 434 612 1 433 434 1 435 613 1 434 435 1 436 614 1 435 436 1 437 615 1 436 437 1 438 616 1
		 437 438 1 439 617 1 438 439 1 440 618 1 439 440 1 441 619 1 440 441 1 442 620 1 441 442 1
		 443 621 1 442 443 1 444 622 1 443 444 1 445 623 1 444 445 1 446 624 1 445 446 1 447 625 1
		 446 447 1 448 626 1 447 448 1 449 627 1 448 449 1 450 628 1 449 450 1 451 629 1 450 451 1
		 452 630 1 451 452 1 453 631 1 452 453 1 454 632 1 453 454 1 455 633 1 454 455 1 456 634 1
		 455 456 1 457 635 1 456 457 1 458 636 1 457 458 1 459 637 1 458 459 1 460 638 1 459 460 1
		 461 639 1 460 461 1 462 640 1 461 462 1 463 641 1 462 463 1 464 642 1 463 464 1 465 643 1
		 464 465 1 466 644 1 465 466 1 467 645 1 466 467 1 468 646 1 467 468 1 469 647 1 468 469 1
		 470 648 1 469 470 1 471 649 1 470 471 1 472 650 1 471 472 1 473 651 1 472 473 1 474 652 1
		 473 474 1 475 653 1 474 475 1 476 654 1 475 476 1 477 655 1 476 477 1 478 656 1 477 478 1
		 479 657 1 478 479 1 480 658 1 479 480 1 481 659 1 480 481 1 482 660 1 481 482 1 483 661 1
		 482 483 1 484 662 1 483 484 1 485 663 1 484 485 1 486 664 1 485 486 1 487 665 1 486 487 1
		 488 666 1 487 488 1 489 667 1 488 489 1 490 668 1 489 490 1 491 669 1 490 491 1 492 670 1
		 491 492 1 493 671 1 492 493 1 494 672 1 493 494 1 495 673 1 494 495 1 496 674 1 495 496 1
		 497 675 1 496 497 1 498 676 1 497 498 1 499 677 1 498 499 1 500 678 1;
	setAttr ".ed[996:1161]" 499 500 1 501 679 1 500 501 1 502 680 1 501 502 1 503 681 1
		 502 503 1 504 682 1 503 504 1 505 683 1 504 505 1 506 684 1 505 506 1 507 685 1 506 507 1
		 508 686 1 507 508 1 509 687 1 508 509 1 510 688 1 509 510 1 511 689 1 510 511 1 512 690 1
		 511 512 1 513 691 1 512 513 1 514 692 1 513 514 1 515 693 1 514 515 1 516 694 0 515 516 1
		 517 353 0 516 517 1 518 349 1 517 518 1 519 345 1 518 519 1 520 341 1 519 520 1 521 337 1
		 520 521 1 522 333 1 521 522 1 523 329 1 522 523 1 524 325 1 523 524 1 525 321 1 524 525 1
		 526 317 1 525 526 1 527 313 1 526 527 1 528 309 1 527 528 1 529 305 1 528 529 1 530 301 1
		 529 530 1 531 297 1 530 531 1 532 293 1 531 532 1 533 289 1 532 533 1 533 356 1 534 356 1
		 535 357 1 534 535 1 536 358 1 535 536 1 537 359 1 536 537 1 538 360 1 537 538 1 539 361 1
		 538 539 1 540 362 1 539 540 1 541 363 1 540 541 1 542 364 1 541 542 1 543 365 1 542 543 1
		 544 366 1 543 544 1 545 367 1 544 545 1 546 368 1 545 546 1 547 369 1 546 547 1 548 370 1
		 547 548 1 549 371 1 548 549 1 550 372 1 549 550 1 551 373 1 550 551 1 552 374 1 551 552 1
		 553 375 1 552 553 1 554 376 1 553 554 1 555 377 1 554 555 1 556 378 1 555 556 1 557 379 1
		 556 557 1 558 380 1 557 558 1 559 381 1 558 559 1 560 382 1 559 560 1 561 383 1 560 561 1
		 562 384 1 561 562 1 563 385 1 562 563 1 564 386 1 563 564 1 565 387 1 564 565 1 566 388 1
		 565 566 1 567 389 1 566 567 1 568 390 1 567 568 1 569 391 1 568 569 1 570 392 1 569 570 1
		 571 393 1 570 571 1 572 394 1 571 572 1 573 395 1 572 573 1 574 396 1 573 574 1 575 397 1
		 574 575 1 576 398 1 575 576 1 577 399 1 576 577 1 578 400 1 577 578 1 579 401 1 578 579 1
		 580 402 1 579 580 1 581 403 1 580 581 1 582 404 1 581 582 1 583 405 1;
	setAttr ".ed[1162:1327]" 582 583 1 584 406 1 583 584 1 585 407 1 584 585 1 586 408 1
		 585 586 1 587 409 1 586 587 1 588 410 1 587 588 1 589 411 1 588 589 1 590 412 1 589 590 1
		 591 413 1 590 591 1 592 414 1 591 592 1 593 415 1 592 593 1 594 416 1 593 594 1 595 417 1
		 594 595 1 596 418 1 595 596 1 597 419 1 596 597 1 598 420 1 597 598 1 599 421 1 598 599 1
		 600 422 1 599 600 1 601 423 1 600 601 1 602 424 1 601 602 1 603 425 1 602 603 1 604 426 1
		 603 604 1 605 2 0 604 605 1 606 428 0 605 606 1 607 7 1 606 607 1 608 11 1 607 608 1
		 609 15 1 608 609 1 610 19 1 609 610 1 611 23 1 610 611 1 612 27 1 611 612 1 613 31 1
		 612 613 1 614 35 1 613 614 1 615 39 1 614 615 1 616 43 1 615 616 1 617 47 1 616 617 1
		 618 51 1 617 618 1 619 55 1 618 619 1 620 59 1 619 620 1 621 63 1 620 621 1 622 67 1
		 621 622 1 623 71 1 622 623 1 624 75 1 623 624 1 625 79 1 624 625 1 626 83 1 625 626 1
		 627 87 1 626 627 1 628 91 1 627 628 1 629 95 1 628 629 1 630 99 1 629 630 1 631 103 1
		 630 631 1 632 107 1 631 632 1 633 111 1 632 633 1 634 115 1 633 634 1 635 119 1 634 635 1
		 636 123 1 635 636 1 637 127 1 636 637 1 638 131 1 637 638 1 639 135 1 638 639 1 640 139 1
		 639 640 1 641 143 1 640 641 1 642 147 1 641 642 1 643 151 1 642 643 1 644 155 1 643 644 1
		 645 159 1 644 645 1 646 163 1 645 646 1 647 167 1 646 647 1 648 171 1 647 648 1 649 175 1
		 648 649 1 650 179 1 649 650 1 651 183 1 650 651 1 652 187 1 651 652 1 653 191 1 652 653 1
		 654 195 1 653 654 1 655 199 1 654 655 1 656 203 1 655 656 1 657 207 1 656 657 1 658 211 1
		 657 658 1 659 215 1 658 659 1 660 219 1 659 660 1 661 223 1 660 661 1 662 227 1 661 662 1
		 663 231 1 662 663 1 664 235 1 663 664 1 665 239 1 664 665 1 666 243 1;
	setAttr ".ed[1328:1419]" 665 666 1 667 247 1 666 667 1 668 251 1 667 668 1 669 255 1
		 668 669 1 670 259 1 669 670 1 671 263 1 670 671 1 672 267 1 671 672 1 673 271 1 672 673 1
		 674 275 1 673 674 1 675 279 1 674 675 1 676 283 1 675 676 1 677 287 1 676 677 1 678 291 1
		 677 678 1 679 295 1 678 679 1 680 299 1 679 680 1 681 303 1 680 681 1 682 307 1 681 682 1
		 683 311 1 682 683 1 684 315 1 683 684 1 685 319 1 684 685 1 686 323 1 685 686 1 687 327 1
		 686 687 1 688 331 1 687 688 1 689 335 1 688 689 1 690 339 1 689 690 1 691 343 1 690 691 1
		 692 347 1 691 692 1 693 351 1 692 693 1 694 355 0 693 694 1 695 517 0 694 695 1 696 518 1
		 695 696 1 697 519 1 696 697 1 698 520 1 697 698 1 699 521 1 698 699 1 700 522 1 699 700 1
		 701 523 1 700 701 1 702 524 1 701 702 1 703 525 1 702 703 1 704 526 1 703 704 1 705 527 1
		 704 705 1 706 528 1 705 706 1 707 529 1 706 707 1 708 530 1 707 708 1 709 531 1 708 709 1
		 710 532 1 709 710 1 711 533 1 710 711 1 711 534 1;
	setAttr -s 710 -ch 2840 ".fc";
	setAttr ".fc[0:499]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 218 219 220 221
		f 4 1205 5 6 1206
		mu 0 4 818 819 811 810
		f 4 7 8 9 -6
		mu 0 4 501 502 503 504
		f 4 10 1210 1209 -9
		mu 0 4 1101 891 883 882
		f 4 -3 12 13 14
		mu 0 4 221 220 222 223
		f 4 -7 15 16 1204
		mu 0 4 810 811 803 802
		f 4 -10 17 18 -16
		mu 0 4 504 503 505 506
		f 4 -1210 1212 1211 -18
		mu 0 4 882 883 875 874
		f 4 -14 20 21 22
		mu 0 4 223 222 224 225
		f 4 -17 23 24 1202
		mu 0 4 802 803 795 794
		f 4 -19 25 26 -24
		mu 0 4 506 505 507 508
		f 4 -1212 1214 1213 -26
		mu 0 4 874 875 867 866
		f 4 -22 28 29 30
		mu 0 4 225 224 226 227
		f 4 -25 31 32 1200
		mu 0 4 794 795 789 788
		f 4 -27 33 34 -32
		mu 0 4 508 507 509 510
		f 4 -1214 1216 1215 -34
		mu 0 4 866 867 861 860
		f 4 -30 36 37 38
		mu 0 4 227 226 228 229
		f 4 -33 39 40 1198
		mu 0 4 788 789 785 784
		f 4 -35 41 42 -40
		mu 0 4 510 509 511 512
		f 4 -1216 1218 1217 -42
		mu 0 4 860 861 857 856
		f 4 -38 44 45 46
		mu 0 4 229 228 230 231
		f 4 -41 47 48 1196
		mu 0 4 784 785 786 787
		f 4 -43 49 50 -48
		mu 0 4 512 511 513 514
		f 4 -1218 1220 1219 -50
		mu 0 4 856 857 858 859
		f 4 -46 52 53 54
		mu 0 4 231 230 232 233
		f 4 -49 55 56 1194
		mu 0 4 787 786 790 791
		f 4 -51 57 58 -56
		mu 0 4 514 513 515 516
		f 4 -1220 1222 1221 -58
		mu 0 4 859 858 864 865
		f 4 -54 60 61 62
		mu 0 4 233 232 234 235
		f 4 -57 63 64 1192
		mu 0 4 791 790 797 798
		f 4 -59 65 66 -64
		mu 0 4 516 515 517 518
		f 4 -1222 1224 1223 -66
		mu 0 4 865 864 872 873
		f 4 -62 68 69 70
		mu 0 4 235 234 236 237
		f 4 -65 71 72 1190
		mu 0 4 798 797 806 807
		f 4 -67 73 74 -72
		mu 0 4 518 517 519 520
		f 4 -1224 1226 1225 -74
		mu 0 4 873 872 880 881
		f 4 -70 76 77 78
		mu 0 4 237 236 238 239
		f 4 -73 79 80 1188
		mu 0 4 807 806 814 815
		f 4 -75 81 82 -80
		mu 0 4 520 519 521 522
		f 4 -1226 1228 1227 -82
		mu 0 4 881 880 888 889
		f 4 -78 84 85 86
		mu 0 4 239 238 240 241
		f 4 -81 87 88 1186
		mu 0 4 815 814 822 823
		f 4 -83 89 90 -88
		mu 0 4 522 521 523 524
		f 4 -1228 1230 1229 -90
		mu 0 4 889 888 896 897
		f 4 -86 92 93 94
		mu 0 4 241 240 242 243
		f 4 -89 95 96 1184
		mu 0 4 823 822 828 829
		f 4 -91 97 98 -96
		mu 0 4 524 523 525 526
		f 4 -1230 1232 1231 -98
		mu 0 4 897 896 904 905
		f 4 -94 100 101 102
		mu 0 4 243 242 244 245
		f 4 -97 103 104 1182
		mu 0 4 829 828 833 834
		f 4 -99 105 106 -104
		mu 0 4 526 525 527 528
		f 4 -1232 1234 1233 -106
		mu 0 4 905 904 910 911
		f 4 -102 108 109 110
		mu 0 4 245 244 246 247
		f 4 -105 111 112 1180
		mu 0 4 834 833 837 838
		f 4 -107 113 114 -112
		mu 0 4 528 527 529 530
		f 4 -1234 1236 1235 -114
		mu 0 4 911 910 915 916
		f 4 -110 116 117 118
		mu 0 4 247 246 248 249
		f 4 -113 119 120 1178
		mu 0 4 838 837 841 842
		f 4 -115 121 122 -120
		mu 0 4 530 529 531 532
		f 4 -1236 1238 1237 -122
		mu 0 4 916 915 919 920
		f 4 -118 124 125 126
		mu 0 4 249 248 250 251
		f 4 -121 127 128 1176
		mu 0 4 842 841 845 846
		f 4 -123 129 130 -128
		mu 0 4 532 531 533 534
		f 4 -1238 1240 1239 -130
		mu 0 4 920 919 923 924
		f 4 -126 132 133 134
		mu 0 4 251 250 252 253
		f 4 -129 135 136 1174
		mu 0 4 846 845 849 850
		f 4 -131 137 138 -136
		mu 0 4 534 533 535 536
		f 4 -1240 1242 1241 -138
		mu 0 4 924 923 927 928
		f 4 -134 140 141 142
		mu 0 4 253 252 254 255
		f 4 -137 143 144 1172
		mu 0 4 850 849 27 26
		f 4 -139 145 146 -144
		mu 0 4 536 535 537 538
		f 4 -1242 1244 1243 -146
		mu 0 4 928 927 107 106
		f 4 -142 148 149 150
		mu 0 4 255 254 256 257
		f 4 -145 151 152 1170
		mu 0 4 26 27 19 18
		f 4 -147 153 154 -152
		mu 0 4 538 537 539 540
		f 4 -1244 1246 1245 -154
		mu 0 4 106 107 99 98
		f 4 -150 156 157 158
		mu 0 4 257 256 258 259
		f 4 -153 159 160 1168
		mu 0 4 18 19 11 10
		f 4 -155 161 162 -160
		mu 0 4 540 539 541 542
		f 4 -1246 1248 1247 -162
		mu 0 4 98 99 91 90
		f 4 -158 164 165 166
		mu 0 4 259 258 260 261
		f 4 -161 167 168 1166
		mu 0 4 10 11 5 4
		f 4 -163 169 170 -168
		mu 0 4 542 541 543 544
		f 4 -1248 1250 1249 -170
		mu 0 4 90 91 85 84
		f 4 -166 172 173 174
		mu 0 4 261 260 262 263
		f 4 -169 175 176 1164
		mu 0 4 4 5 1 0
		f 4 -171 177 178 -176
		mu 0 4 544 543 545 546
		f 4 -1250 1252 1251 -178
		mu 0 4 84 85 81 80
		f 4 -174 180 181 182
		mu 0 4 263 262 264 265
		f 4 -177 183 184 1162
		mu 0 4 0 1 2 3
		f 4 -179 185 186 -184
		mu 0 4 546 545 547 548
		f 4 -1252 1254 1253 -186
		mu 0 4 80 81 82 83
		f 4 -182 188 189 190
		mu 0 4 265 264 266 267
		f 4 -185 191 192 1160
		mu 0 4 3 2 6 7
		f 4 -187 193 194 -192
		mu 0 4 548 547 549 550
		f 4 -1254 1256 1255 -194
		mu 0 4 83 82 88 89
		f 4 -190 196 197 198
		mu 0 4 267 266 268 269
		f 4 -193 199 200 1158
		mu 0 4 7 6 13 14
		f 4 -195 201 202 -200
		mu 0 4 550 549 551 552
		f 4 -1256 1258 1257 -202
		mu 0 4 89 88 96 97
		f 4 -198 204 205 206
		mu 0 4 269 268 270 271
		f 4 -201 207 208 1156
		mu 0 4 14 13 22 23
		f 4 -203 209 210 -208
		mu 0 4 552 551 553 554
		f 4 -1258 1260 1259 -210
		mu 0 4 97 96 104 105
		f 4 -206 212 213 214
		mu 0 4 271 270 272 273
		f 4 -209 215 216 1154
		mu 0 4 23 22 30 31
		f 4 -211 217 218 -216
		mu 0 4 554 553 555 556
		f 4 -1260 1262 1261 -218
		mu 0 4 105 104 112 113
		f 4 -214 220 221 222
		mu 0 4 273 272 274 275
		f 4 -217 223 224 1152
		mu 0 4 31 30 36 37
		f 4 -219 225 226 -224
		mu 0 4 556 555 557 558
		f 4 -1262 1264 1263 -226
		mu 0 4 113 112 118 119
		f 4 -222 228 229 230
		mu 0 4 275 274 276 277
		f 4 -225 231 232 1150
		mu 0 4 37 36 41 42
		f 4 -227 233 234 -232
		mu 0 4 558 557 559 560
		f 4 -1264 1266 1265 -234
		mu 0 4 119 118 123 124
		f 4 -230 236 237 238
		mu 0 4 277 276 278 279
		f 4 -233 239 240 1148
		mu 0 4 42 41 45 46
		f 4 -235 241 242 -240
		mu 0 4 560 559 561 562
		f 4 -1266 1268 1267 -242
		mu 0 4 124 123 127 128
		f 4 -238 244 245 246
		mu 0 4 279 278 280 281
		f 4 -241 247 248 1146
		mu 0 4 46 45 49 50
		f 4 -243 249 250 -248
		mu 0 4 562 561 563 564
		f 4 -1268 1270 1269 -250
		mu 0 4 128 127 131 132
		f 4 -246 252 253 254
		mu 0 4 281 280 282 283
		f 4 -249 255 256 1144
		mu 0 4 50 49 53 54
		f 4 -251 257 258 -256
		mu 0 4 564 563 565 566
		f 4 -1270 1272 1271 -258
		mu 0 4 132 131 135 136
		f 4 -254 260 261 262
		mu 0 4 283 282 284 285
		f 4 -257 263 264 1142
		mu 0 4 54 53 57 58
		f 4 -259 265 266 -264
		mu 0 4 566 565 567 568
		f 4 -1272 1274 1273 -266
		mu 0 4 136 135 139 140
		f 4 -262 268 269 270
		mu 0 4 285 284 286 287
		f 4 -265 271 272 1140
		mu 0 4 58 57 61 62
		f 4 -267 273 274 -272
		mu 0 4 568 567 569 570
		f 4 -1274 1276 1275 -274
		mu 0 4 140 139 143 144
		f 4 -270 276 277 278
		mu 0 4 287 286 288 289
		f 4 -273 279 280 1138
		mu 0 4 62 61 65 66
		f 4 -275 281 282 -280
		mu 0 4 570 569 571 572
		f 4 -1276 1278 1277 -282
		mu 0 4 144 143 147 148
		f 4 -278 284 285 286
		mu 0 4 289 288 290 291
		f 4 -281 287 288 1136
		mu 0 4 66 65 69 70
		f 4 -283 289 290 -288
		mu 0 4 572 571 573 574
		f 4 -1278 1280 1279 -290
		mu 0 4 148 147 151 152
		f 4 -286 292 293 294
		mu 0 4 291 290 292 293
		f 4 -289 295 296 1134
		mu 0 4 70 69 73 74
		f 4 -291 297 298 -296
		mu 0 4 574 573 575 576
		f 4 -1280 1282 1281 -298
		mu 0 4 152 151 155 156
		f 4 -294 300 301 302
		mu 0 4 293 292 294 295
		f 4 -297 303 304 1132
		mu 0 4 74 73 932 933
		f 4 -299 305 306 -304
		mu 0 4 576 575 577 578
		f 4 -1282 1284 1283 -306
		mu 0 4 156 155 972 973
		f 4 -302 308 309 310
		mu 0 4 295 294 296 297
		f 4 -305 311 312 1130
		mu 0 4 933 932 934 935
		f 4 -307 313 314 -312
		mu 0 4 578 577 579 580
		f 4 -1284 1286 1285 -314
		mu 0 4 973 972 975 976
		f 4 -310 316 317 318
		mu 0 4 297 296 298 299
		f 4 -313 319 320 1128
		mu 0 4 935 934 937 938
		f 4 -315 321 322 -320
		mu 0 4 580 579 581 582
		f 4 -1286 1288 1287 -322
		mu 0 4 976 975 979 980
		f 4 -318 324 325 326
		mu 0 4 299 298 300 301
		f 4 -321 327 328 1126
		mu 0 4 938 937 941 942
		f 4 -323 329 330 -328
		mu 0 4 582 581 583 584
		f 4 -1288 1290 1289 -330
		mu 0 4 980 979 983 984
		f 4 -326 332 333 334
		mu 0 4 301 300 302 303
		f 4 -329 335 336 1124
		mu 0 4 942 941 945 946
		f 4 -331 337 338 -336
		mu 0 4 584 583 585 586
		f 4 -1290 1292 1291 -338
		mu 0 4 984 983 987 988
		f 4 -334 340 341 342
		mu 0 4 303 302 304 305
		f 4 -337 343 344 1122
		mu 0 4 946 945 949 950
		f 4 -339 345 346 -344
		mu 0 4 586 585 587 588
		f 4 -1292 1294 1293 -346
		mu 0 4 988 987 991 992
		f 4 -342 348 349 350
		mu 0 4 305 304 306 307
		f 4 -345 351 352 1120
		mu 0 4 950 949 953 954
		f 4 -347 353 354 -352
		mu 0 4 588 587 589 590
		f 4 -1294 1296 1295 -354
		mu 0 4 992 991 995 996
		f 4 -350 356 357 358
		mu 0 4 307 306 308 309
		f 4 -353 359 360 1118
		mu 0 4 954 953 957 958
		f 4 -355 361 362 -360
		mu 0 4 590 589 591 592
		f 4 -1296 1298 1297 -362
		mu 0 4 996 995 999 1000
		f 4 -358 364 365 366
		mu 0 4 309 308 310 311
		f 4 -361 367 368 1116
		mu 0 4 958 957 961 962
		f 4 -363 369 370 -368
		mu 0 4 592 591 593 594
		f 4 -1298 1300 1299 -370
		mu 0 4 1000 999 1003 1004
		f 4 -366 372 373 374
		mu 0 4 311 310 312 313
		f 4 -369 375 376 1114
		mu 0 4 962 961 965 966
		f 4 -371 377 378 -376
		mu 0 4 594 593 595 596
		f 4 -1300 1302 1301 -378
		mu 0 4 1004 1003 1007 1008
		f 4 -374 380 381 382
		mu 0 4 313 312 314 315
		f 4 -377 383 384 1112
		mu 0 4 966 965 1099 603
		f 4 -379 385 386 -384
		mu 0 4 596 595 597 598
		f 4 -1302 1304 1303 -386
		mu 0 4 1008 1007 326 331
		f 4 -382 388 389 390
		mu 0 4 315 314 316 317
		f 4 -385 391 392 1110
		mu 0 4 603 1099 1097 604
		f 4 -387 393 394 -392
		mu 0 4 598 597 599 600
		f 4 -1304 1306 1305 -394
		mu 0 4 331 326 325 332
		f 4 -390 396 397 398
		mu 0 4 317 316 318 319
		f 4 -393 399 400 1108
		mu 0 4 604 1097 1095 607
		f 4 -395 401 402 -400
		mu 0 4 600 599 601 602
		f 4 -1306 1308 1307 -402
		mu 0 4 332 325 330 337
		f 4 -398 404 405 406
		mu 0 4 319 318 322 323
		f 4 -401 407 408 1106
		mu 0 4 607 1095 1093 612
		f 4 -403 409 410 -408
		mu 0 4 602 601 605 606
		f 4 -1308 1310 1309 -410
		mu 0 4 337 330 336 342
		f 4 -406 412 413 414
		mu 0 4 323 322 327 328
		f 4 -409 415 416 1104
		mu 0 4 612 1093 1091 618
		f 4 -411 417 418 -416
		mu 0 4 606 605 610 611
		f 4 -1310 1312 1311 -418
		mu 0 4 342 336 341 347
		f 4 -414 420 421 422
		mu 0 4 328 327 333 334
		f 4 -417 423 424 1102
		mu 0 4 618 1091 1089 623
		f 4 -419 425 426 -424
		mu 0 4 611 610 616 617
		f 4 -1312 1314 1313 -426
		mu 0 4 347 341 346 352
		f 4 -422 428 429 430
		mu 0 4 334 333 338 339
		f 4 -425 431 432 1100
		mu 0 4 623 1089 1087 628
		f 4 -427 433 434 -432
		mu 0 4 617 616 621 622
		f 4 -1314 1316 1315 -434
		mu 0 4 352 346 351 357
		f 4 -430 436 437 438
		mu 0 4 339 338 343 344
		f 4 -433 439 440 1098
		mu 0 4 628 1087 1085 633
		f 4 -435 441 442 -440
		mu 0 4 622 621 626 627
		f 4 -1316 1318 1317 -442
		mu 0 4 357 351 356 362
		f 4 -438 444 445 446
		mu 0 4 344 343 348 349
		f 4 -441 447 448 1096
		mu 0 4 633 1085 1083 638
		f 4 -443 449 450 -448
		mu 0 4 627 626 631 632
		f 4 -1318 1320 1319 -450
		mu 0 4 362 356 361 367
		f 4 -446 452 453 454
		mu 0 4 349 348 353 354
		f 4 -449 455 456 1094
		mu 0 4 638 1083 1081 643
		f 4 -451 457 458 -456
		mu 0 4 632 631 636 637
		f 4 -1320 1322 1321 -458
		mu 0 4 367 361 366 372
		f 4 -454 460 461 462
		mu 0 4 354 353 358 359
		f 4 -457 463 464 1092
		mu 0 4 643 1081 1079 648
		f 4 -459 465 466 -464
		mu 0 4 637 636 641 642
		f 4 -1322 1324 1323 -466
		mu 0 4 372 366 371 377
		f 4 -462 468 469 470
		mu 0 4 359 358 363 364
		f 4 -465 471 472 1090
		mu 0 4 648 1079 1077 653
		f 4 -467 473 474 -472
		mu 0 4 642 641 646 647
		f 4 -1324 1326 1325 -474
		mu 0 4 377 371 376 382
		f 4 -470 476 477 478
		mu 0 4 364 363 368 369
		f 4 -473 479 480 1088
		mu 0 4 653 1077 1075 658
		f 4 -475 481 482 -480
		mu 0 4 647 646 651 652
		f 4 -1326 1328 1327 -482
		mu 0 4 382 376 381 387
		f 4 -478 484 485 486
		mu 0 4 369 368 373 374
		f 4 -481 487 488 1086
		mu 0 4 658 1075 1073 663
		f 4 -483 489 490 -488
		mu 0 4 652 651 656 657
		f 4 -1328 1330 1329 -490
		mu 0 4 387 381 386 392
		f 4 -486 492 493 494
		mu 0 4 374 373 378 379
		f 4 -489 495 496 1084
		mu 0 4 663 1073 1071 668
		f 4 -491 497 498 -496
		mu 0 4 657 656 661 662
		f 4 -1330 1332 1331 -498
		mu 0 4 392 386 391 397
		f 4 -494 500 501 502
		mu 0 4 379 378 383 384
		f 4 -497 503 504 1082
		mu 0 4 668 1071 1069 673
		f 4 -499 505 506 -504
		mu 0 4 662 661 666 667
		f 4 -1332 1334 1333 -506
		mu 0 4 397 391 396 400
		f 4 -502 508 509 510
		mu 0 4 384 383 388 389
		f 4 -505 511 512 1080
		mu 0 4 673 1069 1067 678
		f 4 -507 513 514 -512
		mu 0 4 667 666 671 672
		f 4 -1334 1336 1335 -514
		mu 0 4 400 396 399 404
		f 4 -510 516 517 518
		mu 0 4 389 388 393 394
		f 4 -513 519 520 1078
		mu 0 4 678 1067 1065 683
		f 4 -515 521 522 -520
		mu 0 4 672 671 676 677
		f 4 -1336 1338 1337 -522
		mu 0 4 404 399 401 405
		f 4 -518 524 525 526
		mu 0 4 200 201 197 196
		f 4 -521 527 528 1076
		mu 0 4 683 1065 1064 688
		f 4 -523 529 530 -528
		mu 0 4 677 676 681 682
		f 4 -1338 1340 1339 -530
		mu 0 4 405 401 406 409
		f 4 -526 532 533 534
		mu 0 4 196 197 193 192
		f 4 -529 535 536 1074
		mu 0 4 688 1064 1063 691
		f 4 -531 537 538 -536
		mu 0 4 682 681 686 687
		f 4 -1340 1342 1341 -538
		mu 0 4 409 406 410 413
		f 4 -534 540 541 542
		mu 0 4 192 193 189 188
		f 4 -537 543 544 1072
		mu 0 4 691 1063 694 695
		f 4 -539 545 546 -544
		mu 0 4 1012 1013 1014 1015
		f 4 -1342 1344 1343 -546
		mu 0 4 413 410 414 417
		f 4 -542 548 549 550
		mu 0 4 188 189 185 184
		f 4 -545 551 552 1070
		mu 0 4 695 694 698 699
		f 4 -547 553 554 -552
		mu 0 4 164 165 161 160
		f 4 -1344 1346 1345 -554
		mu 0 4 417 414 418 421
		f 4 -550 556 557 558
		mu 0 4 184 185 181 180
		f 4 -553 559 560 1068
		mu 0 4 699 698 702 703
		f 4 -555 561 562 -560
		mu 0 4 160 161 162 163
		f 4 -1346 1348 1347 -562
		mu 0 4 421 418 422 425
		f 4 -558 564 565 566
		mu 0 4 180 181 182 183
		f 4 -561 567 568 1066
		mu 0 4 703 702 706 707
		f 4 -563 569 570 -568
		mu 0 4 163 162 166 167
		f 4 -1348 1350 1349 -570
		mu 0 4 425 422 426 429
		f 4 -566 572 573 574
		mu 0 4 183 182 186 187
		f 4 1419 -569 575 576
		mu 0 4 710 707 706 711
		f 4 -571 577 578 -576
		mu 0 4 167 166 168 169
		f 4 -1350 1352 1351 -578
		mu 0 4 429 426 430 433
		f 4 -574 580 581 582
		mu 0 4 187 186 190 191
		f 4 -577 583 584 1418
		mu 0 4 710 711 715 716
		f 4 -579 585 586 -584
		mu 0 4 169 168 170 171
		f 4 -1352 1354 1353 -586
		mu 0 4 433 430 434 437
		f 4 -582 588 589 590
		mu 0 4 191 190 194 195
		f 4 -585 591 592 1416
		mu 0 4 716 715 720 721
		f 4 -587 593 594 -592
		mu 0 4 171 170 172 173
		f 4 -1354 1356 1355 -594
		mu 0 4 437 434 438 441
		f 4 -590 596 597 598
		mu 0 4 195 194 198 199
		f 4 -593 599 600 1414
		mu 0 4 721 720 724 725
		f 4 -595 601 602 -600
		mu 0 4 173 172 174 175
		f 4 -1356 1358 1357 -602
		mu 0 4 441 438 442 445
		f 4 -598 604 605 606
		mu 0 4 199 198 202 203
		f 4 -601 607 608 1412
		mu 0 4 725 724 728 729
		f 4 -603 609 610 -608
		mu 0 4 175 174 176 177
		f 4 -1358 1360 1359 -610
		mu 0 4 445 442 446 449
		f 4 -606 612 613 614
		mu 0 4 1016 1017 1018 1019
		f 4 -609 615 616 1410
		mu 0 4 729 728 732 733
		f 4 -611 617 618 -616
		mu 0 4 177 176 178 179
		f 4 -1360 1362 1361 -618
		mu 0 4 449 446 450 453
		f 4 -614 620 621 622
		mu 0 4 1019 1018 1020 1021
		f 4 -617 623 624 1408
		mu 0 4 733 732 736 737
		f 4 -619 625 626 -624
		mu 0 4 1030 1031 1032 1033
		f 4 -1362 1364 1363 -626
		mu 0 4 453 450 454 457
		f 4 -622 628 629 630
		mu 0 4 1021 1020 1022 1023
		f 4 -625 631 632 1406
		mu 0 4 737 736 740 741
		f 4 -627 633 634 -632
		mu 0 4 1033 1032 1034 1035
		f 4 -1364 1366 1365 -634
		mu 0 4 457 454 458 461
		f 4 -630 636 637 638
		mu 0 4 1023 1022 1024 1025
		f 4 -633 639 640 1404
		mu 0 4 741 740 744 745
		f 4 -635 641 642 -640
		mu 0 4 1035 1034 1036 1037
		f 4 -1366 1368 1367 -642
		mu 0 4 461 458 462 465
		f 4 -638 644 645 646
		mu 0 4 1025 1024 1026 1027
		f 4 -641 647 648 1402
		mu 0 4 745 744 748 749
		f 4 -643 649 650 -648
		mu 0 4 1037 1036 1038 1039
		f 4 -1368 1370 1369 -650
		mu 0 4 465 462 466 469
		f 4 -646 652 653 654
		mu 0 4 1027 1026 1028 1029
		f 4 -649 655 656 1400
		mu 0 4 749 748 752 753
		f 4 -651 657 658 -656
		mu 0 4 1039 1038 1040 1041
		f 4 -1370 1372 1371 -658
		mu 0 4 469 466 470 473
		f 4 -654 660 661 662
		mu 0 4 208 209 205 204
		f 4 -657 663 664 1398
		mu 0 4 753 752 756 757
		f 4 -659 665 666 -664
		mu 0 4 1041 1040 1042 1043
		f 4 -1372 1374 1373 -666
		mu 0 4 473 470 474 477
		f 4 -662 668 669 670
		mu 0 4 204 205 206 207
		f 4 -665 671 672 1396
		mu 0 4 757 756 760 761
		f 4 -667 673 674 -672
		mu 0 4 1043 1042 1044 1045
		f 4 -1374 1376 1375 -674
		mu 0 4 477 474 478 481
		f 4 -670 676 677 678
		mu 0 4 207 206 210 211
		f 4 -673 679 680 1394
		mu 0 4 761 760 764 765
		f 4 -675 681 682 -680
		mu 0 4 490 1062 1061 491
		f 4 -1376 1378 1377 -682
		mu 0 4 481 478 482 485
		f 4 -678 684 685 686
		mu 0 4 211 210 212 213
		f 4 -681 687 688 1392
		mu 0 4 765 764 768 769
		f 4 -683 689 690 -688
		mu 0 4 491 1061 1060 496
		f 4 -1378 1380 1379 -690
		mu 0 4 485 482 486 489
		f 4 -686 692 693 694
		mu 0 4 213 212 1046 781
		f 4 -689 695 696 1390
		mu 0 4 769 768 772 773
		f 4 -691 697 698 -696
		mu 0 4 496 1060 1059 499
		f 4 -1380 1382 1381 -698
		mu 0 4 489 486 492 495
		f 4 -694 700 701 702
		mu 0 4 781 1046 1047 1048
		f 4 -697 703 704 1388
		mu 0 4 773 772 776 777
		f 4 -699 705 706 -704
		mu 0 4 499 1059 1054 500
		f 4 -1382 1384 1383 -706
		mu 0 4 495 492 497 498
		f 4 -8 -1206 1208 -11
		mu 0 4 890 898 899 1055
		f 4 1386 -705 -707 -1384
		mu 0 4 1049 1050 1051 1052
		f 4 -710 -711 708 -565
		mu 0 4 713 708 712 717
		f 4 -712 -713 709 -557
		mu 0 4 709 704 708 713
		f 4 -714 -715 711 -549
		mu 0 4 705 700 704 709
		f 4 -716 -717 713 -541
		mu 0 4 701 696 700 705
		f 4 -718 -719 715 -533
		mu 0 4 697 692 696 701
		f 4 -720 -721 717 -525
		mu 0 4 693 689 692 697
		f 4 -722 -723 719 -517
		mu 0 4 690 684 689 693
		f 4 -724 -725 721 -509
		mu 0 4 685 679 684 690
		f 4 -726 -727 723 -501
		mu 0 4 680 674 679 685
		f 4 -728 -729 725 -493
		mu 0 4 675 669 674 680
		f 4 -730 -731 727 -485
		mu 0 4 670 664 669 675
		f 4 -732 -733 729 -477
		mu 0 4 665 659 664 670
		f 4 -734 -735 731 -469
		mu 0 4 660 654 659 665
		f 4 -736 -737 733 -461
		mu 0 4 655 649 654 660
		f 4 -738 -739 735 -453
		mu 0 4 650 644 649 655
		f 4 -740 -741 737 -445
		mu 0 4 645 639 644 650
		f 4 -742 -743 739 -437
		mu 0 4 640 634 639 645
		f 4 -744 -745 741 -429
		mu 0 4 635 629 634 640
		f 4 -746 -747 743 -421
		mu 0 4 630 624 629 635
		f 4 -748 -749 745 -413
		mu 0 4 625 619 624 630
		f 4 -750 -751 747 -405
		mu 0 4 620 613 619 625
		f 4 -752 -753 749 -397
		mu 0 4 615 609 613 620
		f 4 -754 -755 751 -389
		mu 0 4 614 608 609 615
		f 4 -756 -757 753 -381
		mu 0 4 971 969 608 614
		f 4 -758 -759 755 -373
		mu 0 4 970 967 969 971
		f 4 -760 -761 757 -365
		mu 0 4 968 963 967 970
		f 4 -762 -763 759 -357
		mu 0 4 964 959 963 968
		f 4 -764 -765 761 -349
		mu 0 4 960 955 959 964
		f 4 -766 -767 763 -341
		mu 0 4 956 951 955 960
		f 4 -768 -769 765 -333
		mu 0 4 952 947 951 956
		f 4 -770 -771 767 -325
		mu 0 4 948 943 947 952
		f 4 -772 -773 769 -317
		mu 0 4 944 939 943 948
		f 4 -774 -775 771 -309
		mu 0 4 940 936 939 944
		f 4 -776 -777 773 -301
		mu 0 4 79 77 936 940
		f 4 -778 -779 775 -293
		mu 0 4 78 75 77 79
		f 4 -780 -781 777 -285
		mu 0 4 76 71 75 78
		f 4 -782 -783 779 -277
		mu 0 4 72 67 71 76
		f 4 -784 -785 781 -269
		mu 0 4 68 63 67 72
		f 4 -786 -787 783 -261
		mu 0 4 64 59 63 68
		f 4 -788 -789 785 -253
		mu 0 4 60 55 59 64
		f 4 -790 -791 787 -245
		mu 0 4 56 51 55 60
		f 4 -792 -793 789 -237
		mu 0 4 52 47 51 56
		f 4 -794 -795 791 -229
		mu 0 4 48 43 47 52
		f 4 -796 -797 793 -221
		mu 0 4 44 38 43 48
		f 4 -798 -799 795 -213
		mu 0 4 39 32 38 44
		f 4 -800 -801 797 -205
		mu 0 4 33 24 32 39
		f 4 -802 -803 799 -197
		mu 0 4 25 15 24 33
		f 4 -804 -805 801 -189
		mu 0 4 17 9 15 25
		f 4 -806 -807 803 -181
		mu 0 4 16 8 9 17
		f 4 -808 -809 805 -173
		mu 0 4 21 12 8 16
		f 4 -810 -811 807 -165
		mu 0 4 29 20 12 21
		f 4 -812 -813 809 -157
		mu 0 4 35 28 20 29
		f 4 -814 -815 811 -149
		mu 0 4 40 34 28 35
		f 4 -816 -817 813 -141
		mu 0 4 855 853 34 40
		f 4 -818 -819 815 -133
		mu 0 4 854 851 853 855
		f 4 -820 -821 817 -125
		mu 0 4 852 847 851 854
		f 4 -822 -823 819 -117
		mu 0 4 848 843 847 852
		f 4 -824 -825 821 -109
		mu 0 4 844 839 843 848
		f 4 -826 -827 823 -101
		mu 0 4 840 835 839 844
		f 4 -828 -829 825 -93
		mu 0 4 836 830 835 840
		f 4 -830 -831 827 -85
		mu 0 4 831 824 830 836
		f 4 -832 -833 829 -77
		mu 0 4 825 816 824 831
		f 4 -834 -835 831 -69
		mu 0 4 817 808 816 825
		f 4 -836 -837 833 -61
		mu 0 4 809 799 808 817
		f 4 -838 -839 835 -53
		mu 0 4 801 793 799 809
		f 4 -840 -841 837 -45
		mu 0 4 800 792 793 801
		f 4 -842 -843 839 -37
		mu 0 4 805 796 792 800
		f 4 -844 -845 841 -29
		mu 0 4 813 804 796 805
		f 4 -846 -847 843 -21
		mu 0 4 821 812 804 813
		f 4 -848 -849 845 -13
		mu 0 4 827 820 812 821
		f 4 4 -851 847 -2
		mu 0 4 832 826 820 827
		f 4 -853 -5 -1 -852
		mu 0 4 1056 906 912 1058
		f 4 -855 851 -4 11
		mu 0 4 892 900 907 901
		f 4 -857 -12 -15 19
		mu 0 4 884 892 901 893
		f 4 -859 -20 -23 27
		mu 0 4 876 884 893 885
		f 4 -861 -28 -31 35
		mu 0 4 868 876 885 877
		f 4 -863 -36 -39 43
		mu 0 4 862 868 877 869
		f 4 -865 -44 -47 51
		mu 0 4 863 862 869 870
		f 4 -867 -52 -55 59
		mu 0 4 871 863 870 878
		f 4 -869 -60 -63 67
		mu 0 4 879 871 878 886
		f 4 -871 -68 -71 75
		mu 0 4 887 879 886 894
		f 4 -873 -76 -79 83
		mu 0 4 895 887 894 902
		f 4 -875 -84 -87 91
		mu 0 4 903 895 902 908
		f 4 -877 -92 -95 99
		mu 0 4 909 903 908 913
		f 4 -879 -100 -103 107
		mu 0 4 914 909 913 917
		f 4 -881 -108 -111 115
		mu 0 4 918 914 917 921
		f 4 -883 -116 -119 123
		mu 0 4 922 918 921 925
		f 4 -885 -124 -127 131
		mu 0 4 926 922 925 929
		f 4 -887 -132 -135 139
		mu 0 4 930 926 929 931
		f 4 -889 -140 -143 147
		mu 0 4 114 930 931 120
		f 4 -891 -148 -151 155
		mu 0 4 108 114 120 115
		f 4 -893 -156 -159 163
		mu 0 4 100 108 115 109
		f 4 -895 -164 -167 171
		mu 0 4 92 100 109 101
		f 4 -897 -172 -175 179
		mu 0 4 86 92 101 93
		f 4 -899 -180 -183 187
		mu 0 4 87 86 93 94
		f 4 -901 -188 -191 195
		mu 0 4 95 87 94 102
		f 4 -903 -196 -199 203
		mu 0 4 103 95 102 110
		f 4 -905 -204 -207 211
		mu 0 4 111 103 110 116
		f 4 -907 -212 -215 219
		mu 0 4 117 111 116 121
		f 4 -909 -220 -223 227
		mu 0 4 122 117 121 125
		f 4 -911 -228 -231 235
		mu 0 4 126 122 125 129
		f 4 -913 -236 -239 243
		mu 0 4 130 126 129 133
		f 4 -915 -244 -247 251
		mu 0 4 134 130 133 137
		f 4 -917 -252 -255 259
		mu 0 4 138 134 137 141
		f 4 -919 -260 -263 267
		mu 0 4 142 138 141 145
		f 4 -921 -268 -271 275
		mu 0 4 146 142 145 149
		f 4 -923 -276 -279 283
		mu 0 4 150 146 149 153
		f 4 -925 -284 -287 291
		mu 0 4 154 150 153 157
		f 4 -927 -292 -295 299
		mu 0 4 158 154 157 159
		f 4 -929 -300 -303 307
		mu 0 4 974 158 159 977
		f 4 -931 -308 -311 315
		mu 0 4 978 974 977 981
		f 4 -933 -316 -319 323
		mu 0 4 982 978 981 985
		f 4 -935 -324 -327 331
		mu 0 4 986 982 985 989
		f 4 -937 -332 -335 339
		mu 0 4 990 986 989 993
		f 4 -939 -340 -343 347
		mu 0 4 994 990 993 997
		f 4 -941 -348 -351 355
		mu 0 4 998 994 997 1001
		f 4 -943 -356 -359 363
		mu 0 4 1002 998 1001 1005
		f 4 -945 -364 -367 371
		mu 0 4 1006 1002 1005 1009
		f 4 -947 -372 -375 379
		mu 0 4 1010 1006 1009 1011
		f 4 -949 -380 -383 387
		mu 0 4 321 1010 1011 1100
		f 4 -951 -388 -391 395
		mu 0 4 320 321 1100 1098
		f 4 -953 -396 -399 403
		mu 0 4 324 320 1098 1096
		f 4 -955 -404 -407 411
		mu 0 4 329 324 1096 1094
		f 4 -957 -412 -415 419
		mu 0 4 335 329 1094 1092
		f 4 -959 -420 -423 427
		mu 0 4 340 335 1092 1090
		f 4 -961 -428 -431 435
		mu 0 4 345 340 1090 1088
		f 4 -963 -436 -439 443
		mu 0 4 350 345 1088 1086
		f 4 -965 -444 -447 451
		mu 0 4 355 350 1086 1084
		f 4 -967 -452 -455 459
		mu 0 4 360 355 1084 1082
		f 4 -969 -460 -463 467
		mu 0 4 365 360 1082 1080
		f 4 -971 -468 -471 475
		mu 0 4 370 365 1080 1078
		f 4 -973 -476 -479 483
		mu 0 4 375 370 1078 1076
		f 4 -975 -484 -487 491
		mu 0 4 380 375 1076 1074
		f 4 -977 -492 -495 499
		mu 0 4 385 380 1074 1072
		f 4 -979 -500 -503 507
		mu 0 4 390 385 1072 1070
		f 4 -981 -508 -511 515
		mu 0 4 395 390 1070 1068
		f 4 -983 -516 -519 523
		mu 0 4 398 395 1068 1066
		f 4 -985 -524 -527 531
		mu 0 4 402 398 1066 403
		f 4 -987 -532 -535 539
		mu 0 4 407 402 403 408
		f 4 -989 -540 -543 547
		mu 0 4 411 407 408 412
		f 4 -991 -548 -551 555
		mu 0 4 415 411 412 416
		f 4 -993 -556 -559 563
		mu 0 4 419 415 416 420
		f 4 -995 -564 -567 571
		mu 0 4 423 419 420 424
		f 4 -997 -572 -575 579
		mu 0 4 427 423 424 428
		f 4 -999 -580 -583 587
		mu 0 4 431 427 428 432
		f 4 -1001 -588 -591 595
		mu 0 4 435 431 432 436;
	setAttr ".fc[500:709]"
		f 4 -1003 -596 -599 603
		mu 0 4 439 435 436 440
		f 4 -1005 -604 -607 611
		mu 0 4 443 439 440 444
		f 4 -1007 -612 -615 619
		mu 0 4 447 443 444 448
		f 4 -1009 -620 -623 627
		mu 0 4 451 447 448 452
		f 4 -1011 -628 -631 635
		mu 0 4 455 451 452 456
		f 4 -1013 -636 -639 643
		mu 0 4 459 455 456 460
		f 4 -1015 -644 -647 651
		mu 0 4 463 459 460 464
		f 4 -1017 -652 -655 659
		mu 0 4 467 463 464 468
		f 4 -1019 -660 -663 667
		mu 0 4 471 467 468 472
		f 4 -1021 -668 -671 675
		mu 0 4 475 471 472 476
		f 4 -1023 -676 -679 683
		mu 0 4 479 475 476 480
		f 4 -1025 -684 -687 691
		mu 0 4 483 479 480 484
		f 4 -1027 -692 -695 699
		mu 0 4 487 483 484 488
		f 4 -1029 -700 -703 707
		mu 0 4 493 487 488 494
		f 4 -702 -1030 -1031 -708
		mu 0 4 782 1057 1053 783
		f 4 -1032 -1033 1029 -701
		mu 0 4 778 775 779 780
		f 4 -1034 -1035 1031 -693
		mu 0 4 774 771 775 778
		f 4 -1036 -1037 1033 -685
		mu 0 4 770 767 771 774
		f 4 -1038 -1039 1035 -677
		mu 0 4 766 763 767 770
		f 4 -1040 -1041 1037 -669
		mu 0 4 762 759 763 766
		f 4 -1042 -1043 1039 -661
		mu 0 4 758 755 759 762
		f 4 -1044 -1045 1041 -653
		mu 0 4 754 751 755 758
		f 4 -1046 -1047 1043 -645
		mu 0 4 750 747 751 754
		f 4 -1048 -1049 1045 -637
		mu 0 4 746 743 747 750
		f 4 -1050 -1051 1047 -629
		mu 0 4 742 739 743 746
		f 4 -1052 -1053 1049 -621
		mu 0 4 738 735 739 742
		f 4 -1054 -1055 1051 -613
		mu 0 4 734 731 735 738
		f 4 -1056 -1057 1053 -605
		mu 0 4 730 727 731 734
		f 4 -1058 -1059 1055 -597
		mu 0 4 726 723 727 730
		f 4 -1060 -1061 1057 -589
		mu 0 4 722 719 723 726
		f 4 -1062 -1063 1059 -581
		mu 0 4 718 714 719 722
		f 4 -709 -1064 1061 -573
		mu 0 4 717 712 714 718
		f 4 -1066 -1067 1064 710
		mu 0 4 708 703 707 712
		f 4 -1068 -1069 1065 712
		mu 0 4 704 699 703 708
		f 4 -1070 -1071 1067 714
		mu 0 4 700 695 699 704
		f 4 -1072 -1073 1069 716
		mu 0 4 696 691 695 700
		f 4 -1074 -1075 1071 718
		mu 0 4 692 688 691 696
		f 4 -1076 -1077 1073 720
		mu 0 4 689 683 688 692
		f 4 -1078 -1079 1075 722
		mu 0 4 684 678 683 689
		f 4 -1080 -1081 1077 724
		mu 0 4 679 673 678 684
		f 4 -1082 -1083 1079 726
		mu 0 4 674 668 673 679
		f 4 -1084 -1085 1081 728
		mu 0 4 669 663 668 674
		f 4 -1086 -1087 1083 730
		mu 0 4 664 658 663 669
		f 4 -1088 -1089 1085 732
		mu 0 4 659 653 658 664
		f 4 -1090 -1091 1087 734
		mu 0 4 654 648 653 659
		f 4 -1092 -1093 1089 736
		mu 0 4 649 643 648 654
		f 4 -1094 -1095 1091 738
		mu 0 4 644 638 643 649
		f 4 -1096 -1097 1093 740
		mu 0 4 639 633 638 644
		f 4 -1098 -1099 1095 742
		mu 0 4 634 628 633 639
		f 4 -1100 -1101 1097 744
		mu 0 4 629 623 628 634
		f 4 -1102 -1103 1099 746
		mu 0 4 624 618 623 629
		f 4 -1104 -1105 1101 748
		mu 0 4 619 612 618 624
		f 4 -1106 -1107 1103 750
		mu 0 4 613 607 612 619
		f 4 -1108 -1109 1105 752
		mu 0 4 609 604 607 613
		f 4 -1110 -1111 1107 754
		mu 0 4 608 603 604 609
		f 4 -1112 -1113 1109 756
		mu 0 4 969 966 603 608
		f 4 -1114 -1115 1111 758
		mu 0 4 967 962 966 969
		f 4 -1116 -1117 1113 760
		mu 0 4 963 958 962 967
		f 4 -1118 -1119 1115 762
		mu 0 4 959 954 958 963
		f 4 -1120 -1121 1117 764
		mu 0 4 955 950 954 959
		f 4 -1122 -1123 1119 766
		mu 0 4 951 946 950 955
		f 4 -1124 -1125 1121 768
		mu 0 4 947 942 946 951
		f 4 -1126 -1127 1123 770
		mu 0 4 943 938 942 947
		f 4 -1128 -1129 1125 772
		mu 0 4 939 935 938 943
		f 4 -1130 -1131 1127 774
		mu 0 4 936 933 935 939
		f 4 -1132 -1133 1129 776
		mu 0 4 77 74 933 936
		f 4 -1134 -1135 1131 778
		mu 0 4 75 70 74 77
		f 4 -1136 -1137 1133 780
		mu 0 4 71 66 70 75
		f 4 -1138 -1139 1135 782
		mu 0 4 67 62 66 71
		f 4 -1140 -1141 1137 784
		mu 0 4 63 58 62 67
		f 4 -1142 -1143 1139 786
		mu 0 4 59 54 58 63
		f 4 -1144 -1145 1141 788
		mu 0 4 55 50 54 59
		f 4 -1146 -1147 1143 790
		mu 0 4 51 46 50 55
		f 4 -1148 -1149 1145 792
		mu 0 4 47 42 46 51
		f 4 -1150 -1151 1147 794
		mu 0 4 43 37 42 47
		f 4 -1152 -1153 1149 796
		mu 0 4 38 31 37 43
		f 4 -1154 -1155 1151 798
		mu 0 4 32 23 31 38
		f 4 -1156 -1157 1153 800
		mu 0 4 24 14 23 32
		f 4 -1158 -1159 1155 802
		mu 0 4 15 7 14 24
		f 4 -1160 -1161 1157 804
		mu 0 4 9 3 7 15
		f 4 -1162 -1163 1159 806
		mu 0 4 8 0 3 9
		f 4 -1164 -1165 1161 808
		mu 0 4 12 4 0 8
		f 4 -1166 -1167 1163 810
		mu 0 4 20 10 4 12
		f 4 -1168 -1169 1165 812
		mu 0 4 28 18 10 20
		f 4 -1170 -1171 1167 814
		mu 0 4 34 26 18 28
		f 4 -1172 -1173 1169 816
		mu 0 4 853 850 26 34
		f 4 -1174 -1175 1171 818
		mu 0 4 851 846 850 853
		f 4 -1176 -1177 1173 820
		mu 0 4 847 842 846 851
		f 4 -1178 -1179 1175 822
		mu 0 4 843 838 842 847
		f 4 -1180 -1181 1177 824
		mu 0 4 839 834 838 843
		f 4 -1182 -1183 1179 826
		mu 0 4 835 829 834 839
		f 4 -1184 -1185 1181 828
		mu 0 4 830 823 829 835
		f 4 -1186 -1187 1183 830
		mu 0 4 824 815 823 830
		f 4 -1188 -1189 1185 832
		mu 0 4 816 807 815 824
		f 4 -1190 -1191 1187 834
		mu 0 4 808 798 807 816
		f 4 -1192 -1193 1189 836
		mu 0 4 799 791 798 808
		f 4 -1194 -1195 1191 838
		mu 0 4 793 787 791 799
		f 4 -1196 -1197 1193 840
		mu 0 4 792 784 787 793
		f 4 -1198 -1199 1195 842
		mu 0 4 796 788 784 792
		f 4 -1200 -1201 1197 844
		mu 0 4 804 794 788 796
		f 4 -1202 -1203 1199 846
		mu 0 4 812 802 794 804
		f 4 -1204 -1205 1201 848
		mu 0 4 820 810 802 812
		f 4 849 -1207 1203 850
		mu 0 4 826 818 810 820
		f 4 -1209 -850 852 -1208
		mu 0 4 1055 899 906 1056
		f 4 -1211 1207 854 853
		mu 0 4 883 891 900 892
		f 4 -1213 -854 856 855
		mu 0 4 875 883 892 884
		f 4 -1215 -856 858 857
		mu 0 4 867 875 884 876
		f 4 -1217 -858 860 859
		mu 0 4 861 867 876 868
		f 4 -1219 -860 862 861
		mu 0 4 857 861 868 862
		f 4 -1221 -862 864 863
		mu 0 4 858 857 862 863
		f 4 -1223 -864 866 865
		mu 0 4 864 858 863 871
		f 4 -1225 -866 868 867
		mu 0 4 872 864 871 879
		f 4 -1227 -868 870 869
		mu 0 4 880 872 879 887
		f 4 -1229 -870 872 871
		mu 0 4 888 880 887 895
		f 4 -1231 -872 874 873
		mu 0 4 896 888 895 903
		f 4 -1233 -874 876 875
		mu 0 4 904 896 903 909
		f 4 -1235 -876 878 877
		mu 0 4 910 904 909 914
		f 4 -1237 -878 880 879
		mu 0 4 915 910 914 918
		f 4 -1239 -880 882 881
		mu 0 4 919 915 918 922
		f 4 -1241 -882 884 883
		mu 0 4 923 919 922 926
		f 4 -1243 -884 886 885
		mu 0 4 927 923 926 930
		f 4 -1245 -886 888 887
		mu 0 4 107 927 930 114
		f 4 -1247 -888 890 889
		mu 0 4 99 107 114 108
		f 4 -1249 -890 892 891
		mu 0 4 91 99 108 100
		f 4 -1251 -892 894 893
		mu 0 4 85 91 100 92
		f 4 -1253 -894 896 895
		mu 0 4 81 85 92 86
		f 4 -1255 -896 898 897
		mu 0 4 82 81 86 87
		f 4 -1257 -898 900 899
		mu 0 4 88 82 87 95
		f 4 -1259 -900 902 901
		mu 0 4 96 88 95 103
		f 4 -1261 -902 904 903
		mu 0 4 104 96 103 111
		f 4 -1263 -904 906 905
		mu 0 4 112 104 111 117
		f 4 -1265 -906 908 907
		mu 0 4 118 112 117 122
		f 4 -1267 -908 910 909
		mu 0 4 123 118 122 126
		f 4 -1269 -910 912 911
		mu 0 4 127 123 126 130
		f 4 -1271 -912 914 913
		mu 0 4 131 127 130 134
		f 4 -1273 -914 916 915
		mu 0 4 135 131 134 138
		f 4 -1275 -916 918 917
		mu 0 4 139 135 138 142
		f 4 -1277 -918 920 919
		mu 0 4 143 139 142 146
		f 4 -1279 -920 922 921
		mu 0 4 147 143 146 150
		f 4 -1281 -922 924 923
		mu 0 4 151 147 150 154
		f 4 -1283 -924 926 925
		mu 0 4 155 151 154 158
		f 4 -1285 -926 928 927
		mu 0 4 972 155 158 974
		f 4 -1287 -928 930 929
		mu 0 4 975 972 974 978
		f 4 -1289 -930 932 931
		mu 0 4 979 975 978 982
		f 4 -1291 -932 934 933
		mu 0 4 983 979 982 986
		f 4 -1293 -934 936 935
		mu 0 4 987 983 986 990
		f 4 -1295 -936 938 937
		mu 0 4 991 987 990 994
		f 4 -1297 -938 940 939
		mu 0 4 995 991 994 998
		f 4 -1299 -940 942 941
		mu 0 4 999 995 998 1002
		f 4 -1301 -942 944 943
		mu 0 4 1003 999 1002 1006
		f 4 -1303 -944 946 945
		mu 0 4 1007 1003 1006 1010
		f 4 -1305 -946 948 947
		mu 0 4 326 1007 1010 321
		f 4 -1307 -948 950 949
		mu 0 4 325 326 321 320
		f 4 -1309 -950 952 951
		mu 0 4 330 325 320 324
		f 4 -1311 -952 954 953
		mu 0 4 336 330 324 329
		f 4 -1313 -954 956 955
		mu 0 4 341 336 329 335
		f 4 -1315 -956 958 957
		mu 0 4 346 341 335 340
		f 4 -1317 -958 960 959
		mu 0 4 351 346 340 345
		f 4 -1319 -960 962 961
		mu 0 4 356 351 345 350
		f 4 -1321 -962 964 963
		mu 0 4 361 356 350 355
		f 4 -1323 -964 966 965
		mu 0 4 366 361 355 360
		f 4 -1325 -966 968 967
		mu 0 4 371 366 360 365
		f 4 -1327 -968 970 969
		mu 0 4 376 371 365 370
		f 4 -1329 -970 972 971
		mu 0 4 381 376 370 375
		f 4 -1331 -972 974 973
		mu 0 4 386 381 375 380
		f 4 -1333 -974 976 975
		mu 0 4 391 386 380 385
		f 4 -1335 -976 978 977
		mu 0 4 396 391 385 390
		f 4 -1337 -978 980 979
		mu 0 4 399 396 390 395
		f 4 -1339 -980 982 981
		mu 0 4 401 399 395 398
		f 4 -1341 -982 984 983
		mu 0 4 406 401 398 402
		f 4 -1343 -984 986 985
		mu 0 4 410 406 402 407
		f 4 -1345 -986 988 987
		mu 0 4 414 410 407 411
		f 4 -1347 -988 990 989
		mu 0 4 418 414 411 415
		f 4 -1349 -990 992 991
		mu 0 4 422 418 415 419
		f 4 -1351 -992 994 993
		mu 0 4 426 422 419 423
		f 4 -1353 -994 996 995
		mu 0 4 430 426 423 427
		f 4 -1355 -996 998 997
		mu 0 4 434 430 427 431
		f 4 -1357 -998 1000 999
		mu 0 4 438 434 431 435
		f 4 -1359 -1000 1002 1001
		mu 0 4 442 438 435 439
		f 4 -1361 -1002 1004 1003
		mu 0 4 446 442 439 443
		f 4 -1363 -1004 1006 1005
		mu 0 4 450 446 443 447
		f 4 -1365 -1006 1008 1007
		mu 0 4 454 450 447 451
		f 4 -1367 -1008 1010 1009
		mu 0 4 458 454 451 455
		f 4 -1369 -1010 1012 1011
		mu 0 4 462 458 455 459
		f 4 -1371 -1012 1014 1013
		mu 0 4 466 462 459 463
		f 4 -1373 -1014 1016 1015
		mu 0 4 470 466 463 467
		f 4 -1375 -1016 1018 1017
		mu 0 4 474 470 467 471
		f 4 -1377 -1018 1020 1019
		mu 0 4 478 474 471 475
		f 4 -1379 -1020 1022 1021
		mu 0 4 482 478 475 479
		f 4 -1381 -1022 1024 1023
		mu 0 4 486 482 479 483
		f 4 -1383 -1024 1026 1025
		mu 0 4 492 486 483 487
		f 4 -1385 -1026 1028 1027
		mu 0 4 497 492 487 493
		f 4 1030 -1386 -1387 -1028
		mu 0 4 214 215 216 217
		f 4 -1388 -1389 1385 1032
		mu 0 4 775 773 777 779
		f 4 -1390 -1391 1387 1034
		mu 0 4 771 769 773 775
		f 4 -1392 -1393 1389 1036
		mu 0 4 767 765 769 771
		f 4 -1394 -1395 1391 1038
		mu 0 4 763 761 765 767
		f 4 -1396 -1397 1393 1040
		mu 0 4 759 757 761 763
		f 4 -1398 -1399 1395 1042
		mu 0 4 755 753 757 759
		f 4 -1400 -1401 1397 1044
		mu 0 4 751 749 753 755
		f 4 -1402 -1403 1399 1046
		mu 0 4 747 745 749 751
		f 4 -1404 -1405 1401 1048
		mu 0 4 743 741 745 747
		f 4 -1406 -1407 1403 1050
		mu 0 4 739 737 741 743
		f 4 -1408 -1409 1405 1052
		mu 0 4 735 733 737 739
		f 4 -1410 -1411 1407 1054
		mu 0 4 731 729 733 735
		f 4 -1412 -1413 1409 1056
		mu 0 4 727 725 729 731
		f 4 -1414 -1415 1411 1058
		mu 0 4 723 721 725 727
		f 4 -1416 -1417 1413 1060
		mu 0 4 719 716 721 723
		f 4 -1418 -1419 1415 1062
		mu 0 4 714 710 716 719
		f 4 1063 -1065 -1420 1417
		mu 0 4 714 712 707 710;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 28 
		26 0 
		27 0 
		34 0 
		40 0 
		73 0 
		74 0 
		77 0 
		79 0 
		106 0 
		107 0 
		114 0 
		120 0 
		155 0 
		156 0 
		158 0 
		159 0 
		212 0 
		213 0 
		315 0 
		321 0 
		326 0 
		331 0 
		598 0 
		603 0 
		608 0 
		614 0 
		781 0 
		1046 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 3;
	setAttr ".dsm" 2;
createNode transform -n "span_06" -p "spans";
	rename -uid "3EA8A11D-4697-EBE8-7596-28BE1DBD0A85";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -8.2473772456384928 -2.5223530731199491 49.294546132019377 ;
	setAttr ".r" -type "double3" -7.5326898356342324 -26.549340226533968 6.5970469813929569 ;
	setAttr ".rp" -type "double3" 16.3114333152771 3.7885923385620117 0 ;
	setAttr ".sp" -type "double3" 16.3114333152771 3.7885923385620117 0 ;
createNode mesh -n "span_Shape6" -p "span_06";
	rename -uid "DE01F274-430E-1494-46EC-6FAAD739D10F";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 2.5639152526855469 0.52320408821105957 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 1010 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.48555505 0.094483346 0.49322069
		 0.093291327 0.49416807 0.10634652 0.48632693 0.10751216 0.48204014 0.082115754 0.48992553
		 0.080821909 0.50015646 0.09222357 0.50159907 0.10524564 0.49402469 0.11974023 0.48549014
		 0.12096982 0.47954953 0.069416672 0.48745537 0.06808427 0.49739599 0.079604156 0.50751191
		 0.091084488 0.50950122 0.10407263 0.5029341 0.1184553 0.49505216 0.13307942 0.48633826
		 0.13430658 0.49504322 0.066820391 0.50532472 0.0783002 0.51574957 0.089795306 0.5177083
		 0.10284747 0.51139736 0.11723505 0.50433981 0.13176402 0.49805418 0.14618562 0.4895519
		 0.14735547 0.50309515 0.065457456 0.51364928 0.076924637 0.52404368 0.088496163 0.52577788
		 0.10163578 0.51932502 0.11608719 0.51306689 0.13052645 0.50681806 0.14497426 0.50155318
		 0.15915832 0.49360749 0.16021204 0.51145285 0.064031318 0.52197385 0.075551875 0.53238189
		 0.087196022 0.53405452 0.10041361 0.52710748 0.11495502 0.52084202 0.12942652 0.51495415
		 0.14385031 0.50925219 0.15813899 0.50399059 0.17220131 0.49619317 0.17318472 0.51981109
		 0.062607773 0.53029925 0.07418035 0.5410825 0.085889727 0.54298121 0.099148512 0.5348767
		 0.11382528 0.52839684 0.12835509 0.52254665 0.14280209 0.51690674 0.15712187 0.51143003
		 0.17126745 0.50512624 0.18528265 0.49722433 0.18620674 0.52816993 0.061187744 0.53862798
		 0.072809659 0.54893404 0.084766798 0.55184805 0.097912878 0.54312903 0.11265962 0.5358476
		 0.12729599 0.52999568 0.14177148 0.52453744 0.15610436 0.51894116 0.17032221 0.51279962
		 0.18438888 0.50476617 0.1983531 0.49633542 0.19923976 0.53653467 0.059771962 0.54686868
		 0.071466595 0.55677557 0.083587527 0.56022477 0.096709348 0.55169845 0.11146596 0.54312629
		 0.12625791 0.5371989 0.14077125 0.53202689 0.15510467 0.52668017 0.16934252 0.52066475
		 0.18346845 0.51366031 0.1974141 0.54448628 0.058415398 0.55492866 0.070149221 0.56020993
		 0.11026428 0.55057001 0.1252009 0.54418457 0.13979787 0.53941625 0.15411761 0.53433132
		 0.1683732 0.52866513 0.1825283 0.52218187 0.19651638 0.55235666 0.057075456 0.55856043
		 0.12408031 0.55135006 0.13880256 0.5466342 0.15315226 0.54193646 0.16741002 0.53653747
		 0.18160382 0.53022087 0.1956716 0.55911303 0.13773392 0.5539844 0.15217082 0.54959249
		 0.16644105 0.54434597 0.18068765 0.53825784 0.19482641 0.56180573 0.15113087 0.55734682
		 0.16546088 0.55216181 0.1797722 0.54625583 0.19398606 0.56530958 0.16445476 0.55966133
		 0.17889445 0.5538128 0.1932018 0.56717253 0.17801321 0.55989838 0.19260225 0.56678754
		 0.19190118 0.37598062 0.45085788 0.3683213 0.44962686 0.36918312 0.43598574 0.37702417
		 0.43719214 0.37240827 0.46411359 0.36449754 0.46277332 0.36855352 0.42215222 0.37708867
		 0.42342609 0.38291073 0.45196089 0.38447958 0.43833578 0.36980963 0.47748229 0.36187762
		 0.47610337 0.37991571 0.46537724 0.3694759 0.40856332 0.37818348 0.40983486 0.38597697
		 0.4247542 0.39026046 0.45313737 0.39240408 0.43955359 0.37741822 0.47878984 0.38787973
		 0.46672925 0.37280047 0.39534205 0.38129425 0.39655465 0.38746506 0.4111976 0.39442229
		 0.42601573 0.39849174 0.45446837 0.40061331 0.44082144 0.38548279 0.48019752 0.3961975
		 0.46814686 0.3768999 0.3822718 0.38484019 0.38336587 0.3900407 0.39780879 0.39618719
		 0.41247982 0.40234941 0.42720452 0.40677971 0.45580968 0.40868688 0.44207528 0.3938334
		 0.48166579 0.40451527 0.46956214 0.37960553 0.3690187 0.387398 0.37004173 0.39254487
		 0.384426 0.3981601 0.39897239 0.40395838 0.4136194 0.41013122 0.42837685 0.41511565
		 0.45715317 0.41696578 0.44334054 0.40218425 0.48313129 0.41283369 0.47097588 0.38074243
		 0.35560256 0.38862848 0.35656548 0.39483261 0.3710134 0.40020788 0.38548392 0.40574723
		 0.40005916 0.41150951 0.41472942 0.41789508 0.42954612 0.42379791 0.45850304 0.42589426
		 0.44465157 0.41053611 0.48459396 0.42115325 0.4723888 0.38004857 0.34205982 0.38846746
		 0.34298837 0.39630008 0.35749876 0.40234417 0.37199748 0.40783596 0.38654053 0.41319096
		 0.40112758 0.41895962 0.41582689 0.42612994 0.43075284 0.43163192 0.45966512 0.4347921
		 0.44593942 0.41889322 0.48605266 0.42939138 0.47377819 0.39732811 0.34396911 0.40417245
		 0.35846078 0.41008461 0.37301737 0.41532254 0.38757855 0.42038894 0.40216434 0.42623985
		 0.41690266 0.43468702 0.43198958 0.43946189 0.46088371 0.44318759 0.44719028 0.4268837
		 0.4874571 0.43746495 0.4751412 0.40580967 0.34490579 0.41217762 0.35944277 0.41773742
		 0.37402624 0.42271262 0.38860384 0.42736948 0.40317309 0.4336766 0.41799748 0.44318527
		 0.4332338 0.43477452 0.48884165 0.41384324 0.34579116 0.42005637 0.3604086 0.42534369
		 0.37502885 0.42993361 0.38960683 0.43452984 0.40420473 0.44165397 0.41915801 0.42187607
		 0.34667706 0.42787072 0.36136574 0.43299931 0.37603733 0.43728507 0.39062643 0.44228721
		 0.40531278 0.42988268 0.34755981 0.43569028 0.36232209 0.44075984 0.37705851 0.44510353
		 0.39170647 0.43744799 0.34838402 0.44323751 0.3632443 0.44872135 0.37810564 0.4435364
		 0.34901527 0.45078182 0.36416826 0.45042351 0.34975141 0.50707448 0.31371629 0.51468545
		 0.31378752 0.51199245 0.32563812 0.50385344 0.32537651 0.50760293 0.30213934 0.51507366
		 0.30200416 0.52200937 0.3138628 0.52074373 0.32591963 0.51008296 0.33804125 0.50169605
		 0.33769059 0.50640357 0.29013228 0.51403427 0.28985816 0.52217197 0.30188179 0.52943343
		 0.31393343 0.52919567 0.32618999 0.51942599 0.33842272 0.51123494 0.35073406 0.50310141
		 0.35034966 0.52138263 0.28959852 0.52938414 0.30175543 0.53715056 0.31399739 0.53691411
		 0.32643569 0.5285182 0.33879572 0.51993537 0.35113704 0.5125308 0.36328495 0.5048992
		 0.36284226 0.52888262 0.28933108 0.53705269 0.30161357 0.54487848 0.31405902 0.54460174
		 0.32667941;
	setAttr ".uvst[0].uvsp[250:499]" 0.53645033 0.33913118 0.52826416 0.35152763
		 0.52011794 0.36372608 0.51175481 0.37547213 0.5041554 0.3748911 0.53667086 0.28904903
		 0.54481596 0.30146718 0.55261844 0.31411964 0.55246907 0.32692999 0.54409677 0.33945751
		 0.53589445 0.35189521 0.52768201 0.36416578 0.51939082 0.37605739 0.51004362 0.38693744
		 0.50236005 0.38608634 0.54446781 0.28876537 0.5525189 0.30132043 0.56079978 0.31420016
		 0.56110859 0.32721305 0.55175322 0.33978456 0.5435006 0.35226208 0.53524595 0.36460501
		 0.52691782 0.37663108 0.51799828 0.38782096 0.50824028 0.39765227 0.50059164 0.39640999
		 0.55203223 0.28848571 0.55999374 0.30117762 0.56920785 0.31429148 0.56992352 0.32750386
		 0.55984569 0.34012908 0.55110693 0.3526299 0.5428099 0.36504412 0.53443533 0.37720215
		 0.52583772 0.38869047 0.51626438 0.39894736 0.55882049 0.28822255 0.56693107 0.30104917
		 0.57723355 0.31436509 0.57810378 0.32776809 0.56818765 0.34048378 0.55871284 0.35299891
		 0.55035222 0.36548221 0.54195273 0.37777203 0.53333646 0.3895179 0.52421874 0.40023279
		 0.5642544 0.2879898 0.57418036 0.30091572 0.57616436 0.34082431 0.56631857 0.3533684
		 0.55741024 0.36587352 0.54923612 0.37832052 0.54079497 0.39034021 0.53173196 0.40145624
		 0.57073992 0.28773409 0.57392919 0.35373664 0.56424797 0.36624295 0.55571651 0.37879604
		 0.54823536 0.39116013 0.53910327 0.40266097 0.5714972 0.36665267 0.56204939 0.37925804
		 0.55521482 0.39194322 0.54644501 0.40386045 0.56905335 0.37978125 0.56197149 0.39270878
		 0.55333096 0.4049511 0.56910866 0.39350283 0.56003809 0.4059968 0.56712794 0.40713346
		 0.39902872 0.22437078 0.3914347 0.22440249 0.38827899 0.21219552 0.3964203 0.21197563
		 0.39936516 0.23678684 0.39189532 0.23661351 0.38614112 0.19963726 0.39452976 0.19932938
		 0.40634185 0.224334 0.40517133 0.21173942 0.39822853 0.24935487 0.39061147 0.24904355
		 0.4064627 0.23694551 0.38762689 0.1868701 0.39575744 0.18652725 0.4038747 0.19899565
		 0.41378266 0.22430182 0.41360056 0.21151298 0.40558729 0.24965259 0.41367438 0.23710859
		 0.38946113 0.1741913 0.39708653 0.17378798 0.40445006 0.186169 0.41296849 0.19866908
		 0.42150301 0.22427714 0.42131552 0.21130678 0.41309947 0.24995908 0.42134184 0.2372895
		 0.38878092 0.16179538 0.39637151 0.16125417 0.40466848 0.17338592 0.41276994 0.18582124
		 0.42090225 0.198374 0.42923102 0.22425473 0.42900425 0.21110207 0.42088848 0.25028071
		 0.42910439 0.23747548 0.38699284 0.14996254 0.39467299 0.14915106 0.40398365 0.16071036
		 0.41223457 0.17298484 0.42040026 0.18549266 0.42855024 0.19808659 0.43696773 0.22423346
		 0.43687266 0.21089144 0.42868403 0.25060394 0.43681297 0.2376616 0.38509366 0.13871813
		 0.39274842 0.13751429 0.40261286 0.14831001 0.41150644 0.16017574 0.41980064 0.17258418
		 0.4280082 0.18516439 0.43620598 0.19779855 0.44512209 0.22419563 0.44551361 0.2106522
		 0.43624717 0.25092214 0.44430089 0.23784277 0.40077889 0.1362592 0.41043386 0.14748269
		 0.41902661 0.15964296 0.42736655 0.17218357 0.43561608 0.18483534 0.44428399 0.19749564
		 0.45351142 0.22414778 0.45432976 0.21040612 0.44303384 0.25121969 0.45130748 0.2380082
		 0.40873921 0.13501352 0.41792864 0.14669403 0.42654657 0.15911132 0.43491468 0.17178348
		 0.44322383 0.18450502 0.45261413 0.1971838 0.46152809 0.22411516 0.46251139 0.21018331
		 0.44846654 0.25147998 0.45857951 0.23817998 0.41625834 0.13382804 0.42539138 0.14590997
		 0.43383244 0.1586 0.44199359 0.1714263 0.45083132 0.18417414 0.46058762 0.19688395
		 0.45495069 0.25176853 0.42363477 0.13266078 0.4328416 0.14512756 0.44031507 0.1581575
		 0.44884938 0.17109005 0.45844406 0.18384416 0.43098909 0.1314975 0.43985909 0.14437756
		 0.44665 0.15772769 0.45610642 0.17071651 0.4379105 0.13043553 0.4466489 0.14364439
		 0.45365661 0.15724011 0.44464773 0.12941784 0.45380506 0.14288464 0.45175576 0.12831497
		 0.49593207 0.44208574 0.50235319 0.4440763 0.49997908 0.45291966 0.49392942 0.45018381
		 0.49666286 0.43122137 0.50346804 0.43292987 0.5081169 0.44584572 0.50523829 0.4553231
		 0.4942345 0.46218878 0.48838285 0.4589718 0.51002604 0.43456268 0.51407826 0.44767702
		 0.51058847 0.45776194 0.4995603 0.46513832 0.51693428 0.43628192 0.52087188 0.44978392
		 0.51682663 0.46056938 0.50509548 0.46819341 0.52783942 0.45196557 0.52344811 0.46353328
		 0.51133454 0.47159243 0.53480786 0.45415545 0.53004205 0.46648133 0.51769197 0.47504365
		 0.54177684 0.45634949 0.53619403 0.46916354 0.52370012 0.47826982 0.54874802 0.45854342
		 0.542202 0.47175515 0.52892643 0.48105377 0.555722 0.46073437 0.54860538 0.47458076
		 0.53408015 0.48379499 0.53993708 0.4869287 0.38641813 0.088946879 0.3799637 0.090910792
		 0.3775945 0.081164241 0.38366029 0.078463674 0.38770324 0.10085455 0.38085404 0.10253793
		 0.37153021 0.071470618 0.37741637 0.068282425 0.39224732 0.087187856 0.38893339 0.076091111
		 0.39434946 0.099232495 0.38279518 0.065348864 0.39828733 0.085365295 0.3942984 0.073682636
		 0.40133518 0.09752807 0.38839054 0.062306464 0.40512636 0.083283633 0.40055355 0.070909083
		 0.40847597 0.095767677 0.39466512 0.058932602 0.41210818 0.081139654 0.40719292 0.067980886
		 0.40104192 0.055518955 0.4190903 0.078988016 0.41381612 0.065060496 0.40706849 0.052323997
		 0.42607275 0.076832652 0.42003235 0.062381625 0.41230959 0.049566448 0.43305656 0.074677467
		 0.42609373 0.059798479 0.41747707 0.046850979 0.44004363 0.072524637 0.43252525 0.056999266
		 0.42334986 0.043746829 0.98568189 0.013661742 0.9835465 0.013660789 0.98351562 0.0039096475
		 0.98565102 0.0039108396 0.98566389 0.023631334 0.98352849 0.023631454 0.98560578
		 0.039685905 0.98347062 0.039686799 0.98567808 0.055597842 0.98354268 0.055598855
		 0.98567355 0.066239893;
	setAttr ".uvst[0].uvsp[500:749]" 0.98353815 0.066240907 0.98568809 0.076881766
		 0.98355269 0.07688278 0.8711217 0.0039138198 0.87112749 0.0056490898 0.86401683 0.0057369471
		 0.86400962 0.0039915442 0.85406435 0.0058514476 0.85407358 0.0040915608 0.84412074
		 0.0056695342 0.84413004 0.0039096475 0.22832686 0.0039096475 0.22832382 0.0056694746
		 0.21959543 0.0064786077 0.21959835 0.0047186613 0.23575252 0.0039684772 0.23574942
		 0.0057284236 0.21176755 0.0058238506 0.21177059 0.0040639639 0.20264137 0.0056718588
		 0.20264429 0.003911972 0.69220692 0.012258708 0.6900717 0.012255132 0.69007277 0.0039096475
		 0.69220799 0.0039114952 0.46727371 0.017328933 0.47532171 0.011823297 0.47778812
		 0.029195368 0.46894446 0.030740812 0.48499715 0.014230698 0.48706126 0.027567983
		 0.48204714 0.042013191 0.47368184 0.043455698 0.49602851 0.025895402 0.49746433 0.033886135
		 0.49015042 0.040636182 0.48615798 0.054830946 0.47836 0.056152023 0.50220436 0.01122874
		 0.50453943 0.024514601 0.49843252 0.039209962 0.49327523 0.053659774 0.51177758 0.01587528
		 0.51301074 0.023039192 0.50686479 0.037741423 0.5008235 0.052394308 0.51920992 0.0082682967
		 0.52148336 0.021561012 0.51529604 0.036274537 0.50918019 0.050950482 0.53228974 0.0319269
		 0.53296119 0.037231579 0.52372491 0.03480427 0.51757479 0.049500965 0.53608829 0.0053330362
		 0.53722042 0.01877442 0.53388524 0.04269363 0.52597028 0.048055433 0.54431009 0.003909111
		 0.54496342 0.017412528 0.53998834 0.031975418 0.53413081 0.046679169 0.54763687 0.030640289
		 0.54073602 0.045488328 0.54797268 0.044226781 0.35736108 0.53432459 0.3493408 0.52877903
		 0.351071 0.51534611 0.3599093 0.5169363 0.35586357 0.50256175 0.36422247 0.50404644
		 0.36704731 0.53196543 0.369174 0.51861024 0.36844063 0.49107534 0.36065102 0.48971555
		 0.37232804 0.50546616 0.37813556 0.52035612 0.37960863 0.51234436 0.37555194 0.49228209
		 0.38061184 0.50693595 0.38423753 0.53505349 0.38663661 0.52175117 0.38309354 0.49358532
		 0.38903648 0.50844693 0.39383411 0.53045505 0.39510036 0.52326912 0.39144284 0.49507108
		 0.39746058 0.50995624 0.40122795 0.53809923 0.40356565 0.52478993 0.39982963 0.49656275
		 0.40588164 0.51146883 0.41442668 0.51450676 0.41512215 0.50917739 0.40821779 0.49805072
		 0.41608196 0.50363064 0.41809213 0.54112005 0.41928756 0.52765608 0.41637152 0.49946997
		 0.42216134 0.51438487 0.42630816 0.54258615 0.42702341 0.52905738 0.42297101 0.5006929
		 0.42982316 0.51576209 0.43020117 0.50199127 0.50499004 0.21122156 0.49637434 0.21200815
		 0.51434785 0.21035635 0.50744313 0.22405449 0.49902657 0.22472438 0.52339613 0.20952357
		 0.5162608 0.22334132 0.50886035 0.23712099 0.50057912 0.2376956 0.53152859 0.20878741
		 0.52468914 0.22266668 0.51743692 0.23653555 0.50722957 0.25060177 0.498299 0.25118935
		 0.53953981 0.20806511 0.53266901 0.22204018 0.52574176 0.23596451 0.51739198 0.24989861
		 0.50647181 0.2640518 0.49726495 0.26462013 0.54755026 0.20734304 0.54064792 0.22141749
		 0.53368425 0.23541242 0.52657014 0.24929968 0.5174017 0.26330006 0.51010633 0.27704078
		 0.5012598 0.27751529 0.55555999 0.20661928 0.54862672 0.22079593 0.54162574 0.2348634
		 0.53458768 0.24880403 0.52736104 0.26265228 0.51969028 0.2764774 0.56312859 0.20595326
		 0.55660528 0.22017413 0.54956806 0.23431623 0.54249185 0.24831772 0.53538764 0.26220953
		 0.52825499 0.27602923 0.57071209 0.20528579 0.56458271 0.21955138 0.55751103 0.23376954
		 0.5503971 0.2478323 0.54325628 0.26178181 0.53608906 0.27566504 0.57256001 0.21892804
		 0.56545377 0.2332224 0.5583033 0.24734724 0.55112529 0.26135397 0.54392219 0.27529925
		 0.57339662 0.23267424 0.56620979 0.24686199 0.55899501 0.26092649 0.55170166 0.27493393
		 0.57411671 0.24637598 0.56686503 0.26049888 0.55925876 0.27457327 0.57473564 0.26007056
		 0.5663473 0.27422124 0.5737291 0.2738629 0.38013187 0.32871091 0.38874343 0.32954109
		 0.3829442 0.31558305 0.39134136 0.3162947 0.39809668 0.33045354 0.38457194 0.3023265
		 0.3928276 0.30294085 0.40013209 0.31704992 0.40714058 0.33133194 0.38238674 0.28860369
		 0.39130667 0.28923592 0.40138271 0.30356866 0.40853181 0.31776437 0.41526917 0.33210933
		 0.38134968 0.27496827 0.39055356 0.27558342 0.40143326 0.28998733 0.40966827 0.30418092
		 0.41650808 0.31843126 0.42327654 0.33287221 0.38547978 0.26190412 0.39431134 0.26242259
		 0.40147927 0.27639094 0.4105767 0.29062986 0.41760671 0.30477318 0.42448381 0.31909442
		 0.43128318 0.33363497 0.40386724 0.26303107 0.41143543 0.27708945 0.41858652 0.29116586
		 0.42554569 0.3053624 0.43245924 0.31975651 0.43928927 0.3343994 0.41240197 0.26351967
		 0.41946 0.27757293 0.42648849 0.29169223 0.43348518 0.30594993 0.44043443 0.32041883
		 0.44691885 0.33511269 0.42023361 0.2639235 0.42732623 0.27804071 0.43439126 0.29221785
		 0.441425 0.30653703 0.44840881 0.32108188 0.45453176 0.33582324 0.42806476 0.26432914
		 0.43519318 0.27850845 0.44229472 0.29274309 0.44936493 0.30712444 0.45638278 0.32174569
		 0.4358463 0.264734 0.44306055 0.27897596 0.45019874 0.29326844 0.45730487 0.30771291
		 0.44340941 0.26513335 0.45092842 0.27944356 0.45810297 0.29379469 0.45053923 0.26552224
		 0.45879668 0.27991188 0.45793888 0.26591837 0.50683391 0.40911674 0.49932545 0.40762889
		 0.51458573 0.41064191 0.50524759 0.42103529 0.49797833 0.41940868 0.5222165 0.412148
		 0.51251572 0.42265391 0.52953291 0.413607 0.51972973 0.42426538 0.53681886 0.41506636
		 0.52694309 0.42588758 0.5438481 0.41647059 0.5341537 0.42751873 0.52406609 0.43807745
		 0.55012798 0.41770309 0.54109621 0.42909664 0.53119183 0.43988949 0.55629313 0.4189083
		 0.5472973 0.43051189 0.53828496 0.44170332 0.56309527 0.42025632 0.55339319 0.43190336
		 0.54492354 0.44342315 0.56012392 0.43343222 0.55137581 0.44510257;
	setAttr ".uvst[0].uvsp[750:999]" 0.55819517 0.4468596 0.38380849 0.12688524
		 0.39131907 0.12543544 0.38241744 0.11470461 0.38968709 0.11311495 0.39906579 0.12395036
		 0.39694872 0.11153331 0.40668911 0.12248406 0.40417007 0.1099562 0.41400781 0.12106264
		 0.41139123 0.10836995 0.4213005 0.11964056 0.41860956 0.10677582 0.42833653 0.11827293
		 0.41561246 0.093993455 0.42556024 0.10523486 0.43462229 0.11707315 0.42272159 0.092216879
		 0.43176875 0.10385278 0.44079363 0.11590001 0.42939347 0.090528637 0.43787187 0.10249382
		 0.44760251 0.11458698 0.43587494 0.088880181 0.44461074 0.10100067 0.44271174 0.087159276
		 0.48750505 0.47041214 0.48178732 0.46658385 0.49314204 0.47419983 0.48075327 0.47903937
		 0.47512233 0.47463453 0.49906933 0.47816193 0.486393 0.48346794 0.47280723 0.48916268
		 0.46722966 0.48475325 0.50515187 0.48209202 0.49203479 0.48792744 0.48271051 0.48820311
		 0.51116967 0.48610604 0.50140882 0.48780835 0.48379037 0.49804908 0.51719195 0.49000096
		 0.50361741 0.49676609 0.49935803 0.49057066 0.52277392 0.49365628 0.50939322 0.50103694
		 0.49561235 0.50737458 0.52819425 0.49722695 0.51515394 0.50531453 0.49994186 0.51338243
		 0.5339908 0.50099236 0.52091116 0.50958645 0.50819945 0.51625621 0.5266571 0.51386005
		 0.51602221 0.51586491 0.51817793 0.52473414 0.36434257 0.062884748 0.37012887 0.05906868
		 0.35732555 0.053914964 0.36299643 0.049545407 0.37587166 0.055269897 0.34939566 0.043596804
		 0.35499474 0.039212942 0.36866885 0.045159459 0.38186112 0.051327527 0.36487657 0.040224195
		 0.37434244 0.040744901 0.38796133 0.047425091 0.36603266 0.030385435 0.38371778 0.040934086
		 0.39400908 0.043453991 0.38154441 0.037986457 0.38597047 0.031982005 0.40006244 0.039582968
		 0.37787122 0.021159708 0.3917636 0.027737975 0.40571845 0.035926819 0.3822298 0.015171885
		 0.39754355 0.023487985 0.41120124 0.032359451 0.39050144 0.012336671 0.40332037 0.01924336
		 0.41703194 0.028614581 0.39832252 0.012764871 0.40908682 0.014997602 0.40052167 0.00390625
		 0.0041499138 0.85954559 0.0062840283 0.85961598 0.0060314536 0.87312937 0.0039061606
		 0.87308741 0.006157726 0.88669717 0.0040421188 0.88673955 0.007108897 0.90019155
		 0.0050144196 0.90041137 0.0095475614 0.91327703 0.0075236857 0.91383958 0.014808536
		 0.92509055 0.013055265 0.92623782 0.024050176 0.93401164 0.022896558 0.93573833 0.03592205
		 0.93940628 0.03532815 0.94139171 0.049141377 0.94202912 0.048907608 0.9440732 0.062492102
		 0.94254124 0.06251514 0.9445883 0.075896025 0.941607 0.076112151 0.94363266 0.089179337
		 0.93931913 0.089608312 0.94130147 0.10183465 0.93547785 0.10254711 0.93736565 0.11351764
		 0.92963928 0.1145854 0.9313401 0.12361896 0.92135799 0.12506497 0.92273545 0.13090169
		 0.91087139 0.13267547 0.91176939 0.13519865 0.89861548 0.13711673 0.89910185 0.13681477
		 0.88565934 0.13878602 0.88585758 0.13681585 0.87198728 0.13878554 0.87197477 0.13585877
		 0.85856152 0.13779581 0.85834658 0.13393319 0.84521091 0.13583678 0.84479696 0.13055313
		 0.83202684 0.13238144 0.83140337 0.12539881 0.82112849 0.12703329 0.82012135 0.11777347
		 0.81240952 0.11898768 0.81093162 0.10736763 0.80624455 0.10814148 0.80450624 0.095566154
		 0.80212063 0.096113861 0.80030966 0.083243936 0.79889798 0.083676666 0.79706591 0.070817411
		 0.79668701 0.071062505 0.79483008 0.05875501 0.79619396 0.058656991 0.79433465 0.047661602
		 0.79854393 0.046952426 0.79683304 0.03934893 0.80491596 0.03790164 0.80377108 0.034227759
		 0.81497526 0.032495737 0.81437337 0.031828165 0.82657766 0.030015111 0.82637179 0.031986505
		 0.83843976 0.030148327 0.83861685 0.035303622 0.84876645 0.033706605 0.84967852 0.042425305
		 0.85300964 0.042262822 0.85480088 0.052497566 0.85069442 0.053356051 0.85228783 0.059953481
		 0.8439576 0.061592996 0.84474027 0.061330795 0.83359867 0.063096017 0.83345276 0.059124589
		 0.82095337 0.060830325 0.82063413 0.49118137 0.88463897 0.49121448 0.88677406 0.47766596
		 0.88705057 0.47766161 0.88492501 0.46407938 0.88694894 0.46416634 0.88483346 0.45035839
		 0.88590777 0.45062935 0.8838191 0.43668994 0.88331056 0.43729866 0.88130188 0.42397508
		 0.87756026 0.42515719 0.87583303 0.41401953 0.8671751 0.41576943 0.86605638 0.40820166
		 0.85423994 0.41020033 0.85369343 0.40592545 0.84047592 0.40797603 0.84032798 0.40578637
		 0.82632101 0.40783107 0.8264181 0.40700328 0.81251603 0.40901995 0.81280649 0.4095791
		 0.79886299 0.4115409 0.79937708 0.41391322 0.78547466 0.41576988 0.78626674 0.42054728
		 0.77304828 0.42220709 0.77419221 0.4302209 0.76235867 0.43151361 0.76388258 0.44238138
		 0.75442946 0.44318485 0.75625318 0.45590886 0.75012589 0.45629594 0.75206602 0.4698523
		 0.74833161 0.46994919 0.75029784 0.48378587 0.74833155 0.48366234 0.75028634 0.49760199
		 0.74977124 0.497289 0.75169486 0.5113188 0.75261867 0.51082075 0.75449634 0.52500153
		 0.75726235 0.52425015 0.75903928 0.5374378 0.76381475 0.5363034 0.76537156 0.54782259
		 0.77374458 0.54628819 0.77488214 0.5544579 0.78603381 0.55267584 0.78669673 0.55828214
		 0.79891622 0.55644071 0.799348 0.56104398 0.81183982 0.55918884 0.81216156 0.56275326
		 0.82506365 0.56088233 0.82519478 0.56260824 0.83875847 0.56075633 0.8385464 0.55897403
		 0.85264444 0.55730534 0.8518241 0.54946148 0.86386478 0.5484159 0.86233997 0.53638506
		 0.86973983 0.53590298 0.86796808 0.52266395 0.87192738 0.52258605 0.87010217 0.50874603
		 0.87118697 0.50907582 0.86939704 0.49484956 0.86600602 0.49589786 0.86453283 0.48691922
		 0.8507545 0.48872915 0.85077858 0.49211514 0.83556831 0.4935981 0.83656847 0.50462002
		 0.82500124 0.50521141 0.82669371 0.52039099 0.82450312 0.5200277 0.826235 0.53385103
		 0.82844365 0.5332737 0.83010614 0.5718888 0.0060450435 0.57189167 0.0039096475 0.59893841
		 0.0039129257 0.59893548 0.0060482621;
	setAttr ".uvst[0].uvsp[1000:1009]" 0.56512761 0.0039096475 0.5668875 0.0039096475
		 0.56732851 0.021186829 0.5655688 0.021186829 0.96612531 0.0039120317 0.96826077 0.0039096475
		 0.96826315 0.030786574 0.96612787 0.030789554 0.5668872 0.038464189 0.56512719 0.038464189;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 800 ".vt";
	setAttr ".vt[0:165]"  16.29842758 6.45829821 -1.51800358 16.30946732 6.37753868 -1.51810718
		 16.31089401 6.37761688 1.46268666 16.29984474 6.45837641 1.46282756 15.78791142 6.38072014 -1.54354107
		 15.79994106 6.30047798 -1.54315329 15.80279446 6.31115818 1.40034008 15.79076481 6.39140034 1.40004885
		 15.28340721 6.28989506 -1.44952714 15.29877472 6.21060228 -1.44819307 15.29423332 6.23034191 1.41519153
		 15.27885818 6.30967617 1.41655457 14.78343964 6.16741371 -1.35583329 14.80536175 6.090070724 -1.35503638
		 14.79423046 6.11695814 1.33990669 14.77230835 6.19430113 1.33904099 14.29674911 5.98557663 -1.40041029
		 14.33083916 5.9131217 -1.39616668 14.31100464 5.9499135 1.42212772 14.27699089 6.022433758 1.42380106
		 13.86550426 5.69840193 -1.38897586 13.91983795 5.64000893 -1.38299263 13.88270283 5.67652702 1.43645644
		 13.82851887 5.73523903 1.43590903 13.57073784 5.27182865 -1.32734597 13.6430397 5.2393651 -1.32563686
		 13.58221722 5.2554884 1.4245826 13.50999928 5.28809738 1.42196012 13.43882751 4.76982546 -1.37597752
		 13.51718521 4.75995445 -1.37149799 13.43935871 4.76091862 1.47843409 13.36091518 4.77088881 1.48021507
		 13.43036366 4.25160837 -1.47870076 13.50873089 4.25657415 -1.47733521 13.42572117 4.24948168 1.40257215
		 13.34744072 4.244596 1.3999629 13.50317669 3.73852944 -1.51921535 13.57991219 3.75310135 -1.51668298
		 13.49472904 3.74096179 1.26614606 13.41798878 3.7264154 1.2639575 13.62799644 3.23628998 -1.46530032
		 13.70265293 3.2579577 -1.46344185 13.61304665 3.23553228 1.21539199 13.53840828 3.21385527 1.21259069
		 13.80196381 2.75080085 -1.37949634 13.87332535 2.78058195 -1.37559569 13.77825642 2.7419107 1.24858296
		 13.70682907 2.71210003 1.24671078 14.037258148 2.2926023 -1.34472179 14.10313416 2.33237338 -1.34139097
		 14.0044374466 2.27191424 1.31537557 13.93848515 2.23209572 1.31376004 14.34729862 1.8833493 -1.36627495
		 14.40368366 1.9351511 -1.36252809 14.31189537 1.84973598 1.32297337 14.25522041 1.79769945 1.32436526
		 14.74073982 1.55818605 -1.45218801 14.78178978 1.62241077 -1.45110989 14.71402931 1.51211298 1.24960256
		 14.67296505 1.44787765 1.24704444 15.20547485 1.35502172 -1.50088823 15.22630501 1.42788815 -1.49678361
		 15.18540192 1.28537226 1.34812486 15.16433144 1.21227467 1.34776521 15.70813656 1.27773273 -1.43825305
		 15.71265793 1.35310507 -1.43636286 15.70213795 1.19409573 1.37437284 15.6976347 1.11883497 1.37001586
		 16.21619797 1.30932045 -1.41508412 16.20949936 1.38460779 -1.41266108 16.22759056 1.19899797 1.3673842
		 16.23420525 1.1242857 1.36277759 16.72249222 1.41146314 -1.5337044 16.70758629 1.48513937 -1.53173006
		 16.74606895 1.2707628 1.36037934 16.7609539 1.19765007 1.35552597 17.22040367 1.54930735 -1.60543883
		 17.19853401 1.62023234 -1.60034144 17.25377274 1.39587104 1.35335851 17.2756443 1.32494605 1.34826112
		 17.70179176 1.70657873 -1.47644031 17.672966 1.77506459 -1.47359538 17.74533463 1.57583296 1.28829122
		 17.7743454 1.50763452 1.28578854 18.15632248 1.91303813 -1.3044908 18.11877441 1.97620702 -1.29830956
		 18.20996094 1.8178004 1.15246081 18.24752045 1.75469947 1.14688349 18.53620911 2.19891858 -1.27116895
		 18.48583031 2.25183034 -1.26536846 18.62650871 2.10619354 1.26841819 18.67715263 2.052907944 1.26693952
		 18.8137188 2.57289958 -1.29367089 18.74907112 2.6063602 -1.28798223 18.95013618 2.50584888 1.38070261
		 19.014385223 2.47238827 1.37243247 18.95230293 3.019798994 -1.40614867 18.88126183 3.034041405 -1.40102541
		 19.12343788 2.98643947 1.42371285 19.19433022 2.9721992 1.4174732 19.002368927 3.49908137 -1.47124124
		 18.93062973 3.5043788 -1.46478581 19.18399239 3.48362613 1.36876559 19.25556374 3.47834802 1.36091399
		 19.025909424 3.98317194 -1.39486468 18.95427704 3.98408151 -1.38922644 19.20402718 3.97950244 1.30587745
		 19.27558136 3.9786272 1.29922211 19.011590958 4.46304703 -1.30178928 18.94067383 4.45648384 -1.29550064
		 19.18247604 4.47629309 1.2393055 19.25357628 4.48295927 1.23413789 18.92521477 4.92901421 -1.29848945
		 18.85704041 4.9096632 -1.29312229 19.090730667 4.97406197 1.17936337 19.15885162 4.9933691 1.17227554
		 18.73101807 5.34154797 -1.32726288 18.67358398 5.30064249 -1.32212722 18.88366508 5.4526124 1.22791946
		 18.94143295 5.49365377 1.22385263 18.39475632 5.61757851 -1.34283566 18.36478615 5.55426788 -1.33533883
		 18.4841156 5.79410458 1.22246623 18.51407433 5.85783672 1.21784413 17.95566177 5.7298336 -1.3116287
		 17.94828224 5.66051769 -1.30533624 17.98033524 5.92352343 1.16115797 17.9876709 5.9928031 1.15346038
		 17.49001312 5.72182322 -1.26864266 17.49819946 5.65300179 -1.26160073 17.46555901 5.92181253 1.1543442
		 17.45734215 5.9906106 1.14644837 17.037570953 5.61437798 -1.22107053 17.06086731 5.5496459 -1.20567942
		 16.96193504 5.81747818 1.20092332 16.93863869 5.88266325 1.19500411 16.66086006 5.39536715 -1.13819134
		 16.70942497 5.34712553 -1.12263668 16.49544144 5.55790377 1.25127351 16.44689751 5.60627556 1.24303079
		 16.55554771 5.032366753 -1.092894077 16.62244225 5.045276642 -1.084411263 16.32765388 4.99406719 1.18433249
		 16.26003075 4.98034096 1.18078339 16.77063179 4.65772581 -1.13645494 16.8188858 4.70534182 -1.12313306
		 16.61398888 4.50474072 1.09859097 16.56573868 4.45720434 1.089913011 17.13944817 4.45541906 -1.20657563
		 17.14911079 4.52218676 -1.19051337 17.11136818 4.21171236 1.17180729 17.10091782 4.14416456 1.16841137
		 17.56616783 4.53659678 -1.22281456 17.54003525 4.59822941 -1.21336877 17.66878891 4.29459429 1.22281456
		 17.69492149 4.23296785 1.21375418 18.0039997101 4.77147102 -1.21566284 17.97229004 4.82888794 -1.2064153
		 18.13567734 4.53843069 1.21566284 18.16930771 4.48101425 1.2064153 15.2785511 6.30352116 0.48968336
		 15.78775406 6.38780594 0.49209684 16.29888725 6.4583497 0.49450532 16.30993652 6.37759018 0.49450532
		 15.79978371 6.30756426 0.49238804 15.29387665 6.22422361 0.49026307;
	setAttr ".vt[166:331]" 14.79446507 6.10981274 0.48813066 14.31617928 5.9381218 0.48599067
		 13.89384365 5.66560841 0.48384336 13.60084152 5.25645018 0.48329347 13.4672842 4.76587439 0.46986288
		 13.45533752 4.25492382 0.42660096 13.5216589 3.7448988 0.39098874 13.64114285 3.24229002 0.37141907
		 13.80907536 2.75413013 0.38702399 14.037405968 2.29183054 0.41692805 14.34096146 1.87662113 0.44652167
		 14.73048496 1.54320729 0.46256232 15.19696236 1.3312068 0.46181646 15.70529556 1.24686551 0.45957649
		 16.22266006 1.254673 0.45733014 16.73431969 1.32846665 0.45507744 17.23554993 1.45497417 0.45281854
		 17.72369385 1.6309967 0.44851163 18.1869812 1.86159229 0.4394592 18.58197594 2.15218282 0.44382927
		 18.87884331 2.54026079 0.44441384 19.037643433 3.0027272701 0.44863087 19.099250793 3.4901824 0.44002059
		 19.123106 3.98055506 0.43745112 19.10706329 4.47179556 0.43443704 19.021602631 4.95628548 0.42421588
		 18.81899071 5.4043951 0.43021125 18.44457436 5.72018003 0.42762241 17.96930504 5.84584093 0.41661644
		 17.47572708 5.84181929 0.41400209 16.99443817 5.73353148 0.4209621 16.56665039 5.4869585 0.41986662
		 16.420084 5.0039010048 0.41618225 16.67079926 4.55823088 0.40019163 17.11837578 4.30881214 0.41176787
		 17.62587166 4.39580393 0.41062492 18.1495533 4.67456675 0.4080641 18.18318367 4.61715031 0.39881656
		 17.65200424 4.33417749 0.40156451 17.10866165 4.2420826 0.40342805 16.62254906 4.51069498 0.39151365
		 16.35311508 4.99090385 0.40822321 16.51810646 5.53532553 0.41158193 16.9711647 5.79842234 0.41308826
		 17.46751022 5.91061687 0.40610626 17.9766407 5.9151206 0.40891886 18.47454071 5.78353214 0.42039424
		 18.87638855 5.445261 0.42314526 19.089723587 4.97559261 0.41712806 19.17795563 4.47837543 0.42770141
		 19.19465637 3.9796629 0.43078244 19.17097664 3.48488688 0.43348163 19.10853577 2.98848701 0.44239122
		 18.94334221 2.50677967 0.43824735 18.6323719 2.099251747 0.43828011 18.22454071 1.79849124 0.43388188
		 17.75251961 1.56301475 0.44332695 17.25741959 1.38404918 0.44772112 16.74920464 1.25535393 0.45022407
		 16.22927475 1.17996073 0.45272353 15.70079231 1.17160487 0.45521951 15.1761322 1.25834024 0.45771179
		 14.6894598 1.47899365 0.45923063 14.28451824 1.82479644 0.44413993 13.97148514 2.25203347 0.41454285
		 13.73767376 2.72433734 0.38450146 13.56650448 3.220613 0.36861777 13.44490147 3.73031569 0.38886747
		 13.37697792 4.24993086 0.42492419 13.38898659 4.77571106 0.46891463 13.5285387 5.28892851 0.48177379
		 13.83968544 5.72399569 0.4824141 14.28222847 6.010575294 0.48484188 14.77254295 6.18715572 0.48726493
		 15.27988625 6.29661465 -0.49026322 15.48513794 6.34113455 -0.49160671 15.79279613 6.38661242 -0.49297926
		 15.8038435 6.30585289 -0.49297926 15.49716759 6.26089287 -0.49131551 15.29521179 6.2173171 -0.48968351
		 14.79739571 6.099712849 -0.48579785 14.32209396 5.92550039 -0.48484206 13.90563679 5.65289402 -0.48241431
		 13.61997128 5.24816751 -0.47778735 13.49095631 4.76314163 -0.47750819 13.48055077 4.25543118 -0.4785856
		 13.54852009 3.74859166 -0.48675731 13.66978168 3.24938703 -0.48521876 13.8400774 2.76646972 -0.47915781
		 14.069754601 2.31140733 -0.46707562 14.37213898 1.90555358 -0.46268532 14.7555542 1.58253002 -0.46024194
		 15.21073055 1.37912607 -0.46236059 15.70845318 1.29963541 -0.45522609 16.21773148 1.31036949 -0.45277977
		 16.7222805 1.38780499 -0.45445493 17.21705246 1.5159241 -0.45367208 17.69853592 1.69049561 -0.44526258
		 18.15294075 1.91905046 -0.44233638 18.533638 2.20285273 -0.43669471 18.81395721 2.57390881 -0.43755054
		 18.96251488 3.017752409 -0.43674135 19.02025032 3.49613738 -0.44405955 19.042123795 3.98157859 -0.43170023
		 19.024055481 4.46413422 -0.42839035 18.94002342 4.93331957 -0.42599571 18.74695015 5.35306406 -0.42510885
		 18.40546799 5.63798761 -0.42670318 17.9593277 5.7544241 -0.41991654 17.48697472 5.74824476 -0.4163948
		 17.027580261 5.64129257 -0.41398945 16.63788033 5.41613436 -0.40422621 16.52098465 5.023448467 -0.3932465
		 16.74360085 4.62972069 -0.40180525 17.13361549 4.41514015 -0.40407163 17.58295441 4.49701405 -0.40156463
		 18.022262573 4.73206902 -0.39905596 18.055892944 4.6746521 -0.4083035 17.60908508 4.43538713 -0.41062504
		 17.12397385 4.34849739 -0.41294223 16.69535065 4.58216858 -0.4112021 16.45409012 5.010538578 -0.40172935
		 16.5893383 5.4644804 -0.41381609 17.0043067932 5.70615005 -0.42208087 17.47875786 5.81704283 -0.42429063
		 17.96666336 5.82370758 -0.42744839 18.43543816 5.70129824 -0.43420005 18.8043251 5.39392185 -0.43211782
		 19.0081443787 4.95262671 -0.43308353 19.094932556 4.47070646 -0.4352698 19.11369133 3.98068619 -0.43830168
		 19.091989517 3.4908402 -0.45051497 19.033426285 3.0035092831 -0.44280326 18.87846375 2.54042935 -0.44367731
		 18.58401489 2.14994097 -0.4424952 18.19049263 1.8559525 -0.44799876 17.72735405 1.62251818 -0.4505823
		 17.23892212 1.4449991 -0.45876947 16.73717117 1.31462562 -0.45913565 16.22434616 1.23564625 -0.45735708
		 15.70394993 1.22437477 -0.45957667 15.1899004 1.30625951 -0.4664652 14.71455383 1.51833069 -0.46405473
		 14.31575203 1.85376239 -0.46627688 14.0038709641 2.27162981 -0.47020563 13.7687006 2.73668742 -0.48209655
		 13.59514332 3.22771001 -0.48802006 13.47178173 3.73401785 -0.48920122 13.40221024 4.25044203 -0.4806892
		 13.41270161 4.77300453 -0.47949445 13.54766941 5.28063059 -0.47949645 13.85147858 5.7112813 -0.48384351
		 14.28814316 5.99795437 -0.48599085 14.77547359 6.17705584 -0.48666099 15.27836609 6.3077693 1.11940563
		 15.78963757 6.39019871 1.10000312 16.29933739 6.45836306 1.14419186 16.31038857 6.37760353 1.14411855
		 15.80166721 6.30995655 1.10029423 15.29372215 6.22844887 1.11882102 14.79423523 6.11465883 1.059477568
		 14.31257248 5.94615746 1.11741912 13.88611221 5.6732893 1.12470102 13.58769989 5.25524235 1.12194872
		 13.44776726 4.7619195 1.1554848 13.43562508 4.25113535 1.074622989;
	setAttr ".vt[332:497]" 13.50448132 3.74280715 0.95832437 13.62322235 3.23826861 0.91645944
		 13.78916264 2.74636245 0.9476319 14.015732765 2.27873492 1.0092930794 14.32127857 1.85833704 1.034554362
		 14.71960735 1.52254605 0.98553532 15.18891811 1.30032682 1.057935119 15.70318985 1.21168566 1.069440722
		 16.22594643 1.21755636 1.064032793 16.74215317 1.28999734 1.058611989 17.24769974 1.41557205 1.053178549
		 17.7380352 1.59431386 1.006875515 18.20169449 1.83314133 0.90532172 18.6115818 2.12156224 0.99246472
		 18.92718124 2.51722741 1.075402141 19.096477509 2.99167395 1.11249721 19.15646172 3.48572612 1.065256
		 19.17704582 3.97988033 1.016275764 19.15633774 4.47437716 0.96338558 19.065706253 4.96730947 0.9125092
		 18.86120224 5.43617868 0.9552204 18.47104073 5.76830673 0.94990331 17.97683525 5.89536858 0.89798963
		 17.46912384 5.89288235 0.89253521 16.97285652 5.78843451 0.9339028 16.51917839 5.53425884 0.9741658
		 16.3598175 4.99886417 0.91909635 16.63572311 4.52570724 0.84681171 17.1149292 4.24545622 0.9101302
		 17.6544838 4.32833099 0.95208466 17.92602921 4.46495724 0.94724852 17.95965958 4.4075408 0.93800098
		 17.68061638 4.26670456 0.94302428 17.10457802 4.17801857 0.90607369 16.58747101 4.47817135 0.83813375
		 16.29227829 4.98522949 0.9149887 16.47063446 5.58262539 0.96588111 16.94955444 5.85357666 0.92768973
		 17.46090698 5.96167994 0.88463938 17.98417091 5.96464825 0.89029205 18.50097656 5.8319788 0.94480407
		 18.9189167 5.47717381 0.95056796 19.1338253 4.98661661 0.90542138 19.22740746 4.48103046 0.95799035
		 19.24859428 3.97899008 1.0096117258 19.22806168 3.48044586 1.057597041 19.16736794 2.97743368 1.10625756
		 18.99146843 2.48376131 1.06747961 18.66218948 2.068374872 0.99009323 18.239254 1.77004039 0.89974439
		 17.76699257 1.5261761 1.0036247969 17.2695694 1.34464717 1.04808104 16.75703812 1.21688473 1.053758621
		 16.23256111 1.14284408 1.059426188 15.6986866 1.13642502 1.065083742 15.1679306 1.22730732 1.056307673
		 14.678545 1.45831227 0.98291141 14.26469517 1.80638707 1.034502387 13.94978333 2.23892117 1.0075297356
		 13.71773815 2.7165544 0.94566441 13.54858398 3.21659136 0.91365814 13.42771721 3.72823191 0.95641798
		 13.35732555 4.24622107 1.072281122 13.36937618 4.77182817 1.15630007 13.5154686 5.28782368 1.11953747
		 13.83196545 5.73189116 1.12336206 14.27858353 6.018652916 1.11803973 14.77231312 6.19200182 1.05861187
		 14.9165163 6.25700903 0.81975198 15.12793636 6.29975367 0.82073355 15.33140278 6.32725716 0.83025289
		 15.342453 6.24649763 0.83025289 15.13996601 6.21951199 0.82102466 14.9318428 6.17771149 0.82033169
		 14.79371452 6.11295557 0.80379319 14.31420708 5.94232893 0.8096016 13.88990593 5.66983986 0.80602002
		 13.59341621 5.25732613 0.81917459 13.45747471 4.76437426 0.81387585 13.44583988 4.253407 0.7445547
		 13.51322365 3.74396133 0.67149413 13.63234234 3.2403748 0.64048439 13.79923725 2.75031662 0.66479337
		 14.026657104 2.28533483 0.71122223 14.33071136 1.86705995 0.74658519 14.72323418 1.53112721 0.75229472
		 15.19239998 1.31524551 0.76832598 15.70424271 1.22927558 0.76450861 16.2243042 1.23611474 0.76068145
		 16.73823547 1.309232 0.7568447 17.24162483 1.43527317 0.75299853 17.73145103 1.61192477 0.73659992
		 18.19603157 1.84525228 0.69813502 18.59745979 2.13603473 0.72835815 18.90250015 2.52879953 0.75559121
		 19.066663742 2.99724746 0.77722448 19.12729454 3.48802137 0.74789655 19.15007401 3.98021889 0.72686243
		 19.13224983 4.47331429 0.7030884 19.044019699 4.96195126 0.67117476 18.84065247 5.42051792 0.69693083
		 18.45775604 5.74476576 0.69222122 17.97304726 5.87093782 0.65951037 17.47240639 5.86765718 0.65529823
		 16.98359299 5.76152706 0.68103671 16.54291534 5.51060867 0.69701624 16.38947296 5.00084543228 0.67088348
		 16.65301704 4.54169273 0.62517333 17.11615372 4.27657413 0.66434151 17.64017868 4.36206722 0.68135476
		 18.065603256 4.61103868 0.72568977 18.099233627 4.55362177 0.71644223 17.66630936 4.30044079 0.67229438
		 17.10608292 4.20945168 0.65837193 16.60476494 4.49415684 0.61649537 16.32218552 4.98749495 0.66506511
		 16.49436951 5.55897522 0.68873155 16.9603157 5.82655382 0.67406607 17.46418953 5.93645477 0.64740241
		 17.98038292 5.94021749 0.65181279 18.4877224 5.80829239 0.68615842 18.89822006 5.46145201 0.69117028
		 19.11213875 4.98125839 0.66408706 19.20323563 4.47993469 0.69707972 19.22162628 3.97932649 0.72019374
		 19.19895172 3.48273373 0.74075145 19.13755608 2.98300719 0.77098483 18.96687698 2.49533224 0.74839115
		 18.64787865 2.083063602 0.72332996 18.23359108 1.78215122 0.69255769 17.76029587 1.5439198 0.73171395
		 17.26349449 1.36434817 0.74790108 16.75312042 1.23611927 0.75199133 16.23091888 1.16140246 0.75607485
		 15.69973946 1.15401495 0.76015162 15.17156982 1.24237895 0.76422131 14.68218613 1.46689868 0.74944067
		 14.27425194 1.81522632 0.74452853 13.9607296 2.24553275 0.7090292 13.72782326 2.72051477 0.66258067
		 13.55770397 3.21869755 0.63768309 13.43645954 3.72937131 0.6696341 13.36751652 4.24845886 0.74244273
		 13.37915897 4.77420235 0.81323338 13.52114964 5.28985453 0.8172034 13.83575439 5.72823381 0.80450004
		 14.28025723 6.014782429 0.80845284 14.77179241 6.19029856 0.80292743 15.27899647 6.30121899 0.16303447
		 15.78792858 6.38664103 0.16393511 16.063756943 6.42580986 0.16483568 16.074806213 6.34505033 0.16483568
		 15.79995918 6.30639935 0.16422631 15.29432106 6.22192144 0.16361418 14.79541969 6.10644436 0.16299869
		 14.31815147 5.93391466 0.16237973 13.8977747 5.66137028 0.16175742 13.6072855 5.2538352 0.16110937
		 13.47547626 4.76542473 0.15059233 13.46365643 4.25507689 0.12706846 13.53038502 3.74601531 0.10388826
		 13.65031624 3.24443245 0.094008081 13.81920719 2.75812316 0.10267064 14.048062325 2.29827285 0.12456781
		 14.35120487 1.8861748 0.14673394 14.73879433 1.55628765 0.15595134;
	setAttr ".vt[498:663]" 15.20152473 1.34716809 0.15530695 15.70634842 1.26445556 0.15464438
		 16.22101784 1.27323127 0.15397879 16.7304039 1.34770131 0.15331015 17.22947502 1.4746753 0.15263857
		 17.71539307 1.65071881 0.15196398 18.17600822 1.88029718 0.15128534 18.56594658 2.16899681 0.15064226
		 18.85718155 2.55148506 0.14999546 19.01209259 3.0077931881 0.14934617 19.073165894 3.49211073 0.14869425
		 19.096136093 3.98089123 0.14803983 19.079463959 4.46927214 0.14738296 18.99518204 4.94895315 0.1467236
		 18.79505348 5.3873229 0.14606184 18.4315834 5.69293833 0.1453976 17.96591377 5.81637096 0.14473101
		 17.47940063 5.81166267 0.14406203 17.0054721832 5.70289755 0.14339063 16.59038544 5.46330833 0.14271703
		 16.45356941 5.010172844 0.14201526 16.69357681 4.58037281 0.14131087 17.12334061 4.3441267 0.1406042
		 17.61156654 4.42954063 0.13989502 18.060066223 4.66752291 0.13918355 18.093698502 4.61010647 0.12993601
		 17.63769913 4.3679142 0.13083461 17.11369896 4.27748346 0.1317336 16.64532852 4.53283691 0.13263287
		 16.38667488 4.99726295 0.13353242 16.54184341 5.51167536 0.13443232 16.98219872 5.76775551 0.13529921
		 17.47118378 5.88046026 0.13616619 17.97324944 5.88565063 0.13703343 18.46155167 5.75624895 0.13790074
		 18.85242081 5.42817307 0.13876824 19.063304901 4.96826029 0.13963577 19.15034294 4.47584438 0.1405035
		 19.16768837 3.97999907 0.14137115 19.144907 3.48681355 0.14223887 19.082984924 2.99355292 0.14310651
		 18.92169571 2.51800203 0.14397418 18.61632347 2.11608505 0.14484176 18.21356773 1.81719613 0.14570802
		 17.7442112 1.58274877 0.14662522 17.25134468 1.4037503 0.14754114 16.74528885 1.27458858 0.14845678
		 16.22763252 1.19851911 0.14937219 15.70184517 1.18919492 0.1502874 15.18069553 1.27430153 0.15120229
		 14.69779491 1.4920882 0.15211692 14.29478073 1.83436108 0.14394897 13.98215485 2.25848174 0.12195102
		 13.74781895 2.72833633 0.099925332 13.57567787 3.22275543 0.091206782 13.45363998 3.73143697 0.10158645
		 13.38529778 4.25007725 0.12537335 13.39718723 4.77526617 0.14931983 13.53498268 5.28629875 0.15941796
		 13.84361649 5.71975756 0.16032819 14.28420067 6.0063686371 0.16123094 14.77349663 6.18378735 0.16213296
		 15.27944183 6.29891682 -0.16361438 15.7881031 6.38547611 -0.16422656 16.29888725 6.4583497 -0.16483527
		 16.30993652 6.37759018 -0.16483527 15.80013371 6.30523491 -0.16393536 15.29476643 6.21961927 -0.16303466
		 14.79637432 6.10307598 -0.16213322 14.32012272 5.92970753 -0.16123116 13.90170574 5.65713215 -0.16032845
		 13.61359215 5.25100422 -0.15941824 13.48309231 4.76420832 -0.1608195 13.47197342 4.25517797 -0.17297404
		 13.53929806 3.74724054 -0.187197 13.6599226 3.24683356 -0.19285254 13.82951736 2.7622211 -0.1855274
		 14.058804512 2.30476356 -0.16956638 14.36155605 1.8957963 -0.15551129 14.74717426 1.56940866 -0.15211716
		 15.20608807 1.36312938 -0.15120253 15.70740128 1.28204548 -0.15028766 16.21937561 1.29178965 -0.14937247
		 16.72648811 1.36693597 -0.14845707 17.22340012 1.49437642 -0.14754137 17.70696449 1.67059803 -0.14662546
		 18.16447067 1.89968026 -0.14570938 18.54977036 2.18598723 -0.14484197 18.83556557 2.56270361 -0.14397439
		 18.98735046 3.012763023 -0.14310671 19.047128677 3.49403334 -0.14223908 19.069168091 3.98122764 -0.1413714
		 19.05175972 4.46670341 -0.1405037 18.96760178 4.94113636 -0.13963605 18.7710247 5.37021255 -0.13876845
		 18.41860962 5.66553354 -0.13790098 17.96263504 5.78541183 -0.1370336 17.48318863 5.77995396 -0.13616639
		 17.016525269 5.6720953 -0.13529941 16.61412239 5.43965816 -0.13443252 16.4872551 5.016674042 -0.13353258
		 16.71857834 4.60500526 -0.13263306 17.128479 4.37963343 -0.13173372 17.39242172 4.35425615 -0.1295179
		 17.51418686 4.41046858 -0.12763077 17.54781723 4.35305214 -0.13687831 17.41855431 4.29262924 -0.13857831
		 17.11883545 4.31299019 -0.14060432 16.67033005 4.55746889 -0.14131105 16.42036057 5.0037641525 -0.14201543
		 16.56558037 5.48802567 -0.14271723 16.9932518 5.73695278 -0.14339083 17.47497177 5.84875154 -0.14406222
		 17.9699707 5.85469151 -0.14473118 18.44857788 5.72884417 -0.14539784 18.82839203 5.41106272 -0.14606205
		 19.03572464 4.9604435 -0.14672388 19.1226387 4.47327518 -0.14738315 19.14072037 3.98033547 -0.14804009
		 19.11886978 3.48873615 -0.14869449 19.058242798 2.99852276 -0.14934638 18.90007973 2.52922058 -0.14999567
		 18.60014725 2.13307548 -0.15064245 18.20203018 1.83657932 -0.15128669 17.73578262 1.60262799 -0.15196422
		 17.24526978 1.42345142 -0.15263878 16.74137306 1.29382324 -0.15331043 16.2259903 1.21707749 -0.15397908
		 15.70289803 1.20678484 -0.15464464 15.18525887 1.29026294 -0.15530716 14.70617485 1.50520945 -0.15596654
		 14.30515194 1.84399474 -0.15873368 13.99290466 2.2649796 -0.17243758 13.75813198 2.73243666 -0.18836689
		 13.58528423 3.22515655 -0.19565384 13.46255398 3.73266411 -0.18957373 13.39362526 4.25018406 -0.17487438
		 13.40482235 4.77406263 -0.16249098 13.54128933 5.28346729 -0.16112734 13.84754753 5.71551943 -0.16175765
		 14.28617191 6.0021615028 -0.16237995 14.77445221 6.18041897 -0.16299894 15.28083038 6.29435635 -0.81136858
		 15.78817177 6.38311577 -0.84138805 16.2987957 6.45833826 -0.83122659 16.30984497 6.37757874 -0.83128023
		 15.80020046 6.30287361 -0.84109682 15.296175 6.2150631 -0.81043172 14.79994297 6.096487522 -0.77788758
		 14.32463837 5.92134571 -0.79653209 13.91013241 5.64861345 -0.78913075 13.6276083 5.24523449 -0.76188368
		 13.49943638 4.76210022 -0.78236943 13.48973751 4.25579548 -0.8048349 13.55867672 3.74992251 -0.82303572
		 13.68028831 3.25207949 -0.79853022 13.8508997 2.77098799 -0.77367938 14.080759048 2.318326 -0.75577247
		 14.38269234 1.91540527 -0.76463175 14.76424026 1.59579372 -0.78690481 15.21594524 1.39539182 -0.8086884
		 15.70978737 1.31735706 -0.77740091 16.21513748 1.33416283 -0.76968151 16.7168541 1.4200995 -0.80414194
		 17.2105751 1.55111718 -0.83311558 17.68970871 1.71654177 -0.77154171;
	setAttr ".vt[664:799]" 18.14154053 1.93804014 -0.72792196 18.5177269 2.21911502 -0.71108735
		 18.7924881 2.58472681 -0.71992546 18.93551064 3.023209572 -0.75832355 18.98992538 3.49898076 -0.79004854
		 19.013019562 3.98237562 -0.74863255 18.99635124 4.46156502 -0.716277 18.91243553 4.92549324 -0.7127167
		 18.72247887 5.33557749 -0.72460455 18.391819 5.61000538 -0.73253399 17.95564651 5.72312355 -0.71500105
		 17.49076271 5.71653557 -0.69662321 17.038656235 5.61064196 -0.68373996 16.66174126 5.39319038 -0.64027327
		 16.55483627 5.030866146 -0.61534852 16.76869011 4.65495157 -0.64082962 17.13875389 4.45069408 -0.67373258
		 17.56864738 4.53075075 -0.6722945 17.77285767 4.63516617 -0.66837335 17.80648804 4.57774973 -0.67762089
		 17.59477997 4.46912384 -0.68135488 17.12911224 4.3840251 -0.68418801 16.720438 4.60737133 -0.65200591
		 16.48794365 5.017956257 -0.62383133 16.61318016 5.44148684 -0.65260309 17.015380859 5.67545271 -0.69455838
		 17.48254585 5.78533411 -0.70451909 17.96300507 5.79242229 -0.72197318 18.42179108 5.673316 -0.74003088
		 18.77988434 5.37645674 -0.73075575 18.98056412 4.94480801 -0.71954834 19.067228317 4.46813774 -0.72315651
		 19.084606171 3.98147583 -0.75482976 19.061664581 3.49368358 -0.79650396 19.0064926147 3.0089509487 -0.76347178
		 18.856987 2.55126929 -0.72669113 18.56810379 2.16620326 -0.71688789 18.17909241 1.87496042 -0.73410833
		 17.71854019 1.64835441 -0.77581054 17.23244476 1.48019218 -0.83821297 16.73175621 1.34669662 -0.80762005
		 16.22179604 1.25920045 -0.77364087 15.70526791 1.24208903 -0.78078908 15.19511509 1.32252526 -0.8127932
		 14.72321606 1.53158367 -0.78936285 14.32631302 1.86361217 -0.76869202 14.014883995 2.27855492 -0.75910324
		 13.77953434 2.74120641 -0.77714747 13.60564232 3.23040652 -0.80091614 13.48193455 3.73535013 -0.82554257
		 13.41139603 4.25081539 -0.80649072 13.42115116 4.77196217 -0.78545004 13.55530643 5.27769756 -0.76359278
		 13.85590935 5.70700598 -0.79217976 14.29064751 5.99379492 -0.79844677 14.77802086 6.17383099 -0.77874303
		 15.28250217 6.29215908 -1.12546444 15.78792763 6.38190556 -1.20075059 16.45118141 6.48013735 -1.17927074
		 16.46223068 6.39937782 -1.17937136 15.79995728 6.3016634 -1.20045912 15.29786968 6.21286631 -1.12416756
		 14.80328178 6.093338966 -1.053161621 14.32805061 5.91726732 -1.090151906 13.91526508 5.64428473 -1.078018427
		 13.63583946 5.2422595 -1.029609919 13.50858879 4.7610054 -1.069010019 13.49934387 4.25612211 -1.1483165
		 13.56948185 3.75138354 -1.18093276 13.69153118 3.2549262 -1.13603306 13.86200619 2.77578259 -1.069883347
		 14.091816902 2.3253727 -1.041683793 14.39310741 1.92528617 -1.05918026 14.77316093 1.60916805 -1.12790787
		 15.22136021 1.41174865 -1.16695702 15.71137238 1.33519673 -1.1145736 16.21185303 1.36177254 -1.096630931
		 16.71193314 1.45767081 -1.19121432 17.20459747 1.59143376 -1.24944746 17.6812458 1.74867249 -1.13654125
		 18.13022232 1.95683002 -1.0077165365 18.50186157 2.23522711 -0.981107 18.77092171 2.59537196 -0.99847412
		 18.90749359 3.028823853 -1.091321588 18.9588623 3.50198388 -1.14561367 18.98280716 3.98340893 -1.079724312
		 18.96857262 4.45901012 -1.0050448179 18.88471985 4.9175601 -1.003629446 18.69787788 5.31797647 -1.028566718
		 18.37808609 5.5819521 -1.041138291 17.9518261 5.69170094 -1.014849782 17.49448013 5.68477154 -0.97904223
		 17.04977417 5.58022881 -0.93977946 16.68560791 5.37038612 -0.86819988 16.58867455 5.03835535 -0.8333267
		 16.79383278 4.68034029 -0.87065256 17.14395142 4.48647022 -0.93035978 17.55434036 4.56448746 -0.94302434
		 17.98724365 4.79661465 -0.93729556 18.019756317 4.73919821 -0.9465431 17.58047485 4.50286007 -0.95208472
		 17.1342907 4.41973782 -0.94446868 16.74556541 4.63273573 -0.8833347 16.52178192 5.025445461 -0.84180957
		 16.63706207 5.418643 -0.88282037 17.02649498 5.64498615 -0.95376766 17.48628616 5.75358343 -0.98637974
		 17.959198 5.7610116 -1.021342158 18.40805817 5.64526272 -1.048635006 18.75529861 5.3588748 -1.033990979
		 18.95287704 4.93689966 -1.0094411373 19.039484024 4.46557808 -1.011649966 19.054426193 3.9825027 -1.085543513
		 19.030601501 3.4966867 -1.15206909 18.97851563 3.014575005 -1.096409917 18.835495 2.56191754 -1.0048141479
		 18.55224037 2.18231535 -0.9869076 18.16776848 1.89376593 -1.014358878 17.7100563 1.68027878 -1.13985729
		 17.22646713 1.52050877 -1.25454485 16.72683144 1.3840605 -1.19346714 16.21855354 1.28659678 -1.099911213
		 15.7068367 1.25991869 -1.11707175 15.20053005 1.33888221 -1.17106164 14.73211956 1.5449481 -1.12926304
		 14.33672905 1.87348938 -1.063350797 14.025941849 2.28560162 -1.04501462 13.79065037 2.74600172 -1.073782444
		 13.61687565 3.23325777 -1.13799059 13.49274635 3.73681188 -1.18346512 13.42098808 4.25114727 -1.14940548
		 13.43025303 4.77087212 -1.073261976 13.5635376 5.27472258 -1.031319022 13.86098957 5.7026825 -1.08274734
		 14.29401207 5.98971176 -1.093115211 14.78135967 6.17068195 -1.05401814;
	setAttr -s 1596 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 5 0 5 4 1 4 0 0 1 723 0 2 6 0 6 324 1 2 3 0
		 3 7 0 7 6 1 3 322 0 4 721 1 5 9 0 9 8 1 8 4 0 6 10 0 10 325 1 7 11 0 11 10 1 8 720 1
		 9 13 0 13 12 1 12 8 0 10 14 0 14 326 1 11 15 0 15 14 1 12 799 1 13 17 0 17 16 1 16 12 0
		 14 18 0 18 327 1 15 19 0 19 18 1 16 798 1 17 21 0 21 20 1 20 16 0 18 22 0 22 328 1
		 19 23 0 23 22 1 20 797 1 21 25 0 25 24 1 24 20 0 22 26 0 26 329 1 23 27 0 27 26 1
		 24 796 1 25 29 0 29 28 1 28 24 0 26 30 0 30 330 1 27 31 0 31 30 1 28 795 1 29 33 0
		 33 32 1 32 28 0 30 34 0 34 331 1 31 35 0 35 34 1 32 794 1 33 37 0 37 36 1 36 32 0
		 34 38 0 38 332 1 35 39 0 39 38 1 36 793 1 37 41 0 41 40 1 40 36 0 38 42 0 42 333 1
		 39 43 0 43 42 1 40 792 1 41 45 0 45 44 1 44 40 0 42 46 0 46 334 1 43 47 0 47 46 1
		 44 791 1 45 49 0 49 48 1 48 44 0 46 50 0 50 335 1 47 51 0 51 50 1 48 790 1 49 53 0
		 53 52 1 52 48 0 50 54 0 54 336 1 51 55 0 55 54 1 52 789 1 53 57 0 57 56 1 56 52 0
		 54 58 0 58 337 1 55 59 0 59 58 1 56 788 1 57 61 0 61 60 1 60 56 0 58 62 0 62 338 1
		 59 63 0 63 62 1 60 787 1 61 65 0 65 64 1 64 60 0 62 66 0 66 339 1 63 67 0 67 66 1
		 64 786 1 65 69 0 69 68 1 68 64 0 66 70 0 70 340 1 67 71 0 71 70 1 68 785 1 69 73 0
		 73 72 1 72 68 0 70 74 0 74 341 1 71 75 0 75 74 1 72 784 1 73 77 0 77 76 1 76 72 0
		 74 78 0 78 342 1 75 79 0 79 78 1 76 783 1 77 81 0 81 80 1 80 76 0 78 82 0 82 343 1
		 79 83 0 83 82 1 80 782 1 81 85 0 85 84 1;
	setAttr ".ed[166:331]" 84 80 0 82 86 0 86 344 1 83 87 0 87 86 1 84 781 1 85 89 0
		 89 88 1 88 84 0 86 90 0 90 345 1 87 91 0 91 90 1 88 780 1 89 93 0 93 92 1 92 88 0
		 90 94 0 94 346 1 91 95 0 95 94 1 92 779 1 93 97 0 97 96 1 96 92 0 94 98 0 98 347 1
		 95 99 0 99 98 1 96 778 1 97 101 0 101 100 1 100 96 0 98 102 0 102 348 1 99 103 0
		 103 102 1 100 777 1 101 105 0 105 104 1 104 100 0 102 106 0 106 349 1 103 107 0 107 106 1
		 104 776 1 105 109 0 109 108 1 108 104 0 106 110 0 110 350 1 107 111 0 111 110 1 108 775 1
		 109 113 0 113 112 1 112 108 0 110 114 0 114 351 1 111 115 0 115 114 1 112 774 1 113 117 0
		 117 116 1 116 112 0 114 118 0 118 352 1 115 119 0 119 118 1 116 773 1 117 121 0 121 120 1
		 120 116 0 118 122 0 122 353 1 119 123 0 123 122 1 120 772 1 121 125 0 125 124 1 124 120 0
		 122 126 0 126 354 1 123 127 0 127 126 1 124 771 1 125 129 0 129 128 1 128 124 0 126 130 0
		 130 355 1 127 131 0 131 130 1 128 770 1 129 133 0 133 132 1 132 128 0 130 134 0 134 356 1
		 131 135 0 135 134 1 132 769 1 133 137 0 137 136 1 136 132 0 134 138 0 138 357 1 135 139 0
		 139 138 1 136 768 1 137 141 0 141 140 1 140 136 0 138 142 0 142 358 1 139 143 0 143 142 1
		 140 767 1 141 145 0 145 144 1 144 140 0 142 146 0 146 359 1 143 147 0 147 146 1 144 766 1
		 145 149 0 149 148 1 148 144 0 146 150 0 150 360 1 147 151 0 151 150 1 148 765 1 149 153 0
		 153 152 1 152 148 0 150 154 0 154 361 1 151 155 0 155 154 1 152 764 1 153 157 0 157 156 0
		 156 152 0 154 158 0 158 362 0 155 159 0 159 158 0 156 763 0 160 400 1 161 401 1 160 161 1
		 162 482 0 161 162 1 163 403 0 162 163 1 164 484 1 163 164 1 165 485 1 164 165 1 166 486 1
		 165 166 1 167 487 1 166 167 1 168 488 1;
	setAttr ".ed[332:497]" 167 168 1 169 489 1 168 169 1 170 490 1 169 170 1 171 491 1
		 170 171 1 172 492 1 171 172 1 173 493 1 172 173 1 174 494 1 173 174 1 175 495 1 174 175 1
		 176 496 1 175 176 1 177 497 1 176 177 1 178 498 1 177 178 1 179 499 1 178 179 1 180 500 1
		 179 180 1 181 501 1 180 181 1 182 502 1 181 182 1 183 503 1 182 183 1 184 504 1 183 184 1
		 185 505 1 184 185 1 186 506 1 185 186 1 187 507 1 186 187 1 188 508 1 187 188 1 189 509 1
		 188 189 1 190 510 1 189 190 1 191 511 1 190 191 1 192 512 1 191 192 1 193 513 1 192 193 1
		 194 514 1 193 194 1 195 515 1 194 195 1 196 516 1 195 196 1 197 517 1 196 197 1 198 518 1
		 197 198 1 199 519 1 198 199 1 200 520 1 199 200 1 201 521 1 200 201 1 202 522 0 201 202 1
		 203 443 0 202 203 1 204 444 1 203 204 1 205 445 1 204 205 1 206 446 1 205 206 1 207 447 1
		 206 207 1 208 448 1 207 208 1 209 449 1 208 209 1 210 450 1 209 210 1 211 451 1 210 211 1
		 212 452 1 211 212 1 213 453 1 212 213 1 214 454 1 213 214 1 215 455 1 214 215 1 216 456 1
		 215 216 1 217 457 1 216 217 1 218 458 1 217 218 1 219 459 1 218 219 1 220 460 1 219 220 1
		 221 461 1 220 221 1 222 462 1 221 222 1 223 463 1 222 223 1 224 464 1 223 224 1 225 465 1
		 224 225 1 226 466 1 225 226 1 227 467 1 226 227 1 228 468 1 227 228 1 229 469 1 228 229 1
		 230 470 1 229 230 1 231 471 1 230 231 1 232 472 1 231 232 1 233 473 1 232 233 1 234 474 1
		 233 234 1 235 475 1 234 235 1 236 476 1 235 236 1 237 477 1 236 237 1 238 478 1 237 238 1
		 239 479 1 238 239 1 239 160 1 240 560 1 241 561 1 240 241 1 242 642 0 241 242 1 243 563 0
		 242 243 1 244 644 1 243 244 1 245 645 1 244 245 1 246 646 1 245 246 1 247 647 1 246 247 1
		 248 648 1 247 248 1 249 649 1 248 249 1 250 650 1 249 250 1 251 651 1;
	setAttr ".ed[498:663]" 250 251 1 252 652 1 251 252 1 253 653 1 252 253 1 254 654 1
		 253 254 1 255 655 1 254 255 1 256 656 1 255 256 1 257 657 1 256 257 1 258 658 1 257 258 1
		 259 659 1 258 259 1 260 660 1 259 260 1 261 661 1 260 261 1 262 662 1 261 262 1 263 663 1
		 262 263 1 264 664 1 263 264 1 265 665 1 264 265 1 266 666 1 265 266 1 267 667 1 266 267 1
		 268 668 1 267 268 1 269 669 1 268 269 1 270 670 1 269 270 1 271 671 1 270 271 1 272 672 1
		 271 272 1 273 673 1 272 273 1 274 674 1 273 274 1 275 675 1 274 275 1 276 676 1 275 276 1
		 277 677 1 276 277 1 278 678 1 277 278 1 279 679 1 278 279 1 280 680 1 279 280 1 281 681 1
		 280 281 1 282 682 0 281 282 1 283 603 0 282 283 1 284 604 1 283 284 1 285 605 1 284 285 1
		 286 606 1 285 286 1 287 607 1 286 287 1 288 608 1 287 288 1 289 609 1 288 289 1 290 610 1
		 289 290 1 291 611 1 290 291 1 292 612 1 291 292 1 293 613 1 292 293 1 294 614 1 293 294 1
		 295 615 1 294 295 1 296 616 1 295 296 1 297 617 1 296 297 1 298 618 1 297 298 1 299 619 1
		 298 299 1 300 620 1 299 300 1 301 621 1 300 301 1 302 622 1 301 302 1 303 623 1 302 303 1
		 304 624 1 303 304 1 305 625 1 304 305 1 306 626 1 305 306 1 307 627 1 306 307 1 308 628 1
		 307 308 1 309 629 1 308 309 1 310 630 1 309 310 1 311 631 1 310 311 1 312 632 1 311 312 1
		 313 633 1 312 313 1 314 634 1 313 314 1 315 635 1 314 315 1 316 636 1 315 316 1 317 637 1
		 316 317 1 318 638 1 317 318 1 319 639 1 318 319 1 319 240 1 320 11 1 321 7 1 320 321 1
		 322 402 0 321 322 1 323 2 0 322 323 1 324 404 1 323 324 1 325 405 1 324 325 1 326 406 1
		 325 326 1 327 407 1 326 327 1 328 408 1 327 328 1 329 409 1 328 329 1 330 410 1 329 330 1
		 331 411 1 330 331 1 332 412 1 331 332 1 333 413 1 332 333 1 334 414 1;
	setAttr ".ed[664:829]" 333 334 1 335 415 1 334 335 1 336 416 1 335 336 1 337 417 1
		 336 337 1 338 418 1 337 338 1 339 419 1 338 339 1 340 420 1 339 340 1 341 421 1 340 341 1
		 342 422 1 341 342 1 343 423 1 342 343 1 344 424 1 343 344 1 345 425 1 344 345 1 346 426 1
		 345 346 1 347 427 1 346 347 1 348 428 1 347 348 1 349 429 1 348 349 1 350 430 1 349 350 1
		 351 431 1 350 351 1 352 432 1 351 352 1 353 433 1 352 353 1 354 434 1 353 354 1 355 435 1
		 354 355 1 356 436 1 355 356 1 357 437 1 356 357 1 358 438 1 357 358 1 359 439 1 358 359 1
		 360 440 1 359 360 1 361 441 1 360 361 1 362 442 0 361 362 1 363 159 0 362 363 1 364 155 1
		 363 364 1 365 151 1 364 365 1 366 147 1 365 366 1 367 143 1 366 367 1 368 139 1 367 368 1
		 369 135 1 368 369 1 370 131 1 369 370 1 371 127 1 370 371 1 372 123 1 371 372 1 373 119 1
		 372 373 1 374 115 1 373 374 1 375 111 1 374 375 1 376 107 1 375 376 1 377 103 1 376 377 1
		 378 99 1 377 378 1 379 95 1 378 379 1 380 91 1 379 380 1 381 87 1 380 381 1 382 83 1
		 381 382 1 383 79 1 382 383 1 384 75 1 383 384 1 385 71 1 384 385 1 386 67 1 385 386 1
		 387 63 1 386 387 1 388 59 1 387 388 1 389 55 1 388 389 1 390 51 1 389 390 1 391 47 1
		 390 391 1 392 43 1 391 392 1 393 39 1 392 393 1 394 35 1 393 394 1 395 31 1 394 395 1
		 396 27 1 395 396 1 397 23 1 396 397 1 398 19 1 397 398 1 399 15 1 398 399 1 399 320 1
		 400 320 1 401 321 1 400 401 1 402 162 0 401 402 1 403 323 0 402 403 1 404 164 1 403 404 1
		 405 165 1 404 405 1 406 166 1 405 406 1 407 167 1 406 407 1 408 168 1 407 408 1 409 169 1
		 408 409 1 410 170 1 409 410 1 411 171 1 410 411 1 412 172 1 411 412 1 413 173 1 412 413 1
		 414 174 1 413 414 1 415 175 1 414 415 1 416 176 1 415 416 1 417 177 1;
	setAttr ".ed[830:995]" 416 417 1 418 178 1 417 418 1 419 179 1 418 419 1 420 180 1
		 419 420 1 421 181 1 420 421 1 422 182 1 421 422 1 423 183 1 422 423 1 424 184 1 423 424 1
		 425 185 1 424 425 1 426 186 1 425 426 1 427 187 1 426 427 1 428 188 1 427 428 1 429 189 1
		 428 429 1 430 190 1 429 430 1 431 191 1 430 431 1 432 192 1 431 432 1 433 193 1 432 433 1
		 434 194 1 433 434 1 435 195 1 434 435 1 436 196 1 435 436 1 437 197 1 436 437 1 438 198 1
		 437 438 1 439 199 1 438 439 1 440 200 1 439 440 1 441 201 1 440 441 1 442 202 0 441 442 1
		 443 363 0 442 443 1 444 364 1 443 444 1 445 365 1 444 445 1 446 366 1 445 446 1 447 367 1
		 446 447 1 448 368 1 447 448 1 449 369 1 448 449 1 450 370 1 449 450 1 451 371 1 450 451 1
		 452 372 1 451 452 1 453 373 1 452 453 1 454 374 1 453 454 1 455 375 1 454 455 1 456 376 1
		 455 456 1 457 377 1 456 457 1 458 378 1 457 458 1 459 379 1 458 459 1 460 380 1 459 460 1
		 461 381 1 460 461 1 462 382 1 461 462 1 463 383 1 462 463 1 464 384 1 463 464 1 465 385 1
		 464 465 1 466 386 1 465 466 1 467 387 1 466 467 1 468 388 1 467 468 1 469 389 1 468 469 1
		 470 390 1 469 470 1 471 391 1 470 471 1 472 392 1 471 472 1 473 393 1 472 473 1 474 394 1
		 473 474 1 475 395 1 474 475 1 476 396 1 475 476 1 477 397 1 476 477 1 478 398 1 477 478 1
		 479 399 1 478 479 1 479 400 1 480 160 1 481 161 1 480 481 1 482 562 0 481 482 1 483 163 0
		 482 483 1 484 564 1 483 484 1 485 565 1 484 485 1 486 566 1 485 486 1 487 567 1 486 487 1
		 488 568 1 487 488 1 489 569 1 488 489 1 490 570 1 489 490 1 491 571 1 490 491 1 492 572 1
		 491 492 1 493 573 1 492 493 1 494 574 1 493 494 1 495 575 1 494 495 1 496 576 1 495 496 1
		 497 577 1 496 497 1 498 578 1 497 498 1 499 579 1 498 499 1 500 580 1;
	setAttr ".ed[996:1161]" 499 500 1 501 581 1 500 501 1 502 582 1 501 502 1 503 583 1
		 502 503 1 504 584 1 503 504 1 505 585 1 504 505 1 506 586 1 505 506 1 507 587 1 506 507 1
		 508 588 1 507 508 1 509 589 1 508 509 1 510 590 1 509 510 1 511 591 1 510 511 1 512 592 1
		 511 512 1 513 593 1 512 513 1 514 594 1 513 514 1 515 595 1 514 515 1 516 596 1 515 516 1
		 517 597 1 516 517 1 518 598 1 517 518 1 519 599 1 518 519 1 520 600 1 519 520 1 521 601 1
		 520 521 1 522 602 0 521 522 1 523 203 0 522 523 1 524 204 1 523 524 1 525 205 1 524 525 1
		 526 206 1 525 526 1 527 207 1 526 527 1 528 208 1 527 528 1 529 209 1 528 529 1 530 210 1
		 529 530 1 531 211 1 530 531 1 532 212 1 531 532 1 533 213 1 532 533 1 534 214 1 533 534 1
		 535 215 1 534 535 1 536 216 1 535 536 1 537 217 1 536 537 1 538 218 1 537 538 1 539 219 1
		 538 539 1 540 220 1 539 540 1 541 221 1 540 541 1 542 222 1 541 542 1 543 223 1 542 543 1
		 544 224 1 543 544 1 545 225 1 544 545 1 546 226 1 545 546 1 547 227 1 546 547 1 548 228 1
		 547 548 1 549 229 1 548 549 1 550 230 1 549 550 1 551 231 1 550 551 1 552 232 1 551 552 1
		 553 233 1 552 553 1 554 234 1 553 554 1 555 235 1 554 555 1 556 236 1 555 556 1 557 237 1
		 556 557 1 558 238 1 557 558 1 559 239 1 558 559 1 559 480 1 560 480 1 561 481 1 560 561 1
		 562 242 0 561 562 1 563 483 0 562 563 1 564 244 1 563 564 1 565 245 1 564 565 1 566 246 1
		 565 566 1 567 247 1 566 567 1 568 248 1 567 568 1 569 249 1 568 569 1 570 250 1 569 570 1
		 571 251 1 570 571 1 572 252 1 571 572 1 573 253 1 572 573 1 574 254 1 573 574 1 575 255 1
		 574 575 1 576 256 1 575 576 1 577 257 1 576 577 1 578 258 1 577 578 1 579 259 1 578 579 1
		 580 260 1 579 580 1 581 261 1 580 581 1 582 262 1 581 582 1 583 263 1;
	setAttr ".ed[1162:1327]" 582 583 1 584 264 1 583 584 1 585 265 1 584 585 1 586 266 1
		 585 586 1 587 267 1 586 587 1 588 268 1 587 588 1 589 269 1 588 589 1 590 270 1 589 590 1
		 591 271 1 590 591 1 592 272 1 591 592 1 593 273 1 592 593 1 594 274 1 593 594 1 595 275 1
		 594 595 1 596 276 1 595 596 1 597 277 1 596 597 1 598 278 1 597 598 1 599 279 1 598 599 1
		 600 280 1 599 600 1 601 281 1 600 601 1 602 282 0 601 602 1 603 523 0 602 603 1 604 524 1
		 603 604 1 605 525 1 604 605 1 606 526 1 605 606 1 607 527 1 606 607 1 608 528 1 607 608 1
		 609 529 1 608 609 1 610 530 1 609 610 1 611 531 1 610 611 1 612 532 1 611 612 1 613 533 1
		 612 613 1 614 534 1 613 614 1 615 535 1 614 615 1 616 536 1 615 616 1 617 537 1 616 617 1
		 618 538 1 617 618 1 619 539 1 618 619 1 620 540 1 619 620 1 621 541 1 620 621 1 622 542 1
		 621 622 1 623 543 1 622 623 1 624 544 1 623 624 1 625 545 1 624 625 1 626 546 1 625 626 1
		 627 547 1 626 627 1 628 548 1 627 628 1 629 549 1 628 629 1 630 550 1 629 630 1 631 551 1
		 630 631 1 632 552 1 631 632 1 633 553 1 632 633 1 634 554 1 633 634 1 635 555 1 634 635 1
		 636 556 1 635 636 1 637 557 1 636 637 1 638 558 1 637 638 1 639 559 1 638 639 1 639 560 1
		 640 240 1 641 241 1 640 641 1 642 722 0 641 642 1 643 243 0 642 643 1 644 724 1 643 644 1
		 645 725 1 644 645 1 646 726 1 645 646 1 647 727 1 646 647 1 648 728 1 647 648 1 649 729 1
		 648 649 1 650 730 1 649 650 1 651 731 1 650 651 1 652 732 1 651 652 1 653 733 1 652 653 1
		 654 734 1 653 654 1 655 735 1 654 655 1 656 736 1 655 656 1 657 737 1 656 657 1 658 738 1
		 657 658 1 659 739 1 658 659 1 660 740 1 659 660 1 661 741 1 660 661 1 662 742 1 661 662 1
		 663 743 1 662 663 1 664 744 1 663 664 1 665 745 1 664 665 1 666 746 1;
	setAttr ".ed[1328:1493]" 665 666 1 667 747 1 666 667 1 668 748 1 667 668 1 669 749 1
		 668 669 1 670 750 1 669 670 1 671 751 1 670 671 1 672 752 1 671 672 1 673 753 1 672 673 1
		 674 754 1 673 674 1 675 755 1 674 675 1 676 756 1 675 676 1 677 757 1 676 677 1 678 758 1
		 677 678 1 679 759 1 678 679 1 680 760 1 679 680 1 681 761 1 680 681 1 682 762 0 681 682 1
		 683 283 0 682 683 1 684 284 1 683 684 1 685 285 1 684 685 1 686 286 1 685 686 1 687 287 1
		 686 687 1 688 288 1 687 688 1 689 289 1 688 689 1 690 290 1 689 690 1 691 291 1 690 691 1
		 692 292 1 691 692 1 693 293 1 692 693 1 694 294 1 693 694 1 695 295 1 694 695 1 696 296 1
		 695 696 1 697 297 1 696 697 1 698 298 1 697 698 1 699 299 1 698 699 1 700 300 1 699 700 1
		 701 301 1 700 701 1 702 302 1 701 702 1 703 303 1 702 703 1 704 304 1 703 704 1 705 305 1
		 704 705 1 706 306 1 705 706 1 707 307 1 706 707 1 708 308 1 707 708 1 709 309 1 708 709 1
		 710 310 1 709 710 1 711 311 1 710 711 1 712 312 1 711 712 1 713 313 1 712 713 1 714 314 1
		 713 714 1 715 315 1 714 715 1 716 316 1 715 716 1 717 317 1 716 717 1 718 318 1 717 718 1
		 719 319 1 718 719 1 719 640 1 720 640 1 721 641 1 720 721 1 722 0 0 721 722 1 723 643 0
		 722 723 1 724 5 1 723 724 1 725 9 1 724 725 1 726 13 1 725 726 1 727 17 1 726 727 1
		 728 21 1 727 728 1 729 25 1 728 729 1 730 29 1 729 730 1 731 33 1 730 731 1 732 37 1
		 731 732 1 733 41 1 732 733 1 734 45 1 733 734 1 735 49 1 734 735 1 736 53 1 735 736 1
		 737 57 1 736 737 1 738 61 1 737 738 1 739 65 1 738 739 1 740 69 1 739 740 1 741 73 1
		 740 741 1 742 77 1 741 742 1 743 81 1 742 743 1 744 85 1 743 744 1 745 89 1 744 745 1
		 746 93 1 745 746 1 747 97 1 746 747 1 748 101 1 747 748 1 749 105 1;
	setAttr ".ed[1494:1595]" 748 749 1 750 109 1 749 750 1 751 113 1 750 751 1 752 117 1
		 751 752 1 753 121 1 752 753 1 754 125 1 753 754 1 755 129 1 754 755 1 756 133 1 755 756 1
		 757 137 1 756 757 1 758 141 1 757 758 1 759 145 1 758 759 1 760 149 1 759 760 1 761 153 1
		 760 761 1 762 157 0 761 762 1 763 683 0 762 763 1 764 684 1 763 764 1 765 685 1 764 765 1
		 766 686 1 765 766 1 767 687 1 766 767 1 768 688 1 767 768 1 769 689 1 768 769 1 770 690 1
		 769 770 1 771 691 1 770 771 1 772 692 1 771 772 1 773 693 1 772 773 1 774 694 1 773 774 1
		 775 695 1 774 775 1 776 696 1 775 776 1 777 697 1 776 777 1 778 698 1 777 778 1 779 699 1
		 778 779 1 780 700 1 779 780 1 781 701 1 780 781 1 782 702 1 781 782 1 783 703 1 782 783 1
		 784 704 1 783 784 1 785 705 1 784 785 1 786 706 1 785 786 1 787 707 1 786 787 1 788 708 1
		 787 788 1 789 709 1 788 789 1 790 710 1 789 790 1 791 711 1 790 791 1 792 712 1 791 792 1
		 793 713 1 792 793 1 794 714 1 793 794 1 795 715 1 794 795 1 796 716 1 795 796 1 797 717 1
		 796 797 1 798 718 1 797 798 1 799 719 1 798 799 1 799 720 1;
	setAttr -s 798 -ch 3192 ".fc";
	setAttr ".fc[0:499]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 836 837 838 839
		f 4 4 1444 1443 -2
		mu 0 4 525 526 527 528
		f 4 7 8 9 -6
		mu 0 4 916 917 918 919
		f 4 1439 -4 11 1440
		mu 0 4 565 566 567 568
		f 4 -3 12 13 14
		mu 0 4 839 838 840 841
		f 4 -1444 1446 1445 -13
		mu 0 4 528 527 531 532
		f 4 -10 17 18 -16
		mu 0 4 919 918 920 921
		f 4 -12 -15 19 1438
		mu 0 4 568 567 569 570
		f 4 -14 20 21 22
		mu 0 4 841 840 842 843
		f 4 -1446 1448 1447 -21
		mu 0 4 532 531 536 537
		f 4 -19 25 26 -24
		mu 0 4 921 920 922 923
		f 4 1595 -20 -23 27
		mu 0 4 573 570 569 574
		f 4 -22 28 29 30
		mu 0 4 843 842 844 845
		f 4 -1448 1450 1449 -29
		mu 0 4 537 536 11 10
		f 4 -27 33 34 -32
		mu 0 4 923 922 924 925
		f 4 -28 -31 35 1594
		mu 0 4 573 574 121 120
		f 4 -30 36 37 38
		mu 0 4 845 844 846 847
		f 4 -1450 1452 1451 -37
		mu 0 4 10 11 5 4
		f 4 -35 41 42 -40
		mu 0 4 925 924 926 927
		f 4 -36 -39 43 1592
		mu 0 4 120 121 115 114
		f 4 -38 44 45 46
		mu 0 4 847 846 848 849
		f 4 -1452 1454 1453 -45
		mu 0 4 4 5 1 0
		f 4 -43 49 50 -48
		mu 0 4 927 926 928 929
		f 4 -44 -47 51 1590
		mu 0 4 114 115 111 110
		f 4 -46 52 53 54
		mu 0 4 849 848 850 851
		f 4 -1454 1456 1455 -53
		mu 0 4 0 1 2 3
		f 4 -51 57 58 -56
		mu 0 4 929 928 930 931
		f 4 -52 -55 59 1588
		mu 0 4 110 111 112 113
		f 4 -54 60 61 62
		mu 0 4 851 850 852 853
		f 4 -1456 1458 1457 -61
		mu 0 4 3 2 8 9
		f 4 -59 65 66 -64
		mu 0 4 931 930 932 933
		f 4 -60 -63 67 1586
		mu 0 4 113 112 116 117
		f 4 -62 68 69 70
		mu 0 4 853 852 854 855
		f 4 -1458 1460 1459 -69
		mu 0 4 9 8 16 17
		f 4 -67 73 74 -72
		mu 0 4 933 932 934 935
		f 4 -68 -71 75 1584
		mu 0 4 117 116 123 124
		f 4 -70 76 77 78
		mu 0 4 855 854 856 857
		f 4 -1460 1462 1461 -77
		mu 0 4 17 16 24 25
		f 4 -75 81 82 -80
		mu 0 4 935 934 936 937
		f 4 -76 -79 83 1582
		mu 0 4 124 123 130 131
		f 4 -78 84 85 86
		mu 0 4 857 856 858 859
		f 4 -1462 1464 1463 -85
		mu 0 4 25 24 33 34
		f 4 -83 89 90 -88
		mu 0 4 937 936 938 939
		f 4 -84 -87 91 1580
		mu 0 4 131 130 138 139
		f 4 -86 92 93 94
		mu 0 4 859 858 860 861
		f 4 -1464 1466 1465 -93
		mu 0 4 34 33 43 44
		f 4 -91 97 98 -96
		mu 0 4 939 938 940 941
		f 4 -92 -95 99 1578
		mu 0 4 139 138 147 148
		f 4 -94 100 101 102
		mu 0 4 861 860 862 863
		f 4 -1466 1468 1467 -101
		mu 0 4 44 43 54 55
		f 4 -99 105 106 -104
		mu 0 4 941 940 942 943
		f 4 -100 -103 107 1576
		mu 0 4 148 147 157 158
		f 4 -102 108 109 110
		mu 0 4 863 862 864 865
		f 4 -1468 1470 1469 -109
		mu 0 4 55 54 66 67
		f 4 -107 113 114 -112
		mu 0 4 943 942 944 945
		f 4 -108 -111 115 1574
		mu 0 4 158 157 168 169
		f 4 -110 116 117 118
		mu 0 4 865 864 866 867
		f 4 -1470 1472 1471 -117
		mu 0 4 67 66 605 606
		f 4 -115 121 122 -120
		mu 0 4 945 944 946 947
		f 4 -116 -119 123 1572
		mu 0 4 169 168 665 666
		f 4 -118 124 125 126
		mu 0 4 867 866 868 869
		f 4 -1472 1474 1473 -125
		mu 0 4 606 605 608 609
		f 4 -123 129 130 -128
		mu 0 4 947 946 948 949
		f 4 -124 -127 131 1570
		mu 0 4 666 665 667 668
		f 4 -126 132 133 134
		mu 0 4 869 868 870 871
		f 4 -1474 1476 1475 -133
		mu 0 4 609 608 612 613
		f 4 -131 137 138 -136
		mu 0 4 949 948 950 951
		f 4 -132 -135 139 1568
		mu 0 4 668 667 670 671
		f 4 -134 140 141 142
		mu 0 4 871 870 872 873
		f 4 -1476 1478 1477 -141
		mu 0 4 613 612 617 618
		f 4 -139 145 146 -144
		mu 0 4 951 950 952 953
		f 4 -140 -143 147 1566
		mu 0 4 671 670 674 675
		f 4 -142 148 149 150
		mu 0 4 873 872 874 875
		f 4 -1478 1480 1479 -149
		mu 0 4 618 617 623 624
		f 4 -147 153 154 -152
		mu 0 4 953 952 954 955
		f 4 -148 -151 155 1564
		mu 0 4 675 674 679 680
		f 4 -150 156 157 158
		mu 0 4 875 874 876 877
		f 4 -1480 1482 1481 -157
		mu 0 4 624 623 630 631
		f 4 -155 161 162 -160
		mu 0 4 955 954 956 957
		f 4 -156 -159 163 1562
		mu 0 4 680 679 685 686
		f 4 -158 164 165 166
		mu 0 4 877 876 878 879
		f 4 -1482 1484 1483 -165
		mu 0 4 631 630 231 230
		f 4 -163 169 170 -168
		mu 0 4 957 956 958 959
		f 4 -164 -167 171 1560
		mu 0 4 686 685 331 330
		f 4 -166 172 173 174
		mu 0 4 879 878 880 881
		f 4 -1484 1486 1485 -173
		mu 0 4 230 231 225 224
		f 4 -171 177 178 -176
		mu 0 4 959 958 960 961
		f 4 -172 -175 179 1558
		mu 0 4 330 331 325 324
		f 4 -174 180 181 182
		mu 0 4 881 880 882 883
		f 4 -1486 1488 1487 -181
		mu 0 4 224 225 221 220
		f 4 -179 185 186 -184
		mu 0 4 961 960 962 963
		f 4 -180 -183 187 1556
		mu 0 4 324 325 321 320
		f 4 -182 188 189 190
		mu 0 4 883 882 884 885
		f 4 -1488 1490 1489 -189
		mu 0 4 220 221 222 223
		f 4 -187 193 194 -192
		mu 0 4 963 962 964 965
		f 4 -188 -191 195 1554
		mu 0 4 320 321 322 323
		f 4 -190 196 197 198
		mu 0 4 885 884 886 887
		f 4 -1490 1492 1491 -197
		mu 0 4 223 222 228 229
		f 4 -195 201 202 -200
		mu 0 4 965 964 966 967
		f 4 -196 -199 203 1552
		mu 0 4 323 322 326 327
		f 4 -198 204 205 206
		mu 0 4 887 886 888 889
		f 4 -1492 1494 1493 -205
		mu 0 4 229 228 236 237
		f 4 -203 209 210 -208
		mu 0 4 967 966 968 969
		f 4 -204 -207 211 1550
		mu 0 4 327 326 333 334
		f 4 -206 212 213 214
		mu 0 4 889 888 890 891
		f 4 -1494 1496 1495 -213
		mu 0 4 237 236 244 245
		f 4 -211 217 218 -216
		mu 0 4 969 968 970 971
		f 4 -212 -215 219 1548
		mu 0 4 334 333 340 341
		f 4 -214 220 221 222
		mu 0 4 891 890 892 893
		f 4 -1496 1498 1497 -221
		mu 0 4 245 244 253 254
		f 4 -219 225 226 -224
		mu 0 4 971 970 972 973
		f 4 -220 -223 227 1546
		mu 0 4 341 340 348 349
		f 4 -222 228 229 230
		mu 0 4 893 892 894 895
		f 4 -1498 1500 1499 -229
		mu 0 4 254 253 263 264
		f 4 -227 233 234 -232
		mu 0 4 973 972 974 975
		f 4 -228 -231 235 1544
		mu 0 4 349 348 357 358
		f 4 -230 236 237 238
		mu 0 4 895 894 896 897
		f 4 -1500 1502 1501 -237
		mu 0 4 264 263 274 275
		f 4 -235 241 242 -240
		mu 0 4 975 974 976 977
		f 4 -236 -239 243 1542
		mu 0 4 358 357 367 368
		f 4 -238 244 245 246
		mu 0 4 897 896 898 899
		f 4 -1502 1504 1503 -245
		mu 0 4 275 274 725 726
		f 4 -243 249 250 -248
		mu 0 4 977 976 978 979
		f 4 -244 -247 251 1540
		mu 0 4 368 367 751 752
		f 4 -246 252 253 254
		mu 0 4 899 898 900 901
		f 4 -1504 1506 1505 -253
		mu 0 4 726 725 728 729
		f 4 -251 257 258 -256
		mu 0 4 979 978 980 981
		f 4 -252 -255 259 1538
		mu 0 4 752 751 753 754
		f 4 -254 260 261 262
		mu 0 4 901 900 902 903
		f 4 -1506 1508 1507 -261
		mu 0 4 729 728 425 424
		f 4 -259 265 266 -264
		mu 0 4 981 980 982 983
		f 4 -260 -263 267 1536
		mu 0 4 754 753 459 458
		f 4 -262 268 269 270
		mu 0 4 903 902 904 905
		f 4 -1508 1510 1509 -269
		mu 0 4 424 425 421 420
		f 4 -267 273 274 -272
		mu 0 4 983 982 984 985
		f 4 -268 -271 275 1534
		mu 0 4 458 459 455 454
		f 4 -270 276 277 278
		mu 0 4 905 904 906 907
		f 4 -1510 1512 1511 -277
		mu 0 4 420 421 422 423
		f 4 -275 281 282 -280
		mu 0 4 985 984 986 987
		f 4 -276 -279 283 1532
		mu 0 4 454 455 456 457
		f 4 -278 284 285 286
		mu 0 4 907 906 908 909
		f 4 -1512 1514 1513 -285
		mu 0 4 423 422 428 429
		f 4 -283 289 290 -288
		mu 0 4 987 986 988 989
		f 4 -284 -287 291 1530
		mu 0 4 457 456 460 461
		f 4 -286 292 293 294
		mu 0 4 909 908 910 911
		f 4 -1514 1516 1515 -293
		mu 0 4 429 428 776 777
		f 4 -291 297 298 -296
		mu 0 4 989 988 990 991
		f 4 -292 -295 299 1528
		mu 0 4 461 460 806 807
		f 4 -294 300 301 302
		mu 0 4 911 910 912 913
		f 4 -1516 1518 1517 -301
		mu 0 4 777 776 779 780
		f 4 -299 305 306 -304
		mu 0 4 991 990 992 993
		f 4 -300 -303 307 1526
		mu 0 4 807 806 808 809
		f 4 -302 308 309 310
		mu 0 4 913 912 914 915
		f 4 -1518 1520 1519 -309
		mu 0 4 780 779 783 784
		f 4 -307 313 314 -312
		mu 0 4 993 992 994 995
		f 4 -308 -311 315 1524
		mu 0 4 809 808 811 812
		f 4 1442 -5 -1 -1440
		mu 0 4 489 490 491 492
		f 4 -310 -1520 1522 -316
		mu 0 4 503 504 505 506
		f 4 -318 -319 316 798
		mu 0 4 593 589 591 595
		f 4 799 -321 317 800
		mu 0 4 592 588 589 593
		f 4 802 -322 -323 -800
		mu 0 4 996 997 998 999
		f 4 -325 321 804 803
		mu 0 4 547 546 550 551
		f 4 -327 -804 806 805
		mu 0 4 552 547 551 556
		f 4 -329 -806 808 807
		mu 0 4 557 552 556 561
		f 4 -331 -808 810 809
		mu 0 4 56 557 561 68
		f 4 -333 -810 812 811
		mu 0 4 46 56 68 57
		f 4 -335 -812 814 813
		mu 0 4 37 46 57 47
		f 4 -337 -814 816 815
		mu 0 4 38 37 47 48
		f 4 -339 -816 818 817
		mu 0 4 49 38 48 60
		f 4 -341 -818 820 819
		mu 0 4 61 49 60 73
		f 4 -343 -820 822 821
		mu 0 4 74 61 73 83
		f 4 -345 -822 824 823
		mu 0 4 84 74 83 91
		f 4 -347 -824 826 825
		mu 0 4 92 84 91 97
		f 4 -349 -826 828 827
		mu 0 4 98 92 97 102
		f 4 -351 -828 830 829
		mu 0 4 103 98 102 106
		f 4 -353 -830 832 831
		mu 0 4 625 103 106 632
		f 4 -355 -832 834 833
		mu 0 4 633 625 632 639
		f 4 -357 -834 836 835
		mu 0 4 640 633 639 646
		f 4 -359 -836 838 837
		mu 0 4 647 640 646 652
		f 4 -361 -838 840 839
		mu 0 4 653 647 652 657
		f 4 -363 -840 842 841
		mu 0 4 658 653 657 661
		f 4 -365 -842 844 843
		mu 0 4 276 658 661 286
		f 4 -367 -844 846 845
		mu 0 4 266 276 286 277
		f 4 -369 -846 848 847
		mu 0 4 257 266 277 267
		f 4 -371 -848 850 849
		mu 0 4 258 257 267 268
		f 4 -373 -850 852 851
		mu 0 4 269 258 268 280
		f 4 -375 -852 854 853
		mu 0 4 281 269 280 291
		f 4 -377 -854 856 855
		mu 0 4 292 281 291 300
		f 4 -379 -856 858 857
		mu 0 4 301 292 300 307
		f 4 -381 -858 860 859
		mu 0 4 308 301 307 312
		f 4 -383 -860 862 861
		mu 0 4 313 308 312 316
		f 4 -385 -862 864 863
		mu 0 4 736 313 316 739
		f 4 -387 -864 866 865
		mu 0 4 740 736 739 743
		f 4 -389 -866 868 867
		mu 0 4 744 740 743 747
		f 4 -391 -868 870 869
		mu 0 4 441 744 747 444
		f 4 -393 -870 872 871
		mu 0 4 442 441 444 445
		f 4 -395 -872 874 873
		mu 0 4 446 442 445 449
		f 4 -397 -874 876 875
		mu 0 4 791 446 449 794
		f 4 -399 -876 878 877
		mu 0 4 795 791 794 798
		f 4 -401 -878 880 879
		mu 0 4 799 795 798 802
		f 4 -403 -880 882 -402
		mu 0 4 511 512 513 514
		f 4 -404 -405 401 884
		mu 0 4 828 825 827 830
		f 4 -406 -407 403 886
		mu 0 4 826 823 825 828
		f 4 -408 -409 405 888
		mu 0 4 482 479 823 826
		f 4 -410 -411 407 890
		mu 0 4 481 478 479 482
		f 4 -412 -413 409 892
		mu 0 4 480 477 478 481
		f 4 -414 -415 411 894
		mu 0 4 770 767 477 480
		f 4 -416 -417 413 896
		mu 0 4 768 765 767 770
		f 4 -418 -419 415 898
		mu 0 4 766 763 765 768
		f 4 -420 -421 417 900
		mu 0 4 414 410 763 766
		f 4 -422 -423 419 902
		mu 0 4 411 406 410 414
		f 4 -424 -425 421 904
		mu 0 4 407 400 406 411
		f 4 -426 -427 423 906
		mu 0 4 401 391 400 407
		f 4 -428 -429 425 908
		mu 0 4 392 382 391 401
		f 4 -430 -431 427 910
		mu 0 4 383 373 382 392
		f 4 -432 -433 429 912
		mu 0 4 375 364 373 383
		f 4 -434 -435 431 914
		mu 0 4 374 363 364 375
		f 4 -436 -437 433 916
		mu 0 4 377 366 363 374
		f 4 -438 -439 435 918
		mu 0 4 386 376 366 377
		f 4 -440 -441 437 920
		mu 0 4 719 715 376 386
		f 4 -442 -443 439 922
		mu 0 4 716 711 715 719
		f 4 -444 -445 441 924
		mu 0 4 712 706 711 716
		f 4 -446 -447 443 926
		mu 0 4 707 701 706 712
		f 4 -448 -449 445 928
		mu 0 4 702 696 701 707
		f 4 -450 -451 447 930
		mu 0 4 697 691 696 702
		f 4 -452 -453 449 932
		mu 0 4 214 210 691 697
		f 4 -454 -455 451 934
		mu 0 4 211 206 210 214
		f 4 -456 -457 453 936
		mu 0 4 207 201 206 211
		f 4 -458 -459 455 938
		mu 0 4 202 194 201 207
		f 4 -460 -461 457 940
		mu 0 4 195 184 194 202
		f 4 -462 -463 459 942
		mu 0 4 185 174 184 195
		f 4 -464 -465 461 944
		mu 0 4 175 163 174 185
		f 4 -466 -467 463 946
		mu 0 4 165 154 163 175
		f 4 -468 -469 465 948
		mu 0 4 164 153 154 165
		f 4 -470 -471 467 950
		mu 0 4 167 156 153 164
		f 4 -472 -473 469 952
		mu 0 4 178 166 156 167
		f 4 -474 -475 471 954
		mu 0 4 598 594 166 178
		f 4 955 -317 -476 473
		mu 0 4 598 595 591 594
		f 4 -478 -479 476 1118
		mu 0 4 581 577 579 583
		f 4 1119 -481 477 1120
		mu 0 4 580 576 577 581
		f 4 1122 -482 -483 -1120
		mu 0 4 497 498 496 495
		f 4 -485 481 1124 1123
		mu 0 4 534 533 538 539
		f 4 -487 -1124 1126 1125
		mu 0 4 540 534 539 544
		f 4 -489 -1126 1128 1127
		mu 0 4 545 540 544 549
		f 4 -491 -1128 1130 1129
		mu 0 4 26 545 549 35
		f 4 -493 -1130 1132 1131
		mu 0 4 19 26 35 27
		f 4 -495 -1132 1134 1133
		mu 0 4 13 19 27 20
		f 4 -497 -1134 1136 1135
		mu 0 4 14 13 20 21
		f 4 -499 -1136 1138 1137
		mu 0 4 22 14 21 30
		f 4 -501 -1138 1140 1139
		mu 0 4 31 22 30 40
		f 4 -503 -1140 1142 1141
		mu 0 4 41 31 40 51
		f 4 -505 -1142 1144 1143
		mu 0 4 52 41 51 63
		f 4 -507 -1144 1146 1145
		mu 0 4 64 52 63 76
		f 4 -509 -1146 1148 1147
		mu 0 4 77 64 76 86
		f 4 -511 -1148 1150 1149
		mu 0 4 87 77 86 94
		f 4 -513 -1150 1152 1151
		mu 0 4 610 87 94 614
		f 4 -515 -1152 1154 1153
		mu 0 4 615 610 614 620
		f 4 -517 -1154 1156 1155
		mu 0 4 621 615 620 627
		f 4 -519 -1156 1158 1157
		mu 0 4 628 621 627 635
		f 4 -521 -1158 1160 1159
		mu 0 4 636 628 635 642
		f 4 -523 -1160 1162 1161
		mu 0 4 643 636 642 649
		f 4 -525 -1162 1164 1163
		mu 0 4 246 643 649 255
		f 4 -527 -1164 1166 1165
		mu 0 4 239 246 255 247
		f 4 -529 -1166 1168 1167
		mu 0 4 233 239 247 240
		f 4 -531 -1168 1170 1169
		mu 0 4 234 233 240 241
		f 4 -533 -1170 1172 1171
		mu 0 4 242 234 241 250
		f 4 -535 -1172 1174 1173
		mu 0 4 251 242 250 260
		f 4 -537 -1174 1176 1175
		mu 0 4 261 251 260 271
		f 4 -539 -1176 1178 1177
		mu 0 4 272 261 271 283
		f 4 -541 -1178 1180 1179
		mu 0 4 284 272 283 294
		f 4 -543 -1180 1182 1181
		mu 0 4 295 284 294 303
		f 4 -545 -1182 1184 1183
		mu 0 4 730 295 303 732
		f 4 -547 -1184 1186 1185
		mu 0 4 733 730 732 735
		f 4 -549 -1186 1188 1187
		mu 0 4 434 733 735 738
		f 4 -551 -1188 1190 1189
		mu 0 4 431 434 738 435
		f 4 -553 -1190 1192 1191
		mu 0 4 432 431 435 436
		f 4 -555 -1192 1194 1193
		mu 0 4 437 432 436 440
		f 4 -557 -1194 1196 1195
		mu 0 4 781 437 440 785
		f 4 -559 -1196 1198 1197
		mu 0 4 786 781 785 789
		f 4 -561 -1198 1200 1199
		mu 0 4 790 786 789 793
		f 4 -563 -1200 1202 -562
		mu 0 4 1000 1001 1002 1003
		f 4 -564 -565 561 1204
		mu 0 4 819 816 818 821
		f 4 -566 -567 563 1206
		mu 0 4 817 814 816 819
		f 4 -568 -569 565 1208
		mu 0 4 473 469 814 817
		f 4 -570 -571 567 1210
		mu 0 4 471 467 469 473
		f 4 -572 -573 569 1212
		mu 0 4 470 466 467 471
		f 4 -574 -575 571 1214
		mu 0 4 472 468 466 470
		f 4 -576 -577 573 1216
		mu 0 4 760 758 468 472
		f 4 -578 -579 575 1218
		mu 0 4 759 757 758 760
		f 4 -580 -581 577 1220
		mu 0 4 398 388 757 759
		f 4 -582 -583 579 1222
		mu 0 4 389 379 388 398
		f 4 -584 -585 581 1224
		mu 0 4 380 370 379 389
		f 4 -586 -587 583 1226
		mu 0 4 371 360 370 380
		f 4 -588 -589 585 1228
		mu 0 4 361 351 360 371
		f 4 -590 -591 587 1230
		mu 0 4 352 343 351 361
		f 4 -592 -593 589 1232
		mu 0 4 345 337 343 352
		f 4 -594 -595 591 1234
		mu 0 4 344 336 337 345
		f 4 -596 -597 593 1236
		mu 0 4 347 339 336 344
		f 4 -598 -599 595 1238
		mu 0 4 355 346 339 347
		f 4 -600 -601 597 1240
		mu 0 4 704 698 346 355
		f 4 -602 -603 599 1242
		mu 0 4 699 693 698 704
		f 4 -604 -605 601 1244
		mu 0 4 694 688 693 699
		f 4 -606 -607 603 1246
		mu 0 4 689 682 688 694
		f 4 -608 -609 605 1248
		mu 0 4 683 677 682 689
		f 4 -610 -611 607 1250
		mu 0 4 678 673 677 683
		f 4 -612 -613 609 1252
		mu 0 4 199 191 673 678
		f 4 -614 -615 611 1254
		mu 0 4 192 181 191 199
		f 4 -616 -617 613 1256
		mu 0 4 182 171 181 192
		f 4 -618 -619 615 1258
		mu 0 4 172 160 171 182
		f 4 -620 -621 617 1260
		mu 0 4 161 150 160 172
		f 4 -622 -623 619 1262
		mu 0 4 151 141 150 161
		f 4 -624 -625 621 1264
		mu 0 4 142 133 141 151
		f 4 -626 -627 623 1266
		mu 0 4 135 127 133 142
		f 4 -628 -629 625 1268
		mu 0 4 134 126 127 135
		f 4 -630 -631 627 1270
		mu 0 4 137 129 126 134
		f 4 -632 -633 629 1272
		mu 0 4 145 136 129 137
		f 4 -634 -635 631 1274
		mu 0 4 586 582 136 145
		f 4 1275 -477 -636 633
		mu 0 4 586 583 579 582
		f 4 -638 -639 636 -18
		mu 0 4 601 597 599 603
		f 4 10 -641 637 -9
		mu 0 4 600 596 597 601
		f 4 -8 -642 -643 -11
		mu 0 4 521 522 523 524
		f 4 -645 641 5 6
		mu 0 4 555 554 558 559
		f 4 -647 -7 15 16
		mu 0 4 560 555 559 562
		f 4 -649 -17 23 24
		mu 0 4 563 560 562 564
		f 4 -651 -25 31 32
		mu 0 4 79 563 564 88
		f 4 -653 -33 39 40
		mu 0 4 69 79 88 80
		f 4 -655 -41 47 48
		mu 0 4 58 69 80 70
		f 4 -657 -49 55 56
		mu 0 4 59 58 70 71
		f 4 -659 -57 63 64
		mu 0 4 72 59 71 81
		f 4 -661 -65 71 72
		mu 0 4 82 72 81 89
		f 4 -663 -73 79 80
		mu 0 4 90 82 89 95
		f 4 -665 -81 87 88
		mu 0 4 96 90 95 100
		f 4 -667 -89 95 96
		mu 0 4 101 96 100 104
		f 4 -669 -97 103 104
		mu 0 4 105 101 104 107
		f 4 -671 -105 111 112
		mu 0 4 108 105 107 109
		f 4 -673 -113 119 120
		mu 0 4 638 108 109 644
		f 4 -675 -121 127 128
		mu 0 4 645 638 644 650
		f 4 -677 -129 135 136
		mu 0 4 651 645 650 655
		f 4 -679 -137 143 144
		mu 0 4 656 651 655 659
		f 4 -681 -145 151 152
		mu 0 4 660 656 659 662
		f 4 -683 -153 159 160
		mu 0 4 663 660 662 664
		f 4 -685 -161 167 168
		mu 0 4 296 663 664 304
		f 4 -687 -169 175 176
		mu 0 4 287 296 304 297
		f 4 -689 -177 183 184
		mu 0 4 278 287 297 288
		f 4 -691 -185 191 192
		mu 0 4 279 278 288 289
		f 4 -693 -193 199 200
		mu 0 4 290 279 289 298
		f 4 -695 -201 207 208
		mu 0 4 299 290 298 305
		f 4 -697 -209 215 216
		mu 0 4 306 299 305 310
		f 4 -699 -217 223 224
		mu 0 4 311 306 310 314
		f 4 -701 -225 231 232
		mu 0 4 315 311 314 317
		f 4 -703 -233 239 240
		mu 0 4 318 315 317 319
		f 4 -705 -241 247 248
		mu 0 4 742 318 319 745
		f 4 -707 -249 255 256
		mu 0 4 746 742 745 748
		f 4 -709 -257 263 264
		mu 0 4 749 746 748 750
		f 4 -711 -265 271 272
		mu 0 4 447 749 750 450
		f 4 -713 -273 279 280
		mu 0 4 448 447 450 451
		f 4 -715 -281 287 288
		mu 0 4 452 448 451 453
		f 4 -717 -289 295 296
		mu 0 4 797 452 453 800
		f 4 -719 -297 303 304
		mu 0 4 801 797 800 803
		f 4 -721 -305 311 312
		mu 0 4 804 801 803 805
		f 4 -723 -313 -315 -722
		mu 0 4 518 517 519 520
		f 4 -724 -725 721 -314
		mu 0 4 834 831 833 835
		f 4 -726 -727 723 -306
		mu 0 4 832 829 831 834
		f 4 -728 -729 725 -298
		mu 0 4 488 485 829 832
		f 4 -730 -731 727 -290
		mu 0 4 487 484 485 488
		f 4 -732 -733 729 -282
		mu 0 4 486 483 484 487
		f 4 -734 -735 731 -274
		mu 0 4 775 773 483 486
		f 4 -736 -737 733 -266
		mu 0 4 774 771 773 775
		f 4 -738 -739 735 -258
		mu 0 4 772 769 771 774
		f 4 -740 -741 737 -250
		mu 0 4 419 417 769 772
		f 4 -742 -743 739 -242
		mu 0 4 418 415 417 419
		f 4 -744 -745 741 -234
		mu 0 4 416 412 415 418
		f 4 -746 -747 743 -226
		mu 0 4 413 408 412 416
		f 4 -748 -749 745 -218
		mu 0 4 409 402 408 413
		f 4 -750 -751 747 -210
		mu 0 4 403 393 402 409
		f 4 -752 -753 749 -202
		mu 0 4 395 385 393 403
		f 4 -754 -755 751 -194
		mu 0 4 394 384 385 395
		f 4 -756 -757 753 -186
		mu 0 4 397 387 384 394
		f 4 -758 -759 755 -178
		mu 0 4 404 396 387 397
		f 4 -760 -761 757 -170
		mu 0 4 724 722 396 404
		f 4 -762 -763 759 -162
		mu 0 4 723 720 722 724
		f 4 -764 -765 761 -154
		mu 0 4 721 717 720 723
		f 4 -766 -767 763 -146
		mu 0 4 718 713 717 721
		f 4 -768 -769 765 -138
		mu 0 4 714 708 713 718
		f 4 -770 -771 767 -130
		mu 0 4 709 703 708 714
		f 4 -772 -773 769 -122
		mu 0 4 219 217 703 709
		f 4 -774 -775 771 -114
		mu 0 4 218 215 217 219
		f 4 -776 -777 773 -106
		mu 0 4 216 212 215 218
		f 4 -778 -779 775 -98
		mu 0 4 213 208 212 216
		f 4 -780 -781 777 -90
		mu 0 4 209 203 208 213
		f 4 -782 -783 779 -82
		mu 0 4 204 196 203 209
		f 4 -784 -785 781 -74
		mu 0 4 197 186 196 204
		f 4 -786 -787 783 -66
		mu 0 4 188 177 186 197
		f 4 -788 -789 785 -58
		mu 0 4 187 176 177 188
		f 4 -790 -791 787 -50
		mu 0 4 190 179 176 187
		f 4 -792 -793 789 -42
		mu 0 4 198 189 179 190
		f 4 -794 -795 791 -34
		mu 0 4 604 602 189 198
		f 4 -637 -796 793 -26
		mu 0 4 603 599 602 604
		f 4 -798 -799 796 638
		mu 0 4 597 593 595 599
		f 4 639 -801 797 640
		mu 0 4 596 592 593 597
		f 4 642 -802 -803 -640
		mu 0 4 1004 1005 1006 1007
		f 4 -805 801 644 643
		mu 0 4 551 550 554 555
		f 4 -807 -644 646 645
		mu 0 4 556 551 555 560
		f 4 -809 -646 648 647
		mu 0 4 561 556 560 563
		f 4 -811 -648 650 649
		mu 0 4 68 561 563 79
		f 4 -813 -650 652 651
		mu 0 4 57 68 79 69
		f 4 -815 -652 654 653
		mu 0 4 47 57 69 58
		f 4 -817 -654 656 655
		mu 0 4 48 47 58 59
		f 4 -819 -656 658 657
		mu 0 4 60 48 59 72
		f 4 -821 -658 660 659
		mu 0 4 73 60 72 82
		f 4 -823 -660 662 661
		mu 0 4 83 73 82 90
		f 4 -825 -662 664 663
		mu 0 4 91 83 90 96
		f 4 -827 -664 666 665
		mu 0 4 97 91 96 101
		f 4 -829 -666 668 667
		mu 0 4 102 97 101 105
		f 4 -831 -668 670 669
		mu 0 4 106 102 105 108
		f 4 -833 -670 672 671
		mu 0 4 632 106 108 638
		f 4 -835 -672 674 673
		mu 0 4 639 632 638 645
		f 4 -837 -674 676 675
		mu 0 4 646 639 645 651
		f 4 -839 -676 678 677
		mu 0 4 652 646 651 656
		f 4 -841 -678 680 679
		mu 0 4 657 652 656 660
		f 4 -843 -680 682 681
		mu 0 4 661 657 660 663
		f 4 -845 -682 684 683
		mu 0 4 286 661 663 296
		f 4 -847 -684 686 685
		mu 0 4 277 286 296 287
		f 4 -849 -686 688 687
		mu 0 4 267 277 287 278
		f 4 -851 -688 690 689
		mu 0 4 268 267 278 279
		f 4 -853 -690 692 691
		mu 0 4 280 268 279 290
		f 4 -855 -692 694 693
		mu 0 4 291 280 290 299
		f 4 -857 -694 696 695
		mu 0 4 300 291 299 306
		f 4 -859 -696 698 697
		mu 0 4 307 300 306 311
		f 4 -861 -698 700 699
		mu 0 4 312 307 311 315
		f 4 -863 -700 702 701
		mu 0 4 316 312 315 318
		f 4 -865 -702 704 703
		mu 0 4 739 316 318 742
		f 4 -867 -704 706 705
		mu 0 4 743 739 742 746
		f 4 -869 -706 708 707
		mu 0 4 747 743 746 749
		f 4 -871 -708 710 709
		mu 0 4 444 747 749 447
		f 4 -873 -710 712 711
		mu 0 4 445 444 447 448
		f 4 -875 -712 714 713
		mu 0 4 449 445 448 452
		f 4 -877 -714 716 715
		mu 0 4 794 449 452 797
		f 4 -879 -716 718 717
		mu 0 4 798 794 797 801
		f 4 -881 -718 720 719
		mu 0 4 802 798 801 804
		f 4 -883 -720 722 -882
		mu 0 4 514 513 517 518
		f 4 -884 -885 881 724
		mu 0 4 831 828 830 833
		f 4 -886 -887 883 726
		mu 0 4 829 826 828 831
		f 4 -888 -889 885 728
		mu 0 4 485 482 826 829
		f 4 -890 -891 887 730
		mu 0 4 484 481 482 485
		f 4 -892 -893 889 732
		mu 0 4 483 480 481 484
		f 4 -894 -895 891 734
		mu 0 4 773 770 480 483
		f 4 -896 -897 893 736
		mu 0 4 771 768 770 773
		f 4 -898 -899 895 738
		mu 0 4 769 766 768 771
		f 4 -900 -901 897 740
		mu 0 4 417 414 766 769
		f 4 -902 -903 899 742
		mu 0 4 415 411 414 417
		f 4 -904 -905 901 744
		mu 0 4 412 407 411 415
		f 4 -906 -907 903 746
		mu 0 4 408 401 407 412
		f 4 -908 -909 905 748
		mu 0 4 402 392 401 408
		f 4 -910 -911 907 750
		mu 0 4 393 383 392 402
		f 4 -912 -913 909 752
		mu 0 4 385 375 383 393
		f 4 -914 -915 911 754
		mu 0 4 384 374 375 385
		f 4 -916 -917 913 756
		mu 0 4 387 377 374 384
		f 4 -918 -919 915 758
		mu 0 4 396 386 377 387
		f 4 -920 -921 917 760
		mu 0 4 722 719 386 396
		f 4 -922 -923 919 762
		mu 0 4 720 716 719 722
		f 4 -924 -925 921 764
		mu 0 4 717 712 716 720
		f 4 -926 -927 923 766
		mu 0 4 713 707 712 717
		f 4 -928 -929 925 768
		mu 0 4 708 702 707 713
		f 4 -930 -931 927 770
		mu 0 4 703 697 702 708
		f 4 -932 -933 929 772
		mu 0 4 217 214 697 703
		f 4 -934 -935 931 774
		mu 0 4 215 211 214 217
		f 4 -936 -937 933 776
		mu 0 4 212 207 211 215
		f 4 -938 -939 935 778
		mu 0 4 208 202 207 212
		f 4 -940 -941 937 780
		mu 0 4 203 195 202 208
		f 4 -942 -943 939 782
		mu 0 4 196 185 195 203
		f 4 -944 -945 941 784
		mu 0 4 186 175 185 196
		f 4 -946 -947 943 786
		mu 0 4 177 165 175 186
		f 4 -948 -949 945 788
		mu 0 4 176 164 165 177
		f 4 -950 -951 947 790
		mu 0 4 179 167 164 176
		f 4 -952 -953 949 792
		mu 0 4 189 178 167 179
		f 4 -954 -955 951 794
		mu 0 4 602 598 178 189
		f 4 795 -797 -956 953
		mu 0 4 602 599 595 598
		f 4 -958 -959 956 318
		mu 0 4 589 585 587 591
		f 4 319 -961 957 320
		mu 0 4 588 584 585 589
		f 4 322 -962 -963 -320
		mu 0 4 501 502 500 499
		f 4 -965 961 324 323
		mu 0 4 543 542 546 547
		f 4 -967 -324 326 325
		mu 0 4 548 543 547 552
		f 4 -969 -326 328 327
		mu 0 4 553 548 552 557
		f 4 -971 -328 330 329
		mu 0 4 45 553 557 56
		f 4 -973 -330 332 331
		mu 0 4 36 45 56 46
		f 4 -975 -332 334 333
		mu 0 4 28 36 46 37
		f 4 -977 -334 336 335
		mu 0 4 29 28 37 38
		f 4 -979 -336 338 337
		mu 0 4 39 29 38 49
		f 4 -981 -338 340 339
		mu 0 4 50 39 49 61
		f 4 -983 -340 342 341
		mu 0 4 62 50 61 74
		f 4 -985 -342 344 343
		mu 0 4 75 62 74 84
		f 4 -987 -344 346 345
		mu 0 4 85 75 84 92
		f 4 -989 -346 348 347
		mu 0 4 93 85 92 98
		f 4 -991 -348 350 349
		mu 0 4 99 93 98 103
		f 4 -993 -350 352 351
		mu 0 4 619 99 103 625
		f 4 -995 -352 354 353
		mu 0 4 626 619 625 633
		f 4 -997 -354 356 355
		mu 0 4 634 626 633 640
		f 4 -999 -356 358 357
		mu 0 4 641 634 640 647
		f 4 -1001 -358 360 359
		mu 0 4 648 641 647 653;
	setAttr ".fc[500:797]"
		f 4 -1003 -360 362 361
		mu 0 4 654 648 653 658
		f 4 -1005 -362 364 363
		mu 0 4 265 654 658 276
		f 4 -1007 -364 366 365
		mu 0 4 256 265 276 266
		f 4 -1009 -366 368 367
		mu 0 4 248 256 266 257
		f 4 -1011 -368 370 369
		mu 0 4 249 248 257 258
		f 4 -1013 -370 372 371
		mu 0 4 259 249 258 269
		f 4 -1015 -372 374 373
		mu 0 4 270 259 269 281
		f 4 -1017 -374 376 375
		mu 0 4 282 270 281 292
		f 4 -1019 -376 378 377
		mu 0 4 293 282 292 301
		f 4 -1021 -378 380 379
		mu 0 4 302 293 301 308
		f 4 -1023 -380 382 381
		mu 0 4 309 302 308 313
		f 4 -1025 -382 384 383
		mu 0 4 734 309 313 736
		f 4 -1027 -384 386 385
		mu 0 4 737 734 736 740
		f 4 -1029 -386 388 387
		mu 0 4 741 737 740 744
		f 4 -1031 -388 390 389
		mu 0 4 438 741 744 441
		f 4 -1033 -390 392 391
		mu 0 4 439 438 441 442
		f 4 -1035 -392 394 393
		mu 0 4 443 439 442 446
		f 4 -1037 -394 396 395
		mu 0 4 788 443 446 791
		f 4 -1039 -396 398 397
		mu 0 4 792 788 791 795
		f 4 -1041 -398 400 399
		mu 0 4 796 792 795 799
		f 4 -1043 -400 402 -1042
		mu 0 4 515 516 512 511
		f 4 -1044 -1045 1041 404
		mu 0 4 825 822 824 827
		f 4 -1046 -1047 1043 406
		mu 0 4 823 820 822 825
		f 4 -1048 -1049 1045 408
		mu 0 4 479 476 820 823
		f 4 -1050 -1051 1047 410
		mu 0 4 478 475 476 479
		f 4 -1052 -1053 1049 412
		mu 0 4 477 474 475 478
		f 4 -1054 -1055 1051 414
		mu 0 4 767 764 474 477
		f 4 -1056 -1057 1053 416
		mu 0 4 765 762 764 767
		f 4 -1058 -1059 1055 418
		mu 0 4 763 761 762 765
		f 4 -1060 -1061 1057 420
		mu 0 4 410 405 761 763
		f 4 -1062 -1063 1059 422
		mu 0 4 406 399 405 410
		f 4 -1064 -1065 1061 424
		mu 0 4 400 390 399 406
		f 4 -1066 -1067 1063 426
		mu 0 4 391 381 390 400
		f 4 -1068 -1069 1065 428
		mu 0 4 382 372 381 391
		f 4 -1070 -1071 1067 430
		mu 0 4 373 362 372 382
		f 4 -1072 -1073 1069 432
		mu 0 4 364 354 362 373
		f 4 -1074 -1075 1071 434
		mu 0 4 363 353 354 364
		f 4 -1076 -1077 1073 436
		mu 0 4 366 356 353 363
		f 4 -1078 -1079 1075 438
		mu 0 4 376 365 356 366
		f 4 -1080 -1081 1077 440
		mu 0 4 715 710 365 376
		f 4 -1082 -1083 1079 442
		mu 0 4 711 705 710 715
		f 4 -1084 -1085 1081 444
		mu 0 4 706 700 705 711
		f 4 -1086 -1087 1083 446
		mu 0 4 701 695 700 706
		f 4 -1088 -1089 1085 448
		mu 0 4 696 690 695 701
		f 4 -1090 -1091 1087 450
		mu 0 4 691 684 690 696
		f 4 -1092 -1093 1089 452
		mu 0 4 210 205 684 691
		f 4 -1094 -1095 1091 454
		mu 0 4 206 200 205 210
		f 4 -1096 -1097 1093 456
		mu 0 4 201 193 200 206
		f 4 -1098 -1099 1095 458
		mu 0 4 194 183 193 201
		f 4 -1100 -1101 1097 460
		mu 0 4 184 173 183 194
		f 4 -1102 -1103 1099 462
		mu 0 4 174 162 173 184
		f 4 -1104 -1105 1101 464
		mu 0 4 163 152 162 174
		f 4 -1106 -1107 1103 466
		mu 0 4 154 144 152 163
		f 4 -1108 -1109 1105 468
		mu 0 4 153 143 144 154
		f 4 -1110 -1111 1107 470
		mu 0 4 156 146 143 153
		f 4 -1112 -1113 1109 472
		mu 0 4 166 155 146 156
		f 4 -1114 -1115 1111 474
		mu 0 4 594 590 155 166
		f 4 475 -957 -1116 1113
		mu 0 4 594 591 587 590
		f 4 -1118 -1119 1116 958
		mu 0 4 585 581 583 587
		f 4 959 -1121 1117 960
		mu 0 4 584 580 581 585
		f 4 962 -1122 -1123 -960
		mu 0 4 499 500 498 497
		f 4 -1125 1121 964 963
		mu 0 4 539 538 542 543
		f 4 -1127 -964 966 965
		mu 0 4 544 539 543 548
		f 4 -1129 -966 968 967
		mu 0 4 549 544 548 553
		f 4 -1131 -968 970 969
		mu 0 4 35 549 553 45
		f 4 -1133 -970 972 971
		mu 0 4 27 35 45 36
		f 4 -1135 -972 974 973
		mu 0 4 20 27 36 28
		f 4 -1137 -974 976 975
		mu 0 4 21 20 28 29
		f 4 -1139 -976 978 977
		mu 0 4 30 21 29 39
		f 4 -1141 -978 980 979
		mu 0 4 40 30 39 50
		f 4 -1143 -980 982 981
		mu 0 4 51 40 50 62
		f 4 -1145 -982 984 983
		mu 0 4 63 51 62 75
		f 4 -1147 -984 986 985
		mu 0 4 76 63 75 85
		f 4 -1149 -986 988 987
		mu 0 4 86 76 85 93
		f 4 -1151 -988 990 989
		mu 0 4 94 86 93 99
		f 4 -1153 -990 992 991
		mu 0 4 614 94 99 619
		f 4 -1155 -992 994 993
		mu 0 4 620 614 619 626
		f 4 -1157 -994 996 995
		mu 0 4 627 620 626 634
		f 4 -1159 -996 998 997
		mu 0 4 635 627 634 641
		f 4 -1161 -998 1000 999
		mu 0 4 642 635 641 648
		f 4 -1163 -1000 1002 1001
		mu 0 4 649 642 648 654
		f 4 -1165 -1002 1004 1003
		mu 0 4 255 649 654 265
		f 4 -1167 -1004 1006 1005
		mu 0 4 247 255 265 256
		f 4 -1169 -1006 1008 1007
		mu 0 4 240 247 256 248
		f 4 -1171 -1008 1010 1009
		mu 0 4 241 240 248 249
		f 4 -1173 -1010 1012 1011
		mu 0 4 250 241 249 259
		f 4 -1175 -1012 1014 1013
		mu 0 4 260 250 259 270
		f 4 -1177 -1014 1016 1015
		mu 0 4 271 260 270 282
		f 4 -1179 -1016 1018 1017
		mu 0 4 283 271 282 293
		f 4 -1181 -1018 1020 1019
		mu 0 4 294 283 293 302
		f 4 -1183 -1020 1022 1021
		mu 0 4 303 294 302 309
		f 4 -1185 -1022 1024 1023
		mu 0 4 732 303 309 734
		f 4 -1187 -1024 1026 1025
		mu 0 4 735 732 734 737
		f 4 -1189 -1026 1028 1027
		mu 0 4 738 735 737 741
		f 4 -1191 -1028 1030 1029
		mu 0 4 435 738 741 438
		f 4 -1193 -1030 1032 1031
		mu 0 4 436 435 438 439
		f 4 -1195 -1032 1034 1033
		mu 0 4 440 436 439 443
		f 4 -1197 -1034 1036 1035
		mu 0 4 785 440 443 788
		f 4 -1199 -1036 1038 1037
		mu 0 4 789 785 788 792
		f 4 -1201 -1038 1040 1039
		mu 0 4 793 789 792 796
		f 4 -1203 -1040 1042 -1202
		mu 0 4 1003 1002 1008 1009
		f 4 -1204 -1205 1201 1044
		mu 0 4 822 819 821 824
		f 4 -1206 -1207 1203 1046
		mu 0 4 820 817 819 822
		f 4 -1208 -1209 1205 1048
		mu 0 4 476 473 817 820
		f 4 -1210 -1211 1207 1050
		mu 0 4 475 471 473 476
		f 4 -1212 -1213 1209 1052
		mu 0 4 474 470 471 475
		f 4 -1214 -1215 1211 1054
		mu 0 4 764 472 470 474
		f 4 -1216 -1217 1213 1056
		mu 0 4 762 760 472 764
		f 4 -1218 -1219 1215 1058
		mu 0 4 761 759 760 762
		f 4 -1220 -1221 1217 1060
		mu 0 4 405 398 759 761
		f 4 -1222 -1223 1219 1062
		mu 0 4 399 389 398 405
		f 4 -1224 -1225 1221 1064
		mu 0 4 390 380 389 399
		f 4 -1226 -1227 1223 1066
		mu 0 4 381 371 380 390
		f 4 -1228 -1229 1225 1068
		mu 0 4 372 361 371 381
		f 4 -1230 -1231 1227 1070
		mu 0 4 362 352 361 372
		f 4 -1232 -1233 1229 1072
		mu 0 4 354 345 352 362
		f 4 -1234 -1235 1231 1074
		mu 0 4 353 344 345 354
		f 4 -1236 -1237 1233 1076
		mu 0 4 356 347 344 353
		f 4 -1238 -1239 1235 1078
		mu 0 4 365 355 347 356
		f 4 -1240 -1241 1237 1080
		mu 0 4 710 704 355 365
		f 4 -1242 -1243 1239 1082
		mu 0 4 705 699 704 710
		f 4 -1244 -1245 1241 1084
		mu 0 4 700 694 699 705
		f 4 -1246 -1247 1243 1086
		mu 0 4 695 689 694 700
		f 4 -1248 -1249 1245 1088
		mu 0 4 690 683 689 695
		f 4 -1250 -1251 1247 1090
		mu 0 4 684 678 683 690
		f 4 -1252 -1253 1249 1092
		mu 0 4 205 199 678 684
		f 4 -1254 -1255 1251 1094
		mu 0 4 200 192 199 205
		f 4 -1256 -1257 1253 1096
		mu 0 4 193 182 192 200
		f 4 -1258 -1259 1255 1098
		mu 0 4 183 172 182 193
		f 4 -1260 -1261 1257 1100
		mu 0 4 173 161 172 183
		f 4 -1262 -1263 1259 1102
		mu 0 4 162 151 161 173
		f 4 -1264 -1265 1261 1104
		mu 0 4 152 142 151 162
		f 4 -1266 -1267 1263 1106
		mu 0 4 144 135 142 152
		f 4 -1268 -1269 1265 1108
		mu 0 4 143 134 135 144
		f 4 -1270 -1271 1267 1110
		mu 0 4 146 137 134 143
		f 4 -1272 -1273 1269 1112
		mu 0 4 155 145 137 146
		f 4 -1274 -1275 1271 1114
		mu 0 4 590 586 145 155
		f 4 1115 -1117 -1276 1273
		mu 0 4 590 587 583 586
		f 4 -1278 -1279 1276 478
		mu 0 4 577 572 575 579
		f 4 479 -1281 1277 480
		mu 0 4 576 571 572 577
		f 4 482 -1282 -1283 -480
		mu 0 4 495 496 494 493
		f 4 -1285 1281 484 483
		mu 0 4 530 529 533 534
		f 4 -1287 -484 486 485
		mu 0 4 535 530 534 540
		f 4 -1289 -486 488 487
		mu 0 4 541 535 540 545
		f 4 -1291 -488 490 489
		mu 0 4 18 541 545 26
		f 4 -1293 -490 492 491
		mu 0 4 12 18 26 19
		f 4 -1295 -492 494 493
		mu 0 4 6 12 19 13
		f 4 -1297 -494 496 495
		mu 0 4 7 6 13 14
		f 4 -1299 -496 498 497
		mu 0 4 15 7 14 22
		f 4 -1301 -498 500 499
		mu 0 4 23 15 22 31
		f 4 -1303 -500 502 501
		mu 0 4 32 23 31 41
		f 4 -1305 -502 504 503
		mu 0 4 42 32 41 52
		f 4 -1307 -504 506 505
		mu 0 4 53 42 52 64
		f 4 -1309 -506 508 507
		mu 0 4 65 53 64 77
		f 4 -1311 -508 510 509
		mu 0 4 78 65 77 87
		f 4 -1313 -510 512 511
		mu 0 4 607 78 87 610
		f 4 -1315 -512 514 513
		mu 0 4 611 607 610 615
		f 4 -1317 -514 516 515
		mu 0 4 616 611 615 621
		f 4 -1319 -516 518 517
		mu 0 4 622 616 621 628
		f 4 -1321 -518 520 519
		mu 0 4 629 622 628 636
		f 4 -1323 -520 522 521
		mu 0 4 637 629 636 643
		f 4 -1325 -522 524 523
		mu 0 4 238 637 643 246
		f 4 -1327 -524 526 525
		mu 0 4 232 238 246 239
		f 4 -1329 -526 528 527
		mu 0 4 226 232 239 233
		f 4 -1331 -528 530 529
		mu 0 4 227 226 233 234
		f 4 -1333 -530 532 531
		mu 0 4 235 227 234 242
		f 4 -1335 -532 534 533
		mu 0 4 243 235 242 251
		f 4 -1337 -534 536 535
		mu 0 4 252 243 251 261
		f 4 -1339 -536 538 537
		mu 0 4 262 252 261 272
		f 4 -1341 -538 540 539
		mu 0 4 273 262 272 284
		f 4 -1343 -540 542 541
		mu 0 4 285 273 284 295
		f 4 -1345 -542 544 543
		mu 0 4 727 285 295 730
		f 4 -1347 -544 546 545
		mu 0 4 731 727 730 733
		f 4 -1349 -546 548 547
		mu 0 4 430 731 733 434
		f 4 -1351 -548 550 549
		mu 0 4 426 430 434 431
		f 4 -1353 -550 552 551
		mu 0 4 427 426 431 432
		f 4 -1355 -552 554 553
		mu 0 4 433 427 432 437
		f 4 -1357 -554 556 555
		mu 0 4 778 433 437 781
		f 4 -1359 -556 558 557
		mu 0 4 782 778 781 786
		f 4 -1361 -558 560 559
		mu 0 4 787 782 786 790
		f 4 -1363 -560 562 -1362
		mu 0 4 508 507 509 510
		f 4 -1364 -1365 1361 564
		mu 0 4 816 813 815 818
		f 4 -1366 -1367 1363 566
		mu 0 4 814 810 813 816
		f 4 -1368 -1369 1365 568
		mu 0 4 469 465 810 814
		f 4 -1370 -1371 1367 570
		mu 0 4 467 463 465 469
		f 4 -1372 -1373 1369 572
		mu 0 4 466 462 463 467
		f 4 -1374 -1375 1371 574
		mu 0 4 468 464 462 466
		f 4 -1376 -1377 1373 576
		mu 0 4 758 756 464 468
		f 4 -1378 -1379 1375 578
		mu 0 4 757 755 756 758
		f 4 -1380 -1381 1377 580
		mu 0 4 388 378 755 757
		f 4 -1382 -1383 1379 582
		mu 0 4 379 369 378 388
		f 4 -1384 -1385 1381 584
		mu 0 4 370 359 369 379
		f 4 -1386 -1387 1383 586
		mu 0 4 360 350 359 370
		f 4 -1388 -1389 1385 588
		mu 0 4 351 342 350 360
		f 4 -1390 -1391 1387 590
		mu 0 4 343 335 342 351
		f 4 -1392 -1393 1389 592
		mu 0 4 337 329 335 343
		f 4 -1394 -1395 1391 594
		mu 0 4 336 328 329 337
		f 4 -1396 -1397 1393 596
		mu 0 4 339 332 328 336
		f 4 -1398 -1399 1395 598
		mu 0 4 346 338 332 339
		f 4 -1400 -1401 1397 600
		mu 0 4 698 692 338 346
		f 4 -1402 -1403 1399 602
		mu 0 4 693 687 692 698
		f 4 -1404 -1405 1401 604
		mu 0 4 688 681 687 693
		f 4 -1406 -1407 1403 606
		mu 0 4 682 676 681 688
		f 4 -1408 -1409 1405 608
		mu 0 4 677 672 676 682
		f 4 -1410 -1411 1407 610
		mu 0 4 673 669 672 677
		f 4 -1412 -1413 1409 612
		mu 0 4 191 180 669 673
		f 4 -1414 -1415 1411 614
		mu 0 4 181 170 180 191
		f 4 -1416 -1417 1413 616
		mu 0 4 171 159 170 181
		f 4 -1418 -1419 1415 618
		mu 0 4 160 149 159 171
		f 4 -1420 -1421 1417 620
		mu 0 4 150 140 149 160
		f 4 -1422 -1423 1419 622
		mu 0 4 141 132 140 150
		f 4 -1424 -1425 1421 624
		mu 0 4 133 125 132 141
		f 4 -1426 -1427 1423 626
		mu 0 4 127 119 125 133
		f 4 -1428 -1429 1425 628
		mu 0 4 126 118 119 127
		f 4 -1430 -1431 1427 630
		mu 0 4 129 122 118 126
		f 4 -1432 -1433 1429 632
		mu 0 4 136 128 122 129
		f 4 -1434 -1435 1431 634
		mu 0 4 582 578 128 136
		f 4 635 -1277 -1436 1433
		mu 0 4 582 579 575 578
		f 4 -1438 -1439 1436 1278
		mu 0 4 572 568 570 575
		f 4 1279 -1441 1437 1280
		mu 0 4 571 565 568 572
		f 4 1282 -1442 -1443 -1280
		mu 0 4 493 494 490 489
		f 4 -1445 1441 1284 1283
		mu 0 4 527 526 529 530
		f 4 -1447 -1284 1286 1285
		mu 0 4 531 527 530 535
		f 4 -1449 -1286 1288 1287
		mu 0 4 536 531 535 541
		f 4 -1451 -1288 1290 1289
		mu 0 4 11 536 541 18
		f 4 -1453 -1290 1292 1291
		mu 0 4 5 11 18 12
		f 4 -1455 -1292 1294 1293
		mu 0 4 1 5 12 6
		f 4 -1457 -1294 1296 1295
		mu 0 4 2 1 6 7
		f 4 -1459 -1296 1298 1297
		mu 0 4 8 2 7 15
		f 4 -1461 -1298 1300 1299
		mu 0 4 16 8 15 23
		f 4 -1463 -1300 1302 1301
		mu 0 4 24 16 23 32
		f 4 -1465 -1302 1304 1303
		mu 0 4 33 24 32 42
		f 4 -1467 -1304 1306 1305
		mu 0 4 43 33 42 53
		f 4 -1469 -1306 1308 1307
		mu 0 4 54 43 53 65
		f 4 -1471 -1308 1310 1309
		mu 0 4 66 54 65 78
		f 4 -1473 -1310 1312 1311
		mu 0 4 605 66 78 607
		f 4 -1475 -1312 1314 1313
		mu 0 4 608 605 607 611
		f 4 -1477 -1314 1316 1315
		mu 0 4 612 608 611 616
		f 4 -1479 -1316 1318 1317
		mu 0 4 617 612 616 622
		f 4 -1481 -1318 1320 1319
		mu 0 4 623 617 622 629
		f 4 -1483 -1320 1322 1321
		mu 0 4 630 623 629 637
		f 4 -1485 -1322 1324 1323
		mu 0 4 231 630 637 238
		f 4 -1487 -1324 1326 1325
		mu 0 4 225 231 238 232
		f 4 -1489 -1326 1328 1327
		mu 0 4 221 225 232 226
		f 4 -1491 -1328 1330 1329
		mu 0 4 222 221 226 227
		f 4 -1493 -1330 1332 1331
		mu 0 4 228 222 227 235
		f 4 -1495 -1332 1334 1333
		mu 0 4 236 228 235 243
		f 4 -1497 -1334 1336 1335
		mu 0 4 244 236 243 252
		f 4 -1499 -1336 1338 1337
		mu 0 4 253 244 252 262
		f 4 -1501 -1338 1340 1339
		mu 0 4 263 253 262 273
		f 4 -1503 -1340 1342 1341
		mu 0 4 274 263 273 285
		f 4 -1505 -1342 1344 1343
		mu 0 4 725 274 285 727
		f 4 -1507 -1344 1346 1345
		mu 0 4 728 725 727 731
		f 4 -1509 -1346 1348 1347
		mu 0 4 425 728 731 430
		f 4 -1511 -1348 1350 1349
		mu 0 4 421 425 430 426
		f 4 -1513 -1350 1352 1351
		mu 0 4 422 421 426 427
		f 4 -1515 -1352 1354 1353
		mu 0 4 428 422 427 433
		f 4 -1517 -1354 1356 1355
		mu 0 4 776 428 433 778
		f 4 -1519 -1356 1358 1357
		mu 0 4 779 776 778 782
		f 4 -1521 -1358 1360 1359
		mu 0 4 783 779 782 787
		f 4 -1523 -1360 1362 -1522
		mu 0 4 506 505 507 508
		f 4 -1524 -1525 1521 1364
		mu 0 4 813 809 812 815
		f 4 -1526 -1527 1523 1366
		mu 0 4 810 807 809 813
		f 4 -1528 -1529 1525 1368
		mu 0 4 465 461 807 810
		f 4 -1530 -1531 1527 1370
		mu 0 4 463 457 461 465
		f 4 -1532 -1533 1529 1372
		mu 0 4 462 454 457 463
		f 4 -1534 -1535 1531 1374
		mu 0 4 464 458 454 462
		f 4 -1536 -1537 1533 1376
		mu 0 4 756 754 458 464
		f 4 -1538 -1539 1535 1378
		mu 0 4 755 752 754 756
		f 4 -1540 -1541 1537 1380
		mu 0 4 378 368 752 755
		f 4 -1542 -1543 1539 1382
		mu 0 4 369 358 368 378
		f 4 -1544 -1545 1541 1384
		mu 0 4 359 349 358 369
		f 4 -1546 -1547 1543 1386
		mu 0 4 350 341 349 359
		f 4 -1548 -1549 1545 1388
		mu 0 4 342 334 341 350
		f 4 -1550 -1551 1547 1390
		mu 0 4 335 327 334 342
		f 4 -1552 -1553 1549 1392
		mu 0 4 329 323 327 335
		f 4 -1554 -1555 1551 1394
		mu 0 4 328 320 323 329
		f 4 -1556 -1557 1553 1396
		mu 0 4 332 324 320 328
		f 4 -1558 -1559 1555 1398
		mu 0 4 338 330 324 332
		f 4 -1560 -1561 1557 1400
		mu 0 4 692 686 330 338
		f 4 -1562 -1563 1559 1402
		mu 0 4 687 680 686 692
		f 4 -1564 -1565 1561 1404
		mu 0 4 681 675 680 687
		f 4 -1566 -1567 1563 1406
		mu 0 4 676 671 675 681
		f 4 -1568 -1569 1565 1408
		mu 0 4 672 668 671 676
		f 4 -1570 -1571 1567 1410
		mu 0 4 669 666 668 672
		f 4 -1572 -1573 1569 1412
		mu 0 4 180 169 666 669
		f 4 -1574 -1575 1571 1414
		mu 0 4 170 158 169 180
		f 4 -1576 -1577 1573 1416
		mu 0 4 159 148 158 170
		f 4 -1578 -1579 1575 1418
		mu 0 4 149 139 148 159
		f 4 -1580 -1581 1577 1420
		mu 0 4 140 131 139 149
		f 4 -1582 -1583 1579 1422
		mu 0 4 132 124 131 140
		f 4 -1584 -1585 1581 1424
		mu 0 4 125 117 124 132
		f 4 -1586 -1587 1583 1426
		mu 0 4 119 113 117 125
		f 4 -1588 -1589 1585 1428
		mu 0 4 118 110 113 119
		f 4 -1590 -1591 1587 1430
		mu 0 4 122 114 110 118
		f 4 -1592 -1593 1589 1432
		mu 0 4 128 120 114 122
		f 4 -1594 -1595 1591 1434
		mu 0 4 578 573 120 128
		f 4 1435 -1437 -1596 1593
		mu 0 4 578 575 570 573;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 124 
		10 0 
		11 0 
		18 0 
		26 0 
		35 0 
		45 0 
		56 0 
		66 0 
		67 0 
		68 0 
		78 0 
		79 0 
		87 0 
		88 0 
		94 0 
		99 0 
		103 0 
		106 0 
		108 0 
		109 0 
		120 0 
		121 0 
		128 0 
		136 0 
		145 0 
		155 0 
		166 0 
		168 0 
		169 0 
		178 0 
		180 0 
		189 0 
		191 0 
		198 0 
		199 0 
		205 0 
		210 0 
		214 0 
		217 0 
		219 0 
		230 0 
		231 0 
		238 0 
		246 0 
		255 0 
		265 0 
		274 0 
		275 0 
		276 0 
		285 0 
		286 0 
		295 0 
		296 0 
		303 0 
		304 0 
		309 0 
		313 0 
		316 0 
		318 0 
		319 0 
		330 0 
		331 0 
		338 0 
		346 0 
		355 0 
		365 0 
		367 0 
		368 0 
		376 0 
		378 0 
		386 0 
		388 0 
		396 0 
		398 0 
		404 0 
		405 0 
		410 0 
		414 0 
		417 0 
		419 0 
		424 0 
		425 0 
		428 0 
		429 0 
		430 0 
		431 0 
		433 0 
		434 0 
		435 0 
		437 0 
		438 0 
		440 0 
		441 0 
		443 0 
		444 0 
		446 0 
		447 0 
		449 0 
		450 0 
		452 0 
		453 0 
		458 0 
		459 0 
		460 0 
		461 0 
		464 0 
		465 0 
		468 0 
		469 0 
		470 0 
		472 0 
		473 0 
		474 0 
		476 0 
		477 0 
		479 0 
		480 0 
		482 0 
		483 0 
		485 0 
		486 0 
		488 0 
		1002 0 
		1003 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 3;
	setAttr ".dsm" 2;
createNode transform -n "span_07" -p "spans";
	rename -uid "00F66E01-46DE-0ACA-9A83-6D87C7600E5A";
	setAttr ".t" -type "double3" 0.79181930871904271 -0.40776067449620468 -1.2835887868032088 ;
	setAttr ".r" -type "double3" 84.516914552934622 43.263323893935699 0 ;
	setAttr ".rp" -type "double3" -9.9067733287811279 0.38884389400482178 -7.7077128887176514 ;
	setAttr ".sp" -type "double3" -9.9067733287811279 0.38884389400482178 -7.7077128887176514 ;
createNode mesh -n "span_Shape7" -p "span_07";
	rename -uid "2E89018B-43D7-FBD3-D468-FFAD6911F075";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" -0.62245726585388184 -0.57061147689819336 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 381 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.94262975 0.45642507 0.93559885
		 0.45541954 0.93766189 0.41644031 0.9433831 0.41754562 0.93840504 0.5095405 0.93380231
		 0.50910604 0.92982608 0.4548384 0.93185496 0.41579664 0.93962842 0.3755472 0.94842708
		 0.37665898 0.93740278 0.56301564 0.93245208 0.56091988 0.92803466 0.50868267 0.92404127
		 0.45441711 0.92602503 0.41534996 0.93376696 0.37517393 0.93149263 0.56170344 0.93661553
		 0.56425864 0.92723995 0.55497164 0.92225975 0.50842285 0.9182502 0.45413238 0.92018294
		 0.41505086 0.92788315 0.37489021 0.92644167 0.55603725 0.92176652 0.56227559 0.91650552
		 0.50823265 0.91245353 0.45396018 0.91433549 0.41487294 0.92199183 0.37469181 0.91598737
		 0.56346518 0.91074789 0.50810939 0.90664887 0.45388657 0.90848708 0.41480279 0.91610217
		 0.37457654 0.91598058 0.5648663 0.92190707 0.56374919 0.91023135 0.5622552 0.90500718
		 0.50804257 0.90083456 0.45391142 0.90264058 0.41483736 0.91022086 0.37454444 0.91006756
		 0.56372452 0.90463972 0.54297149 0.89925927 0.50808835 0.89501154 0.45403326 0.89679945
		 0.41498089 0.90435362 0.37459907 0.89859754 0.56240886 0.89349163 0.50808227 0.88917935
		 0.45428157 0.89276785 0.41505158 0.8985076 0.37475285 0.89276683 0.55857307 0.88527894
		 0.50828463 0.89085078 0.37488204 0.89271867 0.55996889 0.89797544 0.56367993 0.8874464
		 0.5602566 0.88801956 0.56137782 0.83815175 0.86859441 0.8310551 0.86867112 0.83189386
		 0.82831997 0.83771503 0.82825702 0.83874369 0.92330706 0.83410525 0.92335641 0.82841086
		 0.78720671 0.8372696 0.78711081 0.84397292 0.86853147 0.84353614 0.8281939 0.84456486
		 0.92324436 0.83970952 0.97644579 0.83471322 0.97831798 0.84309071 0.78704786 0.84979397
		 0.86846846 0.84935731 0.82813102 0.85038608 0.92318147 0.84506726 0.96992987 0.84891194
		 0.7869848 0.85561514 0.86840546 0.85517853 0.8280679 0.85620737 0.92311865 0.85097837
		 0.97814435 0.85473311 0.7869218 0.86143625 0.86834252 0.86099964 0.82800496 0.86202866
		 0.92305583 0.85681534 0.97956002 0.86055428 0.78685874 0.86725736 0.86827946 0.86682075
		 0.82794189 0.86784995 0.92299253 0.86262053 0.97801894 0.86637545 0.78679579 0.87307858
		 0.86821634 0.87264198 0.82787883 0.87367117 0.92292929 0.86823237 0.95806718 0.87219661
		 0.78673273 0.87889963 0.86815333 0.87846309 0.82781583 0.87949252 0.92286563 0.87427795
		 0.9778918 0.87801778 0.78666979 0.8847208 0.86809027 0.88248122 0.82777238 0.88775998
		 0.92277527 0.88005114 0.97348696 0.8856644 0.78658694 0.88527721 0.97580689 0.9432711
		 0.21164533 0.93744147 0.21197903 0.9364382 0.17181483 0.94406825 0.17145011 0.94606793
		 0.25204635 0.93856907 0.25231123 0.93161565 0.21239683 0.93058813 0.17225501 0.93507421
		 0.13054828 0.94088215 0.12995619 0.93271708 0.25260133 0.92576993 0.21270576 0.92472732
		 0.1726194 0.9292984 0.13120514 0.92683935 0.25281146 0.91991055 0.21293128 0.91885674
		 0.17288849 0.9234935 0.13165584 0.92095369 0.2529808 0.91404498 0.21308738 0.91297996
		 0.17305976 0.91767567 0.13196464 0.91506529 0.25311887 0.90817916 0.21318164 0.90710163
		 0.17313612 0.91185081 0.13215631 0.90917945 0.25323778 0.90231884 0.21321434 0.90122801
		 0.17312446 0.90602201 0.13223659 0.90330303 0.25335491 0.89646876 0.21317047 0.89536905
		 0.17304516 0.90019053 0.13219541 0.89744639 0.25350016 0.8906287 0.21299142 0.88954437
		 0.17296526 0.89435649 0.13199458 0.88980031 0.25346473 0.88853264 0.13152593 0.83548987
		 0.62268806 0.82966864 0.62275106 0.82742262 0.58182222 0.83504653 0.58173972 0.83593345
		 0.6636762 0.82844168 0.66375726 0.82876784 0.5395242 0.834589 0.53946114 0.84131092
		 0.62262499 0.84086776 0.58167666 0.84175462 0.66361308 0.84041011 0.53939813 0.84713215
		 0.62256199 0.84668887 0.58161366 0.84757584 0.66355014 0.84623134 0.53933501 0.85295326
		 0.62249899 0.85250998 0.58155066 0.85339695 0.66348708 0.85205233 0.53927201 0.85877442
		 0.62243599 0.8583312 0.5814876 0.85921806 0.66342413 0.8578735 0.53920895 0.86459565
		 0.62237293 0.86415231 0.58142465 0.86503929 0.66336113 0.86369467 0.53914595 0.87041676
		 0.62230998 0.86997354 0.58136159 0.87086052 0.66329813 0.86951566 0.53908294 0.87623793
		 0.62224692 0.87579465 0.58129859 0.87668163 0.66323513 0.87533689 0.53902 0.8820591
		 0.62218392 0.88161582 0.58123553 0.88431072 0.66315252 0.88115799 0.53895706 0.93811035
		 0.045996234 0.93232632 0.046512365 0.93147314 0.018121734 0.93699503 0.0067302808
		 0.92652845 0.046880454 0.92539281 0.0070791245 0.92075562 0.047255605 0.91985393
		 0.014336765 0.91497326 0.047508955 0.91399217 0.0075598508 0.90919673 0.047748625
		 0.90830922 0.0077567771 0.90340745 0.047840625 0.90249968 0.0039083287 0.89761025
		 0.047888041 0.89684224 0.0079228356 0.89179754 0.047817305 0.88956308 0.012867495
		 0.88599193 0.047416314 0.88534677 0.0078991205 0.83365709 0.45360339 0.82783592 0.45366836
		 0.82736355 0.41243881 0.83331549 0.42379704 0.83947861 0.45353845 0.83900511 0.41230553
		 0.84530014 0.45347351 0.84490949 0.41932079 0.8511219 0.45340863 0.85065156 0.41217282
		 0.85694367 0.45334381 0.85647207 0.41210669 0.86276561 0.45327902 0.86228985 0.40805966
		 0.86858749 0.45321959 0.86819154 0.41198322 0.8744092 0.45316011 0.87574667 0.41691959
		 0.88023049 0.45310059 0.87983316 0.4118709 0.94019675 0.33403462 0.94532412 0.33420834
		 0.93431932 0.33393309 0.93817914 0.29282895 0.94229662 0.29290989 0.92843634 0.33392942
		 0.93365473 0.29279014 0.92254472 0.33391449 0.92777711 0.29291821 0.9166531 0.33392286
		 0.92189616 0.29303455 0.91076767 0.33397326 0.91601378 0.29314843 0.90489244 0.33407319
		 0.91013449 0.29327694 0.89902765 0.33421421 0.90426397 0.2934432 0.89318252 0.33437663
		 0.89840758 0.29367638 0.89477229 0.29377937 0.83175308 0.74592459;
	setAttr ".uvst[0].uvsp[250:380]" 0.83682317 0.74586964 0.83362061 0.70467341
		 0.83771533 0.70462912 0.84264433 0.74580675 0.84219813 0.70458066 0.8484655 0.74574363
		 0.84801924 0.7045176 0.85428661 0.74568075 0.85384041 0.70445454 0.86010784 0.74561763
		 0.85966158 0.70439154 0.86592901 0.74555463 0.86548275 0.70432848 0.87175012 0.74549162
		 0.87130392 0.70426553 0.87757134 0.74542862 0.87712502 0.70420259 0.88339251 0.74536562
		 0.88073933 0.70416343 0.93367356 0.088625699 0.93724298 0.088344753 0.92786801 0.089102075
		 0.92206848 0.089502558 0.91626966 0.08980912 0.91046262 0.090012431 0.90465236 0.090114772
		 0.89883602 0.090124875 0.89301515 0.090050161 0.88916099 0.089928836 0.8305499 0.49661842
		 0.83412516 0.49657947 0.83994621 0.49651617 0.84576726 0.49645278 0.85158825 0.49638951
		 0.85740918 0.49632633 0.86323005 0.49626333 0.86905098 0.49620056 0.87487209 0.49613795
		 0.87872338 0.49609652 0.94726646 0.03850323 0.94582742 0.038534522 0.94570088 0.032714367
		 0.94713992 0.032683194 0.94434577 0.047195137 0.9429068 0.047226548 0.94671428 0.025699556
		 0.94815332 0.025668263 0.94764143 0.055751979 0.9462024 0.055783212 0.94539696 0.018735409
		 0.94683599 0.018703997 0.94290036 0.010061562 0.94433945 0.010030329 0.94507533 0.0039409399
		 0.94651437 0.0039097071 0.81048667 0.84436882 0.8090952 0.84400058 0.82184052 0.79064751
		 0.82325631 0.79090691 0.82189411 0.73661608 0.82325107 0.73613584 0.793459 0.70975506
		 0.79393452 0.70839661 0.75298226 0.70623797 0.75283051 0.70480675 0.71310049 0.71594888
		 0.71258873 0.7146036 0.67730433 0.73564804 0.67641425 0.73451692 0.65303248 0.76796156
		 0.6516661 0.76750898 0.6526528 0.80814838 0.65126538 0.80853164 0.67381549 0.84219646
		 0.67292833 0.84332991 0.71414483 0.8501184 0.71444654 0.85152578 0.75088608 0.82954514
		 0.7519179 0.83054876 0.77153468 0.79264581 0.77293313 0.79298723 0.75968319 0.75461453
		 0.76070815 0.75360405 0.11715299 0.66981727 0.11673236 0.66844058 0.1673364 0.65238261
		 0.16764957 0.65378767 0.22206736 0.65030485 0.22163916 0.65167916 0.25092298 0.67855191
		 0.24958372 0.67907935 0.25611162 0.71953279 0.25467551 0.719437 0.24790287 0.75999212
		 0.24653888 0.75953221 0.229388 0.79689533 0.22822368 0.796049 0.1974104 0.82281959
		 0.19690758 0.82147086 0.15642524 0.82474089 0.15675676 0.82334018 0.12088761 0.80439317
		 0.12198809 0.80346537 0.11121148 0.7632345 0.11262876 0.76348591 0.13083905 0.72505432
		 0.1318785 0.72604996 0.16762337 0.70273304 0.16801372 0.70411849 0.20741242 0.71356368
		 0.20643866 0.71462351 0.70902413 0.017322779 0.70771086 0.016733587 0.70771253 0.0039094687
		 0.7090258 0.004498601 0.70297754 0.024652243 0.70153821 0.024635613 0.70153713 0.0039096475
		 0.70297647 0.0039263368 0.11106402 0.0039096475 0.11108088 0.0053489208 0.090355277
		 0.0053508282 0.090338409 0.0039116144 0.55157393 0.014044106 0.55013466 0.014030039
		 0.55013388 0.0039097071 0.55157328 0.0039237738 0.012138844 0.0052230358 0.01154989
		 0.0039096475 0.024373829 0.0039101243 0.024962783 0.0052235723;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 280 ".vt";
	setAttr ".vt[0:165]"  -9.49824047 3.64021492 -6.75552177 -9.52908134 3.59474158 -6.75552177
		 -9.50756645 3.49254131 -8.67217445 -9.47672558 3.53801465 -8.67217445 -7.79077148 2.42080855 -6.75286674
		 -7.82503796 2.37785792 -6.75286674 -7.82503796 2.37785792 -8.80110359 -7.79077148 2.42080855 -8.80110359
		 -6.42003107 0.84488434 -6.65902185 -6.47114706 0.8247323 -6.65902185 -6.47114706 0.8247323 -8.70771313
		 -6.42003107 0.84488434 -8.70771313 -6.57019567 -0.6876561 -6.70771265 -6.61790562 -0.66040343 -6.70771265
		 -6.61790562 -0.66040343 -8.63888264 -6.57019567 -0.6876561 -8.63888264 -7.66280365 -1.81613255 -6.59175396
		 -7.69420099 -1.77104163 -6.59175396 -7.69420099 -1.77104163 -8.77740192 -7.66280365 -1.81613255 -8.77740192
		 -9.063235283 -2.53547049 -6.73638535 -9.082039833 -2.48384356 -6.73638535 -9.082039833 -2.48384356 -8.70771313
		 -9.063235283 -2.53547049 -8.70771313 -10.6026783 -2.86252713 -6.82471275 -10.60518074 -2.80763912 -6.82471275
		 -10.60518074 -2.80763912 -8.62346554 -10.6026783 -2.86252713 -8.62346554 -12.13000011 -2.52614236 -6.64393568
		 -12.10162067 -2.47909379 -6.64393568 -12.10162067 -2.47909379 -8.77673244 -12.13000011 -2.52614236 -8.77673244
		 -13.15904331 -1.34740925 -6.70771265 -13.10928822 -1.32409751 -6.70771265 -13.10928822 -1.32409751 -8.70771313
		 -13.15904331 -1.34740925 -8.70771313 -13.39351559 0.19810393 -6.6388917 -13.33966255 0.18720354 -6.6388917
		 -13.33966255 0.18720354 -8.70771313 -13.39351559 0.19810393 -8.70771313 -12.39210606 1.46384847 -6.70771265
		 -12.36600494 1.41549921 -6.70771265 -12.36600494 1.41549921 -8.70771313 -12.39210606 1.46384847 -8.70771313
		 -10.78622818 1.78166246 -6.79344749 -10.7913847 1.72695994 -6.79344749 -10.7913847 1.72695994 -8.63251877
		 -10.78622818 1.78166246 -8.63251877 -9.24822617 1.21019387 -6.70771265 -9.28045464 1.16569304 -6.70771265
		 -9.28045464 1.16569304 -8.70771313 -9.24822617 1.21019387 -8.70771313 -8.63005733 -0.23747493 -6.70771265
		 -8.6848526 -0.23342372 -6.70771265 -8.6848526 -0.23342372 -8.70771313 -8.63005733 -0.23747493 -8.70771313
		 -7.79077148 2.42080855 -8.041046143 -8.87502098 3.20643806 -8.041046143 -8.90586185 3.16096449 -8.041046143
		 -7.82503796 2.37785792 -8.041046143 -6.47114706 0.8247323 -8.041046143 -6.61790562 -0.66040343 -8.041046143
		 -7.69420099 -1.77104163 -8.041046143 -9.082039833 -2.48384356 -8.041046143 -10.60518074 -2.80763912 -8.041046143
		 -12.10161972 -2.47909379 -8.041046143 -13.10928822 -1.32409751 -8.041046143 -13.33966255 0.18720354 -8.041046143
		 -12.36600494 1.41549921 -8.041046143 -10.7913847 1.72695994 -8.041046143 -9.28045464 1.16569304 -8.041046143
		 -8.65137482 -0.38407698 -8.041046143 -8.59657955 -0.38812819 -8.041046143 -9.24822617 1.21019387 -8.041046143
		 -10.78622818 1.78166246 -8.041046143 -12.3921051 1.46384847 -8.041046143 -13.39351463 0.19810393 -8.041046143
		 -13.15904236 -1.34740925 -8.041046143 -12.13000011 -2.52614236 -8.041046143 -10.6026783 -2.86252713 -8.041046143
		 -9.063235283 -2.53547049 -8.041046143 -7.66280365 -1.81613255 -8.041046143 -6.57019567 -0.6876561 -8.041046143
		 -6.42003059 0.84488434 -8.041046143 -7.79077148 2.42080855 -7.37437916 -9.49824047 3.64021492 -7.37437916
		 -9.52908134 3.59474134 -7.37437916 -7.82503796 2.37785792 -7.37437916 -6.47114706 0.8247323 -7.37437916
		 -6.61790562 -0.66040343 -7.37437916 -7.69420099 -1.77104163 -7.37437916 -9.082039833 -2.48384356 -7.37437916
		 -10.60518074 -2.80763912 -7.37437916 -12.10161972 -2.47909379 -7.37437916 -13.10928822 -1.32409751 -7.37437916
		 -13.33966255 0.18720354 -7.37437916 -12.36600494 1.41549921 -7.37437916 -10.7913847 1.72695994 -7.37437916
		 -9.28045464 1.16569304 -7.37437916 -8.78528595 0.017665252 -7.37437916 -8.73049068 0.013614044 -7.37437916
		 -9.24822617 1.21019387 -7.37437916 -10.78622818 1.78166246 -7.37437916 -12.3921051 1.46384847 -7.37437916
		 -13.39351463 0.19810393 -7.37437916 -13.15904236 -1.34740925 -7.37437916 -12.13000011 -2.52614236 -7.37437916
		 -10.6026783 -2.86252713 -7.37437916 -9.063235283 -2.53547049 -7.37437916 -7.66280365 -1.81613255 -7.37437916
		 -6.57019567 -0.6876561 -7.37437916 -6.42003059 0.84488434 -7.37437916 -7.79077148 2.42080855 -8.4854908
		 -9.36376572 3.54339314 -8.4854908 -9.39460659 3.49791956 -8.4854908 -7.82503796 2.37785792 -8.4854908
		 -6.47114706 0.8247323 -8.4854908 -6.61790562 -0.66040343 -8.4854908 -7.69420099 -1.77104163 -8.4854908
		 -9.082039833 -2.48384356 -8.4854908 -10.60518074 -2.80763912 -8.4854908 -12.10161972 -2.47909379 -8.4854908
		 -13.10928822 -1.32409751 -8.4854908 -13.33966255 0.18720354 -8.4854908 -12.36600494 1.41549921 -8.4854908
		 -10.7913847 1.72695994 -8.4854908 -9.28045464 1.16569304 -8.4854908 -8.76017761 -0.057661429 -8.54986954
		 -8.70538235 -0.061712638 -8.54986954 -9.24822617 1.21019387 -8.4854908 -10.78622818 1.78166246 -8.4854908
		 -12.3921051 1.46384847 -8.4854908 -13.39351463 0.19810393 -8.4854908 -13.15904236 -1.34740925 -8.4854908
		 -12.13000011 -2.52614236 -8.4854908 -10.6026783 -2.86252713 -8.4854908 -9.063235283 -2.53547049 -8.4854908
		 -7.66280365 -1.81613255 -8.4854908 -6.57019567 -0.6876561 -8.4854908 -6.42003059 0.84488434 -8.4854908
		 -7.79077148 2.42080855 -8.26326847 -9.49824047 3.64021492 -8.26326847 -9.52908134 3.59474134 -8.26326847
		 -7.82503796 2.37785792 -8.26326847 -6.47114706 0.8247323 -8.26326847 -6.61790562 -0.66040343 -8.26326847
		 -7.69420099 -1.77104163 -8.26326847 -9.082039833 -2.48384356 -8.26326847 -10.60518074 -2.80763912 -8.26326847
		 -12.10161972 -2.47909379 -8.26326847 -13.10928822 -1.32409751 -8.26326847 -13.33966255 0.18720354 -8.26326847
		 -12.36600494 1.41549921 -8.26326847 -10.7913847 1.72695994 -8.26326847 -9.28045464 1.16569304 -8.26326847
		 -8.6848526 -0.23342372 -8.26326847 -8.63005733 -0.23747493 -8.26326847 -9.24822617 1.21019387 -8.26326847
		 -10.78622818 1.78166246 -8.26326847 -12.3921051 1.46384847 -8.26326847 -13.39351463 0.19810393 -8.26326847
		 -13.15904236 -1.34740925 -8.26326847 -12.13000011 -2.52614236 -8.26326847 -10.6026783 -2.86252713 -8.26326847
		 -9.063235283 -2.53547049 -8.26326847 -7.66280365 -1.81613255 -8.26326847;
	setAttr ".vt[166:279]" -6.57019567 -0.6876561 -8.26326847 -6.42003059 0.84488434 -8.26326847
		 -7.79077148 2.42080855 -7.81882381 -9.49824047 3.64021492 -7.81882381 -9.52908134 3.59474134 -7.81882381
		 -7.82503796 2.37785792 -7.81882381 -6.47114706 0.8247323 -7.81882381 -6.61790562 -0.66040343 -7.81882381
		 -7.69420099 -1.77104163 -7.81882381 -9.082039833 -2.48384356 -7.81882381 -10.60518074 -2.80763912 -7.81882381
		 -12.10161972 -2.47909379 -7.81882381 -13.10928822 -1.32409751 -7.81882381 -13.33966255 0.18720354 -7.81882381
		 -12.36600494 1.41549921 -7.81882381 -10.7913847 1.72695994 -7.81882381 -9.28045464 1.16569304 -7.81882381
		 -8.6848526 -0.23342372 -7.81882381 -8.63005733 -0.23747493 -7.81882381 -9.24822617 1.21019387 -7.81882381
		 -10.78622818 1.78166246 -7.81882381 -12.3921051 1.46384847 -7.81882381 -13.39351463 0.19810393 -7.81882381
		 -13.15904236 -1.34740925 -7.81882381 -12.13000011 -2.52614236 -7.81882381 -10.6026783 -2.86252713 -7.81882381
		 -9.063235283 -2.53547049 -7.81882381 -7.66280365 -1.81613255 -7.81882381 -6.57019567 -0.6876561 -7.81882381
		 -6.42003059 0.84488434 -7.81882381 -7.79077148 2.42080855 -7.59660149 -9.54456711 3.67245674 -7.59660149
		 -9.57540798 3.62698317 -7.59660149 -7.82503796 2.37785792 -7.59660149 -6.47114706 0.8247323 -7.59660149
		 -6.61790562 -0.66040343 -7.59660149 -7.69420099 -1.77104163 -7.59660149 -9.082039833 -2.48384356 -7.59660149
		 -10.60518074 -2.80763912 -7.59660149 -12.10161972 -2.47909379 -7.59660149 -13.10928822 -1.32409751 -7.59660149
		 -13.33966255 0.18720354 -7.59660149 -12.36600494 1.41549921 -7.59660149 -10.7913847 1.72695994 -7.59660149
		 -9.28045464 1.16569304 -7.59660149 -8.6848526 -0.23342372 -7.59660149 -8.63005733 -0.23747493 -7.59660149
		 -9.24822617 1.21019387 -7.59660149 -10.78622818 1.78166246 -7.59660149 -12.3921051 1.46384847 -7.59660149
		 -13.39351463 0.19810393 -7.59660149 -13.15904236 -1.34740925 -7.59660149 -12.13000011 -2.52614236 -7.59660149
		 -10.6026783 -2.86252713 -7.59660149 -9.063235283 -2.53547049 -7.59660149 -7.66280365 -1.81613255 -7.59660149
		 -6.57019567 -0.6876561 -7.59660149 -6.42003059 0.84488434 -7.59660149 -7.79077148 2.42080855 -7.15215683
		 -9.23886871 3.45969367 -7.15215683 -9.26970959 3.41422009 -7.15215683 -7.82503796 2.37785792 -7.15215683
		 -6.47114706 0.8247323 -7.15215683 -6.61790562 -0.66040343 -7.15215683 -7.69420099 -1.77104163 -7.15215683
		 -9.082039833 -2.48384356 -7.15215683 -10.60518074 -2.80763912 -7.15215683 -12.10161972 -2.47909379 -7.15215683
		 -13.10928822 -1.32409751 -7.15215683 -13.33966255 0.18720354 -7.15215683 -12.36600494 1.41549921 -7.15215683
		 -10.7913847 1.72695994 -7.15215683 -9.28045464 1.16569304 -7.15215683 -8.6848526 -0.23342372 -7.15215683
		 -8.63005733 -0.23747493 -7.15215683 -9.24822617 1.21019387 -7.15215683 -10.78622818 1.78166246 -7.15215683
		 -12.3921051 1.46384847 -7.15215683 -13.39351463 0.19810393 -7.15215683 -13.15904236 -1.34740925 -7.15215683
		 -12.13000011 -2.52614236 -7.15215683 -10.6026783 -2.86252713 -7.15215683 -9.063235283 -2.53547049 -7.15215683
		 -7.66280365 -1.81613255 -7.15215683 -6.57019567 -0.6876561 -7.15215683 -6.42003059 0.84488434 -7.15215683
		 -7.79077148 2.42080855 -6.9299345 -9.42870235 3.6178391 -6.94564247 -9.45954323 3.57236552 -6.94564247
		 -7.82503796 2.37785792 -6.9299345 -6.47114706 0.8247323 -6.9299345 -6.61790562 -0.66040343 -6.9299345
		 -7.69420099 -1.77104163 -6.9299345 -9.082039833 -2.48384356 -6.9299345 -10.60518074 -2.80763912 -6.98102665
		 -12.10161972 -2.47909379 -6.9299345 -13.10928822 -1.32409751 -6.9299345 -13.33966255 0.18720354 -6.9299345
		 -12.36600494 1.41549921 -6.9299345 -10.7913847 1.72695994 -6.9299345 -9.28045464 1.16569304 -6.9299345
		 -8.85606194 0.16775839 -6.9299345 -8.80126667 0.16370718 -6.9299345 -9.24822617 1.21019387 -6.9299345
		 -10.78622818 1.78166246 -6.9299345 -12.3921051 1.46384847 -6.9299345 -13.39351463 0.19810393 -6.9299345
		 -13.15904236 -1.34740925 -6.9299345 -12.13000011 -2.52614236 -6.9299345 -10.6026783 -2.86252713 -6.98102665
		 -9.063235283 -2.53547049 -6.9299345 -7.66280365 -1.81613255 -6.9299345 -6.57019567 -0.6876561 -6.9299345
		 -6.42003059 0.84488434 -6.9299345;
	setAttr -s 556 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 5 0 5 4 1 4 0 0 1 254 0 2 6 0 6 115 1 2 3 0
		 3 7 0 7 6 1 3 113 0 4 252 1 5 9 0 9 8 1 8 4 0 6 10 0 10 116 1 7 11 0 11 10 1 8 279 1
		 9 13 0 13 12 1 12 8 0 10 14 0 14 117 1 11 15 0 15 14 1 12 278 1 13 17 0 17 16 1 16 12 0
		 14 18 0 18 118 1 15 19 0 19 18 1 16 277 1 17 21 0 21 20 1 20 16 0 18 22 0 22 119 1
		 19 23 0 23 22 1 20 276 1 21 25 0 25 24 1 24 20 0 22 26 0 26 120 1 23 27 0 27 26 1
		 24 275 1 25 29 0 29 28 1 28 24 0 26 30 0 30 121 1 27 31 0 31 30 1 28 274 1 29 33 0
		 33 32 1 32 28 0 30 34 0 34 122 1 31 35 0 35 34 1 32 273 1 33 37 0 37 36 1 36 32 0
		 34 38 0 38 123 1 35 39 0 39 38 1 36 272 1 37 41 0 41 40 1 40 36 0 38 42 0 42 124 1
		 39 43 0 43 42 1 40 271 1 41 45 0 45 44 1 44 40 0 42 46 0 46 125 1 43 47 0 47 46 1
		 44 270 1 45 49 0 49 48 1 48 44 0 46 50 0 50 126 1 47 51 0 51 50 1 48 269 1 49 53 0
		 53 52 0 52 48 0 50 54 0 54 127 0 51 55 0 55 54 0 52 268 0 56 140 1 57 169 0 56 57 1
		 58 142 0 57 58 1 59 171 1 58 59 1 60 172 1 59 60 1 61 173 1 60 61 1 62 174 1 61 62 1
		 63 175 1 62 63 1 64 176 1 63 64 1 65 177 1 64 65 1 66 178 1 65 66 1 67 179 1 66 67 1
		 68 180 1 67 68 1 69 181 1 68 69 1 70 182 1 69 70 1 71 183 0 70 71 1 72 156 0 71 72 1
		 73 157 1 72 73 1 74 158 1 73 74 1 75 159 1 74 75 1 76 160 1 75 76 1 77 161 1 76 77 1
		 78 162 1 77 78 1 79 163 1 78 79 1 80 164 1 79 80 1 81 165 1 80 81 1 82 166 1 81 82 1
		 83 167 1 82 83 1 83 56 1 84 196 1 85 225 0;
	setAttr ".ed[166:331]" 84 85 1 86 198 0 85 86 1 87 227 1 86 87 1 88 228 1 87 88 1
		 89 229 1 88 89 1 90 230 1 89 90 1 91 231 1 90 91 1 92 232 1 91 92 1 93 233 1 92 93 1
		 94 234 1 93 94 1 95 235 1 94 95 1 96 236 1 95 96 1 97 237 1 96 97 1 98 238 1 97 98 1
		 99 239 0 98 99 1 100 212 0 99 100 1 101 213 1 100 101 1 102 214 1 101 102 1 103 215 1
		 102 103 1 104 216 1 103 104 1 105 217 1 104 105 1 106 218 1 105 106 1 107 219 1 106 107 1
		 108 220 1 107 108 1 109 221 1 108 109 1 110 222 1 109 110 1 111 223 1 110 111 1 111 84 1
		 112 7 1 113 141 0 112 113 1 114 2 0 113 114 1 115 143 1 114 115 1 116 144 1 115 116 1
		 117 145 1 116 117 1 118 146 1 117 118 1 119 147 1 118 119 1 120 148 1 119 120 1 121 149 1
		 120 121 1 122 150 1 121 122 1 123 151 1 122 123 1 124 152 1 123 124 1 125 153 1 124 125 1
		 126 154 1 125 126 1 127 155 0 126 127 1 128 55 0 127 128 1 129 51 1 128 129 1 130 47 1
		 129 130 1 131 43 1 130 131 1 132 39 1 131 132 1 133 35 1 132 133 1 134 31 1 133 134 1
		 135 27 1 134 135 1 136 23 1 135 136 1 137 19 1 136 137 1 138 15 1 137 138 1 139 11 1
		 138 139 1 139 112 1 140 112 1 141 57 0 140 141 1 142 114 0 141 142 1 143 59 1 142 143 1
		 144 60 1 143 144 1 145 61 1 144 145 1 146 62 1 145 146 1 147 63 1 146 147 1 148 64 1
		 147 148 1 149 65 1 148 149 1 150 66 1 149 150 1 151 67 1 150 151 1 152 68 1 151 152 1
		 153 69 1 152 153 1 154 70 1 153 154 1 155 71 0 154 155 1 156 128 0 155 156 1 157 129 1
		 156 157 1 158 130 1 157 158 1 159 131 1 158 159 1 160 132 1 159 160 1 161 133 1 160 161 1
		 162 134 1 161 162 1 163 135 1 162 163 1 164 136 1 163 164 1 165 137 1 164 165 1 166 138 1
		 165 166 1 167 139 1 166 167 1 167 140 1;
	setAttr ".ed[332:497]" 168 56 1 169 197 0 168 169 1 170 58 0 169 170 1 171 199 1
		 170 171 1 172 200 1 171 172 1 173 201 1 172 173 1 174 202 1 173 174 1 175 203 1 174 175 1
		 176 204 1 175 176 1 177 205 1 176 177 1 178 206 1 177 178 1 179 207 1 178 179 1 180 208 1
		 179 180 1 181 209 1 180 181 1 182 210 1 181 182 1 183 211 0 182 183 1 184 72 0 183 184 1
		 185 73 1 184 185 1 186 74 1 185 186 1 187 75 1 186 187 1 188 76 1 187 188 1 189 77 1
		 188 189 1 190 78 1 189 190 1 191 79 1 190 191 1 192 80 1 191 192 1 193 81 1 192 193 1
		 194 82 1 193 194 1 195 83 1 194 195 1 195 168 1 196 168 1 197 85 0 196 197 1 198 170 0
		 197 198 1 199 87 1 198 199 1 200 88 1 199 200 1 201 89 1 200 201 1 202 90 1 201 202 1
		 203 91 1 202 203 1 204 92 1 203 204 1 205 93 1 204 205 1 206 94 1 205 206 1 207 95 1
		 206 207 1 208 96 1 207 208 1 209 97 1 208 209 1 210 98 1 209 210 1 211 99 0 210 211 1
		 212 184 0 211 212 1 213 185 1 212 213 1 214 186 1 213 214 1 215 187 1 214 215 1 216 188 1
		 215 216 1 217 189 1 216 217 1 218 190 1 217 218 1 219 191 1 218 219 1 220 192 1 219 220 1
		 221 193 1 220 221 1 222 194 1 221 222 1 223 195 1 222 223 1 223 196 1 224 84 1 225 253 0
		 224 225 1 226 86 0 225 226 1 227 255 1 226 227 1 228 256 1 227 228 1 229 257 1 228 229 1
		 230 258 1 229 230 1 231 259 1 230 231 1 232 260 1 231 232 1 233 261 1 232 233 1 234 262 1
		 233 234 1 235 263 1 234 235 1 236 264 1 235 236 1 237 265 1 236 237 1 238 266 1 237 238 1
		 239 267 0 238 239 1 240 100 0 239 240 1 241 101 1 240 241 1 242 102 1 241 242 1 243 103 1
		 242 243 1 244 104 1 243 244 1 245 105 1 244 245 1 246 106 1 245 246 1 247 107 1 246 247 1
		 248 108 1 247 248 1 249 109 1 248 249 1 250 110 1 249 250 1 251 111 1;
	setAttr ".ed[498:555]" 250 251 1 251 224 1 252 224 1 253 0 0 252 253 1 254 226 0
		 253 254 1 255 5 1 254 255 1 256 9 1 255 256 1 257 13 1 256 257 1 258 17 1 257 258 1
		 259 21 1 258 259 1 260 25 1 259 260 1 261 29 1 260 261 1 262 33 1 261 262 1 263 37 1
		 262 263 1 264 41 1 263 264 1 265 45 1 264 265 1 266 49 1 265 266 1 267 53 0 266 267 1
		 268 240 0 267 268 1 269 241 1 268 269 1 270 242 1 269 270 1 271 243 1 270 271 1 272 244 1
		 271 272 1 273 245 1 272 273 1 274 246 1 273 274 1 275 247 1 274 275 1 276 248 1 275 276 1
		 277 249 1 276 277 1 278 250 1 277 278 1 279 251 1 278 279 1 279 252 1;
	setAttr -s 278 -ch 1112 ".fc[0:277]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 305 306 307 308
		f 4 4 506 505 -2
		mu 0 4 10 11 5 4
		f 4 7 8 9 -6
		mu 0 4 333 334 335 336
		f 4 501 -4 11 502
		mu 0 4 70 71 64 63
		f 4 -3 12 13 14
		mu 0 4 308 307 309 310
		f 4 -506 508 507 -13
		mu 0 4 4 5 1 0
		f 4 -10 17 18 -16
		mu 0 4 336 335 337 338
		f 4 555 -12 -15 19
		mu 0 4 59 63 64 60
		f 4 -14 20 21 22
		mu 0 4 310 309 311 312
		f 4 -508 510 509 -21
		mu 0 4 0 1 2 3
		f 4 -19 25 26 -24
		mu 0 4 338 337 339 340
		f 4 -20 -23 27 554
		mu 0 4 59 60 61 62
		f 4 -22 28 29 30
		mu 0 4 312 311 313 314
		f 4 -510 512 511 -29
		mu 0 4 3 2 8 9
		f 4 -27 33 34 -32
		mu 0 4 340 339 341 342
		f 4 -28 -31 35 552
		mu 0 4 62 61 65 66
		f 4 -30 36 37 38
		mu 0 4 314 313 315 316
		f 4 -512 514 513 -37
		mu 0 4 9 8 229 230
		f 4 -35 41 42 -40
		mu 0 4 342 341 343 344
		f 4 -36 -39 43 550
		mu 0 4 66 65 249 250
		f 4 -38 44 45 46
		mu 0 4 316 315 317 318
		f 4 -514 516 515 -45
		mu 0 4 230 229 232 233
		f 4 -43 49 50 -48
		mu 0 4 344 343 345 346
		f 4 -44 -47 51 548
		mu 0 4 250 249 251 252
		f 4 -46 52 53 54
		mu 0 4 318 317 319 320
		f 4 -516 518 517 -53
		mu 0 4 233 232 114 113
		f 4 -51 57 58 -56
		mu 0 4 346 345 347 348
		f 4 -52 -55 59 546
		mu 0 4 252 251 154 153
		f 4 -54 60 61 62
		mu 0 4 320 319 321 322
		f 4 -518 520 519 -61
		mu 0 4 113 114 110 109
		f 4 -59 65 66 -64
		mu 0 4 348 347 349 350
		f 4 -60 -63 67 544
		mu 0 4 153 154 150 149
		f 4 -62 68 69 70
		mu 0 4 322 321 323 324
		f 4 -520 522 521 -69
		mu 0 4 109 110 111 112
		f 4 -67 73 74 -72
		mu 0 4 350 349 351 352
		f 4 -68 -71 75 542
		mu 0 4 149 150 151 152
		f 4 -70 76 77 78
		mu 0 4 324 323 325 326
		f 4 -522 524 523 -77
		mu 0 4 112 111 117 118
		f 4 -75 81 82 -80
		mu 0 4 352 351 353 354
		f 4 -76 -79 83 540
		mu 0 4 152 151 155 156
		f 4 -78 84 85 86
		mu 0 4 326 325 327 328
		f 4 -524 526 525 -85
		mu 0 4 118 117 269 270
		f 4 -83 89 90 -88
		mu 0 4 354 353 355 356
		f 4 -84 -87 91 538
		mu 0 4 156 155 279 280
		f 4 -86 92 93 94
		mu 0 4 328 327 329 330
		f 4 -526 528 527 -93
		mu 0 4 270 269 190 189
		f 4 -91 97 98 -96
		mu 0 4 356 355 357 358
		f 4 -92 -95 99 536
		mu 0 4 280 279 210 209
		f 4 -94 100 101 102
		mu 0 4 330 329 331 332
		f 4 -528 530 529 -101
		mu 0 4 189 190 191 192
		f 4 -99 105 106 -104
		mu 0 4 358 357 359 360
		f 4 -100 -103 107 534
		mu 0 4 209 210 211 212
		f 4 504 -5 -1 -502
		mu 0 4 16 11 10 17
		f 4 -102 -530 532 -108
		mu 0 4 361 362 363 364
		f 4 277 -111 108 278
		mu 0 4 101 96 90 95
		f 4 280 -112 -113 -278
		mu 0 4 365 366 367 368
		f 4 -115 111 282 281
		mu 0 4 37 42 47 43
		f 4 -117 -282 284 283
		mu 0 4 31 37 43 38
		f 4 -119 -284 286 285
		mu 0 4 32 31 38 39
		f 4 -121 -286 288 287
		mu 0 4 40 32 39 46
		f 4 -123 -288 290 289
		mu 0 4 240 40 46 242
		f 4 -125 -290 292 291
		mu 0 4 243 240 242 245
		f 4 -127 -292 294 293
		mu 0 4 135 243 245 139
		f 4 -129 -294 296 295
		mu 0 4 132 135 139 136
		f 4 -131 -296 298 297
		mu 0 4 133 132 136 137
		f 4 -133 -298 300 299
		mu 0 4 138 133 137 142
		f 4 -135 -300 302 301
		mu 0 4 275 138 142 276
		f 4 -137 -302 304 303
		mu 0 4 201 275 276 203
		f 4 -139 -304 306 305
		mu 0 4 202 201 203 204
		f 4 -141 -306 308 -140
		mu 0 4 296 295 299 300
		f 4 -142 -143 139 310
		mu 0 4 223 221 222 224
		f 4 -144 -145 141 312
		mu 0 4 286 285 221 223
		f 4 -146 -147 143 314
		mu 0 4 180 176 285 286
		f 4 -148 -149 145 316
		mu 0 4 178 174 176 180
		f 4 -150 -151 147 318
		mu 0 4 177 173 174 178
		f 4 -152 -153 149 320
		mu 0 4 179 175 173 177
		f 4 -154 -155 151 322
		mu 0 4 264 262 175 179
		f 4 -156 -157 153 324
		mu 0 4 263 261 262 264
		f 4 -158 -159 155 326
		mu 0 4 97 92 261 263
		f 4 -160 -161 157 328
		mu 0 4 94 89 92 97
		f 4 -162 -163 159 330
		mu 0 4 93 88 89 94
		f 4 331 -109 -164 161
		mu 0 4 93 95 90 88
		f 4 389 -167 164 390
		mu 0 4 86 81 75 80
		f 4 392 -168 -169 -390
		mu 0 4 34 29 24 35
		f 4 -171 167 394 393
		mu 0 4 19 24 29 25
		f 4 -173 -394 396 395
		mu 0 4 13 19 25 20
		f 4 -175 -396 398 397
		mu 0 4 14 13 20 21
		f 4 -177 -398 400 399
		mu 0 4 22 14 21 28
		f 4 -179 -400 402 401
		mu 0 4 234 22 28 236
		f 4 -181 -402 404 403
		mu 0 4 237 234 236 239
		f 4 -183 -404 406 405
		mu 0 4 123 237 239 127
		f 4 -185 -406 408 407
		mu 0 4 120 123 127 124
		f 4 -187 -408 410 409
		mu 0 4 121 120 124 125
		f 4 -189 -410 412 411
		mu 0 4 126 121 125 130
		f 4 -191 -412 414 413
		mu 0 4 272 126 130 273
		f 4 -193 -414 416 415
		mu 0 4 195 272 273 197
		f 4 -195 -416 418 417
		mu 0 4 196 195 197 198
		f 4 -197 -418 420 -196
		mu 0 4 293 294 290 289
		f 4 -198 -199 195 422
		mu 0 4 217 215 216 218
		f 4 -200 -201 197 424
		mu 0 4 283 282 215 217
		f 4 -202 -203 199 426
		mu 0 4 168 164 282 283
		f 4 -204 -205 201 428
		mu 0 4 166 162 164 168
		f 4 -206 -207 203 430
		mu 0 4 165 161 162 166
		f 4 -208 -209 205 432
		mu 0 4 167 163 161 165
		f 4 -210 -211 207 434
		mu 0 4 258 256 163 167
		f 4 -212 -213 209 436
		mu 0 4 257 255 256 258
		f 4 -214 -215 211 438
		mu 0 4 82 77 255 257
		f 4 -216 -217 213 440
		mu 0 4 79 74 77 82
		f 4 -218 -219 215 442
		mu 0 4 78 73 74 79
		f 4 443 -165 -220 217
		mu 0 4 78 80 75 73
		f 4 10 -223 220 -9
		mu 0 4 108 106 100 105
		f 4 -8 -224 -225 -11
		mu 0 4 58 57 52 55
		f 4 -227 223 5 6
		mu 0 4 48 52 57 53
		f 4 -229 -7 15 16
		mu 0 4 44 48 53 49
		f 4 -231 -17 23 24
		mu 0 4 45 44 49 50
		f 4 -233 -25 31 32
		mu 0 4 51 45 50 54
		f 4 -235 -33 39 40
		mu 0 4 244 51 54 246
		f 4 -237 -41 47 48
		mu 0 4 247 244 246 248
		f 4 -239 -49 55 56
		mu 0 4 143 247 248 147
		f 4 -241 -57 63 64
		mu 0 4 140 143 147 144
		f 4 -243 -65 71 72
		mu 0 4 141 140 144 145
		f 4 -245 -73 79 80
		mu 0 4 146 141 145 148
		f 4 -247 -81 87 88
		mu 0 4 277 146 148 278
		f 4 -249 -89 95 96
		mu 0 4 205 277 278 207
		f 4 -251 -97 103 104
		mu 0 4 206 205 207 208
		f 4 -253 -105 -107 -252
		mu 0 4 302 301 303 304
		f 4 -254 -255 251 -106
		mu 0 4 227 225 226 228
		f 4 -256 -257 253 -98
		mu 0 4 288 287 225 227
		f 4 -258 -259 255 -90
		mu 0 4 188 184 287 288
		f 4 -260 -261 257 -82
		mu 0 4 186 182 184 188
		f 4 -262 -263 259 -74
		mu 0 4 185 181 182 186
		f 4 -264 -265 261 -66
		mu 0 4 187 183 181 185
		f 4 -266 -267 263 -58
		mu 0 4 268 266 183 187
		f 4 -268 -269 265 -50
		mu 0 4 267 265 266 268
		f 4 -270 -271 267 -42
		mu 0 4 107 102 265 267
		f 4 -272 -273 269 -34
		mu 0 4 104 99 102 107
		f 4 -274 -275 271 -26
		mu 0 4 103 98 99 104
		f 4 -221 -276 273 -18
		mu 0 4 105 100 98 103
		f 4 221 -279 276 222
		mu 0 4 106 101 95 100
		f 4 224 -280 -281 -222
		mu 0 4 55 52 47 56
		f 4 -283 279 226 225
		mu 0 4 43 47 52 48
		f 4 -285 -226 228 227
		mu 0 4 38 43 48 44
		f 4 -287 -228 230 229
		mu 0 4 39 38 44 45
		f 4 -289 -230 232 231
		mu 0 4 46 39 45 51
		f 4 -291 -232 234 233
		mu 0 4 242 46 51 244
		f 4 -293 -234 236 235
		mu 0 4 245 242 244 247
		f 4 -295 -236 238 237
		mu 0 4 139 245 247 143
		f 4 -297 -238 240 239
		mu 0 4 136 139 143 140
		f 4 -299 -240 242 241
		mu 0 4 137 136 140 141
		f 4 -301 -242 244 243
		mu 0 4 142 137 141 146
		f 4 -303 -244 246 245
		mu 0 4 276 142 146 277
		f 4 -305 -246 248 247
		mu 0 4 203 276 277 205
		f 4 -307 -248 250 249
		mu 0 4 204 203 205 206
		f 4 -309 -250 252 -308
		mu 0 4 300 299 301 302
		f 4 -310 -311 307 254
		mu 0 4 225 223 224 226
		f 4 -312 -313 309 256
		mu 0 4 287 286 223 225
		f 4 -314 -315 311 258
		mu 0 4 184 180 286 287
		f 4 -316 -317 313 260
		mu 0 4 182 178 180 184
		f 4 -318 -319 315 262
		mu 0 4 181 177 178 182
		f 4 -320 -321 317 264
		mu 0 4 183 179 177 181
		f 4 -322 -323 319 266
		mu 0 4 266 264 179 183
		f 4 -324 -325 321 268
		mu 0 4 265 263 264 266
		f 4 -326 -327 323 270
		mu 0 4 102 97 263 265
		f 4 -328 -329 325 272
		mu 0 4 99 94 97 102
		f 4 -330 -331 327 274
		mu 0 4 98 93 94 99
		f 4 275 -277 -332 329
		mu 0 4 98 100 95 93
		f 4 109 -335 332 110
		mu 0 4 96 91 85 90
		f 4 112 -336 -337 -110
		mu 0 4 369 370 371 372
		f 4 -339 335 114 113
		mu 0 4 30 36 42 37
		f 4 -341 -114 116 115
		mu 0 4 26 30 37 31
		f 4 -343 -116 118 117
		mu 0 4 27 26 31 32
		f 4 -345 -118 120 119
		mu 0 4 33 27 32 40
		f 4 -347 -120 122 121
		mu 0 4 238 33 40 240
		f 4 -349 -122 124 123
		mu 0 4 241 238 240 243
		f 4 -351 -124 126 125
		mu 0 4 131 241 243 135
		f 4 -353 -126 128 127
		mu 0 4 128 131 135 132
		f 4 -355 -128 130 129
		mu 0 4 129 128 132 133
		f 4 -357 -130 132 131
		mu 0 4 134 129 133 138
		f 4 -359 -132 134 133
		mu 0 4 274 134 138 275
		f 4 -361 -134 136 135
		mu 0 4 199 274 275 201
		f 4 -363 -136 138 137
		mu 0 4 200 199 201 202
		f 4 -365 -138 140 -364
		mu 0 4 292 291 295 296
		f 4 -366 -367 363 142
		mu 0 4 221 219 220 222
		f 4 -368 -369 365 144
		mu 0 4 285 284 219 221
		f 4 -370 -371 367 146
		mu 0 4 176 172 284 285
		f 4 -372 -373 369 148
		mu 0 4 174 170 172 176
		f 4 -374 -375 371 150
		mu 0 4 173 169 170 174
		f 4 -376 -377 373 152
		mu 0 4 175 171 169 173
		f 4 -378 -379 375 154
		mu 0 4 262 260 171 175
		f 4 -380 -381 377 156
		mu 0 4 261 259 260 262
		f 4 -382 -383 379 158
		mu 0 4 92 87 259 261
		f 4 -384 -385 381 160
		mu 0 4 89 84 87 92
		f 4 -386 -387 383 162
		mu 0 4 88 83 84 89
		f 4 163 -333 -388 385
		mu 0 4 88 90 85 83
		f 4 333 -391 388 334
		mu 0 4 91 86 80 85
		f 4 336 -392 -393 -334
		mu 0 4 41 36 29 34
		f 4 -395 391 338 337
		mu 0 4 25 29 36 30
		f 4 -397 -338 340 339
		mu 0 4 20 25 30 26
		f 4 -399 -340 342 341
		mu 0 4 21 20 26 27
		f 4 -401 -342 344 343
		mu 0 4 28 21 27 33
		f 4 -403 -344 346 345
		mu 0 4 236 28 33 238
		f 4 -405 -346 348 347
		mu 0 4 239 236 238 241
		f 4 -407 -348 350 349
		mu 0 4 127 239 241 131
		f 4 -409 -350 352 351
		mu 0 4 124 127 131 128
		f 4 -411 -352 354 353
		mu 0 4 125 124 128 129
		f 4 -413 -354 356 355
		mu 0 4 130 125 129 134
		f 4 -415 -356 358 357
		mu 0 4 273 130 134 274
		f 4 -417 -358 360 359
		mu 0 4 197 273 274 199
		f 4 -419 -360 362 361
		mu 0 4 198 197 199 200
		f 4 -421 -362 364 -420
		mu 0 4 289 290 291 292
		f 4 -422 -423 419 366
		mu 0 4 219 217 218 220
		f 4 -424 -425 421 368
		mu 0 4 284 283 217 219
		f 4 -426 -427 423 370
		mu 0 4 172 168 283 284
		f 4 -428 -429 425 372
		mu 0 4 170 166 168 172
		f 4 -430 -431 427 374
		mu 0 4 169 165 166 170
		f 4 -432 -433 429 376
		mu 0 4 171 167 165 169
		f 4 -434 -435 431 378
		mu 0 4 260 258 167 171
		f 4 -436 -437 433 380
		mu 0 4 259 257 258 260
		f 4 -438 -439 435 382
		mu 0 4 87 82 257 259
		f 4 -440 -441 437 384
		mu 0 4 84 79 82 87
		f 4 -442 -443 439 386
		mu 0 4 83 78 79 84
		f 4 387 -389 -444 441
		mu 0 4 83 85 80 78
		f 4 165 -447 444 166
		mu 0 4 81 76 69 75
		f 4 168 -448 -449 -166
		mu 0 4 373 374 375 376
		f 4 -451 447 170 169
		mu 0 4 12 18 24 19
		f 4 -453 -170 172 171
		mu 0 4 6 12 19 13
		f 4 -455 -172 174 173
		mu 0 4 7 6 13 14
		f 4 -457 -174 176 175
		mu 0 4 15 7 14 22
		f 4 -459 -176 178 177
		mu 0 4 231 15 22 234
		f 4 -461 -178 180 179
		mu 0 4 235 231 234 237
		f 4 -463 -180 182 181
		mu 0 4 119 235 237 123
		f 4 -465 -182 184 183
		mu 0 4 115 119 123 120
		f 4 -467 -184 186 185
		mu 0 4 116 115 120 121
		f 4 -469 -186 188 187
		mu 0 4 122 116 121 126
		f 4 -471 -188 190 189
		mu 0 4 271 122 126 272
		f 4 -473 -190 192 191
		mu 0 4 193 271 272 195
		f 4 -475 -192 194 193
		mu 0 4 194 193 195 196
		f 4 -477 -194 196 -476
		mu 0 4 297 298 294 293
		f 4 -478 -479 475 198
		mu 0 4 215 213 214 216
		f 4 -480 -481 477 200
		mu 0 4 282 281 213 215
		f 4 -482 -483 479 202
		mu 0 4 164 160 281 282
		f 4 -484 -485 481 204
		mu 0 4 162 158 160 164
		f 4 -486 -487 483 206
		mu 0 4 161 157 158 162
		f 4 -488 -489 485 208
		mu 0 4 163 159 157 161
		f 4 -490 -491 487 210
		mu 0 4 256 254 159 163
		f 4 -492 -493 489 212
		mu 0 4 255 253 254 256
		f 4 -494 -495 491 214
		mu 0 4 77 72 253 255
		f 4 -496 -497 493 216
		mu 0 4 74 68 72 77
		f 4 -498 -499 495 218
		mu 0 4 73 67 68 74
		f 4 219 -445 -500 497
		mu 0 4 73 75 69 67
		f 4 445 -503 500 446
		mu 0 4 76 70 63 69
		f 4 448 -504 -505 -446
		mu 0 4 23 18 11 16
		f 4 -507 503 450 449
		mu 0 4 5 11 18 12
		f 4 -509 -450 452 451
		mu 0 4 1 5 12 6
		f 4 -511 -452 454 453
		mu 0 4 2 1 6 7
		f 4 -513 -454 456 455
		mu 0 4 8 2 7 15
		f 4 -515 -456 458 457
		mu 0 4 229 8 15 231
		f 4 -517 -458 460 459
		mu 0 4 232 229 231 235
		f 4 -519 -460 462 461
		mu 0 4 114 232 235 119
		f 4 -521 -462 464 463
		mu 0 4 110 114 119 115
		f 4 -523 -464 466 465
		mu 0 4 111 110 115 116
		f 4 -525 -466 468 467
		mu 0 4 117 111 116 122
		f 4 -527 -468 470 469
		mu 0 4 269 117 122 271
		f 4 -529 -470 472 471
		mu 0 4 190 269 271 193
		f 4 -531 -472 474 473
		mu 0 4 191 190 193 194
		f 4 -533 -474 476 -532
		mu 0 4 377 378 379 380
		f 4 -534 -535 531 478
		mu 0 4 213 209 212 214
		f 4 -536 -537 533 480
		mu 0 4 281 280 209 213
		f 4 -538 -539 535 482
		mu 0 4 160 156 280 281
		f 4 -540 -541 537 484
		mu 0 4 158 152 156 160
		f 4 -542 -543 539 486
		mu 0 4 157 149 152 158
		f 4 -544 -545 541 488
		mu 0 4 159 153 149 157
		f 4 -546 -547 543 490
		mu 0 4 254 252 153 159
		f 4 -548 -549 545 492
		mu 0 4 253 250 252 254
		f 4 -550 -551 547 494
		mu 0 4 72 66 250 253
		f 4 -552 -553 549 496
		mu 0 4 68 62 66 72
		f 4 -554 -555 551 498
		mu 0 4 67 59 62 68
		f 4 499 -501 -556 553
		mu 0 4 67 69 63 59;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 80 
		8 0 
		9 0 
		15 0 
		22 0 
		28 0 
		33 0 
		40 0 
		46 0 
		51 0 
		54 0 
		65 0 
		66 0 
		72 0 
		77 0 
		82 0 
		87 0 
		92 0 
		97 0 
		102 0 
		107 0 
		113 0 
		114 0 
		117 0 
		118 0 
		119 0 
		122 0 
		123 0 
		126 0 
		127 0 
		130 0 
		131 0 
		134 0 
		135 0 
		138 0 
		139 0 
		142 0 
		143 0 
		146 0 
		147 0 
		148 0 
		153 0 
		154 0 
		155 0 
		156 0 
		159 0 
		160 0 
		163 0 
		164 0 
		167 0 
		168 0 
		171 0 
		172 0 
		175 0 
		176 0 
		179 0 
		180 0 
		183 0 
		184 0 
		187 0 
		188 0 
		189 0 
		190 0 
		193 0 
		195 0 
		197 0 
		199 0 
		201 0 
		203 0 
		205 0 
		207 0 
		209 0 
		210 0 
		213 0 
		215 0 
		217 0 
		219 0 
		221 0 
		223 0 
		225 0 
		227 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 3;
	setAttr ".dsm" 2;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "C1760B74-4BD2-7B21-23A5-2AA2AF251157";
	setAttr -s 21 ".lnk";
	setAttr -s 174 ".ign";
	setAttr -s 21 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "497B2BBC-4622-0E11-8F53-8E9CB4DB1C12";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "DD83EE66-40DA-3AF3-839D-34B29F301D79";
createNode displayLayerManager -n "layerManager";
	rename -uid "E77E4BB4-4E09-BCC6-1133-42B42C17CA4E";
createNode displayLayer -n "defaultLayer";
	rename -uid "73745007-49E7-1307-9590-C49235361C36";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "18669B4E-4E8E-552E-8920-EFBE5244C976";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "4F4B4112-47EE-7924-7764-26B31285EFF0";
	setAttr ".g" yes;
createNode reference -n "werkstatt_fertigRN";
	rename -uid "E261624D-492A-0459-3D76-CEBF9A7A12D0";
	setAttr ".fn[0]" -type "string" "C:/Users/simon/Desktop/Digital Arts Hagenberg/4. Semester/2. SemProj HIGH STRUNG/High-Strung//scenes/werkstatt_fertig.ma";
	setAttr -s 53 ".phl";
	setAttr ".phl[23]" 0;
	setAttr ".phl[25]" 0;
	setAttr ".phl[27]" 0;
	setAttr ".phl[29]" 0;
	setAttr ".phl[31]" 0;
	setAttr ".phl[33]" 0;
	setAttr ".phl[35]" 0;
	setAttr ".phl[37]" 0;
	setAttr ".phl[39]" 0;
	setAttr ".phl[41]" 0;
	setAttr ".phl[43]" 0;
	setAttr ".phl[45]" 0;
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
	setAttr ".ed" -type "dataReferenceEdits" 
		"werkstatt_fertigRN"
		"werkstatt_fertigRN" 14
		2 "werkstatt_fertig:ID_wood" "baseColor" " -type \"float3\" 1 0.68440002 0.33329998999999999"
		
		3 "|werkstatt_fertig:werktisch|werkstatt_fertig:tisch_low|werkstatt_fertig:tisch_lowShape.instObjGroups" 
		":initialShadingGroup.dagSetMembers" "-na"
		5 0 "werkstatt_fertigRN" "|werkstatt_fertig:werktisch|werkstatt_fertig:tisch_low|werkstatt_fertig:tisch_lowShape.instObjGroups" 
		"werkstatt_fertig:aiStandardSurface1SG.dagSetMembers" "werkstatt_fertigRN.placeHolderList[23]" 
		"werkstatt_fertigRN.placeHolderList[24]" ":initialShadingGroup.dsm"
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
		"werkstatt_fertigRN.placeHolderList[46]" ":initialShadingGroup.dsm"
		"werkstatt_fertigRN" 125
		2 "|werkstatt_fertig:spans" "visibility" " 1"
		2 "|werkstatt_fertig:spans" "translate" " -type \"double3\" -17.51368247273217449 -29.74715953448566097 31.97201029257290372"
		
		2 "|werkstatt_fertig:spans|werkstatt_fertig:span_01" "translate" " -type \"double3\" -1.57131018902547304 -1.25943889916514418 0.032607997841356706"
		
		2 "|werkstatt_fertig:spans|werkstatt_fertig:span_02" "translate" " -type \"double3\" 7.38352658092551106 -0.54659956726294401 -2.27602607436668514"
		
		2 "|werkstatt_fertig:spans|werkstatt_fertig:span_02" "rotate" " -type \"double3\" 24.86091716460376944 38.16620791119502343 51.5111147999826855"
		
		2 "|werkstatt_fertig:spans|werkstatt_fertig:span_03" "translate" " -type \"double3\" -0.98169573423777967 -1.25568310067148303 -5.16223975706410343"
		
		2 "|werkstatt_fertig:spans|werkstatt_fertig:span_03" "rotate" " -type \"double3\" 6.85737929990476847 56.49417856412204486 9.60910703410732125"
		
		2 "|werkstatt_fertig:spans|werkstatt_fertig:span_04" "translate" " -type \"double3\" -7.7349645172978363 -1.30979219053628726 5.25821539011368877"
		
		2 "|werkstatt_fertig:spans|werkstatt_fertig:span_04" "rotate" " -type \"double3\" -1.5001592189911368 0 0"
		
		2 "|werkstatt_fertig:spans|werkstatt_fertig:span_05" "translate" " -type \"double3\" 2.83229504264997445 0.096458218694580988 -3.11106670697745002"
		
		2 "|werkstatt_fertig:spans|werkstatt_fertig:span_06" "translate" " -type \"double3\" -12.47630505309370719 -2.52235307311994905 6.40383057943228273"
		
		2 "|werkstatt_fertig:spans|werkstatt_fertig:span_06" "rotate" " -type \"double3\" -7.53268983563423244 -26.54934022653396752 6.59704698139295687"
		
		2 "|werkstatt_fertig:spans|werkstatt_fertig:span_07" "translate" " -type \"double3\" 0.79181930871904271 -0.40776067449620468 -1.28358878680320876"
		
		2 "|werkstatt_fertig:spans|werkstatt_fertig:span_07" "rotate" " -type \"double3\" 84.51691455293462241 43.26332389393569855 0"
		
		2 "|werkstatt_fertig:werktisch" "translate" " -type \"double3\" 0 -29.74715953448564676 19.10266014358572662"
		
		2 "|werkstatt_fertig:werktisch|werkstatt_fertig:platte|werkstatt_fertig:platteShape" 
		"dispResolution" " 1"
		2 "|werkstatt_fertig:werktisch|werkstatt_fertig:platte|werkstatt_fertig:platteShape" 
		"displaySmoothMesh" " 0"
		2 "|werkstatt_fertig:werktisch|werkstatt_fertig:gestell|werkstatt_fertig:gestellShape" 
		"dispResolution" " 1"
		2 "|werkstatt_fertig:werktisch|werkstatt_fertig:gestell|werkstatt_fertig:gestellShape" 
		"displaySmoothMesh" " 0"
		2 "|werkstatt_fertig:werktisch|werkstatt_fertig:hebel_low|werkstatt_fertig:hebel_lowShape" 
		"dispResolution" " 3"
		2 "|werkstatt_fertig:werktisch|werkstatt_fertig:hebel_low|werkstatt_fertig:hebel_lowShape" 
		"displaySmoothMesh" " 2"
		2 "|werkstatt_fertig:werktisch|werkstatt_fertig:zwinge_low|werkstatt_fertig:zwinge_lowShape" 
		"dispResolution" " 1"
		2 "|werkstatt_fertig:werktisch|werkstatt_fertig:zwinge_low|werkstatt_fertig:zwinge_lowShape" 
		"displaySmoothMesh" " 0"
		2 "werkstatt_fertig:set1" "aiCustomAOVs" " -s 14"
		2 "werkstatt_fertig:set1" "aiCustomAOVs[0].aovName" " -type \"string\" \"RGBA\""
		
		2 "werkstatt_fertig:set1" "aiCustomAOVs[1].aovName" " -type \"string\" \"Z\""
		
		2 "werkstatt_fertig:set1" "aiCustomAOVs[2].aovName" " -type \"string\" \"diffuse\""
		
		2 "werkstatt_fertig:set1" "aiCustomAOVs[3].aovName" " -type \"string\" \"opacity\""
		
		2 "werkstatt_fertig:set1" "aiCustomAOVs[4].aovName" " -type \"string\" \"direct\""
		
		2 "werkstatt_fertig:set1" "aiCustomAOVs[5].aovName" " -type \"string\" \"indirect\""
		
		2 "werkstatt_fertig:set1" "aiCustomAOVs[6].aovName" " -type \"string\" \"specular\""
		
		2 "werkstatt_fertig:set1" "aiCustomAOVs[7].aovName" " -type \"string\" \"crypto_asset\""
		
		2 "werkstatt_fertig:set1" "aiCustomAOVs[8].aovName" " -type \"string\" \"AO\""
		
		2 "werkstatt_fertig:set1" "aiCustomAOVs[9].aovName" " -type \"string\" \"ID\""
		
		2 "werkstatt_fertig:set1" "aiCustomAOVs[10].aovName" " -type \"string\" \"N\""
		
		2 "werkstatt_fertig:set1" "aiCustomAOVs[11].aovName" " -type \"string\" \"albedo\""
		
		2 "werkstatt_fertig:set1" "aiCustomAOVs[12].aovName" " -type \"string\" \"transmission\""
		
		2 "werkstatt_fertig:set1" "aiCustomAOVs[13].aovName" " -type \"string\" \"volume_opacity\""
		
		2 "werkstatt_fertig:set2" "aiCustomAOVs" " -s 14"
		2 "werkstatt_fertig:set2" "aiCustomAOVs[0].aovName" " -type \"string\" \"RGBA\""
		
		2 "werkstatt_fertig:set2" "aiCustomAOVs[1].aovName" " -type \"string\" \"Z\""
		
		2 "werkstatt_fertig:set2" "aiCustomAOVs[2].aovName" " -type \"string\" \"diffuse\""
		
		2 "werkstatt_fertig:set2" "aiCustomAOVs[3].aovName" " -type \"string\" \"opacity\""
		
		2 "werkstatt_fertig:set2" "aiCustomAOVs[4].aovName" " -type \"string\" \"direct\""
		
		2 "werkstatt_fertig:set2" "aiCustomAOVs[5].aovName" " -type \"string\" \"indirect\""
		
		2 "werkstatt_fertig:set2" "aiCustomAOVs[6].aovName" " -type \"string\" \"specular\""
		
		2 "werkstatt_fertig:set2" "aiCustomAOVs[7].aovName" " -type \"string\" \"crypto_asset\""
		
		2 "werkstatt_fertig:set2" "aiCustomAOVs[8].aovName" " -type \"string\" \"AO\""
		
		2 "werkstatt_fertig:set2" "aiCustomAOVs[9].aovName" " -type \"string\" \"ID\""
		
		2 "werkstatt_fertig:set2" "aiCustomAOVs[10].aovName" " -type \"string\" \"N\""
		
		2 "werkstatt_fertig:set2" "aiCustomAOVs[11].aovName" " -type \"string\" \"albedo\""
		
		2 "werkstatt_fertig:set2" "aiCustomAOVs[12].aovName" " -type \"string\" \"transmission\""
		
		2 "werkstatt_fertig:set2" "aiCustomAOVs[13].aovName" " -type \"string\" \"volume_opacity\""
		
		3 "|werkstatt_fertig:werktisch|werkstatt_fertig:zwinge_low|werkstatt_fertig:zwinge_lowShape.instObjGroups" 
		"werkstatt_fertig:set2.dagSetMembers" "-na"
		3 "|werkstatt_fertig:werktisch|werkstatt_fertig:zwinge_schrauben_low|werkstatt_fertig:zwinge_schrauben_lowShape.instObjGroups" 
		"werkstatt_fertig:set2.dagSetMembers" "-na"
		3 "|werkstatt_fertig:werktisch|werkstatt_fertig:schrauben_low|werkstatt_fertig:schrauben_lowShape.instObjGroups" 
		"werkstatt_fertig:set2.dagSetMembers" "-na"
		3 "|werkstatt_fertig:werktisch|werkstatt_fertig:hebel_low|werkstatt_fertig:hebel_lowShape.instObjGroups" 
		"werkstatt_fertig:set2.dagSetMembers" "-na"
		3 "|werkstatt_fertig:spans|werkstatt_fertig:span_02|werkstatt_fertig:span_Shape2.instObjGroups" 
		"werkstatt_fertig:set1.dagSetMembers" "-na"
		3 "|werkstatt_fertig:spans|werkstatt_fertig:span_05|werkstatt_fertig:span_Shape5.instObjGroups" 
		"werkstatt_fertig:set1.dagSetMembers" "-na"
		3 "|werkstatt_fertig:spans|werkstatt_fertig:span_03|werkstatt_fertig:span_Shape3.instObjGroups" 
		"werkstatt_fertig:set1.dagSetMembers" "-na"
		3 "|werkstatt_fertig:spans|werkstatt_fertig:span_01|werkstatt_fertig:span_Shape1.instObjGroups" 
		"werkstatt_fertig:set1.dagSetMembers" "-na"
		3 "|werkstatt_fertig:spans|werkstatt_fertig:span_07|werkstatt_fertig:span_Shape7.instObjGroups" 
		"werkstatt_fertig:set1.dagSetMembers" "-na"
		3 "|werkstatt_fertig:spans|werkstatt_fertig:span_06|werkstatt_fertig:span_Shape6.instObjGroups" 
		"werkstatt_fertig:set1.dagSetMembers" "-na"
		3 "|werkstatt_fertig:spans|werkstatt_fertig:span_04|werkstatt_fertig:span_Shape4.instObjGroups" 
		"werkstatt_fertig:set1.dagSetMembers" "-na"
		5 0 "werkstatt_fertigRN" "|werkstatt_fertig:spans|werkstatt_fertig:span_07|werkstatt_fertig:span_Shape7.instObjGroups" 
		"werkstatt_fertig:set1.dagSetMembers" "werkstatt_fertigRN.placeHolderList[47]" "werkstatt_fertigRN.placeHolderList[48]" 
		"werkstatt_fertig:set1.dsm"
		5 0 "werkstatt_fertigRN" "|werkstatt_fertig:spans|werkstatt_fertig:span_06|werkstatt_fertig:span_Shape6.instObjGroups" 
		"werkstatt_fertig:set1.dagSetMembers" "werkstatt_fertigRN.placeHolderList[49]" "werkstatt_fertigRN.placeHolderList[50]" 
		"werkstatt_fertig:set1.dsm"
		5 0 "werkstatt_fertigRN" "|werkstatt_fertig:spans|werkstatt_fertig:span_05|werkstatt_fertig:span_Shape5.instObjGroups" 
		"werkstatt_fertig:set1.dagSetMembers" "werkstatt_fertigRN.placeHolderList[51]" "werkstatt_fertigRN.placeHolderList[52]" 
		"werkstatt_fertig:set1.dsm"
		5 0 "werkstatt_fertigRN" "|werkstatt_fertig:spans|werkstatt_fertig:span_04|werkstatt_fertig:span_Shape4.instObjGroups" 
		"werkstatt_fertig:set1.dagSetMembers" "werkstatt_fertigRN.placeHolderList[53]" "werkstatt_fertigRN.placeHolderList[54]" 
		"werkstatt_fertig:set1.dsm"
		5 0 "werkstatt_fertigRN" "|werkstatt_fertig:spans|werkstatt_fertig:span_03|werkstatt_fertig:span_Shape3.instObjGroups" 
		"werkstatt_fertig:set1.dagSetMembers" "werkstatt_fertigRN.placeHolderList[55]" "werkstatt_fertigRN.placeHolderList[56]" 
		"werkstatt_fertig:set1.dsm"
		5 0 "werkstatt_fertigRN" "|werkstatt_fertig:spans|werkstatt_fertig:span_02|werkstatt_fertig:span_Shape2.instObjGroups" 
		"werkstatt_fertig:set1.dagSetMembers" "werkstatt_fertigRN.placeHolderList[57]" "werkstatt_fertigRN.placeHolderList[58]" 
		"werkstatt_fertig:set1.dsm"
		5 0 "werkstatt_fertigRN" "|werkstatt_fertig:spans|werkstatt_fertig:span_01|werkstatt_fertig:span_Shape1.instObjGroups" 
		"werkstatt_fertig:set1.dagSetMembers" "werkstatt_fertigRN.placeHolderList[59]" "werkstatt_fertigRN.placeHolderList[60]" 
		"werkstatt_fertig:set1.dsm"
		5 4 "werkstatt_fertigRN" "werkstatt_fertig:set1.dagSetMembers" "werkstatt_fertigRN.placeHolderList[61]" 
		""
		5 4 "werkstatt_fertigRN" "werkstatt_fertig:set1.dagSetMembers" "werkstatt_fertigRN.placeHolderList[62]" 
		""
		5 4 "werkstatt_fertigRN" "werkstatt_fertig:set1.dagSetMembers" "werkstatt_fertigRN.placeHolderList[63]" 
		""
		5 4 "werkstatt_fertigRN" "werkstatt_fertig:set1.dagSetMembers" "werkstatt_fertigRN.placeHolderList[64]" 
		""
		5 4 "werkstatt_fertigRN" "werkstatt_fertig:set1.dagSetMembers" "werkstatt_fertigRN.placeHolderList[65]" 
		""
		5 4 "werkstatt_fertigRN" "werkstatt_fertig:set1.dagSetMembers" "werkstatt_fertigRN.placeHolderList[66]" 
		""
		5 4 "werkstatt_fertigRN" "werkstatt_fertig:set1.dagSetMembers" "werkstatt_fertigRN.placeHolderList[67]" 
		""
		5 0 "werkstatt_fertigRN" "|werkstatt_fertig:werktisch|werkstatt_fertig:zwinge_low|werkstatt_fertig:zwinge_lowShape.instObjGroups" 
		"werkstatt_fertig:set2.dagSetMembers" "werkstatt_fertigRN.placeHolderList[68]" "werkstatt_fertigRN.placeHolderList[69]" 
		"werkstatt_fertig:set2.dsm"
		5 0 "werkstatt_fertigRN" "|werkstatt_fertig:werktisch|werkstatt_fertig:hebel_low|werkstatt_fertig:hebel_lowShape.instObjGroups" 
		"werkstatt_fertig:set2.dagSetMembers" "werkstatt_fertigRN.placeHolderList[70]" "werkstatt_fertigRN.placeHolderList[71]" 
		"werkstatt_fertig:set2.dsm"
		5 0 "werkstatt_fertigRN" "|werkstatt_fertig:werktisch|werkstatt_fertig:zwinge_schrauben_low|werkstatt_fertig:zwinge_schrauben_lowShape.instObjGroups" 
		"werkstatt_fertig:set2.dagSetMembers" "werkstatt_fertigRN.placeHolderList[72]" "werkstatt_fertigRN.placeHolderList[73]" 
		"werkstatt_fertig:set2.dsm"
		5 0 "werkstatt_fertigRN" "|werkstatt_fertig:werktisch|werkstatt_fertig:schrauben_low|werkstatt_fertig:schrauben_lowShape.instObjGroups" 
		"werkstatt_fertig:set2.dagSetMembers" "werkstatt_fertigRN.placeHolderList[74]" "werkstatt_fertigRN.placeHolderList[75]" 
		"werkstatt_fertig:set2.dsm"
		7 "ignore" ":lightLinker1" 2 "|werkstatt_fertig:spans|werkstatt_fertig:span_01|werkstatt_fertig:span_Shape1.message" "|Stage_Lighting|Gears_Light|Gears_LightShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|werkstatt_fertig:spans|werkstatt_fertig:span_02|werkstatt_fertig:span_Shape2.message" "|Stage_Lighting|Gears_Light|Gears_LightShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|werkstatt_fertig:spans|werkstatt_fertig:span_03|werkstatt_fertig:span_Shape3.message" "|Stage_Lighting|Gears_Light|Gears_LightShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|werkstatt_fertig:spans|werkstatt_fertig:span_04|werkstatt_fertig:span_Shape4.message" "|Stage_Lighting|Gears_Light|Gears_LightShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|werkstatt_fertig:spans|werkstatt_fertig:span_05|werkstatt_fertig:span_Shape5.message" "|Stage_Lighting|Gears_Light|Gears_LightShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|werkstatt_fertig:spans|werkstatt_fertig:span_06|werkstatt_fertig:span_Shape6.message" "|Stage_Lighting|Gears_Light|Gears_LightShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|werkstatt_fertig:spans|werkstatt_fertig:span_07|werkstatt_fertig:span_Shape7.message" "|Stage_Lighting|Gears_Light|Gears_LightShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|werkstatt_fertig:werktisch|werkstatt_fertig:platte|werkstatt_fertig:platteShape.message" "|Violin_Lighting|Fill_Light|Fill_LightShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|werkstatt_fertig:werktisch|werkstatt_fertig:platte|werkstatt_fertig:platteShape.message" "|Violin_Lighting|Key_Light|Key_LightShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|werkstatt_fertig:werktisch|werkstatt_fertig:platte|werkstatt_fertig:platteShape.message" "|Violin_Lighting|Back_Light|Back_LightShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|werkstatt_fertig:werktisch|werkstatt_fertig:platte|werkstatt_fertig:platteShape.message" "|Stage_Lighting|BG_Light1|BG_Light1Shape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|werkstatt_fertig:werktisch|werkstatt_fertig:platte|werkstatt_fertig:platteShape.message" "|Stage_Lighting|Right_spotLight1|Right_spotLight1Shape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|werkstatt_fertig:werktisch|werkstatt_fertig:platte|werkstatt_fertig:platteShape.message" "|Stage_Lighting|Gears_Light|Gears_LightShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|werkstatt_fertig:werktisch|werkstatt_fertig:gestell|werkstatt_fertig:gestellShape.message" "|Violin_Lighting|Fill_Light|Fill_LightShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|werkstatt_fertig:werktisch|werkstatt_fertig:gestell|werkstatt_fertig:gestellShape.message" "|Violin_Lighting|Key_Light|Key_LightShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|werkstatt_fertig:werktisch|werkstatt_fertig:gestell|werkstatt_fertig:gestellShape.message" "|Violin_Lighting|Back_Light|Back_LightShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|werkstatt_fertig:werktisch|werkstatt_fertig:gestell|werkstatt_fertig:gestellShape.message" "|Stage_Lighting|BG_Light1|BG_Light1Shape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|werkstatt_fertig:werktisch|werkstatt_fertig:gestell|werkstatt_fertig:gestellShape.message" "|Stage_Lighting|Right_spotLight1|Right_spotLight1Shape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|werkstatt_fertig:werktisch|werkstatt_fertig:gestell|werkstatt_fertig:gestellShape.message" "|Stage_Lighting|Gears_Light|Gears_LightShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|werkstatt_fertig:werktisch|werkstatt_fertig:schrauben_low|werkstatt_fertig:schrauben_lowShape.message" "|Violin_Lighting|Fill_Light|Fill_LightShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|werkstatt_fertig:werktisch|werkstatt_fertig:schrauben_low|werkstatt_fertig:schrauben_lowShape.message" "|Violin_Lighting|Key_Light|Key_LightShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|werkstatt_fertig:werktisch|werkstatt_fertig:schrauben_low|werkstatt_fertig:schrauben_lowShape.message" "|Violin_Lighting|Back_Light|Back_LightShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|werkstatt_fertig:werktisch|werkstatt_fertig:schrauben_low|werkstatt_fertig:schrauben_lowShape.message" "|Stage_Lighting|BG_Light1|BG_Light1Shape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|werkstatt_fertig:werktisch|werkstatt_fertig:schrauben_low|werkstatt_fertig:schrauben_lowShape.message" "|Stage_Lighting|Right_spotLight1|Right_spotLight1Shape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|werkstatt_fertig:werktisch|werkstatt_fertig:schrauben_low|werkstatt_fertig:schrauben_lowShape.message" "|Stage_Lighting|Gears_Light|Gears_LightShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|werkstatt_fertig:werktisch|werkstatt_fertig:zwinge_schrauben_low|werkstatt_fertig:zwinge_schrauben_lowShape.message" "|Violin_Lighting|Fill_Light|Fill_LightShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|werkstatt_fertig:werktisch|werkstatt_fertig:zwinge_schrauben_low|werkstatt_fertig:zwinge_schrauben_lowShape.message" "|Violin_Lighting|Key_Light|Key_LightShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|werkstatt_fertig:werktisch|werkstatt_fertig:zwinge_schrauben_low|werkstatt_fertig:zwinge_schrauben_lowShape.message" "|Violin_Lighting|Back_Light|Back_LightShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|werkstatt_fertig:werktisch|werkstatt_fertig:zwinge_schrauben_low|werkstatt_fertig:zwinge_schrauben_lowShape.message" "|Stage_Lighting|BG_Light1|BG_Light1Shape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|werkstatt_fertig:werktisch|werkstatt_fertig:zwinge_schrauben_low|werkstatt_fertig:zwinge_schrauben_lowShape.message" "|Stage_Lighting|Right_spotLight1|Right_spotLight1Shape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|werkstatt_fertig:werktisch|werkstatt_fertig:zwinge_schrauben_low|werkstatt_fertig:zwinge_schrauben_lowShape.message" "|Stage_Lighting|Gears_Light|Gears_LightShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|werkstatt_fertig:werktisch|werkstatt_fertig:hebel_low|werkstatt_fertig:hebel_lowShape.message" "|Violin_Lighting|Fill_Light|Fill_LightShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|werkstatt_fertig:werktisch|werkstatt_fertig:hebel_low|werkstatt_fertig:hebel_lowShape.message" "|Violin_Lighting|Key_Light|Key_LightShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|werkstatt_fertig:werktisch|werkstatt_fertig:hebel_low|werkstatt_fertig:hebel_lowShape.message" "|Violin_Lighting|Back_Light|Back_LightShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|werkstatt_fertig:werktisch|werkstatt_fertig:hebel_low|werkstatt_fertig:hebel_lowShape.message" "|Stage_Lighting|BG_Light1|BG_Light1Shape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|werkstatt_fertig:werktisch|werkstatt_fertig:hebel_low|werkstatt_fertig:hebel_lowShape.message" "|Stage_Lighting|Right_spotLight1|Right_spotLight1Shape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|werkstatt_fertig:werktisch|werkstatt_fertig:hebel_low|werkstatt_fertig:hebel_lowShape.message" "|Stage_Lighting|Gears_Light|Gears_LightShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|werkstatt_fertig:werktisch|werkstatt_fertig:zwinge_low|werkstatt_fertig:zwinge_lowShape.message" "|Violin_Lighting|Fill_Light|Fill_LightShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|werkstatt_fertig:werktisch|werkstatt_fertig:zwinge_low|werkstatt_fertig:zwinge_lowShape.message" "|Violin_Lighting|Key_Light|Key_LightShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|werkstatt_fertig:werktisch|werkstatt_fertig:zwinge_low|werkstatt_fertig:zwinge_lowShape.message" "|Violin_Lighting|Back_Light|Back_LightShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|werkstatt_fertig:werktisch|werkstatt_fertig:zwinge_low|werkstatt_fertig:zwinge_lowShape.message" "|Stage_Lighting|BG_Light1|BG_Light1Shape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|werkstatt_fertig:werktisch|werkstatt_fertig:zwinge_low|werkstatt_fertig:zwinge_lowShape.message" "|Stage_Lighting|Right_spotLight1|Right_spotLight1Shape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|werkstatt_fertig:werktisch|werkstatt_fertig:zwinge_low|werkstatt_fertig:zwinge_lowShape.message" "|Stage_Lighting|Gears_Light|Gears_LightShape.message" 
		0;
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode partition -s -n "creasePartition";
	rename -uid "D94EFE65-412A-FA80-77D7-85B08A9F876E";
	setAttr -s 3 ".st";
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "12E5D02D-40BA-5356-BAED-249C8F85C08D";
	addAttr -ci true -sn "ARV_options" -ln "ARV_options" -dt "string";
	setAttr -s 11 ".aovs";
	setAttr ".AA_samples" 6;
	setAttr ".GI_specular_samples" 3;
	setAttr ".GI_transmission_samples" 0;
	setAttr ".GI_volume_samples" 3;
	setAttr ".version" -type "string" "5.1.2";
	setAttr ".ARV_options" -type "string" "Test Resolution=100%;Camera=ubercam_finalShape;Color Management.Gamma=1;Color Management.Exposure=0;Background.BG=BG Color;Background.Color=0 0 0;Background.Image=;Background.Scale=1       1;Background.Offset=0       0;Background.Apply Color Management=1;Foreground.Enable FG=0;Foreground.Image=;Foreground.Scale=1       1;Foreground.Offset=0       0;Foreground.Apply Color Management=1;";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "24700549-4EE4-DD14-4EB4-47AC923E5D84";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "849002C9-403E-38C6-10A2-49A943834452";
	setAttr ".merge_AOVs" yes;
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "EF6FAF0B-4609-6DC4-3E04-3A81CC2578B6";
	setAttr ".output_mode" 0;
	setAttr ".ai_translator" -type "string" "maya";
createNode reference -n "stage_fertigRN";
	rename -uid "331A0338-4218-BB9C-421E-D89641898A20";
	setAttr ".fn[0]" -type "string" "C:/Users/simon/Desktop/Digital Arts Hagenberg/4. Semester/2. SemProj HIGH STRUNG/High-Strung//scenes/stage_fertig.ma";
	setAttr -s 18 ".phl";
	setAttr ".phl[1]" 0;
	setAttr ".phl[3]" 0;
	setAttr ".phl[5]" 0;
	setAttr ".phl[7]" 0;
	setAttr ".phl[9]" 0;
	setAttr ".phl[11]" 0;
	setAttr ".phl[13]" 0;
	setAttr ".phl[14]" 0;
	setAttr ".phl[15]" 0;
	setAttr ".phl[16]" 0;
	setAttr ".phl[17]" 0;
	setAttr ".phl[18]" 0;
	setAttr ".ed" -type "dataReferenceEdits" 
		"stage_fertigRN"
		"stage_fertigRN" 20
		2 "stage_fertig:pillar_MAT" "baseColor" " -type \"float3\" 1 0.83289999000000003 0.64700000999999996"
		
		3 "stage_fertig:groupId86.groupId" "|stage_fertig:stage|stage_fertig:verziehrung|stage_fertig:verziehrungShape.instObjGroups.objectGroups[0].objectGroupId" 
		""
		3 ":initialShadingGroup.memberWireframeColor" "|stage_fertig:stage|stage_fertig:verziehrung|stage_fertig:verziehrungShape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "|stage_fertig:stage|stage_fertig:verziehrung|stage_fertig:verziehrungShape.instObjGroups.objectGroups[0]" 
		":initialShadingGroup.dagSetMembers" "-na"
		3 "stage_fertig:groupId88.message" ":initialShadingGroup.groupNodes" "-na"
		
		3 "stage_fertig:groupId76.groupId" "|stage_fertig:stage|stage_fertig:pillars|stage_fertig:pillarsShape.instObjGroups.objectGroups[1].objectGroupId" 
		""
		3 ":initialShadingGroup.memberWireframeColor" "|stage_fertig:stage|stage_fertig:pillars|stage_fertig:pillarsShape.instObjGroups.objectGroups[1].objectGrpColor" 
		""
		3 "|stage_fertig:stage|stage_fertig:pillars|stage_fertig:pillarsShape.instObjGroups.objectGroups[1]" 
		":initialShadingGroup.dagSetMembers" "-na"
		3 "stage_fertig:groupId76.message" ":initialShadingGroup.groupNodes" "-na"
		
		3 "stage_fertig:groupId87.groupId" "|stage_fertig:stage|stage_fertig:verziehrung|stage_fertig:verziehrung_cubes|stage_fertig:verziehrung_cubesShape.instObjGroups.objectGroups[0].objectGroupId" 
		""
		3 ":initialShadingGroup.memberWireframeColor" "|stage_fertig:stage|stage_fertig:verziehrung|stage_fertig:verziehrung_cubes|stage_fertig:verziehrung_cubesShape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "|stage_fertig:stage|stage_fertig:verziehrung|stage_fertig:verziehrung_cubes|stage_fertig:verziehrung_cubesShape.instObjGroups.objectGroups[0]" 
		":initialShadingGroup.dagSetMembers" "-na"
		3 "stage_fertig:groupId86.message" ":initialShadingGroup.groupNodes" "-na"
		
		3 "stage_fertig:groupId87.message" ":initialShadingGroup.groupNodes" "-na"
		
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
		"stage_fertigRN.placeHolderList[12]" ""
		"stage_fertigRN" 116
		2 "|stage_fertig:plane_canvasSize" "translate" " -type \"double3\" 0 0 -38.70749731903006108"
		
		2 "|stage_fertig:stage" "translate" " -type \"double3\" 0 0 0"
		2 "|stage_fertig:stage" "rotate" " -type \"double3\" 0 0 0"
		2 "|stage_fertig:stage|stage_fertig:stageShape" "dispResolution" " 1"
		2 "|stage_fertig:stage|stage_fertig:stageShape" "displaySmoothMesh" " 0"
		2 "|stage_fertig:stage|stage_fertig:verziehrung|stage_fertig:verziehrungShape" 
		"dispResolution" " 3"
		2 "|stage_fertig:stage|stage_fertig:verziehrung|stage_fertig:verziehrungShape" 
		"displaySmoothMesh" " 2"
		2 "|stage_fertig:stage|stage_fertig:verziehrung|stage_fertig:verziehrung_cubes|stage_fertig:verziehrung_cubesShape" 
		"dispResolution" " 3"
		2 "|stage_fertig:stage|stage_fertig:verziehrung|stage_fertig:verziehrung_cubes|stage_fertig:verziehrung_cubesShape" 
		"displaySmoothMesh" " 2"
		2 "|stage_fertig:stage|stage_fertig:pillars|stage_fertig:pillarsShape" "dispResolution" 
		" 3"
		2 "|stage_fertig:stage|stage_fertig:pillars|stage_fertig:pillarsShape" "displaySmoothMesh" 
		" 2"
		2 "|stage_fertig:stage|stage_fertig:vorbau|stage_fertig:vorbauShape" "smoothLevel" 
		" 2"
		2 "|stage_fertig:stage|stage_fertig:vorbau|stage_fertig:vorbauShape" "dispResolution" 
		" 3"
		2 "|stage_fertig:stage|stage_fertig:vorbau|stage_fertig:vorbauShape" "displaySmoothMesh" 
		" 2"
		2 "|stage_fertig:stage|stage_fertig:dach|stage_fertig:dachShape" "dispResolution" 
		" 1"
		2 "|stage_fertig:stage|stage_fertig:dach|stage_fertig:dachShape" "displaySmoothMesh" 
		" 0"
		2 "stage_fertig:set1" "aiCustomAOVs" " -s 14"
		2 "stage_fertig:set1" "aiCustomAOVs[0].aovName" " -type \"string\" \"RGBA\""
		
		2 "stage_fertig:set1" "aiCustomAOVs[1].aovName" " -type \"string\" \"Z\""
		
		2 "stage_fertig:set1" "aiCustomAOVs[2].aovName" " -type \"string\" \"diffuse\""
		
		2 "stage_fertig:set1" "aiCustomAOVs[3].aovName" " -type \"string\" \"opacity\""
		
		2 "stage_fertig:set1" "aiCustomAOVs[4].aovName" " -type \"string\" \"direct\""
		
		2 "stage_fertig:set1" "aiCustomAOVs[5].aovName" " -type \"string\" \"indirect\""
		
		2 "stage_fertig:set1" "aiCustomAOVs[6].aovName" " -type \"string\" \"specular\""
		
		2 "stage_fertig:set1" "aiCustomAOVs[7].aovName" " -type \"string\" \"crypto_asset\""
		
		2 "stage_fertig:set1" "aiCustomAOVs[8].aovName" " -type \"string\" \"AO\""
		
		2 "stage_fertig:set1" "aiCustomAOVs[9].aovName" " -type \"string\" \"ID\""
		
		2 "stage_fertig:set1" "aiCustomAOVs[10].aovName" " -type \"string\" \"N\""
		
		2 "stage_fertig:set1" "aiCustomAOVs[11].aovName" " -type \"string\" \"albedo\""
		
		2 "stage_fertig:set1" "aiCustomAOVs[12].aovName" " -type \"string\" \"transmission\""
		
		2 "stage_fertig:set1" "aiCustomAOVs[13].aovName" " -type \"string\" \"volume_opacity\""
		
		2 "stage_fertig:aiStandardSurface1SG" "aiCustomAOVs" " -s 14"
		2 "stage_fertig:aiStandardSurface1SG" "aiCustomAOVs[0].aovName" " -type \"string\" \"RGBA\""
		
		2 "stage_fertig:aiStandardSurface1SG" "aiCustomAOVs[1].aovName" " -type \"string\" \"Z\""
		
		2 "stage_fertig:aiStandardSurface1SG" "aiCustomAOVs[2].aovName" " -type \"string\" \"diffuse\""
		
		2 "stage_fertig:aiStandardSurface1SG" "aiCustomAOVs[3].aovName" " -type \"string\" \"opacity\""
		
		2 "stage_fertig:aiStandardSurface1SG" "aiCustomAOVs[4].aovName" " -type \"string\" \"direct\""
		
		2 "stage_fertig:aiStandardSurface1SG" "aiCustomAOVs[5].aovName" " -type \"string\" \"indirect\""
		
		2 "stage_fertig:aiStandardSurface1SG" "aiCustomAOVs[6].aovName" " -type \"string\" \"specular\""
		
		2 "stage_fertig:aiStandardSurface1SG" "aiCustomAOVs[7].aovName" " -type \"string\" \"crypto_asset\""
		
		2 "stage_fertig:aiStandardSurface1SG" "aiCustomAOVs[8].aovName" " -type \"string\" \"AO\""
		
		2 "stage_fertig:aiStandardSurface1SG" "aiCustomAOVs[9].aovName" " -type \"string\" \"ID\""
		
		2 "stage_fertig:aiStandardSurface1SG" "aiCustomAOVs[10].aovName" " -type \"string\" \"N\""
		
		2 "stage_fertig:aiStandardSurface1SG" "aiCustomAOVs[11].aovName" " -type \"string\" \"albedo\""
		
		2 "stage_fertig:aiStandardSurface1SG" "aiCustomAOVs[12].aovName" " -type \"string\" \"transmission\""
		
		2 "stage_fertig:aiStandardSurface1SG" "aiCustomAOVs[13].aovName" " -type \"string\" \"volume_opacity\""
		
		2 "stage_fertig:aiStandardSurface2SG" "aiCustomAOVs" " -s 14"
		2 "stage_fertig:aiStandardSurface2SG" "aiCustomAOVs[0].aovName" " -type \"string\" \"RGBA\""
		
		2 "stage_fertig:aiStandardSurface2SG" "aiCustomAOVs[1].aovName" " -type \"string\" \"Z\""
		
		2 "stage_fertig:aiStandardSurface2SG" "aiCustomAOVs[2].aovName" " -type \"string\" \"diffuse\""
		
		2 "stage_fertig:aiStandardSurface2SG" "aiCustomAOVs[3].aovName" " -type \"string\" \"opacity\""
		
		2 "stage_fertig:aiStandardSurface2SG" "aiCustomAOVs[4].aovName" " -type \"string\" \"direct\""
		
		2 "stage_fertig:aiStandardSurface2SG" "aiCustomAOVs[5].aovName" " -type \"string\" \"indirect\""
		
		2 "stage_fertig:aiStandardSurface2SG" "aiCustomAOVs[6].aovName" " -type \"string\" \"specular\""
		
		2 "stage_fertig:aiStandardSurface2SG" "aiCustomAOVs[7].aovName" " -type \"string\" \"crypto_asset\""
		
		2 "stage_fertig:aiStandardSurface2SG" "aiCustomAOVs[8].aovName" " -type \"string\" \"AO\""
		
		2 "stage_fertig:aiStandardSurface2SG" "aiCustomAOVs[9].aovName" " -type \"string\" \"ID\""
		
		2 "stage_fertig:aiStandardSurface2SG" "aiCustomAOVs[10].aovName" " -type \"string\" \"N\""
		
		2 "stage_fertig:aiStandardSurface2SG" "aiCustomAOVs[11].aovName" " -type \"string\" \"albedo\""
		
		2 "stage_fertig:aiStandardSurface2SG" "aiCustomAOVs[12].aovName" " -type \"string\" \"transmission\""
		
		2 "stage_fertig:aiStandardSurface2SG" "aiCustomAOVs[13].aovName" " -type \"string\" \"volume_opacity\""
		
		2 "stage_fertig:aiStandardSurface3" "specularRoughness" " 1"
		2 "stage_fertig:aiStandardSurface3SG" "aiCustomAOVs" " -s 14"
		2 "stage_fertig:aiStandardSurface3SG" "aiCustomAOVs[0].aovName" " -type \"string\" \"RGBA\""
		
		2 "stage_fertig:aiStandardSurface3SG" "aiCustomAOVs[1].aovName" " -type \"string\" \"Z\""
		
		2 "stage_fertig:aiStandardSurface3SG" "aiCustomAOVs[2].aovName" " -type \"string\" \"diffuse\""
		
		2 "stage_fertig:aiStandardSurface3SG" "aiCustomAOVs[3].aovName" " -type \"string\" \"opacity\""
		
		2 "stage_fertig:aiStandardSurface3SG" "aiCustomAOVs[4].aovName" " -type \"string\" \"direct\""
		
		2 "stage_fertig:aiStandardSurface3SG" "aiCustomAOVs[5].aovName" " -type \"string\" \"indirect\""
		
		2 "stage_fertig:aiStandardSurface3SG" "aiCustomAOVs[6].aovName" " -type \"string\" \"specular\""
		
		2 "stage_fertig:aiStandardSurface3SG" "aiCustomAOVs[7].aovName" " -type \"string\" \"crypto_asset\""
		
		2 "stage_fertig:aiStandardSurface3SG" "aiCustomAOVs[8].aovName" " -type \"string\" \"AO\""
		
		2 "stage_fertig:aiStandardSurface3SG" "aiCustomAOVs[9].aovName" " -type \"string\" \"ID\""
		
		2 "stage_fertig:aiStandardSurface3SG" "aiCustomAOVs[10].aovName" " -type \"string\" \"N\""
		
		2 "stage_fertig:aiStandardSurface3SG" "aiCustomAOVs[11].aovName" " -type \"string\" \"albedo\""
		
		2 "stage_fertig:aiStandardSurface3SG" "aiCustomAOVs[12].aovName" " -type \"string\" \"transmission\""
		
		2 "stage_fertig:aiStandardSurface3SG" "aiCustomAOVs[13].aovName" " -type \"string\" \"volume_opacity\""
		
		3 "|stage_fertig:plane_canvasSize|stage_fertig:plane_canvasSizeShape.instObjGroups" 
		":initialShadingGroup.dagSetMembers" "-na"
		3 "|stage_fertig:stage|stage_fertig:stageShape.instObjGroups.objectGroups[0]" 
		"stage_fertig:set1.dagSetMembers" "-na"
		3 "|stage_fertig:stage|stage_fertig:vorbau|stage_fertig:vorbauShape.instObjGroups" 
		"stage_fertig:set1.dagSetMembers" "-na"
		3 "|stage_fertig:stage|stage_fertig:dach|stage_fertig:dachShape.instObjGroups.objectGroups[0]" 
		"stage_fertig:set1.dagSetMembers" "-na"
		3 "stage_fertig:groupId58.message" "stage_fertig:set1.groupNodes" "-na"
		3 "stage_fertig:groupId58.groupId" "|stage_fertig:stage|stage_fertig:dach|stage_fertig:dachShape.instObjGroups.objectGroups[0].objectGroupId" 
		""
		3 "stage_fertig:set1.memberWireframeColor" "|stage_fertig:stage|stage_fertig:dach|stage_fertig:dachShape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		3 "stage_fertig:groupId57.groupId" "|stage_fertig:stage|stage_fertig:stageShape.instObjGroups.objectGroups[0].objectGroupId" 
		""
		3 "stage_fertig:set1.memberWireframeColor" "|stage_fertig:stage|stage_fertig:stageShape.instObjGroups.objectGroups[0].objectGrpColor" 
		""
		5 0 "stage_fertigRN" "|stage_fertig:stage|stage_fertig:vorbau|stage_fertig:vorbauShape.instObjGroups" 
		"stage_fertig:set1.dagSetMembers" "stage_fertigRN.placeHolderList[13]" "stage_fertigRN.placeHolderList[14]" 
		"stage_fertig:set1.dsm"
		5 0 "stage_fertigRN" "|stage_fertig:stage|stage_fertig:dach|stage_fertig:dachShape.instObjGroups" 
		"stage_fertig:set1.dagSetMembers" "stage_fertigRN.placeHolderList[15]" "stage_fertigRN.placeHolderList[16]" 
		""
		5 0 "stage_fertigRN" "|stage_fertig:stage|stage_fertig:stageShape.instObjGroups" 
		"stage_fertig:set1.dagSetMembers" "stage_fertigRN.placeHolderList[17]" "stage_fertigRN.placeHolderList[18]" 
		""
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:stage|stage_fertig:stageShape.message" "|Violin_Lighting|Back_Light|Back_LightShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:stage|stage_fertig:stageShape.message" "|Violin_Lighting|Key_Light|Key_LightShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:stage|stage_fertig:stageShape.message" "|Violin_Lighting|Fill_Light|Fill_LightShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:stage|stage_fertig:stageShape.message" "|Stage_Lighting|Right_spotLight1|Right_spotLight1Shape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:stage|stage_fertig:stageShape.message" "|Stage_Lighting|Left_spotLight2|Left_spotLight2Shape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:stage|stage_fertig:stageShape.message" "|Stage_Lighting|Gears_Light|Gears_LightShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:stage|stage_fertig:verziehrung|stage_fertig:verziehrungShape.message" "|Violin_Lighting|Back_Light|Back_LightShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:stage|stage_fertig:verziehrung|stage_fertig:verziehrungShape.message" "|Violin_Lighting|Key_Light|Key_LightShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:stage|stage_fertig:verziehrung|stage_fertig:verziehrungShape.message" "|Violin_Lighting|Fill_Light|Fill_LightShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:stage|stage_fertig:verziehrung|stage_fertig:verziehrungShape.message" "|Stage_Lighting|Gears_Light|Gears_LightShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:stage|stage_fertig:verziehrung|stage_fertig:verziehrung_cubes|stage_fertig:verziehrung_cubesShape.message" "|Violin_Lighting|Back_Light|Back_LightShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:stage|stage_fertig:verziehrung|stage_fertig:verziehrung_cubes|stage_fertig:verziehrung_cubesShape.message" "|Violin_Lighting|Key_Light|Key_LightShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:stage|stage_fertig:verziehrung|stage_fertig:verziehrung_cubes|stage_fertig:verziehrung_cubesShape.message" "|Violin_Lighting|Fill_Light|Fill_LightShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:stage|stage_fertig:verziehrung|stage_fertig:verziehrung_cubes|stage_fertig:verziehrung_cubesShape.message" "|Stage_Lighting|Gears_Light|Gears_LightShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:stage|stage_fertig:pillars|stage_fertig:pillarsShape.message" "|Violin_Lighting|Back_Light|Back_LightShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:stage|stage_fertig:pillars|stage_fertig:pillarsShape.message" "|Violin_Lighting|Key_Light|Key_LightShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:stage|stage_fertig:pillars|stage_fertig:pillarsShape.message" "|Violin_Lighting|Fill_Light|Fill_LightShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:stage|stage_fertig:pillars|stage_fertig:pillarsShape.message" "|Stage_Lighting|Gears_Light|Gears_LightShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:stage|stage_fertig:vorbau|stage_fertig:vorbauShape.message" "|Violin_Lighting|Back_Light|Back_LightShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:stage|stage_fertig:vorbau|stage_fertig:vorbauShape.message" "|Violin_Lighting|Key_Light|Key_LightShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:stage|stage_fertig:vorbau|stage_fertig:vorbauShape.message" "|Violin_Lighting|Fill_Light|Fill_LightShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:stage|stage_fertig:vorbau|stage_fertig:vorbauShape.message" "|Stage_Lighting|Gears_Light|Gears_LightShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:stage|stage_fertig:dach|stage_fertig:dachShape.message" "|Stage_Lighting|Left_spotLight2|Left_spotLight2Shape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:stage|stage_fertig:dach|stage_fertig:dachShape.message" "|Stage_Lighting|Right_spotLight1|Right_spotLight1Shape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:curtains|stage_fertig:plane_canvasSize1|stage_fertig:plane_canvasSize1Shape.message" "|Stage_Lighting|Gears_Light|Gears_LightShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:curtains|stage_fertig:plane_canvasSize2|stage_fertig:plane_canvasSize2Shape.message" "|Stage_Lighting|Gears_Light|Gears_LightShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|stage_fertig:curtains|stage_fertig:plane_canvasSize3|stage_fertig:plane_canvasSize3Shape.message" "|Stage_Lighting|Gears_Light|Gears_LightShape.message" 
		0;
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode reference -n "Geige_RigRN";
	rename -uid "50F0A8A4-4622-2104-8021-058CC297A1E7";
	setAttr ".fn[0]" -type "string" "C:/Users/simon/Desktop/Digital Arts Hagenberg/4. Semester/2. SemProj HIGH STRUNG/High-Strung//scenes/Geige_Rig.ma";
	setAttr -s 26 ".phl";
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
	setAttr ".ed" -type "dataReferenceEdits" 
		"Geige_RigRN"
		"Geige_RigRN" 0
		"Geige_RigRN" 217
		2 "|Geige_Rig:Geige" "translate" " -type \"double3\" 1.6675419578355517 -14.268 24.25187424300593264"
		
		2 "|Geige_Rig:Geige" "rotate" " -type \"double3\" 3.2 -69.87141372781744053 0"
		
		2 "|Geige_Rig:Geige|Geige_Rig:bogen_ctrlMiddle" "visibility" " 0"
		2 "|Geige_Rig:Geige|Geige_Rig:bogen_ctrlMiddle|Geige_Rig:bogen_LP_pivotMiddle|Geige_Rig:griff_low|Geige_Rig:griff_lowShape" 
		"dispResolution" " 3"
		2 "|Geige_Rig:Geige|Geige_Rig:bogen_ctrlMiddle|Geige_Rig:bogen_LP_pivotMiddle|Geige_Rig:griff_low|Geige_Rig:griff_lowShape" 
		"displaySmoothMesh" " 2"
		2 "|Geige_Rig:Geige|Geige_Rig:bogen_ctrlMiddle|Geige_Rig:bogen_LP_pivotMiddle|Geige_Rig:sehne_low|Geige_Rig:sehne_lowShape" 
		"dispResolution" " 3"
		2 "|Geige_Rig:Geige|Geige_Rig:bogen_ctrlMiddle|Geige_Rig:bogen_LP_pivotMiddle|Geige_Rig:sehne_low|Geige_Rig:sehne_lowShape" 
		"displaySmoothMesh" " 2"
		2 "|Geige_Rig:Geige|Geige_Rig:bogen_ctrlMiddle|Geige_Rig:bogen_LP_pivotMiddle|Geige_Rig:metall_low|Geige_Rig:metall_lowShape" 
		"dispResolution" " 3"
		2 "|Geige_Rig:Geige|Geige_Rig:bogen_ctrlMiddle|Geige_Rig:bogen_LP_pivotMiddle|Geige_Rig:metall_low|Geige_Rig:metall_lowShape" 
		"displaySmoothMesh" " 2"
		2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom" "visibility" " 1"
		2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:body_low|Geige_Rig:body_lowShape" 
		"dispResolution" " 3"
		2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:body_low|Geige_Rig:body_lowShape" 
		"displaySmoothMesh" " 2"
		2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:saiten_low|Geige_Rig:saiten_lowShape" 
		"dispResolution" " 3"
		2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:saiten_low|Geige_Rig:saiten_lowShape" 
		"displaySmoothMesh" " 2"
		2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:griffbrett_low|Geige_Rig:griffbrett_lowShape" 
		"dispResolution" " 3"
		2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:griffbrett_low|Geige_Rig:griffbrett_lowShape" 
		"displaySmoothMesh" " 2"
		2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:wirbel_low|Geige_Rig:wirbel_low_01|Geige_Rig:wirbel_low_01Shape" 
		"dispResolution" " 3"
		2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:wirbel_low|Geige_Rig:wirbel_low_01|Geige_Rig:wirbel_low_01Shape" 
		"displaySmoothMesh" " 2"
		2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:wirbel_low|Geige_Rig:wirbel_low_02|Geige_Rig:wirbel_low_02Shape" 
		"dispResolution" " 3"
		2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:wirbel_low|Geige_Rig:wirbel_low_02|Geige_Rig:wirbel_low_02Shape" 
		"displaySmoothMesh" " 2"
		2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:wirbel_low|Geige_Rig:wirbel_low_03|Geige_Rig:wirbel_low_03Shape" 
		"dispResolution" " 3"
		2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:wirbel_low|Geige_Rig:wirbel_low_03|Geige_Rig:wirbel_low_03Shape" 
		"displaySmoothMesh" " 2"
		2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:wirbel_low|Geige_Rig:wirbel_low_04|Geige_Rig:wirbel_low_04Shape" 
		"dispResolution" " 3"
		2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:wirbel_low|Geige_Rig:wirbel_low_04|Geige_Rig:wirbel_low_04Shape" 
		"displaySmoothMesh" " 2"
		2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:hals_low|Geige_Rig:hals_lowShape" 
		"dispResolution" " 3"
		2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:hals_low|Geige_Rig:hals_lowShape" 
		"displaySmoothMesh" " 2"
		2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:kinnstuetze_low|Geige_Rig:kinnstuetze_lowShape" 
		"dispResolution" " 3"
		2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:kinnstuetze_low|Geige_Rig:kinnstuetze_lowShape" 
		"displaySmoothMesh" " 2"
		2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:metallplatte_low|Geige_Rig:metallplatte_lowShape" 
		"dispResolution" " 3"
		2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:metallplatte_low|Geige_Rig:metallplatte_lowShape" 
		"displaySmoothMesh" " 2"
		2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:saitenhalter_low|Geige_Rig:saitenhalter_lowShape" 
		"dispResolution" " 3"
		2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:saitenhalter_low|Geige_Rig:saitenhalter_lowShape" 
		"displaySmoothMesh" " 2"
		2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:inside_low|Geige_Rig:inside_lowShape" 
		"dispResolution" " 3"
		2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:inside_low|Geige_Rig:inside_lowShape" 
		"displaySmoothMesh" " 2"
		2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:schraube_low|Geige_Rig:schraube_lowShape" 
		"dispResolution" " 3"
		2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:schraube_low|Geige_Rig:schraube_lowShape" 
		"displaySmoothMesh" " 2"
		2 "Geige_Rig:inside_highSG" "aiCustomAOVs" " -s 14"
		2 "Geige_Rig:inside_highSG" "aiCustomAOVs[0].aovName" " -type \"string\" \"RGBA\""
		
		2 "Geige_Rig:inside_highSG" "aiCustomAOVs[1].aovName" " -type \"string\" \"Z\""
		
		2 "Geige_Rig:inside_highSG" "aiCustomAOVs[2].aovName" " -type \"string\" \"diffuse\""
		
		2 "Geige_Rig:inside_highSG" "aiCustomAOVs[3].aovName" " -type \"string\" \"opacity\""
		
		2 "Geige_Rig:inside_highSG" "aiCustomAOVs[4].aovName" " -type \"string\" \"direct\""
		
		2 "Geige_Rig:inside_highSG" "aiCustomAOVs[5].aovName" " -type \"string\" \"indirect\""
		
		2 "Geige_Rig:inside_highSG" "aiCustomAOVs[6].aovName" " -type \"string\" \"specular\""
		
		2 "Geige_Rig:inside_highSG" "aiCustomAOVs[7].aovName" " -type \"string\" \"crypto_asset\""
		
		2 "Geige_Rig:inside_highSG" "aiCustomAOVs[8].aovName" " -type \"string\" \"AO\""
		
		2 "Geige_Rig:inside_highSG" "aiCustomAOVs[9].aovName" " -type \"string\" \"ID\""
		
		2 "Geige_Rig:inside_highSG" "aiCustomAOVs[10].aovName" " -type \"string\" \"N\""
		
		2 "Geige_Rig:inside_highSG" "aiCustomAOVs[11].aovName" " -type \"string\" \"albedo\""
		
		2 "Geige_Rig:inside_highSG" "aiCustomAOVs[12].aovName" " -type \"string\" \"transmission\""
		
		2 "Geige_Rig:inside_highSG" "aiCustomAOVs[13].aovName" " -type \"string\" \"volume_opacity\""
		
		2 "Geige_Rig:set1" "aiCustomAOVs" " -s 14"
		2 "Geige_Rig:set1" "aiCustomAOVs[0].aovName" " -type \"string\" \"RGBA\""
		
		2 "Geige_Rig:set1" "aiCustomAOVs[1].aovName" " -type \"string\" \"Z\""
		2 "Geige_Rig:set1" "aiCustomAOVs[2].aovName" " -type \"string\" \"diffuse\""
		
		2 "Geige_Rig:set1" "aiCustomAOVs[3].aovName" " -type \"string\" \"opacity\""
		
		2 "Geige_Rig:set1" "aiCustomAOVs[4].aovName" " -type \"string\" \"direct\""
		
		2 "Geige_Rig:set1" "aiCustomAOVs[5].aovName" " -type \"string\" \"indirect\""
		
		2 "Geige_Rig:set1" "aiCustomAOVs[6].aovName" " -type \"string\" \"specular\""
		
		2 "Geige_Rig:set1" "aiCustomAOVs[7].aovName" " -type \"string\" \"crypto_asset\""
		
		2 "Geige_Rig:set1" "aiCustomAOVs[8].aovName" " -type \"string\" \"AO\""
		2 "Geige_Rig:set1" "aiCustomAOVs[9].aovName" " -type \"string\" \"ID\""
		2 "Geige_Rig:set1" "aiCustomAOVs[10].aovName" " -type \"string\" \"N\""
		2 "Geige_Rig:set1" "aiCustomAOVs[11].aovName" " -type \"string\" \"albedo\""
		
		2 "Geige_Rig:set1" "aiCustomAOVs[12].aovName" " -type \"string\" \"transmission\""
		
		2 "Geige_Rig:set1" "aiCustomAOVs[13].aovName" " -type \"string\" \"volume_opacity\""
		
		2 "Geige_Rig:set2" "aiCustomAOVs" " -s 14"
		2 "Geige_Rig:set2" "aiCustomAOVs[0].aovName" " -type \"string\" \"RGBA\""
		
		2 "Geige_Rig:set2" "aiCustomAOVs[1].aovName" " -type \"string\" \"Z\""
		2 "Geige_Rig:set2" "aiCustomAOVs[2].aovName" " -type \"string\" \"diffuse\""
		
		2 "Geige_Rig:set2" "aiCustomAOVs[3].aovName" " -type \"string\" \"opacity\""
		
		2 "Geige_Rig:set2" "aiCustomAOVs[4].aovName" " -type \"string\" \"direct\""
		
		2 "Geige_Rig:set2" "aiCustomAOVs[5].aovName" " -type \"string\" \"indirect\""
		
		2 "Geige_Rig:set2" "aiCustomAOVs[6].aovName" " -type \"string\" \"specular\""
		
		2 "Geige_Rig:set2" "aiCustomAOVs[7].aovName" " -type \"string\" \"crypto_asset\""
		
		2 "Geige_Rig:set2" "aiCustomAOVs[8].aovName" " -type \"string\" \"AO\""
		2 "Geige_Rig:set2" "aiCustomAOVs[9].aovName" " -type \"string\" \"ID\""
		2 "Geige_Rig:set2" "aiCustomAOVs[10].aovName" " -type \"string\" \"N\""
		2 "Geige_Rig:set2" "aiCustomAOVs[11].aovName" " -type \"string\" \"albedo\""
		
		2 "Geige_Rig:set2" "aiCustomAOVs[12].aovName" " -type \"string\" \"transmission\""
		
		2 "Geige_Rig:set2" "aiCustomAOVs[13].aovName" " -type \"string\" \"volume_opacity\""
		
		2 "Geige_Rig:set3" "aiCustomAOVs" " -s 14"
		2 "Geige_Rig:set3" "aiCustomAOVs[0].aovName" " -type \"string\" \"RGBA\""
		
		2 "Geige_Rig:set3" "aiCustomAOVs[1].aovName" " -type \"string\" \"Z\""
		2 "Geige_Rig:set3" "aiCustomAOVs[2].aovName" " -type \"string\" \"diffuse\""
		
		2 "Geige_Rig:set3" "aiCustomAOVs[3].aovName" " -type \"string\" \"opacity\""
		
		2 "Geige_Rig:set3" "aiCustomAOVs[4].aovName" " -type \"string\" \"direct\""
		
		2 "Geige_Rig:set3" "aiCustomAOVs[5].aovName" " -type \"string\" \"indirect\""
		
		2 "Geige_Rig:set3" "aiCustomAOVs[6].aovName" " -type \"string\" \"specular\""
		
		2 "Geige_Rig:set3" "aiCustomAOVs[7].aovName" " -type \"string\" \"crypto_asset\""
		
		2 "Geige_Rig:set3" "aiCustomAOVs[8].aovName" " -type \"string\" \"AO\""
		2 "Geige_Rig:set3" "aiCustomAOVs[9].aovName" " -type \"string\" \"ID\""
		2 "Geige_Rig:set3" "aiCustomAOVs[10].aovName" " -type \"string\" \"N\""
		2 "Geige_Rig:set3" "aiCustomAOVs[11].aovName" " -type \"string\" \"albedo\""
		
		2 "Geige_Rig:set3" "aiCustomAOVs[12].aovName" " -type \"string\" \"transmission\""
		
		2 "Geige_Rig:set3" "aiCustomAOVs[13].aovName" " -type \"string\" \"volume_opacity\""
		
		2 "Geige_Rig:set5" "aiCustomAOVs" " -s 14"
		2 "Geige_Rig:set5" "aiCustomAOVs[0].aovName" " -type \"string\" \"RGBA\""
		
		2 "Geige_Rig:set5" "aiCustomAOVs[1].aovName" " -type \"string\" \"Z\""
		2 "Geige_Rig:set5" "aiCustomAOVs[2].aovName" " -type \"string\" \"diffuse\""
		
		2 "Geige_Rig:set5" "aiCustomAOVs[3].aovName" " -type \"string\" \"opacity\""
		
		2 "Geige_Rig:set5" "aiCustomAOVs[4].aovName" " -type \"string\" \"direct\""
		
		2 "Geige_Rig:set5" "aiCustomAOVs[5].aovName" " -type \"string\" \"indirect\""
		
		2 "Geige_Rig:set5" "aiCustomAOVs[6].aovName" " -type \"string\" \"specular\""
		
		2 "Geige_Rig:set5" "aiCustomAOVs[7].aovName" " -type \"string\" \"crypto_asset\""
		
		2 "Geige_Rig:set5" "aiCustomAOVs[8].aovName" " -type \"string\" \"AO\""
		2 "Geige_Rig:set5" "aiCustomAOVs[9].aovName" " -type \"string\" \"ID\""
		2 "Geige_Rig:set5" "aiCustomAOVs[10].aovName" " -type \"string\" \"N\""
		2 "Geige_Rig:set5" "aiCustomAOVs[11].aovName" " -type \"string\" \"albedo\""
		
		2 "Geige_Rig:set5" "aiCustomAOVs[12].aovName" " -type \"string\" \"transmission\""
		
		2 "Geige_Rig:set5" "aiCustomAOVs[13].aovName" " -type \"string\" \"volume_opacity\""
		
		2 "Geige_Rig:set6" "aiCustomAOVs" " -s 14"
		2 "Geige_Rig:set6" "aiCustomAOVs[0].aovName" " -type \"string\" \"RGBA\""
		
		2 "Geige_Rig:set6" "aiCustomAOVs[1].aovName" " -type \"string\" \"Z\""
		2 "Geige_Rig:set6" "aiCustomAOVs[2].aovName" " -type \"string\" \"diffuse\""
		
		2 "Geige_Rig:set6" "aiCustomAOVs[3].aovName" " -type \"string\" \"opacity\""
		
		2 "Geige_Rig:set6" "aiCustomAOVs[4].aovName" " -type \"string\" \"direct\""
		
		2 "Geige_Rig:set6" "aiCustomAOVs[5].aovName" " -type \"string\" \"indirect\""
		
		2 "Geige_Rig:set6" "aiCustomAOVs[6].aovName" " -type \"string\" \"specular\""
		
		2 "Geige_Rig:set6" "aiCustomAOVs[7].aovName" " -type \"string\" \"crypto_asset\""
		
		2 "Geige_Rig:set6" "aiCustomAOVs[8].aovName" " -type \"string\" \"AO\""
		2 "Geige_Rig:set6" "aiCustomAOVs[9].aovName" " -type \"string\" \"ID\""
		2 "Geige_Rig:set6" "aiCustomAOVs[10].aovName" " -type \"string\" \"N\""
		2 "Geige_Rig:set6" "aiCustomAOVs[11].aovName" " -type \"string\" \"albedo\""
		
		2 "Geige_Rig:set6" "aiCustomAOVs[12].aovName" " -type \"string\" \"transmission\""
		
		2 "Geige_Rig:set6" "aiCustomAOVs[13].aovName" " -type \"string\" \"volume_opacity\""
		
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
		5 0 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:schraube_low|Geige_Rig:schraube_lowShape.instObjGroups" 
		"Geige_Rig:set5.dagSetMembers" "Geige_RigRN.placeHolderList[1]" "Geige_RigRN.placeHolderList[2]" 
		"Geige_Rig:set3.dsm"
		5 0 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:inside_low|Geige_Rig:inside_lowShape.instObjGroups" 
		"Geige_Rig:set5.dagSetMembers" "Geige_RigRN.placeHolderList[3]" "Geige_RigRN.placeHolderList[4]" 
		"Geige_Rig:set3.dsm"
		5 0 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:saitenhalter_low|Geige_Rig:saitenhalter_lowShape.instObjGroups" 
		"Geige_Rig:set5.dagSetMembers" "Geige_RigRN.placeHolderList[5]" "Geige_RigRN.placeHolderList[6]" 
		"Geige_Rig:set3.dsm"
		5 0 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:metallplatte_low|Geige_Rig:metallplatte_lowShape.instObjGroups" 
		"Geige_Rig:set5.dagSetMembers" "Geige_RigRN.placeHolderList[7]" "Geige_RigRN.placeHolderList[8]" 
		"Geige_Rig:set3.dsm"
		5 0 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:kinnstuetze_low|Geige_Rig:kinnstuetze_lowShape.instObjGroups" 
		"Geige_Rig:set5.dagSetMembers" "Geige_RigRN.placeHolderList[9]" "Geige_RigRN.placeHolderList[10]" 
		"Geige_Rig:set3.dsm"
		5 0 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:hals_low|Geige_Rig:hals_lowShape.instObjGroups" 
		"Geige_Rig:set5.dagSetMembers" "Geige_RigRN.placeHolderList[11]" "Geige_RigRN.placeHolderList[12]" 
		"Geige_Rig:set3.dsm"
		5 0 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:wirbel_low|Geige_Rig:wirbel_low_04|Geige_Rig:wirbel_low_04Shape.instObjGroups" 
		"Geige_Rig:set5.dagSetMembers" "Geige_RigRN.placeHolderList[13]" "Geige_RigRN.placeHolderList[14]" 
		"Geige_Rig:set3.dsm"
		5 0 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:wirbel_low|Geige_Rig:wirbel_low_03|Geige_Rig:wirbel_low_03Shape.instObjGroups" 
		"Geige_Rig:set5.dagSetMembers" "Geige_RigRN.placeHolderList[15]" "Geige_RigRN.placeHolderList[16]" 
		"Geige_Rig:set3.dsm"
		5 0 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:wirbel_low|Geige_Rig:wirbel_low_02|Geige_Rig:wirbel_low_02Shape.instObjGroups" 
		"Geige_Rig:set5.dagSetMembers" "Geige_RigRN.placeHolderList[17]" "Geige_RigRN.placeHolderList[18]" 
		"Geige_Rig:set3.dsm"
		5 0 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:wirbel_low|Geige_Rig:wirbel_low_01|Geige_Rig:wirbel_low_01Shape.instObjGroups" 
		"Geige_Rig:set5.dagSetMembers" "Geige_RigRN.placeHolderList[19]" "Geige_RigRN.placeHolderList[20]" 
		"Geige_Rig:set3.dsm"
		5 0 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:griffbrett_low|Geige_Rig:griffbrett_lowShape.instObjGroups" 
		"Geige_Rig:set5.dagSetMembers" "Geige_RigRN.placeHolderList[21]" "Geige_RigRN.placeHolderList[22]" 
		"Geige_Rig:set3.dsm"
		5 0 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:saiten_low|Geige_Rig:saiten_lowShape.instObjGroups" 
		"Geige_Rig:set5.dagSetMembers" "Geige_RigRN.placeHolderList[23]" "Geige_RigRN.placeHolderList[24]" 
		"Geige_Rig:set3.dsm"
		5 0 "Geige_RigRN" "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:body_low|Geige_Rig:body_lowShape.instObjGroups" 
		"Geige_Rig:set5.dagSetMembers" "Geige_RigRN.placeHolderList[25]" "Geige_RigRN.placeHolderList[26]" 
		"Geige_Rig:set3.dsm"
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:substance_objects|Geige_Rig:geige_low|Geige_Rig:inside_low|Geige_Rig:inside_lowShape.message" "|Stage_Lighting|Gears_Light|Gears_LightShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:bogen_ctrlMiddle|Geige_Rig:bogen_LP_pivotMiddle|Geige_Rig:griff_low|Geige_Rig:griff_lowShape.message" "|Stage_Lighting|BG_Light1|BG_Light1Shape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:bogen_ctrlMiddle|Geige_Rig:bogen_LP_pivotMiddle|Geige_Rig:griff_low|Geige_Rig:griff_lowShape.message" "|Stage_Lighting|aiSkyDomeLight1|aiSkyDomeLightShape1.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:bogen_ctrlMiddle|Geige_Rig:bogen_LP_pivotMiddle|Geige_Rig:griff_low|Geige_Rig:griff_lowShape.message" "|Stage_Lighting|Right_spotLight1|Right_spotLight1Shape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:bogen_ctrlMiddle|Geige_Rig:bogen_LP_pivotMiddle|Geige_Rig:griff_low|Geige_Rig:griff_lowShape.message" "|Stage_Lighting|Gears_Light|Gears_LightShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:bogen_ctrlMiddle|Geige_Rig:bogen_LP_pivotMiddle|Geige_Rig:sehne_low|Geige_Rig:sehne_lowShape.message" "|Stage_Lighting|BG_Light1|BG_Light1Shape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:bogen_ctrlMiddle|Geige_Rig:bogen_LP_pivotMiddle|Geige_Rig:sehne_low|Geige_Rig:sehne_lowShape.message" "|Stage_Lighting|aiSkyDomeLight1|aiSkyDomeLightShape1.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:bogen_ctrlMiddle|Geige_Rig:bogen_LP_pivotMiddle|Geige_Rig:sehne_low|Geige_Rig:sehne_lowShape.message" "|Stage_Lighting|Right_spotLight1|Right_spotLight1Shape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:bogen_ctrlMiddle|Geige_Rig:bogen_LP_pivotMiddle|Geige_Rig:sehne_low|Geige_Rig:sehne_lowShape.message" "|Stage_Lighting|Gears_Light|Gears_LightShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:bogen_ctrlMiddle|Geige_Rig:bogen_LP_pivotMiddle|Geige_Rig:metall_low|Geige_Rig:metall_lowShape.message" "|Stage_Lighting|BG_Light1|BG_Light1Shape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:bogen_ctrlMiddle|Geige_Rig:bogen_LP_pivotMiddle|Geige_Rig:metall_low|Geige_Rig:metall_lowShape.message" "|Stage_Lighting|aiSkyDomeLight1|aiSkyDomeLightShape1.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:bogen_ctrlMiddle|Geige_Rig:bogen_LP_pivotMiddle|Geige_Rig:metall_low|Geige_Rig:metall_lowShape.message" "|Stage_Lighting|Right_spotLight1|Right_spotLight1Shape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:bogen_ctrlMiddle|Geige_Rig:bogen_LP_pivotMiddle|Geige_Rig:metall_low|Geige_Rig:metall_lowShape.message" "|Stage_Lighting|Gears_Light|Gears_LightShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:body_low|Geige_Rig:body_lowShape.message" "|Stage_Lighting|BG_Light1|BG_Light1Shape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:body_low|Geige_Rig:body_lowShape.message" "|Stage_Lighting|aiSkyDomeLight1|aiSkyDomeLightShape1.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:body_low|Geige_Rig:body_lowShape.message" "|Stage_Lighting|Right_spotLight1|Right_spotLight1Shape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:body_low|Geige_Rig:body_lowShape.message" "|Stage_Lighting|Gears_Light|Gears_LightShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:saiten_low|Geige_Rig:saiten_lowShape.message" "|Stage_Lighting|BG_Light1|BG_Light1Shape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:saiten_low|Geige_Rig:saiten_lowShape.message" "|Stage_Lighting|aiSkyDomeLight1|aiSkyDomeLightShape1.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:saiten_low|Geige_Rig:saiten_lowShape.message" "|Stage_Lighting|Right_spotLight1|Right_spotLight1Shape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:saiten_low|Geige_Rig:saiten_lowShape.message" "|Stage_Lighting|Gears_Light|Gears_LightShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:griffbrett_low|Geige_Rig:griffbrett_lowShape.message" "|Stage_Lighting|BG_Light1|BG_Light1Shape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:griffbrett_low|Geige_Rig:griffbrett_lowShape.message" "|Stage_Lighting|aiSkyDomeLight1|aiSkyDomeLightShape1.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:griffbrett_low|Geige_Rig:griffbrett_lowShape.message" "|Stage_Lighting|Right_spotLight1|Right_spotLight1Shape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:griffbrett_low|Geige_Rig:griffbrett_lowShape.message" "|Stage_Lighting|Gears_Light|Gears_LightShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:wirbel_low|Geige_Rig:wirbel_low_01|Geige_Rig:wirbel_low_01Shape.message" "|Stage_Lighting|BG_Light1|BG_Light1Shape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:wirbel_low|Geige_Rig:wirbel_low_01|Geige_Rig:wirbel_low_01Shape.message" "|Stage_Lighting|aiSkyDomeLight1|aiSkyDomeLightShape1.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:wirbel_low|Geige_Rig:wirbel_low_01|Geige_Rig:wirbel_low_01Shape.message" "|Stage_Lighting|Right_spotLight1|Right_spotLight1Shape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:wirbel_low|Geige_Rig:wirbel_low_01|Geige_Rig:wirbel_low_01Shape.message" "|Stage_Lighting|Gears_Light|Gears_LightShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:wirbel_low|Geige_Rig:wirbel_low_02|Geige_Rig:wirbel_low_02Shape.message" "|Stage_Lighting|BG_Light1|BG_Light1Shape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:wirbel_low|Geige_Rig:wirbel_low_02|Geige_Rig:wirbel_low_02Shape.message" "|Stage_Lighting|aiSkyDomeLight1|aiSkyDomeLightShape1.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:wirbel_low|Geige_Rig:wirbel_low_02|Geige_Rig:wirbel_low_02Shape.message" "|Stage_Lighting|Right_spotLight1|Right_spotLight1Shape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:wirbel_low|Geige_Rig:wirbel_low_02|Geige_Rig:wirbel_low_02Shape.message" "|Stage_Lighting|Gears_Light|Gears_LightShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:wirbel_low|Geige_Rig:wirbel_low_03|Geige_Rig:wirbel_low_03Shape.message" "|Stage_Lighting|BG_Light1|BG_Light1Shape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:wirbel_low|Geige_Rig:wirbel_low_03|Geige_Rig:wirbel_low_03Shape.message" "|Stage_Lighting|aiSkyDomeLight1|aiSkyDomeLightShape1.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:wirbel_low|Geige_Rig:wirbel_low_03|Geige_Rig:wirbel_low_03Shape.message" "|Stage_Lighting|Right_spotLight1|Right_spotLight1Shape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:wirbel_low|Geige_Rig:wirbel_low_03|Geige_Rig:wirbel_low_03Shape.message" "|Stage_Lighting|Gears_Light|Gears_LightShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:wirbel_low|Geige_Rig:wirbel_low_04|Geige_Rig:wirbel_low_04Shape.message" "|Stage_Lighting|BG_Light1|BG_Light1Shape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:wirbel_low|Geige_Rig:wirbel_low_04|Geige_Rig:wirbel_low_04Shape.message" "|Stage_Lighting|aiSkyDomeLight1|aiSkyDomeLightShape1.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:wirbel_low|Geige_Rig:wirbel_low_04|Geige_Rig:wirbel_low_04Shape.message" "|Stage_Lighting|Right_spotLight1|Right_spotLight1Shape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:wirbel_low|Geige_Rig:wirbel_low_04|Geige_Rig:wirbel_low_04Shape.message" "|Stage_Lighting|Gears_Light|Gears_LightShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:hals_low|Geige_Rig:hals_lowShape.message" "|Stage_Lighting|BG_Light1|BG_Light1Shape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:hals_low|Geige_Rig:hals_lowShape.message" "|Stage_Lighting|aiSkyDomeLight1|aiSkyDomeLightShape1.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:hals_low|Geige_Rig:hals_lowShape.message" "|Stage_Lighting|Right_spotLight1|Right_spotLight1Shape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:hals_low|Geige_Rig:hals_lowShape.message" "|Stage_Lighting|Gears_Light|Gears_LightShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:kinnstuetze_low|Geige_Rig:kinnstuetze_lowShape.message" "|Stage_Lighting|BG_Light1|BG_Light1Shape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:kinnstuetze_low|Geige_Rig:kinnstuetze_lowShape.message" "|Stage_Lighting|aiSkyDomeLight1|aiSkyDomeLightShape1.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:kinnstuetze_low|Geige_Rig:kinnstuetze_lowShape.message" "|Stage_Lighting|Right_spotLight1|Right_spotLight1Shape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:kinnstuetze_low|Geige_Rig:kinnstuetze_lowShape.message" "|Stage_Lighting|Gears_Light|Gears_LightShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:metallplatte_low|Geige_Rig:metallplatte_lowShape.message" "|Stage_Lighting|BG_Light1|BG_Light1Shape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:metallplatte_low|Geige_Rig:metallplatte_lowShape.message" "|Stage_Lighting|aiSkyDomeLight1|aiSkyDomeLightShape1.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:metallplatte_low|Geige_Rig:metallplatte_lowShape.message" "|Stage_Lighting|Right_spotLight1|Right_spotLight1Shape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:metallplatte_low|Geige_Rig:metallplatte_lowShape.message" "|Stage_Lighting|Gears_Light|Gears_LightShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:saitenhalter_low|Geige_Rig:saitenhalter_lowShape.message" "|Stage_Lighting|BG_Light1|BG_Light1Shape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:saitenhalter_low|Geige_Rig:saitenhalter_lowShape.message" "|Stage_Lighting|aiSkyDomeLight1|aiSkyDomeLightShape1.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:saitenhalter_low|Geige_Rig:saitenhalter_lowShape.message" "|Stage_Lighting|Right_spotLight1|Right_spotLight1Shape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:saitenhalter_low|Geige_Rig:saitenhalter_lowShape.message" "|Stage_Lighting|Gears_Light|Gears_LightShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:inside_low|Geige_Rig:inside_lowShape.message" "|Stage_Lighting|BG_Light1|BG_Light1Shape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:inside_low|Geige_Rig:inside_lowShape.message" "|Stage_Lighting|aiSkyDomeLight1|aiSkyDomeLightShape1.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:inside_low|Geige_Rig:inside_lowShape.message" "|Stage_Lighting|Right_spotLight1|Right_spotLight1Shape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:inside_low|Geige_Rig:inside_lowShape.message" "|Stage_Lighting|Gears_Light|Gears_LightShape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:schraube_low|Geige_Rig:schraube_lowShape.message" "|Stage_Lighting|BG_Light1|BG_Light1Shape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:schraube_low|Geige_Rig:schraube_lowShape.message" "|Stage_Lighting|aiSkyDomeLight1|aiSkyDomeLightShape1.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:schraube_low|Geige_Rig:schraube_lowShape.message" "|Stage_Lighting|Right_spotLight1|Right_spotLight1Shape.message" 
		0
		7 "ignore" ":lightLinker1" 2 "|Geige_Rig:Geige|Geige_Rig:geige_ctrlBottom|Geige_Rig:geige_pivotBottom|Geige_Rig:schraube_low|Geige_Rig:schraube_lowShape.message" "|Stage_Lighting|Gears_Light|Gears_LightShape.message" 
		0;
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "E1186B5D-47E1-296F-C3BD-0C862FCCC73E";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|cam5_woodScraps\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 0\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 0\n            -cameras 0\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 0\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"|persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n"
		+ "            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 0\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 0\n            -controlVertices 1\n            -hulls 1\n            -grid 0\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n"
		+ "            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 0\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1119\n            -height 704\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n"
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
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"|persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n"
		+ "                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n"
		+ "                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n"
		+ "                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 0\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n"
		+ "\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 0\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 0\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1119\\n    -height 704\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 0\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 0\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 0\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1119\\n    -height 704\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "2B51A39F-4409-EF90-7ABD-8A84E92A7BA4";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 1025 -ast 0 -aet 1075 ";
	setAttr ".st" 6;
createNode animCurveTL -n "cam1_translateX";
	rename -uid "1DC83D6D-4E21-7641-218F-76AC631764C4";
	setAttr ".tan" 28;
	setAttr -s 4 ".ktv[0:3]"  0 0 96 0 225 0 352 0.63369708647754508;
	setAttr -s 4 ".kot[0:3]"  18 18 18 18;
createNode animCurveTL -n "cam1_translateY";
	rename -uid "7270D3B6-4A5E-E8A9-B8EF-39B055536EBE";
	setAttr ".tan" 28;
	setAttr -s 4 ".ktv[0:3]"  0 121.93370663554842 96 121.93370663554842
		 225 0.55298721247878768 352 4.2021537400445528;
	setAttr -s 4 ".kit[2:3]"  1 28;
	setAttr -s 4 ".kot[0:3]"  18 18 1 18;
	setAttr -s 4 ".kix[2:3]"  7.5842333273030818 5.2916666666666661;
	setAttr -s 4 ".kiy[2:3]"  -9.5537779443521522 0;
	setAttr -s 4 ".kox[2:3]"  2.4175919998656323 5.2916666666666661;
	setAttr -s 4 ".koy[2:3]"  -3.0454203299092648 0;
createNode animCurveTL -n "cam1_translateZ";
	rename -uid "9C1C987F-4968-8955-A8AA-EFA1C83C091A";
	setAttr ".tan" 1;
	setAttr -s 4 ".ktv[0:3]"  0 222.49890184808683 96 222.49890184808683
		 225 222.49890184808683 352 103.78530409184184;
	setAttr -s 4 ".kit[0:3]"  28 28 1 1;
	setAttr -s 4 ".kot[0:3]"  18 18 1 1;
	setAttr -s 4 ".kix[2:3]"  7.0049574405931168 5.3236266427362953;
	setAttr -s 4 ".kiy[2:3]"  -15.129935533070757 -30.46442985534668;
	setAttr -s 4 ".kox[2:3]"  6.9216254462177549 5.3236267284127621;
	setAttr -s 4 ".koy[2:3]"  -14.94994068145752 -30.464431464683376;
createNode animCurveTA -n "cam1_rotateX";
	rename -uid "F45ADD5A-461C-23F0-5F74-2387F30F819D";
	setAttr ".tan" 28;
	setAttr -s 5 ".ktv[0:4]"  0 0 96 0 225 0 307 0 352 -10.800000000000006;
	setAttr -s 5 ".kit[3:4]"  3 1;
	setAttr -s 5 ".kot[0:4]"  18 18 18 3 1;
	setAttr -s 5 ".kix[4]"  1.9076564641048499;
	setAttr -s 5 ".kiy[4]"  -0.2294392604380846;
	setAttr -s 5 ".kox[4]"  1.9076564482458958;
	setAttr -s 5 ".koy[4]"  -0.22943922623303806;
createNode animCurveTA -n "cam1_rotateY";
	rename -uid "83F8619B-473D-D258-D1F1-25A1287FE67B";
	setAttr ".tan" 28;
	setAttr -s 5 ".ktv[0:4]"  0 0 96 0 225 0 307 0 352 0;
	setAttr -s 5 ".kot[0:4]"  18 18 18 18 18;
createNode animCurveTA -n "cam1_rotateZ";
	rename -uid "38A75F09-4A97-A405-150B-FEB0288C2D0F";
	setAttr ".tan" 28;
	setAttr -s 5 ".ktv[0:4]"  0 0 96 0 225 0 307 0 352 0;
	setAttr -s 5 ".kot[0:4]"  18 18 18 18 18;
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
	setAttr ".specular_roughness" 1;
createNode shadingEngine -n "aiStandardSurface1SG";
	rename -uid "48CFFE43-486D-5782-F8C4-B1981CD6907F";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
	setAttr -s 14 ".aovs";
	setAttr ".aovs[0].aov_name" -type "string" "RGBA";
	setAttr ".aovs[1].aov_name" -type "string" "Z";
	setAttr ".aovs[2].aov_name" -type "string" "diffuse";
	setAttr ".aovs[3].aov_name" -type "string" "opacity";
	setAttr ".aovs[4].aov_name" -type "string" "direct";
	setAttr ".aovs[5].aov_name" -type "string" "indirect";
	setAttr ".aovs[6].aov_name" -type "string" "specular";
	setAttr ".aovs[7].aov_name" -type "string" "crypto_asset";
	setAttr ".aovs[8].aov_name" -type "string" "AO";
	setAttr ".aovs[9].aov_name" -type "string" "ID";
	setAttr ".aovs[10].aov_name" -type "string" "N";
	setAttr ".aovs[11].aov_name" -type "string" "albedo";
	setAttr ".aovs[12].aov_name" -type "string" "transmission";
	setAttr ".aovs[13].aov_name" -type "string" "volume_opacity";
	setAttr ".aal" -type "attributeAlias" {"ai_aov_RGBA","aiCustomAOVs[0]","ai_aov_N"
		,"aiCustomAOVs[10]","ai_aov_albedo","aiCustomAOVs[11]","ai_aov_transmission","aiCustomAOVs[12]"
		,"ai_aov_volume_opacity","aiCustomAOVs[13]","ai_aov_Z","aiCustomAOVs[1]","ai_aov_diffuse"
		,"aiCustomAOVs[2]","ai_aov_opacity","aiCustomAOVs[3]","ai_aov_direct","aiCustomAOVs[4]"
		,"ai_aov_indirect","aiCustomAOVs[5]","ai_aov_specular","aiCustomAOVs[6]","ai_aov_crypto_asset"
		,"aiCustomAOVs[7]","ai_aov_AO","aiCustomAOVs[8]","ai_aov_ID","aiCustomAOVs[9]"} ;
createNode materialInfo -n "materialInfo1";
	rename -uid "2D7BB1D8-47AD-CCFE-7C8C-3E8C804BD535";
createNode file -n "file1";
	rename -uid "2CEF77AA-4CEF-CA7A-EF99-AE94413EEC5A";
	setAttr ".ftn" -type "string" "C:/Users/simon/Desktop/Digital Arts Hagenberg/4. Semester/2. SemProj HIGH STRUNG/High-Strung//assets/2D Planes/Scene 1 Production/s1_l1.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture1";
	rename -uid "76377239-43C8-BD55-D86D-B88374426EF5";
createNode file -n "file2";
	rename -uid "D30EECC6-40A1-1CF3-1A84-3DBD126965C0";
	setAttr ".ftn" -type "string" "C:/Users/simon/Desktop/Digital Arts Hagenberg/4. Semester/2. SemProj HIGH STRUNG/High-Strung//assets/2D Planes/Scene 1 Production/s1_l1_alpha.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture2";
	rename -uid "48BEDAB7-4441-2ACF-A57E-7EA6DFAE19B8";
createNode aiStandardSurface -n "aiStandardSurface2";
	rename -uid "1A26E51C-483C-6EE6-66F7-4F890F684A59";
	setAttr ".specular_roughness" 1;
createNode shadingEngine -n "aiStandardSurface2SG";
	rename -uid "A950A5C0-4E50-0664-6801-47AB95435FAD";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
	setAttr -s 14 ".aovs";
	setAttr ".aovs[0].aov_name" -type "string" "RGBA";
	setAttr ".aovs[1].aov_name" -type "string" "Z";
	setAttr ".aovs[2].aov_name" -type "string" "diffuse";
	setAttr ".aovs[3].aov_name" -type "string" "opacity";
	setAttr ".aovs[4].aov_name" -type "string" "direct";
	setAttr ".aovs[5].aov_name" -type "string" "indirect";
	setAttr ".aovs[6].aov_name" -type "string" "specular";
	setAttr ".aovs[7].aov_name" -type "string" "crypto_asset";
	setAttr ".aovs[8].aov_name" -type "string" "AO";
	setAttr ".aovs[9].aov_name" -type "string" "ID";
	setAttr ".aovs[10].aov_name" -type "string" "N";
	setAttr ".aovs[11].aov_name" -type "string" "albedo";
	setAttr ".aovs[12].aov_name" -type "string" "transmission";
	setAttr ".aovs[13].aov_name" -type "string" "volume_opacity";
	setAttr ".aal" -type "attributeAlias" {"ai_aov_RGBA","aiCustomAOVs[0]","ai_aov_N"
		,"aiCustomAOVs[10]","ai_aov_albedo","aiCustomAOVs[11]","ai_aov_transmission","aiCustomAOVs[12]"
		,"ai_aov_volume_opacity","aiCustomAOVs[13]","ai_aov_Z","aiCustomAOVs[1]","ai_aov_diffuse"
		,"aiCustomAOVs[2]","ai_aov_opacity","aiCustomAOVs[3]","ai_aov_direct","aiCustomAOVs[4]"
		,"ai_aov_indirect","aiCustomAOVs[5]","ai_aov_specular","aiCustomAOVs[6]","ai_aov_crypto_asset"
		,"aiCustomAOVs[7]","ai_aov_AO","aiCustomAOVs[8]","ai_aov_ID","aiCustomAOVs[9]"} ;
createNode materialInfo -n "materialInfo2";
	rename -uid "61791212-401D-40BB-00A9-A7BE8DE64384";
createNode file -n "file3";
	rename -uid "9402CD49-41D5-B48A-C2F6-C59ED31014F1";
	setAttr ".ftn" -type "string" "C:/Users/simon/Desktop/Digital Arts Hagenberg/4. Semester/2. SemProj HIGH STRUNG/High-Strung//assets/2D Planes/Scene 1 Production/s1_l2_v2.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture3";
	rename -uid "D56AE7F2-4229-FA4B-625E-F8937151F08E";
createNode file -n "file4";
	rename -uid "0C858138-4A18-3DEA-CBCB-6C9B16CB14A6";
	setAttr ".ftn" -type "string" "C:/Users/simon/Desktop/Digital Arts Hagenberg/4. Semester/2. SemProj HIGH STRUNG/High-Strung//assets/2D Planes/Scene 1 Production/s1_l2_v2_alpha.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture4";
	rename -uid "61028E75-41F7-6014-8E0E-308B48BDAA4E";
createNode aiStandardSurface -n "aiStandardSurface3";
	rename -uid "4C628C2D-4A79-6800-4348-05AF52BD786F";
	setAttr ".specular_roughness" 1;
createNode shadingEngine -n "aiStandardSurface3SG";
	rename -uid "63E3226A-42B2-3678-AF7B-4B924435BBB2";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
	setAttr -s 14 ".aovs";
	setAttr ".aovs[0].aov_name" -type "string" "RGBA";
	setAttr ".aovs[1].aov_name" -type "string" "Z";
	setAttr ".aovs[2].aov_name" -type "string" "diffuse";
	setAttr ".aovs[3].aov_name" -type "string" "opacity";
	setAttr ".aovs[4].aov_name" -type "string" "direct";
	setAttr ".aovs[5].aov_name" -type "string" "indirect";
	setAttr ".aovs[6].aov_name" -type "string" "specular";
	setAttr ".aovs[7].aov_name" -type "string" "crypto_asset";
	setAttr ".aovs[8].aov_name" -type "string" "AO";
	setAttr ".aovs[9].aov_name" -type "string" "ID";
	setAttr ".aovs[10].aov_name" -type "string" "N";
	setAttr ".aovs[11].aov_name" -type "string" "albedo";
	setAttr ".aovs[12].aov_name" -type "string" "transmission";
	setAttr ".aovs[13].aov_name" -type "string" "volume_opacity";
	setAttr ".aal" -type "attributeAlias" {"ai_aov_RGBA","aiCustomAOVs[0]","ai_aov_N"
		,"aiCustomAOVs[10]","ai_aov_albedo","aiCustomAOVs[11]","ai_aov_transmission","aiCustomAOVs[12]"
		,"ai_aov_volume_opacity","aiCustomAOVs[13]","ai_aov_Z","aiCustomAOVs[1]","ai_aov_diffuse"
		,"aiCustomAOVs[2]","ai_aov_opacity","aiCustomAOVs[3]","ai_aov_direct","aiCustomAOVs[4]"
		,"ai_aov_indirect","aiCustomAOVs[5]","ai_aov_specular","aiCustomAOVs[6]","ai_aov_crypto_asset"
		,"aiCustomAOVs[7]","ai_aov_AO","aiCustomAOVs[8]","ai_aov_ID","aiCustomAOVs[9]"} ;
createNode materialInfo -n "materialInfo3";
	rename -uid "59CC2457-492B-0482-237C-FE99837A808C";
createNode file -n "file5";
	rename -uid "5B849DB4-4173-3F75-ADAC-2287423F2E3B";
	setAttr ".ftn" -type "string" "C:/Users/simon/Desktop/Digital Arts Hagenberg/4. Semester/2. SemProj HIGH STRUNG/High-Strung//assets/2D Planes/Scene 1 Production/s1_l3.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture5";
	rename -uid "784B3B6F-4D4B-2C6F-8249-F694DE90FAD3";
createNode aiStandardSurface -n "aiStandardSurface4";
	rename -uid "A1B07764-4EBB-035E-4A75-B5BD2263DC1E";
	setAttr ".specular_roughness" 1;
createNode shadingEngine -n "aiStandardSurface4SG";
	rename -uid "BBBFF0E8-407B-4B0D-4F3E-829C8CA14ABA";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
	setAttr -s 14 ".aovs";
	setAttr ".aovs[0].aov_name" -type "string" "RGBA";
	setAttr ".aovs[1].aov_name" -type "string" "Z";
	setAttr ".aovs[2].aov_name" -type "string" "diffuse";
	setAttr ".aovs[3].aov_name" -type "string" "opacity";
	setAttr ".aovs[4].aov_name" -type "string" "direct";
	setAttr ".aovs[5].aov_name" -type "string" "indirect";
	setAttr ".aovs[6].aov_name" -type "string" "specular";
	setAttr ".aovs[7].aov_name" -type "string" "crypto_asset";
	setAttr ".aovs[8].aov_name" -type "string" "AO";
	setAttr ".aovs[9].aov_name" -type "string" "ID";
	setAttr ".aovs[10].aov_name" -type "string" "N";
	setAttr ".aovs[11].aov_name" -type "string" "albedo";
	setAttr ".aovs[12].aov_name" -type "string" "transmission";
	setAttr ".aovs[13].aov_name" -type "string" "volume_opacity";
	setAttr ".aal" -type "attributeAlias" {"ai_aov_RGBA","aiCustomAOVs[0]","ai_aov_N"
		,"aiCustomAOVs[10]","ai_aov_albedo","aiCustomAOVs[11]","ai_aov_transmission","aiCustomAOVs[12]"
		,"ai_aov_volume_opacity","aiCustomAOVs[13]","ai_aov_Z","aiCustomAOVs[1]","ai_aov_diffuse"
		,"aiCustomAOVs[2]","ai_aov_opacity","aiCustomAOVs[3]","ai_aov_direct","aiCustomAOVs[4]"
		,"ai_aov_indirect","aiCustomAOVs[5]","ai_aov_specular","aiCustomAOVs[6]","ai_aov_crypto_asset"
		,"aiCustomAOVs[7]","ai_aov_AO","aiCustomAOVs[8]","ai_aov_ID","aiCustomAOVs[9]"} ;
createNode materialInfo -n "materialInfo4";
	rename -uid "EB2DE0B7-4417-7A6B-B370-109C3C0532A8";
createNode file -n "file6";
	rename -uid "29564E53-4C04-7413-E8E6-D48CDBC8C8BF";
	setAttr ".ftn" -type "string" "C:/Users/simon/Desktop/Digital Arts Hagenberg/4. Semester/2. SemProj HIGH STRUNG/High-Strung//assets/2D Planes/Stage Curtains/curtains.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture6";
	rename -uid "45B55F6C-43FB-8447-0248-B89A3BAABE7A";
createNode file -n "file7";
	rename -uid "7C655B0A-4D14-A669-4F7D-FF85BEB6E3DA";
	setAttr ".ftn" -type "string" "C:/Users/simon/Desktop/Digital Arts Hagenberg/4. Semester/2. SemProj HIGH STRUNG/High-Strung//assets/2D Planes/Stage Curtains/alpha_curtains.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture7";
	rename -uid "8B44F9CE-48CC-3D66-6E8C-8798ABE2AF97";
createNode aiStandardSurface -n "aiStandardSurface5";
	rename -uid "1A0C1696-413F-7BA4-6049-2CA973BBDF13";
	setAttr ".specular_roughness" 1;
createNode shadingEngine -n "aiStandardSurface5SG";
	rename -uid "C3F35DB8-4353-FE4C-5776-6ABAF1A26302";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
	setAttr -s 14 ".aovs";
	setAttr ".aovs[0].aov_name" -type "string" "RGBA";
	setAttr ".aovs[1].aov_name" -type "string" "Z";
	setAttr ".aovs[2].aov_name" -type "string" "diffuse";
	setAttr ".aovs[3].aov_name" -type "string" "opacity";
	setAttr ".aovs[4].aov_name" -type "string" "direct";
	setAttr ".aovs[5].aov_name" -type "string" "indirect";
	setAttr ".aovs[6].aov_name" -type "string" "specular";
	setAttr ".aovs[7].aov_name" -type "string" "crypto_asset";
	setAttr ".aovs[8].aov_name" -type "string" "AO";
	setAttr ".aovs[9].aov_name" -type "string" "ID";
	setAttr ".aovs[10].aov_name" -type "string" "N";
	setAttr ".aovs[11].aov_name" -type "string" "albedo";
	setAttr ".aovs[12].aov_name" -type "string" "transmission";
	setAttr ".aovs[13].aov_name" -type "string" "volume_opacity";
	setAttr ".aal" -type "attributeAlias" {"ai_aov_RGBA","aiCustomAOVs[0]","ai_aov_N"
		,"aiCustomAOVs[10]","ai_aov_albedo","aiCustomAOVs[11]","ai_aov_transmission","aiCustomAOVs[12]"
		,"ai_aov_volume_opacity","aiCustomAOVs[13]","ai_aov_Z","aiCustomAOVs[1]","ai_aov_diffuse"
		,"aiCustomAOVs[2]","ai_aov_opacity","aiCustomAOVs[3]","ai_aov_direct","aiCustomAOVs[4]"
		,"ai_aov_indirect","aiCustomAOVs[5]","ai_aov_specular","aiCustomAOVs[6]","ai_aov_crypto_asset"
		,"aiCustomAOVs[7]","ai_aov_AO","aiCustomAOVs[8]","ai_aov_ID","aiCustomAOVs[9]"} ;
createNode materialInfo -n "materialInfo5";
	rename -uid "CA0B5861-4F59-0070-D820-9393016D7DD6";
createNode file -n "file8";
	rename -uid "3F518810-4317-31EC-20B5-63A3244382B4";
	setAttr ".ftn" -type "string" "C:/Users/simon/Desktop/Digital Arts Hagenberg/4. Semester/2. SemProj HIGH STRUNG/High-Strung//assets/2D Planes/Stage Curtains/NEW_Curtain_left.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture8";
	rename -uid "330349BF-4478-F0BB-BE02-0E8C75D9A1D7";
createNode file -n "file9";
	rename -uid "EF25CE9B-474E-0299-C4EE-119B5E9A7DA1";
	setAttr ".ftn" -type "string" "C:/Users/simon/Desktop/Digital Arts Hagenberg/4. Semester/2. SemProj HIGH STRUNG/High-Strung//assets/2D Planes/Stage Curtains/Curtains_left_alpha.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture9";
	rename -uid "0F20AB2E-45CF-1557-6328-738767FB2B3C";
createNode aiStandardSurface -n "aiStandardSurface6";
	rename -uid "2FE65438-41CD-A4FD-9C42-F79D8286D242";
	setAttr ".specular_roughness" 1;
createNode shadingEngine -n "aiStandardSurface6SG";
	rename -uid "4AD0A350-4EA2-C276-ECC5-D79439F314B2";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
	setAttr -s 14 ".aovs";
	setAttr ".aovs[0].aov_name" -type "string" "RGBA";
	setAttr ".aovs[1].aov_name" -type "string" "Z";
	setAttr ".aovs[2].aov_name" -type "string" "diffuse";
	setAttr ".aovs[3].aov_name" -type "string" "opacity";
	setAttr ".aovs[4].aov_name" -type "string" "direct";
	setAttr ".aovs[5].aov_name" -type "string" "indirect";
	setAttr ".aovs[6].aov_name" -type "string" "specular";
	setAttr ".aovs[7].aov_name" -type "string" "crypto_asset";
	setAttr ".aovs[8].aov_name" -type "string" "AO";
	setAttr ".aovs[9].aov_name" -type "string" "ID";
	setAttr ".aovs[10].aov_name" -type "string" "N";
	setAttr ".aovs[11].aov_name" -type "string" "albedo";
	setAttr ".aovs[12].aov_name" -type "string" "transmission";
	setAttr ".aovs[13].aov_name" -type "string" "volume_opacity";
	setAttr ".aal" -type "attributeAlias" {"ai_aov_RGBA","aiCustomAOVs[0]","ai_aov_N"
		,"aiCustomAOVs[10]","ai_aov_albedo","aiCustomAOVs[11]","ai_aov_transmission","aiCustomAOVs[12]"
		,"ai_aov_volume_opacity","aiCustomAOVs[13]","ai_aov_Z","aiCustomAOVs[1]","ai_aov_diffuse"
		,"aiCustomAOVs[2]","ai_aov_opacity","aiCustomAOVs[3]","ai_aov_direct","aiCustomAOVs[4]"
		,"ai_aov_indirect","aiCustomAOVs[5]","ai_aov_specular","aiCustomAOVs[6]","ai_aov_crypto_asset"
		,"aiCustomAOVs[7]","ai_aov_AO","aiCustomAOVs[8]","ai_aov_ID","aiCustomAOVs[9]"} ;
createNode materialInfo -n "materialInfo6";
	rename -uid "042F67BE-4F18-E8B2-C181-4897A0E4CE29";
createNode file -n "file10";
	rename -uid "4B43C299-4DAF-A40B-03FA-9E9314233A07";
	setAttr ".ftn" -type "string" "C:/Users/simon/Desktop/Digital Arts Hagenberg/4. Semester/2. SemProj HIGH STRUNG/High-Strung//assets/2D Planes/Stage Curtains/NEW_Curtain_right.png";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture10";
	rename -uid "3A0F7CCF-42D7-9C88-245C-1D8684DF8260";
createNode file -n "file11";
	rename -uid "EB7D7A0B-4A84-388F-25AD-F494AF763CDF";
	setAttr ".ftn" -type "string" "C:/Users/simon/Desktop/Digital Arts Hagenberg/4. Semester/2. SemProj HIGH STRUNG/High-Strung//assets/2D Planes/Stage Curtains/Curtains_right_alpha.png";
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
	setAttr ".tsp" 425;
	setAttr ".prty" 5;
createNode timeSliderBookmark -n "timeSliderBookmark6";
	rename -uid "B7D66E54-472E-2135-EA3C-7D893E4BF483";
	setAttr ".nm" -type "string" "Makro Body Close Up";
	setAttr ".c" -type "float3" 0.45490196 0.27843139 0.7019608 ;
	setAttr ".tst" 425;
	setAttr ".tsp" 504;
	setAttr ".prty" 6;
createNode timeSliderBookmark -n "timeSliderBookmark7";
	rename -uid "8E945A3D-42A9-0A78-F061-F48DDFA4E40C";
	setAttr ".nm" -type "string" "Makro Wood Scraps";
	setAttr ".c" -type "float3" 0.49019608 0.38431373 0.24313726 ;
	setAttr ".tst" 504;
	setAttr ".tsp" 679;
	setAttr ".prty" 7;
createNode timeSliderBookmark -n "timeSliderBookmark8";
	rename -uid "C8750D10-45CB-675E-962D-DFA4504CF6A2";
	setAttr ".nm" -type "string" "Full Shot";
	setAttr ".c" -type "float3" 0.23529412 0.23529412 0.23529412 ;
	setAttr ".tst" 680;
	setAttr ".tsp" 772;
	setAttr ".prty" 8;
createNode trackInfoManager -n "trackInfoManager1";
	rename -uid "0C9E9562-4020-8657-05BD-F79DF74EE552";
	setAttr -s 4 ".ti";
	setAttr ".ti[0].t" -type "string" "";
	setAttr ".ti[1].t" -type "string" "";
	setAttr ".ti[2].t" -type "string" "";
	setAttr ".ti[3].t" -type "string" "";
createNode sequencer -n "sequencer1";
	rename -uid "05836156-47D2-6F7E-9EFF-2B9D59F8755C";
	setAttr ".mnf" 0;
	setAttr ".mxf" 1025;
	setAttr -s 16 ".shts";
createNode shot -n "EstablishingShots";
	rename -uid "66BCDE57-4061-6277-3277-CA9FC1E0B33D";
	setAttr ".ef" 287;
	setAttr ".cv" no;
	setAttr ".ts" 4;
	setAttr ".sn" -type "string" "EstablishingShots";
	setAttr ".wres" 1024;
createNode shot -n "Makro_Violin_Top";
	rename -uid "337B5096-43D9-9BC0-54CD-28B4DD2F4294";
	setAttr ".sf" 288;
	setAttr ".ef" 359;
	setAttr ".ssf" 288;
	setAttr ".czo" 8;
	setAttr ".cv" no;
	setAttr ".ts" 4;
	setAttr ".sn" -type "string" "Makro_Violin_Top";
	setAttr ".wres" 1024;
createNode shot -n "Makro_Schnecke";
	rename -uid "89BFDB4C-43C9-B0CD-FD1D-E0978EE44B16";
	setAttr ".sf" 360;
	setAttr ".ef" 431;
	setAttr ".ssf" 360;
	setAttr ".cv" no;
	setAttr ".ts" 4;
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
	setAttr ".ts" 4;
	setAttr ".sn" -type "string" "Makro_Body_CloseUp";
	setAttr ".wres" 1024;
createNode shot -n "Makro_WoodScraps";
	rename -uid "9A144EC6-443F-8BD8-0BD0-31927D53052A";
	setAttr ".sf" 504;
	setAttr ".ef" 680;
	setAttr ".ssf" 504;
	setAttr ".cv" no;
	setAttr ".ts" 4;
	setAttr ".sn" -type "string" "Makro_WoodScraps";
	setAttr ".wres" 1024;
createNode animCurveTL -n "left_curtain_translateX";
	rename -uid "278D4FBF-4762-DA32-D71F-E183FE7538C4";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  0 -142 818 -130.11813575725938 893.0000022108843 -100
		 1014.9115045918368 -50;
	setAttr -s 4 ".kit[0:3]"  1 28 18 28;
	setAttr -s 4 ".kot[0:3]"  5 5 18 18;
	setAttr -s 4 ".kix[0:3]"  15.5 34.083333333333336 3.1250000921201817 
		5.0796459325396768;
	setAttr -s 4 ".kiy[0:3]"  0 35.645592728221857 30.51553727844248 
		0;
createNode animCurveTL -n "right_curtain_translateX";
	rename -uid "99AB52E4-403E-9488-0137-2996936D2E71";
	setAttr ".tan" 28;
	setAttr -s 4 ".ktv[0:3]"  0 142 818 131.57936228516934 893 100 1015 50;
	setAttr -s 4 ".kot[0:3]"  5 5 18 18;
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
	setAttr ".sf" 780;
	setAttr ".ef" 960;
	setAttr ".ssf" 681;
	setAttr ".czo" 228;
	setAttr ".cv" no;
	setAttr ".ts" 4;
	setAttr ".sn" -type "string" "Front_Curtain";
	setAttr ".wres" 1024;
createNode animCurveTL -n "cam6_frontCurtain_translateZ";
	rename -uid "5E97CECA-41CE-3E13-FE27-14B253369F4A";
	setAttr ".tan" 2;
	setAttr -s 2 ".ktv[0:1]"  775 142.12337164678365 815 167;
createNode animCurveTA -n "cam6_frontCurtain_rotateX";
	rename -uid "D12D5B06-4290-5FB8-2E57-2AB1FC8E592F";
	setAttr ".tan" 28;
	setAttr -s 2 ".ktv[0:1]"  775 -8.4000000000000057 815 0;
	setAttr -s 2 ".kot[0:1]"  18 18;
createNode animCurveTA -n "cam6_frontCurtain_rotateY";
	rename -uid "120C8E01-41C0-F577-F0D3-3484A6881B94";
	setAttr ".tan" 28;
	setAttr -s 2 ".ktv[0:1]"  775 -0.40000000000000113 815 0;
	setAttr -s 2 ".kot[0:1]"  18 18;
createNode animCurveTA -n "cam6_frontCurtain_rotateZ";
	rename -uid "88788631-40ED-86C5-60AA-549ABE706980";
	setAttr ".tan" 28;
	setAttr ".ktv[0]"  815 0;
	setAttr ".kot[0]"  18;
createNode animCurveTL -n "cam6_frontCurtain_translateY";
	rename -uid "0B751261-4621-A4A7-A080-E6AFFFA46A82";
	setAttr ".tan" 28;
	setAttr -s 2 ".ktv[0:1]"  775 3.3063357351228677 815 -1.373587163303597;
	setAttr -s 2 ".kot[0:1]"  18 18;
createNode shot -n "EstablishingShot";
	rename -uid "CBF25104-477B-9271-C90E-FF8729701DE4";
	setAttr ".ef" 287;
	setAttr ".cv" no;
	setAttr ".tk" 2;
	setAttr ".ts" 4;
	setAttr ".sn" -type "string" "EstablishingShot";
	setAttr ".wres" 1024;
createNode shot -n "EstablishingShot1";
	rename -uid "FAB2DAD9-4F3E-7664-FBC8-AEAD967B0AEA";
	setAttr ".sf" 288;
	setAttr ".ef" 359;
	setAttr ".ssf" 288;
	setAttr ".cv" no;
	setAttr ".tk" 2;
	setAttr ".ts" 4;
	setAttr ".sn" -type "string" "Makro_TopViolin";
	setAttr ".wres" 1024;
createNode shot -n "EstablishingShot2";
	rename -uid "142F3A31-4E9E-1427-7827-4AAD63D23CDE";
	setAttr ".sf" 360;
	setAttr ".ef" 431;
	setAttr ".ssf" 360;
	setAttr ".cv" no;
	setAttr ".tk" 2;
	setAttr ".ts" 4;
	setAttr ".sn" -type "string" "Makro_Schnecke";
	setAttr ".wres" 1024;
createNode shot -n "Makro_Body";
	rename -uid "C58AA8D2-4D0A-D644-2778-AEAB18F9732D";
	setAttr ".sf" 432;
	setAttr ".ef" 503;
	setAttr ".ssf" 432;
	setAttr ".cv" no;
	setAttr ".tk" 2;
	setAttr ".ts" 4;
	setAttr ".sn" -type "string" "Makro_Body";
	setAttr ".wres" 1024;
createNode shot -n "Makro_Body1";
	rename -uid "1F54490A-4213-27E5-47CE-239C3E533352";
	setAttr ".sf" 504;
	setAttr ".ef" 960;
	setAttr ".ssf" 504;
	setAttr ".cv" no;
	setAttr ".tk" 2;
	setAttr ".ts" 4;
	setAttr ".sn" -type "string" "Makro_Body1";
	setAttr ".wres" 1024;
createNode animCurveTL -n "ubercam_translateX";
	rename -uid "8D2355FA-4B3D-6DE1-5F36-0B8DB5032BA6";
	setAttr ".tan" 1;
	setAttr -s 15 ".ktv[0:14]"  0 0 96 0 168 0 287 0.63256638690346878 288 -2.0507702055340831
		 359 -0.54349230400377868 360 3.7636090557319504 431 4.2864706773934449 432 -6.4837965587865716
		 503 -4.9832385211399322 504 -22.137790393056566 553 -21.358539018585468 700 -18.164382550752485
		 800 -0.13221912347184173 960 -0.13221912347184173;
	setAttr -s 15 ".kot[3:14]"  5 1 5 1 5 1 5 1 
		1 1 1 5;
	setAttr -s 15 ".kix[0:14]"  4 4 3 4.9583333333333304 1 1 0.041666666666662522 
		2.9583333333333321 0.041666666666667851 2.9583333333333321 0.041666666666667851 2.0416666666666714 
		6.125 4.1666666666666679 6.6666666666666643;
	setAttr -s 15 ".kiy[0:14]"  0 0 0 0.08895464815830012 0 0 0.0073642481924154346 
		0.52286162166149452 0.021134620248544955 1.5005580376466385 0.0010513570245329618 
		0.9884408655091157 9.5824694034989477 0 0;
	setAttr -s 15 ".kox[0:14]"  4 3 4.9583333333333357 0 2.9583333333333339 
		0 2.9583333333333321 0 2.9583333333333321 0 2.0416666666666714 6.125 4.1666666666666679 
		6.6666666666666643 0;
	setAttr -s 15 ".koy[0:14]"  0 0 0 0 1.5072779015303044 0 0.52286162166149452 
		0 1.5005580376466385 0 0.051516494201880647 2.965322596527356 6.5186866690469056 
		0 0;
createNode animCurveTL -n "ubercam_translateY";
	rename -uid "49379C6B-475A-A337-92B5-6C92B4763768";
	setAttr ".tan" 1;
	setAttr -s 15 ".ktv[0:14]"  0 121.93370663554842 96 121.93370663554842
		 168 0.55298538569004307 287 4.1956425642918971 288 -1.586285232646004 359 -1.4439676153601007
		 360 -10.614428033605876 431 -10.458148746291046 432 -12.61654120044072 503 -12.702592493746026
		 504 -23.382642668021958 553 -23.226744114850611 700 -16.462912949485869 800 -1.9409421501779645
		 960 -1.9409421501779645;
	setAttr -s 15 ".kot[3:14]"  5 1 5 1 5 1 5 1 
		1 1 1 5;
	setAttr -s 15 ".kix[0:14]"  4 4 3 4.9583333333333304 1 1 0.041666666666662522 
		2.9583333333333321 0.041666666666667851 2.9583333333333321 0.041666666666667851 2.0416666666666714 
		6.125 4.1666666666666679 6.6666666666666643;
	setAttr -s 15 ".kiy[0:14]"  0 0 0 0.51224866574088601 0 0 0.0022011167227447004 
		0.15627928731483109 -0.0012119900465528133 -0.086051293305308363 3.7415952043318157e-06 
		0.45834541308706633 12.668068375736352 0 0;
	setAttr -s 15 ".kox[0:14]"  4 3 4.9583333333333357 0 2.9583333333333339 
		0 2.9583333333333321 0 2.9583333333333321 0 2.0416666666666714 6.125 4.1666666666666679 
		6.6666666666666643 0;
	setAttr -s 15 ".koy[0:14]"  0 0 0 0 0.14231761728590331 0 0.15627928731483109 
		0 -0.086051293305308363 0 0.00018333816523607993 1.3750362392611841 8.6177335889362965 
		0 0;
createNode animCurveTL -n "ubercam_translateZ";
	rename -uid "4EDA4A1F-445E-784C-0968-A78B35108D89";
	setAttr ".tan" 1;
	setAttr -s 15 ".ktv[0:14]"  0 222.49890184808683 96 222.49890184808683
		 168 222.49890184808683 287 103.99712361458289 288 31.269736351484219 359 31.118183482102058
		 360 19.180040612125051 431 19.080270530977735 432 27.181834902694924 503 26.836266531893028
		 504 36.038571462803048 553 36.44858189022667 700 63.28732355579443 800 168.20199294710071
		 960 168.20199294710071;
	setAttr -s 15 ".kot[3:14]"  5 1 5 1 5 1 5 1 
		1 1 1 5;
	setAttr -s 15 ".kix[0:14]"  4 4 3 4.9583333333333304 1 1 0.041666666666662522 
		2.9583333333333321 0.041666666666667851 2.9583333333333321 0.041666666666667851 2.0416666666666714 
		6.125 4.1666666666666679 6.6666666666666643;
	setAttr -s 15 ".kiy[0:14]"  0 0 0 -16.664312564086515 0 0 -0.0014052124105283781 
		-0.099770081147312339 -0.0048671601521377283 -0.34556837080189595 9.8403289783277614e-06 
		1.205440300147842 78.411949090528267 0 0;
	setAttr -s 15 ".kox[0:14]"  4 3 4.9583333333333357 0 2.9583333333333339 
		0 2.9583333333333321 0 2.9583333333333321 0 2.0416666666666714 6.125 4.1666666666666679 
		6.6666666666666643 0;
	setAttr -s 15 ".koy[0:14]"  0 0 0 0 -0.1515528693821615 0 -0.099770081147312339 
		0 -0.34556837080189595 0 0.000482176120065958 3.6163209004435344 53.341461966345769 
		0 0;
createNode animCurveTA -n "ubercam_rotateX";
	rename -uid "AEAE9C8D-4100-DF17-EA9A-85B891DDA974";
	setAttr ".tan" 1;
	setAttr -s 16 ".ktv[0:15]"  0 0 96 0 168 0 245 0 287 -9.9127856554693619
		 288 -46.799999999988195 359 -46.799999999988195 360 -64.80000000000156 431 -64.80000000000156
		 432 -18.954791085768715 503 -20.121914373440262 504 -50.399999999978739 553 -50.4
		 700 -21.000000000000423 800 0 960 0;
	setAttr -s 16 ".kot[4:15]"  5 1 5 1 5 1 5 1 
		1 1 1 5;
	setAttr -s 16 ".kix[0:15]"  4 4 3 3.2083333333333339 1.7747641261231646 
		1 1 0.041666666666666075 2.9583333333333321 0.041666666666667851 2.9583333333333321 
		0.041666666666667851 2.0416666666666714 6.125 4.1666666666666679 6.6666666666666643;
	setAttr -s 16 ".kiy[0:15]"  0 0 0 0 -0.22567095436271384 0 0 0 0 -0.00028690343868403856 
		-0.020370144146569569 0 0 0.52351398227431523 0 0;
	setAttr -s 16 ".kox[0:15]"  4 3 3.2083333333333339 1.7518720896383098 
		0 1 0 2.9583333333333321 0 2.9583333333333321 0 2.0416666666666714 6.125 4.1666666666666679 
		6.6666666666666643 0;
	setAttr -s 16 ".koy[0:15]"  0 0 0 0 0 0 0 0 0 -0.020370144146569569 
		0 0 0 0.35613196073082681 0 0;
createNode animCurveTA -n "ubercam_rotateY";
	rename -uid "F557B8B4-430E-3700-0F07-4CA652F70D6A";
	setAttr ".tan" 1;
	setAttr -s 16 ".ktv[0:15]"  0 0 96 0 168 0 245 0 287 0 288 0 359 0 360 -27.800000000000505
		 431 -27.800000000000505 432 -21.273972602741019 503 -12.32602739726185 504 -46.989461246702938
		 553 -34.200000000002611 700 -0.60000000000291731 800 0 960 0;
	setAttr -s 16 ".kot[4:15]"  5 1 5 1 5 1 5 1 
		1 1 1 5;
	setAttr -s 16 ".kix[0:15]"  4 4 3 3.2083333333333339 1.7499999999999964 
		1 1 0.041666666666666075 2.9583333333333321 0.041666666666667851 2.9583333333333321 
		0.041666666666667851 2.0416666666666714 6.125 4.1666666666666679 6.6666666666666643;
	setAttr -s 16 ".kiy[0:15]"  0 0 0 0 0 0 0 0 0 0.0021995930299106292 
		0.15617110512365201 0.00036594178445847891 0.20143048666671393 0.046181412007994485 
		0 0;
	setAttr -s 16 ".kox[0:15]"  4 3 3.2083333333333339 1.7500000000000018 
		0 1 0 2.9583333333333321 0 2.9583333333333321 0 2.0416666666666714 6.125 4.1666666666666679 
		6.6666666666666643 0;
	setAttr -s 16 ".koy[0:15]"  0 0 0 0 0 0 0 0 0 0.15617110512365201 0 
		0.017931147438463468 0.60429146000014189 0.03141592653605068 0 0;
createNode animCurveTL -n "ubercamShape_centerOfInterest";
	rename -uid "24A1B946-436D-C79C-9048-1690231215C6";
	setAttr ".tan" 1;
	setAttr -s 10 ".ktv[0:9]"  0 19.084343962828534 287 19.084343962828534
		 288 20.348584844376209 359 20.348584844376209 360 19.699672775274205 431 19.699672775274205
		 432 1.297929766174637 503 1.297929766174637 504 138.23590786445791 960 138.23590786445791;
	setAttr -s 10 ".kot[1:9]"  5 1 5 1 5 1 5 1 
		5;
	setAttr -s 10 ".kwl[0:9]" yes yes yes yes yes yes yes yes yes yes;
	setAttr -s 10 ".kix[0:9]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 0 0 0;
	setAttr -s 10 ".kox[0:9]"  1 0 1 0 1 0 1 0 1 0;
	setAttr -s 10 ".koy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "ubercamShape_tumblePivotX";
	rename -uid "C109545D-4B4A-1944-773B-63B10CE0439B";
	setAttr ".tan" 1;
	setAttr -s 10 ".ktv[0:9]"  0 0 287 0 288 0 359 0 360 0 431 0 432 -7.3468483642380589
		 503 -7.3468483642380589 504 0 960 0;
	setAttr -s 10 ".kot[1:9]"  5 1 5 1 5 1 5 1 
		5;
	setAttr -s 10 ".kwl[0:9]" yes yes yes yes yes yes yes yes yes yes;
	setAttr -s 10 ".kix[0:9]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 0 0 0;
	setAttr -s 10 ".kox[0:9]"  1 0 1 0 1 0 1 0 1 0;
	setAttr -s 10 ".koy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "ubercamShape_tumblePivotY";
	rename -uid "8D76ADB4-41C2-5C0B-D2DA-58AAB907149E";
	setAttr ".tan" 1;
	setAttr -s 10 ".ktv[0:9]"  0 0 287 0 288 0 359 0 360 0 431 0 432 -13.648611056607647
		 503 -13.648611056607647 504 0 960 0;
	setAttr -s 10 ".kot[1:9]"  5 1 5 1 5 1 5 1 
		5;
	setAttr -s 10 ".kwl[0:9]" yes yes yes yes yes yes yes yes yes yes;
	setAttr -s 10 ".kix[0:9]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 0 0 0;
	setAttr -s 10 ".kox[0:9]"  1 0 1 0 1 0 1 0 1 0;
	setAttr -s 10 ".koy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "ubercamShape_tumblePivotZ";
	rename -uid "F19F1D1D-401F-4803-7D3A-62AE3609CDB6";
	setAttr ".tan" 1;
	setAttr -s 10 ".ktv[0:9]"  0 0 287 0 288 0 359 0 360 0 431 0 432 26.194380612301771
		 503 26.194380612301771 504 0 960 0;
	setAttr -s 10 ".kot[1:9]"  5 1 5 1 5 1 5 1 
		5;
	setAttr -s 10 ".kwl[0:9]" yes yes yes yes yes yes yes yes yes yes;
	setAttr -s 10 ".kix[0:9]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 0 0 0;
	setAttr -s 10 ".kox[0:9]"  1 0 1 0 1 0 1 0 1 0;
	setAttr -s 10 ".koy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "ubercamShape_displayGateMask";
	rename -uid "41C7B82F-4B85-E916-6F73-F7AE2B5AC4B7";
	setAttr ".tan" 1;
	setAttr -s 10 ".ktv[0:9]"  0 1 287 1 288 1 359 1 360 1 431 1 432 0
		 503 0 504 1 960 1;
	setAttr -s 10 ".kot[1:9]"  5 1 5 1 5 1 5 1 
		5;
	setAttr -s 10 ".kwl[0:9]" yes yes yes yes yes yes yes yes yes yes;
	setAttr -s 10 ".kix[0:9]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 0 0 0;
	setAttr -s 10 ".kox[0:9]"  1 0 1 0 1 0 1 0 1 0;
	setAttr -s 10 ".koy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "ubercam_translateX1";
	rename -uid "2E852A61-49B6-3324-35A9-9292E26B7978";
	setAttr ".tan" 1;
	setAttr -s 15 ".ktv[0:14]"  0 0 96 0 168 0 287 0.63256638690346878 288 -2.0507702055340831
		 359 -0.54349230400377868 360 3.7636090557319504 431 4.2864706773934449 432 -6.4837965587865716
		 503 -4.9832385211399322 504 -22.137790393056566 553 -21.358539018585468 680 -19.25136265123264
		 681 -1.4269035017761096 861 -1.4269035017761096;
	setAttr -s 15 ".kot[3:14]"  5 1 5 1 5 1 5 1 
		1 5 1 5;
	setAttr -s 15 ".kix[0:14]"  4 4 3 4.9583333333333304 1 1 0.041666666666662522 
		2.9583333333333321 0.041666666666667851 2.9583333333333321 0.041666666666667851 2.0416666666666714 
		5.2916666666666679 1 1;
	setAttr -s 15 ".kiy[0:14]"  0 0 0 0.08895464815830012 0 0 0.0073642481924154346 
		0.52286162166149452 0.021134620248544955 1.5005580376466385 0.0010513570245329618 
		0.9884408655091157 5.6244196203444332 0 0;
	setAttr -s 15 ".kox[0:14]"  4 3 4.9583333333333357 0 2.9583333333333339 
		0 2.9583333333333321 0 2.9583333333333321 0 2.0416666666666714 5.2916666666666679 
		0 1 0;
	setAttr -s 15 ".koy[0:14]"  0 0 0 0 1.5072779015303044 0 0.52286162166149452 
		0 1.5005580376466385 0 0.051516494201880647 2.5618773452991483 0 0 0;
createNode animCurveTL -n "ubercam_translateY1";
	rename -uid "5A16A546-44DF-4FD1-7D9F-97AEBEBFDB90";
	setAttr ".tan" 1;
	setAttr -s 16 ".ktv[0:15]"  0 121.93370663554842 96 121.93370663554842
		 168 0.55298538569004307 287 4.1956425642918971 288 -1.586285232646004 359 -1.4439676153601007
		 360 -10.614428033605876 431 -10.458148746291046 432 -12.61654120044072 503 -12.702592493746026
		 504 -23.382642668021958 553 -23.226744114850611 680 -18.06892435712091 681 3.1052452980811025
		 716 -1.373587163303597 861 -1.373587163303597;
	setAttr -s 16 ".kot[3:15]"  5 1 5 1 5 1 5 1 
		1 5 1 1 5;
	setAttr -s 16 ".kix[0:15]"  4 4 3 4.9583333333333304 1 1 0.041666666666662522 
		2.9583333333333321 0.041666666666667851 2.9583333333333321 0.041666666666667851 2.0416666666666714 
		5.2916666666666679 0.20833333333334991 1.4583333333333428 6.0416666666666643;
	setAttr -s 16 ".kiy[0:15]"  0 0 0 0.51224866574088601 0 0 0.0022011167227447004 
		0.15627928731483109 -0.0012119900465528133 -0.086051293305308363 3.7415952043318157e-06 
		0.45834541308706633 9.4600663414616335 -0.38389992526155226 0 0;
	setAttr -s 16 ".kox[0:15]"  4 3 4.9583333333333357 0 2.9583333333333339 
		0 2.9583333333333321 0 2.9583333333333321 0 2.0416666666666714 5.2916666666666679 
		0 1.4583333333333215 1.6666666666666714 0;
	setAttr -s 16 ".koy[0:15]"  0 0 0 0 0.14231761728590331 0 0.15627928731483109 
		0 -0.086051293305308363 0 0.00018333816523607993 1.1879564788174939 0 -2.6872994768308365 
		0 0;
createNode animCurveTL -n "ubercam_translateZ1";
	rename -uid "BA2C1D9F-47BF-4CDA-FB00-1EA86725A41C";
	setAttr ".tan" 1;
	setAttr -s 16 ".ktv[0:15]"  0 222.49890184808683 96 222.49890184808683
		 168 222.49890184808683 287 103.99712361458289 288 31.269736351484219 359 31.118183482102058
		 360 19.180040612125051 431 19.080270530977735 432 27.181834902694924 503 26.836266531893028
		 504 36.038571462803048 553 36.44858189022667 680 54.027087883319453 681 145.23295019093572
		 716 167 861 167;
	setAttr -s 16 ".kot[3:15]"  5 1 5 1 5 1 5 1 
		1 5 1 1 5;
	setAttr -s 16 ".kix[0:15]"  4 4 3 4.9583333333333304 1 1 0.041666666666662522 
		2.9583333333333321 0.041666666666667851 2.9583333333333321 0.041666666666667851 2.0416666666666714 
		5.2916666666666679 0.20833333333334991 1.4583333333333428 6.0416666666666643;
	setAttr -s 16 ".kiy[0:15]"  0 0 0 -16.664312564086515 0 0 -0.0014052124105283781 
		-0.099770081147312339 -0.0048671601521377283 -0.34556837080189595 9.8403289783277614e-06 
		1.205440300147842 50.31473144288379 3.1095785441521002 21.767049809064275 0;
	setAttr -s 16 ".kox[0:15]"  4 3 4.9583333333333357 0 2.9583333333333339 
		0 2.9583333333333321 0 2.9583333333333321 0 2.0416666666666714 5.2916666666666679 
		0 1.4583333333333215 1 0;
	setAttr -s 16 ".koy[0:15]"  0 0 0 0 -0.1515528693821615 0 -0.099770081147312339 
		0 -0.34556837080189595 0 0.000482176120065958 3.1243044514035887 0 21.767049809064275 
		0 0;
createNode animCurveTA -n "ubercam_rotateX1";
	rename -uid "77565AF7-4C7D-AE57-83C9-87A23C5DB597";
	setAttr ".tan" 1;
	setAttr -s 17 ".ktv[0:16]"  0 0 96 0 168 0 245 0 287 -9.9127856554693619
		 288 -46.799999999988195 359 -46.799999999988195 360 -64.80000000000156 431 -64.80000000000156
		 432 -18.954791085768715 503 -20.121914373440262 504 -50.399999999978739 553 -50.4
		 680 -25.530611870185709 681 -8.0390625000000018 716 0 861 0;
	setAttr -s 17 ".kot[4:16]"  5 1 5 1 5 1 5 1 
		1 5 1 1 5;
	setAttr -s 17 ".kix[0:16]"  4 4 3 3.2083333333333339 1.7747641261231646 
		1 1 0.041666666666666075 2.9583333333333321 0.041666666666667851 2.9583333333333321 
		0.041666666666667851 2.0416666666666714 5.2916666666666679 0.20833333333334991 1.4583333333333428 
		6.0416666666666643;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 -0.22567095436271384 0 0 0 0 -0.00028690343868403856 
		-0.020370144146569569 0 0 0.54391342980359092 0.012026409377023595 0 0;
	setAttr -s 17 ".kox[0:16]"  4 3 3.2083333333333339 1.7518720896383098 
		0 1 0 2.9583333333333321 0 2.9583333333333321 0 2.0416666666666714 5.2916666666666679 
		0 1.4583333333333215 1.6666666666666714 0;
	setAttr -s 17 ".koy[0:16]"  0 0 0 0 0 0 0 0 0 -0.020370144146569569 
		0 0 0 0 0.084184865639164538 0 0;
createNode animCurveTA -n "ubercam_rotateY1";
	rename -uid "44CBD99A-43CD-1A5D-61A7-A8BAA82ABB92";
	setAttr ".tan" 1;
	setAttr -s 17 ".ktv[0:16]"  0 0 96 0 168 0 245 0 287 0 288 0 359 0 360 -27.800000000000505
		 431 -27.800000000000505 432 -21.273972602741019 503 -12.32602739726185 504 -46.989461246702938
		 553 -34.200000000002611 680 -2.0116442686295737 681 -0.38281250000000083 716 0 861 0;
	setAttr -s 17 ".kot[4:16]"  5 1 5 1 5 1 5 1 
		1 5 1 1 5;
	setAttr -s 17 ".kix[0:16]"  4 4 3 3.2083333333333339 1.7499999999999964 
		1 1 0.041666666666666075 2.9583333333333321 0.041666666666667851 2.9583333333333321 
		0.041666666666667851 2.0416666666666714 5.2916666666666679 0.20833333333334991 1.4583333333333428 
		6.0416666666666643;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0.0021995930299106292 
		0.15617110512365201 0.00036594178445847891 0.20143048666671393 0.26464813902332696 
		0.00057268616081065059 0 0;
	setAttr -s 17 ".kox[0:16]"  4 3 3.2083333333333339 1.7500000000000018 
		0 1 0 2.9583333333333321 0 2.9583333333333321 0 2.0416666666666714 5.2916666666666679 
		0 1.4583333333333215 1.6666666666666714 0;
	setAttr -s 17 ".koy[0:16]"  0 0 0 0 0 0 0 0 0 0.15617110512365201 0 
		0.017931147438463468 0.52207493483005418 0 0.0040088031256745125 0 0;
createNode animCurveTL -n "ubercamShape_centerOfInterest1";
	rename -uid "2BC783DC-4A6C-FC98-453A-17A3FF69742F";
	setAttr ".tan" 1;
	setAttr -s 12 ".ktv[0:11]"  0 19.084343962828534 287 19.084343962828534
		 288 20.348584844376209 359 20.348584844376209 360 19.699672775274205 431 19.699672775274205
		 432 1.297929766174637 503 1.297929766174637 504 138.23590786445791 680 138.23590786445791
		 681 158.49664591777659 861 158.49664591777659;
	setAttr -s 12 ".kot[1:11]"  5 1 5 1 5 1 5 1 
		5 1 5;
	setAttr -s 12 ".kwl[0:11]" yes yes yes yes yes yes yes yes yes yes 
		yes yes;
	setAttr -s 12 ".kix[0:11]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".kiy[0:11]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 12 ".kox[0:11]"  1 0 1 0 1 0 1 0 1 0 1 0;
	setAttr -s 12 ".koy[0:11]"  0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "ubercamShape_tumblePivotX1";
	rename -uid "4E35519A-42BE-95C0-E2E9-659C69FEB48E";
	setAttr ".tan" 1;
	setAttr -s 12 ".ktv[0:11]"  0 0 287 0 288 0 359 0 360 0 431 0 432 -7.3468483642380589
		 503 -7.3468483642380589 504 0 680 0 681 0 861 0;
	setAttr -s 12 ".kot[1:11]"  5 1 5 1 5 1 5 1 
		5 1 5;
	setAttr -s 12 ".kwl[0:11]" yes yes yes yes yes yes yes yes yes yes 
		yes yes;
	setAttr -s 12 ".kix[0:11]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".kiy[0:11]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 12 ".kox[0:11]"  1 0 1 0 1 0 1 0 1 0 1 0;
	setAttr -s 12 ".koy[0:11]"  0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "ubercamShape_tumblePivotY1";
	rename -uid "DFE4A163-4D59-EC25-BEE4-D0BE08DA1E58";
	setAttr ".tan" 1;
	setAttr -s 12 ".ktv[0:11]"  0 0 287 0 288 0 359 0 360 0 431 0 432 -13.648611056607647
		 503 -13.648611056607647 504 0 680 0 681 0 861 0;
	setAttr -s 12 ".kot[1:11]"  5 1 5 1 5 1 5 1 
		5 1 5;
	setAttr -s 12 ".kwl[0:11]" yes yes yes yes yes yes yes yes yes yes 
		yes yes;
	setAttr -s 12 ".kix[0:11]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".kiy[0:11]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 12 ".kox[0:11]"  1 0 1 0 1 0 1 0 1 0 1 0;
	setAttr -s 12 ".koy[0:11]"  0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "ubercamShape_tumblePivotZ1";
	rename -uid "B1BC02B2-4A01-D0F6-0369-5990381CA040";
	setAttr ".tan" 1;
	setAttr -s 12 ".ktv[0:11]"  0 0 287 0 288 0 359 0 360 0 431 0 432 26.194380612301771
		 503 26.194380612301771 504 0 680 0 681 0 861 0;
	setAttr -s 12 ".kot[1:11]"  5 1 5 1 5 1 5 1 
		5 1 5;
	setAttr -s 12 ".kwl[0:11]" yes yes yes yes yes yes yes yes yes yes 
		yes yes;
	setAttr -s 12 ".kix[0:11]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".kiy[0:11]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 12 ".kox[0:11]"  1 0 1 0 1 0 1 0 1 0 1 0;
	setAttr -s 12 ".koy[0:11]"  0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "ubercamShape_displayGateMask1";
	rename -uid "70082CE3-4507-6822-FE80-5FB60673FF29";
	setAttr ".tan" 1;
	setAttr -s 12 ".ktv[0:11]"  0 1 287 1 288 1 359 1 360 1 431 1 432 0
		 503 0 504 1 680 1 681 1 861 1;
	setAttr -s 12 ".kot[1:11]"  5 1 5 1 5 1 5 1 
		5 1 5;
	setAttr -s 12 ".kwl[0:11]" yes yes yes yes yes yes yes yes yes yes 
		yes yes;
	setAttr -s 12 ".kix[0:11]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".kiy[0:11]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 12 ".kox[0:11]"  1 0 1 0 1 0 1 0 1 0 1 0;
	setAttr -s 12 ".koy[0:11]"  0 0 0 0 0 0 0 0 0 0 0 0;
createNode shot -n "EstablishingShot3";
	rename -uid "A3124B38-48D3-6A29-7C87-FDA50560283D";
	setAttr ".ef" 352;
	setAttr ".cv" no;
	setAttr ".tk" 3;
	setAttr ".sn" -type "string" "EstablishingShot3";
	setAttr ".wres" 1024;
createNode shot -n "Makro_TopViolin";
	rename -uid "7FDD618F-4F62-549B-1B33-4F8C9FE7F51D";
	setAttr ".sf" 288;
	setAttr ".ef" 359;
	setAttr ".ssf" 353;
	setAttr ".czo" -10;
	setAttr ".cv" no;
	setAttr ".tk" 3;
	setAttr ".sn" -type "string" "Makro_TopViolin";
	setAttr ".wres" 1024;
createNode shot -n "Makro_Schnecke1";
	rename -uid "ED05C449-4962-F9E7-7754-33A70BA1D448";
	setAttr ".sf" 360;
	setAttr ".ef" 431;
	setAttr ".ssf" 425;
	setAttr ".cv" no;
	setAttr ".tk" 3;
	setAttr ".sn" -type "string" "Makro_Schnecke1";
	setAttr ".wres" 1024;
createNode shot -n "Makro_Body2";
	rename -uid "99025728-48E4-ED06-6836-A6ABA1434D95";
	setAttr ".sf" 432;
	setAttr ".ef" 503;
	setAttr ".ssf" 497;
	setAttr ".cv" no;
	setAttr ".tk" 3;
	setAttr ".sn" -type "string" "Makro_Body2";
	setAttr ".wres" 1024;
createNode shot -n "Makro_Body3";
	rename -uid "6026912D-46CA-5037-C11D-299F7D5AA073";
	setAttr ".sf" 504;
	setAttr ".ef" 960;
	setAttr ".ssf" 569;
	setAttr ".cv" no;
	setAttr ".tk" 3;
	setAttr ".sn" -type "string" "Makro_Body3";
	setAttr ".wres" 1024;
	setAttr ".ca" 1;
createNode animCurveTL -n "ubercam1_translateX";
	rename -uid "E9B805B3-4834-1C29-0A00-23BDACE7EB5B";
	setAttr ".tan" 1;
	setAttr -s 15 ".ktv[0:14]"  0 0 96 0 225 0 352 0.63369708647754508 353 -2.0507702055340831
		 424 -0.54349230400377868 425 3.7636090557319504 496 4.2864706773934449 497 -6.4837965587865716
		 568 -4.9832385211399322 569 -22.137790393056566 618 -21.358539018585468 765 -18.164382550752485
		 865 -0.13221912347184173 1025 -0.13221912347184173;
	setAttr -s 15 ".kot[3:14]"  5 1 5 1 5 1 5 1 
		1 1 1 5;
	setAttr -s 15 ".kix[0:14]"  4 4 5.375 5.2916666666666661 1 1 0.041666666666662522 
		2.9583333333333321 0.041666666666667851 2.9583333333333321 0.041666666666667851 2.0416666666666714 
		6.125 4.1666666666666679 6.6666666666666643;
	setAttr -s 15 ".kiy[0:14]"  0 0 0 0 0 0 0.0073642481924154346 0.52286162166149452 
		0.021134620248544955 1.5005580376466385 0.0010513570245329618 0.9884408655091157 
		9.5824694034989477 0 0;
	setAttr -s 15 ".kox[0:14]"  4 5.375 5.2916666666666661 0 2.9583333333333339 
		0 2.9583333333333321 0 2.9583333333333321 0 2.0416666666666714 6.125 4.1666666666666679 
		6.6666666666666643 0;
	setAttr -s 15 ".koy[0:14]"  0 0 0 0 1.5072779015303044 0 0.52286162166149452 
		0 1.5005580376466385 0 0.051516494201880647 2.965322596527356 6.5186866690469056 
		0 0;
createNode animCurveTL -n "ubercam1_translateY";
	rename -uid "69C58C3F-4B47-EDEE-8A7C-9BA2C8743928";
	setAttr ".tan" 1;
	setAttr -s 15 ".ktv[0:14]"  0 121.93370663554842 96 121.93370663554842
		 225 0.55298721247878768 352 4.2021537400445528 353 -1.586285232646004 424 -1.4439676153601007
		 425 -10.614428033605876 496 -10.458148746291046 497 -12.61654120044072 568 -12.702592493746026
		 569 -23.382642668021958 618 -23.226744114850611 765 -16.462912949485869 865 -1.9409421501779645
		 1025 -1.9409421501779645;
	setAttr -s 15 ".kot[3:14]"  5 1 5 1 5 1 5 1 
		1 1 1 5;
	setAttr -s 15 ".kix[0:14]"  4 4 7.5842333273030818 5.2916666666666661 
		1 1 0.041666666666662522 2.9583333333333321 0.041666666666667851 2.9583333333333321 
		0.041666666666667851 2.0416666666666714 6.125 4.1666666666666679 6.6666666666666643;
	setAttr -s 15 ".kiy[0:14]"  0 0 -9.5537779443521522 0 0 0 0.0022011167227447004 
		0.15627928731483109 -0.0012119900465528133 -0.086051293305308363 3.7415952043318157e-06 
		0.45834541308706633 12.668068375736352 0 0;
	setAttr -s 15 ".kox[0:14]"  4 5.375 2.4175919998656323 0 2.9583333333333339 
		0 2.9583333333333321 0 2.9583333333333321 0 2.0416666666666714 6.125 4.1666666666666679 
		6.6666666666666643 0;
	setAttr -s 15 ".koy[0:14]"  0 0 -3.0454203299092648 0 0.14231761728590331 
		0 0.15627928731483109 0 -0.086051293305308363 0 0.00018333816523607993 1.3750362392611841 
		8.6177335889362965 0 0;
createNode animCurveTL -n "ubercam1_translateZ";
	rename -uid "343A2935-4170-B809-BD5E-8998FE453A4E";
	setAttr ".tan" 1;
	setAttr -s 15 ".ktv[0:14]"  0 222.49890184808683 96 222.49890184808683
		 225 222.49890184808683 352 103.78530409184184 353 31.269736351484219 424 31.118183482102058
		 425 19.180040612125051 496 19.080270530977735 497 27.181834902694924 568 26.836266531893028
		 569 36.038571462803048 618 36.44858189022667 765 63.28732355579443 865 168.20199294710071
		 1025 168.20199294710071;
	setAttr -s 15 ".kot[3:14]"  5 1 5 1 5 1 5 1 
		1 1 1 5;
	setAttr -s 15 ".kix[0:14]"  4 4 7.0049574405931168 5.3236266427362953 
		1 1 0.041666666666662522 2.9583333333333321 0.041666666666667851 2.9583333333333321 
		0.041666666666667851 2.0416666666666714 6.125 4.1666666666666679 6.6666666666666643;
	setAttr -s 15 ".kiy[0:14]"  0 0 -15.129935533070757 -30.46442985534668 
		0 0 -0.0014052124105283781 -0.099770081147312339 -0.0048671601521377283 -0.34556837080189595 
		9.8403289783277614e-06 1.205440300147842 78.411949090528267 0 0;
	setAttr -s 15 ".kox[0:14]"  4 5.375 6.9216254462177549 0 2.9583333333333339 
		0 2.9583333333333321 0 2.9583333333333321 0 2.0416666666666714 6.125 4.1666666666666679 
		6.6666666666666643 0;
	setAttr -s 15 ".koy[0:14]"  0 0 -14.94994068145752 0 -0.1515528693821615 
		0 -0.099770081147312339 0 -0.34556837080189595 0 0.000482176120065958 3.6163209004435344 
		53.341461966345769 0 0;
createNode animCurveTA -n "ubercam1_rotateX";
	rename -uid "3B4AD663-4103-1635-B98F-BFBB9FDF49F9";
	setAttr ".tan" 1;
	setAttr -s 16 ".ktv[0:15]"  0 0 96 0 225 0 307 0 352 -10.800000000000006
		 353 -46.799999999988195 424 -46.799999999988195 425 -64.80000000000156 496 -64.80000000000156
		 497 -18.954791085768715 568 -20.121914373440262 569 -50.399999999978739 618 -50.4
		 765 -21.000000000000423 865 0 1025 0;
	setAttr -s 16 ".kot[4:15]"  5 1 5 1 5 1 5 1 
		1 1 1 5;
	setAttr -s 16 ".kix[0:15]"  4 4 5.375 3.4166666666666661 1.9076564641048499 
		1 1 0.041666666666666075 2.9583333333333321 0.041666666666667851 2.9583333333333321 
		0.041666666666667851 2.0416666666666714 6.125 4.1666666666666679 6.6666666666666643;
	setAttr -s 16 ".kiy[0:15]"  0 0 0 0 -0.2294392604380846 0 0 0 0 -0.00028690343868403856 
		-0.020370144146569569 0 0 0.52351398227431523 0 0;
	setAttr -s 16 ".kox[0:15]"  4 5.375 3.4166666666666661 1.875 0 1 0 
		2.9583333333333321 0 2.9583333333333321 0 2.0416666666666714 6.125 4.1666666666666679 
		6.6666666666666643 0;
	setAttr -s 16 ".koy[0:15]"  0 0 0 0 0 0 0 0 0 -0.020370144146569569 
		0 0 0 0.35613196073082681 0 0;
createNode animCurveTA -n "ubercam1_rotateY";
	rename -uid "655B1AE6-4018-80A1-077A-679E06CF54C4";
	setAttr ".tan" 1;
	setAttr -s 16 ".ktv[0:15]"  0 0 96 0 225 0 307 0 352 0 353 0 424 0 425 -27.800000000000505
		 496 -27.800000000000505 497 -21.273972602741019 568 -12.32602739726185 569 -46.989461246702938
		 618 -34.200000000002611 765 -0.60000000000291731 865 0 1025 0;
	setAttr -s 16 ".kot[4:15]"  5 1 5 1 5 1 5 1 
		1 1 1 5;
	setAttr -s 16 ".kix[0:15]"  4 4 5.375 3.4166666666666661 1.875 1 1 
		0.041666666666666075 2.9583333333333321 0.041666666666667851 2.9583333333333321 0.041666666666667851 
		2.0416666666666714 6.125 4.1666666666666679 6.6666666666666643;
	setAttr -s 16 ".kiy[0:15]"  0 0 0 0 0 0 0 0 0 0.0021995930299106292 
		0.15617110512365201 0.00036594178445847891 0.20143048666671393 0.046181412007994485 
		0 0;
	setAttr -s 16 ".kox[0:15]"  4 5.375 3.4166666666666661 1.875 0 1 0 
		2.9583333333333321 0 2.9583333333333321 0 2.0416666666666714 6.125 4.1666666666666679 
		6.6666666666666643 0;
	setAttr -s 16 ".koy[0:15]"  0 0 0 0 0 0 0 0 0 0.15617110512365201 0 
		0.017931147438463468 0.60429146000014189 0.03141592653605068 0 0;
createNode animCurveTL -n "ubercam1Shape_centerOfInterest";
	rename -uid "564FC652-4545-F561-9CFB-C4AF9CF23BB6";
	setAttr ".tan" 1;
	setAttr -s 10 ".ktv[0:9]"  0 19.084343962828534 352 19.084343962828534
		 353 20.348584844376209 424 20.348584844376209 425 19.699672775274205 496 19.699672775274205
		 497 1.297929766174637 568 1.297929766174637 569 138.23590786445791 1025 138.23590786445791;
	setAttr -s 10 ".kot[1:9]"  5 1 5 1 5 1 5 1 
		5;
	setAttr -s 10 ".kwl[0:9]" yes yes yes yes yes yes yes yes yes yes;
	setAttr -s 10 ".kix[0:9]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 0 0 0;
	setAttr -s 10 ".kox[0:9]"  1 0 1 0 1 0 1 0 1 0;
	setAttr -s 10 ".koy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "ubercam1Shape_tumblePivotX";
	rename -uid "8B8C02B5-4E49-0A2F-8F3B-28868225DC1B";
	setAttr ".tan" 1;
	setAttr -s 10 ".ktv[0:9]"  0 0 352 0 353 0 424 0 425 0 496 0 497 -7.3468483642380589
		 568 -7.3468483642380589 569 0 1025 0;
	setAttr -s 10 ".kot[1:9]"  5 1 5 1 5 1 5 1 
		5;
	setAttr -s 10 ".kwl[0:9]" yes yes yes yes yes yes yes yes yes yes;
	setAttr -s 10 ".kix[0:9]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 0 0 0;
	setAttr -s 10 ".kox[0:9]"  1 0 1 0 1 0 1 0 1 0;
	setAttr -s 10 ".koy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "ubercam1Shape_tumblePivotY";
	rename -uid "EF3C2755-4411-111F-7939-C4A29242B572";
	setAttr ".tan" 1;
	setAttr -s 10 ".ktv[0:9]"  0 0 352 0 353 0 424 0 425 0 496 0 497 -13.648611056607647
		 568 -13.648611056607647 569 0 1025 0;
	setAttr -s 10 ".kot[1:9]"  5 1 5 1 5 1 5 1 
		5;
	setAttr -s 10 ".kwl[0:9]" yes yes yes yes yes yes yes yes yes yes;
	setAttr -s 10 ".kix[0:9]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 0 0 0;
	setAttr -s 10 ".kox[0:9]"  1 0 1 0 1 0 1 0 1 0;
	setAttr -s 10 ".koy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "ubercam1Shape_tumblePivotZ";
	rename -uid "C092FB56-41BB-4003-3742-BCB9F1B20187";
	setAttr ".tan" 1;
	setAttr -s 10 ".ktv[0:9]"  0 0 352 0 353 0 424 0 425 0 496 0 497 26.194380612301771
		 568 26.194380612301771 569 0 1025 0;
	setAttr -s 10 ".kot[1:9]"  5 1 5 1 5 1 5 1 
		5;
	setAttr -s 10 ".kwl[0:9]" yes yes yes yes yes yes yes yes yes yes;
	setAttr -s 10 ".kix[0:9]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 0 0 0;
	setAttr -s 10 ".kox[0:9]"  1 0 1 0 1 0 1 0 1 0;
	setAttr -s 10 ".koy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "A4BF2E25-4B97-AD1F-9E09-5AA805CA1F11";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -673.12109002390059 -672.32168856031433 ;
	setAttr ".tgi[0].vh" -type "double2" 1043.1400968799219 405.17431614619903 ;
createNode aiAtmosphereVolume -n "aiAtmosphereVolume";
	rename -uid "F8741FD5-4F3F-AC9E-367D-9A97D579CCB7";
	setAttr ".density" 0.014000000432133675;
createNode animCurveTU -n "Key_LightShape_exposure";
	rename -uid "C6513B93-4BF8-F06F-5083-5C9A66662813";
	setAttr ".tan" 18;
	setAttr -s 2 ".ktv[0:1]"  424 11 425 7;
createNode animCurveTA -n "cam5_woodScraps1_rotateX";
	rename -uid "F385E93F-405D-E957-9834-2A80093314C3";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  503 -50.399999999978711 553 -50.4 700 -21.000000000000423
		 800 0;
createNode animCurveTA -n "cam5_woodScraps1_rotateZ";
	rename -uid "389D41B3-4E94-8BDA-C4F4-4A85104BCE4A";
	setAttr ".tan" 18;
	setAttr ".ktv[0]"  503 2.3145193526658309e-15;
createNode animCurveTA -n "cam5_woodScraps1_rotateY";
	rename -uid "666C0026-49F8-BD20-D248-F787E6BC25F2";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  503 -47.00000000000243 553 -34.200000000002611
		 700 -0.60000000000291731 800 0;
createNode animCurveTL -n "cam5_woodScraps1_translateX";
	rename -uid "8EC4B7EE-4637-9286-42FF-F0A5968641D7";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  503 -22.138318275350372 553 -21.358539018585468
		 700 -18.164382550752485 800 -0.13221912347184173;
createNode animCurveTL -n "cam5_woodScraps1_translateY";
	rename -uid "EC3ACA02-4E83-4E9C-098F-15890FCE0075";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  503 -23.38264391522036 553 -23.226744114850611
		 700 -16.462912949485869 800 -1.9409421501779645;
createNode animCurveTL -n "cam5_woodScraps1_translateZ";
	rename -uid "ED8CEE0D-49AD-AFF6-D80B-229246C31432";
	setAttr ".tan" 18;
	setAttr -s 4 ".ktv[0:3]"  503 36.038568182693389 553 36.44858189022667
		 700 63.28732355579443 800 168.20199294710071;
createNode animCurveTL -n "cam5_woodScraps1_translateX1";
	rename -uid "74B8A230-45B3-075D-2580-AC9985377D04";
	setAttr ".tan" 28;
	setAttr -s 3 ".ktv[0:2]"  503 1.32771040009724 580 3.1746582366001013
		 850 0.10237591597587825;
	setAttr -s 3 ".kit[1:2]"  18 28;
	setAttr -s 3 ".kot[1:2]"  18 28;
createNode animCurveTL -n "cam5_woodScraps1_translateY1";
	rename -uid "1414BCD8-43FC-0B43-CD81-90A849E0E589";
	setAttr ".tan" 28;
	setAttr -s 3 ".ktv[0:2]"  503 -10.601895113858037 580 -11.427425654060354
		 850 3.306;
	setAttr -s 3 ".kit[1:2]"  18 28;
	setAttr -s 3 ".kot[1:2]"  18 28;
createNode animCurveTL -n "cam5_woodScraps1_translateZ1";
	rename -uid "CB35AA7E-4C8D-C6F8-24D2-C0BFE864E08E";
	setAttr ".tan" 28;
	setAttr -s 3 ".ktv[0:2]"  503 17.29723351957632 580 18.529623948568663
		 850 168.202;
	setAttr -s 3 ".kit[1:2]"  18 28;
	setAttr -s 3 ".kot[1:2]"  18 28;
createNode animCurveTA -n "cam5_woodScraps1_rotateX1";
	rename -uid "84AFE055-4419-DBC3-8C9B-44884AD73A86";
	setAttr ".tan" 28;
	setAttr -s 5 ".ktv[0:4]"  503 -49.624201023745144 580 -37.957404523369895
		 600 -29.609551853620207 675 -15.915957224859463 850 0;
	setAttr -s 5 ".kit[1:4]"  1 28 18 28;
	setAttr -s 5 ".kot[1:4]"  1 28 18 28;
	setAttr -s 5 ".kix[1:4]"  3.1216242629753053 0.83333333333333215 
		3.125 7.2916666666666643;
	setAttr -s 5 ".kiy[1:4]"  0.37386370690430937 0.13632876243174322 
		0.15503525096569884 0;
	setAttr -s 5 ".kox[1:4]"  0.80423807942618808 3.125 7.2916666666666643 
		7.2916666666666643;
	setAttr -s 5 ".koy[1:4]"  0.096320188847138916 0.51123285911903782 
		0.3617489189199638 0;
createNode animCurveTA -n "cam5_woodScraps1_rotateY1";
	rename -uid "89146264-4F3F-2148-B0BE-22A339C8F817";
	setAttr ".tan" 28;
	setAttr -s 3 ".ktv[0:2]"  503 -28.029749998462155 580 2.3893850116769153
		 850 0;
	setAttr -s 3 ".kit[1:2]"  18 28;
	setAttr -s 3 ".kot[1:2]"  18 28;
createNode animCurveTL -n "ubercam2_translateX";
	rename -uid "CECDC45C-42BB-96DB-B814-C1A6C9292C53";
	setAttr ".tan" 1;
	setAttr -s 14 ".ktv[0:13]"  0 0 96 0 225 0 352 0.63369708647754508 353 -2.0507702055340831
		 424 -0.54349230400377868 425 3.7636090557319504 496 4.2864706773934449 497 -6.4837965587865716
		 568 -4.9832385211399322 569 1.3286368414597685 645 3.1746582366001013 889 0.10237591597587825
		 1025 0.10237591597587825;
	setAttr -s 14 ".kot[3:13]"  5 1 5 1 5 1 5 1 
		1 1 5;
	setAttr -s 14 ".kix[0:13]"  4 4 5.375 5.2916666666666661 1 1 0.041666666666662522 
		2.9583333333333321 0.041666666666667851 2.9583333333333321 0.041666666666667851 3.1666666666666714 
		11.249999999999996 4.5833333333333357;
	setAttr -s 14 ".kiy[0:13]"  0 0 0 0 0 0 0.0073642481924154346 0.52286162166149452 
		0.021134620248544955 1.5005580376466385 0.0018447915341175403 0 0 0;
	setAttr -s 14 ".kox[0:13]"  4 5.375 5.2916666666666661 0 2.9583333333333339 
		0 2.9583333333333321 0 2.9583333333333321 0 3.1666666666666714 11.249999999999996 
		4.5833333333333357 0;
	setAttr -s 14 ".koy[0:13]"  0 0 0 0 1.5072779015303044 0 0.52286162166149452 
		0 1.5005580376466385 0 0.14020415659294105 0 0 0;
createNode animCurveTL -n "ubercam2_translateY";
	rename -uid "798B71C9-4B43-519B-EE2F-1C9A3CC1FCEF";
	setAttr ".tan" 1;
	setAttr -s 14 ".ktv[0:13]"  0 121.93370663554842 96 121.93370663554842
		 225 0.55298721247878768 352 4.2021537400445528 353 -1.586285232646004 424 -1.4439676153601007
		 425 -10.614428033605876 496 -10.458148746291046 497 -12.61654120044072 568 -12.702592493746026
		 569 -10.602309205487133 645 -11.427425654060354 889 3.306 1025 3.306;
	setAttr -s 14 ".kot[3:13]"  5 1 5 1 5 1 5 1 
		1 1 5;
	setAttr -s 14 ".kix[0:13]"  4 4 7.5842333273030818 5.2916666666666661 
		1 1 0.041666666666662522 2.9583333333333321 0.041666666666667851 2.9583333333333321 
		0.041666666666667851 3.1666666666666714 11.249999999999996 4.5833333333333357;
	setAttr -s 14 ".kiy[0:13]"  0 0 -9.5537779443521522 0 0 0 0.0022011167227447004 
		0.15627928731483109 -0.0012119900465528133 -0.086051293305308363 -0.00082456673741759801 
		0 0 0;
	setAttr -s 14 ".kox[0:13]"  4 5.375 2.4175919998656323 0 2.9583333333333339 
		0 2.9583333333333321 0 2.9583333333333321 0 3.1666666666666714 11.249999999999996 
		4.5833333333333357 0;
	setAttr -s 14 ".koy[0:13]"  0 0 -3.0454203299092648 0 0.14231761728590331 
		0 0.15627928731483109 0 -0.086051293305308363 0 -0.062667072043534944 0 0 0;
createNode animCurveTL -n "ubercam2_translateZ";
	rename -uid "54823D2F-4E71-8AB4-8BFC-509F7C5F74B9";
	setAttr ".tan" 1;
	setAttr -s 14 ".ktv[0:13]"  0 222.49890184808683 96 222.49890184808683
		 225 222.49890184808683 352 103.78530409184184 353 31.269736351484219 424 31.118183482102058
		 425 19.180040612125051 496 19.080270530977735 497 27.181834902694924 568 26.836266531893028
		 569 17.297236219031625 645 18.529623948568663 889 168.202 1025 168.202;
	setAttr -s 14 ".kot[3:13]"  5 1 5 1 5 1 5 1 
		1 1 5;
	setAttr -s 14 ".kix[0:13]"  4 4 7.0049574405931168 5.3236266427362953 
		1 1 0.041666666666662522 2.9583333333333321 0.041666666666667851 2.9583333333333321 
		0.041666666666667851 3.1666666666666714 11.249999999999996 4.5833333333333357;
	setAttr -s 14 ".kiy[0:13]"  0 0 -15.129935533070757 -30.46442985534668 
		0 0 -0.0014052124105283781 -0.099770081147312339 -0.0048671601521377283 -0.34556837080189595 
		8.0983659138667008e-06 3.6491560754578423 0 0;
	setAttr -s 14 ".kox[0:13]"  4 5.375 6.9216254462177549 0 2.9583333333333339 
		0 2.9583333333333321 0 2.9583333333333321 0 3.1666666666666714 11.249999999999996 
		4.5833333333333357 0;
	setAttr -s 14 ".koy[0:13]"  0 0 -14.94994068145752 0 -0.1515528693821615 
		0 -0.099770081147312339 0 -0.34556837080189595 0 0.00061547580965637394 12.964107110179174 
		0 0;
createNode animCurveTA -n "ubercam2_rotateX";
	rename -uid "B5D59E19-4275-7337-031D-80A7DBA21082";
	setAttr ".tan" 1;
	setAttr -s 17 ".ktv[0:16]"  0 0 96 0 225 0 307 0 352 -10.800000000000006
		 353 -46.799999999988195 424 -46.799999999988195 425 -64.80000000000156 496 -64.80000000000156
		 497 -18.954791085768715 568 -20.121914373440262 569 -49.621916429246269 645 -37.957404523369895
		 665 -29.609551853620207 740 -15.915957224859463 889 0 1025 0;
	setAttr -s 17 ".kot[4:16]"  5 1 5 1 5 1 5 1 
		1 1 1 1 5;
	setAttr -s 17 ".kix[0:16]"  4 4 5.375 3.4166666666666661 1.9076564641048499 
		1 1 0.041666666666666075 2.9583333333333321 0.041666666666667851 2.9583333333333321 
		0.041680901647136892 3.0810977229989973 0.83333333333333215 3.125 7.2916666666666643 
		4.5833333333333357;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 -0.2294392604380846 0 0 0 0 -0.00028690343868403856 
		-0.020370144146569569 7.9674342328694969e-05 0.36901001498396646 0.13632876243174322 
		0.15503525096569884 0 0;
	setAttr -s 17 ".kox[0:16]"  4 5.375 3.4166666666666661 1.875 0 1 0 
		2.9583333333333321 0 2.9583333333333321 0 3.1688599923063201 0.80423807942618808 
		3.125 7.2916666666666643 4.5833333333333357 0;
	setAttr -s 17 ".koy[0:16]"  0 0 0 0 0 0 0 0 0 -0.020370144146569569 
		0 0.0060573746210261792 0.096320188847138916 0.51123285911903782 0.3617489189199638 
		0 0;
createNode animCurveTA -n "ubercam2_rotateY";
	rename -uid "7797045C-43A3-8E1B-1D52-38BC25BBAF5B";
	setAttr ".tan" 1;
	setAttr -s 15 ".ktv[0:14]"  0 0 96 0 225 0 307 0 352 0 353 0 424 0 425 -27.800000000000505
		 496 -27.800000000000505 497 -21.273972602741019 568 -12.32602739726185 569 -28.014491557303852
		 645 2.3893850116769153 889 0 1025 0;
	setAttr -s 15 ".kot[4:14]"  5 1 5 1 5 1 5 1 
		1 1 5;
	setAttr -s 15 ".kix[0:14]"  4 4 5.375 3.4166666666666661 1.875 1 1 
		0.041666666666666075 2.9583333333333321 0.041666666666667851 2.9583333333333321 0.041666666666667851 
		3.1666666666666714 11.249999999999996 4.5833333333333357;
	setAttr -s 15 ".kiy[0:14]"  0 0 0 0 0 0 0 0 0 0.0021995930299106292 
		0.15617110512365201 0.00053029422201739118 0 0 0;
	setAttr -s 15 ".kox[0:14]"  4 5.375 3.4166666666666661 1.875 0 1 0 
		2.9583333333333321 0 2.9583333333333321 0 3.1666666666666714 11.249999999999996 4.5833333333333357 
		0;
	setAttr -s 15 ".koy[0:14]"  0 0 0 0 0 0 0 0 0 0.15617110512365201 0 
		0.0403023608733179 0 0 0;
createNode animCurveTL -n "ubercam2Shape_centerOfInterest";
	rename -uid "77F804FC-48F4-6EF5-5342-ACAB1E5DD7C7";
	setAttr ".tan" 1;
	setAttr -s 10 ".ktv[0:9]"  0 19.084343962828534 352 19.084343962828534
		 353 20.348584844376209 424 20.348584844376209 425 19.699672775274205 496 19.699672775274205
		 497 1.297929766174637 568 1.297929766174637 569 30.225079302570382 1025 30.225079302570382;
	setAttr -s 10 ".kot[1:9]"  5 1 5 1 5 1 5 1 
		5;
	setAttr -s 10 ".kwl[0:9]" yes yes yes yes yes yes yes yes yes yes;
	setAttr -s 10 ".kix[0:9]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 0 0 0;
	setAttr -s 10 ".kox[0:9]"  1 0 1 0 1 0 1 0 1 0;
	setAttr -s 10 ".koy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "ubercam2Shape_tumblePivotX";
	rename -uid "E44C0647-45FE-9B29-1205-B09528542A7B";
	setAttr ".tan" 1;
	setAttr -s 10 ".ktv[0:9]"  0 0 352 0 353 0 424 0 425 0 496 0 497 -7.3468483642380589
		 568 -7.3468483642380589 569 0 1025 0;
	setAttr -s 10 ".kot[1:9]"  5 1 5 1 5 1 5 1 
		5;
	setAttr -s 10 ".kwl[0:9]" yes yes yes yes yes yes yes yes yes yes;
	setAttr -s 10 ".kix[0:9]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 0 0 0;
	setAttr -s 10 ".kox[0:9]"  1 0 1 0 1 0 1 0 1 0;
	setAttr -s 10 ".koy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "ubercam2Shape_tumblePivotY";
	rename -uid "9D680B4C-40F7-1706-5C26-5287C7C1A658";
	setAttr ".tan" 1;
	setAttr -s 10 ".ktv[0:9]"  0 0 352 0 353 0 424 0 425 0 496 0 497 -13.648611056607647
		 568 -13.648611056607647 569 0 1025 0;
	setAttr -s 10 ".kot[1:9]"  5 1 5 1 5 1 5 1 
		5;
	setAttr -s 10 ".kwl[0:9]" yes yes yes yes yes yes yes yes yes yes;
	setAttr -s 10 ".kix[0:9]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 0 0 0;
	setAttr -s 10 ".kox[0:9]"  1 0 1 0 1 0 1 0 1 0;
	setAttr -s 10 ".koy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "ubercam2Shape_tumblePivotZ";
	rename -uid "AB180E85-4EB7-E1E6-AED6-6DA420304528";
	setAttr ".tan" 1;
	setAttr -s 10 ".ktv[0:9]"  0 0 352 0 353 0 424 0 425 0 496 0 497 26.194380612301771
		 568 26.194380612301771 569 0 1025 0;
	setAttr -s 10 ".kot[1:9]"  5 1 5 1 5 1 5 1 
		5;
	setAttr -s 10 ".kwl[0:9]" yes yes yes yes yes yes yes yes yes yes;
	setAttr -s 10 ".kix[0:9]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 0 0 0;
	setAttr -s 10 ".kox[0:9]"  1 0 1 0 1 0 1 0 1 0;
	setAttr -s 10 ".koy[0:9]"  0 0 0 0 0 0 0 0 0 0;
createNode aiAOV -n "aiAOV_Z";
	rename -uid "41D37AF7-4EEB-DB4B-20B3-E8B6036D189B";
	setAttr ".aovn" -type "string" "Z";
	setAttr ".aovt" 4;
createNode aiAOVFilter -n "aiAOVFilter1";
	rename -uid "5953E98C-4396-2F21-1C0D-B38CB6C24F0B";
	setAttr ".ai_translator" -type "string" "closest";
createNode aiAOV -n "aiAOV_diffuse";
	rename -uid "A1C06B6E-412C-F155-71DF-9E96CC8DBBE1";
	setAttr ".aovn" -type "string" "diffuse";
	setAttr ".aovt" 5;
createNode aiAOV -n "aiAOV_opacity";
	rename -uid "1FC6B298-4A06-ACDD-C72C-C9A4BEF17429";
	setAttr ".aovn" -type "string" "opacity";
	setAttr ".aovt" 5;
createNode aiAOV -n "aiAOV_direct";
	rename -uid "7153B986-4A44-406C-4199-EE91934A9A90";
	setAttr ".aovn" -type "string" "direct";
	setAttr ".aovt" 5;
createNode aiAOV -n "aiAOV_indirect";
	rename -uid "3A0D481A-4E5C-53E4-2001-70A602CFD97F";
	setAttr ".aovn" -type "string" "indirect";
	setAttr ".aovt" 5;
createNode aiAOV -n "aiAOV_specular";
	rename -uid "15F15AC5-48F6-27F8-8865-1FB2CB6E9D61";
	setAttr ".aovn" -type "string" "specular";
	setAttr ".aovt" 5;
createNode aiAOV -n "aiAOV_crypto_asset";
	rename -uid "E7C21B91-465D-80BD-D3C3-ACBE6CB214EB";
	setAttr ".aovn" -type "string" "crypto_asset";
	setAttr ".aovt" 5;
createNode cryptomatte -n "_aov_cryptomatte";
	rename -uid "81F81B79-4F97-D59B-B01C-8CA84D778837";
createNode aiAOV -n "aiAOV_AO";
	rename -uid "1508717D-4D6F-6252-AECA-F3919C6D6C58";
	setAttr ".aovn" -type "string" "AO";
createNode aiAmbientOcclusion -n "aiAmbientOcclusion1";
	rename -uid "D9BCB9CC-467A-77BF-8969-B0988887A34B";
createNode shadingEngine -n "aiAmbientOcclusion1SG";
	rename -uid "A2472717-47EE-1738-BA1C-57BB966E8615";
	addAttr -ci true -h true -sn "aal" -ln "attributeAliasList" -dt "attributeAlias";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
	setAttr -s 14 ".aovs";
	setAttr ".aovs[0].aov_name" -type "string" "AO";
	setAttr ".aovs[2].aov_name" -type "string" "Z";
	setAttr ".aovs[3].aov_name" -type "string" "crypto_asset";
	setAttr ".aovs[4].aov_name" -type "string" "diffuse";
	setAttr ".aovs[5].aov_name" -type "string" "direct";
	setAttr ".aovs[6].aov_name" -type "string" "indirect";
	setAttr ".aovs[7].aov_name" -type "string" "opacity";
	setAttr ".aovs[8].aov_name" -type "string" "specular";
	setAttr ".aovs[9].aov_name" -type "string" "ID";
	setAttr ".aovs[10].aov_name" -type "string" "N";
	setAttr ".aovs[11].aov_name" -type "string" "albedo";
	setAttr ".aovs[12].aov_name" -type "string" "transmission";
	setAttr ".aovs[13].aov_name" -type "string" "volume_opacity";
	setAttr ".aovs[14].aov_name" -type "string" "RGBA";
	setAttr ".aal" -type "attributeAlias" {"ai_aov_AO","aiCustomAOVs[0]","ai_aov_N","aiCustomAOVs[10]"
		,"ai_aov_albedo","aiCustomAOVs[11]","ai_aov_transmission","aiCustomAOVs[12]","ai_aov_volume_opacity"
		,"aiCustomAOVs[13]","ai_aov_RGBA","aiCustomAOVs[14]","ai_aov_Z","aiCustomAOVs[2]"
		,"ai_aov_crypto_asset","aiCustomAOVs[3]","ai_aov_diffuse","aiCustomAOVs[4]","ai_aov_direct"
		,"aiCustomAOVs[5]","ai_aov_indirect","aiCustomAOVs[6]","ai_aov_opacity","aiCustomAOVs[7]"
		,"ai_aov_specular","aiCustomAOVs[8]","ai_aov_ID","aiCustomAOVs[9]"} ;
createNode materialInfo -n "materialInfo7";
	rename -uid "DFDB0996-42FF-244C-7A79-C6ABEA69F424";
createNode aiAOV -n "aiAOV_albedo";
	rename -uid "53E47CAF-4450-9F60-B95D-59BBCE9A4535";
	setAttr ".aovn" -type "string" "albedo";
	setAttr ".aovt" 5;
createNode aiAOV -n "aiAOV_N";
	rename -uid "F0C4ED3A-4683-E99D-2AEE-AAA04ACD5F2A";
	setAttr ".aovn" -type "string" "N";
	setAttr ".aovt" 7;
createNode aiAOVFilter -n "aiAOVFilter2";
	rename -uid "BF9E3A94-4AA5-90F8-A9CB-08AAC61883E1";
	setAttr ".ai_translator" -type "string" "closest";
createNode aiAOV -n "aiAOV_RGBA";
	rename -uid "47872976-4C7B-FAD0-063C-F6A0420BC105";
	setAttr ".aovn" -type "string" "RGBA";
	setAttr ".lg" yes;
createNode aiImagerDenoiserNoice -n "aiImagerDenoiserNoice1";
	rename -uid "1FA90DA8-421C-7A19-0830-AB8E7D7BF0F0";
select -ne :time1;
	setAttr -av -k on ".cch";
	setAttr -k on ".fzn";
	setAttr -av -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr ".o" 975;
	setAttr -av -k on ".unw" 975;
	setAttr -av -k on ".etw";
	setAttr -av -k on ".tps";
	setAttr -av -k on ".tms";
select -ne :sequenceManager1;
	setAttr ".o" 856;
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
	setAttr -s 21 ".st";
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
	setAttr -s 33 ".s";
select -ne :postProcessList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 41 ".u";
select -ne :defaultRenderingList1;
	setAttr -k on ".ihi";
	setAttr -s 4 ".r";
select -ne :lightList1;
	setAttr -s 13 ".l";
select -ne :defaultTextureList1;
	setAttr -s 56 ".tx";
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
	setAttr -s 14 ".aovs";
	setAttr ".aovs[0].aov_name" -type "string" "RGBA";
	setAttr ".aovs[1].aov_name" -type "string" "Z";
	setAttr ".aovs[2].aov_name" -type "string" "diffuse";
	setAttr ".aovs[3].aov_name" -type "string" "opacity";
	setAttr ".aovs[4].aov_name" -type "string" "direct";
	setAttr ".aovs[5].aov_name" -type "string" "indirect";
	setAttr ".aovs[6].aov_name" -type "string" "specular";
	setAttr ".aovs[7].aov_name" -type "string" "crypto_asset";
	setAttr ".aovs[8].aov_name" -type "string" "AO";
	setAttr ".aovs[9].aov_name" -type "string" "ID";
	setAttr ".aovs[10].aov_name" -type "string" "N";
	setAttr ".aovs[11].aov_name" -type "string" "albedo";
	setAttr ".aovs[12].aov_name" -type "string" "transmission";
	setAttr ".aovs[13].aov_name" -type "string" "volume_opacity";
	setAttr -k on ".ai_surface_shader";
	setAttr -k on ".ai_volume_shader";
	setAttr ".aal" -type "attributeAlias" {"ai_aov_RGBA","aiCustomAOVs[0]","ai_aov_N"
		,"aiCustomAOVs[10]","ai_aov_albedo","aiCustomAOVs[11].aovName","ai_aov_transmission"
		,"aiCustomAOVs[12].aovName","ai_aov_volume_opacity","aiCustomAOVs[13].aovName","ai_aov_Z"
		,"aiCustomAOVs[1].aovName","ai_aov_diffuse","aiCustomAOVs[2].aovName","ai_aov_opacity"
		,"aiCustomAOVs[3].aovName","ai_aov_direct","aiCustomAOVs[4].aovName","ai_aov_indirect"
		,"aiCustomAOVs[5].aovName","ai_aov_specular","aiCustomAOVs[6].aovName","ai_aov_crypto_asset"
		,"aiCustomAOVs[7].aovName","ai_aov_AO","aiCustomAOVs[8].aovName","ai_aov_ID","aiCustomAOVs[9].aovName"
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
	setAttr -s 14 ".aovs";
	setAttr ".aovs[0].aov_name" -type "string" "RGBA";
	setAttr ".aovs[1].aov_name" -type "string" "Z";
	setAttr ".aovs[2].aov_name" -type "string" "diffuse";
	setAttr ".aovs[3].aov_name" -type "string" "opacity";
	setAttr ".aovs[4].aov_name" -type "string" "direct";
	setAttr ".aovs[5].aov_name" -type "string" "indirect";
	setAttr ".aovs[6].aov_name" -type "string" "specular";
	setAttr ".aovs[7].aov_name" -type "string" "crypto_asset";
	setAttr ".aovs[8].aov_name" -type "string" "AO";
	setAttr ".aovs[9].aov_name" -type "string" "ID";
	setAttr ".aovs[10].aov_name" -type "string" "N";
	setAttr ".aovs[11].aov_name" -type "string" "albedo";
	setAttr ".aovs[12].aov_name" -type "string" "transmission";
	setAttr ".aovs[13].aov_name" -type "string" "volume_opacity";
	setAttr -k on ".ai_surface_shader";
	setAttr -k on ".ai_volume_shader";
	setAttr ".aal" -type "attributeAlias" {"ai_aov_RGBA","aiCustomAOVs[0]","ai_aov_N"
		,"aiCustomAOVs[10]","ai_aov_albedo","aiCustomAOVs[11].aovName","ai_aov_transmission"
		,"aiCustomAOVs[12].aovName","ai_aov_volume_opacity","aiCustomAOVs[13].aovName","ai_aov_Z"
		,"aiCustomAOVs[1].aovName","ai_aov_diffuse","aiCustomAOVs[2].aovName","ai_aov_opacity"
		,"aiCustomAOVs[3].aovName","ai_aov_direct","aiCustomAOVs[4].aovName","ai_aov_indirect"
		,"aiCustomAOVs[5].aovName","ai_aov_specular","aiCustomAOVs[6].aovName","ai_aov_crypto_asset"
		,"aiCustomAOVs[7].aovName","ai_aov_AO","aiCustomAOVs[8].aovName","ai_aov_ID","aiCustomAOVs[9].aovName"
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
	setAttr -s 13 ".dsm";
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
connectAttr "werkstatt_fertigRN.phl[47]" "werkstatt_fertigRN.phl[48]";
connectAttr "werkstatt_fertigRN.phl[49]" "werkstatt_fertigRN.phl[50]";
connectAttr "werkstatt_fertigRN.phl[51]" "werkstatt_fertigRN.phl[52]";
connectAttr "werkstatt_fertigRN.phl[53]" "werkstatt_fertigRN.phl[54]";
connectAttr "werkstatt_fertigRN.phl[55]" "werkstatt_fertigRN.phl[56]";
connectAttr "werkstatt_fertigRN.phl[57]" "werkstatt_fertigRN.phl[58]";
connectAttr "werkstatt_fertigRN.phl[59]" "werkstatt_fertigRN.phl[60]";
connectAttr "span_Shape1.iog" "werkstatt_fertigRN.phl[61]";
connectAttr "span_Shape2.iog" "werkstatt_fertigRN.phl[62]";
connectAttr "span_Shape3.iog" "werkstatt_fertigRN.phl[63]";
connectAttr "span_Shape4.iog" "werkstatt_fertigRN.phl[64]";
connectAttr "span_Shape5.iog" "werkstatt_fertigRN.phl[65]";
connectAttr "span_Shape6.iog" "werkstatt_fertigRN.phl[66]";
connectAttr "span_Shape7.iog" "werkstatt_fertigRN.phl[67]";
connectAttr "werkstatt_fertigRN.phl[68]" "werkstatt_fertigRN.phl[69]";
connectAttr "werkstatt_fertigRN.phl[70]" "werkstatt_fertigRN.phl[71]";
connectAttr "werkstatt_fertigRN.phl[72]" "werkstatt_fertigRN.phl[73]";
connectAttr "werkstatt_fertigRN.phl[74]" "werkstatt_fertigRN.phl[75]";
connectAttr "stage_fertigRN.phl[13]" "stage_fertigRN.phl[14]";
connectAttr "stage_fertigRN.phl[15]" "stage_fertigRN.phl[16]";
connectAttr "stage_fertigRN.phl[17]" "stage_fertigRN.phl[18]";
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
connectAttr "cam1_translateX.o" "cam1_establishingShot.tx" -l on;
connectAttr "cam1_translateY.o" "cam1_establishingShot.ty" -l on;
connectAttr "cam1_translateZ.o" "cam1_establishingShot.tz" -l on;
connectAttr "cam1_rotateX.o" "cam1_establishingShot.rx" -l on;
connectAttr "cam1_rotateY.o" "cam1_establishingShot.ry" -l on;
connectAttr "cam1_rotateZ.o" "cam1_establishingShot.rz" -l on;
connectAttr "cam2_topViolin_translateX.o" "cam2_topViolin.tx" -l on;
connectAttr "cam2_topViolin_translateY.o" "cam2_topViolin.ty" -l on;
connectAttr "cam2_topViolin_translateZ.o" "cam2_topViolin.tz" -l on;
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
connectAttr "cam5_woodScraps1_translateX.o" "cam5_woodScraps_old.tx" -l on;
connectAttr "cam5_woodScraps1_translateY.o" "cam5_woodScraps_old.ty" -l on;
connectAttr "cam5_woodScraps1_translateZ.o" "cam5_woodScraps_old.tz" -l on;
connectAttr "cam5_woodScraps1_rotateX.o" "cam5_woodScraps_old.rx" -l on;
connectAttr "cam5_woodScraps1_rotateY.o" "cam5_woodScraps_old.ry" -l on;
connectAttr "cam5_woodScraps1_rotateZ.o" "cam5_woodScraps_old.rz" -l on;
connectAttr "cam5_woodScraps1_translateX1.o" "cam5_woodScraps.tx";
connectAttr "cam5_woodScraps1_translateY1.o" "cam5_woodScraps.ty";
connectAttr "cam5_woodScraps1_translateZ1.o" "cam5_woodScraps.tz";
connectAttr "cam5_woodScraps1_rotateX1.o" "cam5_woodScraps.rx";
connectAttr "cam5_woodScraps1_rotateY1.o" "cam5_woodScraps.ry";
connectAttr "ubercam2_rotateX.o" "ubercam_final.rx" -l on;
connectAttr "ubercam2_rotateY.o" "ubercam_final.ry" -l on;
connectAttr "ubercam2_translateX.o" "ubercam_final.tx" -l on;
connectAttr "ubercam2_translateY.o" "ubercam_final.ty" -l on;
connectAttr "ubercam2_translateZ.o" "ubercam_final.tz" -l on;
connectAttr "ubercam2Shape_centerOfInterest.o" "ubercam_finalShape.coi" -l on;
connectAttr "ubercam2Shape_tumblePivotX.o" "ubercam_finalShape.tpx";
connectAttr "ubercam2Shape_tumblePivotY.o" "ubercam_finalShape.tpy";
connectAttr "ubercam2Shape_tumblePivotZ.o" "ubercam_finalShape.tpz";
connectAttr "cam6_frontCurtain_translateZ.o" "cam6_frontCurtain.tz" -l on;
connectAttr "cam6_frontCurtain_translateY.o" "cam6_frontCurtain.ty" -l on;
connectAttr "cam6_frontCurtain_rotateX.o" "cam6_frontCurtain.rx" -l on;
connectAttr "cam6_frontCurtain_rotateY.o" "cam6_frontCurtain.ry" -l on;
connectAttr "cam6_frontCurtain_rotateZ.o" "cam6_frontCurtain.rz" -l on;
connectAttr "ubercam_translateX.o" "ubercam_v4.tx";
connectAttr "ubercam_translateY.o" "ubercam_v4.ty";
connectAttr "ubercam_translateZ.o" "ubercam_v4.tz";
connectAttr "ubercam_rotateX.o" "ubercam_v4.rx";
connectAttr "ubercam_rotateY.o" "ubercam_v4.ry";
connectAttr "ubercamShape_centerOfInterest.o" "ubercam_v4Shape.coi";
connectAttr "ubercamShape_tumblePivotX.o" "ubercam_v4Shape.tpx";
connectAttr "ubercamShape_tumblePivotY.o" "ubercam_v4Shape.tpy";
connectAttr "ubercamShape_tumblePivotZ.o" "ubercam_v4Shape.tpz";
connectAttr "ubercamShape_displayGateMask.o" "ubercam_v4Shape.dgm";
connectAttr "ubercam1_rotateX.o" "ubercam_afterTeamFeedback.rx" -l on;
connectAttr "ubercam1_rotateY.o" "ubercam_afterTeamFeedback.ry" -l on;
connectAttr "ubercam1_translateX.o" "ubercam_afterTeamFeedback.tx" -l on;
connectAttr "ubercam1_translateY.o" "ubercam_afterTeamFeedback.ty" -l on;
connectAttr "ubercam1_translateZ.o" "ubercam_afterTeamFeedback.tz" -l on;
connectAttr "ubercam1Shape_centerOfInterest.o" "ubercam_afterTeamFeedbackShape.coi"
		 -l on;
connectAttr "ubercam1Shape_tumblePivotX.o" "ubercam_afterTeamFeedbackShape.tpx";
connectAttr "ubercam1Shape_tumblePivotY.o" "ubercam_afterTeamFeedbackShape.tpy";
connectAttr "ubercam1Shape_tumblePivotZ.o" "ubercam_afterTeamFeedbackShape.tpz";
connectAttr "left_curtain_translateX.o" "left_curtain.tx";
connectAttr "right_curtain_translateX.o" "right_curtain.tx";
connectAttr "ubercam_rotateX1.o" "ubercam.rx" -l on;
connectAttr "ubercam_rotateY1.o" "ubercam.ry" -l on;
connectAttr "ubercam_translateX1.o" "ubercam.tx" -l on;
connectAttr "ubercam_translateY1.o" "ubercam.ty" -l on;
connectAttr "ubercam_translateZ1.o" "ubercam.tz" -l on;
connectAttr "ubercamShape_centerOfInterest1.o" "ubercamShape.coi" -l on;
connectAttr "ubercamShape_tumblePivotX1.o" "ubercamShape.tpx";
connectAttr "ubercamShape_tumblePivotY1.o" "ubercamShape.tpy";
connectAttr "ubercamShape_tumblePivotZ1.o" "ubercamShape.tpz";
connectAttr "ubercamShape_displayGateMask1.o" "ubercamShape.dgm";
connectAttr "Key_LightShape_exposure.o" "Key_LightShape.ai_exposure";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "aiStandardSurface1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "aiStandardSurface2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "aiStandardSurface3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "aiStandardSurface4SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "aiStandardSurface5SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "aiStandardSurface6SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "aiAmbientOcclusion1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "aiStandardSurface1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "aiStandardSurface2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "aiStandardSurface3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "aiStandardSurface4SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "aiStandardSurface5SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "aiStandardSurface6SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "aiAmbientOcclusion1SG.message" ":defaultLightSet.message";
relationship "ignore" ":lightLinker1" "span_Shape1.message" "aiSkyDomeLightShape1.message";
relationship "ignore" ":lightLinker1" "span_Shape4.message" "aiSkyDomeLightShape1.message";
relationship "ignore" ":lightLinker1" "span_Shape3.message" "aiSkyDomeLightShape1.message";
relationship "ignore" ":lightLinker1" "span_Shape2.message" "aiSkyDomeLightShape1.message";
relationship "ignore" ":lightLinker1" "span_Shape7.message" "aiSkyDomeLightShape1.message";
relationship "ignore" ":lightLinker1" "span_Shape5.message" "aiSkyDomeLightShape1.message";
relationship "ignore" ":lightLinker1" "span_Shape6.message" "aiSkyDomeLightShape1.message";
relationship "ignore" ":lightLinker1" "span_Shape1.message" "BG_Light1Shape.message";
relationship "ignore" ":lightLinker1" "span_Shape4.message" "BG_Light1Shape.message";
relationship "ignore" ":lightLinker1" "span_Shape3.message" "BG_Light1Shape.message";
relationship "ignore" ":lightLinker1" "span_Shape2.message" "BG_Light1Shape.message";
relationship "ignore" ":lightLinker1" "span_Shape7.message" "BG_Light1Shape.message";
relationship "ignore" ":lightLinker1" "span_Shape5.message" "BG_Light1Shape.message";
relationship "ignore" ":lightLinker1" "span_Shape6.message" "BG_Light1Shape.message";
relationship "ignore" ":lightLinker1" "gears_planeShape.message" "Left_spotLight2Shape.message";
relationship "ignore" ":lightLinker1" "wood_planeShape.message" "Left_spotLight2Shape.message";
relationship "ignore" ":lightLinker1" "gears_planeShape.message" "Key_LightShape.message";
relationship "ignore" ":lightLinker1" "gears_planeShape.message" "Fill_LightShape.message";
relationship "ignore" ":lightLinker1" "gears_planeShape.message" "Back_LightShape.message";
relationship "ignore" ":lightLinker1" "gears_planeShape.message" "Right_spotLight1Shape.message";
relationship "ignore" ":lightLinker1" "gears_planeShape.message" "Right_LightShape.message";
relationship "ignore" ":lightLinker1" "gears_planeShape.message" "Left_LightShape.message";
relationship "ignore" ":lightLinker1" "gears_planeShape.message" "aiSkyDomeLightShape1.message";
relationship "ignore" ":lightLinker1" "gears_planeShape.message" "BG_LightShape.message";
relationship "ignore" ":lightLinker1" "gears_planeShape.message" "decoration_lightShape.message";
relationship "ignore" ":lightLinker1" "gears_planeShape.message" "BG_Light1Shape.message";
relationship "ignore" ":lightLinker1" "gears_planeShape.message" "Left_spotLightShape.message";
relationship "ignore" ":lightLinker1" "span_Shape3.message" "Gears_LightShape.message";
relationship "ignore" ":lightLinker1" "span_Shape1.message" "Gears_LightShape.message";
relationship "ignore" ":lightLinker1" "span_Shape2.message" "Gears_LightShape.message";
relationship "ignore" ":lightLinker1" "span_Shape6.message" "Gears_LightShape.message";
relationship "ignore" ":lightLinker1" "span_Shape4.message" "Gears_LightShape.message";
relationship "ignore" ":lightLinker1" "span_Shape5.message" "Gears_LightShape.message";
relationship "ignore" ":lightLinker1" "span_Shape7.message" "Gears_LightShape.message";
relationship "ignore" ":lightLinker1" "BG_planeShape.message" "Gears_LightShape.message";
relationship "ignore" ":lightLinker1" "curtains1Shape.message" "Gears_LightShape.message";
relationship "ignore" ":lightLinker1" "right_curtainShape.message" "Gears_LightShape.message";
relationship "ignore" ":lightLinker1" "left_curtainShape.message" "Gears_LightShape.message";
relationship "ignore" ":lightLinker1" "wood_planeShape.message" "Gears_LightShape.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "werkstatt_fertigRN.phl[23]" "werkstatt_fertigRN.phl[24]";
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
connectAttr "sharedReferenceNode.sr" "werkstatt_fertigRN.sr";
connectAttr "aiAtmosphereVolume.msg" ":defaultArnoldRenderOptions.atm";
connectAttr "aiAOV_Z.msg" ":defaultArnoldRenderOptions.aovs" -na;
connectAttr "aiAOV_diffuse.msg" ":defaultArnoldRenderOptions.aovs" -na;
connectAttr "aiAOV_opacity.msg" ":defaultArnoldRenderOptions.aovs" -na;
connectAttr "aiAOV_direct.msg" ":defaultArnoldRenderOptions.aovs" -na;
connectAttr "aiAOV_indirect.msg" ":defaultArnoldRenderOptions.aovs" -na;
connectAttr "aiAOV_specular.msg" ":defaultArnoldRenderOptions.aovs" -na;
connectAttr "aiAOV_crypto_asset.msg" ":defaultArnoldRenderOptions.aovs" -na;
connectAttr "aiAOV_AO.msg" ":defaultArnoldRenderOptions.aovs" -na;
connectAttr "aiAOV_albedo.msg" ":defaultArnoldRenderOptions.aovs" -na;
connectAttr "aiAOV_N.msg" ":defaultArnoldRenderOptions.aovs" -na;
connectAttr "aiAOV_RGBA.msg" ":defaultArnoldRenderOptions.aovs" -na;
connectAttr "aiImagerDenoiserNoice1.msg" ":defaultArnoldRenderOptions.imagers" -na
		;
connectAttr "stage_fertigRN.phl[1]" "stage_fertigRN.phl[2]";
connectAttr "stage_fertigRN.phl[3]" "stage_fertigRN.phl[4]";
connectAttr "stage_fertigRN.phl[5]" "stage_fertigRN.phl[6]";
connectAttr "stage_fertigRN.phl[7]" "stage_fertigRN.phl[8]";
connectAttr "stage_fertigRN.phl[9]" "stage_fertigRN.phl[10]";
connectAttr "stage_fertigRN.phl[11]" "stage_fertigRN.phl[12]";
connectAttr "sharedReferenceNode.sr" "stage_fertigRN.sr";
connectAttr "sharedReferenceNode.sr" "Geige_RigRN.sr";
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
connectAttr "EstablishingShot.msg" "sequencer1.shts" -na;
connectAttr "EstablishingShot1.msg" "sequencer1.shts" -na;
connectAttr "EstablishingShot2.msg" "sequencer1.shts" -na;
connectAttr "Makro_Body.msg" "sequencer1.shts" -na;
connectAttr "Makro_Body1.msg" "sequencer1.shts" -na;
connectAttr "EstablishingShot3.msg" "sequencer1.shts" -na;
connectAttr "Makro_TopViolin.msg" "sequencer1.shts" -na;
connectAttr "Makro_Schnecke1.msg" "sequencer1.shts" -na;
connectAttr "Makro_Body2.msg" "sequencer1.shts" -na;
connectAttr "Makro_Body3.msg" "sequencer1.shts" -na;
connectAttr "cam1_establishingShotShape.msg" "EstablishingShots.ccm";
connectAttr "cam2_topViolinShape.msg" "Makro_Violin_Top.ccm";
connectAttr "cam3_slowSnailShape.msg" "Makro_Schnecke.ccm";
connectAttr "cam4_bodyCloseUpShape.msg" "Makro_Body_CloseUp.ccm";
connectAttr "cam5_woodScraps_oldShape.msg" "Makro_WoodScraps.ccm";
connectAttr "cam6_frontCurtainShape.msg" "Front_Curtain.ccm";
connectAttr "cam1_establishingShotShape.msg" "EstablishingShot.ccm";
connectAttr "cam2_topViolinShape.msg" "EstablishingShot1.ccm";
connectAttr "cam3_slowSnailShape.msg" "EstablishingShot2.ccm";
connectAttr "cam4_bodyCloseUpShape.msg" "Makro_Body.ccm";
connectAttr "cam5_woodScraps_oldShape.msg" "Makro_Body1.ccm";
connectAttr "cam1_establishingShotShape.msg" "EstablishingShot3.ccm";
connectAttr "cam2_topViolinShape.msg" "Makro_TopViolin.ccm";
connectAttr "cam3_slowSnailShape.msg" "Makro_Schnecke1.ccm";
connectAttr "cam4_bodyCloseUpShape.msg" "Makro_Body2.ccm";
connectAttr "cam5_woodScrapsShape.msg" "Makro_Body3.ccm";
connectAttr ":defaultArnoldDriver.msg" "aiAOV_Z.out[0].drvr";
connectAttr "aiAOVFilter1.msg" "aiAOV_Z.out[0].ftr";
connectAttr ":defaultArnoldDriver.msg" "aiAOV_diffuse.out[0].drvr";
connectAttr ":defaultArnoldFilter.msg" "aiAOV_diffuse.out[0].ftr";
connectAttr ":defaultArnoldDriver.msg" "aiAOV_opacity.out[0].drvr";
connectAttr ":defaultArnoldFilter.msg" "aiAOV_opacity.out[0].ftr";
connectAttr ":defaultArnoldDriver.msg" "aiAOV_direct.out[0].drvr";
connectAttr ":defaultArnoldFilter.msg" "aiAOV_direct.out[0].ftr";
connectAttr ":defaultArnoldDriver.msg" "aiAOV_indirect.out[0].drvr";
connectAttr ":defaultArnoldFilter.msg" "aiAOV_indirect.out[0].ftr";
connectAttr ":defaultArnoldDriver.msg" "aiAOV_specular.out[0].drvr";
connectAttr ":defaultArnoldFilter.msg" "aiAOV_specular.out[0].ftr";
connectAttr ":defaultArnoldDriver.msg" "aiAOV_crypto_asset.out[0].drvr";
connectAttr ":defaultArnoldFilter.msg" "aiAOV_crypto_asset.out[0].ftr";
connectAttr "_aov_cryptomatte.out" "aiAOV_crypto_asset.dftv";
connectAttr ":defaultArnoldDriver.msg" "aiAOV_AO.out[0].drvr";
connectAttr ":defaultArnoldFilter.msg" "aiAOV_AO.out[0].ftr";
connectAttr "aiAmbientOcclusion1.out" "aiAOV_AO.dftv";
connectAttr "aiAmbientOcclusion1.out" "aiAmbientOcclusion1SG.ss";
connectAttr "aiAmbientOcclusion1SG.msg" "materialInfo7.sg";
connectAttr "aiAmbientOcclusion1.msg" "materialInfo7.m";
connectAttr "aiAmbientOcclusion1.msg" "materialInfo7.t" -na;
connectAttr ":defaultArnoldDriver.msg" "aiAOV_albedo.out[0].drvr";
connectAttr ":defaultArnoldFilter.msg" "aiAOV_albedo.out[0].ftr";
connectAttr ":defaultArnoldDriver.msg" "aiAOV_N.out[0].drvr";
connectAttr "aiAOVFilter2.msg" "aiAOV_N.out[0].ftr";
connectAttr ":defaultArnoldDriver.msg" "aiAOV_RGBA.out[0].drvr";
connectAttr ":defaultArnoldFilter.msg" "aiAOV_RGBA.out[0].ftr";
connectAttr "sequencer1.msg" ":sequenceManager1.seqts" -na;
connectAttr "trackInfoManager1.msg" ":sequenceManager1.tim";
connectAttr "aiStandardSurface1SG.pa" ":renderPartition.st" -na;
connectAttr "aiStandardSurface2SG.pa" ":renderPartition.st" -na;
connectAttr "aiStandardSurface3SG.pa" ":renderPartition.st" -na;
connectAttr "aiStandardSurface4SG.pa" ":renderPartition.st" -na;
connectAttr "aiStandardSurface5SG.pa" ":renderPartition.st" -na;
connectAttr "aiStandardSurface6SG.pa" ":renderPartition.st" -na;
connectAttr "aiAmbientOcclusion1SG.pa" ":renderPartition.st" -na;
connectAttr "aiStandardSurface1.msg" ":defaultShaderList1.s" -na;
connectAttr "aiStandardSurface2.msg" ":defaultShaderList1.s" -na;
connectAttr "aiStandardSurface3.msg" ":defaultShaderList1.s" -na;
connectAttr "aiStandardSurface4.msg" ":defaultShaderList1.s" -na;
connectAttr "aiStandardSurface5.msg" ":defaultShaderList1.s" -na;
connectAttr "aiStandardSurface6.msg" ":defaultShaderList1.s" -na;
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
connectAttr "place2dTexture8.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture9.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture10.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture11.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "aiSkyDomeLightShape1.ltd" ":lightList1.l" -na;
connectAttr "Fill_LightShape.ltd" ":lightList1.l" -na;
connectAttr "Key_LightShape.ltd" ":lightList1.l" -na;
connectAttr "Back_LightShape.ltd" ":lightList1.l" -na;
connectAttr "Left_LightShape.ltd" ":lightList1.l" -na;
connectAttr "Right_LightShape.ltd" ":lightList1.l" -na;
connectAttr "BG_LightShape.ltd" ":lightList1.l" -na;
connectAttr "Left_spotLightShape.ltd" ":lightList1.l" -na;
connectAttr "decoration_lightShape.ltd" ":lightList1.l" -na;
connectAttr "BG_Light1Shape.ltd" ":lightList1.l" -na;
connectAttr "Right_spotLight1Shape.ltd" ":lightList1.l" -na;
connectAttr "Left_spotLight2Shape.ltd" ":lightList1.l" -na;
connectAttr "Gears_LightShape.ltd" ":lightList1.l" -na;
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
connectAttr "aiSkyDomeLight1.iog" ":defaultLightSet.dsm" -na;
connectAttr "Fill_Light.iog" ":defaultLightSet.dsm" -na;
connectAttr "Key_Light.iog" ":defaultLightSet.dsm" -na;
connectAttr "Back_Light.iog" ":defaultLightSet.dsm" -na;
connectAttr "Left_Light.iog" ":defaultLightSet.dsm" -na;
connectAttr "Right_Light.iog" ":defaultLightSet.dsm" -na;
connectAttr "BG_Light.iog" ":defaultLightSet.dsm" -na;
connectAttr "Left_spotLight.iog" ":defaultLightSet.dsm" -na;
connectAttr "decoration_light.iog" ":defaultLightSet.dsm" -na;
connectAttr "BG_Light1.iog" ":defaultLightSet.dsm" -na;
connectAttr "Right_spotLight1.iog" ":defaultLightSet.dsm" -na;
connectAttr "Left_spotLight2.iog" ":defaultLightSet.dsm" -na;
connectAttr "Gears_Light.iog" ":defaultLightSet.dsm" -na;
// End of Scene01_Werkstatt_final.ma
