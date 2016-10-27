//Maya ASCII 2016 scene
//Name: Combot_Moving.ma
//Last modified: Wed, Oct 26, 2016 07:23:22 AM
//Codeset: UTF-8
file -rdi 1 -ns "Rig" -rfn "CombotRN" -op "v=0;" -typ "mayaAscii" "/Users/briancollins/Unity/LZisHOT/MayaSource/Combot/Combot.ma";
file -rdi 2 -ns "AssaultRifle" -dr 1 -rfn "Rig:AssaultRifleRN" -op "v=0;" -typ
		 "mayaAscii" "/Users/briancollins/Unity/DropZone/MayaSource/equipment/AssaultRifle.ma";
file -rdi 1 -ns "AssaultRifle" -rfn "AssaultRifleRN" -op "v=0;" -typ "mayaAscii"
		 "/Users/briancollins/Unity/DropZone/MayaSource/equipment/AssaultRifle.ma";
file -r -ns "Rig" -dr 1 -rfn "CombotRN" -op "v=0;" -typ "mayaAscii" "/Users/briancollins/Unity/LZisHOT/MayaSource/Combot/Combot.ma";
file -r -ns "AssaultRifle" -dr 1 -rfn "AssaultRifleRN" -op "v=0;" -typ "mayaAscii"
		 "/Users/briancollins/Unity/DropZone/MayaSource/equipment/AssaultRifle.ma";
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
	setAttr ".t" -type "double3" -132.70338748848746 329.46253191695706 598.18792616638132 ;
	setAttr ".r" -type "double3" -24.338352730809824 -2172.9999999996317 -4.080270418303331e-16 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "CC00F1CE-0347-CFA4-D46A-8685B3A27D4F";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 678.52455497252197;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 134.73057684556227 15.564176544858725 349.11581289522792 ;
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
	setAttr ".ow" 345.97290410044837;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "94F3260A-8141-22A7-25C6-3092E101EDD6";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 550.95596834179071 80.081721031115393 3.3553108864816181 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "6B8FB14B-7E42-35E1-B103-9F96EA7C5538";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 500.1;
	setAttr ".ow" 566.34397912931968;
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
	rename -uid "14CA24E5-DC4C-7537-71D9-2A9F40148654";
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
	setAttr ".lr" -type "double3" 49.769603696228579 86.681801648429655 49.844226209566486 ;
	setAttr ".rst" -type "double3" 0 2.8421709430404007e-14 -8.8817841970012523e-16 ;
	setAttr ".rsrr" -type "double3" 1.2722218725854067e-14 1.1020512482868402e-14 -2.7506186579930925e-15 ;
	setAttr -k on ".w0";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "11074312-A84A-666C-0D8A-0EA19FCD72E6";
	setAttr -s 10 ".lnk";
	setAttr -s 10 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "E6085C29-DC41-DB5B-9028-2BAE4B8E1FCD";
	setAttr ".cdl" 1;
	setAttr -s 2 ".dli[1]"  1;
	setAttr -s 2 ".dli";
createNode displayLayer -n "defaultLayer";
	rename -uid "2644BC56-2D4B-C243-CAB4-12A6779B6A3C";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "968C43DE-7C41-6C93-BBD2-60B21B7EFE90";
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
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 465\n                -height 305\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n"
		+ "            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n"
		+ "            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 465\n            -height 305\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n"
		+ "                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n"
		+ "                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n"
		+ "                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 465\n                -height 304\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n"
		+ "            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n"
		+ "            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n"
		+ "            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 465\n            -height 304\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"all\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n"
		+ "                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 1\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n"
		+ "                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n"
		+ "                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 465\n                -height 304\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n"
		+ "            -useInteractiveMode 0\n            -displayLights \"all\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n"
		+ "            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 465\n            -height 304\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"all\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 1\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n"
		+ "                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 0\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 0\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 1\n                -captureSequenceNumber -1\n"
		+ "                -width 936\n                -height 654\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"all\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 0\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 0\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 1\n            -captureSequenceNumber -1\n            -width 936\n            -height 654\n"
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
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"all\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 0\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 0\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 1\\n    -captureSequenceNumber -1\\n    -width 936\\n    -height 654\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"all\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 0\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 0\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 1\\n    -captureSequenceNumber -1\\n    -width 936\\n    -height 654\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 100 -size 500 -divisions 2 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "202FA499-554B-8902-6993-43AC0CBCE9B0";
	setAttr ".b" -type "string" "playbackOptions -min -24 -max 400 -ast -24 -aet 400 ";
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
		"CombotRN" 4
		2 "|Combot:Geometry|Combot:Combot_LeftArm_01|Combot:Combot_LeftArm_01Shape" 
		"visibility" " -k 0 1"
		2 "|Combot:Geometry|Combot:Combot_RightArm_02|Combot:Combot_RightArm_0Shape2" 
		"visibility" " -k 0 1"
		3 "Rig:file4.outTransparency" "Rig:MatAUG_Legs01.transparency" ""
		5 4 "CombotRN" "Combot:lambert4SG.dagSetMembers" "CombotRN.placeHolderList[1]" 
		""
		"CombotRN" 412
		2 "|Rig:Controls|Rig:RootMotion_Control" "translate" " -type \"double3\" 33.33333333333330017 0 33.33333333333330017"
		
		2 "|Rig:Controls|Rig:RootMotion_Control" "translateX" " -av"
		2 "|Rig:Controls|Rig:RootMotion_Control" "translateY" " -av"
		2 "|Rig:Controls|Rig:RootMotion_Control" "translateZ" " -av"
		2 "|Rig:Controls|Rig:RootMotion_Control" "rotate" " -type \"double3\" 0 29.99999999999997868 0"
		
		2 "|Rig:Controls|Rig:RootMotion_Control" "rotateX" " -av"
		2 "|Rig:Controls|Rig:RootMotion_Control" "rotateY" " -av"
		2 "|Rig:Controls|Rig:RootMotion_Control" "rotateZ" " -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:RIghtFoot_Control" "translate" 
		" -type \"double3\" 3.1541208860754848 4.29651576661793744 -38.13608571234892963"
		
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:RIghtFoot_Control" "translateX" 
		" -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:RIghtFoot_Control" "translateY" 
		" -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:RIghtFoot_Control" "translateZ" 
		" -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:RIghtFoot_Control" "rotate" " -type \"double3\" 19.03120298653747966 -6.74866972218058425 -22.49580426837157887"
		
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:RIghtFoot_Control" "rotateX" 
		" -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:RIghtFoot_Control" "rotateY" 
		" -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:RIghtFoot_Control" "rotateZ" 
		" -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:RIghtFoot_Control|Rig:RightToes_Control" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:RIghtFoot_Control|Rig:RightToes_Control" 
		"translateX" " -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:RIghtFoot_Control|Rig:RightToes_Control" 
		"translateY" " -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:RIghtFoot_Control|Rig:RightToes_Control" 
		"translateZ" " -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:RIghtFoot_Control|Rig:RightToes_Control" 
		"rotate" " -type \"double3\" -27.58769939343054745 0 0"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:RIghtFoot_Control|Rig:RightToes_Control" 
		"rotateX" " -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:RIghtFoot_Control|Rig:RightToes_Control" 
		"rotateY" " -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:RIghtFoot_Control|Rig:RightToes_Control" 
		"rotateZ" " -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:RIghtFoot_Control|Rig:nurbsCircle1" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:RIghtFoot_Control|Rig:nurbsCircle1" 
		"translateX" " -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:RIghtFoot_Control|Rig:nurbsCircle1" 
		"translateY" " -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:RIghtFoot_Control|Rig:nurbsCircle1" 
		"translateZ" " -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:RIghtFoot_Control|Rig:nurbsCircle1" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:RIghtFoot_Control|Rig:nurbsCircle1" 
		"rotateX" " -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:RIghtFoot_Control|Rig:nurbsCircle1" 
		"rotateY" " -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:RIghtFoot_Control|Rig:nurbsCircle1" 
		"rotateZ" " -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftFoot_Control" "translate" 
		" -type \"double3\" -0.57776991273455591 36.26484131035993386 -15.85190686036239782"
		
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftFoot_Control" "translateX" 
		" -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftFoot_Control" "translateY" 
		" -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftFoot_Control" "translateZ" 
		" -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftFoot_Control" "rotate" " -type \"double3\" 83.9647895324618645 1.88541171597802015 14.07600804062530919"
		
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftFoot_Control" "rotateX" " -av"
		
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftFoot_Control" "rotateY" " -av"
		
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftFoot_Control" "rotateZ" " -av"
		
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftFoot_Control|Rig:LeftToes_Control" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftFoot_Control|Rig:LeftToes_Control" 
		"translateX" " -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftFoot_Control|Rig:LeftToes_Control" 
		"translateY" " -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftFoot_Control|Rig:LeftToes_Control" 
		"translateZ" " -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftFoot_Control|Rig:LeftToes_Control" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftFoot_Control|Rig:LeftToes_Control" 
		"rotateX" " -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftFoot_Control|Rig:LeftToes_Control" 
		"rotateY" " -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftFoot_Control|Rig:LeftToes_Control" 
		"rotateZ" " -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftFoot_Control|Rig:LeftKnee_Control" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftFoot_Control|Rig:LeftKnee_Control" 
		"translateX" " -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftFoot_Control|Rig:LeftKnee_Control" 
		"translateY" " -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftFoot_Control|Rig:LeftKnee_Control" 
		"translateZ" " -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftFoot_Control|Rig:LeftKnee_Control" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftFoot_Control|Rig:LeftKnee_Control" 
		"rotateX" " -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftFoot_Control|Rig:LeftKnee_Control" 
		"rotateY" " -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftFoot_Control|Rig:LeftKnee_Control" 
		"rotateZ" " -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control" "translate" " -type \"double3\" 0 -1.81581080769900671 2.99352915143832465"
		
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control" "translateX" " -av"
		
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control" "translateY" " -av"
		
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control" "translateZ" " -av"
		
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control" "rotate" " -type \"double3\" 35.48074249056862328 1.74495204513200886 -4.44751615942953649"
		
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control" "rotateX" " -av"
		
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control" "rotateY" " -av"
		
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control" "rotateZ" " -av"
		
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control" 
		"translateX" " -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control" 
		"translateY" " -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control" 
		"translateZ" " -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control" 
		"rotate" " -type \"double3\" 0 3.25925587403921124 0"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control" 
		"rotateX" " -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control" 
		"rotateY" " -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control" 
		"rotateZ" " -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control" 
		"translateX" " -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control" 
		"translateY" " -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control" 
		"translateZ" " -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:LeftClav_Control" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:LeftClav_Control" 
		"translateX" " -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:LeftClav_Control" 
		"translateY" " -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:LeftClav_Control" 
		"translateZ" " -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:LeftClav_Control" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:LeftClav_Control" 
		"rotateX" " -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:LeftClav_Control" 
		"rotateY" " -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:LeftClav_Control" 
		"rotateZ" " -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:RightClav_Control" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:RightClav_Control" 
		"translateX" " -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:RightClav_Control" 
		"translateY" " -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:RightClav_Control" 
		"translateZ" " -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:RightClav_Control" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:RightClav_Control" 
		"rotateX" " -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:RightClav_Control" 
		"rotateY" " -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:RightClav_Control" 
		"rotateZ" " -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:Neck_Control" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:Neck_Control" 
		"translateX" " -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:Neck_Control" 
		"translateY" " -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:Neck_Control" 
		"translateZ" " -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:Neck_Control" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:Neck_Control" 
		"rotateX" " -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:Neck_Control" 
		"rotateY" " -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:Neck_Control" 
		"rotateZ" " -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:Neck_Control|Rig:Head_Control" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:Neck_Control|Rig:Head_Control" 
		"translateX" " -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:Neck_Control|Rig:Head_Control" 
		"translateY" " -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:Neck_Control|Rig:Head_Control" 
		"translateZ" " -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:Neck_Control|Rig:Head_Control" 
		"rotate" " -type \"double3\" -8.26891728873357401 -4.07407566076340011 5.89634985515435961"
		
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:Neck_Control|Rig:Head_Control" 
		"rotateX" " -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:Neck_Control|Rig:Head_Control" 
		"rotateY" " -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:Neck_Control|Rig:Head_Control" 
		"rotateZ" " -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:LeftShoulder_Control" 
		"translate" " -type \"double3\" 62.01936282148928825 0.00031204268347551078 3.4604225783496645e-05"
		
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:LeftShoulder_Control" 
		"translateX" " -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:LeftShoulder_Control" 
		"translateY" " -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:LeftShoulder_Control" 
		"translateZ" " -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:LeftShoulder_Control" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:LeftShoulder_Control" 
		"rotateX" " -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:LeftShoulder_Control" 
		"rotateY" " -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:LeftShoulder_Control" 
		"rotateZ" " -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:RightShoulder_Control" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:RightShoulder_Control" 
		"translateX" " -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:RightShoulder_Control" 
		"translateY" " -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:RightShoulder_Control" 
		"translateZ" " -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:RightShoulder_Control" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:RightShoulder_Control" 
		"rotateX" " -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:RightShoulder_Control" 
		"rotateY" " -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:RightShoulder_Control" 
		"rotateZ" " -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:RightHand_Control" "translate" 
		" -type \"double3\" 16.49800893648481548 -33.45266036831439749 7.57438563944656806"
		
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:RightHand_Control" "translateX" 
		" -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:RightHand_Control" "translateY" 
		" -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:RightHand_Control" "translateZ" 
		" -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:RightHand_Control" "rotate" " -type \"double3\" 0 60.13521143010456882 0"
		
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:RightHand_Control" "rotateX" 
		" -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:RightHand_Control" "rotateY" 
		" -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:RightHand_Control" "rotateZ" 
		" -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:RightHand_Control" "Grip" " -k 1"
		
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftHand_Control" "translate" 
		" -type \"double3\" -12.55100532195845986 9.08546201522913144 55.30470214197716672"
		
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
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftElbow_Control" "rotate" " -type \"double3\" 0 0 0"
		
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftElbow_Control" "rotateX" 
		" -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftElbow_Control" "rotateY" 
		" -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftElbow_Control" "rotateZ" 
		" -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:RightElbow_Control" "translate" 
		" -type \"double3\" -268.81336534057106746 0 0"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:RightElbow_Control" "translateX" 
		" -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:RightElbow_Control" "translateY" 
		" -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:RightElbow_Control" "translateZ" 
		" -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:RightElbow_Control" "rotate" 
		" -type \"double3\" 0 0 0"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:RightElbow_Control" "rotateX" 
		" -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:RightElbow_Control" "rotateY" 
		" -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:RightElbow_Control" "rotateZ" 
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
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:Skeleton|Rig:RootMotion_Skel|Rig:Hips_Skel|Rig:Spine1_Skel|Rig:Spine2_Skel|Rig:Neck_Skel" 
		"rotateX" " -av"
		2 "|Rig:Skeleton|Rig:RootMotion_Skel|Rig:Hips_Skel|Rig:Spine1_Skel|Rig:Spine2_Skel|Rig:Neck_Skel" 
		"rotateY" " -av"
		2 "|Rig:Skeleton|Rig:RootMotion_Skel|Rig:Hips_Skel|Rig:Spine1_Skel|Rig:Spine2_Skel|Rig:Neck_Skel" 
		"rotateZ" " -av"
		2 "|Rig:Skeleton|Rig:RootMotion_Skel|Rig:Hips_Skel|Rig:Spine1_Skel|Rig:Spine2_Skel|Rig:Neck_Skel|Rig:Head_Skel" 
		"rotate" " -type \"double3\" -8.26891728873362375 -4.07407566076340988 5.89634985515437737"
		
		2 "|Rig:Skeleton|Rig:RootMotion_Skel|Rig:Hips_Skel|Rig:Spine1_Skel|Rig:Spine2_Skel|Rig:Neck_Skel|Rig:Head_Skel" 
		"rotateX" " -av"
		2 "|Rig:Skeleton|Rig:RootMotion_Skel|Rig:Hips_Skel|Rig:Spine1_Skel|Rig:Spine2_Skel|Rig:Neck_Skel|Rig:Head_Skel" 
		"rotateY" " -av"
		2 "|Rig:Skeleton|Rig:RootMotion_Skel|Rig:Hips_Skel|Rig:Spine1_Skel|Rig:Spine2_Skel|Rig:Neck_Skel|Rig:Head_Skel" 
		"rotateZ" " -av"
		2 "|Rig:Skeleton|Rig:RootMotion_Skel|Rig:Hips_Skel|Rig:Spine1_Skel|Rig:Spine2_Skel|Rig:RightClav_Skel|Rig:RightShoulder_Skel|Rig:RightUpperArm_Skel" 
		"rotate" " -type \"double3\" -45.13197366810523192 -43.74843293381244536 39.818258408924045"
		
		2 "|Rig:Skeleton|Rig:RootMotion_Skel|Rig:Hips_Skel|Rig:Spine1_Skel|Rig:Spine2_Skel|Rig:RightClav_Skel|Rig:RightShoulder_Skel|Rig:RightUpperArm_Skel|Rig:RightLowerArm_Skel" 
		"rotate" " -type \"double3\" -37.31727982048569459 -0.001071598425982671 0.002068758795796473"
		
		2 "|Rig:Skeleton|Rig:RootMotion_Skel|Rig:Hips_Skel|Rig:Spine1_Skel|Rig:Spine2_Skel|Rig:RightClav_Skel|Rig:RightShoulder_Skel|Rig:RightUpperArm_Skel|Rig:RightLowerArm_Skel|Rig:RightHand_Skel" 
		"rotate" " -type \"double3\" -49.39247036923048739 3.48978082138480783 -1.06093467922656415"
		
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
		"rotate" " -type \"double3\" -55.6360560806019393 -27.02512747293689088 31.64572109361096608"
		
		2 "|Rig:Skeleton|Rig:RootMotion_Skel|Rig:Hips_Skel|Rig:Spine1_Skel|Rig:Spine2_Skel|Rig:LeftClav_Skel|Rig:LeftShoulder_Skel|Rig:LeftUpperArm_Skel|Rig:LeftLowerArm_Skel" 
		"rotate" " -type \"double3\" -36.36376285006454623 -0.0010516380601956711 0.0020302259121488713"
		
		2 "|Rig:Skeleton|Rig:RootMotion_Skel|Rig:Hips_Skel|Rig:Spine1_Skel|Rig:Spine2_Skel|Rig:LeftClav_Skel|Rig:LeftShoulder_Skel|Rig:LeftUpperArm_Skel|Rig:LeftLowerArm_Skel|Rig:LeftHand_Skel" 
		"rotate" " -type \"double3\" -157.64434940829801235 73.14146176644376851 -154.97275905032938681"
		
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
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:RIghtFoot_Control|Rig:RightToes_Control.translateX" 
		"CombotRN.placeHolderList[25]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:RIghtFoot_Control|Rig:RightToes_Control.translateY" 
		"CombotRN.placeHolderList[26]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:RIghtFoot_Control|Rig:RightToes_Control.translateZ" 
		"CombotRN.placeHolderList[27]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:RIghtFoot_Control|Rig:RightToes_Control.visibility" 
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
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:RIghtFoot_Control|Rig:nurbsCircle1.rotateX" 
		"CombotRN.placeHolderList[35]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:RIghtFoot_Control|Rig:nurbsCircle1.rotateY" 
		"CombotRN.placeHolderList[36]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:RIghtFoot_Control|Rig:nurbsCircle1.rotateZ" 
		"CombotRN.placeHolderList[37]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:RIghtFoot_Control|Rig:nurbsCircle1.visibility" 
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
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftFoot_Control|Rig:LeftKnee_Control.rotateX" 
		"CombotRN.placeHolderList[65]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftFoot_Control|Rig:LeftKnee_Control.rotateY" 
		"CombotRN.placeHolderList[66]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftFoot_Control|Rig:LeftKnee_Control.rotateZ" 
		"CombotRN.placeHolderList[67]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftFoot_Control|Rig:LeftKnee_Control.visibility" 
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
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control.translateX" 
		"CombotRN.placeHolderList[85]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control.translateY" 
		"CombotRN.placeHolderList[86]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control.translateZ" 
		"CombotRN.placeHolderList[87]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control.visibility" 
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
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control.translateX" 
		"CombotRN.placeHolderList[95]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control.translateY" 
		"CombotRN.placeHolderList[96]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control.translateZ" 
		"CombotRN.placeHolderList[97]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control.scaleX" 
		"CombotRN.placeHolderList[98]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control.scaleY" 
		"CombotRN.placeHolderList[99]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control.scaleZ" 
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
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:Neck_Control.translateX" 
		"CombotRN.placeHolderList[125]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:Neck_Control.translateY" 
		"CombotRN.placeHolderList[126]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:Neck_Control.translateZ" 
		"CombotRN.placeHolderList[127]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:Neck_Control.visibility" 
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
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:Neck_Control|Rig:Head_Control.translateX" 
		"CombotRN.placeHolderList[135]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:Neck_Control|Rig:Head_Control.translateY" 
		"CombotRN.placeHolderList[136]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:Neck_Control|Rig:Head_Control.translateZ" 
		"CombotRN.placeHolderList[137]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:Neck_Control|Rig:Head_Control.visibility" 
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
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftElbow_Control.rotateX" 
		"CombotRN.placeHolderList[187]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftElbow_Control.rotateY" 
		"CombotRN.placeHolderList[188]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftElbow_Control.rotateZ" 
		"CombotRN.placeHolderList[189]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftElbow_Control.scaleY" 
		"CombotRN.placeHolderList[190]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftElbow_Control.scaleX" 
		"CombotRN.placeHolderList[191]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftElbow_Control.scaleZ" 
		"CombotRN.placeHolderList[192]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftElbow_Control.visibility" 
		"CombotRN.placeHolderList[193]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:RightElbow_Control.translateX" 
		"CombotRN.placeHolderList[194]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:RightElbow_Control.translateY" 
		"CombotRN.placeHolderList[195]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:RightElbow_Control.translateZ" 
		"CombotRN.placeHolderList[196]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:RightElbow_Control.rotateX" 
		"CombotRN.placeHolderList[197]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:RightElbow_Control.rotateY" 
		"CombotRN.placeHolderList[198]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:RightElbow_Control.rotateZ" 
		"CombotRN.placeHolderList[199]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:RightElbow_Control.scaleZ" 
		"CombotRN.placeHolderList[200]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:RightElbow_Control.scaleX" 
		"CombotRN.placeHolderList[201]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:RightElbow_Control.scaleY" 
		"CombotRN.placeHolderList[202]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:RightElbow_Control.visibility" 
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
	setAttr -s 6 ".ac";
	setAttr ".ac[0].acn" -type "string" "Run";
	setAttr ".ac[0].acs" 1;
	setAttr ".ac[0].ace" 24;
	setAttr ".ac[1].acn" -type "string" "Corner_Left";
	setAttr ".ac[1].acs" 49;
	setAttr ".ac[1].ace" 72;
	setAttr ".ac[2].acn" -type "string" "Corner_Right";
	setAttr ".ac[2].acs" 96;
	setAttr ".ac[2].ace" 120;
	setAttr ".ac[3].acn" -type "string" "Turn_Left";
	setAttr ".ac[3].acs" 145;
	setAttr ".ac[3].ace" 168;
	setAttr ".ac[4].acn" -type "string" "Turn_Right";
	setAttr ".ac[4].acs" 193;
	setAttr ".ac[4].ace" 216;
	setAttr ".ac[5].acn" -type "string" "Run_Stop";
	setAttr ".ac[5].acs" 255;
	setAttr ".ac[5].ace" 264;
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
	setAttr ".exp" -type "string" "/Users/briancollins/Unity/DropZone/Assets/Characters/Combot";
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
	setAttr ".fn[0]" -type "string" "/Users/briancollins/Unity/DropZone/MayaSource/equipment/AssaultRifle.ma";
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
createNode animCurveTU -n "RootMotion_Control_visibility";
	rename -uid "B859C7C4-5F45-C22A-F492-C084922F4EAE";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 1 24 1 36 1 48 1 72 1 84 1 96 1 108 1
		 112 1 120 1 144 1 216 1 240 1 255 1 264 1 288 1 312 1;
	setAttr -s 17 ".kit[13:16]"  1 2 2 2;
	setAttr -s 17 ".kot[13:16]"  5 2 2 2;
	setAttr -s 17 ".kix[13:16]"  1 1 1 1;
	setAttr -s 17 ".kiy[13:16]"  0 0 0 0;
createNode animCurveTL -n "RootMotion_Control_translateX";
	rename -uid "861597DA-5A4B-ADC1-BA4A-04AF80BC8055";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 24 0 36 0 48 0 60 0 72 100 84 0 96 0
		 104 0 108 -9.3749889172603051 112 -20 120 -100 144 0 216 0 240 0 255 0 264 0 288 0
		 312 0;
	setAttr -s 19 ".kit[15:18]"  1 2 2 2;
	setAttr -s 19 ".kot[15:18]"  1 2 2 2;
	setAttr -s 19 ".kix[15:18]"  1 1 1 1;
	setAttr -s 19 ".kiy[15:18]"  0 0 0 0;
	setAttr -s 19 ".kox[15:18]"  1 1 1 1;
	setAttr -s 19 ".koy[15:18]"  0 0 0 0;
createNode animCurveTL -n "RootMotion_Control_translateY";
	rename -uid "3297F076-6242-67EE-A9A3-DDA8E62D9B89";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 24 0 36 0 48 0 72 0 84 0 96 0 108 0
		 112 0 120 0 144 0 216 0 240 0 255 0 264 0 288 0 312 0;
	setAttr -s 17 ".kit[13:16]"  1 2 2 2;
	setAttr -s 17 ".kot[13:16]"  1 2 2 2;
	setAttr -s 17 ".kix[13:16]"  1 1 1 1;
	setAttr -s 17 ".kiy[13:16]"  0 0 0 0;
	setAttr -s 17 ".kox[13:16]"  1 1 1 1;
	setAttr -s 17 ".koy[13:16]"  0 0 0 0;
createNode animCurveTL -n "RootMotion_Control_translateZ";
	rename -uid "D16679F8-0343-3157-35F2-108F30634D2B";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 24 250 36 0 48 0 60 100 72 100 84 0
		 96 0 104 100 108 100 112 100 120 100 144 0 216 0 240 0 255 0 264 100;
	setAttr -s 17 ".kit[15:16]"  1 2;
	setAttr -s 17 ".kot[15:16]"  1 2;
	setAttr -s 17 ".kix[15:16]"  0.0037499736063182354 0.0037499736063182354;
	setAttr -s 17 ".kiy[15:16]"  0.99999290704727173 0.9999929666519165;
	setAttr -s 17 ".kox[15:16]"  0.0037499736063182354 1;
	setAttr -s 17 ".koy[15:16]"  0.99999290704727173 0;
createNode animCurveTA -n "RootMotion_Control_rotateX";
	rename -uid "4BA46BAE-9548-4076-8B83-CA8C0570D1C8";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 24 0 36 0 48 0 72 0 84 0 96 0 108 0
		 112 0 120 0 144 0 216 0 240 0 255 0 264 0 288 0 312 0;
	setAttr -s 17 ".kit[13:16]"  1 2 2 2;
	setAttr -s 17 ".kot[13:16]"  1 2 2 2;
	setAttr -s 17 ".kix[13:16]"  1 1 1 1;
	setAttr -s 17 ".kiy[13:16]"  0 0 0 0;
	setAttr -s 17 ".kox[13:16]"  1 1 1 1;
	setAttr -s 17 ".koy[13:16]"  0 0 0 0;
createNode animCurveTA -n "RootMotion_Control_rotateY";
	rename -uid "A942B18E-9641-00C3-7B82-DF8F0B9D2485";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 24 0 36 0 48 0 56 0 64 90 72 90 84 0
		 96 0 108 -45 112 -90 120 -90 144 0 216 0 240 0 255 0 264 0 288 0 312 0;
	setAttr -s 19 ".kit[15:18]"  1 2 2 2;
	setAttr -s 19 ".kot[15:18]"  1 2 2 2;
	setAttr -s 19 ".kix[15:18]"  1 1 1 1;
	setAttr -s 19 ".kiy[15:18]"  0 0 0 0;
	setAttr -s 19 ".kox[15:18]"  1 1 1 1;
	setAttr -s 19 ".koy[15:18]"  0 0 0 0;
createNode animCurveTA -n "RootMotion_Control_rotateZ";
	rename -uid "7F60FC1B-A843-D34D-831E-F0A7E5778697";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 24 0 36 0 48 0 72 0 84 0 96 0 108 0
		 112 0 120 0 144 0 216 0 240 0 255 0 264 0 288 0 312 0;
	setAttr -s 17 ".kit[13:16]"  1 2 2 2;
	setAttr -s 17 ".kot[13:16]"  1 2 2 2;
	setAttr -s 17 ".kix[13:16]"  1 1 1 1;
	setAttr -s 17 ".kiy[13:16]"  0 0 0 0;
	setAttr -s 17 ".kox[13:16]"  1 1 1 1;
	setAttr -s 17 ".koy[13:16]"  0 0 0 0;
createNode animCurveTU -n "RootMotion_Control_scaleX";
	rename -uid "1136713A-5340-8F03-9D75-979B80AC0B11";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 1 24 1 36 1 48 1 72 1 84 1 96 1 108 1
		 112 1 120 1 144 1 216 1 240 1 255 1 264 1 288 1 312 1;
	setAttr -s 17 ".kit[13:16]"  1 2 2 2;
	setAttr -s 17 ".kot[13:16]"  1 2 2 2;
	setAttr -s 17 ".kix[13:16]"  1 1 1 1;
	setAttr -s 17 ".kiy[13:16]"  0 0 0 0;
	setAttr -s 17 ".kox[13:16]"  1 1 1 1;
	setAttr -s 17 ".koy[13:16]"  0 0 0 0;
createNode animCurveTU -n "RootMotion_Control_scaleY";
	rename -uid "80F815B6-2F49-8B0F-EF6E-908D62A59C70";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 1 24 1 36 1 48 1 72 1 84 1 96 1 108 1
		 112 1 120 1 144 1 216 1 240 1 255 1 264 1 288 1 312 1;
	setAttr -s 17 ".kit[13:16]"  1 2 2 2;
	setAttr -s 17 ".kot[13:16]"  1 2 2 2;
	setAttr -s 17 ".kix[13:16]"  1 1 1 1;
	setAttr -s 17 ".kiy[13:16]"  0 0 0 0;
	setAttr -s 17 ".kox[13:16]"  1 1 1 1;
	setAttr -s 17 ".koy[13:16]"  0 0 0 0;
createNode animCurveTU -n "RootMotion_Control_scaleZ";
	rename -uid "2585A41D-D74E-5535-60F5-A0A2D3B880B3";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 1 24 1 36 1 48 1 72 1 84 1 96 1 108 1
		 112 1 120 1 144 1 216 1 240 1 255 1 264 1 288 1 312 1;
	setAttr -s 17 ".kit[13:16]"  1 2 2 2;
	setAttr -s 17 ".kot[13:16]"  1 2 2 2;
	setAttr -s 17 ".kix[13:16]"  1 1 1 1;
	setAttr -s 17 ".kiy[13:16]"  0 0 0 0;
	setAttr -s 17 ".kox[13:16]"  1 1 1 1;
	setAttr -s 17 ".koy[13:16]"  0 0 0 0;
createNode animCurveTU -n "RIghtFoot_Control_visibility";
	rename -uid "A9409731-2740-F2DF-5771-E6949870E1D1";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 63 ".ktv[0:62]"  0 1 9 1 12 1 15 1 18 1 21 1 24 1 36 1 39 1
		 42 1 45 1 48 1 60 1 63 1 66 1 69 1 72 1 84 1 87 1 90 1 93 1 96 1 117 1 120 1 132 1
		 135 1 138 1 141 1 144 1 156 1 159 1 162 1 165 1 168 1 180 1 183 1 186 1 189 1 192 1
		 204 1 207 1 210 1 213 1 216 1 228 1 231 1 234 1 237 1 240 1 252 1 255 1 261 1 264 1
		 276 1 279 1 282 1 285 1 288 1 300 1 303 1 306 1 309 1 312 1;
	setAttr -s 63 ".kit[0:62]"  1 1 9 9 9 9 1 9 
		9 9 9 1 1 18 18 18 1 9 9 9 9 1 9 1 9 
		9 9 9 1 9 9 9 9 1 9 9 9 9 1 9 9 9 
		9 1 9 9 9 9 1 9 1 1 1 9 9 9 9 1 9 
		9 9 9 1;
	setAttr -s 63 ".kot[12:62]"  1 18 18 18 5 5 5 5 
		5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 
		5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 
		5 5 5 5 5 5 5 5 5;
	setAttr -s 63 ".kix[0:62]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1;
	setAttr -s 63 ".kiy[0:62]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0;
	setAttr -s 63 ".kox[12:62]"  1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 63 ".koy[12:62]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "RIghtFoot_Control_translateX";
	rename -uid "51B67202-404A-3690-6E90-3699623F5F38";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 88 ".ktv[0:87]"  0 9.6637664525837721 3 10 6 10 9 10 12 14.733589074636598
		 15 9.9053451900894842 18 -1.4977510618003933 21 -3.3242188563134434 24 9.6637664525837721
		 30 0 36 12.165914735978561 39 9.9053451900894842 42 6.3268643280627685 45 0 48 0
		 54 0 57 1.1696652946026243 60 19.628649411617165 63 -16.224076054563408 66 -23.556947403282436
		 69 -22.3330523289371 72 0 78 0 84 12.165914735978561 87 9.9053451900894842 90 6.3268643280627685
		 93 0 96 0 100 -21.493812965794294 103 -36.091579399893334 104 -43.410939370978056
		 105 -42.263109096461591 106 -41.093226995216824 108 -38.656354099648354 109 -36.794647278503483
		 110 -34.423717537969011 111 -30.480890323407657 112 -26.179646081689089 113 -28.159837172839794
		 117 0 120 0 126 0 132 12.165914735978561 135 9.9053451900894842 138 6.3268643280627685
		 141 0 144 0 150 0 156 12.165914735978561 159 9.9053451900894842 162 6.3268643280627685
		 165 0 168 0 174 0 180 12.165914735978561 183 9.9053451900894842 186 6.3268643280627685
		 189 0 192 0 198 0 204 12.165914735978561 207 9.9053451900894842 210 6.3268643280627685
		 213 0 216 0 222 0 228 12.165914735978561 231 9.9053451900894842 234 6.3268643280627685
		 237 0 240 0 246 0 252 12.165914735978561 255 0 261 2.6135056899795472 264 2.6135056899795472
		 270 0 276 12.165914735978561 279 9.9053451900894842 282 6.3268643280627685 285 0
		 288 0 294 0 300 12.165914735978561 303 9.9053451900894842 306 6.3268643280627685
		 309 0 312 0;
	setAttr -s 88 ".kit[0:87]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 1 18 18 1 18 18 18 1 18 18 18 
		18 18 1 18 18 18 18 18 18 18 18 18 18 18 18 1 18 
		18 18 18 18 1 18 18 18 18 18 1 18 18 18 18 18 1 
		18 18 18 18 18 1 18 18 18 18 18 1 18 18 1 1 1 
		18 18 18 18 18 1 18 18 18 18 18 1;
	setAttr -s 88 ".kot[0:87]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 1 18 18 1 18 18 18 1 18 18 18 
		18 18 1 18 18 18 18 18 18 18 18 18 18 18 18 1 18 
		18 18 18 18 1 18 18 18 18 18 1 18 18 18 18 18 1 
		18 18 18 18 18 1 18 18 18 18 18 1 18 18 1 1 1 
		18 18 18 18 18 1 18 18 18 18 18 1;
	setAttr -s 88 ".kix[0:87]"  1 1 1 1 1 0.015400475822389126 0.022806767374277115 
		1 1 1 1 0.042775992304086685 0.025230862200260162 1 1 1 0.035600148141384125 0.024999421089887619 
		0.0057888701558113098 1 0.034024599939584732 1 1 1 0.042775992304086685 0.025230862200260162 
		1 1 0.0080810263752937317 0.0076041985303163528 1 0.035931643098592758 0.034636396914720535 
		0.029067084193229675 0.019684504717588425 0.013197567313909531 0.010107720270752907 
		1 1 1 1 1 1 0.042775992304086685 0.025230862200260162 1 1 1 1 0.042775992304086685 
		0.025230862200260162 1 1 1 1 0.042775992304086685 0.025230862200260162 1 1 1 1 0.042775992304086685 
		0.025230862200260162 1 1 1 1 0.042775992304086685 0.025230862200260162 1 1 1 1 1 
		1 1 1 1 0.042775992304086685 0.025230862200260162 1 1 1 1 0.042775992304086685 0.025230862200260162 
		1 1;
	setAttr -s 88 ".kiy[0:87]"  0 0 0 0 0 -0.99988144636154175 -0.9997398853302002 
		0 0 0 0 -0.99908465147018433 -0.99968159198760986 0 0 0 0.9993661642074585 -0.99968749284744263 
		-0.99998319149017334 0 0.99942100048065186 0 0 0 -0.99908465147018433 -0.99968159198760986 
		0 0 -0.99996733665466309 -0.99997109174728394 0 0.99935430288314819 0.99939996004104614 
		0.99957746267318726 0.99980628490447998 0.99991291761398315 0.99994897842407227 0 
		0 0 0 0 0 -0.99908465147018433 -0.99968159198760986 0 0 0 0 -0.99908465147018433 
		-0.99968159198760986 0 0 0 0 -0.99908465147018433 -0.99968159198760986 0 0 0 0 -0.99908465147018433 
		-0.99968159198760986 0 0 0 0 -0.99908465147018433 -0.99968159198760986 0 0 0 0 0 
		0 0 0 0 -0.99908465147018433 -0.99968159198760986 0 0 0 0 -0.99908465147018433 -0.99968159198760986 
		0 0;
	setAttr -s 88 ".kox[0:87]"  1 1 1 1 1 0.015400475822389126 0.022806767374277115 
		1 1 1 1 0.042775992304086685 0.025230862200260162 1 1 1 0.035600148141384125 0.024999421089887619 
		0.0057888701558113098 1 0.034024599939584732 1 1 1 0.042775992304086685 0.025230862200260162 
		1 1 0.0080810263752937317 0.0076041980646550655 1 0.035931643098592758 0.034636396914720535 
		0.029067086055874825 0.019684502854943275 0.013197568245232105 0.010107720270752907 
		1 1 1 1 1 1 0.042775992304086685 0.025230862200260162 1 1 1 1 0.042775992304086685 
		0.025230862200260162 1 1 1 1 0.042775992304086685 0.025230862200260162 1 1 1 1 0.042775992304086685 
		0.025230862200260162 1 1 1 1 0.042775992304086685 0.025230862200260162 1 1 1 1 1 
		1 1 1 1 0.042775992304086685 0.025230862200260162 1 1 1 1 0.042775992304086685 0.025230862200260162 
		1 1;
	setAttr -s 88 ".koy[0:87]"  0 0 0 0 0 -0.99988144636154175 -0.9997398853302002 
		0 0 0 0 -0.99908465147018433 -0.99968159198760986 0 0 0 0.9993661642074585 -0.99968749284744263 
		-0.99998319149017334 0 0.99942100048065186 0 0 0 -0.99908465147018433 -0.99968159198760986 
		0 0 -0.99996739625930786 -0.99997109174728394 0 0.99935430288314819 0.99939996004104614 
		0.99957746267318726 0.99980628490447998 0.99991291761398315 0.99994897842407227 0 
		0 0 0 0 0 -0.99908465147018433 -0.99968159198760986 0 0 0 0 -0.99908465147018433 
		-0.99968159198760986 0 0 0 0 -0.99908465147018433 -0.99968159198760986 0 0 0 0 -0.99908465147018433 
		-0.99968159198760986 0 0 0 0 -0.99908465147018433 -0.99968159198760986 0 0 0 0 0 
		0 0 0 0 -0.99908465147018433 -0.99968159198760986 0 0 0 0 -0.99908465147018433 -0.99968159198760986 
		0 0;
createNode animCurveTL -n "RIghtFoot_Control_translateY";
	rename -uid "FAC91DCE-AA4F-6853-8043-0FA1E8295CE1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 102 ".ktv[0:101]"  0 12.310714705165175 3 1.0048075009618582
		 6 7.3685883403869568 9 22.668577354710308 12 45.94741809774856 15 48.541511693215604
		 18 47.333472153323598 21 35.774508541099969 24 12.310714705165175 27 1.0048075009618582
		 30 0 33 7.3685883403869568 36 15.682836642983016 39 26.087345119806464 42 35.866045507159853
		 45 36.280179707181667 48 24.785251690392478 51 1.0048075009618582 54 0 57 0 58 19.473653052439392
		 60 0 63 0 66 0 69 7.9163422888333415 72 7.0951226070563607 75 1.0048075009618582
		 78 0 81 7.3685883403869568 84 15.682836642983016 87 26.087345119806464 90 35.866045507159853
		 93 36.280179707181667 96 24.785251690392478 100 0 108 0 112 0 117 36.280179707181667
		 120 24.785251690392478 123 1.0048075009618582 126 0 129 7.3685883403869568 132 15.682836642983016
		 135 26.087345119806464 138 35.866045507159853 141 36.280179707181667 144 24.785251690392478
		 147 1.0048075009618582 150 0 153 7.3685883403869568 156 15.682836642983016 159 26.087345119806464
		 162 35.866045507159853 165 36.280179707181667 168 24.785251690392478 171 1.0048075009618582
		 174 0 177 7.3685883403869568 180 15.682836642983016 183 26.087345119806464 186 35.866045507159853
		 189 36.280179707181667 192 24.785251690392478 195 1.0048075009618582 198 0 201 7.3685883403869568
		 204 15.682836642983016 207 26.087345119806464 210 35.866045507159853 213 36.280179707181667
		 216 24.785251690392478 219 1.0048075009618582 222 0 225 7.3685883403869568 228 15.682836642983016
		 231 26.087345119806464 234 35.866045507159853 237 36.280179707181667 240 24.785251690392478
		 243 1.0048075009618582 246 0 249 7.3685883403869568 252 15.682836642983016 255 36.280179707181667
		 261 0 264 0 267 1.0048075009618582 270 0 273 7.3685883403869568 276 15.682836642983016
		 279 26.087345119806464 282 35.866045507159853 285 36.280179707181667 288 24.785251690392478
		 291 1.0048075009618582 294 0 297 7.3685883403869568 300 15.682836642983016 303 26.087345119806464
		 306 35.866045507159853 309 36.280179707181667 312 24.785251690392478;
	setAttr -s 102 ".kit[0:101]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 1 18 18 18 18 1 18 18 18 
		1 18 18 18 18 18 18 18 1 18 18 18 18 1 18 18 18 
		18 18 18 18 1 18 18 18 18 18 18 18 1 18 18 18 18 
		18 18 18 1 18 18 18 18 18 18 18 1 18 18 18 18 18 
		18 18 1 18 18 18 18 1 1 1 18 18 18 18 18 18 18 
		1 18 18 18 18 18 18 18 1;
	setAttr -s 102 ".kot[0:101]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 1 18 18 18 18 1 18 18 18 
		1 18 18 18 18 18 18 18 1 18 18 18 18 1 18 18 18 
		18 18 18 18 1 18 18 18 18 18 18 18 1 18 18 18 18 
		18 18 18 1 18 18 18 18 18 18 18 1 18 18 18 18 18 
		18 18 1 18 18 18 18 1 1 1 18 18 18 18 18 18 18 
		1 18 18 18 18 18 18 18 1;
	setAttr -s 102 ".kix[0:101]"  0.0071899816393852234 1 0.011539235711097717 
		0.0064801019616425037 0.016060058027505875 1 0.034470647573471069 0.0071380338631570339 
		0.0071899816393852234 0.04143170639872551 1 0.015938969328999519 0.01335439644753933 
		0.012385583482682705 0.10010611265897751 1 0.010172148235142231 0.04143170639872551 
		1 1 1 1 1 1 1 1 0.04143170639872551 1 0.015938969328999519 0.01335439644753933 0.012385583482682705 
		0.10010611265897751 1 0.010172148235142231 1 1 1 1 0.010172148235142231 0.04143170639872551 
		1 0.015938969328999519 0.01335439644753933 0.012385583482682705 0.10010611265897751 
		1 0.010172148235142231 0.04143170639872551 1 0.015938969328999519 0.01335439644753933 
		0.012385583482682705 0.10010611265897751 1 0.010172148235142231 0.04143170639872551 
		1 0.015938969328999519 0.01335439644753933 0.012385583482682705 0.10010611265897751 
		1 0.010172148235142231 0.04143170639872551 1 0.015938969328999519 0.01335439644753933 
		0.012385583482682705 0.10010611265897751 1 0.010172148235142231 0.04143170639872551 
		1 0.015938969328999519 0.01335439644753933 0.012385583482682705 0.10010611265897751 
		1 0.010172148235142231 0.04143170639872551 1 0.015938969328999519 0.0086467275395989418 
		1 0.010172148235142231 0.010172148235142231 1 1 0.015938969328999519 0.01335439644753933 
		0.012385583482682705 0.10010611265897751 1 0.010172148235142231 0.04143170639872551 
		1 0.015938969328999519 0.01335439644753933 0.012385583482682705 0.10010611265897751 
		1 0.010172148235142231;
	setAttr -s 102 ".kiy[0:101]"  -0.99997413158416748 0 0.99993342161178589 
		0.99997901916503906 0.99987101554870605 0 -0.99940568208694458 -0.99997448921203613 
		-0.99997413158416748 -0.99914133548736572 0 0.99987298250198364 0.99991083145141602 
		0.99992328882217407 0.9949766993522644 0 -0.99994832277297974 -0.99914133548736572 
		0 0 0 0 0 0 0 0 -0.99914133548736572 0 0.99987298250198364 0.99991083145141602 0.99992328882217407 
		0.9949766993522644 0 -0.99994832277297974 0 0 0 0 -0.99994832277297974 -0.99914133548736572 
		0 0.99987298250198364 0.99991083145141602 0.99992328882217407 0.9949766993522644 
		0 -0.99994832277297974 -0.99914133548736572 0 0.99987298250198364 0.99991083145141602 
		0.99992328882217407 0.9949766993522644 0 -0.99994832277297974 -0.99914133548736572 
		0 0.99987298250198364 0.99991083145141602 0.99992328882217407 0.9949766993522644 
		0 -0.99994832277297974 -0.99914133548736572 0 0.99987298250198364 0.99991083145141602 
		0.99992328882217407 0.9949766993522644 0 -0.99994832277297974 -0.99914133548736572 
		0 0.99987298250198364 0.99991083145141602 0.99992328882217407 0.9949766993522644 
		0 -0.99994832277297974 -0.99914133548736572 0 0.99987298250198364 0.99996256828308105 
		0 -0.99994832277297974 -0.99994832277297974 0 0 0.99987298250198364 0.99991083145141602 
		0.99992328882217407 0.9949766993522644 0 -0.99994832277297974 -0.99914133548736572 
		0 0.99987298250198364 0.99991083145141602 0.99992328882217407 0.9949766993522644 
		0 -0.99994832277297974;
	setAttr -s 102 ".kox[0:101]"  0.0071899816393852234 1 0.011539235711097717 
		0.0064801019616425037 0.016060058027505875 1 0.034470647573471069 0.0071380338631570339 
		0.0071899816393852234 0.04143170639872551 1 0.015938969328999519 0.01335439644753933 
		0.012385583482682705 0.10010611265897751 1 0.010172145441174507 0.04143170639872551 
		1 1 1 1 1 1 1 1 0.04143170639872551 1 0.015938969328999519 0.01335439644753933 0.012385583482682705 
		0.10010611265897751 1 0.010172145441174507 1 1 1 1 0.010172145441174507 0.04143170639872551 
		1 0.015938969328999519 0.01335439644753933 0.012385583482682705 0.10010611265897751 
		1 0.010172145441174507 0.04143170639872551 1 0.015938969328999519 0.01335439644753933 
		0.012385583482682705 0.10010611265897751 1 0.010172145441174507 0.04143170639872551 
		1 0.015938969328999519 0.01335439644753933 0.012385583482682705 0.10010611265897751 
		1 0.010172145441174507 0.04143170639872551 1 0.015938969328999519 0.01335439644753933 
		0.012385583482682705 0.10010611265897751 1 0.010172145441174507 0.04143170639872551 
		1 0.015938969328999519 0.01335439644753933 0.012385583482682705 0.10010611265897751 
		1 0.010172145441174507 0.04143170639872551 1 0.015938969328999519 0.0086467275395989418 
		1 0.010172145441174507 0.010172145441174507 1 1 0.015938969328999519 0.01335439644753933 
		0.012385583482682705 0.10010611265897751 1 0.010172145441174507 0.04143170639872551 
		1 0.015938969328999519 0.01335439644753933 0.012385583482682705 0.10010611265897751 
		1 0.010172145441174507;
	setAttr -s 102 ".koy[0:101]"  -0.99997413158416748 0 0.99993342161178589 
		0.99997901916503906 0.99987101554870605 0 -0.99940568208694458 -0.99997448921203613 
		-0.99997413158416748 -0.99914133548736572 0 0.99987298250198364 0.99991083145141602 
		0.99992328882217407 0.9949766993522644 0 -0.99994826316833496 -0.99914133548736572 
		0 0 0 0 0 0 0 0 -0.99914133548736572 0 0.99987298250198364 0.99991083145141602 0.99992328882217407 
		0.9949766993522644 0 -0.99994826316833496 0 0 0 0 -0.99994826316833496 -0.99914133548736572 
		0 0.99987298250198364 0.99991083145141602 0.99992328882217407 0.9949766993522644 
		0 -0.99994826316833496 -0.99914133548736572 0 0.99987298250198364 0.99991083145141602 
		0.99992328882217407 0.9949766993522644 0 -0.99994826316833496 -0.99914133548736572 
		0 0.99987298250198364 0.99991083145141602 0.99992328882217407 0.9949766993522644 
		0 -0.99994826316833496 -0.99914133548736572 0 0.99987298250198364 0.99991083145141602 
		0.99992328882217407 0.9949766993522644 0 -0.99994826316833496 -0.99914133548736572 
		0 0.99987298250198364 0.99991083145141602 0.99992328882217407 0.9949766993522644 
		0 -0.99994826316833496 -0.99914133548736572 0 0.99987298250198364 0.99996256828308105 
		0 -0.99994826316833496 -0.99994826316833496 0 0 0.99987298250198364 0.99991083145141602 
		0.99992328882217407 0.9949766993522644 0 -0.99994826316833496 -0.99914133548736572 
		0 0.99987298250198364 0.99991083145141602 0.99992328882217407 0.9949766993522644 
		0 -0.99994826316833496;
createNode animCurveTL -n "RIghtFoot_Control_translateZ";
	rename -uid "8E7BC237-4844-9418-D729-78BF61292F2B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 112 ".ktv[0:111]"  0 22.992017976035093 3 -13.718977897596872
		 6 -45.30594128961728 9 -56.360695214267494 12 -55.623908360378252 15 -39.148545650256679
		 18 -16.537402135953094 21 13.783593898160003 24 22.992017976035093 27 7.7996310205211188
		 30 -14.06730501346601 33 -49.011614797307111 36 -66.987166730790477 39 -52.684270723199866
		 42 -32.525054585165172 45 -6.6122414540858223 48 24.551367717789425 51 7.7996310205211188
		 54 -14.06730501346601 57 -39.522830574612946 60 51.435062147739309 63 29.345006849010758
		 64 14.622049063762411 65 6.9355831600824285 66 -3.6272437501910275 69 -24.387591663866921
		 72 -41.929550992337191 75 7.7996310205211188 78 -14.06730501346601 81 -49.011614797307111
		 84 -66.987166730790477 87 -52.684270723199866 90 -32.525054585165172 93 -6.6122414540858223
		 96 24.551367717789425 100 23.224247945893559 103 2.9554199504755583 104 -3.8556699433890502
		 105 -1.002825120093378 106 1.8612166072370939 108 7.9533640485350929 109 18.007839468064386
		 110 27.336356832437541 111 36.377931811485801 112 44.160016491619729 113 38.250483293218501
		 117 11.353962052856712 120 24.551367717789425 123 7.7996310205211188 126 -14.06730501346601
		 129 -49.011614797307111 132 -66.987166730790477 135 -52.684270723199866 138 -32.525054585165172
		 141 -6.6122414540858223 144 24.551367717789425 147 7.7996310205211188 150 -14.06730501346601
		 153 -49.011614797307111 156 -66.987166730790477 159 -52.684270723199866 162 -32.525054585165172
		 165 -6.6122414540858223 168 24.551367717789425 171 7.7996310205211188 174 -14.06730501346601
		 177 -49.011614797307111 180 -66.987166730790477 183 -52.684270723199866 186 -32.525054585165172
		 189 -6.6122414540858223 192 24.551367717789425 195 7.7996310205211188 198 -14.06730501346601
		 201 -49.011614797307111 204 -66.987166730790477 207 -52.684270723199866 210 -32.525054585165172
		 213 -6.6122414540858223 216 24.551367717789425 219 7.7996310205211188 222 -14.06730501346601
		 225 -49.011614797307111 228 -66.987166730790477 231 -52.684270723199866 234 -32.525054585165172
		 237 -6.6122414540858223 240 24.551367717789425 243 7.7996310205211188 246 -14.06730501346601
		 249 -49.011614797307111 252 -66.987166730790477 255 -6.6122414540858223 258 -32.11178026224573
		 261 12.790794052569872 264 -26.492664747419497 267 7.7996310205211188 270 -14.06730501346601
		 273 -49.011614797307111 276 -66.987166730790477 279 -52.684270723199866 282 -32.525054585165172
		 285 -6.6122414540858223 288 24.551367717789425 291 7.7996310205211188 294 -14.06730501346601
		 297 -49.011614797307111 300 -66.987166730790477 303 -52.684270723199866 306 -32.525054585165172
		 309 -6.6122414540858223 312 24.551367717789425;
	setAttr -s 112 ".kit[0:111]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 1 18 18 18 1 18 18 18 18 
		18 1 18 18 18 18 18 18 18 1 18 18 18 18 18 18 18 
		18 18 18 18 18 1 18 18 18 18 18 18 18 1 18 18 18 
		18 18 18 18 1 18 18 18 18 18 18 18 1 18 18 18 18 
		18 18 18 1 18 18 18 18 18 18 18 1 18 18 18 18 1 
		18 1 1 18 18 18 18 18 18 18 1 18 18 18 18 18 18 
		18 1;
	setAttr -s 112 ".kot[0:111]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 1 18 18 18 1 18 18 18 18 
		18 1 18 18 18 18 18 18 18 1 18 18 18 18 18 18 18 
		18 18 18 18 18 1 18 18 18 18 18 18 18 1 18 18 18 
		18 18 18 18 1 18 18 18 18 18 18 18 1 18 18 18 18 
		18 18 18 1 18 18 18 18 18 18 18 1 18 18 18 18 1 
		18 1 1 18 18 18 18 18 18 18 1 18 18 18 18 18 18 
		18 1;
	setAttr -s 112 ".kix[0:111]"  1 0.0036604069173336029 0.0058627026155591011 
		1 0.056461647152900696 0.0063959388062357903 0.0047229756601154804 0.0063242772594094276 
		1 0.0067457873374223709 0.0044004945084452629 0.0047240713611245155 1 0.0072541525587439537 
		0.0054262056946754456 0.0043800505809485912 1 0.0064734169282019138 0.0052828299812972546 
		1 1 0.0045273401774466038 0.003718644380569458 0.0045663346536457539 0.0053208013996481895 
		0.0065268827602267265 1 1 0.0044004945084452629 0.0047240713611245155 1 0.0072541525587439537 
		0.0054262056946754456 0.0043800505809485912 1 0.041825078427791595 0.0061545176431536674 
		1 0.014575094915926456 0.01395547017455101 0.007741325069218874 0.0042992704547941685 
		0.0045363209210336208 0.0049532619304955006 1 0.0063503310084342957 1 1 0.0064734169282019138 
		0.0044004945084452629 0.0047240713611245155 1 0.0072541525587439537 0.0054262056946754456 
		0.0043800505809485912 1 0.0064734169282019138 0.0044004945084452629 0.0047240713611245155 
		1 0.0072541525587439537 0.0054262056946754456 0.0043800505809485912 1 0.0064734169282019138 
		0.0044004945084452629 0.0047240713611245155 1 0.0072541525587439537 0.0054262056946754456 
		0.0043800505809485912 1 0.0064734169282019138 0.0044004945084452629 0.0047240713611245155 
		1 0.0072541525587439537 0.0054262056946754456 0.0043800505809485912 1 0.0064734169282019138 
		0.0044004945084452629 0.0047240713611245155 1 0.0072541525587439537 0.0054262056946754456 
		0.0043800505809485912 1 0.0064734169282019138 0.0044004945084452629 0.0047240713611245155 
		1 0.0043800505809485912 1 1 1 1 0.0044004945084452629 0.0047240713611245155 1 0.0072541525587439537 
		0.0054262056946754456 0.0043800505809485912 1 0.0064734169282019138 0.0044004945084452629 
		0.0047240713611245155 1 0.0072541525587439537 0.0054262056946754456 0.0043800505809485912 
		1;
	setAttr -s 112 ".kiy[0:111]"  0 -0.99999332427978516 -0.99998283386230469 
		0 0.99840474128723145 0.99997961521148682 0.999988853931427 0.99998003244400024 0 
		-0.9999772310256958 -0.99999034404754639 -0.999988853931427 0 0.99997365474700928 
		0.99998527765274048 0.99999046325683594 0 -0.99997907876968384 -0.99998605251312256 
		0 0 -0.99998974800109863 -0.99999308586120605 -0.99998956918716431 -0.99998587369918823 
		-0.99997866153717041 0 0 -0.99999034404754639 -0.999988853931427 0 0.99997365474700928 
		0.99998527765274048 0.99999046325683594 0 -0.99912494421005249 -0.9999811053276062 
		0 0.99989372491836548 0.99990266561508179 0.99997007846832275 0.99999076128005981 
		0.99998974800109863 0.99998778104782104 0 -0.99997985363006592 0 0 -0.99997907876968384 
		-0.99999034404754639 -0.999988853931427 0 0.99997365474700928 0.99998527765274048 
		0.99999046325683594 0 -0.99997907876968384 -0.99999034404754639 -0.999988853931427 
		0 0.99997365474700928 0.99998527765274048 0.99999046325683594 0 -0.99997907876968384 
		-0.99999034404754639 -0.999988853931427 0 0.99997365474700928 0.99998527765274048 
		0.99999046325683594 0 -0.99997907876968384 -0.99999034404754639 -0.999988853931427 
		0 0.99997365474700928 0.99998527765274048 0.99999046325683594 0 -0.99997907876968384 
		-0.99999034404754639 -0.999988853931427 0 0.99997365474700928 0.99998527765274048 
		0.99999046325683594 0 -0.99997907876968384 -0.99999034404754639 -0.999988853931427 
		0 0.99999046325683594 0 0 0 0 -0.99999034404754639 -0.999988853931427 0 0.99997365474700928 
		0.99998527765274048 0.99999046325683594 0 -0.99997907876968384 -0.99999034404754639 
		-0.999988853931427 0 0.99997365474700928 0.99998527765274048 0.99999046325683594 
		0;
	setAttr -s 112 ".kox[0:111]"  1 0.0036604069173336029 0.0058627026155591011 
		1 0.056461647152900696 0.0063959388062357903 0.0047229756601154804 0.0063242772594094276 
		1 0.0067457873374223709 0.0044004945084452629 0.0047240713611245155 1 0.0072541525587439537 
		0.0054262056946754456 0.0043800505809485912 1 0.0064734169282019138 0.0052828299812972546 
		1 1 0.0045273401774466038 0.0037186441477388144 0.0045663346536457539 0.0053208013996481895 
		0.0065268827602267265 1 1 0.0044004945084452629 0.0047240713611245155 1 0.0072541525587439537 
		0.0054262056946754456 0.0043800505809485912 1 0.041825078427791595 0.0061545176431536674 
		1 0.014575094915926456 0.01395547017455101 0.0077413255348801613 0.0042992699891328812 
		0.0045363209210336208 0.0049532619304955006 1 0.0063503305427730083 1 1 0.0064734169282019138 
		0.0044004945084452629 0.0047240713611245155 1 0.0072541525587439537 0.0054262056946754456 
		0.0043800505809485912 1 0.0064734169282019138 0.0044004945084452629 0.0047240713611245155 
		1 0.0072541525587439537 0.0054262056946754456 0.0043800505809485912 1 0.0064734169282019138 
		0.0044004945084452629 0.0047240713611245155 1 0.0072541525587439537 0.0054262056946754456 
		0.0043800505809485912 1 0.0064734169282019138 0.0044004945084452629 0.0047240713611245155 
		1 0.0072541525587439537 0.0054262056946754456 0.0043800505809485912 1 0.0064734169282019138 
		0.0044004945084452629 0.0047240713611245155 1 0.0072541525587439537 0.0054262056946754456 
		0.0043800505809485912 1 0.0064734169282019138 0.0044004945084452629 0.0047240713611245155 
		1 0.0043800505809485912 1 1 1 1 0.0044004945084452629 0.0047240713611245155 1 0.0072541525587439537 
		0.0054262056946754456 0.0043800505809485912 1 0.0064734169282019138 0.0044004945084452629 
		0.0047240713611245155 1 0.0072541525587439537 0.0054262056946754456 0.0043800505809485912 
		1;
	setAttr -s 112 ".koy[0:111]"  0 -0.99999332427978516 -0.99998283386230469 
		0 0.99840474128723145 0.99997961521148682 0.999988853931427 0.99998003244400024 0 
		-0.9999772310256958 -0.99999034404754639 -0.999988853931427 0 0.99997365474700928 
		0.99998527765274048 0.99999046325683594 0 -0.99997907876968384 -0.99998605251312256 
		0 0 -0.99998974800109863 -0.99999302625656128 -0.99998956918716431 -0.99998587369918823 
		-0.99997866153717041 0 0 -0.99999034404754639 -0.999988853931427 0 0.99997365474700928 
		0.99998527765274048 0.99999046325683594 0 -0.99912494421005249 -0.99998104572296143 
		0 0.99989372491836548 0.99990266561508179 0.99997007846832275 0.99999076128005981 
		0.99998974800109863 0.99998778104782104 0 -0.99997985363006592 0 0 -0.99997907876968384 
		-0.99999034404754639 -0.999988853931427 0 0.99997365474700928 0.99998527765274048 
		0.99999046325683594 0 -0.99997907876968384 -0.99999034404754639 -0.999988853931427 
		0 0.99997365474700928 0.99998527765274048 0.99999046325683594 0 -0.99997907876968384 
		-0.99999034404754639 -0.999988853931427 0 0.99997365474700928 0.99998527765274048 
		0.99999046325683594 0 -0.99997907876968384 -0.99999034404754639 -0.999988853931427 
		0 0.99997365474700928 0.99998527765274048 0.99999046325683594 0 -0.99997907876968384 
		-0.99999034404754639 -0.999988853931427 0 0.99997365474700928 0.99998527765274048 
		0.99999046325683594 0 -0.99997907876968384 -0.99999034404754639 -0.999988853931427 
		0 0.99999046325683594 0 0 0 0 -0.99999034404754639 -0.999988853931427 0 0.99997365474700928 
		0.99998527765274048 0.99999046325683594 0 -0.99997907876968384 -0.99999034404754639 
		-0.999988853931427 0 0.99997365474700928 0.99998527765274048 0.99999046325683594 
		0;
createNode animCurveTA -n "RIghtFoot_Control_rotateX";
	rename -uid "159F4642-514B-422E-ABDE-2788CC7670D3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 92 ".ktv[0:91]"  0 -14.085083477067506 3 0 6 38.079755203655345
		 9 116.76510975726931 12 126.1168490565898 15 127.96204446947462 18 122.71693902803378
		 21 34.820451449333596 24 -14.085083477067506 30 0 33 38.079755203655345 36 123.87588039256825
		 39 102.04979823850395 42 93.056295441303703 45 73.203711998285755 48 0.66880298039809893
		 54 0 57 0 58 63.254100154085791 60 0 63 0 66 0 69 27.686859538626322 72 73.203711998285755
		 78 0 81 38.079755203655345 84 123.87588039256825 87 102.04979823850395 90 93.056295441303703
		 93 73.203711998285755 96 0.66880298039809893 100 0 108 0 112 0 117 28.481801063899113
		 120 0.66880298039809893 126 0 129 38.079755203655345 132 123.87588039256825 135 102.04979823850395
		 138 93.056295441303703 141 73.203711998285755 144 0.66880298039809893 150 0 153 38.079755203655345
		 156 123.87588039256825 159 102.04979823850395 162 93.056295441303703 165 73.203711998285755
		 168 0.66880298039809893 174 0 177 38.079755203655345 180 123.87588039256825 183 102.04979823850395
		 186 93.056295441303703 189 73.203711998285755 192 0.66880298039809893 198 0 201 38.079755203655345
		 204 123.87588039256825 207 102.04979823850395 210 93.056295441303703 213 73.203711998285755
		 216 0.66880298039809893 222 0 225 38.079755203655345 228 123.87588039256825 231 102.04979823850395
		 234 93.056295441303703 237 73.203711998285755 240 0.66880298039809893 246 0 249 38.079755203655345
		 252 123.87588039256825 255 73.203711998285755 258 90.459354009107614 261 0 264 0
		 270 0 273 38.079755203655345 276 123.87588039256825 279 102.04979823850395 282 93.056295441303703
		 285 73.203711998285755 288 0.66880298039809893 294 0 297 38.079755203655345 300 123.87588039256825
		 303 102.04979823850395 306 93.056295441303703 309 73.203711998285755 312 0.66880298039809893;
	setAttr -s 92 ".kit[0:91]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 1 18 18 18 1 18 18 18 1 18 
		18 18 18 18 18 1 18 18 18 18 1 18 18 18 18 18 18 
		1 18 18 18 18 18 18 1 18 18 18 18 18 18 1 18 18 
		18 18 18 18 1 18 18 18 18 18 18 1 18 18 18 1 18 
		1 1 18 18 18 18 18 18 1 18 18 18 18 18 18 1;
	setAttr -s 92 ".kot[0:91]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 1 18 18 18 1 18 18 18 1 18 
		18 18 18 18 18 1 18 18 18 18 1 18 18 18 18 18 18 
		1 18 18 18 18 18 18 1 18 18 18 18 18 18 1 18 18 
		18 18 18 18 1 18 18 18 18 18 18 1 18 18 18 1 18 
		1 1 18 18 18 18 18 18 1 18 18 18 18 18 18 1;
	setAttr -s 92 ".kix[0:91]"  1 0.2647889256477356 0.12176040560007095 
		0.24734883010387421 0.79121369123458862 1 0.41426095366477966 0.10413637012243271 
		1 0.38084495067596436 0.11486606299877167 1 0.42147079110145569 0.4447503387928009 
		0.15321151912212372 1 1 1 1 1 1 1 0.19203071296215057 1 1 0.11486606299877167 1 0.42147079110145569 
		0.4447503387928009 0.15321151912212372 1 1 1 1 1 1 1 0.11486606299877167 1 0.42147079110145569 
		0.4447503387928009 0.15321151912212372 1 1 0.11486606299877167 1 0.42147079110145569 
		0.4447503387928009 0.15321151912212372 1 1 0.11486606299877167 1 0.42147079110145569 
		0.4447503387928009 0.15321151912212372 1 1 0.11486606299877167 1 0.42147079110145569 
		0.4447503387928009 0.15321151912212372 1 1 0.11486606299877167 1 0.42147079110145569 
		0.4447503387928009 0.15321151912212372 1 1 0.11486606299877167 1 0.15321151912212372 
		1 1 1 1 0.11486606299877167 1 0.42147079110145569 0.4447503387928009 0.15321151912212372 
		1 1 0.11486606299877167 1 0.42147079110145569 0.4447503387928009 0.15321151912212372 
		1;
	setAttr -s 92 ".kiy[0:91]"  0 0.96430641412734985 0.99255949258804321 
		0.96892654895782471 0.61153984069824219 0 -0.91015809774398804 -0.99456304311752319 
		0 0.92463892698287964 0.99338096380233765 0 -0.90684199333190918 -0.89565455913543701 
		-0.98819339275360107 0 0 0 0 0 0 0 0.98138892650604248 0 0 0.99338096380233765 0 
		-0.90684199333190918 -0.89565455913543701 -0.98819339275360107 0 0 0 0 0 0 0 0.99338096380233765 
		0 -0.90684199333190918 -0.89565455913543701 -0.98819339275360107 0 0 0.99338096380233765 
		0 -0.90684199333190918 -0.89565455913543701 -0.98819339275360107 0 0 0.99338096380233765 
		0 -0.90684199333190918 -0.89565455913543701 -0.98819339275360107 0 0 0.99338096380233765 
		0 -0.90684199333190918 -0.89565455913543701 -0.98819339275360107 0 0 0.99338096380233765 
		0 -0.90684199333190918 -0.89565455913543701 -0.98819339275360107 0 0 0.99338096380233765 
		0 -0.98819339275360107 0 0 0 0 0.99338096380233765 0 -0.90684199333190918 -0.89565455913543701 
		-0.98819339275360107 0 0 0.99338096380233765 0 -0.90684199333190918 -0.89565455913543701 
		-0.98819339275360107 0;
	setAttr -s 92 ".kox[0:91]"  1 0.2647889256477356 0.12176040560007095 
		0.24734883010387421 0.79121369123458862 1 0.41426095366477966 0.10413637012243271 
		1 0.38084495067596436 0.11486606299877167 1 0.42147079110145569 0.4447503387928009 
		0.15321151912212372 1 1 1 1 1 1 1 0.19203071296215057 1 1 0.11486606299877167 1 0.42147079110145569 
		0.4447503387928009 0.15321151912212372 1 1 1 1 1 1 1 0.11486606299877167 1 0.42147079110145569 
		0.4447503387928009 0.15321151912212372 1 1 0.11486606299877167 1 0.42147079110145569 
		0.4447503387928009 0.15321151912212372 1 1 0.11486606299877167 1 0.42147079110145569 
		0.4447503387928009 0.15321151912212372 1 1 0.11486606299877167 1 0.42147079110145569 
		0.4447503387928009 0.15321151912212372 1 1 0.11486606299877167 1 0.42147079110145569 
		0.4447503387928009 0.15321151912212372 1 1 0.11486606299877167 1 0.15321151912212372 
		1 1 1 1 0.11486606299877167 1 0.42147079110145569 0.4447503387928009 0.15321151912212372 
		1 1 0.11486606299877167 1 0.42147079110145569 0.4447503387928009 0.15321151912212372 
		1;
	setAttr -s 92 ".koy[0:91]"  0 0.96430641412734985 0.99255949258804321 
		0.96892654895782471 0.61153984069824219 0 -0.91015809774398804 -0.99456304311752319 
		0 0.92463892698287964 0.99338096380233765 0 -0.90684199333190918 -0.89565455913543701 
		-0.98819339275360107 0 0 0 0 0 0 0 0.98138892650604248 0 0 0.99338096380233765 0 
		-0.90684199333190918 -0.89565455913543701 -0.98819339275360107 0 0 0 0 0 0 0 0.99338096380233765 
		0 -0.90684199333190918 -0.89565455913543701 -0.98819339275360107 0 0 0.99338096380233765 
		0 -0.90684199333190918 -0.89565455913543701 -0.98819339275360107 0 0 0.99338096380233765 
		0 -0.90684199333190918 -0.89565455913543701 -0.98819339275360107 0 0 0.99338096380233765 
		0 -0.90684199333190918 -0.89565455913543701 -0.98819339275360107 0 0 0.99338096380233765 
		0 -0.90684199333190918 -0.89565455913543701 -0.98819339275360107 0 0 0.99338096380233765 
		0 -0.98819339275360107 0 0 0 0 0.99338096380233765 0 -0.90684199333190918 -0.89565455913543701 
		-0.98819339275360107 0 0 0.99338096380233765 0 -0.90684199333190918 -0.89565455913543701 
		-0.98819339275360107 0;
createNode animCurveTA -n "RIghtFoot_Control_rotateY";
	rename -uid "F3F88BA4-8846-23A0-6EC7-3FA264108337";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 65 ".ktv[0:64]"  0 -6.0971437935577644 9 -18.335821859035455
		 12 -36.01266841931244 15 -38.274432719646654 18 -30.750786742528152 21 -0.12246748926319578
		 24 -6.0971437935577644 36 -3.6589801998049238 39 4.1721133176644702 42 0.9006149832203606
		 45 -5.5263889073757042 48 -11.9852010559991 60 0 63 0 66 0 69 0 72 -5.5263889073757042
		 84 -3.6589801998049238 87 4.1721133176644702 90 0.9006149832203606 93 -5.5263889073757042
		 96 -11.9852010559991 108 0 112 0 117 -5.5263889073757042 120 -11.9852010559991 132 -3.6589801998049238
		 135 4.1721133176644702 138 0.9006149832203606 141 -5.5263889073757042 144 -11.9852010559991
		 156 -3.6589801998049238 159 4.1721133176644702 162 0.9006149832203606 165 -5.5263889073757042
		 168 -11.9852010559991 180 -3.6589801998049238 183 4.1721133176644702 186 0.9006149832203606
		 189 -5.5263889073757042 192 -11.9852010559991 204 -3.6589801998049238 207 4.1721133176644702
		 210 0.9006149832203606 213 -5.5263889073757042 216 -11.9852010559991 228 -3.6589801998049238
		 231 4.1721133176644702 234 0.9006149832203606 237 -5.5263889073757042 240 -11.9852010559991
		 252 -3.6589801998049238 255 -5.5263889073757042 261 -50.018417347389011 264 -50.018417347389011
		 276 -3.6589801998049238 279 4.1721133176644702 282 0.9006149832203606 285 -5.5263889073757042
		 288 -11.9852010559991 300 -3.6589801998049238 303 4.1721133176644702 306 0.9006149832203606
		 309 -5.5263889073757042 312 -11.9852010559991;
	setAttr -s 65 ".kit[0:64]"  1 18 18 18 18 18 18 18 
		18 18 18 1 1 18 18 18 1 18 18 18 18 1 18 18 18 
		1 18 18 18 18 1 18 18 18 18 1 18 18 18 18 1 18 
		18 18 18 1 18 18 18 18 1 18 1 1 1 18 18 18 18 
		1 18 18 18 18 1;
	setAttr -s 65 ".kot[0:64]"  1 18 18 18 18 18 18 18 
		18 18 18 1 1 18 18 18 1 18 18 18 18 1 18 18 18 
		1 18 18 18 18 1 18 18 18 18 1 18 18 18 18 1 18 
		18 18 18 1 18 18 18 18 1 18 1 1 1 18 18 18 18 
		1 18 18 18 18 1;
	setAttr -s 65 ".kix[0:64]"  1 0.69163906574249268 0.72593915462493896 
		1 0.35148823261260986 1 1 0.96891665458679199 1 0.82804793119430542 0.7434421181678772 
		1 1 1 1 1 0.76694047451019287 0.9814106822013855 1 0.82804793119430542 0.7434421181678772 
		1 1 1 0.84702867269515991 1 0.91151261329650879 1 0.82804793119430542 0.7434421181678772 
		1 0.91151261329650879 1 0.82804793119430542 0.7434421181678772 1 0.91151261329650879 
		1 0.82804793119430542 0.7434421181678772 1 0.91151261329650879 1 0.82804793119430542 
		0.7434421181678772 1 0.91151261329650879 1 0.82804793119430542 0.7434421181678772 
		1 1 0.7434421181678772 1 1 0.55131518840789795 1 0.82804793119430542 0.7434421181678772 
		1 0.91151261329650879 1 0.82804793119430542 0.7434421181678772 1;
	setAttr -s 65 ".kiy[0:64]"  0 -0.72224324941635132 -0.68775886297225952 
		0 0.93619227409362793 0 0 0.24738755822181702 0 -0.5606573224067688 -0.6688002347946167 
		0 0 0 0 0 -0.64171820878982544 0.19191935658454895 0 -0.5606573224067688 -0.6688002347946167 
		0 0 0 -0.53154724836349487 0 0.4112720787525177 0 -0.5606573224067688 -0.6688002347946167 
		0 0.4112720787525177 0 -0.5606573224067688 -0.6688002347946167 0 0.4112720787525177 
		0 -0.5606573224067688 -0.6688002347946167 0 0.4112720787525177 0 -0.5606573224067688 
		-0.6688002347946167 0 0.4112720787525177 0 -0.5606573224067688 -0.6688002347946167 
		0 0 -0.6688002347946167 0 0 0.8342970609664917 0 -0.5606573224067688 -0.6688002347946167 
		0 0.4112720787525177 0 -0.5606573224067688 -0.6688002347946167 0;
	setAttr -s 65 ".kox[0:64]"  1 0.69163912534713745 0.72593915462493896 
		1 0.35148823261260986 1 1 0.96891665458679199 1 0.82804793119430542 0.7434421181678772 
		1 1 1 1 1 0.76694047451019287 0.9814106822013855 1 0.82804793119430542 0.7434421181678772 
		1 1 1 0.84702861309051514 1 0.91151261329650879 1 0.82804793119430542 0.7434421181678772 
		1 0.91151261329650879 1 0.82804793119430542 0.7434421181678772 1 0.91151261329650879 
		1 0.82804793119430542 0.7434421181678772 1 0.91151261329650879 1 0.82804793119430542 
		0.7434421181678772 1 0.91151261329650879 1 0.82804793119430542 0.7434421181678772 
		1 1 0.7434421181678772 1 1 0.55131518840789795 1 0.82804793119430542 0.7434421181678772 
		1 0.91151261329650879 1 0.82804793119430542 0.7434421181678772 1;
	setAttr -s 65 ".koy[0:64]"  0 -0.72224330902099609 -0.68775886297225952 
		0 0.93619227409362793 0 0 0.24738755822181702 0 -0.5606573224067688 -0.6688002347946167 
		0 0 0 0 0 -0.64171820878982544 0.19191935658454895 0 -0.5606573224067688 -0.6688002347946167 
		0 0 0 -0.5315471887588501 0 0.4112720787525177 0 -0.5606573224067688 -0.6688002347946167 
		0 0.4112720787525177 0 -0.5606573224067688 -0.6688002347946167 0 0.4112720787525177 
		0 -0.5606573224067688 -0.6688002347946167 0 0.4112720787525177 0 -0.5606573224067688 
		-0.6688002347946167 0 0.4112720787525177 0 -0.5606573224067688 -0.6688002347946167 
		0 0 -0.6688002347946167 0 0 0.8342970609664917 0 -0.5606573224067688 -0.6688002347946167 
		0 0.4112720787525177 0 -0.5606573224067688 -0.6688002347946167 0;
createNode animCurveTA -n "RIghtFoot_Control_rotateZ";
	rename -uid "CB1DA09D-0A4E-7490-6742-6F8447353908";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 66 ".ktv[0:65]"  0 1.0968255422534445 3 0 9 -4.1639419564181068
		 12 -1.0180525284481823 15 -10.75182961320024 18 -13.948075761380606 21 0 24 1.0968255422534445
		 36 -24.175996096981549 39 -18.820038659077138 42 -16.403569400107351 45 -17.695261484209567
		 48 -1.9820555172063794 60 0 63 0 66 0 69 0 72 -17.695261484209567 84 -24.175996096981549
		 87 -18.820038659077138 90 -16.403569400107351 93 -17.695261484209567 96 -1.9820555172063794
		 108 0 112 0 117 -17.695261484209567 120 -1.9820555172063794 132 -24.175996096981549
		 135 -18.820038659077138 138 -16.403569400107351 141 -17.695261484209567 144 -1.9820555172063794
		 156 -24.175996096981549 159 -18.820038659077138 162 -16.403569400107351 165 -17.695261484209567
		 168 -1.9820555172063794 180 -24.175996096981549 183 -18.820038659077138 186 -16.403569400107351
		 189 -17.695261484209567 192 -1.9820555172063794 204 -24.175996096981549 207 -18.820038659077138
		 210 -16.403569400107351 213 -17.695261484209567 216 -1.9820555172063794 228 -24.175996096981549
		 231 -18.820038659077138 234 -16.403569400107351 237 -17.695261484209567 240 -1.9820555172063794
		 252 -24.175996096981549 255 -17.695261484209567 261 0 264 0 276 -24.175996096981549
		 279 -18.820038659077138 282 -16.403569400107351 285 -17.695261484209567 288 -1.9820555172063794
		 300 -24.175996096981549 303 -18.820038659077138 306 -16.403569400107351 309 -17.695261484209567
		 312 -1.9820555172063794;
	setAttr -s 66 ".kit[0:65]"  1 18 18 18 18 18 18 18 
		18 18 18 18 1 1 18 18 18 1 18 18 18 18 1 18 18 
		18 1 18 18 18 18 1 18 18 18 18 1 18 18 18 18 1 
		18 18 18 18 1 18 18 18 18 1 18 1 1 1 18 18 18 
		18 1 18 18 18 18 1;
	setAttr -s 66 ".kot[0:65]"  1 18 18 18 18 18 18 18 
		18 18 18 18 1 1 18 18 18 1 18 18 18 18 1 18 18 
		18 1 18 18 18 18 1 18 18 18 18 1 18 18 18 18 1 
		18 18 18 18 1 18 18 18 18 1 18 1 1 1 18 18 18 
		18 1 18 18 18 18 1;
	setAttr -s 66 ".kix[0:65]"  1 0.97130876779556274 1 1 0.74230194091796875 
		1 0.90868449211120605 1 1 0.87894159555435181 1 1 1 1 1 1 1 1 1 0.87894159555435181 
		1 1 1 1 1 1 1 1 0.87894159555435181 1 1 1 1 0.87894159555435181 1 1 1 1 0.87894159555435181 
		1 1 1 1 0.87894159555435181 1 1 1 1 0.87894159555435181 1 1 1 1 1 1 1 1 0.87894159555435181 
		1 1 1 1 0.87894159555435181 1 1 1;
	setAttr -s 66 ".kiy[0:65]"  0 -0.2378222644329071 0 0 -0.67006552219390869 
		0 0.41748347878456116 0 0 0.47692930698394775 0 0 0 0 0 0 0 0 0 0.47692930698394775 
		0 0 0 0 0 0 0 0 0.47692930698394775 0 0 0 0 0.47692930698394775 0 0 0 0 0.47692930698394775 
		0 0 0 0 0.47692930698394775 0 0 0 0 0.47692930698394775 0 0 0 0 0 0 0 0 0.47692930698394775 
		0 0 0 0 0.47692930698394775 0 0 0;
	setAttr -s 66 ".kox[0:65]"  1 0.97130876779556274 1 1 0.74230194091796875 
		1 0.90868449211120605 1 1 0.87894159555435181 1 1 1 1 1 1 1 1 1 0.87894159555435181 
		1 1 1 1 1 1 1 1 0.87894159555435181 1 1 1 1 0.87894159555435181 1 1 1 1 0.87894159555435181 
		1 1 1 1 0.87894159555435181 1 1 1 1 0.87894159555435181 1 1 1 1 1 1 1 1 0.87894159555435181 
		1 1 1 1 0.87894159555435181 1 1 1;
	setAttr -s 66 ".koy[0:65]"  0 -0.2378222644329071 0 0 -0.67006552219390869 
		0 0.41748347878456116 0 0 0.47692930698394775 0 0 0 0 0 0 0 0 0 0.47692930698394775 
		0 0 0 0 0 0 0 0 0.47692930698394775 0 0 0 0 0.47692930698394775 0 0 0 0 0.47692930698394775 
		0 0 0 0 0.47692930698394775 0 0 0 0 0.47692930698394775 0 0 0 0 0 0 0 0 0.47692930698394775 
		0 0 0 0 0.47692930698394775 0 0 0;
createNode animCurveTU -n "RIghtFoot_Control_scaleX";
	rename -uid "25B53E91-4742-B14F-748C-A6AAF7439F6F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 63 ".ktv[0:62]"  0 1 9 1 12 1 15 1 18 1 21 1 24 1 36 1 39 1
		 42 1 45 1 48 1 60 1 63 1 66 1 69 1 72 1 84 1 87 1 90 1 93 1 96 1 117 1 120 1 132 1
		 135 1 138 1 141 1 144 1 156 1 159 1 162 1 165 1 168 1 180 1 183 1 186 1 189 1 192 1
		 204 1 207 1 210 1 213 1 216 1 228 1 231 1 234 1 237 1 240 1 252 1 255 1 261 1 264 1
		 276 1 279 1 282 1 285 1 288 1 300 1 303 1 306 1 309 1 312 1;
	setAttr -s 63 ".kit[0:62]"  1 18 18 18 18 18 18 18 
		18 18 18 1 1 18 18 18 1 18 18 18 18 1 18 1 18 
		18 18 18 1 18 18 18 18 1 18 18 18 18 1 18 18 18 
		18 1 18 18 18 18 1 18 1 1 1 18 18 18 18 1 18 
		18 18 18 1;
	setAttr -s 63 ".kot[0:62]"  1 18 18 18 18 18 18 18 
		18 18 18 1 1 18 18 18 1 18 18 18 18 1 18 1 18 
		18 18 18 1 18 18 18 18 1 18 18 18 18 1 18 18 18 
		18 1 18 18 18 18 1 18 1 1 1 18 18 18 18 1 18 
		18 18 18 1;
	setAttr -s 63 ".kix[0:62]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1;
	setAttr -s 63 ".kiy[0:62]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0;
	setAttr -s 63 ".kox[0:62]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1;
	setAttr -s 63 ".koy[0:62]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0;
createNode animCurveTU -n "RIghtFoot_Control_scaleY";
	rename -uid "BF6A363C-BE40-434B-7509-50B43733F83A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 63 ".ktv[0:62]"  0 1 9 1 12 1 15 1 18 1 21 1 24 1 36 1 39 1
		 42 1 45 1 48 1 60 1 63 1 66 1 69 1 72 1 84 1 87 1 90 1 93 1 96 1 117 1 120 1 132 1
		 135 1 138 1 141 1 144 1 156 1 159 1 162 1 165 1 168 1 180 1 183 1 186 1 189 1 192 1
		 204 1 207 1 210 1 213 1 216 1 228 1 231 1 234 1 237 1 240 1 252 1 255 1 261 1 264 1
		 276 1 279 1 282 1 285 1 288 1 300 1 303 1 306 1 309 1 312 1;
	setAttr -s 63 ".kit[0:62]"  1 18 18 18 18 18 18 18 
		18 18 18 1 1 18 18 18 1 18 18 18 18 1 18 1 18 
		18 18 18 1 18 18 18 18 1 18 18 18 18 1 18 18 18 
		18 1 18 18 18 18 1 18 1 1 1 18 18 18 18 1 18 
		18 18 18 1;
	setAttr -s 63 ".kot[0:62]"  1 18 18 18 18 18 18 18 
		18 18 18 1 1 18 18 18 1 18 18 18 18 1 18 1 18 
		18 18 18 1 18 18 18 18 1 18 18 18 18 1 18 18 18 
		18 1 18 18 18 18 1 18 1 1 1 18 18 18 18 1 18 
		18 18 18 1;
	setAttr -s 63 ".kix[0:62]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1;
	setAttr -s 63 ".kiy[0:62]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0;
	setAttr -s 63 ".kox[0:62]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1;
	setAttr -s 63 ".koy[0:62]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0;
createNode animCurveTU -n "RIghtFoot_Control_scaleZ";
	rename -uid "1BAC6B56-9940-0CF7-9925-A993C3EB1160";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 63 ".ktv[0:62]"  0 1 9 1 12 1 15 1 18 1 21 1 24 1 36 1 39 1
		 42 1 45 1 48 1 60 1 63 1 66 1 69 1 72 1 84 1 87 1 90 1 93 1 96 1 117 1 120 1 132 1
		 135 1 138 1 141 1 144 1 156 1 159 1 162 1 165 1 168 1 180 1 183 1 186 1 189 1 192 1
		 204 1 207 1 210 1 213 1 216 1 228 1 231 1 234 1 237 1 240 1 252 1 255 1 261 1 264 1
		 276 1 279 1 282 1 285 1 288 1 300 1 303 1 306 1 309 1 312 1;
	setAttr -s 63 ".kit[0:62]"  1 18 18 18 18 18 18 18 
		18 18 18 1 1 18 18 18 1 18 18 18 18 1 18 1 18 
		18 18 18 1 18 18 18 18 1 18 18 18 18 1 18 18 18 
		18 1 18 18 18 18 1 18 1 1 1 18 18 18 18 1 18 
		18 18 18 1;
	setAttr -s 63 ".kot[0:62]"  1 18 18 18 18 18 18 18 
		18 18 18 1 1 18 18 18 1 18 18 18 18 1 18 1 18 
		18 18 18 1 18 18 18 18 1 18 18 18 18 1 18 18 18 
		18 1 18 18 18 18 1 18 1 1 1 18 18 18 18 1 18 
		18 18 18 1;
	setAttr -s 63 ".kix[0:62]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1;
	setAttr -s 63 ".kiy[0:62]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0;
	setAttr -s 63 ".kox[0:62]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1;
	setAttr -s 63 ".koy[0:62]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0;
createNode animCurveTU -n "RightToes_Control_visibility";
	rename -uid "5D4AC61C-4E40-C461-1930-34AFECEC6823";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 99 ".ktv[0:98]"  0 1 3 1 6 1 9 1 12 1 15 1 18 1 21 1 24 1
		 27 1 30 1 33 1 36 1 39 1 42 1 45 1 48 1 51 1 54 1 56 1 60 1 63 1 66 1 69 1 72 1 75 1
		 78 1 81 1 84 1 87 1 90 1 93 1 96 1 99 1 114 1 117 1 120 1 123 1 126 1 129 1 132 1
		 135 1 138 1 141 1 144 1 147 1 150 1 153 1 156 1 159 1 162 1 165 1 168 1 171 1 174 1
		 177 1 180 1 183 1 186 1 189 1 192 1 195 1 198 1 201 1 204 1 207 1 210 1 213 1 216 1
		 219 1 222 1 225 1 228 1 231 1 234 1 237 1 240 1 243 1 246 1 249 1 252 1 255 1 264 1
		 267 1 270 1 273 1 276 1 279 1 282 1 285 1 288 1 291 1 294 1 297 1 300 1 303 1 306 1
		 309 1 312 1;
	setAttr -s 99 ".kit[0:98]"  9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 1 9 9 9 9 9 9 9 1 9 9 9 9 9 9 
		9 1 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		1 9 9 9 9 1 1 9 9 9 9 9 9 9 1 9 9 
		9 9 9 9 9 1;
	setAttr -s 99 ".kix[44:98]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 99 ".kiy[44:98]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "RightToes_Control_translateX";
	rename -uid "DF859813-3148-D113-0C0E-3D8989C5A2A0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 99 ".ktv[0:98]"  0 0 3 0 6 0 9 0 12 0 15 0 18 0 21 0 24 0
		 27 0 30 0 33 0 36 0 39 0 42 0 45 0 48 0 51 0 54 0 56 0 60 0 63 0 66 0 69 0 72 0 75 0
		 78 0 81 0 84 0 87 0 90 0 93 0 96 0 99 0 114 0 117 0 120 0 123 0 126 0 129 0 132 0
		 135 0 138 0 141 0 144 0 147 0 150 0 153 0 156 0 159 0 162 0 165 0 168 0 171 0 174 0
		 177 0 180 0 183 0 186 0 189 0 192 0 195 0 198 0 201 0 204 0 207 0 210 0 213 0 216 0
		 219 0 222 0 225 0 228 0 231 0 234 0 237 0 240 0 243 0 246 0 249 0 252 0 255 0 264 0
		 267 0 270 0 273 0 276 0 279 0 282 0 285 0 288 0 291 0 294 0 297 0 300 0 303 0 306 0
		 309 0 312 0;
	setAttr -s 99 ".kit[44:98]"  1 18 18 18 18 18 18 18 
		1 18 18 18 18 18 18 18 1 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 1 18 18 18 18 1 1 18 18 18 
		18 18 18 18 1 18 18 18 18 18 18 18 1;
	setAttr -s 99 ".kot[32:98]"  1 18 18 18 1 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 1 18 18 18 18 18 
		18 18 18 18 18 18 18 1 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18;
	setAttr -s 99 ".kix[44:98]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 99 ".kiy[44:98]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 99 ".kox[32:98]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1;
	setAttr -s 99 ".koy[32:98]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0;
createNode animCurveTL -n "RightToes_Control_translateY";
	rename -uid "B650E338-1E4C-0ED7-6602-278CAA6A95E8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 99 ".ktv[0:98]"  0 0 3 0 6 0 9 0 12 0 15 0 18 0 21 0 24 0
		 27 0 30 0 33 0 36 0 39 0 42 0 45 0 48 0 51 0 54 0 56 0 60 0 63 0 66 0 69 0 72 0 75 0
		 78 0 81 0 84 0 87 0 90 0 93 0 96 0 99 0 114 0 117 0 120 0 123 0 126 0 129 0 132 0
		 135 0 138 0 141 0 144 0 147 0 150 0 153 0 156 0 159 0 162 0 165 0 168 0 171 0 174 0
		 177 0 180 0 183 0 186 0 189 0 192 0 195 0 198 0 201 0 204 0 207 0 210 0 213 0 216 0
		 219 0 222 0 225 0 228 0 231 0 234 0 237 0 240 0 243 0 246 0 249 0 252 0 255 0 264 0
		 267 0 270 0 273 0 276 0 279 0 282 0 285 0 288 0 291 0 294 0 297 0 300 0 303 0 306 0
		 309 0 312 0;
	setAttr -s 99 ".kit[44:98]"  1 18 18 18 18 18 18 18 
		1 18 18 18 18 18 18 18 1 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 1 18 18 18 18 1 1 18 18 18 
		18 18 18 18 1 18 18 18 18 18 18 18 1;
	setAttr -s 99 ".kot[32:98]"  1 18 18 18 1 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 1 18 18 18 18 18 
		18 18 18 18 18 18 18 1 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18;
	setAttr -s 99 ".kix[44:98]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 99 ".kiy[44:98]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 99 ".kox[32:98]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1;
	setAttr -s 99 ".koy[32:98]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0;
createNode animCurveTL -n "RightToes_Control_translateZ";
	rename -uid "500D6F28-9B42-A316-3FFA-6C8F022F0A8E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 99 ".ktv[0:98]"  0 0 3 0 6 0 9 0 12 0 15 0 18 0 21 0 24 0
		 27 0 30 0 33 0 36 0 39 0 42 0 45 0 48 0 51 0 54 0 56 0 60 0 63 0 66 0 69 0 72 0 75 0
		 78 0 81 0 84 0 87 0 90 0 93 0 96 0 99 0 114 0 117 0 120 0 123 0 126 0 129 0 132 0
		 135 0 138 0 141 0 144 0 147 0 150 0 153 0 156 0 159 0 162 0 165 0 168 0 171 0 174 0
		 177 0 180 0 183 0 186 0 189 0 192 0 195 0 198 0 201 0 204 0 207 0 210 0 213 0 216 0
		 219 0 222 0 225 0 228 0 231 0 234 0 237 0 240 0 243 0 246 0 249 0 252 0 255 0 264 0
		 267 0 270 0 273 0 276 0 279 0 282 0 285 0 288 0 291 0 294 0 297 0 300 0 303 0 306 0
		 309 0 312 0;
	setAttr -s 99 ".kit[44:98]"  1 18 18 18 18 18 18 18 
		1 18 18 18 18 18 18 18 1 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 1 18 18 18 18 1 1 18 18 18 
		18 18 18 18 1 18 18 18 18 18 18 18 1;
	setAttr -s 99 ".kot[32:98]"  1 18 18 18 1 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 1 18 18 18 18 18 
		18 18 18 18 18 18 18 1 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18;
	setAttr -s 99 ".kix[44:98]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 99 ".kiy[44:98]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 99 ".kox[32:98]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1;
	setAttr -s 99 ".koy[32:98]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0;
createNode animCurveTA -n "RightToes_Control_rotateX";
	rename -uid "73CD3859-0C46-3791-CD71-33ADD0A62413";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 99 ".ktv[0:98]"  0 0 3 0 6 0 9 -37.24343680288252 12 2.0777806263947158
		 15 1.6900003907990406 18 1.0100322612647501 21 0.32465322287417409 24 0 27 0 30 0
		 33 -37.24343680288252 36 2.0777806263947158 39 1.6900003907990406 42 1.0100322612647501
		 45 0.32465322287417409 48 0 51 0 54 0 56 6.2307875163870321 60 2.0777806263947158
		 63 1.6900003907990406 66 1.0100322612647501 69 -31.041976417168733 72 -53.481027604563103
		 75 0 78 0 81 -37.24343680288252 84 2.0777806263947158 87 1.6900003907990406 90 1.0100322612647501
		 93 0.32465322287417409 96 0 99 0 114 1.0100322612647501 117 0.32465322287417409 120 0
		 123 0 126 0 129 -37.24343680288252 132 2.0777806263947158 135 1.6900003907990406
		 138 1.0100322612647501 141 0.32465322287417409 144 0 147 0 150 0 153 -37.24343680288252
		 156 2.0777806263947158 159 1.6900003907990406 162 1.0100322612647501 165 0.32465322287417409
		 168 0 171 0 174 0 177 -37.24343680288252 180 2.0777806263947158 183 1.6900003907990406
		 186 1.0100322612647501 189 0.32465322287417409 192 0 195 0 198 0 201 -37.24343680288252
		 204 2.0777806263947158 207 1.6900003907990406 210 1.0100322612647501 213 0.32465322287417409
		 216 0 219 0 222 0 225 -37.24343680288252 228 2.0777806263947158 231 1.6900003907990406
		 234 1.0100322612647501 237 0.32465322287417409 240 0 243 0 246 0 249 -37.24343680288252
		 252 2.0777806263947158 255 0.32465322287417409 264 0 267 0 270 0 273 -37.24343680288252
		 276 2.0777806263947158 279 1.6900003907990406 282 1.0100322612647501 285 0.32465322287417409
		 288 0 291 0 294 0 297 -37.24343680288252 300 2.0777806263947158 303 1.6900003907990406
		 306 1.0100322612647501 309 0.32465322287417409 312 0;
	setAttr -s 99 ".kit[44:98]"  1 18 18 18 18 18 18 18 
		1 18 18 18 18 18 18 18 1 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 1 18 18 18 18 1 1 18 18 18 
		18 18 18 18 1 18 18 18 18 18 18 18 1;
	setAttr -s 99 ".kot[32:98]"  1 18 18 18 1 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 1 18 18 18 18 18 
		18 18 18 18 18 18 18 1 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18;
	setAttr -s 99 ".kix[44:98]"  1 1 1 1 1 0.99723321199417114 0.99548786878585815 
		0.99752312898635864 1 1 1 1 1 0.99723321199417114 0.99548786878585815 0.99752312898635864 
		1 1 1 1 1 0.99723321199417114 0.99548786878585815 0.99752312898635864 1 1 1 1 1 0.99723321199417114 
		0.99548786878585815 0.99752312898635864 1 1 1 1 1 0.99752312898635864 1 1 1 1 1 0.99723321199417114 
		0.99548786878585815 0.99752312898635864 1 1 1 1 1 0.99723321199417114 0.99548786878585815 
		0.99752312898635864 1;
	setAttr -s 99 ".kiy[44:98]"  0 0 0 0 0 -0.074336647987365723 -0.094889119267463684 
		-0.070338904857635498 0 0 0 0 0 -0.074336647987365723 -0.094889119267463684 -0.070338904857635498 
		0 0 0 0 0 -0.074336647987365723 -0.094889119267463684 -0.070338904857635498 0 0 0 
		0 0 -0.074336647987365723 -0.094889119267463684 -0.070338904857635498 0 0 0 0 0 -0.070338904857635498 
		0 0 0 0 0 -0.074336647987365723 -0.094889119267463684 -0.070338904857635498 0 0 0 
		0 0 -0.074336647987365723 -0.094889119267463684 -0.070338904857635498 0;
	setAttr -s 99 ".kox[32:98]"  1 1 1 0.99752312898635864 1 1 1 1 1 0.99723321199417114 
		0.99548786878585815 0.99752312898635864 1 1 1 1 1 0.99723321199417114 0.99548786878585815 
		0.99752312898635864 1 1 1 1 1 0.99723321199417114 0.99548786878585815 0.99752312898635864 
		1 1 1 1 1 0.99723321199417114 0.99548786878585815 0.99752312898635864 1 1 1 1 1 0.99723321199417114 
		0.99548786878585815 0.99752312898635864 1 1 1 1 1 0.99752312898635864 1 1 1 1 1 0.99723321199417114 
		0.99548786878585815 0.99752312898635864 1 1 1 1 1 0.99723321199417114 0.99548786878585815 
		0.99752312898635864 1;
	setAttr -s 99 ".koy[32:98]"  0 0 0 -0.070338904857635498 0 0 0 0 0 -0.074336647987365723 
		-0.094889119267463684 -0.070338904857635498 0 0 0 0 0 -0.074336647987365723 -0.094889119267463684 
		-0.070338904857635498 0 0 0 0 0 -0.074336647987365723 -0.094889119267463684 -0.070338904857635498 
		0 0 0 0 0 -0.074336647987365723 -0.094889119267463684 -0.070338904857635498 0 0 0 
		0 0 -0.074336647987365723 -0.094889119267463684 -0.070338904857635498 0 0 0 0 0 -0.070338904857635498 
		0 0 0 0 0 -0.074336647987365723 -0.094889119267463684 -0.070338904857635498 0 0 0 
		0 0 -0.074336647987365723 -0.094889119267463684 -0.070338904857635498 0;
createNode animCurveTA -n "RightToes_Control_rotateY";
	rename -uid "84D12422-0A43-1020-02D9-BC86972B8ECF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 99 ".ktv[0:98]"  0 0 3 0 6 0 9 0 12 0 15 0 18 0 21 0 24 0
		 27 0 30 0 33 0 36 0 39 0 42 0 45 0 48 0 51 0 54 0 56 0 60 0 63 0 66 0 69 0 72 0 75 0
		 78 0 81 0 84 0 87 0 90 0 93 0 96 0 99 0 114 0 117 0 120 0 123 0 126 0 129 0 132 0
		 135 0 138 0 141 0 144 0 147 0 150 0 153 0 156 0 159 0 162 0 165 0 168 0 171 0 174 0
		 177 0 180 0 183 0 186 0 189 0 192 0 195 0 198 0 201 0 204 0 207 0 210 0 213 0 216 0
		 219 0 222 0 225 0 228 0 231 0 234 0 237 0 240 0 243 0 246 0 249 0 252 0 255 0 264 0
		 267 0 270 0 273 0 276 0 279 0 282 0 285 0 288 0 291 0 294 0 297 0 300 0 303 0 306 0
		 309 0 312 0;
	setAttr -s 99 ".kit[44:98]"  1 18 18 18 18 18 18 18 
		1 18 18 18 18 18 18 18 1 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 1 18 18 18 18 1 1 18 18 18 
		18 18 18 18 1 18 18 18 18 18 18 18 1;
	setAttr -s 99 ".kot[32:98]"  1 18 18 18 1 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 1 18 18 18 18 18 
		18 18 18 18 18 18 18 1 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18;
	setAttr -s 99 ".kix[44:98]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 99 ".kiy[44:98]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 99 ".kox[32:98]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1;
	setAttr -s 99 ".koy[32:98]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0;
createNode animCurveTA -n "RightToes_Control_rotateZ";
	rename -uid "5C0FB2E6-8347-0FB3-30B5-9BB0197CE481";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 99 ".ktv[0:98]"  0 0 3 0 6 0 9 0 12 0 15 0 18 0 21 0 24 0
		 27 0 30 0 33 0 36 0 39 0 42 0 45 0 48 0 51 0 54 0 56 0 60 0 63 0 66 0 69 0 72 0 75 0
		 78 0 81 0 84 0 87 0 90 0 93 0 96 0 99 0 114 0 117 0 120 0 123 0 126 0 129 0 132 0
		 135 0 138 0 141 0 144 0 147 0 150 0 153 0 156 0 159 0 162 0 165 0 168 0 171 0 174 0
		 177 0 180 0 183 0 186 0 189 0 192 0 195 0 198 0 201 0 204 0 207 0 210 0 213 0 216 0
		 219 0 222 0 225 0 228 0 231 0 234 0 237 0 240 0 243 0 246 0 249 0 252 0 255 0 264 0
		 267 0 270 0 273 0 276 0 279 0 282 0 285 0 288 0 291 0 294 0 297 0 300 0 303 0 306 0
		 309 0 312 0;
	setAttr -s 99 ".kit[44:98]"  1 18 18 18 18 18 18 18 
		1 18 18 18 18 18 18 18 1 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 1 18 18 18 18 1 1 18 18 18 
		18 18 18 18 1 18 18 18 18 18 18 18 1;
	setAttr -s 99 ".kot[32:98]"  1 18 18 18 1 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 1 18 18 18 18 18 
		18 18 18 18 18 18 18 1 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18;
	setAttr -s 99 ".kix[44:98]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 99 ".kiy[44:98]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 99 ".kox[32:98]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1;
	setAttr -s 99 ".koy[32:98]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0;
createNode animCurveTU -n "RightToes_Control_scaleX";
	rename -uid "EE231392-CC41-C09D-BDA6-18ABB573AC4D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 99 ".ktv[0:98]"  0 1 3 1 6 1 9 1 12 1 15 1 18 1 21 1 24 1
		 27 1 30 1 33 1 36 1 39 1 42 1 45 1 48 1 51 1 54 1 56 1 60 1 63 1 66 1 69 1 72 1 75 1
		 78 1 81 1 84 1 87 1 90 1 93 1 96 1 99 1 114 1 117 1 120 1 123 1 126 1 129 1 132 1
		 135 1 138 1 141 1 144 1 147 1 150 1 153 1 156 1 159 1 162 1 165 1 168 1 171 1 174 1
		 177 1 180 1 183 1 186 1 189 1 192 1 195 1 198 1 201 1 204 1 207 1 210 1 213 1 216 1
		 219 1 222 1 225 1 228 1 231 1 234 1 237 1 240 1 243 1 246 1 249 1 252 1 255 1 264 1
		 267 1 270 1 273 1 276 1 279 1 282 1 285 1 288 1 291 1 294 1 297 1 300 1 303 1 306 1
		 309 1 312 1;
	setAttr -s 99 ".kit[44:98]"  1 18 18 18 18 18 18 18 
		1 18 18 18 18 18 18 18 1 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 1 18 18 18 18 1 1 18 18 18 
		18 18 18 18 1 18 18 18 18 18 18 18 1;
	setAttr -s 99 ".kot[32:98]"  1 18 18 18 1 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 1 18 18 18 18 18 
		18 18 18 18 18 18 18 1 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18;
	setAttr -s 99 ".kix[44:98]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 99 ".kiy[44:98]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 99 ".kox[32:98]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1;
	setAttr -s 99 ".koy[32:98]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0;
createNode animCurveTU -n "RightToes_Control_scaleY";
	rename -uid "BD40EB07-7141-9AC8-CB0B-3CA9503B3C88";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 99 ".ktv[0:98]"  0 1 3 1 6 1 9 1 12 1 15 1 18 1 21 1 24 1
		 27 1 30 1 33 1 36 1 39 1 42 1 45 1 48 1 51 1 54 1 56 1 60 1 63 1 66 1 69 1 72 1 75 1
		 78 1 81 1 84 1 87 1 90 1 93 1 96 1 99 1 114 1 117 1 120 1 123 1 126 1 129 1 132 1
		 135 1 138 1 141 1 144 1 147 1 150 1 153 1 156 1 159 1 162 1 165 1 168 1 171 1 174 1
		 177 1 180 1 183 1 186 1 189 1 192 1 195 1 198 1 201 1 204 1 207 1 210 1 213 1 216 1
		 219 1 222 1 225 1 228 1 231 1 234 1 237 1 240 1 243 1 246 1 249 1 252 1 255 1 264 1
		 267 1 270 1 273 1 276 1 279 1 282 1 285 1 288 1 291 1 294 1 297 1 300 1 303 1 306 1
		 309 1 312 1;
	setAttr -s 99 ".kit[44:98]"  1 18 18 18 18 18 18 18 
		1 18 18 18 18 18 18 18 1 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 1 18 18 18 18 1 1 18 18 18 
		18 18 18 18 1 18 18 18 18 18 18 18 1;
	setAttr -s 99 ".kot[32:98]"  1 18 18 18 1 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 1 18 18 18 18 18 
		18 18 18 18 18 18 18 1 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18;
	setAttr -s 99 ".kix[44:98]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 99 ".kiy[44:98]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 99 ".kox[32:98]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1;
	setAttr -s 99 ".koy[32:98]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0;
createNode animCurveTU -n "RightToes_Control_scaleZ";
	rename -uid "715086F0-324B-46D0-A6C4-CDBC3A6EEB90";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 99 ".ktv[0:98]"  0 1 3 1 6 1 9 1 12 1 15 1 18 1 21 1 24 1
		 27 1 30 1 33 1 36 1 39 1 42 1 45 1 48 1 51 1 54 1 56 1 60 1 63 1 66 1 69 1 72 1 75 1
		 78 1 81 1 84 1 87 1 90 1 93 1 96 1 99 1 114 1 117 1 120 1 123 1 126 1 129 1 132 1
		 135 1 138 1 141 1 144 1 147 1 150 1 153 1 156 1 159 1 162 1 165 1 168 1 171 1 174 1
		 177 1 180 1 183 1 186 1 189 1 192 1 195 1 198 1 201 1 204 1 207 1 210 1 213 1 216 1
		 219 1 222 1 225 1 228 1 231 1 234 1 237 1 240 1 243 1 246 1 249 1 252 1 255 1 264 1
		 267 1 270 1 273 1 276 1 279 1 282 1 285 1 288 1 291 1 294 1 297 1 300 1 303 1 306 1
		 309 1 312 1;
	setAttr -s 99 ".kit[44:98]"  1 18 18 18 18 18 18 18 
		1 18 18 18 18 18 18 18 1 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 1 18 18 18 18 1 1 18 18 18 
		18 18 18 18 1 18 18 18 18 18 18 18 1;
	setAttr -s 99 ".kot[32:98]"  1 18 18 18 1 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 1 18 18 18 18 18 
		18 18 18 18 18 18 18 1 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18;
	setAttr -s 99 ".kix[44:98]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 99 ".kiy[44:98]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 99 ".kox[32:98]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1;
	setAttr -s 99 ".koy[32:98]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle1_visibility";
	rename -uid "AB0A5B32-DF49-A3E8-59FE-3EA34912EBB4";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 1 12 1 24 1 36 1 48 1 60 1 72 1 84 1 96 1
		 108 1 120 1 132 1 144 1 156 1 168 1 180 1 192 1 204 1 216 1 228 1 240 1 252 1 255 1
		 264 1 276 1 288 1 300 1 312 1;
	setAttr -s 28 ".kit[0:27]"  9 9 9 9 9 9 9 9 
		9 9 9 9 1 9 1 9 1 9 9 9 1 9 1 1 9 
		1 9 1;
	setAttr -s 28 ".kix[12:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".kiy[12:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "nurbsCircle1_translateX";
	rename -uid "DBB916AB-894D-F0AC-6724-4A91757BC140";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 0 12 0 24 0 36 0 48 0 60 0 72 0 84 0 96 0
		 108 0 120 0 132 0 144 0 156 0 168 0 180 0 192 0 204 0 216 0 228 0 240 0 252 0 255 0
		 264 0 276 0 288 0 300 0 312 0;
	setAttr -s 28 ".kit[12:27]"  1 18 1 18 1 18 18 18 
		1 18 1 1 18 1 18 1;
	setAttr -s 28 ".kot[8:27]"  1 18 1 18 18 18 18 18 
		18 18 1 18 18 18 1 18 18 18 18 18;
	setAttr -s 28 ".kix[12:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".kiy[12:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 28 ".kox[8:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".koy[8:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "nurbsCircle1_translateY";
	rename -uid "0245BA03-7444-2FE8-33B4-15B86AEB6CB6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 0 12 0 24 0 36 0 48 0 60 0 72 0 84 0 96 0
		 108 0 120 0 132 0 144 0 156 0 168 0 180 0 192 0 204 0 216 0 228 0 240 0 252 0 255 0
		 264 0 276 0 288 0 300 0 312 0;
	setAttr -s 28 ".kit[12:27]"  1 18 1 18 1 18 18 18 
		1 18 1 1 18 1 18 1;
	setAttr -s 28 ".kot[8:27]"  1 18 1 18 18 18 18 18 
		18 18 1 18 18 18 1 18 18 18 18 18;
	setAttr -s 28 ".kix[12:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".kiy[12:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 28 ".kox[8:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".koy[8:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "nurbsCircle1_translateZ";
	rename -uid "F1C56683-8945-4A10-C898-27B659B261D0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 0 12 0 24 0 36 0 48 0 60 0 72 0 84 0 96 0
		 108 0 120 0 132 0 144 0 156 0 168 0 180 0 192 0 204 0 216 0 228 0 240 0 252 0 255 0
		 264 0 276 0 288 0 300 0 312 0;
	setAttr -s 28 ".kit[12:27]"  1 18 1 18 1 18 18 18 
		1 18 1 1 18 1 18 1;
	setAttr -s 28 ".kot[8:27]"  1 18 1 18 18 18 18 18 
		18 18 1 18 18 18 1 18 18 18 18 18;
	setAttr -s 28 ".kix[12:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".kiy[12:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 28 ".kox[8:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".koy[8:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "nurbsCircle1_rotateX";
	rename -uid "61B4ACBE-F54B-81DC-8F0B-639A6E5688C8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 0 12 0 24 0 36 0 48 0 60 0 72 0 84 0 96 0
		 108 0 120 0 132 0 144 0 156 0 168 0 180 0 192 0 204 0 216 0 228 0 240 0 252 0 255 0
		 264 0 276 0 288 0 300 0 312 0;
	setAttr -s 28 ".kit[12:27]"  1 18 1 18 1 18 18 18 
		1 18 1 1 18 1 18 1;
	setAttr -s 28 ".kot[8:27]"  1 18 1 18 18 18 18 18 
		18 18 1 18 18 18 1 18 18 18 18 18;
	setAttr -s 28 ".kix[12:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".kiy[12:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 28 ".kox[8:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".koy[8:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "nurbsCircle1_rotateY";
	rename -uid "7C474BA9-FA41-0098-3D17-CDA75EB8AF85";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 0 12 0 24 0 36 0 48 0 60 0 72 0 84 0 96 0
		 108 0 120 0 132 0 144 0 156 0 168 0 180 0 192 0 204 0 216 0 228 0 240 0 252 0 255 0
		 264 0 276 0 288 0 300 0 312 0;
	setAttr -s 28 ".kit[12:27]"  1 18 1 18 1 18 18 18 
		1 18 1 1 18 1 18 1;
	setAttr -s 28 ".kot[8:27]"  1 18 1 18 18 18 18 18 
		18 18 1 18 18 18 1 18 18 18 18 18;
	setAttr -s 28 ".kix[12:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".kiy[12:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 28 ".kox[8:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".koy[8:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "nurbsCircle1_rotateZ";
	rename -uid "E68B7E2F-EC42-EA5C-9B70-C081DAFD91A1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 0 12 0 24 0 36 0 48 0 60 0 72 0 84 0 96 0
		 108 0 120 0 132 0 144 0 156 0 168 0 180 0 192 0 204 0 216 0 228 0 240 0 252 0 255 0
		 264 0 276 0 288 0 300 0 312 0;
	setAttr -s 28 ".kit[12:27]"  1 18 1 18 1 18 18 18 
		1 18 1 1 18 1 18 1;
	setAttr -s 28 ".kot[8:27]"  1 18 1 18 18 18 18 18 
		18 18 1 18 18 18 1 18 18 18 18 18;
	setAttr -s 28 ".kix[12:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".kiy[12:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 28 ".kox[8:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".koy[8:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle1_scaleX";
	rename -uid "AE20F863-5446-104B-3629-A083AF4C84E6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 1 12 1 24 1 36 1 48 1 60 1 72 1 84 1 96 1
		 108 1 120 1 132 1 144 1 156 1 168 1 180 1 192 1 204 1 216 1 228 1 240 1 252 1 255 1
		 264 1 276 1 288 1 300 1 312 1;
	setAttr -s 28 ".kit[12:27]"  1 18 1 18 1 18 18 18 
		1 18 1 1 18 1 18 1;
	setAttr -s 28 ".kot[8:27]"  1 18 1 18 18 18 18 18 
		18 18 1 18 18 18 1 18 18 18 18 18;
	setAttr -s 28 ".kix[12:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".kiy[12:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 28 ".kox[8:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".koy[8:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle1_scaleY";
	rename -uid "FC5EFCB3-994C-B8F1-1A0C-84B54D4F4A21";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 1 12 1 24 1 36 1 48 1 60 1 72 1 84 1 96 1
		 108 1 120 1 132 1 144 1 156 1 168 1 180 1 192 1 204 1 216 1 228 1 240 1 252 1 255 1
		 264 1 276 1 288 1 300 1 312 1;
	setAttr -s 28 ".kit[12:27]"  1 18 1 18 1 18 18 18 
		1 18 1 1 18 1 18 1;
	setAttr -s 28 ".kot[8:27]"  1 18 1 18 18 18 18 18 
		18 18 1 18 18 18 1 18 18 18 18 18;
	setAttr -s 28 ".kix[12:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".kiy[12:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 28 ".kox[8:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".koy[8:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle1_scaleZ";
	rename -uid "96F6F09C-8945-F7B2-DEE2-E297720A45AF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 1 12 1 24 1 36 1 48 1 60 1 72 1 84 1 96 1
		 108 1 120 1 132 1 144 1 156 1 168 1 180 1 192 1 204 1 216 1 228 1 240 1 252 1 255 1
		 264 1 276 1 288 1 300 1 312 1;
	setAttr -s 28 ".kit[12:27]"  1 18 1 18 1 18 18 18 
		1 18 1 1 18 1 18 1;
	setAttr -s 28 ".kot[8:27]"  1 18 1 18 18 18 18 18 
		18 18 1 18 18 18 1 18 18 18 18 18;
	setAttr -s 28 ".kix[12:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".kiy[12:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 28 ".kox[8:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".koy[8:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LeftFoot_Control_visibility";
	rename -uid "343C0F06-BD4F-9F99-2E9F-C5AB3DC5AA56";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  12 1 24 1 36 1 48 1 60 1 72 1 84 1 96 1
		 105 1 106 1 107 1 108 1 109 1 110 1 111 1 120 1 132 1 144 1 156 1 168 1 180 1 192 1
		 204 1 216 1 228 1 240 1 252 1 255 1 259 1 264 1 276 1 288 1 300 1 312 1;
	setAttr -s 34 ".kit[0:33]"  18 18 9 9 18 9 9 1 
		9 9 9 9 9 9 1 1 9 1 9 1 9 1 9 1 9 
		1 9 1 1 1 9 1 9 1;
	setAttr -s 34 ".kot[0:33]"  18 18 5 5 18 5 5 5 
		5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 5 
		5 5 5 5 5 5 5 5 5;
	setAttr -s 34 ".kix[7:33]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1;
	setAttr -s 34 ".kiy[7:33]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0;
createNode animCurveTU -n "LeftFoot_Control_scaleX";
	rename -uid "AE38FB66-5E43-396D-2D52-3580D19F57F9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  -12 1 -3 1 0 1 3 1 6 1 9 1 12 1 21 1 24 1
		 36 1 48 1 60 1 72 1 84 1 96 1 105 1 106 1 107 1 108 1 109 1 110 1 111 1 120 1 132 1
		 144 1 156 1 168 1 180 1 192 1 204 1 216 1 228 1 240 1 252 1 255 1 259 1 264 1 276 1
		 288 1 300 1 312 1;
	setAttr -s 41 ".kit[8:40]"  1 18 18 18 18 18 1 18 
		18 18 18 18 18 1 1 18 1 18 1 18 1 18 1 18 1 
		18 1 1 1 18 1 18 1;
	setAttr -s 41 ".kot[8:40]"  1 18 18 18 18 18 1 18 
		18 18 18 18 18 1 1 18 1 18 1 18 1 18 1 18 1 
		18 1 1 1 18 1 18 1;
	setAttr -s 41 ".kix[8:40]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 41 ".kiy[8:40]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 41 ".kox[8:40]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 41 ".koy[8:40]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LeftFoot_Control_scaleY";
	rename -uid "6E4974C7-9341-30FF-F325-D39678A0E5A5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  -12 1 -3 1 0 1 3 1 6 1 9 1 12 1 21 1 24 1
		 36 1 48 1 60 1 72 1 84 1 96 1 105 1 106 1 107 1 108 1 109 1 110 1 111 1 120 1 132 1
		 144 1 156 1 168 1 180 1 192 1 204 1 216 1 228 1 240 1 252 1 255 1 259 1 264 1 276 1
		 288 1 300 1 312 1;
	setAttr -s 41 ".kit[8:40]"  1 18 18 18 18 18 1 18 
		18 18 18 18 18 1 1 18 1 18 1 18 1 18 1 18 1 
		18 1 1 1 18 1 18 1;
	setAttr -s 41 ".kot[8:40]"  1 18 18 18 18 18 1 18 
		18 18 18 18 18 1 1 18 1 18 1 18 1 18 1 18 1 
		18 1 1 1 18 1 18 1;
	setAttr -s 41 ".kix[8:40]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 41 ".kiy[8:40]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 41 ".kox[8:40]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 41 ".koy[8:40]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LeftFoot_Control_scaleZ";
	rename -uid "27EA6580-5D4C-2189-E732-72BB93DA6A00";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  -12 1 -3 1 0 1 3 1 6 1 9 1 12 1 21 1 24 1
		 36 1 48 1 60 1 72 1 84 1 96 1 105 1 106 1 107 1 108 1 109 1 110 1 111 1 120 1 132 1
		 144 1 156 1 168 1 180 1 192 1 204 1 216 1 228 1 240 1 252 1 255 1 259 1 264 1 276 1
		 288 1 300 1 312 1;
	setAttr -s 41 ".kit[8:40]"  1 18 18 18 18 18 1 18 
		18 18 18 18 18 1 1 18 1 18 1 18 1 18 1 18 1 
		18 1 1 1 18 1 18 1;
	setAttr -s 41 ".kot[8:40]"  1 18 18 18 18 18 1 18 
		18 18 18 18 18 1 1 18 1 18 1 18 1 18 1 18 1 
		18 1 1 1 18 1 18 1;
	setAttr -s 41 ".kix[8:40]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 41 ".kiy[8:40]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 41 ".kox[8:40]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 41 ".koy[8:40]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LeftToes_Control_visibility";
	rename -uid "AFF140F1-644B-0945-ECBA-6D9732A67F77";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 102 ".ktv[0:101]"  0 1 3 1 6 1 9 1 12 1 15 1 18 1 21 1 24 1
		 27 1 30 1 33 1 36 1 39 1 42 1 45 1 48 1 51 1 54 1 57 1 60 1 63 1 66 1 69 1 72 1 75 1
		 78 1 81 1 84 1 87 1 90 1 93 1 96 1 99 1 102 1 105 1 111 1 114 1 117 1 120 1 123 1
		 126 1 129 1 132 1 135 1 138 1 141 1 144 1 147 1 150 1 153 1 156 1 159 1 162 1 165 1
		 168 1 171 1 174 1 177 1 180 1 183 1 186 1 189 1 192 1 195 1 198 1 201 1 204 1 207 1
		 210 1 213 1 216 1 219 1 222 1 225 1 228 1 231 1 234 1 237 1 240 1 243 1 246 1 249 1
		 252 1 255 1 264 1 267 1 270 1 273 1 276 1 279 1 282 1 285 1 288 1 291 1 294 1 297 1
		 300 1 303 1 306 1 309 1 312 1;
	setAttr -s 102 ".kit[0:101]"  9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 1 9 9 9 9 9 9 9 1 9 9 9 
		9 9 9 9 1 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 1 9 9 9 9 1 1 9 9 9 9 9 9 9 
		1 9 9 9 9 9 9 9 1;
	setAttr -s 102 ".kix[47:101]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 102 ".kiy[47:101]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "LeftToes_Control_translateX";
	rename -uid "F6CE2360-1F42-B2B8-D2B2-20A47A39FFB3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 102 ".ktv[0:101]"  0 0 3 0 6 0 9 0 12 0 15 0 18 0 21 0 24 0
		 27 0 30 0 33 0 36 0 39 0 42 0 45 0 48 0 51 0 54 0 57 0 60 0 63 0 66 0 69 0 72 0 75 0
		 78 0 81 0 84 0 87 0 90 0 93 0 96 0 99 0 102 0 105 0 111 0 114 0 117 0 120 0 123 0
		 126 0 129 0 132 0 135 0 138 0 141 0 144 0 147 0 150 0 153 0 156 0 159 0 162 0 165 0
		 168 0 171 0 174 0 177 0 180 0 183 0 186 0 189 0 192 0 195 0 198 0 201 0 204 0 207 0
		 210 0 213 0 216 0 219 0 222 0 225 0 228 0 231 0 234 0 237 0 240 0 243 0 246 0 249 0
		 252 0 255 0 264 0 267 0 270 0 273 0 276 0 279 0 282 0 285 0 288 0 291 0 294 0 297 0
		 300 0 303 0 306 0 309 0 312 0;
	setAttr -s 102 ".kit[47:101]"  1 18 18 18 18 18 18 18 
		1 18 18 18 18 18 18 18 1 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 1 18 18 18 18 1 1 18 18 18 
		18 18 18 18 1 18 18 18 18 18 18 18 1;
	setAttr -s 102 ".kot[32:101]"  1 18 18 18 18 18 18 1 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 1 18 18 
		18 18 18 18 18 18 18 18 18 18 1 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 102 ".kix[47:101]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 102 ".kiy[47:101]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 102 ".kox[32:101]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1;
	setAttr -s 102 ".koy[32:101]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "LeftToes_Control_translateY";
	rename -uid "3D948759-B44C-1366-41B3-D182CC33854C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 102 ".ktv[0:101]"  0 0 3 0 6 0 9 0 12 0 15 0 18 0 21 0 24 0
		 27 0 30 0 33 0 36 0 39 0 42 0 45 0 48 0 51 0 54 0 57 0 60 0 63 0 66 0 69 0 72 0 75 0
		 78 0 81 0 84 0 87 0 90 0 93 0 96 0 99 0 102 0 105 0 111 0 114 0 117 0 120 0 123 0
		 126 0 129 0 132 0 135 0 138 0 141 0 144 0 147 0 150 0 153 0 156 0 159 0 162 0 165 0
		 168 0 171 0 174 0 177 0 180 0 183 0 186 0 189 0 192 0 195 0 198 0 201 0 204 0 207 0
		 210 0 213 0 216 0 219 0 222 0 225 0 228 0 231 0 234 0 237 0 240 0 243 0 246 0 249 0
		 252 0 255 0 264 0 267 0 270 0 273 0 276 0 279 0 282 0 285 0 288 0 291 0 294 0 297 0
		 300 0 303 0 306 0 309 0 312 0;
	setAttr -s 102 ".kit[47:101]"  1 18 18 18 18 18 18 18 
		1 18 18 18 18 18 18 18 1 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 1 18 18 18 18 1 1 18 18 18 
		18 18 18 18 1 18 18 18 18 18 18 18 1;
	setAttr -s 102 ".kot[32:101]"  1 18 18 18 18 18 18 1 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 1 18 18 
		18 18 18 18 18 18 18 18 18 18 1 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 102 ".kix[47:101]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 102 ".kiy[47:101]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 102 ".kox[32:101]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1;
	setAttr -s 102 ".koy[32:101]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "LeftToes_Control_translateZ";
	rename -uid "92A9A3EB-AC4F-2455-E6CA-64923D032765";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 102 ".ktv[0:101]"  0 0 3 0 6 0 9 0 12 0 15 0 18 0 21 0 24 0
		 27 0 30 0 33 0 36 0 39 0 42 0 45 0 48 0 51 0 54 0 57 0 60 0 63 0 66 0 69 0 72 0 75 0
		 78 0 81 0 84 0 87 0 90 0 93 0 96 0 99 0 102 0 105 0 111 0 114 0 117 0 120 0 123 0
		 126 0 129 0 132 0 135 0 138 0 141 0 144 0 147 0 150 0 153 0 156 0 159 0 162 0 165 0
		 168 0 171 0 174 0 177 0 180 0 183 0 186 0 189 0 192 0 195 0 198 0 201 0 204 0 207 0
		 210 0 213 0 216 0 219 0 222 0 225 0 228 0 231 0 234 0 237 0 240 0 243 0 246 0 249 0
		 252 0 255 0 264 0 267 0 270 0 273 0 276 0 279 0 282 0 285 0 288 0 291 0 294 0 297 0
		 300 0 303 0 306 0 309 0 312 0;
	setAttr -s 102 ".kit[47:101]"  1 18 18 18 18 18 18 18 
		1 18 18 18 18 18 18 18 1 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 1 18 18 18 18 1 1 18 18 18 
		18 18 18 18 1 18 18 18 18 18 18 18 1;
	setAttr -s 102 ".kot[32:101]"  1 18 18 18 18 18 18 1 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 1 18 18 
		18 18 18 18 18 18 18 18 18 18 1 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 102 ".kix[47:101]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 102 ".kiy[47:101]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 102 ".kox[32:101]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1;
	setAttr -s 102 ".koy[32:101]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LeftToes_Control_rotateX";
	rename -uid "C2651769-4248-ADD3-A626-7BA0FA85AE1A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 104 ".ktv[0:103]"  0 0 3 0 6 0 9 0 12 -13.742807943991814 15 0
		 18 0 21 -38.624901414394522 24 0 27 0 30 0 33 0 36 -13.742807943991814 39 0 42 0
		 45 -38.624901414394522 48 0 51 0 54 0 57 0 60 0 63 -12.587835514643661 66 -24.468571650209473
		 69 -38.624901414394522 72 0 75 0 78 0 81 0 84 -13.742807943991814 87 0 90 0 93 -38.624901414394522
		 96 0 99 0 102 0 105 0 111 0 114 -45.00774525342122 117 -38.624901414394522 118 -64.695967422106634
		 120 0 123 0 126 0 129 0 132 -13.742807943991814 135 0 138 0 141 -38.624901414394522
		 144 0 147 0 150 0 153 0 156 -13.742807943991814 159 0 162 0 165 -38.624901414394522
		 168 0 171 0 174 0 177 0 180 -13.742807943991814 183 0 186 0 189 -38.624901414394522
		 192 0 195 0 198 0 201 0 204 -13.742807943991814 207 0 210 0 213 -38.624901414394522
		 216 0 219 0 222 0 225 0 228 -13.742807943991814 231 0 234 0 237 -38.624901414394522
		 240 0 243 0 246 0 249 0 252 -13.742807943991814 255 -38.624901414394522 259 0 264 0
		 267 0 270 0 273 0 276 -13.742807943991814 279 0 282 0 285 -38.624901414394522 288 0
		 291 0 294 0 297 0 300 -13.742807943991814 303 0 306 0 309 -38.624901414394522 312 0;
	setAttr -s 104 ".kit[48:103]"  1 18 18 18 18 18 18 18 
		1 18 18 18 18 18 18 18 1 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 1 18 18 18 18 1 18 1 18 18 
		18 18 18 18 18 1 18 18 18 18 18 18 18 1;
	setAttr -s 104 ".kot[32:103]"  1 18 18 18 18 18 18 18 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 1 18 
		18 18 18 18 18 18 18 18 18 18 18 1 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 104 ".kix[48:103]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.34770765900611877 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1;
	setAttr -s 104 ".kiy[48:103]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.93760299682617188 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0;
	setAttr -s 104 ".kox[32:103]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.34770765900611877 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 104 ".koy[32:103]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.93760299682617188 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LeftToes_Control_rotateY";
	rename -uid "3948EAD9-F34C-CFF4-7116-B2848C4698E9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 102 ".ktv[0:101]"  0 0 3 0 6 0 9 0 12 0 15 0 18 0 21 0 24 0
		 27 0 30 0 33 0 36 0 39 0 42 0 45 0 48 0 51 0 54 0 57 0 60 0 63 0 66 0 69 0 72 0 75 0
		 78 0 81 0 84 0 87 0 90 0 93 0 96 0 99 0 102 0 105 0 111 0 114 0 117 0 120 0 123 0
		 126 0 129 0 132 0 135 0 138 0 141 0 144 0 147 0 150 0 153 0 156 0 159 0 162 0 165 0
		 168 0 171 0 174 0 177 0 180 0 183 0 186 0 189 0 192 0 195 0 198 0 201 0 204 0 207 0
		 210 0 213 0 216 0 219 0 222 0 225 0 228 0 231 0 234 0 237 0 240 0 243 0 246 0 249 0
		 252 0 255 0 264 0 267 0 270 0 273 0 276 0 279 0 282 0 285 0 288 0 291 0 294 0 297 0
		 300 0 303 0 306 0 309 0 312 0;
	setAttr -s 102 ".kit[47:101]"  1 18 18 18 18 18 18 18 
		1 18 18 18 18 18 18 18 1 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 1 18 18 18 18 1 1 18 18 18 
		18 18 18 18 1 18 18 18 18 18 18 18 1;
	setAttr -s 102 ".kot[32:101]"  1 18 18 18 18 18 18 1 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 1 18 18 
		18 18 18 18 18 18 18 18 18 18 1 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 102 ".kix[47:101]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 102 ".kiy[47:101]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 102 ".kox[32:101]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1;
	setAttr -s 102 ".koy[32:101]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LeftToes_Control_rotateZ";
	rename -uid "A68CA824-CA45-1847-9DDE-F2BCBE429BC4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 102 ".ktv[0:101]"  0 0 3 0 6 0 9 0 12 0 15 0 18 0 21 0 24 0
		 27 0 30 0 33 0 36 0 39 0 42 0 45 0 48 0 51 0 54 0 57 0 60 0 63 0 66 0 69 0 72 0 75 0
		 78 0 81 0 84 0 87 0 90 0 93 0 96 0 99 0 102 0 105 0 111 0 114 0 117 0 120 0 123 0
		 126 0 129 0 132 0 135 0 138 0 141 0 144 0 147 0 150 0 153 0 156 0 159 0 162 0 165 0
		 168 0 171 0 174 0 177 0 180 0 183 0 186 0 189 0 192 0 195 0 198 0 201 0 204 0 207 0
		 210 0 213 0 216 0 219 0 222 0 225 0 228 0 231 0 234 0 237 0 240 0 243 0 246 0 249 0
		 252 0 255 0 264 0 267 0 270 0 273 0 276 0 279 0 282 0 285 0 288 0 291 0 294 0 297 0
		 300 0 303 0 306 0 309 0 312 0;
	setAttr -s 102 ".kit[47:101]"  1 18 18 18 18 18 18 18 
		1 18 18 18 18 18 18 18 1 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 1 18 18 18 18 1 1 18 18 18 
		18 18 18 18 1 18 18 18 18 18 18 18 1;
	setAttr -s 102 ".kot[32:101]"  1 18 18 18 18 18 18 1 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 1 18 18 
		18 18 18 18 18 18 18 18 18 18 1 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 102 ".kix[47:101]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 102 ".kiy[47:101]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 102 ".kox[32:101]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1;
	setAttr -s 102 ".koy[32:101]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LeftToes_Control_scaleX";
	rename -uid "4CC658EC-8E43-FBA9-D01E-38B6508C78E4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 102 ".ktv[0:101]"  0 1 3 1 6 1 9 1 12 1 15 1 18 1 21 1 24 1
		 27 1 30 1 33 1 36 1 39 1 42 1 45 1 48 1 51 1 54 1 57 1 60 1 63 1 66 1 69 1 72 1 75 1
		 78 1 81 1 84 1 87 1 90 1 93 1 96 1 99 1 102 1 105 1 111 1 114 1 117 1 120 1 123 1
		 126 1 129 1 132 1 135 1 138 1 141 1 144 1 147 1 150 1 153 1 156 1 159 1 162 1 165 1
		 168 1 171 1 174 1 177 1 180 1 183 1 186 1 189 1 192 1 195 1 198 1 201 1 204 1 207 1
		 210 1 213 1 216 1 219 1 222 1 225 1 228 1 231 1 234 1 237 1 240 1 243 1 246 1 249 1
		 252 1 255 1 264 1 267 1 270 1 273 1 276 1 279 1 282 1 285 1 288 1 291 1 294 1 297 1
		 300 1 303 1 306 1 309 1 312 1;
	setAttr -s 102 ".kit[47:101]"  1 18 18 18 18 18 18 18 
		1 18 18 18 18 18 18 18 1 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 1 18 18 18 18 1 1 18 18 18 
		18 18 18 18 1 18 18 18 18 18 18 18 1;
	setAttr -s 102 ".kot[32:101]"  1 18 18 18 18 18 18 1 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 1 18 18 
		18 18 18 18 18 18 18 18 18 18 1 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 102 ".kix[47:101]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 102 ".kiy[47:101]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 102 ".kox[32:101]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1;
	setAttr -s 102 ".koy[32:101]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LeftToes_Control_scaleY";
	rename -uid "669647A1-B842-88DD-31D0-04AB837595B7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 102 ".ktv[0:101]"  0 1 3 1 6 1 9 1 12 1 15 1 18 1 21 1 24 1
		 27 1 30 1 33 1 36 1 39 1 42 1 45 1 48 1 51 1 54 1 57 1 60 1 63 1 66 1 69 1 72 1 75 1
		 78 1 81 1 84 1 87 1 90 1 93 1 96 1 99 1 102 1 105 1 111 1 114 1 117 1 120 1 123 1
		 126 1 129 1 132 1 135 1 138 1 141 1 144 1 147 1 150 1 153 1 156 1 159 1 162 1 165 1
		 168 1 171 1 174 1 177 1 180 1 183 1 186 1 189 1 192 1 195 1 198 1 201 1 204 1 207 1
		 210 1 213 1 216 1 219 1 222 1 225 1 228 1 231 1 234 1 237 1 240 1 243 1 246 1 249 1
		 252 1 255 1 264 1 267 1 270 1 273 1 276 1 279 1 282 1 285 1 288 1 291 1 294 1 297 1
		 300 1 303 1 306 1 309 1 312 1;
	setAttr -s 102 ".kit[47:101]"  1 18 18 18 18 18 18 18 
		1 18 18 18 18 18 18 18 1 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 1 18 18 18 18 1 1 18 18 18 
		18 18 18 18 1 18 18 18 18 18 18 18 1;
	setAttr -s 102 ".kot[32:101]"  1 18 18 18 18 18 18 1 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 1 18 18 
		18 18 18 18 18 18 18 18 18 18 1 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 102 ".kix[47:101]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 102 ".kiy[47:101]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 102 ".kox[32:101]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1;
	setAttr -s 102 ".koy[32:101]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LeftToes_Control_scaleZ";
	rename -uid "0D091246-9546-C6FA-4F36-8B96245F9EA2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 102 ".ktv[0:101]"  0 1 3 1 6 1 9 1 12 1 15 1 18 1 21 1 24 1
		 27 1 30 1 33 1 36 1 39 1 42 1 45 1 48 1 51 1 54 1 57 1 60 1 63 1 66 1 69 1 72 1 75 1
		 78 1 81 1 84 1 87 1 90 1 93 1 96 1 99 1 102 1 105 1 111 1 114 1 117 1 120 1 123 1
		 126 1 129 1 132 1 135 1 138 1 141 1 144 1 147 1 150 1 153 1 156 1 159 1 162 1 165 1
		 168 1 171 1 174 1 177 1 180 1 183 1 186 1 189 1 192 1 195 1 198 1 201 1 204 1 207 1
		 210 1 213 1 216 1 219 1 222 1 225 1 228 1 231 1 234 1 237 1 240 1 243 1 246 1 249 1
		 252 1 255 1 264 1 267 1 270 1 273 1 276 1 279 1 282 1 285 1 288 1 291 1 294 1 297 1
		 300 1 303 1 306 1 309 1 312 1;
	setAttr -s 102 ".kit[47:101]"  1 18 18 18 18 18 18 18 
		1 18 18 18 18 18 18 18 1 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 1 18 18 18 18 1 1 18 18 18 
		18 18 18 18 1 18 18 18 18 18 18 18 1;
	setAttr -s 102 ".kot[32:101]"  1 18 18 18 18 18 18 1 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 1 18 18 
		18 18 18 18 18 18 18 18 18 18 1 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 102 ".kix[47:101]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 102 ".kiy[47:101]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 102 ".kox[32:101]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1;
	setAttr -s 102 ".koy[32:101]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LeftKnee_Control_visibility";
	rename -uid "3E900F1E-B145-3741-FE7D-2EBE1450B7E1";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 1 12 1 24 1 36 1 48 1 60 1 72 1 84 1 96 1
		 108 1 120 1 132 1 144 1 156 1 168 1 180 1 192 1 204 1 216 1 228 1 240 1 252 1 255 1
		 264 1 276 1 288 1 300 1 312 1;
	setAttr -s 28 ".kit[0:27]"  9 9 9 9 9 9 9 9 
		9 9 9 9 1 9 1 9 1 9 9 9 1 9 1 1 9 
		1 9 1;
	setAttr -s 28 ".kix[12:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".kiy[12:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "LeftKnee_Control_translateX";
	rename -uid "DA92AF15-144E-CB9E-EC13-61A410A8CAE8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 0 12 0 24 0 36 0 48 0 60 0 72 0 84 0 96 0
		 108 0 120 0 132 0 144 0 156 0 168 0 180 0 192 0 204 0 216 0 228 0 240 0 252 0 255 0
		 264 0 276 0 288 0 300 0 312 0;
	setAttr -s 28 ".kit[12:27]"  1 18 1 18 1 18 18 18 
		1 18 1 1 18 1 18 1;
	setAttr -s 28 ".kot[8:27]"  1 18 1 18 18 18 18 18 
		18 18 1 18 18 18 1 18 18 18 18 18;
	setAttr -s 28 ".kix[12:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".kiy[12:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 28 ".kox[8:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".koy[8:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "LeftKnee_Control_translateY";
	rename -uid "5452BEE6-6140-6454-1D3C-009107B71CF3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 0 12 0 24 0 36 0 48 0 60 0 72 0 84 0 96 0
		 108 0 120 0 132 0 144 0 156 0 168 0 180 0 192 0 204 0 216 0 228 0 240 0 252 0 255 0
		 264 0 276 0 288 0 300 0 312 0;
	setAttr -s 28 ".kit[12:27]"  1 18 1 18 1 18 18 18 
		1 18 1 1 18 1 18 1;
	setAttr -s 28 ".kot[8:27]"  1 18 1 18 18 18 18 18 
		18 18 1 18 18 18 1 18 18 18 18 18;
	setAttr -s 28 ".kix[12:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".kiy[12:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 28 ".kox[8:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".koy[8:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "LeftKnee_Control_translateZ";
	rename -uid "8C49A745-8940-D223-7E37-85B9E05175FD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 0 12 0 24 0 36 0 48 0 60 0 72 0 84 0 96 0
		 108 0 120 0 132 0 144 0 156 0 168 0 180 0 192 0 204 0 216 0 228 0 240 0 252 0 255 0
		 264 0 276 0 288 0 300 0 312 0;
	setAttr -s 28 ".kit[12:27]"  1 18 1 18 1 18 18 18 
		1 18 1 1 18 1 18 1;
	setAttr -s 28 ".kot[8:27]"  1 18 1 18 18 18 18 18 
		18 18 1 18 18 18 1 18 18 18 18 18;
	setAttr -s 28 ".kix[12:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".kiy[12:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 28 ".kox[8:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".koy[8:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LeftKnee_Control_rotateX";
	rename -uid "E4845A90-044A-51AF-C895-D7AF1BCD8CEC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 0 12 0 24 0 36 0 48 0 60 0 72 0 84 0 96 0
		 108 0 120 0 132 0 144 0 156 0 168 0 180 0 192 0 204 0 216 0 228 0 240 0 252 0 255 0
		 264 0 276 0 288 0 300 0 312 0;
	setAttr -s 28 ".kit[12:27]"  1 18 1 18 1 18 18 18 
		1 18 1 1 18 1 18 1;
	setAttr -s 28 ".kot[8:27]"  1 18 1 18 18 18 18 18 
		18 18 1 18 18 18 1 18 18 18 18 18;
	setAttr -s 28 ".kix[12:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".kiy[12:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 28 ".kox[8:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".koy[8:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LeftKnee_Control_rotateY";
	rename -uid "360B815E-3C45-05EA-963B-10BBDDA5CD30";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 0 12 0 24 0 36 0 48 0 60 0 72 0 84 0 96 0
		 108 0 120 0 132 0 144 0 156 0 168 0 180 0 192 0 204 0 216 0 228 0 240 0 252 0 255 0
		 264 0 276 0 288 0 300 0 312 0;
	setAttr -s 28 ".kit[12:27]"  1 18 1 18 1 18 18 18 
		1 18 1 1 18 1 18 1;
	setAttr -s 28 ".kot[8:27]"  1 18 1 18 18 18 18 18 
		18 18 1 18 18 18 1 18 18 18 18 18;
	setAttr -s 28 ".kix[12:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".kiy[12:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 28 ".kox[8:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".koy[8:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LeftKnee_Control_rotateZ";
	rename -uid "A052716D-CF42-8652-565D-CFB102D07F85";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 0 12 0 24 0 36 0 48 0 60 0 72 0 84 0 96 0
		 108 0 120 0 132 0 144 0 156 0 168 0 180 0 192 0 204 0 216 0 228 0 240 0 252 0 255 0
		 264 0 276 0 288 0 300 0 312 0;
	setAttr -s 28 ".kit[12:27]"  1 18 1 18 1 18 18 18 
		1 18 1 1 18 1 18 1;
	setAttr -s 28 ".kot[8:27]"  1 18 1 18 18 18 18 18 
		18 18 1 18 18 18 1 18 18 18 18 18;
	setAttr -s 28 ".kix[12:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".kiy[12:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 28 ".kox[8:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".koy[8:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LeftKnee_Control_scaleX";
	rename -uid "0792AC82-B44A-6B7B-3278-A99814FF621C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 1 12 1 24 1 36 1 48 1 60 1 72 1 84 1 96 1
		 108 1 120 1 132 1 144 1 156 1 168 1 180 1 192 1 204 1 216 1 228 1 240 1 252 1 255 1
		 264 1 276 1 288 1 300 1 312 1;
	setAttr -s 28 ".kit[12:27]"  1 18 1 18 1 18 18 18 
		1 18 1 1 18 1 18 1;
	setAttr -s 28 ".kot[8:27]"  1 18 1 18 18 18 18 18 
		18 18 1 18 18 18 1 18 18 18 18 18;
	setAttr -s 28 ".kix[12:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".kiy[12:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 28 ".kox[8:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".koy[8:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LeftKnee_Control_scaleY";
	rename -uid "7719071C-8146-78A0-7EA8-42A9B1879877";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 1 12 1 24 1 36 1 48 1 60 1 72 1 84 1 96 1
		 108 1 120 1 132 1 144 1 156 1 168 1 180 1 192 1 204 1 216 1 228 1 240 1 252 1 255 1
		 264 1 276 1 288 1 300 1 312 1;
	setAttr -s 28 ".kit[12:27]"  1 18 1 18 1 18 18 18 
		1 18 1 1 18 1 18 1;
	setAttr -s 28 ".kot[8:27]"  1 18 1 18 18 18 18 18 
		18 18 1 18 18 18 1 18 18 18 18 18;
	setAttr -s 28 ".kix[12:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".kiy[12:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 28 ".kox[8:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".koy[8:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LeftKnee_Control_scaleZ";
	rename -uid "7C88FFD1-F94E-AC0B-16EC-6981C3158186";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 1 12 1 24 1 36 1 48 1 60 1 72 1 84 1 96 1
		 108 1 120 1 132 1 144 1 156 1 168 1 180 1 192 1 204 1 216 1 228 1 240 1 252 1 255 1
		 264 1 276 1 288 1 300 1 312 1;
	setAttr -s 28 ".kit[12:27]"  1 18 1 18 1 18 18 18 
		1 18 1 1 18 1 18 1;
	setAttr -s 28 ".kot[8:27]"  1 18 1 18 18 18 18 18 
		18 18 1 18 18 18 1 18 18 18 18 18;
	setAttr -s 28 ".kix[12:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".kiy[12:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 28 ".kox[8:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".koy[8:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "Hips_Control_visibility";
	rename -uid "170A05A0-C048-FEFE-5AB5-58B1D4767D0A";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 99 ".ktv[0:98]"  0 1 3 1 6 1 9 1 12 1 15 1 18 1 21 1 24 1
		 27 1 30 1 33 1 36 1 39 1 42 1 45 1 48 1 51 1 60 1 63 1 66 1 69 1 72 1 75 1 78 1 81 1
		 84 1 87 1 90 1 93 1 96 1 99 1 105 1 111 1 114 1 117 1 120 1 123 1 126 1 129 1 132 1
		 135 1 138 1 141 1 144 1 147 1 150 1 153 1 156 1 159 1 162 1 165 1 168 1 171 1 174 1
		 177 1 180 1 183 1 186 1 189 1 192 1 195 1 198 1 201 1 204 1 207 1 210 1 213 1 216 1
		 219 1 222 1 225 1 228 1 231 1 234 1 237 1 240 1 243 1 246 1 249 1 252 1 255 1 264 1
		 267 1 270 1 273 1 276 1 279 1 282 1 285 1 288 1 291 1 294 1 297 1 300 1 303 1 306 1
		 309 1 312 1;
	setAttr -s 99 ".kit[0:98]"  1 9 9 9 9 9 9 9 
		1 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 9 
		9 9 9 9 9 1 9 9 9 9 9 1 9 9 9 9 9 
		9 9 1 9 9 9 9 9 9 9 1 9 9 9 9 9 9 
		9 1 9 9 9 9 9 9 9 1 9 9 9 9 9 9 9 
		1 9 9 9 9 1 1 9 9 9 9 9 9 9 1 9 9 
		9 9 9 9 9 1;
	setAttr -s 99 ".kix[0:98]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 99 ".kiy[0:98]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Hips_Control_translateX";
	rename -uid "95001E1C-EC41-BBA6-FF5D-EAB322C0F386";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 100 ".ktv[0:99]"  0 0 3 0 6 0 9 0 12 0 15 0 18 0 21 0 24 0
		 27 0 30 0 33 0 36 0 39 0 42 0 45 0 48 0 51 0 57 11.353065403925333 60 31.918095473238484
		 63 3.6731428502475878 66 -7.175739608637258 69 0 72 0 75 0 78 0 81 0 84 0 87 0 90 0
		 93 0 96 0 99 -3.4998778347994017 105 -23.744700102304602 111 -19.162937220210729
		 114 -17.582247645829483 117 0 120 0 123 0 126 0 129 0 132 0 135 0 138 0 141 0 144 0
		 147 0 150 0 153 0 156 0 159 0 162 0 165 0 168 0 171 0 174 0 177 0 180 0 183 0 186 0
		 189 0 192 0 195 0 198 0 201 0 204 0 207 0 210 0 213 0 216 0 219 0 222 0 225 0 228 0
		 231 0 234 0 237 0 240 0 243 0 246 0 249 0 252 0 255 0 264 0 267 0 270 0 273 0 276 0
		 279 0 282 0 285 0 288 0 291 0 294 0 297 0 300 0 303 0 306 0 309 0 312 0;
	setAttr -s 100 ".kit[0:99]"  1 18 18 18 18 18 18 18 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 1 18 18 18 18 18 1 18 18 18 18 
		18 18 18 1 18 18 18 18 18 18 18 1 18 18 18 18 18 
		18 18 1 18 18 18 18 18 18 18 1 18 18 18 18 18 18 
		18 1 18 18 18 18 1 1 18 18 18 18 18 18 18 1 18 
		18 18 18 18 18 18 1;
	setAttr -s 100 ".kot[0:99]"  1 18 18 18 18 18 18 18 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 1 18 18 18 18 18 1 18 18 18 18 
		18 18 18 1 18 18 18 18 18 18 18 1 18 18 18 18 18 
		18 18 1 18 18 18 18 18 18 18 1 18 18 18 18 18 18 
		18 1 18 18 18 18 1 1 18 18 18 18 18 18 18 1 18 
		18 18 18 18 18 18 1;
	setAttr -s 100 ".kix[0:99]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.011748010292649269 
		1 0.0063947392627596855 1 1 1 1 1 1 1 1 1 1 1 0.015791028738021851 1 0.060740035027265549 
		0.026350649073719978 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 100 ".kiy[0:99]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.9999309778213501 
		0 -0.99997949600219727 0 0 0 0 0 0 0 0 0 0 0 -0.99987530708312988 0 0.99815356731414795 
		0.9996526837348938 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 100 ".kox[0:99]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.011748010292649269 
		1 0.0063947392627596855 1 1 1 1 1 1 1 1 1 1 1 0.015791028738021851 1 0.060740035027265549 
		0.026350649073719978 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 100 ".koy[0:99]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.9999309778213501 
		0 -0.99997949600219727 0 0 0 0 0 0 0 0 0 0 0 -0.99987530708312988 0 0.99815356731414795 
		0.9996526837348938 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Hips_Control_translateY";
	rename -uid "51AD7401-1140-BAEC-352A-75ABE98081F6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 100 ".ktv[0:99]"  0 -6.6661108570561307 3 -8.8237105610277666
		 6 -1.4578646468309162 9 0.69973505714071993 12 -6.6661108570561307 15 -8.8237105610277666
		 18 -1.4578646468309162 21 0.69973505714071993 24 -6.6661108570561307 27 -14 30 -4
		 33 -2 36 -12 39 -14 42 -4 45 -2 48 -12 51 -14 60 -17.694440048117571 63 -22.28510947228142
		 66 -4 69 -2 72 -12 75 -14 78 -4 81 -2 84 -12 87 -14 90 -4 93 -2 96 -12 99 -14 105 -26.328786882003328
		 111 -14 114 -4 117 -2 120 -12 123 -14 126 -4 129 -2 132 -12 135 -14 138 -4 141 -2
		 144 -12 147 -14 150 -4 153 -2 156 -12 159 -14 162 -4 165 -2 168 -12 171 -14 174 -4
		 177 -2 180 -12 183 -14 186 -4 189 -2 192 -12 195 -14 198 -4 201 -2 204 -12 207 -14
		 210 -4 213 -2 216 -12 219 -14 222 -4 225 -2 228 -12 231 -14 234 -4 237 -2 240 -12
		 243 -14 246 -4 249 -2 252 -12 255 -2 261 -19.246233215296652 264 -7.0433232885357313
		 267 -14 270 -4 273 -2 276 -12 279 -14 282 -4 285 -2 288 -12 291 -14 294 -4 297 -2
		 300 -12 303 -14 306 -4 309 -2 312 -12;
	setAttr -s 100 ".kit[0:99]"  1 18 18 1 18 18 18 1 
		1 18 18 1 18 18 18 1 1 18 18 18 18 1 1 18 18 
		1 18 18 18 1 1 18 1 18 18 1 1 18 18 1 18 18 
		18 1 1 18 18 1 18 18 18 1 1 18 18 1 18 18 18 
		1 1 18 18 1 18 18 18 1 1 18 18 1 18 18 18 1 
		1 18 18 1 18 1 18 1 18 18 1 18 18 18 1 1 18 
		18 1 18 18 18 1 1;
	setAttr -s 100 ".kot[0:99]"  1 18 18 1 18 18 18 1 
		1 18 18 1 18 18 18 1 1 18 18 18 18 1 1 18 18 
		1 18 18 18 1 1 18 1 18 18 1 1 18 18 1 18 18 
		18 1 1 18 18 1 18 18 18 1 1 18 18 1 18 18 18 
		1 1 18 18 1 18 18 18 1 1 18 18 1 18 18 18 1 
		1 18 18 1 18 1 18 1 18 18 1 18 18 18 1 1 18 
		18 1 18 18 18 1 1;
	setAttr -s 100 ".kix[0:99]"  0.010931427590548992 1 0.026241961866617203 
		0.066320046782493591 0.026241961866617203 1 0.026241961866617203 0.068157181143760681 
		0.010931427590548992 1 0.020828815177083015 0.071520291268825531 0.020828815177083015 
		1 0.020828815177083015 0.073499992489814758 0.011792710982263088 0.087468415498733521 
		0.060239635407924652 1 0.020828815177083015 0.073499992489814758 0.011792710982263088 
		1 0.020828815177083015 0.071520291268825531 0.020828815177083015 1 0.020828815177083015 
		0.073499992489814758 0.011792710982263088 0.026162132620811462 0.071520291268825531 
		0.016792096197605133 0.020828815177083015 0.073499992489814758 0.011792710982263088 
		1 0.020828815177083015 0.071520291268825531 0.020828815177083015 1 0.020828815177083015 
		0.073499992489814758 0.011792710982263088 1 0.020828815177083015 0.071520291268825531 
		0.020828815177083015 1 0.020828815177083015 0.073499992489814758 0.011792710982263088 
		1 0.020828815177083015 0.071520291268825531 0.020828815177083015 1 0.020828815177083015 
		0.073499992489814758 0.011792710982263088 1 0.020828815177083015 0.071520291268825531 
		0.020828815177083015 1 0.020828815177083015 0.073499992489814758 0.011792710982263088 
		1 0.020828815177083015 0.071520291268825531 0.020828815177083015 1 0.020828815177083015 
		0.073499992489814758 0.011792710982263088 1 0.020828815177083015 0.071520291268825531 
		1 0.073499992489814758 1 0.011792710982263088 1 0.020828815177083015 0.071520291268825531 
		0.020828815177083015 1 0.020828815177083015 0.073499992489814758 0.011792710982263088 
		1 0.020828815177083015 0.071520291268825531 0.020828815177083015 1 0.020828815177083015 
		0.073499992489814758 0.011792710982263088;
	setAttr -s 100 ".kiy[0:99]"  -0.99994021654129028 0 0.99965566396713257 
		-0.9977983832359314 -0.99965566396713257 0 0.99965566396713257 -0.99767458438873291 
		-0.99994021654129028 0 0.99978309869766235 -0.99743914604187012 -0.99978309869766235 
		0 0.99978309869766235 -0.99729520082473755 -0.99993050098419189 -0.99616724252700806 
		-0.99818390607833862 0 0.99978309869766235 -0.99729520082473755 -0.99993050098419189 
		0 0.99978309869766235 -0.99743914604187012 -0.99978309869766235 0 0.99978309869766235 
		-0.99729520082473755 -0.99993050098419189 -0.99965769052505493 -0.99743914604187012 
		0.9998590350151062 0.99978309869766235 -0.99729520082473755 -0.99993050098419189 
		0 0.99978309869766235 -0.99743914604187012 -0.99978309869766235 0 0.99978309869766235 
		-0.99729520082473755 -0.99993050098419189 0 0.99978309869766235 -0.99743914604187012 
		-0.99978309869766235 0 0.99978309869766235 -0.99729520082473755 -0.99993050098419189 
		0 0.99978309869766235 -0.99743914604187012 -0.99978309869766235 0 0.99978309869766235 
		-0.99729520082473755 -0.99993050098419189 0 0.99978309869766235 -0.99743914604187012 
		-0.99978309869766235 0 0.99978309869766235 -0.99729520082473755 -0.99993050098419189 
		0 0.99978309869766235 -0.99743914604187012 -0.99978309869766235 0 0.99978309869766235 
		-0.99729520082473755 -0.99993050098419189 0 0.99978309869766235 -0.99743914604187012 
		0 -0.99729520082473755 0 -0.99993050098419189 0 0.99978309869766235 -0.99743914604187012 
		-0.99978309869766235 0 0.99978309869766235 -0.99729520082473755 -0.99993050098419189 
		0 0.99978309869766235 -0.99743914604187012 -0.99978309869766235 0 0.99978309869766235 
		-0.99729520082473755 -0.99993050098419189;
	setAttr -s 100 ".kox[0:99]"  0.010931422933936119 1 0.026241961866617203 
		0.066320016980171204 0.026241961866617203 1 0.026241961866617203 0.068157181143760681 
		0.010931422933936119 1 0.020828815177083015 0.071520276367664337 0.020828815177083015 
		1 0.020828815177083015 0.073499985039234161 0.011792709119617939 0.087468415498733521 
		0.060239631682634354 1 0.020828815177083015 0.073499985039234161 0.011792709119617939 
		1 0.020828815177083015 0.071520276367664337 0.020828815177083015 1 0.020828815177083015 
		0.073499985039234161 0.011792709119617939 0.026162132620811462 0.071520276367664337 
		0.016792096197605133 0.020828815177083015 0.073499985039234161 0.011792709119617939 
		1 0.020828815177083015 0.071520276367664337 0.020828815177083015 1 0.020828815177083015 
		0.073499985039234161 0.011792709119617939 1 0.020828815177083015 0.071520276367664337 
		0.020828815177083015 1 0.020828815177083015 0.073499985039234161 0.011792709119617939 
		1 0.020828815177083015 0.071520276367664337 0.020828815177083015 1 0.020828815177083015 
		0.073499985039234161 0.011792709119617939 1 0.020828815177083015 0.071520276367664337 
		0.020828815177083015 1 0.020828815177083015 0.073499985039234161 0.011792709119617939 
		1 0.020828815177083015 0.071520276367664337 0.020828815177083015 1 0.020828815177083015 
		0.073499985039234161 0.011792709119617939 1 0.020828815177083015 0.071520276367664337 
		1 0.073499985039234161 1 0.011792709119617939 1 0.020828815177083015 0.071520276367664337 
		0.020828815177083015 1 0.020828815177083015 0.073499985039234161 0.011792709119617939 
		1 0.020828815177083015 0.071520276367664337 0.020828815177083015 1 0.020828815177083015 
		0.073499985039234161 0.011792709119617939;
	setAttr -s 100 ".koy[0:99]"  -0.99994021654129028 0 0.99965566396713257 
		-0.9977983832359314 -0.99965566396713257 0 0.99965566396713257 -0.99767458438873291 
		-0.99994021654129028 0 0.99978309869766235 -0.99743914604187012 -0.99978309869766235 
		0 0.99978309869766235 -0.99729520082473755 -0.99993050098419189 -0.99616730213165283 
		-0.99818390607833862 0 0.99978309869766235 -0.99729520082473755 -0.99993050098419189 
		0 0.99978309869766235 -0.99743914604187012 -0.99978309869766235 0 0.99978309869766235 
		-0.99729520082473755 -0.99993050098419189 -0.99965769052505493 -0.99743914604187012 
		0.9998590350151062 0.99978309869766235 -0.99729520082473755 -0.99993050098419189 
		0 0.99978309869766235 -0.99743914604187012 -0.99978309869766235 0 0.99978309869766235 
		-0.99729520082473755 -0.99993050098419189 0 0.99978309869766235 -0.99743914604187012 
		-0.99978309869766235 0 0.99978309869766235 -0.99729520082473755 -0.99993050098419189 
		0 0.99978309869766235 -0.99743914604187012 -0.99978309869766235 0 0.99978309869766235 
		-0.99729520082473755 -0.99993050098419189 0 0.99978309869766235 -0.99743914604187012 
		-0.99978309869766235 0 0.99978309869766235 -0.99729520082473755 -0.99993050098419189 
		0 0.99978309869766235 -0.99743914604187012 -0.99978309869766235 0 0.99978309869766235 
		-0.99729520082473755 -0.99993050098419189 0 0.99978309869766235 -0.99743914604187012 
		0 -0.99729520082473755 0 -0.99993050098419189 0 0.99978309869766235 -0.99743914604187012 
		-0.99978309869766235 0 0.99978309869766235 -0.99729520082473755 -0.99993050098419189 
		0 0.99978309869766235 -0.99743914604187012 -0.99978309869766235 0 0.99978309869766235 
		-0.99729520082473755 -0.99993050098419189;
createNode animCurveTL -n "Hips_Control_translateZ";
	rename -uid "459B9AEC-D549-87A4-D3D5-99B7C02873BF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 102 ".ktv[0:101]"  0 0 3 1.3513158684031836 6 4.01923000384744
		 9 2.232608826057433 12 0 15 1.2338101407159492 18 3.9951947413659354 21 1.9388445068393487
		 24 0 27 1.3513158684031836 30 4.01923000384744 33 2.232608826057433 36 0 39 1.2338101407159492
		 42 3.9951947413659354 45 1.9388445068393487 48 0 51 1.3513158684031836 57 -23.707717358088026
		 60 12.502726715460991 63 17.294267581902623 66 3.9951947413659354 69 1.9388445068393487
		 72 0 75 1.3513158684031836 78 4.01923000384744 81 2.232608826057433 84 0 87 1.2338101407159492
		 90 3.9951947413659354 93 1.9388445068393487 96 0 99 -16.243758188099768 105 -33.303846179815451
		 111 -2.5779350677039541 114 3.9951947413659354 117 -15.503164402358575 120 0 123 1.3513158684031836
		 126 4.01923000384744 129 2.232608826057433 132 0 135 1.2338101407159492 138 3.9951947413659354
		 141 1.9388445068393487 144 0 147 1.3513158684031836 150 4.01923000384744 153 2.232608826057433
		 156 0 159 1.2338101407159492 162 3.9951947413659354 165 1.9388445068393487 168 0
		 171 1.3513158684031836 174 4.01923000384744 177 2.232608826057433 180 0 183 1.2338101407159492
		 186 3.9951947413659354 189 1.9388445068393487 192 0 195 1.3513158684031836 198 4.01923000384744
		 201 2.232608826057433 204 0 207 1.2338101407159492 210 3.9951947413659354 213 1.9388445068393487
		 216 0 219 1.3513158684031836 222 4.01923000384744 225 2.232608826057433 228 0 231 1.2338101407159492
		 234 3.9951947413659354 237 1.9388445068393487 240 0 243 1.3513158684031836 246 4.01923000384744
		 249 2.232608826057433 252 0 255 1.9388445068393487 258 -3.0736284477825038 261 6.9773825330134365
		 264 0 267 1.3513158684031836 270 4.01923000384744 273 2.232608826057433 276 0 279 1.2338101407159492
		 282 3.9951947413659354 285 1.9388445068393487 288 0 291 1.3513158684031836 294 4.01923000384744
		 297 2.232608826057433 300 0 303 1.2338101407159492 306 3.9951947413659354 309 1.9388445068393487
		 312 0;
	setAttr -s 102 ".kit[0:101]"  1 18 18 18 18 18 18 18 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 1 18 18 18 18 18 1 18 18 18 18 
		18 18 18 1 18 18 18 18 18 18 18 1 18 18 18 18 18 
		18 18 1 18 18 18 18 18 18 18 1 18 18 18 18 18 18 
		18 1 18 18 18 18 1 18 18 1 18 18 18 18 18 18 18 
		1 18 18 18 18 18 18 18 1;
	setAttr -s 102 ".kot[0:101]"  1 18 18 18 18 18 18 18 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 1 18 18 18 18 18 1 18 18 18 18 
		18 18 18 1 18 18 18 18 18 18 18 1 18 18 18 18 18 
		18 18 1 18 18 18 18 18 18 18 1 18 18 18 18 18 18 
		18 1 18 18 18 18 1 18 18 1 18 18 18 18 18 18 18 
		1 18 18 18 18 18 18 18 1;
	setAttr -s 102 ".kix[0:101]"  1 0.062080990523099899 1 0.062080990523099899 
		1 0.062453020364046097 1 0.062453020364046097 1 0.062080990523099899 1 0.062080990523099899 
		1 0.062453020364046097 1 0.062453020364046097 1 1 1 0.0086955521255731583 1 0.020258277654647827 
		0.062453020364046097 1 0.062080990523099899 1 0.062080990523099899 1 0.062453020364046097 
		1 0.062453020364046097 1 0.011259246617555618 1 0.010053369216620922 1 1 1 0.062080990523099899 
		1 0.062080990523099899 1 0.062453020364046097 1 0.062453020364046097 1 0.062080990523099899 
		1 0.062080990523099899 1 0.062453020364046097 1 0.062453020364046097 1 0.062080990523099899 
		1 0.062080990523099899 1 0.062453020364046097 1 0.062453020364046097 1 0.062080990523099899 
		1 0.062080990523099899 1 0.062453020364046097 1 0.062453020364046097 1 0.062080990523099899 
		1 0.062080990523099899 1 0.062453020364046097 1 0.062453020364046097 1 0.062080990523099899 
		1 0.062080990523099899 1 0.062453020364046097 1 1 1 0.062080990523099899 1 0.062080990523099899 
		1 0.062453020364046097 1 0.062453020364046097 1 0.062080990523099899 1 0.062080990523099899 
		1 0.062453020364046097 1 0.062453020364046097 1;
	setAttr -s 102 ".kiy[0:101]"  0 0.99807107448577881 0 -0.99807107448577881 
		0 0.99804794788360596 0 -0.99804794788360596 0 0.99807107448577881 0 -0.99807107448577881 
		0 0.99804794788360596 0 -0.99804794788360596 0 0 0 0.9999622106552124 0 -0.99979472160339355 
		-0.99804794788360596 0 0.99807107448577881 0 -0.99807107448577881 0 0.99804794788360596 
		0 -0.99804794788360596 0 -0.99993658065795898 0 0.99994945526123047 0 0 0 0.99807107448577881 
		0 -0.99807107448577881 0 0.99804794788360596 0 -0.99804794788360596 0 0.99807107448577881 
		0 -0.99807107448577881 0 0.99804794788360596 0 -0.99804794788360596 0 0.99807107448577881 
		0 -0.99807107448577881 0 0.99804794788360596 0 -0.99804794788360596 0 0.99807107448577881 
		0 -0.99807107448577881 0 0.99804794788360596 0 -0.99804794788360596 0 0.99807107448577881 
		0 -0.99807107448577881 0 0.99804794788360596 0 -0.99804794788360596 0 0.99807107448577881 
		0 -0.99807107448577881 0 -0.99804794788360596 0 0 0 0.99807107448577881 0 -0.99807107448577881 
		0 0.99804794788360596 0 -0.99804794788360596 0 0.99807107448577881 0 -0.99807107448577881 
		0 0.99804794788360596 0 -0.99804794788360596 0;
	setAttr -s 102 ".kox[0:101]"  1 0.062080990523099899 1 0.062080990523099899 
		1 0.062453020364046097 1 0.062453020364046097 1 0.062080990523099899 1 0.062080990523099899 
		1 0.062453020364046097 1 0.062453020364046097 1 1 1 0.0086955521255731583 1 0.020258277654647827 
		0.062453020364046097 1 0.062080990523099899 1 0.062080990523099899 1 0.062453020364046097 
		1 0.062453020364046097 1 0.011259246617555618 1 0.010053369216620922 1 1 1 0.062080990523099899 
		1 0.062080990523099899 1 0.062453020364046097 1 0.062453020364046097 1 0.062080990523099899 
		1 0.062080990523099899 1 0.062453020364046097 1 0.062453020364046097 1 0.062080990523099899 
		1 0.062080990523099899 1 0.062453020364046097 1 0.062453020364046097 1 0.062080990523099899 
		1 0.062080990523099899 1 0.062453020364046097 1 0.062453020364046097 1 0.062080990523099899 
		1 0.062080990523099899 1 0.062453020364046097 1 0.062453020364046097 1 0.062080990523099899 
		1 0.062080990523099899 1 0.062453020364046097 1 1 1 0.062080990523099899 1 0.062080990523099899 
		1 0.062453020364046097 1 0.062453020364046097 1 0.062080990523099899 1 0.062080990523099899 
		1 0.062453020364046097 1 0.062453020364046097 1;
	setAttr -s 102 ".koy[0:101]"  0 0.99807107448577881 0 -0.99807107448577881 
		0 0.99804794788360596 0 -0.99804794788360596 0 0.99807107448577881 0 -0.99807107448577881 
		0 0.99804794788360596 0 -0.99804794788360596 0 0 0 0.9999622106552124 0 -0.99979472160339355 
		-0.99804794788360596 0 0.99807107448577881 0 -0.99807107448577881 0 0.99804794788360596 
		0 -0.99804794788360596 0 -0.99993658065795898 0 0.99994945526123047 0 0 0 0.99807107448577881 
		0 -0.99807107448577881 0 0.99804794788360596 0 -0.99804794788360596 0 0.99807107448577881 
		0 -0.99807107448577881 0 0.99804794788360596 0 -0.99804794788360596 0 0.99807107448577881 
		0 -0.99807107448577881 0 0.99804794788360596 0 -0.99804794788360596 0 0.99807107448577881 
		0 -0.99807107448577881 0 0.99804794788360596 0 -0.99804794788360596 0 0.99807107448577881 
		0 -0.99807107448577881 0 0.99804794788360596 0 -0.99804794788360596 0 0.99807107448577881 
		0 -0.99807107448577881 0 -0.99804794788360596 0 0 0 0.99807107448577881 0 -0.99807107448577881 
		0 0.99804794788360596 0 -0.99804794788360596 0 0.99807107448577881 0 -0.99807107448577881 
		0 0.99804794788360596 0 -0.99804794788360596 0;
createNode animCurveTA -n "Hips_Control_rotateX";
	rename -uid "3BEA9DDF-7C4C-1808-C6D4-739743B6BC1B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 102 ".ktv[0:101]"  0 35.480742490568623 3 35.480742490568623
		 6 35.480742490568623 9 35.480742490568623 12 35.480742490568623 15 35.480742490568623
		 18 35.480742490568623 21 35.480742490568623 24 35.480742490568623 27 35.480742490568623
		 30 35.480742490568623 33 35.480742490568623 36 35.480742490568623 39 35.480742490568623
		 42 35.480742490568623 45 35.480742490568623 48 35.480742490568623 51 35.480742490568623
		 54 20.973766154426219 57 7.3669929277094717 60 16.722230133803027 63 31.612876486787957
		 66 35.698801297427444 69 35.480742490568623 72 35.480742490568623 75 35.480742490568623
		 78 35.480742490568623 81 35.480742490568623 84 35.480742490568623 87 35.480742490568623
		 90 35.480742490568623 93 35.480742490568623 96 35.480742490568623 99 30.735667010316867
		 105 12.306478593959936 111 25.002156100523173 114 35.480742490568623 117 35.480742490568623
		 120 35.480742490568623 123 35.480742490568623 126 35.480742490568623 129 35.480742490568623
		 132 35.480742490568623 135 35.480742490568623 138 35.480742490568623 141 35.480742490568623
		 144 35.480742490568623 147 35.480742490568623 150 35.480742490568623 153 35.480742490568623
		 156 35.480742490568623 159 35.480742490568623 162 35.480742490568623 165 35.480742490568623
		 168 35.480742490568623 171 35.480742490568623 174 35.480742490568623 177 35.480742490568623
		 180 35.480742490568623 183 35.480742490568623 186 35.480742490568623 189 35.480742490568623
		 192 35.480742490568623 195 35.480742490568623 198 35.480742490568623 201 35.480742490568623
		 204 35.480742490568623 207 35.480742490568623 210 35.480742490568623 213 35.480742490568623
		 216 35.480742490568623 219 35.480742490568623 222 35.480742490568623 225 35.480742490568623
		 228 35.480742490568623 231 35.480742490568623 234 35.480742490568623 237 35.480742490568623
		 240 35.480742490568623 243 35.480742490568623 246 35.480742490568623 249 35.480742490568623
		 252 35.480742490568623 255 35.480742490568623 258 3.1306709871424832 264 0 267 35.480742490568623
		 270 35.480742490568623 273 35.480742490568623 276 35.480742490568623 279 35.480742490568623
		 282 35.480742490568623 285 35.480742490568623 288 35.480742490568623 291 35.480742490568623
		 294 35.480742490568623 297 35.480742490568623 300 35.480742490568623 303 35.480742490568623
		 306 35.480742490568623 309 35.480742490568623 312 35.480742490568623;
	setAttr -s 102 ".kit[0:101]"  1 18 18 18 18 18 18 18 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 1 18 18 18 18 18 1 18 18 18 
		18 18 18 18 1 18 18 18 18 18 18 18 1 18 18 18 18 
		18 18 18 1 18 18 18 18 18 18 18 1 18 18 18 18 18 
		18 18 1 18 18 18 18 1 18 1 18 18 18 18 18 18 18 
		1 18 18 18 18 18 18 18 1;
	setAttr -s 102 ".kot[0:101]"  1 18 18 18 18 18 18 18 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 1 18 18 18 18 18 1 18 18 18 
		18 18 18 18 1 18 18 18 18 18 18 18 1 18 18 18 18 
		18 18 18 1 18 18 18 18 18 18 18 1 18 18 18 18 18 
		18 18 1 18 18 18 18 1 18 1 18 18 18 18 18 18 18 
		1 18 18 18 18 18 18 18 1;
	setAttr -s 102 ".kix[0:101]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.45397225022315979 
		1 0.50864595174789429 0.60246062278747559 1 1 1 1 1 1 1 1 1 1 1 0.67988944053649902 
		1 0.67988944053649902 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.83626413345336914 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1;
	setAttr -s 102 ".kiy[0:101]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.89101588726043701 
		0 0.86097580194473267 0.79814857244491577 0 0 0 0 0 0 0 0 0 0 0 -0.7333146333694458 
		0 0.7333146333694458 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.54832684993743896 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0;
	setAttr -s 102 ".kox[0:101]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.45397225022315979 
		1 0.50864595174789429 0.60246062278747559 1 1 1 1 1 1 1 1 1 1 1 0.67988944053649902 
		1 0.67988944053649902 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.83626413345336914 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1;
	setAttr -s 102 ".koy[0:101]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.89101588726043701 
		0 0.86097580194473267 0.79814857244491577 0 0 0 0 0 0 0 0 0 0 0 -0.7333146333694458 
		0 0.7333146333694458 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.54832684993743896 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0;
createNode animCurveTA -n "Hips_Control_rotateY";
	rename -uid "346805E0-F44F-81FA-6CFA-28AC3E46D2E9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 100 ".ktv[0:99]"  0 10 3 10 6 7.1098750357648521 9 -1.2797775064376717
		 12 -10 15 -10 18 -5.9261200801132672 21 6.1606674806869801 24 10 27 10 30 7.1098750357648521
		 33 -1.2797775064376717 36 -10 39 -10 42 -5.9261200801132672 45 6.1606674806869801
		 48 10 51 10 57 17.838359160746808 60 -6.7072297337004425 63 -11.917161863977483 66 3.1770234042422572
		 69 6.1606674806869801 72 10 75 10 78 7.1098750357648521 81 -1.2797775064376717 84 -10
		 87 -10 90 -5.9261200801132672 93 6.1606674806869801 96 10 99 -16.907577603286626
		 105 -19.848067609340362 111 7.4468307640855009 114 11.652453932164679 117 6.1606674806869801
		 120 10 123 10 126 7.1098750357648521 129 -1.2797775064376717 132 -10 135 -10 138 -5.9261200801132672
		 141 6.1606674806869801 144 26.445182724252483 147 26.445182724252483 150 23.555057760017334
		 153 15.165405217814817 156 6.4451827242524908 159 6.4451827242524908 162 10.519062644139227
		 165 22.605850204939465 168 26.445182724252483 171 10 174 7.1098750357648521 177 -1.2797775064376717
		 180 -10 183 -10 186 -5.9261200801132672 189 6.1606674806869801 192 -19.19203134585684
		 195 -19.19203134585684 198 -22.082156310091982 201 -30.471808852294497 204 -39.192031345856833
		 207 -39.192031345856833 210 -35.118151425970098 213 -23.031363865169862 216 -19.19203134585684
		 219 10 222 7.1098750357648521 225 -1.2797775064376717 228 -10 231 -10 234 -5.9261200801132672
		 237 6.1606674806869801 240 10 243 10 246 7.1098750357648521 249 -1.2797775064376717
		 252 -10 255 6.1606674806869801 264 -17.488294533586171 267 10 270 7.1098750357648521
		 273 -1.2797775064376717 276 -10 279 -10 282 -5.9261200801132672 285 6.1606674806869801
		 288 10 291 10 294 7.1098750357648521 297 -1.2797775064376717 300 -10 303 -10 306 -5.9261200801132672
		 309 6.1606674806869801 312 10;
	setAttr -s 100 ".kit[0:99]"  1 18 18 18 18 18 18 18 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 1 18 18 18 18 18 1 18 18 18 18 
		18 18 18 1 18 18 18 18 18 18 18 1 18 18 18 18 18 
		18 18 1 18 18 18 18 18 18 18 1 18 18 18 18 18 18 
		18 1 18 18 18 18 1 1 18 18 18 18 18 18 18 1 18 
		18 18 18 18 18 18 1;
	setAttr -s 100 ".kot[0:99]"  1 18 18 18 18 18 18 18 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 1 18 18 18 18 18 1 18 18 18 18 
		18 18 18 1 18 18 18 18 18 18 18 1 18 18 18 18 18 
		18 18 1 18 18 18 18 18 18 18 1 18 18 18 18 18 18 
		18 1 18 18 18 18 1 1 18 18 18 18 18 18 18 1 18 
		18 18 18 18 18 18 1;
	setAttr -s 100 ".kix[0:99]"  1 1 0.78564512729644775 0.64192080497741699 
		1 1 0.66330015659332275 0.66871803998947144 1 1 0.78564512729644775 0.64192080497741699 
		1 1 0.66330015659332275 0.66871803998947144 1 1 1 0.43374708294868469 1 0.62476032972335815 
		0.90281039476394653 1 1 0.78564512729644775 0.64192080497741699 1 1 0.66330015659332275 
		0.66871803998947144 1 0.85147953033447266 1 0.56348520517349243 1 1 1 1 0.78564512729644775 
		0.64192080497741699 1 1 0.66330015659332275 0.40464469790458679 1 1 0.78564512729644775 
		0.64192080497741699 1 1 0.66330015659332275 0.66871803998947144 1 0.63685446977615356 
		0.78564512729644775 0.64192080497741699 1 1 0.66330015659332275 1 1 1 0.78564512729644775 
		0.64192080497741699 1 1 0.66330015659332275 0.66871803998947144 1 1 0.78564512729644775 
		0.64192080497741699 1 1 0.66330015659332275 0.66871803998947144 1 1 0.78564512729644775 
		0.64192080497741699 1 0.66871803998947144 1 1 0.78564512729644775 0.64192080497741699 
		1 1 0.66330015659332275 0.66871803998947144 1 1 0.78564512729644775 0.64192080497741699 
		1 1 0.66330015659332275 0.66871803998947144 1;
	setAttr -s 100 ".kiy[0:99]"  0 0 -0.61867749691009521 -0.76677089929580688 
		0 0 0.74835348129272461 0.74351608753204346 0 0 -0.61867749691009521 -0.76677089929580688 
		0 0 0.74835348129272461 0.74351608753204346 0 0 0 -0.9010346531867981 0 0.78081661462783813 
		0.4300389289855957 0 0 -0.61867749691009521 -0.76677089929580688 0 0 0.74835348129272461 
		0.74351608753204346 0 -0.52438777685165405 0 0.82612615823745728 0 0 0 0 -0.61867749691009521 
		-0.76677089929580688 0 0 0.74835348129272461 0.9144740104675293 0 0 -0.61867749691009521 
		-0.76677089929580688 0 0 0.74835348129272461 0.74351608753204346 0 -0.77098405361175537 
		-0.61867749691009521 -0.76677089929580688 0 0 0.74835348129272461 0 0 0 -0.61867749691009521 
		-0.76677089929580688 0 0 0.74835348129272461 0.74351608753204346 0 0 -0.61867749691009521 
		-0.76677089929580688 0 0 0.74835348129272461 0.74351608753204346 0 0 -0.61867749691009521 
		-0.76677089929580688 0 0.74351608753204346 0 0 -0.61867749691009521 -0.76677089929580688 
		0 0 0.74835348129272461 0.74351608753204346 0 0 -0.61867749691009521 -0.76677089929580688 
		0 0 0.74835348129272461 0.74351608753204346 0;
	setAttr -s 100 ".kox[0:99]"  1 1 0.78564512729644775 0.64192080497741699 
		1 1 0.66330015659332275 0.66871803998947144 1 1 0.78564512729644775 0.64192080497741699 
		1 1 0.66330015659332275 0.66871803998947144 1 1 1 0.43374708294868469 1 0.62476032972335815 
		0.90281039476394653 1 1 0.78564512729644775 0.64192080497741699 1 1 0.66330015659332275 
		0.66871803998947144 1 0.85147953033447266 1 0.56348520517349243 1 1 1 1 0.78564512729644775 
		0.64192080497741699 1 1 0.66330015659332275 0.40464469790458679 1 1 0.78564512729644775 
		0.64192080497741699 1 1 0.66330015659332275 0.66871803998947144 1 0.63685446977615356 
		0.78564512729644775 0.64192080497741699 1 1 0.66330015659332275 1 1 1 0.78564512729644775 
		0.64192080497741699 1 1 0.66330015659332275 0.66871803998947144 1 1 0.78564512729644775 
		0.64192080497741699 1 1 0.66330015659332275 0.66871803998947144 1 1 0.78564512729644775 
		0.64192080497741699 1 0.66871803998947144 1 1 0.78564512729644775 0.64192080497741699 
		1 1 0.66330015659332275 0.66871803998947144 1 1 0.78564512729644775 0.64192080497741699 
		1 1 0.66330015659332275 0.66871803998947144 1;
	setAttr -s 100 ".koy[0:99]"  0 0 -0.61867749691009521 -0.76677089929580688 
		0 0 0.74835348129272461 0.74351608753204346 0 0 -0.61867749691009521 -0.76677089929580688 
		0 0 0.74835348129272461 0.74351608753204346 0 0 0 -0.9010346531867981 0 0.78081661462783813 
		0.4300389289855957 0 0 -0.61867749691009521 -0.76677089929580688 0 0 0.74835348129272461 
		0.74351608753204346 0 -0.52438777685165405 0 0.82612615823745728 0 0 0 0 -0.61867749691009521 
		-0.76677089929580688 0 0 0.74835348129272461 0.9144740104675293 0 0 -0.61867749691009521 
		-0.76677089929580688 0 0 0.74835348129272461 0.74351608753204346 0 -0.77098405361175537 
		-0.61867749691009521 -0.76677089929580688 0 0 0.74835348129272461 0 0 0 -0.61867749691009521 
		-0.76677089929580688 0 0 0.74835348129272461 0.74351608753204346 0 0 -0.61867749691009521 
		-0.76677089929580688 0 0 0.74835348129272461 0.74351608753204346 0 0 -0.61867749691009521 
		-0.76677089929580688 0 0.74351608753204346 0 0 -0.61867749691009521 -0.76677089929580688 
		0 0 0.74835348129272461 0.74351608753204346 0 0 -0.61867749691009521 -0.76677089929580688 
		0 0 0.74835348129272461 0.74351608753204346 0;
createNode animCurveTA -n "Hips_Control_rotateZ";
	rename -uid "DEBD1A5F-D840-B676-5820-E89D6968E442";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 100 ".ktv[0:99]"  0 4.7436749227696398 3 1.2797775064376753
		 6 -1.706370008583562 9 -5.6879000286118808 12 -8 15 -3.5549375178824261 18 -0.084167707235741754
		 21 2.6593112008015738 24 4.7436749227696398 27 1.2797775064376753 30 -1.706370008583562
		 33 -5.6879000286118808 36 -8 39 -3.5549375178824261 42 -0.084167707235741754 45 2.6593112008015738
		 48 4.7436749227696398 51 1.2797775064376753 57 -8.5971387801337702 60 -22.541465382140828
		 63 -20.273070070058175 66 -9.1269864195022699 69 2.6593112008015738 72 4.7436749227696398
		 75 1.2797775064376753 78 -1.706370008583562 81 -5.6879000286118808 84 -8 87 -3.5549375178824261
		 90 -0.084167707235741754 93 2.6593112008015738 96 4.7436749227696398 99 -4.9663194427442265
		 105 13.891180329891359 111 18.849929287770578 114 17.583699723808671 117 2.6593112008015738
		 120 4.7436749227696398 123 1.2797775064376753 126 -1.706370008583562 129 -5.6879000286118808
		 132 -8 135 -3.5549375178824261 138 -0.084167707235741754 141 2.6593112008015738 144 -0.87509584134996388
		 147 -4.3389932576819268 150 -7.3251407727031559 153 -11.306670792731472 156 -13.618770764119592
		 159 -9.173708282002023 162 -5.7029384713553473 165 -2.9594595633180294 168 -0.87509584134996388
		 171 1.2797775064376753 174 -1.706370008583562 177 -5.6879000286118808 180 -8 183 -3.5549375178824261
		 186 -0.084167707235741754 189 2.6593112008015738 194 21.097637620106195 197 17.633740203774217
		 200 14.647592688752962 203 10.666062668724644 206 8.3539626973365255 209 12.799025179454096
		 212 16.269794990100795 215 19.01327389813812 218 21.097637620106195 219 1.2797775064376753
		 222 -1.706370008583562 225 -5.6879000286118808 228 -8 231 -3.5549375178824261 234 -0.084167707235741754
		 237 2.6593112008015738 240 4.7436749227696398 243 1.2797775064376753 246 -1.706370008583562
		 249 -5.6879000286118808 252 -8 255 2.6593112008015738 264 0 267 1.2797775064376753
		 270 -1.706370008583562 273 -5.6879000286118808 276 -8 279 -3.5549375178824261 282 -0.084167707235741754
		 285 2.6593112008015738 288 4.7436749227696398 291 1.2797775064376753 294 -1.706370008583562
		 297 -5.6879000286118808 300 -8 303 -3.5549375178824261 306 -0.084167707235741754
		 309 2.6593112008015738 312 4.7436749227696398;
	setAttr -s 100 ".kit[0:99]"  1 18 18 18 18 18 18 18 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 1 18 18 18 18 18 1 18 18 18 18 
		18 18 18 1 18 18 18 18 18 18 18 1 18 18 18 18 18 
		18 18 1 18 18 18 18 18 18 18 1 18 18 18 18 18 18 
		18 1 18 18 18 18 1 1 18 18 18 18 18 18 18 1 18 
		18 18 18 18 18 18 1;
	setAttr -s 100 ".kot[0:99]"  1 18 18 18 18 18 18 18 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 18 1 18 18 18 18 18 1 18 18 18 18 
		18 18 18 1 18 18 18 18 18 18 18 1 18 18 18 18 18 
		18 18 1 18 18 18 18 18 18 18 1 18 18 18 18 18 18 
		18 1 18 18 18 18 1 1 18 18 18 18 18 18 18 1 18 
		18 18 18 18 18 18 1;
	setAttr -s 100 ".kix[0:99]"  1 0.91181981563568115 0.89925312995910645 
		0.91552472114562988 1 0.87524235248565674 0.91738712787628174 0.94762223958969116 
		1 0.91181981563568115 0.89925312995910645 0.91552472114562988 1 0.87524235248565674 
		0.91738712787628174 0.94762223958969116 1 0.84955638647079468 0.66977030038833618 
		1 0.72989863157272339 0.52976506948471069 0.75328695774078369 1 0.91181981563568115 
		0.89925312995910645 0.91552472114562988 1 0.87524235248565674 0.91738712787628174 
		0.94762223958969116 1 1 0.76897311210632324 1 0.88342767953872681 1 1 0.91181981563568115 
		0.89925312995910645 0.91552472114562988 1 0.87524235248565674 0.91738712787628174 
		1 1 0.91181981563568115 0.89925312995910645 0.91552472114562988 1 0.87524235248565674 
		0.91738712787628174 0.94762223958969116 1 1 0.89925312995910645 0.91552472114562988 
		1 0.87524235248565674 0.91738712787628174 0.66964149475097656 1 0.91181981563568115 
		0.89925312995910645 0.91552472114562988 1 0.87524235248565674 0.91738712787628174 
		0.94762223958969116 1 0.62444078922271729 0.89925312995910645 0.91552472114562988 
		1 0.87524235248565674 0.91738712787628174 0.94762223958969116 1 0.91181981563568115 
		0.89925312995910645 0.91552472114562988 1 0.94762223958969116 1 1 0.89925312995910645 
		0.91552472114562988 1 0.87524235248565674 0.91738712787628174 0.94762223958969116 
		1 0.91181981563568115 0.89925312995910645 0.91552472114562988 1 0.87524235248565674 
		0.91738712787628174 0.94762223958969116 1;
	setAttr -s 100 ".kiy[0:99]"  0 -0.41059067845344543 -0.43742877244949341 
		-0.40226167440414429 0 0.48368459939956665 0.39799591898918152 0.31939324736595154 
		0 -0.41059067845344543 -0.43742877244949341 -0.40226167440414429 0 0.48368459939956665 
		0.39799591898918152 0.31939324736595154 0 -0.52749776840209961 -0.74256831407546997 
		0 0.68355536460876465 0.84814447164535522 0.65769201517105103 0 -0.41059067845344543 
		-0.43742877244949341 -0.40226167440414429 0 0.48368459939956665 0.39799591898918152 
		0.31939324736595154 0 0 0.63928109407424927 0 -0.46856740117073059 0 0 -0.41059067845344543 
		-0.43742877244949341 -0.40226167440414429 0 0.48368459939956665 0.39799591898918152 
		0 0 -0.41059067845344543 -0.43742877244949341 -0.40226167440414429 0 0.48368459939956665 
		0.39799591898918152 0.31939324736595154 0 0 -0.43742877244949341 -0.40226167440414429 
		0 0.48368459939956665 0.39799591898918152 0.74268454313278198 0 -0.41059067845344543 
		-0.43742877244949341 -0.40226167440414429 0 0.48368459939956665 0.39799591898918152 
		0.31939324736595154 0 -0.78107208013534546 -0.43742877244949341 -0.40226167440414429 
		0 0.48368459939956665 0.39799591898918152 0.31939324736595154 0 -0.41059067845344543 
		-0.43742877244949341 -0.40226167440414429 0 0.31939324736595154 0 0 -0.43742877244949341 
		-0.40226167440414429 0 0.48368459939956665 0.39799591898918152 0.31939324736595154 
		0 -0.41059067845344543 -0.43742877244949341 -0.40226167440414429 0 0.48368459939956665 
		0.39799591898918152 0.31939324736595154 0;
	setAttr -s 100 ".kox[0:99]"  1 0.91181981563568115 0.89925312995910645 
		0.91552472114562988 1 0.87524235248565674 0.91738712787628174 0.94762223958969116 
		1 0.91181981563568115 0.89925312995910645 0.91552472114562988 1 0.87524235248565674 
		0.91738712787628174 0.94762223958969116 1 0.84955638647079468 0.66977030038833618 
		1 0.72989863157272339 0.52976506948471069 0.75328695774078369 1 0.91181981563568115 
		0.89925312995910645 0.91552472114562988 1 0.87524235248565674 0.91738712787628174 
		0.94762223958969116 1 1 0.76897311210632324 1 0.88342767953872681 1 1 0.91181981563568115 
		0.89925312995910645 0.91552472114562988 1 0.87524235248565674 0.91738712787628174 
		1 1 0.91181981563568115 0.89925312995910645 0.91552472114562988 1 0.87524235248565674 
		0.91738712787628174 0.94762223958969116 1 1 0.89925312995910645 0.91552472114562988 
		1 0.87524235248565674 0.91738712787628174 0.66964149475097656 1 0.91181981563568115 
		0.89925312995910645 0.91552472114562988 1 0.87524235248565674 0.91738712787628174 
		0.94762223958969116 1 0.62444078922271729 0.89925312995910645 0.91552472114562988 
		1 0.87524235248565674 0.91738712787628174 0.94762223958969116 1 0.91181981563568115 
		0.89925312995910645 0.91552472114562988 1 0.94762223958969116 1 1 0.89925312995910645 
		0.91552472114562988 1 0.87524235248565674 0.91738712787628174 0.94762223958969116 
		1 0.91181981563568115 0.89925312995910645 0.91552472114562988 1 0.87524235248565674 
		0.91738712787628174 0.94762223958969116 1;
	setAttr -s 100 ".koy[0:99]"  0 -0.41059067845344543 -0.43742877244949341 
		-0.40226167440414429 0 0.48368459939956665 0.39799591898918152 0.31939324736595154 
		0 -0.41059067845344543 -0.43742877244949341 -0.40226167440414429 0 0.48368459939956665 
		0.39799591898918152 0.31939324736595154 0 -0.52749776840209961 -0.74256831407546997 
		0 0.68355536460876465 0.84814447164535522 0.65769201517105103 0 -0.41059067845344543 
		-0.43742877244949341 -0.40226167440414429 0 0.48368459939956665 0.39799591898918152 
		0.31939324736595154 0 0 0.63928109407424927 0 -0.46856740117073059 0 0 -0.41059067845344543 
		-0.43742877244949341 -0.40226167440414429 0 0.48368459939956665 0.39799591898918152 
		0 0 -0.41059067845344543 -0.43742877244949341 -0.40226167440414429 0 0.48368459939956665 
		0.39799591898918152 0.31939324736595154 0 0 -0.43742877244949341 -0.40226167440414429 
		0 0.48368459939956665 0.39799591898918152 0.74268454313278198 0 -0.41059067845344543 
		-0.43742877244949341 -0.40226167440414429 0 0.48368459939956665 0.39799591898918152 
		0.31939324736595154 0 -0.78107213973999023 -0.43742877244949341 -0.40226167440414429 
		0 0.48368459939956665 0.39799591898918152 0.31939324736595154 0 -0.41059067845344543 
		-0.43742877244949341 -0.40226167440414429 0 0.31939324736595154 0 0 -0.43742877244949341 
		-0.40226167440414429 0 0.48368459939956665 0.39799591898918152 0.31939324736595154 
		0 -0.41059067845344543 -0.43742877244949341 -0.40226167440414429 0 0.48368459939956665 
		0.39799591898918152 0.31939324736595154 0;
createNode animCurveTU -n "Hips_Control_scaleX";
	rename -uid "4D4FC726-BF47-146F-0BD7-77AC19AA87B5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 99 ".ktv[0:98]"  0 1 3 1 6 1 9 1 12 1 15 1 18 1 21 1 24 1
		 27 1 30 1 33 1 36 1 39 1 42 1 45 1 48 1 51 1 60 1 63 1 66 1 69 1 72 1 75 1 78 1 81 1
		 84 1 87 1 90 1 93 1 96 1 99 1 105 1 111 1 114 1 117 1 120 1 123 1 126 1 129 1 132 1
		 135 1 138 1 141 1 144 1 147 1 150 1 153 1 156 1 159 1 162 1 165 1 168 1 171 1 174 1
		 177 1 180 1 183 1 186 1 189 1 192 1 195 1 198 1 201 1 204 1 207 1 210 1 213 1 216 1
		 219 1 222 1 225 1 228 1 231 1 234 1 237 1 240 1 243 1 246 1 249 1 252 1 255 1 264 1
		 267 1 270 1 273 1 276 1 279 1 282 1 285 1 288 1 291 1 294 1 297 1 300 1 303 1 306 1
		 309 1 312 1;
	setAttr -s 99 ".kit[0:98]"  1 18 18 18 18 18 18 18 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 1 18 18 18 18 18 1 18 18 18 18 18 
		18 18 1 18 18 18 18 18 18 18 1 18 18 18 18 18 18 
		18 1 18 18 18 18 18 18 18 1 18 18 18 18 18 18 18 
		1 18 18 18 18 1 1 18 18 18 18 18 18 18 1 18 18 
		18 18 18 18 18 1;
	setAttr -s 99 ".kot[0:98]"  1 18 18 18 18 18 18 18 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 1 18 18 18 18 18 1 18 18 18 18 18 
		18 18 1 18 18 18 18 18 18 18 1 18 18 18 18 18 18 
		18 1 18 18 18 18 18 18 18 1 18 18 18 18 18 18 18 
		1 18 18 18 18 1 1 18 18 18 18 18 18 18 1 18 18 
		18 18 18 18 18 1;
	setAttr -s 99 ".kix[0:98]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 99 ".kiy[0:98]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 99 ".kox[0:98]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 99 ".koy[0:98]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "Hips_Control_scaleY";
	rename -uid "C73E2E1C-BC4C-180E-3AE3-62BB396E4AE4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 99 ".ktv[0:98]"  0 1 3 1 6 1 9 1 12 1 15 1 18 1 21 1 24 1
		 27 1 30 1 33 1 36 1 39 1 42 1 45 1 48 1 51 1 60 1 63 1 66 1 69 1 72 1 75 1 78 1 81 1
		 84 1 87 1 90 1 93 1 96 1 99 1 105 1 111 1 114 1 117 1 120 1 123 1 126 1 129 1 132 1
		 135 1 138 1 141 1 144 1 147 1 150 1 153 1 156 1 159 1 162 1 165 1 168 1 171 1 174 1
		 177 1 180 1 183 1 186 1 189 1 192 1 195 1 198 1 201 1 204 1 207 1 210 1 213 1 216 1
		 219 1 222 1 225 1 228 1 231 1 234 1 237 1 240 1 243 1 246 1 249 1 252 1 255 1 264 1
		 267 1 270 1 273 1 276 1 279 1 282 1 285 1 288 1 291 1 294 1 297 1 300 1 303 1 306 1
		 309 1 312 1;
	setAttr -s 99 ".kit[0:98]"  1 18 18 18 18 18 18 18 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 1 18 18 18 18 18 1 18 18 18 18 18 
		18 18 1 18 18 18 18 18 18 18 1 18 18 18 18 18 18 
		18 1 18 18 18 18 18 18 18 1 18 18 18 18 18 18 18 
		1 18 18 18 18 1 1 18 18 18 18 18 18 18 1 18 18 
		18 18 18 18 18 1;
	setAttr -s 99 ".kot[0:98]"  1 18 18 18 18 18 18 18 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 1 18 18 18 18 18 1 18 18 18 18 18 
		18 18 1 18 18 18 18 18 18 18 1 18 18 18 18 18 18 
		18 1 18 18 18 18 18 18 18 1 18 18 18 18 18 18 18 
		1 18 18 18 18 1 1 18 18 18 18 18 18 18 1 18 18 
		18 18 18 18 18 1;
	setAttr -s 99 ".kix[0:98]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 99 ".kiy[0:98]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 99 ".kox[0:98]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 99 ".koy[0:98]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "Hips_Control_scaleZ";
	rename -uid "7E63499D-F64C-7D3F-10BE-A08E1D893354";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 99 ".ktv[0:98]"  0 1 3 1 6 1 9 1 12 1 15 1 18 1 21 1 24 1
		 27 1 30 1 33 1 36 1 39 1 42 1 45 1 48 1 51 1 60 1 63 1 66 1 69 1 72 1 75 1 78 1 81 1
		 84 1 87 1 90 1 93 1 96 1 99 1 105 1 111 1 114 1 117 1 120 1 123 1 126 1 129 1 132 1
		 135 1 138 1 141 1 144 1 147 1 150 1 153 1 156 1 159 1 162 1 165 1 168 1 171 1 174 1
		 177 1 180 1 183 1 186 1 189 1 192 1 195 1 198 1 201 1 204 1 207 1 210 1 213 1 216 1
		 219 1 222 1 225 1 228 1 231 1 234 1 237 1 240 1 243 1 246 1 249 1 252 1 255 1 264 1
		 267 1 270 1 273 1 276 1 279 1 282 1 285 1 288 1 291 1 294 1 297 1 300 1 303 1 306 1
		 309 1 312 1;
	setAttr -s 99 ".kit[0:98]"  1 18 18 18 18 18 18 18 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 1 18 18 18 18 18 1 18 18 18 18 18 
		18 18 1 18 18 18 18 18 18 18 1 18 18 18 18 18 18 
		18 1 18 18 18 18 18 18 18 1 18 18 18 18 18 18 18 
		1 18 18 18 18 1 1 18 18 18 18 18 18 18 1 18 18 
		18 18 18 18 18 1;
	setAttr -s 99 ".kot[0:98]"  1 18 18 18 18 18 18 18 
		1 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18 1 18 18 18 18 18 1 18 18 18 18 18 
		18 18 1 18 18 18 18 18 18 18 1 18 18 18 18 18 18 
		18 1 18 18 18 18 18 18 18 1 18 18 18 18 18 18 18 
		1 18 18 18 18 1 1 18 18 18 18 18 18 18 1 18 18 
		18 18 18 18 18 1;
	setAttr -s 99 ".kix[0:98]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 99 ".kiy[0:98]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 99 ".kox[0:98]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 99 ".koy[0:98]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "Spine1_Control_visibility";
	rename -uid "F44D2611-AE46-228D-F5AA-4FA7A495E228";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 51 ".ktv[0:50]"  0 1 6 1 12 1 18 1 24 1 30 1 36 1 42 1 48 1
		 60 1 72 1 78 1 84 1 90 1 96 1 102 1 108 1 114 1 120 1 126 1 132 1 138 1 144 1 150 1
		 156 1 162 1 168 1 174 1 180 1 186 1 192 1 198 1 204 1 210 1 216 1 222 1 228 1 234 1
		 240 1 246 1 252 1 255 1 264 1 270 1 276 1 282 1 288 1 294 1 300 1 306 1 312 1;
	setAttr -s 51 ".kit[0:50]"  9 9 9 9 9 9 9 9 
		9 9 9 9 9 9 9 9 9 9 9 9 9 9 1 9 9 
		9 1 9 9 9 1 9 9 9 9 9 9 9 1 9 9 1 
		1 9 9 9 1 9 9 9 1;
	setAttr -s 51 ".kix[22:50]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1;
	setAttr -s 51 ".kiy[22:50]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Spine1_Control_translateX";
	rename -uid "C8D620AB-FE49-50E0-D9D1-76A1DBDA60DE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 51 ".ktv[0:50]"  0 0 6 0 12 0 18 0 24 0 30 0 36 0 42 0 48 0
		 60 0 72 0 78 0 84 0 90 0 96 0 102 0 108 0 114 0 120 0 126 0 132 0 138 0 144 0 150 0
		 156 0 162 0 168 0 174 0 180 0 186 0 192 0 198 0 204 0 210 0 216 0 222 0 228 0 234 0
		 240 0 246 0 252 0 255 0 264 0 270 0 276 0 282 0 288 0 294 0 300 0 306 0 312 0;
	setAttr -s 51 ".kit[22:50]"  1 18 18 18 1 18 18 18 
		1 18 18 18 18 18 18 18 1 18 18 1 1 18 18 18 1 
		18 18 18 1;
	setAttr -s 51 ".kot[14:50]"  1 18 18 18 1 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 1 18 18 18 18 
		18 18 1 18 18 18 18 18 18 18 18 18;
	setAttr -s 51 ".kix[22:50]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1;
	setAttr -s 51 ".kiy[22:50]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0;
	setAttr -s 51 ".kox[14:50]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 51 ".koy[14:50]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Spine1_Control_translateY";
	rename -uid "C5A2699A-8042-6C47-5C8B-C0A15198FE80";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 51 ".ktv[0:50]"  0 0 6 0 12 0 18 0 24 0 30 0 36 0 42 0 48 0
		 60 0 72 0 78 0 84 0 90 0 96 0 102 0 108 0 114 0 120 0 126 0 132 0 138 0 144 0 150 0
		 156 0 162 0 168 0 174 0 180 0 186 0 192 0 198 0 204 0 210 0 216 0 222 0 228 0 234 0
		 240 0 246 0 252 0 255 0 264 0 270 0 276 0 282 0 288 0 294 0 300 0 306 0 312 0;
	setAttr -s 51 ".kit[22:50]"  1 18 18 18 1 18 18 18 
		1 18 18 18 18 18 18 18 1 18 18 1 1 18 18 18 1 
		18 18 18 1;
	setAttr -s 51 ".kot[14:50]"  1 18 18 18 1 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 1 18 18 18 18 
		18 18 1 18 18 18 18 18 18 18 18 18;
	setAttr -s 51 ".kix[22:50]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1;
	setAttr -s 51 ".kiy[22:50]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0;
	setAttr -s 51 ".kox[14:50]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 51 ".koy[14:50]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Spine1_Control_translateZ";
	rename -uid "677AFA33-F342-2A5E-B1DA-2EA7CD5E5C74";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 51 ".ktv[0:50]"  0 0 6 0 12 0 18 0 24 0 30 0 36 0 42 0 48 0
		 60 0 72 0 78 0 84 0 90 0 96 0 102 0 108 0 114 0 120 0 126 0 132 0 138 0 144 0 150 0
		 156 0 162 0 168 0 174 0 180 0 186 0 192 0 198 0 204 0 210 0 216 0 222 0 228 0 234 0
		 240 0 246 0 252 0 255 0 264 0 270 0 276 0 282 0 288 0 294 0 300 0 306 0 312 0;
	setAttr -s 51 ".kit[22:50]"  1 18 18 18 1 18 18 18 
		1 18 18 18 18 18 18 18 1 18 18 1 1 18 18 18 1 
		18 18 18 1;
	setAttr -s 51 ".kot[14:50]"  1 18 18 18 1 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 1 18 18 18 18 
		18 18 1 18 18 18 18 18 18 18 18 18;
	setAttr -s 51 ".kix[22:50]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1;
	setAttr -s 51 ".kiy[22:50]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0;
	setAttr -s 51 ".kox[14:50]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 51 ".koy[14:50]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Spine1_Control_rotateX";
	rename -uid "609A6F3C-094E-1B67-D5A4-C1BCF1254E8D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 57 ".ktv[0:56]"  0 0 3 -2.4588925520258651 6 9.1860800712806281
		 9 11.495362714777523 12 0 15 -3.1964446078476754 18 5.6089272342268481 21 11.419988096277651
		 24 0 30 0 36 0 42 0 48 0 54 12.124659247737688 60 13.842443276719123 63 0 72 0 78 0
		 84 0 90 0 96 0 102 13.611877754446528 108 4.5212534466191174 114 0 120 0 126 0 132 0
		 138 0 144 0 150 0 156 0 162 0 168 0 174 0 180 0 186 0 192 0 198 0 204 0 210 0 216 0
		 222 0 228 0 234 0 240 0 246 0 252 0 255 0 264 0 270 0 276 0 282 0 288 0 294 0 300 0
		 306 0 312 0;
	setAttr -s 57 ".kit[28:56]"  1 18 18 18 1 18 18 18 
		1 18 18 18 18 18 18 18 1 18 18 1 1 18 18 18 1 
		18 18 18 1;
	setAttr -s 57 ".kot[20:56]"  1 18 18 18 1 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 1 18 18 18 18 
		18 18 1 18 18 18 18 18 18 18 18 18;
	setAttr -s 57 ".kix[28:56]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1;
	setAttr -s 57 ".kiy[28:56]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0;
	setAttr -s 57 ".kox[20:56]"  1 1 0.90322703123092651 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 57 ".koy[20:56]"  0 0 -0.42916306853294373 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Spine1_Control_rotateY";
	rename -uid "AE193185-7442-FE6C-6FBB-BEB3883843BB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 53 ".ktv[0:52]"  0 -8 6 0 12 8 18 0 24 -8 30 0 36 8 42 0
		 48 -8 54 23.590601806631661 60 18.906760630351783 63 0 72 -8 78 0 84 8 90 0 96 -8
		 102 -5.0354709325934914 108 -7.616840587758233 114 0 120 -8 126 0 132 8 138 0 144 -8
		 150 0 156 8 162 0 168 -8 174 0 180 8 186 0 194 -19.388378082511668 200 -11.388378082511661
		 206 -3.3883780825116614 212 -11.388378082511661 218 -19.388378082511668 222 0 228 8
		 234 0 240 -8 246 0 252 8 255 -5.0000000047435336 264 0 270 0 276 8 282 0 288 -8 294 0
		 300 8 306 0 312 -8;
	setAttr -s 53 ".kit[24:52]"  1 18 18 18 1 18 18 18 
		1 18 18 18 18 18 18 18 1 18 18 1 1 18 18 18 1 
		18 18 18 1;
	setAttr -s 53 ".kot[16:52]"  1 18 18 18 1 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 1 18 18 18 18 
		18 18 1 18 18 18 18 18 18 18 18 18;
	setAttr -s 53 ".kix[24:52]"  1 0.87306177616119385 1 0.87306177616119385 
		1 0.87306177616119385 1 0.77347302436828613 1 0.87306177616119385 1 0.87306177616119385 
		1 0.65707594156265259 1 0.87306177616119385 1 0.87306177616119385 1 0.87306177616119385 
		1 1 1 0.87306177616119385 1 0.87306177616119385 1 0.87306177616119385 1;
	setAttr -s 53 ".kiy[24:52]"  0 0.48760968446731567 0 -0.48760968446731567 
		0 0.48760968446731567 0 -0.63382923603057861 0 0.48760968446731567 0 -0.48760968446731567 
		0 0.75382435321807861 0 -0.48760968446731567 0 0.48760968446731567 0 -0.48760968446731567 
		0 0 0 -0.48760968446731567 0 0.48760968446731567 0 -0.48760968446731567 0;
	setAttr -s 53 ".kox[16:52]"  1 1 1 1 1 0.87306177616119385 1 0.87306177616119385 
		1 0.87306177616119385 1 0.87306177616119385 1 0.87306177616119385 1 0.77347296476364136 
		1 0.87306177616119385 1 0.87306177616119385 1 0.65707594156265259 1 0.87306177616119385 
		1 0.87306177616119385 1 0.87306177616119385 1 1 1 0.87306177616119385 1 0.87306177616119385 
		1 0.87306177616119385 1;
	setAttr -s 53 ".koy[16:52]"  0 0 0 0 0 0.48760968446731567 0 -0.48760968446731567 
		0 0.48760968446731567 0 -0.48760968446731567 0 0.48760968446731567 0 -0.63382923603057861 
		0 0.48760968446731567 0 -0.48760968446731567 0 0.75382435321807861 0 -0.48760968446731567 
		0 0.48760968446731567 0 -0.48760968446731567 0 0 0 -0.48760968446731567 0 0.48760968446731567 
		0 -0.48760968446731567 0;
createNode animCurveTA -n "Spine1_Control_rotateZ";
	rename -uid "436DC7BD-8B45-84A5-B01E-EBA346AD4F00";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 53 ".ktv[0:52]"  0 0 6 0 12 0 18 0 24 0 30 0 36 0 42 0 48 0
		 54 -16.414344354484975 60 -1.5618180592034336 63 0 72 0 78 0 84 0 90 0 96 0 102 12.409106712638858
		 108 9.6209041545316616 114 0 120 0 126 0 132 0 138 0 144 -12.470930232558141 150 -12.470930232558141
		 156 -12.470930232558141 162 -12.470930232558141 168 -12.470930232558141 174 0 180 0
		 186 0 192 0 198 0 204 0 210 0 216 0 222 0 228 0 234 0 240 0 246 0 252 0 255 0 264 0
		 270 0 276 0 282 0 288 0 294 0 300 0 306 0 312 0;
	setAttr -s 53 ".kit[24:52]"  1 18 18 18 1 18 18 18 
		1 18 18 18 18 18 18 18 1 18 18 1 1 18 18 18 1 
		18 18 18 1;
	setAttr -s 53 ".kot[16:52]"  1 18 18 18 1 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 1 18 18 18 18 
		18 18 1 18 18 18 18 18 18 18 18 18;
	setAttr -s 53 ".kix[24:52]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1;
	setAttr -s 53 ".kiy[24:52]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0;
	setAttr -s 53 ".kox[16:52]"  1 1 0.91761380434036255 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 53 ".koy[16:52]"  0 0 -0.39747315645217896 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "Spine1_Control_scaleX";
	rename -uid "F75C34E4-0D4C-67A8-0801-43830992C024";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 51 ".ktv[0:50]"  0 1 6 1 12 1 18 1 24 1 30 1 36 1 42 1 48 1
		 60 1 72 1 78 1 84 1 90 1 96 1 102 1 108 1 114 1 120 1 126 1 132 1 138 1 144 1 150 1
		 156 1 162 1 168 1 174 1 180 1 186 1 192 1 198 1 204 1 210 1 216 1 222 1 228 1 234 1
		 240 1 246 1 252 1 255 1 264 1 270 1 276 1 282 1 288 1 294 1 300 1 306 1 312 1;
	setAttr -s 51 ".kit[22:50]"  1 18 18 18 1 18 18 18 
		1 18 18 18 18 18 18 18 1 18 18 1 1 18 18 18 1 
		18 18 18 1;
	setAttr -s 51 ".kot[14:50]"  1 18 18 18 1 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 1 18 18 18 18 
		18 18 1 18 18 18 18 18 18 18 18 18;
	setAttr -s 51 ".kix[22:50]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1;
	setAttr -s 51 ".kiy[22:50]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0;
	setAttr -s 51 ".kox[14:50]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 51 ".koy[14:50]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "Spine1_Control_scaleY";
	rename -uid "281D0FC3-6341-E1E2-44CF-5AAAE9931A36";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 51 ".ktv[0:50]"  0 1 6 1 12 1 18 1 24 1 30 1 36 1 42 1 48 1
		 60 1 72 1 78 1 84 1 90 1 96 1 102 1 108 1 114 1 120 1 126 1 132 1 138 1 144 1 150 1
		 156 1 162 1 168 1 174 1 180 1 186 1 192 1 198 1 204 1 210 1 216 1 222 1 228 1 234 1
		 240 1 246 1 252 1 255 1 264 1 270 1 276 1 282 1 288 1 294 1 300 1 306 1 312 1;
	setAttr -s 51 ".kit[22:50]"  1 18 18 18 1 18 18 18 
		1 18 18 18 18 18 18 18 1 18 18 1 1 18 18 18 1 
		18 18 18 1;
	setAttr -s 51 ".kot[14:50]"  1 18 18 18 1 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 1 18 18 18 18 
		18 18 1 18 18 18 18 18 18 18 18 18;
	setAttr -s 51 ".kix[22:50]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1;
	setAttr -s 51 ".kiy[22:50]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0;
	setAttr -s 51 ".kox[14:50]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 51 ".koy[14:50]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "Spine1_Control_scaleZ";
	rename -uid "B4EEB4C4-4348-3624-9CCF-C0B183432EAE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 51 ".ktv[0:50]"  0 1 6 1 12 1 18 1 24 1 30 1 36 1 42 1 48 1
		 60 1 72 1 78 1 84 1 90 1 96 1 102 1 108 1 114 1 120 1 126 1 132 1 138 1 144 1 150 1
		 156 1 162 1 168 1 174 1 180 1 186 1 192 1 198 1 204 1 210 1 216 1 222 1 228 1 234 1
		 240 1 246 1 252 1 255 1 264 1 270 1 276 1 282 1 288 1 294 1 300 1 306 1 312 1;
	setAttr -s 51 ".kit[22:50]"  1 18 18 18 1 18 18 18 
		1 18 18 18 18 18 18 18 1 18 18 1 1 18 18 18 1 
		18 18 18 1;
	setAttr -s 51 ".kot[14:50]"  1 18 18 18 1 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 1 18 18 18 18 
		18 18 1 18 18 18 18 18 18 18 18 18;
	setAttr -s 51 ".kix[22:50]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1;
	setAttr -s 51 ".kiy[22:50]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0;
	setAttr -s 51 ".kox[14:50]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 51 ".koy[14:50]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "Spine2_Control_visibility";
	rename -uid "D1459343-3048-D48A-3F31-1DB65C38482E";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 1 12 1 24 1 36 1 48 1 60 1 72 1 84 1 96 1
		 108 1 120 1 132 1 144 1 156 1 168 1 180 1 192 1 204 1 216 1 228 1 240 1 252 1 255 1
		 264 1 276 1 288 1 300 1 312 1;
	setAttr -s 28 ".kit[0:27]"  9 9 9 9 9 9 9 9 
		9 9 9 9 1 9 1 9 1 9 9 9 1 9 1 1 9 
		1 9 1;
	setAttr -s 28 ".kix[12:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".kiy[12:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Spine2_Control_translateX";
	rename -uid "2EEEB436-D747-A133-7D26-F485E26188C2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 0 12 0 24 0 36 0 48 0 60 0 72 0 84 0 96 0
		 108 0 120 0 132 0 144 0 156 0 168 0 180 0 192 0 204 0 216 0 228 0 240 0 252 0 255 0
		 264 0 276 0 288 0 300 0 312 0;
	setAttr -s 28 ".kit[12:27]"  1 18 1 18 1 18 18 18 
		1 18 1 1 18 1 18 1;
	setAttr -s 28 ".kot[8:27]"  1 18 1 18 18 18 18 18 
		18 18 1 18 18 18 1 18 18 18 18 18;
	setAttr -s 28 ".kix[12:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".kiy[12:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 28 ".kox[8:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".koy[8:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Spine2_Control_translateY";
	rename -uid "C692A1E6-6344-C338-F50D-EBA6783F17D5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 0 12 0 24 0 36 0 48 0 60 0 72 0 84 0 96 0
		 108 0 120 0 132 0 144 0 156 0 168 0 180 0 192 0 204 0 216 0 228 0 240 0 252 0 255 0
		 264 0 276 0 288 0 300 0 312 0;
	setAttr -s 28 ".kit[12:27]"  1 18 1 18 1 18 18 18 
		1 18 1 1 18 1 18 1;
	setAttr -s 28 ".kot[8:27]"  1 18 1 18 18 18 18 18 
		18 18 1 18 18 18 1 18 18 18 18 18;
	setAttr -s 28 ".kix[12:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".kiy[12:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 28 ".kox[8:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".koy[8:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Spine2_Control_translateZ";
	rename -uid "3ADA28D0-684B-BDCE-C20E-2E99BD30C5D6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 0 12 0 24 0 36 0 48 0 60 0 72 0 84 0 96 0
		 108 0 120 0 132 0 144 0 156 0 168 0 180 0 192 0 204 0 216 0 228 0 240 0 252 0 255 0
		 264 0 276 0 288 0 300 0 312 0;
	setAttr -s 28 ".kit[12:27]"  1 18 1 18 1 18 18 18 
		1 18 1 1 18 1 18 1;
	setAttr -s 28 ".kot[8:27]"  1 18 1 18 18 18 18 18 
		18 18 1 18 18 18 1 18 18 18 18 18;
	setAttr -s 28 ".kix[12:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".kiy[12:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 28 ".kox[8:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".koy[8:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Spine2_Control_rotateX";
	rename -uid "40E7B74F-E542-11D1-9779-87805D126C14";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 -0.42586799105454476 12 -0.42586799105454476
		 24 -0.42586799105454476 36 -0.42586799105454476 48 -0.42586799105454476 60 -0.42586799105454476
		 72 -0.42586799105454476 84 -0.42586799105454476 96 -0.42586799105454476 108 -0.42586799105454476
		 120 -0.42586799105454476 132 -0.42586799105454476 144 -0.42586799105454476 156 -0.42586799105454476
		 168 -0.42586799105454476 180 -0.42586799105454476 192 -0.42586799105454476 204 -0.42586799105454476
		 216 -0.42586799105454476 228 -0.42586799105454476 240 -0.42586799105454476 252 -0.42586799105454476
		 255 -0.42586799105454476 264 0 276 -0.42586799105454476 288 -0.42586799105454476
		 300 -0.42586799105454476 312 -0.42586799105454476;
	setAttr -s 28 ".kit[12:27]"  1 18 1 18 1 18 18 18 
		1 18 1 1 18 1 18 1;
	setAttr -s 28 ".kot[8:27]"  1 18 1 18 18 18 18 18 
		18 18 1 18 18 18 1 18 18 18 18 18;
	setAttr -s 28 ".kix[12:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".kiy[12:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 28 ".kox[8:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".koy[8:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Spine2_Control_rotateY";
	rename -uid "799D5C70-7D44-5105-557A-53B63CF79FAC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 0.1865043062394306 12 0.1865043062394306
		 24 0.1865043062394306 36 0.1865043062394306 48 0.1865043062394306 60 0.1865043062394306
		 72 0.1865043062394306 84 0.1865043062394306 96 0.1865043062394306 108 0.1865043062394306
		 120 0.1865043062394306 132 0.1865043062394306 144 0.1865043062394306 156 0.1865043062394306
		 168 0.1865043062394306 180 0.1865043062394306 192 0.1865043062394306 204 0.1865043062394306
		 216 0.1865043062394306 228 0.1865043062394306 240 0.1865043062394306 252 0.1865043062394306
		 255 0.1865043062394306 264 0 276 0.1865043062394306 288 0.1865043062394306 300 0.1865043062394306
		 312 0.1865043062394306;
	setAttr -s 28 ".kit[12:27]"  1 18 1 18 1 18 18 18 
		1 18 1 1 18 1 18 1;
	setAttr -s 28 ".kot[8:27]"  1 18 1 18 18 18 18 18 
		18 18 1 18 18 18 1 18 18 18 18 18;
	setAttr -s 28 ".kix[12:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".kiy[12:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 28 ".kox[8:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".koy[8:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Spine2_Control_rotateZ";
	rename -uid "0592B8E8-174A-4E9C-057C-D2A3A8780849";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 -1.7336992283006349 12 -1.7336992283006349
		 24 -1.7336992283006349 36 -1.7336992283006349 48 -1.7336992283006349 60 -1.7336992283006349
		 72 -1.7336992283006349 84 -1.7336992283006349 96 -1.7336992283006349 108 -1.7336992283006349
		 120 -1.7336992283006349 132 -1.7336992283006349 144 -1.7336992283006349 156 -1.7336992283006349
		 168 -1.7336992283006349 180 -1.7336992283006349 192 -1.7336992283006349 204 -1.7336992283006349
		 216 -1.7336992283006349 228 -1.7336992283006349 240 -1.7336992283006349 252 -1.7336992283006349
		 255 -1.7336992283006349 264 0 276 -1.7336992283006349 288 -1.7336992283006349 300 -1.7336992283006349
		 312 -1.7336992283006349;
	setAttr -s 28 ".kit[12:27]"  1 18 1 18 1 18 18 18 
		1 18 1 1 18 1 18 1;
	setAttr -s 28 ".kot[8:27]"  1 18 1 18 18 18 18 18 
		18 18 1 18 18 18 1 18 18 18 18 18;
	setAttr -s 28 ".kix[12:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".kiy[12:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 28 ".kox[8:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".koy[8:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "Spine2_Control_scaleX";
	rename -uid "529C7398-5B49-1196-F5C6-B6A29B3E01F2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 1 12 1 24 1 36 1 48 1 60 1 72 1 84 1 96 1
		 108 1 120 1 132 1 144 1 156 1 168 1 180 1 192 1 204 1 216 1 228 1 240 1 252 1 255 1
		 264 1 276 1 288 1 300 1 312 1;
	setAttr -s 28 ".kit[12:27]"  1 18 1 18 1 18 18 18 
		1 18 1 1 18 1 18 1;
	setAttr -s 28 ".kot[8:27]"  1 18 1 18 18 18 18 18 
		18 18 1 18 18 18 1 18 18 18 18 18;
	setAttr -s 28 ".kix[12:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".kiy[12:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 28 ".kox[8:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".koy[8:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "Spine2_Control_scaleY";
	rename -uid "562B429E-334E-F317-0013-21848D836A91";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 1 12 1 24 1 36 1 48 1 60 1 72 1 84 1 96 1
		 108 1 120 1 132 1 144 1 156 1 168 1 180 1 192 1 204 1 216 1 228 1 240 1 252 1 255 1
		 264 1 276 1 288 1 300 1 312 1;
	setAttr -s 28 ".kit[12:27]"  1 18 1 18 1 18 18 18 
		1 18 1 1 18 1 18 1;
	setAttr -s 28 ".kot[8:27]"  1 18 1 18 18 18 18 18 
		18 18 1 18 18 18 1 18 18 18 18 18;
	setAttr -s 28 ".kix[12:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".kiy[12:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 28 ".kox[8:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".koy[8:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "Spine2_Control_scaleZ";
	rename -uid "51E6358C-244F-7AC3-00E8-56BE18AAA450";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 1 12 1 24 1 36 1 48 1 60 1 72 1 84 1 96 1
		 108 1 120 1 132 1 144 1 156 1 168 1 180 1 192 1 204 1 216 1 228 1 240 1 252 1 255 1
		 264 1 276 1 288 1 300 1 312 1;
	setAttr -s 28 ".kit[12:27]"  1 18 1 18 1 18 18 18 
		1 18 1 1 18 1 18 1;
	setAttr -s 28 ".kot[8:27]"  1 18 1 18 18 18 18 18 
		18 18 1 18 18 18 1 18 18 18 18 18;
	setAttr -s 28 ".kix[12:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".kiy[12:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 28 ".kox[8:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".koy[8:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LeftClav_Control_visibility";
	rename -uid "D6DB4E5E-944F-ABF6-C3A4-CCB4F0AB19A7";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 1 12 1 24 1 36 1 48 1 60 1 72 1 84 1 96 1
		 108 1 120 1 132 1 144 1 156 1 168 1 180 1 192 1 204 1 216 1 228 1 240 1 252 1 255 1
		 264 1 276 1 288 1 300 1 312 1;
	setAttr -s 28 ".kit[0:27]"  9 9 9 9 9 9 9 9 
		9 9 9 9 1 9 1 9 1 9 9 9 1 9 1 1 9 
		1 9 1;
	setAttr -s 28 ".kix[12:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".kiy[12:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "LeftClav_Control_translateX";
	rename -uid "939AE067-4D4C-0D46-23A3-3FBC31917325";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 0 12 0 24 0 36 0 48 0 60 0 72 0 84 0 96 0
		 108 0 120 0 132 0 144 0 156 0 168 0 180 0 192 0 204 0 216 0 228 0 240 0 252 0 255 0
		 264 0 276 0 288 0 300 0 312 0;
	setAttr -s 28 ".kit[12:27]"  1 18 1 18 1 18 18 18 
		1 18 1 1 18 1 18 1;
	setAttr -s 28 ".kot[8:27]"  1 18 1 18 18 18 18 18 
		18 18 1 18 18 18 1 18 18 18 18 18;
	setAttr -s 28 ".kix[12:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".kiy[12:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 28 ".kox[8:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".koy[8:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "LeftClav_Control_translateY";
	rename -uid "414A86B4-0846-0183-AB93-28B17B4B0792";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 0 12 0 24 0 36 0 48 0 60 0 72 0 84 0 96 0
		 108 0 120 0 132 0 144 0 156 0 168 0 180 0 192 0 204 0 216 0 228 0 240 0 252 0 255 0
		 264 0 276 0 288 0 300 0 312 0;
	setAttr -s 28 ".kit[12:27]"  1 18 1 18 1 18 18 18 
		1 18 1 1 18 1 18 1;
	setAttr -s 28 ".kot[8:27]"  1 18 1 18 18 18 18 18 
		18 18 1 18 18 18 1 18 18 18 18 18;
	setAttr -s 28 ".kix[12:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".kiy[12:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 28 ".kox[8:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".koy[8:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "LeftClav_Control_translateZ";
	rename -uid "9DB237E8-D045-D2BC-F7DD-388D75D9AD30";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 0 12 0 24 0 36 0 48 0 60 0 72 0 84 0 96 0
		 108 0 120 0 132 0 144 0 156 0 168 0 180 0 192 0 204 0 216 0 228 0 240 0 252 0 255 0
		 264 0 276 0 288 0 300 0 312 0;
	setAttr -s 28 ".kit[12:27]"  1 18 1 18 1 18 18 18 
		1 18 1 1 18 1 18 1;
	setAttr -s 28 ".kot[8:27]"  1 18 1 18 18 18 18 18 
		18 18 1 18 18 18 1 18 18 18 18 18;
	setAttr -s 28 ".kix[12:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".kiy[12:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 28 ".kox[8:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".koy[8:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LeftClav_Control_rotateX";
	rename -uid "5BC1FC3D-A245-0041-1A79-3E9760A02B37";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 0 12 0 24 0 36 0 48 0 60 0 72 0 84 0 96 0
		 108 0 120 0 132 0 144 0 156 0 168 0 180 0 192 0 204 0 216 0 228 0 240 0 252 0 255 0
		 264 0 276 0 288 0 300 0 312 0;
	setAttr -s 28 ".kit[12:27]"  1 18 1 18 1 18 18 18 
		1 18 1 1 18 1 18 1;
	setAttr -s 28 ".kot[8:27]"  1 18 1 18 18 18 18 18 
		18 18 1 18 18 18 1 18 18 18 18 18;
	setAttr -s 28 ".kix[12:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".kiy[12:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 28 ".kox[8:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".koy[8:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LeftClav_Control_rotateY";
	rename -uid "820CB67F-5843-C0B3-C457-CCA95F595E80";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 0 12 0 24 0 36 0 48 0 60 0 72 0 84 0 96 0
		 108 0 120 0 132 0 144 0 156 0 168 0 180 0 192 0 204 0 216 0 228 0 240 0 252 0 255 0
		 264 0 276 0 288 0 300 0 312 0;
	setAttr -s 28 ".kit[12:27]"  1 18 1 18 1 18 18 18 
		1 18 1 1 18 1 18 1;
	setAttr -s 28 ".kot[8:27]"  1 18 1 18 18 18 18 18 
		18 18 1 18 18 18 1 18 18 18 18 18;
	setAttr -s 28 ".kix[12:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".kiy[12:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 28 ".kox[8:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".koy[8:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LeftClav_Control_rotateZ";
	rename -uid "52106F16-FB41-9FAD-766E-D698140AA386";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 0 12 0 24 0 36 0 48 0 60 0 72 0 84 0 96 0
		 108 0 120 0 132 0 144 0 156 0 168 0 180 0 192 0 204 0 216 0 228 0 240 0 252 0 255 0
		 264 0 276 0 288 0 300 0 312 0;
	setAttr -s 28 ".kit[12:27]"  1 18 1 18 1 18 18 18 
		1 18 1 1 18 1 18 1;
	setAttr -s 28 ".kot[8:27]"  1 18 1 18 18 18 18 18 
		18 18 1 18 18 18 1 18 18 18 18 18;
	setAttr -s 28 ".kix[12:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".kiy[12:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 28 ".kox[8:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".koy[8:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LeftClav_Control_scaleX";
	rename -uid "482816E5-9749-4948-A20B-9AAACCEA6286";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 1 12 1 24 1 36 1 48 1 60 1 72 1 84 1 96 1
		 108 1 120 1 132 1 144 1 156 1 168 1 180 1 192 1 204 1 216 1 228 1 240 1 252 1 255 1
		 264 1 276 1 288 1 300 1 312 1;
	setAttr -s 28 ".kit[12:27]"  1 18 1 18 1 18 18 18 
		1 18 1 1 18 1 18 1;
	setAttr -s 28 ".kot[8:27]"  1 18 1 18 18 18 18 18 
		18 18 1 18 18 18 1 18 18 18 18 18;
	setAttr -s 28 ".kix[12:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".kiy[12:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 28 ".kox[8:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".koy[8:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LeftClav_Control_scaleY";
	rename -uid "99E73557-314D-BD02-7956-9798C5525228";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 1 12 1 24 1 36 1 48 1 60 1 72 1 84 1 96 1
		 108 1 120 1 132 1 144 1 156 1 168 1 180 1 192 1 204 1 216 1 228 1 240 1 252 1 255 1
		 264 1 276 1 288 1 300 1 312 1;
	setAttr -s 28 ".kit[12:27]"  1 18 1 18 1 18 18 18 
		1 18 1 1 18 1 18 1;
	setAttr -s 28 ".kot[8:27]"  1 18 1 18 18 18 18 18 
		18 18 1 18 18 18 1 18 18 18 18 18;
	setAttr -s 28 ".kix[12:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".kiy[12:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 28 ".kox[8:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".koy[8:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LeftClav_Control_scaleZ";
	rename -uid "0CF76A71-EB4D-93BB-74F6-A9A60C2B0DE2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 1 12 1 24 1 36 1 48 1 60 1 72 1 84 1 96 1
		 108 1 120 1 132 1 144 1 156 1 168 1 180 1 192 1 204 1 216 1 228 1 240 1 252 1 255 1
		 264 1 276 1 288 1 300 1 312 1;
	setAttr -s 28 ".kit[12:27]"  1 18 1 18 1 18 18 18 
		1 18 1 1 18 1 18 1;
	setAttr -s 28 ".kot[8:27]"  1 18 1 18 18 18 18 18 
		18 18 1 18 18 18 1 18 18 18 18 18;
	setAttr -s 28 ".kix[12:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".kiy[12:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 28 ".kox[8:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".koy[8:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RightClav_Control_visibility";
	rename -uid "569A4025-9F43-64FC-3A6F-05B36D89F7EB";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 1 12 1 24 1 36 1 48 1 60 1 72 1 84 1 96 1
		 108 1 120 1 132 1 144 1 156 1 168 1 180 1 192 1 204 1 216 1 228 1 240 1 252 1 255 1
		 264 1 276 1 288 1 300 1 312 1;
	setAttr -s 28 ".kit[0:27]"  9 9 9 9 9 9 9 9 
		9 9 9 9 1 9 1 9 1 9 9 9 1 9 1 1 9 
		1 9 1;
	setAttr -s 28 ".kix[12:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".kiy[12:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "RightClav_Control_translateX";
	rename -uid "8D5C4656-6A48-AD10-AB4A-A0846D4453BC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 0 12 0 24 0 36 0 48 0 60 0 72 0 84 0 96 0
		 108 0 120 0 132 0 144 0 156 0 168 0 180 0 192 0 204 0 216 0 228 0 240 0 252 0 255 0
		 264 0 276 0 288 0 300 0 312 0;
	setAttr -s 28 ".kit[12:27]"  1 18 1 18 1 18 18 18 
		1 18 1 1 18 1 18 1;
	setAttr -s 28 ".kot[8:27]"  1 18 1 18 18 18 18 18 
		18 18 1 18 18 18 1 18 18 18 18 18;
	setAttr -s 28 ".kix[12:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".kiy[12:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 28 ".kox[8:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".koy[8:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "RightClav_Control_translateY";
	rename -uid "9B26F049-4F46-356A-7821-7BA83C807CA9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 0 12 0 24 0 36 0 48 0 60 0 72 0 84 0 96 0
		 108 0 120 0 132 0 144 0 156 0 168 0 180 0 192 0 204 0 216 0 228 0 240 0 252 0 255 0
		 264 0 276 0 288 0 300 0 312 0;
	setAttr -s 28 ".kit[12:27]"  1 18 1 18 1 18 18 18 
		1 18 1 1 18 1 18 1;
	setAttr -s 28 ".kot[8:27]"  1 18 1 18 18 18 18 18 
		18 18 1 18 18 18 1 18 18 18 18 18;
	setAttr -s 28 ".kix[12:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".kiy[12:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 28 ".kox[8:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".koy[8:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "RightClav_Control_translateZ";
	rename -uid "24FD957D-554D-30CD-6E57-CF9453F32CF2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 0 12 0 24 0 36 0 48 0 60 0 72 0 84 0 96 0
		 108 0 120 0 132 0 144 0 156 0 168 0 180 0 192 0 204 0 216 0 228 0 240 0 252 0 255 0
		 264 0 276 0 288 0 300 0 312 0;
	setAttr -s 28 ".kit[12:27]"  1 18 1 18 1 18 18 18 
		1 18 1 1 18 1 18 1;
	setAttr -s 28 ".kot[8:27]"  1 18 1 18 18 18 18 18 
		18 18 1 18 18 18 1 18 18 18 18 18;
	setAttr -s 28 ".kix[12:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".kiy[12:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 28 ".kox[8:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".koy[8:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RightClav_Control_rotateX";
	rename -uid "4ADAC363-2240-5221-BE6D-12AA08B4BA28";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 0 12 0 24 0 36 0 48 0 60 0 72 0 84 0 96 0
		 108 0 120 0 132 0 144 0 156 0 168 0 180 0 192 0 204 0 216 0 228 0 240 0 252 0 255 0
		 264 0 276 0 288 0 300 0 312 0;
	setAttr -s 28 ".kit[12:27]"  1 18 1 18 1 18 18 18 
		1 18 1 1 18 1 18 1;
	setAttr -s 28 ".kot[8:27]"  1 18 1 18 18 18 18 18 
		18 18 1 18 18 18 1 18 18 18 18 18;
	setAttr -s 28 ".kix[12:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".kiy[12:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 28 ".kox[8:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".koy[8:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RightClav_Control_rotateY";
	rename -uid "8F52ADB9-F245-CE8F-E6A4-C6B1BEFFB2BC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 0 12 0 24 0 36 0 48 0 60 0 72 0 84 0 96 0
		 108 0 120 0 132 0 144 0 156 0 168 0 180 0 192 0 204 0 216 0 228 0 240 0 252 0 255 0
		 264 0 276 0 288 0 300 0 312 0;
	setAttr -s 28 ".kit[12:27]"  1 18 1 18 1 18 18 18 
		1 18 1 1 18 1 18 1;
	setAttr -s 28 ".kot[8:27]"  1 18 1 18 18 18 18 18 
		18 18 1 18 18 18 1 18 18 18 18 18;
	setAttr -s 28 ".kix[12:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".kiy[12:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 28 ".kox[8:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".koy[8:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RightClav_Control_rotateZ";
	rename -uid "F1EFC074-D749-922C-8316-E78BAB4FC5E4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 0 12 0 24 0 36 0 48 0 60 0 72 0 84 0 96 0
		 108 0 120 0 132 0 144 0 156 0 168 0 180 0 192 0 204 0 216 0 228 0 240 0 252 0 255 0
		 264 0 276 0 288 0 300 0 312 0;
	setAttr -s 28 ".kit[12:27]"  1 18 1 18 1 18 18 18 
		1 18 1 1 18 1 18 1;
	setAttr -s 28 ".kot[8:27]"  1 18 1 18 18 18 18 18 
		18 18 1 18 18 18 1 18 18 18 18 18;
	setAttr -s 28 ".kix[12:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".kiy[12:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 28 ".kox[8:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".koy[8:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RightClav_Control_scaleX";
	rename -uid "59A61076-3D41-B514-8102-5DB75D3FA08D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 1 12 1 24 1 36 1 48 1 60 1 72 1 84 1 96 1
		 108 1 120 1 132 1 144 1 156 1 168 1 180 1 192 1 204 1 216 1 228 1 240 1 252 1 255 1
		 264 1 276 1 288 1 300 1 312 1;
	setAttr -s 28 ".kit[12:27]"  1 18 1 18 1 18 18 18 
		1 18 1 1 18 1 18 1;
	setAttr -s 28 ".kot[8:27]"  1 18 1 18 18 18 18 18 
		18 18 1 18 18 18 1 18 18 18 18 18;
	setAttr -s 28 ".kix[12:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".kiy[12:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 28 ".kox[8:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".koy[8:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RightClav_Control_scaleY";
	rename -uid "1B878B25-D544-7571-4951-20B562D5C6D5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 1 12 1 24 1 36 1 48 1 60 1 72 1 84 1 96 1
		 108 1 120 1 132 1 144 1 156 1 168 1 180 1 192 1 204 1 216 1 228 1 240 1 252 1 255 1
		 264 1 276 1 288 1 300 1 312 1;
	setAttr -s 28 ".kit[12:27]"  1 18 1 18 1 18 18 18 
		1 18 1 1 18 1 18 1;
	setAttr -s 28 ".kot[8:27]"  1 18 1 18 18 18 18 18 
		18 18 1 18 18 18 1 18 18 18 18 18;
	setAttr -s 28 ".kix[12:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".kiy[12:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 28 ".kox[8:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".koy[8:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RightClav_Control_scaleZ";
	rename -uid "BB3189FF-CB43-B7D3-9EF1-6FAB356B493D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 1 12 1 24 1 36 1 48 1 60 1 72 1 84 1 96 1
		 108 1 120 1 132 1 144 1 156 1 168 1 180 1 192 1 204 1 216 1 228 1 240 1 252 1 255 1
		 264 1 276 1 288 1 300 1 312 1;
	setAttr -s 28 ".kit[12:27]"  1 18 1 18 1 18 18 18 
		1 18 1 1 18 1 18 1;
	setAttr -s 28 ".kot[8:27]"  1 18 1 18 18 18 18 18 
		18 18 1 18 18 18 1 18 18 18 18 18;
	setAttr -s 28 ".kix[12:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".kiy[12:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 28 ".kox[8:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".koy[8:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "Neck_Control_visibility";
	rename -uid "C7D54EBF-1240-7187-F1E0-FDB4D444A3D1";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 1 12 1 24 1 36 1 48 1 60 1 72 1 84 1 96 1
		 108 1 120 1 132 1 144 1 156 1 168 1 180 1 192 1 204 1 216 1 228 1 240 1 252 1 255 1
		 264 1 276 1 288 1 300 1 312 1;
	setAttr -s 28 ".kit[0:27]"  9 9 9 9 9 9 9 9 
		9 9 9 9 1 9 1 9 1 9 9 9 1 9 1 1 9 
		1 9 1;
	setAttr -s 28 ".kix[12:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".kiy[12:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Neck_Control_translateX";
	rename -uid "37CA9F5D-B14A-251B-AD2F-93827DAC228C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 0 12 0 24 0 36 0 48 0 60 0 72 0 84 0 96 0
		 108 0 120 0 132 0 144 0 156 0 168 0 180 0 192 0 204 0 216 0 228 0 240 0 252 0 255 0
		 264 0 276 0 288 0 300 0 312 0;
	setAttr -s 28 ".kit[12:27]"  1 18 1 18 1 18 18 18 
		1 18 1 1 18 1 18 1;
	setAttr -s 28 ".kot[8:27]"  1 18 1 18 18 18 18 18 
		18 18 1 18 18 18 1 18 18 18 18 18;
	setAttr -s 28 ".kix[12:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".kiy[12:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 28 ".kox[8:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".koy[8:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Neck_Control_translateY";
	rename -uid "8B14D1AF-7B4E-5974-DD6F-7583B69EC8D2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 0 12 0 24 0 36 0 48 0 60 0 72 0 84 0 96 0
		 108 0 120 0 132 0 144 0 156 0 168 0 180 0 192 0 204 0 216 0 228 0 240 0 252 0 255 0
		 264 0 276 0 288 0 300 0 312 0;
	setAttr -s 28 ".kit[12:27]"  1 18 1 18 1 18 18 18 
		1 18 1 1 18 1 18 1;
	setAttr -s 28 ".kot[8:27]"  1 18 1 18 18 18 18 18 
		18 18 1 18 18 18 1 18 18 18 18 18;
	setAttr -s 28 ".kix[12:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".kiy[12:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 28 ".kox[8:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".koy[8:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Neck_Control_translateZ";
	rename -uid "817558D4-B944-E8C8-4ACD-B4AF6D7C0849";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 0 12 0 24 0 36 0 48 0 60 0 72 0 84 0 96 0
		 108 0 120 0 132 0 144 0 156 0 168 0 180 0 192 0 204 0 216 0 228 0 240 0 252 0 255 0
		 264 0 276 0 288 0 300 0 312 0;
	setAttr -s 28 ".kit[12:27]"  1 18 1 18 1 18 18 18 
		1 18 1 1 18 1 18 1;
	setAttr -s 28 ".kot[8:27]"  1 18 1 18 18 18 18 18 
		18 18 1 18 18 18 1 18 18 18 18 18;
	setAttr -s 28 ".kix[12:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".kiy[12:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 28 ".kox[8:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".koy[8:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Neck_Control_rotateX";
	rename -uid "07F5D40B-3F4C-8936-2513-F48222CCC2F3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 0 12 0 24 0 36 0 48 0 60 0 72 0 84 0 96 0
		 108 0 120 0 132 0 144 0 156 0 168 0 180 0 192 0 204 0 216 0 228 0 240 0 252 0 255 0
		 264 0 276 0 288 0 300 0 312 0;
	setAttr -s 28 ".kit[12:27]"  1 18 1 18 1 18 18 18 
		1 18 1 1 18 1 18 1;
	setAttr -s 28 ".kot[8:27]"  1 18 1 18 18 18 18 18 
		18 18 1 18 18 18 1 18 18 18 18 18;
	setAttr -s 28 ".kix[12:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".kiy[12:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 28 ".kox[8:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".koy[8:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Neck_Control_rotateY";
	rename -uid "710ADE0A-B848-BABB-9464-8FBD190CF31A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 0 12 0 24 0 36 0 48 0 60 0 72 0 84 0 96 0
		 108 0 120 0 132 0 144 0 156 0 168 0 180 0 192 0 204 0 216 0 228 0 240 0 252 0 255 0
		 264 0 276 0 288 0 300 0 312 0;
	setAttr -s 28 ".kit[12:27]"  1 18 1 18 1 18 18 18 
		1 18 1 1 18 1 18 1;
	setAttr -s 28 ".kot[8:27]"  1 18 1 18 18 18 18 18 
		18 18 1 18 18 18 1 18 18 18 18 18;
	setAttr -s 28 ".kix[12:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".kiy[12:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 28 ".kox[8:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".koy[8:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Neck_Control_rotateZ";
	rename -uid "590299F0-FF46-BF94-B5A7-76B61E1B6FDB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 0 12 0 24 0 36 0 48 0 60 0 72 0 84 0 96 0
		 108 0 120 0 132 0 144 0 156 0 168 0 180 0 192 0 204 0 216 0 228 0 240 0 252 0 255 0
		 264 0 276 0 288 0 300 0 312 0;
	setAttr -s 28 ".kit[12:27]"  1 18 1 18 1 18 18 18 
		1 18 1 1 18 1 18 1;
	setAttr -s 28 ".kot[8:27]"  1 18 1 18 18 18 18 18 
		18 18 1 18 18 18 1 18 18 18 18 18;
	setAttr -s 28 ".kix[12:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".kiy[12:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 28 ".kox[8:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".koy[8:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "Neck_Control_scaleX";
	rename -uid "A80E18FE-7346-224B-03EB-B081E221CC0C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 1 12 1 24 1 36 1 48 1 60 1 72 1 84 1 96 1
		 108 1 120 1 132 1 144 1 156 1 168 1 180 1 192 1 204 1 216 1 228 1 240 1 252 1 255 1
		 264 1 276 1 288 1 300 1 312 1;
	setAttr -s 28 ".kit[12:27]"  1 18 1 18 1 18 18 18 
		1 18 1 1 18 1 18 1;
	setAttr -s 28 ".kot[8:27]"  1 18 1 18 18 18 18 18 
		18 18 1 18 18 18 1 18 18 18 18 18;
	setAttr -s 28 ".kix[12:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".kiy[12:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 28 ".kox[8:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".koy[8:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "Neck_Control_scaleY";
	rename -uid "D476657B-BC49-6CCF-E80F-E7B032B4B49C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 1 12 1 24 1 36 1 48 1 60 1 72 1 84 1 96 1
		 108 1 120 1 132 1 144 1 156 1 168 1 180 1 192 1 204 1 216 1 228 1 240 1 252 1 255 1
		 264 1 276 1 288 1 300 1 312 1;
	setAttr -s 28 ".kit[12:27]"  1 18 1 18 1 18 18 18 
		1 18 1 1 18 1 18 1;
	setAttr -s 28 ".kot[8:27]"  1 18 1 18 18 18 18 18 
		18 18 1 18 18 18 1 18 18 18 18 18;
	setAttr -s 28 ".kix[12:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".kiy[12:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 28 ".kox[8:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".koy[8:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "Neck_Control_scaleZ";
	rename -uid "8043F43D-0543-6EFB-4D5A-0AA13714DE3F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 1 12 1 24 1 36 1 48 1 60 1 72 1 84 1 96 1
		 108 1 120 1 132 1 144 1 156 1 168 1 180 1 192 1 204 1 216 1 228 1 240 1 252 1 255 1
		 264 1 276 1 288 1 300 1 312 1;
	setAttr -s 28 ".kit[12:27]"  1 18 1 18 1 18 18 18 
		1 18 1 1 18 1 18 1;
	setAttr -s 28 ".kot[8:27]"  1 18 1 18 18 18 18 18 
		18 18 1 18 18 18 1 18 18 18 18 18;
	setAttr -s 28 ".kix[12:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".kiy[12:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 28 ".kox[8:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".koy[8:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "Head_Control_visibility";
	rename -uid "155CB01B-5E4C-927D-7E92-C38E807114A3";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 1 12 1 24 1 36 1 48 1 60 1 72 1 84 1 96 1
		 108 1 120 1 132 1 144 1 156 1 168 1 180 1 192 1 204 1 216 1 228 1 240 1 252 1 255 1
		 264 1 276 1 288 1 300 1 312 1;
	setAttr -s 28 ".kit[0:27]"  1 9 1 9 1 9 1 9 
		1 9 1 9 1 9 1 9 1 9 1 9 1 9 1 1 9 
		1 9 1;
	setAttr -s 28 ".kix[0:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1;
	setAttr -s 28 ".kiy[0:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Head_Control_translateX";
	rename -uid "4596CB4A-6F4E-0278-2371-86A3D99ADF7D";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 0 12 0 24 0 36 0 48 0 60 0 72 0 84 0 96 0
		 108 0 120 0 132 0 144 0 156 0 168 0 180 0 192 0 204 0 216 0 228 0 240 0 252 0 255 0
		 264 0 276 0 288 0 300 0 312 0;
	setAttr -s 28 ".kit[1:27]"  18 1 18 1 18 1 18 1 
		18 1 18 1 18 1 18 1 18 1 18 1 18 1 1 18 1 
		18 1;
	setAttr -s 28 ".kot[1:27]"  18 1 18 1 18 1 18 1 
		18 1 18 1 18 1 18 1 18 1 18 1 18 1 1 18 1 
		18 1;
	setAttr -s 28 ".kix[0:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1;
	setAttr -s 28 ".kiy[0:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0;
	setAttr -s 28 ".kox[0:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1;
	setAttr -s 28 ".koy[0:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Head_Control_translateY";
	rename -uid "BECC0260-8D48-28FC-19F0-3198E97BC3B2";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 0 12 0 24 0 36 0 48 0 60 0 72 0 84 0 96 0
		 108 0 120 0 132 0 144 0 156 0 168 0 180 0 192 0 204 0 216 0 228 0 240 0 252 0 255 0
		 264 0 276 0 288 0 300 0 312 0;
	setAttr -s 28 ".kit[1:27]"  18 1 18 1 18 1 18 1 
		18 1 18 1 18 1 18 1 18 1 18 1 18 1 1 18 1 
		18 1;
	setAttr -s 28 ".kot[1:27]"  18 1 18 1 18 1 18 1 
		18 1 18 1 18 1 18 1 18 1 18 1 18 1 1 18 1 
		18 1;
	setAttr -s 28 ".kix[0:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1;
	setAttr -s 28 ".kiy[0:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0;
	setAttr -s 28 ".kox[0:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1;
	setAttr -s 28 ".koy[0:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Head_Control_translateZ";
	rename -uid "9D61DB9A-174B-C14E-4EE6-838B46102DE7";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 0 12 0 24 0 36 0 48 0 60 0 72 0 84 0 96 0
		 108 0 120 0 132 0 144 0 156 0 168 0 180 0 192 0 204 0 216 0 228 0 240 0 252 0 255 0
		 264 0 276 0 288 0 300 0 312 0;
	setAttr -s 28 ".kit[1:27]"  18 1 18 1 18 1 18 1 
		18 1 18 1 18 1 18 1 18 1 18 1 18 1 1 18 1 
		18 1;
	setAttr -s 28 ".kot[1:27]"  18 1 18 1 18 1 18 1 
		18 1 18 1 18 1 18 1 18 1 18 1 18 1 1 18 1 
		18 1;
	setAttr -s 28 ".kix[0:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1;
	setAttr -s 28 ".kiy[0:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0;
	setAttr -s 28 ".kox[0:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1;
	setAttr -s 28 ".koy[0:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Head_Control_rotateX";
	rename -uid "F632D97B-D945-AE19-0B55-DBA4D1D5EA34";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 56 ".ktv[0:55]"  0 -5.3001518069771727 6 -9.7812622602992665
		 12 -3.5974671199829884 18 -9.7910349304936677 24 -5.3910103618674654 30 -9.8721208151895574
		 36 -3.6883256748732811 42 -9.8818934853839604 48 -5.4818689167577581 51 -48.595106078509218
		 54 -32.284991747641413 60 -38.403072370097775 66 -31.679072153972037 72 -5.4818689167577581
		 78 -9.8721208151895574 84 -3.6883256748732811 90 -9.8818934853839604 96 -5.4818689167577581
		 100 -29.929565579829418 104 -29.304628428320999 108 -26.613894851217662 112 -20.456158688028292
		 116 -24.180318205234446 120 -5.5727274716480508 126 -10.053837924970145 132 -3.8700427846538661
		 138 -10.063610595164546 144 -35.81308768766791 150 -40.203339586099716 156 -34.019544445783438
		 162 -40.213112256294117 168 -35.81308768766791 174 -10.053837924970145 180 -3.8700427846538661
		 186 -10.063610595164546 194 -27.010601789378331 200 -31.40085368781013 206 -25.217058547493853
		 212 -31.410626358004532 218 -27.010601789378331 222 -10.144696479860437 228 -3.9609013395441588
		 234 -10.154469150054839 240 -5.7544445814286362 246 -10.144696479860437 252 -3.9609013395441588
		 255 -7.9544568657417365 264 0 270 -10.144696479860437 276 -3.9609013395441588 282 -10.154469150054839
		 288 -5.7544445814286362 294 -10.144696479860437 300 -3.9609013395441588 306 -10.154469150054839
		 312 -5.7544445814286362;
	setAttr -s 56 ".kit[0:55]"  1 18 18 18 1 18 18 18 
		1 18 18 18 18 1 18 18 18 1 18 18 18 18 18 1 18 
		18 18 1 18 18 18 1 18 18 18 1 18 18 18 1 18 18 
		18 1 18 18 1 1 18 18 18 1 18 18 18 1;
	setAttr -s 56 ".kot[0:55]"  1 18 18 18 1 18 18 18 
		1 18 18 18 18 1 18 18 18 1 18 18 18 18 18 1 18 
		18 18 1 18 18 18 1 18 18 18 1 18 18 18 1 18 18 
		18 1 18 18 1 1 18 18 18 1 18 18 18 1;
	setAttr -s 56 ".kix[0:55]"  1 1 1 1 1 1 1 1 1 1 1 1 0.65644949674606323 
		1 1 1 1 1 1 0.98526239395141602 0.90734851360321045 1 1 1 1 1 0.66766512393951416 
		1 1 1 1 1 0.66766512393951416 1 0.8221704363822937 1 1 1 1 1 0.71940666437149048 
		1 1 1 1 1 0.95591658353805542 1 1 1 1 1 1 1 1 1;
	setAttr -s 56 ".kiy[0:55]"  0 0 0 0 0 0 0 0 0 0 0 0 0.75436997413635254 
		0 0 0 0 0 0 0.17104946076869965 0.42037934064865112 0 0 0 0 0 -0.74446171522140503 
		0 0 0 0 0 0.74446171522140503 0 -0.56924140453338623 0 0 0 0 0 0.69458919763565063 
		0 0 0 0 0 0.29363813996315002 0 0 0 0 0 0 0 0 0;
	setAttr -s 56 ".kox[0:55]"  1 1 1 1 1 1 1 1 1 1 1 1 0.65644949674606323 
		1 1 1 1 1 1 0.98526245355606079 0.90734851360321045 1 1 1 1 1 0.66766512393951416 
		1 1 1 1 1 0.66766512393951416 1 0.8221704363822937 1 1 1 1 1 0.71940666437149048 
		1 1 1 1 1 0.95591658353805542 1 1 1 1 1 1 1 1 1;
	setAttr -s 56 ".koy[0:55]"  0 0 0 0 0 0 0 0 0 0 0 0 0.75436997413635254 
		0 0 0 0 0 0 0.17104947566986084 0.42037934064865112 0 0 0 0 0 -0.74446171522140503 
		0 0 0 0 0 0.74446171522140503 0 -0.56924146413803101 0 0 0 0 0 0.69458913803100586 
		0 0 0 0 0 0.29363813996315002 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Head_Control_rotateY";
	rename -uid "2D39202B-3947-2B36-9E4E-9C860568D1B9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 56 ".ktv[0:55]"  0 0 6 -5 12 0 18 5 24 0 30 -5 36 0 42 5
		 48 0 51 31.796851516198839 54 37.941294254409293 60 28.380817916213221 66 11.0591807204361
		 72 0 78 -5 84 0 90 5 96 0 100 -36.555393329645895 104 -25.342067472597236 108 -29.883436137909349
		 112 -10.325012110469526 116 -2.9797153599562769 120 0 126 -5 132 0 138 5 145 34.74252491694353
		 151 29.742524916943534 157 34.74252491694353 163 39.742524916943538 169 34.74252491694353
		 174 -5 180 0 186 5 193 -21.269111546445238 199 -26.269111546445231 205 -21.269111546445238
		 211 -16.269111546445234 217 -21.269111546445238 222 -5 228 0 234 5 240 0 246 -5 252 0
		 255 2.5000000000000004 264 0 270 -5 276 0 282 5 288 0 294 -5 300 0 306 5 312 0;
	setAttr -s 56 ".kit[0:55]"  1 18 18 18 1 18 18 18 
		1 18 18 18 18 1 18 18 18 1 18 18 18 18 18 1 18 
		18 18 1 18 18 18 1 18 18 18 1 18 18 18 1 18 18 
		18 1 18 18 1 1 18 18 18 1 18 18 18 1;
	setAttr -s 56 ".kot[0:55]"  1 18 18 18 1 18 18 18 
		1 18 18 18 18 1 18 18 18 1 18 18 18 18 18 1 18 
		18 18 1 18 18 18 1 18 18 18 1 18 18 18 1 18 18 
		18 1 18 18 1 1 18 18 18 1 18 18 18 1;
	setAttr -s 56 ".kix[0:55]"  1 1 0.94413304328918457 1 1 1 0.94413304328918457 
		1 1 0.36215877532958984 1 0.72922319173812866 0.710410475730896 1 1 0.94413304328918457 
		1 1 1 1 1 0.57886064052581787 0.87967866659164429 1 1 0.94413304328918457 0.69062107801437378 
		1 1 0.94413304328918457 1 1 1 0.94413304328918457 1 1 1 0.94413304328918457 1 1 0.7770918607711792 
		0.94413304328918457 1 1 1 0.94413304328918457 0.94413304328918457 1 1 0.94413304328918457 
		1 1 1 0.94413304328918457 1 1;
	setAttr -s 56 ".kiy[0:55]"  0 0 0.32956460118293762 0 0 0 0.32956460118293762 
		0 0 0.93211638927459717 0 -0.68427592515945435 -0.70378762483596802 0 0 0.32956460118293762 
		0 0 0 0 0 0.81542646884918213 0.47556847333908081 0 0 0.32956460118293762 0.723216712474823 
		0 0 0.32956460118293762 0 0 0 0.32956460118293762 0 0 0 0.32956460118293762 0 0 0.62938719987869263 
		0.32956460118293762 0 0 0 0.32956460118293762 -0.32956460118293762 0 0 0.32956460118293762 
		0 0 0 0.32956460118293762 0 0;
	setAttr -s 56 ".kox[0:55]"  1 1 0.94413304328918457 1 1 1 0.94413304328918457 
		1 1 0.36215877532958984 1 0.72922319173812866 0.710410475730896 1 1 0.94413304328918457 
		1 1 1 1 1 0.57886064052581787 0.87967872619628906 1 1 0.94413304328918457 0.69062113761901855 
		1 1 0.94413304328918457 1 1 1 0.94413304328918457 1 1 1 0.94413304328918457 1 1 0.7770918607711792 
		0.94413304328918457 1 1 1 0.94413304328918457 0.94413304328918457 1 1 0.94413304328918457 
		1 1 1 0.94413304328918457 1 1;
	setAttr -s 56 ".koy[0:55]"  0 0 0.32956460118293762 0 0 0 0.32956460118293762 
		0 0 0.93211638927459717 0 -0.68427592515945435 -0.70378762483596802 0 0 0.32956460118293762 
		0 0 0 0 0 0.81542646884918213 0.47556847333908081 0 0 0.32956460118293762 0.72321677207946777 
		0 0 0.32956460118293762 0 0 0 0.32956460118293762 0 0 0 0.32956460118293762 0 0 0.6293872594833374 
		0.32956460118293762 0 0 0 0.32956460118293762 -0.32956460118293762 0 0 0.32956460118293762 
		0 0 0 0.32956460118293762 0 0;
createNode animCurveTA -n "Head_Control_rotateZ";
	rename -uid "76B82654-0944-8194-1F11-94AB164BE77D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 56 ".ktv[0:55]"  0 4.2782473876402944 6 7.1380947903038861
		 12 -0.60867892447495464 18 -0.55212942817671418 24 5.044921983923488 30 7.9047693865870814
		 36 0.15799567180823909 42 0.21454516810647953 48 5.8115965802066825 51 -41.317336349533107
		 54 -21.646533167485313 60 -9.054308305555498 66 13.306930924166549 72 5.8115965802066825
		 78 7.9047693865870814 84 0.15799567180823909 90 0.21454516810647953 96 5.8115965802066825
		 100 23.368398051073083 104 4.8460880267303246 108 -5.4300040179346576 112 -13.97312540946619
		 116 -0.84930625969678641 120 6.5782711764898769 126 9.4381185791534676 132 1.6913448643746272
		 138 1.7478943606728679 145 2.9812830649918047 151 5.0744558713722032 157 -2.6723178434066388
		 163 -2.6157683471083981 169 2.9812830649918047 174 9.4381185791534676 180 1.6913448643746272
		 186 1.7478943606728679 192 7.3449457727730705 198 9.4381185791534676 204 1.6913448643746272
		 210 1.7478943606728679 216 7.3449457727730705 222 10.204793175436661 228 2.458019460657821
		 234 2.5145689569560616 240 8.1116203690562649 246 10.204793175436661 252 2.458019460657821
		 255 5.3343007251887675 264 0 270 10.204793175436661 276 2.458019460657821 282 2.5145689569560616
		 288 8.1116203690562649 294 10.204793175436661 300 2.458019460657821 306 2.5145689569560616
		 312 8.1116203690562649;
	setAttr -s 56 ".kit[0:55]"  1 18 18 18 1 18 18 18 
		1 18 18 18 18 1 18 18 18 1 18 18 18 18 18 1 18 
		18 18 1 18 18 18 1 18 18 18 1 18 18 18 1 18 18 
		18 1 18 18 1 1 18 18 18 1 18 18 18 1;
	setAttr -s 56 ".kot[0:55]"  1 18 18 18 1 18 18 18 
		1 18 18 18 18 1 18 18 18 1 18 18 18 18 18 1 18 
		18 18 1 18 18 18 1 18 18 18 1 18 18 18 1 18 18 
		18 1 18 18 1 1 18 18 18 1 18 18 18 1;
	setAttr -s 56 ".kix[0:55]"  1 1 1 0.99992990493774414 1 1 1 0.99992990493774414 
		1 1 0.55429345369338989 0.63389497995376587 1 1 1 1 0.99992990493774414 1 1 0.55268847942352295 
		0.71229714155197144 1 0.68074125051498413 1 1 1 0.99992990493774414 1 1 1 0.99992990493774414 
		1 1 1 0.99992990493774414 1 1 1 0.99992990493774414 1 1 1 0.99992990493774414 1 1 
		1 0.93141853809356689 1 1 1 0.99992990493774414 1 1 1 0.99992990493774414 1;
	setAttr -s 56 ".kiy[0:55]"  0 0 0 0.011842869222164154 0 0 0 0.011842869222164154 
		0 0 0.83232128620147705 0.77341914176940918 0 0 0 0 0.011842869222164154 0 0 -0.83338797092437744 
		-0.7018781304359436 0 0.73252397775650024 0 0 0 0.011842869222164154 0 0 0 0.011842869222164154 
		0 0 0 0.011842869222164154 0 0 0 0.011842869222164154 0 0 0 0.011842869222164154 
		0 0 0 0.36394986510276794 0 0 0 0.011842869222164154 0 0 0 0.011842869222164154 0;
	setAttr -s 56 ".kox[0:55]"  1 1 1 0.99992990493774414 1 1 1 0.99992990493774414 
		1 1 0.55429345369338989 0.63389497995376587 1 1 1 1 0.99992990493774414 1 1 0.55268847942352295 
		0.71229714155197144 1 0.68074131011962891 1 1 1 0.99992978572845459 1 1 1 0.99992990493774414 
		1 1 1 0.99992990493774414 1 1 1 0.99992990493774414 1 1 1 0.99992990493774414 1 1 
		1 0.93141853809356689 1 1 1 0.99992990493774414 1 1 1 0.99992990493774414 1;
	setAttr -s 56 ".koy[0:55]"  0 0 0 0.011842869222164154 0 0 0 0.011842869222164154 
		0 0 0.83232128620147705 0.77341914176940918 0 0 0 0 0.011842869222164154 0 0 -0.83338803052902222 
		-0.7018781304359436 0 0.73252397775650024 0 0 0 0.011842867359519005 0 0 0 0.011842869222164154 
		0 0 0 0.011842869222164154 0 0 0 0.011842869222164154 0 0 0 0.011842869222164154 
		0 0 0 0.36394986510276794 0 0 0 0.011842869222164154 0 0 0 0.011842869222164154 0;
createNode animCurveTU -n "Head_Control_scaleX";
	rename -uid "1FCD0F84-5442-4B08-0267-3FA8D61115FB";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 1 12 1 24 1 36 1 48 1 60 1 72 1 84 1 96 1
		 108 1 120 1 132 1 144 1 156 1 168 1 180 1 192 1 204 1 216 1 228 1 240 1 252 1 255 1
		 264 1 276 1 288 1 300 1 312 1;
	setAttr -s 28 ".kit[1:27]"  18 1 18 1 18 1 18 1 
		18 1 18 1 18 1 18 1 18 1 18 1 18 1 1 18 1 
		18 1;
	setAttr -s 28 ".kot[1:27]"  18 1 18 1 18 1 18 1 
		18 1 18 1 18 1 18 1 18 1 18 1 18 1 1 18 1 
		18 1;
	setAttr -s 28 ".kix[0:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1;
	setAttr -s 28 ".kiy[0:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0;
	setAttr -s 28 ".kox[0:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1;
	setAttr -s 28 ".koy[0:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0;
createNode animCurveTU -n "Head_Control_scaleY";
	rename -uid "F4035FAE-874E-D869-48D9-8DA676EC092B";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 1 12 1 24 1 36 1 48 1 60 1 72 1 84 1 96 1
		 108 1 120 1 132 1 144 1 156 1 168 1 180 1 192 1 204 1 216 1 228 1 240 1 252 1 255 1
		 264 1 276 1 288 1 300 1 312 1;
	setAttr -s 28 ".kit[1:27]"  18 1 18 1 18 1 18 1 
		18 1 18 1 18 1 18 1 18 1 18 1 18 1 1 18 1 
		18 1;
	setAttr -s 28 ".kot[1:27]"  18 1 18 1 18 1 18 1 
		18 1 18 1 18 1 18 1 18 1 18 1 18 1 1 18 1 
		18 1;
	setAttr -s 28 ".kix[0:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1;
	setAttr -s 28 ".kiy[0:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0;
	setAttr -s 28 ".kox[0:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1;
	setAttr -s 28 ".koy[0:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0;
createNode animCurveTU -n "Head_Control_scaleZ";
	rename -uid "18FEAD1F-9442-A93A-DB85-5AA729D62BB4";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 1 12 1 24 1 36 1 48 1 60 1 72 1 84 1 96 1
		 108 1 120 1 132 1 144 1 156 1 168 1 180 1 192 1 204 1 216 1 228 1 240 1 252 1 255 1
		 264 1 276 1 288 1 300 1 312 1;
	setAttr -s 28 ".kit[1:27]"  18 1 18 1 18 1 18 1 
		18 1 18 1 18 1 18 1 18 1 18 1 18 1 1 18 1 
		18 1;
	setAttr -s 28 ".kot[1:27]"  18 1 18 1 18 1 18 1 
		18 1 18 1 18 1 18 1 18 1 18 1 18 1 1 18 1 
		18 1;
	setAttr -s 28 ".kix[0:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1;
	setAttr -s 28 ".kiy[0:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0;
	setAttr -s 28 ".kox[0:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1;
	setAttr -s 28 ".koy[0:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LeftShoulder_Control_visibility";
	rename -uid "28855066-6D45-297E-12E1-F1B0DD0B57D5";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 1 12 1 24 1 36 1 48 1 60 1 72 1 84 1 96 1
		 108 1 120 1 132 1 144 1 156 1 168 1 180 1 192 1 204 1 216 1 228 1 240 1 252 1 255 1
		 264 1 276 1 288 1 300 1 312 1;
	setAttr -s 28 ".kit[0:27]"  9 9 9 9 9 9 9 9 
		9 9 9 9 1 9 1 9 1 9 9 9 1 9 1 1 9 
		1 9 1;
	setAttr -s 28 ".kix[12:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".kiy[12:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "LeftShoulder_Control_translateX";
	rename -uid "AF6E71B2-E648-B5A0-2A96-50B03389DA73";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 62.019362821489288 12 62.019362821489288
		 24 62.019362821489288 36 62.019362821489288 48 62.019362821489288 60 62.019362821489288
		 72 62.019362821489288 84 62.019362821489288 96 62.019362821489288 108 62.019362821489288
		 120 62.019362821489288 132 62.019362821489288 144 62.019362821489288 156 62.019362821489288
		 168 62.019362821489288 180 62.019362821489288 192 62.019362821489288 204 62.019362821489288
		 216 62.019362821489288 228 62.019362821489288 240 62.019362821489288 252 62.019362821489288
		 255 62.019362821489288 264 0 276 62.019362821489288 288 62.019362821489288 300 62.019362821489288
		 312 62.019362821489288;
	setAttr -s 28 ".kit[12:27]"  1 18 1 18 1 18 18 18 
		1 18 1 1 18 1 18 1;
	setAttr -s 28 ".kot[8:27]"  1 18 1 18 18 18 18 18 
		18 18 1 18 18 18 1 18 18 18 18 18;
	setAttr -s 28 ".kix[12:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".kiy[12:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 28 ".kox[8:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".koy[8:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "LeftShoulder_Control_translateY";
	rename -uid "77578038-D646-C546-D721-14AD593FFCEE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 0.00031204268347551078 12 0.00031204268347551078
		 24 0.00031204268347551078 36 0.00031204268347551078 48 0.00031204268347551078 60 0.00031204268347551078
		 72 0.00031204268347551078 84 0.00031204268347551078 96 0.00031204268347551078 108 0.00031204268347551078
		 120 0.00031204268347551078 132 0.00031204268347551078 144 0.00031204268347551078
		 156 0.00031204268347551078 168 0.00031204268347551078 180 0.00031204268347551078
		 192 0.00031204268347551078 204 0.00031204268347551078 216 0.00031204268347551078
		 228 0.00031204268347551078 240 0.00031204268347551078 252 0.00031204268347551078
		 255 0.00031204268347551078 264 0 276 0.00031204268347551078 288 0.00031204268347551078
		 300 0.00031204268347551078 312 0.00031204268347551078;
	setAttr -s 28 ".kit[12:27]"  1 18 1 18 1 18 18 18 
		1 18 1 1 18 1 18 1;
	setAttr -s 28 ".kot[8:27]"  1 18 1 18 18 18 18 18 
		18 18 1 18 18 18 1 18 18 18 18 18;
	setAttr -s 28 ".kix[12:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".kiy[12:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 28 ".kox[8:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".koy[8:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "LeftShoulder_Control_translateZ";
	rename -uid "3F139FF9-4046-E786-703F-6B8986288C19";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 3.4604225783496645e-05 12 3.4604225783496645e-05
		 24 3.4604225783496645e-05 36 3.4604225783496645e-05 48 3.4604225783496645e-05 60 3.4604225783496645e-05
		 72 3.4604225783496645e-05 84 3.4604225783496645e-05 96 3.4604225783496645e-05 108 3.4604225783496645e-05
		 120 3.4604225783496645e-05 132 3.4604225783496645e-05 144 3.4604225783496645e-05
		 156 3.4604225783496645e-05 168 3.4604225783496645e-05 180 3.4604225783496645e-05
		 192 3.4604225783496645e-05 204 3.4604225783496645e-05 216 3.4604225783496645e-05
		 228 3.4604225783496645e-05 240 3.4604225783496645e-05 252 3.4604225783496645e-05
		 255 3.4604225783496645e-05 264 0 276 3.4604225783496645e-05 288 3.4604225783496645e-05
		 300 3.4604225783496645e-05 312 3.4604225783496645e-05;
	setAttr -s 28 ".kit[12:27]"  1 18 1 18 1 18 18 18 
		1 18 1 1 18 1 18 1;
	setAttr -s 28 ".kot[8:27]"  1 18 1 18 18 18 18 18 
		18 18 1 18 18 18 1 18 18 18 18 18;
	setAttr -s 28 ".kix[12:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".kiy[12:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 28 ".kox[8:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".koy[8:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LeftShoulder_Control_rotateX";
	rename -uid "C7F8F23A-6B45-AA04-0FCB-D6ADC3CE74EA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 0 12 0 24 0 36 0 48 0 60 0 72 0 84 0 96 0
		 108 0 120 0 132 0 144 0 156 0 168 0 180 0 192 0 204 0 216 0 228 0 240 0 252 0 255 0
		 264 0 276 0 288 0 300 0 312 0;
	setAttr -s 28 ".kit[12:27]"  1 18 1 18 1 18 18 18 
		1 18 1 1 18 1 18 1;
	setAttr -s 28 ".kot[8:27]"  1 18 1 18 18 18 18 18 
		18 18 1 18 18 18 1 18 18 18 18 18;
	setAttr -s 28 ".kix[12:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".kiy[12:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 28 ".kox[8:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".koy[8:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LeftShoulder_Control_rotateY";
	rename -uid "F917AF6B-C943-A23F-7A76-25A6660776D0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 0 12 0 24 0 36 0 48 0 60 0 72 0 84 0 96 0
		 108 0 120 0 132 0 144 0 156 0 168 0 180 0 192 0 204 0 216 0 228 0 240 0 252 0 255 0
		 264 0 276 0 288 0 300 0 312 0;
	setAttr -s 28 ".kit[12:27]"  1 18 1 18 1 18 18 18 
		1 18 1 1 18 1 18 1;
	setAttr -s 28 ".kot[8:27]"  1 18 1 18 18 18 18 18 
		18 18 1 18 18 18 1 18 18 18 18 18;
	setAttr -s 28 ".kix[12:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".kiy[12:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 28 ".kox[8:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".koy[8:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LeftShoulder_Control_rotateZ";
	rename -uid "37B967AD-0649-409F-E7DA-DBB0C3241420";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 0 12 0 24 0 36 0 48 0 60 0 72 0 84 0 96 0
		 108 0 120 0 132 0 144 0 156 0 168 0 180 0 192 0 204 0 216 0 228 0 240 0 252 0 255 0
		 264 0 276 0 288 0 300 0 312 0;
	setAttr -s 28 ".kit[12:27]"  1 18 1 18 1 18 18 18 
		1 18 1 1 18 1 18 1;
	setAttr -s 28 ".kot[8:27]"  1 18 1 18 18 18 18 18 
		18 18 1 18 18 18 1 18 18 18 18 18;
	setAttr -s 28 ".kix[12:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".kiy[12:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 28 ".kox[8:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".koy[8:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LeftShoulder_Control_scaleX";
	rename -uid "5C83ED7B-6F44-59F9-E961-4CBD6817D92A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 1 12 1 24 1 36 1 48 1 60 1 72 1 84 1 96 1
		 108 1 120 1 132 1 144 1 156 1 168 1 180 1 192 1 204 1 216 1 228 1 240 1 252 1 255 1
		 264 1 276 1 288 1 300 1 312 1;
	setAttr -s 28 ".kit[12:27]"  1 18 1 18 1 18 18 18 
		1 18 1 1 18 1 18 1;
	setAttr -s 28 ".kot[8:27]"  1 18 1 18 18 18 18 18 
		18 18 1 18 18 18 1 18 18 18 18 18;
	setAttr -s 28 ".kix[12:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".kiy[12:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 28 ".kox[8:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".koy[8:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LeftShoulder_Control_scaleY";
	rename -uid "C4C35C7B-7D4B-5D55-E348-63B13DEBFC7C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 1 12 1 24 1 36 1 48 1 60 1 72 1 84 1 96 1
		 108 1 120 1 132 1 144 1 156 1 168 1 180 1 192 1 204 1 216 1 228 1 240 1 252 1 255 1
		 264 1 276 1 288 1 300 1 312 1;
	setAttr -s 28 ".kit[12:27]"  1 18 1 18 1 18 18 18 
		1 18 1 1 18 1 18 1;
	setAttr -s 28 ".kot[8:27]"  1 18 1 18 18 18 18 18 
		18 18 1 18 18 18 1 18 18 18 18 18;
	setAttr -s 28 ".kix[12:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".kiy[12:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 28 ".kox[8:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".koy[8:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LeftShoulder_Control_scaleZ";
	rename -uid "CCBF064E-C14A-771E-E87E-2B9904F200DD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 1 12 1 24 1 36 1 48 1 60 1 72 1 84 1 96 1
		 108 1 120 1 132 1 144 1 156 1 168 1 180 1 192 1 204 1 216 1 228 1 240 1 252 1 255 1
		 264 1 276 1 288 1 300 1 312 1;
	setAttr -s 28 ".kit[12:27]"  1 18 1 18 1 18 18 18 
		1 18 1 1 18 1 18 1;
	setAttr -s 28 ".kot[8:27]"  1 18 1 18 18 18 18 18 
		18 18 1 18 18 18 1 18 18 18 18 18;
	setAttr -s 28 ".kix[12:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".kiy[12:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 28 ".kox[8:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".koy[8:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RightShoulder_Control_visibility";
	rename -uid "C3E46F79-A448-D5AE-D31C-DB939C4F1966";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 1 12 1 24 1 36 1 48 1 60 1 72 1 84 1 96 1
		 108 1 120 1 132 1 144 1 156 1 168 1 180 1 192 1 204 1 216 1 228 1 240 1 252 1 255 1
		 264 1 276 1 288 1 300 1 312 1;
	setAttr -s 28 ".kit[0:27]"  9 9 9 9 9 9 9 9 
		9 9 9 9 1 9 1 9 1 9 9 9 1 9 1 1 9 
		1 9 1;
	setAttr -s 28 ".kix[12:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".kiy[12:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "RightShoulder_Control_translateX";
	rename -uid "467F9FC1-174A-BA33-8F4C-C4B8F946934C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 0 12 0 24 0 36 0 48 0 60 0 72 0 84 0 96 0
		 108 0 120 0 132 0 144 0 156 0 168 0 180 0 192 0 204 0 216 0 228 0 240 0 252 0 255 0
		 264 0 276 0 288 0 300 0 312 0;
	setAttr -s 28 ".kit[12:27]"  1 18 1 18 1 18 18 18 
		1 18 1 1 18 1 18 1;
	setAttr -s 28 ".kot[8:27]"  1 18 1 18 18 18 18 18 
		18 18 1 18 18 18 1 18 18 18 18 18;
	setAttr -s 28 ".kix[12:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".kiy[12:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 28 ".kox[8:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".koy[8:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "RightShoulder_Control_translateY";
	rename -uid "7BBBC43C-174D-22FF-F741-0D8F64E169A4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 0 12 0 24 0 36 0 48 0 60 0 72 0 84 0 96 0
		 108 0 120 0 132 0 144 0 156 0 168 0 180 0 192 0 204 0 216 0 228 0 240 0 252 0 255 0
		 264 0 276 0 288 0 300 0 312 0;
	setAttr -s 28 ".kit[12:27]"  1 18 1 18 1 18 18 18 
		1 18 1 1 18 1 18 1;
	setAttr -s 28 ".kot[8:27]"  1 18 1 18 18 18 18 18 
		18 18 1 18 18 18 1 18 18 18 18 18;
	setAttr -s 28 ".kix[12:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".kiy[12:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 28 ".kox[8:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".koy[8:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "RightShoulder_Control_translateZ";
	rename -uid "1E8BC4A7-B646-5AA5-5E20-43850D2DD27A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 0 12 0 24 0 36 0 48 0 60 0 72 0 84 0 96 0
		 108 0 120 0 132 0 144 0 156 0 168 0 180 0 192 0 204 0 216 0 228 0 240 0 252 0 255 0
		 264 0 276 0 288 0 300 0 312 0;
	setAttr -s 28 ".kit[12:27]"  1 18 1 18 1 18 18 18 
		1 18 1 1 18 1 18 1;
	setAttr -s 28 ".kot[8:27]"  1 18 1 18 18 18 18 18 
		18 18 1 18 18 18 1 18 18 18 18 18;
	setAttr -s 28 ".kix[12:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".kiy[12:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 28 ".kox[8:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".koy[8:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RightShoulder_Control_rotateX";
	rename -uid "4E358046-4249-F316-0382-739F64A52F1C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 0 12 0 24 0 36 0 48 0 60 0 72 0 84 0 96 0
		 108 0 120 0 132 0 144 0 156 0 168 0 180 0 192 0 204 0 216 0 228 0 240 0 252 0 255 0
		 264 0 276 0 288 0 300 0 312 0;
	setAttr -s 28 ".kit[12:27]"  1 18 1 18 1 18 18 18 
		1 18 1 1 18 1 18 1;
	setAttr -s 28 ".kot[8:27]"  1 18 1 18 18 18 18 18 
		18 18 1 18 18 18 1 18 18 18 18 18;
	setAttr -s 28 ".kix[12:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".kiy[12:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 28 ".kox[8:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".koy[8:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RightShoulder_Control_rotateY";
	rename -uid "06A7B363-5947-4929-4255-AA8128B88B2E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 0 12 0 24 0 36 0 48 0 60 0 72 0 84 0 96 0
		 108 0 120 0 132 0 144 0 156 0 168 0 180 0 192 0 204 0 216 0 228 0 240 0 252 0 255 0
		 264 0 276 0 288 0 300 0 312 0;
	setAttr -s 28 ".kit[12:27]"  1 18 1 18 1 18 18 18 
		1 18 1 1 18 1 18 1;
	setAttr -s 28 ".kot[8:27]"  1 18 1 18 18 18 18 18 
		18 18 1 18 18 18 1 18 18 18 18 18;
	setAttr -s 28 ".kix[12:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".kiy[12:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 28 ".kox[8:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".koy[8:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RightShoulder_Control_rotateZ";
	rename -uid "38BD8C97-1C43-5CE2-E44B-F683B7CA8FFD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 0 12 0 24 0 36 0 48 0 60 0 72 0 84 0 96 0
		 108 0 120 0 132 0 144 0 156 0 168 0 180 0 192 0 204 0 216 0 228 0 240 0 252 0 255 0
		 264 0 276 0 288 0 300 0 312 0;
	setAttr -s 28 ".kit[12:27]"  1 18 1 18 1 18 18 18 
		1 18 1 1 18 1 18 1;
	setAttr -s 28 ".kot[8:27]"  1 18 1 18 18 18 18 18 
		18 18 1 18 18 18 1 18 18 18 18 18;
	setAttr -s 28 ".kix[12:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".kiy[12:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 28 ".kox[8:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".koy[8:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RightShoulder_Control_scaleX";
	rename -uid "BBA09445-5845-6136-8891-B08CCCEE6054";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 1 12 1 24 1 36 1 48 1 60 1 72 1 84 1 96 1
		 108 1 120 1 132 1 144 1 156 1 168 1 180 1 192 1 204 1 216 1 228 1 240 1 252 1 255 1
		 264 1 276 1 288 1 300 1 312 1;
	setAttr -s 28 ".kit[12:27]"  1 18 1 18 1 18 18 18 
		1 18 1 1 18 1 18 1;
	setAttr -s 28 ".kot[8:27]"  1 18 1 18 18 18 18 18 
		18 18 1 18 18 18 1 18 18 18 18 18;
	setAttr -s 28 ".kix[12:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".kiy[12:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 28 ".kox[8:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".koy[8:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RightShoulder_Control_scaleY";
	rename -uid "785FFF47-9A4D-6A6F-CE94-3993A4E83DED";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 1 12 1 24 1 36 1 48 1 60 1 72 1 84 1 96 1
		 108 1 120 1 132 1 144 1 156 1 168 1 180 1 192 1 204 1 216 1 228 1 240 1 252 1 255 1
		 264 1 276 1 288 1 300 1 312 1;
	setAttr -s 28 ".kit[12:27]"  1 18 1 18 1 18 18 18 
		1 18 1 1 18 1 18 1;
	setAttr -s 28 ".kot[8:27]"  1 18 1 18 18 18 18 18 
		18 18 1 18 18 18 1 18 18 18 18 18;
	setAttr -s 28 ".kix[12:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".kiy[12:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 28 ".kox[8:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".koy[8:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RightShoulder_Control_scaleZ";
	rename -uid "DF980F07-9540-4300-8B1D-7C90D1F721FC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 1 12 1 24 1 36 1 48 1 60 1 72 1 84 1 96 1
		 108 1 120 1 132 1 144 1 156 1 168 1 180 1 192 1 204 1 216 1 228 1 240 1 252 1 255 1
		 264 1 276 1 288 1 300 1 312 1;
	setAttr -s 28 ".kit[12:27]"  1 18 1 18 1 18 18 18 
		1 18 1 1 18 1 18 1;
	setAttr -s 28 ".kot[8:27]"  1 18 1 18 18 18 18 18 
		18 18 1 18 18 18 1 18 18 18 18 18;
	setAttr -s 28 ".kix[12:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".kiy[12:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 28 ".kox[8:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".koy[8:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LeftHand_Control_visibility";
	rename -uid "F161363F-D64B-2002-A886-E4A1B3309CB8";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 78 ".ktv[0:77]"  0 1 4 1 8 1 12 1 16 1 20 1 24 1 28 1 32 1
		 36 1 40 1 44 1 48 1 52 1 56 1 60 1 64 1 68 1 72 1 76 1 80 1 84 1 88 1 92 1 96 1 100 1
		 104 1 108 1 112 1 116 1 120 1 124 1 128 1 132 1 136 1 140 1 144 1 148 1 152 1 156 1
		 160 1 164 1 168 1 172 1 176 1 180 1 184 1 188 1 192 1 196 1 200 1 204 1 208 1 212 1
		 216 1 220 1 224 1 228 1 232 1 236 1 240 1 244 1 248 1 252 1 255 1 264 1 268 1 272 1
		 276 1 280 1 284 1 288 1 292 1 296 1 300 1 304 1 308 1 312 1;
	setAttr -s 78 ".kit[0:77]"  1 9 9 1 9 9 1 9 
		9 1 9 9 1 9 9 1 9 9 1 9 9 1 9 9 9 
		9 9 1 9 9 9 9 9 1 9 9 1 9 9 1 9 9 
		1 9 9 1 9 9 1 9 9 1 9 9 9 9 9 1 9 
		9 1 9 9 1 1 1 9 9 1 9 9 1 9 9 1 9 
		9 1;
	setAttr -s 78 ".kix[0:77]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 78 ".kiy[0:77]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "LeftHand_Control_translateX";
	rename -uid "D3EE3FB0-5A40-90F2-8E3C-F0BBF3E8ED20";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 78 ".ktv[0:77]"  0 -13.727901546401547 4 -13.267254646879739
		 8 -12.55100532195846 12 -20.028625236723617 16 -22.440930532617767 20 -13.75820626041769
		 24 -13.727901546401547 28 -12.55100532195846 32 -12.55100532195846 36 -18.685511007074599
		 40 -21.261694532554298 44 -16.943119712038364 48 -12.55100532195846 52 -8.8572359475552389
		 56 -2.483728311672678 60 15.05386054207789 64 -30.924321361069257 68 -16.943119712038364
		 72 -12.55100532195846 76 -12.55100532195846 80 -12.55100532195846 84 -18.685511007074599
		 88 -21.261694532554298 92 -16.943119712038364 96 -12.55100532195846 100 -44.789478762382259
		 104 -61.510448121184588 108 -57.388724589932167 112 -53.681263163831701 116 -16.943119712038364
		 120 -12.55100532195846 124 -12.55100532195846 128 -12.55100532195846 132 -18.685511007074599
		 136 -21.261694532554298 140 -16.943119712038364 144 -12.55100532195846 148 -12.55100532195846
		 152 -12.55100532195846 156 -18.685511007074599 160 -21.261694532554298 164 -16.943119712038364
		 168 -12.55100532195846 172 -12.55100532195846 176 -12.55100532195846 180 -18.685511007074599
		 184 -21.261694532554298 188 -16.943119712038364 192 -12.55100532195846 196 -12.55100532195846
		 200 -12.55100532195846 204 -18.685511007074599 208 -21.261694532554298 212 -16.943119712038364
		 216 -12.55100532195846 220 -12.55100532195846 224 -12.55100532195846 228 -18.685511007074599
		 232 -21.261694532554298 236 -16.943119712038364 240 -12.55100532195846 244 -12.55100532195846
		 248 -12.55100532195846 252 -18.685511007074599 255 -15.644371513999662 264 -27.963136771871696
		 268 -12.55100532195846 272 -12.55100532195846 276 -18.685511007074599 280 -21.261694532554298
		 284 -16.943119712038364 288 -12.55100532195846 292 -12.55100532195846 296 -12.55100532195846
		 300 -18.685511007074599 304 -21.261694532554298 308 -16.943119712038364 312 -12.55100532195846;
	setAttr -s 78 ".kit[0:77]"  1 18 18 1 18 18 1 18 
		18 1 18 18 1 18 18 1 18 18 1 18 18 1 18 18 18 
		18 18 1 18 18 18 18 18 1 18 18 1 18 18 1 18 18 
		1 18 18 1 18 18 1 18 18 1 18 18 18 18 18 1 18 
		18 1 18 18 1 1 1 18 18 1 18 18 1 18 18 1 18 
		18 1;
	setAttr -s 78 ".kot[0:77]"  1 18 18 1 18 18 1 18 
		18 1 18 18 1 18 18 1 18 18 1 18 18 1 18 18 1 
		18 18 1 18 18 1 18 18 1 18 18 18 18 18 1 18 18 
		18 18 18 1 18 18 18 18 18 1 18 18 1 18 18 1 18 
		18 18 18 18 1 1 18 18 18 1 18 18 18 18 18 1 18 
		18 18;
	setAttr -s 78 ".kix[0:77]"  1 0.27251130342483521 1 1 1 0.8778843879699707 
		1 1 1 1 1 0.038239177316427231 1 0.033092431724071503 0.013939171098172665 1 1 0.018139263615012169 
		1 1 1 1 1 0.038239158689975739 1 0.0068082017824053764 1 1 0.014983100816607475 0.012647908180952072 
		1 1 1 1 1 0.038239188492298126 1 1 1 1 1 0.038239188492298126 1 1 1 1 1 0.038239188492298126 
		1 1 1 1 1 0.038239132612943649 1 1 1 1 1 0.038239132612943649 1 1 1 1 0.037919573485851288 
		1 1 1 1 1 0.038239132612943649 1 1 1 1 1 0.038239132612943649 1;
	setAttr -s 78 ".kiy[0:77]"  0 0.96215254068374634 0 0 0 0.47887256741523743 
		0 0 0 0 0 0.99926865100860596 0 0.99945229291915894 0.99990284442901611 0 0 0.99983549118041992 
		0 0 0 0 0 0.99926853179931641 0 -0.99997687339782715 0 0 0.99988776445388794 0.99992001056671143 
		0 0 0 0 0 0.99926865100860596 0 0 0 0 0 0.99926865100860596 0 0 0 0 0 0.99926865100860596 
		0 0 0 0 0 0.99926865100860596 0 0 0 0 0 0.99926865100860596 0 0 0 0 0.99928075075149536 
		0 0 0 0 0 0.99926865100860596 0 0 0 0 0 0.99926865100860596 0;
	setAttr -s 78 ".kox[0:77]"  1 0.27251130342483521 1 1 1 0.87788444757461548 
		1 1 1 1 1 0.038239177316427231 1 0.033092431724071503 0.013939172029495239 1 1 0.018139263615012169 
		1 1 1 1 1 0.038239162415266037 1 0.0068082013167440891 1 1 0.014983099885284901 0.012647908180952072 
		1 1 1 1 1 0.038239188492298126 1 1 1 1 1 0.038239188492298126 1 1 1 1 1 0.038239188492298126 
		1 1 1 1 1 0.038239136338233948 1 1 1 1 1 0.038239136338233948 1 1 1 1 0.037919577211141586 
		1 1 1 1 1 0.038239136338233948 1 1 1 1 1 0.038239136338233948 1;
	setAttr -s 78 ".koy[0:77]"  0 0.96215254068374634 0 0 0 0.4788726270198822 
		0 0 0 0 0 0.99926865100860596 0 0.99945229291915894 0.99990290403366089 0 0 0.99983549118041992 
		0 0 0 0 0 0.99926865100860596 0 -0.9999767541885376 0 0 0.99988776445388794 0.99992001056671143 
		0 0 0 0 0 0.99926865100860596 0 0 0 0 0 0.99926865100860596 0 0 0 0 0 0.99926865100860596 
		0 0 0 0 0 0.99926865100860596 0 0 0 0 0 0.99926865100860596 0 0 0 0 0.99928081035614014 
		0 0 0 0 0 0.99926865100860596 0 0 0 0 0 0.99926865100860596 0;
createNode animCurveTL -n "LeftHand_Control_translateY";
	rename -uid "DDF74630-9747-11FE-EE52-F48170E50B8A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 78 ".ktv[0:77]"  0 6.5395783704263692 4 7.6396762177805471
		 8 9.0854620152291314 12 3.1831830322754797 16 4.3473915279295881 20 9.6885062552651959
		 24 6.5395783704263692 28 -5.6758958795758474 32 9.0854620152291314 36 0.081018962069890677
		 40 -5.4979570372893249 44 9.6885062552651959 48 0.081018962069890677 52 -5.6758958795758474
		 56 -0.66207098227065586 60 -3.2797176889509529 64 -5.4979570372893249 68 9.6885062552651959
		 72 0.081018962069890677 76 -5.6758958795758474 80 9.0854620152291314 84 0.081018962069890677
		 88 -5.4979570372893249 92 9.6885062552651959 96 0.081018962069890677 100 8.1382669081896069
		 104 15.376102640221111 108 12.118196116395268 112 13.47322611784476 116 9.6885062552651959
		 120 0.081018962069890677 124 -5.6758958795758474 128 9.0854620152291314 132 0.081018962069890677
		 136 -5.4979570372893249 140 9.6885062552651959 144 0.081018962069890677 148 -5.6758958795758474
		 152 9.0854620152291314 156 0.081018962069890677 160 -5.4979570372893249 164 9.6885062552651959
		 168 0.081018962069890677 172 -5.6758958795758474 176 9.0854620152291314 180 0.081018962069890677
		 184 -5.4979570372893249 188 9.6885062552651959 192 0.081018962069890677 196 -5.6758958795758474
		 200 9.0854620152291314 204 0.081018962069890677 208 -5.4979570372893249 212 9.6885062552651959
		 216 0.081018962069890677 220 -5.6758958795758474 224 9.0854620152291314 228 0.081018962069890677
		 232 -5.4979570372893249 236 9.6885062552651959 240 0.081018962069890677 244 -5.6758958795758474
		 248 9.0854620152291314 252 0.081018962069890677 255 8.5474282037316502 264 18.086239604606519
		 268 -5.6758958795758474 272 9.0854620152291314 276 0.081018962069890677 280 -5.4979570372893249
		 284 9.6885062552651959 288 0.081018962069890677 292 -5.6758958795758474 296 9.0854620152291314
		 300 0.081018962069890677 304 -5.4979570372893249 308 9.6885062552651959 312 0.081018962069890677;
	setAttr -s 78 ".kit[0:77]"  1 18 18 1 18 18 1 18 
		18 1 18 18 1 18 18 1 18 18 1 18 18 1 18 18 18 
		18 18 1 18 18 18 18 18 1 18 18 1 18 18 1 18 18 
		1 18 18 1 18 18 1 18 18 1 18 18 18 18 18 1 18 
		18 1 18 18 1 1 1 18 18 1 18 18 1 18 18 1 18 
		18 1;
	setAttr -s 78 ".kot[0:77]"  1 18 18 1 18 18 1 18 
		18 1 18 18 1 18 18 1 18 18 1 18 18 1 18 18 1 
		18 18 1 18 18 1 18 18 1 18 18 18 18 18 1 18 18 
		18 18 18 1 18 18 18 18 18 1 18 18 1 18 18 1 18 
		18 18 18 18 1 1 18 18 18 1 18 18 18 18 18 1 18 
		18 18;
	setAttr -s 78 ".kix[0:77]"  1 0.12982228398323059 1 1 0.051172949373722076 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.021788332611322403 1 1 1 0.024882400408387184 
		0.021690046414732933 1 1 1 1 1 0.021690066903829575 1 1 1 1 1 0.021690066903829575 
		1 1 1 1 1 0.021690066903829575 1 1 1 1 1 0.021690109744668007 1 1 1 1 1 0.021690066903829575 
		1 1 1 0.01734500378370285 0.021690066903829575 1 1 1 1 1 0.021690066903829575 1 1 
		1 1 1 0.021690066903829575;
	setAttr -s 78 ".kiy[0:77]"  0 0.99153727293014526 0 0 0.99868983030319214 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.99976259469985962 0 0 0 -0.99969035387039185 
		-0.99976474046707153 0 0 0 0 0 -0.99976474046707153 0 0 0 0 0 -0.99976474046707153 
		0 0 0 0 0 -0.99976474046707153 0 0 0 0 0 -0.99976474046707153 0 0 0 0 0 -0.99976474046707153 
		0 0 0 -0.99984955787658691 -0.99976474046707153 0 0 0 0 0 -0.99976474046707153 0 
		0 0 0 0 -0.99976474046707153;
	setAttr -s 78 ".kox[0:77]"  1 0.12982228398323059 1 1 0.051172949373722076 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.021788332611322403 1 1 1 0.024882400408387184 
		1 1 1 1 1 1 0.021690046414732933 1 1 1 1 1 0.021690046414732933 1 1 1 1 1 0.02169007807970047 
		1 1 1 1 1 1 1 1 1 1 1 0.021690109744668007 1 1 1 0.01734500378370285 1 1 1 1 1 1 
		0.021690109744668007 1 1 1 1 1 1;
	setAttr -s 78 ".koy[0:77]"  0 0.99153727293014526 0 0 0.99868983030319214 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.99976259469985962 0 0 0 -0.99969035387039185 
		0 0 0 0 0 0 -0.99976474046707153 0 0 0 0 0 -0.99976474046707153 0 0 0 0 0 -0.99976474046707153 
		0 0 0 0 0 0 0 0 0 0 0 -0.99976474046707153 0 0 0 -0.99984955787658691 0 0 0 0 0 0 
		-0.99976474046707153 0 0 0 0 0 0;
createNode animCurveTL -n "LeftHand_Control_translateZ";
	rename -uid "DF8C7AE8-0546-363E-8C39-38B05D6D1D43";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 78 ".ktv[0:77]"  0 51.758903592501063 4 49.231127859270963
		 8 55.304702141977167 12 44.678820964961993 16 41.501009550334651 20 52.013258555197545
		 24 51.758903592501063 28 55.304702141977167 32 55.304702141977167 36 49.678821470382182
		 40 47.622585587490583 44 57.867952425593465 48 55.304702141977167 52 34.750636251035722
		 56 -11.793445768921693 60 12.620071297617004 64 64.37545115191547 68 57.867952425593465
		 72 55.304702141977167 76 55.304702141977167 80 55.304702141977167 84 49.678821470382182
		 88 47.622585587490583 92 57.867952425593465 96 55.304702141977167 100 18.718364692412401
		 104 2.2278530124025169 108 10.975607887524609 112 32.671046470160988 116 25.001102898610903
		 120 55.304702141977167 124 55.304702141977167 128 55.304702141977167 132 49.678821470382182
		 136 47.622585587490583 140 57.867952425593465 144 55.304702141977167 148 55.304702141977167
		 152 55.304702141977167 156 49.678821470382182 160 47.622585587490583 164 57.867952425593465
		 168 55.304702141977167 172 55.304702141977167 176 55.304702141977167 180 49.678821470382182
		 184 47.622585587490583 188 57.867952425593465 192 55.304702141977167 196 55.304702141977167
		 200 55.304702141977167 204 49.678821470382182 208 47.622585587490583 212 57.867952425593465
		 216 55.304702141977167 220 55.304702141977167 224 55.304702141977167 228 49.678821470382182
		 232 47.622585587490583 236 57.867952425593465 240 55.304702141977167 244 55.304702141977167
		 248 55.304702141977167 252 49.678821470382182 255 57.467440443674604 264 22.337887800777992
		 268 55.304702141977167 272 55.304702141977167 276 49.678821470382182 280 47.622585587490583
		 284 57.867952425593465 288 55.304702141977167 292 55.304702141977167 296 55.304702141977167
		 300 49.678821470382182 304 47.622585587490583 308 57.867952425593465 312 55.304702141977167;
	setAttr -s 78 ".kit[0:77]"  1 18 18 1 18 18 1 18 
		18 1 18 18 1 18 18 1 18 18 1 18 18 1 18 18 18 
		18 18 1 18 1 18 18 18 1 18 18 1 18 18 1 18 18 
		1 18 18 1 18 18 1 18 18 1 18 18 18 18 18 1 18 
		18 1 18 18 1 1 1 18 18 1 18 18 1 18 18 1 18 
		18 1;
	setAttr -s 78 ".kot[0:77]"  1 18 18 1 18 18 1 18 
		18 1 18 18 1 18 18 1 18 18 1 18 18 1 18 18 1 
		18 18 1 18 1 1 18 18 1 18 18 18 18 18 1 18 18 
		18 18 18 1 18 18 18 18 18 1 18 18 1 18 18 1 18 
		18 18 18 18 1 1 18 18 18 1 18 18 18 18 18 1 18 
		18 18;
	setAttr -s 78 ".kix[0:77]"  1 1 1 1 1 1 1 1 1 1 1 1 1 0.0049677840434014797 
		1 1 1 0.036723364144563675 1 1 1 1 1 1 0.021668791770935059 0.0062800813466310501 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.064884722232818604 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 78 ".kiy[0:77]"  0 0 0 0 0 0 0 0 0 0 0 0 0 -0.99998760223388672 
		0 0 0 -0.9993254542350769 0 0 0 0 0 0 -0.99976515769958496 -0.99998033046722412 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.99789273738861084 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 78 ".kox[0:77]"  1 1 1 1 1 1 1 1 1 1 1 1 1 0.004967784509062767 
		1 1 1 0.036723360419273376 1 1 1 1 1 1 1 0.0062800808809697628 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.064884722232818604 1 
		1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 78 ".koy[0:77]"  0 0 0 0 0 0 0 0 0 0 0 0 0 -0.99998760223388672 
		0 0 0 -0.9993254542350769 0 0 0 0 0 0 0 -0.99998021125793457 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.99789279699325562 0 0 
		0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LeftHand_Control_rotateX";
	rename -uid "501D87D9-FD4B-78FB-752E-83B31DCF7B3C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 78 ".ktv[0:77]"  0 -41.874800070444657 4 -41.874800070444657
		 8 -41.874800070444657 12 -41.874800070444657 16 -41.874800070444657 20 -41.874800070444657
		 24 -41.874800070444657 28 -41.874800070444657 32 -41.874800070444657 36 -41.874800070444657
		 40 -41.874800070444657 44 -41.874800070444657 48 -41.874800070444657 52 -76.185554185556171
		 56 -89.797326834216392 60 -62.04670558435997 64 -41.874800070444657 68 -41.874800070444657
		 72 -41.874800070444657 76 -41.874800070444657 80 -41.874800070444657 84 -41.874800070444657
		 88 -41.874800070444657 92 -41.874800070444657 96 -41.874800070444657 100 -44.087950145638089
		 104 -42.638502180439232 108 -50.563321512359714 112 -68.80644377421261 116 -41.874800070444657
		 120 -41.874800070444657 124 -41.874800070444657 128 -41.874800070444657 132 -41.874800070444657
		 136 -41.874800070444657 140 -41.874800070444657 144 -41.874800070444657 148 -41.874800070444657
		 152 -41.874800070444657 156 -41.874800070444657 160 -41.874800070444657 164 -41.874800070444657
		 168 -41.874800070444657 172 -41.874800070444657 176 -41.874800070444657 180 -41.874800070444657
		 184 -41.874800070444657 188 -41.874800070444657 192 -41.874800070444657 196 -41.874800070444657
		 200 -41.874800070444657 204 -41.874800070444657 208 -41.874800070444657 212 -41.874800070444657
		 216 -41.874800070444657 220 -41.874800070444657 224 -41.874800070444657 228 -41.874800070444657
		 232 -41.874800070444657 236 -41.874800070444657 240 -41.874800070444657 244 -41.874800070444657
		 248 -41.874800070444657 252 -41.874800070444657 255 -41.874800070444657 264 -39.901514196244072
		 268 -41.874800070444657 272 -41.874800070444657 276 -41.874800070444657 280 -41.874800070444657
		 284 -41.874800070444657 288 -41.874800070444657 292 -41.874800070444657 296 -41.874800070444657
		 300 -41.874800070444657 304 -41.874800070444657 308 -41.874800070444657 312 -41.874800070444657;
	setAttr -s 78 ".kit[0:77]"  1 18 18 1 18 18 1 18 
		18 1 18 18 1 18 18 1 18 18 1 18 18 1 18 18 18 
		18 18 1 18 18 18 18 18 1 18 18 1 18 18 1 18 18 
		1 18 18 1 18 18 1 18 18 1 18 18 18 18 18 1 18 
		18 1 18 18 1 1 1 18 18 1 18 18 1 18 18 1 18 
		18 1;
	setAttr -s 78 ".kot[0:77]"  1 18 18 1 18 18 1 18 
		18 1 18 18 1 18 18 1 18 18 1 18 18 1 18 18 1 
		18 18 1 18 18 1 18 18 1 18 18 18 18 18 1 18 18 
		18 18 18 1 18 18 18 18 18 1 18 18 1 18 18 1 18 
		18 18 18 18 1 1 18 18 18 1 18 18 18 18 18 1 18 
		18 18;
	setAttr -s 78 ".kix[0:77]"  1 1 1 1 1 1 1 1 1 1 1 1 1 0.37021359801292419 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 78 ".kiy[0:77]"  0 0 0 0 0 0 0 0 0 0 0 0 0 -0.92894667387008667 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 78 ".kox[0:77]"  1 1 1 1 1 1 1 1 1 1 1 1 1 0.37021356821060181 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 78 ".koy[0:77]"  0 0 0 0 0 0 0 0 0 0 0 0 0 -0.92894667387008667 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LeftHand_Control_rotateY";
	rename -uid "2DFBB2ED-054B-F2BC-6552-1F97F036A2B4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 78 ".ktv[0:77]"  0 17.706949063986439 4 17.706949063986439
		 8 17.706949063986439 12 17.706949063986439 16 17.706949063986439 20 17.706949063986439
		 24 17.706949063986439 28 17.706949063986439 32 17.706949063986439 36 17.706949063986439
		 40 17.706949063986439 44 17.706949063986439 48 17.706949063986439 52 17.706949063986439
		 56 22.174813263954867 60 17.277423141591033 64 17.706949063986439 68 17.706949063986439
		 72 17.706949063986439 76 17.706949063986439 80 17.706949063986439 84 17.706949063986439
		 88 17.706949063986439 92 17.706949063986439 96 17.706949063986439 100 26.999412388896353
		 104 2.2863846365008507 108 5.6970395692708529 112 39.511681829726726 116 17.706949063986439
		 120 17.706949063986439 124 17.706949063986439 128 17.706949063986439 132 17.706949063986439
		 136 17.706949063986439 140 17.706949063986439 144 17.706949063986439 148 17.706949063986439
		 152 17.706949063986439 156 17.706949063986439 160 17.706949063986439 164 17.706949063986439
		 168 17.706949063986439 172 17.706949063986439 176 17.706949063986439 180 17.706949063986439
		 184 17.706949063986439 188 17.706949063986439 192 17.706949063986439 196 17.706949063986439
		 200 17.706949063986439 204 17.706949063986439 208 17.706949063986439 212 17.706949063986439
		 216 17.706949063986439 220 17.706949063986439 224 17.706949063986439 228 17.706949063986439
		 232 17.706949063986439 236 17.706949063986439 240 17.706949063986439 244 17.706949063986439
		 248 17.706949063986439 252 17.706949063986439 255 17.706949063986439 264 28.025105576533026
		 268 17.706949063986439 272 17.706949063986439 276 17.706949063986439 280 17.706949063986439
		 284 17.706949063986439 288 17.706949063986439 292 17.706949063986439 296 17.706949063986439
		 300 17.706949063986439 304 17.706949063986439 308 17.706949063986439 312 17.706949063986439;
	setAttr -s 78 ".kit[0:77]"  1 18 18 1 18 18 1 18 
		18 1 18 18 1 18 18 1 18 18 1 18 18 1 18 18 18 
		18 18 1 18 18 18 18 18 1 18 18 1 18 18 1 18 18 
		1 18 18 1 18 18 1 18 18 1 18 18 18 18 18 1 18 
		18 1 18 18 1 1 1 18 18 1 18 18 1 18 18 1 18 
		18 1;
	setAttr -s 78 ".kot[0:77]"  1 18 18 1 18 18 1 18 
		18 1 18 18 1 18 18 1 18 18 1 18 18 1 18 18 1 
		18 18 1 18 18 1 18 18 1 18 18 18 18 18 1 18 18 
		18 18 18 1 18 18 18 18 18 1 18 18 1 18 18 1 18 
		18 18 18 18 1 1 18 18 18 1 18 18 18 18 18 1 18 
		18 18;
	setAttr -s 78 ".kix[0:77]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 78 ".kiy[0:77]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 78 ".kox[0:77]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 78 ".koy[0:77]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LeftHand_Control_rotateZ";
	rename -uid "A7072FC6-2C48-45AE-E3A2-1B9D511E440C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 78 ".ktv[0:77]"  0 -92.041489596790697 4 -92.041489596790697
		 8 -92.041489596790697 12 -92.041489596790697 16 -92.041489596790697 20 -92.041489596790697
		 24 -92.041489596790697 28 -92.041489596790697 32 -92.041489596790697 36 -92.041489596790697
		 40 -92.041489596790697 44 -92.041489596790697 48 -92.041489596790697 52 -92.041489596790697
		 56 -102.06612458755436 60 -106.58887179080476 64 -92.041489596790697 68 -92.041489596790697
		 72 -92.041489596790697 76 -92.041489596790697 80 -92.041489596790697 84 -92.041489596790697
		 88 -92.041489596790697 92 -92.041489596790697 96 -92.041489596790697 100 -100.3707421664853
		 104 -59.571442643382724 108 -78.407278290111051 112 -93.001738489913805 116 -92.041489596790697
		 120 -92.041489596790697 124 -92.041489596790697 128 -92.041489596790697 132 -92.041489596790697
		 136 -92.041489596790697 140 -92.041489596790697 144 -92.041489596790697 148 -92.041489596790697
		 152 -92.041489596790697 156 -92.041489596790697 160 -92.041489596790697 164 -92.041489596790697
		 168 -92.041489596790697 172 -92.041489596790697 176 -92.041489596790697 180 -92.041489596790697
		 184 -92.041489596790697 188 -92.041489596790697 192 -92.041489596790697 196 -92.041489596790697
		 200 -92.041489596790697 204 -92.041489596790697 208 -92.041489596790697 212 -92.041489596790697
		 216 -92.041489596790697 220 -92.041489596790697 224 -92.041489596790697 228 -92.041489596790697
		 232 -92.041489596790697 236 -92.041489596790697 240 -92.041489596790697 244 -92.041489596790697
		 248 -92.041489596790697 252 -92.041489596790697 255 -92.041489596790697 264 -86.55729968268453
		 268 -92.041489596790697 272 -92.041489596790697 276 -92.041489596790697 280 -92.041489596790697
		 284 -92.041489596790697 288 -92.041489596790697 292 -92.041489596790697 296 -92.041489596790697
		 300 -92.041489596790697 304 -92.041489596790697 308 -92.041489596790697 312 -92.041489596790697;
	setAttr -s 78 ".kit[0:77]"  1 18 18 1 18 18 1 18 
		18 1 18 18 1 18 18 1 18 18 1 18 18 1 18 18 18 
		18 18 1 18 18 18 18 18 1 18 18 1 18 18 1 18 18 
		1 18 18 1 18 18 1 18 18 1 18 18 18 18 18 1 18 
		18 1 18 18 1 1 1 18 18 1 18 18 1 18 18 1 18 
		18 1;
	setAttr -s 78 ".kot[0:77]"  1 18 18 1 18 18 1 18 
		18 1 18 18 1 18 18 1 18 18 1 18 18 1 18 18 1 
		18 18 1 18 18 1 18 18 1 18 18 18 18 18 1 18 18 
		18 18 18 1 18 18 18 18 18 1 18 18 1 18 18 1 18 
		18 18 18 18 1 1 18 18 18 1 18 18 18 18 18 1 18 
		18 18;
	setAttr -s 78 ".kix[0:77]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.79551047086715698 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 78 ".kiy[0:77]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.60593980550765991 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 78 ".kox[0:77]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.79551047086715698 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 78 ".koy[0:77]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.60593980550765991 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LeftHand_Control_scaleX";
	rename -uid "1E1711CB-B648-935E-B02E-5A86A972EBC6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 78 ".ktv[0:77]"  0 1 4 1 8 1 12 1 16 1 20 1 24 1 28 1 32 1
		 36 1 40 1 44 1 48 1 52 1 56 1 60 1 64 1 68 1 72 1 76 1 80 1 84 1 88 1 92 1 96 1 100 1
		 104 1 108 1 112 1 116 1 120 1 124 1 128 1 132 1 136 1 140 1 144 1 148 1 152 1 156 1
		 160 1 164 1 168 1 172 1 176 1 180 1 184 1 188 1 192 1 196 1 200 1 204 1 208 1 212 1
		 216 1 220 1 224 1 228 1 232 1 236 1 240 1 244 1 248 1 252 1 255 1 264 1 268 1 272 1
		 276 1 280 1 284 1 288 1 292 1 296 1 300 1 304 1 308 1 312 1;
	setAttr -s 78 ".kit[0:77]"  1 18 18 1 18 18 1 18 
		18 1 18 18 1 18 18 1 18 18 1 18 18 1 18 18 18 
		18 18 1 18 18 18 18 18 1 18 18 1 18 18 1 18 18 
		1 18 18 1 18 18 1 18 18 1 18 18 18 18 18 1 18 
		18 1 18 18 1 1 1 18 18 1 18 18 1 18 18 1 18 
		18 1;
	setAttr -s 78 ".kot[0:77]"  1 18 18 1 18 18 1 18 
		18 1 18 18 1 18 18 1 18 18 1 18 18 1 18 18 1 
		18 18 1 18 18 1 18 18 1 18 18 18 18 18 1 18 18 
		18 18 18 1 18 18 18 18 18 1 18 18 1 18 18 1 18 
		18 18 18 18 1 1 18 18 18 1 18 18 18 18 18 1 18 
		18 18;
	setAttr -s 78 ".kix[0:77]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 78 ".kiy[0:77]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 78 ".kox[0:77]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 78 ".koy[0:77]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LeftHand_Control_scaleY";
	rename -uid "3E05E3FB-9643-3678-5016-6B9620131646";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 78 ".ktv[0:77]"  0 1 4 1 8 1 12 1 16 1 20 1 24 1 28 1 32 1
		 36 1 40 1 44 1 48 1 52 1 56 1 60 1 64 1 68 1 72 1 76 1 80 1 84 1 88 1 92 1 96 1 100 1
		 104 1 108 1 112 1 116 1 120 1 124 1 128 1 132 1 136 1 140 1 144 1 148 1 152 1 156 1
		 160 1 164 1 168 1 172 1 176 1 180 1 184 1 188 1 192 1 196 1 200 1 204 1 208 1 212 1
		 216 1 220 1 224 1 228 1 232 1 236 1 240 1 244 1 248 1 252 1 255 1 264 1 268 1 272 1
		 276 1 280 1 284 1 288 1 292 1 296 1 300 1 304 1 308 1 312 1;
	setAttr -s 78 ".kit[0:77]"  1 18 18 1 18 18 1 18 
		18 1 18 18 1 18 18 1 18 18 1 18 18 1 18 18 18 
		18 18 1 18 18 18 18 18 1 18 18 1 18 18 1 18 18 
		1 18 18 1 18 18 1 18 18 1 18 18 18 18 18 1 18 
		18 1 18 18 1 1 1 18 18 1 18 18 1 18 18 1 18 
		18 1;
	setAttr -s 78 ".kot[0:77]"  1 18 18 1 18 18 1 18 
		18 1 18 18 1 18 18 1 18 18 1 18 18 1 18 18 1 
		18 18 1 18 18 1 18 18 1 18 18 18 18 18 1 18 18 
		18 18 18 1 18 18 18 18 18 1 18 18 1 18 18 1 18 
		18 18 18 18 1 1 18 18 18 1 18 18 18 18 18 1 18 
		18 18;
	setAttr -s 78 ".kix[0:77]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 78 ".kiy[0:77]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 78 ".kox[0:77]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 78 ".koy[0:77]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LeftHand_Control_scaleZ";
	rename -uid "60252692-1C47-0341-CE3F-A988C418F5F0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 78 ".ktv[0:77]"  0 1 4 1 8 1 12 1 16 1 20 1 24 1 28 1 32 1
		 36 1 40 1 44 1 48 1 52 1 56 1 60 1 64 1 68 1 72 1 76 1 80 1 84 1 88 1 92 1 96 1 100 1
		 104 1 108 1 112 1 116 1 120 1 124 1 128 1 132 1 136 1 140 1 144 1 148 1 152 1 156 1
		 160 1 164 1 168 1 172 1 176 1 180 1 184 1 188 1 192 1 196 1 200 1 204 1 208 1 212 1
		 216 1 220 1 224 1 228 1 232 1 236 1 240 1 244 1 248 1 252 1 255 1 264 1 268 1 272 1
		 276 1 280 1 284 1 288 1 292 1 296 1 300 1 304 1 308 1 312 1;
	setAttr -s 78 ".kit[0:77]"  1 18 18 1 18 18 1 18 
		18 1 18 18 1 18 18 1 18 18 1 18 18 1 18 18 18 
		18 18 1 18 18 18 18 18 1 18 18 1 18 18 1 18 18 
		1 18 18 1 18 18 1 18 18 1 18 18 18 18 18 1 18 
		18 1 18 18 1 1 1 18 18 1 18 18 1 18 18 1 18 
		18 1;
	setAttr -s 78 ".kot[0:77]"  1 18 18 1 18 18 1 18 
		18 1 18 18 1 18 18 1 18 18 1 18 18 1 18 18 1 
		18 18 1 18 18 1 18 18 1 18 18 18 18 18 1 18 18 
		18 18 18 1 18 18 18 18 18 1 18 18 1 18 18 1 18 
		18 18 18 18 1 1 18 18 18 1 18 18 18 18 18 1 18 
		18 18;
	setAttr -s 78 ".kix[0:77]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 78 ".kiy[0:77]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 78 ".kox[0:77]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 78 ".koy[0:77]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LeftHand_Control_Grip";
	rename -uid "DF2EF2AD-4847-7F02-6102-F29543EEA423";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 78 ".ktv[0:77]"  0 0.5 4 0.5 8 0.5 12 0.5 16 0.5 20 0.5 24 0.5
		 28 0.5 32 0.5 36 0.5 40 0.5 44 0.5 48 0.5 52 0.5 56 0.5 60 0.5 64 0.5 68 0.5 72 0.5
		 76 0.5 80 0.5 84 0.5 88 0.5 92 0.5 96 0.5 100 0.5 104 0.5 108 0.5 112 0.5 116 0.5
		 120 0.5 124 0.5 128 0.5 132 0.5 136 0.5 140 0.5 144 0.5 148 0.5 152 0.5 156 0.5 160 0.5
		 164 0.5 168 0.5 172 0.5 176 0.5 180 0.5 184 0.5 188 0.5 192 0.5 196 0.5 200 0.5 204 0.5
		 208 0.5 212 0.5 216 0.5 220 0.5 224 0.5 228 0.5 232 0.5 236 0.5 240 0.5 244 0.5 248 0.5
		 252 0.5 255 0.5 264 0.5 268 0.5 272 0.5 276 0.5 280 0.5 284 0.5 288 0.5 292 0.5 296 0.5
		 300 0.5 304 0.5 308 0.5 312 0.5;
	setAttr -s 78 ".kit[0:77]"  1 18 18 1 18 18 1 18 
		18 1 18 18 1 18 18 1 18 18 1 18 18 1 18 18 18 
		18 18 1 18 18 18 18 18 1 18 18 1 18 18 1 18 18 
		1 18 18 1 18 18 1 18 18 1 18 18 18 18 18 1 18 
		18 1 18 18 1 1 1 18 18 1 18 18 1 18 18 1 18 
		18 1;
	setAttr -s 78 ".kot[0:77]"  1 18 18 1 18 18 1 18 
		18 1 18 18 1 18 18 1 18 18 1 18 18 1 18 18 1 
		18 18 1 18 18 1 18 18 1 18 18 18 18 18 1 18 18 
		18 18 18 1 18 18 18 18 18 1 18 18 1 18 18 1 18 
		18 18 18 18 1 1 18 18 18 1 18 18 18 18 18 1 18 
		18 18;
	setAttr -s 78 ".kix[0:77]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 78 ".kiy[0:77]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 78 ".kox[0:77]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 78 ".koy[0:77]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LeftElbow_Control_visibility";
	rename -uid "064A8380-C842-E78B-B2BB-D3BFABBCB4BA";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 1 12 1 24 1 36 1 48 1 60 1 72 1 84 1 96 1
		 108 1 120 1 132 1 144 1 156 1 168 1 180 1 192 1 204 1 216 1 228 1 240 1 252 1 255 1
		 264 1 276 1 288 1 300 1 312 1;
	setAttr -s 28 ".kit[0:27]"  9 9 9 9 9 9 9 9 
		9 9 9 9 1 9 1 9 1 9 9 9 1 9 1 1 9 
		1 9 1;
	setAttr -s 28 ".kix[12:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".kiy[12:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "LeftElbow_Control_translateX";
	rename -uid "1B54A157-B74A-E7DE-CC49-46A588AF31BC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 102.37399648451193 12 102.37399648451193
		 24 102.37399648451193 36 102.37399648451193 48 102.37399648451193 60 102.37399648451193
		 72 102.37399648451193 84 102.37399648451193 96 102.37399648451193 108 102.37399648451193
		 120 102.37399648451193 132 102.37399648451193 144 102.37399648451193 156 102.37399648451193
		 168 102.37399648451193 180 102.37399648451193 192 102.37399648451193 204 102.37399648451193
		 216 102.37399648451193 228 102.37399648451193 240 102.37399648451193 252 102.37399648451193
		 255 102.37399648451193 264 85.561269742635886 276 102.37399648451193 288 102.37399648451193
		 300 102.37399648451193 312 102.37399648451193;
	setAttr -s 28 ".kit[12:27]"  1 18 1 18 1 18 18 18 
		1 18 1 1 18 1 18 1;
	setAttr -s 28 ".kot[8:27]"  1 18 1 18 18 18 18 18 
		18 18 1 18 18 18 1 18 18 18 18 18;
	setAttr -s 28 ".kix[12:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".kiy[12:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 28 ".kox[8:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".koy[8:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "LeftElbow_Control_translateY";
	rename -uid "D169FAFC-E44E-1E21-0B17-3C9D29133AE1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 0 12 0 24 0 36 0 48 0 60 0 72 0 84 0 96 0
		 108 0 120 0 132 0 144 0 156 0 168 0 180 0 192 0 204 0 216 0 228 0 240 0 252 0 255 0
		 264 0 276 0 288 0 300 0 312 0;
	setAttr -s 28 ".kit[12:27]"  1 18 1 18 1 18 18 18 
		1 18 1 1 18 1 18 1;
	setAttr -s 28 ".kot[8:27]"  1 18 1 18 18 18 18 18 
		18 18 1 18 18 18 1 18 18 18 18 18;
	setAttr -s 28 ".kix[12:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".kiy[12:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 28 ".kox[8:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".koy[8:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "LeftElbow_Control_translateZ";
	rename -uid "F53ECDEE-3347-513F-737C-A48A31518996";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 0 12 0 24 0 36 0 48 0 60 0 72 0 84 0 96 0
		 108 0 120 0 132 0 144 0 156 0 168 0 180 0 192 0 204 0 216 0 228 0 240 0 252 0 255 0
		 264 0 276 0 288 0 300 0 312 0;
	setAttr -s 28 ".kit[12:27]"  1 18 1 18 1 18 18 18 
		1 18 1 1 18 1 18 1;
	setAttr -s 28 ".kot[8:27]"  1 18 1 18 18 18 18 18 
		18 18 1 18 18 18 1 18 18 18 18 18;
	setAttr -s 28 ".kix[12:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".kiy[12:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 28 ".kox[8:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".koy[8:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LeftElbow_Control_rotateX";
	rename -uid "4EBEA2D2-2F42-60A1-1EF2-4F976801DB43";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 0 12 0 24 0 36 0 48 0 60 0 72 0 84 0 96 0
		 108 0 120 0 132 0 144 0 156 0 168 0 180 0 192 0 204 0 216 0 228 0 240 0 252 0 255 0
		 264 0 276 0 288 0 300 0 312 0;
	setAttr -s 28 ".kit[12:27]"  1 18 1 18 1 18 18 18 
		1 18 1 1 18 1 18 1;
	setAttr -s 28 ".kot[8:27]"  1 18 1 18 18 18 18 18 
		18 18 1 18 18 18 1 18 18 18 18 18;
	setAttr -s 28 ".kix[12:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".kiy[12:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 28 ".kox[8:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".koy[8:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LeftElbow_Control_rotateY";
	rename -uid "1E8EC462-9448-1264-3716-4B8CAD594F3D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 0 12 0 24 0 36 0 48 0 60 0 72 0 84 0 96 0
		 108 0 120 0 132 0 144 0 156 0 168 0 180 0 192 0 204 0 216 0 228 0 240 0 252 0 255 0
		 264 0 276 0 288 0 300 0 312 0;
	setAttr -s 28 ".kit[12:27]"  1 18 1 18 1 18 18 18 
		1 18 1 1 18 1 18 1;
	setAttr -s 28 ".kot[8:27]"  1 18 1 18 18 18 18 18 
		18 18 1 18 18 18 1 18 18 18 18 18;
	setAttr -s 28 ".kix[12:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".kiy[12:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 28 ".kox[8:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".koy[8:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LeftElbow_Control_rotateZ";
	rename -uid "607E886F-8F44-6F8A-A91A-2595CEB0A3F3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 0 12 0 24 0 36 0 48 0 60 0 72 0 84 0 96 0
		 108 0 120 0 132 0 144 0 156 0 168 0 180 0 192 0 204 0 216 0 228 0 240 0 252 0 255 0
		 264 0 276 0 288 0 300 0 312 0;
	setAttr -s 28 ".kit[12:27]"  1 18 1 18 1 18 18 18 
		1 18 1 1 18 1 18 1;
	setAttr -s 28 ".kot[8:27]"  1 18 1 18 18 18 18 18 
		18 18 1 18 18 18 1 18 18 18 18 18;
	setAttr -s 28 ".kix[12:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".kiy[12:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 28 ".kox[8:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".koy[8:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LeftElbow_Control_scaleX";
	rename -uid "67CF567F-0945-6AF0-D81F-37BBF76977D1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 1 12 1 24 1 36 1 48 1 60 1 72 1 84 1 96 1
		 108 1 120 1 132 1 144 1 156 1 168 1 180 1 192 1 204 1 216 1 228 1 240 1 252 1 255 1
		 264 1 276 1 288 1 300 1 312 1;
	setAttr -s 28 ".kit[12:27]"  1 18 1 18 1 18 18 18 
		1 18 1 1 18 1 18 1;
	setAttr -s 28 ".kot[8:27]"  1 18 1 18 18 18 18 18 
		18 18 1 18 18 18 1 18 18 18 18 18;
	setAttr -s 28 ".kix[12:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".kiy[12:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 28 ".kox[8:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".koy[8:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LeftElbow_Control_scaleY";
	rename -uid "F01E0659-6E40-931A-E966-828F6A50D870";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 1 12 1 24 1 36 1 48 1 60 1 72 1 84 1 96 1
		 108 1 120 1 132 1 144 1 156 1 168 1 180 1 192 1 204 1 216 1 228 1 240 1 252 1 255 1
		 264 1 276 1 288 1 300 1 312 1;
	setAttr -s 28 ".kit[12:27]"  1 18 1 18 1 18 18 18 
		1 18 1 1 18 1 18 1;
	setAttr -s 28 ".kot[8:27]"  1 18 1 18 18 18 18 18 
		18 18 1 18 18 18 1 18 18 18 18 18;
	setAttr -s 28 ".kix[12:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".kiy[12:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 28 ".kox[8:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".koy[8:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LeftElbow_Control_scaleZ";
	rename -uid "07058488-8E4D-145F-DDFB-FCAEE1A85452";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 1 12 1 24 1 36 1 48 1 60 1 72 1 84 1 96 1
		 108 1 120 1 132 1 144 1 156 1 168 1 180 1 192 1 204 1 216 1 228 1 240 1 252 1 255 1
		 264 1 276 1 288 1 300 1 312 1;
	setAttr -s 28 ".kit[12:27]"  1 18 1 18 1 18 18 18 
		1 18 1 1 18 1 18 1;
	setAttr -s 28 ".kot[8:27]"  1 18 1 18 18 18 18 18 
		18 18 1 18 18 18 1 18 18 18 18 18;
	setAttr -s 28 ".kix[12:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".kiy[12:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 28 ".kox[8:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".koy[8:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RightElbow_Control_visibility";
	rename -uid "8A97F6C4-BB46-9F98-9D16-8FB5AF2A8015";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 1 12 1 24 1 36 1 48 1 60 1 72 1 84 1 96 1
		 108 1 120 1 132 1 144 1 156 1 168 1 180 1 192 1 204 1 216 1 228 1 240 1 252 1 255 1
		 264 1 276 1 288 1 300 1 312 1;
	setAttr -s 28 ".kit[0:27]"  9 9 9 9 9 9 9 9 
		9 9 9 9 1 9 1 9 1 9 9 9 1 9 1 1 9 
		1 9 1;
	setAttr -s 28 ".kix[12:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".kiy[12:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "RightElbow_Control_translateX";
	rename -uid "472E20D2-DC4B-37F8-C719-9AA106C0E57C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 29 ".ktv[0:28]"  0 -268.81336534057107 12 -268.81336534057107
		 24 -268.81336534057107 36 -268.81336534057107 48 -268.81336534057107 60 -268.81336534057107
		 72 -268.81336534057107 84 -268.81336534057107 96 -268.81336534057107 108 -268.81336534057107
		 120 -268.81336534057107 132 -268.81336534057107 144 -268.81336534057107 156 -268.81336534057107
		 168 -268.81336534057107 180 -268.81336534057107 192 -268.81336534057107 204 -268.81336534057107
		 216 -268.81336534057107 228 -268.81336534057107 240 -268.81336534057107 252 -268.81336534057107
		 255 -268.81336534057107 264 -268.07324403979271 276 -268.81336534057107 288 -268.81336534057107
		 300 -268.81336534057107 312 -268.81336534057107 324 -268.81336534057107;
	setAttr -s 29 ".kit[12:28]"  1 18 1 18 1 18 18 18 
		1 18 1 1 18 1 18 1 18;
	setAttr -s 29 ".kot[8:28]"  1 18 1 18 18 18 18 18 
		18 18 1 18 18 18 1 18 18 18 18 18 18;
	setAttr -s 29 ".kix[12:28]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 29 ".kiy[12:28]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 29 ".kox[8:28]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1;
	setAttr -s 29 ".koy[8:28]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0;
createNode animCurveTL -n "RightElbow_Control_translateY";
	rename -uid "4CF386ED-4944-7882-6825-6E86DC67057F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 0 12 0 24 0 36 0 48 0 60 0 72 0 84 0 96 0
		 108 0 120 0 132 0 144 0 156 0 168 0 180 0 192 0 204 0 216 0 228 0 240 0 252 0 255 0
		 264 0 276 0 288 0 300 0 312 0;
	setAttr -s 28 ".kit[12:27]"  1 18 1 18 1 18 18 18 
		1 18 1 1 18 1 18 1;
	setAttr -s 28 ".kot[8:27]"  1 18 1 18 18 18 18 18 
		18 18 1 18 18 18 1 18 18 18 18 18;
	setAttr -s 28 ".kix[12:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".kiy[12:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 28 ".kox[8:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".koy[8:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "RightElbow_Control_translateZ";
	rename -uid "05B8C214-1246-BCFE-B57B-6BB4DBEEAC46";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 0 12 0 24 0 36 0 48 0 60 0 72 0 84 0 96 0
		 108 0 120 0 132 0 144 0 156 0 168 0 180 0 192 0 204 0 216 0 228 0 240 0 252 0 255 0
		 264 0 276 0 288 0 300 0 312 0;
	setAttr -s 28 ".kit[12:27]"  1 18 1 18 1 18 18 18 
		1 18 1 1 18 1 18 1;
	setAttr -s 28 ".kot[8:27]"  1 18 1 18 18 18 18 18 
		18 18 1 18 18 18 1 18 18 18 18 18;
	setAttr -s 28 ".kix[12:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".kiy[12:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 28 ".kox[8:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".koy[8:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RightElbow_Control_rotateX";
	rename -uid "EB775B4F-9344-DA03-72E9-7DAFCE30CD26";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 0 12 0 24 0 36 0 48 0 60 0 72 0 84 0 96 0
		 108 0 120 0 132 0 144 0 156 0 168 0 180 0 192 0 204 0 216 0 228 0 240 0 252 0 255 0
		 264 0 276 0 288 0 300 0 312 0;
	setAttr -s 28 ".kit[12:27]"  1 18 1 18 1 18 18 18 
		1 18 1 1 18 1 18 1;
	setAttr -s 28 ".kot[8:27]"  1 18 1 18 18 18 18 18 
		18 18 1 18 18 18 1 18 18 18 18 18;
	setAttr -s 28 ".kix[12:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".kiy[12:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 28 ".kox[8:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".koy[8:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RightElbow_Control_rotateY";
	rename -uid "F0E650E2-4A40-0DC4-8993-AEAD33EBFA56";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 0 12 0 24 0 36 0 48 0 60 0 72 0 84 0 96 0
		 108 0 120 0 132 0 144 0 156 0 168 0 180 0 192 0 204 0 216 0 228 0 240 0 252 0 255 0
		 264 0 276 0 288 0 300 0 312 0;
	setAttr -s 28 ".kit[12:27]"  1 18 1 18 1 18 18 18 
		1 18 1 1 18 1 18 1;
	setAttr -s 28 ".kot[8:27]"  1 18 1 18 18 18 18 18 
		18 18 1 18 18 18 1 18 18 18 18 18;
	setAttr -s 28 ".kix[12:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".kiy[12:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 28 ".kox[8:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".koy[8:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RightElbow_Control_rotateZ";
	rename -uid "A36177C8-E244-FC56-3532-20A48BE1AA33";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 0 12 0 24 0 36 0 48 0 60 0 72 0 84 0 96 0
		 108 0 120 0 132 0 144 0 156 0 168 0 180 0 192 0 204 0 216 0 228 0 240 0 252 0 255 0
		 264 0 276 0 288 0 300 0 312 0;
	setAttr -s 28 ".kit[12:27]"  1 18 1 18 1 18 18 18 
		1 18 1 1 18 1 18 1;
	setAttr -s 28 ".kot[8:27]"  1 18 1 18 18 18 18 18 
		18 18 1 18 18 18 1 18 18 18 18 18;
	setAttr -s 28 ".kix[12:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".kiy[12:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 28 ".kox[8:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".koy[8:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RightElbow_Control_scaleX";
	rename -uid "271743E9-D24F-CCDB-F658-DCACE7056782";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 1 12 1 24 1 36 1 48 1 60 1 72 1 84 1 96 1
		 108 1 120 1 132 1 144 1 156 1 168 1 180 1 192 1 204 1 216 1 228 1 240 1 252 1 255 1
		 264 1 276 1 288 1 300 1 312 1;
	setAttr -s 28 ".kit[12:27]"  1 18 1 18 1 18 18 18 
		1 18 1 1 18 1 18 1;
	setAttr -s 28 ".kot[8:27]"  1 18 1 18 18 18 18 18 
		18 18 1 18 18 18 1 18 18 18 18 18;
	setAttr -s 28 ".kix[12:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".kiy[12:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 28 ".kox[8:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".koy[8:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RightElbow_Control_scaleY";
	rename -uid "D4150C88-8140-D26E-99E2-1DB377562556";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 1 12 1 24 1 36 1 48 1 60 1 72 1 84 1 96 1
		 108 1 120 1 132 1 144 1 156 1 168 1 180 1 192 1 204 1 216 1 228 1 240 1 252 1 255 1
		 264 1 276 1 288 1 300 1 312 1;
	setAttr -s 28 ".kit[12:27]"  1 18 1 18 1 18 18 18 
		1 18 1 1 18 1 18 1;
	setAttr -s 28 ".kot[8:27]"  1 18 1 18 18 18 18 18 
		18 18 1 18 18 18 1 18 18 18 18 18;
	setAttr -s 28 ".kix[12:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".kiy[12:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 28 ".kox[8:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".koy[8:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RightElbow_Control_scaleZ";
	rename -uid "2E050FE9-5D45-57B5-A212-6F889831C0C1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 1 12 1 24 1 36 1 48 1 60 1 72 1 84 1 96 1
		 108 1 120 1 132 1 144 1 156 1 168 1 180 1 192 1 204 1 216 1 228 1 240 1 252 1 255 1
		 264 1 276 1 288 1 300 1 312 1;
	setAttr -s 28 ".kit[12:27]"  1 18 1 18 1 18 18 18 
		1 18 1 1 18 1 18 1;
	setAttr -s 28 ".kot[8:27]"  1 18 1 18 18 18 18 18 
		18 18 1 18 18 18 1 18 18 18 18 18;
	setAttr -s 28 ".kix[12:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".kiy[12:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 28 ".kox[8:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 28 ".koy[8:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "LeftFoot_Control_translateX";
	rename -uid "5A6E892B-9541-90F6-C929-0685A19E25F8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 102 ".ktv[0:101]"  -12 10 -9 10 -6 10 -3 10 0 -7.4421011433572133
		 3 -2.3883106467529061 6 -1.4977510618003933 9 -3.3242188563134434 12 -3.1094050734365766
		 15 -2.0770304282777658 18 -7.6974055995362676 21 -6.2452866365143649 24 -7.4421011433572133
		 27 -6.6275887658415868 30 -3.1753318307789229 33 0 36 0 41 -5.554554905196273 45 -8
		 48 -8 54 11.061414636247292 55 10.49857752852242 56 10.848579590148899 57 14.125251954533196
		 60 36.111536373813244 63 30.299919660126385 66 16.462418911668546 72 -8 75 -6.6275887658415868
		 78 -3.1753318307789229 81 0 84 0 89 -5.554554905196273 93 -8 96 -8 99 -6.6275887658415868
		 105 -10.029849994897162 106 -7.2035953084867019 107 -4.5401566344053839 108 -2.0191515242527207
		 109 2.031191928489553 110 2.9100012119715668 111 1.6788150017814922 117 -8 118 -5.3680516411713057
		 120 -8 123 -6.6275887658415868 126 -3.1753318307789229 129 0 132 0 137 -5.554554905196273
		 141 -8 144 -8 147 -6.6275887658415868 150 -3.1753318307789229 153 0 156 0 161 -5.554554905196273
		 165 -8 168 -8 171 -6.6275887658415868 174 -3.1753318307789229 177 0 180 0 185 -5.554554905196273
		 189 -8 192 -8 195 -6.6275887658415868 198 -3.1753318307789229 201 0 204 0 209 -5.554554905196273
		 213 -8 216 -8 219 -6.6275887658415868 222 -3.1753318307789229 225 0 228 0 233 -5.554554905196273
		 237 -8 240 -8 243 -6.6275887658415868 246 -3.1753318307789229 249 0 252 0 255 -8
		 259 3.7302458278512916 264 3.7302458278512916 267 -6.6275887658415868 270 -3.1753318307789229
		 273 0 276 0 281 -5.554554905196273 285 -8 288 -8 291 -6.6275887658415868 294 -3.1753318307789229
		 297 0 300 0 305 -5.554554905196273 309 -8 312 -8;
	setAttr -s 102 ".kit[12:101]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 1 18 18 
		18 18 18 18 18 1 18 18 1 18 18 18 18 18 18 1 18 
		18 18 18 18 18 1 18 18 18 18 18 18 1 18 18 18 18 
		18 18 1 18 18 18 18 18 18 1 18 18 18 18 1 1 1 
		18 18 18 18 18 18 1 18 18 18 18 18 18 1;
	setAttr -s 102 ".kot[12:101]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 1 18 18 
		18 18 18 18 18 1 18 18 1 18 18 18 18 18 18 1 18 
		18 18 18 18 18 1 18 18 18 18 18 18 1 18 18 18 18 
		18 18 1 18 18 18 18 18 18 1 18 18 18 18 1 1 1 
		18 18 18 18 18 18 1 18 18 18 18 18 18 1;
	setAttr -s 102 ".kix[12:101]"  1 0.058492023497819901 0.037694301456212997 
		1 1 0.046823590993881226 1 1 1 1 0.039650950580835342 0.0065971342846751213 1 0.012722188606858253 
		0.0097906738519668579 1 0.051747605204582214 0.037694301456212997 1 1 0.046823587268590927 
		1 1 1 1 0.015178241766989231 0.016071682795882225 0.012680245563387871 0.016903836280107498 
		1 1 1 1 1 0.051747605204582214 0.037694301456212997 1 1 0.04682357981801033 1 1 0.051747605204582214 
		0.037694301456212997 1 1 0.04682357981801033 1 1 0.051747605204582214 0.037694301456212997 
		1 1 0.04682357981801033 1 1 0.051747605204582214 0.037694301456212997 1 1 0.046823590993881226 
		1 1 0.051747605204582214 0.037694301456212997 1 1 0.046823590993881226 1 1 0.051747605204582214 
		0.037694301456212997 1 1 1 1 1 1 0.037694301456212997 1 1 0.046823590993881226 1 
		1 0.051747605204582214 0.037694301456212997 1 1 0.046823590993881226 1 1;
	setAttr -s 102 ".kiy[12:101]"  0 0.99828791618347168 0.99928933382034302 
		0 0 -0.99890321493148804 0 0 0 0 0.99921363592147827 0.99997824430465698 0 -0.99991905689239502 
		-0.99995201826095581 0 0.99866014719009399 0.99928933382034302 0 0 -0.99890321493148804 
		0 0 0 0 0.99988484382629395 0.9998708963394165 0.999919593334198 0.99985712766647339 
		0 0 0 0 0 0.99866014719009399 0.99928933382034302 0 0 -0.99890309572219849 0 0 0.99866014719009399 
		0.99928933382034302 0 0 -0.99890309572219849 0 0 0.99866014719009399 0.99928933382034302 
		0 0 -0.99890309572219849 0 0 0.99866014719009399 0.99928933382034302 0 0 -0.99890321493148804 
		0 0 0.99866014719009399 0.99928933382034302 0 0 -0.99890321493148804 0 0 0.99866014719009399 
		0.99928933382034302 0 0 0 0 0 0 0.99928933382034302 0 0 -0.99890321493148804 0 0 
		0.99866014719009399 0.99928933382034302 0 0 -0.99890321493148804 0 0;
	setAttr -s 102 ".kox[12:101]"  1 0.058492023497819901 0.037694301456212997 
		1 1 0.046823587268590927 1 1 1 1 0.039650943130254745 0.0065971342846751213 1 0.012722188606858253 
		0.0097906738519668579 1 0.051747605204582214 0.037694301456212997 1 1 0.046823587268590927 
		1 1 1 1 0.015178240835666656 0.016071682795882225 0.012680245563387871 0.016903834417462349 
		1 1 1 1 1 0.051747605204582214 0.037694301456212997 1 1 0.046823583543300629 1 1 
		0.051747605204582214 0.037694301456212997 1 1 0.046823583543300629 1 1 0.051747605204582214 
		0.037694301456212997 1 1 0.046823583543300629 1 1 0.051747605204582214 0.037694301456212997 
		1 1 0.046823587268590927 1 1 0.051747605204582214 0.037694301456212997 1 1 0.046823587268590927 
		1 1 0.051747605204582214 0.037694301456212997 1 1 1 1 1 1 0.037694301456212997 1 
		1 0.046823587268590927 1 1 0.051747605204582214 0.037694301456212997 1 1 0.046823587268590927 
		1 1;
	setAttr -s 102 ".koy[12:101]"  0 0.99828791618347168 0.99928933382034302 
		0 0 -0.99890315532684326 0 0 0 0 0.99921351671218872 0.99997824430465698 0 -0.99991905689239502 
		-0.99995201826095581 0 0.99866014719009399 0.99928933382034302 0 0 -0.99890315532684326 
		0 0 0 0 0.99988472461700439 0.9998708963394165 0.999919593334198 0.99985712766647339 
		0 0 0 0 0 0.99866014719009399 0.99928933382034302 0 0 -0.99890315532684326 0 0 0.99866014719009399 
		0.99928933382034302 0 0 -0.99890315532684326 0 0 0.99866014719009399 0.99928933382034302 
		0 0 -0.99890315532684326 0 0 0.99866014719009399 0.99928933382034302 0 0 -0.99890315532684326 
		0 0 0.99866014719009399 0.99928933382034302 0 0 -0.99890315532684326 0 0 0.99866014719009399 
		0.99928933382034302 0 0 0 0 0 0 0.99928933382034302 0 0 -0.99890315532684326 0 0 
		0.99866014719009399 0.99928933382034302 0 0 -0.99890315532684326 0 0;
createNode animCurveTL -n "LeftFoot_Control_translateY";
	rename -uid "64DA4F30-B74D-A979-749B-1D9EC0711CE4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 111 ".ktv[0:110]"  -12 12.310714705165175 -9 1.0048075009618582
		 -6 7.3685883403869568 -3 22.668577354710308 0 45.94741809774856 3 48.541511693215604
		 6 47.333472153323598 9 35.774508541099969 12 12.310714705165175 15 1.0048075009618582
		 18 7.3685883403869568 21 29.908123317093391 24 45.94741809774856 27 26.087345119806464
		 30 35.866045507159853 33 36.280179707181667 36 24.785251690392478 39 1.0048075009618582
		 42 0 45 7.3685883403869568 48 15.682836642983016 52 24.444634327495002 54 0 57 0
		 60 0 63 1.6116032151391426 66 9.8816956816559482 72 26.262485401343067 75 26.087345119806464
		 78 35.866045507159853 81 36.280179707181667 84 24.785251690392478 87 1.0048075009618582
		 90 0 93 7.3685883403869568 96 15.682836642983016 99 26.087345119806464 105 0 106 0
		 107 0 108 0 109 0 110 0 111 0 114 9.061777072291008 117 7.3685883403869568 120 15.682836642983016
		 123 26.087345119806464 126 35.866045507159853 129 36.280179707181667 132 24.785251690392478
		 135 1.0048075009618582 138 0 141 7.3685883403869568 144 15.682836642983016 147 26.087345119806464
		 150 35.866045507159853 153 36.280179707181667 156 24.785251690392478 159 1.0048075009618582
		 162 0 165 7.3685883403869568 168 15.682836642983016 171 26.087345119806464 174 35.866045507159853
		 177 36.280179707181667 180 24.785251690392478 183 1.0048075009618582 186 0 189 7.3685883403869568
		 192 15.682836642983016 195 26.087345119806464 198 35.866045507159853 201 36.280179707181667
		 204 24.785251690392478 207 1.0048075009618582 210 0 213 7.3685883403869568 216 15.682836642983016
		 219 26.087345119806464 222 35.866045507159853 225 36.280179707181667 228 24.785251690392478
		 231 1.0048075009618582 234 0 237 7.3685883403869568 240 15.682836642983016 243 26.087345119806464
		 246 35.866045507159853 249 36.280179707181667 252 24.785251690392478 255 36.323677050620653
		 256 31.074108095763894 259 0 264 0 267 26.087345119806464 270 35.866045507159853
		 273 36.280179707181667 276 24.785251690392478 279 1.0048075009618582 282 0 285 7.3685883403869568
		 288 15.682836642983016 291 26.087345119806464 294 35.866045507159853 297 36.280179707181667
		 300 24.785251690392478 303 1.0048075009618582 306 0 309 7.3685883403869568 312 15.682836642983016;
	setAttr -s 111 ".kit[12:110]"  1 18 18 18 1 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 1 18 18 18 1 18 
		18 18 18 18 18 18 1 18 18 1 18 18 18 1 18 18 18 
		1 18 18 18 1 18 18 18 1 18 18 18 1 18 18 18 1 
		18 18 18 1 18 18 18 1 18 18 18 1 18 18 18 1 18 
		18 18 1 1 18 1 1 18 18 18 1 18 18 18 1 18 18 
		18 1 18 18 18 1;
	setAttr -s 111 ".kot[12:110]"  1 18 18 18 1 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 1 18 18 18 1 18 
		18 18 18 18 18 18 1 18 18 1 18 18 18 1 18 18 18 
		1 18 18 18 1 18 18 18 1 18 18 18 1 18 18 18 1 
		18 18 18 1 18 18 18 1 18 18 18 1 18 18 18 1 18 
		18 18 1 1 18 1 1 18 18 18 1 18 18 18 1 18 18 
		18 1 18 18 18 1;
	setAttr -s 111 ".kix[12:110]"  0.016060058027505875 1 0.10010611265897751 
		1 0.003569762920960784 0.04143170639872551 1 0.015938969328999519 0.017077969387173653 
		1 1 1 1 0.025845535099506378 0.015210676938295364 1 1 0.10010611265897751 1 0.003569762920960784 
		0.04143170639872551 1 0.015938969328999519 0.01335439644753933 1 1 1 1 1 1 1 1 1 
		1 0.01335439644753933 0.012385583482682705 0.10010611265897751 1 0.003569762920960784 
		0.04143170639872551 1 0.015938969328999519 0.01335439644753933 0.012385583482682705 
		0.10010611265897751 1 0.003569762920960784 0.04143170639872551 1 0.015938969328999519 
		0.01335439644753933 0.012385583482682705 0.10010611265897751 1 0.003569762920960784 
		0.04143170639872551 1 0.015938969328999519 0.01335439644753933 0.012385583482682705 
		0.10010611265897751 1 0.003569762920960784 0.04143170639872551 1 0.015938969328999519 
		0.01335439644753933 0.012385583482682705 0.10010611265897751 1 0.003569762920960784 
		0.04143170639872551 1 0.015938969328999519 0.01335439644753933 0.012385583482682705 
		0.10010611265897751 1 0.003569762920960784 0.015938969328999519 0.0045883362181484699 
		0.01335439644753933 0.01335439644753933 0.0069702118635177612 0.10010611265897751 
		1 0.003569762920960784 0.04143170639872551 1 0.015938969328999519 0.01335439644753933 
		0.012385583482682705 0.10010611265897751 1 0.003569762920960784 0.04143170639872551 
		1 0.015938969328999519 0.01335439644753933;
	setAttr -s 111 ".kiy[12:110]"  0.99987101554870605 0 0.9949766993522644 
		0 -0.99999362230300903 -0.99914133548736572 0 0.99987298250198364 0.99985414743423462 
		0 0 0 0 0.99966597557067871 0.99988430738449097 0 0 0.9949766993522644 0 -0.99999362230300903 
		-0.99914133548736572 0 0.99987298250198364 0.99991083145141602 0 0 0 0 0 0 0 0 0 
		0 0.99991083145141602 0.99992328882217407 0.9949766993522644 0 -0.99999362230300903 
		-0.99914133548736572 0 0.99987298250198364 0.99991083145141602 0.99992328882217407 
		0.9949766993522644 0 -0.99999362230300903 -0.99914133548736572 0 0.99987298250198364 
		0.99991083145141602 0.99992328882217407 0.9949766993522644 0 -0.99999362230300903 
		-0.99914133548736572 0 0.99987298250198364 0.99991083145141602 0.99992328882217407 
		0.9949766993522644 0 -0.99999362230300903 -0.99914133548736572 0 0.99987298250198364 
		0.99991083145141602 0.99992328882217407 0.9949766993522644 0 -0.99999362230300903 
		-0.99914133548736572 0 0.99987298250198364 0.99991083145141602 0.99992328882217407 
		0.9949766993522644 0 -0.99999362230300903 0.99987298250198364 -0.99998950958251953 
		0.99991083145141602 0.99991083145141602 0.99997574090957642 0.9949766993522644 0 
		-0.99999362230300903 -0.99914133548736572 0 0.99987298250198364 0.99991083145141602 
		0.99992328882217407 0.9949766993522644 0 -0.99999362230300903 -0.99914133548736572 
		0 0.99987298250198364 0.99991083145141602;
	setAttr -s 111 ".kox[12:110]"  0.016060058027505875 1 0.10010611265897751 
		1 0.0035697594285011292 0.04143170639872551 1 0.015938969328999519 0.017077971249818802 
		1 1 1 1 0.025845535099506378 0.015210676938295364 1 1 0.10010611265897751 1 0.0035697594285011292 
		0.04143170639872551 1 0.015938969328999519 0.01335439644753933 1 1 1 1 1 1 1 1 1 
		1 0.01335439644753933 0.012385583482682705 0.10010611265897751 1 0.0035697594285011292 
		0.04143170639872551 1 0.015938969328999519 0.01335439644753933 0.012385583482682705 
		0.10010611265897751 1 0.0035697594285011292 0.04143170639872551 1 0.015938969328999519 
		0.01335439644753933 0.012385583482682705 0.10010611265897751 1 0.0035697594285011292 
		0.04143170639872551 1 0.015938969328999519 0.01335439644753933 0.012385583482682705 
		0.10010611265897751 1 0.0035697594285011292 0.04143170639872551 1 0.015938969328999519 
		0.01335439644753933 0.012385583482682705 0.10010611265897751 1 0.0035697594285011292 
		0.04143170639872551 1 0.015938969328999519 0.01335439644753933 0.012385583482682705 
		0.10010611265897751 1 0.0035697594285011292 0.015938969328999519 0.0045883357524871826 
		0.01335439644753933 0.01335439644753933 0.0069702118635177612 0.10010611265897751 
		1 0.0035697594285011292 0.04143170639872551 1 0.015938969328999519 0.01335439644753933 
		0.012385583482682705 0.10010611265897751 1 0.0035697594285011292 0.04143170639872551 
		1 0.015938969328999519 0.01335439644753933;
	setAttr -s 111 ".koy[12:110]"  0.99987101554870605 0 0.9949766993522644 
		0 -0.99999362230300903 -0.99914133548736572 0 0.99987298250198364 0.99985420703887939 
		0 0 0 0 0.99966597557067871 0.99988430738449097 0 0 0.9949766993522644 0 -0.99999362230300903 
		-0.99914133548736572 0 0.99987298250198364 0.99991083145141602 0 0 0 0 0 0 0 0 0 
		0 0.99991083145141602 0.99992328882217407 0.9949766993522644 0 -0.99999362230300903 
		-0.99914133548736572 0 0.99987298250198364 0.99991083145141602 0.99992328882217407 
		0.9949766993522644 0 -0.99999362230300903 -0.99914133548736572 0 0.99987298250198364 
		0.99991083145141602 0.99992328882217407 0.9949766993522644 0 -0.99999362230300903 
		-0.99914133548736572 0 0.99987298250198364 0.99991083145141602 0.99992328882217407 
		0.9949766993522644 0 -0.99999362230300903 -0.99914133548736572 0 0.99987298250198364 
		0.99991083145141602 0.99992328882217407 0.9949766993522644 0 -0.99999362230300903 
		-0.99914133548736572 0 0.99987298250198364 0.99991083145141602 0.99992328882217407 
		0.9949766993522644 0 -0.99999362230300903 0.99987298250198364 -0.99998950958251953 
		0.99991083145141602 0.99991083145141602 0.99997574090957642 0.9949766993522644 0 
		-0.99999362230300903 -0.99914133548736572 0 0.99987298250198364 0.99991083145141602 
		0.99992328882217407 0.9949766993522644 0 -0.99999362230300903 -0.99914133548736572 
		0 0.99987298250198364 0.99991083145141602;
createNode animCurveTL -n "LeftFoot_Control_translateZ";
	rename -uid "56FEA2C6-5249-0331-FFAC-2AA12B833DDF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 113 ".ktv[0:112]"  -12 22.992017976035093 -9 -13.718977897596872
		 -6 -45.30594128961728 -3 -56.360695214267494 0 -55.623908360378252 3 -39.148545650256679
		 6 -16.537402135953094 9 13.783593898160003 12 22.992017976035093 15 -13.718977897596872
		 18 -45.30594128961728 21 -56.360695214267494 24 -55.623908360378252 27 -52.684270723199866
		 30 -32.525054585165172 33 -6.6122414540858223 36 24.551367717789425 39 7.7996310205211188
		 42 -14.06730501346601 45 -49.011614797307111 48 -66.987166730790477 54 8.7064119110075779
		 55 0.20720893316907407 56 -8.5194649450845858 57 -8.9774785726896891 60 -3.9355928770431037
		 63 11.364846818075767 66 1.6570258113985048 72 29.648995872199279 75 -52.684270723199866
		 78 -32.525054585165172 81 -6.6122414540858223 84 24.551367717789425 87 7.7996310205211188
		 90 -14.06730501346601 93 -49.011614797307111 96 -66.987166730790477 99 -52.684270723199866
		 105 30.505850648595285 106 28.822864031787514 107 26.24248994022398 108 22.424816119870087
		 109 16.317671714592958 110 8.4725061205506105 111 0.83875352828916805 114 -24.370738640651464
		 117 -54.434109291652341 118 -57.879929264767227 120 -38.890910893963678 123 -24.588014886373067
		 126 -4.4287987483383731 129 21.484014382740977 132 52.647623554616224 135 35.895886857347918
		 138 14.028950823360789 141 -20.915358960480312 144 -38.890910893963678 147 -24.588014886373067
		 150 -4.4287987483383731 153 21.484014382740977 156 52.647623554616224 159 35.895886857347918
		 162 14.028950823360789 165 -20.915358960480312 168 -38.890910893963678 171 -24.588014886373067
		 174 -4.4287987483383731 177 21.484014382740977 180 52.647623554616224 183 35.895886857347918
		 186 14.028950823360789 189 -20.915358960480312 192 -38.890910893963678 195 -24.588014886373067
		 198 -4.4287987483383731 201 21.484014382740977 204 52.647623554616224 207 35.895886857347918
		 210 14.028950823360789 213 -20.915358960480312 216 -38.890910893963678 219 -24.588014886373067
		 222 -4.4287987483383731 225 21.484014382740977 228 52.647623554616224 231 35.895886857347918
		 234 14.028950823360789 237 -20.915358960480312 240 -38.890910893963678 243 -24.588014886373067
		 246 -4.4287987483383731 249 21.484014382740977 252 52.647623554616224 255 -20.915358960480312
		 259 56.147302672380732 260 66.038069743956243 264 27.37066111549322 267 -24.588014886373067
		 270 -4.4287987483383731 273 21.484014382740977 276 52.647623554616224 279 35.895886857347918
		 282 14.028950823360789 285 -20.915358960480312 288 -38.890910893963678 291 -24.588014886373067
		 294 -4.4287987483383731 297 21.484014382740977 300 52.647623554616224 303 35.895886857347918
		 306 14.028950823360789 309 -20.915358960480312 312 -38.890910893963678;
	setAttr -s 113 ".kit[12:112]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 1 
		18 18 18 18 18 18 18 1 18 18 18 1 18 18 18 18 18 
		18 18 1 18 18 18 18 18 18 18 1 18 18 18 18 18 18 
		18 1 18 18 18 18 18 18 18 1 18 18 18 18 18 18 18 
		1 18 18 18 18 1 1 18 1 18 18 18 18 18 18 18 1 
		18 18 18 18 18 18 18 1;
	setAttr -s 113 ".kot[12:112]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 1 
		18 18 18 18 18 18 18 1 18 18 18 1 18 18 18 18 18 
		18 18 1 18 18 18 18 18 18 18 1 18 18 18 18 18 18 
		18 1 18 18 18 18 18 18 18 1 18 18 18 18 18 18 18 
		1 18 18 18 18 1 1 18 1 18 18 18 18 18 18 18 1 
		18 18 18 18 18 18 18 1;
	setAttr -s 113 ".kix[12:112]"  0.056461647152900696 0.014172659255564213 
		0.0054262056946754456 0.0043800505809485912 1 0.0064734169282019138 0.0044004945084452629 
		0.0047240713611245155 1 1 0.0048376219347119331 0.030310308560729027 1 0.012288719415664673 
		1 1 1 1 0.0054262056946754456 0.0043800505809485912 1 0.0064734169282019138 0.0044004945084452629 
		0.0047240713611245155 1 0.0038464008830487728 1 0.019542699679732323 0.013023725710809231 
		0.0083961309865117073 0.0059726312756538391 0.005383598618209362 1 0.004522969014942646 
		0.0049736937507987022 1 1 0.0072541525587439537 0.0054262056946754456 0.0043800505809485912 
		1 0.0064734169282019138 0.0044004945084452629 0.0047240713611245155 1 0.0072541525587439537 
		0.0054262056946754456 0.0043800505809485912 1 0.0064734169282019138 0.0044004945084452629 
		0.0047240713611245155 1 0.0072541525587439537 0.0054262056946754456 0.0043800505809485912 
		1 0.0064734169282019138 0.0044004945084452629 0.0047240713611245155 1 0.0072541525587439537 
		0.0054262056946754456 0.0043800505809485912 1 0.0064734169282019138 0.0044004945084452629 
		0.0047240713611245155 1 0.0072541525587439537 0.0054262056946754456 0.0043800505809485912 
		1 0.0064734169282019138 0.0044004945084452629 0.0047240713611245155 1 0.0072541525587439537 
		0.0054262056946754456 0.0043800505809485912 1 0.0047240713611245155 1 1 1 1 0.0054262056946754456 
		0.0043800505809485912 1 0.0064734169282019138 0.0044004945084452629 0.0047240713611245155 
		1 0.0072541525587439537 0.0054262056946754456 0.0043800505809485912 1 0.0064734169282019138 
		0.0044004945084452629 0.0047240713611245155 1;
	setAttr -s 113 ".kiy[12:112]"  0.99840474128723145 0.99989956617355347 
		0.99998527765274048 0.99999046325683594 0 -0.99997907876968384 -0.99999034404754639 
		-0.999988853931427 0 0 -0.99998825788497925 -0.99954056739807129 0 0.99992454051971436 
		0 0 0 0 0.99998527765274048 0.99999046325683594 0 -0.99997907876968384 -0.99999034404754639 
		-0.999988853931427 0 0.99999260902404785 0 -0.99980902671813965 -0.99991518259048462 
		-0.99996471405029297 -0.99998217821121216 -0.99998551607131958 0 -0.99998980760574341 
		-0.99998760223388672 0 0 0.99997365474700928 0.99998527765274048 0.99999046325683594 
		0 -0.99997907876968384 -0.99999034404754639 -0.999988853931427 0 0.99997365474700928 
		0.99998527765274048 0.99999046325683594 0 -0.99997907876968384 -0.99999034404754639 
		-0.999988853931427 0 0.99997365474700928 0.99998527765274048 0.99999046325683594 
		0 -0.99997907876968384 -0.99999034404754639 -0.999988853931427 0 0.99997365474700928 
		0.99998527765274048 0.99999046325683594 0 -0.99997907876968384 -0.99999034404754639 
		-0.999988853931427 0 0.99997365474700928 0.99998527765274048 0.99999046325683594 
		0 -0.99997907876968384 -0.99999034404754639 -0.999988853931427 0 0.99997365474700928 
		0.99998527765274048 0.99999046325683594 0 -0.999988853931427 0 0 0 0 0.99998527765274048 
		0.99999046325683594 0 -0.99997907876968384 -0.99999034404754639 -0.999988853931427 
		0 0.99997365474700928 0.99998527765274048 0.99999046325683594 0 -0.99997907876968384 
		-0.99999034404754639 -0.999988853931427 0;
	setAttr -s 113 ".kox[12:112]"  0.056461647152900696 0.014172659255564213 
		0.0054262056946754456 0.0043800505809485912 1 0.0064734169282019138 0.0044004945084452629 
		0.0047240713611245155 1 1 0.0048376214690506458 0.030310308560729027 1 0.012288719415664673 
		1 1 1 1 0.0054262056946754456 0.0043800505809485912 1 0.0064734169282019138 0.0044004945084452629 
		0.0047240713611245155 1 0.0038464008830487728 1 0.019542697817087173 0.013023726642131805 
		0.0083961309865117073 0.0059726317413151264 0.0053835990838706493 1 0.004522969014942646 
		0.0049736932851374149 1 1 0.0072541525587439537 0.0054262056946754456 0.0043800505809485912 
		1 0.0064734169282019138 0.0044004945084452629 0.0047240713611245155 1 0.0072541525587439537 
		0.0054262056946754456 0.0043800505809485912 1 0.0064734169282019138 0.0044004945084452629 
		0.0047240713611245155 1 0.0072541525587439537 0.0054262056946754456 0.0043800505809485912 
		1 0.0064734169282019138 0.0044004945084452629 0.0047240713611245155 1 0.0072541525587439537 
		0.0054262056946754456 0.0043800505809485912 1 0.0064734169282019138 0.0044004945084452629 
		0.0047240713611245155 1 0.0072541525587439537 0.0054262056946754456 0.0043800505809485912 
		1 0.0064734169282019138 0.0044004945084452629 0.0047240713611245155 1 0.0072541525587439537 
		0.0054262056946754456 0.0043800505809485912 1 0.0047240713611245155 1 1 1 1 0.0054262056946754456 
		0.0043800505809485912 1 0.0064734169282019138 0.0044004945084452629 0.0047240713611245155 
		1 0.0072541525587439537 0.0054262056946754456 0.0043800505809485912 1 0.0064734169282019138 
		0.0044004945084452629 0.0047240713611245155 1;
	setAttr -s 113 ".koy[12:112]"  0.99840474128723145 0.99989956617355347 
		0.99998527765274048 0.99999046325683594 0 -0.99997907876968384 -0.99999034404754639 
		-0.999988853931427 0 0 -0.99998825788497925 -0.99954056739807129 0 0.99992454051971436 
		0 0 0 0 0.99998527765274048 0.99999046325683594 0 -0.99997907876968384 -0.99999034404754639 
		-0.999988853931427 0 0.99999260902404785 0 -0.99980902671813965 -0.99991518259048462 
		-0.99996471405029297 -0.99998217821121216 -0.99998551607131958 0 -0.99998980760574341 
		-0.99998760223388672 0 0 0.99997365474700928 0.99998527765274048 0.99999046325683594 
		0 -0.99997907876968384 -0.99999034404754639 -0.999988853931427 0 0.99997365474700928 
		0.99998527765274048 0.99999046325683594 0 -0.99997907876968384 -0.99999034404754639 
		-0.999988853931427 0 0.99997365474700928 0.99998527765274048 0.99999046325683594 
		0 -0.99997907876968384 -0.99999034404754639 -0.999988853931427 0 0.99997365474700928 
		0.99998527765274048 0.99999046325683594 0 -0.99997907876968384 -0.99999034404754639 
		-0.999988853931427 0 0.99997365474700928 0.99998527765274048 0.99999046325683594 
		0 -0.99997907876968384 -0.99999034404754639 -0.999988853931427 0 0.99997365474700928 
		0.99998527765274048 0.99999046325683594 0 -0.999988853931427 0 0 0 0 0.99998527765274048 
		0.99999046325683594 0 -0.99997907876968384 -0.99999034404754639 -0.999988853931427 
		0 0.99997365474700928 0.99998527765274048 0.99999046325683594 0 -0.99997907876968384 
		-0.99999034404754639 -0.999988853931427 0;
createNode animCurveTA -n "LeftFoot_Control_rotateX";
	rename -uid "AAA304F0-DB44-6B65-5EC1-94999FDCDF61";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 99 ".ktv[0:98]"  -12 -14.010237598149354 -9 0 -6 38.079755203655345
		 -3 107.64055107783686 0 117.04117595031876 3 113.67193698438771 6 109.83410557534877
		 9 26.686932332809576 12 -14.382798294258798 15 0 18 43.498107993015324 21 117.96441652308819
		 24 117.04117595031876 27 102.00772822864855 30 93.052526251700897 33 72.730929713219808
		 36 -2.1172020015029096 42 0 45 40.254116376488625 48 125.24259313131243 54 0 57 0
		 60 0 66 33.007797908634814 72 47.762676659573131 75 102.00772822864855 78 93.052526251700897
		 81 72.730929713219808 84 -2.1172020015029096 90 0 93 40.254116376488625 96 125.24259313131243
		 99 102.00772822864855 105 0 106 0 107 0 108 0 109 0 110 0 111 0 114 48.927590941726329
		 117 40.254116376488625 120 125.24259313131243 123 102.00772822864855 126 93.052526251700897
		 129 72.730929713219808 132 -2.1172020015029096 138 0 141 40.254116376488625 144 125.24259313131243
		 147 102.00772822864855 150 93.052526251700897 153 72.730929713219808 156 -2.1172020015029096
		 162 0 165 40.254116376488625 168 125.24259313131243 171 102.00772822864855 174 93.052526251700897
		 177 72.730929713219808 180 -2.1172020015029096 186 0 189 40.254116376488625 192 125.24259313131243
		 195 102.00772822864855 198 93.052526251700897 201 72.730929713219808 204 -2.1172020015029096
		 210 0 213 40.254116376488625 216 125.24259313131243 219 102.00772822864855 222 93.052526251700897
		 225 72.730929713219808 228 -2.1172020015029096 234 0 237 40.254116376488625 240 125.24259313131243
		 243 102.00772822864855 246 93.052526251700897 249 72.730929713219808 252 -2.1172020015029096
		 255 40.254116376488625 259 0 264 0 267 102.00772822864855 270 93.052526251700897
		 273 72.730929713219808 276 -2.1172020015029096 282 0 285 40.254116376488625 288 125.24259313131243
		 291 102.00772822864855 294 93.052526251700897 297 72.730929713219808 300 -2.1172020015029096
		 306 0 309 40.254116376488625 312 125.24259313131243;
	setAttr -s 99 ".kit[12:98]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 1 18 18 18 18 18 
		18 18 1 18 18 1 18 18 18 18 18 18 1 18 18 18 18 
		18 18 1 18 18 18 18 18 18 1 18 18 18 18 18 18 1 
		18 18 18 18 18 18 1 18 18 18 18 1 1 1 18 18 18 
		18 18 18 1 18 18 18 18 18 18 1;
	setAttr -s 99 ".kot[12:98]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 1 18 18 18 18 18 
		18 18 1 18 18 1 18 18 18 18 18 18 1 18 18 18 18 
		18 18 1 18 18 18 18 18 18 1 18 18 18 18 18 18 1 
		18 18 18 18 18 18 1 18 18 18 18 1 1 1 18 18 18 
		18 18 18 1 18 18 18 18 18 18 1;
	setAttr -s 99 ".kix[12:98]"  1 0.5126723051071167 0.43947863578796387 
		0.14883314073085785 1 0.91415679454803467 0.11362884938716888 1 1 1 1 0.51436746120452881 
		0.30787929892539978 1 0.43947863578796387 0.14883314073085785 1 0.91415679454803467 
		0.11362884938716888 1 0.16908429563045502 1 1 1 1 1 1 1 1 1 1 0.40654724836349487 
		0.43947863578796387 0.14883314073085785 1 0.91415679454803467 0.11362884938716888 
		1 0.40654724836349487 0.43947863578796387 0.14883314073085785 1 0.91415679454803467 
		0.11362884938716888 1 0.40654724836349487 0.43947863578796387 0.14883314073085785 
		1 0.91415679454803467 0.11362884938716888 1 0.40654724836349487 0.43947863578796387 
		0.14883314073085785 1 0.91415679454803467 0.11362884938716888 1 0.40654724836349487 
		0.43947863578796387 0.14883314073085785 1 0.91415679454803467 0.11362884938716888 
		1 0.40654724836349487 0.43947863578796387 0.14883314073085785 1 0.11362884938716888 
		1 1 1 0.43947863578796387 0.14883314073085785 1 0.91415679454803467 0.11362884938716888 
		1 0.40654724836349487 0.43947863578796387 0.14883314073085785 1 0.91415679454803467 
		0.11362884938716888 1;
	setAttr -s 99 ".kiy[12:98]"  0 -0.85858440399169922 -0.89825308322906494 
		-0.98886233568191528 0 0.4053606390953064 0.9935232400894165 0 0 0 0 0.85756987333297729 
		0.95142537355422974 0 -0.89825308322906494 -0.98886233568191528 0 0.4053606390953064 
		0.9935232400894165 0 -0.98560160398483276 0 0 0 0 0 0 0 0 0 0 -0.91362982988357544 
		-0.89825308322906494 -0.98886233568191528 0 0.4053606390953064 0.9935232400894165 
		0 -0.91362982988357544 -0.89825308322906494 -0.98886233568191528 0 0.4053606390953064 
		0.9935232400894165 0 -0.91362982988357544 -0.89825308322906494 -0.98886233568191528 
		0 0.4053606390953064 0.9935232400894165 0 -0.91362982988357544 -0.89825308322906494 
		-0.98886233568191528 0 0.4053606390953064 0.9935232400894165 0 -0.91362982988357544 
		-0.89825308322906494 -0.98886233568191528 0 0.4053606390953064 0.9935232400894165 
		0 -0.91362982988357544 -0.89825308322906494 -0.98886233568191528 0 0.9935232400894165 
		0 0 0 -0.89825308322906494 -0.98886233568191528 0 0.4053606390953064 0.9935232400894165 
		0 -0.91362982988357544 -0.89825308322906494 -0.98886233568191528 0 0.4053606390953064 
		0.9935232400894165 0;
	setAttr -s 99 ".kox[12:98]"  1 0.5126723051071167 0.43947863578796387 
		0.14883314073085785 1 0.91415679454803467 0.11362884938716888 1 1 1 1 0.51436746120452881 
		0.30787929892539978 1 0.43947863578796387 0.14883314073085785 1 0.91415679454803467 
		0.11362884938716888 1 0.16908429563045502 1 1 1 1 1 1 1 1 1 1 0.40654724836349487 
		0.43947863578796387 0.14883314073085785 1 0.91415679454803467 0.11362884938716888 
		1 0.40654724836349487 0.43947863578796387 0.14883314073085785 1 0.91415679454803467 
		0.11362884938716888 1 0.40654724836349487 0.43947863578796387 0.14883314073085785 
		1 0.91415679454803467 0.11362884938716888 1 0.40654724836349487 0.43947863578796387 
		0.14883314073085785 1 0.91415679454803467 0.11362884938716888 1 0.40654724836349487 
		0.43947863578796387 0.14883314073085785 1 0.91415679454803467 0.11362884938716888 
		1 0.40654724836349487 0.43947863578796387 0.14883314073085785 1 0.11362884938716888 
		1 1 1 0.43947863578796387 0.14883314073085785 1 0.91415679454803467 0.11362884938716888 
		1 0.40654724836349487 0.43947863578796387 0.14883314073085785 1 0.91415679454803467 
		0.11362884938716888 1;
	setAttr -s 99 ".koy[12:98]"  0 -0.85858440399169922 -0.89825308322906494 
		-0.98886233568191528 0 0.4053606390953064 0.9935232400894165 0 0 0 0 0.85756987333297729 
		0.95142537355422974 0 -0.89825308322906494 -0.98886233568191528 0 0.4053606390953064 
		0.9935232400894165 0 -0.98560160398483276 0 0 0 0 0 0 0 0 0 0 -0.91362982988357544 
		-0.89825308322906494 -0.98886233568191528 0 0.4053606390953064 0.9935232400894165 
		0 -0.91362982988357544 -0.89825308322906494 -0.98886233568191528 0 0.4053606390953064 
		0.9935232400894165 0 -0.91362982988357544 -0.89825308322906494 -0.98886233568191528 
		0 0.4053606390953064 0.9935232400894165 0 -0.91362982988357544 -0.89825308322906494 
		-0.98886233568191528 0 0.4053606390953064 0.9935232400894165 0 -0.91362982988357544 
		-0.89825308322906494 -0.98886233568191528 0 0.4053606390953064 0.9935232400894165 
		0 -0.91362982988357544 -0.89825308322906494 -0.98886233568191528 0 0.9935232400894165 
		0 0 0 -0.89825308322906494 -0.98886233568191528 0 0.4053606390953064 0.9935232400894165 
		0 -0.91362982988357544 -0.89825308322906494 -0.98886233568191528 0 0.4053606390953064 
		0.9935232400894165 0;
createNode animCurveTA -n "LeftFoot_Control_rotateY";
	rename -uid "AD926C69-9D40-EFD6-9459-448BD1BD7A00";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 98 ".ktv[0:97]"  -12 0 -3 0 0 22.833704781106423 3 14.174252313616057
		 6 18.169347796874764 9 8.3264741858418478 12 12.935619052216044 15 15.817652198628039
		 18 27.439614588328791 21 32.59319605468567 24 22.833704781106423 27 -4.2932384891590525
		 30 -0.91331953160952928 33 3.7391291493987753 36 11.844436290210655 42 6.5802755150534935
		 45 17.655756191480474 48 -17.806653748472218 54 62.108624069861577 57 58.246244700350303
		 60 23.157439055875741 63 -24.556981227390683 66 0 72 9.9986212066515705 75 -4.2932384891590525
		 78 -0.91331953160952928 81 3.7391291493987753 84 11.844436290210655 90 6.5802755150534935
		 93 17.655756191480474 96 -17.806653748472218 99 -4.2932384891590525 105 -57.116009106144539
		 106 -53.176873325938246 107 -46.300764706198642 108 -40.804825992352306 109 -33.620901179293483
		 110 -17.331246712876364 111 -6.7222338239194226 114 6.5802755150534935 117 17.655756191480474
		 120 -17.806653748472218 123 -4.2932384891590525 126 -0.91331953160952928 129 3.7391291493987753
		 132 11.844436290210655 138 6.5802755150534935 141 17.655756191480474 144 -17.806653748472218
		 147 -4.2932384891590525 150 -0.91331953160952928 153 3.7391291493987753 156 11.844436290210655
		 162 6.5802755150534935 165 17.655756191480474 168 -17.806653748472218 171 -4.2932384891590525
		 174 -0.91331953160952928 177 3.7391291493987753 180 11.844436290210655 186 6.5802755150534935
		 189 17.655756191480474 192 -17.806653748472218 195 -4.2932384891590525 198 -0.91331953160952928
		 201 3.7391291493987753 204 11.844436290210655 210 6.5802755150534935 213 17.655756191480474
		 216 -17.806653748472218 219 -4.2932384891590525 222 -0.91331953160952928 225 3.7391291493987753
		 228 11.844436290210655 234 6.5802755150534935 237 17.655756191480474 240 -17.806653748472218
		 243 -4.2932384891590525 246 -0.91331953160952928 249 3.7391291493987753 252 11.844436290210655
		 255 17.655756191480474 259 0 264 0 267 -4.2932384891590525 270 -0.91331953160952928
		 273 3.7391291493987753 276 11.844436290210655 282 6.5802755150534935 285 17.655756191480474
		 288 -17.806653748472218 291 -4.2932384891590525 294 -0.91331953160952928 297 3.7391291493987753
		 300 11.844436290210655 306 6.5802755150534935 309 17.655756191480474 312 -17.806653748472218;
	setAttr -s 98 ".kit[10:97]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 1 18 18 18 18 
		18 18 18 1 18 18 1 18 18 18 18 18 18 1 18 18 18 
		18 18 18 1 18 18 18 18 18 18 1 18 18 18 18 18 18 
		1 18 18 18 18 18 18 1 18 18 18 18 1 1 1 18 18 
		18 18 18 18 1 18 18 18 18 18 18 1;
	setAttr -s 98 ".kot[10:97]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 1 18 18 18 18 
		18 18 18 1 18 18 1 18 18 18 18 18 18 1 18 18 18 
		18 18 18 1 18 18 18 18 18 18 1 18 18 18 18 18 18 
		1 18 18 18 18 18 18 1 18 18 18 18 1 1 1 18 18 
		18 18 18 18 1 18 18 18 18 18 18 1;
	setAttr -s 98 ".kix[10:97]"  1 1 0.87222141027450562 0.74675244092941284 
		1 1 1 1 1 0.52576977014541626 0.17045614123344421 1 0.52802997827529907 1 1 0.87222141027450562 
		0.74675244092941284 1 1 1 1 1 1 0.40386858582496643 0.36004152894020081 0.3523966372013092 
		0.19932399690151215 0.17477330565452576 1 0.50659835338592529 1 1 0.64672034978866577 
		0.87222141027450562 0.74675244092941284 1 1 1 1 0.64672034978866577 0.87222141027450562 
		0.74675244092941284 1 1 1 1 0.64672034978866577 0.87222141027450562 0.74675244092941284 
		1 1 1 1 0.64672034978866577 0.87222141027450562 0.74675244092941284 1 1 1 1 0.64672034978866577 
		0.87222141027450562 0.74675244092941284 1 1 1 1 0.64672034978866577 0.87222141027450562 
		0.74675244092941284 0.71723085641860962 1 1 1 1 0.87222141027450562 0.74675244092941284 
		1 1 1 1 0.64672034978866577 0.87222141027450562 0.74675244092941284 1 1 1 1;
	setAttr -s 98 ".kiy[10:97]"  0 0 0.4891112744808197 0.66510212421417236 
		0 0 0 0 0 -0.85062694549560547 -0.98536527156829834 0 0.84922569990158081 0 0 0.4891112744808197 
		0.66510212421417236 0 0 0 0 0 0 0.91481697559356689 0.93293625116348267 0.93585073947906494 
		0.97993367910385132 0.98460870981216431 0 0.86218219995498657 0 0 0.76272720098495483 
		0.4891112744808197 0.66510212421417236 0 0 0 0 0.76272720098495483 0.4891112744808197 
		0.66510212421417236 0 0 0 0 0.76272720098495483 0.4891112744808197 0.66510212421417236 
		0 0 0 0 0.76272720098495483 0.4891112744808197 0.66510212421417236 0 0 0 0 0.76272720098495483 
		0.4891112744808197 0.66510212421417236 0 0 0 0 0.76272720098495483 0.4891112744808197 
		0.66510212421417236 0.69683557748794556 0 0 0 0 0.4891112744808197 0.66510212421417236 
		0 0 0 0 0.76272720098495483 0.4891112744808197 0.66510212421417236 0 0 0 0;
	setAttr -s 98 ".kox[10:97]"  1 1 0.87222141027450562 0.74675244092941284 
		1 1 1 1 1 0.52576977014541626 0.17045614123344421 1 0.52802997827529907 1 1 0.87222141027450562 
		0.74675244092941284 1 1 1 1 1 1 0.40386858582496643 0.36004152894020081 0.3523966372013092 
		0.19932399690151215 0.17477332055568695 1 0.50659835338592529 1 1 0.64672034978866577 
		0.87222141027450562 0.74675244092941284 1 1 1 1 0.64672034978866577 0.87222141027450562 
		0.74675244092941284 1 1 1 1 0.64672034978866577 0.87222141027450562 0.74675244092941284 
		1 1 1 1 0.64672034978866577 0.87222141027450562 0.74675244092941284 1 1 1 1 0.64672034978866577 
		0.87222141027450562 0.74675244092941284 1 1 1 1 0.64672034978866577 0.87222141027450562 
		0.74675244092941284 0.71723085641860962 1 1 1 1 0.87222141027450562 0.74675244092941284 
		1 1 1 1 0.64672034978866577 0.87222141027450562 0.74675244092941284 1 1 1 1;
	setAttr -s 98 ".koy[10:97]"  0 0 0.4891112744808197 0.66510212421417236 
		0 0 0 0 0 -0.85062694549560547 -0.98536527156829834 0 0.84922569990158081 0 0 0.4891112744808197 
		0.66510212421417236 0 0 0 0 0 0 0.91481697559356689 0.93293625116348267 0.93585073947906494 
		0.97993367910385132 0.98460870981216431 0 0.86218219995498657 0 0 0.76272720098495483 
		0.4891112744808197 0.66510212421417236 0 0 0 0 0.76272720098495483 0.4891112744808197 
		0.66510212421417236 0 0 0 0 0.76272720098495483 0.4891112744808197 0.66510212421417236 
		0 0 0 0 0.76272720098495483 0.4891112744808197 0.66510212421417236 0 0 0 0 0.76272720098495483 
		0.4891112744808197 0.66510212421417236 0 0 0 0 0.76272720098495483 0.4891112744808197 
		0.66510212421417236 0.69683557748794556 0 0 0 0 0.4891112744808197 0.66510212421417236 
		0 0 0 0 0.76272720098495483 0.4891112744808197 0.66510212421417236 0 0 0 0;
createNode animCurveTA -n "LeftFoot_Control_rotateZ";
	rename -uid "CB5DF531-B44E-4D09-68FE-78A20123E855";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 88 ".ktv[0:87]"  -12 0 -9 0 -3 0 0 30.634656640900882 3 9.3886008590880028
		 6 -1.7186369761394409 9 -0.46599896900921078 12 -3.2854489402844629 15 0 18 17.464787757064069
		 21 16.761681950893806 24 30.634656640900882 27 19.390034276161817 30 16.641689753183488
		 33 11.84749721474291 36 -0.43475619464896142 45 11.827444227708343 48 13.689354500439466
		 54 0 57 0 60 0 66 0 72 27.615295034409655 75 19.390034276161817 78 16.641689753183488
		 81 11.84749721474291 84 -0.43475619464896142 93 11.827444227708343 96 13.689354500439466
		 99 19.390034276161817 105 0 106 0 107 0 108 0 109 0 110 0 111 0 117 11.827444227708343
		 120 13.689354500439466 123 19.390034276161817 126 16.641689753183488 129 11.84749721474291
		 132 -0.43475619464896142 141 11.827444227708343 144 13.689354500439466 147 19.390034276161817
		 150 16.641689753183488 153 11.84749721474291 156 -0.43475619464896142 165 11.827444227708343
		 168 13.689354500439466 171 19.390034276161817 174 16.641689753183488 177 11.84749721474291
		 180 -0.43475619464896142 189 11.827444227708343 192 13.689354500439466 195 19.390034276161817
		 198 16.641689753183488 201 11.84749721474291 204 -0.43475619464896142 213 11.827444227708343
		 216 13.689354500439466 219 19.390034276161817 222 16.641689753183488 225 11.84749721474291
		 228 -0.43475619464896142 237 11.827444227708343 240 13.689354500439466 243 19.390034276161817
		 246 16.641689753183488 249 11.84749721474291 252 -0.43475619464896142 255 11.827444227708343
		 259 0 264 0 267 19.390034276161817 270 16.641689753183488 273 11.84749721474291 276 -0.43475619464896142
		 285 11.827444227708343 288 13.689354500439466 291 19.390034276161817 294 16.641689753183488
		 297 11.84749721474291 300 -0.43475619464896142 309 11.827444227708343 312 13.689354500439466;
	setAttr -s 88 ".kit[11:87]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 1 18 18 18 18 18 18 18 
		1 18 1 18 18 18 18 18 1 18 18 18 18 18 1 18 18 
		18 18 18 1 18 18 18 18 18 1 18 18 18 18 18 1 18 
		18 18 18 1 1 1 18 18 18 18 18 1 18 18 18 18 18 
		1;
	setAttr -s 88 ".kot[11:87]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 1 18 18 18 18 18 18 18 
		1 18 1 18 18 18 18 18 1 18 18 18 18 18 1 18 18 
		18 18 18 1 18 18 18 18 18 1 18 18 18 18 18 1 18 
		18 18 18 1 1 1 18 18 18 18 18 1 18 18 18 18 18 
		1;
	setAttr -s 88 ".kix[11:87]"  1 0.71532285213470459 0.88482612371444702 
		0.64265871047973633 1 0.89691579341888428 1 1 1 1 1 1 0.79382264614105225 0.88482612371444702 
		0.64265871047973633 1 0.89691579341888428 1 1 1 1 1 1 1 1 1 0.84336799383163452 1 
		1 0.88482612371444702 0.64265871047973633 1 0.89691579341888428 1 1 0.88482612371444702 
		0.64265871047973633 1 0.89691579341888428 1 1 0.88482612371444702 0.64265871047973633 
		1 0.89691579341888428 1 1 0.88482612371444702 0.64265871047973633 1 0.89691579341888428 
		1 1 0.88482612371444702 0.64265871047973633 1 0.89691579341888428 1 1 0.88482612371444702 
		0.64265871047973633 1 0.89691579341888428 1 1 1 0.88482612371444702 0.64265871047973633 
		1 0.89691579341888428 1 1 0.88482612371444702 0.64265871047973633 1 0.89691579341888428 
		1;
	setAttr -s 88 ".kiy[11:87]"  0 -0.69879412651062012 -0.46592146158218384 
		-0.76615256071090698 0 0.4422014057636261 0 0 0 0 0 0 -0.60814929008483887 -0.46592146158218384 
		-0.76615256071090698 0 0.4422014057636261 0 0 0 0 0 0 0 0 0 0.53733634948730469 0 
		0 -0.46592146158218384 -0.76615256071090698 0 0.4422014057636261 0 0 -0.46592146158218384 
		-0.76615256071090698 0 0.4422014057636261 0 0 -0.46592146158218384 -0.76615256071090698 
		0 0.4422014057636261 0 0 -0.46592146158218384 -0.76615256071090698 0 0.4422014057636261 
		0 0 -0.46592146158218384 -0.76615256071090698 0 0.4422014057636261 0 0 -0.46592146158218384 
		-0.76615256071090698 0 0.4422014057636261 0 0 0 -0.46592146158218384 -0.76615256071090698 
		0 0.4422014057636261 0 0 -0.46592146158218384 -0.76615256071090698 0 0.4422014057636261 
		0;
	setAttr -s 88 ".kox[11:87]"  1 0.71532285213470459 0.88482612371444702 
		0.64265871047973633 1 0.8969157338142395 1 1 1 1 1 1 0.79382264614105225 0.88482612371444702 
		0.64265871047973633 1 0.8969157338142395 1 1 1 1 1 1 1 1 1 0.84336799383163452 1 
		1 0.88482612371444702 0.64265871047973633 1 0.8969157338142395 1 1 0.88482612371444702 
		0.64265871047973633 1 0.8969157338142395 1 1 0.88482612371444702 0.64265871047973633 
		1 0.8969157338142395 1 1 0.88482612371444702 0.64265871047973633 1 0.8969157338142395 
		1 1 0.88482612371444702 0.64265871047973633 1 0.8969157338142395 1 1 0.88482612371444702 
		0.64265871047973633 1 0.8969157338142395 1 1 1 0.88482612371444702 0.64265871047973633 
		1 0.8969157338142395 1 1 0.88482612371444702 0.64265871047973633 1 0.8969157338142395 
		1;
	setAttr -s 88 ".koy[11:87]"  0 -0.69879412651062012 -0.46592146158218384 
		-0.76615256071090698 0 0.4422014057636261 0 0 0 0 0 0 -0.60814929008483887 -0.46592146158218384 
		-0.76615256071090698 0 0.4422014057636261 0 0 0 0 0 0 0 0 0 0.53733634948730469 0 
		0 -0.46592146158218384 -0.76615256071090698 0 0.4422014057636261 0 0 -0.46592146158218384 
		-0.76615256071090698 0 0.4422014057636261 0 0 -0.46592146158218384 -0.76615256071090698 
		0 0.4422014057636261 0 0 -0.46592146158218384 -0.76615256071090698 0 0.4422014057636261 
		0 0 -0.46592146158218384 -0.76615256071090698 0 0.4422014057636261 0 0 -0.46592146158218384 
		-0.76615256071090698 0 0.4422014057636261 0 0 0 -0.46592146158218384 -0.76615256071090698 
		0 0.4422014057636261 0 0 -0.46592146158218384 -0.76615256071090698 0 0.4422014057636261 
		0;
createNode animCurveTL -n "RightHand_Control_translateX";
	rename -uid "CEBC6200-D14A-315A-F3CF-0DB4B7FFE3FF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 15.111678568529523 5 13.162954396543125
		 15 7.3057709636680883 20 16.498008936484815;
createNode animCurveTL -n "RightHand_Control_translateY";
	rename -uid "8F8BBAAA-F247-A46A-06D5-3FB24B155F3E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  0 -32.124280882040651 5 -31.948755732169147
		 10 -35.645239407078464 20 -33.452660368314397;
createNode animCurveTL -n "RightHand_Control_translateZ";
	rename -uid "CD0165C1-EF43-9AED-7DB4-8AA63106EF74";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 4.6190876403297167 15 -3.0273589988556822
		 20 7.5743856394465681;
createNode animCurveTU -n "RightHand_Control_visibility";
	rename -uid "2BC77D29-404E-FEBC-9ABE-1F8CD2CDC3F9";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "RightHand_Control_rotateX";
	rename -uid "A1E530EA-0E4D-E01F-38D1-56ACE497F36D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "RightHand_Control_rotateY";
	rename -uid "47881CD1-B742-D1A0-190E-E39696E4B074";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 60.135211430104569;
createNode animCurveTA -n "RightHand_Control_rotateZ";
	rename -uid "6261E5D4-A047-AB9E-5F94-9D8344BB5826";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTU -n "RightHand_Control_scaleX";
	rename -uid "6171BEB5-F341-A26A-9587-96B25BDCF026";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "RightHand_Control_scaleY";
	rename -uid "39C40883-8A45-E495-71E4-458AE86E34AD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "RightHand_Control_scaleZ";
	rename -uid "67461BFA-BA4F-013A-CB9D-EB87F1542A04";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
createNode animCurveTU -n "RightHand_Control_Grip";
	rename -uid "C1315905-8E49-CB1B-21A3-649BE8D1E82C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1;
select -ne :time1;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".o" 80;
	setAttr -av ".unw" 80;
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
select -ne :defaultColorMgtGlobals;
	setAttr ".ovt" no;
	setAttr ".povt" no;
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
connectAttr "RightToes_Control_translateX.o" "CombotRN.phl[25]";
connectAttr "RightToes_Control_translateY.o" "CombotRN.phl[26]";
connectAttr "RightToes_Control_translateZ.o" "CombotRN.phl[27]";
connectAttr "RightToes_Control_visibility.o" "CombotRN.phl[28]";
connectAttr "RightToes_Control_scaleX.o" "CombotRN.phl[29]";
connectAttr "RightToes_Control_scaleY.o" "CombotRN.phl[30]";
connectAttr "RightToes_Control_scaleZ.o" "CombotRN.phl[31]";
connectAttr "nurbsCircle1_translateX.o" "CombotRN.phl[32]";
connectAttr "nurbsCircle1_translateY.o" "CombotRN.phl[33]";
connectAttr "nurbsCircle1_translateZ.o" "CombotRN.phl[34]";
connectAttr "nurbsCircle1_rotateX.o" "CombotRN.phl[35]";
connectAttr "nurbsCircle1_rotateY.o" "CombotRN.phl[36]";
connectAttr "nurbsCircle1_rotateZ.o" "CombotRN.phl[37]";
connectAttr "nurbsCircle1_visibility.o" "CombotRN.phl[38]";
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
connectAttr "LeftKnee_Control_rotateX.o" "CombotRN.phl[65]";
connectAttr "LeftKnee_Control_rotateY.o" "CombotRN.phl[66]";
connectAttr "LeftKnee_Control_rotateZ.o" "CombotRN.phl[67]";
connectAttr "LeftKnee_Control_visibility.o" "CombotRN.phl[68]";
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
connectAttr "Spine1_Control_translateX.o" "CombotRN.phl[85]";
connectAttr "Spine1_Control_translateY.o" "CombotRN.phl[86]";
connectAttr "Spine1_Control_translateZ.o" "CombotRN.phl[87]";
connectAttr "Spine1_Control_visibility.o" "CombotRN.phl[88]";
connectAttr "Spine1_Control_scaleX.o" "CombotRN.phl[89]";
connectAttr "Spine1_Control_scaleY.o" "CombotRN.phl[90]";
connectAttr "Spine1_Control_scaleZ.o" "CombotRN.phl[91]";
connectAttr "Spine2_Control_rotateX.o" "CombotRN.phl[92]";
connectAttr "Spine2_Control_rotateY.o" "CombotRN.phl[93]";
connectAttr "Spine2_Control_rotateZ.o" "CombotRN.phl[94]";
connectAttr "Spine2_Control_translateX.o" "CombotRN.phl[95]";
connectAttr "Spine2_Control_translateY.o" "CombotRN.phl[96]";
connectAttr "Spine2_Control_translateZ.o" "CombotRN.phl[97]";
connectAttr "Spine2_Control_scaleX.o" "CombotRN.phl[98]";
connectAttr "Spine2_Control_scaleY.o" "CombotRN.phl[99]";
connectAttr "Spine2_Control_scaleZ.o" "CombotRN.phl[100]";
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
connectAttr "Neck_Control_translateX.o" "CombotRN.phl[125]";
connectAttr "Neck_Control_translateY.o" "CombotRN.phl[126]";
connectAttr "Neck_Control_translateZ.o" "CombotRN.phl[127]";
connectAttr "Neck_Control_visibility.o" "CombotRN.phl[128]";
connectAttr "Neck_Control_scaleX.o" "CombotRN.phl[129]";
connectAttr "Neck_Control_scaleY.o" "CombotRN.phl[130]";
connectAttr "Neck_Control_scaleZ.o" "CombotRN.phl[131]";
connectAttr "Head_Control_rotateX.o" "CombotRN.phl[132]";
connectAttr "Head_Control_rotateY.o" "CombotRN.phl[133]";
connectAttr "Head_Control_rotateZ.o" "CombotRN.phl[134]";
connectAttr "Head_Control_translateX.o" "CombotRN.phl[135]";
connectAttr "Head_Control_translateY.o" "CombotRN.phl[136]";
connectAttr "Head_Control_translateZ.o" "CombotRN.phl[137]";
connectAttr "Head_Control_visibility.o" "CombotRN.phl[138]";
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
connectAttr "LeftElbow_Control_rotateX.o" "CombotRN.phl[187]";
connectAttr "LeftElbow_Control_rotateY.o" "CombotRN.phl[188]";
connectAttr "LeftElbow_Control_rotateZ.o" "CombotRN.phl[189]";
connectAttr "LeftElbow_Control_scaleY.o" "CombotRN.phl[190]";
connectAttr "LeftElbow_Control_scaleX.o" "CombotRN.phl[191]";
connectAttr "LeftElbow_Control_scaleZ.o" "CombotRN.phl[192]";
connectAttr "LeftElbow_Control_visibility.o" "CombotRN.phl[193]";
connectAttr "RightElbow_Control_translateX.o" "CombotRN.phl[194]";
connectAttr "RightElbow_Control_translateY.o" "CombotRN.phl[195]";
connectAttr "RightElbow_Control_translateZ.o" "CombotRN.phl[196]";
connectAttr "RightElbow_Control_rotateX.o" "CombotRN.phl[197]";
connectAttr "RightElbow_Control_rotateY.o" "CombotRN.phl[198]";
connectAttr "RightElbow_Control_rotateZ.o" "CombotRN.phl[199]";
connectAttr "RightElbow_Control_scaleZ.o" "CombotRN.phl[200]";
connectAttr "RightElbow_Control_scaleX.o" "CombotRN.phl[201]";
connectAttr "RightElbow_Control_scaleY.o" "CombotRN.phl[202]";
connectAttr "RightElbow_Control_visibility.o" "CombotRN.phl[203]";
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
// End of Combot_Moving.ma
