//Maya ASCII 2016 scene
//Name: Combot_Moving2.ma
//Last modified: Thu, Oct 20, 2016 08:41:35 AM
//Codeset: UTF-8
file -rdi 1 -ns "Rig" -rfn "CombotRN" -op "v=0;" -typ "mayaAscii" "/Users/briancollins/Unity/LZisHOT/MayaSource/Combot/Combot.ma";
file -rdi 1 -ns "AssaultRifle" -rfn "AssaultRifleRN" -op "v=0;" -typ "mayaAscii"
		 "/Users/briancollins/Unity/LZisHOT/MayaSource/equipment/AssaultRifle.ma";
file -r -ns "Rig" -dr 1 -rfn "CombotRN" -op "v=0;" -typ "mayaAscii" "/Users/briancollins/Unity/LZisHOT/MayaSource/Combot/Combot.ma";
file -r -ns "AssaultRifle" -dr 1 -rfn "AssaultRifleRN" -op "v=0;" -typ "mayaAscii"
		 "/Users/briancollins/Unity/LZisHOT/MayaSource/equipment/AssaultRifle.ma";
requires maya "2016";
requires -nodeType "mentalrayFramebuffer" -nodeType "mentalrayOptions" -nodeType "mentalrayGlobals"
		 -nodeType "mentalrayItemsList" -dataType "byteArray" "Mayatomr" "2016.0 - 3.13.1.10 ";
requires -nodeType "gameFbxExporter" "gameFbxExporter" "1.0";
requires -nodeType "ilrOptionsNode" -nodeType "ilrUIOptionsNode" -nodeType "ilrBakeLayerManager"
		 -nodeType "ilrBakeLayer" "Turtle" "2016.0.0";
requires "stereoCamera" "10.0";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2016";
fileInfo "version" "2016";
fileInfo "cutIdentifier" "201511301000-979500";
fileInfo "osv" "Mac OS X 10.9.6";
createNode transform -s -n "persp";
	rename -uid "7E5CF12D-FB40-1E38-CECF-3D8452705848";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -959.42768133387699 344.52684726584124 62.901955594932843 ;
	setAttr ".r" -type "double3" -18.338352730903424 -808.59999999992954 -6.508946237685684e-14 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "CC00F1CE-0347-CFA4-D46A-8685B3A27D4F";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 988.5730730107756;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0 155.27906825658425 -11.161201914925448 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "CD00FD4D-D34D-FE50-90C0-AD93A790B5A2";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 500.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "C0F7CE9F-0647-F56F-F307-B0A3F528DA8C";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 500.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "3CAA632E-0845-87D6-4B20-21BF0F69FF80";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -1.3663976949378611 88.338213411934419 522.24556319433907 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "82A4E158-294C-07E9-AE06-588D975FA4AB";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 500.1;
	setAttr ".ow" 264.69415980999446;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "94F3260A-8141-22A7-25C6-3092E101EDD6";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 500.1 75.884436568367278 -4.8436874405340662 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "6B8FB14B-7E42-35E1-B103-9F96EA7C5538";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 500.1;
	setAttr ".ow" 377.80762036165834;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "directionalLight1";
	rename -uid "550EDB44-6145-E094-50F0-A596D3D8EE79";
createNode directionalLight -n "directionalLightShape1" -p "directionalLight1";
	rename -uid "E1823A7D-B14F-6DC6-8BE8-B9BE4B1F88B2";
	setAttr -k off ".v";
	setAttr ".shr" 4;
	setAttr ".fs" 3;
	setAttr ".dr" 2048;
	setAttr ".db" 0.069316238164901733;
createNode transform -n "directionalLight2";
	rename -uid "88F73D21-F947-1272-F694-EABA95691BD1";
createNode directionalLight -n "directionalLightShape2" -p "directionalLight2";
	rename -uid "930D7E77-0142-5DD4-00C9-05A62044F3AD";
	setAttr -k off ".v";
	setAttr ".cl" -type "float3" 0.39999998 0.88828003 1 ;
	setAttr ".urs" no;
createNode transform -n "ambientLight1";
	rename -uid "3CA36E19-EF4E-66F4-1744-47B232659D08";
createNode ambientLight -n "ambientLightShape1" -p "ambientLight1";
	rename -uid "E1A089D4-CE46-61F1-E412-DE99D63C3494";
	setAttr -k off ".v";
	setAttr ".cl" -type "float3" 0.25799999 0.19121489 0.060372002 ;
	setAttr ".urs" no;
createNode transform -n "Ground";
	rename -uid "061357ED-054B-FA47-95C9-DE98AFFCB9EC";
createNode mesh -n "GroundShape" -p "Ground";
	rename -uid "E3BA073E-8D4A-D164-7EF2-29AE98221DB3";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode fosterParent -n "AssaultRifleRNfosterParent1";
	rename -uid "6BA517E4-2141-66FC-956A-7F9FC6BDC4A2";
createNode parentConstraint -n "AssaultRifle_parentConstraint1" -p "AssaultRifleRNfosterParent1";
	rename -uid "91F3783A-674C-5CB5-7B08-69A0E277B356";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "RightHand_AttachW0" -dv 1 -min 0 
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
	setAttr ".tg[0].tor" -type "double3" 0 0 1.1545088281047763e-14 ;
	setAttr ".lr" -type "double3" 34.895551138952186 66.081638473967431 22.694966759175735 ;
	setAttr ".rst" -type "double3" 0 2.8421709430404007e-14 -8.8817841970012523e-16 ;
	setAttr ".rsrr" -type "double3" 1.2722218725854067e-14 1.1020512482868402e-14 -2.7506186579930925e-15 ;
	setAttr -k on ".w0";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "92AE44DE-2A4D-CA9A-E1AC-C0B210B1C58D";
	setAttr -s 10 ".lnk";
	setAttr -s 10 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "0CC99C9F-EC42-2C67-8240-4CA78C7CF988";
	setAttr ".cdl" 1;
	setAttr -s 2 ".dli[1]"  1;
	setAttr -s 2 ".dli";
createNode displayLayer -n "defaultLayer";
	rename -uid "2644BC56-2D4B-C243-CAB4-12A6779B6A3C";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "F12CC34D-884E-843E-5F61-4CA21249C9C9";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "E3567C50-3E49-9A3A-B881-C992FD348FA7";
	setAttr ".g" yes;
createNode ilrOptionsNode -s -n "TurtleRenderOptions";
	rename -uid "59ED67A8-A74B-0CF2-BF6E-E493F457E07C";
lockNode -l 1 ;
createNode ilrUIOptionsNode -s -n "TurtleUIOptions";
	rename -uid "9FABE08C-DC48-2B46-8B03-7B9A0C85F2F4";
lockNode -l 1 ;
createNode ilrBakeLayerManager -s -n "TurtleBakeLayerManager";
	rename -uid "51D25860-DB43-DC8A-723E-B6BCFD3F876A";
lockNode -l 1 ;
createNode ilrBakeLayer -s -n "TurtleDefaultBakeLayer";
	rename -uid "748D0E35-CD43-C759-BA73-C79047A8EEAF";
lockNode -l 1 ;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "B36CE6C7-5B45-4320-F5FD-A59FEA599EB5";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n"
		+ "                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n"
		+ "            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n"
		+ "            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n"
		+ "                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n"
		+ "                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n"
		+ "                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n"
		+ "            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n"
		+ "            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n"
		+ "            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"all\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n"
		+ "                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 1\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n"
		+ "                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n"
		+ "                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n"
		+ "            -useInteractiveMode 0\n            -displayLights \"all\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n"
		+ "            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"all\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 1\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n"
		+ "                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 0\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 0\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 1\n                -captureSequenceNumber -1\n"
		+ "                -width 1135\n                -height 654\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"all\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 0\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 0\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 1\n            -captureSequenceNumber -1\n            -width 1135\n            -height 654\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -docTag \"isolOutln_fromSeln\" \n                -showShapes 0\n                -showReferenceNodes 1\n                -showReferenceMembers 1\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n"
		+ "                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n"
		+ "                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n"
		+ "            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n"
		+ "            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n"
		+ "                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n"
		+ "                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n"
		+ "                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n"
		+ "                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n"
		+ "                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n"
		+ "                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n"
		+ "                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n"
		+ "                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n"
		+ "                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n"
		+ "                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n"
		+ "                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n"
		+ "                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n"
		+ "                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -image \"D:/project_angel/Zako1/images/test_Zako_1.png\" \n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n"
		+ "                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -image \"D:/project_angel/Zako1/images/test_Zako_1.png\" \n"
		+ "                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"profilerPanel\" -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"Stereo\" -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels `;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -editorChanged \"updateModelPanelBar\" \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n"
		+ "                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n"
		+ "                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n"
		+ "                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -editorChanged \"updateModelPanelBar\" \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n"
		+ "                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n"
		+ "                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n"
		+ "                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n"
		+ "                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n"
		+ "                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"all\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 0\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 0\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 1\\n    -captureSequenceNumber -1\\n    -width 1135\\n    -height 654\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"all\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 0\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 0\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 1\\n    -captureSequenceNumber -1\\n    -width 1135\\n    -height 654\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 100 -size 500 -divisions 2 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "202FA499-554B-8902-6993-43AC0CBCE9B0";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 24 -ast -12 -aet 200 ";
	setAttr ".st" 6;
createNode reference -n "CombotRN";
	rename -uid "09B51F23-0E48-5B9D-77CB-EF970EBFAB6F";
	setAttr -s 212 ".phl";
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
	setAttr ".phl[76]" 0;
	setAttr ".phl[77]" 0;
	setAttr ".phl[78]" 0;
	setAttr ".phl[79]" 0;
	setAttr ".phl[80]" 0;
	setAttr ".phl[81]" 0;
	setAttr ".phl[82]" 0;
	setAttr ".phl[83]" 0;
	setAttr ".phl[84]" 0;
	setAttr ".phl[85]" 0;
	setAttr ".phl[86]" 0;
	setAttr ".phl[87]" 0;
	setAttr ".phl[88]" 0;
	setAttr ".phl[89]" 0;
	setAttr ".phl[90]" 0;
	setAttr ".phl[91]" 0;
	setAttr ".phl[92]" 0;
	setAttr ".phl[93]" 0;
	setAttr ".phl[94]" 0;
	setAttr ".phl[95]" 0;
	setAttr ".phl[96]" 0;
	setAttr ".phl[97]" 0;
	setAttr ".phl[98]" 0;
	setAttr ".phl[99]" 0;
	setAttr ".phl[100]" 0;
	setAttr ".phl[101]" 0;
	setAttr ".phl[102]" 0;
	setAttr ".phl[103]" 0;
	setAttr ".phl[104]" 0;
	setAttr ".phl[105]" 0;
	setAttr ".phl[106]" 0;
	setAttr ".phl[107]" 0;
	setAttr ".phl[108]" 0;
	setAttr ".phl[109]" 0;
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
	setAttr ".ed" -type "dataReferenceEdits" 
		"CombotRN"
		"CombotRN" 3
		2 "|Combot:Geometry|Combot:Combot_LeftArm_01|Combot:Combot_LeftArm_01Shape" 
		"visibility" " -k 0 1"
		2 "|Combot:Geometry|Combot:Combot_RightArm_02|Combot:Combot_RightArm_0Shape2" 
		"visibility" " -k 0 1"
		5 4 "CombotRN" "Combot:lambert4SG.dagSetMembers" "CombotRN.placeHolderList[1]" 
		""
		"CombotRN" 328
		2 "|Rig:Controls|Rig:RootMotion_Control" "translate" " -type \"double3\" 0 0 0"
		
		2 "|Rig:Controls|Rig:RootMotion_Control" "translateX" " -av"
		2 "|Rig:Controls|Rig:RootMotion_Control" "translateY" " -av"
		2 "|Rig:Controls|Rig:RootMotion_Control" "translateZ" " -av"
		2 "|Rig:Controls|Rig:RootMotion_Control" "rotate" " -type \"double3\" 0 0 0"
		
		2 "|Rig:Controls|Rig:RootMotion_Control" "rotateX" " -av"
		2 "|Rig:Controls|Rig:RootMotion_Control" "rotateY" " -av"
		2 "|Rig:Controls|Rig:RootMotion_Control" "rotateZ" " -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:RIghtFoot_Control" "translate" 
		" -type \"double3\" 5.77651252684518113 0 40.62828773317914255"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:RIghtFoot_Control" "translateX" 
		" -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:RIghtFoot_Control" "translateY" 
		" -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:RIghtFoot_Control" "translateZ" 
		" -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:RIghtFoot_Control" "rotate" " -type \"double3\" -19.38441480744866752 -14.90915178985435396 3.1519163916518389"
		
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:RIghtFoot_Control" "rotateX" 
		" -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:RIghtFoot_Control" "rotateY" 
		" -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:RIghtFoot_Control" "rotateZ" 
		" -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:RIghtFoot_Control|Rig:RightToes_Control" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:RIghtFoot_Control|Rig:RightToes_Control" 
		"rotateX" " -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftFoot_Control" "translate" 
		" -type \"double3\" -7.55390099664371206 38.34585890422837906 -63.99287562732241952"
		
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftFoot_Control" "translateX" 
		" -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftFoot_Control" "translateY" 
		" -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftFoot_Control" "translateZ" 
		" -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftFoot_Control" "rotate" " -type \"double3\" 104.20525712180959488 -3.67747472410103393 14.2184187392336554"
		
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftFoot_Control" "rotateX" " -av"
		
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftFoot_Control" "rotateY" " -av"
		
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftFoot_Control" "rotateZ" " -av"
		
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftFoot_Control|Rig:LeftToes_Control" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftFoot_Control|Rig:LeftToes_Control" 
		"rotateX" " -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control" "translate" " -type \"double3\" 0 -2.28535949876373934 0"
		
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control" "translateX" " -av"
		
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control" "translateY" " -av"
		
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control" "translateZ" " -av"
		
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control" "rotate" " -type \"double3\" 27.33711929630220894 1.6738204708449036 3.29469545390724594"
		
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control" "rotateX" " -av"
		
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control" "rotateY" " -av"
		
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control" "rotateZ" " -av"
		
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control" 
		"rotate" " -type \"double3\" -0.42586799105454476 0.1865043062394306 -1.73369922830063494"
		
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control" 
		"rotateX" " -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control" 
		"rotateY" " -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control" 
		"rotateZ" " -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:Neck_Control" 
		"rotate" " -type \"double3\" -5.17210605319875327 -2.40113508871066017 2.62052168820685427"
		
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:Neck_Control" 
		"rotateX" " -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:Neck_Control" 
		"rotateY" " -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:Neck_Control" 
		"rotateZ" " -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:Neck_Control|Rig:Head_Control" 
		"rotate" " -type \"double3\" -16.22300671848405784 52.22359130870790267 -19.85245254847144025"
		
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:Neck_Control|Rig:Head_Control" 
		"rotateX" " -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:Neck_Control|Rig:Head_Control" 
		"rotateY" " -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:Neck_Control|Rig:Head_Control" 
		"rotateZ" " -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:RightHand_Control" "translate" 
		" -type \"double3\" 15.3179837061282349 26.91717564563271026 32.5299903567671933"
		
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:RightHand_Control" "translateX" 
		" -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:RightHand_Control" "translateY" 
		" -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:RightHand_Control" "translateZ" 
		" -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:RightHand_Control" "rotate" " -type \"double3\" -38.89409416850278944 68.03627399096781403 26.41914814927989497"
		
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:RightHand_Control" "rotateX" 
		" -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:RightHand_Control" "rotateY" 
		" -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:RightHand_Control" "rotateZ" 
		" -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftHand_Control" "translate" 
		" -type \"double3\" -9.6348899746415313 14.46915622432209148 34.34665944025564244"
		
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftHand_Control" "translateX" 
		" -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftHand_Control" "translateY" 
		" -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftHand_Control" "translateZ" 
		" -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftHand_Control" "rotate" " -type \"double3\" -41.8748000704446568 17.70694906398643909 -92.04148959679069719"
		
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftHand_Control" "rotateX" " -av"
		
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftHand_Control" "rotateY" " -av"
		
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftHand_Control" "rotateZ" " -av"
		
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftElbow_Control" "translate" 
		" -type \"double3\" 102.37399648451193457 0 0"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftElbow_Control" "translateX" 
		" -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftElbow_Control" "translateY" 
		" -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftElbow_Control" "translateZ" 
		" -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:RightElbow_Control" "translate" 
		" -type \"double3\" -47.37586010175051854 0 0"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:RightElbow_Control" "translateX" 
		" -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:RightElbow_Control" "translateY" 
		" -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:RightElbow_Control" "translateZ" 
		" -av"
		2 "|Rig:Geometry|Rig:Combot_Torso|Rig:Combot_TorsoShape" "visibility" " -k 0 1"
		
		2 "|Rig:Geometry|Rig:Combot_Torso|Rig:Combot_TorsoShape" "uvPivot" " -type \"double2\" 0.50693885982036591 0.30852951481938362"
		
		2 "|Rig:Geometry|Rig:Combot_Torso|Rig:Combot_TorsoShape" "uvSet[0].uvSetName" 
		" -type \"string\" \"map1\""
		2 "|Rig:Geometry|Rig:Combot_Head_01|Rig:Combot_Head_02Shape1" "visibility" 
		" -k 0 1"
		2 "|Rig:Geometry|Rig:Combot_Head_01|Rig:Combot_Head_02Shape1" "uvPivot" " -type \"double2\" 0.50775612890720367 0.41972702741622925"
		
		2 "|Rig:Geometry|Rig:Combot_Legs_01|Rig:Combot_Legs_01Shape" "visibility" 
		" -k 0 1"
		2 "|Rig:Geometry|Rig:Combot_Legs_01|Rig:Combot_Legs_01Shape" "uvPivot" " -type \"double2\" 0.49574157275492325 0.49424097046721727"
		
		2 "|Rig:Geometry|Rig:Combot_RightArm_01|Rig:Combot_RightArm_0Shape1" "visibility" 
		" -k 0 1"
		2 "|Rig:Geometry|Rig:Combot_RightArm_01|Rig:Combot_RightArm_0Shape1" "uvPivot" 
		" -type \"double2\" 0.57441422343254089 0.50654522888362408"
		2 "|Rig:Geometry|Rig:Combot_LeftArm01|Rig:Combot_LeftArm0Shape1" "visibility" 
		" -k 0 1"
		2 "|Rig:Geometry|Rig:Combot_LeftArm01|Rig:Combot_LeftArm0Shape1" "uvPivot" 
		" -type \"double2\" 0.49790135025978088 0.50286479108035564"
		2 "|Rig:Skeleton|Rig:RootMotion_Skel|Rig:Hips_Skel|Rig:Spine1_Skel|Rig:Spine2_Skel|Rig:Neck_Skel" 
		"rotate" " -type \"double3\" -1.73106003868642921 -3.10401771193479847 5.16408381966762153"
		
		2 "|Rig:Skeleton|Rig:RootMotion_Skel|Rig:Hips_Skel|Rig:Spine1_Skel|Rig:Spine2_Skel|Rig:Neck_Skel" 
		"rotateX" " -av"
		2 "|Rig:Skeleton|Rig:RootMotion_Skel|Rig:Hips_Skel|Rig:Spine1_Skel|Rig:Spine2_Skel|Rig:Neck_Skel" 
		"rotateY" " -av"
		2 "|Rig:Skeleton|Rig:RootMotion_Skel|Rig:Hips_Skel|Rig:Spine1_Skel|Rig:Spine2_Skel|Rig:Neck_Skel" 
		"rotateZ" " -av"
		2 "|Rig:Skeleton|Rig:RootMotion_Skel|Rig:Hips_Skel|Rig:Spine1_Skel|Rig:Spine2_Skel|Rig:Neck_Skel|Rig:Head_Skel" 
		"rotate" " -type \"double3\" -16.22300671848407916 52.22359130870788846 -19.85245254847142249"
		
		2 "|Rig:Skeleton|Rig:RootMotion_Skel|Rig:Hips_Skel|Rig:Spine1_Skel|Rig:Spine2_Skel|Rig:Neck_Skel|Rig:Head_Skel" 
		"rotateX" " -av"
		2 "|Rig:Skeleton|Rig:RootMotion_Skel|Rig:Hips_Skel|Rig:Spine1_Skel|Rig:Spine2_Skel|Rig:Neck_Skel|Rig:Head_Skel" 
		"rotateY" " -av"
		2 "|Rig:Skeleton|Rig:RootMotion_Skel|Rig:Hips_Skel|Rig:Spine1_Skel|Rig:Spine2_Skel|Rig:Neck_Skel|Rig:Head_Skel" 
		"rotateZ" " -av"
		2 "|Rig:Skeleton|Rig:RootMotion_Skel|Rig:Hips_Skel|Rig:Spine1_Skel|Rig:Spine2_Skel|Rig:RightClav_Skel|Rig:RightShoulder_Skel|Rig:RightUpperArm_Skel" 
		"rotate" " -type \"double3\" -3.55320784544084844 -21.97558413465748473 -3.02782872741219711"
		
		2 "|Rig:Skeleton|Rig:RootMotion_Skel|Rig:Hips_Skel|Rig:Spine1_Skel|Rig:Spine2_Skel|Rig:RightClav_Skel|Rig:RightShoulder_Skel|Rig:RightUpperArm_Skel|Rig:RightLowerArm_Skel" 
		"rotate" " -type \"double3\" -84.01432245135657695 -0.0024125449693000664 0.0046575036921291182"
		
		2 "|Rig:Skeleton|Rig:RootMotion_Skel|Rig:Hips_Skel|Rig:Spine1_Skel|Rig:Spine2_Skel|Rig:RightClav_Skel|Rig:RightShoulder_Skel|Rig:RightUpperArm_Skel|Rig:RightLowerArm_Skel|Rig:RightHand_Skel" 
		"rotate" " -type \"double3\" 15.30545044945857747 -6.05883427138310804 -47.19787892956112785"
		
		2 "|Rig:Skeleton|Rig:RootMotion_Skel|Rig:Hips_Skel|Rig:Spine1_Skel|Rig:Spine2_Skel|Rig:RightClav_Skel|Rig:RightShoulder_Skel|Rig:RightUpperArm_Skel|Rig:RightLowerArm_Skel|Rig:RightHand_Skel" 
		"rotateX" " -av"
		2 "|Rig:Skeleton|Rig:RootMotion_Skel|Rig:Hips_Skel|Rig:Spine1_Skel|Rig:Spine2_Skel|Rig:RightClav_Skel|Rig:RightShoulder_Skel|Rig:RightUpperArm_Skel|Rig:RightLowerArm_Skel|Rig:RightHand_Skel" 
		"rotateY" " -av"
		2 "|Rig:Skeleton|Rig:RootMotion_Skel|Rig:Hips_Skel|Rig:Spine1_Skel|Rig:Spine2_Skel|Rig:RightClav_Skel|Rig:RightShoulder_Skel|Rig:RightUpperArm_Skel|Rig:RightLowerArm_Skel|Rig:RightHand_Skel" 
		"rotateZ" " -av"
		2 "|Rig:Skeleton|Rig:RootMotion_Skel|Rig:Hips_Skel|Rig:Spine1_Skel|Rig:Spine2_Skel|Rig:RightClav_Skel|Rig:RightShoulder_Skel|Rig:RightUpperArm_Skel|Rig:RightLowerArm_Skel|Rig:RightHand_Skel|Rig:RightFingers1_Skel" 
		"rotate" " -type \"double3\" 5.53599482483785632 4.27832227337583682 -60.77121046288503692"
		
		2 "|Rig:Skeleton|Rig:RootMotion_Skel|Rig:Hips_Skel|Rig:Spine1_Skel|Rig:Spine2_Skel|Rig:RightClav_Skel|Rig:RightShoulder_Skel|Rig:RightUpperArm_Skel|Rig:RightLowerArm_Skel|Rig:RightHand_Skel|Rig:RightFingers1_Skel" 
		"rotateX" " -av"
		2 "|Rig:Skeleton|Rig:RootMotion_Skel|Rig:Hips_Skel|Rig:Spine1_Skel|Rig:Spine2_Skel|Rig:RightClav_Skel|Rig:RightShoulder_Skel|Rig:RightUpperArm_Skel|Rig:RightLowerArm_Skel|Rig:RightHand_Skel|Rig:RightFingers1_Skel" 
		"rotateY" " -av"
		2 "|Rig:Skeleton|Rig:RootMotion_Skel|Rig:Hips_Skel|Rig:Spine1_Skel|Rig:Spine2_Skel|Rig:RightClav_Skel|Rig:RightShoulder_Skel|Rig:RightUpperArm_Skel|Rig:RightLowerArm_Skel|Rig:RightHand_Skel|Rig:RightFingers1_Skel" 
		"rotateZ" " -av"
		2 "|Rig:Skeleton|Rig:RootMotion_Skel|Rig:Hips_Skel|Rig:Spine1_Skel|Rig:Spine2_Skel|Rig:LeftClav_Skel|Rig:LeftShoulder_Skel|Rig:LeftUpperArm_Skel" 
		"rotate" " -type \"double3\" -30.0581968810013187 -34.3397081102360815 22.05079153675761461"
		
		2 "|Rig:Skeleton|Rig:RootMotion_Skel|Rig:Hips_Skel|Rig:Spine1_Skel|Rig:Spine2_Skel|Rig:LeftClav_Skel|Rig:LeftShoulder_Skel|Rig:LeftUpperArm_Skel|Rig:LeftLowerArm_Skel" 
		"rotate" " -type \"double3\" -46.6824965452350753 -0.0013500552820769336 0.0026063313227709345"
		
		2 "|Rig:Skeleton|Rig:RootMotion_Skel|Rig:Hips_Skel|Rig:Spine1_Skel|Rig:Spine2_Skel|Rig:LeftClav_Skel|Rig:LeftShoulder_Skel|Rig:LeftUpperArm_Skel|Rig:LeftLowerArm_Skel|Rig:LeftHand_Skel" 
		"rotate" " -type \"double3\" -138.43142433560475979 65.81173596984302776 -134.7132296856835012"
		
		2 "|Rig:Skeleton|Rig:RootMotion_Skel|Rig:Hips_Skel|Rig:Spine1_Skel|Rig:Spine2_Skel|Rig:LeftClav_Skel|Rig:LeftShoulder_Skel|Rig:LeftUpperArm_Skel|Rig:LeftLowerArm_Skel|Rig:LeftHand_Skel" 
		"rotateX" " -av"
		2 "|Rig:Skeleton|Rig:RootMotion_Skel|Rig:Hips_Skel|Rig:Spine1_Skel|Rig:Spine2_Skel|Rig:LeftClav_Skel|Rig:LeftShoulder_Skel|Rig:LeftUpperArm_Skel|Rig:LeftLowerArm_Skel|Rig:LeftHand_Skel" 
		"rotateY" " -av"
		2 "|Rig:Skeleton|Rig:RootMotion_Skel|Rig:Hips_Skel|Rig:Spine1_Skel|Rig:Spine2_Skel|Rig:LeftClav_Skel|Rig:LeftShoulder_Skel|Rig:LeftUpperArm_Skel|Rig:LeftLowerArm_Skel|Rig:LeftHand_Skel" 
		"rotateZ" " -av"
		2 "|Rig:Skeleton|Rig:RootMotion_Skel|Rig:Hips_Skel|Rig:Spine1_Skel|Rig:Spine2_Skel|Rig:LeftClav_Skel|Rig:LeftShoulder_Skel|Rig:LeftUpperArm_Skel|Rig:LeftLowerArm_Skel|Rig:LeftHand_Skel|Rig:LeftFingers1_Skel" 
		"rotate" " -type \"double3\" 8.55015232383791002 5.73559574365339664 -35.24001034462489201"
		
		2 "|Rig:Skeleton|Rig:RootMotion_Skel|Rig:Hips_Skel|Rig:Spine1_Skel|Rig:Spine2_Skel|Rig:LeftClav_Skel|Rig:LeftShoulder_Skel|Rig:LeftUpperArm_Skel|Rig:LeftLowerArm_Skel|Rig:LeftHand_Skel|Rig:LeftFingers1_Skel" 
		"rotateX" " -av"
		2 "|Rig:Skeleton|Rig:RootMotion_Skel|Rig:Hips_Skel|Rig:Spine1_Skel|Rig:Spine2_Skel|Rig:LeftClav_Skel|Rig:LeftShoulder_Skel|Rig:LeftUpperArm_Skel|Rig:LeftLowerArm_Skel|Rig:LeftHand_Skel|Rig:LeftFingers1_Skel" 
		"rotateY" " -av"
		2 "|Rig:Skeleton|Rig:RootMotion_Skel|Rig:Hips_Skel|Rig:Spine1_Skel|Rig:Spine2_Skel|Rig:LeftClav_Skel|Rig:LeftShoulder_Skel|Rig:LeftUpperArm_Skel|Rig:LeftLowerArm_Skel|Rig:LeftHand_Skel|Rig:LeftFingers1_Skel" 
		"rotateZ" " -av"
		2 "Rig:SkeletonLayer" "visibility" " 0"
		2 "Rig:ExtraLayer" "displayType" " 0"
		2 "Rig:MatAUG_Legs01" "transparency" " -type \"float3\" 0 0 0"
		3 "Rig:file4.outTransparency" "Rig:MatAUG_Legs01.transparency" ""
		3 "Rig:skinCluster5.outputGeometry[0]" "|Rig:Geometry|Rig:Combot_Torso|Rig:Combot_TorsoShape.inMesh" 
		""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control.translateX" "CombotRN.placeHolderList[2]" 
		""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control.translateY" "CombotRN.placeHolderList[3]" 
		""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control.translateZ" "CombotRN.placeHolderList[4]" 
		""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control.rotateX" "CombotRN.placeHolderList[5]" 
		""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control.rotateY" "CombotRN.placeHolderList[6]" 
		""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control.rotateZ" "CombotRN.placeHolderList[7]" 
		""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control.scaleX" "CombotRN.placeHolderList[8]" 
		""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control.scaleY" "CombotRN.placeHolderList[9]" 
		""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control.scaleZ" "CombotRN.placeHolderList[10]" 
		""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control.visibility" "CombotRN.placeHolderList[11]" 
		""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:RIghtFoot_Control.rotateX" 
		"CombotRN.placeHolderList[12]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:RIghtFoot_Control.rotateY" 
		"CombotRN.placeHolderList[13]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:RIghtFoot_Control.rotateZ" 
		"CombotRN.placeHolderList[14]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:RIghtFoot_Control.translateX" 
		"CombotRN.placeHolderList[15]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:RIghtFoot_Control.translateY" 
		"CombotRN.placeHolderList[16]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:RIghtFoot_Control.translateZ" 
		"CombotRN.placeHolderList[17]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:RIghtFoot_Control.visibility" 
		"CombotRN.placeHolderList[18]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:RIghtFoot_Control.scaleX" 
		"CombotRN.placeHolderList[19]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:RIghtFoot_Control.scaleY" 
		"CombotRN.placeHolderList[20]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:RIghtFoot_Control.scaleZ" 
		"CombotRN.placeHolderList[21]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:RIghtFoot_Control|Rig:RightToes_Control.rotateX" 
		"CombotRN.placeHolderList[22]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:RIghtFoot_Control|Rig:RightToes_Control.rotateY" 
		"CombotRN.placeHolderList[23]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:RIghtFoot_Control|Rig:RightToes_Control.rotateZ" 
		"CombotRN.placeHolderList[24]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:RIghtFoot_Control|Rig:RightToes_Control.visibility" 
		"CombotRN.placeHolderList[25]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:RIghtFoot_Control|Rig:RightToes_Control.translateX" 
		"CombotRN.placeHolderList[26]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:RIghtFoot_Control|Rig:RightToes_Control.translateY" 
		"CombotRN.placeHolderList[27]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:RIghtFoot_Control|Rig:RightToes_Control.translateZ" 
		"CombotRN.placeHolderList[28]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:RIghtFoot_Control|Rig:RightToes_Control.scaleX" 
		"CombotRN.placeHolderList[29]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:RIghtFoot_Control|Rig:RightToes_Control.scaleY" 
		"CombotRN.placeHolderList[30]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:RIghtFoot_Control|Rig:RightToes_Control.scaleZ" 
		"CombotRN.placeHolderList[31]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:RIghtFoot_Control|Rig:nurbsCircle1.translateX" 
		"CombotRN.placeHolderList[32]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:RIghtFoot_Control|Rig:nurbsCircle1.translateY" 
		"CombotRN.placeHolderList[33]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:RIghtFoot_Control|Rig:nurbsCircle1.translateZ" 
		"CombotRN.placeHolderList[34]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:RIghtFoot_Control|Rig:nurbsCircle1.visibility" 
		"CombotRN.placeHolderList[35]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:RIghtFoot_Control|Rig:nurbsCircle1.rotateX" 
		"CombotRN.placeHolderList[36]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:RIghtFoot_Control|Rig:nurbsCircle1.rotateY" 
		"CombotRN.placeHolderList[37]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:RIghtFoot_Control|Rig:nurbsCircle1.rotateZ" 
		"CombotRN.placeHolderList[38]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:RIghtFoot_Control|Rig:nurbsCircle1.scaleX" 
		"CombotRN.placeHolderList[39]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:RIghtFoot_Control|Rig:nurbsCircle1.scaleY" 
		"CombotRN.placeHolderList[40]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:RIghtFoot_Control|Rig:nurbsCircle1.scaleZ" 
		"CombotRN.placeHolderList[41]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftFoot_Control.rotateX" 
		"CombotRN.placeHolderList[42]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftFoot_Control.rotateY" 
		"CombotRN.placeHolderList[43]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftFoot_Control.rotateZ" 
		"CombotRN.placeHolderList[44]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftFoot_Control.translateX" 
		"CombotRN.placeHolderList[45]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftFoot_Control.translateY" 
		"CombotRN.placeHolderList[46]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftFoot_Control.translateZ" 
		"CombotRN.placeHolderList[47]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftFoot_Control.visibility" 
		"CombotRN.placeHolderList[48]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftFoot_Control.scaleX" 
		"CombotRN.placeHolderList[49]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftFoot_Control.scaleY" 
		"CombotRN.placeHolderList[50]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftFoot_Control.scaleZ" 
		"CombotRN.placeHolderList[51]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftFoot_Control|Rig:LeftToes_Control.rotateX" 
		"CombotRN.placeHolderList[52]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftFoot_Control|Rig:LeftToes_Control.rotateY" 
		"CombotRN.placeHolderList[53]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftFoot_Control|Rig:LeftToes_Control.rotateZ" 
		"CombotRN.placeHolderList[54]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftFoot_Control|Rig:LeftToes_Control.translateX" 
		"CombotRN.placeHolderList[55]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftFoot_Control|Rig:LeftToes_Control.translateY" 
		"CombotRN.placeHolderList[56]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftFoot_Control|Rig:LeftToes_Control.translateZ" 
		"CombotRN.placeHolderList[57]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftFoot_Control|Rig:LeftToes_Control.visibility" 
		"CombotRN.placeHolderList[58]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftFoot_Control|Rig:LeftToes_Control.scaleX" 
		"CombotRN.placeHolderList[59]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftFoot_Control|Rig:LeftToes_Control.scaleY" 
		"CombotRN.placeHolderList[60]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftFoot_Control|Rig:LeftToes_Control.scaleZ" 
		"CombotRN.placeHolderList[61]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftFoot_Control|Rig:LeftKnee_Control.translateX" 
		"CombotRN.placeHolderList[62]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftFoot_Control|Rig:LeftKnee_Control.translateY" 
		"CombotRN.placeHolderList[63]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftFoot_Control|Rig:LeftKnee_Control.translateZ" 
		"CombotRN.placeHolderList[64]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftFoot_Control|Rig:LeftKnee_Control.visibility" 
		"CombotRN.placeHolderList[65]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftFoot_Control|Rig:LeftKnee_Control.rotateX" 
		"CombotRN.placeHolderList[66]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftFoot_Control|Rig:LeftKnee_Control.rotateY" 
		"CombotRN.placeHolderList[67]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftFoot_Control|Rig:LeftKnee_Control.rotateZ" 
		"CombotRN.placeHolderList[68]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftFoot_Control|Rig:LeftKnee_Control.scaleX" 
		"CombotRN.placeHolderList[69]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftFoot_Control|Rig:LeftKnee_Control.scaleY" 
		"CombotRN.placeHolderList[70]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftFoot_Control|Rig:LeftKnee_Control.scaleZ" 
		"CombotRN.placeHolderList[71]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control.translateX" 
		"CombotRN.placeHolderList[72]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control.translateY" 
		"CombotRN.placeHolderList[73]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control.translateZ" 
		"CombotRN.placeHolderList[74]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control.rotateX" 
		"CombotRN.placeHolderList[75]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control.rotateY" 
		"CombotRN.placeHolderList[76]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control.rotateZ" 
		"CombotRN.placeHolderList[77]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control.scaleX" 
		"CombotRN.placeHolderList[78]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control.scaleY" 
		"CombotRN.placeHolderList[79]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control.scaleZ" 
		"CombotRN.placeHolderList[80]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control.visibility" 
		"CombotRN.placeHolderList[81]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control.rotateX" 
		"CombotRN.placeHolderList[82]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control.rotateY" 
		"CombotRN.placeHolderList[83]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control.rotateZ" 
		"CombotRN.placeHolderList[84]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control.visibility" 
		"CombotRN.placeHolderList[85]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control.translateX" 
		"CombotRN.placeHolderList[86]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control.translateY" 
		"CombotRN.placeHolderList[87]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control.translateZ" 
		"CombotRN.placeHolderList[88]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control.scaleX" 
		"CombotRN.placeHolderList[89]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control.scaleY" 
		"CombotRN.placeHolderList[90]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control.scaleZ" 
		"CombotRN.placeHolderList[91]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control.rotateX" 
		"CombotRN.placeHolderList[92]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control.rotateY" 
		"CombotRN.placeHolderList[93]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control.rotateZ" 
		"CombotRN.placeHolderList[94]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control.scaleX" 
		"CombotRN.placeHolderList[95]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control.scaleY" 
		"CombotRN.placeHolderList[96]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control.scaleZ" 
		"CombotRN.placeHolderList[97]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control.translateX" 
		"CombotRN.placeHolderList[98]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control.translateY" 
		"CombotRN.placeHolderList[99]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control.translateZ" 
		"CombotRN.placeHolderList[100]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control.visibility" 
		"CombotRN.placeHolderList[101]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:LeftClav_Control.rotateX" 
		"CombotRN.placeHolderList[102]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:LeftClav_Control.rotateY" 
		"CombotRN.placeHolderList[103]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:LeftClav_Control.rotateZ" 
		"CombotRN.placeHolderList[104]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:LeftClav_Control.translateX" 
		"CombotRN.placeHolderList[105]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:LeftClav_Control.translateY" 
		"CombotRN.placeHolderList[106]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:LeftClav_Control.translateZ" 
		"CombotRN.placeHolderList[107]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:LeftClav_Control.visibility" 
		"CombotRN.placeHolderList[108]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:LeftClav_Control.scaleX" 
		"CombotRN.placeHolderList[109]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:LeftClav_Control.scaleY" 
		"CombotRN.placeHolderList[110]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:LeftClav_Control.scaleZ" 
		"CombotRN.placeHolderList[111]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:RightClav_Control.rotateX" 
		"CombotRN.placeHolderList[112]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:RightClav_Control.rotateY" 
		"CombotRN.placeHolderList[113]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:RightClav_Control.rotateZ" 
		"CombotRN.placeHolderList[114]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:RightClav_Control.translateX" 
		"CombotRN.placeHolderList[115]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:RightClav_Control.translateY" 
		"CombotRN.placeHolderList[116]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:RightClav_Control.translateZ" 
		"CombotRN.placeHolderList[117]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:RightClav_Control.visibility" 
		"CombotRN.placeHolderList[118]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:RightClav_Control.scaleX" 
		"CombotRN.placeHolderList[119]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:RightClav_Control.scaleY" 
		"CombotRN.placeHolderList[120]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:RightClav_Control.scaleZ" 
		"CombotRN.placeHolderList[121]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:Neck_Control.rotateX" 
		"CombotRN.placeHolderList[122]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:Neck_Control.rotateY" 
		"CombotRN.placeHolderList[123]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:Neck_Control.rotateZ" 
		"CombotRN.placeHolderList[124]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:Neck_Control.visibility" 
		"CombotRN.placeHolderList[125]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:Neck_Control.translateX" 
		"CombotRN.placeHolderList[126]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:Neck_Control.translateY" 
		"CombotRN.placeHolderList[127]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:Neck_Control.translateZ" 
		"CombotRN.placeHolderList[128]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:Neck_Control.scaleX" 
		"CombotRN.placeHolderList[129]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:Neck_Control.scaleY" 
		"CombotRN.placeHolderList[130]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:Neck_Control.scaleZ" 
		"CombotRN.placeHolderList[131]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:Neck_Control|Rig:Head_Control.rotateX" 
		"CombotRN.placeHolderList[132]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:Neck_Control|Rig:Head_Control.rotateY" 
		"CombotRN.placeHolderList[133]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:Neck_Control|Rig:Head_Control.rotateZ" 
		"CombotRN.placeHolderList[134]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:Neck_Control|Rig:Head_Control.visibility" 
		"CombotRN.placeHolderList[135]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:Neck_Control|Rig:Head_Control.translateX" 
		"CombotRN.placeHolderList[136]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:Neck_Control|Rig:Head_Control.translateY" 
		"CombotRN.placeHolderList[137]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:Neck_Control|Rig:Head_Control.translateZ" 
		"CombotRN.placeHolderList[138]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:Neck_Control|Rig:Head_Control.scaleX" 
		"CombotRN.placeHolderList[139]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:Neck_Control|Rig:Head_Control.scaleY" 
		"CombotRN.placeHolderList[140]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:Neck_Control|Rig:Head_Control.scaleZ" 
		"CombotRN.placeHolderList[141]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:LeftShoulder_Control.rotateX" 
		"CombotRN.placeHolderList[142]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:LeftShoulder_Control.rotateY" 
		"CombotRN.placeHolderList[143]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:LeftShoulder_Control.rotateZ" 
		"CombotRN.placeHolderList[144]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:LeftShoulder_Control.translateX" 
		"CombotRN.placeHolderList[145]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:LeftShoulder_Control.translateY" 
		"CombotRN.placeHolderList[146]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:LeftShoulder_Control.translateZ" 
		"CombotRN.placeHolderList[147]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:LeftShoulder_Control.visibility" 
		"CombotRN.placeHolderList[148]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:LeftShoulder_Control.scaleX" 
		"CombotRN.placeHolderList[149]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:LeftShoulder_Control.scaleY" 
		"CombotRN.placeHolderList[150]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:LeftShoulder_Control.scaleZ" 
		"CombotRN.placeHolderList[151]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:RightShoulder_Control.rotateX" 
		"CombotRN.placeHolderList[152]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:RightShoulder_Control.rotateY" 
		"CombotRN.placeHolderList[153]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:RightShoulder_Control.rotateZ" 
		"CombotRN.placeHolderList[154]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:RightShoulder_Control.translateX" 
		"CombotRN.placeHolderList[155]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:RightShoulder_Control.translateY" 
		"CombotRN.placeHolderList[156]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:RightShoulder_Control.translateZ" 
		"CombotRN.placeHolderList[157]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:RightShoulder_Control.visibility" 
		"CombotRN.placeHolderList[158]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:RightShoulder_Control.scaleX" 
		"CombotRN.placeHolderList[159]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:RightShoulder_Control.scaleY" 
		"CombotRN.placeHolderList[160]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:RightShoulder_Control.scaleZ" 
		"CombotRN.placeHolderList[161]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:RightHand_Control.Grip" 
		"CombotRN.placeHolderList[162]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:RightHand_Control.rotateX" 
		"CombotRN.placeHolderList[163]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:RightHand_Control.rotateY" 
		"CombotRN.placeHolderList[164]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:RightHand_Control.rotateZ" 
		"CombotRN.placeHolderList[165]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:RightHand_Control.translateX" 
		"CombotRN.placeHolderList[166]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:RightHand_Control.translateY" 
		"CombotRN.placeHolderList[167]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:RightHand_Control.translateZ" 
		"CombotRN.placeHolderList[168]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:RightHand_Control.visibility" 
		"CombotRN.placeHolderList[169]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:RightHand_Control.scaleX" 
		"CombotRN.placeHolderList[170]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:RightHand_Control.scaleY" 
		"CombotRN.placeHolderList[171]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:RightHand_Control.scaleZ" 
		"CombotRN.placeHolderList[172]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftHand_Control.Grip" 
		"CombotRN.placeHolderList[173]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftHand_Control.rotateX" 
		"CombotRN.placeHolderList[174]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftHand_Control.rotateY" 
		"CombotRN.placeHolderList[175]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftHand_Control.rotateZ" 
		"CombotRN.placeHolderList[176]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftHand_Control.translateX" 
		"CombotRN.placeHolderList[177]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftHand_Control.translateY" 
		"CombotRN.placeHolderList[178]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftHand_Control.translateZ" 
		"CombotRN.placeHolderList[179]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftHand_Control.visibility" 
		"CombotRN.placeHolderList[180]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftHand_Control.scaleX" 
		"CombotRN.placeHolderList[181]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftHand_Control.scaleY" 
		"CombotRN.placeHolderList[182]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftHand_Control.scaleZ" 
		"CombotRN.placeHolderList[183]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftElbow_Control.translateX" 
		"CombotRN.placeHolderList[184]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftElbow_Control.translateY" 
		"CombotRN.placeHolderList[185]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftElbow_Control.translateZ" 
		"CombotRN.placeHolderList[186]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftElbow_Control.scaleY" 
		"CombotRN.placeHolderList[187]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftElbow_Control.scaleX" 
		"CombotRN.placeHolderList[188]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftElbow_Control.scaleZ" 
		"CombotRN.placeHolderList[189]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftElbow_Control.visibility" 
		"CombotRN.placeHolderList[190]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftElbow_Control.rotateX" 
		"CombotRN.placeHolderList[191]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftElbow_Control.rotateY" 
		"CombotRN.placeHolderList[192]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftElbow_Control.rotateZ" 
		"CombotRN.placeHolderList[193]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:RightElbow_Control.translateX" 
		"CombotRN.placeHolderList[194]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:RightElbow_Control.translateY" 
		"CombotRN.placeHolderList[195]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:RightElbow_Control.translateZ" 
		"CombotRN.placeHolderList[196]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:RightElbow_Control.scaleZ" 
		"CombotRN.placeHolderList[197]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:RightElbow_Control.scaleX" 
		"CombotRN.placeHolderList[198]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:RightElbow_Control.scaleY" 
		"CombotRN.placeHolderList[199]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:RightElbow_Control.visibility" 
		"CombotRN.placeHolderList[200]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:RightElbow_Control.rotateX" 
		"CombotRN.placeHolderList[201]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:RightElbow_Control.rotateY" 
		"CombotRN.placeHolderList[202]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:RightElbow_Control.rotateZ" 
		"CombotRN.placeHolderList[203]" ""
		5 4 "CombotRN" "|Rig:Geometry|Rig:Combot_Torso|Rig:Combot_TorsoShape.inMesh" 
		"CombotRN.placeHolderList[204]" ""
		5 3 "CombotRN" "|Rig:Geometry|Rig:Combot_Torso|Rig:Combot_TorsoShape.worldMatrix" 
		"CombotRN.placeHolderList[205]" ""
		5 3 "CombotRN" "|Rig:Skeleton|Rig:RootMotion_Skel|Rig:Hips_Skel|Rig:Spine1_Skel|Rig:Spine2_Skel|Rig:RightClav_Skel|Rig:RightShoulder_Skel|Rig:RightUpperArm_Skel|Rig:RightLowerArm_Skel|Rig:RightHand_Skel|Rig:RightHand_Attach.translate" 
		"CombotRN.placeHolderList[206]" ""
		5 3 "CombotRN" "|Rig:Skeleton|Rig:RootMotion_Skel|Rig:Hips_Skel|Rig:Spine1_Skel|Rig:Spine2_Skel|Rig:RightClav_Skel|Rig:RightShoulder_Skel|Rig:RightUpperArm_Skel|Rig:RightLowerArm_Skel|Rig:RightHand_Skel|Rig:RightHand_Attach.rotatePivot" 
		"CombotRN.placeHolderList[207]" ""
		5 3 "CombotRN" "|Rig:Skeleton|Rig:RootMotion_Skel|Rig:Hips_Skel|Rig:Spine1_Skel|Rig:Spine2_Skel|Rig:RightClav_Skel|Rig:RightShoulder_Skel|Rig:RightUpperArm_Skel|Rig:RightLowerArm_Skel|Rig:RightHand_Skel|Rig:RightHand_Attach.rotatePivotTranslate" 
		"CombotRN.placeHolderList[208]" ""
		5 3 "CombotRN" "|Rig:Skeleton|Rig:RootMotion_Skel|Rig:Hips_Skel|Rig:Spine1_Skel|Rig:Spine2_Skel|Rig:RightClav_Skel|Rig:RightShoulder_Skel|Rig:RightUpperArm_Skel|Rig:RightLowerArm_Skel|Rig:RightHand_Skel|Rig:RightHand_Attach.rotate" 
		"CombotRN.placeHolderList[209]" ""
		5 3 "CombotRN" "|Rig:Skeleton|Rig:RootMotion_Skel|Rig:Hips_Skel|Rig:Spine1_Skel|Rig:Spine2_Skel|Rig:RightClav_Skel|Rig:RightShoulder_Skel|Rig:RightUpperArm_Skel|Rig:RightLowerArm_Skel|Rig:RightHand_Skel|Rig:RightHand_Attach.rotateOrder" 
		"CombotRN.placeHolderList[210]" ""
		5 3 "CombotRN" "|Rig:Skeleton|Rig:RootMotion_Skel|Rig:Hips_Skel|Rig:Spine1_Skel|Rig:Spine2_Skel|Rig:RightClav_Skel|Rig:RightShoulder_Skel|Rig:RightUpperArm_Skel|Rig:RightLowerArm_Skel|Rig:RightHand_Skel|Rig:RightHand_Attach.scale" 
		"CombotRN.placeHolderList[211]" ""
		5 3 "CombotRN" "|Rig:Skeleton|Rig:RootMotion_Skel|Rig:Hips_Skel|Rig:Spine1_Skel|Rig:Spine2_Skel|Rig:RightClav_Skel|Rig:RightShoulder_Skel|Rig:RightUpperArm_Skel|Rig:RightLowerArm_Skel|Rig:RightHand_Skel|Rig:RightHand_Attach.parentMatrix" 
		"CombotRN.placeHolderList[212]" ""
		5 3 "CombotRN" "Rig:skinCluster5.outputGeometry[0]" "CombotRN.placeHolderList[213]" 
		"Rig:Combot_TorsoShape.i";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode mentalrayItemsList -s -n "mentalrayItemsList";
	rename -uid "1A682B61-424F-AEB1-B485-7DAC6CB4E730";
createNode mentalrayGlobals -s -n "mentalrayGlobals";
	rename -uid "BD774E15-3C4B-244D-2455-84AED15BB9EC";
	setAttr ".rvb" 3;
	setAttr ".ivb" no;
createNode mentalrayOptions -s -n "miDefaultOptions";
	rename -uid "BE2BD849-1F42-4366-07A3-ECAD46DCF902";
	addAttr -ci true -m -sn "stringOptions" -ln "stringOptions" -at "compound" -nc 
		3;
	addAttr -ci true -sn "name" -ln "name" -dt "string" -p "stringOptions";
	addAttr -ci true -sn "value" -ln "value" -dt "string" -p "stringOptions";
	addAttr -ci true -sn "type" -ln "type" -dt "string" -p "stringOptions";
	setAttr -s 81 ".stringOptions";
	setAttr ".stringOptions[0].name" -type "string" "rast motion factor";
	setAttr ".stringOptions[0].value" -type "string" "1.0";
	setAttr ".stringOptions[0].type" -type "string" "scalar";
	setAttr ".stringOptions[1].name" -type "string" "rast transparency depth";
	setAttr ".stringOptions[1].value" -type "string" "8";
	setAttr ".stringOptions[1].type" -type "string" "integer";
	setAttr ".stringOptions[2].name" -type "string" "rast useopacity";
	setAttr ".stringOptions[2].value" -type "string" "true";
	setAttr ".stringOptions[2].type" -type "string" "boolean";
	setAttr ".stringOptions[3].name" -type "string" "importon";
	setAttr ".stringOptions[3].value" -type "string" "false";
	setAttr ".stringOptions[3].type" -type "string" "boolean";
	setAttr ".stringOptions[4].name" -type "string" "importon density";
	setAttr ".stringOptions[4].value" -type "string" "1.0";
	setAttr ".stringOptions[4].type" -type "string" "scalar";
	setAttr ".stringOptions[5].name" -type "string" "importon merge";
	setAttr ".stringOptions[5].value" -type "string" "0.0";
	setAttr ".stringOptions[5].type" -type "string" "scalar";
	setAttr ".stringOptions[6].name" -type "string" "importon trace depth";
	setAttr ".stringOptions[6].value" -type "string" "0";
	setAttr ".stringOptions[6].type" -type "string" "integer";
	setAttr ".stringOptions[7].name" -type "string" "importon traverse";
	setAttr ".stringOptions[7].value" -type "string" "true";
	setAttr ".stringOptions[7].type" -type "string" "boolean";
	setAttr ".stringOptions[8].name" -type "string" "shadowmap pixel samples";
	setAttr ".stringOptions[8].value" -type "string" "3";
	setAttr ".stringOptions[8].type" -type "string" "integer";
	setAttr ".stringOptions[9].name" -type "string" "ambient occlusion";
	setAttr ".stringOptions[9].value" -type "string" "false";
	setAttr ".stringOptions[9].type" -type "string" "boolean";
	setAttr ".stringOptions[10].name" -type "string" "ambient occlusion rays";
	setAttr ".stringOptions[10].value" -type "string" "64";
	setAttr ".stringOptions[10].type" -type "string" "integer";
	setAttr ".stringOptions[11].name" -type "string" "ambient occlusion cache";
	setAttr ".stringOptions[11].value" -type "string" "false";
	setAttr ".stringOptions[11].type" -type "string" "boolean";
	setAttr ".stringOptions[12].name" -type "string" "ambient occlusion cache density";
	setAttr ".stringOptions[12].value" -type "string" "1.0";
	setAttr ".stringOptions[12].type" -type "string" "scalar";
	setAttr ".stringOptions[13].name" -type "string" "ambient occlusion cache points";
	setAttr ".stringOptions[13].value" -type "string" "64";
	setAttr ".stringOptions[13].type" -type "string" "integer";
	setAttr ".stringOptions[14].name" -type "string" "irradiance particles";
	setAttr ".stringOptions[14].value" -type "string" "false";
	setAttr ".stringOptions[14].type" -type "string" "boolean";
	setAttr ".stringOptions[15].name" -type "string" "irradiance particles rays";
	setAttr ".stringOptions[15].value" -type "string" "256";
	setAttr ".stringOptions[15].type" -type "string" "integer";
	setAttr ".stringOptions[16].name" -type "string" "irradiance particles interpolate";
	setAttr ".stringOptions[16].value" -type "string" "1";
	setAttr ".stringOptions[16].type" -type "string" "integer";
	setAttr ".stringOptions[17].name" -type "string" "irradiance particles interppoints";
	setAttr ".stringOptions[17].value" -type "string" "64";
	setAttr ".stringOptions[17].type" -type "string" "integer";
	setAttr ".stringOptions[18].name" -type "string" "irradiance particles indirect passes";
	setAttr ".stringOptions[18].value" -type "string" "0";
	setAttr ".stringOptions[18].type" -type "string" "integer";
	setAttr ".stringOptions[19].name" -type "string" "irradiance particles scale";
	setAttr ".stringOptions[19].value" -type "string" "1.0";
	setAttr ".stringOptions[19].type" -type "string" "scalar";
	setAttr ".stringOptions[20].name" -type "string" "irradiance particles env";
	setAttr ".stringOptions[20].value" -type "string" "true";
	setAttr ".stringOptions[20].type" -type "string" "boolean";
	setAttr ".stringOptions[21].name" -type "string" "irradiance particles env rays";
	setAttr ".stringOptions[21].value" -type "string" "256";
	setAttr ".stringOptions[21].type" -type "string" "integer";
	setAttr ".stringOptions[22].name" -type "string" "irradiance particles env scale";
	setAttr ".stringOptions[22].value" -type "string" "1";
	setAttr ".stringOptions[22].type" -type "string" "integer";
	setAttr ".stringOptions[23].name" -type "string" "irradiance particles rebuild";
	setAttr ".stringOptions[23].value" -type "string" "true";
	setAttr ".stringOptions[23].type" -type "string" "boolean";
	setAttr ".stringOptions[24].name" -type "string" "irradiance particles file";
	setAttr ".stringOptions[24].value" -type "string" "";
	setAttr ".stringOptions[24].type" -type "string" "string";
	setAttr ".stringOptions[25].name" -type "string" "geom displace motion factor";
	setAttr ".stringOptions[25].value" -type "string" "1.0";
	setAttr ".stringOptions[25].type" -type "string" "scalar";
	setAttr ".stringOptions[26].name" -type "string" "contrast all buffers";
	setAttr ".stringOptions[26].value" -type "string" "false";
	setAttr ".stringOptions[26].type" -type "string" "boolean";
	setAttr ".stringOptions[27].name" -type "string" "finalgather normal tolerance";
	setAttr ".stringOptions[27].value" -type "string" "25.842";
	setAttr ".stringOptions[27].type" -type "string" "scalar";
	setAttr ".stringOptions[28].name" -type "string" "trace camera clip";
	setAttr ".stringOptions[28].value" -type "string" "false";
	setAttr ".stringOptions[28].type" -type "string" "boolean";
	setAttr ".stringOptions[29].name" -type "string" "unified sampling";
	setAttr ".stringOptions[29].value" -type "string" "true";
	setAttr ".stringOptions[29].type" -type "string" "boolean";
	setAttr ".stringOptions[30].name" -type "string" "samples quality";
	setAttr ".stringOptions[30].value" -type "string" "0.25 0.25 0.25 0.25";
	setAttr ".stringOptions[30].type" -type "string" "color";
	setAttr ".stringOptions[31].name" -type "string" "samples min";
	setAttr ".stringOptions[31].value" -type "string" "1.0";
	setAttr ".stringOptions[31].type" -type "string" "scalar";
	setAttr ".stringOptions[32].name" -type "string" "samples max";
	setAttr ".stringOptions[32].value" -type "string" "100.0";
	setAttr ".stringOptions[32].type" -type "string" "scalar";
	setAttr ".stringOptions[33].name" -type "string" "samples error cutoff";
	setAttr ".stringOptions[33].value" -type "string" "0.0 0.0 0.0 0.0";
	setAttr ".stringOptions[33].type" -type "string" "color";
	setAttr ".stringOptions[34].name" -type "string" "samples per object";
	setAttr ".stringOptions[34].value" -type "string" "false";
	setAttr ".stringOptions[34].type" -type "string" "boolean";
	setAttr ".stringOptions[35].name" -type "string" "progressive";
	setAttr ".stringOptions[35].value" -type "string" "false";
	setAttr ".stringOptions[35].type" -type "string" "boolean";
	setAttr ".stringOptions[36].name" -type "string" "progressive max time";
	setAttr ".stringOptions[36].value" -type "string" "0";
	setAttr ".stringOptions[36].type" -type "string" "integer";
	setAttr ".stringOptions[37].name" -type "string" "progressive subsampling size";
	setAttr ".stringOptions[37].value" -type "string" "4";
	setAttr ".stringOptions[37].type" -type "string" "integer";
	setAttr ".stringOptions[38].name" -type "string" "iray";
	setAttr ".stringOptions[38].value" -type "string" "false";
	setAttr ".stringOptions[38].type" -type "string" "boolean";
	setAttr ".stringOptions[39].name" -type "string" "light relative scale";
	setAttr ".stringOptions[39].value" -type "string" "0.31831";
	setAttr ".stringOptions[39].type" -type "string" "scalar";
	setAttr ".stringOptions[40].name" -type "string" "trace camera motion vectors";
	setAttr ".stringOptions[40].value" -type "string" "false";
	setAttr ".stringOptions[40].type" -type "string" "boolean";
	setAttr ".stringOptions[41].name" -type "string" "ray differentials";
	setAttr ".stringOptions[41].value" -type "string" "true";
	setAttr ".stringOptions[41].type" -type "string" "boolean";
	setAttr ".stringOptions[42].name" -type "string" "environment lighting mode";
	setAttr ".stringOptions[42].value" -type "string" "off";
	setAttr ".stringOptions[42].type" -type "string" "string";
	setAttr ".stringOptions[43].name" -type "string" "environment lighting quality";
	setAttr ".stringOptions[43].value" -type "string" "0.2";
	setAttr ".stringOptions[43].type" -type "string" "scalar";
	setAttr ".stringOptions[44].name" -type "string" "environment lighting shadow";
	setAttr ".stringOptions[44].value" -type "string" "transparent";
	setAttr ".stringOptions[44].type" -type "string" "string";
	setAttr ".stringOptions[45].name" -type "string" "environment lighting resolution";
	setAttr ".stringOptions[45].value" -type "string" "512";
	setAttr ".stringOptions[45].type" -type "string" "integer";
	setAttr ".stringOptions[46].name" -type "string" "environment lighting shader samples";
	setAttr ".stringOptions[46].value" -type "string" "2";
	setAttr ".stringOptions[46].type" -type "string" "integer";
	setAttr ".stringOptions[47].name" -type "string" "environment lighting scale";
	setAttr ".stringOptions[47].value" -type "string" "1 1 1";
	setAttr ".stringOptions[47].type" -type "string" "color";
	setAttr ".stringOptions[48].name" -type "string" "environment lighting caustic photons";
	setAttr ".stringOptions[48].value" -type "string" "0";
	setAttr ".stringOptions[48].type" -type "string" "integer";
	setAttr ".stringOptions[49].name" -type "string" "environment lighting globillum photons";
	setAttr ".stringOptions[49].value" -type "string" "0";
	setAttr ".stringOptions[49].type" -type "string" "integer";
	setAttr ".stringOptions[50].name" -type "string" "light importance sampling";
	setAttr ".stringOptions[50].value" -type "string" "all";
	setAttr ".stringOptions[50].type" -type "string" "string";
	setAttr ".stringOptions[51].name" -type "string" "light importance sampling quality";
	setAttr ".stringOptions[51].value" -type "string" "1.0";
	setAttr ".stringOptions[51].type" -type "string" "scalar";
	setAttr ".stringOptions[52].name" -type "string" "light importance sampling samples";
	setAttr ".stringOptions[52].value" -type "string" "4";
	setAttr ".stringOptions[52].type" -type "string" "integer";
	setAttr ".stringOptions[53].name" -type "string" "light importance sampling resolution";
	setAttr ".stringOptions[53].value" -type "string" "1.0";
	setAttr ".stringOptions[53].type" -type "string" "scalar";
	setAttr ".stringOptions[54].name" -type "string" "light importance sampling precomputed";
	setAttr ".stringOptions[54].value" -type "string" "false";
	setAttr ".stringOptions[54].type" -type "string" "boolean";
	setAttr ".stringOptions[55].name" -type "string" "mila quality";
	setAttr ".stringOptions[55].value" -type "string" "1.0";
	setAttr ".stringOptions[55].type" -type "string" "scalar";
	setAttr ".stringOptions[56].name" -type "string" "mila glossy quality";
	setAttr ".stringOptions[56].value" -type "string" "1.0";
	setAttr ".stringOptions[56].type" -type "string" "scalar";
	setAttr ".stringOptions[57].name" -type "string" "mila scatter quality";
	setAttr ".stringOptions[57].value" -type "string" "1.0";
	setAttr ".stringOptions[57].type" -type "string" "scalar";
	setAttr ".stringOptions[58].name" -type "string" "mila scatter scale";
	setAttr ".stringOptions[58].value" -type "string" "1.0";
	setAttr ".stringOptions[58].type" -type "string" "scalar";
	setAttr ".stringOptions[59].name" -type "string" "mila diffuse quality";
	setAttr ".stringOptions[59].value" -type "string" "1.0";
	setAttr ".stringOptions[59].type" -type "string" "scalar";
	setAttr ".stringOptions[60].name" -type "string" "mila diffuse detail";
	setAttr ".stringOptions[60].value" -type "string" "false";
	setAttr ".stringOptions[60].type" -type "string" "boolean";
	setAttr ".stringOptions[61].name" -type "string" "mila diffuse detail distance";
	setAttr ".stringOptions[61].value" -type "string" "10.0";
	setAttr ".stringOptions[61].type" -type "string" "scalar";
	setAttr ".stringOptions[62].name" -type "string" "mila use max distance inside";
	setAttr ".stringOptions[62].value" -type "string" "true";
	setAttr ".stringOptions[62].type" -type "string" "boolean";
	setAttr ".stringOptions[63].name" -type "string" "mila clamp output";
	setAttr ".stringOptions[63].value" -type "string" "false";
	setAttr ".stringOptions[63].type" -type "string" "boolean";
	setAttr ".stringOptions[64].name" -type "string" "mila clamp level";
	setAttr ".stringOptions[64].value" -type "string" "1.0";
	setAttr ".stringOptions[64].type" -type "string" "scalar";
	setAttr ".stringOptions[65].name" -type "string" "gi gpu";
	setAttr ".stringOptions[65].value" -type "string" "off";
	setAttr ".stringOptions[65].type" -type "string" "string";
	setAttr ".stringOptions[66].name" -type "string" "gi gpu rays";
	setAttr ".stringOptions[66].value" -type "string" "34";
	setAttr ".stringOptions[66].type" -type "string" "integer";
	setAttr ".stringOptions[67].name" -type "string" "gi gpu passes";
	setAttr ".stringOptions[67].value" -type "string" "4";
	setAttr ".stringOptions[67].type" -type "string" "integer";
	setAttr ".stringOptions[68].name" -type "string" "gi gpu presample density";
	setAttr ".stringOptions[68].value" -type "string" "1.0";
	setAttr ".stringOptions[68].type" -type "string" "scalar";
	setAttr ".stringOptions[69].name" -type "string" "gi gpu presample depth";
	setAttr ".stringOptions[69].value" -type "string" "2";
	setAttr ".stringOptions[69].type" -type "string" "integer";
	setAttr ".stringOptions[70].name" -type "string" "gi gpu filter";
	setAttr ".stringOptions[70].value" -type "string" "1.0";
	setAttr ".stringOptions[70].type" -type "string" "integer";
	setAttr ".stringOptions[71].name" -type "string" "gi gpu depth";
	setAttr ".stringOptions[71].value" -type "string" "3";
	setAttr ".stringOptions[71].type" -type "string" "integer";
	setAttr ".stringOptions[72].name" -type "string" "gi gpu devices";
	setAttr ".stringOptions[72].value" -type "string" "0";
	setAttr ".stringOptions[72].type" -type "string" "integer";
	setAttr ".stringOptions[73].name" -type "string" "shutter shape function";
	setAttr ".stringOptions[73].value" -type "string" "none";
	setAttr ".stringOptions[73].type" -type "string" "string";
	setAttr ".stringOptions[74].name" -type "string" "shutter full open";
	setAttr ".stringOptions[74].value" -type "string" "0.2";
	setAttr ".stringOptions[74].type" -type "string" "scalar";
	setAttr ".stringOptions[75].name" -type "string" "shutter full close";
	setAttr ".stringOptions[75].value" -type "string" "0.8";
	setAttr ".stringOptions[75].type" -type "string" "scalar";
	setAttr ".stringOptions[76].name" -type "string" "gi";
	setAttr ".stringOptions[76].value" -type "string" "off";
	setAttr ".stringOptions[76].type" -type "string" "boolean";
	setAttr ".stringOptions[77].name" -type "string" "gi rays";
	setAttr ".stringOptions[77].value" -type "string" "100";
	setAttr ".stringOptions[77].type" -type "string" "integer";
	setAttr ".stringOptions[78].name" -type "string" "gi depth";
	setAttr ".stringOptions[78].value" -type "string" "0";
	setAttr ".stringOptions[78].type" -type "string" "integer";
	setAttr ".stringOptions[79].name" -type "string" "gi freeze";
	setAttr ".stringOptions[79].value" -type "string" "off";
	setAttr ".stringOptions[79].type" -type "string" "boolean";
	setAttr ".stringOptions[80].name" -type "string" "gi filter";
	setAttr ".stringOptions[80].value" -type "string" "1.0";
	setAttr ".stringOptions[80].type" -type "string" "scalar";
createNode mentalrayFramebuffer -s -n "miDefaultFramebuffer";
	rename -uid "4207FAA2-4045-E36E-1CC4-58BB1B8C447F";
createNode lambert -n "MatGround";
	rename -uid "FE757ABC-4F42-69B9-AF45-B9AF7004E117";
createNode shadingEngine -n "lambert2SG";
	rename -uid "A9485868-804B-41E1-56F7-B4B8E54EA436";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "E442CBC6-9C4D-B9A7-AAF2-668204FFFD8F";
createNode checker -n "checker1";
	rename -uid "3136EE62-6046-3F3E-87B5-F18EA3FE9EBB";
	setAttr ".c1" -type "float3" 0.13600001 0.13600001 0.13600001 ;
	setAttr ".c2" -type "float3" 0.19400001 0.19400001 0.19400001 ;
createNode place2dTexture -n "place2dTexture1";
	rename -uid "1E86CEDD-7B46-7561-3395-67B4C5A5F8AD";
	setAttr ".re" -type "float2" 5 5 ;
	setAttr ".of" -type "float2" 0.25 0.25 ;
createNode gameFbxExporter -n "gameExporterPreset1";
	rename -uid "201AD499-FF41-DBAF-1D13-C78ABE72DB3B";
	setAttr ".pn" -type "string" "Model Default";
	setAttr ".opv" 1;
	setAttr ".ils" yes;
	setAttr ".esi" 3;
	setAttr ".ssn" -type "string" "Rig:exportSet";
	setAttr ".rac" yes;
	setAttr ".cns" -type "string" "NURBS";
	setAttr ".qim" -type "string" "resample";
	setAttr ".ba" no;
	setAttr ".bas" 1;
	setAttr ".bae" 200;
	setAttr ".bst" 1;
	setAttr ".ral" yes;
	setAttr ".dm" yes;
	setAttr ".rtp" 9.9999997473787516e-05;
	setAttr ".rrp" 0.008999999612569809;
	setAttr ".rsp" 0.0040000001899898052;
	setAttr ".rop" 0.008999999612569809;
	setAttr ".ato" yes;
	setAttr ".sd" yes;
	setAttr ".inc" yes;
	setAttr ".asf" yes;
	setAttr ".uc" -type "string" "Centimeters";
	setAttr ".gld" yes;
	setAttr ".fv" -type "string" "FBX201600";
	setAttr ".exp" -type "string" "/Users/briancollins/Unity/LZisHOT/Assets/Characters/Combot";
	setAttr ".exf" -type "string" "Combot.fbx";
createNode gameFbxExporter -n "gameExporterPreset2";
	rename -uid "F6CFCDFC-D14C-1701-6DD5-8B9794DBDDF6";
	setAttr ".pn" -type "string" "Anim Default";
	setAttr ".opv" 1;
	setAttr ".ils" yes;
	setAttr ".ilu" yes;
	setAttr ".eti" 2;
	setAttr ".esi" 3;
	setAttr ".ssn" -type "string" "Rig:exportSet";
	setAttr ".tbi" no;
	setAttr ".rac" yes;
	setAttr ".tri" yes;
	setAttr ".cns" -type "string" "NURBS";
	setAttr ".ean" yes;
	setAttr ".qim" -type "string" "resample";
	setAttr -s 5 ".ac";
	setAttr ".ac[0].acn" -type "string" "Run";
	setAttr ".ac[0].acs" 1;
	setAttr ".ac[0].ace" 24;
	setAttr ".ac[1].acn" -type "string" "Corner_Left";
	setAttr ".ac[1].acs" 49;
	setAttr ".ac[1].ace" 68;
	setAttr ".ac[2].acn" -type "string" "Corner_Right";
	setAttr ".ac[2].acs" 80;
	setAttr ".ac[2].ace" 100;
	setAttr ".ac[3].acn" -type "string" "Turn_Left";
	setAttr ".ac[3].acs" 120;
	setAttr ".ac[3].ace" 144;
	setAttr ".ac[4].acn" -type "string" "Turn_Right";
	setAttr ".ac[4].acs" 150;
	setAttr ".ac[4].ace" 174;
	setAttr ".spt" 2;
	setAttr ".bas" 1;
	setAttr ".bae" 200;
	setAttr ".bst" 1;
	setAttr ".ral" yes;
	setAttr ".dm" yes;
	setAttr ".rtp" 9.9999997473787516e-05;
	setAttr ".rrp" 0.008999999612569809;
	setAttr ".rsp" 0.0040000001899898052;
	setAttr ".rop" 0.008999999612569809;
	setAttr ".ato" yes;
	setAttr ".sd" yes;
	setAttr ".asf" yes;
	setAttr ".uc" -type "string" "Centimeters";
	setAttr ".gld" yes;
	setAttr ".fv" -type "string" "FBX201600";
	setAttr ".exp" -type "string" "/Users/briancollins/Unity/LZisHOT/Assets/Characters/Combot";
	setAttr ".exf" -type "string" "Combot@";
createNode polyPlane -n "polyPlane1";
	rename -uid "309FA469-784A-0FDA-6B56-9081FB269A9E";
	setAttr ".w" 1000;
	setAttr ".h" 1000;
	setAttr ".sw" 1;
	setAttr ".sh" 1;
	setAttr ".cuv" 2;
createNode reference -n "AssaultRifleRN";
	rename -uid "221E00D2-CF4C-0C1A-01EE-A881E824F90F";
	setAttr ".fn[0]" -type "string" "/Users/briancollins/Unity/LZisHOT/MayaSource/equipment/AssaultRifle.ma";
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
		"AssaultRifleRN"
		"AssaultRifleRN" 0
		"AssaultRifleRN" 15
		0 "|AssaultRifleRNfosterParent1|AssaultRifle_parentConstraint1" "|AssaultRifle:AssaultRifle" 
		"-s -r "
		2 "|AssaultRifle:AssaultRifle|AssaultRifle:AssaultRifleShape" "uvSet[0].uvSetName" 
		" -type \"string\" \"map1\""
		2 "|AssaultRifle:AssaultRifle|AssaultRifle:Magazine|AssaultRifle:MagazineShape" 
		"uvSet[0].uvSetName" " -type \"string\" \"map1\""
		2 "|AssaultRifle:AssaultRifle|AssaultRifle:Magazine|AssaultRifle:MagazineShape" 
		"uvst[0].uvsp[0:29]" (" -s 30 -type \"float2\" 0.090734243000000006 0.033896111 0.093898236999999996 0.044794619000000001 0.13004584999999999 0.16930966 0.13457211999999999 0.18490091 0.13004584999999999 0.16930966 0.093898236999999996 0.044794619000000001 0.10700721000000001 0.040988989000000003 0.14315484000000001 0.16550403999999999 0.14768112 0.18109527 0.10384327 0.030090480999999999 0.14315484000000001 0.16550403999999999 0.10700721000000001 0.040988989000000003 0.36097717000000001 0.15793693 0.33046952000000002 0.052849411999999998 0.32826402999999998 0.045252441999999997 0.36413223 0.16880487999999999 0.36097717000000001 0.15793693 0.33046952000000002 0.052849352000000002 0.10997313 0.051205742999999998 0.14048089 0.15629332000000001 0.10776782 0.043608873999999999 0.14363593999999999 0.16716128999999999 0.14048089 0.15629333000000001 0.10997324999999999 0.051205716999999998 0.053179204000000001 0.19457542999999999 0.095576047999999997 0.18389734999999999 0.095576047999999997 0.061901033000000001 0.053179204000000001 0.046625"
		+ "136999999997 0.010782659 0.061901033000000001 0.010782659 0.18389734999999999"
		)
		5 4 "AssaultRifleRN" "|AssaultRifle:AssaultRifle.translateX" "AssaultRifleRN.placeHolderList[1]" 
		""
		5 4 "AssaultRifleRN" "|AssaultRifle:AssaultRifle.translateY" "AssaultRifleRN.placeHolderList[2]" 
		""
		5 4 "AssaultRifleRN" "|AssaultRifle:AssaultRifle.translateZ" "AssaultRifleRN.placeHolderList[3]" 
		""
		5 4 "AssaultRifleRN" "|AssaultRifle:AssaultRifle.rotateX" "AssaultRifleRN.placeHolderList[4]" 
		""
		5 4 "AssaultRifleRN" "|AssaultRifle:AssaultRifle.rotateY" "AssaultRifleRN.placeHolderList[5]" 
		""
		5 4 "AssaultRifleRN" "|AssaultRifle:AssaultRifle.rotateZ" "AssaultRifleRN.placeHolderList[6]" 
		""
		5 3 "AssaultRifleRN" "|AssaultRifle:AssaultRifle.rotateOrder" "AssaultRifleRN.placeHolderList[7]" 
		""
		5 3 "AssaultRifleRN" "|AssaultRifle:AssaultRifle.parentInverseMatrix" 
		"AssaultRifleRN.placeHolderList[8]" ""
		5 3 "AssaultRifleRN" "|AssaultRifle:AssaultRifle.rotatePivot" "AssaultRifleRN.placeHolderList[9]" 
		""
		5 3 "AssaultRifleRN" "|AssaultRifle:AssaultRifle.rotatePivotTranslate" 
		"AssaultRifleRN.placeHolderList[10]" ""
		5 4 "AssaultRifleRN" "|AssaultRifle:AssaultRifle.drawOverride" "AssaultRifleRN.placeHolderList[11]" 
		"";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode displayLayer -n "Extras";
	rename -uid "BE8558F5-5647-C7E8-7543-2DA5101BBF96";
	setAttr ".dt" 2;
	setAttr ".do" 1;
createNode polySoftEdge -n "polySoftEdge1";
	rename -uid "8E4D525B-E645-28E4-9158-8AB79C64047D";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[134]" "e[551]" "e[874]" "e[876:877]" "e[894]" "e[896:897]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".a" 180;
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "81CDED19-5446-DEF1-2E7C-02A2518DD6E3";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -336.90474851737002 -296.42855964955874 ;
	setAttr ".tgi[0].vh" -type "double2" 322.61903479931897 308.33332108126797 ;
createNode reference -n "sharedReferenceNode";
	rename -uid "CDBA51A9-D14C-AE07-B0E5-0E8368D689F7";
	setAttr ".ed" -type "dataReferenceEdits" 
		"sharedReferenceNode";
createNode animCurveTL -n "RIghtFoot_Control_translateX";
	rename -uid "BDC24CFD-6145-DAE1-8BD8-59B85741C308";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 48 ".ktv[0:47]"  0 5.7765125268451811 3 9.9978101426166681
		 6 11.627082906598645 9 9.8126655103459672 12 6.4430332030196222 24 5.7765125268451811
		 27 9.9978101426166681 30 11.627082906598645 33 9.8126655103459672 36 6.4430332030196222
		 48 5.7765125268451811 54 7.441872718261056 55 0.58976530186611598 56 -4.9550737330375547
		 57 -12.735261313020711 58 -19.742223324038296 59 -35.22534231595224 60 -55.249562390277447
		 61 -68.625816709198972 63 -32.053336494578211 68 6.4430332030196222 78 5.7765125268451811
		 80 5.7765125268451811 81 -10.989592773834033 87 -38.369187147770731 88 -38.483099456325569
		 89 -31.334468691483167 90 -23.061976438658867 91 -15.117259931761954 92 -5.7067626183600595
		 93 -2.0596068028007402 94 -1.0841208924494516 95 0 100 6.4430332030196222 110 5.7765125268451811
		 112 5.7765125268451811 120 5.7765125268451811 123 9.9978101426166681 126 11.627082906598645
		 129 9.8126655103459672 132 6.4430332030196222 144 5.7765125268451811 150 5.7765125268451811
		 153 9.9978101426166681 156 11.627082906598645 159 9.8126655103459672 162 6.4430332030196222
		 174 5.7765125268451811;
	setAttr -s 48 ".kit[0:47]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 1 18 18 18 
		18 18 18 18 18 18 18 18 18 1 1 1 18 18 18 18 1 
		1 18 18 18 18 1;
	setAttr -s 48 ".kot[0:47]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 1 1 1 18 18 
		18 18 18 18 18 18 18 18 1 1 1 1 18 18 18 18 18 
		1 18 18 18 18 18;
	setAttr -s 48 ".kix[0:47]"  1 0.042691916227340698 1 0.048168864101171494 
		0.24258562922477722 1 0.042691916227340698 1 0.048168864101171494 0.24258562922477722 
		1 1 0.0067219268530607224 0.0062537682242691517 0.0056354450061917305 0.0037053083069622517 
		0.0023469238076359034 0.0024949715007096529 1 0.0038852905854582787 1 1 1 0.0066067678853869438 
		0.12103007733821869 1 0.0054037594236433506 0.0051385164260864258 0.0048015713691711426 
		0.0063818171620368958 0.018024316057562828 0.04042767733335495 0.033194746822118759 
		1 1 1 1 0.042691916227340698 1 0.048168864101171494 0.24258562922477722 1 1 0.042691916227340698 
		1 0.048168864101171494 0.24258562922477722 1;
	setAttr -s 48 ".kiy[0:47]"  0 0.99908822774887085 0 -0.99883913993835449 
		-0.97013002634048462 0 0.99908822774887085 0 -0.99883913993835449 -0.97013002634048462 
		0 0 -0.99997740983963013 -0.99998044967651367 -0.99998414516448975 -0.99999314546585083 
		-0.99999719858169556 -0.99999690055847168 0 0.99999243021011353 0 0 0 -0.99997824430465698 
		-0.99264878034591675 0 0.99998539686203003 0.99998682737350464 0.99998843669891357 
		0.99997961521148682 0.99983757734298706 0.99918234348297119 0.99944889545440674 0 
		0 0 0 0.99908822774887085 0 -0.99883913993835449 -0.97013002634048462 0 0 0.99908822774887085 
		0 -0.99883913993835449 -0.97013002634048462 0;
	setAttr -s 48 ".kox[0:47]"  1 0.042691916227340698 1 0.048168864101171494 
		0.24258562922477722 1 0.042691916227340698 1 0.048168864101171494 0.24258562922477722 
		1 1 0.0067219273187220097 0.0062537682242691517 0.0056354450061917305 0.003705308074131608 
		0.0023469238076359034 0.0024949715007096529 1 0.0038852905854582787 1 1 1 0.0066067674197256565 
		0.12103007733821869 1 0.0054037594236433506 0.0051385164260864258 0.0048015713691711426 
		0.0063818171620368958 0.018024316057562828 0.040427681058645248 0.033194746822118759 
		1 1 1 1 0.042691916227340698 1 0.048168864101171494 0.24258562922477722 1 1 0.042691916227340698 
		1 0.048168864101171494 0.24258562922477722 1;
	setAttr -s 48 ".koy[0:47]"  0 0.99908822774887085 0 -0.99883913993835449 
		-0.97013002634048462 0 0.99908822774887085 0 -0.99883913993835449 -0.97013002634048462 
		0 0 -0.99997740983963013 -0.99998044967651367 -0.99998414516448975 -0.99999314546585083 
		-0.99999719858169556 -0.99999690055847168 0 0.99999243021011353 0 0 0 -0.99997812509536743 
		-0.99264878034591675 0 0.99998539686203003 0.99998682737350464 0.99998843669891357 
		0.99997961521148682 0.99983757734298706 0.99918246269226074 0.99944883584976196 0 
		0 0 0 0.99908822774887085 0 -0.99883913993835449 -0.97013002634048462 0 0 0.99908822774887085 
		0 -0.99883913993835449 -0.97013002634048462 0;
createNode animCurveTL -n "RIghtFoot_Control_translateY";
	rename -uid "523BE6BF-2E47-5572-AE88-E1962C98FA1E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 47 ".ktv[0:46]"  -3 6.861890520806238 0 0 3 0 6 0 12 38.345858904228379
		 15 43.39136667473516 18 33.502171463694225 21 6.861890520806238 24 0 27 0 30 0 36 38.345858904228379
		 39 43.39136667473516 42 33.502171463694225 45 6.861890520806238 48 0 58 0 60 0 63 19.019793693612201
		 66 33.502171463694225 68 38.345858904228379 78 0 80 0 81 17.473441742930447 85 -3.330282684597802
		 87 0 92 0 95 0 100 38.345858904228379 110 0 112 0 120 0 123 0 126 0 132 38.345858904228379
		 135 43.39136667473516 138 33.502171463694225 141 6.861890520806238 144 0 150 0 153 0
		 156 0 162 38.345858904228379 165 43.39136667473516 168 33.502171463694225 171 6.861890520806238
		 174 0;
	setAttr -s 47 ".kit[1:46]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 1 18 18 18 18 
		18 18 18 1 1 1 18 18 18 18 18 18 1 1 18 18 18 
		18 18 18 1;
	setAttr -s 47 ".kot[1:46]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 1 1 1 18 18 18 
		18 18 1 1 1 1 18 18 18 18 18 18 18 1 18 18 18 
		18 18 18 18;
	setAttr -s 47 ".kix[1:46]"  1 1 1 0.0086419498547911644 1 0.0068436283618211746 
		0.00746199581772089 1 1 1 0.0086419498547911644 1 0.0068436283618211746 0.00746199581772089 
		1 1 1 0.00746199581772089 0.010779283940792084 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.0086419498547911644 
		1 0.0068436283618211746 0.00746199581772089 1 1 1 1 0.0086419498547911644 1 0.0068436283618211746 
		0.00746199581772089 1;
	setAttr -s 47 ".kiy[1:46]"  0 0 0 0.99996268749237061 0 -0.99997663497924805 
		-0.99997222423553467 0 0 0 0.99996268749237061 0 -0.99997663497924805 -0.99997222423553467 
		0 0 0 0.99997222423553467 0.99994194507598877 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.99996268749237061 
		0 -0.99997663497924805 -0.99997222423553467 0 0 0 0 0.99996268749237061 0 -0.99997663497924805 
		-0.99997222423553467 0;
	setAttr -s 47 ".kox[1:46]"  1 1 1 0.0086419498547911644 1 0.0068436283618211746 
		0.00746199581772089 1 1 1 0.0086419498547911644 1 0.0068436283618211746 0.00746199581772089 
		1 1 1 0.00746199581772089 0.010779283940792084 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.0086419498547911644 
		1 0.0068436283618211746 0.00746199581772089 1 1 1 1 0.0086419498547911644 1 0.0068436283618211746 
		0.00746199581772089 1;
	setAttr -s 47 ".koy[1:46]"  0 0 0 0.99996268749237061 0 -0.99997663497924805 
		-0.99997222423553467 0 0 0 0.99996268749237061 0 -0.99997663497924805 -0.99997222423553467 
		0 0 0 0.99997222423553467 0.99994188547134399 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.99996268749237061 
		0 -0.99997663497924805 -0.99997222423553467 0 0 0 0 0.99996268749237061 0 -0.99997663497924805 
		-0.99997222423553467 0;
createNode animCurveTL -n "RIghtFoot_Control_translateZ";
	rename -uid "01B97500-D54B-0EB9-E980-C4AE677B6C37";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 55 ".ktv[0:54]"  -3 -13.487343343935894 0 40.628287733179143
		 3 26.972398157892805 12 -63.99287562732242 15 -56.306312566519537 18 -38.563516564518494
		 21 -13.487343343935894 24 40.628287733179143 27 26.972398157892805 36 -63.99287562732242
		 39 -56.306312566519537 42 -38.563516564518494 45 -13.487343343935894 48 40.628287733179143
		 54 87.738593915773293 55 84.768395748935902 56 83.470750444935049 57 82.825890653187301
		 58 80.909177047672159 59 73.433919561030521 60 49.856877074831914 61 9.1603939429603916
		 63 -29.659793096044655 66 -38.563516564518494 68 -37.353667871098601 78 40.628287733179143
		 80 40.628287733179143 81 64.597137841009527 85 21.199754820936867 87 0.66419217357906035
		 88 -8.9609771842419654 89 -3.6374174711734635 90 6.3238592848496014 91 14.456346490243448
		 92 19.58405542773118 93 17.23902209324703 94 11.110280487868078 95 4.7162723346749971
		 100 -37.353667871098601 110 40.628287733179143 112 40.628287733179143 120 40.628287733179143
		 123 26.972398157892805 132 -63.99287562732242 135 -56.306312566519537 138 -38.563516564518494
		 141 -13.487343343935894 144 40.628287733179143 150 40.628287733179143 153 26.972398157892805
		 162 -63.99287562732242 165 -56.306312566519537 168 -38.563516564518494 171 -13.487343343935894
		 174 40.628287733179143;
	setAttr -s 55 ".kit[1:54]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 1 
		18 18 18 18 18 18 18 18 18 18 18 18 18 1 1 1 18 
		18 18 18 18 1 1 18 18 18 18 18 1;
	setAttr -s 55 ".kot[1:54]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 1 1 
		1 18 18 18 18 18 18 18 18 18 18 18 1 1 1 1 18 
		18 18 18 18 18 1 18 18 18 18 18 18;
	setAttr -s 55 ".kix[1:54]"  1 0.0047790929675102234 1 0.009830680675804615 
		0.005838434211909771 0.0031568766571581364 1 0.0047790929675102234 1 0.009830680675804615 
		0.005838434211909771 0.0031568766571581364 0.0037045588251203299 1 0.019522124901413918 
		0.042860466986894608 0.032514948397874832 0.0088724689558148384 0.0026836320757865906 
		0.0012965433998033404 0.0015719954390078783 0.0046796384267508984 1 0.022953640669584274 
		0.0037045588251203299 1 1 0.0039103170856833458 0.0041444259695708752 1 0.0054519404657185078 
		0.0046055982820689678 0.0062843426130712032 1 0.0098338061943650246 0.0066544022411108017 
		0.0051583996973931789 1 0.0037045588251203299 0.0037045588251203299 1 0.0047790929675102234 
		1 0.009830680675804615 0.005838434211909771 0.0031568766571581364 1 1 0.0047790929675102234 
		1 0.009830680675804615 0.005838434211909771 0.0031568766571581364 1;
	setAttr -s 55 ".kiy[1:54]"  0 -0.99998855590820312 0 0.99995160102844238 
		0.99998301267623901 0.99999499320983887 0 -0.99998855590820312 0 0.99995160102844238 
		0.99998301267623901 0.99999499320983887 0.99999308586120605 0 -0.99980944395065308 
		-0.9990810751914978 -0.99947124719619751 -0.99996060132980347 -0.9999963641166687 
		-0.99999916553497314 -0.99999874830245972 -0.99998897314071655 0 0.99973654747009277 
		0.99999308586120605 0 0 -0.99999231100082397 -0.99999135732650757 0 0.99998515844345093 
		0.99998933076858521 0.99998027086257935 0 -0.99995160102844238 -0.99997788667678833 
		-0.99998664855957031 0 0.99999308586120605 0.99999308586120605 0 -0.99998855590820312 
		0 0.99995160102844238 0.99998301267623901 0.99999499320983887 0 0 -0.99998855590820312 
		0 0.99995160102844238 0.99998301267623901 0.99999499320983887 0;
	setAttr -s 55 ".kox[1:54]"  1 0.0047790929675102234 1 0.009830680675804615 
		0.005838434211909771 0.0031568766571581364 1 0.0047790929675102234 1 0.009830680675804615 
		0.005838434211909771 0.0031568766571581364 0.0037045588251203299 1 0.019522124901413918 
		0.042860470712184906 0.032514948397874832 0.0088724689558148384 0.0026836320757865906 
		0.0012965433998033404 0.0015719955554232001 0.0046796388924121857 1 0.0037045588251203299 
		0.0037045588251203299 0.0037045588251203299 1 0.0039103170856833458 0.0041444259695708752 
		1 0.0054519400000572205 0.0046055982820689678 0.0062843421474099159 1 0.0098338061943650246 
		0.0066544017754495144 0.0051584001630544662 0.0037045588251203299 0.0037045588251203299 
		0.0037045588251203299 1 0.0047790929675102234 1 0.009830680675804615 0.005838434211909771 
		0.0031568766571581364 1 1 0.0047790929675102234 1 0.009830680675804615 0.005838434211909771 
		0.0031568766571581364 1;
	setAttr -s 55 ".koy[1:54]"  0 -0.99998855590820312 0 0.99995160102844238 
		0.99998301267623901 0.99999499320983887 0 -0.99998855590820312 0 0.99995160102844238 
		0.99998301267623901 0.99999499320983887 0.99999308586120605 0 -0.99980944395065308 
		-0.99908113479614258 -0.99947124719619751 -0.99996060132980347 -0.9999963641166687 
		-0.99999916553497314 -0.99999874830245972 -0.99998903274536133 0 0.99999308586120605 
		0.99999308586120605 0.99999308586120605 0 -0.99999231100082397 -0.99999135732650757 
		0 0.99998515844345093 0.99998933076858521 0.99998027086257935 0 -0.99995160102844238 
		-0.99997782707214355 -0.99998670816421509 0.99999308586120605 0.99999308586120605 
		0.99999308586120605 0 -0.99998855590820312 0 0.99995160102844238 0.99998301267623901 
		0.99999499320983887 0 0 -0.99998855590820312 0 0.99995160102844238 0.99998301267623901 
		0.99999499320983887 0;
createNode animCurveTU -n "RIghtFoot_Control_visibility";
	rename -uid "6DFC41D9-F445-C32B-8C38-308667563EC2";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  0 1 3 1 12 1 24 1 27 1 36 1 48 1 60 1 68 1
		 78 1 80 1 87 1 95 1 100 1 110 1 112 1 120 1 123 1 132 1 144 1 150 1 153 1 162 1 174 1;
	setAttr -s 24 ".kit[1:23]"  9 1 18 9 1 18 18 18 
		1 18 9 9 18 1 1 1 9 1 1 1 9 1 1;
	setAttr -s 24 ".kot[0:23]"  5 5 5 18 5 5 18 18 
		1 1 1 5 5 1 1 1 5 5 5 18 5 5 5 18;
	setAttr -s 24 ".kix[0:23]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1;
	setAttr -s 24 ".kiy[0:23]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0;
	setAttr -s 24 ".kox[8:23]"  1 1 1 0 0 1 1 1 0 0 0 1 0 0 0 1;
	setAttr -s 24 ".koy[8:23]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RIghtFoot_Control_rotateX";
	rename -uid "ACDF68D2-D14F-0B70-8434-0C9C825E2BDF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 54 ".ktv[0:53]"  -3 -1.980133209397261 0 -19.384414807448668
		 3 0 6 0 9 81.074645713756937 12 104.13174142134557 15 110.18012207604265 18 100.24624225515797
		 21 -1.980133209397261 24 -19.384414807448668 27 0 30 0 33 81.074645713756937 36 104.13174142134557
		 39 110.18012207604265 42 100.24624225515797 45 -1.980133209397261 48 -19.384414807448668
		 54 0 56 0 58 0 60 0 63 69.563061417733039 66 100.24624225515797 68 104.13174142134557
		 78 -19.384414807448668 80 -19.384414807448668 81 -25.566147089788309 85 -93.601972823978556
		 87 -13.800543754753454 89 0 92 0 95 0 100 104.13174142134557 110 -19.384414807448668
		 112 -19.384414807448668 120 -19.384414807448668 123 0 126 0 129 81.074645713756937
		 132 104.13174142134557 135 110.18012207604265 138 100.24624225515797 141 -1.980133209397261
		 144 -19.384414807448668 150 -19.384414807448668 153 0 156 0 159 81.074645713756937
		 162 104.13174142134557 165 110.18012207604265 168 100.24624225515797 171 -1.980133209397261
		 174 -19.384414807448668;
	setAttr -s 54 ".kit[1:53]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 1 
		18 18 18 18 18 18 18 18 1 1 1 18 18 18 18 18 18 
		18 1 1 18 18 18 18 18 18 18 1;
	setAttr -s 54 ".kot[1:53]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 1 1 
		1 18 18 18 18 18 18 1 1 1 1 18 18 18 18 18 18 
		18 18 1 18 18 18 18 18 18 18 18;
	setAttr -s 54 ".kix[1:53]"  1 1 1 0.13627278804779053 0.44156235456466675 
		1 0.23366846144199371 0.13589628040790558 1 1 1 0.13627278804779053 0.44156235456466675 
		1 0.23366846144199371 0.13589628040790558 1 1 1 1 1 0.14145089685916901 0.37904605269432068 
		1 1 1 0.15879230201244354 1 0.11456567049026489 1 1 1 1 1 1 1 1 1 0.13627278804779053 
		0.44156235456466675 1 0.23366846144199371 0.13589628040790558 1 1 1 1 0.13627278804779053 
		0.44156235456466675 1 0.23366846144199371 0.13589628040790558 1;
	setAttr -s 54 ".kiy[1:53]"  0 0 0 0.99067133665084839 0.89723062515258789 
		0 -0.97231638431549072 -0.9907231330871582 0 0 0 0.99067133665084839 0.89723062515258789 
		0 -0.97231638431549072 -0.9907231330871582 0 0 0 0 0 0.98994523286819458 0.92537778615951538 
		0 0 0 -0.9873119592666626 0 0.99341565370559692 0 0 0 0 0 0 0 0 0 0.99067133665084839 
		0.89723062515258789 0 -0.97231638431549072 -0.9907231330871582 0 0 0 0 0.99067133665084839 
		0.89723062515258789 0 -0.97231638431549072 -0.9907231330871582 0;
	setAttr -s 54 ".kox[1:53]"  1 1 1 0.13627278804779053 0.44156235456466675 
		1 0.23366846144199371 0.13589628040790558 1 1 1 0.13627278804779053 0.44156235456466675 
		1 0.23366846144199371 0.13589628040790558 1 1 1 1 1 0.14145089685916901 0.37904605269432068 
		1 1 1 0.15879231691360474 1 0.11456567049026489 1 1 1 1 1 1 1 1 1 0.13627278804779053 
		0.44156235456466675 1 0.23366846144199371 0.13589628040790558 1 1 1 1 0.13627278804779053 
		0.44156235456466675 1 0.23366846144199371 0.13589628040790558 1;
	setAttr -s 54 ".koy[1:53]"  0 0 0 0.99067133665084839 0.89723062515258789 
		0 -0.97231638431549072 -0.9907231330871582 0 0 0 0.99067133665084839 0.89723062515258789 
		0 -0.97231638431549072 -0.9907231330871582 0 0 0 0 0 0.98994523286819458 0.92537778615951538 
		0 0 0 -0.9873119592666626 0 0.99341565370559692 0 0 0 0 0 0 0 0 0 0.99067133665084839 
		0.89723062515258789 0 -0.97231638431549072 -0.9907231330871582 0 0 0 0 0.99067133665084839 
		0.89723062515258789 0 -0.97231638431549072 -0.9907231330871582 0;
createNode animCurveTA -n "RIghtFoot_Control_rotateY";
	rename -uid "BBF19D56-C846-8340-BD23-5696E0A9C42D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 36 ".ktv[0:35]"  0 -14.909151789854354 3 0 9 -3.061650729190839
		 12 3.9556810726417324 24 -14.909151789854354 27 0 33 -3.061650729190839 36 3.9556810726417324
		 48 -14.909151789854354 54 84.010521222280119 56 88.586504237543608 58 92.803458868953285
		 60 66.858493633889069 68 3.9556810726417324 78 -14.909151789854354 80 -14.909151789854354
		 81 -1.1797869559676517 85 -62.112933419462287 87 -96.97878594967132 89 -82.013879499282126
		 91 -54.511638153461355 92 -19.341332386495985 95 0 100 3.9556810726417324 110 -14.909151789854354
		 112 -14.909151789854354 120 -14.909151789854354 123 0 129 -3.061650729190839 132 3.9556810726417324
		 144 -14.909151789854354 150 -14.909151789854354 153 0 159 -3.061650729190839 162 3.9556810726417324
		 174 -14.909151789854354;
	setAttr -s 36 ".kit[0:35]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 1 18 18 18 18 18 18 18 18 18 1 
		1 1 18 18 18 1 1 18 18 18 1;
	setAttr -s 36 ".kot[0:35]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 1 1 1 18 18 18 18 18 18 18 1 1 
		1 1 18 18 18 18 1 18 18 18 18;
	setAttr -s 36 ".kix[0:35]"  1 1 1 1 1 1 1 1 1 0.32850250601768494 0.73563992977142334 
		1 0.25949382781982422 0.46520575881004333 1 1 1 0.14787694811820984 1 0.21938520669937134 
		0.11353713274002075 0.17255128920078278 0.70917046070098877 1 1 1 1 1 1 1 1 1 1 1 
		1 1;
	setAttr -s 36 ".kiy[0:35]"  0 0 0 0 0 0 0 0 0 0.9445030689239502 0.67737275362014771 
		0 -0.9657447338104248 -0.88520252704620361 0 0 0 -0.98900574445724487 0 0.97563827037811279 
		0.99353373050689697 0.98500055074691772 0.70503705739974976 0 0 0 0 0 0 0 0 0 0 0 
		0 0;
	setAttr -s 36 ".kox[0:35]"  1 1 1 1 1 1 1 1 1 0.32850247621536255 0.73563998937606812 
		1 0.25949379801750183 1 1 1 1 0.14787696301937103 1 0.21938519179821014 0.11353713274002075 
		0.17255128920078278 0.70917046070098877 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 36 ".koy[0:35]"  0 0 0 0 0 0 0 0 0 0.94450300931930542 0.67737275362014771 
		0 -0.9657447338104248 0 0 0 0 -0.98900586366653442 0 0.97563827037811279 0.9935336709022522 
		0.98500055074691772 0.70503705739974976 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RIghtFoot_Control_rotateZ";
	rename -uid "A42911F0-564A-8805-7F17-74AF8CEE4848";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  0 3.1519163916518389 3 0 9 -18.782521368413722
		 12 -15.322840999752726 24 3.1519163916518389 27 0 33 -18.782521368413722 36 -15.322840999752726
		 48 3.1519163916518389 54 0 56 0 58 0 60 0 68 -15.322840999752726 78 3.1519163916518389
		 80 3.1519163916518389 81 9.7839724705917348 85 89.841386347588497 87 12.793561870886052
		 89 0 92 0 95 0 100 -15.322840999752726 110 3.1519163916518389 112 3.1519163916518389
		 120 3.1519163916518389 123 0 129 -18.782521368413722 132 -15.322840999752726 144 3.1519163916518389
		 150 3.1519163916518389 153 0 159 -18.782521368413722 162 -15.322840999752726 174 3.1519163916518389;
	setAttr -s 35 ".kit[0:34]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 1 18 18 18 18 18 18 18 18 1 1 
		1 18 18 18 1 1 18 18 18 1;
	setAttr -s 35 ".kot[0:34]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 1 1 1 18 18 18 18 18 18 1 1 1 
		1 18 18 18 18 1 18 18 18 18;
	setAttr -s 35 ".kix[0:34]"  1 0.69976526498794556 1 0.8527449369430542 
		1 0.69976526498794556 1 0.8527449369430542 1 1 1 1 1 1 1 1 0.13640707731246948 1 
		0.12345067411661148 1 1 1 1 1 1 1 0.69976526498794556 1 0.8527449369430542 1 1 0.69976526498794556 
		1 0.8527449369430542 1;
	setAttr -s 35 ".kiy[0:34]"  0 -0.71437293291091919 0 0.52232766151428223 
		0 -0.71437293291091919 0 0.52232766151428223 0 0 0 0 0 0 0 0 0.99065291881561279 
		0 -0.99235075712203979 0 0 0 0 0 0 0 -0.71437293291091919 0 0.52232766151428223 0 
		0 -0.71437293291091919 0 0.52232766151428223 0;
	setAttr -s 35 ".kox[0:34]"  1 0.69976526498794556 1 0.8527449369430542 
		1 0.69976526498794556 1 0.8527449369430542 1 1 1 1 1 1 1 1 0.13640707731246948 1 
		0.12345067411661148 1 1 1 1 1 1 1 0.69976526498794556 1 0.8527449369430542 1 1 0.69976526498794556 
		1 0.8527449369430542 1;
	setAttr -s 35 ".koy[0:34]"  0 -0.71437293291091919 0 0.52232766151428223 
		0 -0.71437293291091919 0 0.52232766151428223 0 0 0 0 0 0 0 0 0.99065291881561279 
		0 -0.99235075712203979 0 0 0 0 0 0 0 -0.71437293291091919 0 0.52232766151428223 0 
		0 -0.71437293291091919 0 0.52232766151428223 0;
createNode animCurveTU -n "RIghtFoot_Control_scaleX";
	rename -uid "F30855CA-AC47-9EFE-9FD3-68A4654B0671";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  0 1 3 1 12 1 24 1 27 1 36 1 48 1 60 1 68 1
		 78 1 80 1 87 1 95 1 100 1 110 1 112 1 120 1 123 1 132 1 144 1 150 1 153 1 162 1 174 1;
	setAttr -s 24 ".kit[0:23]"  1 18 18 18 18 18 18 18 
		18 1 18 18 18 18 1 1 1 18 18 1 1 18 18 1;
	setAttr -s 24 ".kot[0:23]"  1 18 18 18 18 18 18 18 
		1 1 1 18 18 1 1 1 1 18 18 18 1 18 18 18;
	setAttr -s 24 ".kix[0:23]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1;
	setAttr -s 24 ".kiy[0:23]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0;
	setAttr -s 24 ".kox[0:23]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1;
	setAttr -s 24 ".koy[0:23]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0;
createNode animCurveTU -n "RIghtFoot_Control_scaleY";
	rename -uid "A820CC0C-0A49-2502-39C1-CFB7B9C17ACD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  0 1 3 1 12 1 24 1 27 1 36 1 48 1 60 1 68 1
		 78 1 80 1 87 1 95 1 100 1 110 1 112 1 120 1 123 1 132 1 144 1 150 1 153 1 162 1 174 1;
	setAttr -s 24 ".kit[0:23]"  1 18 18 18 18 18 18 18 
		18 1 18 18 18 18 1 1 1 18 18 1 1 18 18 1;
	setAttr -s 24 ".kot[0:23]"  1 18 18 18 18 18 18 18 
		1 1 1 18 18 1 1 1 1 18 18 18 1 18 18 18;
	setAttr -s 24 ".kix[0:23]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1;
	setAttr -s 24 ".kiy[0:23]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0;
	setAttr -s 24 ".kox[0:23]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1;
	setAttr -s 24 ".koy[0:23]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0;
createNode animCurveTU -n "RIghtFoot_Control_scaleZ";
	rename -uid "5803F800-5A4F-8AAB-906B-78AF0B0578EE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  0 1 3 1 12 1 24 1 27 1 36 1 48 1 60 1 68 1
		 78 1 80 1 87 1 95 1 100 1 110 1 112 1 120 1 123 1 132 1 144 1 150 1 153 1 162 1 174 1;
	setAttr -s 24 ".kit[0:23]"  1 18 18 18 18 18 18 18 
		18 1 18 18 18 18 1 1 1 18 18 1 1 18 18 1;
	setAttr -s 24 ".kot[0:23]"  1 18 18 18 18 18 18 18 
		1 1 1 18 18 1 1 1 1 18 18 18 1 18 18 18;
	setAttr -s 24 ".kix[0:23]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1;
	setAttr -s 24 ".kiy[0:23]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0;
	setAttr -s 24 ".kox[0:23]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1;
	setAttr -s 24 ".koy[0:23]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0;
createNode animCurveTA -n "RightToes_Control_rotateX";
	rename -uid "BD6E6E19-184E-65C8-7F06-BE9093B86AF5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 45 ".ktv[0:44]"  0 0 3 0 6 0 9 -47.82911617774139 12 21.130642356514787
		 15 0 18 0 21 0 24 0 27 0 30 0 33 -47.82911617774139 36 21.130642356514787 39 0 42 0
		 45 0 48 0 58 0 60 -20 63 0 66 0 68 21.130642356514787 78 0 80 0 100 21.130642356514787
		 110 0 112 0 120 0 123 0 126 0 129 -47.82911617774139 132 21.130642356514787 135 0
		 138 0 141 0 144 0 150 0 153 0 156 0 159 -47.82911617774139 162 21.130642356514787
		 165 0 168 0 171 0 174 0;
	setAttr -s 45 ".kit[22:44]"  1 18 18 1 1 18 18 18 
		18 18 18 18 18 1 18 18 18 18 18 18 18 18 1;
	setAttr -s 45 ".kot[21:44]"  1 1 1 1 1 1 1 18 
		18 18 18 18 18 18 18 1 18 18 18 18 18 18 18 18;
	setAttr -s 45 ".kix[22:44]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1;
	setAttr -s 45 ".kiy[22:44]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0;
	setAttr -s 45 ".kox[21:44]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1;
	setAttr -s 45 ".koy[21:44]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0;
createNode animCurveTA -n "RightToes_Control_rotateY";
	rename -uid "D418A854-3346-4D88-F6FF-9DA8063B85DD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 44 ".ktv[0:43]"  0 0 3 0 6 0 9 0 12 0 15 0 18 0 21 0 24 0
		 27 0 30 0 33 0 36 0 39 0 42 0 45 0 48 0 60 0 63 0 66 0 68 0 78 0 80 0 100 0 110 0
		 112 0 120 0 123 0 126 0 129 0 132 0 135 0 138 0 141 0 144 0 150 0 153 0 156 0 159 0
		 162 0 165 0 168 0 171 0 174 0;
	setAttr -s 44 ".kit[21:43]"  1 18 18 1 1 18 18 18 
		18 18 18 18 18 1 18 18 18 18 18 18 18 18 1;
	setAttr -s 44 ".kot[20:43]"  1 1 1 1 1 1 1 18 
		18 18 18 18 18 18 18 1 18 18 18 18 18 18 18 18;
	setAttr -s 44 ".kix[21:43]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1;
	setAttr -s 44 ".kiy[21:43]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0;
	setAttr -s 44 ".kox[20:43]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1;
	setAttr -s 44 ".koy[20:43]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0;
createNode animCurveTA -n "RightToes_Control_rotateZ";
	rename -uid "6669C555-9142-E456-CA24-12BBB889BB32";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 44 ".ktv[0:43]"  0 0 3 0 6 0 9 0 12 0 15 0 18 0 21 0 24 0
		 27 0 30 0 33 0 36 0 39 0 42 0 45 0 48 0 60 0 63 0 66 0 68 0 78 0 80 0 100 0 110 0
		 112 0 120 0 123 0 126 0 129 0 132 0 135 0 138 0 141 0 144 0 150 0 153 0 156 0 159 0
		 162 0 165 0 168 0 171 0 174 0;
	setAttr -s 44 ".kit[21:43]"  1 18 18 1 1 18 18 18 
		18 18 18 18 18 1 18 18 18 18 18 18 18 18 1;
	setAttr -s 44 ".kot[20:43]"  1 1 1 1 1 1 1 18 
		18 18 18 18 18 18 18 1 18 18 18 18 18 18 18 18;
	setAttr -s 44 ".kix[21:43]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1;
	setAttr -s 44 ".kiy[21:43]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0;
	setAttr -s 44 ".kox[20:43]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1;
	setAttr -s 44 ".koy[20:43]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0;
createNode animCurveTU -n "RightToes_Control_visibility";
	rename -uid "1CB19A3A-4440-E8D5-1F27-E5A2EE5EAA5B";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 44 ".ktv[0:43]"  0 1 3 1 6 1 9 1 12 1 15 1 18 1 21 1 24 1
		 27 1 30 1 33 1 36 1 39 1 42 1 45 1 48 1 60 1 63 1 66 1 68 1 78 1 80 1 100 1 110 1
		 112 1 120 1 123 1 126 1 129 1 132 1 135 1 138 1 141 1 144 1 150 1 153 1 156 1 159 1
		 162 1 165 1 168 1 171 1 174 1;
	setAttr -s 44 ".kit[8:43]"  18 9 9 9 9 9 9 9 
		18 18 18 18 18 1 18 18 1 1 9 9 9 9 9 9 9 
		9 1 9 9 9 9 9 9 9 9 1;
	setAttr -s 44 ".kot[0:43]"  5 5 5 5 5 5 5 5 
		18 5 5 5 5 5 5 5 18 18 18 18 1 1 1 1 1 
		1 5 5 5 5 5 5 5 5 18 5 5 5 5 5 5 5 
		5 18;
	setAttr -s 44 ".kix[21:43]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1;
	setAttr -s 44 ".kiy[21:43]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0;
	setAttr -s 44 ".kox[20:43]"  1 1 1 1 1 1 0 0 0 0 0 0 0 0 1 0 0 0 0 0 
		0 0 0 1;
	setAttr -s 44 ".koy[20:43]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0;
createNode animCurveTL -n "RightToes_Control_translateX";
	rename -uid "6F706079-F443-A062-AD85-E4AC0EFC6322";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 44 ".ktv[0:43]"  0 0 3 0 6 0 9 0 12 0 15 0 18 0 21 0 24 0
		 27 0 30 0 33 0 36 0 39 0 42 0 45 0 48 0 60 0 63 0 66 0 68 0 78 0 80 0 100 0 110 0
		 112 0 120 0 123 0 126 0 129 0 132 0 135 0 138 0 141 0 144 0 150 0 153 0 156 0 159 0
		 162 0 165 0 168 0 171 0 174 0;
	setAttr -s 44 ".kit[21:43]"  1 18 18 1 1 18 18 18 
		18 18 18 18 18 1 18 18 18 18 18 18 18 18 1;
	setAttr -s 44 ".kot[20:43]"  1 1 1 1 1 1 1 18 
		18 18 18 18 18 18 18 1 18 18 18 18 18 18 18 18;
	setAttr -s 44 ".kix[21:43]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1;
	setAttr -s 44 ".kiy[21:43]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0;
	setAttr -s 44 ".kox[20:43]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1;
	setAttr -s 44 ".koy[20:43]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0;
createNode animCurveTL -n "RightToes_Control_translateY";
	rename -uid "160E6B76-9546-4C42-78C4-D481804739C4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 44 ".ktv[0:43]"  0 0 3 0 6 0 9 0 12 0 15 0 18 0 21 0 24 0
		 27 0 30 0 33 0 36 0 39 0 42 0 45 0 48 0 60 0 63 0 66 0 68 0 78 0 80 0 100 0 110 0
		 112 0 120 0 123 0 126 0 129 0 132 0 135 0 138 0 141 0 144 0 150 0 153 0 156 0 159 0
		 162 0 165 0 168 0 171 0 174 0;
	setAttr -s 44 ".kit[21:43]"  1 18 18 1 1 18 18 18 
		18 18 18 18 18 1 18 18 18 18 18 18 18 18 1;
	setAttr -s 44 ".kot[20:43]"  1 1 1 1 1 1 1 18 
		18 18 18 18 18 18 18 1 18 18 18 18 18 18 18 18;
	setAttr -s 44 ".kix[21:43]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1;
	setAttr -s 44 ".kiy[21:43]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0;
	setAttr -s 44 ".kox[20:43]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1;
	setAttr -s 44 ".koy[20:43]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0;
createNode animCurveTL -n "RightToes_Control_translateZ";
	rename -uid "E8101176-8540-C387-A723-0597EA44B2CB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 44 ".ktv[0:43]"  0 0 3 0 6 0 9 0 12 0 15 0 18 0 21 0 24 0
		 27 0 30 0 33 0 36 0 39 0 42 0 45 0 48 0 60 0 63 0 66 0 68 0 78 0 80 0 100 0 110 0
		 112 0 120 0 123 0 126 0 129 0 132 0 135 0 138 0 141 0 144 0 150 0 153 0 156 0 159 0
		 162 0 165 0 168 0 171 0 174 0;
	setAttr -s 44 ".kit[21:43]"  1 18 18 1 1 18 18 18 
		18 18 18 18 18 1 18 18 18 18 18 18 18 18 1;
	setAttr -s 44 ".kot[20:43]"  1 1 1 1 1 1 1 18 
		18 18 18 18 18 18 18 1 18 18 18 18 18 18 18 18;
	setAttr -s 44 ".kix[21:43]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1;
	setAttr -s 44 ".kiy[21:43]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0;
	setAttr -s 44 ".kox[20:43]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1;
	setAttr -s 44 ".koy[20:43]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0;
createNode animCurveTU -n "RightToes_Control_scaleX";
	rename -uid "B08EEBB6-8340-D221-70A9-8E8D50539F75";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 44 ".ktv[0:43]"  0 1 3 1 6 1 9 1 12 1 15 1 18 1 21 1 24 1
		 27 1 30 1 33 1 36 1 39 1 42 1 45 1 48 1 60 1 63 1 66 1 68 1 78 1 80 1 100 1 110 1
		 112 1 120 1 123 1 126 1 129 1 132 1 135 1 138 1 141 1 144 1 150 1 153 1 156 1 159 1
		 162 1 165 1 168 1 171 1 174 1;
	setAttr -s 44 ".kit[21:43]"  1 18 18 1 1 18 18 18 
		18 18 18 18 18 1 18 18 18 18 18 18 18 18 1;
	setAttr -s 44 ".kot[20:43]"  1 1 1 1 1 1 1 18 
		18 18 18 18 18 18 18 1 18 18 18 18 18 18 18 18;
	setAttr -s 44 ".kix[21:43]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1;
	setAttr -s 44 ".kiy[21:43]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0;
	setAttr -s 44 ".kox[20:43]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1;
	setAttr -s 44 ".koy[20:43]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0;
createNode animCurveTU -n "RightToes_Control_scaleY";
	rename -uid "30B6423E-B745-90C0-FAD4-4C9273689F59";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 44 ".ktv[0:43]"  0 1 3 1 6 1 9 1 12 1 15 1 18 1 21 1 24 1
		 27 1 30 1 33 1 36 1 39 1 42 1 45 1 48 1 60 1 63 1 66 1 68 1 78 1 80 1 100 1 110 1
		 112 1 120 1 123 1 126 1 129 1 132 1 135 1 138 1 141 1 144 1 150 1 153 1 156 1 159 1
		 162 1 165 1 168 1 171 1 174 1;
	setAttr -s 44 ".kit[21:43]"  1 18 18 1 1 18 18 18 
		18 18 18 18 18 1 18 18 18 18 18 18 18 18 1;
	setAttr -s 44 ".kot[20:43]"  1 1 1 1 1 1 1 18 
		18 18 18 18 18 18 18 1 18 18 18 18 18 18 18 18;
	setAttr -s 44 ".kix[21:43]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1;
	setAttr -s 44 ".kiy[21:43]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0;
	setAttr -s 44 ".kox[20:43]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1;
	setAttr -s 44 ".koy[20:43]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0;
createNode animCurveTU -n "RightToes_Control_scaleZ";
	rename -uid "DA6F5222-D541-5FC7-DD2C-859CE20AB4A2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 44 ".ktv[0:43]"  0 1 3 1 6 1 9 1 12 1 15 1 18 1 21 1 24 1
		 27 1 30 1 33 1 36 1 39 1 42 1 45 1 48 1 60 1 63 1 66 1 68 1 78 1 80 1 100 1 110 1
		 112 1 120 1 123 1 126 1 129 1 132 1 135 1 138 1 141 1 144 1 150 1 153 1 156 1 159 1
		 162 1 165 1 168 1 171 1 174 1;
	setAttr -s 44 ".kit[21:43]"  1 18 18 1 1 18 18 18 
		18 18 18 18 18 1 18 18 18 18 18 18 18 18 1;
	setAttr -s 44 ".kot[20:43]"  1 1 1 1 1 1 1 18 
		18 18 18 18 18 18 18 1 18 18 18 18 18 18 18 18;
	setAttr -s 44 ".kix[21:43]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1;
	setAttr -s 44 ".kiy[21:43]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0;
	setAttr -s 44 ".kox[20:43]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1;
	setAttr -s 44 ".koy[20:43]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0;
createNode animCurveTU -n "LeftFoot_Control_visibility";
	rename -uid "87EA23D2-FE4D-B7C1-DC58-D4BD381C43E8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 45 ".ktv[0:44]"  -15 1 -12 1 -9 1 -6 1 -3 1 0 1 3 1 6 1 9 1
		 18 1 21 1 24 1 27 1 30 1 33 1 42 1 45 1 48 1 58 1 61 1 68 1 78 1 80 1 86 1 88 1 90 1
		 92 1 95 1 100 1 110 1 112 1 120 1 123 1 126 1 129 1 138 1 141 1 144 1 150 1 153 1
		 156 1 159 1 168 1 171 1 174 1;
	setAttr -s 45 ".kit[5:44]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 1 18 9 9 9 9 9 18 1 
		1 1 18 18 18 18 18 1 1 18 18 18 18 18 1;
	setAttr -s 45 ".kot[5:44]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 1 1 1 5 5 5 5 5 1 1 
		1 1 18 18 18 18 18 18 1 18 18 18 18 18 18;
	setAttr -s 45 ".kix[5:44]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 45 ".kiy[5:44]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 45 ".kox[5:44]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 0 
		0 0 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 45 ".koy[5:44]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "LeftFoot_Control_translateX";
	rename -uid "A12F5DFC-3245-1002-A0C3-D2AE7FE3930C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 46 ".ktv[0:45]"  -12 0 -9 0 0 -7.5539009966437121 12 -3.7769504983218312
		 15 -10.219983701341476 18 -10.236441001987767 21 -9.1173445580405552 24 -7.5539009966437121
		 36 -3.7769504983218312 39 -10.219983701341476 42 -10.236441001987767 45 -9.1173445580405552
		 48 -7.5539009966437121 56 -14.325735709544126 57 -21.971782666436024 58 -31.996932201574595
		 61 -36.582624523015035 68 -3.7769504983218312 78 -7.5539009966437121 80 -7.5539009966437121
		 85 -33.246677010503149 86 -32.988247857021143 87 -33.005292777544639 88 -33.246810188562804
		 89 -17.34255657662667 90 5.6433565546400954 91 25.954195259288735 92 33.580309331852284
		 93 25.290787622418772 94 25.737325880333579 95 18.556929275919682 100 -3.7769504983218312
		 110 -7.5539009966437121 112 -7.5539009966437121 120 -7.5539009966437121 132 -3.7769504983218312
		 135 -10.219983701341476 138 -10.236441001987767 141 -9.1173445580405552 144 -7.5539009966437121
		 150 -7.5539009966437121 162 -3.7769504983218312 165 -10.219983701341476 168 -10.236441001987767
		 171 -9.1173445580405552 174 -7.5539009966437121;
	setAttr -s 46 ".kit[2:45]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 1 18 18 18 18 18 18 18 18 
		18 18 18 18 18 1 1 1 18 18 18 18 1 1 18 18 18 
		18 1;
	setAttr -s 46 ".kot[2:45]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 1 1 1 18 18 18 18 18 18 18 
		18 18 18 18 1 1 1 1 18 18 18 18 18 1 18 18 18 
		18 18;
	setAttr -s 46 ".kix[2:45]"  0.027409961447119713 1 0.93007946014404297 
		1 0.09279315173625946 0.11623923480510712 1 0.93007946014404297 1 0.09279315173625946 
		1 0.026000574231147766 0.0047157285735011101 0.011406317353248596 1 1 1 1 1 1 0.63168555498123169 
		1 0.002142779529094696 0.0019247018499299884 0.0029828909318894148 1 1 1 0.0084701646119356155 
		0.036747947335243225 1 1 0.027409961447119713 1 0.93007946014404297 1 0.09279315173625946 
		0.11623923480510712 0.027409961447119713 1 0.93007946014404297 1 0.09279315173625946 
		0.11623923480510712;
	setAttr -s 46 ".kiy[2:45]"  0.99962431192398071 0 -0.36735832691192627 
		0 0.99568533897399902 0.99322128295898438 0 -0.36735832691192627 0 0.99568533897399902 
		0 -0.99966192245483398 -0.999988853931427 -0.99993491172790527 0 0 0 0 0 0 -0.77522468566894531 
		0 0.99999767541885376 0.99999815225601196 0.99999558925628662 0 0 0 -0.99996411800384521 
		-0.9993245005607605 0 0 0.99962431192398071 0 -0.36735832691192627 0 0.99568533897399902 
		0.99322128295898438 0.99962431192398071 0 -0.36735832691192627 0 0.99568533897399902 
		0.99322128295898438;
	setAttr -s 46 ".kox[2:45]"  0.027409961447119713 1 0.93007946014404297 
		1 0.09279315173625946 0.11623923480510712 1 0.93007946014404297 1 0.09279315173625946 
		1 0.026000576093792915 0.0047157285735011101 0.011406317353248596 1 1 1 1 1 1 0.63168555498123169 
		1 0.0021427797619253397 0.0019247018499299884 0.0029828906990587711 1 1 1 0.0084701655432581902 
		1 1 1 0.027409961447119713 1 0.93007946014404297 1 0.09279315173625946 1 0.027409961447119713 
		1 0.93007946014404297 1 0.09279315173625946 1;
	setAttr -s 46 ".koy[2:45]"  0.99962431192398071 0 -0.36735832691192627 
		0 0.99568533897399902 0.99322128295898438 0 -0.36735832691192627 0 0.99568533897399902 
		0 -0.99966192245483398 -0.999988853931427 -0.99993491172790527 0 0 0 0 0 0 -0.77522468566894531 
		0 0.99999767541885376 0.99999815225601196 0.99999547004699707 0 0 0 -0.99996411800384521 
		0 0 0 0.99962431192398071 0 -0.36735832691192627 0 0.99568533897399902 0 0.99962431192398071 
		0 -0.36735832691192627 0 0.99568533897399902 0;
createNode animCurveTL -n "LeftFoot_Control_translateY";
	rename -uid "74652C43-794E-4079-C6F7-B2B173B34543";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 51 ".ktv[0:50]"  -15 6.861890520806238 -12 0 -9 0 -6 0 0 38.345858904228379
		 3 43.39136667473516 6 33.502171463694225 9 6.861890520806238 12 0 15 0 18 0 24 38.345858904228379
		 27 43.39136667473516 30 33.502171463694225 33 6.861890520806238 36 0 39 0 42 0 48 38.345858904228379
		 58 0 61 0 68 0 78 38.345858904228379 80 38.345858904228379 85 0 86 0 88 0 90 0 92 0
		 94 0 95 9.9780221708101351 96 19.956129984120736 100 0 110 38.345858904228379 112 38.345858904228379
		 120 38.345858904228379 123 43.39136667473516 126 33.502171463694225 129 6.861890520806238
		 132 0 135 0 138 0 144 38.345858904228379 150 38.345858904228379 153 43.39136667473516
		 156 33.502171463694225 159 6.861890520806238 162 0 165 0 168 0 174 38.345858904228379;
	setAttr -s 51 ".kit[4:50]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 1 18 18 18 18 18 18 
		18 18 18 18 1 1 1 18 18 18 18 18 18 1 1 18 18 
		18 18 18 18 1;
	setAttr -s 51 ".kot[4:50]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 1 1 1 18 18 18 18 18 
		18 18 18 1 1 1 1 18 18 18 18 18 18 18 1 18 18 
		18 18 18 18 18;
	setAttr -s 51 ".kix[4:50]"  1 1 0.0068436283618211746 0.00746199581772089 
		1 1 1 0.0086419498547911644 1 0.0068436283618211746 0.00746199581772089 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 0.0041757859289646149 1 1 1 1 1 1 0.0068436283618211746 0.00746199581772089 
		1 1 1 0.0086419498547911644 1 1 0.0068436283618211746 0.00746199581772089 1 1 1 0.0086419498547911644;
	setAttr -s 51 ".kiy[4:50]"  0 0 -0.99997663497924805 -0.99997222423553467 
		0 0 0 0.99996268749237061 0 -0.99997663497924805 -0.99997222423553467 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0.99999129772186279 0 0 0 0 0 0 -0.99997663497924805 -0.99997222423553467 
		0 0 0 0.99996268749237061 0 0 -0.99997663497924805 -0.99997222423553467 0 0 0 0.99996268749237061;
	setAttr -s 51 ".kox[4:50]"  1 1 0.0068436283618211746 0.00746199581772089 
		1 1 1 0.0086419498547911644 1 0.0068436283618211746 0.00746199581772089 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 0.0041757863946259022 1 1 1 1 1 1 0.0068436283618211746 0.00746199581772089 
		1 1 1 1 1 1 0.0068436283618211746 0.00746199581772089 1 1 1 1;
	setAttr -s 51 ".koy[4:50]"  0 0 -0.99997663497924805 -0.99997222423553467 
		0 0 0 0.99996268749237061 0 -0.99997663497924805 -0.99997222423553467 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0.99999129772186279 0 0 0 0 0 0 -0.99997663497924805 -0.99997222423553467 
		0 0 0 0 0 0 -0.99997663497924805 -0.99997222423553467 0 0 0 0;
createNode animCurveTL -n "LeftFoot_Control_translateZ";
	rename -uid "E9C1D61D-6145-C4D0-BBC5-C68894D96685";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 51 ".ktv[0:50]"  -15 -13.487343343935894 -12 24.000779542380066
		 -9 10.251770922114051 0 -63.99287562732242 3 -56.306312566519537 6 -38.563516564518494
		 9 -13.487343343935894 12 37.350040958522904 15 27.766257878054695 24 -63.99287562732242
		 27 -56.306312566519537 30 -38.563516564518494 33 -13.487343343935894 36 37.350040958522904
		 39 27.766257878054695 48 -63.99287562732242 56 17.368602132507334 57 5.3020980755492495
		 58 -0.31844948116039973 61 -13.832286581346409 68 37.350040958522911 78 -63.99287562732242
		 80 -63.99287562732242 85 94.005209124366957 86 82.835675460653789 87 70.07833883539503
		 88 57.722166108210118 89 56.73262871155336 90 49.366578496258803 91 28.229395299993229
		 92 -2.1195966530988359 93 -32.332225709874869 94 -39.001761229906691 95 -33.739889557099161
		 100 37.350040958522911 110 -63.99287562732242 112 -63.99287562732242 120 -63.99287562732242
		 123 -56.306312566519537 126 -38.563516564518494 129 -13.487343343935894 132 37.350040958522904
		 135 27.766257878054695 144 -63.99287562732242 150 -63.99287562732242 153 -56.306312566519537
		 156 -38.563516564518494 159 -13.487343343935894 162 37.350040958522904 165 27.766257878054695
		 174 -63.99287562732242;
	setAttr -s 51 ".kit[3:50]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 1 18 18 18 18 18 18 
		18 18 18 18 18 18 18 1 1 1 18 18 18 18 18 1 1 
		18 18 18 18 18 1;
	setAttr -s 51 ".kot[3:50]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 1 1 1 18 18 18 18 18 
		18 18 18 18 18 18 1 1 1 1 18 18 18 18 18 18 1 
		18 18 18 18 18 18;
	setAttr -s 51 ".kix[3:50]"  1 0.009830680675804615 0.005838434211909771 
		0.0032932015601545572 1 0.0049336841329932213 1 0.009830680675804615 0.005838434211909771 
		0.0032932015601545572 1 0.0049336841329932213 1 1 0.0047115013003349304 0.0087099960073828697 
		1 1 1 1 1 0.0034828102216124535 0.0033182550687342882 0.014034303836524487 0.014034303836524487 
		0.0029236380942165852 0.0016185538843274117 0.0013760064030066133 0.0022594465408474207 
		1 0.003274296410381794 1 1 1 1 0.009830680675804615 0.005838434211909771 0.0032932015601545572 
		1 0.0049336841329932213 1 1 0.009830680675804615 0.005838434211909771 0.0032932015601545572 
		1 0.0049336841329932213 1;
	setAttr -s 51 ".kiy[3:50]"  0 0.99995160102844238 0.99998301267623901 
		0.99999457597732544 0 -0.9999879002571106 0 0.99995160102844238 0.99998301267623901 
		0.99999457597732544 0 -0.9999879002571106 0 0 -0.99998891353607178 -0.99996203184127808 
		0 0 0 0 0 -0.99999392032623291 -0.99999445676803589 -0.99990153312683105 -0.99990153312683105 
		-0.99999570846557617 -0.99999874830245972 -0.99999904632568359 -0.99999743700027466 
		0 0.99999469518661499 0 0 0 0 0.99995160102844238 0.99998301267623901 0.99999457597732544 
		0 -0.9999879002571106 0 0 0.99995160102844238 0.99998301267623901 0.99999457597732544 
		0 -0.9999879002571106 0;
	setAttr -s 51 ".kox[3:50]"  1 0.009830680675804615 0.005838434211909771 
		0.0032932015601545572 1 0.0049336841329932213 1 0.009830680675804615 0.005838434211909771 
		0.0032932015601545572 1 0.0049336841329932213 1 1 0.0047115013003349304 0.0087099969387054443 
		1 1 1 1 1 0.0034828102216124535 0.0033182550687342882 0.014034303836524487 0.014034303836524487 
		0.0029236380942165852 0.0016185537679120898 0.0013760064030066133 0.0022594465408474207 
		1 0.003274296410381794 1 1 1 1 0.009830680675804615 0.005838434211909771 0.0032932015601545572 
		1 0.0049336841329932213 1 1 0.009830680675804615 0.005838434211909771 0.0032932015601545572 
		1 0.0049336841329932213 1;
	setAttr -s 51 ".koy[3:50]"  0 0.99995160102844238 0.99998301267623901 
		0.99999457597732544 0 -0.99998784065246582 0 0.99995160102844238 0.99998301267623901 
		0.99999457597732544 0 -0.99998784065246582 0 0 -0.99998891353607178 -0.99996203184127808 
		0 0 0 0 0 -0.99999392032623291 -0.99999445676803589 -0.99990153312683105 -0.99990153312683105 
		-0.99999570846557617 -0.99999868869781494 -0.99999904632568359 -0.99999743700027466 
		0 0.99999463558197021 0 0 0 0 0.99995160102844238 0.99998301267623901 0.99999457597732544 
		0 -0.99998784065246582 0 0 0.99995160102844238 0.99998301267623901 0.99999457597732544 
		0 -0.99998784065246582 0;
createNode animCurveTA -n "LeftFoot_Control_rotateX";
	rename -uid "1E00CF62-034D-4A6A-0A8E-6EBE7BE6243E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 58 ".ktv[0:57]"  -15 -1.980133209397261 -12 -22.184197690979271
		 -9 0 -6 0 -3 80.568155274537034 0 104.20525712180959 3 110.18012207604265 6 100.24624225515797
		 9 -1.980133209397261 12 -23.066445809798143 15 0 18 0 21 81.040277092356504 24 104.20525712180959
		 27 110.18012207604265 30 100.24624225515797 33 -1.980133209397261 36 -23.066445809798143
		 39 0 42 0 45 81.040277092356504 48 104.20525712180959 56 -62.642490527327816 58 0
		 61 0 68 -23.066445809798157 78 104.20525712180959 80 104.20525712180959 85 0 86 0
		 88 0 90 0 92 0 93 0 94 0 95 25.11585277396129 96 50.231921120146836 100 -23.066445809798157
		 110 104.20525712180959 112 104.20525712180959 120 104.20525712180959 123 110.18012207604265
		 126 100.24624225515797 129 -1.980133209397261 132 -23.066445809798143 135 0 138 0
		 141 81.040277092356504 144 104.20525712180959 150 104.20525712180959 153 110.18012207604265
		 156 100.24624225515797 159 -1.980133209397261 162 -23.066445809798143 165 0 168 0
		 171 81.040277092356504 174 104.20525712180959;
	setAttr -s 58 ".kit[5:57]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 1 18 18 18 
		18 18 18 18 18 18 18 18 1 1 1 18 18 18 18 18 18 
		18 1 1 18 18 18 18 18 18 18 1;
	setAttr -s 58 ".kot[5:57]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 1 1 1 18 18 
		18 18 18 18 18 18 18 1 1 1 1 18 18 18 18 18 18 
		18 18 1 18 18 18 18 18 18 18 18;
	setAttr -s 58 ".kix[5:57]"  0.98202872276306152 1 0.23366846144199371 
		0.11538370698690414 1 1 1 0.13617841899394989 0.44114291667938232 1 0.23366846144199371 
		0.11538370698690414 1 1 1 0.13617841899394989 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.094625480473041534 
		1 1 1 1 0.98202872276306152 1 0.23366846144199371 0.11538370698690414 1 1 1 0.13617841899394989 
		0.44114291667938232 0.98202872276306152 1 0.23366846144199371 0.11538370698690414 
		1 1 1 0.13617841899394989 0.44114291667938232;
	setAttr -s 58 ".kiy[5:57]"  0.18873165547847748 0 -0.97231638431549072 
		-0.9933210015296936 0 0 0 0.99068433046340942 0.89743685722351074 0 -0.97231638431549072 
		-0.9933210015296936 0 0 0 0.99068433046340942 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.99551290273666382 
		0 0 0 0 0.18873165547847748 0 -0.97231638431549072 -0.9933210015296936 0 0 0 0.99068433046340942 
		0.89743685722351074 0.18873165547847748 0 -0.97231638431549072 -0.9933210015296936 
		0 0 0 0.99068433046340942 0.89743685722351074;
	setAttr -s 58 ".kox[5:57]"  0.98202872276306152 1 0.23366846144199371 
		0.11538370698690414 1 1 1 0.13617841899394989 0.44114291667938232 1 0.23366846144199371 
		0.11538370698690414 1 1 1 0.13617841899394989 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.094625473022460938 
		1 1 1 1 0.98202872276306152 1 0.23366846144199371 0.11538370698690414 1 1 1 0.13617841899394989 
		1 0.98202872276306152 1 0.23366846144199371 0.11538370698690414 1 1 1 0.13617841899394989 
		1;
	setAttr -s 58 ".koy[5:57]"  0.18873165547847748 0 -0.97231638431549072 
		-0.9933210015296936 0 0 0 0.99068433046340942 0.89743685722351074 0 -0.97231638431549072 
		-0.9933210015296936 0 0 0 0.99068433046340942 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.99551296234130859 
		0 0 0 0 0.18873165547847748 0 -0.97231638431549072 -0.9933210015296936 0 0 0 0.99068433046340942 
		0 0.18873165547847748 0 -0.97231638431549072 -0.9933210015296936 0 0 0 0.99068433046340942 
		0;
createNode animCurveTA -n "LeftFoot_Control_rotateY";
	rename -uid "85AA0627-F149-B985-7689-C7B3B5445EF5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  -12 0 -9 0 0 -3.6774747241010339 12 15.479974935604741
		 15 0 21 2.9588088559190555 24 -3.6774747241010339 36 15.479974935604741 39 0 45 2.9588088559190555
		 48 -3.6774747241010339 56 68.693355410831643 58 82.807316231482972 61 46.461619275182386
		 68 15.479974935604741 78 -3.6774747241010339 80 -3.6774747241010339 85 -88.448230462240986
		 86 -88.271986489331624 88 -87.066697712356401 89 -85.1734957017146 90 -69.040607631861377
		 91 -45.100836517384025 92 -16.797119698196251 93 0 94 0 95 1.1466586588565877 100 15.479974935604741
		 110 -3.6774747241010339 112 -3.6774747241010339 120 -3.6774747241010339 132 15.479974935604741
		 135 0 141 2.9588088559190555 144 -3.6774747241010339 150 -3.6774747241010339 162 15.479974935604741
		 165 0 171 2.9588088559190555 174 -3.6774747241010339;
	setAttr -s 40 ".kit[2:39]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 1 18 18 18 18 18 18 18 18 18 18 18 
		18 1 1 1 18 18 18 1 1 18 18 18 1;
	setAttr -s 40 ".kot[2:39]"  1 18 18 18 18 18 18 18 
		18 18 18 18 1 1 1 18 18 18 18 18 18 18 18 18 18 
		1 1 1 1 18 18 18 18 1 18 18 18 18;
	setAttr -s 40 ".kix[2:39]"  1 1 1 1 1 1 1 1 1 0.26608821749687195 1 
		0.33419704437255859 0.62915807962417603 1 1 1 0.9818987250328064 0.91779065132141113 
		0.38749191164970398 0.11831312626600266 0.091012828052043915 0.1052776500582695 1 
		1 0.67916858196258545 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".kiy[2:39]"  0 0 0 0 0 0 0 0 0 0.96394866704940796 0 
		-0.94250321388244629 -0.77727735042572021 0 0 0 0.18940666317939758 0.39706465601921082 
		0.92187309265136719 0.99297630786895752 0.99584972858428955 0.99444282054901123 0 
		0 0.73398232460021973 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 40 ".kox[2:39]"  1 1 1 1 1 1 1 1 1 0.26608821749687195 1 
		0.33419701457023621 1 1 1 1 0.9818987250328064 0.91779065132141113 0.38749191164970398 
		0.11831312626600266 0.091012828052043915 0.1052776575088501 1 1 0.67916858196258545 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".koy[2:39]"  0 0 0 0 0 0 0 0 0 0.96394866704940796 0 
		-0.94250321388244629 0 0 0 0 0.18940664827823639 0.39706462621688843 0.92187309265136719 
		0.99297630786895752 0.99584966897964478 0.99444282054901123 0 0 0.73398232460021973 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LeftFoot_Control_rotateZ";
	rename -uid "D8456199-524B-9077-3069-09B49A166594";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 38 ".ktv[0:37]"  -12 0 -9 0 0 14.218418739233655 12 -6.4843240956470902
		 15 0 21 18.128066013713006 24 14.218418739233655 36 -6.4843240956470902 39 0 45 18.128066013713006
		 48 14.218418739233655 56 -49.029845302758787 58 0 61 0 68 -6.4843240956470884 78 14.218418739233655
		 80 14.218418739233655 85 0 86 0 88 0 90 0 92 0 93 0 94 0 95 -0.48031772674286183
		 100 -6.4843240956470884 110 14.218418739233655 112 14.218418739233655 120 14.218418739233655
		 132 -6.4843240956470902 135 0 141 18.128066013713006 144 14.218418739233655 150 14.218418739233655
		 162 -6.4843240956470902 165 0 171 18.128066013713006 174 14.218418739233655;
	setAttr -s 38 ".kit[2:37]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 1 18 18 18 18 18 18 18 18 18 18 1 
		1 1 18 18 18 1 1 18 18 18 1;
	setAttr -s 38 ".kot[2:37]"  1 18 18 18 18 18 18 18 
		18 18 18 18 1 1 1 18 18 18 18 18 18 18 18 1 1 
		1 1 18 18 18 18 1 18 18 18 18;
	setAttr -s 38 ".kix[2:37]"  0.61997252702713013 1 0.65763872861862183 
		1 0.82411599159240723 1 0.65763872861862183 1 0.52114725112915039 1 1 1 1 0.52114725112915039 
		1 1 1 1 1 1 1 1 0.91100156307220459 1 0.52114725112915039 0.52114725112915039 0.61997252702713013 
		1 0.65763872861862183 1 0.82411599159240723 0.61997252702713013 1 0.65763872861862183 
		1 0.82411599159240723;
	setAttr -s 38 ".kiy[2:37]"  -0.78462350368499756 0 0.75333350896835327 
		0 -0.56642115116119385 0 0.75333350896835327 0 -0.85346680879592896 0 0 0 0 -0.85346680879592896 
		0 0 0 0 0 0 0 0 -0.41240280866622925 0 -0.85346680879592896 -0.85346680879592896 
		-0.78462350368499756 0 0.75333350896835327 0 -0.56642115116119385 -0.78462350368499756 
		0 0.75333350896835327 0 -0.56642115116119385;
	setAttr -s 38 ".kox[2:37]"  0.61997252702713013 1 0.65763872861862183 
		1 0.82411599159240723 1 0.65763872861862183 1 0.52114719152450562 1 1 1 0.52114719152450562 
		0.52114719152450562 0.52114719152450562 1 1 1 1 1 1 1 0.91100162267684937 0.52114719152450562 
		0.52114719152450562 0.52114719152450562 0.61997252702713013 1 0.65763872861862183 
		1 1 0.61997252702713013 1 0.65763872861862183 1 1;
	setAttr -s 38 ".koy[2:37]"  -0.78462350368499756 0 0.75333350896835327 
		0 -0.56642115116119385 0 0.75333350896835327 0 -0.85346674919128418 0 0 0 -0.85346674919128418 
		-0.85346674919128418 -0.85346674919128418 0 0 0 0 0 0 0 -0.41240280866622925 -0.85346674919128418 
		-0.85346674919128418 -0.85346674919128418 -0.78462350368499756 0 0.75333350896835327 
		0 0 -0.78462350368499756 0 0.75333350896835327 0 0;
createNode animCurveTU -n "LeftFoot_Control_scaleX";
	rename -uid "A3E2604B-B54E-3E6A-774A-DBB5CF9C75F5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  -12 1 -9 1 0 1 12 1 15 1 24 1 36 1 39 1
		 48 1 68 1 78 1 80 1 86 1 88 1 90 1 92 1 95 1 100 1 110 1 112 1 120 1 132 1 135 1
		 144 1 150 1 162 1 165 1 174 1;
	setAttr -s 28 ".kit[2:27]"  1 18 18 18 18 18 18 18 
		1 18 18 18 18 18 18 18 1 1 1 18 18 1 1 18 18 
		1;
	setAttr -s 28 ".kot[2:27]"  1 18 18 18 18 18 18 1 
		1 1 18 18 18 18 18 1 1 1 1 18 18 18 1 18 18 
		18;
	setAttr -s 28 ".kix[2:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1;
	setAttr -s 28 ".kiy[2:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0;
	setAttr -s 28 ".kox[2:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1;
	setAttr -s 28 ".koy[2:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0;
createNode animCurveTU -n "LeftFoot_Control_scaleY";
	rename -uid "16CF2FC3-6F45-528A-6453-BE8C81EB46EC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  -12 1 -9 1 0 1 12 1 15 1 24 1 36 1 39 1
		 48 1 68 1 78 1 80 1 86 1 88 1 90 1 92 1 95 1 100 1 110 1 112 1 120 1 132 1 135 1
		 144 1 150 1 162 1 165 1 174 1;
	setAttr -s 28 ".kit[2:27]"  1 18 18 18 18 18 18 18 
		1 18 18 18 18 18 18 18 1 1 1 18 18 1 1 18 18 
		1;
	setAttr -s 28 ".kot[2:27]"  1 18 18 18 18 18 18 1 
		1 1 18 18 18 18 18 1 1 1 1 18 18 18 1 18 18 
		18;
	setAttr -s 28 ".kix[2:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1;
	setAttr -s 28 ".kiy[2:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0;
	setAttr -s 28 ".kox[2:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1;
	setAttr -s 28 ".koy[2:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0;
createNode animCurveTU -n "LeftFoot_Control_scaleZ";
	rename -uid "248411C5-1E46-1B52-C15C-2490DB9F9638";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  -12 1 -9 1 0 1 12 1 15 1 24 1 36 1 39 1
		 48 1 68 1 78 1 80 1 86 1 88 1 90 1 92 1 95 1 100 1 110 1 112 1 120 1 132 1 135 1
		 144 1 150 1 162 1 165 1 174 1;
	setAttr -s 28 ".kit[2:27]"  1 18 18 18 18 18 18 18 
		1 18 18 18 18 18 18 18 1 1 1 18 18 1 1 18 18 
		1;
	setAttr -s 28 ".kot[2:27]"  1 18 18 18 18 18 18 1 
		1 1 18 18 18 18 18 1 1 1 1 18 18 18 1 18 18 
		18;
	setAttr -s 28 ".kix[2:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1;
	setAttr -s 28 ".kiy[2:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0;
	setAttr -s 28 ".kox[2:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1;
	setAttr -s 28 ".koy[2:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0;
createNode animCurveTL -n "LeftToes_Control_translateX";
	rename -uid "41205BAE-2241-5B0E-A22B-4FB87F0EC32C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 47 ".ktv[0:46]"  0 0 3 0 6 0 9 0 12 0 15 0 18 0 21 0 24 0
		 27 0 30 0 33 0 36 0 39 0 42 0 45 0 48 0 51 0 54 0 57 0 60 0 63 0 66 0 68 0 78 0 80 0
		 100 0 110 0 112 0 120 0 123 0 126 0 129 0 132 0 135 0 138 0 141 0 144 0 150 0 153 0
		 156 0 159 0 162 0 165 0 168 0 171 0 174 0;
	setAttr -s 47 ".kit[24:46]"  1 18 18 1 1 18 18 18 
		18 18 18 18 18 1 18 18 18 18 18 18 18 18 1;
	setAttr -s 47 ".kot[23:46]"  1 1 1 1 1 1 1 18 
		18 18 18 18 18 18 18 1 18 18 18 18 18 18 18 18;
	setAttr -s 47 ".kix[24:46]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1;
	setAttr -s 47 ".kiy[24:46]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0;
	setAttr -s 47 ".kox[23:46]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1;
	setAttr -s 47 ".koy[23:46]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0;
createNode animCurveTL -n "LeftToes_Control_translateY";
	rename -uid "C4A4FC94-4B46-9C5E-165F-F69746243FAF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 47 ".ktv[0:46]"  0 0 3 0 6 0 9 0 12 0 15 0 18 0 21 0 24 0
		 27 0 30 0 33 0 36 0 39 0 42 0 45 0 48 0 51 0 54 0 57 0 60 0 63 0 66 0 68 0 78 0 80 0
		 100 0 110 0 112 0 120 0 123 0 126 0 129 0 132 0 135 0 138 0 141 0 144 0 150 0 153 0
		 156 0 159 0 162 0 165 0 168 0 171 0 174 0;
	setAttr -s 47 ".kit[24:46]"  1 18 18 1 1 18 18 18 
		18 18 18 18 18 1 18 18 18 18 18 18 18 18 1;
	setAttr -s 47 ".kot[23:46]"  1 1 1 1 1 1 1 18 
		18 18 18 18 18 18 18 1 18 18 18 18 18 18 18 18;
	setAttr -s 47 ".kix[24:46]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1;
	setAttr -s 47 ".kiy[24:46]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0;
	setAttr -s 47 ".kox[23:46]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1;
	setAttr -s 47 ".koy[23:46]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0;
createNode animCurveTL -n "LeftToes_Control_translateZ";
	rename -uid "993F65C9-684F-FC2E-875E-9B8EFCD2DCBE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 47 ".ktv[0:46]"  0 0 3 0 6 0 9 0 12 0 15 0 18 0 21 0 24 0
		 27 0 30 0 33 0 36 0 39 0 42 0 45 0 48 0 51 0 54 0 57 0 60 0 63 0 66 0 68 0 78 0 80 0
		 100 0 110 0 112 0 120 0 123 0 126 0 129 0 132 0 135 0 138 0 141 0 144 0 150 0 153 0
		 156 0 159 0 162 0 165 0 168 0 171 0 174 0;
	setAttr -s 47 ".kit[24:46]"  1 18 18 1 1 18 18 18 
		18 18 18 18 18 1 18 18 18 18 18 18 18 18 1;
	setAttr -s 47 ".kot[23:46]"  1 1 1 1 1 1 1 18 
		18 18 18 18 18 18 18 1 18 18 18 18 18 18 18 18;
	setAttr -s 47 ".kix[24:46]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1;
	setAttr -s 47 ".kiy[24:46]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0;
	setAttr -s 47 ".kox[23:46]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1;
	setAttr -s 47 ".koy[23:46]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0;
createNode animCurveTU -n "LeftToes_Control_visibility";
	rename -uid "8ED92AB9-1940-6C02-C639-69BF5A6D5919";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 47 ".ktv[0:46]"  0 1 3 1 6 1 9 1 12 1 15 1 18 1 21 1 24 1
		 27 1 30 1 33 1 36 1 39 1 42 1 45 1 48 1 51 1 54 1 57 1 60 1 63 1 66 1 68 1 78 1 80 1
		 100 1 110 1 112 1 120 1 123 1 126 1 129 1 132 1 135 1 138 1 141 1 144 1 150 1 153 1
		 156 1 159 1 162 1 165 1 168 1 171 1 174 1;
	setAttr -s 47 ".kit[8:46]"  18 9 9 9 9 9 9 9 
		18 18 18 18 18 18 18 18 1 18 18 1 1 9 9 9 9 
		9 9 9 9 1 9 9 9 9 9 9 9 9 1;
	setAttr -s 47 ".kot[0:46]"  5 5 5 5 5 5 5 5 
		18 5 5 5 5 5 5 5 18 18 18 18 18 18 18 1 1 
		1 1 1 1 5 5 5 5 5 5 5 5 18 5 5 5 5 
		5 5 5 5 18;
	setAttr -s 47 ".kix[24:46]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1;
	setAttr -s 47 ".kiy[24:46]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0;
	setAttr -s 47 ".kox[23:46]"  1 1 1 1 1 1 0 0 0 0 0 0 0 0 1 0 0 0 0 0 
		0 0 0 1;
	setAttr -s 47 ".koy[23:46]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0;
createNode animCurveTA -n "LeftToes_Control_rotateX";
	rename -uid "E6660F4D-A947-8145-2F72-E0B65FD34340";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 47 ".ktv[0:46]"  0 0 3 0 6 0 9 0 12 0 15 0 18 0 21 -51.514930074950307
		 24 0 27 0 30 0 33 0 36 0 39 0 42 0 45 -51.514930074950307 48 0 51 0 54 0 57 0 60 0
		 63 0 66 0 68 0 78 0 80 0 100 0 110 0 112 0 120 0 123 0 126 0 129 0 132 0 135 0 138 0
		 141 -51.514930074950307 144 0 150 0 153 0 156 0 159 0 162 0 165 0 168 0 171 -51.514930074950307
		 174 0;
	setAttr -s 47 ".kit[24:46]"  1 18 18 1 1 18 18 18 
		18 18 18 18 18 1 18 18 18 18 18 18 18 18 1;
	setAttr -s 47 ".kot[23:46]"  1 1 1 1 1 1 1 18 
		18 18 18 18 18 18 18 1 18 18 18 18 18 18 18 18;
	setAttr -s 47 ".kix[24:46]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1;
	setAttr -s 47 ".kiy[24:46]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0;
	setAttr -s 47 ".kox[23:46]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1;
	setAttr -s 47 ".koy[23:46]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0;
createNode animCurveTA -n "LeftToes_Control_rotateY";
	rename -uid "1BFB5FE6-334C-6267-D455-59A0155A500B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 47 ".ktv[0:46]"  0 0 3 0 6 0 9 0 12 0 15 0 18 0 21 0 24 0
		 27 0 30 0 33 0 36 0 39 0 42 0 45 0 48 0 51 0 54 0 57 0 60 0 63 0 66 0 68 0 78 0 80 0
		 100 0 110 0 112 0 120 0 123 0 126 0 129 0 132 0 135 0 138 0 141 0 144 0 150 0 153 0
		 156 0 159 0 162 0 165 0 168 0 171 0 174 0;
	setAttr -s 47 ".kit[24:46]"  1 18 18 1 1 18 18 18 
		18 18 18 18 18 1 18 18 18 18 18 18 18 18 1;
	setAttr -s 47 ".kot[23:46]"  1 1 1 1 1 1 1 18 
		18 18 18 18 18 18 18 1 18 18 18 18 18 18 18 18;
	setAttr -s 47 ".kix[24:46]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1;
	setAttr -s 47 ".kiy[24:46]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0;
	setAttr -s 47 ".kox[23:46]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1;
	setAttr -s 47 ".koy[23:46]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0;
createNode animCurveTA -n "LeftToes_Control_rotateZ";
	rename -uid "D26C6F31-7C43-6EB5-96BC-F6A883767E65";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 47 ".ktv[0:46]"  0 0 3 0 6 0 9 0 12 0 15 0 18 0 21 0 24 0
		 27 0 30 0 33 0 36 0 39 0 42 0 45 0 48 0 51 0 54 0 57 0 60 0 63 0 66 0 68 0 78 0 80 0
		 100 0 110 0 112 0 120 0 123 0 126 0 129 0 132 0 135 0 138 0 141 0 144 0 150 0 153 0
		 156 0 159 0 162 0 165 0 168 0 171 0 174 0;
	setAttr -s 47 ".kit[24:46]"  1 18 18 1 1 18 18 18 
		18 18 18 18 18 1 18 18 18 18 18 18 18 18 1;
	setAttr -s 47 ".kot[23:46]"  1 1 1 1 1 1 1 18 
		18 18 18 18 18 18 18 1 18 18 18 18 18 18 18 18;
	setAttr -s 47 ".kix[24:46]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1;
	setAttr -s 47 ".kiy[24:46]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0;
	setAttr -s 47 ".kox[23:46]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1;
	setAttr -s 47 ".koy[23:46]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0;
createNode animCurveTU -n "LeftToes_Control_scaleX";
	rename -uid "41E9C11C-324A-A87A-DC25-78A489B6A41B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 47 ".ktv[0:46]"  0 1 3 1 6 1 9 1 12 1 15 1 18 1 21 1 24 1
		 27 1 30 1 33 1 36 1 39 1 42 1 45 1 48 1 51 1 54 1 57 1 60 1 63 1 66 1 68 1 78 1 80 1
		 100 1 110 1 112 1 120 1 123 1 126 1 129 1 132 1 135 1 138 1 141 1 144 1 150 1 153 1
		 156 1 159 1 162 1 165 1 168 1 171 1 174 1;
	setAttr -s 47 ".kit[24:46]"  1 18 18 1 1 18 18 18 
		18 18 18 18 18 1 18 18 18 18 18 18 18 18 1;
	setAttr -s 47 ".kot[23:46]"  1 1 1 1 1 1 1 18 
		18 18 18 18 18 18 18 1 18 18 18 18 18 18 18 18;
	setAttr -s 47 ".kix[24:46]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1;
	setAttr -s 47 ".kiy[24:46]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0;
	setAttr -s 47 ".kox[23:46]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1;
	setAttr -s 47 ".koy[23:46]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0;
createNode animCurveTU -n "LeftToes_Control_scaleY";
	rename -uid "8D762FB7-E24C-EF1B-0218-B5A8DD277D2C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 47 ".ktv[0:46]"  0 1 3 1 6 1 9 1 12 1 15 1 18 1 21 1 24 1
		 27 1 30 1 33 1 36 1 39 1 42 1 45 1 48 1 51 1 54 1 57 1 60 1 63 1 66 1 68 1 78 1 80 1
		 100 1 110 1 112 1 120 1 123 1 126 1 129 1 132 1 135 1 138 1 141 1 144 1 150 1 153 1
		 156 1 159 1 162 1 165 1 168 1 171 1 174 1;
	setAttr -s 47 ".kit[24:46]"  1 18 18 1 1 18 18 18 
		18 18 18 18 18 1 18 18 18 18 18 18 18 18 1;
	setAttr -s 47 ".kot[23:46]"  1 1 1 1 1 1 1 18 
		18 18 18 18 18 18 18 1 18 18 18 18 18 18 18 18;
	setAttr -s 47 ".kix[24:46]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1;
	setAttr -s 47 ".kiy[24:46]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0;
	setAttr -s 47 ".kox[23:46]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1;
	setAttr -s 47 ".koy[23:46]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0;
createNode animCurveTU -n "LeftToes_Control_scaleZ";
	rename -uid "A90660A7-694B-EEA4-7DCE-B4BF7E239ABD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 47 ".ktv[0:46]"  0 1 3 1 6 1 9 1 12 1 15 1 18 1 21 1 24 1
		 27 1 30 1 33 1 36 1 39 1 42 1 45 1 48 1 51 1 54 1 57 1 60 1 63 1 66 1 68 1 78 1 80 1
		 100 1 110 1 112 1 120 1 123 1 126 1 129 1 132 1 135 1 138 1 141 1 144 1 150 1 153 1
		 156 1 159 1 162 1 165 1 168 1 171 1 174 1;
	setAttr -s 47 ".kit[24:46]"  1 18 18 1 1 18 18 18 
		18 18 18 18 18 1 18 18 18 18 18 18 18 18 1;
	setAttr -s 47 ".kot[23:46]"  1 1 1 1 1 1 1 18 
		18 18 18 18 18 18 18 1 18 18 18 18 18 18 18 18;
	setAttr -s 47 ".kix[24:46]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1;
	setAttr -s 47 ".kiy[24:46]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0;
	setAttr -s 47 ".kox[23:46]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1;
	setAttr -s 47 ".koy[23:46]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0;
createNode animCurveTA -n "Hips_Control_rotateX";
	rename -uid "AAFF671B-CA40-6250-75D3-319943E3D4C8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 27.337119296302209 3 28.203328188909769
		 6 29.017100250113728 9 28.734950810491476 12 27.614674665442791 15 28.080141821055651
		 18 28.079969014937589 21 27.496535188256217 24 27.337119296302209 27 28.203328188909769
		 30 29.017100250113728 33 28.734950810491476 36 27.614674665442791 39 28.080141821055651
		 42 28.079969014937589 45 27.496535188256217 48 27.337119296302209 52 -32.119864024193646
		 56 -63.581733678757722 61 22.909090114595561 64 34.307630873749787 68 34.331600473119984
		 78 27.337119296302209 80 27.337119296302209 85 -31.74770070989408 88 -56.898285332066131
		 90 18.617112052369269 93 32.930383257550737 100 34.331600473119984 110 27.337119296302209
		 112 27.337119296302209 120 27.337119296302209 123 28.203328188909769 126 29.017100250113728
		 129 28.734950810491476 132 27.614674665442791 135 28.080141821055651 138 28.079969014937589
		 141 27.496535188256217 144 27.337119296302209 150 27.337119296302209 153 28.203328188909769
		 156 29.017100250113728 159 28.734950810491476 162 27.614674665442791 165 28.080141821055651
		 168 28.079969014937589 171 27.496535188256217 174 27.337119296302209;
	setAttr -s 49 ".kit[0:48]"  1 18 18 18 1 1 1 18 
		18 18 18 18 1 1 1 18 18 18 18 18 18 18 1 18 18 
		18 18 18 18 1 1 1 18 18 18 1 1 1 18 1 1 18 
		18 18 1 1 1 18 1;
	setAttr -s 49 ".kot[0:48]"  1 18 18 18 1 1 1 18 
		18 18 18 18 1 1 1 18 18 18 18 18 18 1 1 1 18 
		18 18 18 1 1 1 1 18 18 18 1 1 1 18 18 1 18 
		18 18 1 1 1 18 18;
	setAttr -s 49 ".kix[0:48]"  1 0.99319237470626831 1 0.99524116516113281 
		1 1 1 0.9986579418182373 1 0.99319237470626831 1 0.99524116516113281 1 1 1 0.9986579418182373 
		0.99777787923812866 0.20557527244091034 1 0.20499338209629059 0.99997162818908691 
		1 0.99777787923812866 1 0.22111676633358002 1 0.16451828181743622 0.96978867053985596 
		1 0.99777787923812866 0.99777787923812866 1 0.99319237470626831 1 0.99524116516113281 
		1 1 1 0.9986579418182373 1 1 0.99319237470626831 1 0.99524116516113281 1 1 1 0.9986579418182373 
		1;
	setAttr -s 49 ".kiy[0:48]"  0 0.11648636311292648 0 -0.097441844642162323 
		0 0 0 -0.051791094243526459 0 0.11648636311292648 0 -0.097441844642162323 0 0 0 -0.051791094243526459 
		-0.066627584397792816 -0.97864127159118652 0 0.97876334190368652 0.0075300652533769608 
		0 -0.066627584397792816 0 -0.97524732351303101 0 0.98637408018112183 0.24394650757312775 
		0 -0.066627584397792816 -0.066627584397792816 0 0.11648636311292648 0 -0.097441844642162323 
		0 0 0 -0.051791094243526459 0 0 0.11648636311292648 0 -0.097441844642162323 0 0 0 
		-0.051791094243526459 0;
	setAttr -s 49 ".kox[0:48]"  1 0.99319237470626831 1 0.99524116516113281 
		1 1 1 0.9986579418182373 1 0.99319237470626831 1 0.99524116516113281 1 1 1 0.9986579418182373 
		0.99777793884277344 0.20557525753974915 1 0.20499338209629059 0.99997168779373169 
		0.99777793884277344 0.99777793884277344 0.99777793884277344 0.22111678123474121 1 
		0.16451826691627502 0.96978867053985596 0.99777793884277344 0.99777793884277344 0.99777793884277344 
		1 0.99319237470626831 1 0.99524116516113281 1 1 1 0.9986579418182373 1 1 0.99319237470626831 
		1 0.99524116516113281 1 1 1 0.9986579418182373 1;
	setAttr -s 49 ".koy[0:48]"  0 0.11648636311292648 0 -0.097441844642162323 
		0 0 0 -0.051791094243526459 0 0.11648636311292648 0 -0.097441844642162323 0 0 0 -0.051791094243526459 
		-0.066627584397792816 -0.97864127159118652 0 0.97876334190368652 0.0075300657190382481 
		-0.066627584397792816 -0.066627584397792816 -0.066627584397792816 -0.97524738311767578 
		0 0.98637408018112183 0.24394652247428894 -0.066627584397792816 -0.066627584397792816 
		-0.066627584397792816 0 0.11648636311292648 0 -0.097441844642162323 0 0 0 -0.051791094243526459 
		0 0 0.11648636311292648 0 -0.097441844642162323 0 0 0 -0.051791094243526459 0;
createNode animCurveTA -n "Hips_Control_rotateY";
	rename -uid "D0994D76-4E48-E8F2-CC29-1C8E1A641070";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 1.6738204708449036 3 -2.484413940158658
		 6 -12.18454659886698 9 -0.23163773107696983 12 -4.2059246373531671 15 3.703405842583146
		 18 8.1514410343732671 21 12.196469823315883 24 1.6738204708449036 27 -2.484413940158658
		 30 -12.18454659886698 33 -0.23163773107696983 36 -4.2059246373531671 39 3.703405842583146
		 42 8.1514410343732671 45 12.196469823315883 48 1.6738204708449036 52 48.324370301048418
		 56 74.089042789331231 61 58.644621939952451 64 1.3985935747647393 68 -3.406389937188155
		 78 1.6738204708449036 80 1.6738204708449036 85 -56.491033148733678 88 -66.475700862890861
		 90 -67.882141287426506 93 0 100 -3.406389937188155 110 1.6738204708449036 112 1.6738204708449036
		 120 1.6738204708449036 123 -2.484413940158658 126 -12.18454659886698 129 -0.23163773107696983
		 132 -4.2059246373531671 135 3.703405842583146 138 8.1514410343732671 141 12.196469823315883
		 144 1.6738204708449036 150 1.6738204708449036 153 -2.484413940158658 156 -12.18454659886698
		 159 -0.23163773107696983 162 -4.2059246373531671 165 3.703405842583146 168 8.1514410343732671
		 171 12.196469823315883 174 1.6738204708449036;
	setAttr -s 49 ".kit[0:48]"  1 18 18 18 1 1 1 18 
		18 18 18 18 1 1 1 18 18 18 18 18 18 18 1 18 18 
		18 18 18 18 1 1 1 18 18 18 1 1 1 18 1 1 18 
		18 18 1 1 1 18 1;
	setAttr -s 49 ".kot[0:48]"  1 18 18 18 1 1 1 18 
		18 18 18 18 1 1 1 18 18 18 18 18 18 1 1 1 18 
		18 18 18 1 1 1 1 18 18 18 1 1 1 18 18 1 18 
		18 18 1 1 1 18 18;
	setAttr -s 49 ".kix[0:48]"  1 0.71869033575057983 1 1 1 1 1 1 0.6983521580696106 
		0.71869033575057983 1 1 1 1 1 1 1 0.25501713156700134 1 0.25411421060562134 0.55226832628250122 
		1 1 1 0.26984921097755432 0.74933934211730957 1 1 1 1 1 1 0.71869033575057983 1 1 
		1 1 1 1 0.6983521580696106 1 0.71869033575057983 1 1 1 1 1 1 0.6983521580696106;
	setAttr -s 49 ".kiy[0:48]"  0 -0.69533038139343262 0 0 0 0 0 0 -0.71575438976287842 
		-0.69533038139343262 0 0 0 0 0 0 0 0.96693652868270874 0 -0.96717417240142822 -0.83366644382476807 
		0 0 0 -0.96290260553359985 -0.66218620538711548 0 0 0 0 0 0 -0.69533038139343262 
		0 0 0 0 0 0 -0.71575438976287842 0 -0.69533038139343262 0 0 0 0 0 0 -0.71575438976287842;
	setAttr -s 49 ".kox[0:48]"  1 0.71869033575057983 1 1 1 1 1 1 0.6983521580696106 
		0.71869033575057983 1 1 1 1 1 1 1 0.25501713156700134 1 0.25411421060562134 0.55226832628250122 
		1 1 1 0.26984921097755432 0.74933934211730957 1 1 1 1 1 1 0.71869033575057983 1 1 
		1 1 1 1 1 1 0.71869033575057983 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[0:48]"  0 -0.69533038139343262 0 0 0 0 0 0 -0.71575438976287842 
		-0.69533038139343262 0 0 0 0 0 0 0 0.96693652868270874 0 -0.967174232006073 -0.83366644382476807 
		0 0 0 -0.96290260553359985 -0.66218620538711548 0 0 0 0 0 0 -0.69533038139343262 
		0 0 0 0 0 0 0 0 -0.69533038139343262 0 0 0 0 0 0 0;
createNode animCurveTA -n "Hips_Control_rotateZ";
	rename -uid "9649729A-D04A-4D44-7380-BF96C31C807F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 3.2946954539072459 3 4.6212673295264928
		 6 -3.1570797616402584 9 -3.568196417310995 12 -5.1495056001316701 15 -3.1179672038111241
		 18 3.6220379343238398 21 5.7391756070009254 24 3.2946954539072459 27 4.6212673295264928
		 30 -3.1570797616402584 33 -3.568196417310995 36 -5.1495056001316701 39 -3.1179672038111241
		 42 3.6220379343238398 45 5.7391756070009254 48 3.2946954539072459 52 -28.873016478005628
		 56 -76.014195506882245 61 -12.569448336015649 64 -4.7417136064904684 68 -2.5906954825062569
		 78 3.2946954539072459 80 3.2946954539072459 85 35.865811040746223 88 59.131012398594216
		 90 -2.4750354190066184 93 0 100 -2.5906954825062569 110 3.2946954539072459 112 3.2946954539072459
		 120 3.2946954539072459 123 4.6212673295264928 126 -3.1570797616402584 129 -3.568196417310995
		 132 -5.1495056001316701 135 -3.1179672038111241 138 3.6220379343238398 141 5.7391756070009254
		 144 3.2946954539072459 150 3.2946954539072459 153 4.6212673295264928 156 -3.1570797616402584
		 159 -3.568196417310995 162 -5.1495056001316701 165 -3.1179672038111241 168 3.6220379343238398
		 171 5.7391756070009254 174 3.2946954539072459;
	setAttr -s 49 ".kit[0:48]"  1 18 18 18 1 1 1 18 
		18 18 18 18 1 1 1 18 18 18 18 18 18 18 1 18 18 
		18 18 18 18 1 1 1 18 18 18 1 1 1 18 1 1 18 
		18 18 1 1 1 18 1;
	setAttr -s 49 ".kot[0:48]"  1 18 18 18 1 1 1 18 
		18 18 18 18 1 1 1 18 18 18 18 18 18 1 1 1 18 
		18 18 18 1 1 1 1 18 18 18 1 1 1 18 18 1 18 
		18 18 1 1 1 18 18;
	setAttr -s 49 ".kix[0:48]"  1 1 0.98549401760101318 0.99046409130096436 
		1 1 1 1 1 1 0.98549401760101318 0.99046409130096436 1 1 1 1 0.69869345426559448 0.23411998152732849 
		1 0.29171738028526306 0.85857909917831421 0.97228819131851196 0.69869345426559448 
		1 0.3236376941204071 1 1 1 1 0.69869345426559448 0.69869345426559448 1 1 0.98549401760101318 
		0.99046409130096436 1 1 1 1 1 1 1 0.98549401760101318 0.99046409130096436 1 1 1 1 
		1;
	setAttr -s 49 ".kiy[0:48]"  0 0 -0.16971009969711304 -0.13777115941047668 
		0 0 0 0 0 0 -0.16971009969711304 -0.13777115941047668 0 0 0 0 -0.71542114019393921 
		-0.97220772504806519 0 0.95650458335876465 0.51268118619918823 0.23378555476665497 
		-0.71542114019393921 0 0.94618111848831177 0 0 0 0 -0.71542114019393921 -0.71542114019393921 
		0 0 -0.16971009969711304 -0.13777115941047668 0 0 0 0 0 0 0 -0.16971009969711304 
		-0.13777115941047668 0 0 0 0 0;
	setAttr -s 49 ".kox[0:48]"  1 1 0.98549401760101318 0.99046409130096436 
		1 1 1 1 1 1 0.98549401760101318 0.99046409130096436 1 1 1 1 0.69869345426559448 0.2341199517250061 
		1 0.29171741008758545 0.85857909917831421 0.69869345426559448 0.69869345426559448 
		0.69869345426559448 0.3236376941204071 1 1 1 0.69869345426559448 0.69869345426559448 
		0.69869345426559448 1 1 0.98549401760101318 0.99046409130096436 1 1 1 1 1 1 1 0.98549401760101318 
		0.99046409130096436 1 1 1 1 1;
	setAttr -s 49 ".koy[0:48]"  0 0 -0.16971009969711304 -0.13777115941047668 
		0 0 0 0 0 0 -0.16971009969711304 -0.13777115941047668 0 0 0 0 -0.71542119979858398 
		-0.97220772504806519 0 0.95650458335876465 0.51268118619918823 -0.71542119979858398 
		-0.71542119979858398 -0.71542119979858398 0.94618111848831177 0 0 0 -0.71542119979858398 
		-0.71542119979858398 -0.71542119979858398 0 0 -0.16971009969711304 -0.13777115941047668 
		0 0 0 0 0 0 0 -0.16971009969711304 -0.13777115941047668 0 0 0 0 0;
createNode animCurveTU -n "Hips_Control_visibility";
	rename -uid "AFD57CF2-4149-1F81-6C41-46A363839913";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 38 ".ktv[0:37]"  0 1 3 1 6 1 12 1 15 1 18 1 21 1 24 1 27 1
		 30 1 36 1 39 1 42 1 45 1 48 1 68 1 78 1 80 1 85 1 100 1 110 1 112 1 120 1 123 1 126 1
		 132 1 135 1 138 1 141 1 144 1 150 1 153 1 156 1 162 1 165 1 168 1 171 1 174 1;
	setAttr -s 38 ".kit[0:37]"  1 9 9 1 1 1 9 18 
		9 9 1 1 1 9 18 18 1 18 9 18 1 1 1 9 9 
		1 1 1 9 1 1 9 9 1 1 1 9 1;
	setAttr -s 38 ".kot[7:37]"  18 5 5 5 5 5 5 18 
		1 1 1 5 1 1 1 5 5 5 5 5 5 5 18 5 5 
		5 5 5 5 5 18;
	setAttr -s 38 ".kix[0:37]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 38 ".kiy[0:37]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 38 ".kox[15:37]"  1 1 1 0 1 1 1 0 0 0 0 0 0 0 1 0 0 0 0 0 
		0 0 1;
	setAttr -s 38 ".koy[15:37]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0;
createNode animCurveTL -n "Hips_Control_translateX";
	rename -uid "391FD3D7-4F46-0E5D-1A32-E8873E49EC97";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 45 ".ktv[0:44]"  0 0 3 -1.0026293932196744 6 2.5065734830491841
		 9 0.25065734830492126 12 1.7546014381344506 15 0.75197204491475489 18 -2.506573483049177
		 21 -2.2559161347442647 24 0 27 -1.0026293932196744 30 2.5065734830491841 33 0.25065734830492126
		 36 1.7546014381344506 39 0.75197204491475489 42 -2.506573483049177 45 -2.2559161347442647
		 48 -2.2559161347442647 61 -33.571698676490293 68 1.7546014381344506 78 -2.2559161347442647
		 80 -2.2559161347442647 85 -15.389894456882592 88 -17.799853772772742 90 2.4052648670064491
		 100 1.7546014381344506 110 -2.2559161347442647 112 -2.2559161347442647 120 0 123 -1.0026293932196744
		 126 2.5065734830491841 129 0.25065734830492126 132 1.7546014381344506 135 0.75197204491475489
		 138 -2.506573483049177 141 -2.2559161347442647 144 0 150 0 153 -1.0026293932196744
		 156 2.5065734830491841 159 0.25065734830492126 162 1.7546014381344506 165 0.75197204491475489
		 168 -2.506573483049177 171 -2.2559161347442647 174 0;
	setAttr -s 45 ".kit[0:44]"  1 18 18 18 1 1 1 18 
		18 18 18 18 1 1 1 18 18 18 18 1 18 18 18 18 18 
		1 1 1 18 18 18 1 1 1 18 1 1 18 18 18 1 1 
		1 18 1;
	setAttr -s 45 ".kot[0:44]"  1 18 18 18 1 1 1 18 
		18 18 18 18 1 1 1 18 18 18 1 1 1 18 18 18 1 
		1 1 1 18 18 18 1 1 1 18 18 1 18 18 18 1 1 
		1 18 18;
	setAttr -s 45 ".kix[0:44]"  1 1 1 1 1 1 1 0.16397945582866669 1 1 1 
		1 1 1 1 1 1 1 1 1 1 0.021439667791128159 1 1 0.20875440537929535 1 1 1 1 1 1 1 1 
		1 0.16397945582866669 1 1 1 1 1 1 1 1 0.16397945582866669 1;
	setAttr -s 45 ".kiy[0:44]"  0 0 0 0 0 0 0 0.98646372556686401 0 0 0 
		0 0 0 0 0 0 0 0 0 0 -0.99977016448974609 0 0 -0.97796809673309326 0 0 0 0 0 0 0 0 
		0 0.98646372556686401 0 0 0 0 0 0 0 0 0.98646372556686401 0;
	setAttr -s 45 ".kox[0:44]"  1 1 1 1 1 1 1 0.16397945582866669 1 1 1 
		1 1 1 1 1 1 1 1 1 1 0.021439667791128159 1 1 1 1 1 1 1 1 1 1 1 1 0.16397945582866669 
		1 1 1 1 1 1 1 1 0.16397945582866669 1;
	setAttr -s 45 ".koy[0:44]"  0 0 0 0 0 0 0 0.98646372556686401 0 0 0 
		0 0 0 0 0 0 0 0 0 0 -0.99977010488510132 0 0 0 0 0 0 0 0 0 0 0 0 0.98646372556686401 
		0 0 0 0 0 0 0 0 0.98646372556686401 0;
createNode animCurveTL -n "Hips_Control_translateY";
	rename -uid "9E7F0D1B-2E4A-B59B-5C20-C0B23F96409D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 46 ".ktv[0:45]"  0 -2.2853594987637393 3 -9.9545312796093413
		 6 -8.737910174840648 9 -0.67079701858568797 12 -2.2853594987637393 15 -9.9545312796093413
		 18 -8.737910174840648 21 -0.67079701858568797 24 -2.2853594987637393 27 -9.9545312796093413
		 30 -8.737910174840648 33 -0.67079701858568797 36 -2.2853594987637393 39 -9.9545312796093413
		 42 -8.737910174840648 45 -0.67079701858568797 48 -2.2853594987637393 52 -15.349780134471288
		 61 -22.061026113567507 68 -2.2853594987637393 78 -2.2853594987637393 80 -2.2853594987637393
		 85 -19.071635454189092 88 -25.180582265006564 90 -32.253687232310966 100 -2.2853594987637393
		 110 -2.2853594987637393 112 -2.2853594987637393 120 -2.2853594987637393 123 -9.9545312796093413
		 126 -8.737910174840648 129 -0.67079701858568797 132 -2.2853594987637393 135 -9.9545312796093413
		 138 -8.737910174840648 141 -0.67079701858568797 144 -2.2853594987637393 150 -2.2853594987637393
		 153 -9.9545312796093413 156 -8.737910174840648 159 -0.67079701858568797 162 -2.2853594987637393
		 165 -9.9545312796093413 168 -8.737910174840648 171 -0.67079701858568797 174 -2.2853594987637393;
	setAttr -s 46 ".kit[0:45]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 1 18 18 18 18 
		18 1 1 1 18 18 18 18 18 18 18 1 1 18 18 18 18 
		18 18 18 1;
	setAttr -s 46 ".kot[0:45]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 1 1 1 18 18 18 
		1 1 1 1 18 18 18 18 18 18 18 18 1 18 18 18 18 
		18 18 18 18;
	setAttr -s 46 ".kix[0:45]"  0.033705227077007294 1 0.034227792173624039 
		1 0.026919059455394745 1 0.034227792173624039 1 0.026919059455394745 1 0.034227792173624039 
		1 0.026919059455394745 1 0.034227792173624039 1 0.025798195973038673 0.02738029882311821 
		1 1 0.025798195973038673 1 0.014557543210685253 0.015802336856722832 1 1 0.025798195973038673 
		0.025798195973038673 0.033705227077007294 1 0.034227792173624039 1 0.026919059455394745 
		1 0.034227792173624039 1 0.026919059455394745 0.033705227077007294 1 0.034227792173624039 
		1 0.026919059455394745 1 0.034227792173624039 1 0.026919059455394745;
	setAttr -s 46 ".kiy[0:45]"  -0.99943184852600098 0 0.99941408634185791 
		0 -0.99963760375976562 0 0.99941408634185791 0 -0.99963760375976562 0 0.99941408634185791 
		0 -0.99963760375976562 0 0.99941408634185791 0 -0.99966716766357422 -0.99962508678436279 
		0 0 -0.99966716766357422 0 -0.99989402294158936 -0.99987506866455078 0 0 -0.99966716766357422 
		-0.99966716766357422 -0.99943184852600098 0 0.99941408634185791 0 -0.99963760375976562 
		0 0.99941408634185791 0 -0.99963760375976562 -0.99943184852600098 0 0.99941408634185791 
		0 -0.99963760375976562 0 0.99941408634185791 0 -0.99963760375976562;
	setAttr -s 46 ".kox[0:45]"  0.033705230802297592 1 0.034227792173624039 
		1 0.026919059455394745 1 0.034227792173624039 1 0.026919059455394745 1 0.034227792173624039 
		1 0.026919059455394745 1 0.034227792173624039 1 0.025798195973038673 0.02738029882311821 
		1 0.025798195973038673 0.025798195973038673 0.025798195973038673 0.014557541348040104 
		0.015802338719367981 1 0.025798195973038673 0.025798195973038673 0.025798195973038673 
		0.033705230802297592 1 0.034227792173624039 1 0.026919059455394745 1 0.034227792173624039 
		1 1 0.033705230802297592 1 0.034227792173624039 1 0.026919059455394745 1 0.034227792173624039 
		1 1;
	setAttr -s 46 ".koy[0:45]"  -0.99943184852600098 0 0.99941408634185791 
		0 -0.99963760375976562 0 0.99941408634185791 0 -0.99963760375976562 0 0.99941408634185791 
		0 -0.99963760375976562 0 0.99941408634185791 0 -0.99966716766357422 -0.99962508678436279 
		0 -0.99966716766357422 -0.99966716766357422 -0.99966716766357422 -0.99989402294158936 
		-0.99987512826919556 0 -0.99966716766357422 -0.99966716766357422 -0.99966716766357422 
		-0.99943184852600098 0 0.99941408634185791 0 -0.99963760375976562 0 0.99941408634185791 
		0 0 -0.99943184852600098 0 0.99941408634185791 0 -0.99963760375976562 0 0.99941408634185791 
		0 0;
createNode animCurveTL -n "Hips_Control_translateZ";
	rename -uid "161125CB-364A-3FB0-EB26-33B90329C6AE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 3 0 6 0 12 0 15 0 18 0 21 0 24 0 27 0
		 30 0 36 0 39 0 42 0 45 0 48 0 52 12.547841637609318 56 51.160934470651291 61 15.631813975623455
		 68 0 78 0 80 0 85 17.109356124020799 90 15.063877032113359 100 0 110 0 112 0 120 0
		 123 0 126 0 132 0 135 0 138 0 141 0 144 0 150 0 153 0 156 0 162 0 165 0 168 0 171 0
		 174 0;
	setAttr -s 42 ".kit[0:41]"  1 18 18 1 1 1 18 18 
		18 18 1 1 1 18 18 18 18 18 18 1 18 18 18 18 1 
		1 1 18 18 1 1 1 18 1 1 18 18 1 1 1 18 1;
	setAttr -s 42 ".kot[0:41]"  1 18 18 1 1 1 18 18 
		18 18 1 1 1 18 18 18 18 18 1 1 1 18 18 1 1 
		1 1 18 18 1 1 1 18 18 1 18 18 1 1 1 18 18;
	setAttr -s 42 ".kix[0:41]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.0065152482129633427 
		1 0.0097726155072450638 1 1 1 1 0.036505360156297684 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1;
	setAttr -s 42 ".kiy[0:41]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.99997884035110474 
		0 -0.99995231628417969 0 0 0 0 -0.99933350086212158 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0;
	setAttr -s 42 ".kox[0:41]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.00651524867862463 
		1 0.0097726155072450638 1 1 1 1 0.036505360156297684 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1;
	setAttr -s 42 ".koy[0:41]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.99997884035110474 
		0 -0.99995225667953491 0 0 0 0 -0.99933350086212158 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0;
createNode animCurveTU -n "Hips_Control_scaleX";
	rename -uid "551738B9-0347-8F32-0FD2-A389EE0F3192";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 38 ".ktv[0:37]"  0 1 3 1 6 1 12 1 15 1 18 1 21 1 24 1 27 1
		 30 1 36 1 39 1 42 1 45 1 48 1 68 1 78 1 80 1 85 1 100 1 110 1 112 1 120 1 123 1 126 1
		 132 1 135 1 138 1 141 1 144 1 150 1 153 1 156 1 162 1 165 1 168 1 171 1 174 1;
	setAttr -s 38 ".kit[1:37]"  18 18 1 1 1 18 18 18 
		18 1 1 1 18 18 18 1 18 18 18 1 1 1 18 18 1 
		1 1 18 1 1 18 18 1 1 1 18 1;
	setAttr -s 38 ".kot[1:37]"  18 18 1 1 1 18 18 18 
		18 1 1 1 18 18 1 1 1 18 1 1 1 1 18 18 1 
		1 1 18 18 1 18 18 1 1 1 18 18;
	setAttr -s 38 ".kix[0:37]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 38 ".kiy[0:37]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 38 ".kox[0:37]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 38 ".koy[0:37]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "Hips_Control_scaleY";
	rename -uid "969531C6-C045-426D-85BE-12A7519E4CB3";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 38 ".ktv[0:37]"  0 1 3 1 6 1 12 1 15 1 18 1 21 1 24 1 27 1
		 30 1 36 1 39 1 42 1 45 1 48 1 68 1 78 1 80 1 85 1 100 1 110 1 112 1 120 1 123 1 126 1
		 132 1 135 1 138 1 141 1 144 1 150 1 153 1 156 1 162 1 165 1 168 1 171 1 174 1;
	setAttr -s 38 ".kit[1:37]"  18 18 1 1 1 18 18 18 
		18 1 1 1 18 18 18 1 18 18 18 1 1 1 18 18 1 
		1 1 18 1 1 18 18 1 1 1 18 1;
	setAttr -s 38 ".kot[1:37]"  18 18 1 1 1 18 18 18 
		18 1 1 1 18 18 1 1 1 18 1 1 1 1 18 18 1 
		1 1 18 18 1 18 18 1 1 1 18 18;
	setAttr -s 38 ".kix[0:37]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 38 ".kiy[0:37]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 38 ".kox[0:37]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 38 ".koy[0:37]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "Hips_Control_scaleZ";
	rename -uid "3D0EF866-F54B-7AD1-8D14-419508CB9933";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 38 ".ktv[0:37]"  0 1 3 1 6 1 12 1 15 1 18 1 21 1 24 1 27 1
		 30 1 36 1 39 1 42 1 45 1 48 1 68 1 78 1 80 1 85 1 100 1 110 1 112 1 120 1 123 1 126 1
		 132 1 135 1 138 1 141 1 144 1 150 1 153 1 156 1 162 1 165 1 168 1 171 1 174 1;
	setAttr -s 38 ".kit[1:37]"  18 18 1 1 1 18 18 18 
		18 1 1 1 18 18 18 1 18 18 18 1 1 1 18 18 1 
		1 1 18 1 1 18 18 1 1 1 18 1;
	setAttr -s 38 ".kot[1:37]"  18 18 1 1 1 18 18 18 
		18 1 1 1 18 18 1 1 1 18 1 1 1 1 18 18 1 
		1 1 18 18 1 18 18 1 1 1 18 18;
	setAttr -s 38 ".kix[0:37]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 38 ".kiy[0:37]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 38 ".kox[0:37]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 38 ".koy[0:37]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Spine1_Control_rotateX";
	rename -uid "D936871B-E04C-E9BA-8919-93BCA3F48552";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 47 ".ktv[0:46]"  0 -0.42586799105454476 3 -0.0032467407538818269
		 6 2.7524163801650769 9 5.8024871884519387 12 0.68240886776250875 15 -0.32019034076621267
		 18 4.8265180125867326 21 6.335494925185265 24 -0.42586799105454476 27 -0.0032467407538818269
		 30 2.7524163801650769 33 5.8024871884519387 36 0.68240886776250875 39 -0.32019034076621267
		 42 4.8265180125867326 45 6.335494925185265 48 -0.42586799105454476 50 0.31678756366466987
		 54 11.062494579488183 68 0.68240886776250886 78 -0.42586799105454476 80 -0.42586799105454476
		 86 -7.8364537637817726 89 6.2408570022054288 90 2.6016554853190277 96 11.186591537138348
		 100 0.68240886776250886 110 -0.42586799105454476 112 -0.42586799105454476 120 -0.42586799105454476
		 123 -0.0032467407538818269 126 2.7524163801650769 129 5.8024871884519387 132 0.68240886776250875
		 135 -0.32019034076621267 138 4.8265180125867326 141 6.335494925185265 144 -0.42586799105454476
		 150 -0.42586799105454476 153 -0.0032467407538818269 156 2.7524163801650769 159 5.8024871884519387
		 162 0.68240886776250875 165 -0.32019034076621267 168 4.8265180125867326 171 6.335494925185265
		 174 -0.42586799105454476;
	setAttr -s 47 ".kit[0:46]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 1 18 18 18 18 
		18 18 1 1 1 18 18 18 18 18 18 18 1 1 18 18 18 
		18 18 18 18 1;
	setAttr -s 47 ".kot[0:46]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 1 1 1 18 18 18 
		18 1 1 1 1 18 18 18 18 18 18 18 18 1 18 18 18 
		18 18 18 18 18;
	setAttr -s 47 ".kix[0:46]"  1 0.98468959331512451 0.92676788568496704 
		1 0.9219927191734314 1 0.90688127279281616 1 1 0.98468959331512451 0.92676788568496704 
		1 0.9219927191734314 1 0.90688127279281616 1 1 0.90619772672653198 1 0.99044078588485718 
		1 1 1 1 1 1 0.99044078588485718 1 1 1 0.98468959331512451 0.92676788568496704 1 0.9219927191734314 
		1 0.90688127279281616 1 1 1 0.98468959331512451 0.92676788568496704 1 0.9219927191734314 
		1 0.90688127279281616 1 1;
	setAttr -s 47 ".kiy[0:46]"  0 0.17431682348251343 0.37563449144363403 
		0 -0.38720723986625671 0 0.42138642072677612 0 0 0.17431682348251343 0.37563449144363403 
		0 -0.38720723986625671 0 0.42138642072677612 0 0 0.42285424470901489 0 -0.13793884217739105 
		0 0 0 0 0 0 -0.13793875277042389 0 0 0 0.17431682348251343 0.37563449144363403 0 
		-0.38720723986625671 0 0.42138642072677612 0 0 0 0.17431682348251343 0.37563449144363403 
		0 -0.38720723986625671 0 0.42138642072677612 0 0;
	setAttr -s 47 ".kox[0:46]"  1 0.98468959331512451 0.92676788568496704 
		1 0.9219927191734314 1 0.90688127279281616 1 1 0.98468959331512451 0.92676788568496704 
		1 0.9219927191734314 1 0.90688127279281616 1 1 0.90619772672653198 1 1 1 1 1 1 1 
		1 1 1 1 1 0.98468959331512451 0.92676788568496704 1 0.9219927191734314 1 0.90688127279281616 
		1 1 1 0.98468959331512451 0.92676788568496704 1 0.9219927191734314 1 0.90688127279281616 
		1 1;
	setAttr -s 47 ".koy[0:46]"  0 0.17431682348251343 0.37563449144363403 
		0 -0.38720723986625671 0 0.42138642072677612 0 0 0.17431682348251343 0.37563449144363403 
		0 -0.38720723986625671 0 0.42138642072677612 0 0 0.42285424470901489 0 0 0 0 0 0 
		0 0 0 0 0 0 0.17431682348251343 0.37563449144363403 0 -0.38720723986625671 0 0.42138642072677612 
		0 0 0 0.17431682348251343 0.37563449144363403 0 -0.38720723986625671 0 0.42138642072677612 
		0 0;
createNode animCurveTA -n "Spine1_Control_rotateY";
	rename -uid "3A651C82-D74B-30BE-0B60-3A8371206621";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 47 ".ktv[0:46]"  0 0.1865043062394306 3 -0.1075148390747022
		 6 6.428298634806846 9 1.4320169610030551 12 1.647705971859148 15 -2.1127401007074145
		 18 -5.6429079839256433 21 -6.2353395129819589 24 0.1865043062394306 27 -0.1075148390747022
		 30 6.428298634806846 33 1.4320169610030551 36 1.647705971859148 39 -2.1127401007074145
		 42 -5.6429079839256433 45 -6.2353395129819589 48 0.1865043062394306 50 9.5856187624796423
		 54 4.7150386408603691 68 1.647705971859148 78 0.1865043062394306 80 0.1865043062394306
		 86 -22.252277862059113 89 -13.092854897115176 90 -4.671694880885072 96 3.0730177084523169
		 100 1.647705971859148 110 0.1865043062394306 112 0.1865043062394306 120 0.1865043062394306
		 123 -0.1075148390747022 126 6.428298634806846 129 1.4320169610030551 132 1.647705971859148
		 135 -2.1127401007074145 138 -5.6429079839256433 141 -6.2353395129819589 144 0.1865043062394306
		 150 0.1865043062394306 153 -0.1075148390747022 156 6.428298634806846 159 1.4320169610030551
		 162 1.647705971859148 165 -2.1127401007074145 168 -5.6429079839256433 171 -6.2353395129819589
		 174 0.1865043062394306;
	setAttr -s 47 ".kit[0:46]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 1 18 18 18 18 
		18 18 1 1 1 18 18 18 18 18 18 18 1 1 18 18 18 
		18 18 18 18 1;
	setAttr -s 47 ".kot[0:46]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 1 1 1 18 18 18 
		18 1 1 1 1 18 18 18 18 18 18 18 18 1 18 18 18 
		18 18 18 18 18;
	setAttr -s 47 ".kix[0:46]"  1 1 1 1 1 0.89120274782180786 0.97056186199188232 
		1 1 1 1 1 1 0.89120274782180786 0.97056186199188232 1 0.60228699445724487 1 0.98336315155029297 
		0.9968910813331604 0.60228699445724487 1 1 0.4773063063621521 0.7187381386756897 
		1 0.99629133939743042 0.60228699445724487 0.60228699445724487 1 1 1 1 1 0.89120274782180786 
		0.97056186199188232 1 1 1 1 1 1 1 0.89120274782180786 0.97056186199188232 1 1;
	setAttr -s 47 ".kiy[0:46]"  0 0 0 0 0 -0.45360514521598816 -0.24085186421871185 
		0 0 0 0 0 0 -0.45360514521598816 -0.24085186421871185 0 0.79827964305877686 0 -0.18165040016174316 
		-0.078792110085487366 0.79827964305877686 0 0 0.87873691320419312 0.69528090953826904 
		0 -0.086043961346149445 0.79827964305877686 0.79827964305877686 0 0 0 0 0 -0.45360514521598816 
		-0.24085186421871185 0 0 0 0 0 0 0 -0.45360514521598816 -0.24085186421871185 0 0;
	setAttr -s 47 ".kox[0:46]"  1 1 1 1 1 0.89120274782180786 0.97056186199188232 
		1 1 1 1 1 1 0.89120274782180786 0.97056186199188232 1 0.60228699445724487 1 0.98336321115493774 
		0.60228699445724487 0.60228699445724487 0.60228699445724487 1 0.47730633616447449 
		0.71873807907104492 1 0.60228699445724487 0.60228699445724487 0.60228699445724487 
		1 1 1 1 1 0.89120274782180786 0.97056186199188232 1 1 1 1 1 1 1 0.89120274782180786 
		0.97056186199188232 1 1;
	setAttr -s 47 ".koy[0:46]"  0 0 0 0 0 -0.45360514521598816 -0.24085186421871185 
		0 0 0 0 0 0 -0.45360514521598816 -0.24085186421871185 0 0.79827970266342163 0 -0.18165041506290436 
		0.79827970266342163 0.79827970266342163 0.79827970266342163 0 0.87873691320419312 
		0.69528084993362427 0 0.79827970266342163 0.79827970266342163 0.79827970266342163 
		0 0 0 0 0 -0.45360514521598816 -0.24085186421871185 0 0 0 0 0 0 0 -0.45360514521598816 
		-0.24085186421871185 0 0;
createNode animCurveTA -n "Spine1_Control_rotateZ";
	rename -uid "3484E88E-D144-E311-75C1-DCA3142BA66E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 47 ".ktv[0:46]"  0 -1.7336992283006349 3 -3.6156489005737691
		 6 -1.3194255220071052 9 3.1150227956992786 12 2.6536808744224816 15 3.3966089445145591
		 18 0.055012491431611153 21 0.24280068328730792 24 -1.7336992283006349 27 -3.6156489005737691
		 30 -1.3194255220071052 33 3.1150227956992786 36 2.6536808744224816 39 3.3966089445145591
		 42 0.055012491431611153 45 0.24280068328730792 48 -1.7336992283006349 50 -12.301038417732293
		 54 6.4290672271413012 68 2.6536808744224816 78 -1.7336992283006349 80 -1.7336992283006349
		 86 17.788854979142037 89 8.7013453950668769 90 9.09468344610403 96 -2.9070690433059654
		 100 2.6536808744224816 110 -1.7336992283006349 112 -1.7336992283006349 120 -1.7336992283006349
		 123 -3.6156489005737691 126 -1.3194255220071052 129 3.1150227956992786 132 2.6536808744224816
		 135 3.3966089445145591 138 0.055012491431611153 141 0.24280068328730792 144 -1.7336992283006349
		 150 -1.7336992283006349 153 -3.6156489005737691 156 -1.3194255220071052 159 3.1150227956992786
		 162 2.6536808744224816 165 3.3966089445145591 168 0.055012491431611153 171 0.24280068328730792
		 174 -1.7336992283006349;
	setAttr -s 47 ".kit[0:46]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 1 18 18 18 18 
		18 18 1 1 1 18 18 18 18 18 18 18 1 1 18 18 18 
		18 18 18 18 1;
	setAttr -s 47 ".kot[0:46]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 1 1 1 18 18 18 
		18 1 1 1 1 18 18 18 18 18 18 18 18 1 18 18 18 
		18 18 18 18 18;
	setAttr -s 47 ".kix[0:46]"  1 1 0.90506219863891602 1 1 1 1 1 0.96558183431625366 
		1 0.90506219863891602 1 1 1 1 1 0.77027016878128052 1 1 0.99000346660614014 0.77027016878128052 
		1 1 1 1 1 1 0.77027016878128052 0.77027016878128052 1 1 0.90506219863891602 1 1 1 
		1 1 0.96558183431625366 1 1 0.90506219863891602 1 1 1 1 1 0.96558183431625366;
	setAttr -s 47 ".kiy[0:46]"  0 0 0.42527925968170166 0 0 0 0 0 -0.26009935140609741 
		0 0.42527925968170166 0 0 0 0 0 -0.63771772384643555 0 0 -0.14104297757148743 -0.63771772384643555 
		0 0 0 0 0 0 -0.63771772384643555 -0.63771772384643555 0 0 0.42527925968170166 0 0 
		0 0 0 -0.26009935140609741 0 0 0.42527925968170166 0 0 0 0 0 -0.26009935140609741;
	setAttr -s 47 ".kox[0:46]"  1 1 0.90506219863891602 1 1 1 1 1 0.96558183431625366 
		1 0.90506219863891602 1 1 1 1 1 0.77027016878128052 1 1 0.77027016878128052 0.77027016878128052 
		0.77027016878128052 1 1 1 1 0.77027016878128052 0.77027016878128052 0.77027016878128052 
		1 1 0.90506219863891602 1 1 1 1 1 1 1 1 0.90506219863891602 1 1 1 1 1 1;
	setAttr -s 47 ".koy[0:46]"  0 0 0.42527925968170166 0 0 0 0 0 -0.26009935140609741 
		0 0.42527925968170166 0 0 0 0 0 -0.63771772384643555 0 0 -0.63771772384643555 -0.63771772384643555 
		-0.63771772384643555 0 0 0 0 -0.63771772384643555 -0.63771772384643555 -0.63771772384643555 
		0 0 0.42527925968170166 0 0 0 0 0 0 0 0 0.42527925968170166 0 0 0 0 0 0;
createNode animCurveTU -n "Spine1_Control_visibility";
	rename -uid "DA546468-7341-146C-3D6A-DD9A151CE956";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 1 3 1 6 1 9 1 12 1 15 1 18 1 21 1 24 1
		 27 1 30 1 33 1 36 1 39 1 42 1 45 1 48 1 54 1 68 1 78 1 80 1 100 1 110 1 112 1 120 1
		 123 1 126 1 129 1 132 1 135 1 138 1 141 1 144 1 150 1 153 1 156 1 159 1 162 1 165 1
		 168 1 171 1 174 1;
	setAttr -s 42 ".kit[0:41]"  1 9 9 9 9 9 9 9 
		18 9 9 9 9 9 9 9 18 18 18 1 18 18 1 1 1 
		9 9 9 9 9 9 9 1 1 9 9 9 9 9 9 9 1;
	setAttr -s 42 ".kot[8:41]"  18 5 5 5 5 5 5 5 
		18 18 1 1 1 1 1 1 5 5 5 5 5 5 5 5 18 
		5 5 5 5 5 5 5 5 18;
	setAttr -s 42 ".kix[0:41]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 42 ".kiy[0:41]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 42 ".kox[18:41]"  1 1 1 1 1 1 0 0 0 0 0 0 0 0 1 0 0 0 0 0 
		0 0 0 1;
	setAttr -s 42 ".koy[18:41]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0;
createNode animCurveTL -n "Spine1_Control_translateX";
	rename -uid "CC4E22BB-BF40-8431-3C0E-BDB5C14C83F6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 3 0 6 0 9 0 12 0 15 0 18 0 21 0 24 0
		 27 0 30 0 33 0 36 0 39 0 42 0 45 0 48 0 54 0 68 0 78 0 80 0 100 0 110 0 112 0 120 0
		 123 0 126 0 129 0 132 0 135 0 138 0 141 0 144 0 150 0 153 0 156 0 159 0 162 0 165 0
		 168 0 171 0 174 0;
	setAttr -s 42 ".kit[0:41]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 1 18 18 1 1 1 
		18 18 18 18 18 18 18 1 1 18 18 18 18 18 18 18 1;
	setAttr -s 42 ".kot[0:41]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 1 1 1 1 1 1 1 
		18 18 18 18 18 18 18 18 1 18 18 18 18 18 18 18 18;
	setAttr -s 42 ".kix[0:41]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 42 ".kiy[0:41]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 42 ".kox[0:41]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 42 ".koy[0:41]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Spine1_Control_translateY";
	rename -uid "7616C9C2-E849-5382-4A0A-908C092FA744";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 3 0 6 0 9 0 12 0 15 0 18 0 21 0 24 0
		 27 0 30 0 33 0 36 0 39 0 42 0 45 0 48 0 54 0 68 0 78 0 80 0 100 0 110 0 112 0 120 0
		 123 0 126 0 129 0 132 0 135 0 138 0 141 0 144 0 150 0 153 0 156 0 159 0 162 0 165 0
		 168 0 171 0 174 0;
	setAttr -s 42 ".kit[0:41]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 1 18 18 1 1 1 
		18 18 18 18 18 18 18 1 1 18 18 18 18 18 18 18 1;
	setAttr -s 42 ".kot[0:41]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 1 1 1 1 1 1 1 
		18 18 18 18 18 18 18 18 1 18 18 18 18 18 18 18 18;
	setAttr -s 42 ".kix[0:41]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 42 ".kiy[0:41]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 42 ".kox[0:41]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 42 ".koy[0:41]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Spine1_Control_translateZ";
	rename -uid "BD05FD4E-3F49-F694-6B64-0882667EE666";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 0 3 0 6 0 9 0 12 0 15 0 18 0 21 0 24 0
		 27 0 30 0 33 0 36 0 39 0 42 0 45 0 48 0 54 0 68 0 78 0 80 0 100 0 110 0 112 0 120 0
		 123 0 126 0 129 0 132 0 135 0 138 0 141 0 144 0 150 0 153 0 156 0 159 0 162 0 165 0
		 168 0 171 0 174 0;
	setAttr -s 42 ".kit[0:41]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 1 18 18 1 1 1 
		18 18 18 18 18 18 18 1 1 18 18 18 18 18 18 18 1;
	setAttr -s 42 ".kot[0:41]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 1 1 1 1 1 1 1 
		18 18 18 18 18 18 18 18 1 18 18 18 18 18 18 18 18;
	setAttr -s 42 ".kix[0:41]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 42 ".kiy[0:41]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 42 ".kox[0:41]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 42 ".koy[0:41]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "Spine1_Control_scaleX";
	rename -uid "EA6082A3-EA43-05A6-CD03-CF99D605148F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 1 3 1 6 1 9 1 12 1 15 1 18 1 21 1 24 1
		 27 1 30 1 33 1 36 1 39 1 42 1 45 1 48 1 54 1 68 1 78 1 80 1 100 1 110 1 112 1 120 1
		 123 1 126 1 129 1 132 1 135 1 138 1 141 1 144 1 150 1 153 1 156 1 159 1 162 1 165 1
		 168 1 171 1 174 1;
	setAttr -s 42 ".kit[0:41]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 1 18 18 1 1 1 
		18 18 18 18 18 18 18 1 1 18 18 18 18 18 18 18 1;
	setAttr -s 42 ".kot[0:41]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 1 1 1 1 1 1 1 
		18 18 18 18 18 18 18 18 1 18 18 18 18 18 18 18 18;
	setAttr -s 42 ".kix[0:41]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 42 ".kiy[0:41]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 42 ".kox[0:41]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 42 ".koy[0:41]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "Spine1_Control_scaleY";
	rename -uid "22CA266C-AD49-8509-3A21-99BCA9FFB475";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 1 3 1 6 1 9 1 12 1 15 1 18 1 21 1 24 1
		 27 1 30 1 33 1 36 1 39 1 42 1 45 1 48 1 54 1 68 1 78 1 80 1 100 1 110 1 112 1 120 1
		 123 1 126 1 129 1 132 1 135 1 138 1 141 1 144 1 150 1 153 1 156 1 159 1 162 1 165 1
		 168 1 171 1 174 1;
	setAttr -s 42 ".kit[0:41]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 1 18 18 1 1 1 
		18 18 18 18 18 18 18 1 1 18 18 18 18 18 18 18 1;
	setAttr -s 42 ".kot[0:41]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 1 1 1 1 1 1 1 
		18 18 18 18 18 18 18 18 1 18 18 18 18 18 18 18 18;
	setAttr -s 42 ".kix[0:41]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 42 ".kiy[0:41]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 42 ".kox[0:41]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 42 ".koy[0:41]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "Spine1_Control_scaleZ";
	rename -uid "9AFA5A79-0548-EE88-91A8-B5B136B852B9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 1 3 1 6 1 9 1 12 1 15 1 18 1 21 1 24 1
		 27 1 30 1 33 1 36 1 39 1 42 1 45 1 48 1 54 1 68 1 78 1 80 1 100 1 110 1 112 1 120 1
		 123 1 126 1 129 1 132 1 135 1 138 1 141 1 144 1 150 1 153 1 156 1 159 1 162 1 165 1
		 168 1 171 1 174 1;
	setAttr -s 42 ".kit[0:41]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 1 18 18 1 1 1 
		18 18 18 18 18 18 18 1 1 18 18 18 18 18 18 18 1;
	setAttr -s 42 ".kot[0:41]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 1 1 1 1 1 1 1 
		18 18 18 18 18 18 18 18 1 18 18 18 18 18 18 18 18;
	setAttr -s 42 ".kix[0:41]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 42 ".kiy[0:41]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 42 ".kox[0:41]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 42 ".koy[0:41]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Neck_Control_rotateX";
	rename -uid "627060D7-104C-9AE3-4EF6-CB82A891B73B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 47 ".ktv[0:46]"  0 -5.1721060531987533 3 -8.2869990050436275
		 6 -15.301606988209253 9 -18.531877064281513 12 -6.7351997034193909 15 -7.3591347525581465
		 18 -17.100170817838325 21 -18.490977333373891 24 -5.1721060531987533 27 -8.2869990050436275
		 30 -15.301606988209253 33 -18.531877064281513 36 -6.7351997034193909 39 -7.3591347525581465
		 42 -17.100170817838325 45 -18.490977333373891 48 -5.1721060531987533 51 -8.2869990050436275
		 54 -15.301606988209253 57 -18.531877064281513 60 -6.7351997034193909 63 -7.3591347525581465
		 66 -17.100170817838325 68 -6.7351997034193909 78 -5.1721060531987533 80 0 100 -6.7351997034193909
		 110 -5.1721060531987533 112 -5.1721060531987533 120 -5.1721060531987533 123 -8.2869990050436275
		 126 -15.301606988209253 129 -18.531877064281513 132 -6.7351997034193909 135 -7.3591347525581465
		 138 -17.100170817838325 141 -18.490977333373891 144 -5.1721060531987533 150 -5.1721060531987533
		 153 -8.2869990050436275 156 -15.301606988209253 159 -18.531877064281513 162 -6.7351997034193909
		 165 -7.3591347525581465 168 -17.100170817838325 171 -18.490977333373891 174 -5.1721060531987533;
	setAttr -s 47 ".kit[0:46]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 1 
		18 18 1 1 1 18 18 18 18 18 18 18 1 1 18 18 18 
		18 18 18 18 1;
	setAttr -s 47 ".kot[0:46]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 1 1 
		1 1 1 1 1 18 18 18 18 18 18 18 18 1 18 18 18 
		18 18 18 18 18;
	setAttr -s 47 ".kix[0:46]"  1 0.81647127866744995 0.81337106227874756 
		1 1 0.9675028920173645 0.86406219005584717 1 1 0.81647127866744995 0.81337106227874756 
		1 1 0.9675028920173645 0.86406219005584717 1 1 0.81647127866744995 0.81337106227874756 
		1 1 0.9675028920173645 1 0.98124969005584717 1 1 1 1 1 1 0.81647127866744995 0.81337106227874756 
		1 1 0.9675028920173645 0.86406219005584717 1 1 1 0.81647127866744995 0.81337106227874756 
		1 1 0.9675028920173645 0.86406219005584717 1 1;
	setAttr -s 47 ".kiy[0:46]"  0 -0.57738608121871948 -0.58174526691436768 
		0 0 -0.25286009907722473 -0.50338506698608398 0 0 -0.57738608121871948 -0.58174526691436768 
		0 0 -0.25286009907722473 -0.50338506698608398 0 0 -0.57738608121871948 -0.58174526691436768 
		0 0 -0.25286009907722473 0 0.19274108111858368 0 0 0 0 0 0 -0.57738608121871948 -0.58174526691436768 
		0 0 -0.25286009907722473 -0.50338506698608398 0 0 0 -0.57738608121871948 -0.58174526691436768 
		0 0 -0.25286009907722473 -0.50338506698608398 0 0;
	setAttr -s 47 ".kox[0:46]"  1 0.81647127866744995 0.81337106227874756 
		1 1 0.9675028920173645 0.86406219005584717 1 1 0.81647127866744995 0.81337106227874756 
		1 1 0.9675028920173645 0.86406219005584717 1 1 0.81647127866744995 0.81337106227874756 
		1 1 0.9675028920173645 1 1 1 1 1 1 1 1 0.81647127866744995 0.81337106227874756 1 
		1 0.9675028920173645 0.86406219005584717 1 1 1 0.81647127866744995 0.81337106227874756 
		1 1 0.9675028920173645 0.86406219005584717 1 1;
	setAttr -s 47 ".koy[0:46]"  0 -0.57738608121871948 -0.58174526691436768 
		0 0 -0.25286009907722473 -0.50338506698608398 0 0 -0.57738608121871948 -0.58174526691436768 
		0 0 -0.25286009907722473 -0.50338506698608398 0 0 -0.57738608121871948 -0.58174526691436768 
		0 0 -0.25286009907722473 0 0 0 0 0 0 0 0 -0.57738608121871948 -0.58174526691436768 
		0 0 -0.25286009907722473 -0.50338506698608398 0 0 0 -0.57738608121871948 -0.58174526691436768 
		0 0 -0.25286009907722473 -0.50338506698608398 0 0;
createNode animCurveTA -n "Neck_Control_rotateY";
	rename -uid "E6D052D6-3445-27C4-27B1-118A9B86F5E8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 47 ".ktv[0:46]"  0 -2.4011350887106602 3 0.53532181399824985
		 6 0 9 -0.38169851600171872 12 2.2294492468690525 15 2.1049863795285524 18 1.8661234453764723
		 21 -1.6994938745698145 24 -2.4011350887106602 27 0.53532181399824985 30 0 33 -0.38169851600171872
		 36 2.2294492468690525 39 2.1049863795285524 42 1.8661234453764723 45 -1.6994938745698145
		 48 -2.4011350887106602 51 0.53532181399824985 54 0 57 -0.38169851600171872 60 2.2294492468690525
		 63 2.1049863795285524 66 1.8661234453764723 68 2.2294492468690525 78 -2.4011350887106602
		 80 0 100 2.2294492468690525 110 -2.4011350887106602 112 -2.4011350887106602 120 -2.4011350887106602
		 123 0.53532181399824985 126 0 129 -0.38169851600171872 132 2.2294492468690525 135 2.1049863795285524
		 138 1.8661234453764723 141 -1.6994938745698145 144 -2.4011350887106602 150 -2.4011350887106602
		 153 0.53532181399824985 156 0 159 -0.38169851600171872 162 2.2294492468690525 165 2.1049863795285524
		 168 1.8661234453764723 171 -1.6994938745698145 174 -2.4011350887106602;
	setAttr -s 47 ".kit[0:46]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 1 
		18 18 1 1 1 18 18 18 18 18 18 18 1 1 18 18 18 
		18 18 18 18 1;
	setAttr -s 47 ".kot[0:46]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 1 1 
		1 1 1 1 1 18 18 18 18 18 18 18 18 1 18 18 18 
		18 18 18 18 18;
	setAttr -s 47 ".kix[0:46]"  1 1 0.99795699119567871 1 1 0.99967849254608154 
		0.99503183364868164 0.95942127704620361 1 1 0.99795699119567871 1 1 0.99967849254608154 
		0.99503183364868164 0.95942127704620361 1 1 0.99795699119567871 1 1 0.99967849254608154 
		1 1 1 0.9961358904838562 1 1 1 1 1 0.99795699119567871 1 1 0.99967849254608154 0.99503183364868164 
		0.95942127704620361 1 1 1 0.99795699119567871 1 1 0.99967849254608154 0.99503183364868164 
		0.95942127704620361 1;
	setAttr -s 47 ".kiy[0:46]"  0 0 -0.063889302313327789 0 0 -0.025356771424412727 
		-0.099557586014270782 -0.28197658061981201 0 0 -0.063889302313327789 0 0 -0.025356771424412727 
		-0.099557586014270782 -0.28197658061981201 0 0 -0.063889302313327789 0 0 -0.025356771424412727 
		0 0 0 0.08782544732093811 0 0 0 0 0 -0.063889302313327789 0 0 -0.025356771424412727 
		-0.099557586014270782 -0.28197658061981201 0 0 0 -0.063889302313327789 0 0 -0.025356771424412727 
		-0.099557586014270782 -0.28197658061981201 0;
	setAttr -s 47 ".kox[0:46]"  1 1 0.99795699119567871 1 1 0.99967849254608154 
		0.99503183364868164 0.95942127704620361 1 1 0.99795699119567871 1 1 0.99967849254608154 
		0.99503183364868164 0.95942127704620361 1 1 0.99795699119567871 1 1 0.99967849254608154 
		1 1 1 1 1 1 1 1 1 0.99795699119567871 1 1 0.99967849254608154 0.99503183364868164 
		0.95942127704620361 1 1 1 0.99795699119567871 1 1 0.99967849254608154 0.99503183364868164 
		0.95942127704620361 1;
	setAttr -s 47 ".koy[0:46]"  0 0 -0.063889302313327789 0 0 -0.025356771424412727 
		-0.099557586014270782 -0.28197658061981201 0 0 -0.063889302313327789 0 0 -0.025356771424412727 
		-0.099557586014270782 -0.28197658061981201 0 0 -0.063889302313327789 0 0 -0.025356771424412727 
		0 0 0 0 0 0 0 0 0 -0.063889302313327789 0 0 -0.025356771424412727 -0.099557586014270782 
		-0.28197658061981201 0 0 0 -0.063889302313327789 0 0 -0.025356771424412727 -0.099557586014270782 
		-0.28197658061981201 0;
createNode animCurveTA -n "Neck_Control_rotateZ";
	rename -uid "B139DD70-3B46-89EE-51FD-9788D01D2B17";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 47 ".ktv[0:46]"  0 2.6205216882068543 3 0.9942030981288037
		 6 0 9 -1.434277492623302 12 -1.9287365844206092 15 -2.2350084620812227 18 -0.42879429859511853
		 21 2.2348707900772675 24 2.6205216882068543 27 0.9942030981288037 30 0 33 -1.434277492623302
		 36 -1.9287365844206092 39 -2.2350084620812227 42 -0.42879429859511853 45 2.2348707900772675
		 48 2.6205216882068543 51 0.9942030981288037 54 0 57 -1.434277492623302 60 -1.9287365844206092
		 63 -2.2350084620812227 66 -0.42879429859511853 68 -1.9287365844206092 78 2.6205216882068543
		 80 0 100 -1.9287365844206092 110 2.6205216882068543 112 2.6205216882068543 120 2.6205216882068543
		 123 0.9942030981288037 126 0 129 -1.434277492623302 132 -1.9287365844206092 135 -2.2350084620812227
		 138 -0.42879429859511853 141 2.2348707900772675 144 2.6205216882068543 150 2.6205216882068543
		 153 0.9942030981288037 156 0 159 -1.434277492623302 162 -1.9287365844206092 165 -2.2350084620812227
		 168 -0.42879429859511853 171 2.2348707900772675 174 2.6205216882068543;
	setAttr -s 47 ".kit[0:46]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 1 
		18 18 1 1 1 18 18 18 18 18 18 18 1 1 18 18 18 
		18 18 18 18 1;
	setAttr -s 47 ".kot[0:46]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 1 1 
		1 1 1 1 1 18 18 18 18 18 18 18 18 1 18 18 18 
		18 18 18 18 18;
	setAttr -s 47 ".kix[0:46]"  1 0.98367393016815186 0.9859306812286377 
		0.99105596542358398 0.99844115972518921 1 0.95460045337677002 0.98720210790634155 
		1 0.98367393016815186 0.9859306812286377 0.99105596542358398 0.99844115972518921 
		1 0.95460045337677002 0.98720210790634155 1 0.98367393016815186 0.9859306812286377 
		0.99105596542358398 0.99844115972518921 1 1 1 1 0.99626970291137695 1 1 1 1 0.98367393016815186 
		0.9859306812286377 0.99105596542358398 0.99844115972518921 1 0.95460045337677002 
		0.98720210790634155 1 1 0.98367393016815186 0.9859306812286377 0.99105596542358398 
		0.99844115972518921 1 0.95460045337677002 0.98720210790634155 1;
	setAttr -s 47 ".kiy[0:46]"  0 -0.17996011674404144 -0.16715462505817413 
		-0.13344688713550568 -0.055814426392316818 0 0.29788923263549805 0.15947368741035461 
		0 -0.17996011674404144 -0.16715462505817413 -0.13344688713550568 -0.055814426392316818 
		0 0.29788923263549805 0.15947368741035461 0 -0.17996011674404144 -0.16715462505817413 
		-0.13344688713550568 -0.055814426392316818 0 0 0 0 -0.086294583976268768 0 0 0 0 
		-0.17996011674404144 -0.16715462505817413 -0.13344688713550568 -0.055814426392316818 
		0 0.29788923263549805 0.15947368741035461 0 0 -0.17996011674404144 -0.16715462505817413 
		-0.13344688713550568 -0.055814426392316818 0 0.29788923263549805 0.15947368741035461 
		0;
	setAttr -s 47 ".kox[0:46]"  1 0.98367393016815186 0.9859306812286377 
		0.99105596542358398 0.99844115972518921 1 0.95460045337677002 0.98720210790634155 
		1 0.98367393016815186 0.9859306812286377 0.99105596542358398 0.99844115972518921 
		1 0.95460045337677002 0.98720210790634155 1 0.98367393016815186 0.9859306812286377 
		0.99105596542358398 0.99844115972518921 1 1 1 1 1 1 1 1 1 0.98367393016815186 0.9859306812286377 
		0.99105596542358398 0.99844115972518921 1 0.95460045337677002 0.98720210790634155 
		1 1 0.98367393016815186 0.9859306812286377 0.99105596542358398 0.99844115972518921 
		1 0.95460045337677002 0.98720210790634155 1;
	setAttr -s 47 ".koy[0:46]"  0 -0.17996011674404144 -0.16715462505817413 
		-0.13344688713550568 -0.055814426392316818 0 0.29788923263549805 0.15947368741035461 
		0 -0.17996011674404144 -0.16715462505817413 -0.13344688713550568 -0.055814426392316818 
		0 0.29788923263549805 0.15947368741035461 0 -0.17996011674404144 -0.16715462505817413 
		-0.13344688713550568 -0.055814426392316818 0 0 0 0 0 0 0 0 0 -0.17996011674404144 
		-0.16715462505817413 -0.13344688713550568 -0.055814426392316818 0 0.29788923263549805 
		0.15947368741035461 0 0 -0.17996011674404144 -0.16715462505817413 -0.13344688713550568 
		-0.055814426392316818 0 0.29788923263549805 0.15947368741035461 0;
createNode animCurveTU -n "Neck_Control_visibility";
	rename -uid "5CFFACAA-6847-D196-BAB4-CD80C4C70336";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 47 ".ktv[0:46]"  0 1 3 1 6 1 9 1 12 1 15 1 18 1 21 1 24 1
		 27 1 30 1 33 1 36 1 39 1 42 1 45 1 48 1 51 1 54 1 57 1 60 1 63 1 66 1 68 1 78 1 80 1
		 100 1 110 1 112 1 120 1 123 1 126 1 129 1 132 1 135 1 138 1 141 1 144 1 150 1 153 1
		 156 1 159 1 162 1 165 1 168 1 171 1 174 1;
	setAttr -s 47 ".kit[0:46]"  1 9 9 9 9 9 9 9 
		18 9 9 9 9 9 9 9 18 18 18 18 18 18 18 18 1 
		18 18 1 1 1 9 9 9 9 9 9 9 1 1 9 9 9 
		9 9 9 9 1;
	setAttr -s 47 ".kot[8:46]"  18 5 5 5 5 5 5 5 
		18 18 18 18 18 18 18 1 1 1 1 1 1 5 5 5 5 
		5 5 5 5 18 5 5 5 5 5 5 5 5 18;
	setAttr -s 47 ".kix[0:46]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 47 ".kiy[0:46]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 47 ".kox[23:46]"  1 1 1 1 1 1 0 0 0 0 0 0 0 0 1 0 0 0 0 0 
		0 0 0 1;
	setAttr -s 47 ".koy[23:46]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0;
createNode animCurveTL -n "Neck_Control_translateX";
	rename -uid "699E6956-9848-1057-40DC-BE947025018B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 47 ".ktv[0:46]"  0 0 3 0 6 0 9 0 12 0 15 0 18 0 21 0 24 0
		 27 0 30 0 33 0 36 0 39 0 42 0 45 0 48 0 51 0 54 0 57 0 60 0 63 0 66 0 68 0 78 0 80 0
		 100 0 110 0 112 0 120 0 123 0 126 0 129 0 132 0 135 0 138 0 141 0 144 0 150 0 153 0
		 156 0 159 0 162 0 165 0 168 0 171 0 174 0;
	setAttr -s 47 ".kit[0:46]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 1 
		18 18 1 1 1 18 18 18 18 18 18 18 1 1 18 18 18 
		18 18 18 18 1;
	setAttr -s 47 ".kot[0:46]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 1 1 
		1 1 1 1 1 18 18 18 18 18 18 18 18 1 18 18 18 
		18 18 18 18 18;
	setAttr -s 47 ".kix[0:46]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 47 ".kiy[0:46]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 47 ".kox[0:46]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 47 ".koy[0:46]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Neck_Control_translateY";
	rename -uid "4BA43C2E-1C4A-C475-35AE-79AED59306EF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 47 ".ktv[0:46]"  0 0 3 0 6 0 9 0 12 0 15 0 18 0 21 0 24 0
		 27 0 30 0 33 0 36 0 39 0 42 0 45 0 48 0 51 0 54 0 57 0 60 0 63 0 66 0 68 0 78 0 80 0
		 100 0 110 0 112 0 120 0 123 0 126 0 129 0 132 0 135 0 138 0 141 0 144 0 150 0 153 0
		 156 0 159 0 162 0 165 0 168 0 171 0 174 0;
	setAttr -s 47 ".kit[0:46]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 1 
		18 18 1 1 1 18 18 18 18 18 18 18 1 1 18 18 18 
		18 18 18 18 1;
	setAttr -s 47 ".kot[0:46]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 1 1 
		1 1 1 1 1 18 18 18 18 18 18 18 18 1 18 18 18 
		18 18 18 18 18;
	setAttr -s 47 ".kix[0:46]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 47 ".kiy[0:46]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 47 ".kox[0:46]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 47 ".koy[0:46]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Neck_Control_translateZ";
	rename -uid "C7E0D71C-A840-8FF1-4E3C-16BCB7BD78CE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 47 ".ktv[0:46]"  0 0 3 0 6 0 9 0 12 0 15 0 18 0 21 0 24 0
		 27 0 30 0 33 0 36 0 39 0 42 0 45 0 48 0 51 0 54 0 57 0 60 0 63 0 66 0 68 0 78 0 80 0
		 100 0 110 0 112 0 120 0 123 0 126 0 129 0 132 0 135 0 138 0 141 0 144 0 150 0 153 0
		 156 0 159 0 162 0 165 0 168 0 171 0 174 0;
	setAttr -s 47 ".kit[0:46]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 1 
		18 18 1 1 1 18 18 18 18 18 18 18 1 1 18 18 18 
		18 18 18 18 1;
	setAttr -s 47 ".kot[0:46]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 1 1 
		1 1 1 1 1 18 18 18 18 18 18 18 18 1 18 18 18 
		18 18 18 18 18;
	setAttr -s 47 ".kix[0:46]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 47 ".kiy[0:46]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 47 ".kox[0:46]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 47 ".koy[0:46]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "Neck_Control_scaleX";
	rename -uid "7B1ACD91-7545-0AEF-8094-868024506F59";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 47 ".ktv[0:46]"  0 1 3 1 6 1 9 1 12 1 15 1 18 1 21 1 24 1
		 27 1 30 1 33 1 36 1 39 1 42 1 45 1 48 1 51 1 54 1 57 1 60 1 63 1 66 1 68 1 78 1 80 1
		 100 1 110 1 112 1 120 1 123 1 126 1 129 1 132 1 135 1 138 1 141 1 144 1 150 1 153 1
		 156 1 159 1 162 1 165 1 168 1 171 1 174 1;
	setAttr -s 47 ".kit[0:46]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 1 
		18 18 1 1 1 18 18 18 18 18 18 18 1 1 18 18 18 
		18 18 18 18 1;
	setAttr -s 47 ".kot[0:46]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 1 1 
		1 1 1 1 1 18 18 18 18 18 18 18 18 1 18 18 18 
		18 18 18 18 18;
	setAttr -s 47 ".kix[0:46]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 47 ".kiy[0:46]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 47 ".kox[0:46]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 47 ".koy[0:46]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "Neck_Control_scaleY";
	rename -uid "2FA6E035-1C40-4A7B-DA52-528CA70E67D8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 47 ".ktv[0:46]"  0 1 3 1 6 1 9 1 12 1 15 1 18 1 21 1 24 1
		 27 1 30 1 33 1 36 1 39 1 42 1 45 1 48 1 51 1 54 1 57 1 60 1 63 1 66 1 68 1 78 1 80 1
		 100 1 110 1 112 1 120 1 123 1 126 1 129 1 132 1 135 1 138 1 141 1 144 1 150 1 153 1
		 156 1 159 1 162 1 165 1 168 1 171 1 174 1;
	setAttr -s 47 ".kit[0:46]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 1 
		18 18 1 1 1 18 18 18 18 18 18 18 1 1 18 18 18 
		18 18 18 18 1;
	setAttr -s 47 ".kot[0:46]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 1 1 
		1 1 1 1 1 18 18 18 18 18 18 18 18 1 18 18 18 
		18 18 18 18 18;
	setAttr -s 47 ".kix[0:46]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 47 ".kiy[0:46]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 47 ".kox[0:46]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 47 ".koy[0:46]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "Neck_Control_scaleZ";
	rename -uid "A18B3FCC-4045-5BD9-47E5-3E832CCD2B87";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 47 ".ktv[0:46]"  0 1 3 1 6 1 9 1 12 1 15 1 18 1 21 1 24 1
		 27 1 30 1 33 1 36 1 39 1 42 1 45 1 48 1 51 1 54 1 57 1 60 1 63 1 66 1 68 1 78 1 80 1
		 100 1 110 1 112 1 120 1 123 1 126 1 129 1 132 1 135 1 138 1 141 1 144 1 150 1 153 1
		 156 1 159 1 162 1 165 1 168 1 171 1 174 1;
	setAttr -s 47 ".kit[0:46]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 1 
		18 18 1 1 1 18 18 18 18 18 18 18 1 1 18 18 18 
		18 18 18 18 1;
	setAttr -s 47 ".kot[0:46]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 1 1 
		1 1 1 1 1 18 18 18 18 18 18 18 18 1 18 18 18 
		18 18 18 18 18;
	setAttr -s 47 ".kix[0:46]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 47 ".kiy[0:46]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 47 ".kox[0:46]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 47 ".koy[0:46]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "LeftHand_Control_translateX";
	rename -uid "CE71CE32-144C-1E6E-3F0F-52864405E4F8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 50 ".ktv[0:49]"  0 -9.6348899746415313 3 -10.058907260314705
		 6 -9.5268746134474682 9 -10.758191079019603 12 -9.5268746134474682 15 -9.5268746134474682
		 18 -12.41220036213759 21 -9.5268746134474682 24 -9.6348899746415313 27 -10.058907260314705
		 30 -9.5268746134474682 33 -10.758191079019603 36 -9.5268746134474682 39 -9.5268746134474682
		 42 -12.41220036213759 45 -9.5268746134474682 48 -9.6348899746415313 51 -1.7419771409842255
		 54 -21.006184573482813 57 -28.153502667282829 61 -20.529896829345375 66 -12.41220036213759
		 68 -9.5268746134474682 78 -9.6348899746415313 80 -9.6348899746415313 85 -68.220310117306695
		 89 -76.666577109000556 93 -24.217558762410022 97 -17.045705025559954 100 -9.5268746134474682
		 110 -9.6348899746415313 112 -9.6348899746415313 120 -9.6348899746415313 123 -10.058907260314705
		 126 -9.5268746134474682 129 -10.758191079019603 132 -9.5268746134474682 135 -9.5268746134474682
		 138 -12.41220036213759 141 -9.5268746134474682 144 -9.6348899746415313 150 -9.6348899746415313
		 153 -10.058907260314705 156 -9.5268746134474682 159 -10.758191079019603 162 -9.5268746134474682
		 165 -9.5268746134474682 168 -12.41220036213759 171 -9.5268746134474682 174 -9.6348899746415313;
	setAttr -s 50 ".kit[23:49]"  1 18 18 18 18 18 18 1 
		1 18 18 18 18 18 18 18 18 1 18 18 18 18 18 18 18 
		18 1;
	setAttr -s 50 ".kot[22:49]"  1 1 1 18 18 18 18 1 
		1 1 1 18 18 18 18 18 18 18 18 1 18 18 18 18 18 
		18 18 18;
	setAttr -s 50 ".kix[23:49]"  1 1 0.0065773795358836651 1 0.007746091578155756 
		0.019849928095936775 1 1 1 1 1 1 1 1 1 1 1 0.4252839982509613 1 1 1 1 1 1 1 1 0.4252839982509613;
	setAttr -s 50 ".kiy[23:49]"  0 0 -0.99997836351394653 0 0.99997001886367798 
		0.99980294704437256 0 0 0 0 0 0 0 0 0 0 0 -0.90505993366241455 0 0 0 0 0 0 0 0 -0.90505993366241455;
	setAttr -s 50 ".kox[22:49]"  1 1 1 0.0065773795358836651 1 0.007746091578155756 
		0.019849929958581924 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 50 ".koy[22:49]"  0 0 0 -0.99997842311859131 0 0.99997001886367798 
		0.99980294704437256 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "LeftHand_Control_translateY";
	rename -uid "0A75A4EE-8D4B-CECE-C4F2-AEAEE65A38B6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 14.469156224322091 3 11.893313831295472
		 6 9.3011214645687801 9 16.217754757462188 12 17.46555777503734 15 8.1813100194773369
		 18 7.1283708169695501 21 11.18423538567643 24 14.469156224322091 27 11.893313831295472
		 30 9.3011214645687801 33 16.217754757462188 36 17.46555777503734 39 8.1813100194773369
		 42 7.1283708169695501 45 11.18423538567643 48 14.469156224322091 51 5.8745106618155774
		 54 -6.9643260355707319 57 -3.7519424786482762 61 0.87862379733525131 66 7.1283708169695501
		 68 17.46555777503734 78 14.469156224322091 80 14.469156224322091 85 29.272170749500631
		 89 22.689725499171882 93 -2.3545546608648138 100 17.46555777503734 110 14.469156224322091
		 112 14.469156224322091 120 14.469156224322091 123 11.893313831295472 126 9.3011214645687801
		 129 16.217754757462188 132 17.46555777503734 135 8.1813100194773369 138 7.1283708169695501
		 141 11.18423538567643 144 14.469156224322091 150 14.469156224322091 153 11.893313831295472
		 156 9.3011214645687801 159 16.217754757462188 162 17.46555777503734 165 8.1813100194773369
		 168 7.1283708169695501 171 11.18423538567643 174 14.469156224322091;
	setAttr -s 49 ".kit[23:48]"  1 18 18 18 18 18 1 1 
		18 18 18 18 18 18 18 18 1 18 18 18 18 18 18 18 18 
		1;
	setAttr -s 49 ".kot[22:48]"  1 1 1 18 18 18 1 1 
		1 1 18 18 18 18 18 18 18 18 1 18 18 18 18 18 18 
		18 18;
	setAttr -s 49 ".kix[23:48]"  1 1 1 0.010539021342992783 1 1 1 1 1 0.048317786306142807 
		1 0.033373419195413589 1 0.039540819823741913 1 0.03403656929731369 1 1 0.048317786306142807 
		1 0.033373419195413589 1 0.039540819823741913 1 0.03403656929731369 1;
	setAttr -s 49 ".kiy[23:48]"  0 0 0 -0.99994444847106934 0 0 0 0 0 -0.99883198738098145 
		0 0.9994429349899292 0 -0.9992179274559021 0 0.99942058324813843 0 0 -0.99883198738098145 
		0 0.9994429349899292 0 -0.9992179274559021 0 0.99942058324813843 0;
	setAttr -s 49 ".kox[22:48]"  1 1 1 1 0.010539022274315357 1 1 1 1 1 
		0.048317786306142807 1 0.033373419195413589 1 0.039540819823741913 1 0.03403656929731369 
		1 1 0.048317786306142807 1 0.033373419195413589 1 0.039540819823741913 1 0.03403656929731369 
		1;
	setAttr -s 49 ".koy[22:48]"  0 0 0 0 -0.99994444847106934 0 0 0 0 0 
		-0.99883198738098145 0 0.9994429349899292 0 -0.9992179274559021 0 0.99942058324813843 
		0 0 -0.99883198738098145 0 0.9994429349899292 0 -0.9992179274559021 0 0.99942058324813843 
		0;
createNode animCurveTL -n "LeftHand_Control_translateZ";
	rename -uid "3D76B49C-D943-E698-7EC0-68979704BD69";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 50 ".ktv[0:49]"  0 34.346659440255642 3 37.495890489468898
		 6 36.188862437179544 9 39.256467575339762 12 36.188862437179544 15 36.188862437179544
		 18 37.722027689483689 21 36.188862437179544 24 34.346659440255642 27 37.495890489468898
		 30 36.188862437179544 33 39.256467575339762 36 36.188862437179544 39 36.188862437179544
		 42 37.722027689483689 45 36.188862437179544 48 34.346659440255642 51 13.79258555368348
		 54 9.7598704105480891 57 20.246929418379018 61 26.468928030385921 66 37.722027689483689
		 68 36.188862437179544 78 34.346659440255642 80 34.346659440255642 85 35.597585975495463
		 89 38.119757801878926 93 70.233663718006014 97 42.55715927887077 100 36.188862437179544
		 110 34.346659440255642 112 34.346659440255642 120 34.346659440255642 123 37.495890489468898
		 126 36.188862437179544 129 39.256467575339762 132 36.188862437179544 135 36.188862437179544
		 138 37.722027689483689 141 36.188862437179544 144 34.346659440255642 150 34.346659440255642
		 153 37.495890489468898 156 36.188862437179544 159 39.256467575339762 162 36.188862437179544
		 165 36.188862437179544 168 37.722027689483689 171 36.188862437179544 174 34.346659440255642;
	setAttr -s 50 ".kit[23:49]"  1 18 18 18 18 18 18 1 
		1 18 18 18 18 18 18 18 18 1 18 18 18 18 18 18 18 
		18 1;
	setAttr -s 50 ".kot[22:49]"  1 1 1 18 18 18 18 1 
		1 1 1 18 18 18 18 18 18 18 18 1 18 18 18 18 18 
		18 18 18;
	setAttr -s 50 ".kix[23:49]"  0.022612065076828003 1 0.098900556564331055 
		0.02202150970697403 1 0.0085668237879872322 0.075179524719715118 0.022612065076828003 
		0.022612065076828003 1 1 1 1 1 1 1 0.073863670229911804 1 1 1 1 1 1 1 1 0.073863670229911804 
		1;
	setAttr -s 50 ".kiy[23:49]"  -0.99974435567855835 0 0.99509739875793457 
		0.99975746870040894 0 -0.99996334314346313 -0.99716997146606445 -0.99974435567855835 
		-0.99974435567855835 0 0 0 0 0 0 0 -0.99726831912994385 0 0 0 0 0 0 0 0 -0.99726831912994385 
		0;
	setAttr -s 50 ".kox[22:49]"  0.022612065076828003 0.022612065076828003 
		0.022612065076828003 0.098900549113750458 0.02202150970697403 1 0.0085668237879872322 
		0.022612065076828003 0.022612065076828003 0.022612065076828003 1 1 1 1 1 1 1 0.073863670229911804 
		1 1 1 1 1 1 1 1 0.073863670229911804 1;
	setAttr -s 50 ".koy[22:49]"  -0.99974435567855835 -0.99974435567855835 
		-0.99974435567855835 0.99509733915328979 0.99975746870040894 0 -0.99996334314346313 
		-0.99974435567855835 -0.99974435567855835 -0.99974435567855835 0 0 0 0 0 0 0 -0.99726831912994385 
		0 0 0 0 0 0 0 0 -0.99726831912994385 0;
createNode animCurveTL -n "RightHand_Control_translateX";
	rename -uid "26619418-EB43-24E9-4941-B9983D62EB89";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 15.317983706128235 3 14.893966420455062
		 6 15.425999067322298 9 14.194682601750163 12 15.425999067322298 15 15.425999067322298
		 18 12.540673318632177 21 15.425999067322298 24 15.317983706128235 27 14.893966420455062
		 30 15.425999067322298 33 14.194682601750163 36 15.425999067322298 39 15.425999067322298
		 42 12.540673318632177 45 15.425999067322298 48 15.317983706128235 54 36.152600568705374
		 57 43.444716470607375 61 27.93968072001206 66 12.540673318632177 68 15.425999067322298
		 78 15.317983706128235 80 15.317983706128235 85 -8.3230187211699658 89 -7.7203288742796694
		 92 -1.7174622124764687 95 8.511352800294727 100 15.425999067322298 110 15.317983706128235
		 112 15.317983706128235 120 15.317983706128235 123 14.893966420455062 126 15.425999067322298
		 129 14.194682601750163 132 15.425999067322298 135 15.425999067322298 138 12.540673318632177
		 141 15.425999067322298 144 15.317983706128235 150 15.317983706128235 153 14.893966420455062
		 156 15.425999067322298 159 14.194682601750163 162 15.425999067322298 165 15.425999067322298
		 168 12.540673318632177 171 15.425999067322298 174 15.317983706128235;
	setAttr -s 49 ".kit[22:48]"  1 18 18 18 18 18 18 1 
		1 18 18 18 18 18 18 18 18 1 18 18 18 18 18 18 18 
		18 1;
	setAttr -s 49 ".kot[21:48]"  1 1 1 18 18 18 18 1 
		1 1 1 18 18 18 18 18 18 18 18 1 18 18 18 18 18 
		18 18 18;
	setAttr -s 49 ".kix[22:48]"  1 1 1 0.091790109872817993 0.01540015172213316 
		0.019440080970525742 1 1 1 1 1 1 1 1 1 1 1 0.4252839982509613 1 1 1 1 1 1 1 1 0.4252839982509613;
	setAttr -s 49 ".kiy[22:48]"  0 0 0 0.99577832221984863 0.99988144636154175 
		0.99981105327606201 0 0 0 0 0 0 0 0 0 0 0 -0.90505993366241455 0 0 0 0 0 0 0 0 -0.90505993366241455;
	setAttr -s 49 ".kox[21:48]"  1 1 1 1 0.091790109872817993 0.01540015172213316 
		0.019440080970525742 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 49 ".koy[21:48]"  0 0 0 0 0.99577838182449341 0.99988144636154175 
		0.99981105327606201 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "RightHand_Control_translateY";
	rename -uid "C100FD64-7B4D-D129-4EBD-54910279C708";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 48 ".ktv[0:47]"  0 26.91717564563271 3 24.341333252606091
		 6 21.749140885879399 9 28.665774178772807 12 29.913577196347958 15 20.629329440787956
		 18 19.576390238280169 21 23.632254806987049 24 26.91717564563271 27 24.341333252606091
		 30 21.749140885879399 33 28.665774178772807 36 29.913577196347958 39 20.629329440787956
		 42 19.576390238280169 45 23.632254806987049 48 26.91717564563271 54 12.449966523568927
		 57 7.3864433308466033 61 10.4471322361492 66 19.576390238280169 68 29.913577196347958
		 78 26.91717564563271 80 26.91717564563271 85 7.8141588113769131 89 -0.23485954116355501
		 92 -9.5549944892957459 100 29.913577196347958 110 26.91717564563271 112 26.91717564563271
		 120 26.91717564563271 123 24.341333252606091 126 21.749140885879399 129 28.665774178772807
		 132 29.913577196347958 135 20.629329440787956 138 19.576390238280169 141 23.632254806987049
		 144 26.91717564563271 150 26.91717564563271 153 24.341333252606091 156 21.749140885879399
		 159 28.665774178772807 162 29.913577196347958 165 20.629329440787956 168 19.576390238280169
		 171 23.632254806987049 174 26.91717564563271;
	setAttr -s 48 ".kit[22:47]"  1 18 18 18 18 18 1 1 
		18 18 18 18 18 18 18 18 1 18 18 18 18 18 18 18 18 
		1;
	setAttr -s 48 ".kot[21:47]"  1 1 1 18 18 18 1 1 
		1 1 18 18 18 18 18 18 18 18 1 18 18 18 18 18 18 
		18 18;
	setAttr -s 48 ".kix[22:47]"  1 1 0.013809802941977978 0.016789846122264862 
		1 1 1 1 1 0.048317786306142807 1 0.033373419195413589 1 0.039540819823741913 1 0.03403656929731369 
		1 1 0.048317786306142807 1 0.033373419195413589 1 0.039540819823741913 1 0.03403656929731369 
		1;
	setAttr -s 48 ".kiy[22:47]"  0 0 -0.99990469217300415 -0.9998590350151062 
		0 0 0 0 0 -0.99883198738098145 0 0.9994429349899292 0 -0.9992179274559021 0 0.99942058324813843 
		0 0 -0.99883198738098145 0 0.9994429349899292 0 -0.9992179274559021 0 0.99942058324813843 
		0;
	setAttr -s 48 ".kox[21:47]"  1 1 1 0.013809802941977978 0.016789844259619713 
		1 1 1 1 1 0.048317786306142807 1 0.033373419195413589 1 0.039540819823741913 1 0.03403656929731369 
		1 1 0.048317786306142807 1 0.033373419195413589 1 0.039540819823741913 1 0.03403656929731369 
		1;
	setAttr -s 48 ".koy[21:47]"  0 0 0 -0.99990463256835938 -0.9998590350151062 
		0 0 0 0 0 -0.99883198738098145 0 0.9994429349899292 0 -0.9992179274559021 0 0.99942058324813843 
		0 0 -0.99883198738098145 0 0.9994429349899292 0 -0.9992179274559021 0 0.99942058324813843 
		0;
createNode animCurveTL -n "RightHand_Control_translateZ";
	rename -uid "DEBC8C61-B340-26E2-19D6-6CA44C4D3F1A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 49 ".ktv[0:48]"  0 32.529990356767193 3 35.679221405980449
		 6 34.372193353691095 9 37.439798491851313 12 34.372193353691095 15 34.372193353691095
		 18 35.905358605995239 21 34.372193353691095 24 32.529990356767193 27 35.679221405980449
		 30 34.372193353691095 33 37.439798491851313 36 34.372193353691095 39 34.372193353691095
		 42 35.905358605995239 45 34.372193353691095 48 32.529990356767193 54 65.041933617326976
		 57 76.421113758522893 61 66.864465286316133 66 35.905358605995239 68 34.372193353691095
		 78 32.529990356767193 80 32.529990356767193 85 -18.180880817863546 89 -11.632049191744811
		 92 41.779361548173632 95 49.886139948792795 100 34.372193353691095 110 32.529990356767193
		 112 32.529990356767193 120 32.529990356767193 123 35.679221405980449 126 34.372193353691095
		 129 37.439798491851313 132 34.372193353691095 135 34.372193353691095 138 35.905358605995239
		 141 34.372193353691095 144 32.529990356767193 150 32.529990356767193 153 35.679221405980449
		 156 34.372193353691095 159 37.439798491851313 162 34.372193353691095 165 34.372193353691095
		 168 35.905358605995239 171 34.372193353691095 174 32.529990356767193;
	setAttr -s 49 ".kit[22:48]"  1 18 18 18 18 18 18 1 
		1 18 18 18 18 18 18 18 18 1 18 18 18 18 18 18 18 
		18 1;
	setAttr -s 49 ".kot[21:48]"  1 1 1 18 18 18 18 1 
		1 1 1 18 18 18 18 18 18 18 18 1 18 18 18 18 18 
		18 18 18;
	setAttr -s 49 ".kix[22:48]"  1 1 1 0.0084829637780785561 0.0051396638154983521 
		1 0.075179517269134521 1 1 1 1 1 1 1 1 1 0.073863670229911804 1 1 1 1 1 1 1 1 0.073863670229911804 
		1;
	setAttr -s 49 ".kiy[22:48]"  0 0 0 0.99996399879455566 0.99998682737350464 
		0 -0.99717003107070923 0 0 0 0 0 0 0 0 0 -0.99726831912994385 0 0 0 0 0 0 0 0 -0.99726831912994385 
		0;
	setAttr -s 49 ".kox[21:48]"  1 1 1 1 0.0084829637780785561 0.0051396638154983521 
		1 1 1 1 1 1 1 1 1 1 1 0.073863670229911804 1 1 1 1 1 1 1 1 0.073863670229911804 1;
	setAttr -s 49 ".koy[21:48]"  0 0 0 0 0.99996399879455566 0.99998682737350464 
		0 0 0 0 0 0 0 0 0 0 0 -0.99726831912994385 0 0 0 0 0 0 0 0 -0.99726831912994385 0;
createNode animCurveTU -n "RightHand_Control_visibility";
	rename -uid "B50FEEBD-1C49-9580-F4FE-AEBDA4505A9F";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 45 ".ktv[0:44]"  0 1 3 1 6 1 9 1 12 1 15 1 18 1 21 1 24 1
		 27 1 30 1 33 1 36 1 39 1 42 1 45 1 48 1 54 1 57 1 61 1 66 1 68 1 78 1 80 1 100 1
		 110 1 112 1 120 1 123 1 126 1 129 1 132 1 135 1 138 1 141 1 144 1 150 1 153 1 156 1
		 159 1 162 1 165 1 168 1 171 1 174 1;
	setAttr -s 45 ".kit[8:44]"  18 9 9 9 9 9 9 9 
		18 9 18 9 18 18 1 18 18 1 1 9 9 9 9 9 9 
		9 9 1 9 9 9 9 9 9 9 9 1;
	setAttr -s 45 ".kot[0:44]"  5 5 5 5 5 5 5 5 
		18 5 5 5 5 5 5 5 18 5 18 5 18 1 1 1 1 
		1 1 5 5 5 5 5 5 5 5 18 5 5 5 5 5 5 
		5 5 18;
	setAttr -s 45 ".kix[22:44]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1;
	setAttr -s 45 ".kiy[22:44]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0;
	setAttr -s 45 ".kox[21:44]"  1 1 1 1 1 1 0 0 0 0 0 0 0 0 1 0 0 0 0 0 
		0 0 0 1;
	setAttr -s 45 ".koy[21:44]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0;
createNode animCurveTA -n "RightHand_Control_rotateX";
	rename -uid "B5FF3C74-8442-DFD5-99D4-FCB9C99EC78B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 48 ".ktv[0:47]"  0 -38.894094168502789 3 -38.894094168502789
		 6 -38.894094168502789 9 -38.894094168502789 12 -38.894094168502789 15 -38.894094168502789
		 18 -38.894094168502789 21 -38.894094168502789 24 -38.894094168502789 27 -38.894094168502789
		 30 -38.894094168502789 33 -38.894094168502789 36 -38.894094168502789 39 -38.894094168502789
		 42 -38.894094168502789 45 -38.894094168502789 48 -38.894094168502789 54 -38.319880580239321
		 57 -51.359328689870658 61 -46.161202287179663 66 -38.894094168502789 68 -38.894094168502789
		 78 -38.894094168502789 80 -38.894094168502789 85 -87.08999398403644 89 -94.794342665870204
		 95 -43.371066507355813 100 -38.894094168502789 110 -38.894094168502789 112 -38.894094168502789
		 120 -38.894094168502789 123 -38.894094168502789 126 -38.894094168502789 129 -38.894094168502789
		 132 -38.894094168502789 135 -38.894094168502789 138 -38.894094168502789 141 -38.894094168502789
		 144 -38.894094168502789 150 -38.894094168502789 153 -38.894094168502789 156 -38.894094168502789
		 159 -38.894094168502789 162 -38.894094168502789 165 -38.894094168502789 168 -38.894094168502789
		 171 -38.894094168502789 174 -38.894094168502789;
	setAttr -s 48 ".kit[22:47]"  1 18 18 18 18 18 1 1 
		18 18 18 18 18 18 18 18 1 18 18 18 18 18 18 18 18 
		1;
	setAttr -s 48 ".kot[21:47]"  1 1 1 18 18 18 1 1 
		1 1 18 18 18 18 18 18 18 18 1 18 18 18 18 18 18 
		18 18;
	setAttr -s 48 ".kix[22:47]"  1 1 0.38184875249862671 1 0.66430240869522095 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 48 ".kiy[22:47]"  0 0 -0.92422479391098022 0 0.74746394157409668 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 48 ".kox[21:47]"  1 1 1 0.3818487823009491 1 0.66430234909057617 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 48 ".koy[21:47]"  0 0 0 -0.924224853515625 0 0.7474638819694519 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RightHand_Control_rotateY";
	rename -uid "872D609B-E345-A80F-0EEF-3CA9D1755BAE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 48 ".ktv[0:47]"  0 68.036273990967814 3 68.036273990967814
		 6 68.036273990967814 9 68.036273990967814 12 68.036273990967814 15 68.036273990967814
		 18 68.036273990967814 21 68.036273990967814 24 68.036273990967814 27 68.036273990967814
		 30 68.036273990967814 33 68.036273990967814 36 68.036273990967814 39 68.036273990967814
		 42 68.036273990967814 45 68.036273990967814 48 68.036273990967814 54 143.00579409021552
		 57 145.77268110371557 61 113.3558284909203 66 68.036273990967814 68 68.036273990967814
		 78 68.036273990967814 80 68.036273990967814 85 14.171268105785028 89 12.462618570358119
		 95 71.247496579767116 100 68.036273990967814 110 68.036273990967814 112 68.036273990967814
		 120 68.036273990967814 123 68.036273990967814 126 68.036273990967814 129 68.036273990967814
		 132 68.036273990967814 135 68.036273990967814 138 68.036273990967814 141 68.036273990967814
		 144 68.036273990967814 150 68.036273990967814 153 68.036273990967814 156 68.036273990967814
		 159 68.036273990967814 162 68.036273990967814 165 68.036273990967814 168 68.036273990967814
		 171 68.036273990967814 174 68.036273990967814;
	setAttr -s 48 ".kit[22:47]"  1 18 18 18 18 18 1 1 
		18 18 18 18 18 18 18 18 1 18 18 18 18 18 18 18 18 
		1;
	setAttr -s 48 ".kot[21:47]"  1 1 1 18 18 18 1 1 
		1 1 18 18 18 18 18 18 18 18 1 18 18 18 18 18 18 
		18 18;
	setAttr -s 48 ".kix[22:47]"  1 1 0.88108563423156738 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 48 ".kiy[22:47]"  0 0 -0.47295671701431274 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 48 ".kox[21:47]"  1 1 1 0.88108563423156738 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 48 ".koy[21:47]"  0 0 0 -0.47295671701431274 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RightHand_Control_rotateZ";
	rename -uid "04FF47E1-4F49-A21A-2AB0-3898C8BEDA2D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 48 ".ktv[0:47]"  0 26.419148149279895 3 26.419148149279895
		 6 26.419148149279895 9 26.419148149279895 12 26.419148149279895 15 26.419148149279895
		 18 26.419148149279895 21 26.419148149279895 24 26.419148149279895 27 26.419148149279895
		 30 26.419148149279895 33 26.419148149279895 36 26.419148149279895 39 26.419148149279895
		 42 26.419148149279895 45 26.419148149279895 48 26.419148149279895 54 26.956137521097723
		 57 10.307502020092651 61 17.026218221651281 66 26.419148149279895 68 26.419148149279895
		 78 26.419148149279895 80 26.419148149279895 85 4.6705524960555715 89 0.72527849108124709
		 95 31.323071278525667 100 26.419148149279895 110 26.419148149279895 112 26.419148149279895
		 120 26.419148149279895 123 26.419148149279895 126 26.419148149279895 129 26.419148149279895
		 132 26.419148149279895 135 26.419148149279895 138 26.419148149279895 141 26.419148149279895
		 144 26.419148149279895 150 26.419148149279895 153 26.419148149279895 156 26.419148149279895
		 159 26.419148149279895 162 26.419148149279895 165 26.419148149279895 168 26.419148149279895
		 171 26.419148149279895 174 26.419148149279895;
	setAttr -s 48 ".kit[22:47]"  1 18 18 18 18 18 1 1 
		18 18 18 18 18 18 18 18 1 18 18 18 18 18 18 18 18 
		1;
	setAttr -s 48 ".kot[21:47]"  1 1 1 18 18 18 1 1 
		1 1 18 18 18 18 18 18 18 18 1 18 18 18 18 18 18 
		18 18;
	setAttr -s 48 ".kix[22:47]"  1 1 0.64149367809295654 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 48 ".kiy[22:47]"  0 0 -0.7671283483505249 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 48 ".kox[21:47]"  1 1 1 0.64149367809295654 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 48 ".koy[21:47]"  0 0 0 -0.76712822914123535 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RightHand_Control_scaleX";
	rename -uid "A15BB587-9D4B-3DB8-2E35-EA9B8CB55721";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 45 ".ktv[0:44]"  0 1 3 1 6 1 9 1 12 1 15 1 18 1 21 1 24 1
		 27 1 30 1 33 1 36 1 39 1 42 1 45 1 48 1 54 1 57 1 61 1 66 1 68 1 78 1 80 1 100 1
		 110 1 112 1 120 1 123 1 126 1 129 1 132 1 135 1 138 1 141 1 144 1 150 1 153 1 156 1
		 159 1 162 1 165 1 168 1 171 1 174 1;
	setAttr -s 45 ".kit[22:44]"  1 18 18 1 1 18 18 18 
		18 18 18 18 18 1 18 18 18 18 18 18 18 18 1;
	setAttr -s 45 ".kot[21:44]"  1 1 1 1 1 1 1 18 
		18 18 18 18 18 18 18 1 18 18 18 18 18 18 18 18;
	setAttr -s 45 ".kix[22:44]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1;
	setAttr -s 45 ".kiy[22:44]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0;
	setAttr -s 45 ".kox[21:44]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1;
	setAttr -s 45 ".koy[21:44]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0;
createNode animCurveTU -n "RightHand_Control_scaleY";
	rename -uid "DA6069D0-634C-D51A-1C8A-9B94F8AFA2CB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 45 ".ktv[0:44]"  0 1 3 1 6 1 9 1 12 1 15 1 18 1 21 1 24 1
		 27 1 30 1 33 1 36 1 39 1 42 1 45 1 48 1 54 1 57 1 61 1 66 1 68 1 78 1 80 1 100 1
		 110 1 112 1 120 1 123 1 126 1 129 1 132 1 135 1 138 1 141 1 144 1 150 1 153 1 156 1
		 159 1 162 1 165 1 168 1 171 1 174 1;
	setAttr -s 45 ".kit[22:44]"  1 18 18 1 1 18 18 18 
		18 18 18 18 18 1 18 18 18 18 18 18 18 18 1;
	setAttr -s 45 ".kot[21:44]"  1 1 1 1 1 1 1 18 
		18 18 18 18 18 18 18 1 18 18 18 18 18 18 18 18;
	setAttr -s 45 ".kix[22:44]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1;
	setAttr -s 45 ".kiy[22:44]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0;
	setAttr -s 45 ".kox[21:44]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1;
	setAttr -s 45 ".koy[21:44]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0;
createNode animCurveTU -n "RightHand_Control_scaleZ";
	rename -uid "96AE21E2-B342-C746-AE91-D9BE280657F4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 45 ".ktv[0:44]"  0 1 3 1 6 1 9 1 12 1 15 1 18 1 21 1 24 1
		 27 1 30 1 33 1 36 1 39 1 42 1 45 1 48 1 54 1 57 1 61 1 66 1 68 1 78 1 80 1 100 1
		 110 1 112 1 120 1 123 1 126 1 129 1 132 1 135 1 138 1 141 1 144 1 150 1 153 1 156 1
		 159 1 162 1 165 1 168 1 171 1 174 1;
	setAttr -s 45 ".kit[22:44]"  1 18 18 1 1 18 18 18 
		18 18 18 18 18 1 18 18 18 18 18 18 18 18 1;
	setAttr -s 45 ".kot[21:44]"  1 1 1 1 1 1 1 18 
		18 18 18 18 18 18 18 1 18 18 18 18 18 18 18 18;
	setAttr -s 45 ".kix[22:44]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1;
	setAttr -s 45 ".kiy[22:44]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0;
	setAttr -s 45 ".kox[21:44]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1;
	setAttr -s 45 ".koy[21:44]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0;
createNode animCurveTU -n "RightHand_Control_Grip";
	rename -uid "577A2CFA-AD4D-45F5-44EA-F4954559ED9E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 45 ".ktv[0:44]"  0 1 3 1 6 1 9 1 12 1 15 1 18 1 21 1 24 1
		 27 1 30 1 33 1 36 1 39 1 42 1 45 1 48 1 54 1 57 1 61 1 66 1 68 1 78 1 80 1 100 1
		 110 1 112 1 120 1 123 1 126 1 129 1 132 1 135 1 138 1 141 1 144 1 150 1 153 1 156 1
		 159 1 162 1 165 1 168 1 171 1 174 1;
	setAttr -s 45 ".kit[22:44]"  1 18 18 1 1 18 18 18 
		18 18 18 18 18 1 18 18 18 18 18 18 18 18 1;
	setAttr -s 45 ".kot[21:44]"  1 1 1 1 1 1 1 18 
		18 18 18 18 18 18 18 1 18 18 18 18 18 18 18 18;
	setAttr -s 45 ".kix[22:44]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1;
	setAttr -s 45 ".kiy[22:44]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0;
	setAttr -s 45 ".kox[21:44]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1;
	setAttr -s 45 ".koy[21:44]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0;
createNode animCurveTU -n "LeftHand_Control_visibility";
	rename -uid "429C3606-E044-1F90-11CA-6A8E99EE6E0E";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 46 ".ktv[0:45]"  0 1 3 1 6 1 9 1 12 1 15 1 18 1 21 1 24 1
		 27 1 30 1 33 1 36 1 39 1 42 1 45 1 48 1 51 1 54 1 57 1 61 1 66 1 68 1 78 1 80 1 100 1
		 110 1 112 1 120 1 123 1 126 1 129 1 132 1 135 1 138 1 141 1 144 1 150 1 153 1 156 1
		 159 1 162 1 165 1 168 1 171 1 174 1;
	setAttr -s 46 ".kit[8:45]"  18 9 9 9 9 9 9 9 
		18 18 9 9 9 18 18 1 18 18 1 1 9 9 9 9 9 
		9 9 9 1 9 9 9 9 9 9 9 9 1;
	setAttr -s 46 ".kot[0:45]"  5 5 5 5 5 5 5 5 
		18 5 5 5 5 5 5 5 18 18 5 5 5 18 1 1 1 
		1 1 1 5 5 5 5 5 5 5 5 18 5 5 5 5 5 
		5 5 5 18;
	setAttr -s 46 ".kix[23:45]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1;
	setAttr -s 46 ".kiy[23:45]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0;
	setAttr -s 46 ".kox[22:45]"  1 1 1 1 1 1 0 0 0 0 0 0 0 0 1 0 0 0 0 0 
		0 0 0 1;
	setAttr -s 46 ".koy[22:45]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0;
createNode animCurveTA -n "LeftHand_Control_rotateX";
	rename -uid "48AE6F76-AC49-E479-70C7-458B17A271F7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 48 ".ktv[0:47]"  0 -41.874800070444657 3 -41.874800070444657
		 6 -41.874800070444657 9 -41.874800070444657 12 -41.874800070444657 15 -41.874800070444657
		 18 -41.874800070444657 21 -41.874800070444657 24 -41.874800070444657 27 -41.874800070444657
		 30 -41.874800070444657 33 -41.874800070444657 36 -41.874800070444657 39 -41.874800070444657
		 42 -41.874800070444657 45 -41.874800070444657 48 -41.874800070444657 51 -77.619210876317936
		 54 -103.89043912039264 57 -127.17910373032285 61 -98.927273189907822 66 -41.874800070444657
		 68 -41.874800070444657 78 -41.874800070444657 80 -41.874800070444657 85 -6.3965053917555599
		 97 -53.257605081421239 100 -41.874800070444657 110 -41.874800070444657 112 -41.874800070444657
		 120 -41.874800070444657 123 -41.874800070444657 126 -41.874800070444657 129 -41.874800070444657
		 132 -41.874800070444657 135 -41.874800070444657 138 -41.874800070444657 141 -41.874800070444657
		 144 -41.874800070444657 150 -41.874800070444657 153 -41.874800070444657 156 -41.874800070444657
		 159 -41.874800070444657 162 -41.874800070444657 165 -41.874800070444657 168 -41.874800070444657
		 171 -41.874800070444657 174 -41.874800070444657;
	setAttr -s 48 ".kit[23:47]"  1 18 18 18 18 1 1 18 
		18 18 18 18 18 18 18 1 18 18 18 18 18 18 18 18 1;
	setAttr -s 48 ".kot[22:47]"  1 1 1 18 18 1 1 1 
		1 18 18 18 18 18 18 18 18 1 18 18 18 18 18 18 18 
		18;
	setAttr -s 48 ".kix[23:47]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1;
	setAttr -s 48 ".kiy[23:47]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0;
	setAttr -s 48 ".kox[22:47]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1;
	setAttr -s 48 ".koy[22:47]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0;
createNode animCurveTA -n "LeftHand_Control_rotateY";
	rename -uid "D4D73771-1747-68A0-5F7C-C8BFEF8D8968";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 48 ".ktv[0:47]"  0 17.706949063986439 3 17.706949063986439
		 6 17.706949063986439 9 17.706949063986439 12 17.706949063986439 15 17.706949063986439
		 18 17.706949063986439 21 17.706949063986439 24 17.706949063986439 27 17.706949063986439
		 30 17.706949063986439 33 17.706949063986439 36 17.706949063986439 39 17.706949063986439
		 42 17.706949063986439 45 17.706949063986439 48 17.706949063986439 51 32.852281985098557
		 54 10.970899981739178 57 14.8620191120873 61 23.249397972150259 66 17.706949063986439
		 68 17.706949063986439 78 17.706949063986439 80 17.706949063986439 85 -14.960087772242527
		 97 13.675964810943638 100 17.706949063986439 110 17.706949063986439 112 17.706949063986439
		 120 17.706949063986439 123 17.706949063986439 126 17.706949063986439 129 17.706949063986439
		 132 17.706949063986439 135 17.706949063986439 138 17.706949063986439 141 17.706949063986439
		 144 17.706949063986439 150 17.706949063986439 153 17.706949063986439 156 17.706949063986439
		 159 17.706949063986439 162 17.706949063986439 165 17.706949063986439 168 17.706949063986439
		 171 17.706949063986439 174 17.706949063986439;
	setAttr -s 48 ".kit[23:47]"  1 18 18 18 18 1 1 18 
		18 18 18 18 18 18 18 1 18 18 18 18 18 18 18 18 1;
	setAttr -s 48 ".kot[22:47]"  1 1 1 18 18 1 1 1 
		1 18 18 18 18 18 18 18 18 1 18 18 18 18 18 18 18 
		18;
	setAttr -s 48 ".kix[23:47]"  1 1 1 0.73878240585327148 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 48 ".kiy[23:47]"  0 0 0 0.67394399642944336 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 48 ".kox[22:47]"  1 1 1 1 0.73878240585327148 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 48 ".koy[22:47]"  0 0 0 0 0.67394393682479858 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LeftHand_Control_rotateZ";
	rename -uid "B37C3878-BA4A-AA34-0CD7-C781BA075FCE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 48 ".ktv[0:47]"  0 -92.041489596790697 3 -92.041489596790697
		 6 -92.041489596790697 9 -92.041489596790697 12 -92.041489596790697 15 -92.041489596790697
		 18 -92.041489596790697 21 -92.041489596790697 24 -92.041489596790697 27 -92.041489596790697
		 30 -92.041489596790697 33 -92.041489596790697 36 -92.041489596790697 39 -92.041489596790697
		 42 -92.041489596790697 45 -92.041489596790697 48 -92.041489596790697 51 -111.03574530217644
		 54 -113.96201981557645 57 -131.80596876335994 61 -107.77641150178077 66 -92.041489596790697
		 68 -92.041489596790697 78 -92.041489596790697 80 -92.041489596790697 85 -62.546314051500538
		 97 -95.315149856687611 100 -92.041489596790697 110 -92.041489596790697 112 -92.041489596790697
		 120 -92.041489596790697 123 -92.041489596790697 126 -92.041489596790697 129 -92.041489596790697
		 132 -92.041489596790697 135 -92.041489596790697 138 -92.041489596790697 141 -92.041489596790697
		 144 -92.041489596790697 150 -92.041489596790697 153 -92.041489596790697 156 -92.041489596790697
		 159 -92.041489596790697 162 -92.041489596790697 165 -92.041489596790697 168 -92.041489596790697
		 171 -92.041489596790697 174 -92.041489596790697;
	setAttr -s 48 ".kit[23:47]"  1 18 18 18 18 1 1 18 
		18 18 18 18 18 18 18 1 18 18 18 18 18 18 18 18 1;
	setAttr -s 48 ".kot[22:47]"  1 1 1 18 18 1 1 1 
		1 18 18 18 18 18 18 18 18 1 18 18 18 18 18 18 18 
		18;
	setAttr -s 48 ".kix[23:47]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1;
	setAttr -s 48 ".kiy[23:47]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0;
	setAttr -s 48 ".kox[22:47]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1;
	setAttr -s 48 ".koy[22:47]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0;
createNode animCurveTU -n "LeftHand_Control_scaleX";
	rename -uid "C85477BC-7F44-5004-182E-3FB20BDE9653";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 46 ".ktv[0:45]"  0 1 3 1 6 1 9 1 12 1 15 1 18 1 21 1 24 1
		 27 1 30 1 33 1 36 1 39 1 42 1 45 1 48 1 51 1 54 1 57 1 61 1 66 1 68 1 78 1 80 1 100 1
		 110 1 112 1 120 1 123 1 126 1 129 1 132 1 135 1 138 1 141 1 144 1 150 1 153 1 156 1
		 159 1 162 1 165 1 168 1 171 1 174 1;
	setAttr -s 46 ".kit[23:45]"  1 18 18 1 1 18 18 18 
		18 18 18 18 18 1 18 18 18 18 18 18 18 18 1;
	setAttr -s 46 ".kot[22:45]"  1 1 1 1 1 1 1 18 
		18 18 18 18 18 18 18 1 18 18 18 18 18 18 18 18;
	setAttr -s 46 ".kix[23:45]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1;
	setAttr -s 46 ".kiy[23:45]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0;
	setAttr -s 46 ".kox[22:45]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1;
	setAttr -s 46 ".koy[22:45]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0;
createNode animCurveTU -n "LeftHand_Control_scaleY";
	rename -uid "69EEB304-A24E-FBA9-B14D-3793032D70A0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 46 ".ktv[0:45]"  0 1 3 1 6 1 9 1 12 1 15 1 18 1 21 1 24 1
		 27 1 30 1 33 1 36 1 39 1 42 1 45 1 48 1 51 1 54 1 57 1 61 1 66 1 68 1 78 1 80 1 100 1
		 110 1 112 1 120 1 123 1 126 1 129 1 132 1 135 1 138 1 141 1 144 1 150 1 153 1 156 1
		 159 1 162 1 165 1 168 1 171 1 174 1;
	setAttr -s 46 ".kit[23:45]"  1 18 18 1 1 18 18 18 
		18 18 18 18 18 1 18 18 18 18 18 18 18 18 1;
	setAttr -s 46 ".kot[22:45]"  1 1 1 1 1 1 1 18 
		18 18 18 18 18 18 18 1 18 18 18 18 18 18 18 18;
	setAttr -s 46 ".kix[23:45]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1;
	setAttr -s 46 ".kiy[23:45]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0;
	setAttr -s 46 ".kox[22:45]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1;
	setAttr -s 46 ".koy[22:45]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0;
createNode animCurveTU -n "LeftHand_Control_scaleZ";
	rename -uid "9E8148AF-634F-928D-ED86-598725FA414B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 46 ".ktv[0:45]"  0 1 3 1 6 1 9 1 12 1 15 1 18 1 21 1 24 1
		 27 1 30 1 33 1 36 1 39 1 42 1 45 1 48 1 51 1 54 1 57 1 61 1 66 1 68 1 78 1 80 1 100 1
		 110 1 112 1 120 1 123 1 126 1 129 1 132 1 135 1 138 1 141 1 144 1 150 1 153 1 156 1
		 159 1 162 1 165 1 168 1 171 1 174 1;
	setAttr -s 46 ".kit[23:45]"  1 18 18 1 1 18 18 18 
		18 18 18 18 18 1 18 18 18 18 18 18 18 18 1;
	setAttr -s 46 ".kot[22:45]"  1 1 1 1 1 1 1 18 
		18 18 18 18 18 18 18 1 18 18 18 18 18 18 18 18;
	setAttr -s 46 ".kix[23:45]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1;
	setAttr -s 46 ".kiy[23:45]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0;
	setAttr -s 46 ".kox[22:45]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1;
	setAttr -s 46 ".koy[22:45]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0;
createNode animCurveTU -n "LeftHand_Control_Grip";
	rename -uid "792272E9-CC42-39DF-E40D-859D6A947B07";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 46 ".ktv[0:45]"  0 0.5 3 0.5 6 0.5 9 0.5 12 0.5 15 0.5 18 0.5
		 21 0.5 24 0.5 27 0.5 30 0.5 33 0.5 36 0.5 39 0.5 42 0.5 45 0.5 48 0.5 51 0.5 54 0.5
		 57 0.5 61 0.5 66 0.5 68 0.5 78 0.5 80 0.5 100 0.5 110 0.5 112 0.5 120 0.5 123 0.5
		 126 0.5 129 0.5 132 0.5 135 0.5 138 0.5 141 0.5 144 0.5 150 0.5 153 0.5 156 0.5 159 0.5
		 162 0.5 165 0.5 168 0.5 171 0.5 174 0.5;
	setAttr -s 46 ".kit[23:45]"  1 18 18 1 1 18 18 18 
		18 18 18 18 18 1 18 18 18 18 18 18 18 18 1;
	setAttr -s 46 ".kot[22:45]"  1 1 1 1 1 1 1 18 
		18 18 18 18 18 18 18 1 18 18 18 18 18 18 18 18;
	setAttr -s 46 ".kix[23:45]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1;
	setAttr -s 46 ".kiy[23:45]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0;
	setAttr -s 46 ".kox[22:45]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1;
	setAttr -s 46 ".koy[22:45]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0;
createNode animCurveTL -n "RootMotion_Control_translateX";
	rename -uid "2427F348-8043-6987-206B-EE8284087D0F";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 24 0 48 0 52 14.649286505545636 68 100
		 78 0 80 0 88 0 93 -53.374 100 -100 110 0 112 0 120 0 131 -23.399592041059407 144 -143.76687479141134
		 150 0 161 23.4 174 143.767;
createNode animCurveTL -n "RootMotion_Control_translateY";
	rename -uid "1A55F6B1-D440-46FB-9699-D0AFE60D45DF";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 24 0 48 0 68 0 78 0 80 0 88 0 93 0 100 0
		 110 0 112 0 120 0 144 0 150 0 174 0;
	setAttr -s 15 ".kit[6:14]"  18 18 2 2 2 2 2 2 
		2;
	setAttr -s 15 ".kot[6:14]"  18 18 2 2 2 2 2 2 
		2;
createNode animCurveTL -n "RootMotion_Control_translateZ";
	rename -uid "D4A21FDF-CC40-8615-20BE-EC8CDE57ACDA";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  0 0 24 0 26 -240 48 0 52 68.398324788950106
		 58 75.458469266522286 68 100 78 0 80 0 88 100 93 100 100 100 110 0 112 0 120 0 131 158.93118013481458
		 144 224.23934486707378 150 0 161 158.93118013481458 174 224.23934486707378;
createNode animCurveTU -n "RootMotion_Control_visibility";
	rename -uid "A670D022-AF44-561F-63E4-D792FD68C537";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 1 24 1 48 1 68 1 78 1 80 1 88 1 93 1 100 1
		 110 1 112 1 120 1 144 1 150 1 174 1;
	setAttr -s 15 ".kit[6:14]"  9 9 2 2 2 2 2 2 
		2;
	setAttr -s 15 ".kot[6:14]"  5 5 2 2 2 2 2 2 
		2;
createNode animCurveTA -n "RootMotion_Control_rotateX";
	rename -uid "BAF96C38-AD42-E312-E27A-95BCAEA69AA5";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 24 0 48 0 68 0 78 0 80 0 88 0 93 0 100 0
		 110 0 112 0 120 0 144 0 150 0 174 0;
	setAttr -s 15 ".kit[6:14]"  18 18 2 2 2 2 2 2 
		2;
	setAttr -s 15 ".kot[6:14]"  18 18 2 2 2 2 2 2 
		2;
createNode animCurveTA -n "RootMotion_Control_rotateY";
	rename -uid "AB99D293-2D49-2D91-D5BC-96851CD2C52A";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 24 0 48 0 58 0 64 90 68 90 78 0 80 0
		 88 0 93 -90 100 -90 110 0 112 0 120 0 144 -90 150 0 174 90;
	setAttr -s 17 ".kit[8:16]"  18 2 2 2 2 2 2 2 
		2;
	setAttr -s 17 ".kot[8:16]"  18 2 2 2 2 2 2 2 
		2;
createNode animCurveTA -n "RootMotion_Control_rotateZ";
	rename -uid "75230CD3-154D-B418-104C-5EB49689A3D2";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 24 0 48 0 68 0 78 0 80 0 88 0 93 0 100 0
		 110 0 112 0 120 0 144 0 150 0 174 0;
	setAttr -s 15 ".kit[6:14]"  18 18 2 2 2 2 2 2 
		2;
	setAttr -s 15 ".kot[6:14]"  18 18 2 2 2 2 2 2 
		2;
createNode animCurveTU -n "RootMotion_Control_scaleX";
	rename -uid "9EBDD301-6C45-7611-106C-86BD0791221D";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 1 24 1 48 1 68 1 78 1 80 1 88 1 93 1 100 1
		 110 1 112 1 120 1 144 1 150 1 174 1;
	setAttr -s 15 ".kit[6:14]"  18 18 2 2 2 2 2 2 
		2;
	setAttr -s 15 ".kot[6:14]"  18 18 2 2 2 2 2 2 
		2;
createNode animCurveTU -n "RootMotion_Control_scaleY";
	rename -uid "89A93037-8F4B-8C47-E2BC-1E9F3D4BDF43";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 1 24 1 48 1 68 1 78 1 80 1 88 1 93 1 100 1
		 110 1 112 1 120 1 144 1 150 1 174 1;
	setAttr -s 15 ".kit[6:14]"  18 18 2 2 2 2 2 2 
		2;
	setAttr -s 15 ".kot[6:14]"  18 18 2 2 2 2 2 2 
		2;
createNode animCurveTU -n "RootMotion_Control_scaleZ";
	rename -uid "6C2FF9ED-934E-4B10-CF1A-A9AC76F39115";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 1 24 1 48 1 68 1 78 1 80 1 88 1 93 1 100 1
		 110 1 112 1 120 1 144 1 150 1 174 1;
	setAttr -s 15 ".kit[6:14]"  18 18 2 2 2 2 2 2 
		2;
	setAttr -s 15 ".kot[6:14]"  18 18 2 2 2 2 2 2 
		2;
createNode animCurveTL -n "RightElbow_Control_translateX";
	rename -uid "DE0A1A18-224B-29D2-D526-99B1005FBB12";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  48 -47.375860101750519 63 -109.76751528249882
		 68 -47.375860101750519 78 -47.375860101750519 80 -47.375860101750519 88 157.40200925066847
		 100 -47.375860101750519 110 -47.375860101750519 112 -47.375860101750519 150 -47.375860101750519;
	setAttr -s 10 ".kit[3:9]"  1 18 18 18 1 1 18;
	setAttr -s 10 ".kot[3:9]"  1 18 18 18 1 1 18;
	setAttr -s 10 ".kix[3:9]"  1 1 1 1 1 1 1;
	setAttr -s 10 ".kiy[3:9]"  0 0 0 0 0 0 0;
	setAttr -s 10 ".kox[3:9]"  1 1 1 1 1 1 1;
	setAttr -s 10 ".koy[3:9]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "RightElbow_Control_translateY";
	rename -uid "403DF283-0740-511C-241A-A68903847938";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  48 0 68 0 78 0 80 0 88 -125.83049925250612
		 100 0 110 0 112 0 150 0;
	setAttr -s 9 ".kit[2:8]"  1 18 18 18 1 1 18;
	setAttr -s 9 ".kot[2:8]"  1 18 18 18 1 1 18;
	setAttr -s 9 ".kix[2:8]"  1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[2:8]"  0 0 0 0 0 0 0;
	setAttr -s 9 ".kox[2:8]"  1 1 1 1 1 1 1;
	setAttr -s 9 ".koy[2:8]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "RightElbow_Control_translateZ";
	rename -uid "8C59E307-CE4F-742D-BBF9-54BF799C549E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  48 0 53 182.46332985803051 57 235.37166576985265
		 63 108.97450612362974 68 0 78 0 80 0 88 77.390461933456621 100 0 110 0 112 0 150 0;
	setAttr -s 12 ".kit[5:11]"  1 18 18 18 1 1 18;
	setAttr -s 12 ".kot[5:11]"  1 18 18 18 1 1 18;
	setAttr -s 12 ".kix[5:11]"  1 1 1 1 1 1 1;
	setAttr -s 12 ".kiy[5:11]"  0 0 0 0 0 0 0;
	setAttr -s 12 ".kox[5:11]"  1 1 1 1 1 1 1;
	setAttr -s 12 ".koy[5:11]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "RightElbow_Control_visibility";
	rename -uid "D77C5B8D-DB45-0BFC-106E-A2A9C04D375A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  48 1 68 1 78 1 80 1 100 1 110 1 112 1 150 1;
	setAttr -s 8 ".kit[2:7]"  1 18 18 1 1 9;
	setAttr -s 8 ".kot[2:7]"  1 18 18 1 1 5;
	setAttr -s 8 ".kix[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".kiy[2:7]"  0 0 0 0 0 0;
	setAttr -s 8 ".kox[2:7]"  1 1 1 1 1 0;
	setAttr -s 8 ".koy[2:7]"  0 0 0 0 0 0;
createNode animCurveTA -n "RightElbow_Control_rotateX";
	rename -uid "950257C0-F740-68F3-E428-CAB0EFE4CD8F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  48 0 68 0 78 0 80 0 100 0 110 0 112 0 150 0;
	setAttr -s 8 ".kit[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kot[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kix[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".kiy[2:7]"  0 0 0 0 0 0;
	setAttr -s 8 ".kox[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".koy[2:7]"  0 0 0 0 0 0;
createNode animCurveTA -n "RightElbow_Control_rotateY";
	rename -uid "23F86A20-DD45-2571-48CF-65BF32D8E2C2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  48 0 68 0 78 0 80 0 100 0 110 0 112 0 150 0;
	setAttr -s 8 ".kit[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kot[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kix[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".kiy[2:7]"  0 0 0 0 0 0;
	setAttr -s 8 ".kox[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".koy[2:7]"  0 0 0 0 0 0;
createNode animCurveTA -n "RightElbow_Control_rotateZ";
	rename -uid "FE9312F8-FC44-0505-E0D2-788706A45269";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  48 0 68 0 78 0 80 0 100 0 110 0 112 0 150 0;
	setAttr -s 8 ".kit[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kot[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kix[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".kiy[2:7]"  0 0 0 0 0 0;
	setAttr -s 8 ".kox[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".koy[2:7]"  0 0 0 0 0 0;
createNode animCurveTU -n "RightElbow_Control_scaleX";
	rename -uid "6630637D-404A-C99C-1837-6988FAC89D53";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  48 1 68 1 78 1 80 1 100 1 110 1 112 1 150 1;
	setAttr -s 8 ".kit[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kot[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kix[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".kiy[2:7]"  0 0 0 0 0 0;
	setAttr -s 8 ".kox[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".koy[2:7]"  0 0 0 0 0 0;
createNode animCurveTU -n "RightElbow_Control_scaleY";
	rename -uid "00BD93D1-C942-2AEE-7EA9-35AD7047962D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  48 1 68 1 78 1 80 1 100 1 110 1 112 1 150 1;
	setAttr -s 8 ".kit[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kot[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kix[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".kiy[2:7]"  0 0 0 0 0 0;
	setAttr -s 8 ".kox[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".koy[2:7]"  0 0 0 0 0 0;
createNode animCurveTU -n "RightElbow_Control_scaleZ";
	rename -uid "1CB1C915-6E43-5984-FDBD-A18DC47AC769";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  48 1 68 1 78 1 80 1 100 1 110 1 112 1 150 1;
	setAttr -s 8 ".kit[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kot[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kix[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".kiy[2:7]"  0 0 0 0 0 0;
	setAttr -s 8 ".kox[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".koy[2:7]"  0 0 0 0 0 0;
createNode animCurveTL -n "LeftElbow_Control_translateX";
	rename -uid "861ADAF6-8447-AC88-DF55-B08C16EA6423";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  48 102.37399648451193 55 -111.84952072171413
		 68 102.37399648451193 78 102.37399648451193 80 102.37399648451193 100 102.37399648451193
		 110 102.37399648451193 112 102.37399648451193 150 102.37399648451193;
	setAttr -s 9 ".kit[3:8]"  1 18 18 1 1 18;
	setAttr -s 9 ".kot[3:8]"  1 18 18 1 1 18;
	setAttr -s 9 ".kix[3:8]"  1 1 1 1 1 1;
	setAttr -s 9 ".kiy[3:8]"  0 0 0 0 0 0;
	setAttr -s 9 ".kox[3:8]"  1 1 1 1 1 1;
	setAttr -s 9 ".koy[3:8]"  0 0 0 0 0 0;
createNode animCurveTL -n "LeftElbow_Control_translateY";
	rename -uid "B89D7BED-0C42-6039-F80F-5EB577A112AA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  48 0 68 0 78 0 80 0 100 0 110 0 112 0 150 0;
	setAttr -s 8 ".kit[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kot[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kix[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".kiy[2:7]"  0 0 0 0 0 0;
	setAttr -s 8 ".kox[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".koy[2:7]"  0 0 0 0 0 0;
createNode animCurveTL -n "LeftElbow_Control_translateZ";
	rename -uid "01CBDA36-2040-9BBE-98C9-B4B448042B8E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  48 0 55 -6.1143171389118436 68 0 78 0 80 0
		 86 237.25961822098 100 0 110 0 112 0 150 0;
	setAttr -s 10 ".kit[3:9]"  1 18 18 18 1 1 18;
	setAttr -s 10 ".kot[3:9]"  1 18 18 18 1 1 18;
	setAttr -s 10 ".kix[3:9]"  1 1 1 1 1 1 1;
	setAttr -s 10 ".kiy[3:9]"  0 0 0 0 0 0 0;
	setAttr -s 10 ".kox[3:9]"  1 1 1 1 1 1 1;
	setAttr -s 10 ".koy[3:9]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "LeftElbow_Control_visibility";
	rename -uid "459FE590-0248-3659-F08B-61A3F8538D4B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  48 1 68 1 78 1 80 1 100 1 110 1 112 1 150 1;
	setAttr -s 8 ".kit[2:7]"  1 18 18 1 1 9;
	setAttr -s 8 ".kot[2:7]"  1 18 18 1 1 5;
	setAttr -s 8 ".kix[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".kiy[2:7]"  0 0 0 0 0 0;
	setAttr -s 8 ".kox[2:7]"  1 1 1 1 1 0;
	setAttr -s 8 ".koy[2:7]"  0 0 0 0 0 0;
createNode animCurveTA -n "LeftElbow_Control_rotateX";
	rename -uid "6BFCA0AF-A948-2163-1C2F-0E978C8D94C6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  48 0 68 0 78 0 80 0 100 0 110 0 112 0 150 0;
	setAttr -s 8 ".kit[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kot[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kix[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".kiy[2:7]"  0 0 0 0 0 0;
	setAttr -s 8 ".kox[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".koy[2:7]"  0 0 0 0 0 0;
createNode animCurveTA -n "LeftElbow_Control_rotateY";
	rename -uid "61A3F4DD-8B4B-57F2-8356-C48B10D0AE45";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  48 0 68 0 78 0 80 0 100 0 110 0 112 0 150 0;
	setAttr -s 8 ".kit[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kot[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kix[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".kiy[2:7]"  0 0 0 0 0 0;
	setAttr -s 8 ".kox[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".koy[2:7]"  0 0 0 0 0 0;
createNode animCurveTA -n "LeftElbow_Control_rotateZ";
	rename -uid "896AE3B8-6646-6399-0B34-3BA54BAD584B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  48 0 68 0 78 0 80 0 100 0 110 0 112 0 150 0;
	setAttr -s 8 ".kit[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kot[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kix[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".kiy[2:7]"  0 0 0 0 0 0;
	setAttr -s 8 ".kox[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".koy[2:7]"  0 0 0 0 0 0;
createNode animCurveTU -n "LeftElbow_Control_scaleX";
	rename -uid "725D53C3-484B-69C0-07B2-C2892221F773";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  48 1 68 1 78 1 80 1 100 1 110 1 112 1 150 1;
	setAttr -s 8 ".kit[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kot[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kix[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".kiy[2:7]"  0 0 0 0 0 0;
	setAttr -s 8 ".kox[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".koy[2:7]"  0 0 0 0 0 0;
createNode animCurveTU -n "LeftElbow_Control_scaleY";
	rename -uid "1EBC3209-9741-0CE6-756B-479F4FDDB186";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  48 1 68 1 78 1 80 1 100 1 110 1 112 1 150 1;
	setAttr -s 8 ".kit[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kot[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kix[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".kiy[2:7]"  0 0 0 0 0 0;
	setAttr -s 8 ".kox[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".koy[2:7]"  0 0 0 0 0 0;
createNode animCurveTU -n "LeftElbow_Control_scaleZ";
	rename -uid "53BE66FF-0F47-DAA7-2A29-40BA0D318EC9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  48 1 68 1 78 1 80 1 100 1 110 1 112 1 150 1;
	setAttr -s 8 ".kit[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kot[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kix[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".kiy[2:7]"  0 0 0 0 0 0;
	setAttr -s 8 ".kox[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".koy[2:7]"  0 0 0 0 0 0;
createNode animCurveTA -n "Head_Control_rotateX";
	rename -uid "DC002EC3-8A41-F437-4E44-928CBAD0F0E5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  48 -16.223006718484058 51 -12.758758741807657
		 55 -10.523314436234262 58 -10.523314436234262 59 -18.738844778659896 68 -18.738844778659896
		 78 -16.223006718484058 80 -23.238308313397745 86 4.3900371738399189 89 -4.6845231074341429
		 92 -22.25639587002231 96 -32.01111853530977 100 -18.738844778659896 110 -16.223006718484058
		 112 -16.223006718484058 150 -16.223006718484058;
	setAttr -s 16 ".kit[6:15]"  1 18 18 18 18 18 18 1 
		1 18;
	setAttr -s 16 ".kot[6:15]"  1 18 18 18 18 18 18 1 
		1 18;
	setAttr -s 16 ".kix[6:15]"  1 1 1 0.47348126769065857 0.52171564102172852 
		1 0.95348411798477173 1 1 1;
	setAttr -s 16 ".kiy[6:15]"  0 0 0 -0.88080394268035889 -0.85311943292617798 
		0 0.30144333839416504 0 0 0;
	setAttr -s 16 ".kox[6:15]"  1 1 1 0.47348126769065857 0.52171564102172852 
		1 0.95348411798477173 1 1 1;
	setAttr -s 16 ".koy[6:15]"  0 0 0 -0.88080394268035889 -0.85311949253082275 
		0 0.30144333839416504 0 0 0;
createNode animCurveTA -n "Head_Control_rotateY";
	rename -uid "D10E569A-4B4F-E96F-73F9-4E99F57DE815";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  48 52.223591308707903 51 41.362869424696868
		 55 19.049431308056239 58 19.049431308056239 59 0.69876595120721496 68 0.69876595120721308
		 78 52.223591308707903 80 -64.639705179994081 86 16.416744681865037 89 9.0268128402373939
		 92 6.5152457266033403 96 -5.1917560881314584 100 0.69876595120721308 110 52.223591308707903
		 112 52.223591308707903 150 52.223591308707903;
	setAttr -s 16 ".kit[6:15]"  1 18 18 18 18 18 18 1 
		1 18;
	setAttr -s 16 ".kot[6:15]"  1 18 18 18 18 18 18 1 
		1 18;
	setAttr -s 16 ".kix[6:15]"  1 1 1 0.8225972056388855 0.76162469387054443 
		1 0.50308763980865479 1 1 1;
	setAttr -s 16 ".kiy[6:15]"  0 0 0 -0.56862449645996094 -0.64801841974258423 
		0 0.86423540115356445 0 0 0;
	setAttr -s 16 ".kox[6:15]"  1 1 1 0.8225972056388855 0.76162463426589966 
		1 0.50308758020401001 1 1 1;
	setAttr -s 16 ".koy[6:15]"  0 0 0 -0.56862449645996094 -0.64801841974258423 
		0 0.86423540115356445 0 0 0;
createNode animCurveTA -n "Head_Control_rotateZ";
	rename -uid "C386A0E8-BE43-2199-21FF-CF828E4F42E0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  48 -19.85245254847144 51 1.763243865888094
		 55 -2.5075993453362968 58 -2.5075993453362968 59 -4.9787135161417924 68 -4.9787135161417941
		 78 -19.85245254847144 80 30.424690236443972 86 -25.416424076575286 89 -16.936988055094524
		 92 -0.025046880986709184 96 2.8061959144543285 100 -4.9787135161417941 110 -19.85245254847144
		 112 -19.85245254847144 150 -19.85245254847144;
	setAttr -s 16 ".kit[6:15]"  1 18 18 18 18 18 18 1 
		1 18;
	setAttr -s 16 ".kot[6:15]"  1 18 18 18 18 18 18 1 
		1 18;
	setAttr -s 16 ".kix[6:15]"  1 1 1 0.49133691191673279 0.74719715118408203 
		1 0.8277166485786438 1 1 1;
	setAttr -s 16 ".kiy[6:15]"  0 0 0 0.87096959352493286 0.66460251808166504 
		0 -0.5611463189125061 0 0 0;
	setAttr -s 16 ".kox[6:15]"  1 1 1 0.49133691191673279 0.74719709157943726 
		1 0.82771658897399902 1 1 1;
	setAttr -s 16 ".koy[6:15]"  0 0 0 0.87096959352493286 0.66460251808166504 
		0 -0.5611463189125061 0 0 0;
createNode animCurveTU -n "Head_Control_visibility";
	rename -uid "A42021A0-B543-4F99-7F67-A583B4848B63";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  48 1 58 1 68 1 78 1 80 1 100 1 110 1 112 1
		 150 1;
	setAttr -s 9 ".kit[3:8]"  1 18 18 1 1 9;
	setAttr -s 9 ".kot[3:8]"  1 18 18 1 1 5;
	setAttr -s 9 ".kix[3:8]"  1 1 1 1 1 1;
	setAttr -s 9 ".kiy[3:8]"  0 0 0 0 0 0;
	setAttr -s 9 ".kox[3:8]"  1 1 1 1 1 0;
	setAttr -s 9 ".koy[3:8]"  0 0 0 0 0 0;
createNode animCurveTL -n "Head_Control_translateX";
	rename -uid "D8E58D1C-0447-BEE3-672E-449C0D664F96";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  48 0 58 0 68 0 78 0 80 0 100 0 110 0 112 0
		 150 0;
	setAttr -s 9 ".kit[3:8]"  1 18 18 1 1 18;
	setAttr -s 9 ".kot[3:8]"  1 18 18 1 1 18;
	setAttr -s 9 ".kix[3:8]"  1 1 1 1 1 1;
	setAttr -s 9 ".kiy[3:8]"  0 0 0 0 0 0;
	setAttr -s 9 ".kox[3:8]"  1 1 1 1 1 1;
	setAttr -s 9 ".koy[3:8]"  0 0 0 0 0 0;
createNode animCurveTL -n "Head_Control_translateY";
	rename -uid "E6A48AFC-A14C-BECE-A081-87BEAA5A983E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  48 0 58 0 68 0 78 0 80 0 100 0 110 0 112 0
		 150 0;
	setAttr -s 9 ".kit[3:8]"  1 18 18 1 1 18;
	setAttr -s 9 ".kot[3:8]"  1 18 18 1 1 18;
	setAttr -s 9 ".kix[3:8]"  1 1 1 1 1 1;
	setAttr -s 9 ".kiy[3:8]"  0 0 0 0 0 0;
	setAttr -s 9 ".kox[3:8]"  1 1 1 1 1 1;
	setAttr -s 9 ".koy[3:8]"  0 0 0 0 0 0;
createNode animCurveTL -n "Head_Control_translateZ";
	rename -uid "DAF1C6E8-3D4D-031A-1DBE-13A7E5CA8205";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  48 0 58 0 68 0 78 0 80 0 100 0 110 0 112 0
		 150 0;
	setAttr -s 9 ".kit[3:8]"  1 18 18 1 1 18;
	setAttr -s 9 ".kot[3:8]"  1 18 18 1 1 18;
	setAttr -s 9 ".kix[3:8]"  1 1 1 1 1 1;
	setAttr -s 9 ".kiy[3:8]"  0 0 0 0 0 0;
	setAttr -s 9 ".kox[3:8]"  1 1 1 1 1 1;
	setAttr -s 9 ".koy[3:8]"  0 0 0 0 0 0;
createNode animCurveTU -n "Head_Control_scaleX";
	rename -uid "87F0329C-7445-D214-1E73-038D8981BFA6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  48 1 58 1 68 1 78 1 80 1 100 1 110 1 112 1
		 150 1;
	setAttr -s 9 ".kit[3:8]"  1 18 18 1 1 18;
	setAttr -s 9 ".kot[3:8]"  1 18 18 1 1 18;
	setAttr -s 9 ".kix[3:8]"  1 1 1 1 1 1;
	setAttr -s 9 ".kiy[3:8]"  0 0 0 0 0 0;
	setAttr -s 9 ".kox[3:8]"  1 1 1 1 1 1;
	setAttr -s 9 ".koy[3:8]"  0 0 0 0 0 0;
createNode animCurveTU -n "Head_Control_scaleY";
	rename -uid "048FA2C2-CB41-A264-5BE2-45A592ACA3C0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  48 1 58 1 68 1 78 1 80 1 100 1 110 1 112 1
		 150 1;
	setAttr -s 9 ".kit[3:8]"  1 18 18 1 1 18;
	setAttr -s 9 ".kot[3:8]"  1 18 18 1 1 18;
	setAttr -s 9 ".kix[3:8]"  1 1 1 1 1 1;
	setAttr -s 9 ".kiy[3:8]"  0 0 0 0 0 0;
	setAttr -s 9 ".kox[3:8]"  1 1 1 1 1 1;
	setAttr -s 9 ".koy[3:8]"  0 0 0 0 0 0;
createNode animCurveTU -n "Head_Control_scaleZ";
	rename -uid "F2F5AA8E-5544-9E07-5252-71AE6A2F11EA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  48 1 58 1 68 1 78 1 80 1 100 1 110 1 112 1
		 150 1;
	setAttr -s 9 ".kit[3:8]"  1 18 18 1 1 18;
	setAttr -s 9 ".kot[3:8]"  1 18 18 1 1 18;
	setAttr -s 9 ".kix[3:8]"  1 1 1 1 1 1;
	setAttr -s 9 ".kiy[3:8]"  0 0 0 0 0 0;
	setAttr -s 9 ".kox[3:8]"  1 1 1 1 1 1;
	setAttr -s 9 ".koy[3:8]"  0 0 0 0 0 0;
createNode animCurveTL -n "Spine2_Control_translateX";
	rename -uid "DAD1AA3B-FB45-2C99-BDB2-EEBBB55F514D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  48 0 68 0 78 0 80 0 100 0 110 0 112 0 150 0;
	setAttr -s 8 ".kit[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kot[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kix[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".kiy[2:7]"  0 0 0 0 0 0;
	setAttr -s 8 ".kox[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".koy[2:7]"  0 0 0 0 0 0;
createNode animCurveTL -n "Spine2_Control_translateY";
	rename -uid "706137A5-D54C-C329-86C5-479E3ACF17BD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  48 0 68 0 78 0 80 0 100 0 110 0 112 0 150 0;
	setAttr -s 8 ".kit[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kot[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kix[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".kiy[2:7]"  0 0 0 0 0 0;
	setAttr -s 8 ".kox[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".koy[2:7]"  0 0 0 0 0 0;
createNode animCurveTL -n "Spine2_Control_translateZ";
	rename -uid "2B5B5C13-D44B-AFCE-93B5-1DAC43A735A9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  48 0 68 0 78 0 80 0 100 0 110 0 112 0 150 0;
	setAttr -s 8 ".kit[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kot[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kix[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".kiy[2:7]"  0 0 0 0 0 0;
	setAttr -s 8 ".kox[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".koy[2:7]"  0 0 0 0 0 0;
createNode animCurveTL -n "LeftClav_Control_translateX";
	rename -uid "E9882871-424E-FCD7-D084-FD9F610BDC7B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  48 0 68 0 78 0 80 0 100 0 110 0 112 0 150 0;
	setAttr -s 8 ".kit[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kot[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kix[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".kiy[2:7]"  0 0 0 0 0 0;
	setAttr -s 8 ".kox[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".koy[2:7]"  0 0 0 0 0 0;
createNode animCurveTL -n "LeftClav_Control_translateY";
	rename -uid "9AA1EEC0-0E48-1781-9302-418E890BE340";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  48 0 68 0 78 0 80 0 100 0 110 0 112 0 150 0;
	setAttr -s 8 ".kit[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kot[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kix[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".kiy[2:7]"  0 0 0 0 0 0;
	setAttr -s 8 ".kox[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".koy[2:7]"  0 0 0 0 0 0;
createNode animCurveTL -n "LeftClav_Control_translateZ";
	rename -uid "AD486059-DB46-6F11-7CC5-9A864B454A7A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  48 0 68 0 78 0 80 0 100 0 110 0 112 0 150 0;
	setAttr -s 8 ".kit[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kot[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kix[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".kiy[2:7]"  0 0 0 0 0 0;
	setAttr -s 8 ".kox[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".koy[2:7]"  0 0 0 0 0 0;
createNode animCurveTL -n "LeftShoulder_Control_translateX";
	rename -uid "F0439C75-4241-1B34-2F2E-259C54B470EE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  48 62.019362821489288 68 62.019362821489288
		 78 62.019362821489288 80 62.019362821489288 100 62.019362821489288 110 62.019362821489288
		 112 62.019362821489288 150 62.019362821489288;
	setAttr -s 8 ".kit[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kot[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kix[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".kiy[2:7]"  0 0 0 0 0 0;
	setAttr -s 8 ".kox[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".koy[2:7]"  0 0 0 0 0 0;
createNode animCurveTL -n "LeftShoulder_Control_translateY";
	rename -uid "23434816-7147-D7FF-848A-3B861AA08556";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  48 0.00031204268347551078 68 0.00031204268347551078
		 78 0.00031204268347551078 80 0.00031204268347551078 100 0.00031204268347551078 110 0.00031204268347551078
		 112 0.00031204268347551078 150 0.00031204268347551078;
	setAttr -s 8 ".kit[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kot[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kix[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".kiy[2:7]"  0 0 0 0 0 0;
	setAttr -s 8 ".kox[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".koy[2:7]"  0 0 0 0 0 0;
createNode animCurveTL -n "LeftShoulder_Control_translateZ";
	rename -uid "947DD93A-2144-FD59-E575-BFBB3BFDB3AC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  48 3.4604225783496645e-05 68 3.4604225783496645e-05
		 78 3.4604225783496645e-05 80 3.4604225783496645e-05 100 3.4604225783496645e-05 110 3.4604225783496645e-05
		 112 3.4604225783496645e-05 150 3.4604225783496645e-05;
	setAttr -s 8 ".kit[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kot[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kix[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".kiy[2:7]"  0 0 0 0 0 0;
	setAttr -s 8 ".kox[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".koy[2:7]"  0 0 0 0 0 0;
createNode animCurveTL -n "RightClav_Control_translateX";
	rename -uid "6C0E4878-744F-EC85-DA4E-BDBB03C09960";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  48 0 68 0 78 0 80 0 100 0 110 0 112 0 150 0;
	setAttr -s 8 ".kit[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kot[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kix[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".kiy[2:7]"  0 0 0 0 0 0;
	setAttr -s 8 ".kox[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".koy[2:7]"  0 0 0 0 0 0;
createNode animCurveTL -n "RightClav_Control_translateY";
	rename -uid "873EFA7E-614B-641E-874D-46A8F01CAF28";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  48 0 68 0 78 0 80 0 100 0 110 0 112 0 150 0;
	setAttr -s 8 ".kit[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kot[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kix[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".kiy[2:7]"  0 0 0 0 0 0;
	setAttr -s 8 ".kox[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".koy[2:7]"  0 0 0 0 0 0;
createNode animCurveTL -n "RightClav_Control_translateZ";
	rename -uid "F17C0E1A-1540-77F8-6E79-C9A2CE743915";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  48 0 68 0 78 0 80 0 100 0 110 0 112 0 150 0;
	setAttr -s 8 ".kit[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kot[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kix[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".kiy[2:7]"  0 0 0 0 0 0;
	setAttr -s 8 ".kox[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".koy[2:7]"  0 0 0 0 0 0;
createNode animCurveTL -n "RightShoulder_Control_translateX";
	rename -uid "48BFF726-EA4D-B913-2573-1C8AF821525E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  48 0 68 0 78 0 80 0 100 0 110 0 112 0 150 0;
	setAttr -s 8 ".kit[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kot[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kix[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".kiy[2:7]"  0 0 0 0 0 0;
	setAttr -s 8 ".kox[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".koy[2:7]"  0 0 0 0 0 0;
createNode animCurveTL -n "RightShoulder_Control_translateY";
	rename -uid "A36C45C7-E543-C056-1156-2F8592A57E71";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  48 0 68 0 78 0 80 0 100 0 110 0 112 0 150 0;
	setAttr -s 8 ".kit[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kot[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kix[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".kiy[2:7]"  0 0 0 0 0 0;
	setAttr -s 8 ".kox[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".koy[2:7]"  0 0 0 0 0 0;
createNode animCurveTL -n "RightShoulder_Control_translateZ";
	rename -uid "753BFE32-4A41-F0A6-B61C-409D47B4970C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  48 0 68 0 78 0 80 0 100 0 110 0 112 0 150 0;
	setAttr -s 8 ".kit[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kot[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kix[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".kiy[2:7]"  0 0 0 0 0 0;
	setAttr -s 8 ".kox[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".koy[2:7]"  0 0 0 0 0 0;
createNode animCurveTL -n "LeftKnee_Control_translateX";
	rename -uid "57B0213B-7346-873F-AE62-43848943598C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  48 0 68 0 78 0 80 0 100 0 110 0 112 0 150 0;
	setAttr -s 8 ".kit[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kot[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kix[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".kiy[2:7]"  0 0 0 0 0 0;
	setAttr -s 8 ".kox[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".koy[2:7]"  0 0 0 0 0 0;
createNode animCurveTL -n "LeftKnee_Control_translateY";
	rename -uid "803FAA0A-DF42-3008-EB64-15AE7C044AB6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  48 0 68 0 78 0 80 0 100 0 110 0 112 0 150 0;
	setAttr -s 8 ".kit[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kot[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kix[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".kiy[2:7]"  0 0 0 0 0 0;
	setAttr -s 8 ".kox[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".koy[2:7]"  0 0 0 0 0 0;
createNode animCurveTL -n "LeftKnee_Control_translateZ";
	rename -uid "47604904-9F43-8921-3B44-F2AA88D738B7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  48 0 68 0 78 0 80 0 100 0 110 0 112 0 150 0;
	setAttr -s 8 ".kit[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kot[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kix[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".kiy[2:7]"  0 0 0 0 0 0;
	setAttr -s 8 ".kox[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".koy[2:7]"  0 0 0 0 0 0;
createNode animCurveTL -n "nurbsCircle1_translateX";
	rename -uid "254379FA-6E4F-F74A-1A2D-44A39D14A2C4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  48 0 68 0 78 0 80 0 100 0 110 0 112 0 150 0;
	setAttr -s 8 ".kit[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kot[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kix[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".kiy[2:7]"  0 0 0 0 0 0;
	setAttr -s 8 ".kox[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".koy[2:7]"  0 0 0 0 0 0;
createNode animCurveTL -n "nurbsCircle1_translateY";
	rename -uid "A3EDBD70-9046-2ABD-A0E4-F6B062EC2F90";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  48 0 68 0 78 0 80 0 100 0 110 0 112 0 150 0;
	setAttr -s 8 ".kit[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kot[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kix[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".kiy[2:7]"  0 0 0 0 0 0;
	setAttr -s 8 ".kox[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".koy[2:7]"  0 0 0 0 0 0;
createNode animCurveTL -n "nurbsCircle1_translateZ";
	rename -uid "B38B42E6-874C-0906-B775-FEB590A8F55F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  48 0 68 0 78 0 80 0 100 0 110 0 112 0 150 0;
	setAttr -s 8 ".kit[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kot[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kix[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".kiy[2:7]"  0 0 0 0 0 0;
	setAttr -s 8 ".kox[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".koy[2:7]"  0 0 0 0 0 0;
createNode animCurveTL -n "ambientLight1_translateX";
	rename -uid "13B9A281-F541-91B9-1388-F2AD004688EF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  48 0 68 0 78 0 80 0;
	setAttr -s 4 ".kit[2:3]"  1 1;
	setAttr -s 4 ".kot[2:3]"  1 1;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[2:3]"  1 1;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode animCurveTL -n "ambientLight1_translateY";
	rename -uid "3D7C56F3-1749-9347-784C-56978679FF1A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  48 0 68 0 78 0 80 0;
	setAttr -s 4 ".kit[2:3]"  1 1;
	setAttr -s 4 ".kot[2:3]"  1 1;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[2:3]"  1 1;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode animCurveTL -n "ambientLight1_translateZ";
	rename -uid "7AFF210D-E74B-E8C4-9E20-4E9B546B26F9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  48 0 68 0 78 0 80 0;
	setAttr -s 4 ".kit[2:3]"  1 1;
	setAttr -s 4 ".kot[2:3]"  1 1;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[2:3]"  1 1;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode animCurveTU -n "ambientLight1_visibility";
	rename -uid "DFD635C6-7041-0E6C-1526-B3BF10004237";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  48 1 68 1 78 1 80 1;
	setAttr -s 4 ".kit[2:3]"  1 1;
	setAttr -s 4 ".kot[2:3]"  1 1;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[2:3]"  1 1;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode animCurveTA -n "ambientLight1_rotateX";
	rename -uid "CF50E117-9142-A7A0-5388-8096DD554A9C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  48 0 68 0 78 0 80 0;
	setAttr -s 4 ".kit[2:3]"  1 1;
	setAttr -s 4 ".kot[2:3]"  1 1;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[2:3]"  1 1;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode animCurveTA -n "ambientLight1_rotateY";
	rename -uid "3E90981C-0B40-3EF9-6218-34BBF0ECACCB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  48 0 68 0 78 0 80 0;
	setAttr -s 4 ".kit[2:3]"  1 1;
	setAttr -s 4 ".kot[2:3]"  1 1;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[2:3]"  1 1;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode animCurveTA -n "ambientLight1_rotateZ";
	rename -uid "C573AEA8-7641-25C4-B328-D39243CD6F93";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  48 0 68 0 78 0 80 0;
	setAttr -s 4 ".kit[2:3]"  1 1;
	setAttr -s 4 ".kot[2:3]"  1 1;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[2:3]"  1 1;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode animCurveTU -n "ambientLight1_scaleX";
	rename -uid "E5D63D39-2446-5622-F9F2-B08260110639";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  48 1 68 1 78 1 80 1;
	setAttr -s 4 ".kit[2:3]"  1 1;
	setAttr -s 4 ".kot[2:3]"  1 1;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[2:3]"  1 1;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode animCurveTU -n "ambientLight1_scaleY";
	rename -uid "14456217-D449-E6A6-42AD-8CAB04552A9D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  48 1 68 1 78 1 80 1;
	setAttr -s 4 ".kit[2:3]"  1 1;
	setAttr -s 4 ".kot[2:3]"  1 1;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[2:3]"  1 1;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode animCurveTU -n "ambientLight1_scaleZ";
	rename -uid "52F746D7-D440-40CA-749B-14A38756CB64";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  48 1 68 1 78 1 80 1;
	setAttr -s 4 ".kit[2:3]"  1 1;
	setAttr -s 4 ".kot[2:3]"  1 1;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[2:3]"  1 1;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode animCurveTU -n "nurbsCircle1_visibility";
	rename -uid "FAB7BB40-894E-911C-6CA9-269B1FA55820";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  48 1 68 1 78 1 80 1 100 1 110 1 112 1 150 1;
	setAttr -s 8 ".kit[2:7]"  1 18 18 1 1 9;
	setAttr -s 8 ".kot[2:7]"  1 18 18 1 1 5;
	setAttr -s 8 ".kix[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".kiy[2:7]"  0 0 0 0 0 0;
	setAttr -s 8 ".kox[2:7]"  1 1 1 1 1 0;
	setAttr -s 8 ".koy[2:7]"  0 0 0 0 0 0;
createNode animCurveTA -n "nurbsCircle1_rotateX";
	rename -uid "0C44EC9F-474D-6F04-67DB-F39AAF9D94CC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  48 0 68 0 78 0 80 0 100 0 110 0 112 0 150 0;
	setAttr -s 8 ".kit[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kot[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kix[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".kiy[2:7]"  0 0 0 0 0 0;
	setAttr -s 8 ".kox[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".koy[2:7]"  0 0 0 0 0 0;
createNode animCurveTA -n "nurbsCircle1_rotateY";
	rename -uid "5DE4B98E-5541-1A49-7251-F783CED8EA25";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  48 0 68 0 78 0 80 0 100 0 110 0 112 0 150 0;
	setAttr -s 8 ".kit[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kot[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kix[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".kiy[2:7]"  0 0 0 0 0 0;
	setAttr -s 8 ".kox[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".koy[2:7]"  0 0 0 0 0 0;
createNode animCurveTA -n "nurbsCircle1_rotateZ";
	rename -uid "01FAB3FA-1C4E-1276-D866-44AC8FA3A908";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  48 0 68 0 78 0 80 0 100 0 110 0 112 0 150 0;
	setAttr -s 8 ".kit[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kot[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kix[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".kiy[2:7]"  0 0 0 0 0 0;
	setAttr -s 8 ".kox[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".koy[2:7]"  0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle1_scaleX";
	rename -uid "AAB7C91E-D749-1BA5-9F12-FBAD1DA46D59";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  48 1 68 1 78 1 80 1 100 1 110 1 112 1 150 1;
	setAttr -s 8 ".kit[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kot[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kix[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".kiy[2:7]"  0 0 0 0 0 0;
	setAttr -s 8 ".kox[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".koy[2:7]"  0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle1_scaleY";
	rename -uid "D05CD2B5-DF41-9B92-245D-AEB2374D3F8B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  48 1 68 1 78 1 80 1 100 1 110 1 112 1 150 1;
	setAttr -s 8 ".kit[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kot[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kix[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".kiy[2:7]"  0 0 0 0 0 0;
	setAttr -s 8 ".kox[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".koy[2:7]"  0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle1_scaleZ";
	rename -uid "0D957EE8-7647-3AC7-73FF-9E8862E6DDB5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  48 1 68 1 78 1 80 1 100 1 110 1 112 1 150 1;
	setAttr -s 8 ".kit[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kot[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kix[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".kiy[2:7]"  0 0 0 0 0 0;
	setAttr -s 8 ".kox[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".koy[2:7]"  0 0 0 0 0 0;
createNode animCurveTU -n "LeftKnee_Control_visibility";
	rename -uid "52B46519-B046-10C4-8111-9491D37F7120";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  48 1 68 1 78 1 80 1 100 1 110 1 112 1 150 1;
	setAttr -s 8 ".kit[2:7]"  1 18 18 1 1 9;
	setAttr -s 8 ".kot[2:7]"  1 18 18 1 1 5;
	setAttr -s 8 ".kix[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".kiy[2:7]"  0 0 0 0 0 0;
	setAttr -s 8 ".kox[2:7]"  1 1 1 1 1 0;
	setAttr -s 8 ".koy[2:7]"  0 0 0 0 0 0;
createNode animCurveTA -n "LeftKnee_Control_rotateX";
	rename -uid "8EC370B4-DC42-8839-D221-15A125FDDF61";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  48 0 68 0 78 0 80 0 100 0 110 0 112 0 150 0;
	setAttr -s 8 ".kit[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kot[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kix[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".kiy[2:7]"  0 0 0 0 0 0;
	setAttr -s 8 ".kox[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".koy[2:7]"  0 0 0 0 0 0;
createNode animCurveTA -n "LeftKnee_Control_rotateY";
	rename -uid "2A4C6D93-1B45-CD31-7877-0A8F4FEF0FAE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  48 0 68 0 78 0 80 0 100 0 110 0 112 0 150 0;
	setAttr -s 8 ".kit[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kot[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kix[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".kiy[2:7]"  0 0 0 0 0 0;
	setAttr -s 8 ".kox[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".koy[2:7]"  0 0 0 0 0 0;
createNode animCurveTA -n "LeftKnee_Control_rotateZ";
	rename -uid "CAEC0ABE-5C4F-17A4-9BD9-4F871472BB77";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  48 0 68 0 78 0 80 0 100 0 110 0 112 0 150 0;
	setAttr -s 8 ".kit[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kot[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kix[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".kiy[2:7]"  0 0 0 0 0 0;
	setAttr -s 8 ".kox[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".koy[2:7]"  0 0 0 0 0 0;
createNode animCurveTU -n "LeftKnee_Control_scaleX";
	rename -uid "6C491BD7-164F-A214-C02B-0B9F5EEE7E81";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  48 1 68 1 78 1 80 1 100 1 110 1 112 1 150 1;
	setAttr -s 8 ".kit[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kot[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kix[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".kiy[2:7]"  0 0 0 0 0 0;
	setAttr -s 8 ".kox[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".koy[2:7]"  0 0 0 0 0 0;
createNode animCurveTU -n "LeftKnee_Control_scaleY";
	rename -uid "3148AE48-8E4B-8B97-A5E1-51AD952C01F6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  48 1 68 1 78 1 80 1 100 1 110 1 112 1 150 1;
	setAttr -s 8 ".kit[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kot[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kix[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".kiy[2:7]"  0 0 0 0 0 0;
	setAttr -s 8 ".kox[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".koy[2:7]"  0 0 0 0 0 0;
createNode animCurveTU -n "LeftKnee_Control_scaleZ";
	rename -uid "FD655D24-894F-87A0-004A-CCBF4D825692";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  48 1 68 1 78 1 80 1 100 1 110 1 112 1 150 1;
	setAttr -s 8 ".kit[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kot[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kix[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".kiy[2:7]"  0 0 0 0 0 0;
	setAttr -s 8 ".kox[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".koy[2:7]"  0 0 0 0 0 0;
createNode animCurveTU -n "Spine2_Control_visibility";
	rename -uid "601FA769-8141-0177-03FA-F88C8E1070B9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  48 1 68 1 78 1 80 1 100 1 110 1 112 1 150 1;
	setAttr -s 8 ".kit[2:7]"  1 18 18 1 1 9;
	setAttr -s 8 ".kot[2:7]"  1 18 18 1 1 5;
	setAttr -s 8 ".kix[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".kiy[2:7]"  0 0 0 0 0 0;
	setAttr -s 8 ".kox[2:7]"  1 1 1 1 1 0;
	setAttr -s 8 ".koy[2:7]"  0 0 0 0 0 0;
createNode animCurveTA -n "Spine2_Control_rotateX";
	rename -uid "C73EF98C-3749-FB38-CB05-F59FD801E073";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  48 0.68240886776250875 68 0.68240886776250875
		 78 0.68240886776250875 80 0.68240886776250875 100 0.68240886776250875 110 0.68240886776250875
		 112 0.68240886776250875 150 0.68240886776250875;
	setAttr -s 8 ".kit[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kot[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kix[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".kiy[2:7]"  0 0 0 0 0 0;
	setAttr -s 8 ".kox[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".koy[2:7]"  0 0 0 0 0 0;
createNode animCurveTA -n "Spine2_Control_rotateY";
	rename -uid "25232EB9-AC4A-7273-FD2F-069129BF1CD8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  48 1.647705971859148 68 1.647705971859148
		 78 1.647705971859148 80 1.647705971859148 100 1.647705971859148 110 1.647705971859148
		 112 1.647705971859148 150 1.647705971859148;
	setAttr -s 8 ".kit[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kot[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kix[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".kiy[2:7]"  0 0 0 0 0 0;
	setAttr -s 8 ".kox[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".koy[2:7]"  0 0 0 0 0 0;
createNode animCurveTA -n "Spine2_Control_rotateZ";
	rename -uid "90148803-E645-71E8-974C-9B95B9AC0185";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  48 2.6536808744224816 68 2.6536808744224816
		 78 2.6536808744224816 80 2.6536808744224816 100 2.6536808744224816 110 2.6536808744224816
		 112 2.6536808744224816 150 2.6536808744224816;
	setAttr -s 8 ".kit[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kot[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kix[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".kiy[2:7]"  0 0 0 0 0 0;
	setAttr -s 8 ".kox[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".koy[2:7]"  0 0 0 0 0 0;
createNode animCurveTU -n "Spine2_Control_scaleX";
	rename -uid "FA709FEE-8A44-A36B-21EF-EA9ADD7F6137";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  48 1 68 1 78 1 80 1 100 1 110 1 112 1 150 1;
	setAttr -s 8 ".kit[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kot[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kix[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".kiy[2:7]"  0 0 0 0 0 0;
	setAttr -s 8 ".kox[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".koy[2:7]"  0 0 0 0 0 0;
createNode animCurveTU -n "Spine2_Control_scaleY";
	rename -uid "7DCFAA46-964C-ED37-D397-57A9595AC45B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  48 1 68 1 78 1 80 1 100 1 110 1 112 1 150 1;
	setAttr -s 8 ".kit[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kot[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kix[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".kiy[2:7]"  0 0 0 0 0 0;
	setAttr -s 8 ".kox[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".koy[2:7]"  0 0 0 0 0 0;
createNode animCurveTU -n "Spine2_Control_scaleZ";
	rename -uid "7E576877-1B4C-0F11-96C1-C8B70952ADC0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  48 1 68 1 78 1 80 1 100 1 110 1 112 1 150 1;
	setAttr -s 8 ".kit[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kot[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kix[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".kiy[2:7]"  0 0 0 0 0 0;
	setAttr -s 8 ".kox[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".koy[2:7]"  0 0 0 0 0 0;
createNode animCurveTU -n "LeftClav_Control_visibility";
	rename -uid "4E782BD8-1E4F-21EA-8F13-99B83EAB8DFC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  48 1 68 1 78 1 80 1 100 1 110 1 112 1 150 1;
	setAttr -s 8 ".kit[2:7]"  1 18 18 1 1 9;
	setAttr -s 8 ".kot[2:7]"  1 18 18 1 1 5;
	setAttr -s 8 ".kix[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".kiy[2:7]"  0 0 0 0 0 0;
	setAttr -s 8 ".kox[2:7]"  1 1 1 1 1 0;
	setAttr -s 8 ".koy[2:7]"  0 0 0 0 0 0;
createNode animCurveTA -n "LeftClav_Control_rotateX";
	rename -uid "AB8E5A6F-2245-31F1-F6BE-43AFE1328A81";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  48 0 68 0 78 0 80 0 100 0 110 0 112 0 150 0;
	setAttr -s 8 ".kit[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kot[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kix[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".kiy[2:7]"  0 0 0 0 0 0;
	setAttr -s 8 ".kox[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".koy[2:7]"  0 0 0 0 0 0;
createNode animCurveTA -n "LeftClav_Control_rotateY";
	rename -uid "BE789E05-AD4E-C05C-026C-78832D755B8D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  48 0 68 0 78 0 80 0 100 0 110 0 112 0 150 0;
	setAttr -s 8 ".kit[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kot[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kix[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".kiy[2:7]"  0 0 0 0 0 0;
	setAttr -s 8 ".kox[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".koy[2:7]"  0 0 0 0 0 0;
createNode animCurveTA -n "LeftClav_Control_rotateZ";
	rename -uid "1CDC7D3A-E346-8FE5-B3C2-9E818540B97F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  48 0 68 0 78 0 80 0 100 0 110 0 112 0 150 0;
	setAttr -s 8 ".kit[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kot[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kix[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".kiy[2:7]"  0 0 0 0 0 0;
	setAttr -s 8 ".kox[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".koy[2:7]"  0 0 0 0 0 0;
createNode animCurveTU -n "LeftClav_Control_scaleX";
	rename -uid "FD1372A4-7B4C-5A36-0573-99B5D32E28AF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  48 1 68 1 78 1 80 1 100 1 110 1 112 1 150 1;
	setAttr -s 8 ".kit[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kot[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kix[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".kiy[2:7]"  0 0 0 0 0 0;
	setAttr -s 8 ".kox[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".koy[2:7]"  0 0 0 0 0 0;
createNode animCurveTU -n "LeftClav_Control_scaleY";
	rename -uid "2564FA08-D848-C70D-479B-DE9B1C10FCE6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  48 1 68 1 78 1 80 1 100 1 110 1 112 1 150 1;
	setAttr -s 8 ".kit[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kot[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kix[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".kiy[2:7]"  0 0 0 0 0 0;
	setAttr -s 8 ".kox[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".koy[2:7]"  0 0 0 0 0 0;
createNode animCurveTU -n "LeftClav_Control_scaleZ";
	rename -uid "F440C775-3A4B-30DA-FC94-3485132EA422";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  48 1 68 1 78 1 80 1 100 1 110 1 112 1 150 1;
	setAttr -s 8 ".kit[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kot[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kix[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".kiy[2:7]"  0 0 0 0 0 0;
	setAttr -s 8 ".kox[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".koy[2:7]"  0 0 0 0 0 0;
createNode animCurveTU -n "RightClav_Control_visibility";
	rename -uid "175BF2FB-6B4A-E276-AAFE-6FA1E9C91D61";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  48 1 68 1 78 1 80 1 100 1 110 1 112 1 150 1;
	setAttr -s 8 ".kit[2:7]"  1 18 18 1 1 9;
	setAttr -s 8 ".kot[2:7]"  1 18 18 1 1 5;
	setAttr -s 8 ".kix[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".kiy[2:7]"  0 0 0 0 0 0;
	setAttr -s 8 ".kox[2:7]"  1 1 1 1 1 0;
	setAttr -s 8 ".koy[2:7]"  0 0 0 0 0 0;
createNode animCurveTA -n "RightClav_Control_rotateX";
	rename -uid "CFE59A95-114F-C4AD-C310-2FA93697DDB6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  48 0 68 0 78 0 80 0 100 0 110 0 112 0 150 0;
	setAttr -s 8 ".kit[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kot[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kix[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".kiy[2:7]"  0 0 0 0 0 0;
	setAttr -s 8 ".kox[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".koy[2:7]"  0 0 0 0 0 0;
createNode animCurveTA -n "RightClav_Control_rotateY";
	rename -uid "62F738C6-2442-702A-FF26-DE9F5677E949";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  48 0 68 0 78 0 80 0 100 0 110 0 112 0 150 0;
	setAttr -s 8 ".kit[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kot[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kix[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".kiy[2:7]"  0 0 0 0 0 0;
	setAttr -s 8 ".kox[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".koy[2:7]"  0 0 0 0 0 0;
createNode animCurveTA -n "RightClav_Control_rotateZ";
	rename -uid "20BAB419-1B45-E877-B9BC-75B6AD2F43F3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  48 0 68 0 78 0 80 0 100 0 110 0 112 0 150 0;
	setAttr -s 8 ".kit[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kot[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kix[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".kiy[2:7]"  0 0 0 0 0 0;
	setAttr -s 8 ".kox[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".koy[2:7]"  0 0 0 0 0 0;
createNode animCurveTU -n "RightClav_Control_scaleX";
	rename -uid "906E1AFD-1A47-212C-1255-63866A8EB986";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  48 1 68 1 78 1 80 1 100 1 110 1 112 1 150 1;
	setAttr -s 8 ".kit[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kot[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kix[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".kiy[2:7]"  0 0 0 0 0 0;
	setAttr -s 8 ".kox[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".koy[2:7]"  0 0 0 0 0 0;
createNode animCurveTU -n "RightClav_Control_scaleY";
	rename -uid "382736C3-A04B-F0E7-2F22-5A9FF6BFB507";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  48 1 68 1 78 1 80 1 100 1 110 1 112 1 150 1;
	setAttr -s 8 ".kit[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kot[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kix[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".kiy[2:7]"  0 0 0 0 0 0;
	setAttr -s 8 ".kox[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".koy[2:7]"  0 0 0 0 0 0;
createNode animCurveTU -n "RightClav_Control_scaleZ";
	rename -uid "0FA5D72C-A44D-3098-F59B-6BAF43C6DFB2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  48 1 68 1 78 1 80 1 100 1 110 1 112 1 150 1;
	setAttr -s 8 ".kit[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kot[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kix[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".kiy[2:7]"  0 0 0 0 0 0;
	setAttr -s 8 ".kox[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".koy[2:7]"  0 0 0 0 0 0;
createNode animCurveTU -n "LeftShoulder_Control_visibility";
	rename -uid "C1BF1C3D-6048-25F1-A606-468BBE15891C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  48 1 68 1 78 1 80 1 100 1 110 1 112 1 150 1;
	setAttr -s 8 ".kit[2:7]"  1 18 18 1 1 9;
	setAttr -s 8 ".kot[2:7]"  1 18 18 1 1 5;
	setAttr -s 8 ".kix[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".kiy[2:7]"  0 0 0 0 0 0;
	setAttr -s 8 ".kox[2:7]"  1 1 1 1 1 0;
	setAttr -s 8 ".koy[2:7]"  0 0 0 0 0 0;
createNode animCurveTA -n "LeftShoulder_Control_rotateX";
	rename -uid "DD591235-6647-2A02-0CF5-9A90A677A6E9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  48 0 68 0 78 0 80 0 100 0 110 0 112 0 150 0;
	setAttr -s 8 ".kit[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kot[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kix[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".kiy[2:7]"  0 0 0 0 0 0;
	setAttr -s 8 ".kox[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".koy[2:7]"  0 0 0 0 0 0;
createNode animCurveTA -n "LeftShoulder_Control_rotateY";
	rename -uid "A3634DDE-DF42-7AD6-9574-E89908237957";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  48 0 68 0 78 0 80 0 100 0 110 0 112 0 150 0;
	setAttr -s 8 ".kit[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kot[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kix[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".kiy[2:7]"  0 0 0 0 0 0;
	setAttr -s 8 ".kox[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".koy[2:7]"  0 0 0 0 0 0;
createNode animCurveTA -n "LeftShoulder_Control_rotateZ";
	rename -uid "81440589-5245-1351-AF3D-9C966140CB6D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  48 0 68 0 78 0 80 0 100 0 110 0 112 0 150 0;
	setAttr -s 8 ".kit[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kot[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kix[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".kiy[2:7]"  0 0 0 0 0 0;
	setAttr -s 8 ".kox[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".koy[2:7]"  0 0 0 0 0 0;
createNode animCurveTU -n "LeftShoulder_Control_scaleX";
	rename -uid "8652B8BF-E843-D815-C75D-A19AA60B0FF0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  48 1 68 1 78 1 80 1 100 1 110 1 112 1 150 1;
	setAttr -s 8 ".kit[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kot[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kix[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".kiy[2:7]"  0 0 0 0 0 0;
	setAttr -s 8 ".kox[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".koy[2:7]"  0 0 0 0 0 0;
createNode animCurveTU -n "LeftShoulder_Control_scaleY";
	rename -uid "2050DA87-3140-A3F6-619D-61A97F129A10";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  48 1 68 1 78 1 80 1 100 1 110 1 112 1 150 1;
	setAttr -s 8 ".kit[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kot[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kix[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".kiy[2:7]"  0 0 0 0 0 0;
	setAttr -s 8 ".kox[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".koy[2:7]"  0 0 0 0 0 0;
createNode animCurveTU -n "LeftShoulder_Control_scaleZ";
	rename -uid "C8667203-FF4B-617F-0679-E18888FFCE03";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  48 1 68 1 78 1 80 1 100 1 110 1 112 1 150 1;
	setAttr -s 8 ".kit[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kot[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kix[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".kiy[2:7]"  0 0 0 0 0 0;
	setAttr -s 8 ".kox[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".koy[2:7]"  0 0 0 0 0 0;
createNode animCurveTU -n "RightShoulder_Control_visibility";
	rename -uid "012FFD2E-8B4D-E151-62EF-788670340C6F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  48 1 68 1 78 1 80 1 100 1 110 1 112 1 150 1;
	setAttr -s 8 ".kit[2:7]"  1 18 18 1 1 9;
	setAttr -s 8 ".kot[2:7]"  1 18 18 1 1 5;
	setAttr -s 8 ".kix[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".kiy[2:7]"  0 0 0 0 0 0;
	setAttr -s 8 ".kox[2:7]"  1 1 1 1 1 0;
	setAttr -s 8 ".koy[2:7]"  0 0 0 0 0 0;
createNode animCurveTA -n "RightShoulder_Control_rotateX";
	rename -uid "6DAB9F06-AB45-9042-4B16-DCA93152C3F5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  48 0 68 0 78 0 80 0 100 0 110 0 112 0 150 0;
	setAttr -s 8 ".kit[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kot[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kix[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".kiy[2:7]"  0 0 0 0 0 0;
	setAttr -s 8 ".kox[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".koy[2:7]"  0 0 0 0 0 0;
createNode animCurveTA -n "RightShoulder_Control_rotateY";
	rename -uid "0C5E6013-7B4E-4FA4-CC06-4697CB594511";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  48 0 68 0 78 0 80 0 100 0 110 0 112 0 150 0;
	setAttr -s 8 ".kit[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kot[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kix[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".kiy[2:7]"  0 0 0 0 0 0;
	setAttr -s 8 ".kox[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".koy[2:7]"  0 0 0 0 0 0;
createNode animCurveTA -n "RightShoulder_Control_rotateZ";
	rename -uid "AD2DDB9B-F946-23E2-5B41-C1A036853AD1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  48 0 68 0 78 0 80 0 100 0 110 0 112 0 150 0;
	setAttr -s 8 ".kit[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kot[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kix[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".kiy[2:7]"  0 0 0 0 0 0;
	setAttr -s 8 ".kox[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".koy[2:7]"  0 0 0 0 0 0;
createNode animCurveTU -n "RightShoulder_Control_scaleX";
	rename -uid "724CDDC6-A24B-F86C-BD21-19971B355ED2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  48 1 68 1 78 1 80 1 100 1 110 1 112 1 150 1;
	setAttr -s 8 ".kit[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kot[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kix[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".kiy[2:7]"  0 0 0 0 0 0;
	setAttr -s 8 ".kox[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".koy[2:7]"  0 0 0 0 0 0;
createNode animCurveTU -n "RightShoulder_Control_scaleY";
	rename -uid "C99C2B5D-2146-F121-8316-3FA051293454";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  48 1 68 1 78 1 80 1 100 1 110 1 112 1 150 1;
	setAttr -s 8 ".kit[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kot[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kix[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".kiy[2:7]"  0 0 0 0 0 0;
	setAttr -s 8 ".kox[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".koy[2:7]"  0 0 0 0 0 0;
createNode animCurveTU -n "RightShoulder_Control_scaleZ";
	rename -uid "EC27B617-1F4B-174F-20AC-A1ADE2D2FA50";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  48 1 68 1 78 1 80 1 100 1 110 1 112 1 150 1;
	setAttr -s 8 ".kit[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kot[2:7]"  1 18 18 1 1 18;
	setAttr -s 8 ".kix[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".kiy[2:7]"  0 0 0 0 0 0;
	setAttr -s 8 ".kox[2:7]"  1 1 1 1 1 1;
	setAttr -s 8 ".koy[2:7]"  0 0 0 0 0 0;
createNode animCurveTL -n "directionalLight1_translateX";
	rename -uid "B884C418-DB47-1297-B6FD-69A5C07ED5D1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  48 336.47634240202524 68 336.47634240202524
		 78 336.47634240202524 80 336.47634240202524;
	setAttr -s 4 ".kit[2:3]"  1 1;
	setAttr -s 4 ".kot[2:3]"  1 1;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[2:3]"  1 1;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode animCurveTL -n "directionalLight1_translateY";
	rename -uid "324A5769-1541-711C-E190-E5AB976B26FE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  48 298.61055038474706 68 298.61055038474706
		 78 298.61055038474706 80 298.61055038474706;
	setAttr -s 4 ".kit[2:3]"  1 1;
	setAttr -s 4 ".kot[2:3]"  1 1;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[2:3]"  1 1;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode animCurveTL -n "directionalLight1_translateZ";
	rename -uid "A11E16E5-5044-92D5-31D8-8681D86A7A9A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  48 8.7565092089336005 68 8.7565092089336005
		 78 8.7565092089336005 80 8.7565092089336005;
	setAttr -s 4 ".kit[2:3]"  1 1;
	setAttr -s 4 ".kot[2:3]"  1 1;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[2:3]"  1 1;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode animCurveTL -n "directionalLight2_translateX";
	rename -uid "11EC0C67-534F-24DF-264D-3BB7192B74C6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  48 258.44873786725543 68 258.44873786725543
		 78 258.44873786725543 80 258.44873786725543;
	setAttr -s 4 ".kit[2:3]"  1 1;
	setAttr -s 4 ".kot[2:3]"  1 1;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[2:3]"  1 1;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode animCurveTL -n "directionalLight2_translateY";
	rename -uid "12E15B58-B04A-EE8A-FB5F-92A4F7D92027";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  48 330.98318315615302 68 330.98318315615302
		 78 330.98318315615302 80 330.98318315615302;
	setAttr -s 4 ".kit[2:3]"  1 1;
	setAttr -s 4 ".kot[2:3]"  1 1;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[2:3]"  1 1;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode animCurveTL -n "directionalLight2_translateZ";
	rename -uid "1348F67B-6B4C-476D-0EAB-898122DECB75";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  48 40.524191463103293 68 40.524191463103293
		 78 40.524191463103293 80 40.524191463103293;
	setAttr -s 4 ".kit[2:3]"  1 1;
	setAttr -s 4 ".kot[2:3]"  1 1;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[2:3]"  1 1;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode animCurveTU -n "directionalLight1_visibility";
	rename -uid "23C10431-284A-5918-6731-0D806874877A";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  48 1 68 1 78 1 80 1;
	setAttr -s 4 ".kit[0:3]"  9 9 1 1;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
createNode animCurveTA -n "directionalLight1_rotateX";
	rename -uid "82A8A176-B242-652B-91F9-7EBA6D7E01CB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  48 -52.446542366013126 68 -52.446542366013126
		 78 -52.446542366013126 80 -52.446542366013126;
	setAttr -s 4 ".kit[2:3]"  1 1;
	setAttr -s 4 ".kot[2:3]"  1 1;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[2:3]"  1 1;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode animCurveTA -n "directionalLight1_rotateY";
	rename -uid "76AB4F19-8946-F31E-E930-04A4AB820F9B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  48 -49.335963345270699 68 -49.335963345270699
		 78 -49.335963345270699 80 -49.335963345270699;
	setAttr -s 4 ".kit[2:3]"  1 1;
	setAttr -s 4 ".kot[2:3]"  1 1;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[2:3]"  1 1;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode animCurveTA -n "directionalLight1_rotateZ";
	rename -uid "6B06646A-0D41-9397-CF46-0AA01FDCCD50";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  48 -58.439336520163799 68 -58.439336520163799
		 78 -58.439336520163799 80 -58.439336520163799;
	setAttr -s 4 ".kit[2:3]"  1 1;
	setAttr -s 4 ".kot[2:3]"  1 1;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[2:3]"  1 1;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode animCurveTU -n "directionalLight1_scaleX";
	rename -uid "16D15EFB-B94C-7D51-3173-69B3AF5CBCCD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  48 1 68 1 78 1 80 1;
	setAttr -s 4 ".kit[2:3]"  1 1;
	setAttr -s 4 ".kot[2:3]"  1 1;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[2:3]"  1 1;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode animCurveTU -n "directionalLight1_scaleY";
	rename -uid "49CDF4EE-3041-7676-C175-078D74CFAB33";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  48 1 68 1 78 1 80 1;
	setAttr -s 4 ".kit[2:3]"  1 1;
	setAttr -s 4 ".kot[2:3]"  1 1;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[2:3]"  1 1;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode animCurveTU -n "directionalLight1_scaleZ";
	rename -uid "B88165EE-8B45-EBFA-16EB-159A1B54CE18";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  48 1 68 1 78 1 80 1;
	setAttr -s 4 ".kit[2:3]"  1 1;
	setAttr -s 4 ".kot[2:3]"  1 1;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[2:3]"  1 1;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode animCurveTU -n "directionalLight2_visibility";
	rename -uid "2CB458A8-3F40-D806-F30D-BC94FDE95960";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  48 1 68 1 78 1 80 1;
	setAttr -s 4 ".kit[0:3]"  9 9 1 1;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
createNode animCurveTA -n "directionalLight2_rotateX";
	rename -uid "F6EB9E9E-8749-970A-F75E-0FB541DEEB3F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  48 248.81331795103034 68 248.81331795103034
		 78 248.81331795103034 80 248.81331795103034;
	setAttr -s 4 ".kit[2:3]"  1 1;
	setAttr -s 4 ".kot[2:3]"  1 1;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[2:3]"  1 1;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode animCurveTA -n "directionalLight2_rotateY";
	rename -uid "67E81FFB-8A4D-3831-9868-BBA99AD5BA86";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  48 1.1842510559996151 68 1.1842510559996151
		 78 1.1842510559996151 80 1.1842510559996151;
	setAttr -s 4 ".kit[2:3]"  1 1;
	setAttr -s 4 ".kot[2:3]"  1 1;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[2:3]"  1 1;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode animCurveTA -n "directionalLight2_rotateZ";
	rename -uid "0E6BA146-2645-6FF4-E193-01812A7D2D20";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  48 -206.2294428912173 68 -206.2294428912173
		 78 -206.2294428912173 80 -206.2294428912173;
	setAttr -s 4 ".kit[2:3]"  1 1;
	setAttr -s 4 ".kot[2:3]"  1 1;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[2:3]"  1 1;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode animCurveTU -n "directionalLight2_scaleX";
	rename -uid "1EEA495A-8E4B-7285-4054-87923C8446C6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  48 1 68 1 78 1 80 1;
	setAttr -s 4 ".kit[2:3]"  1 1;
	setAttr -s 4 ".kot[2:3]"  1 1;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[2:3]"  1 1;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode animCurveTU -n "directionalLight2_scaleY";
	rename -uid "C7DAE741-3242-EB3E-440B-58AF8E1B60CF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  48 1 68 1 78 1 80 1;
	setAttr -s 4 ".kit[2:3]"  1 1;
	setAttr -s 4 ".kot[2:3]"  1 1;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[2:3]"  1 1;
	setAttr -s 4 ".koy[2:3]"  0 0;
createNode animCurveTU -n "directionalLight2_scaleZ";
	rename -uid "ABDCE6E6-1045-D250-5271-9A8AFA6FAE47";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  48 1 68 1 78 1 80 1;
	setAttr -s 4 ".kit[2:3]"  1 1;
	setAttr -s 4 ".kot[2:3]"  1 1;
	setAttr -s 4 ".kix[2:3]"  1 1;
	setAttr -s 4 ".kiy[2:3]"  0 0;
	setAttr -s 4 ".kox[2:3]"  1 1;
	setAttr -s 4 ".koy[2:3]"  0 0;
select -ne :time1;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".o" 0;
	setAttr -av ".unw";
	setAttr -k on ".etw";
	setAttr -k on ".tps";
	setAttr -k on ".tms";
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".aoon" yes;
	setAttr -k on ".mbsof";
	setAttr ".msaa" yes;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 10 ".st";
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
	setAttr -s 12 ".s";
select -ne :postProcessList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 6 ".u";
select -ne :defaultRenderingList1;
	setAttr -s 3 ".r";
select -ne :lightList1;
	setAttr -s 3 ".l";
select -ne :defaultTextureList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 7 ".tx";
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
select -ne :defaultResolution;
	setAttr -av -k on ".cch";
	setAttr -k on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -k on ".bnm";
	setAttr -av ".w";
	setAttr -av ".h";
	setAttr -av ".pa" 1;
	setAttr -av -k on ".al";
	setAttr -av ".dar";
	setAttr -av -k on ".ldar";
	setAttr -k on ".dpi";
	setAttr -av -k on ".off";
	setAttr -av -k on ".fld";
	setAttr -av -k on ".zsl";
	setAttr -k on ".isu";
	setAttr -k on ".pdu";
select -ne :defaultLightSet;
	setAttr -s 3 ".dsm";
select -ne :hardwareRenderGlobals;
	setAttr -k on ".cch";
	setAttr -k on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr ".ctrs" 256;
	setAttr -av ".btrs" 512;
	setAttr -k off ".fbfm";
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
	setAttr -k off ".enpt";
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
connectAttr "RootMotion_Control_translateX.o" "CombotRN.phl[2]";
connectAttr "RootMotion_Control_translateY.o" "CombotRN.phl[3]";
connectAttr "RootMotion_Control_translateZ.o" "CombotRN.phl[4]";
connectAttr "RootMotion_Control_rotateX.o" "CombotRN.phl[5]";
connectAttr "RootMotion_Control_rotateY.o" "CombotRN.phl[6]";
connectAttr "RootMotion_Control_rotateZ.o" "CombotRN.phl[7]";
connectAttr "RootMotion_Control_scaleX.o" "CombotRN.phl[8]";
connectAttr "RootMotion_Control_scaleY.o" "CombotRN.phl[9]";
connectAttr "RootMotion_Control_scaleZ.o" "CombotRN.phl[10]";
connectAttr "RootMotion_Control_visibility.o" "CombotRN.phl[11]";
connectAttr "RIghtFoot_Control_rotateX.o" "CombotRN.phl[12]";
connectAttr "RIghtFoot_Control_rotateY.o" "CombotRN.phl[13]";
connectAttr "RIghtFoot_Control_rotateZ.o" "CombotRN.phl[14]";
connectAttr "RIghtFoot_Control_translateX.o" "CombotRN.phl[15]";
connectAttr "RIghtFoot_Control_translateY.o" "CombotRN.phl[16]";
connectAttr "RIghtFoot_Control_translateZ.o" "CombotRN.phl[17]";
connectAttr "RIghtFoot_Control_visibility.o" "CombotRN.phl[18]";
connectAttr "RIghtFoot_Control_scaleX.o" "CombotRN.phl[19]";
connectAttr "RIghtFoot_Control_scaleY.o" "CombotRN.phl[20]";
connectAttr "RIghtFoot_Control_scaleZ.o" "CombotRN.phl[21]";
connectAttr "RightToes_Control_rotateX.o" "CombotRN.phl[22]";
connectAttr "RightToes_Control_rotateY.o" "CombotRN.phl[23]";
connectAttr "RightToes_Control_rotateZ.o" "CombotRN.phl[24]";
connectAttr "RightToes_Control_visibility.o" "CombotRN.phl[25]";
connectAttr "RightToes_Control_translateX.o" "CombotRN.phl[26]";
connectAttr "RightToes_Control_translateY.o" "CombotRN.phl[27]";
connectAttr "RightToes_Control_translateZ.o" "CombotRN.phl[28]";
connectAttr "RightToes_Control_scaleX.o" "CombotRN.phl[29]";
connectAttr "RightToes_Control_scaleY.o" "CombotRN.phl[30]";
connectAttr "RightToes_Control_scaleZ.o" "CombotRN.phl[31]";
connectAttr "nurbsCircle1_translateX.o" "CombotRN.phl[32]";
connectAttr "nurbsCircle1_translateY.o" "CombotRN.phl[33]";
connectAttr "nurbsCircle1_translateZ.o" "CombotRN.phl[34]";
connectAttr "nurbsCircle1_visibility.o" "CombotRN.phl[35]";
connectAttr "nurbsCircle1_rotateX.o" "CombotRN.phl[36]";
connectAttr "nurbsCircle1_rotateY.o" "CombotRN.phl[37]";
connectAttr "nurbsCircle1_rotateZ.o" "CombotRN.phl[38]";
connectAttr "nurbsCircle1_scaleX.o" "CombotRN.phl[39]";
connectAttr "nurbsCircle1_scaleY.o" "CombotRN.phl[40]";
connectAttr "nurbsCircle1_scaleZ.o" "CombotRN.phl[41]";
connectAttr "LeftFoot_Control_rotateX.o" "CombotRN.phl[42]";
connectAttr "LeftFoot_Control_rotateY.o" "CombotRN.phl[43]";
connectAttr "LeftFoot_Control_rotateZ.o" "CombotRN.phl[44]";
connectAttr "LeftFoot_Control_translateX.o" "CombotRN.phl[45]";
connectAttr "LeftFoot_Control_translateY.o" "CombotRN.phl[46]";
connectAttr "LeftFoot_Control_translateZ.o" "CombotRN.phl[47]";
connectAttr "LeftFoot_Control_visibility.o" "CombotRN.phl[48]";
connectAttr "LeftFoot_Control_scaleX.o" "CombotRN.phl[49]";
connectAttr "LeftFoot_Control_scaleY.o" "CombotRN.phl[50]";
connectAttr "LeftFoot_Control_scaleZ.o" "CombotRN.phl[51]";
connectAttr "LeftToes_Control_rotateX.o" "CombotRN.phl[52]";
connectAttr "LeftToes_Control_rotateY.o" "CombotRN.phl[53]";
connectAttr "LeftToes_Control_rotateZ.o" "CombotRN.phl[54]";
connectAttr "LeftToes_Control_translateX.o" "CombotRN.phl[55]";
connectAttr "LeftToes_Control_translateY.o" "CombotRN.phl[56]";
connectAttr "LeftToes_Control_translateZ.o" "CombotRN.phl[57]";
connectAttr "LeftToes_Control_visibility.o" "CombotRN.phl[58]";
connectAttr "LeftToes_Control_scaleX.o" "CombotRN.phl[59]";
connectAttr "LeftToes_Control_scaleY.o" "CombotRN.phl[60]";
connectAttr "LeftToes_Control_scaleZ.o" "CombotRN.phl[61]";
connectAttr "LeftKnee_Control_translateX.o" "CombotRN.phl[62]";
connectAttr "LeftKnee_Control_translateY.o" "CombotRN.phl[63]";
connectAttr "LeftKnee_Control_translateZ.o" "CombotRN.phl[64]";
connectAttr "LeftKnee_Control_visibility.o" "CombotRN.phl[65]";
connectAttr "LeftKnee_Control_rotateX.o" "CombotRN.phl[66]";
connectAttr "LeftKnee_Control_rotateY.o" "CombotRN.phl[67]";
connectAttr "LeftKnee_Control_rotateZ.o" "CombotRN.phl[68]";
connectAttr "LeftKnee_Control_scaleX.o" "CombotRN.phl[69]";
connectAttr "LeftKnee_Control_scaleY.o" "CombotRN.phl[70]";
connectAttr "LeftKnee_Control_scaleZ.o" "CombotRN.phl[71]";
connectAttr "Hips_Control_translateX.o" "CombotRN.phl[72]";
connectAttr "Hips_Control_translateY.o" "CombotRN.phl[73]";
connectAttr "Hips_Control_translateZ.o" "CombotRN.phl[74]";
connectAttr "Hips_Control_rotateX.o" "CombotRN.phl[75]";
connectAttr "Hips_Control_rotateY.o" "CombotRN.phl[76]";
connectAttr "Hips_Control_rotateZ.o" "CombotRN.phl[77]";
connectAttr "Hips_Control_scaleX.o" "CombotRN.phl[78]";
connectAttr "Hips_Control_scaleY.o" "CombotRN.phl[79]";
connectAttr "Hips_Control_scaleZ.o" "CombotRN.phl[80]";
connectAttr "Hips_Control_visibility.o" "CombotRN.phl[81]";
connectAttr "Spine1_Control_rotateX.o" "CombotRN.phl[82]";
connectAttr "Spine1_Control_rotateY.o" "CombotRN.phl[83]";
connectAttr "Spine1_Control_rotateZ.o" "CombotRN.phl[84]";
connectAttr "Spine1_Control_visibility.o" "CombotRN.phl[85]";
connectAttr "Spine1_Control_translateX.o" "CombotRN.phl[86]";
connectAttr "Spine1_Control_translateY.o" "CombotRN.phl[87]";
connectAttr "Spine1_Control_translateZ.o" "CombotRN.phl[88]";
connectAttr "Spine1_Control_scaleX.o" "CombotRN.phl[89]";
connectAttr "Spine1_Control_scaleY.o" "CombotRN.phl[90]";
connectAttr "Spine1_Control_scaleZ.o" "CombotRN.phl[91]";
connectAttr "Spine2_Control_rotateX.o" "CombotRN.phl[92]";
connectAttr "Spine2_Control_rotateY.o" "CombotRN.phl[93]";
connectAttr "Spine2_Control_rotateZ.o" "CombotRN.phl[94]";
connectAttr "Spine2_Control_scaleX.o" "CombotRN.phl[95]";
connectAttr "Spine2_Control_scaleY.o" "CombotRN.phl[96]";
connectAttr "Spine2_Control_scaleZ.o" "CombotRN.phl[97]";
connectAttr "Spine2_Control_translateX.o" "CombotRN.phl[98]";
connectAttr "Spine2_Control_translateY.o" "CombotRN.phl[99]";
connectAttr "Spine2_Control_translateZ.o" "CombotRN.phl[100]";
connectAttr "Spine2_Control_visibility.o" "CombotRN.phl[101]";
connectAttr "LeftClav_Control_rotateX.o" "CombotRN.phl[102]";
connectAttr "LeftClav_Control_rotateY.o" "CombotRN.phl[103]";
connectAttr "LeftClav_Control_rotateZ.o" "CombotRN.phl[104]";
connectAttr "LeftClav_Control_translateX.o" "CombotRN.phl[105]";
connectAttr "LeftClav_Control_translateY.o" "CombotRN.phl[106]";
connectAttr "LeftClav_Control_translateZ.o" "CombotRN.phl[107]";
connectAttr "LeftClav_Control_visibility.o" "CombotRN.phl[108]";
connectAttr "LeftClav_Control_scaleX.o" "CombotRN.phl[109]";
connectAttr "LeftClav_Control_scaleY.o" "CombotRN.phl[110]";
connectAttr "LeftClav_Control_scaleZ.o" "CombotRN.phl[111]";
connectAttr "RightClav_Control_rotateX.o" "CombotRN.phl[112]";
connectAttr "RightClav_Control_rotateY.o" "CombotRN.phl[113]";
connectAttr "RightClav_Control_rotateZ.o" "CombotRN.phl[114]";
connectAttr "RightClav_Control_translateX.o" "CombotRN.phl[115]";
connectAttr "RightClav_Control_translateY.o" "CombotRN.phl[116]";
connectAttr "RightClav_Control_translateZ.o" "CombotRN.phl[117]";
connectAttr "RightClav_Control_visibility.o" "CombotRN.phl[118]";
connectAttr "RightClav_Control_scaleX.o" "CombotRN.phl[119]";
connectAttr "RightClav_Control_scaleY.o" "CombotRN.phl[120]";
connectAttr "RightClav_Control_scaleZ.o" "CombotRN.phl[121]";
connectAttr "Neck_Control_rotateX.o" "CombotRN.phl[122]";
connectAttr "Neck_Control_rotateY.o" "CombotRN.phl[123]";
connectAttr "Neck_Control_rotateZ.o" "CombotRN.phl[124]";
connectAttr "Neck_Control_visibility.o" "CombotRN.phl[125]";
connectAttr "Neck_Control_translateX.o" "CombotRN.phl[126]";
connectAttr "Neck_Control_translateY.o" "CombotRN.phl[127]";
connectAttr "Neck_Control_translateZ.o" "CombotRN.phl[128]";
connectAttr "Neck_Control_scaleX.o" "CombotRN.phl[129]";
connectAttr "Neck_Control_scaleY.o" "CombotRN.phl[130]";
connectAttr "Neck_Control_scaleZ.o" "CombotRN.phl[131]";
connectAttr "Head_Control_rotateX.o" "CombotRN.phl[132]";
connectAttr "Head_Control_rotateY.o" "CombotRN.phl[133]";
connectAttr "Head_Control_rotateZ.o" "CombotRN.phl[134]";
connectAttr "Head_Control_visibility.o" "CombotRN.phl[135]";
connectAttr "Head_Control_translateX.o" "CombotRN.phl[136]";
connectAttr "Head_Control_translateY.o" "CombotRN.phl[137]";
connectAttr "Head_Control_translateZ.o" "CombotRN.phl[138]";
connectAttr "Head_Control_scaleX.o" "CombotRN.phl[139]";
connectAttr "Head_Control_scaleY.o" "CombotRN.phl[140]";
connectAttr "Head_Control_scaleZ.o" "CombotRN.phl[141]";
connectAttr "LeftShoulder_Control_rotateX.o" "CombotRN.phl[142]";
connectAttr "LeftShoulder_Control_rotateY.o" "CombotRN.phl[143]";
connectAttr "LeftShoulder_Control_rotateZ.o" "CombotRN.phl[144]";
connectAttr "LeftShoulder_Control_translateX.o" "CombotRN.phl[145]";
connectAttr "LeftShoulder_Control_translateY.o" "CombotRN.phl[146]";
connectAttr "LeftShoulder_Control_translateZ.o" "CombotRN.phl[147]";
connectAttr "LeftShoulder_Control_visibility.o" "CombotRN.phl[148]";
connectAttr "LeftShoulder_Control_scaleX.o" "CombotRN.phl[149]";
connectAttr "LeftShoulder_Control_scaleY.o" "CombotRN.phl[150]";
connectAttr "LeftShoulder_Control_scaleZ.o" "CombotRN.phl[151]";
connectAttr "RightShoulder_Control_rotateX.o" "CombotRN.phl[152]";
connectAttr "RightShoulder_Control_rotateY.o" "CombotRN.phl[153]";
connectAttr "RightShoulder_Control_rotateZ.o" "CombotRN.phl[154]";
connectAttr "RightShoulder_Control_translateX.o" "CombotRN.phl[155]";
connectAttr "RightShoulder_Control_translateY.o" "CombotRN.phl[156]";
connectAttr "RightShoulder_Control_translateZ.o" "CombotRN.phl[157]";
connectAttr "RightShoulder_Control_visibility.o" "CombotRN.phl[158]";
connectAttr "RightShoulder_Control_scaleX.o" "CombotRN.phl[159]";
connectAttr "RightShoulder_Control_scaleY.o" "CombotRN.phl[160]";
connectAttr "RightShoulder_Control_scaleZ.o" "CombotRN.phl[161]";
connectAttr "RightHand_Control_Grip.o" "CombotRN.phl[162]";
connectAttr "RightHand_Control_rotateX.o" "CombotRN.phl[163]";
connectAttr "RightHand_Control_rotateY.o" "CombotRN.phl[164]";
connectAttr "RightHand_Control_rotateZ.o" "CombotRN.phl[165]";
connectAttr "RightHand_Control_translateX.o" "CombotRN.phl[166]";
connectAttr "RightHand_Control_translateY.o" "CombotRN.phl[167]";
connectAttr "RightHand_Control_translateZ.o" "CombotRN.phl[168]";
connectAttr "RightHand_Control_visibility.o" "CombotRN.phl[169]";
connectAttr "RightHand_Control_scaleX.o" "CombotRN.phl[170]";
connectAttr "RightHand_Control_scaleY.o" "CombotRN.phl[171]";
connectAttr "RightHand_Control_scaleZ.o" "CombotRN.phl[172]";
connectAttr "LeftHand_Control_Grip.o" "CombotRN.phl[173]";
connectAttr "LeftHand_Control_rotateX.o" "CombotRN.phl[174]";
connectAttr "LeftHand_Control_rotateY.o" "CombotRN.phl[175]";
connectAttr "LeftHand_Control_rotateZ.o" "CombotRN.phl[176]";
connectAttr "LeftHand_Control_translateX.o" "CombotRN.phl[177]";
connectAttr "LeftHand_Control_translateY.o" "CombotRN.phl[178]";
connectAttr "LeftHand_Control_translateZ.o" "CombotRN.phl[179]";
connectAttr "LeftHand_Control_visibility.o" "CombotRN.phl[180]";
connectAttr "LeftHand_Control_scaleX.o" "CombotRN.phl[181]";
connectAttr "LeftHand_Control_scaleY.o" "CombotRN.phl[182]";
connectAttr "LeftHand_Control_scaleZ.o" "CombotRN.phl[183]";
connectAttr "LeftElbow_Control_translateX.o" "CombotRN.phl[184]";
connectAttr "LeftElbow_Control_translateY.o" "CombotRN.phl[185]";
connectAttr "LeftElbow_Control_translateZ.o" "CombotRN.phl[186]";
connectAttr "LeftElbow_Control_scaleY.o" "CombotRN.phl[187]";
connectAttr "LeftElbow_Control_scaleX.o" "CombotRN.phl[188]";
connectAttr "LeftElbow_Control_scaleZ.o" "CombotRN.phl[189]";
connectAttr "LeftElbow_Control_visibility.o" "CombotRN.phl[190]";
connectAttr "LeftElbow_Control_rotateX.o" "CombotRN.phl[191]";
connectAttr "LeftElbow_Control_rotateY.o" "CombotRN.phl[192]";
connectAttr "LeftElbow_Control_rotateZ.o" "CombotRN.phl[193]";
connectAttr "RightElbow_Control_translateX.o" "CombotRN.phl[194]";
connectAttr "RightElbow_Control_translateY.o" "CombotRN.phl[195]";
connectAttr "RightElbow_Control_translateZ.o" "CombotRN.phl[196]";
connectAttr "RightElbow_Control_scaleZ.o" "CombotRN.phl[197]";
connectAttr "RightElbow_Control_scaleX.o" "CombotRN.phl[198]";
connectAttr "RightElbow_Control_scaleY.o" "CombotRN.phl[199]";
connectAttr "RightElbow_Control_visibility.o" "CombotRN.phl[200]";
connectAttr "RightElbow_Control_rotateX.o" "CombotRN.phl[201]";
connectAttr "RightElbow_Control_rotateY.o" "CombotRN.phl[202]";
connectAttr "RightElbow_Control_rotateZ.o" "CombotRN.phl[203]";
connectAttr "polySoftEdge1.out" "CombotRN.phl[204]";
connectAttr "CombotRN.phl[205]" "polySoftEdge1.mp";
connectAttr "CombotRN.phl[206]" "AssaultRifle_parentConstraint1.tg[0].tt";
connectAttr "CombotRN.phl[207]" "AssaultRifle_parentConstraint1.tg[0].trp";
connectAttr "CombotRN.phl[208]" "AssaultRifle_parentConstraint1.tg[0].trt";
connectAttr "CombotRN.phl[209]" "AssaultRifle_parentConstraint1.tg[0].tr";
connectAttr "CombotRN.phl[210]" "AssaultRifle_parentConstraint1.tg[0].tro";
connectAttr "CombotRN.phl[211]" "AssaultRifle_parentConstraint1.tg[0].ts";
connectAttr "CombotRN.phl[212]" "AssaultRifle_parentConstraint1.tg[0].tpm";
connectAttr "CombotRN.phl[213]" "polySoftEdge1.ip";
connectAttr "AssaultRifle_parentConstraint1.ctx" "AssaultRifleRN.phl[1]";
connectAttr "AssaultRifle_parentConstraint1.cty" "AssaultRifleRN.phl[2]";
connectAttr "AssaultRifle_parentConstraint1.ctz" "AssaultRifleRN.phl[3]";
connectAttr "AssaultRifle_parentConstraint1.crx" "AssaultRifleRN.phl[4]";
connectAttr "AssaultRifle_parentConstraint1.cry" "AssaultRifleRN.phl[5]";
connectAttr "AssaultRifle_parentConstraint1.crz" "AssaultRifleRN.phl[6]";
connectAttr "AssaultRifleRN.phl[7]" "AssaultRifle_parentConstraint1.cro";
connectAttr "AssaultRifleRN.phl[8]" "AssaultRifle_parentConstraint1.cpim";
connectAttr "AssaultRifleRN.phl[9]" "AssaultRifle_parentConstraint1.crp";
connectAttr "AssaultRifleRN.phl[10]" "AssaultRifle_parentConstraint1.crt";
connectAttr "Extras.di" "AssaultRifleRN.phl[11]";
connectAttr "directionalLight1_translateX.o" "directionalLight1.tx";
connectAttr "directionalLight1_translateY.o" "directionalLight1.ty";
connectAttr "directionalLight1_translateZ.o" "directionalLight1.tz";
connectAttr "directionalLight1_visibility.o" "directionalLight1.v";
connectAttr "directionalLight1_rotateX.o" "directionalLight1.rx";
connectAttr "directionalLight1_rotateY.o" "directionalLight1.ry";
connectAttr "directionalLight1_rotateZ.o" "directionalLight1.rz";
connectAttr "directionalLight1_scaleX.o" "directionalLight1.sx";
connectAttr "directionalLight1_scaleY.o" "directionalLight1.sy";
connectAttr "directionalLight1_scaleZ.o" "directionalLight1.sz";
connectAttr "directionalLight2_translateX.o" "directionalLight2.tx";
connectAttr "directionalLight2_translateY.o" "directionalLight2.ty";
connectAttr "directionalLight2_translateZ.o" "directionalLight2.tz";
connectAttr "directionalLight2_visibility.o" "directionalLight2.v";
connectAttr "directionalLight2_rotateX.o" "directionalLight2.rx";
connectAttr "directionalLight2_rotateY.o" "directionalLight2.ry";
connectAttr "directionalLight2_rotateZ.o" "directionalLight2.rz";
connectAttr "directionalLight2_scaleX.o" "directionalLight2.sx";
connectAttr "directionalLight2_scaleY.o" "directionalLight2.sy";
connectAttr "directionalLight2_scaleZ.o" "directionalLight2.sz";
connectAttr "ambientLight1_translateX.o" "ambientLight1.tx";
connectAttr "ambientLight1_translateY.o" "ambientLight1.ty";
connectAttr "ambientLight1_translateZ.o" "ambientLight1.tz";
connectAttr "ambientLight1_visibility.o" "ambientLight1.v";
connectAttr "ambientLight1_rotateX.o" "ambientLight1.rx";
connectAttr "ambientLight1_rotateY.o" "ambientLight1.ry";
connectAttr "ambientLight1_rotateZ.o" "ambientLight1.rz";
connectAttr "ambientLight1_scaleX.o" "ambientLight1.sx";
connectAttr "ambientLight1_scaleY.o" "ambientLight1.sy";
connectAttr "ambientLight1_scaleZ.o" "ambientLight1.sz";
connectAttr "Extras.di" "Ground.do";
connectAttr "polyPlane1.out" "GroundShape.i";
connectAttr "AssaultRifle_parentConstraint1.w0" "AssaultRifle_parentConstraint1.tg[0].tw"
		;
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr ":TurtleDefaultBakeLayer.idx" ":TurtleBakeLayerManager.bli[0]";
connectAttr ":TurtleRenderOptions.msg" ":TurtleDefaultBakeLayer.rset";
connectAttr "checker1.oc" "MatGround.c";
connectAttr "MatGround.oc" "lambert2SG.ss";
connectAttr "GroundShape.iog" "lambert2SG.dsm" -na;
connectAttr "lambert2SG.msg" "materialInfo1.sg";
connectAttr "MatGround.msg" "materialInfo1.m";
connectAttr "checker1.msg" "materialInfo1.t" -na;
connectAttr "place2dTexture1.o" "checker1.uv";
connectAttr "place2dTexture1.ofs" "checker1.fs";
connectAttr "AssaultRifleRNfosterParent1.msg" "AssaultRifleRN.fp";
connectAttr "sharedReferenceNode.sr" "AssaultRifleRN.sr";
connectAttr "layerManager.dli[1]" "Extras.id";
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "MatGround.msg" ":defaultShaderList1.s" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "directionalLightShape1.ltd" ":lightList1.l" -na;
connectAttr "directionalLightShape2.ltd" ":lightList1.l" -na;
connectAttr "ambientLightShape1.ltd" ":lightList1.l" -na;
connectAttr "checker1.msg" ":defaultTextureList1.tx" -na;
connectAttr "directionalLight1.iog" ":defaultLightSet.dsm" -na;
connectAttr "directionalLight2.iog" ":defaultLightSet.dsm" -na;
connectAttr "ambientLight1.iog" ":defaultLightSet.dsm" -na;
// End of Combot_Moving2.ma
