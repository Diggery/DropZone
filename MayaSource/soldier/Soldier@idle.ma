//Maya ASCII 2016 scene
//Name: Soldier@idle.ma
//Last modified: Sat, Aug 13, 2016 09:57:02 PM
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
	setAttr ".t" -type "double3" -210.04955646833193 193.62966078927295 -501.25937391580612 ;
	setAttr ".r" -type "double3" -12.938352729615891 -877.79999999988763 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "0DE61285-5447-869D-E00A-AEB5FBAC336C";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 601.67955884729326;
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
	rename -uid "9F7A5448-1A4D-2627-3DC3-B386733EA27F";
	setAttr -s 13 ".lnk";
	setAttr -s 13 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "ECFC5A2D-E34B-F58D-35A7-B9A61EA4ADCF";
createNode displayLayer -n "defaultLayer";
	rename -uid "1AB385CB-214F-9970-0753-9C86125E5ACE";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "0FC73127-7846-823D-083A-56BB9F5CD4E9";
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
	setAttr -s 162 ".phl";
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
		"SoldierRN" 402
		2 "|Rig:Geometry|Rig:Body|Rig:BodyShape" "visibility" " -k 0 1"
		2 "|Rig:Geometry|Rig:Body|Rig:BodyShape" "uvPivot" " -type \"double2\" 0.4994969367980957 0.49276292324066162"
		
		2 "|Rig:Control|Rig:ikHandle7" "translate" " -type \"double3\" -37.11056018112311961 107.42691088203237371 5.40444193401884831"
		
		2 "|Rig:Control|Rig:ikHandle7" "translateX" " -av"
		2 "|Rig:Control|Rig:ikHandle7" "translateY" " -av"
		2 "|Rig:Control|Rig:ikHandle7" "translateZ" " -av"
		2 "|Rig:Control|Rig:ikHandle8" "translate" " -type \"double3\" 22.31638870874100178 81.2958678508278183 33.69185853568027511"
		
		2 "|Rig:Control|Rig:ikHandle8" "translateX" " -av"
		2 "|Rig:Control|Rig:ikHandle8" "translateZ" " -av"
		2 "|Rig:Control|Rig:ikHandle8" "translateY" " -av"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14" "visibility" " -av 1"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14" "translate" " -type \"double3\" -7.7834144969507193 0 -29.40649811857259621"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14" "translateX" " -av"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14" "translateY" " -av"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14" "translateZ" " -av"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14" "rotate" " -type \"double3\" 0 -48.64048787813069197 0"
		
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
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12" "translate" " -type \"double3\" -57.86551129125898285 -30.62113214917211224 16.47115853568028143"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12" "translateX" " -av"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12" "translateY" " -av"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12" "translateZ" " -av"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12" "rotate" " -type \"double3\" -24.77848291268002967 19.27863350065326742 -118.89557508724543311"
		
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
		"translate" " -type \"double3\" 7.07669909214987225 54.60082938279550291 16.92172731037357281"
		
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
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle10" "translate" " -type \"double3\" 24.30507297595388039 -4.49008911796762966 -11.81625806598112405"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle10" "translateX" " -av"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle10" "translateY" " -av"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle10" "translateZ" " -av"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle10" "rotate" " -type \"double3\" 35.44766099123776115 37.2869389675293661 2.71702353421306686"
		
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
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4" "translate" " -type \"double3\" -0.0049339791847390676 -10.94068141119890925 -3.8083807316710816"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4" "translateX" " -av"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4" "translateY" " -av"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4" "translateZ" " -av"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4" "rotate" " -type \"double3\" -6.18525100821255513 -35.43288563586918372 0.16463416787494009"
		
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
		"rotate" " -type \"double3\" 11.55722463262259936 0 0"
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
		"rotate" " -type \"double3\" 0 0 -3.05541157335045455"
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
		"rotate" " -type \"double3\" -9.63671304752753599 28.97371932886738577 -3.33717510047446142"
		
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
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1" "translate" " -type \"double3\" 8.00171566480216256 0 18.4535275757951851"
		
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
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14.rotateX" 
		"SoldierRN.placeHolderList[1]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14.rotateY" 
		"SoldierRN.placeHolderList[2]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14.rotateZ" 
		"SoldierRN.placeHolderList[3]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14.visibility" 
		"SoldierRN.placeHolderList[4]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14.translateX" 
		"SoldierRN.placeHolderList[5]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14.translateY" 
		"SoldierRN.placeHolderList[6]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14.translateZ" 
		"SoldierRN.placeHolderList[7]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14.scaleX" 
		"SoldierRN.placeHolderList[8]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14.scaleY" 
		"SoldierRN.placeHolderList[9]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14.scaleZ" 
		"SoldierRN.placeHolderList[10]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14|Rig:nurbsCircle15.rotateX" 
		"SoldierRN.placeHolderList[11]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14|Rig:nurbsCircle15.rotateY" 
		"SoldierRN.placeHolderList[12]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14|Rig:nurbsCircle15.rotateZ" 
		"SoldierRN.placeHolderList[13]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14|Rig:nurbsCircle15.visibility" 
		"SoldierRN.placeHolderList[14]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14|Rig:nurbsCircle15.translateX" 
		"SoldierRN.placeHolderList[15]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14|Rig:nurbsCircle15.translateY" 
		"SoldierRN.placeHolderList[16]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14|Rig:nurbsCircle15.translateZ" 
		"SoldierRN.placeHolderList[17]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14|Rig:nurbsCircle15.scaleX" 
		"SoldierRN.placeHolderList[18]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14|Rig:nurbsCircle15.scaleY" 
		"SoldierRN.placeHolderList[19]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14|Rig:nurbsCircle15.scaleZ" 
		"SoldierRN.placeHolderList[20]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14|Rig:nurbsCircle16.translateX" 
		"SoldierRN.placeHolderList[21]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14|Rig:nurbsCircle16.translateY" 
		"SoldierRN.placeHolderList[22]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14|Rig:nurbsCircle16.translateZ" 
		"SoldierRN.placeHolderList[23]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14|Rig:nurbsCircle16.visibility" 
		"SoldierRN.placeHolderList[24]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14|Rig:nurbsCircle16.rotateX" 
		"SoldierRN.placeHolderList[25]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14|Rig:nurbsCircle16.rotateY" 
		"SoldierRN.placeHolderList[26]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14|Rig:nurbsCircle16.rotateZ" 
		"SoldierRN.placeHolderList[27]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14|Rig:nurbsCircle16.scaleX" 
		"SoldierRN.placeHolderList[28]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14|Rig:nurbsCircle16.scaleY" 
		"SoldierRN.placeHolderList[29]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14|Rig:nurbsCircle16.scaleZ" 
		"SoldierRN.placeHolderList[30]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12.Grip" 
		"SoldierRN.placeHolderList[31]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12.rotateX" 
		"SoldierRN.placeHolderList[32]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12.rotateY" 
		"SoldierRN.placeHolderList[33]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12.rotateZ" 
		"SoldierRN.placeHolderList[34]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12.translateX" 
		"SoldierRN.placeHolderList[35]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12.translateY" 
		"SoldierRN.placeHolderList[36]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12.translateZ" 
		"SoldierRN.placeHolderList[37]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12.visibility" 
		"SoldierRN.placeHolderList[38]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12.scaleX" 
		"SoldierRN.placeHolderList[39]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12.scaleY" 
		"SoldierRN.placeHolderList[40]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12.scaleZ" 
		"SoldierRN.placeHolderList[41]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12|Rig:nurbsCircle13.translateX" 
		"SoldierRN.placeHolderList[42]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12|Rig:nurbsCircle13.translateY" 
		"SoldierRN.placeHolderList[43]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12|Rig:nurbsCircle13.translateZ" 
		"SoldierRN.placeHolderList[44]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12|Rig:nurbsCircle13.visibility" 
		"SoldierRN.placeHolderList[45]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12|Rig:nurbsCircle13.rotateX" 
		"SoldierRN.placeHolderList[46]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12|Rig:nurbsCircle13.rotateY" 
		"SoldierRN.placeHolderList[47]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12|Rig:nurbsCircle13.rotateZ" 
		"SoldierRN.placeHolderList[48]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12|Rig:nurbsCircle13.scaleX" 
		"SoldierRN.placeHolderList[49]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12|Rig:nurbsCircle13.scaleY" 
		"SoldierRN.placeHolderList[50]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12|Rig:nurbsCircle13.scaleZ" 
		"SoldierRN.placeHolderList[51]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle10.Grip" 
		"SoldierRN.placeHolderList[52]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle10.rotateX" 
		"SoldierRN.placeHolderList[53]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle10.rotateY" 
		"SoldierRN.placeHolderList[54]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle10.rotateZ" 
		"SoldierRN.placeHolderList[55]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle10.translateX" 
		"SoldierRN.placeHolderList[56]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle10.translateY" 
		"SoldierRN.placeHolderList[57]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle10.translateZ" 
		"SoldierRN.placeHolderList[58]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle10.visibility" 
		"SoldierRN.placeHolderList[59]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle10.scaleX" 
		"SoldierRN.placeHolderList[60]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle10.scaleY" 
		"SoldierRN.placeHolderList[61]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle10.scaleZ" 
		"SoldierRN.placeHolderList[62]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle10|Rig:nurbsCircle11.translateX" 
		"SoldierRN.placeHolderList[63]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle10|Rig:nurbsCircle11.translateY" 
		"SoldierRN.placeHolderList[64]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle10|Rig:nurbsCircle11.translateZ" 
		"SoldierRN.placeHolderList[65]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle10|Rig:nurbsCircle11.visibility" 
		"SoldierRN.placeHolderList[66]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle10|Rig:nurbsCircle11.rotateX" 
		"SoldierRN.placeHolderList[67]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle10|Rig:nurbsCircle11.rotateY" 
		"SoldierRN.placeHolderList[68]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle10|Rig:nurbsCircle11.rotateZ" 
		"SoldierRN.placeHolderList[69]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle10|Rig:nurbsCircle11.scaleX" 
		"SoldierRN.placeHolderList[70]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle10|Rig:nurbsCircle11.scaleY" 
		"SoldierRN.placeHolderList[71]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle10|Rig:nurbsCircle11.scaleZ" 
		"SoldierRN.placeHolderList[72]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4.translateX" 
		"SoldierRN.placeHolderList[73]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4.translateY" 
		"SoldierRN.placeHolderList[74]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4.translateZ" 
		"SoldierRN.placeHolderList[75]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4.rotateX" 
		"SoldierRN.placeHolderList[76]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4.rotateY" 
		"SoldierRN.placeHolderList[77]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4.rotateZ" 
		"SoldierRN.placeHolderList[78]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4.scaleX" 
		"SoldierRN.placeHolderList[79]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4.scaleY" 
		"SoldierRN.placeHolderList[80]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4.scaleZ" 
		"SoldierRN.placeHolderList[81]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4.visibility" 
		"SoldierRN.placeHolderList[82]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5.rotateX" 
		"SoldierRN.placeHolderList[83]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5.rotateY" 
		"SoldierRN.placeHolderList[84]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5.rotateZ" 
		"SoldierRN.placeHolderList[85]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5.visibility" 
		"SoldierRN.placeHolderList[86]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5.translateX" 
		"SoldierRN.placeHolderList[87]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5.translateY" 
		"SoldierRN.placeHolderList[88]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5.translateZ" 
		"SoldierRN.placeHolderList[89]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5.scaleX" 
		"SoldierRN.placeHolderList[90]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5.scaleY" 
		"SoldierRN.placeHolderList[91]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5.scaleZ" 
		"SoldierRN.placeHolderList[92]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6.rotateX" 
		"SoldierRN.placeHolderList[93]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6.rotateY" 
		"SoldierRN.placeHolderList[94]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6.rotateZ" 
		"SoldierRN.placeHolderList[95]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6.visibility" 
		"SoldierRN.placeHolderList[96]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6.translateX" 
		"SoldierRN.placeHolderList[97]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6.translateY" 
		"SoldierRN.placeHolderList[98]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6.translateZ" 
		"SoldierRN.placeHolderList[99]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6.scaleX" 
		"SoldierRN.placeHolderList[100]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6.scaleY" 
		"SoldierRN.placeHolderList[101]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6.scaleZ" 
		"SoldierRN.placeHolderList[102]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle9.rotateX" 
		"SoldierRN.placeHolderList[103]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle9.rotateY" 
		"SoldierRN.placeHolderList[104]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle9.rotateZ" 
		"SoldierRN.placeHolderList[105]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle9.visibility" 
		"SoldierRN.placeHolderList[106]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle9.translateX" 
		"SoldierRN.placeHolderList[107]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle9.translateY" 
		"SoldierRN.placeHolderList[108]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle9.translateZ" 
		"SoldierRN.placeHolderList[109]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle9.scaleX" 
		"SoldierRN.placeHolderList[110]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle9.scaleY" 
		"SoldierRN.placeHolderList[111]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle9.scaleZ" 
		"SoldierRN.placeHolderList[112]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle8.rotateX" 
		"SoldierRN.placeHolderList[113]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle8.rotateY" 
		"SoldierRN.placeHolderList[114]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle8.rotateZ" 
		"SoldierRN.placeHolderList[115]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle8.visibility" 
		"SoldierRN.placeHolderList[116]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle8.translateX" 
		"SoldierRN.placeHolderList[117]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle8.translateY" 
		"SoldierRN.placeHolderList[118]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle8.translateZ" 
		"SoldierRN.placeHolderList[119]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle8.scaleX" 
		"SoldierRN.placeHolderList[120]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle8.scaleY" 
		"SoldierRN.placeHolderList[121]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle8.scaleZ" 
		"SoldierRN.placeHolderList[122]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle7.rotateX" 
		"SoldierRN.placeHolderList[123]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle7.rotateY" 
		"SoldierRN.placeHolderList[124]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle7.rotateZ" 
		"SoldierRN.placeHolderList[125]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle7.visibility" 
		"SoldierRN.placeHolderList[126]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle7.translateX" 
		"SoldierRN.placeHolderList[127]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle7.translateY" 
		"SoldierRN.placeHolderList[128]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle7.translateZ" 
		"SoldierRN.placeHolderList[129]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle7.scaleX" 
		"SoldierRN.placeHolderList[130]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle7.scaleY" 
		"SoldierRN.placeHolderList[131]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle7.scaleZ" 
		"SoldierRN.placeHolderList[132]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1.rotateX" 
		"SoldierRN.placeHolderList[133]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1.rotateY" 
		"SoldierRN.placeHolderList[134]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1.rotateZ" 
		"SoldierRN.placeHolderList[135]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1.visibility" 
		"SoldierRN.placeHolderList[136]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1.translateX" 
		"SoldierRN.placeHolderList[137]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1.translateY" 
		"SoldierRN.placeHolderList[138]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1.translateZ" 
		"SoldierRN.placeHolderList[139]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1.scaleX" 
		"SoldierRN.placeHolderList[140]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1.scaleY" 
		"SoldierRN.placeHolderList[141]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1.scaleZ" 
		"SoldierRN.placeHolderList[142]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1|Rig:nurbsCircle2.rotateX" 
		"SoldierRN.placeHolderList[143]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1|Rig:nurbsCircle2.rotateY" 
		"SoldierRN.placeHolderList[144]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1|Rig:nurbsCircle2.rotateZ" 
		"SoldierRN.placeHolderList[145]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1|Rig:nurbsCircle2.visibility" 
		"SoldierRN.placeHolderList[146]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1|Rig:nurbsCircle2.translateX" 
		"SoldierRN.placeHolderList[147]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1|Rig:nurbsCircle2.translateY" 
		"SoldierRN.placeHolderList[148]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1|Rig:nurbsCircle2.translateZ" 
		"SoldierRN.placeHolderList[149]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1|Rig:nurbsCircle2.scaleX" 
		"SoldierRN.placeHolderList[150]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1|Rig:nurbsCircle2.scaleY" 
		"SoldierRN.placeHolderList[151]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1|Rig:nurbsCircle2.scaleZ" 
		"SoldierRN.placeHolderList[152]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1|Rig:nurbsCircle3.translateX" 
		"SoldierRN.placeHolderList[153]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1|Rig:nurbsCircle3.translateY" 
		"SoldierRN.placeHolderList[154]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1|Rig:nurbsCircle3.translateZ" 
		"SoldierRN.placeHolderList[155]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1|Rig:nurbsCircle3.visibility" 
		"SoldierRN.placeHolderList[156]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1|Rig:nurbsCircle3.rotateX" 
		"SoldierRN.placeHolderList[157]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1|Rig:nurbsCircle3.rotateY" 
		"SoldierRN.placeHolderList[158]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1|Rig:nurbsCircle3.rotateZ" 
		"SoldierRN.placeHolderList[159]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1|Rig:nurbsCircle3.scaleX" 
		"SoldierRN.placeHolderList[160]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1|Rig:nurbsCircle3.scaleY" 
		"SoldierRN.placeHolderList[161]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1|Rig:nurbsCircle3.scaleZ" 
		"SoldierRN.placeHolderList[162]" ""
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
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 225 -ast 0 -aet 225 ";
	setAttr ".st" 6;
createNode animCurveTL -n "nurbsCircle1_translateX";
	rename -uid "E215DFB8-9642-971D-6EDE-DA829783683E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 8.0017156648021626 30 8.0017156648021626
		 60 8.0017156648021626 90 8.0017156648021626 120 8.0017156648021626 140 8.0017156648021626
		 160 8.0017156648021626 180 8.0017156648021626 200 8.0017156648021626 225 8.0017156648021626;
createNode animCurveTL -n "nurbsCircle1_translateY";
	rename -uid "61C673CF-944D-D5BC-C710-7382FD5BFF1E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 0 30 0 60 0 90 0 120 0 140 0 160 0 180 0
		 200 0 225 0;
createNode animCurveTL -n "nurbsCircle1_translateZ";
	rename -uid "EAA89ABF-284B-F55E-43B1-BEB231A7A6A6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 18.453527575795185 30 18.453527575795185
		 60 18.453527575795185 90 18.453527575795185 120 18.453527575795185 140 18.453527575795185
		 160 18.453527575795185 180 18.453527575795185 200 18.453527575795185 225 18.453527575795185;
createNode animCurveTL -n "nurbsCircle11_translateX";
	rename -uid "70F1C210-614F-A859-1CD3-7E880A6EF434";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 0 30 0 60 0 90 0 120 0 140 0 160 0 180 0
		 200 0 225 0;
createNode animCurveTL -n "nurbsCircle11_translateY";
	rename -uid "562E16EB-AD4C-B0A3-C531-678C9C1A0096";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 0 30 0 60 0 90 0 120 0 140 0 160 0 180 0
		 200 0 225 0;
createNode animCurveTL -n "nurbsCircle11_translateZ";
	rename -uid "FCAFE4C0-3946-30EC-7981-F480B4649F91";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 0 30 0 60 0 90 0 120 0 140 0 160 0 180 0
		 200 0 225 0;
createNode animCurveTL -n "nurbsCircle12_translateX";
	rename -uid "621438B5-6742-60F9-39DC-F782F686F84E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  1 -57.860577312074241 30 -59.276280970945436
		 60 -56.787287446837155 90 -58.453717615870602 120 -57.860577312074241 140 -56.078530894349043
		 146 -57.513745411954034 152 -59.813546920754327 160 -61.842441583667437 180 -58.612280865682422
		 200 -57.860577312074241 213 -59.610560851800045 225 -57.860577312074241;
createNode animCurveTL -n "nurbsCircle12_translateY";
	rename -uid "BA54B772-ED49-74BD-FB01-72AA35A520F0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  1 -30.621132149172112 30 -30.621132149172112
		 60 -29.563777485536676 90 -29.458946182625951 120 -30.621132149172112 140 -30.621132149172112
		 146 -19.423833217245502 152 -32.138807977367179 160 -30.621132149172112 180 -31.952163220882696
		 200 -30.621132149172112 225 -30.621132149172112;
createNode animCurveTL -n "nurbsCircle12_translateZ";
	rename -uid "905F5ED9-1E42-D12A-15E6-73A1D36398BF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  1 16.471366084133965 30 16.175610180885119
		 60 15.012543695239263 90 18.022150017445686 120 16.471366084133965 140 16.50247181993328
		 146 16.211752432519177 152 15.745900910435694 160 15.334924713936662 180 17.535065905071892
		 200 16.471366084133965 213 15.855099597767808 225 16.471366084133965;
createNode animCurveTL -n "nurbsCircle13_translateX";
	rename -uid "8CC97F55-964F-2562-6EA7-8C8ACADF74C5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 7.0766990921498722 30 7.0766990921498722
		 60 7.0766990921498722 90 7.0766990921498722 120 7.0766990921498722 140 7.0766990921498722
		 160 7.0766990921498722 180 7.0766990921498722 200 7.0766990921498722 225 7.0766990921498722;
createNode animCurveTL -n "nurbsCircle13_translateY";
	rename -uid "52A3EF32-E84E-5199-8528-6F8FCFE8ED61";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 54.600829382795503 30 54.600829382795503
		 60 54.600829382795503 90 54.600829382795503 120 54.600829382795503 140 54.600829382795503
		 160 54.600829382795503 180 54.600829382795503 200 54.600829382795503 225 54.600829382795503;
createNode animCurveTL -n "nurbsCircle13_translateZ";
	rename -uid "AA74DF54-1C45-6441-A0B3-0CA8A8299AB3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 16.921727310373573 30 16.921727310373573
		 60 16.921727310373573 90 16.921727310373573 120 16.921727310373573 140 16.921727310373573
		 160 16.921727310373573 180 16.921727310373573 200 16.921727310373573 225 16.921727310373573;
createNode animCurveTL -n "nurbsCircle14_translateX";
	rename -uid "62DD1457-E142-3821-C015-6C81FF1D905B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 -7.7834144969507193 30 -7.7834144969507193
		 60 -7.7834144969507193 90 -7.7834144969507193 120 -7.7834144969507193 140 -7.7834144969507193
		 160 -7.7834144969507193 180 -7.7834144969507193 200 -7.7834144969507193 225 -7.7834144969507193;
createNode animCurveTL -n "nurbsCircle14_translateY";
	rename -uid "259D8A7D-0343-C85D-7D48-EF8477B47C95";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 0 30 0 60 0 90 0 120 0 140 0 160 0 180 0
		 200 0 225 0;
createNode animCurveTL -n "nurbsCircle14_translateZ";
	rename -uid "700183C7-2546-3BF8-D824-61BE72404F44";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 -29.406498118572596 30 -29.406498118572596
		 60 -29.406498118572596 90 -29.406498118572596 120 -29.406498118572596 140 -29.406498118572596
		 160 -29.406498118572596 180 -29.406498118572596 200 -29.406498118572596 225 -29.406498118572596;
createNode animCurveTL -n "nurbsCircle15_translateX";
	rename -uid "BAD61468-8C42-0B74-12EE-21ACEF6E59FD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 0 30 0 60 0 90 0 120 0 140 0 160 0 180 0
		 200 0 225 0;
createNode animCurveTL -n "nurbsCircle15_translateY";
	rename -uid "681E962D-E449-2273-59FE-3F83C93625E7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 0 30 0 60 0 90 0 120 0 140 0 160 0 180 0
		 200 0 225 0;
createNode animCurveTL -n "nurbsCircle15_translateZ";
	rename -uid "B225FAF9-364B-ABBA-E49A-71917A95ED36";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 0 30 0 60 0 90 0 120 0 140 0 160 0 180 0
		 200 0 225 0;
createNode animCurveTL -n "nurbsCircle16_translateX";
	rename -uid "3147BB87-A84E-FFEF-1292-F994C25A9141";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 0 30 0 60 0 90 0 120 0 140 0 160 0 180 0
		 200 0 225 0;
createNode animCurveTL -n "nurbsCircle16_translateY";
	rename -uid "EB9B98EF-1348-50EC-60DD-409641AD2D0C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 0 30 0 60 0 90 0 120 0 140 0 160 0 180 0
		 200 0 225 0;
createNode animCurveTL -n "nurbsCircle16_translateZ";
	rename -uid "CEFFAF05-7B49-4567-4929-62A9D97BC94E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 0 30 0 60 0 90 0 120 0 140 0 160 0 180 0
		 200 0 225 0;
createNode animCurveTL -n "nurbsCircle2_translateX";
	rename -uid "31C8C77E-8C4E-522A-F998-A8BADD1875C5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 0 30 0 60 0 90 0 120 0 140 0 160 0 180 0
		 200 0 225 0;
createNode animCurveTL -n "nurbsCircle2_translateY";
	rename -uid "22DA1019-2A49-28D7-5599-CEACEC1FA196";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 0 30 0 60 0 90 0 120 0 140 0 160 0 180 0
		 200 0 225 0;
createNode animCurveTL -n "nurbsCircle2_translateZ";
	rename -uid "B82F3F3E-FA40-D98B-FB65-03B5A3084D03";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 0 30 0 60 0 90 0 120 0 140 0 160 0 180 0
		 200 0 225 0;
createNode animCurveTL -n "nurbsCircle3_translateX";
	rename -uid "0F59501D-E746-EF0C-0312-1E8EDBF8DEC7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 0 30 0 60 0 90 0 120 0 140 0 160 0 180 0
		 200 0 225 0;
createNode animCurveTL -n "nurbsCircle3_translateY";
	rename -uid "F98CC289-C846-968E-AD09-EE868EA8953A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 0 30 0 60 0 90 0 120 0 140 0 160 0 180 0
		 200 0 225 0;
createNode animCurveTL -n "nurbsCircle3_translateZ";
	rename -uid "D04B2577-E348-6EDE-9AF6-39AD27297671";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 0 30 0 60 0 90 0 120 0 140 0 160 0 180 0
		 200 0 225 0;
createNode animCurveTL -n "nurbsCircle4_translateX";
	rename -uid "72F9B2B6-D940-6AEA-C2E1-708EE4873BC8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  1 0 30 -1.4157036588711946 60 1.0732898652370864
		 90 -0.59314030379636051 120 0 140 1.7820464177251978 160 -1.1765719431917887 180 -0.75170355360818064
		 200 0 213 1.1934949589934831 225 0;
createNode animCurveTL -n "nurbsCircle4_translateY";
	rename -uid "BA6B175C-D44E-7363-298E-CFA05E49662D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  1 -10.940681411198909 30 -10.940681411198909
		 60 -9.8833267475634727 90 -9.7784954446527479 120 -10.940681411198909 140 -10.940681411198909
		 146 -8.7779003285239696 154 -16.076850162474749 160 -10.940681411198909 180 -12.271712482909493
		 200 -10.940681411198909 225 -10.940681411198909;
createNode animCurveTL -n "nurbsCircle4_translateZ";
	rename -uid "13084BAD-8740-FBBA-4874-C09C0EFFF5D4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  1 -3.8081731832173986 30 -4.1039290864662448
		 60 -5.2669955721121013 90 -2.2573892499056782 120 -3.8081731832173986 140 -3.7770674474180836
		 160 -3.828710323090057 180 -2.7444733622794715 200 -3.8081731832173986 213 -3.3878772611882582
		 225 -3.8081731832173986;
createNode animCurveTL -n "nurbsCircle5_translateX";
	rename -uid "ABACB090-5148-061F-E056-4D9AA72D576D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 0 30 0 60 0 90 0 120 0 140 0 160 0 180 0
		 200 0 225 0;
createNode animCurveTL -n "nurbsCircle5_translateY";
	rename -uid "D2EF3DF2-8E4D-7E26-A660-449BD3E5DAA1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 0 30 0 60 0 90 0 120 0 140 0 160 0 180 0
		 200 0 225 0;
createNode animCurveTL -n "nurbsCircle5_translateZ";
	rename -uid "4626EEE4-7E4B-1509-A445-23BB9281DF5A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 0 30 0 60 0 90 0 120 0 140 0 160 0 180 0
		 200 0 225 0;
createNode animCurveTL -n "nurbsCircle6_translateX";
	rename -uid "2A660694-664E-26A7-83F6-B0A35A989397";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 0 30 0 90 0 120 0 140 0 160 0 187 0 192 0
		 200 0 225 0;
	setAttr -s 10 ".kit[6:9]"  1 1 18 18;
	setAttr -s 10 ".kot[6:9]"  1 1 18 18;
	setAttr -s 10 ".kix[6:9]"  1 1 1 1;
	setAttr -s 10 ".kiy[6:9]"  0 0 0 0;
	setAttr -s 10 ".kox[6:9]"  1 1 1 1;
	setAttr -s 10 ".koy[6:9]"  0 0 0 0;
createNode animCurveTL -n "nurbsCircle6_translateY";
	rename -uid "AAA211AB-764D-6750-FD4C-299F94FC4B80";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 0 30 0 90 0 120 0 140 0 160 0 187 0 192 0
		 200 0 225 0;
	setAttr -s 10 ".kit[6:9]"  1 1 18 18;
	setAttr -s 10 ".kot[6:9]"  1 1 18 18;
	setAttr -s 10 ".kix[6:9]"  1 1 1 1;
	setAttr -s 10 ".kiy[6:9]"  0 0 0 0;
	setAttr -s 10 ".kox[6:9]"  1 1 1 1;
	setAttr -s 10 ".koy[6:9]"  0 0 0 0;
createNode animCurveTL -n "nurbsCircle6_translateZ";
	rename -uid "179AC844-834F-A448-C657-679ABBCC591B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 0 30 0 90 0 120 0 140 0 160 0 187 0 192 0
		 200 0 225 0;
	setAttr -s 10 ".kit[6:9]"  1 1 18 18;
	setAttr -s 10 ".kot[6:9]"  1 1 18 18;
	setAttr -s 10 ".kix[6:9]"  1 1 1 1;
	setAttr -s 10 ".kiy[6:9]"  0 0 0 0;
	setAttr -s 10 ".kox[6:9]"  1 1 1 1;
	setAttr -s 10 ".koy[6:9]"  0 0 0 0;
createNode animCurveTL -n "nurbsCircle7_translateX";
	rename -uid "AB4EEA75-5640-38F3-5DD8-EDB0AEC06565";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  1 0 30 0 40 0 85 0 90 0 120 0 140 0 160 0
		 188 0 200 0 225 0;
	setAttr -s 11 ".kit[8:10]"  1 18 18;
	setAttr -s 11 ".kot[8:10]"  1 18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTL -n "nurbsCircle7_translateY";
	rename -uid "7ED3E53A-FC41-D118-6C4F-A48C37467C00";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  1 0 30 0 40 0 85 0 90 0 120 0 140 0 160 0
		 188 0 200 0 225 0;
	setAttr -s 11 ".kit[8:10]"  1 18 18;
	setAttr -s 11 ".kot[8:10]"  1 18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTL -n "nurbsCircle7_translateZ";
	rename -uid "9CAC3A2C-DE40-EDA7-91C2-E1AC36F4AD4D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  1 0 30 0 40 0 85 0 90 0 120 0 140 0 160 0
		 188 0 200 0 225 0;
	setAttr -s 11 ".kit[8:10]"  1 18 18;
	setAttr -s 11 ".kot[8:10]"  1 18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTL -n "nurbsCircle8_translateX";
	rename -uid "5F9915FB-444E-2EA6-9EB6-5CB2EF07C194";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 0 30 0 60 0 90 0 120 0 140 0 160 0 180 0
		 200 0 225 0;
createNode animCurveTL -n "nurbsCircle8_translateY";
	rename -uid "41A69F24-F94E-9CB6-3E2B-118F0C719F37";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 0 30 0 60 0 90 0 120 0 140 0 160 0 180 0
		 200 0 225 0;
createNode animCurveTL -n "nurbsCircle8_translateZ";
	rename -uid "A26FF75E-6A4C-ED1C-2CEE-489D20191B9F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 0 30 0 60 0 90 0 120 0 140 0 160 0 180 0
		 200 0 225 0;
createNode animCurveTL -n "nurbsCircle9_translateX";
	rename -uid "23F4A054-304A-721F-4A96-52AC8567596B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 0 30 0 60 0 90 0 120 0 140 0 160 0 180 0
		 200 0 225 0;
createNode animCurveTL -n "nurbsCircle9_translateY";
	rename -uid "CEB58385-1B41-ABBF-F7EE-F9BEDA138B2A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 0 30 0 60 0 90 0 120 0 140 0 160 0 180 0
		 200 0 225 0;
createNode animCurveTL -n "nurbsCircle9_translateZ";
	rename -uid "B2E2141B-064B-204A-90F7-3CB78B594223";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 0 30 0 60 0 90 0 120 0 140 0 160 0 180 0
		 200 0 225 0;
createNode animCurveTU -n "nurbsCircle1_visibility";
	rename -uid "01EA5F8E-A740-8F2A-8258-24BC51218706";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 1 30 1 60 1 90 1 120 1 140 1 160 1 180 1
		 200 1 225 1;
	setAttr -s 10 ".kot[0:9]"  5 5 5 5 5 5 5 5 
		5 5;
createNode animCurveTA -n "nurbsCircle1_rotateX";
	rename -uid "B8659345-CB4E-48F1-5BAB-E3A108EF956B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 0 30 0 60 0 90 0 120 0 140 0 160 0 180 0
		 200 0 225 0;
createNode animCurveTA -n "nurbsCircle1_rotateY";
	rename -uid "8CAD80AC-FD46-9D13-2EE6-F8A69925ED9F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 0 30 0 60 0 90 0 120 0 140 0 160 0 180 0
		 200 0 225 0;
createNode animCurveTA -n "nurbsCircle1_rotateZ";
	rename -uid "7DAA8190-C545-3D1E-C369-0C921FACB195";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 0 30 0 60 0 90 0 120 0 140 0 160 0 180 0
		 200 0 225 0;
createNode animCurveTU -n "nurbsCircle1_scaleX";
	rename -uid "4AADEAA3-1A4E-A45F-8EE1-47979AC221D5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 1 30 1 60 1 90 1 120 1 140 1 160 1 180 1
		 200 1 225 1;
createNode animCurveTU -n "nurbsCircle1_scaleY";
	rename -uid "16325229-5541-089A-4DF0-E6AD33343448";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 1 30 1 60 1 90 1 120 1 140 1 160 1 180 1
		 200 1 225 1;
createNode animCurveTU -n "nurbsCircle1_scaleZ";
	rename -uid "3E9F37CA-CB48-AD38-3343-E7B206435892";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 1 30 1 60 1 90 1 120 1 140 1 160 1 180 1
		 200 1 225 1;
createNode animCurveTU -n "nurbsCircle2_visibility";
	rename -uid "59C09E2B-324D-91C7-240F-20A65AF72E6C";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 1 30 1 60 1 90 1 120 1 140 1 160 1 180 1
		 200 1 225 1;
	setAttr -s 10 ".kot[0:9]"  5 5 5 5 5 5 5 5 
		5 5;
createNode animCurveTA -n "nurbsCircle2_rotateX";
	rename -uid "7A8B371F-C54C-45ED-2E0B-96A9C68A8087";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 0 30 0 60 0 90 0 120 0 140 0 160 0 180 0
		 200 0 225 0;
createNode animCurveTA -n "nurbsCircle2_rotateY";
	rename -uid "1DEBE27B-D44C-22BF-B75E-AD944FA03164";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 0 30 0 60 0 90 0 120 0 140 0 160 0 180 0
		 200 0 225 0;
createNode animCurveTA -n "nurbsCircle2_rotateZ";
	rename -uid "826145E9-BD4D-CF14-A9A6-8BAE796AECE2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 0 30 0 60 0 90 0 120 0 140 0 160 0 180 0
		 200 0 225 0;
createNode animCurveTU -n "nurbsCircle2_scaleX";
	rename -uid "7AFCD47E-0548-1893-0231-86A897F39B26";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 1 30 1 60 1 90 1 120 1 140 1 160 1 180 1
		 200 1 225 1;
createNode animCurveTU -n "nurbsCircle2_scaleY";
	rename -uid "8191894B-614B-A138-F448-A1924363A391";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 1 30 1 60 1 90 1 120 1 140 1 160 1 180 1
		 200 1 225 1;
createNode animCurveTU -n "nurbsCircle2_scaleZ";
	rename -uid "582FBAED-FC4B-6FB9-5CDA-4482588DBE56";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 1 30 1 60 1 90 1 120 1 140 1 160 1 180 1
		 200 1 225 1;
createNode animCurveTU -n "nurbsCircle3_visibility";
	rename -uid "E5FC1164-C543-1267-0607-58AA1AD8F9D3";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 1 30 1 60 1 90 1 120 1 140 1 160 1 180 1
		 200 1 225 1;
	setAttr -s 10 ".kot[0:9]"  5 5 5 5 5 5 5 5 
		5 5;
createNode animCurveTA -n "nurbsCircle3_rotateX";
	rename -uid "2625E832-9C40-EF27-D193-26822628B216";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 0 30 0 60 0 90 0 120 0 140 0 160 0 180 0
		 200 0 225 0;
createNode animCurveTA -n "nurbsCircle3_rotateY";
	rename -uid "34C282BB-1142-528E-A0B8-25B6D9A3DA46";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 0 30 0 60 0 90 0 120 0 140 0 160 0 180 0
		 200 0 225 0;
createNode animCurveTA -n "nurbsCircle3_rotateZ";
	rename -uid "A31547FB-8C42-EA12-4AE0-F5960D19E280";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 0 30 0 60 0 90 0 120 0 140 0 160 0 180 0
		 200 0 225 0;
createNode animCurveTU -n "nurbsCircle3_scaleX";
	rename -uid "0055E167-B243-30D1-A909-B19D97874641";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 1 30 1 60 1 90 1 120 1 140 1 160 1 180 1
		 200 1 225 1;
createNode animCurveTU -n "nurbsCircle3_scaleY";
	rename -uid "219AE82F-144C-9561-C294-B4A1844D7669";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 1 30 1 60 1 90 1 120 1 140 1 160 1 180 1
		 200 1 225 1;
createNode animCurveTU -n "nurbsCircle3_scaleZ";
	rename -uid "7D1F74E5-1348-EE5E-9889-D6AB84D137F5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 1 30 1 60 1 90 1 120 1 140 1 160 1 180 1
		 200 1 225 1;
createNode animCurveTU -n "nurbsCircle4_visibility";
	rename -uid "FD63BD68-724E-938A-88B3-038435FC9D8D";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 1 30 1 60 1 90 1 120 1 140 1 160 1 180 1
		 200 1 225 1;
	setAttr -s 10 ".kot[0:9]"  5 5 5 5 5 5 5 5 
		5 5;
createNode animCurveTA -n "nurbsCircle4_rotateX";
	rename -uid "1D73EC34-6742-26A7-5920-07B4C375EB8E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  1 -6.1852510082125551 30 -6.1852510082125551
		 60 -6.1852510082125551 90 -6.1852510082125551 120 -6.1852510082125551 140 -6.1852510082125551
		 146 -7.5284381974903294 160 -6.1852510082125551 180 -6.1852510082125551 200 -6.1852510082125551
		 225 -6.1852510082125551;
createNode animCurveTA -n "nurbsCircle4_rotateY";
	rename -uid "E8A11F34-0340-D7D2-AE85-318D49364BF8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  1 -35.432885635869184 30 -35.432885635869184
		 60 -35.432885635869184 90 -35.432885635869184 120 -35.432885635869184 140 -35.432885635869184
		 146 -34.619288971023963 160 -35.432885635869184 180 -35.432885635869184 200 -35.432885635869184
		 225 -35.432885635869184;
createNode animCurveTA -n "nurbsCircle4_rotateZ";
	rename -uid "9729BD68-3047-2E61-86B1-E79301EE3927";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  1 0.16463416787494009 30 0.16463416787494009
		 60 0.16463416787494009 90 0.16463416787494009 120 0.16463416787494009 140 0.16463416787494009
		 146 0.0027882502714248183 160 0.16463416787494009 180 0.16463416787494009 200 0.16463416787494009
		 225 0.16463416787494009;
createNode animCurveTU -n "nurbsCircle4_scaleX";
	rename -uid "5C5836BB-714F-ACEE-FEA6-EEB4CF435E6A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 1 30 1 60 1 90 1 120 1 140 1 160 1 180 1
		 200 1 225 1;
createNode animCurveTU -n "nurbsCircle4_scaleY";
	rename -uid "74D253CF-F04F-1DDE-2910-F39789E2D0A5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 1 30 1 60 1 90 1 120 1 140 1 160 1 180 1
		 200 1 225 1;
createNode animCurveTU -n "nurbsCircle4_scaleZ";
	rename -uid "1C4EBD7B-DA46-09FD-18E8-0D9F51205911";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 1 30 1 60 1 90 1 120 1 140 1 160 1 180 1
		 200 1 225 1;
createNode animCurveTU -n "nurbsCircle5_visibility";
	rename -uid "C96686A4-354D-93F6-4A26-148671CB7A8F";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 1 30 1 60 1 90 1 120 1 140 1 160 1 180 1
		 200 1 225 1;
	setAttr -s 10 ".kot[0:9]"  5 5 5 5 5 5 5 5 
		5 5;
createNode animCurveTA -n "nurbsCircle5_rotateX";
	rename -uid "4D69A9B8-BC4D-8665-2E6D-CF8695F7A936";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 11.557224632622599 30 11.557224632622599
		 60 11.557224632622599 90 11.557224632622599 120 11.557224632622599 140 11.557224632622599
		 160 11.557224632622599 180 11.557224632622599 200 11.557224632622599 225 11.557224632622599;
createNode animCurveTA -n "nurbsCircle5_rotateY";
	rename -uid "4404C194-2047-6FF6-E8D7-9EB0F15E7122";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 0 30 0 60 0 90 0 120 0 140 0 160 0 180 0
		 200 0 225 0;
createNode animCurveTA -n "nurbsCircle5_rotateZ";
	rename -uid "35341C0D-EF43-C894-372A-C3947794D5CC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 0 30 0 60 0 90 0 120 0 140 0 160 0 180 0
		 200 0 225 0;
createNode animCurveTU -n "nurbsCircle5_scaleX";
	rename -uid "C4A84F81-644C-E5E8-7DF1-1F802E9654BE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 1 30 1 60 1 90 1 120 1 140 1 160 1 180 1
		 200 1 225 1;
createNode animCurveTU -n "nurbsCircle5_scaleY";
	rename -uid "BF4032FB-C04F-6CC0-0A86-6D9BD7DB37DF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 1 30 1 60 1 90 1 120 1 140 1 160 1 180 1
		 200 1 225 1;
createNode animCurveTU -n "nurbsCircle5_scaleZ";
	rename -uid "528FA483-2347-CC52-FA37-04A7ADCC4122";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 1 30 1 60 1 90 1 120 1 140 1 160 1 180 1
		 200 1 225 1;
createNode animCurveTU -n "nurbsCircle6_visibility";
	rename -uid "B4CE3D32-0643-3A72-0193-3FAEF2F1E63B";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 1 30 1 90 1 120 1 140 1 160 1 187 1 192 1
		 200 1 225 1;
	setAttr -s 10 ".kit[0:9]"  9 9 9 9 9 9 1 1 
		9 9;
	setAttr -s 10 ".kix[6:9]"  1 1 1 1;
	setAttr -s 10 ".kiy[6:9]"  0 0 0 0;
createNode animCurveTA -n "nurbsCircle6_rotateX";
	rename -uid "F9354B5A-E046-45BF-4C38-FEB760397869";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  1 0 30 0 45 -0.065299060224288039 80 -0.35004107730136014
		 90 0 120 0 140 0 160 0 173 2.0679348240300541 187 -1.3818288271068366 192 0 200 0
		 225 0;
	setAttr -s 13 ".kit[9:12]"  1 1 18 18;
	setAttr -s 13 ".kot[9:12]"  1 1 18 18;
	setAttr -s 13 ".kix[9:12]"  1 1 1 1;
	setAttr -s 13 ".kiy[9:12]"  0 0 0 0;
	setAttr -s 13 ".kox[9:12]"  1 1 1 1;
	setAttr -s 13 ".koy[9:12]"  0 0 0 0;
createNode animCurveTA -n "nurbsCircle6_rotateY";
	rename -uid "D21A185E-6644-2AB7-720A-C7BFEE15A7FB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  1 0 30 0 45 -0.6364686278727183 80 -1.7803050617719043
		 90 0 120 0 140 0 160 0 173 5.0362320427211058 187 8.1545134992885 192 0 200 0 225 0;
	setAttr -s 13 ".kit[9:12]"  1 1 18 18;
	setAttr -s 13 ".kot[9:12]"  1 1 18 18;
	setAttr -s 13 ".kix[9:12]"  1 1 1 1;
	setAttr -s 13 ".kiy[9:12]"  0 0 0 0;
	setAttr -s 13 ".kox[9:12]"  1 1 1 1;
	setAttr -s 13 ".koy[9:12]"  0 0 0 0;
createNode animCurveTA -n "nurbsCircle6_rotateZ";
	rename -uid "942728A3-A142-64BE-1000-CE982A06CE0C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  1 -3.0554115733504545 30 -3.0554115733504545
		 45 0.068883506909716133 80 -1.4052258722511597 90 -3.0554115733504545 120 -3.0554115733504545
		 140 -3.0554115733504545 160 -3.0554115733504545 173 -3.7474558289231026 187 -3.8304939474008184
		 192 -3.0554115733504545 200 -3.0554115733504545 225 -3.0554115733504545;
	setAttr -s 13 ".kit[9:12]"  1 1 18 18;
	setAttr -s 13 ".kot[9:12]"  1 1 18 18;
	setAttr -s 13 ".kix[9:12]"  1 1 1 1;
	setAttr -s 13 ".kiy[9:12]"  0 0 0 0;
	setAttr -s 13 ".kox[9:12]"  1 1 1 1;
	setAttr -s 13 ".koy[9:12]"  0 0 0 0;
createNode animCurveTU -n "nurbsCircle6_scaleX";
	rename -uid "CDFFA379-DA44-A9C4-FC44-2AA3E595E64B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 1 30 1 90 1 120 1 140 1 160 1 187 1 192 1
		 200 1 225 1;
	setAttr -s 10 ".kit[6:9]"  1 1 18 18;
	setAttr -s 10 ".kot[6:9]"  1 1 18 18;
	setAttr -s 10 ".kix[6:9]"  1 1 1 1;
	setAttr -s 10 ".kiy[6:9]"  0 0 0 0;
	setAttr -s 10 ".kox[6:9]"  1 1 1 1;
	setAttr -s 10 ".koy[6:9]"  0 0 0 0;
createNode animCurveTU -n "nurbsCircle6_scaleY";
	rename -uid "D2C04E0E-9A47-8DF2-101A-8C9D5155DFAC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 1 30 1 90 1 120 1 140 1 160 1 187 1 192 1
		 200 1 225 1;
	setAttr -s 10 ".kit[6:9]"  1 1 18 18;
	setAttr -s 10 ".kot[6:9]"  1 1 18 18;
	setAttr -s 10 ".kix[6:9]"  1 1 1 1;
	setAttr -s 10 ".kiy[6:9]"  0 0 0 0;
	setAttr -s 10 ".kox[6:9]"  1 1 1 1;
	setAttr -s 10 ".koy[6:9]"  0 0 0 0;
createNode animCurveTU -n "nurbsCircle6_scaleZ";
	rename -uid "3B68C022-4D4B-B8C5-686B-468A3889D8C0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 1 30 1 90 1 120 1 140 1 160 1 187 1 192 1
		 200 1 225 1;
	setAttr -s 10 ".kit[6:9]"  1 1 18 18;
	setAttr -s 10 ".kot[6:9]"  1 1 18 18;
	setAttr -s 10 ".kix[6:9]"  1 1 1 1;
	setAttr -s 10 ".kiy[6:9]"  0 0 0 0;
	setAttr -s 10 ".kox[6:9]"  1 1 1 1;
	setAttr -s 10 ".koy[6:9]"  0 0 0 0;
createNode animCurveTU -n "nurbsCircle9_visibility";
	rename -uid "502C2657-B441-9520-9E82-8284BE4D224E";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 1 30 1 60 1 90 1 120 1 140 1 160 1 180 1
		 200 1 225 1;
	setAttr -s 10 ".kot[0:9]"  5 5 5 5 5 5 5 5 
		5 5;
createNode animCurveTA -n "nurbsCircle9_rotateX";
	rename -uid "05D0554D-7F4E-B2A6-5DD2-08A75508CD18";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 0 30 0 60 0 90 0 120 0 140 0 160 0 180 0
		 200 0 225 0;
createNode animCurveTA -n "nurbsCircle9_rotateY";
	rename -uid "6F3BCBCF-B844-33B7-CD89-2FBBB5E3BE6C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 0 30 0 60 0 90 0 120 0 140 0 160 0 180 0
		 200 0 225 0;
createNode animCurveTA -n "nurbsCircle9_rotateZ";
	rename -uid "806EB596-4E45-97F6-D560-D785341FB9D5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 0 30 0 60 0 90 0 120 0 140 0 160 0 180 0
		 200 0 225 0;
createNode animCurveTU -n "nurbsCircle9_scaleX";
	rename -uid "BCCFCC45-1B41-BF12-EF3D-75AE7914FF13";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 1 30 1 60 1 90 1 120 1 140 1 160 1 180 1
		 200 1 225 1;
createNode animCurveTU -n "nurbsCircle9_scaleY";
	rename -uid "75694792-5B4C-36A9-BAE5-7BBB1DDB82E9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 1 30 1 60 1 90 1 120 1 140 1 160 1 180 1
		 200 1 225 1;
createNode animCurveTU -n "nurbsCircle9_scaleZ";
	rename -uid "B76C4B42-3E43-6CDE-9E26-6DBAD4769F79";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 1 30 1 60 1 90 1 120 1 140 1 160 1 180 1
		 200 1 225 1;
createNode animCurveTU -n "nurbsCircle8_visibility";
	rename -uid "817EE3AD-974F-5B6F-E3DA-969EB1EFB615";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 1 30 1 60 1 90 1 120 1 140 1 160 1 180 1
		 200 1 225 1;
	setAttr -s 10 ".kot[0:9]"  5 5 5 5 5 5 5 5 
		5 5;
createNode animCurveTA -n "nurbsCircle8_rotateX";
	rename -uid "4299E941-B544-D268-28AF-01A946B5B7E4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 0 30 0 60 0 90 0 120 0 140 0 160 0 180 0
		 200 0 225 0;
createNode animCurveTA -n "nurbsCircle8_rotateY";
	rename -uid "2640A3C0-4448-9D72-CF11-A48E08277B46";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 0 30 0 60 0 90 0 120 0 140 0 160 0 180 0
		 200 0 225 0;
createNode animCurveTA -n "nurbsCircle8_rotateZ";
	rename -uid "5C988BC7-1A49-796B-651E-6D9910FC890E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 0 30 0 60 0 90 0 120 0 140 0 160 0 180 0
		 200 0 225 0;
createNode animCurveTU -n "nurbsCircle8_scaleX";
	rename -uid "38E25560-7043-94F0-7C1E-1B8B137C6CFE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 1 30 1 60 1 90 1 120 1 140 1 160 1 180 1
		 200 1 225 1;
createNode animCurveTU -n "nurbsCircle8_scaleY";
	rename -uid "7849D9C9-A041-EB0E-189C-5E92BAF761C8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 1 30 1 60 1 90 1 120 1 140 1 160 1 180 1
		 200 1 225 1;
createNode animCurveTU -n "nurbsCircle8_scaleZ";
	rename -uid "6DCE0969-2541-1DF8-CF97-83B6F98C00A2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 1 30 1 60 1 90 1 120 1 140 1 160 1 180 1
		 200 1 225 1;
createNode animCurveTU -n "nurbsCircle7_visibility";
	rename -uid "8D9E5181-3D42-23A7-50ED-429FF4EA2909";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  1 1 30 1 40 1 85 1 90 1 120 1 140 1 160 1
		 188 1 200 1 225 1;
	setAttr -s 11 ".kit[0:10]"  9 9 9 9 9 9 9 9 
		1 9 9;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
createNode animCurveTA -n "nurbsCircle7_rotateX";
	rename -uid "E2E4C7E0-094C-511D-C58A-80B56E652124";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  1 -9.636713047527536 30 -9.636713047527536
		 40 -9.636713047527536 50 -8.4692305887550869 55 -6.7416292914268707 75 -7.147820449565458
		 85 -9.636713047527536 90 -9.636713047527536 120 -9.636713047527536 140 -9.636713047527536
		 160 -9.636713047527536 166 -4.1213433096133665 182 -4.1213433096133665 188 -9.636713047527536
		 200 -9.636713047527536 225 -9.636713047527536;
	setAttr -s 16 ".kit[12:15]"  1 1 18 18;
	setAttr -s 16 ".kot[12:15]"  1 1 18 18;
	setAttr -s 16 ".kix[12:15]"  1 1 1 1;
	setAttr -s 16 ".kiy[12:15]"  0 0 0 0;
	setAttr -s 16 ".kox[12:15]"  1 1 1 1;
	setAttr -s 16 ".koy[12:15]"  0 0 0 0;
createNode animCurveTA -n "nurbsCircle7_rotateY";
	rename -uid "CC331F87-4841-A0D9-8EB2-A6AD3DDE9B52";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  1 28.973719328867386 30 28.973719328867386
		 40 28.973719328867386 50 6.0830424222937101 55 3.5584843564923694 75 4.9743480037731933
		 85 28.973719328867386 90 28.973719328867386 120 28.973719328867386 140 28.973719328867386
		 160 28.973719328867386 166 43.863960702030944 182 43.863960702030944 188 28.973719328867386
		 200 28.973719328867386 225 28.973719328867386;
	setAttr -s 16 ".kit[12:15]"  1 1 18 18;
	setAttr -s 16 ".kot[12:15]"  1 1 18 18;
	setAttr -s 16 ".kix[12:15]"  1 1 1 1;
	setAttr -s 16 ".kiy[12:15]"  0 0 0 0;
	setAttr -s 16 ".kox[12:15]"  1 1 1 1;
	setAttr -s 16 ".koy[12:15]"  0 0 0 0;
createNode animCurveTA -n "nurbsCircle7_rotateZ";
	rename -uid "3245B493-124D-C031-E7C1-A6A264D9D635";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  1 -3.3371751004744614 30 -3.3371751004744614
		 40 -3.3371751004744614 50 0.46086563322892016 55 3.7203775353269632 75 2.0452804679124985
		 85 -3.3371751004744614 90 -3.3371751004744614 120 -3.3371751004744614 140 -3.3371751004744614
		 160 -3.3371751004744614 166 2.2779352915782867 182 2.2779352915782867 188 -3.3371751004744614
		 200 -3.3371751004744614 225 -3.3371751004744614;
	setAttr -s 16 ".kit[12:15]"  1 1 18 18;
	setAttr -s 16 ".kot[12:15]"  1 1 18 18;
	setAttr -s 16 ".kix[12:15]"  1 1 1 1;
	setAttr -s 16 ".kiy[12:15]"  0 0 0 0;
	setAttr -s 16 ".kox[12:15]"  1 1 1 1;
	setAttr -s 16 ".koy[12:15]"  0 0 0 0;
createNode animCurveTU -n "nurbsCircle7_scaleX";
	rename -uid "AB89F7B6-BD47-E6B0-2987-628F35D2B4B4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  1 1 30 1 40 1 85 1 90 1 120 1 140 1 160 1
		 188 1 200 1 225 1;
	setAttr -s 11 ".kit[8:10]"  1 18 18;
	setAttr -s 11 ".kot[8:10]"  1 18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTU -n "nurbsCircle7_scaleY";
	rename -uid "0D8C24DB-F94E-1087-B182-758598CB9C1E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  1 1 30 1 40 1 85 1 90 1 120 1 140 1 160 1
		 188 1 200 1 225 1;
	setAttr -s 11 ".kit[8:10]"  1 18 18;
	setAttr -s 11 ".kot[8:10]"  1 18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTU -n "nurbsCircle7_scaleZ";
	rename -uid "1D9AA352-0340-B831-B77A-C3A5AB222CA1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  1 1 30 1 40 1 85 1 90 1 120 1 140 1 160 1
		 188 1 200 1 225 1;
	setAttr -s 11 ".kit[8:10]"  1 18 18;
	setAttr -s 11 ".kot[8:10]"  1 18 18;
	setAttr -s 11 ".kix[8:10]"  1 1 1;
	setAttr -s 11 ".kiy[8:10]"  0 0 0;
	setAttr -s 11 ".kox[8:10]"  1 1 1;
	setAttr -s 11 ".koy[8:10]"  0 0 0;
createNode animCurveTU -n "nurbsCircle11_visibility";
	rename -uid "BD001F3C-914A-DD2B-A3B2-039CCC8567D0";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 1 30 1 60 1 90 1 120 1 140 1 160 1 180 1
		 200 1 225 1;
	setAttr -s 10 ".kot[0:9]"  5 5 5 5 5 5 5 5 
		5 5;
createNode animCurveTA -n "nurbsCircle11_rotateX";
	rename -uid "B4D429DF-B846-C8A2-8FBA-8788E644A86C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 0 30 0 60 0 90 0 120 0 140 0 160 0 180 0
		 200 0 225 0;
createNode animCurveTA -n "nurbsCircle11_rotateY";
	rename -uid "0BF1BA0B-964F-1A1D-A584-1786D8A4E8FB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 0 30 0 60 0 90 0 120 0 140 0 160 0 180 0
		 200 0 225 0;
createNode animCurveTA -n "nurbsCircle11_rotateZ";
	rename -uid "69B1D9A9-3046-192D-9879-30A701EFE214";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 0 30 0 60 0 90 0 120 0 140 0 160 0 180 0
		 200 0 225 0;
createNode animCurveTU -n "nurbsCircle11_scaleX";
	rename -uid "80BC1D48-4B40-9D95-CF79-6EB890362E27";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 1 30 1 60 1 90 1 120 1 140 1 160 1 180 1
		 200 1 225 1;
createNode animCurveTU -n "nurbsCircle11_scaleY";
	rename -uid "CF0F9269-CE48-0DCB-C66A-858E2DA8A054";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 1 30 1 60 1 90 1 120 1 140 1 160 1 180 1
		 200 1 225 1;
createNode animCurveTU -n "nurbsCircle11_scaleZ";
	rename -uid "9F02E92C-6E4F-A086-927A-13B7A117416D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 1 30 1 60 1 90 1 120 1 140 1 160 1 180 1
		 200 1 225 1;
createNode animCurveTU -n "nurbsCircle12_visibility";
	rename -uid "7C1EF838-4141-F80F-7EF6-2EBF1161A9FA";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  1 1 30 1 60 1 90 1 120 1 140 1 146 1 152 1
		 160 1 180 1 200 1 225 1;
	setAttr -s 12 ".kot[0:11]"  5 5 5 5 5 5 5 5 
		5 5 5 5;
createNode animCurveTA -n "nurbsCircle12_rotateX";
	rename -uid "F3A65ADB-6D42-80E1-910E-B4B57D5D8CAE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  1 -24.77848291268003 30 -24.77848291268003
		 60 -24.77848291268003 90 -24.77848291268003 120 -24.77848291268003 140 -24.77848291268003
		 146 -24.77848291268003 152 -24.77848291268003 160 -24.77848291268003 180 -24.77848291268003
		 200 -24.77848291268003 225 -24.77848291268003;
createNode animCurveTA -n "nurbsCircle12_rotateY";
	rename -uid "5D0DEC21-5F4F-6628-D910-2A906CCC9BFE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  1 19.278633500653267 30 19.278633500653267
		 60 19.278633500653267 90 19.278633500653267 120 19.278633500653267 140 19.278633500653267
		 146 19.278633500653267 152 19.278633500653267 160 19.278633500653267 180 19.278633500653267
		 200 19.278633500653267 225 19.278633500653267;
createNode animCurveTA -n "nurbsCircle12_rotateZ";
	rename -uid "41C6AACD-5B49-D139-A4E4-E3B548584A78";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  1 -118.89557508724543 30 -118.89557508724543
		 60 -118.89557508724543 90 -118.89557508724543 120 -118.89557508724543 140 -118.89557508724543
		 146 -118.89557508724543 152 -118.89557508724543 160 -118.89557508724543 180 -118.89557508724543
		 200 -118.89557508724543 225 -118.89557508724543;
createNode animCurveTU -n "nurbsCircle12_scaleX";
	rename -uid "78D06677-3045-124A-46B8-35A72DF62549";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  1 1 30 1 60 1 90 1 120 1 140 1 146 1 152 1
		 160 1 180 1 200 1 225 1;
createNode animCurveTU -n "nurbsCircle12_scaleY";
	rename -uid "E7E6C8DF-7042-1AF8-6CD1-B38623B1CF83";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  1 1 30 1 60 1 90 1 120 1 140 1 146 1 152 1
		 160 1 180 1 200 1 225 1;
createNode animCurveTU -n "nurbsCircle12_scaleZ";
	rename -uid "A9EDA2F4-BE4A-B83B-5E1A-B8958D461974";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  1 1 30 1 60 1 90 1 120 1 140 1 146 1 152 1
		 160 1 180 1 200 1 225 1;
createNode animCurveTU -n "nurbsCircle12_Grip";
	rename -uid "859D1FD6-8B43-3091-367A-959136B55BA4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  1 0.5 30 0.5 60 0.5 90 0.5 120 0.5 140 0.5
		 146 0.5 152 0.5 160 0.5 180 0.5 200 0.5 225 0.5;
createNode animCurveTU -n "nurbsCircle13_visibility";
	rename -uid "B36A3FE3-F645-A492-0A88-64A57A22DE3B";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 1 30 1 60 1 90 1 120 1 140 1 160 1 180 1
		 200 1 225 1;
	setAttr -s 10 ".kot[0:9]"  5 5 5 5 5 5 5 5 
		5 5;
createNode animCurveTA -n "nurbsCircle13_rotateX";
	rename -uid "A8411DE2-204C-E24A-5092-DFA817D3A80D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 0 30 0 60 0 90 0 120 0 140 0 160 0 180 0
		 200 0 225 0;
createNode animCurveTA -n "nurbsCircle13_rotateY";
	rename -uid "CA1E5EB7-8D4E-DCF4-F86D-7A82463073C5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 0 30 0 60 0 90 0 120 0 140 0 160 0 180 0
		 200 0 225 0;
createNode animCurveTA -n "nurbsCircle13_rotateZ";
	rename -uid "CEAC44B9-974A-DE17-E763-31B4DF012B78";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 0 30 0 60 0 90 0 120 0 140 0 160 0 180 0
		 200 0 225 0;
createNode animCurveTU -n "nurbsCircle13_scaleX";
	rename -uid "7420C63C-0B4D-54A6-90EA-F5BB258F5277";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 1 30 1 60 1 90 1 120 1 140 1 160 1 180 1
		 200 1 225 1;
createNode animCurveTU -n "nurbsCircle13_scaleY";
	rename -uid "31AA5646-1C48-24FE-AC14-E9A47F61EB1F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 1 30 1 60 1 90 1 120 1 140 1 160 1 180 1
		 200 1 225 1;
createNode animCurveTU -n "nurbsCircle13_scaleZ";
	rename -uid "0BDDD442-344C-D291-EA76-6AA03DE810C2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 1 30 1 60 1 90 1 120 1 140 1 160 1 180 1
		 200 1 225 1;
createNode animCurveTU -n "nurbsCircle14_visibility";
	rename -uid "A0FAAD6C-A54D-D961-7E9A-6F863D7BBC9B";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 1 30 1 60 1 90 1 120 1 140 1 160 1 180 1
		 200 1 225 1;
	setAttr -s 10 ".kot[0:9]"  5 5 5 5 5 5 5 5 
		5 5;
createNode animCurveTA -n "nurbsCircle14_rotateX";
	rename -uid "0242E790-7845-D96E-D715-888C62E1A694";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 0 30 0 60 0 90 0 120 0 140 0 160 0 180 0
		 200 0 225 0;
createNode animCurveTA -n "nurbsCircle14_rotateY";
	rename -uid "81671ACD-3042-9A92-A069-F9BF36499033";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 -48.640487878130692 30 -48.640487878130692
		 60 -48.640487878130692 90 -48.640487878130692 120 -48.640487878130692 140 -48.640487878130692
		 160 -48.640487878130692 180 -48.640487878130692 200 -48.640487878130692 225 -48.640487878130692;
createNode animCurveTA -n "nurbsCircle14_rotateZ";
	rename -uid "269D704E-EE44-AA7A-32ED-13B4F9D128C0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 0 30 0 60 0 90 0 120 0 140 0 160 0 180 0
		 200 0 225 0;
createNode animCurveTU -n "nurbsCircle14_scaleX";
	rename -uid "034C1E09-6549-AB87-CF35-7BAEAA71AB0D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 1 30 1 60 1 90 1 120 1 140 1 160 1 180 1
		 200 1 225 1;
createNode animCurveTU -n "nurbsCircle14_scaleY";
	rename -uid "E5070572-044E-D5D8-39DC-D7A4698F9E6D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 1 30 1 60 1 90 1 120 1 140 1 160 1 180 1
		 200 1 225 1;
createNode animCurveTU -n "nurbsCircle14_scaleZ";
	rename -uid "6E521095-124C-4ADA-5418-92BE540F1ECB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 1 30 1 60 1 90 1 120 1 140 1 160 1 180 1
		 200 1 225 1;
createNode animCurveTU -n "nurbsCircle15_visibility";
	rename -uid "18C2181C-AA4A-ACEE-D2F9-60AF85CBAAFB";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 1 30 1 60 1 90 1 120 1 140 1 160 1 180 1
		 200 1 225 1;
	setAttr -s 10 ".kot[0:9]"  5 5 5 5 5 5 5 5 
		5 5;
createNode animCurveTA -n "nurbsCircle15_rotateX";
	rename -uid "1AE84378-9742-F3AC-2F89-3C8C26A6A0BE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 0 30 0 60 0 90 0 120 0 140 0 160 0 180 0
		 200 0 225 0;
createNode animCurveTA -n "nurbsCircle15_rotateY";
	rename -uid "36DDC4B3-F940-F6C4-B15A-F4B214F2F909";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 0 30 0 60 0 90 0 120 0 140 0 160 0 180 0
		 200 0 225 0;
createNode animCurveTA -n "nurbsCircle15_rotateZ";
	rename -uid "7CD92432-9E49-655A-37CE-77AC618A72A7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 0 30 0 60 0 90 0 120 0 140 0 160 0 180 0
		 200 0 225 0;
createNode animCurveTU -n "nurbsCircle15_scaleX";
	rename -uid "30D8710D-2C4A-28D6-3208-038C4CF9F7A9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 1 30 1 60 1 90 1 120 1 140 1 160 1 180 1
		 200 1 225 1;
createNode animCurveTU -n "nurbsCircle15_scaleY";
	rename -uid "B9958B7F-FC45-7E5E-ED56-7699364CE9DF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 1 30 1 60 1 90 1 120 1 140 1 160 1 180 1
		 200 1 225 1;
createNode animCurveTU -n "nurbsCircle15_scaleZ";
	rename -uid "17521E3E-5A45-30CE-981F-C0A5EDF73716";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 1 30 1 60 1 90 1 120 1 140 1 160 1 180 1
		 200 1 225 1;
createNode animCurveTU -n "nurbsCircle16_visibility";
	rename -uid "754C0D09-EF46-704C-EE73-DB9E1E5F177F";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 1 30 1 60 1 90 1 120 1 140 1 160 1 180 1
		 200 1 225 1;
	setAttr -s 10 ".kot[0:9]"  5 5 5 5 5 5 5 5 
		5 5;
createNode animCurveTA -n "nurbsCircle16_rotateX";
	rename -uid "3379BF67-F849-4FDA-410C-ADA00AD8930D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 0 30 0 60 0 90 0 120 0 140 0 160 0 180 0
		 200 0 225 0;
createNode animCurveTA -n "nurbsCircle16_rotateY";
	rename -uid "A1EF3D1B-E64E-679C-9377-54A162BB94B7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 0 30 0 60 0 90 0 120 0 140 0 160 0 180 0
		 200 0 225 0;
createNode animCurveTA -n "nurbsCircle16_rotateZ";
	rename -uid "6C2ED662-5F4C-C3CD-97D5-C5B598AFA1A3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 0 30 0 60 0 90 0 120 0 140 0 160 0 180 0
		 200 0 225 0;
createNode animCurveTU -n "nurbsCircle16_scaleX";
	rename -uid "B6C01C50-3A4D-3359-24E7-BFB408C1720E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 1 30 1 60 1 90 1 120 1 140 1 160 1 180 1
		 200 1 225 1;
createNode animCurveTU -n "nurbsCircle16_scaleY";
	rename -uid "942357B0-8144-9E9F-0997-7CB8D1F314EB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 1 30 1 60 1 90 1 120 1 140 1 160 1 180 1
		 200 1 225 1;
createNode animCurveTU -n "nurbsCircle16_scaleZ";
	rename -uid "792501C3-2849-CDCB-B5B4-2AA7B51A7AFA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  1 1 30 1 60 1 90 1 120 1 140 1 160 1 180 1
		 200 1 225 1;
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
createNode animCurveTA -n "nurbsCircle10_rotateX";
	rename -uid "A66E20C3-754E-7FED-7CE4-EB8F9453D4CD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 35.447660991237761 30 35.447660991237761
		 60 35.447660991237761 90 35.447660991237761 120 35.447660991237761 140 35.447660991237761
		 146 35.447660991237761 152 35.447660991237761 160 35.447660991237761 180 35.447660991237761
		 200 35.447660991237761 213 35.447660991237761 225 35.447660991237761;
	setAttr -s 13 ".kit[0:12]"  1 18 18 18 18 18 18 18 
		18 18 1 18 1;
	setAttr -s 13 ".kot[0:12]"  1 18 18 18 18 18 18 18 
		18 18 1 18 1;
	setAttr -s 13 ".kix[0:12]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".kiy[0:12]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 13 ".kox[0:12]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".koy[0:12]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "nurbsCircle10_rotateY";
	rename -uid "C024C4FE-BA4B-5593-3DAA-2498E810F00C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 37.286938967529366 30 37.286938967529366
		 60 37.286938967529366 90 37.286938967529366 120 37.286938967529366 140 37.286938967529366
		 146 37.286938967529366 152 37.286938967529366 160 37.286938967529366 180 37.286938967529366
		 200 37.286938967529366 213 37.286938967529366 225 37.286938967529366;
	setAttr -s 13 ".kit[0:12]"  1 18 18 18 18 18 18 18 
		18 18 1 18 1;
	setAttr -s 13 ".kot[0:12]"  1 18 18 18 18 18 18 18 
		18 18 1 18 1;
	setAttr -s 13 ".kix[0:12]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".kiy[0:12]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 13 ".kox[0:12]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".koy[0:12]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "nurbsCircle10_rotateZ";
	rename -uid "564A8799-B545-3730-62CD-CD8E0E285508";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 2.7170235342130669 30 2.7170235342130669
		 60 2.7170235342130669 90 2.7170235342130669 120 2.7170235342130669 140 2.7170235342130669
		 146 2.7170235342130669 152 2.7170235342130669 160 2.7170235342130669 180 2.7170235342130669
		 200 2.7170235342130669 213 2.7170235342130669 225 2.7170235342130669;
	setAttr -s 13 ".kit[0:12]"  1 18 18 18 18 18 18 18 
		18 18 1 18 1;
	setAttr -s 13 ".kot[0:12]"  1 18 18 18 18 18 18 18 
		18 18 1 18 1;
	setAttr -s 13 ".kix[0:12]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".kiy[0:12]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 13 ".kox[0:12]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".koy[0:12]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle10_visibility";
	rename -uid "4D3CC140-3C48-A893-A741-C6B0AD0ED7CB";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 1 30 1 60 1 90 1 120 1 140 1 146 1 152 1
		 160 1 180 1 200 1 213 1 225 1;
	setAttr -s 13 ".kit[0:12]"  1 9 9 9 9 9 9 9 
		9 9 1 9 1;
	setAttr -s 13 ".kix[0:12]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".kiy[0:12]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "nurbsCircle10_translateX";
	rename -uid "845017A7-7541-4D91-82FE-72A90AA809C2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 24.320085406111133 30 23.141784270507223
		 60 26.25972912210139 90 24.321224504818119 120 24.320085406111133 140 26.559667946321024
		 146 24.556867872849189 152 24.625313106408605 160 22.702330587031579 180 25.434798933214644
		 200 24.320085406111133 213 22.029609057826015 225 24.320085406111133;
	setAttr -s 13 ".kit[0:12]"  1 18 18 18 18 18 18 18 
		18 18 1 18 1;
	setAttr -s 13 ".kot[0:12]"  1 18 18 18 18 18 18 18 
		18 18 1 18 1;
	setAttr -s 13 ".kix[0:12]"  1 1 1 0.99999630451202393 1 1 1 1 1 1 1 
		1 1;
	setAttr -s 13 ".kiy[0:12]"  0 0 0 -0.0027338266372680664 0 0 0 0 0 
		0 0 0 0;
	setAttr -s 13 ".kox[0:12]"  1 1 1 0.99999630451202393 1 1 1 1 1 1 1 
		1 1;
	setAttr -s 13 ".koy[0:12]"  0 0 0 -0.0027338266372680664 0 0 0 0 0 
		0 0 0 0;
createNode animCurveTL -n "nurbsCircle10_translateY";
	rename -uid "98AC9632-A141-6079-BFDC-1393029B1A68";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 -4.4948745146760558 30 -3.9406704426898074
		 60 -3.3977227422042375 90 -4.4948745146760558 120 -4.4948745146760558 140 -4.763149315369489
		 146 6.8399373904922669 152 -6.6301632794539813 160 -4.4948745146760558 180 -7.7176111925343349
		 200 -4.4948745146760558 213 -4.4948745146760558 225 -4.4948745146760558;
	setAttr -s 13 ".kit[0:12]"  1 18 18 18 18 18 18 18 
		18 18 1 18 1;
	setAttr -s 13 ".kot[0:12]"  1 18 18 18 18 18 18 18 
		18 18 1 18 1;
	setAttr -s 13 ".kix[0:12]"  1 0.91569918394088745 1 1 1 1 1 1 1 1 1 
		1 1;
	setAttr -s 13 ".kiy[0:12]"  0 0.40186437964439392 0 0 0 0 0 0 0 0 0 
		0 0;
	setAttr -s 13 ".kox[0:12]"  1 0.91569918394088745 1 1 1 1 1 1 1 1 1 
		1 1;
	setAttr -s 13 ".koy[0:12]"  0 0.40186437964439392 0 0 0 0 0 0 0 0 0 
		0 0;
createNode animCurveTL -n "nurbsCircle10_translateZ";
	rename -uid "1AB08045-9241-D57C-1D73-DA80F1BD0330";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 -11.816258065981124 30 -11.816258065981124
		 60 -12.273496500552888 90 -11.816258065981124 120 -11.816258065981124 140 -10.532315283557018
		 146 -11.816258065981124 152 -11.816258065981124 160 -12.435209651150849 180 -13.258323163201858
		 200 -11.816258065981124 213 -11.816258065981124 225 -11.816258065981124;
	setAttr -s 13 ".kit[0:12]"  1 18 18 18 18 18 18 18 
		18 18 1 18 1;
	setAttr -s 13 ".kot[0:12]"  1 18 18 18 18 18 18 18 
		18 18 1 18 1;
	setAttr -s 13 ".kix[0:12]"  1 1 1 1 1 1 1 1 0.62896382808685303 1 1 
		1 1;
	setAttr -s 13 ".kiy[0:12]"  0 0 0 0 0 0 0 0 -0.77743452787399292 0 
		0 0 0;
	setAttr -s 13 ".kox[0:12]"  1 1 1 1 1 1 1 1 0.62896382808685303 1 1 
		1 1;
	setAttr -s 13 ".koy[0:12]"  0 0 0 0 0 0 0 0 -0.77743452787399292 0 
		0 0 0;
createNode animCurveTU -n "nurbsCircle10_scaleX";
	rename -uid "2F5D0F16-8B4A-553E-36A0-8282EC54A6CA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 1 30 1 60 1 90 1 120 1 140 1 146 1 152 1
		 160 1 180 1 200 1 213 1 225 1;
	setAttr -s 13 ".kit[0:12]"  1 18 18 18 18 18 18 18 
		18 18 1 18 1;
	setAttr -s 13 ".kot[0:12]"  1 18 18 18 18 18 18 18 
		18 18 1 18 1;
	setAttr -s 13 ".kix[0:12]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".kiy[0:12]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 13 ".kox[0:12]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".koy[0:12]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle10_scaleY";
	rename -uid "2F26A762-1F48-3F25-4EF5-F69C4773E558";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 1 30 1 60 1 90 1 120 1 140 1 146 1 152 1
		 160 1 180 1 200 1 213 1 225 1;
	setAttr -s 13 ".kit[0:12]"  1 18 18 18 18 18 18 18 
		18 18 1 18 1;
	setAttr -s 13 ".kot[0:12]"  1 18 18 18 18 18 18 18 
		18 18 1 18 1;
	setAttr -s 13 ".kix[0:12]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".kiy[0:12]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 13 ".kox[0:12]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".koy[0:12]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle10_scaleZ";
	rename -uid "7878F09A-BC44-D6B6-F191-A5A5953513CC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 1 30 1 60 1 90 1 120 1 140 1 146 1 152 1
		 160 1 180 1 200 1 213 1 225 1;
	setAttr -s 13 ".kit[0:12]"  1 18 18 18 18 18 18 18 
		18 18 1 18 1;
	setAttr -s 13 ".kot[0:12]"  1 18 18 18 18 18 18 18 
		18 18 1 18 1;
	setAttr -s 13 ".kix[0:12]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".kiy[0:12]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 13 ".kox[0:12]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".koy[0:12]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle10_Grip";
	rename -uid "E593DCB1-7647-D81C-94FB-93AF653C5A54";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 1 30 1 60 1 90 1 120 1 140 1 146 1 152 1
		 160 1 180 1 200 1 213 1 225 1;
	setAttr -s 13 ".kit[0:12]"  1 18 18 18 18 18 18 18 
		18 18 1 18 1;
	setAttr -s 13 ".kot[0:12]"  1 18 18 18 18 18 18 18 
		18 18 1 18 1;
	setAttr -s 13 ".kix[0:12]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".kiy[0:12]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 13 ".kox[0:12]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".koy[0:12]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
select -ne :time1;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".o" 2;
	setAttr -av ".unw" 2;
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
connectAttr "nurbsCircle14_rotateX.o" "SoldierRN.phl[1]";
connectAttr "nurbsCircle14_rotateY.o" "SoldierRN.phl[2]";
connectAttr "nurbsCircle14_rotateZ.o" "SoldierRN.phl[3]";
connectAttr "nurbsCircle14_visibility.o" "SoldierRN.phl[4]";
connectAttr "nurbsCircle14_translateX.o" "SoldierRN.phl[5]";
connectAttr "nurbsCircle14_translateY.o" "SoldierRN.phl[6]";
connectAttr "nurbsCircle14_translateZ.o" "SoldierRN.phl[7]";
connectAttr "nurbsCircle14_scaleX.o" "SoldierRN.phl[8]";
connectAttr "nurbsCircle14_scaleY.o" "SoldierRN.phl[9]";
connectAttr "nurbsCircle14_scaleZ.o" "SoldierRN.phl[10]";
connectAttr "nurbsCircle15_rotateX.o" "SoldierRN.phl[11]";
connectAttr "nurbsCircle15_rotateY.o" "SoldierRN.phl[12]";
connectAttr "nurbsCircle15_rotateZ.o" "SoldierRN.phl[13]";
connectAttr "nurbsCircle15_visibility.o" "SoldierRN.phl[14]";
connectAttr "nurbsCircle15_translateX.o" "SoldierRN.phl[15]";
connectAttr "nurbsCircle15_translateY.o" "SoldierRN.phl[16]";
connectAttr "nurbsCircle15_translateZ.o" "SoldierRN.phl[17]";
connectAttr "nurbsCircle15_scaleX.o" "SoldierRN.phl[18]";
connectAttr "nurbsCircle15_scaleY.o" "SoldierRN.phl[19]";
connectAttr "nurbsCircle15_scaleZ.o" "SoldierRN.phl[20]";
connectAttr "nurbsCircle16_translateX.o" "SoldierRN.phl[21]";
connectAttr "nurbsCircle16_translateY.o" "SoldierRN.phl[22]";
connectAttr "nurbsCircle16_translateZ.o" "SoldierRN.phl[23]";
connectAttr "nurbsCircle16_visibility.o" "SoldierRN.phl[24]";
connectAttr "nurbsCircle16_rotateX.o" "SoldierRN.phl[25]";
connectAttr "nurbsCircle16_rotateY.o" "SoldierRN.phl[26]";
connectAttr "nurbsCircle16_rotateZ.o" "SoldierRN.phl[27]";
connectAttr "nurbsCircle16_scaleX.o" "SoldierRN.phl[28]";
connectAttr "nurbsCircle16_scaleY.o" "SoldierRN.phl[29]";
connectAttr "nurbsCircle16_scaleZ.o" "SoldierRN.phl[30]";
connectAttr "nurbsCircle12_Grip.o" "SoldierRN.phl[31]";
connectAttr "nurbsCircle12_rotateX.o" "SoldierRN.phl[32]";
connectAttr "nurbsCircle12_rotateY.o" "SoldierRN.phl[33]";
connectAttr "nurbsCircle12_rotateZ.o" "SoldierRN.phl[34]";
connectAttr "nurbsCircle12_translateX.o" "SoldierRN.phl[35]";
connectAttr "nurbsCircle12_translateY.o" "SoldierRN.phl[36]";
connectAttr "nurbsCircle12_translateZ.o" "SoldierRN.phl[37]";
connectAttr "nurbsCircle12_visibility.o" "SoldierRN.phl[38]";
connectAttr "nurbsCircle12_scaleX.o" "SoldierRN.phl[39]";
connectAttr "nurbsCircle12_scaleY.o" "SoldierRN.phl[40]";
connectAttr "nurbsCircle12_scaleZ.o" "SoldierRN.phl[41]";
connectAttr "nurbsCircle13_translateX.o" "SoldierRN.phl[42]";
connectAttr "nurbsCircle13_translateY.o" "SoldierRN.phl[43]";
connectAttr "nurbsCircle13_translateZ.o" "SoldierRN.phl[44]";
connectAttr "nurbsCircle13_visibility.o" "SoldierRN.phl[45]";
connectAttr "nurbsCircle13_rotateX.o" "SoldierRN.phl[46]";
connectAttr "nurbsCircle13_rotateY.o" "SoldierRN.phl[47]";
connectAttr "nurbsCircle13_rotateZ.o" "SoldierRN.phl[48]";
connectAttr "nurbsCircle13_scaleX.o" "SoldierRN.phl[49]";
connectAttr "nurbsCircle13_scaleY.o" "SoldierRN.phl[50]";
connectAttr "nurbsCircle13_scaleZ.o" "SoldierRN.phl[51]";
connectAttr "nurbsCircle10_Grip.o" "SoldierRN.phl[52]";
connectAttr "nurbsCircle10_rotateX.o" "SoldierRN.phl[53]";
connectAttr "nurbsCircle10_rotateY.o" "SoldierRN.phl[54]";
connectAttr "nurbsCircle10_rotateZ.o" "SoldierRN.phl[55]";
connectAttr "nurbsCircle10_translateX.o" "SoldierRN.phl[56]";
connectAttr "nurbsCircle10_translateY.o" "SoldierRN.phl[57]";
connectAttr "nurbsCircle10_translateZ.o" "SoldierRN.phl[58]";
connectAttr "nurbsCircle10_visibility.o" "SoldierRN.phl[59]";
connectAttr "nurbsCircle10_scaleX.o" "SoldierRN.phl[60]";
connectAttr "nurbsCircle10_scaleY.o" "SoldierRN.phl[61]";
connectAttr "nurbsCircle10_scaleZ.o" "SoldierRN.phl[62]";
connectAttr "nurbsCircle11_translateX.o" "SoldierRN.phl[63]";
connectAttr "nurbsCircle11_translateY.o" "SoldierRN.phl[64]";
connectAttr "nurbsCircle11_translateZ.o" "SoldierRN.phl[65]";
connectAttr "nurbsCircle11_visibility.o" "SoldierRN.phl[66]";
connectAttr "nurbsCircle11_rotateX.o" "SoldierRN.phl[67]";
connectAttr "nurbsCircle11_rotateY.o" "SoldierRN.phl[68]";
connectAttr "nurbsCircle11_rotateZ.o" "SoldierRN.phl[69]";
connectAttr "nurbsCircle11_scaleX.o" "SoldierRN.phl[70]";
connectAttr "nurbsCircle11_scaleY.o" "SoldierRN.phl[71]";
connectAttr "nurbsCircle11_scaleZ.o" "SoldierRN.phl[72]";
connectAttr "nurbsCircle4_translateX.o" "SoldierRN.phl[73]";
connectAttr "nurbsCircle4_translateY.o" "SoldierRN.phl[74]";
connectAttr "nurbsCircle4_translateZ.o" "SoldierRN.phl[75]";
connectAttr "nurbsCircle4_rotateX.o" "SoldierRN.phl[76]";
connectAttr "nurbsCircle4_rotateY.o" "SoldierRN.phl[77]";
connectAttr "nurbsCircle4_rotateZ.o" "SoldierRN.phl[78]";
connectAttr "nurbsCircle4_scaleX.o" "SoldierRN.phl[79]";
connectAttr "nurbsCircle4_scaleY.o" "SoldierRN.phl[80]";
connectAttr "nurbsCircle4_scaleZ.o" "SoldierRN.phl[81]";
connectAttr "nurbsCircle4_visibility.o" "SoldierRN.phl[82]";
connectAttr "nurbsCircle5_rotateX.o" "SoldierRN.phl[83]";
connectAttr "nurbsCircle5_rotateY.o" "SoldierRN.phl[84]";
connectAttr "nurbsCircle5_rotateZ.o" "SoldierRN.phl[85]";
connectAttr "nurbsCircle5_visibility.o" "SoldierRN.phl[86]";
connectAttr "nurbsCircle5_translateX.o" "SoldierRN.phl[87]";
connectAttr "nurbsCircle5_translateY.o" "SoldierRN.phl[88]";
connectAttr "nurbsCircle5_translateZ.o" "SoldierRN.phl[89]";
connectAttr "nurbsCircle5_scaleX.o" "SoldierRN.phl[90]";
connectAttr "nurbsCircle5_scaleY.o" "SoldierRN.phl[91]";
connectAttr "nurbsCircle5_scaleZ.o" "SoldierRN.phl[92]";
connectAttr "nurbsCircle6_rotateX.o" "SoldierRN.phl[93]";
connectAttr "nurbsCircle6_rotateY.o" "SoldierRN.phl[94]";
connectAttr "nurbsCircle6_rotateZ.o" "SoldierRN.phl[95]";
connectAttr "nurbsCircle6_visibility.o" "SoldierRN.phl[96]";
connectAttr "nurbsCircle6_translateX.o" "SoldierRN.phl[97]";
connectAttr "nurbsCircle6_translateY.o" "SoldierRN.phl[98]";
connectAttr "nurbsCircle6_translateZ.o" "SoldierRN.phl[99]";
connectAttr "nurbsCircle6_scaleX.o" "SoldierRN.phl[100]";
connectAttr "nurbsCircle6_scaleY.o" "SoldierRN.phl[101]";
connectAttr "nurbsCircle6_scaleZ.o" "SoldierRN.phl[102]";
connectAttr "nurbsCircle9_rotateX.o" "SoldierRN.phl[103]";
connectAttr "nurbsCircle9_rotateY.o" "SoldierRN.phl[104]";
connectAttr "nurbsCircle9_rotateZ.o" "SoldierRN.phl[105]";
connectAttr "nurbsCircle9_visibility.o" "SoldierRN.phl[106]";
connectAttr "nurbsCircle9_translateX.o" "SoldierRN.phl[107]";
connectAttr "nurbsCircle9_translateY.o" "SoldierRN.phl[108]";
connectAttr "nurbsCircle9_translateZ.o" "SoldierRN.phl[109]";
connectAttr "nurbsCircle9_scaleX.o" "SoldierRN.phl[110]";
connectAttr "nurbsCircle9_scaleY.o" "SoldierRN.phl[111]";
connectAttr "nurbsCircle9_scaleZ.o" "SoldierRN.phl[112]";
connectAttr "nurbsCircle8_rotateX.o" "SoldierRN.phl[113]";
connectAttr "nurbsCircle8_rotateY.o" "SoldierRN.phl[114]";
connectAttr "nurbsCircle8_rotateZ.o" "SoldierRN.phl[115]";
connectAttr "nurbsCircle8_visibility.o" "SoldierRN.phl[116]";
connectAttr "nurbsCircle8_translateX.o" "SoldierRN.phl[117]";
connectAttr "nurbsCircle8_translateY.o" "SoldierRN.phl[118]";
connectAttr "nurbsCircle8_translateZ.o" "SoldierRN.phl[119]";
connectAttr "nurbsCircle8_scaleX.o" "SoldierRN.phl[120]";
connectAttr "nurbsCircle8_scaleY.o" "SoldierRN.phl[121]";
connectAttr "nurbsCircle8_scaleZ.o" "SoldierRN.phl[122]";
connectAttr "nurbsCircle7_rotateX.o" "SoldierRN.phl[123]";
connectAttr "nurbsCircle7_rotateY.o" "SoldierRN.phl[124]";
connectAttr "nurbsCircle7_rotateZ.o" "SoldierRN.phl[125]";
connectAttr "nurbsCircle7_visibility.o" "SoldierRN.phl[126]";
connectAttr "nurbsCircle7_translateX.o" "SoldierRN.phl[127]";
connectAttr "nurbsCircle7_translateY.o" "SoldierRN.phl[128]";
connectAttr "nurbsCircle7_translateZ.o" "SoldierRN.phl[129]";
connectAttr "nurbsCircle7_scaleX.o" "SoldierRN.phl[130]";
connectAttr "nurbsCircle7_scaleY.o" "SoldierRN.phl[131]";
connectAttr "nurbsCircle7_scaleZ.o" "SoldierRN.phl[132]";
connectAttr "nurbsCircle1_rotateX.o" "SoldierRN.phl[133]";
connectAttr "nurbsCircle1_rotateY.o" "SoldierRN.phl[134]";
connectAttr "nurbsCircle1_rotateZ.o" "SoldierRN.phl[135]";
connectAttr "nurbsCircle1_visibility.o" "SoldierRN.phl[136]";
connectAttr "nurbsCircle1_translateX.o" "SoldierRN.phl[137]";
connectAttr "nurbsCircle1_translateY.o" "SoldierRN.phl[138]";
connectAttr "nurbsCircle1_translateZ.o" "SoldierRN.phl[139]";
connectAttr "nurbsCircle1_scaleX.o" "SoldierRN.phl[140]";
connectAttr "nurbsCircle1_scaleY.o" "SoldierRN.phl[141]";
connectAttr "nurbsCircle1_scaleZ.o" "SoldierRN.phl[142]";
connectAttr "nurbsCircle2_rotateX.o" "SoldierRN.phl[143]";
connectAttr "nurbsCircle2_rotateY.o" "SoldierRN.phl[144]";
connectAttr "nurbsCircle2_rotateZ.o" "SoldierRN.phl[145]";
connectAttr "nurbsCircle2_visibility.o" "SoldierRN.phl[146]";
connectAttr "nurbsCircle2_translateX.o" "SoldierRN.phl[147]";
connectAttr "nurbsCircle2_translateY.o" "SoldierRN.phl[148]";
connectAttr "nurbsCircle2_translateZ.o" "SoldierRN.phl[149]";
connectAttr "nurbsCircle2_scaleX.o" "SoldierRN.phl[150]";
connectAttr "nurbsCircle2_scaleY.o" "SoldierRN.phl[151]";
connectAttr "nurbsCircle2_scaleZ.o" "SoldierRN.phl[152]";
connectAttr "nurbsCircle3_translateX.o" "SoldierRN.phl[153]";
connectAttr "nurbsCircle3_translateY.o" "SoldierRN.phl[154]";
connectAttr "nurbsCircle3_translateZ.o" "SoldierRN.phl[155]";
connectAttr "nurbsCircle3_visibility.o" "SoldierRN.phl[156]";
connectAttr "nurbsCircle3_rotateX.o" "SoldierRN.phl[157]";
connectAttr "nurbsCircle3_rotateY.o" "SoldierRN.phl[158]";
connectAttr "nurbsCircle3_rotateZ.o" "SoldierRN.phl[159]";
connectAttr "nurbsCircle3_scaleX.o" "SoldierRN.phl[160]";
connectAttr "nurbsCircle3_scaleY.o" "SoldierRN.phl[161]";
connectAttr "nurbsCircle3_scaleZ.o" "SoldierRN.phl[162]";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr ":TurtleDefaultBakeLayer.idx" ":TurtleBakeLayerManager.bli[0]";
connectAttr ":TurtleRenderOptions.msg" ":TurtleDefaultBakeLayer.rset";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of Soldier@idle.ma
