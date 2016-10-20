//Maya ASCII 2016 scene
//Name: Soldier@blank.ma
//Last modified: Sat, Aug 13, 2016 09:42:55 PM
//Codeset: UTF-8
file -rdi 1 -ns "Rig" -rfn "SoldierRN" -op "v=0;" -typ "mayaAscii" "/Users/briancollins/Unity/LZisHOT/MayaSource/Soldier.ma";
file -rdi 2 -ns "AssaultRifle" -rfn "Rig:AssaultRifleRN" -op "v=0;" -typ "mayaAscii"
		 "/Users/briancollins/Unity/LZisHOT/MayaSource/equipment/AssaultRifle.ma";
file -rdi 2 -ns "MagPistol" -rfn "Rig:MagPistolRN" -op "v=0;" -typ "mayaAscii"
		 "/Users/briancollins/Unity/LZisHOT/MayaSource/equipment/MagPistol.ma";
file -r -ns "Rig" -dr 1 -rfn "SoldierRN" -op "v=0;" -typ "mayaAscii" "/Users/briancollins/Unity/LZisHOT/MayaSource/Soldier.ma";
requires maya "2016";
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
	rename -uid "6CE440AB-A040-B91F-D13A-E2BE5E889B90";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -124.62319906337558 412.09189134459336 1107.5748454021805 ;
	setAttr ".r" -type "double3" -17.738352729615361 -726.19999999991569 -3.999084139035722e-16 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "0DE61285-5447-869D-E00A-AEB5FBAC336C";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 1134.6576367646403;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 19.403199999999995 47.119000000000014 63.482652878090121 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "D0E184E7-9D44-3DE5-34BD-E1A74F337FC5";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 500.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "2691EFE1-8C49-C518-4B78-1493D2787272";
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
	rename -uid "FD6156BA-F64E-0D62-761D-DCA2D1C0B9D9";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 500.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "BFFB4B99-8744-5AB4-E136-9295218CB449";
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
	rename -uid "6839A743-674C-C471-40C2-67B700EE0762";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 500.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "D2FC12E8-0B4F-6E70-4197-08BA46EE426F";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 500.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "FCB7A91F-4F4F-9FE8-1846-3FB3A69D9164";
	setAttr -s 13 ".lnk";
	setAttr -s 13 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "8E279738-0046-5227-FCE9-DFAF672890D9";
createNode displayLayer -n "defaultLayer";
	rename -uid "1AB385CB-214F-9970-0753-9C86125E5ACE";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "83836858-CE4E-4F51-7791-8C9C3937FA65";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "44DEDE57-A44F-9171-5C0E-3799E9DF38E3";
	setAttr ".g" yes;
createNode ilrOptionsNode -s -n "TurtleRenderOptions";
	rename -uid "88063F33-5A4D-AAE2-0B70-1D81157C729C";
lockNode -l 1 ;
createNode ilrUIOptionsNode -s -n "TurtleUIOptions";
	rename -uid "8191F328-1A4D-8202-D20C-C18C8CF85652";
lockNode -l 1 ;
createNode ilrBakeLayerManager -s -n "TurtleBakeLayerManager";
	rename -uid "2E3D703E-914A-B448-E9BD-7EBF875E5927";
lockNode -l 1 ;
createNode ilrBakeLayer -s -n "TurtleDefaultBakeLayer";
	rename -uid "CCEFD669-D949-0B40-BB86-6EA0205654DA";
lockNode -l 1 ;
createNode reference -n "SoldierRN";
	rename -uid "1E86ECD2-0644-F8DA-DF6F-989E45B91B26";
	setAttr ".ed" -type "dataReferenceEdits" 
		"SoldierRN"
		"Soldier:AssaultRifleRN" 0
		"Rig:MagPistolRN" 0
		"Soldier:MagPistolRN" 0
		"Rig:AssaultRifleRN" 0
		"SoldierRN" 0
		"Rig:MagPistolRN" 6
		2 "|Rig:Extra|Rig:MagPistol:MagPistol|Rig:MagPistol:MagPistolShape" "uvPivot" 
		" -type \"double2\" 0.69817072153091431 0.29261106252670288"
		2 "|Rig:Extra|Rig:MagPistol:MagPistol|Rig:MagPistol:MagPistolShape" "uvSet[0].uvSetName" 
		" -type \"string\" \"map1\""
		2 "|Rig:Extra|Rig:MagPistol:MagPistol|Rig:MagPistol:MagPistolShape" "uvst[0].uvsp[0:59]" 
		(" -s 60 -type \"float2\" 0.77128649000000005 0.28453266999999999 0.79389215000000002 0.22208797999999999 0.88034546000000002 0.22209263000000001 0.85083054999999996 0.33428109 0.51269102 0.47677016 0.49115825000000002 0.44995403 0.66977799000000005 0.44995403 0.66977799000000005 0.47677016 0.77130412999999998 0.40493702999999998 0.85314487999999999 0.40401052999999998 0.70777690000000004 0.40493702999999998 0.70777690000000004 0.30592357999999997 0.45691752000000002 0.40493702999999998 0.45691752000000002 0.30592357999999997 0.75271796999999996 0.28148735000000003 0.76381409 0.22209835 0.74447465000000002 0.28148735000000003 0.75557089 0.22209835 0.68793844999999998 0.28453266999999999 0.78564882000000003 0.22208797999999999 0.89742827000000003 0.23229217999999999 0.88576960999999999 0.31837105999999998 0.77128649000000005 0.28453266999999999 0.85083054999999996 0.33428109 0.88034546000000002 0.22209263000000001 0.79389215000000002 0.22208797999999999 0.66977799000000005 0.44995403 0.49115825000000002 0.44995403"
		+ " 0.77130412999999998 0.40493702999999998 0.85314487999999999 0.40493702999999998 0.70777690000000004 0.40493702999999998 0.70777690000000004 0.30592357999999997 0.45691752000000002 0.40493702999999998 0.45691752000000002 0.30592357999999997 0.76381409 0.22209835 0.75271796999999996 0.28148735000000003 0.84178518999999996 0.11776018000000001 0.91855407 0.15193343000000001 0.82957994999999995 0.11232470999999999 0.93944645000000004 0.16123772 0.91855407 0.15193343000000001 0.84178518999999996 0.11776018000000001 0.70777690000000004 0.43175316000000002 0.77133929999999995 0.43175316000000002 0.85306704 0.43175316000000002 0.45691752000000002 0.40534806000000001 0.92511069999999995 0.37228297999999999 0.90651320999999996 0.40611053000000003 0.90605354000000005 0.40694713999999998 0.92511069999999995 0.37228297999999999 0.89273572000000001 0.43117022999999999 0.93360615000000002 0.35683119000000002 0.47783386999999999 0.28453266999999999 0.91823781000000004 0.14089572 0.85383534000000005 0.11222744 0.8453589700000"
		+ "0004 0.10845196 0.85383534000000005 0.11222744 0.91823781000000004 0.14089572 0.93274689 0.14735806000000001 0.45689499 0.30592357999999997"
		)
		2 "|Rig:Extra|Rig:MagPistol:MagPistol|Rig:MagPistol:Magazine|Rig:MagPistol:MagazineShape" 
		"uvPivot" " -type \"double2\" 0.2086557149887085 0.11233295500278473"
		2 "|Rig:Extra|Rig:MagPistol:MagPistol|Rig:MagPistol:Magazine|Rig:MagPistol:MagazineShape" 
		"uvSet[0].uvSetName" " -type \"string\" \"map1\""
		2 "|Rig:Extra|Rig:MagPistol:MagPistol|Rig:MagPistol:Magazine|Rig:MagPistol:MagazineShape" 
		"uvst[0].uvsp[0:39]" (" -s 40 -type \"float2\" 0.090734243000000006 0.033896111 0.093898236999999996 0.044794619000000001 0.13004584999999999 0.16930966 0.13457211999999999 0.18490091 0.10700721000000001 0.040988989000000003 0.14315484000000001 0.16550403999999999 0.14768112 0.18109527 0.10384327 0.030090480999999999 0.36097717000000001 0.15793693 0.33046952000000002 0.052849411999999998 0.32826402999999998 0.045252441999999997 0.36413223 0.16880487999999999 0.10997313 0.051205742999999998 0.14048089 0.15629332000000001 0.10776782 0.043608873999999999 0.14363593999999999 0.16716128999999999 0.053179204000000001 0.19457542999999999 0.095576047999999997 0.18389734999999999 0.095576047999999997 0.061901033000000001 0.053179204000000001 0.046625136999999997 0.053179204000000001 0.19457542999999999 0.095576047999999997 0.18389734999999999 0.095576047999999997 0.061901033000000001 0.053179204000000001 0.046625136999999997 0.093898236999999996 0.044794619000000001 0.10700721000000001 0.040988989000000003 0.14315484000000001 0.16550403999999"
		+ "999 0.13004584999999999 0.16930966 0.14768112 0.18109527 0.13457211999999999 0.18490091 0.090734243000000006 0.033896111 0.10384327 0.030090480999999999 0.36097717000000001 0.15793693 0.33046952000000002 0.052849411999999998 0.32826402999999998 0.045252441999999997 0.36413223 0.16880487999999999 0.10997313 0.051205742999999998 0.14048089 0.15629332000000001 0.10776782 0.043608873999999999 0.14363593999999999 0.16716128999999999"
		)
		"SoldierRN" 246
		2 "|Rig:Geometry|Rig:Body|Rig:BodyShape" "visibility" " -k 0 1"
		2 "|Rig:Geometry|Rig:Body|Rig:BodyShape" "uvPivot" " -type \"double2\" 0.4994969367980957 0.49276292324066162"
		
		2 "|Rig:Control|Rig:ikHandle7" "translate" " -type \"double3\" -80.1819 111.917 17.22069999999996881"
		
		2 "|Rig:Control|Rig:ikHandle7" "translateX" " -av"
		2 "|Rig:Control|Rig:ikHandle7" "translateY" " -av"
		2 "|Rig:Control|Rig:ikHandle7" "translateZ" " -av"
		2 "|Rig:Control|Rig:ikHandle8" "translate" " -type \"double3\" 80.18189999999998463 111.91699999999993054 17.22069999999999368"
		
		2 "|Rig:Control|Rig:ikHandle8" "translateX" " -av"
		2 "|Rig:Control|Rig:ikHandle8" "translateZ" " -av"
		2 "|Rig:Control|Rig:ikHandle8" "translateY" " -av"
		2 "|Rig:Control|Rig:RootMotion_Control" "translate" " -type \"double3\" 0 0 0"
		
		2 "|Rig:Control|Rig:RootMotion_Control" "rotate" " -type \"double3\" 0 0 0"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:arrow" "translate" " -type \"double3\" 0 0 0"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:arrow" "rotate" " -type \"double3\" 0 0 0"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:arrow1" "translate" " -type \"double3\" 0 0 0"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:arrow1" "rotate" " -type \"double3\" 0 0 0"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14" "visibility" " -av 1"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14" "translate" " -type \"double3\" 0 0 0"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14" "translateX" " -av"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14" "translateY" " -av"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14" "translateZ" " -av"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14" "rotate" " -type \"double3\" 0 0 0"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14" "rotateX" " -av"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14" "rotateY" " -av"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14" "rotateZ" " -av"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14" "scale" " -type \"double3\" 1 1 1"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14" "scaleX" " -av"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14" "scaleY" " -av"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14" "scaleZ" " -av"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14|Rig:nurbsCircle15" 
		"visibility" " -av 1"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14|Rig:nurbsCircle15" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14|Rig:nurbsCircle15" 
		"translateX" " -av"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14|Rig:nurbsCircle15" 
		"translateY" " -av"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14|Rig:nurbsCircle15" 
		"translateZ" " -av"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14|Rig:nurbsCircle15" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14|Rig:nurbsCircle15" 
		"rotateX" " -av"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14|Rig:nurbsCircle15" 
		"rotateY" " -av"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14|Rig:nurbsCircle15" 
		"rotateZ" " -av"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14|Rig:nurbsCircle15" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14|Rig:nurbsCircle15" 
		"scaleX" " -av"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14|Rig:nurbsCircle15" 
		"scaleY" " -av"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14|Rig:nurbsCircle15" 
		"scaleZ" " -av"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14|Rig:nurbsCircle16" 
		"visibility" " -av 1"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14|Rig:nurbsCircle16" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14|Rig:nurbsCircle16" 
		"translateX" " -av"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14|Rig:nurbsCircle16" 
		"translateY" " -av"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14|Rig:nurbsCircle16" 
		"translateZ" " -av"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14|Rig:nurbsCircle16" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14|Rig:nurbsCircle16" 
		"rotateX" " -av"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14|Rig:nurbsCircle16" 
		"rotateY" " -av"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14|Rig:nurbsCircle16" 
		"rotateZ" " -av"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14|Rig:nurbsCircle16" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14|Rig:nurbsCircle16" 
		"scaleX" " -av"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14|Rig:nurbsCircle16" 
		"scaleY" " -av"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14|Rig:nurbsCircle16" 
		"scaleZ" " -av"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12" "visibility" " -av 1"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12" "translate" " -type \"double3\" 0 0 0"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12" "translateX" " -av"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12" "translateY" " -av"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12" "translateZ" " -av"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12" "rotate" " -type \"double3\" 0 0 0"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12" "rotateX" " -av"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12" "rotateY" " -av"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12" "rotateZ" " -av"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12" "scale" " -type \"double3\" 1 1 1"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12" "scaleX" " -av"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12" "scaleY" " -av"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12" "scaleZ" " -av"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12" "Grip" " -av -k 1 0.5"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12|Rig:nurbsCircle13" 
		"visibility" " -av 1"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12|Rig:nurbsCircle13" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12|Rig:nurbsCircle13" 
		"translateX" " -av"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12|Rig:nurbsCircle13" 
		"translateY" " -av"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12|Rig:nurbsCircle13" 
		"translateZ" " -av"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12|Rig:nurbsCircle13" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12|Rig:nurbsCircle13" 
		"rotateX" " -av"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12|Rig:nurbsCircle13" 
		"rotateY" " -av"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12|Rig:nurbsCircle13" 
		"rotateZ" " -av"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12|Rig:nurbsCircle13" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12|Rig:nurbsCircle13" 
		"scaleX" " -av"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12|Rig:nurbsCircle13" 
		"scaleY" " -av"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12|Rig:nurbsCircle13" 
		"scaleZ" " -av"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle10" "visibility" " -av 1"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle10" "translate" " -type \"double3\" 0 0 0"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle10" "translateX" " -av"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle10" "translateY" " -av"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle10" "translateZ" " -av"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle10" "rotate" " -type \"double3\" 0 0 0"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle10" "rotateX" " -av"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle10" "rotateY" " -av"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle10" "rotateZ" " -av"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle10" "scale" " -type \"double3\" 1 1 1"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle10" "scaleX" " -av"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle10" "scaleY" " -av"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle10" "scaleZ" " -av"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle10" "Grip" " -av -k 1 1"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle10|Rig:nurbsCircle11" 
		"visibility" " -av 1"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle10|Rig:nurbsCircle11" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle10|Rig:nurbsCircle11" 
		"translateX" " -av"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle10|Rig:nurbsCircle11" 
		"translateY" " -av"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle10|Rig:nurbsCircle11" 
		"translateZ" " -av"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle10|Rig:nurbsCircle11" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle10|Rig:nurbsCircle11" 
		"rotateX" " -av"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle10|Rig:nurbsCircle11" 
		"rotateY" " -av"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle10|Rig:nurbsCircle11" 
		"rotateZ" " -av"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle10|Rig:nurbsCircle11" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle10|Rig:nurbsCircle11" 
		"scaleX" " -av"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle10|Rig:nurbsCircle11" 
		"scaleY" " -av"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle10|Rig:nurbsCircle11" 
		"scaleZ" " -av"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4" "visibility" " -av 1"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4" "translate" " -type \"double3\" 0 0 0"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4" "translateX" " -av"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4" "translateY" " -av"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4" "translateZ" " -av"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4" "rotate" " -type \"double3\" 0 0 0"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4" "rotateX" " -av"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4" "rotateY" " -av"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4" "rotateZ" " -av"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4" "scale" " -type \"double3\" 1 1 1"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4" "scaleX" " -av"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4" "scaleY" " -av"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4" "scaleZ" " -av"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5" 
		"visibility" " -av 1"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5" 
		"translateX" " -av"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5" 
		"translateY" " -av"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5" 
		"translateZ" " -av"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5" 
		"rotateX" " -av"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5" 
		"rotateY" " -av"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5" 
		"rotateZ" " -av"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5" 
		"scaleX" " -av"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5" 
		"scaleY" " -av"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5" 
		"scaleZ" " -av"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6" 
		"visibility" " -av 1"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6" 
		"translateX" " -av"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6" 
		"translateY" " -av"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6" 
		"translateZ" " -av"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6" 
		"rotateX" " -av"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6" 
		"rotateY" " -av"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6" 
		"rotateZ" " -av"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6" 
		"scaleX" " -av"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6" 
		"scaleY" " -av"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6" 
		"scaleZ" " -av"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle9" 
		"visibility" " -av 1"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle9" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle9" 
		"translateX" " -av"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle9" 
		"translateY" " -av"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle9" 
		"translateZ" " -av"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle9" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle9" 
		"rotateX" " -av"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle9" 
		"rotateY" " -av"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle9" 
		"rotateZ" " -av"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle9" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle9" 
		"scaleX" " -av"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle9" 
		"scaleY" " -av"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle9" 
		"scaleZ" " -av"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle8" 
		"visibility" " -av 1"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle8" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle8" 
		"translateX" " -av"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle8" 
		"translateY" " -av"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle8" 
		"translateZ" " -av"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle8" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle8" 
		"rotateX" " -av"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle8" 
		"rotateY" " -av"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle8" 
		"rotateZ" " -av"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle8" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle8" 
		"scaleX" " -av"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle8" 
		"scaleY" " -av"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle8" 
		"scaleZ" " -av"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle7" 
		"visibility" " -av 1"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle7" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle7" 
		"translateX" " -av"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle7" 
		"translateY" " -av"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle7" 
		"translateZ" " -av"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle7" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle7" 
		"rotateX" " -av"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle7" 
		"rotateY" " -av"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle7" 
		"rotateZ" " -av"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle7" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle7" 
		"scaleX" " -av"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle7" 
		"scaleY" " -av"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle7" 
		"scaleZ" " -av"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle17" 
		"visibility" " -av 1"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle17" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle17" 
		"translateX" " -av"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle17" 
		"translateY" " -av"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle17" 
		"translateZ" " -av"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle17" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle17" 
		"rotateX" " -av"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle17" 
		"rotateY" " -av"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle17" 
		"rotateZ" " -av"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle17" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle17" 
		"scaleX" " -av"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle17" 
		"scaleY" " -av"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle17" 
		"scaleZ" " -av"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1" "visibility" " -av 1"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1" "translate" " -type \"double3\" 0 0 0"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1" "translateX" " -av"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1" "translateY" " -av"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1" "translateZ" " -av"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1" "rotate" " -type \"double3\" 0 0 0"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1" "rotateX" " -av"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1" "rotateY" " -av"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1" "rotateZ" " -av"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1" "scale" " -type \"double3\" 1 1 1"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1" "scaleX" " -av"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1" "scaleY" " -av"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1" "scaleZ" " -av"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1|Rig:nurbsCircle2" 
		"visibility" " -av 1"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1|Rig:nurbsCircle2" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1|Rig:nurbsCircle2" 
		"translateX" " -av"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1|Rig:nurbsCircle2" 
		"translateY" " -av"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1|Rig:nurbsCircle2" 
		"translateZ" " -av"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1|Rig:nurbsCircle2" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1|Rig:nurbsCircle2" 
		"rotateX" " -av"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1|Rig:nurbsCircle2" 
		"rotateY" " -av"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1|Rig:nurbsCircle2" 
		"rotateZ" " -av"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1|Rig:nurbsCircle2" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1|Rig:nurbsCircle2" 
		"scaleX" " -av"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1|Rig:nurbsCircle2" 
		"scaleY" " -av"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1|Rig:nurbsCircle2" 
		"scaleZ" " -av"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1|Rig:nurbsCircle3" 
		"visibility" " -av 1"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1|Rig:nurbsCircle3" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1|Rig:nurbsCircle3" 
		"translateX" " -av"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1|Rig:nurbsCircle3" 
		"translateY" " -av"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1|Rig:nurbsCircle3" 
		"translateZ" " -av"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1|Rig:nurbsCircle3" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1|Rig:nurbsCircle3" 
		"rotateX" " -av"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1|Rig:nurbsCircle3" 
		"rotateY" " -av"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1|Rig:nurbsCircle3" 
		"rotateZ" " -av"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1|Rig:nurbsCircle3" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1|Rig:nurbsCircle3" 
		"scaleX" " -av"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1|Rig:nurbsCircle3" 
		"scaleY" " -av"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1|Rig:nurbsCircle3" 
		"scaleZ" " -av"
		2 "|Rig:Extra|Rig:pPlane1|Rig:pPlaneShape1" "uvPivot" " -type \"double2\" 0.5 0.5"
		
		2 "|Rig:Extra|Rig:pPlane1|Rig:pPlaneShape1" "uvSet[0].uvSetName" " -type \"string\" \"map1\""
		
		2 "|Rig:Extra|Rig:pPlane1|Rig:pPlaneShape1" "uvst[0].uvsp[0:3]" " -s 4 -type \"float2\" 0 0 1 0 0 1 1 1"
		
		2 "|Rig:Extra|Rig:Head|Rig:HeadShape" "instObjGroups.objectGroups[0].objectGrpCompList" 
		" -type \"componentList\" 1 \"f[0:197]\""
		2 "|Rig:Extra|Rig:Head|Rig:HeadShape" "uvPivot" " -type \"double2\" 0.49785628914833069 0.74589997529983521"
		
		2 "|Rig:Extra|Rig:Head|Rig:HeadShape" "uvSet[0].uvSetName" " -type \"string\" \"map1\""
		
		2 "|Rig:Extra|Rig:Head|Rig:HeadShape" "uvst[0].uvsp[0:203]" (" -s 204 -type \"float2\" 0.090572596000000005 0.83825707000000005 0.099136352999999997 0.91197978999999996 0.041173220000000003 0.91939992000000004 0.035746932000000002 0.84475464 0.081485032999999998 0.74436033000000001 0.029113770000000001 0.75351 0.077968000999999995 0.69984716000000002 0.082224369000000005 0.72937942 0.028042078000000002 0.73877000999999998 0.025527239 0.70417655000000001 0.37644881000000002 0.88834935000000004 0.39705294000000002 0.87767534999999997 0.38670211999999998 0.91381453999999995 0.35394787999999999 0.81056631000000001 0.42076226999999999 0.85844904 0.36286174999999998 0.86130421999999995 0.4622387 0.81101661999999997 0.47300667000000002 0.85841023999999999 0.40105474000000002 0.94481378999999999 0.12790966000000001 0.72951781999999998 0.11731171999999999 0.69746821999999997 0.15565072999999999 0.83233975999999998 0.15004301 0.73883211999999998 0.16084850000000001 0.90134506999999997 0.20146644 0.95464987000000001 0.19656491000000001 0.98889768 0.30321753000000001 0.94369632000000"
		+ "003 0.29757148 0.9132787 0.20211029 0.91959071000000003 0.29280614999999999 0.87852198000000004 0.20263326000000001 0.89238810999999996 0.28508847999999998 0.82122611999999995 0.19859742999999999 0.83140146999999998 0.31283462000000001 0.97845983999999997 0.27520012999999999 0.60365975000000005 0.17539727999999999 0.63600820000000002 0.26948577000000001 0.58581280999999996 0.3127259 0.52426404000000004 0.49786222000000002 0.50287305999999998 0.49786001000000002 0.54832530000000002 0.29517328999999998 0.54999471 0.34930682000000002 0.58951103999999999 0.18287872999999999 0.67070538000000002 0.27722341 0.61788690000000002 0.27856027999999999 0.69072794999999998 0.18673658000000001 0.71696108999999997 0.34820258999999998 0.60796475000000005 0.42972472 0.88664668999999996 0.49784361999999999 0.88620012999999997 0.40988350000000001 0.81148279000000001 0.40895682999999999 0.72695427999999995 0.46856146999999998 0.74577629999999995 0.27902651000000001 0.72774916999999995 0.34873705999999999 0.71563374999999996 0.375"
		+ "37651999999999 0.71071768000000002 0.44330844000000003 0.70074141000000001 0.45582740999999999 0.71452068999999996 0.46658829000000002 0.68492293000000004 0.47122641999999998 0.69651388999999997 0.37476522000000001 0.67365335999999998 0.43904731000000002 0.67504786999999999 0.49785399000000002 0.67235350999999999 0.49785328000000001 0.68718970000000001 0.46987023999999999 0.73702787999999997 0.49785095000000001 0.73536091999999997 0.49784498999999999 0.85796380000000005 0.49784731999999998 0.81107235 0.34884970999999998 0.67323792000000005 0.18948913000000001 0.74752735999999997 0.11275578 0.95134448999999999 0.044562339999999999 0.96602434000000004 0.17095268 0.92020332999999999 0.17111397 0.61387049999999999 0.26225531000000002 0.56076115000000004 0.27947807000000002 0.54027294999999997 0.29312521000000002 0.51490939000000002 0.49785054000000001 0.74228293000000001 0.43081954 0.62107860999999998 0.40386151999999997 0.62798076999999997 0.40261710000000001 0.62876533999999995 0.37750703000000002 0.59989417 0."
		+ "42640012999999999 0.55482816999999995 0.49785670999999998 0.61846352000000004 0.49785565999999998 0.63769757999999999 0.49785528000000001 0.64733874999999996 0.42347789000000002 0.64076328000000005 0.16170298999999999 0.57911062000000002 0.15764105 0.56869793000000002 0.23728323000000001 0.52715290000000004 0.22735321999999999 0.51470952999999997 0.42691654000000001 0.63400274999999995 0.40448075999999999 0.62945092000000002 0.40319191999999998 0.63095403000000005 0.49785512999999998 0.64865649000000003 0.49785495000000002 0.65182364000000004 0.43171176 0.64818757999999999 0.43111175000000002 0.64434785000000006 0.432109 0.63967501999999998 0.432731 0.64315867000000004 0.4978554 0.64419954999999995 0.49785528000000001 0.64643896000000001 0.15766740000000001 0.66382635000000001 0.024091482000000001 0.68442738000000003 0.075741053000000003 0.67897099000000005 0.10936427 0.67504942000000001 0.14484011999999999 0.64934069000000005 0.072429179999999996 0.62281918999999997 0.019791125999999999 0.62527418000000001 0"
		+ ".42074602999999999 0.51217473000000002 0.35781014 0.55628412999999999 0.90511936000000004 0.83829640999999999 0.89654845000000005 0.91201842 0.95451087000000001 0.91944413999999997 0.95994449000000004 0.84479939999999998 0.91421598000000004 0.74440086000000005 0.96658659000000002 0.75355548000000006 0.91773742000000003 0.69988786999999997 0.91347807999999997 0.72941971000000005 0.96765959000000001 0.73881578000000003 0.97017777000000005 0.70422249999999997 0.59863520000000003 0.87768513000000004 0.57492774999999996 0.85845649000000002 0.56596254999999995 0.88665335999999995 0.64174675999999997 0.81058030999999997 0.58581095999999999 0.81149119000000003 0.63282806000000003 0.86131721999999999 0.53345584999999995 0.81102008000000003 0.52268338000000003 0.85841261999999996 0.86779284000000001 0.72955369999999997 0.87839389000000001 0.69750511999999998 0.84004182000000005 0.83237289999999997 0.84565853999999996 0.73886596999999998 0.83483737999999996 0.90137774000000004 0.88292526999999998 0.95138180000000006 0.9"
		+ "5111734000000003 0.96606820999999998 0.61923826000000004 0.88836110000000001 0.60898244000000001 0.91382527000000002 0.69246434999999995 0.94371510000000003 0.69811319999999999 0.91329800999999999 0.82473147000000002 0.92023491999999996 0.70288205000000004 0.87854189000000005 0.79305345000000005 0.89241665999999997 0.71060513999999997 0.82124680000000005 0.79709542 0.83143054999999999 0.68284392000000005 0.97847759999999995 0.59462678000000002 0.94482303000000001 0.7935738 0.91961926000000005 0.79421430999999998 0.95467853999999996 0.79911244000000003 0.98892689 0.72051465999999997 0.60368127000000005 0.82031434999999997 0.63603944000000001 0.72623073999999999 0.58583503999999997 0.56931925000000005 0.55483519999999997 0.57497752000000002 0.51218218000000004 0.64640938999999997 0.58952539999999998 0.81282949000000004 0.67073583999999997 0.71848988999999996 0.61790829999999997 0.71714604000000004 0.69074917000000002 0.80896716999999996 0.71699131000000005 0.83804160000000005 0.66385925000000001 0.6475117200000"
		+ "0001 0.60797935999999997 0.58674574000000002 0.72696285999999999 0.52713942999999996 0.74577916 0.62032788999999999 0.71072959999999996 0.55239671000000001 0.70074683000000004 0.53987646 0.71452475000000004 0.52911841999999998 0.68492602999999996 0.52447915000000001 0.69651638999999999 0.71667612000000003 0.72777033000000002 0.64696681 0.71564817000000003 0.62094252999999999 0.67366528999999997 0.55666040999999999 0.67505371999999997 0.61820792999999996 0.59990584999999996 0.52583146000000003 0.73703068000000005 0.56489336000000001 0.62108523000000004 0.59185076000000003 0.62798989000000005 0.59309511999999998 0.62877470000000002 0.64685833000000004 0.67325246000000005 0.80621176999999999 0.74755716000000005 0.97161536999999998 0.68447316000000002 0.91996628000000003 0.67901182000000004 0.88634360000000001 0.67508727000000002 0.82459998000000001 0.61390226999999997 0.73346352999999997 0.56078397999999996 0.70054673999999995 0.55001443999999999 0.71624279000000002 0.54029417000000002 0.70259797999999996 0.5149"
		+ "2923000000002 0.68299650999999995 0.52428198000000004 0.85087013 0.64937489999999998 0.63790904999999998 0.55629772 0.5722332 0.64077055000000005 0.56879519999999995 0.63400966000000003 0.59123141000000001 0.62945991999999995 0.59252011999999998 0.63096326999999996 0.56399851999999995 0.64819395999999996 0.56459892 0.64435421999999998 0.56360208999999994 0.63968146000000004 0.56297982000000002 0.64316499000000005 0.92328376000000001 0.62286043000000002 0.97592144999999997 0.62532049000000001 0.75843906000000005 0.52717811000000003 0.76837009000000001 0.51473581999999996 0.83401435999999995 0.57914310999999996 0.83807701000000001 0.56873083000000002"
		)
		"Rig:AssaultRifleRN" 5
		2 "|Rig:Extra|Rig:AssaultRifle:AssaultRifle|Rig:AssaultRifle:AssaultRifleShape" 
		"uvPivot" " -type \"double2\" 0.4986929576843977 0.73043158650398254"
		2 "|Rig:Extra|Rig:AssaultRifle:AssaultRifle|Rig:AssaultRifle:AssaultRifleShape" 
		"uvSet[0].uvSetName" " -type \"string\" \"map1\""
		2 "|Rig:Extra|Rig:AssaultRifle:AssaultRifle|Rig:AssaultRifle:Magazine|Rig:AssaultRifle:MagazineShape" 
		"uvPivot" " -type \"double2\" 0.18745744228363037 0.11233295500278473"
		2 "|Rig:Extra|Rig:AssaultRifle:AssaultRifle|Rig:AssaultRifle:Magazine|Rig:AssaultRifle:MagazineShape" 
		"uvSet[0].uvSetName" " -type \"string\" \"map1\""
		2 "|Rig:Extra|Rig:AssaultRifle:AssaultRifle|Rig:AssaultRifle:Magazine|Rig:AssaultRifle:MagazineShape" 
		"uvst[0].uvsp[0:29]" (" -s 30 -type \"float2\" 0.090734243000000006 0.033896111 0.093898236999999996 0.044794619000000001 0.13004584999999999 0.16930966 0.13457211999999999 0.18490091 0.13004584999999999 0.16930966 0.093898236999999996 0.044794619000000001 0.10700721000000001 0.040988989000000003 0.14315484000000001 0.16550403999999999 0.14768112 0.18109527 0.10384327 0.030090480999999999 0.14315484000000001 0.16550403999999999 0.10700721000000001 0.040988989000000003 0.36097717000000001 0.15793693 0.33046952000000002 0.052849411999999998 0.32826402999999998 0.045252441999999997 0.36413223 0.16880487999999999 0.36097717000000001 0.15793693 0.33046952000000002 0.052849352000000002 0.10997313 0.051205742999999998 0.14048089 0.15629332000000001 0.10776782 0.043608873999999999 0.14363593999999999 0.16716128999999999 0.14048089 0.15629333000000001 0.10997324999999999 0.051205716999999998 0.053179204000000001 0.19457542999999999 0.095576047999999997 0.18389734999999999 0.095576047999999997 0.061901033000000001 0.053179204000000001 0.046625"
		+ "136999999997 0.010782659 0.061901033000000001 0.010782659 0.18389734999999999"
		);
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "F0B98847-F34C-3E01-677E-B191D1BF5045";
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
		+ "                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 465\n                -height 305\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n"
		+ "            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n"
		+ "            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n"
		+ "            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 465\n            -height 305\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n"
		+ "                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n"
		+ "                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n"
		+ "                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 465\n                -height 305\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n"
		+ "            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n"
		+ "            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 465\n            -height 305\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"all\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n"
		+ "                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 0\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 0\n                -imagePlane 1\n                -joints 1\n                -ikHandles 0\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 1\n                -captureSequenceNumber -1\n"
		+ "                -width 936\n                -height 655\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"all\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 0\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 0\n            -imagePlane 1\n            -joints 1\n            -ikHandles 0\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 1\n            -captureSequenceNumber -1\n            -width 936\n            -height 655\n"
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
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"all\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 0\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 0\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 1\\n    -captureSequenceNumber -1\\n    -width 936\\n    -height 655\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"all\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 0\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 0\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 1\\n    -captureSequenceNumber -1\\n    -width 936\\n    -height 655\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 100 -size 500 -divisions 2 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "8D7D14DE-9341-8C39-B92F-798E15BB2D69";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 300 -ast 0 -aet 300 ";
	setAttr ".st" 6;
createNode gameFbxExporter -n "gameExporterPreset1";
	rename -uid "FCE9D123-3B41-1F6C-EC61-05A50A4EB106";
	setAttr ".pn" -type "string" "Model Default";
	setAttr ".ils" yes;
	setAttr ".ilu" yes;
	setAttr ".esi" 3;
	setAttr ".ssn" -type "string" "Rig:ExportSet";
	setAttr ".ebm" yes;
	setAttr ".inc" yes;
	setAttr ".fv" -type "string" "FBX201600";
	setAttr ".exp" -type "string" "/Users/briancollins/Unity/LZisHOT/Assets/Characters/Soldier";
	setAttr ".exf" -type "string" "soldier";
createNode gameFbxExporter -n "gameExporterPreset2";
	rename -uid "7F9136C4-3B44-F292-EC1A-52A5DE5A6A4E";
	setAttr ".pn" -type "string" "Anim Default";
	setAttr ".ils" yes;
	setAttr ".eti" 2;
	setAttr ".esi" 3;
	setAttr ".ssn" -type "string" "Rig:ExportSet";
	setAttr -s 3 ".ac";
	setAttr ".ac[0].acn" -type "string" "idle01";
	setAttr ".ac[0].acs" 1;
	setAttr ".ac[0].ace" 120;
	setAttr ".ac[1].acn" -type "string" "idle02";
	setAttr ".ac[1].acs" 120;
	setAttr ".ac[1].ace" 200;
	setAttr ".ac[2].acn" -type "string" "idle03";
	setAttr ".ac[2].acs" 200;
	setAttr ".ac[2].ace" 225;
	setAttr ".ic" no;
	setAttr ".ebm" yes;
	setAttr ".fv" -type "string" "FBX201600";
	setAttr ".exp" -type "string" "/Users/briancollins/Unity/LZisHOT/Assets/Characters/Soldier";
	setAttr ".exf" -type "string" "soldier_idles";
select -ne :time1;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".o" 141;
	setAttr -av ".unw" 141;
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
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 13 ".st";
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
	setAttr -s 15 ".s";
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
	setAttr -s 4 ".r";
select -ne :lightList1;
	setAttr -s 3 ".l";
select -ne :defaultTextureList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 6 ".tx";
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
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr ":TurtleDefaultBakeLayer.idx" ":TurtleBakeLayerManager.bli[0]";
connectAttr ":TurtleRenderOptions.msg" ":TurtleDefaultBakeLayer.rset";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of Soldier@blank.ma
