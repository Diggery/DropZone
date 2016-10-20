//Maya ASCII 2016 scene
//Name: Combot_Idle.ma
//Last modified: Mon, Oct 10, 2016 01:49:07 PM
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
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2016";
fileInfo "version" "2016";
fileInfo "cutIdentifier" "201511301000-979500";
fileInfo "osv" "Mac OS X 10.9.6";
createNode transform -s -n "persp";
	rename -uid "7E5CF12D-FB40-1E38-CECF-3D8452705848";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -685.65097091128166 1261.3239182696002 975.47577462721438 ;
	setAttr ".r" -type "double3" -44.738352729769609 -1836.2000000000496 -1.9707008099419131e-15 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "CC00F1CE-0347-CFA4-D46A-8685B3A27D4F";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 1668.2799705665229;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -0.044057056363843827 93.98057248763439 -26.335379099493572 ;
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
	setAttr ".t" -type "double3" 0 0 500.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "82A4E158-294C-07E9-AE06-588D975FA4AB";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 500.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "94F3260A-8141-22A7-25C6-3092E101EDD6";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 500.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "6B8FB14B-7E42-35E1-B103-9F96EA7C5538";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 500.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "directionalLight1";
	rename -uid "550EDB44-6145-E094-50F0-A596D3D8EE79";
	setAttr ".t" -type "double3" 336.47634240202524 298.61055038474706 8.7565092089336005 ;
	setAttr ".r" -type "double3" -52.446542366013126 -49.335963345270699 -58.439336520163799 ;
createNode directionalLight -n "directionalLightShape1" -p "directionalLight1";
	rename -uid "E1823A7D-B14F-6DC6-8BE8-B9BE4B1F88B2";
	setAttr -k off ".v";
	setAttr ".shr" 4;
	setAttr ".fs" 3;
	setAttr ".dr" 2048;
	setAttr ".db" 0.069316238164901733;
createNode transform -n "directionalLight2";
	rename -uid "88F73D21-F947-1272-F694-EABA95691BD1";
	setAttr ".t" -type "double3" 258.44873786725543 330.98318315615302 40.524191463103293 ;
	setAttr ".r" -type "double3" 248.81331795103034 1.1842510559996151 -206.2294428912173 ;
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
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode fosterParent -n "AssaultRifleRNfosterParent1";
	rename -uid "5677E20D-014A-93E2-B2C1-B38973C90CD6";
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
	setAttr ".lr" -type "double3" 32.725998864930446 47.554207724176536 -10.581696586592772 ;
	setAttr ".rst" -type "double3" 0 2.8421709430404007e-14 -8.8817841970012523e-16 ;
	setAttr ".rsrr" -type "double3" 1.2722218725854067e-14 1.1020512482868402e-14 -2.7506186579930925e-15 ;
	setAttr -k on ".w0";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "5DB0552F-C54E-964E-F9AF-0F86CF6B7446";
	setAttr -s 10 ".lnk";
	setAttr -s 10 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "256D0AA1-B04B-FDB6-DAC8-3D9B791B6C3E";
	setAttr ".cdl" 1;
	setAttr -s 2 ".dli[1]"  1;
	setAttr -s 2 ".dli";
createNode displayLayer -n "defaultLayer";
	rename -uid "2644BC56-2D4B-C243-CAB4-12A6779B6A3C";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "161EBD1C-C440-0762-A950-AD97379F879C";
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
		+ "            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n"
		+ "                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n"
		+ "                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n"
		+ "                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n"
		+ "            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n"
		+ "            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"all\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 1\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n"
		+ "                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 0\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 1\n                -captureSequenceNumber -1\n"
		+ "                -width 1135\n                -height 654\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"all\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 0\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 1\n            -captureSequenceNumber -1\n            -width 1135\n            -height 654\n"
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
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"all\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 0\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 1\\n    -captureSequenceNumber -1\\n    -width 1135\\n    -height 654\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"all\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 0\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 1\\n    -captureSequenceNumber -1\\n    -width 1135\\n    -height 654\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 100 -size 500 -divisions 2 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "202FA499-554B-8902-6993-43AC0CBCE9B0";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 240 -ast 1 -aet 240 ";
	setAttr ".st" 6;
createNode reference -n "CombotRN";
	rename -uid "09B51F23-0E48-5B9D-77CB-EF970EBFAB6F";
	setAttr -s 199 ".phl";
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
	setAttr ".ed" -type "dataReferenceEdits" 
		"CombotRN"
		"CombotRN" 4
		2 "|Combot:Geometry|Combot:Combot_LeftArm_01|Combot:Combot_LeftArm_01Shape" 
		"visibility" " -k 0 1"
		2 "|Combot:Geometry|Combot:Combot_LeftArm_01|Combot:Combot_LeftArm_01Shape" 
		"uvPivot" " -type \"double2\" 0.49888069787994027 0.50286479108035564"
		2 "|Combot:Geometry|Combot:Combot_RightArm_02|Combot:Combot_RightArm_0Shape2" 
		"visibility" " -k 0 1"
		5 4 "CombotRN" "Combot:lambert4SG.dagSetMembers" "CombotRN.placeHolderList[1]" 
		""
		"CombotRN" 258
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:RIghtFoot_Control" "translate" 
		" -type \"double3\" -10.54799839213089996 0 -16.19668812035354222"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:RIghtFoot_Control" "translateX" 
		" -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:RIghtFoot_Control" "translateZ" 
		" -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:RIghtFoot_Control" "rotate" " -type \"double3\" 0 -31.53413112300573573 0"
		
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:RIghtFoot_Control" "rotateX" 
		" -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:RIghtFoot_Control" "rotateY" 
		" -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:RIghtFoot_Control" "rotateZ" 
		" -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftFoot_Control" "translate" 
		" -type \"double3\" 10.305966519728333 0 22.20272883162238742"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftFoot_Control" "translateX" 
		" -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftFoot_Control" "translateZ" 
		" -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftFoot_Control" "rotate" " -type \"double3\" 0 9.34765076932670347 0"
		
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftFoot_Control" "rotateX" " -av"
		
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftFoot_Control" "rotateZ" " -av"
		
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control" "translate" " -type \"double3\" 0.2723446578154215 -4.88569515081212291 3.00539736636393418"
		
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control" "translateX" " -av"
		
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control" "translateY" " -av"
		
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control" "translateZ" " -av"
		
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control" "rotate" " -type \"double3\" 6.60679824991318299 -20.68196216724030734 -0.62578885552197805"
		
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control" "rotateX" " -av"
		
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control" "rotateY" " -av"
		
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control" "rotateZ" " -av"
		
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control" 
		"rotateX" " -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control" 
		"rotateY" " -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control" 
		"rotateZ" " -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control" 
		"visibility" " 1"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:Neck_Control|Rig:Head_Control" 
		"rotate" " -type \"double3\" -1.21330444473896271 20.46247057899816113 3.25886712192327321"
		
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:Neck_Control|Rig:Head_Control" 
		"rotateX" " -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:Neck_Control|Rig:Head_Control" 
		"rotateY" " -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:Neck_Control|Rig:Head_Control" 
		"rotateZ" " -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:RightHand_Control" "translate" 
		" -type \"double3\" 7.65453925762322474 43.92300931126092678 21.30612506284671781"
		
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:RightHand_Control" "translateX" 
		" -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:RightHand_Control" "translateY" 
		" -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:RightHand_Control" "translateZ" 
		" -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftHand_Control" "translate" 
		" -type \"double3\" -36.53939542233881355 14.48483983264020658 38.25686685707658086"
		
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftHand_Control" "translateX" 
		" -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftHand_Control" "translateY" 
		" -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftHand_Control" "translateZ" 
		" -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftElbow_Control" "translate" 
		" -type \"double3\" 70.08401716629050782 31.34611589291790779 96.77160909490160634"
		
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftElbow_Control" "translateX" 
		" -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftElbow_Control" "translateY" 
		" -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftElbow_Control" "translateZ" 
		" -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:RightElbow_Control" "translate" 
		" -type \"double3\" -28.22688517370227146 0 0"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:RightElbow_Control" "translateX" 
		" -av"
		2 "|Rig:Geometry|Rig:Combot_Torso|Rig:Combot_TorsoShape" "visibility" " -k 0 1"
		
		2 "|Rig:Geometry|Rig:Combot_Torso|Rig:Combot_TorsoShape" "uvPivot" " -type \"double2\" 0.50693885982036591 0.30852951481938362"
		
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
		2 "Rig:GeometryLayer" "displayType" " 2"
		2 "Rig:SkeletonLayer" "visibility" " 0"
		2 "Rig:ExtraLayer" "displayType" " 0"
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
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftFoot_Control.rotateX" 
		"CombotRN.placeHolderList[32]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftFoot_Control.rotateY" 
		"CombotRN.placeHolderList[33]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftFoot_Control.rotateZ" 
		"CombotRN.placeHolderList[34]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftFoot_Control.translateX" 
		"CombotRN.placeHolderList[35]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftFoot_Control.translateY" 
		"CombotRN.placeHolderList[36]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftFoot_Control.translateZ" 
		"CombotRN.placeHolderList[37]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftFoot_Control.visibility" 
		"CombotRN.placeHolderList[38]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftFoot_Control.scaleX" 
		"CombotRN.placeHolderList[39]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftFoot_Control.scaleY" 
		"CombotRN.placeHolderList[40]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftFoot_Control.scaleZ" 
		"CombotRN.placeHolderList[41]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftFoot_Control|Rig:LeftToes_Control.rotateX" 
		"CombotRN.placeHolderList[42]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftFoot_Control|Rig:LeftToes_Control.rotateY" 
		"CombotRN.placeHolderList[43]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftFoot_Control|Rig:LeftToes_Control.rotateZ" 
		"CombotRN.placeHolderList[44]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftFoot_Control|Rig:LeftToes_Control.visibility" 
		"CombotRN.placeHolderList[45]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftFoot_Control|Rig:LeftToes_Control.translateX" 
		"CombotRN.placeHolderList[46]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftFoot_Control|Rig:LeftToes_Control.translateY" 
		"CombotRN.placeHolderList[47]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftFoot_Control|Rig:LeftToes_Control.translateZ" 
		"CombotRN.placeHolderList[48]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftFoot_Control|Rig:LeftToes_Control.scaleX" 
		"CombotRN.placeHolderList[49]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftFoot_Control|Rig:LeftToes_Control.scaleY" 
		"CombotRN.placeHolderList[50]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftFoot_Control|Rig:LeftToes_Control.scaleZ" 
		"CombotRN.placeHolderList[51]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control.translateX" 
		"CombotRN.placeHolderList[52]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control.translateY" 
		"CombotRN.placeHolderList[53]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control.translateZ" 
		"CombotRN.placeHolderList[54]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control.rotateX" 
		"CombotRN.placeHolderList[55]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control.rotateY" 
		"CombotRN.placeHolderList[56]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control.rotateZ" 
		"CombotRN.placeHolderList[57]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control.scaleX" 
		"CombotRN.placeHolderList[58]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control.scaleY" 
		"CombotRN.placeHolderList[59]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control.scaleZ" 
		"CombotRN.placeHolderList[60]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control.visibility" 
		"CombotRN.placeHolderList[61]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control.rotateX" 
		"CombotRN.placeHolderList[62]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control.rotateY" 
		"CombotRN.placeHolderList[63]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control.rotateZ" 
		"CombotRN.placeHolderList[64]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control.visibility" 
		"CombotRN.placeHolderList[65]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control.translateX" 
		"CombotRN.placeHolderList[66]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control.translateY" 
		"CombotRN.placeHolderList[67]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control.translateZ" 
		"CombotRN.placeHolderList[68]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control.scaleX" 
		"CombotRN.placeHolderList[69]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control.scaleY" 
		"CombotRN.placeHolderList[70]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control.scaleZ" 
		"CombotRN.placeHolderList[71]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:LeftClav_Control.rotateX" 
		"CombotRN.placeHolderList[72]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:LeftClav_Control.rotateY" 
		"CombotRN.placeHolderList[73]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:LeftClav_Control.rotateZ" 
		"CombotRN.placeHolderList[74]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:LeftClav_Control.visibility" 
		"CombotRN.placeHolderList[75]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:LeftClav_Control.translateX" 
		"CombotRN.placeHolderList[76]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:LeftClav_Control.translateY" 
		"CombotRN.placeHolderList[77]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:LeftClav_Control.translateZ" 
		"CombotRN.placeHolderList[78]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:LeftClav_Control.scaleX" 
		"CombotRN.placeHolderList[79]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:LeftClav_Control.scaleY" 
		"CombotRN.placeHolderList[80]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:LeftClav_Control.scaleZ" 
		"CombotRN.placeHolderList[81]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:RightClav_Control.rotateX" 
		"CombotRN.placeHolderList[82]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:RightClav_Control.rotateY" 
		"CombotRN.placeHolderList[83]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:RightClav_Control.rotateZ" 
		"CombotRN.placeHolderList[84]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:RightClav_Control.visibility" 
		"CombotRN.placeHolderList[85]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:RightClav_Control.translateX" 
		"CombotRN.placeHolderList[86]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:RightClav_Control.translateY" 
		"CombotRN.placeHolderList[87]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:RightClav_Control.translateZ" 
		"CombotRN.placeHolderList[88]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:RightClav_Control.scaleX" 
		"CombotRN.placeHolderList[89]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:RightClav_Control.scaleY" 
		"CombotRN.placeHolderList[90]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:RightClav_Control.scaleZ" 
		"CombotRN.placeHolderList[91]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:Neck_Control.rotateX" 
		"CombotRN.placeHolderList[92]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:Neck_Control.rotateY" 
		"CombotRN.placeHolderList[93]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:Neck_Control.rotateZ" 
		"CombotRN.placeHolderList[94]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:Neck_Control.visibility" 
		"CombotRN.placeHolderList[95]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:Neck_Control.translateX" 
		"CombotRN.placeHolderList[96]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:Neck_Control.translateY" 
		"CombotRN.placeHolderList[97]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:Neck_Control.translateZ" 
		"CombotRN.placeHolderList[98]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:Neck_Control.scaleX" 
		"CombotRN.placeHolderList[99]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:Neck_Control.scaleY" 
		"CombotRN.placeHolderList[100]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:Neck_Control.scaleZ" 
		"CombotRN.placeHolderList[101]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:Neck_Control|Rig:Head_Control.rotateX" 
		"CombotRN.placeHolderList[102]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:Neck_Control|Rig:Head_Control.rotateY" 
		"CombotRN.placeHolderList[103]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:Neck_Control|Rig:Head_Control.rotateZ" 
		"CombotRN.placeHolderList[104]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:Neck_Control|Rig:Head_Control.visibility" 
		"CombotRN.placeHolderList[105]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:Neck_Control|Rig:Head_Control.translateX" 
		"CombotRN.placeHolderList[106]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:Neck_Control|Rig:Head_Control.translateY" 
		"CombotRN.placeHolderList[107]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:Neck_Control|Rig:Head_Control.translateZ" 
		"CombotRN.placeHolderList[108]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:Neck_Control|Rig:Head_Control.scaleX" 
		"CombotRN.placeHolderList[109]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:Neck_Control|Rig:Head_Control.scaleY" 
		"CombotRN.placeHolderList[110]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:Neck_Control|Rig:Head_Control.scaleZ" 
		"CombotRN.placeHolderList[111]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:LeftShoulder_Control.rotateX" 
		"CombotRN.placeHolderList[112]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:LeftShoulder_Control.rotateY" 
		"CombotRN.placeHolderList[113]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:LeftShoulder_Control.rotateZ" 
		"CombotRN.placeHolderList[114]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:LeftShoulder_Control.visibility" 
		"CombotRN.placeHolderList[115]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:LeftShoulder_Control.translateX" 
		"CombotRN.placeHolderList[116]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:LeftShoulder_Control.translateY" 
		"CombotRN.placeHolderList[117]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:LeftShoulder_Control.translateZ" 
		"CombotRN.placeHolderList[118]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:LeftShoulder_Control.scaleX" 
		"CombotRN.placeHolderList[119]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:LeftShoulder_Control.scaleY" 
		"CombotRN.placeHolderList[120]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:LeftShoulder_Control.scaleZ" 
		"CombotRN.placeHolderList[121]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:RightShoulder_Control.rotateX" 
		"CombotRN.placeHolderList[122]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:RightShoulder_Control.rotateY" 
		"CombotRN.placeHolderList[123]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:RightShoulder_Control.rotateZ" 
		"CombotRN.placeHolderList[124]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:RightShoulder_Control.visibility" 
		"CombotRN.placeHolderList[125]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:RightShoulder_Control.translateX" 
		"CombotRN.placeHolderList[126]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:RightShoulder_Control.translateY" 
		"CombotRN.placeHolderList[127]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:RightShoulder_Control.translateZ" 
		"CombotRN.placeHolderList[128]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:RightShoulder_Control.scaleX" 
		"CombotRN.placeHolderList[129]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:RightShoulder_Control.scaleY" 
		"CombotRN.placeHolderList[130]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:RightShoulder_Control.scaleZ" 
		"CombotRN.placeHolderList[131]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:RightHand_Control.Grip" 
		"CombotRN.placeHolderList[132]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:RightHand_Control.rotateX" 
		"CombotRN.placeHolderList[133]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:RightHand_Control.rotateY" 
		"CombotRN.placeHolderList[134]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:RightHand_Control.rotateZ" 
		"CombotRN.placeHolderList[135]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:RightHand_Control.translateX" 
		"CombotRN.placeHolderList[136]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:RightHand_Control.translateY" 
		"CombotRN.placeHolderList[137]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:RightHand_Control.translateZ" 
		"CombotRN.placeHolderList[138]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:RightHand_Control.visibility" 
		"CombotRN.placeHolderList[139]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:RightHand_Control.scaleX" 
		"CombotRN.placeHolderList[140]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:RightHand_Control.scaleY" 
		"CombotRN.placeHolderList[141]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:RightHand_Control.scaleZ" 
		"CombotRN.placeHolderList[142]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftHand_Control.Grip" 
		"CombotRN.placeHolderList[143]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftHand_Control.rotateX" 
		"CombotRN.placeHolderList[144]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftHand_Control.rotateY" 
		"CombotRN.placeHolderList[145]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftHand_Control.rotateZ" 
		"CombotRN.placeHolderList[146]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftHand_Control.translateX" 
		"CombotRN.placeHolderList[147]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftHand_Control.translateY" 
		"CombotRN.placeHolderList[148]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftHand_Control.translateZ" 
		"CombotRN.placeHolderList[149]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftHand_Control.visibility" 
		"CombotRN.placeHolderList[150]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftHand_Control.scaleX" 
		"CombotRN.placeHolderList[151]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftHand_Control.scaleY" 
		"CombotRN.placeHolderList[152]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftHand_Control.scaleZ" 
		"CombotRN.placeHolderList[153]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:nurbsCircle1.rotateX" 
		"CombotRN.placeHolderList[154]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:nurbsCircle1.rotateY" 
		"CombotRN.placeHolderList[155]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:nurbsCircle1.rotateZ" 
		"CombotRN.placeHolderList[156]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:nurbsCircle1.visibility" 
		"CombotRN.placeHolderList[157]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:nurbsCircle1.translateX" 
		"CombotRN.placeHolderList[158]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:nurbsCircle1.translateY" 
		"CombotRN.placeHolderList[159]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:nurbsCircle1.translateZ" 
		"CombotRN.placeHolderList[160]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:nurbsCircle1.scaleX" 
		"CombotRN.placeHolderList[161]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:nurbsCircle1.scaleY" 
		"CombotRN.placeHolderList[162]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:nurbsCircle1.scaleZ" 
		"CombotRN.placeHolderList[163]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftKnee_Control.rotateX" 
		"CombotRN.placeHolderList[164]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftKnee_Control.rotateY" 
		"CombotRN.placeHolderList[165]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftKnee_Control.rotateZ" 
		"CombotRN.placeHolderList[166]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftKnee_Control.visibility" 
		"CombotRN.placeHolderList[167]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftKnee_Control.translateX" 
		"CombotRN.placeHolderList[168]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftKnee_Control.translateY" 
		"CombotRN.placeHolderList[169]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftKnee_Control.translateZ" 
		"CombotRN.placeHolderList[170]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftKnee_Control.scaleX" 
		"CombotRN.placeHolderList[171]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftKnee_Control.scaleY" 
		"CombotRN.placeHolderList[172]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftKnee_Control.scaleZ" 
		"CombotRN.placeHolderList[173]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftElbow_Control.translateX" 
		"CombotRN.placeHolderList[174]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftElbow_Control.translateY" 
		"CombotRN.placeHolderList[175]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftElbow_Control.translateZ" 
		"CombotRN.placeHolderList[176]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftElbow_Control.rotateX" 
		"CombotRN.placeHolderList[177]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftElbow_Control.rotateY" 
		"CombotRN.placeHolderList[178]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftElbow_Control.rotateZ" 
		"CombotRN.placeHolderList[179]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftElbow_Control.visibility" 
		"CombotRN.placeHolderList[180]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftElbow_Control.scaleX" 
		"CombotRN.placeHolderList[181]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftElbow_Control.scaleY" 
		"CombotRN.placeHolderList[182]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftElbow_Control.scaleZ" 
		"CombotRN.placeHolderList[183]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:RightElbow_Control.translateX" 
		"CombotRN.placeHolderList[184]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:RightElbow_Control.translateY" 
		"CombotRN.placeHolderList[185]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:RightElbow_Control.translateZ" 
		"CombotRN.placeHolderList[186]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:RightElbow_Control.rotateX" 
		"CombotRN.placeHolderList[187]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:RightElbow_Control.rotateY" 
		"CombotRN.placeHolderList[188]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:RightElbow_Control.rotateZ" 
		"CombotRN.placeHolderList[189]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:RightElbow_Control.visibility" 
		"CombotRN.placeHolderList[190]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:RightElbow_Control.scaleX" 
		"CombotRN.placeHolderList[191]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:RightElbow_Control.scaleY" 
		"CombotRN.placeHolderList[192]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:RightElbow_Control.scaleZ" 
		"CombotRN.placeHolderList[193]" ""
		5 3 "CombotRN" "|Rig:Skeleton|Rig:RootMotion_Skel|Rig:Hips_Skel|Rig:Spine1_Skel|Rig:Spine2_Skel|Rig:RightClav_Skel|Rig:RightShoulder_Skel|Rig:RightUpperArm_Skel|Rig:RightLowerArm_Skel|Rig:RightHand_Skel|Rig:RightHand_Attach.translate" 
		"CombotRN.placeHolderList[194]" ""
		5 3 "CombotRN" "|Rig:Skeleton|Rig:RootMotion_Skel|Rig:Hips_Skel|Rig:Spine1_Skel|Rig:Spine2_Skel|Rig:RightClav_Skel|Rig:RightShoulder_Skel|Rig:RightUpperArm_Skel|Rig:RightLowerArm_Skel|Rig:RightHand_Skel|Rig:RightHand_Attach.rotatePivot" 
		"CombotRN.placeHolderList[195]" ""
		5 3 "CombotRN" "|Rig:Skeleton|Rig:RootMotion_Skel|Rig:Hips_Skel|Rig:Spine1_Skel|Rig:Spine2_Skel|Rig:RightClav_Skel|Rig:RightShoulder_Skel|Rig:RightUpperArm_Skel|Rig:RightLowerArm_Skel|Rig:RightHand_Skel|Rig:RightHand_Attach.rotatePivotTranslate" 
		"CombotRN.placeHolderList[196]" ""
		5 3 "CombotRN" "|Rig:Skeleton|Rig:RootMotion_Skel|Rig:Hips_Skel|Rig:Spine1_Skel|Rig:Spine2_Skel|Rig:RightClav_Skel|Rig:RightShoulder_Skel|Rig:RightUpperArm_Skel|Rig:RightLowerArm_Skel|Rig:RightHand_Skel|Rig:RightHand_Attach.rotate" 
		"CombotRN.placeHolderList[197]" ""
		5 3 "CombotRN" "|Rig:Skeleton|Rig:RootMotion_Skel|Rig:Hips_Skel|Rig:Spine1_Skel|Rig:Spine2_Skel|Rig:RightClav_Skel|Rig:RightShoulder_Skel|Rig:RightUpperArm_Skel|Rig:RightLowerArm_Skel|Rig:RightHand_Skel|Rig:RightHand_Attach.rotateOrder" 
		"CombotRN.placeHolderList[198]" ""
		5 3 "CombotRN" "|Rig:Skeleton|Rig:RootMotion_Skel|Rig:Hips_Skel|Rig:Spine1_Skel|Rig:Spine2_Skel|Rig:RightClav_Skel|Rig:RightShoulder_Skel|Rig:RightUpperArm_Skel|Rig:RightLowerArm_Skel|Rig:RightHand_Skel|Rig:RightHand_Attach.scale" 
		"CombotRN.placeHolderList[199]" ""
		5 3 "CombotRN" "|Rig:Skeleton|Rig:RootMotion_Skel|Rig:Hips_Skel|Rig:Spine1_Skel|Rig:Spine2_Skel|Rig:RightClav_Skel|Rig:RightShoulder_Skel|Rig:RightUpperArm_Skel|Rig:RightLowerArm_Skel|Rig:RightHand_Skel|Rig:RightHand_Attach.parentMatrix" 
		"CombotRN.placeHolderList[200]" "";
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
	setAttr ".ils" yes;
	setAttr ".esi" 3;
	setAttr ".ssn" -type "string" "";
	setAttr ".ebm" yes;
	setAttr ".inc" yes;
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
	setAttr -s 4 ".ac";
	setAttr ".ac[0].acn" -type "string" "Idle01";
	setAttr ".ac[0].acs" 1;
	setAttr ".ac[0].ace" 60;
	setAttr ".ac[1].acn" -type "string" "Idle02";
	setAttr ".ac[1].acs" 61;
	setAttr ".ac[1].ace" 120;
	setAttr ".ac[2].acn" -type "string" "Idle03";
	setAttr ".ac[2].acs" 121;
	setAttr ".ac[2].ace" 180;
	setAttr ".ac[3].acn" -type "string" "Idle04";
	setAttr ".ac[3].acs" 181;
	setAttr ".ac[3].ace" 240;
	setAttr ".spt" 2;
	setAttr ".bas" 1;
	setAttr ".bae" 240;
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
		"AssaultRifleRN" 18
		0 "|AssaultRifleRNfosterParent1|AssaultRifle_parentConstraint1" "|AssaultRifle:AssaultRifle" 
		"-s -r "
		2 "|AssaultRifle:AssaultRifle|AssaultRifle:AssaultRifleShape" "uvPivot" " -type \"double2\" 0.4986929576843977 0.73043158650398254"
		
		2 "|AssaultRifle:AssaultRifle|AssaultRifle:AssaultRifleShape" "uvSet[0].uvSetName" 
		" -type \"string\" \"map1\""
		2 "|AssaultRifle:AssaultRifle|AssaultRifle:AssaultRifleShape" "uvst[0].uvsp[0:147]" 
		(" -s 148 -type \"float2\" 0.14207953000000001 0.74425923999999999 0.11541241000000001 0.71137874999999995 0.48760343 0.71137874999999995 0.48760340000000002 0.74425923999999999 0.46623191000000003 0.48720053000000002 0.49953479000000001 0.51798372999999998 0.11541241000000001 0.51798372999999998 0.14207953000000001 0.48720053000000002 0.072227865000000002 0.56366837000000003 0.072227865000000002 0.51786666999999997 0.11541241000000001 0.56374550000000001 0.49520608999999999 0.56374550000000001 0.83861589000000003 0.56510258000000002 0.85799563000000001 0.49867254 0.93858087000000001 0.49867742999999998 0.90680897000000005 0.61802601999999995 0.51311171 0.31973189000000002 0.54641419999999996 0.31973189000000002 0.48760343 0.79945683000000001 0.48760343 0.77130520000000002 0.66404647000000006 0.77130520000000002 0.66440885999999999 0.79945683000000001 0.66404647000000006 0.51798337999999999 0.66404647000000006 0.56374550000000001 0.70435440999999999 0.31973189000000002 0.82352703999999999 0.71137874999999995 0.05"
		+ "2119314999999999 0.42081394999999999 0.73761082 0.71137874999999995 0.73761087999999997 0.56480622000000003 0.11532634 0.51786666999999997 0.82269709999999996 0.56186283000000004 0.83220983000000004 0.49868339 0.73761087999999997 0.56216937 0.21333184999999999 0.33201547999999997 0.21367744 0.42081394999999999 0.81563001999999996 0.56186283000000004 0.82514297999999997 0.49868339 0.71303952000000004 0.56374550000000001 0.73761082 0.56217967999999996 0.71303952000000004 0.51798337999999999 0.74793661 0.31973189000000002 0.85092866 0.49867254 0.19253629 0.31175467000000001 0.28354108 0.19109419 0.30433707999999998 0.18915227000000001 0.93676214999999996 0.60110074000000002 0.93586575999999999 0.54650414000000003 0.48760343 0.71137874999999995 0.11541241000000001 0.71137874999999995 0.11541241000000001 0.51798372999999998 0.49953479000000001 0.51798372999999998 0.11541241000000001 0.56374550000000001 0.49520608999999999 0.56374550000000001 0.83861589000000003 0.56510258000000002 0.048583834999999999 0.3250381099"
		+ "9999999 0.92122053999999998 0.53565353000000004 0.85799563000000001 0.49867254 0.54641419999999996 0.31973189000000002 0.66440885999999999 0.77130520000000002 0.48760343 0.77130520000000002 0.66404647000000006 0.56374550000000001 0.66404647000000006 0.51798337999999999 0.70435440999999999 0.31973189000000002 0.82352703999999999 0.71137874999999995 0.91021322999999998 0.71137874999999995 0.73761082 0.71137874999999995 0.73761082 0.56469791999999996 0.83220983000000004 0.49868339 0.82269709999999996 0.56186283000000004 0.73761082 0.56225479 0.21367744 0.42199352000000001 0.21333184999999999 0.33201572000000001 0.30433707999999998 0.18915227000000001 0.73761082 0.74898779000000004 0.82356441000000002 0.74425923999999999 0.052033901 0.45614286999999998 0.21372068 0.45614286999999998 0.30433803999999998 0.17219767 0.34974122000000002 0.74425947999999997 0.34974134000000001 0.77130531999999996 0.34974134000000001 0.79945706999999999 0.66673552999999997 0.74371575999999995 0.50854653000000005 0.74371575999999995 0.5"
		+ "0854653000000005 0.74371575999999995 0.66440880000000002 0.74371575999999995 0.90748214999999999 0.37958097000000002 0.89828764999999999 0.38686836000000002 0.88760673999999995 0.38200944999999997 0.90100771000000002 0.37661105 0.97144067000000001 0.40892988000000002 0.97168290999999996 0.42049617 0.98261653999999998 0.41405778999999998 0.98989534000000001 0.42886429999999998 0.89828764999999999 0.38686836000000002 0.90748203000000005 0.37958097000000002 0.97144079000000005 0.40892988000000002 0.97168290999999996 0.42049605000000001 0.38052427999999999 0.19696134000000001 0.37210858000000002 0.18916717 0.37170118000000002 0.17219767 0.3807469 0.18521663999999999 0.35982661999999999 0.26658145 0.34896314 0.26702346999999999 0.35982661999999999 0.41700247000000001 0.34910363 0.42219844000000001 0.37210858000000002 0.18916717 0.38052427999999999 0.19696134000000001 0.35982661999999999 0.44297494999999998 0.34909617999999998 0.45647267000000002 0.35982661999999999 0.41727129000000002 0.34911466000000002 0.4225066"
		+ "0000000001 0.34896344000000001 0.26702358999999998 0.35982661999999999 0.26658145 0.11532634 0.56366837000000003 0.11532634 0.71142994999999998 0.072227865000000002 0.71142994999999998 0.34974134000000001 0.77130531999999996 0.029129207000000001 0.56366837000000003 0.029129207000000001 0.51786666999999997 0.029129207000000001 0.71142994999999998 0.072227865000000002 0.48705675999999998 0.072227865000000002 0.74433917000000005 0.25558810999999998 0.77355361 0.28907883000000001 0.80638516000000005 0.25558810999999998 0.84055924000000004 0.43072510000000003 0.27591637000000002 0.46832034 0.27356902 0.46680367 0.19504887000000001 0.43072510000000003 0.19407308000000001 0.43071770999999998 0.47251209999999999 0.46875453 0.44321945000000001 0.43071890000000002 0.44337179999999998 0.39464663999999999 0.19504887000000001 0.39312976999999999 0.27356902 0.39297873 0.44352259999999999 0.43072510000000003 0.18180287000000001 0.22209725 0.80638516000000005 0.91013080000000002 0.74425923999999999 0.052119314999999999 0.421"
		+ "99352000000001 0.91021322999999998 0.71024299000000002 0.085759789000000003 0.30745952999999998 0.90680897000000005 0.61802619999999997 0.048583834999999999 0.32503796000000001 0.085726111999999993 0.32616493000000002 0.085768253000000003 0.42081389000000002 0.085825979999999996 0.45614304999999999 0.085849822000000006 0.42199352000000001 0.085884452 0.32706418999999998"
		)
		2 "|AssaultRifle:AssaultRifle|AssaultRifle:Magazine|AssaultRifle:MagazineShape" 
		"uvPivot" " -type \"double2\" 0.18745744228363037 0.11233295500278473"
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
createNode animCurveTA -n "RootMotion_Control_rotateX";
	rename -uid "49FD7199-1945-C368-BD7F-EAA4C03A27FF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 120 0 121 0 180 0 240 0;
createNode animCurveTA -n "RootMotion_Control_rotateY";
	rename -uid "B88E9E9B-1B4B-E95B-7BC7-34878FDA5BB7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 120 0 121 0 180 0 240 0;
createNode animCurveTA -n "RootMotion_Control_rotateZ";
	rename -uid "47F4E2C2-874C-1D4C-9609-7A859531D0F6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 120 0 121 0 180 0 240 0;
createNode animCurveTA -n "Hips_Control_rotateX";
	rename -uid "2C557C4A-9645-03BE-AE6F-26B290DB825F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  1 6.606798249913183 60 6.606798249913183
		 120 6.606798249913183 121 6.606798249913183 135 6.606798249913183 150 6.606798249913183
		 165 6.606798249913183 180 6.606798249913183 195 6.606798249913183 210 6.606798249913183
		 225 6.606798249913183 240 6.606798249913183;
createNode animCurveTA -n "Hips_Control_rotateY";
	rename -uid "1F4C6DFD-4941-E54C-0847-2DBE96D7ECDA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  1 -20.681962167240307 60 -20.681962167240307
		 120 -20.681962167240307 121 -20.681962167240307 135 -20.681962167240307 150 -20.681962167240307
		 165 -20.681962167240307 180 -20.681962167240307 195 -20.681962167240307 210 -20.681962167240307
		 225 -20.681962167240307 240 -20.681962167240307;
createNode animCurveTA -n "Hips_Control_rotateZ";
	rename -uid "02C6598E-234D-0EF5-FF79-AF98DDEF17D8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  1 -0.62578885552197805 60 -0.62578885552197805
		 120 -0.62578885552197805 121 -0.62578885552197805 135 -0.62578885552197805 150 -0.62578885552197805
		 165 -0.62578885552197805 180 -0.62578885552197805 195 -0.62578885552197805 210 -0.62578885552197805
		 225 -0.62578885552197805 240 -0.62578885552197805;
createNode animCurveTA -n "Spine1_Control_rotateX";
	rename -uid "F9C854B7-144D-95A0-26AA-0E87DC199857";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0 60 0 120 0.87267450999738105 130 0.79914227496089885
		 170 0.059839423340382461 180 0 186 0 220 0 240 0;
	setAttr -s 9 ".kit[7:8]"  1 18;
	setAttr -s 9 ".kot[7:8]"  1 18;
	setAttr -s 9 ".kix[7:8]"  1 1;
	setAttr -s 9 ".kiy[7:8]"  0 0;
	setAttr -s 9 ".kox[7:8]"  1 1;
	setAttr -s 9 ".koy[7:8]"  0 0;
createNode animCurveTA -n "Spine1_Control_rotateY";
	rename -uid "8DCDD283-FC48-A35D-DAB5-A5933B733C77";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  1 0 60 0 70 -8.6754363094097133 120 -9.2582083516086566
		 130 -1.064728125948843 170 -0.0085178161328170032 180 0 186 0 194 8.1697254237178711
		 217 8.1697254237178711 220 0 240 0;
	setAttr -s 12 ".kit[9:11]"  1 1 18;
	setAttr -s 12 ".kot[9:11]"  1 1 18;
	setAttr -s 12 ".kix[9:11]"  1 1 1;
	setAttr -s 12 ".kiy[9:11]"  0 0 0;
	setAttr -s 12 ".kox[9:11]"  1 1 1;
	setAttr -s 12 ".koy[9:11]"  0 0 0;
createNode animCurveTA -n "Spine1_Control_rotateZ";
	rename -uid "075AEB12-1148-06A4-E0E8-CBA214BD4307";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  1 0 60 0 120 -1.1376724855760796 130 -0.94779859441366998
		 170 -0.068233058783491465 180 0 186 0 220 0 240 0;
	setAttr -s 9 ".kit[7:8]"  1 18;
	setAttr -s 9 ".kot[7:8]"  1 18;
	setAttr -s 9 ".kix[7:8]"  1 1;
	setAttr -s 9 ".kiy[7:8]"  0 0;
	setAttr -s 9 ".kox[7:8]"  1 1;
	setAttr -s 9 ".koy[7:8]"  0 0;
createNode animCurveTA -n "LeftClav_Control_rotateX";
	rename -uid "015FD485-FC46-198A-02C6-BAAF74F3615A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 -2.491747956254533 120 -2.491747956254533
		 121 -2.491747956254533 180 -2.491747956254533 240 -2.491747956254533;
createNode animCurveTA -n "LeftClav_Control_rotateY";
	rename -uid "BA97AAE0-4E4D-C1F4-EBFD-B8A39BF34D1E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 -13.939155179734097 120 -13.939155179734097
		 121 -13.939155179734097 180 -13.939155179734097 240 -13.939155179734097;
createNode animCurveTA -n "LeftClav_Control_rotateZ";
	rename -uid "F9B40BB4-454F-8B98-7C00-BAB00489DB5F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 2.9990077406355806 120 2.9990077406355806
		 121 2.9990077406355806 180 2.9990077406355806 240 2.9990077406355806;
createNode animCurveTA -n "LeftShoulder_Control_rotateX";
	rename -uid "C5864610-3943-0530-91EE-AAA9E882B524";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 8.1886829572605482 120 8.1886829572605482
		 121 8.1886829572605482 180 8.1886829572605482 240 8.1886829572605482;
createNode animCurveTA -n "LeftShoulder_Control_rotateY";
	rename -uid "365C8B4F-6640-77D1-810A-83BAC40BCCD9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 -25.573053276811024 120 -25.573053276811024
		 121 -25.573053276811024 180 -25.573053276811024 240 -25.573053276811024;
createNode animCurveTA -n "LeftShoulder_Control_rotateZ";
	rename -uid "8A5B80E0-F64B-8E1B-2FB2-8D9B60D50A3E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 12.908273762764672 120 12.908273762764672
		 121 12.908273762764672 180 12.908273762764672 240 12.908273762764672;
createNode animCurveTA -n "Neck_Control_rotateX";
	rename -uid "A69BEDFD-634D-F6E4-98D9-BAB3264AF81A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 120 0 121 0 180 0 240 0;
createNode animCurveTA -n "Neck_Control_rotateY";
	rename -uid "27867529-3648-5C06-A959-7890CABA0E91";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 120 0 121 0 180 0 240 0;
createNode animCurveTA -n "Neck_Control_rotateZ";
	rename -uid "DA575761-434F-FEF6-9CAD-AFAA0F5DFE52";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 120 0 121 0 180 0 240 0;
createNode animCurveTA -n "Head_Control_rotateX";
	rename -uid "BE2E6AFD-4D43-C389-29A3-6598DAA8AF2B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  1 0 65 -1.8988231191517266 85 -1.4886772980347667
		 110 -1.4886772980347667 115 0 120 0 121 0 180 0 185 -5.5681117773176076 220 -15.181471835869525
		 225 -1.2910272314431257 240 0;
	setAttr -s 12 ".kit[4:11]"  1 18 18 18 18 18 18 18;
	setAttr -s 12 ".kot[4:11]"  1 18 18 18 18 18 18 18;
	setAttr -s 12 ".kix[4:11]"  1 1 1 1 0.98759728670120239 1 0.9942018985748291 
		1;
	setAttr -s 12 ".kiy[4:11]"  0 0 0 0 -0.15700818598270416 0 0.10752974450588226 
		0;
	setAttr -s 12 ".kox[4:11]"  1 1 1 1 0.98759728670120239 1 0.9942018985748291 
		1;
	setAttr -s 12 ".koy[4:11]"  0 0 0 0 -0.15700818598270416 0 0.10752974450588226 
		0;
createNode animCurveTA -n "Head_Control_rotateY";
	rename -uid "1CFEE34A-4F49-DFB5-F2C3-C8B89C2118F0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  1 20.815106637487396 60 19.495234043626095
		 65 -34.713369004565905 85 -22.515178267967503 110 -22.515178267967503 115 20.815106637487396
		 120 20.815106637487396 121 20.815106637487396 180 20.815106637487396 185 58.899546820432107
		 220 57.070377523017086 225 19.255283455469964 240 20.815106637487396;
	setAttr -s 13 ".kit[5:12]"  1 18 18 18 18 18 18 18;
	setAttr -s 13 ".kot[5:12]"  1 18 18 18 18 18 18 18;
	setAttr -s 13 ".kix[5:12]"  1 1 1 1 1 0.99785035848617554 1 1;
	setAttr -s 13 ".kiy[5:12]"  0 0 0 0 0 -0.065533161163330078 0 0;
	setAttr -s 13 ".kox[5:12]"  1 1 1 1 1 0.99785041809082031 1 1;
	setAttr -s 13 ".koy[5:12]"  0 0 0 0 0 -0.065533161163330078 0 0;
createNode animCurveTA -n "Head_Control_rotateZ";
	rename -uid "6206F700-7048-3716-5692-33AF22BE3591";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  1 0 65 5.1001315128971481 85 3.9985030325697308
		 110 3.9985030325697308 115 0 120 0 121 0 180 0 185 -8.3371464335163044 220 -12.772767810318198
		 225 0.12082525393495129 240 0;
	setAttr -s 12 ".kit[4:11]"  1 18 18 18 18 18 18 18;
	setAttr -s 12 ".kot[4:11]"  1 18 18 18 18 18 18 18;
	setAttr -s 12 ".kix[4:11]"  1 1 1 1 0.9911729097366333 1 1 1;
	setAttr -s 12 ".kiy[4:11]"  0 0 0 0 -0.13257540762424469 0 0 0;
	setAttr -s 12 ".kox[4:11]"  1 1 1 1 0.9911729097366333 1 1 1;
	setAttr -s 12 ".koy[4:11]"  0 0 0 0 -0.13257540762424469 0 0 0;
createNode animCurveTA -n "RightClav_Control_rotateX";
	rename -uid "DAC0966D-AD41-0443-6F74-48823957EDC2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 120 0 121 0 180 0 240 0;
createNode animCurveTA -n "RightClav_Control_rotateY";
	rename -uid "A622795F-DC4B-7415-C020-238303F5B1B7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 120 0 121 0 180 0 240 0;
createNode animCurveTA -n "RightClav_Control_rotateZ";
	rename -uid "2B7CB3BC-444C-164A-7CD8-7BA44BB596B5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 120 0 121 0 180 0 240 0;
createNode animCurveTA -n "RightShoulder_Control_rotateX";
	rename -uid "E9F6CE01-B040-9EEA-D69D-CDAC9C778D8E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1.7022701669356075 120 1.7022701669356075
		 121 1.7022701669356075 180 1.7022701669356075 240 1.7022701669356075;
createNode animCurveTA -n "RightShoulder_Control_rotateY";
	rename -uid "EDEC3AA2-2C45-D0F4-2061-1F9D94770165";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 9.3900136385534783 120 9.3900136385534783
		 121 9.3900136385534783 180 9.3900136385534783 240 9.3900136385534783;
createNode animCurveTA -n "RightShoulder_Control_rotateZ";
	rename -uid "100B7D53-FD45-8B9F-93EE-948D7EAA246B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 -11.082103098150485 120 -11.082103098150485
		 121 -11.082103098150485 180 -11.082103098150485 240 -11.082103098150485;
createNode animCurveTA -n "LeftElbow_Control_rotateX";
	rename -uid "F132ABE7-154A-9DE3-DF40-AFB737CECC69";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 60 0 120 0 121 0 180 0 240 0;
createNode animCurveTA -n "LeftElbow_Control_rotateY";
	rename -uid "6DB23E66-0E44-2371-73AC-A48944916E56";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 60 0 120 0 121 0 180 0 240 0;
createNode animCurveTA -n "LeftElbow_Control_rotateZ";
	rename -uid "CC289B9F-E349-D03A-F800-BFA0421534A5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 60 0 120 0 121 0 180 0 240 0;
createNode animCurveTA -n "LeftFoot_Control_rotateX";
	rename -uid "F9991A75-D849-A77F-CD16-8EAAF9D95BCD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 60 0 120 0 121 0 180 0 240 0;
createNode animCurveTA -n "LeftFoot_Control_rotateY";
	rename -uid "53A5ECC6-F849-99F9-42F6-F39A4053E582";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 9.3476507693267035 60 9.3476507693267035
		 120 9.3476507693267035 121 9.3476507693267035 180 9.3476507693267035 240 9.3476507693267035;
createNode animCurveTA -n "LeftFoot_Control_rotateZ";
	rename -uid "1EBB7C14-E442-7238-BCA6-C7BEDF42F344";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 60 0 120 0 121 0 180 0 240 0;
createNode animCurveTA -n "LeftToes_Control_rotateX";
	rename -uid "35D1BE46-5F43-1AC1-C46E-019837C29E77";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 120 0 121 0 180 0 240 0;
createNode animCurveTA -n "LeftToes_Control_rotateY";
	rename -uid "B4B7ED1E-1749-C052-951C-43A422BF49D5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 120 0 121 0 180 0 240 0;
createNode animCurveTA -n "LeftToes_Control_rotateZ";
	rename -uid "B0CFCF14-E444-E574-F9B9-2CA33C4EF9BB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 120 0 121 0 180 0 240 0;
createNode animCurveTA -n "LeftHand_Control_rotateX";
	rename -uid "AA641CC5-AA44-D8D1-7F54-18BED7E9C2EE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  1 -15.268572241991215 60 -15.268572241991215
		 80 -15.268572241991215 115 -15.268572241991215 120 -15.268572241991215 121 -15.268572241991215
		 135 -15.268572241991215 150 -15.268572241991215 165 -15.268572241991215 180 -15.268572241991215
		 195 -15.268572241991215 225 -15.268572241991215 240 -15.268572241991215;
createNode animCurveTA -n "LeftHand_Control_rotateY";
	rename -uid "F37B040D-FE49-83B5-CE9B-738DE06FCED2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  1 26.807863026803616 60 26.807863026803616
		 80 26.807863026803616 115 26.807863026803616 120 26.807863026803616 121 26.807863026803616
		 135 26.807863026803616 150 26.807863026803616 165 26.807863026803616 180 26.807863026803616
		 195 26.807863026803616 225 26.807863026803616 240 26.807863026803616;
createNode animCurveTA -n "LeftHand_Control_rotateZ";
	rename -uid "EE8182E5-394E-FB68-8BDD-5183369311AA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  1 -58.07649282647796 60 -58.07649282647796
		 80 -58.07649282647796 115 -58.07649282647796 120 -58.07649282647796 121 -58.07649282647796
		 135 -58.07649282647796 150 -58.07649282647796 165 -58.07649282647796 180 -58.07649282647796
		 195 -58.07649282647796 225 -58.07649282647796 240 -58.07649282647796;
createNode animCurveTA -n "LeftKnee_Control_rotateX";
	rename -uid "F2AB479E-B64A-CACD-8E1D-B2B79BEBBB1F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 120 0 121 0 180 0 240 0;
createNode animCurveTA -n "LeftKnee_Control_rotateY";
	rename -uid "47A15850-714F-1859-A9A3-31A9D5DB5A75";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 120 0 121 0 180 0 240 0;
createNode animCurveTA -n "LeftKnee_Control_rotateZ";
	rename -uid "A6811B94-9445-8092-D246-EA8EDAB6D557";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 120 0 121 0 180 0 240 0;
createNode animCurveTA -n "RIghtFoot_Control_rotateX";
	rename -uid "75E7D034-FA43-9EAE-436D-049195503238";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 60 0 120 0 121 0 180 0 240 0;
createNode animCurveTA -n "RIghtFoot_Control_rotateY";
	rename -uid "545D4FF4-634E-D143-999B-9EB25819D128";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 -31.534131123005736 60 -31.534131123005736
		 120 -31.534131123005736 121 -31.534131123005736 180 -31.534131123005736 240 -31.534131123005736;
createNode animCurveTA -n "RIghtFoot_Control_rotateZ";
	rename -uid "0555F60F-4444-FE5E-05FE-97BBA06509DD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 60 0 120 0 121 0 180 0 240 0;
createNode animCurveTA -n "RightToes_Control_rotateX";
	rename -uid "2F11134C-C348-D0EB-33A7-0CB17423F9D4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 120 0 121 0 180 0 240 0;
createNode animCurveTA -n "RightToes_Control_rotateY";
	rename -uid "B8D0BA13-B049-0F79-C60C-FB8376006E59";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 120 0 121 0 180 0 240 0;
createNode animCurveTA -n "RightToes_Control_rotateZ";
	rename -uid "32C44A17-7745-1D6A-D560-49BDB8EB7A04";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 120 0 121 0 180 0 240 0;
createNode animCurveTA -n "RightElbow_Control_rotateX";
	rename -uid "8EE3E84E-3C42-FBAC-FBFC-F08FD8D4382E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 60 0 120 0 121 0 180 0 240 0;
createNode animCurveTA -n "RightElbow_Control_rotateY";
	rename -uid "C228A942-1243-2739-18EE-96A6C20B1B68";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 60 0 120 0 121 0 180 0 240 0;
createNode animCurveTA -n "RightElbow_Control_rotateZ";
	rename -uid "CEACC9CB-054E-B02D-D4AB-FCA5DE990582";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 60 0 120 0 121 0 180 0 240 0;
createNode animCurveTA -n "RightHand_Control_rotateX";
	rename -uid "F0037979-DA43-F92C-5362-75BFF05FFB38";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  1 -42.972147382335137 60 -42.972147382335137
		 80 -42.972147382335137 115 -42.972147382335137 120 -42.972147382335137 121 -42.972147382335137
		 135 -42.972147382335137 150 -42.972147382335137 165 -42.972147382335137 180 -42.972147382335137
		 195 -42.972147382335137 225 -42.972147382335137 240 -42.972147382335137;
createNode animCurveTA -n "RightHand_Control_rotateY";
	rename -uid "788A6181-4042-5960-2E9C-F5A0203035A1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  1 49.584328574221637 60 49.584328574221637
		 80 49.584328574221637 115 49.584328574221637 120 49.584328574221637 121 49.584328574221637
		 135 49.584328574221637 150 49.584328574221637 165 49.584328574221637 180 49.584328574221637
		 195 49.584328574221637 225 49.584328574221637 240 49.584328574221637;
createNode animCurveTA -n "RightHand_Control_rotateZ";
	rename -uid "8EE40206-2D4D-9FE3-E59E-87B3925B2605";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  1 -8.5523766098670624 60 -8.5523766098670624
		 80 -8.5523766098670624 115 -8.5523766098670624 120 -8.5523766098670624 121 -8.5523766098670624
		 135 -8.5523766098670624 150 -8.5523766098670624 165 -8.5523766098670624 180 -8.5523766098670624
		 195 -8.5523766098670624 225 -8.5523766098670624 240 -8.5523766098670624;
createNode animCurveTA -n "nurbsCircle1_rotateX";
	rename -uid "EE8AF2F7-5B45-FCBC-EAB6-799A98AF0716";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 120 0 121 0 180 0 240 0;
createNode animCurveTA -n "nurbsCircle1_rotateY";
	rename -uid "359BB83E-324E-F905-47BC-B08222FAD038";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 120 0 121 0 180 0 240 0;
createNode animCurveTA -n "nurbsCircle1_rotateZ";
	rename -uid "5FF64A47-D84D-C5CB-4FF2-FA98DF0DC71D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 120 0 121 0 180 0 240 0;
createNode animCurveTA -n "ambientLight1_rotateX";
	rename -uid "DF598A3B-644B-B69D-95FA-E0A2D11A7ABD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 120 0 121 0 180 0 240 0;
createNode animCurveTA -n "ambientLight1_rotateY";
	rename -uid "83EE9084-154B-C89B-E4FE-598794A5FB1B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 120 0 121 0 180 0 240 0;
createNode animCurveTA -n "ambientLight1_rotateZ";
	rename -uid "B5CC45D6-A64A-DEB6-9198-D0A08D1DCC95";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 120 0 121 0 180 0 240 0;
createNode animCurveTU -n "ambientLight1_visibility";
	rename -uid "DD95A67F-7D40-3E60-B1C4-928CB934B246";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 120 1 121 1 180 1 240 1;
	setAttr -s 5 ".kit[2:4]"  9 9 9;
	setAttr -s 5 ".kot[2:4]"  5 5 5;
createNode animCurveTL -n "ambientLight1_translateX";
	rename -uid "580A4042-024A-DA16-B51E-8EB52636875B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 120 0 121 0 180 0 240 0;
createNode animCurveTL -n "ambientLight1_translateY";
	rename -uid "C8AF9D02-AE43-2024-7602-C6B84F22D8CA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 120 0 121 0 180 0 240 0;
createNode animCurveTL -n "ambientLight1_translateZ";
	rename -uid "0158E626-0D45-E1FA-CEE7-DEA35D8B7B88";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 120 0 121 0 180 0 240 0;
createNode animCurveTU -n "ambientLight1_scaleX";
	rename -uid "DE120FE2-6140-8DD7-BA5D-3FAAF5E67C87";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 120 1 121 1 180 1 240 1;
createNode animCurveTU -n "ambientLight1_scaleY";
	rename -uid "0D8EC660-1B4A-E3D3-0061-069945E5EF6F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 120 1 121 1 180 1 240 1;
createNode animCurveTU -n "ambientLight1_scaleZ";
	rename -uid "3697B011-464F-3B46-C566-C38E073CD9CE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 120 1 121 1 180 1 240 1;
createNode animCurveTU -n "RootMotion_Control_visibility";
	rename -uid "293FACB6-B845-6979-F663-D890CDBD3BF9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 120 1 121 1 180 1 240 1;
	setAttr -s 5 ".kit[2:4]"  9 9 9;
	setAttr -s 5 ".kot[2:4]"  5 5 5;
createNode animCurveTL -n "RootMotion_Control_translateX";
	rename -uid "D0B5FF9F-AD48-6A82-290E-68BE0BDDE097";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 120 0 121 0 180 0 240 0;
createNode animCurveTL -n "RootMotion_Control_translateY";
	rename -uid "E3990BB8-D34D-6169-754A-E082EBE1FF02";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 120 0 121 0 180 0 240 0;
createNode animCurveTL -n "RootMotion_Control_translateZ";
	rename -uid "354BE4A2-C244-DEE2-02D5-10BA6DC4FD11";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 120 0 121 0 180 0 240 0;
createNode animCurveTU -n "RootMotion_Control_scaleX";
	rename -uid "C57EE478-704E-AE27-639B-56A127C76AC0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 120 1 121 1 180 1 240 1;
createNode animCurveTU -n "RootMotion_Control_scaleY";
	rename -uid "7D49B05F-DC45-211A-8FCD-DABDF64BB4FC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 120 1 121 1 180 1 240 1;
createNode animCurveTU -n "RootMotion_Control_scaleZ";
	rename -uid "8D172056-104F-462D-65F2-3199589D8205";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 120 1 121 1 180 1 240 1;
createNode animCurveTU -n "RIghtFoot_Control_visibility";
	rename -uid "B4F6B872-C944-AC2F-4AB8-9E9CEDB459EB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 1 60 1 120 1 121 1 180 1 240 1;
	setAttr -s 6 ".kit[3:5]"  9 9 9;
	setAttr -s 6 ".kot[3:5]"  5 5 5;
createNode animCurveTL -n "RIghtFoot_Control_translateX";
	rename -uid "B0976919-3747-55C6-227D-B7B56756C4CB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 -10.5479983921309 60 -10.5479983921309
		 120 -10.5479983921309 121 -10.5479983921309 180 -10.5479983921309 240 -10.5479983921309;
createNode animCurveTL -n "RIghtFoot_Control_translateY";
	rename -uid "7C151F03-844B-F4F8-85FA-48A7CB80CE0F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 60 0 120 0 121 0 180 0 240 0;
createNode animCurveTL -n "RIghtFoot_Control_translateZ";
	rename -uid "AA449181-2F4D-3C10-1343-44BCCFAEB4EA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 -16.196688120353542 60 -16.196688120353542
		 120 -16.196688120353542 121 -16.196688120353542 180 -16.196688120353542 240 -16.196688120353542;
createNode animCurveTU -n "RIghtFoot_Control_scaleX";
	rename -uid "BDBD27D4-B344-508B-1EA2-E3B900E9D5B1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 1 60 1 120 1 121 1 180 1 240 1;
createNode animCurveTU -n "RIghtFoot_Control_scaleY";
	rename -uid "087A9872-9B47-3554-7641-758206E4754F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 1 60 1 120 1 121 1 180 1 240 1;
createNode animCurveTU -n "RIghtFoot_Control_scaleZ";
	rename -uid "0649B107-554F-B9F7-8FB4-77AED2C59EE7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 1 60 1 120 1 121 1 180 1 240 1;
createNode animCurveTU -n "RightToes_Control_visibility";
	rename -uid "43090C5F-A447-E0EC-2575-2988F6C409B6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 120 1 121 1 180 1 240 1;
	setAttr -s 5 ".kit[2:4]"  9 9 9;
	setAttr -s 5 ".kot[2:4]"  5 5 5;
createNode animCurveTL -n "RightToes_Control_translateX";
	rename -uid "64B39BA0-5742-5A11-A2B8-D6813E833370";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 120 0 121 0 180 0 240 0;
createNode animCurveTL -n "RightToes_Control_translateY";
	rename -uid "8692CC17-2045-5FB7-D71D-2DA8843F1297";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 120 0 121 0 180 0 240 0;
createNode animCurveTL -n "RightToes_Control_translateZ";
	rename -uid "2FF006DC-A843-D649-8DAE-6C8938BF8BA9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 120 0 121 0 180 0 240 0;
createNode animCurveTU -n "RightToes_Control_scaleX";
	rename -uid "EBF062C8-C840-E66D-BE3C-2FA4F230C624";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 120 1 121 1 180 1 240 1;
createNode animCurveTU -n "RightToes_Control_scaleY";
	rename -uid "EBBC2C53-CF46-77C2-317B-EC8E19818B33";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 120 1 121 1 180 1 240 1;
createNode animCurveTU -n "RightToes_Control_scaleZ";
	rename -uid "F5BBD0C5-574A-9805-FE1D-F3AF86C0EE69";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 120 1 121 1 180 1 240 1;
createNode animCurveTU -n "LeftFoot_Control_visibility";
	rename -uid "B9D0B5A8-3441-4F1B-B7A4-FB98FEDA4870";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 1 60 1 120 1 121 1 180 1 240 1;
	setAttr -s 6 ".kit[3:5]"  9 9 9;
	setAttr -s 6 ".kot[3:5]"  5 5 5;
createNode animCurveTL -n "LeftFoot_Control_translateX";
	rename -uid "9C66D7DB-794C-0DF5-712A-72B18060C293";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 10.305966519728333 60 10.305966519728333
		 120 10.305966519728333 121 10.305966519728333 180 10.305966519728333 240 10.305966519728333;
createNode animCurveTL -n "LeftFoot_Control_translateY";
	rename -uid "C32AB3C4-6646-D753-3ECB-ECA2FA759E8C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 60 0 120 0 121 0 180 0 240 0;
createNode animCurveTL -n "LeftFoot_Control_translateZ";
	rename -uid "ACAC5F3D-8C4F-9EFC-4F7C-9EAEB9C2E288";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 22.202728831622387 60 22.202728831622387
		 120 22.202728831622387 121 22.202728831622387 180 22.202728831622387 240 22.202728831622387;
createNode animCurveTU -n "LeftFoot_Control_scaleX";
	rename -uid "ED13F555-5E43-7AA1-5E26-86A62D103AF1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 1 60 1 120 1 121 1 180 1 240 1;
createNode animCurveTU -n "LeftFoot_Control_scaleY";
	rename -uid "9B2B6463-0C49-9AE8-259D-56A0F73C3F7E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 1 60 1 120 1 121 1 180 1 240 1;
createNode animCurveTU -n "LeftFoot_Control_scaleZ";
	rename -uid "FE7D844A-2941-BD53-9B40-A997B5A12BE7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 1 60 1 120 1 121 1 180 1 240 1;
createNode animCurveTU -n "LeftToes_Control_visibility";
	rename -uid "6E8A776B-E745-63B2-7C38-04850A48F3D2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 120 1 121 1 180 1 240 1;
	setAttr -s 5 ".kit[2:4]"  9 9 9;
	setAttr -s 5 ".kot[2:4]"  5 5 5;
createNode animCurveTL -n "LeftToes_Control_translateX";
	rename -uid "44235660-E943-337E-246B-5F9D00CD8A45";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 120 0 121 0 180 0 240 0;
createNode animCurveTL -n "LeftToes_Control_translateY";
	rename -uid "B4F188CA-6648-2B0C-1816-52AA49481CB3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 120 0 121 0 180 0 240 0;
createNode animCurveTL -n "LeftToes_Control_translateZ";
	rename -uid "02DDC2BB-9E41-13C8-722C-7CAF1AA19106";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 120 0 121 0 180 0 240 0;
createNode animCurveTU -n "LeftToes_Control_scaleX";
	rename -uid "D9605D95-8640-7F9B-72FE-339971A5CFD4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 120 1 121 1 180 1 240 1;
createNode animCurveTU -n "LeftToes_Control_scaleY";
	rename -uid "FEE4B611-0741-174A-C577-79B39EC8E939";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 120 1 121 1 180 1 240 1;
createNode animCurveTU -n "LeftToes_Control_scaleZ";
	rename -uid "D7640A91-C343-A38A-09C0-678E976F0308";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 120 1 121 1 180 1 240 1;
createNode animCurveTU -n "Hips_Control_visibility";
	rename -uid "3BFC63CB-5D40-8C07-7AA6-D39CB177FBC5";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  1 1 60 1 120 1 121 1 135 1 150 1 165 1 180 1
		 195 1 210 1 225 1 240 1;
	setAttr -s 12 ".kit[0:11]"  18 18 18 9 9 9 9 9 
		9 9 9 9;
	setAttr -s 12 ".kot[0:11]"  18 18 18 5 5 5 5 5 
		5 5 5 5;
createNode animCurveTL -n "Hips_Control_translateX";
	rename -uid "90604CA0-9D44-E843-44F5-638174546EB9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  1 0 15 -0.59763637710072715 45 0.3733245993681884
		 60 0 75 -1.5298771412218883 105 -0.9182728481577791 120 0 121 0 135 -0.78082046542138528
		 150 -1.2361502065653553 165 0.92639400189285936 180 0.92639400184666698 195 -0.92639400184666698
		 210 0.15648617457101466 225 0.30713575950147742 240 0;
createNode animCurveTL -n "Hips_Control_translateY";
	rename -uid "B2731B01-B64D-F33E-C88C-7A9302854396";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  1 -4.123415289984564 30 -5.0957110308360427
		 60 -4.123415289984564 75 -4.2113532779729184 90 -5.6477573521850388 105 -4.8209066981361701
		 120 -4.123415289984564 121 -4.123415289984564 135 -4.123415289984564 150 -4.123415289984564
		 165 -4.123415289984564 180 -4.123415289984564 195 -4.123415289984564 210 -4.123415289984564
		 225 -4.123415289984564 240 -4.123415289984564;
createNode animCurveTL -n "Hips_Control_translateZ";
	rename -uid "4068674D-3546-7397-9B51-179E10FB5ACF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  1 3.4681839511493138 15 2.4399385767907518
		 60 3.4681839511493138 75 3.3460470603318697 120 3.4681839511493138 121 3.4681839511493138
		 135 4.6518400848898693 150 4.6146997756277131 165 3.5885015247237959 180 3.5885015247903596
		 195 3.347866377508268 210 4.7882188049696595 225 2.2010102164388456 240 3.4681839511493138;
createNode animCurveTU -n "Hips_Control_scaleX";
	rename -uid "D2B5F88C-7C44-35BD-2656-E78D42C8F419";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  1 1 60 1 120 1 121 1 135 1 150 1 165 1 180 1
		 195 1 210 1 225 1 240 1;
createNode animCurveTU -n "Hips_Control_scaleY";
	rename -uid "9DEB09B5-6B4C-E805-8262-F2B483491914";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  1 1 60 1 120 1 121 1 135 1 150 1 165 1 180 1
		 195 1 210 1 225 1 240 1;
createNode animCurveTU -n "Hips_Control_scaleZ";
	rename -uid "18FF0148-1F44-D000-00B8-CFB425980714";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  1 1 60 1 120 1 121 1 135 1 150 1 165 1 180 1
		 195 1 210 1 225 1 240 1;
createNode animCurveTU -n "Spine1_Control_visibility";
	rename -uid "FB620381-0342-7A35-EB21-0082564F42BE";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 60 1 120 1 170 1 180 1 186 1 220 1 240 1;
	setAttr -s 8 ".kit[0:7]"  18 9 18 9 9 9 1 9;
	setAttr -s 8 ".kot[0:7]"  18 5 18 5 5 5 1 5;
	setAttr -s 8 ".kix[6:7]"  1 1;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[6:7]"  1 0;
	setAttr -s 8 ".koy[6:7]"  0 0;
createNode animCurveTL -n "Spine1_Control_translateX";
	rename -uid "FA586B5C-6E4A-43F1-41A2-46B8D8EA03BC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 60 0 120 0 170 0 180 0 186 0 220 0 240 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[6:7]"  1 18;
	setAttr -s 8 ".kix[6:7]"  1 1;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[6:7]"  1 1;
	setAttr -s 8 ".koy[6:7]"  0 0;
createNode animCurveTL -n "Spine1_Control_translateY";
	rename -uid "04798C74-684A-F580-2FC3-05B6DB1D9A9B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 60 0 120 0 170 0 180 0 186 0 220 0 240 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[6:7]"  1 18;
	setAttr -s 8 ".kix[6:7]"  1 1;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[6:7]"  1 1;
	setAttr -s 8 ".koy[6:7]"  0 0;
createNode animCurveTL -n "Spine1_Control_translateZ";
	rename -uid "BCCE3435-534B-060C-E388-3787264A6814";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 60 0 120 0 170 0 180 0 186 0 220 0 240 0;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[6:7]"  1 18;
	setAttr -s 8 ".kix[6:7]"  1 1;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[6:7]"  1 1;
	setAttr -s 8 ".koy[6:7]"  0 0;
createNode animCurveTU -n "Spine1_Control_scaleX";
	rename -uid "FF73F7C5-CA4C-E8F9-32DA-008A6C490D9C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 60 1 120 1 170 1 180 1 186 1 220 1 240 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[6:7]"  1 18;
	setAttr -s 8 ".kix[6:7]"  1 1;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[6:7]"  1 1;
	setAttr -s 8 ".koy[6:7]"  0 0;
createNode animCurveTU -n "Spine1_Control_scaleY";
	rename -uid "8110CAAD-8346-4D00-DEEC-E0A666C9D92E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 60 1 120 1 170 1 180 1 186 1 220 1 240 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[6:7]"  1 18;
	setAttr -s 8 ".kix[6:7]"  1 1;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[6:7]"  1 1;
	setAttr -s 8 ".koy[6:7]"  0 0;
createNode animCurveTU -n "Spine1_Control_scaleZ";
	rename -uid "7B33C443-FE40-9FC9-5E4B-608E880B01EC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 60 1 120 1 170 1 180 1 186 1 220 1 240 1;
	setAttr -s 8 ".kit[6:7]"  1 18;
	setAttr -s 8 ".kot[6:7]"  1 18;
	setAttr -s 8 ".kix[6:7]"  1 1;
	setAttr -s 8 ".kiy[6:7]"  0 0;
	setAttr -s 8 ".kox[6:7]"  1 1;
	setAttr -s 8 ".koy[6:7]"  0 0;
createNode animCurveTU -n "LeftClav_Control_visibility";
	rename -uid "1B35794F-C542-33ED-5CFF-E8AE7F5597FE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 120 1 121 1 180 1 240 1;
	setAttr -s 5 ".kit[2:4]"  9 9 9;
	setAttr -s 5 ".kot[2:4]"  5 5 5;
createNode animCurveTL -n "LeftClav_Control_translateX";
	rename -uid "5A0B37AA-0243-5FC9-F2EC-61BFB8B0EB5A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 120 0 121 0 180 0 240 0;
createNode animCurveTL -n "LeftClav_Control_translateY";
	rename -uid "80385F40-A24C-999F-C439-2BB8A9401550";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 120 0 121 0 180 0 240 0;
createNode animCurveTL -n "LeftClav_Control_translateZ";
	rename -uid "121B3E84-924D-31D8-45BF-0C8A68F20592";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 120 0 121 0 180 0 240 0;
createNode animCurveTU -n "LeftClav_Control_scaleX";
	rename -uid "5F7EE878-D14C-80F6-9AEC-0AB8709B2170";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 120 1 121 1 180 1 240 1;
createNode animCurveTU -n "LeftClav_Control_scaleY";
	rename -uid "CCEEC2A0-1447-C240-8BC8-2A98008BF730";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 120 1 121 1 180 1 240 1;
createNode animCurveTU -n "LeftClav_Control_scaleZ";
	rename -uid "39EF3798-8348-4A7B-7083-8485EB248E49";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 120 1 121 1 180 1 240 1;
createNode animCurveTU -n "RightClav_Control_visibility";
	rename -uid "D00051FF-C244-A1B7-7C09-BDBE2489FE64";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 120 1 121 1 180 1 240 1;
	setAttr -s 5 ".kit[2:4]"  9 9 9;
	setAttr -s 5 ".kot[2:4]"  5 5 5;
createNode animCurveTL -n "RightClav_Control_translateX";
	rename -uid "0B50197C-1A47-AB5A-76E5-0790A15F0278";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 120 0 121 0 180 0 240 0;
createNode animCurveTL -n "RightClav_Control_translateY";
	rename -uid "7EB0E250-CB45-EC41-6D6C-63B330EAC2F6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 120 0 121 0 180 0 240 0;
createNode animCurveTL -n "RightClav_Control_translateZ";
	rename -uid "EF0F2AD3-764D-2571-C872-C493D52EA085";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 120 0 121 0 180 0 240 0;
createNode animCurveTU -n "RightClav_Control_scaleX";
	rename -uid "2669ED39-2746-7A3F-5170-25968CA76A36";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 120 1 121 1 180 1 240 1;
createNode animCurveTU -n "RightClav_Control_scaleY";
	rename -uid "76467D29-8641-EF10-B2DD-448598511CDC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 120 1 121 1 180 1 240 1;
createNode animCurveTU -n "RightClav_Control_scaleZ";
	rename -uid "6AA81103-CE41-4892-AE85-9ABAD5D17108";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 120 1 121 1 180 1 240 1;
createNode animCurveTU -n "Neck_Control_visibility";
	rename -uid "AC579480-D44F-E35E-E199-599875620A50";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 120 1 121 1 180 1 240 1;
	setAttr -s 5 ".kit[2:4]"  9 9 9;
	setAttr -s 5 ".kot[2:4]"  5 5 5;
createNode animCurveTL -n "Neck_Control_translateX";
	rename -uid "48255D3C-4E40-BC87-C722-5FB03880EF54";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 120 0 121 0 180 0 240 0;
createNode animCurveTL -n "Neck_Control_translateY";
	rename -uid "CB7FA640-C149-E591-0567-F192B682C443";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 120 0 121 0 180 0 240 0;
createNode animCurveTL -n "Neck_Control_translateZ";
	rename -uid "17F9DE74-5346-EE35-11CC-5DA35F2D0FD0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 120 0 121 0 180 0 240 0;
createNode animCurveTU -n "Neck_Control_scaleX";
	rename -uid "BB36194C-B247-C5A7-7C83-978A4BF9D229";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 120 1 121 1 180 1 240 1;
createNode animCurveTU -n "Neck_Control_scaleY";
	rename -uid "8185D68F-EC4A-F4EE-050A-B69037327FBD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 120 1 121 1 180 1 240 1;
createNode animCurveTU -n "Neck_Control_scaleZ";
	rename -uid "FB254F17-AE43-9F0E-F6AB-BCB57338FB71";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 120 1 121 1 180 1 240 1;
createNode animCurveTU -n "Head_Control_visibility";
	rename -uid "65E0C3A4-8C41-E543-C6F3-9F976B0386FF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 85 1 110 1 115 1 120 1 121 1 180 1 240 1;
	setAttr -s 8 ".kit[3:7]"  1 18 9 9 9;
	setAttr -s 8 ".kot[3:7]"  1 18 5 5 5;
	setAttr -s 8 ".kix[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".kiy[3:7]"  0 0 0 0 0;
	setAttr -s 8 ".kox[3:7]"  1 1 0 0 0;
	setAttr -s 8 ".koy[3:7]"  0 0 0 0 0;
createNode animCurveTL -n "Head_Control_translateX";
	rename -uid "FB602A54-5743-B497-FD2B-1DA36B05A7B5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 85 0 110 0 115 0 120 0 121 0 180 0 240 0;
	setAttr -s 8 ".kit[3:7]"  1 18 18 18 18;
	setAttr -s 8 ".kot[3:7]"  1 18 18 18 18;
	setAttr -s 8 ".kix[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".kiy[3:7]"  0 0 0 0 0;
	setAttr -s 8 ".kox[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".koy[3:7]"  0 0 0 0 0;
createNode animCurveTL -n "Head_Control_translateY";
	rename -uid "274184A5-E246-BB1D-5282-769571112A3F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 85 0 110 0 115 0 120 0 121 0 180 0 240 0;
	setAttr -s 8 ".kit[3:7]"  1 18 18 18 18;
	setAttr -s 8 ".kot[3:7]"  1 18 18 18 18;
	setAttr -s 8 ".kix[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".kiy[3:7]"  0 0 0 0 0;
	setAttr -s 8 ".kox[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".koy[3:7]"  0 0 0 0 0;
createNode animCurveTL -n "Head_Control_translateZ";
	rename -uid "D9B80C5D-7A46-F95F-0AD7-6F97F89967AB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 0 85 0 110 0 115 0 120 0 121 0 180 0 240 0;
	setAttr -s 8 ".kit[3:7]"  1 18 18 18 18;
	setAttr -s 8 ".kot[3:7]"  1 18 18 18 18;
	setAttr -s 8 ".kix[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".kiy[3:7]"  0 0 0 0 0;
	setAttr -s 8 ".kox[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".koy[3:7]"  0 0 0 0 0;
createNode animCurveTU -n "Head_Control_scaleX";
	rename -uid "65FAD8E3-B74F-AF03-8E30-1D90A58C4114";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 85 1 110 1 115 1 120 1 121 1 180 1 240 1;
	setAttr -s 8 ".kit[3:7]"  1 18 18 18 18;
	setAttr -s 8 ".kot[3:7]"  1 18 18 18 18;
	setAttr -s 8 ".kix[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".kiy[3:7]"  0 0 0 0 0;
	setAttr -s 8 ".kox[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".koy[3:7]"  0 0 0 0 0;
createNode animCurveTU -n "Head_Control_scaleY";
	rename -uid "9234E06A-EC47-3565-757E-1998617D9F8C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 85 1 110 1 115 1 120 1 121 1 180 1 240 1;
	setAttr -s 8 ".kit[3:7]"  1 18 18 18 18;
	setAttr -s 8 ".kot[3:7]"  1 18 18 18 18;
	setAttr -s 8 ".kix[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".kiy[3:7]"  0 0 0 0 0;
	setAttr -s 8 ".kox[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".koy[3:7]"  0 0 0 0 0;
createNode animCurveTU -n "Head_Control_scaleZ";
	rename -uid "FD8E82B9-F940-A12A-AFD3-D2A6941168DD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 1 85 1 110 1 115 1 120 1 121 1 180 1 240 1;
	setAttr -s 8 ".kit[3:7]"  1 18 18 18 18;
	setAttr -s 8 ".kot[3:7]"  1 18 18 18 18;
	setAttr -s 8 ".kix[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".kiy[3:7]"  0 0 0 0 0;
	setAttr -s 8 ".kox[3:7]"  1 1 1 1 1;
	setAttr -s 8 ".koy[3:7]"  0 0 0 0 0;
createNode animCurveTU -n "LeftShoulder_Control_visibility";
	rename -uid "4988145F-9D44-E624-1C9E-9EBD57C82E17";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 120 1 121 1 180 1 240 1;
	setAttr -s 5 ".kit[2:4]"  9 9 9;
	setAttr -s 5 ".kot[2:4]"  5 5 5;
createNode animCurveTL -n "LeftShoulder_Control_translateX";
	rename -uid "FB280477-484B-91CA-1B4F-A087F2620432";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 62.019362821489288 120 62.019362821489288
		 121 62.019362821489288 180 62.019362821489288 240 62.019362821489288;
createNode animCurveTL -n "LeftShoulder_Control_translateY";
	rename -uid "F1D58D08-1243-0D10-1D53-2EB58CA9FD62";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0.00031204268347551078 120 0.00031204268347551078
		 121 0.00031204268347551078 180 0.00031204268347551078 240 0.00031204268347551078;
createNode animCurveTL -n "LeftShoulder_Control_translateZ";
	rename -uid "C536AA1B-7F4F-241F-B100-1380A3A6EE67";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 3.4604225783496645e-05 120 3.4604225783496645e-05
		 121 3.4604225783496645e-05 180 3.4604225783496645e-05 240 3.4604225783496645e-05;
createNode animCurveTU -n "LeftShoulder_Control_scaleX";
	rename -uid "FE8C9360-644B-6F87-A721-EE9F6878B8B0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 120 1 121 1 180 1 240 1;
createNode animCurveTU -n "LeftShoulder_Control_scaleY";
	rename -uid "9F104442-114E-387B-2756-F08E5FF34DC4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 120 1 121 1 180 1 240 1;
createNode animCurveTU -n "LeftShoulder_Control_scaleZ";
	rename -uid "203DAF14-1147-3102-8EE0-CEAB2B7F3D6C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 120 1 121 1 180 1 240 1;
createNode animCurveTU -n "RightShoulder_Control_visibility";
	rename -uid "C483884E-D846-51C0-E923-E2AF7EC19887";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 120 1 121 1 180 1 240 1;
	setAttr -s 5 ".kit[2:4]"  9 9 9;
	setAttr -s 5 ".kot[2:4]"  5 5 5;
createNode animCurveTL -n "RightShoulder_Control_translateX";
	rename -uid "3E2A75A1-3241-CAE5-3767-5C800F4741AC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 120 0 121 0 180 0 240 0;
createNode animCurveTL -n "RightShoulder_Control_translateY";
	rename -uid "0897386F-324D-7190-FAFC-489E5018E4C6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 120 0 121 0 180 0 240 0;
createNode animCurveTL -n "RightShoulder_Control_translateZ";
	rename -uid "22043850-4D41-C765-E142-B1BB60BF461E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 120 0 121 0 180 0 240 0;
createNode animCurveTU -n "RightShoulder_Control_scaleX";
	rename -uid "F908B9B3-4942-BC4D-8D59-5BA83A75BA0D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 120 1 121 1 180 1 240 1;
createNode animCurveTU -n "RightShoulder_Control_scaleY";
	rename -uid "72F5AA1A-114C-4575-634C-0B81EE8C4DD4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 120 1 121 1 180 1 240 1;
createNode animCurveTU -n "RightShoulder_Control_scaleZ";
	rename -uid "C24D70F6-E646-9531-A04E-468F190C2347";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 120 1 121 1 180 1 240 1;
createNode animCurveTU -n "RightHand_Control_visibility";
	rename -uid "970CF6BE-C249-0A52-BB9A-7F82B6885D66";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  1 1 60 1 80 1 115 1 120 1 121 1 135 1 150 1
		 165 1 180 1 195 1 225 1 240 1;
	setAttr -s 13 ".kit[5:12]"  9 9 9 9 9 9 9 9;
	setAttr -s 13 ".kot[5:12]"  5 5 5 5 5 5 5 5;
createNode animCurveTL -n "RightHand_Control_translateX";
	rename -uid "3CEE60A9-AB4A-1FD0-A7DB-0A9F1D43B45A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  1 7.3821945998078036 15 6.7845582227070764
		 45 7.7555191991759918 60 7.3821945998078036 80 5.549563644899302 115 7.3821945998078036
		 120 7.3821945998078036 121 7.3821945998078036 135 6.6013741343864183 150 6.1460443932424482
		 165 8.3085886017006629 180 8.3085886016544706 195 9.9548208249471628 210 10.603360510384377
		 225 10.472209358130677 240 7.3821945998078036;
createNode animCurveTL -n "RightHand_Control_translateY";
	rename -uid "13B0AD4A-9344-C9F6-2091-429EA2534EBB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  1 44.685289172088488 30 43.71299343123701
		 60 44.685289172088488 80 44.185866820211487 115 44.685289172088488 120 44.685289172088488
		 121 44.685289172088488 135 44.685289172088488 150 44.685289172088488 165 44.685289172088488
		 180 44.685289172088488 195 44.685289172088488 225 44.685289172088488 240 44.685289172088488;
createNode animCurveTL -n "RightHand_Control_translateZ";
	rename -uid "3113C593-0540-CF04-5371-029B63068FF9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  1 21.768911647632098 15 20.740666273273536
		 60 21.768911647632098 80 17.609500206270194 115 21.768911647632098 120 21.768911647632098
		 121 21.768911647632098 135 22.952567781372654 150 22.915427472110498 165 21.88922922120658
		 180 21.889229221273144 195 22.497074579652651 210 24.617318504156703 225 22.21735262226834
		 240 21.768911647632098;
createNode animCurveTU -n "RightHand_Control_scaleX";
	rename -uid "3F83695C-684F-F4E8-02E3-94BD75A95A31";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  1 1 60 1 80 1 115 1 120 1 121 1 135 1 150 1
		 165 1 180 1 195 1 225 1 240 1;
createNode animCurveTU -n "RightHand_Control_scaleY";
	rename -uid "87E2B70C-DE41-1EDA-843C-3EB07E4EDDEC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  1 1 60 1 80 1 115 1 120 1 121 1 135 1 150 1
		 165 1 180 1 195 1 225 1 240 1;
createNode animCurveTU -n "RightHand_Control_scaleZ";
	rename -uid "AD6998A9-A149-8C6E-70FA-CAA9D41EA716";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  1 1 60 1 80 1 115 1 120 1 121 1 135 1 150 1
		 165 1 180 1 195 1 225 1 240 1;
createNode animCurveTU -n "RightHand_Control_Grip";
	rename -uid "32421CA8-534C-244E-215D-34B7C874FD94";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  1 1 60 1 80 1 115 1 120 1 121 1 135 1 150 1
		 165 1 180 1 195 1 225 1 240 1;
createNode animCurveTU -n "LeftHand_Control_visibility";
	rename -uid "1B3FB906-3D44-67CF-251A-C199C7318D75";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  1 1 60 1 80 1 115 1 120 1 121 1 135 1 150 1
		 165 1 180 1 195 1 225 1 240 1;
	setAttr -s 13 ".kit[5:12]"  9 9 9 9 9 9 9 9;
	setAttr -s 13 ".kot[5:12]"  5 5 5 5 5 5 5 5;
createNode animCurveTL -n "LeftHand_Control_translateX";
	rename -uid "3236C7DE-DE48-AAEA-F7F7-D49BD287ADA0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  1 -36.811740080154237 15 -37.409376457254965
		 45 -36.438415480786048 60 -36.811740080154237 80 -38.64437103506274 115 -36.811740080154237
		 120 -36.811740080154237 121 -36.811740080154237 135 -37.592560545575623 150 -38.047890286719593
		 165 -35.885346078261378 180 -35.88534607830757 195 -34.239113855014878 210 -33.590574169577664
		 225 -33.721725321831364 240 -36.811740080154237;
createNode animCurveTL -n "LeftHand_Control_translateY";
	rename -uid "BB3A0104-0441-F1A8-06CB-5BA501EBB2AB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  1 15.247119693467766 30 14.274823952616288
		 60 15.247119693467766 80 14.747697341590765 115 15.247119693467766 120 15.247119693467766
		 121 15.247119693467766 135 15.247119693467766 150 15.247119693467766 165 15.247119693467766
		 180 15.247119693467766 195 15.247119693467766 225 15.247119693467766 240 15.247119693467766;
createNode animCurveTL -n "LeftHand_Control_translateZ";
	rename -uid "895D08EA-5148-9993-E2AC-80A7A71BE27E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  1 38.719653441861958 15 37.691408067503396
		 60 38.719653441861958 80 34.560242000500054 115 38.719653441861958 120 38.719653441861958
		 121 38.719653441861958 135 39.903309575602513 150 39.866169266340357 165 38.83997101543644
		 180 38.839971015503004 195 39.44781637388251 210 41.568060298386563 225 39.168094416498199
		 240 38.719653441861958;
createNode animCurveTU -n "LeftHand_Control_scaleX";
	rename -uid "E6A70B7A-B644-BD83-FE4A-838DB904AF43";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  1 1 60 1 80 1 115 1 120 1 121 1 135 1 150 1
		 165 1 180 1 195 1 225 1 240 1;
createNode animCurveTU -n "LeftHand_Control_scaleY";
	rename -uid "7C341D7D-DE4E-099D-E76D-F59194FB5E9F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  1 1 60 1 80 1 115 1 120 1 121 1 135 1 150 1
		 165 1 180 1 195 1 225 1 240 1;
createNode animCurveTU -n "LeftHand_Control_scaleZ";
	rename -uid "CAF2398E-DB4B-3089-BEEB-8DBE04DC5EA9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  1 1 60 1 80 1 115 1 120 1 121 1 135 1 150 1
		 165 1 180 1 195 1 225 1 240 1;
createNode animCurveTU -n "LeftHand_Control_Grip";
	rename -uid "03691581-1B48-EDA9-D4DF-C597C5ED5CEF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  1 0 60 0 80 0 115 0 120 0 121 0 135 0 150 0
		 165 0 180 0 195 0 225 0 240 0;
createNode animCurveTU -n "nurbsCircle1_visibility";
	rename -uid "6E231E4F-4546-7F62-0A9B-2F8C003A2D31";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 120 1 121 1 180 1 240 1;
	setAttr -s 5 ".kit[2:4]"  9 9 9;
	setAttr -s 5 ".kot[2:4]"  5 5 5;
createNode animCurveTL -n "nurbsCircle1_translateX";
	rename -uid "DCB8AFD8-204A-97AC-C9B6-BBBDCB4D952C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 120 0 121 0 180 0 240 0;
createNode animCurveTL -n "nurbsCircle1_translateY";
	rename -uid "8615AFCF-A147-573B-8695-1587D3BE700D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 120 0 121 0 180 0 240 0;
createNode animCurveTL -n "nurbsCircle1_translateZ";
	rename -uid "4DD3B567-304A-E324-45F8-9A8A8C7379C7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 120 0 121 0 180 0 240 0;
createNode animCurveTU -n "nurbsCircle1_scaleX";
	rename -uid "F6091E12-E04C-68A1-3BDD-DF88872DB852";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 120 1 121 1 180 1 240 1;
createNode animCurveTU -n "nurbsCircle1_scaleY";
	rename -uid "725481E1-F34A-EB5C-60DA-5F839F33A51F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 120 1 121 1 180 1 240 1;
createNode animCurveTU -n "nurbsCircle1_scaleZ";
	rename -uid "68609B6A-A848-8BC2-4DCD-1E9B4C8F69E8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 120 1 121 1 180 1 240 1;
createNode animCurveTU -n "LeftKnee_Control_visibility";
	rename -uid "946FA8B9-8F42-D580-F913-88A7C36F76BB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 120 1 121 1 180 1 240 1;
	setAttr -s 5 ".kit[2:4]"  9 9 9;
	setAttr -s 5 ".kot[2:4]"  5 5 5;
createNode animCurveTL -n "LeftKnee_Control_translateX";
	rename -uid "4CBC36ED-DB4E-8C8B-FF1C-D686C6A85950";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 120 0 121 0 180 0 240 0;
createNode animCurveTL -n "LeftKnee_Control_translateY";
	rename -uid "336C4AC0-AC46-D1D7-D2FD-899CA21CE6A1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 120 0 121 0 180 0 240 0;
createNode animCurveTL -n "LeftKnee_Control_translateZ";
	rename -uid "476C8C5D-644C-70AE-CFB9-EA9D962D46FE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 120 0 121 0 180 0 240 0;
createNode animCurveTU -n "LeftKnee_Control_scaleX";
	rename -uid "9C5CC333-6D45-D1BF-E0B3-E6AC91941CDA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 120 1 121 1 180 1 240 1;
createNode animCurveTU -n "LeftKnee_Control_scaleY";
	rename -uid "0B63BB9D-F548-5600-7176-C19A93CD1A7D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 120 1 121 1 180 1 240 1;
createNode animCurveTU -n "LeftKnee_Control_scaleZ";
	rename -uid "9994E631-6943-4045-806D-899D5461C22C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 120 1 121 1 180 1 240 1;
createNode animCurveTU -n "LeftElbow_Control_visibility";
	rename -uid "87088DDD-7A46-ED97-C2D7-5190DE8EB13C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 1 60 1 120 1 121 1 180 1 240 1;
	setAttr -s 6 ".kit[3:5]"  9 9 9;
	setAttr -s 6 ".kot[3:5]"  5 5 5;
createNode animCurveTL -n "LeftElbow_Control_translateX";
	rename -uid "DB47BC97-8743-07A0-40EB-A292FB316808";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 70.084017166290508 60 70.084017166290508
		 120 70.084017166290508 121 70.084017166290508 180 70.084017166290508 240 70.084017166290508;
createNode animCurveTL -n "LeftElbow_Control_translateY";
	rename -uid "A88B7D45-3649-9F76-1B9C-66B1439D46E2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 31.346115892917908 60 31.346115892917908
		 120 31.346115892917908 121 31.346115892917908 180 31.346115892917908 240 31.346115892917908;
createNode animCurveTL -n "LeftElbow_Control_translateZ";
	rename -uid "43068D1C-834E-4A4A-27B8-AAA872AA4E9F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 96.771609094901606 60 96.771609094901606
		 120 96.771609094901606 121 96.771609094901606 180 96.771609094901606 240 96.771609094901606;
createNode animCurveTU -n "LeftElbow_Control_scaleX";
	rename -uid "B5973899-1B4B-E3E4-3DCC-64945F070F03";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 1 60 1 120 1 121 1 180 1 240 1;
createNode animCurveTU -n "LeftElbow_Control_scaleY";
	rename -uid "B5D60455-9946-6A9F-74F7-70895820B9F0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 1 60 1 120 1 121 1 180 1 240 1;
createNode animCurveTU -n "LeftElbow_Control_scaleZ";
	rename -uid "4CA2ACDD-6D42-F0FC-8940-BDBD086EB43D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 1 60 1 120 1 121 1 180 1 240 1;
createNode animCurveTU -n "RightElbow_Control_visibility";
	rename -uid "93BF268E-B249-935E-169C-CAAE47365BD8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 1 60 1 120 1 121 1 180 1 240 1;
	setAttr -s 6 ".kit[3:5]"  9 9 9;
	setAttr -s 6 ".kot[3:5]"  5 5 5;
createNode animCurveTL -n "RightElbow_Control_translateX";
	rename -uid "9DF1E14B-6E40-D361-0C03-C19BAF6A474E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 -28.226885173702271 60 -28.226885173702271
		 120 -28.226885173702271 121 -28.226885173702271 180 -28.226885173702271 240 -28.226885173702271;
createNode animCurveTL -n "RightElbow_Control_translateY";
	rename -uid "794C74A3-054F-F107-B379-28A197BE08A9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 60 0 120 0 121 0 180 0 240 0;
createNode animCurveTL -n "RightElbow_Control_translateZ";
	rename -uid "F8CE3EA4-D447-22EC-0EF7-4D93B9F48261";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 0 60 0 120 0 121 0 180 0 240 0;
createNode animCurveTU -n "RightElbow_Control_scaleX";
	rename -uid "768BD41F-6741-7B4C-FAD2-5885675452D0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 1 60 1 120 1 121 1 180 1 240 1;
createNode animCurveTU -n "RightElbow_Control_scaleY";
	rename -uid "AFB4D124-5345-6C5E-9769-F98223E72B05";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 1 60 1 120 1 121 1 180 1 240 1;
createNode animCurveTU -n "RightElbow_Control_scaleZ";
	rename -uid "12152985-6546-3F2F-7A21-FB8C0B04A4B8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  1 1 60 1 120 1 121 1 180 1 240 1;
select -ne :time1;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".o" 39;
	setAttr -av ".unw" 39;
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
connectAttr "LeftFoot_Control_rotateX.o" "CombotRN.phl[32]";
connectAttr "LeftFoot_Control_rotateY.o" "CombotRN.phl[33]";
connectAttr "LeftFoot_Control_rotateZ.o" "CombotRN.phl[34]";
connectAttr "LeftFoot_Control_translateX.o" "CombotRN.phl[35]";
connectAttr "LeftFoot_Control_translateY.o" "CombotRN.phl[36]";
connectAttr "LeftFoot_Control_translateZ.o" "CombotRN.phl[37]";
connectAttr "LeftFoot_Control_visibility.o" "CombotRN.phl[38]";
connectAttr "LeftFoot_Control_scaleX.o" "CombotRN.phl[39]";
connectAttr "LeftFoot_Control_scaleY.o" "CombotRN.phl[40]";
connectAttr "LeftFoot_Control_scaleZ.o" "CombotRN.phl[41]";
connectAttr "LeftToes_Control_rotateX.o" "CombotRN.phl[42]";
connectAttr "LeftToes_Control_rotateY.o" "CombotRN.phl[43]";
connectAttr "LeftToes_Control_rotateZ.o" "CombotRN.phl[44]";
connectAttr "LeftToes_Control_visibility.o" "CombotRN.phl[45]";
connectAttr "LeftToes_Control_translateX.o" "CombotRN.phl[46]";
connectAttr "LeftToes_Control_translateY.o" "CombotRN.phl[47]";
connectAttr "LeftToes_Control_translateZ.o" "CombotRN.phl[48]";
connectAttr "LeftToes_Control_scaleX.o" "CombotRN.phl[49]";
connectAttr "LeftToes_Control_scaleY.o" "CombotRN.phl[50]";
connectAttr "LeftToes_Control_scaleZ.o" "CombotRN.phl[51]";
connectAttr "Hips_Control_translateX.o" "CombotRN.phl[52]";
connectAttr "Hips_Control_translateY.o" "CombotRN.phl[53]";
connectAttr "Hips_Control_translateZ.o" "CombotRN.phl[54]";
connectAttr "Hips_Control_rotateX.o" "CombotRN.phl[55]";
connectAttr "Hips_Control_rotateY.o" "CombotRN.phl[56]";
connectAttr "Hips_Control_rotateZ.o" "CombotRN.phl[57]";
connectAttr "Hips_Control_scaleX.o" "CombotRN.phl[58]";
connectAttr "Hips_Control_scaleY.o" "CombotRN.phl[59]";
connectAttr "Hips_Control_scaleZ.o" "CombotRN.phl[60]";
connectAttr "Hips_Control_visibility.o" "CombotRN.phl[61]";
connectAttr "Spine1_Control_rotateX.o" "CombotRN.phl[62]";
connectAttr "Spine1_Control_rotateY.o" "CombotRN.phl[63]";
connectAttr "Spine1_Control_rotateZ.o" "CombotRN.phl[64]";
connectAttr "Spine1_Control_visibility.o" "CombotRN.phl[65]";
connectAttr "Spine1_Control_translateX.o" "CombotRN.phl[66]";
connectAttr "Spine1_Control_translateY.o" "CombotRN.phl[67]";
connectAttr "Spine1_Control_translateZ.o" "CombotRN.phl[68]";
connectAttr "Spine1_Control_scaleX.o" "CombotRN.phl[69]";
connectAttr "Spine1_Control_scaleY.o" "CombotRN.phl[70]";
connectAttr "Spine1_Control_scaleZ.o" "CombotRN.phl[71]";
connectAttr "LeftClav_Control_rotateX.o" "CombotRN.phl[72]";
connectAttr "LeftClav_Control_rotateY.o" "CombotRN.phl[73]";
connectAttr "LeftClav_Control_rotateZ.o" "CombotRN.phl[74]";
connectAttr "LeftClav_Control_visibility.o" "CombotRN.phl[75]";
connectAttr "LeftClav_Control_translateX.o" "CombotRN.phl[76]";
connectAttr "LeftClav_Control_translateY.o" "CombotRN.phl[77]";
connectAttr "LeftClav_Control_translateZ.o" "CombotRN.phl[78]";
connectAttr "LeftClav_Control_scaleX.o" "CombotRN.phl[79]";
connectAttr "LeftClav_Control_scaleY.o" "CombotRN.phl[80]";
connectAttr "LeftClav_Control_scaleZ.o" "CombotRN.phl[81]";
connectAttr "RightClav_Control_rotateX.o" "CombotRN.phl[82]";
connectAttr "RightClav_Control_rotateY.o" "CombotRN.phl[83]";
connectAttr "RightClav_Control_rotateZ.o" "CombotRN.phl[84]";
connectAttr "RightClav_Control_visibility.o" "CombotRN.phl[85]";
connectAttr "RightClav_Control_translateX.o" "CombotRN.phl[86]";
connectAttr "RightClav_Control_translateY.o" "CombotRN.phl[87]";
connectAttr "RightClav_Control_translateZ.o" "CombotRN.phl[88]";
connectAttr "RightClav_Control_scaleX.o" "CombotRN.phl[89]";
connectAttr "RightClav_Control_scaleY.o" "CombotRN.phl[90]";
connectAttr "RightClav_Control_scaleZ.o" "CombotRN.phl[91]";
connectAttr "Neck_Control_rotateX.o" "CombotRN.phl[92]";
connectAttr "Neck_Control_rotateY.o" "CombotRN.phl[93]";
connectAttr "Neck_Control_rotateZ.o" "CombotRN.phl[94]";
connectAttr "Neck_Control_visibility.o" "CombotRN.phl[95]";
connectAttr "Neck_Control_translateX.o" "CombotRN.phl[96]";
connectAttr "Neck_Control_translateY.o" "CombotRN.phl[97]";
connectAttr "Neck_Control_translateZ.o" "CombotRN.phl[98]";
connectAttr "Neck_Control_scaleX.o" "CombotRN.phl[99]";
connectAttr "Neck_Control_scaleY.o" "CombotRN.phl[100]";
connectAttr "Neck_Control_scaleZ.o" "CombotRN.phl[101]";
connectAttr "Head_Control_rotateX.o" "CombotRN.phl[102]";
connectAttr "Head_Control_rotateY.o" "CombotRN.phl[103]";
connectAttr "Head_Control_rotateZ.o" "CombotRN.phl[104]";
connectAttr "Head_Control_visibility.o" "CombotRN.phl[105]";
connectAttr "Head_Control_translateX.o" "CombotRN.phl[106]";
connectAttr "Head_Control_translateY.o" "CombotRN.phl[107]";
connectAttr "Head_Control_translateZ.o" "CombotRN.phl[108]";
connectAttr "Head_Control_scaleX.o" "CombotRN.phl[109]";
connectAttr "Head_Control_scaleY.o" "CombotRN.phl[110]";
connectAttr "Head_Control_scaleZ.o" "CombotRN.phl[111]";
connectAttr "LeftShoulder_Control_rotateX.o" "CombotRN.phl[112]";
connectAttr "LeftShoulder_Control_rotateY.o" "CombotRN.phl[113]";
connectAttr "LeftShoulder_Control_rotateZ.o" "CombotRN.phl[114]";
connectAttr "LeftShoulder_Control_visibility.o" "CombotRN.phl[115]";
connectAttr "LeftShoulder_Control_translateX.o" "CombotRN.phl[116]";
connectAttr "LeftShoulder_Control_translateY.o" "CombotRN.phl[117]";
connectAttr "LeftShoulder_Control_translateZ.o" "CombotRN.phl[118]";
connectAttr "LeftShoulder_Control_scaleX.o" "CombotRN.phl[119]";
connectAttr "LeftShoulder_Control_scaleY.o" "CombotRN.phl[120]";
connectAttr "LeftShoulder_Control_scaleZ.o" "CombotRN.phl[121]";
connectAttr "RightShoulder_Control_rotateX.o" "CombotRN.phl[122]";
connectAttr "RightShoulder_Control_rotateY.o" "CombotRN.phl[123]";
connectAttr "RightShoulder_Control_rotateZ.o" "CombotRN.phl[124]";
connectAttr "RightShoulder_Control_visibility.o" "CombotRN.phl[125]";
connectAttr "RightShoulder_Control_translateX.o" "CombotRN.phl[126]";
connectAttr "RightShoulder_Control_translateY.o" "CombotRN.phl[127]";
connectAttr "RightShoulder_Control_translateZ.o" "CombotRN.phl[128]";
connectAttr "RightShoulder_Control_scaleX.o" "CombotRN.phl[129]";
connectAttr "RightShoulder_Control_scaleY.o" "CombotRN.phl[130]";
connectAttr "RightShoulder_Control_scaleZ.o" "CombotRN.phl[131]";
connectAttr "RightHand_Control_Grip.o" "CombotRN.phl[132]";
connectAttr "RightHand_Control_rotateX.o" "CombotRN.phl[133]";
connectAttr "RightHand_Control_rotateY.o" "CombotRN.phl[134]";
connectAttr "RightHand_Control_rotateZ.o" "CombotRN.phl[135]";
connectAttr "RightHand_Control_translateX.o" "CombotRN.phl[136]";
connectAttr "RightHand_Control_translateY.o" "CombotRN.phl[137]";
connectAttr "RightHand_Control_translateZ.o" "CombotRN.phl[138]";
connectAttr "RightHand_Control_visibility.o" "CombotRN.phl[139]";
connectAttr "RightHand_Control_scaleX.o" "CombotRN.phl[140]";
connectAttr "RightHand_Control_scaleY.o" "CombotRN.phl[141]";
connectAttr "RightHand_Control_scaleZ.o" "CombotRN.phl[142]";
connectAttr "LeftHand_Control_Grip.o" "CombotRN.phl[143]";
connectAttr "LeftHand_Control_rotateX.o" "CombotRN.phl[144]";
connectAttr "LeftHand_Control_rotateY.o" "CombotRN.phl[145]";
connectAttr "LeftHand_Control_rotateZ.o" "CombotRN.phl[146]";
connectAttr "LeftHand_Control_translateX.o" "CombotRN.phl[147]";
connectAttr "LeftHand_Control_translateY.o" "CombotRN.phl[148]";
connectAttr "LeftHand_Control_translateZ.o" "CombotRN.phl[149]";
connectAttr "LeftHand_Control_visibility.o" "CombotRN.phl[150]";
connectAttr "LeftHand_Control_scaleX.o" "CombotRN.phl[151]";
connectAttr "LeftHand_Control_scaleY.o" "CombotRN.phl[152]";
connectAttr "LeftHand_Control_scaleZ.o" "CombotRN.phl[153]";
connectAttr "nurbsCircle1_rotateX.o" "CombotRN.phl[154]";
connectAttr "nurbsCircle1_rotateY.o" "CombotRN.phl[155]";
connectAttr "nurbsCircle1_rotateZ.o" "CombotRN.phl[156]";
connectAttr "nurbsCircle1_visibility.o" "CombotRN.phl[157]";
connectAttr "nurbsCircle1_translateX.o" "CombotRN.phl[158]";
connectAttr "nurbsCircle1_translateY.o" "CombotRN.phl[159]";
connectAttr "nurbsCircle1_translateZ.o" "CombotRN.phl[160]";
connectAttr "nurbsCircle1_scaleX.o" "CombotRN.phl[161]";
connectAttr "nurbsCircle1_scaleY.o" "CombotRN.phl[162]";
connectAttr "nurbsCircle1_scaleZ.o" "CombotRN.phl[163]";
connectAttr "LeftKnee_Control_rotateX.o" "CombotRN.phl[164]";
connectAttr "LeftKnee_Control_rotateY.o" "CombotRN.phl[165]";
connectAttr "LeftKnee_Control_rotateZ.o" "CombotRN.phl[166]";
connectAttr "LeftKnee_Control_visibility.o" "CombotRN.phl[167]";
connectAttr "LeftKnee_Control_translateX.o" "CombotRN.phl[168]";
connectAttr "LeftKnee_Control_translateY.o" "CombotRN.phl[169]";
connectAttr "LeftKnee_Control_translateZ.o" "CombotRN.phl[170]";
connectAttr "LeftKnee_Control_scaleX.o" "CombotRN.phl[171]";
connectAttr "LeftKnee_Control_scaleY.o" "CombotRN.phl[172]";
connectAttr "LeftKnee_Control_scaleZ.o" "CombotRN.phl[173]";
connectAttr "LeftElbow_Control_translateX.o" "CombotRN.phl[174]";
connectAttr "LeftElbow_Control_translateY.o" "CombotRN.phl[175]";
connectAttr "LeftElbow_Control_translateZ.o" "CombotRN.phl[176]";
connectAttr "LeftElbow_Control_rotateX.o" "CombotRN.phl[177]";
connectAttr "LeftElbow_Control_rotateY.o" "CombotRN.phl[178]";
connectAttr "LeftElbow_Control_rotateZ.o" "CombotRN.phl[179]";
connectAttr "LeftElbow_Control_visibility.o" "CombotRN.phl[180]";
connectAttr "LeftElbow_Control_scaleX.o" "CombotRN.phl[181]";
connectAttr "LeftElbow_Control_scaleY.o" "CombotRN.phl[182]";
connectAttr "LeftElbow_Control_scaleZ.o" "CombotRN.phl[183]";
connectAttr "RightElbow_Control_translateX.o" "CombotRN.phl[184]";
connectAttr "RightElbow_Control_translateY.o" "CombotRN.phl[185]";
connectAttr "RightElbow_Control_translateZ.o" "CombotRN.phl[186]";
connectAttr "RightElbow_Control_rotateX.o" "CombotRN.phl[187]";
connectAttr "RightElbow_Control_rotateY.o" "CombotRN.phl[188]";
connectAttr "RightElbow_Control_rotateZ.o" "CombotRN.phl[189]";
connectAttr "RightElbow_Control_visibility.o" "CombotRN.phl[190]";
connectAttr "RightElbow_Control_scaleX.o" "CombotRN.phl[191]";
connectAttr "RightElbow_Control_scaleY.o" "CombotRN.phl[192]";
connectAttr "RightElbow_Control_scaleZ.o" "CombotRN.phl[193]";
connectAttr "CombotRN.phl[194]" "AssaultRifle_parentConstraint1.tg[0].tt";
connectAttr "CombotRN.phl[195]" "AssaultRifle_parentConstraint1.tg[0].trp";
connectAttr "CombotRN.phl[196]" "AssaultRifle_parentConstraint1.tg[0].trt";
connectAttr "CombotRN.phl[197]" "AssaultRifle_parentConstraint1.tg[0].tr";
connectAttr "CombotRN.phl[198]" "AssaultRifle_parentConstraint1.tg[0].tro";
connectAttr "CombotRN.phl[199]" "AssaultRifle_parentConstraint1.tg[0].ts";
connectAttr "CombotRN.phl[200]" "AssaultRifle_parentConstraint1.tg[0].tpm";
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
connectAttr "ambientLight1_rotateX.o" "ambientLight1.rx";
connectAttr "ambientLight1_rotateY.o" "ambientLight1.ry";
connectAttr "ambientLight1_rotateZ.o" "ambientLight1.rz";
connectAttr "ambientLight1_visibility.o" "ambientLight1.v";
connectAttr "ambientLight1_translateX.o" "ambientLight1.tx";
connectAttr "ambientLight1_translateY.o" "ambientLight1.ty";
connectAttr "ambientLight1_translateZ.o" "ambientLight1.tz";
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
// End of Combot_Idle.ma
