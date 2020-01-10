//Maya ASCII 2020 scene
//Name: NoWeapon_Moving.ma
//Last modified: Thu, Jan 09, 2020 09:47:13 AM
//Codeset: UTF-8
file -rdi 1 -ns "Squaddie" -rfn "SquaddieRN" -op "v=0;" -typ "mayaAscii" "/Users/briancollins/Unity/DropZone/ArtSource/Squaddie/Squaddie.ma";
file -r -ns "Squaddie" -dr 1 -rfn "SquaddieRN" -op "v=0;" -typ "mayaAscii" "/Users/briancollins/Unity/DropZone/ArtSource/Squaddie/Squaddie.ma";
requires maya "2020";
requires -nodeType "gameFbxExporter" "gameFbxExporter" "1.0";
requires "mtoa" "4.0.0";
requires "stereoCamera" "10.0";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2020";
fileInfo "version" "2020";
fileInfo "cutIdentifier" "201911140446-42a737a01c";
fileInfo "osv" "Mac OS X 10.14.6";
fileInfo "UUID" "DC96DAC3-CD48-B99D-FDB9-6CBF24A5B2B1";
createNode transform -s -n "persp";
	rename -uid "ABF7CAC9-7042-CBE0-D916-39910278FA3A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 536.27776429798394 485.77363928018275 494.11026784295819 ;
	setAttr ".r" -type "double3" -25.538352729450082 46.199999999985423 -2.2976132695763479e-15 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "3D0D0238-014B-4FD1-30CB-E49DEC31D45C";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 802.05068832161123;
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
	setAttr ".t" -type "double3" -0.35493246559992997 160.04717379508097 1007.1877429358186 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "D0DAF76B-E346-383C-FA2E-C381E30429C3";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 978.4676464756194;
	setAttr ".ow" 467.53758759879219;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".tp" -type "double3" -0.35493246559992997 160.04717379508097 28.720096460199251 ;
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "5FB9A50F-DB45-7576-8515-A49B66C8A97E";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 41.449406579534582 5.3471398152740566 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "08154BA9-9047-3AB2-A5DF-B195E1B656F3";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 501.20100110186962;
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
createNode lightLinker -s -n "lightLinker1";
	rename -uid "2BDF33E1-BF48-6462-AB18-EBA8EBF5A02A";
	setAttr -s 7 ".lnk";
	setAttr -s 7 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "4BF27D34-2E47-BA4A-67D3-E080FF6B71BA";
	setAttr ".cdl" 1;
	setAttr -s 2 ".dli[1]"  1;
	setAttr -s 2 ".dli";
createNode displayLayer -n "defaultLayer";
	rename -uid "3AFC2083-B947-F7A2-A1CF-8784DD7FE6BE";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "9B496A30-064C-9C7F-ADFC-F9B6A03FB0FA";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "4F4A93B8-5947-7084-81A2-88B3C2992DDC";
	setAttr ".g" yes;
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "F5B022CD-2347-383F-E810-5EBEBFBF7021";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "430627EE-EC42-9B5E-8CF4-9DADED80E6F2";
createNode reference -n "SquaddieRN";
	rename -uid "92FD56F0-1847-D578-2DAF-D49FE59C6074";
	setAttr -s 272 ".phl";
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
		"SquaddieRN" 608
		2 "|Squaddie:Root_Control" "visibility" " -av 1"
		2 "|Squaddie:Root_Control" "translate" " -type \"double3\" 0 0 0"
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
		"translate" " -type \"double3\" 0 -10.3620136832785299 13.74141169909105109"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control" 
		"translateX" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control" 
		"translateY" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control" 
		"translateZ" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control" 
		"rotate" " -type \"double3\" 12.13148503845054194 -19.79010357637784878 -4.40157192602050351"
		
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
		"rotate" " -type \"double3\" 2.2069294108355435 8.30097652071127712 1.34286740756292589"
		
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
		"rotate" " -type \"double3\" 2.2069294108355435 8.30097652071127712 1.34286740756292589"
		
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
		"rotate" " -type \"double3\" -32.24642258296367459 4.50621916816344648 -2.16181092567135114"
		
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
		"translate" " -type \"double3\" 0 0 0"
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
		"translate" " -type \"double3\" 33.45757034195681712 -10.85885423622121237 17.7828777517563168"
		
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightHand_Control" 
		"translateX" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightHand_Control" 
		"translateY" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightHand_Control" 
		"translateZ" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightHand_Control" 
		"rotate" " -type \"double3\" -27.13207363005151151 55.78873927910978381 26.82281695474745931"
		
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
		"Grip" " -k 1"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightHand_Control|Squaddie:ikHandle4" 
		"translate" " -type \"double3\" -72.3335999999999899 118.84599999999998943 4.76709999999999745"
		
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightHand_Control|Squaddie:ikHandle4" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftHand_Control" 
		"visibility" " -av 1"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftHand_Control" 
		"translate" " -type \"double3\" -39.26739717998193413 -19.26660776160799315 -22.35159755339926946"
		
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftHand_Control" 
		"translateX" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftHand_Control" 
		"translateY" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftHand_Control" 
		"translateZ" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftHand_Control" 
		"rotate" " -type \"double3\" -1.46853741966265061 27.90237014831347295 -54.51197365036268394"
		
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
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftHand_Control|Squaddie:LeftFingers_Control" 
		"Grip" " -k 1"
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
		
		2 "|Squaddie:Root_Control|Squaddie:RightFoot_Control" "translate" " -type \"double3\" 4.77787727272485263 13.76190846961560865 -17.6869835646631941"
		
		2 "|Squaddie:Root_Control|Squaddie:RightFoot_Control" "translateX" " -av"
		
		2 "|Squaddie:Root_Control|Squaddie:RightFoot_Control" "translateY" " -av"
		
		2 "|Squaddie:Root_Control|Squaddie:RightFoot_Control" "translateZ" " -av"
		
		2 "|Squaddie:Root_Control|Squaddie:RightFoot_Control" "rotate" " -type \"double3\" 53.04300768971823032 -12.98870423127196538 0"
		
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
		"rotate" " -type \"double3\" 8.18213517434831417 0 0"
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
		
		2 "|Squaddie:Root_Control|Squaddie:LeftFoot_Control" "translate" " -type \"double3\" -1.53009256969084717 1.09799500404786365 24.74437778235008523"
		
		2 "|Squaddie:Root_Control|Squaddie:LeftFoot_Control" "translateX" " -av"
		2 "|Squaddie:Root_Control|Squaddie:LeftFoot_Control" "translateY" " -av"
		2 "|Squaddie:Root_Control|Squaddie:LeftFoot_Control" "translateZ" " -av"
		2 "|Squaddie:Root_Control|Squaddie:LeftFoot_Control" "rotate" " -type \"double3\" 7.83517108836812248 3.04051834864313442 0"
		
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
		"rotate" " -type \"double3\" 0 0 0"
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
		
		2 "|Squaddie:SkeletonGroup|Squaddie:Attach_RootMotion|Squaddie:Hips_Skel|Squaddie:Spine1_Skel|Squaddie:Spine2_Skel|Squaddie:LeftClav_Skel|Squaddie:LeftUpperArm_Skel" 
		"translate" " -type \"double3\" 14.91457674267715028 4.70347938627342899 -0.41150061501065444"
		
		2 "|Squaddie:SkeletonGroup|Squaddie:Attach_RootMotion|Squaddie:Hips_Skel|Squaddie:Spine1_Skel|Squaddie:Spine2_Skel|Squaddie:LeftClav_Skel|Squaddie:LeftUpperArm_Skel" 
		"translateX" " -av"
		2 "|Squaddie:SkeletonGroup|Squaddie:Attach_RootMotion|Squaddie:Hips_Skel|Squaddie:Spine1_Skel|Squaddie:Spine2_Skel|Squaddie:LeftClav_Skel|Squaddie:LeftUpperArm_Skel" 
		"translateY" " -av"
		2 "|Squaddie:SkeletonGroup|Squaddie:Attach_RootMotion|Squaddie:Hips_Skel|Squaddie:Spine1_Skel|Squaddie:Spine2_Skel|Squaddie:LeftClav_Skel|Squaddie:LeftUpperArm_Skel" 
		"translateZ" " -av"
		2 "|Squaddie:SkeletonGroup|Squaddie:Attach_RootMotion|Squaddie:Hips_Skel|Squaddie:Spine1_Skel|Squaddie:Spine2_Skel|Squaddie:LeftClav_Skel|Squaddie:LeftUpperArm_Skel" 
		"rotate" " -type \"double3\" 46.00471576720450173 3.09309385640315826 44.48627866880526938"
		
		2 "|Squaddie:SkeletonGroup|Squaddie:Attach_RootMotion|Squaddie:Hips_Skel|Squaddie:Spine1_Skel|Squaddie:Spine2_Skel|Squaddie:LeftClav_Skel|Squaddie:LeftUpperArm_Skel|Squaddie:LeftLowerArm_Skel" 
		"rotate" " -type \"double3\" 0 -25.97731415015190137 0"
		2 "|Squaddie:SkeletonGroup|Squaddie:Attach_RootMotion|Squaddie:Hips_Skel|Squaddie:Spine1_Skel|Squaddie:Spine2_Skel|Squaddie:RightClav_Skel|Squaddie:RightUpperArm_Skel" 
		"translate" " -type \"double3\" -14.91460000000001429 -4.70347648394240281 0.41150087150569448"
		
		2 "|Squaddie:SkeletonGroup|Squaddie:Attach_RootMotion|Squaddie:Hips_Skel|Squaddie:Spine1_Skel|Squaddie:Spine2_Skel|Squaddie:RightClav_Skel|Squaddie:RightUpperArm_Skel" 
		"translateX" " -av"
		2 "|Squaddie:SkeletonGroup|Squaddie:Attach_RootMotion|Squaddie:Hips_Skel|Squaddie:Spine1_Skel|Squaddie:Spine2_Skel|Squaddie:RightClav_Skel|Squaddie:RightUpperArm_Skel" 
		"translateY" " -av"
		2 "|Squaddie:SkeletonGroup|Squaddie:Attach_RootMotion|Squaddie:Hips_Skel|Squaddie:Spine1_Skel|Squaddie:Spine2_Skel|Squaddie:RightClav_Skel|Squaddie:RightUpperArm_Skel" 
		"translateZ" " -av"
		2 "|Squaddie:SkeletonGroup|Squaddie:Attach_RootMotion|Squaddie:Hips_Skel|Squaddie:Spine1_Skel|Squaddie:Spine2_Skel|Squaddie:RightClav_Skel|Squaddie:RightUpperArm_Skel" 
		"rotate" " -type \"double3\" 30.34513255917237373 -13.18066695283800982 6.85939770278009853"
		
		2 "|Squaddie:SkeletonGroup|Squaddie:Attach_RootMotion|Squaddie:Hips_Skel|Squaddie:Spine1_Skel|Squaddie:Spine2_Skel|Squaddie:RightClav_Skel|Squaddie:RightUpperArm_Skel|Squaddie:RightLowerArm_Skel" 
		"rotate" " -type \"double3\" -0.0012048384602690203 -31.50091383641161968 0.0010414889346859186"
		
		2 "|Squaddie:SkeletonGroup|Squaddie:Attach_RootMotion|Squaddie:Hips_Skel|Squaddie:LeftUpperLeg_Skel" 
		"translate" " -type \"double3\" 19.81883811950683949 1.35854452727749098 -7.39106094254955792"
		
		2 "|Squaddie:SkeletonGroup|Squaddie:Attach_RootMotion|Squaddie:Hips_Skel|Squaddie:LeftUpperLeg_Skel" 
		"translateX" " -av"
		2 "|Squaddie:SkeletonGroup|Squaddie:Attach_RootMotion|Squaddie:Hips_Skel|Squaddie:LeftUpperLeg_Skel" 
		"translateY" " -av"
		2 "|Squaddie:SkeletonGroup|Squaddie:Attach_RootMotion|Squaddie:Hips_Skel|Squaddie:LeftUpperLeg_Skel" 
		"translateZ" " -av"
		2 "|Squaddie:SkeletonGroup|Squaddie:Attach_RootMotion|Squaddie:Hips_Skel|Squaddie:LeftUpperLeg_Skel" 
		"rotate" " -type \"double3\" -42.29129002640203083 -0.40939277231183513 -23.03489637246858734"
		
		2 "|Squaddie:SkeletonGroup|Squaddie:Attach_RootMotion|Squaddie:Hips_Skel|Squaddie:LeftUpperLeg_Skel|Squaddie:LeftLowerLeg_Skel" 
		"rotate" " -type \"double3\" 56.55766880144979325 0 0"
		2 "|Squaddie:SkeletonGroup|Squaddie:Attach_RootMotion|Squaddie:Hips_Skel|Squaddie:RightUpperLeg_Skel" 
		"translate" " -type \"double3\" -19.81879997253417969 1.35854880205052342 -7.39109886124329307"
		
		2 "|Squaddie:SkeletonGroup|Squaddie:Attach_RootMotion|Squaddie:Hips_Skel|Squaddie:RightUpperLeg_Skel" 
		"translateX" " -av"
		2 "|Squaddie:SkeletonGroup|Squaddie:Attach_RootMotion|Squaddie:Hips_Skel|Squaddie:RightUpperLeg_Skel" 
		"translateY" " -av"
		2 "|Squaddie:SkeletonGroup|Squaddie:Attach_RootMotion|Squaddie:Hips_Skel|Squaddie:RightUpperLeg_Skel" 
		"translateZ" " -av"
		2 "|Squaddie:SkeletonGroup|Squaddie:Attach_RootMotion|Squaddie:Hips_Skel|Squaddie:RightUpperLeg_Skel" 
		"rotate" " -type \"double3\" -18.41799194597474809 -0.23419806643403052 8.40376317516831506"
		
		2 "|Squaddie:SkeletonGroup|Squaddie:Attach_RootMotion|Squaddie:Hips_Skel|Squaddie:RightUpperLeg_Skel|Squaddie:RightLowerLeg_Skel" 
		"rotate" " -type \"double3\" 64.04343413166957077 0 0"
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
		"SquaddieRN.placeHolderList[361]" "";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "91E4ACE4-CA41-A658-3640-FD848DB2ED7C";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n"
		+ "            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n"
		+ "            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 669\n            -height 327\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 0\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n"
		+ "            -width 669\n            -height 326\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -editorChanged \"CgAbBlastPanelOptChangeCallback\" \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n"
		+ "            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n"
		+ "            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n"
		+ "            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 669\n            -height 326\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n"
		+ "            -editorChanged \"CgAbBlastPanelOptChangeCallback\" \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"all\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 0\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 1\n            -captureSequenceNumber -1\n            -width 1345\n            -height 697\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 1\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 0\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n"
		+ "            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n"
		+ "            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n"
		+ "            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n"
		+ "            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n"
		+ "                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n"
		+ "                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n"
		+ "                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -valueLinesToggle 0\n                -outliner \"graphEditor1OutlineEd\" \n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n"
		+ "                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n"
		+ "                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n"
		+ "                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n"
		+ "                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n"
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
		+ "            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n"
		+ "            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n"
		+ "            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -docTag \\\"RADRENDER\\\" \\n    -editorChanged \\\"CgAbBlastPanelOptChangeCallback\\\" \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"all\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 1\\n    -captureSequenceNumber -1\\n    -width 1345\\n    -height 697\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -docTag \\\"RADRENDER\\\" \\n    -editorChanged \\\"CgAbBlastPanelOptChangeCallback\\\" \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"all\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 1\\n    -captureSequenceNumber -1\\n    -width 1345\\n    -height 697\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 10 -size 300 -divisions 4 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "13DDF64F-D04D-50F4-4B9E-45896DBE9B63";
	setAttr ".b" -type "string" "playbackOptions -min 10 -max 119 -ast 0 -aet 200 ";
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
	setAttr ".ac[1].acn" -type "string" "Chase";
	setAttr ".ac[1].acs" 40;
	setAttr ".ac[1].ace" 56;
	setAttr ".ac[2].acn" -type "string" "Creep";
	setAttr ".ac[2].acs" 65;
	setAttr ".ac[2].ace" 89;
	setAttr ".ac[3].acn" -type "string" "Walk";
	setAttr ".ac[3].acs" 95;
	setAttr ".ac[3].ace" 119;
	setAttr ".ic" no;
	setAttr ".fv" -type "string" "FBX201800";
	setAttr ".exp" -type "string" "/Users/briancollins/Unity/DropZone/Assets/DropZone/Characters/Squaddie";
	setAttr ".exf" -type "string" "NoWeapon_Moving.fbx";
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
	setAttr -s 23 ".ktv[0:22]"  0 0 5 0 10 0 15 0 22 0 26 0 30 0 35 0 40 0
		 45 0 52 0 56 0 60 0 65 0 70 0 85 0 89 0 94 0 95 0 100 0 105 0 107 0 119 0;
	setAttr -s 23 ".kit[11:22]"  1 1 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 23 ".kot[8:22]"  1 18 18 18 1 18 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 23 ".kix[11:22]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".kiy[11:22]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 23 ".kox[8:22]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".koy[8:22]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Root_Control_translateY";
	rename -uid "9BF2FBE1-2343-400C-7437-828943140C40";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 0 5 0 10 0 15 0 22 0 26 0 30 0 35 0 40 0
		 45 0 52 0 56 0 60 0 65 0 70 0 85 0 89 0 94 0 95 0 100 0 105 0 107 0 119 0;
	setAttr -s 23 ".kit[11:22]"  1 1 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 23 ".kot[8:22]"  1 18 18 18 1 18 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 23 ".kix[11:22]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".kiy[11:22]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 23 ".kox[8:22]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".koy[8:22]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Root_Control_translateZ";
	rename -uid "BDE8D69D-E646-2853-AB94-96846000E83B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 0 5 0 10 0 15 0 22 0 26 0 30 0 35 0 40 0
		 45 0 52 0 56 0 60 0 65 0 70 0 85 0 89 0 94 0 95 0 100 0 105 0 107 0 119 0;
	setAttr -s 23 ".kit[11:22]"  1 1 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 23 ".kot[8:22]"  1 18 18 18 1 18 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 23 ".kix[11:22]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".kiy[11:22]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 23 ".kox[8:22]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".koy[8:22]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "LeftFoot_Control_translateX";
	rename -uid "C90A741F-9743-95AB-7812-10806D03686C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 0 5 -7.3555719309904557 10 -7.4030849983288078
		 12 -10.466430514878674 14 -12.317904807300096 18 -13.78505482447434 21 -2.8185391449135793
		 24 -8.4242001705120941 26 -7.4030849983288078 30 0 35 -7.3555719309904557 40 -7.4030849983288078
		 42 -10.466430514878674 44 -12.317904807300096 48 -13.78505482447434 51 -2.8185391449135793
		 54 -8.4242001705120941 56 -7.4030849983288078 60 -2.1607177547532981 65 0 70 -3.1349699566732951
		 77 -8.3341970540484098 85 -2.1607177547532981 89 0 94 -3.1349699566732951 95 -2.1607177547532981
		 100 0 105 -3.1349699566732951 107 -4.8744107439364122 112 -8.3341970540484098 119 -2.1607177547532981;
	setAttr -s 31 ".kit[17:30]"  1 1 18 18 18 18 18 18 
		18 18 18 18 18 18;
	setAttr -s 31 ".kot[11:30]"  1 18 18 18 18 18 18 1 
		18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 31 ".kix[17:30]"  0.029663348621195799 0.059886106007350684 
		1 0.059886106007350684 1 0.059886106007350684 1 1 0.079493218480512412 1 0.059729460822646525 
		0.05601001934431827 1 1;
	setAttr -s 31 ".kiy[17:30]"  0.99955994605054943 0.99820521652978567 
		0 -0.99820521652978578 0 0.99820521652978567 0 0 0.99683540678268923 0 -0.99821460193178702 
		-0.99843020674108673 0 0;
	setAttr -s 31 ".kox[11:30]"  0.82531586015270986 0.033891561808595344 
		0.075119570670979421 1 1 1 0.03988214241438956 0.059886106007350691 1 0.059886106007350684 
		1 0.059886106007350691 1 1 0.079493218480512412 1 0.059729460822646525 0.05601001934431827 
		1 1;
	setAttr -s 31 ".koy[11:30]"  -0.56467134775937833 -0.99942551600315577 
		-0.99717453342040785 0 0 0 0.99920439086126822 0.99820521652978567 0 -0.99820521652978567 
		0 0.99820521652978567 0 0 0.99683540678268934 0 -0.99821460193178702 -0.99843020674108662 
		0 0;
createNode animCurveTL -n "LeftFoot_Control_translateY";
	rename -uid "463216E0-654C-ABA6-174B-22BA901159FB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 -5.6843418860808015e-14 5 5.4261501490096293
		 10 1.5990039482517417 12 6.3960157930069741 14 37.92713881992794 18 35.043424481584708
		 21 23.03123677666516 24 9.5940236895109354 26 1.5990039482517417 30 -5.6843418860808015e-14
		 35 5.4261501490096293 40 1.5990039482517417 42 6.3960157930069741 44 37.92713881992794
		 48 35.043424481584708 51 23.03123677666516 54 9.5940236895109354 56 1.5990039482517417
		 60 13.85803421818183 65 0 70 2.3418301379742981 77 9.5835736427434384 83 18.708346194545431
		 85 13.85803421818183 89 0 94 2.3418301379742981 95 20.192916759989849 98 3.0088650548171998
		 100 0 105 2.3418301379742981 107 4.0785784409950558 112 9.5835736427434384 115 19.546400608273242
		 119 20.192916759989849;
	setAttr -s 34 ".kit[17:33]"  1 1 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18;
	setAttr -s 34 ".kot[11:33]"  1 18 18 18 18 18 18 1 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 34 ".kix[17:33]"  0.034722900096633209 0.013361826807262993 
		1 0.052101742994706893 0.033077916631080465 1 0.013361826807262993 1 0.029640890806604935 
		1 0.010316600064422022 1 0.071329688929103977 0.040243125478897891 0.021545111874284796 
		0.085615140682615748 1;
	setAttr -s 34 ".kiy[17:33]"  -0.99939697828684626 -0.99991072680733495 
		0 0.99864178181013108 0.99945277598861437 0 -0.99991072680733495 0 0.99956061226530479 
		0 -0.99994678246550239 0 0.99745279360843819 0.99918991730886164 0.9997678771366505 
		0.99632828309041588 0;
	setAttr -s 34 ".kox[11:33]"  1 0.0057905448167936352 1 0.019576576896962999 
		0.0098229400559394931 0.0097201021033104292 1 0.013361826807262991 1 0.0521017429947069 
		0.033077916631080465 1 0.013361826807262991 1 0.029640890806604935 1 0.010316600064422022 
		1 0.071329688929103977 0.040243125478897884 0.021545111874284793 0.085615140682615748 
		1;
	setAttr -s 34 ".koy[11:33]"  0 0.99998323465482386 0 -0.99980836045564114 
		-0.99995175376047885 -0.99995275869167999 0 -0.99991072680733484 0 0.99864178181013119 
		0.99945277598861426 0 -0.99991072680733484 0 0.99956061226530479 0 -0.99994678246550239 
		0 0.99745279360843797 0.99918991730886153 0.9997678771366505 0.99632828309041588 
		0;
createNode animCurveTL -n "LeftFoot_Control_translateZ";
	rename -uid "5433778F-CB49-B7B4-B178-0C98411E04DF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 0 5 33.454111130013331 10 19.677079733619664
		 12 -15.350437903216985 14 -55.434436398500516 18 -51.638496358409256 21 -3.2028037484826939
		 24 46.690915288951665 26 19.677079733619664 30 0 35 33.454111130013331 40 19.677079733619664
		 42 -15.350437903216985 44 -55.434436398500516 48 -51.638496358409256 51 -3.2028037484826939
		 54 46.690915288951665 56 19.677079733619664 60 21.8307778884475 65 42.724429478937346
		 70 12.409979626664295 77 -37.865369512951801 85 21.8307778884475 89 42.724429478937346
		 94 12.409979626664295 95 21.8307778884475 98 48.228944293774191 100 42.724429478937346
		 105 12.409979626664295 107 2.6701437928038967 112 -37.865369512951801 115 -9.1384111566056987
		 119 21.8307778884475;
	setAttr -s 33 ".kit[17:32]"  1 1 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18;
	setAttr -s 33 ".kot[11:32]"  1 18 18 18 18 18 18 1 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 33 ".kix[17:32]"  0.0053542839090359321 0.0062041397710911926 
		1 0.0062041397710911926 1 0.0062041397710911926 1 1 0.0046529782203916731 1 0.0081425300912754094 
		0.0072815912019318415 0.0058012875813887397 1 0.0048857957867392589 1;
	setAttr -s 33 ".kiy[17:32]"  -0.99998566571917491 0.99998075413964882 
		0 -0.99998075413964893 0 0.99998075413964882 0 0 0.99998917483824823 0 -0.99996684905236366 
		-0.99997348886336379 -0.99998317238961465 0 0.99998806442853616 0;
	setAttr -s 33 ".kox[11:32]"  0.0059761121477036987 0.0022189174836177066 
		1 0.014633952582995628 0.0025424660617166888 1 1 0.0062041397710911918 1 0.0062041397710911926 
		1 0.0062041397710911918 1 1 0.0046529782203916731 1 0.0081425300912754094 0.0072815912019318415 
		0.0058012875813887397 1 0.0048857957867392589 1;
	setAttr -s 33 ".koy[11:32]"  -0.99998214288236065 -0.99999753819957027 
		0 0.99989291798262003 0.99999676792793946 0 0 0.99998075413964871 0 -0.99998075413964871 
		0 0.99998075413964871 0 0 0.99998917483824823 0 -0.99996684905236355 -0.99997348886336379 
		-0.99998317238961476 0 0.99998806442853616 0;
createNode animCurveTL -n "LeftKnee_Control_translateX";
	rename -uid "3CDF2F9E-1241-A390-30E2-51BC599A6D12";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  0 0 5 0 10 0 15 0 22 0 26 0 30 0 35 0 40 0
		 45 0 52 0 56 0 60 0 65 0 70 0 85 0 89 0 94 0 95 0 100 0 105 0 107 0;
	setAttr -s 22 ".kit[11:21]"  1 1 18 18 18 18 18 18 
		18 18 18;
	setAttr -s 22 ".kot[8:21]"  1 18 18 18 1 18 18 18 
		18 18 18 18 18 18;
	setAttr -s 22 ".kix[11:21]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 22 ".kiy[11:21]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 22 ".kox[8:21]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 22 ".koy[8:21]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "LeftKnee_Control_translateY";
	rename -uid "616C8942-4F49-8720-B217-AEA96EC43C12";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  0 0 5 0 10 0 15 0 22 0 26 0 30 0 35 0 40 0
		 45 0 52 0 56 0 60 0 65 0 70 0 85 0 89 0 94 0 95 0 100 0 105 0 107 0;
	setAttr -s 22 ".kit[11:21]"  1 1 18 18 18 18 18 18 
		18 18 18;
	setAttr -s 22 ".kot[8:21]"  1 18 18 18 1 18 18 18 
		18 18 18 18 18 18;
	setAttr -s 22 ".kix[11:21]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 22 ".kiy[11:21]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 22 ".kox[8:21]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 22 ".koy[8:21]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "LeftKnee_Control_translateZ";
	rename -uid "47D15C4C-824B-2FB0-8A41-EDADF5421CCB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  0 0 5 0 10 0 15 0 22 0 26 0 30 0 35 0 40 0
		 45 0 52 0 56 0 60 0 65 0 70 0 85 0 89 0 94 0 95 0 100 0 105 0 107 0;
	setAttr -s 22 ".kit[11:21]"  1 1 18 18 18 18 18 18 
		18 18 18;
	setAttr -s 22 ".kot[8:21]"  1 18 18 18 1 18 18 18 
		18 18 18 18 18 18;
	setAttr -s 22 ".kix[11:21]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 22 ".kiy[11:21]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 22 ".kox[8:21]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 22 ".koy[8:21]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "LeftToes_Control_translateX";
	rename -uid "09528C22-3544-6316-BC94-D48101A71FDE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 0 5 -0.68359020753485966 10 0 15 0 16 0
		 21 0 24 0 26 0 30 0 35 -0.68359020753485966 40 0 45 0 46 0 51 0 54 0 56 0 60 0 65 0
		 70 0 73 0 85 0 89 0 94 0 95 0 100 0 105 0 107 0 119 0;
	setAttr -s 28 ".kit[15:27]"  1 1 18 18 18 18 18 18 
		18 18 18 18 18;
	setAttr -s 28 ".kot[10:27]"  1 18 18 18 18 18 1 18 
		18 18 18 18 18 18 18 18 18 18;
	setAttr -s 28 ".kix[15:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".kiy[15:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 28 ".kox[10:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".koy[10:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "LeftToes_Control_translateY";
	rename -uid "F299B1FD-9342-E456-3D90-46B83C61946A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 0 5 15.910089285105265 10 0 15 0 16 0
		 21 0 24 0 26 0 30 0 35 15.910089285105265 40 0 45 0 46 0 51 0 54 0 56 0 60 0 65 0
		 70 0 73 0 85 0 89 0 94 0 95 0 100 0 105 0 107 0 119 0;
	setAttr -s 28 ".kit[15:27]"  1 1 18 18 18 18 18 18 
		18 18 18 18 18;
	setAttr -s 28 ".kot[10:27]"  1 18 18 18 18 18 1 18 
		18 18 18 18 18 18 18 18 18 18;
	setAttr -s 28 ".kix[15:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".kiy[15:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 28 ".kox[10:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".koy[10:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "LeftToes_Control_translateZ";
	rename -uid "D26367B3-ED47-8EB9-BE8C-2D8CF6541566";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 0 5 10.191036267786696 10 0 15 0 16 0
		 21 0 24 0 26 0 30 0 35 10.191036267786696 40 0 45 0 46 0 51 0 54 0 56 0 60 0 65 0
		 70 0 73 0 85 0 89 0 94 0 95 0 100 0 105 0 107 0 119 0;
	setAttr -s 28 ".kit[15:27]"  1 1 18 18 18 18 18 18 
		18 18 18 18 18;
	setAttr -s 28 ".kot[10:27]"  1 18 18 18 18 18 1 18 
		18 18 18 18 18 18 18 18 18 18;
	setAttr -s 28 ".kix[15:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".kiy[15:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 28 ".kox[10:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".koy[10:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "RightFoot_Control_translateX";
	rename -uid "9683242C-194B-952D-AB4C-34B4B3D7410F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 0 5 13.905396579254166 10 15.262058761100693
		 13 3.2691917889226474 16 8.2637397753219552 18 7.3260478842009498 22 10.893902402771342
		 26 15.262058761100693 30 0 35 13.905396579254166 40 15.262058761100693 43 3.2691917889226474
		 46 8.2637397753219552 48 7.3260478842009498 52 10.893902402771342 56 15.262058761100693
		 60 7.7742639390431183 65 7.8789033872337875 70 0 77 0 85 7.7742639390431183 89 7.8789033872337875
		 94 0 95 7.7742639390431183 100 7.8789033872337875 107 0 112 0 119 7.7742639390431183;
	setAttr -s 28 ".kit[15:27]"  1 1 18 18 18 18 18 18 
		18 18 18 18 18;
	setAttr -s 28 ".kot[10:27]"  1 18 18 18 18 18 1 18 
		18 18 18 18 18 18 18 18 18 18;
	setAttr -s 28 ".kix[15:27]"  1 0.46893039678365483 1 1 1 0.46893039678365483 
		1 1 0.55296148297587411 1 1 1 1;
	setAttr -s 28 ".kiy[15:27]"  0 0.88323512326691578 0 0 0 0.88323512326691578 
		0 0 0.83320681606976921 0 0 0 0;
	setAttr -s 28 ".kox[10:27]"  1 1 1 1 0.041965628595783296 1 0.46893039678365483 
		1 1 1 0.46893039678365483 1 1 0.55296148297587411 1 1 1 1;
	setAttr -s 28 ".koy[10:27]"  0 0 0 0 0.99911905497621289 0 0.88323512326691578 
		0 0 0 0.88323512326691578 0 0 0.83320681606976921 0 0 0 0;
createNode animCurveTL -n "RightFoot_Control_translateY";
	rename -uid "CEC1AEA9-4749-E93C-6681-8784975D31AA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  0 0 5 21.846010473777774 10 32.299879754685705
		 13 32.524047386388823 16 9.3863067157120703 18 1.599003948252232 20 4.114074112203582
		 22 40.847480672551875 26 32.299879754685705 30 0 35 21.846010473777774 40 32.299879754685705
		 43 32.524047386388823 46 9.3863067157120703 48 1.599003948252232 50 4.114074112203582
		 52 40.847480672551875 56 32.299879754685705 60 4.5387272797237301 65 6.0153515512492266
		 70 29.222167294104199 77 0.31980078965089831 85 4.5387272797237301 89 6.0153515512492266
		 94 29.222167294104199 95 4.5387272797237301 100 6.0153515512492266 107 23.492252068731581
		 112 0.31980078965089831 119 4.5387272797237301;
	setAttr -s 30 ".kit[17:29]"  1 1 18 18 18 18 18 18 
		18 18 18 18 18;
	setAttr -s 30 ".kot[11:29]"  1 18 18 18 18 18 18 1 
		18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 30 ".kix[17:29]"  0.008160166296870941 0.087451488116336296 
		0.046977268520586139 1 1 0.087451488116336296 0.0375967525478655 1 1 0.046977268520586139 
		1 1 1;
	setAttr -s 30 ".kiy[17:29]"  -0.99996670528873466 0.99616877948781268 
		0.99889595866754055 0 0 0.99616877948781268 0.99929299216889056 0 0 0.99889595866754055 
		0 0 0;
	setAttr -s 30 ".kox[11:29]"  0.18274284634388693 1 0.0067365663196241529 
		1 0.011043860382179766 1 0.0091801358095552777 0.087451488116336296 0.046977268520586132 
		1 1 0.087451488116336296 0.0375967525478655 1 1 0.046977268520586139 1 1 1;
	setAttr -s 30 ".koy[11:29]"  0.98316074581430191 0 -0.99997730907967175 
		0 0.99993901471432689 0 -0.99995786166543943 0.99616877948781268 0.99889595866754033 
		0 0 0.99616877948781268 0.99929299216889067 0 0 0.99889595866754044 0 0 0;
createNode animCurveTL -n "RightFoot_Control_translateZ";
	rename -uid "D8B7513C-314C-7E56-6F6C-89AEAB279033";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 0 5 -42.164135556740888 10 -51.168126344056596
		 13 -2.3101110539077609 16 46.614072574620806 18 19.827648958321937 22 -50.767982648745225
		 26 -51.168126344056596 30 0 35 -42.164135556740888 40 -51.168126344056596 43 -2.3101110539077609
		 46 46.614072574620806 48 19.827648958321937 52 -50.767982648745225 56 -51.168126344056596
		 60 -24.680069890042219 65 -37.146025945092845 70 11.93534293651259 77 41.84476909854456
		 85 -24.680069890042219 89 -37.146025945092845 94 11.93534293651259 95 0.23099308810661512
		 100 -37.146025945092845 107 24.581812813454903 112 41.84476909854456 119 0.23099308810661512;
	setAttr -s 28 ".kit[15:27]"  1 1 18 18 18 18 18 18 
		18 18 18 18 18;
	setAttr -s 28 ".kot[10:27]"  1 18 18 18 18 18 1 18 
		18 18 18 18 18 18 18 18 18 18;
	setAttr -s 28 ".kix[15:27]"  1 0.0063297246631063816 1 0.0063297246631063824 
		1 0.0063297246631063816 1 1 0.0050935163930198261 1 0.0063297246631063807 1 1;
	setAttr -s 28 ".kiy[15:27]"  0 -0.99997996709218595 0 0.99997996709218606 
		0 -0.99997996709218595 0 0 -0.99998702796124006 0 0.99997996709218595 0 0;
	setAttr -s 28 ".kox[10:27]"  1 0.0025566942212141715 1 0.002567199630475804 
		0.1375199036400363 1 0.0063297246631063816 1 0.0063297246631063807 1 0.0063297246631063816 
		1 1 0.0050935163930198261 1 0.0063297246631063816 1 1;
	setAttr -s 28 ".koy[10:27]"  0 0.99999673165198855 0 -0.99999670473759938 
		-0.99049900358497844 0 -0.99997996709218595 0 0.99997996709218595 0 -0.99997996709218595 
		0 0 -0.99998702796124006 0 0.99997996709218606 0 0;
createNode animCurveTL -n "RightKnee_Control_translateX";
	rename -uid "4F3A8F61-5244-AF66-2202-91957AEE4AB1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 10 0 26 0 30 0 40 0 56 0 60 0 65 0 70 0
		 85 0 89 0 94 0 95 0 100 0 105 0 107 0 119 0;
	setAttr -s 17 ".kit[2:16]"  1 18 18 1 1 18 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 17 ".kot[2:16]"  1 18 1 1 1 18 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 17 ".kix[2:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[2:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[2:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[2:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "RightKnee_Control_translateY";
	rename -uid "1DC84F6E-CB49-94A5-A739-C6A04BE2CBBB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 10 0 26 0 30 0 40 0 56 0 60 0 65 0 70 0
		 85 0 89 0 94 0 95 0 100 0 105 0 107 0 119 0;
	setAttr -s 17 ".kit[2:16]"  1 18 18 1 1 18 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 17 ".kot[2:16]"  1 18 1 1 1 18 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 17 ".kix[2:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[2:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[2:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[2:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "RightKnee_Control_translateZ";
	rename -uid "7E99C7FD-3746-8F89-A426-A3A6B98A50FB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 10 0 26 0 30 0 40 0 56 0 60 0 65 0 70 0
		 85 0 89 0 94 0 95 0 100 0 105 0 107 0 119 0;
	setAttr -s 17 ".kit[2:16]"  1 18 18 1 1 18 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 17 ".kot[2:16]"  1 18 1 1 1 18 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 17 ".kix[2:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[2:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[2:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[2:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "RightToes_Control_translateX";
	rename -uid "23A30692-C845-534A-6F80-B9BD7E37F4ED";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 0 5 0 10 0 18 0 22 0 26 0 30 0 35 0 40 0
		 48 0 52 0 56 0 60 0 65 0 70 0 85 0 89 0 94 0 95 0 100 0 105 0 107 0 119 0;
	setAttr -s 23 ".kit[2:22]"  1 18 18 18 18 18 1 18 
		18 1 1 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 23 ".kot[2:22]"  1 18 18 18 18 18 1 18 
		18 18 1 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 23 ".kix[2:22]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1;
	setAttr -s 23 ".kiy[2:22]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0;
	setAttr -s 23 ".kox[2:22]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1;
	setAttr -s 23 ".koy[2:22]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0;
createNode animCurveTL -n "RightToes_Control_translateY";
	rename -uid "9BFFC7CC-0C44-693F-58B1-A088101616A6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 0 5 0 10 0 18 0 22 0 26 0 30 0 35 0 40 0
		 48 0 52 0 56 0 60 0 65 0 70 0 85 0 89 0 94 0 95 0 100 0 105 0 107 0 119 0;
	setAttr -s 23 ".kit[2:22]"  1 18 18 18 18 18 1 18 
		18 1 1 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 23 ".kot[2:22]"  1 18 18 18 18 18 1 18 
		18 18 1 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 23 ".kix[2:22]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1;
	setAttr -s 23 ".kiy[2:22]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0;
	setAttr -s 23 ".kox[2:22]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1;
	setAttr -s 23 ".koy[2:22]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0;
createNode animCurveTL -n "RightToes_Control_translateZ";
	rename -uid "C539CEAB-AB45-5DF5-8B9C-2B8A31A00235";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 0 5 0 10 0 18 0 22 0 26 0 30 0 35 0 40 0
		 48 0 52 0 56 0 60 0 65 0 70 0 85 0 89 0 94 0 95 0 100 0 105 0 107 0 119 0;
	setAttr -s 23 ".kit[2:22]"  1 18 18 18 18 18 1 18 
		18 1 1 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 23 ".kot[2:22]"  1 18 18 18 18 18 1 18 
		18 18 1 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 23 ".kix[2:22]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1;
	setAttr -s 23 ".kiy[2:22]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0;
	setAttr -s 23 ".kox[2:22]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1;
	setAttr -s 23 ".koy[2:22]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0;
createNode animCurveTL -n "RootMotion_Control_translateX";
	rename -uid "DADEDED9-9946-4B6A-E07F-0EB1EA73C8E9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 0 5 0 10 0 15 0 22 0 26 0 30 0 35 0 40 0
		 45 0 52 0 56 0 60 0 65 0 70 0 85 0 89 0 94 0 95 0 100 0 105 0 107 0 119 0;
	setAttr -s 23 ".kit[11:22]"  1 1 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 23 ".kot[8:22]"  1 18 18 18 1 18 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 23 ".kix[11:22]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".kiy[11:22]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 23 ".kox[8:22]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".koy[8:22]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "RootMotion_Control_translateY";
	rename -uid "64467B36-234D-45DE-CEE8-E097A15D8809";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 0 5 0 10 0 15 0 22 0 26 0 30 0 35 0 40 0
		 45 0 52 0 56 0 60 0 65 0 70 0 85 0 89 0 94 0 95 0 100 0 105 0 107 0 119 0;
	setAttr -s 23 ".kit[11:22]"  1 1 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 23 ".kot[8:22]"  1 18 18 18 1 18 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 23 ".kix[11:22]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".kiy[11:22]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 23 ".kox[8:22]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".koy[8:22]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "RootMotion_Control_translateZ";
	rename -uid "642B0782-A54F-8CA9-1A1B-4F8F8AB5914B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 0 5 0 10 0 15 0 22 0 26 0 30 0 35 0 40 0
		 45 0 52 0 56 0 60 0 65 0 70 0 85 0 89 0 94 0 95 0 100 0 105 0 107 0 119 0;
	setAttr -s 23 ".kit[11:22]"  1 1 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 23 ".kot[8:22]"  1 18 18 18 1 18 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 23 ".kix[11:22]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".kiy[11:22]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 23 ".kox[8:22]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".koy[8:22]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "LeftHip_Control_translateX";
	rename -uid "35B82229-474F-8851-8026-EF924A4425D4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 0 5 0 10 0 15 0 22 0 26 0 30 0 35 0 40 0
		 45 0 52 0 56 0 60 0 65 0 70 0 85 0 89 0 94 0 95 0 100 0 105 0 107 0 119 0;
	setAttr -s 23 ".kit[11:22]"  1 1 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 23 ".kot[8:22]"  1 18 18 18 1 18 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 23 ".kix[11:22]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".kiy[11:22]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 23 ".kox[8:22]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".koy[8:22]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "LeftHip_Control_translateY";
	rename -uid "8831FFFA-A84A-2C2B-B878-D29D99141757";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 0 5 0 10 0 15 0 22 0 26 0 30 0 35 0 40 0
		 45 0 52 0 56 0 60 0 65 0 70 0 85 0 89 0 94 0 95 0 100 0 105 0 107 0 119 0;
	setAttr -s 23 ".kit[11:22]"  1 1 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 23 ".kot[8:22]"  1 18 18 18 1 18 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 23 ".kix[11:22]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".kiy[11:22]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 23 ".kox[8:22]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".koy[8:22]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "LeftHip_Control_translateZ";
	rename -uid "BC1892EC-B046-F049-CAB5-11B37C24AC17";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 0 5 0 10 0 15 0 22 0 26 0 30 0 35 0 40 0
		 45 0 52 0 56 0 60 0 65 0 70 0 85 0 89 0 94 0 95 0 100 0 105 0 107 0 119 0;
	setAttr -s 23 ".kit[11:22]"  1 1 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 23 ".kot[8:22]"  1 18 18 18 1 18 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 23 ".kix[11:22]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".kiy[11:22]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 23 ".kox[8:22]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".koy[8:22]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "RightHip_Control_translateX";
	rename -uid "6DB31350-CC41-B927-05C3-A4B5871EC575";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 0 5 0 10 0 15 0 22 0 26 0 30 0 35 0 40 0
		 45 0 52 0 56 0 60 0 65 0 70 0 85 0 89 0 94 0 95 0 100 0 105 0 107 0 119 0;
	setAttr -s 23 ".kit[11:22]"  1 1 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 23 ".kot[8:22]"  1 18 18 18 1 18 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 23 ".kix[11:22]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".kiy[11:22]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 23 ".kox[8:22]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".koy[8:22]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "RightHip_Control_translateY";
	rename -uid "0C40B26E-184F-98E3-5866-6EA12F6139B1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 0 5 0 10 0 15 0 22 0 26 0 30 0 35 0 40 0
		 45 0 52 0 56 0 60 0 65 0 70 0 85 0 89 0 94 0 95 0 100 0 105 0 107 0 119 0;
	setAttr -s 23 ".kit[11:22]"  1 1 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 23 ".kot[8:22]"  1 18 18 18 1 18 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 23 ".kix[11:22]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".kiy[11:22]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 23 ".kox[8:22]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".koy[8:22]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "RightHip_Control_translateZ";
	rename -uid "DADB5A16-0342-592B-E67C-B5A750AEB080";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 0 5 0 10 0 15 0 22 0 26 0 30 0 35 0 40 0
		 45 0 52 0 56 0 60 0 65 0 70 0 85 0 89 0 94 0 95 0 100 0 105 0 107 0 119 0;
	setAttr -s 23 ".kit[11:22]"  1 1 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 23 ".kot[8:22]"  1 18 18 18 1 18 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 23 ".kix[11:22]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".kiy[11:22]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 23 ".kox[8:22]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".koy[8:22]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Spine1_Control_translateX";
	rename -uid "2DD0DD8B-3241-98A3-F812-D78A8E5CB13E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  0 0 5 0 10 0 15 0 16 0 22 0 26 0 30 0 35 0
		 40 0 45 0 46 0 52 0 56 0 60 0 65 0 70 0 77 0 85 0 89 0 94 0 95 0 107 0 119 0;
	setAttr -s 24 ".kit[13:23]"  1 1 18 18 18 18 18 18 
		18 18 18;
	setAttr -s 24 ".kot[9:23]"  1 18 18 18 18 1 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 24 ".kix[13:23]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 24 ".kiy[13:23]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 24 ".kox[9:23]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 24 ".koy[9:23]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Spine1_Control_translateY";
	rename -uid "DA057B97-5C43-85B5-FCBC-17A88D80D0FE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  0 0 5 0 10 0 15 0 16 0 22 0 26 0 30 0 35 0
		 40 0 45 0 46 0 52 0 56 0 60 0 65 0 70 0 77 0 85 0 89 0 94 0 95 0 107 0 119 0;
	setAttr -s 24 ".kit[13:23]"  1 1 18 18 18 18 18 18 
		18 18 18;
	setAttr -s 24 ".kot[9:23]"  1 18 18 18 18 1 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 24 ".kix[13:23]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 24 ".kiy[13:23]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 24 ".kox[9:23]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 24 ".koy[9:23]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Spine1_Control_translateZ";
	rename -uid "BB442EDD-8242-F1E0-CEAC-B680371FDC82";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  0 0 5 0 10 0 15 0 16 0 22 0 26 0 30 0 35 0
		 40 0 45 0 46 0 52 0 56 0 60 0 65 0 70 0 77 0 85 0 89 0 94 0 95 0 107 0 119 0;
	setAttr -s 24 ".kit[13:23]"  1 1 18 18 18 18 18 18 
		18 18 18;
	setAttr -s 24 ".kot[9:23]"  1 18 18 18 18 1 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 24 ".kix[13:23]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 24 ".kiy[13:23]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 24 ".kox[9:23]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 24 ".koy[9:23]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Spine2_Control_translateX";
	rename -uid "4AC76D31-304D-0B7E-0F65-AF9FE2818EC9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  0 0 5 0 10 0 18 0 26 0 30 0 35 0 40 0 48 0
		 56 0 60 0 65 0 70 0 77 0 85 0 89 0 94 0 95 0 107 0 119 0;
	setAttr -s 20 ".kit[9:19]"  1 1 18 18 18 18 18 18 
		18 18 18;
	setAttr -s 20 ".kot[7:19]"  1 18 18 1 18 18 18 18 
		18 18 18 18 18;
	setAttr -s 20 ".kix[9:19]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 20 ".kiy[9:19]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 20 ".kox[7:19]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 20 ".koy[7:19]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Spine2_Control_translateY";
	rename -uid "25AE75C2-5E4E-7B07-3D69-2E9E6C72D8CC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  0 0 5 0 10 0 18 0 26 0 30 0 35 0 40 0 48 0
		 56 0 60 0 65 0 70 0 77 0 85 0 89 0 94 0 95 0 107 0 119 0;
	setAttr -s 20 ".kit[9:19]"  1 1 18 18 18 18 18 18 
		18 18 18;
	setAttr -s 20 ".kot[7:19]"  1 18 18 1 18 18 18 18 
		18 18 18 18 18;
	setAttr -s 20 ".kix[9:19]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 20 ".kiy[9:19]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 20 ".kox[7:19]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 20 ".koy[7:19]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Spine2_Control_translateZ";
	rename -uid "1756674A-1141-2A49-89DE-769E62962E6D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  0 0 5 0 10 0 18 0 26 0 30 0 35 0 40 0 48 0
		 56 0 60 0 65 0 70 0 77 0 85 0 89 0 94 0 95 0 107 0 119 0;
	setAttr -s 20 ".kit[9:19]"  1 1 18 18 18 18 18 18 
		18 18 18;
	setAttr -s 20 ".kot[7:19]"  1 18 18 1 18 18 18 18 
		18 18 18 18 18;
	setAttr -s 20 ".kix[9:19]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 20 ".kiy[9:19]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 20 ".kox[7:19]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 20 ".koy[7:19]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "LeftArmTwist_Control_translateX";
	rename -uid "99EFE83C-604C-DE41-7A1E-43A0C02B09D7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 0 5 0 10 0 15 0 22 0 26 0 30 0 35 0 40 0
		 45 0 52 0 56 0 60 0 65 0 70 0 85 0 89 0 94 0 95 0 100 0 105 0 107 0 119 0;
	setAttr -s 23 ".kit[11:22]"  1 1 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 23 ".kot[8:22]"  1 18 18 18 1 18 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 23 ".kix[11:22]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".kiy[11:22]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 23 ".kox[8:22]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".koy[8:22]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "LeftArmTwist_Control_translateY";
	rename -uid "A4B64441-634F-5C5B-AB96-F4803A569887";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 0 5 0 10 0 15 0 22 0 26 0 30 0 35 0 40 0
		 45 0 52 0 56 0 60 0 65 0 70 0 85 0 89 0 94 0 95 0 100 0 105 0 107 0 119 0;
	setAttr -s 23 ".kit[11:22]"  1 1 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 23 ".kot[8:22]"  1 18 18 18 1 18 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 23 ".kix[11:22]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".kiy[11:22]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 23 ".kox[8:22]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".koy[8:22]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "LeftArmTwist_Control_translateZ";
	rename -uid "C7385032-504B-BDBF-2CA7-5CA3FC9F426A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 0 5 0 10 0 15 0 22 0 26 0 30 0 35 0 40 0
		 45 0 52 0 56 0 60 0 65 0 70 0 85 0 89 0 94 0 95 0 100 0 105 0 107 0 119 0;
	setAttr -s 23 ".kit[11:22]"  1 1 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 23 ".kot[8:22]"  1 18 18 18 1 18 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 23 ".kix[11:22]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".kiy[11:22]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 23 ".kox[8:22]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".koy[8:22]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "LeftShoulder_Control_translateX";
	rename -uid "6DA66B9A-A143-9399-FD44-698962DBEE85";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 0 5 0 10 0 15 0 22 0 26 0 30 0 35 0 40 0
		 45 0 52 0 56 0 60 0 65 0 70 0 85 0 89 0 94 0 95 0 100 0 105 0 107 0 119 0;
	setAttr -s 23 ".kit[11:22]"  1 1 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 23 ".kot[8:22]"  1 18 18 18 1 18 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 23 ".kix[11:22]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".kiy[11:22]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 23 ".kox[8:22]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".koy[8:22]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "LeftShoulder_Control_translateY";
	rename -uid "56A7B604-7049-6B99-ED4F-71B5BD3E1346";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 0 5 0 10 0 15 0 22 0 26 0 30 0 35 0 40 0
		 45 0 52 0 56 0 60 0 65 0 70 0 85 0 89 0 94 0 95 0 100 0 105 0 107 0 119 0;
	setAttr -s 23 ".kit[11:22]"  1 1 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 23 ".kot[8:22]"  1 18 18 18 1 18 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 23 ".kix[11:22]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".kiy[11:22]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 23 ".kox[8:22]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".koy[8:22]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "LeftShoulder_Control_translateZ";
	rename -uid "42C61272-5049-411B-72E1-5086303FE142";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 0 5 0 10 0 15 0 22 0 26 0 30 0 35 0 40 0
		 45 0 52 0 56 0 60 0 65 0 70 0 85 0 89 0 94 0 95 0 100 0 105 0 107 0 119 0;
	setAttr -s 23 ".kit[11:22]"  1 1 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 23 ".kot[8:22]"  1 18 18 18 1 18 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 23 ".kix[11:22]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".kiy[11:22]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 23 ".kox[8:22]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".koy[8:22]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
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
	setAttr -s 19 ".ktv[0:18]"  0 0 5 0 10 0 26 0 30 0 35 0 40 0 56 0 60 0
		 65 0 70 0 85 0 89 0 94 0 95 0 100 0 105 0 107 0 119 0;
	setAttr -s 19 ".kit[7:18]"  1 1 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 19 ".kot[6:18]"  1 18 1 18 18 18 18 18 
		18 18 18 18 18;
	setAttr -s 19 ".kix[7:18]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 19 ".kiy[7:18]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 19 ".kox[6:18]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 19 ".koy[6:18]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Neck_Control_translateY";
	rename -uid "C6A44684-274A-2555-6CA9-7497B64B02CD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 5 0 10 0 26 0 30 0 35 0 40 0 56 0 60 0
		 65 0 70 0 85 0 89 0 94 0 95 0 100 0 105 0 107 0 119 0;
	setAttr -s 19 ".kit[7:18]"  1 1 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 19 ".kot[6:18]"  1 18 1 18 18 18 18 18 
		18 18 18 18 18;
	setAttr -s 19 ".kix[7:18]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 19 ".kiy[7:18]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 19 ".kox[6:18]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 19 ".koy[6:18]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Neck_Control_translateZ";
	rename -uid "1617CF66-5741-C446-3C95-DC986B427C00";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 5 0 10 0 26 0 30 0 35 0 40 0 56 0 60 0
		 65 0 70 0 85 0 89 0 94 0 95 0 100 0 105 0 107 0 119 0;
	setAttr -s 19 ".kit[7:18]"  1 1 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 19 ".kot[6:18]"  1 18 1 18 18 18 18 18 
		18 18 18 18 18;
	setAttr -s 19 ".kix[7:18]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 19 ".kiy[7:18]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 19 ".kox[6:18]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 19 ".koy[6:18]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Head_Control_translateX";
	rename -uid "56B94D56-3044-C77F-C0AF-51B921BC9E35";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 5 0 10 0 26 0 30 0 35 0 40 0 56 0 60 0
		 65 0 70 0 85 0 89 0 94 0 95 0 100 0 107 0 119 0;
	setAttr -s 18 ".kit[7:17]"  1 1 18 18 18 18 18 18 
		18 18 18;
	setAttr -s 18 ".kot[6:17]"  1 18 1 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 18 ".kix[7:17]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 18 ".kiy[7:17]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 18 ".kox[6:17]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 18 ".koy[6:17]"  0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Head_Control_translateY";
	rename -uid "0637CB69-9A43-08C1-690C-5DB0E8CFBF3F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 5 0 10 0 26 0 30 0 35 0 40 0 56 0 60 0
		 65 0 70 0 85 0 89 0 94 0 95 0 100 0 107 0 119 0;
	setAttr -s 18 ".kit[7:17]"  1 1 18 18 18 18 18 18 
		18 18 18;
	setAttr -s 18 ".kot[6:17]"  1 18 1 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 18 ".kix[7:17]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 18 ".kiy[7:17]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 18 ".kox[6:17]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 18 ".koy[6:17]"  0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Head_Control_translateZ";
	rename -uid "C928D8C9-4045-01E3-746C-1FA63DCB8B4F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 5 0 10 0 26 0 30 0 35 0 40 0 56 0 60 0
		 65 0 70 0 85 0 89 0 94 0 95 0 100 0 107 0 119 0;
	setAttr -s 18 ".kit[7:17]"  1 1 18 18 18 18 18 18 
		18 18 18;
	setAttr -s 18 ".kot[6:17]"  1 18 1 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 18 ".kix[7:17]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 18 ".kiy[7:17]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 18 ".kox[6:17]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 18 ".koy[6:17]"  0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "RightArmTwist_Control_translateX";
	rename -uid "57829432-194B-30D7-497B-4785D8C78755";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 0 5 0 10 0 15 0 22 0 26 0 30 0 35 0 40 0
		 45 0 52 0 56 0 60 0 65 0 70 0 85 0 89 0 94 0 95 0 100 0 105 0 107 0 119 0;
	setAttr -s 23 ".kit[11:22]"  1 1 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 23 ".kot[8:22]"  1 18 18 18 1 18 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 23 ".kix[11:22]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".kiy[11:22]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 23 ".kox[8:22]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".koy[8:22]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "RightArmTwist_Control_translateY";
	rename -uid "34868EF5-1748-1EE9-4282-57A21EF704D3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 0 5 0 10 0 15 0 22 0 26 0 30 0 35 0 40 0
		 45 0 52 0 56 0 60 0 65 0 70 0 85 0 89 0 94 0 95 0 100 0 105 0 107 0 119 0;
	setAttr -s 23 ".kit[11:22]"  1 1 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 23 ".kot[8:22]"  1 18 18 18 1 18 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 23 ".kix[11:22]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".kiy[11:22]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 23 ".kox[8:22]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".koy[8:22]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "RightArmTwist_Control_translateZ";
	rename -uid "427554A9-CD49-D414-8C55-06ABDC780D1E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 0 5 0 10 0 15 0 22 0 26 0 30 0 35 0 40 0
		 45 0 52 0 56 0 60 0 65 0 70 0 85 0 89 0 94 0 95 0 100 0 105 0 107 0 119 0;
	setAttr -s 23 ".kit[11:22]"  1 1 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 23 ".kot[8:22]"  1 18 18 18 1 18 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 23 ".kix[11:22]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".kiy[11:22]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 23 ".kox[8:22]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".koy[8:22]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "RightElbow_Control_translateX";
	rename -uid "E18A111A-CB47-B244-783C-71B9B9B10BDD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 -23.293111627547226 5 -23.293111627547226
		 10 -8.2641210367549149 15 -5.742420550181949 22 -1.7944608482578392 26 -8.2641210367549149
		 30 -23.293111627547226 35 -23.293111627547226 40 -24.97999027077288 56 -24.97999027077288
		 60 0 65 0 70 0 85 0 89 0 94 0 95 0 100 0 105 0 107 0 119 0;
	setAttr -s 21 ".kit[2:20]"  1 18 18 18 18 18 1 1 
		1 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 21 ".kot[2:20]"  1 18 18 18 18 18 1 1 
		1 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 21 ".kix[2:20]"  0.015502985617749569 0.077054040610711097 
		1 0.015502985617749569 1 1 0.015502985617749569 0.015502985617749569 1 1 1 1 1 1 
		1 1 1 1 1;
	setAttr -s 21 ".kiy[2:20]"  -0.9998798214970317 0.99702691780390906 
		0 -0.9998798214970317 0 0 -0.9998798214970317 -0.9998798214970317 0 0 0 0 0 0 0 0 
		0 0 0;
	setAttr -s 21 ".kox[2:20]"  0.015502985617749569 0.077054040610711083 
		1 0.015502985617749569 1 1 0.015502985617749569 0.015502985617749569 1 1 1 1 1 1 
		1 1 1 1 1;
	setAttr -s 21 ".koy[2:20]"  -0.9998798214970317 0.99702691780390906 
		0 -0.9998798214970317 0 0 -0.9998798214970317 -0.9998798214970317 0 0 0 0 0 0 0 0 
		0 0 0;
createNode animCurveTL -n "RightElbow_Control_translateY";
	rename -uid "5AC38800-3642-2302-D691-7CBA4E28E2B2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 0 5 0 10 -10.873237335191071 15 -20.815917560740335
		 22 -1.6064667684334801 26 -10.873237335191071 30 0 35 0 40 -9.5468681539572167 56 -9.5468681539572167
		 60 0 65 0 70 0 85 0 89 0 94 0 95 0 100 0 105 0 107 0 119 0;
	setAttr -s 21 ".kit[2:20]"  1 18 18 18 18 18 1 1 
		1 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 21 ".kot[2:20]"  1 18 18 18 18 18 1 1 
		1 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 21 ".kix[2:20]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 21 ".kiy[2:20]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 21 ".kox[2:20]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 21 ".koy[2:20]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "RightElbow_Control_translateZ";
	rename -uid "EDC633C5-944B-9363-7EC3-45A9570699F9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 12.588214453850696 5 12.588214453850696
		 10 -0.76722000687766501 15 -15.893740440528532 22 10.780180376112959 26 -0.76722000687766501
		 30 12.588214453850696 35 12.588214453850696 40 90.224754852584581 56 90.224754852584581
		 60 0 65 0 70 0 85 0 89 0 94 0 95 0 100 0 105 0 107 0 119 0;
	setAttr -s 21 ".kit[2:20]"  1 18 18 18 18 18 1 1 
		1 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 21 ".kot[2:20]"  1 18 18 18 18 18 1 1 
		1 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 21 ".kix[2:20]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 21 ".kiy[2:20]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 21 ".kox[2:20]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 21 ".koy[2:20]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "RightHand_Control_translateX";
	rename -uid "5ED98B6F-DC47-D2B0-2166-CA8F91BED5D7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 50.677976288897156 5 50.677976288897156
		 10 43.558075461073287 14 33.524249946289899 17 34.515952458385918 23 52.368389978878035
		 26 43.558075461073287 30 50.677976288897156 35 50.677976288897156 40 43.735748022583621
		 42 50.207029201111972 45 49.442927487612266 49 47.175194607138181 52 54.055245681177858
		 56 43.735748022583621 60 27.118039530618905 65 28.352828669531682 70 26.044548174726582
		 77 23.11996094675014 83 26.162576559721288 85 27.118039530618905 89 28.352828669531682
		 94 26.044548174726582 95 37.629506750756313 101 31.997392598876971 107 37.629506750756313
		 113 35.392834500236205 119 37.629506750756313;
	setAttr -s 28 ".kit[2:27]"  1 18 18 18 1 18 18 1 
		18 18 18 18 1 1 18 18 18 18 18 18 18 18 18 18 18 
		1;
	setAttr -s 28 ".kot[2:27]"  1 18 18 18 1 18 18 1 
		18 18 18 18 1 1 18 18 18 18 18 18 18 18 18 18 18 
		1;
	setAttr -s 28 ".kix[2:27]"  1 1 0.041978252570273024 1 1 1 1 1 1 0.095759286800053869 
		1 1 1 0.11340575291461409 1 0.095116691482198187 1 0.083085114814783895 0.11340575291461409 
		1 1 1 1 1 1 1;
	setAttr -s 28 ".kiy[2:27]"  0 0 0.99911852465618223 0 0 0 0 0 0 -0.99540452027883863 
		0 0 0 0.99354875834347933 0 -0.99546612950992974 0 0.99654245453779555 0.99354875834347933 
		0 0 0 0 0 0 0;
	setAttr -s 28 ".kox[2:27]"  1 1 0.041978252570273024 1 1 1 1 1 1 0.095759286800053869 
		1 1 1 0.11340575291461409 1 0.095116691482198187 1 0.083085114814783881 0.11340575291461409 
		1 1 1 1 1 1 1;
	setAttr -s 28 ".koy[2:27]"  0 0 0.99911852465618223 0 0 0 0 0 0 -0.99540452027883863 
		0 0 0 0.99354875834347933 0 -0.99546612950992974 0 0.99654245453779544 0.99354875834347933 
		0 0 0 0 0 0 0;
createNode animCurveTL -n "RightHand_Control_translateY";
	rename -uid "43EBE580-0949-4663-0902-E0B7252FCC1F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 15.767231135209656 5 15.767231135209656
		 10 12.598178702965903 14 -9.8344676641169997 17 1.0734105738002544 23 33.290310886032948
		 26 12.598178702965903 30 15.767231135209656 35 15.767231135209656 40 63.608762294871411
		 42 60.062092968409061 45 60.480868792670648 49 58.597387458938726 52 65.376655874069314
		 56 63.608762294871411 60 36.948968140582053 65 35.419403125583543 70 26.07278128396042
		 77 23.798208521082106 83 37.484315895831529 85 36.948968140582053 89 35.419403125583543
		 94 26.07278128396042 95 -19.266146486348788 101 -8.0206566876142471 107 -19.266146486348788
		 113 -19.613995616141231 119 -19.266146486348788;
	setAttr -s 28 ".kit[2:27]"  1 18 18 18 1 18 18 1 
		18 18 18 18 1 1 18 18 18 18 18 18 18 18 18 18 18 
		1;
	setAttr -s 28 ".kot[2:27]"  1 18 18 18 1 18 18 1 
		18 18 18 18 1 1 18 18 18 18 18 18 18 18 18 18 18 
		1;
	setAttr -s 28 ".kix[2:27]"  1 1 0.0086953680823787152 1 1 1 1 1 1 1 
		1 1 1 0.12019279735542208 0.045354713037985252 0.042985069467936517 1 1 0.12019279735542208 
		0.036297212652065342 0.0074296926650561333 1 1 0.23297520669471358 1 1;
	setAttr -s 28 ".kiy[2:27]"  0 0 0.99996219457233082 0 0 0 0 0 0 0 0 
		0 0 -0.99275056860415767 -0.9989709455260658 -0.9990757147498065 0 0 -0.99275056860415767 
		-0.99934103906208649 -0.99997239945255623 0 0 -0.97248267494364948 0 0;
	setAttr -s 28 ".kox[2:27]"  1 1 0.0086953680823787152 1 1 1 1 1 1 1 
		1 1 1 0.1201927973554221 0.045354713037985252 0.04298506946793651 1 1 0.1201927973554221 
		0.036297212652065348 0.0074296926650561333 1 1 0.23297520669471358 1 1;
	setAttr -s 28 ".koy[2:27]"  0 0 0.99996219457233082 0 0 0 0 0 0 0 0 
		0 0 -0.99275056860415767 -0.9989709455260658 -0.9990757147498065 0 0 -0.99275056860415767 
		-0.99934103906208649 -0.99997239945255623 0 0 -0.97248267494364948 0 0;
createNode animCurveTL -n "RightHand_Control_translateZ";
	rename -uid "008F5F67-2344-9067-35A4-2AA4CB36D552";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 21.096401822016219 5 21.096401822016219
		 10 20.062114920971819 14 -14.571469038321615 17 -5.1397716386146923 23 21.328266545149283
		 26 20.062114920971819 30 21.096401822016219 35 21.096401822016219 40 39.973772470822411
		 42 40.711687942078967 45 40.624557981187159 49 43.147382303597965 52 36.295686844186747
		 56 39.973772470822411 60 25.787719520877541 65 35.338382955764537 70 31.281267523916046
		 77 15.68388812888492 83 20.479537835979169 85 25.787719520877541 89 35.338382955764537
		 94 31.281267523916046 95 8.9675367286232053 101 18.901542279619413 107 8.9675367286232053
		 113 -20.432554325052386 119 8.9675367286232053;
	setAttr -s 28 ".kit[2:27]"  1 18 18 18 1 18 18 1 
		18 18 18 18 1 1 18 18 18 18 18 18 18 18 18 18 18 
		1;
	setAttr -s 28 ".kot[2:27]"  1 18 18 18 1 18 18 1 
		18 18 18 18 1 1 18 18 18 18 18 18 18 18 18 18 18 
		1;
	setAttr -s 28 ".kix[2:27]"  1 1 0.010445189545979065 1 1 1 1 1 1 1 
		1 1 1 0.016822614438550685 1 0.025431245686404681 1 0.032972846605900226 0.016822614438550685 
		1 0.017114197235644599 1 1 0.012710590854886508 1 1;
	setAttr -s 28 ".kiy[2:27]"  0 0 0.99994544751968772 0 0 0 0 0 0 0 0 
		0 0 0.99985848980915881 0 -0.99967657356909079 0 0.99945624786015708 0.99985848980915881 
		0 -0.99985354140142924 0 0 -0.99991921717712762 0 0;
	setAttr -s 28 ".kox[2:27]"  1 1 0.010445189545979065 1 1 1 1 1 1 1 
		1 1 1 0.016822614438550685 1 0.025431245686404681 1 0.032972846605900226 0.016822614438550685 
		1 0.017114197235644602 1 1 0.012710590854886508 1 1;
	setAttr -s 28 ".koy[2:27]"  0 0 0.99994544751968772 0 0 0 0 0 0 0 0 
		0 0 0.99985848980915892 0 -0.99967657356909068 0 0.99945624786015708 0.99985848980915892 
		0 -0.99985354140142924 0 0 -0.99991921717712762 0 0;
createNode animCurveTL -n "RightShoulder_Control_translateX";
	rename -uid "7FAEF233-C94C-A12D-0952-7FAAB77AF703";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 0 5 0 10 0 15 0 22 0 26 0 30 0 35 0 40 0
		 45 0 52 0 56 0 60 0 65 0 70 0 85 0 89 0 94 0 95 0 100 0 105 0 107 0 119 0;
	setAttr -s 23 ".kit[11:22]"  1 1 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 23 ".kot[8:22]"  1 18 18 18 1 18 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 23 ".kix[11:22]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".kiy[11:22]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 23 ".kox[8:22]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".koy[8:22]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "RightShoulder_Control_translateY";
	rename -uid "71C700F1-E24B-1978-C325-BAB703FD359D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 0 5 0 10 0 15 0 22 0 26 0 30 0 35 0 40 0
		 45 0 52 0 56 0 60 0 65 0 70 0 85 0 89 0 94 0 95 0 100 0 105 0 107 0 119 0;
	setAttr -s 23 ".kit[11:22]"  1 1 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 23 ".kot[8:22]"  1 18 18 18 1 18 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 23 ".kix[11:22]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".kiy[11:22]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 23 ".kox[8:22]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".koy[8:22]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "RightShoulder_Control_translateZ";
	rename -uid "368FD4FA-BA48-DC12-D9AF-E4AD09F42B25";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 0 5 0 10 0 15 0 22 0 26 0 30 0 35 0 40 0
		 45 0 52 0 56 0 60 0 65 0 70 0 85 0 89 0 94 0 95 0 100 0 105 0 107 0 119 0;
	setAttr -s 23 ".kit[11:22]"  1 1 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 23 ".kot[8:22]"  1 18 18 18 1 18 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 23 ".kix[11:22]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".kiy[11:22]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 23 ".kox[8:22]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".koy[8:22]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
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
createNode animCurveTU -n "Head_Control_visibility";
	rename -uid "DECA8991-0A4E-D2BE-DB50-198DD5875DBD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 1 5 1 10 1 26 1 30 1 35 1 40 1 56 1 60 1
		 65 1 70 1 85 1 89 1 94 1 95 1 100 1 107 1 119 1;
	setAttr -s 18 ".kit[7:17]"  1 1 18 18 18 18 18 18 
		18 18 18;
	setAttr -s 18 ".kot[6:17]"  1 18 5 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 18 ".kix[7:17]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 18 ".kiy[7:17]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 18 ".kox[6:17]"  1 1 0 1 1 1 1 1 1 1 1 1;
	setAttr -s 18 ".koy[6:17]"  0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Head_Control_rotateX";
	rename -uid "51796712-894F-D398-9014-BDB42E1714DB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  0 0 5 0 10 -17.407046943141982 14 -20.813208772474717
		 18 -15.708748892198342 22 -22.289502563902488 26 -17.21970164182709 30 0 35 0 40 -17.407046943141982
		 44 -20.813208772474717 48 -15.708748892198342 52 -22.289502563902488 56 -17.21970164182709
		 60 -25.49357516321659 65 -25.49357516321659 70 -25.49357516321659 85 -25.49357516321659
		 89 -25.49357516321659 94 -25.49357516321659 95 -31.357417931007792 100 -32.9063698283775
		 107 -31.229614975214968 119 -31.58745910291627;
	setAttr -s 24 ".kit[13:23]"  1 1 18 18 18 18 18 18 
		18 18 18;
	setAttr -s 24 ".kot[9:23]"  1 18 18 18 18 1 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 24 ".kix[13:23]"  0.65065988252192164 1 1 1 1 1 1 0.93187706637523982 
		1 1 1;
	setAttr -s 24 ".kiy[13:23]"  0.75936928913181589 0 0 0 0 0 0 -0.36277421788748587 
		0 0 0;
	setAttr -s 24 ".kox[9:23]"  0.71826150005662215 1 1 1 1 1 1 1 1 1 1 
		0.9318770663752397 1 1 1;
	setAttr -s 24 ".koy[9:23]"  -0.69577325152409464 0 0 0 0 0 0 0 0 0 
		0 -0.36277421788748582 0 0 0;
createNode animCurveTA -n "Head_Control_rotateY";
	rename -uid "9B5ECD5C-1B48-CC2A-0E6C-1FBC4DA1177A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  0 0 5 0 10 2.4848083448933731e-17 14 -1.3654595287959792
		 18 -1.4788365379131672 22 4.6025141309346065 26 0.062659147366654552 30 0 35 0 40 2.4848083448933731e-17
		 44 -1.3654595287959792 48 -1.4788365379131672 52 4.6025141309346065 56 0.062659147366654552
		 60 0 65 0 70 0 85 0 89 0 94 0 95 5.8516825021353185 100 4.4733141449939362 107 4.6763175179659333
		 119 5.6886380167299464;
	setAttr -s 24 ".kit[13:23]"  1 1 18 18 18 18 18 18 
		18 18 18;
	setAttr -s 24 ".kot[9:23]"  1 18 18 18 18 1 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 24 ".kix[13:23]"  0.99980630762783085 1 1 1 1 1 1 1 1 0.99964125130883408 
		1;
	setAttr -s 24 ".kiy[13:23]"  -0.019681138879736482 0 0 0 0 0 0 0 0 0.026783739128589844 
		0;
	setAttr -s 24 ".kox[9:23]"  1 0.99936626637793358 1 1 0.99980630762783085 
		1 1 1 1 1 1 1 1 0.99964125130883419 1;
	setAttr -s 24 ".koy[9:23]"  0 -0.035595865291195829 0 0 -0.019681138879736514 
		0 0 0 0 0 0 0 0 0.026783739128589851 0;
createNode animCurveTA -n "Head_Control_rotateZ";
	rename -uid "BA538599-C549-004E-317D-10A499C204FC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  0 0.84821139040032134 5 0.84821139040032134
		 10 0.84821139040032578 14 1.6999721482092414 18 3.6220447716883233 22 0.1078207003385485
		 26 0.81909953298352878 30 0.84821139040032134 35 0.84821139040032134 40 0.84821139040032578
		 44 1.6999721482092414 48 3.6220447716883233 52 0.1078207003385485 56 0.81909953298352878
		 60 0 65 0 70 0 85 0 89 0 94 0 95 -0.088134888501106304 100 -4.0196869892901663 107 0.70069441679317768
		 119 0.63666572756727891;
	setAttr -s 24 ".kit[13:23]"  1 1 18 18 18 18 18 18 
		18 18 18;
	setAttr -s 24 ".kot[9:23]"  1 18 18 18 18 1 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 24 ".kix[13:23]"  0.99995818016289006 1 1 1 1 1 1 0.99392267680473034 
		1 1 1;
	setAttr -s 24 ".kiy[13:23]"  0.0091453772651123554 0 0 0 0 0 0 -0.11008048207252474 
		0 0 0;
	setAttr -s 24 ".kox[9:23]"  1 0.98961700135381625 1 1 1 1 1 1 1 1 1 
		0.99392267680473034 1 1 1;
	setAttr -s 24 ".koy[9:23]"  0 0.14372957465838682 0 0 0 0 0 0 0 0 0 
		-0.11008048207252474 0 0 0;
createNode animCurveTU -n "Head_Control_scaleX";
	rename -uid "15789E17-1E44-6453-B477-8C9E216BC885";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 1 5 1 10 1 26 1 30 1 35 1 40 1 56 1 60 1
		 65 1 70 1 85 1 89 1 94 1 95 1 100 1 107 1 119 1;
	setAttr -s 18 ".kit[7:17]"  1 1 18 18 18 18 18 18 
		18 18 18;
	setAttr -s 18 ".kot[6:17]"  1 18 1 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 18 ".kix[7:17]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 18 ".kiy[7:17]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 18 ".kox[6:17]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 18 ".koy[6:17]"  0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "Head_Control_scaleY";
	rename -uid "4D77B449-6949-416C-BEAE-1EB11BBC0EB0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 1 5 1 10 1 26 1 30 1 35 1 40 1 56 1 60 1
		 65 1 70 1 85 1 89 1 94 1 95 1 100 1 107 1 119 1;
	setAttr -s 18 ".kit[7:17]"  1 1 18 18 18 18 18 18 
		18 18 18;
	setAttr -s 18 ".kot[6:17]"  1 18 1 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 18 ".kix[7:17]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 18 ".kiy[7:17]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 18 ".kox[6:17]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 18 ".koy[6:17]"  0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "Head_Control_scaleZ";
	rename -uid "06885C34-7A47-FC79-B856-0AB8C4A770EC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 1 5 1 10 1 26 1 30 1 35 1 40 1 56 1 60 1
		 65 1 70 1 85 1 89 1 94 1 95 1 100 1 107 1 119 1;
	setAttr -s 18 ".kit[7:17]"  1 1 18 18 18 18 18 18 
		18 18 18;
	setAttr -s 18 ".kot[6:17]"  1 18 1 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 18 ".kix[7:17]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 18 ".kiy[7:17]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 18 ".kox[6:17]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 18 ".koy[6:17]"  0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RightArmTwist_Control_visibility";
	rename -uid "1E216838-9645-6097-C86E-7CA12EEFE74A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 1 5 1 10 1 15 1 22 1 26 1 30 1 35 1 40 1
		 45 1 52 1 56 1 60 1 65 1 70 1 85 1 89 1 94 1 95 1 100 1 105 1 107 1 119 1;
	setAttr -s 23 ".kit[11:22]"  1 1 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 23 ".kot[8:22]"  1 18 18 18 5 18 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 23 ".kix[11:22]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".kiy[11:22]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 23 ".kox[8:22]"  1 1 1 1 0 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".koy[8:22]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RightArmTwist_Control_rotateX";
	rename -uid "7F241D05-6046-013E-AD2E-B1A5D073A031";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 0 5 0 10 0 15 0 22 0 26 0 30 0 35 0 40 0
		 45 0 52 0 56 0 60 0 65 0 70 0 85 0 89 0 94 0 95 0 100 0 105 0 107 0 119 0;
	setAttr -s 23 ".kit[11:22]"  1 1 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 23 ".kot[8:22]"  1 18 18 18 1 18 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 23 ".kix[11:22]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".kiy[11:22]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 23 ".kox[8:22]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".koy[8:22]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RightArmTwist_Control_rotateY";
	rename -uid "DEC01178-424E-BBDD-178E-7C8D38665EA6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 0 5 0 10 0 15 0 22 0 26 0 30 0 35 0 40 0
		 45 0 52 0 56 0 60 0 65 0 70 0 85 0 89 0 94 0 95 0 100 0 105 0 107 0 119 0;
	setAttr -s 23 ".kit[11:22]"  1 1 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 23 ".kot[8:22]"  1 18 18 18 1 18 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 23 ".kix[11:22]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".kiy[11:22]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 23 ".kox[8:22]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".koy[8:22]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RightArmTwist_Control_rotateZ";
	rename -uid "93574063-B74F-E6B7-A3F6-7E8A1EFB2E44";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 0 5 0 10 0 15 0 22 0 26 0 30 0 35 0 40 0
		 45 0 52 0 56 0 60 0 65 0 70 0 85 0 89 0 94 0 95 0 100 0 105 0 107 0 119 0;
	setAttr -s 23 ".kit[11:22]"  1 1 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 23 ".kot[8:22]"  1 18 18 18 1 18 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 23 ".kix[11:22]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".kiy[11:22]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 23 ".kox[8:22]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".koy[8:22]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RightArmTwist_Control_scaleX";
	rename -uid "32716BC1-4140-30EA-02DB-C3BAA83EADCF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 1 5 1 10 1 15 1 22 1 26 1 30 1 35 1 40 1
		 45 1 52 1 56 1 60 1 65 1 70 1 85 1 89 1 94 1 95 1 100 1 105 1 107 1 119 1;
	setAttr -s 23 ".kit[11:22]"  1 1 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 23 ".kot[8:22]"  1 18 18 18 1 18 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 23 ".kix[11:22]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".kiy[11:22]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 23 ".kox[8:22]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".koy[8:22]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RightArmTwist_Control_scaleY";
	rename -uid "56C6853B-3947-CD6D-7775-E6AB50BC672F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 1 5 1 10 1 15 1 22 1 26 1 30 1 35 1 40 1
		 45 1 52 1 56 1 60 1 65 1 70 1 85 1 89 1 94 1 95 1 100 1 105 1 107 1 119 1;
	setAttr -s 23 ".kit[11:22]"  1 1 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 23 ".kot[8:22]"  1 18 18 18 1 18 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 23 ".kix[11:22]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".kiy[11:22]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 23 ".kox[8:22]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".koy[8:22]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RightArmTwist_Control_scaleZ";
	rename -uid "A0ACB72B-C74F-0FDD-28FC-FFA796B3E7C5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 1 5 1 10 1 15 1 22 1 26 1 30 1 35 1 40 1
		 45 1 52 1 56 1 60 1 65 1 70 1 85 1 89 1 94 1 95 1 100 1 105 1 107 1 119 1;
	setAttr -s 23 ".kit[11:22]"  1 1 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 23 ".kot[8:22]"  1 18 18 18 1 18 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 23 ".kix[11:22]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".kiy[11:22]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 23 ".kox[8:22]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".koy[8:22]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RightElbow_Control_visibility";
	rename -uid "C5614E41-954B-6440-842F-E98031A9AEF1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 1 5 1 10 1 15 1 22 1 26 1 30 1 35 1 40 1
		 56 1 60 1 65 1 70 1 85 1 89 1 94 1 95 1 100 1 105 1 107 1 119 1;
	setAttr -s 21 ".kit[2:20]"  1 18 18 18 18 18 1 1 
		1 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 21 ".kot[2:20]"  1 18 18 18 18 18 1 1 
		5 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 21 ".kix[2:20]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 21 ".kiy[2:20]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 21 ".kox[2:20]"  1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 21 ".koy[2:20]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RightElbow_Control_rotateX";
	rename -uid "9C27010D-2F4C-14DB-2B37-11B3B37D6430";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 0 5 0 10 0 15 0 22 0 26 0 30 0 35 0 40 0
		 56 0 60 0 65 0 70 0 85 0 89 0 94 0 95 0 100 0 105 0 107 0 119 0;
	setAttr -s 21 ".kit[2:20]"  1 18 18 18 18 18 1 1 
		1 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 21 ".kot[2:20]"  1 18 18 18 18 18 1 1 
		1 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 21 ".kix[2:20]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 21 ".kiy[2:20]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 21 ".kox[2:20]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 21 ".koy[2:20]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RightElbow_Control_rotateY";
	rename -uid "D4A44B5E-7F40-7D4D-0C8D-A5850F98CB4E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 0 5 0 10 0 15 0 22 0 26 0 30 0 35 0 40 0
		 56 0 60 0 65 0 70 0 85 0 89 0 94 0 95 0 100 0 105 0 107 0 119 0;
	setAttr -s 21 ".kit[2:20]"  1 18 18 18 18 18 1 1 
		1 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 21 ".kot[2:20]"  1 18 18 18 18 18 1 1 
		1 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 21 ".kix[2:20]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 21 ".kiy[2:20]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 21 ".kox[2:20]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 21 ".koy[2:20]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RightElbow_Control_rotateZ";
	rename -uid "1B0B2F0B-684B-22D3-9EB6-10B94356FFEA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 0 5 0 10 0 15 0 22 0 26 0 30 0 35 0 40 0
		 56 0 60 0 65 0 70 0 85 0 89 0 94 0 95 0 100 0 105 0 107 0 119 0;
	setAttr -s 21 ".kit[2:20]"  1 18 18 18 18 18 1 1 
		1 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 21 ".kot[2:20]"  1 18 18 18 18 18 1 1 
		1 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 21 ".kix[2:20]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 21 ".kiy[2:20]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 21 ".kox[2:20]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 21 ".koy[2:20]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RightElbow_Control_scaleX";
	rename -uid "97CD71FA-9640-1226-D0E4-79B22BE08B04";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 1 5 1 10 1 15 1 22 1 26 1 30 1 35 1 40 1
		 56 1 60 1 65 1 70 1 85 1 89 1 94 1 95 1 100 1 105 1 107 1 119 1;
	setAttr -s 21 ".kit[2:20]"  1 18 18 18 18 18 1 1 
		1 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 21 ".kot[2:20]"  1 18 18 18 18 18 1 1 
		1 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 21 ".kix[2:20]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 21 ".kiy[2:20]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 21 ".kox[2:20]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 21 ".koy[2:20]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RightElbow_Control_scaleY";
	rename -uid "D6179417-424A-24A7-7D74-78B28405239B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 1 5 1 10 1 15 1 22 1 26 1 30 1 35 1 40 1
		 56 1 60 1 65 1 70 1 85 1 89 1 94 1 95 1 100 1 105 1 107 1 119 1;
	setAttr -s 21 ".kit[2:20]"  1 18 18 18 18 18 1 1 
		1 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 21 ".kot[2:20]"  1 18 18 18 18 18 1 1 
		1 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 21 ".kix[2:20]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 21 ".kiy[2:20]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 21 ".kox[2:20]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 21 ".koy[2:20]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RightElbow_Control_scaleZ";
	rename -uid "2669F1CF-0A41-CB1A-7D34-0DB45CACB701";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 1 5 1 10 1 15 1 22 1 26 1 30 1 35 1 40 1
		 56 1 60 1 65 1 70 1 85 1 89 1 94 1 95 1 100 1 105 1 107 1 119 1;
	setAttr -s 21 ".kit[2:20]"  1 18 18 18 18 18 1 1 
		1 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 21 ".kot[2:20]"  1 18 18 18 18 18 1 1 
		1 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 21 ".kix[2:20]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 21 ".kiy[2:20]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 21 ".kox[2:20]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 21 ".koy[2:20]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
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
	setAttr -s 19 ".ktv[0:18]"  0 1 5 1 10 1 26 1 30 1 35 1 40 1 45 1 56 1
		 60 1 65 1 70 1 77 1 85 1 89 1 94 1 95 1 107 1 119 1;
	setAttr -s 19 ".kit[2:18]"  1 1 18 18 1 9 1 1 
		18 18 18 18 18 18 18 18 1;
	setAttr -s 19 ".kot[2:18]"  1 1 18 18 5 5 5 5 
		18 18 18 18 18 18 18 18 1;
	setAttr -s 19 ".kix[2:18]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 19 ".kiy[2:18]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 19 ".kox[2:18]"  1 1 1 1 0 0 0 0 1 1 1 1 1 1 1 1 1;
	setAttr -s 19 ".koy[2:18]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RightHand_Control_rotateX";
	rename -uid "DA7A9D5B-494B-0450-03C3-32974A7F6EE8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  0 96.394798559304604 5 96.394798559304604
		 10 -50.209769090792015 14 -17.367635619966489 17 -81.338619637488847 23 -159.68880127702394
		 26 -50.209769090792015 30 96.394798559304604 35 96.394798559304604 40 -88.835611712388356
		 45 -88.835611712388356 56 -88.835611712388356 60 -90.899703513498551 65 -90.899703513498551
		 70 -90.899703513498551 77 -90.899703513498551 85 -90.899703513498551 89 -90.899703513498551
		 94 -90.899703513498551 95 -3.4233146073917178 101 -31.011294342223422 107 -16.048585880989087
		 113 -22.464353180283677 119 -3.4233146073917178;
	setAttr -s 24 ".kit[2:23]"  1 18 18 18 1 18 18 1 
		18 1 1 18 18 18 18 18 18 18 18 18 18 1;
	setAttr -s 24 ".kot[2:23]"  1 18 18 18 1 18 18 1 
		18 1 1 18 18 18 18 18 18 18 18 18 18 1;
	setAttr -s 24 ".kix[2:23]"  0.11636292601780004 1 0.14927631256842533 
		1 0.11636292601780004 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 24 ".kiy[2:23]"  -0.99320676067401803 0 -0.98879552107904189 
		0 -0.99320676067401803 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 24 ".kox[2:23]"  0.11636292601780004 1 0.14927631256842533 
		1 0.11636292601780004 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 24 ".koy[2:23]"  -0.99320676067401803 0 -0.98879552107904189 
		0 -0.99320676067401803 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RightHand_Control_rotateY";
	rename -uid "CF8F8643-3E4F-373F-B23F-139255F5F028";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  0 54.683622456471149 5 54.683622456471149
		 10 74.541151104111108 14 19.556164465987589 17 56.859327646821697 23 45.745682321884367
		 26 74.541151104111108 30 54.683622456471149 35 54.683622456471149 40 21.906329024099659
		 45 21.906329024099659 56 21.906329024099659 60 24.003342852933894 65 24.003342852933894
		 70 24.003342852933894 77 24.003342852933894 85 24.003342852933894 89 24.003342852933894
		 94 24.003342852933894 95 32.779865865036427 101 62.558742211370834 107 24.171877807163515
		 113 -23.359229447034274 119 32.779865865036427;
	setAttr -s 24 ".kit[2:23]"  1 18 18 18 1 18 18 1 
		18 1 1 18 18 18 18 18 18 18 18 18 18 1;
	setAttr -s 24 ".kot[2:23]"  1 18 18 18 1 18 18 1 
		18 1 1 18 18 18 18 18 18 18 18 18 18 1;
	setAttr -s 24 ".kix[2:23]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.39768616092877629 
		1 0.31631288604573699 1 0.39768616092877629;
	setAttr -s 24 ".kiy[2:23]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.91752150787092246 
		0 -0.94865492046445243 0 0.91752150787092246;
	setAttr -s 24 ".kox[2:23]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.39768616092877634 
		1 0.31631288604573699 1 0.39768616092877634;
	setAttr -s 24 ".koy[2:23]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.91752150787092257 
		0 -0.94865492046445243 0 0.91752150787092257;
createNode animCurveTA -n "RightHand_Control_rotateZ";
	rename -uid "DF011827-714C-EB69-2DCC-EB861ECEB4B4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  0 148.40100726789998 5 148.40100726789998
		 10 19.223130324295109 14 37.507647019583636 17 -26.924668462000742 23 -97.618524731650339
		 26 19.223130324295109 30 148.40100726789998 35 148.40100726789998 40 -58.647852179551492
		 45 -58.647852179551492 56 -58.647852179551492 60 -64.022493999967381 65 -64.022493999967381
		 70 -64.022493999967381 77 -64.022493999967381 85 -64.022493999967381 89 -64.022493999967381
		 94 -64.022493999967381 95 48.601566983181897 101 25.481073253579535 107 35.449346553445736
		 113 59.031906421109447 119 48.601566983181897;
	setAttr -s 24 ".kit[2:23]"  1 18 18 18 1 18 18 1 
		18 1 1 18 18 18 18 18 18 18 18 18 18 1;
	setAttr -s 24 ".kot[2:23]"  1 18 18 18 1 18 18 1 
		18 1 1 18 18 18 18 18 18 18 18 18 18 1;
	setAttr -s 24 ".kix[2:23]"  0.15640972047329088 1 0.15703358511018656 
		1 0.15640972047329088 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.64935330017818427 1 1;
	setAttr -s 24 ".kiy[2:23]"  -0.98769225943178629 0 -0.98759326301238082 
		0 -0.98769225943178629 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.76048687795891712 0 0;
	setAttr -s 24 ".kox[2:23]"  0.15640972047329088 1 0.15703358511018656 
		1 0.15640972047329088 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.64935330017818427 1 1;
	setAttr -s 24 ".koy[2:23]"  -0.98769225943178629 0 -0.98759326301238082 
		0 -0.98769225943178629 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.76048687795891712 0 0;
createNode animCurveTU -n "RightHand_Control_scaleX";
	rename -uid "7CB9CA02-EB45-E941-6E6C-3489F3609D2B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 1 5 1 10 1 26 1 30 1 35 1 40 1 45 1 56 1
		 60 1 65 1 70 1 77 1 85 1 89 1 94 1 95 1 107 1 119 1;
	setAttr -s 19 ".kit[2:18]"  1 1 18 18 1 18 1 1 
		18 18 18 18 18 18 18 18 1;
	setAttr -s 19 ".kot[2:18]"  1 1 18 18 1 18 1 1 
		18 18 18 18 18 18 18 18 1;
	setAttr -s 19 ".kix[2:18]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 19 ".kiy[2:18]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 19 ".kox[2:18]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 19 ".koy[2:18]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RightHand_Control_scaleY";
	rename -uid "B6413DE2-9E47-92C2-51BD-4D9C153F56B3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 1 5 1 10 1 26 1 30 1 35 1 40 1 45 1 56 1
		 60 1 65 1 70 1 77 1 85 1 89 1 94 1 95 1 107 1 119 1;
	setAttr -s 19 ".kit[2:18]"  1 1 18 18 1 18 1 1 
		18 18 18 18 18 18 18 18 1;
	setAttr -s 19 ".kot[2:18]"  1 1 18 18 1 18 1 1 
		18 18 18 18 18 18 18 18 1;
	setAttr -s 19 ".kix[2:18]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 19 ".kiy[2:18]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 19 ".kox[2:18]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 19 ".koy[2:18]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RightHand_Control_scaleZ";
	rename -uid "E7953ABB-1340-1789-5268-7FA6AB0B0EAF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 1 5 1 10 1 26 1 30 1 35 1 40 1 45 1 56 1
		 60 1 65 1 70 1 77 1 85 1 89 1 94 1 95 1 107 1 119 1;
	setAttr -s 19 ".kit[2:18]"  1 1 18 18 1 18 1 1 
		18 18 18 18 18 18 18 18 1;
	setAttr -s 19 ".kot[2:18]"  1 1 18 18 1 18 1 1 
		18 18 18 18 18 18 18 18 1;
	setAttr -s 19 ".kix[2:18]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 19 ".kiy[2:18]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 19 ".kox[2:18]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 19 ".koy[2:18]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LeftShoulder_Control_visibility";
	rename -uid "9C65D30F-C54D-994C-DE5E-A0B9E99C2963";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 1 5 1 10 1 15 1 22 1 26 1 30 1 35 1 40 1
		 45 1 52 1 56 1 60 1 65 1 70 1 85 1 89 1 94 1 95 1 100 1 105 1 107 1 119 1;
	setAttr -s 23 ".kit[11:22]"  1 1 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 23 ".kot[8:22]"  1 18 18 18 5 18 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 23 ".kix[11:22]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".kiy[11:22]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 23 ".kox[8:22]"  1 1 1 1 0 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".koy[8:22]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LeftShoulder_Control_rotateX";
	rename -uid "3C51842A-644D-C9EA-62E4-98934280450C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 0 5 0 10 0 15 0 22 0 26 0 30 0 35 0 40 0
		 45 0 52 0 56 0 60 0 65 0 70 0 85 0 89 0 94 0 95 0 100 0 105 0 107 0 119 0;
	setAttr -s 23 ".kit[11:22]"  1 1 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 23 ".kot[8:22]"  1 18 18 18 1 18 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 23 ".kix[11:22]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".kiy[11:22]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 23 ".kox[8:22]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".koy[8:22]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LeftShoulder_Control_rotateY";
	rename -uid "75EAA9F7-4F4E-36FF-090B-3BB6FE1544CD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 0 5 0 10 0 15 0 22 0 26 0 30 0 35 0 40 0
		 45 0 52 0 56 0 60 0 65 0 70 0 85 0 89 0 94 0 95 0 100 0 105 0 107 0 119 0;
	setAttr -s 23 ".kit[11:22]"  1 1 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 23 ".kot[8:22]"  1 18 18 18 1 18 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 23 ".kix[11:22]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".kiy[11:22]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 23 ".kox[8:22]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".koy[8:22]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LeftShoulder_Control_rotateZ";
	rename -uid "41E6723F-0D46-5CBE-39C3-259ADC0BA09B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 0 5 0 10 0 15 0 22 0 26 0 30 0 35 0 40 0
		 45 0 52 0 56 0 60 0 65 0 70 0 85 0 89 0 94 0 95 0 100 0 105 0 107 0 119 0;
	setAttr -s 23 ".kit[11:22]"  1 1 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 23 ".kot[8:22]"  1 18 18 18 1 18 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 23 ".kix[11:22]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".kiy[11:22]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 23 ".kox[8:22]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".koy[8:22]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LeftShoulder_Control_scaleX";
	rename -uid "E6D77E33-D244-BD46-9680-E7A3F6AAF539";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 1 5 1 10 1 15 1 22 1 26 1 30 1 35 1 40 1
		 45 1 52 1 56 1 60 1 65 1 70 1 85 1 89 1 94 1 95 1 100 1 105 1 107 1 119 1;
	setAttr -s 23 ".kit[11:22]"  1 1 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 23 ".kot[8:22]"  1 18 18 18 1 18 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 23 ".kix[11:22]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".kiy[11:22]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 23 ".kox[8:22]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".koy[8:22]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LeftShoulder_Control_scaleY";
	rename -uid "FAFD25F1-7D4A-998F-8109-3A9B26EF817B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 1 5 1 10 1 15 1 22 1 26 1 30 1 35 1 40 1
		 45 1 52 1 56 1 60 1 65 1 70 1 85 1 89 1 94 1 95 1 100 1 105 1 107 1 119 1;
	setAttr -s 23 ".kit[11:22]"  1 1 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 23 ".kot[8:22]"  1 18 18 18 1 18 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 23 ".kix[11:22]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".kiy[11:22]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 23 ".kox[8:22]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".koy[8:22]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LeftShoulder_Control_scaleZ";
	rename -uid "31F5048C-F345-A408-E186-618A2FE81DF5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 1 5 1 10 1 15 1 22 1 26 1 30 1 35 1 40 1
		 45 1 52 1 56 1 60 1 65 1 70 1 85 1 89 1 94 1 95 1 100 1 105 1 107 1 119 1;
	setAttr -s 23 ".kit[11:22]"  1 1 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 23 ".kot[8:22]"  1 18 18 18 1 18 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 23 ".kix[11:22]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".kiy[11:22]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 23 ".kox[8:22]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".koy[8:22]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LeftArmTwist_Control_visibility";
	rename -uid "DD6310B5-8B4D-7738-2648-2B911C639FC4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 1 5 1 10 1 15 1 22 1 26 1 30 1 35 1 40 1
		 45 1 52 1 56 1 60 1 65 1 70 1 85 1 89 1 94 1 95 1 100 1 105 1 107 1 119 1;
	setAttr -s 23 ".kit[11:22]"  1 1 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 23 ".kot[8:22]"  1 18 18 18 5 18 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 23 ".kix[11:22]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".kiy[11:22]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 23 ".kox[8:22]"  1 1 1 1 0 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".koy[8:22]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LeftArmTwist_Control_rotateX";
	rename -uid "CB77B01A-5544-7E78-6EA4-E8B1CDCC9352";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 0 5 0 10 0 15 0 22 0 26 0 30 0 35 0 40 0
		 45 0 52 0 56 0 60 0 65 0 70 0 85 0 89 0 94 0 95 0 100 0 105 0 107 0 119 0;
	setAttr -s 23 ".kit[11:22]"  1 1 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 23 ".kot[8:22]"  1 18 18 18 1 18 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 23 ".kix[11:22]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".kiy[11:22]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 23 ".kox[8:22]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".koy[8:22]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LeftArmTwist_Control_rotateY";
	rename -uid "E3DF7860-9C44-D1F5-6014-18A57279DEE5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 0 5 0 10 0 15 0 22 0 26 0 30 0 35 0 40 0
		 45 0 52 0 56 0 60 0 65 0 70 0 85 0 89 0 94 0 95 0 100 0 105 0 107 0 119 0;
	setAttr -s 23 ".kit[11:22]"  1 1 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 23 ".kot[8:22]"  1 18 18 18 1 18 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 23 ".kix[11:22]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".kiy[11:22]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 23 ".kox[8:22]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".koy[8:22]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LeftArmTwist_Control_rotateZ";
	rename -uid "5D39FFAF-7844-FFF5-B614-A2B8F51DE119";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 0 5 0 10 0 15 0 22 0 26 0 30 0 35 0 40 0
		 45 0 52 0 56 0 60 0 65 0 70 0 85 0 89 0 94 0 95 0 100 0 105 0 107 0 119 0;
	setAttr -s 23 ".kit[11:22]"  1 1 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 23 ".kot[8:22]"  1 18 18 18 1 18 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 23 ".kix[11:22]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".kiy[11:22]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 23 ".kox[8:22]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".koy[8:22]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LeftArmTwist_Control_scaleX";
	rename -uid "236593FC-8C4E-095A-23CB-1587FC00322B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 1 5 1 10 1 15 1 22 1 26 1 30 1 35 1 40 1
		 45 1 52 1 56 1 60 1 65 1 70 1 85 1 89 1 94 1 95 1 100 1 105 1 107 1 119 1;
	setAttr -s 23 ".kit[11:22]"  1 1 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 23 ".kot[8:22]"  1 18 18 18 1 18 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 23 ".kix[11:22]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".kiy[11:22]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 23 ".kox[8:22]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".koy[8:22]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LeftArmTwist_Control_scaleY";
	rename -uid "44083144-8F46-AA8D-64B0-87ABC69701C4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 1 5 1 10 1 15 1 22 1 26 1 30 1 35 1 40 1
		 45 1 52 1 56 1 60 1 65 1 70 1 85 1 89 1 94 1 95 1 100 1 105 1 107 1 119 1;
	setAttr -s 23 ".kit[11:22]"  1 1 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 23 ".kot[8:22]"  1 18 18 18 1 18 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 23 ".kix[11:22]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".kiy[11:22]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 23 ".kox[8:22]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".koy[8:22]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LeftArmTwist_Control_scaleZ";
	rename -uid "B4169FF4-2146-A5B6-CDFA-8498F83311A1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 1 5 1 10 1 15 1 22 1 26 1 30 1 35 1 40 1
		 45 1 52 1 56 1 60 1 65 1 70 1 85 1 89 1 94 1 95 1 100 1 105 1 107 1 119 1;
	setAttr -s 23 ".kit[11:22]"  1 1 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 23 ".kot[8:22]"  1 18 18 18 1 18 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 23 ".kix[11:22]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".kiy[11:22]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 23 ".kox[8:22]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".koy[8:22]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LeftKnee_Control_visibility";
	rename -uid "958BAD18-344C-14BB-2989-DAA52670C29F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  0 1 5 1 10 1 15 1 22 1 26 1 30 1 35 1 40 1
		 45 1 52 1 56 1 60 1 65 1 70 1 85 1 89 1 94 1 95 1 100 1 105 1 107 1;
	setAttr -s 22 ".kit[11:21]"  1 1 18 18 18 18 18 18 
		18 18 18;
	setAttr -s 22 ".kot[8:21]"  1 18 18 18 5 18 18 18 
		18 18 18 18 18 18;
	setAttr -s 22 ".kix[11:21]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 22 ".kiy[11:21]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 22 ".kox[8:21]"  1 1 1 1 0 1 1 1 1 1 1 1 1 1;
	setAttr -s 22 ".koy[8:21]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LeftKnee_Control_rotateX";
	rename -uid "6F103C5A-7845-8D70-5703-43B9DE57E6DF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  0 0 5 0 10 0 15 0 22 0 26 0 30 0 35 0 40 0
		 45 0 52 0 56 0 60 0 65 0 70 0 85 0 89 0 94 0 95 0 100 0 105 0 107 0;
	setAttr -s 22 ".kit[11:21]"  1 1 18 18 18 18 18 18 
		18 18 18;
	setAttr -s 22 ".kot[8:21]"  1 18 18 18 1 18 18 18 
		18 18 18 18 18 18;
	setAttr -s 22 ".kix[11:21]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 22 ".kiy[11:21]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 22 ".kox[8:21]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 22 ".koy[8:21]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LeftKnee_Control_rotateY";
	rename -uid "AF999CFE-2F47-ECDC-C81B-11AF18944474";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  0 0 5 0 10 0 15 0 22 0 26 0 30 0 35 0 40 0
		 45 0 52 0 56 0 60 0 65 0 70 0 85 0 89 0 94 0 95 0 100 0 105 0 107 0;
	setAttr -s 22 ".kit[11:21]"  1 1 18 18 18 18 18 18 
		18 18 18;
	setAttr -s 22 ".kot[8:21]"  1 18 18 18 1 18 18 18 
		18 18 18 18 18 18;
	setAttr -s 22 ".kix[11:21]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 22 ".kiy[11:21]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 22 ".kox[8:21]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 22 ".koy[8:21]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LeftKnee_Control_rotateZ";
	rename -uid "08955E4E-3645-9692-56EF-AA8F6F559A5C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  0 0 5 0 10 0 15 0 22 0 26 0 30 0 35 0 40 0
		 45 0 52 0 56 0 60 0 65 0 70 0 85 0 89 0 94 0 95 0 100 0 105 0 107 0;
	setAttr -s 22 ".kit[11:21]"  1 1 18 18 18 18 18 18 
		18 18 18;
	setAttr -s 22 ".kot[8:21]"  1 18 18 18 1 18 18 18 
		18 18 18 18 18 18;
	setAttr -s 22 ".kix[11:21]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 22 ".kiy[11:21]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 22 ".kox[8:21]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 22 ".koy[8:21]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LeftKnee_Control_scaleX";
	rename -uid "8EEC312E-CA47-016A-B83E-F4AFB362A184";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  0 1 5 1 10 1 15 1 22 1 26 1 30 1 35 1 40 1
		 45 1 52 1 56 1 60 1 65 1 70 1 85 1 89 1 94 1 95 1 100 1 105 1 107 1;
	setAttr -s 22 ".kit[11:21]"  1 1 18 18 18 18 18 18 
		18 18 18;
	setAttr -s 22 ".kot[8:21]"  1 18 18 18 1 18 18 18 
		18 18 18 18 18 18;
	setAttr -s 22 ".kix[11:21]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 22 ".kiy[11:21]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 22 ".kox[8:21]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 22 ".koy[8:21]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LeftKnee_Control_scaleY";
	rename -uid "B23E43B1-EF4F-AFA6-A3C5-CEA2D6D8FE8E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  0 1 5 1 10 1 15 1 22 1 26 1 30 1 35 1 40 1
		 45 1 52 1 56 1 60 1 65 1 70 1 85 1 89 1 94 1 95 1 100 1 105 1 107 1;
	setAttr -s 22 ".kit[11:21]"  1 1 18 18 18 18 18 18 
		18 18 18;
	setAttr -s 22 ".kot[8:21]"  1 18 18 18 1 18 18 18 
		18 18 18 18 18 18;
	setAttr -s 22 ".kix[11:21]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 22 ".kiy[11:21]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 22 ".kox[8:21]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 22 ".koy[8:21]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LeftKnee_Control_scaleZ";
	rename -uid "99783A57-FA48-6BA9-F7A2-96A1A7C9D79F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  0 1 5 1 10 1 15 1 22 1 26 1 30 1 35 1 40 1
		 45 1 52 1 56 1 60 1 65 1 70 1 85 1 89 1 94 1 95 1 100 1 105 1 107 1;
	setAttr -s 22 ".kit[11:21]"  1 1 18 18 18 18 18 18 
		18 18 18;
	setAttr -s 22 ".kot[8:21]"  1 18 18 18 1 18 18 18 
		18 18 18 18 18 18;
	setAttr -s 22 ".kix[11:21]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 22 ".kiy[11:21]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 22 ".kox[8:21]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 22 ".koy[8:21]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RightFoot_Control_visibility";
	rename -uid "AD163B95-A74F-814F-C258-09A8209C6D28";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  0 1 5 1 10 1 16 1 26 1 30 1 35 1 40 1 46 1
		 56 1 60 1 65 1 70 1 77 1 85 1 89 1 94 1 95 1 100 1 107 1 112 1 119 1;
	setAttr -s 22 ".kit[9:21]"  1 1 18 18 18 18 18 18 
		18 18 18 18 18;
	setAttr -s 22 ".kot[7:21]"  1 18 18 5 18 18 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 22 ".kix[9:21]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 22 ".kiy[9:21]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 22 ".kox[7:21]"  1 1 1 0 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 22 ".koy[7:21]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RightFoot_Control_rotateX";
	rename -uid "31AA40D6-7E4D-DE9C-F219-BC99D2C5C83C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 0 5 92.96589967199111 10 96.196003079118825
		 13 78.032391000569135 16 -35.88035555306211 18 0 20 33.186811239113503 22 110.65887107832442
		 26 96.196003079118825 30 0 35 92.96589967199111 40 96.196003079118825 43 78.032391000569135
		 46 -35.88035555306211 48 0 50 33.186811239113503 52 110.65887107832442 56 96.196003079118825
		 60 25.584021185189368 65 34.538428600005673 70 89.727966561325161 77 0 85 25.584021185189368
		 89 34.538428600005673 94 89.727966561325161 95 25.584021185189368 100 34.538428600005673
		 107 71.939331791150053 110 -12.285893120247 112 0 119 25.584021185189368;
	setAttr -s 31 ".kit[17:30]"  1 1 18 18 18 18 18 18 
		18 18 18 18 18 18;
	setAttr -s 31 ".kot[11:30]"  1 18 18 18 18 18 18 1 
		18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 31 ".kix[17:30]"  0.21494344632096615 0.63841860569461295 
		0.40606491428909752 1 1 0.63841860569461295 0.33494516830731103 1 1 0.52571427768794332 
		1 1 0.49346970785425515 1;
	setAttr -s 31 ".kiy[17:30]"  -0.97662649712347349 0.76968934246418275 
		0.91384423474867305 0 0 0.76968934246418275 0.94223762089378871 0 0 0.85066121237249559 
		0 0 0.8697629834789683 0;
	setAttr -s 31 ".kox[11:30]"  1 0.13031367253095655 1 0.13695815844279105 
		0.085975375960976652 1 0.21904006178459426 0.63841860569461295 0.40606491428909752 
		1 1 0.63841860569461295 0.33494516830731103 1 1 0.52571427768794332 1 1 0.49346970785425504 
		1;
	setAttr -s 31 ".koy[11:30]"  0 -0.99147281695036638 0 0.99057683338343794 
		0.99629726223069026 0 -0.9757158660867421 0.76968934246418297 0.91384423474867305 
		0 0 0.76968934246418297 0.94223762089378871 0 0 0.85066121237249559 0 0 0.8697629834789683 
		0;
createNode animCurveTA -n "RightFoot_Control_rotateY";
	rename -uid "D1854F29-FB42-AED4-D577-6BA13C423CC0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 0 5 -17.185349986606937 10 -24.439999895607567
		 13 -17.994850718115153 16 -4.254028518065847 18 0 20 -0.87759129423833571 26 -24.439999895607567
		 30 0 35 -17.185349986606937 40 -24.439999895607567 43 -17.994850718115153 46 -4.254028518065847
		 48 0 50 -0.87759129423833571 56 -24.439999895607567 60 -17.65612924819926 65 -21.418872842914872
		 70 0 77 0 85 -17.65612924819926 89 -21.418872842914872 94 0 95 -17.65612924819926
		 100 -21.418872842914872 107 0 112 0 119 -17.65612924819926;
	setAttr -s 28 ".kit[15:27]"  1 1 18 18 18 18 18 18 
		18 18 18 18 18;
	setAttr -s 28 ".kot[10:27]"  1 18 18 18 18 18 1 18 
		18 18 18 18 18 18 18 18 18 18;
	setAttr -s 28 ".kix[15:27]"  1 0.80089878303607642 1 1 1 0.80089878303607642 
		1 1 0.72656465277600057 1 1 1 1;
	setAttr -s 28 ".kiy[15:27]"  0 -0.59879974894060539 0 0 0 -0.59879974894060539 
		0 0 -0.68709810459387088 0 0 0 0;
	setAttr -s 28 ".kox[10:27]"  1 0.57870446643071005 0.55277681646120558 
		1 0.87569517140663167 1 0.80089878303607631 1 1 1 0.80089878303607631 1 1 0.72656465277600057 
		1 1 1 1;
	setAttr -s 28 ".koy[10:27]"  0 0.81553733239695858 0.83332934136691394 
		0 -0.48286433578709265 0 -0.59879974894060528 0 0 0 -0.59879974894060528 0 0 -0.68709810459387088 
		0 0 0 0;
createNode animCurveTA -n "RightFoot_Control_rotateZ";
	rename -uid "61ED0D84-6A4E-667F-1C67-3D9FD0A00BAB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 0 5 -23.632480505008385 10 -24.415697082876761
		 13 -0.42081044538262646 16 3.0714089881951745 18 0 20 5.0243239558606669 26 -24.415697082876761
		 30 0 35 -23.632480505008385 40 -24.415697082876761 43 -0.42081044538262646 46 3.0714089881951745
		 48 0 50 5.0243239558606669 56 -24.415697082876761 60 -6.3268782714238039e-16 65 -8.5412856664221444e-16
		 70 0 77 0 85 -6.3268782714238039e-16 89 -8.5412856664221444e-16 94 0 95 -6.3268782714238039e-16
		 100 -8.5412856664221444e-16 107 0 112 0 119 -6.3268782714238039e-16;
	setAttr -s 28 ".kit[15:27]"  1 1 18 18 18 18 18 18 
		18 18 18 18 18;
	setAttr -s 28 ".kot[10:27]"  1 18 18 18 18 18 1 18 
		18 18 18 18 18 18 18 18 18 18;
	setAttr -s 28 ".kix[15:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".kiy[15:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 28 ".kox[10:27]"  1 0.56434748400122714 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1;
	setAttr -s 28 ".koy[10:27]"  0 0.82553735063986333 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0;
createNode animCurveTU -n "RightFoot_Control_scaleX";
	rename -uid "9494A289-5440-94C9-A164-5592EF05082F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  0 1 5 1 10 1 16 1 26 1 30 1 35 1 40 1 46 1
		 56 1 60 1 65 1 70 1 77 1 85 1 89 1 94 1 95 1 100 1 107 1 112 1 119 1;
	setAttr -s 22 ".kit[9:21]"  1 1 18 18 18 18 18 18 
		18 18 18 18 18;
	setAttr -s 22 ".kot[7:21]"  1 18 18 1 18 18 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 22 ".kix[9:21]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 22 ".kiy[9:21]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 22 ".kox[7:21]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 22 ".koy[7:21]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RightFoot_Control_scaleY";
	rename -uid "DBBC791E-8044-B512-A9DB-A384EB1ED71D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  0 1 5 1 10 1 16 1 26 1 30 1 35 1 40 1 46 1
		 56 1 60 1 65 1 70 1 77 1 85 1 89 1 94 1 95 1 100 1 107 1 112 1 119 1;
	setAttr -s 22 ".kit[9:21]"  1 1 18 18 18 18 18 18 
		18 18 18 18 18;
	setAttr -s 22 ".kot[7:21]"  1 18 18 1 18 18 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 22 ".kix[9:21]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 22 ".kiy[9:21]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 22 ".kox[7:21]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 22 ".koy[7:21]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RightFoot_Control_scaleZ";
	rename -uid "C0FEA8D1-E54E-21D8-DD64-59B9DF5DCC2D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  0 1 5 1 10 1 16 1 26 1 30 1 35 1 40 1 46 1
		 56 1 60 1 65 1 70 1 77 1 85 1 89 1 94 1 95 1 100 1 107 1 112 1 119 1;
	setAttr -s 22 ".kit[9:21]"  1 1 18 18 18 18 18 18 
		18 18 18 18 18;
	setAttr -s 22 ".kot[7:21]"  1 18 18 1 18 18 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 22 ".kix[9:21]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 22 ".kiy[9:21]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 22 ".kox[7:21]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 22 ".koy[7:21]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LeftToes_Control_visibility";
	rename -uid "82963853-394D-C580-1611-37A47C3887E1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  0 1 5 1 10 1 15 1 16 1 26 1 30 1 35 1 40 1
		 45 1 46 1 56 1 60 1 65 1 70 1 73 1 85 1 89 1 94 1 95 1 100 1 105 1 107 1 119 1;
	setAttr -s 24 ".kit[11:23]"  1 1 18 18 18 18 18 18 
		18 18 18 18 18;
	setAttr -s 24 ".kot[8:23]"  1 18 18 18 5 18 18 18 
		18 18 18 18 18 18 18 18;
	setAttr -s 24 ".kix[11:23]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 24 ".kiy[11:23]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 24 ".kox[8:23]"  1 1 1 1 0 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 24 ".koy[8:23]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LeftToes_Control_rotateX";
	rename -uid "5ACFB7C3-6D43-D7D3-4753-E1BEF530F4CE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 0 5 42.317848650519402 10 0 13 -27.691759257920499
		 15 -24.521570787337929 16 0 21 55.983739873933779 24 -26.263915132120506 26 0 30 0
		 35 42.317848650519402 40 0 43 -27.691759257920499 45 -24.521570787337929 46 0 51 55.983739873933779
		 54 -26.263915132120506 56 0 60 20.389977156114984 65 0 70 0 73 0 77 -33.224345352557613
		 83 27.52646916075517 85 20.389977156114984 89 0 94 0 95 20.389977156114984 100 0
		 105 0 107 -18.774340772338956 112 -33.224345352557613 119 20.389977156114984;
	setAttr -s 33 ".kit[17:32]"  1 1 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18;
	setAttr -s 33 ".kot[11:32]"  1 18 18 18 18 18 18 1 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 33 ".kix[17:32]"  1 0.46161097867413303 1 1 1 1 1 0.46161097867413303 
		1 1 1 1 1 0.44934398150112353 1 1;
	setAttr -s 33 ".kiy[17:32]"  0 -0.88708246762491549 0 0 0 0 0 -0.88708246762491549 
		0 0 0 0 0 -0.89335882280790058 0 0;
	setAttr -s 33 ".kox[11:32]"  0.26318235366665682 1 0.44866881462037433 
		0.17517428236207383 1 1 0.29350367640286867 0.46161097867413309 1 1 1 1 1 0.46161097867413309 
		1 1 1 1 1 0.44934398150112348 1 1;
	setAttr -s 33 ".koy[11:32]"  -0.96474610583224374 0 0.89369810047193687 
		0.98453744001888122 0 0 0.95595794464924044 -0.88708246762491538 0 0 0 0 0 -0.88708246762491538 
		0 0 0 0 0 -0.89335882280790058 0 0;
createNode animCurveTA -n "LeftToes_Control_rotateY";
	rename -uid "CB4AD19C-6747-32C3-6432-A0B96CAA6885";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 0 5 11.525725394007491 10 0 15 0 16 0
		 21 0 24 0 26 0 30 0 35 11.525725394007491 40 0 45 0 46 0 51 0 54 0 56 0 60 0 65 0
		 70 0 73 0 85 0 89 0 94 0 95 0 100 0 105 0 107 0 119 0;
	setAttr -s 28 ".kit[15:27]"  1 1 18 18 18 18 18 18 
		18 18 18 18 18;
	setAttr -s 28 ".kot[10:27]"  1 18 18 18 18 18 1 18 
		18 18 18 18 18 18 18 18 18 18;
	setAttr -s 28 ".kix[15:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".kiy[15:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 28 ".kox[10:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".koy[10:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LeftToes_Control_rotateZ";
	rename -uid "D3D2B4C8-0C4B-B887-DEF2-539DF9932836";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 0 5 1.0672264843461554 10 0 15 0 16 0
		 21 0 24 0 26 0 30 0 35 1.0672264843461554 40 0 45 0 46 0 51 0 54 0 56 0 60 0 65 0
		 70 0 73 0 85 0 89 0 94 0 95 0 100 0 105 0 107 0 119 0;
	setAttr -s 28 ".kit[15:27]"  1 1 18 18 18 18 18 18 
		18 18 18 18 18;
	setAttr -s 28 ".kot[10:27]"  1 18 18 18 18 18 1 18 
		18 18 18 18 18 18 18 18 18 18;
	setAttr -s 28 ".kix[15:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".kiy[15:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 28 ".kox[10:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".koy[10:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LeftToes_Control_scaleX";
	rename -uid "29DDAE09-C444-9CCE-AE05-F6A52A08CCAA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  0 1 5 1 10 1 15 1 16 1 26 1 30 1 35 1 40 1
		 45 1 46 1 56 1 60 1 65 1 70 1 73 1 85 1 89 1 94 1 95 1 100 1 105 1 107 1 119 1;
	setAttr -s 24 ".kit[11:23]"  1 1 18 18 18 18 18 18 
		18 18 18 18 18;
	setAttr -s 24 ".kot[8:23]"  1 18 18 18 1 18 18 18 
		18 18 18 18 18 18 18 18;
	setAttr -s 24 ".kix[11:23]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 24 ".kiy[11:23]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 24 ".kox[8:23]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 24 ".koy[8:23]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LeftToes_Control_scaleY";
	rename -uid "ECF47A43-F844-8115-8CEC-84A35F4D7969";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  0 1 5 1 10 1 15 1 16 1 26 1 30 1 35 1 40 1
		 45 1 46 1 56 1 60 1 65 1 70 1 73 1 85 1 89 1 94 1 95 1 100 1 105 1 107 1 119 1;
	setAttr -s 24 ".kit[11:23]"  1 1 18 18 18 18 18 18 
		18 18 18 18 18;
	setAttr -s 24 ".kot[8:23]"  1 18 18 18 1 18 18 18 
		18 18 18 18 18 18 18 18;
	setAttr -s 24 ".kix[11:23]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 24 ".kiy[11:23]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 24 ".kox[8:23]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 24 ".koy[8:23]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LeftToes_Control_scaleZ";
	rename -uid "FD2569E8-3A4F-398F-E22F-A580E33257C7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  0 1 5 1 10 1 15 1 16 1 26 1 30 1 35 1 40 1
		 45 1 46 1 56 1 60 1 65 1 70 1 73 1 85 1 89 1 94 1 95 1 100 1 105 1 107 1 119 1;
	setAttr -s 24 ".kit[11:23]"  1 1 18 18 18 18 18 18 
		18 18 18 18 18;
	setAttr -s 24 ".kot[8:23]"  1 18 18 18 1 18 18 18 
		18 18 18 18 18 18 18 18;
	setAttr -s 24 ".kix[11:23]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 24 ".kiy[11:23]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 24 ".kox[8:23]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 24 ".koy[8:23]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RightHip_Control_visibility";
	rename -uid "F5CC33C1-A94A-81F9-97D4-36A7E929D359";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 1 5 1 10 1 15 1 22 1 26 1 30 1 35 1 40 1
		 45 1 52 1 56 1 60 1 65 1 70 1 85 1 89 1 94 1 95 1 100 1 105 1 107 1 119 1;
	setAttr -s 23 ".kit[11:22]"  1 1 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 23 ".kot[8:22]"  1 18 18 18 5 18 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 23 ".kix[11:22]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".kiy[11:22]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 23 ".kox[8:22]"  1 1 1 1 0 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".koy[8:22]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RightHip_Control_rotateX";
	rename -uid "A0E394AA-804D-1FAC-A84C-B483118EFBAA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 0 5 0 10 0 15 0 22 0 26 0 30 0 35 0 40 0
		 45 0 52 0 56 0 60 0 65 0 70 0 85 0 89 0 94 0 95 0 100 0 105 0 107 0 119 0;
	setAttr -s 23 ".kit[11:22]"  1 1 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 23 ".kot[8:22]"  1 18 18 18 1 18 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 23 ".kix[11:22]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".kiy[11:22]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 23 ".kox[8:22]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".koy[8:22]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RightHip_Control_rotateY";
	rename -uid "E76F692B-4D4B-AA35-80EA-55B69E17987A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 0 5 0 10 0 15 0 22 0 26 0 30 0 35 0 40 0
		 45 0 52 0 56 0 60 0 65 0 70 0 85 0 89 0 94 0 95 0 100 0 105 0 107 0 119 0;
	setAttr -s 23 ".kit[11:22]"  1 1 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 23 ".kot[8:22]"  1 18 18 18 1 18 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 23 ".kix[11:22]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".kiy[11:22]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 23 ".kox[8:22]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".koy[8:22]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RightHip_Control_rotateZ";
	rename -uid "4B3E7211-3A48-3A8F-313C-DDBBA48D44A4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 0 5 0 10 0 15 0 22 0 26 0 30 0 35 0 40 0
		 45 0 52 0 56 0 60 0 65 0 70 0 85 0 89 0 94 0 95 0 100 0 105 0 107 0 119 0;
	setAttr -s 23 ".kit[11:22]"  1 1 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 23 ".kot[8:22]"  1 18 18 18 1 18 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 23 ".kix[11:22]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".kiy[11:22]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 23 ".kox[8:22]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".koy[8:22]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RightHip_Control_scaleX";
	rename -uid "B9CB031B-1644-31F3-AB1B-B4BB9205463E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 1 5 1 10 1 15 1 22 1 26 1 30 1 35 1 40 1
		 45 1 52 1 56 1 60 1 65 1 70 1 85 1 89 1 94 1 95 1 100 1 105 1 107 1 119 1;
	setAttr -s 23 ".kit[11:22]"  1 1 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 23 ".kot[8:22]"  1 18 18 18 1 18 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 23 ".kix[11:22]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".kiy[11:22]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 23 ".kox[8:22]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".koy[8:22]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RightHip_Control_scaleY";
	rename -uid "97D403FC-3341-84D6-694D-3B90340111D7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 1 5 1 10 1 15 1 22 1 26 1 30 1 35 1 40 1
		 45 1 52 1 56 1 60 1 65 1 70 1 85 1 89 1 94 1 95 1 100 1 105 1 107 1 119 1;
	setAttr -s 23 ".kit[11:22]"  1 1 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 23 ".kot[8:22]"  1 18 18 18 1 18 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 23 ".kix[11:22]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".kiy[11:22]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 23 ".kox[8:22]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".koy[8:22]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RightHip_Control_scaleZ";
	rename -uid "037CAC5C-F949-0E2A-563B-ED83F8934294";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 1 5 1 10 1 15 1 22 1 26 1 30 1 35 1 40 1
		 45 1 52 1 56 1 60 1 65 1 70 1 85 1 89 1 94 1 95 1 100 1 105 1 107 1 119 1;
	setAttr -s 23 ".kit[11:22]"  1 1 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 23 ".kot[8:22]"  1 18 18 18 1 18 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 23 ".kix[11:22]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".kiy[11:22]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 23 ".kox[8:22]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".koy[8:22]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LeftFoot_Control_visibility";
	rename -uid "097300C4-204A-3C00-B47B-018FFD1BB355";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 1 5 1 10 1 26 1 30 1 35 1 40 1 56 1 60 1
		 65 1 70 1 77 1 85 1 89 1 94 1 95 1 100 1 105 1 107 1 112 1 119 1;
	setAttr -s 21 ".kit[7:20]"  1 1 18 18 18 18 18 18 
		18 18 18 18 18 18;
	setAttr -s 21 ".kot[6:20]"  1 18 5 18 18 18 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 21 ".kix[7:20]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 21 ".kiy[7:20]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 21 ".kox[6:20]"  1 1 0 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 21 ".koy[6:20]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LeftFoot_Control_rotateX";
	rename -uid "CFDDC57E-C043-EA44-0662-00AE606388A6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 0 5 -37.614578755053614 10 0 12 30.630168232623372
		 14 125.50950476494147 18 89.149162171130229 21 64.159353648465299 24 -36.179525310701543
		 26 0 30 0 35 -37.614578755053614 40 0 42 30.630168232623372 44 125.50950476494147
		 48 89.149162171130229 51 64.159353648465299 54 -36.179525310701543 56 0 60 67.181140942981003
		 65 0 70 13.177918105472447 77 51.311495668886067 83 90.694540273024145 85 67.181140942981003
		 89 0 94 13.177918105472447 95 67.181140942981003 98 -10.554688271073706 100 0 105 13.177918105472447
		 107 22.667347178594863 112 51.311495668886067 115 116.21345043059985 119 67.181140942981003;
	setAttr -s 34 ".kit[17:33]"  1 1 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18;
	setAttr -s 34 ".kot[11:33]"  1 18 18 18 18 18 18 1 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 34 ".kix[17:33]"  1 0.15600246704419227 1 0.4874818283193002 
		0.3716855732195174 1 0.15600246704419227 1 0.28904681190189713 1 1 0.57573637939611666 
		0.59340644965088885 0.40137978269010299 0.20003594418314136 1 1;
	setAttr -s 34 ".kiy[17:33]"  0 -0.98775666551844932 0 0.87313313249382096 
		0.92835867780749415 0 -0.98775666551844932 0 0.95731496412066452 0 0 0.81763538416573611 
		0.80490296652001914 0.91591171520384307 0.97978855935082176 0 0;
	setAttr -s 34 ".kox[11:33]"  0.2378454968280409 0.075864983139400169 
		1 0.26281598928094929 0.11355180516286874 1 0.13727029428242982 0.15600246704419229 
		1 0.48748182831930015 0.3716855732195174 1 0.15600246704419229 1 0.28904681190189724 
		1 1 0.57573637939611677 0.59340644965088885 0.40137978269010299 0.20003594418314144 
		1 1;
	setAttr -s 34 ".koy[11:33]"  0.97130300094183908 0.99711809949135843 
		0 -0.96484597515783621 -0.9935320767565855 0 0.99053362704534942 -0.98775666551844932 
		0 0.87313313249382107 0.92835867780749415 0 -0.98775666551844932 0 0.95731496412066464 
		0 0 0.81763538416573611 0.80490296652001914 0.91591171520384307 0.97978855935082199 
		0 0;
createNode animCurveTA -n "LeftFoot_Control_rotateY";
	rename -uid "94D866F6-AC4C-3DEC-FEBF-52A4E731D046";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 29 ".ktv[0:28]"  0 0 5 7.4799015251493479 10 0 12 2.4535771472757948
		 18 33.452756009878968 21 0 24 3.8805316230776521 26 0 30 0 35 7.4799015251493479
		 40 0 42 2.4535771472757948 48 33.452756009878968 51 0 54 3.8805316230776521 56 0
		 60 4.2936630826812232 65 0 70 6.2296450976401321 77 16.561271890341803 85 4.2936630826812232
		 89 0 94 6.2296450976401321 95 4.2936630826812232 100 0 105 6.2296450976401321 107 9.6861690588802034
		 112 16.561271890341803 119 4.2936630826812232;
	setAttr -s 29 ".kit[15:28]"  1 1 18 18 18 18 18 18 
		18 18 18 18 18 18;
	setAttr -s 29 ".kot[10:28]"  1 18 18 18 18 18 1 18 
		18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 29 ".kix[15:28]"  1 0.86574516740373331 1 0.86574516740373331 
		1 0.86574516740373331 1 1 0.91702690727663871 1 0.86517421429876518 0.85057125481717077 
		1 1;
	setAttr -s 29 ".kiy[15:28]"  0 -0.50048506982434737 0 0.50048506982434737 
		0 -0.50048506982434737 0 0 -0.3988253393788353 0 0.50147141385378524 0.52585981067081322 
		0 0;
	setAttr -s 29 ".kox[10:28]"  1 0.54420071503145229 1 1 1 1 0.8657451674037332 
		1 0.8657451674037332 1 0.8657451674037332 1 1 0.9170269072766386 1 0.86517421429876518 
		0.85057125481717077 1 1;
	setAttr -s 29 ".koy[10:28]"  0 0.83895505347977728 0 0 0 0 -0.50048506982434726 
		0 0.50048506982434726 0 -0.50048506982434726 0 0 -0.3988253393788353 0 0.50147141385378524 
		0.52585981067081322 0 0;
createNode animCurveTA -n "LeftFoot_Control_rotateZ";
	rename -uid "28487233-004E-70C7-0D10-BD9034D2B533";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 29 ".ktv[0:28]"  0 0 5 0.66484270694785397 10 0 12 1.4492270050085139
		 18 28.912276506428629 21 0 24 -2.8335094227766007 26 0 30 0 35 0.66484270694785397
		 40 0 42 1.4492270050085139 48 28.912276506428629 51 0 54 -2.8335094227766007 56 0
		 60 0 65 0 70 0 77 0 85 0 89 0 94 0 95 0 100 0 105 0 107 0 112 0 119 0;
	setAttr -s 29 ".kit[15:28]"  1 1 18 18 18 18 18 18 
		18 18 18 18 18 18;
	setAttr -s 29 ".kot[10:28]"  1 18 18 18 18 18 1 18 
		18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 29 ".kix[15:28]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 29 ".kiy[15:28]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 29 ".kox[10:28]"  1 0.73939321318792828 1 0.64432694971133997 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 29 ".koy[10:28]"  0 0.67327384940426038 0 -0.76475014342965653 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LeftFoot_Control_scaleX";
	rename -uid "B8DBCCF2-3A42-DEA6-DB92-BEA9CAC5326B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 1 5 1 10 1 26 1 30 1 35 1 40 1 56 1 60 1
		 65 1 70 1 77 1 85 1 89 1 94 1 95 1 100 1 105 1 107 1 112 1 119 1;
	setAttr -s 21 ".kit[7:20]"  1 1 18 18 18 18 18 18 
		18 18 18 18 18 18;
	setAttr -s 21 ".kot[6:20]"  1 18 1 18 18 18 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 21 ".kix[7:20]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 21 ".kiy[7:20]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 21 ".kox[6:20]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 21 ".koy[6:20]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LeftFoot_Control_scaleY";
	rename -uid "94E6F7E0-7340-5F7F-D1DE-999DDAAE9733";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 1 5 1 10 1 26 1 30 1 35 1 40 1 56 1 60 1
		 65 1 70 1 77 1 85 1 89 1 94 1 95 1 100 1 105 1 107 1 112 1 119 1;
	setAttr -s 21 ".kit[7:20]"  1 1 18 18 18 18 18 18 
		18 18 18 18 18 18;
	setAttr -s 21 ".kot[6:20]"  1 18 1 18 18 18 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 21 ".kix[7:20]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 21 ".kiy[7:20]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 21 ".kox[6:20]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 21 ".koy[6:20]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LeftFoot_Control_scaleZ";
	rename -uid "79C9C469-9D43-F771-FBE2-66BBE99C4C80";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 1 5 1 10 1 26 1 30 1 35 1 40 1 56 1 60 1
		 65 1 70 1 77 1 85 1 89 1 94 1 95 1 100 1 105 1 107 1 112 1 119 1;
	setAttr -s 21 ".kit[7:20]"  1 1 18 18 18 18 18 18 
		18 18 18 18 18 18;
	setAttr -s 21 ".kot[6:20]"  1 18 1 18 18 18 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 21 ".kix[7:20]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 21 ".kiy[7:20]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 21 ".kox[6:20]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 21 ".koy[6:20]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LeftHip_Control_visibility";
	rename -uid "D966E4D1-E44F-B168-E683-DAACD9E798A9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 1 5 1 10 1 15 1 22 1 26 1 30 1 35 1 40 1
		 45 1 52 1 56 1 60 1 65 1 70 1 85 1 89 1 94 1 95 1 100 1 105 1 107 1 119 1;
	setAttr -s 23 ".kit[11:22]"  1 1 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 23 ".kot[8:22]"  1 18 18 18 5 18 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 23 ".kix[11:22]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".kiy[11:22]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 23 ".kox[8:22]"  1 1 1 1 0 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".koy[8:22]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LeftHip_Control_rotateX";
	rename -uid "2236C0D9-AD45-A66F-11EF-B6B914EAC5B2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 0 5 0 10 0 15 0 22 0 26 0 30 0 35 0 40 0
		 45 0 52 0 56 0 60 0 65 0 70 0 85 0 89 0 94 0 95 0 100 0 105 0 107 0 119 0;
	setAttr -s 23 ".kit[11:22]"  1 1 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 23 ".kot[8:22]"  1 18 18 18 1 18 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 23 ".kix[11:22]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".kiy[11:22]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 23 ".kox[8:22]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".koy[8:22]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LeftHip_Control_rotateY";
	rename -uid "708A88B8-F54A-1345-0999-488CC0FE44CF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 0 5 0 10 0 15 0 22 0 26 0 30 0 35 0 40 0
		 45 0 52 0 56 0 60 0 65 0 70 0 85 0 89 0 94 0 95 0 100 0 105 0 107 0 119 0;
	setAttr -s 23 ".kit[11:22]"  1 1 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 23 ".kot[8:22]"  1 18 18 18 1 18 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 23 ".kix[11:22]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".kiy[11:22]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 23 ".kox[8:22]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".koy[8:22]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LeftHip_Control_rotateZ";
	rename -uid "D71BC092-CD48-64A4-B890-7F9CEEE3114E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 0 5 0 10 0 15 0 22 0 26 0 30 0 35 0 40 0
		 45 0 52 0 56 0 60 0 65 0 70 0 85 0 89 0 94 0 95 0 100 0 105 0 107 0 119 0;
	setAttr -s 23 ".kit[11:22]"  1 1 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 23 ".kot[8:22]"  1 18 18 18 1 18 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 23 ".kix[11:22]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".kiy[11:22]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 23 ".kox[8:22]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".koy[8:22]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LeftHip_Control_scaleX";
	rename -uid "C7DB329A-0C47-7F40-261C-5B9209508046";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 1 5 1 10 1 15 1 22 1 26 1 30 1 35 1 40 1
		 45 1 52 1 56 1 60 1 65 1 70 1 85 1 89 1 94 1 95 1 100 1 105 1 107 1 119 1;
	setAttr -s 23 ".kit[11:22]"  1 1 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 23 ".kot[8:22]"  1 18 18 18 1 18 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 23 ".kix[11:22]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".kiy[11:22]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 23 ".kox[8:22]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".koy[8:22]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LeftHip_Control_scaleY";
	rename -uid "E7F211E4-EF45-8E84-BB76-A3913D84CEFA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 1 5 1 10 1 15 1 22 1 26 1 30 1 35 1 40 1
		 45 1 52 1 56 1 60 1 65 1 70 1 85 1 89 1 94 1 95 1 100 1 105 1 107 1 119 1;
	setAttr -s 23 ".kit[11:22]"  1 1 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 23 ".kot[8:22]"  1 18 18 18 1 18 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 23 ".kix[11:22]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".kiy[11:22]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 23 ".kox[8:22]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".koy[8:22]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LeftHip_Control_scaleZ";
	rename -uid "EE566DF9-C046-5181-9FEA-7FAB10361E78";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 1 5 1 10 1 15 1 22 1 26 1 30 1 35 1 40 1
		 45 1 52 1 56 1 60 1 65 1 70 1 85 1 89 1 94 1 95 1 100 1 105 1 107 1 119 1;
	setAttr -s 23 ".kit[11:22]"  1 1 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 23 ".kot[8:22]"  1 18 18 18 1 18 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 23 ".kix[11:22]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".kiy[11:22]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 23 ".kox[8:22]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".koy[8:22]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RightKnee_Control_visibility";
	rename -uid "F8455042-7A49-6C9A-A97A-638686B0FD05";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 1 10 1 26 1 30 1 40 1 56 1 60 1 65 1 70 1
		 85 1 89 1 94 1 95 1 100 1 105 1 107 1 119 1;
	setAttr -s 17 ".kit[0:16]"  9 9 1 9 9 1 1 18 
		18 18 18 18 18 18 18 18 18;
	setAttr -s 17 ".kot[0:16]"  5 5 5 5 5 5 5 18 
		18 18 18 18 18 18 18 18 18;
	setAttr -s 17 ".kix[2:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[2:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RightKnee_Control_rotateX";
	rename -uid "DC6D1C97-4244-7544-46AF-2B99A7A09D45";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 10 0 26 0 30 0 40 0 56 0 60 0 65 0 70 0
		 85 0 89 0 94 0 95 0 100 0 105 0 107 0 119 0;
	setAttr -s 17 ".kit[2:16]"  1 18 18 1 1 18 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 17 ".kot[2:16]"  1 18 1 1 1 18 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 17 ".kix[2:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[2:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[2:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[2:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RightKnee_Control_rotateY";
	rename -uid "CB66F226-9B45-7552-67B4-B8AD57D4E822";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 10 0 26 0 30 0 40 0 56 0 60 0 65 0 70 0
		 85 0 89 0 94 0 95 0 100 0 105 0 107 0 119 0;
	setAttr -s 17 ".kit[2:16]"  1 18 18 1 1 18 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 17 ".kot[2:16]"  1 18 1 1 1 18 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 17 ".kix[2:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[2:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[2:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[2:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RightKnee_Control_rotateZ";
	rename -uid "BEC83556-BA48-1F62-94FA-2E86D2D59CAC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 10 0 26 0 30 0 40 0 56 0 60 0 65 0 70 0
		 85 0 89 0 94 0 95 0 100 0 105 0 107 0 119 0;
	setAttr -s 17 ".kit[2:16]"  1 18 18 1 1 18 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 17 ".kot[2:16]"  1 18 1 1 1 18 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 17 ".kix[2:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[2:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[2:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[2:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RightKnee_Control_scaleX";
	rename -uid "52C44301-6C45-E1C7-2E38-748600B226E9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 1 10 1 26 1 30 1 40 1 56 1 60 1 65 1 70 1
		 85 1 89 1 94 1 95 1 100 1 105 1 107 1 119 1;
	setAttr -s 17 ".kit[2:16]"  1 18 18 1 1 18 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 17 ".kot[2:16]"  1 18 1 1 1 18 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 17 ".kix[2:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[2:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[2:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[2:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RightKnee_Control_scaleY";
	rename -uid "E64BDA13-7E41-BB52-F682-BD82F2E4A8B5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 1 10 1 26 1 30 1 40 1 56 1 60 1 65 1 70 1
		 85 1 89 1 94 1 95 1 100 1 105 1 107 1 119 1;
	setAttr -s 17 ".kit[2:16]"  1 18 18 1 1 18 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 17 ".kot[2:16]"  1 18 1 1 1 18 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 17 ".kix[2:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[2:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[2:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[2:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RightKnee_Control_scaleZ";
	rename -uid "F8ED0690-8846-DD9F-B966-AEB1F60DC53B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 1 10 1 26 1 30 1 40 1 56 1 60 1 65 1 70 1
		 85 1 89 1 94 1 95 1 100 1 105 1 107 1 119 1;
	setAttr -s 17 ".kit[2:16]"  1 18 18 1 1 18 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 17 ".kot[2:16]"  1 18 1 1 1 18 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 17 ".kix[2:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[2:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[2:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[2:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RightToes_Control_visibility";
	rename -uid "E1F101AB-6742-4171-1B97-4BB0AD3FD726";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 1 5 1 10 1 18 1 22 1 26 1 30 1 35 1 40 1
		 48 1 52 1 56 1 60 1 65 1 70 1 85 1 89 1 94 1 95 1 100 1 105 1 107 1 119 1;
	setAttr -s 23 ".kit[2:22]"  1 18 18 18 18 18 1 18 
		18 1 1 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 23 ".kot[2:22]"  1 18 18 18 18 18 1 18 
		18 18 5 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 23 ".kix[2:22]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1;
	setAttr -s 23 ".kiy[2:22]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0;
	setAttr -s 23 ".kox[2:22]"  1 1 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 1 1 
		1;
	setAttr -s 23 ".koy[2:22]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0;
createNode animCurveTA -n "RightToes_Control_rotateX";
	rename -uid "0B6D61CD-1F47-F541-109B-098FA4F75B17";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 0 5 -30.847518427111311 10 25.235123827155896
		 13 37.473928348595052 16 -23.743346303530284 18 0 20 -41.644149876600267 22 50.303341928009054
		 26 25.235123827155896 30 0 35 -30.847518427111311 40 25.235123827155896 43 37.473928348595052
		 46 -23.743346303530284 48 0 50 -41.644149876600267 52 50.303341928009054 56 25.235123827155896
		 60 -26.625138267804008 65 -33.576267866620718 70 30.865712134874588 78 0 85 -26.625138267804008
		 89 -33.576267866620718 94 30.865712134874588 95 -26.625138267804008 100 -33.576267866620718
		 105 30.865712134874588 107 27.480215873867415 110 -23.978517915077042 113 0 119 -26.625138267804008;
	setAttr -s 32 ".kit[2:31]"  1 18 18 18 18 18 18 18 
		18 1 18 18 18 18 18 1 1 18 18 18 18 18 18 18 18 
		18 18 18 18 18;
	setAttr -s 32 ".kot[2:31]"  1 18 18 18 18 18 18 18 
		18 1 18 18 18 18 18 18 1 18 18 18 18 18 18 18 18 
		18 18 18 18 18;
	setAttr -s 32 ".kix[2:31]"  0.33182912619039828 1 1 1 1 1 0.35494691625654318 
		0.35775556939520375 1 0.33182912619039828 1 1 1 1 1 0.35494691625654318 0.61606797783336176 
		1 1 0.52870391117526605 0.61606797783336176 1 1 0.49677877993349573 1 1 0.42544131405177221 
		1 1 1;
	setAttr -s 32 ".kiy[2:31]"  -0.94333950993887494 0 0 0 0 0 -0.9348864565496553 
		-0.93381526683103311 0 -0.94333950993887494 0 0 0 0 0 -0.9348864565496553 -0.78769299012261906 
		0 0 -0.84880632320216376 -0.78769299012261906 0 0 -0.86787720548922542 0 0 -0.90498601552615232 
		0 0 0;
	setAttr -s 32 ".kox[2:31]"  0.33182912619039828 1 1 1 1 1 0.35494691625654323 
		0.35775556939520381 1 0.33182912619039828 1 1 1 1 1 0.24094980584126083 0.61606797783336176 
		1 1 0.52870391117526605 0.61606797783336176 1 1 0.49677877993349567 1 1 0.42544131405177227 
		1 1 1;
	setAttr -s 32 ".koy[2:31]"  -0.94333950993887494 0 0 0 0 0 -0.9348864565496553 
		-0.93381526683103311 0 -0.94333950993887494 0 0 0 0 0 -0.97053757838893528 -0.78769299012261895 
		0 0 -0.84880632320216387 -0.78769299012261895 0 0 -0.86787720548922553 0 0 -0.90498601552615243 
		0 0 0;
createNode animCurveTA -n "RightToes_Control_rotateY";
	rename -uid "F7E521DA-084C-1E93-612F-AFB8699C4665";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 0 5 0 10 0 18 0 22 0 26 0 30 0 35 0 40 0
		 48 0 52 0 56 0 60 0 65 0 70 0 85 0 89 0 94 0 95 0 100 0 105 0 107 0 119 0;
	setAttr -s 23 ".kit[2:22]"  1 18 18 18 18 18 1 18 
		18 1 1 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 23 ".kot[2:22]"  1 18 18 18 18 18 1 18 
		18 18 1 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 23 ".kix[2:22]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1;
	setAttr -s 23 ".kiy[2:22]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0;
	setAttr -s 23 ".kox[2:22]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1;
	setAttr -s 23 ".koy[2:22]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0;
createNode animCurveTA -n "RightToes_Control_rotateZ";
	rename -uid "26308A00-374F-237D-D0E0-8EBE79B7B8EF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 0 5 0 10 0 18 0 22 0 26 0 30 0 35 0 40 0
		 48 0 52 0 56 0 60 0 65 0 70 0 85 0 89 0 94 0 95 0 100 0 105 0 107 0 119 0;
	setAttr -s 23 ".kit[2:22]"  1 18 18 18 18 18 1 18 
		18 1 1 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 23 ".kot[2:22]"  1 18 18 18 18 18 1 18 
		18 18 1 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 23 ".kix[2:22]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1;
	setAttr -s 23 ".kiy[2:22]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0;
	setAttr -s 23 ".kox[2:22]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1;
	setAttr -s 23 ".koy[2:22]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0;
createNode animCurveTU -n "RightToes_Control_scaleX";
	rename -uid "89177C78-644D-1436-8A41-56951BEDEE26";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 1 5 1 10 1 18 1 22 1 26 1 30 1 35 1 40 1
		 48 1 52 1 56 1 60 1 65 1 70 1 85 1 89 1 94 1 95 1 100 1 105 1 107 1 119 1;
	setAttr -s 23 ".kit[2:22]"  1 18 18 18 18 18 1 18 
		18 1 1 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 23 ".kot[2:22]"  1 18 18 18 18 18 1 18 
		18 18 1 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 23 ".kix[2:22]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1;
	setAttr -s 23 ".kiy[2:22]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0;
	setAttr -s 23 ".kox[2:22]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1;
	setAttr -s 23 ".koy[2:22]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0;
createNode animCurveTU -n "RightToes_Control_scaleY";
	rename -uid "F116DB67-4943-064C-258A-85885325CFA1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 1 5 1 10 1 18 1 22 1 26 1 30 1 35 1 40 1
		 48 1 52 1 56 1 60 1 65 1 70 1 85 1 89 1 94 1 95 1 100 1 105 1 107 1 119 1;
	setAttr -s 23 ".kit[2:22]"  1 18 18 18 18 18 1 18 
		18 1 1 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 23 ".kot[2:22]"  1 18 18 18 18 18 1 18 
		18 18 1 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 23 ".kix[2:22]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1;
	setAttr -s 23 ".kiy[2:22]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0;
	setAttr -s 23 ".kox[2:22]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1;
	setAttr -s 23 ".koy[2:22]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0;
createNode animCurveTU -n "RightToes_Control_scaleZ";
	rename -uid "5087B70C-F349-CC71-CCC2-13A7C9867993";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 1 5 1 10 1 18 1 22 1 26 1 30 1 35 1 40 1
		 48 1 52 1 56 1 60 1 65 1 70 1 85 1 89 1 94 1 95 1 100 1 105 1 107 1 119 1;
	setAttr -s 23 ".kit[2:22]"  1 18 18 18 18 18 1 18 
		18 1 1 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 23 ".kot[2:22]"  1 18 18 18 18 18 1 18 
		18 18 1 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 23 ".kix[2:22]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1;
	setAttr -s 23 ".kiy[2:22]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0;
	setAttr -s 23 ".kox[2:22]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1;
	setAttr -s 23 ".koy[2:22]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0;
createNode animCurveTU -n "RightShoulder_Control_visibility";
	rename -uid "E926CEE3-794A-C737-F1CC-D3B676FFE0DD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 1 5 1 10 1 15 1 22 1 26 1 30 1 35 1 40 1
		 45 1 52 1 56 1 60 1 65 1 70 1 85 1 89 1 94 1 95 1 100 1 105 1 107 1 119 1;
	setAttr -s 23 ".kit[11:22]"  1 1 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 23 ".kot[8:22]"  1 18 18 18 5 18 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 23 ".kix[11:22]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".kiy[11:22]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 23 ".kox[8:22]"  1 1 1 1 0 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".koy[8:22]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RightShoulder_Control_rotateX";
	rename -uid "9C851AB1-1842-ED69-EE0D-3E90A0B49B8A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 0 5 0 10 0 15 0 22 0 26 0 30 0 35 0 40 0
		 45 0 52 0 56 0 60 0 65 0 70 0 85 0 89 0 94 0 95 0 100 0 105 0 107 0 119 0;
	setAttr -s 23 ".kit[11:22]"  1 1 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 23 ".kot[8:22]"  1 18 18 18 1 18 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 23 ".kix[11:22]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".kiy[11:22]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 23 ".kox[8:22]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".koy[8:22]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RightShoulder_Control_rotateY";
	rename -uid "97A7C5BB-BA4F-07A4-5980-E5AEF73F7E69";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 0 5 0 10 0 15 0 22 0 26 0 30 0 35 0 40 0
		 45 0 52 0 56 0 60 0 65 0 70 0 85 0 89 0 94 0 95 0 100 0 105 0 107 0 119 0;
	setAttr -s 23 ".kit[11:22]"  1 1 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 23 ".kot[8:22]"  1 18 18 18 1 18 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 23 ".kix[11:22]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".kiy[11:22]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 23 ".kox[8:22]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".koy[8:22]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RightShoulder_Control_rotateZ";
	rename -uid "02E9D432-3C40-E8A0-2566-10BB0D8714E1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 0 5 0 10 0 15 0 22 0 26 0 30 0 35 0 40 0
		 45 0 52 0 56 0 60 0 65 0 70 0 85 0 89 0 94 0 95 0 100 0 105 0 107 0 119 0;
	setAttr -s 23 ".kit[11:22]"  1 1 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 23 ".kot[8:22]"  1 18 18 18 1 18 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 23 ".kix[11:22]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".kiy[11:22]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 23 ".kox[8:22]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".koy[8:22]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RightShoulder_Control_scaleX";
	rename -uid "DA3B417E-B14D-88F4-B0A3-5EB3C9CD403C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 1 5 1 10 1 15 1 22 1 26 1 30 1 35 1 40 1
		 45 1 52 1 56 1 60 1 65 1 70 1 85 1 89 1 94 1 95 1 100 1 105 1 107 1 119 1;
	setAttr -s 23 ".kit[11:22]"  1 1 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 23 ".kot[8:22]"  1 18 18 18 1 18 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 23 ".kix[11:22]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".kiy[11:22]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 23 ".kox[8:22]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".koy[8:22]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RightShoulder_Control_scaleY";
	rename -uid "73E4F2BA-0F48-004D-F8DC-FFBB8E4FCBA2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 1 5 1 10 1 15 1 22 1 26 1 30 1 35 1 40 1
		 45 1 52 1 56 1 60 1 65 1 70 1 85 1 89 1 94 1 95 1 100 1 105 1 107 1 119 1;
	setAttr -s 23 ".kit[11:22]"  1 1 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 23 ".kot[8:22]"  1 18 18 18 1 18 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 23 ".kix[11:22]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".kiy[11:22]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 23 ".kox[8:22]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".koy[8:22]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RightShoulder_Control_scaleZ";
	rename -uid "94D51CF8-2547-4E3F-DE1D-B0937D0CCE39";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 1 5 1 10 1 15 1 22 1 26 1 30 1 35 1 40 1
		 45 1 52 1 56 1 60 1 65 1 70 1 85 1 89 1 94 1 95 1 100 1 105 1 107 1 119 1;
	setAttr -s 23 ".kit[11:22]"  1 1 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 23 ".kot[8:22]"  1 18 18 18 1 18 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 23 ".kix[11:22]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".kiy[11:22]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 23 ".kox[8:22]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".koy[8:22]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "Neck_Control_visibility";
	rename -uid "DC25A4C8-E44B-56CB-4767-CDA4810FC1AA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 1 5 1 10 1 26 1 30 1 35 1 40 1 56 1 60 1
		 65 1 70 1 85 1 89 1 94 1 95 1 100 1 105 1 107 1 119 1;
	setAttr -s 19 ".kit[7:18]"  1 1 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 19 ".kot[6:18]"  1 18 5 18 18 18 18 18 
		18 18 18 18 18;
	setAttr -s 19 ".kix[7:18]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 19 ".kiy[7:18]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 19 ".kox[6:18]"  1 1 0 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 19 ".koy[6:18]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Neck_Control_rotateX";
	rename -uid "FAEE2B35-484B-86EB-8932-D4B94F51BD7D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 25 ".ktv[0:24]"  0 0 5 0 10 -17.407046943141975 14 -20.904363308840338
		 18 -15.882628271243634 22 -22.396426650103223 26 -17.219701641827143 30 0 35 0 40 -17.407046943141975
		 44 -20.904363308840338 48 -15.882628271243634 52 -22.396426650103223 56 -17.219701641827143
		 60 0 65 0 70 0 85 0 89 0 94 0 95 0 100 0 105 0 107 0 119 0;
	setAttr -s 25 ".kit[13:24]"  1 1 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 25 ".kot[9:24]"  1 18 18 18 18 1 18 18 
		18 18 18 18 18 18 18 18;
	setAttr -s 25 ".kix[13:24]"  0.64886318931647513 1 1 1 1 1 1 1 1 1 1 
		1;
	setAttr -s 25 ".kiy[13:24]"  0.76090509365495262 0 0 0 0 0 0 0 0 0 0 
		0;
	setAttr -s 25 ".kox[9:24]"  0.71674016187717582 1 1 1 0.64886318931647524 
		1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 25 ".koy[9:24]"  -0.69734033323211686 0 0 0 0.76090509365495262 
		0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Neck_Control_rotateY";
	rename -uid "1E4FB279-1F48-B407-1F3C-6EA2634F9821";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 25 ".ktv[0:24]"  0 0 5 0 10 0 14 -0.91574386851465839 18 -0.5777435850949616
		 22 5.1310184429933878 26 0.062659147366653317 30 0 35 0 40 0 44 -0.91574386851465839
		 48 -0.5777435850949616 52 5.1310184429933878 56 0.062659147366653317 60 0 65 0 70 0
		 85 0 89 0 94 0 95 0 100 0 105 0 107 0 119 0;
	setAttr -s 25 ".kit[13:24]"  1 1 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 25 ".kot[9:24]"  1 18 18 18 18 1 18 18 
		18 18 18 18 18 18 18 18;
	setAttr -s 25 ".kix[13:24]"  0.99980630762783085 1 1 1 1 1 1 1 1 1 1 
		1;
	setAttr -s 25 ".kiy[13:24]"  -0.019681138879736097 0 0 0 0 0 0 0 0 0 
		0 0;
	setAttr -s 25 ".kox[9:24]"  1 1 0.99440950743459566 1 0.99980630762783085 
		1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 25 ".koy[9:24]"  0 0 0.10559228912986555 0 -0.019681138879736125 
		0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Neck_Control_rotateZ";
	rename -uid "8AA386E1-4C45-B33A-3719-D59839B2E7B1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 25 ".ktv[0:24]"  0 0 5 0 10 0 14 0.49396533524405095 18 2.0561737760710286
		 22 -1.1089626815478439 26 -0.029111857416793147 30 0 35 0 40 0 44 0.49396533524405095
		 48 2.0561737760710286 52 -1.1089626815478439 56 -0.029111857416793147 60 0 65 0 70 0
		 85 0 89 0 94 0 95 0 100 0 105 0 107 0 119 0;
	setAttr -s 25 ".kit[13:24]"  1 1 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 25 ".kot[9:24]"  1 18 18 18 18 1 18 18 
		18 18 18 18 18 18 18 18;
	setAttr -s 25 ".kix[13:24]"  0.99995818016289006 1 1 1 1 1 1 1 1 1 1 
		1;
	setAttr -s 25 ".kiy[13:24]"  0.0091453772651125392 0 0 0 0 0 0 0 0 0 
		0 0;
	setAttr -s 25 ".kox[9:24]"  1 0.99425445281702152 1 1 0.99995818016289006 
		1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 25 ".koy[9:24]"  0 0.1070424357604257 0 0 0.0091453772651125514 
		0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "Neck_Control_scaleX";
	rename -uid "F727A271-EC4E-30A6-EEED-EDB420ED03E3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 1 5 1 10 1 26 1 30 1 35 1 40 1 56 1 60 1
		 65 1 70 1 85 1 89 1 94 1 95 1 100 1 105 1 107 1 119 1;
	setAttr -s 19 ".kit[7:18]"  1 1 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 19 ".kot[6:18]"  1 18 1 18 18 18 18 18 
		18 18 18 18 18;
	setAttr -s 19 ".kix[7:18]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 19 ".kiy[7:18]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 19 ".kox[6:18]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 19 ".koy[6:18]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "Neck_Control_scaleY";
	rename -uid "F042856E-5148-DBB0-4036-AA9409C862E9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 1 5 1 10 1 26 1 30 1 35 1 40 1 56 1 60 1
		 65 1 70 1 85 1 89 1 94 1 95 1 100 1 105 1 107 1 119 1;
	setAttr -s 19 ".kit[7:18]"  1 1 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 19 ".kot[6:18]"  1 18 1 18 18 18 18 18 
		18 18 18 18 18;
	setAttr -s 19 ".kix[7:18]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 19 ".kiy[7:18]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 19 ".kox[6:18]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 19 ".koy[6:18]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "Neck_Control_scaleZ";
	rename -uid "4312FFCF-6E4F-A671-94B6-C58FE915129D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 1 5 1 10 1 26 1 30 1 35 1 40 1 56 1 60 1
		 65 1 70 1 85 1 89 1 94 1 95 1 100 1 105 1 107 1 119 1;
	setAttr -s 19 ".kit[7:18]"  1 1 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 19 ".kot[6:18]"  1 18 1 18 18 18 18 18 
		18 18 18 18 18;
	setAttr -s 19 ".kix[7:18]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 19 ".kiy[7:18]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 19 ".kox[6:18]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 19 ".koy[6:18]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RootMotion_Control_visibility";
	rename -uid "3E9E05FE-D849-0189-3CA5-ADA75624CBCD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 1 5 1 10 1 15 1 22 1 26 1 30 1 35 1 40 1
		 45 1 52 1 56 1 60 1 65 1 70 1 85 1 89 1 94 1 95 1 100 1 105 1 107 1 119 1;
	setAttr -s 23 ".kit[11:22]"  1 1 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 23 ".kot[8:22]"  1 18 18 18 5 18 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 23 ".kix[11:22]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".kiy[11:22]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 23 ".kox[8:22]"  1 1 1 1 0 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".koy[8:22]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RootMotion_Control_rotateX";
	rename -uid "CD244A4A-7845-0207-7DE2-BF8C9E170712";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 0 5 0 10 0 15 0 22 0 26 0 30 0 35 0 40 0
		 45 0 52 0 56 0 60 0 65 0 70 0 85 0 89 0 94 0 95 0 100 0 105 0 107 0 119 0;
	setAttr -s 23 ".kit[11:22]"  1 1 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 23 ".kot[8:22]"  1 18 18 18 1 18 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 23 ".kix[11:22]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".kiy[11:22]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 23 ".kox[8:22]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".koy[8:22]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RootMotion_Control_rotateY";
	rename -uid "FEA9AFED-C24F-8C24-226E-A9AE28F50D97";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 0 5 0 10 0 15 0 22 0 26 0 30 0 35 0 40 0
		 45 0 52 0 56 0 60 0 65 0 70 0 85 0 89 0 94 0 95 0 100 0 105 0 107 0 119 0;
	setAttr -s 23 ".kit[11:22]"  1 1 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 23 ".kot[8:22]"  1 18 18 18 1 18 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 23 ".kix[11:22]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".kiy[11:22]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 23 ".kox[8:22]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".koy[8:22]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RootMotion_Control_rotateZ";
	rename -uid "9762EFC6-AF4B-2B05-04EE-25A1F1C72D9D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 0 5 0 10 0 15 0 22 0 26 0 30 0 35 0 40 0
		 45 0 52 0 56 0 60 0 65 0 70 0 85 0 89 0 94 0 95 0 100 0 105 0 107 0 119 0;
	setAttr -s 23 ".kit[11:22]"  1 1 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 23 ".kot[8:22]"  1 18 18 18 1 18 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 23 ".kix[11:22]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".kiy[11:22]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 23 ".kox[8:22]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".koy[8:22]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RootMotion_Control_scaleX";
	rename -uid "332CB48D-0B42-552F-3AB4-5C8EE78F046E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 1 5 1 10 1 15 1 22 1 26 1 30 1 35 1 40 1
		 45 1 52 1 56 1 60 1 65 1 70 1 85 1 89 1 94 1 95 1 100 1 105 1 107 1 119 1;
	setAttr -s 23 ".kit[11:22]"  1 1 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 23 ".kot[8:22]"  1 18 18 18 1 18 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 23 ".kix[11:22]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".kiy[11:22]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 23 ".kox[8:22]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".koy[8:22]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RootMotion_Control_scaleY";
	rename -uid "A4CE9692-CA44-0B74-BA33-8AB661CBE16A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 1 5 1 10 1 15 1 22 1 26 1 30 1 35 1 40 1
		 45 1 52 1 56 1 60 1 65 1 70 1 85 1 89 1 94 1 95 1 100 1 105 1 107 1 119 1;
	setAttr -s 23 ".kit[11:22]"  1 1 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 23 ".kot[8:22]"  1 18 18 18 1 18 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 23 ".kix[11:22]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".kiy[11:22]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 23 ".kox[8:22]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".koy[8:22]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RootMotion_Control_scaleZ";
	rename -uid "6DA6FBB8-714B-6AF1-6261-BEA997613D1B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 1 5 1 10 1 15 1 22 1 26 1 30 1 35 1 40 1
		 45 1 52 1 56 1 60 1 65 1 70 1 85 1 89 1 94 1 95 1 100 1 105 1 107 1 119 1;
	setAttr -s 23 ".kit[11:22]"  1 1 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 23 ".kot[8:22]"  1 18 18 18 1 18 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 23 ".kix[11:22]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".kiy[11:22]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 23 ".kox[8:22]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".koy[8:22]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "Root_Control_visibility";
	rename -uid "794DC1FC-AB47-B2D2-F3A1-68AFE43C7D91";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 1 5 1 10 1 15 1 22 1 26 1 30 1 35 1 40 1
		 45 1 52 1 56 1 60 1 65 1 70 1 85 1 89 1 94 1 95 1 100 1 105 1 107 1 119 1;
	setAttr -s 23 ".kit[11:22]"  1 1 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 23 ".kot[8:22]"  1 18 18 18 5 18 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 23 ".kix[11:22]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".kiy[11:22]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 23 ".kox[8:22]"  1 1 1 1 0 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".koy[8:22]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Root_Control_rotateX";
	rename -uid "290F0FB0-2944-0E44-5E6F-148FD3110818";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 0 5 0 10 0 15 0 22 0 26 0 30 0 35 0 40 0
		 45 0 52 0 56 0 60 0 65 0 70 0 85 0 89 0 94 0 95 0 100 0 105 0 107 0 119 0;
	setAttr -s 23 ".kit[11:22]"  1 1 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 23 ".kot[8:22]"  1 18 18 18 1 18 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 23 ".kix[11:22]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".kiy[11:22]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 23 ".kox[8:22]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".koy[8:22]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Root_Control_rotateY";
	rename -uid "7CDAAEE5-3041-4C8A-2386-FDB207B43FDD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 0 5 0 10 0 15 0 22 0 26 0 30 0 35 0 40 0
		 45 0 52 0 56 0 60 0 65 0 70 0 85 0 89 0 94 0 95 0 100 0 105 0 107 0 119 0;
	setAttr -s 23 ".kit[11:22]"  1 1 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 23 ".kot[8:22]"  1 18 18 18 1 18 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 23 ".kix[11:22]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".kiy[11:22]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 23 ".kox[8:22]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".koy[8:22]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Root_Control_rotateZ";
	rename -uid "923B20BF-5B46-9B5E-5960-6E94E81FCEFF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 0 5 0 10 0 15 0 22 0 26 0 30 0 35 0 40 0
		 45 0 52 0 56 0 60 0 65 0 70 0 85 0 89 0 94 0 95 0 100 0 105 0 107 0 119 0;
	setAttr -s 23 ".kit[11:22]"  1 1 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 23 ".kot[8:22]"  1 18 18 18 1 18 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 23 ".kix[11:22]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".kiy[11:22]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 23 ".kox[8:22]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".koy[8:22]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "Root_Control_scaleX";
	rename -uid "7A38A02A-D340-355A-76F7-24BC5A5D604B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 1 5 1 10 1 15 1 22 1 26 1 30 1 35 1 40 1
		 45 1 52 1 56 1 60 1 65 1 70 1 85 1 89 1 94 1 95 1 100 1 105 1 107 1 119 1;
	setAttr -s 23 ".kit[11:22]"  1 1 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 23 ".kot[8:22]"  1 18 18 18 1 18 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 23 ".kix[11:22]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".kiy[11:22]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 23 ".kox[8:22]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".koy[8:22]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "Root_Control_scaleY";
	rename -uid "31A86580-4542-EFAB-7BB7-15A9F97D52E4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 1 5 1 10 1 15 1 22 1 26 1 30 1 35 1 40 1
		 45 1 52 1 56 1 60 1 65 1 70 1 85 1 89 1 94 1 95 1 100 1 105 1 107 1 119 1;
	setAttr -s 23 ".kit[11:22]"  1 1 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 23 ".kot[8:22]"  1 18 18 18 1 18 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 23 ".kix[11:22]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".kiy[11:22]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 23 ".kox[8:22]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".koy[8:22]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "Root_Control_scaleZ";
	rename -uid "CA002E35-7142-B094-6BC8-3C81AE978853";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 1 5 1 10 1 15 1 22 1 26 1 30 1 35 1 40 1
		 45 1 52 1 56 1 60 1 65 1 70 1 85 1 89 1 94 1 95 1 100 1 105 1 107 1 119 1;
	setAttr -s 23 ".kit[11:22]"  1 1 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 23 ".kot[8:22]"  1 18 18 18 1 18 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 23 ".kix[11:22]"  1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".kiy[11:22]"  0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 23 ".kox[8:22]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".koy[8:22]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
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
	setAttr -s 24 ".ktv[0:23]"  0 1 5 1 10 1 15 1 16 1 22 1 26 1 30 1 35 1
		 40 1 45 1 46 1 52 1 56 1 60 1 65 1 70 1 77 1 85 1 89 1 94 1 95 1 107 1 119 1;
	setAttr -s 24 ".kit[13:23]"  1 1 18 18 18 18 18 18 
		18 18 18;
	setAttr -s 24 ".kot[9:23]"  1 18 18 18 18 5 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 24 ".kix[13:23]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 24 ".kiy[13:23]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 24 ".kox[9:23]"  1 1 1 1 1 0 1 1 1 1 1 1 1 1 1;
	setAttr -s 24 ".koy[9:23]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Spine1_Control_rotateX";
	rename -uid "14AD5234-5943-CBA8-7AF2-599D698EE2CA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  0 0 5 1.1753117017685739 10 0 13 0.41632925185949882
		 15 -0.29408989115496242 16 -0.54273659121002316 20 1.586670797387574 22 1.1753117017685739
		 26 0 30 0 35 1.1753117017685739 40 0 43 0.41632925185949882 45 -0.29408989115496242
		 46 -0.54273659121002316 50 1.586670797387574 52 1.1753117017685739 56 0 60 9.8232158759723767
		 65 10.025145892344376 70 10.899124244454443 77 11.115567980753182 85 9.8232158759723767
		 89 10.025145892344376 94 10.899124244454443 95 0 101 2.9793547046279967 107 0 113 2.3222037135225149
		 119 0;
	setAttr -s 30 ".kit[17:29]"  1 1 18 18 18 18 18 18 
		18 18 18 18 18;
	setAttr -s 30 ".kot[11:29]"  1 18 18 18 18 18 18 1 
		18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 30 ".kix[17:29]"  1 1 0.99898600259697645 0.99927639355734232 
		1 1 0.99874859765712076 1 1 1 1 1 1;
	setAttr -s 30 ".kiy[17:29]"  0 0 0.045021845978520852 0.03803536879052747 
		0 0 0.050012385245405147 0 0 0 0 0 0;
	setAttr -s 30 ".kox[11:29]"  1 1 0.99115275280929149 1 1 0.99392083331212377 
		1 1 0.99898600259697656 0.99927639355734243 1 1 0.99874859765712065 1 1 1 1 1 1;
	setAttr -s 30 ".koy[11:29]"  0 0 -0.13272611121615685 0 0 -0.11009712579415297 
		0 0 0.045021845978520852 0.03803536879052747 0 0 0.050012385245405147 0 0 0 0 0 0;
createNode animCurveTA -n "Spine1_Control_rotateY";
	rename -uid "606411DE-A742-8ECB-9AE1-D487A7CAFA15";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  0 0 5 2.4661671412388322 10 0 13 -10.902674361264237
		 15 -9.0429078946841077 16 -7.1721039169293501 20 3.3293256406724225 22 2.4661671412388322
		 26 0 30 0 35 2.4661671412388322 40 0 43 -10.902674361264237 45 -9.0429078946841077
		 46 -7.1721039169293501 50 3.3293256406724225 52 2.4661671412388322 56 0 60 4.3601760288496125
		 65 9.4668863703003261 70 2.0575968123919584 77 -10.230424946723813 85 4.3601760288496125
		 89 9.4668863703003261 94 2.0575968123919584 95 0 101 10.38769730613142 107 0 113 -5.984722630445412
		 119 0;
	setAttr -s 30 ".kit[17:29]"  1 1 18 18 18 18 18 18 
		18 18 18 18 18;
	setAttr -s 30 ".kot[11:29]"  1 18 18 18 18 18 18 1 
		18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 30 ".kix[17:29]"  1 0.82401658307743586 1 0.82401658307743575 
		1 0.82401658307743586 1 0.83425893163265374 1 1 0.8682144558414886 1 1;
	setAttr -s 30 ".kiy[17:29]"  0 0.56656568093504145 0 -0.56656568093504145 
		0 0.56656568093504145 0 -0.55137286385090001 0 0 -0.49618913598331416 0 0;
	setAttr -s 30 ".kox[11:29]"  0.84997295142546614 1 0.88689498369999675 
		0.69432400893608082 1 0.97403538977490078 1 0.82401658307743586 1 0.82401658307743597 
		1 0.82401658307743586 1 0.83425893163265374 1 1 0.8682144558414886 1 1;
	setAttr -s 30 ".koy[11:29]"  -0.52682632987074807 0 0.46197108988310348 
		0.71966253939949465 0 -0.22639580266881534 0 0.56656568093504145 0 -0.56656568093504145 
		0 0.56656568093504145 0 -0.55137286385090001 0 0 -0.49618913598331416 0 0;
createNode animCurveTA -n "Spine1_Control_rotateZ";
	rename -uid "A86DD54D-704F-76F9-FC15-F2881A4D812C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  0 0 5 -5.0542151746321879 10 0 13 8.9656790729280615
		 15 4.0818874382600914 16 1.0192286896678908 20 -6.823190485753452 22 -5.0542151746321879
		 26 0 30 0 35 -5.0542151746321879 40 0 43 8.9656790729280615 45 4.0818874382600914
		 46 1.0192286896678908 50 -6.823190485753452 52 -5.0542151746321879 56 0 60 0.71394577400963488
		 65 0.42866365481136565 70 1.3053858752718281 77 2.2703890792190751 85 0.71394577400963488
		 89 0.42866365481136565 94 1.3053858752718281 95 0 101 1.7000420541243484 107 0 113 -0.55653686758780696
		 119 0;
	setAttr -s 30 ".kit[17:29]"  1 1 18 18 18 18 18 18 
		18 18 18 18 18;
	setAttr -s 30 ".kot[11:29]"  1 18 18 18 18 18 18 1 
		18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 30 ".kix[17:29]"  1 0.99793988796314992 1 0.99793988796314981 
		1 0.99793988796314992 1 1 1 1 0.99691204805718081 1 1;
	setAttr -s 30 ".kiy[17:29]"  0 -0.064155903953541996 0 0.064155903953541996 
		0 -0.064155903953541996 0 0 0 0 -0.07852622771047478 0 0;
	setAttr -s 30 ".kox[11:29]"  0.80611788767543235 1 0.66948964955909807 
		0.73828761058175829 1 0.90280511288340082 0.97575734112747314 0.9979398879631497 
		1 0.99793988796314981 1 0.9979398879631497 1 1 1 1 0.99691204805718081 1 1;
	setAttr -s 30 ".koy[11:29]"  0.59175497561887813 0 -0.74282138440760848 
		-0.67448602955248682 0 0.43004991355840294 0.21885522894334553 -0.064155903953541982 
		0 0.064155903953541996 0 -0.064155903953541982 0 0 0 0 -0.07852622771047478 0 0;
createNode animCurveTU -n "Spine1_Control_scaleX";
	rename -uid "7C5732B1-7F49-0441-3086-2F95DCD96B55";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  0 1 5 1 10 1 15 1 16 1 22 1 26 1 30 1 35 1
		 40 1 45 1 46 1 52 1 56 1 60 1 65 1 70 1 77 1 85 1 89 1 94 1 95 1 107 1 119 1;
	setAttr -s 24 ".kit[13:23]"  1 1 18 18 18 18 18 18 
		18 18 18;
	setAttr -s 24 ".kot[9:23]"  1 18 18 18 18 1 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 24 ".kix[13:23]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 24 ".kiy[13:23]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 24 ".kox[9:23]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 24 ".koy[9:23]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "Spine1_Control_scaleY";
	rename -uid "2A978AE8-1645-3A6A-D8C7-F79350CCFFD5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  0 1 5 1 10 1 15 1 16 1 22 1 26 1 30 1 35 1
		 40 1 45 1 46 1 52 1 56 1 60 1 65 1 70 1 77 1 85 1 89 1 94 1 95 1 107 1 119 1;
	setAttr -s 24 ".kit[13:23]"  1 1 18 18 18 18 18 18 
		18 18 18;
	setAttr -s 24 ".kot[9:23]"  1 18 18 18 18 1 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 24 ".kix[13:23]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 24 ".kiy[13:23]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 24 ".kox[9:23]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 24 ".koy[9:23]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "Spine1_Control_scaleZ";
	rename -uid "56E6DB19-484B-8E12-8209-2DB95C3BFF6F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  0 1 5 1 10 1 15 1 16 1 22 1 26 1 30 1 35 1
		 40 1 45 1 46 1 52 1 56 1 60 1 65 1 70 1 77 1 85 1 89 1 94 1 95 1 107 1 119 1;
	setAttr -s 24 ".kit[13:23]"  1 1 18 18 18 18 18 18 
		18 18 18;
	setAttr -s 24 ".kot[9:23]"  1 18 18 18 18 1 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 24 ".kix[13:23]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 24 ".kiy[13:23]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 24 ".kox[9:23]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 24 ".koy[9:23]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "Spine2_Control_visibility";
	rename -uid "952326C6-F241-681F-F00F-1E8F82761E2D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  0 1 5 1 10 1 18 1 26 1 30 1 35 1 40 1 48 1
		 56 1 60 1 65 1 70 1 77 1 85 1 89 1 94 1 95 1 107 1 119 1;
	setAttr -s 20 ".kit[9:19]"  1 1 18 18 18 18 18 18 
		18 18 18;
	setAttr -s 20 ".kot[7:19]"  1 18 18 5 18 18 18 18 
		18 18 18 18 18;
	setAttr -s 20 ".kix[9:19]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 20 ".kiy[9:19]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 20 ".kox[7:19]"  1 1 1 0 1 1 1 1 1 1 1 1 1;
	setAttr -s 20 ".koy[7:19]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Spine2_Control_rotateX";
	rename -uid "759B6A68-A848-A7B4-9546-4393C0DB5451";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  0 0 5 0 10 0 18 0 26 0 30 0 35 0 40 0 48 0
		 56 0 60 9.8232158759723767 65 10.025145892344376 70 10.899124244454443 77 11.115567980753182
		 85 9.8232158759723767 89 10.025145892344376 94 10.899124244454443 95 0 101 2.9793547046279967
		 107 0 113 2.3222037135225149 119 0;
	setAttr -s 22 ".kit[9:21]"  1 1 18 18 18 18 18 18 
		18 18 18 18 18;
	setAttr -s 22 ".kot[7:21]"  1 18 18 1 18 18 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 22 ".kix[9:21]"  1 1 0.99898600259697645 0.99927639355734232 
		1 1 0.99874859765712076 1 1 1 1 1 1;
	setAttr -s 22 ".kiy[9:21]"  0 0 0.045021845978520852 0.03803536879052747 
		0 0 0.050012385245405147 0 0 0 0 0 0;
	setAttr -s 22 ".kox[7:21]"  1 1 1 1 0.99898600259697656 0.99927639355734243 
		1 1 0.99874859765712065 1 1 1 1 1 1;
	setAttr -s 22 ".koy[7:21]"  0 0 0 0 0.045021845978520852 0.03803536879052747 
		0 0 0.050012385245405147 0 0 0 0 0 0;
createNode animCurveTA -n "Spine2_Control_rotateY";
	rename -uid "C4C2F04A-CF40-94EA-E7AA-AD82922877D5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  0 0 5 0 10 0 18 0 26 0 30 0 35 0 40 0 48 0
		 56 0 60 4.3601760288496125 65 9.4668863703003261 70 2.0575968123919584 77 -10.230424946723813
		 85 4.3601760288496125 89 9.4668863703003261 94 2.0575968123919584 95 0 101 10.38769730613142
		 107 0 113 -5.984722630445412 119 0;
	setAttr -s 22 ".kit[9:21]"  1 1 18 18 18 18 18 18 
		18 18 18 18 18;
	setAttr -s 22 ".kot[7:21]"  1 18 18 1 18 18 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 22 ".kix[9:21]"  1 0.82401658307743586 1 0.82401658307743575 
		1 0.82401658307743586 1 0.83425893163265374 1 1 0.8682144558414886 1 1;
	setAttr -s 22 ".kiy[9:21]"  0 0.56656568093504145 0 -0.56656568093504145 
		0 0.56656568093504145 0 -0.55137286385090001 0 0 -0.49618913598331416 0 0;
	setAttr -s 22 ".kox[7:21]"  1 1 1 0.82401658307743586 1 0.82401658307743597 
		1 0.82401658307743586 1 0.83425893163265374 1 1 0.8682144558414886 1 1;
	setAttr -s 22 ".koy[7:21]"  0 0 0 0.56656568093504145 0 -0.56656568093504145 
		0 0.56656568093504145 0 -0.55137286385090001 0 0 -0.49618913598331416 0 0;
createNode animCurveTA -n "Spine2_Control_rotateZ";
	rename -uid "DC9C8DFA-E343-7764-5CAF-1FAC2B24F722";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  0 0 5 0 10 0 18 0 26 0 30 0 35 0 40 0 48 0
		 56 0 60 0.71394577400963488 65 0.42866365481136565 70 1.3053858752718281 77 2.2703890792190751
		 85 0.71394577400963488 89 0.42866365481136565 94 1.3053858752718281 95 0 101 1.7000420541243484
		 107 0 113 -0.55653686758780696 119 0;
	setAttr -s 22 ".kit[9:21]"  1 1 18 18 18 18 18 18 
		18 18 18 18 18;
	setAttr -s 22 ".kot[7:21]"  1 18 18 1 18 18 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 22 ".kix[9:21]"  1 0.99793988796314992 1 0.99793988796314981 
		1 0.99793988796314992 1 1 1 1 0.99691204805718081 1 1;
	setAttr -s 22 ".kiy[9:21]"  0 -0.064155903953541996 0 0.064155903953541996 
		0 -0.064155903953541996 0 0 0 0 -0.07852622771047478 0 0;
	setAttr -s 22 ".kox[7:21]"  1 1 1 0.9979398879631497 1 0.99793988796314981 
		1 0.9979398879631497 1 1 1 1 0.99691204805718081 1 1;
	setAttr -s 22 ".koy[7:21]"  0 0 0 -0.064155903953541982 0 0.064155903953541996 
		0 -0.064155903953541982 0 0 0 0 -0.07852622771047478 0 0;
createNode animCurveTU -n "Spine2_Control_scaleX";
	rename -uid "1249B3CD-D34E-1DB9-C21B-8A9AD9C56709";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  0 1 5 1 10 1 18 1 26 1 30 1 35 1 40 1 48 1
		 56 1 60 1 65 1 70 1 77 1 85 1 89 1 94 1 95 1 107 1 119 1;
	setAttr -s 20 ".kit[9:19]"  1 1 18 18 18 18 18 18 
		18 18 18;
	setAttr -s 20 ".kot[7:19]"  1 18 18 1 18 18 18 18 
		18 18 18 18 18;
	setAttr -s 20 ".kix[9:19]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 20 ".kiy[9:19]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 20 ".kox[7:19]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 20 ".koy[7:19]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "Spine2_Control_scaleY";
	rename -uid "3B820B6E-D74E-B84B-96F8-C188C0A77DC3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  0 1 5 1 10 1 18 1 26 1 30 1 35 1 40 1 48 1
		 56 1 60 1 65 1 70 1 77 1 85 1 89 1 94 1 95 1 107 1 119 1;
	setAttr -s 20 ".kit[9:19]"  1 1 18 18 18 18 18 18 
		18 18 18;
	setAttr -s 20 ".kot[7:19]"  1 18 18 1 18 18 18 18 
		18 18 18 18 18;
	setAttr -s 20 ".kix[9:19]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 20 ".kiy[9:19]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 20 ".kox[7:19]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 20 ".koy[7:19]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "Spine2_Control_scaleZ";
	rename -uid "50D43D14-1F45-568C-26EF-73B7AAA099C3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  0 1 5 1 10 1 18 1 26 1 30 1 35 1 40 1 48 1
		 56 1 60 1 65 1 70 1 77 1 85 1 89 1 94 1 95 1 107 1 119 1;
	setAttr -s 20 ".kit[9:19]"  1 1 18 18 18 18 18 18 
		18 18 18;
	setAttr -s 20 ".kot[7:19]"  1 18 18 1 18 18 18 18 
		18 18 18 18 18;
	setAttr -s 20 ".kix[9:19]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 20 ".kiy[9:19]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 20 ".kox[7:19]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 20 ".koy[7:19]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Hips_Control_translateX";
	rename -uid "7B510578-D84D-D3D9-B6FD-C78CD0E95E88";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  5 0 10 0 14 0 18 0 22 0 26 0 30 0 35 0 40 0
		 44 0 48 0 52 0 56 0 60 0 65 0 70 0 77 0 85 0 89 0 94 0 95 0 107 0 119 0;
	setAttr -s 23 ".kit[12:22]"  1 1 18 18 18 18 18 18 
		18 18 18;
	setAttr -s 23 ".kot[8:22]"  1 18 18 18 18 1 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 23 ".kix[12:22]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".kiy[12:22]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 23 ".kox[8:22]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".koy[8:22]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Hips_Control_translateY";
	rename -uid "AD864590-EE49-EE89-3F9A-E69A12ED42A9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 25 ".ktv[0:24]"  5 -4.25435703918256 10 -14.281483956597226
		 14 -4.25435703918256 18 -14.281483956597226 22 -4.25435703918256 26 -14.281483956597226
		 30 -7.8310227218069866 35 -4.25435703918256 40 -14.281483956597226 44 -4.25435703918256
		 48 -14.281483956597226 52 -4.25435703918256 56 -14.281483956597226 60 -11.930586879687215
		 65 -18.326602672694321 70 -8.4127781935333559 77 -18.326602672694321 83 -9.6919813521347464
		 85 -11.930586879687215 89 -18.326602672694321 95 -7.5153841494633067 100 -12.209585736475921
		 107 -7.5153841494633067 113 -12.089426801844956 119 -7.5153841494633067;
	setAttr -s 25 ".kit[12:24]"  1 1 18 18 18 18 18 18 
		18 18 18 18 18;
	setAttr -s 25 ".kot[8:24]"  1 18 18 18 18 1 18 18 
		18 18 18 18 18 18 18 18 18;
	setAttr -s 25 ".kix[12:24]"  1 0.02894108155005929 1 1 1 1 0.02894108155005929 
		1 1 1 1 1 1;
	setAttr -s 25 ".kiy[12:24]"  0 -0.99958111916878101 0 0 0 0 -0.99958111916878101 
		0 0 0 0 0 0;
	setAttr -s 25 ".kox[8:24]"  1 1 1 1 1 0.028941081550059287 1 1 1 1 
		0.028941081550059287 1 1 1 1 1 1;
	setAttr -s 25 ".koy[8:24]"  0 0 0 0 0 -0.99958111916878112 0 0 0 0 
		-0.99958111916878112 0 0 0 0 0 0;
createNode animCurveTL -n "Hips_Control_translateZ";
	rename -uid "FE98AC6B-B544-3504-4972-71983548FD3E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  5 0.047039538172185758 10 -7.0079273316790376
		 14 0.047039538172185758 18 -7.0079273316790376 22 0.047039538172185758 26 -7.0079273316790376
		 30 2.0398875869225357 35 0.047039538172185758 40 -7.0079273316790376 44 0.047039538172185758
		 48 -7.0079273316790376 52 0.047039538172185758 56 -7.0079273316790376 60 0 65 0 70 0
		 77 0 85 0 89 0 95 9.8139731075508116 100 16.290470400331124 107 9.8139731075508116
		 113 16.310145818734963 119 9.8139731075508116;
	setAttr -s 24 ".kit[12:23]"  1 1 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 24 ".kot[8:23]"  1 18 18 18 18 1 18 18 
		18 18 18 18 18 18 18 18;
	setAttr -s 24 ".kix[12:23]"  1 1 1 1 1 1 1 0.028123929242459638 1 1 
		1 1;
	setAttr -s 24 ".kiy[12:23]"  0 0 0 0 0 0 0 0.9996044440697357 0 0 0 
		0;
	setAttr -s 24 ".kox[8:23]"  1 1 1 1 1 1 1 1 1 1 1 0.028123929242459638 
		1 1 1 1;
	setAttr -s 24 ".koy[8:23]"  0 0 0 0 0 0 0 0 0 0 0 0.99960444406973559 
		0 0 0 0;
createNode animCurveTA -n "Hips_Control_rotateX";
	rename -uid "A33924AF-AF4E-B577-75BE-408BED4A92E5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 25 ".ktv[0:24]"  5 40.073343790824588 10 39.150526938031128
		 14 38.214768494713098 18 39.150526938031128 22 40.073343790824588 26 39.150526938031128
		 30 38.307933549963792 35 40.073343790824588 40 39.150526938031128 44 38.214768494713098
		 48 39.150526938031128 52 40.073343790824588 56 39.150526938031128 60 12.131485038450542
		 65 12.02907938845097 70 12.177659014566419 77 12.424072609877888 85 12.131485038450542
		 89 12.02907938845097 94 12.177659014566419 95 12.131485038450542 100 12.131485038450542
		 107 12.131485038450542 113 12.318133559030793 119 12.131485038450542;
	setAttr -s 25 ".kit[12:24]"  1 1 18 18 18 18 18 18 
		18 18 18 18 18;
	setAttr -s 25 ".kot[8:24]"  1 18 18 18 18 1 18 18 
		18 18 18 18 18 18 18 18 18;
	setAttr -s 25 ".kix[12:24]"  0.99575491648538694 0.9999049609469739 
		1 0.9999049609469739 1 0.9999049609469739 1 1 1 1 1 1 1;
	setAttr -s 25 ".kiy[12:24]"  -0.09204426269561812 -0.013786554088334589 
		0 0.013786554088334591 0 -0.013786554088334589 0 0 0 0 0 0 0;
	setAttr -s 25 ".kox[8:24]"  0.99627956599893164 1 0.99529828556900835 
		1 0.96045188244027691 0.9999049609469739 1 0.99990496094697401 1 0.9999049609469739 
		1 1 1 1 1 1 1;
	setAttr -s 25 ".koy[8:24]"  -0.086180197104558598 0 0.096857228658437322 
		0 -0.27844601185315698 -0.013786554088334589 0 0.013786554088334593 0 -0.013786554088334589 
		0 0 0 0 0 0 0;
createNode animCurveTA -n "Hips_Control_rotateY";
	rename -uid "5CA5F9A4-734C-396D-E3CB-1AB4DA87EF8E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  5 -11.567949219946325 10 0 14 11.387119993290941
		 18 0 22 -11.567949219946325 26 0 30 10.977860793921815 35 -11.567949219946325 40 0
		 44 11.387119993290941 48 0 52 -11.567949219946325 56 0 60 -7.0700569338804016 65 -17.392526056382327
		 70 -2.4157293384666558 77 22.422711987553573 85 -7.0700569338804016 89 -17.392526056382327
		 95 -7.0700569338804016 100 -24.618875288774326 107 -7.0700569338804016 113 12.153676882904284
		 119 -7.0700569338804016;
	setAttr -s 24 ".kit[12:23]"  1 1 18 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 24 ".kot[8:23]"  1 18 18 18 18 1 18 18 
		18 18 18 18 18 18 18 18;
	setAttr -s 24 ".kix[12:23]"  0.64636360149135252 0.5840484928705344 
		1 0.5840484928705344 1 0.5840484928705344 1 1 1 0.64497257851566414 1 1;
	setAttr -s 24 ".kiy[12:23]"  0.76302955032366093 -0.81171876778577534 
		0 0.81171876778577534 0 -0.81171876778577534 0 0 0 0.76420571377270885 0 0;
	setAttr -s 24 ".kox[8:23]"  0.68335759253595374 1 0.63957881960053398 
		1 1 0.5840484928705344 1 0.5840484928705344 1 0.5840484928705344 1 1 1 0.64497257851566414 
		1 1;
	setAttr -s 24 ".koy[8:23]"  0.73008383129847854 0 -0.7687255254760228 
		0 0 -0.81171876778577523 0 0.81171876778577534 0 -0.81171876778577523 0 0 0 0.76420571377270885 
		0 0;
createNode animCurveTA -n "Hips_Control_rotateZ";
	rename -uid "873542D7-C04E-0FB0-0E1C-B3BD3E83F7DF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 25 ".ktv[0:24]"  5 2.2763035284925297 10 0 14 -1.7610202024788499
		 18 0 22 2.2763035284925297 26 0 30 -2.0388577817832512 35 2.2763035284925297 40 0
		 44 -1.7610202024788499 48 0 52 2.2763035284925297 56 0 60 -1.4543319617580643 65 -3.6445429879653317
		 70 -0.46678145440569629 77 4.8034138274055325 85 -1.4543319617580643 89 -3.6445429879653317
		 94 -0.46678145440569629 95 -1.4543319617580643 100 -5.5465169846670426 107 -1.4543319617580643
		 113 2.6934619784296263 119 -1.4543319617580643;
	setAttr -s 25 ".kit[12:24]"  1 1 18 18 18 18 18 18 
		18 18 18 18 18;
	setAttr -s 25 ".kot[8:24]"  1 18 18 18 18 1 18 18 
		18 18 18 18 18 18 18 18 18;
	setAttr -s 25 ".kix[12:24]"  0.97541273027008091 0.9591648967112304 
		1 0.95916489671123051 1 0.9591648967112304 1 1 0.94248899822364196 1 0.96651409505606367 
		1 1;
	setAttr -s 25 ".kiy[12:24]"  -0.22038603773167265 -0.28284748702602008 
		0 0.28284748702602014 0 -0.28284748702602008 0 0 -0.33423717361687344 0 0.25661353054341868 
		0 0;
	setAttr -s 25 ".kox[8:24]"  0.98279991173907189 1 0.97837835589338207 
		1 0.98145115428147489 0.9591648967112304 1 0.95916489671123051 1 0.9591648967112304 
		1 1 0.94248899822364196 1 0.96651409505606389 1 1;
	setAttr -s 25 ".koy[8:24]"  -0.18467358632374184 0 0.20682309522720804 
		0 -0.19171236725772436 -0.28284748702602008 0 0.28284748702602014 0 -0.28284748702602008 
		0 0 -0.33423717361687338 0 0.25661353054341868 0 0;
createNode animCurveTU -n "Hips_Control_scaleX";
	rename -uid "013E26E1-7F4B-7FBC-FEF9-C6ACCDC6F8A6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  5 1 10 1 14 1 18 1 22 1 26 1 30 1 35 1 40 1
		 44 1 48 1 52 1 56 1 60 1 65 1 70 1 77 1 85 1 89 1 94 1 95 1 107 1 119 1;
	setAttr -s 23 ".kit[12:22]"  1 1 18 18 18 18 18 18 
		18 18 18;
	setAttr -s 23 ".kot[8:22]"  1 18 18 18 18 1 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 23 ".kix[12:22]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".kiy[12:22]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 23 ".kox[8:22]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".koy[8:22]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "Hips_Control_scaleY";
	rename -uid "FB056CD0-AD42-4AE9-5E3D-0A8F0CBD00D8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  5 1 10 1 14 1 18 1 22 1 26 1 30 1 35 1 40 1
		 44 1 48 1 52 1 56 1 60 1 65 1 70 1 77 1 85 1 89 1 94 1 95 1 107 1 119 1;
	setAttr -s 23 ".kit[12:22]"  1 1 18 18 18 18 18 18 
		18 18 18;
	setAttr -s 23 ".kot[8:22]"  1 18 18 18 18 1 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 23 ".kix[12:22]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".kiy[12:22]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 23 ".kox[8:22]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".koy[8:22]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "Hips_Control_scaleZ";
	rename -uid "692D2592-9A45-27F6-EA2A-358699DD2D10";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  5 1 10 1 13 1 18 1 22 1 26 1 30 1 35 1 40 1
		 43 1 48 1 52 1 56 1 60 1 65 1 70 1 77 1 85 1 89 1 94 1 95 1 107 1 119 1;
	setAttr -s 23 ".kit[12:22]"  1 1 18 18 18 18 18 18 
		18 18 18;
	setAttr -s 23 ".kot[8:22]"  1 18 18 18 18 1 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 23 ".kix[12:22]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".kiy[12:22]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 23 ".kox[8:22]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 23 ".koy[8:22]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "LeftElbow_Control_translateX";
	rename -uid "208A50F2-6443-5343-D72E-86BF78CB76F4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  10 -20.29566994089592 14 -0.59081151890393357
		 26 -20.29566994089592 40 48.029414262033214 56 48.029414262033214 60 0 65 0 70 0
		 85 0 89 0 94 0 95 0 100 0 105 0 107 0 119 0;
	setAttr -s 16 ".kit[3:15]"  1 1 1 18 18 18 18 18 
		18 18 18 18 18;
	setAttr -s 16 ".kot[3:15]"  1 1 1 18 18 18 18 18 
		18 18 18 18 18;
	setAttr -s 16 ".kix[3:15]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[3:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[3:15]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".koy[3:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "LeftElbow_Control_translateY";
	rename -uid "05EB7EA7-5840-04FD-56CC-2497DDF47F4C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  10 -16.377015827392938 14 -13.876988875231884
		 26 -16.377015827392938 40 -62.889409388137878 56 -62.889409388137878 60 0 65 0 70 0
		 85 0 89 0 94 0 95 0 100 0 105 0 107 0 119 0;
	setAttr -s 16 ".kit[3:15]"  1 1 1 18 18 18 18 18 
		18 18 18 18 18;
	setAttr -s 16 ".kot[3:15]"  1 1 1 18 18 18 18 18 
		18 18 18 18 18;
	setAttr -s 16 ".kix[3:15]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[3:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[3:15]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".koy[3:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "LeftElbow_Control_translateZ";
	rename -uid "1A7C57FF-C948-0CFF-9CED-E0AA1E383819";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  10 16.116252966252599 14 17.819875269793542
		 26 16.116252966252599 40 68.312234330520837 56 68.312234330520837 60 0 65 0 70 0
		 85 0 89 0 94 0 95 0 100 0 105 0 107 0 119 0;
	setAttr -s 16 ".kit[3:15]"  1 1 1 18 18 18 18 18 
		18 18 18 18 18;
	setAttr -s 16 ".kot[3:15]"  1 1 1 18 18 18 18 18 
		18 18 18 18 18;
	setAttr -s 16 ".kix[3:15]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[3:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[3:15]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".koy[3:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "LeftHand_Control_translateX";
	rename -uid "292FDDED-B44C-91E8-4E36-359CAB967F2A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  10 -30.352665775672776 14 -51.498162380251628
		 23 -30.36778112320075 26 -30.352665775672776 40 -45.867359969875046 42 -39.396078791346696
		 45 -40.160180504846402 49 -42.427913385320487 52 -35.547862311280809 56 -45.867359969875046
		 60 -30.38696242840188 65 -26.648373530620152 70 -30.671712370032555 77 -38.574321919017919
		 83 -32.888063381465265 85 -30.38696242840188 89 -26.648373530620152 94 -30.671712370032555
		 95 -34.418845219451235 102 -39.785711245363395 107 -33.50752060722138 112 -31.37210118378114
		 119 -34.418845219451235;
	setAttr -s 23 ".kit[4:22]"  1 18 18 18 18 1 1 18 
		18 18 18 18 18 18 18 18 18 18 1;
	setAttr -s 23 ".kot[4:22]"  1 18 18 18 18 1 1 18 
		18 18 18 18 18 18 18 18 18 18 1;
	setAttr -s 23 ".kix[4:22]"  1 1 0.095759286800053869 1 1 1 0.040033973763571928 
		1 0.041888588452280481 1 0.040679466481707921 0.040033973763571928 1 0.032156440688620051 
		0.036549337030454564 1 0.049462318746154033 1 1;
	setAttr -s 23 ".kiy[4:22]"  0 0 -0.99540452027883863 0 0 0 0.99919831912623724 
		0 -0.99912228788946333 0 0.99917224791662607 0.99919831912623724 0 -0.99948284793799202 
		-0.99933184976895151 0 0.99877599041239162 0 0;
	setAttr -s 23 ".kox[4:22]"  1 1 0.095759286800053869 1 1 1 0.040033973763571928 
		1 0.041888588452280467 1 0.040679466481707921 0.040033973763571928 1 0.032156440688620044 
		0.036549337030454557 1 0.049462318746154033 1 1;
	setAttr -s 23 ".koy[4:22]"  0 0 -0.99540452027883863 0 0 0 0.99919831912623724 
		0 -0.99912228788946322 0 0.99917224791662607 0.99919831912623724 0 -0.99948284793799191 
		-0.99933184976895151 0 0.99877599041239162 0 0;
createNode animCurveTL -n "LeftHand_Control_translateY";
	rename -uid "B12B5CBD-AA41-8CCB-31C5-D59772371C53";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  10 2.0516351722455415 14 32.960154757114978
		 23 -11.433638642994996 26 2.0516351722455415 40 67.888472282303681 42 64.341802955841345
		 45 64.760578780102932 49 62.87709744637101 52 69.656365861501612 56 67.888472282303681
		 60 31.128846269650328 65 30.560768958116572 70 42.622749924498585 77 44.622274641479592
		 83 32.478029884542934 85 31.128846269650328 89 30.560768958116572 94 42.622749924498585
		 95 -22.768770159929502 102 -19.039343694134121 107 -21.224575112152095 112 -12.505380160384869
		 119 -22.768770159929502;
	setAttr -s 23 ".kit[4:22]"  1 18 18 18 18 1 1 18 
		18 18 18 18 18 18 18 18 18 18 1;
	setAttr -s 23 ".kot[4:22]"  1 18 18 18 18 1 1 18 
		18 18 18 18 18 18 18 18 18 18 1;
	setAttr -s 23 ".kix[4:22]"  1 1 1 1 1 1 0.12929976539547394 1 0.04856529161711471 
		1 0.024695849057348694 0.12929976539547394 1 1 1 1 1 1 1;
	setAttr -s 23 ".kiy[4:22]"  0 0 0 0 0 0 -0.99160555195535061 0 0.9988200100369159 
		0 -0.99969501101052649 -0.99160555195535061 0 0 0 0 0 0 0;
	setAttr -s 23 ".kox[4:22]"  1 1 1 1 1 1 0.12929976539547394 1 0.04856529161711471 
		1 0.024695849057348691 0.12929976539547394 1 1 1 1 1 1 1;
	setAttr -s 23 ".koy[4:22]"  0 0 0 0 0 0 -0.99160555195535049 0 0.9988200100369159 
		0 -0.99969501101052638 -0.99160555195535049 0 0 0 0 0 0 0;
createNode animCurveTL -n "LeftHand_Control_translateZ";
	rename -uid "788AE948-0A48-4D7C-D2D4-4290AD1C2018";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  10 2.5199927340469928 14 27.223272089722094
		 23 -10.802641566893204 26 2.5199927340469928 40 38.874692889411669 42 39.612608360668233
		 45 39.525478399776425 49 42.048302722187231 52 35.196607262776013 56 38.874692889411669
		 60 28.641587728507719 65 20.893998881875532 70 23.116267520408204 77 38.874692889411648
		 83 33.151313225582541 85 28.641587728507719 89 20.893998881875532 94 23.116267520408204
		 95 -16.343270766534282 102 -23.171367937341039 107 -9.159506911168684 112 16.670079736423354
		 119 -16.343270766534282;
	setAttr -s 23 ".kit[4:22]"  1 18 18 18 18 1 1 18 
		18 18 18 18 18 18 18 18 18 18 1;
	setAttr -s 23 ".kot[4:22]"  1 18 18 18 18 1 1 18 
		18 18 18 18 18 18 18 18 18 18 1;
	setAttr -s 23 ".kix[4:22]"  1 1 1 1 1 1 0.020391744038177641 1 0.031234100616929789 
		1 0.032556748345817385 0.020391744038177641 1 1 0.014237109702407776 1 0.010457548783216725 
		1 1;
	setAttr -s 23 ".kiy[4:22]"  0 0 0 0 0 0 -0.99979206676942667 0 0.99951209645439076 
		0 -0.99946988855950381 -0.99979206676942667 0 0 -0.99989864721746746 0 0.99994531834168154 
		0 0;
	setAttr -s 23 ".kox[4:22]"  1 1 1 1 1 1 0.020391744038177638 1 0.031234100616929789 
		1 0.032556748345817385 0.020391744038177638 1 1 0.014237109702407776 1 0.010457548783216721 
		1 1;
	setAttr -s 23 ".koy[4:22]"  0 0 0 0 0 0 -0.99979206676942667 0 0.99951209645439076 
		0 -0.99946988855950381 -0.99979206676942667 0 0 -0.99989864721746757 0 0.99994531834168132 
		0 0;
createNode animCurveTU -n "LeftElbow_Control_visibility";
	rename -uid "61A1E00B-E04E-EDF6-2ACE-8AB1C3A4E2E7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  10 1 26 1 40 1 56 1 60 1 65 1 70 1 85 1
		 89 1 94 1 95 1 100 1 105 1 107 1 119 1;
	setAttr -s 15 ".kit[0:14]"  9 9 9 9 1 18 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 15 ".kot[0:14]"  5 5 5 5 5 18 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 15 ".kix[4:14]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[4:14]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LeftElbow_Control_rotateX";
	rename -uid "290BB586-BA46-7DC1-1A3E-49A1ED4E0DF8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  10 0 26 0 40 0 56 0 60 0 65 0 70 0 85 0
		 89 0 94 0 95 0 100 0 105 0 107 0 119 0;
	setAttr -s 15 ".kit[4:14]"  1 18 18 18 18 18 18 18 
		18 18 18;
	setAttr -s 15 ".kot[4:14]"  1 18 18 18 18 18 18 18 
		18 18 18;
	setAttr -s 15 ".kix[4:14]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[4:14]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[4:14]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[4:14]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LeftElbow_Control_rotateY";
	rename -uid "E5478010-CC49-B893-6B36-E4A39383715B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  10 0 26 0 40 0 56 0 60 0 65 0 70 0 85 0
		 89 0 94 0 95 0 100 0 105 0 107 0 119 0;
	setAttr -s 15 ".kit[4:14]"  1 18 18 18 18 18 18 18 
		18 18 18;
	setAttr -s 15 ".kot[4:14]"  1 18 18 18 18 18 18 18 
		18 18 18;
	setAttr -s 15 ".kix[4:14]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[4:14]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[4:14]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[4:14]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LeftElbow_Control_rotateZ";
	rename -uid "9C41279C-F64A-8711-FDDA-498664F9EC9C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  10 0 26 0 40 0 56 0 60 0 65 0 70 0 85 0
		 89 0 94 0 95 0 100 0 105 0 107 0 119 0;
	setAttr -s 15 ".kit[4:14]"  1 18 18 18 18 18 18 18 
		18 18 18;
	setAttr -s 15 ".kot[4:14]"  1 18 18 18 18 18 18 18 
		18 18 18;
	setAttr -s 15 ".kix[4:14]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[4:14]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[4:14]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[4:14]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LeftElbow_Control_scaleX";
	rename -uid "2DFA4E9E-424A-B7C1-780C-CA9CF4763CC9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  10 1 26 1 40 1 56 1 60 1 65 1 70 1 85 1
		 89 1 94 1 95 1 100 1 105 1 107 1 119 1;
	setAttr -s 15 ".kit[4:14]"  1 18 18 18 18 18 18 18 
		18 18 18;
	setAttr -s 15 ".kot[4:14]"  1 18 18 18 18 18 18 18 
		18 18 18;
	setAttr -s 15 ".kix[4:14]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[4:14]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[4:14]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[4:14]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LeftElbow_Control_scaleY";
	rename -uid "B5B7A288-EF44-62FE-35EE-60990CB75753";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  10 1 26 1 40 1 56 1 60 1 65 1 70 1 85 1
		 89 1 94 1 95 1 100 1 105 1 107 1 119 1;
	setAttr -s 15 ".kit[4:14]"  1 18 18 18 18 18 18 18 
		18 18 18;
	setAttr -s 15 ".kot[4:14]"  1 18 18 18 18 18 18 18 
		18 18 18;
	setAttr -s 15 ".kix[4:14]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[4:14]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[4:14]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[4:14]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LeftElbow_Control_scaleZ";
	rename -uid "EF973BDF-B343-D14B-BD6B-838375C97927";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  10 1 26 1 40 1 56 1 60 1 65 1 70 1 85 1
		 89 1 94 1 95 1 100 1 105 1 107 1 119 1;
	setAttr -s 15 ".kit[4:14]"  1 18 18 18 18 18 18 18 
		18 18 18;
	setAttr -s 15 ".kot[4:14]"  1 18 18 18 18 18 18 18 
		18 18 18;
	setAttr -s 15 ".kix[4:14]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[4:14]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[4:14]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[4:14]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LeftHand_Control_visibility";
	rename -uid "9C923654-4444-A373-F1F4-E0B60909B637";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  10 1 26 1 40 1 45 1 56 1 60 1 65 1 70 1
		 77 1 85 1 89 1 94 1 95 1 107 1 119 1;
	setAttr -s 15 ".kit[0:14]"  9 9 1 9 1 1 18 18 
		18 18 18 18 18 9 1;
	setAttr -s 15 ".kot[0:14]"  5 5 5 5 5 5 18 18 
		18 18 18 18 18 5 1;
	setAttr -s 15 ".kix[2:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[2:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[14]"  1;
	setAttr -s 15 ".koy[14]"  0;
createNode animCurveTA -n "LeftHand_Control_rotateX";
	rename -uid "6C9E85D7-5B43-4D33-7AAC-4A86B997B926";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  10 -97.950963957349003 14 -189.38047063783591
		 23 -20.429899706535391 26 -97.950963957349003 40 -69.613329052432178 45 -69.613329052432178
		 56 -69.613329052432178 60 -93.346075302068954 65 -93.832024311360357 70 -93.126964364843815
		 77 -91.957649561236408 85 -93.346075302068954 89 -93.832024311360357 94 -93.126964364843815
		 95 -8.4789565600067327 102 -0.83459198567898285 107 -8.4789565600067327 112 -10.901372094830766
		 119 -8.4789565600067327;
	setAttr -s 19 ".kit[4:18]"  1 18 1 1 18 18 18 18 
		18 18 18 18 18 18 1;
	setAttr -s 19 ".kot[4:18]"  1 18 1 1 18 18 18 18 
		18 18 18 18 18 18 1;
	setAttr -s 19 ".kix[4:18]"  1 1 1 0.99786643462216218 1 0.99786643462216218 
		1 0.99786643462216218 1 0.98466024427652754 0.58892413732434301 1 0.92142971832858522 
		1 1;
	setAttr -s 19 ".kiy[4:18]"  0 0 0 -0.065288426650166084 0 0.065288426650166084 
		0 -0.065288426650166084 0 0.17448267347014465 0.80818831993340412 0 -0.38854507355119572 
		0 0;
	setAttr -s 19 ".kox[4:18]"  1 1 1 0.99786643462216218 1 0.99786643462216218 
		1 0.99786643462216218 1 0.98466024427652754 0.58892413732434301 1 0.92142971832858522 
		1 1;
	setAttr -s 19 ".koy[4:18]"  0 0 0 -0.065288426650166098 0 0.065288426650166084 
		0 -0.065288426650166098 0 0.17448267347014465 0.80818831993340412 0 -0.38854507355119572 
		0 0;
createNode animCurveTA -n "LeftHand_Control_rotateY";
	rename -uid "EBD09D6A-D14E-8589-D664-81B2176CA29A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  10 -63.416803997480592 14 -55.18679994418757
		 23 -24.950622742518224 26 -63.416803997480592 40 -28.746559992571502 45 -28.746559992571502
		 56 -28.746559992571502 60 -40.685355359378391 65 -41.432038359885425 70 -40.348681327899776
		 77 -38.551975357929749 85 -40.685355359378391 89 -41.432038359885425 94 -40.348681327899776
		 95 4.3848296739534929 102 29.428929841799523 107 4.3848296739534929 112 -37.947740406323049
		 119 4.3848296739534929;
	setAttr -s 19 ".kit[4:18]"  1 18 1 1 18 18 18 18 
		18 18 18 18 18 18 1;
	setAttr -s 19 ".kot[4:18]"  1 18 1 1 18 18 18 18 
		18 18 18 18 18 18 1;
	setAttr -s 19 ".kix[4:18]"  1 1 1 0.9949845278195355 1 0.99498452781953539 
		1 0.9949845278195355 1 0.96487394346409228 0.2639964924823292 1 0.33397978175307391 
		1 1;
	setAttr -s 19 ".kiy[4:18]"  0 0 0 -0.10002894281024893 0 0.10002894281024892 
		0 -0.10002894281024893 0 0.26271329091626061 0.9645236399161129 0 -0.9425802381655205 
		0 0;
	setAttr -s 19 ".kox[4:18]"  1 1 1 0.9949845278195355 1 0.9949845278195355 
		1 0.9949845278195355 1 0.96487394346409228 0.2639964924823292 1 0.33397978175307386 
		1 1;
	setAttr -s 19 ".koy[4:18]"  0 0 0 -0.10002894281024893 0 0.10002894281024893 
		0 -0.10002894281024893 0 0.26271329091626061 0.96452363991611301 0 -0.94258023816552039 
		0 0;
createNode animCurveTA -n "LeftHand_Control_rotateZ";
	rename -uid "0BEAB8F9-2F4A-0B88-F797-E792E18D3080";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  10 30.59388882676031 14 103.42448781830268
		 23 -31.036952119957895 26 30.59388882676031 40 70.648192283418666 45 70.648192283418666
		 56 70.648192283418666 60 81.068092074948794 65 81.068092074948794 70 81.068092074948794
		 77 81.068092074948794 85 81.068092074948794 89 81.068092074948794 94 81.068092074948794
		 95 -38.916634438806483 102 -56.322146951704063 107 -38.916634438806483 112 -40.154815551169854
		 119 -38.916634438806483;
	setAttr -s 19 ".kit[4:18]"  1 18 1 1 18 18 18 18 
		18 18 18 18 18 18 1;
	setAttr -s 19 ".kot[4:18]"  1 18 1 1 18 18 18 18 
		18 18 18 18 18 18 1;
	setAttr -s 19 ".kix[4:18]"  1 1 1 1 1 1 1 1 1 1 0.30480843746401681 
		1 1 1 1;
	setAttr -s 19 ".kiy[4:18]"  0 0 0 0 0 0 0 0 0 0 -0.95241367926481635 
		0 0 0 0;
	setAttr -s 19 ".kox[4:18]"  1 1 1 1 1 1 1 1 1 1 0.30480843746401681 
		1 1 1 1;
	setAttr -s 19 ".koy[4:18]"  0 0 0 0 0 0 0 0 0 0 -0.95241367926481646 
		0 0 0 0;
createNode animCurveTU -n "LeftHand_Control_scaleX";
	rename -uid "8F7A6582-6F44-630D-71CA-27989DA5A208";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  10 1 26 1 40 1 45 1 56 1 60 1 65 1 70 1
		 77 1 85 1 89 1 94 1 95 1 107 1 119 1;
	setAttr -s 15 ".kit[2:14]"  1 18 1 1 18 18 18 18 
		18 18 18 18 1;
	setAttr -s 15 ".kot[2:14]"  1 18 1 1 18 18 18 18 
		18 18 18 18 1;
	setAttr -s 15 ".kix[2:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[2:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[2:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[2:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LeftHand_Control_scaleY";
	rename -uid "336CEB14-664C-E216-0178-BCB1EBE52F92";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  10 1 26 1 40 1 45 1 56 1 60 1 65 1 70 1
		 77 1 85 1 89 1 94 1 95 1 107 1 119 1;
	setAttr -s 15 ".kit[2:14]"  1 18 1 1 18 18 18 18 
		18 18 18 18 1;
	setAttr -s 15 ".kot[2:14]"  1 18 1 1 18 18 18 18 
		18 18 18 18 1;
	setAttr -s 15 ".kix[2:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[2:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[2:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[2:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LeftHand_Control_scaleZ";
	rename -uid "6D714639-B449-4E18-B221-DDA30AEE5D61";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  10 1 26 1 40 1 45 1 56 1 60 1 65 1 70 1
		 77 1 85 1 89 1 94 1 95 1 107 1 119 1;
	setAttr -s 15 ".kit[2:14]"  1 18 1 1 18 18 18 18 
		18 18 18 18 1;
	setAttr -s 15 ".kot[2:14]"  1 18 1 1 18 18 18 18 
		18 18 18 18 1;
	setAttr -s 15 ".kix[2:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[2:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[2:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[2:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LeftFingers_Control_rotateX";
	rename -uid "A18CEDE7-6D4C-604F-50A8-9DAF9B8261DF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  26 0 56 0 60 0 65 0 70 0 85 0 89 0 94 0
		 95 0 100 0 107 0 119 0;
	setAttr -s 12 ".kit[2:11]"  1 18 18 18 18 18 18 18 
		18 18;
	setAttr -s 12 ".kot[2:11]"  1 18 18 18 18 18 18 18 
		18 18;
	setAttr -s 12 ".kix[2:11]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".kiy[2:11]"  0 0 0 0 0 0 0 0 0 0;
	setAttr -s 12 ".kox[2:11]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".koy[2:11]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LeftFingers_Control_rotateY";
	rename -uid "1E0BD0BC-5E4A-12E3-B368-1DA3A8E240DB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  26 0 56 0 60 0 65 0 70 0 85 0 89 0 94 0
		 95 0 100 0 107 0 119 0;
	setAttr -s 12 ".kit[2:11]"  1 18 18 18 18 18 18 18 
		18 18;
	setAttr -s 12 ".kot[2:11]"  1 18 18 18 18 18 18 18 
		18 18;
	setAttr -s 12 ".kix[2:11]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".kiy[2:11]"  0 0 0 0 0 0 0 0 0 0;
	setAttr -s 12 ".kox[2:11]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".koy[2:11]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LeftFingers_Control_rotateZ";
	rename -uid "17304604-7B4B-11E3-DA41-FF94EC124E5F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  26 0 56 0 60 0 65 0 70 0 85 0 89 0 94 0
		 95 0 100 0 107 0 119 0;
	setAttr -s 12 ".kit[2:11]"  1 18 18 18 18 18 18 18 
		18 18;
	setAttr -s 12 ".kot[2:11]"  1 18 18 18 18 18 18 18 
		18 18;
	setAttr -s 12 ".kix[2:11]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".kiy[2:11]"  0 0 0 0 0 0 0 0 0 0;
	setAttr -s 12 ".kox[2:11]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".koy[2:11]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RightFinders_Control_rotateX";
	rename -uid "120DC093-4A4F-F638-73A7-57B510876905";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  26 0 56 0 60 0 65 0 70 0 85 0 89 0 94 0
		 95 0 100 0 107 0 119 0;
	setAttr -s 12 ".kit[2:11]"  1 18 18 18 18 18 18 18 
		18 18;
	setAttr -s 12 ".kot[2:11]"  1 18 18 18 18 18 18 18 
		18 18;
	setAttr -s 12 ".kix[2:11]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".kiy[2:11]"  0 0 0 0 0 0 0 0 0 0;
	setAttr -s 12 ".kox[2:11]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".koy[2:11]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RightFinders_Control_rotateY";
	rename -uid "C203BC06-8945-4C21-1CB1-D38E368C8DFC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  26 0 56 0 60 0 65 0 70 0 85 0 89 0 94 0
		 95 0 100 0 107 0 119 0;
	setAttr -s 12 ".kit[2:11]"  1 18 18 18 18 18 18 18 
		18 18;
	setAttr -s 12 ".kot[2:11]"  1 18 18 18 18 18 18 18 
		18 18;
	setAttr -s 12 ".kix[2:11]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".kiy[2:11]"  0 0 0 0 0 0 0 0 0 0;
	setAttr -s 12 ".kox[2:11]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".koy[2:11]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RightFinders_Control_rotateZ";
	rename -uid "9ECBEA81-2547-F531-FF8A-86B315CDE15F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  26 0 56 0 60 0 65 0 70 0 85 0 89 0 94 0
		 95 0 100 0 107 0 119 0;
	setAttr -s 12 ".kit[2:11]"  1 18 18 18 18 18 18 18 
		18 18;
	setAttr -s 12 ".kot[2:11]"  1 18 18 18 18 18 18 18 
		18 18;
	setAttr -s 12 ".kix[2:11]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".kiy[2:11]"  0 0 0 0 0 0 0 0 0 0;
	setAttr -s 12 ".kox[2:11]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".koy[2:11]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LeftFingers_Control_visibility";
	rename -uid "6B477509-0949-F127-0D8D-7A9F36663014";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  26 1 56 1 60 1 65 1 70 1 85 1 89 1 94 1
		 95 1 100 1 107 1 119 1;
	setAttr -s 12 ".kit[0:11]"  9 9 1 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 12 ".kot[0:11]"  5 5 5 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 12 ".kix[2:11]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".kiy[2:11]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "LeftFingers_Control_translateX";
	rename -uid "CD8EBF18-6043-49E2-5131-EC94B8CF7CA4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  26 0 56 0 60 0 65 0 70 0 85 0 89 0 94 0
		 95 0 100 0 107 0 119 0;
	setAttr -s 12 ".kit[2:11]"  1 18 18 18 18 18 18 18 
		18 18;
	setAttr -s 12 ".kot[2:11]"  1 18 18 18 18 18 18 18 
		18 18;
	setAttr -s 12 ".kix[2:11]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".kiy[2:11]"  0 0 0 0 0 0 0 0 0 0;
	setAttr -s 12 ".kox[2:11]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".koy[2:11]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "LeftFingers_Control_translateY";
	rename -uid "D0B45B67-424F-A1AA-BA43-7BA75BDB66DB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  26 0 56 0 60 0 65 0 70 0 85 0 89 0 94 0
		 95 0 100 0 107 0 119 0;
	setAttr -s 12 ".kit[2:11]"  1 18 18 18 18 18 18 18 
		18 18;
	setAttr -s 12 ".kot[2:11]"  1 18 18 18 18 18 18 18 
		18 18;
	setAttr -s 12 ".kix[2:11]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".kiy[2:11]"  0 0 0 0 0 0 0 0 0 0;
	setAttr -s 12 ".kox[2:11]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".koy[2:11]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "LeftFingers_Control_translateZ";
	rename -uid "932E0C86-CF44-4DEC-3F03-DFB8FC2C417B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  26 0 56 0 60 0 65 0 70 0 85 0 89 0 94 0
		 95 0 100 0 107 0 119 0;
	setAttr -s 12 ".kit[2:11]"  1 18 18 18 18 18 18 18 
		18 18;
	setAttr -s 12 ".kot[2:11]"  1 18 18 18 18 18 18 18 
		18 18;
	setAttr -s 12 ".kix[2:11]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".kiy[2:11]"  0 0 0 0 0 0 0 0 0 0;
	setAttr -s 12 ".kox[2:11]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".koy[2:11]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LeftFingers_Control_scaleX";
	rename -uid "98F01538-CC41-09CF-D33D-D5BE1B4CFB3B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  26 1 56 1 60 1 65 1 70 1 85 1 89 1 94 1
		 95 1 100 1 107 1 119 1;
	setAttr -s 12 ".kit[2:11]"  1 18 18 18 18 18 18 18 
		18 18;
	setAttr -s 12 ".kot[2:11]"  1 18 18 18 18 18 18 18 
		18 18;
	setAttr -s 12 ".kix[2:11]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".kiy[2:11]"  0 0 0 0 0 0 0 0 0 0;
	setAttr -s 12 ".kox[2:11]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".koy[2:11]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LeftFingers_Control_scaleY";
	rename -uid "ECB149D2-384D-451C-0CCD-38B5C8395B29";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  26 1 56 1 60 1 65 1 70 1 85 1 89 1 94 1
		 95 1 100 1 107 1 119 1;
	setAttr -s 12 ".kit[2:11]"  1 18 18 18 18 18 18 18 
		18 18;
	setAttr -s 12 ".kot[2:11]"  1 18 18 18 18 18 18 18 
		18 18;
	setAttr -s 12 ".kix[2:11]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".kiy[2:11]"  0 0 0 0 0 0 0 0 0 0;
	setAttr -s 12 ".kox[2:11]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".koy[2:11]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LeftFingers_Control_scaleZ";
	rename -uid "2EF22A3F-2C45-3AFF-3F36-8B98AC320845";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  26 1 56 1 60 1 65 1 70 1 85 1 89 1 94 1
		 95 1 100 1 107 1 119 1;
	setAttr -s 12 ".kit[2:11]"  1 18 18 18 18 18 18 18 
		18 18;
	setAttr -s 12 ".kot[2:11]"  1 18 18 18 18 18 18 18 
		18 18;
	setAttr -s 12 ".kix[2:11]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".kiy[2:11]"  0 0 0 0 0 0 0 0 0 0;
	setAttr -s 12 ".kox[2:11]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".koy[2:11]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LeftFingers_Control_Grip";
	rename -uid "7809CE9C-8D46-3A9C-BB76-109906293986";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  26 0.25 56 0.25 60 0.25 65 0.25 70 0.25
		 85 0.25 89 0.25 94 0.25 95 0.5 100 0.25 107 0.5 114 0.25 119 0.5;
	setAttr -s 13 ".kit[2:12]"  1 18 18 18 18 18 18 18 
		18 18 18;
	setAttr -s 13 ".kot[2:12]"  1 18 18 18 18 18 18 18 
		18 18 18;
	setAttr -s 13 ".kix[2:12]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".kiy[2:12]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 13 ".kox[2:12]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".koy[2:12]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RightFinders_Control_visibility";
	rename -uid "C628ECDE-FA4C-184D-8ED6-68AED3CC9A21";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  26 1 56 1 60 1 65 1 70 1 85 1 89 1 94 1
		 95 1 100 1 107 1 119 1;
	setAttr -s 12 ".kit[0:11]"  9 9 1 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 12 ".kot[0:11]"  5 5 5 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 12 ".kix[2:11]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".kiy[2:11]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "RightFinders_Control_translateX";
	rename -uid "83B98FAC-4745-85B9-0737-56A887952952";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  26 0 56 0 60 0 65 0 70 0 85 0 89 0 94 0
		 95 0 100 0 107 0 119 0;
	setAttr -s 12 ".kit[2:11]"  1 18 18 18 18 18 18 18 
		18 18;
	setAttr -s 12 ".kot[2:11]"  1 18 18 18 18 18 18 18 
		18 18;
	setAttr -s 12 ".kix[2:11]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".kiy[2:11]"  0 0 0 0 0 0 0 0 0 0;
	setAttr -s 12 ".kox[2:11]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".koy[2:11]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "RightFinders_Control_translateY";
	rename -uid "75085FE3-0443-0F23-7969-E794B0F62EC2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  26 0 56 0 60 0 65 0 70 0 85 0 89 0 94 0
		 95 0 100 0 107 0 119 0;
	setAttr -s 12 ".kit[2:11]"  1 18 18 18 18 18 18 18 
		18 18;
	setAttr -s 12 ".kot[2:11]"  1 18 18 18 18 18 18 18 
		18 18;
	setAttr -s 12 ".kix[2:11]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".kiy[2:11]"  0 0 0 0 0 0 0 0 0 0;
	setAttr -s 12 ".kox[2:11]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".koy[2:11]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "RightFinders_Control_translateZ";
	rename -uid "1EC313BC-E342-1EC4-762E-99AF2412BF8C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  26 0 56 0 60 0 65 0 70 0 85 0 89 0 94 0
		 95 0 100 0 107 0 119 0;
	setAttr -s 12 ".kit[2:11]"  1 18 18 18 18 18 18 18 
		18 18;
	setAttr -s 12 ".kot[2:11]"  1 18 18 18 18 18 18 18 
		18 18;
	setAttr -s 12 ".kix[2:11]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".kiy[2:11]"  0 0 0 0 0 0 0 0 0 0;
	setAttr -s 12 ".kox[2:11]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".koy[2:11]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RightFinders_Control_scaleX";
	rename -uid "B0DA1192-914D-0A8A-6BD6-C8BDDF37C3AC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  26 1 56 1 60 1 65 1 70 1 85 1 89 1 94 1
		 95 1 100 1 107 1 119 1;
	setAttr -s 12 ".kit[2:11]"  1 18 18 18 18 18 18 18 
		18 18;
	setAttr -s 12 ".kot[2:11]"  1 18 18 18 18 18 18 18 
		18 18;
	setAttr -s 12 ".kix[2:11]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".kiy[2:11]"  0 0 0 0 0 0 0 0 0 0;
	setAttr -s 12 ".kox[2:11]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".koy[2:11]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RightFinders_Control_scaleY";
	rename -uid "1A37E25C-6243-FED2-43DC-37B3BD5FCDD4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  26 1 56 1 60 1 65 1 70 1 85 1 89 1 94 1
		 95 1 100 1 107 1 119 1;
	setAttr -s 12 ".kit[2:11]"  1 18 18 18 18 18 18 18 
		18 18;
	setAttr -s 12 ".kot[2:11]"  1 18 18 18 18 18 18 18 
		18 18;
	setAttr -s 12 ".kix[2:11]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".kiy[2:11]"  0 0 0 0 0 0 0 0 0 0;
	setAttr -s 12 ".kox[2:11]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".koy[2:11]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RightFinders_Control_scaleZ";
	rename -uid "4078A552-9D4C-DD9E-DD08-DBA0E2514BA6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  26 1 56 1 60 1 65 1 70 1 85 1 89 1 94 1
		 95 1 100 1 107 1 119 1;
	setAttr -s 12 ".kit[2:11]"  1 18 18 18 18 18 18 18 
		18 18;
	setAttr -s 12 ".kot[2:11]"  1 18 18 18 18 18 18 18 
		18 18;
	setAttr -s 12 ".kix[2:11]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".kiy[2:11]"  0 0 0 0 0 0 0 0 0 0;
	setAttr -s 12 ".kox[2:11]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".koy[2:11]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RightFinders_Control_Grip";
	rename -uid "90A7F54A-674C-DE76-33F9-8280288CF8D7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  26 0.25 56 0.25 60 0.25 65 0.25 70 0.25
		 85 0.25 89 0.25 94 0.25 95 0.5 100 0.25 107 0.5 114 0.25 119 0.5;
	setAttr -s 13 ".kit[2:12]"  1 18 18 18 18 18 18 18 
		18 18 18;
	setAttr -s 13 ".kot[2:12]"  1 18 18 18 18 18 18 18 
		18 18 18;
	setAttr -s 13 ".kix[2:12]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".kiy[2:12]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 13 ".kox[2:12]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".koy[2:12]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "Hips_Control_visibility";
	rename -uid "5AD24A25-3A4D-1645-45DC-D29DA5341B69";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  26 1 56 1 60 1 65 1 70 1 77 1 85 1 89 1
		 94 1 95 1 107 1 119 1;
	setAttr -s 12 ".kit[0:11]"  9 9 1 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 12 ".kot[0:11]"  5 5 5 18 18 18 18 18 
		18 18 18 18;
	setAttr -s 12 ".kix[2:11]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".kiy[2:11]"  0 0 0 0 0 0 0 0 0 0;
select -ne :time1;
	setAttr -av -k on ".cch";
	setAttr -av -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".o" 103;
	setAttr -av -k on ".unw" 103;
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
	setAttr -s 7 ".st";
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
connectAttr "RightShoulder_Control_visibility.o" "SquaddieRN.phl[163]";
connectAttr "RightShoulder_Control_translateX.o" "SquaddieRN.phl[164]";
connectAttr "RightShoulder_Control_translateY.o" "SquaddieRN.phl[165]";
connectAttr "RightShoulder_Control_translateZ.o" "SquaddieRN.phl[166]";
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
connectAttr "Extras.di" "pointLight1.do";
connectAttr "Extras.di" "pointLight2.do";
connectAttr "Extras.di" "ambientLight1.do";
connectAttr "Extras.di" "pPlane1.do";
connectAttr "polyTweakUV1.out" "pPlaneShape1.i";
connectAttr "polyTweakUV1.uvtk[0]" "pPlaneShape1.uvst[0].uvtw";
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
// End of NoWeapon_Moving.ma
