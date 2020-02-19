//Maya ASCII 2020 scene
//Name: MainWeapon_Cover.ma
//Last modified: Tue, Feb 18, 2020 08:12:47 AM
//Codeset: UTF-8
file -rdi 1 -ns "Squaddie" -rfn "SquaddieRN" -op "v=0;" -typ "mayaAscii" "/Users/briancollins/Unity/DropZone/ArtSource/Squaddie/Squaddie.ma";
file -rdi 1 -ns "MkII" -rfn "MkIIRN" -op "v=0;" -typ "mayaAscii" "/Users/briancollins/Unity/DropZone/ArtSource/Weapons/MkII.ma";
file -r -ns "Squaddie" -dr 1 -rfn "SquaddieRN" -op "v=0;" -typ "mayaAscii" "/Users/briancollins/Unity/DropZone/ArtSource/Squaddie/Squaddie.ma";
file -r -ns "MkII" -dr 1 -rfn "MkIIRN" -op "v=0;" -typ "mayaAscii" "/Users/briancollins/Unity/DropZone/ArtSource/Weapons/MkII.ma";
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
fileInfo "UUID" "8292098C-AC4C-8918-A0B2-45942804FF65";
createNode transform -s -n "persp";
	rename -uid "ABF7CAC9-7042-CBE0-D916-39910278FA3A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 176.81441604653077 306.37603441489796 -379.34633493777778 ;
	setAttr ".r" -type "double3" -21.938352732371474 154.9999999998241 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "3D0D0238-014B-4FD1-30CB-E49DEC31D45C";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 504.77236162071426;
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
	setAttr ".t" -type "double3" 1000.1 124.7840236500287 -9.0612529365713819 ;
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
	rename -uid "12FF24E1-5446-209C-C3BD-90B03B17D718";
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
	setAttr ".lr" -type "double3" -179.04838565665352 -23.370831794143783 207.98600452700089 ;
	setAttr ".rst" -type "double3" -71.905138372518763 112.77091918951142 10.228960416052768 ;
	setAttr ".rsrr" -type "double3" -284.8910021905366 0.64446566458931642 -11.126855858155484 ;
	setAttr -k on ".w0";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "AE8BDE59-C44B-19DA-697C-85903712C69C";
	setAttr -s 8 ".lnk";
	setAttr -s 8 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "129C350D-6746-0769-B661-8AB590F06904";
	setAttr ".cdl" 1;
	setAttr -s 2 ".dli[1]"  1;
	setAttr -s 2 ".dli";
createNode displayLayer -n "defaultLayer";
	rename -uid "3AFC2083-B947-F7A2-A1CF-8784DD7FE6BE";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "FC965639-EE4F-FD8D-7970-FBA8D2779092";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "4F4A93B8-5947-7084-81A2-88B3C2992DDC";
	setAttr ".g" yes;
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "491B7508-6C42-B5E4-E979-D08CE9B1561D";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "26224112-EE49-A2BD-DD21-4DBD4E7D78F6";
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
		"translate" " -type \"double3\" -6.55816005847902606 -5.91820409250362722 34.39229610281527982"
		
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control" 
		"translateX" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control" 
		"translateY" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control" 
		"translateZ" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control" 
		"rotate" " -type \"double3\" 0 -180 0"
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
		"rotate" " -type \"double3\" -0.29408989115496242 -9.04290789468410772 4.08188743826009137"
		
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
		"rotate" " -type \"double3\" 4.76945411502910321 6.56282665273892984 -10.34844471017735756"
		
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
		"rotate" " -type \"double3\" 6.51494198750022857 0 0"
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
		"translate" " -type \"double3\" 52.50774116285511894 9.01985028143120893 27.38898564927817958"
		
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightHand_Control" 
		"translateX" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightHand_Control" 
		"translateY" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightHand_Control" 
		"translateZ" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightHand_Control" 
		"rotate" " -type \"double3\" 121.31550245969303603 106.05313748935647311 182.77074549746177468"
		
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
		"rotate" " -type \"double3\" -16.95091983311120032 7.43361149978562263 -55.86779243688729935"
		
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
		"translate" " -type \"double3\" -22.73465253382483908 0.28835889431005496 27.22430923575705108"
		
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftHand_Control" 
		"translateX" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftHand_Control" 
		"translateY" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftHand_Control" 
		"translateZ" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftHand_Control" 
		"rotate" " -type \"double3\" -30.81200111096324079 -57.29212734610896263 -19.1229215371704413"
		
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
		
		2 "|Squaddie:Root_Control|Squaddie:RightFoot_Control" "translate" " -type \"double3\" 49.46813381794360964 0 44.39628857872766332"
		
		2 "|Squaddie:Root_Control|Squaddie:RightFoot_Control" "translateX" " -av"
		
		2 "|Squaddie:Root_Control|Squaddie:RightFoot_Control" "translateY" " -av"
		
		2 "|Squaddie:Root_Control|Squaddie:RightFoot_Control" "translateZ" " -av"
		
		2 "|Squaddie:Root_Control|Squaddie:RightFoot_Control" "rotate" " -type \"double3\" 0 -200.20745991017616916 0"
		
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
		"rotate" " -type \"double3\" 0 0 0"
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
		
		2 "|Squaddie:Root_Control|Squaddie:LeftFoot_Control" "translate" " -type \"double3\" -53.83339314496853945 0 13.66418863736922162"
		
		2 "|Squaddie:Root_Control|Squaddie:LeftFoot_Control" "translateX" " -av"
		2 "|Squaddie:Root_Control|Squaddie:LeftFoot_Control" "translateY" " -av"
		2 "|Squaddie:Root_Control|Squaddie:LeftFoot_Control" "translateZ" " -av"
		2 "|Squaddie:Root_Control|Squaddie:LeftFoot_Control" "rotate" " -type \"double3\" 0 -150.06670799028890428 0"
		
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
		
		2 "|Squaddie:SkeletonGroup|Squaddie:Attach_RootMotion|Squaddie:Hips_Skel|Squaddie:RightUpperLeg_Skel" 
		"translate" " -type \"double3\" -19.81879997253418324 -7.48137882854418024 -0.70920240272859303"
		
		2 "|Squaddie:SkeletonGroup|Squaddie:Attach_RootMotion|Squaddie:Hips_Skel|Squaddie:RightUpperLeg_Skel" 
		"translateX" " -av"
		2 "|Squaddie:SkeletonGroup|Squaddie:Attach_RootMotion|Squaddie:Hips_Skel|Squaddie:RightUpperLeg_Skel" 
		"translateY" " -av"
		2 "|Squaddie:SkeletonGroup|Squaddie:Attach_RootMotion|Squaddie:Hips_Skel|Squaddie:RightUpperLeg_Skel" 
		"translateZ" " -av"
		2 "|Squaddie:SkeletonGroup|Squaddie:Attach_RootMotion|Squaddie:Hips_Skel|Squaddie:RightUpperLeg_Skel" 
		"rotate" " -type \"double3\" -20.52614716922751725 12.86643419479359629 -25.51242168713288905"
		
		2 "|Squaddie:SkeletonGroup|Squaddie:Attach_RootMotion|Squaddie:Hips_Skel|Squaddie:RightUpperLeg_Skel|Squaddie:RightLowerLeg_Skel" 
		"rotate" " -type \"double3\" 28.731228304238563 0 0"
		2 "|Squaddie:SkeletonGroup|Squaddie:Attach_RootMotion|Squaddie:Hips_Skel|Squaddie:LeftUpperLeg_Skel" 
		"translate" " -type \"double3\" 19.81883811950684304 -7.48134068157152399 -0.70920144905427662"
		
		2 "|Squaddie:SkeletonGroup|Squaddie:Attach_RootMotion|Squaddie:Hips_Skel|Squaddie:LeftUpperLeg_Skel" 
		"translateX" " -av"
		2 "|Squaddie:SkeletonGroup|Squaddie:Attach_RootMotion|Squaddie:Hips_Skel|Squaddie:LeftUpperLeg_Skel" 
		"translateY" " -av"
		2 "|Squaddie:SkeletonGroup|Squaddie:Attach_RootMotion|Squaddie:Hips_Skel|Squaddie:LeftUpperLeg_Skel" 
		"translateZ" " -av"
		2 "|Squaddie:SkeletonGroup|Squaddie:Attach_RootMotion|Squaddie:Hips_Skel|Squaddie:LeftUpperLeg_Skel" 
		"rotate" " -type \"double3\" -28.75578929127559391 -4.25463589290815758 -27.95467588581753304"
		
		2 "|Squaddie:SkeletonGroup|Squaddie:Attach_RootMotion|Squaddie:Hips_Skel|Squaddie:LeftUpperLeg_Skel|Squaddie:LeftLowerLeg_Skel" 
		"rotate" " -type \"double3\" 9.06887646173002437 0 0"
		2 "|Squaddie:SkeletonGroup|Squaddie:Attach_RootMotion|Squaddie:Hips_Skel|Squaddie:Spine1_Skel|Squaddie:Spine2_Skel|Squaddie:RightClav_Skel|Squaddie:RightUpperArm_Skel" 
		"translate" " -type \"double3\" -14.91460000000001429 -4.70347648394240281 0.41150087150569448"
		
		2 "|Squaddie:SkeletonGroup|Squaddie:Attach_RootMotion|Squaddie:Hips_Skel|Squaddie:Spine1_Skel|Squaddie:Spine2_Skel|Squaddie:RightClav_Skel|Squaddie:RightUpperArm_Skel" 
		"translateX" " -av"
		2 "|Squaddie:SkeletonGroup|Squaddie:Attach_RootMotion|Squaddie:Hips_Skel|Squaddie:Spine1_Skel|Squaddie:Spine2_Skel|Squaddie:RightClav_Skel|Squaddie:RightUpperArm_Skel" 
		"translateY" " -av"
		2 "|Squaddie:SkeletonGroup|Squaddie:Attach_RootMotion|Squaddie:Hips_Skel|Squaddie:Spine1_Skel|Squaddie:Spine2_Skel|Squaddie:RightClav_Skel|Squaddie:RightUpperArm_Skel" 
		"translateZ" " -av"
		2 "|Squaddie:SkeletonGroup|Squaddie:Attach_RootMotion|Squaddie:Hips_Skel|Squaddie:Spine1_Skel|Squaddie:Spine2_Skel|Squaddie:RightClav_Skel|Squaddie:RightUpperArm_Skel" 
		"rotate" " -type \"double3\" 22.55160392756028287 -37.54662808487295678 13.77578984638355664"
		
		2 "|Squaddie:SkeletonGroup|Squaddie:Attach_RootMotion|Squaddie:Hips_Skel|Squaddie:Spine1_Skel|Squaddie:Spine2_Skel|Squaddie:RightClav_Skel|Squaddie:RightUpperArm_Skel|Squaddie:RightLowerArm_Skel" 
		"rotate" " -type \"double3\" -0.0024250264491082834 -63.40314634986213349 0.0020962463403625324"
		
		2 "|Squaddie:SkeletonGroup|Squaddie:Attach_RootMotion|Squaddie:Hips_Skel|Squaddie:Spine1_Skel|Squaddie:Spine2_Skel|Squaddie:LeftClav_Skel|Squaddie:LeftUpperArm_Skel" 
		"translate" " -type \"double3\" 14.91457674267715028 4.70347938627342899 -0.41150061501065444"
		
		2 "|Squaddie:SkeletonGroup|Squaddie:Attach_RootMotion|Squaddie:Hips_Skel|Squaddie:Spine1_Skel|Squaddie:Spine2_Skel|Squaddie:LeftClav_Skel|Squaddie:LeftUpperArm_Skel" 
		"translateX" " -av"
		2 "|Squaddie:SkeletonGroup|Squaddie:Attach_RootMotion|Squaddie:Hips_Skel|Squaddie:Spine1_Skel|Squaddie:Spine2_Skel|Squaddie:LeftClav_Skel|Squaddie:LeftUpperArm_Skel" 
		"translateY" " -av"
		2 "|Squaddie:SkeletonGroup|Squaddie:Attach_RootMotion|Squaddie:Hips_Skel|Squaddie:Spine1_Skel|Squaddie:Spine2_Skel|Squaddie:LeftClav_Skel|Squaddie:LeftUpperArm_Skel" 
		"translateZ" " -av"
		2 "|Squaddie:SkeletonGroup|Squaddie:Attach_RootMotion|Squaddie:Hips_Skel|Squaddie:Spine1_Skel|Squaddie:Spine2_Skel|Squaddie:LeftClav_Skel|Squaddie:LeftUpperArm_Skel" 
		"rotate" " -type \"double3\" 10.03474939296544299 -23.85820235643387832 6.26294398495811855"
		
		2 "|Squaddie:SkeletonGroup|Squaddie:Attach_RootMotion|Squaddie:Hips_Skel|Squaddie:Spine1_Skel|Squaddie:Spine2_Skel|Squaddie:LeftClav_Skel|Squaddie:LeftUpperArm_Skel|Squaddie:LeftLowerArm_Skel" 
		"rotate" " -type \"double3\" 0 -24.21044659737023608 0"
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
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
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
		+ "                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n"
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
	setAttr ".b" -type "string" "playbackOptions -min 10 -max 405 -ast 0 -aet 500 ";
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
	setAttr ".ic" no;
	setAttr ".fv" -type "string" "FBX201800";
	setAttr ".exp" -type "string" "/Users/briancollins/Unity/DropZone/Assets/DropZone/Characters/Squaddie";
	setAttr ".exf" -type "string" "MainWeapon_Cover.fbx";
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
	setAttr -s 33 ".ktv[0:32]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0 290 0
		 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTL -n "Root_Control_translateY";
	rename -uid "9BF2FBE1-2343-400C-7437-828943140C40";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0 290 0
		 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTL -n "Root_Control_translateZ";
	rename -uid "BDE8D69D-E646-2853-AB94-96846000E83B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 -50 10 -50 20 0 30 0 40 0 60 0 70 0 90 0
		 110 0 130 0 140 0 155 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0
		 290 0 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTL -n "LeftFoot_Control_translateX";
	rename -uid "C90A741F-9743-95AB-7812-10806D03686C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 50 ".ktv[0:49]"  0 0 10 -12.306395532036035 15 -0.26119964002472784
		 20 -47.992891563136993 25 -47.992891563136993 30 -53.833393144968539 40 -53.833393144968539
		 60 -53.833393144968539 70 -53.833393144968539 90 -53.833393144968539 110 -53.833393144968539
		 130 -53.833393144968539 140 -53.833393144968539 147 71.207354535407987 150 71.207354535407987
		 155 110.37246018140203 170 110.37246018140203 175 110.37246018140203 180 -53.833393144968539
		 185 -53.833393144968539 195 -53.833393144968539 200 -53.833393144968539 205 -84.010222696253379
		 210 -84.010222696253379 225 -84.010222696253379 230 -84.010222696253379 235 -53.833393144968539
		 240 -53.833393144968539 250 -53.833393144968539 255 11.740892970580916 260 11.740892970580916
		 270 11.740892970580916 275 -53.833393144968539 280 -53.833393144968539 285 -43.414069087016777
		 290 -43.414069087016777 300 -43.414069087016777 305 -53.833393144968539 310 -53.833393144968539
		 315 -45.509856566588084 320 -45.509856566588084 330 -45.509856566588084 335 -53.833393144968539
		 340 -53.833393144968539 360 -53.833393144968539 365 -53.833393144968539 370 -53.833393144968539
		 375 -53.833393144968539 380 -53.833393144968539 405 -53.833393144968539;
	setAttr -s 50 ".kit[45:49]"  1 18 18 1 18;
	setAttr -s 50 ".kot[45:49]"  1 18 18 1 18;
	setAttr -s 50 ".kix[45:49]"  1 1 1 1 1;
	setAttr -s 50 ".kiy[45:49]"  0 0 0 0 0;
	setAttr -s 50 ".kox[45:49]"  1 1 1 1 1;
	setAttr -s 50 ".koy[45:49]"  0 0 0 0 0;
createNode animCurveTL -n "LeftFoot_Control_translateY";
	rename -uid "463216E0-654C-ABA6-174B-22BA901159FB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 62 ".ktv[0:61]"  0 -5.6843418860808015e-14 10 27.373114868922642
		 15 28.834588144555717 20 0 25 0 27 10.831611456718372 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 144 22.592080753486101 147 0 150 0 152 13.099003902736309 155 0 170 0
		 175 0 180 0 185 0 195 0 200 0 203 16.705511577496722 205 0 210 0 225 0 230 0 233 18.870152821477028
		 235 0 240 0 250 0 253 17.381476050323968 255 0 260 0 270 0 273 10.66007593367627
		 275 0 280 0 283 10.835523954203241 285 0 290 0 300 0 303 13.790024411204842 305 0
		 310 0 313 11.282129526053803 315 0 320 0 330 0 333 15.535837995588304 335 0 340 0
		 360 0 365 0 367 8.126134784178392 370 14.316826140717227 375 14.316826140717227 380 0
		 405 0;
	setAttr -s 62 ".kit[56:61]"  1 18 18 18 1 18;
	setAttr -s 62 ".kot[56:61]"  1 18 18 18 1 18;
	setAttr -s 62 ".kix[56:61]"  1 0.014550101919650124 1 1 1 1;
	setAttr -s 62 ".kiy[56:61]"  0 0.9998941416640702 0 0 0 0;
	setAttr -s 62 ".kox[56:61]"  1 0.014550101919650124 1 1 1 1;
	setAttr -s 62 ".koy[56:61]"  0 0.9998941416640702 0 0 0 0;
createNode animCurveTL -n "LeftFoot_Control_translateZ";
	rename -uid "5433778F-CB49-B7B4-B178-0C98411E04DF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 51 ".ktv[0:50]"  0 0 10 -49.268408769385687 15 53.563816860904595
		 20 47.983012047827884 25 47.983012047827884 30 13.664188637369222 40 13.664188637369222
		 60 13.664188637369222 70 13.664188637369222 90 13.664188637369222 110 13.664188637369222
		 130 13.664188637369222 140 13.664188637369222 144 -11.624326485355992 147 11.86476809693842
		 150 11.86476809693842 155 33.193449107710052 170 33.193449107710052 175 33.193449107710052
		 180 13.664188637369222 185 13.664188637369222 195 13.664188637369222 200 13.664188637369222
		 205 51.673929961903696 210 51.673929961903696 225 51.673929961903696 230 51.673929961903696
		 235 13.664188637369222 240 13.664188637369222 250 13.664188637369222 255 -14.480260915715995
		 260 -14.480260915715995 270 -14.480260915715995 275 13.664188637369222 280 13.664188637369222
		 285 38.392909373604368 290 38.392909373604368 300 38.392909373604368 305 13.664188637369222
		 310 13.664188637369222 315 -23.305427484126646 320 -23.305427484126646 330 -23.305427484126646
		 335 13.664188637369222 340 13.664188637369222 360 13.664188637369222 365 13.664188637369222
		 370 -51.113588074814174 375 -51.113588074814174 380 13.664188637369222 405 13.664188637369222;
	setAttr -s 51 ".kit[46:50]"  1 18 18 1 18;
	setAttr -s 51 ".kot[46:50]"  1 18 18 1 18;
	setAttr -s 51 ".kix[46:50]"  1 1 1 1 1;
	setAttr -s 51 ".kiy[46:50]"  0 0 0 0 0;
	setAttr -s 51 ".kox[46:50]"  1 1 1 1 1;
	setAttr -s 51 ".koy[46:50]"  0 0 0 0 0;
createNode animCurveTL -n "LeftKnee_Control_translateX";
	rename -uid "3CDF2F9E-1241-A390-30E2-51BC599A6D12";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0 290 0
		 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTL -n "LeftKnee_Control_translateY";
	rename -uid "616C8942-4F49-8720-B217-AEA96EC43C12";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0 290 0
		 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTL -n "LeftKnee_Control_translateZ";
	rename -uid "47D15C4C-824B-2FB0-8A41-EDADF5421CCB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0 290 0
		 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTL -n "LeftToes_Control_translateX";
	rename -uid "09528C22-3544-6316-BC94-D48101A71FDE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0 290 0
		 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTL -n "LeftToes_Control_translateY";
	rename -uid "F299B1FD-9342-E456-3D90-46B83C61946A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0 290 0
		 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTL -n "LeftToes_Control_translateZ";
	rename -uid "D26367B3-ED47-8EB9-BE8C-2D8CF6541566";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0 290 0
		 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTL -n "RightFoot_Control_translateX";
	rename -uid "9683242C-194B-952D-AB4C-34B4B3D7410F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 51 ".ktv[0:50]"  0 0 10 8.2637397753219552 14 20.559687697738752
		 19 20.559687697738752 25 49.46813381794361 30 49.46813381794361 40 49.46813381794361
		 60 49.46813381794361 70 49.46813381794361 90 49.46813381794361 110 49.46813381794361
		 130 49.46813381794361 140 49.46813381794361 145 49.46813381794361 150 97.585768437364933
		 155 97.585768437364933 170 97.585768437364933 175 67.400734393442875 180 67.400734393442875
		 185 49.46813381794361 195 49.46813381794361 200 -53.265871564743932 205 -53.265871564743932
		 208 -91.076876257949152 210 -96.450662626606615 225 -96.450662626606615 230 6.2651931966922234
		 235 6.2651931966922234 240 49.46813381794361 250 49.46813381794361 255 49.46813381794361
		 260 -20.014494347474042 270 -20.014494347474042 275 -20.014494347474042 280 49.46813381794361
		 285 49.46813381794361 290 55.627022468129859 300 55.627022468129859 305 55.627022468129859
		 310 49.46813381794361 315 49.46813381794361 320 36.147285997611206 330 36.147285997611206
		 335 36.147285997611206 340 49.46813381794361 360 49.46813381794361 365 49.46813381794361
		 370 49.46813381794361 375 49.46813381794361 380 49.46813381794361 405 49.46813381794361;
	setAttr -s 51 ".kit[46:50]"  1 18 18 1 18;
	setAttr -s 51 ".kot[46:50]"  1 18 18 1 18;
	setAttr -s 51 ".kix[46:50]"  1 1 1 1 1;
	setAttr -s 51 ".kiy[46:50]"  0 0 0 0 0;
	setAttr -s 51 ".kox[46:50]"  1 1 1 1 1;
	setAttr -s 51 ".koy[46:50]"  0 0 0 0 0;
createNode animCurveTL -n "RightFoot_Control_translateY";
	rename -uid "CEC1AEA9-4749-E93C-6681-8784975D31AA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 60 ".ktv[0:59]"  0 0 10 9.3863067157120703 14 0 19 0 22 21.164966418983212
		 25 0 30 0 40 0 60 0 70 0 90 0 110 0 130 0 140 0 145 0 150 0 155 0 170 0 185 0 195 0
		 198 25.32404568670826 200 2.8421709430404007e-14 205 2.8421709430404007e-14 208 14.263767989668453
		 210 0 225 0 228 13.401519222123015 230 0 235 0 238 10.436719031091771 240 0 250 0
		 255 0 257 19.824793992040455 260 0 270 0 275 0 278 14.950228129867535 280 0 285 0
		 287 9.8462751296721525 290 -5.6843418860808015e-14 300 -5.6843418860808015e-14 305 -5.6843418860808015e-14
		 308 8.3448348774239296 310 0 315 0 318 7.8516962615728136 320 0 330 0 335 0 337 3.7064761412825025
		 340 0 360 0 363 15.918334454882213 365 0 370 0 375 0 380 0 405 0;
	setAttr -s 60 ".kit[55:59]"  1 18 18 1 18;
	setAttr -s 60 ".kot[55:59]"  1 18 18 1 18;
	setAttr -s 60 ".kix[55:59]"  1 1 1 1 1;
	setAttr -s 60 ".kiy[55:59]"  0 0 0 0 0;
	setAttr -s 60 ".kox[55:59]"  1 1 1 1 1;
	setAttr -s 60 ".koy[55:59]"  0 0 0 0 0;
createNode animCurveTL -n "RightFoot_Control_translateZ";
	rename -uid "D8B7513C-314C-7E56-6F6C-89AEAB279033";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 52 ".ktv[0:51]"  0 0 10 46.614072574620806 14 40.821607629467962
		 19 14.804480878087023 25 44.396288578727663 30 44.396288578727663 40 44.396288578727663
		 60 44.396288578727663 70 44.396288578727663 90 44.396288578727663 110 44.396288578727663
		 130 44.396288578727663 140 44.396288578727663 145 44.396288578727663 150 -14.579942300645158
		 155 -14.579942300645158 170 -14.579942300645158 175 34.529766679762403 180 34.529766679762403
		 185 44.396288578727663 195 44.396288578727663 200 -26.090167772071311 205 -26.090167772071311
		 208 -14.308849226064321 210 -24.866524198510973 225 -24.866524198510973 230 0 235 0
		 240 44.396288578727663 250 44.396288578727663 255 44.396288578727663 257 28.293452570744524
		 260 20.02715266416255 270 20.02715266416255 275 20.02715266416255 280 44.396288578727663
		 285 44.396288578727663 290 3.9832130773550176 300 3.9832130773550176 305 3.9832130773550176
		 310 44.396288578727663 315 44.396288578727663 320 44.483779342222377 330 44.483779342222377
		 335 44.483779342222377 340 44.396288578727663 360 44.396288578727663 365 -47.144122150320811
		 370 -47.144122150320811 375 -47.144122150320811 380 44.396288578727663 405 44.396288578727663;
	setAttr -s 52 ".kit[47:51]"  1 18 18 1 18;
	setAttr -s 52 ".kot[47:51]"  1 18 18 1 18;
	setAttr -s 52 ".kix[47:51]"  1 1 1 1 1;
	setAttr -s 52 ".kiy[47:51]"  0 0 0 0 0;
	setAttr -s 52 ".kox[47:51]"  1 1 1 1 1;
	setAttr -s 52 ".koy[47:51]"  0 0 0 0 0;
createNode animCurveTL -n "RightKnee_Control_translateX";
	rename -uid "4F3A8F61-5244-AF66-2202-91957AEE4AB1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0 290 0
		 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTL -n "RightKnee_Control_translateY";
	rename -uid "1DC84F6E-CB49-94A5-A739-C6A04BE2CBBB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0 290 0
		 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTL -n "RightKnee_Control_translateZ";
	rename -uid "7E99C7FD-3746-8F89-A426-A3A6B98A50FB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0 290 0
		 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTL -n "RightToes_Control_translateX";
	rename -uid "23A30692-C845-534A-6F80-B9BD7E37F4ED";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0 290 0
		 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTL -n "RightToes_Control_translateY";
	rename -uid "9BFFC7CC-0C44-693F-58B1-A088101616A6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0 290 0
		 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTL -n "RightToes_Control_translateZ";
	rename -uid "C539CEAB-AB45-5DF5-8B9C-2B8A31A00235";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0 290 0
		 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTL -n "RootMotion_Control_translateX";
	rename -uid "DADEDED9-9946-4B6A-E07F-0EB1EA73C8E9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0 290 0
		 300 0 310 0 320 0 330 0 340 0 360 0 363 0 364 0 370 0 375 0 380 0 405 0;
	setAttr -s 35 ".kit[29:34]"  1 1 18 18 1 18;
	setAttr -s 35 ".kot[29:34]"  1 1 18 18 1 18;
	setAttr -s 35 ".kix[29:34]"  1 1 1 1 1 1;
	setAttr -s 35 ".kiy[29:34]"  0 0 0 0 0 0;
	setAttr -s 35 ".kox[29:34]"  1 1 1 1 1 1;
	setAttr -s 35 ".koy[29:34]"  0 0 0 0 0 0;
createNode animCurveTL -n "RootMotion_Control_translateY";
	rename -uid "64467B36-234D-45DE-CEE8-E097A15D8809";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0 290 0
		 300 0 310 0 320 0 330 0 340 0 360 0 363 0 364 0 370 0 375 0 380 0 405 0;
	setAttr -s 35 ".kit[29:34]"  1 1 18 18 1 18;
	setAttr -s 35 ".kot[29:34]"  1 1 18 18 1 18;
	setAttr -s 35 ".kix[29:34]"  1 1 1 1 1 1;
	setAttr -s 35 ".kiy[29:34]"  0 0 0 0 0 0;
	setAttr -s 35 ".kox[29:34]"  1 1 1 1 1 1;
	setAttr -s 35 ".koy[29:34]"  0 0 0 0 0 0;
createNode animCurveTL -n "RootMotion_Control_translateZ";
	rename -uid "642B0782-A54F-8CA9-1A1B-4F8F8AB5914B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0 290 0
		 300 0 310 0 320 0 330 0 340 0 360 0 363 0 364 -38.195589905469795 370 -38.195589905469795
		 375 -38.195589905469795 380 0 405 0;
	setAttr -s 35 ".kit[29:34]"  1 1 18 18 1 18;
	setAttr -s 35 ".kot[29:34]"  1 1 18 18 1 18;
	setAttr -s 35 ".kix[29:34]"  1 1 1 1 1 1;
	setAttr -s 35 ".kiy[29:34]"  0 0 0 0 0 0;
	setAttr -s 35 ".kox[29:34]"  1 1 1 1 1 1;
	setAttr -s 35 ".koy[29:34]"  0 0 0 0 0 0;
createNode animCurveTL -n "LeftHip_Control_translateX";
	rename -uid "35B82229-474F-8851-8026-EF924A4425D4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0 290 0
		 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTL -n "LeftHip_Control_translateY";
	rename -uid "8831FFFA-A84A-2C2B-B878-D29D99141757";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0 290 0
		 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTL -n "LeftHip_Control_translateZ";
	rename -uid "BC1892EC-B046-F049-CAB5-11B37C24AC17";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0 290 0
		 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTL -n "RightHip_Control_translateX";
	rename -uid "6DB31350-CC41-B927-05C3-A4B5871EC575";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0 290 0
		 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTL -n "RightHip_Control_translateY";
	rename -uid "0C40B26E-184F-98E3-5866-6EA12F6139B1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0 290 0
		 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTL -n "RightHip_Control_translateZ";
	rename -uid "DADB5A16-0342-592B-E67C-B5A750AEB080";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0 290 0
		 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTL -n "Spine1_Control_translateX";
	rename -uid "2DD0DD8B-3241-98A3-F812-D78A8E5CB13E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0 290 0
		 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTL -n "Spine1_Control_translateY";
	rename -uid "DA057B97-5C43-85B5-FCBC-17A88D80D0FE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0 290 0
		 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTL -n "Spine1_Control_translateZ";
	rename -uid "BB442EDD-8242-F1E0-CEAC-B680371FDC82";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0 290 0
		 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTL -n "Spine2_Control_translateX";
	rename -uid "4AC76D31-304D-0B7E-0F65-AF9FE2818EC9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0 290 0
		 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTL -n "Spine2_Control_translateY";
	rename -uid "25AE75C2-5E4E-7B07-3D69-2E9E6C72D8CC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0 290 0
		 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTL -n "Spine2_Control_translateZ";
	rename -uid "1756674A-1141-2A49-89DE-769E62962E6D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0 290 0
		 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTL -n "LeftArmTwist_Control_translateX";
	rename -uid "99EFE83C-604C-DE41-7A1E-43A0C02B09D7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0 290 0
		 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTL -n "LeftArmTwist_Control_translateY";
	rename -uid "A4B64441-634F-5C5B-AB96-F4803A569887";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0 290 0
		 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTL -n "LeftArmTwist_Control_translateZ";
	rename -uid "C7385032-504B-BDBF-2CA7-5CA3FC9F426A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0 290 0
		 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTL -n "LeftElbow_Control_translateX";
	rename -uid "AD25DF4E-B049-12E1-FF09-BBAAC387514A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 22.531022188875859 170 22.531022188875859 185 0 195 0 210 0 225 0
		 240 0 250 0 260 0 270 0 280 0 290 0 300 0 310 0 320 23.294475643121423 330 23.294475643121423
		 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTL -n "LeftElbow_Control_translateY";
	rename -uid "6A90407B-3940-27CD-1129-7B94F805B8C1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 -42.495823480067521 170 -42.495823480067521 185 0 195 0 210 0 225 0
		 240 0 250 0 260 0 270 0 280 0 290 0 300 0 310 0 320 -11.564111412965815 330 -11.564111412965815
		 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTL -n "LeftElbow_Control_translateZ";
	rename -uid "DE065043-674D-7237-2F64-AD95E18A15C1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 109.58493935339833 170 109.58493935339833 185 0 195 0 210 0 225 0
		 240 0 250 0 260 0 270 0 280 0 290 0 300 0 310 0 320 18.675514120977933 330 18.675514120977933
		 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTL -n "LeftHand_Control_translateX";
	rename -uid "95799B64-8A47-D949-E085-04B74C8D47DA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 54 ".ktv[0:53]"  0 -43.581420406573983 10 -43.581420406573983
		 14 -66.213571048807054 18 -28.195151031012369 22 -30.471721923667012 26 -56.886523375124575
		 30 -43.581420406573983 40 -43.581420406573983 60 -43.581420406573983 70 -46.947542105344397
		 90 -46.947542105344397 110 -47.619775412096921 130 -47.619775412096921 140 -43.581420406573983
		 147 -35.936685640810808 155 -39.306127338948187 170 -39.306127338948187 176 -44.937890010747957
		 180 -45.570447072870515 185 -43.581420406573983 195 -46.947542105344397 197 -40.146119051573471
		 198 -44.050969896007473 199 -45.268204375943967 200 -52.488169697425278 201 -55.970428336055924
		 202 -40.681767212286168 206 -52.018753624609722 210 -52.797673414123238 225 -52.797673414123238
		 240 -46.947542105344397 250 -47.619775412096921 260 -42.157894978546359 270 -42.157894978546359
		 280 -47.619775412096921 290 -40.515836201636567 300 -40.515836201636567 310 -47.619775412096921
		 320 -34.89046830517362 330 -34.89046830517362 340 -47.619775412096921 343 -13.078260212631989
		 345 -48.661486626685594 348 -48.553148660368372 351 -15.711940707661157 354 -43.868214914786286
		 357 -46.549690772335801 360 -47.619775412096921 370 -47.619775412096921 375 -47.619775412096921
		 380 -47.619775412096921 388 -44.03232838627472 397 -20.121259794922477 405 -22.734652533824839;
	setAttr -s 54 ".kit[42:53]"  1 18 18 18 18 18 18 18 
		1 18 18 18;
	setAttr -s 54 ".kot[42:53]"  1 18 18 18 18 18 18 18 
		1 18 18 18;
	setAttr -s 54 ".kix[42:53]"  1 0.35896570603264305 1 0.015536831041209339 
		0.066491463662080627 1 1 1 1 0.030957350857595611 1 1;
	setAttr -s 54 ".kiy[42:53]"  0 0.93335074966085829 0 -0.99987929615588955 
		-0.9977869939321089 0 0 0 0 0.99952070635273971 0 0;
	setAttr -s 54 ".kox[42:53]"  1 0.35896570603264305 1 0.015536831041209339 
		0.066491463662080627 1 1 1 1 0.030957350857595611 1 1;
	setAttr -s 54 ".koy[42:53]"  0 0.93335074966085829 0 -0.99987929615588955 
		-0.9977869939321089 0 0 0 0 0.99952070635273982 0 0;
createNode animCurveTL -n "LeftHand_Control_translateY";
	rename -uid "37267267-8640-E6C2-92BC-C2BB8B0C2F03";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 54 ".ktv[0:53]"  0 7.3726146194617854 10 7.3726146194617854
		 14 5.6586521740407854 18 9.3241074208605355 22 -10.825821358393673 26 -1.5399343262964353
		 30 7.3726146194617854 40 7.3726146194617854 60 7.3726146194617854 70 -13.139923432250145
		 90 -13.139923432250145 110 -6.9892944281638849 130 -6.9892944281638849 140 7.3726146194617854
		 147 -3.3890798269898181 155 37.332211665801971 170 37.332211665801971 176 -7.2350825848882181
		 180 -10.459204461695013 185 7.3726146194617854 195 -13.139923432250145 197 -1.2799503515298603
		 198 2.0200716004592039 199 3.1198015046782936 200 -4.2905531426944226 201 -11.483988038195635
		 202 -13.691781350537319 206 38.431293389988738 210 35.23177787973728 225 35.23177787973728
		 240 -13.139923432250145 250 -6.9892944281638849 260 24.126174956524778 270 24.126174956524778
		 280 -6.9892944281638849 290 30.030877022899112 300 30.030877022899112 310 -6.9892944281638849
		 320 25.68515861454684 330 25.68515861454684 340 -6.9892944281638849 343 -12.619473816144545
		 345 -12.534267184895667 348 -11.46679982220204 351 -9.2070485208636175 354 0.25567541046926923
		 357 -9.0444448614369399 360 -6.9892944281638849 370 -6.9892944281638849 375 -6.9892944281638849
		 380 -6.9892944281638849 388 42.817284351483629 397 0.55598610441796292 405 0.28835889431005496;
	setAttr -s 54 ".kit[42:53]"  1 18 18 18 18 18 18 18 
		1 18 18 18;
	setAttr -s 54 ".kot[42:53]"  1 18 18 18 18 18 18 18 
		1 18 18 18;
	setAttr -s 54 ".kix[42:53]"  0.16087918861302936 0.074926624191615623 
		0.021321705671148817 1 1 1 1 1 1 1 0.38343822647574788 1;
	setAttr -s 54 ".kiy[42:53]"  0.98697410638335059 0.99718904977303502 
		0.99977266659339759 0 0 0 0 0 0 0 -0.92356652520386051 0;
	setAttr -s 54 ".kox[42:53]"  0.16087918861302936 0.074926624191615623 
		0.021321705671148817 1 1 1 1 1 1 1 0.38343822647574788 1;
	setAttr -s 54 ".koy[42:53]"  0.98697410638335059 0.99718904977303502 
		0.99977266659339759 0 0 0 0 0 0 0 -0.9235665252038604 0;
createNode animCurveTL -n "LeftHand_Control_translateZ";
	rename -uid "AAC30013-934A-185E-9E50-D1BDB2C763CE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 54 ".ktv[0:53]"  0 17.584172701095682 10 17.584172701095682
		 14 21.053511927580523 18 25.443485213400596 22 24.554222996400046 26 21.129915115693546
		 30 17.584172701095682 40 17.584172701095682 60 17.584172701095682 70 15.619223848257667
		 90 15.619223848257667 110 15.765115529463291 130 15.765115529463291 140 17.584172701095682
		 147 11.394120773022074 155 45.614530523858754 170 45.614530523858754 176 35.090350136626604
		 180 26.783869515128277 185 17.584172701095682 195 15.619223848257667 197 20.822428251768383
		 198 16.388643146618037 199 28.381932319289398 200 33.884200081017632 201 32.703194419149163
		 202 24.004446257522922 206 42.005857421198172 210 38.282628128749728 225 38.282628128749728
		 240 15.619223848257667 250 15.765115529463291 260 28.189510777374547 270 28.189510777374547
		 280 15.765115529463291 290 31.626804369552829 300 31.626804369552829 310 15.765115529463291
		 320 22.171702100462529 330 22.171702100462529 340 15.765115529463291 343 -13.869117845850374
		 345 -13.140963280459845 348 -6.7878059030156734 351 -4.2206076118330715 354 29.546021518023068
		 357 23.504339217082574 360 15.765115529463291 370 15.765115529463291 375 15.765115529463291
		 380 15.765115529463291 388 31.314317084047449 397 27.034558534295357 405 27.224309235757051;
	setAttr -s 54 ".kit[42:53]"  1 18 18 18 18 18 18 18 
		1 18 18 18;
	setAttr -s 54 ".kot[42:53]"  1 18 18 18 18 18 18 18 
		1 18 18 18;
	setAttr -s 54 ".kix[42:53]"  0.023895710901330473 0.028014788477108411 
		0.016228267154703747 1 0.018138058062427413 1 1 1 1 1 1 1;
	setAttr -s 54 ".kiy[42:53]"  0.99971445673278125 0.99960750878861593 
		0.99986831300184498 0 -0.99983549189340348 0 0 0 0 0 0 0;
	setAttr -s 54 ".kox[42:53]"  0.023895710901330473 0.028014788477108411 
		0.016228267154703747 1 0.018138058062427413 1 1 1 1 1 1 1;
	setAttr -s 54 ".koy[42:53]"  0.99971445673278125 0.99960750878861593 
		0.99986831300184498 0 -0.99983549189340348 0 0 0 0 0 0 0;
createNode animCurveTL -n "LeftFingers_Control_translateX";
	rename -uid "B28FA31B-FD43-B272-EC1E-409603FEA7A2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0 290 0
		 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTL -n "LeftFingers_Control_translateY";
	rename -uid "5E46E87C-DE4D-EF3D-8E22-FDA024D286FC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0 290 0
		 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTL -n "LeftFingers_Control_translateZ";
	rename -uid "B28CA294-1940-FE5A-854B-ABAF883BF6AC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0 290 0
		 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTL -n "LeftShoulder_Control_translateX";
	rename -uid "6DA66B9A-A143-9399-FD44-698962DBEE85";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0 290 0
		 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTL -n "LeftShoulder_Control_translateY";
	rename -uid "56A7B604-7049-6B99-ED4F-71B5BD3E1346";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0 290 0
		 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTL -n "LeftShoulder_Control_translateZ";
	rename -uid "42C61272-5049-411B-72E1-5086303FE142";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0 290 0
		 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
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
	setAttr -s 33 ".ktv[0:32]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0 290 0
		 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTL -n "Neck_Control_translateY";
	rename -uid "C6A44684-274A-2555-6CA9-7497B64B02CD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0 290 0
		 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTL -n "Neck_Control_translateZ";
	rename -uid "1617CF66-5741-C446-3C95-DC986B427C00";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0 290 0
		 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTL -n "Head_Control_translateX";
	rename -uid "56B94D56-3044-C77F-C0AF-51B921BC9E35";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0 290 0
		 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTL -n "Head_Control_translateY";
	rename -uid "0637CB69-9A43-08C1-690C-5DB0E8CFBF3F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0 290 0
		 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTL -n "Head_Control_translateZ";
	rename -uid "C928D8C9-4045-01E3-746C-1FA63DCB8B4F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0 290 0
		 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTL -n "RightArmTwist_Control_translateX";
	rename -uid "57829432-194B-30D7-497B-4785D8C78755";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0 290 0
		 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTL -n "RightArmTwist_Control_translateY";
	rename -uid "34868EF5-1748-1EE9-4282-57A21EF704D3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0 290 0
		 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTL -n "RightArmTwist_Control_translateZ";
	rename -uid "427554A9-CD49-D414-8C55-06ABDC780D1E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0 290 0
		 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTL -n "RightElbow_Control_translateX";
	rename -uid "E18A111A-CB47-B244-783C-71B9B9B10BDD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  0 -23.293111627547226 10 -23.293111627547226
		 20 -23.293111627547226 30 -23.293111627547226 40 -23.293111627547226 60 -23.293111627547226
		 70 -23.293111627547226 90 -23.293111627547226 110 -23.293111627547226 130 -23.293111627547226
		 140 -23.293111627547226 155 -74.401238904441186 170 -74.401238904441186 185 -23.293111627547226
		 195 -23.293111627547226 210 -23.293111627547226 225 -23.293111627547226 240 -23.293111627547226
		 250 -23.293111627547226 260 -44.230457629811845 270 -44.230457629811845 280 -23.293111627547226
		 290 -29.854558654636907 300 -29.854558654636907 310 -23.293111627547226 320 -47.195844127557201
		 330 -47.195844127557201 340 -23.293111627547226 360 -23.293111627547226 370 -23.293111627547226
		 375 -23.293111627547226 380 -23.293111627547226 385 -78.594968870069522 399 -35.992324825853117
		 405 -23.293111627547226;
	setAttr -s 35 ".kit[31:34]"  1 18 18 18;
	setAttr -s 35 ".kot[31:34]"  1 18 18 18;
	setAttr -s 35 ".kix[31:34]"  1 1 0.015067102243167175 1;
	setAttr -s 35 ".kiy[31:34]"  0 0 0.99988648477214348 0;
	setAttr -s 35 ".kox[31:34]"  1 1 0.015067102243167173 1;
	setAttr -s 35 ".koy[31:34]"  0 0 0.99988648477214348 0;
createNode animCurveTL -n "RightElbow_Control_translateY";
	rename -uid "5AC38800-3642-2302-D691-7CBA4E28E2B2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 -1.4042074328982908 170 -1.4042074328982908 185 0 195 0 210 0 225 0
		 240 0 250 0 260 1.5735168498643604 270 1.5735168498643604 280 0 290 -50.024811805482742
		 300 -50.024811805482742 310 0 320 -38.746347753946779 330 -38.746347753946779 340 0
		 360 0 370 0 375 0 380 0 385 2.7758687511612976 399 17.560273458231517 405 0;
	setAttr -s 35 ".kit[31:34]"  1 18 18 18;
	setAttr -s 35 ".kot[31:34]"  1 18 18 18;
	setAttr -s 35 ".kix[31:34]"  1 0.04503707628003302 1 1;
	setAttr -s 35 ".kiy[31:34]"  0 0.99898531608835295 0 0;
	setAttr -s 35 ".kox[31:34]"  1 0.045037076280033027 1 1;
	setAttr -s 35 ".koy[31:34]"  0 0.99898531608835295 0 0;
createNode animCurveTL -n "RightElbow_Control_translateZ";
	rename -uid "EDC633C5-944B-9363-7EC3-45A9570699F9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  0 12.588214453850696 10 12.588214453850696
		 20 12.588214453850696 30 12.588214453850696 40 12.588214453850696 60 12.588214453850696
		 70 12.588214453850696 90 12.588214453850696 110 12.588214453850696 130 12.588214453850696
		 140 12.588214453850696 155 68.393360257126943 170 68.393360257126943 185 12.588214453850696
		 195 12.588214453850696 210 12.588214453850696 225 12.588214453850696 240 12.588214453850696
		 250 12.588214453850696 260 45.287804563496657 270 45.287804563496657 280 12.588214453850696
		 290 167.98998292631234 300 167.98998292631234 310 12.588214453850696 320 141.17809923195023
		 330 141.17809923195023 340 12.588214453850696 360 12.588214453850696 370 12.588214453850696
		 375 12.588214453850696 380 12.588214453850696 385 99.086445901832931 399 197.85307837785777
		 405 12.588214453850696;
	setAttr -s 35 ".kit[31:34]"  1 18 18 18;
	setAttr -s 35 ".kot[31:34]"  1 18 18 18;
	setAttr -s 35 ".kix[31:34]"  1 0.0042731223941630033 1 1;
	setAttr -s 35 ".kiy[31:34]"  0 0.99999087017082544 0 0;
	setAttr -s 35 ".kox[31:34]"  1 0.0042731223941630033 1 1;
	setAttr -s 35 ".koy[31:34]"  0 0.99999087017082544 0 0;
createNode animCurveTL -n "RightHand_Control_translateX";
	rename -uid "5ED98B6F-DC47-D2B0-2166-CA8F91BED5D7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 50.677976288897156 10 50.677976288897156
		 14 28.045825646664088 18 66.064245664458753 22 63.787674771804127 26 37.372873320346564
		 30 50.677976288897156 40 50.677976288897156 60 50.677976288897156 70 53.179974469607643
		 90 53.179974469607643 110 52.507741162855119 130 52.507741162855119 140 50.677976288897156
		 155 70.583391215132437 170 70.583391215132437 175 66.91256221093559 180 56.018948120733477
		 185 50.677976288897156 195 53.179974469607643 200 56.677267756801875 201 58.990288213999754
		 206 61.969894112606468 210 61.969894112606468 225 61.969894112606468 240 53.179974469607643
		 250 52.507741162855119 260 62.376674777478335 270 62.376674777478335 280 52.507741162855119
		 290 66.39951845269843 300 66.39951845269843 310 52.507741162855119 320 64.7677184033722
		 330 64.7677184033722 340 52.507741162855119 344 52.509882076974506 351 67.991802550504573
		 354 73.738971173871022 355 71.394000028378329 360 52.507741162855119 370 52.507741162855119
		 375 52.507741162855119 380 52.507741162855119 385 46.416887478039762 390 47.300023630674197
		 394 36.791707427840656 399 91.734277659960455 405 52.507741162855119;
	setAttr -s 49 ".kit[43:48]"  1 18 18 18 18 18;
	setAttr -s 49 ".kot[43:48]"  1 18 18 18 18 18;
	setAttr -s 49 ".kix[43:48]"  1 1 1 1 1 1;
	setAttr -s 49 ".kiy[43:48]"  0 0 0 0 0 0;
	setAttr -s 49 ".kox[43:48]"  1 1 1 1 1 1;
	setAttr -s 49 ".koy[43:48]"  0 0 0 0 0 0;
createNode animCurveTL -n "RightHand_Control_translateY";
	rename -uid "43EBE580-0949-4663-0902-E0B7252FCC1F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 15.767231135209656 10 15.767231135209656
		 14 14.053268689788663 18 17.718723936608402 22 -2.4312048426458079 26 6.85468218945143
		 30 15.767231135209656 40 15.767231135209656 60 15.767231135209656 70 2.8692212773449497
		 90 2.8692212773449497 110 9.0198502814312089 130 9.0198502814312089 140 15.767231135209656
		 155 24.593905101032909 170 24.593905101032909 175 11.329638060556688 180 4.8600284879631284
		 185 15.767231135209656 195 2.8692212773449497 200 -7.8816358119332488 201 -7.3366479859097948
		 206 21.209989878247875 210 21.209989878247875 225 21.209989878247875 240 2.8692212773449497
		 250 9.0198502814312089 260 23.547856780487979 270 23.547856780487979 280 9.0198502814312089
		 290 21.563918884042604 300 21.563918884042604 310 9.0198502814312089 320 21.773306085132695
		 330 21.773306085132695 340 9.0198502814312089 344 19.373236043391937 351 29.858259215670671
		 354 14.035905932429261 355 19.773337694919963 360 9.0198502814312089 370 9.0198502814312089
		 375 9.0198502814312089 380 9.0198502814312089 385 64.474570674807623 390 48.361971114553683
		 394 40.481045841842608 399 6.9306414066786459 405 9.0198502814312089;
	setAttr -s 49 ".kit[43:48]"  1 18 18 18 18 18;
	setAttr -s 49 ".kot[43:48]"  1 18 18 18 18 18;
	setAttr -s 49 ".kix[43:48]"  1 1 0.015627308197589351 0.009050750798067983 
		1 1;
	setAttr -s 49 ".kiy[43:48]"  0 0 -0.99987788616335427 -0.9999590411161805 
		0 0;
	setAttr -s 49 ".kox[43:48]"  1 1 0.015627308197589351 0.0090507507980679813 
		1 1;
	setAttr -s 49 ".koy[43:48]"  0 0 -0.99987788616335427 -0.9999590411161805 
		0 0;
createNode animCurveTL -n "RightHand_Control_translateZ";
	rename -uid "008F5F67-2344-9067-35A4-2AA4CB36D552";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 21.096401822016219 10 21.096401822016219
		 14 24.56574104850106 18 28.955714334321133 22 28.066452117320583 26 24.642144236614083
		 30 21.096401822016219 40 21.096401822016219 60 21.096401822016219 70 27.243093968072554
		 90 27.243093968072554 110 27.38898564927818 130 27.38898564927818 140 21.096401822016219
		 155 24.347582317284573 170 24.347582317284573 175 24.558849755841937 180 24.040826674995674
		 185 21.096401822016219 195 27.243093968072554 200 17.966089611950565 201 26.371094276603682
		 206 19.24776402164219 210 19.24776402164219 225 19.24776402164219 240 27.243093968072554
		 250 27.38898564927818 260 16.547819069718884 270 16.547819069718884 280 27.38898564927818
		 290 14.767421919548847 300 14.767421919548847 310 27.38898564927818 320 16.980599233478163
		 330 16.980599233478163 340 27.38898564927818 344 43.577972260835836 351 29.536992485918283
		 354 31.358378850053128 355 29.341245911971548 360 27.38898564927818 370 27.38898564927818
		 375 27.38898564927818 380 27.38898564927818 385 21.715221709928201 390 -23.469178487323408
		 394 47.133732052470499 399 20.914900451955884 405 27.38898564927818;
	setAttr -s 49 ".kit[43:48]"  1 18 18 18 18 18;
	setAttr -s 49 ".kot[43:48]"  1 18 18 18 18 18;
	setAttr -s 49 ".kix[43:48]"  1 0.012238655702729709 1 1 1 1;
	setAttr -s 49 ".kiy[43:48]"  0 -0.99992510484865338 0 0 0 0;
	setAttr -s 49 ".kox[43:48]"  1 0.012238655702729707 1 1 1 1;
	setAttr -s 49 ".koy[43:48]"  0 -0.99992510484865316 0 0 0 0;
createNode animCurveTL -n "RightFinders_Control_translateX";
	rename -uid "84D69FCC-A140-107D-4513-1D94959062E6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0 290 0
		 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTL -n "RightFinders_Control_translateY";
	rename -uid "C3889FD1-AA4D-2B13-864E-F2A8B4B7C465";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0 290 0
		 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTL -n "RightFinders_Control_translateZ";
	rename -uid "331986CB-D847-4388-7AB0-AFA5FE8FB577";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0 290 0
		 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTL -n "RightShoulder_Control_translateX";
	rename -uid "7FAEF233-C94C-A12D-0952-7FAAB77AF703";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0 290 0
		 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTL -n "RightShoulder_Control_translateY";
	rename -uid "71C700F1-E24B-1978-C325-BAB703FD359D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0 290 0
		 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTL -n "RightShoulder_Control_translateZ";
	rename -uid "368FD4FA-BA48-DC12-D9AF-E4AD09F42B25";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0 290 0
		 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
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
	setAttr -s 33 ".ktv[0:32]"  0 1 10 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1 290 1
		 300 1 310 1 320 1 330 1 340 1 348 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 33 ".kit[27:32]"  9 9 9 9 1 9;
	setAttr -s 33 ".kot[27:32]"  5 5 5 5 5 5;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
createNode animCurveTA -n "LeftHand_Control_rotateX";
	rename -uid "C7F4514B-7841-5CC6-8C28-E1BEE93AD1F8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 -49.748596685890043 10 -49.748596685890043
		 30 -49.748596685890043 40 -49.748596685890043 60 -49.748596685890043 70 -49.748596685890043
		 90 -49.748596685890043 110 -49.748596685890043 130 -49.748596685890043 140 -49.748596685890043
		 155 -35.921650555808583 170 -35.921650555808583 176 -64.389054288643322 185 -49.748596685890043
		 195 -49.748596685890043 198 -43.394051845357964 199 -33.097958997666154 210 -32.214356978244801
		 225 -32.214356978244801 240 -49.748596685890043 250 -49.748596685890043 260 -4.9143089787118583
		 270 -4.9143089787118583 280 -49.748596685890043 290 -31.097265553261799 300 -31.097265553261799
		 310 -49.748596685890043 320 -57.201878813581175 330 -57.201878813581175 340 -49.748596685890043
		 343 -40.71162025565193 348 -42.597006138207206 351 -39.059322576700588 354 13.573600818266049
		 357 -64.68308742070765 360 -49.748596685890043 370 -49.748596685890043 375 -49.748596685890043
		 380 -49.748596685890043 388 -166.82152470650217 397 -41.546396733772639 405 -30.812001110963241;
	setAttr -s 42 ".kit[38:41]"  1 18 18 18;
	setAttr -s 42 ".kot[38:41]"  1 18 18 18;
	setAttr -s 42 ".kix[38:41]"  1 1 0.51010328065288257 1;
	setAttr -s 42 ".kiy[38:41]"  0 0 0.86011315712943637 0;
	setAttr -s 42 ".kox[38:41]"  1 1 0.51010328065288257 1;
	setAttr -s 42 ".koy[38:41]"  0 0 0.86011315712943648 0;
createNode animCurveTA -n "LeftHand_Control_rotateY";
	rename -uid "21B69B15-7C47-F43D-C451-9FA5BD79363C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 -39.121046077297585 10 -39.121046077297585
		 30 -39.121046077297585 40 -39.121046077297585 60 -39.121046077297585 70 -39.121046077297585
		 90 -39.121046077297585 110 -39.121046077297585 130 -39.121046077297585 140 -39.121046077297585
		 155 -41.437762887249292 170 -41.437762887249292 176 -3.6458273688964531 185 -39.121046077297585
		 195 -39.121046077297585 198 -58.81847375441702 199 -45.287141523020068 210 -70.318631386587455
		 225 -70.318631386587455 240 -39.121046077297585 250 -39.121046077297585 260 -62.1950859712896
		 270 -62.1950859712896 280 -39.121046077297585 290 -52.901257017641456 300 -52.901257017641456
		 310 -39.121046077297585 320 -54.340284786036051 330 -54.340284786036051 340 -39.121046077297585
		 343 29.887955150041634 348 15.490595846556397 351 24.066611628863456 354 -68.355023349065789
		 357 -30.994786026257604 360 -39.121046077297585 370 -39.121046077297585 375 -39.121046077297585
		 380 -39.121046077297585 388 -82.027937527909685 397 -69.90176368077455 405 -57.292127346108963;
	setAttr -s 42 ".kit[38:41]"  1 18 18 18;
	setAttr -s 42 ".kot[38:41]"  1 18 18 18;
	setAttr -s 42 ".kix[38:41]"  1 1 0.85389756046362708 1;
	setAttr -s 42 ".kiy[38:41]"  0 0 0.52044111697123463 0;
	setAttr -s 42 ".kox[38:41]"  1 1 0.85389756046362708 1;
	setAttr -s 42 ".koy[38:41]"  0 0 0.52044111697123452 0;
createNode animCurveTA -n "LeftHand_Control_rotateZ";
	rename -uid "D7F07BC7-6A46-9E64-62B2-CCAC07189AFC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 -131.66908887094525 10 -131.66908887094525
		 30 -131.66908887094525 40 -131.66908887094525 60 -131.66908887094525 70 -131.66908887094525
		 90 -131.66908887094525 110 -131.66908887094525 130 -131.66908887094525 140 -131.66908887094525
		 155 -120.91424997314243 170 -120.91424997314243 176 -123.64796696383871 185 -131.66908887094525
		 195 -131.66908887094525 198 -121.51937169198494 199 -114.80910108094692 210 -109.47436412830348
		 225 -109.47436412830348 240 -131.66908887094525 250 -131.66908887094525 260 -137.13884628562653
		 270 -137.13884628562653 280 -131.66908887094525 290 -132.48558960251137 300 -132.48558960251137
		 310 -131.66908887094525 320 -118.94065997391652 330 -118.94065997391652 340 -131.66908887094525
		 343 -34.27129533096268 348 -54.591413055058446 351 -8.4038213754078193 354 -195.07380208196139
		 357 -126.22681104821527 360 -131.66908887094525 370 -131.66908887094525 375 -131.66908887094525
		 380 -131.66908887094525 388 78.835496342818004 397 9.9057938022557188 405 -19.122921537170441;
	setAttr -s 42 ".kit[38:41]"  1 18 18 18;
	setAttr -s 42 ".kot[38:41]"  1 18 18 18;
	setAttr -s 42 ".kix[38:41]"  1 1 0.38275431265034088 1;
	setAttr -s 42 ".kiy[38:41]"  0 0 -0.92385016975024969 0;
	setAttr -s 42 ".kox[38:41]"  1 1 0.38275431265034082 1;
	setAttr -s 42 ".koy[38:41]"  0 0 -0.92385016975024958 0;
createNode animCurveTU -n "LeftHand_Control_scaleX";
	rename -uid "334B9CE0-744D-DDE8-3C2A-D881CD90A85E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 1 10 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1 290 1
		 300 1 310 1 320 1 330 1 340 1 348 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTU -n "LeftHand_Control_scaleY";
	rename -uid "6A7C6932-9A4A-55E5-7DBB-FC860F91DF4C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 1 10 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1 290 1
		 300 1 310 1 320 1 330 1 340 1 348 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTU -n "LeftHand_Control_scaleZ";
	rename -uid "EE303A97-B44B-9981-BD21-1498748096E6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 1 10 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1 290 1
		 300 1 310 1 320 1 330 1 340 1 348 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTU -n "Head_Control_visibility";
	rename -uid "DECA8991-0A4E-D2BE-DB50-198DD5875DBD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1 290 1
		 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 33 ".kit[28:32]"  9 9 9 1 9;
	setAttr -s 33 ".kot[28:32]"  5 5 5 5 5;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
createNode animCurveTA -n "Head_Control_rotateX";
	rename -uid "51796712-894F-D398-9014-BDB42E1714DB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 0 10 0 20 0 30 0 40 -7.4159181497611364
		 60 -7.4159181497611364 70 23.830928637871072 90 23.830928637871072 110 6.5149419875002286
		 130 6.5149419875002286 140 -7.4159181497611364 155 0 170 0 185 -7.4159181497611364
		 195 23.830928637871072 210 0 225 0 240 23.830928637871072 250 6.5149419875002286
		 260 -10.62050822974928 270 -10.62050822974928 280 6.5149419875002286 283 15.63027066978619
		 290 11.851008455234917 300 11.851008455234917 310 6.5149419875002286 320 0 330 0
		 340 6.5149419875002286 360 6.5149419875002286 370 6.5149419875002286 375 6.5149419875002286
		 380 6.5149419875002286 405 6.5149419875002286;
	setAttr -s 34 ".kit[32:33]"  1 18;
	setAttr -s 34 ".kot[32:33]"  1 18;
	setAttr -s 34 ".kix[32:33]"  1 1;
	setAttr -s 34 ".kiy[32:33]"  0 0;
	setAttr -s 34 ".kox[32:33]"  1 1;
	setAttr -s 34 ".koy[32:33]"  0 0;
createNode animCurveTA -n "Head_Control_rotateY";
	rename -uid "9B5ECD5C-1B48-CC2A-0E6C-1FBC4DA1177A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 0 10 0 20 0 30 0 40 -57.302070647618734
		 60 -57.302070647618734 70 49.080723677491015 90 49.080723677491015 110 0 130 0 140 -57.302070647618734
		 155 0 170 0 185 -57.302070647618734 195 49.080723677491015 210 33.192872414885443
		 225 33.192872414885443 240 49.080723677491015 250 0 260 55.819293842008996 270 55.819293842008996
		 280 0 283 60.742788717901185 290 42.965545397652768 300 42.965545397652768 310 0
		 320 48.082533624568605 330 48.082533624568605 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 34 ".kit[32:33]"  1 18;
	setAttr -s 34 ".kot[32:33]"  1 18;
	setAttr -s 34 ".kix[32:33]"  1 1;
	setAttr -s 34 ".kiy[32:33]"  0 0;
	setAttr -s 34 ".kox[32:33]"  1 1;
	setAttr -s 34 ".koy[32:33]"  0 0;
createNode animCurveTA -n "Head_Control_rotateZ";
	rename -uid "BA538599-C549-004E-317D-10A499C204FC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 0.84821139040032134 10 0.84821139040032134
		 20 0.84821139040032134 30 0.84821139040032134 40 -9.5818220847932469 60 -9.5818220847932469
		 70 27.570186378794659 90 27.570186378794659 110 0 130 0 140 -9.5818220847932469 155 0
		 170 0 185 -9.5818220847932469 195 27.570186378794659 210 0 225 0 240 27.570186378794659
		 250 0 260 -0.65153910689323347 270 -0.65153910689323347 280 0 283 15.051423562760132
		 290 11.936867663258219 300 11.936867663258219 310 0 320 0 330 0 340 0 360 0 370 0
		 375 0 380 0 405 0;
	setAttr -s 34 ".kit[32:33]"  1 18;
	setAttr -s 34 ".kot[32:33]"  1 18;
	setAttr -s 34 ".kix[32:33]"  1 1;
	setAttr -s 34 ".kiy[32:33]"  0 0;
	setAttr -s 34 ".kox[32:33]"  1 1;
	setAttr -s 34 ".koy[32:33]"  0 0;
createNode animCurveTU -n "Head_Control_scaleX";
	rename -uid "15789E17-1E44-6453-B477-8C9E216BC885";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1 290 1
		 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTU -n "Head_Control_scaleY";
	rename -uid "4D77B449-6949-416C-BEAE-1EB11BBC0EB0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1 290 1
		 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTU -n "Head_Control_scaleZ";
	rename -uid "06885C34-7A47-FC79-B856-0AB8C4A770EC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1 290 1
		 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTU -n "RightArmTwist_Control_visibility";
	rename -uid "1E216838-9645-6097-C86E-7CA12EEFE74A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1 290 1
		 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 33 ".kit[28:32]"  9 9 9 1 9;
	setAttr -s 33 ".kot[28:32]"  5 5 5 5 5;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
createNode animCurveTA -n "RightArmTwist_Control_rotateX";
	rename -uid "7F241D05-6046-013E-AD2E-B1A5D073A031";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0 290 0
		 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTA -n "RightArmTwist_Control_rotateY";
	rename -uid "DEC01178-424E-BBDD-178E-7C8D38665EA6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0 290 0
		 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTA -n "RightArmTwist_Control_rotateZ";
	rename -uid "93574063-B74F-E6B7-A3F6-7E8A1EFB2E44";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0 290 0
		 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTU -n "RightArmTwist_Control_scaleX";
	rename -uid "32716BC1-4140-30EA-02DB-C3BAA83EADCF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1 290 1
		 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTU -n "RightArmTwist_Control_scaleY";
	rename -uid "56C6853B-3947-CD6D-7775-E6AB50BC672F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1 290 1
		 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTU -n "RightArmTwist_Control_scaleZ";
	rename -uid "A0ACB72B-C74F-0FDD-28FC-FFA796B3E7C5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1 290 1
		 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTU -n "RightElbow_Control_visibility";
	rename -uid "C5614E41-954B-6440-842F-E98031A9AEF1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1 290 1
		 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 33 ".kit[28:32]"  9 9 9 1 9;
	setAttr -s 33 ".kot[28:32]"  5 5 5 5 5;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
createNode animCurveTA -n "RightElbow_Control_rotateX";
	rename -uid "9C27010D-2F4C-14DB-2B37-11B3B37D6430";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0 290 0
		 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTA -n "RightElbow_Control_rotateY";
	rename -uid "D4A44B5E-7F40-7D4D-0C8D-A5850F98CB4E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0 290 0
		 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTA -n "RightElbow_Control_rotateZ";
	rename -uid "1B0B2F0B-684B-22D3-9EB6-10B94356FFEA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0 290 0
		 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTU -n "RightElbow_Control_scaleX";
	rename -uid "97CD71FA-9640-1226-D0E4-79B22BE08B04";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1 290 1
		 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTU -n "RightElbow_Control_scaleY";
	rename -uid "D6179417-424A-24A7-7D74-78B28405239B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1 290 1
		 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTU -n "RightElbow_Control_scaleZ";
	rename -uid "2669F1CF-0A41-CB1A-7D34-0DB45CACB701";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1 290 1
		 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTU -n "RightFinders_Control_visibility";
	rename -uid "22E628A4-C34E-3836-BE7B-26A0419D12AF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1 290 1
		 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 33 ".kit[28:32]"  9 9 9 1 9;
	setAttr -s 33 ".kot[28:32]"  5 5 5 5 5;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
createNode animCurveTA -n "RightFinders_Control_rotateX";
	rename -uid "EF13F1BD-8045-4892-C260-EB81700EAA42";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0 290 0
		 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 -16.9509198331112;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTA -n "RightFinders_Control_rotateY";
	rename -uid "DD4A45DA-6C41-5EAA-67D3-E4BE6B4BDBB0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0 290 0
		 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 7.4336114997856226;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTA -n "RightFinders_Control_rotateZ";
	rename -uid "F6F01073-E240-BCA5-2756-6BBF994134C1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0 290 0
		 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 -55.867792436887299;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTU -n "RightFinders_Control_scaleX";
	rename -uid "0F687160-6041-0E8B-0D83-4FB8E8A5CBB3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1 290 1
		 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTU -n "RightFinders_Control_scaleY";
	rename -uid "045E1EAB-9F4D-9621-B511-28AC210393B6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1 290 1
		 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTU -n "RightFinders_Control_scaleZ";
	rename -uid "91E4882C-3F4B-83DA-924E-87B1F5335CAB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1 290 1
		 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
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
	setAttr -s 33 ".ktv[0:32]"  0 1 10 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 170 1 185 1 195 1 206 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1
		 290 1 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 33 ".kit[28:32]"  9 9 9 1 9;
	setAttr -s 33 ".kot[28:32]"  5 5 5 5 5;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
createNode animCurveTA -n "RightHand_Control_rotateX";
	rename -uid "DA7A9D5B-494B-0450-03C3-32974A7F6EE8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 48 ".ktv[0:47]"  0 96.394798559304604 10 96.394798559304604
		 30 96.394798559304604 40 96.394798559304604 60 96.394798559304604 70 102.76946692148894
		 90 102.76946692148894 110 102.76946692148894 130 102.76946692148894 140 96.394798559304604
		 147 109.51986325347045 155 24.97158550816544 170 24.97158550816544 175 36.400441991982717
		 180 67.184623448273413 185 96.394798559304604 195 102.76946692148894 198 148.44657779309597
		 199 151.56122495396576 200 375.61879782501484 201 387.87702593485091 203 575.59795047939667
		 206 600.71766509381871 210 600.71766509381871 225 600.71766509381871 240 102.76946692148894
		 250 102.76946692148894 260 62.208561710086521 270 62.208561710086521 280 102.76946692148894
		 290 70.719125242742635 300 70.719125242742635 310 102.76946692148894 320 81.65914790696776
		 330 81.65914790696776 340 102.76946692148894 344 167.45201354102258 354 119.16808734573996
		 360 102.76946692148894 370 102.76946692148894 375 102.76946692148894 380 102.76946692148894
		 385 209.61321997476571 387 206.95028160228696 390 154.67380372246927 394 258.42658677783294
		 399 156.97313757189045 405 121.31550245969304;
	setAttr -s 48 ".kit[41:47]"  1 18 18 18 18 18 18;
	setAttr -s 48 ".kot[41:47]"  1 18 18 18 18 18 18;
	setAttr -s 48 ".kix[41:47]"  1 1 0.51302227739354767 1 1 0.18810855804454879 
		1;
	setAttr -s 48 ".kiy[41:47]"  0 0 -0.85837529257192513 0 0 -0.98214824257359479 
		0;
	setAttr -s 48 ".kox[41:47]"  1 1 0.51302227739354755 1 1 0.18810855804454876 
		1;
	setAttr -s 48 ".koy[41:47]"  0 0 -0.85837529257192502 0 0 -0.98214824257359457 
		0;
createNode animCurveTA -n "RightHand_Control_rotateY";
	rename -uid "CF8F8643-3E4F-373F-B23F-139255F5F028";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 48 ".ktv[0:47]"  0 54.683622456471149 10 54.683622456471149
		 30 54.683622456471149 40 54.683622456471149 60 54.683622456471149 70 49.905241317664419
		 90 49.905241317664419 110 49.905241317664419 130 49.905241317664419 140 54.683622456471149
		 147 46.11844545561727 155 80.546439128675729 170 80.546439128675729 175 45.377189282520085
		 180 46.578338267433487 185 54.683622456471149 195 49.905241317664419 198 56.112094874416528
		 199 75.600349792903387 200 84.822733054743949 201 58.981754286153766 203 71.048944288422021
		 206 96.265816183994076 210 96.265816183994076 225 96.265816183994076 240 49.905241317664419
		 250 49.905241317664419 260 67.660906871797891 270 67.660906871797891 280 49.905241317664419
		 290 76.538067109201876 300 76.538067109201876 310 49.905241317664419 320 61.292247280678033
		 330 61.292247280678033 340 49.905241317664419 344 37.312432647472612 354 50.515081027832586
		 360 49.905241317664419 370 49.905241317664419 375 49.905241317664419 380 49.905241317664419
		 385 21.944046537513291 387 14.742534790637203 390 14.850255757219928 394 54.616071431399845
		 399 12.469200703428857 405 106.05313748935647;
	setAttr -s 48 ".kit[41:47]"  1 18 18 18 18 18 18;
	setAttr -s 48 ".kot[41:47]"  1 18 18 18 18 18 18;
	setAttr -s 48 ".kix[41:47]"  1 0.42924507484518631 1 0.99898355202074685 
		1 1 1;
	setAttr -s 48 ".kiy[41:47]"  0 -0.90318805667543589 0 0.045076188747625832 
		0 0 0;
	setAttr -s 48 ".kox[41:47]"  1 0.42924507484518626 1 0.99898355202074696 
		1 1 1;
	setAttr -s 48 ".koy[41:47]"  0 -0.90318805667543589 0 0.045076188747625839 
		0 0 0;
createNode animCurveTA -n "RightHand_Control_rotateZ";
	rename -uid "DF011827-714C-EB69-2DCC-EB861ECEB4B4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 48 ".ktv[0:47]"  0 148.40100726789998 10 148.40100726789998
		 30 148.40100726789998 40 148.40100726789998 60 148.40100726789998 70 146.37706025062721
		 90 146.37706025062721 110 146.37706025062721 130 146.37706025062721 140 148.40100726789998
		 147 139.84230109059916 155 108.82102168569389 170 108.82102168569389 175 89.802923050612051
		 180 112.093828281154 185 148.40100726789998 195 146.37706025062721 198 211.4339105654245
		 199 219.05728958475461 200 439.36768652216165 201 449.43311054671386 203 610.76057222350539
		 206 697.82063871219157 210 697.82063871219157 225 697.82063871219157 240 146.37706025062721
		 250 146.37706025062721 260 142.51773487836599 270 142.51773487836599 280 146.37706025062721
		 290 155.74367851300636 300 155.74367851300636 310 146.37706025062721 320 158.88173047791764
		 330 158.88173047791764 340 146.37706025062721 344 230.671748198492 354 187.25226964805375
		 360 146.37706025062721 370 146.37706025062721 375 146.37706025062721 380 146.37706025062721
		 385 260.19365642946065 387 282.59365560963204 390 153.48785188475611 394 301.65439050500868
		 399 186.10643061317248 405 182.77074549746177;
	setAttr -s 48 ".kit[41:47]"  1 18 18 18 18 18 18;
	setAttr -s 48 ".kot[41:47]"  1 18 18 18 18 18 18;
	setAttr -s 48 ".kix[41:47]"  1 0.12176865983407663 1 1 1 0.81976140088820482 
		1;
	setAttr -s 48 ".kiy[41:47]"  0 0.99255850884580754 0 0 0 -0.57270519956938393 
		0;
	setAttr -s 48 ".kox[41:47]"  1 0.12176865983407663 1 1 1 0.81976140088820493 
		1;
	setAttr -s 48 ".koy[41:47]"  0 0.99255850884580754 0 0 0 -0.57270519956938404 
		0;
createNode animCurveTU -n "RightHand_Control_scaleX";
	rename -uid "7CB9CA02-EB45-E941-6E6C-3489F3609D2B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 1 10 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 170 1 185 1 195 1 206 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1
		 290 1 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTU -n "RightHand_Control_scaleY";
	rename -uid "B6413DE2-9E47-92C2-51BD-4D9C153F56B3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 1 10 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 170 1 185 1 195 1 206 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1
		 290 1 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTU -n "RightHand_Control_scaleZ";
	rename -uid "E7953ABB-1340-1789-5268-7FA6AB0B0EAF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 1 10 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 170 1 185 1 195 1 206 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1
		 290 1 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTU -n "LeftShoulder_Control_visibility";
	rename -uid "9C65D30F-C54D-994C-DE5E-A0B9E99C2963";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1 290 1
		 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 33 ".kit[28:32]"  9 9 9 1 9;
	setAttr -s 33 ".kot[28:32]"  5 5 5 5 5;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
createNode animCurveTA -n "LeftShoulder_Control_rotateX";
	rename -uid "3C51842A-644D-C9EA-62E4-98934280450C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0 290 0
		 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTA -n "LeftShoulder_Control_rotateY";
	rename -uid "75EAA9F7-4F4E-36FF-090B-3BB6FE1544CD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0 290 0
		 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTA -n "LeftShoulder_Control_rotateZ";
	rename -uid "41E6723F-0D46-5CBE-39C3-259ADC0BA09B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0 290 0
		 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTU -n "LeftShoulder_Control_scaleX";
	rename -uid "E6D77E33-D244-BD46-9680-E7A3F6AAF539";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1 290 1
		 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTU -n "LeftShoulder_Control_scaleY";
	rename -uid "FAFD25F1-7D4A-998F-8109-3A9B26EF817B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1 290 1
		 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTU -n "LeftShoulder_Control_scaleZ";
	rename -uid "31F5048C-F345-A408-E186-618A2FE81DF5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1 290 1
		 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTU -n "LeftElbow_Control_visibility";
	rename -uid "35A71DE1-BD4D-8B22-C937-BE9C3615BEC8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1 290 1
		 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 33 ".kit[28:32]"  9 9 9 1 9;
	setAttr -s 33 ".kot[28:32]"  5 5 5 5 5;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
createNode animCurveTA -n "LeftElbow_Control_rotateX";
	rename -uid "F01E4FDF-ED42-A96F-F68E-2D89DEB182AB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0 290 0
		 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTA -n "LeftElbow_Control_rotateY";
	rename -uid "86617A39-FB42-3148-4585-74822362F2D7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0 290 0
		 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTA -n "LeftElbow_Control_rotateZ";
	rename -uid "51FA196A-3845-BC7A-D6C7-7D9639BF1BD1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0 290 0
		 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTU -n "LeftElbow_Control_scaleX";
	rename -uid "69BDC857-324B-C47E-3DDB-38BA716AEAB2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1 290 1
		 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTU -n "LeftElbow_Control_scaleY";
	rename -uid "CE29AE7C-6541-BC7F-FF26-9F8BC933E989";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1 290 1
		 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTU -n "LeftElbow_Control_scaleZ";
	rename -uid "DA5B6E53-6E4E-F806-BF96-718FED88D7C5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1 290 1
		 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTU -n "LeftArmTwist_Control_visibility";
	rename -uid "DD6310B5-8B4D-7738-2648-2B911C639FC4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1 290 1
		 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 33 ".kit[28:32]"  9 9 9 1 9;
	setAttr -s 33 ".kot[28:32]"  5 5 5 5 5;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
createNode animCurveTA -n "LeftArmTwist_Control_rotateX";
	rename -uid "CB77B01A-5544-7E78-6EA4-E8B1CDCC9352";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0 290 0
		 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTA -n "LeftArmTwist_Control_rotateY";
	rename -uid "E3DF7860-9C44-D1F5-6014-18A57279DEE5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0 290 0
		 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTA -n "LeftArmTwist_Control_rotateZ";
	rename -uid "5D39FFAF-7844-FFF5-B614-A2B8F51DE119";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0 290 0
		 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTU -n "LeftArmTwist_Control_scaleX";
	rename -uid "236593FC-8C4E-095A-23CB-1587FC00322B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1 290 1
		 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTU -n "LeftArmTwist_Control_scaleY";
	rename -uid "44083144-8F46-AA8D-64B0-87ABC69701C4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1 290 1
		 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTU -n "LeftArmTwist_Control_scaleZ";
	rename -uid "B4169FF4-2146-A5B6-CDFA-8498F83311A1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1 290 1
		 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTU -n "LeftKnee_Control_visibility";
	rename -uid "958BAD18-344C-14BB-2989-DAA52670C29F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1 290 1
		 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 33 ".kit[28:32]"  9 9 9 1 9;
	setAttr -s 33 ".kot[28:32]"  5 5 5 5 5;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
createNode animCurveTA -n "LeftKnee_Control_rotateX";
	rename -uid "6F103C5A-7845-8D70-5703-43B9DE57E6DF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0 290 0
		 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTA -n "LeftKnee_Control_rotateY";
	rename -uid "AF999CFE-2F47-ECDC-C81B-11AF18944474";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0 290 0
		 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTA -n "LeftKnee_Control_rotateZ";
	rename -uid "08955E4E-3645-9692-56EF-AA8F6F559A5C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0 290 0
		 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTU -n "LeftKnee_Control_scaleX";
	rename -uid "8EEC312E-CA47-016A-B83E-F4AFB362A184";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1 290 1
		 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTU -n "LeftKnee_Control_scaleY";
	rename -uid "B23E43B1-EF4F-AFA6-A3C5-CEA2D6D8FE8E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1 290 1
		 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTU -n "LeftKnee_Control_scaleZ";
	rename -uid "99783A57-FA48-6BA9-F7A2-96A1A7C9D79F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1 290 1
		 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTU -n "RightFoot_Control_visibility";
	rename -uid "AD163B95-A74F-814F-C258-09A8209C6D28";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 48 ".ktv[0:47]"  0 1 10 1 14 1 19 1 25 1 30 1 40 1 60 1 70 1
		 90 1 110 1 130 1 140 1 145 1 150 1 155 1 170 1 185 1 195 1 200 1 205 1 210 1 225 1
		 230 1 235 1 240 1 250 1 255 1 260 1 270 1 275 1 280 1 285 1 290 1 300 1 305 1 310 1
		 315 1 320 1 330 1 335 1 340 1 360 1 365 1 370 1 375 1 380 1 405 1;
	setAttr -s 48 ".kit[42:47]"  9 1 9 9 1 9;
	setAttr -s 48 ".kot[42:47]"  5 5 5 5 5 5;
	setAttr -s 48 ".kix[43:47]"  1 1 1 1 1;
	setAttr -s 48 ".kiy[43:47]"  0 0 0 0 0;
createNode animCurveTA -n "RightFoot_Control_rotateX";
	rename -uid "31AA40D6-7E4D-DE9C-F219-BC99D2C5C83C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 60 ".ktv[0:59]"  0 0 10 -35.88035555306211 14 0 19 0 22 44.670029079876663
		 25 0 30 0 40 0 60 0 70 0 90 0 110 0 130 0 140 0 145 0 150 0 155 0 170 0 185 0 195 0
		 198 34.95635732246533 200 0 205 0 208 47.774070819701876 210 0 225 0 228 30.842876650870554
		 230 0 235 0 238 23.623033497754079 240 0 250 0 255 0 257 -142.91156134972587 260 0
		 270 0 275 0 278 34.582614502603505 280 0 285 0 287 12.825642527982266 290 0 300 0
		 305 0 308 12.44021024079405 310 0 315 0 318 47.946556505485567 320 0 330 0 335 0
		 337 22.901776934740823 340 0 360 0 363 21.661549279766877 365 0 370 0 375 0 380 0
		 405 0;
	setAttr -s 60 ".kit[55:59]"  1 18 18 1 18;
	setAttr -s 60 ".kot[55:59]"  1 18 18 1 18;
	setAttr -s 60 ".kix[55:59]"  1 1 1 1 1;
	setAttr -s 60 ".kiy[55:59]"  0 0 0 0 0;
	setAttr -s 60 ".kox[55:59]"  1 1 1 1 1;
	setAttr -s 60 ".koy[55:59]"  0 0 0 0 0;
createNode animCurveTA -n "RightFoot_Control_rotateY";
	rename -uid "D1854F29-FB42-AED4-D577-6BA13C423CC0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 57 ".ktv[0:56]"  0 0 10 -4.254028518065847 14 -73.229636368088677
		 19 -73.229636368088677 22 -167.1271051661241 25 -200.20745991017617 30 -200.20745991017617
		 40 -200.20745991017617 60 -200.20745991017617 70 -200.20745991017617 90 -200.20745991017617
		 110 -200.20745991017617 130 -200.20745991017617 140 -200.20745991017617 145 -200.20745991017617
		 150 -406.43457541068528 155 -406.43457541068528 170 -406.43457541068528 175 -277.8927258886514
		 180 -277.8927258886514 185 -200.20745991017617 195 -200.20745991017617 200 -68.878949205809022
		 205 -68.878949205809022 210 -61.697577746310813 225 -61.697577746310813 230 -175.49414559188568
		 235 -175.49414559188568 240 -200.20745991017617 250 -200.20745991017617 255 -200.20745991017617
		 257 -256.77125587204767 260 -298.53306391496227 270 -298.53306391496227 275 -298.53306391496227
		 278 -199.88598119894868 280 -200.20745991017617 285 -200.20745991017617 287 -155.40475907171412
		 290 -156.67516444104422 300 -156.67516444104422 305 -156.67516444104422 308 -182.88196553691841
		 310 -200.20745991017617 315 -200.20745991017617 318 -228.90251731714494 320 -249.86685400283758
		 330 -249.86685400283758 335 -249.86685400283758 337 -221.3433763412327 340 -200.20745991017617
		 360 -200.20745991017617 365 -200.20745991017617 370 -200.20745991017617 375 -200.20745991017617
		 380 -200.20745991017617 405 -200.20745991017617;
	setAttr -s 57 ".kit[52:56]"  1 18 18 1 18;
	setAttr -s 57 ".kot[52:56]"  1 18 18 1 18;
	setAttr -s 57 ".kix[52:56]"  1 1 1 1 1;
	setAttr -s 57 ".kiy[52:56]"  0 0 0 0 0;
	setAttr -s 57 ".kox[52:56]"  1 1 1 1 1;
	setAttr -s 57 ".koy[52:56]"  0 0 0 0 0;
createNode animCurveTA -n "RightFoot_Control_rotateZ";
	rename -uid "61ED0D84-6A4E-667F-1C67-3D9FD0A00BAB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 55 ".ktv[0:54]"  0 0 10 3.0714089881951745 14 0 19 0 22 -4.2512085436093461
		 25 0 30 0 40 0 60 0 70 0 90 0 110 0 130 0 140 0 145 0 150 0 155 0 170 0 185 0 195 0
		 200 0 205 0 210 0 225 0 230 0 235 0 240 0 250 0 255 0 257 -175.58436517498919 260 0
		 270 0 275 0 278 30.503657415729151 280 0 285 0 287 21.778622719254699 290 0 300 0
		 305 0 308 10.870255222588296 310 0 315 0 318 24.216911654676565 320 0 330 0 335 0
		 337 13.589663340094255 340 0 360 0 365 0 370 0 375 0 380 0 405 0;
	setAttr -s 55 ".kit[50:54]"  1 18 18 1 18;
	setAttr -s 55 ".kot[50:54]"  1 18 18 1 18;
	setAttr -s 55 ".kix[50:54]"  1 1 1 1 1;
	setAttr -s 55 ".kiy[50:54]"  0 0 0 0 0;
	setAttr -s 55 ".kox[50:54]"  1 1 1 1 1;
	setAttr -s 55 ".koy[50:54]"  0 0 0 0 0;
createNode animCurveTU -n "RightFoot_Control_scaleX";
	rename -uid "9494A289-5440-94C9-A164-5592EF05082F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 48 ".ktv[0:47]"  0 1 10 1 14 1 19 1 25 1 30 1 40 1 60 1 70 1
		 90 1 110 1 130 1 140 1 145 1 150 1 155 1 170 1 185 1 195 1 200 1 205 1 210 1 225 1
		 230 1 235 1 240 1 250 1 255 1 260 1 270 1 275 1 280 1 285 1 290 1 300 1 305 1 310 1
		 315 1 320 1 330 1 335 1 340 1 360 1 365 1 370 1 375 1 380 1 405 1;
	setAttr -s 48 ".kit[43:47]"  1 18 18 1 18;
	setAttr -s 48 ".kot[43:47]"  1 18 18 1 18;
	setAttr -s 48 ".kix[43:47]"  1 1 1 1 1;
	setAttr -s 48 ".kiy[43:47]"  0 0 0 0 0;
	setAttr -s 48 ".kox[43:47]"  1 1 1 1 1;
	setAttr -s 48 ".koy[43:47]"  0 0 0 0 0;
createNode animCurveTU -n "RightFoot_Control_scaleY";
	rename -uid "DBBC791E-8044-B512-A9DB-A384EB1ED71D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 48 ".ktv[0:47]"  0 1 10 1 14 1 19 1 25 1 30 1 40 1 60 1 70 1
		 90 1 110 1 130 1 140 1 145 1 150 1 155 1 170 1 185 1 195 1 200 1 205 1 210 1 225 1
		 230 1 235 1 240 1 250 1 255 1 260 1 270 1 275 1 280 1 285 1 290 1 300 1 305 1 310 1
		 315 1 320 1 330 1 335 1 340 1 360 1 365 1 370 1 375 1 380 1 405 1;
	setAttr -s 48 ".kit[43:47]"  1 18 18 1 18;
	setAttr -s 48 ".kot[43:47]"  1 18 18 1 18;
	setAttr -s 48 ".kix[43:47]"  1 1 1 1 1;
	setAttr -s 48 ".kiy[43:47]"  0 0 0 0 0;
	setAttr -s 48 ".kox[43:47]"  1 1 1 1 1;
	setAttr -s 48 ".koy[43:47]"  0 0 0 0 0;
createNode animCurveTU -n "RightFoot_Control_scaleZ";
	rename -uid "C0FEA8D1-E54E-21D8-DD64-59B9DF5DCC2D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 48 ".ktv[0:47]"  0 1 10 1 14 1 19 1 25 1 30 1 40 1 60 1 70 1
		 90 1 110 1 130 1 140 1 145 1 150 1 155 1 170 1 185 1 195 1 200 1 205 1 210 1 225 1
		 230 1 235 1 240 1 250 1 255 1 260 1 270 1 275 1 280 1 285 1 290 1 300 1 305 1 310 1
		 315 1 320 1 330 1 335 1 340 1 360 1 365 1 370 1 375 1 380 1 405 1;
	setAttr -s 48 ".kit[43:47]"  1 18 18 1 18;
	setAttr -s 48 ".kot[43:47]"  1 18 18 1 18;
	setAttr -s 48 ".kix[43:47]"  1 1 1 1 1;
	setAttr -s 48 ".kiy[43:47]"  0 0 0 0 0;
	setAttr -s 48 ".kox[43:47]"  1 1 1 1 1;
	setAttr -s 48 ".koy[43:47]"  0 0 0 0 0;
createNode animCurveTU -n "LeftToes_Control_visibility";
	rename -uid "82963853-394D-C580-1611-37A47C3887E1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1 290 1
		 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 33 ".kit[28:32]"  9 9 9 1 9;
	setAttr -s 33 ".kot[28:32]"  5 5 5 5 5;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
createNode animCurveTA -n "LeftToes_Control_rotateX";
	rename -uid "5ACFB7C3-6D43-D7D3-4753-E1BEF530F4CE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 0 10 -24.521570787337929 20 0 30 0 40 0
		 60 0 70 0 90 0 110 0 130 0 140 0 155 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0
		 260 0 270 0 280 0 290 0 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTA -n "LeftToes_Control_rotateY";
	rename -uid "CB4AD19C-6747-32C3-6432-A0B96CAA6885";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0 290 0
		 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTA -n "LeftToes_Control_rotateZ";
	rename -uid "D3D2B4C8-0C4B-B887-DEF2-539DF9932836";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0 290 0
		 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTU -n "LeftToes_Control_scaleX";
	rename -uid "29DDAE09-C444-9CCE-AE05-F6A52A08CCAA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1 290 1
		 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTU -n "LeftToes_Control_scaleY";
	rename -uid "ECF47A43-F844-8115-8CEC-84A35F4D7969";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1 290 1
		 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTU -n "LeftToes_Control_scaleZ";
	rename -uid "FD2569E8-3A4F-398F-E22F-A580E33257C7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1 290 1
		 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTU -n "RightHip_Control_visibility";
	rename -uid "F5CC33C1-A94A-81F9-97D4-36A7E929D359";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1 290 1
		 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 33 ".kit[28:32]"  9 9 9 1 9;
	setAttr -s 33 ".kot[28:32]"  5 5 5 5 5;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
createNode animCurveTA -n "RightHip_Control_rotateX";
	rename -uid "A0E394AA-804D-1FAC-A84C-B483118EFBAA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0 290 0
		 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTA -n "RightHip_Control_rotateY";
	rename -uid "E76F692B-4D4B-AA35-80EA-55B69E17987A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0 290 0
		 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTA -n "RightHip_Control_rotateZ";
	rename -uid "4B3E7211-3A48-3A8F-313C-DDBBA48D44A4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0 290 0
		 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTU -n "RightHip_Control_scaleX";
	rename -uid "B9CB031B-1644-31F3-AB1B-B4BB9205463E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1 290 1
		 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTU -n "RightHip_Control_scaleY";
	rename -uid "97D403FC-3341-84D6-694D-3B90340111D7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1 290 1
		 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTU -n "RightHip_Control_scaleZ";
	rename -uid "037CAC5C-F949-0E2A-563B-ED83F8934294";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1 290 1
		 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTU -n "LeftFoot_Control_visibility";
	rename -uid "097300C4-204A-3C00-B47B-018FFD1BB355";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 1 10 1 20 1 25 1 30 1 40 1 60 1 70 1 90 1
		 110 1 130 1 140 1 147 1 150 1 155 1 170 1 175 1 180 1 185 1 195 1 200 1 205 1 210 1
		 225 1 230 1 235 1 240 1 250 1 255 1 260 1 270 1 275 1 280 1 285 1 290 1 300 1 305 1
		 310 1 315 1 320 1 330 1 335 1 340 1 360 1 365 1 370 1 375 1 380 1 405 1;
	setAttr -s 49 ".kit[43:48]"  9 1 9 9 1 9;
	setAttr -s 49 ".kot[43:48]"  5 5 5 5 5 5;
	setAttr -s 49 ".kix[44:48]"  1 1 1 1 1;
	setAttr -s 49 ".kiy[44:48]"  0 0 0 0 0;
createNode animCurveTA -n "LeftFoot_Control_rotateX";
	rename -uid "CFDDC57E-C043-EA44-0662-00AE606388A6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 61 ".ktv[0:60]"  0 0 10 93.265612331956049 15 23.227762363424834
		 20 0 25 0 27 31.172487801699756 30 0 40 0 60 0 70 0 90 0 110 0 130 0 140 0 147 0
		 150 0 152 38.467194641137489 155 0 170 0 175 0 180 0 185 0 195 0 200 0 203 33.404328383626165
		 205 0 210 0 225 0 230 0 233 30.397028179748357 235 0 240 0 250 0 253 -4.5894863194201783
		 255 0 260 0 270 0 273 -16.559127229315063 275 0 280 0 283 28.634677860436216 285 0
		 290 0 300 0 303 -5.9983779379463931 305 0 310 0 313 -21.535425583117689 315 0 320 0
		 330 0 333 36.146541981050717 335 0 340 0 360 0 365 0 367 35.712738163883756 370 47.252364872111322
		 375 47.252364872111322 380 0 405 0;
	setAttr -s 61 ".kit[55:60]"  1 18 18 18 1 18;
	setAttr -s 61 ".kot[55:60]"  1 18 18 18 1 18;
	setAttr -s 61 ".kix[55:60]"  1 0.24492042465173486 1 1 1 1;
	setAttr -s 61 ".kiy[55:60]"  0 0.96954318397295414 0 0 0 0;
	setAttr -s 61 ".kox[55:60]"  1 0.24492042465173489 1 1 1 1;
	setAttr -s 61 ".koy[55:60]"  0 0.96954318397295425 0 0 0 0;
createNode animCurveTA -n "LeftFoot_Control_rotateY";
	rename -uid "94D866F6-AC4C-3DEC-FEBF-52A4E731D046";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 56 ".ktv[0:55]"  0 0 10 19.675666890649605 15 -41.363524479662381
		 20 -89.559675612641641 25 -89.559675612641641 30 -150.0667079902889 40 -150.0667079902889
		 60 -150.0667079902889 70 -150.0667079902889 90 -150.0667079902889 110 -150.0667079902889
		 130 -150.0667079902889 140 -150.0667079902889 147 -339.93697048507772 150 -339.93697048507772
		 155 -371.22725991290815 170 -371.22725991290815 175 -371.22725991290815 180 -150.0667079902889
		 185 -150.0667079902889 195 -150.0667079902889 200 -150.0667079902889 205 -26.703240806069097
		 210 -26.703240806069097 225 -26.703240806069097 230 -26.703240806069097 235 -150.0667079902889
		 240 -150.0667079902889 250 -150.0667079902889 253 -236.93725107728505 255 -261.34054683605962
		 260 -261.34054683605962 270 -261.34054683605962 273 -247.6023250129002 275 -150.0667079902889
		 280 -150.0667079902889 283 -126.88615328647045 285 -89.824890703035948 290 -89.824890703035948
		 300 -89.824890703035948 303 -118.8588843246982 305 -150.0667079902889 310 -150.0667079902889
		 313 -194.32556081360366 315 -201.91806024316566 320 -201.91806024316566 330 -201.91806024316566
		 335 -150.0667079902889 340 -150.0667079902889 360 -150.0667079902889 365 -150.0667079902889
		 367 -185.78943038520552 370 -181.71099166946846 375 -181.71099166946846 380 -150.0667079902889
		 405 -150.0667079902889;
	setAttr -s 56 ".kit[50:55]"  1 18 18 18 1 18;
	setAttr -s 56 ".kot[50:55]"  1 18 18 18 1 18;
	setAttr -s 56 ".kix[50:55]"  1 1 1 1 1 1;
	setAttr -s 56 ".kiy[50:55]"  0 0 0 0 0 0;
	setAttr -s 56 ".kox[50:55]"  1 1 1 1 1 1;
	setAttr -s 56 ".koy[50:55]"  0 0 0 0 0 0;
createNode animCurveTA -n "LeftFoot_Control_rotateZ";
	rename -uid "28487233-004E-70C7-0D10-BD9034D2B533";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 56 ".ktv[0:55]"  0 0 10 1.7488497131414511 15 42.733092639834574
		 20 0 25 0 30 0 40 0 60 0 70 0 90 0 110 0 130 0 140 0 147 0 150 0 155 0 170 0 175 0
		 180 0 185 0 195 0 200 0 205 0 210 0 225 0 230 0 235 0 240 0 250 0 253 -16.414803852202333
		 255 0 260 0 270 0 273 -27.469224709893449 275 0 280 0 283 -14.289098945432981 285 0
		 290 0 300 0 303 29.107454980274973 305 0 310 0 313 -12.814162714950308 315 0 320 0
		 330 0 335 0 340 0 360 0 365 0 367 -24.080550725716947 370 -24.494905222168292 375 -24.494905222168292
		 380 0 405 0;
	setAttr -s 56 ".kit[50:55]"  1 18 18 18 1 18;
	setAttr -s 56 ".kot[50:55]"  1 18 18 18 1 18;
	setAttr -s 56 ".kix[50:55]"  1 0.98526968411566473 1 1 1 1;
	setAttr -s 56 ".kiy[50:55]"  0 -0.17100774708362862 0 0 0 0;
	setAttr -s 56 ".kox[50:55]"  1 0.98526968411566462 1 1 1 1;
	setAttr -s 56 ".koy[50:55]"  0 -0.17100774708362859 0 0 0 0;
createNode animCurveTU -n "LeftFoot_Control_scaleX";
	rename -uid "B8DBCCF2-3A42-DEA6-DB92-BEA9CAC5326B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 1 10 1 20 1 25 1 30 1 40 1 60 1 70 1 90 1
		 110 1 130 1 140 1 147 1 150 1 155 1 170 1 175 1 180 1 185 1 195 1 200 1 205 1 210 1
		 225 1 230 1 235 1 240 1 250 1 255 1 260 1 270 1 275 1 280 1 285 1 290 1 300 1 305 1
		 310 1 315 1 320 1 330 1 335 1 340 1 360 1 365 1 370 1 375 1 380 1 405 1;
	setAttr -s 49 ".kit[44:48]"  1 18 18 1 18;
	setAttr -s 49 ".kot[44:48]"  1 18 18 1 18;
	setAttr -s 49 ".kix[44:48]"  1 1 1 1 1;
	setAttr -s 49 ".kiy[44:48]"  0 0 0 0 0;
	setAttr -s 49 ".kox[44:48]"  1 1 1 1 1;
	setAttr -s 49 ".koy[44:48]"  0 0 0 0 0;
createNode animCurveTU -n "LeftFoot_Control_scaleY";
	rename -uid "94E6F7E0-7340-5F7F-D1DE-999DDAAE9733";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 1 10 1 20 1 25 1 30 1 40 1 60 1 70 1 90 1
		 110 1 130 1 140 1 147 1 150 1 155 1 170 1 175 1 180 1 185 1 195 1 200 1 205 1 210 1
		 225 1 230 1 235 1 240 1 250 1 255 1 260 1 270 1 275 1 280 1 285 1 290 1 300 1 305 1
		 310 1 315 1 320 1 330 1 335 1 340 1 360 1 365 1 370 1 375 1 380 1 405 1;
	setAttr -s 49 ".kit[44:48]"  1 18 18 1 18;
	setAttr -s 49 ".kot[44:48]"  1 18 18 1 18;
	setAttr -s 49 ".kix[44:48]"  1 1 1 1 1;
	setAttr -s 49 ".kiy[44:48]"  0 0 0 0 0;
	setAttr -s 49 ".kox[44:48]"  1 1 1 1 1;
	setAttr -s 49 ".koy[44:48]"  0 0 0 0 0;
createNode animCurveTU -n "LeftFoot_Control_scaleZ";
	rename -uid "79C9C469-9D43-F771-FBE2-66BBE99C4C80";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 1 10 1 20 1 25 1 30 1 40 1 60 1 70 1 90 1
		 110 1 130 1 140 1 147 1 150 1 155 1 170 1 175 1 180 1 185 1 195 1 200 1 205 1 210 1
		 225 1 230 1 235 1 240 1 250 1 255 1 260 1 270 1 275 1 280 1 285 1 290 1 300 1 305 1
		 310 1 315 1 320 1 330 1 335 1 340 1 360 1 365 1 370 1 375 1 380 1 405 1;
	setAttr -s 49 ".kit[44:48]"  1 18 18 1 18;
	setAttr -s 49 ".kot[44:48]"  1 18 18 1 18;
	setAttr -s 49 ".kix[44:48]"  1 1 1 1 1;
	setAttr -s 49 ".kiy[44:48]"  0 0 0 0 0;
	setAttr -s 49 ".kox[44:48]"  1 1 1 1 1;
	setAttr -s 49 ".koy[44:48]"  0 0 0 0 0;
createNode animCurveTU -n "LeftHip_Control_visibility";
	rename -uid "D966E4D1-E44F-B168-E683-DAACD9E798A9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1 290 1
		 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 33 ".kit[28:32]"  9 9 9 1 9;
	setAttr -s 33 ".kot[28:32]"  5 5 5 5 5;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
createNode animCurveTA -n "LeftHip_Control_rotateX";
	rename -uid "2236C0D9-AD45-A66F-11EF-B6B914EAC5B2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0 290 0
		 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTA -n "LeftHip_Control_rotateY";
	rename -uid "708A88B8-F54A-1345-0999-488CC0FE44CF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0 290 0
		 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTA -n "LeftHip_Control_rotateZ";
	rename -uid "D71BC092-CD48-64A4-B890-7F9CEEE3114E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0 290 0
		 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTU -n "LeftHip_Control_scaleX";
	rename -uid "C7DB329A-0C47-7F40-261C-5B9209508046";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1 290 1
		 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTU -n "LeftHip_Control_scaleY";
	rename -uid "E7F211E4-EF45-8E84-BB76-A3913D84CEFA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1 290 1
		 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTU -n "LeftHip_Control_scaleZ";
	rename -uid "EE566DF9-C046-5181-9FEA-7FAB10361E78";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1 290 1
		 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTU -n "RightKnee_Control_visibility";
	rename -uid "F8455042-7A49-6C9A-A97A-638686B0FD05";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1 290 1
		 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 33 ".kit[0:32]"  9 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 9 9 9 1 9;
	setAttr -s 33 ".kot[0:32]"  5 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 5 5 5 5 5;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
createNode animCurveTA -n "RightKnee_Control_rotateX";
	rename -uid "DC6D1C97-4244-7544-46AF-2B99A7A09D45";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0 290 0
		 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTA -n "RightKnee_Control_rotateY";
	rename -uid "CB66F226-9B45-7552-67B4-B8AD57D4E822";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0 290 0
		 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTA -n "RightKnee_Control_rotateZ";
	rename -uid "BEC83556-BA48-1F62-94FA-2E86D2D59CAC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0 290 0
		 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTU -n "RightKnee_Control_scaleX";
	rename -uid "52C44301-6C45-E1C7-2E38-748600B226E9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1 290 1
		 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTU -n "RightKnee_Control_scaleY";
	rename -uid "E64BDA13-7E41-BB52-F682-BD82F2E4A8B5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1 290 1
		 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTU -n "RightKnee_Control_scaleZ";
	rename -uid "F8ED0690-8846-DD9F-B966-AEB1F60DC53B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1 290 1
		 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTU -n "LeftFingers_Control_visibility";
	rename -uid "FA4825CF-DF4A-6E76-B7B5-D79BA97F823C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1 290 1
		 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 33 ".kit[28:32]"  9 9 9 1 9;
	setAttr -s 33 ".kot[28:32]"  5 5 5 5 5;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
createNode animCurveTA -n "LeftFingers_Control_rotateX";
	rename -uid "43C5E756-D042-66D3-E03E-14B7905ABA05";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0 290 0
		 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTA -n "LeftFingers_Control_rotateY";
	rename -uid "19E32867-AA45-0035-679C-F4A7ECCEB002";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0 290 0
		 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTA -n "LeftFingers_Control_rotateZ";
	rename -uid "F1823171-7C47-F803-E6F5-0B8050542562";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0 290 0
		 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTU -n "LeftFingers_Control_scaleX";
	rename -uid "B5668235-944D-60FC-6510-1E9AAD0DB715";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1 290 1
		 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTU -n "LeftFingers_Control_scaleY";
	rename -uid "87E6A933-5E4E-B80A-FA3F-B89D8C711C17";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1 290 1
		 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTU -n "LeftFingers_Control_scaleZ";
	rename -uid "A29A4D84-6F47-C272-D403-F39059A39249";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1 290 1
		 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTU -n "RightToes_Control_visibility";
	rename -uid "E1F101AB-6742-4171-1B97-4BB0AD3FD726";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1 290 1
		 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 33 ".kit[28:32]"  9 9 9 1 9;
	setAttr -s 33 ".kot[28:32]"  5 5 5 5 5;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
createNode animCurveTA -n "RightToes_Control_rotateX";
	rename -uid "0B6D61CD-1F47-F541-109B-098FA4F75B17";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 0 10 -3.9910406336393072 14 0 20 0 30 0
		 40 0 60 0 70 0 90 0 110 0 130 0 140 0 155 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0
		 260 0 270 0 280 0 290 0 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 34 ".kit[32:33]"  1 18;
	setAttr -s 34 ".kot[32:33]"  1 18;
	setAttr -s 34 ".kix[32:33]"  1 1;
	setAttr -s 34 ".kiy[32:33]"  0 0;
	setAttr -s 34 ".kox[32:33]"  1 1;
	setAttr -s 34 ".koy[32:33]"  0 0;
createNode animCurveTA -n "RightToes_Control_rotateY";
	rename -uid "F7E521DA-084C-1E93-612F-AFB8699C4665";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0 290 0
		 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTA -n "RightToes_Control_rotateZ";
	rename -uid "26308A00-374F-237D-D0E0-8EBE79B7B8EF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0 290 0
		 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTU -n "RightToes_Control_scaleX";
	rename -uid "89177C78-644D-1436-8A41-56951BEDEE26";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1 290 1
		 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTU -n "RightToes_Control_scaleY";
	rename -uid "F116DB67-4943-064C-258A-85885325CFA1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1 290 1
		 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTU -n "RightToes_Control_scaleZ";
	rename -uid "5087B70C-F349-CC71-CCC2-13A7C9867993";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1 290 1
		 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTU -n "RightShoulder_Control_visibility";
	rename -uid "E926CEE3-794A-C737-F1CC-D3B676FFE0DD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1 290 1
		 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 33 ".kit[28:32]"  9 9 9 1 9;
	setAttr -s 33 ".kot[28:32]"  5 5 5 5 5;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
createNode animCurveTA -n "RightShoulder_Control_rotateX";
	rename -uid "9C851AB1-1842-ED69-EE0D-3E90A0B49B8A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0 290 0
		 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 386 -20.86251468309154 405 0;
	setAttr -s 34 ".kit[31:33]"  1 18 18;
	setAttr -s 34 ".kot[31:33]"  1 18 18;
	setAttr -s 34 ".kix[31:33]"  1 1 1;
	setAttr -s 34 ".kiy[31:33]"  0 0 0;
	setAttr -s 34 ".kox[31:33]"  1 1 1;
	setAttr -s 34 ".koy[31:33]"  0 0 0;
createNode animCurveTA -n "RightShoulder_Control_rotateY";
	rename -uid "97A7C5BB-BA4F-07A4-5980-E5AEF73F7E69";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0 290 0
		 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 386 5.8705604223771264 399 48.673726304512329
		 405 0;
	setAttr -s 35 ".kit[31:34]"  1 18 18 18;
	setAttr -s 35 ".kot[31:34]"  1 18 18 18;
	setAttr -s 35 ".kix[31:34]"  1 0.68175854763938315 1 1;
	setAttr -s 35 ".kiy[31:34]"  0 0.73157725683665098 0 0;
	setAttr -s 35 ".kox[31:34]"  1 0.68175854763938315 1 1;
	setAttr -s 35 ".koy[31:34]"  0 0.73157725683665087 0 0;
createNode animCurveTA -n "RightShoulder_Control_rotateZ";
	rename -uid "02E9D432-3C40-E8A0-2566-10BB0D8714E1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0 290 0
		 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 386 -11.280313327493563 405 0;
	setAttr -s 34 ".kit[31:33]"  1 18 18;
	setAttr -s 34 ".kot[31:33]"  1 18 18;
	setAttr -s 34 ".kix[31:33]"  1 1 1;
	setAttr -s 34 ".kiy[31:33]"  0 0 0;
	setAttr -s 34 ".kox[31:33]"  1 1 1;
	setAttr -s 34 ".koy[31:33]"  0 0 0;
createNode animCurveTU -n "RightShoulder_Control_scaleX";
	rename -uid "DA3B417E-B14D-88F4-B0A3-5EB3C9CD403C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1 290 1
		 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTU -n "RightShoulder_Control_scaleY";
	rename -uid "73E4F2BA-0F48-004D-F8DC-FFBB8E4FCBA2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1 290 1
		 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTU -n "RightShoulder_Control_scaleZ";
	rename -uid "94D51CF8-2547-4E3F-DE1D-B0937D0CCE39";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1 290 1
		 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTU -n "Neck_Control_visibility";
	rename -uid "DC25A4C8-E44B-56CB-4767-CDA4810FC1AA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1 290 1
		 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 33 ".kit[28:32]"  9 9 9 1 9;
	setAttr -s 33 ".kot[28:32]"  5 5 5 5 5;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
createNode animCurveTA -n "Neck_Control_rotateX";
	rename -uid "FAEE2B35-484B-86EB-8932-D4B94F51BD7D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 0 10 0 20 0 30 0 40 0 60 0 70 -9.7676716133461188
		 90 -9.7676716133461188 110 0 130 0 140 0 155 0 170 0 185 0 195 -9.7676716133461188
		 210 0 225 0 240 -9.7676716133461188 250 0 260 0 270 0 280 0 290 0 300 0 310 0 320 0
		 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTA -n "Neck_Control_rotateY";
	rename -uid "1E4FB279-1F48-B407-1F3C-6EA2634F9821";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 0 10 0 20 0 30 0 40 0 60 0 70 28.28556741501513
		 90 28.28556741501513 110 0 130 0 140 0 155 0 170 0 185 0 195 28.28556741501513 210 0
		 225 0 240 28.28556741501513 250 0 260 0 270 0 280 0 290 0 300 0 310 0 320 0 330 0
		 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTA -n "Neck_Control_rotateZ";
	rename -uid "8AA386E1-4C45-B33A-3719-D59839B2E7B1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 0 10 0 20 0 30 0 40 0 60 0 70 3.0358121786555987
		 90 3.0358121786555987 110 0 130 0 140 0 155 0 170 0 185 0 195 3.0358121786555987
		 210 0 225 0 240 3.0358121786555987 250 0 260 0 270 0 280 0 290 0 300 0 310 0 320 0
		 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTU -n "Neck_Control_scaleX";
	rename -uid "F727A271-EC4E-30A6-EEED-EDB420ED03E3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1 290 1
		 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTU -n "Neck_Control_scaleY";
	rename -uid "F042856E-5148-DBB0-4036-AA9409C862E9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1 290 1
		 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTU -n "Neck_Control_scaleZ";
	rename -uid "4312FFCF-6E4F-A671-94B6-C58FE915129D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1 290 1
		 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTU -n "RootMotion_Control_visibility";
	rename -uid "3E9E05FE-D849-0189-3CA5-ADA75624CBCD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1 290 1
		 300 1 310 1 320 1 330 1 340 1 360 1 363 1 364 1 370 1 375 1 380 1 405 1;
	setAttr -s 35 ".kit[28:34]"  9 1 1 9 9 1 9;
	setAttr -s 35 ".kot[28:34]"  5 5 5 5 5 5 5;
	setAttr -s 35 ".kix[29:34]"  1 1 1 1 1 1;
	setAttr -s 35 ".kiy[29:34]"  0 0 0 0 0 0;
createNode animCurveTA -n "RootMotion_Control_rotateX";
	rename -uid "CD244A4A-7845-0207-7DE2-BF8C9E170712";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0 290 0
		 300 0 310 0 320 0 330 0 340 0 360 0 363 0 364 0 370 0 375 0 380 0 405 0;
	setAttr -s 35 ".kit[29:34]"  1 1 18 18 1 18;
	setAttr -s 35 ".kot[29:34]"  1 1 18 18 1 18;
	setAttr -s 35 ".kix[29:34]"  1 1 1 1 1 1;
	setAttr -s 35 ".kiy[29:34]"  0 0 0 0 0 0;
	setAttr -s 35 ".kox[29:34]"  1 1 1 1 1 1;
	setAttr -s 35 ".koy[29:34]"  0 0 0 0 0 0;
createNode animCurveTA -n "RootMotion_Control_rotateY";
	rename -uid "FEA9AFED-C24F-8C24-226E-A9AE28F50D97";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0 290 0
		 300 0 310 0 320 0 330 0 340 0 360 0 363 0 364 180 370 180 375 180 380 0 405 0;
	setAttr -s 35 ".kit[29:34]"  1 1 18 18 1 18;
	setAttr -s 35 ".kot[29:34]"  1 1 18 18 1 18;
	setAttr -s 35 ".kix[29:34]"  1 1 1 1 1 1;
	setAttr -s 35 ".kiy[29:34]"  0 0 0 0 0 0;
	setAttr -s 35 ".kox[29:34]"  1 1 1 1 1 1;
	setAttr -s 35 ".koy[29:34]"  0 0 0 0 0 0;
createNode animCurveTA -n "RootMotion_Control_rotateZ";
	rename -uid "9762EFC6-AF4B-2B05-04EE-25A1F1C72D9D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0 290 0
		 300 0 310 0 320 0 330 0 340 0 360 0 363 0 364 0 370 0 375 0 380 0 405 0;
	setAttr -s 35 ".kit[29:34]"  1 1 18 18 1 18;
	setAttr -s 35 ".kot[29:34]"  1 1 18 18 1 18;
	setAttr -s 35 ".kix[29:34]"  1 1 1 1 1 1;
	setAttr -s 35 ".kiy[29:34]"  0 0 0 0 0 0;
	setAttr -s 35 ".kox[29:34]"  1 1 1 1 1 1;
	setAttr -s 35 ".koy[29:34]"  0 0 0 0 0 0;
createNode animCurveTU -n "RootMotion_Control_scaleX";
	rename -uid "332CB48D-0B42-552F-3AB4-5C8EE78F046E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1 290 1
		 300 1 310 1 320 1 330 1 340 1 360 1 363 1 364 1 370 1 375 1 380 1 405 1;
	setAttr -s 35 ".kit[29:34]"  1 1 18 18 1 18;
	setAttr -s 35 ".kot[29:34]"  1 1 18 18 1 18;
	setAttr -s 35 ".kix[29:34]"  1 1 1 1 1 1;
	setAttr -s 35 ".kiy[29:34]"  0 0 0 0 0 0;
	setAttr -s 35 ".kox[29:34]"  1 1 1 1 1 1;
	setAttr -s 35 ".koy[29:34]"  0 0 0 0 0 0;
createNode animCurveTU -n "RootMotion_Control_scaleY";
	rename -uid "A4CE9692-CA44-0B74-BA33-8AB661CBE16A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1 290 1
		 300 1 310 1 320 1 330 1 340 1 360 1 363 1 364 1 370 1 375 1 380 1 405 1;
	setAttr -s 35 ".kit[29:34]"  1 1 18 18 1 18;
	setAttr -s 35 ".kot[29:34]"  1 1 18 18 1 18;
	setAttr -s 35 ".kix[29:34]"  1 1 1 1 1 1;
	setAttr -s 35 ".kiy[29:34]"  0 0 0 0 0 0;
	setAttr -s 35 ".kox[29:34]"  1 1 1 1 1 1;
	setAttr -s 35 ".koy[29:34]"  0 0 0 0 0 0;
createNode animCurveTU -n "RootMotion_Control_scaleZ";
	rename -uid "6DA6FBB8-714B-6AF1-6261-BEA997613D1B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1 290 1
		 300 1 310 1 320 1 330 1 340 1 360 1 363 1 364 1 370 1 375 1 380 1 405 1;
	setAttr -s 35 ".kit[29:34]"  1 1 18 18 1 18;
	setAttr -s 35 ".kot[29:34]"  1 1 18 18 1 18;
	setAttr -s 35 ".kix[29:34]"  1 1 1 1 1 1;
	setAttr -s 35 ".kiy[29:34]"  0 0 0 0 0 0;
	setAttr -s 35 ".kox[29:34]"  1 1 1 1 1 1;
	setAttr -s 35 ".koy[29:34]"  0 0 0 0 0 0;
createNode animCurveTU -n "Root_Control_visibility";
	rename -uid "794DC1FC-AB47-B2D2-F3A1-68AFE43C7D91";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1 290 1
		 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 33 ".kit[28:32]"  9 9 9 1 9;
	setAttr -s 33 ".kot[28:32]"  5 5 5 5 5;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
createNode animCurveTA -n "Root_Control_rotateX";
	rename -uid "290F0FB0-2944-0E44-5E6F-148FD3110818";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0 290 0
		 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTA -n "Root_Control_rotateY";
	rename -uid "7CDAAEE5-3041-4C8A-2386-FDB207B43FDD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0 290 0
		 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTA -n "Root_Control_rotateZ";
	rename -uid "923B20BF-5B46-9B5E-5960-6E94E81FCEFF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 0 10 0 20 0 30 0 40 0 60 0 70 0 90 0 110 0
		 130 0 140 0 155 0 170 0 185 0 195 0 210 0 225 0 240 0 250 0 260 0 270 0 280 0 290 0
		 300 0 310 0 320 0 330 0 340 0 360 0 370 0 375 0 380 0 405 0;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTU -n "Root_Control_scaleX";
	rename -uid "7A38A02A-D340-355A-76F7-24BC5A5D604B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1 290 1
		 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTU -n "Root_Control_scaleY";
	rename -uid "31A86580-4542-EFAB-7BB7-15A9F97D52E4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1 290 1
		 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTU -n "Root_Control_scaleZ";
	rename -uid "CA002E35-7142-B094-6BC8-3C81AE978853";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1 290 1
		 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
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
	setAttr -s 33 ".ktv[0:32]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1 290 1
		 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 33 ".kit[28:32]"  9 9 9 1 9;
	setAttr -s 33 ".kot[28:32]"  5 5 5 5 5;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
createNode animCurveTA -n "Spine1_Control_rotateX";
	rename -uid "14AD5234-5943-CBA8-7AF2-599D698EE2CA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 38 ".ktv[0:37]"  0 0 10 -0.29408989115496242 20 -0.29408989115496242
		 30 -0.29408989115496242 40 -0.29408989115496242 60 -0.29408989115496242 70 -0.29408989115496242
		 90 -0.29408989115496242 110 -0.29408989115496242 130 -0.29408989115496242 140 -0.29408989115496242
		 155 0 170 0 185 -0.29408989115496242 195 -0.29408989115496242 210 -0.29408989115496242
		 225 -0.29408989115496242 240 -0.29408989115496242 250 -0.29408989115496242 260 0
		 270 0 280 -0.29408989115496242 290 -0.29408989115496242 300 -0.29408989115496242
		 310 -0.29408989115496242 320 3.7168478073457658 330 3.7168478073457658 340 -0.29408989115496242
		 344 2.0974131799306872 360 -0.29408989115496242 363 10.65705708750896 370 14.633097653759997
		 375 14.633097653759997 380 -0.29408989115496242 386 -3.4729014887095091 391 3.9584994040855555
		 396 11.683396545828296 405 -0.29408989115496242;
	setAttr -s 38 ".kit[33:37]"  1 18 18 18 18;
	setAttr -s 38 ".kot[33:37]"  1 18 18 18 18;
	setAttr -s 38 ".kix[33:37]"  1 1 0.84423386674118572 1 1;
	setAttr -s 38 ".kiy[33:37]"  0 0 0.53597497912423664 0 0;
	setAttr -s 38 ".kox[33:37]"  1 1 0.84423386674118572 1 1;
	setAttr -s 38 ".koy[33:37]"  0 0 0.53597497912423653 0 0;
createNode animCurveTA -n "Spine1_Control_rotateY";
	rename -uid "606411DE-A742-8ECB-9AE1-D487A7CAFA15";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 36 ".ktv[0:35]"  0 0 10 -9.0429078946841077 20 -9.0429078946841077
		 30 -9.0429078946841077 40 -9.0429078946841077 60 -9.0429078946841077 70 -9.0429078946841077
		 90 -9.0429078946841077 110 -9.0429078946841077 130 -9.0429078946841077 140 -9.0429078946841077
		 155 -11.673497097918274 170 -11.673497097918274 185 -9.0429078946841077 195 -9.0429078946841077
		 210 -9.0429078946841077 225 -9.0429078946841077 240 -9.0429078946841077 250 -9.0429078946841077
		 260 -12.072825690266679 270 -12.072825690266679 280 -9.0429078946841077 290 -9.0429078946841077
		 300 -9.0429078946841077 310 -9.0429078946841077 320 -1.1773826014492972 330 -1.1773826014492972
		 340 -9.0429078946841077 344 -9.7637685607391731 360 -9.0429078946841077 370 -9.0429078946841077
		 375 -9.0429078946841077 380 -9.0429078946841077 386 -17.311220923360171 396 -21.020640986954284
		 405 -9.0429078946841077;
	setAttr -s 36 ".kit[32:35]"  1 18 18 18;
	setAttr -s 36 ".kot[32:35]"  1 18 18 18;
	setAttr -s 36 ".kix[32:35]"  1 0.95418713231437224 1 1;
	setAttr -s 36 ".kiy[32:35]"  0 -0.29921048866253758 0 0;
	setAttr -s 36 ".kox[32:35]"  1 0.95418713231437235 1 1;
	setAttr -s 36 ".koy[32:35]"  0 -0.29921048866253758 0 0;
createNode animCurveTA -n "Spine1_Control_rotateZ";
	rename -uid "A86DD54D-704F-76F9-FC15-F2881A4D812C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 36 ".ktv[0:35]"  0 0 10 4.0818874382600914 20 4.0818874382600914
		 30 4.0818874382600914 40 4.0818874382600914 60 4.0818874382600914 70 4.0818874382600914
		 90 4.0818874382600914 110 4.0818874382600914 130 4.0818874382600914 140 4.0818874382600914
		 155 0 170 0 185 4.0818874382600914 195 4.0818874382600914 210 4.0818874382600914
		 225 4.0818874382600914 240 4.0818874382600914 250 4.0818874382600914 260 0 270 0
		 280 4.0818874382600914 290 4.0818874382600914 300 4.0818874382600914 310 4.0818874382600914
		 320 -6.5517891881957206 330 -6.5517891881957206 340 4.0818874382600914 344 -4.4015980670194841
		 360 4.0818874382600914 370 4.0818874382600914 375 4.0818874382600914 380 4.0818874382600914
		 386 3.1246528602358281 396 11.876206633904328 405 4.0818874382600914;
	setAttr -s 36 ".kit[32:35]"  1 18 18 18;
	setAttr -s 36 ".kot[32:35]"  1 18 18 18;
	setAttr -s 36 ".kix[32:35]"  1 1 1 1;
	setAttr -s 36 ".kiy[32:35]"  0 0 0 0;
	setAttr -s 36 ".kox[32:35]"  1 1 1 1;
	setAttr -s 36 ".koy[32:35]"  0 0 0 0;
createNode animCurveTU -n "Spine1_Control_scaleX";
	rename -uid "7C5732B1-7F49-0441-3086-2F95DCD96B55";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1 290 1
		 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTU -n "Spine1_Control_scaleY";
	rename -uid "2A978AE8-1645-3A6A-D8C7-F79350CCFFD5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1 290 1
		 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTU -n "Spine1_Control_scaleZ";
	rename -uid "56E6DB19-484B-8E12-8209-2DB95C3BFF6F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1 290 1
		 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTU -n "Spine2_Control_visibility";
	rename -uid "952326C6-F241-681F-F00F-1E8F82761E2D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1 290 1
		 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 33 ".kit[28:32]"  9 9 9 1 9;
	setAttr -s 33 ".kot[28:32]"  5 5 5 5 5;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
createNode animCurveTA -n "Spine2_Control_rotateX";
	rename -uid "759B6A68-A848-A7B4-9546-4393C0DB5451";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 39 ".ktv[0:38]"  0 0 10 0 20 0 30 0 40 0 60 0 70 -2.4311370132628416
		 90 -2.4311370132628416 110 4.7694541150291032 120 3.2301539515761877 130 4.7694541150291032
		 140 0 155 0 170 0 185 0 195 -2.4311370132628416 210 -2.4311370132628416 225 -2.4311370132628416
		 240 -2.4311370132628416 250 4.7694541150291032 260 0 270 0 280 4.7694541150291032
		 290 4.7694541150291032 300 4.7694541150291032 310 4.7694541150291032 320 0 330 0
		 340 4.7694541150291032 344 12.025132509190783 360 4.7694541150291032 363 15.720601093692999
		 370 19.696641659944078 375 19.696641659944078 380 4.7694541150291032 386 -3.3713178874877596
		 391 -19.476983121436763 400 -16.984831698579853 405 4.7694541150291032;
	setAttr -s 39 ".kit[34:38]"  1 18 18 18 18;
	setAttr -s 39 ".kot[34:38]"  1 18 18 18 18;
	setAttr -s 39 ".kix[34:38]"  1 0.73472095642065305 1 0.9444546201531222 
		1;
	setAttr -s 39 ".kiy[34:38]"  0 -0.67836945405606297 0 0.32864185745492269 
		0;
	setAttr -s 39 ".kox[34:38]"  1 0.73472095642065294 1 0.9444546201531222 
		1;
	setAttr -s 39 ".koy[34:38]"  0 -0.67836945405606286 0 0.32864185745492269 
		0;
createNode animCurveTA -n "Spine2_Control_rotateY";
	rename -uid "C4C2F04A-CF40-94EA-E7AA-AD82922877D5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 37 ".ktv[0:36]"  0 0 10 0 20 0 30 0 40 0 60 0 70 6.5628266527389298
		 90 6.5628266527389298 110 6.5628266527389298 120 7.6617957352304868 130 6.5628266527389298
		 140 0 155 0 170 0 185 0 195 6.5628266527389298 210 6.5628266527389298 225 6.5628266527389298
		 240 6.5628266527389298 250 6.5628266527389298 260 0 270 0 280 6.5628266527389298
		 290 6.5628266527389298 300 6.5628266527389298 310 6.5628266527389298 320 0 330 0
		 340 6.5628266527389298 360 6.5628266527389298 370 6.5628266527389298 375 6.5628266527389298
		 380 6.5628266527389298 386 4.6084776859874985 391 20.954687441954555 400 39.533645717244639
		 405 6.5628266527389298;
	setAttr -s 37 ".kit[32:36]"  1 18 18 18 18;
	setAttr -s 37 ".kot[32:36]"  1 18 18 18 18;
	setAttr -s 37 ".kix[32:36]"  1 1 0.69139390968837577 1 1;
	setAttr -s 37 ".kiy[32:36]"  0 0 0.72247800080405356 0 0;
	setAttr -s 37 ".kox[32:36]"  1 1 0.69139390968837589 1 1;
	setAttr -s 37 ".koy[32:36]"  0 0 0.72247800080405356 0 0;
createNode animCurveTA -n "Spine2_Control_rotateZ";
	rename -uid "DC9C8DFA-E343-7764-5CAF-1FAC2B24F722";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 37 ".ktv[0:36]"  0 0 10 0 20 0 30 0 40 0 60 0 70 -10.348444710177358
		 90 -10.348444710177358 110 -10.348444710177358 120 -9.6183578903154761 130 -10.348444710177358
		 140 0 155 0 170 0 185 0 195 -10.348444710177358 210 -10.348444710177358 225 -10.348444710177358
		 240 -10.348444710177358 250 -10.348444710177358 260 0 270 0 280 -10.348444710177358
		 290 -10.348444710177358 300 -10.348444710177358 310 -10.348444710177358 320 0 330 0
		 340 -10.348444710177358 360 -10.348444710177358 370 -10.348444710177358 375 -10.348444710177358
		 380 -10.348444710177358 386 -0.68134026148863647 391 -19.857105046449234 400 -48.668113220823102
		 405 -10.348444710177358;
	setAttr -s 37 ".kit[32:36]"  1 18 18 18 18;
	setAttr -s 37 ".kot[32:36]"  1 18 18 18 18;
	setAttr -s 37 ".kix[32:36]"  1 1 0.57153035191236712 1 1;
	setAttr -s 37 ".kiy[32:36]"  0 0 -0.8205809264435322 0 0;
	setAttr -s 37 ".kox[32:36]"  1 1 0.57153035191236723 1 1;
	setAttr -s 37 ".koy[32:36]"  0 0 -0.82058092644353242 0 0;
createNode animCurveTU -n "Spine2_Control_scaleX";
	rename -uid "1249B3CD-D34E-1DB9-C21B-8A9AD9C56709";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1 290 1
		 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTU -n "Spine2_Control_scaleY";
	rename -uid "3B820B6E-D74E-B84B-96F8-C188C0A77DC3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1 290 1
		 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
createNode animCurveTU -n "Spine2_Control_scaleZ";
	rename -uid "50D43D14-1F45-568C-26EF-73B7AAA099C3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 1 10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1 290 1
		 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  1 1;
	setAttr -s 33 ".kiy[31:32]"  0 0;
	setAttr -s 33 ".kox[31:32]"  1 1;
	setAttr -s 33 ".koy[31:32]"  0 0;
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
	setAttr -s 34 ".ktv[0:33]"  10 0.6 20 0.6 30 0.6 40 0.6 60 0.6 70 0.6
		 90 0.6 110 0.6 130 0.6 140 0.6 155 0.6 170 0.6 185 0.6 195 0.6 210 0.6 225 0.6 240 0.6
		 250 0.6 260 0.6 270 0.6 280 0.6 290 0.6 300 0.6 310 0.6 320 0.6 330 0.6 340 0.6 343 0
		 345 1 360 0.6 370 0.6 375 0.6 380 0.6 405 0.6;
	setAttr -s 34 ".kit[32:33]"  1 18;
	setAttr -s 34 ".kot[32:33]"  1 18;
	setAttr -s 34 ".kix[32:33]"  1 1;
	setAttr -s 34 ".kiy[32:33]"  0 0;
	setAttr -s 34 ".kox[32:33]"  1 1;
	setAttr -s 34 ".koy[32:33]"  0 0;
createNode animCurveTU -n "RightFinders_Control_Grip";
	rename -uid "F67B4DAC-E940-DEE7-6D2B-289E07E82BDC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  10 1 20 1 30 1 40 1 60 1 70 1 90 1 110 1
		 130 1 140 1 155 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1 290 1
		 300 1 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 32 ".kit[30:31]"  1 18;
	setAttr -s 32 ".kot[30:31]"  1 18;
	setAttr -s 32 ".kix[30:31]"  1 1;
	setAttr -s 32 ".kiy[30:31]"  0 0;
	setAttr -s 32 ".kox[30:31]"  1 1;
	setAttr -s 32 ".koy[30:31]"  0 0;
createNode animCurveTL -n "Hips_Control_translateX";
	rename -uid "DF0C4C84-B84C-3472-A8C8-88AB4D115586";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 48 ".ktv[0:47]"  10 0 30 0 40 8.2339506004107506 60 8.2339506004107506
		 70 -6.5581600584790261 90 -6.5581600584790261 110 -6.5581600584790261 130 -6.5581600584790261
		 140 8.2339506004107506 155 102.11430444948755 170 102.11430444948755 175 93.707734018226944
		 180 2.508402612233354 185 8.2339506004107506 195 -6.5581600584790261 198 -24.975778837935795
		 203 -76.997282026971874 206 -77.984062689456309 210 -93.684686407990085 217 -92.494437219956851
		 225 -93.684686407990085 229 -41.906046451370983 240 -6.5581600584790261 250 -6.5581600584790261
		 255 26.501351891089325 260 -0.4841678352981873 270 -0.4841678352981873 276 -26.73473853517395
		 280 -6.5581600584790261 283 -2.8350163916386428 290 -1.0696595799532478 300 -1.0696595799532478
		 310 -6.5581600584790261 314 7.064114898637821 317 4.0527972916507267 320 -6.5581600584790261
		 325 -6.0388955574077352 330 -6.5581600584790261 333 7.2213001422901391 340 -6.5581600584790261
		 360 -6.5581600584790261 364 1.7261702358146813 370 -6.5581600584790261 375 -6.5581600584790261
		 380 -6.5581600584790261 386 -4.4432627473358446 396 5.8977693384011749 405 -6.5581600584790261;
	setAttr -s 48 ".kit[44:47]"  1 18 18 18;
	setAttr -s 48 ".kot[44:47]"  1 18 18 18;
	setAttr -s 48 ".kix[44:47]"  1 0.053445537680822636 1 1;
	setAttr -s 48 ".kiy[44:47]"  0 0.99857076589594174 0 0;
	setAttr -s 48 ".kox[44:47]"  1 0.053445537680822643 1 1;
	setAttr -s 48 ".koy[44:47]"  0 0.99857076589594174 0 0;
createNode animCurveTL -n "Hips_Control_translateY";
	rename -uid "201D59F4-604B-5F96-2AD2-45A02398A93F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 55 ".ktv[0:54]"  10 -7.8310227218069866 19 -17.587928086526471
		 23 -3.8473159010132729 26 -13.607214217089108 30 -7.8310227218069866 40 -14.070107132292632
		 60 -14.985914105428291 70 -11.565355038398236 90 -11.565355038398236 110 -5.9182040925036272
		 120 -6.4278116857275744 130 -5.9182040925036272 140 -12.781302498072501 150 -6.9172949961313339
		 155 -7.221653413488907 163 -7.5420472574039348 170 -7.221653413488907 175 -9.461642691413445
		 185 -8.2370211890705836 195 -11.565355038398236 198 -3.8463766425980612 200 -22.289449666685734
		 203 -12.477550225739648 206 -6.3586019257999418 208 1.4523102442095315 210 -10.988951401685666
		 217 -9.676182576493245 225 -10.988951401685666 227 -0.42563893757424331 229 -4.1933442750658152
		 233 -14.674747003255899 236 -5.4337303884413402 240 -11.565355038398236 250 -5.9182040925036272
		 255 -10.627587000171713 260 -8.4558308576693246 270 -8.4558308576693246 280 -5.9182040925036272
		 283 -6.3507934107799837 290 -5.9182040925036272 295 -6.7798735527891676 300 -5.9182040925036272
		 310 -5.9182040925036272 317 -12.283680492059796 320 -7.8066459113001923 330 -7.8066459113001923
		 333 -3.4002480542300253 340 -5.9182040925036272 344 -10.688604517750035 360 -5.9182040925036272
		 364 -9.7123332234148823 370 -6.5451521528959073 375 -6.5451521528959073 380 -5.9182040925036272
		 405 -5.9182040925036272;
	setAttr -s 55 ".kit[53:54]"  1 18;
	setAttr -s 55 ".kot[53:54]"  1 18;
	setAttr -s 55 ".kix[53:54]"  1 1;
	setAttr -s 55 ".kiy[53:54]"  0 0;
	setAttr -s 55 ".kox[53:54]"  1 1;
	setAttr -s 55 ".koy[53:54]"  0 0;
createNode animCurveTL -n "Hips_Control_translateZ";
	rename -uid "D70F9DF0-4242-834C-4163-87A08EF953AF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 53 ".ktv[0:52]"  10 2.0398875869225357 19 16.928171242929686
		 23 21.190377701072876 30 31.459276316117933 40 31.459276316117933 60 31.459276316117933
		 70 34.39229610281528 90 34.39229610281528 110 34.39229610281528 130 34.39229610281528
		 140 31.459276316117933 147 19.71401497729887 150 -3.8264087066267614 155 14.881919176181206
		 170 14.881919176181206 175 25.335116113202147 180 14.762702994915323 185 31.459276316117933
		 195 34.39229610281528 198 12.462010336064196 200 4.8198762821386794 203 -6.2770021169518024
		 206 17.195197518085884 210 7.2241872237356546 225 7.2241872237356546 229 23.845120693520258
		 240 34.39229610281528 250 34.39229610281528 260 -1.0415947081623735 270 -1.0415947081623735
		 276 10.898414854071493 280 34.39229610281528 283 29.388055412072887 286 27.543265417554487
		 290 7.7701386578714775 300 7.7701386578714775 310 34.39229610281528 314 16.13023080331579
		 317 -12.458584874804682 320 5.9499919167967263 325 6.573232528348278 330 5.9499919167967263
		 333 9.765973400891351 340 34.39229610281528 360 34.39229610281528 363 -5.1047338091549657
		 364 -20.000770604775763 370 19.012100109306964 375 19.012100109306964 380 34.39229610281528
		 386 23.1303384645514 396 28.11130290865259 405 34.39229610281528;
	setAttr -s 53 ".kit[49:52]"  1 18 18 18;
	setAttr -s 53 ".kot[49:52]"  1 18 18 18;
	setAttr -s 53 ".kix[49:52]"  1 1 0.070122611843118562 1;
	setAttr -s 53 ".kiy[49:52]"  0 0 0.99753837986731086 0;
	setAttr -s 53 ".kox[49:52]"  1 1 0.070122611843118549 1;
	setAttr -s 53 ".koy[49:52]"  0 0 0.99753837986731086 0;
createNode animCurveTA -n "Hips_Control_rotateX";
	rename -uid "49F77478-6A40-E21F-EC6A-739FDFEAD794";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 50 ".ktv[0:49]"  10 38.307933549963792 15 21.522593976187601
		 19 3.3523065584911578 23 0.075150942495273196 30 0 40 -8.7983290972773869 60 -8.7983290972773869
		 70 -6.700466863599627 90 -6.700466863599627 110 0 120 1.1574229561740608 130 0 140 -8.7983290972773869
		 145 -4.857641491728681 150 18.754611129167888 155 8.1691514972727877 163 8.7457636063076478
		 170 8.1691514972727877 185 -8.7983290972773869 195 -6.700466863599627 203 17.331306559424185
		 210 16.33218121925643 217 15.597200471294748 225 16.33218121925643 227 35.765693168182736
		 240 -6.700466863599627 250 0 260 0.69016631006169971 265 0.94593634380940506 270 0.69016631006169971
		 280 0 290 0 295 0.27774732124661294 300 0 310 0 320 0 325 -1.8657912620837198 330 0
		 333 -10.013705788968402 340 0 344 18.730792373039485 360 0 363 0.16263261128789311
		 364 -0.77482113535097563 370 17.825714967448924 375 17.825714967448924 380 0 386 -3.1763142600261571
		 396 4.6108091348541809 405 0;
	setAttr -s 50 ".kit[46:49]"  1 18 18 18;
	setAttr -s 50 ".kot[46:49]"  1 18 18 18;
	setAttr -s 50 ".kix[46:49]"  1 1 1 1;
	setAttr -s 50 ".kiy[46:49]"  0 0 0 0;
	setAttr -s 50 ".kox[46:49]"  1 1 1 1;
	setAttr -s 50 ".koy[46:49]"  0 0 0 0;
createNode animCurveTA -n "Hips_Control_rotateY";
	rename -uid "BF41FA21-DD42-F1FE-353B-A194BB5200B5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  10 10.977860793921815 15 -49.951292389012622
		 19 -130.49368867210774 30 -180 40 -192.93335800763472 60 -192.93335800763472 70 -177.67402626742074
		 90 -177.67402626742074 110 -180 120 -181.18526710517793 130 -180 140 -192.93335800763472
		 145 -251.0351549515072 150 -369.91198617446634 155 -387.86736402986594 163 -386.25990514216659
		 170 -387.86736402986594 185 -192.93335800763472 195 -177.67402626742074 203 -41.46544941005569
		 210 -38.732946947057854 217 -38.324767362891066 225 -38.732946947057854 227 -71.730717928368918
		 240 -177.67402626742074 250 -180 260 -311.812422556059 265 -310.78834960116177 270 -311.812422556059
		 280 -180 290 -136.66561472396771 295 -137.19509423956183 300 -136.66561472396771
		 310 -180 320 -244.55687319619105 325 -244.5245849085625 330 -244.55687319619105 333 -229.88101597859543
		 340 -180 344 -189.78764125787251 360 -180 363 -180.31232509142745 364 -360.12297965889246
		 370 -355.75619440385105 375 -355.75619440385105 380 -180 386 -176.27082551340956
		 396 -188.45256967961123 405 -180;
	setAttr -s 49 ".kit[45:48]"  1 18 18 18;
	setAttr -s 49 ".kot[45:48]"  1 18 18 18;
	setAttr -s 49 ".kix[45:48]"  1 1 1 1;
	setAttr -s 49 ".kiy[45:48]"  0 0 0 0;
	setAttr -s 49 ".kox[45:48]"  1 1 1 1;
	setAttr -s 49 ".koy[45:48]"  0 0 0 0;
createNode animCurveTA -n "Hips_Control_rotateZ";
	rename -uid "03DC2A77-9346-C63B-80AA-BA96E7AD3A62";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  10 -2.0388577817832512 15 -10.069930935667719
		 19 11.528330206794788 30 0 40 -14.761010112641376 60 -14.761010112641376 70 21.145569597527569
		 90 21.145569597527569 110 0 120 0.081975177308969902 130 0 140 -14.761010112641376
		 145 -14.761010112641376 150 5.2099591537849372 155 -5.8796933842271999 163 -5.5591174344373551
		 170 -5.8796933842271999 185 -14.761010112641376 195 21.145569597527569 203 -11.214618004766267
		 210 -6.6196751525007276 217 -5.7532858567698595 225 -6.6196751525007276 227 -28.626746881730813
		 240 21.145569597527569 250 0 260 0.51441372785545703 265 1.2112582897408732 270 0.51441372785545703
		 280 0 290 0 295 -0.29095590873624416 300 0 310 0 320 0 325 -0.86101370921047238 330 0
		 333 -13.001913549865298 340 0 344 -11.770063135520738 360 0 363 -0.6172338312383604
		 364 -0.2675601610148961 370 0 375 0 380 0 386 7.6546241026047666 396 1.5773790545185706
		 405 0;
	setAttr -s 49 ".kit[45:48]"  1 18 18 18;
	setAttr -s 49 ".kot[45:48]"  1 18 18 18;
	setAttr -s 49 ".kix[45:48]"  1 1 0.98605782176690193 1;
	setAttr -s 49 ".kiy[45:48]"  0 0 -0.16640304123516692 0;
	setAttr -s 49 ".kox[45:48]"  1 1 0.98605782176690193 1;
	setAttr -s 49 ".koy[45:48]"  0 0 -0.16640304123516692 0;
createNode animCurveTU -n "Hips_Control_scaleX";
	rename -uid "91A18593-864E-7986-F905-6CA37552CD25";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  10 1 30 1 40 1 60 1 70 1 90 1 110 1 130 1
		 140 1 155 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1 290 1 300 1
		 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 31 ".kit[29:30]"  1 18;
	setAttr -s 31 ".kot[29:30]"  1 18;
	setAttr -s 31 ".kix[29:30]"  1 1;
	setAttr -s 31 ".kiy[29:30]"  0 0;
	setAttr -s 31 ".kox[29:30]"  1 1;
	setAttr -s 31 ".koy[29:30]"  0 0;
createNode animCurveTU -n "Hips_Control_scaleY";
	rename -uid "456A668C-1649-E356-FE39-75AB24192E9D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  10 1 30 1 40 1 60 1 70 1 90 1 110 1 130 1
		 140 1 155 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1 290 1 300 1
		 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 31 ".kit[29:30]"  1 18;
	setAttr -s 31 ".kot[29:30]"  1 18;
	setAttr -s 31 ".kix[29:30]"  1 1;
	setAttr -s 31 ".kiy[29:30]"  0 0;
	setAttr -s 31 ".kox[29:30]"  1 1;
	setAttr -s 31 ".koy[29:30]"  0 0;
createNode animCurveTU -n "Hips_Control_scaleZ";
	rename -uid "B7328B05-6C4B-9978-DB24-02A7578C0869";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  10 1 30 1 40 1 60 1 70 1 90 1 110 1 130 1
		 140 1 155 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1 290 1 300 1
		 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 31 ".kit[29:30]"  1 18;
	setAttr -s 31 ".kot[29:30]"  1 18;
	setAttr -s 31 ".kix[29:30]"  1 1;
	setAttr -s 31 ".kiy[29:30]"  0 0;
	setAttr -s 31 ".kox[29:30]"  1 1;
	setAttr -s 31 ".koy[29:30]"  0 0;
createNode animCurveTU -n "Hips_Control_visibility";
	rename -uid "A3620C59-104D-A736-3A78-88A8671E0892";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  10 1 30 1 40 1 60 1 70 1 90 1 110 1 130 1
		 140 1 155 1 170 1 185 1 195 1 210 1 225 1 240 1 250 1 260 1 270 1 280 1 290 1 300 1
		 310 1 320 1 330 1 340 1 360 1 370 1 375 1 380 1 405 1;
	setAttr -s 31 ".kit[26:30]"  9 9 9 1 9;
	setAttr -s 31 ".kot[26:30]"  5 5 5 5 5;
	setAttr -s 31 ".kix[29:30]"  1 1;
	setAttr -s 31 ".kiy[29:30]"  0 0;
createNode animCurveTA -n "pointLight2_rotateX";
	rename -uid "C5895315-0946-4E72-234A-5795FC592119";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  70 0 345 0 355 0;
createNode animCurveTA -n "pointLight2_rotateY";
	rename -uid "9202E2CF-8F4A-022B-B1D9-3E96DCAF1DFC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  70 0 345 0 355 0;
createNode animCurveTA -n "pointLight2_rotateZ";
	rename -uid "5E373AB4-5442-BE07-3FC8-A4BF04F44040";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  70 0 345 0 355 0;
createNode animCurveTU -n "pointLight2_visibility";
	rename -uid "B78C5F0A-4E45-8160-C770-B18566C255A9";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  70 1 345 1 355 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "pointLight2_translateX";
	rename -uid "5937D15C-1A49-C7D2-EB0C-26ADD2ACD62F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  70 -102.67414197752672 345 -102.67414197752672
		 355 -102.67414197752672;
createNode animCurveTL -n "pointLight2_translateY";
	rename -uid "9932914A-EB4E-608B-7B44-1A87495459FB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  70 84.04381099779124 345 84.04381099779124
		 355 84.04381099779124;
createNode animCurveTL -n "pointLight2_translateZ";
	rename -uid "745FF22E-534D-7F66-8834-F79EE4CECBB0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  70 -183.95791339846397 345 -183.95791339846397
		 355 -183.95791339846397;
createNode animCurveTU -n "pointLight2_scaleX";
	rename -uid "FEC75D6F-5C40-5260-86FD-339F28D37312";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  70 1 345 1 355 1;
createNode animCurveTU -n "pointLight2_scaleY";
	rename -uid "FAA9EA18-C042-9BB4-8793-B2A92ACABB49";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  70 1 345 1 355 1;
createNode animCurveTU -n "pointLight2_scaleZ";
	rename -uid "1C9DEAC5-524A-8AB7-43A8-76902C653021";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  70 1 345 1 355 1;
select -ne :time1;
	setAttr -av -k on ".cch";
	setAttr -av -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".o" 405;
	setAttr -av -k on ".unw" 405;
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
// End of MainWeapon_Cover.ma
