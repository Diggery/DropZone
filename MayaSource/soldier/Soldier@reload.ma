//Maya ASCII 2016 scene
//Name: Soldier@reload.ma
//Last modified: Sun, Aug 14, 2016 05:16:07 PM
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
	setAttr ".t" -type "double3" 15.903408718321941 273.70533831774662 418.0123010569697 ;
	setAttr ".r" -type "double3" -25.538352728721517 12.199999999999989 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "0DE61285-5447-869D-E00A-AEB5FBAC336C";
	setAttr -k off ".v" no;
	setAttr ".pze" yes;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 403.00045120247876;
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
	rename -uid "57AADFD2-EE40-D441-838A-5B9A70D8D9F4";
	setAttr -s 13 ".lnk";
	setAttr -s 13 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "5562AA4E-0D43-365F-7CC1-8E8D8A478EFB";
	setAttr ".cdl" 1;
	setAttr -s 2 ".dli[1]"  1;
	setAttr -s 2 ".dli";
createNode displayLayer -n "defaultLayer";
	rename -uid "1AB385CB-214F-9970-0753-9C86125E5ACE";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "D1BAD4F5-674B-E5E1-BFDD-8CA4FBCDE47D";
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
	setAttr -s 212 ".phl";
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
	setAttr ".ed" -type "dataReferenceEdits" 
		"SoldierRN"
		"Soldier:AssaultRifleRN" 0
		"Rig:MagPistolRN" 0
		"Soldier:MagPistolRN" 0
		"Rig:AssaultRifleRN" 0
		"SoldierRN" 1
		2 "|Rig:Skeleton|Rig:RootMotion|Rig:pCube2|Rig:pCubeShape1" "uvSet[0].uvSetName" 
		" -type \"string\" \"map1\""
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
		"SoldierRN" 454
		2 "|Rig:Geometry|Rig:Body|Rig:BodyShape" "visibility" " -k 0 1"
		2 "|Rig:Geometry|Rig:Body|Rig:BodyShape" "uvPivot" " -type \"double2\" 0.4994969367980957 0.49276292324066162"
		
		2 "|Rig:Control|Rig:ikHandle7" "translate" " -type \"double3\" -43.79826497705769839 113.63002241769338241 -2.13464312721568916"
		
		2 "|Rig:Control|Rig:ikHandle7" "translateX" " -av"
		2 "|Rig:Control|Rig:ikHandle7" "translateY" " -av"
		2 "|Rig:Control|Rig:ikHandle7" "translateZ" " -av"
		2 "|Rig:Control|Rig:ikHandle8" "translate" " -type \"double3\" 19.4928866458075305 132.68655830769358772 35.12078341745243648"
		
		2 "|Rig:Control|Rig:ikHandle8" "translateX" " -av"
		2 "|Rig:Control|Rig:ikHandle8" "translateZ" " -av"
		2 "|Rig:Control|Rig:ikHandle8" "translateY" " -av"
		2 "|Rig:Control|Rig:RootMotion_Control" "rotate" " -type \"double3\" 0 0 0"
		
		2 "|Rig:Control|Rig:RootMotion_Control" "rotateY" " -av"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14" "visibility" " -av 1"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14" "translate" " -type \"double3\" 1.0446623430118791 0 -51.7621394478765211"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14" "translateX" " -av"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14" "translateY" " -av"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14" "translateZ" " -av"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14" "rotate" " -type \"double3\" 0 -70.81342150547790482 0"
		
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
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12" "translate" " -type \"double3\" -60.68901335419245413 20.76955830769365008 17.9000834174524428"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12" "translateX" " -av"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12" "translateY" " -av"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12" "translateZ" " -av"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12" "rotate" " -type \"double3\" 171.64100486688747083 -83.33864506048590215 -227.38997456004696573"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12" "rotateX" " -av"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12" "rotateY" " -av"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12" "rotateZ" " -av"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12" "scale" " -type \"double3\" 1 1 1"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12" "scaleX" " -av"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12" "scaleY" " -av"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12" "scaleZ" " -av"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12" "Grip" " -av -k 1 0.13792590374769953"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12|Rig:nurbsCircle13" 
		"visibility" " -av 1"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12|Rig:nurbsCircle13" 
		"translate" " -type \"double3\" -61.47713599269120266 138.33372198988050172 -192.10915225963483977"
		
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
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle10" "translate" " -type \"double3\" 17.61736818001929805 1.71302241769337638 -19.35534312721566153"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle10" "translateX" " -av"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle10" "translateY" " -av"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle10" "translateZ" " -av"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle10" "rotate" " -type \"double3\" 10.13572909161985613 29.52845833984720869 -36.57569988615807688"
		
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
		"translate" " -type \"double3\" -48.9266335979511453 68.83228710488540969 25.20455616707208435"
		
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
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4" "translate" " -type \"double3\" 4.63471911700519001 -9.31087066209863323 -12.04324711391266689"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4" "translateX" " -av"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4" "translateY" " -av"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4" "translateZ" " -av"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4" "rotate" " -type \"double3\" 9.79416873538592725 -51.78861165629961505 0.14634973977570789"
		
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
		"rotate" " -type \"double3\" -4.46524541978025091 4.66029777807881285 -0.0036053160029881235"
		
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
		"rotate" " -type \"double3\" 12.00631203428182303 -7.47662131719321987 -4.30870444403502884"
		
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
		"rotate" " -type \"double3\" 0 2.75661090707795742 0"
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
		"rotate" " -type \"double3\" 24.01176087978606333 23.75201747626017834 29.99549134927772442"
		
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
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1" "translate" " -type \"double3\" -3.78486162745249999 0 38.40041007070714585"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1" "translateX" " -av"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1" "translateY" " -av"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1" "translateZ" " -av"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1" "rotate" " -type \"double3\" 0 -17.85273366609018098 0"
		
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
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control.translateX" "SoldierRN.placeHolderList[1]" 
		""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control.translateY" "SoldierRN.placeHolderList[2]" 
		""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control.translateZ" "SoldierRN.placeHolderList[3]" 
		""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control.rotateX" "SoldierRN.placeHolderList[4]" 
		""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control.rotateY" "SoldierRN.placeHolderList[5]" 
		""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control.rotateZ" "SoldierRN.placeHolderList[6]" 
		""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control.scaleX" "SoldierRN.placeHolderList[7]" 
		""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control.scaleY" "SoldierRN.placeHolderList[8]" 
		""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control.scaleZ" "SoldierRN.placeHolderList[9]" 
		""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control.visibility" "SoldierRN.placeHolderList[10]" 
		""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:arrow.visibility" 
		"SoldierRN.placeHolderList[11]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:arrow.translateX" 
		"SoldierRN.placeHolderList[12]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:arrow.translateY" 
		"SoldierRN.placeHolderList[13]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:arrow.translateZ" 
		"SoldierRN.placeHolderList[14]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:arrow.rotateX" 
		"SoldierRN.placeHolderList[15]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:arrow.rotateY" 
		"SoldierRN.placeHolderList[16]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:arrow.rotateZ" 
		"SoldierRN.placeHolderList[17]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:arrow.scaleX" 
		"SoldierRN.placeHolderList[18]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:arrow.scaleY" 
		"SoldierRN.placeHolderList[19]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:arrow.scaleZ" 
		"SoldierRN.placeHolderList[20]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:arrow1.visibility" 
		"SoldierRN.placeHolderList[21]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:arrow1.translateX" 
		"SoldierRN.placeHolderList[22]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:arrow1.translateY" 
		"SoldierRN.placeHolderList[23]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:arrow1.translateZ" 
		"SoldierRN.placeHolderList[24]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:arrow1.rotateX" 
		"SoldierRN.placeHolderList[25]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:arrow1.rotateY" 
		"SoldierRN.placeHolderList[26]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:arrow1.rotateZ" 
		"SoldierRN.placeHolderList[27]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:arrow1.scaleX" 
		"SoldierRN.placeHolderList[28]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:arrow1.scaleY" 
		"SoldierRN.placeHolderList[29]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:arrow1.scaleZ" 
		"SoldierRN.placeHolderList[30]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14.rotateX" 
		"SoldierRN.placeHolderList[31]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14.rotateY" 
		"SoldierRN.placeHolderList[32]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14.rotateZ" 
		"SoldierRN.placeHolderList[33]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14.visibility" 
		"SoldierRN.placeHolderList[34]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14.translateX" 
		"SoldierRN.placeHolderList[35]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14.translateY" 
		"SoldierRN.placeHolderList[36]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14.translateZ" 
		"SoldierRN.placeHolderList[37]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14.scaleX" 
		"SoldierRN.placeHolderList[38]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14.scaleY" 
		"SoldierRN.placeHolderList[39]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14.scaleZ" 
		"SoldierRN.placeHolderList[40]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14|Rig:nurbsCircle15.rotateX" 
		"SoldierRN.placeHolderList[41]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14|Rig:nurbsCircle15.rotateY" 
		"SoldierRN.placeHolderList[42]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14|Rig:nurbsCircle15.rotateZ" 
		"SoldierRN.placeHolderList[43]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14|Rig:nurbsCircle15.visibility" 
		"SoldierRN.placeHolderList[44]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14|Rig:nurbsCircle15.translateX" 
		"SoldierRN.placeHolderList[45]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14|Rig:nurbsCircle15.translateY" 
		"SoldierRN.placeHolderList[46]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14|Rig:nurbsCircle15.translateZ" 
		"SoldierRN.placeHolderList[47]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14|Rig:nurbsCircle15.scaleX" 
		"SoldierRN.placeHolderList[48]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14|Rig:nurbsCircle15.scaleY" 
		"SoldierRN.placeHolderList[49]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14|Rig:nurbsCircle15.scaleZ" 
		"SoldierRN.placeHolderList[50]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14|Rig:nurbsCircle16.translateX" 
		"SoldierRN.placeHolderList[51]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14|Rig:nurbsCircle16.translateY" 
		"SoldierRN.placeHolderList[52]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14|Rig:nurbsCircle16.translateZ" 
		"SoldierRN.placeHolderList[53]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14|Rig:nurbsCircle16.visibility" 
		"SoldierRN.placeHolderList[54]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14|Rig:nurbsCircle16.rotateX" 
		"SoldierRN.placeHolderList[55]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14|Rig:nurbsCircle16.rotateY" 
		"SoldierRN.placeHolderList[56]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14|Rig:nurbsCircle16.rotateZ" 
		"SoldierRN.placeHolderList[57]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14|Rig:nurbsCircle16.scaleX" 
		"SoldierRN.placeHolderList[58]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14|Rig:nurbsCircle16.scaleY" 
		"SoldierRN.placeHolderList[59]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14|Rig:nurbsCircle16.scaleZ" 
		"SoldierRN.placeHolderList[60]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12.Grip" 
		"SoldierRN.placeHolderList[61]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12.rotateX" 
		"SoldierRN.placeHolderList[62]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12.rotateY" 
		"SoldierRN.placeHolderList[63]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12.rotateZ" 
		"SoldierRN.placeHolderList[64]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12.translateX" 
		"SoldierRN.placeHolderList[65]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12.translateY" 
		"SoldierRN.placeHolderList[66]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12.translateZ" 
		"SoldierRN.placeHolderList[67]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12.visibility" 
		"SoldierRN.placeHolderList[68]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12.scaleX" 
		"SoldierRN.placeHolderList[69]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12.scaleY" 
		"SoldierRN.placeHolderList[70]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12.scaleZ" 
		"SoldierRN.placeHolderList[71]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12|Rig:nurbsCircle13.translateX" 
		"SoldierRN.placeHolderList[72]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12|Rig:nurbsCircle13.translateY" 
		"SoldierRN.placeHolderList[73]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12|Rig:nurbsCircle13.translateZ" 
		"SoldierRN.placeHolderList[74]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12|Rig:nurbsCircle13.visibility" 
		"SoldierRN.placeHolderList[75]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12|Rig:nurbsCircle13.rotateX" 
		"SoldierRN.placeHolderList[76]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12|Rig:nurbsCircle13.rotateY" 
		"SoldierRN.placeHolderList[77]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12|Rig:nurbsCircle13.rotateZ" 
		"SoldierRN.placeHolderList[78]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12|Rig:nurbsCircle13.scaleX" 
		"SoldierRN.placeHolderList[79]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12|Rig:nurbsCircle13.scaleY" 
		"SoldierRN.placeHolderList[80]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12|Rig:nurbsCircle13.scaleZ" 
		"SoldierRN.placeHolderList[81]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle10.Grip" 
		"SoldierRN.placeHolderList[82]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle10.rotateX" 
		"SoldierRN.placeHolderList[83]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle10.rotateY" 
		"SoldierRN.placeHolderList[84]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle10.rotateZ" 
		"SoldierRN.placeHolderList[85]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle10.translateX" 
		"SoldierRN.placeHolderList[86]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle10.translateY" 
		"SoldierRN.placeHolderList[87]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle10.translateZ" 
		"SoldierRN.placeHolderList[88]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle10.visibility" 
		"SoldierRN.placeHolderList[89]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle10.scaleX" 
		"SoldierRN.placeHolderList[90]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle10.scaleY" 
		"SoldierRN.placeHolderList[91]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle10.scaleZ" 
		"SoldierRN.placeHolderList[92]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle10|Rig:nurbsCircle11.translateX" 
		"SoldierRN.placeHolderList[93]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle10|Rig:nurbsCircle11.translateY" 
		"SoldierRN.placeHolderList[94]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle10|Rig:nurbsCircle11.translateZ" 
		"SoldierRN.placeHolderList[95]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle10|Rig:nurbsCircle11.visibility" 
		"SoldierRN.placeHolderList[96]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle10|Rig:nurbsCircle11.rotateX" 
		"SoldierRN.placeHolderList[97]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle10|Rig:nurbsCircle11.rotateY" 
		"SoldierRN.placeHolderList[98]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle10|Rig:nurbsCircle11.rotateZ" 
		"SoldierRN.placeHolderList[99]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle10|Rig:nurbsCircle11.scaleX" 
		"SoldierRN.placeHolderList[100]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle10|Rig:nurbsCircle11.scaleY" 
		"SoldierRN.placeHolderList[101]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle10|Rig:nurbsCircle11.scaleZ" 
		"SoldierRN.placeHolderList[102]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4.translateX" 
		"SoldierRN.placeHolderList[103]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4.translateY" 
		"SoldierRN.placeHolderList[104]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4.translateZ" 
		"SoldierRN.placeHolderList[105]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4.rotateX" 
		"SoldierRN.placeHolderList[106]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4.rotateY" 
		"SoldierRN.placeHolderList[107]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4.rotateZ" 
		"SoldierRN.placeHolderList[108]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4.scaleX" 
		"SoldierRN.placeHolderList[109]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4.scaleY" 
		"SoldierRN.placeHolderList[110]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4.scaleZ" 
		"SoldierRN.placeHolderList[111]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4.visibility" 
		"SoldierRN.placeHolderList[112]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5.rotateX" 
		"SoldierRN.placeHolderList[113]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5.rotateY" 
		"SoldierRN.placeHolderList[114]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5.rotateZ" 
		"SoldierRN.placeHolderList[115]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5.visibility" 
		"SoldierRN.placeHolderList[116]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5.translateX" 
		"SoldierRN.placeHolderList[117]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5.translateY" 
		"SoldierRN.placeHolderList[118]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5.translateZ" 
		"SoldierRN.placeHolderList[119]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5.scaleX" 
		"SoldierRN.placeHolderList[120]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5.scaleY" 
		"SoldierRN.placeHolderList[121]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5.scaleZ" 
		"SoldierRN.placeHolderList[122]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6.rotateX" 
		"SoldierRN.placeHolderList[123]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6.rotateY" 
		"SoldierRN.placeHolderList[124]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6.rotateZ" 
		"SoldierRN.placeHolderList[125]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6.visibility" 
		"SoldierRN.placeHolderList[126]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6.translateX" 
		"SoldierRN.placeHolderList[127]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6.translateY" 
		"SoldierRN.placeHolderList[128]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6.translateZ" 
		"SoldierRN.placeHolderList[129]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6.scaleX" 
		"SoldierRN.placeHolderList[130]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6.scaleY" 
		"SoldierRN.placeHolderList[131]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6.scaleZ" 
		"SoldierRN.placeHolderList[132]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle9.rotateX" 
		"SoldierRN.placeHolderList[133]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle9.rotateY" 
		"SoldierRN.placeHolderList[134]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle9.rotateZ" 
		"SoldierRN.placeHolderList[135]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle9.visibility" 
		"SoldierRN.placeHolderList[136]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle9.translateX" 
		"SoldierRN.placeHolderList[137]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle9.translateY" 
		"SoldierRN.placeHolderList[138]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle9.translateZ" 
		"SoldierRN.placeHolderList[139]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle9.scaleX" 
		"SoldierRN.placeHolderList[140]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle9.scaleY" 
		"SoldierRN.placeHolderList[141]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle9.scaleZ" 
		"SoldierRN.placeHolderList[142]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle8.rotateX" 
		"SoldierRN.placeHolderList[143]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle8.rotateY" 
		"SoldierRN.placeHolderList[144]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle8.rotateZ" 
		"SoldierRN.placeHolderList[145]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle8.visibility" 
		"SoldierRN.placeHolderList[146]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle8.translateX" 
		"SoldierRN.placeHolderList[147]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle8.translateY" 
		"SoldierRN.placeHolderList[148]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle8.translateZ" 
		"SoldierRN.placeHolderList[149]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle8.scaleX" 
		"SoldierRN.placeHolderList[150]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle8.scaleY" 
		"SoldierRN.placeHolderList[151]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle8.scaleZ" 
		"SoldierRN.placeHolderList[152]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle7.rotateX" 
		"SoldierRN.placeHolderList[153]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle7.rotateY" 
		"SoldierRN.placeHolderList[154]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle7.rotateZ" 
		"SoldierRN.placeHolderList[155]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle7.visibility" 
		"SoldierRN.placeHolderList[156]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle7.translateX" 
		"SoldierRN.placeHolderList[157]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle7.translateY" 
		"SoldierRN.placeHolderList[158]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle7.translateZ" 
		"SoldierRN.placeHolderList[159]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle7.scaleX" 
		"SoldierRN.placeHolderList[160]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle7.scaleY" 
		"SoldierRN.placeHolderList[161]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle7.scaleZ" 
		"SoldierRN.placeHolderList[162]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle18.translateX" 
		"SoldierRN.placeHolderList[163]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle18.translateY" 
		"SoldierRN.placeHolderList[164]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle18.translateZ" 
		"SoldierRN.placeHolderList[165]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle18.rotateX" 
		"SoldierRN.placeHolderList[166]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle18.rotateY" 
		"SoldierRN.placeHolderList[167]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle18.rotateZ" 
		"SoldierRN.placeHolderList[168]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle18.scaleX" 
		"SoldierRN.placeHolderList[169]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle18.scaleY" 
		"SoldierRN.placeHolderList[170]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle18.scaleZ" 
		"SoldierRN.placeHolderList[171]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle18.visibility" 
		"SoldierRN.placeHolderList[172]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle17.translateX" 
		"SoldierRN.placeHolderList[173]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle17.translateY" 
		"SoldierRN.placeHolderList[174]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle17.translateZ" 
		"SoldierRN.placeHolderList[175]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle17.rotateX" 
		"SoldierRN.placeHolderList[176]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle17.rotateY" 
		"SoldierRN.placeHolderList[177]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle17.rotateZ" 
		"SoldierRN.placeHolderList[178]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle17.scaleX" 
		"SoldierRN.placeHolderList[179]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle17.scaleY" 
		"SoldierRN.placeHolderList[180]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle17.scaleZ" 
		"SoldierRN.placeHolderList[181]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle17.visibility" 
		"SoldierRN.placeHolderList[182]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1.rotateX" 
		"SoldierRN.placeHolderList[183]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1.rotateY" 
		"SoldierRN.placeHolderList[184]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1.rotateZ" 
		"SoldierRN.placeHolderList[185]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1.visibility" 
		"SoldierRN.placeHolderList[186]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1.translateX" 
		"SoldierRN.placeHolderList[187]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1.translateY" 
		"SoldierRN.placeHolderList[188]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1.translateZ" 
		"SoldierRN.placeHolderList[189]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1.scaleX" 
		"SoldierRN.placeHolderList[190]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1.scaleY" 
		"SoldierRN.placeHolderList[191]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1.scaleZ" 
		"SoldierRN.placeHolderList[192]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1|Rig:nurbsCircle2.rotateX" 
		"SoldierRN.placeHolderList[193]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1|Rig:nurbsCircle2.rotateY" 
		"SoldierRN.placeHolderList[194]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1|Rig:nurbsCircle2.rotateZ" 
		"SoldierRN.placeHolderList[195]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1|Rig:nurbsCircle2.visibility" 
		"SoldierRN.placeHolderList[196]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1|Rig:nurbsCircle2.translateX" 
		"SoldierRN.placeHolderList[197]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1|Rig:nurbsCircle2.translateY" 
		"SoldierRN.placeHolderList[198]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1|Rig:nurbsCircle2.translateZ" 
		"SoldierRN.placeHolderList[199]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1|Rig:nurbsCircle2.scaleX" 
		"SoldierRN.placeHolderList[200]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1|Rig:nurbsCircle2.scaleY" 
		"SoldierRN.placeHolderList[201]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1|Rig:nurbsCircle2.scaleZ" 
		"SoldierRN.placeHolderList[202]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1|Rig:nurbsCircle3.translateX" 
		"SoldierRN.placeHolderList[203]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1|Rig:nurbsCircle3.translateY" 
		"SoldierRN.placeHolderList[204]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1|Rig:nurbsCircle3.translateZ" 
		"SoldierRN.placeHolderList[205]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1|Rig:nurbsCircle3.visibility" 
		"SoldierRN.placeHolderList[206]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1|Rig:nurbsCircle3.rotateX" 
		"SoldierRN.placeHolderList[207]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1|Rig:nurbsCircle3.rotateY" 
		"SoldierRN.placeHolderList[208]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1|Rig:nurbsCircle3.rotateZ" 
		"SoldierRN.placeHolderList[209]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1|Rig:nurbsCircle3.scaleX" 
		"SoldierRN.placeHolderList[210]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1|Rig:nurbsCircle3.scaleY" 
		"SoldierRN.placeHolderList[211]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1|Rig:nurbsCircle3.scaleZ" 
		"SoldierRN.placeHolderList[212]" ""
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
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"all\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n"
		+ "                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 0\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 0\n                -imagePlane 1\n                -joints 1\n                -ikHandles 0\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 1\n                -captureSequenceNumber -1\n"
		+ "                -width 1135\n                -height 655\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"all\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
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
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"all\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 0\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 0\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 1\\n    -captureSequenceNumber -1\\n    -width 1135\\n    -height 655\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"all\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 0\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 0\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 1\\n    -captureSequenceNumber -1\\n    -width 1135\\n    -height 655\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 100 -size 500 -divisions 2 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "8D7D14DE-9341-8C39-B92F-798E15BB2D69";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 110 -ast 0 -aet 300 ";
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
	setAttr -s 2 ".ac";
	setAttr ".ac[0].acn" -type "string" "mainweapon_reload";
	setAttr ".ac[0].acs" 1;
	setAttr ".ac[0].ace" 60;
	setAttr ".ac[0].asn" -type "string" "";
	setAttr ".ac[1].acn" -type "string" "switch_to_sidearm";
	setAttr ".ac[1].acs" 70;
	setAttr ".ac[1].ace" 110;
	setAttr ".ic" no;
	setAttr ".ebm" yes;
	setAttr ".fv" -type "string" "FBX201600";
	setAttr ".exp" -type "string" "/Users/briancollins/Unity/LZisHOT/Assets/Characters/Soldier";
	setAttr ".exf" -type "string" "soldier_reload";
createNode animCurveTU -n "RootMotion_Control_visibility";
	rename -uid "A109488B-B64E-19C0-B65C-D3B6DBC260D6";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 1 1 10 1 20 1 50 1 60 1 70 1 80 1;
	setAttr -s 8 ".kit[0:7]"  9 1 9 9 1 1 9 9;
	setAttr -s 8 ".kot[0:7]"  5 1 5 5 1 1 5 5;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 0 0 1 1 0 0;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "RootMotion_Control_translateX";
	rename -uid "594A047E-4541-3876-4228-8B8017812450";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 1 0 10 0 20 0 50 0 60 0 70 0 80 0;
	setAttr -s 8 ".kit[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kot[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "RootMotion_Control_translateY";
	rename -uid "78936FA1-6C45-EC1D-9368-5380C47C58A0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 1 0 10 0 20 0 50 0 60 0 70 0 80 0;
	setAttr -s 8 ".kit[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kot[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "RootMotion_Control_translateZ";
	rename -uid "A195E89D-F141-69DC-8524-198E6FF5021B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 1 0 10 0 20 0 50 0 60 0 70 0 80 0;
	setAttr -s 8 ".kit[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kot[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "RootMotion_Control_rotateX";
	rename -uid "EBCF6530-2F47-267B-4CB2-25B224414370";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 1 0 10 0 20 0 50 0 60 0 70 0 80 0;
	setAttr -s 8 ".kit[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kot[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "RootMotion_Control_rotateY";
	rename -uid "1DA075B8-D141-455F-FCDA-0A94A2DC18A2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 1 0 10 0 20 0 50 0 60 0 70 0 80 0;
	setAttr -s 8 ".kit[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kot[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "RootMotion_Control_rotateZ";
	rename -uid "47116344-6C45-F48B-0A75-37B47114EB5F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 1 0 10 0 20 0 50 0 60 0 70 0 80 0;
	setAttr -s 8 ".kit[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kot[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "RootMotion_Control_scaleX";
	rename -uid "835F8A6A-1C4B-7A5E-AD70-B0B823226698";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 1 1 10 1 20 1 50 1 60 1 70 1 80 1;
	setAttr -s 8 ".kit[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kot[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "RootMotion_Control_scaleY";
	rename -uid "D0657C88-9C40-6FBA-D01E-1B83A4C7A1A8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 1 1 10 1 20 1 50 1 60 1 70 1 80 1;
	setAttr -s 8 ".kit[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kot[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "RootMotion_Control_scaleZ";
	rename -uid "88326455-874C-F572-8F55-599252F53F5E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 1 1 10 1 20 1 50 1 60 1 70 1 80 1;
	setAttr -s 8 ".kit[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kot[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "arrow_visibility";
	rename -uid "0675D1EC-B346-1405-5903-19880A73F782";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 1 1 10 1 20 1 50 1 60 1 70 1 80 1;
	setAttr -s 8 ".kit[0:7]"  9 1 9 9 1 1 9 9;
	setAttr -s 8 ".kot[0:7]"  5 1 5 5 1 1 5 5;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 0 0 1 1 0 0;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "arrow_translateX";
	rename -uid "A64D1D31-5344-20B5-C4E7-1982025CA9AA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 1 0 10 0 20 0 50 0 60 0 70 0 80 0;
	setAttr -s 8 ".kit[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kot[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "arrow_translateY";
	rename -uid "2CDD6BD3-3B43-2FDE-D072-4B9781B049DE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 5.6302633995630984 1 5.6302633995630984
		 10 5.6302633995630984 20 5.6302633995630984 50 5.6302633995630984 60 5.6302633995630984
		 70 5.6302633995630984 80 5.6302633995630984;
	setAttr -s 8 ".kit[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kot[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "arrow_translateZ";
	rename -uid "1E4E1512-4941-BCFB-C963-FC8B854EB7D7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 33.779376508592918 1 33.779376508592918
		 10 33.779376508592918 20 33.779376508592918 50 33.779376508592918 60 33.779376508592918
		 70 33.779376508592918 80 33.779376508592918;
	setAttr -s 8 ".kit[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kot[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "arrow_rotateX";
	rename -uid "CCFFB215-124C-822E-2C1E-9D9115A55815";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 1 0 10 0 20 0 50 0 60 0 70 0 80 0;
	setAttr -s 8 ".kit[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kot[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "arrow_rotateY";
	rename -uid "2EB79F4A-CF42-97B2-D399-C08BD1789BD3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 225 1 225 10 225 20 225 50 225 60 225
		 70 225 80 225;
	setAttr -s 8 ".kit[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kot[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "arrow_rotateZ";
	rename -uid "3DE7FE41-A644-DC9B-1040-7796E0150E5F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 1 0 10 0 20 0 50 0 60 0 70 0 80 0;
	setAttr -s 8 ".kit[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kot[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "arrow_scaleX";
	rename -uid "B7A2626F-AB41-9C72-DB2C-4B90BC50F955";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.99999999999999989 1 0.99999999999999989
		 10 0.99999999999999989 20 0.99999999999999989 50 0.99999999999999989 60 0.99999999999999989
		 70 0.99999999999999989 80 0.99999999999999989;
	setAttr -s 8 ".kit[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kot[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "arrow_scaleY";
	rename -uid "700DD8A2-A244-BFB2-E1EC-DA8CD4F154F2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 1 1 10 1 20 1 50 1 60 1 70 1 80 1;
	setAttr -s 8 ".kit[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kot[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "arrow_scaleZ";
	rename -uid "F456042D-6749-6B8F-0EF3-898EBDD58B9D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.99999999999999989 1 0.99999999999999989
		 10 0.99999999999999989 20 0.99999999999999989 50 0.99999999999999989 60 0.99999999999999989
		 70 0.99999999999999989 80 0.99999999999999989;
	setAttr -s 8 ".kit[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kot[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "arrow1_visibility";
	rename -uid "4BAA1E3C-6D4A-C21E-3F2F-D7A3C5B19F6B";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 1 1 10 1 20 1 50 1 60 1 70 1 80 1;
	setAttr -s 8 ".kit[0:7]"  9 1 9 9 1 1 9 9;
	setAttr -s 8 ".kot[0:7]"  5 1 5 5 1 1 5 5;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 0 0 1 1 0 0;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "arrow1_translateX";
	rename -uid "6AA78614-034C-52AC-FC26-27BE9B77EA90";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 1 0 10 0 20 0 50 0 60 0 70 0 80 0;
	setAttr -s 8 ".kit[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kot[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "arrow1_translateY";
	rename -uid "84F625EB-224B-7EF3-168F-B58094C65E28";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 5.6302633995630984 1 5.6302633995630984
		 10 5.6302633995630984 20 5.6302633995630984 50 5.6302633995630984 60 5.6302633995630984
		 70 5.6302633995630984 80 5.6302633995630984;
	setAttr -s 8 ".kit[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kot[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "arrow1_translateZ";
	rename -uid "DE5E6EB0-9341-8FF5-9F99-3CAE969B9789";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 33.779376508592918 1 33.779376508592918
		 10 33.779376508592918 20 33.779376508592918 50 33.779376508592918 60 33.779376508592918
		 70 33.779376508592918 80 33.779376508592918;
	setAttr -s 8 ".kit[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kot[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "arrow1_rotateX";
	rename -uid "9A26BFAD-4E47-0D56-522F-E7A40572582A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 1 0 10 0 20 0 50 0 60 0 70 0 80 0;
	setAttr -s 8 ".kit[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kot[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "arrow1_rotateY";
	rename -uid "F3D7F0A5-CF47-F25D-29FF-A7B1F7102603";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 225 1 225 10 225 20 225 50 225 60 225
		 70 225 80 225;
	setAttr -s 8 ".kit[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kot[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "arrow1_rotateZ";
	rename -uid "45C4DC5D-0345-0837-296C-758C21DB663B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 1 0 10 0 20 0 50 0 60 0 70 0 80 0;
	setAttr -s 8 ".kit[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kot[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "arrow1_scaleX";
	rename -uid "2909FE5C-7A46-7A34-9404-6CA4B0F9C9DF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.99999999999999989 1 0.99999999999999989
		 10 0.99999999999999989 20 0.99999999999999989 50 0.99999999999999989 60 0.99999999999999989
		 70 0.99999999999999989 80 0.99999999999999989;
	setAttr -s 8 ".kit[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kot[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "arrow1_scaleY";
	rename -uid "51BA3E22-B247-AAC4-7E3D-3FB03B96C3C1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 1 1 10 1 20 1 50 1 60 1 70 1 80 1;
	setAttr -s 8 ".kit[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kot[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "arrow1_scaleZ";
	rename -uid "E8BDD245-F34D-B588-A921-D5B501293719";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0.99999999999999989 1 0.99999999999999989
		 10 0.99999999999999989 20 0.99999999999999989 50 0.99999999999999989 60 0.99999999999999989
		 70 0.99999999999999989 80 0.99999999999999989;
	setAttr -s 8 ".kit[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kot[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle14_visibility";
	rename -uid "00FB4DB5-0D40-7E97-6F1F-9DA516967EA3";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 1 1 10 1 20 1 50 1 60 1 70 1 80 1;
	setAttr -s 8 ".kit[0:7]"  9 1 9 9 1 1 9 9;
	setAttr -s 8 ".kot[0:7]"  5 1 5 5 1 1 5 5;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 0 0 1 1 0 0;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "nurbsCircle14_translateX";
	rename -uid "89026164-3944-ADFD-E5AB-B9B954C9D8EA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -7.7834144969507193 1 1.0446623430118791
		 10 1.0446623430118791 20 1.0446623430118791 50 1.0446623430118791 60 1.0446623430118791
		 70 1.0446623430118791 80 1.0446623430118791;
	setAttr -s 8 ".kit[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kot[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "nurbsCircle14_translateY";
	rename -uid "014E4B04-8842-4B13-5BA3-89989F154487";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 1 0 10 0 20 0 50 0 60 0 70 0 80 0;
	setAttr -s 8 ".kit[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kot[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "nurbsCircle14_translateZ";
	rename -uid "431F4BCF-1D4F-20B5-79B3-DCAB021749EA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -29.406498118572596 1 -51.762139447876521
		 10 -51.762139447876521 20 -51.762139447876521 50 -51.762139447876521 60 -51.762139447876521
		 70 -51.762139447876521 80 -51.762139447876521;
	setAttr -s 8 ".kit[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kot[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "nurbsCircle14_rotateX";
	rename -uid "55E4A5DB-E649-2E93-4D95-578C57D743E7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 1 0 10 0 20 0 50 0 60 0 70 0 80 0;
	setAttr -s 8 ".kit[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kot[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "nurbsCircle14_rotateY";
	rename -uid "7540AD2D-9346-EC78-6308-E4BC3241E83A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 -48.640487878130692 1 -70.813421505477905
		 10 -70.813421505477905 20 -70.813421505477905 50 -70.813421505477905 60 -70.813421505477905
		 70 -70.813421505477905 80 -70.813421505477905;
	setAttr -s 8 ".kit[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kot[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "nurbsCircle14_rotateZ";
	rename -uid "EEF06EEC-C143-5587-115D-2B8BD015CE86";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 1 0 10 0 20 0 50 0 60 0 70 0 80 0;
	setAttr -s 8 ".kit[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kot[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle14_scaleX";
	rename -uid "26DD54D2-A64E-B596-B796-E2A39ADF5669";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 1 1 10 1 20 1 50 1 60 1 70 1 80 1;
	setAttr -s 8 ".kit[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kot[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle14_scaleY";
	rename -uid "722A9F55-594B-4269-D973-9493C084EE7C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 1 1 10 1 20 1 50 1 60 1 70 1 80 1;
	setAttr -s 8 ".kit[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kot[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle14_scaleZ";
	rename -uid "A7FA7044-3B4A-09C8-6D09-F4AD5E1D53F2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 1 1 10 1 20 1 50 1 60 1 70 1 80 1;
	setAttr -s 8 ".kit[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kot[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle15_visibility";
	rename -uid "30027F79-BB45-DCD2-C269-EFBD4B365CD9";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 1 1 10 1 20 1 50 1 60 1 70 1 80 1;
	setAttr -s 8 ".kit[0:7]"  9 1 9 9 1 1 9 9;
	setAttr -s 8 ".kot[0:7]"  5 1 5 5 1 1 5 5;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 0 0 1 1 0 0;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "nurbsCircle15_translateX";
	rename -uid "843BF07A-6D43-435C-0B14-69A54B953262";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 1 0 10 0 20 0 50 0 60 0 70 0 80 0;
	setAttr -s 8 ".kit[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kot[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "nurbsCircle15_translateY";
	rename -uid "761B1AEF-2945-C9B8-D917-3D942129AD43";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 1 0 10 0 20 0 50 0 60 0 70 0 80 0;
	setAttr -s 8 ".kit[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kot[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "nurbsCircle15_translateZ";
	rename -uid "0DDAC9E0-C94D-E01E-DF40-BD85BDFB1774";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 1 0 10 0 20 0 50 0 60 0 70 0 80 0;
	setAttr -s 8 ".kit[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kot[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "nurbsCircle15_rotateX";
	rename -uid "A1B9F922-5A4A-658E-7E54-63ABB6882E22";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 1 0 10 0 20 0 50 0 60 0 70 0 80 0;
	setAttr -s 8 ".kit[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kot[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "nurbsCircle15_rotateY";
	rename -uid "5A23237E-F34F-8786-C92F-32B04B2BEAC6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 1 0 10 0 20 0 50 0 60 0 70 0 80 0;
	setAttr -s 8 ".kit[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kot[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "nurbsCircle15_rotateZ";
	rename -uid "1DAA8D1E-3D44-59DB-175C-24A7F95A9CBC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 1 0 10 0 20 0 50 0 60 0 70 0 80 0;
	setAttr -s 8 ".kit[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kot[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle15_scaleX";
	rename -uid "1D260E9B-514A-B752-2182-8BBED2D2002D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 1 1 10 1 20 1 50 1 60 1 70 1 80 1;
	setAttr -s 8 ".kit[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kot[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle15_scaleY";
	rename -uid "7AB036F9-6046-B03C-6D25-CDAE6EE62E9C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 1 1 10 1 20 1 50 1 60 1 70 1 80 1;
	setAttr -s 8 ".kit[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kot[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle15_scaleZ";
	rename -uid "C2909335-894F-B663-CDDD-C29C18A0E055";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 1 1 10 1 20 1 50 1 60 1 70 1 80 1;
	setAttr -s 8 ".kit[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kot[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle16_visibility";
	rename -uid "9239DB10-6C40-80D2-A3A8-3A9D4F6CFA71";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 1 1 10 1 20 1 50 1 60 1 70 1 80 1;
	setAttr -s 8 ".kit[0:7]"  9 1 9 9 1 1 9 9;
	setAttr -s 8 ".kot[0:7]"  5 1 5 5 1 1 5 5;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 0 0 1 1 0 0;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "nurbsCircle16_translateX";
	rename -uid "84191247-3F46-B427-5BF0-52894C54E1CF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 1 0 10 0 20 0 50 0 60 0 70 0 80 0;
	setAttr -s 8 ".kit[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kot[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "nurbsCircle16_translateY";
	rename -uid "3115E513-DC43-4E95-E392-AF80680B4664";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 1 0 10 0 20 0 50 0 60 0 70 0 80 0;
	setAttr -s 8 ".kit[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kot[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "nurbsCircle16_translateZ";
	rename -uid "86C0DB2D-DB49-4AA0-4928-20825AAE7C4B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 1 0 10 0 20 0 50 0 60 0 70 0 80 0;
	setAttr -s 8 ".kit[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kot[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "nurbsCircle16_rotateX";
	rename -uid "26E758DD-AC42-3D5D-53CD-5D944EE5BCC6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 1 0 10 0 20 0 50 0 60 0 70 0 80 0;
	setAttr -s 8 ".kit[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kot[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "nurbsCircle16_rotateY";
	rename -uid "78E1E3F7-4049-1977-F92F-D0B81E71F41C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 1 0 10 0 20 0 50 0 60 0 70 0 80 0;
	setAttr -s 8 ".kit[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kot[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "nurbsCircle16_rotateZ";
	rename -uid "F7A56DC9-1743-D691-7693-358E09A14FAF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 1 0 10 0 20 0 50 0 60 0 70 0 80 0;
	setAttr -s 8 ".kit[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kot[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle16_scaleX";
	rename -uid "020A83AC-7F4A-7D34-1262-95B343D4BE2C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 1 1 10 1 20 1 50 1 60 1 70 1 80 1;
	setAttr -s 8 ".kit[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kot[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle16_scaleY";
	rename -uid "0592653C-E241-B0F7-F34C-3DBAAAD427E4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 1 1 10 1 20 1 50 1 60 1 70 1 80 1;
	setAttr -s 8 ".kit[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kot[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle16_scaleZ";
	rename -uid "D934C4CF-BA4E-77FF-22AD-56AED692AA77";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 1 1 10 1 20 1 50 1 60 1 70 1 80 1;
	setAttr -s 8 ".kit[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kot[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle12_visibility";
	rename -uid "67BA03C4-D643-3C58-6060-B78824EF8623";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 1 1 10 1 15 1 20 1 50 1 60 1 70 1 80 1;
	setAttr -s 9 ".kit[0:8]"  9 1 9 9 1 1 1 9 
		9;
	setAttr -s 9 ".kot[0:8]"  5 1 5 5 5 1 1 5 
		5;
	setAttr -s 9 ".kix[1:8]"  1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[1:8]"  0 0 0 0 0 0 0 0;
	setAttr -s 9 ".kox[1:8]"  1 0 0 0 1 1 0 0;
	setAttr -s 9 ".koy[1:8]"  0 0 0 0 0 0 0 0;
createNode animCurveTL -n "nurbsCircle12_translateX";
	rename -uid "7B688CE1-5843-36B7-493F-5F9EE0557FC9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 -57.860577312074241 1 -91.105277263525053
		 10 -29.836560098242998 15 -35.534589488618494 20 -29.836560098242998 22 -30.710906853523085
		 25 -85.695821102082604 28 -92.522735747610255 30 -100.31414685968819 33 -87.832271290559902
		 40 -56.557826096343319 50 -86.896590858157751 55 -78.10858046175575 60 -91.105277263525053
		 70 -91.105277263525053 80 -57.050054537379239 90 -64.000178545256531 95 -50.874418046412487
		 100 -28.917623163032388 105 -35.122662692964113 110 -30.599437295628917;
	setAttr -s 21 ".kit[1:20]"  1 18 18 1 18 18 18 18 
		1 18 1 18 1 18 18 18 18 18 18 18;
	setAttr -s 21 ".kot[1:20]"  1 18 18 1 18 18 18 18 
		1 18 1 18 1 18 18 18 18 18 18 18;
	setAttr -s 21 ".kix[1:20]"  0.010837572626769543 1 1 1 0.031753744930028915 
		0.0061031803488731384 0.014250072650611401 1 1 1 0.010837572626769543 1 0.010837572626769543 
		1 1 1 0.011875906027853489 1 1 1;
	setAttr -s 21 ".kiy[1:20]"  -0.99994128942489624 0 0 0 -0.99949568510055542 
		-0.99998140335083008 -0.99989843368530273 0 0 0 -0.99994128942489624 0 -0.99994128942489624 
		0 0 0 0.99992942810058594 0 0 0;
	setAttr -s 21 ".kox[1:20]"  1 1 1 1 0.031753744930028915 0.0061031803488731384 
		0.014250073581933975 1 1 1 1 1 1 1 1 1 0.011875906027853489 1 1 1;
	setAttr -s 21 ".koy[1:20]"  0 0 0 0 -0.9994957447052002 -0.99998140335083008 
		-0.99989849328994751 0 0 0 0 0 0 0 0 0 0.99992942810058594 0 0 0;
createNode animCurveTL -n "nurbsCircle12_translateY";
	rename -uid "9AA3966F-B04F-06E3-0722-4AA7A0C03616";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 -30.621132149172112 1 5.8849689096110751
		 10 -14.077411679338553 15 -14.077411679338553 20 -14.077411679338553 28 -20.893923106125477
		 30 7.3291183688530452 33 7.3291183688530452 36 -20.220054369781934 40 -4.5608992032176729
		 45 30.365869044582226 50 19.092378778455199 60 5.8849689096110751 70 5.8849689096110751
		 80 -41.266645985735664 85 -34.398882015532621 95 -27.480034794546228 105 -26.707892872003441;
	setAttr -s 18 ".kit[1:17]"  1 18 18 1 18 18 1 18 
		18 18 1 1 18 18 18 18 18;
	setAttr -s 18 ".kot[1:17]"  1 18 18 1 18 18 1 18 
		18 18 1 1 18 18 18 18 18;
	setAttr -s 18 ".kix[1:17]"  0.20146802067756653 1 1 1 1 1 0.0059011238627135754 
		1 0.0074129253625869751 1 0.20146802067756653 0.20146802067756653 1 1 0.045287325978279114 
		0.1770336925983429 1;
	setAttr -s 18 ".kiy[1:17]"  0.97949510812759399 0 0 0 0 0 0.99998259544372559 
		0 0.99997252225875854 0 0.97949510812759399 0.97949510812759399 0 0 0.9989740252494812 
		0.98420476913452148 0;
	setAttr -s 18 ".kox[1:17]"  1 1 1 1 1 1 0.0059011238627135754 1 0.0074129258282482624 
		1 1 1 1 1 0.045287325978279114 0.1770336925983429 1;
	setAttr -s 18 ".koy[1:17]"  0 0 0 0 0 0 0.99998259544372559 0 0.99997252225875854 
		0 0 0 0 0 0.9989740252494812 0.98420476913452148 0;
createNode animCurveTL -n "nurbsCircle12_translateZ";
	rename -uid "1AB7D2BA-3E42-7C66-3ABA-CEB3BEA881CE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 16.471366084133965 1 43.764211662177217
		 10 8.4600302642494398 15 -24.175504291866673 20 8.4600302642494398 22 23.934667037781782
		 25 25.77351523930156 28 1.2507556389729704 30 8.3557990882208344 33 9.8367090372544794
		 40 17.801307506910174 50 19.696886594130788 55 76.792305452835535 60 43.764211662177217
		 70 43.764211662177217 80 25.162230835730384 85 46.341268200693946 90 30.399644140537134
		 100 -31.795590677126313 105 14.084375303007675 110 14.464150199820494;
	setAttr -s 21 ".kit[1:20]"  1 18 18 1 18 18 18 18 
		1 18 1 18 1 18 18 18 18 18 18 18;
	setAttr -s 21 ".kot[1:20]"  1 18 18 1 18 18 18 18 
		1 18 1 18 1 18 18 18 18 18 18 18;
	setAttr -s 21 ".kix[1:20]"  0.02288738451898098 0.0085857268422842026 
		1 0.0085857268422842026 0.022653287276625633 1 1 0.028124725446105003 0.030196694657206535 
		0.073074005544185638 0.02288738451898098 1 0.02288738451898098 1 1 1 0.0079985270276665688 
		1 0.17987452447414398 1;
	setAttr -s 21 ".kiy[1:20]"  0.99973797798156738 -0.99996316432952881 
		0 -0.99996316432952881 0.99974340200424194 0 0 0.99960440397262573 0.99954390525817871 
		0.99732649326324463 0.99973797798156738 0 0.99973797798156738 0 0 0 -0.99996799230575562 
		0 0.98368960618972778 0;
	setAttr -s 21 ".kox[1:20]"  1 0.008585725910961628 1 0.008585725910961628 
		0.022653287276625633 1 1 0.028124723583459854 0.030196694657206535 0.073074012994766235 
		1 1 1 1 1 1 0.0079985270276665688 1 0.17987452447414398 1;
	setAttr -s 21 ".koy[1:20]"  0 -0.99996310472488403 0 -0.99996310472488403 
		0.99974346160888672 0 0 0.99960440397262573 0.99954396486282349 0.9973265528678894 
		0 0 0 0 0 0 -0.99996799230575562 0 0.98368960618972778 0;
createNode animCurveTA -n "nurbsCircle12_rotateX";
	rename -uid "ADCC68E4-6346-443A-AE49-B6A0AC99D8B5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 -24.77848291268003 1 54.308553034584989
		 10 36.514788403873688 15 -2.4517421380061966 17 64.567318856547033 20 76.077752803346172
		 25 -150.66920221083859 30 -168.00483569390892 33 -168.00483569390892 36 -148.71587707299631
		 40 154.34285787889883 50 186.77478360464482 55 241.54300666207024 60 54.308553034584989
		 70 54.308553034584989 80 -33.214119403861389 90 -79.884156064220505 95 -12.622303616998726
		 100 -7.6400333071306417 105 29.925550717940126 110 47.151855556130968;
	setAttr -s 21 ".kit[1:20]"  1 18 18 18 1 18 18 1 
		18 18 1 18 1 18 18 18 18 18 18 18;
	setAttr -s 21 ".kot[1:20]"  1 18 18 18 1 18 18 1 
		18 18 1 18 1 18 18 18 18 18 18 18;
	setAttr -s 21 ".kix[1:20]"  0.35120600461959839 0.50740498304367065 
		1 0.20308320224285126 0.50740498304367065 0.22370332479476929 1 1 0.12282917648553848 
		0.23829908668994904 0.35120600461959839 1 0.35120600461959839 1 0.33521857857704163 
		1 0.6240307092666626 0.6240307092666626 0.39943942427635193 1;
	setAttr -s 21 ".kiy[1:20]"  0.93629825115203857 -0.86170768737792969 
		0 0.97916144132614136 -0.86170768737792969 -0.97465723752975464 0 0 0.99242788553237915 
		0.97119182348251343 0.93629825115203857 0 0.93629825115203857 0 -0.94214046001434326 
		0 0.78139978647232056 0.78139978647232056 0.9167596697807312 0;
	setAttr -s 21 ".kox[1:20]"  1 0.50740498304367065 1 0.20308321714401245 
		0.50740498304367065 0.22370332479476929 1 1 0.12282917648553848 0.23829908668994904 
		1 1 1 1 0.33521854877471924 1 0.6240307092666626 0.6240307092666626 0.39943942427635193 
		1;
	setAttr -s 21 ".koy[1:20]"  0 -0.86170768737792969 0 0.97916150093078613 
		-0.86170768737792969 -0.97465729713439941 0 0 0.99242782592773438 0.97119182348251343 
		0 0 0 0 -0.94214040040969849 0 0.78139978647232056 0.78139972686767578 0.9167596697807312 
		0;
createNode animCurveTA -n "nurbsCircle12_rotateY";
	rename -uid "8C4F27AD-0C46-7D6E-6433-58A70551B5AD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 19.278633500653267 1 -26.928047684442976
		 10 -42.493777757293572 15 19.162235857879057 17 -7.2436372968883562 20 -9.057908587233058
		 25 -140.31691822178402 30 -175.43090326561062 33 -175.43090326561062 36 -175.32764240651716
		 40 -120.067615815011 50 -20.549725049543174 55 -45.202229620625083 60 -26.928047684442976
		 70 -26.928047684442976 80 -65.951111585612452 90 -82.316760600930522 95 -51.161684496895099
		 100 33.802374002163944 105 -34.02140978621 110 -34.803559761012799;
	setAttr -s 21 ".kit[1:20]"  1 18 18 18 1 18 18 1 
		18 18 1 18 1 18 18 18 18 18 18 18;
	setAttr -s 21 ".kot[1:20]"  1 18 18 18 1 18 18 1 
		18 18 1 18 1 18 18 18 18 18 18 18;
	setAttr -s 21 ".kix[1:20]"  0.82798737287521362 1 1 0.7961774468421936 
		1 0.14203746616840363 1 1 0.99906593561172485 0.21107357740402222 0.82798737287521362 
		1 0.82798737287521362 1 0.65292072296142578 1 0.20138061046600342 1 0.98122149705886841 
		1;
	setAttr -s 21 ".kiy[1:20]"  0.56074672937393188 0 0 -0.60506314039230347 
		0 -0.98986130952835083 0 0 0.043213404715061188 0.97747009992599487 0.56074672937393188 
		0 0.56074672937393188 0 -0.75742632150650024 0 0.97951298952102661 0 -0.19288419187068939 
		0;
	setAttr -s 21 ".kox[1:20]"  1 1 1 0.79617750644683838 1 0.14203746616840363 
		1 1 0.99906587600708008 0.21107357740402222 1 1 1 1 0.65292072296142578 1 0.20138061046600342 
		1 0.98122149705886841 1;
	setAttr -s 21 ".koy[1:20]"  0 0 0 -0.60506319999694824 0 -0.98986124992370605 
		0 0 0.043213400989770889 0.97747015953063965 0 0 0 0 -0.75742632150650024 0 0.97951298952102661 
		0 -0.19288419187068939 0;
createNode animCurveTA -n "nurbsCircle12_rotateZ";
	rename -uid "AD759380-0F44-3479-A33E-B2B049C136AC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 -118.89557508724543 1 -142.52898847056622
		 10 -41.376898367618743 15 -75.214545154198476 17 -74.292839295984592 20 -75.608899238200181
		 25 50.189365511433948 30 48.192950098585634 33 48.192950098585634 36 84.569409209487162
		 40 -235.88204974606089 50 -204.09041478368545 55 -237.03553960452905 60 -142.52898847056622
		 70 -142.52898847056622 80 7.7593276909951765 90 41.015946938797072 95 -37.513460943626185
		 100 -22.950413331298421 105 -20.451749365137584 110 -39.756133094950521;
	setAttr -s 21 ".kit[1:20]"  1 18 18 18 1 18 18 1 
		18 18 1 18 1 18 18 18 18 18 18 18;
	setAttr -s 21 ".kot[1:20]"  1 18 18 18 1 18 18 1 
		18 18 1 18 1 18 18 18 18 18 18 18;
	setAttr -s 21 ".kix[1:20]"  0.67924022674560547 1 1 1 1 1 1 0.8937993049621582 
		1 1 0.67924022674560547 1 0.67924022674560547 1 0.25175631046295166 1 1 0.84686124324798584 
		1 1;
	setAttr -s 21 ".kiy[1:20]"  -0.73391610383987427 0 0 0 0 0 0 -0.4484671950340271 
		0 0 -0.73391610383987427 0 -0.73391610383987427 0 0.96779072284698486 0 0 0.5318138599395752 
		0 0;
	setAttr -s 21 ".kox[1:20]"  1 1 1 1 1 1 1 0.89379924535751343 1 1 1 
		1 1 1 0.25175631046295166 1 1 0.84686124324798584 1 1;
	setAttr -s 21 ".koy[1:20]"  0 0 0 0 0 0 0 -0.4484671950340271 0 0 0 
		0 0 0 0.96779066324234009 0 0 0.5318138599395752 0 0;
createNode animCurveTU -n "nurbsCircle12_scaleX";
	rename -uid "615A6E64-5E4E-7C5F-4D79-39A666515798";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 1 1 10 1 15 1 20 1 50 1 60 1 70 1 80 1;
	setAttr -s 9 ".kit[1:8]"  1 18 18 1 1 1 18 18;
	setAttr -s 9 ".kot[1:8]"  1 18 18 1 1 1 18 18;
	setAttr -s 9 ".kix[1:8]"  1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[1:8]"  0 0 0 0 0 0 0 0;
	setAttr -s 9 ".kox[1:8]"  1 1 1 1 1 1 1 1;
	setAttr -s 9 ".koy[1:8]"  0 0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle12_scaleY";
	rename -uid "76DE6F3F-0C4A-9C31-5621-53B4E735CD6F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 1 1 10 1 15 1 20 1 50 1 60 1 70 1 80 1;
	setAttr -s 9 ".kit[1:8]"  1 18 18 1 1 1 18 18;
	setAttr -s 9 ".kot[1:8]"  1 18 18 1 1 1 18 18;
	setAttr -s 9 ".kix[1:8]"  1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[1:8]"  0 0 0 0 0 0 0 0;
	setAttr -s 9 ".kox[1:8]"  1 1 1 1 1 1 1 1;
	setAttr -s 9 ".koy[1:8]"  0 0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle12_scaleZ";
	rename -uid "C9A4BA8F-DA47-1E0C-C73F-FE825E1373D3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 1 1 10 1 15 1 20 1 50 1 60 1 70 1 80 1;
	setAttr -s 9 ".kit[1:8]"  1 18 18 1 1 1 18 18;
	setAttr -s 9 ".kot[1:8]"  1 18 18 1 1 1 18 18;
	setAttr -s 9 ".kix[1:8]"  1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[1:8]"  0 0 0 0 0 0 0 0;
	setAttr -s 9 ".kox[1:8]"  1 1 1 1 1 1 1 1;
	setAttr -s 9 ".koy[1:8]"  0 0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle12_Grip";
	rename -uid "CEBF4CD7-A645-EFD9-4A4F-B1A5EF4A8761";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0.5 1 0.75 10 0 15 0 17 1 20 1 50 0 60 0.75
		 70 0.75 80 0;
	setAttr -s 10 ".kit[1:9]"  1 18 18 18 1 1 1 18 
		18;
	setAttr -s 10 ".kot[1:9]"  1 18 18 18 1 1 1 18 
		18;
	setAttr -s 10 ".kix[1:9]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".kiy[1:9]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 10 ".kox[1:9]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 10 ".koy[1:9]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle13_visibility";
	rename -uid "8904089A-2740-EE0A-A7CD-E0935EC03C00";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 1 1 10 1 20 1 50 1 60 1 70 1 80 1;
	setAttr -s 8 ".kit[0:7]"  9 1 9 9 1 1 9 9;
	setAttr -s 8 ".kot[0:7]"  5 1 5 5 1 1 5 5;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 0 0 1 1 0 0;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "nurbsCircle13_translateX";
	rename -uid "5A250603-0A4E-55FC-67D3-C082174A0858";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 7.0766990921498722 1 -24.732710725682772
		 10 -44.38567132864231 15 -19.416215416812729 20 -1.2421858298287241 25 -162.05333024844705
		 45 -49.425164495789318 50 -24.732710725682772 60 -24.732710725682772 70 -24.732710725682772
		 80 -24.732710725682772 105 21.596246383283841;
	setAttr -s 12 ".kit[1:11]"  1 18 18 18 18 18 1 1 
		18 18 18;
	setAttr -s 12 ".kot[1:11]"  1 18 18 18 18 18 1 1 
		18 18 18;
	setAttr -s 12 ".kix[1:11]"  1 1 0.0096572451293468475 1 1 0.0075854351744055748 
		1 1 1 1 1;
	setAttr -s 12 ".kiy[1:11]"  0 0 0.99995338916778564 0 0 0.99997127056121826 
		0 0 0 0 0;
	setAttr -s 12 ".kox[1:11]"  1 1 0.0096572460606694221 1 1 0.0075854351744055748 
		1 1 1 1 1;
	setAttr -s 12 ".koy[1:11]"  0 0 0.99995338916778564 0 0 0.99997127056121826 
		0 0 0 0 0;
createNode animCurveTL -n "nurbsCircle13_translateY";
	rename -uid "CA8D6CAA-6445-7C8A-4007-088EE35BE5C7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 54.600829382795503 1 40.568203616787613
		 10 16.789181353216208 15 70.743862535395067 20 -33.800553907823321 25 300.81881813765955
		 45 116.30302791504174 50 40.568203616787613 60 40.568203616787613 70 40.568203616787613
		 80 40.568203616787613 105 24.645776454759773;
	setAttr -s 12 ".kit[1:11]"  1 18 18 18 18 18 1 1 
		18 18 18;
	setAttr -s 12 ".kot[1:11]"  1 18 18 18 18 18 1 1 
		18 18 18;
	setAttr -s 12 ".kix[1:11]"  1 1 1 1 1 0.0040025198832154274 1 1 1 1 
		1;
	setAttr -s 12 ".kiy[1:11]"  0 0 0 0 0 -0.9999920129776001 0 0 0 0 0;
	setAttr -s 12 ".kox[1:11]"  1 1 1 1 1 0.0040025198832154274 1 1 1 1 
		1;
	setAttr -s 12 ".koy[1:11]"  0 0 0 0 0 -0.99999195337295532 0 0 0 0 
		0;
createNode animCurveTL -n "nurbsCircle13_translateZ";
	rename -uid "F0846278-1D4D-F039-4C08-05B895AC8CFE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 16.921727310373573 1 64.150664189602907
		 10 -62.289288888166951 15 23.06581391837441 20 -18.91218846244341 25 -3.6552085514274757
		 45 -197.53787130996679 50 64.150664189602907 60 64.150664189602907 70 64.150664189602907
		 80 64.150664189602907 105 -29.475205526711452;
	setAttr -s 12 ".kit[1:11]"  1 18 18 18 18 18 1 1 
		18 18 18;
	setAttr -s 12 ".kot[1:11]"  1 18 18 18 18 18 1 1 
		18 18 18;
	setAttr -s 12 ".kix[1:11]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".kiy[1:11]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 12 ".kox[1:11]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".koy[1:11]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "nurbsCircle13_rotateX";
	rename -uid "E387DE28-144E-2352-B0DA-79A2180DA945";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 1 0 10 0 20 0 50 0 60 0 70 0 80 0;
	setAttr -s 8 ".kit[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kot[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "nurbsCircle13_rotateY";
	rename -uid "C25F035E-0148-69FD-2A9F-C6AED3D3455D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 1 0 10 0 20 0 50 0 60 0 70 0 80 0;
	setAttr -s 8 ".kit[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kot[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "nurbsCircle13_rotateZ";
	rename -uid "60DD73E0-4140-4657-9C61-D7BE0ECE0DC9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 1 0 10 0 20 0 50 0 60 0 70 0 80 0;
	setAttr -s 8 ".kit[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kot[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle13_scaleX";
	rename -uid "FD625DD3-E24F-B9A2-E150-28B6DFDBF021";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 1 1 10 1 20 1 50 1 60 1 70 1 80 1;
	setAttr -s 8 ".kit[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kot[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle13_scaleY";
	rename -uid "27756C83-3441-9AEC-BED0-DB9F0395CC15";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 1 1 10 1 20 1 50 1 60 1 70 1 80 1;
	setAttr -s 8 ".kit[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kot[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle13_scaleZ";
	rename -uid "13CD7BF7-D14B-2E83-FFE1-188FF894A36D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 1 1 10 1 20 1 50 1 60 1 70 1 80 1;
	setAttr -s 8 ".kit[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kot[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle10_visibility";
	rename -uid "9F405BF5-164A-EDC2-5EEC-528D9350C824";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 1 1 1 10 1 20 1 50 1 60 1 70 1 75 1 80 1
		 85 1 90 1 95 1 100 1 105 1;
	setAttr -s 14 ".kit[1:13]"  1 9 9 1 1 9 9 9 
		9 9 9 9 9;
	setAttr -s 14 ".kot[0:13]"  5 1 5 5 1 1 5 5 
		5 5 5 5 5 5;
	setAttr -s 14 ".kix[1:13]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 14 ".kiy[1:13]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 14 ".kox[1:13]"  1 0 0 1 1 0 0 0 0 0 0 0 0;
	setAttr -s 14 ".koy[1:13]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "nurbsCircle10_translateX";
	rename -uid "6182ED96-944A-ACD1-7277-8DAC575209B2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 24.32 1 30.512515673931471 10 16.527812547131688
		 20 16.527812547131688 50 16.465458735279825 55 17.040925506842818 60 30.512515673931471
		 70 30.512515673931471 75 2.067531670379374 80 30.512515673931471 85 83.306481256797227
		 90 83.306481256797227 95 26.138462282328405 97 4.0078334870988428 98 13.197630646110014
		 100 72.318951867574739 102 39.414274326516342 105 -7.0857180068889747 110 -2.0262582751657021;
	setAttr -s 19 ".kit[1:18]"  1 18 18 1 18 1 18 18 
		18 18 18 18 18 18 18 18 18 18;
	setAttr -s 19 ".kot[1:18]"  1 18 18 1 18 1 18 18 
		18 18 18 18 18 18 18 18 18 18;
	setAttr -s 19 ".kix[1:18]"  0.14828866720199585 1 1 0.14828866720199585 
		0.11980590224266052 0.14828866720199585 1 1 0.0051288357935845852 1 1 0.0036780519876629114 
		1 0.0018298602662980556 1 0.0026236840058118105 1 1;
	setAttr -s 19 ".kiy[1:18]"  -0.98894411325454712 0 0 -0.98894411325454712 
		0.9927973747253418 -0.98894411325454712 0 0 0.99998682737350464 0 0 -0.99999326467514038 
		0 0.99999839067459106 0 -0.99999654293060303 0 0;
	setAttr -s 19 ".kox[1:18]"  1 1 1 1 0.11980589479207993 1 1 1 0.0051288362592458725 
		1 1 0.0036780515220016241 1 0.001829860033467412 1 0.0026236842386424541 1 1;
	setAttr -s 19 ".koy[1:18]"  0 0 0 0 0.9927973747253418 0 0 0 0.99998682737350464 
		0 0 -0.99999320507049561 0 0.99999833106994629 0 -0.99999654293060303 0 0;
createNode animCurveTL -n "nurbsCircle10_translateY";
	rename -uid "7C6B41FD-EC4A-5384-7EE9-EA96C810BAE9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 -4.5 1 11.128454333806147 10 5.4356902440700736
		 20 11.128454333806147 33 18.208813717138113 40 -0.7615632382645714 50 10.694849923619358
		 55 9.5658915573841448 60 11.128454333806147 70 11.128454333806147 75 37.91456995615917
		 80 76.900240492638602 85 69.376733149378254 90 60.482317293819534 95 69.376733149378254
		 100 -9.1749789813075324 105 -9.1749789813075324 110 40.764781021805845;
	setAttr -s 18 ".kit[1:17]"  1 18 18 18 18 1 18 1 
		18 18 18 18 18 18 18 18 18;
	setAttr -s 18 ".kot[1:17]"  1 18 18 18 18 1 18 1 
		18 18 18 18 18 18 18 18 18;
	setAttr -s 18 ".kix[1:17]"  1 1 0.074817046523094177 1 1 1 1 1 1 0.0063349064439535141 
		1 0.025370603427290916 1 1 1 1 1;
	setAttr -s 18 ".kiy[1:17]"  0 0 0.99719727039337158 0 0 0 0 0 0 0.99997991323471069 
		0 -0.99967807531356812 0 0 0 0 0;
	setAttr -s 18 ".kox[1:17]"  1 1 0.074817053973674774 1 1 1 1 1 1 0.0063349064439535141 
		1 0.025370603427290916 1 1 1 1 1;
	setAttr -s 18 ".koy[1:17]"  0 0 0.99719727039337158 0 0 0 0 0 0 0.99997991323471069 
		0 -0.99967807531356812 0 0 0 0 0;
createNode animCurveTL -n "nurbsCircle10_translateZ";
	rename -uid "CAE18D20-C747-AA5E-4093-3195DB6F0581";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 -11.81 1 -17.343925574366008 10 -33.018593994004959
		 20 -33.018593994004959 50 -28.037340900343079 55 -20.530345743101396 60 -17.343925574366008
		 70 -17.343925574366008 75 -41.415798710006214 80 -32.612434993093963 85 -24.538960553739265
		 90 -40.89228464313576 95 -50.740152465156349 97 12.034594063089834 98 7.0860687698289553
		 100 2.5559537529237346 102 25.125653750412134 105 -11.539950720298172 110 -21.316342105826742;
	setAttr -s 19 ".kit[1:18]"  1 18 18 1 18 1 18 18 
		18 18 18 18 18 18 18 18 18 18;
	setAttr -s 19 ".kot[1:18]"  1 18 18 1 18 1 18 18 
		18 18 18 18 18 18 18 18 18 18;
	setAttr -s 19 ".kix[1:18]"  0.018294986337423325 1 1 0.018294986337423325 
		0.038935251533985138 0.018294986337423325 1 1 0.024681152775883675 1 0.015900567173957825 
		1 1 0.013186398893594742 1 1 0.0071772304363548756 1;
	setAttr -s 19 ".kiy[1:18]"  -0.99983268976211548 0 0 -0.99983268976211548 
		0.99924170970916748 -0.99983268976211548 0 0 0.99969542026519775 0 -0.9998735785484314 
		0 0 -0.99991309642791748 0 0 -0.99997425079345703 0;
	setAttr -s 19 ".kox[1:18]"  1 1 1 1 0.038935251533985138 1 1 1 0.024681152775883675 
		1 0.015900567173957825 1 1 0.013186398893594742 1 1 0.0071772304363548756 1;
	setAttr -s 19 ".koy[1:18]"  0 0 0 0 0.99924170970916748 0 0 0 0.99969542026519775 
		0 -0.9998735785484314 0 0 -0.99991309642791748 0 0 -0.99997425079345703 0;
createNode animCurveTA -n "nurbsCircle10_rotateX";
	rename -uid "FFD879F3-0F4D-BA80-4F28-83AF7155AD7D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  0 35.448 1 0 10 -54.725598415173991 20 -54.725598415173991
		 25 -14.946941589240996 50 16.068942653239297 55 19.182596004976997 60 0 70 0 75 -44.472724935004962
		 80 -70.254566447205448 85 -80.923167264458215 90 -80.923167264458215 95 -15.518347417211968
		 97 7.1174196142234329 98 -7.2695031622420458 100 -112.95686263710152 102 44.528697781288265
		 105 36.513651799467354 110 -31.848451133491206;
	setAttr -s 20 ".kit[1:19]"  1 18 18 1 1 18 1 18 
		18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 20 ".kot[1:19]"  1 18 18 1 1 18 1 18 
		18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 20 ".kix[1:19]"  1 1 1 1 1 1 1 1 0.32174178957939148 0.54789656400680542 
		1 1 0.18648344278335571 1 0.059540361166000366 1 1 0.28546160459518433 1;
	setAttr -s 20 ".kiy[1:19]"  0 0 0 0 0 0 0 0 -0.94682741165161133 -0.83654612302780151 
		0 0 0.98245805501937866 0 -0.9982258677482605 0 0 -0.95839011669158936 0;
	setAttr -s 20 ".kox[1:19]"  1 1 1 1 1 1 1 1 0.32174178957939148 0.54789656400680542 
		1 1 0.18648345768451691 1 0.059540364891290665 1 1 0.28546160459518433 1;
	setAttr -s 20 ".koy[1:19]"  0 0 0 0 0 0 0 0 -0.94682741165161133 -0.83654612302780151 
		0 0 0.98245805501937866 0 -0.99822592735290527 0 0 -0.95839011669158936 0;
createNode animCurveTA -n "nurbsCircle10_rotateY";
	rename -uid "B24AD9CE-374E-A33E-674D-BEA606691862";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  0 37.28 1 0 10 -40.205301077510221 20 -40.205301077510221
		 25 8.509003499505118 50 14.308225387471651 55 28.112381789330755 60 0 70 0 75 -18.487951890459186
		 80 2.09870155883966 85 -21.651610578174132 90 -21.651610578174132 95 -49.99424839309534
		 97 27.035492936037173 98 69.140877304044039 100 56.857048847724968 102 81.836416100338482
		 105 0.68815945581109705 110 -34.136345135029671;
	setAttr -s 20 ".kit[1:19]"  1 18 18 1 1 18 1 18 
		18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 20 ".kot[1:19]"  1 18 18 1 1 18 1 18 
		18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 20 ".kix[1:19]"  0.46864974498748779 1 1 1 0.46864974498748779 
		1 0.46864974498748779 1 1 1 1 1 1 0.060008160769939423 1 1 1 0.16249312460422516 
		1;
	setAttr -s 20 ".kiy[1:19]"  -0.88338404893875122 0 0 0 -0.88338404893875122 
		0 -0.88338404893875122 0 0 0 0 0 0 0.99819791316986084 0 0 0 -0.98670971393585205 
		0;
	setAttr -s 20 ".kox[1:19]"  1 1 1 1 1 1 1 1 1 1 1 1 1 0.060008160769939423 
		1 1 1 0.16249310970306396 1;
	setAttr -s 20 ".koy[1:19]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0.99819791316986084 
		0 0 0 -0.98670965433120728 0;
createNode animCurveTA -n "nurbsCircle10_rotateZ";
	rename -uid "A01D72E2-0C42-A43C-DF3F-CAA5C1E5DE46";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  0 2.71 1 0 10 -7.1184728701100211 20 -7.1184728701100211
		 25 14.211875776527284 50 -48.589314246352529 55 -28.711531128451352 60 0 70 0 75 -19.529669223565261
		 80 -83.063227896683742 85 -132.99538435559109 90 -132.99538435559109 95 -37.287236034252587
		 97 -33.545459890602302 98 -56.849910471191286 100 -177.79562423159652 102 10.491932534912339
		 105 -51.191669090555123 110 -18.902025480747358;
	setAttr -s 20 ".kit[1:19]"  1 18 18 1 1 18 1 18 
		18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 20 ".kot[1:19]"  1 18 18 1 1 18 1 18 
		18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 20 ".kix[1:19]"  1 1 1 1 1 0.44097545742988586 1 1 0.27622783184051514 
		0.20589259266853333 1 1 0.39140999317169189 1 0.049588583409786224 1 1 1 1;
	setAttr -s 20 ".kiy[1:19]"  0 0 0 0 0 0.89751911163330078 0 0 -0.96109211444854736 
		-0.97857451438903809 0 0 0.92021638154983521 0 -0.99876976013183594 0 0 0 0;
	setAttr -s 20 ".kox[1:19]"  1 1 1 1 1 0.44097545742988586 1 1 0.27622783184051514 
		0.20589260756969452 1 1 0.39140996336936951 1 0.049588583409786224 1 1 1 1;
	setAttr -s 20 ".koy[1:19]"  0 0 0 0 0 0.89751911163330078 0 0 -0.96109211444854736 
		-0.97857457399368286 0 0 0.92021644115447998 0 -0.99876976013183594 0 0 0 0;
createNode animCurveTU -n "nurbsCircle10_scaleX";
	rename -uid "0A7B0334-6C44-E6E1-4E24-2597027D0784";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 1 1 1 10 1 20 1 50 1 60 1 70 1 75 1 80 1
		 85 1 90 1 95 1 100 1 105 1;
	setAttr -s 14 ".kit[1:13]"  1 18 18 1 1 18 18 18 
		18 18 18 18 18;
	setAttr -s 14 ".kot[1:13]"  1 18 18 1 1 18 18 18 
		18 18 18 18 18;
	setAttr -s 14 ".kix[1:13]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 14 ".kiy[1:13]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 14 ".kox[1:13]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 14 ".koy[1:13]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle10_scaleY";
	rename -uid "DDFAFB6B-FF42-9822-2CEF-F7B6BAB30D82";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 1 1 1 10 1 20 1 50 1 60 1 70 1 75 1 80 1
		 85 1 90 1 95 1 100 1 105 1;
	setAttr -s 14 ".kit[1:13]"  1 18 18 1 1 18 18 18 
		18 18 18 18 18;
	setAttr -s 14 ".kot[1:13]"  1 18 18 1 1 18 18 18 
		18 18 18 18 18;
	setAttr -s 14 ".kix[1:13]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 14 ".kiy[1:13]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 14 ".kox[1:13]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 14 ".koy[1:13]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle10_scaleZ";
	rename -uid "67D50781-A547-54CC-25C0-2F87D30C9492";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 1 1 1 10 1 20 1 50 1 60 1 70 1 75 1 80 1
		 85 1 90 1 95 1 100 1 105 1;
	setAttr -s 14 ".kit[1:13]"  1 18 18 1 1 18 18 18 
		18 18 18 18 18;
	setAttr -s 14 ".kot[1:13]"  1 18 18 1 1 18 18 18 
		18 18 18 18 18;
	setAttr -s 14 ".kix[1:13]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 14 ".kiy[1:13]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 14 ".kox[1:13]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 14 ".koy[1:13]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle10_Grip";
	rename -uid "D4AC0B48-FC46-2723-D633-9D8932D6A2B0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 1 1 1 10 1 20 1 50 1 60 1 70 1 75 1 80 1
		 85 1 90 1 95 0 100 0 105 1;
	setAttr -s 14 ".kit[1:13]"  1 18 18 1 1 18 18 18 
		18 18 18 18 18;
	setAttr -s 14 ".kot[1:13]"  1 18 18 1 1 18 18 18 
		18 18 18 18 18;
	setAttr -s 14 ".kix[1:13]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 14 ".kiy[1:13]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 14 ".kox[1:13]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 14 ".koy[1:13]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle11_visibility";
	rename -uid "C02DE8ED-324B-72AE-B4AC-82882BD036A9";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 1 1 10 1 20 1 50 1 60 1 70 1 80 1;
	setAttr -s 8 ".kit[0:7]"  9 1 9 9 1 1 9 9;
	setAttr -s 8 ".kot[0:7]"  5 1 5 5 1 1 5 5;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 0 0 1 1 0 0;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "nurbsCircle11_translateX";
	rename -uid "F49B4708-2D40-F2C1-6DA9-749046571CA5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 1 -48.926633597951145 10 -48.926633597951145
		 20 -48.926633597951145 50 -48.926633597951145 60 -48.926633597951145 70 -48.926633597951145
		 80 -48.926633597951145 85 17.14291940267892 90 1.570450332733772 95 -21.998019478593559;
	setAttr -s 11 ".kit[1:10]"  1 18 18 1 1 18 18 18 
		18 18;
	setAttr -s 11 ".kot[1:10]"  1 18 18 1 1 18 18 18 
		18 18;
	setAttr -s 11 ".kix[1:10]"  1 1 1 1 1 1 1 1 0.010644683614373207 1;
	setAttr -s 11 ".kiy[1:10]"  0 0 0 0 0 0 0 0 -0.99994337558746338 0;
	setAttr -s 11 ".kox[1:10]"  1 1 1 1 1 1 1 1 0.010644683614373207 1;
	setAttr -s 11 ".koy[1:10]"  0 0 0 0 0 0 0 0 -0.99994337558746338 0;
createNode animCurveTL -n "nurbsCircle11_translateY";
	rename -uid "6BC2DA39-F047-3222-EADE-68804FD17A15";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 1 68.83228710488541 10 68.83228710488541
		 20 68.83228710488541 50 68.83228710488541 60 68.83228710488541 70 68.83228710488541
		 80 68.83228710488541 85 24.13993630989291 90 27.863913526634214 95 24.410291740610138;
	setAttr -s 11 ".kit[1:10]"  1 18 18 1 1 18 18 18 
		18 18;
	setAttr -s 11 ".kot[1:10]"  1 18 18 1 1 18 18 18 
		18 18;
	setAttr -s 11 ".kix[1:10]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 11 ".kiy[1:10]"  0 0 0 0 0 0 0 0 0 0;
	setAttr -s 11 ".kox[1:10]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 11 ".koy[1:10]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "nurbsCircle11_translateZ";
	rename -uid "F774EE06-3142-DE50-1D94-139A939374EC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 1 25.204556167072084 10 25.204556167072084
		 20 25.204556167072084 50 25.204556167072084 60 25.204556167072084 70 25.204556167072084
		 80 25.204556167072084 85 -33.86688599857262 90 -36.739205157776524 95 -20.4297500697228;
	setAttr -s 11 ".kit[1:10]"  1 18 18 1 1 18 18 18 
		18 18;
	setAttr -s 11 ".kot[1:10]"  1 18 18 1 1 18 18 18 
		18 18;
	setAttr -s 11 ".kix[1:10]"  1 1 1 1 1 1 1 0.024170063436031342 1 1;
	setAttr -s 11 ".kiy[1:10]"  0 0 0 0 0 0 0 -0.99970787763595581 0 0;
	setAttr -s 11 ".kox[1:10]"  1 1 1 1 1 1 1 0.024170059710741043 1 1;
	setAttr -s 11 ".koy[1:10]"  0 0 0 0 0 0 0 -0.99970781803131104 0 0;
createNode animCurveTA -n "nurbsCircle11_rotateX";
	rename -uid "C4416D41-364C-D588-4101-5EBA6EF41168";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 1 0 10 0 20 0 50 0 60 0 70 0 80 0;
	setAttr -s 8 ".kit[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kot[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "nurbsCircle11_rotateY";
	rename -uid "E6361735-0A47-6426-CE03-F0AA9620BD87";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 1 0 10 0 20 0 50 0 60 0 70 0 80 0;
	setAttr -s 8 ".kit[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kot[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "nurbsCircle11_rotateZ";
	rename -uid "D46E1BA6-E948-D4D1-2361-168783EF6727";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 1 0 10 0 20 0 50 0 60 0 70 0 80 0;
	setAttr -s 8 ".kit[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kot[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle11_scaleX";
	rename -uid "35315F5E-A64C-AFE7-DC75-99AAB5D4459D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 1 1 10 1 20 1 50 1 60 1 70 1 80 1;
	setAttr -s 8 ".kit[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kot[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle11_scaleY";
	rename -uid "4E9C9766-A74C-7C6E-971F-D6B0F58F63D2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 1 1 10 1 20 1 50 1 60 1 70 1 80 1;
	setAttr -s 8 ".kit[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kot[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle11_scaleZ";
	rename -uid "0236225D-394E-FDC9-DD7B-8CB93E4D9F82";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 1 1 10 1 20 1 50 1 60 1 70 1 80 1;
	setAttr -s 8 ".kit[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kot[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle4_visibility";
	rename -uid "27136092-FE44-141B-8FAD-BE8BD6CBADCA";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 1 1 1 10 1 20 1 30 1 40 1 50 1 60 1 70 1
		 80 1 95 1 100 1 105 1 110 1;
	setAttr -s 14 ".kit[0:13]"  9 1 9 9 9 9 1 1 
		9 9 9 9 1 9;
	setAttr -s 14 ".kot[1:13]"  1 5 5 5 5 1 1 5 
		5 5 5 5 5;
	setAttr -s 14 ".kix[1:13]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 14 ".kiy[1:13]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 14 ".kox[1:13]"  1 0 0 0 0 1 1 0 0 0 0 0 0;
	setAttr -s 14 ".koy[1:13]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "nurbsCircle4_translateX";
	rename -uid "7643DE66-CD41-7C51-99C2-A984D9126539";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0 1 4.0614646403397501 10 5.0341809550052403
		 20 5.0341809550052403 30 4.3251630748964329 40 3.5983181268255042 50 8.996062101353715
		 60 4.0614646403397501 70 4.0614646403397501 80 -0.51636908249486169 90 -3.0259238738255476
		 95 -3.0259238738255476 100 -3.0259238738255476 105 4.0614646403397501 110 4.0614646403397501;
	setAttr -s 15 ".kit[1:14]"  1 18 18 18 18 1 1 18 
		18 18 18 18 1 18;
	setAttr -s 15 ".kot[1:14]"  1 18 18 18 18 1 1 18 
		18 18 18 18 1 18;
	setAttr -s 15 ".kix[1:14]"  0.19864489138126373 1 1 0.50195825099945068 
		1 0.19864489138126373 0.19864489138126373 1 0.11677529662847519 1 1 1 1 1;
	setAttr -s 15 ".kiy[1:14]"  0.98007148504257202 0 0 -0.86489182710647583 
		0 0.98007148504257202 0.98007148504257202 0 -0.99315834045410156 0 0 0 0 0;
	setAttr -s 15 ".kox[1:14]"  1 1 1 0.50195819139480591 1 1 1 1 0.11677529662847519 
		1 1 1 1 1;
	setAttr -s 15 ".koy[1:14]"  0 0 0 -0.86489182710647583 0 0 0 0 -0.99315834045410156 
		0 0 0 0 0;
createNode animCurveTL -n "nurbsCircle4_translateY";
	rename -uid "29C4BD46-BE4A-A649-67D8-438D1272A599";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 -10.940681411198909 1 -9.4263461465913707
		 10 -17.470952994044026 20 -17.470952994044026 30 -15.297673674489946 40 -10.350631357348185
		 50 -7.01939941165476 60 -9.4263461465913707 70 -9.4263461465913707 80 -9.4263461465913707
		 95 -9.4263461465913707 100 -9.4263461465913707 105 -9.4263461465913707 110 -9.4263461465913707;
	setAttr -s 14 ".kit[1:13]"  1 18 18 18 18 1 1 18 
		18 18 18 1 18;
	setAttr -s 14 ".kot[1:13]"  1 18 18 18 18 1 1 18 
		18 18 18 1 18;
	setAttr -s 14 ".kix[1:13]"  0.090695016086101532 1 1 0.11624250560998917 
		0.10015889257192612 0.090695016086101532 0.090695016086101532 1 1 1 1 1 1;
	setAttr -s 14 ".kiy[1:13]"  0.99587869644165039 0 0 0.99322086572647095 
		0.99497151374816895 0.99587869644165039 0.99587869644165039 0 0 0 0 0 0;
	setAttr -s 14 ".kox[1:13]"  1 1 1 0.11624250560998917 0.10015889257192612 
		1 1 1 1 1 1 1 1;
	setAttr -s 14 ".koy[1:13]"  0 0 0 0.99322092533111572 0.99497151374816895 
		0 0 0 0 0 0 0 0;
createNode animCurveTL -n "nurbsCircle4_translateZ";
	rename -uid "EB32B61A-2343-1AAD-4D7E-86BF891E392C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 -3.8081731832173986 1 1.6198495618635889
		 10 -12.333237332209649 20 -12.333237332209649 30 -12.461118029820186 40 -11.491821316440767
		 50 -12.163145395565138 60 1.6198495618635889 70 1.6198495618635889 80 -2.894507662364731
		 90 -12.450119288098279 95 -12.450119288098279 100 -12.450119288098279 105 1.6198495618635889
		 110 1.6198495618635889;
	setAttr -s 15 ".kit[1:14]"  1 18 18 18 18 1 1 18 
		18 18 18 18 1 18;
	setAttr -s 15 ".kot[1:14]"  1 18 18 18 18 1 1 18 
		18 18 18 18 1 18;
	setAttr -s 15 ".kix[1:14]"  0.0644540935754776 1 1 1 1 0.0644540935754776 
		0.0644540935754776 1 0.059124190360307693 1 1 1 1 1;
	setAttr -s 15 ".kiy[1:14]"  0.99792063236236572 0 0 0 0 0.99792063236236572 
		0.99792063236236572 0 -0.99825066328048706 0 0 0 0 0;
	setAttr -s 15 ".kox[1:14]"  1 1 1 1 1 1 1 1 0.059124186635017395 1 
		1 1 1 1;
	setAttr -s 15 ".koy[1:14]"  0 0 0 0 0 0 0 0 -0.99825066328048706 0 
		0 0 0 0;
createNode animCurveTA -n "nurbsCircle4_rotateX";
	rename -uid "973E6E48-904D-F83C-22A1-AB94FBA95C95";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 -6.1852510082125551 1 0 10 -15.876437392608237
		 20 -29.761623625222867 30 -11.760323321593432 40 6.9489817603608026 50 12.026884685674691
		 60 0 70 0 80 9.4335346653313294 90 6.5605987611013523 95 -2.7260380520012659 100 -13.880792569217167
		 105 0 110 0;
	setAttr -s 15 ".kit[1:14]"  1 18 18 18 18 1 1 18 
		18 18 18 18 1 18;
	setAttr -s 15 ".kot[1:14]"  1 18 18 18 18 1 1 18 
		18 18 18 18 1 18;
	setAttr -s 15 ".kix[1:14]"  1 0.83609288930892944 1 0.79276406764984131 
		0.89507138729095459 1 1 1 1 0.94689983129501343 0.75959259271621704 1 1 1;
	setAttr -s 15 ".kiy[1:14]"  0 -0.5485878586769104 0 0.60952860116958618 
		0.44592291116714478 0 0 0 0 -0.32152867317199707 -0.65039914846420288 0 0 0;
	setAttr -s 15 ".kox[1:14]"  1 0.83609288930892944 1 0.79276400804519653 
		0.89507138729095459 1 1 1 1 0.94689983129501343 0.75959259271621704 1 1 1;
	setAttr -s 15 ".koy[1:14]"  0 -0.5485878586769104 0 0.60952866077423096 
		0.44592291116714478 0 0 0 0 -0.32152864336967468 -0.65039914846420288 0 0 0;
createNode animCurveTA -n "nurbsCircle4_rotateY";
	rename -uid "8854145F-B344-CD0C-8405-ADB9B8D00392";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 -35.432885635869184 1 -61.854854989490526
		 10 -62.773292210991436 20 -67.498308510683927 30 -52.669040837602935 40 -52.479746247013686
		 50 -62.229353011097764 60 -61.854854989490526 70 -61.854854989490526 80 -54.57451455956987
		 90 -40.030389974645686 95 -56.674057808919251 100 -47.958021128420242 105 -61.854854989490526
		 110 -61.854854989490526;
	setAttr -s 15 ".kit[1:14]"  1 18 18 18 18 1 1 18 
		18 18 18 18 1 18;
	setAttr -s 15 ".kot[1:14]"  1 18 18 18 18 1 1 18 
		18 18 18 18 1 18;
	setAttr -s 15 ".kix[1:14]"  0.47358965873718262 0.99234890937805176 
		1 0.999717116355896 1 0.47358965873718262 0.47358965873718262 1 0.90949243307113647 
		1 1 1 1 1;
	setAttr -s 15 ".kiy[1:14]"  -0.88074558973312378 -0.1234651505947113 
		0 0.023780733346939087 0 -0.88074558973312378 -0.88074558973312378 0 0.41572043299674988 
		0 0 0 0 0;
	setAttr -s 15 ".kox[1:14]"  1 0.99234890937805176 1 0.99971717596054077 
		1 1 1 1 0.90949243307113647 1 1 1 1 1;
	setAttr -s 15 ".koy[1:14]"  0 -0.1234651505947113 0 0.023780733346939087 
		0 0 0 0 0.41572040319442749 0 0 0 0 0;
createNode animCurveTA -n "nurbsCircle4_rotateZ";
	rename -uid "A2718767-F448-4A9C-3287-81823661F764";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0.16463416787494009 1 0 10 7.6853387152947983
		 20 23.753306167908715 30 5.6928431670638204 40 2.6818863291457253 50 -5.31200298565832
		 60 0 70 0 80 -14.760463414753273 90 -13.408944763546369 95 -0.9317202852282076 100 -8.594550639971132
		 105 0 110 0;
	setAttr -s 15 ".kit[1:14]"  1 18 18 18 18 1 1 18 
		18 18 18 18 1 18;
	setAttr -s 15 ".kot[1:14]"  1 18 18 18 18 1 1 18 
		18 18 18 18 1 18;
	setAttr -s 15 ".kix[1:14]"  1 0.88588172197341919 1 0.93528950214385986 
		0.97445183992385864 1 1 1 1 0.9858824610710144 1 1 1 1;
	setAttr -s 15 ".kiy[1:14]"  0 0.46391120553016663 0 -0.35388362407684326 
		-0.22459651529788971 0 0 0 0 0.16743913292884827 0 0 0 0;
	setAttr -s 15 ".kox[1:14]"  1 0.88588172197341919 1 0.93528950214385986 
		0.97445183992385864 1 1 1 1 0.98588240146636963 1 1 1 1;
	setAttr -s 15 ".koy[1:14]"  0 0.46391117572784424 0 -0.35388362407684326 
		-0.22459651529788971 0 0 0 0 0.16743911802768707 0 0 0 0;
createNode animCurveTU -n "nurbsCircle4_scaleX";
	rename -uid "13A3772C-CF47-B9D4-1D1E-0A970A6C758B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 1 1 1 10 1 20 1 30 1 40 1 50 1 60 1 70 1
		 80 1 95 1 100 1 105 1 110 1;
	setAttr -s 14 ".kit[1:13]"  1 18 18 18 18 1 1 18 
		18 18 18 1 18;
	setAttr -s 14 ".kot[1:13]"  1 18 18 18 18 1 1 18 
		18 18 18 1 18;
	setAttr -s 14 ".kix[1:13]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 14 ".kiy[1:13]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 14 ".kox[1:13]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 14 ".koy[1:13]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle4_scaleY";
	rename -uid "F64A7277-9B46-BFEA-8460-0693789CB929";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 1 1 1 10 1 20 1 30 1 40 1 50 1 60 1 70 1
		 80 1 95 1 100 1 105 1 110 1;
	setAttr -s 14 ".kit[1:13]"  1 18 18 18 18 1 1 18 
		18 18 18 1 18;
	setAttr -s 14 ".kot[1:13]"  1 18 18 18 18 1 1 18 
		18 18 18 1 18;
	setAttr -s 14 ".kix[1:13]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 14 ".kiy[1:13]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 14 ".kox[1:13]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 14 ".koy[1:13]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle4_scaleZ";
	rename -uid "E45D049A-5943-CFC1-4EC0-9BAF7BE63511";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 1 1 1 10 1 20 1 30 1 40 1 50 1 60 1 70 1
		 80 1 95 1 100 1 105 1 110 1;
	setAttr -s 14 ".kit[1:13]"  1 18 18 18 18 1 1 18 
		18 18 18 1 18;
	setAttr -s 14 ".kot[1:13]"  1 18 18 18 18 1 1 18 
		18 18 18 1 18;
	setAttr -s 14 ".kix[1:13]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 14 ".kiy[1:13]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 14 ".kox[1:13]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 14 ".koy[1:13]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle5_visibility";
	rename -uid "21500BAD-CC45-0650-9205-EAAAA3D97017";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 1 1 10 1 20 1 50 1 60 1 70 1 80 1;
	setAttr -s 8 ".kit[0:7]"  9 1 9 9 1 1 9 9;
	setAttr -s 8 ".kot[0:7]"  5 1 5 5 1 1 5 5;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 0 0 1 1 0 0;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "nurbsCircle5_translateX";
	rename -uid "51FDBF67-E040-5768-F12F-4B8D929D67F9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 1 0 10 0 20 0 50 0 60 0 70 0 80 0;
	setAttr -s 8 ".kit[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kot[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "nurbsCircle5_translateY";
	rename -uid "39FF0074-1443-CFB0-CCD4-0087220A0BA5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 1 0 10 0 20 0 50 0 60 0 70 0 80 0;
	setAttr -s 8 ".kit[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kot[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "nurbsCircle5_translateZ";
	rename -uid "03517613-304A-2CC9-C930-0AA63124E3D6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 1 0 10 0 20 0 50 0 60 0 70 0 80 0;
	setAttr -s 8 ".kit[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kot[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "nurbsCircle5_rotateX";
	rename -uid "38A2F930-0E41-77E6-F666-88BB8498904A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 11.557224632622599 1 0 10 0 20 0 50 0
		 60 0 70 0 80 0 90 -12.084505116842601 100 12.65325616450159 110 0;
	setAttr -s 11 ".kit[1:10]"  1 18 18 1 1 18 18 18 
		18 18;
	setAttr -s 11 ".kot[1:10]"  1 18 18 1 1 18 18 18 
		18 18;
	setAttr -s 11 ".kix[1:10]"  0.91035014390945435 1 1 0.91035014390945435 
		0.91035014390945435 1 1 1 1 1;
	setAttr -s 11 ".kiy[1:10]"  0.41383883357048035 0 0 0.41383883357048035 
		0.41383883357048035 0 0 0 0 0;
	setAttr -s 11 ".kox[1:10]"  1 1 1 1 1 1 1 1 1 1;
	setAttr -s 11 ".koy[1:10]"  0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "nurbsCircle5_rotateY";
	rename -uid "2F986BCD-414F-4A63-8D1F-339F3522153D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 1 0 10 0 20 0 50 0 60 0 70 0 80 0 90 7.2602560391449158
		 100 24.114073259414571 110 0;
	setAttr -s 11 ".kit[1:10]"  1 18 18 1 1 18 18 18 
		18 18;
	setAttr -s 11 ".kot[1:10]"  1 18 18 1 1 18 18 18 
		18 18;
	setAttr -s 11 ".kix[1:10]"  0.9034697413444519 1 1 0.9034697413444519 
		0.9034697413444519 1 1 0.89261895418167114 1 1;
	setAttr -s 11 ".kiy[1:10]"  -0.42865186929702759 0 0 -0.42865186929702759 
		-0.42865186929702759 0 0 0.45081186294555664 0 0;
	setAttr -s 11 ".kox[1:10]"  1 1 1 1 1 1 1 0.89261895418167114 1 1;
	setAttr -s 11 ".koy[1:10]"  0 0 0 0 0 0 0 0.45081186294555664 0 0;
createNode animCurveTA -n "nurbsCircle5_rotateZ";
	rename -uid "EDC6B32B-5C4A-B3AB-0EB7-209F113EDB0C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 0 1 0 10 0 20 0 50 0 60 0 70 0 80 -9.2429413608123241
		 90 -11.893327136766413 100 0.75572997548431642 110 0;
	setAttr -s 11 ".kit[1:10]"  1 18 18 1 1 18 18 18 
		18 18;
	setAttr -s 11 ".kot[1:10]"  1 18 18 1 1 18 18 18 
		18 18;
	setAttr -s 11 ".kix[1:10]"  0.99999994039535522 1 1 0.99999994039535522 
		0.99999994039535522 1 0.97034913301467896 1 1 1;
	setAttr -s 11 ".kiy[1:10]"  0.00036704621743410826 0 0 0.00036704621743410826 
		0.00036704621743410826 0 -0.2417074590921402 0 0 0;
	setAttr -s 11 ".kox[1:10]"  1 1 1 1 1 1 0.97034919261932373 1 1 1;
	setAttr -s 11 ".koy[1:10]"  0 0 0 0 0 0 -0.2417074590921402 0 0 0;
createNode animCurveTU -n "nurbsCircle5_scaleX";
	rename -uid "2575CF96-F449-54A2-0617-72B96AD19527";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 1 1 10 1 20 1 50 1 60 1 70 1 80 1;
	setAttr -s 8 ".kit[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kot[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle5_scaleY";
	rename -uid "67EFF741-D343-954A-9135-03A6B15E7507";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 1 1 10 1 20 1 50 1 60 1 70 1 80 1;
	setAttr -s 8 ".kit[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kot[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle5_scaleZ";
	rename -uid "B404A18A-D847-7B27-D0C8-2A9108F04238";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 1 1 10 1 20 1 50 1 60 1 70 1 80 1;
	setAttr -s 8 ".kit[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kot[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle6_visibility";
	rename -uid "9633FA49-CF4F-E6E4-348D-90954871777E";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 1 1 10 1 20 1 50 1 60 1 70 1 80 1;
	setAttr -s 8 ".kit[0:7]"  9 1 9 9 1 1 9 9;
	setAttr -s 8 ".kot[0:7]"  5 1 5 5 1 1 5 5;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 0 0 1 1 0 0;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "nurbsCircle6_translateX";
	rename -uid "77D1BE80-E745-6808-FB02-E48F0DA6B0CB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 1 0 10 0 20 0 50 0 60 0 70 0 80 0;
	setAttr -s 8 ".kit[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kot[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "nurbsCircle6_translateY";
	rename -uid "A6301B4E-C846-2D24-4F2E-6F9AA540E4CA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 1 0 10 0 20 0 50 0 60 0 70 0 80 0;
	setAttr -s 8 ".kit[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kot[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "nurbsCircle6_translateZ";
	rename -uid "0CF27FAC-9A4D-DD6F-F80D-0EB6CA9A168C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 1 0 10 0 20 0 50 0 60 0 70 0 80 0;
	setAttr -s 8 ".kit[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kot[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "nurbsCircle6_rotateX";
	rename -uid "532D79C6-D441-C270-1918-149117876AE9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 1 8.6741792704855687 10 8.6741792704855687
		 20 8.6741792704855687 50 8.6741792704855687 60 8.6741792704855687 70 8.6741792704855687
		 80 7.9161349059693995 90 -5.8246150295289425 110 0;
	setAttr -s 10 ".kit[1:9]"  1 18 18 1 1 18 18 18 
		18;
	setAttr -s 10 ".kot[1:9]"  1 18 18 1 1 18 18 18 
		18;
	setAttr -s 10 ".kix[1:9]"  0.94699352979660034 1 1 0.94699352979660034 
		0.94699352979660034 1 0.99549353122711182 1 1;
	setAttr -s 10 ".kiy[1:9]"  -0.32125267386436462 0 0 -0.32125267386436462 
		-0.32125267386436462 0 -0.094829417765140533 0 0;
	setAttr -s 10 ".kox[1:9]"  1 1 1 1 1 1 0.99549353122711182 1 1;
	setAttr -s 10 ".koy[1:9]"  0 0 0 0 0 0 -0.094829417765140533 0 0;
createNode animCurveTA -n "nurbsCircle6_rotateY";
	rename -uid "D4EA95BC-CF4B-9207-A31D-3282AAAE15F6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 0 1 -6.4674884603680018 10 -6.4674884603680018
		 20 -6.4674884603680018 50 -6.4674884603680018 60 -6.4674884603680018 70 -6.4674884603680018
		 80 -4.6237946849521387 90 -0.43285811674163671 110 0;
	setAttr -s 10 ".kit[1:9]"  1 18 18 1 1 18 18 18 
		18;
	setAttr -s 10 ".kot[1:9]"  1 18 18 1 1 18 18 18 
		18;
	setAttr -s 10 ".kix[1:9]"  0.99476397037506104 1 1 0.99476397037506104 
		0.99476397037506104 1 0.99210727214813232 0.99963033199310303 1;
	setAttr -s 10 ".kiy[1:9]"  0.10219880938529968 0 0 0.10219880938529968 
		0.10219880938529968 0 0.12539146840572357 0.027187218889594078 0;
	setAttr -s 10 ".kox[1:9]"  1 1 1 1 1 1 0.9921073317527771 0.99963033199310303 
		1;
	setAttr -s 10 ".koy[1:9]"  0 0 0 0 0 0 0.12539146840572357 0.027187218889594078 
		0;
createNode animCurveTA -n "nurbsCircle6_rotateZ";
	rename -uid "D72BA653-F646-DB6D-6E78-DA8FD8F20AB1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -3.0554115733504545 1 -4.6523946766205126
		 10 -4.6523946766205126 20 -4.6523946766205126 50 -4.6523946766205126 60 -4.6523946766205126
		 70 -4.6523946766205126 80 -6.0593931434873509 90 -14.374777580909088 110 0;
	setAttr -s 10 ".kit[1:9]"  1 18 18 1 1 18 18 18 
		18;
	setAttr -s 10 ".kot[1:9]"  1 18 18 1 1 18 18 18 
		18;
	setAttr -s 10 ".kix[1:9]"  0.99938839673995972 1 1 0.99938839673995972 
		0.99938839673995972 1 0.98472648859024048 1 1;
	setAttr -s 10 ".kiy[1:9]"  -0.034968655556440353 0 0 -0.034968655556440353 
		-0.034968655556440353 0 -0.17410822212696075 0 0;
	setAttr -s 10 ".kox[1:9]"  1 1 1 1 1 1 0.98472648859024048 1 1;
	setAttr -s 10 ".koy[1:9]"  0 0 0 0 0 0 -0.17410823702812195 0 0;
createNode animCurveTU -n "nurbsCircle6_scaleX";
	rename -uid "C0BE1986-6B46-0FAA-C05C-A899E709A9D1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 1 1 10 1 20 1 50 1 60 1 70 1 80 1;
	setAttr -s 8 ".kit[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kot[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle6_scaleY";
	rename -uid "300EB766-0F43-0AAC-0AA4-CF9872308581";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 1 1 10 1 20 1 50 1 60 1 70 1 80 1;
	setAttr -s 8 ".kit[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kot[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle6_scaleZ";
	rename -uid "684CCB28-6E48-19FD-7A78-6DB99B371B23";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 1 1 10 1 20 1 50 1 60 1 70 1 80 1;
	setAttr -s 8 ".kit[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kot[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle9_visibility";
	rename -uid "C8C51F17-EC4F-A38C-FEBC-7D98B112934D";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 10 1 20 1 50 1 60 1 70 1 75 1 80 1
		 85 1 90 1 95 1;
	setAttr -s 12 ".kit[1:11]"  1 9 9 1 1 9 9 9 
		9 9 9;
	setAttr -s 12 ".kot[0:11]"  5 1 5 5 1 1 5 5 
		5 5 5 5;
	setAttr -s 12 ".kix[1:11]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".kiy[1:11]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 12 ".kox[1:11]"  1 0 0 1 1 0 0 0 0 0 0;
	setAttr -s 12 ".koy[1:11]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "nurbsCircle9_translateX";
	rename -uid "A2FC96F4-FF4D-D5D1-C792-59AB509494A9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 10 0 20 0 50 0 60 0 70 0 75 0 80 0
		 85 0 90 0 95 0;
	setAttr -s 12 ".kit[1:11]"  1 18 18 1 1 18 18 18 
		18 18 18;
	setAttr -s 12 ".kot[1:11]"  1 18 18 1 1 18 18 18 
		18 18 18;
	setAttr -s 12 ".kix[1:11]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".kiy[1:11]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 12 ".kox[1:11]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".koy[1:11]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "nurbsCircle9_translateY";
	rename -uid "64B70A04-0B42-E7C5-F76A-C383FDCF1E0E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 10 0 20 0 50 0 60 0 70 0 75 0 80 0
		 85 0 90 0 95 0;
	setAttr -s 12 ".kit[1:11]"  1 18 18 1 1 18 18 18 
		18 18 18;
	setAttr -s 12 ".kot[1:11]"  1 18 18 1 1 18 18 18 
		18 18 18;
	setAttr -s 12 ".kix[1:11]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".kiy[1:11]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 12 ".kox[1:11]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".koy[1:11]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "nurbsCircle9_translateZ";
	rename -uid "682848C7-534C-AC85-785B-33AA55B4F4EF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 10 0 20 0 50 0 60 0 70 0 75 0 80 0
		 85 0 90 0 95 0;
	setAttr -s 12 ".kit[1:11]"  1 18 18 1 1 18 18 18 
		18 18 18;
	setAttr -s 12 ".kot[1:11]"  1 18 18 1 1 18 18 18 
		18 18 18;
	setAttr -s 12 ".kix[1:11]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".kiy[1:11]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 12 ".kox[1:11]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".koy[1:11]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "nurbsCircle9_rotateX";
	rename -uid "484D8C42-C544-7DD4-97CA-9AA891415C33";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 0 1 0 10 0 20 0 50 0 60 0 70 0 75 0 80 0
		 85 -64.16812362871562 90 -64.16812362871562 95 0;
	setAttr -s 12 ".kit[1:11]"  1 18 18 1 1 18 18 18 
		18 18 18;
	setAttr -s 12 ".kot[1:11]"  1 18 18 1 1 18 18 18 
		18 18 18;
	setAttr -s 12 ".kix[1:11]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".kiy[1:11]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 12 ".kox[1:11]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".koy[1:11]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "nurbsCircle9_rotateY";
	rename -uid "E733D5A9-EE45-A045-658E-6FBDFE7879BA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 1 0 10 0 20 0 50 0 60 0 70 0 75 0 80 0
		 85 -22.986928446167973 90 -22.986928446167973 95 0 100 50.779026198304166;
	setAttr -s 13 ".kit[1:12]"  1 18 18 1 1 18 18 18 
		18 18 18 18;
	setAttr -s 13 ".kot[1:12]"  1 18 18 1 1 18 18 18 
		18 18 18 18;
	setAttr -s 13 ".kix[1:12]"  1 1 1 1 1 1 1 1 1 1 0.30791106820106506 
		1;
	setAttr -s 13 ".kiy[1:12]"  0 0 0 0 0 0 0 0 0 0 0.95141512155532837 
		0;
	setAttr -s 13 ".kox[1:12]"  1 1 1 1 1 1 1 1 1 1 0.30791106820106506 
		1;
	setAttr -s 13 ".koy[1:12]"  0 0 0 0 0 0 0 0 0 0 0.95141512155532837 
		0;
createNode animCurveTA -n "nurbsCircle9_rotateZ";
	rename -uid "05C5CD7E-144A-DFB6-D4DD-A288ED596547";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 1 0 10 0 20 0 50 0 60 0 70 0 75 0 80 0
		 85 -64.424929427373016 90 -64.424929427373016 95 -23.03524774891417 100 0;
	setAttr -s 13 ".kit[1:12]"  1 18 18 1 1 18 18 18 
		18 18 18 18;
	setAttr -s 13 ".kot[1:12]"  1 18 18 1 1 18 18 18 
		18 18 18 18;
	setAttr -s 13 ".kix[1:12]"  1 1 1 1 1 1 1 1 1 1 0.34746983647346497 
		1;
	setAttr -s 13 ".kiy[1:12]"  0 0 0 0 0 0 0 0 0 0 0.93769115209579468 
		0;
	setAttr -s 13 ".kox[1:12]"  1 1 1 1 1 1 1 1 1 1 0.34746983647346497 
		1;
	setAttr -s 13 ".koy[1:12]"  0 0 0 0 0 0 0 0 0 0 0.93769115209579468 
		0;
createNode animCurveTU -n "nurbsCircle9_scaleX";
	rename -uid "B01AEDDB-7447-D754-51B9-92BD43810B6E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 10 1 20 1 50 1 60 1 70 1 75 1 80 1
		 85 1 90 1 95 1;
	setAttr -s 12 ".kit[1:11]"  1 18 18 1 1 18 18 18 
		18 18 18;
	setAttr -s 12 ".kot[1:11]"  1 18 18 1 1 18 18 18 
		18 18 18;
	setAttr -s 12 ".kix[1:11]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".kiy[1:11]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 12 ".kox[1:11]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".koy[1:11]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle9_scaleY";
	rename -uid "3309527B-5B46-E050-3E51-71A6257D7F75";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 10 1 20 1 50 1 60 1 70 1 75 1 80 1
		 85 1 90 1 95 1;
	setAttr -s 12 ".kit[1:11]"  1 18 18 1 1 18 18 18 
		18 18 18;
	setAttr -s 12 ".kot[1:11]"  1 18 18 1 1 18 18 18 
		18 18 18;
	setAttr -s 12 ".kix[1:11]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".kiy[1:11]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 12 ".kox[1:11]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".koy[1:11]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle9_scaleZ";
	rename -uid "01A1D04B-7145-2842-AC59-5DA8F8322850";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  0 1 1 1 10 1 20 1 50 1 60 1 70 1 75 1 80 1
		 85 1 90 1 95 1;
	setAttr -s 12 ".kit[1:11]"  1 18 18 1 1 18 18 18 
		18 18 18;
	setAttr -s 12 ".kot[1:11]"  1 18 18 1 1 18 18 18 
		18 18 18;
	setAttr -s 12 ".kix[1:11]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".kiy[1:11]"  0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 12 ".kox[1:11]"  1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 12 ".koy[1:11]"  0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle8_visibility";
	rename -uid "15BC1D96-E64B-8DA1-5561-46B0D2F81976";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 1 1 10 1 20 1 50 1 60 1 70 1 80 1;
	setAttr -s 8 ".kit[0:7]"  9 1 9 9 1 1 9 9;
	setAttr -s 8 ".kot[0:7]"  5 1 5 5 1 1 5 5;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 0 0 1 1 0 0;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "nurbsCircle8_translateX";
	rename -uid "B63E2212-4345-6431-B533-A093C4BCC54E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 1 0 10 0 20 0 50 0 60 0 70 0 80 0;
	setAttr -s 8 ".kit[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kot[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "nurbsCircle8_translateY";
	rename -uid "918E9AFF-6545-928F-EF8C-FD9BBF62363F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 1 0 10 0 20 0 50 0 60 0 70 0 80 0;
	setAttr -s 8 ".kit[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kot[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "nurbsCircle8_translateZ";
	rename -uid "1D305DCB-2145-AB4E-C875-229D82073B4E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 1 0 10 0 20 0 50 0 60 0 70 0 80 0;
	setAttr -s 8 ".kit[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kot[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "nurbsCircle8_rotateX";
	rename -uid "BECA50BA-5B4F-45F0-4CC4-879168776A8D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 1 0 10 0 20 0 50 0 60 0 70 0 80 0;
	setAttr -s 8 ".kit[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kot[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "nurbsCircle8_rotateY";
	rename -uid "3951C89E-784E-30D0-E0A9-17AFD617F54F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 1 0 10 13.826806963517638 15 34.658185308608402
		 20 28.976453821339781 50 0 60 0 70 0 80 0;
	setAttr -s 9 ".kit[1:8]"  1 18 18 18 1 1 18 18;
	setAttr -s 9 ".kot[1:8]"  1 18 18 18 1 1 18 18;
	setAttr -s 9 ".kix[1:8]"  1 0.69415861368179321 1 0.92369174957275391 
		1 1 1 1;
	setAttr -s 9 ".kiy[1:8]"  0 0.71982204914093018 0 -0.38313645124435425 
		0 0 0 0;
	setAttr -s 9 ".kox[1:8]"  1 0.69415861368179321 1 0.92369174957275391 
		1 1 1 1;
	setAttr -s 9 ".koy[1:8]"  0 0.7198219895362854 0 -0.38313645124435425 
		0 0 0 0;
createNode animCurveTA -n "nurbsCircle8_rotateZ";
	rename -uid "A482FFC5-5045-BEFF-AF19-9CBD88CA5001";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 1 0 10 0 20 0 50 0 60 0 70 0 80 0;
	setAttr -s 8 ".kit[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kot[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle8_scaleX";
	rename -uid "B05813F7-A548-0058-A7B0-328D3DADF079";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 1 1 10 1 20 1 50 1 60 1 70 1 80 1;
	setAttr -s 8 ".kit[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kot[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle8_scaleY";
	rename -uid "87DCB4DC-7548-EF35-79D0-20AED92ECBD8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 1 1 10 1 20 1 50 1 60 1 70 1 80 1;
	setAttr -s 8 ".kit[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kot[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle8_scaleZ";
	rename -uid "BD732A92-1248-C12B-A9ED-61A20D94D2E5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 1 1 10 1 20 1 50 1 60 1 70 1 80 1;
	setAttr -s 8 ".kit[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kot[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle7_visibility";
	rename -uid "C961B0CE-0E4E-C372-8CEB-C29CDAFD8B45";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 1 1 10 1 20 1 50 1 60 1 70 1 80 1 90 1;
	setAttr -s 9 ".kit[0:8]"  9 1 9 9 1 1 9 9 
		9;
	setAttr -s 9 ".kot[0:8]"  5 1 5 5 1 1 5 5 
		5;
	setAttr -s 9 ".kix[1:8]"  1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[1:8]"  0 0 0 0 0 0 0 0;
	setAttr -s 9 ".kox[1:8]"  1 0 0 1 1 0 0 0;
	setAttr -s 9 ".koy[1:8]"  0 0 0 0 0 0 0 0;
createNode animCurveTL -n "nurbsCircle7_translateX";
	rename -uid "1EC1D712-C149-A394-D8C6-7299A4664AAF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 1 0 10 0 20 0 50 0 60 0 70 0 80 0 90 0;
	setAttr -s 9 ".kit[1:8]"  1 18 18 1 1 18 18 18;
	setAttr -s 9 ".kot[1:8]"  1 18 18 1 1 18 18 18;
	setAttr -s 9 ".kix[1:8]"  1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[1:8]"  0 0 0 0 0 0 0 0;
	setAttr -s 9 ".kox[1:8]"  1 1 1 1 1 1 1 1;
	setAttr -s 9 ".koy[1:8]"  0 0 0 0 0 0 0 0;
createNode animCurveTL -n "nurbsCircle7_translateY";
	rename -uid "6A95258A-664E-9484-B0CE-388F596E2146";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 1 0 10 0 20 0 50 0 60 0 70 0 80 0 90 0;
	setAttr -s 9 ".kit[1:8]"  1 18 18 1 1 18 18 18;
	setAttr -s 9 ".kot[1:8]"  1 18 18 1 1 18 18 18;
	setAttr -s 9 ".kix[1:8]"  1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[1:8]"  0 0 0 0 0 0 0 0;
	setAttr -s 9 ".kox[1:8]"  1 1 1 1 1 1 1 1;
	setAttr -s 9 ".koy[1:8]"  0 0 0 0 0 0 0 0;
createNode animCurveTL -n "nurbsCircle7_translateZ";
	rename -uid "088CD30A-F647-FEA2-E261-A2827A3E08D1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 0 1 0 10 0 20 0 50 0 60 0 70 0 80 0 90 0;
	setAttr -s 9 ".kit[1:8]"  1 18 18 1 1 18 18 18;
	setAttr -s 9 ".kot[1:8]"  1 18 18 1 1 18 18 18;
	setAttr -s 9 ".kix[1:8]"  1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[1:8]"  0 0 0 0 0 0 0 0;
	setAttr -s 9 ".kox[1:8]"  1 1 1 1 1 1 1 1;
	setAttr -s 9 ".koy[1:8]"  0 0 0 0 0 0 0 0;
createNode animCurveTA -n "nurbsCircle7_rotateX";
	rename -uid "1A7A8734-5E48-9E45-77DF-318521ECBF79";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 -9.636713047527536 1 15.720452405498166
		 10 15.720452405498166 20 -8.2419870892464129 30 -6.7980276214494504 40 27.209730903304639
		 50 12.404316598676076 60 15.720452405498166 70 15.720452405498166 80 -30.298887731887397
		 90 -24.798693875512527 95 11.413656978488492 100 10.315782536423724 105 21.288307970761473
		 110 -0.091048398785418219;
	setAttr -s 15 ".kit[1:14]"  1 18 18 18 18 1 1 18 
		18 18 18 18 18 18;
	setAttr -s 15 ".kot[1:14]"  1 18 18 18 18 1 1 18 
		18 18 18 18 18 18;
	setAttr -s 15 ".kix[1:14]"  1 1 1 0.98393303155899048 1 1 1 1 1 0.82262814044952393 
		1 1 1 1;
	setAttr -s 15 ".kiy[1:14]"  0 0 0 0.17853787541389465 0 0 0 0 0 0.56857967376708984 
		0 0 0 0;
	setAttr -s 15 ".kox[1:14]"  1 1 1 0.98393309116363525 1 1 1 1 1 0.82262814044952393 
		1 1 1 1;
	setAttr -s 15 ".koy[1:14]"  0 0 0 0.17853789031505585 0 0 0 0 0 0.56857973337173462 
		0 0 0 0;
createNode animCurveTA -n "nurbsCircle7_rotateY";
	rename -uid "2864E52F-C54D-065C-84D1-3CAA5DB99D83";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 28.973719328867386 1 46.305481881098416
		 10 46.305481881098416 20 27.815313412312779 30 26.721235826848886 40 22.200022685192067
		 50 29.385182555798782 60 46.305481881098416 70 46.305481881098416 80 20.42544561817688
		 90 20.587886677345544 95 10.743221327244363 100 -1.0262409146980938 105 40.647990320371029
		 110 54.592201375179222;
	setAttr -s 15 ".kit[1:14]"  1 18 18 18 18 1 1 18 
		18 18 18 18 18 18;
	setAttr -s 15 ".kot[1:14]"  1 18 18 18 18 1 1 18 
		18 18 18 18 18 18;
	setAttr -s 15 ".kix[1:14]"  1 1 0.9906807541847229 0.99315524101257324 
		1 1 1 1 1 1 0.74131113290786743 1 0.3944326639175415 1;
	setAttr -s 15 ".kiy[1:14]"  0 0 -0.13620457053184509 -0.11680138856172562 
		0 0 0 0 0 0 -0.67116141319274902 0 0.91892480850219727 0;
	setAttr -s 15 ".kox[1:14]"  1 1 0.9906807541847229 0.99315530061721802 
		1 1 1 1 1 1 0.74131113290786743 1 0.3944326639175415 1;
	setAttr -s 15 ".koy[1:14]"  0 0 -0.13620457053184509 -0.11680139601230621 
		0 0 0 0 0 0 -0.67116141319274902 0 0.91892480850219727 0;
createNode animCurveTA -n "nurbsCircle7_rotateZ";
	rename -uid "43922FC8-7049-1841-042A-C797227C6E4C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 -3.3371751004744614 1 18.101742050746477
		 10 18.101742050746477 20 -6.1509416145545952 30 6.5390709987832585 40 34.744611209841324
		 50 12.757948858134178 60 18.101742050746477 70 18.101742050746477 80 -26.070399712219519
		 90 1.3549261904743832 95 20.758497946419119 100 -1.0094609233547556 105 5.672760547943696
		 110 4.1574336410912656;
	setAttr -s 15 ".kit[1:14]"  1 18 18 18 18 1 1 18 
		18 18 18 18 18 18;
	setAttr -s 15 ".kot[1:14]"  1 18 18 18 18 1 1 18 
		18 18 18 18 18 18;
	setAttr -s 15 ".kix[1:14]"  1 1 1 0.75949239730834961 1 1 1 1 1 0.60744506120681763 
		1 1 1 1;
	setAttr -s 15 ".kiy[1:14]"  0 0 0 0.65051621198654175 0 0 0 0 0 0.79436171054840088 
		0 0 0 0;
	setAttr -s 15 ".kox[1:14]"  1 1 1 0.75949239730834961 1 1 1 1 1 0.60744506120681763 
		1 1 1 1;
	setAttr -s 15 ".koy[1:14]"  0 0 0 0.65051621198654175 0 0 0 0 0 0.79436171054840088 
		0 0 0 0;
createNode animCurveTU -n "nurbsCircle7_scaleX";
	rename -uid "314FF87E-A046-C803-3861-3EBEBC7D9E7E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 1 1 10 1 20 1 50 1 60 1 70 1 80 1 90 1;
	setAttr -s 9 ".kit[1:8]"  1 18 18 1 1 18 18 18;
	setAttr -s 9 ".kot[1:8]"  1 18 18 1 1 18 18 18;
	setAttr -s 9 ".kix[1:8]"  1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[1:8]"  0 0 0 0 0 0 0 0;
	setAttr -s 9 ".kox[1:8]"  1 1 1 1 1 1 1 1;
	setAttr -s 9 ".koy[1:8]"  0 0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle7_scaleY";
	rename -uid "9F6CFF4A-3549-AB43-6B0A-67B647B7D059";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 1 1 10 1 20 1 50 1 60 1 70 1 80 1 90 1;
	setAttr -s 9 ".kit[1:8]"  1 18 18 1 1 18 18 18;
	setAttr -s 9 ".kot[1:8]"  1 18 18 1 1 18 18 18;
	setAttr -s 9 ".kix[1:8]"  1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[1:8]"  0 0 0 0 0 0 0 0;
	setAttr -s 9 ".kox[1:8]"  1 1 1 1 1 1 1 1;
	setAttr -s 9 ".koy[1:8]"  0 0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle7_scaleZ";
	rename -uid "7C2326DF-1448-DA54-E8AE-BCAF2C826ACB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 9 ".ktv[0:8]"  0 1 1 1 10 1 20 1 50 1 60 1 70 1 80 1 90 1;
	setAttr -s 9 ".kit[1:8]"  1 18 18 1 1 18 18 18;
	setAttr -s 9 ".kot[1:8]"  1 18 18 1 1 18 18 18;
	setAttr -s 9 ".kix[1:8]"  1 1 1 1 1 1 1 1;
	setAttr -s 9 ".kiy[1:8]"  0 0 0 0 0 0 0 0;
	setAttr -s 9 ".kox[1:8]"  1 1 1 1 1 1 1 1;
	setAttr -s 9 ".koy[1:8]"  0 0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle17_visibility";
	rename -uid "E665A696-774C-17B7-0312-4C9D01609967";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 1 1 10 1 20 1 50 1 60 1 70 1 80 1;
	setAttr -s 8 ".kit[0:7]"  9 1 9 9 1 1 9 9;
	setAttr -s 8 ".kot[0:7]"  5 1 5 5 1 1 5 5;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 0 0 1 1 0 0;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "nurbsCircle17_translateX";
	rename -uid "E6C27768-CC41-9701-842E-BC83660044E6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 1 0 10 0 20 0 50 0 60 0 70 0 80 0;
	setAttr -s 8 ".kit[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kot[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "nurbsCircle17_translateY";
	rename -uid "5BFB9AC6-D046-A0B0-E7B3-659D1668D5FD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 1 0 10 0 20 0 50 0 60 0 70 0 80 0;
	setAttr -s 8 ".kit[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kot[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "nurbsCircle17_translateZ";
	rename -uid "AF6C0044-764E-5D39-CBA7-6BA414B6AE54";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 1 0 10 0 20 0 50 0 60 0 70 0 80 0;
	setAttr -s 8 ".kit[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kot[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "nurbsCircle17_rotateX";
	rename -uid "96F3DD1C-F84D-233F-8DE2-A2A22F8A8C3C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 2.2123849733936565 1 2.2123849733936565
		 10 2.2123849733936565 20 2.2123849733936565 50 2.2123849733936565 60 2.2123849733936565
		 70 2.2123849733936565 80 2.2123849733936565;
	setAttr -s 8 ".kit[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kot[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "nurbsCircle17_rotateY";
	rename -uid "76BADCD8-FB44-C2F9-8F7C-698BEF476BB8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 10.855751997413357 1 10.855751997413357
		 10 10.855751997413357 20 10.855751997413357 50 10.855751997413357 60 10.855751997413357
		 70 10.855751997413357 80 10.855751997413357;
	setAttr -s 8 ".kit[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kot[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "nurbsCircle17_rotateZ";
	rename -uid "81805867-D741-42A0-E877-36A3DED5BFE9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 5.4821136670819328 1 5.4821136670819328
		 10 5.4821136670819328 20 5.4821136670819328 50 5.4821136670819328 60 5.4821136670819328
		 70 5.4821136670819328 80 5.4821136670819328;
	setAttr -s 8 ".kit[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kot[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle17_scaleX";
	rename -uid "E716B839-7044-4FA3-611F-6C8638AA1525";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 1 1 10 1 20 1 50 1 60 1 70 1 80 1;
	setAttr -s 8 ".kit[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kot[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle17_scaleY";
	rename -uid "1A479024-9F4E-3B93-44FC-7BA55C4BDB40";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 1 1 10 1 20 1 50 1 60 1 70 1 80 1;
	setAttr -s 8 ".kit[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kot[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle17_scaleZ";
	rename -uid "5013EBA9-5C47-1380-F160-B79F84728267";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 1 1 10 1 20 1 50 1 60 1 70 1 80 1;
	setAttr -s 8 ".kit[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kot[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle1_visibility";
	rename -uid "C270AE59-1745-D6D4-16D0-269A77FF818C";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 1 1 10 1 20 1 50 1 60 1 70 1 80 1;
	setAttr -s 8 ".kit[0:7]"  9 1 9 9 1 1 9 9;
	setAttr -s 8 ".kot[0:7]"  5 1 5 5 1 1 5 5;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 0 0 1 1 0 0;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "nurbsCircle1_translateX";
	rename -uid "D9AF1D39-F94B-6236-D7DA-B09313C28075";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 8.0017156648021626 1 -3.7848616274525
		 10 -3.7848616274525 20 -3.7848616274525 50 -3.7848616274525 60 -3.7848616274525 70 -3.7848616274525
		 80 -3.7848616274525;
	setAttr -s 8 ".kit[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kot[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "nurbsCircle1_translateY";
	rename -uid "D0302CFA-CF4D-67A6-52DF-45BBD53265F1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 1 0 10 0 20 0 50 0 60 0 70 0 80 0;
	setAttr -s 8 ".kit[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kot[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "nurbsCircle1_translateZ";
	rename -uid "2EEEC3F7-084D-3AA1-BAD2-18964679150C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 18.453527575795185 1 38.400410070707146
		 10 38.400410070707146 20 38.400410070707146 50 38.400410070707146 60 38.400410070707146
		 70 38.400410070707146 80 38.400410070707146;
	setAttr -s 8 ".kit[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kot[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "nurbsCircle1_rotateX";
	rename -uid "3C514223-CA44-109E-A00D-94827F0701D0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 1 0 10 0 20 0 50 0 60 0 70 0 80 0;
	setAttr -s 8 ".kit[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kot[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "nurbsCircle1_rotateY";
	rename -uid "FEA18E02-434C-1080-144F-348DE26E0568";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 1 -17.852733666090181 10 -17.852733666090181
		 20 -17.852733666090181 50 -17.852733666090181 60 -17.852733666090181 70 -17.852733666090181
		 80 -17.852733666090181;
	setAttr -s 8 ".kit[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kot[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "nurbsCircle1_rotateZ";
	rename -uid "E4AED61A-0841-976C-4FFE-8697D76DCE81";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 1 0 10 0 20 0 50 0 60 0 70 0 80 0;
	setAttr -s 8 ".kit[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kot[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle1_scaleX";
	rename -uid "1354792F-E046-98AA-4488-3EB30356769F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 1 1 10 1 20 1 50 1 60 1 70 1 80 1;
	setAttr -s 8 ".kit[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kot[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle1_scaleY";
	rename -uid "2103F70A-D544-3DAE-A4D5-AAB2A0BD4FF0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 1 1 10 1 20 1 50 1 60 1 70 1 80 1;
	setAttr -s 8 ".kit[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kot[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle1_scaleZ";
	rename -uid "1CE2B541-F541-8264-52D8-238C11C93FB5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 1 1 10 1 20 1 50 1 60 1 70 1 80 1;
	setAttr -s 8 ".kit[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kot[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle2_visibility";
	rename -uid "735FEA14-244B-5FB4-936B-E2BE73512B9F";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 1 1 10 1 20 1 50 1 60 1 70 1 80 1;
	setAttr -s 8 ".kit[0:7]"  9 1 9 9 1 1 9 9;
	setAttr -s 8 ".kot[0:7]"  5 1 5 5 1 1 5 5;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 0 0 1 1 0 0;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "nurbsCircle2_translateX";
	rename -uid "9B8FFF06-5C4C-9D71-5A40-6DB798C85153";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 1 0 10 0 20 0 50 0 60 0 70 0 80 0;
	setAttr -s 8 ".kit[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kot[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "nurbsCircle2_translateY";
	rename -uid "7C665632-7941-5701-DEA1-D7AE0A65F75F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 1 0 10 0 20 0 50 0 60 0 70 0 80 0;
	setAttr -s 8 ".kit[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kot[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "nurbsCircle2_translateZ";
	rename -uid "2B8934F0-A143-9C5B-3129-02AB558AAF4F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 1 0 10 0 20 0 50 0 60 0 70 0 80 0;
	setAttr -s 8 ".kit[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kot[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "nurbsCircle2_rotateX";
	rename -uid "3715767F-9A48-DB97-AD99-A4B763896B3F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 1 0 10 0 20 0 50 0 60 0 70 0 80 0;
	setAttr -s 8 ".kit[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kot[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "nurbsCircle2_rotateY";
	rename -uid "C70D214D-3645-57C7-231A-118CF9FD4C2F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 1 0 10 0 20 0 50 0 60 0 70 0 80 0;
	setAttr -s 8 ".kit[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kot[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "nurbsCircle2_rotateZ";
	rename -uid "59332681-284A-6FDD-6743-208B24BF6732";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 1 0 10 0 20 0 50 0 60 0 70 0 80 0;
	setAttr -s 8 ".kit[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kot[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle2_scaleX";
	rename -uid "5DED3B8C-794D-8F09-7072-F084D924AA03";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 1 1 10 1 20 1 50 1 60 1 70 1 80 1;
	setAttr -s 8 ".kit[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kot[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle2_scaleY";
	rename -uid "7E4B35D0-B045-35D2-AD29-49B3AE3DB558";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 1 1 10 1 20 1 50 1 60 1 70 1 80 1;
	setAttr -s 8 ".kit[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kot[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle2_scaleZ";
	rename -uid "A32AD83B-974D-D5C3-6DA2-1A9B5AD32373";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 1 1 10 1 20 1 50 1 60 1 70 1 80 1;
	setAttr -s 8 ".kit[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kot[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle3_visibility";
	rename -uid "63B5F1C2-5C41-D136-A9A4-3082B6C142EC";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 1 1 10 1 20 1 50 1 60 1 70 1 80 1;
	setAttr -s 8 ".kit[0:7]"  9 1 9 9 1 1 9 9;
	setAttr -s 8 ".kot[0:7]"  5 1 5 5 1 1 5 5;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 0 0 1 1 0 0;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "nurbsCircle3_translateX";
	rename -uid "3366C1DF-EB4B-A535-6806-41AEB75E6B51";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 1 0 10 0 20 0 50 0 60 0 70 0 80 0;
	setAttr -s 8 ".kit[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kot[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "nurbsCircle3_translateY";
	rename -uid "9FF9569D-2D4B-3B31-D203-F7A189CD3BAD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 1 0 10 0 20 0 50 0 60 0 70 0 80 0;
	setAttr -s 8 ".kit[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kot[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "nurbsCircle3_translateZ";
	rename -uid "229E1CA5-6F48-27A6-1A0C-4A8293E8C19D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 1 0 10 0 20 0 50 0 60 0 70 0 80 0;
	setAttr -s 8 ".kit[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kot[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "nurbsCircle3_rotateX";
	rename -uid "BF04AD46-BB48-E4E2-F48A-7F9A86C5847B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 1 0 10 0 20 0 50 0 60 0 70 0 80 0;
	setAttr -s 8 ".kit[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kot[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "nurbsCircle3_rotateY";
	rename -uid "AD61E4C6-E143-A78B-C3A7-30AF584A2C04";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 1 0 10 0 20 0 50 0 60 0 70 0 80 0;
	setAttr -s 8 ".kit[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kot[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "nurbsCircle3_rotateZ";
	rename -uid "C907EE11-4648-8B8C-4387-989846851F3E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 0 1 0 10 0 20 0 50 0 60 0 70 0 80 0;
	setAttr -s 8 ".kit[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kot[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle3_scaleX";
	rename -uid "984113F3-0145-3DBE-0E85-398F2C3C3401";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 1 1 10 1 20 1 50 1 60 1 70 1 80 1;
	setAttr -s 8 ".kit[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kot[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle3_scaleY";
	rename -uid "3CAE80A6-DA43-3A91-5012-B0B9D63215DA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 1 1 10 1 20 1 50 1 60 1 70 1 80 1;
	setAttr -s 8 ".kit[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kot[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle3_scaleZ";
	rename -uid "037183C8-1C48-E3AD-ACD3-9DAB9761A404";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  0 1 1 1 10 1 20 1 50 1 60 1 70 1 80 1;
	setAttr -s 8 ".kit[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kot[1:7]"  1 18 18 1 1 18 18;
	setAttr -s 8 ".kix[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".kiy[1:7]"  0 0 0 0 0 0 0;
	setAttr -s 8 ".kox[1:7]"  1 1 1 1 1 1 1;
	setAttr -s 8 ".koy[1:7]"  0 0 0 0 0 0 0;
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
	rename -uid "67DCE493-164E-DCFB-14F3-2C8ED0DF296B";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 1 10 1 20 1 50 1 60 1 70 1 80 1;
	setAttr -s 7 ".kit[0:6]"  1 9 9 1 1 9 9;
	setAttr -s 7 ".kix[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "nurbsCircle18_translateX";
	rename -uid "B2D55AB7-254E-AD38-1A02-38833BC17880";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 -26.366323281637758 10 -26.366323281637758
		 20 -26.366323281637758 50 -26.366323281637758 60 -26.366323281637758 70 -26.366323281637758
		 80 -26.366323281637758;
	setAttr -s 7 ".kit[0:6]"  1 18 18 1 1 18 18;
	setAttr -s 7 ".kot[0:6]"  1 18 18 1 1 18 18;
	setAttr -s 7 ".kix[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 0 0 0 0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "nurbsCircle18_translateY";
	rename -uid "4F158E5A-2245-7BFF-C233-6DA388D9D6FA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 2.8421709430404007e-14 10 2.8421709430404007e-14
		 20 2.8421709430404007e-14 50 0 60 0 70 0 80 0;
	setAttr -s 7 ".kit[0:6]"  1 18 18 1 1 18 18;
	setAttr -s 7 ".kot[0:6]"  1 18 18 1 1 18 18;
	setAttr -s 7 ".kix[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 0 0 0 0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTL -n "nurbsCircle18_translateZ";
	rename -uid "A83FCBFD-2B40-E44D-9062-92840BD1D6F3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 -21.606882048051403 10 -21.606882048051403
		 20 -21.606882048051403 50 -21.606882048051403 60 -21.606882048051403 70 -21.606882048051403
		 80 -21.606882048051403;
	setAttr -s 7 ".kit[0:6]"  1 18 18 1 1 18 18;
	setAttr -s 7 ".kot[0:6]"  1 18 18 1 1 18 18;
	setAttr -s 7 ".kix[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 0 0 0 0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "nurbsCircle18_rotateX";
	rename -uid "EFDC3A5E-6B4C-B401-6A5D-8583EC6E3B8E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 0 10 0 20 0 50 0 60 0 70 0 80 0;
	setAttr -s 7 ".kit[0:6]"  1 18 18 1 1 18 18;
	setAttr -s 7 ".kot[0:6]"  1 18 18 1 1 18 18;
	setAttr -s 7 ".kix[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 0 0 0 0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "nurbsCircle18_rotateY";
	rename -uid "8A539071-3048-E6AB-726E-03B155237247";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 -48.640487878130692 10 -48.640487878130692
		 20 -48.640487878130692 50 -48.640487878130692 60 -48.640487878130692 70 -48.640487878130692
		 80 -48.640487878130692;
	setAttr -s 7 ".kit[0:6]"  1 18 18 1 1 18 18;
	setAttr -s 7 ".kot[0:6]"  1 18 18 1 1 18 18;
	setAttr -s 7 ".kix[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 0 0 0 0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "nurbsCircle18_rotateZ";
	rename -uid "14D4CB5E-384B-7AD9-0501-B9B869826E27";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 0 10 0 20 0 50 0 60 0 70 0 80 0;
	setAttr -s 7 ".kit[0:6]"  1 18 18 1 1 18 18;
	setAttr -s 7 ".kot[0:6]"  1 18 18 1 1 18 18;
	setAttr -s 7 ".kix[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 0 0 0 0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle18_scaleX";
	rename -uid "33A85EA3-0541-CC76-CD26-D99A888EB17F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 0.99999999999999989 10 0.99999999999999989
		 20 0.99999999999999989 50 0.99999999999999989 60 0.99999999999999989 70 0.99999999999999989
		 80 0.99999999999999989;
	setAttr -s 7 ".kit[0:6]"  1 18 18 1 1 18 18;
	setAttr -s 7 ".kot[0:6]"  1 18 18 1 1 18 18;
	setAttr -s 7 ".kix[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 0 0 0 0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle18_scaleY";
	rename -uid "242B2F1E-794E-B41F-4F25-00B962555CB9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 1 10 1 20 1 50 1 60 1 70 1 80 1;
	setAttr -s 7 ".kit[0:6]"  1 18 18 1 1 18 18;
	setAttr -s 7 ".kot[0:6]"  1 18 18 1 1 18 18;
	setAttr -s 7 ".kix[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 0 0 0 0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle18_scaleZ";
	rename -uid "36CA46A4-B64D-E366-9991-86BB96EFA15B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  1 0.99999999999999989 10 0.99999999999999989
		 20 0.99999999999999989 50 0.99999999999999989 60 0.99999999999999989 70 0.99999999999999989
		 80 0.99999999999999989;
	setAttr -s 7 ".kit[0:6]"  1 18 18 1 1 18 18;
	setAttr -s 7 ".kot[0:6]"  1 18 18 1 1 18 18;
	setAttr -s 7 ".kix[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 0 0 0 0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle18_visibility1";
	rename -uid "BF642C6E-6D4B-C81C-E84E-EEA7D7FA1485";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  70 1 80 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "nurbsCircle18_translateX1";
	rename -uid "A4985AB5-BD43-5EB1-B5A7-44B55E56D1EA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  70 0 80 0;
createNode animCurveTL -n "nurbsCircle18_translateY1";
	rename -uid "E339BAE5-5840-1048-9390-938A18460000";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  70 0 80 0;
createNode animCurveTL -n "nurbsCircle18_translateZ1";
	rename -uid "17476689-6F43-ED80-84CB-39BDD08B5F34";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  70 0 80 0;
createNode animCurveTA -n "nurbsCircle18_rotateX1";
	rename -uid "C747A432-9A44-DE99-60BB-44AD3BF77302";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  70 0 80 0;
createNode animCurveTA -n "nurbsCircle18_rotateY1";
	rename -uid "9B64ADFA-B54E-C3EF-F595-CEB933515F35";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  70 0 80 0;
createNode animCurveTA -n "nurbsCircle18_rotateZ1";
	rename -uid "D2B2E5A2-F942-3DE2-CDB7-55855B3480C2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  70 0 80 0;
createNode animCurveTU -n "nurbsCircle18_scaleX1";
	rename -uid "0A679177-F048-8EE3-5592-998DA746B39F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  70 1 80 1;
createNode animCurveTU -n "nurbsCircle18_scaleY1";
	rename -uid "6B0780F9-DA40-565E-A905-A49780740D08";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  70 1 80 1;
createNode animCurveTU -n "nurbsCircle18_scaleZ1";
	rename -uid "AE51DEFE-D044-4494-2301-63B968184FE3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  70 1 80 1;
select -ne :time1;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".o" 43;
	setAttr -av ".unw" 43;
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
connectAttr "RootMotion_Control_translateX.o" "SoldierRN.phl[1]";
connectAttr "RootMotion_Control_translateY.o" "SoldierRN.phl[2]";
connectAttr "RootMotion_Control_translateZ.o" "SoldierRN.phl[3]";
connectAttr "RootMotion_Control_rotateX.o" "SoldierRN.phl[4]";
connectAttr "RootMotion_Control_rotateY.o" "SoldierRN.phl[5]";
connectAttr "RootMotion_Control_rotateZ.o" "SoldierRN.phl[6]";
connectAttr "RootMotion_Control_scaleX.o" "SoldierRN.phl[7]";
connectAttr "RootMotion_Control_scaleY.o" "SoldierRN.phl[8]";
connectAttr "RootMotion_Control_scaleZ.o" "SoldierRN.phl[9]";
connectAttr "RootMotion_Control_visibility.o" "SoldierRN.phl[10]";
connectAttr "arrow_visibility.o" "SoldierRN.phl[11]";
connectAttr "arrow_translateX.o" "SoldierRN.phl[12]";
connectAttr "arrow_translateY.o" "SoldierRN.phl[13]";
connectAttr "arrow_translateZ.o" "SoldierRN.phl[14]";
connectAttr "arrow_rotateX.o" "SoldierRN.phl[15]";
connectAttr "arrow_rotateY.o" "SoldierRN.phl[16]";
connectAttr "arrow_rotateZ.o" "SoldierRN.phl[17]";
connectAttr "arrow_scaleX.o" "SoldierRN.phl[18]";
connectAttr "arrow_scaleY.o" "SoldierRN.phl[19]";
connectAttr "arrow_scaleZ.o" "SoldierRN.phl[20]";
connectAttr "arrow1_visibility.o" "SoldierRN.phl[21]";
connectAttr "arrow1_translateX.o" "SoldierRN.phl[22]";
connectAttr "arrow1_translateY.o" "SoldierRN.phl[23]";
connectAttr "arrow1_translateZ.o" "SoldierRN.phl[24]";
connectAttr "arrow1_rotateX.o" "SoldierRN.phl[25]";
connectAttr "arrow1_rotateY.o" "SoldierRN.phl[26]";
connectAttr "arrow1_rotateZ.o" "SoldierRN.phl[27]";
connectAttr "arrow1_scaleX.o" "SoldierRN.phl[28]";
connectAttr "arrow1_scaleY.o" "SoldierRN.phl[29]";
connectAttr "arrow1_scaleZ.o" "SoldierRN.phl[30]";
connectAttr "nurbsCircle14_rotateX.o" "SoldierRN.phl[31]";
connectAttr "nurbsCircle14_rotateY.o" "SoldierRN.phl[32]";
connectAttr "nurbsCircle14_rotateZ.o" "SoldierRN.phl[33]";
connectAttr "nurbsCircle14_visibility.o" "SoldierRN.phl[34]";
connectAttr "nurbsCircle14_translateX.o" "SoldierRN.phl[35]";
connectAttr "nurbsCircle14_translateY.o" "SoldierRN.phl[36]";
connectAttr "nurbsCircle14_translateZ.o" "SoldierRN.phl[37]";
connectAttr "nurbsCircle14_scaleX.o" "SoldierRN.phl[38]";
connectAttr "nurbsCircle14_scaleY.o" "SoldierRN.phl[39]";
connectAttr "nurbsCircle14_scaleZ.o" "SoldierRN.phl[40]";
connectAttr "nurbsCircle15_rotateX.o" "SoldierRN.phl[41]";
connectAttr "nurbsCircle15_rotateY.o" "SoldierRN.phl[42]";
connectAttr "nurbsCircle15_rotateZ.o" "SoldierRN.phl[43]";
connectAttr "nurbsCircle15_visibility.o" "SoldierRN.phl[44]";
connectAttr "nurbsCircle15_translateX.o" "SoldierRN.phl[45]";
connectAttr "nurbsCircle15_translateY.o" "SoldierRN.phl[46]";
connectAttr "nurbsCircle15_translateZ.o" "SoldierRN.phl[47]";
connectAttr "nurbsCircle15_scaleX.o" "SoldierRN.phl[48]";
connectAttr "nurbsCircle15_scaleY.o" "SoldierRN.phl[49]";
connectAttr "nurbsCircle15_scaleZ.o" "SoldierRN.phl[50]";
connectAttr "nurbsCircle16_translateX.o" "SoldierRN.phl[51]";
connectAttr "nurbsCircle16_translateY.o" "SoldierRN.phl[52]";
connectAttr "nurbsCircle16_translateZ.o" "SoldierRN.phl[53]";
connectAttr "nurbsCircle16_visibility.o" "SoldierRN.phl[54]";
connectAttr "nurbsCircle16_rotateX.o" "SoldierRN.phl[55]";
connectAttr "nurbsCircle16_rotateY.o" "SoldierRN.phl[56]";
connectAttr "nurbsCircle16_rotateZ.o" "SoldierRN.phl[57]";
connectAttr "nurbsCircle16_scaleX.o" "SoldierRN.phl[58]";
connectAttr "nurbsCircle16_scaleY.o" "SoldierRN.phl[59]";
connectAttr "nurbsCircle16_scaleZ.o" "SoldierRN.phl[60]";
connectAttr "nurbsCircle12_Grip.o" "SoldierRN.phl[61]";
connectAttr "nurbsCircle12_rotateX.o" "SoldierRN.phl[62]";
connectAttr "nurbsCircle12_rotateY.o" "SoldierRN.phl[63]";
connectAttr "nurbsCircle12_rotateZ.o" "SoldierRN.phl[64]";
connectAttr "nurbsCircle12_translateX.o" "SoldierRN.phl[65]";
connectAttr "nurbsCircle12_translateY.o" "SoldierRN.phl[66]";
connectAttr "nurbsCircle12_translateZ.o" "SoldierRN.phl[67]";
connectAttr "nurbsCircle12_visibility.o" "SoldierRN.phl[68]";
connectAttr "nurbsCircle12_scaleX.o" "SoldierRN.phl[69]";
connectAttr "nurbsCircle12_scaleY.o" "SoldierRN.phl[70]";
connectAttr "nurbsCircle12_scaleZ.o" "SoldierRN.phl[71]";
connectAttr "nurbsCircle13_translateX.o" "SoldierRN.phl[72]";
connectAttr "nurbsCircle13_translateY.o" "SoldierRN.phl[73]";
connectAttr "nurbsCircle13_translateZ.o" "SoldierRN.phl[74]";
connectAttr "nurbsCircle13_visibility.o" "SoldierRN.phl[75]";
connectAttr "nurbsCircle13_rotateX.o" "SoldierRN.phl[76]";
connectAttr "nurbsCircle13_rotateY.o" "SoldierRN.phl[77]";
connectAttr "nurbsCircle13_rotateZ.o" "SoldierRN.phl[78]";
connectAttr "nurbsCircle13_scaleX.o" "SoldierRN.phl[79]";
connectAttr "nurbsCircle13_scaleY.o" "SoldierRN.phl[80]";
connectAttr "nurbsCircle13_scaleZ.o" "SoldierRN.phl[81]";
connectAttr "nurbsCircle10_Grip.o" "SoldierRN.phl[82]";
connectAttr "nurbsCircle10_rotateX.o" "SoldierRN.phl[83]";
connectAttr "nurbsCircle10_rotateY.o" "SoldierRN.phl[84]";
connectAttr "nurbsCircle10_rotateZ.o" "SoldierRN.phl[85]";
connectAttr "nurbsCircle10_translateX.o" "SoldierRN.phl[86]";
connectAttr "nurbsCircle10_translateY.o" "SoldierRN.phl[87]";
connectAttr "nurbsCircle10_translateZ.o" "SoldierRN.phl[88]";
connectAttr "nurbsCircle10_visibility.o" "SoldierRN.phl[89]";
connectAttr "nurbsCircle10_scaleX.o" "SoldierRN.phl[90]";
connectAttr "nurbsCircle10_scaleY.o" "SoldierRN.phl[91]";
connectAttr "nurbsCircle10_scaleZ.o" "SoldierRN.phl[92]";
connectAttr "nurbsCircle11_translateX.o" "SoldierRN.phl[93]";
connectAttr "nurbsCircle11_translateY.o" "SoldierRN.phl[94]";
connectAttr "nurbsCircle11_translateZ.o" "SoldierRN.phl[95]";
connectAttr "nurbsCircle11_visibility.o" "SoldierRN.phl[96]";
connectAttr "nurbsCircle11_rotateX.o" "SoldierRN.phl[97]";
connectAttr "nurbsCircle11_rotateY.o" "SoldierRN.phl[98]";
connectAttr "nurbsCircle11_rotateZ.o" "SoldierRN.phl[99]";
connectAttr "nurbsCircle11_scaleX.o" "SoldierRN.phl[100]";
connectAttr "nurbsCircle11_scaleY.o" "SoldierRN.phl[101]";
connectAttr "nurbsCircle11_scaleZ.o" "SoldierRN.phl[102]";
connectAttr "nurbsCircle4_translateX.o" "SoldierRN.phl[103]";
connectAttr "nurbsCircle4_translateY.o" "SoldierRN.phl[104]";
connectAttr "nurbsCircle4_translateZ.o" "SoldierRN.phl[105]";
connectAttr "nurbsCircle4_rotateX.o" "SoldierRN.phl[106]";
connectAttr "nurbsCircle4_rotateY.o" "SoldierRN.phl[107]";
connectAttr "nurbsCircle4_rotateZ.o" "SoldierRN.phl[108]";
connectAttr "nurbsCircle4_scaleX.o" "SoldierRN.phl[109]";
connectAttr "nurbsCircle4_scaleY.o" "SoldierRN.phl[110]";
connectAttr "nurbsCircle4_scaleZ.o" "SoldierRN.phl[111]";
connectAttr "nurbsCircle4_visibility.o" "SoldierRN.phl[112]";
connectAttr "nurbsCircle5_rotateX.o" "SoldierRN.phl[113]";
connectAttr "nurbsCircle5_rotateY.o" "SoldierRN.phl[114]";
connectAttr "nurbsCircle5_rotateZ.o" "SoldierRN.phl[115]";
connectAttr "nurbsCircle5_visibility.o" "SoldierRN.phl[116]";
connectAttr "nurbsCircle5_translateX.o" "SoldierRN.phl[117]";
connectAttr "nurbsCircle5_translateY.o" "SoldierRN.phl[118]";
connectAttr "nurbsCircle5_translateZ.o" "SoldierRN.phl[119]";
connectAttr "nurbsCircle5_scaleX.o" "SoldierRN.phl[120]";
connectAttr "nurbsCircle5_scaleY.o" "SoldierRN.phl[121]";
connectAttr "nurbsCircle5_scaleZ.o" "SoldierRN.phl[122]";
connectAttr "nurbsCircle6_rotateX.o" "SoldierRN.phl[123]";
connectAttr "nurbsCircle6_rotateY.o" "SoldierRN.phl[124]";
connectAttr "nurbsCircle6_rotateZ.o" "SoldierRN.phl[125]";
connectAttr "nurbsCircle6_visibility.o" "SoldierRN.phl[126]";
connectAttr "nurbsCircle6_translateX.o" "SoldierRN.phl[127]";
connectAttr "nurbsCircle6_translateY.o" "SoldierRN.phl[128]";
connectAttr "nurbsCircle6_translateZ.o" "SoldierRN.phl[129]";
connectAttr "nurbsCircle6_scaleX.o" "SoldierRN.phl[130]";
connectAttr "nurbsCircle6_scaleY.o" "SoldierRN.phl[131]";
connectAttr "nurbsCircle6_scaleZ.o" "SoldierRN.phl[132]";
connectAttr "nurbsCircle9_rotateX.o" "SoldierRN.phl[133]";
connectAttr "nurbsCircle9_rotateY.o" "SoldierRN.phl[134]";
connectAttr "nurbsCircle9_rotateZ.o" "SoldierRN.phl[135]";
connectAttr "nurbsCircle9_visibility.o" "SoldierRN.phl[136]";
connectAttr "nurbsCircle9_translateX.o" "SoldierRN.phl[137]";
connectAttr "nurbsCircle9_translateY.o" "SoldierRN.phl[138]";
connectAttr "nurbsCircle9_translateZ.o" "SoldierRN.phl[139]";
connectAttr "nurbsCircle9_scaleX.o" "SoldierRN.phl[140]";
connectAttr "nurbsCircle9_scaleY.o" "SoldierRN.phl[141]";
connectAttr "nurbsCircle9_scaleZ.o" "SoldierRN.phl[142]";
connectAttr "nurbsCircle8_rotateX.o" "SoldierRN.phl[143]";
connectAttr "nurbsCircle8_rotateY.o" "SoldierRN.phl[144]";
connectAttr "nurbsCircle8_rotateZ.o" "SoldierRN.phl[145]";
connectAttr "nurbsCircle8_visibility.o" "SoldierRN.phl[146]";
connectAttr "nurbsCircle8_translateX.o" "SoldierRN.phl[147]";
connectAttr "nurbsCircle8_translateY.o" "SoldierRN.phl[148]";
connectAttr "nurbsCircle8_translateZ.o" "SoldierRN.phl[149]";
connectAttr "nurbsCircle8_scaleX.o" "SoldierRN.phl[150]";
connectAttr "nurbsCircle8_scaleY.o" "SoldierRN.phl[151]";
connectAttr "nurbsCircle8_scaleZ.o" "SoldierRN.phl[152]";
connectAttr "nurbsCircle7_rotateX.o" "SoldierRN.phl[153]";
connectAttr "nurbsCircle7_rotateY.o" "SoldierRN.phl[154]";
connectAttr "nurbsCircle7_rotateZ.o" "SoldierRN.phl[155]";
connectAttr "nurbsCircle7_visibility.o" "SoldierRN.phl[156]";
connectAttr "nurbsCircle7_translateX.o" "SoldierRN.phl[157]";
connectAttr "nurbsCircle7_translateY.o" "SoldierRN.phl[158]";
connectAttr "nurbsCircle7_translateZ.o" "SoldierRN.phl[159]";
connectAttr "nurbsCircle7_scaleX.o" "SoldierRN.phl[160]";
connectAttr "nurbsCircle7_scaleY.o" "SoldierRN.phl[161]";
connectAttr "nurbsCircle7_scaleZ.o" "SoldierRN.phl[162]";
connectAttr "nurbsCircle18_translateX1.o" "SoldierRN.phl[163]";
connectAttr "nurbsCircle18_translateY1.o" "SoldierRN.phl[164]";
connectAttr "nurbsCircle18_translateZ1.o" "SoldierRN.phl[165]";
connectAttr "nurbsCircle18_rotateX1.o" "SoldierRN.phl[166]";
connectAttr "nurbsCircle18_rotateY1.o" "SoldierRN.phl[167]";
connectAttr "nurbsCircle18_rotateZ1.o" "SoldierRN.phl[168]";
connectAttr "nurbsCircle18_scaleX1.o" "SoldierRN.phl[169]";
connectAttr "nurbsCircle18_scaleY1.o" "SoldierRN.phl[170]";
connectAttr "nurbsCircle18_scaleZ1.o" "SoldierRN.phl[171]";
connectAttr "nurbsCircle18_visibility1.o" "SoldierRN.phl[172]";
connectAttr "nurbsCircle17_translateX.o" "SoldierRN.phl[173]";
connectAttr "nurbsCircle17_translateY.o" "SoldierRN.phl[174]";
connectAttr "nurbsCircle17_translateZ.o" "SoldierRN.phl[175]";
connectAttr "nurbsCircle17_rotateX.o" "SoldierRN.phl[176]";
connectAttr "nurbsCircle17_rotateY.o" "SoldierRN.phl[177]";
connectAttr "nurbsCircle17_rotateZ.o" "SoldierRN.phl[178]";
connectAttr "nurbsCircle17_scaleX.o" "SoldierRN.phl[179]";
connectAttr "nurbsCircle17_scaleY.o" "SoldierRN.phl[180]";
connectAttr "nurbsCircle17_scaleZ.o" "SoldierRN.phl[181]";
connectAttr "nurbsCircle17_visibility.o" "SoldierRN.phl[182]";
connectAttr "nurbsCircle1_rotateX.o" "SoldierRN.phl[183]";
connectAttr "nurbsCircle1_rotateY.o" "SoldierRN.phl[184]";
connectAttr "nurbsCircle1_rotateZ.o" "SoldierRN.phl[185]";
connectAttr "nurbsCircle1_visibility.o" "SoldierRN.phl[186]";
connectAttr "nurbsCircle1_translateX.o" "SoldierRN.phl[187]";
connectAttr "nurbsCircle1_translateY.o" "SoldierRN.phl[188]";
connectAttr "nurbsCircle1_translateZ.o" "SoldierRN.phl[189]";
connectAttr "nurbsCircle1_scaleX.o" "SoldierRN.phl[190]";
connectAttr "nurbsCircle1_scaleY.o" "SoldierRN.phl[191]";
connectAttr "nurbsCircle1_scaleZ.o" "SoldierRN.phl[192]";
connectAttr "nurbsCircle2_rotateX.o" "SoldierRN.phl[193]";
connectAttr "nurbsCircle2_rotateY.o" "SoldierRN.phl[194]";
connectAttr "nurbsCircle2_rotateZ.o" "SoldierRN.phl[195]";
connectAttr "nurbsCircle2_visibility.o" "SoldierRN.phl[196]";
connectAttr "nurbsCircle2_translateX.o" "SoldierRN.phl[197]";
connectAttr "nurbsCircle2_translateY.o" "SoldierRN.phl[198]";
connectAttr "nurbsCircle2_translateZ.o" "SoldierRN.phl[199]";
connectAttr "nurbsCircle2_scaleX.o" "SoldierRN.phl[200]";
connectAttr "nurbsCircle2_scaleY.o" "SoldierRN.phl[201]";
connectAttr "nurbsCircle2_scaleZ.o" "SoldierRN.phl[202]";
connectAttr "nurbsCircle3_translateX.o" "SoldierRN.phl[203]";
connectAttr "nurbsCircle3_translateY.o" "SoldierRN.phl[204]";
connectAttr "nurbsCircle3_translateZ.o" "SoldierRN.phl[205]";
connectAttr "nurbsCircle3_visibility.o" "SoldierRN.phl[206]";
connectAttr "nurbsCircle3_rotateX.o" "SoldierRN.phl[207]";
connectAttr "nurbsCircle3_rotateY.o" "SoldierRN.phl[208]";
connectAttr "nurbsCircle3_rotateZ.o" "SoldierRN.phl[209]";
connectAttr "nurbsCircle3_scaleX.o" "SoldierRN.phl[210]";
connectAttr "nurbsCircle3_scaleY.o" "SoldierRN.phl[211]";
connectAttr "nurbsCircle3_scaleZ.o" "SoldierRN.phl[212]";
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
// End of Soldier@reload.ma
