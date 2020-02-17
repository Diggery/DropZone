//Maya ASCII 2020 scene
//Name: SideArm_Cover.ma
//Last modified: Mon, Feb 17, 2020 02:30:13 PM
//Codeset: UTF-8
requires "fbxmaya" "2020.0";
file -rdi 1 -ns "Squaddie" -rfn "SquaddieRN" -op "v=0;" -typ "mayaAscii" "/Users/briancollins/Unity/DropZone/ArtSource/Squaddie/Squaddie.ma";
file -rdi 1 -ns "MkII" -rfn "MkIIRN" -op "v=0;" -typ "FBX export" "/Users/briancollins/Unity/DropZone/Assets/DropZone/Weapons/Sidewinder/Weapon_Sidewinder.fbx";
file -r -ns "Squaddie" -dr 1 -rfn "SquaddieRN" -op "v=0;" -typ "mayaAscii" "/Users/briancollins/Unity/DropZone/ArtSource/Squaddie/Squaddie.ma";
file -r -ns "MkII" -dr 1 -rfn "MkIIRN" -op "v=0;" -typ "FBX export" "/Users/briancollins/Unity/DropZone/Assets/DropZone/Weapons/Sidewinder/Weapon_Sidewinder.fbx";
requires maya "2020";
requires -nodeType "gameFbxExporter" "gameFbxExporter" "1.0";
requires "mtoa" "4.0.0";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2020";
fileInfo "version" "2020";
fileInfo "cutIdentifier" "201911140446-42a737a01c";
fileInfo "osv" "Mac OS X 10.14.6";
fileInfo "UUID" "47C31667-E54A-398E-9055-1EABBEDCB204";
createNode transform -s -n "persp";
	rename -uid "ABF7CAC9-7042-CBE0-D916-39910278FA3A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -26.655418369998117 221.22081556706792 -248.10527511469215 ;
	setAttr ".r" -type "double3" -26.738352732082635 177.40000000000052 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "3D0D0238-014B-4FD1-30CB-E49DEC31D45C";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 342.46758485895555;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
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
	setAttr ".t" -type "double3" -13.554722524707024 141.64408715917108 1001.4888672296115 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "D0DAF76B-E346-383C-FA2E-C381E30429C3";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1075.3292253716511;
	setAttr ".ow" 298.46677610486097;
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
	setAttr ".t" -type "double3" 1000.1 133.46343035088154 47.837079880131057 ;
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
createNode transform -n "pCube1";
	rename -uid "9C5F8750-1347-E356-B0F4-AF9CE79FBBF8";
	setAttr ".t" -type "double3" 0 100 100 ;
createNode mesh -n "pCubeShape1" -p "pCube1";
	rename -uid "934A0424-8143-BD32-1FEF-A693A5094665";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode fosterParent -n "MkIIRNfosterParent1";
	rename -uid "53CB19A3-7F4F-6525-8A80-B5978484216F";
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
	setAttr ".lr" -type "double3" -262.04098166343914 63.410657883041914 71.555765048999803 ;
	setAttr ".rst" -type "double3" -71.905138372518763 112.77091918951142 10.228960416052768 ;
	setAttr ".rsrr" -type "double3" -284.8910021905366 0.64446566458931642 -11.126855858155484 ;
	setAttr -k on ".w0";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "EA63AF33-914F-6F22-382C-0A8F6BF63908";
	setAttr -s 8 ".lnk";
	setAttr -s 8 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "740E9ADA-7649-F825-3552-56946E79DF80";
	setAttr ".cdl" 1;
	setAttr -s 2 ".dli[1]"  1;
	setAttr -s 2 ".dli";
createNode displayLayer -n "defaultLayer";
	rename -uid "3AFC2083-B947-F7A2-A1CF-8784DD7FE6BE";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "083BD3C1-0C4D-CC30-9B3D-BCB6E0893D72";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "4F4A93B8-5947-7084-81A2-88B3C2992DDC";
	setAttr ".g" yes;
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "8B2E880B-D84C-448B-776D-A8BDC5B02883";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "C6EAF1DD-5348-4759-8805-A588E5E3E7D2";
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
		"SquaddieRN" 614
		2 "|Squaddie:Root_Control" "visibility" " -av 1"
		2 "|Squaddie:Root_Control" "translate" " -type \"double3\" 0 0 -50"
		2 "|Squaddie:Root_Control" "translateX" " -av"
		2 "|Squaddie:Root_Control" "translateY" " -av"
		2 "|Squaddie:Root_Control" "translateZ" " -av"
		2 "|Squaddie:Root_Control" "rotate" " -type \"double3\" 0 0 0"
		2 "|Squaddie:Root_Control" "rotateX" " -av"
		2 "|Squaddie:Root_Control" "rotateY" " -av"
		2 "|Squaddie:Root_Control" "rotateZ" " -av"
		2 "|Squaddie:Root_Control" "scale" " -type \"double3\" 1 1 1"
		2 "|Squaddie:Root_Control" "scaleX" " -av"
		2 "|Squaddie:Root_Control" "scaleY" " -av"
		2 "|Squaddie:Root_Control" "scaleZ" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control" "visibility" " -av 1"
		
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control" "translate" " -type \"double3\" 0 0 0"
		
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control" "translateX" " -av"
		
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control" "translateY" " -av"
		
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control" "translateZ" " -av"
		
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control" "rotate" " -type \"double3\" 0 0 0"
		
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control" "rotateX" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control" "rotateY" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control" "rotateZ" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control" "scale" " -type \"double3\" 1 1 1"
		
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control" "scaleX" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control" "scaleY" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control" "scaleZ" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control" 
		"visibility" " -av 1"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control" 
		"translate" " -type \"double3\" 0 -7.83102272180698655 2.03988758692253569"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control" 
		"translateX" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control" 
		"translateY" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control" 
		"translateZ" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control" 
		"rotate" " -type \"double3\" 38.30793354996379207 10.97786079392181513 -2.03885778178325117"
		
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control" 
		"rotateX" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control" 
		"rotateY" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control" 
		"rotateZ" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control" 
		"scaleX" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control" 
		"scaleY" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control" 
		"scaleZ" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control" 
		"visibility" " -av 1"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control" 
		"translateX" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control" 
		"translateY" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control" 
		"translateZ" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control" 
		"rotate" " -type \"double3\" -0.0082345169523389463 -0.25320142105115501 0.11429284827128253"
		
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control" 
		"rotateX" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control" 
		"rotateY" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control" 
		"rotateZ" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control" 
		"scaleX" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control" 
		"scaleY" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control" 
		"scaleZ" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control" 
		"visibility" " -av 1"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control" 
		"translateX" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control" 
		"translateY" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control" 
		"translateZ" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control" 
		"rotateX" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control" 
		"rotateY" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control" 
		"rotateZ" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control" 
		"scaleX" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control" 
		"scaleY" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control" 
		"scaleZ" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightShoulder_Control" 
		"visibility" " -av 1"
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
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightShoulder_Control" 
		"rotateZ" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightShoulder_Control" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightShoulder_Control" 
		"scaleX" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightShoulder_Control" 
		"scaleY" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightShoulder_Control" 
		"scaleZ" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:Neck_Control" 
		"visibility" " -av 1"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:Neck_Control" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:Neck_Control" 
		"translateX" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:Neck_Control" 
		"translateY" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:Neck_Control" 
		"translateZ" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:Neck_Control" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:Neck_Control" 
		"rotateX" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:Neck_Control" 
		"rotateY" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:Neck_Control" 
		"rotateZ" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:Neck_Control" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:Neck_Control" 
		"scaleX" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:Neck_Control" 
		"scaleY" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:Neck_Control" 
		"scaleZ" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:Neck_Control|Squaddie:Head_Control" 
		"visibility" " -av 1"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:Neck_Control|Squaddie:Head_Control" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:Neck_Control|Squaddie:Head_Control" 
		"translateX" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:Neck_Control|Squaddie:Head_Control" 
		"translateY" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:Neck_Control|Squaddie:Head_Control" 
		"translateZ" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:Neck_Control|Squaddie:Head_Control" 
		"rotate" " -type \"double3\" 0 0 0.84821139040032134"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:Neck_Control|Squaddie:Head_Control" 
		"rotateX" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:Neck_Control|Squaddie:Head_Control" 
		"rotateY" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:Neck_Control|Squaddie:Head_Control" 
		"rotateZ" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:Neck_Control|Squaddie:Head_Control" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:Neck_Control|Squaddie:Head_Control" 
		"scaleX" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:Neck_Control|Squaddie:Head_Control" 
		"scaleY" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:Neck_Control|Squaddie:Head_Control" 
		"scaleZ" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftShoulder_Control" 
		"visibility" " -av 1"
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
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftShoulder_Control" 
		"rotateZ" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftShoulder_Control" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftShoulder_Control" 
		"scaleX" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftShoulder_Control" 
		"scaleY" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftShoulder_Control" 
		"scaleZ" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightElbow_Control" 
		"visibility" " -av 1"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightElbow_Control" 
		"translate" " -type \"double3\" -23.29311162754722631 0 12.58821445385069637"
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
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightElbow_Control" 
		"rotateZ" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightElbow_Control" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightElbow_Control" 
		"scaleX" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightElbow_Control" 
		"scaleY" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightElbow_Control" 
		"scaleZ" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftElbow_Control" 
		"visibility" " -av 1"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftElbow_Control" 
		"translate" " -type \"double3\" 0 0 0"
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
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftElbow_Control" 
		"rotateZ" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftElbow_Control" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftElbow_Control" 
		"scaleX" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftElbow_Control" 
		"scaleY" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftElbow_Control" 
		"scaleZ" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightArmTwist_Control" 
		"visibility" " -av 1"
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
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightArmTwist_Control" 
		"rotateZ" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightArmTwist_Control" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightArmTwist_Control" 
		"scaleX" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightArmTwist_Control" 
		"scaleY" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightArmTwist_Control" 
		"scaleZ" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftArmTwist_Control" 
		"visibility" " -av 1"
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
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftArmTwist_Control" 
		"rotateZ" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftArmTwist_Control" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftArmTwist_Control" 
		"scaleX" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftArmTwist_Control" 
		"scaleY" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftArmTwist_Control" 
		"scaleZ" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightHand_Control" 
		"visibility" " -av 1"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightHand_Control" 
		"translate" " -type \"double3\" 50.67797628889715611 15.76723113520965569 21.09640182201621883"
		
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightHand_Control" 
		"translateX" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightHand_Control" 
		"translateY" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightHand_Control" 
		"translateZ" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightHand_Control" 
		"rotate" " -type \"double3\" -89.41578062958060968 122.52679973137674097 -30.43713652179774343"
		
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightHand_Control" 
		"rotateX" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightHand_Control" 
		"rotateY" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightHand_Control" 
		"rotateZ" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightHand_Control" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightHand_Control" 
		"scaleX" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightHand_Control" 
		"scaleY" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightHand_Control" 
		"scaleZ" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightHand_Control|Squaddie:RightFinders_Control" 
		"visibility" " -av 1"
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
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightHand_Control|Squaddie:RightFinders_Control" 
		"rotateZ" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightHand_Control|Squaddie:RightFinders_Control" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightHand_Control|Squaddie:RightFinders_Control" 
		"scaleX" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightHand_Control|Squaddie:RightFinders_Control" 
		"scaleY" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightHand_Control|Squaddie:RightFinders_Control" 
		"scaleZ" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightHand_Control|Squaddie:RightFinders_Control" 
		"Grip" " -av -k 1 1"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightHand_Control|Squaddie:ikHandle4" 
		"translate" " -type \"double3\" -72.3335999999999899 118.84599999999998943 4.76709999999999745"
		
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightHand_Control|Squaddie:ikHandle4" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftHand_Control" 
		"visibility" " -av 1"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftHand_Control" 
		"translate" " -type \"double3\" -32.18993183584830575 0.77699943245589553 2.78331443750216279"
		
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftHand_Control" 
		"translateX" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftHand_Control" 
		"translateY" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftHand_Control" 
		"translateZ" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftHand_Control" 
		"rotate" " -type \"double3\" -33.9062279453947113 -72.22096994388950009 2.66026384169343499"
		
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftHand_Control" 
		"rotateX" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftHand_Control" 
		"rotateY" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftHand_Control" 
		"rotateZ" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftHand_Control" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftHand_Control" 
		"scaleX" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftHand_Control" 
		"scaleY" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftHand_Control" 
		"scaleZ" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftHand_Control|Squaddie:LeftFingers_Control" 
		"visibility" " -av 1"
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
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftHand_Control|Squaddie:LeftFingers_Control" 
		"rotateZ" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftHand_Control|Squaddie:LeftFingers_Control" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftHand_Control|Squaddie:LeftFingers_Control" 
		"scaleX" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftHand_Control|Squaddie:LeftFingers_Control" 
		"scaleY" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftHand_Control|Squaddie:LeftFingers_Control" 
		"scaleZ" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:LeftHip_Control" 
		"visibility" " -av 1"
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
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:LeftHip_Control" 
		"rotateZ" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:LeftHip_Control" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:LeftHip_Control" 
		"scaleX" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:LeftHip_Control" 
		"scaleY" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:LeftHip_Control" 
		"scaleZ" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:RightHip_Control" 
		"visibility" " -av 1"
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
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:RightHip_Control" 
		"rotateZ" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:RightHip_Control" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:RightHip_Control" 
		"scaleX" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:RightHip_Control" 
		"scaleY" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:RightHip_Control" 
		"scaleZ" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RightFoot_Control" "visibility" " -av 1"
		
		2 "|Squaddie:Root_Control|Squaddie:RightFoot_Control" "translate" " -type \"double3\" 0.099215292794979731 0.2628165880399379 1.30519403208938201"
		
		2 "|Squaddie:Root_Control|Squaddie:RightFoot_Control" "translateX" " -av"
		
		2 "|Squaddie:Root_Control|Squaddie:RightFoot_Control" "translateY" " -av"
		
		2 "|Squaddie:Root_Control|Squaddie:RightFoot_Control" "translateZ" " -av"
		
		2 "|Squaddie:Root_Control|Squaddie:RightFoot_Control" "rotate" " -type \"double3\" -1.00464995548573888 -0.0042540285180658315 0.085999451669464849"
		
		2 "|Squaddie:Root_Control|Squaddie:RightFoot_Control" "rotateX" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RightFoot_Control" "rotateY" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RightFoot_Control" "rotateZ" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RightFoot_Control" "scale" " -type \"double3\" 1 1 1"
		
		2 "|Squaddie:Root_Control|Squaddie:RightFoot_Control" "scaleX" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RightFoot_Control" "scaleY" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RightFoot_Control" "scaleZ" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RightFoot_Control|Squaddie:RightToes_Control" 
		"visibility" " -av 1"
		2 "|Squaddie:Root_Control|Squaddie:RightFoot_Control|Squaddie:RightToes_Control" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Squaddie:Root_Control|Squaddie:RightFoot_Control|Squaddie:RightToes_Control" 
		"translateX" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RightFoot_Control|Squaddie:RightToes_Control" 
		"translateY" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RightFoot_Control|Squaddie:RightToes_Control" 
		"translateZ" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RightFoot_Control|Squaddie:RightToes_Control" 
		"rotate" " -type \"double3\" -0.11174913774190054 0 0"
		2 "|Squaddie:Root_Control|Squaddie:RightFoot_Control|Squaddie:RightToes_Control" 
		"rotateX" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RightFoot_Control|Squaddie:RightToes_Control" 
		"rotateY" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RightFoot_Control|Squaddie:RightToes_Control" 
		"rotateZ" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RightFoot_Control|Squaddie:RightToes_Control" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|Squaddie:Root_Control|Squaddie:RightFoot_Control|Squaddie:RightToes_Control" 
		"scaleX" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RightFoot_Control|Squaddie:RightToes_Control" 
		"scaleY" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RightFoot_Control|Squaddie:RightToes_Control" 
		"scaleZ" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RightFoot_Control|Squaddie:RightKnee_Control" 
		"visibility" " -av 1"
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
		2 "|Squaddie:Root_Control|Squaddie:RightFoot_Control|Squaddie:RightKnee_Control" 
		"rotateZ" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RightFoot_Control|Squaddie:RightKnee_Control" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|Squaddie:Root_Control|Squaddie:RightFoot_Control|Squaddie:RightKnee_Control" 
		"scaleX" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RightFoot_Control|Squaddie:RightKnee_Control" 
		"scaleY" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RightFoot_Control|Squaddie:RightKnee_Control" 
		"scaleZ" " -av"
		2 "|Squaddie:Root_Control|Squaddie:LeftFoot_Control" "visibility" " -av 1"
		
		2 "|Squaddie:Root_Control|Squaddie:LeftFoot_Control" "translate" " -type \"double3\" -0.34457907489700884 0.68752765944559213 -1.3795154455427987"
		
		2 "|Squaddie:Root_Control|Squaddie:LeftFoot_Control" "translateX" " -av"
		2 "|Squaddie:Root_Control|Squaddie:LeftFoot_Control" "translateY" " -av"
		2 "|Squaddie:Root_Control|Squaddie:LeftFoot_Control" "translateZ" " -av"
		2 "|Squaddie:Root_Control|Squaddie:LeftFoot_Control" "rotate" " -type \"double3\" 2.61143714529476823 0.55091867293818875 0.0017488497131414502"
		
		2 "|Squaddie:Root_Control|Squaddie:LeftFoot_Control" "rotateX" " -av"
		2 "|Squaddie:Root_Control|Squaddie:LeftFoot_Control" "rotateY" " -av"
		2 "|Squaddie:Root_Control|Squaddie:LeftFoot_Control" "rotateZ" " -av"
		2 "|Squaddie:Root_Control|Squaddie:LeftFoot_Control" "scale" " -type \"double3\" 1 1 1"
		
		2 "|Squaddie:Root_Control|Squaddie:LeftFoot_Control" "scaleX" " -av"
		2 "|Squaddie:Root_Control|Squaddie:LeftFoot_Control" "scaleY" " -av"
		2 "|Squaddie:Root_Control|Squaddie:LeftFoot_Control" "scaleZ" " -av"
		2 "|Squaddie:Root_Control|Squaddie:LeftFoot_Control|Squaddie:LeftToes_Control" 
		"visibility" " -av 1"
		2 "|Squaddie:Root_Control|Squaddie:LeftFoot_Control|Squaddie:LeftToes_Control" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Squaddie:Root_Control|Squaddie:LeftFoot_Control|Squaddie:LeftToes_Control" 
		"translateX" " -av"
		2 "|Squaddie:Root_Control|Squaddie:LeftFoot_Control|Squaddie:LeftToes_Control" 
		"translateY" " -av"
		2 "|Squaddie:Root_Control|Squaddie:LeftFoot_Control|Squaddie:LeftToes_Control" 
		"translateZ" " -av"
		2 "|Squaddie:Root_Control|Squaddie:LeftFoot_Control|Squaddie:LeftToes_Control" 
		"rotate" " -type \"double3\" -0.68660398204546169 0 0"
		2 "|Squaddie:Root_Control|Squaddie:LeftFoot_Control|Squaddie:LeftToes_Control" 
		"rotateX" " -av"
		2 "|Squaddie:Root_Control|Squaddie:LeftFoot_Control|Squaddie:LeftToes_Control" 
		"rotateY" " -av"
		2 "|Squaddie:Root_Control|Squaddie:LeftFoot_Control|Squaddie:LeftToes_Control" 
		"rotateZ" " -av"
		2 "|Squaddie:Root_Control|Squaddie:LeftFoot_Control|Squaddie:LeftToes_Control" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|Squaddie:Root_Control|Squaddie:LeftFoot_Control|Squaddie:LeftToes_Control" 
		"scaleX" " -av"
		2 "|Squaddie:Root_Control|Squaddie:LeftFoot_Control|Squaddie:LeftToes_Control" 
		"scaleY" " -av"
		2 "|Squaddie:Root_Control|Squaddie:LeftFoot_Control|Squaddie:LeftToes_Control" 
		"scaleZ" " -av"
		2 "|Squaddie:Root_Control|Squaddie:LeftFoot_Control|Squaddie:LeftKnee_Control" 
		"visibility" " -av 1"
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
		2 "|Squaddie:Root_Control|Squaddie:LeftFoot_Control|Squaddie:LeftKnee_Control" 
		"rotateZ" " -av"
		2 "|Squaddie:Root_Control|Squaddie:LeftFoot_Control|Squaddie:LeftKnee_Control" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|Squaddie:Root_Control|Squaddie:LeftFoot_Control|Squaddie:LeftKnee_Control" 
		"scaleX" " -av"
		2 "|Squaddie:Root_Control|Squaddie:LeftFoot_Control|Squaddie:LeftKnee_Control" 
		"scaleY" " -av"
		2 "|Squaddie:Root_Control|Squaddie:LeftFoot_Control|Squaddie:LeftKnee_Control" 
		"scaleZ" " -av"
		2 "|Squaddie:GeoGroup|Squaddie:Body|Squaddie:BodyShape" "visibility" " -k 0 1"
		
		2 "|Squaddie:GeoGroup|Squaddie:Body|Squaddie:BodyShape" "uvPivot" " -type \"double2\" 0.49994799494743347 0.5"
		
		2 "|Squaddie:GeoGroup|Squaddie:Head|Squaddie:HeadShape" "uvPivot" " -type \"double2\" 0.49930763244628906 0.50084253214299679"
		
		2 "|Squaddie:SkeletonGroup|Squaddie:Attach_RootMotion|Squaddie:Hips_Skel|Squaddie:RightUpperLeg_Skel" 
		"translate" " -type \"double3\" -19.81879997253418324 -7.48137882854415182 -0.70920240272859303"
		
		2 "|Squaddie:SkeletonGroup|Squaddie:Attach_RootMotion|Squaddie:Hips_Skel|Squaddie:RightUpperLeg_Skel" 
		"translateX" " -av"
		2 "|Squaddie:SkeletonGroup|Squaddie:Attach_RootMotion|Squaddie:Hips_Skel|Squaddie:RightUpperLeg_Skel" 
		"translateY" " -av"
		2 "|Squaddie:SkeletonGroup|Squaddie:Attach_RootMotion|Squaddie:Hips_Skel|Squaddie:RightUpperLeg_Skel" 
		"translateZ" " -av"
		2 "|Squaddie:SkeletonGroup|Squaddie:Attach_RootMotion|Squaddie:Hips_Skel|Squaddie:RightUpperLeg_Skel" 
		"rotate" " -type \"double3\" -53.3926639116661832 -8.66206473065829385 -6.86889416019353849"
		
		2 "|Squaddie:SkeletonGroup|Squaddie:Attach_RootMotion|Squaddie:Hips_Skel|Squaddie:RightUpperLeg_Skel|Squaddie:RightLowerLeg_Skel" 
		"rotate" " -type \"double3\" 33.14851506823586647 0 0"
		2 "|Squaddie:SkeletonGroup|Squaddie:Attach_RootMotion|Squaddie:Hips_Skel|Squaddie:LeftUpperLeg_Skel" 
		"translate" " -type \"double3\" 19.81883811950683594 -7.48134068157151688 -0.70920144905427662"
		
		2 "|Squaddie:SkeletonGroup|Squaddie:Attach_RootMotion|Squaddie:Hips_Skel|Squaddie:LeftUpperLeg_Skel" 
		"translateX" " -av"
		2 "|Squaddie:SkeletonGroup|Squaddie:Attach_RootMotion|Squaddie:Hips_Skel|Squaddie:LeftUpperLeg_Skel" 
		"translateY" " -av"
		2 "|Squaddie:SkeletonGroup|Squaddie:Attach_RootMotion|Squaddie:Hips_Skel|Squaddie:LeftUpperLeg_Skel" 
		"translateZ" " -av"
		2 "|Squaddie:SkeletonGroup|Squaddie:Attach_RootMotion|Squaddie:Hips_Skel|Squaddie:LeftUpperLeg_Skel" 
		"rotate" " -type \"double3\" -60.62929820112059787 8.46753528012892254 6.19785001562902593"
		
		2 "|Squaddie:SkeletonGroup|Squaddie:Attach_RootMotion|Squaddie:Hips_Skel|Squaddie:LeftUpperLeg_Skel|Squaddie:LeftLowerLeg_Skel" 
		"rotate" " -type \"double3\" 40.36786044878359547 0 0"
		2 "|Squaddie:SkeletonGroup|Squaddie:Attach_RootMotion|Squaddie:Hips_Skel|Squaddie:Spine1_Skel|Squaddie:Spine2_Skel|Squaddie:RightClav_Skel|Squaddie:RightUpperArm_Skel" 
		"translate" " -type \"double3\" -14.91460000000001429 -4.70347648394240281 0.41150087150569448"
		
		2 "|Squaddie:SkeletonGroup|Squaddie:Attach_RootMotion|Squaddie:Hips_Skel|Squaddie:Spine1_Skel|Squaddie:Spine2_Skel|Squaddie:RightClav_Skel|Squaddie:RightUpperArm_Skel" 
		"translateX" " -av"
		2 "|Squaddie:SkeletonGroup|Squaddie:Attach_RootMotion|Squaddie:Hips_Skel|Squaddie:Spine1_Skel|Squaddie:Spine2_Skel|Squaddie:RightClav_Skel|Squaddie:RightUpperArm_Skel" 
		"translateY" " -av"
		2 "|Squaddie:SkeletonGroup|Squaddie:Attach_RootMotion|Squaddie:Hips_Skel|Squaddie:Spine1_Skel|Squaddie:Spine2_Skel|Squaddie:RightClav_Skel|Squaddie:RightUpperArm_Skel" 
		"translateZ" " -av"
		2 "|Squaddie:SkeletonGroup|Squaddie:Attach_RootMotion|Squaddie:Hips_Skel|Squaddie:Spine1_Skel|Squaddie:Spine2_Skel|Squaddie:RightClav_Skel|Squaddie:RightUpperArm_Skel" 
		"rotate" " -type \"double3\" 16.86116673748719208 -30.05457148667226619 16.44715843103585584"
		
		2 "|Squaddie:SkeletonGroup|Squaddie:Attach_RootMotion|Squaddie:Hips_Skel|Squaddie:Spine1_Skel|Squaddie:Spine2_Skel|Squaddie:RightClav_Skel|Squaddie:RightUpperArm_Skel|Squaddie:RightLowerArm_Skel" 
		"rotate" " -type \"double3\" -0.0033548561846465049 -87.71386297089600248 0.0029000116687773994"
		
		2 "|Squaddie:SkeletonGroup|Squaddie:Attach_RootMotion|Squaddie:Hips_Skel|Squaddie:Spine1_Skel|Squaddie:Spine2_Skel|Squaddie:LeftClav_Skel|Squaddie:LeftUpperArm_Skel" 
		"translate" " -type \"double3\" 14.91457674267715028 4.70347938627342899 -0.41150061501065444"
		
		2 "|Squaddie:SkeletonGroup|Squaddie:Attach_RootMotion|Squaddie:Hips_Skel|Squaddie:Spine1_Skel|Squaddie:Spine2_Skel|Squaddie:LeftClav_Skel|Squaddie:LeftUpperArm_Skel" 
		"translateX" " -av"
		2 "|Squaddie:SkeletonGroup|Squaddie:Attach_RootMotion|Squaddie:Hips_Skel|Squaddie:Spine1_Skel|Squaddie:Spine2_Skel|Squaddie:LeftClav_Skel|Squaddie:LeftUpperArm_Skel" 
		"translateY" " -av"
		2 "|Squaddie:SkeletonGroup|Squaddie:Attach_RootMotion|Squaddie:Hips_Skel|Squaddie:Spine1_Skel|Squaddie:Spine2_Skel|Squaddie:LeftClav_Skel|Squaddie:LeftUpperArm_Skel" 
		"translateZ" " -av"
		2 "|Squaddie:SkeletonGroup|Squaddie:Attach_RootMotion|Squaddie:Hips_Skel|Squaddie:Spine1_Skel|Squaddie:Spine2_Skel|Squaddie:LeftClav_Skel|Squaddie:LeftUpperArm_Skel" 
		"rotate" " -type \"double3\" 23.89368189795445474 16.1572855864517777 26.17839342253425983"
		
		2 "|Squaddie:SkeletonGroup|Squaddie:Attach_RootMotion|Squaddie:Hips_Skel|Squaddie:Spine1_Skel|Squaddie:Spine2_Skel|Squaddie:LeftClav_Skel|Squaddie:LeftUpperArm_Skel|Squaddie:LeftLowerArm_Skel" 
		"rotate" " -type \"double3\" 0 -81.93129720725102061 0"
		5 4 "SquaddieRN" "|Squaddie:Root_Control.visibility" "SquaddieRN.placeHolderList[110]" 
		""
		5 4 "SquaddieRN" "|Squaddie:Root_Control.translateX" "SquaddieRN.placeHolderList[111]" 
		""
		5 4 "SquaddieRN" "|Squaddie:Root_Control.translateY" "SquaddieRN.placeHolderList[112]" 
		""
		5 4 "SquaddieRN" "|Squaddie:Root_Control.translateZ" "SquaddieRN.placeHolderList[113]" 
		""
		5 4 "SquaddieRN" "|Squaddie:Root_Control.rotateX" "SquaddieRN.placeHolderList[114]" 
		""
		5 4 "SquaddieRN" "|Squaddie:Root_Control.rotateY" "SquaddieRN.placeHolderList[115]" 
		""
		5 4 "SquaddieRN" "|Squaddie:Root_Control.rotateZ" "SquaddieRN.placeHolderList[116]" 
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
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control.rotateX" 
		"SquaddieRN.placeHolderList[140]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control.rotateY" 
		"SquaddieRN.placeHolderList[141]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control.rotateZ" 
		"SquaddieRN.placeHolderList[142]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control.visibility" 
		"SquaddieRN.placeHolderList[143]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control.translateX" 
		"SquaddieRN.placeHolderList[144]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control.translateY" 
		"SquaddieRN.placeHolderList[145]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control.translateZ" 
		"SquaddieRN.placeHolderList[146]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control.scaleX" 
		"SquaddieRN.placeHolderList[147]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control.scaleY" 
		"SquaddieRN.placeHolderList[148]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control.scaleZ" 
		"SquaddieRN.placeHolderList[149]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control.rotateX" 
		"SquaddieRN.placeHolderList[150]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control.rotateY" 
		"SquaddieRN.placeHolderList[151]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control.rotateZ" 
		"SquaddieRN.placeHolderList[152]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control.visibility" 
		"SquaddieRN.placeHolderList[153]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control.translateX" 
		"SquaddieRN.placeHolderList[154]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control.translateY" 
		"SquaddieRN.placeHolderList[155]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control.translateZ" 
		"SquaddieRN.placeHolderList[156]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control.scaleX" 
		"SquaddieRN.placeHolderList[157]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control.scaleY" 
		"SquaddieRN.placeHolderList[158]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control.scaleZ" 
		"SquaddieRN.placeHolderList[159]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightShoulder_Control.rotateX" 
		"SquaddieRN.placeHolderList[160]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightShoulder_Control.rotateY" 
		"SquaddieRN.placeHolderList[161]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightShoulder_Control.rotateZ" 
		"SquaddieRN.placeHolderList[162]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightShoulder_Control.visibility" 
		"SquaddieRN.placeHolderList[163]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightShoulder_Control.translateX" 
		"SquaddieRN.placeHolderList[164]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightShoulder_Control.translateY" 
		"SquaddieRN.placeHolderList[165]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightShoulder_Control.translateZ" 
		"SquaddieRN.placeHolderList[166]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightShoulder_Control.scaleX" 
		"SquaddieRN.placeHolderList[167]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightShoulder_Control.scaleY" 
		"SquaddieRN.placeHolderList[168]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightShoulder_Control.scaleZ" 
		"SquaddieRN.placeHolderList[169]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:Neck_Control.rotateX" 
		"SquaddieRN.placeHolderList[170]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:Neck_Control.rotateY" 
		"SquaddieRN.placeHolderList[171]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:Neck_Control.rotateZ" 
		"SquaddieRN.placeHolderList[172]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:Neck_Control.visibility" 
		"SquaddieRN.placeHolderList[173]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:Neck_Control.translateX" 
		"SquaddieRN.placeHolderList[174]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:Neck_Control.translateY" 
		"SquaddieRN.placeHolderList[175]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:Neck_Control.translateZ" 
		"SquaddieRN.placeHolderList[176]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:Neck_Control.scaleX" 
		"SquaddieRN.placeHolderList[177]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:Neck_Control.scaleY" 
		"SquaddieRN.placeHolderList[178]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:Neck_Control.scaleZ" 
		"SquaddieRN.placeHolderList[179]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:Neck_Control|Squaddie:Head_Control.rotateX" 
		"SquaddieRN.placeHolderList[180]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:Neck_Control|Squaddie:Head_Control.rotateY" 
		"SquaddieRN.placeHolderList[181]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:Neck_Control|Squaddie:Head_Control.rotateZ" 
		"SquaddieRN.placeHolderList[182]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:Neck_Control|Squaddie:Head_Control.visibility" 
		"SquaddieRN.placeHolderList[183]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:Neck_Control|Squaddie:Head_Control.translateX" 
		"SquaddieRN.placeHolderList[184]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:Neck_Control|Squaddie:Head_Control.translateY" 
		"SquaddieRN.placeHolderList[185]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:Neck_Control|Squaddie:Head_Control.translateZ" 
		"SquaddieRN.placeHolderList[186]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:Neck_Control|Squaddie:Head_Control.scaleX" 
		"SquaddieRN.placeHolderList[187]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:Neck_Control|Squaddie:Head_Control.scaleY" 
		"SquaddieRN.placeHolderList[188]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:Neck_Control|Squaddie:Head_Control.scaleZ" 
		"SquaddieRN.placeHolderList[189]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftShoulder_Control.rotateX" 
		"SquaddieRN.placeHolderList[190]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftShoulder_Control.rotateY" 
		"SquaddieRN.placeHolderList[191]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftShoulder_Control.rotateZ" 
		"SquaddieRN.placeHolderList[192]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftShoulder_Control.visibility" 
		"SquaddieRN.placeHolderList[193]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftShoulder_Control.translateX" 
		"SquaddieRN.placeHolderList[194]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftShoulder_Control.translateY" 
		"SquaddieRN.placeHolderList[195]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftShoulder_Control.translateZ" 
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
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightElbow_Control.visibility" 
		"SquaddieRN.placeHolderList[203]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightElbow_Control.rotateX" 
		"SquaddieRN.placeHolderList[204]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightElbow_Control.rotateY" 
		"SquaddieRN.placeHolderList[205]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightElbow_Control.rotateZ" 
		"SquaddieRN.placeHolderList[206]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightElbow_Control.scaleX" 
		"SquaddieRN.placeHolderList[207]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightElbow_Control.scaleY" 
		"SquaddieRN.placeHolderList[208]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightElbow_Control.scaleZ" 
		"SquaddieRN.placeHolderList[209]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftElbow_Control.translateX" 
		"SquaddieRN.placeHolderList[210]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftElbow_Control.translateY" 
		"SquaddieRN.placeHolderList[211]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftElbow_Control.translateZ" 
		"SquaddieRN.placeHolderList[212]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftElbow_Control.visibility" 
		"SquaddieRN.placeHolderList[213]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftElbow_Control.rotateX" 
		"SquaddieRN.placeHolderList[214]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftElbow_Control.rotateY" 
		"SquaddieRN.placeHolderList[215]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftElbow_Control.rotateZ" 
		"SquaddieRN.placeHolderList[216]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftElbow_Control.scaleX" 
		"SquaddieRN.placeHolderList[217]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftElbow_Control.scaleY" 
		"SquaddieRN.placeHolderList[218]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftElbow_Control.scaleZ" 
		"SquaddieRN.placeHolderList[219]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightArmTwist_Control.visibility" 
		"SquaddieRN.placeHolderList[220]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightArmTwist_Control.translateX" 
		"SquaddieRN.placeHolderList[221]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightArmTwist_Control.translateY" 
		"SquaddieRN.placeHolderList[222]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightArmTwist_Control.translateZ" 
		"SquaddieRN.placeHolderList[223]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightArmTwist_Control.rotateX" 
		"SquaddieRN.placeHolderList[224]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightArmTwist_Control.rotateY" 
		"SquaddieRN.placeHolderList[225]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightArmTwist_Control.rotateZ" 
		"SquaddieRN.placeHolderList[226]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightArmTwist_Control.scaleX" 
		"SquaddieRN.placeHolderList[227]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightArmTwist_Control.scaleY" 
		"SquaddieRN.placeHolderList[228]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightArmTwist_Control.scaleZ" 
		"SquaddieRN.placeHolderList[229]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftArmTwist_Control.visibility" 
		"SquaddieRN.placeHolderList[230]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftArmTwist_Control.translateX" 
		"SquaddieRN.placeHolderList[231]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftArmTwist_Control.translateY" 
		"SquaddieRN.placeHolderList[232]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftArmTwist_Control.translateZ" 
		"SquaddieRN.placeHolderList[233]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftArmTwist_Control.rotateX" 
		"SquaddieRN.placeHolderList[234]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftArmTwist_Control.rotateY" 
		"SquaddieRN.placeHolderList[235]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftArmTwist_Control.rotateZ" 
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
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightHand_Control.visibility" 
		"SquaddieRN.placeHolderList[243]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightHand_Control.translateX" 
		"SquaddieRN.placeHolderList[244]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightHand_Control.translateY" 
		"SquaddieRN.placeHolderList[245]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightHand_Control.translateZ" 
		"SquaddieRN.placeHolderList[246]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightHand_Control.scaleX" 
		"SquaddieRN.placeHolderList[247]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightHand_Control.scaleY" 
		"SquaddieRN.placeHolderList[248]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightHand_Control.scaleZ" 
		"SquaddieRN.placeHolderList[249]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightHand_Control|Squaddie:RightFinders_Control.Grip" 
		"SquaddieRN.placeHolderList[250]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightHand_Control|Squaddie:RightFinders_Control.visibility" 
		"SquaddieRN.placeHolderList[251]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightHand_Control|Squaddie:RightFinders_Control.translateX" 
		"SquaddieRN.placeHolderList[252]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightHand_Control|Squaddie:RightFinders_Control.translateY" 
		"SquaddieRN.placeHolderList[253]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightHand_Control|Squaddie:RightFinders_Control.translateZ" 
		"SquaddieRN.placeHolderList[254]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightHand_Control|Squaddie:RightFinders_Control.rotateX" 
		"SquaddieRN.placeHolderList[255]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightHand_Control|Squaddie:RightFinders_Control.rotateY" 
		"SquaddieRN.placeHolderList[256]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightHand_Control|Squaddie:RightFinders_Control.rotateZ" 
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
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftHand_Control.visibility" 
		"SquaddieRN.placeHolderList[264]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftHand_Control.translateX" 
		"SquaddieRN.placeHolderList[265]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftHand_Control.translateY" 
		"SquaddieRN.placeHolderList[266]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftHand_Control.translateZ" 
		"SquaddieRN.placeHolderList[267]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftHand_Control.scaleX" 
		"SquaddieRN.placeHolderList[268]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftHand_Control.scaleY" 
		"SquaddieRN.placeHolderList[269]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftHand_Control.scaleZ" 
		"SquaddieRN.placeHolderList[270]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftHand_Control|Squaddie:LeftFingers_Control.Grip" 
		"SquaddieRN.placeHolderList[271]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftHand_Control|Squaddie:LeftFingers_Control.visibility" 
		"SquaddieRN.placeHolderList[272]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftHand_Control|Squaddie:LeftFingers_Control.translateX" 
		"SquaddieRN.placeHolderList[273]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftHand_Control|Squaddie:LeftFingers_Control.translateY" 
		"SquaddieRN.placeHolderList[274]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftHand_Control|Squaddie:LeftFingers_Control.translateZ" 
		"SquaddieRN.placeHolderList[275]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftHand_Control|Squaddie:LeftFingers_Control.rotateX" 
		"SquaddieRN.placeHolderList[276]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftHand_Control|Squaddie:LeftFingers_Control.rotateY" 
		"SquaddieRN.placeHolderList[277]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftHand_Control|Squaddie:LeftFingers_Control.rotateZ" 
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
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:LeftHip_Control.visibility" 
		"SquaddieRN.placeHolderList[285]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:LeftHip_Control.rotateX" 
		"SquaddieRN.placeHolderList[286]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:LeftHip_Control.rotateY" 
		"SquaddieRN.placeHolderList[287]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:LeftHip_Control.rotateZ" 
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
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:RightHip_Control.visibility" 
		"SquaddieRN.placeHolderList[295]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:RightHip_Control.rotateX" 
		"SquaddieRN.placeHolderList[296]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:RightHip_Control.rotateY" 
		"SquaddieRN.placeHolderList[297]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:RightHip_Control.rotateZ" 
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
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RightFoot_Control.visibility" 
		"SquaddieRN.placeHolderList[305]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RightFoot_Control.translateX" 
		"SquaddieRN.placeHolderList[306]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RightFoot_Control.translateY" 
		"SquaddieRN.placeHolderList[307]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RightFoot_Control.translateZ" 
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
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RightFoot_Control|Squaddie:RightToes_Control.visibility" 
		"SquaddieRN.placeHolderList[315]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RightFoot_Control|Squaddie:RightToes_Control.translateX" 
		"SquaddieRN.placeHolderList[316]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RightFoot_Control|Squaddie:RightToes_Control.translateY" 
		"SquaddieRN.placeHolderList[317]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RightFoot_Control|Squaddie:RightToes_Control.translateZ" 
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
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RightFoot_Control|Squaddie:RightKnee_Control.visibility" 
		"SquaddieRN.placeHolderList[325]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RightFoot_Control|Squaddie:RightKnee_Control.rotateX" 
		"SquaddieRN.placeHolderList[326]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RightFoot_Control|Squaddie:RightKnee_Control.rotateY" 
		"SquaddieRN.placeHolderList[327]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RightFoot_Control|Squaddie:RightKnee_Control.rotateZ" 
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
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:LeftFoot_Control.visibility" 
		"SquaddieRN.placeHolderList[335]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:LeftFoot_Control.translateX" 
		"SquaddieRN.placeHolderList[336]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:LeftFoot_Control.translateY" 
		"SquaddieRN.placeHolderList[337]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:LeftFoot_Control.translateZ" 
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
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:LeftFoot_Control|Squaddie:LeftToes_Control.visibility" 
		"SquaddieRN.placeHolderList[345]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:LeftFoot_Control|Squaddie:LeftToes_Control.translateX" 
		"SquaddieRN.placeHolderList[346]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:LeftFoot_Control|Squaddie:LeftToes_Control.translateY" 
		"SquaddieRN.placeHolderList[347]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:LeftFoot_Control|Squaddie:LeftToes_Control.translateZ" 
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
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:LeftFoot_Control|Squaddie:LeftKnee_Control.visibility" 
		"SquaddieRN.placeHolderList[355]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:LeftFoot_Control|Squaddie:LeftKnee_Control.rotateX" 
		"SquaddieRN.placeHolderList[356]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:LeftFoot_Control|Squaddie:LeftKnee_Control.rotateY" 
		"SquaddieRN.placeHolderList[357]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:LeftFoot_Control|Squaddie:LeftKnee_Control.rotateZ" 
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
		+ "            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 536\n            -height 356\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n"
		+ "            -width 536\n            -height 356\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -editorChanged \"CgAbBlastPanelOptChangeCallback\" \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n"
		+ "            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n"
		+ "            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n"
		+ "            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 536\n            -height 356\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -editorChanged \"CgAbBlastPanelOptChangeCallback\" \n"
		+ "            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"all\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n"
		+ "            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 0\n"
		+ "            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 1\n            -captureSequenceNumber -1\n            -width 953\n            -height 768\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n"
		+ "            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n"
		+ "            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 1\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n"
		+ "            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 0\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n"
		+ "            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n"
		+ "                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n"
		+ "                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n"
		+ "                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -valueLinesToggle 0\n                -outliner \"graphEditor1OutlineEd\" \n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n"
		+ "                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n"
		+ "                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n"
		+ "                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n"
		+ "                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n"
		+ "                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n"
		+ "\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -editorChanged \"updateModelPanelBar\" \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n"
		+ "                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererOverrideName \"stereoOverrideVP2\" \n"
		+ "                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n"
		+ "                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n"
		+ "            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n"
		+ "            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n"
		+ "            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n"
		+ "\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -docTag \\\"RADRENDER\\\" \\n    -editorChanged \\\"CgAbBlastPanelOptChangeCallback\\\" \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"all\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 1\\n    -captureSequenceNumber -1\\n    -width 953\\n    -height 768\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -docTag \\\"RADRENDER\\\" \\n    -editorChanged \\\"CgAbBlastPanelOptChangeCallback\\\" \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"all\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 1\\n    -captureSequenceNumber -1\\n    -width 953\\n    -height 768\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 10 -size 300 -divisions 4 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "13DDF64F-D04D-50F4-4B9E-45896DBE9B63";
	setAttr ".b" -type "string" "playbackOptions -min 10 -max 405 -ast 0 -aet 405 ";
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
	setAttr -s 22 ".ac";
	setAttr ".ac[0].acn" -type "string" "EnterCover";
	setAttr ".ac[0].acs" 10;
	setAttr ".ac[0].ace" 30;
	setAttr ".ac[1].acn" -type "string" "Idle_Left";
	setAttr ".ac[1].acs" 40;
	setAttr ".ac[1].ace" 60;
	setAttr ".ac[2].acn" -type "string" "Idle_Right";
	setAttr ".ac[2].acs" 70;
	setAttr ".ac[2].ace" 90;
	setAttr ".ac[3].acn" -type "string" "Idle_Center";
	setAttr ".ac[3].acs" 110;
	setAttr ".ac[3].ace" 130;
	setAttr ".ac[4].acn" -type "string" "Aim_ForwardLeft_In";
	setAttr ".ac[4].acs" 140;
	setAttr ".ac[4].ace" 155;
	setAttr ".ac[5].acn" -type "string" "Aim_ForwardLeft_Idle";
	setAttr ".ac[5].acs" 155;
	setAttr ".ac[5].ace" 170;
	setAttr ".ac[6].acn" -type "string" "Aim_ForwardLeft_Out";
	setAttr ".ac[6].acs" 170;
	setAttr ".ac[6].ace" 185;
	setAttr ".ac[7].acn" -type "string" "Aim_ForwardRight_In";
	setAttr ".ac[7].acs" 195;
	setAttr ".ac[7].ace" 210;
	setAttr ".ac[8].acn" -type "string" "Aim_ForwardRight_Idle";
	setAttr ".ac[8].acs" 210;
	setAttr ".ac[8].ace" 225;
	setAttr ".ac[9].acn" -type "string" "Aim_ForwardRight_Out";
	setAttr ".ac[9].acs" 225;
	setAttr ".ac[9].ace" 240;
	setAttr ".ac[10].acn" -type "string" "Aim_Left_In";
	setAttr ".ac[10].acs" 250;
	setAttr ".ac[10].ace" 260;
	setAttr ".ac[11].acn" -type "string" "Aim_Left_Idle";
	setAttr ".ac[11].acs" 260;
	setAttr ".ac[11].ace" 270;
	setAttr ".ac[12].acn" -type "string" "Aim_Left_Out";
	setAttr ".ac[12].acs" 270;
	setAttr ".ac[12].ace" 280;
	setAttr ".ac[13].acn" -type "string" "Aim_Right_In";
	setAttr ".ac[13].acs" 280;
	setAttr ".ac[13].ace" 290;
	setAttr ".ac[14].acn" -type "string" "Aim_Right_Idle";
	setAttr ".ac[14].acs" 290;
	setAttr ".ac[14].ace" 300;
	setAttr ".ac[15].acn" -type "string" "Aim_Right_Out";
	setAttr ".ac[15].acs" 300;
	setAttr ".ac[15].ace" 310;
	setAttr ".ac[16].acn" -type "string" "Aim_Back_In";
	setAttr ".ac[16].acs" 310;
	setAttr ".ac[16].ace" 320;
	setAttr ".ac[17].acn" -type "string" "Aim_Back_Idle";
	setAttr ".ac[17].acs" 320;
	setAttr ".ac[17].ace" 330;
	setAttr ".ac[18].acn" -type "string" "Aim_Back_Out";
	setAttr ".ac[18].acs" 330;
	setAttr ".ac[18].ace" 340;
	setAttr ".ac[19].acn" -type "string" "ReloadCover";
	setAttr ".ac[19].acs" 340;
	setAttr ".ac[19].ace" 360;
	setAttr ".ac[20].acn" -type "string" "ExitCover";
	setAttr ".ac[20].acs" 360;
	setAttr ".ac[20].ace" 370;
	setAttr ".ac[21].acn" -type "string" "SwitchWeapon_Cover";
	setAttr ".ac[21].acs" 380;
	setAttr ".ac[21].ace" 405;
	setAttr ".ac[21].asn" -type "string" "";
	setAttr ".ic" no;
	setAttr ".fv" -type "string" "FBX201800";
	setAttr ".exp" -type "string" "/Users/briancollins/Unity/DropZone/Assets/DropZone/Characters/Squaddie";
	setAttr ".exf" -type "string" "SideArm_Cover.fbx";
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
	setAttr ".re" -type "float2" 2.5 2.5 ;
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
	setAttr -s 34 ".ktv[0:33]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 163 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0
		 290 0 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTL -n "Root_Control_translateY";
	rename -uid "9BF2FBE1-2343-400C-7437-828943140C40";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 163 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0
		 290 0 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTL -n "Root_Control_translateZ";
	rename -uid "BDE8D69D-E646-2853-AB94-96846000E83B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 -50 10 -50 20 0 30 0 40 0 60 0 70 0 90 0
		 110 0 130 0 140 0 155 0 163 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0
		 280 0 290 0 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTL -n "LeftFoot_Control_translateX";
	rename -uid "C90A741F-9743-95AB-7812-10806D03686C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 59 ".ktv[0:58]"  0 0 10 -12.306395532036035 15 -0.26119964002472784
		 20 -47.992891563136993 25 -47.992891563136993 30 -53.833393144968539 40 -53.833393144968539
		 60 -53.833393144968539 70 -53.833393144968539 90 -53.833393144968539 110 -53.833393144968539
		 130 -53.833393144968539 140 -53.833393144968539 147 94.375655536493667 155 94.375655536493667
		 163 94.375655536493667 170 94.375655536493667 175 94.375655536493667 180 -53.833393144968539
		 185 -53.833393144968539 195 -53.833393144968539 198 -53.833393144968539 199 -53.137540041717536
		 200 -64.933423143392957 201 -88.908183033846825 205 -88.908183033846825 207 -71.953404098597773
		 208 -72.694031045983365 210 -72.694031045983365 225 -72.694031045983365 229 -72.694031045983365
		 230 -57.11182601079139 232 -34.298691656995004 235 -34.298691656995004 238 -53.833393144968539
		 240 -53.833393144968539 250 -53.833393144968539 260 -53.833393144968539 270 -53.833393144968539
		 280 -53.833393144968539 285 -53.833393144968539 287 -18.063591218572192 288 9.6651219026457511
		 290 9.6651219026457511 300 9.6651219026457511 305 -53.833393144968539 310 -53.833393144968539
		 317 -53.833393144968539 320 -53.833393144968539 330 -53.833393144968539 335 -53.833393144968539
		 338 -53.833393144968539 340 -53.833393144968539 360 -53.833393144968539 365 -53.833393144968539
		 370 -53.833393144968539 375 -53.833393144968539 380 -53.833393144968539 405 -53.833393144968539;
	setAttr -s 59 ".kit[50:58]"  1 1 1 18 18 18 18 1 
		1;
	setAttr -s 59 ".kot[50:58]"  1 1 1 18 18 18 18 1 
		1;
	setAttr -s 59 ".kix[50:58]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 59 ".kiy[50:58]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 59 ".kox[50:58]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 59 ".koy[50:58]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "LeftFoot_Control_translateY";
	rename -uid "463216E0-654C-ABA6-174B-22BA901159FB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 66 ".ktv[0:65]"  0 -5.6843418860808015e-14 10 27.373114868922642
		 15 28.834588144555717 20 0 25 0 27 10.831611456718372 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 144 22.592080753486101 147 0 155 0 163 0 170 0 175 0 178 13.372540775050966
		 180 0 185 0 195 0 198 0 199 12.663546719691967 200 10.522281852911942 201 0 205 0
		 207 2.7984853671681638 208 0 210 0 225 0 229 0 230 10.02870478644623 231 7.6854436546753835
		 232 0 235 0 238 0 240 0 250 0 260 0 270 0 280 0 285 0 287 13.000278134846726 288 0
		 290 0 300 0 305 0 310 0 317 0 319 9.0922625382997726 320 0 330 0 335 0 337 8.229898557945285
		 338 0 340 0 360 0 365 0 367 8.126134784178392 370 14.316826140717227 375 14.316826140717227
		 380 0 405 0;
	setAttr -s 66 ".kit[55:65]"  1 18 1 1 18 18 18 18 
		18 1 1;
	setAttr -s 66 ".kot[55:65]"  1 18 1 1 18 18 18 18 
		18 1 1;
	setAttr -s 66 ".kix[55:65]"  1 1 1 1 1 1 0.014550101919650124 1 1 1 
		1;
	setAttr -s 66 ".kiy[55:65]"  0 0 0 0 0 0 0.9998941416640702 0 0 0 0;
	setAttr -s 66 ".kox[55:65]"  1 1 1 1 1 1 0.014550101919650124 1 1 1 
		1;
	setAttr -s 66 ".koy[55:65]"  0 0 0 0 0 0 0.9998941416640702 0 0 0 0;
createNode animCurveTL -n "LeftFoot_Control_translateZ";
	rename -uid "5433778F-CB49-B7B4-B178-0C98411E04DF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 60 ".ktv[0:59]"  0 0 10 -49.268408769385687 15 53.563816860904595
		 20 47.983012047827884 25 47.983012047827884 30 13.664188637369222 40 13.664188637369222
		 60 13.664188637369222 70 13.664188637369222 90 13.664188637369222 110 13.664188637369222
		 130 13.664188637369222 140 13.664188637369222 144 -11.624326485355992 147 2.4277623293519639
		 155 2.4277623293519639 163 2.4277623293519639 170 2.4277623293519639 175 2.4277623293519639
		 180 13.664188637369222 185 13.664188637369222 195 13.664188637369222 198 13.664188637369222
		 199 -7.3305364242655608 200 -19.030111181623329 201 -13.617183992347126 205 -13.617183992347126
		 207 -9.6903915819337527 208 -17.216611850352709 210 -17.216611850352709 225 -17.216611850352709
		 229 -17.216611850352709 230 -15.313344342916881 232 -3.6052817825335133 235 -3.6052817825335133
		 238 13.664188637369222 240 13.664188637369222 250 13.664188637369222 260 13.664188637369222
		 270 13.664188637369222 280 13.664188637369222 285 13.664188637369222 287 24.657743233379229
		 288 38.392909373604368 290 38.392909373604368 300 38.392909373604368 305 13.664188637369222
		 310 13.664188637369222 317 13.664188637369222 320 37.75318894384381 330 37.75318894384381
		 335 37.75318894384381 338 13.664188637369222 340 13.664188637369222 360 13.664188637369222
		 365 13.664188637369222 370 -51.113588074814174 375 -51.113588074814174 380 13.664188637369222
		 405 13.664188637369222;
	setAttr -s 60 ".kit[51:59]"  1 1 1 18 18 18 18 1 
		1;
	setAttr -s 60 ".kot[51:59]"  1 1 1 18 18 18 18 1 
		1;
	setAttr -s 60 ".kix[51:59]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 60 ".kiy[51:59]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 60 ".kox[51:59]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 60 ".koy[51:59]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "LeftKnee_Control_translateX";
	rename -uid "3CDF2F9E-1241-A390-30E2-51BC599A6D12";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 163 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0
		 290 0 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTL -n "LeftKnee_Control_translateY";
	rename -uid "616C8942-4F49-8720-B217-AEA96EC43C12";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 163 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0
		 290 0 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTL -n "LeftKnee_Control_translateZ";
	rename -uid "47D15C4C-824B-2FB0-8A41-EDADF5421CCB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 163 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0
		 290 0 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTL -n "LeftToes_Control_translateX";
	rename -uid "09528C22-3544-6316-BC94-D48101A71FDE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 163 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0
		 290 0 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTL -n "LeftToes_Control_translateY";
	rename -uid "F299B1FD-9342-E456-3D90-46B83C61946A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 163 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0
		 290 0 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTL -n "LeftToes_Control_translateZ";
	rename -uid "D26367B3-ED47-8EB9-BE8C-2D8CF6541566";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 163 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0
		 290 0 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTL -n "RightFoot_Control_translateX";
	rename -uid "9683242C-194B-952D-AB4C-34B4B3D7410F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 60 ".ktv[0:59]"  0 0 10 8.2637397753219552 14 20.559687697738752
		 19 20.559687697738752 25 49.46813381794361 30 49.46813381794361 40 49.46813381794361
		 60 49.46813381794361 70 49.46813381794361 90 49.46813381794361 110 49.46813381794361
		 130 49.46813381794361 140 49.46813381794361 143 49.46813381794361 146 44.788742752353116
		 150 80.834612951682672 155 80.834612951682672 163 80.834612951682672 170 80.834612951682672
		 173 80.834612951682672 175 60.779601743782564 180 60.779601743782564 185 49.46813381794361
		 195 49.46813381794361 197 49.46813381794361 202 -82.472878181902544 210 -82.472878181902544
		 225 -82.472878181902544 227 -82.472878181902544 232 51.170634511055596 234 49.46813381794361
		 240 49.46813381794361 250 49.46813381794361 254 49.46813381794361 257 59.038532395022784
		 260 59.038532395022784 270 59.038532395022784 275 59.038532395022784 280 49.46813381794361
		 284 -11.916795826336504 290 -11.916795826336504 300 -11.916795826336504 304 -11.916795826336504
		 307 41.602736033971269 308 49.46813381794361 310 49.46813381794361 312 49.46813381794361
		 316 33.03588517327502 320 33.03588517327502 330 33.03588517327502 331 33.03588517327502
		 333 46.29688908115542 335 49.46813381794361 340 49.46813381794361 360 49.46813381794361
		 365 49.46813381794361 370 49.46813381794361 375 49.46813381794361 380 49.46813381794361
		 405 49.46813381794361;
	setAttr -s 60 ".kit[50:59]"  1 18 1 1 18 18 18 18 
		1 1;
	setAttr -s 60 ".kot[50:59]"  1 18 1 1 18 18 18 18 
		1 1;
	setAttr -s 60 ".kix[50:59]"  1 0.010142135634655994 1 1 1 1 1 1 1 1;
	setAttr -s 60 ".kiy[50:59]"  0 0.9999485672197187 0 0 0 0 0 0 0 0;
	setAttr -s 60 ".kox[50:59]"  1 0.010142135634655994 1 1 1 1 1 1 1 1;
	setAttr -s 60 ".koy[50:59]"  0 0.9999485672197187 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "RightFoot_Control_translateY";
	rename -uid "CEC1AEA9-4749-E93C-6681-8784975D31AA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 67 ".ktv[0:66]"  0 0 10 9.3863067157120703 14 0 19 0 22 21.164966418983212
		 25 0 30 0 40 0 60 0 70 0 90 0 110 0 130 0 140 0 143 0 146 0 148 11.449761471383775
		 150 0 155 0 163 0 170 0 173 0 180 0 183 9.7092617911246268 185 0 195 0 197 0 199 29.293459306771283
		 202 0 210 0 225 0 227 0 230 17.670564144645638 234 0 240 0 250 0 254 0 256 8.1098614942037646
		 257 0 260 0 270 0 275 0 280 0 282 23.562648678557771 284 -5.6843418860808015e-14
		 290 -5.6843418860808015e-14 300 -5.6843418860808015e-14 304 -5.6843418860808015e-14
		 307 20.472881068364586 308 0 310 0 312 0 314 13.643287896533971 316 0 320 0 330 0
		 331 0 333 14.621211680436497 335 0 340 0 360 0 363 15.918334454882213 365 0 370 0
		 375 0 380 0 405 0;
	setAttr -s 67 ".kit[56:66]"  1 18 1 1 18 18 18 18 
		18 1 1;
	setAttr -s 67 ".kot[56:66]"  1 18 1 1 18 18 18 18 
		18 1 1;
	setAttr -s 67 ".kix[56:66]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 67 ".kiy[56:66]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 67 ".kox[56:66]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 67 ".koy[56:66]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "RightFoot_Control_translateZ";
	rename -uid "D8B7513C-314C-7E56-6F6C-89AEAB279033";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 60 ".ktv[0:59]"  0 0 10 46.614072574620806 14 40.821607629467962
		 19 14.804480878087023 25 44.396288578727663 30 44.396288578727663 40 44.396288578727663
		 60 44.396288578727663 70 44.396288578727663 90 44.396288578727663 110 44.396288578727663
		 130 44.396288578727663 140 44.396288578727663 143 44.396288578727663 146 24.127089276205837
		 150 47.218911713626213 155 47.218911713626213 163 47.218911713626213 170 47.218911713626213
		 173 47.218911713626213 175 52.36856234884543 180 52.36856234884543 185 44.396288578727663
		 195 44.396288578727663 197 44.396288578727663 199 -48.701964425144872 202 34.190334895527911
		 210 34.190334895527911 225 34.190334895527911 227 34.190334895527911 230 -32.823731678453626
		 234 44.396288578727663 240 44.396288578727663 250 44.396288578727663 254 44.396288578727663
		 257 26.331466970541854 260 26.331466970541854 270 26.331466970541854 275 26.331466970541854
		 280 44.396288578727663 284 -17.794290729119165 290 -17.794290729119165 300 -17.794290729119165
		 304 -17.794290729119165 307 22.875198507130079 308 44.396288578727663 310 44.396288578727663
		 312 44.396288578727663 316 5.8480102414824167 320 5.8480102414824167 330 5.8480102414824167
		 331 5.8480102414824167 335 44.396288578727663 340 44.396288578727663 360 44.396288578727663
		 365 -47.144122150320811 370 -47.144122150320811 375 -47.144122150320811 380 44.396288578727663
		 405 44.396288578727663;
	setAttr -s 60 ".kit[51:59]"  1 1 1 18 18 18 18 1 
		1;
	setAttr -s 60 ".kot[51:59]"  1 1 1 18 18 18 18 1 
		1;
	setAttr -s 60 ".kix[51:59]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 60 ".kiy[51:59]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 60 ".kox[51:59]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 60 ".koy[51:59]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "RightKnee_Control_translateX";
	rename -uid "4F3A8F61-5244-AF66-2202-91957AEE4AB1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 163 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0
		 290 0 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTL -n "RightKnee_Control_translateY";
	rename -uid "1DC84F6E-CB49-94A5-A739-C6A04BE2CBBB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 163 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0
		 290 0 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTL -n "RightKnee_Control_translateZ";
	rename -uid "7E99C7FD-3746-8F89-A426-A3A6B98A50FB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 163 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0
		 290 0 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTL -n "RightToes_Control_translateX";
	rename -uid "23A30692-C845-534A-6F80-B9BD7E37F4ED";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 163 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0
		 290 0 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTL -n "RightToes_Control_translateY";
	rename -uid "9BFFC7CC-0C44-693F-58B1-A088101616A6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 163 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0
		 290 0 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTL -n "RightToes_Control_translateZ";
	rename -uid "C539CEAB-AB45-5DF5-8B9C-2B8A31A00235";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 163 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0
		 290 0 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTL -n "RootMotion_Control_translateX";
	rename -uid "DADEDED9-9946-4B6A-E07F-0EB1EA73C8E9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 36 ".ktv[0:35]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 163 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0
		 290 0 300 0 310 0 320 0 330 0 340 0 360 0 363 0 364 0 370 0 375 0 380 0 405 0;
	setAttr -s 36 ".kit[28:35]"  1 18 18 18 18 18 1 1;
	setAttr -s 36 ".kot[28:35]"  1 18 18 18 18 18 1 1;
	setAttr -s 36 ".kix[28:35]"  1 1 1 1 1 1 1 1;
	setAttr -s 36 ".kiy[28:35]"  0 0 0 0 0 0 0 0;
	setAttr -s 36 ".kox[28:35]"  1 1 1 1 1 1 1 1;
	setAttr -s 36 ".koy[28:35]"  0 0 0 0 0 0 0 0;
createNode animCurveTL -n "RootMotion_Control_translateY";
	rename -uid "64467B36-234D-45DE-CEE8-E097A15D8809";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 36 ".ktv[0:35]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 163 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0
		 290 0 300 0 310 0 320 0 330 0 340 0 360 0 363 0 364 0 370 0 375 0 380 0 405 0;
	setAttr -s 36 ".kit[28:35]"  1 18 18 18 18 18 1 1;
	setAttr -s 36 ".kot[28:35]"  1 18 18 18 18 18 1 1;
	setAttr -s 36 ".kix[28:35]"  1 1 1 1 1 1 1 1;
	setAttr -s 36 ".kiy[28:35]"  0 0 0 0 0 0 0 0;
	setAttr -s 36 ".kox[28:35]"  1 1 1 1 1 1 1 1;
	setAttr -s 36 ".koy[28:35]"  0 0 0 0 0 0 0 0;
createNode animCurveTL -n "RootMotion_Control_translateZ";
	rename -uid "642B0782-A54F-8CA9-1A1B-4F8F8AB5914B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 36 ".ktv[0:35]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 163 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0
		 290 0 300 0 310 0 320 0 330 0 340 0 360 0 363 0 364 -38.195589905469795 370 -38.195589905469795
		 375 -38.195589905469795 380 0 405 0;
	setAttr -s 36 ".kit[28:35]"  1 18 18 18 18 18 1 1;
	setAttr -s 36 ".kot[28:35]"  1 18 18 18 18 18 1 1;
	setAttr -s 36 ".kix[28:35]"  1 1 1 1 1 1 1 1;
	setAttr -s 36 ".kiy[28:35]"  0 0 0 0 0 0 0 0;
	setAttr -s 36 ".kox[28:35]"  1 1 1 1 1 1 1 1;
	setAttr -s 36 ".koy[28:35]"  0 0 0 0 0 0 0 0;
createNode animCurveTL -n "LeftHip_Control_translateX";
	rename -uid "35B82229-474F-8851-8026-EF924A4425D4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 163 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0
		 290 0 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTL -n "LeftHip_Control_translateY";
	rename -uid "8831FFFA-A84A-2C2B-B878-D29D99141757";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 163 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0
		 290 0 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTL -n "LeftHip_Control_translateZ";
	rename -uid "BC1892EC-B046-F049-CAB5-11B37C24AC17";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 163 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0
		 290 0 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTL -n "RightHip_Control_translateX";
	rename -uid "6DB31350-CC41-B927-05C3-A4B5871EC575";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 163 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0
		 290 0 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTL -n "RightHip_Control_translateY";
	rename -uid "0C40B26E-184F-98E3-5866-6EA12F6139B1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 163 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0
		 290 0 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTL -n "RightHip_Control_translateZ";
	rename -uid "DADB5A16-0342-592B-E67C-B5A750AEB080";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 163 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0
		 290 0 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTL -n "Spine1_Control_translateX";
	rename -uid "2DD0DD8B-3241-98A3-F812-D78A8E5CB13E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 163 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0
		 290 0 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTL -n "Spine1_Control_translateY";
	rename -uid "DA057B97-5C43-85B5-FCBC-17A88D80D0FE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 163 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0
		 290 0 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTL -n "Spine1_Control_translateZ";
	rename -uid "BB442EDD-8242-F1E0-CEAC-B680371FDC82";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 163 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0
		 290 0 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTL -n "Spine2_Control_translateX";
	rename -uid "4AC76D31-304D-0B7E-0F65-AF9FE2818EC9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 163 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0
		 290 0 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTL -n "Spine2_Control_translateY";
	rename -uid "25AE75C2-5E4E-7B07-3D69-2E9E6C72D8CC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 163 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0
		 290 0 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTL -n "Spine2_Control_translateZ";
	rename -uid "1756674A-1141-2A49-89DE-769E62962E6D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 163 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0
		 290 0 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTL -n "LeftArmTwist_Control_translateX";
	rename -uid "99EFE83C-604C-DE41-7A1E-43A0C02B09D7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 163 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0
		 290 0 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTL -n "LeftArmTwist_Control_translateY";
	rename -uid "A4B64441-634F-5C5B-AB96-F4803A569887";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 163 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0
		 290 0 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTL -n "LeftArmTwist_Control_translateZ";
	rename -uid "C7385032-504B-BDBF-2CA7-5CA3FC9F426A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 163 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0
		 290 0 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTL -n "LeftElbow_Control_translateX";
	rename -uid "AD25DF4E-B049-12E1-FF09-BBAAC387514A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 147 -42.136848710879335 155 -29.137240139622481 163 -30.908577472963479
		 170 -29.137240139622481 185 0 195 0 210 0 225 0 240 0 250 0 260 -56.32283332184533
		 270 -56.32283332184533 280 0 290 0 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0
		 380 0 405 0;
	setAttr -s 35 ".kit[29:34]"  1 18 18 18 1 1;
	setAttr -s 35 ".kot[29:34]"  1 18 18 18 1 1;
	setAttr -s 35 ".kix[29:34]"  1 1 1 1 1 1;
	setAttr -s 35 ".kiy[29:34]"  0 0 0 0 0 0;
	setAttr -s 35 ".kox[29:34]"  1 1 1 1 1 1;
	setAttr -s 35 ".koy[29:34]"  0 0 0 0 0 0;
createNode animCurveTL -n "LeftElbow_Control_translateY";
	rename -uid "6A90407B-3940-27CD-1129-7B94F805B8C1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 147 -45.323746030629721 155 -37.126840429014557 163 -37.126840429014557
		 170 -37.126840429014557 185 0 195 0 210 0 225 0 240 0 250 0 260 -6.3623891928236134
		 270 -6.3623891928236134 280 0 290 0 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0
		 380 0 405 0;
	setAttr -s 35 ".kit[29:34]"  1 18 18 18 1 1;
	setAttr -s 35 ".kot[29:34]"  1 18 18 18 1 1;
	setAttr -s 35 ".kix[29:34]"  1 1 1 1 1 1;
	setAttr -s 35 ".kiy[29:34]"  0 0 0 0 0 0;
	setAttr -s 35 ".kox[29:34]"  1 1 1 1 1 1;
	setAttr -s 35 ".koy[29:34]"  0 0 0 0 0 0;
createNode animCurveTL -n "LeftElbow_Control_translateZ";
	rename -uid "DE065043-674D-7237-2F64-AD95E18A15C1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 147 -65.615121673607135 155 -43.236616842216762 163 -48.035575035564136
		 170 -43.236616842216762 185 0 195 0 210 0 225 0 240 0 250 0 260 -1.7220273787754394
		 270 -1.7220273787754394 280 0 290 0 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0
		 380 0 405 0;
	setAttr -s 35 ".kit[29:34]"  1 18 18 18 1 1;
	setAttr -s 35 ".kot[29:34]"  1 18 18 18 1 1;
	setAttr -s 35 ".kix[29:34]"  1 1 1 1 1 1;
	setAttr -s 35 ".kiy[29:34]"  0 0 0 0 0 0;
	setAttr -s 35 ".kox[29:34]"  1 1 1 1 1 1;
	setAttr -s 35 ".koy[29:34]"  0 0 0 0 0 0;
createNode animCurveTL -n "LeftHand_Control_translateX";
	rename -uid "95799B64-8A47-D949-E085-04B74C8D47DA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  0 -32.182695650766192 10 -32.884937332905189
		 30 -36.324889656693095 40 -36.324889656693095 60 -36.324889656693095 70 -22.349039965927275
		 90 -22.349039965927275 110 -29.293505572213416 130 -29.293505572213416 140 -31.007187798643066
		 147 -30.669136743425124 155 -20.315140494893125 163 -20.315140494893125 170 -20.315140494893125
		 185 -31.007187798643066 195 -22.349039965927275 210 -22.349039965927275 225 -22.349039965927275
		 228 -24.632845346203005 232 -27.807054198174377 240 -22.349039965927275 250 -22.349039965927275
		 260 -16.339232899798485 270 -16.339232899798485 280 -22.349039965927275 290 -22.349039965927275
		 300 -22.349039965927275 310 -22.349039965927275 320 -35.67287916140242 330 -35.67287916140242
		 340 -22.349039965927275 344 -39.277985857884453 348 -26.142014582119344 352 -60.418063796611321
		 360 -27.944615171637334 380 -27.944615171637334 386 -13.602356522673421 392 -31.306833844827629
		 399 -24.575909498271667 405 -27.944615171637334;
	setAttr -s 40 ".kit[30:39]"  1 18 18 18 18 1 18 18 
		18 1;
	setAttr -s 40 ".kot[30:39]"  1 18 18 18 18 1 18 18 
		18 1;
	setAttr -s 40 ".kix[30:39]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".kiy[30:39]"  0 0 0 0 0 0 0 0 0 0;
	setAttr -s 40 ".kox[30:39]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".koy[30:39]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "LeftHand_Control_translateY";
	rename -uid "37267267-8640-E6C2-92BC-C2BB8B0C2F03";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  0 0.26615683388942274 10 18.510535354120595
		 30 -20.603832128740521 40 -20.603832128740521 60 -20.603832128740521 70 -14.80676435991969
		 90 -14.80676435991969 110 -21.745487867407292 130 -21.745487867407292 140 -13.708045158024067
		 147 -1.2552972839638414 155 -10.837594101563591 163 -10.837594101563591 170 -10.837594101563591
		 185 -13.708045158024067 195 -14.80676435991969 210 -14.80676435991969 225 -14.80676435991969
		 228 -1.2430134949511999 232 2.6066350859800234 240 -14.80676435991969 250 -14.80676435991969
		 260 -14.772060569376656 270 -14.772060569376656 280 -14.80676435991969 290 -14.80676435991969
		 300 -14.80676435991969 310 -14.80676435991969 320 -15.549035785581447 330 -15.549035785581447
		 340 -14.80676435991969 344 16.62717140839829 348 7.0526195246899288 352 30.021145553281823
		 360 -16.487500639650957 380 -16.487500639650957 386 -2.419346839741944 392 -8.7830539331561628
		 399 -6.1021257588052853 405 -16.487500639650957;
	setAttr -s 40 ".kit[30:39]"  1 18 18 18 18 1 18 18 
		18 1;
	setAttr -s 40 ".kot[30:39]"  1 18 18 18 18 1 18 18 
		18 1;
	setAttr -s 40 ".kix[30:39]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".kiy[30:39]"  0 0 0 0 0 0 0 0 0 0;
	setAttr -s 40 ".kox[30:39]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".koy[30:39]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "LeftHand_Control_translateZ";
	rename -uid "AAC30013-934A-185E-9E50-D1BDB2C763CE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  0 2.1312366952600645 10 25.419727489620723
		 30 -10.303612294334229 40 -10.303612294334229 60 -10.303612294334229 70 -9.2374882619326506
		 90 -9.2374882619326506 110 -6.0811246691449856 130 -6.0811246691449856 140 -17.931266247552784
		 147 -10.125766154663284 155 -11.446166391487532 163 -11.446166391487532 170 -11.446166391487532
		 185 -17.931266247552784 195 -9.2374882619326506 210 -9.2374882619326506 225 -9.2374882619326506
		 228 13.907662164054305 232 33.992266320692373 240 -9.2374882619326506 250 -9.2374882619326506
		 260 -15.349897393388112 270 -15.349897393388112 280 -9.2374882619326506 290 -9.2374882619326506
		 300 -9.2374882619326506 310 -9.2374882619326506 320 -1.7492801249155705 330 -1.7492801249155705
		 340 -9.2374882619326506 344 18.157590224178573 348 17.351378816114661 352 28.187788477916225
		 360 -0.32170808061858047 380 -0.32170808061858047 386 2.583312731120722 392 6.9885951387244054
		 399 12.393591564395837 405 -0.32170808061858047;
	setAttr -s 40 ".kit[30:39]"  1 18 18 18 18 1 18 18 
		18 1;
	setAttr -s 40 ".kot[30:39]"  1 18 18 18 18 1 18 18 
		18 1;
	setAttr -s 40 ".kix[30:39]"  1 1 1 1 1 1 0.068237191837625846 0.055130225590917153 
		1 1;
	setAttr -s 40 ".kiy[30:39]"  0 0 0 0 0 0 0.99766912633904581 0.998479172655241 
		0 0;
	setAttr -s 40 ".kox[30:39]"  1 1 1 1 1 1 0.068237191837625846 0.05513022559091716 
		1 1;
	setAttr -s 40 ".koy[30:39]"  0 0 0 0 0 0 0.99766912633904581 0.99847917265524111 
		0 0;
createNode animCurveTL -n "LeftFingers_Control_translateX";
	rename -uid "B28FA31B-FD43-B272-EC1E-409603FEA7A2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 163 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0
		 290 0 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTL -n "LeftFingers_Control_translateY";
	rename -uid "5E46E87C-DE4D-EF3D-8E22-FDA024D286FC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 163 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0
		 290 0 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTL -n "LeftFingers_Control_translateZ";
	rename -uid "B28CA294-1940-FE5A-854B-ABAF883BF6AC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 163 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0
		 290 0 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTL -n "LeftShoulder_Control_translateX";
	rename -uid "6DA66B9A-A143-9399-FD44-698962DBEE85";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 163 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0
		 290 0 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTL -n "LeftShoulder_Control_translateY";
	rename -uid "56A7B604-7049-6B99-ED4F-71B5BD3E1346";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 163 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0
		 290 0 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTL -n "LeftShoulder_Control_translateZ";
	rename -uid "42C61272-5049-411B-72E1-5086303FE142";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 163 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0
		 290 0 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
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
	setAttr -s 34 ".ktv[0:33]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 163 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0
		 290 0 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTL -n "Neck_Control_translateY";
	rename -uid "C6A44684-274A-2555-6CA9-7497B64B02CD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 163 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0
		 290 0 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTL -n "Neck_Control_translateZ";
	rename -uid "1617CF66-5741-C446-3C95-DC986B427C00";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 163 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0
		 290 0 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTL -n "Head_Control_translateX";
	rename -uid "56B94D56-3044-C77F-C0AF-51B921BC9E35";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 163 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0
		 290 0 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTL -n "Head_Control_translateY";
	rename -uid "0637CB69-9A43-08C1-690C-5DB0E8CFBF3F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 163 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0
		 290 0 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTL -n "Head_Control_translateZ";
	rename -uid "C928D8C9-4045-01E3-746C-1FA63DCB8B4F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 163 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0
		 290 0 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTL -n "RightArmTwist_Control_translateX";
	rename -uid "57829432-194B-30D7-497B-4785D8C78755";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 163 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0
		 290 0 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTL -n "RightArmTwist_Control_translateY";
	rename -uid "34868EF5-1748-1EE9-4282-57A21EF704D3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 163 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0
		 290 0 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTL -n "RightArmTwist_Control_translateZ";
	rename -uid "427554A9-CD49-D414-8C55-06ABDC780D1E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 163 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0
		 290 0 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTL -n "RightElbow_Control_translateX";
	rename -uid "E18A111A-CB47-B244-783C-71B9B9B10BDD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 -23.293111627547226 10 -23.293111627547226
		 20 -23.293111627547226 30 -23.293111627547226 40 -23.293111627547226 60 -23.293111627547226
		 70 -23.293111627547226 90 -23.293111627547226 110 -23.293111627547226 130 -23.293111627547226
		 140 -23.293111627547226 149 27.958089064252878 155 -74.401238904441186 163 -74.401238904441186
		 170 -74.401238904441186 174 11.910454556040913 185 -23.293111627547226 195 -23.293111627547226
		 205 30.131034064943368 210 -33.042847901084784 225 -33.042847901084784 240 -23.293111627547226
		 250 -23.293111627547226 255 20.94821351592007 260 29.492364917942162 270 29.492364917942162
		 280 -23.293111627547226 286 1.7812445807983528 290 -13.359184590271083 300 -13.359184590271083
		 310 -23.293111627547226 317 -5.6960488097185076 320 -23.293111627547226 330 -23.293111627547226
		 340 -23.293111627547226 344 -33.709156205910872 360 -23.293111627547226 370 -23.293111627547226
		 375 -23.293111627547226 380 -23.293111627547226 388 -51.622213848227638 405 -23.293111627547226;
	setAttr -s 42 ".kit[34:41]"  1 18 18 18 18 1 18 1;
	setAttr -s 42 ".kot[34:41]"  1 18 18 18 18 1 18 1;
	setAttr -s 42 ".kix[34:41]"  1 1 1 1 1 1 1 1;
	setAttr -s 42 ".kiy[34:41]"  0 0 0 0 0 0 0 0;
	setAttr -s 42 ".kox[34:41]"  1 1 1 1 1 1 1 1;
	setAttr -s 42 ".koy[34:41]"  0 0 0 0 0 0 0 0;
createNode animCurveTL -n "RightElbow_Control_translateY";
	rename -uid "5AC38800-3642-2302-D691-7CBA4E28E2B2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 149 -80.603965566618257 155 -1.4042074328982908 163 -1.4042074328982908
		 170 -1.4042074328982908 174 -72.466316042720422 185 0 195 0 205 -97.600130357425712
		 210 -86.146837574512674 225 -86.146837574512674 240 0 250 0 255 -89.113275589405561
		 260 -59.620526371265974 270 -59.620526371265974 280 0 286 -83.97930605560633 290 -63.476744724268634
		 300 -63.476744724268634 310 0 317 -105.85029162657774 320 0 330 0 340 0 344 -120.78045709950135
		 360 0 370 0 375 0 380 0 388 -57.607997641931284 405 0;
	setAttr -s 42 ".kit[34:41]"  1 18 18 18 18 1 18 1;
	setAttr -s 42 ".kot[34:41]"  1 18 18 18 18 1 18 1;
	setAttr -s 42 ".kix[34:41]"  1 1 1 1 1 1 1 1;
	setAttr -s 42 ".kiy[34:41]"  0 0 0 0 0 0 0 0;
	setAttr -s 42 ".kox[34:41]"  1 1 1 1 1 1 1 1;
	setAttr -s 42 ".koy[34:41]"  0 0 0 0 0 0 0 0;
createNode animCurveTL -n "RightElbow_Control_translateZ";
	rename -uid "EDC633C5-944B-9363-7EC3-45A9570699F9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 12.588214453850696 10 12.588214453850696
		 20 12.588214453850696 30 12.588214453850696 40 12.588214453850696 60 12.588214453850696
		 70 12.588214453850696 90 12.588214453850696 110 12.588214453850696 130 12.588214453850696
		 140 12.588214453850696 149 27.915415556229576 155 68.393360257126943 163 68.393360257126943
		 170 68.393360257126943 174 56.774440761957173 185 12.588214453850696 195 12.588214453850696
		 205 54.789439278395342 210 43.434583777824855 225 43.434583777824855 240 12.588214453850696
		 250 12.588214453850696 255 63.785071748741579 260 16.750312932760487 270 16.750312932760487
		 280 12.588214453850696 286 112.87870971888604 290 18.804345717540912 300 18.804345717540912
		 310 12.588214453850696 317 91.3891445492374 320 12.588214453850696 330 12.588214453850696
		 340 12.588214453850696 344 28.239711010309847 360 12.588214453850696 370 12.588214453850696
		 375 12.588214453850696 380 12.588214453850696 388 104.94832059404354 405 12.588214453850696;
	setAttr -s 42 ".kit[34:41]"  1 18 18 18 18 1 18 1;
	setAttr -s 42 ".kot[34:41]"  1 18 18 18 18 1 18 1;
	setAttr -s 42 ".kix[34:41]"  1 1 1 1 1 1 1 1;
	setAttr -s 42 ".kiy[34:41]"  0 0 0 0 0 0 0 0;
	setAttr -s 42 ".kox[34:41]"  1 1 1 1 1 1 1 1;
	setAttr -s 42 ".koy[34:41]"  0 0 0 0 0 0 0 0;
createNode animCurveTL -n "RightHand_Control_translateX";
	rename -uid "5ED98B6F-DC47-D2B0-2166-CA8F91BED5D7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 59 ".ktv[0:58]"  0 50.677976288897156 10 50.677976288897156
		 14 28.045825646664088 18 66.064245664458753 22 63.787674771804127 26 37.372873320346564
		 30 50.677976288897156 40 50.677976288897156 60 50.677976288897156 70 53.179974469607643
		 90 53.179974469607643 110 52.507741162855119 130 52.507741162855119 140 65.936995325278588
		 149 36.419201223213761 151 3.9698613099779529 155 -0.42029705339510492 159 0.73714538316498301
		 170 -0.42029705339510492 174 25.271645593344477 180 56.018948120733477 185 65.936995325278588
		 195 53.179974469607643 201 34.079207747857595 204 35.075793471804694 207 21.786925546356652
		 210 7.5644680021733111 225 7.5644680021733111 229 43.30012572363993 231 63.895812812595295
		 240 53.179974469607643 250 52.507741162855119 255 23.550101728381197 260 -4.8133730453506143
		 270 -4.8133730453506143 280 52.507741162855119 286 47.306827219284379 290 15.254069666280749
		 300 15.254069666280749 304 26.723185708555697 310 52.507741162855119 317 10.727575817013209
		 320 -2.7142855472581511 330 -2.7142855472581511 340 52.507741162855119 344 50.349107104956438
		 348 67.72053995929393 352 65.765156307022266 355 59.073483475981504 360 40.233274017513402
		 370 52.507741162855119 375 52.507741162855119 380 40.233274017513402 385 98.220243292090714
		 388 65.654053939798402 391 33.309420624251587 396 41.357127760840029 401 27.566406873995106
		 405 52.787747036771286;
	setAttr -s 59 ".kit[44:58]"  1 18 18 18 18 18 18 18 
		1 18 18 18 1 18 1;
	setAttr -s 59 ".kot[44:58]"  1 18 18 18 18 18 18 18 
		1 18 18 18 1 18 1;
	setAttr -s 59 ".kix[44:58]"  1 1 1 0.033710996401602245 0.013054459721795504 
		1 1 1 1 1 0.0038514092958460261 1 1 1 1;
	setAttr -s 59 ".kiy[44:58]"  0 0 0 -0.99943162283450449 -0.99991478691005065 
		0 0 0 0 0 -0.99999258329571428 0 0 0 0;
	setAttr -s 59 ".kox[44:58]"  1 1 1 0.033710996401602245 0.013054459721795504 
		1 1 1 1 1 0.0038514092958460261 1 1 1 1;
	setAttr -s 59 ".koy[44:58]"  0 0 0 -0.99943162283450449 -0.99991478691005065 
		0 0 0 0 0 -0.99999258329571428 0 0 0 0;
createNode animCurveTL -n "RightHand_Control_translateY";
	rename -uid "43EBE580-0949-4663-0902-E0B7252FCC1F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 59 ".ktv[0:58]"  0 15.767231135209656 10 15.767231135209656
		 14 14.053268689788663 18 17.718723936608402 22 -2.4312048426458079 26 6.85468218945143
		 30 15.767231135209656 40 15.767231135209656 60 15.767231135209656 70 2.8692212773449497
		 90 2.8692212773449497 110 9.0198502814312089 130 9.0198502814312089 140 9.9818175764495685
		 149 40.860389359137415 151 38.369421380980974 155 33.513393449302725 159 33.420270076764112
		 170 33.513393449302725 174 44.563983589353718 180 4.8600284879631284 185 9.9818175764495685
		 195 2.8692212773449497 201 56.228769054096908 204 53.28607757977106 207 42.923803278025552
		 210 43.986379162723601 225 43.986379162723601 229 49.88055987664162 231 32.668913417401505
		 240 2.8692212773449497 250 9.0198502814312089 255 49.115783739684325 260 34.911921904404458
		 270 34.911921904404458 280 9.0198502814312089 286 51.058297874431346 290 32.401143965380811
		 300 32.401143965380811 304 2.2965477621705808 310 9.0198502814312089 317 51.881627250777129
		 320 29.572068686885515 330 29.572068686885515 340 9.0198502814312089 344 37.279153735666483
		 348 33.733417805031777 352 37.993117167102262 355 47.674888004954866 360 -1.7743271835249865
		 370 9.0198502814312089 375 9.0198502814312089 380 -1.7743271835249865 385 -4.0919249236227273
		 388 20.171885060947236 391 53.846540648207679 396 48.509108049072225 401 48.131228902102549
		 405 6.660475900746011;
	setAttr -s 59 ".kit[44:58]"  1 18 18 18 18 18 18 18 
		1 18 18 18 1 18 1;
	setAttr -s 59 ".kot[44:58]"  1 18 18 18 18 18 18 18 
		1 18 18 18 1 18 1;
	setAttr -s 59 ".kix[44:58]"  0.012393750338991269 1 1 0.020916220106900942 
		1 1 1 1 1 1 0.0043148825265802975 1 1 0.18074737420757717 1;
	setAttr -s 59 ".kiy[44:58]"  0.99992319452672707 0 0 0.99978123193848756 
		0 0 0 0 0 0 0.99999069085106074 0 0 -0.98352955558898481 0;
	setAttr -s 59 ".kox[44:58]"  0.012393750338991268 1 1 0.020916220106900942 
		1 1 1 1 1 1 0.0043148825265802975 1 1 0.18074737420757717 1;
	setAttr -s 59 ".koy[44:58]"  0.99992319452672696 0 0 0.99978123193848745 
		0 0 0 0 0 0 0.99999069085106074 0 0 -0.98352955558898492 0;
createNode animCurveTL -n "RightHand_Control_translateZ";
	rename -uid "008F5F67-2344-9067-35A4-2AA4CB36D552";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 59 ".ktv[0:58]"  0 21.096401822016219 10 21.096401822016219
		 14 24.56574104850106 18 28.955714334321133 22 28.066452117320583 26 24.642144236614083
		 30 21.096401822016219 40 21.096401822016219 60 21.096401822016219 70 27.243093968072554
		 90 27.243093968072554 110 27.38898564927818 130 27.38898564927818 140 31.522503323754318
		 149 32.534518712353673 151 23.324045849443614 155 26.798305396407756 159 28.349259186500859
		 170 26.798305396407756 174 13.116875355644341 180 24.040826674995674 185 31.522503323754318
		 195 27.243093968072554 201 26.296363382758113 204 16.449350982021969 207 38.734987886020114
		 210 30.973818387839323 225 30.973818387839323 229 32.55763401697574 231 28.456794622050257
		 240 27.243093968072554 250 27.38898564927818 255 0.31986611144283167 260 20.782192489525983
		 270 20.782192489525983 280 27.38898564927818 286 29.441483548588408 290 39.12354362360928
		 300 39.12354362360928 304 4.3055826613314077 310 27.38898564927818 317 5.2833037483403515
		 320 19.372220559746967 330 19.372220559746967 340 27.38898564927818 344 25.378170628964757
		 348 31.180356963286634 352 37.850080997167119 355 32.231720961458549 360 22.214084547621994
		 370 27.38898564927818 375 27.38898564927818 380 22.214084547621994 385 17.517816018931295
		 388 34.192866686913419 391 1.1722388906829093 396 1.4056056126834362 401 14.407672831273505
		 405 24.061124308900116;
	setAttr -s 59 ".kit[44:58]"  1 18 18 18 18 18 18 18 
		1 18 18 18 1 18 1;
	setAttr -s 59 ".kot[44:58]"  1 18 18 18 18 18 18 18 
		1 18 18 18 1 18 1;
	setAttr -s 59 ".kix[44:58]"  1 1 0.026717185600062716 1 0.021313487440178195 
		1 1 1 1 1 1 1 1 0.016549991410261384 1;
	setAttr -s 59 ".kiy[44:58]"  0 0 0.99964303228383067 0 -0.99977284182615078 
		0 0 0 0 0 0 0 0 0.99986303951307265 0;
	setAttr -s 59 ".kox[44:58]"  1 1 0.026717185600062716 1 0.021313487440178195 
		1 1 1 1 1 1 1 1 0.016549991410261384 1;
	setAttr -s 59 ".koy[44:58]"  0 0 0.99964303228383067 0 -0.99977284182615078 
		0 0 0 0 0 0 0 0 0.99986303951307265 0;
createNode animCurveTL -n "RightFinders_Control_translateX";
	rename -uid "84D69FCC-A140-107D-4513-1D94959062E6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 163 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0
		 290 0 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTL -n "RightFinders_Control_translateY";
	rename -uid "C3889FD1-AA4D-2B13-864E-F2A8B4B7C465";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 163 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0
		 290 0 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTL -n "RightFinders_Control_translateZ";
	rename -uid "331986CB-D847-4388-7AB0-AFA5FE8FB577";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 163 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0
		 290 0 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTL -n "RightShoulder_Control_translateX";
	rename -uid "7FAEF233-C94C-A12D-0952-7FAAB77AF703";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 163 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0
		 290 0 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 390 0 405 0;
	setAttr -s 35 ".kit[28:34]"  1 18 18 18 1 18 1;
	setAttr -s 35 ".kot[28:34]"  1 18 18 18 1 18 1;
	setAttr -s 35 ".kix[28:34]"  1 1 1 1 1 1 1;
	setAttr -s 35 ".kiy[28:34]"  0 0 0 0 0 0 0;
	setAttr -s 35 ".kox[28:34]"  1 1 1 1 1 1 1;
	setAttr -s 35 ".koy[28:34]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "RightShoulder_Control_translateY";
	rename -uid "71C700F1-E24B-1978-C325-BAB703FD359D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 163 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0
		 290 0 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 390 0 405 0;
	setAttr -s 35 ".kit[28:34]"  1 18 18 18 1 18 1;
	setAttr -s 35 ".kot[28:34]"  1 18 18 18 1 18 1;
	setAttr -s 35 ".kix[28:34]"  1 1 1 1 1 1 1;
	setAttr -s 35 ".kiy[28:34]"  0 0 0 0 0 0 0;
	setAttr -s 35 ".kox[28:34]"  1 1 1 1 1 1 1;
	setAttr -s 35 ".koy[28:34]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "RightShoulder_Control_translateZ";
	rename -uid "368FD4FA-BA48-DC12-D9AF-E4AD09F42B25";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 163 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0
		 290 0 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 390 0 405 0;
	setAttr -s 35 ".kit[28:34]"  1 18 18 18 1 18 1;
	setAttr -s 35 ".kot[28:34]"  1 18 18 18 1 18 1;
	setAttr -s 35 ".kix[28:34]"  1 1 1 1 1 1 1;
	setAttr -s 35 ".kiy[28:34]"  0 0 0 0 0 0 0;
	setAttr -s 35 ".kox[28:34]"  1 1 1 1 1 1 1;
	setAttr -s 35 ".koy[28:34]"  0 0 0 0 0 0 0;
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
	setAttr -s 26 ".ktv[0:25]"  0 1 40 1 60 1 70 1 90 1 155 1 163 1 170 1
		 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1 290 1 300 1 310 1 320 1 330 1 340 1
		 348 1 360 1 380 1 405 1;
	setAttr -s 26 ".kit[21:25]"  1 9 9 9 1;
	setAttr -s 26 ".kot[21:25]"  1 5 5 5 5;
	setAttr -s 26 ".kix[21:25]"  1 1 1 1 1;
	setAttr -s 26 ".kiy[21:25]"  0 0 0 0 0;
	setAttr -s 26 ".kox[21:25]"  1 0 0 0 0;
	setAttr -s 26 ".koy[21:25]"  0 0 0 0 0;
createNode animCurveTA -n "LeftHand_Control_rotateX";
	rename -uid "C7F4514B-7841-5CC6-8C28-E1BEE93AD1F8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 37 ".ktv[0:36]"  0 -31.581197911121205 10 -114.61798484946075
		 30 -8.0448730291849397 40 -8.0448730291849397 60 -8.0448730291849397 70 -1.1827343041518146
		 90 -1.1827343041518146 140 -3.563169899923694 147 -43.867268104688875 155 0 163 0
		 170 0 185 -3.563169899923694 195 -1.1827343041518146 210 -1.1827343041518146 225 -1.1827343041518146
		 228 -2.6119175236064458 232 -108.03341877483547 236 -17.039484436954623 240 -1.1827343041518146
		 250 -1.1827343041518146 260 -5.8918188913301659 270 -5.8918188913301659 280 -1.1827343041518146
		 290 -1.1827343041518146 300 -1.1827343041518146 310 -1.1827343041518146 320 -1.1827343041518146
		 330 -1.1827343041518146 340 -1.1827343041518146 344 92.995887264502585 348 -64.548956522781111
		 349 -67.585285345880408 352 -16.895146227260373 360 -0.75914417478739116 380 -0.75914417478739116
		 405 -0.75914417478739116;
	setAttr -s 37 ".kit[29:36]"  1 18 18 18 18 18 1 1;
	setAttr -s 37 ".kot[29:36]"  1 18 18 18 18 18 1 1;
	setAttr -s 37 ".kix[29:36]"  1 1 0.25352209182321106 1 0.36700309352419269 
		1 1 1;
	setAttr -s 37 ".kiy[29:36]"  0 0 -0.96732959685806341 0 0.93021972100341577 
		0 0 0;
	setAttr -s 37 ".kox[29:36]"  1 1 0.253522091823211 1 0.36700309352419264 
		1 1 1;
	setAttr -s 37 ".koy[29:36]"  0 0 -0.9673295968580633 0 0.93021972100341577 
		0 0 0;
createNode animCurveTA -n "LeftHand_Control_rotateY";
	rename -uid "21B69B15-7C47-F43D-C451-9FA5BD79363C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 37 ".ktv[0:36]"  0 -72.715901447616076 10 -50.028796190367991
		 30 -25.946753622161779 40 -25.946753622161779 60 -25.946753622161779 70 -10.909998632494119
		 90 -10.909998632494119 140 -24.075958942312546 147 -30.572275354940356 155 0 163 0
		 170 0 185 -24.075958942312546 195 -10.909998632494119 210 -10.909998632494119 225 -10.909998632494119
		 228 -62.148922159921803 232 -49.668559909993711 236 -26.173622547623602 240 -10.909998632494119
		 250 -10.909998632494119 260 -9.2736362125866307 270 -9.2736362125866307 280 -10.909998632494119
		 290 -10.909998632494119 300 -10.909998632494119 310 -10.909998632494119 320 -10.909998632494119
		 330 -10.909998632494119 340 -10.909998632494119 344 -54.752677148957957 348 -54.407862054783031
		 349 -64.603244152978704 352 -69.553132250491089 360 -10.014265129470001 380 -10.014265129470001
		 405 -10.014265129470001;
	setAttr -s 37 ".kit[29:36]"  1 18 18 18 18 18 1 1;
	setAttr -s 37 ".kot[29:36]"  1 18 18 18 18 18 1 1;
	setAttr -s 37 ".kix[29:36]"  1 1 1 0.53334854197373693 1 1 1 1;
	setAttr -s 37 ".kiy[29:36]"  0 0 0 -0.84589558030201872 0 0 0 0;
	setAttr -s 37 ".kox[29:36]"  1 1 1 0.53334854197373693 1 1 1 1;
	setAttr -s 37 ".koy[29:36]"  0 0 0 -0.84589558030201872 0 0 0 0;
createNode animCurveTA -n "LeftHand_Control_rotateZ";
	rename -uid "D7F07BC7-6A46-9E64-62B2-CCAC07189AFC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 37 ".ktv[0:36]"  0 1.7201890868198197 10 35.29428747516323
		 30 -33.059715573099538 40 -33.059715573099538 60 -33.059715573099538 70 -46.026117363482108
		 90 -46.026117363482108 140 -48.058088965095955 147 -12.355165648646002 155 0 163 0
		 170 0 185 -48.058088965095955 195 -46.026117363482108 210 -46.026117363482108 225 -46.026117363482108
		 228 -55.909191572716985 232 43.565049610044568 236 7.5165662674073781 240 -46.026117363482108
		 250 -46.026117363482108 260 -19.617095256987469 270 -19.617095256987469 280 -46.026117363482108
		 290 -46.026117363482108 300 -46.026117363482108 310 -46.026117363482108 320 -46.026117363482108
		 330 -46.026117363482108 340 -46.026117363482108 344 -140.08734858408275 348 10.589265694805702
		 349 4.9606992675213313 352 -97.382504666704847 360 -36.261323781025354 380 -36.261323781025354
		 405 -36.261323781025354;
	setAttr -s 37 ".kit[29:36]"  1 18 18 18 18 18 1 1;
	setAttr -s 37 ".kot[29:36]"  1 18 18 18 18 18 1 1;
	setAttr -s 37 ".kix[29:36]"  1 1 1 0.13998924090440387 1 1 1 1;
	setAttr -s 37 ".kiy[29:36]"  0 0 0 -0.9901530247547643 0 0 0 0;
	setAttr -s 37 ".kox[29:36]"  1 1 1 0.13998924090440384 1 1 1 1;
	setAttr -s 37 ".koy[29:36]"  0 0 0 -0.99015302475476419 0 0 0 0;
createNode animCurveTU -n "LeftHand_Control_scaleX";
	rename -uid "334B9CE0-744D-DDE8-3C2A-D881CD90A85E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 1 40 1 60 1 70 1 90 1 155 1 163 1 170 1
		 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1 290 1 300 1 310 1 320 1 330 1 340 1
		 348 1 360 1 380 1 405 1;
	setAttr -s 26 ".kit[21:25]"  1 18 18 18 1;
	setAttr -s 26 ".kot[21:25]"  1 18 18 18 1;
	setAttr -s 26 ".kix[21:25]"  1 1 1 1 1;
	setAttr -s 26 ".kiy[21:25]"  0 0 0 0 0;
	setAttr -s 26 ".kox[21:25]"  1 1 1 1 1;
	setAttr -s 26 ".koy[21:25]"  0 0 0 0 0;
createNode animCurveTU -n "LeftHand_Control_scaleY";
	rename -uid "6A7C6932-9A4A-55E5-7DBB-FC860F91DF4C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 1 40 1 60 1 70 1 90 1 155 1 163 1 170 1
		 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1 290 1 300 1 310 1 320 1 330 1 340 1
		 348 1 360 1 380 1 405 1;
	setAttr -s 26 ".kit[21:25]"  1 18 18 18 1;
	setAttr -s 26 ".kot[21:25]"  1 18 18 18 1;
	setAttr -s 26 ".kix[21:25]"  1 1 1 1 1;
	setAttr -s 26 ".kiy[21:25]"  0 0 0 0 0;
	setAttr -s 26 ".kox[21:25]"  1 1 1 1 1;
	setAttr -s 26 ".koy[21:25]"  0 0 0 0 0;
createNode animCurveTU -n "LeftHand_Control_scaleZ";
	rename -uid "EE303A97-B44B-9981-BD21-1498748096E6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 1 40 1 60 1 70 1 90 1 155 1 163 1 170 1
		 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1 290 1 300 1 310 1 320 1 330 1 340 1
		 348 1 360 1 380 1 405 1;
	setAttr -s 26 ".kit[21:25]"  1 18 18 18 1;
	setAttr -s 26 ".kot[21:25]"  1 18 18 18 1;
	setAttr -s 26 ".kix[21:25]"  1 1 1 1 1;
	setAttr -s 26 ".kiy[21:25]"  0 0 0 0 0;
	setAttr -s 26 ".kox[21:25]"  1 1 1 1 1;
	setAttr -s 26 ".koy[21:25]"  0 0 0 0 0;
createNode animCurveTU -n "Head_Control_visibility";
	rename -uid "DECA8991-0A4E-D2BE-DB50-198DD5875DBD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 163 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1
		 290 1 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTA -n "Head_Control_rotateX";
	rename -uid "51796712-894F-D398-9014-BDB42E1714DB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  0 0 10 0 20 0 30 0 40 -7.4159181497611364
		 60 -7.4159181497611364 70 23.830928637871072 90 23.830928637871072 110 6.5149419875002286
		 130 6.5149419875002286 140 -7.4159181497611364 146 -11.276138030110594 149 -16.104221256186356
		 152 13.900625192025434 155 1.8224430245291454 163 2.0520708456198173 170 1.8224430245291454
		 185 -7.4159181497611364 195 23.830928637871072 210 -17.516503038148553 225 -17.516503038148553
		 240 23.830928637871072 250 6.5149419875002286 260 -19.733723496363869 270 -19.733723496363869
		 280 6.5149419875002286 284 -16.381152950717539 287 -16.791708161893155 290 -12.579760185344698
		 300 -12.579760185344698 310 6.5149419875002286 320 -0.45575296068834592 330 -0.45575296068834592
		 340 6.5149419875002286 360 6.5149419875002286 370 6.5149419875002286 375 6.5149419875002286
		 380 6.5149419875002286 387 32.270485788825063 405 6.5149419875002286;
	setAttr -s 40 ".kit[33:39]"  1 18 18 18 1 18 1;
	setAttr -s 40 ".kot[33:39]"  1 18 18 18 1 18 1;
	setAttr -s 40 ".kix[33:39]"  1 1 1 1 1 1 1;
	setAttr -s 40 ".kiy[33:39]"  0 0 0 0 0 0 0;
	setAttr -s 40 ".kox[33:39]"  1 1 1 1 1 1 1;
	setAttr -s 40 ".koy[33:39]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "Head_Control_rotateY";
	rename -uid "9B5ECD5C-1B48-CC2A-0E6C-1FBC4DA1177A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  0 0 10 0 20 0 30 0 40 -57.302070647618734
		 60 -57.302070647618734 70 49.080723677491015 90 49.080723677491015 110 0 130 0 140 -57.302070647618734
		 146 21.108086205973407 149 -30.02704511833976 152 -53.428958564751184 155 -52.595585043890857
		 163 -53.120610362032863 170 -52.595585043890857 185 -57.302070647618734 195 49.080723677491015
		 210 -36.209472917236745 225 -36.209472917236745 240 49.080723677491015 250 0 260 -50.309606911256367
		 270 -50.309606911256367 280 0 284 37.59487832613619 287 -9.4881278877879343 290 -35.110682415492683
		 300 -35.110682415492683 310 0 320 -51.190867295372222 330 -51.190867295372222 340 0
		 360 0 370 0 375 0 380 0 387 14.941804642875692 405 0;
	setAttr -s 40 ".kit[33:39]"  1 18 18 18 1 18 1;
	setAttr -s 40 ".kot[33:39]"  1 18 18 18 1 18 1;
	setAttr -s 40 ".kix[33:39]"  1 1 1 1 1 1 1;
	setAttr -s 40 ".kiy[33:39]"  0 0 0 0 0 0 0;
	setAttr -s 40 ".kox[33:39]"  1 1 1 1 1 1 1;
	setAttr -s 40 ".koy[33:39]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "Head_Control_rotateZ";
	rename -uid "BA538599-C549-004E-317D-10A499C204FC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  0 0.84821139040032134 10 0.84821139040032134
		 20 0.84821139040032134 30 0.84821139040032134 40 -9.5818220847932469 60 -9.5818220847932469
		 70 27.570186378794659 90 27.570186378794659 110 0 130 0 140 -9.5818220847932469 146 -5.5751815899562587
		 149 -0.2898722888264616 152 -12.236707206629301 155 -7.1908782639704363 163 -7.6191630162024611
		 170 -7.1908782639704363 185 -9.5818220847932469 195 27.570186378794659 210 4.0808875958060034
		 225 4.0808875958060034 240 27.570186378794659 250 0 260 14.892607728393553 270 14.892607728393553
		 280 0 284 -0.10578327760203839 287 9.1013866414859841 290 10.830958376970891 300 10.830958376970891
		 310 0 320 -0.34466730736678064 330 -0.34466730736678064 340 0 360 0 370 0 375 0 380 0
		 387 2.2494859909353622 405 0;
	setAttr -s 40 ".kit[33:39]"  1 18 18 18 1 18 1;
	setAttr -s 40 ".kot[33:39]"  1 18 18 18 1 18 1;
	setAttr -s 40 ".kix[33:39]"  0.99906334553944953 1 1 1 1 1 1;
	setAttr -s 40 ".kiy[33:39]"  -0.04327160269186308 0 0 0 0 0 0;
	setAttr -s 40 ".kox[33:39]"  0.99906334553944953 1 1 1 1 1 1;
	setAttr -s 40 ".koy[33:39]"  -0.04327160269186308 0 0 0 0 0 0;
createNode animCurveTU -n "Head_Control_scaleX";
	rename -uid "15789E17-1E44-6453-B477-8C9E216BC885";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 163 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1
		 290 1 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTU -n "Head_Control_scaleY";
	rename -uid "4D77B449-6949-416C-BEAE-1EB11BBC0EB0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 163 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1
		 290 1 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTU -n "Head_Control_scaleZ";
	rename -uid "06885C34-7A47-FC79-B856-0AB8C4A770EC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 163 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1
		 290 1 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTU -n "RightArmTwist_Control_visibility";
	rename -uid "1E216838-9645-6097-C86E-7CA12EEFE74A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 163 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1
		 290 1 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTA -n "RightArmTwist_Control_rotateX";
	rename -uid "7F241D05-6046-013E-AD2E-B1A5D073A031";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 163 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0
		 290 0 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTA -n "RightArmTwist_Control_rotateY";
	rename -uid "DEC01178-424E-BBDD-178E-7C8D38665EA6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 163 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0
		 290 0 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTA -n "RightArmTwist_Control_rotateZ";
	rename -uid "93574063-B74F-E6B7-A3F6-7E8A1EFB2E44";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 163 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0
		 290 0 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTU -n "RightArmTwist_Control_scaleX";
	rename -uid "32716BC1-4140-30EA-02DB-C3BAA83EADCF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 163 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1
		 290 1 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTU -n "RightArmTwist_Control_scaleY";
	rename -uid "56C6853B-3947-CD6D-7775-E6AB50BC672F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 163 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1
		 290 1 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTU -n "RightArmTwist_Control_scaleZ";
	rename -uid "A0ACB72B-C74F-0FDD-28FC-FFA796B3E7C5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 163 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1
		 290 1 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTU -n "RightElbow_Control_visibility";
	rename -uid "C5614E41-954B-6440-842F-E98031A9AEF1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 163 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1
		 290 1 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTA -n "RightElbow_Control_rotateX";
	rename -uid "9C27010D-2F4C-14DB-2B37-11B3B37D6430";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 163 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0
		 290 0 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTA -n "RightElbow_Control_rotateY";
	rename -uid "D4A44B5E-7F40-7D4D-0C8D-A5850F98CB4E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 163 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0
		 290 0 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTA -n "RightElbow_Control_rotateZ";
	rename -uid "1B0B2F0B-684B-22D3-9EB6-10B94356FFEA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 163 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0
		 290 0 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTU -n "RightElbow_Control_scaleX";
	rename -uid "97CD71FA-9640-1226-D0E4-79B22BE08B04";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 163 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1
		 290 1 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTU -n "RightElbow_Control_scaleY";
	rename -uid "D6179417-424A-24A7-7D74-78B28405239B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 163 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1
		 290 1 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTU -n "RightElbow_Control_scaleZ";
	rename -uid "2669F1CF-0A41-CB1A-7D34-0DB45CACB701";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 163 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1
		 290 1 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTU -n "RightFinders_Control_visibility";
	rename -uid "22E628A4-C34E-3836-BE7B-26A0419D12AF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 163 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1
		 290 1 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTA -n "RightFinders_Control_rotateX";
	rename -uid "EF13F1BD-8045-4892-C260-EB81700EAA42";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 163 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0
		 290 0 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTA -n "RightFinders_Control_rotateY";
	rename -uid "DD4A45DA-6C41-5EAA-67D3-E4BE6B4BDBB0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 163 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0
		 290 0 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTA -n "RightFinders_Control_rotateZ";
	rename -uid "F6F01073-E240-BCA5-2756-6BBF994134C1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 163 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0
		 290 0 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTU -n "RightFinders_Control_scaleX";
	rename -uid "0F687160-6041-0E8B-0D83-4FB8E8A5CBB3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 163 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1
		 290 1 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTU -n "RightFinders_Control_scaleY";
	rename -uid "045E1EAB-9F4D-9621-B511-28AC210393B6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 163 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1
		 290 1 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTU -n "RightFinders_Control_scaleZ";
	rename -uid "91E4882C-3F4B-83DA-924E-87B1F5335CAB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 163 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1
		 290 1 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
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
	setAttr -s 35 ".ktv[0:34]"  0 1 10 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1 290 1
		 300 1 310 1 317 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 391 1 396 1 405 1;
	setAttr -s 35 ".kit[27:34]"  1 18 18 18 1 9 1 1;
	setAttr -s 35 ".kot[27:34]"  1 18 18 18 1 5 5 1;
	setAttr -s 35 ".kix[27:34]"  1 1 1 1 1 1 1 1;
	setAttr -s 35 ".kiy[27:34]"  0 0 0 0 0 0 0 0;
	setAttr -s 35 ".kox[27:34]"  1 1 1 1 1 0 0 1;
	setAttr -s 35 ".koy[27:34]"  0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RightHand_Control_scaleX";
	rename -uid "7CB9CA02-EB45-E941-6E6C-3489F3609D2B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  0 1 10 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1 290 1
		 300 1 310 1 317 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 391 1 396 1 405 1;
	setAttr -s 35 ".kit[27:34]"  1 18 18 18 1 18 1 1;
	setAttr -s 35 ".kot[27:34]"  1 18 18 18 1 18 1 1;
	setAttr -s 35 ".kix[27:34]"  1 1 1 1 1 1 1 1;
	setAttr -s 35 ".kiy[27:34]"  0 0 0 0 0 0 0 0;
	setAttr -s 35 ".kox[27:34]"  1 1 1 1 1 1 1 1;
	setAttr -s 35 ".koy[27:34]"  0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RightHand_Control_scaleY";
	rename -uid "B6413DE2-9E47-92C2-51BD-4D9C153F56B3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  0 1 10 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1 290 1
		 300 1 310 1 317 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 391 1 396 1 405 1;
	setAttr -s 35 ".kit[27:34]"  1 18 18 18 1 18 1 1;
	setAttr -s 35 ".kot[27:34]"  1 18 18 18 1 18 1 1;
	setAttr -s 35 ".kix[27:34]"  1 1 1 1 1 1 1 1;
	setAttr -s 35 ".kiy[27:34]"  0 0 0 0 0 0 0 0;
	setAttr -s 35 ".kox[27:34]"  1 1 1 1 1 1 1 1;
	setAttr -s 35 ".koy[27:34]"  0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RightHand_Control_scaleZ";
	rename -uid "E7953ABB-1340-1789-5268-7FA6AB0B0EAF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  0 1 10 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1 290 1
		 300 1 310 1 317 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 391 1 396 1 405 1;
	setAttr -s 35 ".kit[27:34]"  1 18 18 18 1 18 1 1;
	setAttr -s 35 ".kot[27:34]"  1 18 18 18 1 18 1 1;
	setAttr -s 35 ".kix[27:34]"  1 1 1 1 1 1 1 1;
	setAttr -s 35 ".kiy[27:34]"  0 0 0 0 0 0 0 0;
	setAttr -s 35 ".kox[27:34]"  1 1 1 1 1 1 1 1;
	setAttr -s 35 ".koy[27:34]"  0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LeftShoulder_Control_visibility";
	rename -uid "9C65D30F-C54D-994C-DE5E-A0B9E99C2963";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 163 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1
		 290 1 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTA -n "LeftShoulder_Control_rotateX";
	rename -uid "3C51842A-644D-C9EA-62E4-98934280450C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 163 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0
		 290 0 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTA -n "LeftShoulder_Control_rotateY";
	rename -uid "75EAA9F7-4F4E-36FF-090B-3BB6FE1544CD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 163 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0
		 290 0 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTA -n "LeftShoulder_Control_rotateZ";
	rename -uid "41E6723F-0D46-5CBE-39C3-259ADC0BA09B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 163 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0
		 290 0 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTU -n "LeftShoulder_Control_scaleX";
	rename -uid "E6D77E33-D244-BD46-9680-E7A3F6AAF539";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 163 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1
		 290 1 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTU -n "LeftShoulder_Control_scaleY";
	rename -uid "FAFD25F1-7D4A-998F-8109-3A9B26EF817B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 163 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1
		 290 1 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTU -n "LeftShoulder_Control_scaleZ";
	rename -uid "31F5048C-F345-A408-E186-618A2FE81DF5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 163 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1
		 290 1 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTU -n "LeftElbow_Control_visibility";
	rename -uid "35A71DE1-BD4D-8B22-C937-BE9C3615BEC8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 163 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1
		 290 1 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTA -n "LeftElbow_Control_rotateX";
	rename -uid "F01E4FDF-ED42-A96F-F68E-2D89DEB182AB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 163 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0
		 290 0 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTA -n "LeftElbow_Control_rotateY";
	rename -uid "86617A39-FB42-3148-4585-74822362F2D7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 163 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0
		 290 0 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTA -n "LeftElbow_Control_rotateZ";
	rename -uid "51FA196A-3845-BC7A-D6C7-7D9639BF1BD1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 163 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0
		 290 0 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTU -n "LeftElbow_Control_scaleX";
	rename -uid "69BDC857-324B-C47E-3DDB-38BA716AEAB2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 163 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1
		 290 1 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTU -n "LeftElbow_Control_scaleY";
	rename -uid "CE29AE7C-6541-BC7F-FF26-9F8BC933E989";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 163 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1
		 290 1 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTU -n "LeftElbow_Control_scaleZ";
	rename -uid "DA5B6E53-6E4E-F806-BF96-718FED88D7C5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 163 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1
		 290 1 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTU -n "LeftArmTwist_Control_visibility";
	rename -uid "DD6310B5-8B4D-7738-2648-2B911C639FC4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 163 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1
		 290 1 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTA -n "LeftArmTwist_Control_rotateX";
	rename -uid "CB77B01A-5544-7E78-6EA4-E8B1CDCC9352";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 163 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0
		 290 0 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTA -n "LeftArmTwist_Control_rotateY";
	rename -uid "E3DF7860-9C44-D1F5-6014-18A57279DEE5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 163 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0
		 290 0 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTA -n "LeftArmTwist_Control_rotateZ";
	rename -uid "5D39FFAF-7844-FFF5-B614-A2B8F51DE119";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 163 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0
		 290 0 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTU -n "LeftArmTwist_Control_scaleX";
	rename -uid "236593FC-8C4E-095A-23CB-1587FC00322B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 163 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1
		 290 1 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTU -n "LeftArmTwist_Control_scaleY";
	rename -uid "44083144-8F46-AA8D-64B0-87ABC69701C4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 163 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1
		 290 1 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTU -n "LeftArmTwist_Control_scaleZ";
	rename -uid "B4169FF4-2146-A5B6-CDFA-8498F83311A1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 163 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1
		 290 1 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTU -n "LeftKnee_Control_visibility";
	rename -uid "958BAD18-344C-14BB-2989-DAA52670C29F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 163 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1
		 290 1 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTA -n "LeftKnee_Control_rotateX";
	rename -uid "6F103C5A-7845-8D70-5703-43B9DE57E6DF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 163 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0
		 290 0 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTA -n "LeftKnee_Control_rotateY";
	rename -uid "AF999CFE-2F47-ECDC-C81B-11AF18944474";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 163 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0
		 290 0 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTA -n "LeftKnee_Control_rotateZ";
	rename -uid "08955E4E-3645-9692-56EF-AA8F6F559A5C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 163 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0
		 290 0 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTU -n "LeftKnee_Control_scaleX";
	rename -uid "8EEC312E-CA47-016A-B83E-F4AFB362A184";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 163 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1
		 290 1 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTU -n "LeftKnee_Control_scaleY";
	rename -uid "B23E43B1-EF4F-AFA6-A3C5-CEA2D6D8FE8E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 163 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1
		 290 1 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTU -n "LeftKnee_Control_scaleZ";
	rename -uid "99783A57-FA48-6BA9-F7A2-96A1A7C9D79F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 163 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1
		 290 1 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTU -n "RightFoot_Control_visibility";
	rename -uid "AD163B95-A74F-814F-C258-09A8209C6D28";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 56 ".ktv[0:55]"  0 1 10 1 14 1 19 1 25 1 30 1 40 1 60 1 70 1
		 90 1 110 1 130 1 140 1 143 1 146 1 150 1 155 1 163 1 170 1 173 1 180 1 185 1 195 1
		 197 1 202 1 210 1 225 1 227 1 234 1 240 1 250 1 254 1 257 1 260 1 270 1 275 1 280 1
		 284 1 290 1 300 1 304 1 308 1 310 1 312 1 316 1 320 1 330 1 331 1 335 1 340 1 360 1
		 365 1 370 1 375 1 380 1 405 1;
	setAttr -s 56 ".kit[47:55]"  1 1 1 18 18 18 18 1 
		1;
	setAttr -s 56 ".kot[47:55]"  1 1 1 18 18 18 18 1 
		1;
	setAttr -s 56 ".kix[47:55]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 56 ".kiy[47:55]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 56 ".kox[47:55]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 56 ".koy[47:55]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RightFoot_Control_rotateX";
	rename -uid "31AA40D6-7E4D-DE9C-F219-BC99D2C5C83C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 67 ".ktv[0:66]"  0 0 10 -35.88035555306211 14 0 19 0 22 44.670029079876663
		 25 0 30 0 40 0 60 0 70 0 90 0 110 0 130 0 140 0 143 0 146 0 148 31.813975672884489
		 150 0 155 0 163 0 170 0 173 0 180 0 183 30.270950134772075 185 0 195 0 197 0 199 97.105697408257441
		 202 0 210 0 225 0 227 0 230 -11.532540674848477 234 0 240 0 250 0 254 0 256 14.478623557301438
		 257 0 260 0 270 0 275 0 280 0 282 57.847395970313237 284 0 290 0 300 0 304 0 307 31.214333644851255
		 308 0 310 0 312 0 314 25.531166151908426 316 0 320 0 330 0 331 0 333 16.92338197931047
		 335 0 340 0 360 0 363 21.661549279766877 365 0 370 0 375 0 380 0 405 0;
	setAttr -s 67 ".kit[56:66]"  1 18 1 1 18 18 18 18 
		18 1 1;
	setAttr -s 67 ".kot[56:66]"  1 18 1 1 18 18 18 18 
		18 1 1;
	setAttr -s 67 ".kix[56:66]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 67 ".kiy[56:66]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 67 ".kox[56:66]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 67 ".koy[56:66]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RightFoot_Control_rotateY";
	rename -uid "D1854F29-FB42-AED4-D577-6BA13C423CC0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 62 ".ktv[0:61]"  0 0 10 -4.254028518065847 14 -73.229636368088677
		 19 -73.229636368088677 22 -167.1271051661241 25 -200.20745991017617 30 -200.20745991017617
		 40 -200.20745991017617 60 -200.20745991017617 70 -200.20745991017617 90 -200.20745991017617
		 110 -200.20745991017617 130 -200.20745991017617 140 -200.20745991017617 143 -200.20745991017617
		 146 -295.89401632572577 150 -359.68528414940158 155 -359.68528414940158 163 -359.68528414940158
		 170 -359.68528414940158 173 -359.68528414940158 175 -286.70354190861207 180 -286.70354190861207
		 185 -200.20745991017617 195 -200.20745991017617 197 -200.20745991017617 199 -72.993026899753858
		 202 -5.7660690932290581 210 -5.7660690932290581 225 -5.7660690932290581 227 -5.7660690932290581
		 230 -132.51877775818926 234 -200.20745991017617 240 -200.20745991017617 250 -200.20745991017617
		 254 -200.20745991017617 257 -228.59213540670581 260 -228.59213540670581 270 -228.59213540670581
		 275 -228.59213540670581 280 -200.20745991017617 284 -93.119315538721708 290 -93.119315538721708
		 300 -93.119315538721708 304 -93.119315538721708 307 -192.56353243625136 308 -200.20745991017617
		 310 -200.20745991017617 312 -200.20745991017617 316 -182.37819334817061 320 -182.37819334817061
		 330 -182.37819334817061 331 -182.37819334817061 333 -188.56923105471463 335 -200.20745991017617
		 340 -200.20745991017617 360 -200.20745991017617 365 -200.20745991017617 370 -200.20745991017617
		 375 -200.20745991017617 380 -200.20745991017617 405 -200.20745991017617;
	setAttr -s 62 ".kit[52:61]"  1 18 1 1 18 18 18 18 
		1 1;
	setAttr -s 62 ".kot[52:61]"  1 18 1 1 18 18 18 18 
		1 1;
	setAttr -s 62 ".kix[52:61]"  1 0.47214087992154458 1 1 1 1 1 1 1 1;
	setAttr -s 62 ".kiy[52:61]"  0 -0.88152310775549714 0 0 0 0 0 0 0 0;
	setAttr -s 62 ".kox[52:61]"  1 0.47214087992154458 1 1 1 1 1 1 1 1;
	setAttr -s 62 ".koy[52:61]"  0 -0.88152310775549714 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RightFoot_Control_rotateZ";
	rename -uid "61ED0D84-6A4E-667F-1C67-3D9FD0A00BAB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 61 ".ktv[0:60]"  0 0 10 3.0714089881951745 14 0 19 0 22 -4.2512085436093461
		 25 0 30 0 40 0 60 0 70 0 90 0 110 0 130 0 140 0 143 0 146 0 150 0 155 0 163 0 170 0
		 173 0 180 0 185 0 195 0 197 0 199 -58.786683227320317 202 0 210 0 225 0 227 0 230 21.189781820674483
		 234 0 240 0 250 0 254 0 257 0 260 0 270 0 275 0 280 0 284 0 290 0 300 0 304 0 307 8.151478097938865
		 308 0 310 0 312 0 316 0 320 0 330 0 331 0 333 11.081577017940388 335 0 340 0 360 0
		 365 0 370 0 375 0 380 0 405 0;
	setAttr -s 61 ".kit[51:60]"  1 18 1 1 18 18 18 18 
		1 1;
	setAttr -s 61 ".kot[51:60]"  1 18 1 1 18 18 18 18 
		1 1;
	setAttr -s 61 ".kix[51:60]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 61 ".kiy[51:60]"  0 0 0 0 0 0 0 0 0 0;
	setAttr -s 61 ".kox[51:60]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 61 ".koy[51:60]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RightFoot_Control_scaleX";
	rename -uid "9494A289-5440-94C9-A164-5592EF05082F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 56 ".ktv[0:55]"  0 1 10 1 14 1 19 1 25 1 30 1 40 1 60 1 70 1
		 90 1 110 1 130 1 140 1 143 1 146 1 150 1 155 1 163 1 170 1 173 1 180 1 185 1 195 1
		 197 1 202 1 210 1 225 1 227 1 234 1 240 1 250 1 254 1 257 1 260 1 270 1 275 1 280 1
		 284 1 290 1 300 1 304 1 308 1 310 1 312 1 316 1 320 1 330 1 331 1 335 1 340 1 360 1
		 365 1 370 1 375 1 380 1 405 1;
	setAttr -s 56 ".kit[47:55]"  1 1 1 18 18 18 18 1 
		1;
	setAttr -s 56 ".kot[47:55]"  1 1 1 18 18 18 18 1 
		1;
	setAttr -s 56 ".kix[47:55]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 56 ".kiy[47:55]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 56 ".kox[47:55]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 56 ".koy[47:55]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RightFoot_Control_scaleY";
	rename -uid "DBBC791E-8044-B512-A9DB-A384EB1ED71D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 56 ".ktv[0:55]"  0 1 10 1 14 1 19 1 25 1 30 1 40 1 60 1 70 1
		 90 1 110 1 130 1 140 1 143 1 146 1 150 1 155 1 163 1 170 1 173 1 180 1 185 1 195 1
		 197 1 202 1 210 1 225 1 227 1 234 1 240 1 250 1 254 1 257 1 260 1 270 1 275 1 280 1
		 284 1 290 1 300 1 304 1 308 1 310 1 312 1 316 1 320 1 330 1 331 1 335 1 340 1 360 1
		 365 1 370 1 375 1 380 1 405 1;
	setAttr -s 56 ".kit[47:55]"  1 1 1 18 18 18 18 1 
		1;
	setAttr -s 56 ".kot[47:55]"  1 1 1 18 18 18 18 1 
		1;
	setAttr -s 56 ".kix[47:55]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 56 ".kiy[47:55]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 56 ".kox[47:55]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 56 ".koy[47:55]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RightFoot_Control_scaleZ";
	rename -uid "C0FEA8D1-E54E-21D8-DD64-59B9DF5DCC2D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 56 ".ktv[0:55]"  0 1 10 1 14 1 19 1 25 1 30 1 40 1 60 1 70 1
		 90 1 110 1 130 1 140 1 143 1 146 1 150 1 155 1 163 1 170 1 173 1 180 1 185 1 195 1
		 197 1 202 1 210 1 225 1 227 1 234 1 240 1 250 1 254 1 257 1 260 1 270 1 275 1 280 1
		 284 1 290 1 300 1 304 1 308 1 310 1 312 1 316 1 320 1 330 1 331 1 335 1 340 1 360 1
		 365 1 370 1 375 1 380 1 405 1;
	setAttr -s 56 ".kit[47:55]"  1 1 1 18 18 18 18 1 
		1;
	setAttr -s 56 ".kot[47:55]"  1 1 1 18 18 18 18 1 
		1;
	setAttr -s 56 ".kix[47:55]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 56 ".kiy[47:55]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 56 ".kox[47:55]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 56 ".koy[47:55]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LeftToes_Control_visibility";
	rename -uid "82963853-394D-C580-1611-37A47C3887E1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 163 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1
		 290 1 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTA -n "LeftToes_Control_rotateX";
	rename -uid "5ACFB7C3-6D43-D7D3-4753-E1BEF530F4CE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 0 10 -24.521570787337929 20 0 30 0 40 0
		 60 0 70 0 90 0 110 0 130 0 140 0 155 0 163 0 170 0 185 0 195 0 210 0 225 0 240 0
		 250 0 260 0 270 0 280 0 290 0 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0
		 405 0;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTA -n "LeftToes_Control_rotateY";
	rename -uid "CB4AD19C-6747-32C3-6432-A0B96CAA6885";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 163 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0
		 290 0 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTA -n "LeftToes_Control_rotateZ";
	rename -uid "D3D2B4C8-0C4B-B887-DEF2-539DF9932836";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 163 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0
		 290 0 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTU -n "LeftToes_Control_scaleX";
	rename -uid "29DDAE09-C444-9CCE-AE05-F6A52A08CCAA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 163 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1
		 290 1 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTU -n "LeftToes_Control_scaleY";
	rename -uid "ECF47A43-F844-8115-8CEC-84A35F4D7969";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 163 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1
		 290 1 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTU -n "LeftToes_Control_scaleZ";
	rename -uid "FD2569E8-3A4F-398F-E22F-A580E33257C7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 163 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1
		 290 1 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTU -n "RightHip_Control_visibility";
	rename -uid "F5CC33C1-A94A-81F9-97D4-36A7E929D359";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 163 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1
		 290 1 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTA -n "RightHip_Control_rotateX";
	rename -uid "A0E394AA-804D-1FAC-A84C-B483118EFBAA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 163 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0
		 290 0 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTA -n "RightHip_Control_rotateY";
	rename -uid "E76F692B-4D4B-AA35-80EA-55B69E17987A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 163 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0
		 290 0 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTA -n "RightHip_Control_rotateZ";
	rename -uid "4B3E7211-3A48-3A8F-313C-DDBBA48D44A4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 163 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0
		 290 0 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTU -n "RightHip_Control_scaleX";
	rename -uid "B9CB031B-1644-31F3-AB1B-B4BB9205463E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 163 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1
		 290 1 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTU -n "RightHip_Control_scaleY";
	rename -uid "97D403FC-3341-84D6-694D-3B90340111D7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 163 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1
		 290 1 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTU -n "RightHip_Control_scaleZ";
	rename -uid "037CAC5C-F949-0E2A-563B-ED83F8934294";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 163 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1
		 290 1 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTU -n "LeftFoot_Control_visibility";
	rename -uid "097300C4-204A-3C00-B47B-018FFD1BB355";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 54 ".ktv[0:53]"  0 1 10 1 20 1 25 1 30 1 40 1 60 1 70 1 90 1
		 110 1 130 1 140 1 147 1 155 1 163 1 170 1 175 1 180 1 185 1 195 1 198 1 201 1 205 1
		 207 1 208 1 210 1 225 1 229 1 232 1 235 1 238 1 240 1 250 1 260 1 270 1 280 1 285 1
		 288 1 290 1 300 1 305 1 310 1 317 1 320 1 330 1 335 1 338 1 340 1 360 1 365 1 370 1
		 375 1 380 1 405 1;
	setAttr -s 54 ".kit[45:53]"  1 1 1 18 18 18 18 1 
		1;
	setAttr -s 54 ".kot[45:53]"  1 1 1 18 18 18 18 1 
		1;
	setAttr -s 54 ".kix[45:53]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 54 ".kiy[45:53]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 54 ".kox[45:53]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 54 ".koy[45:53]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LeftFoot_Control_rotateX";
	rename -uid "CFDDC57E-C043-EA44-0662-00AE606388A6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 65 ".ktv[0:64]"  0 0 10 93.265612331956049 15 23.227762363424834
		 20 0 25 0 27 31.172487801699756 30 0 40 0 60 0 70 0 90 0 110 0 130 0 140 0 147 0
		 155 0 163 0 170 0 175 0 178 23.216096409010465 180 0 185 0 195 0 198 0 199 35.623367278271743
		 200 38.834277182638452 201 0 205 0 207 22.705625670833538 208 0 210 0 225 0 229 0
		 230 32.11373920791587 231 32.65830181141591 232 0 235 0 238 0 240 0 250 0 260 0 270 0
		 280 0 285 0 287 5.7441249147532289 288 0 290 0 300 0 305 0 310 0 317 0 319 17.322774668261452
		 320 0 330 0 335 0 337 14.543864685090254 338 0 340 0 360 0 365 0 367 35.712738163883756
		 370 47.252364872111322 375 47.252364872111322 380 0 405 0;
	setAttr -s 65 ".kit[54:64]"  1 18 1 1 18 18 18 18 
		18 1 1;
	setAttr -s 65 ".kot[54:64]"  1 18 1 1 18 18 18 18 
		18 1 1;
	setAttr -s 65 ".kix[54:64]"  1 1 1 1 1 1 0.24492042465173486 1 1 1 1;
	setAttr -s 65 ".kiy[54:64]"  0 0 0 0 0 0 0.96954318397295414 0 0 0 0;
	setAttr -s 65 ".kox[54:64]"  1 1 1 1 1 1 0.24492042465173489 1 1 1 1;
	setAttr -s 65 ".koy[54:64]"  0 0 0 0 0 0 0.96954318397295425 0 0 0 0;
createNode animCurveTA -n "LeftFoot_Control_rotateY";
	rename -uid "94D866F6-AC4C-3DEC-FEBF-52A4E731D046";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 60 ".ktv[0:59]"  0 0 10 19.675666890649605 15 -41.363524479662381
		 20 -89.559675612641641 25 -89.559675612641641 30 -150.0667079902889 40 -150.0667079902889
		 60 -150.0667079902889 70 -150.0667079902889 90 -150.0667079902889 110 -150.0667079902889
		 130 -150.0667079902889 140 -150.0667079902889 147 -308.48307512859753 155 -308.48307512859753
		 163 -308.48307512859753 170 -308.48307512859753 175 -308.48307512859753 178 -236.50961470137321
		 180 -150.0667079902889 185 -150.0667079902889 195 -150.0667079902889 198 -150.0667079902889
		 201 62.769263662261928 205 62.769263662261928 207 62.981061915708977 208 62.769263662261928
		 210 62.769263662261928 225 62.769263662261928 229 62.769263662261928 230 15.40535054490292
		 232 -86.103981723557396 235 -86.103981723557396 238 -150.0667079902889 240 -150.0667079902889
		 250 -150.0667079902889 260 -150.0667079902889 270 -150.0667079902889 280 -150.0667079902889
		 285 -150.0667079902889 287 -68.448351875783985 288 -52.03457912252037 290 -52.03457912252037
		 300 -52.03457912252037 305 -150.0667079902889 310 -150.0667079902889 317 -150.0667079902889
		 320 -150.0667079902889 330 -150.0667079902889 335 -150.0667079902889 337 -153.59494157777675
		 338 -150.0667079902889 340 -150.0667079902889 360 -150.0667079902889 365 -150.0667079902889
		 367 -185.78943038520552 370 -181.71099166946846 375 -181.71099166946846 380 -150.0667079902889
		 405 -150.0667079902889;
	setAttr -s 60 ".kit[49:59]"  1 18 1 1 18 18 18 18 
		18 1 1;
	setAttr -s 60 ".kot[49:59]"  1 18 1 1 18 18 18 18 
		18 1 1;
	setAttr -s 60 ".kix[49:59]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 60 ".kiy[49:59]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 60 ".kox[49:59]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 60 ".koy[49:59]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LeftFoot_Control_rotateZ";
	rename -uid "28487233-004E-70C7-0D10-BD9034D2B533";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 60 ".ktv[0:59]"  0 0 10 1.7488497131414511 15 42.733092639834574
		 20 0 25 0 30 0 40 0 60 0 70 0 90 0 110 0 130 0 140 0 147 0 155 0 163 0 170 0 175 0
		 178 -9.2042605076179402 180 0 185 0 195 0 198 0 201 0 205 0 207 9.4895808991713473
		 208 0 210 0 225 0 229 0 230 -2.6474815498069688 232 0 235 0 238 0 240 0 250 0 260 0
		 270 0 280 0 285 0 287 39.951899663591298 288 0 290 0 300 0 305 0 310 0 317 0 320 0
		 330 0 335 0 337 0.55004779213072974 338 0 340 0 360 0 365 0 367 -24.080550725716947
		 370 -24.494905222168292 375 -24.494905222168292 380 0 405 0;
	setAttr -s 60 ".kit[49:59]"  1 18 1 1 18 18 18 18 
		18 1 1;
	setAttr -s 60 ".kot[49:59]"  1 18 1 1 18 18 18 18 
		18 1 1;
	setAttr -s 60 ".kix[49:59]"  1 1 1 1 1 1 0.98526968411566473 1 1 1 1;
	setAttr -s 60 ".kiy[49:59]"  0 0 0 0 0 0 -0.17100774708362862 0 0 0 
		0;
	setAttr -s 60 ".kox[49:59]"  1 1 1 1 1 1 0.98526968411566462 1 1 1 1;
	setAttr -s 60 ".koy[49:59]"  0 0 0 0 0 0 -0.17100774708362859 0 0 0 
		0;
createNode animCurveTU -n "LeftFoot_Control_scaleX";
	rename -uid "B8DBCCF2-3A42-DEA6-DB92-BEA9CAC5326B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 54 ".ktv[0:53]"  0 1 10 1 20 1 25 1 30 1 40 1 60 1 70 1 90 1
		 110 1 130 1 140 1 147 1 155 1 163 1 170 1 175 1 180 1 185 1 195 1 198 1 201 1 205 1
		 207 1 208 1 210 1 225 1 229 1 232 1 235 1 238 1 240 1 250 1 260 1 270 1 280 1 285 1
		 288 1 290 1 300 1 305 1 310 1 317 1 320 1 330 1 335 1 338 1 340 1 360 1 365 1 370 1
		 375 1 380 1 405 1;
	setAttr -s 54 ".kit[45:53]"  1 1 1 18 18 18 18 1 
		1;
	setAttr -s 54 ".kot[45:53]"  1 1 1 18 18 18 18 1 
		1;
	setAttr -s 54 ".kix[45:53]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 54 ".kiy[45:53]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 54 ".kox[45:53]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 54 ".koy[45:53]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LeftFoot_Control_scaleY";
	rename -uid "94E6F7E0-7340-5F7F-D1DE-999DDAAE9733";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 54 ".ktv[0:53]"  0 1 10 1 20 1 25 1 30 1 40 1 60 1 70 1 90 1
		 110 1 130 1 140 1 147 1 155 1 163 1 170 1 175 1 180 1 185 1 195 1 198 1 201 1 205 1
		 207 1 208 1 210 1 225 1 229 1 232 1 235 1 238 1 240 1 250 1 260 1 270 1 280 1 285 1
		 288 1 290 1 300 1 305 1 310 1 317 1 320 1 330 1 335 1 338 1 340 1 360 1 365 1 370 1
		 375 1 380 1 405 1;
	setAttr -s 54 ".kit[45:53]"  1 1 1 18 18 18 18 1 
		1;
	setAttr -s 54 ".kot[45:53]"  1 1 1 18 18 18 18 1 
		1;
	setAttr -s 54 ".kix[45:53]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 54 ".kiy[45:53]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 54 ".kox[45:53]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 54 ".koy[45:53]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LeftFoot_Control_scaleZ";
	rename -uid "79C9C469-9D43-F771-FBE2-66BBE99C4C80";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 54 ".ktv[0:53]"  0 1 10 1 20 1 25 1 30 1 40 1 60 1 70 1 90 1
		 110 1 130 1 140 1 147 1 155 1 163 1 170 1 175 1 180 1 185 1 195 1 198 1 201 1 205 1
		 207 1 208 1 210 1 225 1 229 1 232 1 235 1 238 1 240 1 250 1 260 1 270 1 280 1 285 1
		 288 1 290 1 300 1 305 1 310 1 317 1 320 1 330 1 335 1 338 1 340 1 360 1 365 1 370 1
		 375 1 380 1 405 1;
	setAttr -s 54 ".kit[45:53]"  1 1 1 18 18 18 18 1 
		1;
	setAttr -s 54 ".kot[45:53]"  1 1 1 18 18 18 18 1 
		1;
	setAttr -s 54 ".kix[45:53]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 54 ".kiy[45:53]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 54 ".kox[45:53]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 54 ".koy[45:53]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LeftHip_Control_visibility";
	rename -uid "D966E4D1-E44F-B168-E683-DAACD9E798A9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 163 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1
		 290 1 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTA -n "LeftHip_Control_rotateX";
	rename -uid "2236C0D9-AD45-A66F-11EF-B6B914EAC5B2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 163 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0
		 290 0 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTA -n "LeftHip_Control_rotateY";
	rename -uid "708A88B8-F54A-1345-0999-488CC0FE44CF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 163 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0
		 290 0 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTA -n "LeftHip_Control_rotateZ";
	rename -uid "D71BC092-CD48-64A4-B890-7F9CEEE3114E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 163 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0
		 290 0 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTU -n "LeftHip_Control_scaleX";
	rename -uid "C7DB329A-0C47-7F40-261C-5B9209508046";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 163 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1
		 290 1 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTU -n "LeftHip_Control_scaleY";
	rename -uid "E7F211E4-EF45-8E84-BB76-A3913D84CEFA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 163 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1
		 290 1 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTU -n "LeftHip_Control_scaleZ";
	rename -uid "EE566DF9-C046-5181-9FEA-7FAB10361E78";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 163 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1
		 290 1 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTU -n "RightKnee_Control_visibility";
	rename -uid "F8455042-7A49-6C9A-A97A-638686B0FD05";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 163 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1
		 290 1 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTA -n "RightKnee_Control_rotateX";
	rename -uid "DC6D1C97-4244-7544-46AF-2B99A7A09D45";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 163 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0
		 290 0 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTA -n "RightKnee_Control_rotateY";
	rename -uid "CB66F226-9B45-7552-67B4-B8AD57D4E822";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 163 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0
		 290 0 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTA -n "RightKnee_Control_rotateZ";
	rename -uid "BEC83556-BA48-1F62-94FA-2E86D2D59CAC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 163 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0
		 290 0 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTU -n "RightKnee_Control_scaleX";
	rename -uid "52C44301-6C45-E1C7-2E38-748600B226E9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 163 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1
		 290 1 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTU -n "RightKnee_Control_scaleY";
	rename -uid "E64BDA13-7E41-BB52-F682-BD82F2E4A8B5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 163 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1
		 290 1 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTU -n "RightKnee_Control_scaleZ";
	rename -uid "F8ED0690-8846-DD9F-B966-AEB1F60DC53B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 163 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1
		 290 1 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTU -n "LeftFingers_Control_visibility";
	rename -uid "FA4825CF-DF4A-6E76-B7B5-D79BA97F823C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 163 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1
		 290 1 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTA -n "LeftFingers_Control_rotateX";
	rename -uid "43C5E756-D042-66D3-E03E-14B7905ABA05";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 163 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0
		 290 0 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTA -n "LeftFingers_Control_rotateY";
	rename -uid "19E32867-AA45-0035-679C-F4A7ECCEB002";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 163 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0
		 290 0 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTA -n "LeftFingers_Control_rotateZ";
	rename -uid "F1823171-7C47-F803-E6F5-0B8050542562";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 163 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0
		 290 0 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTU -n "LeftFingers_Control_scaleX";
	rename -uid "B5668235-944D-60FC-6510-1E9AAD0DB715";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 163 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1
		 290 1 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTU -n "LeftFingers_Control_scaleY";
	rename -uid "87E6A933-5E4E-B80A-FA3F-B89D8C711C17";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 163 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1
		 290 1 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTU -n "LeftFingers_Control_scaleZ";
	rename -uid "A29A4D84-6F47-C272-D403-F39059A39249";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 163 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1
		 290 1 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTU -n "RightToes_Control_visibility";
	rename -uid "E1F101AB-6742-4171-1B97-4BB0AD3FD726";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 163 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1
		 290 1 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTA -n "RightToes_Control_rotateX";
	rename -uid "0B6D61CD-1F47-F541-109B-098FA4F75B17";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  0 0 10 -3.9910406336393072 14 0 20 0 30 0
		 40 0 60 0 70 0 90 0 110 0 130 0 140 0 155 0 163 0 170 0 185 0 195 0 210 0 225 0 240 0
		 250 0 260 0 270 0 280 0 290 0 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0
		 405 0;
	setAttr -s 35 ".kit[29:34]"  1 18 18 18 1 1;
	setAttr -s 35 ".kot[29:34]"  1 18 18 18 1 1;
	setAttr -s 35 ".kix[29:34]"  1 1 1 1 1 1;
	setAttr -s 35 ".kiy[29:34]"  0 0 0 0 0 0;
	setAttr -s 35 ".kox[29:34]"  1 1 1 1 1 1;
	setAttr -s 35 ".koy[29:34]"  0 0 0 0 0 0;
createNode animCurveTA -n "RightToes_Control_rotateY";
	rename -uid "F7E521DA-084C-1E93-612F-AFB8699C4665";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 163 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0
		 290 0 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTA -n "RightToes_Control_rotateZ";
	rename -uid "26308A00-374F-237D-D0E0-8EBE79B7B8EF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 163 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0
		 290 0 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTU -n "RightToes_Control_scaleX";
	rename -uid "89177C78-644D-1436-8A41-56951BEDEE26";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 163 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1
		 290 1 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTU -n "RightToes_Control_scaleY";
	rename -uid "F116DB67-4943-064C-258A-85885325CFA1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 163 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1
		 290 1 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTU -n "RightToes_Control_scaleZ";
	rename -uid "5087B70C-F349-CC71-CCC2-13A7C9867993";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 163 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1
		 290 1 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTU -n "RightShoulder_Control_visibility";
	rename -uid "E926CEE3-794A-C737-F1CC-D3B676FFE0DD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 163 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1
		 290 1 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 390 1 405 1;
	setAttr -s 35 ".kit[28:34]"  1 18 18 18 1 9 1;
	setAttr -s 35 ".kot[28:34]"  1 18 18 18 1 5 1;
	setAttr -s 35 ".kix[28:34]"  1 1 1 1 1 1 1;
	setAttr -s 35 ".kiy[28:34]"  0 0 0 0 0 0 0;
	setAttr -s 35 ".kox[28:34]"  1 1 1 1 1 0 1;
	setAttr -s 35 ".koy[28:34]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "RightShoulder_Control_rotateX";
	rename -uid "9C851AB1-1842-ED69-EE0D-3E90A0B49B8A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 36 ".ktv[0:35]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 163 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0
		 290 0 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 386 42.918944773390152
		 390 0 405 0;
	setAttr -s 36 ".kit[28:35]"  1 18 18 18 1 18 18 1;
	setAttr -s 36 ".kot[28:35]"  1 18 18 18 1 18 18 1;
	setAttr -s 36 ".kix[28:35]"  1 1 1 1 1 1 1 1;
	setAttr -s 36 ".kiy[28:35]"  0 0 0 0 0 0 0 0;
	setAttr -s 36 ".kox[28:35]"  1 1 1 1 1 1 1 1;
	setAttr -s 36 ".koy[28:35]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RightShoulder_Control_rotateY";
	rename -uid "97A7C5BB-BA4F-07A4-5980-E5AEF73F7E69";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 36 ".ktv[0:35]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 163 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0
		 290 0 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 386 46.885661230277108
		 390 0 405 0;
	setAttr -s 36 ".kit[28:35]"  1 18 18 18 1 18 18 1;
	setAttr -s 36 ".kot[28:35]"  1 18 18 18 1 18 18 1;
	setAttr -s 36 ".kix[28:35]"  1 1 1 1 1 1 1 1;
	setAttr -s 36 ".kiy[28:35]"  0 0 0 0 0 0 0 0;
	setAttr -s 36 ".kox[28:35]"  1 1 1 1 1 1 1 1;
	setAttr -s 36 ".koy[28:35]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RightShoulder_Control_rotateZ";
	rename -uid "02E9D432-3C40-E8A0-2566-10BB0D8714E1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 36 ".ktv[0:35]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 163 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0
		 290 0 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 386 27.334875985674902
		 390 0 405 0;
	setAttr -s 36 ".kit[28:35]"  1 18 18 18 1 18 18 1;
	setAttr -s 36 ".kot[28:35]"  1 18 18 18 1 18 18 1;
	setAttr -s 36 ".kix[28:35]"  1 1 1 1 1 1 1 1;
	setAttr -s 36 ".kiy[28:35]"  0 0 0 0 0 0 0 0;
	setAttr -s 36 ".kox[28:35]"  1 1 1 1 1 1 1 1;
	setAttr -s 36 ".koy[28:35]"  0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RightShoulder_Control_scaleX";
	rename -uid "DA3B417E-B14D-88F4-B0A3-5EB3C9CD403C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 163 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1
		 290 1 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 390 1 405 1;
	setAttr -s 35 ".kit[28:34]"  1 18 18 18 1 18 1;
	setAttr -s 35 ".kot[28:34]"  1 18 18 18 1 18 1;
	setAttr -s 35 ".kix[28:34]"  1 1 1 1 1 1 1;
	setAttr -s 35 ".kiy[28:34]"  0 0 0 0 0 0 0;
	setAttr -s 35 ".kox[28:34]"  1 1 1 1 1 1 1;
	setAttr -s 35 ".koy[28:34]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "RightShoulder_Control_scaleY";
	rename -uid "73E4F2BA-0F48-004D-F8DC-FFBB8E4FCBA2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 163 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1
		 290 1 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 390 1 405 1;
	setAttr -s 35 ".kit[28:34]"  1 18 18 18 1 18 1;
	setAttr -s 35 ".kot[28:34]"  1 18 18 18 1 18 1;
	setAttr -s 35 ".kix[28:34]"  1 1 1 1 1 1 1;
	setAttr -s 35 ".kiy[28:34]"  0 0 0 0 0 0 0;
	setAttr -s 35 ".kox[28:34]"  1 1 1 1 1 1 1;
	setAttr -s 35 ".koy[28:34]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "RightShoulder_Control_scaleZ";
	rename -uid "94D51CF8-2547-4E3F-DE1D-B0937D0CCE39";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 163 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1
		 290 1 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 390 1 405 1;
	setAttr -s 35 ".kit[28:34]"  1 18 18 18 1 18 1;
	setAttr -s 35 ".kot[28:34]"  1 18 18 18 1 18 1;
	setAttr -s 35 ".kix[28:34]"  1 1 1 1 1 1 1;
	setAttr -s 35 ".kiy[28:34]"  0 0 0 0 0 0 0;
	setAttr -s 35 ".kox[28:34]"  1 1 1 1 1 1 1;
	setAttr -s 35 ".koy[28:34]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "Neck_Control_visibility";
	rename -uid "DC25A4C8-E44B-56CB-4767-CDA4810FC1AA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 163 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1
		 290 1 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTA -n "Neck_Control_rotateX";
	rename -uid "FAEE2B35-484B-86EB-8932-D4B94F51BD7D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 0 10 0 20 0 30 0 40 0 60 0 70 -9.7676716133461188
		 90 -9.7676716133461188 110 0 130 0 140 0 155 0 163 0 170 0 185 0 195 -9.7676716133461188
		 210 0 225 0 240 -9.7676716133461188 250 0 260 0 270 0 280 0 290 0 300 0 310 0 320 0
		 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTA -n "Neck_Control_rotateY";
	rename -uid "1E4FB279-1F48-B407-1F3C-6EA2634F9821";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 0 10 0 20 0 30 0 40 0 60 0 70 28.28556741501513
		 90 28.28556741501513 110 0 130 0 140 0 155 0 163 0 170 0 185 0 195 28.28556741501513
		 210 0 225 0 240 28.28556741501513 250 0 260 0 270 0 280 0 290 0 300 0 310 0 320 0
		 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTA -n "Neck_Control_rotateZ";
	rename -uid "8AA386E1-4C45-B33A-3719-D59839B2E7B1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 0 10 0 20 0 30 0 40 0 60 0 70 3.0358121786555987
		 90 3.0358121786555987 110 0 130 0 140 0 155 0 163 0 170 0 185 0 195 3.0358121786555987
		 210 0 225 0 240 3.0358121786555987 250 0 260 0 270 0 280 0 290 0 300 0 310 0 320 0
		 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTU -n "Neck_Control_scaleX";
	rename -uid "F727A271-EC4E-30A6-EEED-EDB420ED03E3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 163 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1
		 290 1 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTU -n "Neck_Control_scaleY";
	rename -uid "F042856E-5148-DBB0-4036-AA9409C862E9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 163 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1
		 290 1 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTU -n "Neck_Control_scaleZ";
	rename -uid "4312FFCF-6E4F-A671-94B6-C58FE915129D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 163 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1
		 290 1 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTU -n "RootMotion_Control_visibility";
	rename -uid "3E9E05FE-D849-0189-3CA5-ADA75624CBCD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 36 ".ktv[0:35]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 163 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1
		 290 1 300 1 310 1 320 1 330 1 340 1 360 1 363 1 364 1 370 1 375 1 380 1 405 1;
	setAttr -s 36 ".kit[28:35]"  1 18 18 18 18 18 1 1;
	setAttr -s 36 ".kot[28:35]"  1 18 18 18 18 18 1 1;
	setAttr -s 36 ".kix[28:35]"  1 1 1 1 1 1 1 1;
	setAttr -s 36 ".kiy[28:35]"  0 0 0 0 0 0 0 0;
	setAttr -s 36 ".kox[28:35]"  1 1 1 1 1 1 1 1;
	setAttr -s 36 ".koy[28:35]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RootMotion_Control_rotateX";
	rename -uid "CD244A4A-7845-0207-7DE2-BF8C9E170712";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 36 ".ktv[0:35]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 163 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0
		 290 0 300 0 310 0 320 0 330 0 340 0 360 0 363 0 364 0 370 0 375 0 380 0 405 0;
	setAttr -s 36 ".kit[28:35]"  1 18 18 18 18 18 1 1;
	setAttr -s 36 ".kot[28:35]"  1 18 18 18 18 18 1 1;
	setAttr -s 36 ".kix[28:35]"  1 1 1 1 1 1 1 1;
	setAttr -s 36 ".kiy[28:35]"  0 0 0 0 0 0 0 0;
	setAttr -s 36 ".kox[28:35]"  1 1 1 1 1 1 1 1;
	setAttr -s 36 ".koy[28:35]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RootMotion_Control_rotateY";
	rename -uid "FEA9AFED-C24F-8C24-226E-A9AE28F50D97";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 36 ".ktv[0:35]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 163 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0
		 290 0 300 0 310 0 320 0 330 0 340 0 360 0 363 0 364 180 370 180 375 180 380 0 405 0;
	setAttr -s 36 ".kit[28:35]"  1 18 18 18 18 18 1 1;
	setAttr -s 36 ".kot[28:35]"  1 18 18 18 18 18 1 1;
	setAttr -s 36 ".kix[28:35]"  1 1 1 1 1 1 1 1;
	setAttr -s 36 ".kiy[28:35]"  0 0 0 0 0 0 0 0;
	setAttr -s 36 ".kox[28:35]"  1 1 1 1 1 1 1 1;
	setAttr -s 36 ".koy[28:35]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RootMotion_Control_rotateZ";
	rename -uid "9762EFC6-AF4B-2B05-04EE-25A1F1C72D9D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 36 ".ktv[0:35]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 163 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0
		 290 0 300 0 310 0 320 0 330 0 340 0 360 0 363 0 364 0 370 0 375 0 380 0 405 0;
	setAttr -s 36 ".kit[28:35]"  1 18 18 18 18 18 1 1;
	setAttr -s 36 ".kot[28:35]"  1 18 18 18 18 18 1 1;
	setAttr -s 36 ".kix[28:35]"  1 1 1 1 1 1 1 1;
	setAttr -s 36 ".kiy[28:35]"  0 0 0 0 0 0 0 0;
	setAttr -s 36 ".kox[28:35]"  1 1 1 1 1 1 1 1;
	setAttr -s 36 ".koy[28:35]"  0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RootMotion_Control_scaleX";
	rename -uid "332CB48D-0B42-552F-3AB4-5C8EE78F046E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 36 ".ktv[0:35]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 163 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1
		 290 1 300 1 310 1 320 1 330 1 340 1 360 1 363 1 364 1 370 1 375 1 380 1 405 1;
	setAttr -s 36 ".kit[28:35]"  1 18 18 18 18 18 1 1;
	setAttr -s 36 ".kot[28:35]"  1 18 18 18 18 18 1 1;
	setAttr -s 36 ".kix[28:35]"  1 1 1 1 1 1 1 1;
	setAttr -s 36 ".kiy[28:35]"  0 0 0 0 0 0 0 0;
	setAttr -s 36 ".kox[28:35]"  1 1 1 1 1 1 1 1;
	setAttr -s 36 ".koy[28:35]"  0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RootMotion_Control_scaleY";
	rename -uid "A4CE9692-CA44-0B74-BA33-8AB661CBE16A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 36 ".ktv[0:35]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 163 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1
		 290 1 300 1 310 1 320 1 330 1 340 1 360 1 363 1 364 1 370 1 375 1 380 1 405 1;
	setAttr -s 36 ".kit[28:35]"  1 18 18 18 18 18 1 1;
	setAttr -s 36 ".kot[28:35]"  1 18 18 18 18 18 1 1;
	setAttr -s 36 ".kix[28:35]"  1 1 1 1 1 1 1 1;
	setAttr -s 36 ".kiy[28:35]"  0 0 0 0 0 0 0 0;
	setAttr -s 36 ".kox[28:35]"  1 1 1 1 1 1 1 1;
	setAttr -s 36 ".koy[28:35]"  0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RootMotion_Control_scaleZ";
	rename -uid "6DA6FBB8-714B-6AF1-6261-BEA997613D1B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 36 ".ktv[0:35]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 163 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1
		 290 1 300 1 310 1 320 1 330 1 340 1 360 1 363 1 364 1 370 1 375 1 380 1 405 1;
	setAttr -s 36 ".kit[28:35]"  1 18 18 18 18 18 1 1;
	setAttr -s 36 ".kot[28:35]"  1 18 18 18 18 18 1 1;
	setAttr -s 36 ".kix[28:35]"  1 1 1 1 1 1 1 1;
	setAttr -s 36 ".kiy[28:35]"  0 0 0 0 0 0 0 0;
	setAttr -s 36 ".kox[28:35]"  1 1 1 1 1 1 1 1;
	setAttr -s 36 ".koy[28:35]"  0 0 0 0 0 0 0 0;
createNode animCurveTU -n "Root_Control_visibility";
	rename -uid "794DC1FC-AB47-B2D2-F3A1-68AFE43C7D91";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 163 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1
		 290 1 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTA -n "Root_Control_rotateX";
	rename -uid "290F0FB0-2944-0E44-5E6F-148FD3110818";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 163 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0
		 290 0 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTA -n "Root_Control_rotateY";
	rename -uid "7CDAAEE5-3041-4C8A-2386-FDB207B43FDD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 163 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0
		 290 0 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTA -n "Root_Control_rotateZ";
	rename -uid "923B20BF-5B46-9B5E-5960-6E94E81FCEFF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 163 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0
		 290 0 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTU -n "Root_Control_scaleX";
	rename -uid "7A38A02A-D340-355A-76F7-24BC5A5D604B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 163 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1
		 290 1 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTU -n "Root_Control_scaleY";
	rename -uid "31A86580-4542-EFAB-7BB7-15A9F97D52E4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 163 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1
		 290 1 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTU -n "Root_Control_scaleZ";
	rename -uid "CA002E35-7142-B094-6BC8-3C81AE978853";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 163 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1
		 290 1 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
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
	setAttr -s 34 ".ktv[0:33]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 163 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1
		 290 1 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTA -n "Spine1_Control_rotateX";
	rename -uid "14AD5234-5943-CBA8-7AF2-599D698EE2CA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 39 ".ktv[0:38]"  0 0 10 -0.29408989115496242 20 -0.29408989115496242
		 30 -0.29408989115496242 40 -0.29408989115496242 60 -0.29408989115496242 70 -0.29408989115496242
		 90 -0.29408989115496242 110 -0.29408989115496242 130 -0.29408989115496242 140 -0.29408989115496242
		 155 0 163 0 170 0 185 -0.29408989115496242 195 -0.29408989115496242 210 2.7865287082748718
		 225 2.7865287082748718 229 15.463557700068442 232 22.251739543690181 240 -0.29408989115496242
		 250 -0.29408989115496242 260 -0.29408989115496242 270 -0.29408989115496242 280 -0.29408989115496242
		 290 -0.29408989115496242 300 -0.29408989115496242 310 -0.29408989115496242 320 0
		 330 0 340 -0.29408989115496242 344 4.6816723926731685 360 -0.29408989115496242 363 10.65705708750896
		 370 14.633097653759997 375 14.633097653759997 380 -0.29408989115496242 387 -4.1145573765795085
		 405 -0.29408989115496242;
	setAttr -s 39 ".kit[30:38]"  1 18 18 18 18 18 1 18 
		1;
	setAttr -s 39 ".kot[30:38]"  1 18 18 18 18 18 1 18 
		1;
	setAttr -s 39 ".kix[30:38]"  1 1 1 0.84789594249287747 1 1 1 1 1;
	setAttr -s 39 ".kiy[30:38]"  0 0 0 0.53016268324365756 0 0 0 0 0;
	setAttr -s 39 ".kox[30:38]"  1 1 1 0.84789594249287759 1 1 1 1 1;
	setAttr -s 39 ".koy[30:38]"  0 0 0 0.53016268324365767 0 0 0 0 0;
createNode animCurveTA -n "Spine1_Control_rotateY";
	rename -uid "606411DE-A742-8ECB-9AE1-D487A7CAFA15";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 38 ".ktv[0:37]"  0 0 10 -9.0429078946841077 20 -9.0429078946841077
		 30 -9.0429078946841077 40 -9.0429078946841077 60 -9.0429078946841077 70 -9.0429078946841077
		 90 -9.0429078946841077 110 -9.0429078946841077 130 -9.0429078946841077 140 -9.0429078946841077
		 155 -1.2846458329941166 163 -1.2846458329941166 170 -1.2846458329941166 185 -9.0429078946841077
		 195 -9.0429078946841077 210 0 225 0 229 5.2466062467169179 232 -3.4387511782038471
		 240 -9.0429078946841077 250 -9.0429078946841077 260 -9.0429078946841077 270 -9.0429078946841077
		 280 -9.0429078946841077 290 -9.0429078946841077 300 -9.0429078946841077 310 -9.0429078946841077
		 320 0 330 0 340 -9.0429078946841077 344 -19.970894323012232 360 -9.0429078946841077
		 370 -9.0429078946841077 375 -9.0429078946841077 380 -9.0429078946841077 387 -6.8875703609453138
		 405 -9.0429078946841077;
	setAttr -s 38 ".kit[30:37]"  1 18 18 18 18 1 18 1;
	setAttr -s 38 ".kot[30:37]"  1 18 18 18 18 1 18 1;
	setAttr -s 38 ".kix[30:37]"  1 1 1 1 1 1 1 1;
	setAttr -s 38 ".kiy[30:37]"  0 0 0 0 0 0 0 0;
	setAttr -s 38 ".kox[30:37]"  1 1 1 1 1 1 1 1;
	setAttr -s 38 ".koy[30:37]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Spine1_Control_rotateZ";
	rename -uid "A86DD54D-704F-76F9-FC15-F2881A4D812C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 38 ".ktv[0:37]"  0 0 10 4.0818874382600914 20 4.0818874382600914
		 30 4.0818874382600914 40 4.0818874382600914 60 4.0818874382600914 70 4.0818874382600914
		 90 4.0818874382600914 110 4.0818874382600914 130 4.0818874382600914 140 4.0818874382600914
		 155 0 163 0 170 0 185 4.0818874382600914 195 4.0818874382600914 210 0 225 0 229 -5.1551642744886887
		 232 2.5453716245869322 240 4.0818874382600914 250 4.0818874382600914 260 4.0818874382600914
		 270 4.0818874382600914 280 4.0818874382600914 290 4.0818874382600914 300 4.0818874382600914
		 310 4.0818874382600914 320 0 330 0 340 4.0818874382600914 344 12.234704460994561
		 360 4.0818874382600914 370 4.0818874382600914 375 4.0818874382600914 380 4.0818874382600914
		 387 0.63494685095531489 405 4.0818874382600914;
	setAttr -s 38 ".kit[30:37]"  1 18 18 18 18 1 18 1;
	setAttr -s 38 ".kot[30:37]"  1 18 18 18 18 1 18 1;
	setAttr -s 38 ".kix[30:37]"  1 1 1 1 1 1 1 1;
	setAttr -s 38 ".kiy[30:37]"  0 0 0 0 0 0 0 0;
	setAttr -s 38 ".kox[30:37]"  1 1 1 1 1 1 1 1;
	setAttr -s 38 ".koy[30:37]"  0 0 0 0 0 0 0 0;
createNode animCurveTU -n "Spine1_Control_scaleX";
	rename -uid "7C5732B1-7F49-0441-3086-2F95DCD96B55";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 163 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1
		 290 1 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTU -n "Spine1_Control_scaleY";
	rename -uid "2A978AE8-1645-3A6A-D8C7-F79350CCFFD5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 163 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1
		 290 1 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTU -n "Spine1_Control_scaleZ";
	rename -uid "56E6DB19-484B-8E12-8209-2DB95C3BFF6F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 163 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1
		 290 1 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTU -n "Spine2_Control_visibility";
	rename -uid "952326C6-F241-681F-F00F-1E8F82761E2D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 163 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1
		 290 1 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTA -n "Spine2_Control_rotateX";
	rename -uid "759B6A68-A848-A7B4-9546-4393C0DB5451";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  0 0 10 0 20 0 30 0 40 0 60 0 70 -2.4311370132628416
		 90 -2.4311370132628416 110 4.7694541150291032 120 3.2301539515761877 130 4.7694541150291032
		 140 0 155 0 163 0 170 0 185 0 195 -2.4311370132628416 210 2.7865287082748718 225 2.7865287082748718
		 229 14.804530646546967 232 21.863903755719726 240 -2.4311370132628416 250 4.7694541150291032
		 260 4.7694541150291032 270 4.7694541150291032 280 4.7694541150291032 290 4.7694541150291032
		 300 4.7694541150291032 310 4.7694541150291032 320 0 330 0 340 4.7694541150291032
		 360 4.7694541150291032 363 15.720601093692999 370 19.696641659944078 375 19.696641659944078
		 380 4.7694541150291032 385 3.667950273307631 391 -6.1841724010891275 405 4.7694541150291032;
	setAttr -s 40 ".kit[31:39]"  1 18 18 18 18 1 18 18 
		1;
	setAttr -s 40 ".kot[31:39]"  1 18 18 18 18 1 18 18 
		1;
	setAttr -s 40 ".kix[31:39]"  1 1 0.84789594249287736 1 1 1 0.96375108011201216 
		1 1;
	setAttr -s 40 ".kiy[31:39]"  0 0 0.53016268324365812 0 0 0 -0.26680302768696224 
		0 0;
	setAttr -s 40 ".kox[31:39]"  1 1 0.84789594249287736 1 1 1 0.96375108011201205 
		1 1;
	setAttr -s 40 ".koy[31:39]"  0 0 0.53016268324365812 0 0 0 -0.26680302768696224 
		0 0;
createNode animCurveTA -n "Spine2_Control_rotateY";
	rename -uid "C4C2F04A-CF40-94EA-E7AA-AD82922877D5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  0 0 10 0 20 0 30 0 40 0 60 0 70 6.5628266527389298
		 90 6.5628266527389298 110 6.5628266527389298 120 7.6617957352304868 130 6.5628266527389298
		 140 0 155 10.388851264924178 159 9.7201182429908553 163 10.388851264924178 170 10.388851264924178
		 185 0 195 6.5628266527389298 210 0 225 0 229 7.9308412074269974 232 1.6739695882594858
		 240 6.5628266527389298 250 6.5628266527389298 260 6.5628266527389298 270 6.5628266527389298
		 280 6.5628266527389298 290 6.5628266527389298 300 6.5628266527389298 310 6.5628266527389298
		 320 0 330 0 340 6.5628266527389298 360 6.5628266527389298 370 6.5628266527389298
		 375 6.5628266527389298 380 6.5628266527389298 385 23.975553166756036 391 -9.6107139556622077
		 405 6.5628266527389298;
	setAttr -s 40 ".kit[32:39]"  1 18 18 18 1 18 18 1;
	setAttr -s 40 ".kot[32:39]"  1 18 18 18 1 18 18 1;
	setAttr -s 40 ".kix[32:39]"  1 1 1 1 1 1 1 1;
	setAttr -s 40 ".kiy[32:39]"  0 0 0 0 0 0 0 0;
	setAttr -s 40 ".kox[32:39]"  1 1 1 1 1 1 1 1;
	setAttr -s 40 ".koy[32:39]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Spine2_Control_rotateZ";
	rename -uid "DC9C8DFA-E343-7764-5CAF-1FAC2B24F722";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 39 ".ktv[0:38]"  0 0 10 0 20 0 30 0 40 0 60 0 70 -10.348444710177358
		 90 -10.348444710177358 110 -10.348444710177358 120 -9.6183578903154761 130 -10.348444710177358
		 140 0 155 0 163 0 170 0 185 0 195 -10.348444710177358 210 0 225 0 229 -7.7634143138940699
		 232 -3.2263493525961047 240 -10.348444710177358 250 -10.348444710177358 260 -10.348444710177358
		 270 -10.348444710177358 280 -10.348444710177358 290 -10.348444710177358 300 -10.348444710177358
		 310 -10.348444710177358 320 0 330 0 340 -10.348444710177358 360 -10.348444710177358
		 370 -10.348444710177358 375 -10.348444710177358 380 -10.348444710177358 385 -23.98844236132004
		 391 -1.7117534861854271 405 -10.348444710177358;
	setAttr -s 39 ".kit[31:38]"  1 18 18 18 1 18 18 1;
	setAttr -s 39 ".kot[31:38]"  1 18 18 18 1 18 18 1;
	setAttr -s 39 ".kix[31:38]"  1 1 1 1 1 1 1 1;
	setAttr -s 39 ".kiy[31:38]"  0 0 0 0 0 0 0 0;
	setAttr -s 39 ".kox[31:38]"  1 1 1 1 1 1 1 1;
	setAttr -s 39 ".koy[31:38]"  0 0 0 0 0 0 0 0;
createNode animCurveTU -n "Spine2_Control_scaleX";
	rename -uid "1249B3CD-D34E-1DB9-C21B-8A9AD9C56709";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 163 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1
		 290 1 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTU -n "Spine2_Control_scaleY";
	rename -uid "3B820B6E-D74E-B84B-96F8-C188C0A77DC3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 163 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1
		 290 1 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode animCurveTU -n "Spine2_Control_scaleZ";
	rename -uid "50D43D14-1F45-568C-26EF-73B7AAA099C3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 163 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1
		 290 1 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 1;
	setAttr -s 34 ".kix[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".kiy[28:33]"  0 0 0 0 0 0;
	setAttr -s 34 ".kox[28:33]"  1 1 1 1 1 1;
	setAttr -s 34 ".koy[28:33]"  0 0 0 0 0 0;
createNode reference -n "MkIIRN";
	rename -uid "40DD3738-B94A-8E7C-2ED6-549A84FF3505";
	setAttr ".fn[0]" -type "string" "/Users/briancollins/Unity/DropZone/ArtSource/Weapons/MkII.ma";
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
createNode polyCube -n "polyCube1";
	rename -uid "5FEE9075-4448-9478-54BE-4FA9F8CE81E8";
	setAttr ".w" 100;
	setAttr ".h" 200;
	setAttr ".d" 100;
	setAttr ".cuv" 4;
createNode animCurveTU -n "LeftFingers_Control_Grip";
	rename -uid "B005CF16-1E44-25A5-E6E6-369FFCF35AA8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 37 ".ktv[0:36]"  10 0.6 20 0.6 30 0.6 40 0.6 60 0.6 70 0.6
		 90 0.6 110 0.6 130 0.6 140 0.6 155 0.6 163 0.6 170 0.6 185 0.6 195 0.6 210 0.6 225 0.6
		 240 0.6 250 0.6 260 0.6 270 0.6 280 0.6 290 0.6 300 0.6 310 0.6 320 0.6 330 0.6 340 0.6
		 343 0 344 1 351 1 352 0 360 0.6 370 0.6 375 0.6 380 0.6 405 0.6;
	setAttr -s 37 ".kit[27:36]"  1 18 18 18 18 18 18 18 
		1 1;
	setAttr -s 37 ".kot[27:36]"  1 18 18 18 18 18 18 18 
		1 1;
	setAttr -s 37 ".kix[27:36]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 37 ".kiy[27:36]"  0 0 0 0 0 0 0 0 0 0;
	setAttr -s 37 ".kox[27:36]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 37 ".koy[27:36]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RightFinders_Control_Grip";
	rename -uid "F67B4DAC-E940-DEE7-6D2B-289E07E82BDC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 163 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1
		 290 1 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 33 ".kit[27:32]"  1 18 18 18 1 1;
	setAttr -s 33 ".kot[27:32]"  1 18 18 18 1 1;
	setAttr -s 33 ".kix[27:32]"  1 1 1 1 1 1;
	setAttr -s 33 ".kiy[27:32]"  0 0 0 0 0 0;
	setAttr -s 33 ".kox[27:32]"  1 1 1 1 1 1;
	setAttr -s 33 ".koy[27:32]"  0 0 0 0 0 0;
createNode animCurveTL -n "Hips_Control_translateX";
	rename -uid "DF0C4C84-B84C-3472-A8C8-88AB4D115586";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  10 0 30 0 40 8.2339506004107506 60 8.2339506004107506
		 70 -6.5581600584790261 90 -6.5581600584790261 110 -6.5581600584790261 130 -6.5581600584790261
		 140 8.2339506004107506 145 61.209474692451323 148 76.912910588484536 155 87.314180305765916
		 163 86.806344489132485 170 87.314180305765916 175 73.570698657331704 178 36.267276786382183
		 180 18.657166410423741 185 8.2339506004107506 195 -6.5581600584790261 200 -56.650472868266306
		 210 -77.766744472127215 221 -77.766744472127215 225 -77.766744472127215 229 -53.246823967798377
		 231 -1.793549461717852 240 -6.5581600584790261 250 -6.5581600584790261 260 6.8383851248819312
		 266 6.8383851248819312 270 6.8383851248819312 280 -6.5581600584790261 284 -40.681269724965638
		 290 -1.0696595799532478 295 -1.0696595799532478 300 -1.0696595799532478 305 -30.860810808936073
		 310 -6.5581600584790261 320 -6.5581600584790261 323 -7.2194523767070047 330 -6.5581600584790261
		 334 -9.1730389308101259 337 5.3535055573308306 340 -6.5581600584790261 360 -6.5581600584790261
		 364 1.7261702358146813 370 -6.5581600584790261 375 -6.5581600584790261 380 -6.5581600584790261
		 405 -6.5581600584790261;
	setAttr -s 49 ".kit[42:48]"  1 18 18 18 18 1 1;
	setAttr -s 49 ".kot[42:48]"  1 18 18 18 18 1 1;
	setAttr -s 49 ".kix[42:48]"  1 1 1 1 1 1 1;
	setAttr -s 49 ".kiy[42:48]"  0 0 0 0 0 0 0;
	setAttr -s 49 ".kox[42:48]"  1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[42:48]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "Hips_Control_translateY";
	rename -uid "201D59F4-604B-5F96-2AD2-45A02398A93F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 57 ".ktv[0:56]"  10 -7.8310227218069866 19 -17.587928086526471
		 23 -3.8473159010132729 26 -13.607214217089108 30 -7.8310227218069866 40 -14.070107132292632
		 60 -14.985914105428291 70 -11.565355038398236 90 -11.565355038398236 110 -5.9182040925036272
		 120 -6.4278116857275744 130 -5.9182040925036272 140 -12.781302498072501 145 -5.3949811233336327
		 148 -9.4890747091763181 155 -7.6673207415104212 163 -7.2258897604069983 170 -7.6673207415104212
		 175 -9.461642691413445 180 -9.4636114496748682 185 -12.781302498072501 195 -11.565355038398236
		 197 -19.782584643934413 200 3.3540309892984013 203 -18.769236231696738 210 -6.7117980155808521
		 214 -6.2728876122075103 221 -7.115389747180684 225 -6.7117980155808521 231 -1.3395496718948419
		 234 -11.794073917395082 240 -11.565355038398236 250 -5.9182040925036272 260 -5.9182040925036272
		 266 -5.9182040925036272 270 -5.9182040925036272 280 -5.9182040925036272 282 -12.780495218167657
		 284 -2.4418437582758177 287 -9.1895992704940426 290 -5.9182040925036272 295 -5.9182040925036272
		 300 -5.9182040925036272 305 -14.714647820177786 310 -5.9182040925036272 313 -9.9531140755277221
		 320 -2.0922679265881925 326 -1.8169230222532633 330 -2.0922679265881925 334 -8.4328272298054934
		 340 -5.9182040925036272 360 -5.9182040925036272 364 -9.7123332234148823 370 -6.5451521528959073
		 375 -6.5451521528959073 380 -5.9182040925036272 405 -5.9182040925036272;
	setAttr -s 57 ".kit[50:56]"  1 18 18 18 18 1 1;
	setAttr -s 57 ".kot[50:56]"  1 18 18 18 18 1 1;
	setAttr -s 57 ".kix[50:56]"  1 1 1 1 1 1 1;
	setAttr -s 57 ".kiy[50:56]"  0 0 0 0 0 0 0;
	setAttr -s 57 ".kox[50:56]"  1 1 1 1 1 1 1;
	setAttr -s 57 ".koy[50:56]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "Hips_Control_translateZ";
	rename -uid "D70F9DF0-4242-834C-4163-87A08EF953AF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 52 ".ktv[0:51]"  10 2.0398875869225357 19 16.928171242929686
		 23 21.190377701072876 30 31.459276316117933 40 31.459276316117933 60 31.459276316117933
		 70 34.39229610281528 90 34.39229610281528 110 34.39229610281528 130 34.39229610281528
		 140 31.459276316117933 145 22.690338312449043 155 30.54178045164938 163 30.477878737544337
		 170 30.54178045164938 175 34.809618409650042 178 24.749145440816605 180 21.128958221575978
		 185 31.459276316117933 195 34.39229610281528 200 -2.1225097932270849 206 15.91091175331019
		 210 7.2241872237356546 221 7.6896239021766633 225 7.2241872237356546 229 -24.609889026602239
		 231 1.9758794277072909 240 34.39229610281528 250 34.39229610281528 260 16.733431246411939
		 266 16.510041483240705 270 16.733431246411939 280 34.39229610281528 284 0.11873725166945448
		 290 7.7701386578714775 295 7.7701386578714775 300 7.7701386578714775 305 5.3964680640863669
		 310 34.39229610281528 315 8.0875409383555237 317 7.7504700543983951 320 13.562559387664347
		 326 12.397084616543165 330 13.562559387664347 340 34.39229610281528 360 34.39229610281528
		 363 -5.1047338091549657 364 -20.000770604775763 370 19.012100109306964 375 19.012100109306964
		 380 34.39229610281528 405 34.39229610281528;
	setAttr -s 52 ".kit[44:51]"  1 18 18 18 18 18 1 1;
	setAttr -s 52 ".kot[44:51]"  1 18 18 18 18 18 1 1;
	setAttr -s 52 ".kix[44:51]"  1 1 0.0030641016283852497 1 1 1 1 1;
	setAttr -s 52 ".kiy[44:51]"  0 0 -0.99999530562958705 0 0 0 0 0;
	setAttr -s 52 ".kox[44:51]"  1 1 0.0030641016283852493 1 1 1 1 1;
	setAttr -s 52 ".koy[44:51]"  0 0 -0.99999530562958694 0 0 0 0 0;
createNode animCurveTA -n "Hips_Control_rotateX";
	rename -uid "49F77478-6A40-E21F-EC6A-739FDFEAD794";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 53 ".ktv[0:52]"  10 38.307933549963792 15 21.522593976187601
		 19 3.3523065584911578 23 0.075150942495273196 30 0 40 -8.7983290972773869 60 -8.7983290972773869
		 70 -6.700466863599627 90 -6.700466863599627 110 0 120 1.1574229561740608 130 0 140 -8.7983290972773869
		 148 -9.3023484777425605 151 -11.494842817192323 155 3.3992302202584574 170 3.3992302202584574
		 175 -0.26336094043169511 178 -8.4658746329706371 180 -9.0416517793403575 185 -8.7983290972773869
		 195 -6.700466863599627 200 5.5608872444207469 210 10.703416913112383 214 10.488010254888806
		 221 11.32209976734044 225 10.703416913112383 229 2.1899706190137298 231 -37.047644976937782
		 234 -15.275688845744515 240 -6.700466863599627 250 0 260 0 266 0 270 0 280 0 290 0
		 295 0 300 0 310 0 313 -1.1946651619829787 315 -3.0429357966545902 320 -5.6609725873207495
		 330 -5.6609725873207495 340 0 360 0 363 0.16263261128789311 364 -0.77482113535097563
		 370 17.825714967448924 375 17.825714967448924 380 0 387 -2.5536466484379607 405 0;
	setAttr -s 53 ".kit[44:52]"  1 18 18 18 18 18 1 18 
		1;
	setAttr -s 53 ".kot[44:52]"  1 18 18 18 18 18 1 18 
		1;
	setAttr -s 53 ".kix[44:52]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 53 ".kiy[44:52]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 53 ".kox[44:52]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 53 ".koy[44:52]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Hips_Control_rotateY";
	rename -uid "BF41FA21-DD42-F1FE-353B-A194BB5200B5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 52 ".ktv[0:51]"  10 10.977860793921815 15 -49.951292389012622
		 19 -130.49368867210774 30 -180 40 -192.93335800763472 60 -192.93335800763472 70 -177.67402626742074
		 90 -177.67402626742074 110 -180 120 -181.18526710517793 130 -180 140 -192.93335800763472
		 148 -341.21294757359072 151 -313.35430221261691 155 -315.33545323910266 170 -315.33545323910266
		 175 -302.08723096830084 178 -221.00180218989081 180 -196.20851013311162 185 -192.93335800763472
		 195 -177.67402626742074 200 -37.653166304324323 210 46.102683782879758 214 45.778055139976466
		 221 45.774767518256525 225 46.102683782879758 229 -45.407930203079836 231 -142.65983624660853
		 234 -180 240 -177.67402626742074 250 -180 260 -203.33237237505287 266 -203.33237237505287
		 270 -203.33237237505287 280 -180 290 -48.333080262977731 295 -48.333080262977731
		 300 -48.333080262977731 310 -180 313 -182.15302233958371 315 -149.17317951114612
		 320 -119.45646625824182 330 -119.45646625824182 340 -180 360 -180 363 -180.31232509142745
		 364 -360.12297965889246 370 -355.75619440385105 375 -355.75619440385105 380 -180
		 387 -178.61890634652184 405 -180;
	setAttr -s 52 ".kit[43:51]"  1 18 18 18 18 18 1 18 
		1;
	setAttr -s 52 ".kot[43:51]"  1 18 18 18 18 18 1 18 
		1;
	setAttr -s 52 ".kix[43:51]"  0.74260846409692793 1 0.99155053242101976 
		1 1 1 1 1 1;
	setAttr -s 52 ".kiy[43:51]"  -0.66972581632456252 0 -0.12972101470306213 
		0 0 0 0 0 0;
	setAttr -s 52 ".kox[43:51]"  0.74260846409692793 1 0.99155053242101987 
		1 1 1 1 1 1;
	setAttr -s 52 ".koy[43:51]"  -0.66972581632456263 0 -0.12972101470306216 
		0 0 0 0 0 0;
createNode animCurveTA -n "Hips_Control_rotateZ";
	rename -uid "03DC2A77-9346-C63B-80AA-BA96E7AD3A62";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 52 ".ktv[0:51]"  10 -2.0388577817832512 15 -10.069930935667719
		 19 11.528330206794788 30 0 40 -14.761010112641376 60 -14.761010112641376 70 21.145569597527569
		 90 21.145569597527569 110 0 120 0.081975177308969902 130 0 140 -14.761010112641376
		 148 1.5242038669345286 151 -5.9218768520724012 155 5.1483238070484179 170 5.1483238070484179
		 175 9.2347774145772128 178 2.3692411603193513 180 -4.1452486309826968 185 -14.761010112641376
		 195 21.145569597527569 200 -5.5721913959203029 210 6.7564635678103038 214 7.0544677764579076
		 221 7.3824826466567215 225 6.7564635678103038 229 -12.912616719157192 231 31.759595304217012
		 234 10.264397069271824 240 21.145569597527569 250 0 260 0 266 0 270 0 280 0 290 0
		 295 0 300 0 310 0 313 1.0333295355850478 315 3.7681263340034707 320 6.2163417029311638
		 330 6.2163417029311638 340 0 360 0 363 -0.6172338312383604 364 -0.2675601610148961
		 370 0 375 0 380 0 387 5.528609102974257 405 0;
	setAttr -s 52 ".kit[43:51]"  1 18 18 18 18 18 1 18 
		1;
	setAttr -s 52 ".kot[43:51]"  1 18 18 18 18 18 1 18 
		1;
	setAttr -s 52 ".kix[43:51]"  1 1 1 0.99931859312053783 1 1 1 1 1;
	setAttr -s 52 ".kiy[43:51]"  0 0 0 0.036910018200875326 0 0 0 0 0;
	setAttr -s 52 ".kox[43:51]"  1 1 1 0.99931859312053783 1 1 1 1 1;
	setAttr -s 52 ".koy[43:51]"  0 0 0 0.036910018200875326 0 0 0 0 0;
createNode animCurveTU -n "Hips_Control_scaleX";
	rename -uid "91A18593-864E-7986-F905-6CA37552CD25";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  10 1 30 1 40 1 60 1 70 1 90 1 110 1 130 1
		 140 1 155 1 170 1 185 1 195 1 200 1 210 1 221 1 225 1 240 1 250 1 260 1 266 1 270 1
		 280 1 290 1 295 1 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 35 ".kit[29:34]"  1 18 18 18 1 1;
	setAttr -s 35 ".kot[29:34]"  1 18 18 18 1 1;
	setAttr -s 35 ".kix[29:34]"  1 1 1 1 1 1;
	setAttr -s 35 ".kiy[29:34]"  0 0 0 0 0 0;
	setAttr -s 35 ".kox[29:34]"  1 1 1 1 1 1;
	setAttr -s 35 ".koy[29:34]"  0 0 0 0 0 0;
createNode animCurveTU -n "Hips_Control_scaleY";
	rename -uid "456A668C-1649-E356-FE39-75AB24192E9D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  10 1 30 1 40 1 60 1 70 1 90 1 110 1 130 1
		 140 1 155 1 170 1 185 1 195 1 200 1 210 1 221 1 225 1 240 1 250 1 260 1 266 1 270 1
		 280 1 290 1 295 1 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 35 ".kit[29:34]"  1 18 18 18 1 1;
	setAttr -s 35 ".kot[29:34]"  1 18 18 18 1 1;
	setAttr -s 35 ".kix[29:34]"  1 1 1 1 1 1;
	setAttr -s 35 ".kiy[29:34]"  0 0 0 0 0 0;
	setAttr -s 35 ".kox[29:34]"  1 1 1 1 1 1;
	setAttr -s 35 ".koy[29:34]"  0 0 0 0 0 0;
createNode animCurveTU -n "Hips_Control_scaleZ";
	rename -uid "B7328B05-6C4B-9978-DB24-02A7578C0869";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  10 1 30 1 40 1 60 1 70 1 90 1 110 1 130 1
		 140 1 155 1 170 1 185 1 195 1 200 1 210 1 221 1 225 1 240 1 250 1 260 1 266 1 270 1
		 280 1 290 1 295 1 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 35 ".kit[29:34]"  1 18 18 18 1 1;
	setAttr -s 35 ".kot[29:34]"  1 18 18 18 1 1;
	setAttr -s 35 ".kix[29:34]"  1 1 1 1 1 1;
	setAttr -s 35 ".kiy[29:34]"  0 0 0 0 0 0;
	setAttr -s 35 ".kox[29:34]"  1 1 1 1 1 1;
	setAttr -s 35 ".koy[29:34]"  0 0 0 0 0 0;
createNode animCurveTU -n "Hips_Control_visibility";
	rename -uid "A3620C59-104D-A736-3A78-88A8671E0892";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  10 1 30 1 40 1 60 1 70 1 90 1 110 1 130 1
		 140 1 155 1 170 1 185 1 195 1 200 1 210 1 221 1 225 1 240 1 250 1 260 1 266 1 270 1
		 280 1 290 1 295 1 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 35 ".kit[29:34]"  1 18 18 18 1 1;
	setAttr -s 35 ".kot[29:34]"  1 18 18 18 1 1;
	setAttr -s 35 ".kix[29:34]"  1 1 1 1 1 1;
	setAttr -s 35 ".kiy[29:34]"  0 0 0 0 0 0;
	setAttr -s 35 ".kox[29:34]"  1 1 1 1 1 1;
	setAttr -s 35 ".koy[29:34]"  0 0 0 0 0 0;
createNode animCurveTA -n "pointLight2_rotateX";
	rename -uid "C5895315-0946-4E72-234A-5795FC592119";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  70 0 155 0 163 0 170 0 345 0 355 0;
createNode animCurveTA -n "pointLight2_rotateY";
	rename -uid "9202E2CF-8F4A-022B-B1D9-3E96DCAF1DFC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  70 0 155 0 163 0 170 0 345 0 355 0;
createNode animCurveTA -n "pointLight2_rotateZ";
	rename -uid "5E373AB4-5442-BE07-3FC8-A4BF04F44040";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  70 0 155 0 163 0 170 0 345 0 355 0;
createNode animCurveTU -n "pointLight2_visibility";
	rename -uid "B78C5F0A-4E45-8160-C770-B18566C255A9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  70 1 155 1 163 1 170 1 345 1 355 1;
	setAttr -s 6 ".kit[0:5]"  9 18 18 18 9 9;
	setAttr -s 6 ".kot[0:5]"  5 18 18 18 5 5;
createNode animCurveTL -n "pointLight2_translateX";
	rename -uid "5937D15C-1A49-C7D2-EB0C-26ADD2ACD62F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  70 -102.67414197752672 155 -102.67414197752672
		 163 -102.67414197752672 170 -102.67414197752672 345 -102.67414197752672 355 -102.67414197752672;
createNode animCurveTL -n "pointLight2_translateY";
	rename -uid "9932914A-EB4E-608B-7B44-1A87495459FB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  70 84.04381099779124 155 84.04381099779124
		 163 84.04381099779124 170 84.04381099779124 345 84.04381099779124 355 84.04381099779124;
createNode animCurveTL -n "pointLight2_translateZ";
	rename -uid "745FF22E-534D-7F66-8834-F79EE4CECBB0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  70 -183.95791339846397 155 -183.95791339846397
		 163 -183.95791339846397 170 -183.95791339846397 345 -183.95791339846397 355 -183.95791339846397;
createNode animCurveTU -n "pointLight2_scaleX";
	rename -uid "FEC75D6F-5C40-5260-86FD-339F28D37312";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  70 1 155 1 163 1 170 1 345 1 355 1;
createNode animCurveTU -n "pointLight2_scaleY";
	rename -uid "FAA9EA18-C042-9BB4-8793-B2A92ACABB49";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  70 1 155 1 163 1 170 1 345 1 355 1;
createNode animCurveTU -n "pointLight2_scaleZ";
	rename -uid "1C9DEAC5-524A-8AB7-43A8-76902C653021";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  70 1 155 1 163 1 170 1 345 1 355 1;
createNode reference -n "sharedReferenceNode";
	rename -uid "B20B1F1A-9F45-6FD8-791E-C6A6A1DA494D";
	setAttr ".ed" -type "dataReferenceEdits" 
		"sharedReferenceNode";
createNode animCurveTA -n "RightHand_Control_rotateZ";
	rename -uid "A0CC7372-CF45-8E87-A4A6-269B5CFFD223";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  70 -30.437136521797743 90 -30.437136521797743
		 140 -40.157104526811857 151 -37.284610141039309 155 6.5859020303398239 170 6.5859020303398239
		 174 -64.975317622534476 185 -40.157104526811857 195 -30.437136521797743 201 -72.750692130386597
		 204 -53.972666840858913 207 -1.1763151328101895 210 8.3041184411741096 225 8.3041184411741096
		 229 -15.265487837490198 231 -4.3035690849312704 240 -30.437136521797743 250 -30.437136521797743
		 255 -55.611121149193863 260 18.534333053705854 270 18.534333053705854 280 -30.437136521797743
		 286 -51.363502663823695 290 17.7094489019813 300 17.7094489019813 310 -30.437136521797743
		 317 -49.700292018417336 320 10.013235223096206 330 10.013235223096206 340 -30.437136521797743
		 344 113.66617203320786 348 82.459430434817435 360 144.61760687020262 380 144.61760687020262
		 385 -3.6166519813355604 388 18.319453954509527 391 72.049651591355513 396 44.944576328617181
		 401 77.648944153951746 405 3.3707963900478948;
	setAttr -s 40 ".kit[29:39]"  1 18 18 18 1 18 18 18 
		1 18 1;
	setAttr -s 40 ".kot[29:39]"  1 18 18 18 1 18 18 18 
		1 18 1;
	setAttr -s 40 ".kix[29:39]"  0.51579098688522418 1 1 1 1 1 0.18600071337495197 
		1 1 1 1;
	setAttr -s 40 ".kiy[29:39]"  -0.85671445525797352 0 0 0 0 0 0.98254960924322243 
		0 0 0 0;
	setAttr -s 40 ".kox[29:39]"  0.51579098688522418 1 1 1 1 1 0.18600071337495197 
		1 1 1 1;
	setAttr -s 40 ".koy[29:39]"  -0.85671445525797363 0 0 0 0 0 0.98254960924322243 
		0 0 0 0;
createNode animCurveTA -n "RightHand_Control_rotateY";
	rename -uid "D0D17BC1-6743-2043-E53A-5F917C84910C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  70 122.52679973137674 90 122.52679973137674
		 140 143.28703769831446 151 -5.9677403930140143 155 -0.89617888830755865 170 -0.89617888830755865
		 174 -13.024471148898709 185 143.28703769831446 195 122.52679973137674 201 12.11779880654459
		 204 2.4083850180729889 207 23.726582519733405 210 7.8847757278360522 225 7.8847757278360522
		 229 83.71224973873872 231 128.37634444090065 240 122.52679973137674 250 122.52679973137674
		 255 -38.064512951769345 260 -10.287232175824684 270 -10.287232175824684 280 122.52679973137674
		 286 23.249704519898337 290 13.97027022627058 300 13.97027022627058 310 122.52679973137674
		 317 -3.4178523897712427 320 -10.249233293692955 330 -10.249233293692955 340 122.52679973137674
		 344 141.07959904736262 348 127.67276017056767 360 109.63527987103582 380 109.63527987103582
		 385 199.7044183723732 388 174.08700716556987 391 217.70768293553601 396 245.46772530201537
		 401 122.71979610644152 405 103.47766688289812;
	setAttr -s 40 ".kit[29:39]"  1 18 18 18 1 18 18 18 
		1 18 1;
	setAttr -s 40 ".kot[29:39]"  1 18 18 18 1 18 18 18 
		1 18 1;
	setAttr -s 40 ".kix[29:39]"  1 1 0.77205110171704805 1 1 1 1 0.25846784423512115 
		1 0.16320544224718558 1;
	setAttr -s 40 ".kiy[29:39]"  0 0 -0.63556045844395648 0 0 0 0 0.96601986185401456 
		0 -0.9865921059996885 0;
	setAttr -s 40 ".kox[29:39]"  1 1 0.77205110171704816 1 1 1 1 0.25846784423512115 
		1 0.16320544224718561 1;
	setAttr -s 40 ".koy[29:39]"  0 0 -0.63556045844395659 0 0 0 0 0.96601986185401445 
		0 -0.9865921059996885 0;
createNode animCurveTA -n "RightHand_Control_rotateX";
	rename -uid "26B9EA36-FE4F-CF84-1EDF-CCA4547C8684";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  70 -89.41578062958061 90 -89.41578062958061
		 140 -87.074164520796046 151 -119.36544751691211 155 -81.110495611696507 170 -81.110495611696507
		 174 -114.83986798579315 185 -87.074164520796046 195 -89.41578062958061 201 -181.20998683845465
		 204 -169.22992294417188 207 -92.583595188155115 210 -92.773952948251647 225 -92.773952948251647
		 229 -107.90090395429972 231 -56.037700290758053 240 -89.41578062958061 250 -89.41578062958061
		 255 -106.27256785485328 260 -89.916364166496223 270 -89.916364166496223 280 -89.41578062958061
		 286 -179.0782157455883 290 -84.266018011009038 300 -84.266018011009038 310 -89.41578062958061
		 317 -120.512276052131 320 -74.252213132287764 330 -74.252213132287764 340 -89.41578062958061
		 344 18.450538086940654 348 -24.499578285822672 360 43.84282952320909 380 43.84282952320909
		 385 -18.687128486425689 388 19.281269273675818 391 -4.3647019193958396 396 10.252381092227179
		 401 54.160397485534403 405 -59.144953589130836;
	setAttr -s 40 ".kit[29:39]"  1 18 18 18 1 18 18 18 
		1 18 1;
	setAttr -s 40 ".kot[29:39]"  1 18 18 18 1 18 18 18 
		1 18 1;
	setAttr -s 40 ".kix[29:39]"  0.839539740031087 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".kiy[29:39]"  -0.54329828355014609 0 0 0 0 0 0 0 0 0 
		0;
	setAttr -s 40 ".kox[29:39]"  0.839539740031087 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".koy[29:39]"  -0.54329828355014598 0 0 0 0 0 0 0 0 0 
		0;
select -ne :time1;
	setAttr -av -k on ".cch";
	setAttr -av -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".o" 1;
	setAttr -av -k on ".unw" 1;
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
	setAttr -s 11 ".s";
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
	setAttr -s 2 ".r";
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
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
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
	setAttr ".dss" -type "string" "lambert1";
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
	setAttr -k on ".cch";
	setAttr -k on ".ihi";
	setAttr -k on ".nds";
	setAttr -k on ".bnm";
	setAttr -av ".gsn";
	setAttr -k on ".gsv";
connectAttr "Root_Control_visibility.o" "SquaddieRN.phl[110]";
connectAttr "Root_Control_translateX.o" "SquaddieRN.phl[111]";
connectAttr "Root_Control_translateY.o" "SquaddieRN.phl[112]";
connectAttr "Root_Control_translateZ.o" "SquaddieRN.phl[113]";
connectAttr "Root_Control_rotateX.o" "SquaddieRN.phl[114]";
connectAttr "Root_Control_rotateY.o" "SquaddieRN.phl[115]";
connectAttr "Root_Control_rotateZ.o" "SquaddieRN.phl[116]";
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
connectAttr "Spine1_Control_rotateX.o" "SquaddieRN.phl[140]";
connectAttr "Spine1_Control_rotateY.o" "SquaddieRN.phl[141]";
connectAttr "Spine1_Control_rotateZ.o" "SquaddieRN.phl[142]";
connectAttr "Spine1_Control_visibility.o" "SquaddieRN.phl[143]";
connectAttr "Spine1_Control_translateX.o" "SquaddieRN.phl[144]";
connectAttr "Spine1_Control_translateY.o" "SquaddieRN.phl[145]";
connectAttr "Spine1_Control_translateZ.o" "SquaddieRN.phl[146]";
connectAttr "Spine1_Control_scaleX.o" "SquaddieRN.phl[147]";
connectAttr "Spine1_Control_scaleY.o" "SquaddieRN.phl[148]";
connectAttr "Spine1_Control_scaleZ.o" "SquaddieRN.phl[149]";
connectAttr "Spine2_Control_rotateX.o" "SquaddieRN.phl[150]";
connectAttr "Spine2_Control_rotateY.o" "SquaddieRN.phl[151]";
connectAttr "Spine2_Control_rotateZ.o" "SquaddieRN.phl[152]";
connectAttr "Spine2_Control_visibility.o" "SquaddieRN.phl[153]";
connectAttr "Spine2_Control_translateX.o" "SquaddieRN.phl[154]";
connectAttr "Spine2_Control_translateY.o" "SquaddieRN.phl[155]";
connectAttr "Spine2_Control_translateZ.o" "SquaddieRN.phl[156]";
connectAttr "Spine2_Control_scaleX.o" "SquaddieRN.phl[157]";
connectAttr "Spine2_Control_scaleY.o" "SquaddieRN.phl[158]";
connectAttr "Spine2_Control_scaleZ.o" "SquaddieRN.phl[159]";
connectAttr "RightShoulder_Control_rotateX.o" "SquaddieRN.phl[160]";
connectAttr "RightShoulder_Control_rotateY.o" "SquaddieRN.phl[161]";
connectAttr "RightShoulder_Control_rotateZ.o" "SquaddieRN.phl[162]";
connectAttr "RightShoulder_Control_visibility.o" "SquaddieRN.phl[163]";
connectAttr "RightShoulder_Control_translateX.o" "SquaddieRN.phl[164]";
connectAttr "RightShoulder_Control_translateY.o" "SquaddieRN.phl[165]";
connectAttr "RightShoulder_Control_translateZ.o" "SquaddieRN.phl[166]";
connectAttr "RightShoulder_Control_scaleX.o" "SquaddieRN.phl[167]";
connectAttr "RightShoulder_Control_scaleY.o" "SquaddieRN.phl[168]";
connectAttr "RightShoulder_Control_scaleZ.o" "SquaddieRN.phl[169]";
connectAttr "Neck_Control_rotateX.o" "SquaddieRN.phl[170]";
connectAttr "Neck_Control_rotateY.o" "SquaddieRN.phl[171]";
connectAttr "Neck_Control_rotateZ.o" "SquaddieRN.phl[172]";
connectAttr "Neck_Control_visibility.o" "SquaddieRN.phl[173]";
connectAttr "Neck_Control_translateX.o" "SquaddieRN.phl[174]";
connectAttr "Neck_Control_translateY.o" "SquaddieRN.phl[175]";
connectAttr "Neck_Control_translateZ.o" "SquaddieRN.phl[176]";
connectAttr "Neck_Control_scaleX.o" "SquaddieRN.phl[177]";
connectAttr "Neck_Control_scaleY.o" "SquaddieRN.phl[178]";
connectAttr "Neck_Control_scaleZ.o" "SquaddieRN.phl[179]";
connectAttr "Head_Control_rotateX.o" "SquaddieRN.phl[180]";
connectAttr "Head_Control_rotateY.o" "SquaddieRN.phl[181]";
connectAttr "Head_Control_rotateZ.o" "SquaddieRN.phl[182]";
connectAttr "Head_Control_visibility.o" "SquaddieRN.phl[183]";
connectAttr "Head_Control_translateX.o" "SquaddieRN.phl[184]";
connectAttr "Head_Control_translateY.o" "SquaddieRN.phl[185]";
connectAttr "Head_Control_translateZ.o" "SquaddieRN.phl[186]";
connectAttr "Head_Control_scaleX.o" "SquaddieRN.phl[187]";
connectAttr "Head_Control_scaleY.o" "SquaddieRN.phl[188]";
connectAttr "Head_Control_scaleZ.o" "SquaddieRN.phl[189]";
connectAttr "LeftShoulder_Control_rotateX.o" "SquaddieRN.phl[190]";
connectAttr "LeftShoulder_Control_rotateY.o" "SquaddieRN.phl[191]";
connectAttr "LeftShoulder_Control_rotateZ.o" "SquaddieRN.phl[192]";
connectAttr "LeftShoulder_Control_visibility.o" "SquaddieRN.phl[193]";
connectAttr "LeftShoulder_Control_translateX.o" "SquaddieRN.phl[194]";
connectAttr "LeftShoulder_Control_translateY.o" "SquaddieRN.phl[195]";
connectAttr "LeftShoulder_Control_translateZ.o" "SquaddieRN.phl[196]";
connectAttr "LeftShoulder_Control_scaleX.o" "SquaddieRN.phl[197]";
connectAttr "LeftShoulder_Control_scaleY.o" "SquaddieRN.phl[198]";
connectAttr "LeftShoulder_Control_scaleZ.o" "SquaddieRN.phl[199]";
connectAttr "RightElbow_Control_translateX.o" "SquaddieRN.phl[200]";
connectAttr "RightElbow_Control_translateY.o" "SquaddieRN.phl[201]";
connectAttr "RightElbow_Control_translateZ.o" "SquaddieRN.phl[202]";
connectAttr "RightElbow_Control_visibility.o" "SquaddieRN.phl[203]";
connectAttr "RightElbow_Control_rotateX.o" "SquaddieRN.phl[204]";
connectAttr "RightElbow_Control_rotateY.o" "SquaddieRN.phl[205]";
connectAttr "RightElbow_Control_rotateZ.o" "SquaddieRN.phl[206]";
connectAttr "RightElbow_Control_scaleX.o" "SquaddieRN.phl[207]";
connectAttr "RightElbow_Control_scaleY.o" "SquaddieRN.phl[208]";
connectAttr "RightElbow_Control_scaleZ.o" "SquaddieRN.phl[209]";
connectAttr "LeftElbow_Control_translateX.o" "SquaddieRN.phl[210]";
connectAttr "LeftElbow_Control_translateY.o" "SquaddieRN.phl[211]";
connectAttr "LeftElbow_Control_translateZ.o" "SquaddieRN.phl[212]";
connectAttr "LeftElbow_Control_visibility.o" "SquaddieRN.phl[213]";
connectAttr "LeftElbow_Control_rotateX.o" "SquaddieRN.phl[214]";
connectAttr "LeftElbow_Control_rotateY.o" "SquaddieRN.phl[215]";
connectAttr "LeftElbow_Control_rotateZ.o" "SquaddieRN.phl[216]";
connectAttr "LeftElbow_Control_scaleX.o" "SquaddieRN.phl[217]";
connectAttr "LeftElbow_Control_scaleY.o" "SquaddieRN.phl[218]";
connectAttr "LeftElbow_Control_scaleZ.o" "SquaddieRN.phl[219]";
connectAttr "RightArmTwist_Control_visibility.o" "SquaddieRN.phl[220]";
connectAttr "RightArmTwist_Control_translateX.o" "SquaddieRN.phl[221]";
connectAttr "RightArmTwist_Control_translateY.o" "SquaddieRN.phl[222]";
connectAttr "RightArmTwist_Control_translateZ.o" "SquaddieRN.phl[223]";
connectAttr "RightArmTwist_Control_rotateX.o" "SquaddieRN.phl[224]";
connectAttr "RightArmTwist_Control_rotateY.o" "SquaddieRN.phl[225]";
connectAttr "RightArmTwist_Control_rotateZ.o" "SquaddieRN.phl[226]";
connectAttr "RightArmTwist_Control_scaleX.o" "SquaddieRN.phl[227]";
connectAttr "RightArmTwist_Control_scaleY.o" "SquaddieRN.phl[228]";
connectAttr "RightArmTwist_Control_scaleZ.o" "SquaddieRN.phl[229]";
connectAttr "LeftArmTwist_Control_visibility.o" "SquaddieRN.phl[230]";
connectAttr "LeftArmTwist_Control_translateX.o" "SquaddieRN.phl[231]";
connectAttr "LeftArmTwist_Control_translateY.o" "SquaddieRN.phl[232]";
connectAttr "LeftArmTwist_Control_translateZ.o" "SquaddieRN.phl[233]";
connectAttr "LeftArmTwist_Control_rotateX.o" "SquaddieRN.phl[234]";
connectAttr "LeftArmTwist_Control_rotateY.o" "SquaddieRN.phl[235]";
connectAttr "LeftArmTwist_Control_rotateZ.o" "SquaddieRN.phl[236]";
connectAttr "LeftArmTwist_Control_scaleX.o" "SquaddieRN.phl[237]";
connectAttr "LeftArmTwist_Control_scaleY.o" "SquaddieRN.phl[238]";
connectAttr "LeftArmTwist_Control_scaleZ.o" "SquaddieRN.phl[239]";
connectAttr "RightHand_Control_rotateX.o" "SquaddieRN.phl[240]";
connectAttr "RightHand_Control_rotateY.o" "SquaddieRN.phl[241]";
connectAttr "RightHand_Control_rotateZ.o" "SquaddieRN.phl[242]";
connectAttr "RightHand_Control_visibility.o" "SquaddieRN.phl[243]";
connectAttr "RightHand_Control_translateX.o" "SquaddieRN.phl[244]";
connectAttr "RightHand_Control_translateY.o" "SquaddieRN.phl[245]";
connectAttr "RightHand_Control_translateZ.o" "SquaddieRN.phl[246]";
connectAttr "RightHand_Control_scaleX.o" "SquaddieRN.phl[247]";
connectAttr "RightHand_Control_scaleY.o" "SquaddieRN.phl[248]";
connectAttr "RightHand_Control_scaleZ.o" "SquaddieRN.phl[249]";
connectAttr "RightFinders_Control_Grip.o" "SquaddieRN.phl[250]";
connectAttr "RightFinders_Control_visibility.o" "SquaddieRN.phl[251]";
connectAttr "RightFinders_Control_translateX.o" "SquaddieRN.phl[252]";
connectAttr "RightFinders_Control_translateY.o" "SquaddieRN.phl[253]";
connectAttr "RightFinders_Control_translateZ.o" "SquaddieRN.phl[254]";
connectAttr "RightFinders_Control_rotateX.o" "SquaddieRN.phl[255]";
connectAttr "RightFinders_Control_rotateY.o" "SquaddieRN.phl[256]";
connectAttr "RightFinders_Control_rotateZ.o" "SquaddieRN.phl[257]";
connectAttr "RightFinders_Control_scaleX.o" "SquaddieRN.phl[258]";
connectAttr "RightFinders_Control_scaleY.o" "SquaddieRN.phl[259]";
connectAttr "RightFinders_Control_scaleZ.o" "SquaddieRN.phl[260]";
connectAttr "LeftHand_Control_rotateX.o" "SquaddieRN.phl[261]";
connectAttr "LeftHand_Control_rotateY.o" "SquaddieRN.phl[262]";
connectAttr "LeftHand_Control_rotateZ.o" "SquaddieRN.phl[263]";
connectAttr "LeftHand_Control_visibility.o" "SquaddieRN.phl[264]";
connectAttr "LeftHand_Control_translateX.o" "SquaddieRN.phl[265]";
connectAttr "LeftHand_Control_translateY.o" "SquaddieRN.phl[266]";
connectAttr "LeftHand_Control_translateZ.o" "SquaddieRN.phl[267]";
connectAttr "LeftHand_Control_scaleX.o" "SquaddieRN.phl[268]";
connectAttr "LeftHand_Control_scaleY.o" "SquaddieRN.phl[269]";
connectAttr "LeftHand_Control_scaleZ.o" "SquaddieRN.phl[270]";
connectAttr "LeftFingers_Control_Grip.o" "SquaddieRN.phl[271]";
connectAttr "LeftFingers_Control_visibility.o" "SquaddieRN.phl[272]";
connectAttr "LeftFingers_Control_translateX.o" "SquaddieRN.phl[273]";
connectAttr "LeftFingers_Control_translateY.o" "SquaddieRN.phl[274]";
connectAttr "LeftFingers_Control_translateZ.o" "SquaddieRN.phl[275]";
connectAttr "LeftFingers_Control_rotateX.o" "SquaddieRN.phl[276]";
connectAttr "LeftFingers_Control_rotateY.o" "SquaddieRN.phl[277]";
connectAttr "LeftFingers_Control_rotateZ.o" "SquaddieRN.phl[278]";
connectAttr "LeftFingers_Control_scaleX.o" "SquaddieRN.phl[279]";
connectAttr "LeftFingers_Control_scaleY.o" "SquaddieRN.phl[280]";
connectAttr "LeftFingers_Control_scaleZ.o" "SquaddieRN.phl[281]";
connectAttr "LeftHip_Control_translateX.o" "SquaddieRN.phl[282]";
connectAttr "LeftHip_Control_translateY.o" "SquaddieRN.phl[283]";
connectAttr "LeftHip_Control_translateZ.o" "SquaddieRN.phl[284]";
connectAttr "LeftHip_Control_visibility.o" "SquaddieRN.phl[285]";
connectAttr "LeftHip_Control_rotateX.o" "SquaddieRN.phl[286]";
connectAttr "LeftHip_Control_rotateY.o" "SquaddieRN.phl[287]";
connectAttr "LeftHip_Control_rotateZ.o" "SquaddieRN.phl[288]";
connectAttr "LeftHip_Control_scaleX.o" "SquaddieRN.phl[289]";
connectAttr "LeftHip_Control_scaleY.o" "SquaddieRN.phl[290]";
connectAttr "LeftHip_Control_scaleZ.o" "SquaddieRN.phl[291]";
connectAttr "RightHip_Control_translateX.o" "SquaddieRN.phl[292]";
connectAttr "RightHip_Control_translateY.o" "SquaddieRN.phl[293]";
connectAttr "RightHip_Control_translateZ.o" "SquaddieRN.phl[294]";
connectAttr "RightHip_Control_visibility.o" "SquaddieRN.phl[295]";
connectAttr "RightHip_Control_rotateX.o" "SquaddieRN.phl[296]";
connectAttr "RightHip_Control_rotateY.o" "SquaddieRN.phl[297]";
connectAttr "RightHip_Control_rotateZ.o" "SquaddieRN.phl[298]";
connectAttr "RightHip_Control_scaleX.o" "SquaddieRN.phl[299]";
connectAttr "RightHip_Control_scaleY.o" "SquaddieRN.phl[300]";
connectAttr "RightHip_Control_scaleZ.o" "SquaddieRN.phl[301]";
connectAttr "RightFoot_Control_rotateX.o" "SquaddieRN.phl[302]";
connectAttr "RightFoot_Control_rotateY.o" "SquaddieRN.phl[303]";
connectAttr "RightFoot_Control_rotateZ.o" "SquaddieRN.phl[304]";
connectAttr "RightFoot_Control_visibility.o" "SquaddieRN.phl[305]";
connectAttr "RightFoot_Control_translateX.o" "SquaddieRN.phl[306]";
connectAttr "RightFoot_Control_translateY.o" "SquaddieRN.phl[307]";
connectAttr "RightFoot_Control_translateZ.o" "SquaddieRN.phl[308]";
connectAttr "RightFoot_Control_scaleX.o" "SquaddieRN.phl[309]";
connectAttr "RightFoot_Control_scaleY.o" "SquaddieRN.phl[310]";
connectAttr "RightFoot_Control_scaleZ.o" "SquaddieRN.phl[311]";
connectAttr "RightToes_Control_rotateX.o" "SquaddieRN.phl[312]";
connectAttr "RightToes_Control_rotateY.o" "SquaddieRN.phl[313]";
connectAttr "RightToes_Control_rotateZ.o" "SquaddieRN.phl[314]";
connectAttr "RightToes_Control_visibility.o" "SquaddieRN.phl[315]";
connectAttr "RightToes_Control_translateX.o" "SquaddieRN.phl[316]";
connectAttr "RightToes_Control_translateY.o" "SquaddieRN.phl[317]";
connectAttr "RightToes_Control_translateZ.o" "SquaddieRN.phl[318]";
connectAttr "RightToes_Control_scaleX.o" "SquaddieRN.phl[319]";
connectAttr "RightToes_Control_scaleY.o" "SquaddieRN.phl[320]";
connectAttr "RightToes_Control_scaleZ.o" "SquaddieRN.phl[321]";
connectAttr "RightKnee_Control_translateX.o" "SquaddieRN.phl[322]";
connectAttr "RightKnee_Control_translateY.o" "SquaddieRN.phl[323]";
connectAttr "RightKnee_Control_translateZ.o" "SquaddieRN.phl[324]";
connectAttr "RightKnee_Control_visibility.o" "SquaddieRN.phl[325]";
connectAttr "RightKnee_Control_rotateX.o" "SquaddieRN.phl[326]";
connectAttr "RightKnee_Control_rotateY.o" "SquaddieRN.phl[327]";
connectAttr "RightKnee_Control_rotateZ.o" "SquaddieRN.phl[328]";
connectAttr "RightKnee_Control_scaleX.o" "SquaddieRN.phl[329]";
connectAttr "RightKnee_Control_scaleY.o" "SquaddieRN.phl[330]";
connectAttr "RightKnee_Control_scaleZ.o" "SquaddieRN.phl[331]";
connectAttr "LeftFoot_Control_rotateX.o" "SquaddieRN.phl[332]";
connectAttr "LeftFoot_Control_rotateY.o" "SquaddieRN.phl[333]";
connectAttr "LeftFoot_Control_rotateZ.o" "SquaddieRN.phl[334]";
connectAttr "LeftFoot_Control_visibility.o" "SquaddieRN.phl[335]";
connectAttr "LeftFoot_Control_translateX.o" "SquaddieRN.phl[336]";
connectAttr "LeftFoot_Control_translateY.o" "SquaddieRN.phl[337]";
connectAttr "LeftFoot_Control_translateZ.o" "SquaddieRN.phl[338]";
connectAttr "LeftFoot_Control_scaleX.o" "SquaddieRN.phl[339]";
connectAttr "LeftFoot_Control_scaleY.o" "SquaddieRN.phl[340]";
connectAttr "LeftFoot_Control_scaleZ.o" "SquaddieRN.phl[341]";
connectAttr "LeftToes_Control_rotateX.o" "SquaddieRN.phl[342]";
connectAttr "LeftToes_Control_rotateY.o" "SquaddieRN.phl[343]";
connectAttr "LeftToes_Control_rotateZ.o" "SquaddieRN.phl[344]";
connectAttr "LeftToes_Control_visibility.o" "SquaddieRN.phl[345]";
connectAttr "LeftToes_Control_translateX.o" "SquaddieRN.phl[346]";
connectAttr "LeftToes_Control_translateY.o" "SquaddieRN.phl[347]";
connectAttr "LeftToes_Control_translateZ.o" "SquaddieRN.phl[348]";
connectAttr "LeftToes_Control_scaleX.o" "SquaddieRN.phl[349]";
connectAttr "LeftToes_Control_scaleY.o" "SquaddieRN.phl[350]";
connectAttr "LeftToes_Control_scaleZ.o" "SquaddieRN.phl[351]";
connectAttr "LeftKnee_Control_translateX.o" "SquaddieRN.phl[352]";
connectAttr "LeftKnee_Control_translateY.o" "SquaddieRN.phl[353]";
connectAttr "LeftKnee_Control_translateZ.o" "SquaddieRN.phl[354]";
connectAttr "LeftKnee_Control_visibility.o" "SquaddieRN.phl[355]";
connectAttr "LeftKnee_Control_rotateX.o" "SquaddieRN.phl[356]";
connectAttr "LeftKnee_Control_rotateY.o" "SquaddieRN.phl[357]";
connectAttr "LeftKnee_Control_rotateZ.o" "SquaddieRN.phl[358]";
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
connectAttr "pointLight2_rotateX.o" "pointLight2.rx";
connectAttr "pointLight2_rotateY.o" "pointLight2.ry";
connectAttr "pointLight2_rotateZ.o" "pointLight2.rz";
connectAttr "pointLight2_visibility.o" "pointLight2.v";
connectAttr "pointLight2_translateX.o" "pointLight2.tx";
connectAttr "pointLight2_translateY.o" "pointLight2.ty";
connectAttr "pointLight2_translateZ.o" "pointLight2.tz";
connectAttr "pointLight2_scaleX.o" "pointLight2.sx";
connectAttr "pointLight2_scaleY.o" "pointLight2.sy";
connectAttr "pointLight2_scaleZ.o" "pointLight2.sz";
connectAttr "Extras.di" "ambientLight1.do";
connectAttr "Extras.di" "pPlane1.do";
connectAttr "polyTweakUV1.out" "pPlaneShape1.i";
connectAttr "polyTweakUV1.uvtk[0]" "pPlaneShape1.uvst[0].uvtw";
connectAttr "Extras.di" "pCube1.do";
connectAttr "polyCube1.out" "pCubeShape1.i";
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
connectAttr "sharedReferenceNode.sr" "MkIIRN.sr";
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "MatGround.msg" ":defaultShaderList1.s" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "pointLightShape1.ltd" ":lightList1.l" -na;
connectAttr "pointLightShape2.ltd" ":lightList1.l" -na;
connectAttr "ambientLightShape1.ltd" ":lightList1.l" -na;
connectAttr "checker1.msg" ":defaultTextureList1.tx" -na;
connectAttr "pCubeShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pointLight1.iog" ":defaultLightSet.dsm" -na;
connectAttr "pointLight2.iog" ":defaultLightSet.dsm" -na;
connectAttr "ambientLight1.iog" ":defaultLightSet.dsm" -na;
// End of SideArm_Cover.ma
