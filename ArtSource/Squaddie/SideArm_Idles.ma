//Maya ASCII 2020 scene
//Name: SideArm_Idles.ma
//Last modified: Sat, Feb 22, 2020 11:30:12 AM
//Codeset: UTF-8
requires "fbxmaya" "2020.0";
file -rdi 1 -ns "Squaddie" -rfn "SquaddieRN" -op "v=0;" -typ "mayaAscii" "/Users/briancollins/Unity/DropZone/ArtSource/Squaddie/Squaddie.ma";
file -rdi 1 -ns "Weapon_Sidewinder" -rfn "Weapon_SidewinderRN" -op "fbx" -typ
		 "FBX export" "/Users/briancollins/Unity/DropZone/Assets/DropZone/Weapons/Sidewinder/Weapon_Sidewinder.fbx";
file -r -ns "Squaddie" -dr 1 -rfn "SquaddieRN" -op "v=0;" -typ "mayaAscii" "/Users/briancollins/Unity/DropZone/ArtSource/Squaddie/Squaddie.ma";
file -r -ns "Weapon_Sidewinder" -dr 1 -rfn "Weapon_SidewinderRN" -op "fbx" -typ "FBX export"
		 "/Users/briancollins/Unity/DropZone/Assets/DropZone/Weapons/Sidewinder/Weapon_Sidewinder.fbx";
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
fileInfo "UUID" "A5BE1E03-C14F-131F-5889-C1B2E1CD3459";
createNode transform -s -n "persp";
	rename -uid "ABF7CAC9-7042-CBE0-D916-39910278FA3A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -124.34293980373856 181.96180117900542 -292.10230662693397 ;
	setAttr ".r" -type "double3" -12.938352729607852 -158.99999999999173 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "3D0D0238-014B-4FD1-30CB-E49DEC31D45C";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 360.80939396134522;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -21.676263913182634 -5.6843418860808015e-14 -34.524282069394928 ;
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
	setAttr ".t" -type "double3" -27.353965032886958 135.33672463269644 1009.661480316344 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "D0DAF76B-E346-383C-FA2E-C381E30429C3";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1001.7115399182893;
	setAttr ".ow" 335.64945745874417;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".tp" -type "double3" -27.353965032886958 135.33672463269644 7.949940398054629 ;
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "5FB9A50F-DB45-7576-8515-A49B66C8A97E";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "08154BA9-9047-3AB2-A5DF-B195E1B656F3";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "pointLight1";
	rename -uid "A4C4AB5B-0248-D311-064B-A5B5E08BC665";
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
createNode fosterParent -n "Weapon_MkIIRNfosterParent1";
	rename -uid "D0091040-8544-87CE-1AC6-26BF11CF5577";
createNode parentConstraint -n "Weapon_MkII1_parentConstraint1" -p "Weapon_MkIIRNfosterParent1";
	rename -uid "891931CE-AC43-223A-0C60-0194AC428CA2";
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
	setAttr ".cpim" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".lr" -type "double3" -287.60115231671938 -6.4457993109495071 -22.147522200590526 ;
	setAttr ".rst" -type "double3" -37.851617463984155 90.102169824606804 -10.113837720582762 ;
	setAttr ".rsrr" -type "double3" -279.28390905197301 -25.901963470933062 -12.387353205233294 ;
	setAttr -k on ".w0";
createNode fosterParent -n "SquaddieRNfosterParent1";
	rename -uid "B5FC06EE-FC4A-31BE-3FBA-25AB0174BCA7";
createNode transform -n "RightFootMarker" -p "SquaddieRNfosterParent1";
	rename -uid "44CD5C4D-1346-C3B3-B701-0FAB71EBF57B";
	setAttr ".t" -type "double3" -4.231865122703006 -5.6843418860808015e-14 33.717163984712812 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 -1.4202207266784881 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr ".rp" -type "double3" -19.81879997253418 13.875100135803221 -9.6157197952270508 ;
	setAttr ".sp" -type "double3" -19.81879997253418 13.875100135803221 -9.6157197952270508 ;
createNode nurbsCurve -n "RightFootMarkerShape" -p "RightFootMarker";
	rename -uid "E07C6E96-8541-96CF-F0DF-FB810C4C0F52";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-10.993838228102476 9.4377743565695507e-16 -24.859748430010843
		-19.842925384176908 1.3347028493677681e-15 -27.604050131216177
		-28.692012540251326 9.4377743565695566e-16 -24.859748430010853
		-32.357424454918913 3.8676349411794827e-31 -12.806269536437693
		-28.692012540251326 -9.4377743565695547e-16 -7.6419371515570997
		-19.842925384176908 -1.3347028493677683e-15 -6.6855909458136535
		-10.99383822810249 -9.4377743565695566e-16 -7.6419371515570926
		-7.3284263134348961 -7.1687150404627847e-31 -12.806269536437672
		-10.993838228102476 9.4377743565695507e-16 -24.859748430010843
		-19.842925384176908 1.3347028493677681e-15 -27.604050131216177
		-28.692012540251326 9.4377743565695566e-16 -24.859748430010853
		;
createNode transform -n "RightToes_Control" -p "RightFootMarker";
	rename -uid "6AA5DC91-0343-62BF-D716-079F52CFADA7";
	setAttr ".rp" -type "double3" -19.818799972534176 5.4871802330017081 2.819849967956543 ;
	setAttr ".sp" -type "double3" -19.818799972534176 5.4871802330017081 2.819849967956543 ;
createNode nurbsCurve -n "RightToes_ControlShape" -p "|SquaddieRNfosterParent1|RightFootMarker|RightToes_Control";
	rename -uid "B5D55B3A-D540-73EA-9E03-72AD2EC35FAD";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-32.888869636864918 9.4377743565695507e-16 23.601423805597928
		-19.842925384176901 1.3347028493677681e-15 31.686646952214989
		-6.7969811314889039 9.4377743565695566e-16 23.601423805597946
		-7.3284263134348926 3.8676349411794827e-31 3.1274903383294328
		-10.993838228102478 -9.4377743565695547e-16 -2.036842046551163
		-19.842925384176898 -1.3347028493677683e-15 -2.9931882522946109
		-28.692012540251316 -9.4377743565695566e-16 -2.0368420465511741
		-32.357424454918913 -7.1687150404627847e-31 3.1274903383294035
		-32.888869636864918 9.4377743565695507e-16 23.601423805597928
		-19.842925384176901 1.3347028493677681e-15 31.686646952214989
		-6.7969811314889039 9.4377743565695566e-16 23.601423805597946
		;
createNode transform -n "RightKnee_Control" -p "RightFootMarker";
	rename -uid "B378A17F-EC48-A781-0B3B-0D96EF9E4702";
	setAttr ".rp" -type "double3" -19.818799972534176 51.407199859619134 76.610130652251613 ;
	setAttr ".sp" -type "double3" -19.818799972534176 51.407199859619134 76.610130652251613 ;
createNode nurbsCurve -n "RightKnee_ControlShape" -p "|SquaddieRNfosterParent1|RightFootMarker|RightKnee_Control";
	rename -uid "F25B8A98-F44C-5111-CB08-72BC2959ADE0";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-14.179700380499479 57.046299451653823 76.610130652251613
		-19.818799972534176 59.382090982247185 76.610130652251613
		-25.457899564568869 57.04629945165383 76.610130652251613
		-27.793691095162227 51.407199859619134 76.610130652251613
		-25.457899564568869 45.768100267584444 76.610130652251613
		-19.81879997253418 43.432308736991082 76.610130652251613
		-14.179700380499487 45.768100267584437 76.610130652251613
		-11.843908849906125 51.407199859619126 76.610130652251613
		-14.179700380499479 57.046299451653823 76.610130652251613
		-19.818799972534176 59.382090982247185 76.610130652251613
		-25.457899564568869 57.04629945165383 76.610130652251613
		;
createNode transform -n "LeftFootMarker" -p "SquaddieRNfosterParent1";
	rename -uid "165D6CD8-8949-87EB-766E-33AAC624CC7E";
	setAttr ".t" -type "double3" 41.030189711120066 0 -29.031993470391225 ;
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" 0 38.391174283870946 0 ;
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr ".rp" -type "double3" -19.81879997253418 13.875100135803221 -9.6157197952270508 ;
	setAttr ".sp" -type "double3" -19.81879997253418 13.875100135803221 -9.6157197952270508 ;
createNode nurbsCurve -n "LeftFootMarkerShape" -p "LeftFootMarker";
	rename -uid "4A0B6E5F-804C-240D-F5D6-3BB3212B661E";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-10.993838228102476 9.4377743565695507e-16 -24.859748430010843
		-19.842925384176908 1.3347028493677681e-15 -27.604050131216177
		-28.692012540251326 9.4377743565695566e-16 -24.859748430010853
		-32.357424454918913 3.8676349411794827e-31 -12.806269536437693
		-28.692012540251326 -9.4377743565695547e-16 -7.6419371515570997
		-19.842925384176908 -1.3347028493677683e-15 -6.6855909458136535
		-10.99383822810249 -9.4377743565695566e-16 -7.6419371515570926
		-7.3284263134348961 -7.1687150404627847e-31 -12.806269536437672
		-10.993838228102476 9.4377743565695507e-16 -24.859748430010843
		-19.842925384176908 1.3347028493677681e-15 -27.604050131216177
		-28.692012540251326 9.4377743565695566e-16 -24.859748430010853
		;
createNode transform -n "RightToes_Control" -p "LeftFootMarker";
	rename -uid "C4E6EADC-E944-18BA-ECFA-9E8FFCE33D1B";
	setAttr ".rp" -type "double3" -19.818799972534176 5.4871802330017081 2.819849967956543 ;
	setAttr ".sp" -type "double3" -19.818799972534176 5.4871802330017081 2.819849967956543 ;
createNode nurbsCurve -n "RightToes_ControlShape" -p "|SquaddieRNfosterParent1|LeftFootMarker|RightToes_Control";
	rename -uid "B90B2B7E-FB45-46EE-F968-E6B5C7913722";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-32.888869636864918 9.4377743565695507e-16 23.601423805597928
		-19.842925384176901 1.3347028493677681e-15 31.686646952214989
		-6.7969811314889039 9.4377743565695566e-16 23.601423805597946
		-7.3284263134348926 3.8676349411794827e-31 3.1274903383294328
		-10.993838228102478 -9.4377743565695547e-16 -2.036842046551163
		-19.842925384176898 -1.3347028493677683e-15 -2.9931882522946109
		-28.692012540251316 -9.4377743565695566e-16 -2.0368420465511741
		-32.357424454918913 -7.1687150404627847e-31 3.1274903383294035
		-32.888869636864918 9.4377743565695507e-16 23.601423805597928
		-19.842925384176901 1.3347028493677681e-15 31.686646952214989
		-6.7969811314889039 9.4377743565695566e-16 23.601423805597946
		;
createNode transform -n "RightKnee_Control" -p "LeftFootMarker";
	rename -uid "A805A5BD-314E-6D31-286C-A48A918D26AA";
	setAttr ".rp" -type "double3" -19.818799972534176 51.407199859619134 76.610130652251613 ;
	setAttr ".sp" -type "double3" -19.818799972534176 51.407199859619134 76.610130652251613 ;
createNode nurbsCurve -n "RightKnee_ControlShape" -p "|SquaddieRNfosterParent1|LeftFootMarker|RightKnee_Control";
	rename -uid "BBB0A8E5-314A-C63B-3807-F0B3CB8E9DF6";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-14.179700380499479 57.046299451653823 76.610130652251613
		-19.818799972534176 59.382090982247185 76.610130652251613
		-25.457899564568869 57.04629945165383 76.610130652251613
		-27.793691095162227 51.407199859619134 76.610130652251613
		-25.457899564568869 45.768100267584444 76.610130652251613
		-19.81879997253418 43.432308736991082 76.610130652251613
		-14.179700380499487 45.768100267584437 76.610130652251613
		-11.843908849906125 51.407199859619126 76.610130652251613
		-14.179700380499479 57.046299451653823 76.610130652251613
		-19.818799972534176 59.382090982247185 76.610130652251613
		-25.457899564568869 57.04629945165383 76.610130652251613
		;
createNode fosterParent -n "Weapon_SidewinderRNfosterParent1";
	rename -uid "0AD8EE0F-5E42-256A-0321-F898694CD478";
createNode parentConstraint -n "Weapon_MkII1_parentConstraint2" -p "Weapon_SidewinderRNfosterParent1";
	rename -uid "FCB64558-A946-E0C4-F966-6A98FCE51429";
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
	setAttr ".lr" -type "double3" -261.03582337003809 -32.151974076771282 -24.175532980765219 ;
	setAttr ".rst" -type "double3" 6.3778776581105623 131.27871709849367 64.354925472546554 ;
	setAttr ".rsrr" -type "double3" -167.45093125027051 -163.87230256952003 154.28488521248391 ;
	setAttr -k on ".w0";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "245D850B-F642-0F00-0767-77BACFA6EC86";
	setAttr -s 8 ".lnk";
	setAttr -s 8 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "958AE860-434E-78EB-0D31-AAAC19BB0B50";
	setAttr ".cdl" 1;
	setAttr -s 2 ".dli[1]"  1;
	setAttr -s 2 ".dli";
createNode displayLayer -n "defaultLayer";
	rename -uid "3AFC2083-B947-F7A2-A1CF-8784DD7FE6BE";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "A425D474-874F-B55C-DB7C-42A291A50EB3";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "4F4A93B8-5947-7084-81A2-88B3C2992DDC";
	setAttr ".g" yes;
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "D55E024E-DF40-51E6-47BD-C08B8EE1E9C2";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "10994A85-D242-7211-5CCE-2CA638354382";
createNode reference -n "SquaddieRN";
	rename -uid "92FD56F0-1847-D578-2DAF-D49FE59C6074";
	setAttr -s 297 ".phl";
	setAttr ".phl[111]" 0;
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
	setAttr ".phl[369]" 0;
	setAttr ".phl[370]" 0;
	setAttr ".phl[371]" 0;
	setAttr ".phl[372]" 0;
	setAttr ".phl[373]" 0;
	setAttr ".phl[374]" 0;
	setAttr ".phl[375]" 0;
	setAttr ".phl[376]" 0;
	setAttr ".phl[377]" 0;
	setAttr ".phl[378]" 0;
	setAttr ".phl[379]" 0;
	setAttr ".phl[380]" 0;
	setAttr ".phl[381]" 0;
	setAttr ".phl[382]" 0;
	setAttr ".phl[383]" 0;
	setAttr ".phl[384]" 0;
	setAttr ".phl[385]" 0;
	setAttr ".phl[386]" 0;
	setAttr ".phl[387]" 0;
	setAttr ".phl[388]" 0;
	setAttr ".phl[389]" 0;
	setAttr ".phl[390]" 0;
	setAttr ".phl[391]" 0;
	setAttr ".phl[392]" 0;
	setAttr ".phl[393]" 0;
	setAttr ".phl[394]" 0;
	setAttr ".phl[395]" 0;
	setAttr ".phl[396]" 0;
	setAttr ".phl[397]" 0;
	setAttr ".phl[398]" 0;
	setAttr ".phl[399]" 0;
	setAttr ".phl[400]" 0;
	setAttr ".phl[401]" 0;
	setAttr ".phl[402]" 0;
	setAttr ".phl[403]" 0;
	setAttr ".phl[404]" 0;
	setAttr ".phl[405]" 0;
	setAttr ".phl[406]" 0;
	setAttr ".phl[407]" 0;
	setAttr ".phl[408]" 0;
	setAttr ".phl[409]" 0;
	setAttr ".phl[410]" 0;
	setAttr ".phl[411]" 0;
	setAttr ".phl[412]" 0;
	setAttr ".phl[413]" 0;
	setAttr ".phl[414]" 0;
	setAttr ".phl[415]" 0;
	setAttr ".phl[416]" 0;
	setAttr ".phl[417]" 0;
	setAttr ".phl[418]" 0;
	setAttr ".phl[419]" 0;
	setAttr ".phl[420]" 0;
	setAttr ".phl[421]" 0;
	setAttr ".phl[422]" 0;
	setAttr ".phl[423]" 0;
	setAttr ".phl[424]" 0;
	setAttr ".phl[425]" 0;
	setAttr ".phl[426]" 0;
	setAttr ".phl[427]" 0;
	setAttr ".phl[428]" 0;
	setAttr ".phl[429]" 0;
	setAttr ".phl[430]" 0;
	setAttr ".phl[431]" 0;
	setAttr ".phl[432]" 0;
	setAttr ".phl[433]" 0;
	setAttr ".phl[434]" 0;
	setAttr ".phl[435]" 0;
	setAttr ".phl[436]" 0;
	setAttr ".phl[437]" 0;
	setAttr ".phl[438]" 0;
	setAttr ".phl[439]" 0;
	setAttr ".phl[440]" 0;
	setAttr ".phl[441]" 0;
	setAttr ".phl[442]" 0;
	setAttr ".phl[443]" 0;
	setAttr ".phl[444]" 0;
	setAttr ".phl[445]" 0;
	setAttr ".phl[446]" 0;
	setAttr ".phl[447]" 0;
	setAttr ".phl[448]" 0;
	setAttr ".phl[449]" 0;
	setAttr ".phl[450]" 0;
	setAttr ".phl[451]" 0;
	setAttr ".phl[452]" 0;
	setAttr ".phl[453]" 0;
	setAttr ".phl[454]" 0;
	setAttr ".phl[455]" 0;
	setAttr ".phl[456]" 0;
	setAttr ".phl[457]" 0;
	setAttr ".phl[458]" 0;
	setAttr ".phl[459]" 0;
	setAttr ".phl[460]" 0;
	setAttr ".phl[461]" 0;
	setAttr ".phl[462]" 0;
	setAttr ".phl[463]" 0;
	setAttr ".phl[464]" 0;
	setAttr ".phl[465]" 0;
	setAttr ".phl[466]" 0;
	setAttr ".phl[467]" 0;
	setAttr ".phl[468]" 0;
	setAttr ".phl[469]" 0;
	setAttr ".phl[470]" 0;
	setAttr ".phl[471]" 0;
	setAttr ".phl[472]" 0;
	setAttr ".phl[473]" 0;
	setAttr ".phl[474]" 0;
	setAttr ".phl[475]" 0;
	setAttr ".phl[476]" 0;
	setAttr ".phl[477]" 0;
	setAttr ".phl[478]" 0;
	setAttr ".phl[479]" 0;
	setAttr ".phl[480]" 0;
	setAttr ".phl[481]" 0;
	setAttr ".phl[482]" 0;
	setAttr ".phl[483]" 0;
	setAttr ".phl[484]" 0;
	setAttr ".phl[485]" 0;
	setAttr ".phl[486]" 0;
	setAttr ".phl[487]" 0;
	setAttr ".phl[488]" 0;
	setAttr ".phl[489]" 0;
	setAttr ".phl[490]" 0;
	setAttr ".phl[491]" 0;
	setAttr ".phl[492]" 0;
	setAttr ".phl[493]" 0;
	setAttr ".phl[494]" 0;
	setAttr ".phl[495]" 0;
	setAttr ".phl[496]" 0;
	setAttr ".phl[497]" 0;
	setAttr ".phl[498]" 0;
	setAttr ".phl[499]" 0;
	setAttr ".phl[500]" 0;
	setAttr ".phl[501]" 0;
	setAttr ".phl[502]" 0;
	setAttr ".phl[503]" 0;
	setAttr ".phl[504]" 0;
	setAttr ".phl[505]" 0;
	setAttr ".phl[506]" 0;
	setAttr ".phl[507]" 0;
	setAttr ".phl[508]" 0;
	setAttr ".phl[509]" 0;
	setAttr ".phl[510]" 0;
	setAttr ".phl[511]" 0;
	setAttr ".phl[512]" 0;
	setAttr ".phl[513]" 0;
	setAttr ".phl[514]" 0;
	setAttr ".phl[515]" 0;
	setAttr ".phl[516]" 0;
	setAttr ".phl[517]" 0;
	setAttr ".phl[518]" 0;
	setAttr ".phl[519]" 0;
	setAttr ".phl[520]" 0;
	setAttr ".phl[521]" 0;
	setAttr ".phl[522]" 0;
	setAttr ".phl[523]" 0;
	setAttr ".phl[524]" 0;
	setAttr ".phl[525]" 0;
	setAttr ".phl[526]" 0;
	setAttr ".phl[527]" 0;
	setAttr ".phl[528]" 0;
	setAttr ".phl[529]" 0;
	setAttr ".phl[530]" 0;
	setAttr ".phl[531]" 0;
	setAttr ".phl[532]" 0;
	setAttr ".phl[533]" 0;
	setAttr ".phl[534]" 0;
	setAttr ".phl[535]" 0;
	setAttr ".phl[536]" 0;
	setAttr ".phl[537]" 0;
	setAttr ".phl[538]" 0;
	setAttr ".phl[539]" 0;
	setAttr ".phl[540]" 0;
	setAttr ".phl[541]" 0;
	setAttr ".phl[542]" 0;
	setAttr ".phl[543]" 0;
	setAttr ".phl[544]" 0;
	setAttr ".phl[545]" 0;
	setAttr ".phl[546]" 0;
	setAttr ".phl[547]" 0;
	setAttr ".phl[548]" 0;
	setAttr ".phl[549]" 0;
	setAttr ".phl[550]" 0;
	setAttr ".phl[551]" 0;
	setAttr ".phl[552]" 0;
	setAttr ".phl[553]" 0;
	setAttr ".phl[554]" 0;
	setAttr ".phl[555]" 0;
	setAttr ".ed" -type "dataReferenceEdits" 
		"SquaddieRN"
		"SquaddieRN" 68
		2 "|Squaddie:SkeletonGroup|Squaddie:Attach_LeftElbow" "visibility" " 1"
		2 "|Squaddie:SkeletonGroup|Squaddie:Attach_LeftElbow" "translate" " -type \"double3\" 53.29017251435669067 127.69338727291554392 -30.63161575113995028"
		
		2 "|Squaddie:SkeletonGroup|Squaddie:Attach_LeftElbow" "translateX" " -av"
		
		2 "|Squaddie:SkeletonGroup|Squaddie:Attach_LeftElbow" "translateY" " -av"
		
		2 "|Squaddie:SkeletonGroup|Squaddie:Attach_LeftElbow" "translateZ" " -av"
		
		2 "|Squaddie:SkeletonGroup|Squaddie:Attach_LeftElbow" "rotate" " -type \"double3\" 2.05441679762107032 -28.59272402152508974 -2.6304595803577584"
		
		2 "|Squaddie:SkeletonGroup|Squaddie:Attach_LeftElbow" "rotateX" " -av"
		2 "|Squaddie:SkeletonGroup|Squaddie:Attach_LeftElbow" "rotateY" " -av"
		2 "|Squaddie:SkeletonGroup|Squaddie:Attach_LeftElbow" "rotateZ" " -av"
		2 "|Squaddie:SkeletonGroup|Squaddie:Attach_LeftElbow" "scale" " -type \"double3\" 0.99999999999999978 1 1.00000000000000044"
		
		2 "|Squaddie:SkeletonGroup|Squaddie:Attach_RightElbow" "visibility" " 1"
		2 "|Squaddie:SkeletonGroup|Squaddie:Attach_RightElbow" "translate" " -type \"double3\" -121.65637309005498423 141.17513259722986163 -20.57060686185705833"
		
		2 "|Squaddie:SkeletonGroup|Squaddie:Attach_RightElbow" "translateX" " -av"
		
		2 "|Squaddie:SkeletonGroup|Squaddie:Attach_RightElbow" "translateY" " -av"
		
		2 "|Squaddie:SkeletonGroup|Squaddie:Attach_RightElbow" "translateZ" " -av"
		
		2 "|Squaddie:SkeletonGroup|Squaddie:Attach_RightElbow" "rotate" " -type \"double3\" 2.05441679762107032 -28.59272402152508974 -2.6304595803577584"
		
		2 "|Squaddie:SkeletonGroup|Squaddie:Attach_RightElbow" "rotateX" " -av"
		2 "|Squaddie:SkeletonGroup|Squaddie:Attach_RightElbow" "rotateY" " -av"
		2 "|Squaddie:SkeletonGroup|Squaddie:Attach_RightElbow" "rotateZ" " -av"
		2 "|Squaddie:SkeletonGroup|Squaddie:Attach_RightElbow" "scale" " -type \"double3\" 0.99999999999999978 1 1.00000000000000044"
		
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightUpperArm_Control" 
		"visibility" " -av 1"
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
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightUpperArm_Control" 
		"rotateZ" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightUpperArm_Control" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightUpperArm_Control" 
		"scaleX" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightUpperArm_Control" 
		"scaleY" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightUpperArm_Control" 
		"scaleZ" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftUpperArm_Control" 
		"visibility" " -av 1"
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
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftUpperArm_Control" 
		"rotateZ" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftUpperArm_Control" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftUpperArm_Control" 
		"scaleX" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftUpperArm_Control" 
		"scaleY" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftUpperArm_Control" 
		"scaleZ" " -av"
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightUpperArm_Control.translateX" 
		"SquaddieRN.placeHolderList[51]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightUpperArm_Control.translateY" 
		"SquaddieRN.placeHolderList[52]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightUpperArm_Control.translateZ" 
		"SquaddieRN.placeHolderList[53]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightUpperArm_Control.visibility" 
		"SquaddieRN.placeHolderList[54]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightUpperArm_Control.rotateX" 
		"SquaddieRN.placeHolderList[55]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightUpperArm_Control.rotateY" 
		"SquaddieRN.placeHolderList[56]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightUpperArm_Control.rotateZ" 
		"SquaddieRN.placeHolderList[57]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightUpperArm_Control.scaleX" 
		"SquaddieRN.placeHolderList[58]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightUpperArm_Control.scaleY" 
		"SquaddieRN.placeHolderList[59]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightUpperArm_Control.scaleZ" 
		"SquaddieRN.placeHolderList[60]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftUpperArm_Control.translateX" 
		"SquaddieRN.placeHolderList[101]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftUpperArm_Control.translateY" 
		"SquaddieRN.placeHolderList[102]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftUpperArm_Control.translateZ" 
		"SquaddieRN.placeHolderList[103]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftUpperArm_Control.visibility" 
		"SquaddieRN.placeHolderList[104]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftUpperArm_Control.rotateX" 
		"SquaddieRN.placeHolderList[105]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftUpperArm_Control.rotateY" 
		"SquaddieRN.placeHolderList[106]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftUpperArm_Control.rotateZ" 
		"SquaddieRN.placeHolderList[107]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftUpperArm_Control.scaleX" 
		"SquaddieRN.placeHolderList[108]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftUpperArm_Control.scaleY" 
		"SquaddieRN.placeHolderList[109]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftUpperArm_Control.scaleZ" 
		"SquaddieRN.placeHolderList[110]" ""
		5 3 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftUpperArm_Control.message" 
		"SquaddieRN.placeHolderList[111]" ""
		5 3 "SquaddieRN" "|Squaddie:SkeletonGroup|Squaddie:Attach_RootMotion|Squaddie:Hips_Skel|Squaddie:Spine1_Skel|Squaddie:Spine2_Skel|Squaddie:LeftClav_Skel|Squaddie:LeftUpperArm_Skel|Squaddie:LeftUpperArm_Skel_pointConstraint1.message" 
		"SquaddieRN.placeHolderList[280]" ""
		"SquaddieRN" 635
		0 "|SquaddieRNfosterParent1|LeftFootMarker" "|Squaddie:Root_Control|Squaddie:RootMotion_Control" 
		"-s -r "
		0 "|SquaddieRNfosterParent1|RightFootMarker" "|Squaddie:Root_Control|Squaddie:RootMotion_Control" 
		"-s -r "
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
		"translate" " -type \"double3\" -1.03455134365242429 -2.30523745624052268 -0.11970167452585656"
		
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control" 
		"translateX" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control" 
		"translateY" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control" 
		"translateZ" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control" 
		"rotate" " -type \"double3\" 0 -21.16419414453651271 0"
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
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control" 
		"rotatePivot" " -type \"double3\" 0 100.88217926025390625 -3.69500780105590776"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control" 
		"scalePivot" " -type \"double3\" 0 100.88217926025390625 -3.69500780105590776"
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
		"rotate" " -type \"double3\" 0 -9.65710788455673175 0"
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
		"rotate" " -type \"double3\" 0.70077398063472074 0.96178556325448905 -2.31117928566598207"
		
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
		"rotate" " -type \"double3\" -0.088623956106980206 25.82829337843784145 0"
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
		"translate" " -type \"double3\" 4.27361086064841444 -26.69634608939227149 19.43082628974869763"
		
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
		"translate" " -type \"double3\" -36.59420188088144954 -3.37228195666550334 -4.54386950711466753"
		
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
		"translate" " -type \"double3\" 36.07444120736283821 -22.03721920337527251 -18.38243214574360707"
		
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightHand_Control" 
		"translateX" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightHand_Control" 
		"translateY" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightHand_Control" 
		"translateZ" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightHand_Control" 
		"rotate" " -type \"double3\" 2.64328999449892033 -12.233042288776657 35.00652886507190686"
		
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
		"rotate" " -type \"double3\" 0 0 0"
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
		"Grip" " -av -k 1 0.5"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftHand_Control" 
		"visibility" " -av 1"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftHand_Control" 
		"translate" " -type \"double3\" -28.18428996156880117 -18.96034057736093814 -8.6159087488893924"
		
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftHand_Control" 
		"translateX" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftHand_Control" 
		"translateY" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftHand_Control" 
		"translateZ" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftHand_Control" 
		"rotate" " -type \"double3\" 14.75075840974088415 -24.12387106105695267 -28.79959929599835533"
		
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
		
		2 "|Squaddie:Root_Control|Squaddie:RightFoot_Control" "translate" " -type \"double3\" -5.38890851279566618 0 -18.86260732539808771"
		
		2 "|Squaddie:Root_Control|Squaddie:RightFoot_Control" "translateX" " -av"
		
		2 "|Squaddie:Root_Control|Squaddie:RightFoot_Control" "translateY" " -av"
		
		2 "|Squaddie:Root_Control|Squaddie:RightFoot_Control" "translateZ" " -av"
		
		2 "|Squaddie:Root_Control|Squaddie:RightFoot_Control" "rotate" " -type \"double3\" 0 -21.62443473112444181 0"
		
		2 "|Squaddie:Root_Control|Squaddie:RightFoot_Control" "rotateX" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RightFoot_Control" "rotateY" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RightFoot_Control" "rotateZ" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RightFoot_Control" "scale" " -type \"double3\" 1 1 1"
		
		2 "|Squaddie:Root_Control|Squaddie:RightFoot_Control" "scaleX" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RightFoot_Control" "scaleY" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RightFoot_Control" "scaleZ" " -av"
		2 "|Squaddie:Root_Control|Squaddie:RightFoot_Control" "rotatePivot" " -type \"double3\" -19.81879997253417969 13.87510013580322088 -9.61571979522705078"
		
		2 "|Squaddie:Root_Control|Squaddie:RightFoot_Control" "rotatePivotTranslate" 
		" -type \"double3\" 0 0 0"
		2 "|Squaddie:Root_Control|Squaddie:RightFoot_Control" "scalePivot" " -type \"double3\" -19.81879997253417969 13.87510013580322088 -9.61571979522705078"
		
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
		
		2 "|Squaddie:Root_Control|Squaddie:LeftFoot_Control" "translate" " -type \"double3\" 5.29682818256853238 0 8.00717458571604368"
		
		2 "|Squaddie:Root_Control|Squaddie:LeftFoot_Control" "translateX" " -av"
		2 "|Squaddie:Root_Control|Squaddie:LeftFoot_Control" "translateY" " -av"
		2 "|Squaddie:Root_Control|Squaddie:LeftFoot_Control" "translateZ" " -av"
		2 "|Squaddie:Root_Control|Squaddie:LeftFoot_Control" "rotate" " -type \"double3\" 0 -8.72832849915296194 0"
		
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
		"translate" " -type \"double3\" -19.81879997253417613 -7.48137882854415182 -0.70920240272859258"
		
		2 "|Squaddie:SkeletonGroup|Squaddie:Attach_RootMotion|Squaddie:Hips_Skel|Squaddie:RightUpperLeg_Skel" 
		"translateX" " -av"
		2 "|Squaddie:SkeletonGroup|Squaddie:Attach_RootMotion|Squaddie:Hips_Skel|Squaddie:RightUpperLeg_Skel" 
		"translateY" " -av"
		2 "|Squaddie:SkeletonGroup|Squaddie:Attach_RootMotion|Squaddie:Hips_Skel|Squaddie:RightUpperLeg_Skel" 
		"translateZ" " -av"
		2 "|Squaddie:SkeletonGroup|Squaddie:Attach_RootMotion|Squaddie:Hips_Skel|Squaddie:RightUpperLeg_Skel" 
		"rotate" " -type \"double3\" 2.7407020287766275 9.39506739117806333 -4.39109562646056872"
		
		2 "|Squaddie:SkeletonGroup|Squaddie:Attach_RootMotion|Squaddie:Hips_Skel|Squaddie:RightUpperLeg_Skel|Squaddie:RightLowerLeg_Skel" 
		"rotate" " -type \"double3\" 5.61469361791307442 0 0"
		2 "|Squaddie:SkeletonGroup|Squaddie:Attach_RootMotion|Squaddie:Hips_Skel|Squaddie:LeftUpperLeg_Skel" 
		"translate" " -type \"double3\" 19.81883811950683949 -7.48134068157149557 -0.70920144905428417"
		
		2 "|Squaddie:SkeletonGroup|Squaddie:Attach_RootMotion|Squaddie:Hips_Skel|Squaddie:LeftUpperLeg_Skel" 
		"translateX" " -av"
		2 "|Squaddie:SkeletonGroup|Squaddie:Attach_RootMotion|Squaddie:Hips_Skel|Squaddie:LeftUpperLeg_Skel" 
		"translateY" " -av"
		2 "|Squaddie:SkeletonGroup|Squaddie:Attach_RootMotion|Squaddie:Hips_Skel|Squaddie:LeftUpperLeg_Skel" 
		"translateZ" " -av"
		2 "|Squaddie:SkeletonGroup|Squaddie:Attach_RootMotion|Squaddie:Hips_Skel|Squaddie:LeftUpperLeg_Skel" 
		"rotate" " -type \"double3\" -8.36725579050011703 5.34357247050704665 -14.58282220405101803"
		
		2 "|Squaddie:SkeletonGroup|Squaddie:Attach_RootMotion|Squaddie:Hips_Skel|Squaddie:LeftUpperLeg_Skel|Squaddie:LeftLowerLeg_Skel" 
		"rotate" " -type \"double3\" 17.6155060255933833 0 0"
		2 "|Squaddie:SkeletonGroup|Squaddie:Attach_RootMotion|Squaddie:Hips_Skel|Squaddie:Spine1_Skel|Squaddie:Spine2_Skel|Squaddie:RightClav_Skel|Squaddie:RightUpperArm_Skel" 
		"translate" " -type \"double3\" -14.9146 -4.70347648394237972 0.41150087150569448"
		
		2 "|Squaddie:SkeletonGroup|Squaddie:Attach_RootMotion|Squaddie:Hips_Skel|Squaddie:Spine1_Skel|Squaddie:Spine2_Skel|Squaddie:RightClav_Skel|Squaddie:RightUpperArm_Skel" 
		"translateX" " -av"
		2 "|Squaddie:SkeletonGroup|Squaddie:Attach_RootMotion|Squaddie:Hips_Skel|Squaddie:Spine1_Skel|Squaddie:Spine2_Skel|Squaddie:RightClav_Skel|Squaddie:RightUpperArm_Skel" 
		"translateY" " -av"
		2 "|Squaddie:SkeletonGroup|Squaddie:Attach_RootMotion|Squaddie:Hips_Skel|Squaddie:Spine1_Skel|Squaddie:Spine2_Skel|Squaddie:RightClav_Skel|Squaddie:RightUpperArm_Skel" 
		"translateZ" " -av"
		2 "|Squaddie:SkeletonGroup|Squaddie:Attach_RootMotion|Squaddie:Hips_Skel|Squaddie:Spine1_Skel|Squaddie:Spine2_Skel|Squaddie:RightClav_Skel|Squaddie:RightUpperArm_Skel" 
		"rotate" " -type \"double3\" 44.20130718555233074 5.76818548076824467 27.80925045949929242"
		
		2 "|Squaddie:SkeletonGroup|Squaddie:Attach_RootMotion|Squaddie:Hips_Skel|Squaddie:Spine1_Skel|Squaddie:Spine2_Skel|Squaddie:RightClav_Skel|Squaddie:RightUpperArm_Skel|Squaddie:RightLowerArm_Skel" 
		"rotate" " -type \"double3\" -0.00042799726761750102 -11.19013502144356309 0.00036997027651317315"
		
		2 "|Squaddie:SkeletonGroup|Squaddie:Attach_RootMotion|Squaddie:Hips_Skel|Squaddie:Spine1_Skel|Squaddie:Spine2_Skel|Squaddie:LeftClav_Skel|Squaddie:LeftUpperArm_Skel" 
		"translate" " -type \"double3\" 14.91457674267715205 4.70347938627339524 -0.41150061501071128"
		
		2 "|Squaddie:SkeletonGroup|Squaddie:Attach_RootMotion|Squaddie:Hips_Skel|Squaddie:Spine1_Skel|Squaddie:Spine2_Skel|Squaddie:LeftClav_Skel|Squaddie:LeftUpperArm_Skel" 
		"translateX" " -av"
		2 "|Squaddie:SkeletonGroup|Squaddie:Attach_RootMotion|Squaddie:Hips_Skel|Squaddie:Spine1_Skel|Squaddie:Spine2_Skel|Squaddie:LeftClav_Skel|Squaddie:LeftUpperArm_Skel" 
		"translateY" " -av"
		2 "|Squaddie:SkeletonGroup|Squaddie:Attach_RootMotion|Squaddie:Hips_Skel|Squaddie:Spine1_Skel|Squaddie:Spine2_Skel|Squaddie:LeftClav_Skel|Squaddie:LeftUpperArm_Skel" 
		"translateZ" " -av"
		2 "|Squaddie:SkeletonGroup|Squaddie:Attach_RootMotion|Squaddie:Hips_Skel|Squaddie:Spine1_Skel|Squaddie:Spine2_Skel|Squaddie:LeftClav_Skel|Squaddie:LeftUpperArm_Skel" 
		"rotate" " -type \"double3\" 37.29512124645764004 17.6980129466457683 7.15621772869855732"
		
		2 "|Squaddie:SkeletonGroup|Squaddie:Attach_RootMotion|Squaddie:Hips_Skel|Squaddie:Spine1_Skel|Squaddie:Spine2_Skel|Squaddie:LeftClav_Skel|Squaddie:LeftUpperArm_Skel|Squaddie:LeftLowerArm_Skel" 
		"rotate" " -type \"double3\" 0 -21.96648860650179458 0"
		5 4 "SquaddieRN" "|Squaddie:Root_Control.visibility" "SquaddieRN.placeHolderList[281]" 
		""
		5 4 "SquaddieRN" "|Squaddie:Root_Control.translateX" "SquaddieRN.placeHolderList[282]" 
		""
		5 4 "SquaddieRN" "|Squaddie:Root_Control.translateY" "SquaddieRN.placeHolderList[283]" 
		""
		5 4 "SquaddieRN" "|Squaddie:Root_Control.translateZ" "SquaddieRN.placeHolderList[284]" 
		""
		5 4 "SquaddieRN" "|Squaddie:Root_Control.rotateX" "SquaddieRN.placeHolderList[285]" 
		""
		5 4 "SquaddieRN" "|Squaddie:Root_Control.rotateY" "SquaddieRN.placeHolderList[286]" 
		""
		5 4 "SquaddieRN" "|Squaddie:Root_Control.rotateZ" "SquaddieRN.placeHolderList[287]" 
		""
		5 4 "SquaddieRN" "|Squaddie:Root_Control.scaleX" "SquaddieRN.placeHolderList[288]" 
		""
		5 4 "SquaddieRN" "|Squaddie:Root_Control.scaleY" "SquaddieRN.placeHolderList[289]" 
		""
		5 4 "SquaddieRN" "|Squaddie:Root_Control.scaleZ" "SquaddieRN.placeHolderList[290]" 
		""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control.translateX" 
		"SquaddieRN.placeHolderList[291]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control.translateY" 
		"SquaddieRN.placeHolderList[292]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control.translateZ" 
		"SquaddieRN.placeHolderList[293]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control.rotateX" 
		"SquaddieRN.placeHolderList[294]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control.rotateY" 
		"SquaddieRN.placeHolderList[295]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control.rotateZ" 
		"SquaddieRN.placeHolderList[296]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control.scaleX" 
		"SquaddieRN.placeHolderList[297]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control.scaleY" 
		"SquaddieRN.placeHolderList[298]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control.scaleZ" 
		"SquaddieRN.placeHolderList[299]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control.visibility" 
		"SquaddieRN.placeHolderList[300]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control.translateX" 
		"SquaddieRN.placeHolderList[301]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control.translateY" 
		"SquaddieRN.placeHolderList[302]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control.translateZ" 
		"SquaddieRN.placeHolderList[303]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control.rotateX" 
		"SquaddieRN.placeHolderList[304]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control.rotateY" 
		"SquaddieRN.placeHolderList[305]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control.rotateZ" 
		"SquaddieRN.placeHolderList[306]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control.scaleX" 
		"SquaddieRN.placeHolderList[307]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control.scaleY" 
		"SquaddieRN.placeHolderList[308]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control.scaleZ" 
		"SquaddieRN.placeHolderList[309]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control.visibility" 
		"SquaddieRN.placeHolderList[310]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control.rotateX" 
		"SquaddieRN.placeHolderList[311]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control.rotateY" 
		"SquaddieRN.placeHolderList[312]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control.rotateZ" 
		"SquaddieRN.placeHolderList[313]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control.visibility" 
		"SquaddieRN.placeHolderList[314]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control.translateX" 
		"SquaddieRN.placeHolderList[315]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control.translateY" 
		"SquaddieRN.placeHolderList[316]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control.translateZ" 
		"SquaddieRN.placeHolderList[317]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control.scaleX" 
		"SquaddieRN.placeHolderList[318]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control.scaleY" 
		"SquaddieRN.placeHolderList[319]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control.scaleZ" 
		"SquaddieRN.placeHolderList[320]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control.rotateX" 
		"SquaddieRN.placeHolderList[321]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control.rotateY" 
		"SquaddieRN.placeHolderList[322]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control.rotateZ" 
		"SquaddieRN.placeHolderList[323]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control.visibility" 
		"SquaddieRN.placeHolderList[324]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control.translateX" 
		"SquaddieRN.placeHolderList[325]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control.translateY" 
		"SquaddieRN.placeHolderList[326]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control.translateZ" 
		"SquaddieRN.placeHolderList[327]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control.scaleX" 
		"SquaddieRN.placeHolderList[328]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control.scaleY" 
		"SquaddieRN.placeHolderList[329]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control.scaleZ" 
		"SquaddieRN.placeHolderList[330]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightShoulder_Control.rotateX" 
		"SquaddieRN.placeHolderList[331]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightShoulder_Control.rotateY" 
		"SquaddieRN.placeHolderList[332]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightShoulder_Control.rotateZ" 
		"SquaddieRN.placeHolderList[333]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightShoulder_Control.visibility" 
		"SquaddieRN.placeHolderList[334]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightShoulder_Control.translateX" 
		"SquaddieRN.placeHolderList[335]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightShoulder_Control.translateY" 
		"SquaddieRN.placeHolderList[336]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightShoulder_Control.translateZ" 
		"SquaddieRN.placeHolderList[337]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightShoulder_Control.scaleX" 
		"SquaddieRN.placeHolderList[338]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightShoulder_Control.scaleY" 
		"SquaddieRN.placeHolderList[339]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightShoulder_Control.scaleZ" 
		"SquaddieRN.placeHolderList[340]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:Neck_Control.rotateX" 
		"SquaddieRN.placeHolderList[341]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:Neck_Control.rotateY" 
		"SquaddieRN.placeHolderList[342]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:Neck_Control.rotateZ" 
		"SquaddieRN.placeHolderList[343]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:Neck_Control.visibility" 
		"SquaddieRN.placeHolderList[344]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:Neck_Control.translateX" 
		"SquaddieRN.placeHolderList[345]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:Neck_Control.translateY" 
		"SquaddieRN.placeHolderList[346]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:Neck_Control.translateZ" 
		"SquaddieRN.placeHolderList[347]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:Neck_Control.scaleX" 
		"SquaddieRN.placeHolderList[348]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:Neck_Control.scaleY" 
		"SquaddieRN.placeHolderList[349]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:Neck_Control.scaleZ" 
		"SquaddieRN.placeHolderList[350]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:Neck_Control|Squaddie:Head_Control.rotateX" 
		"SquaddieRN.placeHolderList[351]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:Neck_Control|Squaddie:Head_Control.rotateY" 
		"SquaddieRN.placeHolderList[352]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:Neck_Control|Squaddie:Head_Control.rotateZ" 
		"SquaddieRN.placeHolderList[353]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:Neck_Control|Squaddie:Head_Control.visibility" 
		"SquaddieRN.placeHolderList[354]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:Neck_Control|Squaddie:Head_Control.translateX" 
		"SquaddieRN.placeHolderList[355]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:Neck_Control|Squaddie:Head_Control.translateY" 
		"SquaddieRN.placeHolderList[356]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:Neck_Control|Squaddie:Head_Control.translateZ" 
		"SquaddieRN.placeHolderList[357]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:Neck_Control|Squaddie:Head_Control.scaleX" 
		"SquaddieRN.placeHolderList[358]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:Neck_Control|Squaddie:Head_Control.scaleY" 
		"SquaddieRN.placeHolderList[359]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:Neck_Control|Squaddie:Head_Control.scaleZ" 
		"SquaddieRN.placeHolderList[360]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftShoulder_Control.rotateX" 
		"SquaddieRN.placeHolderList[361]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftShoulder_Control.rotateY" 
		"SquaddieRN.placeHolderList[362]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftShoulder_Control.rotateZ" 
		"SquaddieRN.placeHolderList[363]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftShoulder_Control.visibility" 
		"SquaddieRN.placeHolderList[364]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftShoulder_Control.translateX" 
		"SquaddieRN.placeHolderList[365]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftShoulder_Control.translateY" 
		"SquaddieRN.placeHolderList[366]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftShoulder_Control.translateZ" 
		"SquaddieRN.placeHolderList[367]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftShoulder_Control.scaleX" 
		"SquaddieRN.placeHolderList[368]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftShoulder_Control.scaleY" 
		"SquaddieRN.placeHolderList[369]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftShoulder_Control.scaleZ" 
		"SquaddieRN.placeHolderList[370]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightElbow_Control.translateX" 
		"SquaddieRN.placeHolderList[371]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightElbow_Control.translateY" 
		"SquaddieRN.placeHolderList[372]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightElbow_Control.translateZ" 
		"SquaddieRN.placeHolderList[373]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightElbow_Control.visibility" 
		"SquaddieRN.placeHolderList[374]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightElbow_Control.rotateX" 
		"SquaddieRN.placeHolderList[375]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightElbow_Control.rotateY" 
		"SquaddieRN.placeHolderList[376]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightElbow_Control.rotateZ" 
		"SquaddieRN.placeHolderList[377]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightElbow_Control.scaleX" 
		"SquaddieRN.placeHolderList[378]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightElbow_Control.scaleY" 
		"SquaddieRN.placeHolderList[379]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightElbow_Control.scaleZ" 
		"SquaddieRN.placeHolderList[380]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftElbow_Control.translateX" 
		"SquaddieRN.placeHolderList[381]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftElbow_Control.translateY" 
		"SquaddieRN.placeHolderList[382]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftElbow_Control.translateZ" 
		"SquaddieRN.placeHolderList[383]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftElbow_Control.visibility" 
		"SquaddieRN.placeHolderList[384]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftElbow_Control.rotateX" 
		"SquaddieRN.placeHolderList[385]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftElbow_Control.rotateY" 
		"SquaddieRN.placeHolderList[386]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftElbow_Control.rotateZ" 
		"SquaddieRN.placeHolderList[387]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftElbow_Control.scaleX" 
		"SquaddieRN.placeHolderList[388]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftElbow_Control.scaleY" 
		"SquaddieRN.placeHolderList[389]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftElbow_Control.scaleZ" 
		"SquaddieRN.placeHolderList[390]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightArmTwist_Control.visibility" 
		"SquaddieRN.placeHolderList[391]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightArmTwist_Control.translateX" 
		"SquaddieRN.placeHolderList[392]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightArmTwist_Control.translateY" 
		"SquaddieRN.placeHolderList[393]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightArmTwist_Control.translateZ" 
		"SquaddieRN.placeHolderList[394]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightArmTwist_Control.rotateX" 
		"SquaddieRN.placeHolderList[395]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightArmTwist_Control.rotateY" 
		"SquaddieRN.placeHolderList[396]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightArmTwist_Control.rotateZ" 
		"SquaddieRN.placeHolderList[397]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightArmTwist_Control.scaleX" 
		"SquaddieRN.placeHolderList[398]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightArmTwist_Control.scaleY" 
		"SquaddieRN.placeHolderList[399]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightArmTwist_Control.scaleZ" 
		"SquaddieRN.placeHolderList[400]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftArmTwist_Control.visibility" 
		"SquaddieRN.placeHolderList[401]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftArmTwist_Control.translateX" 
		"SquaddieRN.placeHolderList[402]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftArmTwist_Control.translateY" 
		"SquaddieRN.placeHolderList[403]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftArmTwist_Control.translateZ" 
		"SquaddieRN.placeHolderList[404]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftArmTwist_Control.rotateX" 
		"SquaddieRN.placeHolderList[405]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftArmTwist_Control.rotateY" 
		"SquaddieRN.placeHolderList[406]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftArmTwist_Control.rotateZ" 
		"SquaddieRN.placeHolderList[407]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftArmTwist_Control.scaleX" 
		"SquaddieRN.placeHolderList[408]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftArmTwist_Control.scaleY" 
		"SquaddieRN.placeHolderList[409]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftArmTwist_Control.scaleZ" 
		"SquaddieRN.placeHolderList[410]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightHand_Control.rotateX" 
		"SquaddieRN.placeHolderList[411]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightHand_Control.rotateY" 
		"SquaddieRN.placeHolderList[412]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightHand_Control.rotateZ" 
		"SquaddieRN.placeHolderList[413]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightHand_Control.visibility" 
		"SquaddieRN.placeHolderList[414]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightHand_Control.translateX" 
		"SquaddieRN.placeHolderList[415]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightHand_Control.translateY" 
		"SquaddieRN.placeHolderList[416]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightHand_Control.translateZ" 
		"SquaddieRN.placeHolderList[417]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightHand_Control.scaleX" 
		"SquaddieRN.placeHolderList[418]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightHand_Control.scaleY" 
		"SquaddieRN.placeHolderList[419]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightHand_Control.scaleZ" 
		"SquaddieRN.placeHolderList[420]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightHand_Control|Squaddie:RightFinders_Control.Grip" 
		"SquaddieRN.placeHolderList[421]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightHand_Control|Squaddie:RightFinders_Control.visibility" 
		"SquaddieRN.placeHolderList[422]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightHand_Control|Squaddie:RightFinders_Control.translateX" 
		"SquaddieRN.placeHolderList[423]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightHand_Control|Squaddie:RightFinders_Control.translateY" 
		"SquaddieRN.placeHolderList[424]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightHand_Control|Squaddie:RightFinders_Control.translateZ" 
		"SquaddieRN.placeHolderList[425]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightHand_Control|Squaddie:RightFinders_Control.rotateX" 
		"SquaddieRN.placeHolderList[426]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightHand_Control|Squaddie:RightFinders_Control.rotateY" 
		"SquaddieRN.placeHolderList[427]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightHand_Control|Squaddie:RightFinders_Control.rotateZ" 
		"SquaddieRN.placeHolderList[428]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightHand_Control|Squaddie:RightFinders_Control.scaleX" 
		"SquaddieRN.placeHolderList[429]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightHand_Control|Squaddie:RightFinders_Control.scaleY" 
		"SquaddieRN.placeHolderList[430]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:RightHand_Control|Squaddie:RightFinders_Control.scaleZ" 
		"SquaddieRN.placeHolderList[431]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftHand_Control.rotateX" 
		"SquaddieRN.placeHolderList[432]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftHand_Control.rotateY" 
		"SquaddieRN.placeHolderList[433]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftHand_Control.rotateZ" 
		"SquaddieRN.placeHolderList[434]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftHand_Control.visibility" 
		"SquaddieRN.placeHolderList[435]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftHand_Control.translateX" 
		"SquaddieRN.placeHolderList[436]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftHand_Control.translateY" 
		"SquaddieRN.placeHolderList[437]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftHand_Control.translateZ" 
		"SquaddieRN.placeHolderList[438]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftHand_Control.scaleX" 
		"SquaddieRN.placeHolderList[439]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftHand_Control.scaleY" 
		"SquaddieRN.placeHolderList[440]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftHand_Control.scaleZ" 
		"SquaddieRN.placeHolderList[441]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftHand_Control|Squaddie:LeftFingers_Control.Grip" 
		"SquaddieRN.placeHolderList[442]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftHand_Control|Squaddie:LeftFingers_Control.visibility" 
		"SquaddieRN.placeHolderList[443]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftHand_Control|Squaddie:LeftFingers_Control.translateX" 
		"SquaddieRN.placeHolderList[444]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftHand_Control|Squaddie:LeftFingers_Control.translateY" 
		"SquaddieRN.placeHolderList[445]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftHand_Control|Squaddie:LeftFingers_Control.translateZ" 
		"SquaddieRN.placeHolderList[446]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftHand_Control|Squaddie:LeftFingers_Control.rotateX" 
		"SquaddieRN.placeHolderList[447]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftHand_Control|Squaddie:LeftFingers_Control.rotateY" 
		"SquaddieRN.placeHolderList[448]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftHand_Control|Squaddie:LeftFingers_Control.rotateZ" 
		"SquaddieRN.placeHolderList[449]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftHand_Control|Squaddie:LeftFingers_Control.scaleX" 
		"SquaddieRN.placeHolderList[450]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftHand_Control|Squaddie:LeftFingers_Control.scaleY" 
		"SquaddieRN.placeHolderList[451]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftHand_Control|Squaddie:LeftFingers_Control.scaleZ" 
		"SquaddieRN.placeHolderList[452]" ""
		5 3 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftHand_Control|Squaddie:ikHandle3.message" 
		"SquaddieRN.placeHolderList[453]" ""
		5 3 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:Spine1_Control|Squaddie:Spine2_Control|Squaddie:LeftHand_Control|Squaddie:ikHandle3|Squaddie:ikHandle3_poleVectorConstraint1.message" 
		"SquaddieRN.placeHolderList[454]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:LeftHip_Control.translateX" 
		"SquaddieRN.placeHolderList[455]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:LeftHip_Control.translateY" 
		"SquaddieRN.placeHolderList[456]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:LeftHip_Control.translateZ" 
		"SquaddieRN.placeHolderList[457]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:LeftHip_Control.visibility" 
		"SquaddieRN.placeHolderList[458]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:LeftHip_Control.rotateX" 
		"SquaddieRN.placeHolderList[459]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:LeftHip_Control.rotateY" 
		"SquaddieRN.placeHolderList[460]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:LeftHip_Control.rotateZ" 
		"SquaddieRN.placeHolderList[461]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:LeftHip_Control.scaleX" 
		"SquaddieRN.placeHolderList[462]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:LeftHip_Control.scaleY" 
		"SquaddieRN.placeHolderList[463]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:LeftHip_Control.scaleZ" 
		"SquaddieRN.placeHolderList[464]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:RightHip_Control.translateX" 
		"SquaddieRN.placeHolderList[465]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:RightHip_Control.translateY" 
		"SquaddieRN.placeHolderList[466]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:RightHip_Control.translateZ" 
		"SquaddieRN.placeHolderList[467]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:RightHip_Control.visibility" 
		"SquaddieRN.placeHolderList[468]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:RightHip_Control.rotateX" 
		"SquaddieRN.placeHolderList[469]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:RightHip_Control.rotateY" 
		"SquaddieRN.placeHolderList[470]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:RightHip_Control.rotateZ" 
		"SquaddieRN.placeHolderList[471]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:RightHip_Control.scaleX" 
		"SquaddieRN.placeHolderList[472]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:RightHip_Control.scaleY" 
		"SquaddieRN.placeHolderList[473]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RootMotion_Control|Squaddie:Hips_Control|Squaddie:RightHip_Control.scaleZ" 
		"SquaddieRN.placeHolderList[474]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RightFoot_Control.rotateX" 
		"SquaddieRN.placeHolderList[475]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RightFoot_Control.rotateY" 
		"SquaddieRN.placeHolderList[476]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RightFoot_Control.rotateZ" 
		"SquaddieRN.placeHolderList[477]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RightFoot_Control.visibility" 
		"SquaddieRN.placeHolderList[478]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RightFoot_Control.translateX" 
		"SquaddieRN.placeHolderList[479]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RightFoot_Control.translateY" 
		"SquaddieRN.placeHolderList[480]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RightFoot_Control.translateZ" 
		"SquaddieRN.placeHolderList[481]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RightFoot_Control.scaleX" 
		"SquaddieRN.placeHolderList[482]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RightFoot_Control.scaleY" 
		"SquaddieRN.placeHolderList[483]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RightFoot_Control.scaleZ" 
		"SquaddieRN.placeHolderList[484]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RightFoot_Control|Squaddie:RightToes_Control.rotateX" 
		"SquaddieRN.placeHolderList[485]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RightFoot_Control|Squaddie:RightToes_Control.rotateY" 
		"SquaddieRN.placeHolderList[486]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RightFoot_Control|Squaddie:RightToes_Control.rotateZ" 
		"SquaddieRN.placeHolderList[487]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RightFoot_Control|Squaddie:RightToes_Control.visibility" 
		"SquaddieRN.placeHolderList[488]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RightFoot_Control|Squaddie:RightToes_Control.translateX" 
		"SquaddieRN.placeHolderList[489]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RightFoot_Control|Squaddie:RightToes_Control.translateY" 
		"SquaddieRN.placeHolderList[490]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RightFoot_Control|Squaddie:RightToes_Control.translateZ" 
		"SquaddieRN.placeHolderList[491]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RightFoot_Control|Squaddie:RightToes_Control.scaleX" 
		"SquaddieRN.placeHolderList[492]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RightFoot_Control|Squaddie:RightToes_Control.scaleY" 
		"SquaddieRN.placeHolderList[493]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RightFoot_Control|Squaddie:RightToes_Control.scaleZ" 
		"SquaddieRN.placeHolderList[494]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RightFoot_Control|Squaddie:RightKnee_Control.translateX" 
		"SquaddieRN.placeHolderList[495]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RightFoot_Control|Squaddie:RightKnee_Control.translateY" 
		"SquaddieRN.placeHolderList[496]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RightFoot_Control|Squaddie:RightKnee_Control.translateZ" 
		"SquaddieRN.placeHolderList[497]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RightFoot_Control|Squaddie:RightKnee_Control.visibility" 
		"SquaddieRN.placeHolderList[498]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RightFoot_Control|Squaddie:RightKnee_Control.rotateX" 
		"SquaddieRN.placeHolderList[499]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RightFoot_Control|Squaddie:RightKnee_Control.rotateY" 
		"SquaddieRN.placeHolderList[500]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RightFoot_Control|Squaddie:RightKnee_Control.rotateZ" 
		"SquaddieRN.placeHolderList[501]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RightFoot_Control|Squaddie:RightKnee_Control.scaleX" 
		"SquaddieRN.placeHolderList[502]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RightFoot_Control|Squaddie:RightKnee_Control.scaleY" 
		"SquaddieRN.placeHolderList[503]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:RightFoot_Control|Squaddie:RightKnee_Control.scaleZ" 
		"SquaddieRN.placeHolderList[504]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:LeftFoot_Control.rotateX" 
		"SquaddieRN.placeHolderList[505]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:LeftFoot_Control.rotateY" 
		"SquaddieRN.placeHolderList[506]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:LeftFoot_Control.rotateZ" 
		"SquaddieRN.placeHolderList[507]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:LeftFoot_Control.visibility" 
		"SquaddieRN.placeHolderList[508]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:LeftFoot_Control.translateX" 
		"SquaddieRN.placeHolderList[509]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:LeftFoot_Control.translateY" 
		"SquaddieRN.placeHolderList[510]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:LeftFoot_Control.translateZ" 
		"SquaddieRN.placeHolderList[511]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:LeftFoot_Control.scaleX" 
		"SquaddieRN.placeHolderList[512]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:LeftFoot_Control.scaleY" 
		"SquaddieRN.placeHolderList[513]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:LeftFoot_Control.scaleZ" 
		"SquaddieRN.placeHolderList[514]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:LeftFoot_Control|Squaddie:LeftToes_Control.rotateX" 
		"SquaddieRN.placeHolderList[515]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:LeftFoot_Control|Squaddie:LeftToes_Control.rotateY" 
		"SquaddieRN.placeHolderList[516]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:LeftFoot_Control|Squaddie:LeftToes_Control.rotateZ" 
		"SquaddieRN.placeHolderList[517]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:LeftFoot_Control|Squaddie:LeftToes_Control.visibility" 
		"SquaddieRN.placeHolderList[518]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:LeftFoot_Control|Squaddie:LeftToes_Control.translateX" 
		"SquaddieRN.placeHolderList[519]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:LeftFoot_Control|Squaddie:LeftToes_Control.translateY" 
		"SquaddieRN.placeHolderList[520]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:LeftFoot_Control|Squaddie:LeftToes_Control.translateZ" 
		"SquaddieRN.placeHolderList[521]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:LeftFoot_Control|Squaddie:LeftToes_Control.scaleX" 
		"SquaddieRN.placeHolderList[522]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:LeftFoot_Control|Squaddie:LeftToes_Control.scaleY" 
		"SquaddieRN.placeHolderList[523]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:LeftFoot_Control|Squaddie:LeftToes_Control.scaleZ" 
		"SquaddieRN.placeHolderList[524]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:LeftFoot_Control|Squaddie:LeftKnee_Control.translateX" 
		"SquaddieRN.placeHolderList[525]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:LeftFoot_Control|Squaddie:LeftKnee_Control.translateY" 
		"SquaddieRN.placeHolderList[526]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:LeftFoot_Control|Squaddie:LeftKnee_Control.translateZ" 
		"SquaddieRN.placeHolderList[527]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:LeftFoot_Control|Squaddie:LeftKnee_Control.visibility" 
		"SquaddieRN.placeHolderList[528]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:LeftFoot_Control|Squaddie:LeftKnee_Control.rotateX" 
		"SquaddieRN.placeHolderList[529]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:LeftFoot_Control|Squaddie:LeftKnee_Control.rotateY" 
		"SquaddieRN.placeHolderList[530]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:LeftFoot_Control|Squaddie:LeftKnee_Control.rotateZ" 
		"SquaddieRN.placeHolderList[531]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:LeftFoot_Control|Squaddie:LeftKnee_Control.scaleX" 
		"SquaddieRN.placeHolderList[532]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:LeftFoot_Control|Squaddie:LeftKnee_Control.scaleY" 
		"SquaddieRN.placeHolderList[533]" ""
		5 4 "SquaddieRN" "|Squaddie:Root_Control|Squaddie:LeftFoot_Control|Squaddie:LeftKnee_Control.scaleZ" 
		"SquaddieRN.placeHolderList[534]" ""
		5 3 "SquaddieRN" "|Squaddie:GeoGroup|Squaddie:Body|Squaddie:BodyShape.message" 
		"SquaddieRN.placeHolderList[535]" ""
		5 3 "SquaddieRN" "|Squaddie:SkeletonGroup|Squaddie:Attach_RootMotion|Squaddie:Hips_Skel|Squaddie:Spine1_Skel|Squaddie:Spine2_Skel|Squaddie:RightClav_Skel|Squaddie:RightUpperArm_Skel|Squaddie:RightLowerArm_Skel|Squaddie:RightHand_Skel|Squaddie:Attach_RightHand.parentMatrix" 
		"SquaddieRN.placeHolderList[536]" ""
		5 3 "SquaddieRN" "|Squaddie:SkeletonGroup|Squaddie:Attach_RootMotion|Squaddie:Hips_Skel|Squaddie:Spine1_Skel|Squaddie:Spine2_Skel|Squaddie:RightClav_Skel|Squaddie:RightUpperArm_Skel|Squaddie:RightLowerArm_Skel|Squaddie:RightHand_Skel|Squaddie:Attach_RightHand.parentMatrix" 
		"SquaddieRN.placeHolderList[537]" ""
		5 3 "SquaddieRN" "|Squaddie:SkeletonGroup|Squaddie:Attach_RootMotion|Squaddie:Hips_Skel|Squaddie:Spine1_Skel|Squaddie:Spine2_Skel|Squaddie:RightClav_Skel|Squaddie:RightUpperArm_Skel|Squaddie:RightLowerArm_Skel|Squaddie:RightHand_Skel|Squaddie:Attach_RightHand.translate" 
		"SquaddieRN.placeHolderList[538]" ""
		5 3 "SquaddieRN" "|Squaddie:SkeletonGroup|Squaddie:Attach_RootMotion|Squaddie:Hips_Skel|Squaddie:Spine1_Skel|Squaddie:Spine2_Skel|Squaddie:RightClav_Skel|Squaddie:RightUpperArm_Skel|Squaddie:RightLowerArm_Skel|Squaddie:RightHand_Skel|Squaddie:Attach_RightHand.translate" 
		"SquaddieRN.placeHolderList[539]" ""
		5 3 "SquaddieRN" "|Squaddie:SkeletonGroup|Squaddie:Attach_RootMotion|Squaddie:Hips_Skel|Squaddie:Spine1_Skel|Squaddie:Spine2_Skel|Squaddie:RightClav_Skel|Squaddie:RightUpperArm_Skel|Squaddie:RightLowerArm_Skel|Squaddie:RightHand_Skel|Squaddie:Attach_RightHand.rotatePivot" 
		"SquaddieRN.placeHolderList[540]" ""
		5 3 "SquaddieRN" "|Squaddie:SkeletonGroup|Squaddie:Attach_RootMotion|Squaddie:Hips_Skel|Squaddie:Spine1_Skel|Squaddie:Spine2_Skel|Squaddie:RightClav_Skel|Squaddie:RightUpperArm_Skel|Squaddie:RightLowerArm_Skel|Squaddie:RightHand_Skel|Squaddie:Attach_RightHand.rotatePivot" 
		"SquaddieRN.placeHolderList[541]" ""
		5 3 "SquaddieRN" "|Squaddie:SkeletonGroup|Squaddie:Attach_RootMotion|Squaddie:Hips_Skel|Squaddie:Spine1_Skel|Squaddie:Spine2_Skel|Squaddie:RightClav_Skel|Squaddie:RightUpperArm_Skel|Squaddie:RightLowerArm_Skel|Squaddie:RightHand_Skel|Squaddie:Attach_RightHand.rotatePivotTranslate" 
		"SquaddieRN.placeHolderList[542]" ""
		5 3 "SquaddieRN" "|Squaddie:SkeletonGroup|Squaddie:Attach_RootMotion|Squaddie:Hips_Skel|Squaddie:Spine1_Skel|Squaddie:Spine2_Skel|Squaddie:RightClav_Skel|Squaddie:RightUpperArm_Skel|Squaddie:RightLowerArm_Skel|Squaddie:RightHand_Skel|Squaddie:Attach_RightHand.rotatePivotTranslate" 
		"SquaddieRN.placeHolderList[543]" ""
		5 3 "SquaddieRN" "|Squaddie:SkeletonGroup|Squaddie:Attach_RootMotion|Squaddie:Hips_Skel|Squaddie:Spine1_Skel|Squaddie:Spine2_Skel|Squaddie:RightClav_Skel|Squaddie:RightUpperArm_Skel|Squaddie:RightLowerArm_Skel|Squaddie:RightHand_Skel|Squaddie:Attach_RightHand.rotate" 
		"SquaddieRN.placeHolderList[544]" ""
		5 3 "SquaddieRN" "|Squaddie:SkeletonGroup|Squaddie:Attach_RootMotion|Squaddie:Hips_Skel|Squaddie:Spine1_Skel|Squaddie:Spine2_Skel|Squaddie:RightClav_Skel|Squaddie:RightUpperArm_Skel|Squaddie:RightLowerArm_Skel|Squaddie:RightHand_Skel|Squaddie:Attach_RightHand.rotate" 
		"SquaddieRN.placeHolderList[545]" ""
		5 3 "SquaddieRN" "|Squaddie:SkeletonGroup|Squaddie:Attach_RootMotion|Squaddie:Hips_Skel|Squaddie:Spine1_Skel|Squaddie:Spine2_Skel|Squaddie:RightClav_Skel|Squaddie:RightUpperArm_Skel|Squaddie:RightLowerArm_Skel|Squaddie:RightHand_Skel|Squaddie:Attach_RightHand.rotateOrder" 
		"SquaddieRN.placeHolderList[546]" ""
		5 3 "SquaddieRN" "|Squaddie:SkeletonGroup|Squaddie:Attach_RootMotion|Squaddie:Hips_Skel|Squaddie:Spine1_Skel|Squaddie:Spine2_Skel|Squaddie:RightClav_Skel|Squaddie:RightUpperArm_Skel|Squaddie:RightLowerArm_Skel|Squaddie:RightHand_Skel|Squaddie:Attach_RightHand.rotateOrder" 
		"SquaddieRN.placeHolderList[547]" ""
		5 3 "SquaddieRN" "|Squaddie:SkeletonGroup|Squaddie:Attach_RootMotion|Squaddie:Hips_Skel|Squaddie:Spine1_Skel|Squaddie:Spine2_Skel|Squaddie:RightClav_Skel|Squaddie:RightUpperArm_Skel|Squaddie:RightLowerArm_Skel|Squaddie:RightHand_Skel|Squaddie:Attach_RightHand.scale" 
		"SquaddieRN.placeHolderList[548]" ""
		5 3 "SquaddieRN" "|Squaddie:SkeletonGroup|Squaddie:Attach_RootMotion|Squaddie:Hips_Skel|Squaddie:Spine1_Skel|Squaddie:Spine2_Skel|Squaddie:RightClav_Skel|Squaddie:RightUpperArm_Skel|Squaddie:RightLowerArm_Skel|Squaddie:RightHand_Skel|Squaddie:Attach_RightHand.scale" 
		"SquaddieRN.placeHolderList[549]" ""
		5 3 "SquaddieRN" "|Squaddie:SkeletonGroup|Squaddie:Attach_RootMotion|Squaddie:Hips_Skel|Squaddie:Spine1_Skel|Squaddie:Spine2_Skel|Squaddie:LeftClav_Skel.message" 
		"SquaddieRN.placeHolderList[550]" ""
		5 3 "SquaddieRN" "|Squaddie:SkeletonGroup|Squaddie:Attach_RootMotion|Squaddie:Hips_Skel|Squaddie:Spine1_Skel|Squaddie:Spine2_Skel|Squaddie:LeftClav_Skel|Squaddie:LeftUpperArm_Skel.message" 
		"SquaddieRN.placeHolderList[551]" ""
		5 3 "SquaddieRN" "|Squaddie:SkeletonGroup|Squaddie:Attach_RootMotion|Squaddie:Hips_Skel|Squaddie:Spine1_Skel|Squaddie:Spine2_Skel|Squaddie:LeftClav_Skel|Squaddie:LeftUpperArm_Skel|Squaddie:LeftLowerArm_Skel.message" 
		"SquaddieRN.placeHolderList[552]" ""
		5 3 "SquaddieRN" "Squaddie:Skeleton_Layer.message" "SquaddieRN.placeHolderList[553]" 
		""
		5 3 "SquaddieRN" "Squaddie:skinCluster1.message" "SquaddieRN.placeHolderList[554]" 
		""
		5 3 "SquaddieRN" "Squaddie:bindPose1.message" "SquaddieRN.placeHolderList[555]" 
		"";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "91E4ACE4-CA41-A658-3640-FD848DB2ED7C";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n"
		+ "            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n"
		+ "            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 473\n            -height 362\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n"
		+ "            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n"
		+ "            -width 473\n            -height 362\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -editorChanged \"CgAbBlastPanelOptChangeCallback\" \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n"
		+ "            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n"
		+ "            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n"
		+ "            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 473\n            -height 362\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n"
		+ "            -editorChanged \"CgAbBlastPanelOptChangeCallback\" \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"all\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 0\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 1\n            -captureSequenceNumber -1\n            -width 953\n            -height 768\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n"
		+ "            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n"
		+ "            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 1\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n"
		+ "            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 0\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n"
		+ "            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n"
		+ "                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n"
		+ "                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n"
		+ "                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -valueLinesToggle 0\n                -outliner \"graphEditor1OutlineEd\" \n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n"
		+ "                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n"
		+ "                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n"
		+ "                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n"
		+ "                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n"
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
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 265 -ast 1 -aet 265 ";
	setAttr ".st" 6;
createNode gameFbxExporter -n "gameExporterPreset1";
	rename -uid "F098805B-5D4F-825D-5992-79884CA78C73";
	setAttr ".pn" -type "string" "Model Default";
	setAttr ".ils" yes;
	setAttr ".esi" 3;
	setAttr ".ssn" -type "string" "Squaddie:ExportSet";
	setAttr ".ebm" yes;
	setAttr ".inc" yes;
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
	setAttr -s 9 ".ac";
	setAttr ".ac[0].acn" -type "string" "SideArm_Idle01";
	setAttr ".ac[0].acs" 1;
	setAttr ".ac[0].ace" 120;
	setAttr ".ac[1].acn" -type "string" "SideArm_Aim01";
	setAttr ".ac[1].acs" 130;
	setAttr ".ac[1].ace" 150;
	setAttr ".ac[2].acn" -type "string" "SideArm_IdleToAim";
	setAttr ".ac[2].acs" 120;
	setAttr ".ac[2].ace" 130;
	setAttr ".ac[3].acn" -type "string" "SideArm_AimToIdle";
	setAttr ".ac[3].acs" 150;
	setAttr ".ac[3].ace" 160;
	setAttr ".ac[4].acn" -type "string" "SideArm_Aim_Turn_Left";
	setAttr ".ac[4].acs" 170;
	setAttr ".ac[4].ace" 180;
	setAttr ".ac[5].acn" -type "string" "SideArm_Aim_Turn_Right";
	setAttr ".ac[5].acs" 185;
	setAttr ".ac[5].ace" 195;
	setAttr ".ac[6].acn" -type "string" "SideArm_Idle_Turn_Left";
	setAttr ".ac[6].acs" 200;
	setAttr ".ac[6].ace" 210;
	setAttr ".ac[7].acn" -type "string" "SideArm_Idle_Turn_Right";
	setAttr ".ac[7].acs" 215;
	setAttr ".ac[7].ace" 225;
	setAttr ".ac[8].acn" -type "string" "SwitchWeapon";
	setAttr ".ac[8].acs" 240;
	setAttr ".ac[8].ace" 265;
	setAttr ".ic" no;
	setAttr ".ft" 1;
	setAttr ".fv" -type "string" "FBX201800";
	setAttr ".exp" -type "string" "/Users/briancollins/Unity/DropZone/Assets/DropZone/Characters/Squaddie";
	setAttr ".exf" -type "string" "SideArm_Idles.fbx";
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
	setAttr ".re" -type "float2" 8 8 ;
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
	setAttr -s 17 ".ktv[0:16]"  0 0 1 0 20 0 120 0 130 0 150 0 160 0 170 0
		 180 0 185 0 195 0 200 0 210 0 215 0 225 0 230 0 240 0;
	setAttr -s 17 ".kit[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kot[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Root_Control_translateY";
	rename -uid "9BF2FBE1-2343-400C-7437-828943140C40";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 1 0 20 0 120 0 130 0 150 0 160 0 170 0
		 180 0 185 0 195 0 200 0 210 0 215 0 225 0 230 0 240 0;
	setAttr -s 17 ".kit[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kot[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Root_Control_translateZ";
	rename -uid "BDE8D69D-E646-2853-AB94-96846000E83B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 1 0 20 0 120 0 130 0 150 0 160 0 170 0
		 180 0 185 0 195 0 200 0 210 0 215 0 225 0 230 0 240 0;
	setAttr -s 17 ".kit[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kot[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "LeftFoot_Control_translateX";
	rename -uid "C90A741F-9743-95AB-7812-10806D03686C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 5.2968281825685324 1 5.2968281825685324
		 20 5.2968281825685324 120 5.2968281825685324 125 5.2968281825685324 128 1.8390346455704787
		 130 1.8390346455704787 150 1.8390346455704787 156 1.8390346455704787 159 5.2968281825685324
		 160 5.2968281825685324 170 1.8390346455704787 172 1.8390346455704787 176 -58.908772523989654
		 180 -57.935877335909424 185 1.8390346455704787 190 1.8390346455704787 193 18.665105626424911
		 195 18.665105626424911 200 5.2968281825685324 205 5.2968281825685324 210 -20.546266907185171
		 215 5.2968281825685324 220 5.2968281825685324 225 -18.269810395705299 230 -18.269810395705299
		 240 5.2968281825685324;
	setAttr -s 27 ".kit[0:26]"  1 1 18 18 18 18 18 18 
		1 1 1 1 18 18 1 1 18 18 1 18 18 18 18 18 18 
		18 1;
	setAttr -s 27 ".kot[0:26]"  1 1 18 18 18 18 18 18 
		1 1 1 1 18 18 1 1 18 18 1 18 18 18 18 18 18 
		18 1;
	setAttr -s 27 ".kix[0:26]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1;
	setAttr -s 27 ".kiy[0:26]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0;
	setAttr -s 27 ".kox[0:26]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1;
	setAttr -s 27 ".koy[0:26]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0;
createNode animCurveTL -n "LeftFoot_Control_translateY";
	rename -uid "463216E0-654C-ABA6-174B-22BA901159FB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 -5.6843418860808015e-14 1 -5.6843418860808015e-14
		 20 -5.6843418860808015e-14 120 -5.6843418860808015e-14 125 -5.6843418860808015e-14
		 127 7.470421477834039 128 -5.6843418860808015e-14 130 -5.6843418860808015e-14 150 -5.6843418860808015e-14
		 156 -5.6843418860808015e-14 158 7.9663344094412256 159 -5.6843418860808015e-14 160 -5.6843418860808015e-14
		 170 -5.6843418860808015e-14 172 -5.6843418860808015e-14 174 12.32129500623868 176 -5.6843418860808015e-14
		 180 -5.6843418860808015e-14 185 -5.6843418860808015e-14 190 -5.6843418860808015e-14
		 192 13.129588443807515 193 -5.6843418860808015e-14 195 -5.6843418860808015e-14 200 -5.6843418860808015e-14
		 205 -5.6843418860808015e-14 210 -5.6843418860808015e-14 215 -5.6843418860808015e-14
		 220 -5.6843418860808015e-14 223 13.291656194288686 225 -5.6843418860808015e-14 230 -5.6843418860808015e-14
		 240 -5.6843418860808015e-14;
	setAttr -s 32 ".kit[0:31]"  1 1 18 18 18 18 18 18 
		18 1 18 1 1 1 18 18 18 1 1 18 18 18 1 18 18 
		18 18 18 18 18 18 1;
	setAttr -s 32 ".kot[0:31]"  1 1 18 18 18 18 18 18 
		18 1 18 1 1 1 18 18 18 1 1 18 18 18 1 18 18 
		18 18 18 18 18 18 1;
	setAttr -s 32 ".kix[0:31]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 32 ".kiy[0:31]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 32 ".kox[0:31]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 32 ".koy[0:31]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "LeftFoot_Control_translateZ";
	rename -uid "5433778F-CB49-B7B4-B178-0C98411E04DF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 8.0071745857160437 1 8.0071745857160437
		 20 8.0071745857160437 120 8.0071745857160437 125 8.0071745857160437 128 -27.904952636673073
		 130 -27.904952636673073 150 -27.904952636673073 156 -27.904952636673073 159 8.0071745857160437
		 160 8.0071745857160437 170 -27.904952636673073 172 -27.904952636673073 176 -11.884334240171668
		 180 -11.335864796723087 185 -27.904952636673073 190 -27.904952636673073 193 30.406638055592452
		 195 30.406638055592452 200 8.0071745857160437 205 8.0071745857160437 210 -15.456367206237218
		 215 8.0071745857160437 220 8.0071745857160437 225 34.84835735896435 230 34.84835735896435
		 240 8.0071745857160437;
	setAttr -s 27 ".kit[0:26]"  1 1 18 18 18 18 18 18 
		1 1 1 1 18 18 1 1 18 18 1 18 18 18 18 18 18 
		18 1;
	setAttr -s 27 ".kot[0:26]"  1 1 18 18 18 18 18 18 
		1 1 1 1 18 18 1 1 18 18 1 18 18 18 18 18 18 
		18 1;
	setAttr -s 27 ".kix[0:26]"  1 1 1 1 1 1 1 1 1 1 1 1 1 0.10077631293101773 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 27 ".kiy[0:26]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0.99490910878935546 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 27 ".kox[0:26]"  1 1 1 1 1 1 1 1 1 1 1 1 1 0.10077631293101773 
		1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 27 ".koy[0:26]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0.99490910878935546 
		0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "LeftKnee_Control_translateX";
	rename -uid "3CDF2F9E-1241-A390-30E2-51BC599A6D12";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 1 0 20 0 120 0 130 0 150 0 160 0 170 0
		 180 0 185 0 195 0 200 0 210 0 215 0 225 0 230 0 240 0;
	setAttr -s 17 ".kit[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kot[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "LeftKnee_Control_translateY";
	rename -uid "616C8942-4F49-8720-B217-AEA96EC43C12";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 1 0 20 0 120 0 130 0 150 0 160 0 170 0
		 180 0 185 0 195 0 200 0 210 0 215 0 225 0 230 0 240 0;
	setAttr -s 17 ".kit[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kot[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "LeftKnee_Control_translateZ";
	rename -uid "47D15C4C-824B-2FB0-8A41-EDADF5421CCB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 1 0 20 0 120 0 130 0 150 0 160 0 170 0
		 180 0 185 0 195 0 200 0 210 0 215 0 225 0 230 0 240 0;
	setAttr -s 17 ".kit[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kot[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "LeftToes_Control_translateX";
	rename -uid "09528C22-3544-6316-BC94-D48101A71FDE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 1 0 20 0 120 0 130 0 150 0 160 0 170 0
		 180 0 185 0 195 0 200 0 210 0 215 0 225 0 230 0 240 0;
	setAttr -s 17 ".kit[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kot[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "LeftToes_Control_translateY";
	rename -uid "F299B1FD-9342-E456-3D90-46B83C61946A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 1 0 20 0 120 0 130 0 150 0 160 0 170 0
		 180 0 185 0 195 0 200 0 210 0 215 0 225 0 230 0 240 0;
	setAttr -s 17 ".kit[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kot[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "LeftToes_Control_translateZ";
	rename -uid "D26367B3-ED47-8EB9-BE8C-2D8CF6541566";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 1 0 20 0 120 0 130 0 150 0 160 0 170 0
		 180 0 185 0 195 0 200 0 210 0 215 0 225 0 230 0 240 0;
	setAttr -s 17 ".kit[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kot[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "RightFoot_Control_translateX";
	rename -uid "9683242C-194B-952D-AB4C-34B4B3D7410F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 25 ".ktv[0:24]"  0 -5.3889085127956662 1 -5.3889085127956662
		 20 -5.3889085127956662 120 -5.3889085127956662 122 -5.3889085127956662 125 -4.0890508628264399
		 130 -4.0890508628264399 150 -4.0890508628264399 154 -5.3889085127956662 160 -5.3889085127956662
		 170 -4.0890508628264399 174 -4.0890508628264399 178 44.275853787095059 180 44.275853787095059
		 185 -4.0890508628264399 188 -4.4233935108718399 195 -4.4233935108718399 200 -5.3889085127956662
		 205 -7.5985347678200341 210 -7.5985347678200341 215 -5.3889085127956662 220 47.382111923627818
		 225 47.382111923627818 230 47.382111923627818 240 -5.3889085127956662;
	setAttr -s 25 ".kit[0:24]"  1 1 18 18 18 18 18 18 
		1 1 1 18 18 1 1 18 1 18 18 18 18 18 18 18 1;
	setAttr -s 25 ".kot[0:24]"  1 1 18 18 18 18 18 18 
		1 1 1 18 18 1 1 18 1 18 18 18 18 18 18 18 1;
	setAttr -s 25 ".kix[0:24]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.13011222610446918 
		1 1 0.031412630783352741 1 1 1 1;
	setAttr -s 25 ".kiy[0:24]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.99149927313041408 
		0 0 0.99950650154327092 0 0 0 0;
	setAttr -s 25 ".kox[0:24]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.13011222610446918 
		1 1 0.031412630783352748 1 1 1 1;
	setAttr -s 25 ".koy[0:24]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.99149927313041419 
		0 0 0.99950650154327103 0 0 0 0;
createNode animCurveTL -n "RightFoot_Control_translateY";
	rename -uid "CEC1AEA9-4749-E93C-6681-8784975D31AA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 0 1 0 20 0 120 0 122 0 124 10.834302364640147
		 125 0 130 0 150 0 153 8.0481924981876336 154 0 160 0 170 0 174 0 176 6.9587362995163762
		 178 0 180 0 185 0 187 11.482350927276388 188 0 195 0 200 0 203 12.668032098162337
		 205 0 210 0 215 0 218 11.543506580452837 220 0 225 0 230 0 240 0;
	setAttr -s 31 ".kit[0:30]"  1 1 18 18 18 18 18 18 
		18 18 1 1 1 18 18 18 1 1 18 18 1 18 18 18 18 
		18 18 18 18 18 1;
	setAttr -s 31 ".kot[0:30]"  1 1 18 18 18 18 18 18 
		18 18 1 1 1 18 18 18 1 1 18 18 1 18 18 18 18 
		18 18 18 18 18 1;
	setAttr -s 31 ".kix[0:30]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 31 ".kiy[0:30]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 31 ".kox[0:30]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 31 ".koy[0:30]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "RightFoot_Control_translateZ";
	rename -uid "D8B7513C-314C-7E56-6F6C-89AEAB279033";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 25 ".ktv[0:24]"  0 -18.862607325398088 1 -18.862607325398088
		 20 -18.862607325398088 120 -18.862607325398088 122 -18.862607325398088 125 33.745800341582559
		 130 33.745800341582559 150 33.745800341582559 154 -18.862607325398088 160 -18.862607325398088
		 170 33.745800341582559 174 33.745800341582552 178 33.121683710598539 180 33.121683710598539
		 185 33.745800341582559 188 -14.407526694721916 195 -14.407526694721916 200 -18.862607325398088
		 205 34.249846927220844 210 34.249846927220844 215 -18.862607325398088 220 -14.610706489868235
		 225 -14.610706489868235 230 -14.610706489868235 240 -18.862607325398088;
	setAttr -s 25 ".kit[0:24]"  1 1 18 18 18 18 18 18 
		1 1 1 18 18 1 1 18 1 18 18 18 18 18 18 18 1;
	setAttr -s 25 ".kot[0:24]"  1 1 18 18 18 18 18 18 
		1 1 1 18 18 1 1 18 1 18 18 18 18 18 18 18 1;
	setAttr -s 25 ".kix[0:24]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1;
	setAttr -s 25 ".kiy[0:24]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0;
	setAttr -s 25 ".kox[0:24]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1;
	setAttr -s 25 ".koy[0:24]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0;
createNode animCurveTL -n "RightKnee_Control_translateX";
	rename -uid "4F3A8F61-5244-AF66-2202-91957AEE4AB1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 1 0 20 0 120 0 130 0 150 0 160 0 170 0
		 180 0 185 0 195 0 200 0 210 0 215 0 225 0 230 0 240 0;
	setAttr -s 17 ".kit[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kot[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "RightKnee_Control_translateY";
	rename -uid "1DC84F6E-CB49-94A5-A739-C6A04BE2CBBB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 1 0 20 0 120 0 130 0 150 0 160 0 170 0
		 180 0 185 0 195 0 200 0 210 0 215 0 225 0 230 0 240 0;
	setAttr -s 17 ".kit[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kot[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "RightKnee_Control_translateZ";
	rename -uid "7E99C7FD-3746-8F89-A426-A3A6B98A50FB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 1 0 20 0 120 0 130 0 150 0 160 0 170 0
		 180 0 185 0 195 0 200 0 210 0 215 0 225 0 230 0 240 0;
	setAttr -s 17 ".kit[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kot[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "RightToes_Control_translateX";
	rename -uid "23A30692-C845-534A-6F80-B9BD7E37F4ED";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 1 0 20 0 120 0 130 0 150 0 160 0 170 0
		 180 0 185 0 195 0 200 0 210 0 215 0 225 0 230 0 240 0;
	setAttr -s 17 ".kit[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kot[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "RightToes_Control_translateY";
	rename -uid "9BFFC7CC-0C44-693F-58B1-A088101616A6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 1 0 20 0 120 0 130 0 150 0 160 0 170 0
		 180 0 185 0 195 0 200 0 210 0 215 0 225 0 230 0 240 0;
	setAttr -s 17 ".kit[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kot[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "RightToes_Control_translateZ";
	rename -uid "C539CEAB-AB45-5DF5-8B9C-2B8A31A00235";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 1 0 20 0 120 0 130 0 150 0 160 0 170 0
		 180 0 185 0 195 0 200 0 210 0 215 0 225 0 230 0 240 0;
	setAttr -s 17 ".kit[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kot[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "RootMotion_Control_translateX";
	rename -uid "DADEDED9-9946-4B6A-E07F-0EB1EA73C8E9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 1 0 20 0 120 0 130 0 150 0 160 0 170 0
		 180 0 185 0 195 0 200 0 210 0 215 0 225 0 230 0 240 0;
	setAttr -s 17 ".kit[0:16]"  1 1 18 18 18 18 1 1 
		18 1 18 18 18 18 18 18 1;
	setAttr -s 17 ".kot[0:16]"  1 1 18 18 18 18 1 1 
		18 1 18 18 18 18 18 18 1;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "RootMotion_Control_translateY";
	rename -uid "64467B36-234D-45DE-CEE8-E097A15D8809";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 1 0 20 0 120 0 130 0 150 0 160 0 170 0
		 180 0 185 0 195 0 200 0 210 0 215 0 225 0 230 0 240 0;
	setAttr -s 17 ".kit[0:16]"  1 1 18 18 18 18 1 1 
		18 1 18 18 18 18 18 18 1;
	setAttr -s 17 ".kot[0:16]"  1 1 18 18 18 18 1 1 
		18 1 18 18 18 18 18 18 1;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "RootMotion_Control_translateZ";
	rename -uid "642B0782-A54F-8CA9-1A1B-4F8F8AB5914B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 1 0 20 0 120 0 130 0 150 0 160 0 170 0
		 180 0 185 0 195 0 200 0 210 0 215 0 225 0 230 0 240 0;
	setAttr -s 17 ".kit[0:16]"  1 1 18 18 18 18 1 1 
		18 1 18 18 18 18 18 18 1;
	setAttr -s 17 ".kot[0:16]"  1 1 18 18 18 18 1 1 
		18 1 18 18 18 18 18 18 1;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Hips_Control_translateX";
	rename -uid "2151350D-EB46-B22D-83BD-45B21F3CF9AB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 0 1 0 20 -1.0345513436524243 40 -1.2601216556418231
		 80 0.74978396852217455 100 -0.74698881863692546 120 0 130 -0.82864187957851243 150 -0.82864187957851243
		 154 -0.12241418049018726 158 -8.698854506547562 160 0 170 -0.82864187957851243 180 -0.82864187957851243
		 185 -0.82864187957851243 187 7.4837302857733121 189 -3.0018535033964322 192 -11.935584364095837
		 195 -0.82864187957851243 200 0 210 0 215 0 225 0 230 0 235 0 240 -1.0345513436524243
		 265 -1.0026655085433447;
	setAttr -s 27 ".kit[0:26]"  1 1 18 18 18 18 18 18 
		18 18 18 1 1 1 1 18 18 18 1 18 18 18 18 18 18 
		1 18;
	setAttr -s 27 ".kot[0:26]"  1 1 18 18 18 18 18 18 
		18 18 18 1 1 1 1 18 18 18 1 18 18 18 18 18 18 
		1 18;
	setAttr -s 27 ".kix[0:26]"  1 1 0.79023921201330372 1 1 1 1 1 1 1 1 
		1 1 1 1 1 0.010727533347464577 1 1 1 1 1 1 1 1 0.79023921201330372 1;
	setAttr -s 27 ".kiy[0:26]"  0 0 -0.61279848873556542 0 0 0 0 0 0 0 
		0 0 0 0 0 0 -0.99994245835861928 0 0 0 0 0 0 0 0 -0.61279848873556542 0;
	setAttr -s 27 ".kox[0:26]"  1 1 0.79023921201330372 1 1 1 1 1 1 1 1 
		1 1 1 1 1 0.010727533347464579 1 1 1 1 1 1 1 1 0.79023921201330372 1;
	setAttr -s 27 ".koy[0:26]"  0 0 -0.61279848873556553 0 0 0 0 0 0 0 
		0 0 0 0 0 0 -0.99994245835861939 0 0 0 0 0 0 0 0 -0.61279848873556553 0;
createNode animCurveTL -n "Hips_Control_translateY";
	rename -uid "0B3DA328-9846-B163-7617-2080100F0F02";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 30 ".ktv[0:29]"  0 -2.2764880848675659 1 -2.2764880848675659
		 20 -2.3052374562405227 40 -2.4505767877479006 60 -2.9594472924154687 100 -3.1170864921551651
		 120 -2.2764880848675659 122 -5.2700873893203095 124 -0.17716738043613933 127 -6.5636162930787938
		 130 -5.7628771360149926 150 -5.7628771360149926 153 -1.8864463726506155 154 -6.0383080820493991
		 156 -3.911711709244857 160 -2.2764880848675659 170 -5.7628771360149926 180 -5.7628771360149926
		 185 -5.7628771360149926 189 -1.6345407442959186 195 -5.7628771360149926 200 -2.2764880848675659
		 210 -2.2764880848675659 215 -2.2764880848675659 225 -2.2764880848675659 230 -2.2764880848675659
		 235 -6.452533629309869 240 -2.3052374562405227 257 -9.9611436522478733 265 -4.723319247785259;
	setAttr -s 30 ".kit[0:29]"  1 1 18 18 18 18 18 18 
		18 18 18 18 18 18 18 1 1 1 1 18 1 18 18 18 18 
		18 18 1 18 18;
	setAttr -s 30 ".kot[0:29]"  1 1 18 18 18 18 18 18 
		18 18 18 18 18 18 18 1 1 1 1 18 1 18 18 18 18 
		18 18 1 18 18;
	setAttr -s 30 ".kix[0:29]"  1 1 0.99431034904204174 0.93085639222393946 
		0.96625004148876559 1 1 1 1 1 1 1 1 1 0.06631092193288167 1 1 1 1 1 1 1 1 1 1 1 1 
		0.99431034904204174 1 1;
	setAttr -s 30 ".kiy[0:29]"  0 0 -0.10652196856936727 -0.36538524471553485 
		-0.25760601181447373 0 0 0 0 0 0 0 0 0 0.99779900863471072 0 0 0 0 0 0 0 0 0 0 0 
		0 -0.10652196856936727 0 0;
	setAttr -s 30 ".kox[0:29]"  1 1 0.99431034904204152 0.93085639222393957 
		0.96625004148876559 1 1 1 1 1 1 1 1 1 0.06631092193288167 1 1 1 1 1 1 1 1 1 1 1 1 
		0.99431034904204152 1 1;
	setAttr -s 30 ".koy[0:29]"  0 0 -0.10652196856936726 -0.36538524471553491 
		-0.25760601181447373 0 0 0 0 0 0 0 0 0 0.99779900863471072 0 0 0 0 0 0 0 0 0 0 0 
		0 -0.10652196856936726 0 0;
createNode animCurveTL -n "Hips_Control_translateZ";
	rename -uid "845CFDF2-4D4C-C17C-7344-43B89CA23DEC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 0 1 0 20 -0.11970167452585656 40 -0.24880401480282627
		 80 0.035251482727262778 100 0.074488020958630358 120 0 122 1.4520209952723571 130 2.3408561307457703
		 150 2.3408561307457703 154 -13.112441467735449 160 0 170 2.3408561307457703 180 2.3408561307457703
		 185 2.3408561307457703 187 -7.5758023488135864 189 -17.741630940130186 192 6.8134138935824407
		 195 2.3408561307457703 200 0 210 0 215 0 225 0 230 0 235 0 240 -0.11970167452585656
		 265 -8.368107992762134;
	setAttr -s 27 ".kit[0:26]"  1 1 18 18 18 18 18 18 
		18 18 18 1 1 1 1 18 18 18 1 18 18 18 18 18 18 
		1 18;
	setAttr -s 27 ".kot[0:26]"  1 1 18 18 18 18 18 18 
		18 18 18 1 1 1 1 18 18 18 1 18 18 18 18 18 18 
		1 18;
	setAttr -s 27 ".kix[0:26]"  1 1 0.98848077932922274 1 0.99174201039716192 
		1 1 0.17524307741793602 1 1 1 1 1 1 1 0.0082988191044159141 1 1 1 1 1 1 1 1 1 0.98848077932922274 
		1;
	setAttr -s 27 ".kiy[0:26]"  0 0 -0.15134645320156132 0 0.12824891739658326 
		0 0 0.98452519714687414 0 0 0 0 0 0 0 -0.99996556420782412 0 0 0 0 0 0 0 0 0 -0.15134645320156132 
		0;
	setAttr -s 27 ".kox[0:26]"  1 1 0.98848077932922285 1 0.99174201039716192 
		1 1 0.17524307741793602 1 1 1 1 1 1 1 0.0082988191044159141 1 1 1 1 1 1 1 1 1 0.98848077932922285 
		1;
	setAttr -s 27 ".koy[0:26]"  0 0 -0.15134645320156134 0 0.12824891739658326 
		0 0 0.98452519714687403 0 0 0 0 0 0 0 -0.99996556420782412 0 0 0 0 0 0 0 0 0 -0.15134645320156134 
		0;
createNode animCurveTL -n "LeftHip_Control_translateX";
	rename -uid "35B82229-474F-8851-8026-EF924A4425D4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 1 0 20 0 120 0 130 0 150 0 160 0 170 0
		 180 0 185 0 195 0 200 0 210 0 215 0 225 0 230 0 240 0;
	setAttr -s 17 ".kit[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kot[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "LeftHip_Control_translateY";
	rename -uid "8831FFFA-A84A-2C2B-B878-D29D99141757";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 1 0 20 0 120 0 130 0 150 0 160 0 170 0
		 180 0 185 0 195 0 200 0 210 0 215 0 225 0 230 0 240 0;
	setAttr -s 17 ".kit[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kot[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "LeftHip_Control_translateZ";
	rename -uid "BC1892EC-B046-F049-CAB5-11B37C24AC17";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 1 0 20 0 120 0 130 0 150 0 160 0 170 0
		 180 0 185 0 195 0 200 0 210 0 215 0 225 0 230 0 240 0;
	setAttr -s 17 ".kit[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kot[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "RightHip_Control_translateX";
	rename -uid "6DB31350-CC41-B927-05C3-A4B5871EC575";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 1 0 20 0 120 0 130 0 150 0 160 0 170 0
		 180 0 185 0 195 0 200 0 210 0 215 0 225 0 230 0 240 0;
	setAttr -s 17 ".kit[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kot[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "RightHip_Control_translateY";
	rename -uid "0C40B26E-184F-98E3-5866-6EA12F6139B1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 1 0 20 0 120 0 130 0 150 0 160 0 170 0
		 180 0 185 0 195 0 200 0 210 0 215 0 225 0 230 0 240 0;
	setAttr -s 17 ".kit[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kot[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "RightHip_Control_translateZ";
	rename -uid "DADB5A16-0342-592B-E67C-B5A750AEB080";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 1 0 20 0 120 0 130 0 150 0 160 0 170 0
		 180 0 185 0 195 0 200 0 210 0 215 0 225 0 230 0 240 0;
	setAttr -s 17 ".kit[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kot[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Spine1_Control_translateX";
	rename -uid "2DD0DD8B-3241-98A3-F812-D78A8E5CB13E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 1 0 20 0 120 0 130 0 150 0 160 0 170 0
		 180 0 185 0 195 0 200 0 210 0 215 0 225 0 230 0 240 0;
	setAttr -s 17 ".kit[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kot[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Spine1_Control_translateY";
	rename -uid "DA057B97-5C43-85B5-FCBC-17A88D80D0FE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 1 0 20 0 120 0 130 0 150 0 160 0 170 0
		 180 0 185 0 195 0 200 0 210 0 215 0 225 0 230 0 240 0;
	setAttr -s 17 ".kit[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kot[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Spine1_Control_translateZ";
	rename -uid "BB442EDD-8242-F1E0-CEAC-B680371FDC82";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 1 0 20 0 120 0 130 0 150 0 160 0 170 0
		 180 0 185 0 195 0 200 0 210 0 215 0 225 0 230 0 240 0;
	setAttr -s 17 ".kit[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kot[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Spine2_Control_translateX";
	rename -uid "4AC76D31-304D-0B7E-0F65-AF9FE2818EC9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 1 0 20 0 120 0 130 0 150 0 160 0 170 0
		 180 0 185 0 195 0 200 0 210 0 215 0 225 0 230 0 240 0;
	setAttr -s 17 ".kit[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kot[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Spine2_Control_translateY";
	rename -uid "25AE75C2-5E4E-7B07-3D69-2E9E6C72D8CC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 1 0 20 0 120 0 130 0 150 0 160 0 170 0
		 180 0 185 0 195 0 200 0 210 0 215 0 225 0 230 0 240 0;
	setAttr -s 17 ".kit[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kot[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Spine2_Control_translateZ";
	rename -uid "1756674A-1141-2A49-89DE-769E62962E6D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 1 0 20 0 120 0 130 0 150 0 160 0 170 0
		 180 0 185 0 195 0 200 0 210 0 215 0 225 0 230 0 240 0;
	setAttr -s 17 ".kit[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kot[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "LeftArmTwist_Control_translateX";
	rename -uid "99EFE83C-604C-DE41-7A1E-43A0C02B09D7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 1 0 20 0 120 0 130 0 150 0 160 0 170 0
		 180 0 185 0 195 0 200 0 210 0 215 0 225 0 230 0 240 0;
	setAttr -s 17 ".kit[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kot[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "LeftArmTwist_Control_translateY";
	rename -uid "A4B64441-634F-5C5B-AB96-F4803A569887";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 1 0 20 0 120 0 130 0 150 0 160 0 170 0
		 180 0 185 0 195 0 200 0 210 0 215 0 225 0 230 0 240 0;
	setAttr -s 17 ".kit[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kot[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "LeftArmTwist_Control_translateZ";
	rename -uid "C7385032-504B-BDBF-2CA7-5CA3FC9F426A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 1 0 20 0 120 0 130 0 150 0 160 0 170 0
		 180 0 185 0 195 0 200 0 210 0 215 0 225 0 230 0 240 0;
	setAttr -s 17 ".kit[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kot[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "LeftElbow_Control_translateX";
	rename -uid "AD25DF4E-B049-12E1-FF09-BBAAC387514A";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 -36.59420188088145 1 -36.59420188088145
		 20 -36.59420188088145 120 -36.59420188088145 130 -36.59420188088145 150 -36.59420188088145
		 160 -36.59420188088145 170 -36.59420188088145 180 -36.59420188088145 185 -36.59420188088145
		 195 -36.59420188088145 230 -18.964078844213624 240 -36.59420188088145;
	setAttr -s 13 ".kit[2:12]"  18 18 18 18 1 1 1 1 
		1 18 1;
	setAttr -s 13 ".kot[2:12]"  18 18 18 18 1 1 1 1 
		1 18 1;
	setAttr -s 13 ".kix[0:12]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".kiy[0:12]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 13 ".kox[0:12]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".koy[0:12]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "LeftElbow_Control_translateY";
	rename -uid "6A90407B-3940-27CD-1129-7B94F805B8C1";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 -3.3722819566655033 1 -3.3722819566655033
		 20 -3.3722819566655033 120 -3.3722819566655033 130 -3.3722819566655033 150 -3.3722819566655033
		 160 -3.3722819566655033 170 -3.3722819566655033 180 -3.3722819566655033 185 -3.3722819566655033
		 195 -3.3722819566655033 230 -2.1654740075455829 240 -3.3722819566655033;
	setAttr -s 13 ".kit[2:12]"  18 18 18 18 1 1 1 1 
		1 18 1;
	setAttr -s 13 ".kot[2:12]"  18 18 18 18 1 1 1 1 
		1 18 1;
	setAttr -s 13 ".kix[0:12]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".kiy[0:12]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 13 ".kox[0:12]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".koy[0:12]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "LeftElbow_Control_translateZ";
	rename -uid "DE065043-674D-7237-2F64-AD95E18A15C1";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 -4.5438695071146675 1 -4.5438695071146675
		 20 -4.5438695071146675 120 -4.5438695071146675 130 -4.5438695071146675 150 -4.5438695071146675
		 160 -4.5438695071146675 170 -4.5438695071146675 180 -4.5438695071146675 185 -4.5438695071146675
		 195 -4.5438695071146675 230 6.1734381056366114 240 -4.5438695071146675;
	setAttr -s 13 ".kit[2:12]"  18 18 18 18 1 1 1 1 
		1 18 1;
	setAttr -s 13 ".kot[2:12]"  18 18 18 18 1 1 1 1 
		1 18 1;
	setAttr -s 13 ".kix[0:12]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".kiy[0:12]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 13 ".kox[0:12]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".koy[0:12]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "LeftHand_Control_translateX";
	rename -uid "95799B64-8A47-D949-E085-04B74C8D47DA";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 -28.184289961568801 1 -28.184289961568801
		 20 -28.184289961568801 120 -28.184289961568801 130 -28.184289961568801 150 -28.184289961568801
		 160 -28.184289961568801 170 -28.184289961568801 180 -28.184289961568801 185 -28.184289961568801
		 195 -28.184289961568801 230 -17.902745652750298 240 -28.184289961568801 260 -28.184289961568801
		 265 -36.29976161743857;
	setAttr -s 15 ".kit[2:14]"  18 18 18 18 1 1 1 1 
		1 18 1 18 18;
	setAttr -s 15 ".kot[2:14]"  18 18 18 18 1 1 1 1 
		1 18 1 18 18;
	setAttr -s 15 ".kix[0:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[0:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[0:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[0:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "LeftHand_Control_translateY";
	rename -uid "37267267-8640-E6C2-92BC-C2BB8B0C2F03";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 -18.960340577360938 1 -18.960340577360938
		 20 -18.960340577360938 120 -18.960340577360938 130 -18.960340577360938 150 -18.960340577360938
		 160 -18.960340577360938 170 -18.960340577360938 180 -18.960340577360938 185 -18.960340577360938
		 195 -18.960340577360938 230 -4.1326912820366353 240 -18.960340577360938 260 -18.960340577360938
		 265 11.463405157645919;
	setAttr -s 15 ".kit[2:14]"  18 18 18 18 1 1 1 1 
		1 18 1 18 18;
	setAttr -s 15 ".kot[2:14]"  18 18 18 18 1 1 1 1 
		1 18 1 18 18;
	setAttr -s 15 ".kix[0:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[0:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[0:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[0:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "LeftHand_Control_translateZ";
	rename -uid "AAC30013-934A-185E-9E50-D1BDB2C763CE";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 -8.6159087488893924 1 -8.6159087488893924
		 20 -8.6159087488893924 120 -8.6159087488893924 130 -8.6159087488893924 150 -8.6159087488893924
		 160 -8.6159087488893924 170 -8.6159087488893924 180 -8.6159087488893924 185 -8.6159087488893924
		 195 -8.6159087488893924 230 5.6595456361671044 240 -8.6159087488893924 260 -8.6159087488893924
		 265 19.112075049702323;
	setAttr -s 15 ".kit[2:14]"  18 18 18 18 1 1 1 1 
		1 18 1 18 18;
	setAttr -s 15 ".kot[2:14]"  18 18 18 18 1 1 1 1 
		1 18 1 18 18;
	setAttr -s 15 ".kix[0:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[0:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[0:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[0:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "LeftFingers_Control_translateX";
	rename -uid "B28FA31B-FD43-B272-EC1E-409603FEA7A2";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 1 0 20 0 120 0 130 0 150 0 160 0 170 0
		 180 0 185 0 195 0 230 -14.345880527284839 240 0;
	setAttr -s 13 ".kit[2:12]"  18 18 18 18 1 1 1 1 
		1 18 1;
	setAttr -s 13 ".kot[2:12]"  18 18 18 18 1 1 1 1 
		1 18 1;
	setAttr -s 13 ".kix[0:12]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".kiy[0:12]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 13 ".kox[0:12]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".koy[0:12]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "LeftFingers_Control_translateY";
	rename -uid "5E46E87C-DE4D-EF3D-8E22-FDA024D286FC";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 1 0 20 0 120 0 130 0 150 0 160 0 170 0
		 180 0 185 0 195 0 230 -1.7398910994341616 240 0;
	setAttr -s 13 ".kit[2:12]"  18 18 18 18 1 1 1 1 
		1 18 1;
	setAttr -s 13 ".kot[2:12]"  18 18 18 18 1 1 1 1 
		1 18 1;
	setAttr -s 13 ".kix[0:12]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".kiy[0:12]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 13 ".kox[0:12]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".koy[0:12]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "LeftFingers_Control_translateZ";
	rename -uid "B28CA294-1940-FE5A-854B-ABAF883BF6AC";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 1 0 20 0 120 0 130 0 150 0 160 0 170 0
		 180 0 185 0 195 0 230 6.7468756840379118 240 0;
	setAttr -s 13 ".kit[2:12]"  18 18 18 18 1 1 1 1 
		1 18 1;
	setAttr -s 13 ".kot[2:12]"  18 18 18 18 1 1 1 1 
		1 18 1;
	setAttr -s 13 ".kix[0:12]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".kiy[0:12]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 13 ".kox[0:12]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".koy[0:12]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "LeftShoulder_Control_translateX";
	rename -uid "6DA66B9A-A143-9399-FD44-698962DBEE85";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 1 0 20 0 120 0 130 0 150 0 160 0 170 0
		 180 0 185 0 195 0 200 0 210 0 215 0 225 0 230 0 240 0;
	setAttr -s 17 ".kit[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kot[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "LeftShoulder_Control_translateY";
	rename -uid "56A7B604-7049-6B99-ED4F-71B5BD3E1346";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 1 0 20 0 120 0 130 0 150 0 160 0 170 0
		 180 0 185 0 195 0 200 0 210 0 215 0 225 0 230 0 240 0;
	setAttr -s 17 ".kit[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kot[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "LeftShoulder_Control_translateZ";
	rename -uid "42C61272-5049-411B-72E1-5086303FE142";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 1 0 20 0 120 0 130 0 150 0 160 0 170 0
		 180 0 185 0 195 0 200 0 210 0 215 0 225 0 230 0 240 0;
	setAttr -s 17 ".kit[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kot[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "LeftUpperArm_Control_translateX";
	rename -uid "0DFBAF26-C243-E0D8-1C69-35A5BD236106";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 120 0 130 0 150 0 160 0;
	setAttr -s 5 ".kit[3:4]"  18 1;
	setAttr -s 5 ".kot[3:4]"  18 1;
	setAttr -s 5 ".kix[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTL -n "LeftUpperArm_Control_translateY";
	rename -uid "60A71416-594D-68C3-EF67-10A50806FD8E";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 120 0 130 0 150 0 160 0;
	setAttr -s 5 ".kit[3:4]"  18 1;
	setAttr -s 5 ".kot[3:4]"  18 1;
	setAttr -s 5 ".kix[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTL -n "LeftUpperArm_Control_translateZ";
	rename -uid "F1B591D7-E346-8E03-D653-F8A200660893";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 120 0 130 0 150 0 160 0;
	setAttr -s 5 ".kit[3:4]"  18 1;
	setAttr -s 5 ".kot[3:4]"  18 1;
	setAttr -s 5 ".kix[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTL -n "Neck_Control_translateX";
	rename -uid "58E9746A-474F-1539-91D7-61BD45C61F6A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 1 0 20 0 120 0 130 0 150 0 160 0 170 0
		 180 0 185 0 195 0 200 0 210 0 215 0 225 0 230 0 240 0;
	setAttr -s 17 ".kit[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kot[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Neck_Control_translateY";
	rename -uid "C6A44684-274A-2555-6CA9-7497B64B02CD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 1 0 20 0 120 0 130 0 150 0 160 0 170 0
		 180 0 185 0 195 0 200 0 210 0 215 0 225 0 230 0 240 0;
	setAttr -s 17 ".kit[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kot[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Neck_Control_translateZ";
	rename -uid "1617CF66-5741-C446-3C95-DC986B427C00";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 1 0 20 0 120 0 130 0 150 0 160 0 170 0
		 180 0 185 0 195 0 200 0 210 0 215 0 225 0 230 0 240 0;
	setAttr -s 17 ".kit[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kot[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Head_Control_translateX";
	rename -uid "56B94D56-3044-C77F-C0AF-51B921BC9E35";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 1 0 20 0 120 0 130 0 150 0 160 0 170 0
		 180 0 185 0 195 0 200 0 210 0 215 0 225 0 230 0 240 0;
	setAttr -s 17 ".kit[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kot[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Head_Control_translateY";
	rename -uid "0637CB69-9A43-08C1-690C-5DB0E8CFBF3F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 1 0 20 0 120 0 130 0 150 0 160 0 170 0
		 180 0 185 0 195 0 200 0 210 0 215 0 225 0 230 0 240 0;
	setAttr -s 17 ".kit[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kot[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Head_Control_translateZ";
	rename -uid "C928D8C9-4045-01E3-746C-1FA63DCB8B4F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 1 0 20 0 120 0 130 0 150 0 160 0 170 0
		 180 0 185 0 195 0 200 0 210 0 215 0 225 0 230 0 240 0;
	setAttr -s 17 ".kit[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kot[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "RightArmTwist_Control_translateX";
	rename -uid "57829432-194B-30D7-497B-4785D8C78755";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 1 0 20 0 120 0 130 0 150 0 160 0 170 0
		 180 0 185 0 195 0 200 0 210 0 215 0 225 0 230 0 240 0;
	setAttr -s 17 ".kit[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kot[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "RightArmTwist_Control_translateY";
	rename -uid "34868EF5-1748-1EE9-4282-57A21EF704D3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 1 0 20 0 120 0 130 0 150 0 160 0 170 0
		 180 0 185 0 195 0 200 0 210 0 215 0 225 0 230 0 240 0;
	setAttr -s 17 ".kit[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kot[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "RightArmTwist_Control_translateZ";
	rename -uid "427554A9-CD49-D414-8C55-06ABDC780D1E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 1 0 20 0 120 0 130 0 150 0 160 0 170 0
		 180 0 185 0 195 0 200 0 210 0 215 0 225 0 230 0 240 0;
	setAttr -s 17 ".kit[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kot[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "RightElbow_Control_translateX";
	rename -uid "E18A111A-CB47-B244-783C-71B9B9B10BDD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 4.2736108606484144 1 4.2736108606484144
		 20 4.2736108606484144 120 4.2736108606484144 126 -8.5186938183703074 130 -8.5186938183703074
		 150 -8.5186938183703074 160 4.2736108606484144 170 -8.5186938183703074 180 -8.5186938183703074
		 185 -8.5186938183703074 195 -8.5186938183703074 230 -15.42094202425338 240 4.2736108606484144
		 248 -12.537330195555988 257 -149.96029572803656 265 -12.793716117689803;
	setAttr -s 17 ".kit[0:16]"  1 1 18 18 18 18 18 1 
		1 1 1 1 18 1 18 18 18;
	setAttr -s 17 ".kot[0:16]"  1 1 18 18 18 18 18 1 
		1 1 1 1 18 1 18 18 18;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.0066093078241476755 
		1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.9999781582865126 
		0 0;
	setAttr -s 17 ".kox[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.0066093078241476755 
		1 1;
	setAttr -s 17 ".koy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.9999781582865126 
		0 0;
createNode animCurveTL -n "RightElbow_Control_translateY";
	rename -uid "5AC38800-3642-2302-D691-7CBA4E28E2B2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 -26.696346089392271 1 -26.696346089392271
		 20 -26.696346089392271 120 -26.696346089392271 126 -71.049443740659044 130 -71.049443740659044
		 150 -71.049443740659044 160 -26.696346089392271 170 -71.049443740659044 180 -71.049443740659044
		 185 -71.049443740659044 195 -71.049443740659044 230 -10.706350391808108 240 -26.696346089392271
		 248 13.697880667220957 257 69.749564007218552 265 -124.75094731595114;
	setAttr -s 17 ".kit[0:16]"  1 1 18 18 18 18 18 1 
		1 1 1 1 18 1 18 18 18;
	setAttr -s 17 ".kot[0:16]"  1 1 18 18 18 18 18 1 
		1 1 1 1 18 1 18 18 18;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.0073441603670697971 
		1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.99997303129059567 
		0 0;
	setAttr -s 17 ".kox[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.0073441603670697971 
		1 1;
	setAttr -s 17 ".koy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.99997303129059578 
		0 0;
createNode animCurveTL -n "RightElbow_Control_translateZ";
	rename -uid "EDC633C5-944B-9363-7EC3-45A9570699F9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 19.430826289748698 1 19.430826289748698
		 20 19.430826289748698 120 19.430826289748698 126 99.457795236681676 130 99.457795236681676
		 150 99.457795236681676 160 19.430826289748698 170 99.457795236681676 180 99.457795236681676
		 185 99.457795236681676 195 99.457795236681676 230 19.29847672899632 240 19.430826289748698
		 248 162.72022909296729 257 130.64409963603566 265 135.55368507006654;
	setAttr -s 17 ".kit[0:16]"  1 1 18 18 18 18 18 1 
		1 1 1 1 18 1 18 18 18;
	setAttr -s 17 ".kot[0:16]"  1 1 18 18 18 18 18 1 
		1 1 1 1 18 1 18 18 18;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "RightHand_Control_translateX";
	rename -uid "5ED98B6F-DC47-D2B0-2166-CA8F91BED5D7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  0 33.729055206893015 1 32.789790122589785
		 20 36.074441207362838 120 32.789790122589785 123 33.221722015879706 126 33.221722015879706
		 130 21.109081018611942 150 21.109081018611942 160 32.789790122589785 170 21.109081018611942
		 176 39.098465305097697 180 21.109081018611942 185 21.109081018611942 190 41.1285202364475
		 195 21.109081018611942 230 -11.681908711492941 240 36.074441207362838 244 70.924930600704727
		 248 91.089492181241738 251 56.988570696925329 253 34.620631947269771 257 57.405379653183829
		 262 44.435934308573444 265 60.967892893090379;
	setAttr -s 24 ".kit[0:23]"  1 1 18 18 18 18 18 18 
		1 1 18 1 1 18 1 18 1 18 18 18 18 1 18 1;
	setAttr -s 24 ".kot[0:23]"  1 1 18 18 18 18 18 18 
		1 1 18 1 1 18 1 18 1 18 18 18 18 1 18 1;
	setAttr -s 24 ".kix[0:23]"  1 0.16778698138071732 1 1 1 1 1 1 0.16778698138071732 
		1 1 1 1 1 1 1 1 0.0060588367933149586 1 0.0036893238971225139 1 1 1 1;
	setAttr -s 24 ".kiy[0:23]"  0 0.98582327466901831 0 0 0 0 0 0 0.98582327466901831 
		0 0 0 0 0 0 0 0 0.99998164507990439 0 -0.99999319442143297 0 0 0 0;
	setAttr -s 24 ".kox[0:23]"  1 0.16778698138071732 1 1 1 1 1 1 0.16778698138071732 
		1 1 1 1 1 1 1 1 0.0060588367933149586 1 0.0036893238971225143 1 1 1 1;
	setAttr -s 24 ".koy[0:23]"  0 0.98582327466901842 0 0 0 0 0 0 0.98582327466901842 
		0 0 0 0 0 0 0 0 0.99998164507990439 0 -0.99999319442143308 0 0 0 0;
createNode animCurveTL -n "RightHand_Control_translateY";
	rename -uid "43EBE580-0949-4663-0902-E0B7252FCC1F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  0 -20.90687476779549 1 -22.037219203375273
		 20 -22.037219203375273 120 -22.037219203375273 123 38.334354090945268 126 38.334354090945268
		 130 23.437927976863676 150 23.437927976863676 160 -22.037219203375273 170 23.437927976863676
		 176 59.107268108891688 180 23.437927976863676 185 23.437927976863676 190 52.267776359489751
		 195 23.437927976863676 230 1.2179818414045869 240 -22.037219203375273 244 1.6391569571610509
		 248 9.6687153214842301 251 52.63301111860406 253 57.393860586070574 257 50.762581768884793
		 262 62.650464971068608 265 26.35057850403053;
	setAttr -s 24 ".kit[0:23]"  1 1 18 18 18 18 18 18 
		1 1 18 1 1 18 1 18 1 18 18 18 18 1 18 1;
	setAttr -s 24 ".kot[0:23]"  1 1 18 18 18 18 18 18 
		1 1 18 1 1 18 1 18 1 18 18 18 18 1 18 1;
	setAttr -s 24 ".kix[0:23]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.04119630997519675 
		1 0.010512697964896758 0.0069187149946714765 0.0058345270444069251 1 1 1 1;
	setAttr -s 24 ".kiy[0:23]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.99915107168256967 
		0 0.9999447400639192 0.99997606540497885 0.99998297900222688 0 0 0 0;
	setAttr -s 24 ".kox[0:23]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.041196309975196743 
		1 0.010512697964896758 0.0069187149946714748 0.0058345270444069251 1 1 1 1;
	setAttr -s 24 ".koy[0:23]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.99915107168256967 
		0 0.9999447400639192 0.99997606540497874 0.99998297900222677 0 0 0 0;
createNode animCurveTL -n "RightHand_Control_translateZ";
	rename -uid "008F5F67-2344-9067-35A4-2AA4CB36D552";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  0 -4.5019766675806769 1 -18.382432145743607
		 20 -18.382432145743607 120 -18.382432145743607 123 21.047121746294781 126 21.047121746294781
		 130 41.302036028733703 150 41.302036028733703 160 -18.382432145743607 170 41.302036028733703
		 176 18.359124340891604 180 41.302036028733703 185 41.302036028733703 190 16.653413458528508
		 195 41.302036028733703 230 11.959203962012516 240 -18.382432145743607 244 39.863586771379381
		 248 23.226649441931229 251 25.296432253054732 253 -19.776376994175049 257 -33.440095159923956
		 262 30.39353205021963 265 22.047371732981269;
	setAttr -s 24 ".kit[0:23]"  1 1 18 18 18 18 18 18 
		1 1 18 1 1 18 1 18 1 18 18 18 18 1 18 1;
	setAttr -s 24 ".kot[0:23]"  1 1 18 18 18 18 18 18 
		1 1 18 1 1 18 1 18 1 18 18 18 18 1 18 1;
	setAttr -s 24 ".kix[0:23]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.031399717690341611 
		1 1 1 1 0.0042562566521325796 1 1 1;
	setAttr -s 24 ".kiy[0:23]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.99950690729427516 
		0 0 0 0 -0.99999094209863282 0 0 0;
	setAttr -s 24 ".kox[0:23]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.031399717690341618 
		1 1 1 1 0.0042562566521325805 1 1 1;
	setAttr -s 24 ".koy[0:23]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.99950690729427527 
		0 0 0 0 -0.99999094209863282 0 0 0;
createNode animCurveTL -n "RightFinders_Control_translateX";
	rename -uid "84D69FCC-A140-107D-4513-1D94959062E6";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 1 0 20 0 120 0 130 0 150 0 160 0 170 0
		 180 0 185 0 195 0 230 -14.345880527284839 240 0;
	setAttr -s 13 ".kit[2:12]"  18 18 18 18 1 1 1 1 
		1 18 1;
	setAttr -s 13 ".kot[2:12]"  18 18 18 18 1 1 1 1 
		1 18 1;
	setAttr -s 13 ".kix[0:12]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".kiy[0:12]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 13 ".kox[0:12]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".koy[0:12]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "RightFinders_Control_translateY";
	rename -uid "C3889FD1-AA4D-2B13-864E-F2A8B4B7C465";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 1 0 20 0 120 0 130 0 150 0 160 0 170 0
		 180 0 185 0 195 0 230 -1.7398910994341616 240 0;
	setAttr -s 13 ".kit[2:12]"  18 18 18 18 1 1 1 1 
		1 18 1;
	setAttr -s 13 ".kot[2:12]"  18 18 18 18 1 1 1 1 
		1 18 1;
	setAttr -s 13 ".kix[0:12]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".kiy[0:12]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 13 ".kox[0:12]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".koy[0:12]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "RightFinders_Control_translateZ";
	rename -uid "331986CB-D847-4388-7AB0-AFA5FE8FB577";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 1 0 20 0 120 0 130 0 150 0 160 0 170 0
		 180 0 185 0 195 0 230 6.7468756840379118 240 0;
	setAttr -s 13 ".kit[2:12]"  18 18 18 18 1 1 1 1 
		1 18 1;
	setAttr -s 13 ".kot[2:12]"  18 18 18 18 1 1 1 1 
		1 18 1;
	setAttr -s 13 ".kix[0:12]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".kiy[0:12]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 13 ".kox[0:12]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".koy[0:12]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "RightShoulder_Control_translateX";
	rename -uid "7FAEF233-C94C-A12D-0952-7FAAB77AF703";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 1 0 20 0 120 0 130 0 150 0 160 0 170 0
		 180 0 185 0 195 0 200 0 210 0 215 0 225 0 230 0 240 0;
	setAttr -s 17 ".kit[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kot[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "RightShoulder_Control_translateY";
	rename -uid "71C700F1-E24B-1978-C325-BAB703FD359D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 1 0 20 0 120 0 130 0 150 0 160 0 170 0
		 180 0 185 0 195 0 200 0 210 0 215 0 225 0 230 0 240 0;
	setAttr -s 17 ".kit[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kot[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "RightShoulder_Control_translateZ";
	rename -uid "368FD4FA-BA48-DC12-D9AF-E4AD09F42B25";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 1 0 20 0 120 0 130 0 150 0 160 0 170 0
		 180 0 185 0 195 0 200 0 210 0 215 0 225 0 230 0 240 0;
	setAttr -s 17 ".kit[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kot[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "RightUpperArm_Control_translateX";
	rename -uid "40011E8F-7042-2D15-C685-6CA58BB3901A";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 120 0 130 0 150 0 160 0;
	setAttr -s 5 ".kit[3:4]"  18 1;
	setAttr -s 5 ".kot[3:4]"  18 1;
	setAttr -s 5 ".kix[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTL -n "RightUpperArm_Control_translateY";
	rename -uid "A45EE940-594E-C834-8D2B-DF90FCBE893E";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 120 0 130 0 150 0 160 0;
	setAttr -s 5 ".kit[3:4]"  18 1;
	setAttr -s 5 ".kot[3:4]"  18 1;
	setAttr -s 5 ".kix[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTL -n "RightUpperArm_Control_translateZ";
	rename -uid "97B29C3C-F342-2D4E-4BFF-1FBA306FE842";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 120 0 130 0 150 0 160 0;
	setAttr -s 5 ".kit[3:4]"  18 1;
	setAttr -s 5 ".kot[3:4]"  18 1;
	setAttr -s 5 ".kix[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTU -n "LeftHand_Control_visibility";
	rename -uid "CFB9B9AC-004A-5EED-438E-0FAE0D6CEBA7";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 1 1 1 20 1 120 1 130 1 150 1 160 1 170 1
		 180 1 185 1 195 1 230 1 240 1 260 1;
	setAttr -s 14 ".kit[2:13]"  9 18 18 18 1 1 1 1 
		1 9 1 9;
	setAttr -s 14 ".kot[0:13]"  5 1 5 18 18 18 1 1 
		1 1 1 5 5 5;
	setAttr -s 14 ".kix[0:13]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 14 ".kiy[0:13]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 14 ".kox[1:13]"  1 0 1 1 1 1 1 1 1 1 0 0 0;
	setAttr -s 14 ".koy[1:13]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LeftHand_Control_rotateX";
	rename -uid "C7F4514B-7841-5CC6-8C28-E1BEE93AD1F8";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 14.750758409740884 1 14.750758409740884
		 20 14.750758409740884 120 14.750758409740884 130 14.750758409740884 150 14.750758409740884
		 160 14.750758409740884 170 14.750758409740884 180 14.750758409740884 185 14.750758409740884
		 195 14.750758409740884 230 7.3219581896307755 240 14.750758409740884 260 14.750758409740884
		 265 -43.653015443016386;
	setAttr -s 15 ".kit[2:14]"  18 18 18 18 1 1 1 1 
		1 18 1 18 18;
	setAttr -s 15 ".kot[2:14]"  18 18 18 18 1 1 1 1 
		1 18 1 18 18;
	setAttr -s 15 ".kix[0:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[0:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[0:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[0:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LeftHand_Control_rotateY";
	rename -uid "21B69B15-7C47-F43D-C451-9FA5BD79363C";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 -24.123871061056953 1 -24.123871061056953
		 20 -24.123871061056953 120 -24.123871061056953 130 -24.123871061056953 150 -24.123871061056953
		 160 -24.123871061056953 170 -24.123871061056953 180 -24.123871061056953 185 -24.123871061056953
		 195 -24.123871061056953 230 -46.786178748075585 240 -24.123871061056953 260 -24.123871061056953
		 265 -38.194314602767733;
	setAttr -s 15 ".kit[2:14]"  18 18 18 18 1 1 1 1 
		1 18 1 18 18;
	setAttr -s 15 ".kot[2:14]"  18 18 18 18 1 1 1 1 
		1 18 1 18 18;
	setAttr -s 15 ".kix[0:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[0:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[0:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[0:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LeftHand_Control_rotateZ";
	rename -uid "D7F07BC7-6A46-9E64-62B2-CCAC07189AFC";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 -28.799599295998355 1 -28.799599295998355
		 20 -28.799599295998355 120 -28.799599295998355 130 -28.799599295998355 150 -28.799599295998355
		 160 -28.799599295998355 170 -28.799599295998355 180 -28.799599295998355 185 -28.799599295998355
		 195 -28.799599295998355 230 -14.74172462528278 240 -28.799599295998355 260 -28.799599295998355
		 265 -86.960939007016052;
	setAttr -s 15 ".kit[2:14]"  18 18 18 18 1 1 1 1 
		1 18 1 18 18;
	setAttr -s 15 ".kot[2:14]"  18 18 18 18 1 1 1 1 
		1 18 1 18 18;
	setAttr -s 15 ".kix[0:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".kiy[0:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 15 ".kox[0:14]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 15 ".koy[0:14]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LeftHand_Control_scaleX";
	rename -uid "334B9CE0-744D-DDE8-3C2A-D881CD90A85E";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 1 1 1 20 1 120 1 130 1 150 1 160 1 170 1
		 180 1 185 1 195 1 230 1 240 1 260 1;
	setAttr -s 14 ".kit[2:13]"  18 18 18 18 1 1 1 1 
		1 18 1 18;
	setAttr -s 14 ".kot[2:13]"  18 18 18 18 1 1 1 1 
		1 18 1 18;
	setAttr -s 14 ".kix[0:13]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 14 ".kiy[0:13]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 14 ".kox[0:13]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 14 ".koy[0:13]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LeftHand_Control_scaleY";
	rename -uid "6A7C6932-9A4A-55E5-7DBB-FC860F91DF4C";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 1 1 1 20 1 120 1 130 1 150 1 160 1 170 1
		 180 1 185 1 195 1 230 1 240 1 260 1;
	setAttr -s 14 ".kit[2:13]"  18 18 18 18 1 1 1 1 
		1 18 1 18;
	setAttr -s 14 ".kot[2:13]"  18 18 18 18 1 1 1 1 
		1 18 1 18;
	setAttr -s 14 ".kix[0:13]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 14 ".kiy[0:13]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 14 ".kox[0:13]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 14 ".koy[0:13]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LeftHand_Control_scaleZ";
	rename -uid "EE303A97-B44B-9981-BD21-1498748096E6";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 14 ".ktv[0:13]"  0 1 1 1 20 1 120 1 130 1 150 1 160 1 170 1
		 180 1 185 1 195 1 230 1 240 1 260 1;
	setAttr -s 14 ".kit[2:13]"  18 18 18 18 1 1 1 1 
		1 18 1 18;
	setAttr -s 14 ".kot[2:13]"  18 18 18 18 1 1 1 1 
		1 18 1 18;
	setAttr -s 14 ".kix[0:13]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 14 ".kiy[0:13]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 14 ".kox[0:13]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 14 ".koy[0:13]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "Head_Control_visibility";
	rename -uid "DECA8991-0A4E-D2BE-DB50-198DD5875DBD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 1 1 1 20 1 120 1 130 1 150 1 160 1 170 1
		 180 1 185 1 195 1 200 1 210 1 215 1 225 1 230 1 240 1;
	setAttr -s 17 ".kit[0:16]"  1 1 9 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kot[0:16]"  5 1 5 18 18 18 1 1 
		1 1 1 18 18 18 18 18 5;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[1:16]"  1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 0;
	setAttr -s 17 ".koy[1:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Head_Control_rotateX";
	rename -uid "51796712-894F-D398-9014-BDB42E1714DB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 1 0 20 -0.088623956106980206 120 0 130 -0.57418446807312817
		 150 -0.57418446807312817 160 0 170 -0.57418446807312817 180 -0.57418446807312817
		 185 -0.57418446807312817 195 -0.57418446807312817 200 0 210 0 215 0 225 0 230 0 235 10.235743689752844
		 240 -0.088623956106980206 265 0;
	setAttr -s 19 ".kit[0:18]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 18 1 18;
	setAttr -s 19 ".kot[0:18]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 18 1 18;
	setAttr -s 19 ".kix[0:18]"  1 0.9999961723903702 1 1 1 1 0.9999961723903702 
		1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 19 ".kiy[0:18]"  0 -0.002766804042421054 0 0 0 0 -0.002766804042421054 
		0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 19 ".kox[0:18]"  1 0.99999617239037009 1 1 1 1 0.99999617239037009 
		1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 19 ".koy[0:18]"  0 -0.0027668040424210531 0 0 0 0 -0.0027668040424210531 
		0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Head_Control_rotateY";
	rename -uid "9B5ECD5C-1B48-CC2A-0E6C-1FBC4DA1177A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  0 25.828293378437841 1 25.828293378437841
		 20 25.828293378437841 120 25.828293378437841 130 -16.673221941482897 150 -16.673221941482897
		 160 25.828293378437841 170 -16.673221941482897 180 -16.673221941482897 185 -16.673221941482897
		 195 -16.673221941482897 200 25.828293378437841 205 68.827511220370198 210 25.828293378437841
		 215 25.828293378437841 218 -25.586269136659311 220 5.6592752017455705 225 25.828293378437841
		 230 25.828293378437841 235 41.831312123036952 240 25.828293378437841 265 0;
	setAttr -s 22 ".kit[0:21]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 18 18 18 18 1 18;
	setAttr -s 22 ".kot[0:21]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 18 18 18 18 1 18;
	setAttr -s 22 ".kix[0:21]"  1 1 1 1 1 1 1 1 1 1 1 0.26893035267089149 
		1 1 1 1 0.30911177310941296 1 1 1 1 1;
	setAttr -s 22 ".kiy[0:21]"  0 0 0 0 0 0 0 0 0 0 0 0.96315962613281803 
		0 0 0 0 0.95102571559614235 0 0 0 0 0;
	setAttr -s 22 ".kox[0:21]"  1 1 1 1 1 1 1 1 1 1 1 0.2689303526708916 
		1 1 1 1 0.30911177310941301 1 1 1 1 1;
	setAttr -s 22 ".koy[0:21]"  0 0 0 0 0 0 0 0 0 0 0 0.96315962613281814 
		0 0 0 0 0.95102571559614246 0 0 0 0 0;
createNode animCurveTA -n "Head_Control_rotateZ";
	rename -uid "BA538599-C549-004E-317D-10A499C204FC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 0 1 0 20 0 120 0 130 -0.074681411992433264
		 150 -0.074681411992433264 160 0 170 -0.074681411992433264 180 -0.074681411992433264
		 185 -0.074681411992433264 195 -0.074681411992433264 200 0 210 0 215 0 225 0 230 0
		 235 -6.7086777151230264 240 0;
	setAttr -s 18 ".kit[0:17]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 18 1;
	setAttr -s 18 ".kot[0:17]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 18 1;
	setAttr -s 18 ".kix[0:17]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 18 ".kiy[0:17]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 18 ".kox[0:17]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 18 ".koy[0:17]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "Head_Control_scaleX";
	rename -uid "15789E17-1E44-6453-B477-8C9E216BC885";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 1 1 1 20 1 120 1 130 1 150 1 160 1 170 1
		 180 1 185 1 195 1 200 1 210 1 215 1 225 1 230 1 240 1;
	setAttr -s 17 ".kit[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kot[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "Head_Control_scaleY";
	rename -uid "4D77B449-6949-416C-BEAE-1EB11BBC0EB0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 1 1 1 20 1 120 1 130 1 150 1 160 1 170 1
		 180 1 185 1 195 1 200 1 210 1 215 1 225 1 230 1 240 1;
	setAttr -s 17 ".kit[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kot[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "Head_Control_scaleZ";
	rename -uid "06885C34-7A47-FC79-B856-0AB8C4A770EC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 1 1 1 20 1 120 1 130 1 150 1 160 1 170 1
		 180 1 185 1 195 1 200 1 210 1 215 1 225 1 230 1 240 1;
	setAttr -s 17 ".kit[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kot[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RightArmTwist_Control_visibility";
	rename -uid "1E216838-9645-6097-C86E-7CA12EEFE74A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 1 1 1 20 1 120 1 130 1 150 1 160 1 170 1
		 180 1 185 1 195 1 200 1 210 1 215 1 225 1 230 1 240 1;
	setAttr -s 17 ".kit[0:16]"  1 1 9 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kot[0:16]"  5 1 5 18 18 18 1 1 
		1 1 1 18 18 18 18 18 5;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[1:16]"  1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 0;
	setAttr -s 17 ".koy[1:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RightArmTwist_Control_rotateX";
	rename -uid "7F241D05-6046-013E-AD2E-B1A5D073A031";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 1 0 20 0 120 0 130 0 150 0 160 0 170 0
		 180 0 185 0 195 0 200 0 210 0 215 0 225 0 230 0 240 0;
	setAttr -s 17 ".kit[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kot[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RightArmTwist_Control_rotateY";
	rename -uid "DEC01178-424E-BBDD-178E-7C8D38665EA6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 1 0 20 0 120 0 130 0 150 0 160 0 170 0
		 180 0 185 0 195 0 200 0 210 0 215 0 225 0 230 0 240 0;
	setAttr -s 17 ".kit[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kot[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RightArmTwist_Control_rotateZ";
	rename -uid "93574063-B74F-E6B7-A3F6-7E8A1EFB2E44";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 1 0 20 0 120 0 130 0 150 0 160 0 170 0
		 180 0 185 0 195 0 200 0 210 0 215 0 225 0 230 0 240 0;
	setAttr -s 17 ".kit[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kot[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RightArmTwist_Control_scaleX";
	rename -uid "32716BC1-4140-30EA-02DB-C3BAA83EADCF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 1 1 1 20 1 120 1 130 1 150 1 160 1 170 1
		 180 1 185 1 195 1 200 1 210 1 215 1 225 1 230 1 240 1;
	setAttr -s 17 ".kit[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kot[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RightArmTwist_Control_scaleY";
	rename -uid "56C6853B-3947-CD6D-7775-E6AB50BC672F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 1 1 1 20 1 120 1 130 1 150 1 160 1 170 1
		 180 1 185 1 195 1 200 1 210 1 215 1 225 1 230 1 240 1;
	setAttr -s 17 ".kit[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kot[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RightArmTwist_Control_scaleZ";
	rename -uid "A0ACB72B-C74F-0FDD-28FC-FFA796B3E7C5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 1 1 1 20 1 120 1 130 1 150 1 160 1 170 1
		 180 1 185 1 195 1 200 1 210 1 215 1 225 1 230 1 240 1;
	setAttr -s 17 ".kit[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kot[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RightElbow_Control_visibility";
	rename -uid "C5614E41-954B-6440-842F-E98031A9AEF1";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 20 1 120 1 130 1 150 1 160 1 170 1
		 180 1 185 1 195 1 230 1 240 1;
	setAttr -s 13 ".kit[2:12]"  9 18 18 18 1 1 1 1 
		1 9 1;
	setAttr -s 13 ".kot[0:12]"  5 1 5 18 18 18 1 1 
		1 1 1 5 5;
	setAttr -s 13 ".kix[0:12]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".kiy[0:12]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 13 ".kox[1:12]"  1 0 1 1 1 1 1 1 1 1 0 0;
	setAttr -s 13 ".koy[1:12]"  0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RightElbow_Control_rotateX";
	rename -uid "9C27010D-2F4C-14DB-2B37-11B3B37D6430";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 1 0 20 0 120 0 130 0 150 0 160 0 170 0
		 180 0 185 0 195 0 230 5.4604084314741783 240 0;
	setAttr -s 13 ".kit[2:12]"  18 18 18 18 1 1 1 1 
		1 18 1;
	setAttr -s 13 ".kot[2:12]"  18 18 18 18 1 1 1 1 
		1 18 1;
	setAttr -s 13 ".kix[0:12]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".kiy[0:12]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 13 ".kox[0:12]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".koy[0:12]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RightElbow_Control_rotateY";
	rename -uid "D4A44B5E-7F40-7D4D-0C8D-A5850F98CB4E";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 1 0 20 0 120 0 130 0 150 0 160 0 170 0
		 180 0 185 0 195 0 230 -43.74173960182425 240 0;
	setAttr -s 13 ".kit[2:12]"  18 18 18 18 1 1 1 1 
		1 18 1;
	setAttr -s 13 ".kot[2:12]"  18 18 18 18 1 1 1 1 
		1 18 1;
	setAttr -s 13 ".kix[0:12]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".kiy[0:12]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 13 ".kox[0:12]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".koy[0:12]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RightElbow_Control_rotateZ";
	rename -uid "1B0B2F0B-684B-22D3-9EB6-10B94356FFEA";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 1 0 20 0 120 0 130 0 150 0 160 0 170 0
		 180 0 185 0 195 0 230 -11.107207293003158 240 0;
	setAttr -s 13 ".kit[2:12]"  18 18 18 18 1 1 1 1 
		1 18 1;
	setAttr -s 13 ".kot[2:12]"  18 18 18 18 1 1 1 1 
		1 18 1;
	setAttr -s 13 ".kix[0:12]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".kiy[0:12]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 13 ".kox[0:12]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".koy[0:12]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RightElbow_Control_scaleX";
	rename -uid "97CD71FA-9640-1226-D0E4-79B22BE08B04";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 20 1 120 1 130 1 150 1 160 1 170 1
		 180 1 185 1 195 1 230 1 240 1;
	setAttr -s 13 ".kit[2:12]"  18 18 18 18 1 1 1 1 
		1 18 1;
	setAttr -s 13 ".kot[2:12]"  18 18 18 18 1 1 1 1 
		1 18 1;
	setAttr -s 13 ".kix[0:12]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".kiy[0:12]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 13 ".kox[0:12]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".koy[0:12]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RightElbow_Control_scaleY";
	rename -uid "D6179417-424A-24A7-7D74-78B28405239B";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 20 1 120 1 130 1 150 1 160 1 170 1
		 180 1 185 1 195 1 230 1 240 1;
	setAttr -s 13 ".kit[2:12]"  18 18 18 18 1 1 1 1 
		1 18 1;
	setAttr -s 13 ".kot[2:12]"  18 18 18 18 1 1 1 1 
		1 18 1;
	setAttr -s 13 ".kix[0:12]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".kiy[0:12]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 13 ".kox[0:12]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".koy[0:12]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RightElbow_Control_scaleZ";
	rename -uid "2669F1CF-0A41-CB1A-7D34-0DB45CACB701";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 20 1 120 1 130 1 150 1 160 1 170 1
		 180 1 185 1 195 1 230 1 240 1;
	setAttr -s 13 ".kit[2:12]"  18 18 18 18 1 1 1 1 
		1 18 1;
	setAttr -s 13 ".kot[2:12]"  18 18 18 18 1 1 1 1 
		1 18 1;
	setAttr -s 13 ".kix[0:12]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".kiy[0:12]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 13 ".kox[0:12]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".koy[0:12]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RightFinders_Control_visibility";
	rename -uid "22E628A4-C34E-3836-BE7B-26A0419D12AF";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 20 1 120 1 130 1 150 1 160 1 170 1
		 180 1 185 1 195 1 230 1 240 1;
	setAttr -s 13 ".kit[2:12]"  9 18 18 18 1 1 1 1 
		1 9 1;
	setAttr -s 13 ".kot[0:12]"  5 1 5 18 18 18 1 1 
		1 1 1 5 5;
	setAttr -s 13 ".kix[0:12]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".kiy[0:12]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 13 ".kox[1:12]"  1 0 1 1 1 1 1 1 1 1 0 0;
	setAttr -s 13 ".koy[1:12]"  0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RightFinders_Control_rotateX";
	rename -uid "EF13F1BD-8045-4892-C260-EB81700EAA42";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 1 0 20 0 120 0 130 0 150 0 160 0 170 0
		 180 0 185 0 195 0 230 5.4604084314741783 240 0;
	setAttr -s 13 ".kit[2:12]"  18 18 18 18 1 1 1 1 
		1 18 1;
	setAttr -s 13 ".kot[2:12]"  18 18 18 18 1 1 1 1 
		1 18 1;
	setAttr -s 13 ".kix[0:12]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".kiy[0:12]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 13 ".kox[0:12]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".koy[0:12]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RightFinders_Control_rotateY";
	rename -uid "DD4A45DA-6C41-5EAA-67D3-E4BE6B4BDBB0";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 1 0 20 0 120 0 130 0 150 0 160 0 170 0
		 180 0 185 0 195 0 230 -43.74173960182425 240 0;
	setAttr -s 13 ".kit[2:12]"  18 18 18 18 1 1 1 1 
		1 18 1;
	setAttr -s 13 ".kot[2:12]"  18 18 18 18 1 1 1 1 
		1 18 1;
	setAttr -s 13 ".kix[0:12]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".kiy[0:12]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 13 ".kox[0:12]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".koy[0:12]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RightFinders_Control_rotateZ";
	rename -uid "F6F01073-E240-BCA5-2756-6BBF994134C1";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 1 0 20 0 120 0 130 0 150 0 160 0 170 0
		 180 0 185 0 195 0 230 -11.107207293003158 240 0;
	setAttr -s 13 ".kit[2:12]"  18 18 18 18 1 1 1 1 
		1 18 1;
	setAttr -s 13 ".kot[2:12]"  18 18 18 18 1 1 1 1 
		1 18 1;
	setAttr -s 13 ".kix[0:12]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".kiy[0:12]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 13 ".kox[0:12]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".koy[0:12]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RightFinders_Control_scaleX";
	rename -uid "0F687160-6041-0E8B-0D83-4FB8E8A5CBB3";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 20 1 120 1 130 1 150 1 160 1 170 1
		 180 1 185 1 195 1 230 1 240 1;
	setAttr -s 13 ".kit[2:12]"  18 18 18 18 1 1 1 1 
		1 18 1;
	setAttr -s 13 ".kot[2:12]"  18 18 18 18 1 1 1 1 
		1 18 1;
	setAttr -s 13 ".kix[0:12]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".kiy[0:12]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 13 ".kox[0:12]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".koy[0:12]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RightFinders_Control_scaleY";
	rename -uid "045E1EAB-9F4D-9621-B511-28AC210393B6";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 20 1 120 1 130 1 150 1 160 1 170 1
		 180 1 185 1 195 1 230 1 240 1;
	setAttr -s 13 ".kit[2:12]"  18 18 18 18 1 1 1 1 
		1 18 1;
	setAttr -s 13 ".kot[2:12]"  18 18 18 18 1 1 1 1 
		1 18 1;
	setAttr -s 13 ".kix[0:12]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".kiy[0:12]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 13 ".kox[0:12]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".koy[0:12]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RightFinders_Control_scaleZ";
	rename -uid "91E4882C-3F4B-83DA-924E-87B1F5335CAB";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 20 1 120 1 130 1 150 1 160 1 170 1
		 180 1 185 1 195 1 230 1 240 1;
	setAttr -s 13 ".kit[2:12]"  18 18 18 18 1 1 1 1 
		1 18 1;
	setAttr -s 13 ".kot[2:12]"  18 18 18 18 1 1 1 1 
		1 18 1;
	setAttr -s 13 ".kix[0:12]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".kiy[0:12]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 13 ".kox[0:12]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".koy[0:12]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LeftUpperArm_Control_visibility";
	rename -uid "6980ED57-0444-196E-1FDE-88B13CC6E37F";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 120 1 130 1 150 1 160 1;
	setAttr -s 5 ".kit[0:4]"  1 1 1 9 1;
	setAttr -s 5 ".kix[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "LeftUpperArm_Control_rotateX";
	rename -uid "269331B6-7146-0AF2-10DF-65BE46B5509A";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 120 0 130 0 150 0 160 0;
	setAttr -s 5 ".kit[3:4]"  18 1;
	setAttr -s 5 ".kot[3:4]"  18 1;
	setAttr -s 5 ".kix[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "LeftUpperArm_Control_rotateY";
	rename -uid "402465D3-7D4E-DAF1-045C-F09E6EC03AEB";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 120 0 130 0 150 0 160 0;
	setAttr -s 5 ".kit[3:4]"  18 1;
	setAttr -s 5 ".kot[3:4]"  18 1;
	setAttr -s 5 ".kix[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "LeftUpperArm_Control_rotateZ";
	rename -uid "8A36502F-D645-92D6-5A7A-10A6E2BFBAF1";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 120 0 130 0 150 0 160 0;
	setAttr -s 5 ".kit[3:4]"  18 1;
	setAttr -s 5 ".kot[3:4]"  18 1;
	setAttr -s 5 ".kix[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTU -n "LeftUpperArm_Control_scaleX";
	rename -uid "819044FF-884A-DC27-F250-6E8F71BF4F12";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 120 1 130 1 150 1 160 1;
	setAttr -s 5 ".kit[3:4]"  18 1;
	setAttr -s 5 ".kot[3:4]"  18 1;
	setAttr -s 5 ".kix[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTU -n "LeftUpperArm_Control_scaleY";
	rename -uid "65D767BF-C446-0A4A-77FB-429A02F12058";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 120 1 130 1 150 1 160 1;
	setAttr -s 5 ".kit[3:4]"  18 1;
	setAttr -s 5 ".kot[3:4]"  18 1;
	setAttr -s 5 ".kix[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTU -n "LeftUpperArm_Control_scaleZ";
	rename -uid "4E704BD9-374D-DB3C-0D2D-7DA2FFFC9D08";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 120 1 130 1 150 1 160 1;
	setAttr -s 5 ".kit[3:4]"  18 1;
	setAttr -s 5 ".kot[3:4]"  18 1;
	setAttr -s 5 ".kix[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTU -n "RightHand_Control_visibility";
	rename -uid "86AF4858-AE4A-62B9-820A-04ACC32423CE";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 1 1 1 20 1 120 1 123 1 126 1 130 1 150 1
		 160 1 170 1 180 1 185 1 195 1 230 1 240 1 257 1 265 1;
	setAttr -s 17 ".kit[2:16]"  9 18 18 18 18 18 1 1 
		1 1 1 9 1 1 1;
	setAttr -s 17 ".kot[0:16]"  5 1 5 18 18 18 18 18 
		1 1 1 1 1 5 5 5 5;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[1:16]"  1 0 1 1 1 1 1 1 1 1 1 1 0 0 0 0;
	setAttr -s 17 ".koy[1:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RightHand_Control_rotateX";
	rename -uid "DA7A9D5B-494B-0450-03C3-32974A7F6EE8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  0 7.3472603576017788 1 2.6432899944989203
		 20 2.6432899944989203 120 2.6432899944989203 123 -168.30983795957647 126 -168.30983795957647
		 128 -126.75980449334483 130 -76.381768703363136 150 -76.381768703363136 160 2.6432899944989203
		 170 -76.381768703363136 176 -143.61422156674035 180 -76.381768703363136 185 -76.381768703363136
		 190 -156.95366616406073 195 -76.381768703363136 230 -4.1789917341079983 240 2.6432899944989203
		 244 116.24363812727672 248 171.11704330657474 253 163.220491033336 257 213.02083034697134
		 259 82.961347956215576 265 126.43547897999038;
	setAttr -s 24 ".kit[0:23]"  1 1 18 18 18 18 18 18 
		18 1 1 18 1 1 18 1 18 1 18 18 18 1 18 1;
	setAttr -s 24 ".kot[0:23]"  1 1 18 18 18 18 18 18 
		18 1 1 18 1 1 18 1 18 1 18 18 18 1 18 1;
	setAttr -s 24 ".kix[0:23]"  1 1 1 1 1 1 0.10332196121878313 1 1 1 1 
		1 1 1 1 1 0.80553392032155424 1 0.11264095848811637 1 1 1 1 1;
	setAttr -s 24 ".kiy[0:23]"  0 0 0 0 0 0 0.99464796402038858 0 0 0 0 
		0 0 0 0 0 0.59254966307592127 0 0.99363575543097205 0 0 0 0 0;
	setAttr -s 24 ".kox[0:23]"  1 1 1 1 1 1 0.10332196121878313 1 1 1 1 
		1 1 1 1 1 0.80553392032155435 1 0.11264095848811637 1 1 1 1 1;
	setAttr -s 24 ".koy[0:23]"  0 0 0 0 0 0 0.99464796402038858 0 0 0 0 
		0 0 0 0 0 0.59254966307592138 0 0.99363575543097205 0 0 0 0 0;
createNode animCurveTA -n "RightHand_Control_rotateY";
	rename -uid "CF8F8643-3E4F-373F-B23F-139255F5F028";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 22.731781195204263 1 -12.233042288776657
		 20 -12.233042288776657 120 -12.233042288776657 123 1.6364373603435554 126 1.6364373603435554
		 128 28.70705380524511 130 20.692187042658794 150 20.692187042658794 160 -12.233042288776657
		 170 20.692187042658794 176 9.993096280384016 180 20.692187042658794 185 20.692187042658794
		 190 6.4184699505274283 195 20.692187042658794 230 -41.130379920171841 240 -12.233042288776657
		 244 2.133970148690191 248 31.35324414282988 253 -3.927135206319885 259 -19.29761359166023
		 265 67.458250754876886;
	setAttr -s 23 ".kit[0:22]"  1 1 18 18 18 18 18 18 
		18 1 1 18 1 1 18 1 18 1 18 18 18 18 1;
	setAttr -s 23 ".kot[0:22]"  1 1 18 18 18 18 18 18 
		18 1 1 18 1 1 18 1 18 1 18 18 18 18 1;
	setAttr -s 23 ".kix[0:22]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.40134073096543654 
		1 0.46027790477142383 1 1;
	setAttr -s 23 ".kiy[0:22]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.91592882783987595 
		0 -0.8877748872204192 0 0;
	setAttr -s 23 ".kox[0:22]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.40134073096543649 
		1 0.46027790477142383 1 1;
	setAttr -s 23 ".koy[0:22]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.91592882783987595 
		0 -0.88777488722041908 0 0;
createNode animCurveTA -n "RightHand_Control_rotateZ";
	rename -uid "DF011827-714C-EB69-2DCC-EB861ECEB4B4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  0 35.527874237479395 1 35.006528865071907
		 20 35.006528865071907 120 35.006528865071907 123 -48.882198853109649 126 -48.882198853109649
		 128 -30.555692055311173 130 13.26619857091443 150 13.26619857091443 160 35.006528865071907
		 170 13.26619857091443 176 -47.232076610509978 180 13.26619857091443 185 13.26619857091443
		 190 -58.470190075777211 195 13.26619857091443 230 -9.4330093937931156 240 35.006528865071907
		 244 143.47471560125817 248 147.8155703069458 253 276.00805925175723 257 135.7106133180568
		 259 205.65660180369679 265 160.7924385666368;
	setAttr -s 24 ".kit[0:23]"  1 1 18 18 18 18 18 18 
		18 1 1 18 1 1 18 1 18 1 18 18 18 1 18 1;
	setAttr -s 24 ".kot[0:23]"  1 1 18 18 18 18 18 18 
		18 1 1 18 1 1 18 1 18 1 18 18 18 1 18 1;
	setAttr -s 24 ".kix[0:23]"  1 1 1 1 1 1 0.15187082030339605 1 1 1 1 
		1 1 1 1 1 1 1 0.59134015557832753 0.59134015557832742 1 1 1 1;
	setAttr -s 24 ".kiy[0:23]"  0 0 0 0 0 0 0.98840035104221491 0 0 0 0 
		0 0 0 0 0 0 0 0.80642223456487083 0.80642223456487072 0 0 0 0;
	setAttr -s 24 ".kox[0:23]"  1 1 1 1 1 1 0.15187082030339602 1 1 1 1 
		1 1 1 1 1 1 1 0.59134015557832742 0.59134015557832742 1 1 1 1;
	setAttr -s 24 ".koy[0:23]"  0 0 0 0 0 0 0.98840035104221491 0 0 0 0 
		0 0 0 0 0 0 0 0.80642223456487072 0.80642223456487072 0 0 0 0;
createNode animCurveTU -n "RightHand_Control_scaleX";
	rename -uid "7CB9CA02-EB45-E941-6E6C-3489F3609D2B";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 1 1 1 20 1 120 1 123 1 126 1 130 1 150 1
		 160 1 170 1 180 1 185 1 195 1 230 1 240 1 257 1 265 1;
	setAttr -s 17 ".kit[2:16]"  18 18 18 18 18 18 1 1 
		1 1 1 18 1 1 1;
	setAttr -s 17 ".kot[2:16]"  18 18 18 18 18 18 1 1 
		1 1 1 18 1 1 1;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RightHand_Control_scaleY";
	rename -uid "B6413DE2-9E47-92C2-51BD-4D9C153F56B3";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 1 1 1 20 1 120 1 123 1 126 1 130 1 150 1
		 160 1 170 1 180 1 185 1 195 1 230 1 240 1 257 1 265 1;
	setAttr -s 17 ".kit[2:16]"  18 18 18 18 18 18 1 1 
		1 1 1 18 1 1 1;
	setAttr -s 17 ".kot[2:16]"  18 18 18 18 18 18 1 1 
		1 1 1 18 1 1 1;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RightHand_Control_scaleZ";
	rename -uid "E7953ABB-1340-1789-5268-7FA6AB0B0EAF";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 1 1 1 20 1 120 1 123 1 126 1 130 1 150 1
		 160 1 170 1 180 1 185 1 195 1 230 1 240 1 257 1 265 1;
	setAttr -s 17 ".kit[2:16]"  18 18 18 18 18 18 1 1 
		1 1 1 18 1 1 1;
	setAttr -s 17 ".kot[2:16]"  18 18 18 18 18 18 1 1 
		1 1 1 18 1 1 1;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LeftShoulder_Control_visibility";
	rename -uid "9C65D30F-C54D-994C-DE5E-A0B9E99C2963";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 1 1 1 20 1 120 1 130 1 150 1 160 1 170 1
		 180 1 185 1 195 1 200 1 210 1 215 1 225 1 230 1 240 1;
	setAttr -s 17 ".kit[0:16]"  1 1 9 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kot[0:16]"  5 1 5 18 18 18 1 1 
		1 1 1 18 18 18 18 18 5;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[1:16]"  1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 0;
	setAttr -s 17 ".koy[1:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LeftShoulder_Control_rotateX";
	rename -uid "3C51842A-644D-C9EA-62E4-98934280450C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 1 0 20 0 120 0 130 0 150 0 160 0 170 0
		 180 0 185 0 195 0 200 0 210 0 215 0 225 0 230 0 240 0;
	setAttr -s 17 ".kit[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kot[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LeftShoulder_Control_rotateY";
	rename -uid "75EAA9F7-4F4E-36FF-090B-3BB6FE1544CD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 1 0 20 0 120 0 130 -12.210317616607968
		 150 -12.210317616607968 160 0 170 -12.210317616607968 180 -12.210317616607968 185 -12.210317616607968
		 195 -12.210317616607968 200 0 210 0 215 0 225 0 230 0 240 0;
	setAttr -s 17 ".kit[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kot[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LeftShoulder_Control_rotateZ";
	rename -uid "41E6723F-0D46-5CBE-39C3-259ADC0BA09B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 1 0 20 0 120 0 130 0 150 0 160 0 170 0
		 180 0 185 0 195 0 200 0 210 0 215 0 225 0 230 0 240 0;
	setAttr -s 17 ".kit[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kot[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LeftShoulder_Control_scaleX";
	rename -uid "E6D77E33-D244-BD46-9680-E7A3F6AAF539";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 1 1 1 20 1 120 1 130 1 150 1 160 1 170 1
		 180 1 185 1 195 1 200 1 210 1 215 1 225 1 230 1 240 1;
	setAttr -s 17 ".kit[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kot[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LeftShoulder_Control_scaleY";
	rename -uid "FAFD25F1-7D4A-998F-8109-3A9B26EF817B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 1 1 1 20 1 120 1 130 1 150 1 160 1 170 1
		 180 1 185 1 195 1 200 1 210 1 215 1 225 1 230 1 240 1;
	setAttr -s 17 ".kit[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kot[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LeftShoulder_Control_scaleZ";
	rename -uid "31F5048C-F345-A408-E186-618A2FE81DF5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 1 1 1 20 1 120 1 130 1 150 1 160 1 170 1
		 180 1 185 1 195 1 200 1 210 1 215 1 225 1 230 1 240 1;
	setAttr -s 17 ".kit[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kot[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LeftElbow_Control_visibility";
	rename -uid "35A71DE1-BD4D-8B22-C937-BE9C3615BEC8";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 20 1 120 1 130 1 150 1 160 1 170 1
		 180 1 185 1 195 1 230 1 240 1;
	setAttr -s 13 ".kit[2:12]"  9 18 18 18 1 1 1 1 
		1 9 1;
	setAttr -s 13 ".kot[0:12]"  5 1 5 18 18 18 1 1 
		1 1 1 5 5;
	setAttr -s 13 ".kix[0:12]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".kiy[0:12]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 13 ".kox[1:12]"  1 0 1 1 1 1 1 1 1 1 0 0;
	setAttr -s 13 ".koy[1:12]"  0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LeftElbow_Control_rotateX";
	rename -uid "F01E4FDF-ED42-A96F-F68E-2D89DEB182AB";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 1 0 20 0 120 0 130 0 150 0 160 0 170 0
		 180 0 185 0 195 0 230 5.4604084314741783 240 0;
	setAttr -s 13 ".kit[2:12]"  18 18 18 18 1 1 1 1 
		1 18 1;
	setAttr -s 13 ".kot[2:12]"  18 18 18 18 1 1 1 1 
		1 18 1;
	setAttr -s 13 ".kix[0:12]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".kiy[0:12]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 13 ".kox[0:12]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".koy[0:12]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LeftElbow_Control_rotateY";
	rename -uid "86617A39-FB42-3148-4585-74822362F2D7";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 1 0 20 0 120 0 130 0 150 0 160 0 170 0
		 180 0 185 0 195 0 230 -43.74173960182425 240 0;
	setAttr -s 13 ".kit[2:12]"  18 18 18 18 1 1 1 1 
		1 18 1;
	setAttr -s 13 ".kot[2:12]"  18 18 18 18 1 1 1 1 
		1 18 1;
	setAttr -s 13 ".kix[0:12]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".kiy[0:12]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 13 ".kox[0:12]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".koy[0:12]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LeftElbow_Control_rotateZ";
	rename -uid "51FA196A-3845-BC7A-D6C7-7D9639BF1BD1";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 1 0 20 0 120 0 130 0 150 0 160 0 170 0
		 180 0 185 0 195 0 230 -11.107207293003158 240 0;
	setAttr -s 13 ".kit[2:12]"  18 18 18 18 1 1 1 1 
		1 18 1;
	setAttr -s 13 ".kot[2:12]"  18 18 18 18 1 1 1 1 
		1 18 1;
	setAttr -s 13 ".kix[0:12]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".kiy[0:12]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 13 ".kox[0:12]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".koy[0:12]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LeftElbow_Control_scaleX";
	rename -uid "69BDC857-324B-C47E-3DDB-38BA716AEAB2";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 20 1 120 1 130 1 150 1 160 1 170 1
		 180 1 185 1 195 1 230 1 240 1;
	setAttr -s 13 ".kit[2:12]"  18 18 18 18 1 1 1 1 
		1 18 1;
	setAttr -s 13 ".kot[2:12]"  18 18 18 18 1 1 1 1 
		1 18 1;
	setAttr -s 13 ".kix[0:12]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".kiy[0:12]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 13 ".kox[0:12]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".koy[0:12]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LeftElbow_Control_scaleY";
	rename -uid "CE29AE7C-6541-BC7F-FF26-9F8BC933E989";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 20 1 120 1 130 1 150 1 160 1 170 1
		 180 1 185 1 195 1 230 1 240 1;
	setAttr -s 13 ".kit[2:12]"  18 18 18 18 1 1 1 1 
		1 18 1;
	setAttr -s 13 ".kot[2:12]"  18 18 18 18 1 1 1 1 
		1 18 1;
	setAttr -s 13 ".kix[0:12]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".kiy[0:12]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 13 ".kox[0:12]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".koy[0:12]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LeftElbow_Control_scaleZ";
	rename -uid "DA5B6E53-6E4E-F806-BF96-718FED88D7C5";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 20 1 120 1 130 1 150 1 160 1 170 1
		 180 1 185 1 195 1 230 1 240 1;
	setAttr -s 13 ".kit[2:12]"  18 18 18 18 1 1 1 1 
		1 18 1;
	setAttr -s 13 ".kot[2:12]"  18 18 18 18 1 1 1 1 
		1 18 1;
	setAttr -s 13 ".kix[0:12]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".kiy[0:12]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 13 ".kox[0:12]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".koy[0:12]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LeftArmTwist_Control_visibility";
	rename -uid "DD6310B5-8B4D-7738-2648-2B911C639FC4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 1 1 1 20 1 120 1 130 1 150 1 160 1 170 1
		 180 1 185 1 195 1 200 1 210 1 215 1 225 1 230 1 240 1;
	setAttr -s 17 ".kit[0:16]"  1 1 9 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kot[0:16]"  5 1 5 18 18 18 1 1 
		1 1 1 18 18 18 18 18 5;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[1:16]"  1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 0;
	setAttr -s 17 ".koy[1:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LeftArmTwist_Control_rotateX";
	rename -uid "CB77B01A-5544-7E78-6EA4-E8B1CDCC9352";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 1 0 20 0 120 0 130 0 150 0 160 0 170 0
		 180 0 185 0 195 0 200 0 210 0 215 0 225 0 230 0 240 0;
	setAttr -s 17 ".kit[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kot[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LeftArmTwist_Control_rotateY";
	rename -uid "E3DF7860-9C44-D1F5-6014-18A57279DEE5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 1 0 20 0 120 0 130 0 150 0 160 0 170 0
		 180 0 185 0 195 0 200 0 210 0 215 0 225 0 230 0 240 0;
	setAttr -s 17 ".kit[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kot[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LeftArmTwist_Control_rotateZ";
	rename -uid "5D39FFAF-7844-FFF5-B614-A2B8F51DE119";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 1 0 20 0 120 0 130 0 150 0 160 0 170 0
		 180 0 185 0 195 0 200 0 210 0 215 0 225 0 230 0 240 0;
	setAttr -s 17 ".kit[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kot[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LeftArmTwist_Control_scaleX";
	rename -uid "236593FC-8C4E-095A-23CB-1587FC00322B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 1 1 1 20 1 120 1 130 1 150 1 160 1 170 1
		 180 1 185 1 195 1 200 1 210 1 215 1 225 1 230 1 240 1;
	setAttr -s 17 ".kit[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kot[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LeftArmTwist_Control_scaleY";
	rename -uid "44083144-8F46-AA8D-64B0-87ABC69701C4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 1 1 1 20 1 120 1 130 1 150 1 160 1 170 1
		 180 1 185 1 195 1 200 1 210 1 215 1 225 1 230 1 240 1;
	setAttr -s 17 ".kit[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kot[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LeftArmTwist_Control_scaleZ";
	rename -uid "B4169FF4-2146-A5B6-CDFA-8498F83311A1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 1 1 1 20 1 120 1 130 1 150 1 160 1 170 1
		 180 1 185 1 195 1 200 1 210 1 215 1 225 1 230 1 240 1;
	setAttr -s 17 ".kit[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kot[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LeftKnee_Control_visibility";
	rename -uid "958BAD18-344C-14BB-2989-DAA52670C29F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 1 1 1 20 1 120 1 130 1 150 1 160 1 170 1
		 180 1 185 1 195 1 200 1 210 1 215 1 225 1 230 1 240 1;
	setAttr -s 17 ".kit[0:16]"  1 1 9 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kot[0:16]"  5 1 5 18 18 18 1 1 
		1 1 1 18 18 18 18 18 5;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[1:16]"  1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 0;
	setAttr -s 17 ".koy[1:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LeftKnee_Control_rotateX";
	rename -uid "6F103C5A-7845-8D70-5703-43B9DE57E6DF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 1 0 20 0 120 0 130 0 150 0 160 0 170 0
		 180 0 185 0 195 0 200 0 210 0 215 0 225 0 230 0 240 0;
	setAttr -s 17 ".kit[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kot[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LeftKnee_Control_rotateY";
	rename -uid "AF999CFE-2F47-ECDC-C81B-11AF18944474";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 1 0 20 0 120 0 130 0 150 0 160 0 170 0
		 180 0 185 0 195 0 200 0 210 0 215 0 225 0 230 0 240 0;
	setAttr -s 17 ".kit[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kot[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LeftKnee_Control_rotateZ";
	rename -uid "08955E4E-3645-9692-56EF-AA8F6F559A5C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 1 0 20 0 120 0 130 0 150 0 160 0 170 0
		 180 0 185 0 195 0 200 0 210 0 215 0 225 0 230 0 240 0;
	setAttr -s 17 ".kit[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kot[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LeftKnee_Control_scaleX";
	rename -uid "8EEC312E-CA47-016A-B83E-F4AFB362A184";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 1 1 1 20 1 120 1 130 1 150 1 160 1 170 1
		 180 1 185 1 195 1 200 1 210 1 215 1 225 1 230 1 240 1;
	setAttr -s 17 ".kit[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kot[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LeftKnee_Control_scaleY";
	rename -uid "B23E43B1-EF4F-AFA6-A3C5-CEA2D6D8FE8E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 1 1 1 20 1 120 1 130 1 150 1 160 1 170 1
		 180 1 185 1 195 1 200 1 210 1 215 1 225 1 230 1 240 1;
	setAttr -s 17 ".kit[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kot[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LeftKnee_Control_scaleZ";
	rename -uid "99783A57-FA48-6BA9-F7A2-96A1A7C9D79F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 1 1 1 20 1 120 1 130 1 150 1 160 1 170 1
		 180 1 185 1 195 1 200 1 210 1 215 1 225 1 230 1 240 1;
	setAttr -s 17 ".kit[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kot[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RightFoot_Control_visibility";
	rename -uid "AD163B95-A74F-814F-C258-09A8209C6D28";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 25 ".ktv[0:24]"  0 1 1 1 20 1 120 1 122 1 125 1 130 1 150 1
		 154 1 160 1 170 1 174 1 178 1 180 1 185 1 188 1 195 1 200 1 205 1 210 1 215 1 220 1
		 225 1 230 1 240 1;
	setAttr -s 25 ".kit[0:24]"  1 1 9 18 18 18 18 18 
		1 1 1 9 9 1 1 9 1 18 18 18 18 18 18 18 1;
	setAttr -s 25 ".kot[0:24]"  5 1 5 18 18 18 18 18 
		1 1 1 5 5 1 1 5 1 18 18 18 18 18 18 18 5;
	setAttr -s 25 ".kix[0:24]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1;
	setAttr -s 25 ".kiy[0:24]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0;
	setAttr -s 25 ".kox[1:24]"  1 0 1 1 1 1 1 1 1 1 0 0 1 1 0 1 1 1 1 1 
		1 1 1 0;
	setAttr -s 25 ".koy[1:24]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0;
createNode animCurveTA -n "RightFoot_Control_rotateX";
	rename -uid "31AA40D6-7E4D-DE9C-F219-BC99D2C5C83C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 31 ".ktv[0:30]"  0 0 1 0 20 0 120 0 122 0 124 28.902150002630599
		 125 0 130 0 150 0 153 31.40005960653226 154 0 160 0 170 0 174 0 176 4.8323818547972062
		 178 0 180 0 185 0 187 47.337586407638128 188 0 195 0 200 0 203 25.713622262254134
		 205 0 210 0 215 0 218 62.870368620738454 220 0 225 0 230 0 240 0;
	setAttr -s 31 ".kit[0:30]"  1 1 18 18 18 18 18 18 
		18 18 1 1 1 18 18 18 1 1 18 18 1 18 18 18 18 
		18 18 18 18 18 1;
	setAttr -s 31 ".kot[0:30]"  1 1 18 18 18 18 18 18 
		18 18 1 1 1 18 18 18 1 1 18 18 1 18 18 18 18 
		18 18 18 18 18 1;
	setAttr -s 31 ".kix[0:30]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 31 ".kiy[0:30]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 31 ".kox[0:30]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 31 ".koy[0:30]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RightFoot_Control_rotateY";
	rename -uid "D1854F29-FB42-AED4-D577-6BA13C423CC0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 -21.624434731124442 1 -21.624434731124442
		 20 -21.624434731124442 120 -21.624434731124442 122 -21.624434731124442 125 -1.0183966739375658
		 130 -1.0183966739375658 150 -1.0183966739375658 154 -21.624434731124442 160 -21.624434731124442
		 170 -1.0183966739375658 174 -1.0183966739375658 176 54.495803392393817 178 88.868028441437957
		 180 88.868028441437957 185 -1.0183966739375658 187 -50.225226663938855 188 -90.515786965518586
		 195 -90.515786965518586 200 -21.624434731124442 205 65.858549813549814 210 65.858549813549814
		 215 -21.624434731124442 218 -71.441757999602586 220 -114.06465961773273 225 -114.06465961773273
		 230 -114.06465961773273 240 -21.624434731124442;
	setAttr -s 28 ".kit[0:27]"  1 1 18 18 18 18 18 18 
		1 1 1 18 18 18 1 1 18 18 1 18 18 18 18 18 18 
		18 18 1;
	setAttr -s 28 ".kot[0:27]"  1 1 18 18 18 18 18 18 
		1 1 1 18 18 18 1 1 18 18 1 18 18 18 18 18 18 
		18 18 1;
	setAttr -s 28 ".kix[0:27]"  1 1 1 1 1 1 1 1 1 1 1 1 0.10564287098185011 
		1 1 1 0.079769361937986255 1 1 0.15091863741277656 1 1 0.1377743607763926 0.12806472899884414 
		1 1 1 1;
	setAttr -s 28 ".kiy[0:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0.9944041350531041 
		0 0 0 -0.9968133470695536 0 0 0.98854618753069445 0 0 -0.99046364169143353 -0.99176581166445366 
		0 0 0 0;
	setAttr -s 28 ".kox[0:27]"  1 1 1 1 1 1 1 1 1 1 1 1 0.10564287098185011 
		1 1 1 0.079769361937986269 1 1 0.15091863741277656 1 1 0.13777436077639263 0.12806472899884411 
		1 1 1 1;
	setAttr -s 28 ".koy[0:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0.99440413505310421 
		0 0 0 -0.99681334706955382 0 0 0.98854618753069445 0 0 -0.99046364169143353 -0.99176581166445366 
		0 0 0 0;
createNode animCurveTA -n "RightFoot_Control_rotateZ";
	rename -uid "61ED0D84-6A4E-667F-1C67-3D9FD0A00BAB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 28 ".ktv[0:27]"  0 0 1 0 20 0 120 0 122 0 125 0 130 0 150 0
		 154 0 160 0 170 0 174 0 176 -19.344489933620654 178 0 180 0 185 0 187 -29.053189960557532
		 188 0 195 0 200 0 205 0 210 0 215 0 218 -38.732014298304648 220 0 225 0 230 0 240 0;
	setAttr -s 28 ".kit[0:27]"  1 1 18 18 18 18 18 18 
		1 1 1 18 18 18 1 1 18 18 1 18 18 18 18 18 18 
		18 18 1;
	setAttr -s 28 ".kot[0:27]"  1 1 18 18 18 18 18 18 
		1 1 1 18 18 18 1 1 18 18 1 18 18 18 18 18 18 
		18 18 1;
	setAttr -s 28 ".kix[0:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1;
	setAttr -s 28 ".kiy[0:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0;
	setAttr -s 28 ".kox[0:27]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1;
	setAttr -s 28 ".koy[0:27]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RightFoot_Control_scaleX";
	rename -uid "9494A289-5440-94C9-A164-5592EF05082F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 25 ".ktv[0:24]"  0 1 1 1 20 1 120 1 122 1 125 1 130 1 150 1
		 154 1 160 1 170 1 174 1 178 1 180 1 185 1 188 1 195 1 200 1 205 1 210 1 215 1 220 1
		 225 1 230 1 240 1;
	setAttr -s 25 ".kit[0:24]"  1 1 18 18 18 18 18 18 
		1 1 1 18 18 1 1 18 1 18 18 18 18 18 18 18 1;
	setAttr -s 25 ".kot[0:24]"  1 1 18 18 18 18 18 18 
		1 1 1 18 18 1 1 18 1 18 18 18 18 18 18 18 1;
	setAttr -s 25 ".kix[0:24]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1;
	setAttr -s 25 ".kiy[0:24]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0;
	setAttr -s 25 ".kox[0:24]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1;
	setAttr -s 25 ".koy[0:24]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0;
createNode animCurveTU -n "RightFoot_Control_scaleY";
	rename -uid "DBBC791E-8044-B512-A9DB-A384EB1ED71D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 25 ".ktv[0:24]"  0 1 1 1 20 1 120 1 122 1 125 1 130 1 150 1
		 154 1 160 1 170 1 174 1 178 1 180 1 185 1 188 1 195 1 200 1 205 1 210 1 215 1 220 1
		 225 1 230 1 240 1;
	setAttr -s 25 ".kit[0:24]"  1 1 18 18 18 18 18 18 
		1 1 1 18 18 1 1 18 1 18 18 18 18 18 18 18 1;
	setAttr -s 25 ".kot[0:24]"  1 1 18 18 18 18 18 18 
		1 1 1 18 18 1 1 18 1 18 18 18 18 18 18 18 1;
	setAttr -s 25 ".kix[0:24]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1;
	setAttr -s 25 ".kiy[0:24]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0;
	setAttr -s 25 ".kox[0:24]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1;
	setAttr -s 25 ".koy[0:24]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0;
createNode animCurveTU -n "RightFoot_Control_scaleZ";
	rename -uid "C0FEA8D1-E54E-21D8-DD64-59B9DF5DCC2D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 25 ".ktv[0:24]"  0 1 1 1 20 1 120 1 122 1 125 1 130 1 150 1
		 154 1 160 1 170 1 174 1 178 1 180 1 185 1 188 1 195 1 200 1 205 1 210 1 215 1 220 1
		 225 1 230 1 240 1;
	setAttr -s 25 ".kit[0:24]"  1 1 18 18 18 18 18 18 
		1 1 1 18 18 1 1 18 1 18 18 18 18 18 18 18 1;
	setAttr -s 25 ".kot[0:24]"  1 1 18 18 18 18 18 18 
		1 1 1 18 18 1 1 18 1 18 18 18 18 18 18 18 1;
	setAttr -s 25 ".kix[0:24]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1;
	setAttr -s 25 ".kiy[0:24]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0;
	setAttr -s 25 ".kox[0:24]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1;
	setAttr -s 25 ".koy[0:24]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0;
createNode animCurveTU -n "LeftToes_Control_visibility";
	rename -uid "82963853-394D-C580-1611-37A47C3887E1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 1 1 1 20 1 120 1 130 1 150 1 160 1 170 1
		 180 1 185 1 195 1 200 1 210 1 215 1 225 1 230 1 240 1;
	setAttr -s 17 ".kit[0:16]"  1 1 9 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kot[0:16]"  5 1 5 18 18 18 1 1 
		1 1 1 18 18 18 18 18 5;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[1:16]"  1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 0;
	setAttr -s 17 ".koy[1:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LeftToes_Control_rotateX";
	rename -uid "5ACFB7C3-6D43-D7D3-4753-E1BEF530F4CE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 1 0 20 0 120 0 130 0 150 0 160 0 170 0
		 180 0 185 0 195 0 200 0 210 0 215 0 225 0 230 0 240 0;
	setAttr -s 17 ".kit[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kot[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LeftToes_Control_rotateY";
	rename -uid "CB4AD19C-6747-32C3-6432-A0B96CAA6885";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 1 0 20 0 120 0 130 0 150 0 160 0 170 0
		 180 0 185 0 195 0 200 0 210 0 215 0 225 0 230 0 240 0;
	setAttr -s 17 ".kit[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kot[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LeftToes_Control_rotateZ";
	rename -uid "D3D2B4C8-0C4B-B887-DEF2-539DF9932836";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 1 0 20 0 120 0 130 0 150 0 160 0 170 0
		 180 0 185 0 195 0 200 0 210 0 215 0 225 0 230 0 240 0;
	setAttr -s 17 ".kit[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kot[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LeftToes_Control_scaleX";
	rename -uid "29DDAE09-C444-9CCE-AE05-F6A52A08CCAA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 1 1 1 20 1 120 1 130 1 150 1 160 1 170 1
		 180 1 185 1 195 1 200 1 210 1 215 1 225 1 230 1 240 1;
	setAttr -s 17 ".kit[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kot[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LeftToes_Control_scaleY";
	rename -uid "ECF47A43-F844-8115-8CEC-84A35F4D7969";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 1 1 1 20 1 120 1 130 1 150 1 160 1 170 1
		 180 1 185 1 195 1 200 1 210 1 215 1 225 1 230 1 240 1;
	setAttr -s 17 ".kit[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kot[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LeftToes_Control_scaleZ";
	rename -uid "FD2569E8-3A4F-398F-E22F-A580E33257C7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 1 1 1 20 1 120 1 130 1 150 1 160 1 170 1
		 180 1 185 1 195 1 200 1 210 1 215 1 225 1 230 1 240 1;
	setAttr -s 17 ".kit[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kot[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RightHip_Control_visibility";
	rename -uid "F5CC33C1-A94A-81F9-97D4-36A7E929D359";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 1 1 1 20 1 120 1 130 1 150 1 160 1 170 1
		 180 1 185 1 195 1 200 1 210 1 215 1 225 1 230 1 240 1;
	setAttr -s 17 ".kit[0:16]"  1 1 9 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kot[0:16]"  5 1 5 18 18 18 1 1 
		1 1 1 18 18 18 18 18 5;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[1:16]"  1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 0;
	setAttr -s 17 ".koy[1:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RightHip_Control_rotateX";
	rename -uid "A0E394AA-804D-1FAC-A84C-B483118EFBAA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 1 0 20 0 120 0 130 0 150 0 160 0 170 0
		 180 0 185 0 195 0 200 0 210 0 215 0 225 0 230 0 240 0;
	setAttr -s 17 ".kit[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kot[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RightHip_Control_rotateY";
	rename -uid "E76F692B-4D4B-AA35-80EA-55B69E17987A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 1 0 20 0 120 0 130 0 150 0 160 0 170 0
		 180 0 185 0 195 0 200 0 210 0 215 0 225 0 230 0 240 0;
	setAttr -s 17 ".kit[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kot[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RightHip_Control_rotateZ";
	rename -uid "4B3E7211-3A48-3A8F-313C-DDBBA48D44A4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 1 0 20 0 120 0 130 0 150 0 160 0 170 0
		 180 0 185 0 195 0 200 0 210 0 215 0 225 0 230 0 240 0;
	setAttr -s 17 ".kit[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kot[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RightHip_Control_scaleX";
	rename -uid "B9CB031B-1644-31F3-AB1B-B4BB9205463E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 1 1 1 20 1 120 1 130 1 150 1 160 1 170 1
		 180 1 185 1 195 1 200 1 210 1 215 1 225 1 230 1 240 1;
	setAttr -s 17 ".kit[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kot[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RightHip_Control_scaleY";
	rename -uid "97D403FC-3341-84D6-694D-3B90340111D7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 1 1 1 20 1 120 1 130 1 150 1 160 1 170 1
		 180 1 185 1 195 1 200 1 210 1 215 1 225 1 230 1 240 1;
	setAttr -s 17 ".kit[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kot[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RightHip_Control_scaleZ";
	rename -uid "037CAC5C-F949-0E2A-563B-ED83F8934294";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 1 1 1 20 1 120 1 130 1 150 1 160 1 170 1
		 180 1 185 1 195 1 200 1 210 1 215 1 225 1 230 1 240 1;
	setAttr -s 17 ".kit[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kot[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LeftFoot_Control_visibility";
	rename -uid "097300C4-204A-3C00-B47B-018FFD1BB355";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 1 1 1 20 1 120 1 125 1 128 1 130 1 150 1
		 156 1 159 1 160 1 170 1 172 1 176 1 180 1 185 1 190 1 193 1 195 1 200 1 205 1 210 1
		 215 1 220 1 225 1 230 1 240 1;
	setAttr -s 27 ".kit[0:26]"  1 1 9 18 18 18 18 18 
		1 1 1 1 9 9 1 1 9 9 1 18 18 18 18 18 18 
		18 1;
	setAttr -s 27 ".kot[0:26]"  5 1 5 18 18 18 18 18 
		1 1 1 1 5 5 1 1 5 5 1 18 18 18 18 18 18 
		18 5;
	setAttr -s 27 ".kix[0:26]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1;
	setAttr -s 27 ".kiy[0:26]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0;
	setAttr -s 27 ".kox[1:26]"  1 0 1 1 1 1 1 1 1 1 1 0 0 1 1 0 0 1 1 1 
		1 1 1 1 1 0;
	setAttr -s 27 ".koy[1:26]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0;
createNode animCurveTA -n "LeftFoot_Control_rotateX";
	rename -uid "CFDDC57E-C043-EA44-0662-00AE606388A6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 32 ".ktv[0:31]"  0 0 1 0 20 0 120 0 125 0 127 20.196892079233667
		 128 0 130 0 150 0 156 0 158 16.747098507389875 159 0 160 0 170 0 172 0 174 28.066989241203597
		 176 0 180 0 185 0 190 0 192 21.800748714804289 193 0 195 0 200 0 205 0 210 0 215 0
		 220 0 223 38.304119130907708 225 0 230 0 240 0;
	setAttr -s 32 ".kit[0:31]"  1 1 18 18 18 18 18 18 
		18 1 18 1 1 1 18 18 18 1 1 18 18 18 1 18 18 
		18 18 18 18 18 18 1;
	setAttr -s 32 ".kot[0:31]"  1 1 18 18 18 18 18 18 
		18 1 18 1 1 1 18 18 18 1 1 18 18 18 1 18 18 
		18 18 18 18 18 18 1;
	setAttr -s 32 ".kix[0:31]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 32 ".kiy[0:31]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 32 ".kox[0:31]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 32 ".koy[0:31]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LeftFoot_Control_rotateY";
	rename -uid "94D866F6-AC4C-3DEC-FEBF-52A4E731D046";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 -8.7283284991529619 1 -8.7283284991529619
		 20 -8.7283284991529619 120 -8.7283284991529619 125 -8.7283284991529619 128 38.946369971919495
		 130 38.946369971919495 150 38.946369971919495 156 38.946369971919495 159 -8.7283284991529619
		 160 -8.7283284991529619 170 38.946369971919495 172 38.946369971919495 176 129.23883803850143
		 180 129.23883803850143 185 38.946369971919495 190 38.946369971919495 193 -50.397618121075425
		 195 -50.397618121075425 200 -8.7283284991529619 205 -8.7283284991529619 210 81.781466443058221
		 215 -8.7283284991529619 220 -8.7283284991529619 225 -98.005814980338812 230 -98.005814980338812
		 240 -8.7283284991529619;
	setAttr -s 27 ".kit[0:26]"  1 1 18 18 18 18 18 18 
		1 1 1 1 18 18 1 1 18 18 1 18 18 18 18 18 18 
		18 1;
	setAttr -s 27 ".kot[0:26]"  1 1 18 18 18 18 18 18 
		1 1 1 1 18 18 1 1 18 18 1 18 18 18 18 18 18 
		18 1;
	setAttr -s 27 ".kix[0:26]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1;
	setAttr -s 27 ".kiy[0:26]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0;
	setAttr -s 27 ".kox[0:26]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1;
	setAttr -s 27 ".koy[0:26]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0;
createNode animCurveTA -n "LeftFoot_Control_rotateZ";
	rename -uid "28487233-004E-70C7-0D10-BD9034D2B533";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 0 1 0 20 0 120 0 125 0 128 0 130 0 150 0
		 156 0 159 0 160 0 170 0 172 0 176 0 180 0 185 0 190 0 193 0 195 0 200 0 205 0 210 0
		 215 0 220 0 225 0 230 0 240 0;
	setAttr -s 27 ".kit[0:26]"  1 1 18 18 18 18 18 18 
		1 1 1 1 18 18 1 1 18 18 1 18 18 18 18 18 18 
		18 1;
	setAttr -s 27 ".kot[0:26]"  1 1 18 18 18 18 18 18 
		1 1 1 1 18 18 1 1 18 18 1 18 18 18 18 18 18 
		18 1;
	setAttr -s 27 ".kix[0:26]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1;
	setAttr -s 27 ".kiy[0:26]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0;
	setAttr -s 27 ".kox[0:26]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1;
	setAttr -s 27 ".koy[0:26]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0;
createNode animCurveTU -n "LeftFoot_Control_scaleX";
	rename -uid "B8DBCCF2-3A42-DEA6-DB92-BEA9CAC5326B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 1 1 1 20 1 120 1 125 1 128 1 130 1 150 1
		 156 1 159 1 160 1 170 1 172 1 176 1 180 1 185 1 190 1 193 1 195 1 200 1 205 1 210 1
		 215 1 220 1 225 1 230 1 240 1;
	setAttr -s 27 ".kit[0:26]"  1 1 18 18 18 18 18 18 
		1 1 1 1 18 18 1 1 18 18 1 18 18 18 18 18 18 
		18 1;
	setAttr -s 27 ".kot[0:26]"  1 1 18 18 18 18 18 18 
		1 1 1 1 18 18 1 1 18 18 1 18 18 18 18 18 18 
		18 1;
	setAttr -s 27 ".kix[0:26]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1;
	setAttr -s 27 ".kiy[0:26]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0;
	setAttr -s 27 ".kox[0:26]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1;
	setAttr -s 27 ".koy[0:26]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0;
createNode animCurveTU -n "LeftFoot_Control_scaleY";
	rename -uid "94E6F7E0-7340-5F7F-D1DE-999DDAAE9733";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 1 1 1 20 1 120 1 125 1 128 1 130 1 150 1
		 156 1 159 1 160 1 170 1 172 1 176 1 180 1 185 1 190 1 193 1 195 1 200 1 205 1 210 1
		 215 1 220 1 225 1 230 1 240 1;
	setAttr -s 27 ".kit[0:26]"  1 1 18 18 18 18 18 18 
		1 1 1 1 18 18 1 1 18 18 1 18 18 18 18 18 18 
		18 1;
	setAttr -s 27 ".kot[0:26]"  1 1 18 18 18 18 18 18 
		1 1 1 1 18 18 1 1 18 18 1 18 18 18 18 18 18 
		18 1;
	setAttr -s 27 ".kix[0:26]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1;
	setAttr -s 27 ".kiy[0:26]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0;
	setAttr -s 27 ".kox[0:26]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1;
	setAttr -s 27 ".koy[0:26]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0;
createNode animCurveTU -n "LeftFoot_Control_scaleZ";
	rename -uid "79C9C469-9D43-F771-FBE2-66BBE99C4C80";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 1 1 1 20 1 120 1 125 1 128 1 130 1 150 1
		 156 1 159 1 160 1 170 1 172 1 176 1 180 1 185 1 190 1 193 1 195 1 200 1 205 1 210 1
		 215 1 220 1 225 1 230 1 240 1;
	setAttr -s 27 ".kit[0:26]"  1 1 18 18 18 18 18 18 
		1 1 1 1 18 18 1 1 18 18 1 18 18 18 18 18 18 
		18 1;
	setAttr -s 27 ".kot[0:26]"  1 1 18 18 18 18 18 18 
		1 1 1 1 18 18 1 1 18 18 1 18 18 18 18 18 18 
		18 1;
	setAttr -s 27 ".kix[0:26]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1;
	setAttr -s 27 ".kiy[0:26]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0;
	setAttr -s 27 ".kox[0:26]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1 1 1;
	setAttr -s 27 ".koy[0:26]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0;
createNode animCurveTU -n "LeftHip_Control_visibility";
	rename -uid "D966E4D1-E44F-B168-E683-DAACD9E798A9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 1 1 1 20 1 120 1 130 1 150 1 160 1 170 1
		 180 1 185 1 195 1 200 1 210 1 215 1 225 1 230 1 240 1;
	setAttr -s 17 ".kit[0:16]"  1 1 9 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kot[0:16]"  5 1 5 18 18 18 1 1 
		1 1 1 18 18 18 18 18 5;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[1:16]"  1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 0;
	setAttr -s 17 ".koy[1:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LeftHip_Control_rotateX";
	rename -uid "2236C0D9-AD45-A66F-11EF-B6B914EAC5B2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 1 0 20 0 120 0 130 0 150 0 160 0 170 0
		 180 0 185 0 195 0 200 0 210 0 215 0 225 0 230 0 240 0;
	setAttr -s 17 ".kit[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kot[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LeftHip_Control_rotateY";
	rename -uid "708A88B8-F54A-1345-0999-488CC0FE44CF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 1 0 20 0 120 0 130 0 150 0 160 0 170 0
		 180 0 185 0 195 0 200 0 210 0 215 0 225 0 230 0 240 0;
	setAttr -s 17 ".kit[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kot[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LeftHip_Control_rotateZ";
	rename -uid "D71BC092-CD48-64A4-B890-7F9CEEE3114E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 1 0 20 0 120 0 130 0 150 0 160 0 170 0
		 180 0 185 0 195 0 200 0 210 0 215 0 225 0 230 0 240 0;
	setAttr -s 17 ".kit[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kot[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LeftHip_Control_scaleX";
	rename -uid "C7DB329A-0C47-7F40-261C-5B9209508046";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 1 1 1 20 1 120 1 130 1 150 1 160 1 170 1
		 180 1 185 1 195 1 200 1 210 1 215 1 225 1 230 1 240 1;
	setAttr -s 17 ".kit[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kot[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LeftHip_Control_scaleY";
	rename -uid "E7F211E4-EF45-8E84-BB76-A3913D84CEFA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 1 1 1 20 1 120 1 130 1 150 1 160 1 170 1
		 180 1 185 1 195 1 200 1 210 1 215 1 225 1 230 1 240 1;
	setAttr -s 17 ".kit[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kot[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LeftHip_Control_scaleZ";
	rename -uid "EE566DF9-C046-5181-9FEA-7FAB10361E78";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 1 1 1 20 1 120 1 130 1 150 1 160 1 170 1
		 180 1 185 1 195 1 200 1 210 1 215 1 225 1 230 1 240 1;
	setAttr -s 17 ".kit[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kot[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RightKnee_Control_visibility";
	rename -uid "F8455042-7A49-6C9A-A97A-638686B0FD05";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 1 1 1 20 1 120 1 130 1 150 1 160 1 170 1
		 180 1 185 1 195 1 200 1 210 1 215 1 225 1 230 1 240 1;
	setAttr -s 17 ".kit[0:16]"  1 1 9 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kot[0:16]"  5 1 5 18 18 18 1 1 
		1 1 1 18 18 18 18 18 5;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[1:16]"  1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 0;
	setAttr -s 17 ".koy[1:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RightKnee_Control_rotateX";
	rename -uid "DC6D1C97-4244-7544-46AF-2B99A7A09D45";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 1 0 20 0 120 0 130 0 150 0 160 0 170 0
		 180 0 185 0 195 0 200 0 210 0 215 0 225 0 230 0 240 0;
	setAttr -s 17 ".kit[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kot[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RightKnee_Control_rotateY";
	rename -uid "CB66F226-9B45-7552-67B4-B8AD57D4E822";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 1 0 20 0 120 0 130 0 150 0 160 0 170 0
		 180 0 185 0 195 0 200 0 210 0 215 0 225 0 230 0 240 0;
	setAttr -s 17 ".kit[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kot[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RightKnee_Control_rotateZ";
	rename -uid "BEC83556-BA48-1F62-94FA-2E86D2D59CAC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 1 0 20 0 120 0 130 0 150 0 160 0 170 0
		 180 0 185 0 195 0 200 0 210 0 215 0 225 0 230 0 240 0;
	setAttr -s 17 ".kit[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kot[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RightKnee_Control_scaleX";
	rename -uid "52C44301-6C45-E1C7-2E38-748600B226E9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 1 1 1 20 1 120 1 130 1 150 1 160 1 170 1
		 180 1 185 1 195 1 200 1 210 1 215 1 225 1 230 1 240 1;
	setAttr -s 17 ".kit[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kot[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RightKnee_Control_scaleY";
	rename -uid "E64BDA13-7E41-BB52-F682-BD82F2E4A8B5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 1 1 1 20 1 120 1 130 1 150 1 160 1 170 1
		 180 1 185 1 195 1 200 1 210 1 215 1 225 1 230 1 240 1;
	setAttr -s 17 ".kit[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kot[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RightKnee_Control_scaleZ";
	rename -uid "F8ED0690-8846-DD9F-B966-AEB1F60DC53B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 1 1 1 20 1 120 1 130 1 150 1 160 1 170 1
		 180 1 185 1 195 1 200 1 210 1 215 1 225 1 230 1 240 1;
	setAttr -s 17 ".kit[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kot[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LeftFingers_Control_visibility";
	rename -uid "FA4825CF-DF4A-6E76-B7B5-D79BA97F823C";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 20 1 120 1 130 1 150 1 160 1 170 1
		 180 1 185 1 195 1 230 1 240 1;
	setAttr -s 13 ".kit[2:12]"  9 18 18 18 1 1 1 1 
		1 9 1;
	setAttr -s 13 ".kot[0:12]"  5 1 5 18 18 18 1 1 
		1 1 1 5 5;
	setAttr -s 13 ".kix[0:12]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".kiy[0:12]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 13 ".kox[1:12]"  1 0 1 1 1 1 1 1 1 1 0 0;
	setAttr -s 13 ".koy[1:12]"  0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LeftFingers_Control_rotateX";
	rename -uid "43C5E756-D042-66D3-E03E-14B7905ABA05";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 1 0 20 0 120 0 130 0 150 0 160 0 170 0
		 180 0 185 0 195 0 230 5.4604084314741783 240 0;
	setAttr -s 13 ".kit[2:12]"  18 18 18 18 1 1 1 1 
		1 18 1;
	setAttr -s 13 ".kot[2:12]"  18 18 18 18 1 1 1 1 
		1 18 1;
	setAttr -s 13 ".kix[0:12]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".kiy[0:12]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 13 ".kox[0:12]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".koy[0:12]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LeftFingers_Control_rotateY";
	rename -uid "19E32867-AA45-0035-679C-F4A7ECCEB002";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 1 0 20 0 120 0 130 0 150 0 160 0 170 0
		 180 0 185 0 195 0 230 -43.74173960182425 240 0;
	setAttr -s 13 ".kit[2:12]"  18 18 18 18 1 1 1 1 
		1 18 1;
	setAttr -s 13 ".kot[2:12]"  18 18 18 18 1 1 1 1 
		1 18 1;
	setAttr -s 13 ".kix[0:12]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".kiy[0:12]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 13 ".kox[0:12]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".koy[0:12]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LeftFingers_Control_rotateZ";
	rename -uid "F1823171-7C47-F803-E6F5-0B8050542562";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 1 0 20 0 120 0 130 0 150 0 160 0 170 0
		 180 0 185 0 195 0 230 -11.107207293003158 240 0;
	setAttr -s 13 ".kit[2:12]"  18 18 18 18 1 1 1 1 
		1 18 1;
	setAttr -s 13 ".kot[2:12]"  18 18 18 18 1 1 1 1 
		1 18 1;
	setAttr -s 13 ".kix[0:12]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".kiy[0:12]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 13 ".kox[0:12]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".koy[0:12]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LeftFingers_Control_scaleX";
	rename -uid "B5668235-944D-60FC-6510-1E9AAD0DB715";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 20 1 120 1 130 1 150 1 160 1 170 1
		 180 1 185 1 195 1 230 1 240 1;
	setAttr -s 13 ".kit[2:12]"  18 18 18 18 1 1 1 1 
		1 18 1;
	setAttr -s 13 ".kot[2:12]"  18 18 18 18 1 1 1 1 
		1 18 1;
	setAttr -s 13 ".kix[0:12]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".kiy[0:12]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 13 ".kox[0:12]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".koy[0:12]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LeftFingers_Control_scaleY";
	rename -uid "87E6A933-5E4E-B80A-FA3F-B89D8C711C17";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 20 1 120 1 130 1 150 1 160 1 170 1
		 180 1 185 1 195 1 230 1 240 1;
	setAttr -s 13 ".kit[2:12]"  18 18 18 18 1 1 1 1 
		1 18 1;
	setAttr -s 13 ".kot[2:12]"  18 18 18 18 1 1 1 1 
		1 18 1;
	setAttr -s 13 ".kix[0:12]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".kiy[0:12]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 13 ".kox[0:12]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".koy[0:12]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LeftFingers_Control_scaleZ";
	rename -uid "A29A4D84-6F47-C272-D403-F39059A39249";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 1 1 1 20 1 120 1 130 1 150 1 160 1 170 1
		 180 1 185 1 195 1 230 1 240 1;
	setAttr -s 13 ".kit[2:12]"  18 18 18 18 1 1 1 1 
		1 18 1;
	setAttr -s 13 ".kot[2:12]"  18 18 18 18 1 1 1 1 
		1 18 1;
	setAttr -s 13 ".kix[0:12]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".kiy[0:12]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 13 ".kox[0:12]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".koy[0:12]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RightToes_Control_visibility";
	rename -uid "E1F101AB-6742-4171-1B97-4BB0AD3FD726";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 1 1 1 20 1 120 1 130 1 150 1 160 1 170 1
		 180 1 185 1 195 1 200 1 210 1 215 1 225 1 230 1 240 1;
	setAttr -s 17 ".kit[0:16]"  1 1 9 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kot[0:16]"  5 1 5 18 18 18 1 1 
		1 1 1 18 18 18 18 18 5;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[1:16]"  1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 0;
	setAttr -s 17 ".koy[1:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RightToes_Control_rotateX";
	rename -uid "0B6D61CD-1F47-F541-109B-098FA4F75B17";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 1 0 20 0 120 0 130 0 150 0 160 0 170 0
		 180 0 185 0 195 0 200 0 210 0 215 0 225 0 230 0 240 0;
	setAttr -s 17 ".kit[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kot[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RightToes_Control_rotateY";
	rename -uid "F7E521DA-084C-1E93-612F-AFB8699C4665";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 1 0 20 0 120 0 130 0 150 0 160 0 170 0
		 180 0 185 0 195 0 200 0 210 0 215 0 225 0 230 0 240 0;
	setAttr -s 17 ".kit[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kot[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RightToes_Control_rotateZ";
	rename -uid "26308A00-374F-237D-D0E0-8EBE79B7B8EF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 1 0 20 0 120 0 130 0 150 0 160 0 170 0
		 180 0 185 0 195 0 200 0 210 0 215 0 225 0 230 0 240 0;
	setAttr -s 17 ".kit[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kot[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RightToes_Control_scaleX";
	rename -uid "89177C78-644D-1436-8A41-56951BEDEE26";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 1 1 1 20 1 120 1 130 1 150 1 160 1 170 1
		 180 1 185 1 195 1 200 1 210 1 215 1 225 1 230 1 240 1;
	setAttr -s 17 ".kit[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kot[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RightToes_Control_scaleY";
	rename -uid "F116DB67-4943-064C-258A-85885325CFA1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 1 1 1 20 1 120 1 130 1 150 1 160 1 170 1
		 180 1 185 1 195 1 200 1 210 1 215 1 225 1 230 1 240 1;
	setAttr -s 17 ".kit[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kot[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RightToes_Control_scaleZ";
	rename -uid "5087B70C-F349-CC71-CCC2-13A7C9867993";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 1 1 1 20 1 120 1 130 1 150 1 160 1 170 1
		 180 1 185 1 195 1 200 1 210 1 215 1 225 1 230 1 240 1;
	setAttr -s 17 ".kit[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kot[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RightShoulder_Control_visibility";
	rename -uid "E926CEE3-794A-C737-F1CC-D3B676FFE0DD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 1 1 1 20 1 120 1 130 1 150 1 160 1 170 1
		 180 1 185 1 195 1 200 1 210 1 215 1 225 1 230 1 240 1;
	setAttr -s 17 ".kit[0:16]"  1 1 9 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kot[0:16]"  5 1 5 18 18 18 1 1 
		1 1 1 18 18 18 18 18 5;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[1:16]"  1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 0;
	setAttr -s 17 ".koy[1:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RightShoulder_Control_rotateX";
	rename -uid "9C851AB1-1842-ED69-EE0D-3E90A0B49B8A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 1 0 20 0 120 0 130 0 150 0 160 0 170 0
		 180 0 185 0 195 0 200 0 210 0 215 0 225 0 230 0 240 0 248 34.198666091419291 253 0;
	setAttr -s 19 ".kit[0:18]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1 18 18;
	setAttr -s 19 ".kot[0:18]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1 18 18;
	setAttr -s 19 ".kix[0:18]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 19 ".kiy[0:18]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 19 ".kox[0:18]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 19 ".koy[0:18]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RightShoulder_Control_rotateY";
	rename -uid "97A7C5BB-BA4F-07A4-5980-E5AEF73F7E69";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 1 0 20 0 120 0 130 0 150 0 160 0 170 0
		 180 0 185 0 195 0 200 0 210 0 215 0 225 0 230 0 240 0 248 48.360491921301332 253 0;
	setAttr -s 19 ".kit[0:18]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1 18 18;
	setAttr -s 19 ".kot[0:18]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1 18 18;
	setAttr -s 19 ".kix[0:18]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 19 ".kiy[0:18]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 19 ".kox[0:18]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 19 ".koy[0:18]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RightShoulder_Control_rotateZ";
	rename -uid "02E9D432-3C40-E8A0-2566-10BB0D8714E1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 19 ".ktv[0:18]"  0 0 1 0 20 0 120 0 130 0 150 0 160 0 170 0
		 180 0 185 0 195 0 200 0 210 0 215 0 225 0 230 0 240 0 248 42.280621347716632 253 0;
	setAttr -s 19 ".kit[0:18]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1 18 18;
	setAttr -s 19 ".kot[0:18]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1 18 18;
	setAttr -s 19 ".kix[0:18]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 19 ".kiy[0:18]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 19 ".kox[0:18]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 19 ".koy[0:18]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RightShoulder_Control_scaleX";
	rename -uid "DA3B417E-B14D-88F4-B0A3-5EB3C9CD403C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 1 1 1 20 1 120 1 130 1 150 1 160 1 170 1
		 180 1 185 1 195 1 200 1 210 1 215 1 225 1 230 1 240 1;
	setAttr -s 17 ".kit[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kot[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RightShoulder_Control_scaleY";
	rename -uid "73E4F2BA-0F48-004D-F8DC-FFBB8E4FCBA2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 1 1 1 20 1 120 1 130 1 150 1 160 1 170 1
		 180 1 185 1 195 1 200 1 210 1 215 1 225 1 230 1 240 1;
	setAttr -s 17 ".kit[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kot[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RightShoulder_Control_scaleZ";
	rename -uid "94D51CF8-2547-4E3F-DE1D-B0937D0CCE39";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 1 1 1 20 1 120 1 130 1 150 1 160 1 170 1
		 180 1 185 1 195 1 200 1 210 1 215 1 225 1 230 1 240 1;
	setAttr -s 17 ".kit[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kot[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "Neck_Control_visibility";
	rename -uid "DC25A4C8-E44B-56CB-4767-CDA4810FC1AA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 1 1 1 20 1 120 1 130 1 150 1 160 1 170 1
		 180 1 185 1 195 1 200 1 210 1 215 1 225 1 230 1 240 1;
	setAttr -s 17 ".kit[0:16]"  1 1 9 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kot[0:16]"  5 1 5 18 18 18 1 1 
		1 1 1 18 18 18 18 18 5;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[1:16]"  1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 0;
	setAttr -s 17 ".koy[1:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Neck_Control_rotateX";
	rename -uid "FAEE2B35-484B-86EB-8932-D4B94F51BD7D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 1 0 20 0 120 0 130 0 150 0 160 0 170 0
		 180 0 185 0 195 0 200 0 210 0 215 0 225 0 230 0 240 0;
	setAttr -s 17 ".kit[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kot[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Neck_Control_rotateY";
	rename -uid "1E4FB279-1F48-B407-1F3C-6EA2634F9821";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 1 0 20 0 120 0 130 -13.449987523616006
		 150 -13.449987523616006 160 0 170 -13.449987523616006 180 -13.449987523616006 185 -13.449987523616006
		 195 -13.449987523616006 200 0 210 0 215 0 225 0 230 0 240 0;
	setAttr -s 17 ".kit[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kot[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Neck_Control_rotateZ";
	rename -uid "8AA386E1-4C45-B33A-3719-D59839B2E7B1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 1 0 20 0 120 0 130 0 150 0 160 0 170 0
		 180 0 185 0 195 0 200 0 210 0 215 0 225 0 230 0 240 0;
	setAttr -s 17 ".kit[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kot[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "Neck_Control_scaleX";
	rename -uid "F727A271-EC4E-30A6-EEED-EDB420ED03E3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 1 1 1 20 1 120 1 130 1 150 1 160 1 170 1
		 180 1 185 1 195 1 200 1 210 1 215 1 225 1 230 1 240 1;
	setAttr -s 17 ".kit[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kot[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "Neck_Control_scaleY";
	rename -uid "F042856E-5148-DBB0-4036-AA9409C862E9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 1 1 1 20 1 120 1 130 1 150 1 160 1 170 1
		 180 1 185 1 195 1 200 1 210 1 215 1 225 1 230 1 240 1;
	setAttr -s 17 ".kit[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kot[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "Neck_Control_scaleZ";
	rename -uid "4312FFCF-6E4F-A671-94B6-C58FE915129D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 1 1 1 20 1 120 1 130 1 150 1 160 1 170 1
		 180 1 185 1 195 1 200 1 210 1 215 1 225 1 230 1 240 1;
	setAttr -s 17 ".kit[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kot[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RootMotion_Control_visibility";
	rename -uid "3E9E05FE-D849-0189-3CA5-ADA75624CBCD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 1 1 1 20 1 120 1 130 1 150 1 160 1 170 1
		 180 1 185 1 195 1 200 1 210 1 215 1 225 1 230 1 240 1;
	setAttr -s 17 ".kit[0:16]"  1 1 9 18 18 18 1 1 
		18 1 18 18 18 18 18 18 1;
	setAttr -s 17 ".kot[0:16]"  5 1 5 18 18 18 1 1 
		18 1 18 18 18 18 18 18 5;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[1:16]"  1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 0;
	setAttr -s 17 ".koy[1:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RootMotion_Control_rotateX";
	rename -uid "CD244A4A-7845-0207-7DE2-BF8C9E170712";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 1 0 20 0 120 0 130 0 150 0 160 0 170 0
		 180 0 185 0 195 0 200 0 210 0 215 0 225 0 230 0 240 0;
	setAttr -s 17 ".kit[0:16]"  1 1 18 18 18 18 1 1 
		18 1 18 18 18 18 18 18 1;
	setAttr -s 17 ".kot[0:16]"  1 1 18 18 18 18 1 1 
		18 1 18 18 18 18 18 18 1;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RootMotion_Control_rotateY";
	rename -uid "FEA9AFED-C24F-8C24-226E-A9AE28F50D97";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 1 0 20 0 120 0 130 0 150 0 160 0 170 0
		 180 90 185 0 195 -90 200 0 210 90 215 0 225 -90 230 -90 240 0;
	setAttr -s 17 ".kit[0:16]"  1 1 18 18 18 18 1 1 
		18 1 18 18 18 18 18 18 1;
	setAttr -s 17 ".kot[0:16]"  1 1 18 18 18 18 1 1 
		18 1 18 18 18 18 18 18 1;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 0.19511986277060733 
		1 0.19511986277060733 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0.98077940391934182 
		0 -0.98077940391934182 0 0 0;
	setAttr -s 17 ".kox[0:16]"  1 1 1 1 1 1 1 1 1 1 1 0.19511986277060736 
		1 0.19511986277060736 1 1 1;
	setAttr -s 17 ".koy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0.98077940391934193 
		0 -0.98077940391934193 0 0 0;
createNode animCurveTA -n "RootMotion_Control_rotateZ";
	rename -uid "9762EFC6-AF4B-2B05-04EE-25A1F1C72D9D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 1 0 20 0 120 0 130 0 150 0 160 0 170 0
		 180 0 185 0 195 0 200 0 210 0 215 0 225 0 230 0 240 0;
	setAttr -s 17 ".kit[0:16]"  1 1 18 18 18 18 1 1 
		18 1 18 18 18 18 18 18 1;
	setAttr -s 17 ".kot[0:16]"  1 1 18 18 18 18 1 1 
		18 1 18 18 18 18 18 18 1;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RootMotion_Control_scaleX";
	rename -uid "332CB48D-0B42-552F-3AB4-5C8EE78F046E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 1 1 1 20 1 120 1 130 1 150 1 160 1 170 1
		 180 1 185 1 195 1 200 1 210 1 215 1 225 1 230 1 240 1;
	setAttr -s 17 ".kit[0:16]"  1 1 18 18 18 18 1 1 
		18 1 18 18 18 18 18 18 1;
	setAttr -s 17 ".kot[0:16]"  1 1 18 18 18 18 1 1 
		18 1 18 18 18 18 18 18 1;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RootMotion_Control_scaleY";
	rename -uid "A4CE9692-CA44-0B74-BA33-8AB661CBE16A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 1 1 1 20 1 120 1 130 1 150 1 160 1 170 1
		 180 1 185 1 195 1 200 1 210 1 215 1 225 1 230 1 240 1;
	setAttr -s 17 ".kit[0:16]"  1 1 18 18 18 18 1 1 
		18 1 18 18 18 18 18 18 1;
	setAttr -s 17 ".kot[0:16]"  1 1 18 18 18 18 1 1 
		18 1 18 18 18 18 18 18 1;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RootMotion_Control_scaleZ";
	rename -uid "6DA6FBB8-714B-6AF1-6261-BEA997613D1B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 1 1 1 20 1 120 1 130 1 150 1 160 1 170 1
		 180 1 185 1 195 1 200 1 210 1 215 1 225 1 230 1 240 1;
	setAttr -s 17 ".kit[0:16]"  1 1 18 18 18 18 1 1 
		18 1 18 18 18 18 18 18 1;
	setAttr -s 17 ".kot[0:16]"  1 1 18 18 18 18 1 1 
		18 1 18 18 18 18 18 18 1;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "Root_Control_visibility";
	rename -uid "794DC1FC-AB47-B2D2-F3A1-68AFE43C7D91";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 1 1 1 20 1 120 1 130 1 150 1 160 1 170 1
		 180 1 185 1 195 1 200 1 210 1 215 1 225 1 230 1 240 1;
	setAttr -s 17 ".kit[0:16]"  1 1 9 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kot[0:16]"  5 1 5 18 18 18 1 1 
		1 1 1 18 18 18 18 18 5;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[1:16]"  1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 0;
	setAttr -s 17 ".koy[1:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Root_Control_rotateX";
	rename -uid "290F0FB0-2944-0E44-5E6F-148FD3110818";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 1 0 20 0 120 0 130 0 150 0 160 0 170 0
		 180 0 185 0 195 0 200 0 210 0 215 0 225 0 230 0 240 0;
	setAttr -s 17 ".kit[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kot[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Root_Control_rotateY";
	rename -uid "7CDAAEE5-3041-4C8A-2386-FDB207B43FDD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 1 0 20 0 120 0 130 0 150 0 160 0 170 0
		 180 0 185 0 195 0 200 0 210 0 215 0 225 0 230 0 240 0;
	setAttr -s 17 ".kit[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kot[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Root_Control_rotateZ";
	rename -uid "923B20BF-5B46-9B5E-5960-6E94E81FCEFF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 0 1 0 20 0 120 0 130 0 150 0 160 0 170 0
		 180 0 185 0 195 0 200 0 210 0 215 0 225 0 230 0 240 0;
	setAttr -s 17 ".kit[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kot[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "Root_Control_scaleX";
	rename -uid "7A38A02A-D340-355A-76F7-24BC5A5D604B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 1 1 1 20 1 120 1 130 1 150 1 160 1 170 1
		 180 1 185 1 195 1 200 1 210 1 215 1 225 1 230 1 240 1;
	setAttr -s 17 ".kit[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kot[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "Root_Control_scaleY";
	rename -uid "31A86580-4542-EFAB-7BB7-15A9F97D52E4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 1 1 1 20 1 120 1 130 1 150 1 160 1 170 1
		 180 1 185 1 195 1 200 1 210 1 215 1 225 1 230 1 240 1;
	setAttr -s 17 ".kit[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kot[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "Root_Control_scaleZ";
	rename -uid "CA002E35-7142-B094-6BC8-3C81AE978853";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 1 1 1 20 1 120 1 130 1 150 1 160 1 170 1
		 180 1 185 1 195 1 200 1 210 1 215 1 225 1 230 1 240 1;
	setAttr -s 17 ".kit[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kot[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RightUpperArm_Control_visibility";
	rename -uid "8F9F5256-E743-F550-8E6B-7DB8ED57C5DE";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 120 1 130 1 150 1 160 1;
	setAttr -s 5 ".kit[0:4]"  1 1 1 9 1;
	setAttr -s 5 ".kix[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "RightUpperArm_Control_rotateX";
	rename -uid "062CC49F-5E43-86DD-0E1D-569124148821";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 120 0 130 0 150 0 160 0;
	setAttr -s 5 ".kit[3:4]"  18 1;
	setAttr -s 5 ".kot[3:4]"  18 1;
	setAttr -s 5 ".kix[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "RightUpperArm_Control_rotateY";
	rename -uid "A72EB3D5-2247-34FE-BD9A-88899EF34649";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 120 0 130 0 150 0 160 0;
	setAttr -s 5 ".kit[3:4]"  18 1;
	setAttr -s 5 ".kot[3:4]"  18 1;
	setAttr -s 5 ".kix[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTA -n "RightUpperArm_Control_rotateZ";
	rename -uid "7B517BC4-114A-C1E1-052F-FA81F05D9025";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 120 0 130 0 150 0 160 0;
	setAttr -s 5 ".kit[3:4]"  18 1;
	setAttr -s 5 ".kot[3:4]"  18 1;
	setAttr -s 5 ".kix[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTU -n "RightUpperArm_Control_scaleX";
	rename -uid "2CD98336-BE4E-A166-BF06-F5A7FF6FBC65";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 120 1 130 1 150 1 160 1;
	setAttr -s 5 ".kit[3:4]"  18 1;
	setAttr -s 5 ".kot[3:4]"  18 1;
	setAttr -s 5 ".kix[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTU -n "RightUpperArm_Control_scaleY";
	rename -uid "DDF4D568-294A-E0E4-8B80-BB91F6137DA0";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 120 1 130 1 150 1 160 1;
	setAttr -s 5 ".kit[3:4]"  18 1;
	setAttr -s 5 ".kot[3:4]"  18 1;
	setAttr -s 5 ".kix[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTU -n "RightUpperArm_Control_scaleZ";
	rename -uid "017BA23A-DA45-85C4-947A-9B9205CAFB40";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 120 1 130 1 150 1 160 1;
	setAttr -s 5 ".kit[3:4]"  18 1;
	setAttr -s 5 ".kot[3:4]"  18 1;
	setAttr -s 5 ".kix[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTU -n "Spine1_Control_visibility";
	rename -uid "624F058D-3947-8E3D-893A-BCBC8CA3147E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 1 1 1 20 1 120 1 130 1 150 1 160 1 170 1
		 180 1 185 1 195 1 200 1 210 1 215 1 225 1 230 1 240 1;
	setAttr -s 17 ".kit[0:16]"  1 1 9 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kot[0:16]"  5 1 5 18 18 18 1 1 
		1 1 1 18 18 18 18 18 5;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[1:16]"  1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 0;
	setAttr -s 17 ".koy[1:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Spine1_Control_rotateX";
	rename -uid "14AD5234-5943-CBA8-7AF2-599D698EE2CA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 22 ".ktv[0:21]"  0 0 1 0 20 0 120 0 130 0 150 0 160 0 170 0
		 180 0 185 0 195 0 200 0 210 0 215 0 225 0 230 0 234 -4.5988824278071485 239 -2.3494261582321321
		 240 0 250 8.3254365716025411 257 -6.3226054134854017 265 0;
	setAttr -s 22 ".kit[0:21]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 18 18 1 18 18 18;
	setAttr -s 22 ".kot[0:21]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 18 18 1 18 18 18;
	setAttr -s 22 ".kix[0:21]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.95213003412990738 
		1 1 1 1;
	setAttr -s 22 ".kiy[0:21]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.30569330726691007 
		0 0 0 0;
	setAttr -s 22 ".kox[0:21]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.95213003412990727 
		1 1 1 1;
	setAttr -s 22 ".koy[0:21]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.30569330726691007 
		0 0 0 0;
createNode animCurveTA -n "Spine1_Control_rotateY";
	rename -uid "606411DE-A742-8ECB-9AE1-D487A7CAFA15";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 -9.6571078845567317 1 -9.6571078845567317
		 20 -9.6571078845567317 120 -9.6571078845567317 130 0 150 0 160 -9.6571078845567317
		 170 0 180 0 185 0 195 0 200 -9.6571078845567317 210 -9.6571078845567317 215 -9.6571078845567317
		 225 -9.6571078845567317 230 -9.6571078845567317 234 -14.87087972620718 239 -13.909298637978674
		 240 -9.6571078845567317 257 -11.962799904051057 265 0;
	setAttr -s 21 ".kit[0:20]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 18 18 1 18 18;
	setAttr -s 21 ".kot[0:20]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 18 18 1 18 18;
	setAttr -s 21 ".kix[0:20]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.97201734951838048 
		1 1 1;
	setAttr -s 21 ".kiy[0:20]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.23490907227108676 
		0 0 0;
	setAttr -s 21 ".kox[0:20]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.97201734951838048 
		1 1 1;
	setAttr -s 21 ".koy[0:20]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.23490907227108673 
		0 0 0;
createNode animCurveTA -n "Spine1_Control_rotateZ";
	rename -uid "A86DD54D-704F-76F9-FC15-F2881A4D812C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 21 ".ktv[0:20]"  0 0 1 0 20 0 120 0 130 0 150 0 160 0 170 0
		 180 0 185 0 195 0 200 0 210 0 215 0 225 0 230 0 234 9.1345960145683236 239 2.0550649179896516
		 240 0 257 -2.4295532835071496 265 0;
	setAttr -s 21 ".kit[0:20]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 18 18 1 18 18;
	setAttr -s 21 ".kot[0:20]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 18 18 1 18 18;
	setAttr -s 21 ".kix[0:20]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.84314497859977089 
		1 1 1;
	setAttr -s 21 ".kiy[0:20]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.53768628870559065 
		0 0 0;
	setAttr -s 21 ".kox[0:20]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.843144978599771 
		1 1 1;
	setAttr -s 21 ".koy[0:20]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.53768628870559076 
		0 0 0;
createNode animCurveTU -n "Spine1_Control_scaleX";
	rename -uid "7C5732B1-7F49-0441-3086-2F95DCD96B55";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 1 1 1 20 1 120 1 130 1 150 1 160 1 170 1
		 180 1 185 1 195 1 200 1 210 1 215 1 225 1 230 1 240 1;
	setAttr -s 17 ".kit[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kot[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "Spine1_Control_scaleY";
	rename -uid "2A978AE8-1645-3A6A-D8C7-F79350CCFFD5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 1 1 1 20 1 120 1 130 1 150 1 160 1 170 1
		 180 1 185 1 195 1 200 1 210 1 215 1 225 1 230 1 240 1;
	setAttr -s 17 ".kit[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kot[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "Spine1_Control_scaleZ";
	rename -uid "56E6DB19-484B-8E12-8209-2DB95C3BFF6F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 1 1 1 20 1 120 1 130 1 150 1 160 1 170 1
		 180 1 185 1 195 1 200 1 210 1 215 1 225 1 230 1 240 1;
	setAttr -s 17 ".kit[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kot[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "Spine2_Control_visibility";
	rename -uid "952326C6-F241-681F-F00F-1E8F82761E2D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 1 1 1 20 1 120 1 130 1 150 1 160 1 170 1
		 180 1 185 1 195 1 200 1 210 1 215 1 225 1 230 1 240 1;
	setAttr -s 17 ".kit[0:16]"  1 1 9 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kot[0:16]"  5 1 5 18 18 18 1 1 
		1 1 1 18 18 18 18 18 5;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[1:16]"  1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 0;
	setAttr -s 17 ".koy[1:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Spine2_Control_rotateX";
	rename -uid "759B6A68-A848-A7B4-9546-4393C0DB5451";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 0.70602267318013323 1 0.70602267318013323
		 20 0.70077398063472074 120 0.70602267318013323 130 0 139 0.25220056098217725 150 0
		 160 0.70602267318013323 170 0 180 0 185 0 195 0 200 0.70602267318013323 210 0.70602267318013323
		 215 0.70602267318013323 225 0.70602267318013323 230 0.70602267318013323 234 -2.0282515279510664
		 239 -1.2211584499398647 240 0.70077398063472074 248 16.32375975965018 257 3.2095252812440802
		 265 0;
	setAttr -s 23 ".kit[0:22]"  1 1 18 18 18 18 18 1 
		1 1 1 1 18 18 18 18 18 18 18 1 18 18 18;
	setAttr -s 23 ".kot[0:22]"  1 1 18 18 18 18 18 1 
		1 1 1 1 18 18 18 18 18 18 18 1 18 18 18;
	setAttr -s 23 ".kix[0:22]"  1 0.99999998657451061 1 1 1 1 1 0.99999998657451061 
		1 1 1 1 1 1 1 1 1 1 0.98233030820250689 1 1 0.92776589746628013 1;
	setAttr -s 23 ".kiy[0:22]"  0 -0.00016386268205779804 0 0 0 0 0 -0.00016386268205779804 
		0 0 0 0 0 0 0 0 0 0 0.1871554583408345 0 0 -0.37316275202461985 0;
	setAttr -s 23 ".kox[0:22]"  1 0.99999998657451061 1 1 1 1 1 0.99999998657451061 
		1 1 1 1 1 1 1 1 1 1 0.98233030820250689 1 1 0.92776589746628002 1;
	setAttr -s 23 ".koy[0:22]"  0 -0.00016386268205779804 0 0 0 0 0 -0.00016386268205779804 
		0 0 0 0 0 0 0 0 0 0 0.1871554583408345 0 0 -0.37316275202461979 0;
createNode animCurveTA -n "Spine2_Control_rotateY";
	rename -uid "C4C2F04A-CF40-94EA-E7AA-AD82922877D5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 2.201397836010591 1 2.201397836010591
		 20 0.96178556325448905 120 2.201397836010591 130 0 139 0.44061299063509196 150 0
		 160 2.201397836010591 170 0 180 0 185 0 195 0 200 2.201397836010591 210 2.201397836010591
		 215 2.201397836010591 225 2.201397836010591 230 2.201397836010591 234 -3.2649119748779887
		 239 -2.1072478203855427 240 0.96178556325448905 248 25.147151704519484 257 15.520070257301649
		 265 0;
	setAttr -s 23 ".kit[0:22]"  1 1 18 18 18 18 18 1 
		1 1 1 1 18 18 18 18 18 18 18 1 18 18 18;
	setAttr -s 23 ".kot[0:22]"  1 1 18 18 18 18 18 1 
		1 1 1 1 18 18 18 18 18 18 18 1 18 18 18;
	setAttr -s 23 ".kix[0:22]"  1 0.99925198191452846 1 1 1 1 1 0.99925198191452846 
		1 1 1 1 1 1 1 1 1 1 0.96018405576219112 1 1 0.85004565965489642 1;
	setAttr -s 23 ".kiy[0:22]"  0 -0.038671393043009927 0 0 0 0 0 -0.038671393043009927 
		0 0 0 0 0 0 0 0 0 0 0.27936817832399852 0 0 -0.5267090055257001 0;
	setAttr -s 23 ".kox[0:22]"  1 0.99925198191452835 1 1 1 1 1 0.99925198191452835 
		1 1 1 1 1 1 1 1 1 1 0.96018405576219124 1 1 0.85004565965489642 1;
	setAttr -s 23 ".koy[0:22]"  0 -0.038671393043009927 0 0 0 0 0 -0.038671393043009927 
		0 0 0 0 0 0 0 0 0 0 0.27936817832399852 0 0 -0.52670900552569999 0;
createNode animCurveTA -n "Spine2_Control_rotateZ";
	rename -uid "DC9C8DFA-E343-7764-5CAF-1FAC2B24F722";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 23 ".ktv[0:22]"  0 -2.3111792856659821 1 -2.3111792856659821
		 20 -2.3111792856659821 120 -2.3111792856659821 130 0 139 0.6635925750241618 150 0
		 160 -2.3111792856659821 170 0 180 0 185 0 195 0 200 -2.3111792856659821 210 -2.3111792856659821
		 215 -2.3111792856659821 225 -2.3111792856659821 230 -2.3111792856659821 234 6.4622708186749414
		 239 -0.39870984034197254 240 -2.3111792856659821 248 1.7975100879911379 257 -2.3791484143439789
		 265 0;
	setAttr -s 23 ".kit[0:22]"  1 1 18 18 18 18 18 1 
		1 1 1 1 18 18 18 18 18 18 18 1 18 18 18;
	setAttr -s 23 ".kot[0:22]"  1 1 18 18 18 18 18 1 
		1 1 1 1 18 18 18 18 18 18 18 1 18 18 18;
	setAttr -s 23 ".kix[0:22]"  1 1 1 1 0.99785637331997856 1 0.99824421635529648 
		1 0.99824421635529648 0.99824421635529648 0.99824421635529648 0.99824421635529648 
		1 1 1 1 1 1 0.85275351682642686 1 1 1 1;
	setAttr -s 23 ".kiy[0:22]"  0 0 0 0 0.065442021856753282 0 -0.059232461650685235 
		0 -0.059232461650685235 -0.059232461650685235 -0.059232461650685235 -0.059232461650685235 
		0 0 0 0 0 0 -0.52231354523902662 0 0 0 0;
	setAttr -s 23 ".kox[0:22]"  1 1 1 1 0.99785637331997845 1 0.99824421635529659 
		1 0.99824421635529659 0.99824421635529659 0.99824421635529659 0.99824421635529659 
		1 1 1 1 1 1 0.85275351682642697 1 1 1 1;
	setAttr -s 23 ".koy[0:22]"  0 0 0 0 0.065442021856753282 0 -0.059232461650685242 
		0 -0.059232461650685242 -0.059232461650685242 -0.059232461650685242 -0.059232461650685242 
		0 0 0 0 0 0 -0.52231354523902662 0 0 0 0;
createNode animCurveTU -n "Spine2_Control_scaleX";
	rename -uid "1249B3CD-D34E-1DB9-C21B-8A9AD9C56709";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 1 1 1 20 1 120 1 130 1 150 1 160 1 170 1
		 180 1 185 1 195 1 200 1 210 1 215 1 225 1 230 1 240 1;
	setAttr -s 17 ".kit[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kot[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "Spine2_Control_scaleY";
	rename -uid "3B820B6E-D74E-B84B-96F8-C188C0A77DC3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 1 1 1 20 1 120 1 130 1 150 1 160 1 170 1
		 180 1 185 1 195 1 200 1 210 1 215 1 225 1 230 1 240 1;
	setAttr -s 17 ".kit[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kot[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "Spine2_Control_scaleZ";
	rename -uid "50D43D14-1F45-568C-26EF-73B7AAA099C3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 17 ".ktv[0:16]"  0 1 1 1 20 1 120 1 130 1 150 1 160 1 170 1
		 180 1 185 1 195 1 200 1 210 1 215 1 225 1 230 1 240 1;
	setAttr -s 17 ".kit[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kot[0:16]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 1;
	setAttr -s 17 ".kix[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".kiy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 17 ".kox[0:16]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 17 ".koy[0:16]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "Hips_Control_visibility";
	rename -uid "7A15F1D3-9045-493F-7747-30B755AAD217";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 1 1 1 20 1 120 1 130 1 150 1 160 1 170 1
		 180 1 185 1 195 1 200 1 210 1 215 1 225 1 230 1 235 1 240 1;
	setAttr -s 18 ".kit[0:17]"  1 1 9 18 18 18 1 1 
		1 1 1 18 18 18 18 18 18 1;
	setAttr -s 18 ".kot[0:17]"  5 1 5 18 18 18 1 1 
		1 1 1 18 18 18 18 18 18 5;
	setAttr -s 18 ".kix[0:17]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 18 ".kiy[0:17]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 18 ".kox[1:17]"  1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 1 0;
	setAttr -s 18 ".koy[1:17]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Hips_Control_rotateX";
	rename -uid "1FF1D9FA-0B4A-F9BB-CCE5-17997DB1282B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  0 0 1 0 20 0 120 0 130 2.2710216024060941
		 135 2.274246640415031 143 2.9139229515467888 147 3.273770339636429 150 2.2710216024060941
		 160 0 170 2.2710216024060941 180 2.2710216024060941 185 2.2710216024060941 195 2.2710216024060941
		 200 0 210 0 215 0 225 0 230 0 235 -2.3630951454091327 240 0 250 9.1931019502581535
		 257 -4.6552061613685307 265 -1.0209054057100344;
	setAttr -s 24 ".kit[0:23]"  1 1 18 18 18 18 18 18 
		18 1 1 1 1 1 18 18 18 18 18 18 1 18 18 18;
	setAttr -s 24 ".kot[0:23]"  1 1 18 18 18 18 18 18 
		18 1 1 1 1 1 18 18 18 18 18 18 1 18 18 18;
	setAttr -s 24 ".kix[0:23]"  1 1 1 1 0.99999967151224545 0.99999967151224545 
		0.99939190050783377 1 0.99448239098945956 1 0.99448239098945956 0.99448239098945956 
		0.99448239098945956 0.99448239098945956 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 24 ".kiy[0:23]"  0 0 0 0 0.00081054019106139923 0.00081054019106139923 
		0.034868742439900326 0 -0.10490364155684885 0 -0.10490364155684885 -0.10490364155684885 
		-0.10490364155684885 -0.10490364155684885 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 24 ".kox[0:23]"  1 1 1 1 0.99999967151224545 0.99999967151224534 
		0.99939190050783377 1 0.99448239098945945 1 0.99448239098945945 0.99448239098945945 
		0.99448239098945945 0.99448239098945945 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 24 ".koy[0:23]"  0 0 0 0 0.00081054019106139923 0.00081054019106139923 
		0.034868742439900326 0 -0.10490364155684884 0 -0.10490364155684884 -0.10490364155684884 
		-0.10490364155684884 -0.10490364155684884 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Hips_Control_rotateY";
	rename -uid "B1C06CED-BF4A-D3A6-9570-969FCAB62D3D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  0 -21.164194144536513 1 -21.164194144536513
		 20 -21.164194144536513 120 -21.164194144536513 130 30.605856896480034 135 30.605074040498511
		 143 30.449324529614426 147 30.361710812726802 150 30.605856896480034 160 -21.164194144536513
		 170 30.605856896480034 180 30.605856896480034 185 30.605856896480034 195 30.605856896480034
		 200 -21.164194144536513 210 -21.164194144536513 215 -21.164194144536513 225 -21.164194144536513
		 230 -21.164194144536513 235 -22.837697535498425 240 -21.164194144536513 250 -17.131787492212464
		 257 -24.499714454339607 265 0.43640457539528144;
	setAttr -s 24 ".kit[0:23]"  1 1 18 18 18 18 18 18 
		18 1 1 1 1 1 18 18 18 18 18 18 1 18 18 18;
	setAttr -s 24 ".kot[0:23]"  1 1 18 18 18 18 18 18 
		18 1 1 1 1 1 18 18 18 18 18 18 1 18 18 18;
	setAttr -s 24 ".kix[0:23]"  1 1 1 1 1 0.99999998064409601 0.99996391961693165 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 24 ".kiy[0:23]"  0 0 0 0 0 -0.00019675316422169313 -0.0084946727036905485 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 24 ".kox[0:23]"  1 1 1 1 1 0.99999998064409601 0.99996391961693165 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 24 ".koy[0:23]"  0 0 0 0 0 -0.00019675316422169311 -0.0084946727036905485 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Hips_Control_rotateZ";
	rename -uid "BAE15FEB-F445-1942-4086-47933DAAEE7F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 24 ".ktv[0:23]"  0 0 1 0 20 0 120 0 130 0 135 0.0019767615483712911
		 143 0.23033991317755681 147 0.45793511966744094 150 0 160 0 170 0 180 0 185 0 195 0
		 200 0 210 0 215 0 225 0 230 0 235 4.8957632064079331 240 0 250 -3.0819809944431449
		 257 -8.9515708315177189 265 1.4383453840362352;
	setAttr -s 24 ".kit[0:23]"  1 1 18 18 18 18 18 18 
		18 1 1 1 1 1 18 18 18 18 18 18 1 18 18 18;
	setAttr -s 24 ".kot[0:23]"  1 1 18 18 18 18 18 18 
		18 1 1 1 1 1 18 18 18 18 18 18 1 18 18 18;
	setAttr -s 24 ".kix[0:23]"  1 1 1 1 1 0.99999987658776646 0.99987336533906268 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.97652830179007666 1 1;
	setAttr -s 24 ".kiy[0:23]"  0 0 0 0 0 0.00049681430334799293 0.015913933691499637 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.21538912647343408 0 0;
	setAttr -s 24 ".kox[0:23]"  1 1 1 1 1 0.99999987658776635 0.99987336533906268 
		1 1 1 1 1 1 1 1 1 1 1 1 1 1 0.97652830179007655 1 1;
	setAttr -s 24 ".koy[0:23]"  0 0 0 0 0 0.00049681430334799293 0.015913933691499637 
		0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.21538912647343408 0 0;
createNode animCurveTU -n "Hips_Control_scaleX";
	rename -uid "F15E32B5-814B-C6C4-3BF5-2DB4CD3D7CE4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 1 1 1 20 1 120 1 130 1 150 1 160 1 170 1
		 180 1 185 1 195 1 200 1 210 1 215 1 225 1 230 1 235 1 240 1;
	setAttr -s 18 ".kit[0:17]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 18 1;
	setAttr -s 18 ".kot[0:17]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 18 1;
	setAttr -s 18 ".kix[0:17]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 18 ".kiy[0:17]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 18 ".kox[0:17]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 18 ".koy[0:17]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "Hips_Control_scaleY";
	rename -uid "C8BDD108-5045-0524-4FAB-BA963BCF5451";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 1 1 1 20 1 120 1 130 1 150 1 160 1 170 1
		 180 1 185 1 195 1 200 1 210 1 215 1 225 1 230 1 235 1 240 1;
	setAttr -s 18 ".kit[0:17]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 18 1;
	setAttr -s 18 ".kot[0:17]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 18 1;
	setAttr -s 18 ".kix[0:17]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 18 ".kiy[0:17]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 18 ".kox[0:17]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 18 ".koy[0:17]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "Hips_Control_scaleZ";
	rename -uid "F8454FAE-CA49-5638-FF8E-999DB01ECAF7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 18 ".ktv[0:17]"  0 1 1 1 20 1 120 1 130 1 150 1 160 1 170 1
		 180 1 185 1 195 1 200 1 210 1 215 1 225 1 230 1 235 1 240 1;
	setAttr -s 18 ".kit[0:17]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 18 1;
	setAttr -s 18 ".kot[0:17]"  1 1 18 18 18 18 1 1 
		1 1 1 18 18 18 18 18 18 1;
	setAttr -s 18 ".kix[0:17]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 18 ".kiy[0:17]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 18 ".kox[0:17]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 18 ".koy[0:17]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LeftFingers_Control_Grip";
	rename -uid "07259355-9349-FCCB-77BF-109C9A6EAD69";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0.5 1 0.5 20 0.5 120 0.5 130 1 150 1 160 0.5
		 170 1 180 1 185 1 195 1 230 1 240 0.5;
	setAttr -s 13 ".kit[2:12]"  18 18 18 18 1 1 1 1 
		1 18 1;
	setAttr -s 13 ".kot[2:12]"  18 18 18 18 1 1 1 1 
		1 18 1;
	setAttr -s 13 ".kix[0:12]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".kiy[0:12]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 13 ".kox[0:12]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".koy[0:12]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RightFinders_Control_Grip";
	rename -uid "F6B38EA3-E34F-5341-2CE0-BCA5DE1A5600";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0.5 1 0.5 20 0.5 120 0.5 130 0.5 150 0.5
		 160 0.5 170 0.5 180 0.5 185 0.5 195 0.5 230 0.5 240 0.5;
	setAttr -s 13 ".kit[2:12]"  18 18 18 18 1 1 1 1 
		1 18 1;
	setAttr -s 13 ".kot[2:12]"  18 18 18 18 1 1 1 1 
		1 18 1;
	setAttr -s 13 ".kix[0:12]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".kiy[0:12]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 13 ".kox[0:12]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".koy[0:12]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "pointLight1_translateX";
	rename -uid "7AB3E246-274F-1A8F-6910-9A9001C6B934";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  150 94.732403100383749;
createNode animCurveTA -n "pointLight1_rotateZ";
	rename -uid "2E8550CB-2342-A6DD-1EF0-DD9CD4362006";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  150 0;
createNode animCurveTU -n "pointLight1_scaleX";
	rename -uid "0940A8E2-EF4F-EA76-F144-3F97211DF25D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  150 1;
createNode animCurveTA -n "pointLight1_rotateY";
	rename -uid "E5FA578B-3C4E-6953-2D9A-B79D26D88CAF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  150 0;
createNode animCurveTA -n "pointLight1_rotateX";
	rename -uid "3CBB5998-6349-E933-9276-F3BFC300D061";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  150 0;
createNode animCurveTU -n "pointLight1_visibility";
	rename -uid "AC87B675-6241-2328-82E0-6DB71791F5A7";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  150 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "pointLight1_translateZ";
	rename -uid "2FE79FCB-B040-4623-5CB1-54B8BF96C6C2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  150 202.62188606886471;
createNode animCurveTL -n "pointLight1_translateY";
	rename -uid "6BD0216D-4C48-050A-330C-B5B72E11EEFB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  150 350.69603050034289;
createNode animCurveTU -n "pointLight1_scaleZ";
	rename -uid "6E2CC7E1-7B4B-1B4E-ECFA-67A177935EC7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  150 1;
createNode animCurveTU -n "pointLight1_scaleY";
	rename -uid "3D5104B7-B846-AE77-ED3B-DF97716A24F4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  150 1;
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "9FA00517-3F4B-BFBC-8F81-FC9053974392";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -586.95597687657312 -395.2524141435228 ;
	setAttr ".tgi[0].vh" -type "double2" 949.31762358388505 377.36767480400334 ;
	setAttr -s 14 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" -301.42855834960938;
	setAttr ".tgi[0].ni[0].y" -94.285713195800781;
	setAttr ".tgi[0].ni[0].nvs" 18304;
	setAttr ".tgi[0].ni[1].x" 771.4285888671875;
	setAttr ".tgi[0].ni[1].y" 267.14285278320312;
	setAttr ".tgi[0].ni[1].nvs" 18304;
	setAttr ".tgi[0].ni[2].x" 771.4285888671875;
	setAttr ".tgi[0].ni[2].y" 150;
	setAttr ".tgi[0].ni[2].nvs" 18304;
	setAttr ".tgi[0].ni[3].x" -301.42855834960938;
	setAttr ".tgi[0].ni[3].y" 140;
	setAttr ".tgi[0].ni[3].nvs" 18304;
	setAttr ".tgi[0].ni[4].x" -978.5714111328125;
	setAttr ".tgi[0].ni[4].y" -94.285713195800781;
	setAttr ".tgi[0].ni[4].nvs" 18304;
	setAttr ".tgi[0].ni[5].x" -301.42855834960938;
	setAttr ".tgi[0].ni[5].y" 22.857143402099609;
	setAttr ".tgi[0].ni[5].nvs" 18304;
	setAttr ".tgi[0].ni[6].x" 94.285713195800781;
	setAttr ".tgi[0].ni[6].y" 28.571428298950195;
	setAttr ".tgi[0].ni[6].nvs" 18304;
	setAttr ".tgi[0].ni[7].x" -608.5714111328125;
	setAttr ".tgi[0].ni[7].y" -94.285713195800781;
	setAttr ".tgi[0].ni[7].nvs" 18304;
	setAttr ".tgi[0].ni[8].x" 771.4285888671875;
	setAttr ".tgi[0].ni[8].y" -82.857139587402344;
	setAttr ".tgi[0].ni[8].nvs" 18304;
	setAttr ".tgi[0].ni[9].x" 401.42855834960938;
	setAttr ".tgi[0].ni[9].y" 180;
	setAttr ".tgi[0].ni[9].nvs" 18304;
	setAttr ".tgi[0].ni[10].x" -978.5714111328125;
	setAttr ".tgi[0].ni[10].y" 4.2857141494750977;
	setAttr ".tgi[0].ni[10].nvs" 18304;
	setAttr ".tgi[0].ni[11].x" -978.5714111328125;
	setAttr ".tgi[0].ni[11].y" -192.85714721679688;
	setAttr ".tgi[0].ni[11].nvs" 18304;
	setAttr ".tgi[0].ni[12].x" 401.42855834960938;
	setAttr ".tgi[0].ni[12].y" 62.857143402099609;
	setAttr ".tgi[0].ni[12].nvs" 18304;
	setAttr ".tgi[0].ni[13].x" 401.42855834960938;
	setAttr ".tgi[0].ni[13].y" -111.42857360839844;
	setAttr ".tgi[0].ni[13].nvs" 18304;
createNode animCurveTU -n "pointLight2_visibility";
	rename -uid "B952D3F8-184F-9DDD-4B92-349D52AF40D3";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  120 1 150 1 170 1 180 1 200 1;
	setAttr -s 5 ".kit[0:4]"  9 9 9 9 1;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
createNode animCurveTL -n "pointLight2_translateX";
	rename -uid "7921F68C-5E4F-275D-6D43-5E964C792D9E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  120 -102.67414197752672 150 -102.67414197752672
		 170 -102.67414197752672 180 -102.67414197752672 200 -102.67414197752672;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[4]"  1;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[4]"  1;
	setAttr -s 5 ".koy[4]"  0;
createNode animCurveTL -n "pointLight2_translateY";
	rename -uid "E1373CBA-B849-FF7E-806F-BEA8E79A4C28";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  120 262.93218498962517 150 262.93218498962517
		 170 262.93218498962517 180 262.93218498962517 200 262.93218498962517;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[4]"  1;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[4]"  1;
	setAttr -s 5 ".koy[4]"  0;
createNode animCurveTL -n "pointLight2_translateZ";
	rename -uid "ED92266E-B84E-6187-054B-2D923B99EAAC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  120 -183.95791339846397 150 -183.95791339846397
		 170 -183.95791339846397 180 -183.95791339846397 200 -183.95791339846397;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[4]"  1;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[4]"  1;
	setAttr -s 5 ".koy[4]"  0;
createNode animCurveTA -n "pointLight2_rotateX";
	rename -uid "56B1415A-5B43-0636-F29A-9FAF9D476D0F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  120 0 150 0 170 0 180 0 200 0;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[4]"  1;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[4]"  1;
	setAttr -s 5 ".koy[4]"  0;
createNode animCurveTA -n "pointLight2_rotateY";
	rename -uid "CB8B6EE0-2147-179F-D6CB-8CBDD7150B49";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  120 0 150 0 170 0 180 0 200 0;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[4]"  1;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[4]"  1;
	setAttr -s 5 ".koy[4]"  0;
createNode animCurveTA -n "pointLight2_rotateZ";
	rename -uid "A32CF36F-BB40-A679-8288-D8B53DDA2EC0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  120 0 150 0 170 0 180 0 200 0;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[4]"  1;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[4]"  1;
	setAttr -s 5 ".koy[4]"  0;
createNode animCurveTU -n "pointLight2_scaleX";
	rename -uid "8B43DC67-C445-C0A6-3C15-7C9D9BD1FF2E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  120 1 150 1 170 1 180 1 200 1;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[4]"  1;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[4]"  1;
	setAttr -s 5 ".koy[4]"  0;
createNode animCurveTU -n "pointLight2_scaleY";
	rename -uid "05AD053B-AD4E-4DE4-8192-7198D7057D47";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  120 1 150 1 170 1 180 1 200 1;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[4]"  1;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[4]"  1;
	setAttr -s 5 ".koy[4]"  0;
createNode animCurveTU -n "pointLight2_scaleZ";
	rename -uid "3BB3F53B-684C-7CFF-E742-4CA2F3E08278";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  120 1 150 1 170 1 180 1 200 1;
	setAttr -s 5 ".kit[4]"  1;
	setAttr -s 5 ".kot[4]"  1;
	setAttr -s 5 ".kix[4]"  1;
	setAttr -s 5 ".kiy[4]"  0;
	setAttr -s 5 ".kox[4]"  1;
	setAttr -s 5 ".koy[4]"  0;
createNode animCurveTA -n "RightKnee_Control_rotateX1";
	rename -uid "6AD41052-0445-F60F-7FAC-1D80EB235000";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  1 0 20 0 120 0 130 0 150 0 160 0 170 0 180 0
		 185 0 195 0 200 0 210 0 215 0 225 0 230 0 240 0;
	setAttr -s 16 ".kit[0:15]"  1 18 18 18 18 1 1 1 
		1 1 18 18 18 18 18 1;
	setAttr -s 16 ".kot[0:15]"  1 18 18 18 18 1 1 1 
		1 1 18 18 18 18 18 1;
	setAttr -s 16 ".kix[0:15]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[0:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[0:15]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".koy[0:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RightKnee_Control_rotateY1";
	rename -uid "0897AA1C-FE46-D289-BF85-56A94705A1F2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  1 0 20 0 120 0 130 0 150 0 160 0 170 0 180 0
		 185 0 195 0 200 0 210 0 215 0 225 0 230 0 240 0;
	setAttr -s 16 ".kit[0:15]"  1 18 18 18 18 1 1 1 
		1 1 18 18 18 18 18 1;
	setAttr -s 16 ".kot[0:15]"  1 18 18 18 18 1 1 1 
		1 1 18 18 18 18 18 1;
	setAttr -s 16 ".kix[0:15]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[0:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[0:15]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".koy[0:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RightKnee_Control_rotateZ1";
	rename -uid "9E6F0437-B748-7A65-A464-C0B00468FBF1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  1 0 20 0 120 0 130 0 150 0 160 0 170 0 180 0
		 185 0 195 0 200 0 210 0 215 0 225 0 230 0 240 0;
	setAttr -s 16 ".kit[0:15]"  1 18 18 18 18 1 1 1 
		1 1 18 18 18 18 18 1;
	setAttr -s 16 ".kot[0:15]"  1 18 18 18 18 1 1 1 
		1 1 18 18 18 18 18 1;
	setAttr -s 16 ".kix[0:15]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[0:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[0:15]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".koy[0:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RightToes_Control_rotateX1";
	rename -uid "639B73FA-DE41-C4C0-A0ED-68A43D1DEBF5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  1 0 20 0 120 0 130 0 150 0 160 0 170 0 180 0
		 185 0 195 0 200 0 210 0 215 0 225 0 230 0 240 0;
	setAttr -s 16 ".kit[0:15]"  1 18 18 18 18 1 1 1 
		1 1 18 18 18 18 18 1;
	setAttr -s 16 ".kot[0:15]"  1 18 18 18 18 1 1 1 
		1 1 18 18 18 18 18 1;
	setAttr -s 16 ".kix[0:15]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[0:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[0:15]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".koy[0:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RightToes_Control_rotateY1";
	rename -uid "A152F96A-0843-47FC-B627-AAAB3CC17B1F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  1 0 20 0 120 0 130 0 150 0 160 0 170 0 180 0
		 185 0 195 0 200 0 210 0 215 0 225 0 230 0 240 0;
	setAttr -s 16 ".kit[0:15]"  1 18 18 18 18 1 1 1 
		1 1 18 18 18 18 18 1;
	setAttr -s 16 ".kot[0:15]"  1 18 18 18 18 1 1 1 
		1 1 18 18 18 18 18 1;
	setAttr -s 16 ".kix[0:15]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[0:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[0:15]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".koy[0:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RightToes_Control_rotateZ1";
	rename -uid "9364A4E1-6141-B427-2E80-709483E4F886";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  1 0 20 0 120 0 130 0 150 0 160 0 170 0 180 0
		 185 0 195 0 200 0 210 0 215 0 225 0 230 0 240 0;
	setAttr -s 16 ".kit[0:15]"  1 18 18 18 18 1 1 1 
		1 1 18 18 18 18 18 1;
	setAttr -s 16 ".kot[0:15]"  1 18 18 18 18 1 1 1 
		1 1 18 18 18 18 18 1;
	setAttr -s 16 ".kix[0:15]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[0:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[0:15]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".koy[0:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RightKnee_Control_rotateX2";
	rename -uid "18249184-124A-1B09-51B1-71A2740CB47A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  1 0 20 0 120 0 130 0 150 0 160 0 170 0 180 0
		 185 0 195 0 200 0 210 0 215 0 225 0 230 0 240 0;
	setAttr -s 16 ".kit[0:15]"  1 18 18 18 18 1 1 1 
		1 1 18 18 18 18 18 1;
	setAttr -s 16 ".kot[0:15]"  1 18 18 18 18 1 1 1 
		1 1 18 18 18 18 18 1;
	setAttr -s 16 ".kix[0:15]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[0:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[0:15]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".koy[0:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RightKnee_Control_rotateY2";
	rename -uid "705832FF-284D-F5E5-A087-CC9C55F90052";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  1 0 20 0 120 0 130 0 150 0 160 0 170 0 180 0
		 185 0 195 0 200 0 210 0 215 0 225 0 230 0 240 0;
	setAttr -s 16 ".kit[0:15]"  1 18 18 18 18 1 1 1 
		1 1 18 18 18 18 18 1;
	setAttr -s 16 ".kot[0:15]"  1 18 18 18 18 1 1 1 
		1 1 18 18 18 18 18 1;
	setAttr -s 16 ".kix[0:15]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[0:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[0:15]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".koy[0:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RightKnee_Control_rotateZ2";
	rename -uid "12CF7541-6445-D2EB-BB75-2FB11AEB5FEF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  1 0 20 0 120 0 130 0 150 0 160 0 170 0 180 0
		 185 0 195 0 200 0 210 0 215 0 225 0 230 0 240 0;
	setAttr -s 16 ".kit[0:15]"  1 18 18 18 18 1 1 1 
		1 1 18 18 18 18 18 1;
	setAttr -s 16 ".kot[0:15]"  1 18 18 18 18 1 1 1 
		1 1 18 18 18 18 18 1;
	setAttr -s 16 ".kix[0:15]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[0:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[0:15]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".koy[0:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RightToes_Control_rotateX2";
	rename -uid "E12168A4-FF41-19F0-6B9D-E69509F000D6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  1 0 20 0 120 0 130 0 150 0 160 0 170 0 180 0
		 185 0 195 0 200 0 210 0 215 0 225 0 230 0 240 0;
	setAttr -s 16 ".kit[0:15]"  1 18 18 18 18 1 1 1 
		1 1 18 18 18 18 18 1;
	setAttr -s 16 ".kot[0:15]"  1 18 18 18 18 1 1 1 
		1 1 18 18 18 18 18 1;
	setAttr -s 16 ".kix[0:15]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[0:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[0:15]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".koy[0:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RightToes_Control_rotateY2";
	rename -uid "3B092229-5A41-2186-14BF-FAAC582D278D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  1 0 20 0 120 0 130 0 150 0 160 0 170 0 180 0
		 185 0 195 0 200 0 210 0 215 0 225 0 230 0 240 0;
	setAttr -s 16 ".kit[0:15]"  1 18 18 18 18 1 1 1 
		1 1 18 18 18 18 18 1;
	setAttr -s 16 ".kot[0:15]"  1 18 18 18 18 1 1 1 
		1 1 18 18 18 18 18 1;
	setAttr -s 16 ".kix[0:15]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[0:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[0:15]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".koy[0:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "RightToes_Control_rotateZ2";
	rename -uid "A146563A-AC40-2685-CB42-2DBE0E1C014A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  1 0 20 0 120 0 130 0 150 0 160 0 170 0 180 0
		 185 0 195 0 200 0 210 0 215 0 225 0 230 0 240 0;
	setAttr -s 16 ".kit[0:15]"  1 18 18 18 18 1 1 1 
		1 1 18 18 18 18 18 1;
	setAttr -s 16 ".kot[0:15]"  1 18 18 18 18 1 1 1 
		1 1 18 18 18 18 18 1;
	setAttr -s 16 ".kix[0:15]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[0:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[0:15]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".koy[0:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RightKnee_Control_visibility1";
	rename -uid "B1FDCB5C-3045-248E-73A2-188BAE0BB2E7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  1 1 20 1 120 1 130 1 150 1 160 1 170 1 180 1
		 185 1 195 1 200 1 210 1 215 1 225 1 230 1 240 1;
	setAttr -s 16 ".kit[0:15]"  1 9 18 18 18 1 1 1 
		1 1 18 18 18 18 18 1;
	setAttr -s 16 ".kot[0:15]"  1 5 18 18 18 1 1 1 
		1 1 18 18 18 18 18 5;
	setAttr -s 16 ".kix[0:15]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[0:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[0:15]"  1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 0;
	setAttr -s 16 ".koy[0:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "RightKnee_Control_translateX1";
	rename -uid "9394FBE4-5C42-0767-88BB-A1B9C5996E41";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  1 0 20 0 120 0 130 0 150 0 160 0 170 0 180 0
		 185 0 195 0 200 0 210 0 215 0 225 0 230 0 240 0;
	setAttr -s 16 ".kit[0:15]"  1 18 18 18 18 1 1 1 
		1 1 18 18 18 18 18 1;
	setAttr -s 16 ".kot[0:15]"  1 18 18 18 18 1 1 1 
		1 1 18 18 18 18 18 1;
	setAttr -s 16 ".kix[0:15]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[0:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[0:15]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".koy[0:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "RightKnee_Control_translateY1";
	rename -uid "F43CCE81-5E44-4070-CEA3-FEA1D387DE2F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  1 0 20 0 120 0 130 0 150 0 160 0 170 0 180 0
		 185 0 195 0 200 0 210 0 215 0 225 0 230 0 240 0;
	setAttr -s 16 ".kit[0:15]"  1 18 18 18 18 1 1 1 
		1 1 18 18 18 18 18 1;
	setAttr -s 16 ".kot[0:15]"  1 18 18 18 18 1 1 1 
		1 1 18 18 18 18 18 1;
	setAttr -s 16 ".kix[0:15]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[0:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[0:15]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".koy[0:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "RightKnee_Control_translateZ1";
	rename -uid "AF16D270-1248-7D24-8313-5C9F9C425F3B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  1 0 20 0 120 0 130 0 150 0 160 0 170 0 180 0
		 185 0 195 0 200 0 210 0 215 0 225 0 230 0 240 0;
	setAttr -s 16 ".kit[0:15]"  1 18 18 18 18 1 1 1 
		1 1 18 18 18 18 18 1;
	setAttr -s 16 ".kot[0:15]"  1 18 18 18 18 1 1 1 
		1 1 18 18 18 18 18 1;
	setAttr -s 16 ".kix[0:15]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[0:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[0:15]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".koy[0:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RightKnee_Control_scaleX1";
	rename -uid "1370C1E1-DC4E-CADD-A106-67A377855AE8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  1 1 20 1 120 1 130 1 150 1 160 1 170 1 180 1
		 185 1 195 1 200 1 210 1 215 1 225 1 230 1 240 1;
	setAttr -s 16 ".kit[0:15]"  1 18 18 18 18 1 1 1 
		1 1 18 18 18 18 18 1;
	setAttr -s 16 ".kot[0:15]"  1 18 18 18 18 1 1 1 
		1 1 18 18 18 18 18 1;
	setAttr -s 16 ".kix[0:15]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[0:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[0:15]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".koy[0:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RightKnee_Control_scaleY1";
	rename -uid "3A03BCC4-7741-8E4B-57B2-1393569DB031";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  1 1 20 1 120 1 130 1 150 1 160 1 170 1 180 1
		 185 1 195 1 200 1 210 1 215 1 225 1 230 1 240 1;
	setAttr -s 16 ".kit[0:15]"  1 18 18 18 18 1 1 1 
		1 1 18 18 18 18 18 1;
	setAttr -s 16 ".kot[0:15]"  1 18 18 18 18 1 1 1 
		1 1 18 18 18 18 18 1;
	setAttr -s 16 ".kix[0:15]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[0:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[0:15]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".koy[0:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RightKnee_Control_scaleZ1";
	rename -uid "A9B65139-0A4F-D62E-1D58-62A74F60F459";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  1 1 20 1 120 1 130 1 150 1 160 1 170 1 180 1
		 185 1 195 1 200 1 210 1 215 1 225 1 230 1 240 1;
	setAttr -s 16 ".kit[0:15]"  1 18 18 18 18 1 1 1 
		1 1 18 18 18 18 18 1;
	setAttr -s 16 ".kot[0:15]"  1 18 18 18 18 1 1 1 
		1 1 18 18 18 18 18 1;
	setAttr -s 16 ".kix[0:15]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[0:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[0:15]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".koy[0:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RightKnee_Control_visibility2";
	rename -uid "09CC5AD3-6242-23E1-5C00-1191365B5563";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  1 1 20 1 120 1 130 1 150 1 160 1 170 1 180 1
		 185 1 195 1 200 1 210 1 215 1 225 1 230 1 240 1;
	setAttr -s 16 ".kit[0:15]"  1 9 18 18 18 1 1 1 
		1 1 18 18 18 18 18 1;
	setAttr -s 16 ".kot[0:15]"  1 5 18 18 18 1 1 1 
		1 1 18 18 18 18 18 5;
	setAttr -s 16 ".kix[0:15]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[0:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[0:15]"  1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 0;
	setAttr -s 16 ".koy[0:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "RightKnee_Control_translateX2";
	rename -uid "FCD3701B-A44B-C6F5-D85C-469194B42CE8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  1 0 20 0 120 0 130 0 150 0 160 0 170 0 180 0
		 185 0 195 0 200 0 210 0 215 0 225 0 230 0 240 0;
	setAttr -s 16 ".kit[0:15]"  1 18 18 18 18 1 1 1 
		1 1 18 18 18 18 18 1;
	setAttr -s 16 ".kot[0:15]"  1 18 18 18 18 1 1 1 
		1 1 18 18 18 18 18 1;
	setAttr -s 16 ".kix[0:15]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[0:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[0:15]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".koy[0:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "RightKnee_Control_translateY2";
	rename -uid "6D7AA7CB-3B4B-B073-D01A-B4BC59915A33";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  1 0 20 0 120 0 130 0 150 0 160 0 170 0 180 0
		 185 0 195 0 200 0 210 0 215 0 225 0 230 0 240 0;
	setAttr -s 16 ".kit[0:15]"  1 18 18 18 18 1 1 1 
		1 1 18 18 18 18 18 1;
	setAttr -s 16 ".kot[0:15]"  1 18 18 18 18 1 1 1 
		1 1 18 18 18 18 18 1;
	setAttr -s 16 ".kix[0:15]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[0:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[0:15]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".koy[0:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "RightKnee_Control_translateZ2";
	rename -uid "9A6D908B-7943-5642-A2FF-38812DD42984";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  1 0 20 0 120 0 130 0 150 0 160 0 170 0 180 0
		 185 0 195 0 200 0 210 0 215 0 225 0 230 0 240 0;
	setAttr -s 16 ".kit[0:15]"  1 18 18 18 18 1 1 1 
		1 1 18 18 18 18 18 1;
	setAttr -s 16 ".kot[0:15]"  1 18 18 18 18 1 1 1 
		1 1 18 18 18 18 18 1;
	setAttr -s 16 ".kix[0:15]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[0:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[0:15]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".koy[0:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RightKnee_Control_scaleX2";
	rename -uid "DF9F50D2-934A-4825-3C5D-A4BB6004BE8F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  1 1 20 1 120 1 130 1 150 1 160 1 170 1 180 1
		 185 1 195 1 200 1 210 1 215 1 225 1 230 1 240 1;
	setAttr -s 16 ".kit[0:15]"  1 18 18 18 18 1 1 1 
		1 1 18 18 18 18 18 1;
	setAttr -s 16 ".kot[0:15]"  1 18 18 18 18 1 1 1 
		1 1 18 18 18 18 18 1;
	setAttr -s 16 ".kix[0:15]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[0:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[0:15]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".koy[0:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RightKnee_Control_scaleY2";
	rename -uid "223A5350-5C4F-252A-E15F-01971D638A28";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  1 1 20 1 120 1 130 1 150 1 160 1 170 1 180 1
		 185 1 195 1 200 1 210 1 215 1 225 1 230 1 240 1;
	setAttr -s 16 ".kit[0:15]"  1 18 18 18 18 1 1 1 
		1 1 18 18 18 18 18 1;
	setAttr -s 16 ".kot[0:15]"  1 18 18 18 18 1 1 1 
		1 1 18 18 18 18 18 1;
	setAttr -s 16 ".kix[0:15]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[0:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[0:15]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".koy[0:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RightKnee_Control_scaleZ2";
	rename -uid "BAECF27D-554A-E48C-FD24-E9819D4FC4C4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  1 1 20 1 120 1 130 1 150 1 160 1 170 1 180 1
		 185 1 195 1 200 1 210 1 215 1 225 1 230 1 240 1;
	setAttr -s 16 ".kit[0:15]"  1 18 18 18 18 1 1 1 
		1 1 18 18 18 18 18 1;
	setAttr -s 16 ".kot[0:15]"  1 18 18 18 18 1 1 1 
		1 1 18 18 18 18 18 1;
	setAttr -s 16 ".kix[0:15]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[0:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[0:15]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".koy[0:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LeftFootMarker_visibility";
	rename -uid "ED406436-D746-9956-7BE0-4D87A7C1BBDE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  1 1 20 1 120 1 130 1 150 1 160 1 170 1 180 1
		 185 1 195 1 200 1 210 1 215 1 225 1 230 1 240 1;
	setAttr -s 16 ".kit[0:15]"  1 9 18 18 18 1 1 1 
		1 1 18 18 18 18 18 1;
	setAttr -s 16 ".kot[0:15]"  1 5 18 18 18 1 1 1 
		1 1 18 18 18 18 18 5;
	setAttr -s 16 ".kix[0:15]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[0:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[0:15]"  1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 0;
	setAttr -s 16 ".koy[0:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LeftFootMarker_scaleX";
	rename -uid "3AB8F5CC-5149-D7A4-F17A-CFB25CC8EAF9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  1 1 20 1 120 1 130 1 150 1 160 1 170 1 180 1
		 185 1 195 1 200 1 210 1 215 1 225 1 230 1 240 1;
	setAttr -s 16 ".kit[0:15]"  1 18 18 18 18 1 1 1 
		1 1 18 18 18 18 18 1;
	setAttr -s 16 ".kot[0:15]"  1 18 18 18 18 1 1 1 
		1 1 18 18 18 18 18 1;
	setAttr -s 16 ".kix[0:15]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[0:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[0:15]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".koy[0:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LeftFootMarker_scaleY";
	rename -uid "2883DF33-804D-DAAB-2845-5DAA26BC1F52";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  1 1 20 1 120 1 130 1 150 1 160 1 170 1 180 1
		 185 1 195 1 200 1 210 1 215 1 225 1 230 1 240 1;
	setAttr -s 16 ".kit[0:15]"  1 18 18 18 18 1 1 1 
		1 1 18 18 18 18 18 1;
	setAttr -s 16 ".kot[0:15]"  1 18 18 18 18 1 1 1 
		1 1 18 18 18 18 18 1;
	setAttr -s 16 ".kix[0:15]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[0:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[0:15]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".koy[0:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "LeftFootMarker_scaleZ";
	rename -uid "C1FD0998-5744-EE3A-FDFF-FE9F51C15ECE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  1 1 20 1 120 1 130 1 150 1 160 1 170 1 180 1
		 185 1 195 1 200 1 210 1 215 1 225 1 230 1 240 1;
	setAttr -s 16 ".kit[0:15]"  1 18 18 18 18 1 1 1 
		1 1 18 18 18 18 18 1;
	setAttr -s 16 ".kot[0:15]"  1 18 18 18 18 1 1 1 
		1 1 18 18 18 18 18 1;
	setAttr -s 16 ".kix[0:15]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[0:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[0:15]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".koy[0:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RightFootMarker_visibility";
	rename -uid "209E68C5-554A-670A-1F80-DBA347E78AB4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  1 1 20 1 120 1 130 1 150 1 160 1 170 1 180 1
		 185 1 195 1 200 1 210 1 215 1 225 1 230 1 240 1;
	setAttr -s 16 ".kit[0:15]"  1 9 18 18 18 1 1 1 
		1 1 18 18 18 18 18 1;
	setAttr -s 16 ".kot[0:15]"  1 5 18 18 18 1 1 1 
		1 1 18 18 18 18 18 5;
	setAttr -s 16 ".kix[0:15]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[0:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[0:15]"  1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 0;
	setAttr -s 16 ".koy[0:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RightFootMarker_scaleX";
	rename -uid "DB2A1965-FC40-54E5-3D74-90BF5610BAED";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  1 1 20 1 120 1 130 1 150 1 160 1 170 1 180 1
		 185 1 195 1 200 1 210 1 215 1 225 1 230 1 240 1;
	setAttr -s 16 ".kit[0:15]"  1 18 18 18 18 1 1 1 
		1 1 18 18 18 18 18 1;
	setAttr -s 16 ".kot[0:15]"  1 18 18 18 18 1 1 1 
		1 1 18 18 18 18 18 1;
	setAttr -s 16 ".kix[0:15]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[0:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[0:15]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".koy[0:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RightFootMarker_scaleY";
	rename -uid "F80033E2-1943-0031-5DCA-29BC0A1982BB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  1 1 20 1 120 1 130 1 150 1 160 1 170 1 180 1
		 185 1 195 1 200 1 210 1 215 1 225 1 230 1 240 1;
	setAttr -s 16 ".kit[0:15]"  1 18 18 18 18 1 1 1 
		1 1 18 18 18 18 18 1;
	setAttr -s 16 ".kot[0:15]"  1 18 18 18 18 1 1 1 
		1 1 18 18 18 18 18 1;
	setAttr -s 16 ".kix[0:15]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[0:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[0:15]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".koy[0:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RightFootMarker_scaleZ";
	rename -uid "D6EA9901-364A-62C2-92F6-BF991D0F53B1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  1 1 20 1 120 1 130 1 150 1 160 1 170 1 180 1
		 185 1 195 1 200 1 210 1 215 1 225 1 230 1 240 1;
	setAttr -s 16 ".kit[0:15]"  1 18 18 18 18 1 1 1 
		1 1 18 18 18 18 18 1;
	setAttr -s 16 ".kot[0:15]"  1 18 18 18 18 1 1 1 
		1 1 18 18 18 18 18 1;
	setAttr -s 16 ".kix[0:15]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[0:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[0:15]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".koy[0:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RightToes_Control_visibility1";
	rename -uid "C9C65270-0041-1517-7E85-57B53EB112F5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  1 1 20 1 120 1 130 1 150 1 160 1 170 1 180 1
		 185 1 195 1 200 1 210 1 215 1 225 1 230 1 240 1;
	setAttr -s 16 ".kit[0:15]"  1 9 18 18 18 1 1 1 
		1 1 18 18 18 18 18 1;
	setAttr -s 16 ".kot[0:15]"  1 5 18 18 18 1 1 1 
		1 1 18 18 18 18 18 5;
	setAttr -s 16 ".kix[0:15]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[0:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[0:15]"  1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 0;
	setAttr -s 16 ".koy[0:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "RightToes_Control_translateX1";
	rename -uid "673C098E-0E4D-209D-2FB8-23B072688309";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  1 0 20 0 120 0 130 0 150 0 160 0 170 0 180 0
		 185 0 195 0 200 0 210 0 215 0 225 0 230 0 240 0;
	setAttr -s 16 ".kit[0:15]"  1 18 18 18 18 1 1 1 
		1 1 18 18 18 18 18 1;
	setAttr -s 16 ".kot[0:15]"  1 18 18 18 18 1 1 1 
		1 1 18 18 18 18 18 1;
	setAttr -s 16 ".kix[0:15]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[0:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[0:15]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".koy[0:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "RightToes_Control_translateY1";
	rename -uid "10499AD7-1E4F-CB33-C5C3-E5B52E140F17";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  1 0 20 0 120 0 130 0 150 0 160 0 170 0 180 0
		 185 0 195 0 200 0 210 0 215 0 225 0 230 0 240 0;
	setAttr -s 16 ".kit[0:15]"  1 18 18 18 18 1 1 1 
		1 1 18 18 18 18 18 1;
	setAttr -s 16 ".kot[0:15]"  1 18 18 18 18 1 1 1 
		1 1 18 18 18 18 18 1;
	setAttr -s 16 ".kix[0:15]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[0:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[0:15]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".koy[0:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "RightToes_Control_translateZ1";
	rename -uid "2953C068-D849-AF68-B1B6-4E9668B5F829";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  1 0 20 0 120 0 130 0 150 0 160 0 170 0 180 0
		 185 0 195 0 200 0 210 0 215 0 225 0 230 0 240 0;
	setAttr -s 16 ".kit[0:15]"  1 18 18 18 18 1 1 1 
		1 1 18 18 18 18 18 1;
	setAttr -s 16 ".kot[0:15]"  1 18 18 18 18 1 1 1 
		1 1 18 18 18 18 18 1;
	setAttr -s 16 ".kix[0:15]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[0:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[0:15]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".koy[0:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RightToes_Control_scaleX1";
	rename -uid "275081D8-9547-5410-A2DA-238E87D584A2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  1 1 20 1 120 1 130 1 150 1 160 1 170 1 180 1
		 185 1 195 1 200 1 210 1 215 1 225 1 230 1 240 1;
	setAttr -s 16 ".kit[0:15]"  1 18 18 18 18 1 1 1 
		1 1 18 18 18 18 18 1;
	setAttr -s 16 ".kot[0:15]"  1 18 18 18 18 1 1 1 
		1 1 18 18 18 18 18 1;
	setAttr -s 16 ".kix[0:15]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[0:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[0:15]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".koy[0:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RightToes_Control_scaleY1";
	rename -uid "50D24654-974D-C466-F577-3AA8336171E4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  1 1 20 1 120 1 130 1 150 1 160 1 170 1 180 1
		 185 1 195 1 200 1 210 1 215 1 225 1 230 1 240 1;
	setAttr -s 16 ".kit[0:15]"  1 18 18 18 18 1 1 1 
		1 1 18 18 18 18 18 1;
	setAttr -s 16 ".kot[0:15]"  1 18 18 18 18 1 1 1 
		1 1 18 18 18 18 18 1;
	setAttr -s 16 ".kix[0:15]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[0:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[0:15]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".koy[0:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RightToes_Control_scaleZ1";
	rename -uid "6BA25749-A545-2E6A-A772-1DA72514E013";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  1 1 20 1 120 1 130 1 150 1 160 1 170 1 180 1
		 185 1 195 1 200 1 210 1 215 1 225 1 230 1 240 1;
	setAttr -s 16 ".kit[0:15]"  1 18 18 18 18 1 1 1 
		1 1 18 18 18 18 18 1;
	setAttr -s 16 ".kot[0:15]"  1 18 18 18 18 1 1 1 
		1 1 18 18 18 18 18 1;
	setAttr -s 16 ".kix[0:15]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[0:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[0:15]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".koy[0:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RightToes_Control_visibility2";
	rename -uid "6347E370-A145-28A6-6FE8-7FA016C379D9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  1 1 20 1 120 1 130 1 150 1 160 1 170 1 180 1
		 185 1 195 1 200 1 210 1 215 1 225 1 230 1 240 1;
	setAttr -s 16 ".kit[0:15]"  1 9 18 18 18 1 1 1 
		1 1 18 18 18 18 18 1;
	setAttr -s 16 ".kot[0:15]"  1 5 18 18 18 1 1 1 
		1 1 18 18 18 18 18 5;
	setAttr -s 16 ".kix[0:15]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[0:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[0:15]"  1 0 1 1 1 1 1 1 1 1 1 1 1 1 1 0;
	setAttr -s 16 ".koy[0:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "RightToes_Control_translateX2";
	rename -uid "2C3E7218-CE40-5A1A-A23C-F8B297107D95";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  1 0 20 0 120 0 130 0 150 0 160 0 170 0 180 0
		 185 0 195 0 200 0 210 0 215 0 225 0 230 0 240 0;
	setAttr -s 16 ".kit[0:15]"  1 18 18 18 18 1 1 1 
		1 1 18 18 18 18 18 1;
	setAttr -s 16 ".kot[0:15]"  1 18 18 18 18 1 1 1 
		1 1 18 18 18 18 18 1;
	setAttr -s 16 ".kix[0:15]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[0:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[0:15]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".koy[0:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "RightToes_Control_translateY2";
	rename -uid "AE018F25-6C44-D3DF-3C22-C8A797FABB0E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  1 0 20 0 120 0 130 0 150 0 160 0 170 0 180 0
		 185 0 195 0 200 0 210 0 215 0 225 0 230 0 240 0;
	setAttr -s 16 ".kit[0:15]"  1 18 18 18 18 1 1 1 
		1 1 18 18 18 18 18 1;
	setAttr -s 16 ".kot[0:15]"  1 18 18 18 18 1 1 1 
		1 1 18 18 18 18 18 1;
	setAttr -s 16 ".kix[0:15]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[0:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[0:15]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".koy[0:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "RightToes_Control_translateZ2";
	rename -uid "7D4ABD24-0547-55DD-A507-F4B9FF577DE9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  1 0 20 0 120 0 130 0 150 0 160 0 170 0 180 0
		 185 0 195 0 200 0 210 0 215 0 225 0 230 0 240 0;
	setAttr -s 16 ".kit[0:15]"  1 18 18 18 18 1 1 1 
		1 1 18 18 18 18 18 1;
	setAttr -s 16 ".kot[0:15]"  1 18 18 18 18 1 1 1 
		1 1 18 18 18 18 18 1;
	setAttr -s 16 ".kix[0:15]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[0:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[0:15]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".koy[0:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RightToes_Control_scaleX2";
	rename -uid "17B50F79-3943-F544-EB59-798CC6B9403E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  1 1 20 1 120 1 130 1 150 1 160 1 170 1 180 1
		 185 1 195 1 200 1 210 1 215 1 225 1 230 1 240 1;
	setAttr -s 16 ".kit[0:15]"  1 18 18 18 18 1 1 1 
		1 1 18 18 18 18 18 1;
	setAttr -s 16 ".kot[0:15]"  1 18 18 18 18 1 1 1 
		1 1 18 18 18 18 18 1;
	setAttr -s 16 ".kix[0:15]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[0:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[0:15]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".koy[0:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RightToes_Control_scaleY2";
	rename -uid "688E6D0F-FB40-DDB7-238E-6E8598F90DE7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  1 1 20 1 120 1 130 1 150 1 160 1 170 1 180 1
		 185 1 195 1 200 1 210 1 215 1 225 1 230 1 240 1;
	setAttr -s 16 ".kit[0:15]"  1 18 18 18 18 1 1 1 
		1 1 18 18 18 18 18 1;
	setAttr -s 16 ".kot[0:15]"  1 18 18 18 18 1 1 1 
		1 1 18 18 18 18 18 1;
	setAttr -s 16 ".kix[0:15]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[0:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[0:15]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".koy[0:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RightToes_Control_scaleZ2";
	rename -uid "DD7B2774-1041-FCED-03F5-7C9CF7A86401";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 16 ".ktv[0:15]"  1 1 20 1 120 1 130 1 150 1 160 1 170 1 180 1
		 185 1 195 1 200 1 210 1 215 1 225 1 230 1 240 1;
	setAttr -s 16 ".kit[0:15]"  1 18 18 18 18 1 1 1 
		1 1 18 18 18 18 18 1;
	setAttr -s 16 ".kot[0:15]"  1 18 18 18 18 1 1 1 
		1 1 18 18 18 18 18 1;
	setAttr -s 16 ".kix[0:15]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".kiy[0:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 16 ".kox[0:15]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 16 ".koy[0:15]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode reference -n "Weapon_SidewinderRN";
	rename -uid "79156041-D949-FE84-7D01-5B9F7EEA52E1";
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
		"Weapon_SidewinderRN"
		"Weapon_SidewinderRN" 0
		"Weapon_SidewinderRN" 29
		0 "|Weapon_SidewinderRNfosterParent1|Weapon_MkII1_parentConstraint2" "|Weapon_Sidewinder:Weapon_MkII1" 
		"-s -r "
		2 "|Weapon_Sidewinder:Weapon_MkII1" "visibility" " 1"
		2 "|Weapon_Sidewinder:Weapon_MkII1" "translate" " -type \"double3\" -32.17488308213939519 89.22529037941038155 -28.85116591824638022"
		
		2 "|Weapon_Sidewinder:Weapon_MkII1" "translateX" " -av"
		2 "|Weapon_Sidewinder:Weapon_MkII1" "translateY" " -av"
		2 "|Weapon_Sidewinder:Weapon_MkII1" "translateZ" " -av"
		2 "|Weapon_Sidewinder:Weapon_MkII1" "rotate" " -type \"double3\" -261.03582337003808789 -32.15197407677128183 -24.17553298076521884"
		
		2 "|Weapon_Sidewinder:Weapon_MkII1" "rotateX" " -av"
		2 "|Weapon_Sidewinder:Weapon_MkII1" "rotateY" " -av"
		2 "|Weapon_Sidewinder:Weapon_MkII1" "rotateZ" " -av"
		2 "|Weapon_Sidewinder:Weapon_MkII1" "scale" " -type \"double3\" 1 1 1"
		2 "|Weapon_Sidewinder:Weapon_MkII1|Weapon_Sidewinder:Magazine" "visibility" 
		" 1"
		2 "|Weapon_Sidewinder:Weapon_MkII1|Weapon_Sidewinder:Magazine" "translate" 
		" -type \"double3\" 0 -1.44863379001617432 -21.50663948059082031"
		2 "|Weapon_Sidewinder:Weapon_MkII1|Weapon_Sidewinder:Magazine" "translateX" 
		" -av"
		2 "|Weapon_Sidewinder:Weapon_MkII1|Weapon_Sidewinder:Magazine" "translateY" 
		" -av"
		2 "|Weapon_Sidewinder:Weapon_MkII1|Weapon_Sidewinder:Magazine" "translateZ" 
		" -av"
		2 "|Weapon_Sidewinder:Weapon_MkII1|Weapon_Sidewinder:Magazine" "rotate" " -type \"double3\" 27.61635689765771673 0 0"
		
		2 "|Weapon_Sidewinder:Weapon_MkII1|Weapon_Sidewinder:Magazine" "scale" " -type \"double3\" 0.61127450307622844 0.61127450307622844 0.61127450307622844"
		
		5 4 "Weapon_SidewinderRN" "|Weapon_Sidewinder:Weapon_MkII1.translateX" 
		"Weapon_SidewinderRN.placeHolderList[1]" ""
		5 4 "Weapon_SidewinderRN" "|Weapon_Sidewinder:Weapon_MkII1.translateY" 
		"Weapon_SidewinderRN.placeHolderList[2]" ""
		5 4 "Weapon_SidewinderRN" "|Weapon_Sidewinder:Weapon_MkII1.translateZ" 
		"Weapon_SidewinderRN.placeHolderList[3]" ""
		5 4 "Weapon_SidewinderRN" "|Weapon_Sidewinder:Weapon_MkII1.rotateX" 
		"Weapon_SidewinderRN.placeHolderList[4]" ""
		5 4 "Weapon_SidewinderRN" "|Weapon_Sidewinder:Weapon_MkII1.rotateY" 
		"Weapon_SidewinderRN.placeHolderList[5]" ""
		5 4 "Weapon_SidewinderRN" "|Weapon_Sidewinder:Weapon_MkII1.rotateZ" 
		"Weapon_SidewinderRN.placeHolderList[6]" ""
		5 3 "Weapon_SidewinderRN" "|Weapon_Sidewinder:Weapon_MkII1.rotateOrder" 
		"Weapon_SidewinderRN.placeHolderList[7]" ""
		5 3 "Weapon_SidewinderRN" "|Weapon_Sidewinder:Weapon_MkII1.parentInverseMatrix" 
		"Weapon_SidewinderRN.placeHolderList[8]" ""
		5 3 "Weapon_SidewinderRN" "|Weapon_Sidewinder:Weapon_MkII1.rotatePivot" 
		"Weapon_SidewinderRN.placeHolderList[9]" ""
		5 3 "Weapon_SidewinderRN" "|Weapon_Sidewinder:Weapon_MkII1.rotatePivotTranslate" 
		"Weapon_SidewinderRN.placeHolderList[10]" ""
		5 4 "Weapon_SidewinderRN" "|Weapon_Sidewinder:Weapon_MkII1.drawOverride" 
		"Weapon_SidewinderRN.placeHolderList[11]" "";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
select -ne :time1;
	setAttr -av -k on ".cch";
	setAttr -av -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".o" 240;
	setAttr -av -k on ".unw" 240;
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
	setAttr -s 2 ".r";
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
connectAttr "Root_Control_visibility.o" "SquaddieRN.phl[281]";
connectAttr "Root_Control_translateX.o" "SquaddieRN.phl[282]";
connectAttr "Root_Control_translateY.o" "SquaddieRN.phl[283]";
connectAttr "Root_Control_translateZ.o" "SquaddieRN.phl[284]";
connectAttr "Root_Control_rotateX.o" "SquaddieRN.phl[285]";
connectAttr "Root_Control_rotateY.o" "SquaddieRN.phl[286]";
connectAttr "Root_Control_rotateZ.o" "SquaddieRN.phl[287]";
connectAttr "Root_Control_scaleX.o" "SquaddieRN.phl[288]";
connectAttr "Root_Control_scaleY.o" "SquaddieRN.phl[289]";
connectAttr "Root_Control_scaleZ.o" "SquaddieRN.phl[290]";
connectAttr "RootMotion_Control_translateX.o" "SquaddieRN.phl[291]";
connectAttr "RootMotion_Control_translateY.o" "SquaddieRN.phl[292]";
connectAttr "RootMotion_Control_translateZ.o" "SquaddieRN.phl[293]";
connectAttr "RootMotion_Control_rotateX.o" "SquaddieRN.phl[294]";
connectAttr "RootMotion_Control_rotateY.o" "SquaddieRN.phl[295]";
connectAttr "RootMotion_Control_rotateZ.o" "SquaddieRN.phl[296]";
connectAttr "RootMotion_Control_scaleX.o" "SquaddieRN.phl[297]";
connectAttr "RootMotion_Control_scaleY.o" "SquaddieRN.phl[298]";
connectAttr "RootMotion_Control_scaleZ.o" "SquaddieRN.phl[299]";
connectAttr "RootMotion_Control_visibility.o" "SquaddieRN.phl[300]";
connectAttr "Hips_Control_translateX.o" "SquaddieRN.phl[301]";
connectAttr "Hips_Control_translateY.o" "SquaddieRN.phl[302]";
connectAttr "Hips_Control_translateZ.o" "SquaddieRN.phl[303]";
connectAttr "Hips_Control_rotateX.o" "SquaddieRN.phl[304]";
connectAttr "Hips_Control_rotateY.o" "SquaddieRN.phl[305]";
connectAttr "Hips_Control_rotateZ.o" "SquaddieRN.phl[306]";
connectAttr "Hips_Control_scaleX.o" "SquaddieRN.phl[307]";
connectAttr "Hips_Control_scaleY.o" "SquaddieRN.phl[308]";
connectAttr "Hips_Control_scaleZ.o" "SquaddieRN.phl[309]";
connectAttr "Hips_Control_visibility.o" "SquaddieRN.phl[310]";
connectAttr "Spine1_Control_rotateX.o" "SquaddieRN.phl[311]";
connectAttr "Spine1_Control_rotateY.o" "SquaddieRN.phl[312]";
connectAttr "Spine1_Control_rotateZ.o" "SquaddieRN.phl[313]";
connectAttr "Spine1_Control_visibility.o" "SquaddieRN.phl[314]";
connectAttr "Spine1_Control_translateX.o" "SquaddieRN.phl[315]";
connectAttr "Spine1_Control_translateY.o" "SquaddieRN.phl[316]";
connectAttr "Spine1_Control_translateZ.o" "SquaddieRN.phl[317]";
connectAttr "Spine1_Control_scaleX.o" "SquaddieRN.phl[318]";
connectAttr "Spine1_Control_scaleY.o" "SquaddieRN.phl[319]";
connectAttr "Spine1_Control_scaleZ.o" "SquaddieRN.phl[320]";
connectAttr "Spine2_Control_rotateX.o" "SquaddieRN.phl[321]";
connectAttr "Spine2_Control_rotateY.o" "SquaddieRN.phl[322]";
connectAttr "Spine2_Control_rotateZ.o" "SquaddieRN.phl[323]";
connectAttr "Spine2_Control_visibility.o" "SquaddieRN.phl[324]";
connectAttr "Spine2_Control_translateX.o" "SquaddieRN.phl[325]";
connectAttr "Spine2_Control_translateY.o" "SquaddieRN.phl[326]";
connectAttr "Spine2_Control_translateZ.o" "SquaddieRN.phl[327]";
connectAttr "Spine2_Control_scaleX.o" "SquaddieRN.phl[328]";
connectAttr "Spine2_Control_scaleY.o" "SquaddieRN.phl[329]";
connectAttr "Spine2_Control_scaleZ.o" "SquaddieRN.phl[330]";
connectAttr "RightShoulder_Control_rotateX.o" "SquaddieRN.phl[331]";
connectAttr "RightShoulder_Control_rotateY.o" "SquaddieRN.phl[332]";
connectAttr "RightShoulder_Control_rotateZ.o" "SquaddieRN.phl[333]";
connectAttr "RightShoulder_Control_visibility.o" "SquaddieRN.phl[334]";
connectAttr "RightShoulder_Control_translateX.o" "SquaddieRN.phl[335]";
connectAttr "RightShoulder_Control_translateY.o" "SquaddieRN.phl[336]";
connectAttr "RightShoulder_Control_translateZ.o" "SquaddieRN.phl[337]";
connectAttr "RightShoulder_Control_scaleX.o" "SquaddieRN.phl[338]";
connectAttr "RightShoulder_Control_scaleY.o" "SquaddieRN.phl[339]";
connectAttr "RightShoulder_Control_scaleZ.o" "SquaddieRN.phl[340]";
connectAttr "Neck_Control_rotateX.o" "SquaddieRN.phl[341]";
connectAttr "Neck_Control_rotateY.o" "SquaddieRN.phl[342]";
connectAttr "Neck_Control_rotateZ.o" "SquaddieRN.phl[343]";
connectAttr "Neck_Control_visibility.o" "SquaddieRN.phl[344]";
connectAttr "Neck_Control_translateX.o" "SquaddieRN.phl[345]";
connectAttr "Neck_Control_translateY.o" "SquaddieRN.phl[346]";
connectAttr "Neck_Control_translateZ.o" "SquaddieRN.phl[347]";
connectAttr "Neck_Control_scaleX.o" "SquaddieRN.phl[348]";
connectAttr "Neck_Control_scaleY.o" "SquaddieRN.phl[349]";
connectAttr "Neck_Control_scaleZ.o" "SquaddieRN.phl[350]";
connectAttr "Head_Control_rotateX.o" "SquaddieRN.phl[351]";
connectAttr "Head_Control_rotateY.o" "SquaddieRN.phl[352]";
connectAttr "Head_Control_rotateZ.o" "SquaddieRN.phl[353]";
connectAttr "Head_Control_visibility.o" "SquaddieRN.phl[354]";
connectAttr "Head_Control_translateX.o" "SquaddieRN.phl[355]";
connectAttr "Head_Control_translateY.o" "SquaddieRN.phl[356]";
connectAttr "Head_Control_translateZ.o" "SquaddieRN.phl[357]";
connectAttr "Head_Control_scaleX.o" "SquaddieRN.phl[358]";
connectAttr "Head_Control_scaleY.o" "SquaddieRN.phl[359]";
connectAttr "Head_Control_scaleZ.o" "SquaddieRN.phl[360]";
connectAttr "LeftShoulder_Control_rotateX.o" "SquaddieRN.phl[361]";
connectAttr "LeftShoulder_Control_rotateY.o" "SquaddieRN.phl[362]";
connectAttr "LeftShoulder_Control_rotateZ.o" "SquaddieRN.phl[363]";
connectAttr "LeftShoulder_Control_visibility.o" "SquaddieRN.phl[364]";
connectAttr "LeftShoulder_Control_translateX.o" "SquaddieRN.phl[365]";
connectAttr "LeftShoulder_Control_translateY.o" "SquaddieRN.phl[366]";
connectAttr "LeftShoulder_Control_translateZ.o" "SquaddieRN.phl[367]";
connectAttr "LeftShoulder_Control_scaleX.o" "SquaddieRN.phl[368]";
connectAttr "LeftShoulder_Control_scaleY.o" "SquaddieRN.phl[369]";
connectAttr "LeftShoulder_Control_scaleZ.o" "SquaddieRN.phl[370]";
connectAttr "RightElbow_Control_translateX.o" "SquaddieRN.phl[371]";
connectAttr "RightElbow_Control_translateY.o" "SquaddieRN.phl[372]";
connectAttr "RightElbow_Control_translateZ.o" "SquaddieRN.phl[373]";
connectAttr "RightElbow_Control_visibility.o" "SquaddieRN.phl[374]";
connectAttr "RightElbow_Control_rotateX.o" "SquaddieRN.phl[375]";
connectAttr "RightElbow_Control_rotateY.o" "SquaddieRN.phl[376]";
connectAttr "RightElbow_Control_rotateZ.o" "SquaddieRN.phl[377]";
connectAttr "RightElbow_Control_scaleX.o" "SquaddieRN.phl[378]";
connectAttr "RightElbow_Control_scaleY.o" "SquaddieRN.phl[379]";
connectAttr "RightElbow_Control_scaleZ.o" "SquaddieRN.phl[380]";
connectAttr "LeftElbow_Control_translateX.o" "SquaddieRN.phl[381]";
connectAttr "LeftElbow_Control_translateY.o" "SquaddieRN.phl[382]";
connectAttr "LeftElbow_Control_translateZ.o" "SquaddieRN.phl[383]";
connectAttr "LeftElbow_Control_visibility.o" "SquaddieRN.phl[384]";
connectAttr "LeftElbow_Control_rotateX.o" "SquaddieRN.phl[385]";
connectAttr "LeftElbow_Control_rotateY.o" "SquaddieRN.phl[386]";
connectAttr "LeftElbow_Control_rotateZ.o" "SquaddieRN.phl[387]";
connectAttr "LeftElbow_Control_scaleX.o" "SquaddieRN.phl[388]";
connectAttr "LeftElbow_Control_scaleY.o" "SquaddieRN.phl[389]";
connectAttr "LeftElbow_Control_scaleZ.o" "SquaddieRN.phl[390]";
connectAttr "RightArmTwist_Control_visibility.o" "SquaddieRN.phl[391]";
connectAttr "RightArmTwist_Control_translateX.o" "SquaddieRN.phl[392]";
connectAttr "RightArmTwist_Control_translateY.o" "SquaddieRN.phl[393]";
connectAttr "RightArmTwist_Control_translateZ.o" "SquaddieRN.phl[394]";
connectAttr "RightArmTwist_Control_rotateX.o" "SquaddieRN.phl[395]";
connectAttr "RightArmTwist_Control_rotateY.o" "SquaddieRN.phl[396]";
connectAttr "RightArmTwist_Control_rotateZ.o" "SquaddieRN.phl[397]";
connectAttr "RightArmTwist_Control_scaleX.o" "SquaddieRN.phl[398]";
connectAttr "RightArmTwist_Control_scaleY.o" "SquaddieRN.phl[399]";
connectAttr "RightArmTwist_Control_scaleZ.o" "SquaddieRN.phl[400]";
connectAttr "LeftArmTwist_Control_visibility.o" "SquaddieRN.phl[401]";
connectAttr "LeftArmTwist_Control_translateX.o" "SquaddieRN.phl[402]";
connectAttr "LeftArmTwist_Control_translateY.o" "SquaddieRN.phl[403]";
connectAttr "LeftArmTwist_Control_translateZ.o" "SquaddieRN.phl[404]";
connectAttr "LeftArmTwist_Control_rotateX.o" "SquaddieRN.phl[405]";
connectAttr "LeftArmTwist_Control_rotateY.o" "SquaddieRN.phl[406]";
connectAttr "LeftArmTwist_Control_rotateZ.o" "SquaddieRN.phl[407]";
connectAttr "LeftArmTwist_Control_scaleX.o" "SquaddieRN.phl[408]";
connectAttr "LeftArmTwist_Control_scaleY.o" "SquaddieRN.phl[409]";
connectAttr "LeftArmTwist_Control_scaleZ.o" "SquaddieRN.phl[410]";
connectAttr "RightHand_Control_rotateX.o" "SquaddieRN.phl[411]";
connectAttr "RightHand_Control_rotateY.o" "SquaddieRN.phl[412]";
connectAttr "RightHand_Control_rotateZ.o" "SquaddieRN.phl[413]";
connectAttr "RightHand_Control_visibility.o" "SquaddieRN.phl[414]";
connectAttr "RightHand_Control_translateX.o" "SquaddieRN.phl[415]";
connectAttr "RightHand_Control_translateY.o" "SquaddieRN.phl[416]";
connectAttr "RightHand_Control_translateZ.o" "SquaddieRN.phl[417]";
connectAttr "RightHand_Control_scaleX.o" "SquaddieRN.phl[418]";
connectAttr "RightHand_Control_scaleY.o" "SquaddieRN.phl[419]";
connectAttr "RightHand_Control_scaleZ.o" "SquaddieRN.phl[420]";
connectAttr "RightFinders_Control_Grip.o" "SquaddieRN.phl[421]";
connectAttr "RightFinders_Control_visibility.o" "SquaddieRN.phl[422]";
connectAttr "RightFinders_Control_translateX.o" "SquaddieRN.phl[423]";
connectAttr "RightFinders_Control_translateY.o" "SquaddieRN.phl[424]";
connectAttr "RightFinders_Control_translateZ.o" "SquaddieRN.phl[425]";
connectAttr "RightFinders_Control_rotateX.o" "SquaddieRN.phl[426]";
connectAttr "RightFinders_Control_rotateY.o" "SquaddieRN.phl[427]";
connectAttr "RightFinders_Control_rotateZ.o" "SquaddieRN.phl[428]";
connectAttr "RightFinders_Control_scaleX.o" "SquaddieRN.phl[429]";
connectAttr "RightFinders_Control_scaleY.o" "SquaddieRN.phl[430]";
connectAttr "RightFinders_Control_scaleZ.o" "SquaddieRN.phl[431]";
connectAttr "LeftHand_Control_rotateX.o" "SquaddieRN.phl[432]";
connectAttr "LeftHand_Control_rotateY.o" "SquaddieRN.phl[433]";
connectAttr "LeftHand_Control_rotateZ.o" "SquaddieRN.phl[434]";
connectAttr "LeftHand_Control_visibility.o" "SquaddieRN.phl[435]";
connectAttr "LeftHand_Control_translateX.o" "SquaddieRN.phl[436]";
connectAttr "LeftHand_Control_translateY.o" "SquaddieRN.phl[437]";
connectAttr "LeftHand_Control_translateZ.o" "SquaddieRN.phl[438]";
connectAttr "LeftHand_Control_scaleX.o" "SquaddieRN.phl[439]";
connectAttr "LeftHand_Control_scaleY.o" "SquaddieRN.phl[440]";
connectAttr "LeftHand_Control_scaleZ.o" "SquaddieRN.phl[441]";
connectAttr "LeftFingers_Control_Grip.o" "SquaddieRN.phl[442]";
connectAttr "LeftFingers_Control_visibility.o" "SquaddieRN.phl[443]";
connectAttr "LeftFingers_Control_translateX.o" "SquaddieRN.phl[444]";
connectAttr "LeftFingers_Control_translateY.o" "SquaddieRN.phl[445]";
connectAttr "LeftFingers_Control_translateZ.o" "SquaddieRN.phl[446]";
connectAttr "LeftFingers_Control_rotateX.o" "SquaddieRN.phl[447]";
connectAttr "LeftFingers_Control_rotateY.o" "SquaddieRN.phl[448]";
connectAttr "LeftFingers_Control_rotateZ.o" "SquaddieRN.phl[449]";
connectAttr "LeftFingers_Control_scaleX.o" "SquaddieRN.phl[450]";
connectAttr "LeftFingers_Control_scaleY.o" "SquaddieRN.phl[451]";
connectAttr "LeftFingers_Control_scaleZ.o" "SquaddieRN.phl[452]";
connectAttr "SquaddieRN.phl[453]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[8].dn";
connectAttr "SquaddieRN.phl[454]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[13].dn"
		;
connectAttr "LeftHip_Control_translateX.o" "SquaddieRN.phl[455]";
connectAttr "LeftHip_Control_translateY.o" "SquaddieRN.phl[456]";
connectAttr "LeftHip_Control_translateZ.o" "SquaddieRN.phl[457]";
connectAttr "LeftHip_Control_visibility.o" "SquaddieRN.phl[458]";
connectAttr "LeftHip_Control_rotateX.o" "SquaddieRN.phl[459]";
connectAttr "LeftHip_Control_rotateY.o" "SquaddieRN.phl[460]";
connectAttr "LeftHip_Control_rotateZ.o" "SquaddieRN.phl[461]";
connectAttr "LeftHip_Control_scaleX.o" "SquaddieRN.phl[462]";
connectAttr "LeftHip_Control_scaleY.o" "SquaddieRN.phl[463]";
connectAttr "LeftHip_Control_scaleZ.o" "SquaddieRN.phl[464]";
connectAttr "RightHip_Control_translateX.o" "SquaddieRN.phl[465]";
connectAttr "RightHip_Control_translateY.o" "SquaddieRN.phl[466]";
connectAttr "RightHip_Control_translateZ.o" "SquaddieRN.phl[467]";
connectAttr "RightHip_Control_visibility.o" "SquaddieRN.phl[468]";
connectAttr "RightHip_Control_rotateX.o" "SquaddieRN.phl[469]";
connectAttr "RightHip_Control_rotateY.o" "SquaddieRN.phl[470]";
connectAttr "RightHip_Control_rotateZ.o" "SquaddieRN.phl[471]";
connectAttr "RightHip_Control_scaleX.o" "SquaddieRN.phl[472]";
connectAttr "RightHip_Control_scaleY.o" "SquaddieRN.phl[473]";
connectAttr "RightHip_Control_scaleZ.o" "SquaddieRN.phl[474]";
connectAttr "RightFoot_Control_rotateX.o" "SquaddieRN.phl[475]";
connectAttr "RightFoot_Control_rotateY.o" "SquaddieRN.phl[476]";
connectAttr "RightFoot_Control_rotateZ.o" "SquaddieRN.phl[477]";
connectAttr "RightFoot_Control_visibility.o" "SquaddieRN.phl[478]";
connectAttr "RightFoot_Control_translateX.o" "SquaddieRN.phl[479]";
connectAttr "RightFoot_Control_translateY.o" "SquaddieRN.phl[480]";
connectAttr "RightFoot_Control_translateZ.o" "SquaddieRN.phl[481]";
connectAttr "RightFoot_Control_scaleX.o" "SquaddieRN.phl[482]";
connectAttr "RightFoot_Control_scaleY.o" "SquaddieRN.phl[483]";
connectAttr "RightFoot_Control_scaleZ.o" "SquaddieRN.phl[484]";
connectAttr "RightToes_Control_rotateX.o" "SquaddieRN.phl[485]";
connectAttr "RightToes_Control_rotateY.o" "SquaddieRN.phl[486]";
connectAttr "RightToes_Control_rotateZ.o" "SquaddieRN.phl[487]";
connectAttr "RightToes_Control_visibility.o" "SquaddieRN.phl[488]";
connectAttr "RightToes_Control_translateX.o" "SquaddieRN.phl[489]";
connectAttr "RightToes_Control_translateY.o" "SquaddieRN.phl[490]";
connectAttr "RightToes_Control_translateZ.o" "SquaddieRN.phl[491]";
connectAttr "RightToes_Control_scaleX.o" "SquaddieRN.phl[492]";
connectAttr "RightToes_Control_scaleY.o" "SquaddieRN.phl[493]";
connectAttr "RightToes_Control_scaleZ.o" "SquaddieRN.phl[494]";
connectAttr "RightKnee_Control_translateX.o" "SquaddieRN.phl[495]";
connectAttr "RightKnee_Control_translateY.o" "SquaddieRN.phl[496]";
connectAttr "RightKnee_Control_translateZ.o" "SquaddieRN.phl[497]";
connectAttr "RightKnee_Control_visibility.o" "SquaddieRN.phl[498]";
connectAttr "RightKnee_Control_rotateX.o" "SquaddieRN.phl[499]";
connectAttr "RightKnee_Control_rotateY.o" "SquaddieRN.phl[500]";
connectAttr "RightKnee_Control_rotateZ.o" "SquaddieRN.phl[501]";
connectAttr "RightKnee_Control_scaleX.o" "SquaddieRN.phl[502]";
connectAttr "RightKnee_Control_scaleY.o" "SquaddieRN.phl[503]";
connectAttr "RightKnee_Control_scaleZ.o" "SquaddieRN.phl[504]";
connectAttr "LeftFoot_Control_rotateX.o" "SquaddieRN.phl[505]";
connectAttr "LeftFoot_Control_rotateY.o" "SquaddieRN.phl[506]";
connectAttr "LeftFoot_Control_rotateZ.o" "SquaddieRN.phl[507]";
connectAttr "LeftFoot_Control_visibility.o" "SquaddieRN.phl[508]";
connectAttr "LeftFoot_Control_translateX.o" "SquaddieRN.phl[509]";
connectAttr "LeftFoot_Control_translateY.o" "SquaddieRN.phl[510]";
connectAttr "LeftFoot_Control_translateZ.o" "SquaddieRN.phl[511]";
connectAttr "LeftFoot_Control_scaleX.o" "SquaddieRN.phl[512]";
connectAttr "LeftFoot_Control_scaleY.o" "SquaddieRN.phl[513]";
connectAttr "LeftFoot_Control_scaleZ.o" "SquaddieRN.phl[514]";
connectAttr "LeftToes_Control_rotateX.o" "SquaddieRN.phl[515]";
connectAttr "LeftToes_Control_rotateY.o" "SquaddieRN.phl[516]";
connectAttr "LeftToes_Control_rotateZ.o" "SquaddieRN.phl[517]";
connectAttr "LeftToes_Control_visibility.o" "SquaddieRN.phl[518]";
connectAttr "LeftToes_Control_translateX.o" "SquaddieRN.phl[519]";
connectAttr "LeftToes_Control_translateY.o" "SquaddieRN.phl[520]";
connectAttr "LeftToes_Control_translateZ.o" "SquaddieRN.phl[521]";
connectAttr "LeftToes_Control_scaleX.o" "SquaddieRN.phl[522]";
connectAttr "LeftToes_Control_scaleY.o" "SquaddieRN.phl[523]";
connectAttr "LeftToes_Control_scaleZ.o" "SquaddieRN.phl[524]";
connectAttr "LeftKnee_Control_translateX.o" "SquaddieRN.phl[525]";
connectAttr "LeftKnee_Control_translateY.o" "SquaddieRN.phl[526]";
connectAttr "LeftKnee_Control_translateZ.o" "SquaddieRN.phl[527]";
connectAttr "LeftKnee_Control_visibility.o" "SquaddieRN.phl[528]";
connectAttr "LeftKnee_Control_rotateX.o" "SquaddieRN.phl[529]";
connectAttr "LeftKnee_Control_rotateY.o" "SquaddieRN.phl[530]";
connectAttr "LeftKnee_Control_rotateZ.o" "SquaddieRN.phl[531]";
connectAttr "LeftKnee_Control_scaleX.o" "SquaddieRN.phl[532]";
connectAttr "LeftKnee_Control_scaleY.o" "SquaddieRN.phl[533]";
connectAttr "LeftKnee_Control_scaleZ.o" "SquaddieRN.phl[534]";
connectAttr "SquaddieRN.phl[535]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[2].dn";
connectAttr "SquaddieRN.phl[536]" "Weapon_MkII1_parentConstraint2.tg[0].tpm";
connectAttr "SquaddieRN.phl[537]" "Weapon_MkII1_parentConstraint1.tg[0].tpm";
connectAttr "SquaddieRN.phl[538]" "Weapon_MkII1_parentConstraint2.tg[0].tt";
connectAttr "SquaddieRN.phl[539]" "Weapon_MkII1_parentConstraint1.tg[0].tt";
connectAttr "SquaddieRN.phl[540]" "Weapon_MkII1_parentConstraint2.tg[0].trp";
connectAttr "SquaddieRN.phl[541]" "Weapon_MkII1_parentConstraint1.tg[0].trp";
connectAttr "SquaddieRN.phl[542]" "Weapon_MkII1_parentConstraint2.tg[0].trt";
connectAttr "SquaddieRN.phl[543]" "Weapon_MkII1_parentConstraint1.tg[0].trt";
connectAttr "SquaddieRN.phl[544]" "Weapon_MkII1_parentConstraint2.tg[0].tr";
connectAttr "SquaddieRN.phl[545]" "Weapon_MkII1_parentConstraint1.tg[0].tr";
connectAttr "SquaddieRN.phl[546]" "Weapon_MkII1_parentConstraint2.tg[0].tro";
connectAttr "SquaddieRN.phl[547]" "Weapon_MkII1_parentConstraint1.tg[0].tro";
connectAttr "SquaddieRN.phl[548]" "Weapon_MkII1_parentConstraint2.tg[0].ts";
connectAttr "SquaddieRN.phl[549]" "Weapon_MkII1_parentConstraint1.tg[0].ts";
connectAttr "SquaddieRN.phl[550]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[5].dn";
connectAttr "SquaddieRN.phl[551]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[6].dn";
connectAttr "SquaddieRN.phl[552]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[1].dn";
connectAttr "SquaddieRN.phl[553]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[3].dn";
connectAttr "SquaddieRN.phl[554]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[9].dn";
connectAttr "SquaddieRN.phl[555]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[12].dn"
		;
connectAttr "Weapon_MkII1_parentConstraint2.ctx" "Weapon_SidewinderRN.phl[1]";
connectAttr "Weapon_MkII1_parentConstraint2.cty" "Weapon_SidewinderRN.phl[2]";
connectAttr "Weapon_MkII1_parentConstraint2.ctz" "Weapon_SidewinderRN.phl[3]";
connectAttr "Weapon_MkII1_parentConstraint2.crx" "Weapon_SidewinderRN.phl[4]";
connectAttr "Weapon_MkII1_parentConstraint2.cry" "Weapon_SidewinderRN.phl[5]";
connectAttr "Weapon_MkII1_parentConstraint2.crz" "Weapon_SidewinderRN.phl[6]";
connectAttr "Weapon_SidewinderRN.phl[7]" "Weapon_MkII1_parentConstraint2.cro";
connectAttr "Weapon_SidewinderRN.phl[8]" "Weapon_MkII1_parentConstraint2.cpim";
connectAttr "Weapon_SidewinderRN.phl[9]" "Weapon_MkII1_parentConstraint2.crp";
connectAttr "Weapon_SidewinderRN.phl[10]" "Weapon_MkII1_parentConstraint2.crt";
connectAttr "Extras.di" "Weapon_SidewinderRN.phl[11]";
connectAttr "Extras.di" "pointLight1.do";
connectAttr "pointLight1_rotateX.o" "pointLight1.rx";
connectAttr "pointLight1_rotateY.o" "pointLight1.ry";
connectAttr "pointLight1_rotateZ.o" "pointLight1.rz";
connectAttr "pointLight1_visibility.o" "pointLight1.v";
connectAttr "pointLight1_translateX.o" "pointLight1.tx";
connectAttr "pointLight1_translateY.o" "pointLight1.ty";
connectAttr "pointLight1_translateZ.o" "pointLight1.tz";
connectAttr "pointLight1_scaleX.o" "pointLight1.sx";
connectAttr "pointLight1_scaleY.o" "pointLight1.sy";
connectAttr "pointLight1_scaleZ.o" "pointLight1.sz";
connectAttr "Extras.di" "pointLight2.do";
connectAttr "pointLight2_visibility.o" "pointLight2.v";
connectAttr "pointLight2_translateX.o" "pointLight2.tx";
connectAttr "pointLight2_translateY.o" "pointLight2.ty";
connectAttr "pointLight2_translateZ.o" "pointLight2.tz";
connectAttr "pointLight2_rotateX.o" "pointLight2.rx";
connectAttr "pointLight2_rotateY.o" "pointLight2.ry";
connectAttr "pointLight2_rotateZ.o" "pointLight2.rz";
connectAttr "pointLight2_scaleX.o" "pointLight2.sx";
connectAttr "pointLight2_scaleY.o" "pointLight2.sy";
connectAttr "pointLight2_scaleZ.o" "pointLight2.sz";
connectAttr "Extras.di" "ambientLight1.do";
connectAttr "Extras.di" "pPlane1.do";
connectAttr "polyTweakUV1.out" "pPlaneShape1.i";
connectAttr "polyTweakUV1.uvtk[0]" "pPlaneShape1.uvst[0].uvtw";
connectAttr "Weapon_MkII1_parentConstraint1.w0" "Weapon_MkII1_parentConstraint1.tg[0].tw"
		;
connectAttr "RightFootMarker_visibility.o" "RightFootMarker.v";
connectAttr "RightFootMarker_scaleX.o" "RightFootMarker.sx";
connectAttr "RightFootMarker_scaleY.o" "RightFootMarker.sy";
connectAttr "RightFootMarker_scaleZ.o" "RightFootMarker.sz";
connectAttr "RightToes_Control_rotateX2.o" "|SquaddieRNfosterParent1|RightFootMarker|RightToes_Control.rx"
		;
connectAttr "RightToes_Control_rotateY2.o" "|SquaddieRNfosterParent1|RightFootMarker|RightToes_Control.ry"
		;
connectAttr "RightToes_Control_rotateZ2.o" "|SquaddieRNfosterParent1|RightFootMarker|RightToes_Control.rz"
		;
connectAttr "RightToes_Control_visibility2.o" "|SquaddieRNfosterParent1|RightFootMarker|RightToes_Control.v"
		;
connectAttr "RightToes_Control_translateX2.o" "|SquaddieRNfosterParent1|RightFootMarker|RightToes_Control.tx"
		;
connectAttr "RightToes_Control_translateY2.o" "|SquaddieRNfosterParent1|RightFootMarker|RightToes_Control.ty"
		;
connectAttr "RightToes_Control_translateZ2.o" "|SquaddieRNfosterParent1|RightFootMarker|RightToes_Control.tz"
		;
connectAttr "RightToes_Control_scaleX2.o" "|SquaddieRNfosterParent1|RightFootMarker|RightToes_Control.sx"
		;
connectAttr "RightToes_Control_scaleY2.o" "|SquaddieRNfosterParent1|RightFootMarker|RightToes_Control.sy"
		;
connectAttr "RightToes_Control_scaleZ2.o" "|SquaddieRNfosterParent1|RightFootMarker|RightToes_Control.sz"
		;
connectAttr "RightKnee_Control_translateX2.o" "|SquaddieRNfosterParent1|RightFootMarker|RightKnee_Control.tx"
		;
connectAttr "RightKnee_Control_translateY2.o" "|SquaddieRNfosterParent1|RightFootMarker|RightKnee_Control.ty"
		;
connectAttr "RightKnee_Control_translateZ2.o" "|SquaddieRNfosterParent1|RightFootMarker|RightKnee_Control.tz"
		;
connectAttr "RightKnee_Control_visibility2.o" "|SquaddieRNfosterParent1|RightFootMarker|RightKnee_Control.v"
		;
connectAttr "RightKnee_Control_rotateX2.o" "|SquaddieRNfosterParent1|RightFootMarker|RightKnee_Control.rx"
		;
connectAttr "RightKnee_Control_rotateY2.o" "|SquaddieRNfosterParent1|RightFootMarker|RightKnee_Control.ry"
		;
connectAttr "RightKnee_Control_rotateZ2.o" "|SquaddieRNfosterParent1|RightFootMarker|RightKnee_Control.rz"
		;
connectAttr "RightKnee_Control_scaleX2.o" "|SquaddieRNfosterParent1|RightFootMarker|RightKnee_Control.sx"
		;
connectAttr "RightKnee_Control_scaleY2.o" "|SquaddieRNfosterParent1|RightFootMarker|RightKnee_Control.sy"
		;
connectAttr "RightKnee_Control_scaleZ2.o" "|SquaddieRNfosterParent1|RightFootMarker|RightKnee_Control.sz"
		;
connectAttr "LeftFootMarker_visibility.o" "LeftFootMarker.v";
connectAttr "LeftFootMarker_scaleX.o" "LeftFootMarker.sx";
connectAttr "LeftFootMarker_scaleY.o" "LeftFootMarker.sy";
connectAttr "LeftFootMarker_scaleZ.o" "LeftFootMarker.sz";
connectAttr "RightToes_Control_rotateX1.o" "|SquaddieRNfosterParent1|LeftFootMarker|RightToes_Control.rx"
		;
connectAttr "RightToes_Control_rotateY1.o" "|SquaddieRNfosterParent1|LeftFootMarker|RightToes_Control.ry"
		;
connectAttr "RightToes_Control_rotateZ1.o" "|SquaddieRNfosterParent1|LeftFootMarker|RightToes_Control.rz"
		;
connectAttr "RightToes_Control_visibility1.o" "|SquaddieRNfosterParent1|LeftFootMarker|RightToes_Control.v"
		;
connectAttr "RightToes_Control_translateX1.o" "|SquaddieRNfosterParent1|LeftFootMarker|RightToes_Control.tx"
		;
connectAttr "RightToes_Control_translateY1.o" "|SquaddieRNfosterParent1|LeftFootMarker|RightToes_Control.ty"
		;
connectAttr "RightToes_Control_translateZ1.o" "|SquaddieRNfosterParent1|LeftFootMarker|RightToes_Control.tz"
		;
connectAttr "RightToes_Control_scaleX1.o" "|SquaddieRNfosterParent1|LeftFootMarker|RightToes_Control.sx"
		;
connectAttr "RightToes_Control_scaleY1.o" "|SquaddieRNfosterParent1|LeftFootMarker|RightToes_Control.sy"
		;
connectAttr "RightToes_Control_scaleZ1.o" "|SquaddieRNfosterParent1|LeftFootMarker|RightToes_Control.sz"
		;
connectAttr "RightKnee_Control_translateX1.o" "|SquaddieRNfosterParent1|LeftFootMarker|RightKnee_Control.tx"
		;
connectAttr "RightKnee_Control_translateY1.o" "|SquaddieRNfosterParent1|LeftFootMarker|RightKnee_Control.ty"
		;
connectAttr "RightKnee_Control_translateZ1.o" "|SquaddieRNfosterParent1|LeftFootMarker|RightKnee_Control.tz"
		;
connectAttr "RightKnee_Control_visibility1.o" "|SquaddieRNfosterParent1|LeftFootMarker|RightKnee_Control.v"
		;
connectAttr "RightKnee_Control_rotateX1.o" "|SquaddieRNfosterParent1|LeftFootMarker|RightKnee_Control.rx"
		;
connectAttr "RightKnee_Control_rotateY1.o" "|SquaddieRNfosterParent1|LeftFootMarker|RightKnee_Control.ry"
		;
connectAttr "RightKnee_Control_rotateZ1.o" "|SquaddieRNfosterParent1|LeftFootMarker|RightKnee_Control.rz"
		;
connectAttr "RightKnee_Control_scaleX1.o" "|SquaddieRNfosterParent1|LeftFootMarker|RightKnee_Control.sx"
		;
connectAttr "RightKnee_Control_scaleY1.o" "|SquaddieRNfosterParent1|LeftFootMarker|RightKnee_Control.sy"
		;
connectAttr "RightKnee_Control_scaleZ1.o" "|SquaddieRNfosterParent1|LeftFootMarker|RightKnee_Control.sz"
		;
connectAttr "Weapon_MkII1_parentConstraint2.w0" "Weapon_MkII1_parentConstraint2.tg[0].tw"
		;
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "RightUpperArm_Control_translateX.o" "SquaddieRN.phl[51]";
connectAttr "RightUpperArm_Control_translateY.o" "SquaddieRN.phl[52]";
connectAttr "RightUpperArm_Control_translateZ.o" "SquaddieRN.phl[53]";
connectAttr "RightUpperArm_Control_visibility.o" "SquaddieRN.phl[54]";
connectAttr "RightUpperArm_Control_rotateX.o" "SquaddieRN.phl[55]";
connectAttr "RightUpperArm_Control_rotateY.o" "SquaddieRN.phl[56]";
connectAttr "RightUpperArm_Control_rotateZ.o" "SquaddieRN.phl[57]";
connectAttr "RightUpperArm_Control_scaleX.o" "SquaddieRN.phl[58]";
connectAttr "RightUpperArm_Control_scaleY.o" "SquaddieRN.phl[59]";
connectAttr "RightUpperArm_Control_scaleZ.o" "SquaddieRN.phl[60]";
connectAttr "LeftUpperArm_Control_translateX.o" "SquaddieRN.phl[101]";
connectAttr "LeftUpperArm_Control_translateY.o" "SquaddieRN.phl[102]";
connectAttr "LeftUpperArm_Control_translateZ.o" "SquaddieRN.phl[103]";
connectAttr "LeftUpperArm_Control_visibility.o" "SquaddieRN.phl[104]";
connectAttr "LeftUpperArm_Control_rotateX.o" "SquaddieRN.phl[105]";
connectAttr "LeftUpperArm_Control_rotateY.o" "SquaddieRN.phl[106]";
connectAttr "LeftUpperArm_Control_rotateZ.o" "SquaddieRN.phl[107]";
connectAttr "LeftUpperArm_Control_scaleX.o" "SquaddieRN.phl[108]";
connectAttr "LeftUpperArm_Control_scaleY.o" "SquaddieRN.phl[109]";
connectAttr "LeftUpperArm_Control_scaleZ.o" "SquaddieRN.phl[110]";
connectAttr "SquaddieRNfosterParent1.msg" "SquaddieRN.fp";
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
connectAttr "SquaddieRN.phl[280]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[0].dn";
connectAttr "LeftUpperArm_Control_translateX.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[4].dn"
		;
connectAttr "SquaddieRN.phl[111]" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[7].dn";
connectAttr "LeftUpperArm_Control_translateY.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[10].dn"
		;
connectAttr "LeftUpperArm_Control_translateZ.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[11].dn"
		;
connectAttr "Weapon_SidewinderRNfosterParent1.msg" "Weapon_SidewinderRN.fp";
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "MatGround.msg" ":defaultShaderList1.s" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "pointLightShape1.ltd" ":lightList1.l" -na;
connectAttr "pointLightShape2.ltd" ":lightList1.l" -na;
connectAttr "ambientLightShape1.ltd" ":lightList1.l" -na;
connectAttr "checker1.msg" ":defaultTextureList1.tx" -na;
connectAttr "pointLight1.iog" ":defaultLightSet.dsm" -na;
connectAttr "pointLight2.iog" ":defaultLightSet.dsm" -na;
connectAttr "ambientLight1.iog" ":defaultLightSet.dsm" -na;
// End of SideArm_Idles.ma
