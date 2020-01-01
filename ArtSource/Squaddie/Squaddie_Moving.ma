//Maya ASCII 2019 scene
//Name: Squaddie_Moving.ma
//Last modified: Wed, Jan 01, 2020 02:19:16 PM
//Codeset: UTF-8
file -rdi 1 -ns "Squaddie" -rfn "SquaddieRN" -op "v=0;" -typ "mayaAscii" "/Users/briancollins/Unity/DropZone/ArtSource/Squaddie/Squaddie.ma";
file -rdi 1 -ns "MkII" -rfn "MkIIRN" -op "v=0;" -typ "mayaAscii" "/Users/briancollins/Unity/DropZone/ArtSource/Weapons/MkII.ma";
file -r -ns "Squaddie" -dr 1 -rfn "SquaddieRN" -op "v=0;" -typ "mayaAscii" "/Users/briancollins/Unity/DropZone/ArtSource/Squaddie/Squaddie.ma";
file -r -ns "MkII" -dr 1 -rfn "MkIIRN" -op "v=0;" -typ "mayaAscii" "/Users/briancollins/Unity/DropZone/ArtSource/Weapons/MkII.ma";
requires maya "2019";
requires -nodeType "gameFbxExporter" "gameFbxExporter" "1.0";
requires "mtoa" "3.1.2";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2019";
fileInfo "version" "2019";
fileInfo "cutIdentifier" "201812112215-434d8d9c04";
fileInfo "osv" "Mac OS X 10.14.6";
createNode transform -s -n "persp";
	rename -uid "ABF7CAC9-7042-CBE0-D916-39910278FA3A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 165.21644828476045 169.05085679728563 403.22478099405055 ;
	setAttr ".r" -type "double3" -11.138352729622007 382.59999999982824 -8.6127585638231645e-16 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "3D0D0238-014B-4FD1-30CB-E49DEC31D45C";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 438.17416409913233;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -3.5527136788005009e-15 84.404905292606287 6.3177563723308534 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "4824E5B6-704D-DD0F-16F4-8AA90844E590";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "FC5F5E14-D945-BD70-1C91-DD9A65D8C8A4";
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
	rename -uid "D242D070-8E41-F19C-CAAF-068A91B30DF0";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -1.7912929209256276 54.606239220568106 1001.4888672296115 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "D0DAF76B-E346-383C-FA2E-C381E30429C3";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1075.3292253716511;
	setAttr ".ow" 247.36515046140084;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".tp" -type "double3" -1.7912929209256276 54.606239220568106 -73.840358142039634 ;
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "5FB9A50F-DB45-7576-8515-A49B66C8A97E";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 73.935698095622456 -2.025635564263617 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "08154BA9-9047-3AB2-A5DF-B195E1B656F3";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 309.8869651711928;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "pointLight1";
	rename -uid "A4C4AB5B-0248-D311-064B-A5B5E08BC665";
	setAttr ".t" -type "double3" 94.732403100383749 350.69603050034289 202.62188606886471 ;
createNode pointLight -n "pointLightShape1" -p "pointLight1";
	rename -uid "B2AB1DEC-714D-4D8B-AEC7-B582A70EE8F6";
	setAttr -k off ".v";
	setAttr ".cl" -type "float3" 1 0.79910141 0.56599998 ;
	setAttr ".in" 2.0270271301269531;
	setAttr ".us" no;
createNode transform -n "pointLight2";
	rename -uid "4829A687-F04E-1D53-19FA-029F4709AB0B";
	setAttr ".t" -type "double3" -102.67414197752672 84.04381099779124 -183.95791339846397 ;
createNode pointLight -n "pointLightShape2" -p "pointLight2";
	rename -uid "37359238-874F-0928-A662-598CF3104AAB";
	setAttr -k off ".v";
	setAttr ".cl" -type "float3" 0 0.35861659 1 ;
createNode transform -n "ambientLight1";
	rename -uid "2E0D673E-074B-13F9-E0FA-AC9980ED99F2";
	setAttr ".t" -type "double3" 0 315.88271047940236 0 ;
createNode ambientLight -n "ambientLightShape1" -p "ambientLight1";
	rename -uid "706745A5-A843-956B-CB27-70BADE31C050";
	setAttr -k off ".v";
	setAttr ".cl" -type "float3" 0.61150002 0.57069999 0.61930001 ;
	setAttr ".in" 0.33783784508705139;
	setAttr ".urs" no;
createNode transform -n "pPlane1";
	rename -uid "98E30D38-8F4F-A4C3-9846-189A6E5216C8";
createNode mesh -n "pPlaneShape1" -p "pPlane1";
	rename -uid "500AA628-0D4D-AFAD-8A8A-0DB2CEFB9CF9";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.99854997883771834 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode fosterParent -n "MkIIRNfosterParent1";
	rename -uid "3BF3B39A-D94F-D3E4-6EB0-FAA4E2AFAF4B";
createNode parentConstraint -n "Weapon_MkII1_parentConstraint1" -p "MkIIRNfosterParent1";
	rename -uid "A26D8F31-E54A-A9E4-2FC6-888819FFBBF5";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "Attach_RightHandW0" -dv 1 -min 0 
		-at "double";
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
	setAttr ".lr" -type "double3" -275.03885714062665 -54.414830458752938 98.239905932030936 ;
	setAttr ".rst" -type "double3" -71.905138372518763 112.77091918951142 10.228960416052768 ;
	setAttr ".rsrr" -type "double3" -284.8910021905366 0.64446566458931642 -11.126855858155484 ;
	setAttr -k on ".w0";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "3E9CB871-5246-F6BD-4408-0784C154B451";
	setAttr -s 8 ".lnk";
	setAttr -s 8 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "07CCBF25-FB4F-E9F4-066A-F89E3F0B5EAF";
	setAttr ".cdl" 1;
	setAttr -s 2 ".dli[1]"  1;
	setAttr -s 2 ".dli";
createNode displayLayer -n "defaultLayer";
	rename -uid "3AFC2083-B947-F7A2-A1CF-8784DD7FE6BE";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "1DD35828-0F42-7FCF-64D9-C6BF8156C6AA";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "4F4A93B8-5947-7084-81A2-88B3C2992DDC";
	setAttr ".g" yes;
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "8B144BC7-A046-1C99-CA14-5E86BC1454D3";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "936E5F0A-4242-9080-792E-FF8EE40392D6";
createNode reference -n "SquaddieRN";
	rename -uid "92FD56F0-1847-D578-2DAF-D49FE59C6074";
	setAttr -s 279 ".phl";
	setAttr ".phl[110]" 0;
	setAttr ".phl[111]" 0;
	setAttr ".phl[112]" 0;
	setAttr ".phl[113]" 0;
	setAttr ".phl[114]" 0;
	setAttr ".phl[115]" 0;
	setAttr ".phl[116]" 0;
	setAttr ".phl[117]" 0;
	setAttr ".phl[118]" 0;
	setAttr ".phl[119]" 0;
	setAttr ".phl[120]" 0;
	setAttr ".phl[121]" 0;
	setAttr ".phl[122]" 0;
	setAttr ".phl[123]" 0;
	setAttr ".phl[124]" 0;
	setAttr ".phl[125]" 0;
	setAttr ".phl[126]" 0;
	setAttr ".phl[127]" 0;
	setAttr ".phl[128]" 0;
	setAttr ".phl[129]" 0;
	setAttr ".phl[130]" 0;
	setAttr ".phl[131]" 0;
	setAttr ".phl[132]" 0;
	setAttr ".phl[133]" 0;
	setAttr ".phl[134]" 0;
	setAttr ".phl[135]" 0;
	setAttr ".phl[136]" 0;
	setAttr ".phl[137]" 0;
	setAttr ".phl[138]" 0;
	setAttr ".phl[139]" 0;
	setAttr ".phl[140]" 0;
	setAttr ".phl[141]" 0;
	setAttr ".phl[142]" 0;
	setAttr ".phl[143]" 0;
	setAttr ".phl[144]" 0;
	setAttr ".phl[145]" 0;
	setAttr ".phl[146]" 0;
	setAttr ".phl[147]" 0;
	setAttr ".phl[148]" 0;
	setAttr ".phl[149]" 0;
	setAttr ".phl[150]" 0;
	setAttr ".phl[151]" 0;
	setAttr ".phl[152]" 0;
	setAttr ".phl[153]" 0;
	setAttr ".phl[154]" 0;
	setAttr ".phl[155]" 0;
	setAttr ".phl[156]" 0;
	setAttr ".phl[157]" 0;
	setAttr ".phl[158]" 0;
	setAttr ".phl[159]" 0;
	setAttr ".phl[160]" 0;
	setAttr ".phl[161]" 0;
	setAttr ".phl[162]" 0;
	setAttr ".phl[163]" 0;
	setAttr ".phl[164]" 0;
	setAttr ".phl[165]" 0;
	setAttr ".phl[166]" 0;
	setAttr ".phl[167]" 0;
	setAttr ".phl[168]" 0;
	setAttr ".phl[169]" 0;
	setAttr ".phl[170]" 0;
	setAttr ".phl[171]" 0;
	setAttr ".phl[172]" 0;
	setAttr ".phl[173]" 0;
	setAttr ".phl[174]" 0;
	setAttr ".phl[175]" 0;
	setAttr ".phl[176]" 0;
	setAttr ".phl[177]" 0;
	setAttr ".phl[178]" 0;
	setAttr ".phl[179]" 0;
	setAttr ".phl[180]" 0;
	setAttr ".phl[181]" 0;
	setAttr ".phl[182]" 0;
	setAttr ".phl[183]" 0;
	setAttr ".phl[184]" 0;
	setAttr ".phl[185]" 0;
	setAttr ".phl[186]" 0;
	setAttr ".phl[187]" 0;
	setAttr ".phl[188]" 0;
	setAttr ".phl[189]" 0;
	setAttr ".phl[190]" 0;
	setAttr ".phl[191]" 0;
	setAttr ".phl[192]" 0;
	setAttr ".phl[193]" 0;
	setAttr ".phl[194]" 0;
	setAttr ".phl[195]" 0;
	setAttr ".phl[196]" 0;
	setAttr ".phl[197]" 0;
	setAttr ".phl[198]" 0;
	setAttr ".phl[199]" 0;
	setAttr ".phl[200]" 0;
	setAttr ".phl[201]" 0;
	setAttr ".phl[202]" 0;
	setAttr ".phl[203]" 0;
	setAttr ".phl[204]" 0;
	setAttr ".phl[205]" 0;
	setAttr ".phl[206]" 0;
	setAttr ".phl[207]" 0;
	setAttr ".phl[208]" 0;
	setAttr ".phl[209]" 0;
	setAttr ".phl[210]" 0;
	setAttr ".phl[211]" 0;
	setAttr ".phl[212]" 0;
	setAttr ".phl[213]" 0;
	setAttr ".phl[214]" 0;
	setAttr ".phl[215]" 0;
	setAttr ".phl[216]" 0;
	setAttr ".phl[217]" 0;
	setAttr ".phl[218]" 0;
	setAttr ".phl[219]" 0;
	setAttr ".phl[220]" 0;
	setAttr ".phl[221]" 0;
	setAttr ".phl[222]" 0;
	setAttr ".phl[223]" 0;
	setAttr ".phl[224]" 0;
	setAttr ".phl[225]" 0;
	setAttr ".phl[226]" 0;
	setAttr ".phl[227]" 0;
	setAttr ".phl[228]" 0;
	setAttr ".phl[229]" 0;
	setAttr ".phl[230]" 0;
	setAttr ".phl[231]" 0;
	setAttr ".phl[232]" 0;
	setAttr ".phl[233]" 0;
	setAttr ".phl[234]" 0;
	setAttr ".phl[235]" 0;
	setAttr ".phl[236]" 0;
	setAttr ".phl[237]" 0;
	setAttr ".phl[238]" 0;
	setAttr ".phl[239]" 0;
	setAttr ".phl[240]" 0;
	setAttr ".phl[241]" 0;
	setAttr ".phl[242]" 0;
	setAttr ".phl[243]" 0;
	setAttr ".phl[244]" 0;
	setAttr ".phl[245]" 0;
	setAttr ".phl[246]" 0;
	setAttr ".phl[247]" 0;
	setAttr ".phl[248]" 0;
	setAttr ".phl[249]" 0;
	setAttr ".phl[250]" 0;
	setAttr ".phl[251]" 0;
	setAttr ".phl[252]" 0;
	setAttr ".phl[253]" 0;
	setAttr ".phl[254]" 0;
	setAttr ".phl[255]" 0;
	setAttr ".phl[256]" 0;
	setAttr ".phl[257]" 0;
	setAttr ".phl[258]" 0;
	setAttr ".phl[259]" 0;
	setAttr ".phl[260]" 0;
	setAttr ".phl[261]" 0;
	setAttr ".phl[262]" 0;
	setAttr ".phl[263]" 0;
	setAttr ".phl[264]" 0;
	setAttr ".phl[265]" 0;
	setAttr ".phl[266]" 0;
	setAttr ".phl[267]" 0;
	setAttr ".phl[268]" 0;
	setAttr ".phl[269]" 0;
	setAttr ".phl[270]" 0;
	setAttr ".phl[271]" 0;
	setAttr ".phl[272]" 0;
	setAttr ".phl[273]" 0;
	setAttr ".phl[274]" 0;
	setAttr ".phl[275]" 0;
	setAttr ".phl[276]" 0;
	setAttr ".phl[277]" 0;
	setAttr ".phl[278]" 0;
	setAttr ".phl[279]" 0;
	setAttr ".phl[280]" 0;
	setAttr ".phl[281]" 0;
	setAttr ".phl[282]" 0;
	setAttr ".phl[283]" 0;
	setAttr ".phl[284]" 0;
	setAttr ".phl[285]" 0;
	setAttr ".phl[286]" 0;
	setAttr ".phl[287]" 0;
	setAttr ".phl[288]" 0;
	setAttr ".phl[289]" 0;
	setAttr ".phl[290]" 0;
	setAttr ".phl[291]" 0;
	setAttr ".phl[292]" 0;
	setAttr ".phl[293]" 0;
	setAttr ".phl[294]" 0;
	setAttr ".phl[295]" 0;
	setAttr ".phl[296]" 0;
	setAttr ".phl[297]" 0;
	setAttr ".phl[298]" 0;
	setAttr ".phl[299]" 0;
	setAttr ".phl[300]" 0;
	setAttr ".phl[301]" 0;
	setAttr ".phl[302]" 0;
	setAttr ".phl[303]" 0;
	setAttr ".phl[304]" 0;
	setAttr ".phl[305]" 0;
	setAttr ".phl[306]" 0;
	setAttr ".phl[307]" 0;
	setAttr ".phl[308]" 0;
	setAttr ".phl[309]" 0;
	setAttr ".phl[310]" 0;
	setAttr ".phl[311]" 0;
	setAttr ".phl[312]" 0;
	setAttr ".phl[313]" 0;
	setAttr ".phl[314]" 0;
	setAttr ".phl[315]" 0;
	setAttr ".phl[316]" 0;
	setAttr ".phl[317]" 0;
	setAttr ".phl[318]" 0;
	setAttr ".phl[319]" 0;
	setAttr ".phl[320]" 0;
	setAttr ".phl[321]" 0;
	setAttr ".phl[322]" 0;
	setAttr ".phl[323]" 0;
	setAttr ".phl[324]" 0;
	setAttr ".phl[325]" 0;
	setAttr ".phl[326]" 0;
	setAttr ".phl[327]" 0;
	setAttr ".phl[328]" 0;
	setAttr ".phl[329]" 0;
	setAttr ".phl[330]" 0;
	setAttr ".phl[331]" 0;
	setAttr ".phl[332]" 0;
	setAttr ".phl[333]" 0;
	setAttr ".phl[334]" 0;
	setAttr ".phl[335]" 0;
	setAttr ".phl[336]" 0;
	setAttr ".phl[337]" 0;
	setAttr ".phl[338]" 0;
	setAttr ".phl[339]" 0;
	setAttr ".phl[340]" 0;
	setAttr ".phl[341]" 0;
	setAttr ".phl[342]" 0;
	setAttr ".phl[343]" 0;
	setAttr ".phl[344]" 0;
	setAttr ".phl[345]" 0;
	setAttr ".phl[346]" 0;
	setAttr ".phl[347]" 0;
	setAttr ".phl[348]" 0;
	setAttr ".phl[349]" 0;
	setAttr ".phl[350]" 0;
	setAttr ".phl[351]" 0;
	setAttr ".phl[352]" 0;
	setAttr ".phl[353]" 0;
	setAttr ".phl[354]" 0;
	setAttr ".phl[355]" 0;
	setAttr ".phl[356]" 0;
	setAttr ".phl[357]" 0;
	setAttr ".phl[358]" 0;
	setAttr ".phl[359]" 0;
	setAttr ".phl[360]" 0;
	setAttr ".phl[361]" 0;
	setAttr ".phl[362]" 0;
	setAttr ".phl[363]" 0;
	setAttr ".phl[364]" 0;
	setAttr ".phl[365]" 0;
	setAttr ".phl[366]" 0;
	setAttr ".phl[367]" 0;
	setAttr ".phl[368]" 0;
	setAttr ".ed" -type "dataReferenceEdits" 
		"SquaddieRN"
		"SquaddieRN" 34
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightUpperArm_Control" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightUpperArm_Control" 
		"translateX" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightUpperArm_Control" 
		"translateY" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightUpperArm_Control" 
		"translateZ" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightUpperArm_Control" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightUpperArm_Control" 
		"rotateX" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightUpperArm_Control" 
		"rotateY" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftUpperArm_Control" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftUpperArm_Control" 
		"translateX" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftUpperArm_Control" 
		"translateY" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftUpperArm_Control" 
		"translateZ" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftUpperArm_Control" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftUpperArm_Control" 
		"rotateX" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftUpperArm_Control" 
		"rotateY" " -av"
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightUpperArm_Control.translateX" 
		"SquaddieRN.placeHolderList[50]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightUpperArm_Control.translateY" 
		"SquaddieRN.placeHolderList[51]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightUpperArm_Control.translateZ" 
		"SquaddieRN.placeHolderList[52]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightUpperArm_Control.rotateX" 
		"SquaddieRN.placeHolderList[53]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightUpperArm_Control.rotateY" 
		"SquaddieRN.placeHolderList[54]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightUpperArm_Control.rotateZ" 
		"SquaddieRN.placeHolderList[55]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightUpperArm_Control.visibility" 
		"SquaddieRN.placeHolderList[56]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightUpperArm_Control.scaleX" 
		"SquaddieRN.placeHolderList[57]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightUpperArm_Control.scaleY" 
		"SquaddieRN.placeHolderList[58]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightUpperArm_Control.scaleZ" 
		"SquaddieRN.placeHolderList[59]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftUpperArm_Control.translateX" 
		"SquaddieRN.placeHolderList[100]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftUpperArm_Control.translateY" 
		"SquaddieRN.placeHolderList[101]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftUpperArm_Control.translateZ" 
		"SquaddieRN.placeHolderList[102]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftUpperArm_Control.rotateX" 
		"SquaddieRN.placeHolderList[103]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftUpperArm_Control.rotateY" 
		"SquaddieRN.placeHolderList[104]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftUpperArm_Control.rotateZ" 
		"SquaddieRN.placeHolderList[105]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftUpperArm_Control.visibility" 
		"SquaddieRN.placeHolderList[106]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftUpperArm_Control.scaleX" 
		"SquaddieRN.placeHolderList[107]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftUpperArm_Control.scaleY" 
		"SquaddieRN.placeHolderList[108]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftUpperArm_Control.scaleZ" 
		"SquaddieRN.placeHolderList[109]" ""
		"SquaddieRN" 472
		2 "|Squaddie:Root_Control" "translate" " -type \"double3\" 0 0 0"
		2 "|Squaddie:Root_Control" "translateX" " -av"
		2 "|Squaddie:Root_Control" "translateY" " -av"
		2 "|Squaddie:Root_Control" "translateZ" " -av"
		2 "|Squaddie:Root_Control" "rotate" " -type \"double3\" 0 0 0"
		2 "|Squaddie:Root_Control" "rotateX" " -av"
		2 "|Squaddie:Root_Control" "rotateY" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control" "translate" " -type \"double3\" 0 0 0"
		
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control" "translateX" " -av"
		
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control" "translateY" " -av"
		
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control" "translateZ" " -av"
		
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control" "rotate" " -type \"double3\" 0 0 0"
		
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control" "rotateX" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control" "rotateY" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control" 
		"translate" " -type \"double3\" 0 -19.44860877497924534 11.59557682026282599"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control" 
		"translateY" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control" 
		"translateZ" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control" 
		"rotate" " -type \"double3\" 63.19823123875492854 3.40970583543066352 -0.65260155618368154"
		
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control" 
		"rotateX" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control" 
		"rotateY" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control" 
		"rotateZ" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control" 
		"translateX" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control" 
		"translateY" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control" 
		"translateZ" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control" 
		"rotate" " -type \"double3\" 1.50839476508628167 0 0"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control" 
		"rotateX" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control" 
		"rotateY" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control" 
		"rotateZ" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control" 
		"translateX" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control" 
		"translateY" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control" 
		"translateZ" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control" 
		"rotate" " -type \"double3\" -5.88873076199423906 0 0"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control" 
		"rotateX" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control" 
		"rotateY" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control" 
		"rotateZ" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightShoulder_Control" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightShoulder_Control" 
		"translateX" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightShoulder_Control" 
		"translateY" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightShoulder_Control" 
		"translateZ" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightShoulder_Control" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightShoulder_Control" 
		"rotateX" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightShoulder_Control" 
		"rotateY" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:Neck_Control" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:Neck_Control" 
		"translateX" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:Neck_Control" 
		"translateY" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:Neck_Control" 
		"translateZ" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:Neck_Control" 
		"rotate" " -type \"double3\" -13.83258773486709359 0.005801772904319798 -0.0026955423534068229"
		
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:Neck_Control" 
		"rotateX" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:Neck_Control" 
		"rotateY" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:Neck_Control" 
		"rotateZ" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:Neck_Control|Squaddie:Head_Control" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:Neck_Control|Squaddie:Head_Control" 
		"translateX" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:Neck_Control|Squaddie:Head_Control" 
		"translateY" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:Neck_Control|Squaddie:Head_Control" 
		"translateZ" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:Neck_Control|Squaddie:Head_Control" 
		"rotate" " -type \"double3\" 43.08782483342086067 0.0058017729043199229 0.8455158480469146"
		
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:Neck_Control|Squaddie:Head_Control" 
		"rotateX" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:Neck_Control|Squaddie:Head_Control" 
		"rotateY" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:Neck_Control|Squaddie:Head_Control" 
		"rotateZ" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftShoulder_Control" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftShoulder_Control" 
		"translateX" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftShoulder_Control" 
		"translateY" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftShoulder_Control" 
		"translateZ" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftShoulder_Control" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftShoulder_Control" 
		"rotateX" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftShoulder_Control" 
		"rotateY" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightElbow_Control" 
		"translate" " -type \"double3\" -23.29311162754722631 -12.11967438113454421 122.42156288062507485"
		
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightElbow_Control" 
		"translateX" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightElbow_Control" 
		"translateY" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightElbow_Control" 
		"translateZ" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightElbow_Control" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightElbow_Control" 
		"rotateX" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightElbow_Control" 
		"rotateY" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftElbow_Control" 
		"translate" " -type \"double3\" 32.78654940220831548 23.55868343654402608 150.58716923557281575"
		
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftElbow_Control" 
		"translateX" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftElbow_Control" 
		"translateY" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftElbow_Control" 
		"translateZ" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftElbow_Control" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftElbow_Control" 
		"rotateX" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftElbow_Control" 
		"rotateY" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightArmTwist_Control" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightArmTwist_Control" 
		"translateX" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightArmTwist_Control" 
		"translateY" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightArmTwist_Control" 
		"translateZ" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightArmTwist_Control" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightArmTwist_Control" 
		"rotateX" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightArmTwist_Control" 
		"rotateY" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftArmTwist_Control" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftArmTwist_Control" 
		"translateX" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftArmTwist_Control" 
		"translateY" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftArmTwist_Control" 
		"translateZ" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftArmTwist_Control" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftArmTwist_Control" 
		"rotateX" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftArmTwist_Control" 
		"rotateY" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightHand_Control" 
		"translate" " -type \"double3\" 52.7250449187339072 83.19324221640293615 9.24521638829243386"
		
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightHand_Control" 
		"translateX" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightHand_Control" 
		"translateY" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightHand_Control" 
		"translateZ" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightHand_Control" 
		"rotate" " -type \"double3\" 146.045738062864217 32.83783705833908328 195.42024459218237098"
		
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightHand_Control" 
		"rotateX" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightHand_Control" 
		"rotateY" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightHand_Control" 
		"rotateZ" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightHand_Control|Squaddie:RightFinders_Control" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightHand_Control|Squaddie:RightFinders_Control" 
		"translateX" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightHand_Control|Squaddie:RightFinders_Control" 
		"translateY" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightHand_Control|Squaddie:RightFinders_Control" 
		"translateZ" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightHand_Control|Squaddie:RightFinders_Control" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightHand_Control|Squaddie:RightFinders_Control" 
		"rotateX" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightHand_Control|Squaddie:RightFinders_Control" 
		"rotateY" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightHand_Control|Squaddie:ikHandle4" 
		"translate" " -type \"double3\" -72.3335999999999899 118.84599999999998943 4.76709999999999745"
		
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightHand_Control|Squaddie:ikHandle4" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftHand_Control" 
		"translate" " -type \"double3\" -55.16667472781529113 79.36417388992194333 9.40224188287693252"
		
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftHand_Control" 
		"translateX" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftHand_Control" 
		"translateY" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftHand_Control" 
		"translateZ" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftHand_Control" 
		"rotate" " -type \"double3\" 94.97643936514340623 -27.00229748734188107 -249.28317166029256668"
		
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftHand_Control" 
		"rotateX" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftHand_Control" 
		"rotateY" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftHand_Control" 
		"rotateZ" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftHand_Control|Squaddie:LeftFingers_Control" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftHand_Control|Squaddie:LeftFingers_Control" 
		"translateX" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftHand_Control|Squaddie:LeftFingers_Control" 
		"translateY" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftHand_Control|Squaddie:LeftFingers_Control" 
		"translateZ" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftHand_Control|Squaddie:LeftFingers_Control" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftHand_Control|Squaddie:LeftFingers_Control" 
		"rotateX" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftHand_Control|Squaddie:LeftFingers_Control" 
		"rotateY" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:LeftHip_Control" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:LeftHip_Control" 
		"translateX" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:LeftHip_Control" 
		"translateY" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:LeftHip_Control" 
		"translateZ" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:LeftHip_Control" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:LeftHip_Control" 
		"rotateX" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:LeftHip_Control" 
		"rotateY" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:RightHip_Control" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:RightHip_Control" 
		"translateX" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:RightHip_Control" 
		"translateY" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:RightHip_Control" 
		"translateZ" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:RightHip_Control" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:RightHip_Control" 
		"rotateX" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:RightHip_Control" 
		"rotateY" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RightFoot_Control" "translate" " -type \"double3\" 8.57733380576363835 55.35865314995438524 -62.78341881003379399"
		
		2 "|Squaddie:Root_Control|Squaddie:RightFoot_Control" "translateX" " -av"
		
		2 "|Squaddie:Root_Control|Squaddie:RightFoot_Control" "translateY" " -av"
		
		2 "|Squaddie:Root_Control|Squaddie:RightFoot_Control" "translateZ" " -av"
		
		2 "|Squaddie:Root_Control|Squaddie:RightFoot_Control" "rotate" " -type \"double3\" 109.79130135893532838 -7.97761659151025082 -6.16203520213935452"
		
		2 "|Squaddie:Root_Control|Squaddie:RightFoot_Control" "rotateX" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RightFoot_Control" "rotateY" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RightFoot_Control" "rotateZ" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RightFoot_Control|Squaddie:RightToes_Control" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Squaddie:Root_Control|Squaddie:RightFoot_Control|Squaddie:RightToes_Control" 
		"translateX" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RightFoot_Control|Squaddie:RightToes_Control" 
		"translateY" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RightFoot_Control|Squaddie:RightToes_Control" 
		"translateZ" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RightFoot_Control|Squaddie:RightToes_Control" 
		"rotate" " -type \"double3\" 17.62751964668539273 0 0"
		2 "|Squaddie:Root_Control|Squaddie:RightFoot_Control|Squaddie:RightToes_Control" 
		"rotateX" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RightFoot_Control|Squaddie:RightToes_Control" 
		"rotateY" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RightFoot_Control|Squaddie:RightKnee_Control" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Squaddie:Root_Control|Squaddie:RightFoot_Control|Squaddie:RightKnee_Control" 
		"translateX" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RightFoot_Control|Squaddie:RightKnee_Control" 
		"translateY" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RightFoot_Control|Squaddie:RightKnee_Control" 
		"translateZ" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RightFoot_Control|Squaddie:RightKnee_Control" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Squaddie:Root_Control|Squaddie:RightFoot_Control|Squaddie:RightKnee_Control" 
		"rotateX" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RightFoot_Control|Squaddie:RightKnee_Control" 
		"rotateY" " -av"
		2 "|Squaddie:Root_Control|Squaddie:LeftFoot_Control" "translate" " -type \"double3\" -5.70437796806096031 55.71803120618408656 -65.23333390568741663"
		
		2 "|Squaddie:Root_Control|Squaddie:LeftFoot_Control" "translateX" " -av"
		2 "|Squaddie:Root_Control|Squaddie:LeftFoot_Control" "translateY" " -av"
		2 "|Squaddie:Root_Control|Squaddie:LeftFoot_Control" "translateZ" " -av"
		2 "|Squaddie:Root_Control|Squaddie:LeftFoot_Control" "rotate" " -type \"double3\" 147.24202489551421991 0 0"
		
		2 "|Squaddie:Root_Control|Squaddie:LeftFoot_Control" "rotateX" " -av"
		2 "|Squaddie:Root_Control|Squaddie:LeftFoot_Control" "rotateY" " -av"
		2 "|Squaddie:Root_Control|Squaddie:LeftFoot_Control" "rotateZ" " -av"
		2 "|Squaddie:Root_Control|Squaddie:LeftFoot_Control|Squaddie:LeftToes_Control" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Squaddie:Root_Control|Squaddie:LeftFoot_Control|Squaddie:LeftToes_Control" 
		"translateX" " -av"
		2 "|Squaddie:Root_Control|Squaddie:LeftFoot_Control|Squaddie:LeftToes_Control" 
		"translateY" " -av"
		2 "|Squaddie:Root_Control|Squaddie:LeftFoot_Control|Squaddie:LeftToes_Control" 
		"translateZ" " -av"
		2 "|Squaddie:Root_Control|Squaddie:LeftFoot_Control|Squaddie:LeftToes_Control" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Squaddie:Root_Control|Squaddie:LeftFoot_Control|Squaddie:LeftToes_Control" 
		"rotateX" " -av"
		2 "|Squaddie:Root_Control|Squaddie:LeftFoot_Control|Squaddie:LeftToes_Control" 
		"rotateY" " -av"
		2 "|Squaddie:Root_Control|Squaddie:LeftFoot_Control|Squaddie:LeftToes_Control" 
		"rotateZ" " -av"
		2 "|Squaddie:Root_Control|Squaddie:LeftFoot_Control|Squaddie:LeftKnee_Control" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Squaddie:Root_Control|Squaddie:LeftFoot_Control|Squaddie:LeftKnee_Control" 
		"translateX" " -av"
		2 "|Squaddie:Root_Control|Squaddie:LeftFoot_Control|Squaddie:LeftKnee_Control" 
		"translateY" " -av"
		2 "|Squaddie:Root_Control|Squaddie:LeftFoot_Control|Squaddie:LeftKnee_Control" 
		"translateZ" " -av"
		2 "|Squaddie:Root_Control|Squaddie:LeftFoot_Control|Squaddie:LeftKnee_Control" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Squaddie:Root_Control|Squaddie:LeftFoot_Control|Squaddie:LeftKnee_Control" 
		"rotateX" " -av"
		2 "|Squaddie:Root_Control|Squaddie:LeftFoot_Control|Squaddie:LeftKnee_Control" 
		"rotateY" " -av"
		2 "|Squaddie:GeoGroup|Squaddie:Body|Squaddie:BodyShape" "visibility" " -k 0 1"
		
		2 "|Squaddie:GeoGroup|Squaddie:Body|Squaddie:BodyShape" "uvPivot" " -type \"double2\" 0.49994799494743347 0.5"
		
		2 "|Squaddie:GeoGroup|Squaddie:Head|Squaddie:HeadShape" "uvPivot" " -type \"double2\" 0.49930763244628906 0.50084253214299679"
		
		2 "|Squaddie:SkeletonGroup|Squaddie:Attach_RootMotion|Squaddie:Hips_Skel|Squaddie:Spine1_Skel|Squaddie:Spine2_Skel|Squaddie:LeftClav_Skel|Squaddie:LeftUpperArm_Skel" 
		"translate" " -type \"double3\" 14.91457674267715028 4.70347938627342899 -0.41150061501065444"
		
		2 "|Squaddie:SkeletonGroup|Squaddie:Attach_RootMotion|Squaddie:Hips_Skel|Squaddie:Spine1_Skel|Squaddie:Spine2_Skel|Squaddie:LeftClav_Skel|Squaddie:LeftUpperArm_Skel" 
		"translateX" " -av"
		2 "|Squaddie:SkeletonGroup|Squaddie:Attach_RootMotion|Squaddie:Hips_Skel|Squaddie:Spine1_Skel|Squaddie:Spine2_Skel|Squaddie:LeftClav_Skel|Squaddie:LeftUpperArm_Skel" 
		"translateY" " -av"
		2 "|Squaddie:SkeletonGroup|Squaddie:Attach_RootMotion|Squaddie:Hips_Skel|Squaddie:Spine1_Skel|Squaddie:Spine2_Skel|Squaddie:LeftClav_Skel|Squaddie:LeftUpperArm_Skel" 
		"translateZ" " -av"
		2 "|Squaddie:SkeletonGroup|Squaddie:Attach_RootMotion|Squaddie:Hips_Skel|Squaddie:Spine1_Skel|Squaddie:Spine2_Skel|Squaddie:LeftClav_Skel|Squaddie:LeftUpperArm_Skel" 
		"rotate" " -type \"double3\" 128.00969976439114362 -64.47610446634843129 -173.3603946246638543"
		
		2 "|Squaddie:SkeletonGroup|Squaddie:Attach_RootMotion|Squaddie:Hips_Skel|Squaddie:Spine1_Skel|Squaddie:Spine2_Skel|Squaddie:LeftClav_Skel|Squaddie:LeftUpperArm_Skel|Squaddie:LeftLowerArm_Skel" 
		"rotate" " -type \"double3\" 0 -41.6952453535833456 0"
		2 "|Squaddie:SkeletonGroup|Squaddie:Attach_RootMotion|Squaddie:Hips_Skel|Squaddie:Spine1_Skel|Squaddie:Spine2_Skel|Squaddie:RightClav_Skel|Squaddie:RightUpperArm_Skel" 
		"translate" " -type \"double3\" -14.91460000000001429 -4.70347648394240281 0.41150087150569448"
		
		2 "|Squaddie:SkeletonGroup|Squaddie:Attach_RootMotion|Squaddie:Hips_Skel|Squaddie:Spine1_Skel|Squaddie:Spine2_Skel|Squaddie:RightClav_Skel|Squaddie:RightUpperArm_Skel" 
		"translateX" " -av"
		2 "|Squaddie:SkeletonGroup|Squaddie:Attach_RootMotion|Squaddie:Hips_Skel|Squaddie:Spine1_Skel|Squaddie:Spine2_Skel|Squaddie:RightClav_Skel|Squaddie:RightUpperArm_Skel" 
		"translateY" " -av"
		2 "|Squaddie:SkeletonGroup|Squaddie:Attach_RootMotion|Squaddie:Hips_Skel|Squaddie:Spine1_Skel|Squaddie:Spine2_Skel|Squaddie:RightClav_Skel|Squaddie:RightUpperArm_Skel" 
		"translateZ" " -av"
		2 "|Squaddie:SkeletonGroup|Squaddie:Attach_RootMotion|Squaddie:Hips_Skel|Squaddie:Spine1_Skel|Squaddie:Spine2_Skel|Squaddie:RightClav_Skel|Squaddie:RightUpperArm_Skel" 
		"rotate" " -type \"double3\" 126.72899019031792989 -55.49046826577855285 -172.26165466887712796"
		
		2 "|Squaddie:SkeletonGroup|Squaddie:Attach_RootMotion|Squaddie:Hips_Skel|Squaddie:Spine1_Skel|Squaddie:Spine2_Skel|Squaddie:RightClav_Skel|Squaddie:RightUpperArm_Skel|Squaddie:RightLowerArm_Skel" 
		"rotate" " -type \"double3\" -0.0010815529306050678 -28.27757147535070814 0.00093491820409749668"
		
		2 "|Squaddie:SkeletonGroup|Squaddie:Attach_RootMotion|Squaddie:Hips_Skel|Squaddie:LeftUpperLeg_Skel" 
		"translate" " -type \"double3\" 19.81883811950683949 1.35854452727750186 -7.39106094254957213"
		
		2 "|Squaddie:SkeletonGroup|Squaddie:Attach_RootMotion|Squaddie:Hips_Skel|Squaddie:LeftUpperLeg_Skel" 
		"translateX" " -av"
		2 "|Squaddie:SkeletonGroup|Squaddie:Attach_RootMotion|Squaddie:Hips_Skel|Squaddie:LeftUpperLeg_Skel" 
		"translateY" " -av"
		2 "|Squaddie:SkeletonGroup|Squaddie:Attach_RootMotion|Squaddie:Hips_Skel|Squaddie:LeftUpperLeg_Skel" 
		"translateZ" " -av"
		2 "|Squaddie:SkeletonGroup|Squaddie:Attach_RootMotion|Squaddie:Hips_Skel|Squaddie:LeftUpperLeg_Skel" 
		"rotate" " -type \"double3\" 2.22747232104852788 0.82810491788691187 -3.59131695297525999"
		
		2 "|Squaddie:SkeletonGroup|Squaddie:Attach_RootMotion|Squaddie:Hips_Skel|Squaddie:LeftUpperLeg_Skel|Squaddie:LeftLowerLeg_Skel" 
		"rotate" " -type \"double3\" 29.55275109042212733 0 0"
		2 "|Squaddie:SkeletonGroup|Squaddie:Attach_RootMotion|Squaddie:Hips_Skel|Squaddie:RightUpperLeg_Skel" 
		"translate" " -type \"double3\" -19.81879997253418324 1.35854880205053519 -7.39109886124331439"
		
		2 "|Squaddie:SkeletonGroup|Squaddie:Attach_RootMotion|Squaddie:Hips_Skel|Squaddie:RightUpperLeg_Skel" 
		"translateX" " -av"
		2 "|Squaddie:SkeletonGroup|Squaddie:Attach_RootMotion|Squaddie:Hips_Skel|Squaddie:RightUpperLeg_Skel" 
		"translateY" " -av"
		2 "|Squaddie:SkeletonGroup|Squaddie:Attach_RootMotion|Squaddie:Hips_Skel|Squaddie:RightUpperLeg_Skel" 
		"translateZ" " -av"
		2 "|Squaddie:SkeletonGroup|Squaddie:Attach_RootMotion|Squaddie:Hips_Skel|Squaddie:RightUpperLeg_Skel" 
		"rotate" " -type \"double3\" 3.64751483010155253 -7.15667990803785603 -10.08308820959179286"
		
		2 "|Squaddie:SkeletonGroup|Squaddie:Attach_RootMotion|Squaddie:Hips_Skel|Squaddie:RightUpperLeg_Skel|Squaddie:RightLowerLeg_Skel" 
		"rotate" " -type \"double3\" 27.98188248207804563 0 0"
		5 4 "SquaddieRN" "|Squaddie:Root_Control.translateX" "SquaddieRN.placeHolderList[110]" 
		""
		5 4 "SquaddieRN" "|Squaddie:Root_Control.translateY" "SquaddieRN.placeHolderList[111]" 
		""
		5 4 "SquaddieRN" "|Squaddie:Root_Control.translateZ" "SquaddieRN.placeHolderList[112]" 
		""
		5 4 "SquaddieRN" "|Squaddie:Root_Control.rotateX" "SquaddieRN.placeHolderList[113]" 
		""
		5 4 "SquaddieRN" "|Squaddie:Root_Control.rotateY" "SquaddieRN.placeHolderList[114]" 
		""
		5 4 "SquaddieRN" "|Squaddie:Root_Control.rotateZ" "SquaddieRN.placeHolderList[115]" 
		""
		5 4 "SquaddieRN" "|Squaddie:Root_Control.visibility" "SquaddieRN.placeHolderList[116]" 
		""
		5 4 "SquaddieRN" "|Squaddie:Root_Control.scaleX" "SquaddieRN.placeHolderList[117]" 
		""
		5 4 "SquaddieRN" "|Squaddie:Root_Control.scaleY" "SquaddieRN.placeHolderList[118]" 
		""
		5 4 "SquaddieRN" "|Squaddie:Root_Control.scaleZ" "SquaddieRN.placeHolderList[119]" 
		""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control.translateX" 
		"SquaddieRN.placeHolderList[120]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control.translateY" 
		"SquaddieRN.placeHolderList[121]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control.translateZ" 
		"SquaddieRN.placeHolderList[122]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control.rotateX" 
		"SquaddieRN.placeHolderList[123]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control.rotateY" 
		"SquaddieRN.placeHolderList[124]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control.rotateZ" 
		"SquaddieRN.placeHolderList[125]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control.scaleX" 
		"SquaddieRN.placeHolderList[126]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control.scaleY" 
		"SquaddieRN.placeHolderList[127]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control.scaleZ" 
		"SquaddieRN.placeHolderList[128]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control.visibility" 
		"SquaddieRN.placeHolderList[129]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control.translateX" 
		"SquaddieRN.placeHolderList[130]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control.translateY" 
		"SquaddieRN.placeHolderList[131]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control.translateZ" 
		"SquaddieRN.placeHolderList[132]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control.rotateX" 
		"SquaddieRN.placeHolderList[133]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control.rotateY" 
		"SquaddieRN.placeHolderList[134]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control.rotateZ" 
		"SquaddieRN.placeHolderList[135]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control.scaleX" 
		"SquaddieRN.placeHolderList[136]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control.scaleY" 
		"SquaddieRN.placeHolderList[137]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control.scaleZ" 
		"SquaddieRN.placeHolderList[138]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control.visibility" 
		"SquaddieRN.placeHolderList[139]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control.translateX" 
		"SquaddieRN.placeHolderList[140]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control.translateY" 
		"SquaddieRN.placeHolderList[141]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control.translateZ" 
		"SquaddieRN.placeHolderList[142]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control.rotateX" 
		"SquaddieRN.placeHolderList[143]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control.rotateY" 
		"SquaddieRN.placeHolderList[144]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control.rotateZ" 
		"SquaddieRN.placeHolderList[145]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control.scaleX" 
		"SquaddieRN.placeHolderList[146]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control.scaleY" 
		"SquaddieRN.placeHolderList[147]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control.scaleZ" 
		"SquaddieRN.placeHolderList[148]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control.visibility" 
		"SquaddieRN.placeHolderList[149]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control.translateX" 
		"SquaddieRN.placeHolderList[150]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control.translateY" 
		"SquaddieRN.placeHolderList[151]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control.translateZ" 
		"SquaddieRN.placeHolderList[152]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control.rotateX" 
		"SquaddieRN.placeHolderList[153]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control.rotateY" 
		"SquaddieRN.placeHolderList[154]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control.rotateZ" 
		"SquaddieRN.placeHolderList[155]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control.scaleX" 
		"SquaddieRN.placeHolderList[156]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control.scaleY" 
		"SquaddieRN.placeHolderList[157]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control.scaleZ" 
		"SquaddieRN.placeHolderList[158]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control.visibility" 
		"SquaddieRN.placeHolderList[159]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightShoulder_Control.rotateX" 
		"SquaddieRN.placeHolderList[160]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightShoulder_Control.rotateY" 
		"SquaddieRN.placeHolderList[161]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightShoulder_Control.rotateZ" 
		"SquaddieRN.placeHolderList[162]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightShoulder_Control.translateX" 
		"SquaddieRN.placeHolderList[163]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightShoulder_Control.translateY" 
		"SquaddieRN.placeHolderList[164]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightShoulder_Control.translateZ" 
		"SquaddieRN.placeHolderList[165]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightShoulder_Control.visibility" 
		"SquaddieRN.placeHolderList[166]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightShoulder_Control.scaleX" 
		"SquaddieRN.placeHolderList[167]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightShoulder_Control.scaleY" 
		"SquaddieRN.placeHolderList[168]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightShoulder_Control.scaleZ" 
		"SquaddieRN.placeHolderList[169]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:Neck_Control.translateX" 
		"SquaddieRN.placeHolderList[170]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:Neck_Control.translateY" 
		"SquaddieRN.placeHolderList[171]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:Neck_Control.translateZ" 
		"SquaddieRN.placeHolderList[172]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:Neck_Control.rotateX" 
		"SquaddieRN.placeHolderList[173]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:Neck_Control.rotateY" 
		"SquaddieRN.placeHolderList[174]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:Neck_Control.rotateZ" 
		"SquaddieRN.placeHolderList[175]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:Neck_Control.scaleX" 
		"SquaddieRN.placeHolderList[176]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:Neck_Control.scaleY" 
		"SquaddieRN.placeHolderList[177]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:Neck_Control.scaleZ" 
		"SquaddieRN.placeHolderList[178]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:Neck_Control.visibility" 
		"SquaddieRN.placeHolderList[179]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:Neck_Control|Squaddie:Head_Control.translateX" 
		"SquaddieRN.placeHolderList[180]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:Neck_Control|Squaddie:Head_Control.translateY" 
		"SquaddieRN.placeHolderList[181]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:Neck_Control|Squaddie:Head_Control.translateZ" 
		"SquaddieRN.placeHolderList[182]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:Neck_Control|Squaddie:Head_Control.rotateX" 
		"SquaddieRN.placeHolderList[183]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:Neck_Control|Squaddie:Head_Control.rotateY" 
		"SquaddieRN.placeHolderList[184]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:Neck_Control|Squaddie:Head_Control.rotateZ" 
		"SquaddieRN.placeHolderList[185]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:Neck_Control|Squaddie:Head_Control.scaleX" 
		"SquaddieRN.placeHolderList[186]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:Neck_Control|Squaddie:Head_Control.scaleY" 
		"SquaddieRN.placeHolderList[187]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:Neck_Control|Squaddie:Head_Control.scaleZ" 
		"SquaddieRN.placeHolderList[188]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:Neck_Control|Squaddie:Head_Control.visibility" 
		"SquaddieRN.placeHolderList[189]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftShoulder_Control.rotateX" 
		"SquaddieRN.placeHolderList[190]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftShoulder_Control.rotateY" 
		"SquaddieRN.placeHolderList[191]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftShoulder_Control.rotateZ" 
		"SquaddieRN.placeHolderList[192]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftShoulder_Control.translateX" 
		"SquaddieRN.placeHolderList[193]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftShoulder_Control.translateY" 
		"SquaddieRN.placeHolderList[194]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftShoulder_Control.translateZ" 
		"SquaddieRN.placeHolderList[195]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftShoulder_Control.visibility" 
		"SquaddieRN.placeHolderList[196]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftShoulder_Control.scaleX" 
		"SquaddieRN.placeHolderList[197]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftShoulder_Control.scaleY" 
		"SquaddieRN.placeHolderList[198]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftShoulder_Control.scaleZ" 
		"SquaddieRN.placeHolderList[199]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightElbow_Control.translateX" 
		"SquaddieRN.placeHolderList[200]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightElbow_Control.translateY" 
		"SquaddieRN.placeHolderList[201]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightElbow_Control.translateZ" 
		"SquaddieRN.placeHolderList[202]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightElbow_Control.rotateX" 
		"SquaddieRN.placeHolderList[203]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightElbow_Control.rotateY" 
		"SquaddieRN.placeHolderList[204]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightElbow_Control.rotateZ" 
		"SquaddieRN.placeHolderList[205]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightElbow_Control.scaleX" 
		"SquaddieRN.placeHolderList[206]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightElbow_Control.scaleY" 
		"SquaddieRN.placeHolderList[207]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightElbow_Control.scaleZ" 
		"SquaddieRN.placeHolderList[208]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightElbow_Control.visibility" 
		"SquaddieRN.placeHolderList[209]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftElbow_Control.translateX" 
		"SquaddieRN.placeHolderList[210]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftElbow_Control.translateY" 
		"SquaddieRN.placeHolderList[211]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftElbow_Control.translateZ" 
		"SquaddieRN.placeHolderList[212]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftElbow_Control.rotateX" 
		"SquaddieRN.placeHolderList[213]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftElbow_Control.rotateY" 
		"SquaddieRN.placeHolderList[214]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftElbow_Control.rotateZ" 
		"SquaddieRN.placeHolderList[215]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftElbow_Control.scaleX" 
		"SquaddieRN.placeHolderList[216]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftElbow_Control.scaleY" 
		"SquaddieRN.placeHolderList[217]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftElbow_Control.scaleZ" 
		"SquaddieRN.placeHolderList[218]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftElbow_Control.visibility" 
		"SquaddieRN.placeHolderList[219]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightArmTwist_Control.translateX" 
		"SquaddieRN.placeHolderList[220]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightArmTwist_Control.translateY" 
		"SquaddieRN.placeHolderList[221]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightArmTwist_Control.translateZ" 
		"SquaddieRN.placeHolderList[222]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightArmTwist_Control.rotateX" 
		"SquaddieRN.placeHolderList[223]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightArmTwist_Control.rotateY" 
		"SquaddieRN.placeHolderList[224]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightArmTwist_Control.rotateZ" 
		"SquaddieRN.placeHolderList[225]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightArmTwist_Control.visibility" 
		"SquaddieRN.placeHolderList[226]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightArmTwist_Control.scaleX" 
		"SquaddieRN.placeHolderList[227]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightArmTwist_Control.scaleY" 
		"SquaddieRN.placeHolderList[228]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightArmTwist_Control.scaleZ" 
		"SquaddieRN.placeHolderList[229]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftArmTwist_Control.translateX" 
		"SquaddieRN.placeHolderList[230]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftArmTwist_Control.translateY" 
		"SquaddieRN.placeHolderList[231]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftArmTwist_Control.translateZ" 
		"SquaddieRN.placeHolderList[232]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftArmTwist_Control.rotateX" 
		"SquaddieRN.placeHolderList[233]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftArmTwist_Control.rotateY" 
		"SquaddieRN.placeHolderList[234]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftArmTwist_Control.rotateZ" 
		"SquaddieRN.placeHolderList[235]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftArmTwist_Control.visibility" 
		"SquaddieRN.placeHolderList[236]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftArmTwist_Control.scaleX" 
		"SquaddieRN.placeHolderList[237]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftArmTwist_Control.scaleY" 
		"SquaddieRN.placeHolderList[238]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftArmTwist_Control.scaleZ" 
		"SquaddieRN.placeHolderList[239]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightHand_Control.rotateX" 
		"SquaddieRN.placeHolderList[240]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightHand_Control.rotateY" 
		"SquaddieRN.placeHolderList[241]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightHand_Control.rotateZ" 
		"SquaddieRN.placeHolderList[242]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightHand_Control.translateX" 
		"SquaddieRN.placeHolderList[243]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightHand_Control.translateY" 
		"SquaddieRN.placeHolderList[244]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightHand_Control.translateZ" 
		"SquaddieRN.placeHolderList[245]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightHand_Control.visibility" 
		"SquaddieRN.placeHolderList[246]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightHand_Control.scaleX" 
		"SquaddieRN.placeHolderList[247]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightHand_Control.scaleY" 
		"SquaddieRN.placeHolderList[248]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightHand_Control.scaleZ" 
		"SquaddieRN.placeHolderList[249]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightHand_Control|Squaddie:RightFinders_Control.Grip" 
		"SquaddieRN.placeHolderList[250]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightHand_Control|Squaddie:RightFinders_Control.translateX" 
		"SquaddieRN.placeHolderList[251]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightHand_Control|Squaddie:RightFinders_Control.translateY" 
		"SquaddieRN.placeHolderList[252]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightHand_Control|Squaddie:RightFinders_Control.translateZ" 
		"SquaddieRN.placeHolderList[253]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightHand_Control|Squaddie:RightFinders_Control.rotateX" 
		"SquaddieRN.placeHolderList[254]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightHand_Control|Squaddie:RightFinders_Control.rotateY" 
		"SquaddieRN.placeHolderList[255]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightHand_Control|Squaddie:RightFinders_Control.rotateZ" 
		"SquaddieRN.placeHolderList[256]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightHand_Control|Squaddie:RightFinders_Control.visibility" 
		"SquaddieRN.placeHolderList[257]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightHand_Control|Squaddie:RightFinders_Control.scaleX" 
		"SquaddieRN.placeHolderList[258]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightHand_Control|Squaddie:RightFinders_Control.scaleY" 
		"SquaddieRN.placeHolderList[259]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightHand_Control|Squaddie:RightFinders_Control.scaleZ" 
		"SquaddieRN.placeHolderList[260]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftHand_Control.rotateX" 
		"SquaddieRN.placeHolderList[261]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftHand_Control.rotateY" 
		"SquaddieRN.placeHolderList[262]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftHand_Control.rotateZ" 
		"SquaddieRN.placeHolderList[263]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftHand_Control.translateX" 
		"SquaddieRN.placeHolderList[264]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftHand_Control.translateY" 
		"SquaddieRN.placeHolderList[265]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftHand_Control.translateZ" 
		"SquaddieRN.placeHolderList[266]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftHand_Control.visibility" 
		"SquaddieRN.placeHolderList[267]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftHand_Control.scaleX" 
		"SquaddieRN.placeHolderList[268]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftHand_Control.scaleY" 
		"SquaddieRN.placeHolderList[269]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftHand_Control.scaleZ" 
		"SquaddieRN.placeHolderList[270]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftHand_Control|Squaddie:LeftFingers_Control.Grip" 
		"SquaddieRN.placeHolderList[271]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftHand_Control|Squaddie:LeftFingers_Control.translateX" 
		"SquaddieRN.placeHolderList[272]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftHand_Control|Squaddie:LeftFingers_Control.translateY" 
		"SquaddieRN.placeHolderList[273]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftHand_Control|Squaddie:LeftFingers_Control.translateZ" 
		"SquaddieRN.placeHolderList[274]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftHand_Control|Squaddie:LeftFingers_Control.rotateX" 
		"SquaddieRN.placeHolderList[275]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftHand_Control|Squaddie:LeftFingers_Control.rotateY" 
		"SquaddieRN.placeHolderList[276]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftHand_Control|Squaddie:LeftFingers_Control.rotateZ" 
		"SquaddieRN.placeHolderList[277]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftHand_Control|Squaddie:LeftFingers_Control.visibility" 
		"SquaddieRN.placeHolderList[278]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftHand_Control|Squaddie:LeftFingers_Control.scaleX" 
		"SquaddieRN.placeHolderList[279]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftHand_Control|Squaddie:LeftFingers_Control.scaleY" 
		"SquaddieRN.placeHolderList[280]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftHand_Control|Squaddie:LeftFingers_Control.scaleZ" 
		"SquaddieRN.placeHolderList[281]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:LeftHip_Control.translateX" 
		"SquaddieRN.placeHolderList[282]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:LeftHip_Control.translateY" 
		"SquaddieRN.placeHolderList[283]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:LeftHip_Control.translateZ" 
		"SquaddieRN.placeHolderList[284]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:LeftHip_Control.rotateX" 
		"SquaddieRN.placeHolderList[285]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:LeftHip_Control.rotateY" 
		"SquaddieRN.placeHolderList[286]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:LeftHip_Control.rotateZ" 
		"SquaddieRN.placeHolderList[287]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:LeftHip_Control.visibility" 
		"SquaddieRN.placeHolderList[288]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:LeftHip_Control.scaleX" 
		"SquaddieRN.placeHolderList[289]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:LeftHip_Control.scaleY" 
		"SquaddieRN.placeHolderList[290]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:LeftHip_Control.scaleZ" 
		"SquaddieRN.placeHolderList[291]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:RightHip_Control.translateX" 
		"SquaddieRN.placeHolderList[292]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:RightHip_Control.translateY" 
		"SquaddieRN.placeHolderList[293]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:RightHip_Control.translateZ" 
		"SquaddieRN.placeHolderList[294]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:RightHip_Control.rotateX" 
		"SquaddieRN.placeHolderList[295]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:RightHip_Control.rotateY" 
		"SquaddieRN.placeHolderList[296]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:RightHip_Control.rotateZ" 
		"SquaddieRN.placeHolderList[297]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:RightHip_Control.visibility" 
		"SquaddieRN.placeHolderList[298]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:RightHip_Control.scaleX" 
		"SquaddieRN.placeHolderList[299]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:RightHip_Control.scaleY" 
		"SquaddieRN.placeHolderList[300]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:RightHip_Control.scaleZ" 
		"SquaddieRN.placeHolderList[301]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RightFoot_Control.rotateX" 
		"SquaddieRN.placeHolderList[302]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RightFoot_Control.rotateY" 
		"SquaddieRN.placeHolderList[303]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RightFoot_Control.rotateZ" 
		"SquaddieRN.placeHolderList[304]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RightFoot_Control.translateX" 
		"SquaddieRN.placeHolderList[305]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RightFoot_Control.translateY" 
		"SquaddieRN.placeHolderList[306]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RightFoot_Control.translateZ" 
		"SquaddieRN.placeHolderList[307]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RightFoot_Control.visibility" 
		"SquaddieRN.placeHolderList[308]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RightFoot_Control.scaleX" 
		"SquaddieRN.placeHolderList[309]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RightFoot_Control.scaleY" 
		"SquaddieRN.placeHolderList[310]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RightFoot_Control.scaleZ" 
		"SquaddieRN.placeHolderList[311]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RightFoot_Control|Squaddie:RightToes_Control.rotateX" 
		"SquaddieRN.placeHolderList[312]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RightFoot_Control|Squaddie:RightToes_Control.rotateY" 
		"SquaddieRN.placeHolderList[313]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RightFoot_Control|Squaddie:RightToes_Control.rotateZ" 
		"SquaddieRN.placeHolderList[314]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RightFoot_Control|Squaddie:RightToes_Control.translateX" 
		"SquaddieRN.placeHolderList[315]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RightFoot_Control|Squaddie:RightToes_Control.translateY" 
		"SquaddieRN.placeHolderList[316]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RightFoot_Control|Squaddie:RightToes_Control.translateZ" 
		"SquaddieRN.placeHolderList[317]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RightFoot_Control|Squaddie:RightToes_Control.visibility" 
		"SquaddieRN.placeHolderList[318]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RightFoot_Control|Squaddie:RightToes_Control.scaleX" 
		"SquaddieRN.placeHolderList[319]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RightFoot_Control|Squaddie:RightToes_Control.scaleY" 
		"SquaddieRN.placeHolderList[320]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RightFoot_Control|Squaddie:RightToes_Control.scaleZ" 
		"SquaddieRN.placeHolderList[321]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RightFoot_Control|Squaddie:RightKnee_Control.translateX" 
		"SquaddieRN.placeHolderList[322]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RightFoot_Control|Squaddie:RightKnee_Control.translateY" 
		"SquaddieRN.placeHolderList[323]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RightFoot_Control|Squaddie:RightKnee_Control.translateZ" 
		"SquaddieRN.placeHolderList[324]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RightFoot_Control|Squaddie:RightKnee_Control.rotateX" 
		"SquaddieRN.placeHolderList[325]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RightFoot_Control|Squaddie:RightKnee_Control.rotateY" 
		"SquaddieRN.placeHolderList[326]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RightFoot_Control|Squaddie:RightKnee_Control.rotateZ" 
		"SquaddieRN.placeHolderList[327]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RightFoot_Control|Squaddie:RightKnee_Control.visibility" 
		"SquaddieRN.placeHolderList[328]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RightFoot_Control|Squaddie:RightKnee_Control.scaleX" 
		"SquaddieRN.placeHolderList[329]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RightFoot_Control|Squaddie:RightKnee_Control.scaleY" 
		"SquaddieRN.placeHolderList[330]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RightFoot_Control|Squaddie:RightKnee_Control.scaleZ" 
		"SquaddieRN.placeHolderList[331]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:LeftFoot_Control.rotateX" 
		"SquaddieRN.placeHolderList[332]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:LeftFoot_Control.rotateY" 
		"SquaddieRN.placeHolderList[333]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:LeftFoot_Control.rotateZ" 
		"SquaddieRN.placeHolderList[334]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:LeftFoot_Control.translateX" 
		"SquaddieRN.placeHolderList[335]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:LeftFoot_Control.translateY" 
		"SquaddieRN.placeHolderList[336]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:LeftFoot_Control.translateZ" 
		"SquaddieRN.placeHolderList[337]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:LeftFoot_Control.visibility" 
		"SquaddieRN.placeHolderList[338]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:LeftFoot_Control.scaleX" 
		"SquaddieRN.placeHolderList[339]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:LeftFoot_Control.scaleY" 
		"SquaddieRN.placeHolderList[340]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:LeftFoot_Control.scaleZ" 
		"SquaddieRN.placeHolderList[341]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:LeftFoot_Control|Squaddie:LeftToes_Control.rotateX" 
		"SquaddieRN.placeHolderList[342]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:LeftFoot_Control|Squaddie:LeftToes_Control.rotateY" 
		"SquaddieRN.placeHolderList[343]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:LeftFoot_Control|Squaddie:LeftToes_Control.rotateZ" 
		"SquaddieRN.placeHolderList[344]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:LeftFoot_Control|Squaddie:LeftToes_Control.translateX" 
		"SquaddieRN.placeHolderList[345]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:LeftFoot_Control|Squaddie:LeftToes_Control.translateY" 
		"SquaddieRN.placeHolderList[346]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:LeftFoot_Control|Squaddie:LeftToes_Control.translateZ" 
		"SquaddieRN.placeHolderList[347]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:LeftFoot_Control|Squaddie:LeftToes_Control.visibility" 
		"SquaddieRN.placeHolderList[348]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:LeftFoot_Control|Squaddie:LeftToes_Control.scaleX" 
		"SquaddieRN.placeHolderList[349]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:LeftFoot_Control|Squaddie:LeftToes_Control.scaleY" 
		"SquaddieRN.placeHolderList[350]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:LeftFoot_Control|Squaddie:LeftToes_Control.scaleZ" 
		"SquaddieRN.placeHolderList[351]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:LeftFoot_Control|Squaddie:LeftKnee_Control.translateX" 
		"SquaddieRN.placeHolderList[352]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:LeftFoot_Control|Squaddie:LeftKnee_Control.translateY" 
		"SquaddieRN.placeHolderList[353]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:LeftFoot_Control|Squaddie:LeftKnee_Control.translateZ" 
		"SquaddieRN.placeHolderList[354]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:LeftFoot_Control|Squaddie:LeftKnee_Control.rotateX" 
		"SquaddieRN.placeHolderList[355]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:LeftFoot_Control|Squaddie:LeftKnee_Control.rotateY" 
		"SquaddieRN.placeHolderList[356]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:LeftFoot_Control|Squaddie:LeftKnee_Control.rotateZ" 
		"SquaddieRN.placeHolderList[357]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:LeftFoot_Control|Squaddie:LeftKnee_Control.visibility" 
		"SquaddieRN.placeHolderList[358]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:LeftFoot_Control|Squaddie:LeftKnee_Control.scaleX" 
		"SquaddieRN.placeHolderList[359]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:LeftFoot_Control|Squaddie:LeftKnee_Control.scaleY" 
		"SquaddieRN.placeHolderList[360]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:LeftFoot_Control|Squaddie:LeftKnee_Control.scaleZ" 
		"SquaddieRN.placeHolderList[361]" ""
		5 3 "SquaddieRN" "|Squaddie:SkeletonGroup|Squaddie:Attach_RootMotion|Squaddie:Hips_Skel|Squaddie:Spine1_Skel|Squaddie:Spine2_Skel|Squaddie:RightClav_Skel|Squaddie:RightUpperArm_Skel|Squaddie:RightLowerArm_Skel|Squaddie:RightHand_Skel|Squaddie:Attach_RightHand.parentMatrix" 
		"SquaddieRN.placeHolderList[362]" ""
		5 3 "SquaddieRN" "|Squaddie:SkeletonGroup|Squaddie:Attach_RootMotion|Squaddie:Hips_Skel|Squaddie:Spine1_Skel|Squaddie:Spine2_Skel|Squaddie:RightClav_Skel|Squaddie:RightUpperArm_Skel|Squaddie:RightLowerArm_Skel|Squaddie:RightHand_Skel|Squaddie:Attach_RightHand.translate" 
		"SquaddieRN.placeHolderList[363]" ""
		5 3 "SquaddieRN" "|Squaddie:SkeletonGroup|Squaddie:Attach_RootMotion|Squaddie:Hips_Skel|Squaddie:Spine1_Skel|Squaddie:Spine2_Skel|Squaddie:RightClav_Skel|Squaddie:RightUpperArm_Skel|Squaddie:RightLowerArm_Skel|Squaddie:RightHand_Skel|Squaddie:Attach_RightHand.rotatePivot" 
		"SquaddieRN.placeHolderList[364]" ""
		5 3 "SquaddieRN" "|Squaddie:SkeletonGroup|Squaddie:Attach_RootMotion|Squaddie:Hips_Skel|Squaddie:Spine1_Skel|Squaddie:Spine2_Skel|Squaddie:RightClav_Skel|Squaddie:RightUpperArm_Skel|Squaddie:RightLowerArm_Skel|Squaddie:RightHand_Skel|Squaddie:Attach_RightHand.rotatePivotTranslate" 
		"SquaddieRN.placeHolderList[365]" ""
		5 3 "SquaddieRN" "|Squaddie:SkeletonGroup|Squaddie:Attach_RootMotion|Squaddie:Hips_Skel|Squaddie:Spine1_Skel|Squaddie:Spine2_Skel|Squaddie:RightClav_Skel|Squaddie:RightUpperArm_Skel|Squaddie:RightLowerArm_Skel|Squaddie:RightHand_Skel|Squaddie:Attach_RightHand.rotate" 
		"SquaddieRN.placeHolderList[366]" ""
		5 3 "SquaddieRN" "|Squaddie:SkeletonGroup|Squaddie:Attach_RootMotion|Squaddie:Hips_Skel|Squaddie:Spine1_Skel|Squaddie:Spine2_Skel|Squaddie:RightClav_Skel|Squaddie:RightUpperArm_Skel|Squaddie:RightLowerArm_Skel|Squaddie:RightHand_Skel|Squaddie:Attach_RightHand.rotateOrder" 
		"SquaddieRN.placeHolderList[367]" ""
		5 3 "SquaddieRN" "|Squaddie:SkeletonGroup|Squaddie:Attach_RootMotion|Squaddie:Hips_Skel|Squaddie:Spine1_Skel|Squaddie:Spine2_Skel|Squaddie:RightClav_Skel|Squaddie:RightUpperArm_Skel|Squaddie:RightLowerArm_Skel|Squaddie:RightHand_Skel|Squaddie:Attach_RightHand.scale" 
		"SquaddieRN.placeHolderList[368]" "";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "91E4ACE4-CA41-A658-3640-FD848DB2ED7C";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n"
		+ "            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n"
		+ "            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 468\n            -height 357\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n"
		+ "            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n"
		+ "            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 468\n            -height 357\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -editorChanged \"CgAbBlastPanelOptChangeCallback\" \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n"
		+ "            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n"
		+ "            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n"
		+ "            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 468\n            -height 357\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -editorChanged \"CgAbBlastPanelOptChangeCallback\" \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"all\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n"
		+ "            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n"
		+ "            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 0\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n"
		+ "            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 1\n            -captureSequenceNumber -1\n            -width 969\n            -height 762\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n"
		+ "            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n"
		+ "            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 1\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 0\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n"
		+ "            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n"
		+ "            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n"
		+ "                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n"
		+ "                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -autoFitTime 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n"
		+ "                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 0\n                -outliner \"graphEditor1OutlineEd\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n"
		+ "                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n"
		+ "                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n"
		+ "                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n"
		+ "\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n"
		+ "                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n"
		+ "                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -editorChanged \"updateModelPanelBar\" \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n"
		+ "                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererOverrideName \"stereoOverrideVP2\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n"
		+ "                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n"
		+ "                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n"
		+ "            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n"
		+ "            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -docTag \\\"RADRENDER\\\" \\n    -editorChanged \\\"CgAbBlastPanelOptChangeCallback\\\" \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"all\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 1\\n    -captureSequenceNumber -1\\n    -width 969\\n    -height 762\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -docTag \\\"RADRENDER\\\" \\n    -editorChanged \\\"CgAbBlastPanelOptChangeCallback\\\" \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"all\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 1\\n    -captureSequenceNumber -1\\n    -width 969\\n    -height 762\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 10 -size 300 -divisions 4 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "13DDF64F-D04D-50F4-4B9E-45896DBE9B63";
	setAttr ".b" -type "string" "playbackOptions -min 105 -max 124 -ast 0 -aet 200 ";
	setAttr ".st" 6;
createNode gameFbxExporter -n "gameExporterPreset1";
	rename -uid "F098805B-5D4F-825D-5992-79884CA78C73";
	setAttr ".pn" -type "string" "Model Default";
	setAttr ".ils" yes;
	setAttr ".esi" 3;
	setAttr ".ssn" -type "string" "Squaddie:ExportSet";
	setAttr ".fv" -type "string" "FBX201800";
	setAttr ".exp" -type "string" "/Users/briancollins/Unity/DropZone/Assets/DropZone/Characters/Squaddie";
	setAttr ".exf" -type "string" "Squaddie.fbx";
createNode gameFbxExporter -n "gameExporterPreset2";
	rename -uid "34F4D9F5-8544-F8E8-058E-6BBA6BC18FD8";
	setAttr ".pn" -type "string" "Anim Default";
	setAttr ".ils" yes;
	setAttr ".ilu" yes;
	setAttr ".eti" 2;
	setAttr ".esi" 3;
	setAttr ".ssn" -type "string" "Squaddie:ExportSet";
	setAttr -s 4 ".ac";
	setAttr ".ac[0].acn" -type "string" "Run";
	setAttr ".ac[0].acs" 10;
	setAttr ".ac[0].ace" 26;
	setAttr ".ac[1].acn" -type "string" "Run_Aim";
	setAttr ".ac[1].acs" 40;
	setAttr ".ac[1].ace" 56;
	setAttr ".ac[2].acn" -type "string" "Run_UnderFire";
	setAttr ".ac[2].acs" 70;
	setAttr ".ac[2].ace" 86;
	setAttr ".ac[3].acn" -type "string" "Dive";
	setAttr ".ac[3].acs" 105;
	setAttr ".ac[3].ace" 124;
	setAttr ".ic" no;
	setAttr ".fv" -type "string" "FBX201800";
	setAttr ".exp" -type "string" "/Users/briancollins/Unity/DropZone/Assets/DropZone/Characters/Squaddie";
	setAttr ".exf" -type "string" "Squaddie_Moving.fbx";
createNode gameFbxExporter -n "gameExporterPreset3";
	rename -uid "F7DE087A-9F46-A0FE-850E-6F971DC5ADE2";
	setAttr ".pn" -type "string" "TE Anim Default";
	setAttr ".ils" yes;
	setAttr ".eti" 3;
	setAttr ".ssn" -type "string" "";
	setAttr ".ebm" yes;
	setAttr ".fv" -type "string" "FBX201800";
createNode polyPlane -n "polyPlane1";
	rename -uid "F19304F5-3C44-3242-D021-C38A785C8AF7";
	setAttr ".w" 500;
	setAttr ".h" 500;
	setAttr ".sw" 1;
	setAttr ".sh" 1;
	setAttr ".cuv" 2;
createNode lambert -n "MatGround";
	rename -uid "D3E20605-4348-4B7B-7B79-B8816A3A64B8";
	setAttr ".ic" -type "float3" 0.29220778 0.29220778 0.29220778 ;
createNode shadingEngine -n "lambert2SG";
	rename -uid "A8429B86-7F4C-5191-16D5-C4AA13F26FFA";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "FD0891AC-D844-7B22-0789-A48ECF47DCF7";
createNode checker -n "checker1";
	rename -uid "E60DE56F-5B45-F4FB-8669-7590D6E8C158";
	setAttr ".c1" -type "float3" 0.1069 0.0933 0.077500001 ;
	setAttr ".c2" -type "float3" 0.068400003 0.055399999 0.040199999 ;
createNode place2dTexture -n "place2dTexture1";
	rename -uid "DE88766C-1845-75CC-CFAE-7C9303CC71AD";
	setAttr ".re" -type "float2" 8 8 ;
createNode polyTweakUV -n "polyTweakUV1";
	rename -uid "BA7B1B1A-7342-B798-14AC-17838D6200BE";
	setAttr ".uopa" yes;
	setAttr -s 3 ".uvtk";
	setAttr ".uvtk[1]" -type "float2" -0.001450032 0 ;
	setAttr ".uvtk[3]" -type "float2" -0.001450032 0 ;
createNode displayLayer -n "Extras";
	rename -uid "A2F14D4A-D247-D102-8D78-0190444E1AF3";
	setAttr ".dt" 2;
	setAttr ".do" 1;
createNode animCurveTL -n "Root_Control_translateX";
	rename -uid "3C85B29E-A54B-5E7F-76E0-B48873DBC618";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 0 5 0 10 0 15 0 22 0 26 0 30 0 35 0 40 0
		 45 0 52 0 56 0 60 0 70 0 75 0 82 0 86 0 90 0 105 0 114 0 124 0;
	setAttr -s 21 ".kit[17:20]"  1 1 18 1;
	setAttr -s 21 ".kot[13:20]"  1 18 18 18 18 1 18 1;
	setAttr -s 21 ".kix[17:20]"  1 1 1 1;
	setAttr -s 21 ".kiy[17:20]"  0 0 0 0;
	setAttr -s 21 ".kox[13:20]"  1 1 1 1 1 1 1 1;
	setAttr -s 21 ".koy[13:20]"  0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Root_Control_translateY";
	rename -uid "9BF2FBE1-2343-400C-7437-828943140C40";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 0 5 0 10 0 15 0 22 0 26 0 30 0 35 0 40 0
		 45 0 52 0 56 0 60 0 70 0 75 0 82 0 86 0 90 0 105 0 114 0 124 0;
	setAttr -s 21 ".kit[17:20]"  1 1 18 1;
	setAttr -s 21 ".kot[13:20]"  1 18 18 18 18 1 18 1;
	setAttr -s 21 ".kix[17:20]"  1 1 1 1;
	setAttr -s 21 ".kiy[17:20]"  0 0 0 0;
	setAttr -s 21 ".kox[13:20]"  1 1 1 1 1 1 1 1;
	setAttr -s 21 ".koy[13:20]"  0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Root_Control_translateZ";
	rename -uid "BDE8D69D-E646-2853-AB94-96846000E83B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 0 5 0 10 0 15 0 22 0 26 0 30 0 35 0 40 0
		 45 0 52 0 56 0 60 0 70 0 75 0 82 0 86 0 90 0 105 0 114 0 124 0;
	setAttr -s 21 ".kit[17:20]"  1 1 18 1;
	setAttr -s 21 ".kot[13:20]"  1 18 18 18 18 1 18 1;
	setAttr -s 21 ".kix[17:20]"  1 1 1 1;
	setAttr -s 21 ".kiy[17:20]"  0 0 0 0;
	setAttr -s 21 ".kox[13:20]"  1 1 1 1 1 1 1 1;
	setAttr -s 21 ".koy[13:20]"  0 0 0 0 0 0 0 0;
createNode animCurveTL -n "LeftFoot_Control_translateX";
	rename -uid "C90A741F-9743-95AB-7812-10806D03686C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  0 0 5 -7.3555719309904557 10 -7.4030849983288078
		 12 -10.466430514878674 14 -12.317904807300096 18 -13.78505482447434 21 -2.8185391449135793
		 24 -8.4242001705120941 26 -7.4030849983288078 30 0 35 -7.3555719309904557 40 -7.4030849983288078
		 42 -10.466430514878674 44 -12.317904807300096 48 -13.78505482447434 51 -2.8185391449135793
		 54 -8.4242001705120941 56 -7.4030849983288078 60 -12.306395532036035 70 -7.4030849983288078
		 72 -10.466430514878674 74 -12.317904807300096 78 -13.78505482447434 81 -2.8185391449135793
		 84 -8.4242001705120941 86 -7.4030849983288078 90 0 105 -7.4030849983288078 114 -7.4030849983288078
		 124 -7.4030849983288078;
	setAttr -s 30 ".kit[26:29]"  1 1 18 1;
	setAttr -s 30 ".kot[19:29]"  1 18 18 18 18 18 18 18 
		1 18 1;
	setAttr -s 30 ".kix[26:29]"  1 0.029663348621195806 1 0.029663348621195806;
	setAttr -s 30 ".kiy[26:29]"  0 0.99955994605054954 0 0.99955994605054954;
	setAttr -s 30 ".kox[19:29]"  0.82531586015270986 0.033891561808595434 
		0.075119570670979408 1 1 1 0.029663348621195799 1 0.029663348621195799 1 0.029663348621195799;
	setAttr -s 30 ".koy[19:29]"  -0.56467134775937833 -0.99942551600315577 
		-0.99717453342040763 0 0 0 0.99955994605054943 0 0.99955994605054943 0 0.99955994605054943;
createNode animCurveTL -n "LeftFoot_Control_translateY";
	rename -uid "463216E0-654C-ABA6-174B-22BA901159FB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  0 -5.6843418860808015e-14 5 5.4261501490096293
		 10 1.5990039482517417 12 6.3960157930069741 14 37.92713881992794 18 35.043424481584708
		 21 23.03123677666516 24 9.5940236895109354 26 1.5990039482517417 30 -5.6843418860808015e-14
		 35 5.4261501490096293 40 1.5990039482517417 42 6.3960157930069741 44 37.92713881992794
		 48 35.043424481584708 51 23.03123677666516 54 9.5940236895109354 56 1.5990039482517417
		 60 27.373114868922642 70 1.5990039482517417 72 6.3960157930069741 74 37.92713881992794
		 78 35.043424481584708 81 23.03123677666516 84 9.5940236895109354 86 1.5990039482517417
		 90 -5.6843418860808015e-14 105 29.616248009205975 109 94.615658166556244 112 110.79238362461651
		 114 63.995598830902047 117 68.847106417734523 118 23.24637451657297 120 0.61021162530178152
		 124 1.5990039482517417;
	setAttr -s 35 ".kit[26:34]"  1 1 18 18 18 18 18 18 
		1;
	setAttr -s 35 ".kot[19:34]"  1 18 18 18 18 18 18 18 
		1 18 18 18 18 18 18 1;
	setAttr -s 35 ".kix[26:34]"  1 0.034722900096633175 0.0035929868034011796 
		1 1 1 0.0018318505062442968 1 0.034722900096633175;
	setAttr -s 35 ".kiy[26:34]"  0 -0.99939697828684637 0.99999354520208306 
		0 0 0 -0.99999832216045381 0 -0.99939697828684637;
	setAttr -s 35 ".kox[19:34]"  1 0.00579054481679365 1 0.019576576896962985 
		0.0098229400559394931 0.0097201021033104292 0.034722900096633161 1 0.034722900096633161 
		0.0035929868034011796 1 1 1 0.0018318505062442968 1 0.034722900096633161;
	setAttr -s 35 ".koy[19:34]"  0 0.99998323465482386 0 -0.99980836045564114 
		-0.99995175376047885 -0.99995275869167999 -0.99939697828684626 0 -0.99939697828684626 
		0.99999354520208306 0 0 0 -0.99999832216045381 0 -0.99939697828684626;
createNode animCurveTL -n "LeftFoot_Control_translateZ";
	rename -uid "5433778F-CB49-B7B4-B178-0C98411E04DF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 0 5 33.454111130013331 10 19.677079733619664
		 12 -15.350437903216985 14 -55.434436398500516 18 -51.638496358409256 21 -3.2028037484826939
		 24 46.690915288951665 26 19.677079733619664 30 0 35 33.454111130013331 40 19.677079733619664
		 42 -15.350437903216985 44 -55.434436398500516 48 -51.638496358409256 51 -3.2028037484826939
		 54 46.690915288951665 56 19.677079733619664 60 -49.268408769385687 70 19.677079733619664
		 72 -15.350437903216985 74 -55.434436398500516 78 -51.638496358409256 81 -3.2028037484826939
		 84 46.690915288951665 86 19.677079733619664 90 0 105 -64.336056408867407 109 -50.400862831361067
		 112 -8.7005509146135296 114 -21.59007340425218 118 78.601030888983502 120 77.122613991661069
		 124 19.677079733619664;
	setAttr -s 34 ".kit[26:33]"  1 1 18 18 18 18 18 1;
	setAttr -s 34 ".kot[19:33]"  1 18 18 18 18 18 18 18 
		1 18 18 18 18 18 1;
	setAttr -s 34 ".kix[26:33]"  1 0.0053542839090359329 0.0052423835493367356 
		1 1 1 0.018785550983212225 0.0053542839090359329;
	setAttr -s 34 ".kiy[26:33]"  0 -0.99998566571917491 0.99998625861294799 
		0 0 0 -0.99982353596735118 -0.99998566571917491;
	setAttr -s 34 ".kox[19:33]"  0.0059761121477036987 0.0022189174836177122 
		1 0.014633952582995611 0.0025424660617166888 1 0.0053542839090359321 0.0094227112233621329 
		0.0053542839090359321 0.0052423835493367356 1 1 1 0.018785550983212225 0.0053542839090359321;
	setAttr -s 34 ".koy[19:33]"  -0.99998214288236065 -0.99999753819957027 
		0 0.99989291798262003 0.99999676792793946 0 -0.99998566571917491 -0.99995560527115468 
		-0.99998566571917491 0.99998625861294799 0 0 0 -0.99982353596735118 -0.99998566571917491;
createNode animCurveTL -n "LeftKnee_Control_translateX";
	rename -uid "3CDF2F9E-1241-A390-30E2-51BC599A6D12";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 0 5 0 10 0 15 0 22 0 26 0 30 0 35 0 40 0
		 45 0 52 0 56 0 60 0 70 0 75 0 82 0 86 0 90 0 105 0 114 0 124 0;
	setAttr -s 21 ".kit[17:20]"  1 1 18 1;
	setAttr -s 21 ".kot[13:20]"  1 18 18 18 18 1 18 1;
	setAttr -s 21 ".kix[17:20]"  1 1 1 1;
	setAttr -s 21 ".kiy[17:20]"  0 0 0 0;
	setAttr -s 21 ".kox[13:20]"  1 1 1 1 1 1 1 1;
	setAttr -s 21 ".koy[13:20]"  0 0 0 0 0 0 0 0;
createNode animCurveTL -n "LeftKnee_Control_translateY";
	rename -uid "616C8942-4F49-8720-B217-AEA96EC43C12";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 0 5 0 10 0 15 0 22 0 26 0 30 0 35 0 40 0
		 45 0 52 0 56 0 60 0 70 0 75 0 82 0 86 0 90 0 105 0 114 0 124 0;
	setAttr -s 21 ".kit[17:20]"  1 1 18 1;
	setAttr -s 21 ".kot[13:20]"  1 18 18 18 18 1 18 1;
	setAttr -s 21 ".kix[17:20]"  1 1 1 1;
	setAttr -s 21 ".kiy[17:20]"  0 0 0 0;
	setAttr -s 21 ".kox[13:20]"  1 1 1 1 1 1 1 1;
	setAttr -s 21 ".koy[13:20]"  0 0 0 0 0 0 0 0;
createNode animCurveTL -n "LeftKnee_Control_translateZ";
	rename -uid "47D15C4C-824B-2FB0-8A41-EDADF5421CCB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 0 5 0 10 0 15 0 22 0 26 0 30 0 35 0 40 0
		 45 0 52 0 56 0 60 0 70 0 75 0 82 0 86 0 90 0 105 0 114 0 124 0;
	setAttr -s 21 ".kit[17:20]"  1 1 18 1;
	setAttr -s 21 ".kot[13:20]"  1 18 18 18 18 1 18 1;
	setAttr -s 21 ".kix[17:20]"  1 1 1 1;
	setAttr -s 21 ".kiy[17:20]"  0 0 0 0;
	setAttr -s 21 ".kox[13:20]"  1 1 1 1 1 1 1 1;
	setAttr -s 21 ".koy[13:20]"  0 0 0 0 0 0 0 0;
createNode animCurveTL -n "LeftToes_Control_translateX";
	rename -uid "09528C22-3544-6316-BC94-D48101A71FDE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 0 5 -0.68359020753485966 10 0 15 0 16 0
		 21 0 24 0 26 0 30 0 35 -0.68359020753485966 40 0 45 0 46 0 51 0 54 0 56 0 60 0 70 0
		 75 0 76 0 81 0 84 0 86 0 90 0 105 0 114 0 124 0;
	setAttr -s 27 ".kit[23:26]"  1 1 18 1;
	setAttr -s 27 ".kot[17:26]"  1 18 18 18 18 18 18 1 
		18 1;
	setAttr -s 27 ".kix[23:26]"  1 1 1 1;
	setAttr -s 27 ".kiy[23:26]"  0 0 0 0;
	setAttr -s 27 ".kox[17:26]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 27 ".koy[17:26]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "LeftToes_Control_translateY";
	rename -uid "F299B1FD-9342-E456-3D90-46B83C61946A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 0 5 15.910089285105265 10 0 15 0 16 0
		 21 0 24 0 26 0 30 0 35 15.910089285105265 40 0 45 0 46 0 51 0 54 0 56 0 60 0 70 0
		 75 0 76 0 81 0 84 0 86 0 90 0 105 0 114 0 124 0;
	setAttr -s 27 ".kit[23:26]"  1 1 18 1;
	setAttr -s 27 ".kot[17:26]"  1 18 18 18 18 18 18 1 
		18 1;
	setAttr -s 27 ".kix[23:26]"  1 1 1 1;
	setAttr -s 27 ".kiy[23:26]"  0 0 0 0;
	setAttr -s 27 ".kox[17:26]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 27 ".koy[17:26]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "LeftToes_Control_translateZ";
	rename -uid "D26367B3-ED47-8EB9-BE8C-2D8CF6541566";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 0 5 10.191036267786696 10 0 15 0 16 0
		 21 0 24 0 26 0 30 0 35 10.191036267786696 40 0 45 0 46 0 51 0 54 0 56 0 60 0 70 0
		 75 0 76 0 81 0 84 0 86 0 90 0 105 0 114 0 124 0;
	setAttr -s 27 ".kit[23:26]"  1 1 18 1;
	setAttr -s 27 ".kot[17:26]"  1 18 18 18 18 18 18 1 
		18 1;
	setAttr -s 27 ".kix[23:26]"  1 1 1 1;
	setAttr -s 27 ".kiy[23:26]"  0 0 0 0;
	setAttr -s 27 ".kox[17:26]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 27 ".koy[17:26]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "RightFoot_Control_translateX";
	rename -uid "9683242C-194B-952D-AB4C-34B4B3D7410F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 0 5 13.905396579254166 10 15.262058761100693
		 13 3.2691917889226474 16 8.2637397753219552 18 7.3260478842009498 22 10.893902402771342
		 26 15.262058761100693 30 0 35 13.905396579254166 40 15.262058761100693 43 3.2691917889226474
		 46 8.2637397753219552 48 7.3260478842009498 52 10.893902402771342 56 15.262058761100693
		 60 8.2637397753219552 70 15.262058761100693 73 3.2691917889226474 76 8.2637397753219552
		 78 7.3260478842009498 82 10.893902402771342 86 15.262058761100693 90 0 105 8.9624385888795537
		 121 0 124 15.262058761100693;
	setAttr -s 27 ".kit[23:26]"  1 1 18 1;
	setAttr -s 27 ".kot[17:26]"  1 18 18 18 18 18 18 1 
		18 1;
	setAttr -s 27 ".kix[23:26]"  1 1 1 1;
	setAttr -s 27 ".kiy[23:26]"  0 0 0 0;
	setAttr -s 27 ".kox[17:26]"  1 1 1 1 0.041965628595783296 1 1 1 1 1;
	setAttr -s 27 ".koy[17:26]"  0 0 0 0 0.99911905497621289 0 0 0 0 0;
createNode animCurveTL -n "RightFoot_Control_translateY";
	rename -uid "CEC1AEA9-4749-E93C-6681-8784975D31AA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 0 5 21.846010473777774 10 32.299879754685705
		 13 32.524047386388823 16 9.3863067157120703 18 1.599003948252232 20 4.114074112203582
		 22 40.847480672551875 26 32.299879754685705 30 0 35 21.846010473777774 40 32.299879754685705
		 43 32.524047386388823 46 9.3863067157120703 48 1.599003948252232 50 4.114074112203582
		 52 40.847480672551875 56 32.299879754685705 60 9.3863067157120703 70 32.299879754685705
		 73 32.524047386388823 76 9.3863067157120703 78 1.599003948252232 80 4.114074112203582
		 82 40.847480672551875 86 32.299879754685705 90 0 105 35.954836278289463 109 89.175948411110866
		 112 101.10763941623077 117 37.543551002077351 121 0 124 32.299879754685705;
	setAttr -s 33 ".kit[26:32]"  1 1 18 18 18 18 1;
	setAttr -s 33 ".kot[19:32]"  1 18 18 18 18 18 18 18 
		1 18 18 18 18 1;
	setAttr -s 33 ".kix[26:32]"  1 0.0081601662968709444 0.004476610830205144 
		1 0.003708893046334948 1 0.0081601662968709444;
	setAttr -s 33 ".kiy[26:32]"  0 -0.99996670528873488 0.99998997992753635 
		0 -0.99999312203253221 0 -0.99996670528873488;
	setAttr -s 33 ".kox[19:32]"  0.18274284634388693 1 0.0067365663196241607 
		1 0.011043860382179766 1 0.0081601662968709427 1 0.0081601662968709427 0.0044766108302051449 
		1 0.0037088930463349472 1 0.0081601662968709427;
	setAttr -s 33 ".koy[19:32]"  0.98316074581430191 0 -0.99997730907967175 
		0 0.99993901471432689 0 -0.99996670528873488 0 -0.99996670528873488 0.99998997992753647 
		0 -0.9999931220325321 0 -0.99996670528873488;
createNode animCurveTL -n "RightFoot_Control_translateZ";
	rename -uid "D8B7513C-314C-7E56-6F6C-89AEAB279033";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  0 0 5 -42.164135556740888 10 -51.168126344056596
		 13 -2.3101110539077609 16 46.614072574620806 18 19.827648958321937 22 -50.767982648745225
		 26 -51.168126344056596 30 0 35 -42.164135556740888 40 -51.168126344056596 43 -2.3101110539077609
		 46 46.614072574620806 48 19.827648958321937 52 -50.767982648745225 56 -51.168126344056596
		 60 46.614072574620806 70 -51.168126344056596 73 -2.3101110539077609 76 46.614072574620806
		 78 19.827648958321937 82 -50.767982648745225 86 -51.168126344056596 90 0 105 -69.855744769818102
		 109 -49.853024913696053 112 -28.849269213947586 117 101.09212885082776 121 0 124 -51.168126344056596;
	setAttr -s 30 ".kit[23:29]"  1 1 18 18 18 18 1;
	setAttr -s 30 ".kot[17:29]"  1 18 18 18 18 18 18 1 
		18 18 18 18 1;
	setAttr -s 30 ".kix[23:29]"  1 1 0.0071125178454419027 0.0022083022359623674 
		1 0.0019155762688516174 1;
	setAttr -s 30 ".kiy[23:29]"  0 0 0.99997470572504887 0.99999756169764464 
		0 -0.99999816528209606 0;
	setAttr -s 30 ".kox[17:29]"  1 0.0025566942212141715 1 0.0025671996304758066 
		0.1375199036400363 1 1 1 0.0071125178454419027 0.0022083022359623674 1 0.0019155762688516174 
		1;
	setAttr -s 30 ".koy[17:29]"  0 0.99999673165198855 0 -0.99999670473759938 
		-0.99049900358497844 0 0 0 0.99997470572504898 0.99999756169764475 0 -0.99999816528209617 
		0;
createNode animCurveTL -n "RightKnee_Control_translateX";
	rename -uid "4F3A8F61-5244-AF66-2202-91957AEE4AB1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 10 0 26 0 30 0 40 0 56 0 70 0 86 0 90 0
		 105 0 108 0 115 0;
	setAttr -s 12 ".kit[2:11]"  1 18 18 1 18 1 1 1 
		18 1;
	setAttr -s 12 ".kot[2:11]"  1 18 18 1 1 1 18 1 
		18 1;
	setAttr -s 12 ".kix[2:11]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".kiy[2:11]"  0 0 0 0 0 0 0 0 0 0;
	setAttr -s 12 ".kox[2:11]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".koy[2:11]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "RightKnee_Control_translateY";
	rename -uid "1DC84F6E-CB49-94A5-A739-C6A04BE2CBBB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 10 0 26 0 30 0 40 0 56 0 70 0 86 0 90 0
		 105 0 108 0 115 0;
	setAttr -s 12 ".kit[2:11]"  1 18 18 1 18 1 1 1 
		18 1;
	setAttr -s 12 ".kot[2:11]"  1 18 18 1 1 1 18 1 
		18 1;
	setAttr -s 12 ".kix[2:11]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".kiy[2:11]"  0 0 0 0 0 0 0 0 0 0;
	setAttr -s 12 ".kox[2:11]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".koy[2:11]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "RightKnee_Control_translateZ";
	rename -uid "7E99C7FD-3746-8F89-A426-A3A6B98A50FB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 10 0 26 0 30 0 40 0 56 0 70 0 86 0 90 0
		 105 0 108 0 115 0;
	setAttr -s 12 ".kit[2:11]"  1 18 18 1 18 1 1 1 
		18 1;
	setAttr -s 12 ".kot[2:11]"  1 18 18 1 1 1 18 1 
		18 1;
	setAttr -s 12 ".kix[2:11]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".kiy[2:11]"  0 0 0 0 0 0 0 0 0 0;
	setAttr -s 12 ".kox[2:11]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".koy[2:11]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "RightToes_Control_translateX";
	rename -uid "23A30692-C845-534A-6F80-B9BD7E37F4ED";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 0 5 0 10 0 18 0 22 0 26 0 30 0 35 0 40 0
		 48 0 52 0 56 0 60 0 70 0 78 0 82 0 86 0 90 0 105 0 114 0 124 0;
	setAttr -s 21 ".kit[2:20]"  1 18 18 18 18 18 1 18 
		18 18 18 1 18 18 18 1 1 18 1;
	setAttr -s 21 ".kot[2:20]"  1 18 18 18 18 18 1 18 
		18 18 18 1 18 18 18 18 1 18 1;
	setAttr -s 21 ".kix[2:20]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 21 ".kiy[2:20]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 21 ".kox[2:20]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 21 ".koy[2:20]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "RightToes_Control_translateY";
	rename -uid "9BFFC7CC-0C44-693F-58B1-A088101616A6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 0 5 0 10 0 18 0 22 0 26 0 30 0 35 0 40 0
		 48 0 52 0 56 0 60 0 70 0 78 0 82 0 86 0 90 0 105 0 114 0 124 0;
	setAttr -s 21 ".kit[2:20]"  1 18 18 18 18 18 1 18 
		18 18 18 1 18 18 18 1 1 18 1;
	setAttr -s 21 ".kot[2:20]"  1 18 18 18 18 18 1 18 
		18 18 18 1 18 18 18 18 1 18 1;
	setAttr -s 21 ".kix[2:20]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 21 ".kiy[2:20]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 21 ".kox[2:20]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 21 ".koy[2:20]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "RightToes_Control_translateZ";
	rename -uid "C539CEAB-AB45-5DF5-8B9C-2B8A31A00235";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 0 5 0 10 0 18 0 22 0 26 0 30 0 35 0 40 0
		 48 0 52 0 56 0 60 0 70 0 78 0 82 0 86 0 90 0 105 0 114 0 124 0;
	setAttr -s 21 ".kit[2:20]"  1 18 18 18 18 18 1 18 
		18 18 18 1 18 18 18 1 1 18 1;
	setAttr -s 21 ".kot[2:20]"  1 18 18 18 18 18 1 18 
		18 18 18 1 18 18 18 18 1 18 1;
	setAttr -s 21 ".kix[2:20]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 21 ".kiy[2:20]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 21 ".kox[2:20]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 21 ".koy[2:20]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "RootMotion_Control_translateX";
	rename -uid "DADEDED9-9946-4B6A-E07F-0EB1EA73C8E9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 0 5 0 10 0 15 0 22 0 26 0 30 0 35 0 40 0
		 45 0 52 0 56 0 60 0 70 0 75 0 82 0 86 0 90 0 105 0 114 0 124 0;
	setAttr -s 21 ".kit[17:20]"  1 1 18 1;
	setAttr -s 21 ".kot[13:20]"  1 18 18 18 18 1 18 1;
	setAttr -s 21 ".kix[17:20]"  1 1 1 1;
	setAttr -s 21 ".kiy[17:20]"  0 0 0 0;
	setAttr -s 21 ".kox[13:20]"  1 1 1 1 1 1 1 1;
	setAttr -s 21 ".koy[13:20]"  0 0 0 0 0 0 0 0;
createNode animCurveTL -n "RootMotion_Control_translateY";
	rename -uid "64467B36-234D-45DE-CEE8-E097A15D8809";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 0 5 0 10 0 15 0 22 0 26 0 30 0 35 0 40 0
		 45 0 52 0 56 0 60 0 70 0 75 0 82 0 86 0 90 0 105 0 114 0 124 0;
	setAttr -s 21 ".kit[17:20]"  1 1 18 1;
	setAttr -s 21 ".kot[13:20]"  1 18 18 18 18 1 18 1;
	setAttr -s 21 ".kix[17:20]"  1 1 1 1;
	setAttr -s 21 ".kiy[17:20]"  0 0 0 0;
	setAttr -s 21 ".kox[13:20]"  1 1 1 1 1 1 1 1;
	setAttr -s 21 ".koy[13:20]"  0 0 0 0 0 0 0 0;
createNode animCurveTL -n "RootMotion_Control_translateZ";
	rename -uid "642B0782-A54F-8CA9-1A1B-4F8F8AB5914B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 0 5 0 10 0 15 0 22 0 26 0 30 0 35 0 40 0
		 45 0 52 0 56 0 60 0 70 0 75 0 82 0 86 0 90 0 105 0 114 0 124 0;
	setAttr -s 21 ".kit[17:20]"  1 1 18 1;
	setAttr -s 21 ".kot[13:20]"  1 18 18 18 18 1 18 1;
	setAttr -s 21 ".kix[17:20]"  1 1 1 1;
	setAttr -s 21 ".kiy[17:20]"  0 0 0 0;
	setAttr -s 21 ".kox[13:20]"  1 1 1 1 1 1 1 1;
	setAttr -s 21 ".koy[13:20]"  0 0 0 0 0 0 0 0;
createNode animCurveTL -n "LeftHip_Control_translateX";
	rename -uid "35B82229-474F-8851-8026-EF924A4425D4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 0 5 0 10 0 15 0 22 0 26 0 30 0 35 0 40 0
		 45 0 52 0 56 0 60 0 70 0 75 0 82 0 86 0 90 0 105 0 114 0 124 0;
	setAttr -s 21 ".kit[17:20]"  1 1 18 1;
	setAttr -s 21 ".kot[13:20]"  1 18 18 18 18 1 18 1;
	setAttr -s 21 ".kix[17:20]"  1 1 1 1;
	setAttr -s 21 ".kiy[17:20]"  0 0 0 0;
	setAttr -s 21 ".kox[13:20]"  1 1 1 1 1 1 1 1;
	setAttr -s 21 ".koy[13:20]"  0 0 0 0 0 0 0 0;
createNode animCurveTL -n "LeftHip_Control_translateY";
	rename -uid "8831FFFA-A84A-2C2B-B878-D29D99141757";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 0 5 0 10 0 15 0 22 0 26 0 30 0 35 0 40 0
		 45 0 52 0 56 0 60 0 70 0 75 0 82 0 86 0 90 0 105 0 114 0 124 0;
	setAttr -s 21 ".kit[17:20]"  1 1 18 1;
	setAttr -s 21 ".kot[13:20]"  1 18 18 18 18 1 18 1;
	setAttr -s 21 ".kix[17:20]"  1 1 1 1;
	setAttr -s 21 ".kiy[17:20]"  0 0 0 0;
	setAttr -s 21 ".kox[13:20]"  1 1 1 1 1 1 1 1;
	setAttr -s 21 ".koy[13:20]"  0 0 0 0 0 0 0 0;
createNode animCurveTL -n "LeftHip_Control_translateZ";
	rename -uid "BC1892EC-B046-F049-CAB5-11B37C24AC17";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 0 5 0 10 0 15 0 22 0 26 0 30 0 35 0 40 0
		 45 0 52 0 56 0 60 0 70 0 75 0 82 0 86 0 90 0 105 0 114 0 124 0;
	setAttr -s 21 ".kit[17:20]"  1 1 18 1;
	setAttr -s 21 ".kot[13:20]"  1 18 18 18 18 1 18 1;
	setAttr -s 21 ".kix[17:20]"  1 1 1 1;
	setAttr -s 21 ".kiy[17:20]"  0 0 0 0;
	setAttr -s 21 ".kox[13:20]"  1 1 1 1 1 1 1 1;
	setAttr -s 21 ".koy[13:20]"  0 0 0 0 0 0 0 0;
createNode animCurveTL -n "RightHip_Control_translateX";
	rename -uid "6DB31350-CC41-B927-05C3-A4B5871EC575";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 0 5 0 10 0 15 0 22 0 26 0 30 0 35 0 40 0
		 45 0 52 0 56 0 60 0 70 0 75 0 82 0 86 0 90 0 105 0 114 0 124 0;
	setAttr -s 21 ".kit[17:20]"  1 1 18 1;
	setAttr -s 21 ".kot[13:20]"  1 18 18 18 18 1 18 1;
	setAttr -s 21 ".kix[17:20]"  1 1 1 1;
	setAttr -s 21 ".kiy[17:20]"  0 0 0 0;
	setAttr -s 21 ".kox[13:20]"  1 1 1 1 1 1 1 1;
	setAttr -s 21 ".koy[13:20]"  0 0 0 0 0 0 0 0;
createNode animCurveTL -n "RightHip_Control_translateY";
	rename -uid "0C40B26E-184F-98E3-5866-6EA12F6139B1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 0 5 0 10 0 15 0 22 0 26 0 30 0 35 0 40 0
		 45 0 52 0 56 0 60 0 70 0 75 0 82 0 86 0 90 0 105 0 114 0 124 0;
	setAttr -s 21 ".kit[17:20]"  1 1 18 1;
	setAttr -s 21 ".kot[13:20]"  1 18 18 18 18 1 18 1;
	setAttr -s 21 ".kix[17:20]"  1 1 1 1;
	setAttr -s 21 ".kiy[17:20]"  0 0 0 0;
	setAttr -s 21 ".kox[13:20]"  1 1 1 1 1 1 1 1;
	setAttr -s 21 ".koy[13:20]"  0 0 0 0 0 0 0 0;
createNode animCurveTL -n "RightHip_Control_translateZ";
	rename -uid "DADB5A16-0342-592B-E67C-B5A750AEB080";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 0 5 0 10 0 15 0 22 0 26 0 30 0 35 0 40 0
		 45 0 52 0 56 0 60 0 70 0 75 0 82 0 86 0 90 0 105 0 114 0 124 0;
	setAttr -s 21 ".kit[17:20]"  1 1 18 1;
	setAttr -s 21 ".kot[13:20]"  1 18 18 18 18 1 18 1;
	setAttr -s 21 ".kix[17:20]"  1 1 1 1;
	setAttr -s 21 ".kiy[17:20]"  0 0 0 0;
	setAttr -s 21 ".kox[13:20]"  1 1 1 1 1 1 1 1;
	setAttr -s 21 ".koy[13:20]"  0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Spine1_Control_translateX";
	rename -uid "2DD0DD8B-3241-98A3-F812-D78A8E5CB13E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 0 5 0 10 0 15 0 16 0 22 0 26 0 30 0 35 0
		 40 0 56 0 60 0 70 0 75 0 76 0 82 0 86 0 90 0 105 0 114 0 124 0;
	setAttr -s 21 ".kit[9:20]"  1 18 18 18 18 18 18 18 
		1 1 18 1;
	setAttr -s 21 ".kot[9:20]"  1 18 18 1 18 18 18 18 
		18 1 18 1;
	setAttr -s 21 ".kix[9:20]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 21 ".kiy[9:20]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 21 ".kox[9:20]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 21 ".koy[9:20]"  0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Spine1_Control_translateY";
	rename -uid "DA057B97-5C43-85B5-FCBC-17A88D80D0FE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 0 5 0 10 0 15 0 16 0 22 0 26 0 30 0 35 0
		 40 0 56 0 60 0 70 0 75 0 76 0 82 0 86 0 90 0 105 0 114 0 124 0;
	setAttr -s 21 ".kit[9:20]"  1 18 18 18 18 18 18 18 
		1 1 18 1;
	setAttr -s 21 ".kot[9:20]"  1 18 18 1 18 18 18 18 
		18 1 18 1;
	setAttr -s 21 ".kix[9:20]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 21 ".kiy[9:20]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 21 ".kox[9:20]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 21 ".koy[9:20]"  0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Spine1_Control_translateZ";
	rename -uid "BB442EDD-8242-F1E0-CEAC-B680371FDC82";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 0 5 0 10 0 15 0 16 0 22 0 26 0 30 0 35 0
		 40 0 56 0 60 0 70 0 75 0 76 0 82 0 86 0 90 0 105 0 114 0 124 0;
	setAttr -s 21 ".kit[9:20]"  1 18 18 18 18 18 18 18 
		1 1 18 1;
	setAttr -s 21 ".kot[9:20]"  1 18 18 1 18 18 18 18 
		18 1 18 1;
	setAttr -s 21 ".kix[9:20]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 21 ".kiy[9:20]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 21 ".kox[9:20]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 21 ".koy[9:20]"  0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Spine2_Control_translateX";
	rename -uid "4AC76D31-304D-0B7E-0F65-AF9FE2818EC9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 5 0 10 0 18 0 26 0 30 0 35 0 40 0 56 0
		 60 0 70 0 78 0 86 0 90 0 105 0 114 0 124 0;
	setAttr -s 17 ".kit[7:16]"  1 18 18 18 18 18 1 1 
		18 1;
	setAttr -s 17 ".kot[7:16]"  1 18 18 1 18 18 18 1 
		18 1;
	setAttr -s 17 ".kix[7:16]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[7:16]"  0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[7:16]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[7:16]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Spine2_Control_translateY";
	rename -uid "25AE75C2-5E4E-7B07-3D69-2E9E6C72D8CC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 5 0 10 0 18 0 26 0 30 0 35 0 40 0 56 0
		 60 0 70 0 78 0 86 0 90 0 105 0 114 0 124 0;
	setAttr -s 17 ".kit[7:16]"  1 18 18 18 18 18 1 1 
		18 1;
	setAttr -s 17 ".kot[7:16]"  1 18 18 1 18 18 18 1 
		18 1;
	setAttr -s 17 ".kix[7:16]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[7:16]"  0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[7:16]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[7:16]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Spine2_Control_translateZ";
	rename -uid "1756674A-1141-2A49-89DE-769E62962E6D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 5 0 10 0 18 0 26 0 30 0 35 0 40 0 56 0
		 60 0 70 0 78 0 86 0 90 0 105 0 114 0 124 0;
	setAttr -s 17 ".kit[7:16]"  1 18 18 18 18 18 1 1 
		18 1;
	setAttr -s 17 ".kot[7:16]"  1 18 18 1 18 18 18 1 
		18 1;
	setAttr -s 17 ".kix[7:16]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[7:16]"  0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[7:16]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[7:16]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "LeftArmTwist_Control_translateX";
	rename -uid "99EFE83C-604C-DE41-7A1E-43A0C02B09D7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 5 0 10 0 15 0 22 0 26 0 30 0 35 0 40 0
		 56 0 60 0 70 0 75 0 82 0 86 0 90 0 105 0 114 0 124 0;
	setAttr -s 19 ".kit[9:18]"  1 18 18 18 18 18 1 1 
		18 1;
	setAttr -s 19 ".kot[9:18]"  1 18 1 18 18 18 18 1 
		18 1;
	setAttr -s 19 ".kix[9:18]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 19 ".kiy[9:18]"  0 0 0 0 0 0 0 0 0 0;
	setAttr -s 19 ".kox[9:18]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 19 ".koy[9:18]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "LeftArmTwist_Control_translateY";
	rename -uid "A4B64441-634F-5C5B-AB96-F4803A569887";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 5 0 10 0 15 0 22 0 26 0 30 0 35 0 40 0
		 56 0 60 0 70 0 75 0 82 0 86 0 90 0 105 0 114 0 124 0;
	setAttr -s 19 ".kit[9:18]"  1 18 18 18 18 18 1 1 
		18 1;
	setAttr -s 19 ".kot[9:18]"  1 18 1 18 18 18 18 1 
		18 1;
	setAttr -s 19 ".kix[9:18]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 19 ".kiy[9:18]"  0 0 0 0 0 0 0 0 0 0;
	setAttr -s 19 ".kox[9:18]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 19 ".koy[9:18]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "LeftArmTwist_Control_translateZ";
	rename -uid "C7385032-504B-BDBF-2CA7-5CA3FC9F426A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 5 0 10 0 15 0 22 0 26 0 30 0 35 0 40 0
		 56 0 60 0 70 0 75 0 82 0 86 0 90 0 105 0 114 0 124 0;
	setAttr -s 19 ".kit[9:18]"  1 18 18 18 18 18 1 1 
		18 1;
	setAttr -s 19 ".kot[9:18]"  1 18 1 18 18 18 18 1 
		18 1;
	setAttr -s 19 ".kix[9:18]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 19 ".kiy[9:18]"  0 0 0 0 0 0 0 0 0 0;
	setAttr -s 19 ".kox[9:18]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 19 ".koy[9:18]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "LeftElbow_Control_translateX";
	rename -uid "AD25DF4E-B049-12E1-FF09-BBAAC387514A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 5 0 10 0 15 0 22 0 26 0 30 0 35 0 40 35.805957739867452
		 56 35.805957739867452 60 0 70 32.786549402208315 86 32.786549402208315 90 0 105 32.786549402208315
		 114 32.786549402208315 124 5.75116058198779;
	setAttr -s 17 ".kit[8:16]"  1 1 18 18 1 1 1 18 
		1;
	setAttr -s 17 ".kot[8:16]"  1 1 18 1 1 18 1 18 
		1;
	setAttr -s 17 ".kix[8:16]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[8:16]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[8:16]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[8:16]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "LeftElbow_Control_translateY";
	rename -uid "6A90407B-3940-27CD-1129-7B94F805B8C1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 5 0 10 0 15 0 22 0 26 0 30 0 35 0 40 -20.916467639621445
		 56 -20.916467639621445 60 0 70 23.558683436544026 86 23.558683436544026 90 0 105 23.558683436544026
		 114 23.558683436544026 124 -24.53135659508386;
	setAttr -s 17 ".kit[8:16]"  1 1 18 18 1 1 1 18 
		1;
	setAttr -s 17 ".kot[8:16]"  1 1 18 1 1 18 1 18 
		1;
	setAttr -s 17 ".kix[8:16]"  1 1 0.01311481020091127 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[8:16]"  0 0 0.99991399717845431 0 0 0 0 0 0;
	setAttr -s 17 ".kox[8:16]"  1 1 0.013114810200911271 1 1 1 1 1 1;
	setAttr -s 17 ".koy[8:16]"  0 0 0.99991399717845442 0 0 0 0 0 0;
createNode animCurveTL -n "LeftElbow_Control_translateZ";
	rename -uid "DE065043-674D-7237-2F64-AD95E18A15C1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 5 0 10 0 15 0 22 0 26 0 30 0 35 0 40 131.89377721729159
		 56 131.89377721729159 60 0 70 150.58716923557282 86 150.58716923557282 90 0 105 150.58716923557282
		 114 150.58716923557282 124 3.8246052515260542;
	setAttr -s 17 ".kit[8:16]"  1 1 18 18 1 1 1 18 
		1;
	setAttr -s 17 ".kot[8:16]"  1 1 18 1 1 18 1 18 
		1;
	setAttr -s 17 ".kix[8:16]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[8:16]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[8:16]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[8:16]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "LeftHand_Control_translateX";
	rename -uid "95799B64-8A47-D949-E085-04B74C8D47DA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  0 -43.581420406573983 5 -43.581420406573983
		 10 -43.581420406573983 12 -43.498957071233448 16 -44.069030611499826 18 -43.581420406573983
		 20 -43.40911521038425 24 -43.480814839106863 26 -43.581420406573983 30 -43.581420406573983
		 35 -43.581420406573983 40 -54.699175839235487 44 -60.048584704873122 52 -44.325523140978241
		 56 -54.699175839235487 60 -43.581420406573983 70 -55.192468319602028 77 -55.283837411928964
		 86 -55.192468319602028 90 -43.581420406573983 105 -55.192468319602028 112 -55.062362408089506
		 114 -55.192468319602028 124 -43.581420406573983;
	setAttr -s 24 ".kit[11:23]"  1 18 18 1 18 18 18 1 
		1 1 18 18 1;
	setAttr -s 24 ".kot[11:23]"  1 18 18 1 18 1 18 1 
		18 1 18 18 1;
	setAttr -s 24 ".kix[11:23]"  1 1 1 1 1 0.72870171261966243 1 1 1 1 1 
		1 1;
	setAttr -s 24 ".kiy[11:23]"  0 0 0 0 0 -0.68483123032260362 0 0 0 0 
		0 0 0;
	setAttr -s 24 ".kox[11:23]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 24 ".koy[11:23]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "LeftHand_Control_translateY";
	rename -uid "37267267-8640-E6C2-92BC-C2BB8B0C2F03";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  0 7.3726146194617854 5 7.3726146194617854
		 10 7.3726146194617854 12 3.5414175249102078 16 11.463916507731122 18 7.3726146194617854
		 20 3.3546033760395346 24 11.257411419306171 26 7.3726146194617854 30 7.3726146194617854
		 35 7.3726146194617854 40 49.209325946861831 44 47.188639848070977 52 46.092852132496354
		 56 49.209325946861831 60 7.3726146194617854 70 68.443175520011778 77 68.174499179059083
		 86 68.443175520011778 90 7.3726146194617854 105 77.73491242603707 112 85.953098927691713
		 114 48.995439538706265 124 6.779727807776796;
	setAttr -s 24 ".kit[11:23]"  1 18 18 1 18 18 18 1 
		1 1 18 18 1;
	setAttr -s 24 ".kot[11:23]"  1 18 18 1 18 1 18 1 
		18 1 18 18 1;
	setAttr -s 24 ".kix[11:23]"  1 0.15841190616261691 1 1 1 1 1 0.013913376539911022 
		1 0.013913376539911022 1 0.0063151287183494109 1;
	setAttr -s 24 ".kiy[11:23]"  0 -0.98737311487903401 0 0 0 0 0 0.99990320429192481 
		0 0.99990320429192481 0 -0.99998005937582102 0;
	setAttr -s 24 ".kox[11:23]"  1 0.15841190616261697 1 1 1 1 1 1 1 1 1 
		0.0063151287183494109 1;
	setAttr -s 24 ".koy[11:23]"  0 -0.98737311487903423 0 0 0 0 0 0 0 0 
		0 -0.99998005937582113 0;
createNode animCurveTL -n "LeftHand_Control_translateZ";
	rename -uid "AAC30013-934A-185E-9E50-D1BDB2C763CE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  0 17.584172701095682 5 17.584172701095682
		 10 17.584172701095682 12 21.163262539087583 16 15.222146027235116 18 17.584172701095682
		 20 21.724111742433458 24 15.152011686982966 26 17.584172701095682 30 17.584172701095682
		 35 17.584172701095682 40 33.680501243491292 44 37.327642972778321 52 23.384879639623961
		 56 33.680501243491292 60 17.584172701095682 70 -18.923017742646255 77 -18.324375433720952
		 86 -18.923017742646255 90 17.584172701095682 105 8.3782444251162076 112 19.865213243361499
		 114 36.013564172681249 124 24.74345897413216;
	setAttr -s 24 ".kit[11:23]"  1 18 18 1 18 18 18 1 
		1 1 18 18 1;
	setAttr -s 24 ".kot[11:23]"  1 18 18 1 18 1 18 1 
		18 1 18 18 1;
	setAttr -s 24 ".kix[11:23]"  1 1 1 1 0.011088563678537229 1 1 1 1 1 
		0.013568342364129781 1 1;
	setAttr -s 24 ".kiy[11:23]"  0 0 0 0 -0.99993851998787764 0 0 0 0 0 
		0.99990794580575759 0 0;
	setAttr -s 24 ".kox[11:23]"  1 1 1 1 0.011088563678537229 1 1 1 1 1 
		0.013568342364129779 1 1;
	setAttr -s 24 ".koy[11:23]"  0 0 0 0 -0.99993851998787764 0 0 0 0 0 
		0.99990794580575748 0 0;
createNode animCurveTL -n "LeftFingers_Control_translateX";
	rename -uid "B28FA31B-FD43-B272-EC1E-409603FEA7A2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 0 5 0 10 0 15 0 22 0 26 0 30 0 35 0 40 0
		 45 0 52 0 56 0 60 0 70 0 75 0 82 0 86 0 90 0 105 0 114 0 124 0;
	setAttr -s 21 ".kit[17:20]"  1 1 18 1;
	setAttr -s 21 ".kot[13:20]"  1 18 18 18 18 1 18 1;
	setAttr -s 21 ".kix[17:20]"  1 1 1 1;
	setAttr -s 21 ".kiy[17:20]"  0 0 0 0;
	setAttr -s 21 ".kox[13:20]"  1 1 1 1 1 1 1 1;
	setAttr -s 21 ".koy[13:20]"  0 0 0 0 0 0 0 0;
createNode animCurveTL -n "LeftFingers_Control_translateY";
	rename -uid "5E46E87C-DE4D-EF3D-8E22-FDA024D286FC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 0 5 0 10 0 15 0 22 0 26 0 30 0 35 0 40 0
		 45 0 52 0 56 0 60 0 70 0 75 0 82 0 86 0 90 0 105 0 114 0 124 0;
	setAttr -s 21 ".kit[17:20]"  1 1 18 1;
	setAttr -s 21 ".kot[13:20]"  1 18 18 18 18 1 18 1;
	setAttr -s 21 ".kix[17:20]"  1 1 1 1;
	setAttr -s 21 ".kiy[17:20]"  0 0 0 0;
	setAttr -s 21 ".kox[13:20]"  1 1 1 1 1 1 1 1;
	setAttr -s 21 ".koy[13:20]"  0 0 0 0 0 0 0 0;
createNode animCurveTL -n "LeftFingers_Control_translateZ";
	rename -uid "B28CA294-1940-FE5A-854B-ABAF883BF6AC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 0 5 0 10 0 15 0 22 0 26 0 30 0 35 0 40 0
		 45 0 52 0 56 0 60 0 70 0 75 0 82 0 86 0 90 0 105 0 114 0 124 0;
	setAttr -s 21 ".kit[17:20]"  1 1 18 1;
	setAttr -s 21 ".kot[13:20]"  1 18 18 18 18 1 18 1;
	setAttr -s 21 ".kix[17:20]"  1 1 1 1;
	setAttr -s 21 ".kiy[17:20]"  0 0 0 0;
	setAttr -s 21 ".kox[13:20]"  1 1 1 1 1 1 1 1;
	setAttr -s 21 ".koy[13:20]"  0 0 0 0 0 0 0 0;
createNode animCurveTL -n "LeftShoulder_Control_translateX";
	rename -uid "6DA66B9A-A143-9399-FD44-698962DBEE85";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 0 5 0 10 0 15 0 22 0 26 0 30 0 35 0 40 0
		 45 0 52 0 56 0 60 0 70 0 75 0 82 0 86 0 90 0 105 0 114 0 124 0;
	setAttr -s 21 ".kit[17:20]"  1 1 18 1;
	setAttr -s 21 ".kot[13:20]"  1 18 18 18 18 1 18 1;
	setAttr -s 21 ".kix[17:20]"  1 1 1 1;
	setAttr -s 21 ".kiy[17:20]"  0 0 0 0;
	setAttr -s 21 ".kox[13:20]"  1 1 1 1 1 1 1 1;
	setAttr -s 21 ".koy[13:20]"  0 0 0 0 0 0 0 0;
createNode animCurveTL -n "LeftShoulder_Control_translateY";
	rename -uid "56A7B604-7049-6B99-ED4F-71B5BD3E1346";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 0 5 0 10 0 15 0 22 0 26 0 30 0 35 0 40 0
		 45 0 52 0 56 0 60 0 70 0 75 0 82 0 86 0 90 0 105 0 114 0 124 0;
	setAttr -s 21 ".kit[17:20]"  1 1 18 1;
	setAttr -s 21 ".kot[13:20]"  1 18 18 18 18 1 18 1;
	setAttr -s 21 ".kix[17:20]"  1 1 1 1;
	setAttr -s 21 ".kiy[17:20]"  0 0 0 0;
	setAttr -s 21 ".kox[13:20]"  1 1 1 1 1 1 1 1;
	setAttr -s 21 ".koy[13:20]"  0 0 0 0 0 0 0 0;
createNode animCurveTL -n "LeftShoulder_Control_translateZ";
	rename -uid "42C61272-5049-411B-72E1-5086303FE142";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 0 5 0 10 0 15 0 22 0 26 0 30 0 35 0 40 0
		 45 0 52 0 56 0 60 0 70 0 75 0 82 0 86 0 90 0 105 0 114 0 124 0;
	setAttr -s 21 ".kit[17:20]"  1 1 18 1;
	setAttr -s 21 ".kot[13:20]"  1 18 18 18 18 1 18 1;
	setAttr -s 21 ".kix[17:20]"  1 1 1 1;
	setAttr -s 21 ".kiy[17:20]"  0 0 0 0;
	setAttr -s 21 ".kox[13:20]"  1 1 1 1 1 1 1 1;
	setAttr -s 21 ".koy[13:20]"  0 0 0 0 0 0 0 0;
createNode animCurveTL -n "LeftUpperArm_Control_translateX";
	rename -uid "0DFBAF26-C243-E0D8-1C69-35A5BD236106";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 0 10 0 15 0 22 0 26 0 30 0;
createNode animCurveTL -n "LeftUpperArm_Control_translateY";
	rename -uid "60A71416-594D-68C3-EF67-10A50806FD8E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 0 10 0 15 0 22 0 26 0 30 0;
createNode animCurveTL -n "LeftUpperArm_Control_translateZ";
	rename -uid "F1B591D7-E346-8E03-D653-F8A200660893";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 0 10 0 15 0 22 0 26 0 30 0;
createNode animCurveTL -n "Neck_Control_translateX";
	rename -uid "58E9746A-474F-1539-91D7-61BD45C61F6A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 5 0 10 0 26 0 30 0 35 0 40 0 56 0 60 0
		 70 0 86 0 90 0 105 0 114 0 124 0;
	setAttr -s 15 ".kit[7:14]"  1 18 18 18 1 1 18 1;
	setAttr -s 15 ".kot[7:14]"  1 18 1 18 18 1 18 1;
	setAttr -s 15 ".kix[7:14]"  1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[7:14]"  0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[7:14]"  1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[7:14]"  0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Neck_Control_translateY";
	rename -uid "C6A44684-274A-2555-6CA9-7497B64B02CD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 5 0 10 0 26 0 30 0 35 0 40 0 56 0 60 0
		 70 0 86 0 90 0 105 0 114 0 124 0;
	setAttr -s 15 ".kit[7:14]"  1 18 18 18 1 1 18 1;
	setAttr -s 15 ".kot[7:14]"  1 18 1 18 18 1 18 1;
	setAttr -s 15 ".kix[7:14]"  1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[7:14]"  0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[7:14]"  1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[7:14]"  0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Neck_Control_translateZ";
	rename -uid "1617CF66-5741-C446-3C95-DC986B427C00";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 5 0 10 0 26 0 30 0 35 0 40 0 56 0 60 0
		 70 0 86 0 90 0 105 0 114 0 124 0;
	setAttr -s 15 ".kit[7:14]"  1 18 18 18 1 1 18 1;
	setAttr -s 15 ".kot[7:14]"  1 18 1 18 18 1 18 1;
	setAttr -s 15 ".kix[7:14]"  1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[7:14]"  0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[7:14]"  1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[7:14]"  0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Head_Control_translateX";
	rename -uid "56B94D56-3044-C77F-C0AF-51B921BC9E35";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 5 0 10 0 26 0 30 0 35 0 40 0 56 0 60 0
		 70 0 86 0 90 0 105 0 114 0 124 0;
	setAttr -s 15 ".kit[7:14]"  1 18 18 18 1 1 18 1;
	setAttr -s 15 ".kot[7:14]"  1 18 1 18 18 1 18 1;
	setAttr -s 15 ".kix[7:14]"  1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[7:14]"  0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[7:14]"  1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[7:14]"  0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Head_Control_translateY";
	rename -uid "0637CB69-9A43-08C1-690C-5DB0E8CFBF3F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 5 0 10 0 26 0 30 0 35 0 40 0 56 0 60 0
		 70 0 86 0 90 0 105 0 114 0 124 0;
	setAttr -s 15 ".kit[7:14]"  1 18 18 18 1 1 18 1;
	setAttr -s 15 ".kot[7:14]"  1 18 1 18 18 1 18 1;
	setAttr -s 15 ".kix[7:14]"  1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[7:14]"  0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[7:14]"  1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[7:14]"  0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Head_Control_translateZ";
	rename -uid "C928D8C9-4045-01E3-746C-1FA63DCB8B4F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 5 0 10 0 26 0 30 0 35 0 40 0 56 0 60 0
		 70 0 86 0 90 0 105 0 114 0 124 0;
	setAttr -s 15 ".kit[7:14]"  1 18 18 18 1 1 18 1;
	setAttr -s 15 ".kot[7:14]"  1 18 1 18 18 1 18 1;
	setAttr -s 15 ".kix[7:14]"  1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[7:14]"  0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[7:14]"  1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[7:14]"  0 0 0 0 0 0 0 0;
createNode animCurveTL -n "RightArmTwist_Control_translateX";
	rename -uid "57829432-194B-30D7-497B-4785D8C78755";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 0 5 0 10 0 15 0 22 0 26 0 30 0 35 0 40 0
		 45 0 52 0 56 0 60 0 70 0 75 0 82 0 86 0 90 0 105 0 114 0 124 0;
	setAttr -s 21 ".kit[17:20]"  1 1 18 1;
	setAttr -s 21 ".kot[13:20]"  1 18 18 18 18 1 18 1;
	setAttr -s 21 ".kix[17:20]"  1 1 1 1;
	setAttr -s 21 ".kiy[17:20]"  0 0 0 0;
	setAttr -s 21 ".kox[13:20]"  1 1 1 1 1 1 1 1;
	setAttr -s 21 ".koy[13:20]"  0 0 0 0 0 0 0 0;
createNode animCurveTL -n "RightArmTwist_Control_translateY";
	rename -uid "34868EF5-1748-1EE9-4282-57A21EF704D3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 0 5 0 10 0 15 0 22 0 26 0 30 0 35 0 40 0
		 45 0 52 0 56 0 60 0 70 0 75 0 82 0 86 0 90 0 105 0 114 0 124 0;
	setAttr -s 21 ".kit[17:20]"  1 1 18 1;
	setAttr -s 21 ".kot[13:20]"  1 18 18 18 18 1 18 1;
	setAttr -s 21 ".kix[17:20]"  1 1 1 1;
	setAttr -s 21 ".kiy[17:20]"  0 0 0 0;
	setAttr -s 21 ".kox[13:20]"  1 1 1 1 1 1 1 1;
	setAttr -s 21 ".koy[13:20]"  0 0 0 0 0 0 0 0;
createNode animCurveTL -n "RightArmTwist_Control_translateZ";
	rename -uid "427554A9-CD49-D414-8C55-06ABDC780D1E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 0 5 0 10 0 15 0 22 0 26 0 30 0 35 0 40 0
		 45 0 52 0 56 0 60 0 70 0 75 0 82 0 86 0 90 0 105 0 114 0 124 0;
	setAttr -s 21 ".kit[17:20]"  1 1 18 1;
	setAttr -s 21 ".kot[13:20]"  1 18 18 18 18 1 18 1;
	setAttr -s 21 ".kix[17:20]"  1 1 1 1;
	setAttr -s 21 ".kiy[17:20]"  0 0 0 0;
	setAttr -s 21 ".kox[13:20]"  1 1 1 1 1 1 1 1;
	setAttr -s 21 ".koy[13:20]"  0 0 0 0 0 0 0 0;
createNode animCurveTL -n "RightElbow_Control_translateX";
	rename -uid "E18A111A-CB47-B244-783C-71B9B9B10BDD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -23.293111627547226 5 -23.293111627547226
		 10 -23.293111627547226 15 -23.293111627547226 22 -23.293111627547226 26 -23.293111627547226
		 30 -23.293111627547226 35 -23.293111627547226 40 -23.293111627547226 45 -23.293111627547226
		 52 -23.293111627547226 56 -23.293111627547226 60 -23.293111627547226 70 -65.55802107983898
		 86 -65.55802107983898 90 -23.293111627547226 105 -23.293111627547226 114 -23.293111627547226
		 124 -58.389902236650912;
	setAttr -s 19 ".kit[14:18]"  1 1 18 18 1;
	setAttr -s 19 ".kot[13:18]"  1 1 18 18 18 1;
	setAttr -s 19 ".kix[14:18]"  1 1 1 1 1;
	setAttr -s 19 ".kiy[14:18]"  0 0 0 0 0;
	setAttr -s 19 ".kox[13:18]"  1 1 1 1 1 1;
	setAttr -s 19 ".koy[13:18]"  0 0 0 0 0 0;
createNode animCurveTL -n "RightElbow_Control_translateY";
	rename -uid "5AC38800-3642-2302-D691-7CBA4E28E2B2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 5 0 10 0 15 0 22 0 26 0 30 0 35 0 40 0
		 45 0 52 0 56 0 60 0 70 34.095509729077961 86 34.095509729077961 90 0 105 -12.119674381134544
		 114 -12.119674381134544 124 -22.046005649461836;
	setAttr -s 19 ".kit[14:18]"  1 1 18 18 1;
	setAttr -s 19 ".kot[13:18]"  1 1 18 18 18 1;
	setAttr -s 19 ".kix[14:18]"  1 1 1 1 1;
	setAttr -s 19 ".kiy[14:18]"  0 0 0 0 0;
	setAttr -s 19 ".kox[13:18]"  1 1 0.017187141659241265 1 1 1;
	setAttr -s 19 ".koy[13:18]"  0 0 -0.99985229017169586 0 0 0;
createNode animCurveTL -n "RightElbow_Control_translateZ";
	rename -uid "EDC633C5-944B-9363-7EC3-45A9570699F9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 12.588214453850696 5 12.588214453850696
		 10 12.588214453850696 15 12.588214453850696 22 12.588214453850696 26 12.588214453850696
		 30 12.588214453850696 35 12.588214453850696 40 12.588214453850696 45 12.588214453850696
		 52 12.588214453850696 56 12.588214453850696 60 12.588214453850696 70 157.8721254555378
		 86 157.8721254555378 90 12.588214453850696 105 122.42156288062507 114 122.42156288062507
		 124 -13.462162007840348;
	setAttr -s 19 ".kit[14:18]"  1 1 18 18 1;
	setAttr -s 19 ".kot[13:18]"  1 1 18 18 18 1;
	setAttr -s 19 ".kix[14:18]"  1 1 1 1 1;
	setAttr -s 19 ".kiy[14:18]"  0 0 0 0 0;
	setAttr -s 19 ".kox[13:18]"  1 1 1 1 1 1;
	setAttr -s 19 ".koy[13:18]"  0 0 0 0 0 0;
createNode animCurveTL -n "RightHand_Control_translateX";
	rename -uid "5ED98B6F-DC47-D2B0-2166-CA8F91BED5D7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  0 50.677976288897156 5 50.677976288897156
		 10 50.677976288897156 12 50.760439624237691 16 50.190366083971313 18 50.677976288897156
		 20 50.850281485086889 24 50.778581856364276 26 50.677976288897156 30 50.677976288897156
		 35 50.677976288897156 40 57.655586231532958 56 57.655586231532958 60 50.677976288897156
		 70 52.69925132694717 74 53.158438582900075 79 52.472970772234092 83 52.564773302042035
		 86 52.69925132694717 90 50.677976288897156 105 52.69925132694717 112 52.829357238459693
		 114 52.69925132694717 124 50.677976288897156;
	setAttr -s 24 ".kit[11:23]"  1 1 18 1 18 18 18 1 
		1 1 18 18 1;
	setAttr -s 24 ".kot[11:23]"  1 1 18 1 18 18 18 1 
		18 1 18 18 1;
	setAttr -s 24 ".kix[11:23]"  1 1 1 1 1 1 0.79010161827120329 1 1 1 1 
		0.22637555120459521 1;
	setAttr -s 24 ".kiy[11:23]"  0 0 0 0 0 0 0.61297588272722903 0 0 0 0 
		-0.97404009661656932 0;
	setAttr -s 24 ".kox[11:23]"  1 1 1 1 1 1 0.7901016182712034 1 1 1 1 
		0.22637555120459518 1;
	setAttr -s 24 ".koy[11:23]"  0 0 0 0 0 0 0.61297588272722903 0 0 0 0 
		-0.97404009661656932 0;
createNode animCurveTL -n "RightHand_Control_translateY";
	rename -uid "43EBE580-0949-4663-0902-E0B7252FCC1F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  0 15.767231135209656 5 15.767231135209656
		 10 15.767231135209656 12 11.936034040658081 16 19.858533023478987 18 15.767231135209656
		 20 11.749219891787405 24 19.652027935054051 26 15.767231135209656 30 15.767231135209656
		 35 15.767231135209656 40 28.340358122072264 56 28.340358122072264 60 15.767231135209656
		 70 46.073630144649762 74 44.893716210109012 79 46.219542756244721 83 45.603719180304687
		 86 46.073630144649762 90 15.767231135209656 105 81.563980752518063 112 89.782167254172705
		 114 52.824507865187265 124 15.174344323524679;
	setAttr -s 24 ".kit[11:23]"  1 1 18 1 18 18 18 1 
		1 1 18 18 1;
	setAttr -s 24 ".kot[11:23]"  1 1 18 1 18 18 18 1 
		18 1 18 18 1;
	setAttr -s 24 ".kix[11:23]"  1 1 1 1 1 1 1 1 1 1 1 0.0067015596020463799 
		1;
	setAttr -s 24 ".kiy[11:23]"  0 0 0 0 0 0 0 0 0 0 0 -0.99997754429732078 
		0;
	setAttr -s 24 ".kox[11:23]"  1 1 1 1 1 1 1 1 1 1 1 0.0067015596020463799 
		1;
	setAttr -s 24 ".koy[11:23]"  0 0 0 0 0 0 0 0 0 0 0 -0.99997754429732089 
		0;
createNode animCurveTL -n "RightHand_Control_translateZ";
	rename -uid "008F5F67-2344-9067-35A4-2AA4CB36D552";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  0 21.096401822016219 5 21.096401822016219
		 10 21.096401822016219 12 24.67549166000812 16 18.73437514815565 18 21.096401822016219
		 20 25.236340863353995 24 18.664240807903507 26 21.096401822016219 30 21.096401822016219
		 35 21.096401822016219 40 13.749680799050502 56 13.749680799050502 60 21.096401822016219
		 70 23.824324576645417 74 34.077657764118165 79 19.068300847768437 83 28.977626279140566
		 86 23.824324576645417 90 21.096401822016219 105 8.2212189305317089 112 19.708187748777
		 114 35.856538678096754 124 28.255688095052697;
	setAttr -s 24 ".kit[11:23]"  1 1 18 1 18 18 18 1 
		1 1 18 18 1;
	setAttr -s 24 ".kot[11:23]"  1 1 18 1 18 18 18 1 
		18 1 18 18 1;
	setAttr -s 24 ".kix[11:23]"  1 1 0.057804322745682188 1 1 1 1 1 1 1 
		0.013568342364129779 1 1;
	setAttr -s 24 ".kiy[11:23]"  0 0 0.99832793223064387 0 0 0 0 0 0 0 0.99990794580575759 
		0 0;
	setAttr -s 24 ".kox[11:23]"  1 1 0.057804322745682188 1 1 1 1 1 0.050672580570747874 
		1 0.013568342364129779 1 1;
	setAttr -s 24 ".koy[11:23]"  0 0 0.99832793223064376 0 0 0 0 0 -0.99871531958726911 
		0 0.99990794580575759 0 0;
createNode animCurveTL -n "RightFinders_Control_translateX";
	rename -uid "84D69FCC-A140-107D-4513-1D94959062E6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 0 5 0 10 0 15 0 22 0 26 0 30 0 35 0 40 0
		 45 0 52 0 56 0 60 0 70 0 75 0 82 0 86 0 90 0 105 0 114 0 124 0;
	setAttr -s 21 ".kit[17:20]"  1 1 18 1;
	setAttr -s 21 ".kot[13:20]"  1 18 18 18 18 1 18 1;
	setAttr -s 21 ".kix[17:20]"  1 1 1 1;
	setAttr -s 21 ".kiy[17:20]"  0 0 0 0;
	setAttr -s 21 ".kox[13:20]"  1 1 1 1 1 1 1 1;
	setAttr -s 21 ".koy[13:20]"  0 0 0 0 0 0 0 0;
createNode animCurveTL -n "RightFinders_Control_translateY";
	rename -uid "C3889FD1-AA4D-2B13-864E-F2A8B4B7C465";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 0 5 0 10 0 15 0 22 0 26 0 30 0 35 0 40 0
		 45 0 52 0 56 0 60 0 70 0 75 0 82 0 86 0 90 0 105 0 114 0 124 0;
	setAttr -s 21 ".kit[17:20]"  1 1 18 1;
	setAttr -s 21 ".kot[13:20]"  1 18 18 18 18 1 18 1;
	setAttr -s 21 ".kix[17:20]"  1 1 1 1;
	setAttr -s 21 ".kiy[17:20]"  0 0 0 0;
	setAttr -s 21 ".kox[13:20]"  1 1 1 1 1 1 1 1;
	setAttr -s 21 ".koy[13:20]"  0 0 0 0 0 0 0 0;
createNode animCurveTL -n "RightFinders_Control_translateZ";
	rename -uid "331986CB-D847-4388-7AB0-AFA5FE8FB577";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 0 5 0 10 0 15 0 22 0 26 0 30 0 35 0 40 0
		 45 0 52 0 56 0 60 0 70 0 75 0 82 0 86 0 90 0 105 0 114 0 124 0;
	setAttr -s 21 ".kit[17:20]"  1 1 18 1;
	setAttr -s 21 ".kot[13:20]"  1 18 18 18 18 1 18 1;
	setAttr -s 21 ".kix[17:20]"  1 1 1 1;
	setAttr -s 21 ".kiy[17:20]"  0 0 0 0;
	setAttr -s 21 ".kox[13:20]"  1 1 1 1 1 1 1 1;
	setAttr -s 21 ".koy[13:20]"  0 0 0 0 0 0 0 0;
createNode animCurveTL -n "RightShoulder_Control_translateX";
	rename -uid "7FAEF233-C94C-A12D-0952-7FAAB77AF703";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 0 5 0 10 0 15 0 22 0 26 0 30 0 35 0 40 0
		 45 0 52 0 56 0 60 0 70 0 75 0 82 0 86 0 90 0 105 0 114 0 124 0;
	setAttr -s 21 ".kit[17:20]"  1 1 18 1;
	setAttr -s 21 ".kot[13:20]"  1 18 18 18 18 1 18 1;
	setAttr -s 21 ".kix[17:20]"  1 1 1 1;
	setAttr -s 21 ".kiy[17:20]"  0 0 0 0;
	setAttr -s 21 ".kox[13:20]"  1 1 1 1 1 1 1 1;
	setAttr -s 21 ".koy[13:20]"  0 0 0 0 0 0 0 0;
createNode animCurveTL -n "RightShoulder_Control_translateY";
	rename -uid "71C700F1-E24B-1978-C325-BAB703FD359D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 0 5 0 10 0 15 0 22 0 26 0 30 0 35 0 40 0
		 45 0 52 0 56 0 60 0 70 0 75 0 82 0 86 0 90 0 105 0 114 0 124 0;
	setAttr -s 21 ".kit[17:20]"  1 1 18 1;
	setAttr -s 21 ".kot[13:20]"  1 18 18 18 18 1 18 1;
	setAttr -s 21 ".kix[17:20]"  1 1 1 1;
	setAttr -s 21 ".kiy[17:20]"  0 0 0 0;
	setAttr -s 21 ".kox[13:20]"  1 1 1 1 1 1 1 1;
	setAttr -s 21 ".koy[13:20]"  0 0 0 0 0 0 0 0;
createNode animCurveTL -n "RightShoulder_Control_translateZ";
	rename -uid "368FD4FA-BA48-DC12-D9AF-E4AD09F42B25";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 0 5 0 10 0 15 0 22 0 26 0 30 0 35 0 40 0
		 45 0 52 0 56 0 60 0 70 0 75 0 82 0 86 0 90 0 105 0 114 0 124 0;
	setAttr -s 21 ".kit[17:20]"  1 1 18 1;
	setAttr -s 21 ".kot[13:20]"  1 18 18 18 18 1 18 1;
	setAttr -s 21 ".kix[17:20]"  1 1 1 1;
	setAttr -s 21 ".kiy[17:20]"  0 0 0 0;
	setAttr -s 21 ".kox[13:20]"  1 1 1 1 1 1 1 1;
	setAttr -s 21 ".koy[13:20]"  0 0 0 0 0 0 0 0;
createNode animCurveTL -n "RightUpperArm_Control_translateX";
	rename -uid "40011E8F-7042-2D15-C685-6CA58BB3901A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 0 10 0 15 0 22 0 26 0 30 0;
createNode animCurveTL -n "RightUpperArm_Control_translateY";
	rename -uid "A45EE940-594E-C834-8D2B-DF90FCBE893E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 0 10 0 15 0 22 0 26 0 30 0;
createNode animCurveTL -n "RightUpperArm_Control_translateZ";
	rename -uid "97B29C3C-F342-2D4E-4BFF-1FBA306FE842";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 0 10 0 15 0 22 0 26 0 30 0;
createNode animCurveTU -n "LeftHand_Control_visibility";
	rename -uid "CFB9B9AC-004A-5EED-438E-0FAE0D6CEBA7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 5 1 10 1 18 1 26 1 30 1 35 1 40 1 56 1
		 60 1 70 1 86 1 90 1 105 1 114 1 124 1;
	setAttr -s 16 ".kit[3:15]"  9 18 18 18 1 1 18 18 
		1 1 1 9 1;
	setAttr -s 16 ".kot[3:15]"  5 18 18 18 5 5 18 1 
		1 18 1 5 1;
	setAttr -s 16 ".kix[7:15]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[7:15]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[10:15]"  1 1 1 1 0 1;
	setAttr -s 16 ".koy[10:15]"  0 0 0 0 0 0;
createNode animCurveTA -n "LeftHand_Control_rotateX";
	rename -uid "C7F4514B-7841-5CC6-8C28-E1BEE93AD1F8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 -49.748596685890043 5 -49.748596685890043
		 10 -49.748596685890043 18 -49.748596685890043 26 -49.748596685890043 30 -49.748596685890043
		 35 -49.748596685890043 40 -7.922044962693036 56 -7.922044962693036 60 -49.748596685890043
		 70 208.49300330536855 77 214.01930284267638 86 208.49300330536855 90 -49.748596685890043
		 105 94.976439365143406 114 94.976439365143406 124 -49.748596685890043;
	setAttr -s 17 ".kit[7:16]"  1 1 18 18 18 1 1 1 
		18 1;
	setAttr -s 17 ".kot[7:16]"  1 1 18 1 18 1 18 1 
		18 1;
	setAttr -s 17 ".kix[7:16]"  1 1 1 0.70991281060312939 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[7:16]"  0 0 0 0.70428957208066423 0 0 0 0 0 0;
	setAttr -s 17 ".kox[7:16]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[7:16]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LeftHand_Control_rotateY";
	rename -uid "21B69B15-7C47-F43D-C451-9FA5BD79363C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 -39.121046077297585 5 -39.121046077297585
		 10 -39.121046077297585 18 -39.121046077297585 26 -39.121046077297585 30 -39.121046077297585
		 35 -39.121046077297585 40 -62.683754109388374 56 -62.683754109388374 60 -39.121046077297585
		 70 56.351718285979082 77 61.071621969821429 86 56.351718285979082 90 -39.121046077297585
		 105 -27.002297487341881 114 -27.002297487341881 124 -39.121046077297585;
	setAttr -s 17 ".kit[7:16]"  1 1 18 18 18 1 1 1 
		18 1;
	setAttr -s 17 ".kot[7:16]"  1 1 18 1 18 1 18 1 
		18 1;
	setAttr -s 17 ".kix[7:16]"  1 1 0.27032440622436094 0.76294922158269407 
		1 1 1 1 1 1;
	setAttr -s 17 ".kiy[7:16]"  0 0 0.9627692950024147 0.64645841729098186 
		0 0 0 0 0 0;
	setAttr -s 17 ".kox[7:16]"  1 1 0.27032440622436099 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[7:16]"  0 0 0.96276929500241459 0 0 0 0 0 0 0;
createNode animCurveTA -n "LeftHand_Control_rotateZ";
	rename -uid "D7F07BC7-6A46-9E64-62B2-CCAC07189AFC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 -131.66908887094525 5 -131.66908887094525
		 10 -131.66908887094525 18 -131.66908887094525 26 -131.66908887094525 30 -131.66908887094525
		 35 -131.66908887094525 40 -110.97400613124 56 -110.97400613124 60 -131.66908887094525
		 70 -238.24714924772834 77 -228.98192355564228 86 -238.24714924772834 90 -131.66908887094525
		 105 -249.28317166029257 114 -249.28317166029257 124 -131.66908887094525;
	setAttr -s 17 ".kit[7:16]"  1 1 18 18 18 1 1 1 
		18 1;
	setAttr -s 17 ".kot[7:16]"  1 1 18 1 18 1 18 1 
		18 1;
	setAttr -s 17 ".kix[7:16]"  1 1 0.25399295434849628 1 1 0.41319012196229565 
		1 0.41319012196229565 1 1;
	setAttr -s 17 ".kiy[7:16]"  0 0 -0.96720606860240632 0 0 -0.91064478426705053 
		0 -0.91064478426705053 0 0;
	setAttr -s 17 ".kox[7:16]"  1 1 0.25399295434849628 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[7:16]"  0 0 -0.96720606860240621 0 0 0 0 0 0 0;
createNode animCurveTU -n "LeftHand_Control_scaleX";
	rename -uid "334B9CE0-744D-DDE8-3C2A-D881CD90A85E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 5 1 10 1 18 1 26 1 30 1 35 1 40 1 56 1
		 60 1 70 1 86 1 90 1 105 1 114 1 124 1;
	setAttr -s 16 ".kit[7:15]"  1 1 18 18 1 1 1 18 
		1;
	setAttr -s 16 ".kot[7:15]"  1 1 18 1 1 18 1 18 
		1;
	setAttr -s 16 ".kix[7:15]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[7:15]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[7:15]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".koy[7:15]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LeftHand_Control_scaleY";
	rename -uid "6A7C6932-9A4A-55E5-7DBB-FC860F91DF4C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 5 1 10 1 18 1 26 1 30 1 35 1 40 1 56 1
		 60 1 70 1 86 1 90 1 105 1 114 1 124 1;
	setAttr -s 16 ".kit[7:15]"  1 1 18 18 1 1 1 18 
		1;
	setAttr -s 16 ".kot[7:15]"  1 1 18 1 1 18 1 18 
		1;
	setAttr -s 16 ".kix[7:15]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[7:15]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[7:15]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".koy[7:15]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LeftHand_Control_scaleZ";
	rename -uid "EE303A97-B44B-9981-BD21-1498748096E6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 5 1 10 1 18 1 26 1 30 1 35 1 40 1 56 1
		 60 1 70 1 86 1 90 1 105 1 114 1 124 1;
	setAttr -s 16 ".kit[7:15]"  1 1 18 18 1 1 1 18 
		1;
	setAttr -s 16 ".kot[7:15]"  1 1 18 1 1 18 1 18 
		1;
	setAttr -s 16 ".kix[7:15]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[7:15]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[7:15]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".koy[7:15]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "Head_Control_visibility";
	rename -uid "DECA8991-0A4E-D2BE-DB50-198DD5875DBD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 1 5 1 10 1 26 1 30 1 35 1 40 1 56 1 60 1
		 70 1 86 1 90 1 105 1 114 1 124 1;
	setAttr -s 15 ".kit[7:14]"  1 18 18 18 1 1 9 1;
	setAttr -s 15 ".kot[7:14]"  1 18 1 18 18 1 5 1;
	setAttr -s 15 ".kix[7:14]"  1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[7:14]"  0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[7:14]"  1 1 1 1 1 1 0 1;
	setAttr -s 15 ".koy[7:14]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Head_Control_rotateX";
	rename -uid "51796712-894F-D398-9014-BDB42E1714DB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  0 0 5 0 10 -17.407046943141982 14 -20.813208772474717
		 18 -15.708748892198342 22 -22.289502563902488 26 -17.21970164182709 30 0 35 0 40 -11.253400874241686
		 44 -7.154570166326967 50 -11.138773918437542 56 -11.253400874241686 60 0 70 19.242671008695453
		 74 39.494317702773223 78 44.59877758304961 82 38.018023911345445 86 43.087824833420861
		 105 43.087824833420861 114 43.087824833420861 124 0;
	setAttr -s 22 ".kit[12:21]"  1 18 18 18 18 18 18 1 
		18 1;
	setAttr -s 22 ".kot[12:21]"  1 18 1 18 18 18 18 1 
		18 1;
	setAttr -s 22 ".kix[12:21]"  0.71826150005662215 0.73870730771307447 
		0.64599032680166357 0.60164214050920761 1 1 1 1 1 1;
	setAttr -s 22 ".kiy[12:21]"  -0.69577325152409464 0.67402634483475588 
		0.7633455951786714 0.79876575713002307 0 0 0 0 0 0;
	setAttr -s 22 ".kox[12:21]"  0.71826150005662215 0.73870730771307436 
		0.71826150005662215 0.6016421405092075 1 1 1 1 1 1;
	setAttr -s 22 ".koy[12:21]"  -0.69577325152409464 0.67402634483475576 
		-0.69577325152409464 0.79876575713002307 0 0 0 0 0 0;
createNode animCurveTA -n "Head_Control_rotateY";
	rename -uid "9B5ECD5C-1B48-CC2A-0E6C-1FBC4DA1177A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 0 5 0 10 2.4848083448933731e-17 14 -1.3654595287959792
		 18 -1.4788365379131672 22 4.6025141309346065 26 0.062659147366654552 30 0 35 0 40 18.279756345108765
		 44 12.573572271599419 50 22.46705534121558 56 18.279756345108765 60 0 70 2.4848083448933731e-17
		 74 -1.3654595287959792 78 -1.4788365379131672 82 4.6025141309346065 86 0.062659147366654552
		 90 0 105 0.062659147366654552 114 0.062659147366654552 124 0;
	setAttr -s 23 ".kit[12:22]"  1 18 18 18 18 18 18 1 
		1 18 1;
	setAttr -s 23 ".kot[12:22]"  1 18 1 18 18 18 18 18 
		1 18 1;
	setAttr -s 23 ".kix[12:22]"  1 1 1 0.99936626637793358 1 1 0.99980630762783085 
		1 0.99980630762783085 1 0.99980630762783085;
	setAttr -s 23 ".kiy[12:22]"  0 0 0 -0.035595865291195877 0 0 -0.01968113887973651 
		0 -0.01968113887973651 0 -0.01968113887973651;
	setAttr -s 23 ".kox[12:22]"  1 1 1 0.99936626637793358 1 1 0.99980630762783085 
		1 0.99980630762783085 1 0.99980630762783085;
	setAttr -s 23 ".koy[12:22]"  0 0 0 -0.035595865291195884 0 0 -0.019681138879736514 
		0 -0.019681138879736514 0 -0.019681138879736514;
createNode animCurveTA -n "Head_Control_rotateZ";
	rename -uid "BA538599-C549-004E-317D-10A499C204FC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 0.84821139040032134 5 0.84821139040032134
		 10 0.84821139040032578 14 1.6999721482092414 18 3.6220447716883233 22 0.1078207003385485
		 26 0.81909953298352878 30 0.84821139040032134 35 0.84821139040032134 40 0.80437762695124648
		 44 4.3202299952867333 50 -0.29159140506901171 56 0.80437762695124648 60 0.84821139040032134
		 70 0.84821139040032578 74 1.6999721482092414 78 3.6220447716883233 82 0.1078207003385485
		 86 0.81909953298352878 90 0.84821139040032134 105 0.81909953298352878 114 0.81909953298352878
		 124 0;
	setAttr -s 23 ".kit[12:22]"  1 18 18 18 18 18 18 1 
		1 18 1;
	setAttr -s 23 ".kot[12:22]"  1 18 1 18 18 18 18 18 
		1 18 1;
	setAttr -s 23 ".kix[12:22]"  1 1 1 0.98961700135381625 1 1 0.99995818016289006 
		1 0.99995818016289006 1 0.99995818016289006;
	setAttr -s 23 ".kiy[12:22]"  0 0 0 0.14372957465838671 0 0 0.0091453772651123675 
		0 0.0091453772651123675 0 0.0091453772651123675;
	setAttr -s 23 ".kox[12:22]"  1 1 1 0.98961700135381636 1 1 0.99995818016289006 
		1 0.99995818016289006 1 0.99995818016289006;
	setAttr -s 23 ".koy[12:22]"  0 0 0 0.14372957465838676 0 0 0.0091453772651123675 
		0 0.0091453772651123675 0 0.0091453772651123675;
createNode animCurveTU -n "Head_Control_scaleX";
	rename -uid "15789E17-1E44-6453-B477-8C9E216BC885";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 1 5 1 10 1 26 1 30 1 35 1 40 1 56 1 60 1
		 70 1 86 1 90 1 105 1 114 1 124 1;
	setAttr -s 15 ".kit[7:14]"  1 18 18 18 1 1 18 1;
	setAttr -s 15 ".kot[7:14]"  1 18 1 18 18 1 18 1;
	setAttr -s 15 ".kix[7:14]"  1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[7:14]"  0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[7:14]"  1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[7:14]"  0 0 0 0 0 0 0 0;
createNode animCurveTU -n "Head_Control_scaleY";
	rename -uid "4D77B449-6949-416C-BEAE-1EB11BBC0EB0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 1 5 1 10 1 26 1 30 1 35 1 40 1 56 1 60 1
		 70 1 86 1 90 1 105 1 114 1 124 1;
	setAttr -s 15 ".kit[7:14]"  1 18 18 18 1 1 18 1;
	setAttr -s 15 ".kot[7:14]"  1 18 1 18 18 1 18 1;
	setAttr -s 15 ".kix[7:14]"  1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[7:14]"  0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[7:14]"  1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[7:14]"  0 0 0 0 0 0 0 0;
createNode animCurveTU -n "Head_Control_scaleZ";
	rename -uid "06885C34-7A47-FC79-B856-0AB8C4A770EC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 1 5 1 10 1 26 1 30 1 35 1 40 1 56 1 60 1
		 70 1 86 1 90 1 105 1 114 1 124 1;
	setAttr -s 15 ".kit[7:14]"  1 18 18 18 1 1 18 1;
	setAttr -s 15 ".kot[7:14]"  1 18 1 18 18 1 18 1;
	setAttr -s 15 ".kix[7:14]"  1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[7:14]"  0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[7:14]"  1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[7:14]"  0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RightArmTwist_Control_visibility";
	rename -uid "1E216838-9645-6097-C86E-7CA12EEFE74A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 1 5 1 10 1 15 1 22 1 26 1 30 1 35 1 40 1
		 45 1 52 1 56 1 60 1 70 1 75 1 82 1 86 1 90 1 105 1 114 1 124 1;
	setAttr -s 21 ".kit[17:20]"  1 1 9 1;
	setAttr -s 21 ".kot[13:20]"  1 18 18 18 18 1 5 1;
	setAttr -s 21 ".kix[17:20]"  1 1 1 1;
	setAttr -s 21 ".kiy[17:20]"  0 0 0 0;
	setAttr -s 21 ".kox[13:20]"  1 1 1 1 1 1 0 1;
	setAttr -s 21 ".koy[13:20]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RightArmTwist_Control_rotateX";
	rename -uid "7F241D05-6046-013E-AD2E-B1A5D073A031";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 0 5 0 10 0 15 0 22 0 26 0 30 0 35 0 40 0
		 45 0 52 0 56 0 60 0 70 0 75 0 82 0 86 0 90 0 105 0 114 0 124 0;
	setAttr -s 21 ".kit[17:20]"  1 1 18 1;
	setAttr -s 21 ".kot[13:20]"  1 18 18 18 18 1 18 1;
	setAttr -s 21 ".kix[17:20]"  1 1 1 1;
	setAttr -s 21 ".kiy[17:20]"  0 0 0 0;
	setAttr -s 21 ".kox[13:20]"  1 1 1 1 1 1 1 1;
	setAttr -s 21 ".koy[13:20]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RightArmTwist_Control_rotateY";
	rename -uid "DEC01178-424E-BBDD-178E-7C8D38665EA6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 0 5 0 10 0 15 0 22 0 26 0 30 0 35 0 40 0
		 45 0 52 0 56 0 60 0 70 0 75 0 82 0 86 0 90 0 105 0 114 0 124 0;
	setAttr -s 21 ".kit[17:20]"  1 1 18 1;
	setAttr -s 21 ".kot[13:20]"  1 18 18 18 18 1 18 1;
	setAttr -s 21 ".kix[17:20]"  1 1 1 1;
	setAttr -s 21 ".kiy[17:20]"  0 0 0 0;
	setAttr -s 21 ".kox[13:20]"  1 1 1 1 1 1 1 1;
	setAttr -s 21 ".koy[13:20]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RightArmTwist_Control_rotateZ";
	rename -uid "93574063-B74F-E6B7-A3F6-7E8A1EFB2E44";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 0 5 0 10 0 15 0 22 0 26 0 30 0 35 0 40 0
		 45 0 52 0 56 0 60 0 70 0 75 0 82 0 86 0 90 0 105 0 114 0 124 0;
	setAttr -s 21 ".kit[17:20]"  1 1 18 1;
	setAttr -s 21 ".kot[13:20]"  1 18 18 18 18 1 18 1;
	setAttr -s 21 ".kix[17:20]"  1 1 1 1;
	setAttr -s 21 ".kiy[17:20]"  0 0 0 0;
	setAttr -s 21 ".kox[13:20]"  1 1 1 1 1 1 1 1;
	setAttr -s 21 ".koy[13:20]"  0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RightArmTwist_Control_scaleX";
	rename -uid "32716BC1-4140-30EA-02DB-C3BAA83EADCF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 1 5 1 10 1 15 1 22 1 26 1 30 1 35 1 40 1
		 45 1 52 1 56 1 60 1 70 1 75 1 82 1 86 1 90 1 105 1 114 1 124 1;
	setAttr -s 21 ".kit[17:20]"  1 1 18 1;
	setAttr -s 21 ".kot[13:20]"  1 18 18 18 18 1 18 1;
	setAttr -s 21 ".kix[17:20]"  1 1 1 1;
	setAttr -s 21 ".kiy[17:20]"  0 0 0 0;
	setAttr -s 21 ".kox[13:20]"  1 1 1 1 1 1 1 1;
	setAttr -s 21 ".koy[13:20]"  0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RightArmTwist_Control_scaleY";
	rename -uid "56C6853B-3947-CD6D-7775-E6AB50BC672F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 1 5 1 10 1 15 1 22 1 26 1 30 1 35 1 40 1
		 45 1 52 1 56 1 60 1 70 1 75 1 82 1 86 1 90 1 105 1 114 1 124 1;
	setAttr -s 21 ".kit[17:20]"  1 1 18 1;
	setAttr -s 21 ".kot[13:20]"  1 18 18 18 18 1 18 1;
	setAttr -s 21 ".kix[17:20]"  1 1 1 1;
	setAttr -s 21 ".kiy[17:20]"  0 0 0 0;
	setAttr -s 21 ".kox[13:20]"  1 1 1 1 1 1 1 1;
	setAttr -s 21 ".koy[13:20]"  0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RightArmTwist_Control_scaleZ";
	rename -uid "A0ACB72B-C74F-0FDD-28FC-FFA796B3E7C5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 1 5 1 10 1 15 1 22 1 26 1 30 1 35 1 40 1
		 45 1 52 1 56 1 60 1 70 1 75 1 82 1 86 1 90 1 105 1 114 1 124 1;
	setAttr -s 21 ".kit[17:20]"  1 1 18 1;
	setAttr -s 21 ".kot[13:20]"  1 18 18 18 18 1 18 1;
	setAttr -s 21 ".kix[17:20]"  1 1 1 1;
	setAttr -s 21 ".kiy[17:20]"  0 0 0 0;
	setAttr -s 21 ".kox[13:20]"  1 1 1 1 1 1 1 1;
	setAttr -s 21 ".koy[13:20]"  0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RightElbow_Control_visibility";
	rename -uid "C5614E41-954B-6440-842F-E98031A9AEF1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 1 5 1 10 1 15 1 22 1 26 1 30 1 35 1 40 1
		 45 1 52 1 56 1 60 1 70 1 86 1 90 1 105 1 114 1 124 1;
	setAttr -s 19 ".kit[14:18]"  1 1 9 9 1;
	setAttr -s 19 ".kot[13:18]"  1 1 18 5 5 1;
	setAttr -s 19 ".kix[14:18]"  1 1 1 1 1;
	setAttr -s 19 ".kiy[14:18]"  0 0 0 0 0;
	setAttr -s 19 ".kox[13:18]"  1 1 1 0 0 1;
	setAttr -s 19 ".koy[13:18]"  0 0 0 0 0 0;
createNode animCurveTA -n "RightElbow_Control_rotateX";
	rename -uid "9C27010D-2F4C-14DB-2B37-11B3B37D6430";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 5 0 10 0 15 0 22 0 26 0 30 0 35 0 40 0
		 45 0 52 0 56 0 60 0 70 0 86 0 90 0 105 0 114 0 124 0;
	setAttr -s 19 ".kit[14:18]"  1 1 18 18 1;
	setAttr -s 19 ".kot[13:18]"  1 1 18 18 18 1;
	setAttr -s 19 ".kix[14:18]"  1 1 1 1 1;
	setAttr -s 19 ".kiy[14:18]"  0 0 0 0 0;
	setAttr -s 19 ".kox[13:18]"  1 1 1 1 1 1;
	setAttr -s 19 ".koy[13:18]"  0 0 0 0 0 0;
createNode animCurveTA -n "RightElbow_Control_rotateY";
	rename -uid "D4A44B5E-7F40-7D4D-0C8D-A5850F98CB4E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 5 0 10 0 15 0 22 0 26 0 30 0 35 0 40 0
		 45 0 52 0 56 0 60 0 70 0 86 0 90 0 105 0 114 0 124 0;
	setAttr -s 19 ".kit[14:18]"  1 1 18 18 1;
	setAttr -s 19 ".kot[13:18]"  1 1 18 18 18 1;
	setAttr -s 19 ".kix[14:18]"  1 1 1 1 1;
	setAttr -s 19 ".kiy[14:18]"  0 0 0 0 0;
	setAttr -s 19 ".kox[13:18]"  1 1 1 1 1 1;
	setAttr -s 19 ".koy[13:18]"  0 0 0 0 0 0;
createNode animCurveTA -n "RightElbow_Control_rotateZ";
	rename -uid "1B0B2F0B-684B-22D3-9EB6-10B94356FFEA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 5 0 10 0 15 0 22 0 26 0 30 0 35 0 40 0
		 45 0 52 0 56 0 60 0 70 0 86 0 90 0 105 0 114 0 124 0;
	setAttr -s 19 ".kit[14:18]"  1 1 18 18 1;
	setAttr -s 19 ".kot[13:18]"  1 1 18 18 18 1;
	setAttr -s 19 ".kix[14:18]"  1 1 1 1 1;
	setAttr -s 19 ".kiy[14:18]"  0 0 0 0 0;
	setAttr -s 19 ".kox[13:18]"  1 1 1 1 1 1;
	setAttr -s 19 ".koy[13:18]"  0 0 0 0 0 0;
createNode animCurveTU -n "RightElbow_Control_scaleX";
	rename -uid "97CD71FA-9640-1226-D0E4-79B22BE08B04";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 1 5 1 10 1 15 1 22 1 26 1 30 1 35 1 40 1
		 45 1 52 1 56 1 60 1 70 1 86 1 90 1 105 1 114 1 124 1;
	setAttr -s 19 ".kit[14:18]"  1 1 18 18 1;
	setAttr -s 19 ".kot[13:18]"  1 1 18 18 18 1;
	setAttr -s 19 ".kix[14:18]"  1 1 1 1 1;
	setAttr -s 19 ".kiy[14:18]"  0 0 0 0 0;
	setAttr -s 19 ".kox[13:18]"  1 1 1 1 1 1;
	setAttr -s 19 ".koy[13:18]"  0 0 0 0 0 0;
createNode animCurveTU -n "RightElbow_Control_scaleY";
	rename -uid "D6179417-424A-24A7-7D74-78B28405239B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 1 5 1 10 1 15 1 22 1 26 1 30 1 35 1 40 1
		 45 1 52 1 56 1 60 1 70 1 86 1 90 1 105 1 114 1 124 1;
	setAttr -s 19 ".kit[14:18]"  1 1 18 18 1;
	setAttr -s 19 ".kot[13:18]"  1 1 18 18 18 1;
	setAttr -s 19 ".kix[14:18]"  1 1 1 1 1;
	setAttr -s 19 ".kiy[14:18]"  0 0 0 0 0;
	setAttr -s 19 ".kox[13:18]"  1 1 1 1 1 1;
	setAttr -s 19 ".koy[13:18]"  0 0 0 0 0 0;
createNode animCurveTU -n "RightElbow_Control_scaleZ";
	rename -uid "2669F1CF-0A41-CB1A-7D34-0DB45CACB701";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 1 5 1 10 1 15 1 22 1 26 1 30 1 35 1 40 1
		 45 1 52 1 56 1 60 1 70 1 86 1 90 1 105 1 114 1 124 1;
	setAttr -s 19 ".kit[14:18]"  1 1 18 18 1;
	setAttr -s 19 ".kot[13:18]"  1 1 18 18 18 1;
	setAttr -s 19 ".kix[14:18]"  1 1 1 1 1;
	setAttr -s 19 ".kiy[14:18]"  0 0 0 0 0;
	setAttr -s 19 ".kox[13:18]"  1 1 1 1 1 1;
	setAttr -s 19 ".koy[13:18]"  0 0 0 0 0 0;
createNode animCurveTU -n "RightFinders_Control_visibility";
	rename -uid "22E628A4-C34E-3836-BE7B-26A0419D12AF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 1 5 1 10 1 15 1 22 1 26 1 30 1 35 1 40 1
		 45 1 52 1 56 1 60 1 70 1 75 1 82 1 86 1 90 1 105 1 114 1 124 1;
	setAttr -s 21 ".kit[17:20]"  1 1 9 1;
	setAttr -s 21 ".kot[13:20]"  1 18 18 18 18 1 5 1;
	setAttr -s 21 ".kix[17:20]"  1 1 1 1;
	setAttr -s 21 ".kiy[17:20]"  0 0 0 0;
	setAttr -s 21 ".kox[13:20]"  1 1 1 1 1 1 0 1;
	setAttr -s 21 ".koy[13:20]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RightFinders_Control_rotateX";
	rename -uid "EF13F1BD-8045-4892-C260-EB81700EAA42";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 0 5 0 10 0 15 0 22 0 26 0 30 0 35 0 40 0
		 45 0 52 0 56 0 60 0 70 0 75 0 82 0 86 0 90 0 105 0 114 0 124 0;
	setAttr -s 21 ".kit[17:20]"  1 1 18 1;
	setAttr -s 21 ".kot[13:20]"  1 18 18 18 18 1 18 1;
	setAttr -s 21 ".kix[17:20]"  1 1 1 1;
	setAttr -s 21 ".kiy[17:20]"  0 0 0 0;
	setAttr -s 21 ".kox[13:20]"  1 1 1 1 1 1 1 1;
	setAttr -s 21 ".koy[13:20]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RightFinders_Control_rotateY";
	rename -uid "DD4A45DA-6C41-5EAA-67D3-E4BE6B4BDBB0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 0 5 0 10 0 15 0 22 0 26 0 30 0 35 0 40 0
		 45 0 52 0 56 0 60 0 70 0 75 0 82 0 86 0 90 0 105 0 114 0 124 0;
	setAttr -s 21 ".kit[17:20]"  1 1 18 1;
	setAttr -s 21 ".kot[13:20]"  1 18 18 18 18 1 18 1;
	setAttr -s 21 ".kix[17:20]"  1 1 1 1;
	setAttr -s 21 ".kiy[17:20]"  0 0 0 0;
	setAttr -s 21 ".kox[13:20]"  1 1 1 1 1 1 1 1;
	setAttr -s 21 ".koy[13:20]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RightFinders_Control_rotateZ";
	rename -uid "F6F01073-E240-BCA5-2756-6BBF994134C1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 0 5 0 10 0 15 0 22 0 26 0 30 0 35 0 40 0
		 45 0 52 0 56 0 60 0 70 0 75 0 82 0 86 0 90 0 105 0 114 0 124 0;
	setAttr -s 21 ".kit[17:20]"  1 1 18 1;
	setAttr -s 21 ".kot[13:20]"  1 18 18 18 18 1 18 1;
	setAttr -s 21 ".kix[17:20]"  1 1 1 1;
	setAttr -s 21 ".kiy[17:20]"  0 0 0 0;
	setAttr -s 21 ".kox[13:20]"  1 1 1 1 1 1 1 1;
	setAttr -s 21 ".koy[13:20]"  0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RightFinders_Control_scaleX";
	rename -uid "0F687160-6041-0E8B-0D83-4FB8E8A5CBB3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 1 5 1 10 1 15 1 22 1 26 1 30 1 35 1 40 1
		 45 1 52 1 56 1 60 1 70 1 75 1 82 1 86 1 90 1 105 1 114 1 124 1;
	setAttr -s 21 ".kit[17:20]"  1 1 18 1;
	setAttr -s 21 ".kot[13:20]"  1 18 18 18 18 1 18 1;
	setAttr -s 21 ".kix[17:20]"  1 1 1 1;
	setAttr -s 21 ".kiy[17:20]"  0 0 0 0;
	setAttr -s 21 ".kox[13:20]"  1 1 1 1 1 1 1 1;
	setAttr -s 21 ".koy[13:20]"  0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RightFinders_Control_scaleY";
	rename -uid "045E1EAB-9F4D-9621-B511-28AC210393B6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 1 5 1 10 1 15 1 22 1 26 1 30 1 35 1 40 1
		 45 1 52 1 56 1 60 1 70 1 75 1 82 1 86 1 90 1 105 1 114 1 124 1;
	setAttr -s 21 ".kit[17:20]"  1 1 18 1;
	setAttr -s 21 ".kot[13:20]"  1 18 18 18 18 1 18 1;
	setAttr -s 21 ".kix[17:20]"  1 1 1 1;
	setAttr -s 21 ".kiy[17:20]"  0 0 0 0;
	setAttr -s 21 ".kox[13:20]"  1 1 1 1 1 1 1 1;
	setAttr -s 21 ".koy[13:20]"  0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RightFinders_Control_scaleZ";
	rename -uid "91E4882C-3F4B-83DA-924E-87B1F5335CAB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 1 5 1 10 1 15 1 22 1 26 1 30 1 35 1 40 1
		 45 1 52 1 56 1 60 1 70 1 75 1 82 1 86 1 90 1 105 1 114 1 124 1;
	setAttr -s 21 ".kit[17:20]"  1 1 18 1;
	setAttr -s 21 ".kot[13:20]"  1 18 18 18 18 1 18 1;
	setAttr -s 21 ".kix[17:20]"  1 1 1 1;
	setAttr -s 21 ".kiy[17:20]"  0 0 0 0;
	setAttr -s 21 ".kox[13:20]"  1 1 1 1 1 1 1 1;
	setAttr -s 21 ".koy[13:20]"  0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LeftUpperArm_Control_visibility";
	rename -uid "6980ED57-0444-196E-1FDE-88B13CC6E37F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1 5 1 10 1 15 1 22 1 26 1 30 1;
createNode animCurveTA -n "LeftUpperArm_Control_rotateX";
	rename -uid "269331B6-7146-0AF2-10DF-65BE46B5509A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 0 10 0 15 0 22 0 26 0 30 0;
createNode animCurveTA -n "LeftUpperArm_Control_rotateY";
	rename -uid "402465D3-7D4E-DAF1-045C-F09E6EC03AEB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 0 10 0 15 0 22 0 26 0 30 0;
createNode animCurveTA -n "LeftUpperArm_Control_rotateZ";
	rename -uid "8A36502F-D645-92D6-5A7A-10A6E2BFBAF1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 0 10 0 15 0 22 0 26 0 30 0;
createNode animCurveTU -n "LeftUpperArm_Control_scaleX";
	rename -uid "819044FF-884A-DC27-F250-6E8F71BF4F12";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1 5 1 10 1 15 1 22 1 26 1 30 1;
createNode animCurveTU -n "LeftUpperArm_Control_scaleY";
	rename -uid "65D767BF-C446-0A4A-77FB-429A02F12058";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1 5 1 10 1 15 1 22 1 26 1 30 1;
createNode animCurveTU -n "LeftUpperArm_Control_scaleZ";
	rename -uid "4E704BD9-374D-DB3C-0D2D-7DA2FFFC9D08";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1 5 1 10 1 15 1 22 1 26 1 30 1;
createNode animCurveTU -n "RightHand_Control_visibility";
	rename -uid "86AF4858-AE4A-62B9-820A-04ACC32423CE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 5 1 10 1 18 1 26 1 30 1 35 1 40 1 56 1
		 60 1 70 1 86 1 90 1 105 1 114 1 124 1;
	setAttr -s 16 ".kit[3:15]"  9 18 18 18 1 1 18 18 
		1 1 1 9 1;
	setAttr -s 16 ".kot[3:15]"  5 18 18 18 5 5 18 1 
		1 18 1 5 1;
	setAttr -s 16 ".kix[7:15]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[7:15]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[10:15]"  1 1 1 1 0 1;
	setAttr -s 16 ".koy[10:15]"  0 0 0 0 0 0;
createNode animCurveTA -n "RightHand_Control_rotateX";
	rename -uid "DA7A9D5B-494B-0450-03C3-32974A7F6EE8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 96.394798559304604 5 96.394798559304604
		 10 96.394798559304604 18 96.394798559304604 26 96.394798559304604 30 96.394798559304604
		 35 96.394798559304604 40 -187.56721693602424 44 -120.50604491034591 47 -157.53390638837331
		 52 -210.35852146812692 56 -193.99785527776459 60 96.394798559304604 70 215.81502789233738
		 86 215.81502789233738 90 96.394798559304604 105 146.04573806286422 114 146.04573806286422
		 124 96.394798559304604;
	setAttr -s 19 ".kit[7:18]"  1 18 18 18 1 18 1 1 
		1 1 18 1;
	setAttr -s 19 ".kot[7:18]"  1 18 18 18 1 18 1 1 
		18 1 18 1;
	setAttr -s 19 ".kix[7:18]"  1 1 0.20791022947447932 1 1 0.081285725501021047 
		1 1 1 1 1 1;
	setAttr -s 19 ".kiy[7:18]"  0 0 -0.97814791135076773 0 0 0.99669084014541476 
		0 0 0 0 0 0;
	setAttr -s 19 ".kox[7:18]"  1 1 0.20791022947447932 1 1 0.081285725501021047 
		1 1 1 1 1 1;
	setAttr -s 19 ".koy[7:18]"  0 0 -0.97814791135076773 0 0 0.99669084014541476 
		0 0 0 0 0 0;
createNode animCurveTA -n "RightHand_Control_rotateY";
	rename -uid "CF8F8643-3E4F-373F-B23F-139255F5F028";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 54.683622456471149 5 54.683622456471149
		 10 54.683622456471149 18 54.683622456471149 26 54.683622456471149 30 54.683622456471149
		 35 54.683622456471149 40 81.41227378681576 44 80.458344939511534 47 79.067723673956522
		 52 71.513953709612295 56 82.073302435908701 60 54.683622456471149 70 24.811509829145127
		 86 24.811509829145127 90 54.683622456471149 105 32.837837058339083 114 32.837837058339083
		 124 54.683622456471149;
	setAttr -s 19 ".kit[7:18]"  1 18 18 18 1 18 1 1 
		1 1 18 1;
	setAttr -s 19 ".kot[7:18]"  1 18 18 18 1 18 1 1 
		18 1 18 1;
	setAttr -s 19 ".kix[7:18]"  1 0.99030124445076517 0.9056060187977818 
		1 1 0.50409411192217013 1 1 1 1 1 1;
	setAttr -s 19 ".kiy[7:18]"  0 -0.13893683902862411 -0.42411995793316759 
		0 0 -0.86364872854963348 0 0 0 0 0 0;
	setAttr -s 19 ".kox[7:18]"  1 0.99030124445076517 0.90560601879778169 
		1 1 0.50409411192217024 1 1 1 1 1 1;
	setAttr -s 19 ".koy[7:18]"  0 -0.13893683902862411 -0.42411995793316759 
		0 0 -0.86364872854963359 0 0 0 0 0 0;
createNode animCurveTA -n "RightHand_Control_rotateZ";
	rename -uid "DF011827-714C-EB69-2DCC-EB861ECEB4B4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 148.40100726789998 5 148.40100726789998
		 10 148.40100726789998 18 148.40100726789998 26 148.40100726789998 30 148.40100726789998
		 35 148.40100726789998 40 -95.246772300998984 44 -24.514388418695273 47 -68.271894140936922
		 52 -126.56345888699654 56 -99.846564985532794 60 148.40100726789998 70 215.73492318697993
		 86 215.73492318697993 90 148.40100726789998 105 195.42024459218237 114 195.42024459218237
		 124 148.40100726789998;
	setAttr -s 19 ".kit[7:18]"  1 18 18 18 1 18 1 1 
		1 1 18 1;
	setAttr -s 19 ".kot[7:18]"  1 18 18 18 1 18 1 1 
		18 1 18 1;
	setAttr -s 19 ".kix[7:18]"  1 1 0.183957201643831 1 1 0.11736653644127502 
		1 1 1 1 1 1;
	setAttr -s 19 ".kiy[7:18]"  0 0 -0.98293425414082036 0 0 0.99308866478465996 
		0 0 0 0 0 0;
	setAttr -s 19 ".kox[7:18]"  1 1 0.183957201643831 1 1 0.11736653644127502 
		1 1 1 1 1 1;
	setAttr -s 19 ".koy[7:18]"  0 0 -0.98293425414082047 0 0 0.99308866478466007 
		0 0 0 0 0 0;
createNode animCurveTU -n "RightHand_Control_scaleX";
	rename -uid "7CB9CA02-EB45-E941-6E6C-3489F3609D2B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 5 1 10 1 18 1 26 1 30 1 35 1 40 1 56 1
		 60 1 70 1 86 1 90 1 105 1 114 1 124 1;
	setAttr -s 16 ".kit[7:15]"  1 1 18 18 1 1 1 18 
		1;
	setAttr -s 16 ".kot[7:15]"  1 1 18 1 1 18 1 18 
		1;
	setAttr -s 16 ".kix[7:15]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[7:15]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[7:15]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".koy[7:15]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RightHand_Control_scaleY";
	rename -uid "B6413DE2-9E47-92C2-51BD-4D9C153F56B3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 5 1 10 1 18 1 26 1 30 1 35 1 40 1 56 1
		 60 1 70 1 86 1 90 1 105 1 114 1 124 1;
	setAttr -s 16 ".kit[7:15]"  1 1 18 18 1 1 1 18 
		1;
	setAttr -s 16 ".kot[7:15]"  1 1 18 1 1 18 1 18 
		1;
	setAttr -s 16 ".kix[7:15]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[7:15]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[7:15]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".koy[7:15]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RightHand_Control_scaleZ";
	rename -uid "E7953ABB-1340-1789-5268-7FA6AB0B0EAF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 5 1 10 1 18 1 26 1 30 1 35 1 40 1 56 1
		 60 1 70 1 86 1 90 1 105 1 114 1 124 1;
	setAttr -s 16 ".kit[7:15]"  1 1 18 18 1 1 1 18 
		1;
	setAttr -s 16 ".kot[7:15]"  1 1 18 1 1 18 1 18 
		1;
	setAttr -s 16 ".kix[7:15]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[7:15]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[7:15]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".koy[7:15]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LeftShoulder_Control_visibility";
	rename -uid "9C65D30F-C54D-994C-DE5E-A0B9E99C2963";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 1 5 1 10 1 15 1 22 1 26 1 30 1 35 1 40 1
		 45 1 52 1 56 1 60 1 70 1 75 1 82 1 86 1 90 1 105 1 114 1 124 1;
	setAttr -s 21 ".kit[17:20]"  1 1 9 1;
	setAttr -s 21 ".kot[13:20]"  1 18 18 18 18 1 5 1;
	setAttr -s 21 ".kix[17:20]"  1 1 1 1;
	setAttr -s 21 ".kiy[17:20]"  0 0 0 0;
	setAttr -s 21 ".kox[13:20]"  1 1 1 1 1 1 0 1;
	setAttr -s 21 ".koy[13:20]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LeftShoulder_Control_rotateX";
	rename -uid "3C51842A-644D-C9EA-62E4-98934280450C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 0 5 0 10 0 15 0 22 0 26 0 30 0 35 0 40 0
		 45 0 52 0 56 0 60 0 70 0 75 0 82 0 86 0 90 0 105 0 114 0 124 0;
	setAttr -s 21 ".kit[17:20]"  1 1 18 1;
	setAttr -s 21 ".kot[13:20]"  1 18 18 18 18 1 18 1;
	setAttr -s 21 ".kix[17:20]"  1 1 1 1;
	setAttr -s 21 ".kiy[17:20]"  0 0 0 0;
	setAttr -s 21 ".kox[13:20]"  1 1 1 1 1 1 1 1;
	setAttr -s 21 ".koy[13:20]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LeftShoulder_Control_rotateY";
	rename -uid "75EAA9F7-4F4E-36FF-090B-3BB6FE1544CD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 0 5 0 10 0 15 0 22 0 26 0 30 0 35 0 40 0
		 45 0 52 0 56 0 60 0 70 0 75 0 82 0 86 0 90 0 105 0 114 0 124 0;
	setAttr -s 21 ".kit[17:20]"  1 1 18 1;
	setAttr -s 21 ".kot[13:20]"  1 18 18 18 18 1 18 1;
	setAttr -s 21 ".kix[17:20]"  1 1 1 1;
	setAttr -s 21 ".kiy[17:20]"  0 0 0 0;
	setAttr -s 21 ".kox[13:20]"  1 1 1 1 1 1 1 1;
	setAttr -s 21 ".koy[13:20]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LeftShoulder_Control_rotateZ";
	rename -uid "41E6723F-0D46-5CBE-39C3-259ADC0BA09B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 0 5 0 10 0 15 0 22 0 26 0 30 0 35 0 40 0
		 45 0 52 0 56 0 60 0 70 0 75 0 82 0 86 0 90 0 105 0 114 0 124 0;
	setAttr -s 21 ".kit[17:20]"  1 1 18 1;
	setAttr -s 21 ".kot[13:20]"  1 18 18 18 18 1 18 1;
	setAttr -s 21 ".kix[17:20]"  1 1 1 1;
	setAttr -s 21 ".kiy[17:20]"  0 0 0 0;
	setAttr -s 21 ".kox[13:20]"  1 1 1 1 1 1 1 1;
	setAttr -s 21 ".koy[13:20]"  0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LeftShoulder_Control_scaleX";
	rename -uid "E6D77E33-D244-BD46-9680-E7A3F6AAF539";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 1 5 1 10 1 15 1 22 1 26 1 30 1 35 1 40 1
		 45 1 52 1 56 1 60 1 70 1 75 1 82 1 86 1 90 1 105 1 114 1 124 1;
	setAttr -s 21 ".kit[17:20]"  1 1 18 1;
	setAttr -s 21 ".kot[13:20]"  1 18 18 18 18 1 18 1;
	setAttr -s 21 ".kix[17:20]"  1 1 1 1;
	setAttr -s 21 ".kiy[17:20]"  0 0 0 0;
	setAttr -s 21 ".kox[13:20]"  1 1 1 1 1 1 1 1;
	setAttr -s 21 ".koy[13:20]"  0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LeftShoulder_Control_scaleY";
	rename -uid "FAFD25F1-7D4A-998F-8109-3A9B26EF817B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 1 5 1 10 1 15 1 22 1 26 1 30 1 35 1 40 1
		 45 1 52 1 56 1 60 1 70 1 75 1 82 1 86 1 90 1 105 1 114 1 124 1;
	setAttr -s 21 ".kit[17:20]"  1 1 18 1;
	setAttr -s 21 ".kot[13:20]"  1 18 18 18 18 1 18 1;
	setAttr -s 21 ".kix[17:20]"  1 1 1 1;
	setAttr -s 21 ".kiy[17:20]"  0 0 0 0;
	setAttr -s 21 ".kox[13:20]"  1 1 1 1 1 1 1 1;
	setAttr -s 21 ".koy[13:20]"  0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LeftShoulder_Control_scaleZ";
	rename -uid "31F5048C-F345-A408-E186-618A2FE81DF5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 1 5 1 10 1 15 1 22 1 26 1 30 1 35 1 40 1
		 45 1 52 1 56 1 60 1 70 1 75 1 82 1 86 1 90 1 105 1 114 1 124 1;
	setAttr -s 21 ".kit[17:20]"  1 1 18 1;
	setAttr -s 21 ".kot[13:20]"  1 18 18 18 18 1 18 1;
	setAttr -s 21 ".kix[17:20]"  1 1 1 1;
	setAttr -s 21 ".kiy[17:20]"  0 0 0 0;
	setAttr -s 21 ".kox[13:20]"  1 1 1 1 1 1 1 1;
	setAttr -s 21 ".koy[13:20]"  0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LeftElbow_Control_visibility";
	rename -uid "35A71DE1-BD4D-8B22-C937-BE9C3615BEC8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 1 5 1 10 1 15 1 22 1 26 1 30 1 35 1 40 1
		 56 1 60 1 70 1 86 1 90 1 105 1 114 1 124 1;
	setAttr -s 17 ".kit[8:16]"  1 1 18 18 1 1 1 9 
		1;
	setAttr -s 17 ".kot[8:16]"  5 5 18 1 1 18 1 5 
		1;
	setAttr -s 17 ".kix[8:16]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[8:16]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[11:16]"  1 1 1 1 0 1;
	setAttr -s 17 ".koy[11:16]"  0 0 0 0 0 0;
createNode animCurveTA -n "LeftElbow_Control_rotateX";
	rename -uid "F01E4FDF-ED42-A96F-F68E-2D89DEB182AB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 5 0 10 0 15 0 22 0 26 0 30 0 35 0 40 0
		 56 0 60 0 70 0 86 0 90 0 105 0 114 0 124 0;
	setAttr -s 17 ".kit[8:16]"  1 1 18 18 1 1 1 18 
		1;
	setAttr -s 17 ".kot[8:16]"  1 1 18 1 1 18 1 18 
		1;
	setAttr -s 17 ".kix[8:16]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[8:16]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[8:16]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[8:16]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LeftElbow_Control_rotateY";
	rename -uid "86617A39-FB42-3148-4585-74822362F2D7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 5 0 10 0 15 0 22 0 26 0 30 0 35 0 40 0
		 56 0 60 0 70 0 86 0 90 0 105 0 114 0 124 0;
	setAttr -s 17 ".kit[8:16]"  1 1 18 18 1 1 1 18 
		1;
	setAttr -s 17 ".kot[8:16]"  1 1 18 1 1 18 1 18 
		1;
	setAttr -s 17 ".kix[8:16]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[8:16]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[8:16]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[8:16]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LeftElbow_Control_rotateZ";
	rename -uid "51FA196A-3845-BC7A-D6C7-7D9639BF1BD1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 5 0 10 0 15 0 22 0 26 0 30 0 35 0 40 0
		 56 0 60 0 70 0 86 0 90 0 105 0 114 0 124 0;
	setAttr -s 17 ".kit[8:16]"  1 1 18 18 1 1 1 18 
		1;
	setAttr -s 17 ".kot[8:16]"  1 1 18 1 1 18 1 18 
		1;
	setAttr -s 17 ".kix[8:16]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[8:16]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[8:16]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[8:16]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LeftElbow_Control_scaleX";
	rename -uid "69BDC857-324B-C47E-3DDB-38BA716AEAB2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 1 5 1 10 1 15 1 22 1 26 1 30 1 35 1 40 1
		 56 1 60 1 70 1 86 1 90 1 105 1 114 1 124 1;
	setAttr -s 17 ".kit[8:16]"  1 1 18 18 1 1 1 18 
		1;
	setAttr -s 17 ".kot[8:16]"  1 1 18 1 1 18 1 18 
		1;
	setAttr -s 17 ".kix[8:16]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[8:16]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[8:16]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[8:16]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LeftElbow_Control_scaleY";
	rename -uid "CE29AE7C-6541-BC7F-FF26-9F8BC933E989";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 1 5 1 10 1 15 1 22 1 26 1 30 1 35 1 40 1
		 56 1 60 1 70 1 86 1 90 1 105 1 114 1 124 1;
	setAttr -s 17 ".kit[8:16]"  1 1 18 18 1 1 1 18 
		1;
	setAttr -s 17 ".kot[8:16]"  1 1 18 1 1 18 1 18 
		1;
	setAttr -s 17 ".kix[8:16]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[8:16]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[8:16]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[8:16]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LeftElbow_Control_scaleZ";
	rename -uid "DA5B6E53-6E4E-F806-BF96-718FED88D7C5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 1 5 1 10 1 15 1 22 1 26 1 30 1 35 1 40 1
		 56 1 60 1 70 1 86 1 90 1 105 1 114 1 124 1;
	setAttr -s 17 ".kit[8:16]"  1 1 18 18 1 1 1 18 
		1;
	setAttr -s 17 ".kot[8:16]"  1 1 18 1 1 18 1 18 
		1;
	setAttr -s 17 ".kix[8:16]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[8:16]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[8:16]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[8:16]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LeftArmTwist_Control_visibility";
	rename -uid "DD6310B5-8B4D-7738-2648-2B911C639FC4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 1 5 1 10 1 15 1 22 1 26 1 30 1 35 1 40 1
		 56 1 60 1 70 1 75 1 82 1 86 1 90 1 105 1 114 1 124 1;
	setAttr -s 19 ".kit[9:18]"  1 18 18 18 18 18 1 1 
		9 1;
	setAttr -s 19 ".kot[9:18]"  1 18 1 18 18 18 18 1 
		5 1;
	setAttr -s 19 ".kix[9:18]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 19 ".kiy[9:18]"  0 0 0 0 0 0 0 0 0 0;
	setAttr -s 19 ".kox[9:18]"  1 1 1 1 1 1 1 1 0 1;
	setAttr -s 19 ".koy[9:18]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LeftArmTwist_Control_rotateX";
	rename -uid "CB77B01A-5544-7E78-6EA4-E8B1CDCC9352";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 5 0 10 0 15 0 22 0 26 0 30 0 35 0 40 0
		 56 0 60 0 70 0 75 0 82 0 86 0 90 0 105 0 114 0 124 0;
	setAttr -s 19 ".kit[9:18]"  1 18 18 18 18 18 1 1 
		18 1;
	setAttr -s 19 ".kot[9:18]"  1 18 1 18 18 18 18 1 
		18 1;
	setAttr -s 19 ".kix[9:18]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 19 ".kiy[9:18]"  0 0 0 0 0 0 0 0 0 0;
	setAttr -s 19 ".kox[9:18]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 19 ".koy[9:18]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LeftArmTwist_Control_rotateY";
	rename -uid "E3DF7860-9C44-D1F5-6014-18A57279DEE5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 5 0 10 0 15 0 22 0 26 0 30 0 35 0 40 0
		 56 0 60 0 70 0 75 0 82 0 86 0 90 0 105 0 114 0 124 0;
	setAttr -s 19 ".kit[9:18]"  1 18 18 18 18 18 1 1 
		18 1;
	setAttr -s 19 ".kot[9:18]"  1 18 1 18 18 18 18 1 
		18 1;
	setAttr -s 19 ".kix[9:18]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 19 ".kiy[9:18]"  0 0 0 0 0 0 0 0 0 0;
	setAttr -s 19 ".kox[9:18]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 19 ".koy[9:18]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LeftArmTwist_Control_rotateZ";
	rename -uid "5D39FFAF-7844-FFF5-B614-A2B8F51DE119";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 5 0 10 0 15 0 22 0 26 0 30 0 35 0 40 0
		 56 0 60 0 70 0 75 0 82 0 86 0 90 0 105 0 114 0 124 0;
	setAttr -s 19 ".kit[9:18]"  1 18 18 18 18 18 1 1 
		18 1;
	setAttr -s 19 ".kot[9:18]"  1 18 1 18 18 18 18 1 
		18 1;
	setAttr -s 19 ".kix[9:18]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 19 ".kiy[9:18]"  0 0 0 0 0 0 0 0 0 0;
	setAttr -s 19 ".kox[9:18]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 19 ".koy[9:18]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LeftArmTwist_Control_scaleX";
	rename -uid "236593FC-8C4E-095A-23CB-1587FC00322B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 1 5 1 10 1 15 1 22 1 26 1 30 1 35 1 40 1
		 56 1 60 1 70 1 75 1 82 1 86 1 90 1 105 1 114 1 124 1;
	setAttr -s 19 ".kit[9:18]"  1 18 18 18 18 18 1 1 
		18 1;
	setAttr -s 19 ".kot[9:18]"  1 18 1 18 18 18 18 1 
		18 1;
	setAttr -s 19 ".kix[9:18]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 19 ".kiy[9:18]"  0 0 0 0 0 0 0 0 0 0;
	setAttr -s 19 ".kox[9:18]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 19 ".koy[9:18]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LeftArmTwist_Control_scaleY";
	rename -uid "44083144-8F46-AA8D-64B0-87ABC69701C4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 1 5 1 10 1 15 1 22 1 26 1 30 1 35 1 40 1
		 56 1 60 1 70 1 75 1 82 1 86 1 90 1 105 1 114 1 124 1;
	setAttr -s 19 ".kit[9:18]"  1 18 18 18 18 18 1 1 
		18 1;
	setAttr -s 19 ".kot[9:18]"  1 18 1 18 18 18 18 1 
		18 1;
	setAttr -s 19 ".kix[9:18]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 19 ".kiy[9:18]"  0 0 0 0 0 0 0 0 0 0;
	setAttr -s 19 ".kox[9:18]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 19 ".koy[9:18]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LeftArmTwist_Control_scaleZ";
	rename -uid "B4169FF4-2146-A5B6-CDFA-8498F83311A1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 1 5 1 10 1 15 1 22 1 26 1 30 1 35 1 40 1
		 56 1 60 1 70 1 75 1 82 1 86 1 90 1 105 1 114 1 124 1;
	setAttr -s 19 ".kit[9:18]"  1 18 18 18 18 18 1 1 
		18 1;
	setAttr -s 19 ".kot[9:18]"  1 18 1 18 18 18 18 1 
		18 1;
	setAttr -s 19 ".kix[9:18]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 19 ".kiy[9:18]"  0 0 0 0 0 0 0 0 0 0;
	setAttr -s 19 ".kox[9:18]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 19 ".koy[9:18]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LeftKnee_Control_visibility";
	rename -uid "958BAD18-344C-14BB-2989-DAA52670C29F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 1 5 1 10 1 15 1 22 1 26 1 30 1 35 1 40 1
		 45 1 52 1 56 1 60 1 70 1 75 1 82 1 86 1 90 1 105 1 114 1 124 1;
	setAttr -s 21 ".kit[17:20]"  1 1 9 1;
	setAttr -s 21 ".kot[13:20]"  1 18 18 18 18 1 5 1;
	setAttr -s 21 ".kix[17:20]"  1 1 1 1;
	setAttr -s 21 ".kiy[17:20]"  0 0 0 0;
	setAttr -s 21 ".kox[13:20]"  1 1 1 1 1 1 0 1;
	setAttr -s 21 ".koy[13:20]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LeftKnee_Control_rotateX";
	rename -uid "6F103C5A-7845-8D70-5703-43B9DE57E6DF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 0 5 0 10 0 15 0 22 0 26 0 30 0 35 0 40 0
		 45 0 52 0 56 0 60 0 70 0 75 0 82 0 86 0 90 0 105 0 114 0 124 0;
	setAttr -s 21 ".kit[17:20]"  1 1 18 1;
	setAttr -s 21 ".kot[13:20]"  1 18 18 18 18 1 18 1;
	setAttr -s 21 ".kix[17:20]"  1 1 1 1;
	setAttr -s 21 ".kiy[17:20]"  0 0 0 0;
	setAttr -s 21 ".kox[13:20]"  1 1 1 1 1 1 1 1;
	setAttr -s 21 ".koy[13:20]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LeftKnee_Control_rotateY";
	rename -uid "AF999CFE-2F47-ECDC-C81B-11AF18944474";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 0 5 0 10 0 15 0 22 0 26 0 30 0 35 0 40 0
		 45 0 52 0 56 0 60 0 70 0 75 0 82 0 86 0 90 0 105 0 114 0 124 0;
	setAttr -s 21 ".kit[17:20]"  1 1 18 1;
	setAttr -s 21 ".kot[13:20]"  1 18 18 18 18 1 18 1;
	setAttr -s 21 ".kix[17:20]"  1 1 1 1;
	setAttr -s 21 ".kiy[17:20]"  0 0 0 0;
	setAttr -s 21 ".kox[13:20]"  1 1 1 1 1 1 1 1;
	setAttr -s 21 ".koy[13:20]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LeftKnee_Control_rotateZ";
	rename -uid "08955E4E-3645-9692-56EF-AA8F6F559A5C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 0 5 0 10 0 15 0 22 0 26 0 30 0 35 0 40 0
		 45 0 52 0 56 0 60 0 70 0 75 0 82 0 86 0 90 0 105 0 114 0 124 0;
	setAttr -s 21 ".kit[17:20]"  1 1 18 1;
	setAttr -s 21 ".kot[13:20]"  1 18 18 18 18 1 18 1;
	setAttr -s 21 ".kix[17:20]"  1 1 1 1;
	setAttr -s 21 ".kiy[17:20]"  0 0 0 0;
	setAttr -s 21 ".kox[13:20]"  1 1 1 1 1 1 1 1;
	setAttr -s 21 ".koy[13:20]"  0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LeftKnee_Control_scaleX";
	rename -uid "8EEC312E-CA47-016A-B83E-F4AFB362A184";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 1 5 1 10 1 15 1 22 1 26 1 30 1 35 1 40 1
		 45 1 52 1 56 1 60 1 70 1 75 1 82 1 86 1 90 1 105 1 114 1 124 1;
	setAttr -s 21 ".kit[17:20]"  1 1 18 1;
	setAttr -s 21 ".kot[13:20]"  1 18 18 18 18 1 18 1;
	setAttr -s 21 ".kix[17:20]"  1 1 1 1;
	setAttr -s 21 ".kiy[17:20]"  0 0 0 0;
	setAttr -s 21 ".kox[13:20]"  1 1 1 1 1 1 1 1;
	setAttr -s 21 ".koy[13:20]"  0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LeftKnee_Control_scaleY";
	rename -uid "B23E43B1-EF4F-AFA6-A3C5-CEA2D6D8FE8E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 1 5 1 10 1 15 1 22 1 26 1 30 1 35 1 40 1
		 45 1 52 1 56 1 60 1 70 1 75 1 82 1 86 1 90 1 105 1 114 1 124 1;
	setAttr -s 21 ".kit[17:20]"  1 1 18 1;
	setAttr -s 21 ".kot[13:20]"  1 18 18 18 18 1 18 1;
	setAttr -s 21 ".kix[17:20]"  1 1 1 1;
	setAttr -s 21 ".kiy[17:20]"  0 0 0 0;
	setAttr -s 21 ".kox[13:20]"  1 1 1 1 1 1 1 1;
	setAttr -s 21 ".koy[13:20]"  0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LeftKnee_Control_scaleZ";
	rename -uid "99783A57-FA48-6BA9-F7A2-96A1A7C9D79F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 1 5 1 10 1 15 1 22 1 26 1 30 1 35 1 40 1
		 45 1 52 1 56 1 60 1 70 1 75 1 82 1 86 1 90 1 105 1 114 1 124 1;
	setAttr -s 21 ".kit[17:20]"  1 1 18 1;
	setAttr -s 21 ".kot[13:20]"  1 18 18 18 18 1 18 1;
	setAttr -s 21 ".kix[17:20]"  1 1 1 1;
	setAttr -s 21 ".kiy[17:20]"  0 0 0 0;
	setAttr -s 21 ".kox[13:20]"  1 1 1 1 1 1 1 1;
	setAttr -s 21 ".koy[13:20]"  0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RightFoot_Control_visibility";
	rename -uid "AD163B95-A74F-814F-C258-09A8209C6D28";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 1 5 1 10 1 16 1 26 1 30 1 35 1 40 1 46 1
		 56 1 60 1 70 1 76 1 86 1 90 1 105 1 124 1;
	setAttr -s 17 ".kit[14:16]"  1 1 1;
	setAttr -s 17 ".kot[11:16]"  1 18 18 18 1 1;
	setAttr -s 17 ".kix[14:16]"  1 1 1;
	setAttr -s 17 ".kiy[14:16]"  0 0 0;
	setAttr -s 17 ".kox[11:16]"  1 1 1 1 1 1;
	setAttr -s 17 ".koy[11:16]"  0 0 0 0 0 0;
createNode animCurveTA -n "RightFoot_Control_rotateX";
	rename -uid "31AA40D6-7E4D-DE9C-F219-BC99D2C5C83C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 0 5 92.96589967199111 10 96.196003079118825
		 13 78.032391000569135 16 -35.88035555306211 18 0 20 33.186811239113503 22 110.65887107832442
		 26 96.196003079118825 30 0 35 92.96589967199111 40 96.196003079118825 43 78.032391000569135
		 46 -35.88035555306211 48 0 50 33.186811239113503 52 110.65887107832442 56 96.196003079118825
		 60 -35.88035555306211 70 96.196003079118825 73 78.032391000569135 76 -35.88035555306211
		 78 0 80 33.186811239113503 82 110.65887107832442 86 96.196003079118825 90 0 105 119.77500989965701
		 112 155.92337871370538 117 298.5748606737713 121 360 124 475.55792011558844;
	setAttr -s 32 ".kit[26:31]"  1 1 18 18 18 1;
	setAttr -s 32 ".kot[19:31]"  1 18 18 18 18 18 18 18 
		1 18 18 18 1;
	setAttr -s 32 ".kix[26:31]"  1 0.21494344632096654 0.15820541494936158 
		0.10470487193908849 0.094004856799430381 0.21494344632096654;
	setAttr -s 32 ".kiy[26:31]"  0 -0.97662649712347338 0.98740622171459913 
		0.99450333825091763 0.99557173869998872 -0.97662649712347338;
	setAttr -s 32 ".kox[19:31]"  1 0.13031367253095655 1 0.13695815844279122 
		0.085975375960976652 1 0.21494344632096657 1 0.21494344632096657 0.15820541494936161 
		0.10470487193908849 0.094004856799430381 0.21494344632096657;
	setAttr -s 32 ".koy[19:31]"  0 -0.99147281695036638 0 0.99057683338343794 
		0.99629726223069026 0 -0.97662649712347338 0 -0.97662649712347338 0.98740622171459935 
		0.99450333825091775 0.99557173869998883 -0.97662649712347338;
createNode animCurveTA -n "RightFoot_Control_rotateY";
	rename -uid "D1854F29-FB42-AED4-D577-6BA13C423CC0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 0 5 -17.185349986606937 10 -24.439999895607567
		 13 -17.994850718115153 16 -4.254028518065847 18 0 20 -0.87759129423833571 26 -24.439999895607567
		 30 0 35 -17.185349986606937 40 -24.439999895607567 43 -17.994850718115153 46 -4.254028518065847
		 48 0 50 -0.87759129423833571 56 -24.439999895607567 60 -4.254028518065847 70 -24.439999895607567
		 73 -17.994850718115153 76 -4.254028518065847 78 0 80 -0.87759129423833571 86 -24.439999895607567
		 90 0 105 -8.3357952956188708 121 0 124 -24.439999895607567;
	setAttr -s 27 ".kit[23:26]"  1 1 18 1;
	setAttr -s 27 ".kot[17:26]"  1 18 18 18 18 18 18 1 
		18 1;
	setAttr -s 27 ".kix[23:26]"  1 1 1 1;
	setAttr -s 27 ".kiy[23:26]"  0 0 0 0;
	setAttr -s 27 ".kox[17:26]"  1 0.57870446643071005 0.55277681646120591 
		1 0.87569517140663167 1 1 1 1 1;
	setAttr -s 27 ".koy[17:26]"  0 0.81553733239695858 0.83332934136691372 
		0 -0.48286433578709265 0 0 0 0 0;
createNode animCurveTA -n "RightFoot_Control_rotateZ";
	rename -uid "61ED0D84-6A4E-667F-1C67-3D9FD0A00BAB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 0 5 -23.632480505008385 10 -24.415697082876761
		 13 -0.42081044538262646 16 3.0714089881951745 18 0 20 5.0243239558606669 26 -24.415697082876761
		 30 0 35 -23.632480505008385 40 -24.415697082876761 43 -0.42081044538262646 46 3.0714089881951745
		 48 0 50 5.0243239558606669 56 -24.415697082876761 60 3.0714089881951745 70 -24.415697082876761
		 73 -0.42081044538262646 76 3.0714089881951745 78 0 80 5.0243239558606669 86 -24.415697082876761
		 90 0 105 -6.4386980071333637 121 0 124 -24.415697082876761;
	setAttr -s 27 ".kit[23:26]"  1 1 18 1;
	setAttr -s 27 ".kot[17:26]"  1 18 18 18 18 18 18 1 
		18 1;
	setAttr -s 27 ".kix[23:26]"  1 1 1 1;
	setAttr -s 27 ".kiy[23:26]"  0 0 0 0;
	setAttr -s 27 ".kox[17:26]"  1 0.56434748400122714 1 1 1 1 1 1 1 1;
	setAttr -s 27 ".koy[17:26]"  0 0.82553735063986333 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RightFoot_Control_scaleX";
	rename -uid "9494A289-5440-94C9-A164-5592EF05082F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 1 5 1 10 1 16 1 26 1 30 1 35 1 40 1 46 1
		 56 1 60 1 70 1 76 1 86 1 90 1 105 1 124 1;
	setAttr -s 17 ".kit[14:16]"  1 1 1;
	setAttr -s 17 ".kot[11:16]"  1 18 18 18 1 1;
	setAttr -s 17 ".kix[14:16]"  1 1 1;
	setAttr -s 17 ".kiy[14:16]"  0 0 0;
	setAttr -s 17 ".kox[11:16]"  1 1 1 1 1 1;
	setAttr -s 17 ".koy[11:16]"  0 0 0 0 0 0;
createNode animCurveTU -n "RightFoot_Control_scaleY";
	rename -uid "DBBC791E-8044-B512-A9DB-A384EB1ED71D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 1 5 1 10 1 16 1 26 1 30 1 35 1 40 1 46 1
		 56 1 60 1 70 1 76 1 86 1 90 1 105 1 124 1;
	setAttr -s 17 ".kit[14:16]"  1 1 1;
	setAttr -s 17 ".kot[11:16]"  1 18 18 18 1 1;
	setAttr -s 17 ".kix[14:16]"  1 1 1;
	setAttr -s 17 ".kiy[14:16]"  0 0 0;
	setAttr -s 17 ".kox[11:16]"  1 1 1 1 1 1;
	setAttr -s 17 ".koy[11:16]"  0 0 0 0 0 0;
createNode animCurveTU -n "RightFoot_Control_scaleZ";
	rename -uid "C0FEA8D1-E54E-21D8-DD64-59B9DF5DCC2D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 1 5 1 10 1 16 1 26 1 30 1 35 1 40 1 46 1
		 56 1 60 1 70 1 76 1 86 1 90 1 105 1 124 1;
	setAttr -s 17 ".kit[14:16]"  1 1 1;
	setAttr -s 17 ".kot[11:16]"  1 18 18 18 1 1;
	setAttr -s 17 ".kix[14:16]"  1 1 1;
	setAttr -s 17 ".kiy[14:16]"  0 0 0;
	setAttr -s 17 ".kox[11:16]"  1 1 1 1 1 1;
	setAttr -s 17 ".koy[11:16]"  0 0 0 0 0 0;
createNode animCurveTU -n "LeftToes_Control_visibility";
	rename -uid "82963853-394D-C580-1611-37A47C3887E1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 1 5 1 10 1 15 1 16 1 26 1 30 1 35 1 40 1
		 45 1 46 1 56 1 60 1 70 1 75 1 76 1 86 1 90 1 105 1 114 1 124 1;
	setAttr -s 21 ".kit[17:20]"  1 1 9 1;
	setAttr -s 21 ".kot[13:20]"  1 18 18 18 18 1 5 1;
	setAttr -s 21 ".kix[17:20]"  1 1 1 1;
	setAttr -s 21 ".kiy[17:20]"  0 0 0 0;
	setAttr -s 21 ".kox[13:20]"  1 1 1 1 1 1 0 1;
	setAttr -s 21 ".koy[13:20]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LeftToes_Control_rotateX";
	rename -uid "5ACFB7C3-6D43-D7D3-4753-E1BEF530F4CE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  0 0 5 42.317848650519402 10 0 13 -27.691759257920499
		 15 -24.521570787337929 16 0 21 55.983739873933779 24 -26.263915132120506 26 0 30 0
		 35 42.317848650519402 40 0 43 -27.691759257920499 45 -24.521570787337929 46 0 51 55.983739873933779
		 54 -26.263915132120506 56 0 60 -24.521570787337929 70 0 73 -27.691759257920499 75 -24.521570787337929
		 76 0 81 55.983739873933779 84 -26.263915132120506 86 0 90 0 105 0 114 0 124 0;
	setAttr -s 30 ".kit[26:29]"  1 1 18 1;
	setAttr -s 30 ".kot[19:29]"  1 18 18 18 18 18 18 18 
		1 18 1;
	setAttr -s 30 ".kix[26:29]"  1 1 1 1;
	setAttr -s 30 ".kiy[26:29]"  0 0 0 0;
	setAttr -s 30 ".kox[19:29]"  0.26318235366665682 1 0.44866881462037528 
		0.17517428236207386 1 1 1 1 1 1 1;
	setAttr -s 30 ".koy[19:29]"  -0.96474610583224374 0 0.89369810047193632 
		0.98453744001888133 0 0 0 0 0 0 0;
createNode animCurveTA -n "LeftToes_Control_rotateY";
	rename -uid "CB4AD19C-6747-32C3-6432-A0B96CAA6885";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 0 5 11.525725394007491 10 0 15 0 16 0
		 21 0 24 0 26 0 30 0 35 11.525725394007491 40 0 45 0 46 0 51 0 54 0 56 0 60 0 70 0
		 75 0 76 0 81 0 84 0 86 0 90 0 105 0 114 0 124 0;
	setAttr -s 27 ".kit[23:26]"  1 1 18 1;
	setAttr -s 27 ".kot[17:26]"  1 18 18 18 18 18 18 1 
		18 1;
	setAttr -s 27 ".kix[23:26]"  1 1 1 1;
	setAttr -s 27 ".kiy[23:26]"  0 0 0 0;
	setAttr -s 27 ".kox[17:26]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 27 ".koy[17:26]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LeftToes_Control_rotateZ";
	rename -uid "D3D2B4C8-0C4B-B887-DEF2-539DF9932836";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 0 5 1.0672264843461554 10 0 15 0 16 0
		 21 0 24 0 26 0 30 0 35 1.0672264843461554 40 0 45 0 46 0 51 0 54 0 56 0 60 0 70 0
		 75 0 76 0 81 0 84 0 86 0 90 0 105 0 114 0 124 0;
	setAttr -s 27 ".kit[23:26]"  1 1 18 1;
	setAttr -s 27 ".kot[17:26]"  1 18 18 18 18 18 18 1 
		18 1;
	setAttr -s 27 ".kix[23:26]"  1 1 1 1;
	setAttr -s 27 ".kiy[23:26]"  0 0 0 0;
	setAttr -s 27 ".kox[17:26]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 27 ".koy[17:26]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LeftToes_Control_scaleX";
	rename -uid "29DDAE09-C444-9CCE-AE05-F6A52A08CCAA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 1 5 1 10 1 15 1 16 1 26 1 30 1 35 1 40 1
		 45 1 46 1 56 1 60 1 70 1 75 1 76 1 86 1 90 1 105 1 114 1 124 1;
	setAttr -s 21 ".kit[17:20]"  1 1 18 1;
	setAttr -s 21 ".kot[13:20]"  1 18 18 18 18 1 18 1;
	setAttr -s 21 ".kix[17:20]"  1 1 1 1;
	setAttr -s 21 ".kiy[17:20]"  0 0 0 0;
	setAttr -s 21 ".kox[13:20]"  1 1 1 1 1 1 1 1;
	setAttr -s 21 ".koy[13:20]"  0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LeftToes_Control_scaleY";
	rename -uid "ECF47A43-F844-8115-8CEC-84A35F4D7969";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 1 5 1 10 1 15 1 16 1 26 1 30 1 35 1 40 1
		 45 1 46 1 56 1 60 1 70 1 75 1 76 1 86 1 90 1 105 1 114 1 124 1;
	setAttr -s 21 ".kit[17:20]"  1 1 18 1;
	setAttr -s 21 ".kot[13:20]"  1 18 18 18 18 1 18 1;
	setAttr -s 21 ".kix[17:20]"  1 1 1 1;
	setAttr -s 21 ".kiy[17:20]"  0 0 0 0;
	setAttr -s 21 ".kox[13:20]"  1 1 1 1 1 1 1 1;
	setAttr -s 21 ".koy[13:20]"  0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LeftToes_Control_scaleZ";
	rename -uid "FD2569E8-3A4F-398F-E22F-A580E33257C7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 1 5 1 10 1 15 1 16 1 26 1 30 1 35 1 40 1
		 45 1 46 1 56 1 60 1 70 1 75 1 76 1 86 1 90 1 105 1 114 1 124 1;
	setAttr -s 21 ".kit[17:20]"  1 1 18 1;
	setAttr -s 21 ".kot[13:20]"  1 18 18 18 18 1 18 1;
	setAttr -s 21 ".kix[17:20]"  1 1 1 1;
	setAttr -s 21 ".kiy[17:20]"  0 0 0 0;
	setAttr -s 21 ".kox[13:20]"  1 1 1 1 1 1 1 1;
	setAttr -s 21 ".koy[13:20]"  0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RightHip_Control_visibility";
	rename -uid "F5CC33C1-A94A-81F9-97D4-36A7E929D359";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 1 5 1 10 1 15 1 22 1 26 1 30 1 35 1 40 1
		 45 1 52 1 56 1 60 1 70 1 75 1 82 1 86 1 90 1 105 1 114 1 124 1;
	setAttr -s 21 ".kit[17:20]"  1 1 9 1;
	setAttr -s 21 ".kot[13:20]"  1 18 18 18 18 1 5 1;
	setAttr -s 21 ".kix[17:20]"  1 1 1 1;
	setAttr -s 21 ".kiy[17:20]"  0 0 0 0;
	setAttr -s 21 ".kox[13:20]"  1 1 1 1 1 1 0 1;
	setAttr -s 21 ".koy[13:20]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RightHip_Control_rotateX";
	rename -uid "A0E394AA-804D-1FAC-A84C-B483118EFBAA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 0 5 0 10 0 15 0 22 0 26 0 30 0 35 0 40 0
		 45 0 52 0 56 0 60 0 70 0 75 0 82 0 86 0 90 0 105 0 114 0 124 0;
	setAttr -s 21 ".kit[17:20]"  1 1 18 1;
	setAttr -s 21 ".kot[13:20]"  1 18 18 18 18 1 18 1;
	setAttr -s 21 ".kix[17:20]"  1 1 1 1;
	setAttr -s 21 ".kiy[17:20]"  0 0 0 0;
	setAttr -s 21 ".kox[13:20]"  1 1 1 1 1 1 1 1;
	setAttr -s 21 ".koy[13:20]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RightHip_Control_rotateY";
	rename -uid "E76F692B-4D4B-AA35-80EA-55B69E17987A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 0 5 0 10 0 15 0 22 0 26 0 30 0 35 0 40 0
		 45 0 52 0 56 0 60 0 70 0 75 0 82 0 86 0 90 0 105 0 114 0 124 0;
	setAttr -s 21 ".kit[17:20]"  1 1 18 1;
	setAttr -s 21 ".kot[13:20]"  1 18 18 18 18 1 18 1;
	setAttr -s 21 ".kix[17:20]"  1 1 1 1;
	setAttr -s 21 ".kiy[17:20]"  0 0 0 0;
	setAttr -s 21 ".kox[13:20]"  1 1 1 1 1 1 1 1;
	setAttr -s 21 ".koy[13:20]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RightHip_Control_rotateZ";
	rename -uid "4B3E7211-3A48-3A8F-313C-DDBBA48D44A4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 0 5 0 10 0 15 0 22 0 26 0 30 0 35 0 40 0
		 45 0 52 0 56 0 60 0 70 0 75 0 82 0 86 0 90 0 105 0 114 0 124 0;
	setAttr -s 21 ".kit[17:20]"  1 1 18 1;
	setAttr -s 21 ".kot[13:20]"  1 18 18 18 18 1 18 1;
	setAttr -s 21 ".kix[17:20]"  1 1 1 1;
	setAttr -s 21 ".kiy[17:20]"  0 0 0 0;
	setAttr -s 21 ".kox[13:20]"  1 1 1 1 1 1 1 1;
	setAttr -s 21 ".koy[13:20]"  0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RightHip_Control_scaleX";
	rename -uid "B9CB031B-1644-31F3-AB1B-B4BB9205463E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 1 5 1 10 1 15 1 22 1 26 1 30 1 35 1 40 1
		 45 1 52 1 56 1 60 1 70 1 75 1 82 1 86 1 90 1 105 1 114 1 124 1;
	setAttr -s 21 ".kit[17:20]"  1 1 18 1;
	setAttr -s 21 ".kot[13:20]"  1 18 18 18 18 1 18 1;
	setAttr -s 21 ".kix[17:20]"  1 1 1 1;
	setAttr -s 21 ".kiy[17:20]"  0 0 0 0;
	setAttr -s 21 ".kox[13:20]"  1 1 1 1 1 1 1 1;
	setAttr -s 21 ".koy[13:20]"  0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RightHip_Control_scaleY";
	rename -uid "97D403FC-3341-84D6-694D-3B90340111D7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 1 5 1 10 1 15 1 22 1 26 1 30 1 35 1 40 1
		 45 1 52 1 56 1 60 1 70 1 75 1 82 1 86 1 90 1 105 1 114 1 124 1;
	setAttr -s 21 ".kit[17:20]"  1 1 18 1;
	setAttr -s 21 ".kot[13:20]"  1 18 18 18 18 1 18 1;
	setAttr -s 21 ".kix[17:20]"  1 1 1 1;
	setAttr -s 21 ".kiy[17:20]"  0 0 0 0;
	setAttr -s 21 ".kox[13:20]"  1 1 1 1 1 1 1 1;
	setAttr -s 21 ".koy[13:20]"  0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RightHip_Control_scaleZ";
	rename -uid "037CAC5C-F949-0E2A-563B-ED83F8934294";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 1 5 1 10 1 15 1 22 1 26 1 30 1 35 1 40 1
		 45 1 52 1 56 1 60 1 70 1 75 1 82 1 86 1 90 1 105 1 114 1 124 1;
	setAttr -s 21 ".kit[17:20]"  1 1 18 1;
	setAttr -s 21 ".kot[13:20]"  1 18 18 18 18 1 18 1;
	setAttr -s 21 ".kix[17:20]"  1 1 1 1;
	setAttr -s 21 ".kiy[17:20]"  0 0 0 0;
	setAttr -s 21 ".kox[13:20]"  1 1 1 1 1 1 1 1;
	setAttr -s 21 ".koy[13:20]"  0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LeftFoot_Control_visibility";
	rename -uid "097300C4-204A-3C00-B47B-018FFD1BB355";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 1 5 1 10 1 26 1 30 1 35 1 40 1 56 1 60 1
		 70 1 86 1 90 1 105 1 114 1 124 1;
	setAttr -s 15 ".kit[11:14]"  1 1 9 1;
	setAttr -s 15 ".kot[9:14]"  1 18 18 1 5 1;
	setAttr -s 15 ".kix[11:14]"  1 1 1 1;
	setAttr -s 15 ".kiy[11:14]"  0 0 0 0;
	setAttr -s 15 ".kox[9:14]"  1 1 1 1 0 1;
	setAttr -s 15 ".koy[9:14]"  0 0 0 0 0 0;
createNode animCurveTA -n "LeftFoot_Control_rotateX";
	rename -uid "CFDDC57E-C043-EA44-0662-00AE606388A6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 0 5 -37.614578755053614 10 0 12 30.630168232623372
		 14 125.50950476494147 18 89.149162171130229 21 64.159353648465299 24 -36.179525310701543
		 26 0 30 0 35 -37.614578755053614 40 0 42 30.630168232623372 44 125.50950476494147
		 48 89.149162171130229 51 64.159353648465299 54 -36.179525310701543 56 0 60 93.265612331956049
		 70 0 72 30.630168232623372 74 125.50950476494147 78 89.149162171130229 81 64.159353648465299
		 84 -36.179525310701543 86 0 90 0 105 139.32617998565846 112 179.25463298684298 114 139.32617998565846
		 118 293.304848056526 124 379.36191703647057;
	setAttr -s 32 ".kit[26:31]"  1 1 18 18 18 1;
	setAttr -s 32 ".kot[19:31]"  1 18 18 18 18 18 18 18 
		1 18 18 18 1;
	setAttr -s 32 ".kix[26:31]"  1 1 1 1 0.09896874972441165 1;
	setAttr -s 32 ".kiy[26:31]"  0 0 0 0 0.99509054189957347 0;
	setAttr -s 32 ".kox[19:31]"  0.2378454968280409 0.075864983139400377 
		1 0.26281598928094912 0.11355180516286874 1 1 1 1 1 1 0.09896874972441165 1;
	setAttr -s 32 ".koy[19:31]"  0.97130300094183908 0.99711809949135843 
		0 -0.96484597515783632 -0.9935320767565855 0 0 0 0 0 0 0.99509054189957347 0;
createNode animCurveTA -n "LeftFoot_Control_rotateY";
	rename -uid "94D866F6-AC4C-3DEC-FEBF-52A4E731D046";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 0 5 7.4799015251493479 10 0 12 2.4535771472757948
		 18 33.452756009878968 21 0 24 3.8805316230776521 26 0 30 0 35 7.4799015251493479
		 40 0 42 2.4535771472757948 48 33.452756009878968 51 0 54 3.8805316230776521 56 0
		 60 19.675666890649605 70 0 72 2.4535771472757948 78 33.452756009878968 81 0 84 3.8805316230776521
		 86 0 90 0 105 0 114 0 124 0;
	setAttr -s 27 ".kit[23:26]"  1 1 18 1;
	setAttr -s 27 ".kot[17:26]"  1 18 18 18 18 18 18 1 
		18 1;
	setAttr -s 27 ".kix[23:26]"  1 1 1 1;
	setAttr -s 27 ".kiy[23:26]"  0 0 0 0;
	setAttr -s 27 ".kox[17:26]"  1 0.5442007150314534 1 1 1 1 1 1 1 1;
	setAttr -s 27 ".koy[17:26]"  0 0.83895505347977672 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LeftFoot_Control_rotateZ";
	rename -uid "28487233-004E-70C7-0D10-BD9034D2B533";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 0 5 0.66484270694785397 10 0 12 1.4492270050085139
		 18 28.912276506428629 21 0 24 -2.8335094227766007 26 0 30 0 35 0.66484270694785397
		 40 0 42 1.4492270050085139 48 28.912276506428629 51 0 54 -2.8335094227766007 56 0
		 60 1.7488497131414511 70 0 72 1.4492270050085139 78 28.912276506428629 81 0 84 -2.8335094227766007
		 86 0 90 0 105 0 114 0 124 0;
	setAttr -s 27 ".kit[23:26]"  1 1 18 1;
	setAttr -s 27 ".kot[17:26]"  1 18 18 18 18 18 18 1 
		18 1;
	setAttr -s 27 ".kix[23:26]"  1 1 1 1;
	setAttr -s 27 ".kiy[23:26]"  0 0 0 0;
	setAttr -s 27 ".kox[17:26]"  1 0.73939321318792928 1 0.64432694971133997 
		1 1 1 1 1 1;
	setAttr -s 27 ".koy[17:26]"  0 0.67327384940425949 0 -0.76475014342965653 
		0 0 0 0 0 0;
createNode animCurveTU -n "LeftFoot_Control_scaleX";
	rename -uid "B8DBCCF2-3A42-DEA6-DB92-BEA9CAC5326B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 1 5 1 10 1 26 1 30 1 35 1 40 1 56 1 60 1
		 70 1 86 1 90 1 105 1 114 1 124 1;
	setAttr -s 15 ".kit[11:14]"  1 1 18 1;
	setAttr -s 15 ".kot[9:14]"  1 18 18 1 18 1;
	setAttr -s 15 ".kix[11:14]"  1 1 1 1;
	setAttr -s 15 ".kiy[11:14]"  0 0 0 0;
	setAttr -s 15 ".kox[9:14]"  1 1 1 1 1 1;
	setAttr -s 15 ".koy[9:14]"  0 0 0 0 0 0;
createNode animCurveTU -n "LeftFoot_Control_scaleY";
	rename -uid "94E6F7E0-7340-5F7F-D1DE-999DDAAE9733";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 1 5 1 10 1 26 1 30 1 35 1 40 1 56 1 60 1
		 70 1 86 1 90 1 105 1 114 1 124 1;
	setAttr -s 15 ".kit[11:14]"  1 1 18 1;
	setAttr -s 15 ".kot[9:14]"  1 18 18 1 18 1;
	setAttr -s 15 ".kix[11:14]"  1 1 1 1;
	setAttr -s 15 ".kiy[11:14]"  0 0 0 0;
	setAttr -s 15 ".kox[9:14]"  1 1 1 1 1 1;
	setAttr -s 15 ".koy[9:14]"  0 0 0 0 0 0;
createNode animCurveTU -n "LeftFoot_Control_scaleZ";
	rename -uid "79C9C469-9D43-F771-FBE2-66BBE99C4C80";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 1 5 1 10 1 26 1 30 1 35 1 40 1 56 1 60 1
		 70 1 86 1 90 1 105 1 114 1 124 1;
	setAttr -s 15 ".kit[11:14]"  1 1 18 1;
	setAttr -s 15 ".kot[9:14]"  1 18 18 1 18 1;
	setAttr -s 15 ".kix[11:14]"  1 1 1 1;
	setAttr -s 15 ".kiy[11:14]"  0 0 0 0;
	setAttr -s 15 ".kox[9:14]"  1 1 1 1 1 1;
	setAttr -s 15 ".koy[9:14]"  0 0 0 0 0 0;
createNode animCurveTU -n "LeftHip_Control_visibility";
	rename -uid "D966E4D1-E44F-B168-E683-DAACD9E798A9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 1 5 1 10 1 15 1 22 1 26 1 30 1 35 1 40 1
		 45 1 52 1 56 1 60 1 70 1 75 1 82 1 86 1 90 1 105 1 114 1 124 1;
	setAttr -s 21 ".kit[17:20]"  1 1 9 1;
	setAttr -s 21 ".kot[13:20]"  1 18 18 18 18 1 5 1;
	setAttr -s 21 ".kix[17:20]"  1 1 1 1;
	setAttr -s 21 ".kiy[17:20]"  0 0 0 0;
	setAttr -s 21 ".kox[13:20]"  1 1 1 1 1 1 0 1;
	setAttr -s 21 ".koy[13:20]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LeftHip_Control_rotateX";
	rename -uid "2236C0D9-AD45-A66F-11EF-B6B914EAC5B2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 0 5 0 10 0 15 0 22 0 26 0 30 0 35 0 40 0
		 45 0 52 0 56 0 60 0 70 0 75 0 82 0 86 0 90 0 105 0 114 0 124 0;
	setAttr -s 21 ".kit[17:20]"  1 1 18 1;
	setAttr -s 21 ".kot[13:20]"  1 18 18 18 18 1 18 1;
	setAttr -s 21 ".kix[17:20]"  1 1 1 1;
	setAttr -s 21 ".kiy[17:20]"  0 0 0 0;
	setAttr -s 21 ".kox[13:20]"  1 1 1 1 1 1 1 1;
	setAttr -s 21 ".koy[13:20]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LeftHip_Control_rotateY";
	rename -uid "708A88B8-F54A-1345-0999-488CC0FE44CF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 0 5 0 10 0 15 0 22 0 26 0 30 0 35 0 40 0
		 45 0 52 0 56 0 60 0 70 0 75 0 82 0 86 0 90 0 105 0 114 0 124 0;
	setAttr -s 21 ".kit[17:20]"  1 1 18 1;
	setAttr -s 21 ".kot[13:20]"  1 18 18 18 18 1 18 1;
	setAttr -s 21 ".kix[17:20]"  1 1 1 1;
	setAttr -s 21 ".kiy[17:20]"  0 0 0 0;
	setAttr -s 21 ".kox[13:20]"  1 1 1 1 1 1 1 1;
	setAttr -s 21 ".koy[13:20]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LeftHip_Control_rotateZ";
	rename -uid "D71BC092-CD48-64A4-B890-7F9CEEE3114E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 0 5 0 10 0 15 0 22 0 26 0 30 0 35 0 40 0
		 45 0 52 0 56 0 60 0 70 0 75 0 82 0 86 0 90 0 105 0 114 0 124 0;
	setAttr -s 21 ".kit[17:20]"  1 1 18 1;
	setAttr -s 21 ".kot[13:20]"  1 18 18 18 18 1 18 1;
	setAttr -s 21 ".kix[17:20]"  1 1 1 1;
	setAttr -s 21 ".kiy[17:20]"  0 0 0 0;
	setAttr -s 21 ".kox[13:20]"  1 1 1 1 1 1 1 1;
	setAttr -s 21 ".koy[13:20]"  0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LeftHip_Control_scaleX";
	rename -uid "C7DB329A-0C47-7F40-261C-5B9209508046";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 1 5 1 10 1 15 1 22 1 26 1 30 1 35 1 40 1
		 45 1 52 1 56 1 60 1 70 1 75 1 82 1 86 1 90 1 105 1 114 1 124 1;
	setAttr -s 21 ".kit[17:20]"  1 1 18 1;
	setAttr -s 21 ".kot[13:20]"  1 18 18 18 18 1 18 1;
	setAttr -s 21 ".kix[17:20]"  1 1 1 1;
	setAttr -s 21 ".kiy[17:20]"  0 0 0 0;
	setAttr -s 21 ".kox[13:20]"  1 1 1 1 1 1 1 1;
	setAttr -s 21 ".koy[13:20]"  0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LeftHip_Control_scaleY";
	rename -uid "E7F211E4-EF45-8E84-BB76-A3913D84CEFA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 1 5 1 10 1 15 1 22 1 26 1 30 1 35 1 40 1
		 45 1 52 1 56 1 60 1 70 1 75 1 82 1 86 1 90 1 105 1 114 1 124 1;
	setAttr -s 21 ".kit[17:20]"  1 1 18 1;
	setAttr -s 21 ".kot[13:20]"  1 18 18 18 18 1 18 1;
	setAttr -s 21 ".kix[17:20]"  1 1 1 1;
	setAttr -s 21 ".kiy[17:20]"  0 0 0 0;
	setAttr -s 21 ".kox[13:20]"  1 1 1 1 1 1 1 1;
	setAttr -s 21 ".koy[13:20]"  0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LeftHip_Control_scaleZ";
	rename -uid "EE566DF9-C046-5181-9FEA-7FAB10361E78";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 1 5 1 10 1 15 1 22 1 26 1 30 1 35 1 40 1
		 45 1 52 1 56 1 60 1 70 1 75 1 82 1 86 1 90 1 105 1 114 1 124 1;
	setAttr -s 21 ".kit[17:20]"  1 1 18 1;
	setAttr -s 21 ".kot[13:20]"  1 18 18 18 18 1 18 1;
	setAttr -s 21 ".kix[17:20]"  1 1 1 1;
	setAttr -s 21 ".kiy[17:20]"  0 0 0 0;
	setAttr -s 21 ".kox[13:20]"  1 1 1 1 1 1 1 1;
	setAttr -s 21 ".koy[13:20]"  0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RightKnee_Control_visibility";
	rename -uid "F8455042-7A49-6C9A-A97A-638686B0FD05";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 10 1 26 1 30 1 40 1 56 1 70 1 86 1 90 1
		 105 1 108 1 115 1;
	setAttr -s 12 ".kit[0:11]"  9 9 1 9 9 1 9 1 
		1 1 9 1;
	setAttr -s 12 ".kix[2:11]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".kiy[2:11]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RightKnee_Control_rotateX";
	rename -uid "DC6D1C97-4244-7544-46AF-2B99A7A09D45";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 10 0 26 0 30 0 40 0 56 0 70 0 86 0 90 0
		 105 0 108 0 115 0;
	setAttr -s 12 ".kit[2:11]"  1 18 18 1 18 1 1 1 
		18 1;
	setAttr -s 12 ".kot[2:11]"  1 18 18 1 1 1 18 1 
		18 1;
	setAttr -s 12 ".kix[2:11]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".kiy[2:11]"  0 0 0 0 0 0 0 0 0 0;
	setAttr -s 12 ".kox[2:11]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".koy[2:11]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RightKnee_Control_rotateY";
	rename -uid "CB66F226-9B45-7552-67B4-B8AD57D4E822";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 10 0 26 0 30 0 40 0 56 0 70 0 86 0 90 0
		 105 0 108 0 115 0;
	setAttr -s 12 ".kit[2:11]"  1 18 18 1 18 1 1 1 
		18 1;
	setAttr -s 12 ".kot[2:11]"  1 18 18 1 1 1 18 1 
		18 1;
	setAttr -s 12 ".kix[2:11]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".kiy[2:11]"  0 0 0 0 0 0 0 0 0 0;
	setAttr -s 12 ".kox[2:11]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".koy[2:11]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RightKnee_Control_rotateZ";
	rename -uid "BEC83556-BA48-1F62-94FA-2E86D2D59CAC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 10 0 26 0 30 0 40 0 56 0 70 0 86 0 90 0
		 105 0 108 0 115 0;
	setAttr -s 12 ".kit[2:11]"  1 18 18 1 18 1 1 1 
		18 1;
	setAttr -s 12 ".kot[2:11]"  1 18 18 1 1 1 18 1 
		18 1;
	setAttr -s 12 ".kix[2:11]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".kiy[2:11]"  0 0 0 0 0 0 0 0 0 0;
	setAttr -s 12 ".kox[2:11]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".koy[2:11]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RightKnee_Control_scaleX";
	rename -uid "52C44301-6C45-E1C7-2E38-748600B226E9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 10 1 26 1 30 1 40 1 56 1 70 1 86 1 90 1
		 105 1 108 1 115 1;
	setAttr -s 12 ".kit[2:11]"  1 18 18 1 18 1 1 1 
		18 1;
	setAttr -s 12 ".kot[2:11]"  1 18 18 1 1 1 18 1 
		18 1;
	setAttr -s 12 ".kix[2:11]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".kiy[2:11]"  0 0 0 0 0 0 0 0 0 0;
	setAttr -s 12 ".kox[2:11]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".koy[2:11]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RightKnee_Control_scaleY";
	rename -uid "E64BDA13-7E41-BB52-F682-BD82F2E4A8B5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 10 1 26 1 30 1 40 1 56 1 70 1 86 1 90 1
		 105 1 108 1 115 1;
	setAttr -s 12 ".kit[2:11]"  1 18 18 1 18 1 1 1 
		18 1;
	setAttr -s 12 ".kot[2:11]"  1 18 18 1 1 1 18 1 
		18 1;
	setAttr -s 12 ".kix[2:11]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".kiy[2:11]"  0 0 0 0 0 0 0 0 0 0;
	setAttr -s 12 ".kox[2:11]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".koy[2:11]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RightKnee_Control_scaleZ";
	rename -uid "F8ED0690-8846-DD9F-B966-AEB1F60DC53B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 10 1 26 1 30 1 40 1 56 1 70 1 86 1 90 1
		 105 1 108 1 115 1;
	setAttr -s 12 ".kit[2:11]"  1 18 18 1 18 1 1 1 
		18 1;
	setAttr -s 12 ".kot[2:11]"  1 18 18 1 1 1 18 1 
		18 1;
	setAttr -s 12 ".kix[2:11]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".kiy[2:11]"  0 0 0 0 0 0 0 0 0 0;
	setAttr -s 12 ".kox[2:11]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".koy[2:11]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LeftFingers_Control_visibility";
	rename -uid "FA4825CF-DF4A-6E76-B7B5-D79BA97F823C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 1 5 1 10 1 15 1 22 1 26 1 30 1 35 1 40 1
		 45 1 52 1 56 1 60 1 70 1 75 1 82 1 86 1 90 1 105 1 114 1 124 1;
	setAttr -s 21 ".kit[17:20]"  1 1 9 1;
	setAttr -s 21 ".kot[13:20]"  1 18 18 18 18 1 5 1;
	setAttr -s 21 ".kix[17:20]"  1 1 1 1;
	setAttr -s 21 ".kiy[17:20]"  0 0 0 0;
	setAttr -s 21 ".kox[13:20]"  1 1 1 1 1 1 0 1;
	setAttr -s 21 ".koy[13:20]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LeftFingers_Control_rotateX";
	rename -uid "43C5E756-D042-66D3-E03E-14B7905ABA05";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 0 5 0 10 0 15 0 22 0 26 0 30 0 35 0 40 0
		 45 0 52 0 56 0 60 0 70 0 75 0 82 0 86 0 90 0 105 0 114 0 124 0;
	setAttr -s 21 ".kit[17:20]"  1 1 18 1;
	setAttr -s 21 ".kot[13:20]"  1 18 18 18 18 1 18 1;
	setAttr -s 21 ".kix[17:20]"  1 1 1 1;
	setAttr -s 21 ".kiy[17:20]"  0 0 0 0;
	setAttr -s 21 ".kox[13:20]"  1 1 1 1 1 1 1 1;
	setAttr -s 21 ".koy[13:20]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LeftFingers_Control_rotateY";
	rename -uid "19E32867-AA45-0035-679C-F4A7ECCEB002";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 0 5 0 10 0 15 0 22 0 26 0 30 0 35 0 40 0
		 45 0 52 0 56 0 60 0 70 0 75 0 82 0 86 0 90 0 105 0 114 0 124 0;
	setAttr -s 21 ".kit[17:20]"  1 1 18 1;
	setAttr -s 21 ".kot[13:20]"  1 18 18 18 18 1 18 1;
	setAttr -s 21 ".kix[17:20]"  1 1 1 1;
	setAttr -s 21 ".kiy[17:20]"  0 0 0 0;
	setAttr -s 21 ".kox[13:20]"  1 1 1 1 1 1 1 1;
	setAttr -s 21 ".koy[13:20]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LeftFingers_Control_rotateZ";
	rename -uid "F1823171-7C47-F803-E6F5-0B8050542562";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 0 5 0 10 0 15 0 22 0 26 0 30 0 35 0 40 0
		 45 0 52 0 56 0 60 0 70 0 75 0 82 0 86 0 90 0 105 0 114 0 124 0;
	setAttr -s 21 ".kit[17:20]"  1 1 18 1;
	setAttr -s 21 ".kot[13:20]"  1 18 18 18 18 1 18 1;
	setAttr -s 21 ".kix[17:20]"  1 1 1 1;
	setAttr -s 21 ".kiy[17:20]"  0 0 0 0;
	setAttr -s 21 ".kox[13:20]"  1 1 1 1 1 1 1 1;
	setAttr -s 21 ".koy[13:20]"  0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LeftFingers_Control_scaleX";
	rename -uid "B5668235-944D-60FC-6510-1E9AAD0DB715";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 1 5 1 10 1 15 1 22 1 26 1 30 1 35 1 40 1
		 45 1 52 1 56 1 60 1 70 1 75 1 82 1 86 1 90 1 105 1 114 1 124 1;
	setAttr -s 21 ".kit[17:20]"  1 1 18 1;
	setAttr -s 21 ".kot[13:20]"  1 18 18 18 18 1 18 1;
	setAttr -s 21 ".kix[17:20]"  1 1 1 1;
	setAttr -s 21 ".kiy[17:20]"  0 0 0 0;
	setAttr -s 21 ".kox[13:20]"  1 1 1 1 1 1 1 1;
	setAttr -s 21 ".koy[13:20]"  0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LeftFingers_Control_scaleY";
	rename -uid "87E6A933-5E4E-B80A-FA3F-B89D8C711C17";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 1 5 1 10 1 15 1 22 1 26 1 30 1 35 1 40 1
		 45 1 52 1 56 1 60 1 70 1 75 1 82 1 86 1 90 1 105 1 114 1 124 1;
	setAttr -s 21 ".kit[17:20]"  1 1 18 1;
	setAttr -s 21 ".kot[13:20]"  1 18 18 18 18 1 18 1;
	setAttr -s 21 ".kix[17:20]"  1 1 1 1;
	setAttr -s 21 ".kiy[17:20]"  0 0 0 0;
	setAttr -s 21 ".kox[13:20]"  1 1 1 1 1 1 1 1;
	setAttr -s 21 ".koy[13:20]"  0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LeftFingers_Control_scaleZ";
	rename -uid "A29A4D84-6F47-C272-D403-F39059A39249";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 1 5 1 10 1 15 1 22 1 26 1 30 1 35 1 40 1
		 45 1 52 1 56 1 60 1 70 1 75 1 82 1 86 1 90 1 105 1 114 1 124 1;
	setAttr -s 21 ".kit[17:20]"  1 1 18 1;
	setAttr -s 21 ".kot[13:20]"  1 18 18 18 18 1 18 1;
	setAttr -s 21 ".kix[17:20]"  1 1 1 1;
	setAttr -s 21 ".kiy[17:20]"  0 0 0 0;
	setAttr -s 21 ".kox[13:20]"  1 1 1 1 1 1 1 1;
	setAttr -s 21 ".koy[13:20]"  0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RightToes_Control_visibility";
	rename -uid "E1F101AB-6742-4171-1B97-4BB0AD3FD726";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 1 5 1 10 1 18 1 22 1 26 1 30 1 35 1 40 1
		 48 1 52 1 56 1 60 1 70 1 78 1 82 1 86 1 90 1 105 1 114 1 124 1;
	setAttr -s 21 ".kit[2:20]"  1 9 18 18 18 18 1 18 
		18 18 18 1 9 18 18 1 1 9 1;
	setAttr -s 21 ".kot[2:20]"  1 5 18 18 18 18 1 18 
		18 18 18 1 5 18 18 18 1 5 1;
	setAttr -s 21 ".kix[2:20]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 21 ".kiy[2:20]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 21 ".kox[2:20]"  1 0 1 1 1 1 1 1 1 1 1 1 0 1 1 1 1 0 1;
	setAttr -s 21 ".koy[2:20]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RightToes_Control_rotateX";
	rename -uid "0B6D61CD-1F47-F541-109B-098FA4F75B17";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  0 0 5 -30.847518427111311 10 25.235123827155896
		 13 37.473928348595052 16 -23.743346303530284 18 0 20 -41.644149876600267 22 50.303341928009054
		 26 25.235123827155896 30 0 35 -30.847518427111311 40 25.235123827155896 43 37.473928348595052
		 46 -23.743346303530284 48 0 50 -41.644149876600267 52 50.303341928009054 56 25.235123827155896
		 60 -3.9910406336393072 70 25.235123827155896 73 37.473928348595052 76 -23.743346303530284
		 78 0 80 -41.644149876600267 82 50.303341928009054 86 25.235123827155896 90 0 105 25.235123827155896
		 114 25.235123827155896 124 25.235123827155896;
	setAttr -s 30 ".kit[2:29]"  1 18 18 18 18 18 18 18 
		18 1 18 18 18 18 18 18 18 1 18 18 18 18 18 18 1 
		1 18 1;
	setAttr -s 30 ".kot[2:29]"  1 18 18 18 18 18 18 18 
		18 1 18 18 18 18 18 18 18 1 18 18 18 18 18 18 18 
		1 18 1;
	setAttr -s 30 ".kix[2:29]"  0.33182912619039828 1 1 1 1 1 0.35494691625654318 
		0.35775556939520375 1 0.33182912619039828 1 1 1 1 1 0.33182912619039839 1 0.33182912619039828 
		1 1 1 1 1 0.35494691625654334 0.35775556939520375 0.35494691625654334 1 0.35494691625654334;
	setAttr -s 30 ".kiy[2:29]"  -0.94333950993887494 0 0 0 0 0 -0.9348864565496553 
		-0.93381526683103311 0 -0.94333950993887494 0 0 0 0 0 -0.94333950993887494 0 -0.94333950993887494 
		0 0 0 0 0 -0.9348864565496553 -0.93381526683103311 -0.9348864565496553 0 -0.9348864565496553;
	setAttr -s 30 ".kox[2:29]"  0.33182912619039828 1 1 1 1 1 0.35494691625654323 
		0.35775556939520381 1 0.33182912619039828 1 1 1 1 1 0.33182912619039834 1 0.33182912619039828 
		1 1 1 1 1 0.35494691625654329 1 0.35494691625654329 1 0.35494691625654329;
	setAttr -s 30 ".koy[2:29]"  -0.94333950993887494 0 0 0 0 0 -0.9348864565496553 
		-0.93381526683103311 0 -0.94333950993887494 0 0 0 0 0 -0.94333950993887505 0 -0.94333950993887494 
		0 0 0 0 0 -0.93488645654965519 0 -0.93488645654965519 0 -0.93488645654965519;
createNode animCurveTA -n "RightToes_Control_rotateY";
	rename -uid "F7E521DA-084C-1E93-612F-AFB8699C4665";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 0 5 0 10 0 18 0 22 0 26 0 30 0 35 0 40 0
		 48 0 52 0 56 0 60 0 70 0 78 0 82 0 86 0 90 0 105 0 114 0 124 0;
	setAttr -s 21 ".kit[2:20]"  1 18 18 18 18 18 1 18 
		18 18 18 1 18 18 18 1 1 18 1;
	setAttr -s 21 ".kot[2:20]"  1 18 18 18 18 18 1 18 
		18 18 18 1 18 18 18 18 1 18 1;
	setAttr -s 21 ".kix[2:20]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 21 ".kiy[2:20]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 21 ".kox[2:20]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 21 ".koy[2:20]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RightToes_Control_rotateZ";
	rename -uid "26308A00-374F-237D-D0E0-8EBE79B7B8EF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 0 5 0 10 0 18 0 22 0 26 0 30 0 35 0 40 0
		 48 0 52 0 56 0 60 0 70 0 78 0 82 0 86 0 90 0 105 0 114 0 124 0;
	setAttr -s 21 ".kit[2:20]"  1 18 18 18 18 18 1 18 
		18 18 18 1 18 18 18 1 1 18 1;
	setAttr -s 21 ".kot[2:20]"  1 18 18 18 18 18 1 18 
		18 18 18 1 18 18 18 18 1 18 1;
	setAttr -s 21 ".kix[2:20]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 21 ".kiy[2:20]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 21 ".kox[2:20]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 21 ".koy[2:20]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RightToes_Control_scaleX";
	rename -uid "89177C78-644D-1436-8A41-56951BEDEE26";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 1 5 1 10 1 18 1 22 1 26 1 30 1 35 1 40 1
		 48 1 52 1 56 1 60 1 70 1 78 1 82 1 86 1 90 1 105 1 114 1 124 1;
	setAttr -s 21 ".kit[2:20]"  1 18 18 18 18 18 1 18 
		18 18 18 1 18 18 18 1 1 18 1;
	setAttr -s 21 ".kot[2:20]"  1 18 18 18 18 18 1 18 
		18 18 18 1 18 18 18 18 1 18 1;
	setAttr -s 21 ".kix[2:20]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 21 ".kiy[2:20]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 21 ".kox[2:20]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 21 ".koy[2:20]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RightToes_Control_scaleY";
	rename -uid "F116DB67-4943-064C-258A-85885325CFA1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 1 5 1 10 1 18 1 22 1 26 1 30 1 35 1 40 1
		 48 1 52 1 56 1 60 1 70 1 78 1 82 1 86 1 90 1 105 1 114 1 124 1;
	setAttr -s 21 ".kit[2:20]"  1 18 18 18 18 18 1 18 
		18 18 18 1 18 18 18 1 1 18 1;
	setAttr -s 21 ".kot[2:20]"  1 18 18 18 18 18 1 18 
		18 18 18 1 18 18 18 18 1 18 1;
	setAttr -s 21 ".kix[2:20]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 21 ".kiy[2:20]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 21 ".kox[2:20]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 21 ".koy[2:20]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RightToes_Control_scaleZ";
	rename -uid "5087B70C-F349-CC71-CCC2-13A7C9867993";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 1 5 1 10 1 18 1 22 1 26 1 30 1 35 1 40 1
		 48 1 52 1 56 1 60 1 70 1 78 1 82 1 86 1 90 1 105 1 114 1 124 1;
	setAttr -s 21 ".kit[2:20]"  1 18 18 18 18 18 1 18 
		18 18 18 1 18 18 18 1 1 18 1;
	setAttr -s 21 ".kot[2:20]"  1 18 18 18 18 18 1 18 
		18 18 18 1 18 18 18 18 1 18 1;
	setAttr -s 21 ".kix[2:20]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 21 ".kiy[2:20]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 21 ".kox[2:20]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 21 ".koy[2:20]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RightShoulder_Control_visibility";
	rename -uid "E926CEE3-794A-C737-F1CC-D3B676FFE0DD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 1 5 1 10 1 15 1 22 1 26 1 30 1 35 1 40 1
		 45 1 52 1 56 1 60 1 70 1 75 1 82 1 86 1 90 1 105 1 114 1 124 1;
	setAttr -s 21 ".kit[17:20]"  1 1 9 1;
	setAttr -s 21 ".kot[13:20]"  1 18 18 18 18 1 5 1;
	setAttr -s 21 ".kix[17:20]"  1 1 1 1;
	setAttr -s 21 ".kiy[17:20]"  0 0 0 0;
	setAttr -s 21 ".kox[13:20]"  1 1 1 1 1 1 0 1;
	setAttr -s 21 ".koy[13:20]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RightShoulder_Control_rotateX";
	rename -uid "9C851AB1-1842-ED69-EE0D-3E90A0B49B8A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 0 5 0 10 0 15 0 22 0 26 0 30 0 35 0 40 0
		 45 0 52 0 56 0 60 0 70 0 75 0 82 0 86 0 90 0 105 0 114 0 124 0;
	setAttr -s 21 ".kit[17:20]"  1 1 18 1;
	setAttr -s 21 ".kot[13:20]"  1 18 18 18 18 1 18 1;
	setAttr -s 21 ".kix[17:20]"  1 1 1 1;
	setAttr -s 21 ".kiy[17:20]"  0 0 0 0;
	setAttr -s 21 ".kox[13:20]"  1 1 1 1 1 1 1 1;
	setAttr -s 21 ".koy[13:20]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RightShoulder_Control_rotateY";
	rename -uid "97A7C5BB-BA4F-07A4-5980-E5AEF73F7E69";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 0 5 0 10 0 15 0 22 0 26 0 30 0 35 0 40 0
		 45 0 52 0 56 0 60 0 70 0 75 0 82 0 86 0 90 0 105 0 114 0 124 0;
	setAttr -s 21 ".kit[17:20]"  1 1 18 1;
	setAttr -s 21 ".kot[13:20]"  1 18 18 18 18 1 18 1;
	setAttr -s 21 ".kix[17:20]"  1 1 1 1;
	setAttr -s 21 ".kiy[17:20]"  0 0 0 0;
	setAttr -s 21 ".kox[13:20]"  1 1 1 1 1 1 1 1;
	setAttr -s 21 ".koy[13:20]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RightShoulder_Control_rotateZ";
	rename -uid "02E9D432-3C40-E8A0-2566-10BB0D8714E1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 0 5 0 10 0 15 0 22 0 26 0 30 0 35 0 40 0
		 45 0 52 0 56 0 60 0 70 0 75 0 82 0 86 0 90 0 105 0 114 0 124 0;
	setAttr -s 21 ".kit[17:20]"  1 1 18 1;
	setAttr -s 21 ".kot[13:20]"  1 18 18 18 18 1 18 1;
	setAttr -s 21 ".kix[17:20]"  1 1 1 1;
	setAttr -s 21 ".kiy[17:20]"  0 0 0 0;
	setAttr -s 21 ".kox[13:20]"  1 1 1 1 1 1 1 1;
	setAttr -s 21 ".koy[13:20]"  0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RightShoulder_Control_scaleX";
	rename -uid "DA3B417E-B14D-88F4-B0A3-5EB3C9CD403C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 1 5 1 10 1 15 1 22 1 26 1 30 1 35 1 40 1
		 45 1 52 1 56 1 60 1 70 1 75 1 82 1 86 1 90 1 105 1 114 1 124 1;
	setAttr -s 21 ".kit[17:20]"  1 1 18 1;
	setAttr -s 21 ".kot[13:20]"  1 18 18 18 18 1 18 1;
	setAttr -s 21 ".kix[17:20]"  1 1 1 1;
	setAttr -s 21 ".kiy[17:20]"  0 0 0 0;
	setAttr -s 21 ".kox[13:20]"  1 1 1 1 1 1 1 1;
	setAttr -s 21 ".koy[13:20]"  0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RightShoulder_Control_scaleY";
	rename -uid "73E4F2BA-0F48-004D-F8DC-FFBB8E4FCBA2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 1 5 1 10 1 15 1 22 1 26 1 30 1 35 1 40 1
		 45 1 52 1 56 1 60 1 70 1 75 1 82 1 86 1 90 1 105 1 114 1 124 1;
	setAttr -s 21 ".kit[17:20]"  1 1 18 1;
	setAttr -s 21 ".kot[13:20]"  1 18 18 18 18 1 18 1;
	setAttr -s 21 ".kix[17:20]"  1 1 1 1;
	setAttr -s 21 ".kiy[17:20]"  0 0 0 0;
	setAttr -s 21 ".kox[13:20]"  1 1 1 1 1 1 1 1;
	setAttr -s 21 ".koy[13:20]"  0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RightShoulder_Control_scaleZ";
	rename -uid "94D51CF8-2547-4E3F-DE1D-B0937D0CCE39";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 1 5 1 10 1 15 1 22 1 26 1 30 1 35 1 40 1
		 45 1 52 1 56 1 60 1 70 1 75 1 82 1 86 1 90 1 105 1 114 1 124 1;
	setAttr -s 21 ".kit[17:20]"  1 1 18 1;
	setAttr -s 21 ".kot[13:20]"  1 18 18 18 18 1 18 1;
	setAttr -s 21 ".kix[17:20]"  1 1 1 1;
	setAttr -s 21 ".kiy[17:20]"  0 0 0 0;
	setAttr -s 21 ".kox[13:20]"  1 1 1 1 1 1 1 1;
	setAttr -s 21 ".koy[13:20]"  0 0 0 0 0 0 0 0;
createNode animCurveTU -n "Neck_Control_visibility";
	rename -uid "DC25A4C8-E44B-56CB-4767-CDA4810FC1AA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 1 5 1 10 1 26 1 30 1 35 1 40 1 56 1 60 1
		 70 1 86 1 90 1 105 1 114 1 124 1;
	setAttr -s 15 ".kit[7:14]"  1 18 18 18 1 1 9 1;
	setAttr -s 15 ".kot[7:14]"  1 18 1 18 18 1 5 1;
	setAttr -s 15 ".kix[7:14]"  1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[7:14]"  0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[7:14]"  1 1 1 1 1 1 0 1;
	setAttr -s 15 ".koy[7:14]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Neck_Control_rotateX";
	rename -uid "FAEE2B35-484B-86EB-8932-D4B94F51BD7D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 0 5 0 10 -17.407046943141975 14 -20.904363308840338
		 18 -15.882628271243634 22 -22.396426650103223 26 -17.219701641827143 30 0 35 0 40 -11.253400874241686
		 44 -8.8389460258502233 50 -15.628862491285108 56 -11.253400874241686 60 0 70 -17.407046943141975
		 74 -20.904363308840338 78 -15.882628271243634 82 -22.396426650103223 86 -17.219701641827143
		 90 0 105 -17.219701641827143 114 -17.219701641827143 124 -17.219701641827143;
	setAttr -s 23 ".kit[12:22]"  1 18 18 18 18 18 18 1 
		1 18 1;
	setAttr -s 23 ".kot[12:22]"  1 18 1 18 18 18 18 18 
		1 18 1;
	setAttr -s 23 ".kix[12:22]"  1 1 0.84782408748052362 1 1 1 0.64886318931647513 
		1 0.64886318931647513 1 0.64886318931647513;
	setAttr -s 23 ".kiy[12:22]"  0 0 -0.53027758456097085 0 0 0 0.76090509365495251 
		0 0.76090509365495251 0 0.76090509365495251;
	setAttr -s 23 ".kox[12:22]"  1 1 0.71674016187717582 1 1 1 0.64886318931647524 
		1 0.64886318931647524 1 0.64886318931647524;
	setAttr -s 23 ".koy[12:22]"  0 0 -0.69734033323211686 0 0 0 0.76090509365495262 
		0 0.76090509365495262 0 0.76090509365495262;
createNode animCurveTA -n "Neck_Control_rotateY";
	rename -uid "1E4FB279-1F48-B407-1F3C-6EA2634F9821";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 0 5 0 10 0 14 -0.91574386851465839 18 -0.5777435850949616
		 22 5.1310184429933878 26 0.062659147366653317 30 0 35 0 40 18.279756345108765 44 12.677098349978715
		 50 22.291417919064966 56 18.279756345108765 60 0 70 0 74 -0.91574386851465839 78 -0.5777435850949616
		 82 5.1310184429933878 86 0.062659147366653317 90 0 105 0.062659147366653317 114 0.062659147366653317
		 124 0.062659147366653317;
	setAttr -s 23 ".kit[12:22]"  1 18 18 18 18 18 18 1 
		1 18 1;
	setAttr -s 23 ".kot[12:22]"  1 18 1 18 18 18 18 18 
		1 18 1;
	setAttr -s 23 ".kix[12:22]"  1 1 1 1 0.99440950743459544 1 0.99980630762783085 
		1 0.99980630762783085 1 0.99980630762783085;
	setAttr -s 23 ".kiy[12:22]"  0 0 0 0 0.10559228912986568 0 -0.019681138879736125 
		0 -0.019681138879736125 0 -0.019681138879736125;
	setAttr -s 23 ".kox[12:22]"  1 1 1 1 0.99440950743459544 1 0.99980630762783085 
		1 0.99980630762783085 1 0.99980630762783085;
	setAttr -s 23 ".koy[12:22]"  0 0 0 0 0.10559228912986568 0 -0.019681138879736125 
		0 -0.019681138879736125 0 -0.019681138879736125;
createNode animCurveTA -n "Neck_Control_rotateZ";
	rename -uid "8AA386E1-4C45-B33A-3719-D59839B2E7B1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 0 5 0 10 0 14 0.49396533524405095 18 2.0561737760710286
		 22 -1.1089626815478439 26 -0.029111857416793147 30 0 35 0 40 0.80437762695124648
		 44 4.4960973750814981 50 -0.76480106930611991 56 0.80437762695124648 60 0 70 0 74 0.49396533524405095
		 78 2.0561737760710286 82 -1.1089626815478439 86 -0.029111857416793147 90 0 105 -0.029111857416793147
		 114 -0.029111857416793147 124 -0.029111857416793147;
	setAttr -s 23 ".kit[12:22]"  1 18 18 18 18 18 18 1 
		1 18 1;
	setAttr -s 23 ".kot[12:22]"  1 18 1 18 18 18 18 18 
		1 18 1;
	setAttr -s 23 ".kix[12:22]"  1 1 1 0.99425445281702174 1 1 0.99995818016289006 
		1 0.99995818016289006 1 0.99995818016289006;
	setAttr -s 23 ".kiy[12:22]"  0 0 0 0.10704243576042566 0 0 0.0091453772651125496 
		0 0.0091453772651125496 0 0.0091453772651125496;
	setAttr -s 23 ".kox[12:22]"  1 1 1 0.99425445281702174 1 1 0.99995818016289006 
		1 0.99995818016289006 1 0.99995818016289006;
	setAttr -s 23 ".koy[12:22]"  0 0 0 0.10704243576042566 0 0 0.0091453772651125514 
		0 0.0091453772651125514 0 0.0091453772651125514;
createNode animCurveTU -n "Neck_Control_scaleX";
	rename -uid "F727A271-EC4E-30A6-EEED-EDB420ED03E3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 1 5 1 10 1 26 1 30 1 35 1 40 1 56 1 60 1
		 70 1 86 1 90 1 105 1 114 1 124 1;
	setAttr -s 15 ".kit[7:14]"  1 18 18 18 1 1 18 1;
	setAttr -s 15 ".kot[7:14]"  1 18 1 18 18 1 18 1;
	setAttr -s 15 ".kix[7:14]"  1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[7:14]"  0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[7:14]"  1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[7:14]"  0 0 0 0 0 0 0 0;
createNode animCurveTU -n "Neck_Control_scaleY";
	rename -uid "F042856E-5148-DBB0-4036-AA9409C862E9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 1 5 1 10 1 26 1 30 1 35 1 40 1 56 1 60 1
		 70 1 86 1 90 1 105 1 114 1 124 1;
	setAttr -s 15 ".kit[7:14]"  1 18 18 18 1 1 18 1;
	setAttr -s 15 ".kot[7:14]"  1 18 1 18 18 1 18 1;
	setAttr -s 15 ".kix[7:14]"  1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[7:14]"  0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[7:14]"  1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[7:14]"  0 0 0 0 0 0 0 0;
createNode animCurveTU -n "Neck_Control_scaleZ";
	rename -uid "4312FFCF-6E4F-A671-94B6-C58FE915129D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 1 5 1 10 1 26 1 30 1 35 1 40 1 56 1 60 1
		 70 1 86 1 90 1 105 1 114 1 124 1;
	setAttr -s 15 ".kit[7:14]"  1 18 18 18 1 1 18 1;
	setAttr -s 15 ".kot[7:14]"  1 18 1 18 18 1 18 1;
	setAttr -s 15 ".kix[7:14]"  1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[7:14]"  0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[7:14]"  1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[7:14]"  0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RootMotion_Control_visibility";
	rename -uid "3E9E05FE-D849-0189-3CA5-ADA75624CBCD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 1 5 1 10 1 15 1 22 1 26 1 30 1 35 1 40 1
		 45 1 52 1 56 1 60 1 70 1 75 1 82 1 86 1 90 1 105 1 114 1 124 1;
	setAttr -s 21 ".kit[17:20]"  1 1 9 1;
	setAttr -s 21 ".kot[13:20]"  1 18 18 18 18 1 5 1;
	setAttr -s 21 ".kix[17:20]"  1 1 1 1;
	setAttr -s 21 ".kiy[17:20]"  0 0 0 0;
	setAttr -s 21 ".kox[13:20]"  1 1 1 1 1 1 0 1;
	setAttr -s 21 ".koy[13:20]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RootMotion_Control_rotateX";
	rename -uid "CD244A4A-7845-0207-7DE2-BF8C9E170712";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 0 5 0 10 0 15 0 22 0 26 0 30 0 35 0 40 0
		 45 0 52 0 56 0 60 0 70 0 75 0 82 0 86 0 90 0 105 0 114 0 124 0;
	setAttr -s 21 ".kit[17:20]"  1 1 18 1;
	setAttr -s 21 ".kot[13:20]"  1 18 18 18 18 1 18 1;
	setAttr -s 21 ".kix[17:20]"  1 1 1 1;
	setAttr -s 21 ".kiy[17:20]"  0 0 0 0;
	setAttr -s 21 ".kox[13:20]"  1 1 1 1 1 1 1 1;
	setAttr -s 21 ".koy[13:20]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RootMotion_Control_rotateY";
	rename -uid "FEA9AFED-C24F-8C24-226E-A9AE28F50D97";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 0 5 0 10 0 15 0 22 0 26 0 30 0 35 0 40 0
		 45 0 52 0 56 0 60 0 70 0 75 0 82 0 86 0 90 0 105 0 114 0 124 0;
	setAttr -s 21 ".kit[17:20]"  1 1 18 1;
	setAttr -s 21 ".kot[13:20]"  1 18 18 18 18 1 18 1;
	setAttr -s 21 ".kix[17:20]"  1 1 1 1;
	setAttr -s 21 ".kiy[17:20]"  0 0 0 0;
	setAttr -s 21 ".kox[13:20]"  1 1 1 1 1 1 1 1;
	setAttr -s 21 ".koy[13:20]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RootMotion_Control_rotateZ";
	rename -uid "9762EFC6-AF4B-2B05-04EE-25A1F1C72D9D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 0 5 0 10 0 15 0 22 0 26 0 30 0 35 0 40 0
		 45 0 52 0 56 0 60 0 70 0 75 0 82 0 86 0 90 0 105 0 114 0 124 0;
	setAttr -s 21 ".kit[17:20]"  1 1 18 1;
	setAttr -s 21 ".kot[13:20]"  1 18 18 18 18 1 18 1;
	setAttr -s 21 ".kix[17:20]"  1 1 1 1;
	setAttr -s 21 ".kiy[17:20]"  0 0 0 0;
	setAttr -s 21 ".kox[13:20]"  1 1 1 1 1 1 1 1;
	setAttr -s 21 ".koy[13:20]"  0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RootMotion_Control_scaleX";
	rename -uid "332CB48D-0B42-552F-3AB4-5C8EE78F046E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 1 5 1 10 1 15 1 22 1 26 1 30 1 35 1 40 1
		 45 1 52 1 56 1 60 1 70 1 75 1 82 1 86 1 90 1 105 1 114 1 124 1;
	setAttr -s 21 ".kit[17:20]"  1 1 18 1;
	setAttr -s 21 ".kot[13:20]"  1 18 18 18 18 1 18 1;
	setAttr -s 21 ".kix[17:20]"  1 1 1 1;
	setAttr -s 21 ".kiy[17:20]"  0 0 0 0;
	setAttr -s 21 ".kox[13:20]"  1 1 1 1 1 1 1 1;
	setAttr -s 21 ".koy[13:20]"  0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RootMotion_Control_scaleY";
	rename -uid "A4CE9692-CA44-0B74-BA33-8AB661CBE16A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 1 5 1 10 1 15 1 22 1 26 1 30 1 35 1 40 1
		 45 1 52 1 56 1 60 1 70 1 75 1 82 1 86 1 90 1 105 1 114 1 124 1;
	setAttr -s 21 ".kit[17:20]"  1 1 18 1;
	setAttr -s 21 ".kot[13:20]"  1 18 18 18 18 1 18 1;
	setAttr -s 21 ".kix[17:20]"  1 1 1 1;
	setAttr -s 21 ".kiy[17:20]"  0 0 0 0;
	setAttr -s 21 ".kox[13:20]"  1 1 1 1 1 1 1 1;
	setAttr -s 21 ".koy[13:20]"  0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RootMotion_Control_scaleZ";
	rename -uid "6DA6FBB8-714B-6AF1-6261-BEA997613D1B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 1 5 1 10 1 15 1 22 1 26 1 30 1 35 1 40 1
		 45 1 52 1 56 1 60 1 70 1 75 1 82 1 86 1 90 1 105 1 114 1 124 1;
	setAttr -s 21 ".kit[17:20]"  1 1 18 1;
	setAttr -s 21 ".kot[13:20]"  1 18 18 18 18 1 18 1;
	setAttr -s 21 ".kix[17:20]"  1 1 1 1;
	setAttr -s 21 ".kiy[17:20]"  0 0 0 0;
	setAttr -s 21 ".kox[13:20]"  1 1 1 1 1 1 1 1;
	setAttr -s 21 ".koy[13:20]"  0 0 0 0 0 0 0 0;
createNode animCurveTU -n "Root_Control_visibility";
	rename -uid "794DC1FC-AB47-B2D2-F3A1-68AFE43C7D91";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 1 5 1 10 1 15 1 22 1 26 1 30 1 35 1 40 1
		 45 1 52 1 56 1 60 1 70 1 75 1 82 1 86 1 90 1 105 1 114 1 124 1;
	setAttr -s 21 ".kit[17:20]"  1 1 9 1;
	setAttr -s 21 ".kot[13:20]"  1 18 18 18 18 1 5 1;
	setAttr -s 21 ".kix[17:20]"  1 1 1 1;
	setAttr -s 21 ".kiy[17:20]"  0 0 0 0;
	setAttr -s 21 ".kox[13:20]"  1 1 1 1 1 1 0 1;
	setAttr -s 21 ".koy[13:20]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Root_Control_rotateX";
	rename -uid "290F0FB0-2944-0E44-5E6F-148FD3110818";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 0 5 0 10 0 15 0 22 0 26 0 30 0 35 0 40 0
		 45 0 52 0 56 0 60 0 70 0 75 0 82 0 86 0 90 0 105 0 114 0 124 0;
	setAttr -s 21 ".kit[17:20]"  1 1 18 1;
	setAttr -s 21 ".kot[13:20]"  1 18 18 18 18 1 18 1;
	setAttr -s 21 ".kix[17:20]"  1 1 1 1;
	setAttr -s 21 ".kiy[17:20]"  0 0 0 0;
	setAttr -s 21 ".kox[13:20]"  1 1 1 1 1 1 1 1;
	setAttr -s 21 ".koy[13:20]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Root_Control_rotateY";
	rename -uid "7CDAAEE5-3041-4C8A-2386-FDB207B43FDD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 0 5 0 10 0 15 0 22 0 26 0 30 0 35 0 40 0
		 45 0 52 0 56 0 60 0 70 0 75 0 82 0 86 0 90 0 105 0 114 0 124 0;
	setAttr -s 21 ".kit[17:20]"  1 1 18 1;
	setAttr -s 21 ".kot[13:20]"  1 18 18 18 18 1 18 1;
	setAttr -s 21 ".kix[17:20]"  1 1 1 1;
	setAttr -s 21 ".kiy[17:20]"  0 0 0 0;
	setAttr -s 21 ".kox[13:20]"  1 1 1 1 1 1 1 1;
	setAttr -s 21 ".koy[13:20]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Root_Control_rotateZ";
	rename -uid "923B20BF-5B46-9B5E-5960-6E94E81FCEFF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 0 5 0 10 0 15 0 22 0 26 0 30 0 35 0 40 0
		 45 0 52 0 56 0 60 0 70 0 75 0 82 0 86 0 90 0 105 0 114 0 124 0;
	setAttr -s 21 ".kit[17:20]"  1 1 18 1;
	setAttr -s 21 ".kot[13:20]"  1 18 18 18 18 1 18 1;
	setAttr -s 21 ".kix[17:20]"  1 1 1 1;
	setAttr -s 21 ".kiy[17:20]"  0 0 0 0;
	setAttr -s 21 ".kox[13:20]"  1 1 1 1 1 1 1 1;
	setAttr -s 21 ".koy[13:20]"  0 0 0 0 0 0 0 0;
createNode animCurveTU -n "Root_Control_scaleX";
	rename -uid "7A38A02A-D340-355A-76F7-24BC5A5D604B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 1 5 1 10 1 15 1 22 1 26 1 30 1 35 1 40 1
		 45 1 52 1 56 1 60 1 70 1 75 1 82 1 86 1 90 1 105 1 114 1 124 1;
	setAttr -s 21 ".kit[17:20]"  1 1 18 1;
	setAttr -s 21 ".kot[13:20]"  1 18 18 18 18 1 18 1;
	setAttr -s 21 ".kix[17:20]"  1 1 1 1;
	setAttr -s 21 ".kiy[17:20]"  0 0 0 0;
	setAttr -s 21 ".kox[13:20]"  1 1 1 1 1 1 1 1;
	setAttr -s 21 ".koy[13:20]"  0 0 0 0 0 0 0 0;
createNode animCurveTU -n "Root_Control_scaleY";
	rename -uid "31A86580-4542-EFAB-7BB7-15A9F97D52E4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 1 5 1 10 1 15 1 22 1 26 1 30 1 35 1 40 1
		 45 1 52 1 56 1 60 1 70 1 75 1 82 1 86 1 90 1 105 1 114 1 124 1;
	setAttr -s 21 ".kit[17:20]"  1 1 18 1;
	setAttr -s 21 ".kot[13:20]"  1 18 18 18 18 1 18 1;
	setAttr -s 21 ".kix[17:20]"  1 1 1 1;
	setAttr -s 21 ".kiy[17:20]"  0 0 0 0;
	setAttr -s 21 ".kox[13:20]"  1 1 1 1 1 1 1 1;
	setAttr -s 21 ".koy[13:20]"  0 0 0 0 0 0 0 0;
createNode animCurveTU -n "Root_Control_scaleZ";
	rename -uid "CA002E35-7142-B094-6BC8-3C81AE978853";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 1 5 1 10 1 15 1 22 1 26 1 30 1 35 1 40 1
		 45 1 52 1 56 1 60 1 70 1 75 1 82 1 86 1 90 1 105 1 114 1 124 1;
	setAttr -s 21 ".kit[17:20]"  1 1 18 1;
	setAttr -s 21 ".kot[13:20]"  1 18 18 18 18 1 18 1;
	setAttr -s 21 ".kix[17:20]"  1 1 1 1;
	setAttr -s 21 ".kiy[17:20]"  0 0 0 0;
	setAttr -s 21 ".kox[13:20]"  1 1 1 1 1 1 1 1;
	setAttr -s 21 ".koy[13:20]"  0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RightUpperArm_Control_visibility";
	rename -uid "8F9F5256-E743-F550-8E6B-7DB8ED57C5DE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1 5 1 10 1 15 1 22 1 26 1 30 1;
createNode animCurveTA -n "RightUpperArm_Control_rotateX";
	rename -uid "062CC49F-5E43-86DD-0E1D-569124148821";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 0 10 0 15 0 22 0 26 0 30 0;
createNode animCurveTA -n "RightUpperArm_Control_rotateY";
	rename -uid "A72EB3D5-2247-34FE-BD9A-88899EF34649";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 0 10 0 15 0 22 0 26 0 30 0;
createNode animCurveTA -n "RightUpperArm_Control_rotateZ";
	rename -uid "7B517BC4-114A-C1E1-052F-FA81F05D9025";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 5 0 10 0 15 0 22 0 26 0 30 0;
createNode animCurveTU -n "RightUpperArm_Control_scaleX";
	rename -uid "2CD98336-BE4E-A166-BF06-F5A7FF6FBC65";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1 5 1 10 1 15 1 22 1 26 1 30 1;
createNode animCurveTU -n "RightUpperArm_Control_scaleY";
	rename -uid "DDF4D568-294A-E0E4-8B80-BB91F6137DA0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1 5 1 10 1 15 1 22 1 26 1 30 1;
createNode animCurveTU -n "RightUpperArm_Control_scaleZ";
	rename -uid "017BA23A-DA45-85C4-947A-9B9205CAFB40";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1 5 1 10 1 15 1 22 1 26 1 30 1;
createNode animCurveTU -n "Spine1_Control_visibility";
	rename -uid "624F058D-3947-8E3D-893A-BCBC8CA3147E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 1 5 1 10 1 15 1 16 1 22 1 26 1 30 1 35 1
		 40 1 56 1 60 1 70 1 75 1 76 1 82 1 86 1 90 1 105 1 114 1 124 1;
	setAttr -s 21 ".kit[9:20]"  1 18 18 18 18 18 18 18 
		1 1 9 1;
	setAttr -s 21 ".kot[9:20]"  1 18 18 1 18 18 18 18 
		18 1 5 1;
	setAttr -s 21 ".kix[9:20]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 21 ".kiy[9:20]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 21 ".kox[9:20]"  1 1 1 1 1 1 1 1 1 1 0 1;
	setAttr -s 21 ".koy[9:20]"  0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Spine1_Control_rotateX";
	rename -uid "14AD5234-5943-CBA8-7AF2-599D698EE2CA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 25 ".ktv[0:24]"  0 0 5 1.1753117017685739 10 0 13 0.41632925185949882
		 15 -0.29408989115496242 16 -0.54273659121002316 20 1.586670797387574 22 1.1753117017685739
		 26 0 30 0 35 1.1753117017685739 40 0 56 0 60 -0.29408989115496242 70 22.270344799353865
		 73 22.686674051213366 75 21.976254908198904 76 21.727608208143842 80 23.857015596741437
		 82 23.445656501122439 86 22.270344799353865 90 22.270344799353865 105 -4.9205338508682299
		 114 46.021737464684712 124 0;
	setAttr -s 25 ".kit[11:24]"  1 18 18 18 18 18 18 18 
		18 18 1 1 18 1;
	setAttr -s 25 ".kot[11:24]"  1 18 18 1 18 18 18 18 
		18 18 18 1 18 1;
	setAttr -s 25 ".kix[11:24]"  0.99705337140983896 1 1 0.98513206758270211 
		1 0.99115275280929149 1 1 0.99392083331212377 1 1 1 1 1;
	setAttr -s 25 ".kiy[11:24]"  -0.076710980702071413 0 0 0.17179874685291049 
		0 -0.1327261112161571 0 0 -0.11009712579415278 0 0 0 0 0;
	setAttr -s 25 ".kox[11:24]"  0.99705337140983918 1 1 1 1 0.99115275280929138 
		1 1 0.99392083331212377 1 1 1 1 1;
	setAttr -s 25 ".koy[11:24]"  -0.076710980702071441 0 0 0 0 -0.1327261112161571 
		0 0 -0.11009712579415278 0 0 0 0 0;
createNode animCurveTA -n "Spine1_Control_rotateY";
	rename -uid "606411DE-A742-8ECB-9AE1-D487A7CAFA15";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 25 ".ktv[0:24]"  0 0 5 2.4661671412388322 10 0 13 -10.902674361264237
		 15 -9.0429078946841077 16 -7.1721039169293501 20 3.3293256406724225 22 2.4661671412388322
		 26 0 30 0 35 2.4661671412388322 40 -17.618724913676399 56 -17.618724913676399 60 -9.0429078946841077
		 70 0 73 -10.902674361264237 75 -9.0429078946841077 76 -7.1721039169293501 80 3.3293256406724225
		 82 2.4661671412388322 86 0 90 0 105 0 114 0 124 0;
	setAttr -s 25 ".kit[11:24]"  1 18 18 18 18 18 18 18 
		18 18 1 1 18 1;
	setAttr -s 25 ".kot[11:24]"  1 18 18 1 18 18 18 18 
		18 18 18 1 18 1;
	setAttr -s 25 ".kix[11:24]"  1 1 0.88461351669136046 1 1 0.88689498369999675 
		0.69432400893608071 1 0.97403538977490067 1 1 1 1 1;
	setAttr -s 25 ".kiy[11:24]"  0 0 0.46632491471820831 0 0 0.46197108988310348 
		0.71966253939949465 0 -0.22639580266881532 0 0 0 0 0;
	setAttr -s 25 ".kox[11:24]"  1 1 0.88461351669136035 0.84997295142546614 
		1 0.88689498369999675 0.69432400893608082 1 0.97403538977490078 1 1 1 1 1;
	setAttr -s 25 ".koy[11:24]"  0 0 0.46632491471820825 -0.52682632987074807 
		0 0.46197108988310354 0.71966253939949465 0 -0.22639580266881534 0 0 0 0 0;
createNode animCurveTA -n "Spine1_Control_rotateZ";
	rename -uid "A86DD54D-704F-76F9-FC15-F2881A4D812C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 25 ".ktv[0:24]"  0 0 5 -5.0542151746321879 10 0 13 8.9656790729280615
		 15 4.0818874382600914 16 1.0192286896678908 20 -6.823190485753452 22 -5.0542151746321879
		 26 0 30 0 35 -5.0542151746321879 40 0 56 0 60 4.0818874382600914 70 0 73 8.9656790729280615
		 75 4.0818874382600914 76 1.0192286896678908 80 -6.823190485753452 82 -5.0542151746321879
		 86 0 90 0 105 0 114 0 124 0;
	setAttr -s 25 ".kit[11:24]"  1 18 18 18 18 18 18 18 
		18 18 1 1 18 1;
	setAttr -s 25 ".kot[11:24]"  1 18 18 1 18 18 18 18 
		18 18 18 1 18 1;
	setAttr -s 25 ".kix[11:24]"  0.90209758046863753 1 1 1 1 0.66948964955909807 
		0.73828761058175829 1 0.90280511288340071 1 1 1 1 1;
	setAttr -s 25 ".kiy[11:24]"  0.43153210229672362 0 0 0 0 -0.74282138440760848 
		-0.67448602955248671 0 0.43004991355840289 0 0 0 0 0;
	setAttr -s 25 ".kox[11:24]"  0.90209758046863764 1 1 0.80611788767543235 
		1 0.66948964955909807 0.73828761058175829 1 0.90280511288340082 1 1 1 1 1;
	setAttr -s 25 ".koy[11:24]"  0.43153210229672362 0 0 0.59175497561887813 
		0 -0.74282138440760848 -0.67448602955248671 0 0.43004991355840294 0 0 0 0 0;
createNode animCurveTU -n "Spine1_Control_scaleX";
	rename -uid "7C5732B1-7F49-0441-3086-2F95DCD96B55";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 1 5 1 10 1 15 1 16 1 22 1 26 1 30 1 35 1
		 40 1 56 1 60 1 70 1 75 1 76 1 82 1 86 1 90 1 105 1 114 1 124 1;
	setAttr -s 21 ".kit[9:20]"  1 18 18 18 18 18 18 18 
		1 1 18 1;
	setAttr -s 21 ".kot[9:20]"  1 18 18 1 18 18 18 18 
		18 1 18 1;
	setAttr -s 21 ".kix[9:20]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 21 ".kiy[9:20]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 21 ".kox[9:20]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 21 ".koy[9:20]"  0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "Spine1_Control_scaleY";
	rename -uid "2A978AE8-1645-3A6A-D8C7-F79350CCFFD5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 1 5 1 10 1 15 1 16 1 22 1 26 1 30 1 35 1
		 40 1 56 1 60 1 70 1 75 1 76 1 82 1 86 1 90 1 105 1 114 1 124 1;
	setAttr -s 21 ".kit[9:20]"  1 18 18 18 18 18 18 18 
		1 1 18 1;
	setAttr -s 21 ".kot[9:20]"  1 18 18 1 18 18 18 18 
		18 1 18 1;
	setAttr -s 21 ".kix[9:20]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 21 ".kiy[9:20]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 21 ".kox[9:20]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 21 ".koy[9:20]"  0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "Spine1_Control_scaleZ";
	rename -uid "56E6DB19-484B-8E12-8209-2DB95C3BFF6F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 1 5 1 10 1 15 1 16 1 22 1 26 1 30 1 35 1
		 40 1 56 1 60 1 70 1 75 1 76 1 82 1 86 1 90 1 105 1 114 1 124 1;
	setAttr -s 21 ".kit[9:20]"  1 18 18 18 18 18 18 18 
		1 1 18 1;
	setAttr -s 21 ".kot[9:20]"  1 18 18 1 18 18 18 18 
		18 1 18 1;
	setAttr -s 21 ".kix[9:20]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 21 ".kiy[9:20]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 21 ".kox[9:20]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 21 ".koy[9:20]"  0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "Spine2_Control_visibility";
	rename -uid "952326C6-F241-681F-F00F-1E8F82761E2D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 1 5 1 10 1 18 1 26 1 30 1 35 1 40 1 56 1
		 60 1 70 1 78 1 86 1 90 1 105 1 114 1 124 1;
	setAttr -s 17 ".kit[3:16]"  9 18 18 18 1 18 18 18 
		9 18 1 1 9 1;
	setAttr -s 17 ".kot[3:16]"  5 18 18 18 1 18 18 1 
		5 18 18 1 5 1;
	setAttr -s 17 ".kix[7:16]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[7:16]"  0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[7:16]"  1 1 1 1 0 1 1 1 0 1;
	setAttr -s 17 ".koy[7:16]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Spine2_Control_rotateX";
	rename -uid "759B6A68-A848-A7B4-9546-4393C0DB5451";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 5 0 10 0 18 0 26 0 30 0 35 0 40 0 56 0
		 60 0 70 22.282241262367492 78 22.282241262367492 86 22.282241262367492 90 22.282241262367492
		 105 -11.798385097056993 114 35.029201970994919 118 -3.3610837773815034 124 0;
	setAttr -s 18 ".kit[7:17]"  1 18 18 18 18 18 1 1 
		18 18 1;
	setAttr -s 18 ".kot[7:17]"  1 18 18 1 18 18 18 1 
		18 18 1;
	setAttr -s 18 ".kix[7:17]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 18 ".kiy[7:17]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 18 ".kox[7:17]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 18 ".koy[7:17]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Spine2_Control_rotateY";
	rename -uid "C4C2F04A-CF40-94EA-E7AA-AD82922877D5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 5 0 10 0 18 0 26 0 30 0 35 0 40 -17.618724913676399
		 56 -17.618724913676399 60 0 70 0 78 0 86 0 90 0 105 0 114 0 124 0;
	setAttr -s 17 ".kit[7:16]"  1 18 18 18 18 18 1 1 
		18 1;
	setAttr -s 17 ".kot[7:16]"  1 18 18 1 18 18 18 1 
		18 1;
	setAttr -s 17 ".kix[7:16]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[7:16]"  0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[7:16]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[7:16]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Spine2_Control_rotateZ";
	rename -uid "DC9C8DFA-E343-7764-5CAF-1FAC2B24F722";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 5 0 10 0 18 0 26 0 30 0 35 0 40 0 56 0
		 60 0 70 0 78 0 86 0 90 0 105 0 114 0 124 0;
	setAttr -s 17 ".kit[7:16]"  1 18 18 18 18 18 1 1 
		18 1;
	setAttr -s 17 ".kot[7:16]"  1 18 18 1 18 18 18 1 
		18 1;
	setAttr -s 17 ".kix[7:16]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[7:16]"  0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[7:16]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[7:16]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "Spine2_Control_scaleX";
	rename -uid "1249B3CD-D34E-1DB9-C21B-8A9AD9C56709";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 1 5 1 10 1 18 1 26 1 30 1 35 1 40 1 56 1
		 60 1 70 1 78 1 86 1 90 1 105 1 114 1 124 1;
	setAttr -s 17 ".kit[7:16]"  1 18 18 18 18 18 1 1 
		18 1;
	setAttr -s 17 ".kot[7:16]"  1 18 18 1 18 18 18 1 
		18 1;
	setAttr -s 17 ".kix[7:16]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[7:16]"  0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[7:16]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[7:16]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "Spine2_Control_scaleY";
	rename -uid "3B820B6E-D74E-B84B-96F8-C188C0A77DC3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 1 5 1 10 1 18 1 26 1 30 1 35 1 40 1 56 1
		 60 1 70 1 78 1 86 1 90 1 105 1 114 1 124 1;
	setAttr -s 17 ".kit[7:16]"  1 18 18 18 18 18 1 1 
		18 1;
	setAttr -s 17 ".kot[7:16]"  1 18 18 1 18 18 18 1 
		18 1;
	setAttr -s 17 ".kix[7:16]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[7:16]"  0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[7:16]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[7:16]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "Spine2_Control_scaleZ";
	rename -uid "50D43D14-1F45-568C-26EF-73B7AAA099C3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 1 5 1 10 1 18 1 26 1 30 1 35 1 40 1 56 1
		 60 1 70 1 78 1 86 1 90 1 105 1 114 1 124 1;
	setAttr -s 17 ".kit[7:16]"  1 18 18 18 18 18 1 1 
		18 1;
	setAttr -s 17 ".kot[7:16]"  1 18 18 1 18 18 18 1 
		18 1;
	setAttr -s 17 ".kix[7:16]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[7:16]"  0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[7:16]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[7:16]"  0 0 0 0 0 0 0 0 0 0;
createNode reference -n "MkIIRN";
	rename -uid "40DD3738-B94A-8E7C-2ED6-549A84FF3505";
	setAttr -s 11 ".phl";
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
	setAttr ".ed" -type "dataReferenceEdits" 
		"MkIIRN"
		"MkIIRN" 0
		"MkIIRN" 13
		0 "|MkIIRNfosterParent1|Weapon_MkII1_parentConstraint1" "|MkII:Weapon_MkII1" 
		"-s -r "
		2 "|MkII:Weapon_MkII1" "scale" " -type \"double3\" 1 1 1"
		5 4 "MkIIRN" "|MkII:Weapon_MkII1.translateX" "MkIIRN.placeHolderList[1]" 
		""
		5 4 "MkIIRN" "|MkII:Weapon_MkII1.translateY" "MkIIRN.placeHolderList[2]" 
		""
		5 4 "MkIIRN" "|MkII:Weapon_MkII1.translateZ" "MkIIRN.placeHolderList[3]" 
		""
		5 4 "MkIIRN" "|MkII:Weapon_MkII1.rotateX" "MkIIRN.placeHolderList[4]" 
		""
		5 4 "MkIIRN" "|MkII:Weapon_MkII1.rotateY" "MkIIRN.placeHolderList[5]" 
		""
		5 4 "MkIIRN" "|MkII:Weapon_MkII1.rotateZ" "MkIIRN.placeHolderList[6]" 
		""
		5 3 "MkIIRN" "|MkII:Weapon_MkII1.rotateOrder" "MkIIRN.placeHolderList[7]" 
		""
		5 3 "MkIIRN" "|MkII:Weapon_MkII1.parentInverseMatrix" "MkIIRN.placeHolderList[8]" 
		""
		5 3 "MkIIRN" "|MkII:Weapon_MkII1.rotatePivot" "MkIIRN.placeHolderList[9]" 
		""
		5 3 "MkIIRN" "|MkII:Weapon_MkII1.rotatePivotTranslate" "MkIIRN.placeHolderList[10]" 
		""
		5 4 "MkIIRN" "|MkII:Weapon_MkII1.drawOverride" "MkIIRN.placeHolderList[11]" 
		"";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode animCurveTL -n "Hips_Control_translateX";
	rename -uid "7B510578-D84D-D3D9-B6FD-C78CD0E95E88";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  5 0 10 0 14 0 18 0 22 0 26 0 30 0 35 0 40 0
		 44 0 48 0 52 0 56 0 60 0 70 0 74 0 78 0 82 0 86 0 90 0 105 0 114 0 124 0;
	setAttr -s 23 ".kit[19:22]"  1 1 18 1;
	setAttr -s 23 ".kot[14:22]"  1 18 18 18 18 18 1 18 
		1;
	setAttr -s 23 ".kix[19:22]"  1 1 1 1;
	setAttr -s 23 ".kiy[19:22]"  0 0 0 0;
	setAttr -s 23 ".kox[14:22]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".koy[14:22]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Hips_Control_translateY";
	rename -uid "AD864590-EE49-EE89-3F9A-E69A12ED42A9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  5 -4.25435703918256 10 -14.281483956597226
		 14 -4.25435703918256 18 -14.281483956597226 22 -4.25435703918256 26 -14.281483956597226
		 30 -7.8310227218069866 35 -4.25435703918256 40 -14.281483956597226 44 -4.25435703918256
		 48 -14.281483956597226 52 -4.25435703918256 56 -14.281483956597226 60 -7.8310227218069866
		 70 -30.387690424711852 74 -20.360563507297186 78 -30.387690424711852 82 -20.360563507297186
		 86 -30.387690424711852 90 -23.937229189921613 105 -19.590885428976382 111 -19.042104049273139
		 114 -43.750185632389389 118 -72.494420727917031 120 -72.763962304137536 124 -30.387690424711852;
	setAttr -s 26 ".kit[19:25]"  1 1 18 18 18 18 1;
	setAttr -s 26 ".kot[14:25]"  1 18 18 18 18 18 1 18 
		18 18 18 1;
	setAttr -s 26 ".kix[19:25]"  0.037372422899064159 1 1 0.0054564954862849641 
		0.10251270458792239 1 1;
	setAttr -s 26 ".kiy[19:25]"  0.99930140698722791 0 0 -0.99998511321769601 
		-0.99473169518120286 0 0;
	setAttr -s 26 ".kox[14:25]"  1 1 1 1 1 0.073127840964173699 1 1 0.0054564954862849641 
		0.10251270458792239 1 1;
	setAttr -s 26 ".koy[14:25]"  0 0 0 0 0 0.99732257513600808 0 0 -0.9999851132176959 
		-0.99473169518120275 0 0;
createNode animCurveTL -n "Hips_Control_translateZ";
	rename -uid "FE98AC6B-B544-3504-4972-71983548FD3E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  5 0.047039538172185758 10 -7.0079273316790376
		 14 0.047039538172185758 18 -7.0079273316790376 22 0.047039538172185758 26 -7.0079273316790376
		 30 2.0398875869225357 35 0.047039538172185758 40 -7.0079273316790376 44 0.047039538172185758
		 48 -7.0079273316790376 52 0.047039538172185758 56 -7.0079273316790376 60 2.0398875869225357
		 70 6.4852807384611317 74 13.54024760831237 78 6.4852807384611317 82 13.54024760831237
		 86 6.4852807384611317 90 15.53309565706272 105 6.4852807384611317 114 46.978822517085696
		 118 28.839462473971572 124 -24.271095118254429;
	setAttr -s 24 ".kit[19:23]"  1 1 18 18 1;
	setAttr -s 24 ".kot[14:23]"  1 18 18 18 18 18 1 18 
		18 1;
	setAttr -s 24 ".kix[19:23]"  1 1 1 0.0058478599830258512 1;
	setAttr -s 24 ".kiy[19:23]"  0 0 0 -0.99998290112062349 0;
	setAttr -s 24 ".kox[14:23]"  1 1 1 1 1 1 1 1 0.0058478599830258521 1;
	setAttr -s 24 ".koy[14:23]"  0 0 0 0 0 0 0 0 -0.99998290112062371 0;
createNode animCurveTA -n "Hips_Control_rotateX";
	rename -uid "A33924AF-AF4E-B577-75BE-408BED4A92E5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  5 40.073343790824588 10 39.150526938031128
		 14 38.214768494713098 18 39.150526938031128 22 40.073343790824588 26 39.150526938031128
		 30 38.307933549963792 35 40.073343790824588 40 32.611597337079431 44 31.675838893761405
		 48 32.611597337079431 52 33.534414189872891 56 32.611597337079431 60 38.307933549963792
		 70 39.150526938031128 74 38.214768494713098 78 39.150526938031128 82 40.073343790824588
		 86 39.150526938031128 90 38.307933549963792 105 62.238703202393928 114 109.53831429244796
		 118 240.59828032698911 124 378.1425413965618;
	setAttr -s 24 ".kit[19:23]"  1 1 18 18 1;
	setAttr -s 24 ".kot[14:23]"  1 18 18 18 18 18 1 18 
		18 1;
	setAttr -s 24 ".kix[19:23]"  1 0.99575491648538694 0.17142779978093842 
		0.088529893677275998 0.99575491648538694;
	setAttr -s 24 ".kiy[19:23]"  0 -0.092044262695618093 0.98519668567361018 
		0.99607352034149077 -0.092044262695618093;
	setAttr -s 24 ".kox[14:23]"  0.99627956599893164 1 0.99529828556900835 
		1 0.99575491648538694 1 0.99575491648538694 0.17142779978093844 0.088529893677275998 
		0.99575491648538694;
	setAttr -s 24 ".koy[14:23]"  -0.086180197104558598 0 0.096857228658437378 
		0 -0.092044262695618079 0 -0.092044262695618079 0.9851966856736103 0.99607352034149077 
		-0.092044262695618079;
createNode animCurveTA -n "Hips_Control_rotateY";
	rename -uid "5CA5F9A4-734C-396D-E3CB-1AB4DA87EF8E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  5 -11.567949219946325 10 0 14 11.387119993290941
		 18 0 22 -11.567949219946325 26 0 30 10.977860793921815 35 -11.567949219946325 40 0
		 44 11.387119993290941 48 0 52 -11.567949219946325 56 0 60 10.977860793921815 70 0
		 74 11.387119993290941 78 0 82 -11.567949219946325 86 0 90 10.977860793921815 105 0
		 114 0 124 0;
	setAttr -s 23 ".kit[19:22]"  1 1 18 1;
	setAttr -s 23 ".kot[14:22]"  1 18 18 18 18 18 1 18 
		1;
	setAttr -s 23 ".kix[19:22]"  1 0.64636360149135241 1 0.64636360149135241;
	setAttr -s 23 ".kiy[19:22]"  0 0.76302955032366071 0 0.76302955032366071;
	setAttr -s 23 ".kox[14:22]"  0.68335759253595374 1 0.63957881960053375 
		1 0.64636360149135252 1 0.64636360149135252 1 0.64636360149135252;
	setAttr -s 23 ".koy[14:22]"  0.73008383129847854 0 -0.76872552547602302 
		0 0.76302955032366082 0 0.76302955032366082 0 0.76302955032366082;
createNode animCurveTA -n "Hips_Control_rotateZ";
	rename -uid "873542D7-C04E-0FB0-0E1C-B3BD3E83F7DF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  5 2.2763035284925297 10 0 14 -1.7610202024788499
		 18 0 22 2.2763035284925297 26 0 30 -2.0388577817832512 35 2.2763035284925297 40 0
		 44 -1.7610202024788499 48 0 52 2.2763035284925297 56 0 60 -2.0388577817832512 70 0
		 74 -1.7610202024788499 78 0 82 2.2763035284925297 86 0 90 -2.0388577817832512 105 0
		 114 0 124 0;
	setAttr -s 23 ".kit[19:22]"  1 1 18 1;
	setAttr -s 23 ".kot[14:22]"  1 18 18 18 18 18 1 18 
		1;
	setAttr -s 23 ".kix[19:22]"  1 0.97541273027008102 1 0.97541273027008102;
	setAttr -s 23 ".kiy[19:22]"  0 -0.22038603773167259 0 -0.22038603773167259;
	setAttr -s 23 ".kox[14:22]"  0.98279991173907189 1 0.97837835589338207 
		1 0.97541273027008091 1 0.97541273027008091 1 0.97541273027008091;
	setAttr -s 23 ".koy[14:22]"  -0.18467358632374184 0 0.20682309522720821 
		0 -0.22038603773167259 0 -0.22038603773167259 0 -0.22038603773167259;
createNode animCurveTU -n "Hips_Control_scaleX";
	rename -uid "013E26E1-7F4B-7FBC-FEF9-C6ACCDC6F8A6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  5 1 10 1 14 1 18 1 22 1 26 1 30 1 35 1 40 1
		 44 1 48 1 52 1 56 1 60 1 70 1 74 1 78 1 82 1 86 1 90 1 105 1 114 1 124 1;
	setAttr -s 23 ".kit[19:22]"  1 1 18 1;
	setAttr -s 23 ".kot[14:22]"  1 18 18 18 18 18 1 18 
		1;
	setAttr -s 23 ".kix[19:22]"  1 1 1 1;
	setAttr -s 23 ".kiy[19:22]"  0 0 0 0;
	setAttr -s 23 ".kox[14:22]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".koy[14:22]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "Hips_Control_scaleY";
	rename -uid "FB056CD0-AD42-4AE9-5E3D-0A8F0CBD00D8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  5 1 10 1 14 1 18 1 22 1 26 1 30 1 35 1 40 1
		 44 1 48 1 52 1 56 1 60 1 70 1 74 1 78 1 82 1 86 1 90 1 105 1 114 1 124 1;
	setAttr -s 23 ".kit[19:22]"  1 1 18 1;
	setAttr -s 23 ".kot[14:22]"  1 18 18 18 18 18 1 18 
		1;
	setAttr -s 23 ".kix[19:22]"  1 1 1 1;
	setAttr -s 23 ".kiy[19:22]"  0 0 0 0;
	setAttr -s 23 ".kox[14:22]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".koy[14:22]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "Hips_Control_scaleZ";
	rename -uid "692D2592-9A45-27F6-EA2A-358699DD2D10";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  5 1 10 1 13 1 18 1 22 1 26 1 30 1 35 1 40 1
		 43 1 48 1 52 1 56 1 60 1 70 1 73 1 78 1 82 1 86 1 90 1 105 1 114 1 124 1;
	setAttr -s 23 ".kit[19:22]"  1 1 18 1;
	setAttr -s 23 ".kot[14:22]"  1 18 18 18 18 18 1 18 
		1;
	setAttr -s 23 ".kix[19:22]"  1 1 1 1;
	setAttr -s 23 ".kiy[19:22]"  0 0 0 0;
	setAttr -s 23 ".kox[14:22]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".koy[14:22]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LeftFingers_Control_Grip";
	rename -uid "EE852D16-E24F-2F99-9E40-3BADEE70A1C8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  5 0.6 10 0.6 15 0.6 22 0.6 26 0.6 30 0.6
		 35 0.6 40 0.6 45 0.6 52 0.6 56 0.6 60 0.6 70 0.6 75 0.6 82 0.6 86 0.6 90 0.6 105 0.6
		 114 0.6 124 0.6;
	setAttr -s 20 ".kit[16:19]"  1 1 18 1;
	setAttr -s 20 ".kot[12:19]"  1 18 18 18 18 1 18 1;
	setAttr -s 20 ".kix[16:19]"  1 1 1 1;
	setAttr -s 20 ".kiy[16:19]"  0 0 0 0;
	setAttr -s 20 ".kox[12:19]"  1 1 1 1 1 1 1 1;
	setAttr -s 20 ".koy[12:19]"  0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RightFinders_Control_Grip";
	rename -uid "56DF2E42-3141-53B3-5749-A0AB285E6A5E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  5 1 10 1 15 1 22 1 26 1 30 1 35 1 40 1 45 1
		 52 1 56 1 60 1 70 1 75 1 82 1 86 1 90 1 105 1 114 1 124 1;
	setAttr -s 20 ".kit[16:19]"  1 1 18 1;
	setAttr -s 20 ".kot[12:19]"  1 18 18 18 18 1 18 1;
	setAttr -s 20 ".kix[16:19]"  1 1 1 1;
	setAttr -s 20 ".kiy[16:19]"  0 0 0 0;
	setAttr -s 20 ".kox[12:19]"  1 1 1 1 1 1 1 1;
	setAttr -s 20 ".koy[12:19]"  0 0 0 0 0 0 0 0;
createNode animCurveTU -n "Hips_Control_visibility";
	rename -uid "0B1FA8E6-4345-1EB0-38DA-98BE9F44D3F4";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  86 1 105 1 114 1 124 1;
	setAttr -s 4 ".kit[0:3]"  9 9 9 1;
	setAttr -s 4 ".kix[3]"  1;
	setAttr -s 4 ".kiy[3]"  0;
select -ne :time1;
	setAttr -av -k on ".cch";
	setAttr -av -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".o" 107;
	setAttr -av -k on ".unw" 107;
	setAttr -av -k on ".etw";
	setAttr -av -k on ".tps";
	setAttr -av -k on ".tms";
select -ne :hardwareRenderingGlobals;
	setAttr -av -k on ".ihi";
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr -av ".ta";
	setAttr -av ".tq";
	setAttr ".aoon" yes;
	setAttr -av ".aoam";
	setAttr -av ".aora";
	setAttr -av ".hfe";
	setAttr -av ".mbe";
	setAttr -av -k on ".mbsof";
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 8 ".st";
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
	setAttr -s 10 ".s";
select -ne :postProcessList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".u";
select -ne :defaultRenderingList1;
	setAttr -k on ".ihi";
	setAttr -s 3 ".r";
select -ne :lightList1;
	setAttr -s 3 ".l";
select -ne :defaultTextureList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".tx";
select -ne :initialShadingGroup;
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
	setAttr -k on ".ro" yes;
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
	setAttr -k on ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".macc";
	setAttr -k on ".macd";
	setAttr -k on ".macq";
	setAttr -k on ".mcfr";
	setAttr -cb on ".ifg";
	setAttr -k on ".clip";
	setAttr -k on ".edm";
	setAttr ".ren" -type "string" "arnold";
	setAttr -av -k on ".esr";
	setAttr -k on ".ors";
	setAttr -cb on ".sdf";
	setAttr -av ".outf";
	setAttr -k on ".gama";
	setAttr -cb on ".ar";
	setAttr -av ".bfs";
	setAttr -cb on ".me";
	setAttr -cb on ".se";
	setAttr -k on ".be";
	setAttr -cb on ".ep";
	setAttr -k on ".fec";
	setAttr -k on ".ofc";
	setAttr -cb on ".ofe";
	setAttr -cb on ".efe";
	setAttr -cb on ".oft";
	setAttr -cb on ".umfn";
	setAttr -cb on ".ufe";
	setAttr -cb on ".peie";
	setAttr -k on ".comp";
	setAttr -k on ".cth";
	setAttr -k on ".soll";
	setAttr -k on ".rd";
	setAttr -k on ".lp";
	setAttr -av -k on ".sp";
	setAttr -k on ".shs";
	setAttr -k on ".lpr";
	setAttr -cb on ".gv";
	setAttr -cb on ".sv";
	setAttr -k on ".mm";
	setAttr -k on ".npu";
	setAttr -k on ".itf";
	setAttr -k on ".shp";
	setAttr -cb on ".isp";
	setAttr -k on ".uf";
	setAttr -k on ".oi";
	setAttr -k on ".rut";
	setAttr -cb on ".mb";
	setAttr -av -k on ".mbf";
	setAttr -k on ".afp";
	setAttr -k on ".pfb";
	setAttr -k on ".pram";
	setAttr -k on ".poam";
	setAttr -k on ".prlm";
	setAttr -k on ".polm";
	setAttr -cb on ".prm";
	setAttr -cb on ".pom";
	setAttr -cb on ".pfrm";
	setAttr -cb on ".pfom";
	setAttr -av -k on ".bll";
	setAttr -k on ".bls";
	setAttr -av -k on ".smv";
	setAttr -k on ".ubc";
	setAttr -k on ".mbc";
	setAttr -cb on ".mbt";
	setAttr -k on ".udbx";
	setAttr -k on ".smc";
	setAttr -k on ".kmv";
	setAttr -cb on ".isl";
	setAttr -cb on ".ism";
	setAttr -cb on ".imb";
	setAttr -k on ".rlen";
	setAttr -av -k on ".frts";
	setAttr -k on ".tlwd";
	setAttr -k on ".tlht";
	setAttr -k on ".jfc";
	setAttr -cb on ".rsb";
	setAttr -k on ".ope";
	setAttr -k on ".oppf";
	setAttr -cb on ".hbl";
select -ne :defaultResolution;
	setAttr -av -k on ".cch";
	setAttr -av -k on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -k on ".bnm";
	setAttr -av -k on ".w";
	setAttr -av -k on ".h";
	setAttr -av -k on ".pa" 1;
	setAttr -av -k on ".al";
	setAttr -av -k on ".dar";
	setAttr -av -k on ".ldar";
	setAttr -av -k on ".dpi";
	setAttr -av -k on ".off";
	setAttr -av -k on ".fld";
	setAttr -av -k on ".zsl";
	setAttr -av -k on ".isu";
	setAttr -av -k on ".pdu";
select -ne :defaultLightSet;
	setAttr -s 3 ".dsm";
select -ne :hardwareRenderGlobals;
	setAttr -k on ".cch";
	setAttr -k on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k off -cb on ".ctrs" 256;
	setAttr -av -k off -cb on ".btrs" 512;
	setAttr -k off -cb on ".fbfm";
	setAttr -k off -cb on ".ehql";
	setAttr -k off -cb on ".eams";
	setAttr -k off -cb on ".eeaa";
	setAttr -k off -cb on ".engm";
	setAttr -k off -cb on ".mes";
	setAttr -k off -cb on ".emb";
	setAttr -av -k off -cb on ".mbbf";
	setAttr -k off -cb on ".mbs";
	setAttr -k off -cb on ".trm";
	setAttr -k off -cb on ".tshc";
	setAttr -k off -cb on ".enpt";
	setAttr -k off -cb on ".clmt";
	setAttr -k off -cb on ".tcov";
	setAttr -k off -cb on ".lith";
	setAttr -k off -cb on ".sobc";
	setAttr -k off -cb on ".cuth";
	setAttr -k off -cb on ".hgcd";
	setAttr -k off -cb on ".hgci";
	setAttr -k off -cb on ".mgcs";
	setAttr -k off -cb on ".twa";
	setAttr -k off -cb on ".twz";
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
connectAttr "Root_Control_translateX.o" "SquaddieRN.phl[110]";
connectAttr "Root_Control_translateY.o" "SquaddieRN.phl[111]";
connectAttr "Root_Control_translateZ.o" "SquaddieRN.phl[112]";
connectAttr "Root_Control_rotateX.o" "SquaddieRN.phl[113]";
connectAttr "Root_Control_rotateY.o" "SquaddieRN.phl[114]";
connectAttr "Root_Control_rotateZ.o" "SquaddieRN.phl[115]";
connectAttr "Root_Control_visibility.o" "SquaddieRN.phl[116]";
connectAttr "Root_Control_scaleX.o" "SquaddieRN.phl[117]";
connectAttr "Root_Control_scaleY.o" "SquaddieRN.phl[118]";
connectAttr "Root_Control_scaleZ.o" "SquaddieRN.phl[119]";
connectAttr "RootMotion_Control_translateX.o" "SquaddieRN.phl[120]";
connectAttr "RootMotion_Control_translateY.o" "SquaddieRN.phl[121]";
connectAttr "RootMotion_Control_translateZ.o" "SquaddieRN.phl[122]";
connectAttr "RootMotion_Control_rotateX.o" "SquaddieRN.phl[123]";
connectAttr "RootMotion_Control_rotateY.o" "SquaddieRN.phl[124]";
connectAttr "RootMotion_Control_rotateZ.o" "SquaddieRN.phl[125]";
connectAttr "RootMotion_Control_scaleX.o" "SquaddieRN.phl[126]";
connectAttr "RootMotion_Control_scaleY.o" "SquaddieRN.phl[127]";
connectAttr "RootMotion_Control_scaleZ.o" "SquaddieRN.phl[128]";
connectAttr "RootMotion_Control_visibility.o" "SquaddieRN.phl[129]";
connectAttr "Hips_Control_translateX.o" "SquaddieRN.phl[130]";
connectAttr "Hips_Control_translateY.o" "SquaddieRN.phl[131]";
connectAttr "Hips_Control_translateZ.o" "SquaddieRN.phl[132]";
connectAttr "Hips_Control_rotateX.o" "SquaddieRN.phl[133]";
connectAttr "Hips_Control_rotateY.o" "SquaddieRN.phl[134]";
connectAttr "Hips_Control_rotateZ.o" "SquaddieRN.phl[135]";
connectAttr "Hips_Control_scaleX.o" "SquaddieRN.phl[136]";
connectAttr "Hips_Control_scaleY.o" "SquaddieRN.phl[137]";
connectAttr "Hips_Control_scaleZ.o" "SquaddieRN.phl[138]";
connectAttr "Hips_Control_visibility.o" "SquaddieRN.phl[139]";
connectAttr "Spine1_Control_translateX.o" "SquaddieRN.phl[140]";
connectAttr "Spine1_Control_translateY.o" "SquaddieRN.phl[141]";
connectAttr "Spine1_Control_translateZ.o" "SquaddieRN.phl[142]";
connectAttr "Spine1_Control_rotateX.o" "SquaddieRN.phl[143]";
connectAttr "Spine1_Control_rotateY.o" "SquaddieRN.phl[144]";
connectAttr "Spine1_Control_rotateZ.o" "SquaddieRN.phl[145]";
connectAttr "Spine1_Control_scaleX.o" "SquaddieRN.phl[146]";
connectAttr "Spine1_Control_scaleY.o" "SquaddieRN.phl[147]";
connectAttr "Spine1_Control_scaleZ.o" "SquaddieRN.phl[148]";
connectAttr "Spine1_Control_visibility.o" "SquaddieRN.phl[149]";
connectAttr "Spine2_Control_translateX.o" "SquaddieRN.phl[150]";
connectAttr "Spine2_Control_translateY.o" "SquaddieRN.phl[151]";
connectAttr "Spine2_Control_translateZ.o" "SquaddieRN.phl[152]";
connectAttr "Spine2_Control_rotateX.o" "SquaddieRN.phl[153]";
connectAttr "Spine2_Control_rotateY.o" "SquaddieRN.phl[154]";
connectAttr "Spine2_Control_rotateZ.o" "SquaddieRN.phl[155]";
connectAttr "Spine2_Control_scaleX.o" "SquaddieRN.phl[156]";
connectAttr "Spine2_Control_scaleY.o" "SquaddieRN.phl[157]";
connectAttr "Spine2_Control_scaleZ.o" "SquaddieRN.phl[158]";
connectAttr "Spine2_Control_visibility.o" "SquaddieRN.phl[159]";
connectAttr "RightShoulder_Control_rotateX.o" "SquaddieRN.phl[160]";
connectAttr "RightShoulder_Control_rotateY.o" "SquaddieRN.phl[161]";
connectAttr "RightShoulder_Control_rotateZ.o" "SquaddieRN.phl[162]";
connectAttr "RightShoulder_Control_translateX.o" "SquaddieRN.phl[163]";
connectAttr "RightShoulder_Control_translateY.o" "SquaddieRN.phl[164]";
connectAttr "RightShoulder_Control_translateZ.o" "SquaddieRN.phl[165]";
connectAttr "RightShoulder_Control_visibility.o" "SquaddieRN.phl[166]";
connectAttr "RightShoulder_Control_scaleX.o" "SquaddieRN.phl[167]";
connectAttr "RightShoulder_Control_scaleY.o" "SquaddieRN.phl[168]";
connectAttr "RightShoulder_Control_scaleZ.o" "SquaddieRN.phl[169]";
connectAttr "Neck_Control_translateX.o" "SquaddieRN.phl[170]";
connectAttr "Neck_Control_translateY.o" "SquaddieRN.phl[171]";
connectAttr "Neck_Control_translateZ.o" "SquaddieRN.phl[172]";
connectAttr "Neck_Control_rotateX.o" "SquaddieRN.phl[173]";
connectAttr "Neck_Control_rotateY.o" "SquaddieRN.phl[174]";
connectAttr "Neck_Control_rotateZ.o" "SquaddieRN.phl[175]";
connectAttr "Neck_Control_scaleX.o" "SquaddieRN.phl[176]";
connectAttr "Neck_Control_scaleY.o" "SquaddieRN.phl[177]";
connectAttr "Neck_Control_scaleZ.o" "SquaddieRN.phl[178]";
connectAttr "Neck_Control_visibility.o" "SquaddieRN.phl[179]";
connectAttr "Head_Control_translateX.o" "SquaddieRN.phl[180]";
connectAttr "Head_Control_translateY.o" "SquaddieRN.phl[181]";
connectAttr "Head_Control_translateZ.o" "SquaddieRN.phl[182]";
connectAttr "Head_Control_rotateX.o" "SquaddieRN.phl[183]";
connectAttr "Head_Control_rotateY.o" "SquaddieRN.phl[184]";
connectAttr "Head_Control_rotateZ.o" "SquaddieRN.phl[185]";
connectAttr "Head_Control_scaleX.o" "SquaddieRN.phl[186]";
connectAttr "Head_Control_scaleY.o" "SquaddieRN.phl[187]";
connectAttr "Head_Control_scaleZ.o" "SquaddieRN.phl[188]";
connectAttr "Head_Control_visibility.o" "SquaddieRN.phl[189]";
connectAttr "LeftShoulder_Control_rotateX.o" "SquaddieRN.phl[190]";
connectAttr "LeftShoulder_Control_rotateY.o" "SquaddieRN.phl[191]";
connectAttr "LeftShoulder_Control_rotateZ.o" "SquaddieRN.phl[192]";
connectAttr "LeftShoulder_Control_translateX.o" "SquaddieRN.phl[193]";
connectAttr "LeftShoulder_Control_translateY.o" "SquaddieRN.phl[194]";
connectAttr "LeftShoulder_Control_translateZ.o" "SquaddieRN.phl[195]";
connectAttr "LeftShoulder_Control_visibility.o" "SquaddieRN.phl[196]";
connectAttr "LeftShoulder_Control_scaleX.o" "SquaddieRN.phl[197]";
connectAttr "LeftShoulder_Control_scaleY.o" "SquaddieRN.phl[198]";
connectAttr "LeftShoulder_Control_scaleZ.o" "SquaddieRN.phl[199]";
connectAttr "RightElbow_Control_translateX.o" "SquaddieRN.phl[200]";
connectAttr "RightElbow_Control_translateY.o" "SquaddieRN.phl[201]";
connectAttr "RightElbow_Control_translateZ.o" "SquaddieRN.phl[202]";
connectAttr "RightElbow_Control_rotateX.o" "SquaddieRN.phl[203]";
connectAttr "RightElbow_Control_rotateY.o" "SquaddieRN.phl[204]";
connectAttr "RightElbow_Control_rotateZ.o" "SquaddieRN.phl[205]";
connectAttr "RightElbow_Control_scaleX.o" "SquaddieRN.phl[206]";
connectAttr "RightElbow_Control_scaleY.o" "SquaddieRN.phl[207]";
connectAttr "RightElbow_Control_scaleZ.o" "SquaddieRN.phl[208]";
connectAttr "RightElbow_Control_visibility.o" "SquaddieRN.phl[209]";
connectAttr "LeftElbow_Control_translateX.o" "SquaddieRN.phl[210]";
connectAttr "LeftElbow_Control_translateY.o" "SquaddieRN.phl[211]";
connectAttr "LeftElbow_Control_translateZ.o" "SquaddieRN.phl[212]";
connectAttr "LeftElbow_Control_rotateX.o" "SquaddieRN.phl[213]";
connectAttr "LeftElbow_Control_rotateY.o" "SquaddieRN.phl[214]";
connectAttr "LeftElbow_Control_rotateZ.o" "SquaddieRN.phl[215]";
connectAttr "LeftElbow_Control_scaleX.o" "SquaddieRN.phl[216]";
connectAttr "LeftElbow_Control_scaleY.o" "SquaddieRN.phl[217]";
connectAttr "LeftElbow_Control_scaleZ.o" "SquaddieRN.phl[218]";
connectAttr "LeftElbow_Control_visibility.o" "SquaddieRN.phl[219]";
connectAttr "RightArmTwist_Control_translateX.o" "SquaddieRN.phl[220]";
connectAttr "RightArmTwist_Control_translateY.o" "SquaddieRN.phl[221]";
connectAttr "RightArmTwist_Control_translateZ.o" "SquaddieRN.phl[222]";
connectAttr "RightArmTwist_Control_rotateX.o" "SquaddieRN.phl[223]";
connectAttr "RightArmTwist_Control_rotateY.o" "SquaddieRN.phl[224]";
connectAttr "RightArmTwist_Control_rotateZ.o" "SquaddieRN.phl[225]";
connectAttr "RightArmTwist_Control_visibility.o" "SquaddieRN.phl[226]";
connectAttr "RightArmTwist_Control_scaleX.o" "SquaddieRN.phl[227]";
connectAttr "RightArmTwist_Control_scaleY.o" "SquaddieRN.phl[228]";
connectAttr "RightArmTwist_Control_scaleZ.o" "SquaddieRN.phl[229]";
connectAttr "LeftArmTwist_Control_translateX.o" "SquaddieRN.phl[230]";
connectAttr "LeftArmTwist_Control_translateY.o" "SquaddieRN.phl[231]";
connectAttr "LeftArmTwist_Control_translateZ.o" "SquaddieRN.phl[232]";
connectAttr "LeftArmTwist_Control_rotateX.o" "SquaddieRN.phl[233]";
connectAttr "LeftArmTwist_Control_rotateY.o" "SquaddieRN.phl[234]";
connectAttr "LeftArmTwist_Control_rotateZ.o" "SquaddieRN.phl[235]";
connectAttr "LeftArmTwist_Control_visibility.o" "SquaddieRN.phl[236]";
connectAttr "LeftArmTwist_Control_scaleX.o" "SquaddieRN.phl[237]";
connectAttr "LeftArmTwist_Control_scaleY.o" "SquaddieRN.phl[238]";
connectAttr "LeftArmTwist_Control_scaleZ.o" "SquaddieRN.phl[239]";
connectAttr "RightHand_Control_rotateX.o" "SquaddieRN.phl[240]";
connectAttr "RightHand_Control_rotateY.o" "SquaddieRN.phl[241]";
connectAttr "RightHand_Control_rotateZ.o" "SquaddieRN.phl[242]";
connectAttr "RightHand_Control_translateX.o" "SquaddieRN.phl[243]";
connectAttr "RightHand_Control_translateY.o" "SquaddieRN.phl[244]";
connectAttr "RightHand_Control_translateZ.o" "SquaddieRN.phl[245]";
connectAttr "RightHand_Control_visibility.o" "SquaddieRN.phl[246]";
connectAttr "RightHand_Control_scaleX.o" "SquaddieRN.phl[247]";
connectAttr "RightHand_Control_scaleY.o" "SquaddieRN.phl[248]";
connectAttr "RightHand_Control_scaleZ.o" "SquaddieRN.phl[249]";
connectAttr "RightFinders_Control_Grip.o" "SquaddieRN.phl[250]";
connectAttr "RightFinders_Control_translateX.o" "SquaddieRN.phl[251]";
connectAttr "RightFinders_Control_translateY.o" "SquaddieRN.phl[252]";
connectAttr "RightFinders_Control_translateZ.o" "SquaddieRN.phl[253]";
connectAttr "RightFinders_Control_rotateX.o" "SquaddieRN.phl[254]";
connectAttr "RightFinders_Control_rotateY.o" "SquaddieRN.phl[255]";
connectAttr "RightFinders_Control_rotateZ.o" "SquaddieRN.phl[256]";
connectAttr "RightFinders_Control_visibility.o" "SquaddieRN.phl[257]";
connectAttr "RightFinders_Control_scaleX.o" "SquaddieRN.phl[258]";
connectAttr "RightFinders_Control_scaleY.o" "SquaddieRN.phl[259]";
connectAttr "RightFinders_Control_scaleZ.o" "SquaddieRN.phl[260]";
connectAttr "LeftHand_Control_rotateX.o" "SquaddieRN.phl[261]";
connectAttr "LeftHand_Control_rotateY.o" "SquaddieRN.phl[262]";
connectAttr "LeftHand_Control_rotateZ.o" "SquaddieRN.phl[263]";
connectAttr "LeftHand_Control_translateX.o" "SquaddieRN.phl[264]";
connectAttr "LeftHand_Control_translateY.o" "SquaddieRN.phl[265]";
connectAttr "LeftHand_Control_translateZ.o" "SquaddieRN.phl[266]";
connectAttr "LeftHand_Control_visibility.o" "SquaddieRN.phl[267]";
connectAttr "LeftHand_Control_scaleX.o" "SquaddieRN.phl[268]";
connectAttr "LeftHand_Control_scaleY.o" "SquaddieRN.phl[269]";
connectAttr "LeftHand_Control_scaleZ.o" "SquaddieRN.phl[270]";
connectAttr "LeftFingers_Control_Grip.o" "SquaddieRN.phl[271]";
connectAttr "LeftFingers_Control_translateX.o" "SquaddieRN.phl[272]";
connectAttr "LeftFingers_Control_translateY.o" "SquaddieRN.phl[273]";
connectAttr "LeftFingers_Control_translateZ.o" "SquaddieRN.phl[274]";
connectAttr "LeftFingers_Control_rotateX.o" "SquaddieRN.phl[275]";
connectAttr "LeftFingers_Control_rotateY.o" "SquaddieRN.phl[276]";
connectAttr "LeftFingers_Control_rotateZ.o" "SquaddieRN.phl[277]";
connectAttr "LeftFingers_Control_visibility.o" "SquaddieRN.phl[278]";
connectAttr "LeftFingers_Control_scaleX.o" "SquaddieRN.phl[279]";
connectAttr "LeftFingers_Control_scaleY.o" "SquaddieRN.phl[280]";
connectAttr "LeftFingers_Control_scaleZ.o" "SquaddieRN.phl[281]";
connectAttr "LeftHip_Control_translateX.o" "SquaddieRN.phl[282]";
connectAttr "LeftHip_Control_translateY.o" "SquaddieRN.phl[283]";
connectAttr "LeftHip_Control_translateZ.o" "SquaddieRN.phl[284]";
connectAttr "LeftHip_Control_rotateX.o" "SquaddieRN.phl[285]";
connectAttr "LeftHip_Control_rotateY.o" "SquaddieRN.phl[286]";
connectAttr "LeftHip_Control_rotateZ.o" "SquaddieRN.phl[287]";
connectAttr "LeftHip_Control_visibility.o" "SquaddieRN.phl[288]";
connectAttr "LeftHip_Control_scaleX.o" "SquaddieRN.phl[289]";
connectAttr "LeftHip_Control_scaleY.o" "SquaddieRN.phl[290]";
connectAttr "LeftHip_Control_scaleZ.o" "SquaddieRN.phl[291]";
connectAttr "RightHip_Control_translateX.o" "SquaddieRN.phl[292]";
connectAttr "RightHip_Control_translateY.o" "SquaddieRN.phl[293]";
connectAttr "RightHip_Control_translateZ.o" "SquaddieRN.phl[294]";
connectAttr "RightHip_Control_rotateX.o" "SquaddieRN.phl[295]";
connectAttr "RightHip_Control_rotateY.o" "SquaddieRN.phl[296]";
connectAttr "RightHip_Control_rotateZ.o" "SquaddieRN.phl[297]";
connectAttr "RightHip_Control_visibility.o" "SquaddieRN.phl[298]";
connectAttr "RightHip_Control_scaleX.o" "SquaddieRN.phl[299]";
connectAttr "RightHip_Control_scaleY.o" "SquaddieRN.phl[300]";
connectAttr "RightHip_Control_scaleZ.o" "SquaddieRN.phl[301]";
connectAttr "RightFoot_Control_rotateX.o" "SquaddieRN.phl[302]";
connectAttr "RightFoot_Control_rotateY.o" "SquaddieRN.phl[303]";
connectAttr "RightFoot_Control_rotateZ.o" "SquaddieRN.phl[304]";
connectAttr "RightFoot_Control_translateX.o" "SquaddieRN.phl[305]";
connectAttr "RightFoot_Control_translateY.o" "SquaddieRN.phl[306]";
connectAttr "RightFoot_Control_translateZ.o" "SquaddieRN.phl[307]";
connectAttr "RightFoot_Control_visibility.o" "SquaddieRN.phl[308]";
connectAttr "RightFoot_Control_scaleX.o" "SquaddieRN.phl[309]";
connectAttr "RightFoot_Control_scaleY.o" "SquaddieRN.phl[310]";
connectAttr "RightFoot_Control_scaleZ.o" "SquaddieRN.phl[311]";
connectAttr "RightToes_Control_rotateX.o" "SquaddieRN.phl[312]";
connectAttr "RightToes_Control_rotateY.o" "SquaddieRN.phl[313]";
connectAttr "RightToes_Control_rotateZ.o" "SquaddieRN.phl[314]";
connectAttr "RightToes_Control_translateX.o" "SquaddieRN.phl[315]";
connectAttr "RightToes_Control_translateY.o" "SquaddieRN.phl[316]";
connectAttr "RightToes_Control_translateZ.o" "SquaddieRN.phl[317]";
connectAttr "RightToes_Control_visibility.o" "SquaddieRN.phl[318]";
connectAttr "RightToes_Control_scaleX.o" "SquaddieRN.phl[319]";
connectAttr "RightToes_Control_scaleY.o" "SquaddieRN.phl[320]";
connectAttr "RightToes_Control_scaleZ.o" "SquaddieRN.phl[321]";
connectAttr "RightKnee_Control_translateX.o" "SquaddieRN.phl[322]";
connectAttr "RightKnee_Control_translateY.o" "SquaddieRN.phl[323]";
connectAttr "RightKnee_Control_translateZ.o" "SquaddieRN.phl[324]";
connectAttr "RightKnee_Control_rotateX.o" "SquaddieRN.phl[325]";
connectAttr "RightKnee_Control_rotateY.o" "SquaddieRN.phl[326]";
connectAttr "RightKnee_Control_rotateZ.o" "SquaddieRN.phl[327]";
connectAttr "RightKnee_Control_visibility.o" "SquaddieRN.phl[328]";
connectAttr "RightKnee_Control_scaleX.o" "SquaddieRN.phl[329]";
connectAttr "RightKnee_Control_scaleY.o" "SquaddieRN.phl[330]";
connectAttr "RightKnee_Control_scaleZ.o" "SquaddieRN.phl[331]";
connectAttr "LeftFoot_Control_rotateX.o" "SquaddieRN.phl[332]";
connectAttr "LeftFoot_Control_rotateY.o" "SquaddieRN.phl[333]";
connectAttr "LeftFoot_Control_rotateZ.o" "SquaddieRN.phl[334]";
connectAttr "LeftFoot_Control_translateX.o" "SquaddieRN.phl[335]";
connectAttr "LeftFoot_Control_translateY.o" "SquaddieRN.phl[336]";
connectAttr "LeftFoot_Control_translateZ.o" "SquaddieRN.phl[337]";
connectAttr "LeftFoot_Control_visibility.o" "SquaddieRN.phl[338]";
connectAttr "LeftFoot_Control_scaleX.o" "SquaddieRN.phl[339]";
connectAttr "LeftFoot_Control_scaleY.o" "SquaddieRN.phl[340]";
connectAttr "LeftFoot_Control_scaleZ.o" "SquaddieRN.phl[341]";
connectAttr "LeftToes_Control_rotateX.o" "SquaddieRN.phl[342]";
connectAttr "LeftToes_Control_rotateY.o" "SquaddieRN.phl[343]";
connectAttr "LeftToes_Control_rotateZ.o" "SquaddieRN.phl[344]";
connectAttr "LeftToes_Control_translateX.o" "SquaddieRN.phl[345]";
connectAttr "LeftToes_Control_translateY.o" "SquaddieRN.phl[346]";
connectAttr "LeftToes_Control_translateZ.o" "SquaddieRN.phl[347]";
connectAttr "LeftToes_Control_visibility.o" "SquaddieRN.phl[348]";
connectAttr "LeftToes_Control_scaleX.o" "SquaddieRN.phl[349]";
connectAttr "LeftToes_Control_scaleY.o" "SquaddieRN.phl[350]";
connectAttr "LeftToes_Control_scaleZ.o" "SquaddieRN.phl[351]";
connectAttr "LeftKnee_Control_translateX.o" "SquaddieRN.phl[352]";
connectAttr "LeftKnee_Control_translateY.o" "SquaddieRN.phl[353]";
connectAttr "LeftKnee_Control_translateZ.o" "SquaddieRN.phl[354]";
connectAttr "LeftKnee_Control_rotateX.o" "SquaddieRN.phl[355]";
connectAttr "LeftKnee_Control_rotateY.o" "SquaddieRN.phl[356]";
connectAttr "LeftKnee_Control_rotateZ.o" "SquaddieRN.phl[357]";
connectAttr "LeftKnee_Control_visibility.o" "SquaddieRN.phl[358]";
connectAttr "LeftKnee_Control_scaleX.o" "SquaddieRN.phl[359]";
connectAttr "LeftKnee_Control_scaleY.o" "SquaddieRN.phl[360]";
connectAttr "LeftKnee_Control_scaleZ.o" "SquaddieRN.phl[361]";
connectAttr "SquaddieRN.phl[362]" "Weapon_MkII1_parentConstraint1.tg[0].tpm";
connectAttr "SquaddieRN.phl[363]" "Weapon_MkII1_parentConstraint1.tg[0].tt";
connectAttr "SquaddieRN.phl[364]" "Weapon_MkII1_parentConstraint1.tg[0].trp";
connectAttr "SquaddieRN.phl[365]" "Weapon_MkII1_parentConstraint1.tg[0].trt";
connectAttr "SquaddieRN.phl[366]" "Weapon_MkII1_parentConstraint1.tg[0].tr";
connectAttr "SquaddieRN.phl[367]" "Weapon_MkII1_parentConstraint1.tg[0].tro";
connectAttr "SquaddieRN.phl[368]" "Weapon_MkII1_parentConstraint1.tg[0].ts";
connectAttr "Weapon_MkII1_parentConstraint1.ctx" "MkIIRN.phl[1]";
connectAttr "Weapon_MkII1_parentConstraint1.cty" "MkIIRN.phl[2]";
connectAttr "Weapon_MkII1_parentConstraint1.ctz" "MkIIRN.phl[3]";
connectAttr "Weapon_MkII1_parentConstraint1.crx" "MkIIRN.phl[4]";
connectAttr "Weapon_MkII1_parentConstraint1.cry" "MkIIRN.phl[5]";
connectAttr "Weapon_MkII1_parentConstraint1.crz" "MkIIRN.phl[6]";
connectAttr "MkIIRN.phl[7]" "Weapon_MkII1_parentConstraint1.cro";
connectAttr "MkIIRN.phl[8]" "Weapon_MkII1_parentConstraint1.cpim";
connectAttr "MkIIRN.phl[9]" "Weapon_MkII1_parentConstraint1.crp";
connectAttr "MkIIRN.phl[10]" "Weapon_MkII1_parentConstraint1.crt";
connectAttr "Extras.di" "MkIIRN.phl[11]";
connectAttr "Extras.di" "pointLight1.do";
connectAttr "Extras.di" "pointLight2.do";
connectAttr "Extras.di" "ambientLight1.do";
connectAttr "Extras.di" "pPlane1.do";
connectAttr "polyTweakUV1.out" "pPlaneShape1.i";
connectAttr "polyTweakUV1.uvtk[0]" "pPlaneShape1.uvst[0].uvtw";
connectAttr "Weapon_MkII1_parentConstraint1.w0" "Weapon_MkII1_parentConstraint1.tg[0].tw"
		;
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "RightUpperArm_Control_translateX.o" "SquaddieRN.phl[50]";
connectAttr "RightUpperArm_Control_translateY.o" "SquaddieRN.phl[51]";
connectAttr "RightUpperArm_Control_translateZ.o" "SquaddieRN.phl[52]";
connectAttr "RightUpperArm_Control_rotateX.o" "SquaddieRN.phl[53]";
connectAttr "RightUpperArm_Control_rotateY.o" "SquaddieRN.phl[54]";
connectAttr "RightUpperArm_Control_rotateZ.o" "SquaddieRN.phl[55]";
connectAttr "RightUpperArm_Control_visibility.o" "SquaddieRN.phl[56]";
connectAttr "RightUpperArm_Control_scaleX.o" "SquaddieRN.phl[57]";
connectAttr "RightUpperArm_Control_scaleY.o" "SquaddieRN.phl[58]";
connectAttr "RightUpperArm_Control_scaleZ.o" "SquaddieRN.phl[59]";
connectAttr "LeftUpperArm_Control_translateX.o" "SquaddieRN.phl[100]";
connectAttr "LeftUpperArm_Control_translateY.o" "SquaddieRN.phl[101]";
connectAttr "LeftUpperArm_Control_translateZ.o" "SquaddieRN.phl[102]";
connectAttr "LeftUpperArm_Control_rotateX.o" "SquaddieRN.phl[103]";
connectAttr "LeftUpperArm_Control_rotateY.o" "SquaddieRN.phl[104]";
connectAttr "LeftUpperArm_Control_rotateZ.o" "SquaddieRN.phl[105]";
connectAttr "LeftUpperArm_Control_visibility.o" "SquaddieRN.phl[106]";
connectAttr "LeftUpperArm_Control_scaleX.o" "SquaddieRN.phl[107]";
connectAttr "LeftUpperArm_Control_scaleY.o" "SquaddieRN.phl[108]";
connectAttr "LeftUpperArm_Control_scaleZ.o" "SquaddieRN.phl[109]";
connectAttr "checker1.oc" "MatGround.c";
connectAttr "MatGround.oc" "lambert2SG.ss";
connectAttr "pPlaneShape1.iog" "lambert2SG.dsm" -na;
connectAttr "lambert2SG.msg" "materialInfo1.sg";
connectAttr "MatGround.msg" "materialInfo1.m";
connectAttr "checker1.msg" "materialInfo1.t" -na;
connectAttr "place2dTexture1.o" "checker1.uv";
connectAttr "place2dTexture1.ofs" "checker1.fs";
connectAttr "polyPlane1.out" "polyTweakUV1.ip";
connectAttr "layerManager.dli[1]" "Extras.id";
connectAttr "MkIIRNfosterParent1.msg" "MkIIRN.fp";
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "MatGround.msg" ":defaultShaderList1.s" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "pointLightShape1.ltd" ":lightList1.l" -na;
connectAttr "pointLightShape2.ltd" ":lightList1.l" -na;
connectAttr "ambientLightShape1.ltd" ":lightList1.l" -na;
connectAttr "checker1.msg" ":defaultTextureList1.tx" -na;
connectAttr "pointLight1.iog" ":defaultLightSet.dsm" -na;
connectAttr "pointLight2.iog" ":defaultLightSet.dsm" -na;
connectAttr "ambientLight1.iog" ":defaultLightSet.dsm" -na;
// End of Squaddie_Moving.ma
