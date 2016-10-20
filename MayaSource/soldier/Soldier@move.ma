//Maya ASCII 2016 scene
//Name: Soldier@move.ma
//Last modified: Fri, Aug 26, 2016 06:17:46 PM
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
	setAttr ".t" -type "double3" 873.11469674630189 270.12139790805941 31.912303841672326 ;
	setAttr ".r" -type "double3" -17.138352722468497 -2073.7999999977897 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "0DE61285-5447-869D-E00A-AEB5FBAC336C";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 937.01364380450286;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -2.1189630338514522 84.300016714263251 99.351080422549742 ;
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
	setAttr ".t" -type "double3" 29.470599789235678 91.246363292172759 1817.2523037063474 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "BFFB4B99-8744-5AB4-E136-9295218CB449";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 500.1;
	setAttr ".ow" 629.6034110059162;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "6839A743-674C-C471-40C2-67B700EE0762";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 852.92665995877906 53.245356155841222 9.2229034062164388 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "D2FC12E8-0B4F-6E70-4197-08BA46EE426F";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 500.1;
	setAttr ".ow" 399.48484013269604;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "locator1";
	rename -uid "DE25B545-3444-CDCE-F41A-5082493AC170";
	setAttr ".t" -type "double3" -5.0221925141069699 11.171381730517849 -40.198139001866053 ;
	setAttr ".s" -type "double3" 1 6.6969684280099084 1 ;
createNode locator -n "locatorShape1" -p "locator1";
	rename -uid "B82FE826-7A4C-39A2-5442-09A93B91563F";
	setAttr -k off ".v";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "274EFD47-BE46-D1DB-53C4-29856EA8FCD8";
	setAttr -s 13 ".lnk";
	setAttr -s 13 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "4114E146-2143-38E6-E9EA-FE88BB213AD1";
createNode displayLayer -n "defaultLayer";
	rename -uid "1AB385CB-214F-9970-0753-9C86125E5ACE";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "452198CC-2A44-AEAE-63CE-5CBC7408E564";
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
	setAttr -s 194 ".phl";
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
	setAttr ".ed" -type "dataReferenceEdits" 
		"SoldierRN"
		"Soldier:AssaultRifleRN" 0
		"Rig:MagPistolRN" 0
		"Soldier:MagPistolRN" 0
		"Rig:AssaultRifleRN" 0
		"SoldierRN" 6
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:arrow" "translate" " -type \"double3\" 0 0 0"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:arrow" "rotate" " -type \"double3\" 0 0 0"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:arrow" "scale" " -type \"double3\" 0.99999999999999989 1 0.99999999999999989"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:arrow1" "translate" " -type \"double3\" 0 0 0"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:arrow1" "rotate" " -type \"double3\" 0 0 0"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:arrow1" "scale" " -type \"double3\" 0.99999999999999989 1 0.99999999999999989"
		
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
		"SoldierRN" 451
		2 "|Rig:Geometry|Rig:Body|Rig:BodyShape" "visibility" " -k 0 1"
		2 "|Rig:Geometry|Rig:Body|Rig:BodyShape" "uvPivot" " -type \"double2\" 0.4994969367980957 0.49276292324066162"
		
		2 "|Rig:Control|Rig:ikHandle7" "translate" " -type \"double3\" 8.19642562263869223 91.71189230862080422 -99.85021598963011513"
		
		2 "|Rig:Control|Rig:ikHandle7" "translateX" " -av"
		2 "|Rig:Control|Rig:ikHandle7" "translateY" " -av"
		2 "|Rig:Control|Rig:ikHandle7" "translateZ" " -av"
		2 "|Rig:Control|Rig:ikHandle8" "translate" " -type \"double3\" -47.75835754312699777 77.24955863869769246 -87.14525373604951142"
		
		2 "|Rig:Control|Rig:ikHandle8" "translateX" " -av"
		2 "|Rig:Control|Rig:ikHandle8" "translateZ" " -av"
		2 "|Rig:Control|Rig:ikHandle8" "translateY" " -av"
		2 "|Rig:Control|Rig:RootMotion_Control" "translate" " -type \"double3\" 0 0 -23.70456393140376505"
		
		2 "|Rig:Control|Rig:RootMotion_Control" "translateX" " -av"
		2 "|Rig:Control|Rig:RootMotion_Control" "translateY" " -av"
		2 "|Rig:Control|Rig:RootMotion_Control" "translateZ" " -av"
		2 "|Rig:Control|Rig:RootMotion_Control" "rotate" " -type \"double3\" 0 176.45832022030009512 0"
		
		2 "|Rig:Control|Rig:RootMotion_Control" "rotateX" " -av"
		2 "|Rig:Control|Rig:RootMotion_Control" "rotateY" " -av"
		2 "|Rig:Control|Rig:RootMotion_Control" "rotateZ" " -av"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14" "visibility" " -av 1"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14" "translate" " -type \"double3\" -8.17964476158011422 0 39.04564885126928431"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14" "translateX" " -av"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14" "translateY" " -av"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14" "translateZ" " -av"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14" "rotate" " -type \"double3\" 0.025204723832225783 -7.90729086496785705 -0.13718945742208336"
		
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
		"translate" " -type \"double3\" 17.01410767927600531 3.56648525554479479 -12.26002620487042805"
		
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
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12" "translate" " -type \"double3\" -28.59573072591469156 -34.66744136130224518 43.14857180057629904"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12" "translateX" " -av"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12" "translateY" " -av"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12" "translateZ" " -av"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12" "rotate" " -type \"double3\" -31.47824570475889772 -21.94640536354552651 -70.22789522398913675"
		
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
		"translate" " -type \"double3\" 16.05040970338571782 136.66810332671951755 42.51602455984759388"
		
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
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle10" "translate" " -type \"double3\" 57.93873009177885081 -20.20510769137919382 59.28585439525715373"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle10" "translateX" " -av"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle10" "translateY" " -av"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle10" "translateZ" " -av"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle10" "rotate" " -type \"double3\" 110.37827102722462769 62.13795212118560585 85.17781424236379451"
		
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
		"translate" " -type \"double3\" 30.9903101174607265 58.00775597323140431 1.7439921591401335"
		
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
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4" "translate" " -type \"double3\" -0.15608906585343751 -11.56430507691944243 12.72173018656872578"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4" "translateX" " -av"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4" "translateY" " -av"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4" "translateZ" " -av"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4" "rotate" " -type \"double3\" 53.04799331252020522 6.26995057805317657 3.29931598009017213"
		
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
		"rotate" " -type \"double3\" -16.87134388821986875 -1.97559568112753414 -5.82920100586619938"
		
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
		"rotate" " -type \"double3\" 4.82727255699981228 23.04529482852560918 -0.42078855816464922"
		
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
		"rotate" " -type \"double3\" -38.00403024883227232 -13.04431976686081995 6.95543886482262952"
		
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
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle18" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle18" 
		"rotateX" " -av"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle18" 
		"rotateY" " -av"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle18" 
		"rotateZ" " -av"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle17" 
		"visibility" " -av 1"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle17" 
		"translate" " -type \"double3\" 0 -5.20426087723631969 1.89419605067011854"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle17" 
		"translateX" " -av"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle17" 
		"translateY" " -av"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle17" 
		"translateZ" " -av"
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle17" 
		"rotate" " -type \"double3\" -0.71473862285873146 19.93874405937984307 -8.42458436368121966"
		
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
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1" "translate" " -type \"double3\" -9.71432416989369862 3.10128583801704361 -6.15009251480551367"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1" "translateX" " -av"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1" "translateY" " -av"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1" "translateZ" " -av"
		
		2 "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1" "rotate" " -type \"double3\" 37.11424818115626323 4.59078374175134041 0.031359197666010211"
		
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
		"rotate" " -type \"double3\" -41.16902179614631763 -0.75949379869546707 0.91083764518767141"
		
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
		"translate" " -type \"double3\" 9.20592488380868623 1.32874654166611772 -0.40582463833403892"
		
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
		2 "Rig:ExtraLayer" "displayType" " 2"
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
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:arrow1.visibility" 
		"SoldierRN.placeHolderList[12]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14.rotateX" 
		"SoldierRN.placeHolderList[13]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14.rotateY" 
		"SoldierRN.placeHolderList[14]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14.rotateZ" 
		"SoldierRN.placeHolderList[15]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14.visibility" 
		"SoldierRN.placeHolderList[16]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14.translateX" 
		"SoldierRN.placeHolderList[17]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14.translateY" 
		"SoldierRN.placeHolderList[18]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14.translateZ" 
		"SoldierRN.placeHolderList[19]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14.scaleX" 
		"SoldierRN.placeHolderList[20]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14.scaleY" 
		"SoldierRN.placeHolderList[21]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14.scaleZ" 
		"SoldierRN.placeHolderList[22]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14|Rig:nurbsCircle15.rotateX" 
		"SoldierRN.placeHolderList[23]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14|Rig:nurbsCircle15.rotateY" 
		"SoldierRN.placeHolderList[24]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14|Rig:nurbsCircle15.rotateZ" 
		"SoldierRN.placeHolderList[25]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14|Rig:nurbsCircle15.visibility" 
		"SoldierRN.placeHolderList[26]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14|Rig:nurbsCircle15.translateX" 
		"SoldierRN.placeHolderList[27]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14|Rig:nurbsCircle15.translateY" 
		"SoldierRN.placeHolderList[28]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14|Rig:nurbsCircle15.translateZ" 
		"SoldierRN.placeHolderList[29]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14|Rig:nurbsCircle15.scaleX" 
		"SoldierRN.placeHolderList[30]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14|Rig:nurbsCircle15.scaleY" 
		"SoldierRN.placeHolderList[31]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14|Rig:nurbsCircle15.scaleZ" 
		"SoldierRN.placeHolderList[32]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14|Rig:nurbsCircle16.translateX" 
		"SoldierRN.placeHolderList[33]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14|Rig:nurbsCircle16.translateY" 
		"SoldierRN.placeHolderList[34]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14|Rig:nurbsCircle16.translateZ" 
		"SoldierRN.placeHolderList[35]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14|Rig:nurbsCircle16.visibility" 
		"SoldierRN.placeHolderList[36]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14|Rig:nurbsCircle16.rotateX" 
		"SoldierRN.placeHolderList[37]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14|Rig:nurbsCircle16.rotateY" 
		"SoldierRN.placeHolderList[38]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14|Rig:nurbsCircle16.rotateZ" 
		"SoldierRN.placeHolderList[39]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14|Rig:nurbsCircle16.scaleX" 
		"SoldierRN.placeHolderList[40]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14|Rig:nurbsCircle16.scaleY" 
		"SoldierRN.placeHolderList[41]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle14|Rig:nurbsCircle16.scaleZ" 
		"SoldierRN.placeHolderList[42]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12.Grip" 
		"SoldierRN.placeHolderList[43]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12.rotateX" 
		"SoldierRN.placeHolderList[44]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12.rotateY" 
		"SoldierRN.placeHolderList[45]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12.rotateZ" 
		"SoldierRN.placeHolderList[46]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12.translateX" 
		"SoldierRN.placeHolderList[47]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12.translateY" 
		"SoldierRN.placeHolderList[48]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12.translateZ" 
		"SoldierRN.placeHolderList[49]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12.visibility" 
		"SoldierRN.placeHolderList[50]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12.scaleX" 
		"SoldierRN.placeHolderList[51]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12.scaleY" 
		"SoldierRN.placeHolderList[52]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12.scaleZ" 
		"SoldierRN.placeHolderList[53]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12|Rig:nurbsCircle13.translateX" 
		"SoldierRN.placeHolderList[54]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12|Rig:nurbsCircle13.translateY" 
		"SoldierRN.placeHolderList[55]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12|Rig:nurbsCircle13.translateZ" 
		"SoldierRN.placeHolderList[56]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12|Rig:nurbsCircle13.visibility" 
		"SoldierRN.placeHolderList[57]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12|Rig:nurbsCircle13.rotateX" 
		"SoldierRN.placeHolderList[58]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12|Rig:nurbsCircle13.rotateY" 
		"SoldierRN.placeHolderList[59]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12|Rig:nurbsCircle13.rotateZ" 
		"SoldierRN.placeHolderList[60]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12|Rig:nurbsCircle13.scaleX" 
		"SoldierRN.placeHolderList[61]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12|Rig:nurbsCircle13.scaleY" 
		"SoldierRN.placeHolderList[62]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle12|Rig:nurbsCircle13.scaleZ" 
		"SoldierRN.placeHolderList[63]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle10.Grip" 
		"SoldierRN.placeHolderList[64]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle10.rotateX" 
		"SoldierRN.placeHolderList[65]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle10.rotateY" 
		"SoldierRN.placeHolderList[66]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle10.rotateZ" 
		"SoldierRN.placeHolderList[67]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle10.translateX" 
		"SoldierRN.placeHolderList[68]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle10.translateY" 
		"SoldierRN.placeHolderList[69]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle10.translateZ" 
		"SoldierRN.placeHolderList[70]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle10.visibility" 
		"SoldierRN.placeHolderList[71]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle10.scaleX" 
		"SoldierRN.placeHolderList[72]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle10.scaleY" 
		"SoldierRN.placeHolderList[73]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle10.scaleZ" 
		"SoldierRN.placeHolderList[74]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle10|Rig:nurbsCircle11.translateX" 
		"SoldierRN.placeHolderList[75]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle10|Rig:nurbsCircle11.translateY" 
		"SoldierRN.placeHolderList[76]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle10|Rig:nurbsCircle11.translateZ" 
		"SoldierRN.placeHolderList[77]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle10|Rig:nurbsCircle11.visibility" 
		"SoldierRN.placeHolderList[78]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle10|Rig:nurbsCircle11.rotateX" 
		"SoldierRN.placeHolderList[79]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle10|Rig:nurbsCircle11.rotateY" 
		"SoldierRN.placeHolderList[80]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle10|Rig:nurbsCircle11.rotateZ" 
		"SoldierRN.placeHolderList[81]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle10|Rig:nurbsCircle11.scaleX" 
		"SoldierRN.placeHolderList[82]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle10|Rig:nurbsCircle11.scaleY" 
		"SoldierRN.placeHolderList[83]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle10|Rig:nurbsCircle11.scaleZ" 
		"SoldierRN.placeHolderList[84]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4.translateX" 
		"SoldierRN.placeHolderList[85]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4.translateY" 
		"SoldierRN.placeHolderList[86]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4.translateZ" 
		"SoldierRN.placeHolderList[87]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4.rotateX" 
		"SoldierRN.placeHolderList[88]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4.rotateY" 
		"SoldierRN.placeHolderList[89]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4.rotateZ" 
		"SoldierRN.placeHolderList[90]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4.scaleX" 
		"SoldierRN.placeHolderList[91]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4.scaleY" 
		"SoldierRN.placeHolderList[92]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4.scaleZ" 
		"SoldierRN.placeHolderList[93]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4.visibility" 
		"SoldierRN.placeHolderList[94]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5.rotateX" 
		"SoldierRN.placeHolderList[95]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5.rotateY" 
		"SoldierRN.placeHolderList[96]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5.rotateZ" 
		"SoldierRN.placeHolderList[97]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5.visibility" 
		"SoldierRN.placeHolderList[98]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5.translateX" 
		"SoldierRN.placeHolderList[99]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5.translateY" 
		"SoldierRN.placeHolderList[100]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5.translateZ" 
		"SoldierRN.placeHolderList[101]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5.scaleX" 
		"SoldierRN.placeHolderList[102]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5.scaleY" 
		"SoldierRN.placeHolderList[103]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5.scaleZ" 
		"SoldierRN.placeHolderList[104]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6.rotateX" 
		"SoldierRN.placeHolderList[105]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6.rotateY" 
		"SoldierRN.placeHolderList[106]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6.rotateZ" 
		"SoldierRN.placeHolderList[107]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6.visibility" 
		"SoldierRN.placeHolderList[108]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6.translateX" 
		"SoldierRN.placeHolderList[109]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6.translateY" 
		"SoldierRN.placeHolderList[110]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6.translateZ" 
		"SoldierRN.placeHolderList[111]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6.scaleX" 
		"SoldierRN.placeHolderList[112]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6.scaleY" 
		"SoldierRN.placeHolderList[113]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6.scaleZ" 
		"SoldierRN.placeHolderList[114]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle9.rotateX" 
		"SoldierRN.placeHolderList[115]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle9.rotateY" 
		"SoldierRN.placeHolderList[116]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle9.rotateZ" 
		"SoldierRN.placeHolderList[117]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle9.visibility" 
		"SoldierRN.placeHolderList[118]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle9.translateX" 
		"SoldierRN.placeHolderList[119]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle9.translateY" 
		"SoldierRN.placeHolderList[120]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle9.translateZ" 
		"SoldierRN.placeHolderList[121]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle9.scaleX" 
		"SoldierRN.placeHolderList[122]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle9.scaleY" 
		"SoldierRN.placeHolderList[123]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle9.scaleZ" 
		"SoldierRN.placeHolderList[124]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle8.rotateX" 
		"SoldierRN.placeHolderList[125]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle8.rotateY" 
		"SoldierRN.placeHolderList[126]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle8.rotateZ" 
		"SoldierRN.placeHolderList[127]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle8.visibility" 
		"SoldierRN.placeHolderList[128]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle8.translateX" 
		"SoldierRN.placeHolderList[129]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle8.translateY" 
		"SoldierRN.placeHolderList[130]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle8.translateZ" 
		"SoldierRN.placeHolderList[131]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle8.scaleX" 
		"SoldierRN.placeHolderList[132]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle8.scaleY" 
		"SoldierRN.placeHolderList[133]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle8.scaleZ" 
		"SoldierRN.placeHolderList[134]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle7.rotateX" 
		"SoldierRN.placeHolderList[135]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle7.rotateY" 
		"SoldierRN.placeHolderList[136]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle7.rotateZ" 
		"SoldierRN.placeHolderList[137]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle7.visibility" 
		"SoldierRN.placeHolderList[138]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle7.translateX" 
		"SoldierRN.placeHolderList[139]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle7.translateY" 
		"SoldierRN.placeHolderList[140]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle7.translateZ" 
		"SoldierRN.placeHolderList[141]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle7.scaleX" 
		"SoldierRN.placeHolderList[142]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle7.scaleY" 
		"SoldierRN.placeHolderList[143]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle7.scaleZ" 
		"SoldierRN.placeHolderList[144]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle18.translateX" 
		"SoldierRN.placeHolderList[145]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle18.translateY" 
		"SoldierRN.placeHolderList[146]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle18.translateZ" 
		"SoldierRN.placeHolderList[147]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle18.rotateX" 
		"SoldierRN.placeHolderList[148]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle18.rotateY" 
		"SoldierRN.placeHolderList[149]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle18.rotateZ" 
		"SoldierRN.placeHolderList[150]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle18.scaleX" 
		"SoldierRN.placeHolderList[151]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle18.scaleY" 
		"SoldierRN.placeHolderList[152]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle18.scaleZ" 
		"SoldierRN.placeHolderList[153]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle5|Rig:nurbsCircle6|Rig:nurbsCircle18.visibility" 
		"SoldierRN.placeHolderList[154]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle17.translateX" 
		"SoldierRN.placeHolderList[155]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle17.translateY" 
		"SoldierRN.placeHolderList[156]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle17.translateZ" 
		"SoldierRN.placeHolderList[157]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle17.rotateX" 
		"SoldierRN.placeHolderList[158]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle17.rotateY" 
		"SoldierRN.placeHolderList[159]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle17.rotateZ" 
		"SoldierRN.placeHolderList[160]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle17.scaleX" 
		"SoldierRN.placeHolderList[161]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle17.scaleY" 
		"SoldierRN.placeHolderList[162]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle17.scaleZ" 
		"SoldierRN.placeHolderList[163]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle4|Rig:nurbsCircle17.visibility" 
		"SoldierRN.placeHolderList[164]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1.rotateX" 
		"SoldierRN.placeHolderList[165]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1.rotateY" 
		"SoldierRN.placeHolderList[166]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1.rotateZ" 
		"SoldierRN.placeHolderList[167]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1.visibility" 
		"SoldierRN.placeHolderList[168]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1.translateX" 
		"SoldierRN.placeHolderList[169]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1.translateY" 
		"SoldierRN.placeHolderList[170]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1.translateZ" 
		"SoldierRN.placeHolderList[171]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1.scaleX" 
		"SoldierRN.placeHolderList[172]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1.scaleY" 
		"SoldierRN.placeHolderList[173]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1.scaleZ" 
		"SoldierRN.placeHolderList[174]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1|Rig:nurbsCircle2.rotateX" 
		"SoldierRN.placeHolderList[175]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1|Rig:nurbsCircle2.rotateY" 
		"SoldierRN.placeHolderList[176]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1|Rig:nurbsCircle2.rotateZ" 
		"SoldierRN.placeHolderList[177]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1|Rig:nurbsCircle2.visibility" 
		"SoldierRN.placeHolderList[178]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1|Rig:nurbsCircle2.translateX" 
		"SoldierRN.placeHolderList[179]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1|Rig:nurbsCircle2.translateY" 
		"SoldierRN.placeHolderList[180]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1|Rig:nurbsCircle2.translateZ" 
		"SoldierRN.placeHolderList[181]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1|Rig:nurbsCircle2.scaleX" 
		"SoldierRN.placeHolderList[182]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1|Rig:nurbsCircle2.scaleY" 
		"SoldierRN.placeHolderList[183]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1|Rig:nurbsCircle2.scaleZ" 
		"SoldierRN.placeHolderList[184]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1|Rig:nurbsCircle3.translateX" 
		"SoldierRN.placeHolderList[185]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1|Rig:nurbsCircle3.translateY" 
		"SoldierRN.placeHolderList[186]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1|Rig:nurbsCircle3.translateZ" 
		"SoldierRN.placeHolderList[187]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1|Rig:nurbsCircle3.visibility" 
		"SoldierRN.placeHolderList[188]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1|Rig:nurbsCircle3.rotateX" 
		"SoldierRN.placeHolderList[189]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1|Rig:nurbsCircle3.rotateY" 
		"SoldierRN.placeHolderList[190]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1|Rig:nurbsCircle3.rotateZ" 
		"SoldierRN.placeHolderList[191]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1|Rig:nurbsCircle3.scaleX" 
		"SoldierRN.placeHolderList[192]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1|Rig:nurbsCircle3.scaleY" 
		"SoldierRN.placeHolderList[193]" ""
		5 4 "SoldierRN" "|Rig:Control|Rig:RootMotion_Control|Rig:nurbsCircle1|Rig:nurbsCircle3.scaleZ" 
		"SoldierRN.placeHolderList[194]" ""
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
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n"
		+ "            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n"
		+ "            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n"
		+ "                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n"
		+ "                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 0\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 0\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n"
		+ "                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n"
		+ "            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n"
		+ "            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 0\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 0\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n"
		+ "            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n"
		+ "                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n"
		+ "                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n"
		+ "                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n"
		+ "            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n"
		+ "            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"all\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 1\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n"
		+ "                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 0\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 0\n                -imagePlane 1\n                -joints 1\n                -ikHandles 0\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 1\n                -captureSequenceNumber -1\n"
		+ "                -width 855\n                -height 655\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"all\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 0\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 0\n            -imagePlane 1\n            -joints 1\n            -ikHandles 0\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 1\n            -captureSequenceNumber -1\n            -width 855\n            -height 655\n"
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
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"all\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 0\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 0\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 1\\n    -captureSequenceNumber -1\\n    -width 855\\n    -height 655\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"all\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 0\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 0\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 0\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 1\\n    -captureSequenceNumber -1\\n    -width 855\\n    -height 655\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 100 -size 500 -divisions 2 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "8D7D14DE-9341-8C39-B92F-798E15BB2D69";
	setAttr ".b" -type "string" "playbackOptions -min 73 -max 96 -ast -10 -aet 225 ";
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
	setAttr -s 5 ".ac";
	setAttr ".ac[0].acn" -type "string" "run";
	setAttr ".ac[0].acs" 1;
	setAttr ".ac[0].ace" 24;
	setAttr ".ac[1].acn" -type "string" "fast_run";
	setAttr ".ac[1].acs" 1;
	setAttr ".ac[1].ace" 24;
	setAttr ".ac[2].acn" -type "string" "turn_right";
	setAttr ".ac[2].acs" 25;
	setAttr ".ac[2].ace" 48;
	setAttr ".ac[3].acn" -type "string" "turn_left";
	setAttr ".ac[3].acs" 49;
	setAttr ".ac[3].ace" 72;
	setAttr ".ac[4].acn" -type "string" "turn_180";
	setAttr ".ac[4].acs" 73;
	setAttr ".ac[4].ace" 96;
	setAttr ".ic" no;
	setAttr ".ebm" yes;
	setAttr ".fv" -type "string" "FBX201600";
	setAttr ".exp" -type "string" "/Users/briancollins/Unity/LZisHOT/Assets/Characters/Soldier";
	setAttr ".exf" -type "string" "soldier_move";
createNode animCurveTL -n "nurbsCircle1_translateX";
	rename -uid "C4D8DA08-154A-E784-94C1-B38F122ECFE6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  0 0 3 -2.2696440844978083 6 -7.0611149113878868
		 9 -11.814758389257566 12 -14.525722140785973 15 -7.2628610703929866 18 0 21 0 24 0
		 30 -7.0611149113878868 32 -0.3029678313164208 34 22.233752719049907 36 42.353933114000412
		 38 50.275245530136374 39 51.979200596644517 42 0 45 0 48 0 53 25.218984596308278
		 54 24.874228396787078 55 24.339293840119808 56 23.264791774033203 57 21.155907096858407
		 58 17.734373560542465 59 12.305691034571737 60 5.2649930476021671 61 -2.0616974905983931
		 63 -18.179230523318076 65 -25.907435684061294 67 -31.161883078253553 69 0 72 0 73 8.307888902566205
		 78 -40.409471889605371 79 -37.926159239836629 81 -18.926022572219612 84 15.834657854671018
		 85 11.372974051982514 87 -3.1258785833066165 90 -10.696137826388043 96 0;
	setAttr -s 41 ".kit[33:40]"  1 18 18 18 18 18 1 18;
	setAttr -s 41 ".kot[33:40]"  1 18 18 18 18 18 1 18;
	setAttr -s 41 ".kix[33:40]"  0.0041445149108767509 0.0058183344081044197 
		0.0038751584943383932 1 0.0065924972295761108 0.0094396183267235756 1 1;
	setAttr -s 41 ".kiy[33:40]"  0.99999135732650757 0.99998307228088379 
		0.9999924898147583 0 -0.99997824430465698 -0.99995547533035278 0 0;
	setAttr -s 41 ".kox[33:40]"  0.0041445149108767509 0.0058183344081044197 
		0.0038751584943383932 1 0.0065924972295761108 0.009439617395401001 1 1;
	setAttr -s 41 ".koy[33:40]"  0.99999135732650757 0.99998307228088379 
		0.99999254941940308 0 -0.99997824430465698 -0.99995541572570801 0 0;
createNode animCurveTL -n "nurbsCircle1_translateY";
	rename -uid "B8BFA25C-B24F-4728-3A3A-95BBBE3ADEDC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 34.32741171077005 3 7.3246586063070609
		 6 0.4762796138874279 9 0.4762796138874279 12 38.137648621869488 15 42.882803758579058
		 18 41.962585456930398 21 39.054928338769486 24 34.32741171077005 30 0.4762796138874279
		 32 0.4762796138874279 38 0.4762796138874279 39 0.4762796138874279 42 41.962585456930398
		 45 39.054928338769486 48 34.32741171077005 53 1.4133991652308793 59 1.1976537280177215
		 63 5.5607033237298484 65 4.3612008267490623 69 39.054928338769486 72 34.32741171077005
		 73 0 76 14.222817530260546 78 0.13469524608206207 84 0.60352690464683434 90 4.3066979309475135
		 96 34.32741171077005;
	setAttr -s 28 ".kit[26:27]"  1 18;
	setAttr -s 28 ".kot[26:27]"  1 18;
	setAttr -s 28 ".kix[26:27]"  0.03001285158097744 1;
	setAttr -s 28 ".kiy[26:27]"  0.99954956769943237 0;
	setAttr -s 28 ".kox[26:27]"  0.030012849718332291 1;
	setAttr -s 28 ".koy[26:27]"  0.9995495080947876 0;
createNode animCurveTL -n "nurbsCircle1_translateZ";
	rename -uid "65706438-1D4C-92A5-8EA3-3CBA03D16DEA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 41 ".ktv[0:40]"  0 34.221571985829449 3 59.996988381306913
		 6 38.102369110994637 9 -24.2902603082591 12 -80.085535347154519 15 -48.853942013201269
		 18 -34.048851215364316 21 -19.051184555497336 24 34.221571985829449 30 62.366456703260283
		 32 56.660476219456314 34 45.565958752867367 36 16.141998784744406 38 -13.827350208983908
		 39 -26.769920339255009 42 -34.048851215364316 45 -19.051184555497336 48 34.221571985829449
		 53 9.4264969055254451 54 4.2240369486362148 55 3.1690986911248009 56 5.4166678672595721
		 57 9.3066815211567864 58 15.007179826270248 59 20.627893662605508 60 24.641689831507758
		 61 29.147575822747189 63 28.492982214397333 65 16.641054334305796 67 -3.2073930392574104
		 69 -19.051184555497336 72 34.221571985829449 73 14.007382265191779 78 -49.972891715151199
		 79 -51.414118799178311 81 -54.082048851309381 84 -29.681310244425273 85 -14.665639695800644
		 87 -4.0364270995592815 90 -10.534363466221276 96 34.221571985829449;
	setAttr -s 41 ".kit[33:40]"  1 18 18 18 18 18 1 18;
	setAttr -s 41 ".kot[33:40]"  1 18 18 18 18 18 1 18;
	setAttr -s 41 ".kix[33:40]"  0.0046801865100860596 0.030405798926949501 
		1 0.004228321835398674 0.0048742089420557022 1 0.0068595265038311481 1;
	setAttr -s 41 ".kiy[33:40]"  0.99998897314071655 -0.99953764677047729 
		0 0.99999105930328369 0.99998807907104492 0 -0.99997645616531372 0;
	setAttr -s 41 ".kox[33:40]"  0.0046801865100860596 0.030405798926949501 
		1 0.004228321835398674 0.0048742084763944149 1 0.0068595265038311481 1;
	setAttr -s 41 ".koy[33:40]"  0.9999890923500061 -0.99953764677047729 
		0 0.99999111890792847 0.99998807907104492 0 -0.99997645616531372 0;
createNode animCurveTL -n "nurbsCircle14_translateX";
	rename -uid "F127ACEC-7F47-095C-7180-E38DACBCA06A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 14.977349865339001 6 0 12 0 18 11.926408226103266
		 24 14.977349865339001 30 28.555716786281891 36 0 42 11.926408226103266 48 14.977349865339001
		 54 0 56 -1.4104237474236969 57 -12.003757185959705 58 -19.468068874194987 59 -25.945992329183927
		 60 -34.897412992713754 61 -38.903989993959385 62 -38.477800766781101 68 -18.459314927223879
		 72 14.977349865339001 73 -7.2125066154746804 78 -19.540555144252224 86 15.804829045929115
		 88 2.1172028193827259 89 -8.1796447615801142 90 -10.883680239129195 91 -11.045279195950306
		 92 -10.776658292603635 96 14.977349865339001;
	setAttr -s 28 ".kit[14:27]"  1 18 1 18 18 18 18 18 
		18 18 18 18 18 18;
	setAttr -s 28 ".kot[14:27]"  1 18 1 18 18 18 18 18 
		18 18 18 18 18 18;
	setAttr -s 28 ".kix[14:27]"  0.052780710160732269 1 0.052780710160732269 
		0.0077944602817296982 1 0.0072424286045134068 1 1 0.0052116340957581997 0.0064096832647919655 
		0.085631117224693298 1 0.051635250449180603 1;
	setAttr -s 28 ".kiy[14:27]"  0.99860608577728271 0 0.99860608577728271 
		0.99996954202651978 0 -0.9999738335609436 0 0 -0.99998641014099121 -0.99997943639755249 
		-0.99632692337036133 0 0.99866598844528198 0;
	setAttr -s 28 ".kox[14:27]"  0.052780710160732269 1 0.052780710160732269 
		0.0077944612130522728 1 0.0072424276731908321 1 1 0.0052116340957581997 0.0064096832647919655 
		0.085631117224693298 1 0.051635250449180603 1;
	setAttr -s 28 ".koy[14:27]"  0.99860608577728271 0 0.99860608577728271 
		0.99996966123580933 0 -0.99997371435165405 0 0 -0.99998641014099121 -0.99997943639755249 
		-0.99632692337036133 0 0.99866598844528198 0;
createNode animCurveTL -n "nurbsCircle14_translateY";
	rename -uid "10138528-514A-8CA1-95BF-DBAE2582005A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 35 ".ktv[0:34]"  0 35.800351431420999 3 43.500205643483469
		 6 42.517878834849988 9 40.483767180431826 12 39.134308728633037 15 10.736416995369474
		 18 1.1113200075019023 21 0.47627961388745632 24 35.800351431420999 27 43.500205643483469
		 30 42.517878834849988 33 40.483767180431826 36 39.134308728633037 39 10.736416995369474
		 42 1.1113200075019023 45 0.47627961388745632 48 35.800351431420999 51 43.500205643483469
		 54 25.269596446734418 56 2.626776832293344 60 1.4793030441734407 62 1.4793030441734407
		 64 25.185888613465494 66 0.47627961388745632 68 0.47627961388745632 69 -1.1343690435397811
		 72 35.800351431420999 73 0 78 0 83 19.641185839977943 86 17.276489919344321 88 0
		 90 2.8421709430404007e-14 92 0 96 35.800351431420999;
	setAttr -s 35 ".kit[20:34]"  1 1 18 18 1 18 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 35 ".kot[20:34]"  1 1 18 18 1 18 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 35 ".kix[20:34]"  1 1 1 1 1 1 1 1 1 1 0.017617572098970413 
		1 1 1 1;
	setAttr -s 35 ".kiy[20:34]"  0 0 0 0 0 0 0 0 0 0 -0.99984472990036011 
		0 0 0 0;
	setAttr -s 35 ".kox[20:34]"  1 1 1 1 1 1 1 1 1 1 0.017617573961615562 
		1 1 1 1;
	setAttr -s 35 ".koy[20:34]"  0 0 0 0 0 0 0 0 0 0 -0.99984484910964966 
		0 0 0 0;
createNode animCurveTL -n "nurbsCircle14_translateZ";
	rename -uid "BBDFA72A-A44D-1BAD-8DDB-3782F473745E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 38 ".ktv[0:37]"  0 -78.58099069210742 3 -48.093949803992771
		 6 -32.351243906576002 9 -16.193506872172673 12 22.390287452028346 15 62.140590018487337
		 18 38.588939923519987 21 -22.861421466596674 24 -78.58099069210742 27 -48.093949803992771
		 30 -27.179114685355167 33 -16.193506872172673 36 22.390287452028346 39 62.140590018487337
		 42 38.588939923519987 45 -22.861421466596674 48 -78.58099069210742 51 -48.093949803992771
		 54 12.589841283492078 56 53.213205694570568 57 46.467266289579122 58 38.816143901796636
		 59 28.364707781693422 60 19.352736897282799 61 7.4011544248585857 62 -4.6908297139412634
		 66 28.926485095643905 68 -8.9000613433485469 72 -62.603481599301603 73 -25.206724881458229
		 78 -25.169188756092495 86 30.368178838512286 88 48.397356706230752 89 39.045648851269284
		 90 31.481473072477641 91 21.874410284871882 92 8.0540706793999917 96 -78.58099069210742;
	setAttr -s 38 ".kit[23:37]"  1 18 1 18 1 18 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 38 ".kot[23:37]"  1 18 1 18 1 18 18 18 
		18 18 18 18 18 18 18;
	setAttr -s 38 ".kix[23:37]"  1 0.0034659062512218952 1 1 1 1 0.87971389293670654 
		0.87971389293670654 0.005663716234266758 1 0.0049262717366218567 0.004853028804063797 
		0.0035570620093494654 0.0020738835446536541 1;
	setAttr -s 38 ".kiy[23:37]"  0 -0.99999397993087769 0 0 0 0 0.47550332546234131 
		0.47550329566001892 0.99998390674591064 0 -0.99998784065246582 -0.99998819828033447 
		-0.99999362230300903 -0.99999779462814331 0;
	setAttr -s 38 ".kox[23:37]"  1 0.0034659064840525389 1 1 1 1 0.87971389293670654 
		0.87971395254135132 0.0056637166999280453 1 0.0049262717366218567 0.004853028804063797 
		0.0035570620093494654 0.0020738835446536541 1;
	setAttr -s 38 ".koy[23:37]"  0 -0.99999397993087769 0 0 0 0 0.47550329566001892 
		0.4755033552646637 0.99998396635055542 0 -0.99998784065246582 -0.99998819828033447 
		-0.99999362230300903 -0.99999779462814331 0;
createNode animCurveTL -n "nurbsCircle15_translateX";
	rename -uid "8BE3108A-C84A-AEED-AB4B-D993EE65A10F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  0 0 4 0 9 0 12 0 20 0 21 0 24 0 28 0 33 0
		 36 0 45 0 48 0 52 0 57 0 60 0 68 0 69 0 72 0 73 0 78 0 80 0 83 0 93 0 96 0;
createNode animCurveTL -n "nurbsCircle15_translateY";
	rename -uid "5BB6C4C3-F549-CA68-E080-7BBDC0CC9987";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  0 0 4 0 9 0 12 0 20 0 21 0 24 0 28 0 33 0
		 36 0 45 0 48 0 52 0 57 0 60 0 68 0 69 0 72 0 73 0 78 0 80 0 83 0 93 0 96 0;
createNode animCurveTL -n "nurbsCircle15_translateZ";
	rename -uid "E372CBAD-154B-A313-FC34-28AEE26E8E0A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  0 0 4 0 9 0 12 0 20 0 21 0 24 0 28 0 33 0
		 36 0 45 0 48 0 52 0 57 0 60 0 68 0 69 0 72 0 73 0 78 0 80 0 83 0 93 0 96 0;
createNode animCurveTL -n "nurbsCircle2_translateX";
	rename -uid "6C4F096F-3D40-064D-CFB6-EF8090A4C6D2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  0 0 4 0 9 0 12 0 18 0 20 0 21 0 24 0 28 0
		 42 0 44 0 45 0 48 0 52 0 60 0 66 0 68 0 69 0 72 0 73 0 85 0 92 0 93 0 96 0;
createNode animCurveTL -n "nurbsCircle2_translateY";
	rename -uid "4A1A1E96-D04F-4093-34B8-1ABBE83C6739";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  0 0 4 0 9 0 12 0 18 0 20 0 21 0 24 0 28 0
		 42 0 44 0 45 0 48 0 52 0 60 0 66 0 68 0 69 0 72 0 73 0 85 0 92 0 93 0 96 0;
createNode animCurveTL -n "nurbsCircle2_translateZ";
	rename -uid "E89BFB08-5D47-3221-5426-949B4E185482";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  0 0 4 0 9 0 12 0 18 0 20 0 21 0 24 0 28 0
		 42 0 44 0 45 0 48 0 52 0 60 0 66 0 68 0 69 0 72 0 73 0 85 0 92 0 93 0 96 0;
createNode animCurveTU -n "nurbsCircle1_visibility";
	rename -uid "F6CDAF0D-FE44-EC79-6DD0-F68CBF4C88B5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 1 3 1 6 1 9 1 12 1 15 1 18 1 21 1 24 1
		 30 1 32 1 38 1 39 1 42 1 45 1 48 1 53 1 69 1 72 1 73 1 84 1 90 1 96 1;
	setAttr -s 23 ".kit[10:22]"  9 9 18 18 18 18 9 18 
		18 9 9 1 18;
	setAttr -s 23 ".kot[10:22]"  5 5 18 18 18 18 5 18 
		18 5 5 5 18;
	setAttr -s 23 ".kix[21:22]"  1 1;
	setAttr -s 23 ".kiy[21:22]"  0 0;
createNode animCurveTA -n "nurbsCircle1_rotateX";
	rename -uid "CAAFE297-564C-FC99-41CE-C1B11B5F70A2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 33 ".ktv[0:32]"  0 20.549469258305063 3 -19.120393634298043
		 6 -0.43895368537558754 9 16.338325880126931 12 108.97311454838014 15 105.77741919454317
		 18 117.08649592041874 21 113.08331897735479 24 20.549469258305063 28 4.264556291537466
		 30 1.3506587197338498 32 -15.818191418375521 34 -2.2436570173158694 38 14.055747987747221
		 39 38.510566346543683 42 117.08649592041874 45 113.08331897735479 48 20.549469258305063
		 53 0 59 0 60 1.8919148359435289 61 8.0430407908755264 65 43.36374560376629 67 72.934225820009104
		 69 113.08331897735479 72 20.549469258305063 73 0 76 34.340509106660754 78 0 84 0
		 85 33.436624349556197 90 45.250244910453425 96 20.549469258305063;
	setAttr -s 33 ".kit[31:32]"  1 18;
	setAttr -s 33 ".kot[31:32]"  1 18;
	setAttr -s 33 ".kix[31:32]"  0.18666136264801025 1;
	setAttr -s 33 ".kiy[31:32]"  0.98242431879043579 0;
	setAttr -s 33 ".kox[31:32]"  0.18666137754917145 1;
	setAttr -s 33 ".koy[31:32]"  0.98242431879043579 0;
createNode animCurveTA -n "nurbsCircle1_rotateY";
	rename -uid "34D0F279-D645-F894-844C-96B32E14CE27";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 34 ".ktv[0:33]"  0 8.9062093431741456 3 7.812674717240915
		 6 5.3020262708348858 9 2.0868534321361261 12 -3.2338277336978698 15 3.0166943184588932
		 18 9.267216370615655 21 9.0867128568948985 24 8.9062093431741456 28 -58.811565454913321
		 30 -61.637905733589413 32 -72.691576527058871 34 -50.747032263928567 38 -9.6862879766373577
		 39 -10.046897691259957 42 9.267216370615655 45 9.0867128568948985 48 8.9062093431741456
		 53 66.562570647772688 55 64.915486066826645 59 26.109134289981913 60 17.14490022611022
		 61 11.171587394761273 67 13.253735105718906 69 9.0867128568948985 72 8.9062093431741456
		 73 0 76 50.90285036839434 78 92.987393495188371 79 87.608421031817002 81 61.925480472178471
		 84 0 90 5.715274955830516 96 8.9062093431741456;
	setAttr -s 34 ".kit[28:33]"  1 18 18 18 1 18;
	setAttr -s 34 ".kot[28:33]"  1 18 18 18 1 18;
	setAttr -s 34 ".kix[28:33]"  0.16937273740768433 0.22467599809169769 
		0.13500232994556427 1 0.92102086544036865 1;
	setAttr -s 34 ".kiy[28:33]"  -0.98555207252502441 -0.9744335412979126 
		-0.99084532260894775 0 0.38951334357261658 0;
	setAttr -s 34 ".kox[28:33]"  0.16937273740768433 0.2246759831905365 
		0.13500232994556427 1 0.92102086544036865 1;
	setAttr -s 34 ".koy[28:33]"  -0.98555207252502441 -0.9744335412979126 
		-0.99084526300430298 0 0.38951334357261658 0;
createNode animCurveTA -n "nurbsCircle1_rotateZ";
	rename -uid "A11726CA-0747-3ED0-0BD9-2F9819E2DC8A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 -4.5007159214803361 3 -4.5886670418985416
		 6 -4.7425815024188864 9 -4.8399559573791242 12 24.287711221148697 15 17.721786865919718
		 18 7.5573090872873614 21 -0.32357858990192107 24 -4.5007159214803361 28 26.100908954466846
		 30 25.520481948672831 32 17.50664495138534 34 1.5212966009995348 38 6.9127884326721123
		 39 14.919299084088147 42 7.5573090872873614 45 -0.32357858990192107 48 -4.5007159214803361
		 53 0 59 0 60 -0.60400127328648179 61 -2.5066459592570483 67 3.9178500695740834 69 -0.32357858990192107
		 72 -4.5007159214803361 73 0 76 -11.523674080266124 78 0 81 0 84 0.058392902345321358
		 90 0 96 -4.5007159214803361;
	setAttr -s 32 ".kit[30:31]"  1 18;
	setAttr -s 32 ".kot[30:31]"  1 18;
	setAttr -s 32 ".kix[30:31]"  0.9998670220375061 1;
	setAttr -s 32 ".kiy[30:31]"  -0.016304206103086472 0;
	setAttr -s 32 ".kox[30:31]"  0.99986708164215088 1;
	setAttr -s 32 ".koy[30:31]"  -0.016304206103086472 0;
createNode animCurveTU -n "nurbsCircle1_scaleX";
	rename -uid "B4068CAA-D34B-9D10-3262-F187F7A5A70C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 1 3 1 6 1 9 1 12 1 15 1 18 1 21 1 24 1
		 30 1 32 1 38 1 39 1 42 1 45 1 48 1 53 1 69 1 72 1 73 1 84 1 90 1 96 1;
	setAttr -s 23 ".kit[21:22]"  1 18;
	setAttr -s 23 ".kot[21:22]"  1 18;
	setAttr -s 23 ".kix[21:22]"  1 1;
	setAttr -s 23 ".kiy[21:22]"  0 0;
	setAttr -s 23 ".kox[21:22]"  1 1;
	setAttr -s 23 ".koy[21:22]"  0 0;
createNode animCurveTU -n "nurbsCircle1_scaleY";
	rename -uid "105AE34C-9045-AB21-DB07-288637AD9C61";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 1 3 1 6 1 9 1 12 1 15 1 18 1 21 1 24 1
		 30 1 32 1 38 1 39 1 42 1 45 1 48 1 53 1 69 1 72 1 73 1 84 1 90 1 96 1;
	setAttr -s 23 ".kit[21:22]"  1 18;
	setAttr -s 23 ".kot[21:22]"  1 18;
	setAttr -s 23 ".kix[21:22]"  1 1;
	setAttr -s 23 ".kiy[21:22]"  0 0;
	setAttr -s 23 ".kox[21:22]"  1 1;
	setAttr -s 23 ".koy[21:22]"  0 0;
createNode animCurveTU -n "nurbsCircle1_scaleZ";
	rename -uid "E8295627-8A46-DF55-DD78-A2A1C7F582C6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 1 3 1 6 1 9 1 12 1 15 1 18 1 21 1 24 1
		 30 1 32 1 38 1 39 1 42 1 45 1 48 1 53 1 69 1 72 1 73 1 84 1 90 1 96 1;
	setAttr -s 23 ".kit[21:22]"  1 18;
	setAttr -s 23 ".kot[21:22]"  1 18;
	setAttr -s 23 ".kix[21:22]"  1 1;
	setAttr -s 23 ".kiy[21:22]"  0 0;
	setAttr -s 23 ".kox[21:22]"  1 1;
	setAttr -s 23 ".koy[21:22]"  0 0;
createNode animCurveTU -n "nurbsCircle2_visibility";
	rename -uid "325D3EC4-C04A-3D92-4DB3-B194F30F3FB4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  0 1 4 1 9 1 12 1 18 1 20 1 21 1 24 1 28 1
		 42 1 44 1 45 1 48 1 52 1 60 1 66 1 68 1 69 1 72 1 73 1 85 1 92 1 93 1 96 1;
	setAttr -s 24 ".kit[19:23]"  9 9 18 18 18;
	setAttr -s 24 ".kot[19:23]"  5 5 18 18 18;
createNode animCurveTA -n "nurbsCircle2_rotateX";
	rename -uid "A18D89E6-684E-F573-0190-ABAC04587426";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 38 ".ktv[0:37]"  0 12.74955255395863 3 -13.311320448603444
		 4 -9.6771141773669296 6 0.70632944725031188 9 -25.105174724995312 12 0 15 24.534453464746885
		 18 18.61912477811261 20 10.348629400482388 21 8.2673107563743695 24 12.74955255395863
		 27 -13.311320448603444 28 -9.6771141773669296 30 -10.893842500231786 37 2.447535888047927
		 39 -48.775068643514523 42 18.61912477811261 44 10.348629400482388 45 8.2673107563743695
		 48 12.74955255395863 52 -9.6771141773669296 54 0.70632944725031188 56 0 60 0 63 -35.726237523387766
		 64 -38.138019292441477 66 -49.363585981653472 68 10.348629400482388 69 8.2673107563743695
		 72 12.74955255395863 73 0 80 0 84 0 85 -33.513853131510658 90 -41.23075745653896
		 92 10.348629400482388 93 8.2673107563743695 96 12.74955255395863;
createNode animCurveTA -n "nurbsCircle2_rotateY";
	rename -uid "777E4697-5B4B-FF55-283C-3A9D1B61ED65";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 25 ".ktv[0:24]"  0 0 4 0 9 0 12 0 18 0 20 0 21 0 24 0 28 0
		 42 0 44 0 45 0 48 0 52 0 60 0 66 0 68 0 69 0 72 0 73 0 85 0 90 -0.84764974464091314
		 92 0 93 0 96 0;
createNode animCurveTA -n "nurbsCircle2_rotateZ";
	rename -uid "8A8D468F-224A-1B6F-727C-9785117E98C8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 25 ".ktv[0:24]"  0 0 4 0 9 0 12 0 18 0 20 0 21 0 24 0 28 0
		 42 0 44 0 45 0 48 0 52 0 60 0 66 0 68 0 69 0 72 0 73 0 85 0 90 1.0165603704451525
		 92 0 93 0 96 0;
createNode animCurveTU -n "nurbsCircle2_scaleX";
	rename -uid "30F20556-9F48-EDE8-18B1-05A4E06C48BB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  0 1 4 1 9 1 12 1 18 1 20 1 21 1 24 1 28 1
		 42 1 44 1 45 1 48 1 52 1 60 1 66 1 68 1 69 1 72 1 73 1 85 1 92 1 93 1 96 1;
createNode animCurveTU -n "nurbsCircle2_scaleY";
	rename -uid "886FFFA1-1543-B1CE-01F6-4AB7B9A4DEEC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  0 1 4 1 9 1 12 1 18 1 20 1 21 1 24 1 28 1
		 42 1 44 1 45 1 48 1 52 1 60 1 66 1 68 1 69 1 72 1 73 1 85 1 92 1 93 1 96 1;
createNode animCurveTU -n "nurbsCircle2_scaleZ";
	rename -uid "EEA9C2A6-A746-5212-713A-659D465E4DC8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  0 1 4 1 9 1 12 1 18 1 20 1 21 1 24 1 28 1
		 42 1 44 1 45 1 48 1 52 1 60 1 66 1 68 1 69 1 72 1 73 1 85 1 92 1 93 1 96 1;
createNode animCurveTU -n "nurbsCircle14_visibility";
	rename -uid "A08C6D1B-AC4B-5F56-C878-AD871BAE708E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 1 6 1 12 1 24 1 30 1 36 1 48 1 54 1 56 1
		 62 1 72 1 73 1 78 1 88 1 90 1 92 1 96 1;
	setAttr -s 17 ".kit[8:16]"  9 9 18 18 18 18 18 18 
		18;
	setAttr -s 17 ".kot[8:16]"  5 5 18 18 18 18 18 18 
		18;
createNode animCurveTA -n "nurbsCircle14_rotateX";
	rename -uid "4A557FF9-814B-6A3A-427A-46A0D540B3FC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 38 ".ktv[0:37]"  0 118.57778471302723 3 105.15627592873537
		 6 108.70103962829472 9 111.28056111308341 12 41.317155131049105 15 -19.373450707149544
		 18 -0.33654249111186352 21 0.72824197813654323 24 117.90871567999399 27 104.48720689570213
		 30 100.61396023539025 33 110.61149208005017 36 40.648086098015881 39 -20.042519740182779
		 42 -1.0056115241450965 45 0.059172945103310323 48 117.23964664696076 51 103.81813786266891
		 54 60.206062409905485 56 -5.0413581916893584 60 0.19352801543773179 61 0.20990282041544336
		 62 0.22062530311990095 63 53.371837117377773 64 51.611960665365366 66 -0.60989608792992267
		 68 -0.60989608792992267 72 116.57057761392753 73 0 78 0 80 49.129269652001412 83 50.781291192452741
		 86 22.306808909317436 88 0 89 0.025204723832225783 90 0.05024724002267314 92 0 96 115.90150858089429;
	setAttr -s 38 ".kit[20:37]"  1 18 1 18 18 18 1 18 
		18 18 18 18 18 18 18 18 18 18;
	setAttr -s 38 ".kot[20:37]"  1 18 1 18 18 18 1 18 
		18 18 18 18 18 18 18 18 18 18;
	setAttr -s 38 ".kix[20:37]"  0.36328583955764771 0.99998390674591064 
		0.36328583955764771 1 0.41201385855674744 1 1 1 1 1 0.82231169939041138 1 0.22882302105426788 
		1 0.99994468688964844 1 1 1;
	setAttr -s 38 ".kiy[20:37]"  -0.93167775869369507 0.0056751566007733345 
		-0.93167775869369507 0 -0.91117763519287109 0 0 0 0 0 0.56903737783432007 0 -0.97346806526184082 
		0 0.010523185133934021 0 0 0;
	setAttr -s 38 ".kox[20:37]"  0.36328583955764771 0.99998390674591064 
		0.36328583955764771 1 0.41201388835906982 1 1 1 1 1 0.82231169939041138 1 0.2288229912519455 
		1 0.99994456768035889 1 1 1;
	setAttr -s 38 ".koy[20:37]"  -0.93167775869369507 0.0056751566007733345 
		-0.93167775869369507 0 -0.91117763519287109 0 0 0 0 0 0.56903737783432007 0 -0.97346800565719604 
		0 0.010523184202611446 0 0 0;
createNode animCurveTA -n "nurbsCircle14_rotateY";
	rename -uid "7D310E4D-5844-BADB-85B7-8BBA0556D75D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 29 ".ktv[0:28]"  0 -34.385386240811876 6 -0.79967534942591156
		 12 -7.0510117397929903 18 -2.3259095829830132 21 -0.30725346703977424 24 -32.499604589331
		 30 -42.444747278361298 36 -5.1652300883121125 42 -0.44012793150213525 45 1.5785281844411037
		 48 -30.613822937850124 54 2.9718879535358451 56 24.087865406133467 60 -16.53504632766456
		 61 -27.883437243262406 62 -32.764185919674809 64 0.30123646058859704 66 3.4643098359219815
		 68 3.4643098359219815 72 -28.728041286369244 73 -24.744622256013301 78 41.986491567849527
		 83 16.141982580474934 86 28.37665884123312 88 0 89 -7.907290864967857 90 -12.876101805021401
		 92 -12.540021044944524 96 -26.842259634888368;
	setAttr -s 29 ".kit[13:28]"  1 18 1 18 18 1 18 18 
		18 18 18 18 18 18 18 18;
	setAttr -s 29 ".kot[13:28]"  1 18 1 18 18 1 18 18 
		18 18 18 18 18 18 18 18;
	setAttr -s 29 ".kix[13:28]"  1 0.28224068880081177 1 0.44947400689125061 
		1 1 1 0.19852818548679352 1 1 1 0.19365037977695465 0.34768041968345642 1 1 1;
	setAttr -s 29 ".kiy[13:28]"  0 -0.95934361219406128 0 0.89329344034194946 
		0 0 0 0.98009514808654785 0 0 0 -0.98107057809829712 -0.93761312961578369 0 0 0;
	setAttr -s 29 ".kox[13:28]"  1 0.28224074840545654 1 0.44947400689125061 
		1 1 1 0.19852818548679352 1 1 1 0.19365039467811584 0.34768041968345642 1 1 1;
	setAttr -s 29 ".koy[13:28]"  0 -0.95934367179870605 0 0.89329338073730469 
		0 0 0 0.98009508848190308 0 0 0 -0.98107063770294189 -0.93761312961578369 0 0 0;
createNode animCurveTA -n "nurbsCircle14_rotateZ";
	rename -uid "4CBB0841-3842-F6ED-308D-6EB95E6CB944";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 29 ".ktv[0:28]"  0 -44.965838555629581 6 -10.604208255733996
		 12 -6.1587438006300967 18 0.62268267611579264 21 0.59452610755101354 24 -43.751973049821189
		 30 -16.754282037117395 36 -4.9448782948217049 42 1.8365481819241849 45 1.8083916133594056
		 48 -42.538107544012803 54 -8.176477244117212 56 -0.94243146547782719 60 3.2989100591625213
		 61 3.2558233209297134 62 3.2345896566656616 64 0.037159727727560245 66 3.0222571191677976
		 68 3.0222571191677976 72 -41.324242038204417 73 0 78 0 83 7.6207339376193435 86 -6.0393919936748022
		 88 0 89 -0.13718945742208336 90 -0.27307934799992944 92 0 96 -40.110376532396018;
	setAttr -s 29 ".kit[13:28]"  1 18 1 18 18 1 18 18 
		18 18 18 18 18 18 18 18;
	setAttr -s 29 ".kot[13:28]"  1 18 1 18 18 1 18 18 
		18 18 18 18 18 18 18 18;
	setAttr -s 29 ".kix[13:28]"  0.93105685710906982 0.99990928173065186 
		0.93105685710906982 1 1 1 1 1 1 1 1 1 0.99836850166320801 1 1 1;
	setAttr -s 29 ".kiy[13:28]"  0.36487412452697754 -0.01347002387046814 
		0.36487412452697754 0 0 0 0 0 0 0 0 0 -0.057100348174571991 0 0 0;
	setAttr -s 29 ".kox[13:28]"  0.93105685710906982 0.99990928173065186 
		0.93105685710906982 1 1 1 1 1 1 1 1 1 0.99836838245391846 1 1 1;
	setAttr -s 29 ".koy[13:28]"  0.36487412452697754 -0.01347002387046814 
		0.36487412452697754 0 0 0 0 0 0 0 0 0 -0.057100344449281693 0 0 0;
createNode animCurveTU -n "nurbsCircle14_scaleX";
	rename -uid "529BD7B8-FD42-93A3-345B-4E88242F94B7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 1 6 1 12 1 24 1 30 1 36 1 48 1 54 1 56 1
		 62 1 72 1 73 1 78 1 88 1 90 1 92 1 96 1;
createNode animCurveTU -n "nurbsCircle14_scaleY";
	rename -uid "02344EF1-C84C-3C47-01C2-799E7F8004A2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 1 6 1 12 1 24 1 30 1 36 1 48 1 54 1 56 1
		 62 1 72 1 73 1 78 1 88 1 90 1 92 1 96 1;
createNode animCurveTU -n "nurbsCircle14_scaleZ";
	rename -uid "EAC6F624-2248-3680-6E63-FBBBB7BC5C2F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 1 6 1 12 1 24 1 30 1 36 1 48 1 54 1 56 1
		 62 1 72 1 73 1 78 1 88 1 90 1 92 1 96 1;
createNode animCurveTU -n "nurbsCircle15_visibility";
	rename -uid "F4CAA829-E148-7C83-9CC4-83B5B00195AB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  0 1 4 1 9 1 12 1 20 1 21 1 24 1 28 1 33 1
		 36 1 45 1 48 1 52 1 57 1 60 1 68 1 69 1 72 1 73 1 78 1 80 1 83 1 93 1 96 1;
	setAttr -s 24 ".kit[18:23]"  9 9 9 9 18 18;
	setAttr -s 24 ".kot[18:23]"  5 5 5 5 18 18;
createNode animCurveTA -n "nurbsCircle15_rotateX";
	rename -uid "C5835E7E-7B40-6589-671F-1B96ED666BCE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 38 ".ktv[0:37]"  0 4.6630843121572338 3 24.732403815733885
		 4 18.650953782208575 6 1.2753870514980559 9 3.4506564904618502 12 8.8537435408146585
		 15 -2.7821075739710142 18 1.7612951958455592 20 -19.634611529821019 21 -27.123187147721996
		 24 4.6630843121572338 27 24.732403815733885 28 18.650953782208575 30 1.2753870514980559
		 33 3.4506564904618502 36 8.8537435408146585 39 -2.7821075739710142 42 1.7612951958455592
		 45 5.8306932053818477 48 4.6630843121572338 51 24.732403815733885 52 18.650953782208575
		 54 1.2753870514980559 57 3.4506564904618502 60 8.8537435408146585 62 1.4329822986980689
		 63 -26.890995101490713 66 1.7612951958455592 68 9.2367263023603261 69 -28.24196433797983
		 72 4.6630843121572338 73 0 78 0 80 -41.037023339978163 83 0 91 0 93 0 96 4.6630843121572338;
createNode animCurveTA -n "nurbsCircle15_rotateY";
	rename -uid "32FFD20E-E942-78A8-2EF8-7DAD1BB059F2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  0 0 4 0 9 0 12 0 20 0 21 0 24 0 28 0 33 0
		 36 0 45 0 48 0 52 0 57 0 60 0 68 0 69 2.9429774484103923 72 0 73 0 78 0 80 0 83 0
		 93 0 96 0;
createNode animCurveTA -n "nurbsCircle15_rotateZ";
	rename -uid "5A01E2FD-A149-63F7-A6A7-D6825704CD3A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  0 0 4 0 9 0 12 0 20 0 21 0 24 0 28 0 33 0
		 36 0 45 0 48 0 52 0 57 0 60 0 68 0 69 -0.30170342755100399 72 0 73 0 78 0 80 0 83 0
		 93 0 96 0;
createNode animCurveTU -n "nurbsCircle15_scaleX";
	rename -uid "D9001A8D-9E4B-8B48-C452-40BE546EC00F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  0 1 4 1 9 1 12 1 20 1 21 1 24 1 28 1 33 1
		 36 1 45 1 48 1 52 1 57 1 60 1 68 1 69 1 72 1 73 1 78 1 80 1 83 1 93 1 96 1;
createNode animCurveTU -n "nurbsCircle15_scaleY";
	rename -uid "C7DF6428-AC49-0625-AF71-D29F8E126ED7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  0 1 4 1 9 1 12 1 20 1 21 1 24 1 28 1 33 1
		 36 1 45 1 48 1 52 1 57 1 60 1 68 1 69 1 72 1 73 1 78 1 80 1 83 1 93 1 96 1;
createNode animCurveTU -n "nurbsCircle15_scaleZ";
	rename -uid "887C1B4A-1645-401A-419F-5685679EB55A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  0 1 4 1 9 1 12 1 20 1 21 1 24 1 28 1 33 1
		 36 1 45 1 48 1 52 1 57 1 60 1 68 1 69 1 72 1 73 1 78 1 80 1 83 1 93 1 96 1;
createNode animCurveTL -n "nurbsCircle4_translateY";
	rename -uid "6729F041-9A4C-D133-4A41-34A5BBFD70EA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 4.4805563519104208 3 2.0991582824732387
		 6 -4.0924766980634093 9 -12.189230134149769 12 4.4805563519104208 15 2.0991582824732387
		 18 -4.0924766980634093 21 -12.189230134149769 24 4.4805563519104208 30 -4.0924766980634093
		 34 -26.093388830727275 39 -20.018189705281003 42 -4.0924766980634093 45 -12.189230134149769
		 48 4.4805563519104208 51 2.0991582824732387 54 -4.0924766980634093 59 -27.274629555787754
		 62 -29.797896466277127 66 -19.133860704100627 69 -12.189230134149769 72 4.4805563519104208
		 73 -9.7629574996406063 85 -10.696754214459933 93 -12.189230134149769 96 4.4805563519104208;
createNode animCurveTL -n "nurbsCircle4_translateZ";
	rename -uid "B601E382-894D-C701-C78F-3FA1139E7378";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 20.783826615467877 3 21.736385843242761
		 6 23.641504298792466 9 22.212665457130189 12 20.783826615467877 15 21.736385843242761
		 18 23.641504298792466 21 22.212665457130189 24 20.783826615467877 30 4.2682455489105671
		 34 23.241903550689237 42 23.641504298792466 45 22.212665457130189 48 20.783826615467877
		 51 21.736385843242761 54 23.641504298792466 62 8.6750253948934688 66 23.641504298792466
		 69 22.212665457130189 72 20.783826615467877 73 0 77 -34.510437741806975 81 -44.87454919000465
		 85 -7.9503809969365431 93 22.212665457130189 96 20.783826615467877;
createNode animCurveTL -n "nurbsCircle4_translateX";
	rename -uid "9271FD2A-5F47-AEAC-AE54-3A96BA47282C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 26 ".ktv[0:25]"  0 0 3 0 6 0 9 0 12 0 15 0 18 0 21 0 24 0
		 30 0 34 6.017855411239017 42 0 45 0 48 0 51 0 54 0 62 -6.4559147288956513 66 0 69 0
		 72 0 73 0 77 -22.237278731156298 81 -8.3273154938495626 85 -1.2487100578281161 93 0
		 96 0;
createNode animCurveTU -n "nurbsCircle4_visibility";
	rename -uid "12B34402-2F4E-FB0D-E5D3-2182825820F7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 1 3 1 6 1 9 1 12 1 15 1 18 1 21 1 24 1
		 30 1 42 1 45 1 48 1 51 1 54 1 66 1 69 1 72 1 73 1 93 1 96 1;
	setAttr -s 21 ".kit[18:20]"  9 18 18;
	setAttr -s 21 ".kot[18:20]"  5 18 18;
createNode animCurveTA -n "nurbsCircle4_rotateX";
	rename -uid "ABCEACAE-7846-A968-AF2E-85A8999F99F7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  0 37.177961349958132 3 37.177961349958132
		 6 37.177961349958132 9 37.177961349958132 12 37.177961349958132 15 37.177961349958132
		 18 37.177961349958132 21 37.177961349958132 24 37.177961349958132 30 39.252234161079663
		 42 37.177961349958132 45 37.177961349958132 48 37.177961349958132 51 37.177961349958132
		 54 32.668593704294715 59 19.751750399927218 66 25.561286171833011 69 37.177961349958132
		 72 37.177961349958132 73 0 85 38.736409767457125 89 53.047993312520205 93 37.177961349958132
		 96 37.177961349958132;
createNode animCurveTA -n "nurbsCircle4_rotateY";
	rename -uid "1BC5D79C-FB4E-7F94-F509-78AA9C45261B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 -26.663474591089297 6 -16.122314504042276
		 9 14.780741272239279 12 24.29035329125367 18 12.725113851250988 21 -17.15386257207491
		 24 -26.663474591089297 30 -41.098882564462144 42 12.725113851250988 45 -17.15386257207491
		 48 -26.663474591089297 54 29.230019906286373 59 46.73772253206873 66 -3.2079650302920295
		 69 -17.15386257207491 72 -26.663474591089297 73 -17.227656765233974 85 42.274839038693898
		 89 6.2699505780531766 93 -17.15386257207491 96 -26.663474591089297;
createNode animCurveTA -n "nurbsCircle4_rotateZ";
	rename -uid "5334566E-2D4F-9A67-F18A-2C935F566A28";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 -10.530990657607623 12 9.4545449662445407
		 24 -10.530990657607623 30 -5.9460263448250874 48 -10.530990657607623 54 -10.366142904426473
		 59 -17.150393675108642 66 -9.0878754828544164 72 -10.530990657607623 73 0 85 -17.613671712259347
		 89 3.2993159800901721 96 -10.530990657607623;
createNode animCurveTU -n "nurbsCircle4_scaleX";
	rename -uid "29AD887D-2F4B-3B47-EE5A-7194D5108411";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 1 3 1 6 1 9 1 12 1 15 1 18 1 21 1 24 1
		 30 1 42 1 45 1 48 1 51 1 54 1 66 1 69 1 72 1 73 1 93 1 96 1;
createNode animCurveTU -n "nurbsCircle4_scaleY";
	rename -uid "1292C8EC-1A42-F2DC-DC7D-23AAA1D79FA0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 1 3 1 6 1 9 1 12 1 15 1 18 1 21 1 24 1
		 30 1 42 1 45 1 48 1 51 1 54 1 66 1 69 1 72 1 73 1 93 1 96 1;
createNode animCurveTU -n "nurbsCircle4_scaleZ";
	rename -uid "0E6BFDCB-AF42-1E5A-A37F-AA93A9109FE8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 1 3 1 6 1 9 1 12 1 15 1 18 1 21 1 24 1
		 30 1 42 1 45 1 48 1 51 1 54 1 66 1 69 1 72 1 73 1 93 1 96 1;
createNode animCurveTA -n "nurbsCircle5_rotateX";
	rename -uid "594329D5-8642-0D47-C5AA-11919ABDFFA3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  1 7.2966886652068865 5 7.2966886652068865
		 9 7.2966886652068865 13 7.2966886652068865 17 7.2966886652068865 21 7.2966886652068865
		 25 7.2966886652068865 29 9.6553631445306038 30 9.2868207316206188 42 7.2966886652068865
		 45 7.2966886652068865 49 7.2966886652068865 58 -7.9282048881776896 61 -0.79243192275038332
		 65 7.2966886652068865 69 7.2966886652068865 73 0 79 -10.545522898334564 85 -17.590805400835485
		 88 -19.676542108495159 93 7.2966886652068865;
createNode animCurveTA -n "nurbsCircle5_rotateY";
	rename -uid "0E0F810A-3446-BBA9-8DDB-1D9D4E6DEBBF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  0 19.537780430067112 4 11.55069412697269
		 8 -2.7710163726026935 12 -17.770705082105497 16 -10.091794026405342 20 4.3458021317892799
		 24 19.537780430067112 29 -19.844933561317465 30 -15.418369675185083 42 -3.3425629887026989
		 44 4.3458021317892799 48 19.537780430067112 52 11.55069412697269 58 -6.7138649920589266
		 61 -14.218810452317713 72 19.537780430067112 73 0 79 22.983578688465492 85 21.156376393956194
		 88 -2.5331405495866757 92 4.3458021317892799 96 19.537780430067112;
createNode animCurveTA -n "nurbsCircle5_rotateZ";
	rename -uid "FDC9E9B8-8546-470F-D8D6-B79FAC8680B2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  0 3.888328212493275 4 -7.1475799121329668
		 8 -0.4024930015908057 12 -0.12680843779480472 16 6.592431475259958 20 -1.1929562248285535
		 24 3.888328212493275 29 17.29213304607137 30 12.704644904043271 42 2.6997376252157022
		 44 -1.1929562248285535 48 3.888328212493275 52 -7.1475799121329668 58 -16.642654577920315
		 61 4.4214185667559196 72 3.888328212493275 73 0 79 -1.9157992437396638 85 -0.98171148509378714
		 88 -6.4019211952254409 92 -1.1929562248285535 96 3.888328212493275;
createNode animCurveTU -n "nurbsCircle5_visibility";
	rename -uid "811F4A27-7E45-B055-F033-7F8CD9FB97B7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 1 4 1 8 1 12 1 16 1 20 1 24 1 30 1 42 1
		 44 1 48 1 52 1 58 1 72 1 73 1 92 1 96 1;
	setAttr -s 17 ".kit[7:16]"  9 9 18 18 18 9 18 9 
		18 18;
	setAttr -s 17 ".kot[7:16]"  5 5 18 18 18 5 18 5 
		18 18;
createNode animCurveTL -n "nurbsCircle5_translateX";
	rename -uid "60FCD787-9542-E1A6-D9B4-44B1F6AE3CBC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 4 0 8 0 12 0 16 0 20 0 24 0 30 0 42 0
		 44 0 48 0 52 0 58 0 72 0 73 0 92 0 96 0;
createNode animCurveTL -n "nurbsCircle5_translateY";
	rename -uid "65756070-DE46-DAAA-77BE-B5BE8CCBC482";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 4 0 8 0 12 0 16 0 20 0 24 0 30 0 42 0
		 44 0 48 0 52 0 58 0 72 0 73 0 92 0 96 0;
createNode animCurveTL -n "nurbsCircle5_translateZ";
	rename -uid "584966DB-4149-E0EA-60B7-37949C368E24";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 4 0 8 0 12 0 16 0 20 0 24 0 30 0 42 0
		 44 0 48 0 52 0 58 0 72 0 73 0 92 0 96 0;
createNode animCurveTU -n "nurbsCircle5_scaleX";
	rename -uid "629899C2-A042-43DA-B56B-11BFFED48C0D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 1 4 1 8 1 12 1 16 1 20 1 24 1 30 1 42 1
		 44 1 48 1 52 1 58 1 72 1 73 1 92 1 96 1;
createNode animCurveTU -n "nurbsCircle5_scaleY";
	rename -uid "D0802B0E-9043-2E45-B07A-4A84052025C7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 1 4 1 8 1 12 1 16 1 20 1 24 1 30 1 42 1
		 44 1 48 1 52 1 58 1 72 1 73 1 92 1 96 1;
createNode animCurveTU -n "nurbsCircle5_scaleZ";
	rename -uid "ECA666BA-F747-4C76-4C8F-06BED78E5440";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 1 4 1 8 1 12 1 16 1 20 1 24 1 30 1 42 1
		 44 1 48 1 52 1 58 1 72 1 73 1 92 1 96 1;
createNode animCurveTA -n "nurbsCircle6_rotateX";
	rename -uid "3490752B-2F46-EE1B-EE23-0E9A1E44A325";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  0 -0.3699607200478619 4 1 8 0.02776555887135386
		 12 0.068315293963817594 16 0.38322270389523355 20 1 24 -0.25325243756650972 28 1.1167082824813521
		 30 0.63059106191702907 42 0.86654995228212683 44 1.1167082824813521 48 -0.1365441550851576
		 52 1.2334165649627042 58 0.44730740682169151 60 0.30173185892652188 64 0.61663926885793785
		 68 1.2334165649627042 72 -0.019835872603805468 73 0 78 -0.70080355293672059 85 0.13818927114010002
		 89 4.8272725569998123 92 1.3501248474440566 96 0.096872409877546681;
createNode animCurveTA -n "nurbsCircle6_rotateY";
	rename -uid "B8959506-B949-4B62-D584-35823D530451";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  0 10.549241043974854 4 13.678214519366003
		 8 -1.1696448650931708 12 -5.5046731839878493 16 -7.8345363449209708 20 5.1983311606031632
		 24 10.552648835898754 28 13.681622311289903 30 7.4566235735382866 42 -2.463894280756703
		 44 5.2017389525270632 48 10.556056627822654 52 13.685030103213803 58 -0.53471510217082252
		 60 -5.4978576001400512 64 -7.8277207610731718 68 5.2051467444509623 72 10.559464419746552
		 73 0 78 -23.670667160949634 85 2.54110143598376 89 23.045294828525609 92 5.2085545363748613
		 96 10.562872211670452;
createNode animCurveTA -n "nurbsCircle6_rotateZ";
	rename -uid "54BB9745-7B45-ED21-3414-1F84DCF84B77";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  0 -4.0872559379794948 4 2.8353701582562865
		 8 -1.9205898851160381 12 -1.9903375627984763 16 -3.3072107598255949 20 4.3184780139378942
		 24 -3.4498942595699953 28 3.4727318366657856 30 1.1209072134603708 42 1.1429953054656488
		 44 4.9558396923473929 48 -2.8125325811604962 52 4.1100935150752846 58 0.61426837961019154
		 60 -0.71561420597947811 64 -2.0324874030065967 68 5.5932013707568924 72 -2.1751709027509971
		 73 0 78 11.708159492642894 85 -15.823625870186474 89 -0.42078855816464922 92 6.230563049166391
		 96 -1.537809224341498;
createNode animCurveTU -n "nurbsCircle6_visibility";
	rename -uid "8030919D-9740-AAD2-1D73-4BB5E9526A38";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 1 4 1 8 1 12 1 16 1 20 1 24 1 28 1 30 1
		 42 1 44 1 48 1 52 1 58 1 60 1 64 1 68 1 72 1 73 1 92 1 96 1;
	setAttr -s 21 ".kit[8:20]"  9 9 18 18 18 9 18 18 
		18 18 9 18 18;
	setAttr -s 21 ".kot[8:20]"  5 5 18 18 18 5 18 18 
		18 18 5 18 18;
createNode animCurveTL -n "nurbsCircle6_translateX";
	rename -uid "B5795627-A049-E9DB-7438-80927F0340AC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 0 4 0 8 0 12 0 16 0 20 0 24 0 28 0 30 0
		 42 0 44 0 48 0 52 0 58 0 60 0 64 0 68 0 72 0 73 0 92 0 96 0;
createNode animCurveTL -n "nurbsCircle6_translateY";
	rename -uid "6D8EDF98-D645-FEAC-4A5A-0BB057603178";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 0 4 0 8 0 12 0 16 0 20 0 24 0 28 0 30 0
		 42 0 44 0 48 0 52 0 58 0 60 0 64 0 68 0 72 0 73 0 92 0 96 0;
createNode animCurveTL -n "nurbsCircle6_translateZ";
	rename -uid "D06B8328-054D-C804-3426-EEB0C6859C90";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 0 4 0 8 0 12 0 16 0 20 0 24 0 28 0 30 0
		 42 0 44 0 48 0 52 0 58 0 60 0 64 0 68 0 72 0 73 0 92 0 96 0;
createNode animCurveTU -n "nurbsCircle6_scaleX";
	rename -uid "1BC06D5D-CE43-153E-1B02-DCA1E4314330";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 1 4 1 8 1 12 1 16 1 20 1 24 1 28 1 30 1
		 42 1 44 1 48 1 52 1 58 1 60 1 64 1 68 1 72 1 73 1 92 1 96 1;
createNode animCurveTU -n "nurbsCircle6_scaleY";
	rename -uid "388A4E60-A544-A74C-52BE-D091A375409A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 1 4 1 8 1 12 1 16 1 20 1 24 1 28 1 30 1
		 42 1 44 1 48 1 52 1 58 1 60 1 64 1 68 1 72 1 73 1 92 1 96 1;
createNode animCurveTU -n "nurbsCircle6_scaleZ";
	rename -uid "82764ECE-334C-1865-FFB7-CC9319DD55CC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 1 4 1 8 1 12 1 16 1 20 1 24 1 28 1 30 1
		 42 1 44 1 48 1 52 1 58 1 60 1 64 1 68 1 72 1 73 1 92 1 96 1;
createNode animCurveTL -n "nurbsCircle10_translateX";
	rename -uid "1BF99BFE-3D4E-EF9D-B109-8497F97E4C0C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 25 ".ktv[0:24]"  0 21.999244679947829 4 26.184361711082836
		 8 32.278884724446982 12 36.708925785964823 16 37.490766524259911 20 33.336074928316314
		 24 21.999244679947829 28 -9.5037102134968663 32 17.695840449732703 35 41.702128602907308
		 42 36.381641137685889 44 33.336074928316314 48 21.999244679947829 51 48.591489993584368
		 56 81.590389237653909 60 59.605699455417174 64 34.037724916307667 68 33.336074928316314
		 72 21.999244679947829 73 18.81175122637746 78 57.080818715686412 82 87.436639559229292
		 87 73.107826971185546 92 33.336074928316314 96 21.999244679947829;
	setAttr -s 25 ".kit[24]"  1;
	setAttr -s 25 ".kot[24]"  1;
	setAttr -s 25 ".kix[24]"  1;
	setAttr -s 25 ".kiy[24]"  0;
	setAttr -s 25 ".kox[24]"  1;
	setAttr -s 25 ".koy[24]"  0;
createNode animCurveTL -n "nurbsCircle10_translateY";
	rename -uid "4081C6C1-B547-0BFD-7DF7-998C8463F121";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 6.2483351853219915 4 6.2483351853219915
		 8 -11.323953980726856 12 8.9176433992090267 16 8.2815592607842348 20 -7.9070982541649926
		 24 6.2483351853219915 28 -10.930169091794284 35 -40.635604016887292 38 -31.020097723691158
		 39 -30.505230530848337 42 -0.051301222583960637 44 -7.9070982541649926 48 6.2483351853219915
		 51 -10.938737534295512 60 -22.7499983031651 64 -21.157311210340453 68 -7.9070982541649926
		 72 6.2483351853219915 73 0 87 -20.137279729144094 92 -20.223795013050363 96 6.2483351853219915;
	setAttr -s 23 ".kit[22]"  1;
	setAttr -s 23 ".kot[22]"  1;
	setAttr -s 23 ".kix[22]"  1;
	setAttr -s 23 ".kiy[22]"  0;
	setAttr -s 23 ".kox[22]"  1;
	setAttr -s 23 ".koy[22]"  0;
createNode animCurveTL -n "nurbsCircle10_translateZ";
	rename -uid "FFE448F3-754F-E691-DF5A-7C8C3BA03725";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 25 ".ktv[0:24]"  0 51.13726104198637 4 52.962117786959197
		 8 62.181323850315785 12 59.010784278705614 16 68.779231266698844 20 59.992728744351005
		 24 51.13726104198637 28 0.63914838459353973 32 3.6575651255975083 35 58.228229185287404
		 42 65.488603647095815 44 59.992728744351005 48 51.13726104198637 51 71.552589513615999
		 56 63.960555695247535 60 50.629267975583673 64 44.193763115669178 68 59.992728744351005
		 72 51.13726104198637 73 10.705937689318148 78 -11.076798463263216 82 -13.612667576034111
		 87 56.720166322675723 92 59.992728744351005 96 51.13726104198637;
createNode animCurveTL -n "nurbsCircle12_translateX";
	rename -uid "734DE49D-1B4A-DCAF-07FA-DCB6C47D22C8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 25 ".ktv[0:24]"  0 -64.369933740671485 4 -59.374334193862751
		 8 -56.914157234201603 12 -49.880244450284863 16 -46.052401088088949 20 -52.250575478033625
		 24 -64.369933740671485 28 -110.58804496398665 32 -76.332096265829861 35 -47.745937680640992
		 42 -48.006642030493481 44 -52.250575478033625 48 -64.369933740671485 52 -22.226426451462459
		 56 -16.481062809677915 60 -35.572685140498088 64 -50.839844401328044 68 -52.250575478033625
		 72 -64.369933740671485 73 -64.234215474779631 77 -74.656758953370883 82 -39.197791126193529
		 87 -20.853434139873947 92 -49.44202269435462 96 -64.369933740671485;
createNode animCurveTL -n "nurbsCircle12_translateY";
	rename -uid "09751859-E64A-BF54-92CA-C2A57756F3EE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 25 ".ktv[0:24]"  0 -10.293568970781507 4 -12.858150111381633
		 8 -31.359694617021148 12 -10.293568970781507 16 -10.293568970781507 20 -26.72603833022464
		 24 -10.293568970781507 28 -18.099669574081958 35 -52.411705537493546 38 -45.42629930008377
		 39 -46.081581818265377 42 -18.509803650503073 44 -26.72603833022464 48 -10.293568970781507
		 52 -27.70914670888429 56 -33.910186135690566 60 -44.894507246817113 64 -39.053879948972394
		 68 -26.72603833022464 72 -10.293568970781507 73 -23.121429775946467 82 -27.273474265926453
		 87 -34.747227299648777 92 -33.500569925520949 96 -10.293568970781507;
createNode animCurveTL -n "nurbsCircle12_translateZ";
	rename -uid "A27AA6D5-DF47-7648-0B66-21912CA7872A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 25 ".ktv[0:24]"  0 55.195582141378551 4 58.049677814885442
		 8 62.081151828773102 12 58.976392411082585 16 67.927012856486598 20 58.413341258120489
		 24 55.195582141378551 28 44.400778636536415 32 32.765652078364646 35 72.799195337340578
		 42 63.965891735016775 44 58.413341258120489 48 55.195582141378551 52 40.632744116210048
		 56 26.024171780533585 60 20.489315682404442 64 45.501857812155919 68 58.413341258120489
		 72 55.195582141378551 73 11.042024050865507 77 -70.866387393491948 82 -65.725491297616472
		 87 17.538799040155844 92 63.800018245369273 96 55.195582141378551;
createNode animCurveTU -n "nurbsCircle10_visibility";
	rename -uid "3953480B-1D45-E43B-1E5D-DBA1D0D596D1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 1 4 1 8 1 12 1 16 1 20 1 24 1 28 1 42 1
		 44 1 48 1 51 1 64 1 68 1 72 1 73 1 92 1 96 1;
	setAttr -s 18 ".kit[0:17]"  18 9 9 9 9 9 18 9 
		9 9 18 9 9 9 18 9 9 1;
	setAttr -s 18 ".kot[0:17]"  18 5 5 5 5 5 18 5 
		5 5 18 5 5 5 18 5 5 1;
	setAttr -s 18 ".kix[17]"  1;
	setAttr -s 18 ".kiy[17]"  0;
	setAttr -s 18 ".kox[17]"  1;
	setAttr -s 18 ".koy[17]"  0;
createNode animCurveTA -n "nurbsCircle10_rotateX";
	rename -uid "BE72463A-174F-D904-C300-C885ABBB3516";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  0 47.059106795327622 4 47.059106795327622
		 8 49.478229877201407 12 56.665287469668577 16 50.448427768977908 20 49.940704045458489
		 24 47.059106795327622 28 7.1882451490511645 42 50.194565907218198 44 49.940704045458489
		 48 47.059106795327622 51 134.56129817316088 56 -0.74791799561079964 60 -94.676834374127338
		 64 50.448427768977908 68 49.940704045458489 72 47.059106795327622 73 34.765402510309848
		 78 191.65718589062405 87 152.85495605028817 92 49.940704045458489 96 47.059106795327622;
	setAttr -s 22 ".kit[21]"  1;
	setAttr -s 22 ".kot[21]"  1;
	setAttr -s 22 ".kix[21]"  1;
	setAttr -s 22 ".kiy[21]"  0;
	setAttr -s 22 ".kox[21]"  1;
	setAttr -s 22 ".koy[21]"  0;
createNode animCurveTA -n "nurbsCircle10_rotateY";
	rename -uid "D1B629A1-B447-336C-8AC5-6498FDF76F56";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  0 40.827111566152553 4 40.827111566152553
		 8 42.919620766034328 12 39.160193577410716 16 47.307323326678812 20 47.17467576784108
		 24 40.827111566152553 28 14.596141231836009 42 47.29074238021952 44 47.17467576784108
		 48 40.827111566152553 51 74.329289475922977 56 106.12414427327101 60 77.167966256474713
		 64 47.307323326678812 68 47.17467576784108 72 40.827111566152553 73 68.370947333778687
		 78 37.64712049493955 87 68.027433913470446 92 47.17467576784108 96 40.827111566152553;
	setAttr -s 22 ".kit[21]"  1;
	setAttr -s 22 ".kot[21]"  1;
	setAttr -s 22 ".kix[21]"  1;
	setAttr -s 22 ".kiy[21]"  0;
	setAttr -s 22 ".kox[21]"  1;
	setAttr -s 22 ".koy[21]"  0;
createNode animCurveTA -n "nurbsCircle10_rotateZ";
	rename -uid "A4CDAEE2-F140-4008-72FE-68B6F2A7FDED";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  0 31.29298252778803 4 31.29298252778803
		 8 31.448712147275067 12 38.445478472029457 16 32.162706459362816 20 32.579141289813663
		 24 31.29298252778803 28 -0.49665992148088167 42 32.370923874588243 44 32.579141289813663
		 48 31.29298252778803 51 112.68519135629919 56 -22.776299974783679 60 -116.90544255554535
		 64 32.162706459362816 68 32.579141289813663 72 31.29298252778803 73 7.7762319851805488
		 78 158.29775123770258 87 123.01302234211593 92 32.579141289813663 96 31.29298252778803;
	setAttr -s 22 ".kit[21]"  1;
	setAttr -s 22 ".kot[21]"  1;
	setAttr -s 22 ".kix[21]"  1;
	setAttr -s 22 ".kiy[21]"  0;
	setAttr -s 22 ".kox[21]"  1;
	setAttr -s 22 ".koy[21]"  0;
createNode animCurveTU -n "nurbsCircle10_scaleX";
	rename -uid "A0D760FD-8D4D-21CD-3E3E-A49896D6707D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 1 4 1 8 1 12 1 16 1 20 1 24 1 28 1 42 1
		 44 1 48 1 51 1 64 1 68 1 72 1 73 1 92 1 96 1;
	setAttr -s 18 ".kit[17]"  1;
	setAttr -s 18 ".kot[17]"  1;
	setAttr -s 18 ".kix[17]"  1;
	setAttr -s 18 ".kiy[17]"  0;
	setAttr -s 18 ".kox[17]"  1;
	setAttr -s 18 ".koy[17]"  0;
createNode animCurveTU -n "nurbsCircle10_scaleY";
	rename -uid "E959C5C0-1C4C-FFFC-BFA5-00877737383A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 1 4 1 8 1 12 1 16 1 20 1 24 1 28 1 42 1
		 44 1 48 1 51 1 64 1 68 1 72 1 73 1 92 1 96 1;
	setAttr -s 18 ".kit[17]"  1;
	setAttr -s 18 ".kot[17]"  1;
	setAttr -s 18 ".kix[17]"  1;
	setAttr -s 18 ".kiy[17]"  0;
	setAttr -s 18 ".kox[17]"  1;
	setAttr -s 18 ".koy[17]"  0;
createNode animCurveTU -n "nurbsCircle10_scaleZ";
	rename -uid "9F845B01-3942-4235-F727-BC8810030119";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 1 4 1 8 1 12 1 16 1 20 1 24 1 28 1 42 1
		 44 1 48 1 51 1 64 1 68 1 72 1 73 1 92 1 96 1;
	setAttr -s 18 ".kit[17]"  1;
	setAttr -s 18 ".kot[17]"  1;
	setAttr -s 18 ".kix[17]"  1;
	setAttr -s 18 ".kiy[17]"  0;
	setAttr -s 18 ".kox[17]"  1;
	setAttr -s 18 ".koy[17]"  0;
createNode animCurveTU -n "nurbsCircle10_Grip";
	rename -uid "0DD4B47B-EC4B-4616-D6A0-1CB78BEC60E3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 1 4 1 8 1 12 1 16 1 20 1 24 1 28 1 42 1
		 44 1 48 1 51 1 64 1 68 1 72 1 73 1 92 1 96 1;
	setAttr -s 18 ".kit[17]"  1;
	setAttr -s 18 ".kot[17]"  1;
	setAttr -s 18 ".kix[17]"  1;
	setAttr -s 18 ".kiy[17]"  0;
	setAttr -s 18 ".kox[17]"  1;
	setAttr -s 18 ".koy[17]"  0;
createNode animCurveTU -n "nurbsCircle12_visibility";
	rename -uid "0F3AB948-3942-F8F0-D128-67B4D8A81096";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  0 1 4 1 8 1 12 1 16 1 20 1 24 1 28 1 42 1
		 44 1 48 1 52 1 56 1 60 1 64 1 68 1 72 1 73 1 92 1 96 1;
	setAttr -s 20 ".kit[2:19]"  9 18 18 18 18 18 9 18 
		18 18 9 18 18 18 18 9 18 18;
	setAttr -s 20 ".kot[2:19]"  5 18 18 18 18 18 5 18 
		18 18 5 18 18 18 18 5 18 18;
createNode animCurveTA -n "nurbsCircle12_rotateX";
	rename -uid "9CC17137-1F43-83AD-3A72-6C9AA47AFDE6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 -20.555152017743378 4 -20.555152017743378
		 8 -20.555152017743378 12 -20.555152017743378 16 -20.555152017743378 20 -20.555152017743378
		 24 -20.555152017743378 28 20.000441111540347 42 -20.555152017743378 44 -20.555152017743378
		 48 -20.555152017743378 52 -20.555152017743378 56 -78.260572775038284 60 -71.350133840169747
		 64 -23.986315022580115 68 -20.555152017743378 72 -20.555152017743378 73 -41.045479085636288
		 77 -88.083572190564468 82 -102.42590123175741 87 -46.508516653436196 92 -20.555152017743378
		 96 -20.555152017743378;
createNode animCurveTA -n "nurbsCircle12_rotateY";
	rename -uid "FB1509FA-E14E-6D74-2FC8-0CBEB0FEADDC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 -33.550475568230652 4 -33.550475568230652
		 8 -33.550475568230652 12 -33.550475568230652 16 -33.550475568230652 20 -33.550475568230652
		 24 -33.550475568230652 28 -52.99783374591145 42 -33.550475568230652 44 -33.550475568230652
		 48 -33.550475568230652 52 -33.550475568230652 56 -19.799847155607956 60 -22.000972938511488
		 64 -19.989332839253503 68 -33.550475568230652 72 -33.550475568230652 73 -26.453718358901575
		 77 -4.2985188145991993 82 15.490164175355998 87 -10.19401098143895 92 -33.550475568230652
		 96 -33.550475568230652;
createNode animCurveTA -n "nurbsCircle12_rotateZ";
	rename -uid "C8A46318-A54F-B1B9-8D0B-27ADB0A715CD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 -69.247021379742733 4 -69.247021379742733
		 8 -69.247021379742733 12 -69.247021379742733 16 -69.247021379742733 20 -69.247021379742733
		 24 -69.247021379742733 28 -96.805782067795079 42 -69.247021379742733 44 -69.247021379742733
		 48 -69.247021379742733 52 -69.247021379742733 56 -61.590981369671425 60 -75.165443515157705
		 64 -85.025916889734489 68 -69.247021379742733 72 -69.247021379742733 73 -86.024701280835998
		 77 -45.35160396145524 82 -79.522311132517373 87 -71.902413338870986 92 -69.247021379742733
		 96 -69.247021379742733;
createNode animCurveTU -n "nurbsCircle12_scaleX";
	rename -uid "9BF6800F-C241-4AFC-84E4-2D8755C41881";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  0 1 4 1 8 1 12 1 16 1 20 1 24 1 28 1 42 1
		 44 1 48 1 52 1 56 1 60 1 64 1 68 1 72 1 73 1 92 1 96 1;
createNode animCurveTU -n "nurbsCircle12_scaleY";
	rename -uid "1CB6E59B-984A-B1D1-6D6B-5F9E78A820FB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  0 1 4 1 8 1 12 1 16 1 20 1 24 1 28 1 42 1
		 44 1 48 1 52 1 56 1 60 1 64 1 68 1 72 1 73 1 92 1 96 1;
createNode animCurveTU -n "nurbsCircle12_scaleZ";
	rename -uid "E4A3B16D-FB49-E2DF-89DF-05B037AFF5CB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  0 1 4 1 8 1 12 1 16 1 20 1 24 1 28 1 42 1
		 44 1 48 1 52 1 56 1 60 1 64 1 68 1 72 1 73 1 92 1 96 1;
createNode animCurveTU -n "nurbsCircle12_Grip";
	rename -uid "FA16C845-2744-F3B5-EE4D-358FAF97E263";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 20 ".ktv[0:19]"  0 0.5 4 0.5 8 0.5 12 0.5 16 0.5 20 0.5 24 0.5
		 28 0.5 42 0.5 44 0.5 48 0.5 52 0.5 56 0.5 60 0.5 64 0.5 68 0.5 72 0.5 73 0.5 92 0.5
		 96 0.5;
createNode animCurveTL -n "nurbsCircle17_translateX";
	rename -uid "8390BB65-A141-6DFA-3671-43A47AC613E2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 4 -0.029556637829200566 8 -0.43278282231506987
		 12 0 20 0 24 0 28 -0.029556637829200566 32 -0.43278282231506987 36 0 44 0 48 0 52 -0.029556637829200566
		 56 -0.43278282231506987 60 0 68 0 72 0 73 0 92 0 96 0;
createNode animCurveTL -n "nurbsCircle17_translateY";
	rename -uid "3AEF9FF9-914D-3CC4-69C5-FA9479600CAF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  0 0 4 6.3549259234954336 8 -5.1433490388976839
		 12 0 16 8.3982944006652023 20 -5.5775041132007157 24 0 28 6.3549259234954336 32 -5.1433490388976839
		 36 0 40 8.3982944006652023 44 -5.5775041132007157 48 0 52 6.3549259234954336 56 -5.1433490388976839
		 60 0 64 8.3982944006652023 68 -5.5775041132007157 72 0 73 0 92 -5.5775041132007157
		 96 0;
createNode animCurveTL -n "nurbsCircle17_translateZ";
	rename -uid "271D6DC8-184F-2E6D-496C-0F8EF8840FD0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  0 0 4 -2.3271402059812849 8 1.8602145285552338
		 12 0 16 -3.056729180446669 20 2.0300454787023527 24 0 28 -2.3271402059812849 32 1.8602145285552338
		 36 0 40 -3.056729180446669 44 2.0300454787023527 48 0 52 -2.3271402059812849 56 1.8602145285552338
		 60 0 64 -3.056729180446669 68 2.0300454787023527 72 0 73 0 92 2.0300454787023527
		 96 0;
createNode animCurveTU -n "nurbsCircle17_visibility";
	rename -uid "082B538F-4042-266C-DD26-F4ADB592AB04";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 4 1 12 1 20 1 24 1 28 1 36 1 44 1 48 1
		 52 1 60 1 68 1 72 1 73 1 92 1 96 1;
	setAttr -s 16 ".kit[13:15]"  9 18 18;
	setAttr -s 16 ".kot[13:15]"  5 18 18;
createNode animCurveTA -n "nurbsCircle17_rotateX";
	rename -uid "5005B74B-1A4E-E1B7-CE3A-CE98DF3832DD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  0 0 4 3.7767391225884057 8 -4.3782106503695033
		 12 0 16 -1.4281535849929783 20 -0.76599880422884636 24 0 28 3.7767391225884057 32 -4.3782106503695033
		 36 0 40 -1.4281535849929783 44 -0.76599880422884636 48 0 52 3.7767391225884057 56 -4.3782106503695033
		 60 0 64 -1.4281535849929783 68 -0.76599880422884636 72 0 73 0 92 -0.76599880422884636
		 96 0;
createNode animCurveTA -n "nurbsCircle17_rotateY";
	rename -uid "787EB034-CB4A-BA67-7749-CA8AB8CAD8B9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  0 0 4 9.300771805039723 8 -5.1540468343280272
		 12 0 16 15.76318561188774 20 21.368726439075758 24 0 28 9.300771805039723 32 -5.1540468343280272
		 36 0 40 15.76318561188774 44 21.368726439075758 48 0 52 9.300771805039723 56 -5.1540468343280272
		 60 0 64 15.76318561188774 68 21.368726439075758 72 0 73 0 92 21.368726439075758 96 0;
createNode animCurveTA -n "nurbsCircle17_rotateZ";
	rename -uid "C06805F3-B345-E359-9842-579320164E40";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  0 0 4 17.964090299188374 8 -20.015668499001283
		 12 0 16 15.122667614231226 20 -9.0287852682341114 24 0 28 17.964090299188374 32 -20.015668499001283
		 36 0 40 15.122667614231226 44 -9.0287852682341114 48 0 52 17.964090299188374 56 -20.015668499001283
		 60 0 64 15.122667614231226 68 -9.0287852682341114 72 0 73 0 92 -9.0287852682341114
		 96 0;
createNode animCurveTU -n "nurbsCircle17_scaleX";
	rename -uid "8FFCB36B-CB48-B83B-B113-A6B891F082C7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 4 1 12 1 20 1 24 1 28 1 36 1 44 1 48 1
		 52 1 60 1 68 1 72 1 73 1 92 1 96 1;
createNode animCurveTU -n "nurbsCircle17_scaleY";
	rename -uid "09A2565E-F54C-7F07-9286-28935E1B6192";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 4 1 12 1 20 1 24 1 28 1 36 1 44 1 48 1
		 52 1 60 1 68 1 72 1 73 1 92 1 96 1;
createNode animCurveTU -n "nurbsCircle17_scaleZ";
	rename -uid "AFC1E49C-014A-24F0-80A0-378A0C391B14";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  0 1 4 1 12 1 20 1 24 1 28 1 36 1 44 1 48 1
		 52 1 60 1 68 1 72 1 73 1 92 1 96 1;
createNode animCurveTL -n "nurbsCircle11_translateX";
	rename -uid "0F346FC3-244F-47CA-FEF2-26A60CACA712";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  4 33.212897321414182 20 33.212897321414182
		 28 33.212897321414182 44 33.212897321414182 52 33.212897321414182 68 33.212897321414182
		 73 0 92 33.212897321414182;
createNode animCurveTL -n "nurbsCircle11_translateY";
	rename -uid "DD2F6748-FF4D-D5DD-80C9-2D9C8B7B9EF1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  4 62.168001406965182 20 62.168001406965182
		 28 62.168001406965182 44 62.168001406965182 52 62.168001406965182 68 62.168001406965182
		 73 0 92 62.168001406965182;
createNode animCurveTL -n "nurbsCircle11_translateZ";
	rename -uid "DC14E07B-E74E-BAA3-945F-1098360845CB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  4 1.869069147463529 20 1.869069147463529
		 28 1.869069147463529 44 1.869069147463529 52 1.869069147463529 68 1.869069147463529
		 73 0 92 1.869069147463529;
createNode animCurveTL -n "nurbsCircle13_translateX";
	rename -uid "80627CC2-4043-0A2C-2A79-1AB4B2BCE97F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  4 16.747365653085335 20 16.747365653085335
		 28 16.747365653085335 44 16.747365653085335 52 16.747365653085335 68 16.747365653085335
		 73 6.3325093299016455 92 16.747365653085335;
createNode animCurveTL -n "nurbsCircle13_translateY";
	rename -uid "E98ECB1A-F345-663B-76D4-C88EAE42AFB8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  4 140.81612095248383 20 140.81612095248383
		 28 140.81612095248383 44 140.81612095248383 52 140.81612095248383 68 140.81612095248383
		 73 78.83084395328703 92 140.81612095248383;
createNode animCurveTL -n "nurbsCircle13_translateZ";
	rename -uid "CD95B74D-CC45-E60B-65F3-6994A421EE25";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  4 40.942323583920661 20 40.942323583920661
		 28 40.942323583920661 44 40.942323583920661 52 40.942323583920661 68 40.942323583920661
		 73 64.458687232149629 92 40.942323583920661;
createNode animCurveTL -n "nurbsCircle16_translateX";
	rename -uid "91055DB6-AA4C-AAA2-2CD3-5596ED08A362";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 21.855013162128387 10 5.7751542767684043
		 24 21.855013162128387 30 -34.126573971008888 34 5.7751542767684043 48 21.855013162128387
		 49 21.404775622780466 60 66.185075347813708 72 21.855013162128387 73 0 96 21.855013162128387;
	setAttr -s 11 ".kit[0:10]"  1 18 1 18 18 1 18 18 
		1 18 18;
	setAttr -s 11 ".kot[0:10]"  1 18 1 18 18 1 18 18 
		1 18 18;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 0.013396061025559902 1 1 1 1 1 
		1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 0.99991029500961304 0 0 0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 0.013396059162914753 1 1 1 1 1 
		1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 0.99991023540496826 0 0 0 0 0 0;
createNode animCurveTL -n "nurbsCircle16_translateY";
	rename -uid "67B89009-9745-506E-A0D7-64B6A6095D76";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 4.5812324496693844 10 23.813756376710366
		 24 4.5812324496693844 30 26.176982141048967 34 23.813756376710366 48 4.5812324496693844
		 49 4.0481242351793973 60 20.133386722894169 72 4.5812324496693844 73 0 96 4.5812324496693844;
	setAttr -s 11 ".kit[0:10]"  1 18 1 18 18 1 18 18 
		1 18 18;
	setAttr -s 11 ".kot[0:10]"  1 18 1 18 18 1 18 18 
		1 18 18;
	setAttr -s 11 ".kix[0:10]"  0.031478792428970337 1 0.031478792428970337 
		1 0.034708131104707718 0.031478792428970337 1 1 0.031478792428970337 1 1;
	setAttr -s 11 ".kiy[0:10]"  -0.99950438737869263 0 -0.99950438737869263 
		0 -0.99939745664596558 -0.99950438737869263 0 0 -0.99950438737869263 0 0;
	setAttr -s 11 ".kox[0:10]"  0.031478792428970337 1 0.031478792428970337 
		1 0.034708131104707718 0.031478792428970337 1 1 0.031478792428970337 1 1;
	setAttr -s 11 ".koy[0:10]"  -0.99950438737869263 0 -0.99950438737869263 
		0 -0.99939751625061035 -0.99950438737869263 0 0 -0.99950438737869263 0 0;
createNode animCurveTL -n "nurbsCircle16_translateZ";
	rename -uid "D6ABB4BB-5E49-CE14-BB34-8895A33D679D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 11 ".ktv[0:10]"  0 -15.748286018070139 10 -3.7745973559472974
		 24 -15.748286018070139 30 2.0888622449414012 34 -3.7745973559472974 48 -15.748286018070139
		 49 -15.413021625603328 60 13.255597525456791 72 -15.748286018070139 73 0 96 -15.748286018070139;
	setAttr -s 11 ".kit[0:10]"  1 18 1 18 18 1 18 18 
		1 18 18;
	setAttr -s 11 ".kot[0:10]"  1 18 1 18 18 1 18 18 
		1 18 18;
	setAttr -s 11 ".kix[0:10]"  1 1 1 1 0.042009960860013962 1 0.041391249746084213 
		1 1 1 1;
	setAttr -s 11 ".kiy[0:10]"  0 0 0 0 -0.99911719560623169 0 0.99914300441741943 
		0 0 0 0;
	setAttr -s 11 ".kox[0:10]"  1 1 1 1 0.042009960860013962 1 0.041391253471374512 
		1 1 1 1;
	setAttr -s 11 ".koy[0:10]"  0 0 0 0 -0.99911719560623169 0 0.99914306402206421 
		0 0 0 0;
createNode animCurveTL -n "nurbsCircle3_translateX";
	rename -uid "D2FC3308-6147-DB06-42A7-198421F01216";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -5.0011171668449945 21 9.7719840410105103
		 24 -5.0011171668449945 45 9.7719840410105103 48 -5.0011171668449945 69 9.7719840410105103
		 72 -5.0011171668449945 73 0 93 9.7719840410105103 96 -5.0011171668449945;
	setAttr -s 10 ".kit[0:9]"  1 18 1 18 1 18 1 18 
		18 18;
	setAttr -s 10 ".kot[0:9]"  1 18 1 18 1 18 1 18 
		18 18;
	setAttr -s 10 ".kix[0:9]"  1 1 1 1 1 1 1 0.059125654399394989 1 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 0.99825054407119751 0 0;
	setAttr -s 10 ".kox[0:9]"  1 1 1 1 1 1 1 0.059125650674104691 1 1;
	setAttr -s 10 ".koy[0:9]"  0 0 0 0 0 0 0 0.99825054407119751 0 0;
createNode animCurveTL -n "nurbsCircle3_translateY";
	rename -uid "5AE1D085-EB42-0408-7D86-07B8570D65AF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -0.55767488750934602 21 1.4158494799764301
		 24 -0.55767488750934602 45 1.4158494799764301 48 -0.55767488750934602 69 1.4158494799764301
		 72 -0.55767488750934602 73 0 93 1.4158494799764301 96 -0.55767488750934602;
	setAttr -s 10 ".kit[0:9]"  1 18 1 18 1 18 1 18 
		18 18;
	setAttr -s 10 ".kot[0:9]"  1 18 1 18 1 18 1 18 
		18 18;
	setAttr -s 10 ".kix[0:9]"  1 1 1 1 1 1 1 0.40531748533248901 1 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 0.91417598724365234 0 0;
	setAttr -s 10 ".kox[0:9]"  1 1 1 1 1 1 1 0.40531748533248901 1 1;
	setAttr -s 10 ".koy[0:9]"  0 0 0 0 0 0 0 0.91417598724365234 0 0;
createNode animCurveTL -n "nurbsCircle3_translateZ";
	rename -uid "094281EB-B741-1D5A-AA19-BBBF8E4727D8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 10 ".ktv[0:9]"  0 -1.700546261252744 21 -0.66417739813417009
		 24 -1.700546261252744 45 -0.66417739813417009 48 -1.700546261252744 69 -0.66417739813417009
		 72 -1.700546261252744 73 0 93 -0.66417739813417009 96 -1.700546261252744;
	setAttr -s 10 ".kit[0:9]"  1 18 1 18 1 18 1 18 
		18 18;
	setAttr -s 10 ".kot[0:9]"  1 18 1 18 1 18 1 18 
		18 18;
	setAttr -s 10 ".kix[0:9]"  1 1 1 1 1 1 1 1 0.4909522533416748 1;
	setAttr -s 10 ".kiy[0:9]"  0 0 0 0 0 0 0 0 -0.87118649482727051 0;
	setAttr -s 10 ".kox[0:9]"  1 1 1 1 1 1 1 1 0.49095228314399719 1;
	setAttr -s 10 ".koy[0:9]"  0 0 0 0 0 0 0 0 -0.87118655443191528 0;
createNode animCurveTL -n "nurbsCircle7_translateX";
	rename -uid "66D0A5F1-9741-0F82-AC24-0C9ABBB48239";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  4 0 20 0 28 0 30 0 42 0 44 0 52 0 58 0 68 0
		 73 0 92 0 96 0;
createNode animCurveTL -n "nurbsCircle7_translateY";
	rename -uid "8FC39720-AA44-9051-810E-F784F401F0C5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  4 0 20 0 28 0 30 0 42 0 44 0 52 0 58 0 68 0
		 73 0 92 0 96 0;
createNode animCurveTL -n "nurbsCircle7_translateZ";
	rename -uid "4E512BBD-B440-AA4D-6A98-37AAA43D6174";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  4 0 20 0 28 0 30 0 42 0 44 0 52 0 58 0 68 0
		 73 0 92 0 96 0;
createNode animCurveTL -n "nurbsCircle8_translateX";
	rename -uid "0623CA20-4F4F-AA59-1DFA-2C846545B2FA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  4 0 20 0 28 0 44 0 52 0 68 0 73 0 92 0;
createNode animCurveTL -n "nurbsCircle8_translateY";
	rename -uid "3FD586C3-114E-660D-C9D3-F3A02D5C7ECD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  4 0 20 0 28 0 44 0 52 0 68 0 73 0 92 0;
createNode animCurveTL -n "nurbsCircle8_translateZ";
	rename -uid "E8D7B981-4F4D-B115-1FF8-C4A812698158";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  4 0 20 0 28 0 44 0 52 0 68 0 73 0 92 0;
createNode animCurveTL -n "nurbsCircle9_translateX";
	rename -uid "F7B0473F-4E42-FF52-2995-7893EA21418F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  4 0 20 0 28 0 44 0 52 0 68 0 73 0 92 0;
createNode animCurveTL -n "nurbsCircle9_translateY";
	rename -uid "1B958BBE-5646-9BC1-C205-B380DEC84CFC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  4 0 20 0 28 0 44 0 52 0 68 0 73 0 92 0;
createNode animCurveTL -n "nurbsCircle9_translateZ";
	rename -uid "9E2177BD-CD40-CFA5-2B1D-F5B1ECB0233F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  4 0 20 0 28 0 44 0 52 0 68 0 73 0 92 0;
createNode animCurveTU -n "nurbsCircle3_visibility";
	rename -uid "B5891D5D-2A42-2DA2-E0A9-00AEDA4E6361";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1 24 1 48 1 72 1 73 1 96 1;
	setAttr -s 6 ".kit[0:5]"  1 1 1 1 9 9;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "nurbsCircle3_rotateX";
	rename -uid "60EAB20A-4446-3FDD-9E29-61B6EF6BC79F";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 24 0 48 0 72 0 73 0 96 0;
	setAttr -s 6 ".kit[4:5]"  18 18;
	setAttr -s 6 ".kot[4:5]"  18 18;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "nurbsCircle3_rotateY";
	rename -uid "9776BA77-5642-729E-F109-B5A1F816967C";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 24 0 48 0 72 0 73 0 96 0;
	setAttr -s 6 ".kit[4:5]"  18 18;
	setAttr -s 6 ".kot[4:5]"  18 18;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTA -n "nurbsCircle3_rotateZ";
	rename -uid "D619DCE3-3E42-1A1D-3BC8-5DA03B702AEF";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 24 0 48 0 72 0 73 0 96 0;
	setAttr -s 6 ".kit[4:5]"  18 18;
	setAttr -s 6 ".kot[4:5]"  18 18;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle3_scaleX";
	rename -uid "FD6CED84-E743-2D82-FF36-5891B3D5514A";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1 24 1 48 1 72 1 73 1 96 1;
	setAttr -s 6 ".kit[4:5]"  18 18;
	setAttr -s 6 ".kot[4:5]"  18 18;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle3_scaleY";
	rename -uid "5D3E4F37-B54F-CB42-5AC5-46AEB0A95EE0";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1 24 1 48 1 72 1 73 1 96 1;
	setAttr -s 6 ".kit[4:5]"  18 18;
	setAttr -s 6 ".kot[4:5]"  18 18;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle3_scaleZ";
	rename -uid "FBE66739-C041-A1F9-DD16-A2BE08550B88";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1 24 1 48 1 72 1 73 1 96 1;
	setAttr -s 6 ".kit[4:5]"  18 18;
	setAttr -s 6 ".kot[4:5]"  18 18;
	setAttr -s 6 ".kix[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 0 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 1 1 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle9_visibility";
	rename -uid "47B55B45-1840-017B-455B-3583CB32C130";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  4 1 20 1 28 1 44 1 52 1 68 1 73 1 92 1;
	setAttr -s 8 ".kit[6:7]"  9 18;
	setAttr -s 8 ".kot[6:7]"  5 18;
createNode animCurveTA -n "nurbsCircle9_rotateX";
	rename -uid "E3C8D612-E545-5701-CFAC-34AC474FA5A4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  4 0 20 0 28 0 44 0 52 0 68 0 73 0 92 0;
createNode animCurveTA -n "nurbsCircle9_rotateY";
	rename -uid "BAA925CE-584F-D0BB-3F52-7CBBE538BA5C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  4 0 20 0 28 0 44 0 52 0 68 0 73 0 92 0;
createNode animCurveTA -n "nurbsCircle9_rotateZ";
	rename -uid "DBAAFD5B-404B-B934-372C-40A532B71A40";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  4 0 20 0 28 0 44 0 52 0 68 0 73 0 92 0;
createNode animCurveTU -n "nurbsCircle9_scaleX";
	rename -uid "22F4DB62-5846-A80B-58AB-2D8326D3672C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  4 1 20 1 28 1 44 1 52 1 68 1 73 1 92 1;
createNode animCurveTU -n "nurbsCircle9_scaleY";
	rename -uid "B0858C02-054D-FA65-FAEB-639484F9D33E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  4 1 20 1 28 1 44 1 52 1 68 1 73 1 92 1;
createNode animCurveTU -n "nurbsCircle9_scaleZ";
	rename -uid "CE84CDB2-7540-9241-707F-D6B3A22F0801";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  4 1 20 1 28 1 44 1 52 1 68 1 73 1 92 1;
createNode animCurveTU -n "nurbsCircle8_visibility";
	rename -uid "E6AC1D67-D04C-B19B-EDBA-1EA75BC9FE97";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  4 1 20 1 28 1 44 1 52 1 68 1 73 1 92 1;
	setAttr -s 8 ".kit[6:7]"  9 18;
	setAttr -s 8 ".kot[6:7]"  5 18;
createNode animCurveTA -n "nurbsCircle8_rotateX";
	rename -uid "4CDAFAE4-7242-099E-E3A6-C2810DFF65FE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  4 0 20 0 28 0 44 0 52 0 68 0 73 0 92 0;
createNode animCurveTA -n "nurbsCircle8_rotateY";
	rename -uid "0D3D9AD3-384C-AB58-E24E-96A9B648D074";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  4 0 20 0 28 0 44 0 52 0 68 0 73 0 92 0;
createNode animCurveTA -n "nurbsCircle8_rotateZ";
	rename -uid "48033B11-404C-DA53-2899-F2AB4CDE20FD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  4 0 20 0 28 0 44 0 52 0 68 0 73 0 92 0;
createNode animCurveTU -n "nurbsCircle8_scaleX";
	rename -uid "EA2A8C66-FF4D-918D-4EED-0C9D8741CEBA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  4 1 20 1 28 1 44 1 52 1 68 1 73 1 92 1;
createNode animCurveTU -n "nurbsCircle8_scaleY";
	rename -uid "B62F35DA-724D-0845-BA2E-0C8C8E53348C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  4 1 20 1 28 1 44 1 52 1 68 1 73 1 92 1;
createNode animCurveTU -n "nurbsCircle8_scaleZ";
	rename -uid "087A4833-F448-033F-9155-36A66C2DF2BC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  4 1 20 1 28 1 44 1 52 1 68 1 73 1 92 1;
createNode animCurveTU -n "nurbsCircle7_visibility";
	rename -uid "DF83314B-3F41-DDAD-719B-DBA116EAC213";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  4 1 20 1 28 1 30 1 42 1 44 1 52 1 58 1 68 1
		 73 1 92 1 96 1;
	setAttr -s 12 ".kit[3:11]"  9 9 18 18 9 18 9 18 
		9;
	setAttr -s 12 ".kot[3:11]"  5 5 18 18 5 18 5 18 
		5;
createNode animCurveTA -n "nurbsCircle7_rotateX";
	rename -uid "C6AF0AE9-0A46-2797-EB47-4BB8A854B4AE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  4 -11.672941501307509 20 -11.672941501307509
		 28 -25.424005056944722 30 -24.833138641378131 42 -12.191456982720963 44 -11.672941501307509
		 52 -16.027388520179503 58 -15.025361615570901 68 -26.161152812416731 73 0 77 -8.281894460280057
		 82 -16.400536090029487 87 -35.171698476787981 92 -38.784367588814249 96 -38.784367588814249;
createNode animCurveTA -n "nurbsCircle7_rotateY";
	rename -uid "FC1C9C0F-9A43-F3DE-2369-2CA200AD5FF0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  4 0 20 0 28 -26.597728224271854 30 -25.454856309346606
		 42 -1.0029284789799084 44 0 52 44.922116586652166 58 20.546117256226452 68 -3.8864614446016112
		 73 15.517599181002474 77 60.45605355852453 82 50.636091622225443 87 -18.791511342787246
		 92 -2.4642472597520659 96 -2.4642472597520659;
createNode animCurveTA -n "nurbsCircle7_rotateZ";
	rename -uid "05D89C25-3F4D-BCC1-A387-D29881599751";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  4 0 20 0 28 0.43816777009574648 30 0.41934023587006508
		 42 0.016522123200298635 44 0 52 -18.143626348465574 58 16.115499794689111 68 -11.412209441889278
		 73 0 77 -17.942869131618782 82 -11.505793417601208 87 17.031772912781015 92 -11.594202890605283
		 96 -11.594202890605283;
createNode animCurveTU -n "nurbsCircle7_scaleX";
	rename -uid "0ABC5FAB-8B4E-2175-3CCD-959854916029";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  4 1 20 1 28 1 30 1 42 1 44 1 52 1 58 1 68 1
		 73 1 92 1 96 1;
createNode animCurveTU -n "nurbsCircle7_scaleY";
	rename -uid "8A4C4CF2-674F-A0AA-E00B-6EA676C78442";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  4 1 20 1 28 1 30 1 42 1 44 1 52 1 58 1 68 1
		 73 1 92 1 96 1;
createNode animCurveTU -n "nurbsCircle7_scaleZ";
	rename -uid "FA988BFF-2E43-76D8-7A0A-D6B2B3D01A92";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 12 ".ktv[0:11]"  4 1 20 1 28 1 30 1 42 1 44 1 52 1 58 1 68 1
		 73 1 92 1 96 1;
createNode animCurveTU -n "nurbsCircle11_visibility";
	rename -uid "046C96E8-DE41-EB62-FB0D-AD9B3A555CCE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  4 1 20 1 28 1 44 1 52 1 68 1 73 1 92 1;
	setAttr -s 8 ".kit[6:7]"  9 18;
	setAttr -s 8 ".kot[6:7]"  5 18;
createNode animCurveTA -n "nurbsCircle11_rotateX";
	rename -uid "ED80CFE6-5C45-D871-8D6A-70B7345F5507";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  4 0 20 0 28 0 44 0 52 0 68 0 73 0 92 0;
createNode animCurveTA -n "nurbsCircle11_rotateY";
	rename -uid "B8D32880-B44E-90C3-0EC4-7FADE38BA839";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  4 0 20 0 28 0 44 0 52 0 68 0 73 0 92 0;
createNode animCurveTA -n "nurbsCircle11_rotateZ";
	rename -uid "2CD426B8-2E4C-6592-4D4E-4FA295E941F1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  4 0 20 0 28 0 44 0 52 0 68 0 73 0 92 0;
createNode animCurveTU -n "nurbsCircle11_scaleX";
	rename -uid "2F06A04E-4448-B358-4719-E39BF8C22E95";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  4 1 20 1 28 1 44 1 52 1 68 1 73 1 92 1;
createNode animCurveTU -n "nurbsCircle11_scaleY";
	rename -uid "F1BA77C1-7E46-9F0C-8A6E-3B8935F71AF0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  4 1 20 1 28 1 44 1 52 1 68 1 73 1 92 1;
createNode animCurveTU -n "nurbsCircle11_scaleZ";
	rename -uid "14D2B1FD-ED4A-E165-A6D2-0B921050C896";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  4 1 20 1 28 1 44 1 52 1 68 1 73 1 92 1;
createNode animCurveTU -n "nurbsCircle13_visibility";
	rename -uid "D61E84F8-3349-B462-473C-D5A17A1F97CE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  4 1 20 1 28 1 44 1 52 1 68 1 73 1 92 1;
	setAttr -s 8 ".kit[6:7]"  9 18;
	setAttr -s 8 ".kot[6:7]"  5 18;
createNode animCurveTA -n "nurbsCircle13_rotateX";
	rename -uid "D8864FCD-1749-A757-1DB9-ECAC28080842";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  4 0 20 0 28 0 44 0 52 0 68 0 73 0 92 0;
createNode animCurveTA -n "nurbsCircle13_rotateY";
	rename -uid "4B6424FA-5E4D-B2F3-E476-1BB5B1B1390B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  4 0 20 0 28 0 44 0 52 0 68 0 73 0 92 0;
createNode animCurveTA -n "nurbsCircle13_rotateZ";
	rename -uid "E5D4729A-A94F-26BF-BC6D-F6A1E22AAD13";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  4 0 20 0 28 0 44 0 52 0 68 0 73 0 92 0;
createNode animCurveTU -n "nurbsCircle13_scaleX";
	rename -uid "72E73C38-E844-0B51-3238-139332E711F7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  4 1 20 1 28 1 44 1 52 1 68 1 73 1 92 1;
createNode animCurveTU -n "nurbsCircle13_scaleY";
	rename -uid "0FD0B25C-8E4E-1CB7-214B-4AAB8201A634";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  4 1 20 1 28 1 44 1 52 1 68 1 73 1 92 1;
createNode animCurveTU -n "nurbsCircle13_scaleZ";
	rename -uid "7C780273-5946-1111-904C-F894631347D2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  4 1 20 1 28 1 44 1 52 1 68 1 73 1 92 1;
createNode animCurveTU -n "nurbsCircle16_visibility";
	rename -uid "2123BA5C-D44B-04EF-B836-209B07FEF44C";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1 24 1 48 1 49 1 72 1 73 1 96 1;
	setAttr -s 7 ".kit[0:6]"  1 1 1 9 1 9 9;
	setAttr -s 7 ".kix[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "nurbsCircle16_rotateX";
	rename -uid "5F5ACEA7-7B41-D893-A408-2EB136A70D57";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 24 0 48 0 49 0 72 0 73 0 96 0;
	setAttr -s 7 ".kit[3:6]"  18 1 18 18;
	setAttr -s 7 ".kot[3:6]"  18 1 18 18;
	setAttr -s 7 ".kix[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 0 0 0 0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "nurbsCircle16_rotateY";
	rename -uid "9CCBDD8B-1E4D-C4F0-52FE-189EC882BD9D";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 24 0 48 0 49 0 72 0 73 0 96 0;
	setAttr -s 7 ".kit[3:6]"  18 1 18 18;
	setAttr -s 7 ".kot[3:6]"  18 1 18 18;
	setAttr -s 7 ".kix[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 0 0 0 0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "nurbsCircle16_rotateZ";
	rename -uid "E0D1AD54-634D-CB77-157F-02A87E8CF4F9";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 24 0 48 0 49 0 72 0 73 0 96 0;
	setAttr -s 7 ".kit[3:6]"  18 1 18 18;
	setAttr -s 7 ".kot[3:6]"  18 1 18 18;
	setAttr -s 7 ".kix[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 0 0 0 0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle16_scaleX";
	rename -uid "74A8B757-0345-A66E-D1F9-3BAFA51A9BF5";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1 24 1 48 1 49 1 72 1 73 1 96 1;
	setAttr -s 7 ".kit[3:6]"  18 1 18 18;
	setAttr -s 7 ".kot[3:6]"  18 1 18 18;
	setAttr -s 7 ".kix[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 0 0 0 0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle16_scaleY";
	rename -uid "92826AAE-624D-5652-297C-C998B3B76B02";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1 24 1 48 1 49 1 72 1 73 1 96 1;
	setAttr -s 7 ".kit[3:6]"  18 1 18 18;
	setAttr -s 7 ".kot[3:6]"  18 1 18 18;
	setAttr -s 7 ".kix[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 0 0 0 0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTU -n "nurbsCircle16_scaleZ";
	rename -uid "5384AB05-1549-F593-0A4C-AA8287DBBC65";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1 24 1 48 1 49 1 72 1 73 1 96 1;
	setAttr -s 7 ".kit[3:6]"  18 1 18 18;
	setAttr -s 7 ".kot[3:6]"  18 1 18 18;
	setAttr -s 7 ".kix[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 0 0 0 0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "RootMotion_Control_rotateY";
	rename -uid "BB2E8BE7-EE44-559B-2601-35AD34E682DB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  24 0 30 0 38 -66.666676203409253 42 -90
		 48 -90 49 0 54 0 62 66.66664759317807 66 90 72 90 73 0 78 0 90 180 96 180;
	setAttr -s 14 ".kit[4:13]"  2 2 18 18 18 1 18 18 
		1 18;
	setAttr -s 14 ".kot[4:13]"  2 2 18 18 18 1 18 18 
		1 18;
	setAttr -s 14 ".kix[9:13]"  1 1 1 1 1;
	setAttr -s 14 ".kiy[9:13]"  0 0 0 0 0;
	setAttr -s 14 ".kox[9:13]"  1 1 1 1 1;
	setAttr -s 14 ".koy[9:13]"  0 0 0 0 0;
createNode animCurveTL -n "RootMotion_Control_translateX";
	rename -uid "9BBBF0A2-F740-78DE-DB68-8B92BAE630DC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  24 0 30 0 38 -23.907535823664109 42 -59.322101666872797
		 48 -161.43539023732973 49 0 54 0 62 4.676461291655988 66 27.910711436213191 72 129.921702652992
		 73 0 78 0 90 0 96 0;
	setAttr -s 14 ".kit[4:13]"  2 2 18 18 18 1 18 18 
		1 18;
	setAttr -s 14 ".kot[4:13]"  2 2 18 18 18 1 18 18 
		1 18;
	setAttr -s 14 ".kix[9:13]"  1 1 1 1 1;
	setAttr -s 14 ".kiy[9:13]"  0 0 0 0 0;
	setAttr -s 14 ".kox[9:13]"  1 1 1 1 1;
	setAttr -s 14 ".koy[9:13]"  0 0 0 0 0;
createNode animCurveTL -n "RootMotion_Control_translateY";
	rename -uid "996A6B9A-B043-70FA-0ED9-E1B5EAEA9742";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  24 0 30 0 38 0 42 0 48 0 49 0 54 0 62 0
		 66 0 72 0 73 0 78 0 90 0 96 0;
	setAttr -s 14 ".kit[4:13]"  2 2 18 18 18 1 18 18 
		1 18;
	setAttr -s 14 ".kot[4:13]"  2 2 18 18 18 1 18 18 
		1 18;
	setAttr -s 14 ".kix[9:13]"  1 1 1 1 1;
	setAttr -s 14 ".kiy[9:13]"  0 0 0 0 0;
	setAttr -s 14 ".kox[9:13]"  1 1 1 1 1;
	setAttr -s 14 ".koy[9:13]"  0 0 0 0 0;
createNode animCurveTL -n "RootMotion_Control_translateZ";
	rename -uid "A77ABA72-6B4E-B95B-8647-B28D533DA54B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  24 7.0033098473476265 30 47.614995723953299
		 38 47.614995723953299 42 47.614995723953299 48 47.614995723953299 49 7.0033098473476265
		 54 42.582724754854155 62 53.466660104659574 66 55.95642994589609 72 65.091768018912262
		 73 0 78 0 90 -30.053963431030656 96 -123.34597643082907;
	setAttr -s 14 ".kit[4:13]"  2 2 18 18 18 2 18 18 
		1 2;
	setAttr -s 14 ".kot[4:13]"  2 2 18 18 18 2 18 18 
		1 2;
	setAttr -s 14 ".kix[12:13]"  0.0060803457163274288 0.0026797479949891567;
	setAttr -s 14 ".kiy[12:13]"  -0.99998152256011963 -0.99999642372131348;
	setAttr -s 14 ".kox[12:13]"  0.0060803452506661415 1;
	setAttr -s 14 ".koy[12:13]"  -0.99998146295547485 0;
createNode animCurveTU -n "RootMotion_Control_visibility";
	rename -uid "F99FB87B-CA4D-1087-2D68-35B3C8B7652E";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  24 1 30 1 38 1 42 1 48 1 49 1 54 1 62 1
		 66 1 72 1 73 1 78 1 90 1 96 1;
	setAttr -s 14 ".kit[0:13]"  9 9 9 9 9 1 9 9 
		9 1 9 9 1 9;
	setAttr -s 14 ".kix[5:13]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 14 ".kiy[5:13]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RootMotion_Control_rotateX";
	rename -uid "36C03521-234F-2296-E6DF-E1A8EAABEB6A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  24 0 30 0 38 0 42 0 48 0 49 0 54 0 62 0
		 66 0 72 0 73 0 78 0 90 0 96 0;
	setAttr -s 14 ".kit[4:13]"  2 2 18 18 18 1 18 18 
		1 18;
	setAttr -s 14 ".kot[4:13]"  2 2 18 18 18 1 18 18 
		1 18;
	setAttr -s 14 ".kix[9:13]"  1 1 1 1 1;
	setAttr -s 14 ".kiy[9:13]"  0 0 0 0 0;
	setAttr -s 14 ".kox[9:13]"  1 1 1 1 1;
	setAttr -s 14 ".koy[9:13]"  0 0 0 0 0;
createNode animCurveTA -n "RootMotion_Control_rotateZ";
	rename -uid "9E3D7930-2349-557F-B84F-5F9DC5855E0C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  24 0 30 0 38 0 42 0 48 0 49 0 54 0 62 0
		 66 0 72 0 73 0 78 0 90 0 96 0;
	setAttr -s 14 ".kit[4:13]"  2 2 18 18 18 1 18 18 
		1 18;
	setAttr -s 14 ".kot[4:13]"  2 2 18 18 18 1 18 18 
		1 18;
	setAttr -s 14 ".kix[9:13]"  1 1 1 1 1;
	setAttr -s 14 ".kiy[9:13]"  0 0 0 0 0;
	setAttr -s 14 ".kox[9:13]"  1 1 1 1 1;
	setAttr -s 14 ".koy[9:13]"  0 0 0 0 0;
createNode animCurveTU -n "RootMotion_Control_scaleX";
	rename -uid "AF9A2999-074D-D41A-3687-35B7FE60B6C9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  24 1 30 1 38 1 42 1 48 1 49 1 54 1 62 1
		 66 1 72 1 73 1 78 1 90 1 96 1;
	setAttr -s 14 ".kit[5:13]"  1 18 18 18 1 18 18 1 
		18;
	setAttr -s 14 ".kot[5:13]"  1 18 18 18 1 18 18 1 
		18;
	setAttr -s 14 ".kix[5:13]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 14 ".kiy[5:13]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 14 ".kox[5:13]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 14 ".koy[5:13]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RootMotion_Control_scaleY";
	rename -uid "53BB8D5A-B24B-86C8-BA07-C9BB62C135F5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  24 1 30 1 38 1 42 1 48 1 49 1 54 1 62 1
		 66 1 72 1 73 1 78 1 90 1 96 1;
	setAttr -s 14 ".kit[5:13]"  1 18 18 18 1 18 18 1 
		18;
	setAttr -s 14 ".kot[5:13]"  1 18 18 18 1 18 18 1 
		18;
	setAttr -s 14 ".kix[5:13]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 14 ".kiy[5:13]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 14 ".kox[5:13]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 14 ".koy[5:13]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RootMotion_Control_scaleZ";
	rename -uid "261C7D88-A643-FBD8-E9E4-2C8C4D0318BE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  24 1 30 1 38 1 42 1 48 1 49 1 54 1 62 1
		 66 1 72 1 73 1 78 1 90 1 96 1;
	setAttr -s 14 ".kit[5:13]"  1 18 18 18 1 18 18 1 
		18;
	setAttr -s 14 ".kot[5:13]"  1 18 18 18 1 18 18 1 
		18;
	setAttr -s 14 ".kix[5:13]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 14 ".kiy[5:13]"  0 0 0 0 0 0 0 0 0;
	setAttr -s 14 ".kox[5:13]"  1 1 1 1 1 1 1 1 1;
	setAttr -s 14 ".koy[5:13]"  0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "arrow_translateX";
	rename -uid "336F8FB9-F740-46FB-51D0-C39FBE3BB77F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  73 0;
createNode animCurveTL -n "arrow_translateY";
	rename -uid "7E620A23-E745-6B99-76C3-C3933E0CE140";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  73 0;
createNode animCurveTL -n "arrow_translateZ";
	rename -uid "45F8A15A-9C42-5010-E2E9-4CB27CDA0E05";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  73 0;
createNode animCurveTL -n "arrow1_translateX";
	rename -uid "E00974D9-924B-E9B6-38A7-AA8A3F32558C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  73 0;
createNode animCurveTL -n "arrow1_translateY";
	rename -uid "7C108D4A-334F-E416-AECB-12975FD0C160";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  73 0;
createNode animCurveTL -n "arrow1_translateZ";
	rename -uid "86833A94-674A-CEDB-387C-848C5EB6E941";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  73 0;
createNode animCurveTL -n "nurbsCircle18_translateX";
	rename -uid "5CFC047D-9347-2535-F96F-A5B47632179C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  73 0;
createNode animCurveTL -n "nurbsCircle18_translateY";
	rename -uid "76FFC949-2241-CF03-CC36-F78A3C7C2F86";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  73 0;
createNode animCurveTL -n "nurbsCircle18_translateZ";
	rename -uid "E81763C1-DB4E-A162-BD3E-F2B3697486F8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  73 0;
createNode animCurveTU -n "arrow_visibility";
	rename -uid "E618F499-9240-B7D8-6914-358DA99AFF30";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  73 1;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "arrow_rotateX";
	rename -uid "759A3DA0-F043-2CD9-9736-4CAB5346A2A1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  73 0;
createNode animCurveTA -n "arrow_rotateY";
	rename -uid "E5DF7A21-A74A-412A-79DB-F79B22B59366";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  73 0;
createNode animCurveTA -n "arrow_rotateZ";
	rename -uid "8EFCD693-B542-CF86-93EF-7C88DFCE7B68";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  73 0;
createNode animCurveTU -n "arrow_scaleX";
	rename -uid "65B2FBDD-BB4B-18A5-F223-C88700BA0A17";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  73 0.99999999999999989;
createNode animCurveTU -n "arrow_scaleY";
	rename -uid "5D56AE04-7349-8F2E-F385-3DB9B71ABB24";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  73 1;
createNode animCurveTU -n "arrow_scaleZ";
	rename -uid "3E09B6B0-8B4A-D842-F27F-C3B1E617FDA0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  73 0.99999999999999989;
createNode animCurveTU -n "arrow1_visibility";
	rename -uid "C0DFBF38-C842-92EA-9B80-2484A574EC92";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  73 1;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "arrow1_rotateX";
	rename -uid "0C074C83-0D41-A8F1-4AE9-EB8C146326B9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  73 0;
createNode animCurveTA -n "arrow1_rotateY";
	rename -uid "9772AF2B-F248-B57D-0255-0AAB0D8F63DB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  73 0;
createNode animCurveTA -n "arrow1_rotateZ";
	rename -uid "F4B07898-604B-2A01-C6D6-63857ECA261B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  73 0;
createNode animCurveTU -n "arrow1_scaleX";
	rename -uid "62827697-6842-990B-5B1B-9988BDFAE521";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  73 0.99999999999999989;
createNode animCurveTU -n "arrow1_scaleY";
	rename -uid "4AC43961-3F47-9A93-9C18-229954A25587";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  73 1;
createNode animCurveTU -n "arrow1_scaleZ";
	rename -uid "07734906-6241-D4C2-00E5-DFB51ACF9BED";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  73 0.99999999999999989;
createNode animCurveTU -n "nurbsCircle18_visibility";
	rename -uid "13371D54-B144-A190-EABE-24BCEFC6FB11";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  73 1;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "nurbsCircle18_rotateX";
	rename -uid "B04246DA-B343-5CCB-241D-F69741A57DF7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  73 0;
createNode animCurveTA -n "nurbsCircle18_rotateY";
	rename -uid "2EE3FC68-D040-759D-BF99-3082C02309FB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  73 0;
createNode animCurveTA -n "nurbsCircle18_rotateZ";
	rename -uid "050047B4-E246-694F-52E7-FC80A43838AD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  73 0;
createNode animCurveTU -n "nurbsCircle18_scaleX";
	rename -uid "4CCEB8BE-EA4B-828B-D803-26AA586CA60A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  73 1;
createNode animCurveTU -n "nurbsCircle18_scaleY";
	rename -uid "15119B22-6A4B-96F1-827F-2A8E6390BBD7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  73 1;
createNode animCurveTU -n "nurbsCircle18_scaleZ";
	rename -uid "6FD9764B-E241-FCC7-8D43-5CB151CA3CB9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  73 1;
select -ne :time1;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".o" 89;
	setAttr -av ".unw" 89;
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
	setAttr -s 7 ".u";
select -ne :defaultRenderingList1;
	setAttr -s 4 ".r";
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
connectAttr "arrow1_visibility.o" "SoldierRN.phl[12]";
connectAttr "nurbsCircle14_rotateX.o" "SoldierRN.phl[13]";
connectAttr "nurbsCircle14_rotateY.o" "SoldierRN.phl[14]";
connectAttr "nurbsCircle14_rotateZ.o" "SoldierRN.phl[15]";
connectAttr "nurbsCircle14_visibility.o" "SoldierRN.phl[16]";
connectAttr "nurbsCircle14_translateX.o" "SoldierRN.phl[17]";
connectAttr "nurbsCircle14_translateY.o" "SoldierRN.phl[18]";
connectAttr "nurbsCircle14_translateZ.o" "SoldierRN.phl[19]";
connectAttr "nurbsCircle14_scaleX.o" "SoldierRN.phl[20]";
connectAttr "nurbsCircle14_scaleY.o" "SoldierRN.phl[21]";
connectAttr "nurbsCircle14_scaleZ.o" "SoldierRN.phl[22]";
connectAttr "nurbsCircle15_rotateX.o" "SoldierRN.phl[23]";
connectAttr "nurbsCircle15_rotateY.o" "SoldierRN.phl[24]";
connectAttr "nurbsCircle15_rotateZ.o" "SoldierRN.phl[25]";
connectAttr "nurbsCircle15_visibility.o" "SoldierRN.phl[26]";
connectAttr "nurbsCircle15_translateX.o" "SoldierRN.phl[27]";
connectAttr "nurbsCircle15_translateY.o" "SoldierRN.phl[28]";
connectAttr "nurbsCircle15_translateZ.o" "SoldierRN.phl[29]";
connectAttr "nurbsCircle15_scaleX.o" "SoldierRN.phl[30]";
connectAttr "nurbsCircle15_scaleY.o" "SoldierRN.phl[31]";
connectAttr "nurbsCircle15_scaleZ.o" "SoldierRN.phl[32]";
connectAttr "nurbsCircle16_translateX.o" "SoldierRN.phl[33]";
connectAttr "nurbsCircle16_translateY.o" "SoldierRN.phl[34]";
connectAttr "nurbsCircle16_translateZ.o" "SoldierRN.phl[35]";
connectAttr "nurbsCircle16_visibility.o" "SoldierRN.phl[36]";
connectAttr "nurbsCircle16_rotateX.o" "SoldierRN.phl[37]";
connectAttr "nurbsCircle16_rotateY.o" "SoldierRN.phl[38]";
connectAttr "nurbsCircle16_rotateZ.o" "SoldierRN.phl[39]";
connectAttr "nurbsCircle16_scaleX.o" "SoldierRN.phl[40]";
connectAttr "nurbsCircle16_scaleY.o" "SoldierRN.phl[41]";
connectAttr "nurbsCircle16_scaleZ.o" "SoldierRN.phl[42]";
connectAttr "nurbsCircle12_Grip.o" "SoldierRN.phl[43]";
connectAttr "nurbsCircle12_rotateX.o" "SoldierRN.phl[44]";
connectAttr "nurbsCircle12_rotateY.o" "SoldierRN.phl[45]";
connectAttr "nurbsCircle12_rotateZ.o" "SoldierRN.phl[46]";
connectAttr "nurbsCircle12_translateX.o" "SoldierRN.phl[47]";
connectAttr "nurbsCircle12_translateY.o" "SoldierRN.phl[48]";
connectAttr "nurbsCircle12_translateZ.o" "SoldierRN.phl[49]";
connectAttr "nurbsCircle12_visibility.o" "SoldierRN.phl[50]";
connectAttr "nurbsCircle12_scaleX.o" "SoldierRN.phl[51]";
connectAttr "nurbsCircle12_scaleY.o" "SoldierRN.phl[52]";
connectAttr "nurbsCircle12_scaleZ.o" "SoldierRN.phl[53]";
connectAttr "nurbsCircle13_translateX.o" "SoldierRN.phl[54]";
connectAttr "nurbsCircle13_translateY.o" "SoldierRN.phl[55]";
connectAttr "nurbsCircle13_translateZ.o" "SoldierRN.phl[56]";
connectAttr "nurbsCircle13_visibility.o" "SoldierRN.phl[57]";
connectAttr "nurbsCircle13_rotateX.o" "SoldierRN.phl[58]";
connectAttr "nurbsCircle13_rotateY.o" "SoldierRN.phl[59]";
connectAttr "nurbsCircle13_rotateZ.o" "SoldierRN.phl[60]";
connectAttr "nurbsCircle13_scaleX.o" "SoldierRN.phl[61]";
connectAttr "nurbsCircle13_scaleY.o" "SoldierRN.phl[62]";
connectAttr "nurbsCircle13_scaleZ.o" "SoldierRN.phl[63]";
connectAttr "nurbsCircle10_Grip.o" "SoldierRN.phl[64]";
connectAttr "nurbsCircle10_rotateX.o" "SoldierRN.phl[65]";
connectAttr "nurbsCircle10_rotateY.o" "SoldierRN.phl[66]";
connectAttr "nurbsCircle10_rotateZ.o" "SoldierRN.phl[67]";
connectAttr "nurbsCircle10_translateX.o" "SoldierRN.phl[68]";
connectAttr "nurbsCircle10_translateY.o" "SoldierRN.phl[69]";
connectAttr "nurbsCircle10_translateZ.o" "SoldierRN.phl[70]";
connectAttr "nurbsCircle10_visibility.o" "SoldierRN.phl[71]";
connectAttr "nurbsCircle10_scaleX.o" "SoldierRN.phl[72]";
connectAttr "nurbsCircle10_scaleY.o" "SoldierRN.phl[73]";
connectAttr "nurbsCircle10_scaleZ.o" "SoldierRN.phl[74]";
connectAttr "nurbsCircle11_translateX.o" "SoldierRN.phl[75]";
connectAttr "nurbsCircle11_translateY.o" "SoldierRN.phl[76]";
connectAttr "nurbsCircle11_translateZ.o" "SoldierRN.phl[77]";
connectAttr "nurbsCircle11_visibility.o" "SoldierRN.phl[78]";
connectAttr "nurbsCircle11_rotateX.o" "SoldierRN.phl[79]";
connectAttr "nurbsCircle11_rotateY.o" "SoldierRN.phl[80]";
connectAttr "nurbsCircle11_rotateZ.o" "SoldierRN.phl[81]";
connectAttr "nurbsCircle11_scaleX.o" "SoldierRN.phl[82]";
connectAttr "nurbsCircle11_scaleY.o" "SoldierRN.phl[83]";
connectAttr "nurbsCircle11_scaleZ.o" "SoldierRN.phl[84]";
connectAttr "nurbsCircle4_translateX.o" "SoldierRN.phl[85]";
connectAttr "nurbsCircle4_translateY.o" "SoldierRN.phl[86]";
connectAttr "nurbsCircle4_translateZ.o" "SoldierRN.phl[87]";
connectAttr "nurbsCircle4_rotateX.o" "SoldierRN.phl[88]";
connectAttr "nurbsCircle4_rotateY.o" "SoldierRN.phl[89]";
connectAttr "nurbsCircle4_rotateZ.o" "SoldierRN.phl[90]";
connectAttr "nurbsCircle4_scaleX.o" "SoldierRN.phl[91]";
connectAttr "nurbsCircle4_scaleY.o" "SoldierRN.phl[92]";
connectAttr "nurbsCircle4_scaleZ.o" "SoldierRN.phl[93]";
connectAttr "nurbsCircle4_visibility.o" "SoldierRN.phl[94]";
connectAttr "nurbsCircle5_rotateX.o" "SoldierRN.phl[95]";
connectAttr "nurbsCircle5_rotateY.o" "SoldierRN.phl[96]";
connectAttr "nurbsCircle5_rotateZ.o" "SoldierRN.phl[97]";
connectAttr "nurbsCircle5_visibility.o" "SoldierRN.phl[98]";
connectAttr "nurbsCircle5_translateX.o" "SoldierRN.phl[99]";
connectAttr "nurbsCircle5_translateY.o" "SoldierRN.phl[100]";
connectAttr "nurbsCircle5_translateZ.o" "SoldierRN.phl[101]";
connectAttr "nurbsCircle5_scaleX.o" "SoldierRN.phl[102]";
connectAttr "nurbsCircle5_scaleY.o" "SoldierRN.phl[103]";
connectAttr "nurbsCircle5_scaleZ.o" "SoldierRN.phl[104]";
connectAttr "nurbsCircle6_rotateX.o" "SoldierRN.phl[105]";
connectAttr "nurbsCircle6_rotateY.o" "SoldierRN.phl[106]";
connectAttr "nurbsCircle6_rotateZ.o" "SoldierRN.phl[107]";
connectAttr "nurbsCircle6_visibility.o" "SoldierRN.phl[108]";
connectAttr "nurbsCircle6_translateX.o" "SoldierRN.phl[109]";
connectAttr "nurbsCircle6_translateY.o" "SoldierRN.phl[110]";
connectAttr "nurbsCircle6_translateZ.o" "SoldierRN.phl[111]";
connectAttr "nurbsCircle6_scaleX.o" "SoldierRN.phl[112]";
connectAttr "nurbsCircle6_scaleY.o" "SoldierRN.phl[113]";
connectAttr "nurbsCircle6_scaleZ.o" "SoldierRN.phl[114]";
connectAttr "nurbsCircle9_rotateX.o" "SoldierRN.phl[115]";
connectAttr "nurbsCircle9_rotateY.o" "SoldierRN.phl[116]";
connectAttr "nurbsCircle9_rotateZ.o" "SoldierRN.phl[117]";
connectAttr "nurbsCircle9_visibility.o" "SoldierRN.phl[118]";
connectAttr "nurbsCircle9_translateX.o" "SoldierRN.phl[119]";
connectAttr "nurbsCircle9_translateY.o" "SoldierRN.phl[120]";
connectAttr "nurbsCircle9_translateZ.o" "SoldierRN.phl[121]";
connectAttr "nurbsCircle9_scaleX.o" "SoldierRN.phl[122]";
connectAttr "nurbsCircle9_scaleY.o" "SoldierRN.phl[123]";
connectAttr "nurbsCircle9_scaleZ.o" "SoldierRN.phl[124]";
connectAttr "nurbsCircle8_rotateX.o" "SoldierRN.phl[125]";
connectAttr "nurbsCircle8_rotateY.o" "SoldierRN.phl[126]";
connectAttr "nurbsCircle8_rotateZ.o" "SoldierRN.phl[127]";
connectAttr "nurbsCircle8_visibility.o" "SoldierRN.phl[128]";
connectAttr "nurbsCircle8_translateX.o" "SoldierRN.phl[129]";
connectAttr "nurbsCircle8_translateY.o" "SoldierRN.phl[130]";
connectAttr "nurbsCircle8_translateZ.o" "SoldierRN.phl[131]";
connectAttr "nurbsCircle8_scaleX.o" "SoldierRN.phl[132]";
connectAttr "nurbsCircle8_scaleY.o" "SoldierRN.phl[133]";
connectAttr "nurbsCircle8_scaleZ.o" "SoldierRN.phl[134]";
connectAttr "nurbsCircle7_rotateX.o" "SoldierRN.phl[135]";
connectAttr "nurbsCircle7_rotateY.o" "SoldierRN.phl[136]";
connectAttr "nurbsCircle7_rotateZ.o" "SoldierRN.phl[137]";
connectAttr "nurbsCircle7_visibility.o" "SoldierRN.phl[138]";
connectAttr "nurbsCircle7_translateX.o" "SoldierRN.phl[139]";
connectAttr "nurbsCircle7_translateY.o" "SoldierRN.phl[140]";
connectAttr "nurbsCircle7_translateZ.o" "SoldierRN.phl[141]";
connectAttr "nurbsCircle7_scaleX.o" "SoldierRN.phl[142]";
connectAttr "nurbsCircle7_scaleY.o" "SoldierRN.phl[143]";
connectAttr "nurbsCircle7_scaleZ.o" "SoldierRN.phl[144]";
connectAttr "nurbsCircle18_translateX.o" "SoldierRN.phl[145]";
connectAttr "nurbsCircle18_translateY.o" "SoldierRN.phl[146]";
connectAttr "nurbsCircle18_translateZ.o" "SoldierRN.phl[147]";
connectAttr "nurbsCircle18_rotateX.o" "SoldierRN.phl[148]";
connectAttr "nurbsCircle18_rotateY.o" "SoldierRN.phl[149]";
connectAttr "nurbsCircle18_rotateZ.o" "SoldierRN.phl[150]";
connectAttr "nurbsCircle18_scaleX.o" "SoldierRN.phl[151]";
connectAttr "nurbsCircle18_scaleY.o" "SoldierRN.phl[152]";
connectAttr "nurbsCircle18_scaleZ.o" "SoldierRN.phl[153]";
connectAttr "nurbsCircle18_visibility.o" "SoldierRN.phl[154]";
connectAttr "nurbsCircle17_translateX.o" "SoldierRN.phl[155]";
connectAttr "nurbsCircle17_translateY.o" "SoldierRN.phl[156]";
connectAttr "nurbsCircle17_translateZ.o" "SoldierRN.phl[157]";
connectAttr "nurbsCircle17_rotateX.o" "SoldierRN.phl[158]";
connectAttr "nurbsCircle17_rotateY.o" "SoldierRN.phl[159]";
connectAttr "nurbsCircle17_rotateZ.o" "SoldierRN.phl[160]";
connectAttr "nurbsCircle17_scaleX.o" "SoldierRN.phl[161]";
connectAttr "nurbsCircle17_scaleY.o" "SoldierRN.phl[162]";
connectAttr "nurbsCircle17_scaleZ.o" "SoldierRN.phl[163]";
connectAttr "nurbsCircle17_visibility.o" "SoldierRN.phl[164]";
connectAttr "nurbsCircle1_rotateX.o" "SoldierRN.phl[165]";
connectAttr "nurbsCircle1_rotateY.o" "SoldierRN.phl[166]";
connectAttr "nurbsCircle1_rotateZ.o" "SoldierRN.phl[167]";
connectAttr "nurbsCircle1_visibility.o" "SoldierRN.phl[168]";
connectAttr "nurbsCircle1_translateX.o" "SoldierRN.phl[169]";
connectAttr "nurbsCircle1_translateY.o" "SoldierRN.phl[170]";
connectAttr "nurbsCircle1_translateZ.o" "SoldierRN.phl[171]";
connectAttr "nurbsCircle1_scaleX.o" "SoldierRN.phl[172]";
connectAttr "nurbsCircle1_scaleY.o" "SoldierRN.phl[173]";
connectAttr "nurbsCircle1_scaleZ.o" "SoldierRN.phl[174]";
connectAttr "nurbsCircle2_rotateX.o" "SoldierRN.phl[175]";
connectAttr "nurbsCircle2_rotateY.o" "SoldierRN.phl[176]";
connectAttr "nurbsCircle2_rotateZ.o" "SoldierRN.phl[177]";
connectAttr "nurbsCircle2_visibility.o" "SoldierRN.phl[178]";
connectAttr "nurbsCircle2_translateX.o" "SoldierRN.phl[179]";
connectAttr "nurbsCircle2_translateY.o" "SoldierRN.phl[180]";
connectAttr "nurbsCircle2_translateZ.o" "SoldierRN.phl[181]";
connectAttr "nurbsCircle2_scaleX.o" "SoldierRN.phl[182]";
connectAttr "nurbsCircle2_scaleY.o" "SoldierRN.phl[183]";
connectAttr "nurbsCircle2_scaleZ.o" "SoldierRN.phl[184]";
connectAttr "nurbsCircle3_translateX.o" "SoldierRN.phl[185]";
connectAttr "nurbsCircle3_translateY.o" "SoldierRN.phl[186]";
connectAttr "nurbsCircle3_translateZ.o" "SoldierRN.phl[187]";
connectAttr "nurbsCircle3_visibility.o" "SoldierRN.phl[188]";
connectAttr "nurbsCircle3_rotateX.o" "SoldierRN.phl[189]";
connectAttr "nurbsCircle3_rotateY.o" "SoldierRN.phl[190]";
connectAttr "nurbsCircle3_rotateZ.o" "SoldierRN.phl[191]";
connectAttr "nurbsCircle3_scaleX.o" "SoldierRN.phl[192]";
connectAttr "nurbsCircle3_scaleY.o" "SoldierRN.phl[193]";
connectAttr "nurbsCircle3_scaleZ.o" "SoldierRN.phl[194]";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr ":TurtleDefaultBakeLayer.idx" ":TurtleBakeLayerManager.bli[0]";
connectAttr ":TurtleRenderOptions.msg" ":TurtleDefaultBakeLayer.rset";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of Soldier@move.ma
