//Maya ASCII 2016 scene
//Name: Combot_StandingCover.ma
//Last modified: Tue, Oct 25, 2016 07:16:27 PM
//Codeset: UTF-8
file -rdi 1 -ns "Rig" -rfn "CombotRN" -op "v=0;" -typ "mayaAscii" "/Users/briancollins/Unity/LZisHOT/MayaSource/Combot/Combot.ma";
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
	setAttr ".t" -type "double3" 262.67626669034814 509.08139358447255 -298.60964391130574 ;
	setAttr ".r" -type "double3" -47.138352729548323 -222.59999999999988 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "CC00F1CE-0347-CFA4-D46A-8685B3A27D4F";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 590.99968411657358;
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
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube1";
	rename -uid "1E34A67A-454D-2641-2FB3-FA97EA8BB89D";
createNode mesh -n "pCubeShape1" -p "pCube1";
	rename -uid "DEB81BBE-5948-C531-0CA8-29B9A9A416EA";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dr" 1;
createNode fosterParent -n "AssaultRifleRNfosterParent1";
	rename -uid "00EFD14F-7444-4CDE-758E-2DA1600BC55F";
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
	setAttr ".lr" -type "double3" -10.942703188042337 -2.3896352157477971 0.46187460570793876 ;
	setAttr ".rst" -type "double3" 0 2.8421709430404007e-14 -8.8817841970012523e-16 ;
	setAttr ".rsrr" -type "double3" 1.2722218725854067e-14 1.1020512482868402e-14 -2.7506186579930925e-15 ;
	setAttr -k on ".w0";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "A533AFB2-464C-F424-EA6C-BE80DCCF6686";
	setAttr -s 10 ".lnk";
	setAttr -s 10 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "071594F3-2040-5621-139F-E39E1ED785B2";
	setAttr ".cdl" 1;
	setAttr -s 2 ".dli[1]"  1;
	setAttr -s 2 ".dli";
createNode displayLayer -n "defaultLayer";
	rename -uid "2644BC56-2D4B-C243-CAB4-12A6779B6A3C";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "873E2010-E649-47C8-E675-D98C4A8033BB";
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
		+ "            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 465\n            -height 304\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n"
		+ "                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n"
		+ "                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n"
		+ "                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 465\n                -height 304\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n"
		+ "            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n"
		+ "            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 465\n            -height 304\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n"
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
	setAttr ".b" -type "string" "playbackOptions -min 12 -max 24 -ast 0 -aet 200 ";
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
		"CombotRN" 416
		2 "|Rig:Controls|Rig:RootMotion_Control" "translate" " -type \"double3\" 0 0 0"
		
		2 "|Rig:Controls|Rig:RootMotion_Control" "translateX" " -av"
		2 "|Rig:Controls|Rig:RootMotion_Control" "translateY" " -av"
		2 "|Rig:Controls|Rig:RootMotion_Control" "translateZ" " -av"
		2 "|Rig:Controls|Rig:RootMotion_Control" "rotate" " -type \"double3\" 0 0 0"
		
		2 "|Rig:Controls|Rig:RootMotion_Control" "rotateX" " -av"
		2 "|Rig:Controls|Rig:RootMotion_Control" "rotateY" " -av"
		2 "|Rig:Controls|Rig:RootMotion_Control" "rotateZ" " -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:RIghtFoot_Control" "translate" 
		" -type \"double3\" 0 14.5895690487273697 -71.46222548792650286"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:RIghtFoot_Control" "translateX" 
		" -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:RIghtFoot_Control" "translateY" 
		" -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:RIghtFoot_Control" "translateZ" 
		" -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:RIghtFoot_Control" "rotate" " -type \"double3\" 51.11211704773266717 0 0"
		
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
		"rotate" " -type \"double3\" 0 0 0"
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
		" -type \"double3\" 0 15.77746526943968775 -84.45700378672100328"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftFoot_Control" "translateX" 
		" -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftFoot_Control" "translateY" 
		" -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftFoot_Control" "translateZ" 
		" -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftFoot_Control" "rotate" " -type \"double3\" 51.02054665940447364 0 0"
		
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
		"translateZ" " -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftFoot_Control|Rig:LeftKnee_Control" 
		"translateY" " -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftFoot_Control|Rig:LeftKnee_Control" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftFoot_Control|Rig:LeftKnee_Control" 
		"rotateX" " -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftFoot_Control|Rig:LeftKnee_Control" 
		"rotateY" " -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftFoot_Control|Rig:LeftKnee_Control" 
		"rotateZ" " -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control" "translate" " -type \"double3\" 0 0 -59.88672146083194292"
		
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control" "translateX" " -av"
		
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control" "translateY" " -av"
		
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control" "translateZ" " -av"
		
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control" "rotate" " -type \"double3\" 0 0 0"
		
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
		"rotate" " -type \"double3\" 0 0 0"
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
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control" 
		"rotateX" " -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control" 
		"rotateY" " -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control" 
		"rotateZ" " -av"
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
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:Neck_Control|Rig:Head_Control" 
		"rotateX" " -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:Neck_Control|Rig:Head_Control" 
		"rotateY" " -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:Neck_Control|Rig:Head_Control" 
		"rotateZ" " -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:LeftShoulder_Control" 
		"translate" " -type \"double3\" 0 0 0"
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
		" -type \"double3\" 0 45.5537174966511742 -26.53554170203643281"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:RightHand_Control" "translateX" 
		" -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:RightHand_Control" "translateY" 
		" -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:RightHand_Control" "translateZ" 
		" -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:RightHand_Control" "rotate" " -type \"double3\" -88.15302005463637158 0 0"
		
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:RightHand_Control" "rotateX" 
		" -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:RightHand_Control" "rotateY" 
		" -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:RightHand_Control" "rotateZ" 
		" -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:RightHand_Control|Rig:ikHandle3" 
		"translate" " -type \"double3\" -44.39756936904628759 86.09670000000002688 -6.16931166805879805"
		
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:RightHand_Control|Rig:ikHandle3" 
		"rotate" " -type \"double3\" 0 180 0"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftHand_Control" "translate" 
		" -type \"double3\" 0 0 0"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftHand_Control" "translateX" 
		" -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftHand_Control" "translateY" 
		" -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftHand_Control" "translateZ" 
		" -av"
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftHand_Control" "rotate" " -type \"double3\" 0 0 0"
		
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftHand_Control" "rotateX" " -av"
		
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftHand_Control" "rotateY" " -av"
		
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftHand_Control" "rotateZ" " -av"
		
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftHand_Control" "Grip" " -av -k 1 0"
		
		2 "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftElbow_Control" "translate" 
		" -type \"double3\" 0 0 0"
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
		" -type \"double3\" 0 0 0"
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
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:Skeleton|Rig:RootMotion_Skel|Rig:Hips_Skel|Rig:Spine1_Skel|Rig:Spine2_Skel|Rig:Neck_Skel|Rig:Head_Skel" 
		"rotateX" " -av"
		2 "|Rig:Skeleton|Rig:RootMotion_Skel|Rig:Hips_Skel|Rig:Spine1_Skel|Rig:Spine2_Skel|Rig:Neck_Skel|Rig:Head_Skel" 
		"rotateY" " -av"
		2 "|Rig:Skeleton|Rig:RootMotion_Skel|Rig:Hips_Skel|Rig:Spine1_Skel|Rig:Spine2_Skel|Rig:Neck_Skel|Rig:Head_Skel" 
		"rotateZ" " -av"
		2 "|Rig:Skeleton|Rig:RootMotion_Skel|Rig:Hips_Skel|Rig:Spine1_Skel|Rig:Spine2_Skel|Rig:RightClav_Skel|Rig:RightShoulder_Skel|Rig:RightUpperArm_Skel" 
		"rotate" " -type \"double3\" -11.90973161292286164 -0.45043613906989749 -2.63367175606732573"
		
		2 "|Rig:Skeleton|Rig:RootMotion_Skel|Rig:Hips_Skel|Rig:Spine1_Skel|Rig:Spine2_Skel|Rig:RightClav_Skel|Rig:RightShoulder_Skel|Rig:RightUpperArm_Skel|Rig:RightLowerArm_Skel" 
		"rotate" " -type \"double3\" -74.38586153264228074 -0.0021360552676185918 0.0041237305095339974"
		
		2 "|Rig:Skeleton|Rig:RootMotion_Skel|Rig:Hips_Skel|Rig:Spine1_Skel|Rig:Spine2_Skel|Rig:RightClav_Skel|Rig:RightShoulder_Skel|Rig:RightUpperArm_Skel|Rig:RightLowerArm_Skel|Rig:RightHand_Skel" 
		"rotate" " -type \"double3\" -1.83998079994686004 -2.64963597980524712 -0.30623233298956531"
		
		2 "|Rig:Skeleton|Rig:RootMotion_Skel|Rig:Hips_Skel|Rig:Spine1_Skel|Rig:Spine2_Skel|Rig:RightClav_Skel|Rig:RightShoulder_Skel|Rig:RightUpperArm_Skel|Rig:RightLowerArm_Skel|Rig:RightHand_Skel" 
		"rotateX" " -av"
		2 "|Rig:Skeleton|Rig:RootMotion_Skel|Rig:Hips_Skel|Rig:Spine1_Skel|Rig:Spine2_Skel|Rig:RightClav_Skel|Rig:RightShoulder_Skel|Rig:RightUpperArm_Skel|Rig:RightLowerArm_Skel|Rig:RightHand_Skel" 
		"rotateY" " -av"
		2 "|Rig:Skeleton|Rig:RootMotion_Skel|Rig:Hips_Skel|Rig:Spine1_Skel|Rig:Spine2_Skel|Rig:RightClav_Skel|Rig:RightShoulder_Skel|Rig:RightUpperArm_Skel|Rig:RightLowerArm_Skel|Rig:RightHand_Skel" 
		"rotateZ" " -av"
		2 "|Rig:Skeleton|Rig:RootMotion_Skel|Rig:Hips_Skel|Rig:Spine1_Skel|Rig:Spine2_Skel|Rig:RightClav_Skel|Rig:RightShoulder_Skel|Rig:RightUpperArm_Skel|Rig:RightLowerArm_Skel|Rig:RightHand_Skel|Rig:RightFingers1_Skel" 
		"rotate" " -type \"double3\" 8.27836110335265829 -0.27763321592792317 -5.86304214469191276"
		
		2 "|Rig:Skeleton|Rig:RootMotion_Skel|Rig:Hips_Skel|Rig:Spine1_Skel|Rig:Spine2_Skel|Rig:RightClav_Skel|Rig:RightShoulder_Skel|Rig:RightUpperArm_Skel|Rig:RightLowerArm_Skel|Rig:RightHand_Skel|Rig:RightFingers1_Skel" 
		"rotateX" " -av"
		2 "|Rig:Skeleton|Rig:RootMotion_Skel|Rig:Hips_Skel|Rig:Spine1_Skel|Rig:Spine2_Skel|Rig:RightClav_Skel|Rig:RightShoulder_Skel|Rig:RightUpperArm_Skel|Rig:RightLowerArm_Skel|Rig:RightHand_Skel|Rig:RightFingers1_Skel" 
		"rotateY" " -av"
		2 "|Rig:Skeleton|Rig:RootMotion_Skel|Rig:Hips_Skel|Rig:Spine1_Skel|Rig:Spine2_Skel|Rig:RightClav_Skel|Rig:RightShoulder_Skel|Rig:RightUpperArm_Skel|Rig:RightLowerArm_Skel|Rig:RightHand_Skel|Rig:RightFingers1_Skel" 
		"rotateZ" " -av"
		2 "|Rig:Skeleton|Rig:RootMotion_Skel|Rig:Hips_Skel|Rig:Spine1_Skel|Rig:Spine2_Skel|Rig:LeftClav_Skel|Rig:LeftShoulder_Skel|Rig:LeftUpperArm_Skel" 
		"rotate" " -type \"double3\" -48.43672145146464914 0.60555178701939893 -1.90015740680868839"
		
		2 "|Rig:Skeleton|Rig:RootMotion_Skel|Rig:Hips_Skel|Rig:Spine1_Skel|Rig:Spine2_Skel|Rig:LeftClav_Skel|Rig:LeftShoulder_Skel|Rig:LeftUpperArm_Skel|Rig:LeftLowerArm_Skel" 
		"rotate" " -type \"double3\" 23.01372024124823312 0.0046717991607453328 -0.0095920232854385442"
		
		2 "|Rig:Skeleton|Rig:RootMotion_Skel|Rig:Hips_Skel|Rig:Spine1_Skel|Rig:Spine2_Skel|Rig:LeftClav_Skel|Rig:LeftShoulder_Skel|Rig:LeftUpperArm_Skel|Rig:LeftLowerArm_Skel|Rig:LeftHand_Skel" 
		"rotate" " -type \"double3\" 25.39893827411787441 -1.77885965335327922 0.91344700163225456"
		
		2 "|Rig:Skeleton|Rig:RootMotion_Skel|Rig:Hips_Skel|Rig:Spine1_Skel|Rig:Spine2_Skel|Rig:LeftClav_Skel|Rig:LeftShoulder_Skel|Rig:LeftUpperArm_Skel|Rig:LeftLowerArm_Skel|Rig:LeftHand_Skel" 
		"rotateX" " -av"
		2 "|Rig:Skeleton|Rig:RootMotion_Skel|Rig:Hips_Skel|Rig:Spine1_Skel|Rig:Spine2_Skel|Rig:LeftClav_Skel|Rig:LeftShoulder_Skel|Rig:LeftUpperArm_Skel|Rig:LeftLowerArm_Skel|Rig:LeftHand_Skel" 
		"rotateY" " -av"
		2 "|Rig:Skeleton|Rig:RootMotion_Skel|Rig:Hips_Skel|Rig:Spine1_Skel|Rig:Spine2_Skel|Rig:LeftClav_Skel|Rig:LeftShoulder_Skel|Rig:LeftUpperArm_Skel|Rig:LeftLowerArm_Skel|Rig:LeftHand_Skel" 
		"rotateZ" " -av"
		2 "|Rig:Skeleton|Rig:RootMotion_Skel|Rig:Hips_Skel|Rig:Spine1_Skel|Rig:Spine2_Skel|Rig:LeftClav_Skel|Rig:LeftShoulder_Skel|Rig:LeftUpperArm_Skel|Rig:LeftLowerArm_Skel|Rig:LeftHand_Skel|Rig:LeftFingers1_Skel" 
		"rotate" " -type \"double3\" 8.27836110335265829 -0.27763321592792317 -5.86304214469191276"
		
		2 "|Rig:Skeleton|Rig:RootMotion_Skel|Rig:Hips_Skel|Rig:Spine1_Skel|Rig:Spine2_Skel|Rig:LeftClav_Skel|Rig:LeftShoulder_Skel|Rig:LeftUpperArm_Skel|Rig:LeftLowerArm_Skel|Rig:LeftHand_Skel|Rig:LeftFingers1_Skel" 
		"rotateX" " -av"
		2 "|Rig:Skeleton|Rig:RootMotion_Skel|Rig:Hips_Skel|Rig:Spine1_Skel|Rig:Spine2_Skel|Rig:LeftClav_Skel|Rig:LeftShoulder_Skel|Rig:LeftUpperArm_Skel|Rig:LeftLowerArm_Skel|Rig:LeftHand_Skel|Rig:LeftFingers1_Skel" 
		"rotateY" " -av"
		2 "|Rig:Skeleton|Rig:RootMotion_Skel|Rig:Hips_Skel|Rig:Spine1_Skel|Rig:Spine2_Skel|Rig:LeftClav_Skel|Rig:LeftShoulder_Skel|Rig:LeftUpperArm_Skel|Rig:LeftLowerArm_Skel|Rig:LeftHand_Skel|Rig:LeftFingers1_Skel" 
		"rotateZ" " -av"
		2 "Rig:SkeletonLayer" "visibility" " 0"
		2 "Rig:ExtraLayer" "displayType" " 0"
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
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftFoot_Control|Rig:LeftToes_Control.visibility" 
		"CombotRN.placeHolderList[55]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftFoot_Control|Rig:LeftToes_Control.translateX" 
		"CombotRN.placeHolderList[56]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftFoot_Control|Rig:LeftToes_Control.translateY" 
		"CombotRN.placeHolderList[57]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftFoot_Control|Rig:LeftToes_Control.translateZ" 
		"CombotRN.placeHolderList[58]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftFoot_Control|Rig:LeftToes_Control.scaleX" 
		"CombotRN.placeHolderList[59]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftFoot_Control|Rig:LeftToes_Control.scaleY" 
		"CombotRN.placeHolderList[60]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftFoot_Control|Rig:LeftToes_Control.scaleZ" 
		"CombotRN.placeHolderList[61]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftFoot_Control|Rig:LeftKnee_Control.translateX" 
		"CombotRN.placeHolderList[62]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftFoot_Control|Rig:LeftKnee_Control.translateZ" 
		"CombotRN.placeHolderList[63]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftFoot_Control|Rig:LeftKnee_Control.translateY" 
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
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control.visibility" 
		"CombotRN.placeHolderList[95]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control.translateX" 
		"CombotRN.placeHolderList[96]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control.translateY" 
		"CombotRN.placeHolderList[97]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control.translateZ" 
		"CombotRN.placeHolderList[98]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control.scaleX" 
		"CombotRN.placeHolderList[99]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control.scaleY" 
		"CombotRN.placeHolderList[100]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control.scaleZ" 
		"CombotRN.placeHolderList[101]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:LeftClav_Control.rotateX" 
		"CombotRN.placeHolderList[102]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:LeftClav_Control.rotateY" 
		"CombotRN.placeHolderList[103]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:LeftClav_Control.rotateZ" 
		"CombotRN.placeHolderList[104]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:LeftClav_Control.visibility" 
		"CombotRN.placeHolderList[105]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:LeftClav_Control.translateX" 
		"CombotRN.placeHolderList[106]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:LeftClav_Control.translateY" 
		"CombotRN.placeHolderList[107]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:LeftClav_Control.translateZ" 
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
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:RightClav_Control.visibility" 
		"CombotRN.placeHolderList[115]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:RightClav_Control.translateX" 
		"CombotRN.placeHolderList[116]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:RightClav_Control.translateY" 
		"CombotRN.placeHolderList[117]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:RightClav_Control.translateZ" 
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
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:LeftShoulder_Control.visibility" 
		"CombotRN.placeHolderList[145]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:LeftShoulder_Control.translateX" 
		"CombotRN.placeHolderList[146]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:LeftShoulder_Control.translateY" 
		"CombotRN.placeHolderList[147]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:LeftShoulder_Control.translateZ" 
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
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:RightShoulder_Control.visibility" 
		"CombotRN.placeHolderList[155]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:RightShoulder_Control.translateX" 
		"CombotRN.placeHolderList[156]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:RightShoulder_Control.translateY" 
		"CombotRN.placeHolderList[157]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:Hips_Control|Rig:Spine1_Control|Rig:Spine2_Control|Rig:RightShoulder_Control.translateZ" 
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
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftElbow_Control.visibility" 
		"CombotRN.placeHolderList[190]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftElbow_Control.scaleX" 
		"CombotRN.placeHolderList[191]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftElbow_Control.scaleY" 
		"CombotRN.placeHolderList[192]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:LeftElbow_Control.scaleZ" 
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
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:RightElbow_Control.visibility" 
		"CombotRN.placeHolderList[200]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:RightElbow_Control.scaleX" 
		"CombotRN.placeHolderList[201]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:RightElbow_Control.scaleY" 
		"CombotRN.placeHolderList[202]" ""
		5 4 "CombotRN" "|Rig:Controls|Rig:RootMotion_Control|Rig:RightElbow_Control.scaleZ" 
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
	setAttr ".ssn" -type "string" "";
	setAttr ".tbi" no;
	setAttr ".rac" yes;
	setAttr ".tri" yes;
	setAttr ".cns" -type "string" "NURBS";
	setAttr ".ean" yes;
	setAttr ".qim" -type "string" "resample";
	setAttr -s 3 ".ac";
	setAttr ".ac[0].acn" -type "string" "LeftSide_Idle";
	setAttr ".ac[0].acs" 24;
	setAttr ".ac[0].ace" 48;
	setAttr ".ac[1].acn" -type "string" "Switch_Sides";
	setAttr ".ac[1].acs" 48;
	setAttr ".ac[1].ace" 72;
	setAttr ".ac[2].acn" -type "string" "RightSide_Idle";
	setAttr ".ac[2].acs" 72;
	setAttr ".ac[2].ace" 96;
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
createNode reference -n "sharedReferenceNode";
	rename -uid "CDBA51A9-D14C-AE07-B0E5-0E8368D689F7";
	setAttr ".ed" -type "dataReferenceEdits" 
		"sharedReferenceNode";
createNode polyCube -n "polyCube1";
	rename -uid "EC436330-5B43-D53A-33F2-52AD0D75BA6F";
	setAttr ".w" 100;
	setAttr ".h" 200;
	setAttr ".d" 100;
	setAttr ".cuv" 4;
createNode nodeGraphEditorInfo -n "hyperShadePrimaryNodeEditorSavedTabsInfo";
	rename -uid "6D497028-0344-EAFE-4029-73AA74017E71";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -336.90474851737002 -296.42855964955874 ;
	setAttr ".tgi[0].vh" -type "double2" 322.61903479931897 308.33332108126797 ;
createNode animCurveTA -n "RootMotion_Control_rotateX";
	rename -uid "6F88995C-AD49-9645-CA0F-229EA4D0275A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 24 0 48 0 72 0 96 0;
	setAttr -s 5 ".kit[1:4]"  1 18 18 18;
	setAttr -s 5 ".kot[1:4]"  1 18 18 18;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTA -n "RootMotion_Control_rotateY";
	rename -uid "CB18B68F-0F44-ADF1-D5AA-66A5240BB410";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 24 0 48 0 72 0 96 0;
	setAttr -s 5 ".kit[1:4]"  1 18 18 18;
	setAttr -s 5 ".kot[1:4]"  1 18 18 18;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTA -n "RootMotion_Control_rotateZ";
	rename -uid "A92E55E4-244D-8DE1-CD7B-F79F242C57B7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 24 0 48 0 72 0 96 0;
	setAttr -s 5 ".kit[1:4]"  1 18 18 18;
	setAttr -s 5 ".kot[1:4]"  1 18 18 18;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTA -n "Hips_Control_rotateX";
	rename -uid "A985B167-FD4D-8F5E-CCCC-E1964E2FD880";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  12 0 24 4.2308471791829421 31 4.2308471791829421
		 40 4.2308471791829421 48 4.2308471791829421 54 13.481244152433588 72 5.2322087465185314
		 80 5.2322087465185314 88 5.2322087465185314 96 5.2322087465185314;
	setAttr -s 10 ".kit[1:9]"  1 18 18 18 18 18 18 18 
		18;
	setAttr -s 10 ".kot[1:9]"  1 18 18 18 18 18 18 18 
		18;
	setAttr -s 10 ".kix[1:9]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".kiy[1:9]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 10 ".kox[1:9]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".koy[1:9]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Hips_Control_rotateY";
	rename -uid "620C501A-D546-1164-9359-C5AA2084CA6E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  12 0 24 158.43370655166416 31 158.43370655166416
		 40 158.43370655166416 48 158.43370655166416 54 180.27053428747953 72 212.84520594297726
		 80 212.84520594297726 88 212.84520594297726 96 212.84520594297726;
	setAttr -s 10 ".kit[1:9]"  1 18 18 18 18 18 18 18 
		18;
	setAttr -s 10 ".kot[1:9]"  1 18 18 18 18 18 18 18 
		18;
	setAttr -s 10 ".kix[1:9]"  1 1 1 1 0.72512257099151611 1 1 1 1;
	setAttr -s 10 ".kiy[1:9]"  0 0 0 0 0.68861979246139526 0 0 0 0;
	setAttr -s 10 ".kox[1:9]"  1 1 1 1 0.72512263059616089 1 1 1 1;
	setAttr -s 10 ".koy[1:9]"  0 0 0 0 0.68861979246139526 0 0 0 0;
createNode animCurveTA -n "Hips_Control_rotateZ";
	rename -uid "6C72826B-FE44-B858-B783-F888CB989C57";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  12 0 24 -8.5194957711409458 31 -8.5194957711409458
		 40 -8.5194957711409458 48 -8.5194957711409458 54 3.9531090370559676 72 11.354044066619229
		 80 11.354044066619229 88 11.354044066619229 96 11.354044066619229;
	setAttr -s 10 ".kit[1:9]"  1 18 18 18 18 18 18 18 
		18;
	setAttr -s 10 ".kot[1:9]"  1 18 18 18 18 18 18 18 
		18;
	setAttr -s 10 ".kix[1:9]"  1 1 1 1 0.94477999210357666 1 1 1 1;
	setAttr -s 10 ".kiy[1:9]"  0 0 0 0 0.32770517468452454 0 0 0 0;
	setAttr -s 10 ".kox[1:9]"  1 1 1 1 0.94478005170822144 1 1 1 1;
	setAttr -s 10 ".koy[1:9]"  0 0 0 0 0.32770517468452454 0 0 0 0;
createNode animCurveTA -n "Spine1_Control_rotateX";
	rename -uid "7D76EBE3-5246-B667-C565-4EBFB5F4E020";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  12 0 24 -6.4471732874929391 48 -6.4471732874929391
		 53 -15.309847982168998 60 -4.7893655333990139 72 8.2608886292515713 96 8.2608886292515713;
	setAttr -s 7 ".kit[1:6]"  1 18 18 18 18 18;
	setAttr -s 7 ".kot[1:6]"  1 18 18 18 18 18;
	setAttr -s 7 ".kix[1:6]"  1 1 1 0.88734513521194458 1 1;
	setAttr -s 7 ".kiy[1:6]"  0 0 0 0.46110591292381287 0 0;
	setAttr -s 7 ".kox[1:6]"  1 1 1 0.8873450756072998 1 1;
	setAttr -s 7 ".koy[1:6]"  0 0 0 0.46110588312149048 0 0;
createNode animCurveTA -n "Spine1_Control_rotateY";
	rename -uid "CD2748F4-184D-B150-FD6C-27AFE7BBB42E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  12 0 24 0.94144380650603088 48 0.94144380650603088
		 53 -16.802682025767602 60 17.24647623514419 72 2.3182295005585059 96 2.3182295005585059;
	setAttr -s 7 ".kit[1:6]"  1 18 18 18 18 18;
	setAttr -s 7 ".kot[1:6]"  1 18 18 18 18 18;
	setAttr -s 7 ".kix[1:6]"  1 1 1 1 1 1;
	setAttr -s 7 ".kiy[1:6]"  0 0 0 0 0 0;
	setAttr -s 7 ".kox[1:6]"  1 1 1 1 1 1;
	setAttr -s 7 ".koy[1:6]"  0 0 0 0 0 0;
createNode animCurveTA -n "Spine1_Control_rotateZ";
	rename -uid "C49D5BBA-B249-2FB6-B489-BD9FE2A6C21F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  12 0 24 4.0383985514161953 48 4.0383985514161953
		 53 14.296750974587679 60 -12.02617573488773 72 -7.174374910616252 96 -7.174374910616252;
	setAttr -s 7 ".kit[1:6]"  1 18 18 18 18 18;
	setAttr -s 7 ".kot[1:6]"  1 18 18 18 18 18;
	setAttr -s 7 ".kix[1:6]"  1 1 1 1 1 1;
	setAttr -s 7 ".kiy[1:6]"  0 0 0 0 0 0;
	setAttr -s 7 ".kox[1:6]"  1 1 1 1 1 1;
	setAttr -s 7 ".koy[1:6]"  0 0 0 0 0 0;
createNode animCurveTA -n "Spine2_Control_rotateX";
	rename -uid "BA5E80FA-3845-7D15-4522-5FB4B919705E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 24 -6.4471732874929391 48 -6.4471732874929391
		 72 -6.4471732874929391 96 -6.4471732874929391;
	setAttr -s 5 ".kit[1:4]"  1 18 18 18;
	setAttr -s 5 ".kot[1:4]"  1 18 18 18;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTA -n "Spine2_Control_rotateY";
	rename -uid "BC8BC984-C543-28B1-1B56-A790BAE4BAFA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 24 0.94144380650603088 48 0.94144380650603088
		 72 0.94144380650603088 96 0.94144380650603088;
	setAttr -s 5 ".kit[1:4]"  1 18 18 18;
	setAttr -s 5 ".kot[1:4]"  1 18 18 18;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTA -n "Spine2_Control_rotateZ";
	rename -uid "5BE15BA3-9A41-DB18-4678-23ACBEED0941";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 24 4.0383985514161953 48 4.0383985514161953
		 72 4.0383985514161953 96 4.0383985514161953;
	setAttr -s 5 ".kit[1:4]"  1 18 18 18;
	setAttr -s 5 ".kot[1:4]"  1 18 18 18;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTA -n "LeftClav_Control_rotateX";
	rename -uid "EA383701-9D4A-8479-DE3B-57ABE7A25C38";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 24 0 48 0 72 0 96 0;
	setAttr -s 5 ".kit[1:4]"  1 18 18 18;
	setAttr -s 5 ".kot[1:4]"  1 18 18 18;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTA -n "LeftClav_Control_rotateY";
	rename -uid "CB52AAE1-B046-6933-5C62-72AECF674FBA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 24 0 48 0 72 0 96 0;
	setAttr -s 5 ".kit[1:4]"  1 18 18 18;
	setAttr -s 5 ".kot[1:4]"  1 18 18 18;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTA -n "LeftClav_Control_rotateZ";
	rename -uid "36FD3B47-7F42-AB80-5EBA-76AFBB3CFD12";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 24 0 48 0 72 0 96 0;
	setAttr -s 5 ".kit[1:4]"  1 18 18 18;
	setAttr -s 5 ".kot[1:4]"  1 18 18 18;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTA -n "LeftShoulder_Control_rotateX";
	rename -uid "B6979968-6D4F-366F-D004-C7939FE59FF4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 24 0 48 0 72 0 96 0;
	setAttr -s 5 ".kit[1:4]"  1 18 18 18;
	setAttr -s 5 ".kot[1:4]"  1 18 18 18;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTA -n "LeftShoulder_Control_rotateY";
	rename -uid "EA2B0F7D-C44C-E894-C796-BD88FC789AD5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 24 0 48 0 72 0 96 0;
	setAttr -s 5 ".kit[1:4]"  1 18 18 18;
	setAttr -s 5 ".kot[1:4]"  1 18 18 18;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTA -n "LeftShoulder_Control_rotateZ";
	rename -uid "70EED2A1-E345-73FA-F444-B8B20559B4BC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 24 0 48 0 72 0 96 0;
	setAttr -s 5 ".kit[1:4]"  1 18 18 18;
	setAttr -s 5 ".kot[1:4]"  1 18 18 18;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTA -n "Neck_Control_rotateX";
	rename -uid "1B0D71F3-1148-D162-DFFB-B7A356EB2A2A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 24 -20.411163562806074 48 -20.411163562806074
		 56 0 72 -14.47914030987423 96 -14.47914030987423;
	setAttr -s 6 ".kit[1:5]"  1 18 18 18 18;
	setAttr -s 6 ".kot[1:5]"  1 18 18 18 18;
	setAttr -s 6 ".kix[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".kiy[1:5]"  0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "Neck_Control_rotateY";
	rename -uid "DC951A31-514B-E692-A0E6-2FBE101E27DF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 24 -3.1934069691265923 48 -3.1934069691265923
		 56 0 72 0 96 0;
	setAttr -s 6 ".kit[1:5]"  1 18 18 18 18;
	setAttr -s 6 ".kot[1:5]"  1 18 18 18 18;
	setAttr -s 6 ".kix[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".kiy[1:5]"  0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "Neck_Control_rotateZ";
	rename -uid "9C2978B4-984E-7A9B-1F43-0EB85D0B36A5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 24 9.1890248342006036 48 9.1890248342006036
		 56 0 72 0 96 0;
	setAttr -s 6 ".kit[1:5]"  1 18 18 18 18;
	setAttr -s 6 ".kot[1:5]"  1 18 18 18 18;
	setAttr -s 6 ".kix[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".kiy[1:5]"  0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTA -n "Head_Control_rotateX";
	rename -uid "88704CD7-1E4F-C585-97A4-3283DC6673B6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  12 0 24 35.763000564809609 48 35.763000564809609
		 56 0 60 3.2192437755406371 72 -14.73741765958272 96 -14.73741765958272;
	setAttr -s 7 ".kit[1:6]"  1 18 18 18 18 18;
	setAttr -s 7 ".kot[1:6]"  1 18 18 18 18 18;
	setAttr -s 7 ".kix[1:6]"  1 1 1 1 1 1;
	setAttr -s 7 ".kiy[1:6]"  0 0 0 0 0 0;
	setAttr -s 7 ".kox[1:6]"  1 1 1 1 1 1;
	setAttr -s 7 ".koy[1:6]"  0 0 0 0 0 0;
createNode animCurveTA -n "Head_Control_rotateY";
	rename -uid "DFF77E08-5749-17DE-6C25-2FAD1148B12C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  12 0 24 -70.261413649611455 48 -70.261413649611455
		 56 0 60 67.048716081611374 72 64.895110955400739 96 64.895110955400739;
	setAttr -s 7 ".kit[1:6]"  1 18 18 18 18 18;
	setAttr -s 7 ".kot[1:6]"  1 18 18 18 18 18;
	setAttr -s 7 ".kix[1:6]"  1 1 0.20423856377601624 1 1 1;
	setAttr -s 7 ".kiy[1:6]"  0 0 0.97892111539840698 0 0 0;
	setAttr -s 7 ".kox[1:6]"  1 1 0.20423857867717743 1 1 1;
	setAttr -s 7 ".koy[1:6]"  0 0 0.97892111539840698 0 0 0;
createNode animCurveTA -n "Head_Control_rotateZ";
	rename -uid "2AD2AD55-F240-F1EC-BA35-44B4718D988C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  12 0 24 -47.36231811387416 48 -47.36231811387416
		 56 0 60 8.5251224163472283 72 -19.889758010152338 96 -19.889758010152338;
	setAttr -s 7 ".kit[1:6]"  1 18 18 18 18 18;
	setAttr -s 7 ".kot[1:6]"  1 18 18 18 18 18;
	setAttr -s 7 ".kix[1:6]"  1 1 0.45616108179092407 1 1 1;
	setAttr -s 7 ".kiy[1:6]"  0 0 0.88989716768264771 0 0 0;
	setAttr -s 7 ".kox[1:6]"  1 1 0.45616111159324646 1 1 1;
	setAttr -s 7 ".koy[1:6]"  0 0 0.88989722728729248 0 0 0;
createNode animCurveTA -n "RightClav_Control_rotateX";
	rename -uid "C967C288-FC43-DE83-AD66-2CA943E24349";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 24 0 48 0 72 0 96 0;
	setAttr -s 5 ".kit[1:4]"  1 18 18 18;
	setAttr -s 5 ".kot[1:4]"  1 18 18 18;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTA -n "RightClav_Control_rotateY";
	rename -uid "BA53AAEB-CA4D-AD9E-0ABE-62BD654F1A3E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 24 0 48 0 72 0 96 0;
	setAttr -s 5 ".kit[1:4]"  1 18 18 18;
	setAttr -s 5 ".kot[1:4]"  1 18 18 18;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTA -n "RightClav_Control_rotateZ";
	rename -uid "C83DA36B-B448-557A-B574-FAA5ACC8A8AE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 24 0 48 0 72 0 96 0;
	setAttr -s 5 ".kit[1:4]"  1 18 18 18;
	setAttr -s 5 ".kot[1:4]"  1 18 18 18;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTA -n "RightShoulder_Control_rotateX";
	rename -uid "F2120DA3-5F41-3E0D-73F1-1FAB0261EA2A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 24 0 48 0 72 0 96 0;
	setAttr -s 5 ".kit[1:4]"  1 18 18 18;
	setAttr -s 5 ".kot[1:4]"  1 18 18 18;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTA -n "RightShoulder_Control_rotateY";
	rename -uid "CF2D82AC-9D47-503B-CCC8-AA9B0E11C3AB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 24 0 48 0 72 0 96 0;
	setAttr -s 5 ".kit[1:4]"  1 18 18 18;
	setAttr -s 5 ".kot[1:4]"  1 18 18 18;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTA -n "RightShoulder_Control_rotateZ";
	rename -uid "A77A3E94-8F4A-E300-8B6D-AB81057E22B3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 24 0 48 0 72 0 96 0;
	setAttr -s 5 ".kit[1:4]"  1 18 18 18;
	setAttr -s 5 ".kot[1:4]"  1 18 18 18;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTA -n "LeftElbow_Control_rotateX";
	rename -uid "B6F4F9C7-0E4D-9733-8579-C2BFD45A9825";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 24 0 48 0 72 0 96 0;
	setAttr -s 5 ".kit[1:4]"  1 18 18 18;
	setAttr -s 5 ".kot[1:4]"  1 18 18 18;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTA -n "LeftElbow_Control_rotateY";
	rename -uid "0A7C0292-1741-E3D0-9C5F-719F3B3C57BF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 24 0 48 0 72 0 96 0;
	setAttr -s 5 ".kit[1:4]"  1 18 18 18;
	setAttr -s 5 ".kot[1:4]"  1 18 18 18;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTA -n "LeftElbow_Control_rotateZ";
	rename -uid "C48F0FC7-A647-1559-BDAF-CC81453F7B46";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 24 0 48 0 72 0 96 0;
	setAttr -s 5 ".kit[1:4]"  1 18 18 18;
	setAttr -s 5 ".kot[1:4]"  1 18 18 18;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTA -n "LeftFoot_Control_rotateX";
	rename -uid "B2BF31BD-FF4E-3E8C-8CDF-37A122011879";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  12 51.020546659404474 24 0 48 0 52 0 56 31.569069277310046
		 60 0 72 0 96 0;
	setAttr -s 8 ".kit[1:7]"  1 18 1 18 1 18 18;
	setAttr -s 8 ".kot[1:7]"  1 18 1 18 1 18 18;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "LeftFoot_Control_rotateY";
	rename -uid "2EB68972-C343-CE1A-A63A-9B8CA867EF5C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  12 0 24 158.46300878103276 48 158.46300878103276
		 52 158.46300878103276 60 215.90845428382536 72 215.90845428382536 96 215.90845428382536;
	setAttr -s 7 ".kit[1:6]"  1 18 1 1 18 18;
	setAttr -s 7 ".kot[1:6]"  1 18 1 1 18 18;
	setAttr -s 7 ".kix[1:6]"  1 1 1 1 1 1;
	setAttr -s 7 ".kiy[1:6]"  0 0 0 0 0 0;
	setAttr -s 7 ".kox[1:6]"  1 1 1 1 1 1;
	setAttr -s 7 ".koy[1:6]"  0 0 0 0 0 0;
createNode animCurveTA -n "LeftFoot_Control_rotateZ";
	rename -uid "3E9EA794-B549-647C-50C7-478F17FD5496";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  12 0 24 0 48 0 52 0 60 0 72 0 96 0;
	setAttr -s 7 ".kit[1:6]"  1 18 1 1 18 18;
	setAttr -s 7 ".kot[1:6]"  1 18 1 1 18 18;
	setAttr -s 7 ".kix[1:6]"  1 1 1 1 1 1;
	setAttr -s 7 ".kiy[1:6]"  0 0 0 0 0 0;
	setAttr -s 7 ".kox[1:6]"  1 1 1 1 1 1;
	setAttr -s 7 ".koy[1:6]"  0 0 0 0 0 0;
createNode animCurveTA -n "LeftKnee_Control_rotateX";
	rename -uid "656B5E6D-3040-1211-C814-C297D9AD22D7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 24 0 48 0 72 0 96 0;
	setAttr -s 5 ".kit[1:4]"  1 18 18 18;
	setAttr -s 5 ".kot[1:4]"  1 18 18 18;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTA -n "LeftKnee_Control_rotateY";
	rename -uid "5FDF01F6-C242-8F7F-E1AD-AE977899FA3E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 24 0 48 0 72 0 96 0;
	setAttr -s 5 ".kit[1:4]"  1 18 18 18;
	setAttr -s 5 ".kot[1:4]"  1 18 18 18;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTA -n "LeftKnee_Control_rotateZ";
	rename -uid "23BB2B62-3149-4F17-711F-F497531100E4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 24 0 48 0 72 0 96 0;
	setAttr -s 5 ".kit[1:4]"  1 18 18 18;
	setAttr -s 5 ".kot[1:4]"  1 18 18 18;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTA -n "LeftToes_Control_rotateX";
	rename -uid "3D229689-4A4D-41F9-0358-66ACCF3322A4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 24 0 48 0 72 0 96 0;
	setAttr -s 5 ".kit[1:4]"  1 18 18 18;
	setAttr -s 5 ".kot[1:4]"  1 18 18 18;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTA -n "LeftToes_Control_rotateY";
	rename -uid "38A42DDE-CA4D-8483-0716-F5AFF7E9E7D1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 24 0 48 0 72 0 96 0;
	setAttr -s 5 ".kit[1:4]"  1 18 18 18;
	setAttr -s 5 ".kot[1:4]"  1 18 18 18;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTA -n "LeftToes_Control_rotateZ";
	rename -uid "8EDB9244-EA4B-A486-372A-459886B6D7C1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 24 0 48 0 72 0 96 0;
	setAttr -s 5 ".kit[1:4]"  1 18 18 18;
	setAttr -s 5 ".kot[1:4]"  1 18 18 18;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTA -n "LeftHand_Control_rotateX";
	rename -uid "27CC9B31-FB41-D9B5-CF15-B9AC25435DDB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  12 0 24 150.88381440645679 31 150.88381440645679
		 40 150.88381440645679 48 150.88381440645679 72 96.075258552781747 80 96.075258552781747
		 88 96.075258552781747 96 96.075258552781747;
	setAttr -s 9 ".kit[1:8]"  1 18 18 18 18 18 18 18;
	setAttr -s 9 ".kot[1:8]"  1 18 18 18 18 18 18 18;
	setAttr -s 9 ".kix[1:8]"  1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[1:8]"  0 0 0 0 0 0 0 0;
	setAttr -s 9 ".kox[1:8]"  1 1 1 1 1 1 1 1;
	setAttr -s 9 ".koy[1:8]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LeftHand_Control_rotateY";
	rename -uid "A2A9D087-8E46-B8E2-D26F-DDA563F8B33A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  12 0 24 31.445620100926067 31 31.445620100926067
		 40 31.445620100926067 48 31.445620100926067 72 8.8947525539895853 80 8.8947525539895853
		 88 8.8947525539895853 96 8.8947525539895853;
	setAttr -s 9 ".kit[1:8]"  1 18 18 18 18 18 18 18;
	setAttr -s 9 ".kot[1:8]"  1 18 18 18 18 18 18 18;
	setAttr -s 9 ".kix[1:8]"  1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[1:8]"  0 0 0 0 0 0 0 0;
	setAttr -s 9 ".kox[1:8]"  1 1 1 1 1 1 1 1;
	setAttr -s 9 ".koy[1:8]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LeftHand_Control_rotateZ";
	rename -uid "38369481-F64D-C75A-9918-9693398DD3CA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  12 0 24 261.961037587394 31 261.961037587394
		 40 261.961037587394 48 261.961037587394 72 277.27437259809761 80 277.27437259809761
		 88 277.27437259809761 96 277.27437259809761;
	setAttr -s 9 ".kit[1:8]"  1 18 18 18 18 18 18 18;
	setAttr -s 9 ".kot[1:8]"  1 18 18 18 18 18 18 18;
	setAttr -s 9 ".kix[1:8]"  1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[1:8]"  0 0 0 0 0 0 0 0;
	setAttr -s 9 ".kox[1:8]"  1 1 1 1 1 1 1 1;
	setAttr -s 9 ".koy[1:8]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RIghtFoot_Control_rotateX";
	rename -uid "AF7D635E-EC44-3417-160D-87976F18A45E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  12 51.112117047732667 24 0 48 0 61 0 65 13.445917675922541
		 67 0 72 0 96 0;
	setAttr -s 8 ".kit[1:7]"  1 18 1 18 1 18 18;
	setAttr -s 8 ".kot[1:7]"  1 18 1 18 1 18 18;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "RIghtFoot_Control_rotateY";
	rename -uid "27A8EE21-BA48-7ECF-B5E9-5A955F6044AD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  12 0 24 134.16579015486911 48 134.16579015486911
		 61 134.16579015486911 65 191.9854811254277 67 207.29362621957685 72 207.29362621957685
		 96 207.29362621957685;
	setAttr -s 8 ".kit[1:7]"  1 18 1 18 1 18 18;
	setAttr -s 8 ".kot[1:7]"  1 18 1 18 1 18 18;
	setAttr -s 8 ".kix[1:7]"  1 1 1 0.19222259521484375 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0.98135131597518921 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 1 1 0.19222259521484375 1 1 1;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0.98135131597518921 0 0 0;
createNode animCurveTA -n "RIghtFoot_Control_rotateZ";
	rename -uid "7E95D550-F64B-7130-98B4-B0B7206305FC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  12 0 24 0 48 0 61 0 65 6.0283272831335193
		 67 0 72 0 96 0;
	setAttr -s 8 ".kit[1:7]"  1 18 1 18 1 18 18;
	setAttr -s 8 ".kot[1:7]"  1 18 1 18 1 18 18;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "RightToes_Control_rotateX";
	rename -uid "DB509740-1F42-4451-96FB-498D9646A3F1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 24 0 48 0 72 0 96 0;
	setAttr -s 5 ".kit[1:4]"  1 18 18 18;
	setAttr -s 5 ".kot[1:4]"  1 18 18 18;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTA -n "RightToes_Control_rotateY";
	rename -uid "AAFB579A-8D4D-8370-3A02-96815CD06968";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 24 0 48 0 72 0 96 0;
	setAttr -s 5 ".kit[1:4]"  1 18 18 18;
	setAttr -s 5 ".kot[1:4]"  1 18 18 18;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTA -n "RightToes_Control_rotateZ";
	rename -uid "B222726B-804B-DB34-C906-F3845BE9E201";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 24 0 48 0 72 0 96 0;
	setAttr -s 5 ".kit[1:4]"  1 18 18 18;
	setAttr -s 5 ".kot[1:4]"  1 18 18 18;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTA -n "nurbsCircle1_rotateX";
	rename -uid "0A9ABFBC-BB45-E2AC-A1F7-2B8F8B3BC292";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 24 0 48 0 72 0 96 0;
	setAttr -s 5 ".kit[1:4]"  1 18 18 18;
	setAttr -s 5 ".kot[1:4]"  1 18 18 18;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTA -n "nurbsCircle1_rotateY";
	rename -uid "B75668E4-EC40-9FC9-EF47-78883F8B1CDE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 24 0 48 0 72 0 96 0;
	setAttr -s 5 ".kit[1:4]"  1 18 18 18;
	setAttr -s 5 ".kot[1:4]"  1 18 18 18;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTA -n "nurbsCircle1_rotateZ";
	rename -uid "5598A25E-F241-D286-EE2D-94839C316E46";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 24 0 48 0 72 0 96 0;
	setAttr -s 5 ".kit[1:4]"  1 18 18 18;
	setAttr -s 5 ".kot[1:4]"  1 18 18 18;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTA -n "RightElbow_Control_rotateX";
	rename -uid "AEA5185C-0849-ABB1-CACD-9B955F3EE399";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 24 0 48 0 72 0 96 0;
	setAttr -s 5 ".kit[1:4]"  1 18 18 18;
	setAttr -s 5 ".kot[1:4]"  1 18 18 18;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTA -n "RightElbow_Control_rotateY";
	rename -uid "54F97582-944A-ACF2-2E63-A098831DD527";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 24 0 48 0 72 0 96 0;
	setAttr -s 5 ".kit[1:4]"  1 18 18 18;
	setAttr -s 5 ".kot[1:4]"  1 18 18 18;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTA -n "RightElbow_Control_rotateZ";
	rename -uid "64E7B345-F94F-7812-E456-F7AE46072620";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 24 0 48 0 72 0 96 0;
	setAttr -s 5 ".kit[1:4]"  1 18 18 18;
	setAttr -s 5 ".kot[1:4]"  1 18 18 18;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTA -n "RightHand_Control_rotateX";
	rename -uid "7E8493F2-FE44-90F0-3506-09B5B8D24A1C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  12 -88.153020054636372 24 87.440372886090728
		 31 -96.670071953380273 40 -96.670071953380273 48 -96.670071953380273 72 86.012921251566695
		 80 86.012921251566695 88 86.012921251566695 96 86.012921251566695;
	setAttr -s 9 ".kit[1:8]"  1 18 18 18 18 18 18 18;
	setAttr -s 9 ".kot[1:8]"  1 18 18 18 18 18 18 18;
	setAttr -s 9 ".kix[1:8]"  1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[1:8]"  0 0 0 0 0 0 0 0;
	setAttr -s 9 ".kox[1:8]"  1 1 1 1 1 1 1 1;
	setAttr -s 9 ".koy[1:8]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RightHand_Control_rotateY";
	rename -uid "7FEAECB7-7041-8A74-1422-9AAA994B8E11";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  12 0 24 -43.805257660221102 31 216.25217703316352
		 40 216.25217703316352 48 216.25217703316352 72 261.79780535062747 80 261.79780535062747
		 88 261.79780535062747 96 261.79780535062747;
	setAttr -s 9 ".kit[1:8]"  1 18 18 18 18 18 18 18;
	setAttr -s 9 ".kot[1:8]"  1 18 18 18 18 18 18 18;
	setAttr -s 9 ".kix[1:8]"  1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[1:8]"  0 0 0 0 0 0 0 0;
	setAttr -s 9 ".kox[1:8]"  1 1 1 1 1 1 1 1;
	setAttr -s 9 ".koy[1:8]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RightHand_Control_rotateZ";
	rename -uid "F0A25458-1B4B-4552-CC80-8FABCDBA3091";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  12 0 24 181.77241201039189 31 -8.8503688855671712
		 40 -8.8503688855671712 48 -8.8503688855671712 72 -161.69068660247265 80 -161.69068660247265
		 88 -161.69068660247265 96 -161.69068660247265;
	setAttr -s 9 ".kit[1:8]"  1 18 18 18 18 18 18 18;
	setAttr -s 9 ".kot[1:8]"  1 18 18 18 18 18 18 18;
	setAttr -s 9 ".kix[1:8]"  1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[1:8]"  0 0 0 0 0 0 0 0;
	setAttr -s 9 ".kox[1:8]"  1 1 1 1 1 1 1 1;
	setAttr -s 9 ".koy[1:8]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "ambientLight1_rotateX";
	rename -uid "8A8A5227-4741-2093-FB4D-ACA23945280B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 24 0 48 0 72 0 96 0;
	setAttr -s 5 ".kit[1:4]"  1 18 18 18;
	setAttr -s 5 ".kot[1:4]"  1 18 18 18;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTA -n "ambientLight1_rotateY";
	rename -uid "EF847513-7A45-2512-181A-44B40044D022";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 24 0 48 0 72 0 96 0;
	setAttr -s 5 ".kit[1:4]"  1 18 18 18;
	setAttr -s 5 ".kot[1:4]"  1 18 18 18;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTA -n "ambientLight1_rotateZ";
	rename -uid "0489347D-7C4C-4B7D-9B24-3C8356E29FC6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 24 0 48 0 72 0 96 0;
	setAttr -s 5 ".kit[1:4]"  1 18 18 18;
	setAttr -s 5 ".kot[1:4]"  1 18 18 18;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTA -n "pCube1_rotateX";
	rename -uid "57C948DD-6D4D-F512-91EB-058C981D7B56";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 0;
createNode animCurveTA -n "pCube1_rotateY";
	rename -uid "21F7ECE8-184B-AB9D-D2EE-46A5E4C71BD8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 0;
createNode animCurveTA -n "pCube1_rotateZ";
	rename -uid "1D3DED7A-9946-A55E-2260-A0B8020429F5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 0;
createNode animCurveTU -n "ambientLight1_visibility";
	rename -uid "1119116A-304C-8484-A965-FAA507D8BA0E";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1 24 1 48 1 72 1 96 1;
	setAttr -s 5 ".kit[0:4]"  9 1 9 9 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
createNode animCurveTL -n "ambientLight1_translateX";
	rename -uid "652BB65E-DF4E-1F2B-FAC4-0397230A830B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 24 0 48 0 72 0 96 0;
	setAttr -s 5 ".kit[1:4]"  1 18 18 18;
	setAttr -s 5 ".kot[1:4]"  1 18 18 18;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTL -n "ambientLight1_translateY";
	rename -uid "E0E68C21-F548-BDE0-7843-5BB1B444F59D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 24 0 48 0 72 0 96 0;
	setAttr -s 5 ".kit[1:4]"  1 18 18 18;
	setAttr -s 5 ".kot[1:4]"  1 18 18 18;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTL -n "ambientLight1_translateZ";
	rename -uid "C5814B82-C04E-DF7B-08C8-55A4CF7777D7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 24 0 48 0 72 0 96 0;
	setAttr -s 5 ".kit[1:4]"  1 18 18 18;
	setAttr -s 5 ".kot[1:4]"  1 18 18 18;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTU -n "ambientLight1_scaleX";
	rename -uid "CBD7FF7B-344C-D0F5-B195-68885EED71B4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1 24 1 48 1 72 1 96 1;
	setAttr -s 5 ".kit[1:4]"  1 18 18 18;
	setAttr -s 5 ".kot[1:4]"  1 18 18 18;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTU -n "ambientLight1_scaleY";
	rename -uid "13A5BCAD-6049-D9CA-48CE-659B5D93DB1C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1 24 1 48 1 72 1 96 1;
	setAttr -s 5 ".kit[1:4]"  1 18 18 18;
	setAttr -s 5 ".kot[1:4]"  1 18 18 18;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTU -n "ambientLight1_scaleZ";
	rename -uid "F39E47BA-4444-0C7F-15D2-539DFCDF2B0C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1 24 1 48 1 72 1 96 1;
	setAttr -s 5 ".kit[1:4]"  1 18 18 18;
	setAttr -s 5 ".kot[1:4]"  1 18 18 18;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTU -n "RootMotion_Control_visibility";
	rename -uid "F9863135-354D-5D12-2A4E-CA8F612003E6";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1 24 1 48 1 72 1 96 1;
	setAttr -s 5 ".kit[0:4]"  9 1 9 9 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
createNode animCurveTL -n "RootMotion_Control_translateX";
	rename -uid "9106F97F-134D-0FE2-0962-DAA0C8373842";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 24 0 48 0 72 0 96 0;
	setAttr -s 5 ".kit[1:4]"  1 18 18 18;
	setAttr -s 5 ".kot[1:4]"  1 18 18 18;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTL -n "RootMotion_Control_translateY";
	rename -uid "ECFF9F75-8741-7266-7568-2986AD1DFCFE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 24 0 48 0 72 0 96 0;
	setAttr -s 5 ".kit[1:4]"  1 18 18 18;
	setAttr -s 5 ".kot[1:4]"  1 18 18 18;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTL -n "RootMotion_Control_translateZ";
	rename -uid "279CC907-CD43-ACE2-C310-49988566C8A0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 24 0 48 0 72 0 96 0;
	setAttr -s 5 ".kit[1:4]"  1 18 18 18;
	setAttr -s 5 ".kot[1:4]"  1 18 18 18;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTU -n "RootMotion_Control_scaleX";
	rename -uid "E860142A-A74A-2CB6-BE57-C9856084948A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1 24 1 48 1 72 1 96 1;
	setAttr -s 5 ".kit[1:4]"  1 18 18 18;
	setAttr -s 5 ".kot[1:4]"  1 18 18 18;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTU -n "RootMotion_Control_scaleY";
	rename -uid "6D31E214-D34A-3FFC-CE7B-5CB4B231B0AE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1 24 1 48 1 72 1 96 1;
	setAttr -s 5 ".kit[1:4]"  1 18 18 18;
	setAttr -s 5 ".kot[1:4]"  1 18 18 18;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTU -n "RootMotion_Control_scaleZ";
	rename -uid "053AC3E5-444B-37BC-735F-B68656F89D8C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1 24 1 48 1 72 1 96 1;
	setAttr -s 5 ".kit[1:4]"  1 18 18 18;
	setAttr -s 5 ".kot[1:4]"  1 18 18 18;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTU -n "RIghtFoot_Control_visibility";
	rename -uid "3007CEE6-3B43-FB99-D99B-F6B05B012CFE";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  12 1 24 1 48 1 61 1 67 1 72 1 96 1;
	setAttr -s 7 ".kit[0:6]"  9 1 9 1 1 9 9;
	setAttr -s 7 ".kix[1:6]"  1 1 1 1 1 1;
	setAttr -s 7 ".kiy[1:6]"  0 0 0 0 0 0;
createNode animCurveTL -n "RIghtFoot_Control_translateX";
	rename -uid "6D80E1B4-0A49-EC6C-CB75-429FDD99C783";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  12 0 24 52.738461932577856 48 52.738461932577856
		 61 52.738461932577856 67 54.951861037926626 72 54.951861037926626 96 54.951861037926626;
	setAttr -s 7 ".kit[1:6]"  1 18 1 1 18 18;
	setAttr -s 7 ".kot[1:6]"  1 18 1 1 18 18;
	setAttr -s 7 ".kix[1:6]"  1 1 1 1 1 1;
	setAttr -s 7 ".kiy[1:6]"  0 0 0 0 0 0;
	setAttr -s 7 ".kox[1:6]"  1 1 1 1 1 1;
	setAttr -s 7 ".koy[1:6]"  0 0 0 0 0 0;
createNode animCurveTL -n "RIghtFoot_Control_translateY";
	rename -uid "BE36716C-184B-ED5A-24C4-15ADFF536DF9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  12 14.58956904872737 24 0 48 0 61 0 65 8.9181644863926266
		 67 0 72 0 96 0;
	setAttr -s 8 ".kit[1:7]"  1 18 1 18 1 18 18;
	setAttr -s 8 ".kot[1:7]"  1 18 1 18 1 18 18;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "RIghtFoot_Control_translateZ";
	rename -uid "6307F184-5E40-89FE-112B-4FA92409B3F8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  12 -71.462225487926503 24 36.425150658679939
		 48 36.425150658679939 61 36.425150658679939 67 -7.2582006554326206 72 -7.2582006554326206
		 96 -7.2582006554326206;
	setAttr -s 7 ".kit[1:6]"  1 18 1 1 18 18;
	setAttr -s 7 ".kot[1:6]"  1 18 1 1 18 18;
	setAttr -s 7 ".kix[1:6]"  1 1 1 1 1 1;
	setAttr -s 7 ".kiy[1:6]"  0 0 0 0 0 0;
	setAttr -s 7 ".kox[1:6]"  1 1 1 1 1 1;
	setAttr -s 7 ".koy[1:6]"  0 0 0 0 0 0;
createNode animCurveTU -n "RIghtFoot_Control_scaleX";
	rename -uid "7406FF81-1149-B4E3-00C2-1FA781F3D690";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  12 1 24 1 48 1 61 1 67 1 72 1 96 1;
	setAttr -s 7 ".kit[1:6]"  1 18 1 1 18 18;
	setAttr -s 7 ".kot[1:6]"  1 18 1 1 18 18;
	setAttr -s 7 ".kix[1:6]"  1 1 1 1 1 1;
	setAttr -s 7 ".kiy[1:6]"  0 0 0 0 0 0;
	setAttr -s 7 ".kox[1:6]"  1 1 1 1 1 1;
	setAttr -s 7 ".koy[1:6]"  0 0 0 0 0 0;
createNode animCurveTU -n "RIghtFoot_Control_scaleY";
	rename -uid "A1F8B3E3-6042-CEA6-CB4E-A39144A08FE9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  12 1 24 1 48 1 61 1 67 1 72 1 96 1;
	setAttr -s 7 ".kit[1:6]"  1 18 1 1 18 18;
	setAttr -s 7 ".kot[1:6]"  1 18 1 1 18 18;
	setAttr -s 7 ".kix[1:6]"  1 1 1 1 1 1;
	setAttr -s 7 ".kiy[1:6]"  0 0 0 0 0 0;
	setAttr -s 7 ".kox[1:6]"  1 1 1 1 1 1;
	setAttr -s 7 ".koy[1:6]"  0 0 0 0 0 0;
createNode animCurveTU -n "RIghtFoot_Control_scaleZ";
	rename -uid "5054ACA6-F24C-4E65-2045-1DA76A8C3AD2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  12 1 24 1 48 1 61 1 67 1 72 1 96 1;
	setAttr -s 7 ".kit[1:6]"  1 18 1 1 18 18;
	setAttr -s 7 ".kot[1:6]"  1 18 1 1 18 18;
	setAttr -s 7 ".kix[1:6]"  1 1 1 1 1 1;
	setAttr -s 7 ".kiy[1:6]"  0 0 0 0 0 0;
	setAttr -s 7 ".kox[1:6]"  1 1 1 1 1 1;
	setAttr -s 7 ".koy[1:6]"  0 0 0 0 0 0;
createNode animCurveTU -n "RightToes_Control_visibility";
	rename -uid "755A5BCD-024B-6224-86BA-4F8F079F0A6A";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1 24 1 48 1 72 1 96 1;
	setAttr -s 5 ".kit[0:4]"  9 1 9 9 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
createNode animCurveTL -n "RightToes_Control_translateX";
	rename -uid "7F9BFB9D-CB41-8D8E-A743-E9A9DAEDC245";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 24 0 48 0 72 0 96 0;
	setAttr -s 5 ".kit[1:4]"  1 18 18 18;
	setAttr -s 5 ".kot[1:4]"  1 18 18 18;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTL -n "RightToes_Control_translateY";
	rename -uid "7459D8FB-D246-8140-7517-F797BC3E3026";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 24 0 48 0 72 0 96 0;
	setAttr -s 5 ".kit[1:4]"  1 18 18 18;
	setAttr -s 5 ".kot[1:4]"  1 18 18 18;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTL -n "RightToes_Control_translateZ";
	rename -uid "BB7F9396-9343-5CC3-32C3-BCA398A43F2E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 24 0 48 0 72 0 96 0;
	setAttr -s 5 ".kit[1:4]"  1 18 18 18;
	setAttr -s 5 ".kot[1:4]"  1 18 18 18;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTU -n "RightToes_Control_scaleX";
	rename -uid "BD09F99D-044C-9D2D-AAEE-74A86DB31F12";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1 24 1 48 1 72 1 96 1;
	setAttr -s 5 ".kit[1:4]"  1 18 18 18;
	setAttr -s 5 ".kot[1:4]"  1 18 18 18;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTU -n "RightToes_Control_scaleY";
	rename -uid "874FD18C-7E4A-8F66-EBFF-7FB0F27E1548";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1 24 1 48 1 72 1 96 1;
	setAttr -s 5 ".kit[1:4]"  1 18 18 18;
	setAttr -s 5 ".kot[1:4]"  1 18 18 18;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTU -n "RightToes_Control_scaleZ";
	rename -uid "62040E1C-3546-FCCB-F1D4-3C9FF0884B84";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1 24 1 48 1 72 1 96 1;
	setAttr -s 5 ".kit[1:4]"  1 18 18 18;
	setAttr -s 5 ".kot[1:4]"  1 18 18 18;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTU -n "nurbsCircle1_visibility";
	rename -uid "E1142EA8-224B-463B-E353-BBB63A79C434";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1 24 1 48 1 72 1 96 1;
	setAttr -s 5 ".kit[0:4]"  9 1 9 9 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
createNode animCurveTL -n "nurbsCircle1_translateX";
	rename -uid "CD64B8E1-D242-8F7F-A452-07AEC9510ADD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 24 0 48 0 72 0 96 0;
	setAttr -s 5 ".kit[1:4]"  1 18 18 18;
	setAttr -s 5 ".kot[1:4]"  1 18 18 18;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTL -n "nurbsCircle1_translateY";
	rename -uid "D497882F-C24B-AA56-CF82-89A979B52D41";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 24 0 48 0 72 0 96 0;
	setAttr -s 5 ".kit[1:4]"  1 18 18 18;
	setAttr -s 5 ".kot[1:4]"  1 18 18 18;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTL -n "nurbsCircle1_translateZ";
	rename -uid "5BA8CEDF-A740-2108-94C8-AC9510836451";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 24 0 48 0 72 0 96 0;
	setAttr -s 5 ".kit[1:4]"  1 18 18 18;
	setAttr -s 5 ".kot[1:4]"  1 18 18 18;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTU -n "nurbsCircle1_scaleX";
	rename -uid "CEBFF1EC-1F45-3547-ED5E-BA813AB9DB3C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1 24 1 48 1 72 1 96 1;
	setAttr -s 5 ".kit[1:4]"  1 18 18 18;
	setAttr -s 5 ".kot[1:4]"  1 18 18 18;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTU -n "nurbsCircle1_scaleY";
	rename -uid "C9EC8BD2-2641-76E0-B49B-C5A426F93926";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1 24 1 48 1 72 1 96 1;
	setAttr -s 5 ".kit[1:4]"  1 18 18 18;
	setAttr -s 5 ".kot[1:4]"  1 18 18 18;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTU -n "nurbsCircle1_scaleZ";
	rename -uid "84AE2A80-2A43-D6E2-90CB-8DB43217C5BB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1 24 1 48 1 72 1 96 1;
	setAttr -s 5 ".kit[1:4]"  1 18 18 18;
	setAttr -s 5 ".kot[1:4]"  1 18 18 18;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTU -n "LeftFoot_Control_visibility";
	rename -uid "5A74354B-FF48-DFB1-8051-698934A51473";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  12 1 24 1 48 1 52 1 60 1 72 1 96 1;
	setAttr -s 7 ".kit[0:6]"  9 1 9 1 1 9 9;
	setAttr -s 7 ".kix[1:6]"  1 1 1 1 1 1;
	setAttr -s 7 ".kiy[1:6]"  0 0 0 0 0 0;
createNode animCurveTL -n "LeftFoot_Control_translateX";
	rename -uid "E92F3250-3A4C-6772-10FA-1D838FD4D080";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  12 0 24 -58.849963905720898 48 -58.849963905720898
		 52 -58.849963905720898 60 -61.411688273839985 72 -61.411688273839985 96 -61.411688273839985;
	setAttr -s 7 ".kit[1:6]"  1 18 1 1 18 18;
	setAttr -s 7 ".kot[1:6]"  1 18 1 1 18 18;
	setAttr -s 7 ".kix[1:6]"  1 1 1 1 1 1;
	setAttr -s 7 ".kiy[1:6]"  0 0 0 0 0 0;
	setAttr -s 7 ".kox[1:6]"  1 1 1 1 1 1;
	setAttr -s 7 ".koy[1:6]"  0 0 0 0 0 0;
createNode animCurveTL -n "LeftFoot_Control_translateY";
	rename -uid "065C3B1E-9041-52FF-8541-7395F2A2BBB4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  12 15.777465269439688 24 0 48 0 52 0 56 15.285890670922932
		 60 0 72 0 96 0;
	setAttr -s 8 ".kit[1:7]"  1 18 1 18 1 18 18;
	setAttr -s 8 ".kot[1:7]"  1 18 1 18 1 18 18;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "LeftFoot_Control_translateZ";
	rename -uid "76C8839B-8244-1549-2C6B-A98C078F35CE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  12 -84.457003786721003 24 -7.4797908243728912
		 48 -7.4797908243728912 52 -7.4797908243728912 60 41.312470481249271 72 41.312470481249271
		 96 41.312470481249271;
	setAttr -s 7 ".kit[1:6]"  1 18 1 1 18 18;
	setAttr -s 7 ".kot[1:6]"  1 18 1 1 18 18;
	setAttr -s 7 ".kix[1:6]"  1 1 1 1 1 1;
	setAttr -s 7 ".kiy[1:6]"  0 0 0 0 0 0;
	setAttr -s 7 ".kox[1:6]"  1 1 1 1 1 1;
	setAttr -s 7 ".koy[1:6]"  0 0 0 0 0 0;
createNode animCurveTU -n "LeftFoot_Control_scaleX";
	rename -uid "2A122CAE-B748-EB6E-0155-AB93BD844767";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  12 1 24 1 48 1 52 1 60 1 72 1 96 1;
	setAttr -s 7 ".kit[1:6]"  1 18 1 1 18 18;
	setAttr -s 7 ".kot[1:6]"  1 18 1 1 18 18;
	setAttr -s 7 ".kix[1:6]"  1 1 1 1 1 1;
	setAttr -s 7 ".kiy[1:6]"  0 0 0 0 0 0;
	setAttr -s 7 ".kox[1:6]"  1 1 1 1 1 1;
	setAttr -s 7 ".koy[1:6]"  0 0 0 0 0 0;
createNode animCurveTU -n "LeftFoot_Control_scaleY";
	rename -uid "17948424-C64A-C18C-902C-C69E7B5D8233";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  12 1 24 1 48 1 52 1 60 1 72 1 96 1;
	setAttr -s 7 ".kit[1:6]"  1 18 1 1 18 18;
	setAttr -s 7 ".kot[1:6]"  1 18 1 1 18 18;
	setAttr -s 7 ".kix[1:6]"  1 1 1 1 1 1;
	setAttr -s 7 ".kiy[1:6]"  0 0 0 0 0 0;
	setAttr -s 7 ".kox[1:6]"  1 1 1 1 1 1;
	setAttr -s 7 ".koy[1:6]"  0 0 0 0 0 0;
createNode animCurveTU -n "LeftFoot_Control_scaleZ";
	rename -uid "E7C8C5B3-8B40-F803-9E24-74B4A13F2131";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  12 1 24 1 48 1 52 1 60 1 72 1 96 1;
	setAttr -s 7 ".kit[1:6]"  1 18 1 1 18 18;
	setAttr -s 7 ".kot[1:6]"  1 18 1 1 18 18;
	setAttr -s 7 ".kix[1:6]"  1 1 1 1 1 1;
	setAttr -s 7 ".kiy[1:6]"  0 0 0 0 0 0;
	setAttr -s 7 ".kox[1:6]"  1 1 1 1 1 1;
	setAttr -s 7 ".koy[1:6]"  0 0 0 0 0 0;
createNode animCurveTU -n "LeftToes_Control_visibility";
	rename -uid "EB5E34D6-C24E-7753-6F0B-BD8E44375D72";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1 24 1 48 1 72 1 96 1;
	setAttr -s 5 ".kit[0:4]"  9 1 9 9 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
createNode animCurveTL -n "LeftToes_Control_translateX";
	rename -uid "7BD34190-164D-2A7F-0A0D-A3B3CBAC1121";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 24 0 48 0 72 0 96 0;
	setAttr -s 5 ".kit[1:4]"  1 18 18 18;
	setAttr -s 5 ".kot[1:4]"  1 18 18 18;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTL -n "LeftToes_Control_translateY";
	rename -uid "94BE2737-5E44-0D0D-22C5-9C871805B97F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 24 0 48 0 72 0 96 0;
	setAttr -s 5 ".kit[1:4]"  1 18 18 18;
	setAttr -s 5 ".kot[1:4]"  1 18 18 18;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTL -n "LeftToes_Control_translateZ";
	rename -uid "BE5AC457-934B-831A-D866-A19883674F22";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 24 0 48 0 72 0 96 0;
	setAttr -s 5 ".kit[1:4]"  1 18 18 18;
	setAttr -s 5 ".kot[1:4]"  1 18 18 18;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTU -n "LeftToes_Control_scaleX";
	rename -uid "2FD0F042-FB48-DCF3-60EF-A39B7A5BDEE9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1 24 1 48 1 72 1 96 1;
	setAttr -s 5 ".kit[1:4]"  1 18 18 18;
	setAttr -s 5 ".kot[1:4]"  1 18 18 18;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTU -n "LeftToes_Control_scaleY";
	rename -uid "52D27DE6-0945-5790-3608-57B5E1BA5068";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1 24 1 48 1 72 1 96 1;
	setAttr -s 5 ".kit[1:4]"  1 18 18 18;
	setAttr -s 5 ".kot[1:4]"  1 18 18 18;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTU -n "LeftToes_Control_scaleZ";
	rename -uid "5E5C8F56-884A-EF36-FDE8-4E9DFDB64537";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1 24 1 48 1 72 1 96 1;
	setAttr -s 5 ".kit[1:4]"  1 18 18 18;
	setAttr -s 5 ".kot[1:4]"  1 18 18 18;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTU -n "LeftKnee_Control_visibility";
	rename -uid "3409FB11-5A4B-29AA-A746-32AA94448C1D";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1 24 1 48 1 72 1 96 1;
	setAttr -s 5 ".kit[0:4]"  9 1 9 9 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
createNode animCurveTL -n "LeftKnee_Control_translateX";
	rename -uid "B49C26DC-0F40-D11E-7DFB-1B9E6365379E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 24 0 48 0 72 0 96 0;
	setAttr -s 5 ".kit[1:4]"  1 18 18 18;
	setAttr -s 5 ".kot[1:4]"  1 18 18 18;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTL -n "LeftKnee_Control_translateY";
	rename -uid "6A450DF6-5546-53A3-3654-CE8AA56A45AD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 24 0 48 0 72 0 96 0;
	setAttr -s 5 ".kit[1:4]"  1 18 18 18;
	setAttr -s 5 ".kot[1:4]"  1 18 18 18;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTL -n "LeftKnee_Control_translateZ";
	rename -uid "24EE2F0E-944E-2C17-8DBB-84B7125B993A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 24 0 48 0 72 0 96 0;
	setAttr -s 5 ".kit[1:4]"  1 18 18 18;
	setAttr -s 5 ".kot[1:4]"  1 18 18 18;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTU -n "LeftKnee_Control_scaleX";
	rename -uid "907AE9F7-A54A-5751-5735-9884FA884424";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1 24 1 48 1 72 1 96 1;
	setAttr -s 5 ".kit[1:4]"  1 18 18 18;
	setAttr -s 5 ".kot[1:4]"  1 18 18 18;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTU -n "LeftKnee_Control_scaleY";
	rename -uid "78D5FE05-B044-3CB8-EE3A-41B8464A6536";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1 24 1 48 1 72 1 96 1;
	setAttr -s 5 ".kit[1:4]"  1 18 18 18;
	setAttr -s 5 ".kot[1:4]"  1 18 18 18;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTU -n "LeftKnee_Control_scaleZ";
	rename -uid "8544B476-B344-DF4E-1EEA-FBA3E1439590";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1 24 1 48 1 72 1 96 1;
	setAttr -s 5 ".kit[1:4]"  1 18 18 18;
	setAttr -s 5 ".kot[1:4]"  1 18 18 18;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTU -n "Hips_Control_visibility";
	rename -uid "6A76E7BB-0C4A-2074-8641-84A6AF4E0CE2";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  12 1 24 1 31 1 40 1 48 1 72 1 80 1 88 1
		 96 1;
	setAttr -s 9 ".kit[0:8]"  9 1 9 9 9 9 9 9 
		9;
	setAttr -s 9 ".kix[1:8]"  1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[1:8]"  0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Hips_Control_translateX";
	rename -uid "0F1E9843-354C-09AB-F3ED-AAB601013A0B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  12 0 24 0.42252607397738018 31 -0.45921695323097822
		 40 -0.48957117373815606 48 0.42252607397738018 72 -7.0246801245352835 80 -7.5995197953252251
		 88 -5.5351640022412063 96 -7.0246801245352835;
	setAttr -s 9 ".kit[1:8]"  1 18 18 18 18 18 18 18;
	setAttr -s 9 ".kot[1:8]"  1 18 18 18 18 18 18 18;
	setAttr -s 9 ".kix[1:8]"  1 0.97175896167755127 1 1 0.1897779107093811 
		1 1 1;
	setAttr -s 9 ".kiy[1:8]"  0 -0.23597590625286102 0 0 -0.98182708024978638 
		0 0 0;
	setAttr -s 9 ".kox[1:8]"  1 0.97175896167755127 1 1 0.18977789580821991 
		1 1 1;
	setAttr -s 9 ".koy[1:8]"  0 -0.23597589135169983 0 0 -0.9818270206451416 
		0 0 0;
createNode animCurveTL -n "Hips_Control_translateY";
	rename -uid "CDD08A58-F04B-0B41-D717-1F8D47513D53";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  12 0 24 -11.546534915633529 31 -11.546534915633529
		 40 -11.546534915633529 48 -11.546534915633529 60 -6.8480419844264731 66 -7.2079817854678794
		 72 -11.546534915633529 80 -10.549857174769745 88 -10.549857174769745 96 -11.546534915633529;
	setAttr -s 11 ".kit[1:10]"  1 18 18 18 18 18 18 18 
		18 18;
	setAttr -s 11 ".kot[1:10]"  1 18 18 18 18 18 18 18 
		18 18;
	setAttr -s 11 ".kix[1:10]"  1 1 1 1 1 0.22555406391620636 1 1 1 1;
	setAttr -s 11 ".kiy[1:10]"  0 0 0 0 0 -0.97423064708709717 0 0 0 0;
	setAttr -s 11 ".kox[1:10]"  1 1 1 1 1 0.22555406391620636 1 1 1 1;
	setAttr -s 11 ".koy[1:10]"  0 0 0 0 0 -0.97423064708709717 0 0 0 0;
createNode animCurveTL -n "Hips_Control_translateZ";
	rename -uid "D6425937-7445-9540-BB05-7CA42021F0CA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  12 -59.886721460831943 24 26.065827026540198
		 31 25.475551518231093 40 26.572828602302359 48 26.065827026540198 60 21.746245842396569
		 72 30.462710457617554 80 31.291041426401925 88 30.246702003184048 96 30.462710457617554;
	setAttr -s 10 ".kit[1:9]"  1 18 18 18 18 18 18 18 
		18;
	setAttr -s 10 ".kot[1:9]"  1 18 18 18 18 18 18 18 
		18;
	setAttr -s 10 ".kix[1:9]"  1 1 1 0.21407292783260345 1 0.13294777274131775 
		1 1 1;
	setAttr -s 10 ".kiy[1:9]"  0 0 0 -0.97681766748428345 0 0.99112308025360107 
		0 0 0;
	setAttr -s 10 ".kox[1:9]"  1 1 1 0.21407292783260345 1 0.13294775784015656 
		1 1 1;
	setAttr -s 10 ".koy[1:9]"  0 0 0 -0.97681766748428345 0 0.9911230206489563 
		0 0 0;
createNode animCurveTU -n "Hips_Control_scaleX";
	rename -uid "6F0EC6BA-B848-4439-6428-B4833F08E6E7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  12 1 24 1 31 1 40 1 48 1 72 1 80 1 88 1
		 96 1;
	setAttr -s 9 ".kit[1:8]"  1 18 18 18 18 18 18 18;
	setAttr -s 9 ".kot[1:8]"  1 18 18 18 18 18 18 18;
	setAttr -s 9 ".kix[1:8]"  1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[1:8]"  0 0 0 0 0 0 0 0;
	setAttr -s 9 ".kox[1:8]"  1 1 1 1 1 1 1 1;
	setAttr -s 9 ".koy[1:8]"  0 0 0 0 0 0 0 0;
createNode animCurveTU -n "Hips_Control_scaleY";
	rename -uid "7058738A-A64B-3AEE-1C8B-15ACA845B383";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  12 1 24 1 31 1 40 1 48 1 72 1 80 1 88 1
		 96 1;
	setAttr -s 9 ".kit[1:8]"  1 18 18 18 18 18 18 18;
	setAttr -s 9 ".kot[1:8]"  1 18 18 18 18 18 18 18;
	setAttr -s 9 ".kix[1:8]"  1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[1:8]"  0 0 0 0 0 0 0 0;
	setAttr -s 9 ".kox[1:8]"  1 1 1 1 1 1 1 1;
	setAttr -s 9 ".koy[1:8]"  0 0 0 0 0 0 0 0;
createNode animCurveTU -n "Hips_Control_scaleZ";
	rename -uid "47CC7D88-DC4E-6C42-93F7-A1B93E146E57";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  12 1 24 1 31 1 40 1 48 1 72 1 80 1 88 1
		 96 1;
	setAttr -s 9 ".kit[1:8]"  1 18 18 18 18 18 18 18;
	setAttr -s 9 ".kot[1:8]"  1 18 18 18 18 18 18 18;
	setAttr -s 9 ".kix[1:8]"  1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[1:8]"  0 0 0 0 0 0 0 0;
	setAttr -s 9 ".kox[1:8]"  1 1 1 1 1 1 1 1;
	setAttr -s 9 ".koy[1:8]"  0 0 0 0 0 0 0 0;
createNode animCurveTU -n "Spine1_Control_visibility";
	rename -uid "A8527560-9D43-9190-1743-3E8540575E80";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1 24 1 48 1 72 1 96 1;
	setAttr -s 5 ".kit[0:4]"  9 1 9 9 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
createNode animCurveTL -n "Spine1_Control_translateX";
	rename -uid "7720B9BA-0542-BABA-88EC-7197DFB7B2D7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 24 0 48 0 72 0 96 0;
	setAttr -s 5 ".kit[1:4]"  1 18 18 18;
	setAttr -s 5 ".kot[1:4]"  1 18 18 18;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTL -n "Spine1_Control_translateY";
	rename -uid "EFD8E99B-704F-3F64-5CF8-AA9904527B75";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 24 0 48 0 72 0 96 0;
	setAttr -s 5 ".kit[1:4]"  1 18 18 18;
	setAttr -s 5 ".kot[1:4]"  1 18 18 18;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTL -n "Spine1_Control_translateZ";
	rename -uid "CCA67B42-8D48-1D3F-8D14-B59C99E44511";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 24 0 48 0 72 0 96 0;
	setAttr -s 5 ".kit[1:4]"  1 18 18 18;
	setAttr -s 5 ".kot[1:4]"  1 18 18 18;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTU -n "Spine1_Control_scaleX";
	rename -uid "AB19B1C2-BC4E-C3EB-D9A2-D8BC205C42FF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1 24 1 48 1 72 1 96 1;
	setAttr -s 5 ".kit[1:4]"  1 18 18 18;
	setAttr -s 5 ".kot[1:4]"  1 18 18 18;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTU -n "Spine1_Control_scaleY";
	rename -uid "7E824B8A-E14B-C482-049B-058A6841A95E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1 24 1 48 1 72 1 96 1;
	setAttr -s 5 ".kit[1:4]"  1 18 18 18;
	setAttr -s 5 ".kot[1:4]"  1 18 18 18;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTU -n "Spine1_Control_scaleZ";
	rename -uid "DBD9B6C7-7442-7469-5852-FBA3E5E8E646";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1 24 1 48 1 72 1 96 1;
	setAttr -s 5 ".kit[1:4]"  1 18 18 18;
	setAttr -s 5 ".kot[1:4]"  1 18 18 18;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTU -n "Spine2_Control_visibility";
	rename -uid "9A41C030-5446-8239-0D5A-E2A5ED8C2B01";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1 24 1 48 1 72 1 96 1;
	setAttr -s 5 ".kit[0:4]"  9 1 9 9 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
createNode animCurveTL -n "Spine2_Control_translateX";
	rename -uid "E18D70E5-4F43-0F85-894E-1B877A7AA18F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 24 0 48 0 72 0 96 0;
	setAttr -s 5 ".kit[1:4]"  1 18 18 18;
	setAttr -s 5 ".kot[1:4]"  1 18 18 18;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTL -n "Spine2_Control_translateY";
	rename -uid "9504C629-8D4F-16E6-54BE-B09403EC02E0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 24 0 48 0 72 0 96 0;
	setAttr -s 5 ".kit[1:4]"  1 18 18 18;
	setAttr -s 5 ".kot[1:4]"  1 18 18 18;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTL -n "Spine2_Control_translateZ";
	rename -uid "E29BF2ED-3D4B-5050-0FA8-DB877B98E7FF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 24 0 48 0 72 0 96 0;
	setAttr -s 5 ".kit[1:4]"  1 18 18 18;
	setAttr -s 5 ".kot[1:4]"  1 18 18 18;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTU -n "Spine2_Control_scaleX";
	rename -uid "A145B754-3749-F5DE-B5FC-DAB0715D328B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1 24 1 48 1 72 1 96 1;
	setAttr -s 5 ".kit[1:4]"  1 18 18 18;
	setAttr -s 5 ".kot[1:4]"  1 18 18 18;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTU -n "Spine2_Control_scaleY";
	rename -uid "66D21ECD-1748-DD03-1FA3-5F988E85A7A0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1 24 1 48 1 72 1 96 1;
	setAttr -s 5 ".kit[1:4]"  1 18 18 18;
	setAttr -s 5 ".kot[1:4]"  1 18 18 18;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTU -n "Spine2_Control_scaleZ";
	rename -uid "CDF74C89-4840-CEA3-AA96-6F9300CC15AA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1 24 1 48 1 72 1 96 1;
	setAttr -s 5 ".kit[1:4]"  1 18 18 18;
	setAttr -s 5 ".kot[1:4]"  1 18 18 18;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTU -n "LeftClav_Control_visibility";
	rename -uid "DDB75415-CE4A-8748-B5E1-1B89C04A85F9";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1 24 1 48 1 72 1 96 1;
	setAttr -s 5 ".kit[0:4]"  9 1 9 9 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
createNode animCurveTL -n "LeftClav_Control_translateX";
	rename -uid "86161B0E-754D-967D-2B5A-D8AEAFD6217D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 24 0 48 0 72 0 96 0;
	setAttr -s 5 ".kit[1:4]"  1 18 18 18;
	setAttr -s 5 ".kot[1:4]"  1 18 18 18;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTL -n "LeftClav_Control_translateY";
	rename -uid "34C1AE94-504B-99AD-1B88-35BE5FA90320";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 24 0 48 0 72 0 96 0;
	setAttr -s 5 ".kit[1:4]"  1 18 18 18;
	setAttr -s 5 ".kot[1:4]"  1 18 18 18;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTL -n "LeftClav_Control_translateZ";
	rename -uid "799C1200-5C48-1141-5CC7-B4A80B1DDA54";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 24 0 48 0 72 0 96 0;
	setAttr -s 5 ".kit[1:4]"  1 18 18 18;
	setAttr -s 5 ".kot[1:4]"  1 18 18 18;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTU -n "LeftClav_Control_scaleX";
	rename -uid "91BB9A13-D143-4FED-3270-D7AC95ADAFA3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1 24 1 48 1 72 1 96 1;
	setAttr -s 5 ".kit[1:4]"  1 18 18 18;
	setAttr -s 5 ".kot[1:4]"  1 18 18 18;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTU -n "LeftClav_Control_scaleY";
	rename -uid "002BC102-6A42-5DEA-F4CF-FB9A7EF10BFF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1 24 1 48 1 72 1 96 1;
	setAttr -s 5 ".kit[1:4]"  1 18 18 18;
	setAttr -s 5 ".kot[1:4]"  1 18 18 18;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTU -n "LeftClav_Control_scaleZ";
	rename -uid "A85F6F5E-8549-F227-C70A-54B39D1A572E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1 24 1 48 1 72 1 96 1;
	setAttr -s 5 ".kit[1:4]"  1 18 18 18;
	setAttr -s 5 ".kot[1:4]"  1 18 18 18;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTU -n "RightClav_Control_visibility";
	rename -uid "7A93E006-2A48-4F5E-BF5E-F4B961AE6EE5";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1 24 1 48 1 72 1 96 1;
	setAttr -s 5 ".kit[0:4]"  9 1 9 9 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
createNode animCurveTL -n "RightClav_Control_translateX";
	rename -uid "B6C16CF9-BE43-0B94-DA34-AC80B2C7C550";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 24 0 48 0 72 0 96 0;
	setAttr -s 5 ".kit[1:4]"  1 18 18 18;
	setAttr -s 5 ".kot[1:4]"  1 18 18 18;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTL -n "RightClav_Control_translateY";
	rename -uid "1568D025-A341-FD61-447A-F3B40652D5A5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 24 0 48 0 72 0 96 0;
	setAttr -s 5 ".kit[1:4]"  1 18 18 18;
	setAttr -s 5 ".kot[1:4]"  1 18 18 18;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTL -n "RightClav_Control_translateZ";
	rename -uid "067D552A-964D-6B6A-B621-E2B0A58E6D50";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 24 0 48 0 72 0 96 0;
	setAttr -s 5 ".kit[1:4]"  1 18 18 18;
	setAttr -s 5 ".kot[1:4]"  1 18 18 18;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTU -n "RightClav_Control_scaleX";
	rename -uid "4F423778-C348-481A-C65D-DDB9C2541A4D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1 24 1 48 1 72 1 96 1;
	setAttr -s 5 ".kit[1:4]"  1 18 18 18;
	setAttr -s 5 ".kot[1:4]"  1 18 18 18;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTU -n "RightClav_Control_scaleY";
	rename -uid "0D68D6A5-974C-D859-2E7B-A5BA7653B16B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1 24 1 48 1 72 1 96 1;
	setAttr -s 5 ".kit[1:4]"  1 18 18 18;
	setAttr -s 5 ".kot[1:4]"  1 18 18 18;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTU -n "RightClav_Control_scaleZ";
	rename -uid "A7404221-B641-7D6F-0490-BFB79A1423C4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1 24 1 48 1 72 1 96 1;
	setAttr -s 5 ".kit[1:4]"  1 18 18 18;
	setAttr -s 5 ".kot[1:4]"  1 18 18 18;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTU -n "Neck_Control_visibility";
	rename -uid "CA2D79FD-3C44-D12B-7DA0-AFAA043AD20D";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1 24 1 48 1 72 1 96 1;
	setAttr -s 5 ".kit[0:4]"  9 1 9 9 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
createNode animCurveTL -n "Neck_Control_translateX";
	rename -uid "C1CBBC25-644E-97D3-DAC4-51ABFCDC253C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 24 0 48 0 72 0 96 0;
	setAttr -s 5 ".kit[1:4]"  1 18 18 18;
	setAttr -s 5 ".kot[1:4]"  1 18 18 18;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTL -n "Neck_Control_translateY";
	rename -uid "000A7627-DD49-5F68-5C39-5D8AF32C81F1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 24 0 48 0 72 0 96 0;
	setAttr -s 5 ".kit[1:4]"  1 18 18 18;
	setAttr -s 5 ".kot[1:4]"  1 18 18 18;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTL -n "Neck_Control_translateZ";
	rename -uid "7B7F71B8-834D-21AB-BDA3-048E8368C4A1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 24 0 48 0 72 0 96 0;
	setAttr -s 5 ".kit[1:4]"  1 18 18 18;
	setAttr -s 5 ".kot[1:4]"  1 18 18 18;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTU -n "Neck_Control_scaleX";
	rename -uid "3260F2EA-374D-0CD1-755B-A1ADA647CF81";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1 24 1 48 1 72 1 96 1;
	setAttr -s 5 ".kit[1:4]"  1 18 18 18;
	setAttr -s 5 ".kot[1:4]"  1 18 18 18;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTU -n "Neck_Control_scaleY";
	rename -uid "0AA52EE6-664E-A154-C2ED-BE99ED366F12";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1 24 1 48 1 72 1 96 1;
	setAttr -s 5 ".kit[1:4]"  1 18 18 18;
	setAttr -s 5 ".kot[1:4]"  1 18 18 18;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTU -n "Neck_Control_scaleZ";
	rename -uid "CF2434D5-D14A-EBD2-4E7E-C090E1B41966";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1 24 1 48 1 72 1 96 1;
	setAttr -s 5 ".kit[1:4]"  1 18 18 18;
	setAttr -s 5 ".kot[1:4]"  1 18 18 18;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTU -n "Head_Control_visibility";
	rename -uid "F4019BE3-B24A-8D05-B808-03B3B599E261";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1 24 1 48 1 72 1 96 1;
	setAttr -s 5 ".kit[0:4]"  9 1 9 9 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
createNode animCurveTL -n "Head_Control_translateX";
	rename -uid "054082DC-D742-BF93-2DD6-0AA3DB18EEBF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 24 0 48 0 72 0 96 0;
	setAttr -s 5 ".kit[1:4]"  1 18 18 18;
	setAttr -s 5 ".kot[1:4]"  1 18 18 18;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTL -n "Head_Control_translateY";
	rename -uid "56FEAC00-AB45-B8D7-D71F-DE831564CC64";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 24 0 48 0 72 0 96 0;
	setAttr -s 5 ".kit[1:4]"  1 18 18 18;
	setAttr -s 5 ".kot[1:4]"  1 18 18 18;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTL -n "Head_Control_translateZ";
	rename -uid "945093A9-8444-694C-1BA5-F29D544E0ECD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 24 0 48 0 72 0 96 0;
	setAttr -s 5 ".kit[1:4]"  1 18 18 18;
	setAttr -s 5 ".kot[1:4]"  1 18 18 18;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTU -n "Head_Control_scaleX";
	rename -uid "37912EB6-E642-DB1D-F02D-91B2A3641FB3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1 24 1 48 1 72 1 96 1;
	setAttr -s 5 ".kit[1:4]"  1 18 18 18;
	setAttr -s 5 ".kot[1:4]"  1 18 18 18;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTU -n "Head_Control_scaleY";
	rename -uid "2EA3D7E5-9240-15FB-5A52-AE988BD4E2D6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1 24 1 48 1 72 1 96 1;
	setAttr -s 5 ".kit[1:4]"  1 18 18 18;
	setAttr -s 5 ".kot[1:4]"  1 18 18 18;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTU -n "Head_Control_scaleZ";
	rename -uid "E609F6A3-774B-48AC-DAD8-F4BFDC8A9C37";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1 24 1 48 1 72 1 96 1;
	setAttr -s 5 ".kit[1:4]"  1 18 18 18;
	setAttr -s 5 ".kot[1:4]"  1 18 18 18;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTU -n "LeftShoulder_Control_visibility";
	rename -uid "59D315C7-1648-A27F-A99A-A08E4EC0D9EA";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1 24 1 48 1 72 1 96 1;
	setAttr -s 5 ".kit[0:4]"  9 1 9 9 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
createNode animCurveTL -n "LeftShoulder_Control_translateX";
	rename -uid "5A3BC3D3-6744-54BC-758B-658757D8F2FF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 24 62.019362821489288 48 62.019362821489288
		 72 62.019362821489288 96 62.019362821489288;
	setAttr -s 5 ".kit[1:4]"  1 18 18 18;
	setAttr -s 5 ".kot[1:4]"  1 18 18 18;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTL -n "LeftShoulder_Control_translateY";
	rename -uid "359FA679-8046-B6E3-E1D1-10A540B5C55C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 24 0.00031204268347551078 48 0.00031204268347551078
		 72 0.00031204268347551078 96 0.00031204268347551078;
	setAttr -s 5 ".kit[1:4]"  1 18 18 18;
	setAttr -s 5 ".kot[1:4]"  1 18 18 18;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTL -n "LeftShoulder_Control_translateZ";
	rename -uid "39518BA8-5242-F18F-6C6A-9CB2207616BE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 24 3.4604225783496645e-05 48 3.4604225783496645e-05
		 72 3.4604225783496645e-05 96 3.4604225783496645e-05;
	setAttr -s 5 ".kit[1:4]"  1 18 18 18;
	setAttr -s 5 ".kot[1:4]"  1 18 18 18;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTU -n "LeftShoulder_Control_scaleX";
	rename -uid "75B1FE7A-2B4F-B787-89D5-46BF19F9AF30";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1 24 1 48 1 72 1 96 1;
	setAttr -s 5 ".kit[1:4]"  1 18 18 18;
	setAttr -s 5 ".kot[1:4]"  1 18 18 18;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTU -n "LeftShoulder_Control_scaleY";
	rename -uid "76BBEAA5-2E48-CD0E-70D3-8CBE59C09C26";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1 24 1 48 1 72 1 96 1;
	setAttr -s 5 ".kit[1:4]"  1 18 18 18;
	setAttr -s 5 ".kot[1:4]"  1 18 18 18;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTU -n "LeftShoulder_Control_scaleZ";
	rename -uid "5C9C7E6E-3240-8BFB-72AF-569BE119DE58";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1 24 1 48 1 72 1 96 1;
	setAttr -s 5 ".kit[1:4]"  1 18 18 18;
	setAttr -s 5 ".kot[1:4]"  1 18 18 18;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTU -n "RightShoulder_Control_visibility";
	rename -uid "AEBC1022-1E46-9B95-A731-6DABC91F47F1";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1 24 1 48 1 72 1 96 1;
	setAttr -s 5 ".kit[0:4]"  9 1 9 9 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
createNode animCurveTL -n "RightShoulder_Control_translateX";
	rename -uid "680C1AE1-B342-48D3-63A8-46A29E836D0B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 24 0 48 0 72 0 96 0;
	setAttr -s 5 ".kit[1:4]"  1 18 18 18;
	setAttr -s 5 ".kot[1:4]"  1 18 18 18;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTL -n "RightShoulder_Control_translateY";
	rename -uid "FDFB6713-4F43-8441-056D-FC9BB9A3295A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 24 0 48 0 72 0 96 0;
	setAttr -s 5 ".kit[1:4]"  1 18 18 18;
	setAttr -s 5 ".kot[1:4]"  1 18 18 18;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTL -n "RightShoulder_Control_translateZ";
	rename -uid "447E393F-E747-C5DE-B13B-4CAFB8DC9B04";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 24 0 48 0 72 0 96 0;
	setAttr -s 5 ".kit[1:4]"  1 18 18 18;
	setAttr -s 5 ".kot[1:4]"  1 18 18 18;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTU -n "RightShoulder_Control_scaleX";
	rename -uid "5C3E2314-6B48-30FD-993E-FB8FA48942D5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1 24 1 48 1 72 1 96 1;
	setAttr -s 5 ".kit[1:4]"  1 18 18 18;
	setAttr -s 5 ".kot[1:4]"  1 18 18 18;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTU -n "RightShoulder_Control_scaleY";
	rename -uid "F6AEF784-F742-7363-516A-4DA8CADEDB50";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1 24 1 48 1 72 1 96 1;
	setAttr -s 5 ".kit[1:4]"  1 18 18 18;
	setAttr -s 5 ".kot[1:4]"  1 18 18 18;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTU -n "RightShoulder_Control_scaleZ";
	rename -uid "3490B9AD-4442-847A-A030-F19278B4DAB9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1 24 1 48 1 72 1 96 1;
	setAttr -s 5 ".kit[1:4]"  1 18 18 18;
	setAttr -s 5 ".kot[1:4]"  1 18 18 18;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTU -n "RightHand_Control_visibility";
	rename -uid "0C85A0DC-574F-6E96-8CB8-AF9C77E51B5A";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  12 1 24 1 31 1 40 1 48 1 72 1 80 1 88 1
		 96 1;
	setAttr -s 9 ".kit[0:8]"  9 1 9 9 9 9 9 9 
		9;
	setAttr -s 9 ".kix[1:8]"  1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[1:8]"  0 0 0 0 0 0 0 0;
createNode animCurveTL -n "RightHand_Control_translateX";
	rename -uid "0FB335DB-A247-AA4A-244E-44ADFF35C6E9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  12 0 24 101.41292235295612 31 78.08222827767031
		 40 78.144212060280921 48 78.144212060280921 72 26.898947128706624 80 26.324107457916682
		 88 28.388463251000701 96 26.898947128706624;
	setAttr -s 9 ".kit[1:8]"  1 18 18 18 18 18 18 18;
	setAttr -s 9 ".kot[1:8]"  1 18 18 18 18 18 18 18;
	setAttr -s 9 ".kix[1:8]"  1 1 1 1 0.1897779107093811 1 1 1;
	setAttr -s 9 ".kiy[1:8]"  0 0 0 0 -0.98182708024978638 0 0 0;
	setAttr -s 9 ".kox[1:8]"  1 1 1 1 0.18977789580821991 1 1 1;
	setAttr -s 9 ".koy[1:8]"  0 0 0 0 -0.9818270206451416 0 0 0;
createNode animCurveTL -n "RightHand_Control_translateY";
	rename -uid "FBE2693F-DA44-5F36-7104-F3A103292AA5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  12 45.553717496651174 24 45.553717496651174
		 31 26.837346662874907 40 26.837346662874907 48 26.837346662874907 72 26.837346662874907
		 80 26.837346662874907 88 26.837346662874907 96 26.837346662874907;
	setAttr -s 9 ".kit[1:8]"  1 18 18 18 18 18 18 18;
	setAttr -s 9 ".kot[1:8]"  1 18 18 18 18 18 18 18;
	setAttr -s 9 ".kix[1:8]"  1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[1:8]"  0 0 0 0 0 0 0 0;
	setAttr -s 9 ".kox[1:8]"  1 1 1 1 1 1 1 1;
	setAttr -s 9 ".koy[1:8]"  0 0 0 0 0 0 0 0;
createNode animCurveTL -n "RightHand_Control_translateZ";
	rename -uid "988EFCFA-A84B-8E27-3880-96B307C8DCB2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  12 -26.535541702036433 24 -10.047265649848278
		 31 7.5372048609779583 40 6.5654339769069949 48 6.5654339769069949 72 -10.592193172019996
		 80 -9.7638622032356253 88 -10.808201626453503 96 -10.592193172019996;
	setAttr -s 9 ".kit[1:8]"  1 18 18 18 18 18 18 18;
	setAttr -s 9 ".kot[1:8]"  1 18 18 18 18 18 18 18;
	setAttr -s 9 ".kix[1:8]"  1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[1:8]"  0 0 0 0 0 0 0 0;
	setAttr -s 9 ".kox[1:8]"  1 1 1 1 1 1 1 1;
	setAttr -s 9 ".koy[1:8]"  0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RightHand_Control_scaleX";
	rename -uid "D4267E99-9E4C-CD40-D44C-CCAC0D5D372B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  12 1 24 1 31 1 40 1 48 1 72 1 80 1 88 1
		 96 1;
	setAttr -s 9 ".kit[1:8]"  1 18 18 18 18 18 18 18;
	setAttr -s 9 ".kot[1:8]"  1 18 18 18 18 18 18 18;
	setAttr -s 9 ".kix[1:8]"  1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[1:8]"  0 0 0 0 0 0 0 0;
	setAttr -s 9 ".kox[1:8]"  1 1 1 1 1 1 1 1;
	setAttr -s 9 ".koy[1:8]"  0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RightHand_Control_scaleY";
	rename -uid "E3F95506-114A-A60E-8156-1C94DCFEE072";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  12 1 24 1 31 1 40 1 48 1 72 1 80 1 88 1
		 96 1;
	setAttr -s 9 ".kit[1:8]"  1 18 18 18 18 18 18 18;
	setAttr -s 9 ".kot[1:8]"  1 18 18 18 18 18 18 18;
	setAttr -s 9 ".kix[1:8]"  1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[1:8]"  0 0 0 0 0 0 0 0;
	setAttr -s 9 ".kox[1:8]"  1 1 1 1 1 1 1 1;
	setAttr -s 9 ".koy[1:8]"  0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RightHand_Control_scaleZ";
	rename -uid "2E494905-FD40-F728-8252-AEB71AA2DFD8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  12 1 24 1 31 1 40 1 48 1 72 1 80 1 88 1
		 96 1;
	setAttr -s 9 ".kit[1:8]"  1 18 18 18 18 18 18 18;
	setAttr -s 9 ".kot[1:8]"  1 18 18 18 18 18 18 18;
	setAttr -s 9 ".kix[1:8]"  1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[1:8]"  0 0 0 0 0 0 0 0;
	setAttr -s 9 ".kox[1:8]"  1 1 1 1 1 1 1 1;
	setAttr -s 9 ".koy[1:8]"  0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RightHand_Control_Grip";
	rename -uid "D1BCC4CA-3246-4844-0E4F-45B41FFA8008";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  12 0 24 0 31 0 40 0 48 0 72 0 80 0 88 0
		 96 0;
	setAttr -s 9 ".kit[1:8]"  1 18 18 18 18 18 18 18;
	setAttr -s 9 ".kot[1:8]"  1 18 18 18 18 18 18 18;
	setAttr -s 9 ".kix[1:8]"  1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[1:8]"  0 0 0 0 0 0 0 0;
	setAttr -s 9 ".kox[1:8]"  1 1 1 1 1 1 1 1;
	setAttr -s 9 ".koy[1:8]"  0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LeftHand_Control_visibility";
	rename -uid "3AFBFE06-1341-9C3A-821D-ACACFCC0C6A1";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  12 1 24 1 31 1 40 1 48 1 72 1 80 1 88 1
		 96 1;
	setAttr -s 9 ".kit[0:8]"  9 1 9 9 9 9 9 9 
		9;
	setAttr -s 9 ".kix[1:8]"  1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[1:8]"  0 0 0 0 0 0 0 0;
createNode animCurveTL -n "LeftHand_Control_translateX";
	rename -uid "CACDDE66-104F-A49E-B06E-4289278A511F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  12 0 24 -54.211478644001573 31 -54.273462426612184
		 40 -54.211478644001573 48 -54.211478644001573 72 -116.50285035632899 80 -117.07769002711893
		 88 -115.01333423403491 96 -116.50285035632899;
	setAttr -s 9 ".kit[1:8]"  1 18 18 18 18 18 18 18;
	setAttr -s 9 ".kot[1:8]"  1 18 18 18 18 18 18 18;
	setAttr -s 9 ".kix[1:8]"  1 1 1 1 0.1897779107093811 1 1 1;
	setAttr -s 9 ".kiy[1:8]"  0 0 0 0 -0.98182708024978638 0 0 0;
	setAttr -s 9 ".kox[1:8]"  1 1 1 1 0.18977789580821991 1 1 1;
	setAttr -s 9 ".koy[1:8]"  0 0 0 0 -0.9818270206451416 0 0 0;
createNode animCurveTL -n "LeftHand_Control_translateY";
	rename -uid "553D6EC8-5246-0C2E-9972-129075FB571E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  12 0 24 52.71415739606033 31 52.71415739606033
		 40 52.71415739606033 48 52.71415739606033 72 23.21740513987271 80 23.21740513987271
		 88 23.21740513987271 96 23.21740513987271;
	setAttr -s 9 ".kit[1:8]"  1 18 18 18 18 18 18 18;
	setAttr -s 9 ".kot[1:8]"  1 18 18 18 18 18 18 18;
	setAttr -s 9 ".kix[1:8]"  1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[1:8]"  0 0 0 0 0 0 0 0;
	setAttr -s 9 ".kox[1:8]"  1 1 1 1 1 1 1 1;
	setAttr -s 9 ".koy[1:8]"  0 0 0 0 0 0 0 0;
createNode animCurveTL -n "LeftHand_Control_translateZ";
	rename -uid "F2199A96-044C-365D-EC4A-CDA25A9DA8C4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  12 0 24 -32.042927252797554 31 -31.071156368726591
		 40 -32.042927252797554 48 -32.042927252797554 72 11.733435282605328 80 12.561766251389699
		 88 11.517426828171821 96 11.733435282605328;
	setAttr -s 9 ".kit[1:8]"  1 18 18 18 18 18 18 18;
	setAttr -s 9 ".kot[1:8]"  1 18 18 18 18 18 18 18;
	setAttr -s 9 ".kix[1:8]"  1 1 1 1 0.13294777274131775 1 1 1;
	setAttr -s 9 ".kiy[1:8]"  0 0 0 0 0.99112308025360107 0 0 0;
	setAttr -s 9 ".kox[1:8]"  1 1 1 1 0.13294775784015656 1 1 1;
	setAttr -s 9 ".koy[1:8]"  0 0 0 0 0.9911230206489563 0 0 0;
createNode animCurveTU -n "LeftHand_Control_scaleX";
	rename -uid "2D30CF35-5247-2433-88A6-059215B572BA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  12 1 24 1 31 1 40 1 48 1 72 1 80 1 88 1
		 96 1;
	setAttr -s 9 ".kit[1:8]"  1 18 18 18 18 18 18 18;
	setAttr -s 9 ".kot[1:8]"  1 18 18 18 18 18 18 18;
	setAttr -s 9 ".kix[1:8]"  1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[1:8]"  0 0 0 0 0 0 0 0;
	setAttr -s 9 ".kox[1:8]"  1 1 1 1 1 1 1 1;
	setAttr -s 9 ".koy[1:8]"  0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LeftHand_Control_scaleY";
	rename -uid "6C9673F3-F44A-3D50-9C52-4CB4726565D1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  12 1 24 1 31 1 40 1 48 1 72 1 80 1 88 1
		 96 1;
	setAttr -s 9 ".kit[1:8]"  1 18 18 18 18 18 18 18;
	setAttr -s 9 ".kot[1:8]"  1 18 18 18 18 18 18 18;
	setAttr -s 9 ".kix[1:8]"  1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[1:8]"  0 0 0 0 0 0 0 0;
	setAttr -s 9 ".kox[1:8]"  1 1 1 1 1 1 1 1;
	setAttr -s 9 ".koy[1:8]"  0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LeftHand_Control_scaleZ";
	rename -uid "6E4EAB1C-D444-4264-DAAD-1A80E0342C0F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  12 1 24 1 31 1 40 1 48 1 72 1 80 1 88 1
		 96 1;
	setAttr -s 9 ".kit[1:8]"  1 18 18 18 18 18 18 18;
	setAttr -s 9 ".kot[1:8]"  1 18 18 18 18 18 18 18;
	setAttr -s 9 ".kix[1:8]"  1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[1:8]"  0 0 0 0 0 0 0 0;
	setAttr -s 9 ".kox[1:8]"  1 1 1 1 1 1 1 1;
	setAttr -s 9 ".koy[1:8]"  0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LeftHand_Control_Grip";
	rename -uid "1B22E934-774B-FFBB-526B-5FA740105FFB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  12 0 24 0 31 0 40 0 48 0 72 0.5 80 0.5 88 0.5
		 96 0.5;
	setAttr -s 9 ".kit[1:8]"  1 18 18 18 18 18 18 18;
	setAttr -s 9 ".kot[1:8]"  1 18 18 18 18 18 18 18;
	setAttr -s 9 ".kix[1:8]"  1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[1:8]"  0 0 0 0 0 0 0 0;
	setAttr -s 9 ".kox[1:8]"  1 1 1 1 1 1 1 1;
	setAttr -s 9 ".koy[1:8]"  0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LeftElbow_Control_visibility";
	rename -uid "83E44667-AC4B-93D7-C3E7-9F93B641C79F";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1 24 1 48 1 72 1 96 1;
	setAttr -s 5 ".kit[0:4]"  9 1 9 9 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
createNode animCurveTL -n "LeftElbow_Control_translateX";
	rename -uid "EC760478-0948-C5AC-C9FD-33B912ED1C9C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 24 -114.68652571557124 48 -114.68652571557124
		 72 -144.56479684230948 96 -144.56479684230948;
	setAttr -s 5 ".kit[1:4]"  1 18 18 18;
	setAttr -s 5 ".kot[1:4]"  1 18 18 18;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTL -n "LeftElbow_Control_translateY";
	rename -uid "E9610772-D245-B799-A2A4-0BB6013BEB12";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 24 0 48 0 72 -119.947457266388 96 -119.947457266388;
	setAttr -s 5 ".kit[1:4]"  1 18 18 18;
	setAttr -s 5 ".kot[1:4]"  1 18 18 18;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTL -n "LeftElbow_Control_translateZ";
	rename -uid "F3DE621A-A54F-6643-E524-1C9365BCCF5A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 0 24 197.42211588030901 48 197.42211588030901
		 72 239.5991401510972 96 239.5991401510972;
	setAttr -s 5 ".kit[1:4]"  1 18 18 18;
	setAttr -s 5 ".kot[1:4]"  1 18 18 18;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTU -n "LeftElbow_Control_scaleX";
	rename -uid "30500761-4B43-BF48-F670-CDAFE0487C00";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1 24 1 48 1 72 1 96 1;
	setAttr -s 5 ".kit[1:4]"  1 18 18 18;
	setAttr -s 5 ".kot[1:4]"  1 18 18 18;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTU -n "LeftElbow_Control_scaleY";
	rename -uid "825C4C53-7141-0F2B-3FD1-B5955B1265B4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1 24 1 48 1 72 1 96 1;
	setAttr -s 5 ".kit[1:4]"  1 18 18 18;
	setAttr -s 5 ".kot[1:4]"  1 18 18 18;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTU -n "LeftElbow_Control_scaleZ";
	rename -uid "B85B6054-D849-E664-5652-4A85A284E279";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1 24 1 48 1 72 1 96 1;
	setAttr -s 5 ".kit[1:4]"  1 18 18 18;
	setAttr -s 5 ".kot[1:4]"  1 18 18 18;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTU -n "RightElbow_Control_visibility";
	rename -uid "6A8CC337-804E-B70F-2C71-53A3AFAE17FA";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1 24 1 48 1 72 1 96 1;
	setAttr -s 5 ".kit[0:4]"  9 1 9 9 9;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
createNode animCurveTL -n "RightElbow_Control_translateX";
	rename -uid "00A33C8A-0F4F-74B5-4C9F-D8A18EAF10C4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 24 142.89080359389419 48 142.89080359389419
		 54 118.41713004825556 72 183.09312192964279 96 183.09312192964279;
	setAttr -s 6 ".kit[1:5]"  1 18 18 18 18;
	setAttr -s 6 ".kot[1:5]"  1 18 18 18 18;
	setAttr -s 6 ".kix[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".kiy[1:5]"  0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTL -n "RightElbow_Control_translateY";
	rename -uid "9CD34FDA-BC4E-1421-5FBA-DEAD5708CFAF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 2.8421709430404007e-14 24 2.8421709430404007e-14
		 48 2.8421709430404007e-14 72 2.8421709430404007e-14 96 2.8421709430404007e-14;
	setAttr -s 5 ".kit[1:4]"  1 18 18 18;
	setAttr -s 5 ".kot[1:4]"  1 18 18 18;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTL -n "RightElbow_Control_translateZ";
	rename -uid "9D881DB1-F145-E26C-2701-729C6312F91B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  12 0 24 226.13459808130267 48 226.13459808130267
		 54 234.50254345044323 72 92.396335485984935 96 92.396335485984935;
	setAttr -s 6 ".kit[1:5]"  1 18 18 18 18;
	setAttr -s 6 ".kot[1:5]"  1 18 18 18 18;
	setAttr -s 6 ".kix[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".kiy[1:5]"  0 0 0 0 0;
	setAttr -s 6 ".kox[1:5]"  1 1 1 1 1;
	setAttr -s 6 ".koy[1:5]"  0 0 0 0 0;
createNode animCurveTU -n "RightElbow_Control_scaleX";
	rename -uid "D6CD5356-824F-0EEB-FF55-E6BAF2725D2E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1 24 1 48 1 72 1 96 1;
	setAttr -s 5 ".kit[1:4]"  1 18 18 18;
	setAttr -s 5 ".kot[1:4]"  1 18 18 18;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTU -n "RightElbow_Control_scaleY";
	rename -uid "FFC40DB2-194D-DC57-32F9-5AAEE1C0B717";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1 24 1 48 1 72 1 96 1;
	setAttr -s 5 ".kit[1:4]"  1 18 18 18;
	setAttr -s 5 ".kot[1:4]"  1 18 18 18;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTU -n "RightElbow_Control_scaleZ";
	rename -uid "05B1A973-4144-4D8C-65FA-E6AD45098710";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  12 1 24 1 48 1 72 1 96 1;
	setAttr -s 5 ".kit[1:4]"  1 18 18 18;
	setAttr -s 5 ".kot[1:4]"  1 18 18 18;
	setAttr -s 5 ".kix[1:4]"  1 1 1 1;
	setAttr -s 5 ".kiy[1:4]"  0 0 0 0;
	setAttr -s 5 ".kox[1:4]"  1 1 1 1;
	setAttr -s 5 ".koy[1:4]"  0 0 0 0;
createNode animCurveTU -n "pCube1_visibility";
	rename -uid "4CAC2BEC-934C-6936-9BCC-3AAFDC08A9B4";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "pCube1_translateX";
	rename -uid "06CDD1BB-5D47-0BB2-5813-2DB01A2028E4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 0;
createNode animCurveTL -n "pCube1_translateY";
	rename -uid "188CF610-2241-AC8B-A325-DCB7EB62B9B2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 100;
createNode animCurveTL -n "pCube1_translateZ";
	rename -uid "F8D47903-5A41-97CC-A4DD-E78CA12BC3FE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 100;
createNode animCurveTU -n "pCube1_scaleX";
	rename -uid "2CAD84BC-E745-972E-0E09-509DA19185B7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 1;
createNode animCurveTU -n "pCube1_scaleY";
	rename -uid "09F26EA8-7948-9865-1F34-C9886C9FAA9B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 1;
createNode animCurveTU -n "pCube1_scaleZ";
	rename -uid "888B399F-E240-52C8-7C5F-4987EFA381A1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  24 1;
select -ne :time1;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".o" 12;
	setAttr -av ".unw" 12;
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
connectAttr "LeftToes_Control_visibility.o" "CombotRN.phl[55]";
connectAttr "LeftToes_Control_translateX.o" "CombotRN.phl[56]";
connectAttr "LeftToes_Control_translateY.o" "CombotRN.phl[57]";
connectAttr "LeftToes_Control_translateZ.o" "CombotRN.phl[58]";
connectAttr "LeftToes_Control_scaleX.o" "CombotRN.phl[59]";
connectAttr "LeftToes_Control_scaleY.o" "CombotRN.phl[60]";
connectAttr "LeftToes_Control_scaleZ.o" "CombotRN.phl[61]";
connectAttr "LeftKnee_Control_translateX.o" "CombotRN.phl[62]";
connectAttr "LeftKnee_Control_translateZ.o" "CombotRN.phl[63]";
connectAttr "LeftKnee_Control_translateY.o" "CombotRN.phl[64]";
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
connectAttr "Spine2_Control_visibility.o" "CombotRN.phl[95]";
connectAttr "Spine2_Control_translateX.o" "CombotRN.phl[96]";
connectAttr "Spine2_Control_translateY.o" "CombotRN.phl[97]";
connectAttr "Spine2_Control_translateZ.o" "CombotRN.phl[98]";
connectAttr "Spine2_Control_scaleX.o" "CombotRN.phl[99]";
connectAttr "Spine2_Control_scaleY.o" "CombotRN.phl[100]";
connectAttr "Spine2_Control_scaleZ.o" "CombotRN.phl[101]";
connectAttr "LeftClav_Control_rotateX.o" "CombotRN.phl[102]";
connectAttr "LeftClav_Control_rotateY.o" "CombotRN.phl[103]";
connectAttr "LeftClav_Control_rotateZ.o" "CombotRN.phl[104]";
connectAttr "LeftClav_Control_visibility.o" "CombotRN.phl[105]";
connectAttr "LeftClav_Control_translateX.o" "CombotRN.phl[106]";
connectAttr "LeftClav_Control_translateY.o" "CombotRN.phl[107]";
connectAttr "LeftClav_Control_translateZ.o" "CombotRN.phl[108]";
connectAttr "LeftClav_Control_scaleX.o" "CombotRN.phl[109]";
connectAttr "LeftClav_Control_scaleY.o" "CombotRN.phl[110]";
connectAttr "LeftClav_Control_scaleZ.o" "CombotRN.phl[111]";
connectAttr "RightClav_Control_rotateX.o" "CombotRN.phl[112]";
connectAttr "RightClav_Control_rotateY.o" "CombotRN.phl[113]";
connectAttr "RightClav_Control_rotateZ.o" "CombotRN.phl[114]";
connectAttr "RightClav_Control_visibility.o" "CombotRN.phl[115]";
connectAttr "RightClav_Control_translateX.o" "CombotRN.phl[116]";
connectAttr "RightClav_Control_translateY.o" "CombotRN.phl[117]";
connectAttr "RightClav_Control_translateZ.o" "CombotRN.phl[118]";
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
connectAttr "LeftShoulder_Control_visibility.o" "CombotRN.phl[145]";
connectAttr "LeftShoulder_Control_translateX.o" "CombotRN.phl[146]";
connectAttr "LeftShoulder_Control_translateY.o" "CombotRN.phl[147]";
connectAttr "LeftShoulder_Control_translateZ.o" "CombotRN.phl[148]";
connectAttr "LeftShoulder_Control_scaleX.o" "CombotRN.phl[149]";
connectAttr "LeftShoulder_Control_scaleY.o" "CombotRN.phl[150]";
connectAttr "LeftShoulder_Control_scaleZ.o" "CombotRN.phl[151]";
connectAttr "RightShoulder_Control_rotateX.o" "CombotRN.phl[152]";
connectAttr "RightShoulder_Control_rotateY.o" "CombotRN.phl[153]";
connectAttr "RightShoulder_Control_rotateZ.o" "CombotRN.phl[154]";
connectAttr "RightShoulder_Control_visibility.o" "CombotRN.phl[155]";
connectAttr "RightShoulder_Control_translateX.o" "CombotRN.phl[156]";
connectAttr "RightShoulder_Control_translateY.o" "CombotRN.phl[157]";
connectAttr "RightShoulder_Control_translateZ.o" "CombotRN.phl[158]";
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
connectAttr "LeftElbow_Control_visibility.o" "CombotRN.phl[190]";
connectAttr "LeftElbow_Control_scaleX.o" "CombotRN.phl[191]";
connectAttr "LeftElbow_Control_scaleY.o" "CombotRN.phl[192]";
connectAttr "LeftElbow_Control_scaleZ.o" "CombotRN.phl[193]";
connectAttr "RightElbow_Control_translateX.o" "CombotRN.phl[194]";
connectAttr "RightElbow_Control_translateY.o" "CombotRN.phl[195]";
connectAttr "RightElbow_Control_translateZ.o" "CombotRN.phl[196]";
connectAttr "RightElbow_Control_rotateX.o" "CombotRN.phl[197]";
connectAttr "RightElbow_Control_rotateY.o" "CombotRN.phl[198]";
connectAttr "RightElbow_Control_rotateZ.o" "CombotRN.phl[199]";
connectAttr "RightElbow_Control_visibility.o" "CombotRN.phl[200]";
connectAttr "RightElbow_Control_scaleX.o" "CombotRN.phl[201]";
connectAttr "RightElbow_Control_scaleY.o" "CombotRN.phl[202]";
connectAttr "RightElbow_Control_scaleZ.o" "CombotRN.phl[203]";
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
connectAttr "pCube1_rotateX.o" "pCube1.rx";
connectAttr "pCube1_rotateY.o" "pCube1.ry";
connectAttr "pCube1_rotateZ.o" "pCube1.rz";
connectAttr "pCube1_visibility.o" "pCube1.v";
connectAttr "pCube1_translateX.o" "pCube1.tx";
connectAttr "pCube1_translateY.o" "pCube1.ty";
connectAttr "pCube1_translateZ.o" "pCube1.tz";
connectAttr "pCube1_scaleX.o" "pCube1.sx";
connectAttr "pCube1_scaleY.o" "pCube1.sy";
connectAttr "pCube1_scaleZ.o" "pCube1.sz";
connectAttr "Extras.di" "pCube1.do";
connectAttr "polyCube1.out" "pCubeShape1.i";
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
connectAttr "pCubeShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "directionalLight1.iog" ":defaultLightSet.dsm" -na;
connectAttr "directionalLight2.iog" ":defaultLightSet.dsm" -na;
connectAttr "ambientLight1.iog" ":defaultLightSet.dsm" -na;
// End of Combot_StandingCover.ma
