//Maya ASCII 2019 scene
//Name: SquaddieFace.ma
//Last modified: Sat, Dec 07, 2019 12:03:07 PM
//Codeset: UTF-8
requires maya "2019";
requires "mtoa" "3.1.2";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2019";
fileInfo "version" "2019";
fileInfo "cutIdentifier" "201812112215-434d8d9c04";
fileInfo "osv" "Mac OS X 10.14.6";
createNode transform -s -n "persp";
	rename -uid "0ABB21BB-5846-DC4B-3E62-3F8FCE927968";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -43.485555153906574 158.8736354523717 269.7768454515554 ;
	setAttr ".r" -type "double3" -26.738352729618587 -7.0000000000007532 2.0027750574897733e-16 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "CE79910C-AD42-858A-2415-EB9CE2DD8E48";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 293.59256036056394;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -2.1999988555908239 50.481407165527344 14.274716377258299 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "210231E2-DF41-E3AD-545F-F1AFF0D1940B";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "43960D3C-7B4F-A328-8569-8DA2E5F6FDB1";
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
	rename -uid "546B7553-A545-C855-309F-A89A38DE998D";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -7.9220842205405155 24.973798241214613 1002.6555378253627 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "B8A78467-3E40-7338-ACEB-2CA33AB45737";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 965.26839182926892;
	setAttr ".ow" 204.44085082180067;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".tp" -type "double3" -25.581710815429695 2.864501953125 37.387145996093743 ;
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "5AB94BD0-7E4D-5E80-062A-2A8CDE4AD63A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "526C841E-6D40-09BD-DB15-9188558CAAE0";
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
createNode transform -n "pCylinder1";
	rename -uid "F7AA3C5C-DE4D-2833-D934-2DB0175A5311";
	setAttr ".rp" -type "double3" 2.1865331638695338 50.75 0 ;
	setAttr ".sp" -type "double3" 2.1865331638695338 50.75 0 ;
createNode mesh -n "pCylinderShape1" -p "pCylinder1";
	rename -uid "75C4BDA3-5148-10D3-2642-9EADEA262616";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.43048025667667389 0.37485307455062866 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 38 ".pt";
	setAttr ".pt[6]" -type "float3" 0 1.1486021 0 ;
	setAttr ".pt[24]" -type "float3" 0 0.55359852 0 ;
	setAttr ".pt[31]" -type "float3" 0 2.1801777 0 ;
	setAttr ".pt[34]" -type "float3" 0 2.1663527 0 ;
	setAttr ".pt[35]" -type "float3" -1.6111093 3.231916 -0.28693148 ;
	setAttr ".pt[36]" -type "float3" 0 1.9261938 0 ;
	setAttr ".pt[37]" -type "float3" 0 1.9261938 0 ;
	setAttr ".pt[38]" -type "float3" 0 2.1663527 0 ;
	setAttr ".pt[45]" -type "float3" 0 1.9261938 0 ;
	setAttr ".pt[46]" -type "float3" 0 1.9261938 0 ;
	setAttr ".pt[47]" -type "float3" 0 0.89148116 0 ;
	setAttr ".pt[48]" -type "float3" 0 0.89148116 0 ;
	setAttr ".pt[49]" -type "float3" 0 1.970359 0 ;
	setAttr ".pt[95]" -type "float3" 1.311573 3.814712 0.26747248 ;
	setAttr ".pt[96]" -type "float3" 0 4.1822748 0 ;
	setAttr ".pt[97]" -type "float3" 0 4.1822748 0 ;
	setAttr ".pt[98]" -type "float3" 0.36493856 0.30925342 0.067755796 ;
	setAttr ".pt[99]" -type "float3" 0.36493856 0.30925342 0.067755796 ;
	setAttr ".pt[102]" -type "float3" 0 2.1663527 0 ;
	setAttr ".pt[103]" -type "float3" 0 1.970359 0 ;
	setAttr ".pt[124]" -type "float3" 0 1.1486021 0 ;
	setAttr ".pt[132]" -type "float3" 0 0.55359852 0 ;
	setAttr ".pt[138]" -type "float3" 0 2.1801777 0 ;
	setAttr ".pt[140]" -type "float3" 0 2.1663527 0 ;
	setAttr ".pt[141]" -type "float3" 1.6111093 3.231916 -0.28693148 ;
	setAttr ".pt[142]" -type "float3" 0 1.9261938 0 ;
	setAttr ".pt[143]" -type "float3" 0 2.1663527 0 ;
	setAttr ".pt[149]" -type "float3" 0 1.9261938 0 ;
	setAttr ".pt[150]" -type "float3" 0 0.89148116 0 ;
	setAttr ".pt[151]" -type "float3" 0 0.89148116 0 ;
	setAttr ".pt[152]" -type "float3" 0 1.970359 0 ;
	setAttr ".pt[196]" -type "float3" -1.311573 3.814712 0.26747248 ;
	setAttr ".pt[197]" -type "float3" 0 4.1822748 0 ;
	setAttr ".pt[198]" -type "float3" 0 4.1822748 0 ;
	setAttr ".pt[199]" -type "float3" -0.36493856 0.30925342 0.067755796 ;
	setAttr ".pt[200]" -type "float3" -0.36493856 0.30925342 0.067755796 ;
	setAttr ".pt[203]" -type "float3" 0 2.1663527 0 ;
	setAttr ".pt[204]" -type "float3" 0 1.970359 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "polySurfaceShape1" -p "pCylinder1";
	rename -uid "8041ABA8-7D49-9709-B8E0-6DBC65AF3BD7";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.55886830389499664 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 132 ".uvst[0].uvsp[0:131]" -type "float2" 0.41666666 0.43781328
		 0.41666666 0.56312656 0.48047069 0.11773661 0.4479177 0.3125 0.41666666 0.68843985
		 0.3749975 0.84250009 0.4479177 0.43781328 0.42708227 0.43781328 0.44791767 0.56312656
		 0.42708227 0.56312656 0.4479177 0.68843985 0.36327931 0.12242424 0 0.25061506 1 0.25061506
		 1 1 0 1 0 0.25061518 1 0.250615 1 1 0 1 0.43878785 0.94841951 0.40234572 0.94524074
		 0.36327931 0.87757576 0.48047069 0.87288803 0.42708227 0.68843985 0.42117676 0.68843985
		 0.48047072 0.83994842 0.45806044 0.68843985 0.3692919 0.82663888 0.45806044 0.56312656
		 0.45806044 0.43781328 0.36898494 0.13828546 0.45806044 0.3125 0.48047069 0.15067621
		 0.45806044 0.43781328 0.45806044 0.56312656 0.4479177 0.43781328 0.44791767 0.56312656
		 0.44791767 0.52268046 0.43763152 0.49893603 0.45806044 0.49212131 0.4479177 0.49709624
		 0.44791767 0.48153454 0.43564543 0.43781328 0.4479177 0.37011492 0.45806044 0.37587968
		 0.43387824 0.37530166 0.43788162 0.42056626 0.4479177 0.35914695 0.45815468 0.36169907
		 0.42708227 0.37440449 0.42708227 0.499098 0.4479177 0.33391976 0.45806044 0.33287257
		 0.44002053 0.33568037 0.43200985 0.32132828 0.43674207 0.3125 0.4479177 0.3476373
		 0.45806044 0.34992042 0.44114476 0.35395759 0.44119996 0.36687678 0.44107002 0.37264472
		 0.43252933 0.4693737 0.436225 0.56312656 0.43777755 0.68843985 0.38229206 0.91050684
		 0.44791767 0.54400593 0.44289061 0.56312656 0.42708224 0.54163319 0.42389703 0.52535295
		 0.42708227 0.50796801 0.42713192 0.52655017 0.43652976 0.51064086 0.43648386 0.5513131
		 0.44298324 0.51128989 0.442985 0.54901916 0.44649541 0.53452361 0.44225794 0.51798785
		 0.42985028 0.56312656 0.42985398 0.54814911 0.42994386 0.53571439 0.43075365 0.50926638
		 0.43132746 0.49903286 0.42599493 0.5267812 0.42999911 0.52773082 0.43712372 0.53066456
		 0.44412196 0.53354627 0.44723618 0.52835536 0.44724166 0.53949916 0.44587162 0.55178809
		 0.45806044 0.57346779 0.44791767 0.57434428 0.43645638 0.58180279 0.42708227 0.58996606
		 0.42212263 0.56312656 0.42190933 0.43781328 0.42203504 0.57651079 0.42205793 0.52509862
		 0.41666666 0.52435315 0.690588 0.25061506 0.65334302 1 0.45806044 0.59353435 0.4479177
		 0.5988034 0.43686277 0.614604 0.42708227 0.61520219 0.42187458 0.6004681 0.44503349
		 0.54056031 0.43104059 0.50414932 0.43710917 0.50448543 0.43223697 0.41257417 0.43472221
		 0.38484401 0.43584818 0.37457389 0.43774235 0.37085536 0.43682587 0.36664349 0.4369483
		 0.35549811 0.42997956 0.3431969 0.43207127 0.37506309 0.44056424 0.38024667 0.4479177
		 0.3802301 0.45806044 0.41387111 0.42997682 0.53094876 0.43680596 0.54091865 0.44351986
		 0.54174042 0.4304747 0.51609296 0.43670213 0.51645231 0.44286507 0.52305537 0.44791767
		 0.56312656 0.45806044 0.56312656 0.44657385 0.55567956 0.44542927 0.56312656 0.44369814
		 0.57709014 0.4270823 0.64042765;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 118 ".pt[0:117]" -type "float3"  -69.407242 50.75 19.353514 
		-69.407242 50.75 19.353514 -69.407242 50.75 19.353514 0.89726847 50.75 66.923477 
		-30.158697 50.75 58.602058 38.399487 50.75 55.532898 34.310467 50.75 54.858494 0.89726847 
		50.75 66.923477 -30.158697 50.75 58.602058 40.392147 50.75 53.685455 -30.158697 50.75 
		58.602058 0.89726847 50.75 66.923477 -12.872187 50.75 56.199871 36.764786 50.75 57.312813 
		6.5494289 50.75 8.7628956 6.5494289 50.75 8.7628956 6.5494308 50.75 8.7628975 45.932068 
		50.75 48.145535 45.932068 50.75 48.145535 45.932068 50.75 48.145535 45.932068 50.75 
		48.145535 6.5494308 50.75 8.7628975 54.656097 50.75 56.869564 52.2491 50.75 54.462566 
		43.185772 50.75 63.733799 43.671818 50.75 58.433762 38.904861 50.75 55.068901 18.255011 
		50.75 62.859951 53.612957 50.75 55.826424 44.506176 50.75 60.136002 33.73645 50.75 
		55.432514 22.510536 50.75 63.422729 39.271984 50.75 56.646431 46.96822 50.75 49.181686 
		16.333925 50.75 60.685661 24.702162 50.75 57.017544 40.093784 50.75 53.348644 45.635086 
		50.75 47.841656 7.139719 50.75 64.680084 0.89726847 50.75 66.923477 38.690945 50.75 
		55.691101 45.932068 50.75 48.145535 28.757645 50.75 58.799675 13.991968 50.75 62.968857 
		22.890503 50.75 57.851891 41.193832 50.75 55.301949 47.141159 50.75 49.354626 31.777409 
		50.75 58.074203 31.069532 50.75 57.182331 29.65386 50.75 60.104664 9.8598518 50.75 
		64.825302 17.905674 50.75 61.436764 19.308853 50.75 61.990112 38.741467 50.75 55.118042 
		28.949938 50.75 58.171791 -0.17247181 50.75 65.853745 -8.6000214 50.75 64.378693 
		0.89726847 50.75 66.923477 6.1453037 50.75 61.363976 16.913961 50.75 60.259411 17.253662 
		50.75 60.080849 30.510391 50.75 56.809704 25.54217 50.75 54.889046 28.581945 50.75 
		51.75996 25.542154 50.75 54.889061 8.9542961 50.75 64.431557 10.086277 50.75 64.024902 
		11.370165 50.75 60.670959 11.524014 50.75 61.115826 8.3591537 50.75 64.789848 -2.3448656 
		50.75 66.054749 9.2796841 50.75 59.748989 14.836195 50.75 58.221966 23.106682 50.75 
		53.404419 34.96994 50.75 53.918236 34.926735 50.75 53.642876 33.449905 50.75 53.715454 
		45.932068 50.75 48.145535 39.070469 50.75 56.139614 20.73243 50.75 64.136864 3.5148985 
		50.75 69.541107 -11.854568 50.75 63.007984 -14.526705 50.75 62.790638 -12.387865 
		50.75 62.688168 -14.083757 50.75 62.909328 -30.158697 50.75 58.602058 -69.407242 
		50.75 19.353514 45.932068 50.75 48.145535 38.065174 50.75 54.474422 18.847578 50.75 
		62.029568 1.3971045 50.75 67.423317 -14.630337 50.75 62.762871 27.741047 50.75 52.913857 
		8.2744465 50.75 64.510902 17.973722 50.75 62.456188 9.6683292 50.75 67.28727 17.487488 
		50.75 60.515076 19.203939 50.75 60.979664 20.936462 50.75 60.84697 21.164005 50.75 
		61.411106 16.615843 50.75 63.023083 5.8848648 50.75 65.587059 12.74642 50.75 62.005894 
		27.915941 50.75 58.719551 37.852646 50.75 55.980324 46.325668 50.75 48.261806 11.739357 
		50.75 61.738518 17.400654 50.75 60.509243 25.67149 50.75 55.465004 11.695795 50.75 
		61.612556 17.0973 50.75 60.454575 25.631699 50.75 55.287838 41.8913 50.75 55.855934 
		48.696152 50.75 50.909618 36.508034 50.75 53.489414 35.399437 50.75 55.542278 31.354456 
		50.75 59.15316 1.2249434 50.75 67.25116;
	setAttr -s 118 ".vt[0:117]"  26.12013054 -16.91679764 -45.47364426 26.12013054 16.91679382 -45.47364426
		 26.12013054 50.7503891 -45.47364426 -32.81710815 -16.91679764 -34.10637283 -13.12841415 -16.91679764 -45.47364426
		 -45.8729248 -49.95612717 -9.65997124 -43.49121475 -11.18662262 -11.36728001 -32.81710815 16.91679382 -34.10637283
		 -13.12841415 16.91679382 -45.47364426 -45.94553375 10.86471558 -7.73992157 -13.12841415 50.7503891 -45.47364426
		 -32.81710815 50.7503891 -34.10637283 -20.57057571 50.7503891 -35.62929535 -45.94553375 50.7503891 -11.36728001
		 -6.56289577 -48.50523758 -2.19999981 -6.56289577 50.7503891 -2.19999981 -6.56289768 50.7503891 -2.19999981
		 -45.94553375 50.7503891 -2.19999981 -45.94553375 10.86471558 -2.19999981 -45.94553375 -16.91679764 -2.19999981
		 -45.94553375 -50.7503891 -2.19999981 -6.56289768 -48.50523758 -2.19999981 -54.66956329 -11.16144562 -2.19999981
		 -52.26256561 3.61983871 -2.19999981 -52.36651993 -8.9405365 -11.36728001 -49.95952225 3.076572418 -8.47423935
		 -45.89361572 1.81703901 -9.17528725 -39.46421432 -3.36610031 -23.39573669 -53.62642288 -4.75556183 -2.19999981
		 -51.22782135 -4.16874695 -8.90817928 -43.49121475 -3.84546661 -11.94129944 -41.87336731 -12.44950867 -21.54936409
		 -46.86594009 -23.22299576 -9.78048897 -46.98168564 -23.92391205 -2.19999981 -37.41652679 -30.65617561 -23.26913452
		 -39.7665863 -17.44179153 -17.25095749 -45.62794876 -30.14752388 -7.72069597 -45.64510345 -30.35897446 -2.19655228
		 -34.81663513 -30.3044014 -29.8634491 -32.81710815 -0.37041473 -34.10637283 -46.097755432 -41.76368332 -9.59334564
		 -45.94553375 -42.36534882 -2.19999981 -42.68539429 -41.81708908 -16.11428261 -37.387146 -47.88549805 -25.58171082
		 -39.27793121 -51.28757477 -18.57396126 -47.15462494 -32.55556107 -8.14732552 -47.15462494 -32.55556488 -2.19999981
		 -43.8325386 -33.70998764 -14.24166298 -43.032665253 -31.30194855 -14.14966679 -43.78599548 -24.083940506 -16.31866837
		 -36.24930954 -9.91996384 -28.57599068 -38.57795334 14.26110077 -22.85881233 -39.55621719 50.7503891 -22.43389702
		 -45.83648682 6.64445114 -9.28155518 -42.46759796 12.56434822 -15.70419312 -31.74736786 11.11375427 -34.10637283
		 -26.79606819 6.7182045 -37.58262253 -32.81710815 2.024425507 -34.10637283 -32.66137314 6.4483943 -28.70260239
		 -37.49341965 1.66156578 -22.76599121 -37.57398987 10.116045 -22.50686073 -42.56678009 0.16070557 -14.24292278
		 -39.12234116 8.44745541 -15.76670456 -39.07768631 4.77111292 -12.68227482 -39.12234116 1.97200918 -15.76671982
		 -35.59965897 16.29391098 -28.83189583 -35.96232224 13.28262711 -28.062578201 -34.92729568 9.089661598 -25.74366379
		 -35.22665405 2.78163886 -25.88917351 -35.4812355 -1.57592773 -29.30861473 -30.76167679 7.10383987 -35.29307556
		 -33.4210701 6.48072243 -26.32791901 -35.4358139 6.4153533 -22.78615189 -37.16228485 6.29457474 -16.242136
		 -43.35082245 2.60787582 -10.56741524 -43.19153976 5.93327332 -10.45133781 -42.48941422 8.81099319 -11.22604084
		 -45.94553375 14.15620422 -2.19999981 -46.51177597 13.21775055 -9.62783909 -41.34138107 16.88404846 -22.79548454
		 -35.43473816 21.34796906 -34.10637283 -24.48344231 14.25235367 -38.52454376 -23.038700104 -16.91679764 -39.75193787
		 -24.056884766 19.30350113 -38.63128281 -23.31951904 6.64955139 -39.58980942 -13.12841415 6.44827652 -45.47364426
		 26.12013054 5.18814468 -45.47364426 -45.94553375 20.5431366 -2.19999981 -45.17653275 20.41202545 -9.29789066
		 -39.3453064 23.42366028 -22.68426132 -33.31694412 27.074836731 -34.10637283 -22.97300148 26.99871826 -39.78987122
		 -39.23418427 6.7562952 -13.67967129 -35.29940796 0.40133286 -29.21149445 -39.12168884 -1.24224091 -23.33449936
		 -37.38453293 -21.048856735 -29.90273666 -37.9080162 -24.82022095 -22.60706139 -38.99853516 -26.78920746 -21.98112869
		 -39.79845047 -32.2251091 -21.048521042 -40.19429016 -34.099906921 -21.21681786 -38.72619629 -38.3406868 -24.29688644
		 -34.64269638 -42.46246719 -30.94436455 -36.28289032 -30.35121918 -25.72300339 -42.22447968 -20.48749733 -16.49507141
		 -45.8232193 -19.054389954 -10.1571064 -46.20046997 -20.332407 -2.061335802 -35.64567184 7.78845263 -26.092847824
		 -37.86168289 8.26974487 -22.64756203 -39.4749794 7.2328372 -15.99002361 -35.56090927 4.3078866 -26.051647186
		 -37.68267059 3.050837278 -22.77190399 -39.36650085 3.24014568 -15.92133617 -47.78034973 7.30470848 -8.075582504
		 -48.70961761 7.69464779 -2.19999981 -43.90545654 9.68268585 -9.58395767 -44.37759018 11.58752251 -11.16468811
		 -44.16054153 15.25113201 -14.99261951 -33.14478302 35.22947693 -34.10637283;
	setAttr -s 227 ".ed";
	setAttr ".ed[0:165]"  0 86 0 1 2 0 10 2 0 12 15 0 11 12 0 3 82 0 3 39 0 7 81 0
		 8 85 0 5 14 0 14 21 1 6 104 0 7 80 0 11 10 0 10 8 0 13 88 0 15 13 0 6 31 0 9 115 0
		 13 52 0 4 0 0 8 1 0 12 10 0 16 15 1 17 13 0 16 17 1 18 9 0 17 87 1 19 6 0 20 5 0
		 19 105 1 20 21 1 19 22 0 18 113 1 23 28 0 6 24 0 22 24 0 9 112 0 23 25 0 25 29 0
		 26 30 0 25 26 0 27 50 0 28 22 1 29 24 0 30 6 0 31 3 0 28 29 0 29 30 0 30 31 0 32 49 0
		 34 96 0 35 6 0 32 33 0 36 45 0 37 46 0 34 98 0 36 37 0 35 31 0 38 3 0 31 95 0 34 102 0
		 39 57 0 30 27 0 27 69 0 40 5 0 41 20 1 34 100 0 42 40 0 40 41 0 42 5 0 42 43 0 44 5 0
		 38 101 0 43 44 0 45 40 0 46 41 1 34 99 0 47 45 0 45 46 0 48 36 0 49 97 0 44 42 0
		 42 47 0 47 48 0 49 103 0 50 3 0 31 50 0 50 39 0 51 65 0 52 11 0 27 94 0 51 79 0 53 26 0
		 54 51 0 55 7 0 39 56 0 56 55 0 55 66 0 57 58 0 58 55 0 60 51 0 58 67 0 60 62 0 62 92 0
		 59 68 0 59 64 0 64 63 0 53 75 0 63 74 0 58 70 0 61 64 0 62 54 0 65 7 0 66 51 0 67 60 0
		 69 39 0 65 66 0 66 67 0 68 93 0 69 50 0 70 56 0 57 70 0 70 55 0 58 68 0 61 30 0 58 71 0
		 71 72 0 67 106 0 71 109 0 72 73 0 60 107 0 72 110 0 73 63 0 62 108 0 73 111 0 74 26 0
		 75 63 0 76 54 0 61 74 0 74 75 0 75 76 0 76 114 0 77 18 1 78 9 0 79 89 0 80 90 0 81 8 0
		 82 4 0 77 78 0 78 116 0 79 80 0 80 83 0 83 81 0 81 84 0 84 82 0 85 4 0 86 1 0 56 84 0
		 84 85 0 85 86 0 87 77 1 88 78 0 89 52 0 90 117 0 87 88 0;
	setAttr ".ed[166:226]" 88 89 0 89 90 0 90 91 0 91 83 0 92 63 0 73 92 0 92 76 0
		 93 69 0 94 59 0 57 93 0 93 94 0 94 61 0 95 38 0 96 35 0 97 34 0 3 95 1 95 96 1 96 97 1
		 98 48 0 99 47 0 100 42 0 101 43 0 98 99 1 99 100 1 100 101 1 102 38 0 103 35 0 104 32 0
		 105 33 1 100 102 1 102 96 1 96 103 1 103 104 1 104 105 1 106 71 0 107 72 0 108 73 0
		 58 106 1 106 107 1 107 108 1 108 92 1 109 68 0 110 59 0 111 64 0 58 109 1 109 110 1
		 110 111 1 111 63 1 112 25 0 113 23 1 53 112 1 112 113 1 114 9 0 115 54 0 116 79 0
		 117 11 0 53 114 1 114 115 1 115 116 1 116 89 1 89 117 1;
	setAttr -s 110 -ch 414 ".fc[0:109]" -type "polyFaces" 
		f 5 158 155 -6 6 96
		mu 0 5 69 97 95 7 51
		f 4 152 153 -8 12
		mu 0 4 93 96 94 9
		f 3 49 -18 -46
		mu 0 3 42 43 6
		f 5 -114 -90 92 151 -13
		mu 0 5 9 78 63 92 93
		f 4 -157 160 -1 -21
		mu 0 4 12 99 100 15
		f 4 -15 2 -2 -22
		mu 0 4 16 17 18 19
		f 5 -5 -91 -20 -17 -4
		mu 0 5 20 21 65 22 23
		f 3 -14 4 22
		mu 0 3 4 24 25
		f 4 -25 -26 23 16
		mu 0 4 5 28 26 23
		f 4 -27 -144 149 144
		mu 0 4 8 29 90 91
		f 4 -37 -44 47 44
		mu 0 4 36 34 40 41
		f 4 199 -31 28 11
		mu 0 4 118 119 30 6
		f 4 -32 29 9 10
		mu 0 4 33 31 11 2
		f 4 -29 32 36 -36
		mu 0 4 6 30 34 36
		f 4 26 37 217 -34
		mu 0 4 29 8 126 127
		f 4 48 45 35 -45
		mu 0 4 41 42 6 36
		f 4 216 -38 -219 -223
		mu 0 4 66 126 8 128
		f 3 -87 88 -7
		mu 0 3 7 62 51
		f 4 -48 -35 38 39
		mu 0 4 41 40 35 37
		f 4 41 40 -49 -40
		mu 0 4 37 38 42 41
		f 3 -47 87 86
		mu 0 3 7 43 62
		f 3 197 192 -180
		mu 0 3 110 117 47
		f 4 188 185 84 -185
		mu 0 4 112 113 59 60
		f 4 79 -56 -58 54
		mu 0 4 57 58 49 48
		f 3 -59 52 17
		mu 0 3 43 47 6
		f 3 181 -61 46
		mu 0 3 7 109 43
		f 4 60 182 179 58
		mu 0 4 43 109 110 47
		f 4 125 -41 -137 -140
		mu 0 4 74 42 38 87
		f 3 117 114 89
		mu 0 3 78 79 63
		f 3 70 -66 -69
		mu 0 3 54 3 52
		f 4 -30 -67 -70 65
		mu 0 4 3 32 53 52
		f 3 71 74 82
		mu 0 3 54 55 56
		f 4 190 187 -72 -187
		mu 0 4 114 115 55 54
		f 4 189 186 83 -186
		mu 0 4 113 114 54 59
		f 4 69 -77 -80 75
		mu 0 4 52 53 58 57
		f 3 -83 72 -71
		mu 0 3 54 56 3
		f 4 -84 68 -76 -79
		mu 0 4 59 54 52 57
		f 4 -85 78 -55 -81
		mu 0 4 60 59 57 48
		f 4 -193 198 -12 -53
		mu 0 4 47 117 118 6
		f 4 -88 -50 63 42
		mu 0 4 62 43 42 39
		f 3 120 -43 64
		mu 0 3 82 62 39
		f 3 140 137 109
		mu 0 3 87 88 76
		f 5 224 220 -93 -95 -220
		mu 0 5 129 130 92 63 67
		f 4 -139 142 223 219
		mu 0 4 67 89 128 129
		f 4 122 121 -97 62
		mu 0 4 70 83 69 51
		f 4 118 115 101 -115
		mu 0 4 79 80 73 63
		f 4 119 176 174 105
		mu 0 4 81 107 108 72
		f 4 -175 177 111 -107
		mu 0 4 72 108 74 77
		f 4 -102 103 112 94
		mu 0 4 63 73 75 67
		f 4 139 -110 -108 -112
		mu 0 4 74 87 76 77
		f 3 -98 -122 123
		mu 0 3 68 69 83
		f 4 -113 104 172 138
		mu 0 4 67 75 106 89
		f 4 98 -118 113 -96
		mu 0 4 68 79 78 9
		f 4 102 -119 -99 -101
		mu 0 4 71 80 79 68
		f 4 175 -120 -125 -100
		mu 0 4 70 107 81 71
		f 3 -89 -121 116
		mu 0 3 51 62 82
		f 3 110 -123 99
		mu 0 3 71 83 70
		f 3 -124 -111 100
		mu 0 3 68 83 71
		f 4 -64 -126 -178 -92
		mu 0 4 39 42 74 108
		f 3 134 206 -105
		mu 0 3 75 122 106
		f 3 -134 135 213
		mu 0 3 76 86 125
		f 3 -103 203 -129
		mu 0 3 80 71 120
		f 3 210 -130 -127
		mu 0 3 71 123 84
		f 4 128 204 -132 -116
		mu 0 4 80 120 121 73
		f 4 211 -133 -128 129
		mu 0 4 123 124 85 84
		f 4 131 205 -135 -104
		mu 0 4 73 121 122 75
		f 4 212 -136 -131 132
		mu 0 4 124 125 86 85
		f 4 108 -141 136 -94
		mu 0 4 66 88 87 38
		f 4 -142 -109 222 -143
		mu 0 4 89 88 66 128
		f 4 -150 -162 165 162
		mu 0 4 91 90 101 102
		f 3 225 -146 -221
		mu 0 3 130 103 92
		f 4 -152 145 167 -147
		mu 0 4 93 92 103 104
		f 4 168 169 -153 146
		mu 0 4 104 105 96 93
		f 4 -149 -156 159 156
		mu 0 4 0 95 97 98
		f 5 154 -159 97 95 7
		mu 0 5 94 97 69 68 9
		f 4 -160 -155 147 8
		mu 0 4 98 97 94 1
		f 4 -161 -9 21 -158
		mu 0 4 100 99 13 14
		f 4 -166 -28 24 15
		mu 0 4 102 101 27 10
		f 4 -164 -167 -16 19
		mu 0 4 64 103 102 10
		f 3 -168 226 -165
		mu 0 3 104 103 131
		f 8 -148 -154 -170 -169 164 221 13 14
		mu 0 8 1 94 96 105 104 131 24 4
		f 3 -172 133 -171
		mu 0 3 106 86 76
		f 4 -173 170 -138 141
		mu 0 4 89 106 76 88
		f 4 -117 -174 -176 -63
		mu 0 4 51 82 107 70
		f 4 -177 173 -65 91
		mu 0 4 108 107 82 39
		f 3 -60 -179 -182
		mu 0 3 7 50 109
		f 4 -183 178 -192 196
		mu 0 4 110 109 50 116
		f 3 -184 -52 -181
		mu 0 3 111 110 46
		f 3 77 -189 -57
		mu 0 3 46 113 112
		f 3 67 -190 -78
		mu 0 3 46 114 113
		f 4 195 191 73 -191
		mu 0 4 114 116 50 115
		f 3 61 -196 -68
		mu 0 3 46 116 114
		f 3 -197 -62 51
		mu 0 3 110 116 46
		f 4 85 -198 183 -82
		mu 0 4 61 117 110 111
		f 4 -199 -86 -51 -194
		mu 0 4 118 117 61 44
		f 4 53 -195 -200 193
		mu 0 4 44 45 119 118
		f 3 -204 126 -201
		mu 0 3 120 71 84
		f 4 -205 200 127 -202
		mu 0 4 121 120 84 85
		f 4 -206 201 130 -203
		mu 0 4 122 121 85 86
		f 3 -207 202 171
		mu 0 3 106 122 86
		f 3 -208 -211 124
		mu 0 3 81 123 71
		f 4 -209 -212 207 -106
		mu 0 4 72 124 123 81
		f 4 -210 -213 208 106
		mu 0 4 77 125 124 72
		f 3 -214 209 107
		mu 0 3 76 125 77
		f 4 -215 -217 93 -42
		mu 0 4 37 126 66 38
		f 4 -218 214 -39 -216
		mu 0 4 127 126 37 35
		f 3 -224 218 18
		mu 0 3 129 128 8
		f 4 150 -225 -19 -145
		mu 0 4 91 130 129 8
		f 4 166 -226 -151 -163
		mu 0 4 102 103 130 91
		f 4 -227 163 90 -222
		mu 0 4 131 103 64 24;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "9F300F75-A849-6BE8-FD29-39A90DDC8ECF";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "D625A3AD-7641-AF11-4107-26BF93438115";
createNode displayLayer -n "defaultLayer";
	rename -uid "A4C29149-C34B-6F32-7CB5-B0A733F41356";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "7863EC70-E140-A22C-02C6-3F83DD26B4A6";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "87534239-774D-9371-2B54-799D55599251";
	setAttr ".g" yes;
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "018AA87C-DB4B-27F9-288C-BE8C61829FC1";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "D1D2E00C-B74E-18D5-8F26-AAA7C16AFCE4";
createNode script -n "uiConfigurationScriptNode";
	rename -uid "E4A1B145-624F-F7EC-04E4-6995B6FE910C";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n"
		+ "            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n"
		+ "            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 556\n            -height 322\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n"
		+ "            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n"
		+ "            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 555\n            -height 322\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -editorChanged \"CgAbBlastPanelOptChangeCallback\" \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n"
		+ "            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n"
		+ "            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n"
		+ "            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 556\n            -height 322\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -docTag \"RADRENDER\" \n            -editorChanged \"CgAbBlastPanelOptChangeCallback\" \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n"
		+ "            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n"
		+ "            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n"
		+ "            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1122\n            -height 692\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n"
		+ "            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 1\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 0\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n"
		+ "            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n"
		+ "            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n"
		+ "            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n"
		+ "                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n"
		+ "                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -autoFitTime 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n"
		+ "                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 0\n                -outliner \"graphEditor1OutlineEd\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n"
		+ "                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n"
		+ "                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n"
		+ "                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n"
		+ "\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n"
		+ "                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n"
		+ "                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -editorChanged \"updateModelPanelBar\" \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n"
		+ "                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererOverrideName \"stereoOverrideVP2\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n"
		+ "                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n"
		+ "                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n"
		+ "            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -docTag \\\"RADRENDER\\\" \\n    -editorChanged \\\"CgAbBlastPanelOptChangeCallback\\\" \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1122\\n    -height 692\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -docTag \\\"RADRENDER\\\" \\n    -editorChanged \\\"CgAbBlastPanelOptChangeCallback\\\" \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1122\\n    -height 692\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 10 -size 300 -divisions 4 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "65E73C40-8941-3935-87F1-D58CF4A4D1F2";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode polyMirror -n "polyMirror1";
	rename -uid "5B461197-2C4A-D958-4526-CBA31EB11AF2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".mtt" 1;
	setAttr ".mt" 1;
	setAttr ".sp" -type "double3" 2.1865331638695338 50.75 0 ;
	setAttr ".fnf" 110;
	setAttr ".lnf" 219;
select -ne :time1;
	setAttr -av -k on ".cch";
	setAttr -av -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".o" 1;
	setAttr -av -k on ".unw" 1;
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
	setAttr -s 2 ".st";
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
	setAttr -s 4 ".s";
select -ne :postProcessList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
	setAttr -k on ".ihi";
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
	setAttr -s 4 ".sol";
connectAttr "polyMirror1.out" "pCylinderShape1.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polySurfaceShape1.o" "polyMirror1.ip";
connectAttr "pCylinderShape1.wm" "polyMirror1.mp";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "pCylinderShape1.iog" ":initialShadingGroup.dsm" -na;
// End of SquaddieFace.ma
