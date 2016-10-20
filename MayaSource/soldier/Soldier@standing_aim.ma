//Maya ASCII 2016 scene
//Name: Soldier@standing_aim.ma
//Last modified: Sun, Aug 14, 2016 09:59:57 PM
//Codeset: UTF-8
file -rdi 1 -ns "Rig" -rfn "SoldierRN" -op "v=0;" -typ "mayaAscii" "/Users/briancollins/Unity/LZisHOT/MayaSource/Soldier.ma";
file -rdi 2 -ns "AssaultRifle" -rfn "Rig:AssaultRifleRN" -op "v=0;" -typ "mayaAscii"
		 "/Users/briancollins/Unity/LZisHOT/MayaSource/equipment/AssaultRifle.ma";
file -rdi 2 -ns "MagPistol" -rfn "Rig:MagPistolRN" -op "v=0;" -typ "mayaAscii"
		 "/Users/briancollins/Unity/LZisHOT/MayaSource/equipment/MagPistol.ma";
file -rdi 2 -ns "AssaultRifle1" -dr 1 -rfn "Rig:AssaultRifleRN1" -op "v=0;"
		 -typ "mayaAscii" "/Users/briancollins/Unity/LZisHOT/MayaSource/equipment/AssaultRifle.ma";
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
	setAttr ".t" -type "double3" 281.85687565338822 212.7939472168238 552.83128638897574 ;
	setAttr ".r" -type "double3" -14.738352728694444 746.19999999992422 -4.4309348189973851e-16 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "0DE61285-5447-869D-E00A-AEB5FBAC336C";
	setAttr -k off ".v" no;
	setAttr ".pze" yes;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 619.48818477635677;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 19.403199999999995 47.119000000000014 63.482652878090121 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "D0E184E7-9D44-3DE5-34BD-E1A74F337FC5";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 206.31313866267038 1676.0417068939482 420.9387753517376 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "2691EFE1-8C49-C518-4B78-1493D2787272";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 500.1;
	setAttr ".ow" 2348.8974393737035;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "FD6156BA-F64E-0D62-761D-DCA2D1C0B9D9";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 108.33286159170547 2346.2906535249808 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "BFFB4B99-8744-5AB4-E136-9295218CB449";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 500.1;
	setAttr ".ow" 361.0381933485952;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "6839A743-674C-C471-40C2-67B700EE0762";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1523.7609906535909 146.86674644136775 661.86671280793121 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "D2FC12E8-0B4F-6E70-4197-08BA46EE426F";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 500.1;
	setAttr ".ow" 3495.0399967479993;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "pivot1";
	rename -uid "58B4C0B6-964F-4261-8DDE-FFA0CDB31F7F";
createNode locator -n "pivotShape1" -p "pivot1";
	rename -uid "4318E7CE-404D-C4FD-78E9-3D93C86E8E40";
	setAttr -k off ".v";
createNode transform -n "forward" -p "pivot1";
	rename -uid "0B912B8E-6D40-D992-D743-D9B286D8D131";
	setAttr ".t" -type "double3" 0 100 1000 ;
createNode mesh -n "forwardShape" -p "|pivot1|forward";
	rename -uid "2A6FD414-254B-4EC2-CEA9-9F84A33AA271";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pivot2";
	rename -uid "A96EB28B-E148-6FCE-F8BD-19A4AC636432";
	setAttr ".r" -type "double3" 0 90 0 ;
createNode locator -n "pivotShape2" -p "pivot2";
	rename -uid "DB91208F-624F-29D7-E6EB-CDB2763A9569";
	setAttr -k off ".v";
createNode transform -n "forward" -p "pivot2";
	rename -uid "2F4F6923-C44A-24F2-3F38-1A8078536A27";
	setAttr ".t" -type "double3" 0 100 1000 ;
createNode mesh -n "forwardShape" -p "|pivot2|forward";
	rename -uid "8BCE6B13-BF4B-E308-64D4-3A8C8934F876";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -25 -100 25 25 -100 25 -25 100 25 25 100 25
		 -25 100 -25 25 100 -25 -25 -100 -25 25 -100 -25;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pivot3";
	rename -uid "A304CC45-E34D-D270-A474-F2B964F02AF5";
	setAttr ".r" -type "double3" 0 -90 0 ;
createNode locator -n "pivotShape3" -p "pivot3";
	rename -uid "9A9E930A-4746-5ECD-90F1-FABF5B25E4FB";
	setAttr -k off ".v";
createNode transform -n "forward" -p "pivot3";
	rename -uid "E2877820-1246-94D4-E388-FFB2D54CDEE9";
	setAttr ".t" -type "double3" 0 100 1000 ;
createNode mesh -n "forwardShape" -p "|pivot3|forward";
	rename -uid "574495F5-F04B-AAB4-F669-DD844C765DF3";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -25 -100 25 25 -100 25 -25 100 25 25 100 25
		 -25 100 -25 25 100 -25 -25 -100 -25 25 -100 -25;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pivot4";
	rename -uid "D5C0B3D5-AD42-916E-1828-848517BA4D36";
	setAttr ".r" -type "double3" 0 -45 0 ;
createNode locator -n "pivotShape4" -p "pivot4";
	rename -uid "251E3D5A-D844-90AA-D32C-93AC871DDFD1";
	setAttr -k off ".v";
createNode transform -n "forward" -p "pivot4";
	rename -uid "B849CE1F-CC41-A2B2-4D61-9EAE8D79005E";
	setAttr ".t" -type "double3" 0 100 1000 ;
createNode mesh -n "forwardShape" -p "|pivot4|forward";
	rename -uid "07095B84-C946-5749-C26E-4394A449206A";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -25 -100 25 25 -100 25 -25 100 25 25 100 25
		 -25 100 -25 25 100 -25 -25 -100 -25 25 -100 -25;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pivot5";
	rename -uid "53BFF373-1347-60B9-2E71-7DA65700BE28";
	setAttr ".r" -type "double3" 0 45 0 ;
createNode locator -n "pivotShape5" -p "pivot5";
	rename -uid "E13DDA38-8F41-5F89-F345-06A6AD3DBB2E";
	setAttr -k off ".v";
createNode transform -n "forward" -p "pivot5";
	rename -uid "34A366D1-5949-5BF5-1278-B18E84C864E4";
	setAttr ".t" -type "double3" 0 100 1000 ;
createNode mesh -n "forwardShape" -p "|pivot5|forward";
	rename -uid "D3C0D826-1345-8FC5-78A6-DA9E62AB1CA0";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -25 -100 25 25 -100 25 -25 100 25 25 100 25
		 -25 100 -25 25 100 -25 -25 -100 -25 25 -100 -25;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "nurbsCircle18";
	rename -uid "EFE9F242-744A-CA05-DB0C-03B67C001A6A";
createNode nurbsCurve -n "nurbsCircleShape1" -p "nurbsCircle18";
	rename -uid "9E42E26B-4846-E84E-1240-149686F8DF56";
	setAttr -k off ".v";
	setAttr ".tw" yes;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "783BAF71-6D41-B3A1-B1E8-9794C224DE2C";
	setAttr -s 13 ".lnk";
	setAttr -s 13 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "92710817-F540-9160-C7E3-95A05408A234";
	setAttr ".cdl" 1;
	setAttr -s 2 ".dli[1]"  1;
	setAttr -s 2 ".dli";
createNode displayLayer -n "defaultLayer";
	rename -uid "1AB385CB-214F-9970-0753-9C86125E5ACE";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "416B560D-E344-AA3E-A9EB-7E949914128F";
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
	setAttr -s 230 ".phl";
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
	setAttr ".ed" -type "dataReferenceEdits" 
		"SoldierRN"
		"Soldier:AssaultRifleRN" 0
		"Rig:MagPistolRN" 0
		"Soldier:MagPistolRN" 0
		"Rig:AssaultRifleRN" 0
		"SoldierRN" 1
		2 "|Rig:Skeleton|Rig:RootMotion|Rig:pCube2|Rig:pCubeShape1" "uvSet[0].uvSetName" 
		" -type \"string\" \"map1\""
		"Rig:MagPistolRN" 9
		2 "|Rig:Extra|Rig:MagPistol:MagPistol" "visibility" " -av 1"
		2 "|Rig:Extra|Rig:MagPistol:MagPistol|Rig:MagPistol:MagPistolShape" "uvPivot" 
		" -type \"double2\" 0.69817072153091431 0.29261106252670288"
		2 "|Rig:Extra|Rig:MagPistol:MagPistol|Rig:MagPistol:MagPistolShape" "uvSet[0].uvSetName" 
		" -type \"string\" \"map1\""
		2 "|Rig:Extra|Rig:MagPistol:MagPistol|Rig:MagPistol:MagPistolShape" "uvst[0].uvsp[0:59]" 
		(" -s 60 -type \"float2\" 0.77128649000000005 0.28453266999999999 0.79389215000000002 0.22208797999999999 0.88034546000000002 0.22209263000000001 0.85083054999999996 0.33428109 0.51269102 0.47677016 0.49115825000000002 0.44995403 0.66977799000000005 0.44995403 0.66977799000000005 0.47677016 0.77130412999999998 0.40493702999999998 0.85314487999999999 0.40401052999999998 0.70777690000000004 0.40493702999999998 0.70777690000000004 0.30592357999999997 0.45691752000000002 0.40493702999999998 0.45691752000000002 0.30592357999999997 0.75271796999999996 0.28148735000000003 0.76381409 0.22209835 0.74447465000000002 0.28148735000000003 0.75557089 0.22209835 0.68793844999999998 0.28453266999999999 0.78564882000000003 0.22208797999999999 0.89742827000000003 0.23229217999999999 0.88576960999999999 0.31837105999999998 0.77128649000000005 0.28453266999999999 0.85083054999999996 0.33428109 0.88034546000000002 0.22209263000000001 0.79389215000000002 0.22208797999999999 0.66977799000000005 0.44995403 0.49115825000000002 0.44995403"
		+ " 0.77130412999999998 0.40493702999999998 0.85314487999999999 0.40493702999999998 0.70777690000000004 0.40493702999999998 0.70777690000000004 0.30592357999999997 0.45691752000000002 0.40493702999999998 0.45691752000000002 0.30592357999999997 0.76381409 0.22209835 0.75271796999999996 0.28148735000000003 0.84178518999999996 0.11776018000000001 0.91855407 0.15193343000000001 0.82957994999999995 0.11232470999999999 0.93944645000000004 0.16123772 0.91855407 0.15193343000000001 0.84178518999999996 0.11776018000000001 0.70777690000000004 0.43175316000000002 0.77133929999999995 0.43175316000000002 0.85306704 0.43175316000000002 0.45691752000000002 0.40534806000000001 0.92511069999999995 0.37228297999999999 0.90651320999999996 0.40611053000000003 0.90605354000000005 0.40694713999999998 0.92511069999999995 0.37228297999999999 0.89273572000000001 0.43117022999999999 0.93360615000000002 0.35683119000000002 0.47783386999999999 0.28453266999999999 0.91823781000000004 0.14089572 0.85383534000000005 0.11222744 0.8453589700000"
		+ "0004 0.10845196 0.85383534000000005 0.11222744 0.91823781000000004 0.14089572 0.93274689 0.14735806000000001 0.45689499 0.30592357999999997"
		)
		2 "|Rig:Extra|Rig:MagPistol:MagPistol|Rig:MagPistol:Muzzle|Rig:MagPistol:AimLine" 
		"visibility" " 1"
		2 "|Rig:Extra|Rig:MagPistol:MagPistol|Rig:MagPistol:Magazine|Rig:MagPistol:MagazineShape" 
		"uvPivot" " -type \"double2\" 0.2086557149887085 0.11233295500278473"
		2 "|Rig:Extra|Rig:MagPistol:MagPistol|Rig:MagPistol:Magazine|Rig:MagPistol:MagazineShape" 
		"uvSet[0].uvSetName" " -type \"string\" \"map1\""
		2 "|Rig:Extra|Rig:MagPistol:MagPistol|Rig:MagPistol:Magazine|Rig:MagPistol:MagazineShape" 
		"uvst[0].uvsp[0:39]" (" -s 40 -type \"float2\" 0.090734243000000006 0.033896111 0.093898236999999996 0.044794619000000001 0.13004584999999999 0.16930966 0.13457211999999999 0.18490091 0.10700721000000001 0.040988989000000003 0.14315484000000001 0.16550403999999999 0.14768112 0.18109527 0.10384327 0.030090480999999999 0.36097717000000001 0.15793693 0.33046952000000002 0.052849411999999998 0.32826402999999998 0.045252441999999997 0.36413223 0.16880487999999999 0.10997313 0.051205742999999998 0.14048089 0.15629332000000001 0.10776782 0.043608873999999999 0.14363593999999999 0.16716128999999999 0.053179204000000001 0.19457542999999999 0.095576047999999997 0.18389734999999999 0.095576047999999997 0.061901033000000001 0.053179204000000001 0.046625136999999997 0.053179204000000001 0.19457542999999999 0.095576047999999997 0.18389734999999999 0.095576047999999997 0.061901033000000001 0.053179204000000001 0.046625136999999997 0.093898236999999996 0.044794619000000001 0.10700721000000001 0.040988989000000003 0.14315484000000001 0.16550403999999"
		+ "999 0.13004584999999999 0.16930966 0.14768112 0.18109527 0.13457211999999999 0.18490091 0.090734243000000006 0.033896111 0.10384327 0.030090480999999999 0.36097717000000001 0.15793693 0.33046952000000002 0.052849411999999998 0.32826402999999998 0.045252441999999997 0.36413223 0.16880487999999999 0.10997313 0.051205742999999998 0.14048089 0.15629332000000001 0.10776782 0.043608873999999999 0.14363593999999999 0.16716128999999999"
		)
		5 4 "SoldierRN" "|Rig:Extra|Rig:MagPistol:MagPistol.visibility" "SoldierRN.placeHolderList[2]" 
		""
		"SoldierRN" 490
		1 |Rig:MagPistolRNfosterParent1|Rig:MagPistol_parentConstraint1 "RightHand_AttachW1" 
		"w1" " -dcb 0 -ci 1 -k 1 -dv 1 -min 0 -at \"double\""
		2 "|Rig:Geometry|Rig:Body|Rig:BodyShape" "visibility" " -k 0 1"
		2 "|Rig:Geometry|Rig:Body|Rig:BodyShape" "uvPivot" " -type \"double2\" 0.4994969367980957 0.49276292324066162"
		
		2 "|Rig:Skeleton|Rig:RootMotion|Rig:Root_Skel|Rig:Spine1_Skel|Rig:Spine2_Skel|Rig:RightClav_Skel|Rig:RightUpperArm_Skel|Rig:RightLowerArm_Skel|Rig:RightHand_Skel|Rig:RightHand_Attach" 
		"translate" " -type \"double3\" -15 10 0"
		2 "|Rig:Skeleton|Rig:RootMotion|Rig:Root_Skel|Rig:Spine1_Skel|Rig:Spine2_Skel|Rig:RightClav_Skel|Rig:RightUpperArm_Skel|Rig:RightLowerArm_Skel|Rig:RightHand_Skel|Rig:RightHand_Attach" 
		"rotate" " -type \"double3\" -56.37794021227227859 5.56179805962867224 86.27661584543612605"
		
		2 "|Rig:Control|Rig:ikHandle7" "translate" " -type \"double3\" -20.66677344700624985 146.0827357329353049 91.70114539158393541"
		
		2 "|Rig:Control|Rig:ikHandle7" "translateX" " -av"
		2 "|Rig:Control|Rig:ikHandle7" "translateY" " -av"
		2 "|Rig:Control|Rig:ikHandle7" "translateZ" " -av"
		2 "|Rig:Control|Rig:ikHandle8" "translate" " -type \"double3\" 18.57359221962947515 88.50196805109145259 -66.06397066449127919"
		
		2 "|Rig:Control|Rig:ikHandle8" "translateX" " -av"
		2 "|Rig:Control|Rig:ikHandle8" "translateZ" " -av"
		2 "|Rig:Control|Rig:ikHandle8" "translateY" " -av"
		2 "|Rig:Control|Rig:RootMotion_Control" "translate" " -type \"double3\" 0 0 0"
		
		2 "|Rig:Control|Rig:RootMotion_Control" "translateX" " -av"
		2 "|Rig:Control|Rig:RootMotion_Control" "translateY" " -av"
		2 "|Rig:Control|Rig:RootMotion_Control" "translateZ" " -av"
		2 "|Rig:Control|Rig:RootMotion_Control" "rotate" " -type \"double3\" 0 0 0"
		
		2 "|Rig:Control|Rig:RootMotion_Control" "rotateY" " -av"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:arrow" "translate" " -type \"double3\" 0 5.6302633995630984 33.77937650859291807"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:arrow" "translateX" " -av"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:arrow" "translateY" " -av"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:arrow" "translateZ" " -av"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:arrow" "rotate" " -type \"double3\" 0 225 0"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:arrow" "rotateY" " -av"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:arrow1" "translate" " -type \"double3\" 0 5.6302633995630984 33.77937650859291807"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:arrow1" "translateX" " -av"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:arrow1" "translateY" " -av"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:arrow1" "translateZ" " -av"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14" "visibility" " -av 1"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14" "translate" " -type \"double3\" 1.0446623430118791 0 31.4386714144288959"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14" "translateX" " -av"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14" "translateY" " -av"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14" "translateZ" " -av"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14" "rotate" " -type \"double3\" 0 19.1851069653923787 0"
		
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
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12" "translate" " -type \"double3\" -61.60830778037050948 -23.41503194890847794 -83.28467066449127287"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12" "translateX" " -av"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12" "translateY" " -av"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12" "translateZ" " -av"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12" "rotate" " -type \"double3\" -47.67190543616174381 60.16421388993272501 -60.03172690853371307"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12" "rotateX" " -av"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12" "rotateY" " -av"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12" "rotateZ" " -av"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12" "scale" " -type \"double3\" 1 1 1"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12" "scaleX" " -av"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12" "scaleY" " -av"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12" "scaleZ" " -av"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12" "Grip" " -av -k 1 0.25"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12|Rig:nurbsCircle13" 
		"visibility" " -av 1"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12|Rig:nurbsCircle13" 
		"translate" " -type \"double3\" 5.53383748011628285 21.23742493291854316 -5.75001304109097156"
		
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
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle10" "translate" " -type \"double3\" 40.74885971007074659 34.1657357329353033 74.48044539158395594"
		
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
		"translate" " -type \"double3\" -9.59229205522449746 26.43691565176240488 25.20455616707206303"
		
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
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4" "translate" " -type \"double3\" 1.17354492952158296 -9.42634614659137071 -9.67440740664213905"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4" "translateX" " -av"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4" "translateY" " -av"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4" "translateZ" " -av"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4" "rotate" " -type \"double3\" 0 65.59001611855002523 0"
		
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
		"rotate" " -type \"double3\" 8.50254212677938881 -9.68692619758181728 -4.76240108383421212"
		
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
		"rotate" " -type \"double3\" 7.55582169794232517 19.83867969384093755 -7.52457967816818218"
		
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
		"rotate" " -type \"double3\" 2.72871113173712176 -41.46541139692923394 6.40148993404049271"
		
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
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle18" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle18" 
		"translateX" " -av"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle18" 
		"translateY" " -av"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle18" 
		"translateZ" " -av"
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
		"rotate" " -type \"double3\" 2.21238497339365647 10.85575199741335695 5.48211366708193282"
		
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
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1" "translate" " -type \"double3\" -3.75248897736996412 0 -45.52905172597048278"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1" "translateX" " -av"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1" "translateY" " -av"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1" "translateZ" " -av"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1" "rotate" " -type \"double3\" 0 61.36474855851920296 0"
		
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
		2 "|Rig:MagPistolRNfosterParent1|Rig:MagPistol_parentConstraint1" "enableRestPosition" 
		" 1"
		2 "|Rig:MagPistolRNfosterParent1|Rig:MagPistol_parentConstraint1" "target" 
		" -s 2"
		2 "|Rig:MagPistolRNfosterParent1|Rig:MagPistol_parentConstraint1" "restTranslate" 
		" -type \"double3\" 0.28116757192542075 97.68007312089335414 14.55564553733308308"
		
		2 "|Rig:MagPistolRNfosterParent1|Rig:MagPistol_parentConstraint1" "restRotate" 
		" -type \"double3\" 5.29471426553241464 -37.75215270770146248 83.96981149233059227"
		
		2 "|Rig:MagPistolRNfosterParent1|Rig:MagPistol_parentConstraint1" "interpType" 
		" 0"
		2 "|Rig:MagPistolRNfosterParent1|Rig:MagPistol_parentConstraint1" "Holster_AttachW0" 
		" -k 1 0"
		2 "|Rig:MagPistolRNfosterParent1|Rig:MagPistol_parentConstraint1" "RightHand_AttachW1" 
		" -k 1 1"
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control.translateX" "SoldierRN.placeHolderList[3]" 
		""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control.translateY" "SoldierRN.placeHolderList[4]" 
		""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control.translateZ" "SoldierRN.placeHolderList[5]" 
		""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control.rotateX" "SoldierRN.placeHolderList[6]" 
		""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control.rotateY" "SoldierRN.placeHolderList[7]" 
		""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control.rotateZ" "SoldierRN.placeHolderList[8]" 
		""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control.scaleX" "SoldierRN.placeHolderList[9]" 
		""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control.scaleY" "SoldierRN.placeHolderList[10]" 
		""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control.scaleZ" "SoldierRN.placeHolderList[11]" 
		""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control.visibility" "SoldierRN.placeHolderList[12]" 
		""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:arrow.visibility" 
		"SoldierRN.placeHolderList[13]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:arrow.translateX" 
		"SoldierRN.placeHolderList[14]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:arrow.translateY" 
		"SoldierRN.placeHolderList[15]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:arrow.translateZ" 
		"SoldierRN.placeHolderList[16]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:arrow.rotateX" 
		"SoldierRN.placeHolderList[17]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:arrow.rotateY" 
		"SoldierRN.placeHolderList[18]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:arrow.rotateZ" 
		"SoldierRN.placeHolderList[19]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:arrow.scaleX" 
		"SoldierRN.placeHolderList[20]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:arrow.scaleY" 
		"SoldierRN.placeHolderList[21]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:arrow.scaleZ" 
		"SoldierRN.placeHolderList[22]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:arrow1.visibility" 
		"SoldierRN.placeHolderList[23]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:arrow1.translateX" 
		"SoldierRN.placeHolderList[24]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:arrow1.translateY" 
		"SoldierRN.placeHolderList[25]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:arrow1.translateZ" 
		"SoldierRN.placeHolderList[26]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:arrow1.rotateX" 
		"SoldierRN.placeHolderList[27]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:arrow1.rotateY" 
		"SoldierRN.placeHolderList[28]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:arrow1.rotateZ" 
		"SoldierRN.placeHolderList[29]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:arrow1.scaleX" 
		"SoldierRN.placeHolderList[30]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:arrow1.scaleY" 
		"SoldierRN.placeHolderList[31]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:arrow1.scaleZ" 
		"SoldierRN.placeHolderList[32]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14.rotateX" 
		"SoldierRN.placeHolderList[33]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14.rotateY" 
		"SoldierRN.placeHolderList[34]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14.rotateZ" 
		"SoldierRN.placeHolderList[35]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14.visibility" 
		"SoldierRN.placeHolderList[36]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14.translateX" 
		"SoldierRN.placeHolderList[37]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14.translateY" 
		"SoldierRN.placeHolderList[38]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14.translateZ" 
		"SoldierRN.placeHolderList[39]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14.scaleX" 
		"SoldierRN.placeHolderList[40]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14.scaleY" 
		"SoldierRN.placeHolderList[41]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14.scaleZ" 
		"SoldierRN.placeHolderList[42]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14|Rig:nurbsCircle15.rotateX" 
		"SoldierRN.placeHolderList[43]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14|Rig:nurbsCircle15.rotateY" 
		"SoldierRN.placeHolderList[44]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14|Rig:nurbsCircle15.rotateZ" 
		"SoldierRN.placeHolderList[45]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14|Rig:nurbsCircle15.visibility" 
		"SoldierRN.placeHolderList[46]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14|Rig:nurbsCircle15.translateX" 
		"SoldierRN.placeHolderList[47]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14|Rig:nurbsCircle15.translateY" 
		"SoldierRN.placeHolderList[48]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14|Rig:nurbsCircle15.translateZ" 
		"SoldierRN.placeHolderList[49]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14|Rig:nurbsCircle15.scaleX" 
		"SoldierRN.placeHolderList[50]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14|Rig:nurbsCircle15.scaleY" 
		"SoldierRN.placeHolderList[51]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14|Rig:nurbsCircle15.scaleZ" 
		"SoldierRN.placeHolderList[52]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14|Rig:nurbsCircle16.translateX" 
		"SoldierRN.placeHolderList[53]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14|Rig:nurbsCircle16.translateY" 
		"SoldierRN.placeHolderList[54]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14|Rig:nurbsCircle16.translateZ" 
		"SoldierRN.placeHolderList[55]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14|Rig:nurbsCircle16.visibility" 
		"SoldierRN.placeHolderList[56]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14|Rig:nurbsCircle16.rotateX" 
		"SoldierRN.placeHolderList[57]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14|Rig:nurbsCircle16.rotateY" 
		"SoldierRN.placeHolderList[58]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14|Rig:nurbsCircle16.rotateZ" 
		"SoldierRN.placeHolderList[59]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14|Rig:nurbsCircle16.scaleX" 
		"SoldierRN.placeHolderList[60]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14|Rig:nurbsCircle16.scaleY" 
		"SoldierRN.placeHolderList[61]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14|Rig:nurbsCircle16.scaleZ" 
		"SoldierRN.placeHolderList[62]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12.Grip" 
		"SoldierRN.placeHolderList[63]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12.rotateX" 
		"SoldierRN.placeHolderList[64]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12.rotateY" 
		"SoldierRN.placeHolderList[65]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12.rotateZ" 
		"SoldierRN.placeHolderList[66]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12.translateX" 
		"SoldierRN.placeHolderList[67]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12.translateY" 
		"SoldierRN.placeHolderList[68]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12.translateZ" 
		"SoldierRN.placeHolderList[69]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12.visibility" 
		"SoldierRN.placeHolderList[70]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12.scaleX" 
		"SoldierRN.placeHolderList[71]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12.scaleY" 
		"SoldierRN.placeHolderList[72]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12.scaleZ" 
		"SoldierRN.placeHolderList[73]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12|Rig:nurbsCircle13.translateX" 
		"SoldierRN.placeHolderList[74]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12|Rig:nurbsCircle13.translateY" 
		"SoldierRN.placeHolderList[75]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12|Rig:nurbsCircle13.translateZ" 
		"SoldierRN.placeHolderList[76]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12|Rig:nurbsCircle13.visibility" 
		"SoldierRN.placeHolderList[77]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12|Rig:nurbsCircle13.rotateX" 
		"SoldierRN.placeHolderList[78]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12|Rig:nurbsCircle13.rotateY" 
		"SoldierRN.placeHolderList[79]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12|Rig:nurbsCircle13.rotateZ" 
		"SoldierRN.placeHolderList[80]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12|Rig:nurbsCircle13.scaleX" 
		"SoldierRN.placeHolderList[81]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12|Rig:nurbsCircle13.scaleY" 
		"SoldierRN.placeHolderList[82]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12|Rig:nurbsCircle13.scaleZ" 
		"SoldierRN.placeHolderList[83]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle10.Grip" 
		"SoldierRN.placeHolderList[84]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle10.rotateX" 
		"SoldierRN.placeHolderList[85]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle10.rotateY" 
		"SoldierRN.placeHolderList[86]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle10.rotateZ" 
		"SoldierRN.placeHolderList[87]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle10.translateX" 
		"SoldierRN.placeHolderList[88]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle10.translateY" 
		"SoldierRN.placeHolderList[89]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle10.translateZ" 
		"SoldierRN.placeHolderList[90]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle10.visibility" 
		"SoldierRN.placeHolderList[91]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle10.scaleX" 
		"SoldierRN.placeHolderList[92]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle10.scaleY" 
		"SoldierRN.placeHolderList[93]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle10.scaleZ" 
		"SoldierRN.placeHolderList[94]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle10|Rig:nurbsCircle11.translateX" 
		"SoldierRN.placeHolderList[95]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle10|Rig:nurbsCircle11.translateY" 
		"SoldierRN.placeHolderList[96]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle10|Rig:nurbsCircle11.translateZ" 
		"SoldierRN.placeHolderList[97]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle10|Rig:nurbsCircle11.visibility" 
		"SoldierRN.placeHolderList[98]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle10|Rig:nurbsCircle11.rotateX" 
		"SoldierRN.placeHolderList[99]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle10|Rig:nurbsCircle11.rotateY" 
		"SoldierRN.placeHolderList[100]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle10|Rig:nurbsCircle11.rotateZ" 
		"SoldierRN.placeHolderList[101]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle10|Rig:nurbsCircle11.scaleX" 
		"SoldierRN.placeHolderList[102]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle10|Rig:nurbsCircle11.scaleY" 
		"SoldierRN.placeHolderList[103]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle10|Rig:nurbsCircle11.scaleZ" 
		"SoldierRN.placeHolderList[104]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4.translateX" 
		"SoldierRN.placeHolderList[105]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4.translateY" 
		"SoldierRN.placeHolderList[106]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4.translateZ" 
		"SoldierRN.placeHolderList[107]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4.rotateX" 
		"SoldierRN.placeHolderList[108]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4.rotateY" 
		"SoldierRN.placeHolderList[109]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4.rotateZ" 
		"SoldierRN.placeHolderList[110]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4.scaleX" 
		"SoldierRN.placeHolderList[111]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4.scaleY" 
		"SoldierRN.placeHolderList[112]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4.scaleZ" 
		"SoldierRN.placeHolderList[113]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4.visibility" 
		"SoldierRN.placeHolderList[114]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5.rotateX" 
		"SoldierRN.placeHolderList[115]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5.rotateY" 
		"SoldierRN.placeHolderList[116]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5.rotateZ" 
		"SoldierRN.placeHolderList[117]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5.visibility" 
		"SoldierRN.placeHolderList[118]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5.translateX" 
		"SoldierRN.placeHolderList[119]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5.translateY" 
		"SoldierRN.placeHolderList[120]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5.translateZ" 
		"SoldierRN.placeHolderList[121]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5.scaleX" 
		"SoldierRN.placeHolderList[122]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5.scaleY" 
		"SoldierRN.placeHolderList[123]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5.scaleZ" 
		"SoldierRN.placeHolderList[124]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6.rotateX" 
		"SoldierRN.placeHolderList[125]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6.rotateY" 
		"SoldierRN.placeHolderList[126]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6.rotateZ" 
		"SoldierRN.placeHolderList[127]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6.visibility" 
		"SoldierRN.placeHolderList[128]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6.translateX" 
		"SoldierRN.placeHolderList[129]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6.translateY" 
		"SoldierRN.placeHolderList[130]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6.translateZ" 
		"SoldierRN.placeHolderList[131]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6.scaleX" 
		"SoldierRN.placeHolderList[132]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6.scaleY" 
		"SoldierRN.placeHolderList[133]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6.scaleZ" 
		"SoldierRN.placeHolderList[134]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle9.rotateX" 
		"SoldierRN.placeHolderList[135]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle9.rotateY" 
		"SoldierRN.placeHolderList[136]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle9.rotateZ" 
		"SoldierRN.placeHolderList[137]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle9.visibility" 
		"SoldierRN.placeHolderList[138]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle9.translateX" 
		"SoldierRN.placeHolderList[139]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle9.translateY" 
		"SoldierRN.placeHolderList[140]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle9.translateZ" 
		"SoldierRN.placeHolderList[141]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle9.scaleX" 
		"SoldierRN.placeHolderList[142]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle9.scaleY" 
		"SoldierRN.placeHolderList[143]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle9.scaleZ" 
		"SoldierRN.placeHolderList[144]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle8.rotateX" 
		"SoldierRN.placeHolderList[145]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle8.rotateY" 
		"SoldierRN.placeHolderList[146]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle8.rotateZ" 
		"SoldierRN.placeHolderList[147]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle8.visibility" 
		"SoldierRN.placeHolderList[148]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle8.translateX" 
		"SoldierRN.placeHolderList[149]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle8.translateY" 
		"SoldierRN.placeHolderList[150]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle8.translateZ" 
		"SoldierRN.placeHolderList[151]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle8.scaleX" 
		"SoldierRN.placeHolderList[152]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle8.scaleY" 
		"SoldierRN.placeHolderList[153]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle8.scaleZ" 
		"SoldierRN.placeHolderList[154]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle7.rotateX" 
		"SoldierRN.placeHolderList[155]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle7.rotateY" 
		"SoldierRN.placeHolderList[156]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle7.rotateZ" 
		"SoldierRN.placeHolderList[157]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle7.visibility" 
		"SoldierRN.placeHolderList[158]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle7.translateX" 
		"SoldierRN.placeHolderList[159]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle7.translateY" 
		"SoldierRN.placeHolderList[160]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle7.translateZ" 
		"SoldierRN.placeHolderList[161]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle7.scaleX" 
		"SoldierRN.placeHolderList[162]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle7.scaleY" 
		"SoldierRN.placeHolderList[163]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle7.scaleZ" 
		"SoldierRN.placeHolderList[164]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle18.translateX" 
		"SoldierRN.placeHolderList[165]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle18.translateY" 
		"SoldierRN.placeHolderList[166]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle18.translateZ" 
		"SoldierRN.placeHolderList[167]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle18.rotateX" 
		"SoldierRN.placeHolderList[168]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle18.rotateY" 
		"SoldierRN.placeHolderList[169]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle18.rotateZ" 
		"SoldierRN.placeHolderList[170]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle18.scaleX" 
		"SoldierRN.placeHolderList[171]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle18.scaleY" 
		"SoldierRN.placeHolderList[172]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle18.scaleZ" 
		"SoldierRN.placeHolderList[173]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle18.visibility" 
		"SoldierRN.placeHolderList[174]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle17.translateX" 
		"SoldierRN.placeHolderList[175]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle17.translateY" 
		"SoldierRN.placeHolderList[176]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle17.translateZ" 
		"SoldierRN.placeHolderList[177]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle17.rotateX" 
		"SoldierRN.placeHolderList[178]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle17.rotateY" 
		"SoldierRN.placeHolderList[179]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle17.rotateZ" 
		"SoldierRN.placeHolderList[180]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle17.scaleX" 
		"SoldierRN.placeHolderList[181]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle17.scaleY" 
		"SoldierRN.placeHolderList[182]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle17.scaleZ" 
		"SoldierRN.placeHolderList[183]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle17.visibility" 
		"SoldierRN.placeHolderList[184]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1.rotateX" 
		"SoldierRN.placeHolderList[185]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1.rotateY" 
		"SoldierRN.placeHolderList[186]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1.rotateZ" 
		"SoldierRN.placeHolderList[187]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1.visibility" 
		"SoldierRN.placeHolderList[188]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1.translateX" 
		"SoldierRN.placeHolderList[189]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1.translateY" 
		"SoldierRN.placeHolderList[190]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1.translateZ" 
		"SoldierRN.placeHolderList[191]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1.scaleX" 
		"SoldierRN.placeHolderList[192]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1.scaleY" 
		"SoldierRN.placeHolderList[193]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1.scaleZ" 
		"SoldierRN.placeHolderList[194]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1|Rig:nurbsCircle2.rotateX" 
		"SoldierRN.placeHolderList[195]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1|Rig:nurbsCircle2.rotateY" 
		"SoldierRN.placeHolderList[196]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1|Rig:nurbsCircle2.rotateZ" 
		"SoldierRN.placeHolderList[197]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1|Rig:nurbsCircle2.visibility" 
		"SoldierRN.placeHolderList[198]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1|Rig:nurbsCircle2.translateX" 
		"SoldierRN.placeHolderList[199]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1|Rig:nurbsCircle2.translateY" 
		"SoldierRN.placeHolderList[200]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1|Rig:nurbsCircle2.translateZ" 
		"SoldierRN.placeHolderList[201]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1|Rig:nurbsCircle2.scaleX" 
		"SoldierRN.placeHolderList[202]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1|Rig:nurbsCircle2.scaleY" 
		"SoldierRN.placeHolderList[203]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1|Rig:nurbsCircle2.scaleZ" 
		"SoldierRN.placeHolderList[204]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1|Rig:nurbsCircle3.translateX" 
		"SoldierRN.placeHolderList[205]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1|Rig:nurbsCircle3.translateY" 
		"SoldierRN.placeHolderList[206]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1|Rig:nurbsCircle3.translateZ" 
		"SoldierRN.placeHolderList[207]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1|Rig:nurbsCircle3.visibility" 
		"SoldierRN.placeHolderList[208]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1|Rig:nurbsCircle3.rotateX" 
		"SoldierRN.placeHolderList[209]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1|Rig:nurbsCircle3.rotateY" 
		"SoldierRN.placeHolderList[210]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1|Rig:nurbsCircle3.rotateZ" 
		"SoldierRN.placeHolderList[211]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1|Rig:nurbsCircle3.scaleX" 
		"SoldierRN.placeHolderList[212]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1|Rig:nurbsCircle3.scaleY" 
		"SoldierRN.placeHolderList[213]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1|Rig:nurbsCircle3.scaleZ" 
		"SoldierRN.placeHolderList[214]" ""
		5 0 "SoldierRN" "|Rig:MagPistolRNfosterParent1|Rig:MagPistol_parentConstraint1.RightHand_AttachW1" 
		"|Rig:MagPistolRNfosterParent1|Rig:MagPistol_parentConstraint1.target[1].targetWeight" 
		"SoldierRN.placeHolderList[215]" "SoldierRN.placeHolderList[216]" ""
		5 0 "SoldierRN" "|Rig:Skeleton|Rig:RootMotion|Rig:Root_Skel|Rig:Spine1_Skel|Rig:Spine2_Skel|Rig:RightClav_Skel|Rig:RightUpperArm_Skel|Rig:RightLowerArm_Skel|Rig:RightHand_Skel|Rig:RightHand_Attach.translate" 
		"|Rig:MagPistolRNfosterParent1|Rig:MagPistol_parentConstraint1.target[1].targetTranslate" 
		"SoldierRN.placeHolderList[217]" "SoldierRN.placeHolderList[218]" ""
		5 0 "SoldierRN" "|Rig:Skeleton|Rig:RootMotion|Rig:Root_Skel|Rig:Spine1_Skel|Rig:Spine2_Skel|Rig:RightClav_Skel|Rig:RightUpperArm_Skel|Rig:RightLowerArm_Skel|Rig:RightHand_Skel|Rig:RightHand_Attach.rotatePivot" 
		"|Rig:MagPistolRNfosterParent1|Rig:MagPistol_parentConstraint1.target[1].targetRotatePivot" 
		"SoldierRN.placeHolderList[219]" "SoldierRN.placeHolderList[220]" ""
		5 0 "SoldierRN" "|Rig:Skeleton|Rig:RootMotion|Rig:Root_Skel|Rig:Spine1_Skel|Rig:Spine2_Skel|Rig:RightClav_Skel|Rig:RightUpperArm_Skel|Rig:RightLowerArm_Skel|Rig:RightHand_Skel|Rig:RightHand_Attach.rotatePivotTranslate" 
		"|Rig:MagPistolRNfosterParent1|Rig:MagPistol_parentConstraint1.target[1].targetRotateTranslate" 
		"SoldierRN.placeHolderList[221]" "SoldierRN.placeHolderList[222]" ""
		5 0 "SoldierRN" "|Rig:Skeleton|Rig:RootMotion|Rig:Root_Skel|Rig:Spine1_Skel|Rig:Spine2_Skel|Rig:RightClav_Skel|Rig:RightUpperArm_Skel|Rig:RightLowerArm_Skel|Rig:RightHand_Skel|Rig:RightHand_Attach.rotate" 
		"|Rig:MagPistolRNfosterParent1|Rig:MagPistol_parentConstraint1.target[1].targetRotate" 
		"SoldierRN.placeHolderList[223]" "SoldierRN.placeHolderList[224]" ""
		5 0 "SoldierRN" "|Rig:Skeleton|Rig:RootMotion|Rig:Root_Skel|Rig:Spine1_Skel|Rig:Spine2_Skel|Rig:RightClav_Skel|Rig:RightUpperArm_Skel|Rig:RightLowerArm_Skel|Rig:RightHand_Skel|Rig:RightHand_Attach.rotateOrder" 
		"|Rig:MagPistolRNfosterParent1|Rig:MagPistol_parentConstraint1.target[1].targetRotateOrder" 
		"SoldierRN.placeHolderList[225]" "SoldierRN.placeHolderList[226]" ""
		5 0 "SoldierRN" "|Rig:Skeleton|Rig:RootMotion|Rig:Root_Skel|Rig:Spine1_Skel|Rig:Spine2_Skel|Rig:RightClav_Skel|Rig:RightUpperArm_Skel|Rig:RightLowerArm_Skel|Rig:RightHand_Skel|Rig:RightHand_Attach.scale" 
		"|Rig:MagPistolRNfosterParent1|Rig:MagPistol_parentConstraint1.target[1].targetScale" 
		"SoldierRN.placeHolderList[227]" "SoldierRN.placeHolderList[228]" ""
		5 0 "SoldierRN" "|Rig:Skeleton|Rig:RootMotion|Rig:Root_Skel|Rig:Spine1_Skel|Rig:Spine2_Skel|Rig:RightClav_Skel|Rig:RightUpperArm_Skel|Rig:RightLowerArm_Skel|Rig:RightHand_Skel|Rig:RightHand_Attach.parentMatrix" 
		"|Rig:MagPistolRNfosterParent1|Rig:MagPistol_parentConstraint1.target[1].targetParentMatrix" 
		"SoldierRN.placeHolderList[229]" "SoldierRN.placeHolderList[230]" ""
		"Rig:AssaultRifleRN" 7
		2 "|Rig:Extra|Rig:AssaultRifle:AssaultRifle" "visibility" " -av 0"
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
		)
		5 4 "SoldierRN" "|Rig:Extra|Rig:AssaultRifle:AssaultRifle.visibility" 
		"SoldierRN.placeHolderList[1]" "";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "F0B98847-F34C-3E01-677E-B191D1BF5045";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n"
		+ "                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n"
		+ "            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n"
		+ "            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n"
		+ "                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n"
		+ "                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n"
		+ "                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n"
		+ "            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n"
		+ "            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n"
		+ "            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n"
		+ "                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n"
		+ "                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n"
		+ "                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n"
		+ "            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n"
		+ "            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n"
		+ "                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 0\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 0\n                -imagePlane 1\n                -joints 1\n                -ikHandles 0\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 1\n                -captureSequenceNumber -1\n"
		+ "                -width 1135\n                -height 655\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 0\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 0\n            -imagePlane 1\n            -joints 1\n            -ikHandles 0\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 1\n            -captureSequenceNumber -1\n            -width 1135\n            -height 655\n"
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
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 0\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 0\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 1\\n    -captureSequenceNumber -1\\n    -width 1135\\n    -height 655\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 0\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 0\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 1\\n    -captureSequenceNumber -1\\n    -width 1135\\n    -height 655\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 100 -size 500 -divisions 2 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "8D7D14DE-9341-8C39-B92F-798E15BB2D69";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 325 -ast 0 -aet 350 ";
	setAttr ".st" 6;
createNode gameFbxExporter -n "gameExporterPreset1";
	rename -uid "FCE9D123-3B41-1F6C-EC61-05A50A4EB106";
	setAttr ".pn" -type "string" "Model Default";
	setAttr ".ils" yes;
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
	setAttr ".ilu" yes;
	setAttr ".eti" 2;
	setAttr ".esi" 3;
	setAttr ".ssn" -type "string" "Rig:ExportSet";
	setAttr -s 19 ".ac";
	setAttr ".ac[0].acn" -type "string" "idle_to_standing_aim";
	setAttr ".ac[0].acs" 1;
	setAttr ".ac[0].ace" 20;
	setAttr ".ac[0].asn" -type "string" "";
	setAttr ".ac[1].acn" -type "string" "standing_aim_-45";
	setAttr ".ac[1].acs" 30;
	setAttr ".ac[1].ace" 35;
	setAttr ".ac[2].acn" -type "string" "standing_aim_0";
	setAttr ".ac[2].acs" 50;
	setAttr ".ac[2].ace" 55;
	setAttr ".ac[3].acn" -type "string" "standing_aim_45";
	setAttr ".ac[3].acs" 70;
	setAttr ".ac[3].ace" 75;
	setAttr ".ac[4].acn" -type "string" "standing_fire_-45";
	setAttr ".ac[4].acs" 35;
	setAttr ".ac[4].ace" 38;
	setAttr ".ac[5].acn" -type "string" "standing_fire_0";
	setAttr ".ac[5].acs" 55;
	setAttr ".ac[5].ace" 58;
	setAttr ".ac[6].acn" -type "string" "standing_fire_45";
	setAttr ".ac[6].acs" 75;
	setAttr ".ac[6].ace" 78;
	setAttr ".ac[7].acn" -type "string" "standing_turn_right";
	setAttr ".ac[7].acs" 90;
	setAttr ".ac[7].ace" 110;
	setAttr ".ac[8].acn" -type "string" "standing_turn_left";
	setAttr ".ac[8].acs" 120;
	setAttr ".ac[8].ace" 140;
	setAttr ".ac[9].acn" -type "string" "standing_aim_sidearm_-45";
	setAttr ".ac[9].acs" 200;
	setAttr ".ac[9].ace" 205;
	setAttr ".ac[10].acn" -type "string" "standing_aim_sidearm_0";
	setAttr ".ac[10].acs" 220;
	setAttr ".ac[10].ace" 225;
	setAttr ".ac[11].acn" -type "string" "standing_aim_sidearm_45";
	setAttr ".ac[11].acs" 240;
	setAttr ".ac[11].ace" 245;
	setAttr ".ac[12].acn" -type "string" "standing_fire_sidearm_-45";
	setAttr ".ac[12].acs" 205;
	setAttr ".ac[12].ace" 210;
	setAttr ".ac[13].acn" -type "string" "standing_fire_sidearm_0";
	setAttr ".ac[13].acs" 225;
	setAttr ".ac[13].ace" 230;
	setAttr ".ac[14].acn" -type "string" "standing_fire_sidearm_45";
	setAttr ".ac[14].acs" 210;
	setAttr ".ac[14].ace" 215;
	setAttr ".ac[15].acn" -type "string" "standing_turn_sidearm_right";
	setAttr ".ac[15].acs" 260;
	setAttr ".ac[15].ace" 275;
	setAttr ".ac[16].acn" -type "string" "standing_turn_sidearm_left";
	setAttr ".ac[16].acs" 280;
	setAttr ".ac[16].ace" 295;
	setAttr ".ac[17].acn" -type "string" "sidearm_reload";
	setAttr ".ac[17].acs" 300;
	setAttr ".ac[17].ace" 325;
	setAttr ".ac[18].acn" -type "string" "idle_to_standing_sidearm_aim";
	setAttr ".ac[18].acs" 170;
	setAttr ".ac[18].ace" 190;
	setAttr ".ic" no;
	setAttr ".ebm" yes;
	setAttr ".fv" -type "string" "FBX201600";
	setAttr ".exp" -type "string" "/Users/briancollins/Unity/LZisHOT/Assets/Characters/Soldier";
	setAttr ".exf" -type "string" "soldier_standing_aim";
createNode animCurveTU -n "RootMotion_Control_visibility";
	rename -uid "A109488B-B64E-19C0-B65C-D3B6DBC260D6";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  0 1 20 1 30 1 35 1 40 1 50 1 55 1 60 1 70 1
		 75 1 80 1 90 1 95 1 100 1 110 1 120 1 125 1 130 1 140 1 170 1 190 1 200 1 205 1 210 1
		 220 1 225 1 230 1 240 1 245 1 250 1 260 1 265 1 270 1 275 1 280 1 285 1 290 1 295 1
		 300 1 325 1;
	setAttr -s 40 ".kit[0:39]"  9 1 2 2 1 2 2 1 
		2 2 2 2 1 1 2 1 9 9 1 1 1 2 9 2 2 
		2 2 9 2 2 2 2 2 2 1 2 2 2 1 1;
	setAttr -s 40 ".kot[0:39]"  5 5 2 2 1 2 2 1 
		2 2 2 2 1 1 2 1 5 5 1 1 1 2 5 2 2 
		2 2 5 2 2 2 2 2 2 1 2 2 2 1 1;
	setAttr -s 40 ".kix[1:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".kiy[1:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 40 ".kox[4:39]"  1 1 1 1 1 1 1 1 1 1 1 1 0 0 1 1 1 1 0 1 
		1 1 1 0 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".koy[4:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "RootMotion_Control_translateX";
	rename -uid "594A047E-4541-3876-4228-8B8017812450";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  0 0 20 0 30 0 35 0 40 0 50 0 55 0 60 0 70 0
		 75 0 80 0 90 0 95 0 100 0 110 0 120 0 125 0 130 0 140 0 170 0 190 0 200 0 205 0 210 0
		 220 0 225 0 230 0 240 0 245 0 250 0 260 0 265 0 270 0 275 0 280 0 285 0 290 0 295 0
		 300 0 325 0;
	setAttr -s 40 ".kit[0:39]"  18 1 2 2 1 2 2 1 
		2 2 2 2 1 1 2 1 18 18 1 1 1 2 18 2 2 
		2 2 18 2 2 2 2 2 2 1 2 2 2 1 1;
	setAttr -s 40 ".kot[0:39]"  18 1 2 2 1 2 2 1 
		2 2 2 2 1 1 2 1 18 18 1 1 1 2 18 2 2 
		2 2 18 2 2 2 2 2 2 1 2 2 2 1 1;
	setAttr -s 40 ".kix[1:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".kiy[1:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 40 ".kox[1:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".koy[1:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "RootMotion_Control_translateY";
	rename -uid "78936FA1-6C45-EC1D-9368-5380C47C58A0";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  0 0 20 0 30 0 35 0 40 0 50 0 55 0 60 0 70 0
		 75 0 80 0 90 0 95 0 100 0 110 0 120 0 125 0 130 0 140 0 170 0 190 0 200 0 205 0 210 0
		 220 0 225 0 230 0 240 0 245 0 250 0 260 0 265 0 270 0 275 0 280 0 285 0 290 0 295 0
		 300 0 325 0;
	setAttr -s 40 ".kit[0:39]"  18 1 2 2 1 2 2 1 
		2 2 2 2 1 1 2 1 18 18 1 1 1 2 18 2 2 
		2 2 18 2 2 2 2 2 2 1 2 2 2 1 1;
	setAttr -s 40 ".kot[0:39]"  18 1 2 2 1 2 2 1 
		2 2 2 2 1 1 2 1 18 18 1 1 1 2 18 2 2 
		2 2 18 2 2 2 2 2 2 1 2 2 2 1 1;
	setAttr -s 40 ".kix[1:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".kiy[1:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 40 ".kox[1:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".koy[1:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "RootMotion_Control_translateZ";
	rename -uid "A195E89D-F141-69DC-8524-198E6FF5021B";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  0 0 20 0 30 0 35 0 40 0 50 0 55 0 60 0 70 0
		 75 0 80 0 90 0 95 0 100 0 110 0 120 0 125 0 130 0 140 0 170 0 190 0 200 0 205 0 210 0
		 220 0 225 0 230 0 240 0 245 0 250 0 260 0 265 0 270 0 275 0 280 0 285 0 290 0 295 0
		 300 0 325 0;
	setAttr -s 40 ".kit[0:39]"  18 1 2 2 1 2 2 1 
		2 2 2 2 1 1 2 1 18 18 1 1 1 2 18 2 2 
		2 2 18 2 2 2 2 2 2 1 2 2 2 1 1;
	setAttr -s 40 ".kot[0:39]"  18 1 2 2 1 2 2 1 
		2 2 2 2 1 1 2 1 18 18 1 1 1 2 18 2 2 
		2 2 18 2 2 2 2 2 2 1 2 2 2 1 1;
	setAttr -s 40 ".kix[1:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".kiy[1:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 40 ".kox[1:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".koy[1:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RootMotion_Control_rotateX";
	rename -uid "EBCF6530-2F47-267B-4CB2-25B224414370";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  0 0 20 0 30 0 35 0 40 0 50 0 55 0 60 0 70 0
		 75 0 80 0 90 0 95 0 100 0 110 0 120 0 125 0 130 0 140 0 170 0 190 0 200 0 205 0 210 0
		 220 0 225 0 230 0 240 0 245 0 250 0 260 0 265 0 270 0 275 0 280 0 285 0 290 0 295 0
		 300 0 325 0;
	setAttr -s 40 ".kit[0:39]"  18 1 2 2 1 2 2 1 
		2 2 2 2 1 1 2 1 18 18 1 1 1 2 18 2 2 
		2 2 18 2 2 2 2 2 2 1 2 2 2 1 1;
	setAttr -s 40 ".kot[0:39]"  18 1 2 2 1 2 2 1 
		2 2 2 2 1 1 2 1 18 18 1 1 1 2 18 2 2 
		2 2 18 2 2 2 2 2 2 1 2 2 2 1 1;
	setAttr -s 40 ".kix[1:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".kiy[1:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 40 ".kox[1:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".koy[1:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RootMotion_Control_rotateY";
	rename -uid "1DA075B8-D141-455F-FCDA-0A94A2DC18A2";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  0 0 20 0 30 0 35 0 40 0 50 0 55 0 60 0 70 0
		 75 0 80 0 90 0 95 0 100 -90 110 -90 120 0 125 0 130 45 140 45 170 0 190 0 200 0 205 0
		 210 0 220 0 225 0 230 0 240 0 245 0 250 0 260 0 265 0 270 -45 275 -45 280 0 285 0
		 290 45 295 45 300 0 325 0;
	setAttr -s 40 ".kit[0:39]"  18 1 2 2 1 2 2 1 
		2 2 2 2 1 1 2 1 18 18 1 1 1 2 18 2 2 
		2 2 18 2 2 2 2 2 2 1 2 2 2 1 1;
	setAttr -s 40 ".kot[0:39]"  18 1 2 2 1 2 2 1 
		2 2 2 2 1 1 2 1 18 18 1 1 1 2 18 2 2 
		2 2 18 2 2 2 2 2 2 1 2 2 2 1 1;
	setAttr -s 40 ".kix[1:39]"  1 1 1 1 1 1 1 1 1 1 1 1 0.36969795823097229 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.25639107823371887 1 0.95402818918228149 1 0.25639107823371887 
		1 1 1;
	setAttr -s 40 ".kiy[1:39]"  0 0 0 0 0 0 0 0 0 0 0 0 -0.92915201187133789 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.96657305955886841 0 -0.29971686005592346 0 
		0.96657305955886841 0 0 0;
	setAttr -s 40 ".kox[1:39]"  1 1 1 1 1 1 1 1 1 1 1 0.46864983439445496 
		1 0.25639137625694275 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.25639107823371887 1 0.25639218091964722 
		1 0.25639107823371887 1 0.25639107823371887 1 1;
	setAttr -s 40 ".koy[1:39]"  0 0 0 0 0 0 0 0 0 0 0 -0.88338398933410645 
		0 0.96657305955886841 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.96657305955886841 0 0.96657288074493408 
		0 0.96657305955886841 0 -0.96657305955886841 0 0;
createNode animCurveTA -n "RootMotion_Control_rotateZ";
	rename -uid "47116344-6C45-F48B-0A75-37B47114EB5F";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  0 0 20 0 30 0 35 0 40 0 50 0 55 0 60 0 70 0
		 75 0 80 0 90 0 95 0 100 0 110 0 120 0 125 0 130 0 140 0 170 0 190 0 200 0 205 0 210 0
		 220 0 225 0 230 0 240 0 245 0 250 0 260 0 265 0 270 0 275 0 280 0 285 0 290 0 295 0
		 300 0 325 0;
	setAttr -s 40 ".kit[0:39]"  18 1 2 2 1 2 2 1 
		2 2 2 2 1 1 2 1 18 18 1 1 1 2 18 2 2 
		2 2 18 2 2 2 2 2 2 1 2 2 2 1 1;
	setAttr -s 40 ".kot[0:39]"  18 1 2 2 1 2 2 1 
		2 2 2 2 1 1 2 1 18 18 1 1 1 2 18 2 2 
		2 2 18 2 2 2 2 2 2 1 2 2 2 1 1;
	setAttr -s 40 ".kix[1:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".kiy[1:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 40 ".kox[1:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".koy[1:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RootMotion_Control_scaleX";
	rename -uid "835F8A6A-1C4B-7A5E-AD70-B0B823226698";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  0 1 20 1 30 1 35 1 40 1 50 1 55 1 60 1 70 1
		 75 1 80 1 90 1 95 1 100 1 110 1 120 1 125 1 130 1 140 1 170 1 190 1 200 1 205 1 210 1
		 220 1 225 1 230 1 240 1 245 1 250 1 260 1 265 1 270 1 275 1 280 1 285 1 290 1 295 1
		 300 1 325 1;
	setAttr -s 40 ".kit[0:39]"  18 1 2 2 1 2 2 1 
		2 2 2 2 1 1 2 1 18 18 1 1 1 2 18 2 2 
		2 2 18 2 2 2 2 2 2 1 2 2 2 1 1;
	setAttr -s 40 ".kot[0:39]"  18 1 2 2 1 2 2 1 
		2 2 2 2 1 1 2 1 18 18 1 1 1 2 18 2 2 
		2 2 18 2 2 2 2 2 2 1 2 2 2 1 1;
	setAttr -s 40 ".kix[1:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".kiy[1:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 40 ".kox[1:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".koy[1:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RootMotion_Control_scaleY";
	rename -uid "D0657C88-9C40-6FBA-D01E-1B83A4C7A1A8";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  0 1 20 1 30 1 35 1 40 1 50 1 55 1 60 1 70 1
		 75 1 80 1 90 1 95 1 100 1 110 1 120 1 125 1 130 1 140 1 170 1 190 1 200 1 205 1 210 1
		 220 1 225 1 230 1 240 1 245 1 250 1 260 1 265 1 270 1 275 1 280 1 285 1 290 1 295 1
		 300 1 325 1;
	setAttr -s 40 ".kit[0:39]"  18 1 2 2 1 2 2 1 
		2 2 2 2 1 1 2 1 18 18 1 1 1 2 18 2 2 
		2 2 18 2 2 2 2 2 2 1 2 2 2 1 1;
	setAttr -s 40 ".kot[0:39]"  18 1 2 2 1 2 2 1 
		2 2 2 2 1 1 2 1 18 18 1 1 1 2 18 2 2 
		2 2 18 2 2 2 2 2 2 1 2 2 2 1 1;
	setAttr -s 40 ".kix[1:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".kiy[1:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 40 ".kox[1:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".koy[1:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RootMotion_Control_scaleZ";
	rename -uid "88326455-874C-F572-8F55-599252F53F5E";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 40 ".ktv[0:39]"  0 1 20 1 30 1 35 1 40 1 50 1 55 1 60 1 70 1
		 75 1 80 1 90 1 95 1 100 1 110 1 120 1 125 1 130 1 140 1 170 1 190 1 200 1 205 1 210 1
		 220 1 225 1 230 1 240 1 245 1 250 1 260 1 265 1 270 1 275 1 280 1 285 1 290 1 295 1
		 300 1 325 1;
	setAttr -s 40 ".kit[0:39]"  18 1 2 2 1 2 2 1 
		2 2 2 2 1 1 2 1 18 18 1 1 1 2 18 2 2 
		2 2 18 2 2 2 2 2 2 1 2 2 2 1 1;
	setAttr -s 40 ".kot[0:39]"  18 1 2 2 1 2 2 1 
		2 2 2 2 1 1 2 1 18 18 1 1 1 2 18 2 2 
		2 2 18 2 2 2 2 2 2 1 2 2 2 1 1;
	setAttr -s 40 ".kix[1:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".kiy[1:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 40 ".kox[1:39]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 40 ".koy[1:39]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "arrow_visibility";
	rename -uid "0675D1EC-B346-1405-5903-19880A73F782";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 1 20 1 30 1 35 1 40 1 50 1 55 1 60 1 70 1
		 75 1 80 1 90 1 110 1 120 1 140 1 170 1 190 1 200 1 205 1 210 1 220 1 225 1 230 1
		 240 1 245 1 250 1 260 1 275 1 280 1 285 1 290 1 295 1 300 1 325 1;
	setAttr -s 34 ".kit[0:33]"  9 1 2 2 1 2 2 1 
		2 2 2 1 1 1 1 1 1 2 9 2 2 2 2 9 9 
		9 9 1 1 9 9 1 1 1;
	setAttr -s 34 ".kot[0:33]"  5 5 2 2 1 2 2 1 
		2 2 2 1 1 1 1 1 1 2 5 2 2 2 2 5 5 
		5 5 1 1 5 5 1 1 1;
	setAttr -s 34 ".kix[1:33]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 34 ".kiy[1:33]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 34 ".kox[4:33]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 1 1 0 
		0 0 0 1 1 0 0 1 1 1;
	setAttr -s 34 ".koy[4:33]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "arrow_translateX";
	rename -uid "A64D1D31-5344-20B5-C4E7-1982025CA9AA";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 0 20 0 30 0 35 0 40 0 50 0 55 0 60 0 70 0
		 75 0 80 0 90 0 110 0 120 0 140 0 170 0 190 0 200 0 205 0 210 0 220 0 225 0 230 0
		 240 0 245 0 250 0 260 0 275 0 280 0 285 0 290 0 295 0 300 0 325 0;
	setAttr -s 34 ".kit[0:33]"  18 1 2 2 1 2 2 1 
		2 2 2 1 1 1 1 1 1 2 18 2 2 2 2 18 18 
		18 18 1 1 18 18 1 1 1;
	setAttr -s 34 ".kot[0:33]"  18 1 2 2 1 2 2 1 
		2 2 2 1 1 1 1 1 1 2 18 2 2 2 2 18 18 
		18 18 1 1 18 18 1 1 1;
	setAttr -s 34 ".kix[1:33]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 34 ".kiy[1:33]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 34 ".kox[1:33]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 34 ".koy[1:33]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "arrow_translateY";
	rename -uid "2CDD6BD3-3B43-2FDE-D072-4B9781B049DE";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 5.6302633995630984 20 5.6302633995630984
		 30 5.6302633995630984 35 5.6302633995630984 40 5.6302633995630984 50 5.6302633995630984
		 55 5.6302633995630984 60 5.6302633995630984 70 5.6302633995630984 75 5.6302633995630984
		 80 5.6302633995630984 90 5.6302633995630984 110 5.6302633995630984 120 5.6302633995630984
		 140 5.6302633995630984 170 5.6302633995630984 190 5.6302633995630984 200 5.6302633995630984
		 205 5.6302633995630984 210 5.6302633995630984 220 5.6302633995630984 225 5.6302633995630984
		 230 5.6302633995630984 240 5.6302633995630984 245 5.6302633995630984 250 5.6302633995630984
		 260 5.6302633995630984 275 5.6302633995630984 280 5.6302633995630984 285 5.6302633995630984
		 290 5.6302633995630984 295 5.6302633995630984 300 5.6302633995630984 325 5.6302633995630984;
	setAttr -s 34 ".kit[0:33]"  18 1 2 2 1 2 2 1 
		2 2 2 1 1 1 1 1 1 2 18 2 2 2 2 18 18 
		18 18 1 1 18 18 1 1 1;
	setAttr -s 34 ".kot[0:33]"  18 1 2 2 1 2 2 1 
		2 2 2 1 1 1 1 1 1 2 18 2 2 2 2 18 18 
		18 18 1 1 18 18 1 1 1;
	setAttr -s 34 ".kix[1:33]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 34 ".kiy[1:33]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 34 ".kox[1:33]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 34 ".koy[1:33]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "arrow_translateZ";
	rename -uid "1E4E1512-4941-BCFB-C963-FC8B854EB7D7";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 33.779376508592918 20 33.779376508592918
		 30 33.779376508592918 35 33.779376508592918 40 33.779376508592918 50 33.779376508592918
		 55 33.779376508592918 60 33.779376508592918 70 33.779376508592918 75 33.779376508592918
		 80 33.779376508592918 90 33.779376508592918 110 33.779376508592918 120 33.779376508592918
		 140 33.779376508592918 170 33.779376508592918 190 33.779376508592918 200 33.779376508592918
		 205 33.779376508592918 210 33.779376508592918 220 33.779376508592918 225 33.779376508592918
		 230 33.779376508592918 240 33.779376508592918 245 33.779376508592918 250 33.779376508592918
		 260 33.779376508592918 275 33.779376508592918 280 33.779376508592918 285 33.779376508592918
		 290 33.779376508592918 295 33.779376508592918 300 33.779376508592918 325 33.779376508592918;
	setAttr -s 34 ".kit[0:33]"  18 1 2 2 1 2 2 1 
		2 2 2 1 1 1 1 1 1 2 18 2 2 2 2 18 18 
		18 18 1 1 18 18 1 1 1;
	setAttr -s 34 ".kot[0:33]"  18 1 2 2 1 2 2 1 
		2 2 2 1 1 1 1 1 1 2 18 2 2 2 2 18 18 
		18 18 1 1 18 18 1 1 1;
	setAttr -s 34 ".kix[1:33]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 34 ".kiy[1:33]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 34 ".kox[1:33]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 34 ".koy[1:33]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "arrow_rotateX";
	rename -uid "CCFFB215-124C-822E-2C1E-9D9115A55815";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 0 20 0 30 0 35 0 40 0 50 0 55 0 60 0 70 0
		 75 0 80 0 90 0 110 0 120 0 140 0 170 0 190 0 200 0 205 0 210 0 220 0 225 0 230 0
		 240 0 245 0 250 0 260 0 275 0 280 0 285 0 290 0 295 0 300 0 325 0;
	setAttr -s 34 ".kit[0:33]"  18 1 2 2 1 2 2 1 
		2 2 2 1 1 1 1 1 1 2 18 2 2 2 2 18 18 
		18 18 1 1 18 18 1 1 1;
	setAttr -s 34 ".kot[0:33]"  18 1 2 2 1 2 2 1 
		2 2 2 1 1 1 1 1 1 2 18 2 2 2 2 18 18 
		18 18 1 1 18 18 1 1 1;
	setAttr -s 34 ".kix[1:33]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 34 ".kiy[1:33]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 34 ".kox[1:33]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 34 ".koy[1:33]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "arrow_rotateY";
	rename -uid "2EB79F4A-CF42-97B2-D399-C08BD1789BD3";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 225 20 225 30 225 35 225 40 225 50 225
		 55 225 60 225 70 225 75 225 80 225 90 225 110 225 120 225 140 225 170 225 190 225
		 200 225 205 225 210 225 220 225 225 225 230 225 240 225 245 225 250 225 260 225 275 225
		 280 225 285 225 290 225 295 225 300 225 325 225;
	setAttr -s 34 ".kit[0:33]"  18 1 2 2 1 2 2 1 
		2 2 2 1 1 1 1 1 1 2 18 2 2 2 2 18 18 
		18 18 1 1 18 18 1 1 1;
	setAttr -s 34 ".kot[0:33]"  18 1 2 2 1 2 2 1 
		2 2 2 1 1 1 1 1 1 2 18 2 2 2 2 18 18 
		18 18 1 1 18 18 1 1 1;
	setAttr -s 34 ".kix[1:33]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 34 ".kiy[1:33]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 34 ".kox[1:33]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 34 ".koy[1:33]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "arrow_rotateZ";
	rename -uid "3DE7FE41-A644-DC9B-1040-7796E0150E5F";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 0 20 0 30 0 35 0 40 0 50 0 55 0 60 0 70 0
		 75 0 80 0 90 0 110 0 120 0 140 0 170 0 190 0 200 0 205 0 210 0 220 0 225 0 230 0
		 240 0 245 0 250 0 260 0 275 0 280 0 285 0 290 0 295 0 300 0 325 0;
	setAttr -s 34 ".kit[0:33]"  18 1 2 2 1 2 2 1 
		2 2 2 1 1 1 1 1 1 2 18 2 2 2 2 18 18 
		18 18 1 1 18 18 1 1 1;
	setAttr -s 34 ".kot[0:33]"  18 1 2 2 1 2 2 1 
		2 2 2 1 1 1 1 1 1 2 18 2 2 2 2 18 18 
		18 18 1 1 18 18 1 1 1;
	setAttr -s 34 ".kix[1:33]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 34 ".kiy[1:33]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 34 ".kox[1:33]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 34 ".koy[1:33]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "arrow_scaleX";
	rename -uid "B7A2626F-AB41-9C72-DB2C-4B90BC50F955";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 0.99999999999999989 20 0.99999999999999989
		 30 0.99999999999999989 35 0.99999999999999989 40 0.99999999999999989 50 0.99999999999999989
		 55 0.99999999999999989 60 0.99999999999999989 70 0.99999999999999989 75 0.99999999999999989
		 80 0.99999999999999989 90 0.99999999999999989 110 0.99999999999999989 120 0.99999999999999989
		 140 0.99999999999999989 170 0.99999999999999989 190 0.99999999999999989 200 0.99999999999999989
		 205 0.99999999999999989 210 0.99999999999999989 220 0.99999999999999989 225 0.99999999999999989
		 230 0.99999999999999989 240 0.99999999999999989 245 0.99999999999999989 250 0.99999999999999989
		 260 0.99999999999999989 275 0.99999999999999989 280 0.99999999999999989 285 0.99999999999999989
		 290 0.99999999999999989 295 0.99999999999999989 300 0.99999999999999989 325 0.99999999999999989;
	setAttr -s 34 ".kit[0:33]"  18 1 2 2 1 2 2 1 
		2 2 2 1 1 1 1 1 1 2 18 2 2 2 2 18 18 
		18 18 1 1 18 18 1 1 1;
	setAttr -s 34 ".kot[0:33]"  18 1 2 2 1 2 2 1 
		2 2 2 1 1 1 1 1 1 2 18 2 2 2 2 18 18 
		18 18 1 1 18 18 1 1 1;
	setAttr -s 34 ".kix[1:33]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 34 ".kiy[1:33]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 34 ".kox[1:33]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 34 ".koy[1:33]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "arrow_scaleY";
	rename -uid "700DD8A2-A244-BFB2-E1EC-DA8CD4F154F2";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 1 20 1 30 1 35 1 40 1 50 1 55 1 60 1 70 1
		 75 1 80 1 90 1 110 1 120 1 140 1 170 1 190 1 200 1 205 1 210 1 220 1 225 1 230 1
		 240 1 245 1 250 1 260 1 275 1 280 1 285 1 290 1 295 1 300 1 325 1;
	setAttr -s 34 ".kit[0:33]"  18 1 2 2 1 2 2 1 
		2 2 2 1 1 1 1 1 1 2 18 2 2 2 2 18 18 
		18 18 1 1 18 18 1 1 1;
	setAttr -s 34 ".kot[0:33]"  18 1 2 2 1 2 2 1 
		2 2 2 1 1 1 1 1 1 2 18 2 2 2 2 18 18 
		18 18 1 1 18 18 1 1 1;
	setAttr -s 34 ".kix[1:33]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 34 ".kiy[1:33]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 34 ".kox[1:33]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 34 ".koy[1:33]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "arrow_scaleZ";
	rename -uid "F456042D-6749-6B8F-0EF3-898EBDD58B9D";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 0.99999999999999989 20 0.99999999999999989
		 30 0.99999999999999989 35 0.99999999999999989 40 0.99999999999999989 50 0.99999999999999989
		 55 0.99999999999999989 60 0.99999999999999989 70 0.99999999999999989 75 0.99999999999999989
		 80 0.99999999999999989 90 0.99999999999999989 110 0.99999999999999989 120 0.99999999999999989
		 140 0.99999999999999989 170 0.99999999999999989 190 0.99999999999999989 200 0.99999999999999989
		 205 0.99999999999999989 210 0.99999999999999989 220 0.99999999999999989 225 0.99999999999999989
		 230 0.99999999999999989 240 0.99999999999999989 245 0.99999999999999989 250 0.99999999999999989
		 260 0.99999999999999989 275 0.99999999999999989 280 0.99999999999999989 285 0.99999999999999989
		 290 0.99999999999999989 295 0.99999999999999989 300 0.99999999999999989 325 0.99999999999999989;
	setAttr -s 34 ".kit[0:33]"  18 1 2 2 1 2 2 1 
		2 2 2 1 1 1 1 1 1 2 18 2 2 2 2 18 18 
		18 18 1 1 18 18 1 1 1;
	setAttr -s 34 ".kot[0:33]"  18 1 2 2 1 2 2 1 
		2 2 2 1 1 1 1 1 1 2 18 2 2 2 2 18 18 
		18 18 1 1 18 18 1 1 1;
	setAttr -s 34 ".kix[1:33]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 34 ".kiy[1:33]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 34 ".kox[1:33]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 34 ".koy[1:33]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "arrow1_visibility";
	rename -uid "4BAA1E3C-6D4A-C21E-3F2F-D7A3C5B19F6B";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 1 20 1 30 1 35 1 40 1 50 1 55 1 60 1 70 1
		 75 1 80 1 90 1 110 1 120 1 140 1 170 1 190 1 200 1 205 1 210 1 220 1 225 1 230 1
		 240 1 245 1 250 1 260 1 275 1 280 1 285 1 290 1 295 1 300 1 325 1;
	setAttr -s 34 ".kit[0:33]"  9 1 2 2 1 2 2 1 
		2 2 2 1 1 1 1 1 1 2 9 2 2 2 2 9 9 
		9 9 1 1 9 9 1 1 1;
	setAttr -s 34 ".kot[0:33]"  5 5 2 2 1 2 2 1 
		2 2 2 1 1 1 1 1 1 2 5 2 2 2 2 5 5 
		5 5 1 1 5 5 1 1 1;
	setAttr -s 34 ".kix[1:33]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 34 ".kiy[1:33]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 34 ".kox[4:33]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 1 1 0 
		0 0 0 1 1 0 0 1 1 1;
	setAttr -s 34 ".koy[4:33]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "arrow1_translateX";
	rename -uid "6AA78614-034C-52AC-FC26-27BE9B77EA90";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 0 20 0 30 0 35 0 40 0 50 0 55 0 60 0 70 0
		 75 0 80 0 90 0 110 0 120 0 140 0 170 0 190 0 200 0 205 0 210 0 220 0 225 0 230 0
		 240 0 245 0 250 0 260 0 275 0 280 0 285 0 290 0 295 0 300 0 325 0;
	setAttr -s 34 ".kit[0:33]"  18 1 2 2 1 2 2 1 
		2 2 2 1 1 1 1 1 1 2 18 2 2 2 2 18 18 
		18 18 1 1 18 18 1 1 1;
	setAttr -s 34 ".kot[0:33]"  18 1 2 2 1 2 2 1 
		2 2 2 1 1 1 1 1 1 2 18 2 2 2 2 18 18 
		18 18 1 1 18 18 1 1 1;
	setAttr -s 34 ".kix[1:33]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 34 ".kiy[1:33]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 34 ".kox[1:33]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 34 ".koy[1:33]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "arrow1_translateY";
	rename -uid "84F625EB-224B-7EF3-168F-B58094C65E28";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 5.6302633995630984 20 5.6302633995630984
		 30 5.6302633995630984 35 5.6302633995630984 40 5.6302633995630984 50 5.6302633995630984
		 55 5.6302633995630984 60 5.6302633995630984 70 5.6302633995630984 75 5.6302633995630984
		 80 5.6302633995630984 90 5.6302633995630984 110 5.6302633995630984 120 5.6302633995630984
		 140 5.6302633995630984 170 5.6302633995630984 190 5.6302633995630984 200 5.6302633995630984
		 205 5.6302633995630984 210 5.6302633995630984 220 5.6302633995630984 225 5.6302633995630984
		 230 5.6302633995630984 240 5.6302633995630984 245 5.6302633995630984 250 5.6302633995630984
		 260 5.6302633995630984 275 5.6302633995630984 280 5.6302633995630984 285 5.6302633995630984
		 290 5.6302633995630984 295 5.6302633995630984 300 5.6302633995630984 325 5.6302633995630984;
	setAttr -s 34 ".kit[0:33]"  18 1 2 2 1 2 2 1 
		2 2 2 1 1 1 1 1 1 2 18 2 2 2 2 18 18 
		18 18 1 1 18 18 1 1 1;
	setAttr -s 34 ".kot[0:33]"  18 1 2 2 1 2 2 1 
		2 2 2 1 1 1 1 1 1 2 18 2 2 2 2 18 18 
		18 18 1 1 18 18 1 1 1;
	setAttr -s 34 ".kix[1:33]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 34 ".kiy[1:33]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 34 ".kox[1:33]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 34 ".koy[1:33]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "arrow1_translateZ";
	rename -uid "DE5E6EB0-9341-8FF5-9F99-3CAE969B9789";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 33.779376508592918 20 33.779376508592918
		 30 33.779376508592918 35 33.779376508592918 40 33.779376508592918 50 33.779376508592918
		 55 33.779376508592918 60 33.779376508592918 70 33.779376508592918 75 33.779376508592918
		 80 33.779376508592918 90 33.779376508592918 110 33.779376508592918 120 33.779376508592918
		 140 33.779376508592918 170 33.779376508592918 190 33.779376508592918 200 33.779376508592918
		 205 33.779376508592918 210 33.779376508592918 220 33.779376508592918 225 33.779376508592918
		 230 33.779376508592918 240 33.779376508592918 245 33.779376508592918 250 33.779376508592918
		 260 33.779376508592918 275 33.779376508592918 280 33.779376508592918 285 33.779376508592918
		 290 33.779376508592918 295 33.779376508592918 300 33.779376508592918 325 33.779376508592918;
	setAttr -s 34 ".kit[0:33]"  18 1 2 2 1 2 2 1 
		2 2 2 1 1 1 1 1 1 2 18 2 2 2 2 18 18 
		18 18 1 1 18 18 1 1 1;
	setAttr -s 34 ".kot[0:33]"  18 1 2 2 1 2 2 1 
		2 2 2 1 1 1 1 1 1 2 18 2 2 2 2 18 18 
		18 18 1 1 18 18 1 1 1;
	setAttr -s 34 ".kix[1:33]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 34 ".kiy[1:33]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 34 ".kox[1:33]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 34 ".koy[1:33]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "arrow1_rotateX";
	rename -uid "9A26BFAD-4E47-0D56-522F-E7A40572582A";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 0 20 0 30 0 35 0 40 0 50 0 55 0 60 0 70 0
		 75 0 80 0 90 0 110 0 120 0 140 0 170 0 190 0 200 0 205 0 210 0 220 0 225 0 230 0
		 240 0 245 0 250 0 260 0 275 0 280 0 285 0 290 0 295 0 300 0 325 0;
	setAttr -s 34 ".kit[0:33]"  18 1 2 2 1 2 2 1 
		2 2 2 1 1 1 1 1 1 2 18 2 2 2 2 18 18 
		18 18 1 1 18 18 1 1 1;
	setAttr -s 34 ".kot[0:33]"  18 1 2 2 1 2 2 1 
		2 2 2 1 1 1 1 1 1 2 18 2 2 2 2 18 18 
		18 18 1 1 18 18 1 1 1;
	setAttr -s 34 ".kix[1:33]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 34 ".kiy[1:33]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 34 ".kox[1:33]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 34 ".koy[1:33]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "arrow1_rotateY";
	rename -uid "F3D7F0A5-CF47-F25D-29FF-A7B1F7102603";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 225 20 225 30 225 35 225 40 225 50 225
		 55 225 60 225 70 225 75 225 80 225 90 225 110 225 120 225 140 225 170 225 190 225
		 200 225 205 225 210 225 220 225 225 225 230 225 240 225 245 225 250 225 260 225 275 225
		 280 225 285 225 290 225 295 225 300 225 325 225;
	setAttr -s 34 ".kit[0:33]"  18 1 2 2 1 2 2 1 
		2 2 2 1 1 1 1 1 1 2 18 2 2 2 2 18 18 
		18 18 1 1 18 18 1 1 1;
	setAttr -s 34 ".kot[0:33]"  18 1 2 2 1 2 2 1 
		2 2 2 1 1 1 1 1 1 2 18 2 2 2 2 18 18 
		18 18 1 1 18 18 1 1 1;
	setAttr -s 34 ".kix[1:33]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 34 ".kiy[1:33]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 34 ".kox[1:33]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 34 ".koy[1:33]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "arrow1_rotateZ";
	rename -uid "45C4DC5D-0345-0837-296C-758C21DB663B";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 0 20 0 30 0 35 0 40 0 50 0 55 0 60 0 70 0
		 75 0 80 0 90 0 110 0 120 0 140 0 170 0 190 0 200 0 205 0 210 0 220 0 225 0 230 0
		 240 0 245 0 250 0 260 0 275 0 280 0 285 0 290 0 295 0 300 0 325 0;
	setAttr -s 34 ".kit[0:33]"  18 1 2 2 1 2 2 1 
		2 2 2 1 1 1 1 1 1 2 18 2 2 2 2 18 18 
		18 18 1 1 18 18 1 1 1;
	setAttr -s 34 ".kot[0:33]"  18 1 2 2 1 2 2 1 
		2 2 2 1 1 1 1 1 1 2 18 2 2 2 2 18 18 
		18 18 1 1 18 18 1 1 1;
	setAttr -s 34 ".kix[1:33]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 34 ".kiy[1:33]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 34 ".kox[1:33]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 34 ".koy[1:33]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "arrow1_scaleX";
	rename -uid "2909FE5C-7A46-7A34-9404-6CA4B0F9C9DF";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 0.99999999999999989 20 0.99999999999999989
		 30 0.99999999999999989 35 0.99999999999999989 40 0.99999999999999989 50 0.99999999999999989
		 55 0.99999999999999989 60 0.99999999999999989 70 0.99999999999999989 75 0.99999999999999989
		 80 0.99999999999999989 90 0.99999999999999989 110 0.99999999999999989 120 0.99999999999999989
		 140 0.99999999999999989 170 0.99999999999999989 190 0.99999999999999989 200 0.99999999999999989
		 205 0.99999999999999989 210 0.99999999999999989 220 0.99999999999999989 225 0.99999999999999989
		 230 0.99999999999999989 240 0.99999999999999989 245 0.99999999999999989 250 0.99999999999999989
		 260 0.99999999999999989 275 0.99999999999999989 280 0.99999999999999989 285 0.99999999999999989
		 290 0.99999999999999989 295 0.99999999999999989 300 0.99999999999999989 325 0.99999999999999989;
	setAttr -s 34 ".kit[0:33]"  18 1 2 2 1 2 2 1 
		2 2 2 1 1 1 1 1 1 2 18 2 2 2 2 18 18 
		18 18 1 1 18 18 1 1 1;
	setAttr -s 34 ".kot[0:33]"  18 1 2 2 1 2 2 1 
		2 2 2 1 1 1 1 1 1 2 18 2 2 2 2 18 18 
		18 18 1 1 18 18 1 1 1;
	setAttr -s 34 ".kix[1:33]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 34 ".kiy[1:33]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 34 ".kox[1:33]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 34 ".koy[1:33]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "arrow1_scaleY";
	rename -uid "51BA3E22-B247-AAC4-7E3D-3FB03B96C3C1";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 1 20 1 30 1 35 1 40 1 50 1 55 1 60 1 70 1
		 75 1 80 1 90 1 110 1 120 1 140 1 170 1 190 1 200 1 205 1 210 1 220 1 225 1 230 1
		 240 1 245 1 250 1 260 1 275 1 280 1 285 1 290 1 295 1 300 1 325 1;
	setAttr -s 34 ".kit[0:33]"  18 1 2 2 1 2 2 1 
		2 2 2 1 1 1 1 1 1 2 18 2 2 2 2 18 18 
		18 18 1 1 18 18 1 1 1;
	setAttr -s 34 ".kot[0:33]"  18 1 2 2 1 2 2 1 
		2 2 2 1 1 1 1 1 1 2 18 2 2 2 2 18 18 
		18 18 1 1 18 18 1 1 1;
	setAttr -s 34 ".kix[1:33]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 34 ".kiy[1:33]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 34 ".kox[1:33]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 34 ".koy[1:33]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "arrow1_scaleZ";
	rename -uid "E8BDD245-F34D-B588-A921-D5B501293719";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 0.99999999999999989 20 0.99999999999999989
		 30 0.99999999999999989 35 0.99999999999999989 40 0.99999999999999989 50 0.99999999999999989
		 55 0.99999999999999989 60 0.99999999999999989 70 0.99999999999999989 75 0.99999999999999989
		 80 0.99999999999999989 90 0.99999999999999989 110 0.99999999999999989 120 0.99999999999999989
		 140 0.99999999999999989 170 0.99999999999999989 190 0.99999999999999989 200 0.99999999999999989
		 205 0.99999999999999989 210 0.99999999999999989 220 0.99999999999999989 225 0.99999999999999989
		 230 0.99999999999999989 240 0.99999999999999989 245 0.99999999999999989 250 0.99999999999999989
		 260 0.99999999999999989 275 0.99999999999999989 280 0.99999999999999989 285 0.99999999999999989
		 290 0.99999999999999989 295 0.99999999999999989 300 0.99999999999999989 325 0.99999999999999989;
	setAttr -s 34 ".kit[0:33]"  18 1 2 2 1 2 2 1 
		2 2 2 1 1 1 1 1 1 2 18 2 2 2 2 18 18 
		18 18 1 1 18 18 1 1 1;
	setAttr -s 34 ".kot[0:33]"  18 1 2 2 1 2 2 1 
		2 2 2 1 1 1 1 1 1 2 18 2 2 2 2 18 18 
		18 18 1 1 18 18 1 1 1;
	setAttr -s 34 ".kix[1:33]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 34 ".kiy[1:33]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 34 ".kox[1:33]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 34 ".koy[1:33]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle14_visibility";
	rename -uid "00FB4DB5-0D40-7E97-6F1F-9DA516967EA3";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 44 ".ktv[0:43]"  0 1 11 1 17 1 20 1 30 1 35 1 40 1 50 1 55 1
		 60 1 70 1 75 1 80 1 90 1 95 1 100 1 110 1 120 1 125 1 130 1 140 1 170 1 175 1 180 1
		 190 1 200 1 205 1 210 1 220 1 225 1 230 1 240 1 245 1 250 1 260 1 265 1 270 1 275 1
		 280 1 285 1 290 1 295 1 300 1 325 1;
	setAttr -s 44 ".kit[0:43]"  9 1 1 1 2 2 1 2 
		2 1 2 2 2 1 1 9 1 1 1 1 1 1 1 1 1 
		2 9 2 2 2 2 9 9 9 9 9 9 1 1 1 1 2 
		1 1;
	setAttr -s 44 ".kot[0:43]"  5 5 5 5 2 2 1 2 
		2 1 2 2 2 1 1 5 1 1 1 1 1 1 1 1 1 
		2 5 2 2 2 2 5 5 5 5 5 5 1 1 1 1 2 
		1 1;
	setAttr -s 44 ".kix[1:43]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 44 ".kiy[1:43]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 44 ".kox[6:43]"  1 1 1 1 1 1 1 1 1 0 1 1 1 1 1 1 1 1 1 1 
		0 1 1 1 1 0 0 0 0 0 0 1 1 1 1 1 1 1;
	setAttr -s 44 ".koy[6:43]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "nurbsCircle14_translateX";
	rename -uid "89026164-3944-ADFD-E5AB-B9B954C9D8EA";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 44 ".ktv[0:43]"  0 -7.7834144969507193 11 -7.7834144969507193
		 17 1.0446623430118791 20 1.0446623430118791 30 1.0446623430118791 35 1.0446623430118791
		 40 1.0446623430118791 50 1.0446623430118791 55 1.0446623430118791 60 1.0446623430118791
		 70 1.0446623430118791 75 1.0446623430118791 80 1.0446623430118791 90 1.0446623430118791
		 95 1.0446623430118791 100 1.0446623430118791 110 1.0446623430118791 120 1.0446623430118791
		 125 1.0446623430118791 130 1.0446623430118791 140 1.0446623430118791 170 -12.251105933244276
		 175 -12.251105933244276 180 1.0446623430118791 190 1.0446623430118791 200 1.0446623430118791
		 205 1.0446623430118791 210 1.0446623430118791 220 1.0446623430118791 225 1.0446623430118791
		 230 1.0446623430118791 240 1.0446623430118791 245 1.0446623430118791 250 1.0446623430118791
		 260 1.0446623430118791 265 1.0446623430118791 270 1.0446623430118791 275 1.0446623430118791
		 280 1.0446623430118791 285 1.0446623430118791 290 1.0446623430118791 295 1.0446623430118791
		 300 1.0446623430118791 325 1.0446623430118791;
	setAttr -s 44 ".kit[0:43]"  18 1 1 1 2 2 1 2 
		2 1 2 2 2 1 1 18 1 1 1 1 1 1 1 1 1 
		2 18 2 2 2 2 18 18 18 18 18 18 1 1 1 1 2 
		1 1;
	setAttr -s 44 ".kot[0:43]"  18 1 1 1 2 2 1 2 
		2 1 2 2 2 1 1 18 1 1 1 1 1 1 1 1 1 
		2 18 2 2 2 2 18 18 18 18 18 18 1 1 1 1 2 
		1 1;
	setAttr -s 44 ".kix[1:43]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 44 ".kiy[1:43]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 44 ".kox[1:43]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 44 ".koy[1:43]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "nurbsCircle14_translateY";
	rename -uid "014E4B04-8842-4B13-5BA3-89989F154487";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 50 ".ktv[0:49]"  0 0 11 0 14 6.6919232288047965 17 0 20 0
		 30 0 35 0 40 0 50 0 55 0 60 0 70 0 75 0 80 0 90 0 95 0 97 12.52577998689322 100 0
		 110 0 120 0 125 0 127 13.473567495960452 130 0 140 0 170 0 175 0 177 7.4622634131372507
		 180 0 190 0 200 0 205 0 210 0 220 0 225 0 230 0 240 0 245 0 250 0 260 0 265 0 267 20.852384920686248
		 270 0 275 0 280 0 285 0 287 14.289836387534937 290 0 295 0 300 0 325 0;
	setAttr -s 50 ".kit[0:49]"  18 1 18 1 1 2 2 1 
		2 2 1 2 2 2 1 1 18 18 1 1 1 18 1 1 1 
		1 18 1 1 2 18 2 2 2 2 18 18 18 18 18 18 18 
		1 1 1 18 1 2 1 1;
	setAttr -s 50 ".kot[0:49]"  18 1 18 1 1 2 2 1 
		2 2 1 2 2 2 1 1 18 18 1 1 1 18 1 1 1 
		1 18 1 1 2 18 2 2 2 2 18 18 18 18 18 18 18 
		1 1 1 18 1 2 1 1;
	setAttr -s 50 ".kix[1:49]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 50 ".kiy[1:49]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 50 ".kox[1:49]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 50 ".koy[1:49]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "nurbsCircle14_translateZ";
	rename -uid "431F4BCF-1D4F-20B5-79B3-DCAB021749EA";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 44 ".ktv[0:43]"  0 -29.406498118572596 11 -29.406498118572596
		 17 -51.762139447876521 20 -51.762139447876521 30 -51.762139447876521 35 -51.762139447876521
		 40 -51.762139447876521 50 -51.762139447876521 55 -51.762139447876521 60 -51.762139447876521
		 70 -51.762139447876521 75 -51.762139447876521 80 -51.762139447876521 90 -51.762139447876521
		 95 -51.762139447876521 100 -51.762139447876521 110 -51.762139447876521 120 -51.762139447876521
		 125 -51.762139447876521 130 -51.762139447876521 140 -51.762139447876521 170 34.342521482503329
		 175 34.342521482503329 180 31.438671414428896 190 31.438671414428896 200 31.438671414428896
		 205 31.438671414428896 210 31.438671414428896 220 31.438671414428896 225 31.438671414428896
		 230 31.438671414428896 240 31.438671414428896 245 31.438671414428896 250 31.438671414428896
		 260 31.438671414428896 265 31.438671414428896 270 31.438671414428896 275 31.438671414428896
		 280 31.438671414428896 285 31.438671414428896 290 31.438671414428896 295 31.438671414428896
		 300 31.438671414428896 325 31.438671414428896;
	setAttr -s 44 ".kit[0:43]"  18 1 1 1 2 2 1 2 
		2 1 2 2 2 1 1 18 1 1 1 1 1 1 1 1 1 
		2 18 2 2 2 2 18 18 18 18 18 18 1 1 1 1 2 
		1 1;
	setAttr -s 44 ".kot[0:43]"  18 1 1 1 2 2 1 2 
		2 1 2 2 2 1 1 18 1 1 1 1 1 1 1 1 1 
		2 18 2 2 2 2 18 18 18 18 18 18 1 1 1 1 2 
		1 1;
	setAttr -s 44 ".kix[1:43]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.030034221708774567 0.030034221708774567 0.082922965288162231 
		1 1 1;
	setAttr -s 44 ".kiy[1:43]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.99954885244369507 0.99954885244369507 0.99655598402023315 
		0 0 0;
	setAttr -s 44 ".kox[1:43]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 44 ".koy[1:43]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "nurbsCircle14_rotateX";
	rename -uid "55E4A5DB-E649-2E93-4D95-578C57D743E7";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 50 ".ktv[0:49]"  0 0 11 0 14 15.64295643131647 17 0 20 0
		 30 0 35 0 40 0 50 0 55 0 60 0 70 0 75 0 80 0 90 0 95 0 97 45.180488706129061 100 0
		 110 0 120 0 125 0 127 65.780434557033388 130 0 140 0 170 0 175 0 177 6.0750772724450686
		 180 0 190 0 200 0 205 0 210 0 220 0 225 0 230 0 240 0 245 0 250 0 260 0 265 0 267 37.10511818262605
		 270 0 275 0 280 0 285 0 287 34.27126429899203 290 0 295 0 300 0 325 0;
	setAttr -s 50 ".kit[0:49]"  18 1 18 1 1 2 2 1 
		2 2 1 2 2 2 1 1 18 18 1 1 1 18 1 1 1 
		1 18 1 1 2 18 2 2 2 2 18 18 18 18 18 18 18 
		1 1 1 18 1 2 1 1;
	setAttr -s 50 ".kot[0:49]"  18 1 18 1 1 2 2 1 
		2 2 1 2 2 2 1 1 18 18 1 1 1 18 1 1 1 
		1 18 1 1 2 18 2 2 2 2 18 18 18 18 18 18 18 
		1 1 1 18 1 2 1 1;
	setAttr -s 50 ".kix[1:49]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 50 ".kiy[1:49]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 50 ".kox[1:49]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 50 ".koy[1:49]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "nurbsCircle14_rotateY";
	rename -uid "7540AD2D-9346-EC78-6308-E4BC3241E83A";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 47 ".ktv[0:46]"  0 -48.640487878130692 11 -48.640487878130692
		 17 -70.813421505477905 20 -70.813421505477905 30 -70.813421505477905 35 -70.813421505477905
		 40 -70.813421505477905 50 -70.813421505477905 55 -70.813421505477905 60 -70.813421505477905
		 70 -70.813421505477905 75 -70.813421505477905 80 -70.813421505477905 90 -70.813421505477905
		 95 -70.813421505477905 97 -68.277979528048292 100 -70.813421505477905 110 -70.813421505477905
		 120 -70.813421505477905 125 -70.813421505477905 127 -69.650410268418071 130 -70.813421505477905
		 140 -70.813421505477905 170 19.185106965392379 175 19.185106965392379 177 20.249274778669196
		 180 19.185106965392379 190 19.185106965392379 200 19.185106965392379 205 19.185106965392379
		 210 19.185106965392379 220 19.185106965392379 225 19.185106965392379 230 19.185106965392379
		 240 19.185106965392379 245 19.185106965392379 250 19.185106965392379 260 19.185106965392379
		 265 19.185106965392379 270 19.185106965392379 275 19.185106965392379 280 19.185106965392379
		 285 19.185106965392379 290 19.185106965392379 295 19.185106965392379 300 19.185106965392379
		 325 19.185106965392379;
	setAttr -s 47 ".kit[0:46]"  18 1 1 1 2 2 1 2 
		2 1 2 2 2 1 1 18 18 1 1 1 18 1 1 1 1 
		18 1 1 2 18 2 2 2 2 18 18 18 18 18 18 1 1 
		1 1 2 1 1;
	setAttr -s 47 ".kot[0:46]"  18 1 1 1 2 2 1 2 
		2 1 2 2 2 1 1 18 18 1 1 1 18 1 1 1 1 
		18 1 1 2 18 2 2 2 2 18 18 18 18 18 18 1 1 
		1 1 2 1 1;
	setAttr -s 47 ".kix[1:46]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.84673690795898438 0.84673690795898438 0.97521376609802246 
		1 1 1;
	setAttr -s 47 ".kiy[1:46]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.53201186656951904 0.53201186656951904 0.22126458585262299 
		0 0 0;
	setAttr -s 47 ".kox[1:46]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 47 ".koy[1:46]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "nurbsCircle14_rotateZ";
	rename -uid "EEF06EEC-C143-5587-115D-2B8BD015CE86";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 47 ".ktv[0:46]"  0 0 11 0 17 0 20 0 30 0 35 0 40 0 50 0 55 0
		 60 0 70 0 75 0 80 0 90 0 95 0 97 -17.303973068508657 100 0 110 0 120 0 125 0 127 -27.294504404699854
		 130 0 140 0 170 0 175 0 177 -2.0438344712164604 180 0 190 0 200 0 205 0 210 0 220 0
		 225 0 230 0 240 0 245 0 250 0 260 0 265 0 270 0 275 0 280 0 285 0 290 0 295 0 300 0
		 325 0;
	setAttr -s 47 ".kit[0:46]"  18 1 1 1 2 2 1 2 
		2 1 2 2 2 1 1 18 18 1 1 1 18 1 1 1 1 
		18 1 1 2 18 2 2 2 2 18 18 18 18 18 18 1 1 
		1 1 2 1 1;
	setAttr -s 47 ".kot[0:46]"  18 1 1 1 2 2 1 2 
		2 1 2 2 2 1 1 18 18 1 1 1 18 1 1 1 1 
		18 1 1 2 18 2 2 2 2 18 18 18 18 18 18 1 1 
		1 1 2 1 1;
	setAttr -s 47 ".kix[1:46]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 47 ".kiy[1:46]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 47 ".kox[1:46]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 47 ".koy[1:46]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle14_scaleX";
	rename -uid "26DD54D2-A64E-B596-B796-E2A39ADF5669";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 44 ".ktv[0:43]"  0 1 11 1 17 1 20 1 30 1 35 1 40 1 50 1 55 1
		 60 1 70 1 75 1 80 1 90 1 95 1 100 1 110 1 120 1 125 1 130 1 140 1 170 1 175 1 180 1
		 190 1 200 1 205 1 210 1 220 1 225 1 230 1 240 1 245 1 250 1 260 1 265 1 270 1 275 1
		 280 1 285 1 290 1 295 1 300 1 325 1;
	setAttr -s 44 ".kit[0:43]"  18 1 1 1 2 2 1 2 
		2 1 2 2 2 1 1 18 1 1 1 1 1 1 1 1 1 
		2 18 2 2 2 2 18 18 18 18 18 18 1 1 1 1 2 
		1 1;
	setAttr -s 44 ".kot[0:43]"  18 1 1 1 2 2 1 2 
		2 1 2 2 2 1 1 18 1 1 1 1 1 1 1 1 1 
		2 18 2 2 2 2 18 18 18 18 18 18 1 1 1 1 2 
		1 1;
	setAttr -s 44 ".kix[1:43]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 44 ".kiy[1:43]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 44 ".kox[1:43]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 44 ".koy[1:43]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle14_scaleY";
	rename -uid "722A9F55-594B-4269-D973-9493C084EE7C";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 44 ".ktv[0:43]"  0 1 11 1 17 1 20 1 30 1 35 1 40 1 50 1 55 1
		 60 1 70 1 75 1 80 1 90 1 95 1 100 1 110 1 120 1 125 1 130 1 140 1 170 1 175 1 180 1
		 190 1 200 1 205 1 210 1 220 1 225 1 230 1 240 1 245 1 250 1 260 1 265 1 270 1 275 1
		 280 1 285 1 290 1 295 1 300 1 325 1;
	setAttr -s 44 ".kit[0:43]"  18 1 1 1 2 2 1 2 
		2 1 2 2 2 1 1 18 1 1 1 1 1 1 1 1 1 
		2 18 2 2 2 2 18 18 18 18 18 18 1 1 1 1 2 
		1 1;
	setAttr -s 44 ".kot[0:43]"  18 1 1 1 2 2 1 2 
		2 1 2 2 2 1 1 18 1 1 1 1 1 1 1 1 1 
		2 18 2 2 2 2 18 18 18 18 18 18 1 1 1 1 2 
		1 1;
	setAttr -s 44 ".kix[1:43]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 44 ".kiy[1:43]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 44 ".kox[1:43]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 44 ".koy[1:43]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle14_scaleZ";
	rename -uid "A7FA7044-3B4A-09C8-6D09-F4AD5E1D53F2";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 44 ".ktv[0:43]"  0 1 11 1 17 1 20 1 30 1 35 1 40 1 50 1 55 1
		 60 1 70 1 75 1 80 1 90 1 95 1 100 1 110 1 120 1 125 1 130 1 140 1 170 1 175 1 180 1
		 190 1 200 1 205 1 210 1 220 1 225 1 230 1 240 1 245 1 250 1 260 1 265 1 270 1 275 1
		 280 1 285 1 290 1 295 1 300 1 325 1;
	setAttr -s 44 ".kit[0:43]"  18 1 1 1 2 2 1 2 
		2 1 2 2 2 1 1 18 1 1 1 1 1 1 1 1 1 
		2 18 2 2 2 2 18 18 18 18 18 18 1 1 1 1 2 
		1 1;
	setAttr -s 44 ".kot[0:43]"  18 1 1 1 2 2 1 2 
		2 1 2 2 2 1 1 18 1 1 1 1 1 1 1 1 1 
		2 18 2 2 2 2 18 18 18 18 18 18 1 1 1 1 2 
		1 1;
	setAttr -s 44 ".kix[1:43]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 44 ".kiy[1:43]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 44 ".kox[1:43]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 44 ".koy[1:43]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle15_visibility";
	rename -uid "30027F79-BB45-DCD2-C269-EFBD4B365CD9";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 1 20 1 30 1 35 1 40 1 50 1 55 1 60 1 70 1
		 75 1 80 1 90 1 110 1 120 1 140 1 170 1 190 1 200 1 205 1 210 1 220 1 225 1 230 1
		 240 1 245 1 250 1 260 1 275 1 280 1 285 1 290 1 295 1 300 1 325 1;
	setAttr -s 34 ".kit[0:33]"  9 1 2 2 1 2 2 1 
		2 2 2 1 1 1 1 1 1 2 9 2 2 2 2 9 9 
		9 9 1 1 9 9 1 1 1;
	setAttr -s 34 ".kot[0:33]"  5 5 2 2 1 2 2 1 
		2 2 2 1 1 1 1 1 1 2 5 2 2 2 2 5 5 
		5 5 1 1 5 5 1 1 1;
	setAttr -s 34 ".kix[1:33]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 34 ".kiy[1:33]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 34 ".kox[4:33]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 1 1 0 
		0 0 0 1 1 0 0 1 1 1;
	setAttr -s 34 ".koy[4:33]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "nurbsCircle15_translateX";
	rename -uid "843BF07A-6D43-435C-0B14-69A54B953262";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 0 20 0 30 0 35 0 40 0 50 0 55 0 60 0 70 0
		 75 0 80 0 90 0 110 0 120 0 140 0 170 0 190 0 200 0 205 0 210 0 220 0 225 0 230 0
		 240 0 245 0 250 0 260 0 275 0 280 0 285 0 290 0 295 0 300 0 325 0;
	setAttr -s 34 ".kit[0:33]"  18 1 2 2 1 2 2 1 
		2 2 2 1 1 1 1 1 1 2 18 2 2 2 2 18 18 
		18 18 1 1 18 18 1 1 1;
	setAttr -s 34 ".kot[0:33]"  18 1 2 2 1 2 2 1 
		2 2 2 1 1 1 1 1 1 2 18 2 2 2 2 18 18 
		18 18 1 1 18 18 1 1 1;
	setAttr -s 34 ".kix[1:33]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 34 ".kiy[1:33]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 34 ".kox[1:33]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 34 ".koy[1:33]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "nurbsCircle15_translateY";
	rename -uid "761B1AEF-2945-C9B8-D917-3D942129AD43";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 0 20 0 30 0 35 0 40 0 50 0 55 0 60 0 70 0
		 75 0 80 0 90 0 110 0 120 0 140 0 170 0 190 0 200 0 205 0 210 0 220 0 225 0 230 0
		 240 0 245 0 250 0 260 0 275 0 280 0 285 0 290 0 295 0 300 0 325 0;
	setAttr -s 34 ".kit[0:33]"  18 1 2 2 1 2 2 1 
		2 2 2 1 1 1 1 1 1 2 18 2 2 2 2 18 18 
		18 18 1 1 18 18 1 1 1;
	setAttr -s 34 ".kot[0:33]"  18 1 2 2 1 2 2 1 
		2 2 2 1 1 1 1 1 1 2 18 2 2 2 2 18 18 
		18 18 1 1 18 18 1 1 1;
	setAttr -s 34 ".kix[1:33]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 34 ".kiy[1:33]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 34 ".kox[1:33]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 34 ".koy[1:33]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "nurbsCircle15_translateZ";
	rename -uid "0DDAC9E0-C94D-E01E-DF40-BD85BDFB1774";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 0 20 0 30 0 35 0 40 0 50 0 55 0 60 0 70 0
		 75 0 80 0 90 0 110 0 120 0 140 0 170 0 190 0 200 0 205 0 210 0 220 0 225 0 230 0
		 240 0 245 0 250 0 260 0 275 0 280 0 285 0 290 0 295 0 300 0 325 0;
	setAttr -s 34 ".kit[0:33]"  18 1 2 2 1 2 2 1 
		2 2 2 1 1 1 1 1 1 2 18 2 2 2 2 18 18 
		18 18 1 1 18 18 1 1 1;
	setAttr -s 34 ".kot[0:33]"  18 1 2 2 1 2 2 1 
		2 2 2 1 1 1 1 1 1 2 18 2 2 2 2 18 18 
		18 18 1 1 18 18 1 1 1;
	setAttr -s 34 ".kix[1:33]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 34 ".kiy[1:33]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 34 ".kox[1:33]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 34 ".koy[1:33]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "nurbsCircle15_rotateX";
	rename -uid "A1B9F922-5A4A-658E-7E54-63ABB6882E22";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 0 20 0 30 0 35 0 40 0 50 0 55 0 60 0 70 0
		 75 0 80 0 90 0 110 0 120 0 140 0 170 0 190 0 200 0 205 0 210 0 220 0 225 0 230 0
		 240 0 245 0 250 0 260 0 275 0 280 0 285 0 290 0 295 0 300 0 325 0;
	setAttr -s 34 ".kit[0:33]"  18 1 2 2 1 2 2 1 
		2 2 2 1 1 1 1 1 1 2 18 2 2 2 2 18 18 
		18 18 1 1 18 18 1 1 1;
	setAttr -s 34 ".kot[0:33]"  18 1 2 2 1 2 2 1 
		2 2 2 1 1 1 1 1 1 2 18 2 2 2 2 18 18 
		18 18 1 1 18 18 1 1 1;
	setAttr -s 34 ".kix[1:33]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 34 ".kiy[1:33]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 34 ".kox[1:33]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 34 ".koy[1:33]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "nurbsCircle15_rotateY";
	rename -uid "5A23237E-F34F-8786-C92F-32B04B2BEAC6";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 0 20 0 30 0 35 0 40 0 50 0 55 0 60 0 70 0
		 75 0 80 0 90 0 110 0 120 0 140 0 170 0 190 0 200 0 205 0 210 0 220 0 225 0 230 0
		 240 0 245 0 250 0 260 0 275 0 280 0 285 0 290 0 295 0 300 0 325 0;
	setAttr -s 34 ".kit[0:33]"  18 1 2 2 1 2 2 1 
		2 2 2 1 1 1 1 1 1 2 18 2 2 2 2 18 18 
		18 18 1 1 18 18 1 1 1;
	setAttr -s 34 ".kot[0:33]"  18 1 2 2 1 2 2 1 
		2 2 2 1 1 1 1 1 1 2 18 2 2 2 2 18 18 
		18 18 1 1 18 18 1 1 1;
	setAttr -s 34 ".kix[1:33]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 34 ".kiy[1:33]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 34 ".kox[1:33]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 34 ".koy[1:33]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "nurbsCircle15_rotateZ";
	rename -uid "1DAA8D1E-3D44-59DB-175C-24A7F95A9CBC";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 0 20 0 30 0 35 0 40 0 50 0 55 0 60 0 70 0
		 75 0 80 0 90 0 110 0 120 0 140 0 170 0 190 0 200 0 205 0 210 0 220 0 225 0 230 0
		 240 0 245 0 250 0 260 0 275 0 280 0 285 0 290 0 295 0 300 0 325 0;
	setAttr -s 34 ".kit[0:33]"  18 1 2 2 1 2 2 1 
		2 2 2 1 1 1 1 1 1 2 18 2 2 2 2 18 18 
		18 18 1 1 18 18 1 1 1;
	setAttr -s 34 ".kot[0:33]"  18 1 2 2 1 2 2 1 
		2 2 2 1 1 1 1 1 1 2 18 2 2 2 2 18 18 
		18 18 1 1 18 18 1 1 1;
	setAttr -s 34 ".kix[1:33]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 34 ".kiy[1:33]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 34 ".kox[1:33]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 34 ".koy[1:33]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle15_scaleX";
	rename -uid "1D260E9B-514A-B752-2182-8BBED2D2002D";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 1 20 1 30 1 35 1 40 1 50 1 55 1 60 1 70 1
		 75 1 80 1 90 1 110 1 120 1 140 1 170 1 190 1 200 1 205 1 210 1 220 1 225 1 230 1
		 240 1 245 1 250 1 260 1 275 1 280 1 285 1 290 1 295 1 300 1 325 1;
	setAttr -s 34 ".kit[0:33]"  18 1 2 2 1 2 2 1 
		2 2 2 1 1 1 1 1 1 2 18 2 2 2 2 18 18 
		18 18 1 1 18 18 1 1 1;
	setAttr -s 34 ".kot[0:33]"  18 1 2 2 1 2 2 1 
		2 2 2 1 1 1 1 1 1 2 18 2 2 2 2 18 18 
		18 18 1 1 18 18 1 1 1;
	setAttr -s 34 ".kix[1:33]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 34 ".kiy[1:33]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 34 ".kox[1:33]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 34 ".koy[1:33]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle15_scaleY";
	rename -uid "7AB036F9-6046-B03C-6D25-CDAE6EE62E9C";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 1 20 1 30 1 35 1 40 1 50 1 55 1 60 1 70 1
		 75 1 80 1 90 1 110 1 120 1 140 1 170 1 190 1 200 1 205 1 210 1 220 1 225 1 230 1
		 240 1 245 1 250 1 260 1 275 1 280 1 285 1 290 1 295 1 300 1 325 1;
	setAttr -s 34 ".kit[0:33]"  18 1 2 2 1 2 2 1 
		2 2 2 1 1 1 1 1 1 2 18 2 2 2 2 18 18 
		18 18 1 1 18 18 1 1 1;
	setAttr -s 34 ".kot[0:33]"  18 1 2 2 1 2 2 1 
		2 2 2 1 1 1 1 1 1 2 18 2 2 2 2 18 18 
		18 18 1 1 18 18 1 1 1;
	setAttr -s 34 ".kix[1:33]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 34 ".kiy[1:33]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 34 ".kox[1:33]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 34 ".koy[1:33]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle15_scaleZ";
	rename -uid "C2909335-894F-B663-CDDD-C29C18A0E055";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 1 20 1 30 1 35 1 40 1 50 1 55 1 60 1 70 1
		 75 1 80 1 90 1 110 1 120 1 140 1 170 1 190 1 200 1 205 1 210 1 220 1 225 1 230 1
		 240 1 245 1 250 1 260 1 275 1 280 1 285 1 290 1 295 1 300 1 325 1;
	setAttr -s 34 ".kit[0:33]"  18 1 2 2 1 2 2 1 
		2 2 2 1 1 1 1 1 1 2 18 2 2 2 2 18 18 
		18 18 1 1 18 18 1 1 1;
	setAttr -s 34 ".kot[0:33]"  18 1 2 2 1 2 2 1 
		2 2 2 1 1 1 1 1 1 2 18 2 2 2 2 18 18 
		18 18 1 1 18 18 1 1 1;
	setAttr -s 34 ".kix[1:33]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 34 ".kiy[1:33]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 34 ".kox[1:33]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 34 ".koy[1:33]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle16_visibility";
	rename -uid "9239DB10-6C40-80D2-A3A8-3A9D4F6CFA71";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  0 1 20 1 30 1 35 1 40 1 50 1 55 1 60 1 70 1
		 75 1 80 1 90 1 110 1 120 1 135 1 140 1 170 1 190 1 200 1 205 1 210 1 220 1 225 1
		 230 1 240 1 245 1 250 1 260 1 275 1 280 1 285 1 290 1 295 1 300 1 325 1;
	setAttr -s 35 ".kit[0:34]"  9 1 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 9 2 2 2 2 9 
		9 9 9 1 1 9 9 1 1 1;
	setAttr -s 35 ".kot[0:34]"  5 5 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 5 2 2 2 2 5 
		5 5 5 1 1 5 5 1 1 1;
	setAttr -s 35 ".kix[1:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".kiy[1:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 35 ".kox[4:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 1 1 
		0 0 0 0 1 1 0 0 1 1 1;
	setAttr -s 35 ".koy[4:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "nurbsCircle16_translateX";
	rename -uid "84191247-3F46-B427-5BF0-52894C54E1CF";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  0 0 20 0 30 0 35 0 40 0 50 0 55 0 60 0 70 0
		 75 0 80 0 90 0 110 0 120 0 135 0 140 0 170 0 190 0 200 0 205 0 210 0 220 0 225 0
		 230 0 240 0 245 0 250 0 260 0 275 0 280 0 285 0 290 0 295 0 300 0 325 0;
	setAttr -s 35 ".kit[0:34]"  18 1 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 18 2 2 2 2 18 
		18 18 18 1 1 18 18 1 1 1;
	setAttr -s 35 ".kot[0:34]"  18 1 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 18 2 2 2 2 18 
		18 18 18 1 1 18 18 1 1 1;
	setAttr -s 35 ".kix[1:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".kiy[1:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 35 ".kox[1:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".koy[1:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "nurbsCircle16_translateY";
	rename -uid "3115E513-DC43-4E95-E392-AF80680B4664";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  0 0 20 0 30 0 35 0 40 0 50 0 55 0 60 0 70 0
		 75 0 80 0 90 0 110 0 120 0 135 0 140 0 170 0 190 0 200 0 205 0 210 0 220 0 225 0
		 230 0 240 0 245 0 250 0 260 0 275 0 280 0 285 0 290 0 295 0 300 0 325 0;
	setAttr -s 35 ".kit[0:34]"  18 1 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 18 2 2 2 2 18 
		18 18 18 1 1 18 18 1 1 1;
	setAttr -s 35 ".kot[0:34]"  18 1 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 18 2 2 2 2 18 
		18 18 18 1 1 18 18 1 1 1;
	setAttr -s 35 ".kix[1:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".kiy[1:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 35 ".kox[1:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".koy[1:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "nurbsCircle16_translateZ";
	rename -uid "86C0DB2D-DB49-4AA0-4928-20825AAE7C4B";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  0 0 20 0 30 0 35 0 40 0 50 0 55 0 60 0 70 0
		 75 0 80 0 90 0 110 0 120 0 135 0 140 0 170 0 190 0 200 0 205 0 210 0 220 0 225 0
		 230 0 240 0 245 0 250 0 260 0 275 0 280 0 285 0 290 0 295 0 300 0 325 0;
	setAttr -s 35 ".kit[0:34]"  18 1 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 18 2 2 2 2 18 
		18 18 18 1 1 18 18 1 1 1;
	setAttr -s 35 ".kot[0:34]"  18 1 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 18 2 2 2 2 18 
		18 18 18 1 1 18 18 1 1 1;
	setAttr -s 35 ".kix[1:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".kiy[1:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 35 ".kox[1:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".koy[1:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "nurbsCircle16_rotateX";
	rename -uid "26E758DD-AC42-3D5D-53CD-5D944EE5BCC6";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  0 0 20 0 30 0 35 0 40 0 50 0 55 0 60 0 70 0
		 75 0 80 0 90 0 110 0 120 0 135 0 140 0 170 0 190 0 200 0 205 0 210 0 220 0 225 0
		 230 0 240 0 245 0 250 0 260 0 275 0 280 0 285 0 290 0 295 0 300 0 325 0;
	setAttr -s 35 ".kit[0:34]"  18 1 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 18 2 2 2 2 18 
		18 18 18 1 1 18 18 1 1 1;
	setAttr -s 35 ".kot[0:34]"  18 1 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 18 2 2 2 2 18 
		18 18 18 1 1 18 18 1 1 1;
	setAttr -s 35 ".kix[1:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".kiy[1:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 35 ".kox[1:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".koy[1:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "nurbsCircle16_rotateY";
	rename -uid "78E1E3F7-4049-1977-F92F-D0B81E71F41C";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  0 0 20 0 30 0 35 0 40 0 50 0 55 0 60 0 70 0
		 75 0 80 0 90 0 110 0 120 0 135 0 140 0 170 0 190 0 200 0 205 0 210 0 220 0 225 0
		 230 0 240 0 245 0 250 0 260 0 275 0 280 0 285 0 290 0 295 0 300 0 325 0;
	setAttr -s 35 ".kit[0:34]"  18 1 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 18 2 2 2 2 18 
		18 18 18 1 1 18 18 1 1 1;
	setAttr -s 35 ".kot[0:34]"  18 1 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 18 2 2 2 2 18 
		18 18 18 1 1 18 18 1 1 1;
	setAttr -s 35 ".kix[1:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".kiy[1:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 35 ".kox[1:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".koy[1:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "nurbsCircle16_rotateZ";
	rename -uid "F7A56DC9-1743-D691-7693-358E09A14FAF";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  0 0 20 0 30 0 35 0 40 0 50 0 55 0 60 0 70 0
		 75 0 80 0 90 0 110 0 120 0 135 0 140 0 170 0 190 0 200 0 205 0 210 0 220 0 225 0
		 230 0 240 0 245 0 250 0 260 0 275 0 280 0 285 0 290 0 295 0 300 0 325 0;
	setAttr -s 35 ".kit[0:34]"  18 1 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 18 2 2 2 2 18 
		18 18 18 1 1 18 18 1 1 1;
	setAttr -s 35 ".kot[0:34]"  18 1 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 18 2 2 2 2 18 
		18 18 18 1 1 18 18 1 1 1;
	setAttr -s 35 ".kix[1:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".kiy[1:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 35 ".kox[1:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".koy[1:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle16_scaleX";
	rename -uid "020A83AC-7F4A-7D34-1262-95B343D4BE2C";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  0 1 20 1 30 1 35 1 40 1 50 1 55 1 60 1 70 1
		 75 1 80 1 90 1 110 1 120 1 135 1 140 1 170 1 190 1 200 1 205 1 210 1 220 1 225 1
		 230 1 240 1 245 1 250 1 260 1 275 1 280 1 285 1 290 1 295 1 300 1 325 1;
	setAttr -s 35 ".kit[0:34]"  18 1 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 18 2 2 2 2 18 
		18 18 18 1 1 18 18 1 1 1;
	setAttr -s 35 ".kot[0:34]"  18 1 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 18 2 2 2 2 18 
		18 18 18 1 1 18 18 1 1 1;
	setAttr -s 35 ".kix[1:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".kiy[1:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 35 ".kox[1:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".koy[1:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle16_scaleY";
	rename -uid "0592653C-E241-B0F7-F34C-3DBAAAD427E4";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  0 1 20 1 30 1 35 1 40 1 50 1 55 1 60 1 70 1
		 75 1 80 1 90 1 110 1 120 1 135 1 140 1 170 1 190 1 200 1 205 1 210 1 220 1 225 1
		 230 1 240 1 245 1 250 1 260 1 275 1 280 1 285 1 290 1 295 1 300 1 325 1;
	setAttr -s 35 ".kit[0:34]"  18 1 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 18 2 2 2 2 18 
		18 18 18 1 1 18 18 1 1 1;
	setAttr -s 35 ".kot[0:34]"  18 1 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 18 2 2 2 2 18 
		18 18 18 1 1 18 18 1 1 1;
	setAttr -s 35 ".kix[1:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".kiy[1:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 35 ".kox[1:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".koy[1:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle16_scaleZ";
	rename -uid "D934C4CF-BA4E-77FF-22AD-56AED692AA77";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  0 1 20 1 30 1 35 1 40 1 50 1 55 1 60 1 70 1
		 75 1 80 1 90 1 110 1 120 1 135 1 140 1 170 1 190 1 200 1 205 1 210 1 220 1 225 1
		 230 1 240 1 245 1 250 1 260 1 275 1 280 1 285 1 290 1 295 1 300 1 325 1;
	setAttr -s 35 ".kit[0:34]"  18 1 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 18 2 2 2 2 18 
		18 18 18 1 1 18 18 1 1 1;
	setAttr -s 35 ".kot[0:34]"  18 1 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 18 2 2 2 2 18 
		18 18 18 1 1 18 18 1 1 1;
	setAttr -s 35 ".kix[1:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".kiy[1:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 35 ".kox[1:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".koy[1:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle12_visibility";
	rename -uid "67BA03C4-D643-3C58-6060-B78824EF8623";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 1 20 1 30 1 35 1 40 1 50 1 55 1 60 1 70 1
		 75 1 80 1 90 1 95 1 100 1 110 1 120 1 125 1 130 1 132 1 140 1 170 1 180 1 190 1 200 1
		 205 1 210 1 220 1 225 1 230 1 240 1 245 1 250 1 260 1 275 1 280 1 285 1 290 1 295 1
		 300 1 303 1 306 1 325 1;
	setAttr -s 42 ".kit[0:41]"  9 1 2 2 1 2 2 1 
		2 2 2 2 1 1 2 2 1 18 18 18 1 9 1 2 9 
		2 2 2 2 9 9 9 9 1 1 9 9 1 1 9 1 1;
	setAttr -s 42 ".kot[0:41]"  5 5 2 2 1 2 2 1 
		2 2 2 2 1 1 2 2 1 18 18 18 1 5 1 2 5 
		2 2 2 2 5 5 5 5 1 1 5 5 1 1 5 5 1;
	setAttr -s 42 ".kix[1:41]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 42 ".kiy[1:41]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 42 ".kox[4:41]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 
		0 1 1 1 1 0 0 0 0 1 1 0 0 1 1 0 0 1;
	setAttr -s 42 ".koy[4:41]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "nurbsCircle12_translateX";
	rename -uid "7B688CE1-5843-36B7-493F-5F9EE0557FC9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 55 ".ktv[0:54]"  0 -57.860577312074241 10 -87.545627312258432
		 20 -91.105277263525053 30 -52.661045814463847 35 -52.661045814463847 36 -61.684899400538654
		 40 -52.661045814463847 50 -91.105277263525053 55 -91.105277263525053 60 -91.105277263525053
		 70 -124.5792552471098 75 -124.5792552471098 76 -115.11690892311434 80 -124.5792552471098
		 90 -124.5792552471098 95 -132.24908036778879 100 -96.033608776140866 105 -111.08931433694758
		 110 -91.105277263525053 120 -52.661045814463847 125 -52.661045814463847 130 -97.670231547960768
		 132 -101.6011924354944 135 -93.064708514752255 137 -91.215574947699153 140 -91.105277263525053
		 170 -55.51565925787456 180 -64.559439191077473 190 -61.608307780370509 200 -85.598158815973861
		 205 -85.598158815973861 210 -85.598158815973861 220 -61.608307780370509 225 -61.608307780370509
		 230 -61.608307780370509 240 -64.835142136545514 245 -64.835142136545514 250 -64.835142136545514
		 260 -64.835142136545514 265 -52.250610565685946 270 -51.861219784710151 275 -61.608307780370509
		 280 -85.598158815973861 285 -79.378584075896114 290 -57.692350652105468 295 -61.608307780370509
		 300 -61.608307780370509 303 -84.966932437533643 306 -80.672884483069794 310 -53.753507655290207
		 312 -43.0713743258883 315 -37.318215516071092 317 -47.163210494803977 321 -37.362317895946973
		 325 -61.608307780370509;
	setAttr -s 55 ".kit[2:54]"  1 2 2 18 1 2 2 1 
		2 2 2 2 2 1 1 18 2 2 1 18 18 18 18 18 1 
		18 1 2 18 2 2 2 2 18 18 18 18 18 18 1 1 18 
		18 1 1 18 1 18 18 18 18 18 1;
	setAttr -s 55 ".kot[2:54]"  1 2 2 18 1 2 2 1 
		2 2 2 2 2 1 1 18 2 2 1 18 18 18 18 18 1 
		18 1 2 18 2 2 2 2 18 18 18 18 18 18 1 1 18 
		18 1 1 18 1 18 18 18 18 18 1;
	setAttr -s 55 ".kix[2:54]"  1 0.010837573558092117 1 1 1 0.010837572626769543 
		1 1 0.012446518056094646 1 0.0044033834710717201 0.017610924318432808 1 1 0.018667975440621376 
		1 0.01042442861944437 0.010837568901479244 0.010837568901479244 0.0070662461221218109 
		1 0.020055772736668587 0.35339057445526123 0.35339057445526123 0.017365850508213043 
		1 0.017365850508213043 0.017365830019116402 1 1 0.017365850508213043 1 1 1 1 1 1 
		0.1755707859992981 1 0.017365850508213043 0.41335946321487427 0.014929494820535183 
		1 1 1 1 1 0.0066485223360359669 0.012674937024712563 1 1 1 1;
	setAttr -s 55 ".kiy[2:54]"  0 0.99994128942489624 0 0 0 -0.99994128942489624 
		0 0 -0.99992251396179199 0 0.99999022483825684 -0.99984490871429443 0 0 0.99982577562332153 
		0 0.99994570016860962 0.99994128942489624 0.99994128942489624 -0.99997502565383911 
		0 0.99979883432388306 0.93547588586807251 0.93547582626342773 0.99984920024871826 
		0 0.99984920024871826 -0.99984920024871826 0 0 0.99984920024871826 0 0 0 0 0 0 0.98446685075759888 
		0 0.99984920024871826 0.91056793928146362 0.99988859891891479 0 0 0 0 0 0.99997788667678833 
		0.99991971254348755 0 0 0 0;
	setAttr -s 55 ".kox[2:54]"  1 1 0.0046173380687832832 1 0.01625516265630722 
		1 1 0.018667967990040779 1 0.0044033834710717201 0.017610924318432808 1 0.027152696624398232 
		0.02488725446164608 0.010837568901479244 1 0.010837568901479244 1 0.00944529939442873 
		0.0070662465877830982 1 0.020055772736668587 0.35339057445526123 0.35339054465293884 
		1 1 1 1 1 0.017365850508213043 1 1 0.1280624121427536 1 1 1 1 0.1755707859992981 
		1 1 1 0.014929494820535183 1 0.1280624121427536 0.1280624121427536 1 1 0.0066485223360359669 
		0.012674936093389988 1 1 1 0.1280624121427536;
	setAttr -s 55 ".koy[2:54]"  0 0 -0.99998933076858521 0 -0.99986785650253296 
		0 0 -0.99982577562332153 0 0.99999022483825684 -0.99984490871429443 0 -0.99963128566741943 
		0.99969023466110229 0.99994128942489624 0 0.99994128942489624 0 -0.99995535612106323 
		-0.99997508525848389 0 0.99979883432388306 0.93547582626342773 0.93547588586807251 
		0 0 0 0 0 0.99984920024871826 0 0 -0.99176615476608276 0 0 0 0 0.9844667911529541 
		0 0 0 0.99988859891891479 0 -0.99176615476608276 -0.99176615476608276 0 0 0.99997794628143311 
		0.99991971254348755 0 0 0 -0.99176615476608276;
createNode animCurveTL -n "nurbsCircle12_translateY";
	rename -uid "9AA3966F-B04F-06E3-0722-4AA7A0C03616";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 51 ".ktv[0:50]"  0 -30.621132149172112 10 -20.96515595263736
		 20 5.8849689096110751 30 3.8592236359182284 35 3.8592236359182284 40 3.8592236359182284
		 50 5.8849689096110751 55 5.8849689096110751 60 5.8849689096110751 70 8.3763217158185181
		 75 8.3763217158185181 80 8.3763217158185181 90 8.3763217158185181 95 8.3763217158185181
		 100 14.052678635078308 105 8.0551365034813891 110 5.8849689096110751 120 3.8592236359182284
		 125 -11.569089034168115 130 -12.540674916232774 132 -0.55843770185876451 135 14.133368096082783
		 140 5.8849689096110751 170 -23.415031948908478 175 -26.638737316574513 180 -25.136311831399922
		 190 -23.415031948908478 200 -30.300159103792765 205 -30.300159103792765 210 -30.300159103792765
		 220 -23.415031948908478 225 -23.415031948908478 230 -23.415031948908478 240 -23.415031948908478
		 245 -23.415031948908478 250 -23.415031948908478 260 -23.415031948908478 265 -15.116411375740221
		 270 -21.632993009388422 275 -23.415031948908478 280 -30.300159103792765 285 -28.515130806985557
		 290 -25.391327776996778 295 -23.415031948908478 300 -23.415031948908478 303 -7.7030941337965118
		 306 -7.7030941337965118 312 -23.641088452063158 315 11.569094278906238 317 15.859201102398668
		 325 -23.415031948908478;
	setAttr -s 51 ".kit[2:50]"  1 2 2 1 2 2 1 2 
		2 2 2 1 1 18 2 2 1 18 18 18 18 1 18 18 1 
		2 18 2 2 2 2 18 18 18 18 18 18 1 1 18 18 1 
		1 18 1 18 18 18 1;
	setAttr -s 51 ".kot[2:50]"  1 2 2 1 2 2 1 2 
		2 2 2 1 1 18 2 2 1 18 18 18 18 1 18 18 1 
		2 18 2 2 2 2 18 18 18 18 18 18 1 1 18 18 1 
		1 18 1 18 18 18 1;
	setAttr -s 51 ".kix[2:50]"  1 0.20146805047988892 1 1 0.20146802067756653 
		1 1 0.16495412588119507 1 1 1 1 0.24332775175571442 0.050947681069374084 0.095559485256671906 
		0.20146796107292175 0.20146796107292175 1 0.0078101078979671001 1 0.038809504359960556 
		0.060406450182199478 1 0.19033218920230865 0.060406450182199478 0.060406383126974106 
		1 1 0.060406450182199478 1 1 1 1 1 1 1 0.050145909190177917 0.060406450182199478 
		0.068924844264984131 0.08457677811384201 0.081426531076431274 1 1 1 1 1 0.0064746853895485401 
		1 1;
	setAttr -s 51 ".kiy[2:50]"  0 -0.97949510812759399 0 0 0.97949510812759399 
		0 0 0.9863012433052063 0 0 0 0 -0.96994411945343018 -0.99870133399963379 -0.99542373418807983 
		-0.97949510812759399 -0.97949510812759399 0 0.99996954202651978 0 -0.99924665689468384 
		0.99817389249801636 0 0.9817197322845459 0.99817389249801636 -0.99817389249801636 
		0 0 0.99817389249801636 0 0 0 0 0 0 0 -0.99874192476272583 0.99817389249801636 -0.99762189388275146 
		0.99641698598861694 0.99667936563491821 0 0 0 0 0 0.99997907876968384 0 0;
	setAttr -s 51 ".kox[2:50]"  1 1 1 0.29481557011604309 1 1 0.24332769215106964 
		1 1 1 1 0.31721514463424683 0.20146796107292175 0.050947681069374084 0.20146796107292175 
		0.013502092100679874 0.0058990861289203167 1 0.0078101074323058128 1 0.038809508085250854 
		1 1 0.19033217430114746 1 1 1 0.060406450182199478 1 1 1 1 1 1 1 1 0.050145909190177917 
		1 1 0.08457677811384201 0.081426538527011871 1 1 1 1 1 0.0064746849238872528 1 1;
	setAttr -s 51 ".koy[2:50]"  0 0 0 0.95555418729782104 0 0 0.96994417905807495 
		0 0 0 0 -0.94835358858108521 -0.97949510812759399 -0.99870133399963379 -0.97949510812759399 
		-0.99990880489349365 -0.99998259544372559 0 0.999969482421875 0 -0.99924659729003906 
		0 0 0.9817197322845459 0 0 0 0.99817389249801636 0 0 0 0 0 0 0 0 -0.99874192476272583 
		0 0 0.99641698598861694 0.99667936563491821 0 0 0 0 0 0.99997901916503906 0 0;
createNode animCurveTL -n "nurbsCircle12_translateZ";
	rename -uid "1AB7D2BA-3E42-7C66-3ABA-CEB3BEA881CE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 57 ".ktv[0:56]"  0 16.471366084133965 10 40.574217811350408
		 16 53.265429864869404 20 43.764211662177217 30 25.563904022046444 35 25.563904022046444
		 36 13.956915183439747 40 25.563904022046444 50 43.764211662177217 55 43.764211662177217
		 56 35.871078913106032 60 43.764211662177217 70 23.156412771143536 75 23.156412771143536
		 76 15.888716994876845 80 23.156412771143536 90 23.156412771143536 95 3.0599551941314473
		 100 5.0079134372390977 105 22.17411406178698 110 43.764211662177217 120 25.563904022046444
		 125 25.563904022046444 130 30.561706536767453 132 36.45462135160728 135 49.192415991189669
		 137 62.481029725197232 140 43.764211662177217 170 -58.484728556820386 180 -68.510870076033342
		 190 -83.284670664491273 200 -73.789341799635224 205 -73.789341799635224 210 -73.789341799635224
		 220 -83.284670664491273 225 -83.284670664491273 230 -83.284670664491273 240 -57.518161537645256
		 245 -57.518161537645256 250 -57.518161537645256 260 -57.518161537645256 265 -55.603124118114138
		 270 -60.761115600073602 275 -83.284670664491273 280 -73.789341799635224 285 -76.251087288131316
		 290 -50.807713615967977 295 -83.284670664491273 300 -83.284670664491273 303 -65.697597578173401
		 306 -51.299092180265404 310 -72.145567338388233 312 -44.794064209292358 315 -12.735195950951244
		 317 -1.2468861654161856 321 -64.643266277261205 325 -83.284670664491273;
	setAttr -s 57 ".kit[3:56]"  1 2 2 18 1 2 2 18 
		1 2 2 2 2 2 1 1 18 2 2 1 18 18 18 18 18 
		1 18 1 2 18 2 2 2 2 18 18 18 18 18 18 1 1 
		18 18 1 1 18 1 18 18 18 18 18 1;
	setAttr -s 57 ".kot[3:56]"  1 2 2 18 1 2 2 18 
		1 2 2 2 2 2 1 1 18 2 2 1 18 18 18 18 18 
		1 18 1 2 18 2 2 2 2 18 18 18 18 18 18 1 1 
		18 18 1 1 18 1 18 18 18 18 18 1;
	setAttr -s 57 ".kix[3:56]"  1 0.022887388244271278 1 1 1 0.02288738451898098 
		1 1 1 0.020214755088090897 1 0.0057330494746565819 0.022926483303308487 1 1 0.03031439520418644 
		0.010750328190624714 0.0096490439027547836 0.022887378931045532 0.022887378931045532 
		0.026771603152155876 0.011181564070284367 0.0080044390633702278 1 0.011366118676960468 
		0.043839067220687866 0.033583264797925949 0.043839067220687866 0.043839018791913986 
		1 1 0.043839067220687866 1 1 1 1 1 1 1 0.015050417743623257 0.043839067220687866 
		0.021262090653181076 1 1 1 1 0.0078157838433980942 1 1 0.0035066560376435518 0.0047840210609138012 
		1 0.00406314292922616 1;
	setAttr -s 57 ".kiy[3:56]"  0 -0.99973797798156738 0 0 0 0.99973797798156738 
		0 0 0 -0.99979567527770996 0 -0.99998354911804199 0.99973714351654053 0 0 0.99954038858413696 
		0.99994224309921265 0.99995344877243042 -0.99973797798156738 -0.99973797798156738 
		0.9996415376663208 0.99993747472763062 0.99996793270111084 0 -0.99993538856506348 
		-0.99903851747512817 -0.99943596124649048 -0.99903851747512817 0.99903851747512817 
		0 0 -0.99903851747512817 0 0 0 0 0 0 0 -0.99988675117492676 -0.99903851747512817 
		-0.99977391958236694 0 0 0 0 0.999969482421875 0 0 0.99999380111694336 0.99998855590820312 
		0 -0.99999171495437622 0;
	setAttr -s 57 ".kox[3:56]"  1 1 0.0035897644702345133 1 0.034319840371608734 
		1 0.0052787563763558865 1 0.030314384028315544 1 0.0057330494746565819 0.022926483303308487 
		1 0.010366108268499374 0.040404751896858215 0.022887378931045532 0.010750328190624714 
		0.022887378931045532 1 0.010654727928340435 0.026771603152155876 0.011181564070284367 
		0.0080044399946928024 1 0.011366118676960468 1 0.033583264797925949 1 1 1 0.043839067220687866 
		1 1 0.016168760135769844 1 1 1 1 1 0.015050417743623257 1 1 1 1 0.016168760135769844 
		0.016168760135769844 0.0078157838433980942 1 1 0.0035066560376435518 0.0047840210609138012 
		1 0.00406314292922616 0.016168760135769844;
	setAttr -s 57 ".koy[3:56]"  0 0 -0.99999350309371948 0 0.99941086769104004 
		0 -0.99998605251312256 0 -0.99954038858413696 0 -0.99998354911804199 0.99973714351654053 
		0 -0.99994629621505737 0.99918341636657715 -0.99973797798156738 0.99994224309921265 
		-0.99973797798156738 0 -0.99994325637817383 0.9996415376663208 0.99993747472763062 
		0.99996793270111084 0 -0.99993538856506348 0 -0.99943596124649048 0 0 0 -0.99903851747512817 
		0 0 0.99986928701400757 0 0 0 0 0 -0.99988675117492676 0 0 0 0 0.99986928701400757 
		0.99986928701400757 0.999969482421875 0 0 0.99999392032623291 0.99998849630355835 
		0 -0.99999171495437622 0.99986928701400757;
createNode animCurveTA -n "nurbsCircle12_rotateX";
	rename -uid "ADCC68E4-6346-443A-AE49-B6A0AC99D8B5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 51 ".ktv[0:50]"  0 -24.77848291268003 20 54.308553034584989
		 30 -9.3363504183311399 35 -9.3363504183311399 40 -9.3363504183311399 50 54.308553034584989
		 55 54.308553034584989 60 54.308553034584989 70 72.915510573502488 75 72.915510573502488
		 80 72.915510573502488 90 72.915510573502488 95 72.915510573502488 100 -28.882859778823065
		 105 28.707828676485558 110 54.308553034584989 120 -9.3363504183311399 125 -9.3363504183311399
		 130 65.552108375067903 132 54.308553034584989 135 62.312442196364152 140 54.308553034584989
		 170 -16.720841158932622 175 -43.205341662296846 180 -44.12239754392882 190 -47.671905436161744
		 200 -95.37605653579601 205 -95.37605653579601 210 -95.37605653579601 220 -47.671905436161744
		 225 -47.671905436161744 230 -47.671905436161744 240 -47.671905436161744 245 -47.671905436161744
		 250 -47.671905436161744 260 -47.671905436161744 265 -52.779923391016851 270 -53.902473108563115
		 275 -47.671905436161744 280 -95.37605653579601 285 -83.00834600954866 290 -34.50393776193787
		 295 -47.671905436161744 300 -47.671905436161744 303 -102.54317170229203 306 -102.54317170229203
		 310 -74.683456587662405 312 -72.796238689421102 315 -49.344900242198179 317 -62.431148239425255
		 325 -47.671905436161744;
	setAttr -s 51 ".kit[1:50]"  1 2 2 1 2 2 1 2 
		2 2 2 1 1 18 2 2 1 18 18 18 18 1 18 18 1 
		2 18 2 2 2 2 18 18 18 18 18 18 1 1 18 18 1 
		1 18 1 18 18 18 18 1;
	setAttr -s 51 ".kot[1:50]"  1 2 2 1 2 2 1 2 
		2 2 2 1 1 18 2 2 1 18 18 18 18 1 18 18 1 
		2 18 2 2 2 2 18 18 18 18 18 18 1 1 18 18 1 
		1 18 1 18 18 18 18 1;
	setAttr -s 51 ".kix[1:50]"  1 0.35120600461959839 1 1 0.35120600461959839 
		1 1 0.78872931003570557 1 1 1 1 0.88736057281494141 0.27583491802215576 0.42258387804031372 
		0.35120588541030884 0.35120588541030884 1 1 1 0.72649663686752319 0.44753125309944153 
		0.9744526743888855 0.99231088161468506 0.44753125309944153 0.44753086566925049 1 
		1 0.44753125309944153 1 1 1 1 1 1 0.96758991479873657 1 0.44753125309944153 0.69138097763061523 
		0.36511117219924927 1 1 1 1 1 0.64468240737915039 0.64468240737915039 1 1 1;
	setAttr -s 51 ".kiy[1:50]"  0 -0.93629813194274902 0 0 0.93629825115203857 
		0 0 0.61474055051803589 0 0 0 0 -0.46107614040374756 0.96120500564575195 0.90632390975952148 
		-0.93629825115203857 -0.93629825115203857 0 0 0 -0.68716990947723389 0.89426827430725098 
		-0.22459293901920319 -0.12377092242240906 0.89426827430725098 -0.89426851272583008 
		0 0 0.89426827430725098 0 0 0 0 0 0 -0.25252664089202881 0 0.89426827430725098 -0.72249031066894531 
		0.93096387386322021 0 0 0 0 0 0.76445049047470093 0.7644505500793457 0 0 0;
	setAttr -s 51 ".kox[1:50]"  1 1 1 0.49036103487014771 1 1 0.88736051321029663 
		1 1 1 1 0.9317481517791748 0.35120588541030884 0.27583491802215576 0.35120588541030884 
		1 0.66955298185348511 1 1 1 0.72649669647216797 1 0.9744526743888855 0.99231076240539551 
		1 1 1 0.44753125309944153 1 1 1 1 1 1 1 0.96758991479873657 1 1 1 0.36511117219924927 
		1 1 1 1 1 0.64468240737915039 0.64468240737915039 1 1 1;
	setAttr -s 51 ".koy[1:50]"  0 0 0 0.87151932716369629 0 0 0.4610762894153595 
		0 0 0 0 -0.36310514807701111 -0.93629825115203857 0.96120500564575195 -0.93629825115203857 
		0 0.74276429414749146 0 0 0 -0.68716996908187866 0 -0.22459292411804199 -0.12377091497182846 
		0 0 0 0.89426827430725098 0 0 0 0 0 0 0 -0.25252664089202881 0 0 0 0.93096387386322021 
		0 0 0 0 0 0.7644505500793457 0.7644505500793457 0 0 0;
createNode animCurveTA -n "nurbsCircle12_rotateY";
	rename -uid "8C4F27AD-0C46-7D6E-6433-58A70551B5AD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 51 ".ktv[0:50]"  0 19.278633500653267 20 -26.928047684442976
		 30 -43.095975806747461 35 -43.095975806747461 40 -43.095975806747461 50 -26.928047684442976
		 55 -26.928047684442976 60 -26.928047684442976 70 -7.0243898700388048 75 -7.0243898700388048
		 80 -7.0243898700388048 90 -7.0243898700388048 95 -7.0243898700388048 100 -39.988325637880365
		 105 -34.584278864281693 110 -26.928047684442976 120 -43.095975806747461 125 -43.095975806747461
		 130 -18.212933878339008 132 -26.928047684442976 135 -31.873996188996163 140 -26.928047684442976
		 170 13.803167488534877 175 36.852187669066218 180 36.896668193572836 190 60.164213889932725
		 200 59.816123504188063 205 59.816123504188063 210 59.816123504188063 220 60.164213889932725
		 225 60.164213889932725 230 60.164213889932725 240 60.164213889932725 245 60.164213889932725
		 250 60.164213889932725 260 60.164213889932725 265 42.657616354986416 270 52.502052392417355
		 275 60.164213889932725 280 59.816123504188063 285 59.906368923687687 290 53.114482597234563
		 295 60.164213889932725 300 60.164213889932725 303 17.458905227393274 306 17.458905227393274
		 310 58.612255428049359 312 -1.782257165575563 315 -14.379892075836976 317 -11.319065027313778
		 325 60.164213889932725;
	setAttr -s 51 ".kit[1:50]"  1 2 2 1 2 2 1 2 
		2 2 2 1 1 18 2 2 1 18 18 18 18 1 18 18 1 
		2 18 2 2 2 2 18 18 18 18 18 18 1 1 18 18 1 
		1 18 1 18 18 18 18 1;
	setAttr -s 51 ".kot[1:50]"  1 2 2 1 2 2 1 2 
		2 2 2 1 1 18 2 2 1 18 18 18 18 1 18 18 1 
		2 18 2 2 2 2 18 18 18 18 18 18 1 1 18 18 1 
		1 18 1 18 18 18 18 1;
	setAttr -s 51 ".kix[1:50]"  1 0.82798737287521362 1 1 0.82798737287521362 
		1 1 0.76807433366775513 1 1 1 1 0.87406104803085327 0.87730014324188232 0.84173345565795898 
		0.82798731327056885 0.82798731327056885 1 0.65797990560531616 1 0.87744945287704468 
		0.99989372491836548 0.99993747472763062 0.99993753433227539 0.99989372491836548 0.99989372491836548 
		1 1 0.99989372491836548 1 1 1 1 1 1 1 0.80641168355941772 0.99989372491836548 0.8553767204284668 
		1 1 1 1 1 1 1 0.18619193136692047 1 0.46133294701576233 1;
	setAttr -s 51 ".kiy[1:50]"  0 -0.56074666976928711 0 0 0.56074672937393188 
		0 0 0.64036071300506592 0 0 0 0 -0.48581603169441223 0.47994214296340942 0.53989326953887939 
		-0.56074684858322144 -0.56074684858322144 0 -0.75303542613983154 0 0.47966912388801575 
		0.014579215086996555 0.011178468354046345 0.011178469285368919 0.014579215086996555 
		-0.014579231850802898 0 0 0.014579215086996555 0 0 0 0 0 0 0 0.59135442972183228 
		0.014579215086996555 0.51800650358200073 0 0 0 0 0 0 0 -0.982513427734375 0 0.88722711801528931 
		0;
	setAttr -s 51 ".kox[1:50]"  1 1 1 0.91141128540039062 1 1 0.8740609884262085 
		1 1 1 1 0.92301315069198608 0.82798731327056885 0.87730014324188232 0.82798731327056885 
		1 0.25743046402931213 1 0.65797996520996094 1 0.87744951248168945 1 0.99993753433227539 
		0.99993747472763062 1 1 1 0.99989372491836548 1 1 1 1 1 1 1 1 0.80641168355941772 
		1 1 1 1 1 1 1 1 1 0.18619191646575928 1 0.46133294701576233 1;
	setAttr -s 51 ".koy[1:50]"  0 0 0 0.41149657964706421 0 0 0.48581618070602417 
		0 0 0 0 -0.38476833701133728 -0.56074684858322144 0.47994214296340942 -0.56074684858322144 
		0 0.96629685163497925 0 -0.75303536653518677 0 0.47966912388801575 0 0.011178469285368919 
		0.01117846742272377 0 0 0 0.014579215086996555 0 0 0 0 0 0 0 0 0.59135442972183228 
		0 0 0 0 0 0 0 0 0 -0.98251336812973022 0 0.88722705841064453 0;
createNode animCurveTA -n "nurbsCircle12_rotateZ";
	rename -uid "AD759380-0F44-3479-A33E-B2B049C136AC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 51 ".ktv[0:50]"  0 -118.89557508724543 20 -142.52898847056622
		 30 -116.73405713311936 35 -116.73405713311936 40 -116.73405713311936 50 -142.52898847056622
		 55 -142.52898847056622 60 -142.52898847056622 70 -128.67213456589255 75 -128.67213456589255
		 80 -128.67213456589255 90 -128.67213456589255 95 -128.67213456589255 100 -36.553696247595518
		 105 -103.35978151985914 110 -142.52898847056622 120 -116.73405713311936 125 -116.73405713311936
		 130 -130.23928987726205 132 -142.52898847056622 135 -147.72093656201471 140 -142.52898847056622
		 170 -31.400811606304146 175 -66.869580610001876 180 -58.140194118299284 190 -60.031726908533713
		 200 -109.72748243331449 205 -109.72748243331449 210 -109.72748243331449 220 -60.031726908533713
		 225 -60.031726908533713 230 -60.031726908533713 240 -60.031726908533713 245 -60.031726908533713
		 250 -60.031726908533713 260 -60.031726908533713 265 -39.033756653302085 270 -53.176827934214209
		 275 -60.031726908533713 280 -109.72748243331449 285 -96.843431369708881 290 -31.415137950259989
		 295 -60.031726908533713 300 -60.031726908533713 303 -159.34980572010019 306 -159.34980572010019
		 310 -77.215225766992603 312 -75.031672001695725 315 -95.36795155524625 317 -71.067015702663724
		 325 -60.031726908533713;
	setAttr -s 51 ".kit[1:50]"  1 2 2 1 2 2 1 2 
		2 2 2 1 1 18 2 2 1 18 18 18 18 1 18 18 1 
		2 18 2 2 2 2 18 18 18 18 18 18 1 1 18 18 1 
		1 18 1 18 18 18 18 1;
	setAttr -s 51 ".kot[1:50]"  1 2 2 1 2 2 1 2 
		2 2 2 1 1 18 2 2 1 18 18 18 18 1 18 18 1 
		2 18 2 2 2 2 18 18 18 18 18 18 1 1 18 18 1 
		1 18 1 18 18 18 18 1;
	setAttr -s 51 ".kix[1:50]"  1 0.67924022674560547 1 1 0.67924022674560547 
		1 1 0.86486804485321045 1 1 1 1 0.93261224031448364 0.21976469457149506 0.29150953888893127 
		0.67924004793167114 0.67924004793167114 0.5437195897102356 0.56389540433883667 1 
		0.6082758903503418 0.43301549553871155 1 1 0.43301549553871155 0.43301510810852051 
		1 1 0.43301549553871155 1 1 1 1 1 1 1 0.75087654590606689 0.43301549553871155 0.97476810216903687 
		0.29507097601890564 1 1 1 1 1 0.58901959657669067 1 1 0.55981606245040894 1;
	setAttr -s 51 ".kiy[1:50]"  0 0.73391604423522949 0 0 -0.73391610383987427 
		0 0 0.50199919939041138 0 0 0 0 -0.36088010668754578 -0.97555291652679443 -0.95656794309616089 
		0.73391610383987427 0.73391610383987427 -0.83926695585250854 -0.82584619522094727 
		0 0.79372566938400269 0.90138643980026245 0 0 0.90138643980026245 -0.90138667821884155 
		0 0 0.90138643980026245 0 0 0 0 0 0 0 -0.66044265031814575 0.90138643980026245 0.22321970760822296 
		0.9554753303527832 0 0 0 0 0 0.80811870098114014 0 0 0.8286169171333313 0;
	setAttr -s 51 ".kox[1:50]"  1 1 1 0.81140714883804321 1 1 0.93261218070983887 
		1 1 1 1 0.96037334203720093 0.67924004793167114 0.21976469457149506 0.67924004793167114 
		1 0.38043701648712158 0.54371953010559082 0.56389540433883667 1 0.6082758903503418 
		1 1 1 1 1 1 0.43301549553871155 1 1 1 1 1 1 1 1 0.75087654590606689 1 1 0.29507097601890564 
		1 1 1 1 1 0.58901965618133545 1 1 0.55981606245040894 1;
	setAttr -s 51 ".koy[1:50]"  0 0 0 -0.58448135852813721 0 0 0.36088022589683533 
		0 0 0 0 -0.27871686220169067 0.73391610383987427 -0.97555291652679443 0.73391610383987427 
		0 0.92480689287185669 -0.83926701545715332 -0.82584619522094727 0 0.79372572898864746 
		0 0 0 0 0 0 0.90138643980026245 0 0 0 0 0 0 0 0 -0.66044265031814575 0 0 0.9554753303527832 
		0 0 0 0 0 0.80811876058578491 0 0 0.8286169171333313 0;
createNode animCurveTU -n "nurbsCircle12_scaleX";
	rename -uid "615A6E64-5E4E-7C5F-4D79-39A666515798";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 1 20 1 30 1 35 1 40 1 50 1 55 1 60 1 70 1
		 75 1 80 1 90 1 95 1 100 1 110 1 120 1 125 1 130 1 132 1 140 1 170 1 180 1 190 1 200 1
		 205 1 210 1 220 1 225 1 230 1 240 1 245 1 250 1 260 1 275 1 280 1 285 1 290 1 295 1
		 300 1 303 1 306 1 325 1;
	setAttr -s 42 ".kit[0:41]"  18 1 2 2 1 2 2 1 
		2 2 2 2 1 1 2 2 1 18 18 18 1 18 1 2 18 
		2 2 2 2 18 18 18 18 1 1 18 18 1 1 18 1 1;
	setAttr -s 42 ".kot[0:41]"  18 1 2 2 1 2 2 1 
		2 2 2 2 1 1 2 2 1 18 18 18 1 18 1 2 18 
		2 2 2 2 18 18 18 18 1 1 18 18 1 1 18 1 1;
	setAttr -s 42 ".kix[1:41]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 42 ".kiy[1:41]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 42 ".kox[1:41]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 42 ".koy[1:41]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle12_scaleY";
	rename -uid "76DE6F3F-0C4A-9C31-5621-53B4E735CD6F";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 1 20 1 30 1 35 1 40 1 50 1 55 1 60 1 70 1
		 75 1 80 1 90 1 95 1 100 1 110 1 120 1 125 1 130 1 132 1 140 1 170 1 180 1 190 1 200 1
		 205 1 210 1 220 1 225 1 230 1 240 1 245 1 250 1 260 1 275 1 280 1 285 1 290 1 295 1
		 300 1 303 1 306 1 325 1;
	setAttr -s 42 ".kit[0:41]"  18 1 2 2 1 2 2 1 
		2 2 2 2 1 1 2 2 1 18 18 18 1 18 1 2 18 
		2 2 2 2 18 18 18 18 1 1 18 18 1 1 18 1 1;
	setAttr -s 42 ".kot[0:41]"  18 1 2 2 1 2 2 1 
		2 2 2 2 1 1 2 2 1 18 18 18 1 18 1 2 18 
		2 2 2 2 18 18 18 18 1 1 18 18 1 1 18 1 1;
	setAttr -s 42 ".kix[1:41]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 42 ".kiy[1:41]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 42 ".kox[1:41]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 42 ".koy[1:41]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle12_scaleZ";
	rename -uid "C9A4BA8F-DA47-1E0C-C73F-FE825E1373D3";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 1 20 1 30 1 35 1 40 1 50 1 55 1 60 1 70 1
		 75 1 80 1 90 1 95 1 100 1 110 1 120 1 125 1 130 1 132 1 140 1 170 1 180 1 190 1 200 1
		 205 1 210 1 220 1 225 1 230 1 240 1 245 1 250 1 260 1 275 1 280 1 285 1 290 1 295 1
		 300 1 303 1 306 1 325 1;
	setAttr -s 42 ".kit[0:41]"  18 1 2 2 1 2 2 1 
		2 2 2 2 1 1 2 2 1 18 18 18 1 18 1 2 18 
		2 2 2 2 18 18 18 18 1 1 18 18 1 1 18 1 1;
	setAttr -s 42 ".kot[0:41]"  18 1 2 2 1 2 2 1 
		2 2 2 2 1 1 2 2 1 18 18 18 1 18 1 2 18 
		2 2 2 2 18 18 18 18 1 1 18 18 1 1 18 1 1;
	setAttr -s 42 ".kix[1:41]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 42 ".kiy[1:41]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 42 ".kox[1:41]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 42 ".koy[1:41]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle12_Grip";
	rename -uid "CEBF4CD7-A645-EFD9-4A4F-B1A5EF4A8761";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 45 ".ktv[0:44]"  0 0.5 20 0.75 30 0.75 35 0.75 40 0.75 50 0.75
		 55 0.75 60 0.75 70 0.75 75 0.75 80 0.75 90 0.75 95 0.75 100 0.75 110 0.75 120 0.75
		 125 0.75 130 0 132 0.75 140 0.75 170 0.25 180 0.25 190 0.25 200 0.25 205 0.25 210 0.25
		 220 0.25 225 0.25 230 0.25 240 0.25 245 0.25 250 0.25 260 0.25 275 0.25 280 0.25
		 285 0.25 290 0.25 295 0.25 300 0.25 303 0 306 1 310 1 312 1 317 0 325 0.25;
	setAttr -s 45 ".kit[1:44]"  1 2 2 1 2 2 1 2 
		2 2 2 1 1 2 2 1 18 18 18 1 18 1 2 18 2 
		2 2 2 18 18 18 18 1 1 18 18 1 1 18 1 18 18 
		18 1;
	setAttr -s 45 ".kot[1:44]"  1 2 2 1 2 2 1 2 
		2 2 2 1 1 2 2 1 18 18 18 1 18 1 2 18 2 
		2 2 2 18 18 18 18 1 1 18 18 1 1 18 1 18 18 
		18 1;
	setAttr -s 45 ".kix[1:44]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 0.98058068752288818 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 45 ".kiy[1:44]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 -0.19611616432666779 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 45 ".kox[1:44]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 45 ".koy[1:44]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle13_visibility";
	rename -uid "8904089A-2740-EE0A-A7CD-E0935EC03C00";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  0 1 20 1 30 1 35 1 40 1 50 1 55 1 60 1 70 1
		 75 1 80 1 90 1 110 1 120 1 135 1 140 1 170 1 190 1 200 1 205 1 210 1 220 1 225 1
		 230 1 240 1 245 1 250 1 260 1 275 1 280 1 285 1 290 1 295 1 300 1 325 1;
	setAttr -s 35 ".kit[0:34]"  9 1 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 9 2 2 2 2 9 
		9 9 9 1 1 9 9 1 1 1;
	setAttr -s 35 ".kot[0:34]"  5 5 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 5 2 2 2 2 5 
		5 5 5 1 1 5 5 1 1 1;
	setAttr -s 35 ".kix[1:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".kiy[1:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 35 ".kox[4:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 1 1 
		0 0 0 0 1 1 0 0 1 1 1;
	setAttr -s 35 ".koy[4:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "nurbsCircle13_translateX";
	rename -uid "5A250603-0A4E-55FC-67D3-C082174A0858";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 39 ".ktv[0:38]"  0 7.0766990921498722 20 -24.732710725682772
		 30 -24.732710725682772 35 -24.732710725682772 40 -24.732710725682772 50 -24.732710725682772
		 55 -24.732710725682772 60 -24.732710725682772 70 -3.1811708192818751 75 -3.1811708192818751
		 80 -3.1811708192818751 90 -3.1811708192818751 100 65.280054685506386 110 -24.732710725682772
		 120 -24.732710725682772 125 31.476008051027655 130 -29.078767459114662 135 -63.786047224505282
		 140 -24.732710725682772 170 5.5338374801162828 190 5.5338374801162828 200 5.5338374801162828
		 205 5.5338374801162828 210 5.5338374801162828 220 5.5338374801162828 225 5.5338374801162828
		 230 5.5338374801162828 240 5.5338374801162828 245 5.5338374801162828 250 5.5338374801162828
		 260 5.5338374801162828 275 5.5338374801162828 280 5.5338374801162828 285 5.5338374801162828
		 290 5.5338374801162828 295 5.5338374801162828 300 5.5338374801162828 317 23.123446635403852
		 325 5.5338374801162828;
	setAttr -s 39 ".kit[1:38]"  1 2 2 1 2 2 1 2 
		2 2 1 18 18 18 18 18 18 18 1 1 2 18 2 2 2 
		2 18 18 18 18 1 1 18 18 1 1 18 1;
	setAttr -s 39 ".kot[1:38]"  1 2 2 1 2 2 1 2 
		2 2 1 18 18 18 18 18 18 18 1 1 2 18 2 2 2 
		2 18 18 18 18 1 1 18 18 1 1 18 1;
	setAttr -s 39 ".kix[1:38]"  1 1 1 1 1 1 1 0.019329888746142387 1 1 
		1 1 1 1 1 0.0043738558888435364 1 0.021033082157373428 1 1 1 1 1 1 1 1 1 1 1 1 1 
		0.082319080829620361 1 1 1 1 1 1;
	setAttr -s 39 ".kiy[1:38]"  0 0 0 0 0 0 0 0.99981313943862915 0 0 0 
		0 0 0 0 -0.99999040365219116 0 0.99977874755859375 0 0 0 0 0 0 0 0 0 0 0 0 0 0.99660599231719971 
		0 0 0 0 0 0;
	setAttr -s 39 ".kox[1:38]"  1 1 1 1 1 1 0.028988057747483253 1 1 1 
		1 1 1 1 1 0.0043738563545048237 1 0.021033082157373428 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1;
	setAttr -s 39 ".koy[1:38]"  0 0 0 0 0 0 0.99957972764968872 0 0 0 0 
		0 0 0 0 -0.99999046325683594 0 0.99977874755859375 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0;
createNode animCurveTL -n "nurbsCircle13_translateY";
	rename -uid "CA8D6CAA-6445-7C8A-4007-088EE35BE5C7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 39 ".ktv[0:38]"  0 54.600829382795503 20 40.568203616787613
		 30 40.568203616787613 35 40.568203616787613 40 40.568203616787613 50 40.568203616787613
		 55 40.568203616787613 60 40.568203616787613 70 64.851338296717117 75 64.851338296717117
		 80 64.851338296717117 90 64.851338296717117 100 103.90473984603456 110 40.568203616787613
		 120 40.568203616787613 125 91.816639973067964 130 18.992807659199002 135 13.118006524814636
		 140 40.568203616787613 170 21.237424932918543 190 21.237424932918543 200 21.237424932918543
		 205 21.237424932918543 210 21.237424932918543 220 21.237424932918543 225 21.237424932918543
		 230 21.237424932918543 240 21.237424932918543 245 21.237424932918543 250 21.237424932918543
		 260 21.237424932918543 275 21.237424932918543 280 21.237424932918543 285 21.237424932918543
		 290 21.237424932918543 295 21.237424932918543 300 21.237424932918543 317 70.395703658878119
		 325 21.237424932918543;
	setAttr -s 39 ".kit[1:38]"  1 2 2 1 2 2 1 2 
		2 2 1 18 18 18 18 18 18 18 1 1 2 18 2 2 2 
		2 18 18 18 18 1 1 18 18 1 1 18 1;
	setAttr -s 39 ".kot[1:38]"  1 2 2 1 2 2 1 2 
		2 2 1 18 18 18 18 18 18 18 1 1 2 18 2 2 2 
		2 18 18 18 18 1 1 18 18 1 1 18 1;
	setAttr -s 39 ".kix[1:38]"  1 1 1 1 1 1 1 0.017156165093183517 1 1 
		1 1 1 1 1 0.011819914914667606 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.12825925648212433 
		1 1 1 1 1 1;
	setAttr -s 39 ".kiy[1:38]"  0 0 0 0 0 0 0 0.99985289573669434 0 0 0 
		0 0 0 0 -0.99993020296096802 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.9917406439781189 0 
		0 0 0 0 0;
	setAttr -s 39 ".kox[1:38]"  1 1 1 1 1 1 0.025729507207870483 1 1 1 
		1 1 1 1 1 0.011819914914667606 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 39 ".koy[1:38]"  0 0 0 0 0 0 0.99966895580291748 0 0 0 0 
		0 0 0 0 -0.99993020296096802 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "nurbsCircle13_translateZ";
	rename -uid "F0846278-1D4D-F039-4C08-05B895AC8CFE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 39 ".ktv[0:38]"  0 16.921727310373573 20 64.150664189602907
		 30 64.150664189602907 35 64.150664189602907 40 64.150664189602907 50 64.150664189602907
		 55 64.150664189602907 60 64.150664189602907 70 41.065761717298344 75 41.065761717298344
		 80 41.065761717298344 90 41.065761717298344 100 50.146504364614245 110 64.150664189602907
		 120 64.150664189602907 125 73.668466607058789 130 0.8100528508897713 135 29.69166434801803
		 140 64.150664189602907 170 -5.7500130410909716 190 -5.7500130410909716 200 -5.7500130410909716
		 205 -5.7500130410909716 210 -5.7500130410909716 220 -5.7500130410909716 225 -5.7500130410909716
		 230 -5.7500130410909716 240 -5.7500130410909716 245 -5.7500130410909716 250 -5.7500130410909716
		 260 -5.7500130410909716 275 -5.7500130410909716 280 -5.7500130410909716 285 -5.7500130410909716
		 290 -5.7500130410909716 295 -5.7500130410909716 300 -5.7500130410909716 317 39.820626583879125
		 325 -5.7500130410909716;
	setAttr -s 39 ".kit[1:38]"  1 2 2 1 2 2 1 2 
		2 2 1 18 18 18 18 18 18 18 1 1 2 18 2 2 2 
		2 18 18 18 18 1 1 18 18 1 1 18 1;
	setAttr -s 39 ".kot[1:38]"  1 2 2 1 2 2 1 2 
		2 2 1 18 18 18 18 18 18 18 1 1 2 18 2 2 2 
		2 18 18 18 18 1 1 18 18 1 1 18 1;
	setAttr -s 39 ".kix[1:38]"  1 1 1 1 1 1 1 0.018046379089355469 1 1 
		1 0.036075141280889511 1 1 1 1 0.006578054279088974 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.035742171108722687 
		1 1 1 1 1 1;
	setAttr -s 39 ".kiy[1:38]"  0 0 0 0 0 0 0 -0.99983716011047363 0 0 
		0 0.99934911727905273 0 0 0 0 0.99997836351394653 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.99936103820800781 
		0 0 0 0 0 0;
	setAttr -s 39 ".kox[1:38]"  1 1 1 1 1 1 0.027064055204391479 1 1 1 
		1 0.036075137555599213 1 1 1 1 0.006578054279088974 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1;
	setAttr -s 39 ".koy[1:38]"  0 0 0 0 0 0 -0.99963372945785522 0 0 0 
		0 0.99934899806976318 0 0 0 0 0.99997836351394653 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0;
createNode animCurveTA -n "nurbsCircle13_rotateX";
	rename -uid "E387DE28-144E-2352-B0DA-79A2180DA945";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  0 0 20 0 30 0 35 0 40 0 50 0 55 0 60 0 70 0
		 75 0 80 0 90 0 110 0 120 0 135 0 140 0 170 0 190 0 200 0 205 0 210 0 220 0 225 0
		 230 0 240 0 245 0 250 0 260 0 275 0 280 0 285 0 290 0 295 0 300 0 325 0;
	setAttr -s 35 ".kit[0:34]"  18 1 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 18 2 2 2 2 18 
		18 18 18 1 1 18 18 1 1 1;
	setAttr -s 35 ".kot[0:34]"  18 1 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 18 2 2 2 2 18 
		18 18 18 1 1 18 18 1 1 1;
	setAttr -s 35 ".kix[1:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".kiy[1:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 35 ".kox[1:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".koy[1:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "nurbsCircle13_rotateY";
	rename -uid "C25F035E-0148-69FD-2A9F-C6AED3D3455D";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  0 0 20 0 30 0 35 0 40 0 50 0 55 0 60 0 70 0
		 75 0 80 0 90 0 110 0 120 0 135 0 140 0 170 0 190 0 200 0 205 0 210 0 220 0 225 0
		 230 0 240 0 245 0 250 0 260 0 275 0 280 0 285 0 290 0 295 0 300 0 325 0;
	setAttr -s 35 ".kit[0:34]"  18 1 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 18 2 2 2 2 18 
		18 18 18 1 1 18 18 1 1 1;
	setAttr -s 35 ".kot[0:34]"  18 1 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 18 2 2 2 2 18 
		18 18 18 1 1 18 18 1 1 1;
	setAttr -s 35 ".kix[1:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".kiy[1:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 35 ".kox[1:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".koy[1:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "nurbsCircle13_rotateZ";
	rename -uid "60DD73E0-4140-4657-9C61-D7BE0ECE0DC9";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  0 0 20 0 30 0 35 0 40 0 50 0 55 0 60 0 70 0
		 75 0 80 0 90 0 110 0 120 0 135 0 140 0 170 0 190 0 200 0 205 0 210 0 220 0 225 0
		 230 0 240 0 245 0 250 0 260 0 275 0 280 0 285 0 290 0 295 0 300 0 325 0;
	setAttr -s 35 ".kit[0:34]"  18 1 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 18 2 2 2 2 18 
		18 18 18 1 1 18 18 1 1 1;
	setAttr -s 35 ".kot[0:34]"  18 1 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 18 2 2 2 2 18 
		18 18 18 1 1 18 18 1 1 1;
	setAttr -s 35 ".kix[1:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".kiy[1:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 35 ".kox[1:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".koy[1:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle13_scaleX";
	rename -uid "FD625DD3-E24F-B9A2-E150-28B6DFDBF021";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  0 1 20 1 30 1 35 1 40 1 50 1 55 1 60 1 70 1
		 75 1 80 1 90 1 110 1 120 1 135 1 140 1 170 1 190 1 200 1 205 1 210 1 220 1 225 1
		 230 1 240 1 245 1 250 1 260 1 275 1 280 1 285 1 290 1 295 1 300 1 325 1;
	setAttr -s 35 ".kit[0:34]"  18 1 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 18 2 2 2 2 18 
		18 18 18 1 1 18 18 1 1 1;
	setAttr -s 35 ".kot[0:34]"  18 1 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 18 2 2 2 2 18 
		18 18 18 1 1 18 18 1 1 1;
	setAttr -s 35 ".kix[1:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".kiy[1:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 35 ".kox[1:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".koy[1:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle13_scaleY";
	rename -uid "27756C83-3441-9AEC-BED0-DB9F0395CC15";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  0 1 20 1 30 1 35 1 40 1 50 1 55 1 60 1 70 1
		 75 1 80 1 90 1 110 1 120 1 135 1 140 1 170 1 190 1 200 1 205 1 210 1 220 1 225 1
		 230 1 240 1 245 1 250 1 260 1 275 1 280 1 285 1 290 1 295 1 300 1 325 1;
	setAttr -s 35 ".kit[0:34]"  18 1 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 18 2 2 2 2 18 
		18 18 18 1 1 18 18 1 1 1;
	setAttr -s 35 ".kot[0:34]"  18 1 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 18 2 2 2 2 18 
		18 18 18 1 1 18 18 1 1 1;
	setAttr -s 35 ".kix[1:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".kiy[1:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 35 ".kox[1:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".koy[1:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle13_scaleZ";
	rename -uid "13CD7BF7-D14B-2E83-FFE1-188FF894A36D";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  0 1 20 1 30 1 35 1 40 1 50 1 55 1 60 1 70 1
		 75 1 80 1 90 1 110 1 120 1 135 1 140 1 170 1 190 1 200 1 205 1 210 1 220 1 225 1
		 230 1 240 1 245 1 250 1 260 1 275 1 280 1 285 1 290 1 295 1 300 1 325 1;
	setAttr -s 35 ".kit[0:34]"  18 1 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 18 2 2 2 2 18 
		18 18 18 1 1 18 18 1 1 1;
	setAttr -s 35 ".kot[0:34]"  18 1 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 18 2 2 2 2 18 
		18 18 18 1 1 18 18 1 1 1;
	setAttr -s 35 ".kix[1:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".kiy[1:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 35 ".kox[1:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".koy[1:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle10_visibility";
	rename -uid "9F405BF5-164A-EDC2-5EEC-528D9350C824";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 1 20 1 30 1 35 1 40 1 50 1 55 1 60 1 70 1
		 75 1 80 1 90 1 95 1 101 1 110 1 120 1 125 1 130 1 132 1 140 1 170 1 190 1 200 1 205 1
		 210 1 220 1 225 1 230 1 240 1 245 1 250 1 260 1 265 1 270 1 275 1 280 1 285 1 290 1
		 295 1 300 1 305 1 325 1;
createNode animCurveTL -n "nurbsCircle10_translateX";
	rename -uid "6182ED96-944A-ACD1-7277-8DAC575209B2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 53 ".ktv[0:52]"  0 24.32 10 14.987754317430387 20 30.512515673931471
		 30 33.291285145850722 35 33.291285145850722 36 24.267431559775915 40 33.291285145850722
		 50 30.512515673931471 55 30.512515673931471 60 30.512515673931471 70 41.089536643426591
		 75 41.089536643426591 76 50.551882967422053 80 41.089536643426591 90 41.089536643426591
		 95 33.049895751340507 97 22.488214043231359 99 11.835050340127646 101 15.882299462658708
		 105 12.737490379942848 110 30.512515673931471 120 33.291285145850722 125 33.291285145850722
		 130 23.471246837133247 132 20.016600501962095 135 28.55308442270422 137 30.402217989757329
		 140 30.512515673931471 170 38.251263663923908 190 40.748859710070747 200 110.6417806975509
		 205 110.6417806975509 210 110.6417806975509 220 40.748859710070747 225 40.748859710070747
		 230 40.748859710070747 240 -24.282476020173192 245 -24.282476020173192 246 -20.978988462985228
		 250 -24.282476020173192 260 -24.282476020173192 265 -14.385942485582092 270 20.180282202424763
		 275 40.748859710070747 280 110.6417806975509 285 102.18735557691284 290 84.960406109458887
		 295 40.748859710070747 300 40.748859710070747 305 40.748859710070747 310 91.945940007636551
		 315 98.692621028455761 325 40.748859710070747;
createNode animCurveTL -n "nurbsCircle10_translateY";
	rename -uid "7C6B41FD-EC4A-5384-7EE9-EA96C810BAE9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 48 ".ktv[0:47]"  0 -4.5 20 11.128454333806147 30 11.128454333806147
		 35 11.128454333806147 40 11.128454333806147 50 11.128454333806147 55 11.128454333806147
		 60 11.128454333806147 70 7.6912203256992058 75 7.6912203256992058 80 7.6912203256992058
		 90 7.6912203256992058 95 7.6912203256992058 101 11.128454333806147 105 3.5634529345985726
		 110 11.128454333806147 120 11.128454333806147 125 -4.2998583362801952 130 -1.9196425260761742
		 132 4.6850477223363072 140 11.128454333806147 170 -17.931442360338963 175 33.077908195192123
		 185 33.077908195192123 190 34.165735732935303 200 30.626813316043837 205 30.626813316043837
		 206 37.698078410360779 210 30.626813316043837 220 34.165735732935303 225 34.165735732935303
		 226 42.360251582779711 230 34.165735732935303 240 34.165735732935303 245 34.165735732935303
		 250 34.165735732935303 260 34.165735732935303 265 33.772520642422151 270 33.772520642422151
		 275 34.165735732935303 280 30.626813316043837 285 42.584991167009804 290 42.584991167009804
		 295 34.165735732935303 300 34.165735732935303 305 39.9740196815969 315 10.877056147588412
		 325 34.165735732935303;
	setAttr -s 48 ".kit[23:47]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 48 ".kot[23:47]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 48 ".kix[23:47]"  0.1880948394536972 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 48 ".kiy[23:47]"  0.9821508526802063 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 48 ".kox[23:47]"  0.1880948543548584 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 48 ".koy[23:47]"  0.9821508526802063 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "nurbsCircle10_translateZ";
	rename -uid "CAE18D20-C747-AA5E-4093-3195DB6F0581";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 59 ".ktv[0:58]"  0 -11.81 10 0.1570919306189964 17 -4.0188992648802877
		 20 -17.343925574366008 30 5.427170956372791 35 5.427170956372791 36 -6.1798178822339054
		 40 5.427170956372791 50 -17.343925574366008 55 -17.343925574366008 56 -25.237058323437193
		 60 -17.343925574366008 70 -36.227873078960066 75 -36.227873078960066 76 -43.495568855226757
		 80 -36.227873078960066 90 -36.227873078960066 95 -52.713814632446805 97 -48.677214421548818
		 99 -34.467139200320183 101 -29.973382582742854 105 -30.013910083204582 110 -17.343925574366008
		 120 5.427170956372791 125 5.427170956372791 130 -31.716100643860088 132 -24.653515884935974
		 135 -11.835515252783141 137 1.3728924886540068 140 -17.343925574366008 170 20.11428374812634
		 175 52.638111420203863 185 52.638111420203863 190 74.480445391583956 200 63.667133012403028
		 205 63.667133012403028 206 65.888126850626108 210 63.667133012403028 220 74.480445391583956
		 225 74.480445391583956 226 72.665947954365876 230 74.480445391583956 240 57.128407736919726
		 245 57.128407736919726 246 54.300162365983354 250 57.128407736919726 260 57.128407736919726
		 265 39.221170125010246 270 59.791642605658346 275 74.480445391583956 280 63.667133012403028
		 285 56.535745937312797 290 77.301269036360182 295 74.480445391583956 300 74.480445391583956
		 305 74.480445391583956 310 34.924669497777614 315 24.769482805455397 325 74.480445391583956;
	setAttr -s 59 ".kit[32:58]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18;
	setAttr -s 59 ".kot[32:58]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18;
	setAttr -s 59 ".kix[32:58]"  0.015326355583965778 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 0.011816379614174366 1 0.02321324497461319 1 1 1 1 1 0.0083814980462193489 
		1 1;
	setAttr -s 59 ".kiy[32:58]"  0.99988257884979248 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0.99993020296096802 0 -0.99973052740097046 0 0 0 0 0 -0.99996483325958252 
		0 0;
	setAttr -s 59 ".kox[32:58]"  0.015326355583965778 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 0.011816379614174366 1 0.02321324497461319 1 1 1 1 1 0.0083814980462193489 
		1 1;
	setAttr -s 59 ".koy[32:58]"  0.99988251924514771 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0.99993020296096802 0 -0.99973052740097046 0 0 0 0 0 -0.99996483325958252 
		0 0;
createNode animCurveTA -n "nurbsCircle10_rotateX";
	rename -uid "FFD879F3-0F4D-BA80-4F28-83AF7155AD7D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 53 ".ktv[0:52]"  0 35.448 20 0 30 0 35 0 40 0 50 0 55 0 60 0
		 70 0 75 0 80 0 90 0 95 0 101 0 110 0 120 0 125 0 130 11.42525112817218 132 0 135 -8.5443854408381732
		 140 0 170 44.116407432187586 175 -45 185 -45 190 0 200 0 205 0 206 -13.52901685926183
		 210 0 220 0 225 0 226 -13.542068091593203 230 0 240 0 245 0 246 -17.215584040308492
		 250 0 260 0 265 -39.559845683136174 270 -36.534091943361069 275 0 280 0 285 -31.006158552043022
		 290 -25.591219113978759 295 0 300 0 305 -18.313029069899457 307 -27.231649437164926
		 310 125.26950586475625 315 146.96933498730573 319 23.417052152770353 321 -33.743782463088912
		 325 0;
	setAttr -s 53 ".kit[23:52]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18;
	setAttr -s 53 ".kot[23:52]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18 18 18 18;
	setAttr -s 53 ".kix[23:52]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.79598724842071533 
		1 1 1 0.61006981134414673 1 1 0.52303802967071533 1 0.18035267293453217 1 0.079015620052814484 
		1 1;
	setAttr -s 53 ".kiy[23:52]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.60531330108642578 
		0 0 0 0.79234766960144043 0 0 -0.85230940580368042 0 0.98360198736190796 0 -0.99687337875366211 
		0 0;
	setAttr -s 53 ".kox[23:52]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.79598724842071533 
		1 1 1 0.61006981134414673 1 1 0.52303797006607056 1 0.18035265803337097 1 0.079015627503395081 
		1 1;
	setAttr -s 53 ".koy[23:52]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.60531330108642578 
		0 0 0 0.79234766960144043 0 0 -0.85230934619903564 0 0.98360204696655273 0 -0.99687337875366211 
		0 0;
createNode animCurveTA -n "nurbsCircle10_rotateY";
	rename -uid "B24AD9CE-374E-A33E-674D-BEA606691862";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 53 ".ktv[0:52]"  0 37.28 20 0 30 45 35 45 40 45 50 0 55 0
		 60 0 70 -45 75 -45 80 -45 90 -45 95 -45 97 -20.507161028373982 99 4.992575012864676
		 101 9.0647063375252479 105 -5.1675596209691568 110 0 120 45 125 45 130 -9.5872532671480464
		 132 0 135 -0.03068866536684443 140 0 170 67.150122975199579 175 0 185 0 190 0 200 45
		 205 45 210 45 220 0 225 0 230 0 240 -45 245 -45 250 -45 260 -45 265 -40.764244050287019
		 270 -13.761883813660493 275 0 280 45 285 45 290 32.512043570311214 295 0 300 0 305 0
		 307 37.018866191440765 310 56.698093293351555 315 56.698093293351555 319 63.15624476388939
		 321 24.231987417871775 325 0;
	setAttr -s 53 ".kit[26:52]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18;
	setAttr -s 53 ".kot[26:52]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18;
	setAttr -s 53 ".kix[26:52]"  1 1 1 1 1 1 1 1 1 1 1 1 0.68466103076934814 
		0.50535589456558228 0.37639385461807251 1 1 0.46865010261535645 1 1 1 0.20601405203342438 
		1 1 1 0.22118431329727173 1;
	setAttr -s 53 ".kiy[26:52]"  0 0 0 0 0 0 0 0 0 0 0 0 0.72886162996292114 
		0.86291098594665527 0.9264596700668335 0 0 -0.88338392972946167 0 0 0 0.97854900360107422 
		0 0 0 -0.97523206472396851 0;
	setAttr -s 53 ".kox[26:52]"  1 1 1 1 1 1 1 1 1 1 1 1 0.68466103076934814 
		0.50535589456558228 0.3763938844203949 1 1 0.46865004301071167 1 1 1 0.20601408183574677 
		1 1 1 0.22118428349494934 1;
	setAttr -s 53 ".koy[26:52]"  0 0 0 0 0 0 0 0 0 0 0 0 0.72886162996292114 
		0.86291098594665527 0.9264596700668335 0 0 -0.88338387012481689 0 0 0 0.97854906320571899 
		0 0 0 -0.97523194551467896 0;
createNode animCurveTA -n "nurbsCircle10_rotateZ";
	rename -uid "A01D72E2-0C42-A43C-DF3F-CAA5C1E5DE46";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 50 ".ktv[0:49]"  0 2.71 20 0 30 0 35 0 40 0 50 0 55 0 60 0
		 70 0 75 0 80 0 90 0 95 0 101 0 110 0 120 0 125 0 130 6.1805315283978493 132 0 135 -1.2518716467555613
		 140 0 170 -20.210181022080182 175 0 185 0 190 0 200 0 205 0 210 0 220 0 225 0 230 0
		 240 0 245 0 250 0 260 0 265 -0.69747187616025308 270 -8.3134638866406885 275 0 280 0
		 285 0 290 8.5889598617438256 295 0 300 0 305 0 307 7.8553008629858914 310 166.69017316030684
		 315 166.69017316030684 319 80.5986844913281 321 17.306459064181421 325 0;
	setAttr -s 50 ".kit[23:49]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18;
	setAttr -s 50 ".kot[23:49]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 18 
		18 18;
	setAttr -s 50 ".kix[23:49]"  1 1 1 1 1 1 1 1 1 1 1 1 0.98498135805130005 
		1 1 1 1 1 1 1 1 0.19857503473758698 1 1 0.095449134707450867 0.18089163303375244 
		1;
	setAttr -s 50 ".kiy[23:49]"  0 0 0 0 0 0 0 0 0 0 0 0 -0.17266060411930084 
		0 0 0 0 0 0 0 0 0.98008567094802856 0 0 -0.99543434381484985 -0.98350304365158081 
		0;
	setAttr -s 50 ".kox[23:49]"  1 1 1 1 1 1 1 1 1 1 1 1 0.98498135805130005 
		1 1 1 1 1 1 1 1 0.19857503473758698 1 1 0.095449134707450867 0.18089161813259125 
		1;
	setAttr -s 50 ".koy[23:49]"  0 0 0 0 0 0 0 0 0 0 0 0 -0.17266060411930084 
		0 0 0 0 0 0 0 0 0.98008573055267334 0 0 -0.99543434381484985 -0.98350304365158081 
		0;
createNode animCurveTU -n "nurbsCircle10_scaleX";
	rename -uid "0A7B0334-6C44-E6E1-4E24-2597027D0784";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 1 20 1 30 1 35 1 40 1 50 1 55 1 60 1 70 1
		 75 1 80 1 90 1 95 1 101 1 110 1 120 1 125 1 130 1 132 1 140 1 170 1 190 1 200 1 205 1
		 210 1 220 1 225 1 230 1 240 1 245 1 250 1 260 1 265 1 270 1 275 1 280 1 285 1 290 1
		 295 1 300 1 305 1 325 1;
createNode animCurveTU -n "nurbsCircle10_scaleY";
	rename -uid "DDFAFB6B-FF42-9822-2CEF-F7B6BAB30D82";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 1 20 1 30 1 35 1 40 1 50 1 55 1 60 1 70 1
		 75 1 80 1 90 1 95 1 101 1 110 1 120 1 125 1 130 1 132 1 140 1 170 1 190 1 200 1 205 1
		 210 1 220 1 225 1 230 1 240 1 245 1 250 1 260 1 265 1 270 1 275 1 280 1 285 1 290 1
		 295 1 300 1 305 1 325 1;
createNode animCurveTU -n "nurbsCircle10_scaleZ";
	rename -uid "67D50781-A547-54CC-25C0-2F87D30C9492";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 1 20 1 30 1 35 1 40 1 50 1 55 1 60 1 70 1
		 75 1 80 1 90 1 95 1 101 1 110 1 120 1 125 1 130 1 132 1 140 1 170 1 190 1 200 1 205 1
		 210 1 220 1 225 1 230 1 240 1 245 1 250 1 260 1 265 1 270 1 275 1 280 1 285 1 290 1
		 295 1 300 1 305 1 325 1;
createNode animCurveTU -n "nurbsCircle10_Grip";
	rename -uid "D4AC0B48-FC46-2723-D633-9D8932D6A2B0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 42 ".ktv[0:41]"  0 1 20 1 30 1 35 1 40 1 50 1 55 1 60 1 70 1
		 75 1 80 1 90 1 95 1 101 1 110 1 120 1 125 1 130 1 132 1 140 1 170 1 190 1 200 1 205 1
		 210 1 220 1 225 1 230 1 240 1 245 1 250 1 260 1 265 1 270 1 275 1 280 1 285 1 290 1
		 295 1 300 1 305 1 325 1;
createNode animCurveTU -n "nurbsCircle11_visibility";
	rename -uid "C02DE8ED-324B-72AE-B4AC-82882BD036A9";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  0 1 20 1 30 1 35 1 40 1 50 1 55 1 60 1 70 1
		 75 1 80 1 90 1 110 1 120 1 135 1 140 1 170 1 190 1 200 1 205 1 210 1 220 1 225 1
		 230 1 240 1 245 1 250 1 260 1 275 1 280 1 285 1 290 1 295 1 300 1 325 1;
	setAttr -s 35 ".kit[0:34]"  9 1 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 9 2 2 2 2 9 
		9 9 9 1 1 9 9 1 1 1;
	setAttr -s 35 ".kot[0:34]"  5 5 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 5 2 2 2 2 5 
		5 5 5 1 1 5 5 1 1 1;
	setAttr -s 35 ".kix[1:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".kiy[1:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 35 ".kox[4:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 1 1 
		0 0 0 0 1 1 0 0 1 1 1;
	setAttr -s 35 ".koy[4:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "nurbsCircle11_translateX";
	rename -uid "F49B4708-2D40-F2C1-6DA9-749046571CA5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 38 ".ktv[0:37]"  0 0 20 -48.926633597951145 30 -48.926633597951145
		 35 -48.926633597951145 40 -48.926633597951145 50 -48.926633597951145 55 -48.926633597951145
		 60 -48.926633597951145 70 -48.926633597951145 75 -48.926633597951145 80 -48.926633597951145
		 90 -48.926633597951145 110 -48.926633597951145 120 -48.926633597951145 125 -66.795147280498128
		 135 -48.926633597951145 140 -48.926633597951145 170 -9.5922920552244975 190 -9.5922920552244975
		 200 -9.5922920552244975 205 -9.5922920552244975 210 -9.5922920552244975 220 -9.5922920552244975
		 225 -9.5922920552244975 230 -9.5922920552244975 240 -9.5922920552244975 245 -9.5922920552244975
		 250 -9.5922920552244975 260 -9.5922920552244975 275 -9.5922920552244975 280 -9.5922920552244975
		 285 -9.5922920552244975 290 -9.5922920552244975 295 -9.5922920552244975 300 -9.5922920552244975
		 310 17.275013761058261 319 -31.382808639073001 325 -9.5922920552244975;
	setAttr -s 38 ".kit[1:37]"  1 2 2 1 2 2 1 2 
		2 2 1 18 18 18 18 18 1 1 2 18 2 2 2 2 18 
		18 18 18 1 1 18 18 1 1 18 18 1;
	setAttr -s 38 ".kot[1:37]"  1 2 2 1 2 2 1 2 
		2 2 1 18 18 18 18 18 1 1 2 18 2 2 2 2 18 
		18 18 18 1 1 18 18 1 1 18 18 1;
	setAttr -s 38 ".kix[1:37]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 0.063429690897464752 1 1 1 1 1 1 1;
	setAttr -s 38 ".kiy[1:37]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0.99798625707626343 0 0 0 0 0 0 0;
	setAttr -s 38 ".kox[1:37]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 38 ".koy[1:37]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "nurbsCircle11_translateY";
	rename -uid "6BC2DA39-F047-3222-EADE-68804FD17A15";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 38 ".ktv[0:37]"  0 0 20 68.83228710488541 30 68.83228710488541
		 35 68.83228710488541 40 68.83228710488541 50 68.83228710488541 55 68.83228710488541
		 60 68.83228710488541 70 68.83228710488541 75 68.83228710488541 80 68.83228710488541
		 90 68.83228710488541 110 68.83228710488541 120 68.83228710488541 125 44.333725481743699
		 135 68.83228710488541 140 68.83228710488541 170 26.436915651762405 190 26.436915651762405
		 200 26.436915651762405 205 26.436915651762405 210 26.436915651762405 220 26.436915651762405
		 225 26.436915651762405 230 26.436915651762405 240 26.436915651762405 245 26.436915651762405
		 250 26.436915651762405 260 26.436915651762405 275 26.436915651762405 280 26.436915651762405
		 285 26.436915651762405 290 26.436915651762405 295 26.436915651762405 300 26.436915651762405
		 310 64.504467573408689 319 86.788322587660403 325 26.436915651762405;
	setAttr -s 38 ".kit[1:37]"  1 2 2 1 2 2 1 2 
		2 2 1 18 18 18 18 18 1 1 2 18 2 2 2 2 18 
		18 18 18 1 1 18 18 1 1 18 18 1;
	setAttr -s 38 ".kot[1:37]"  1 2 2 1 2 2 1 2 
		2 2 1 18 18 18 18 18 1 1 2 18 2 2 2 2 18 
		18 18 18 1 1 18 18 1 1 18 18 1;
	setAttr -s 38 ".kix[1:37]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 0.058866433799266815 1 1 1 1 0.013116494752466679 1 1;
	setAttr -s 38 ".kiy[1:37]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 -0.99826586246490479 0 0 0 0 0.99991399049758911 0 0;
	setAttr -s 38 ".kox[1:37]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.013116494752466679 1 1;
	setAttr -s 38 ".koy[1:37]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.99991399049758911 0 0;
createNode animCurveTL -n "nurbsCircle11_translateZ";
	rename -uid "F774EE06-3142-DE50-1D94-139A939374EC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 38 ".ktv[0:37]"  0 0 20 25.204556167072084 30 25.204556167072084
		 35 25.204556167072084 40 25.204556167072084 50 25.204556167072084 55 25.204556167072084
		 60 25.204556167072084 70 25.204556167072084 75 25.204556167072084 80 25.204556167072084
		 90 25.204556167072084 110 25.204556167072084 120 25.204556167072084 125 34.395332131703995
		 135 25.204556167072084 140 25.204556167072084 170 25.204556167072063 190 25.204556167072063
		 200 25.204556167072063 205 25.204556167072063 210 25.204556167072063 220 25.204556167072063
		 225 25.204556167072063 230 25.204556167072063 240 25.204556167072063 245 25.204556167072063
		 250 25.204556167072063 260 25.204556167072063 275 25.204556167072063 280 25.204556167072063
		 285 25.204556167072063 290 25.204556167072063 295 25.204556167072063 300 25.204556167072063
		 310 -44.106051336802274 319 -12.038519342499365 325 25.204556167072063;
	setAttr -s 38 ".kit[1:37]"  1 2 2 1 2 2 1 2 
		2 2 1 18 18 18 18 18 1 1 2 18 2 2 2 2 18 
		18 18 18 1 1 18 18 1 1 18 18 1;
	setAttr -s 38 ".kot[1:37]"  1 2 2 1 2 2 1 2 
		2 2 1 18 18 18 18 18 1 1 2 18 2 2 2 2 18 
		18 18 18 1 1 18 18 1 1 18 18 1;
	setAttr -s 38 ".kix[1:37]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.0090170120820403099 1;
	setAttr -s 38 ".kiy[1:37]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.99995934963226318 0;
	setAttr -s 38 ".kox[1:37]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.0090170120820403099 1;
	setAttr -s 38 ".koy[1:37]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.99995934963226318 0;
createNode animCurveTA -n "nurbsCircle11_rotateX";
	rename -uid "C4416D41-364C-D588-4101-5EBA6EF41168";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  0 0 20 0 30 0 35 0 40 0 50 0 55 0 60 0 70 0
		 75 0 80 0 90 0 110 0 120 0 135 0 140 0 170 0 190 0 200 0 205 0 210 0 220 0 225 0
		 230 0 240 0 245 0 250 0 260 0 275 0 280 0 285 0 290 0 295 0 300 0 325 0;
	setAttr -s 35 ".kit[0:34]"  18 1 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 18 2 2 2 2 18 
		18 18 18 1 1 18 18 1 1 1;
	setAttr -s 35 ".kot[0:34]"  18 1 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 18 2 2 2 2 18 
		18 18 18 1 1 18 18 1 1 1;
	setAttr -s 35 ".kix[1:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".kiy[1:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 35 ".kox[1:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".koy[1:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "nurbsCircle11_rotateY";
	rename -uid "E6361735-0A47-6426-CE03-F0AA9620BD87";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  0 0 20 0 30 0 35 0 40 0 50 0 55 0 60 0 70 0
		 75 0 80 0 90 0 110 0 120 0 135 0 140 0 170 0 190 0 200 0 205 0 210 0 220 0 225 0
		 230 0 240 0 245 0 250 0 260 0 275 0 280 0 285 0 290 0 295 0 300 0 325 0;
	setAttr -s 35 ".kit[0:34]"  18 1 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 18 2 2 2 2 18 
		18 18 18 1 1 18 18 1 1 1;
	setAttr -s 35 ".kot[0:34]"  18 1 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 18 2 2 2 2 18 
		18 18 18 1 1 18 18 1 1 1;
	setAttr -s 35 ".kix[1:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".kiy[1:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 35 ".kox[1:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".koy[1:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "nurbsCircle11_rotateZ";
	rename -uid "D46E1BA6-E948-D4D1-2361-168783EF6727";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  0 0 20 0 30 0 35 0 40 0 50 0 55 0 60 0 70 0
		 75 0 80 0 90 0 110 0 120 0 135 0 140 0 170 0 190 0 200 0 205 0 210 0 220 0 225 0
		 230 0 240 0 245 0 250 0 260 0 275 0 280 0 285 0 290 0 295 0 300 0 325 0;
	setAttr -s 35 ".kit[0:34]"  18 1 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 18 2 2 2 2 18 
		18 18 18 1 1 18 18 1 1 1;
	setAttr -s 35 ".kot[0:34]"  18 1 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 18 2 2 2 2 18 
		18 18 18 1 1 18 18 1 1 1;
	setAttr -s 35 ".kix[1:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".kiy[1:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 35 ".kox[1:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".koy[1:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle11_scaleX";
	rename -uid "35315F5E-A64C-AFE7-DC75-99AAB5D4459D";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  0 1 20 1 30 1 35 1 40 1 50 1 55 1 60 1 70 1
		 75 1 80 1 90 1 110 1 120 1 135 1 140 1 170 1 190 1 200 1 205 1 210 1 220 1 225 1
		 230 1 240 1 245 1 250 1 260 1 275 1 280 1 285 1 290 1 295 1 300 1 325 1;
	setAttr -s 35 ".kit[0:34]"  18 1 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 18 2 2 2 2 18 
		18 18 18 1 1 18 18 1 1 1;
	setAttr -s 35 ".kot[0:34]"  18 1 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 18 2 2 2 2 18 
		18 18 18 1 1 18 18 1 1 1;
	setAttr -s 35 ".kix[1:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".kiy[1:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 35 ".kox[1:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".koy[1:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle11_scaleY";
	rename -uid "4E9C9766-A74C-7C6E-971F-D6B0F58F63D2";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  0 1 20 1 30 1 35 1 40 1 50 1 55 1 60 1 70 1
		 75 1 80 1 90 1 110 1 120 1 135 1 140 1 170 1 190 1 200 1 205 1 210 1 220 1 225 1
		 230 1 240 1 245 1 250 1 260 1 275 1 280 1 285 1 290 1 295 1 300 1 325 1;
	setAttr -s 35 ".kit[0:34]"  18 1 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 18 2 2 2 2 18 
		18 18 18 1 1 18 18 1 1 1;
	setAttr -s 35 ".kot[0:34]"  18 1 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 18 2 2 2 2 18 
		18 18 18 1 1 18 18 1 1 1;
	setAttr -s 35 ".kix[1:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".kiy[1:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 35 ".kox[1:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".koy[1:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle11_scaleZ";
	rename -uid "0236225D-394E-FDC9-DD7B-8CB93E4D9F82";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  0 1 20 1 30 1 35 1 40 1 50 1 55 1 60 1 70 1
		 75 1 80 1 90 1 110 1 120 1 135 1 140 1 170 1 190 1 200 1 205 1 210 1 220 1 225 1
		 230 1 240 1 245 1 250 1 260 1 275 1 280 1 285 1 290 1 295 1 300 1 325 1;
	setAttr -s 35 ".kit[0:34]"  18 1 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 18 2 2 2 2 18 
		18 18 18 1 1 18 18 1 1 1;
	setAttr -s 35 ".kot[0:34]"  18 1 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 18 2 2 2 2 18 
		18 18 18 1 1 18 18 1 1 1;
	setAttr -s 35 ".kix[1:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".kiy[1:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 35 ".kox[1:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".koy[1:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle4_visibility";
	rename -uid "27136092-FE44-141B-8FAD-BE8BD6CBADCA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 39 ".ktv[0:38]"  0 1 20 1 30 1 35 1 40 1 50 1 55 1 60 1 70 1
		 75 1 80 1 90 1 105 1 110 1 120 1 125 1 130 1 135 1 140 1 170 1 190 1 200 1 205 1
		 210 1 220 1 225 1 230 1 240 1 245 1 250 1 260 1 264 1 275 1 280 1 285 1 290 1 295 1
		 300 1 325 1;
	setAttr -s 39 ".kit[0:38]"  9 1 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 18 18 18 1 1 18 9 18 18 
		18 18 9 9 9 9 9 1 1 1 9 1 1 1;
	setAttr -s 39 ".kot[0:38]"  5 5 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 18 18 18 1 1 18 5 18 18 
		18 18 5 5 5 5 5 1 1 1 5 1 1 1;
	setAttr -s 39 ".kix[1:38]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 39 ".kiy[1:38]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 39 ".kox[4:38]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1 
		1 1 1 0 0 0 0 0 1 1 1 0 1 1 1;
	setAttr -s 39 ".koy[4:38]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "nurbsCircle4_translateX";
	rename -uid "7643DE66-CD41-7C51-99C2-A984D9126539";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 53 ".ktv[0:52]"  0 0 5 -6.0413692576468883 20 4.0614646403397501
		 30 2.0057205803943212 35 2.0057205803943212 36 -4.8077036269856457 40 2.0057205803943212
		 50 4.0614646403397501 55 4.0614646403397501 60 4.0614646403397501 70 3.6358034057365671
		 75 3.6358034057365671 76 8.8404793760482221 80 3.6358034057365671 90 3.6358034057365671
		 95 -1.379776183315844 100 -8.0280195135180286 105 0.12997691499098885 110 4.0614646403397501
		 120 2.0057205803943212 125 -1.2463662173485859 127 3.593951592792787 130 -12.328622769617859
		 135 4.6932565557595458 140 4.0614646403397501 170 -2.4975960461468389 174 -12.746086896199586
		 178 -10.112250605405848 190 1.173544929521583 200 1.173544929521583 205 1.173544929521583
		 210 1.173544929521583 220 1.173544929521583 225 1.173544929521583 230 1.173544929521583
		 240 -8.4709387776167802 245 -8.4709387776167802 250 -8.4709387776167802 260 -8.4709387776167802
		 264 -6.7792191390471475 268 -1.5195299548303161 272 -3.7434747171196134 275 1.173544929521583
		 280 1.173544929521583 285 1.173544929521583 290 -4.5792182585804211 295 1.173544929521583
		 300 1.173544929521583 305 4.1675563044056929 310 4.1639822488244018 315 -0.092161749307074103
		 319 0.67911724803260887 325 1.173544929521583;
	setAttr -s 53 ".kit[2:52]"  1 2 2 18 1 2 2 1 
		2 2 2 2 1 18 18 18 18 18 18 18 18 18 18 1 18 
		18 1 18 18 18 18 18 18 18 18 18 18 18 18 18 1 1 
		1 18 1 1 18 18 18 18 1;
	setAttr -s 53 ".kot[2:52]"  1 2 2 18 1 2 2 1 
		2 2 2 2 1 18 18 18 18 18 18 18 18 18 18 1 18 
		18 1 18 18 18 18 18 18 18 18 18 18 18 18 18 1 1 
		1 18 1 1 18 18 18 18 1;
	setAttr -s 53 ".kix[2:52]"  1 0.19864492118358612 1 1 1 0.19864489138126373 
		1 1 0.69951635599136353 1 0.0080053796991705894 0.032006047666072845 0.69951635599136353 
		0.035700209438800812 1 0.034444790333509445 1 0.1169426292181015 1 1 1 1 0.19875776767730713 
		1 1 0.047839142382144928 1 1 1 1 1 1 1 1 1 1 1 0.047896966338157654 1 1 1 1 1 1 1 
		1 1 0.99867814779281616 1 0.31268963217735291 1;
	setAttr -s 53 ".kiy[2:52]"  0 -0.98007148504257202 0 0 0 0.98007148504257202 
		0 0 -0.71461665630340576 0 0.99996793270111084 -0.99948763847351074 -0.71461665630340576 
		-0.99936258792877197 0 0.99940657615661621 0 -0.99313873052597046 0 0 0 0 -0.98004865646362305 
		0 0 0.9988551139831543 0 0 0 0 0 0 0 0 0 0 0 0.99885225296020508 0 0 0 0 0 0 0 0 
		0 -0.05139821395277977 0 0.9498552680015564 0;
	setAttr -s 53 ".kox[2:52]"  1 1 0.0061152582056820393 1 0.29087987542152405 
		1 1 0.8265196681022644 1 0.0080053796991705894 0.032006047666072845 1 1 0.035700209438800812 
		1 0.034444790333509445 1 0.1169426217675209 1 1 1 1 0.19875776767730713 1 1 0.04783913865685463 
		1 1 1 1 1 1 1 1 1 1 1 0.047896966338157654 1 1 1 1 1 1 1 1 1 0.99867826700210571 
		1 0.31268963217735291 1;
	setAttr -s 53 ".koy[2:52]"  0 0 -0.9999813437461853 0 0.95675957202911377 
		0 0 -0.56290781497955322 0 0.99996793270111084 -0.99948763847351074 0 0 -0.99936258792877197 
		0 0.99940657615661621 0 -0.99313867092132568 0 0 0 0 -0.98004865646362305 0 0 0.99885505437850952 
		0 0 0 0 0 0 0 0 0 0 0 0.99885225296020508 0 0 0 0 0 0 0 0 0 -0.051398217678070068 
		0 0.94985532760620117 0;
createNode animCurveTL -n "nurbsCircle4_translateY";
	rename -uid "29C4BD46-BE4A-A649-67D8-438D1272A599";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 47 ".ktv[0:46]"  0 -10.940681411198909 10 -20.701300619594981
		 20 -9.4263461465913707 30 -14.001563995592463 35 -14.001563995592463 40 -14.001563995592463
		 50 -9.4263461465913707 55 -9.4263461465913707 60 -9.4263461465913707 70 -12.86358015469834
		 75 -12.86358015469834 80 -12.86358015469834 90 -12.86358015469834 95 -11.355877788469916
		 100 -5.4560978501579029 105 -19.854290274402391 110 -9.4263461465913707 120 -14.001563995592463
		 125 -19.962175231865174 127 -11.354894666123084 130 -11.651556776195125 135 -2.2365207624855969
		 140 -9.4263461465913707 170 -6.3317711454457992 190 -9.4263461465913707 200 -9.4263461465913707
		 205 -9.4263461465913707 210 -9.4263461465913707 220 -9.4263461465913707 225 -9.4263461465913707
		 230 -9.4263461465913707 240 -9.4263461465913707 245 -9.4263461465913707 250 -9.4263461465913707
		 260 -9.4263461465913707 264 -9.4263461465913707 268 -2.2053166951773875 275 -9.4263461465913707
		 280 -9.4263461465913707 285 -9.4263461465913707 290 -9.4263461465913707 295 -9.4263461465913707
		 300 -9.4263461465913707 305 -12.422281211857992 310 -5.6511479324409235 319 -3.8255526940851112
		 325 -9.4263461465913707;
	setAttr -s 47 ".kit[2:46]"  1 2 2 1 2 2 1 2 
		2 2 1 18 18 18 18 18 18 18 18 18 18 1 1 18 18 
		18 18 18 18 18 18 18 18 18 18 1 1 1 18 1 1 18 
		18 18 1;
	setAttr -s 47 ".kot[2:46]"  1 2 2 1 2 2 1 2 
		2 2 1 18 18 18 18 18 18 18 18 18 18 1 1 18 18 
		18 18 18 18 18 18 18 18 18 18 1 1 1 18 1 1 18 
		18 18 1;
	setAttr -s 47 ".kix[2:46]"  1 0.090695023536682129 1 1 0.090695016086101532 
		1 1 0.12034057080745697 1 1 0.12034057080745697 0.056160636246204376 1 1 1 0.059217285364866257 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.068310871720314026 1 1;
	setAttr -s 47 ".kiy[2:46]"  0 -0.99587869644165039 0 0 0.99587869644165039 
		0 0 -0.99273264408111572 0 0 -0.99273264408111572 0.99842178821563721 0 0 0 -0.99824512004852295 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.99766403436660767 0 0;
	setAttr -s 47 ".kox[2:46]"  1 1 1 0.13534845411777496 1 1 0.17889884114265442 
		1 1 1 1 0.056160636246204376 1 1 1 0.059217285364866257 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 0.068310871720314026 1 1;
	setAttr -s 47 ".koy[2:46]"  0 0 0 0.99079805612564087 0 0 -0.98386746644973755 
		0 0 0 0 0.99842178821563721 0 0 0 -0.99824512004852295 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0.99766403436660767 0 0;
createNode animCurveTL -n "nurbsCircle4_translateZ";
	rename -uid "EB32B61A-2343-1AAD-4D7E-86BF891E392C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 54 ".ktv[0:53]"  0 -3.8081731832173986 5 -7.7673237858879531
		 15 -8.4478168317978444 20 1.6198495618635889 30 -4.8312567863053317 35 -4.8312567863053317
		 36 -10.463926304383946 40 -4.8312567863053317 50 1.6198495618635889 55 1.6198495618635889
		 56 -9.3057195144988256 60 1.6198495618635889 70 3.899335239686315 75 3.899335239686315
		 76 -3.1506636990445651 80 3.899335239686315 90 3.899335239686315 95 -12.961683319833689
		 100 -32.793568875142491 105 -16.393248664786434 110 1.6198495618635889 120 -4.8312567863053317
		 125 -15.792616336052188 127 -10.746732495919291 130 -2.9906761037948737 135 -11.44307310228371
		 140 1.6198495618635889 170 -6.1484806526497096 174 -6.3265803186726863 190 -9.6744074066421391
		 200 -0.6429500102668797 205 -0.6429500102668797 210 -0.6429500102668797 220 -9.6744074066421391
		 225 -9.6744074066421391 230 -9.6744074066421391 240 0.79147587517837081 245 0.79147587517837081
		 250 0.79147587517837081 260 0.79147587517837081 264 -1.0443238234336709 268 -13.651788644853388
		 272 1.8442971549745879 275 -9.6744074066421391 280 -0.6429500102668797 285 -0.6429500102668797
		 290 9.9697954547155518 295 -9.6744074066421391 300 -9.6744074066421391 305 2.7531414132382324
		 310 2.1083336183826833 315 -2.1204688368175582 319 4.1006824781110822 325 -9.6744074066421391;
	setAttr -s 54 ".kit[3:53]"  1 2 2 18 1 2 2 18 
		1 2 2 2 2 1 18 18 18 18 18 18 18 18 18 18 1 
		18 1 18 18 18 18 18 18 18 18 18 18 18 18 18 1 1 
		1 18 1 1 18 18 18 18 1;
	setAttr -s 54 ".kot[3:53]"  1 2 2 18 1 2 2 18 
		1 2 2 2 2 1 18 18 18 18 18 18 18 18 18 18 1 
		18 1 18 18 18 18 18 18 18 18 18 18 18 18 18 1 1 
		1 18 1 1 18 18 18 18 1;
	setAttr -s 54 ".kix[3:53]"  1 0.064454101026058197 1 1 1 0.0644540935754776 
		1 1 1 0.17981055378913879 1 0.0059100748039782047 0.023634040728211403 0.17981055378913879 
		0.011354774236679077 1 0.012106802314519882 1 0.03587072342634201 1 0.016271395608782768 
		1 1 1 1 0.2977834939956665 1 1 1 1 1 1 1 1 1 1 1 0.030248528346419334 1 1 1 1 1 1 
		1 1 1 0.10707902163267136 1 1 1;
	setAttr -s 54 ".kiy[3:53]"  0 -0.99792063236236572 0 0 0 0.99792063236236572 
		0 0 0 0.98370122909545898 0 -0.99998253583908081 0.99972069263458252 0.98370122909545898 
		-0.9999355673789978 0 0.99992674589157104 0 -0.99935638904571533 0 0.99986761808395386 
		0 0 0 0 -0.95463341474533081 0 0 0 0 0 0 0 0 0 0 0 -0.99954235553741455 0 0 0 0 0 
		0 0 0 0 -0.99425053596496582 0 0 0;
	setAttr -s 54 ".kox[3:53]"  1 1 0.0073971119709312916 1 0.096431076526641846 
		1 0.003813641145825386 1 0.26442539691925049 1 0.0059100748039782047 0.023634040728211403 
		1 1 0.011354774236679077 1 0.012106802314519882 1 0.03587072342634201 1 0.016271395608782768 
		1 1 1 1 0.2977834939956665 1 1 1 1 1 1 1 1 1 1 1 0.030248528346419334 1 1 1 1 1 1 
		1 1 1 0.10707901418209076 1 1 1;
	setAttr -s 54 ".koy[3:53]"  0 0 -0.9999726414680481 0 0.99533963203430176 
		0 -0.99999266862869263 0 0.96440619230270386 0 -0.99998253583908081 0.99972069263458252 
		0 0 -0.9999355673789978 0 0.99992674589157104 0 -0.99935638904571533 0 0.99986761808395386 
		0 0 0 0 -0.95463347434997559 0 0 0 0 0 0 0 0 0 0 0 -0.99954235553741455 0 0 0 0 0 
		0 0 0 0 -0.99425047636032104 0 0 0;
createNode animCurveTA -n "nurbsCircle4_rotateX";
	rename -uid "973E6E48-904D-F83C-22A1-AB94FBA95C95";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 44 ".ktv[0:43]"  0 -6.1852510082125551 5 -8.931798644220251
		 20 0 30 0 35 0 40 0 50 0 55 0 60 0 70 0 75 0 80 0 90 0 95 0 100 2.349530734603976
		 105 15.007390575052355 110 0 120 0 125 0 130 0 135 0 140 0 170 0 190 0 200 0 205 0
		 210 0 220 0 225 0 230 0 240 0 245 0 250 0 260 0 264 0 275 0 280 0 285 29.89508703929187
		 290 23.362548782087664 295 0 300 0 305 21.381226484360973 310 -7.0113450795221697
		 325 0;
	setAttr -s 44 ".kit[2:43]"  1 2 2 1 2 2 1 2 
		2 2 1 18 18 18 18 18 18 18 18 18 1 1 18 18 18 
		18 18 18 18 18 18 18 18 1 1 1 18 1 1 18 18 1;
	setAttr -s 44 ".kot[2:43]"  1 2 2 1 2 2 1 2 
		2 2 1 18 18 18 18 18 18 18 18 18 1 1 18 18 18 
		18 18 18 18 18 18 18 18 1 1 1 18 1 1 18 18 1;
	setAttr -s 44 ".kix[2:43]"  1 1 1 1 1 1 1 1 1 1 1 1 0.8610801100730896 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.6240125298500061 1 1 1 1 1;
	setAttr -s 44 ".kiy[2:43]"  0 0 0 0 0 0 0 0 0 0 0 0 0.50846928358078003 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.78141438961029053 0 0 0 0 0;
	setAttr -s 44 ".kox[2:43]"  1 1 1 1 1 1 1 1 1 1 1 1 0.8610801100730896 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.62401247024536133 1 1 1 1 1;
	setAttr -s 44 ".koy[2:43]"  0 0 0 0 0 0 0 0 0 0 0 0 0.50846928358078003 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.78141433000564575 0 0 0 0 0;
createNode animCurveTA -n "nurbsCircle4_rotateY";
	rename -uid "8854145F-B344-CD0C-8405-ADB9B8D00392";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 44 ".ktv[0:43]"  0 -35.432885635869184 5 -38.997662531723527
		 20 -61.854854989490526 30 -17.457240838880953 35 -17.457240838880953 40 -17.457240838880953
		 50 -61.854854989490526 55 -61.854854989490526 60 -61.854854989490526 70 -76.984336615646086
		 75 -76.984336615646086 80 -76.984336615646086 90 -76.984336615646086 95 -109.62175811353754
		 100 -14.49264730140246 105 -52.055586325339355 110 -61.854854989490526 120 -17.457240838880953
		 125 -44.524652355019327 130 -84.135089364338498 135 -61.854854989490526 140 -61.854854989490526
		 170 50.976974627542489 190 65.590016118550025 200 93.078667176082647 205 93.078667176082647
		 210 93.078667176082647 220 65.590016118550025 225 65.590016118550025 230 65.590016118550025
		 240 48.877638512242378 245 48.877638512242378 250 48.877638512242378 260 48.877638512242378
		 264 51.809123313534123 275 65.590016118550025 280 93.078667176082647 285 106.76036710970035
		 290 79.969073990520798 295 65.590016118550025 300 65.590016118550025 305 63.652896105151122
		 310 65.004512367353925 325 65.590016118550025;
	setAttr -s 44 ".kit[2:43]"  1 2 2 1 2 2 1 2 
		2 2 1 18 18 18 18 18 18 18 18 18 1 1 18 18 18 
		18 18 18 18 18 18 18 18 1 1 1 18 1 1 18 18 1;
	setAttr -s 44 ".kot[2:43]"  1 2 2 1 2 2 1 2 
		2 2 1 18 18 18 18 18 18 18 18 18 1 1 18 18 18 
		18 18 18 18 18 18 18 18 1 1 1 18 1 1 18 18 1;
	setAttr -s 44 ".kix[2:43]"  1 0.47358974814414978 1 1 0.47358965873718262 
		1 1 0.84466296434402466 1 1 0.84466296434402466 1 1 0.45010960102081299 1 1 0.33708405494689941 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.90617233514785767 1 1 1 0.50163090229034424 1 1 1 
		0.99917799234390259 1;
	setAttr -s 44 ".kiy[2:43]"  0 0.88074558973312378 0 0 -0.88074558973312378 
		0 0 -0.53529852628707886 0 0 -0.53529852628707886 0 0 -0.89297330379486084 0 0 -0.9414745569229126 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.4229084849357605 0 0 0 -0.86508166790008545 0 0 0 
		0.040537565946578979 0;
	setAttr -s 44 ".kox[2:43]"  1 1 1 0.62780904769897461 1 1 0.65177059173583984 
		1 1 1 0.41018548607826233 1 1 0.45010960102081299 1 1 0.33708402514457703 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 0.90617233514785767 1 1 1 0.50163090229034424 1 1 1 0.99917805194854736 
		1;
	setAttr -s 44 ".koy[2:43]"  0 0 0 -0.77836740016937256 0 0 -0.75841611623764038 
		0 0 0 -0.9120020866394043 0 0 -0.89297330379486084 0 0 -0.94147449731826782 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0.4229084849357605 0 0 0 -0.86508172750473022 0 0 0 0.040537565946578979 
		0;
createNode animCurveTA -n "nurbsCircle4_rotateZ";
	rename -uid "A2718767-F448-4A9C-3287-81823661F764";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 44 ".ktv[0:43]"  0 0.16463416787494009 5 6.0005205952058125
		 20 0 30 0 35 0 40 0 50 0 55 0 60 0 70 0 75 0 80 0 90 0 95 0 100 4.0386270873425127
		 105 -7.9382039087981973 110 0 120 0 125 0 130 0 135 0 140 0 170 0 190 0 200 0 205 0
		 210 0 220 0 225 0 230 0 240 0 245 0 250 0 260 0 264 0 275 0 280 0 285 26.66337556533383
		 290 20.568817069890532 295 0 300 0 305 23.600631498038606 310 -7.7412407730127635
		 325 0;
	setAttr -s 44 ".kit[2:43]"  1 2 2 1 2 2 1 2 
		2 2 1 18 18 18 18 18 18 18 18 18 1 1 18 18 18 
		18 18 18 18 18 18 18 18 1 1 1 18 1 1 18 18 1;
	setAttr -s 44 ".kot[2:43]"  1 2 2 1 2 2 1 2 
		2 2 1 18 18 18 18 18 18 18 18 18 1 1 18 18 18 
		18 18 18 18 18 18 18 18 1 1 1 18 1 1 18 18 1;
	setAttr -s 44 ".kix[2:43]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.66705173254013062 1 1 1 1 1;
	setAttr -s 44 ".kiy[2:43]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.74501144886016846 0 0 0 0 0;
	setAttr -s 44 ".kox[2:43]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.66705173254013062 1 1 1 1 1;
	setAttr -s 44 ".koy[2:43]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.74501138925552368 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle4_scaleX";
	rename -uid "13A3772C-CF47-B9D4-1D1E-0A970A6C758B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 39 ".ktv[0:38]"  0 1 20 1 30 1 35 1 40 1 50 1 55 1 60 1 70 1
		 75 1 80 1 90 1 105 1 110 1 120 1 125 1 130 1 135 1 140 1 170 1 190 1 200 1 205 1
		 210 1 220 1 225 1 230 1 240 1 245 1 250 1 260 1 264 1 275 1 280 1 285 1 290 1 295 1
		 300 1 325 1;
	setAttr -s 39 ".kit[1:38]"  1 2 2 1 2 2 1 2 
		2 2 1 18 18 18 18 18 18 18 1 1 18 18 18 18 18 
		18 18 18 18 18 18 1 1 1 18 1 1 1;
	setAttr -s 39 ".kot[1:38]"  1 2 2 1 2 2 1 2 
		2 2 1 18 18 18 18 18 18 18 1 1 18 18 18 18 18 
		18 18 18 18 18 18 1 1 1 18 1 1 1;
	setAttr -s 39 ".kix[1:38]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 39 ".kiy[1:38]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 39 ".kox[1:38]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 39 ".koy[1:38]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle4_scaleY";
	rename -uid "F64A7277-9B46-BFEA-8460-0693789CB929";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 39 ".ktv[0:38]"  0 1 20 1 30 1 35 1 40 1 50 1 55 1 60 1 70 1
		 75 1 80 1 90 1 105 1 110 1 120 1 125 1 130 1 135 1 140 1 170 1 190 1 200 1 205 1
		 210 1 220 1 225 1 230 1 240 1 245 1 250 1 260 1 264 1 275 1 280 1 285 1 290 1 295 1
		 300 1 325 1;
	setAttr -s 39 ".kit[1:38]"  1 2 2 1 2 2 1 2 
		2 2 1 18 18 18 18 18 18 18 1 1 18 18 18 18 18 
		18 18 18 18 18 18 1 1 1 18 1 1 1;
	setAttr -s 39 ".kot[1:38]"  1 2 2 1 2 2 1 2 
		2 2 1 18 18 18 18 18 18 18 1 1 18 18 18 18 18 
		18 18 18 18 18 18 1 1 1 18 1 1 1;
	setAttr -s 39 ".kix[1:38]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 39 ".kiy[1:38]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 39 ".kox[1:38]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 39 ".koy[1:38]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle4_scaleZ";
	rename -uid "E45D049A-5943-CFC1-4EC0-9BAF7BE63511";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 39 ".ktv[0:38]"  0 1 20 1 30 1 35 1 40 1 50 1 55 1 60 1 70 1
		 75 1 80 1 90 1 105 1 110 1 120 1 125 1 130 1 135 1 140 1 170 1 190 1 200 1 205 1
		 210 1 220 1 225 1 230 1 240 1 245 1 250 1 260 1 264 1 275 1 280 1 285 1 290 1 295 1
		 300 1 325 1;
	setAttr -s 39 ".kit[1:38]"  1 2 2 1 2 2 1 2 
		2 2 1 18 18 18 18 18 18 18 1 1 18 18 18 18 18 
		18 18 18 18 18 18 1 1 1 18 1 1 1;
	setAttr -s 39 ".kot[1:38]"  1 2 2 1 2 2 1 2 
		2 2 1 18 18 18 18 18 18 18 1 1 18 18 18 18 18 
		18 18 18 18 18 18 1 1 1 18 1 1 1;
	setAttr -s 39 ".kix[1:38]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 39 ".kiy[1:38]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 39 ".kox[1:38]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 39 ".koy[1:38]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle5_visibility";
	rename -uid "21500BAD-CC45-0650-9205-EAAAA3D97017";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  0 1 20 1 30 1 35 1 40 1 50 1 55 1 60 1 70 1
		 75 1 80 1 90 1 110 1 120 1 135 1 140 1 170 1 190 1 200 1 205 1 210 1 220 1 225 1
		 230 1 240 1 245 1 250 1 260 1 275 1 280 1 285 1 290 1 295 1 300 1 325 1;
	setAttr -s 35 ".kit[0:34]"  9 1 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 9 2 2 2 2 9 
		9 9 9 1 1 9 9 1 1 1;
	setAttr -s 35 ".kot[0:34]"  5 5 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 5 2 2 2 2 5 
		5 5 5 1 1 5 5 1 1 1;
	setAttr -s 35 ".kix[1:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".kiy[1:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 35 ".kox[4:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 1 1 
		0 0 0 0 1 1 0 0 1 1 1;
	setAttr -s 35 ".koy[4:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "nurbsCircle5_translateX";
	rename -uid "51FDBF67-E040-5768-F12F-4B8D929D67F9";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  0 0 20 0 30 0 35 0 40 0 50 0 55 0 60 0 70 0
		 75 0 80 0 90 0 110 0 120 0 135 0 140 0 170 0 190 0 200 0 205 0 210 0 220 0 225 0
		 230 0 240 0 245 0 250 0 260 0 275 0 280 0 285 0 290 0 295 0 300 0 325 0;
	setAttr -s 35 ".kit[0:34]"  18 1 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 18 2 2 2 2 18 
		18 18 18 1 1 18 18 1 1 1;
	setAttr -s 35 ".kot[0:34]"  18 1 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 18 2 2 2 2 18 
		18 18 18 1 1 18 18 1 1 1;
	setAttr -s 35 ".kix[1:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".kiy[1:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 35 ".kox[1:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".koy[1:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "nurbsCircle5_translateY";
	rename -uid "39FF0074-1443-CFB0-CCD4-0087220A0BA5";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  0 0 20 0 30 0 35 0 40 0 50 0 55 0 60 0 70 0
		 75 0 80 0 90 0 110 0 120 0 135 0 140 0 170 0 190 0 200 0 205 0 210 0 220 0 225 0
		 230 0 240 0 245 0 250 0 260 0 275 0 280 0 285 0 290 0 295 0 300 0 325 0;
	setAttr -s 35 ".kit[0:34]"  18 1 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 18 2 2 2 2 18 
		18 18 18 1 1 18 18 1 1 1;
	setAttr -s 35 ".kot[0:34]"  18 1 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 18 2 2 2 2 18 
		18 18 18 1 1 18 18 1 1 1;
	setAttr -s 35 ".kix[1:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".kiy[1:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 35 ".kox[1:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".koy[1:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "nurbsCircle5_translateZ";
	rename -uid "03517613-304A-2CC9-C930-0AA63124E3D6";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  0 0 20 0 30 0 35 0 40 0 50 0 55 0 60 0 70 0
		 75 0 80 0 90 0 110 0 120 0 135 0 140 0 170 0 190 0 200 0 205 0 210 0 220 0 225 0
		 230 0 240 0 245 0 250 0 260 0 275 0 280 0 285 0 290 0 295 0 300 0 325 0;
	setAttr -s 35 ".kit[0:34]"  18 1 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 18 2 2 2 2 18 
		18 18 18 1 1 18 18 1 1 1;
	setAttr -s 35 ".kot[0:34]"  18 1 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 18 2 2 2 2 18 
		18 18 18 1 1 18 18 1 1 1;
	setAttr -s 35 ".kix[1:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".kiy[1:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 35 ".kox[1:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".koy[1:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "nurbsCircle5_rotateX";
	rename -uid "38A2F930-0E41-77E6-F666-88BB8498904A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 39 ".ktv[0:38]"  0 11.557224632622599 20 0 30 -10.852607695504124
		 35 -10.852607695504124 40 -10.852607695504124 50 0 55 0 60 0 70 1.5354085297819227
		 75 1.5354085297819227 80 1.5354085297819227 90 1.5354085297819227 110 0 120 -10.852607695504124
		 135 0 140 0 170 0 190 0 200 0 205 0 210 0 220 0 225 0 230 0 240 0 245 0 250 0 260 0
		 275 0 280 0 285 0 290 0 295 0 300 0 305 -5.9951280600128269 310 -14.999835282397775
		 315 3.0619374935578088 320 -3.493224476989369 325 0;
	setAttr -s 39 ".kit[1:38]"  1 2 2 1 2 2 1 2 
		2 2 1 18 18 18 18 1 1 2 18 2 2 2 2 18 18 
		18 18 1 1 18 18 1 1 18 18 18 18 1;
	setAttr -s 39 ".kot[1:38]"  1 2 2 1 2 2 1 2 
		2 2 1 18 18 18 18 1 1 2 18 2 2 2 2 18 18 
		18 18 1 1 18 18 1 1 18 18 18 18 1;
	setAttr -s 39 ".kix[1:38]"  1 0.91035014390945435 1 1 0.91035014390945435 
		1 1 0.99793815612792969 1 1 0.99793815612792969 0.99537873268127441 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.84673583507537842 1 1 1 1;
	setAttr -s 39 ".kiy[1:38]"  0 -0.41383877396583557 0 0 0.41383883357048035 
		0 0 0.064182423055171967 0 0 0.064182423055171967 -0.096026726067066193 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.53201353549957275 0 0 0 0;
	setAttr -s 39 ".kox[1:38]"  1 1 1 0.9570159912109375 1 1 0.9963575005531311 
		1 1 1 0.99189132452011108 0.99537873268127441 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 0.84673583507537842 1 1 1 1;
	setAttr -s 39 ".koy[1:38]"  0 0 0 0.29003521800041199 0 0 0.085274077951908112 
		0 0 0 0.12708848714828491 -0.096026718616485596 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 -0.53201353549957275 0 0 0 0;
createNode animCurveTA -n "nurbsCircle5_rotateY";
	rename -uid "2F986BCD-414F-4A63-8D1F-339F3522153D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 39 ".ktv[0:38]"  0 0 20 0 30 11.326674958387072 35 11.326674958387072
		 40 11.326674958387072 50 0 55 0 60 0 70 -8.467965270417336 75 -8.467965270417336
		 80 -8.467965270417336 90 -8.467965270417336 110 0 120 11.326674958387072 135 0 140 0
		 170 0 190 0 200 0 205 0 210 0 220 0 225 0 230 0 240 0 245 0 250 0 260 0 275 0 280 0
		 285 0 290 0 295 0 300 0 305 4.4394980108890083 310 15.814057441274382 315 8.8097046797114142
		 320 16.598607477590466 325 0;
	setAttr -s 39 ".kit[1:38]"  1 2 2 1 2 2 1 2 
		2 2 1 18 18 18 18 1 1 2 18 2 2 2 2 18 18 
		18 18 1 1 18 18 1 1 18 18 18 18 1;
	setAttr -s 39 ".kot[1:38]"  1 2 2 1 2 2 1 2 
		2 2 1 18 18 18 18 1 1 2 18 2 2 2 2 18 18 
		18 18 1 1 18 18 1 1 18 18 18 18 1;
	setAttr -s 39 ".kix[1:38]"  1 0.9034697413444519 1 1 0.9034697413444519 
		1 1 0.9424673318862915 1 1 0.9424673318862915 0.96386319398880005 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 0.83368176221847534 1 1 1 1;
	setAttr -s 39 ".kiy[1:38]"  0 0.42865180969238281 0 0 -0.42865186929702759 
		0 0 -0.33429810404777527 0 0 -0.33429810404777527 0.266397625207901 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.55224514007568359 0 0 0 0;
	setAttr -s 39 ".kox[1:38]"  1 1 1 0.95344263315200806 1 1 0.96497613191604614 
		1 1 1 0.54835969209671021 0.96386319398880005 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 0.83368170261383057 1 1 1 1;
	setAttr -s 39 ".koy[1:38]"  0 0 0 -0.30157437920570374 0 0 0.26233777403831482 
		0 0 0 0.83624255657196045 0.266397625207901 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0.55224514007568359 0 0 0 0;
createNode animCurveTA -n "nurbsCircle5_rotateZ";
	rename -uid "EDC6B32B-5C4A-B3AB-0EB7-209F113EDB0C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 39 ".ktv[0:38]"  0 0 20 0 30 -0.008762582219306092 35 -0.008762582219306092
		 40 -0.008762582219306092 50 0 55 0 60 0 70 4.8142197126478212 75 4.8142197126478212
		 80 4.8142197126478212 90 4.8142197126478212 110 0 120 -0.008762582219306092 135 0
		 140 0 170 0 190 0 200 0 205 0 210 0 220 0 225 0 230 0 240 0 245 0 250 0 260 0 275 0
		 280 0 285 0 290 0 295 0 300 0 305 8.955463031179308 310 -0.88462389115909046 315 -1.8749533250903805
		 320 -10.12235322156832 325 0;
	setAttr -s 39 ".kit[1:38]"  1 2 2 1 2 2 1 2 
		2 2 1 18 18 18 18 1 1 2 18 2 2 2 2 18 18 
		18 18 1 1 18 18 1 1 18 18 18 18 1;
	setAttr -s 39 ".kot[1:38]"  1 2 2 1 2 2 1 2 
		2 2 1 18 18 18 18 1 1 2 18 2 2 2 2 18 18 
		18 18 1 1 18 18 1 1 18 18 18 18 1;
	setAttr -s 39 ".kix[1:38]"  1 0.99999994039535522 1 1 0.99999994039535522 
		1 1 0.98026692867279053 1 1 0.98026692867279053 0.99999940395355225 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.97039371728897095 0.97039377689361572 1 1;
	setAttr -s 39 ".kiy[1:38]"  0 -0.00036704615922644734 0 0 0.00036704621743410826 
		0 0 0.19767819344997406 0 0 0.19767819344997406 -0.0011011384194716811 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.24152839183807373 -0.24152839183807373 0 0;
	setAttr -s 39 ".kox[1:38]"  1 1 1 1 1 1 0.99102115631103516 1 1 1 0.99999892711639404 
		0.99999934434890747 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.97039377689361572 
		0.97039377689361572 1 1;
	setAttr -s 39 ".koy[1:38]"  0 0 0 0.00024469749769195914 0 0 0.13370534777641296 
		0 0 0 0.0014350966084748507 -0.0011011383030563593 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 -0.24152839183807373 -0.24152839183807373 0 0;
createNode animCurveTU -n "nurbsCircle5_scaleX";
	rename -uid "2575CF96-F449-54A2-0617-72B96AD19527";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  0 1 20 1 30 1 35 1 40 1 50 1 55 1 60 1 70 1
		 75 1 80 1 90 1 110 1 120 1 135 1 140 1 170 1 190 1 200 1 205 1 210 1 220 1 225 1
		 230 1 240 1 245 1 250 1 260 1 275 1 280 1 285 1 290 1 295 1 300 1 325 1;
	setAttr -s 35 ".kit[0:34]"  18 1 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 18 2 2 2 2 18 
		18 18 18 1 1 18 18 1 1 1;
	setAttr -s 35 ".kot[0:34]"  18 1 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 18 2 2 2 2 18 
		18 18 18 1 1 18 18 1 1 1;
	setAttr -s 35 ".kix[1:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".kiy[1:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 35 ".kox[1:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".koy[1:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle5_scaleY";
	rename -uid "67EFF741-D343-954A-9135-03A6B15E7507";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  0 1 20 1 30 1 35 1 40 1 50 1 55 1 60 1 70 1
		 75 1 80 1 90 1 110 1 120 1 135 1 140 1 170 1 190 1 200 1 205 1 210 1 220 1 225 1
		 230 1 240 1 245 1 250 1 260 1 275 1 280 1 285 1 290 1 295 1 300 1 325 1;
	setAttr -s 35 ".kit[0:34]"  18 1 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 18 2 2 2 2 18 
		18 18 18 1 1 18 18 1 1 1;
	setAttr -s 35 ".kot[0:34]"  18 1 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 18 2 2 2 2 18 
		18 18 18 1 1 18 18 1 1 1;
	setAttr -s 35 ".kix[1:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".kiy[1:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 35 ".kox[1:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".koy[1:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle5_scaleZ";
	rename -uid "B404A18A-D847-7B27-D0C8-2A9108F04238";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  0 1 20 1 30 1 35 1 40 1 50 1 55 1 60 1 70 1
		 75 1 80 1 90 1 110 1 120 1 135 1 140 1 170 1 190 1 200 1 205 1 210 1 220 1 225 1
		 230 1 240 1 245 1 250 1 260 1 275 1 280 1 285 1 290 1 295 1 300 1 325 1;
	setAttr -s 35 ".kit[0:34]"  18 1 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 18 2 2 2 2 18 
		18 18 18 1 1 18 18 1 1 1;
	setAttr -s 35 ".kot[0:34]"  18 1 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 18 2 2 2 2 18 
		18 18 18 1 1 18 18 1 1 1;
	setAttr -s 35 ".kix[1:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".kiy[1:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 35 ".kox[1:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".koy[1:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle6_visibility";
	rename -uid "9633FA49-CF4F-E6E4-348D-90954871777E";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  0 1 20 1 30 1 35 1 40 1 50 1 55 1 60 1 70 1
		 75 1 80 1 90 1 110 1 120 1 135 1 140 1 170 1 190 1 200 1 205 1 210 1 220 1 225 1
		 230 1 240 1 245 1 250 1 260 1 275 1 280 1 285 1 290 1 295 1 300 1 325 1;
	setAttr -s 35 ".kit[0:34]"  9 1 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 9 2 2 2 2 9 
		9 9 9 1 1 9 9 1 1 1;
	setAttr -s 35 ".kot[0:34]"  5 5 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 5 2 2 2 2 5 
		5 5 5 1 1 5 5 1 1 1;
	setAttr -s 35 ".kix[1:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".kiy[1:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 35 ".kox[4:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 1 1 
		0 0 0 0 1 1 0 0 1 1 1;
	setAttr -s 35 ".koy[4:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "nurbsCircle6_translateX";
	rename -uid "77D1BE80-E745-6808-FB02-E48F0DA6B0CB";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  0 0 20 0 30 0 35 0 40 0 50 0 55 0 60 0 70 0
		 75 0 80 0 90 0 110 0 120 0 135 0 140 0 170 0 190 0 200 0 205 0 210 0 220 0 225 0
		 230 0 240 0 245 0 250 0 260 0 275 0 280 0 285 0 290 0 295 0 300 0 325 0;
	setAttr -s 35 ".kit[0:34]"  18 1 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 18 2 2 2 2 18 
		18 18 18 1 1 18 18 1 1 1;
	setAttr -s 35 ".kot[0:34]"  18 1 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 18 2 2 2 2 18 
		18 18 18 1 1 18 18 1 1 1;
	setAttr -s 35 ".kix[1:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".kiy[1:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 35 ".kox[1:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".koy[1:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "nurbsCircle6_translateY";
	rename -uid "A6301B4E-C846-2D24-4F2E-6F9AA540E4CA";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  0 0 20 0 30 0 35 0 40 0 50 0 55 0 60 0 70 0
		 75 0 80 0 90 0 110 0 120 0 135 0 140 0 170 0 190 0 200 0 205 0 210 0 220 0 225 0
		 230 0 240 0 245 0 250 0 260 0 275 0 280 0 285 0 290 0 295 0 300 0 325 0;
	setAttr -s 35 ".kit[0:34]"  18 1 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 18 2 2 2 2 18 
		18 18 18 1 1 18 18 1 1 1;
	setAttr -s 35 ".kot[0:34]"  18 1 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 18 2 2 2 2 18 
		18 18 18 1 1 18 18 1 1 1;
	setAttr -s 35 ".kix[1:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".kiy[1:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 35 ".kox[1:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".koy[1:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "nurbsCircle6_translateZ";
	rename -uid "0CF27FAC-9A4D-DD6F-F80D-0EB6CA9A168C";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  0 0 20 0 30 0 35 0 40 0 50 0 55 0 60 0 70 0
		 75 0 80 0 90 0 110 0 120 0 135 0 140 0 170 0 190 0 200 0 205 0 210 0 220 0 225 0
		 230 0 240 0 245 0 250 0 260 0 275 0 280 0 285 0 290 0 295 0 300 0 325 0;
	setAttr -s 35 ".kit[0:34]"  18 1 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 18 2 2 2 2 18 
		18 18 18 1 1 18 18 1 1 1;
	setAttr -s 35 ".kot[0:34]"  18 1 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 18 2 2 2 2 18 
		18 18 18 1 1 18 18 1 1 1;
	setAttr -s 35 ".kix[1:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".kiy[1:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 35 ".kox[1:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".koy[1:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "nurbsCircle6_rotateX";
	rename -uid "532D79C6-D441-C270-1918-149117876AE9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 39 ".ktv[0:38]"  0 0 10 -2.1701461165426261 20 8.6741792704855687
		 30 16.772800245375244 35 16.772800245375244 40 16.772800245375244 50 8.6741792704855687
		 55 8.6741792704855687 60 8.6741792704855687 70 -0.27534340529909684 75 -0.27534340529909684
		 80 -0.27534340529909684 90 -0.27534340529909684 95 -7.8761691426161855 100 3.309264603243999
		 110 8.6741792704855687 120 16.772800245375244 129 15.672039527343188 135 8.6741792704855687
		 140 8.6741792704855687 170 9.1523564878689587 190 8.5025421267793888 200 8.5025421267793888
		 205 8.5025421267793888 210 8.5025421267793888 220 8.5025421267793888 225 8.5025421267793888
		 230 8.5025421267793888 240 8.5025421267793888 245 8.5025421267793888 250 8.5025421267793888
		 260 8.5025421267793888 275 8.5025421267793888 280 8.5025421267793888 285 8.5025421267793888
		 290 8.5025421267793888 295 8.5025421267793888 300 8.5025421267793888 325 8.5025421267793888;
	setAttr -s 39 ".kit[2:38]"  1 2 2 1 2 2 1 2 
		2 2 1 18 18 18 18 18 18 18 1 1 2 18 2 2 2 
		2 18 18 18 18 1 1 18 18 1 1 1;
	setAttr -s 39 ".kot[2:38]"  1 2 2 1 2 2 1 2 
		2 2 1 18 18 18 18 18 18 18 1 1 2 18 2 2 2 
		2 18 18 18 18 1 1 18 18 1 1 1;
	setAttr -s 39 ".kix[2:38]"  1 0.94699347019195557 1 1 0.94699352979660034 
		1 1 0.93636715412139893 1 1 1 1 0.90774017572402954 0.96246767044067383 1 0.98839408159255981 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.99999922513961792 1 1 1 1 1;
	setAttr -s 39 ".kiy[2:38]"  0 0.32125261425971985 0 0 -0.32125267386436462 
		0 0 -0.35102218389511108 0 0 0 0 0.41953277587890625 0.2713962197303772 0 -0.1519114077091217 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.0011982526630163193 0 0 0 0 0;
	setAttr -s 39 ".kox[2:38]"  1 1 1 0.97536760568618774 1 1 0.97016125917434692 
		1 1 1 1 1 0.90774023532867432 0.9624677300453186 1 0.98839414119720459 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 39 ".koy[2:38]"  0 0 0 -0.22058545053005219 0 0 -0.24246057868003845 
		0 0 0 0 0 0.41953277587890625 0.27139624953269958 0 -0.15191143751144409 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "nurbsCircle6_rotateY";
	rename -uid "D4EA95BC-CF4B-9207-A31D-3282AAAE15F6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 39 ".ktv[0:38]"  0 0 10 -3.4501204874272591 20 -6.4674884603680018
		 30 -8.9201473026354456 35 -8.9201473026354456 40 -8.9201473026354456 50 -6.4674884603680018
		 55 -6.4674884603680018 60 -6.4674884603680018 70 -12.730592375868227 75 -12.730592375868227
		 80 -12.730592375868227 90 -12.730592375868227 95 6.7053096743917235 100 -34.099721315954341
		 110 -6.4674884603680018 120 -8.9201473026354456 129 14.269998939975407 135 -6.4674884603680018
		 140 -6.4674884603680018 170 -16.576585723324353 190 -9.6869261975818173 200 -9.6869261975818173
		 205 -9.6869261975818173 210 -9.6869261975818173 220 -9.6869261975818173 225 -9.6869261975818173
		 230 -9.6869261975818173 240 -9.6869261975818173 245 -9.6869261975818173 250 -9.6869261975818173
		 260 -9.6869261975818173 275 -9.6869261975818173 280 -9.6869261975818173 285 -9.6869261975818173
		 290 -9.6869261975818173 295 -9.6869261975818173 300 -9.6869261975818173 325 -9.6869261975818173;
	setAttr -s 39 ".kit[2:38]"  1 2 2 1 2 2 1 2 
		2 2 1 18 18 18 18 18 18 18 1 1 2 18 2 2 2 
		2 18 18 18 18 1 1 18 18 1 1 1;
	setAttr -s 39 ".kot[2:38]"  1 2 2 1 2 2 1 2 
		2 2 1 18 18 18 18 18 18 18 1 1 2 18 2 2 2 
		2 18 18 18 18 1 1 18 18 1 1 1;
	setAttr -s 39 ".kix[2:38]"  1 0.99476397037506104 1 1 0.99476397037506104 
		1 1 0.96726703643798828 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.99974751472473145 
		1 1 1 1 1;
	setAttr -s 39 ".kiy[2:38]"  0 -0.10219879448413849 0 0 0.10219880938529968 
		0 0 -0.25376078486442566 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.022470245137810707 
		0 0 0 0 0;
	setAttr -s 39 ".kox[2:38]"  1 1 1 0.99766266345977783 1 1 0.98504734039306641 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 39 ".koy[2:38]"  0 0 0 0.06833108514547348 0 0 -0.17228364944458008 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "nurbsCircle6_rotateZ";
	rename -uid "D72BA653-F646-DB6D-6E78-DA8FD8F20AB1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 39 ".ktv[0:38]"  0 -3.0554115733504545 10 -0.94306651685241039
		 20 -4.6523946766205126 30 -3.8170687547582132 35 -3.8170687547582132 40 -3.8170687547582132
		 50 -4.6523946766205126 55 -4.6523946766205126 60 -4.6523946766205126 70 -11.935218296392041
		 75 -11.935218296392041 80 -11.935218296392041 90 -11.935218296392041 95 -12.789179640934586
		 100 -10.313295029998836 110 -4.6523946766205126 120 -3.8170687547582132 129 -2.9782065989543365
		 135 -4.6523946766205126 140 -4.6523946766205126 170 -5.3121987817397143 190 -4.7624010838342121
		 200 -4.7624010838342121 205 -4.7624010838342121 210 -4.7624010838342121 220 -4.7624010838342121
		 225 -4.7624010838342121 230 -4.7624010838342121 240 -4.7624010838342121 245 -4.7624010838342121
		 250 -4.7624010838342121 260 -4.7624010838342121 275 -4.7624010838342121 280 -4.7624010838342121
		 285 -4.7624010838342121 290 -4.7624010838342121 295 -4.7624010838342121 300 -4.7624010838342121
		 325 -4.7624010838342121;
	setAttr -s 39 ".kit[2:38]"  1 2 2 1 2 2 1 2 
		2 2 1 18 18 18 18 18 18 18 1 1 2 18 2 2 2 
		2 18 18 18 18 1 1 18 18 1 1 1;
	setAttr -s 39 ".kot[2:38]"  1 2 2 1 2 2 1 2 
		2 2 1 18 18 18 18 18 18 18 1 1 2 18 2 2 2 
		2 18 18 18 18 1 1 18 18 1 1 1;
	setAttr -s 39 ".kix[2:38]"  1 0.99938839673995972 1 1 0.99938839673995972 
		1 1 0.95648336410522461 1 1 1 1 0.97514361143112183 0.99453574419021606 0.99931955337524414 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.99999970197677612 1 1 1 1 1;
	setAttr -s 39 ".kiy[2:38]"  0 0.034968648105859756 0 0 -0.034968655556440353 
		0 0 -0.29178684949874878 0 0 0 0 0.22157388925552368 0.10439660400152206 0.036884482949972153 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.00076798954978585243 0 0 0 0 0;
	setAttr -s 39 ".kox[2:38]"  1 1 1 0.99972808361053467 1 1 0.97993957996368408 
		1 1 1 1 1 0.97514361143112183 0.99453568458557129 0.99931955337524414 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 39 ".koy[2:38]"  0 0 0 -0.023320361971855164 0 0 -0.19929499924182892 
		0 0 0 0 0 0.22157390415668488 0.10439660400152206 0.036884482949972153 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle6_scaleX";
	rename -uid "C0BE1986-6B46-0FAA-C05C-A899E709A9D1";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  0 1 20 1 30 1 35 1 40 1 50 1 55 1 60 1 70 1
		 75 1 80 1 90 1 110 1 120 1 135 1 140 1 170 1 190 1 200 1 205 1 210 1 220 1 225 1
		 230 1 240 1 245 1 250 1 260 1 275 1 280 1 285 1 290 1 295 1 300 1 325 1;
	setAttr -s 35 ".kit[0:34]"  18 1 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 18 2 2 2 2 18 
		18 18 18 1 1 18 18 1 1 1;
	setAttr -s 35 ".kot[0:34]"  18 1 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 18 2 2 2 2 18 
		18 18 18 1 1 18 18 1 1 1;
	setAttr -s 35 ".kix[1:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".kiy[1:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 35 ".kox[1:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".koy[1:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle6_scaleY";
	rename -uid "300EB766-0F43-0AAC-0AA4-CF9872308581";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  0 1 20 1 30 1 35 1 40 1 50 1 55 1 60 1 70 1
		 75 1 80 1 90 1 110 1 120 1 135 1 140 1 170 1 190 1 200 1 205 1 210 1 220 1 225 1
		 230 1 240 1 245 1 250 1 260 1 275 1 280 1 285 1 290 1 295 1 300 1 325 1;
	setAttr -s 35 ".kit[0:34]"  18 1 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 18 2 2 2 2 18 
		18 18 18 1 1 18 18 1 1 1;
	setAttr -s 35 ".kot[0:34]"  18 1 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 18 2 2 2 2 18 
		18 18 18 1 1 18 18 1 1 1;
	setAttr -s 35 ".kix[1:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".kiy[1:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 35 ".kox[1:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".koy[1:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle6_scaleZ";
	rename -uid "684CCB28-6E48-19FD-7A78-6DB99B371B23";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  0 1 20 1 30 1 35 1 40 1 50 1 55 1 60 1 70 1
		 75 1 80 1 90 1 110 1 120 1 135 1 140 1 170 1 190 1 200 1 205 1 210 1 220 1 225 1
		 230 1 240 1 245 1 250 1 260 1 275 1 280 1 285 1 290 1 295 1 300 1 325 1;
	setAttr -s 35 ".kit[0:34]"  18 1 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 18 2 2 2 2 18 
		18 18 18 1 1 18 18 1 1 1;
	setAttr -s 35 ".kot[0:34]"  18 1 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 18 2 2 2 2 18 
		18 18 18 1 1 18 18 1 1 1;
	setAttr -s 35 ".kix[1:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".kiy[1:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 35 ".kox[1:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".koy[1:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle9_visibility";
	rename -uid "C8C51F17-EC4F-A38C-FEBC-7D98B112934D";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  0 1 20 1 30 1 35 1 40 1 50 1 55 1 60 1 70 1
		 75 1 80 1 90 1 110 1 120 1 135 1 140 1 170 1 190 1 200 1 205 1 210 1 220 1 225 1
		 230 1 240 1 245 1 250 1 260 1 275 1 280 1 285 1 290 1 295 1 300 1 325 1;
	setAttr -s 35 ".kit[0:34]"  9 1 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 9 2 2 2 2 9 
		9 9 9 1 1 9 9 1 1 1;
	setAttr -s 35 ".kot[0:34]"  5 5 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 5 2 2 2 2 5 
		5 5 5 1 1 5 5 1 1 1;
	setAttr -s 35 ".kix[1:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".kiy[1:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 35 ".kox[4:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 1 1 
		0 0 0 0 1 1 0 0 1 1 1;
	setAttr -s 35 ".koy[4:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "nurbsCircle9_translateX";
	rename -uid "A2FC96F4-FF4D-D5D1-C792-59AB509494A9";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  0 0 20 0 30 0 35 0 40 0 50 0 55 0 60 0 70 0
		 75 0 80 0 90 0 110 0 120 0 135 0 140 0 170 0 190 0 200 0 205 0 210 0 220 0 225 0
		 230 0 240 0 245 0 250 0 260 0 275 0 280 0 285 0 290 0 295 0 300 0 325 0;
	setAttr -s 35 ".kit[0:34]"  18 1 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 18 2 2 2 2 18 
		18 18 18 1 1 18 18 1 1 1;
	setAttr -s 35 ".kot[0:34]"  18 1 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 18 2 2 2 2 18 
		18 18 18 1 1 18 18 1 1 1;
	setAttr -s 35 ".kix[1:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".kiy[1:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 35 ".kox[1:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".koy[1:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "nurbsCircle9_translateY";
	rename -uid "64B70A04-0B42-E7C5-F76A-C383FDCF1E0E";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  0 0 20 0 30 0 35 0 40 0 50 0 55 0 60 0 70 0
		 75 0 80 0 90 0 110 0 120 0 135 0 140 0 170 0 190 0 200 0 205 0 210 0 220 0 225 0
		 230 0 240 0 245 0 250 0 260 0 275 0 280 0 285 0 290 0 295 0 300 0 325 0;
	setAttr -s 35 ".kit[0:34]"  18 1 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 18 2 2 2 2 18 
		18 18 18 1 1 18 18 1 1 1;
	setAttr -s 35 ".kot[0:34]"  18 1 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 18 2 2 2 2 18 
		18 18 18 1 1 18 18 1 1 1;
	setAttr -s 35 ".kix[1:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".kiy[1:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 35 ".kox[1:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".koy[1:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "nurbsCircle9_translateZ";
	rename -uid "682848C7-534C-AC85-785B-33AA55B4F4EF";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  0 0 20 0 30 0 35 0 40 0 50 0 55 0 60 0 70 0
		 75 0 80 0 90 0 110 0 120 0 135 0 140 0 170 0 190 0 200 0 205 0 210 0 220 0 225 0
		 230 0 240 0 245 0 250 0 260 0 275 0 280 0 285 0 290 0 295 0 300 0 325 0;
	setAttr -s 35 ".kit[0:34]"  18 1 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 18 2 2 2 2 18 
		18 18 18 1 1 18 18 1 1 1;
	setAttr -s 35 ".kot[0:34]"  18 1 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 18 2 2 2 2 18 
		18 18 18 1 1 18 18 1 1 1;
	setAttr -s 35 ".kix[1:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".kiy[1:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 35 ".kox[1:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".koy[1:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "nurbsCircle9_rotateX";
	rename -uid "484D8C42-C544-7DD4-97CA-9AA891415C33";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  0 0 20 0 30 0 35 0 40 0 50 0 55 0 60 0 70 0
		 75 0 80 0 90 0 110 0 120 0 135 0 140 0 170 7.5558216979423252 190 7.5558216979423252
		 200 7.5558216979423252 205 7.5558216979423252 210 7.5558216979423252 220 7.5558216979423252
		 225 7.5558216979423252 230 7.5558216979423252 240 7.5558216979423252 245 7.5558216979423252
		 250 7.5558216979423252 260 7.5558216979423252 275 7.5558216979423252 280 7.5558216979423252
		 285 7.5558216979423252 290 7.5558216979423252 295 7.5558216979423252 300 7.5558216979423252
		 325 7.5558216979423252;
	setAttr -s 35 ".kit[0:34]"  18 1 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 18 2 2 2 2 18 
		18 18 18 1 1 18 18 1 1 1;
	setAttr -s 35 ".kot[0:34]"  18 1 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 18 2 2 2 2 18 
		18 18 18 1 1 18 18 1 1 1;
	setAttr -s 35 ".kix[1:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 0.9986116886138916 1 1 1 1 1;
	setAttr -s 35 ".kiy[1:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0.052676361054182053 0 0 0 0 0;
	setAttr -s 35 ".kox[1:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".koy[1:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "nurbsCircle9_rotateY";
	rename -uid "E733D5A9-EE45-A045-658E-6FBDFE7879BA";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  0 0 20 0 30 0 35 0 40 0 50 0 55 0 60 0 70 -7.8120899776623984
		 75 -7.8120899776623984 80 -7.8120899776623984 90 -7.8120899776623984 110 0 120 0
		 135 0 140 0 170 19.838679693840938 190 19.838679693840938 200 19.838679693840938
		 205 19.838679693840938 210 19.838679693840938 220 19.838679693840938 225 19.838679693840938
		 230 19.838679693840938 240 19.838679693840938 245 19.838679693840938 250 19.838679693840938
		 260 19.838679693840938 275 19.838679693840938 280 19.838679693840938 285 19.838679693840938
		 290 19.838679693840938 295 19.838679693840938 300 19.838679693840938 325 19.838679693840938;
	setAttr -s 35 ".kit[0:34]"  18 1 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 18 2 2 2 2 18 
		18 18 18 1 1 18 18 1 1 1;
	setAttr -s 35 ".kot[0:34]"  18 1 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 18 2 2 2 2 18 
		18 18 18 1 1 18 18 1 1 1;
	setAttr -s 35 ".kix[1:34]"  1 1 1 1 1 1 1 0.95040857791900635 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.99054461717605591 1 1 1 1 1;
	setAttr -s 35 ".kiy[1:34]"  0 0 0 0 0 0 0 -0.31100410223007202 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.1371905654668808 0 0 0 0 0;
	setAttr -s 35 ".kox[1:34]"  1 1 1 1 1 1 0.97702127695083618 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".koy[1:34]"  0 0 0 0 0 0 -0.2131417989730835 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "nurbsCircle9_rotateZ";
	rename -uid "05C5CD7E-144A-DFB6-D4DD-A288ED596547";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  0 0 20 0 30 0 35 0 40 0 50 0 55 0 60 0 70 0
		 75 0 80 0 90 0 110 0 120 0 135 0 140 0 170 -7.5245796781681822 190 -7.5245796781681822
		 200 -7.5245796781681822 205 -7.5245796781681822 210 -7.5245796781681822 220 -7.5245796781681822
		 225 -7.5245796781681822 230 -7.5245796781681822 240 -7.5245796781681822 245 -7.5245796781681822
		 250 -7.5245796781681822 260 -7.5245796781681822 275 -7.5245796781681822 280 -7.5245796781681822
		 285 -7.5245796781681822 290 -7.5245796781681822 295 -7.5245796781681822 300 -7.5245796781681822
		 325 -7.5245796781681822;
	setAttr -s 35 ".kit[0:34]"  18 1 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 18 2 2 2 2 18 
		18 18 18 1 1 18 18 1 1 1;
	setAttr -s 35 ".kot[0:34]"  18 1 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 18 2 2 2 2 18 
		18 18 18 1 1 18 18 1 1 1;
	setAttr -s 35 ".kix[1:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 0.9986230731010437 1 1 1 1 1;
	setAttr -s 35 ".kiy[1:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 -0.052459154278039932 0 0 0 0 0;
	setAttr -s 35 ".kox[1:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".koy[1:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle9_scaleX";
	rename -uid "B01AEDDB-7447-D754-51B9-92BD43810B6E";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  0 1 20 1 30 1 35 1 40 1 50 1 55 1 60 1 70 1
		 75 1 80 1 90 1 110 1 120 1 135 1 140 1 170 1 190 1 200 1 205 1 210 1 220 1 225 1
		 230 1 240 1 245 1 250 1 260 1 275 1 280 1 285 1 290 1 295 1 300 1 325 1;
	setAttr -s 35 ".kit[0:34]"  18 1 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 18 2 2 2 2 18 
		18 18 18 1 1 18 18 1 1 1;
	setAttr -s 35 ".kot[0:34]"  18 1 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 18 2 2 2 2 18 
		18 18 18 1 1 18 18 1 1 1;
	setAttr -s 35 ".kix[1:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".kiy[1:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 35 ".kox[1:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".koy[1:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle9_scaleY";
	rename -uid "3309527B-5B46-E050-3E51-71A6257D7F75";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  0 1 20 1 30 1 35 1 40 1 50 1 55 1 60 1 70 1
		 75 1 80 1 90 1 110 1 120 1 135 1 140 1 170 1 190 1 200 1 205 1 210 1 220 1 225 1
		 230 1 240 1 245 1 250 1 260 1 275 1 280 1 285 1 290 1 295 1 300 1 325 1;
	setAttr -s 35 ".kit[0:34]"  18 1 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 18 2 2 2 2 18 
		18 18 18 1 1 18 18 1 1 1;
	setAttr -s 35 ".kot[0:34]"  18 1 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 18 2 2 2 2 18 
		18 18 18 1 1 18 18 1 1 1;
	setAttr -s 35 ".kix[1:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".kiy[1:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 35 ".kox[1:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".koy[1:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle9_scaleZ";
	rename -uid "01A1D04B-7145-2842-AC59-5DA8F8322850";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  0 1 20 1 30 1 35 1 40 1 50 1 55 1 60 1 70 1
		 75 1 80 1 90 1 110 1 120 1 135 1 140 1 170 1 190 1 200 1 205 1 210 1 220 1 225 1
		 230 1 240 1 245 1 250 1 260 1 275 1 280 1 285 1 290 1 295 1 300 1 325 1;
	setAttr -s 35 ".kit[0:34]"  18 1 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 18 2 2 2 2 18 
		18 18 18 1 1 18 18 1 1 1;
	setAttr -s 35 ".kot[0:34]"  18 1 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 18 2 2 2 2 18 
		18 18 18 1 1 18 18 1 1 1;
	setAttr -s 35 ".kix[1:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".kiy[1:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 35 ".kox[1:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".koy[1:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle8_visibility";
	rename -uid "15BC1D96-E64B-8DA1-5561-46B0D2F81976";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  0 1 20 1 30 1 35 1 40 1 50 1 55 1 60 1 70 1
		 75 1 80 1 90 1 110 1 120 1 135 1 140 1 170 1 190 1 200 1 205 1 210 1 220 1 225 1
		 230 1 240 1 245 1 250 1 260 1 275 1 280 1 285 1 290 1 295 1 300 1 325 1;
	setAttr -s 35 ".kit[0:34]"  9 1 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 9 2 2 2 2 9 
		9 9 9 1 1 9 9 1 1 1;
	setAttr -s 35 ".kot[0:34]"  5 5 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 5 2 2 2 2 5 
		5 5 5 1 1 5 5 1 1 1;
	setAttr -s 35 ".kix[1:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".kiy[1:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 35 ".kox[4:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 1 1 
		0 0 0 0 1 1 0 0 1 1 1;
	setAttr -s 35 ".koy[4:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "nurbsCircle8_translateX";
	rename -uid "B63E2212-4345-6431-B533-A093C4BCC54E";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  0 0 20 0 30 0 35 0 40 0 50 0 55 0 60 0 70 0
		 75 0 80 0 90 0 110 0 120 0 135 0 140 0 170 0 190 0 200 0 205 0 210 0 220 0 225 0
		 230 0 240 0 245 0 250 0 260 0 275 0 280 0 285 0 290 0 295 0 300 0 325 0;
	setAttr -s 35 ".kit[0:34]"  18 1 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 18 2 2 2 2 18 
		18 18 18 1 1 18 18 1 1 1;
	setAttr -s 35 ".kot[0:34]"  18 1 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 18 2 2 2 2 18 
		18 18 18 1 1 18 18 1 1 1;
	setAttr -s 35 ".kix[1:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".kiy[1:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 35 ".kox[1:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".koy[1:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "nurbsCircle8_translateY";
	rename -uid "918E9AFF-6545-928F-EF8C-FD9BBF62363F";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  0 0 20 0 30 0 35 0 40 0 50 0 55 0 60 0 70 0
		 75 0 80 0 90 0 110 0 120 0 135 0 140 0 170 0 190 0 200 0 205 0 210 0 220 0 225 0
		 230 0 240 0 245 0 250 0 260 0 275 0 280 0 285 0 290 0 295 0 300 0 325 0;
	setAttr -s 35 ".kit[0:34]"  18 1 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 18 2 2 2 2 18 
		18 18 18 1 1 18 18 1 1 1;
	setAttr -s 35 ".kot[0:34]"  18 1 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 18 2 2 2 2 18 
		18 18 18 1 1 18 18 1 1 1;
	setAttr -s 35 ".kix[1:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".kiy[1:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 35 ".kox[1:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".koy[1:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "nurbsCircle8_translateZ";
	rename -uid "1D305DCB-2145-AB4E-C875-229D82073B4E";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  0 0 20 0 30 0 35 0 40 0 50 0 55 0 60 0 70 0
		 75 0 80 0 90 0 110 0 120 0 135 0 140 0 170 0 190 0 200 0 205 0 210 0 220 0 225 0
		 230 0 240 0 245 0 250 0 260 0 275 0 280 0 285 0 290 0 295 0 300 0 325 0;
	setAttr -s 35 ".kit[0:34]"  18 1 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 18 2 2 2 2 18 
		18 18 18 1 1 18 18 1 1 1;
	setAttr -s 35 ".kot[0:34]"  18 1 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 18 2 2 2 2 18 
		18 18 18 1 1 18 18 1 1 1;
	setAttr -s 35 ".kix[1:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".kiy[1:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 35 ".kox[1:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".koy[1:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "nurbsCircle8_rotateX";
	rename -uid "BECA50BA-5B4F-45F0-4CC4-879168776A8D";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  0 0 20 0 30 0 35 0 40 0 50 0 55 0 60 0 70 0
		 75 0 80 0 90 0 110 0 120 0 135 0 140 0 170 0 190 0 200 0 205 0 210 0 220 0 225 0
		 230 0 240 0 245 0 250 0 260 0 275 0 280 0 285 0 290 0 295 0 300 0 325 0;
	setAttr -s 35 ".kit[0:34]"  18 1 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 18 2 2 2 2 18 
		18 18 18 1 1 18 18 1 1 1;
	setAttr -s 35 ".kot[0:34]"  18 1 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 18 2 2 2 2 18 
		18 18 18 1 1 18 18 1 1 1;
	setAttr -s 35 ".kix[1:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".kiy[1:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 35 ".kox[1:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".koy[1:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "nurbsCircle8_rotateY";
	rename -uid "3951C89E-784E-30D0-E0A9-17AFD617F54F";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  0 0 20 0 30 0 35 0 40 0 50 0 55 0 60 0 70 0
		 75 0 80 0 90 0 110 0 120 0 135 0 140 0 170 0 190 0 200 0 205 0 210 0 220 0 225 0
		 230 0 240 0 245 0 250 0 260 0 275 0 280 0 285 0 290 0 295 0 300 0 325 0;
	setAttr -s 35 ".kit[0:34]"  18 1 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 18 2 2 2 2 18 
		18 18 18 1 1 18 18 1 1 1;
	setAttr -s 35 ".kot[0:34]"  18 1 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 18 2 2 2 2 18 
		18 18 18 1 1 18 18 1 1 1;
	setAttr -s 35 ".kix[1:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".kiy[1:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 35 ".kox[1:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".koy[1:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "nurbsCircle8_rotateZ";
	rename -uid "A482FFC5-5045-BEFF-AF19-9CBD88CA5001";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  0 0 20 0 30 0 35 0 40 0 50 0 55 0 60 0 70 0
		 75 0 80 0 90 0 110 0 120 0 135 0 140 0 170 0 190 0 200 0 205 0 210 0 220 0 225 0
		 230 0 240 0 245 0 250 0 260 0 275 0 280 0 285 0 290 0 295 0 300 0 325 0;
	setAttr -s 35 ".kit[0:34]"  18 1 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 18 2 2 2 2 18 
		18 18 18 1 1 18 18 1 1 1;
	setAttr -s 35 ".kot[0:34]"  18 1 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 18 2 2 2 2 18 
		18 18 18 1 1 18 18 1 1 1;
	setAttr -s 35 ".kix[1:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".kiy[1:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 35 ".kox[1:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".koy[1:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle8_scaleX";
	rename -uid "B05813F7-A548-0058-A7B0-328D3DADF079";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  0 1 20 1 30 1 35 1 40 1 50 1 55 1 60 1 70 1
		 75 1 80 1 90 1 110 1 120 1 135 1 140 1 170 1 190 1 200 1 205 1 210 1 220 1 225 1
		 230 1 240 1 245 1 250 1 260 1 275 1 280 1 285 1 290 1 295 1 300 1 325 1;
	setAttr -s 35 ".kit[0:34]"  18 1 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 18 2 2 2 2 18 
		18 18 18 1 1 18 18 1 1 1;
	setAttr -s 35 ".kot[0:34]"  18 1 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 18 2 2 2 2 18 
		18 18 18 1 1 18 18 1 1 1;
	setAttr -s 35 ".kix[1:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".kiy[1:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 35 ".kox[1:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".koy[1:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle8_scaleY";
	rename -uid "87DCB4DC-7548-EF35-79D0-20AED92ECBD8";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  0 1 20 1 30 1 35 1 40 1 50 1 55 1 60 1 70 1
		 75 1 80 1 90 1 110 1 120 1 135 1 140 1 170 1 190 1 200 1 205 1 210 1 220 1 225 1
		 230 1 240 1 245 1 250 1 260 1 275 1 280 1 285 1 290 1 295 1 300 1 325 1;
	setAttr -s 35 ".kit[0:34]"  18 1 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 18 2 2 2 2 18 
		18 18 18 1 1 18 18 1 1 1;
	setAttr -s 35 ".kot[0:34]"  18 1 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 18 2 2 2 2 18 
		18 18 18 1 1 18 18 1 1 1;
	setAttr -s 35 ".kix[1:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".kiy[1:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 35 ".kox[1:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".koy[1:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle8_scaleZ";
	rename -uid "BD732A92-1248-C12B-A9ED-61A20D94D2E5";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  0 1 20 1 30 1 35 1 40 1 50 1 55 1 60 1 70 1
		 75 1 80 1 90 1 110 1 120 1 135 1 140 1 170 1 190 1 200 1 205 1 210 1 220 1 225 1
		 230 1 240 1 245 1 250 1 260 1 275 1 280 1 285 1 290 1 295 1 300 1 325 1;
	setAttr -s 35 ".kit[0:34]"  18 1 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 18 2 2 2 2 18 
		18 18 18 1 1 18 18 1 1 1;
	setAttr -s 35 ".kot[0:34]"  18 1 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 18 2 2 2 2 18 
		18 18 18 1 1 18 18 1 1 1;
	setAttr -s 35 ".kix[1:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".kiy[1:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 35 ".kox[1:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".koy[1:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle7_visibility";
	rename -uid "C961B0CE-0E4E-C372-8CEB-C29CDAFD8B45";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  0 1 20 1 30 1 35 1 40 1 50 1 55 1 60 1 70 1
		 75 1 80 1 90 1 110 1 120 1 135 1 140 1 170 1 190 1 200 1 205 1 210 1 220 1 225 1
		 230 1 240 1 245 1 250 1 260 1 275 1 280 1 285 1 290 1 295 1 300 1 325 1;
	setAttr -s 35 ".kit[0:34]"  9 1 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 9 2 2 2 2 9 
		9 9 9 1 1 9 9 1 1 1;
	setAttr -s 35 ".kot[0:34]"  5 5 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 5 2 2 2 2 5 
		5 5 5 1 1 5 5 1 1 1;
	setAttr -s 35 ".kix[1:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".kiy[1:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 35 ".kox[4:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 1 1 
		0 0 0 0 1 1 0 0 1 1 1;
	setAttr -s 35 ".koy[4:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "nurbsCircle7_translateX";
	rename -uid "1EC1D712-C149-A394-D8C6-7299A4664AAF";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  0 0 20 0 30 0 35 0 40 0 50 0 55 0 60 0 70 0
		 75 0 80 0 90 0 110 0 120 0 135 0 140 0 170 0 190 0 200 0 205 0 210 0 220 0 225 0
		 230 0 240 0 245 0 250 0 260 0 275 0 280 0 285 0 290 0 295 0 300 0 325 0;
	setAttr -s 35 ".kit[0:34]"  18 1 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 18 2 2 2 2 18 
		18 18 18 1 1 18 18 1 1 1;
	setAttr -s 35 ".kot[0:34]"  18 1 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 18 2 2 2 2 18 
		18 18 18 1 1 18 18 1 1 1;
	setAttr -s 35 ".kix[1:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".kiy[1:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 35 ".kox[1:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".koy[1:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "nurbsCircle7_translateY";
	rename -uid "6A95258A-664E-9484-B0CE-388F596E2146";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  0 0 20 0 30 0 35 0 40 0 50 0 55 0 60 0 70 0
		 75 0 80 0 90 0 110 0 120 0 135 0 140 0 170 0 190 0 200 0 205 0 210 0 220 0 225 0
		 230 0 240 0 245 0 250 0 260 0 275 0 280 0 285 0 290 0 295 0 300 0 325 0;
	setAttr -s 35 ".kit[0:34]"  18 1 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 18 2 2 2 2 18 
		18 18 18 1 1 18 18 1 1 1;
	setAttr -s 35 ".kot[0:34]"  18 1 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 18 2 2 2 2 18 
		18 18 18 1 1 18 18 1 1 1;
	setAttr -s 35 ".kix[1:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".kiy[1:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 35 ".kox[1:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".koy[1:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "nurbsCircle7_translateZ";
	rename -uid "088CD30A-F647-FEA2-E261-A2827A3E08D1";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  0 0 20 0 30 0 35 0 40 0 50 0 55 0 60 0 70 0
		 75 0 80 0 90 0 110 0 120 0 135 0 140 0 170 0 190 0 200 0 205 0 210 0 220 0 225 0
		 230 0 240 0 245 0 250 0 260 0 275 0 280 0 285 0 290 0 295 0 300 0 325 0;
	setAttr -s 35 ".kit[0:34]"  18 1 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 18 2 2 2 2 18 
		18 18 18 1 1 18 18 1 1 1;
	setAttr -s 35 ".kot[0:34]"  18 1 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 18 2 2 2 2 18 
		18 18 18 1 1 18 18 1 1 1;
	setAttr -s 35 ".kix[1:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".kiy[1:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 35 ".kox[1:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".koy[1:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "nurbsCircle7_rotateX";
	rename -uid "1A7A8734-5E48-9E45-77DF-318521ECBF79";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  0 -9.636713047527536 10 15.797661457924638
		 20 15.720452405498166 30 15.720452405498166 35 15.720452405498166 40 15.720452405498166
		 50 15.720452405498166 55 15.720452405498166 60 15.720452405498166 70 15.720452405498166
		 75 15.720452405498166 80 15.720452405498166 90 15.720452405498166 110 15.720452405498166
		 120 15.720452405498166 135 15.720452405498166 140 15.720452405498166 170 0.41007977283036134
		 180 -15.865152518695734 190 2.7287111317371218 200 2.7287111317371218 205 2.7287111317371218
		 210 2.7287111317371218 220 2.7287111317371218 225 2.7287111317371218 230 2.7287111317371218
		 240 -3.0254267543809359 245 -3.0254267543809359 250 -3.0254267543809359 260 -3.0254267543809359
		 275 2.7287111317371218 280 2.7287111317371218 285 2.7287111317371218 290 2.7287111317371218
		 295 2.7287111317371218 300 2.7287111317371218 305 -22.638528749619169 310 17.503095831810292
		 315 10.094259500230532 320 20.908528319137204 325 2.7287111317371218;
	setAttr -s 41 ".kit[2:40]"  1 2 2 1 2 2 1 2 
		2 2 1 18 18 18 18 1 18 1 2 18 2 2 2 2 18 
		18 18 18 1 1 18 18 1 1 18 18 18 18 1;
	setAttr -s 41 ".kot[2:40]"  1 2 2 1 2 2 1 2 
		2 2 1 18 18 18 18 1 18 1 2 18 2 2 2 2 18 
		18 18 18 1 1 18 18 1 1 18 18 18 18 1;
	setAttr -s 41 ".kix[2:40]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 0.99591195583343506 1 1 1 1 1 1 1 1 1;
	setAttr -s 41 ".kiy[2:40]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 -0.090328700840473175 0 0 0 0 0 0 0 0 0;
	setAttr -s 41 ".kox[2:40]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 0.97215992212295532 1 1 1 1 1 1 1 1 0.97215992212295532 0.97215992212295532 
		1 1 1 1 0.97215992212295532;
	setAttr -s 41 ".koy[2:40]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 -0.2343183308839798 0 0 0 0 0 0 0 0 -0.2343183308839798 -0.2343183308839798 
		0 0 0 0 -0.2343183308839798;
createNode animCurveTA -n "nurbsCircle7_rotateY";
	rename -uid "2864E52F-C54D-065C-84D1-3CAA5DB99D83";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  0 28.973719328867386 10 38.475460482999857
		 20 46.305481881098416 30 46.305481881098416 35 46.305481881098416 40 46.305481881098416
		 50 46.305481881098416 55 46.305481881098416 60 46.305481881098416 70 46.305481881098416
		 75 46.305481881098416 80 46.305481881098416 90 46.305481881098416 110 46.305481881098416
		 120 46.305481881098416 135 46.305481881098416 140 46.305481881098416 170 -22.933914345782529
		 180 -20.206754583643207 190 -41.465411396929234 200 -41.465411396929234 205 -41.465411396929234
		 210 -41.465411396929234 220 -41.465411396929234 225 -41.465411396929234 230 -41.465411396929234
		 240 -54.599676052644462 245 -54.599676052644462 250 -54.599676052644462 260 -54.599676052644462
		 275 -41.465411396929234 280 -41.465411396929234 285 -41.465411396929234 290 -41.465411396929234
		 295 -41.465411396929234 300 -41.465411396929234 305 -36.957596570961655 310 -7.2071485759188194
		 315 2.7516668497472643 320 -28.738976975712077 325 -41.465411396929234;
	setAttr -s 41 ".kit[2:40]"  1 2 2 1 2 2 1 2 
		2 2 1 18 18 18 18 1 18 1 2 18 2 2 2 2 18 
		18 18 18 1 1 18 18 1 1 18 18 18 18 1;
	setAttr -s 41 ".kot[2:40]"  1 2 2 1 2 2 1 2 
		2 2 1 18 18 18 18 1 18 1 2 18 2 2 2 2 18 
		18 18 18 1 1 18 18 1 1 18 18 18 18 1;
	setAttr -s 41 ".kix[2:40]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 0.85265696048736572 1 1 1 1 0.66175103187561035 0.51525259017944336 
		1 0.47508785128593445 1;
	setAttr -s 41 ".kiy[2:40]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 -0.52247112989425659 0 0 0 0 0.74972367286682129 0.85703837871551514 
		0 -0.87993836402893066 0;
	setAttr -s 41 ".kox[2:40]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 0.87615436315536499 1 1 1 1 1 1 1 1 0.87615436315536499 0.87615436315536499 
		0.66175103187561035 0.51525259017944336 1 0.47508788108825684 0.87615436315536499;
	setAttr -s 41 ".koy[2:40]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 -0.48203065991401672 0 0 0 0 0 0 0 0 -0.48203065991401672 -0.48203065991401672 
		0.74972367286682129 0.85703837871551514 0 -0.87993836402893066 -0.48203065991401672;
createNode animCurveTA -n "nurbsCircle7_rotateZ";
	rename -uid "43922FC8-7049-1841-042A-C797227C6E4C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  0 -3.3371751004744614 10 3.9980477690045362
		 20 18.101742050746477 30 18.101742050746477 35 18.101742050746477 40 18.101742050746477
		 50 18.101742050746477 55 18.101742050746477 60 18.101742050746477 70 18.101742050746477
		 75 18.101742050746477 80 18.101742050746477 90 18.101742050746477 110 18.101742050746477
		 120 18.101742050746477 135 18.101742050746477 140 18.101742050746477 170 13.200131721068352
		 180 9.354335966505392 190 6.4014899340404927 200 6.4014899340404927 205 6.4014899340404927
		 210 6.4014899340404927 220 6.4014899340404927 225 6.4014899340404927 230 6.4014899340404927
		 240 3.1238365171670046 245 3.1238365171670046 250 3.1238365171670046 260 3.1238365171670046
		 275 6.4014899340404927 280 6.4014899340404927 285 6.4014899340404927 290 6.4014899340404927
		 295 6.4014899340404927 300 6.4014899340404927 305 1.2400883587730678 310 -11.858576286544848
		 315 -3.0192768665459386 320 -13.330890691631618 325 6.4014899340404927;
	setAttr -s 41 ".kit[2:40]"  1 2 2 1 2 2 1 2 
		2 2 1 18 18 18 18 1 18 1 2 18 2 2 2 2 18 
		18 18 18 1 1 18 18 1 1 18 18 18 18 1;
	setAttr -s 41 ".kot[2:40]"  1 2 2 1 2 2 1 2 
		2 2 1 18 18 18 18 1 18 1 2 18 2 2 2 2 18 
		18 18 18 1 1 18 18 1 1 18 18 18 18 1;
	setAttr -s 41 ".kix[2:40]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.99001401662826538 
		1 1 1 1 1 1 1 1 1 1 1 1 0.99668055772781372 1 1 1 1 0.79429292678833008 1 1 1 1;
	setAttr -s 41 ".kiy[2:40]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.14096857607364655 
		0 0 0 0 0 0 0 0 0 0 0 0 -0.081412039697170258 0 0 0 0 -0.60753500461578369 0 0 0 
		0;
	setAttr -s 41 ".kox[2:40]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.99001401662826538 
		1 1 1 1 1 1 0.99070638418197632 1 1 1 1 1 1 1 1 0.99070638418197632 0.99070638418197632 
		0.7942928671836853 1 1 1 0.99070638418197632;
	setAttr -s 41 ".koy[2:40]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.14096857607364655 
		0 0 0 0 0 0 -0.13601796329021454 0 0 0 0 0 0 0 0 -0.13601796329021454 -0.13601796329021454 
		-0.60753500461578369 0 0 0 -0.13601796329021454;
createNode animCurveTU -n "nurbsCircle7_scaleX";
	rename -uid "314FF87E-A046-C803-3861-3EBEBC7D9E7E";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  0 1 20 1 30 1 35 1 40 1 50 1 55 1 60 1 70 1
		 75 1 80 1 90 1 110 1 120 1 135 1 140 1 170 1 190 1 200 1 205 1 210 1 220 1 225 1
		 230 1 240 1 245 1 250 1 260 1 275 1 280 1 285 1 290 1 295 1 300 1 325 1;
	setAttr -s 35 ".kit[0:34]"  18 1 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 18 2 2 2 2 18 
		18 18 18 1 1 18 18 1 1 1;
	setAttr -s 35 ".kot[0:34]"  18 1 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 18 2 2 2 2 18 
		18 18 18 1 1 18 18 1 1 1;
	setAttr -s 35 ".kix[1:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".kiy[1:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 35 ".kox[1:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".koy[1:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle7_scaleY";
	rename -uid "9F6CFF4A-3549-AB43-6B0A-67B647B7D059";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  0 1 20 1 30 1 35 1 40 1 50 1 55 1 60 1 70 1
		 75 1 80 1 90 1 110 1 120 1 135 1 140 1 170 1 190 1 200 1 205 1 210 1 220 1 225 1
		 230 1 240 1 245 1 250 1 260 1 275 1 280 1 285 1 290 1 295 1 300 1 325 1;
	setAttr -s 35 ".kit[0:34]"  18 1 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 18 2 2 2 2 18 
		18 18 18 1 1 18 18 1 1 1;
	setAttr -s 35 ".kot[0:34]"  18 1 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 18 2 2 2 2 18 
		18 18 18 1 1 18 18 1 1 1;
	setAttr -s 35 ".kix[1:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".kiy[1:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 35 ".kox[1:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".koy[1:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle7_scaleZ";
	rename -uid "7C2326DF-1448-DA54-E8AE-BCAF2C826ACB";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  0 1 20 1 30 1 35 1 40 1 50 1 55 1 60 1 70 1
		 75 1 80 1 90 1 110 1 120 1 135 1 140 1 170 1 190 1 200 1 205 1 210 1 220 1 225 1
		 230 1 240 1 245 1 250 1 260 1 275 1 280 1 285 1 290 1 295 1 300 1 325 1;
	setAttr -s 35 ".kit[0:34]"  18 1 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 18 2 2 2 2 18 
		18 18 18 1 1 18 18 1 1 1;
	setAttr -s 35 ".kot[0:34]"  18 1 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 18 2 2 2 2 18 
		18 18 18 1 1 18 18 1 1 1;
	setAttr -s 35 ".kix[1:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".kiy[1:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 35 ".kox[1:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".koy[1:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle17_visibility";
	rename -uid "E665A696-774C-17B7-0312-4C9D01609967";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  0 1 20 1 30 1 35 1 40 1 50 1 55 1 60 1 70 1
		 75 1 80 1 90 1 110 1 120 1 135 1 140 1 170 1 190 1 200 1 205 1 210 1 220 1 225 1
		 230 1 240 1 245 1 250 1 260 1 275 1 280 1 285 1 290 1 295 1 300 1 325 1;
	setAttr -s 35 ".kit[0:34]"  9 1 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 9 2 2 2 2 9 
		9 9 9 1 1 9 9 1 1 1;
	setAttr -s 35 ".kot[0:34]"  5 5 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 5 2 2 2 2 5 
		5 5 5 1 1 5 5 1 1 1;
	setAttr -s 35 ".kix[1:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".kiy[1:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 35 ".kox[4:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 1 1 
		0 0 0 0 1 1 0 0 1 1 1;
	setAttr -s 35 ".koy[4:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "nurbsCircle17_translateX";
	rename -uid "E6C27768-CC41-9701-842E-BC83660044E6";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  0 0 20 0 30 0 35 0 40 0 50 0 55 0 60 0 70 0
		 75 0 80 0 90 0 110 0 120 0 135 0 140 0 170 0 190 0 200 0 205 0 210 0 220 0 225 0
		 230 0 240 0 245 0 250 0 260 0 275 0 280 0 285 0 290 0 295 0 300 0 325 0;
	setAttr -s 35 ".kit[0:34]"  18 1 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 18 2 2 2 2 18 
		18 18 18 1 1 18 18 1 1 1;
	setAttr -s 35 ".kot[0:34]"  18 1 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 18 2 2 2 2 18 
		18 18 18 1 1 18 18 1 1 1;
	setAttr -s 35 ".kix[1:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".kiy[1:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 35 ".kox[1:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".koy[1:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "nurbsCircle17_translateY";
	rename -uid "5BFB9AC6-D046-A0B0-E7B3-659D1668D5FD";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  0 0 20 0 30 0 35 0 40 0 50 0 55 0 60 0 70 0
		 75 0 80 0 90 0 110 0 120 0 135 0 140 0 170 0 190 0 200 0 205 0 210 0 220 0 225 0
		 230 0 240 0 245 0 250 0 260 0 275 0 280 0 285 0 290 0 295 0 300 0 325 0;
	setAttr -s 35 ".kit[0:34]"  18 1 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 18 2 2 2 2 18 
		18 18 18 1 1 18 18 1 1 1;
	setAttr -s 35 ".kot[0:34]"  18 1 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 18 2 2 2 2 18 
		18 18 18 1 1 18 18 1 1 1;
	setAttr -s 35 ".kix[1:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".kiy[1:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 35 ".kox[1:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".koy[1:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "nurbsCircle17_translateZ";
	rename -uid "AF6C0044-764E-5D39-CBA7-6BA414B6AE54";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  0 0 20 0 30 0 35 0 40 0 50 0 55 0 60 0 70 0
		 75 0 80 0 90 0 110 0 120 0 135 0 140 0 170 0 190 0 200 0 205 0 210 0 220 0 225 0
		 230 0 240 0 245 0 250 0 260 0 275 0 280 0 285 0 290 0 295 0 300 0 325 0;
	setAttr -s 35 ".kit[0:34]"  18 1 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 18 2 2 2 2 18 
		18 18 18 1 1 18 18 1 1 1;
	setAttr -s 35 ".kot[0:34]"  18 1 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 18 2 2 2 2 18 
		18 18 18 1 1 18 18 1 1 1;
	setAttr -s 35 ".kix[1:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".kiy[1:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 35 ".kox[1:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".koy[1:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "nurbsCircle17_rotateX";
	rename -uid "96F3DD1C-F84D-233F-8DE2-A2A22F8A8C3C";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  0 2.2123849733936565 20 2.2123849733936565
		 30 2.2123849733936565 35 2.2123849733936565 40 2.2123849733936565 50 2.2123849733936565
		 55 2.2123849733936565 60 2.2123849733936565 70 36.544258175858651 75 36.544258175858651
		 80 36.544258175858651 90 36.544258175858651 110 2.2123849733936565 120 2.2123849733936565
		 135 2.2123849733936565 140 2.2123849733936565 170 2.2123849733936565 190 2.2123849733936565
		 200 2.2123849733936565 205 2.2123849733936565 210 2.2123849733936565 220 2.2123849733936565
		 225 2.2123849733936565 230 2.2123849733936565 240 2.2123849733936565 245 2.2123849733936565
		 250 2.2123849733936565 260 2.2123849733936565 275 2.2123849733936565 280 2.2123849733936565
		 285 2.2123849733936565 290 2.2123849733936565 295 2.2123849733936565 300 2.2123849733936565
		 325 2.2123849733936565;
	setAttr -s 35 ".kit[0:34]"  18 1 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 18 2 2 2 2 18 
		18 18 18 1 1 18 18 1 1 1;
	setAttr -s 35 ".kot[0:34]"  18 1 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 18 2 2 2 2 18 
		18 18 18 1 1 18 18 1 1 1;
	setAttr -s 35 ".kix[1:34]"  1 1 1 1 1 1 1 0.57090657949447632 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".kiy[1:34]"  0 0 0 0 0 0 0 0.82101500034332275 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 35 ".kox[1:34]"  1 1 1 1 1 1 0.72184628248214722 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".koy[1:34]"  0 0 0 0 0 0 0.69205337762832642 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "nurbsCircle17_rotateY";
	rename -uid "76BADCD8-FB44-C2F9-8F7C-698BEF476BB8";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  0 10.855751997413357 20 10.855751997413357
		 30 10.855751997413357 35 10.855751997413357 40 10.855751997413357 50 10.855751997413357
		 55 10.855751997413357 60 10.855751997413357 70 2.4268600074257516 75 2.4268600074257516
		 80 2.4268600074257516 90 2.4268600074257516 110 10.855751997413357 120 10.855751997413357
		 135 10.855751997413357 140 10.855751997413357 170 10.855751997413357 190 10.855751997413357
		 200 10.855751997413357 205 10.855751997413357 210 10.855751997413357 220 10.855751997413357
		 225 10.855751997413357 230 10.855751997413357 240 10.855751997413357 245 10.855751997413357
		 250 10.855751997413357 260 10.855751997413357 275 10.855751997413357 280 10.855751997413357
		 285 10.855751997413357 290 10.855751997413357 295 10.855751997413357 300 10.855751997413357
		 325 10.855751997413357;
	setAttr -s 35 ".kit[0:34]"  18 1 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 18 2 2 2 2 18 
		18 18 18 1 1 18 18 1 1 1;
	setAttr -s 35 ".kot[0:34]"  18 1 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 18 2 2 2 2 18 
		18 18 18 1 1 18 18 1 1 1;
	setAttr -s 35 ".kix[1:34]"  1 1 1 1 1 1 1 0.94295263290405273 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".kiy[1:34]"  0 0 0 0 0 0 0 -0.33292689919471741 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 35 ".kox[1:34]"  1 1 1 1 1 1 0.97339874505996704 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".koy[1:34]"  0 0 0 0 0 0 -0.22911770641803741 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "nurbsCircle17_rotateZ";
	rename -uid "81805867-D741-42A0-E877-36A3DED5BFE9";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  0 5.4821136670819328 20 5.4821136670819328
		 30 5.4821136670819328 35 5.4821136670819328 40 5.4821136670819328 50 5.4821136670819328
		 55 5.4821136670819328 60 5.4821136670819328 70 13.773061785251691 75 13.773061785251691
		 80 13.773061785251691 90 13.773061785251691 110 5.4821136670819328 120 5.4821136670819328
		 135 5.4821136670819328 140 5.4821136670819328 170 5.4821136670819328 190 5.4821136670819328
		 200 5.4821136670819328 205 5.4821136670819328 210 5.4821136670819328 220 5.4821136670819328
		 225 5.4821136670819328 230 5.4821136670819328 240 5.4821136670819328 245 5.4821136670819328
		 250 5.4821136670819328 260 5.4821136670819328 275 5.4821136670819328 280 5.4821136670819328
		 285 5.4821136670819328 290 5.4821136670819328 295 5.4821136670819328 300 5.4821136670819328
		 325 5.4821136670819328;
	setAttr -s 35 ".kit[0:34]"  18 1 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 18 2 2 2 2 18 
		18 18 18 1 1 18 18 1 1 1;
	setAttr -s 35 ".kot[0:34]"  18 1 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 18 2 2 2 2 18 
		18 18 18 1 1 18 18 1 1 1;
	setAttr -s 35 ".kix[1:34]"  1 1 1 1 1 1 1 0.94465374946594238 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".kiy[1:34]"  0 0 0 0 0 0 0 0.32806912064552307 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 35 ".kox[1:34]"  1 1 1 1 1 1 0.97422915697097778 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".koy[1:34]"  0 0 0 0 0 0 0.22556030750274658 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle17_scaleX";
	rename -uid "E716B839-7044-4FA3-611F-6C8638AA1525";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  0 1 20 1 30 1 35 1 40 1 50 1 55 1 60 1 70 1
		 75 1 80 1 90 1 110 1 120 1 135 1 140 1 170 1 190 1 200 1 205 1 210 1 220 1 225 1
		 230 1 240 1 245 1 250 1 260 1 275 1 280 1 285 1 290 1 295 1 300 1 325 1;
	setAttr -s 35 ".kit[0:34]"  18 1 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 18 2 2 2 2 18 
		18 18 18 1 1 18 18 1 1 1;
	setAttr -s 35 ".kot[0:34]"  18 1 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 18 2 2 2 2 18 
		18 18 18 1 1 18 18 1 1 1;
	setAttr -s 35 ".kix[1:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".kiy[1:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 35 ".kox[1:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".koy[1:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle17_scaleY";
	rename -uid "1A479024-9F4E-3B93-44FC-7BA55C4BDB40";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  0 1 20 1 30 1 35 1 40 1 50 1 55 1 60 1 70 1
		 75 1 80 1 90 1 110 1 120 1 135 1 140 1 170 1 190 1 200 1 205 1 210 1 220 1 225 1
		 230 1 240 1 245 1 250 1 260 1 275 1 280 1 285 1 290 1 295 1 300 1 325 1;
	setAttr -s 35 ".kit[0:34]"  18 1 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 18 2 2 2 2 18 
		18 18 18 1 1 18 18 1 1 1;
	setAttr -s 35 ".kot[0:34]"  18 1 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 18 2 2 2 2 18 
		18 18 18 1 1 18 18 1 1 1;
	setAttr -s 35 ".kix[1:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".kiy[1:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 35 ".kox[1:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".koy[1:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle17_scaleZ";
	rename -uid "5013EBA9-5C47-1380-F160-B79F84728267";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  0 1 20 1 30 1 35 1 40 1 50 1 55 1 60 1 70 1
		 75 1 80 1 90 1 110 1 120 1 135 1 140 1 170 1 190 1 200 1 205 1 210 1 220 1 225 1
		 230 1 240 1 245 1 250 1 260 1 275 1 280 1 285 1 290 1 295 1 300 1 325 1;
	setAttr -s 35 ".kit[0:34]"  18 1 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 18 2 2 2 2 18 
		18 18 18 1 1 18 18 1 1 1;
	setAttr -s 35 ".kot[0:34]"  18 1 2 2 1 2 2 1 
		2 2 2 1 18 18 18 18 1 1 2 18 2 2 2 2 18 
		18 18 18 1 1 18 18 1 1 1;
	setAttr -s 35 ".kix[1:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".kiy[1:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 35 ".kox[1:34]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 35 ".koy[1:34]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle1_visibility";
	rename -uid "C270AE59-1745-D6D4-16D0-269A77FF818C";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 45 ".ktv[0:44]"  0 1 3 1 8 1 20 1 30 1 35 1 40 1 50 1 55 1
		 60 1 70 1 75 1 80 1 90 1 95 1 100 1 105 1 110 1 120 1 125 1 130 1 135 1 140 1 170 1
		 175 1 190 1 200 1 205 1 210 1 220 1 225 1 230 1 240 1 245 1 250 1 260 1 265 1 270 1
		 275 1 280 1 285 1 290 1 295 1 300 1 325 1;
	setAttr -s 45 ".kit[0:44]"  9 1 1 1 2 2 1 2 
		2 1 2 2 2 1 9 9 1 1 1 9 9 1 1 1 1 
		1 2 9 2 2 2 2 9 9 9 2 2 2 1 2 2 2 
		2 1 1;
	setAttr -s 45 ".kot[0:44]"  5 5 5 5 2 2 1 2 
		2 1 2 2 2 1 5 5 1 1 1 5 5 1 1 1 1 
		1 2 5 2 2 2 2 5 5 5 2 2 2 1 2 2 2 
		2 1 1;
	setAttr -s 45 ".kix[1:44]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 45 ".kiy[1:44]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 45 ".kox[6:44]"  1 1 1 1 1 1 1 1 0 0 1 1 1 0 0 1 1 1 1 1 
		1 0 1 1 1 1 0 0 0 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 45 ".koy[6:44]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "nurbsCircle1_translateX";
	rename -uid "D9AF1D39-F94B-6236-D7DA-B09313C28075";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 46 ".ktv[0:45]"  0 8.0017156648021626 3 8.0017156648021626
		 8 -3.7848616274525 20 -3.7848616274525 30 -3.7848616274525 35 -3.7848616274525 40 -3.7848616274525
		 50 -3.7848616274525 55 -3.7848616274525 60 -3.7848616274525 70 -3.7848616274525 75 -3.7848616274525
		 80 -3.7848616274525 90 -3.7848616274525 95 -3.7848616274525 100 24.20379377642362
		 105 -3.7848616274525 110 -3.7848616274525 120 -3.7848616274525 125 -3.7848616274525
		 130 -41.868454848846731 135 -3.7848616274525 140 -3.7848616274525 170 5.7713644939147457
		 175 -3.7524889773699641 190 -3.7524889773699641 200 -3.7524889773699641 205 -3.7524889773699641
		 210 -3.7524889773699641 220 -3.7524889773699641 225 -3.7524889773699641 230 -3.7524889773699641
		 240 -3.7524889773699641 245 -3.7524889773699641 250 -3.7524889773699641 260 -3.7524889773699641
		 265 -3.7524889773699641 270 -34.517810754475214 275 -3.7524889773699641 280 -3.7524889773699641
		 285 -3.7524889773699641 287 7.9381008078421775 290 16.855930815779629 295 -3.7524889773699641
		 300 -3.7524889773699641 325 -3.7524889773699641;
	setAttr -s 46 ".kit[0:45]"  18 1 1 1 2 2 1 2 
		2 1 2 2 2 1 18 18 1 1 1 18 18 1 1 1 1 
		1 2 18 2 2 2 2 18 18 18 2 2 2 1 2 2 18 
		2 2 1 1;
	setAttr -s 46 ".kot[0:45]"  18 1 1 1 2 2 1 2 
		2 1 2 2 2 1 18 18 1 1 1 18 18 1 1 1 1 
		1 2 18 2 2 2 2 18 18 18 2 2 2 1 2 2 18 
		2 2 1 1;
	setAttr -s 46 ".kix[1:45]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.0067715281620621681 1 1 1 0.010108604095876217 
		0.014015484601259232 0.010108651593327522 1 1;
	setAttr -s 46 ".kiy[1:45]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.99997705221176147 0 0 0 0.99994885921478271 0.99990171194076538 
		-0.99994891881942749 0 0;
	setAttr -s 46 ".kox[1:45]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.0067715281620621681 0.0067715281620621681 1 1 0.0071280323900282383 
		0.010108605958521366 0.010108651593327522 1 1 1;
	setAttr -s 46 ".koy[1:45]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.99997705221176147 0.99997705221176147 0 0 0.99997460842132568 
		0.99994891881942749 -0.99994891881942749 0 0 0;
createNode animCurveTL -n "nurbsCircle1_translateY";
	rename -uid "D0302CFA-CF4D-67A6-52DF-45BBD53265F1";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 50 ".ktv[0:49]"  0 0 3 0 5 8.0876571957210928 8 0 20 0 30 0
		 35 0 40 0 50 0 55 0 60 0 70 0 75 0 80 0 90 0 95 0 100 10.774766408576738 105 0 110 0
		 120 0 125 0 130 0 132 15.071790465013432 135 0 140 0 170 0 174 8.1952973151610138
		 175 0 190 0 200 0 205 0 210 0 220 0 225 0 230 0 240 0 245 0 250 0 260 0 265 0 270 0
		 272 9.0571163852371228 275 0 280 0 285 0 290 0 292 13.960450816836349 295 0 300 0
		 325 0;
	setAttr -s 50 ".kit[0:49]"  18 1 18 1 1 2 2 1 
		2 2 1 2 2 2 1 18 18 1 1 1 18 18 18 1 1 
		1 18 1 1 2 18 2 2 2 2 18 18 18 2 2 2 18 
		1 2 2 2 18 2 1 1;
	setAttr -s 50 ".kot[0:49]"  18 1 18 1 1 2 2 1 
		2 2 1 2 2 2 1 18 18 1 1 1 18 18 18 1 1 
		1 18 1 1 2 18 2 2 2 2 18 18 18 2 2 2 18 
		1 2 2 2 18 2 1 1;
	setAttr -s 50 ".kix[1:49]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.008953506126999855 1 1;
	setAttr -s 50 ".kiy[1:49]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.99995988607406616 0 0;
	setAttr -s 50 ".kox[1:49]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.0092004435136914253 1 1 1 1 0.005969182588160038 
		1 1 1 1;
	setAttr -s 50 ".koy[1:49]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.99995768070220947 0 0 0 0 0.99998217821121216 
		0 0 0 0;
createNode animCurveTL -n "nurbsCircle1_translateZ";
	rename -uid "2EEEC3F7-084D-3AA1-BAD2-18964679150C";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 46 ".ktv[0:45]"  0 18.453527575795185 3 18.453527575795185
		 8 38.400410070707146 20 38.400410070707146 30 38.400410070707146 35 38.400410070707146
		 40 38.400410070707146 50 38.400410070707146 55 38.400410070707146 60 38.400410070707146
		 70 38.400410070707146 75 38.400410070707146 80 38.400410070707146 90 38.400410070707146
		 95 38.400410070707146 100 -8.1399850227240957 105 38.400410070707146 110 38.400410070707146
		 120 38.400410070707146 125 38.400410070707146 130 35.095081249824133 135 38.400410070707146
		 140 38.400410070707146 170 -45.433059815728491 175 -45.529051725970483 190 -45.529051725970483
		 200 -45.529051725970483 205 -45.529051725970483 210 -45.529051725970483 220 -45.529051725970483
		 225 -45.529051725970483 230 -45.529051725970483 240 -45.529051725970483 245 -45.529051725970483
		 250 -45.529051725970483 260 -45.529051725970483 265 -45.529051725970483 270 -47.54043670088187
		 275 -45.529051725970483 280 -45.529051725970483 285 -45.529051725970483 287 -37.358766561705309
		 290 -23.523477802220363 295 -45.529051725970483 300 -45.529051725970483 325 -45.529051725970483;
	setAttr -s 46 ".kit[0:45]"  18 1 1 1 2 2 1 2 
		2 1 2 2 2 1 18 18 1 1 1 18 18 1 1 1 1 
		1 2 18 2 2 2 2 18 18 18 2 2 2 1 2 2 18 
		2 2 1 1;
	setAttr -s 46 ".kot[0:45]"  18 1 1 1 2 2 1 2 
		2 1 2 2 2 1 18 18 1 1 1 18 18 1 1 1 1 
		1 2 18 2 2 2 2 18 18 18 2 2 2 1 2 2 18 
		2 2 1 1;
	setAttr -s 46 ".kix[1:45]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.10302572697401047 1 1 1 0.0094668595120310783 0.0090344985947012901 
		0.0094669032841920853 1 1;
	setAttr -s 46 ".kiy[1:45]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.99467867612838745 0 0 0 0.99995523691177368 0.99995917081832886 
		-0.99995517730712891 0 0;
	setAttr -s 46 ".kox[1:45]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.10302572697401047 0.10302572697401047 1 1 0.010198992677032948 
		0.009466860443353653 0.0094669032841920853 1 1 1;
	setAttr -s 46 ".koy[1:45]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.99467867612838745 0.99467867612838745 0 0 0.99994796514511108 
		0.99995523691177368 -0.99995517730712891 0 0 0;
createNode animCurveTA -n "nurbsCircle1_rotateX";
	rename -uid "3C514223-CA44-109E-A00D-94827F0701D0";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 50 ".ktv[0:49]"  0 0 3 0 5 24.964374317687504 8 0 20 0 30 0
		 35 0 40 0 50 0 55 0 60 0 70 0 75 0 80 0 90 0 95 0 100 35.667226871168637 105 0 110 0
		 120 0 125 0 130 0 132 29.820042751273736 135 0 140 0 170 0 174 14.328248441404286
		 175 0 190 0 200 0 205 0 210 0 220 0 225 0 230 0 240 0 245 0 250 0 260 0 265 0 270 0
		 272 25.737039066233923 275 0 280 0 285 0 290 0 292 34.065290125976929 295 0 300 0
		 325 0;
	setAttr -s 50 ".kit[0:49]"  18 1 18 1 1 2 2 1 
		2 2 1 2 2 2 1 18 18 1 1 1 18 18 18 1 1 
		1 18 1 1 2 18 2 2 2 2 18 18 18 2 2 2 18 
		1 2 2 2 18 2 1 1;
	setAttr -s 50 ".kot[0:49]"  18 1 18 1 1 2 2 1 
		2 2 1 2 2 2 1 18 18 1 1 1 18 18 18 1 1 
		1 18 1 1 2 18 2 2 2 2 18 18 18 2 2 2 18 
		1 2 2 2 18 2 1 1;
	setAttr -s 50 ".kix[1:49]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.20574453473091125 1 1;
	setAttr -s 50 ".kiy[1:49]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.97860568761825562 0 0;
	setAttr -s 50 ".kox[1:49]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.18240363895893097 1 1 1 1 0.13880592584609985 
		1 1 1 1;
	setAttr -s 50 ".koy[1:49]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.98322373628616333 0 0 0 0 0.99031960964202881 
		0 0 0 0;
createNode animCurveTA -n "nurbsCircle1_rotateY";
	rename -uid "FEA18E02-434C-1080-144F-348DE26E0568";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 46 ".ktv[0:45]"  0 0 3 0 8 -17.852733666090181 20 -17.852733666090181
		 30 -17.852733666090181 35 -17.852733666090181 40 -17.852733666090181 50 -17.852733666090181
		 55 -17.852733666090181 60 -17.852733666090181 70 -17.852733666090181 75 -17.852733666090181
		 80 -17.852733666090181 90 -17.852733666090181 95 -17.852733666090181 100 48.100252255603387
		 105 -17.852733666090181 110 -17.852733666090181 120 -17.852733666090181 125 -17.852733666090181
		 130 -57.58421674805227 132 -43.337653894859777 135 -17.852733666090181 140 -17.852733666090181
		 170 61.364748558519203 175 61.364748558519203 190 61.364748558519203 200 61.364748558519203
		 205 61.364748558519203 210 61.364748558519203 220 61.364748558519203 225 61.364748558519203
		 230 61.364748558519203 240 61.364748558519203 245 61.364748558519203 250 61.364748558519203
		 260 61.364748558519203 265 61.364748558519203 270 107.97749794586329 275 61.364748558519203
		 280 61.364748558519203 285 61.364748558519203 290 16.592435302077742 295 61.364748558519203
		 300 61.364748558519203 325 61.364748558519203;
	setAttr -s 46 ".kit[0:45]"  18 1 1 1 2 2 1 2 
		2 1 2 2 2 1 18 18 1 1 1 18 18 18 1 1 1 
		1 1 2 18 2 2 2 2 18 18 18 2 2 2 1 2 2 
		2 2 1 1;
	setAttr -s 46 ".kot[0:45]"  18 1 1 1 2 2 1 2 
		2 1 2 2 2 1 18 18 1 1 1 18 18 18 1 1 1 
		1 1 2 18 2 2 2 2 18 18 18 2 2 2 1 2 2 
		2 2 1 1;
	setAttr -s 46 ".kix[1:45]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		0.28772789239883423 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.24807533621788025 1 1 1 0.25760862231254578 
		0.25760972499847412 1 1;
	setAttr -s 46 ".kiy[1:45]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0.95771217346191406 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.96874076128005981 0 0 0 -0.96624934673309326 
		0.96624904870986938 0 0;
	setAttr -s 46 ".kox[1:45]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		0.28772789239883423 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.24807533621788025 0.24807533621788025 
		1 1 0.25760862231254578 0.25760972499847412 1 1 1;
	setAttr -s 46 ".koy[1:45]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0.95771223306655884 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.96874076128005981 -0.96874076128005981 
		0 0 -0.96624934673309326 0.96624904870986938 0 0 0;
createNode animCurveTA -n "nurbsCircle1_rotateZ";
	rename -uid "E4AED61A-0841-976C-4FFE-8697D76DCE81";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 46 ".ktv[0:45]"  0 0 3 0 8 0 20 0 30 0 35 0 40 0 50 0 55 0
		 60 0 70 0 75 0 80 0 90 0 95 0 100 21.149054980844099 105 0 110 0 120 0 125 0 130 0
		 132 2.2352580030483176 135 0 140 0 170 0 175 0 190 0 200 0 205 0 210 0 220 0 225 0
		 230 0 240 0 245 0 250 0 260 0 265 0 270 0 275 0 280 0 285 0 290 0 295 0 300 0 325 0;
	setAttr -s 46 ".kit[0:45]"  18 1 1 1 2 2 1 2 
		2 1 2 2 2 1 18 18 1 1 1 18 18 18 1 1 1 
		1 1 2 18 2 2 2 2 18 18 18 2 2 2 1 2 2 
		2 2 1 1;
	setAttr -s 46 ".kot[0:45]"  18 1 1 1 2 2 1 2 
		2 1 2 2 2 1 18 18 1 1 1 18 18 18 1 1 1 
		1 1 2 18 2 2 2 2 18 18 18 2 2 2 1 2 2 
		2 2 1 1;
	setAttr -s 46 ".kix[1:45]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 46 ".kiy[1:45]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 46 ".kox[1:45]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 46 ".koy[1:45]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle1_scaleX";
	rename -uid "1354792F-E046-98AA-4488-3EB30356769F";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 45 ".ktv[0:44]"  0 1 3 1 8 1 20 1 30 1 35 1 40 1 50 1 55 1
		 60 1 70 1 75 1 80 1 90 1 95 1 100 1 105 1 110 1 120 1 125 1 130 1 135 1 140 1 170 1
		 175 1 190 1 200 1 205 1 210 1 220 1 225 1 230 1 240 1 245 1 250 1 260 1 265 1 270 1
		 275 1 280 1 285 1 290 1 295 1 300 1 325 1;
	setAttr -s 45 ".kit[0:44]"  18 1 1 1 2 2 1 2 
		2 1 2 2 2 1 18 18 1 1 1 18 18 1 1 1 1 
		1 2 18 2 2 2 2 18 18 18 2 2 2 1 2 2 2 
		2 1 1;
	setAttr -s 45 ".kot[0:44]"  18 1 1 1 2 2 1 2 
		2 1 2 2 2 1 18 18 1 1 1 18 18 1 1 1 1 
		1 2 18 2 2 2 2 18 18 18 2 2 2 1 2 2 2 
		2 1 1;
	setAttr -s 45 ".kix[1:44]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 45 ".kiy[1:44]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 45 ".kox[1:44]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 45 ".koy[1:44]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle1_scaleY";
	rename -uid "2103F70A-D544-3DAE-A4D5-AAB2A0BD4FF0";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 45 ".ktv[0:44]"  0 1 3 1 8 1 20 1 30 1 35 1 40 1 50 1 55 1
		 60 1 70 1 75 1 80 1 90 1 95 1 100 1 105 1 110 1 120 1 125 1 130 1 135 1 140 1 170 1
		 175 1 190 1 200 1 205 1 210 1 220 1 225 1 230 1 240 1 245 1 250 1 260 1 265 1 270 1
		 275 1 280 1 285 1 290 1 295 1 300 1 325 1;
	setAttr -s 45 ".kit[0:44]"  18 1 1 1 2 2 1 2 
		2 1 2 2 2 1 18 18 1 1 1 18 18 1 1 1 1 
		1 2 18 2 2 2 2 18 18 18 2 2 2 1 2 2 2 
		2 1 1;
	setAttr -s 45 ".kot[0:44]"  18 1 1 1 2 2 1 2 
		2 1 2 2 2 1 18 18 1 1 1 18 18 1 1 1 1 
		1 2 18 2 2 2 2 18 18 18 2 2 2 1 2 2 2 
		2 1 1;
	setAttr -s 45 ".kix[1:44]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 45 ".kiy[1:44]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 45 ".kox[1:44]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 45 ".koy[1:44]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle1_scaleZ";
	rename -uid "1CE2B541-F541-8264-52D8-238C11C93FB5";
	setAttr ".tan" 2;
	setAttr ".wgt" no;
	setAttr -s 45 ".ktv[0:44]"  0 1 3 1 8 1 20 1 30 1 35 1 40 1 50 1 55 1
		 60 1 70 1 75 1 80 1 90 1 95 1 100 1 105 1 110 1 120 1 125 1 130 1 135 1 140 1 170 1
		 175 1 190 1 200 1 205 1 210 1 220 1 225 1 230 1 240 1 245 1 250 1 260 1 265 1 270 1
		 275 1 280 1 285 1 290 1 295 1 300 1 325 1;
	setAttr -s 45 ".kit[0:44]"  18 1 1 1 2 2 1 2 
		2 1 2 2 2 1 18 18 1 1 1 18 18 1 1 1 1 
		1 2 18 2 2 2 2 18 18 18 2 2 2 1 2 2 2 
		2 1 1;
	setAttr -s 45 ".kot[0:44]"  18 1 1 1 2 2 1 2 
		2 1 2 2 2 1 18 18 1 1 1 18 18 1 1 1 1 
		1 2 18 2 2 2 2 18 18 18 2 2 2 1 2 2 2 
		2 1 1;
	setAttr -s 45 ".kix[1:44]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 45 ".kiy[1:44]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 45 ".kox[1:44]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 45 ".koy[1:44]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle2_visibility";
	rename -uid "735FEA14-244B-5FB4-936B-E2BE73512B9F";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 1 20 1 30 1 35 1 40 1 50 1 55 1 60 1 70 1
		 75 1 80 1 90 1 110 1 120 1 140 1 170 1 190 1 200 1 205 1 210 1 220 1 225 1 230 1
		 240 1 245 1 250 1 260 1 275 1 280 1 285 1 290 1 295 1 300 1 325 1;
	setAttr -s 34 ".kit[0:33]"  9 1 2 2 1 2 2 1 
		2 2 2 1 1 1 1 1 1 2 9 2 2 2 2 9 9 
		9 9 1 1 9 9 1 1 1;
	setAttr -s 34 ".kot[0:33]"  5 5 2 2 1 2 2 1 
		2 2 2 1 1 1 1 1 1 2 5 2 2 2 2 5 5 
		5 5 1 1 5 5 1 1 1;
	setAttr -s 34 ".kix[1:33]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 34 ".kiy[1:33]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 34 ".kox[4:33]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 1 1 0 
		0 0 0 1 1 0 0 1 1 1;
	setAttr -s 34 ".koy[4:33]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "nurbsCircle2_translateX";
	rename -uid "9B8FFF06-5C4C-9D71-5A40-6DB798C85153";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 0 20 0 30 0 35 0 40 0 50 0 55 0 60 0 70 0
		 75 0 80 0 90 0 110 0 120 0 140 0 170 0 190 0 200 0 205 0 210 0 220 0 225 0 230 0
		 240 0 245 0 250 0 260 0 275 0 280 0 285 0 290 0 295 0 300 0 325 0;
	setAttr -s 34 ".kit[0:33]"  18 1 2 2 1 2 2 1 
		2 2 2 1 1 1 1 1 1 2 18 2 2 2 2 18 18 
		18 18 1 1 18 18 1 1 1;
	setAttr -s 34 ".kot[0:33]"  18 1 2 2 1 2 2 1 
		2 2 2 1 1 1 1 1 1 2 18 2 2 2 2 18 18 
		18 18 1 1 18 18 1 1 1;
	setAttr -s 34 ".kix[1:33]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 34 ".kiy[1:33]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 34 ".kox[1:33]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 34 ".koy[1:33]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "nurbsCircle2_translateY";
	rename -uid "7C665632-7941-5701-DEA1-D7AE0A65F75F";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 0 20 0 30 0 35 0 40 0 50 0 55 0 60 0 70 0
		 75 0 80 0 90 0 110 0 120 0 140 0 170 0 190 0 200 0 205 0 210 0 220 0 225 0 230 0
		 240 0 245 0 250 0 260 0 275 0 280 0 285 0 290 0 295 0 300 0 325 0;
	setAttr -s 34 ".kit[0:33]"  18 1 2 2 1 2 2 1 
		2 2 2 1 1 1 1 1 1 2 18 2 2 2 2 18 18 
		18 18 1 1 18 18 1 1 1;
	setAttr -s 34 ".kot[0:33]"  18 1 2 2 1 2 2 1 
		2 2 2 1 1 1 1 1 1 2 18 2 2 2 2 18 18 
		18 18 1 1 18 18 1 1 1;
	setAttr -s 34 ".kix[1:33]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 34 ".kiy[1:33]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 34 ".kox[1:33]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 34 ".koy[1:33]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "nurbsCircle2_translateZ";
	rename -uid "2B8934F0-A143-9C5B-3129-02AB558AAF4F";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 0 20 0 30 0 35 0 40 0 50 0 55 0 60 0 70 0
		 75 0 80 0 90 0 110 0 120 0 140 0 170 0 190 0 200 0 205 0 210 0 220 0 225 0 230 0
		 240 0 245 0 250 0 260 0 275 0 280 0 285 0 290 0 295 0 300 0 325 0;
	setAttr -s 34 ".kit[0:33]"  18 1 2 2 1 2 2 1 
		2 2 2 1 1 1 1 1 1 2 18 2 2 2 2 18 18 
		18 18 1 1 18 18 1 1 1;
	setAttr -s 34 ".kot[0:33]"  18 1 2 2 1 2 2 1 
		2 2 2 1 1 1 1 1 1 2 18 2 2 2 2 18 18 
		18 18 1 1 18 18 1 1 1;
	setAttr -s 34 ".kix[1:33]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 34 ".kiy[1:33]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 34 ".kox[1:33]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 34 ".koy[1:33]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "nurbsCircle2_rotateX";
	rename -uid "3715767F-9A48-DB97-AD99-A4B763896B3F";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 0 20 0 30 0 35 0 40 0 50 0 55 0 60 0 70 0
		 75 0 80 0 90 0 110 0 120 0 140 0 170 0 190 0 200 0 205 0 210 0 220 0 225 0 230 0
		 240 0 245 0 250 0 260 0 275 0 280 0 285 0 290 0 295 0 300 0 325 0;
	setAttr -s 34 ".kit[0:33]"  18 1 2 2 1 2 2 1 
		2 2 2 1 1 1 1 1 1 2 18 2 2 2 2 18 18 
		18 18 1 1 18 18 1 1 1;
	setAttr -s 34 ".kot[0:33]"  18 1 2 2 1 2 2 1 
		2 2 2 1 1 1 1 1 1 2 18 2 2 2 2 18 18 
		18 18 1 1 18 18 1 1 1;
	setAttr -s 34 ".kix[1:33]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 34 ".kiy[1:33]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 34 ".kox[1:33]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 34 ".koy[1:33]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "nurbsCircle2_rotateY";
	rename -uid "C70D214D-3645-57C7-231A-118CF9FD4C2F";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 0 20 0 30 0 35 0 40 0 50 0 55 0 60 0 70 0
		 75 0 80 0 90 0 110 0 120 0 140 0 170 0 190 0 200 0 205 0 210 0 220 0 225 0 230 0
		 240 0 245 0 250 0 260 0 275 0 280 0 285 0 290 0 295 0 300 0 325 0;
	setAttr -s 34 ".kit[0:33]"  18 1 2 2 1 2 2 1 
		2 2 2 1 1 1 1 1 1 2 18 2 2 2 2 18 18 
		18 18 1 1 18 18 1 1 1;
	setAttr -s 34 ".kot[0:33]"  18 1 2 2 1 2 2 1 
		2 2 2 1 1 1 1 1 1 2 18 2 2 2 2 18 18 
		18 18 1 1 18 18 1 1 1;
	setAttr -s 34 ".kix[1:33]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 34 ".kiy[1:33]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 34 ".kox[1:33]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 34 ".koy[1:33]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "nurbsCircle2_rotateZ";
	rename -uid "59332681-284A-6FDD-6743-208B24BF6732";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 0 20 0 30 0 35 0 40 0 50 0 55 0 60 0 70 0
		 75 0 80 0 90 0 110 0 120 0 140 0 170 0 190 0 200 0 205 0 210 0 220 0 225 0 230 0
		 240 0 245 0 250 0 260 0 275 0 280 0 285 0 290 0 295 0 300 0 325 0;
	setAttr -s 34 ".kit[0:33]"  18 1 2 2 1 2 2 1 
		2 2 2 1 1 1 1 1 1 2 18 2 2 2 2 18 18 
		18 18 1 1 18 18 1 1 1;
	setAttr -s 34 ".kot[0:33]"  18 1 2 2 1 2 2 1 
		2 2 2 1 1 1 1 1 1 2 18 2 2 2 2 18 18 
		18 18 1 1 18 18 1 1 1;
	setAttr -s 34 ".kix[1:33]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 34 ".kiy[1:33]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 34 ".kox[1:33]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 34 ".koy[1:33]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle2_scaleX";
	rename -uid "5DED3B8C-794D-8F09-7072-F084D924AA03";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 1 20 1 30 1 35 1 40 1 50 1 55 1 60 1 70 1
		 75 1 80 1 90 1 110 1 120 1 140 1 170 1 190 1 200 1 205 1 210 1 220 1 225 1 230 1
		 240 1 245 1 250 1 260 1 275 1 280 1 285 1 290 1 295 1 300 1 325 1;
	setAttr -s 34 ".kit[0:33]"  18 1 2 2 1 2 2 1 
		2 2 2 1 1 1 1 1 1 2 18 2 2 2 2 18 18 
		18 18 1 1 18 18 1 1 1;
	setAttr -s 34 ".kot[0:33]"  18 1 2 2 1 2 2 1 
		2 2 2 1 1 1 1 1 1 2 18 2 2 2 2 18 18 
		18 18 1 1 18 18 1 1 1;
	setAttr -s 34 ".kix[1:33]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 34 ".kiy[1:33]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 34 ".kox[1:33]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 34 ".koy[1:33]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle2_scaleY";
	rename -uid "7E4B35D0-B045-35D2-AD29-49B3AE3DB558";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 1 20 1 30 1 35 1 40 1 50 1 55 1 60 1 70 1
		 75 1 80 1 90 1 110 1 120 1 140 1 170 1 190 1 200 1 205 1 210 1 220 1 225 1 230 1
		 240 1 245 1 250 1 260 1 275 1 280 1 285 1 290 1 295 1 300 1 325 1;
	setAttr -s 34 ".kit[0:33]"  18 1 2 2 1 2 2 1 
		2 2 2 1 1 1 1 1 1 2 18 2 2 2 2 18 18 
		18 18 1 1 18 18 1 1 1;
	setAttr -s 34 ".kot[0:33]"  18 1 2 2 1 2 2 1 
		2 2 2 1 1 1 1 1 1 2 18 2 2 2 2 18 18 
		18 18 1 1 18 18 1 1 1;
	setAttr -s 34 ".kix[1:33]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 34 ".kiy[1:33]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 34 ".kox[1:33]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 34 ".koy[1:33]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle2_scaleZ";
	rename -uid "A32AD83B-974D-D5C3-6DA2-1A9B5AD32373";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 1 20 1 30 1 35 1 40 1 50 1 55 1 60 1 70 1
		 75 1 80 1 90 1 110 1 120 1 140 1 170 1 190 1 200 1 205 1 210 1 220 1 225 1 230 1
		 240 1 245 1 250 1 260 1 275 1 280 1 285 1 290 1 295 1 300 1 325 1;
	setAttr -s 34 ".kit[0:33]"  18 1 2 2 1 2 2 1 
		2 2 2 1 1 1 1 1 1 2 18 2 2 2 2 18 18 
		18 18 1 1 18 18 1 1 1;
	setAttr -s 34 ".kot[0:33]"  18 1 2 2 1 2 2 1 
		2 2 2 1 1 1 1 1 1 2 18 2 2 2 2 18 18 
		18 18 1 1 18 18 1 1 1;
	setAttr -s 34 ".kix[1:33]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 34 ".kiy[1:33]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 34 ".kox[1:33]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 34 ".koy[1:33]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle3_visibility";
	rename -uid "63B5F1C2-5C41-D136-A9A4-3082B6C142EC";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 1 20 1 30 1 35 1 40 1 50 1 55 1 60 1 70 1
		 75 1 80 1 90 1 110 1 120 1 140 1 170 1 190 1 200 1 205 1 210 1 220 1 225 1 230 1
		 240 1 245 1 250 1 260 1 275 1 280 1 285 1 290 1 295 1 300 1 325 1;
	setAttr -s 34 ".kit[0:33]"  9 1 2 2 1 2 2 1 
		2 2 2 1 1 1 1 1 1 2 9 2 2 2 2 9 9 
		9 9 1 1 9 9 1 1 1;
	setAttr -s 34 ".kot[0:33]"  5 5 2 2 1 2 2 1 
		2 2 2 1 1 1 1 1 1 2 5 2 2 2 2 5 5 
		5 5 1 1 5 5 1 1 1;
	setAttr -s 34 ".kix[1:33]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 34 ".kiy[1:33]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 34 ".kox[4:33]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 0 1 1 1 1 0 
		0 0 0 1 1 0 0 1 1 1;
	setAttr -s 34 ".koy[4:33]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "nurbsCircle3_translateX";
	rename -uid "3366C1DF-EB4B-A535-6806-41AEB75E6B51";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 0 20 0 30 0 35 0 40 0 50 0 55 0 60 0 70 0
		 75 0 80 0 90 0 110 0 120 0 140 0 170 0 190 0 200 0 205 0 210 0 220 0 225 0 230 0
		 240 0 245 0 250 0 260 0 275 0 280 0 285 0 290 0 295 0 300 0 325 0;
	setAttr -s 34 ".kit[0:33]"  18 1 2 2 1 2 2 1 
		2 2 2 1 1 1 1 1 1 2 18 2 2 2 2 18 18 
		18 18 1 1 18 18 1 1 1;
	setAttr -s 34 ".kot[0:33]"  18 1 2 2 1 2 2 1 
		2 2 2 1 1 1 1 1 1 2 18 2 2 2 2 18 18 
		18 18 1 1 18 18 1 1 1;
	setAttr -s 34 ".kix[1:33]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 34 ".kiy[1:33]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 34 ".kox[1:33]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 34 ".koy[1:33]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "nurbsCircle3_translateY";
	rename -uid "9FF9569D-2D4B-3B31-D203-F7A189CD3BAD";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 0 20 0 30 0 35 0 40 0 50 0 55 0 60 0 70 0
		 75 0 80 0 90 0 110 0 120 0 140 0 170 0 190 0 200 0 205 0 210 0 220 0 225 0 230 0
		 240 0 245 0 250 0 260 0 275 0 280 0 285 0 290 0 295 0 300 0 325 0;
	setAttr -s 34 ".kit[0:33]"  18 1 2 2 1 2 2 1 
		2 2 2 1 1 1 1 1 1 2 18 2 2 2 2 18 18 
		18 18 1 1 18 18 1 1 1;
	setAttr -s 34 ".kot[0:33]"  18 1 2 2 1 2 2 1 
		2 2 2 1 1 1 1 1 1 2 18 2 2 2 2 18 18 
		18 18 1 1 18 18 1 1 1;
	setAttr -s 34 ".kix[1:33]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 34 ".kiy[1:33]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 34 ".kox[1:33]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 34 ".koy[1:33]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "nurbsCircle3_translateZ";
	rename -uid "229E1CA5-6F48-27A6-1A0C-4A8293E8C19D";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 0 20 0 30 0 35 0 40 0 50 0 55 0 60 0 70 0
		 75 0 80 0 90 0 110 0 120 0 140 0 170 0 190 0 200 0 205 0 210 0 220 0 225 0 230 0
		 240 0 245 0 250 0 260 0 275 0 280 0 285 0 290 0 295 0 300 0 325 0;
	setAttr -s 34 ".kit[0:33]"  18 1 2 2 1 2 2 1 
		2 2 2 1 1 1 1 1 1 2 18 2 2 2 2 18 18 
		18 18 1 1 18 18 1 1 1;
	setAttr -s 34 ".kot[0:33]"  18 1 2 2 1 2 2 1 
		2 2 2 1 1 1 1 1 1 2 18 2 2 2 2 18 18 
		18 18 1 1 18 18 1 1 1;
	setAttr -s 34 ".kix[1:33]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 34 ".kiy[1:33]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 34 ".kox[1:33]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 34 ".koy[1:33]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "nurbsCircle3_rotateX";
	rename -uid "BF04AD46-BB48-E4E2-F48A-7F9A86C5847B";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 0 20 0 30 0 35 0 40 0 50 0 55 0 60 0 70 0
		 75 0 80 0 90 0 110 0 120 0 140 0 170 0 190 0 200 0 205 0 210 0 220 0 225 0 230 0
		 240 0 245 0 250 0 260 0 275 0 280 0 285 0 290 0 295 0 300 0 325 0;
	setAttr -s 34 ".kit[0:33]"  18 1 2 2 1 2 2 1 
		2 2 2 1 1 1 1 1 1 2 18 2 2 2 2 18 18 
		18 18 1 1 18 18 1 1 1;
	setAttr -s 34 ".kot[0:33]"  18 1 2 2 1 2 2 1 
		2 2 2 1 1 1 1 1 1 2 18 2 2 2 2 18 18 
		18 18 1 1 18 18 1 1 1;
	setAttr -s 34 ".kix[1:33]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 34 ".kiy[1:33]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 34 ".kox[1:33]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 34 ".koy[1:33]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "nurbsCircle3_rotateY";
	rename -uid "AD61E4C6-E143-A78B-C3A7-30AF584A2C04";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 0 20 0 30 0 35 0 40 0 50 0 55 0 60 0 70 0
		 75 0 80 0 90 0 110 0 120 0 140 0 170 0 190 0 200 0 205 0 210 0 220 0 225 0 230 0
		 240 0 245 0 250 0 260 0 275 0 280 0 285 0 290 0 295 0 300 0 325 0;
	setAttr -s 34 ".kit[0:33]"  18 1 2 2 1 2 2 1 
		2 2 2 1 1 1 1 1 1 2 18 2 2 2 2 18 18 
		18 18 1 1 18 18 1 1 1;
	setAttr -s 34 ".kot[0:33]"  18 1 2 2 1 2 2 1 
		2 2 2 1 1 1 1 1 1 2 18 2 2 2 2 18 18 
		18 18 1 1 18 18 1 1 1;
	setAttr -s 34 ".kix[1:33]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 34 ".kiy[1:33]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 34 ".kox[1:33]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 34 ".koy[1:33]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "nurbsCircle3_rotateZ";
	rename -uid "C907EE11-4648-8B8C-4387-989846851F3E";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 0 20 0 30 0 35 0 40 0 50 0 55 0 60 0 70 0
		 75 0 80 0 90 0 110 0 120 0 140 0 170 0 190 0 200 0 205 0 210 0 220 0 225 0 230 0
		 240 0 245 0 250 0 260 0 275 0 280 0 285 0 290 0 295 0 300 0 325 0;
	setAttr -s 34 ".kit[0:33]"  18 1 2 2 1 2 2 1 
		2 2 2 1 1 1 1 1 1 2 18 2 2 2 2 18 18 
		18 18 1 1 18 18 1 1 1;
	setAttr -s 34 ".kot[0:33]"  18 1 2 2 1 2 2 1 
		2 2 2 1 1 1 1 1 1 2 18 2 2 2 2 18 18 
		18 18 1 1 18 18 1 1 1;
	setAttr -s 34 ".kix[1:33]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 34 ".kiy[1:33]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 34 ".kox[1:33]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 34 ".koy[1:33]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle3_scaleX";
	rename -uid "984113F3-0145-3DBE-0E85-398F2C3C3401";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 1 20 1 30 1 35 1 40 1 50 1 55 1 60 1 70 1
		 75 1 80 1 90 1 110 1 120 1 140 1 170 1 190 1 200 1 205 1 210 1 220 1 225 1 230 1
		 240 1 245 1 250 1 260 1 275 1 280 1 285 1 290 1 295 1 300 1 325 1;
	setAttr -s 34 ".kit[0:33]"  18 1 2 2 1 2 2 1 
		2 2 2 1 1 1 1 1 1 2 18 2 2 2 2 18 18 
		18 18 1 1 18 18 1 1 1;
	setAttr -s 34 ".kot[0:33]"  18 1 2 2 1 2 2 1 
		2 2 2 1 1 1 1 1 1 2 18 2 2 2 2 18 18 
		18 18 1 1 18 18 1 1 1;
	setAttr -s 34 ".kix[1:33]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 34 ".kiy[1:33]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 34 ".kox[1:33]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 34 ".koy[1:33]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle3_scaleY";
	rename -uid "3CAE80A6-DA43-3A91-5012-B0B9D63215DA";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 1 20 1 30 1 35 1 40 1 50 1 55 1 60 1 70 1
		 75 1 80 1 90 1 110 1 120 1 140 1 170 1 190 1 200 1 205 1 210 1 220 1 225 1 230 1
		 240 1 245 1 250 1 260 1 275 1 280 1 285 1 290 1 295 1 300 1 325 1;
	setAttr -s 34 ".kit[0:33]"  18 1 2 2 1 2 2 1 
		2 2 2 1 1 1 1 1 1 2 18 2 2 2 2 18 18 
		18 18 1 1 18 18 1 1 1;
	setAttr -s 34 ".kot[0:33]"  18 1 2 2 1 2 2 1 
		2 2 2 1 1 1 1 1 1 2 18 2 2 2 2 18 18 
		18 18 1 1 18 18 1 1 1;
	setAttr -s 34 ".kix[1:33]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 34 ".kiy[1:33]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 34 ".kox[1:33]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 34 ".koy[1:33]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle3_scaleZ";
	rename -uid "037183C8-1C48-E3AD-ACD3-9DAB9761A404";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 1 20 1 30 1 35 1 40 1 50 1 55 1 60 1 70 1
		 75 1 80 1 90 1 110 1 120 1 140 1 170 1 190 1 200 1 205 1 210 1 220 1 225 1 230 1
		 240 1 245 1 250 1 260 1 275 1 280 1 285 1 290 1 295 1 300 1 325 1;
	setAttr -s 34 ".kit[0:33]"  18 1 2 2 1 2 2 1 
		2 2 2 1 1 1 1 1 1 2 18 2 2 2 2 18 18 
		18 18 1 1 18 18 1 1 1;
	setAttr -s 34 ".kot[0:33]"  18 1 2 2 1 2 2 1 
		2 2 2 1 1 1 1 1 1 2 18 2 2 2 2 18 18 
		18 18 1 1 18 18 1 1 1;
	setAttr -s 34 ".kix[1:33]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 34 ".kiy[1:33]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 34 ".kox[1:33]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 34 ".koy[1:33]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode polyCube -n "polyCube1";
	rename -uid "42326EAA-BC46-099A-8AC7-27AE92BE128B";
	setAttr ".w" 50;
	setAttr ".h" 200;
	setAttr ".d" 50;
	setAttr ".cuv" 4;
createNode displayLayer -n "Guides";
	rename -uid "3A322C0B-3D44-5DA2-05A5-7590D8C4BC73";
	setAttr ".dt" 2;
	setAttr ".do" 1;
createNode makeNurbCircle -n "makeNurbCircle1";
	rename -uid "70703D2C-9546-252E-E81F-FFB72B804981";
	setAttr ".nr" -type "double3" 0 1 0 ;
	setAttr ".r" 26.551976644146329;
createNode animCurveTU -n "nurbsCircle18_visibility";
	rename -uid "66C72AE5-584F-4AB6-AA13-DD9B4286759A";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 1 30 1 50 1 70 1 75 1 120 1 140 1 170 1
		 190 1 200 1 205 1 210 1 220 1 225 1 230 1 240 1 245 1 250 1 260 1 275 1 280 1 285 1
		 290 1 295 1 300 1 325 1;
	setAttr -s 26 ".kit[0:25]"  9 9 9 2 2 1 1 1 
		1 2 9 2 2 2 2 9 9 9 9 1 1 9 9 1 1 
		1;
	setAttr -s 26 ".kot[0:25]"  5 5 5 2 2 5 5 1 
		1 2 5 2 2 2 2 5 5 5 5 1 1 5 5 1 1 
		1;
	setAttr -s 26 ".kix[5:25]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1;
	setAttr -s 26 ".kiy[5:25]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0;
	setAttr -s 26 ".kox[7:25]"  1 1 1 0 1 1 1 1 0 0 0 0 1 1 0 0 1 1 1;
	setAttr -s 26 ".koy[7:25]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "nurbsCircle18_translateX";
	rename -uid "D117DE35-CC4D-1D00-4A07-E0A3006D85F7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 -26.366323281637758 30 -26.366323281637758
		 50 -26.366323281637758 70 -26.366323281637758 75 -26.366323281637758 120 -26.366323281637758
		 140 -26.366323281637758 170 -26.366323281637758 190 -26.366323281637758 200 -26.366323281637758
		 205 -26.366323281637758 210 -26.366323281637758 220 -26.366323281637758 225 -26.366323281637758
		 230 -26.366323281637758 240 -26.366323281637758 245 -26.366323281637758 250 -26.366323281637758
		 260 -26.366323281637758 275 -26.366323281637758 280 -26.366323281637758 285 -26.366323281637758
		 290 -26.366323281637758 295 -26.366323281637758 300 -26.366323281637758 325 -26.366323281637758;
	setAttr -s 26 ".kit[3:25]"  2 2 1 1 1 1 2 18 
		2 2 2 2 18 18 18 18 1 1 18 18 1 1 1;
	setAttr -s 26 ".kot[3:25]"  2 2 1 1 1 1 2 18 
		2 2 2 2 18 18 18 18 1 1 18 18 1 1 1;
	setAttr -s 26 ".kix[5:25]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1;
	setAttr -s 26 ".kiy[5:25]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0;
	setAttr -s 26 ".kox[5:25]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1;
	setAttr -s 26 ".koy[5:25]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0;
createNode animCurveTL -n "nurbsCircle18_translateY";
	rename -uid "B43A7741-3146-4E2F-F4CF-5E9403BE7BFB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 2.8421709430404007e-14 30 2.8421709430404007e-14
		 50 2.8421709430404007e-14 70 2.8421709430404007e-14 75 2.8421709430404007e-14 120 2.8421709430404007e-14
		 140 2.8421709430404007e-14 170 0 190 0 200 0 205 0 210 0 220 0 225 0 230 0 240 0
		 245 0 250 0 260 0 275 0 280 0 285 0 290 0 295 0 300 0 325 0;
	setAttr -s 26 ".kit[3:25]"  2 2 1 1 1 1 2 18 
		2 2 2 2 18 18 18 18 1 1 18 18 1 1 1;
	setAttr -s 26 ".kot[3:25]"  2 2 1 1 1 1 2 18 
		2 2 2 2 18 18 18 18 1 1 18 18 1 1 1;
	setAttr -s 26 ".kix[5:25]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1;
	setAttr -s 26 ".kiy[5:25]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0;
	setAttr -s 26 ".kox[5:25]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1;
	setAttr -s 26 ".koy[5:25]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0;
createNode animCurveTL -n "nurbsCircle18_translateZ";
	rename -uid "5DADEC36-984B-C41C-CA28-2A91EB896608";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 -21.606882048051403 30 -21.606882048051403
		 50 -21.606882048051403 70 -21.606882048051403 75 -21.606882048051403 120 -21.606882048051403
		 140 -21.606882048051403 170 -21.606882048051403 190 -21.606882048051403 200 -21.606882048051403
		 205 -21.606882048051403 210 -21.606882048051403 220 -21.606882048051403 225 -21.606882048051403
		 230 -21.606882048051403 240 -21.606882048051403 245 -21.606882048051403 250 -21.606882048051403
		 260 -21.606882048051403 275 -21.606882048051403 280 -21.606882048051403 285 -21.606882048051403
		 290 -21.606882048051403 295 -21.606882048051403 300 -21.606882048051403 325 -21.606882048051403;
	setAttr -s 26 ".kit[3:25]"  2 2 1 1 1 1 2 18 
		2 2 2 2 18 18 18 18 1 1 18 18 1 1 1;
	setAttr -s 26 ".kot[3:25]"  2 2 1 1 1 1 2 18 
		2 2 2 2 18 18 18 18 1 1 18 18 1 1 1;
	setAttr -s 26 ".kix[5:25]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1;
	setAttr -s 26 ".kiy[5:25]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0;
	setAttr -s 26 ".kox[5:25]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1;
	setAttr -s 26 ".koy[5:25]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0;
createNode animCurveTA -n "nurbsCircle18_rotateX";
	rename -uid "A08A7C43-7140-420C-FCA7-BE909515EE8F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 0 30 0 50 0 70 0 75 0 120 0 140 0 170 0
		 190 0 200 0 205 0 210 0 220 0 225 0 230 0 240 0 245 0 250 0 260 0 275 0 280 0 285 0
		 290 0 295 0 300 0 325 0;
	setAttr -s 26 ".kit[3:25]"  2 2 1 1 1 1 2 18 
		2 2 2 2 18 18 18 18 1 1 18 18 1 1 1;
	setAttr -s 26 ".kot[3:25]"  2 2 1 1 1 1 2 18 
		2 2 2 2 18 18 18 18 1 1 18 18 1 1 1;
	setAttr -s 26 ".kix[5:25]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1;
	setAttr -s 26 ".kiy[5:25]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0;
	setAttr -s 26 ".kox[5:25]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1;
	setAttr -s 26 ".koy[5:25]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0;
createNode animCurveTA -n "nurbsCircle18_rotateY";
	rename -uid "B1AEA508-3F43-FB3A-0F10-9BBDED850BC5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 -48.640487878130692 30 -48.640487878130692
		 50 -48.640487878130692 70 -48.640487878130692 75 -48.640487878130692 120 -48.640487878130692
		 140 -48.640487878130692 170 -48.640487878130692 190 -48.640487878130692 200 -48.640487878130692
		 205 -48.640487878130692 210 -48.640487878130692 220 -48.640487878130692 225 -48.640487878130692
		 230 -48.640487878130692 240 -48.640487878130692 245 -48.640487878130692 250 -48.640487878130692
		 260 -48.640487878130692 275 -48.640487878130692 280 -48.640487878130692 285 -48.640487878130692
		 290 -48.640487878130692 295 -48.640487878130692 300 -48.640487878130692 325 -48.640487878130692;
	setAttr -s 26 ".kit[3:25]"  2 2 1 1 1 1 2 18 
		2 2 2 2 18 18 18 18 1 1 18 18 1 1 1;
	setAttr -s 26 ".kot[3:25]"  2 2 1 1 1 1 2 18 
		2 2 2 2 18 18 18 18 1 1 18 18 1 1 1;
	setAttr -s 26 ".kix[5:25]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1;
	setAttr -s 26 ".kiy[5:25]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0;
	setAttr -s 26 ".kox[5:25]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1;
	setAttr -s 26 ".koy[5:25]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0;
createNode animCurveTA -n "nurbsCircle18_rotateZ";
	rename -uid "938BDEF7-944C-018D-C5F1-52874D83CC5B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 0 30 0 50 0 70 0 75 0 120 0 140 0 170 0
		 190 0 200 0 205 0 210 0 220 0 225 0 230 0 240 0 245 0 250 0 260 0 275 0 280 0 285 0
		 290 0 295 0 300 0 325 0;
	setAttr -s 26 ".kit[3:25]"  2 2 1 1 1 1 2 18 
		2 2 2 2 18 18 18 18 1 1 18 18 1 1 1;
	setAttr -s 26 ".kot[3:25]"  2 2 1 1 1 1 2 18 
		2 2 2 2 18 18 18 18 1 1 18 18 1 1 1;
	setAttr -s 26 ".kix[5:25]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1;
	setAttr -s 26 ".kiy[5:25]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0;
	setAttr -s 26 ".kox[5:25]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1;
	setAttr -s 26 ".koy[5:25]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0;
createNode animCurveTU -n "nurbsCircle18_scaleX";
	rename -uid "30A5E610-514E-E4C0-5D3C-9CA6B1D998DB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 0.99999999999999989 30 0.99999999999999989
		 50 0.99999999999999989 70 0.99999999999999989 75 0.99999999999999989 120 0.99999999999999989
		 140 0.99999999999999989 170 0.99999999999999989 190 0.99999999999999989 200 0.99999999999999989
		 205 0.99999999999999989 210 0.99999999999999989 220 0.99999999999999989 225 0.99999999999999989
		 230 0.99999999999999989 240 0.99999999999999989 245 0.99999999999999989 250 0.99999999999999989
		 260 0.99999999999999989 275 0.99999999999999989 280 0.99999999999999989 285 0.99999999999999989
		 290 0.99999999999999989 295 0.99999999999999989 300 0.99999999999999989 325 0.99999999999999989;
	setAttr -s 26 ".kit[3:25]"  2 2 1 1 1 1 2 18 
		2 2 2 2 18 18 18 18 1 1 18 18 1 1 1;
	setAttr -s 26 ".kot[3:25]"  2 2 1 1 1 1 2 18 
		2 2 2 2 18 18 18 18 1 1 18 18 1 1 1;
	setAttr -s 26 ".kix[5:25]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1;
	setAttr -s 26 ".kiy[5:25]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0;
	setAttr -s 26 ".kox[5:25]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1;
	setAttr -s 26 ".koy[5:25]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0;
createNode animCurveTU -n "nurbsCircle18_scaleY";
	rename -uid "1B01A5CC-774D-540E-194E-2EB2C68DAC8F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 1 30 1 50 1 70 1 75 1 120 1 140 1 170 1
		 190 1 200 1 205 1 210 1 220 1 225 1 230 1 240 1 245 1 250 1 260 1 275 1 280 1 285 1
		 290 1 295 1 300 1 325 1;
	setAttr -s 26 ".kit[3:25]"  2 2 1 1 1 1 2 18 
		2 2 2 2 18 18 18 18 1 1 18 18 1 1 1;
	setAttr -s 26 ".kot[3:25]"  2 2 1 1 1 1 2 18 
		2 2 2 2 18 18 18 18 1 1 18 18 1 1 1;
	setAttr -s 26 ".kix[5:25]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1;
	setAttr -s 26 ".kiy[5:25]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0;
	setAttr -s 26 ".kox[5:25]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1;
	setAttr -s 26 ".koy[5:25]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0;
createNode animCurveTU -n "nurbsCircle18_scaleZ";
	rename -uid "8FB75EB4-8D48-91B9-ACFE-ADBEBD97CF96";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 0.99999999999999989 30 0.99999999999999989
		 50 0.99999999999999989 70 0.99999999999999989 75 0.99999999999999989 120 0.99999999999999989
		 140 0.99999999999999989 170 0.99999999999999989 190 0.99999999999999989 200 0.99999999999999989
		 205 0.99999999999999989 210 0.99999999999999989 220 0.99999999999999989 225 0.99999999999999989
		 230 0.99999999999999989 240 0.99999999999999989 245 0.99999999999999989 250 0.99999999999999989
		 260 0.99999999999999989 275 0.99999999999999989 280 0.99999999999999989 285 0.99999999999999989
		 290 0.99999999999999989 295 0.99999999999999989 300 0.99999999999999989 325 0.99999999999999989;
	setAttr -s 26 ".kit[3:25]"  2 2 1 1 1 1 2 18 
		2 2 2 2 18 18 18 18 1 1 18 18 1 1 1;
	setAttr -s 26 ".kot[3:25]"  2 2 1 1 1 1 2 18 
		2 2 2 2 18 18 18 18 1 1 18 18 1 1 1;
	setAttr -s 26 ".kix[5:25]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1;
	setAttr -s 26 ".kiy[5:25]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0;
	setAttr -s 26 ".kox[5:25]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1;
	setAttr -s 26 ".koy[5:25]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0;
createNode animCurveTL -n "nurbsCircle18_translateX1";
	rename -uid "AAF6A67B-A147-C22E-331C-E89D5F2A78AA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  0 0 170 0 190 0 200 0 205 0 210 0 220 0
		 225 0 230 0 240 0 245 0 250 0 260 0 275 0 280 0 285 0 290 0 295 0 300 0 325 0;
	setAttr -s 20 ".kit[1:19]"  1 1 2 18 2 2 2 2 
		18 18 18 18 1 1 18 18 1 1 1;
	setAttr -s 20 ".kot[1:19]"  1 1 2 18 2 2 2 2 
		18 18 18 18 1 1 18 18 1 1 1;
	setAttr -s 20 ".kix[1:19]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 20 ".kiy[1:19]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 20 ".kox[1:19]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 20 ".koy[1:19]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "nurbsCircle18_translateY1";
	rename -uid "D9D9C7F8-624B-91E7-13DF-BCA9DFA93C1D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  0 0 170 0 190 0 200 0 205 0 210 0 220 0
		 225 0 230 0 240 0 245 0 250 0 260 0 275 0 280 0 285 0 290 0 295 0 300 0 325 0;
	setAttr -s 20 ".kit[1:19]"  1 1 2 18 2 2 2 2 
		18 18 18 18 1 1 18 18 1 1 1;
	setAttr -s 20 ".kot[1:19]"  1 1 2 18 2 2 2 2 
		18 18 18 18 1 1 18 18 1 1 1;
	setAttr -s 20 ".kix[1:19]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 20 ".kiy[1:19]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 20 ".kox[1:19]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 20 ".koy[1:19]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "nurbsCircle18_translateZ1";
	rename -uid "9C761284-A34A-05D9-FD7A-C99C626863A5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  0 0 170 0 190 0 200 0 205 0 210 0 220 0
		 225 0 230 0 240 0 245 0 250 0 260 0 275 0 280 0 285 0 290 0 295 0 300 0 325 0;
	setAttr -s 20 ".kit[1:19]"  1 1 2 18 2 2 2 2 
		18 18 18 18 1 1 18 18 1 1 1;
	setAttr -s 20 ".kot[1:19]"  1 1 2 18 2 2 2 2 
		18 18 18 18 1 1 18 18 1 1 1;
	setAttr -s 20 ".kix[1:19]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 20 ".kiy[1:19]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 20 ".kox[1:19]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 20 ".koy[1:19]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle18_visibility1";
	rename -uid "774F5F6F-AF4B-616B-F3D6-DD89619D5A2A";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  0 1 170 1 190 1 200 1 205 1 210 1 220 1
		 225 1 230 1 240 1 245 1 250 1 260 1 275 1 280 1 285 1 290 1 295 1 300 1 325 1;
	setAttr -s 20 ".kit[0:19]"  9 1 1 2 9 2 2 2 
		2 9 9 9 9 1 1 9 9 1 1 1;
	setAttr -s 20 ".kot[0:19]"  5 1 1 2 5 2 2 2 
		2 5 5 5 5 1 1 5 5 1 1 1;
	setAttr -s 20 ".kix[1:19]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 20 ".kiy[1:19]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 20 ".kox[1:19]"  1 1 1 0 1 1 1 1 0 0 0 0 1 1 0 0 1 1 1;
	setAttr -s 20 ".koy[1:19]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "nurbsCircle18_rotateX1";
	rename -uid "5EFA1E8C-FB4F-F3EC-A959-EFAD37507F40";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  0 0 170 0 190 0 200 0 205 0 210 0 220 0
		 225 0 230 0 240 0 245 0 250 0 260 0 275 0 280 0 285 0 290 0 295 0 300 0 325 0;
	setAttr -s 20 ".kit[1:19]"  1 1 2 18 2 2 2 2 
		18 18 18 18 1 1 18 18 1 1 1;
	setAttr -s 20 ".kot[1:19]"  1 1 2 18 2 2 2 2 
		18 18 18 18 1 1 18 18 1 1 1;
	setAttr -s 20 ".kix[1:19]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 20 ".kiy[1:19]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 20 ".kox[1:19]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 20 ".koy[1:19]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "nurbsCircle18_rotateY1";
	rename -uid "716C5962-674B-18B1-F4DC-169EAB76A50D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  0 0 170 0 190 0 200 0 205 0 210 0 220 0
		 225 0 230 0 240 0 245 0 250 0 260 0 275 0 280 0 285 0 290 0 295 0 300 0 325 0;
	setAttr -s 20 ".kit[1:19]"  1 1 2 18 2 2 2 2 
		18 18 18 18 1 1 18 18 1 1 1;
	setAttr -s 20 ".kot[1:19]"  1 1 2 18 2 2 2 2 
		18 18 18 18 1 1 18 18 1 1 1;
	setAttr -s 20 ".kix[1:19]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 20 ".kiy[1:19]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 20 ".kox[1:19]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 20 ".koy[1:19]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "nurbsCircle18_rotateZ1";
	rename -uid "943C9493-8C41-3CF6-EB8B-838C02D64625";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  0 0 170 0 190 0 200 0 205 0 210 0 220 0
		 225 0 230 0 240 0 245 0 250 0 260 0 275 0 280 0 285 0 290 0 295 0 300 0 325 0;
	setAttr -s 20 ".kit[1:19]"  1 1 2 18 2 2 2 2 
		18 18 18 18 1 1 18 18 1 1 1;
	setAttr -s 20 ".kot[1:19]"  1 1 2 18 2 2 2 2 
		18 18 18 18 1 1 18 18 1 1 1;
	setAttr -s 20 ".kix[1:19]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 20 ".kiy[1:19]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 20 ".kox[1:19]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 20 ".koy[1:19]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle18_scaleX1";
	rename -uid "E3CFC602-D74E-4D3D-9131-6F836E3E0BD8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  0 1 170 1 190 1 200 1 205 1 210 1 220 1
		 225 1 230 1 240 1 245 1 250 1 260 1 275 1 280 1 285 1 290 1 295 1 300 1 325 1;
	setAttr -s 20 ".kit[1:19]"  1 1 2 18 2 2 2 2 
		18 18 18 18 1 1 18 18 1 1 1;
	setAttr -s 20 ".kot[1:19]"  1 1 2 18 2 2 2 2 
		18 18 18 18 1 1 18 18 1 1 1;
	setAttr -s 20 ".kix[1:19]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 20 ".kiy[1:19]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 20 ".kox[1:19]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 20 ".koy[1:19]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle18_scaleY1";
	rename -uid "79A268DD-EF47-460C-07D7-119649D3D04F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  0 1 170 1 190 1 200 1 205 1 210 1 220 1
		 225 1 230 1 240 1 245 1 250 1 260 1 275 1 280 1 285 1 290 1 295 1 300 1 325 1;
	setAttr -s 20 ".kit[1:19]"  1 1 2 18 2 2 2 2 
		18 18 18 18 1 1 18 18 1 1 1;
	setAttr -s 20 ".kot[1:19]"  1 1 2 18 2 2 2 2 
		18 18 18 18 1 1 18 18 1 1 1;
	setAttr -s 20 ".kix[1:19]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 20 ".kiy[1:19]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 20 ".kox[1:19]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 20 ".koy[1:19]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle18_scaleZ1";
	rename -uid "18D84DD8-6D48-C87F-0A02-78868E8BDB05";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  0 1 170 1 190 1 200 1 205 1 210 1 220 1
		 225 1 230 1 240 1 245 1 250 1 260 1 275 1 280 1 285 1 290 1 295 1 300 1 325 1;
	setAttr -s 20 ".kit[1:19]"  1 1 2 18 2 2 2 2 
		18 18 18 18 1 1 18 18 1 1 1;
	setAttr -s 20 ".kot[1:19]"  1 1 2 18 2 2 2 2 
		18 18 18 18 1 1 18 18 1 1 1;
	setAttr -s 20 ".kix[1:19]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 20 ".kiy[1:19]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 20 ".kox[1:19]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 20 ".koy[1:19]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "AssaultRifle_visibility";
	rename -uid "C96E10CA-4C4C-07AA-26D8-198487C708AF";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  169 1 170 0;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTU -n "MagPistol_visibility";
	rename -uid "2430D40F-3C46-ED78-3E7A-378FB88ECE00";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  169 0 170 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
select -ne :time1;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".o" 190;
	setAttr -av ".unw" 190;
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
	setAttr -s 6 ".dsm";
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
	setAttr -s 4 ".sol";
connectAttr "MagPistol_visibility.o" "SoldierRN.phl[2]";
connectAttr "RootMotion_Control_translateX.o" "SoldierRN.phl[3]";
connectAttr "RootMotion_Control_translateY.o" "SoldierRN.phl[4]";
connectAttr "RootMotion_Control_translateZ.o" "SoldierRN.phl[5]";
connectAttr "RootMotion_Control_rotateX.o" "SoldierRN.phl[6]";
connectAttr "RootMotion_Control_rotateY.o" "SoldierRN.phl[7]";
connectAttr "RootMotion_Control_rotateZ.o" "SoldierRN.phl[8]";
connectAttr "RootMotion_Control_scaleX.o" "SoldierRN.phl[9]";
connectAttr "RootMotion_Control_scaleY.o" "SoldierRN.phl[10]";
connectAttr "RootMotion_Control_scaleZ.o" "SoldierRN.phl[11]";
connectAttr "RootMotion_Control_visibility.o" "SoldierRN.phl[12]";
connectAttr "arrow_visibility.o" "SoldierRN.phl[13]";
connectAttr "arrow_translateX.o" "SoldierRN.phl[14]";
connectAttr "arrow_translateY.o" "SoldierRN.phl[15]";
connectAttr "arrow_translateZ.o" "SoldierRN.phl[16]";
connectAttr "arrow_rotateX.o" "SoldierRN.phl[17]";
connectAttr "arrow_rotateY.o" "SoldierRN.phl[18]";
connectAttr "arrow_rotateZ.o" "SoldierRN.phl[19]";
connectAttr "arrow_scaleX.o" "SoldierRN.phl[20]";
connectAttr "arrow_scaleY.o" "SoldierRN.phl[21]";
connectAttr "arrow_scaleZ.o" "SoldierRN.phl[22]";
connectAttr "arrow1_visibility.o" "SoldierRN.phl[23]";
connectAttr "arrow1_translateX.o" "SoldierRN.phl[24]";
connectAttr "arrow1_translateY.o" "SoldierRN.phl[25]";
connectAttr "arrow1_translateZ.o" "SoldierRN.phl[26]";
connectAttr "arrow1_rotateX.o" "SoldierRN.phl[27]";
connectAttr "arrow1_rotateY.o" "SoldierRN.phl[28]";
connectAttr "arrow1_rotateZ.o" "SoldierRN.phl[29]";
connectAttr "arrow1_scaleX.o" "SoldierRN.phl[30]";
connectAttr "arrow1_scaleY.o" "SoldierRN.phl[31]";
connectAttr "arrow1_scaleZ.o" "SoldierRN.phl[32]";
connectAttr "nurbsCircle14_rotateX.o" "SoldierRN.phl[33]";
connectAttr "nurbsCircle14_rotateY.o" "SoldierRN.phl[34]";
connectAttr "nurbsCircle14_rotateZ.o" "SoldierRN.phl[35]";
connectAttr "nurbsCircle14_visibility.o" "SoldierRN.phl[36]";
connectAttr "nurbsCircle14_translateX.o" "SoldierRN.phl[37]";
connectAttr "nurbsCircle14_translateY.o" "SoldierRN.phl[38]";
connectAttr "nurbsCircle14_translateZ.o" "SoldierRN.phl[39]";
connectAttr "nurbsCircle14_scaleX.o" "SoldierRN.phl[40]";
connectAttr "nurbsCircle14_scaleY.o" "SoldierRN.phl[41]";
connectAttr "nurbsCircle14_scaleZ.o" "SoldierRN.phl[42]";
connectAttr "nurbsCircle15_rotateX.o" "SoldierRN.phl[43]";
connectAttr "nurbsCircle15_rotateY.o" "SoldierRN.phl[44]";
connectAttr "nurbsCircle15_rotateZ.o" "SoldierRN.phl[45]";
connectAttr "nurbsCircle15_visibility.o" "SoldierRN.phl[46]";
connectAttr "nurbsCircle15_translateX.o" "SoldierRN.phl[47]";
connectAttr "nurbsCircle15_translateY.o" "SoldierRN.phl[48]";
connectAttr "nurbsCircle15_translateZ.o" "SoldierRN.phl[49]";
connectAttr "nurbsCircle15_scaleX.o" "SoldierRN.phl[50]";
connectAttr "nurbsCircle15_scaleY.o" "SoldierRN.phl[51]";
connectAttr "nurbsCircle15_scaleZ.o" "SoldierRN.phl[52]";
connectAttr "nurbsCircle16_translateX.o" "SoldierRN.phl[53]";
connectAttr "nurbsCircle16_translateY.o" "SoldierRN.phl[54]";
connectAttr "nurbsCircle16_translateZ.o" "SoldierRN.phl[55]";
connectAttr "nurbsCircle16_visibility.o" "SoldierRN.phl[56]";
connectAttr "nurbsCircle16_rotateX.o" "SoldierRN.phl[57]";
connectAttr "nurbsCircle16_rotateY.o" "SoldierRN.phl[58]";
connectAttr "nurbsCircle16_rotateZ.o" "SoldierRN.phl[59]";
connectAttr "nurbsCircle16_scaleX.o" "SoldierRN.phl[60]";
connectAttr "nurbsCircle16_scaleY.o" "SoldierRN.phl[61]";
connectAttr "nurbsCircle16_scaleZ.o" "SoldierRN.phl[62]";
connectAttr "nurbsCircle12_Grip.o" "SoldierRN.phl[63]";
connectAttr "nurbsCircle12_rotateX.o" "SoldierRN.phl[64]";
connectAttr "nurbsCircle12_rotateY.o" "SoldierRN.phl[65]";
connectAttr "nurbsCircle12_rotateZ.o" "SoldierRN.phl[66]";
connectAttr "nurbsCircle12_translateX.o" "SoldierRN.phl[67]";
connectAttr "nurbsCircle12_translateY.o" "SoldierRN.phl[68]";
connectAttr "nurbsCircle12_translateZ.o" "SoldierRN.phl[69]";
connectAttr "nurbsCircle12_visibility.o" "SoldierRN.phl[70]";
connectAttr "nurbsCircle12_scaleX.o" "SoldierRN.phl[71]";
connectAttr "nurbsCircle12_scaleY.o" "SoldierRN.phl[72]";
connectAttr "nurbsCircle12_scaleZ.o" "SoldierRN.phl[73]";
connectAttr "nurbsCircle13_translateX.o" "SoldierRN.phl[74]";
connectAttr "nurbsCircle13_translateY.o" "SoldierRN.phl[75]";
connectAttr "nurbsCircle13_translateZ.o" "SoldierRN.phl[76]";
connectAttr "nurbsCircle13_visibility.o" "SoldierRN.phl[77]";
connectAttr "nurbsCircle13_rotateX.o" "SoldierRN.phl[78]";
connectAttr "nurbsCircle13_rotateY.o" "SoldierRN.phl[79]";
connectAttr "nurbsCircle13_rotateZ.o" "SoldierRN.phl[80]";
connectAttr "nurbsCircle13_scaleX.o" "SoldierRN.phl[81]";
connectAttr "nurbsCircle13_scaleY.o" "SoldierRN.phl[82]";
connectAttr "nurbsCircle13_scaleZ.o" "SoldierRN.phl[83]";
connectAttr "nurbsCircle10_Grip.o" "SoldierRN.phl[84]";
connectAttr "nurbsCircle10_rotateX.o" "SoldierRN.phl[85]";
connectAttr "nurbsCircle10_rotateY.o" "SoldierRN.phl[86]";
connectAttr "nurbsCircle10_rotateZ.o" "SoldierRN.phl[87]";
connectAttr "nurbsCircle10_translateX.o" "SoldierRN.phl[88]";
connectAttr "nurbsCircle10_translateY.o" "SoldierRN.phl[89]";
connectAttr "nurbsCircle10_translateZ.o" "SoldierRN.phl[90]";
connectAttr "nurbsCircle10_visibility.o" "SoldierRN.phl[91]";
connectAttr "nurbsCircle10_scaleX.o" "SoldierRN.phl[92]";
connectAttr "nurbsCircle10_scaleY.o" "SoldierRN.phl[93]";
connectAttr "nurbsCircle10_scaleZ.o" "SoldierRN.phl[94]";
connectAttr "nurbsCircle11_translateX.o" "SoldierRN.phl[95]";
connectAttr "nurbsCircle11_translateY.o" "SoldierRN.phl[96]";
connectAttr "nurbsCircle11_translateZ.o" "SoldierRN.phl[97]";
connectAttr "nurbsCircle11_visibility.o" "SoldierRN.phl[98]";
connectAttr "nurbsCircle11_rotateX.o" "SoldierRN.phl[99]";
connectAttr "nurbsCircle11_rotateY.o" "SoldierRN.phl[100]";
connectAttr "nurbsCircle11_rotateZ.o" "SoldierRN.phl[101]";
connectAttr "nurbsCircle11_scaleX.o" "SoldierRN.phl[102]";
connectAttr "nurbsCircle11_scaleY.o" "SoldierRN.phl[103]";
connectAttr "nurbsCircle11_scaleZ.o" "SoldierRN.phl[104]";
connectAttr "nurbsCircle4_translateX.o" "SoldierRN.phl[105]";
connectAttr "nurbsCircle4_translateY.o" "SoldierRN.phl[106]";
connectAttr "nurbsCircle4_translateZ.o" "SoldierRN.phl[107]";
connectAttr "nurbsCircle4_rotateX.o" "SoldierRN.phl[108]";
connectAttr "nurbsCircle4_rotateY.o" "SoldierRN.phl[109]";
connectAttr "nurbsCircle4_rotateZ.o" "SoldierRN.phl[110]";
connectAttr "nurbsCircle4_scaleX.o" "SoldierRN.phl[111]";
connectAttr "nurbsCircle4_scaleY.o" "SoldierRN.phl[112]";
connectAttr "nurbsCircle4_scaleZ.o" "SoldierRN.phl[113]";
connectAttr "nurbsCircle4_visibility.o" "SoldierRN.phl[114]";
connectAttr "nurbsCircle5_rotateX.o" "SoldierRN.phl[115]";
connectAttr "nurbsCircle5_rotateY.o" "SoldierRN.phl[116]";
connectAttr "nurbsCircle5_rotateZ.o" "SoldierRN.phl[117]";
connectAttr "nurbsCircle5_visibility.o" "SoldierRN.phl[118]";
connectAttr "nurbsCircle5_translateX.o" "SoldierRN.phl[119]";
connectAttr "nurbsCircle5_translateY.o" "SoldierRN.phl[120]";
connectAttr "nurbsCircle5_translateZ.o" "SoldierRN.phl[121]";
connectAttr "nurbsCircle5_scaleX.o" "SoldierRN.phl[122]";
connectAttr "nurbsCircle5_scaleY.o" "SoldierRN.phl[123]";
connectAttr "nurbsCircle5_scaleZ.o" "SoldierRN.phl[124]";
connectAttr "nurbsCircle6_rotateX.o" "SoldierRN.phl[125]";
connectAttr "nurbsCircle6_rotateY.o" "SoldierRN.phl[126]";
connectAttr "nurbsCircle6_rotateZ.o" "SoldierRN.phl[127]";
connectAttr "nurbsCircle6_visibility.o" "SoldierRN.phl[128]";
connectAttr "nurbsCircle6_translateX.o" "SoldierRN.phl[129]";
connectAttr "nurbsCircle6_translateY.o" "SoldierRN.phl[130]";
connectAttr "nurbsCircle6_translateZ.o" "SoldierRN.phl[131]";
connectAttr "nurbsCircle6_scaleX.o" "SoldierRN.phl[132]";
connectAttr "nurbsCircle6_scaleY.o" "SoldierRN.phl[133]";
connectAttr "nurbsCircle6_scaleZ.o" "SoldierRN.phl[134]";
connectAttr "nurbsCircle9_rotateX.o" "SoldierRN.phl[135]";
connectAttr "nurbsCircle9_rotateY.o" "SoldierRN.phl[136]";
connectAttr "nurbsCircle9_rotateZ.o" "SoldierRN.phl[137]";
connectAttr "nurbsCircle9_visibility.o" "SoldierRN.phl[138]";
connectAttr "nurbsCircle9_translateX.o" "SoldierRN.phl[139]";
connectAttr "nurbsCircle9_translateY.o" "SoldierRN.phl[140]";
connectAttr "nurbsCircle9_translateZ.o" "SoldierRN.phl[141]";
connectAttr "nurbsCircle9_scaleX.o" "SoldierRN.phl[142]";
connectAttr "nurbsCircle9_scaleY.o" "SoldierRN.phl[143]";
connectAttr "nurbsCircle9_scaleZ.o" "SoldierRN.phl[144]";
connectAttr "nurbsCircle8_rotateX.o" "SoldierRN.phl[145]";
connectAttr "nurbsCircle8_rotateY.o" "SoldierRN.phl[146]";
connectAttr "nurbsCircle8_rotateZ.o" "SoldierRN.phl[147]";
connectAttr "nurbsCircle8_visibility.o" "SoldierRN.phl[148]";
connectAttr "nurbsCircle8_translateX.o" "SoldierRN.phl[149]";
connectAttr "nurbsCircle8_translateY.o" "SoldierRN.phl[150]";
connectAttr "nurbsCircle8_translateZ.o" "SoldierRN.phl[151]";
connectAttr "nurbsCircle8_scaleX.o" "SoldierRN.phl[152]";
connectAttr "nurbsCircle8_scaleY.o" "SoldierRN.phl[153]";
connectAttr "nurbsCircle8_scaleZ.o" "SoldierRN.phl[154]";
connectAttr "nurbsCircle7_rotateX.o" "SoldierRN.phl[155]";
connectAttr "nurbsCircle7_rotateY.o" "SoldierRN.phl[156]";
connectAttr "nurbsCircle7_rotateZ.o" "SoldierRN.phl[157]";
connectAttr "nurbsCircle7_visibility.o" "SoldierRN.phl[158]";
connectAttr "nurbsCircle7_translateX.o" "SoldierRN.phl[159]";
connectAttr "nurbsCircle7_translateY.o" "SoldierRN.phl[160]";
connectAttr "nurbsCircle7_translateZ.o" "SoldierRN.phl[161]";
connectAttr "nurbsCircle7_scaleX.o" "SoldierRN.phl[162]";
connectAttr "nurbsCircle7_scaleY.o" "SoldierRN.phl[163]";
connectAttr "nurbsCircle7_scaleZ.o" "SoldierRN.phl[164]";
connectAttr "nurbsCircle18_translateX1.o" "SoldierRN.phl[165]";
connectAttr "nurbsCircle18_translateY1.o" "SoldierRN.phl[166]";
connectAttr "nurbsCircle18_translateZ1.o" "SoldierRN.phl[167]";
connectAttr "nurbsCircle18_rotateX1.o" "SoldierRN.phl[168]";
connectAttr "nurbsCircle18_rotateY1.o" "SoldierRN.phl[169]";
connectAttr "nurbsCircle18_rotateZ1.o" "SoldierRN.phl[170]";
connectAttr "nurbsCircle18_scaleX1.o" "SoldierRN.phl[171]";
connectAttr "nurbsCircle18_scaleY1.o" "SoldierRN.phl[172]";
connectAttr "nurbsCircle18_scaleZ1.o" "SoldierRN.phl[173]";
connectAttr "nurbsCircle18_visibility1.o" "SoldierRN.phl[174]";
connectAttr "nurbsCircle17_translateX.o" "SoldierRN.phl[175]";
connectAttr "nurbsCircle17_translateY.o" "SoldierRN.phl[176]";
connectAttr "nurbsCircle17_translateZ.o" "SoldierRN.phl[177]";
connectAttr "nurbsCircle17_rotateX.o" "SoldierRN.phl[178]";
connectAttr "nurbsCircle17_rotateY.o" "SoldierRN.phl[179]";
connectAttr "nurbsCircle17_rotateZ.o" "SoldierRN.phl[180]";
connectAttr "nurbsCircle17_scaleX.o" "SoldierRN.phl[181]";
connectAttr "nurbsCircle17_scaleY.o" "SoldierRN.phl[182]";
connectAttr "nurbsCircle17_scaleZ.o" "SoldierRN.phl[183]";
connectAttr "nurbsCircle17_visibility.o" "SoldierRN.phl[184]";
connectAttr "nurbsCircle1_rotateX.o" "SoldierRN.phl[185]";
connectAttr "nurbsCircle1_rotateY.o" "SoldierRN.phl[186]";
connectAttr "nurbsCircle1_rotateZ.o" "SoldierRN.phl[187]";
connectAttr "nurbsCircle1_visibility.o" "SoldierRN.phl[188]";
connectAttr "nurbsCircle1_translateX.o" "SoldierRN.phl[189]";
connectAttr "nurbsCircle1_translateY.o" "SoldierRN.phl[190]";
connectAttr "nurbsCircle1_translateZ.o" "SoldierRN.phl[191]";
connectAttr "nurbsCircle1_scaleX.o" "SoldierRN.phl[192]";
connectAttr "nurbsCircle1_scaleY.o" "SoldierRN.phl[193]";
connectAttr "nurbsCircle1_scaleZ.o" "SoldierRN.phl[194]";
connectAttr "nurbsCircle2_rotateX.o" "SoldierRN.phl[195]";
connectAttr "nurbsCircle2_rotateY.o" "SoldierRN.phl[196]";
connectAttr "nurbsCircle2_rotateZ.o" "SoldierRN.phl[197]";
connectAttr "nurbsCircle2_visibility.o" "SoldierRN.phl[198]";
connectAttr "nurbsCircle2_translateX.o" "SoldierRN.phl[199]";
connectAttr "nurbsCircle2_translateY.o" "SoldierRN.phl[200]";
connectAttr "nurbsCircle2_translateZ.o" "SoldierRN.phl[201]";
connectAttr "nurbsCircle2_scaleX.o" "SoldierRN.phl[202]";
connectAttr "nurbsCircle2_scaleY.o" "SoldierRN.phl[203]";
connectAttr "nurbsCircle2_scaleZ.o" "SoldierRN.phl[204]";
connectAttr "nurbsCircle3_translateX.o" "SoldierRN.phl[205]";
connectAttr "nurbsCircle3_translateY.o" "SoldierRN.phl[206]";
connectAttr "nurbsCircle3_translateZ.o" "SoldierRN.phl[207]";
connectAttr "nurbsCircle3_visibility.o" "SoldierRN.phl[208]";
connectAttr "nurbsCircle3_rotateX.o" "SoldierRN.phl[209]";
connectAttr "nurbsCircle3_rotateY.o" "SoldierRN.phl[210]";
connectAttr "nurbsCircle3_rotateZ.o" "SoldierRN.phl[211]";
connectAttr "nurbsCircle3_scaleX.o" "SoldierRN.phl[212]";
connectAttr "nurbsCircle3_scaleY.o" "SoldierRN.phl[213]";
connectAttr "nurbsCircle3_scaleZ.o" "SoldierRN.phl[214]";
connectAttr "SoldierRN.phl[215]" "SoldierRN.phl[216]";
connectAttr "SoldierRN.phl[217]" "SoldierRN.phl[218]";
connectAttr "SoldierRN.phl[219]" "SoldierRN.phl[220]";
connectAttr "SoldierRN.phl[221]" "SoldierRN.phl[222]";
connectAttr "SoldierRN.phl[223]" "SoldierRN.phl[224]";
connectAttr "SoldierRN.phl[225]" "SoldierRN.phl[226]";
connectAttr "SoldierRN.phl[227]" "SoldierRN.phl[228]";
connectAttr "SoldierRN.phl[229]" "SoldierRN.phl[230]";
connectAttr "AssaultRifle_visibility.o" "SoldierRN.phl[1]";
connectAttr "Guides.di" "pivot1.do";
connectAttr "polyCube1.out" "|pivot1|forward|forwardShape.i";
connectAttr "Guides.di" "pivot2.do";
connectAttr "Guides.di" "pivot3.do";
connectAttr "Guides.di" "pivot4.do";
connectAttr "Guides.di" "pivot5.do";
connectAttr "nurbsCircle18_visibility.o" "nurbsCircle18.v";
connectAttr "nurbsCircle18_translateX.o" "nurbsCircle18.tx";
connectAttr "nurbsCircle18_translateY.o" "nurbsCircle18.ty";
connectAttr "nurbsCircle18_translateZ.o" "nurbsCircle18.tz";
connectAttr "nurbsCircle18_rotateX.o" "nurbsCircle18.rx";
connectAttr "nurbsCircle18_rotateY.o" "nurbsCircle18.ry";
connectAttr "nurbsCircle18_rotateZ.o" "nurbsCircle18.rz";
connectAttr "nurbsCircle18_scaleX.o" "nurbsCircle18.sx";
connectAttr "nurbsCircle18_scaleY.o" "nurbsCircle18.sy";
connectAttr "nurbsCircle18_scaleZ.o" "nurbsCircle18.sz";
connectAttr "makeNurbCircle1.oc" "nurbsCircleShape1.cr";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr ":TurtleDefaultBakeLayer.idx" ":TurtleBakeLayerManager.bli[0]";
connectAttr ":TurtleRenderOptions.msg" ":TurtleDefaultBakeLayer.rset";
connectAttr "layerManager.dli[1]" "Guides.id";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "|pivot1|forward|forwardShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|pivot2|forward|forwardShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|pivot3|forward|forwardShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|pivot4|forward|forwardShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|pivot5|forward|forwardShape.iog" ":initialShadingGroup.dsm" -na;
// End of Soldier@standing_aim.ma
