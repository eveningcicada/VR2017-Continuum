//Maya ASCII 2016 scene
//Name: circlecone.ma
//Last modified: Wed, Apr 19, 2017 04:24:47 PM
//Codeset: 932
requires maya "2016";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2016";
fileInfo "version" "2016";
fileInfo "cutIdentifier" "201502261600-953408";
fileInfo "osv" "Microsoft Windows 8 Home Premium Edition, 64-bit  (Build 9200)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	rename -uid "ECB3A6D1-4D81-1D40-D9D0-3CA868FCC770";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -8.376491256957566 7.0502141572954367 13.77287943242651 ;
	setAttr ".r" -type "double3" -384.93835328814873 -4709.7999999998901 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "6B6FB7D6-4133-6CB2-0565-ACBAA75080BC";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 16.943107219309656;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -1.7881393432617188e-007 1.6681291325326715 -2.9802322387695313e-007 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "519EAACB-47CD-7687-23EC-1A976F2209DE";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 100.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "1375CCB8-4E05-BCF7-FBE4-2CBC03B06386";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "3F980665-412A-EC35-EDE3-2A8245AA00B4";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.038366938276133133 0.99672934206388175 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "4A970F2C-4005-0B7C-6C82-2AA842E4530F";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 17.802065818737137;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "3BBD0530-49C3-A2DA-B198-7F8C36B63F9B";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "E39E68FD-47CE-1D86-D086-0A8A61F9B8AB";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 24.636117119896532;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "pCone1";
	rename -uid "721FEF51-4553-7BA1-8CE4-FA966C41357E";
createNode mesh -n "pConeShape1" -p "pCone1";
	rename -uid "3ACF3B2C-45EF-B968-27E5-3E963380D212";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".vcs" 2;
createNode mesh -n "pConeShape1Orig" -p "pCone1";
	rename -uid "3F2D14A2-4324-A8EE-667E-6F8667E02B39";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode joint -n "joint1";
	rename -uid "0716B974-43B6-B559-548B-7DAB338B20A0";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 180 -7.0622500768802529e-031 90.728486651669826 ;
	setAttr ".bps" -type "matrix" -0.012714148064139286 0.99991917195291491 0 0 0.99991917195291491 0.012714148064139286 1.224646799147353e-016 0
		 1.2245478133382091e-016 1.557034073063364e-018 -1 0 0 0 0 1;
	setAttr ".radi" 0.51822942123094551;
createNode joint -n "joint2" -p "joint1";
	rename -uid "790671D9-45D1-F155-4A37-309A8024C2EC";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 1.3524354771316136 1.1102230246251565e-016 1.3866695599588098e-032 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 180 -4.5784841996529468e-016 3.7412741558532594 ;
	setAttr ".bps" -type "matrix" 0.052558833122765186 0.99861782933250953 7.9909624034482915e-018 0
		 -0.99861782933250953 0.052558833122765186 -2.4466837194769007e-016 0 -2.4475019416017449e-016 4.8795666020080636e-018 1 0
		 -0.017195064903446085 1.3523261624131884 -2.7038486511919032e-034 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint3" -p "joint2";
	rename -uid "0C0E4EFD-4FB9-673E-E56E-6881259E15F4";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 0.84571136577253625 1.1796119636642288e-015 -6.7580477280569803e-018 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -7.3522427862749032e-018 -2.7957857214805223e-016 
		3.0127875041834073 ;
	setAttr ".bps" -type "matrix" 3.4694469519536142e-016 0.99999999999999989 -4.879566602007975e-018 0
		 -0.99999999999999989 3.4694469519536142e-016 -2.4475019416017449e-016 0 -2.4475019416017449e-016 4.8795666020080636e-018 1 0
		 0.027254537640217298 2.1968686107427908 -2.5692660131030704e-032 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint4" -p "joint3";
	rename -uid "94AB970B-4DEC-D70F-4DDD-8B86A8373E46";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 0.73341844197044326 2.6279294056123888e-016 3.5787641347357636e-018 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 3.4694469519536142e-016 0.99999999999999989 -4.879566602007975e-018 0
		 -0.99999999999999989 3.4694469519536142e-016 -2.4475019416017449e-016 0 -2.4475019416017449e-016 4.8795666020080636e-018 1 0
		 0.027254537640217291 2.9302870527132341 -2.4922288153275809e-032 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint5" -p "joint4";
	rename -uid "917CE101-4375-B313-AFFD-14B90323DC5C";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 180 -4.4452608263695095e-016 0.67403689798468325 ;
	setAttr ".bps" -type "matrix" -0.011763891800364456 0.99993080303074422 -7.7584437530064045e-018 0
		 0.99993080303074422 0.011763891800364456 3.6714053540971048e-016 0 3.6720639989021883e-016 -3.4389053581248513e-018 -1 0
		 0.027254537640217291 3.6748178953195945 -2.6463032108785598e-032 1;
	setAttr ".radi" 0.5;
createNode joint -n "joint6" -p "joint5";
	rename -uid "5EC666B4-4446-BBEA-E7E5-97A92D03D933";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" 1;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" 0.94461941885372935 2.5725949148736049e-015 -7.3287766291733129e-018 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 180 0 90.674036897984649 ;
	setAttr ".bps" -type "matrix" 0.99999999999999978 2.6714741530042829e-016 3.6720639989021883e-016 0
		 -2.6714741530042824e-016 0.99999999999999978 -1.2590358527286026e-016 0 -3.6720639989021887e-016 1.2590358527286014e-016 1 0
		 0.016142137004301442 4.6193719493724394 -2.6463032108785598e-032 1;
	setAttr ".radi" 0.5;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "5987EAB7-477C-F696-4A40-BD97249DF16D";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "7E3E10FF-4242-1D66-3B98-3FB137669519";
createNode displayLayer -n "defaultLayer";
	rename -uid "C117C853-4C6A-4564-EADB-358DFE55CA8F";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "5319AFB1-4FAF-DFE3-6836-99B10C286A90";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "0043F71A-466D-DF83-26B0-898EC6B5B5F6";
	setAttr ".g" yes;
createNode polyCone -n "polyCone1";
	rename -uid "359187A6-4A88-391E-C78C-31B9C78B0196";
	setAttr ".r" 1.4142135623730951;
	setAttr ".h" 3.3362582650653434;
	setAttr ".sh" 7;
	setAttr ".sc" 5;
	setAttr ".cuv" 3;
	setAttr ".rcp" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "0DCF2F28-48AC-094B-B693-F3895DFEE4B3";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 1\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n"
		+ "                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 798\n                -height 343\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n"
		+ "                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n"
		+ "            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n"
		+ "            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 798\n            -height 343\n            -sceneRenderFilter 0\n            $editorName;\n"
		+ "        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n"
		+ "                -xray 1\n                -jointXray 1\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n"
		+ "                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n"
		+ "                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 798\n                -height 342\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n"
		+ "            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 1\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n"
		+ "            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n"
		+ "            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 798\n            -height 342\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 1\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n"
		+ "                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n"
		+ "                -width 798\n                -height 342\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n"
		+ "            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n"
		+ "            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n"
		+ "            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 798\n            -height 342\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n"
		+ "                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 1\n                -jointXray 1\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n"
		+ "                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n"
		+ "                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1416\n                -height 730\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 1\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n"
		+ "            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n"
		+ "            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1416\n            -height 730\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n"
		+ "            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -showShapes 0\n                -showReferenceNodes 1\n                -showReferenceMembers 1\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n"
		+ "                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n"
		+ "                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n"
		+ "            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n"
		+ "            -ignoreOutlinerColor 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n"
		+ "                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n"
		+ "                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n"
		+ "                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n"
		+ "                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n"
		+ "                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n"
		+ "                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n"
		+ "                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n"
		+ "                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n"
		+ "\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n"
		+ "            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n"
		+ "                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n"
		+ "                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n"
		+ "                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n"
		+ "                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n"
		+ "                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"profilerPanel\" -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n"
		+ "        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 1\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1416\\n    -height 730\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 1\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1416\\n    -height 730\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "6B9A14CB-4FC7-B832-4032-DC847F16C4C5";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode animCurveTL -n "pCone1_translateX";
	rename -uid "95357298-4842-6084-6714-DA803DAE5BDA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTL -n "pCone1_translateY";
	rename -uid "03946EEE-4E83-301B-475C-7180AA221FA9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1.6681291325326717;
createNode animCurveTL -n "pCone1_translateZ";
	rename -uid "0902F1D5-4EA6-03DF-3DDA-5BA6585CC4AD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "pCone1_visibility";
	rename -uid "0B21D5CA-4F86-EF4B-8684-859C2418F328";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "pCone1_rotateX";
	rename -uid "1168B44B-4E7D-03F7-3EBC-CCB4AB966F67";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "pCone1_rotateY";
	rename -uid "61409FF6-4703-03FC-8224-A48A191EA20E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "pCone1_rotateZ";
	rename -uid "5C8A6A6F-41E2-D811-C02D-B898154F3B9B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "pCone1_scaleX";
	rename -uid "EBFA039A-4079-CA3D-C91C-4B813B1834FB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "pCone1_scaleY";
	rename -uid "42547521-42D4-6F0F-9741-3A97B62A0BAA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "pCone1_scaleZ";
	rename -uid "C95E1D55-4C6D-76B8-F765-B4AABD4D0BF6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode skinCluster -n "skinCluster1";
	rename -uid "480CA0B5-4FF9-E002-50C7-738CBD77E7B0";
	setAttr ".skm" 1;
	setAttr -s 222 ".wl";
	setAttr -s 4 ".wl[0].w[0:3]"  0.98968076571582253 0.0084394428445012017 
		0.0014162634940224339 0.00046352794565387122;
	setAttr -s 4 ".wl[1].w[0:3]"  0.98966573990957341 0.0084567470029025572 
		0.0014143471417765922 0.00046316594574754129;
	setAttr -s 4 ".wl[2].w[0:3]"  0.98964222122738033 0.0084838057379945202 
		0.0014113700704628757 0.00046260296416229362;
	setAttr -s 4 ".wl[3].w[0:3]"  0.98961238619833347 0.0085180869917578055 
		0.0014076318525731064 0.00046189495733560827;
	setAttr -s 4 ".wl[4].w[0:3]"  0.98957905545962632 0.0085563283126311677 
		0.0014035044720903482 0.00046111175565203199;
	setAttr -s 4 ".wl[5].w[0:3]"  0.9895454451451593 0.0085948291892009795 
		0.0013993951289763596 0.00046033053666339651;
	setAttr -s 4 ".wl[6].w[0:3]"  0.98951488816862854 0.0086297818641516005 
		0.0013957027192786223 0.00045962724794119768;
	setAttr -s 4 ".wl[7].w[0:3]"  0.98949047482908936 0.008657672379224414 
		0.0013927825876638093 0.00045907020402237566;
	setAttr -s 4 ".wl[8].w[0:3]"  0.98947472338423692 0.0086756509648032495 
		0.0013909125576015049 0.00045871309335842708;
	setAttr -s 4 ".wl[9].w[0:3]"  0.98946928385465516 0.0086818573302447823 
		0.0013902687729584688 0.00045859004214163831;
	setAttr -s 4 ".wl[10].w[0:3]"  0.98947472338423692 0.0086756509648032495 
		0.0013909125576015049 0.00045871309335842708;
	setAttr -s 4 ".wl[11].w[0:3]"  0.98949047482908936 0.008657672379224414 
		0.0013927825876638093 0.00045907020402237566;
	setAttr -s 4 ".wl[12].w[0:3]"  0.98951488816862854 0.0086297818641516005 
		0.0013957027192786223 0.00045962724794119768;
	setAttr -s 4 ".wl[13].w[0:3]"  0.9895454451451593 0.0085948291892009795 
		0.0013993951289763596 0.00046033053666339651;
	setAttr -s 4 ".wl[14].w[0:3]"  0.98957905545962632 0.0085563283126311677 
		0.0014035044720903482 0.00046111175565203199;
	setAttr -s 4 ".wl[15].w[0:3]"  0.98961238619833347 0.0085180869917578055 
		0.0014076318525731064 0.00046189495733560827;
	setAttr -s 4 ".wl[16].w[0:3]"  0.98964222122738033 0.0084838057379945202 
		0.0014113700704628757 0.00046260296416229362;
	setAttr -s 4 ".wl[17].w[0:3]"  0.98966573990957341 0.0084567470029025572 
		0.0014143471417765922 0.00046316594574754129;
	setAttr -s 4 ".wl[18].w[0:3]"  0.98968076571582253 0.0084394428445012017 
		0.0014162634940224339 0.00046352794565387122;
	setAttr -s 4 ".wl[19].w[0:3]"  0.98968593189320897 0.0084334909910219798 
		0.0014169244319186495 0.0004636526838504415;
	setAttr -s 4 ".wl[20].w[0:3]"  0.87617908705771619 0.098225695077116648 
		0.019261204241292452 0.0063340136238747482;
	setAttr -s 4 ".wl[21].w[0:3]"  0.87606394347002481 0.098446330362000165 
		0.019176260035294095 0.0063134661326810669;
	setAttr -s 4 ".wl[22].w[0:3]"  0.87588457864139746 0.098789682829593994 
		0.019044305474786784 0.006281433054221866;
	setAttr -s 4 ".wl[23].w[0:3]"  0.87565853895315016 0.099221802267659129 
		0.018878639291830222 0.0062410194873605664;
	setAttr -s 4 ".wl[24].w[0:3]"  0.8754079604514915 0.09970009154041222 
		0.018695788680106819 0.0061961593279894955;
	setAttr -s 4 ".wl[25].w[0:3]"  0.87515740023340627 0.10017758961150673 
		0.018513772026591626 0.0061512381284953314;
	setAttr -s 4 ".wl[26].w[0:3]"  0.87493140081172838 0.1006076432807486 
		0.018350290631208639 0.0061106652763143433;
	setAttr -s 4 ".wl[27].w[0:3]"  0.87475208273345328 0.10094844447351034 
		0.018221037257188388 0.0060784355358479121;
	setAttr -s 4 ".wl[28].w[0:3]"  0.87463697452254008 0.10116701747792803 
		0.01813827887537784 0.0060577291241540685;
	setAttr -s 4 ".wl[29].w[0:3]"  0.87459731405508656 0.10124229030640057 
		0.018109803759526345 0.0060505918789865842;
	setAttr -s 4 ".wl[30].w[0:3]"  0.87463697452254008 0.10116701747792803 
		0.01813827887537784 0.0060577291241540685;
	setAttr -s 4 ".wl[31].w[0:3]"  0.87475208273345328 0.10094844447351034 
		0.018221037257188388 0.0060784355358479121;
	setAttr -s 4 ".wl[32].w[0:3]"  0.87493140081172838 0.1006076432807486 
		0.018350290631208639 0.0061106652763143433;
	setAttr -s 4 ".wl[33].w[0:3]"  0.87515740023340627 0.10017758961150673 
		0.018513772026591626 0.0061512381284953314;
	setAttr -s 4 ".wl[34].w[0:3]"  0.8754079604514915 0.09970009154041222 
		0.018695788680106819 0.0061961593279894955;
	setAttr -s 4 ".wl[35].w[0:3]"  0.87565853895315016 0.099221802267659129 
		0.018878639291830222 0.0062410194873605664;
	setAttr -s 4 ".wl[36].w[0:3]"  0.87588457864139746 0.098789682829593994 
		0.019044305474786784 0.006281433054221866;
	setAttr -s 4 ".wl[37].w[0:3]"  0.87606394347002481 0.098446330362000165 
		0.019176260035294095 0.0063134661326810669;
	setAttr -s 4 ".wl[38].w[0:3]"  0.87617908705771619 0.098225695077116648 
		0.019261204241292452 0.0063340136238747482;
	setAttr -s 4 ".wl[39].w[0:3]"  0.87621875813421923 0.09814963667620917 
		0.019290514824212453 0.0063410903653592556;
	setAttr -s 4 ".wl[40].w[0:3]"  0.64752446175985601 0.26384620577155254 
		0.066492110506961702 0.022137221961629781;
	setAttr -s 4 ".wl[41].w[0:3]"  0.64751600389678943 0.26446389023991818 
		0.066005143803950173 0.022014962059342166;
	setAttr -s 4 ".wl[42].w[0:3]"  0.64749765228992318 0.26542513173552507 
		0.065252143940251306 0.021825072034300459;
	setAttr -s 4 ".wl[43].w[0:3]"  0.6474656131988461 0.26663492918588277 
		0.064312723929321317 0.021586733685949964;
	setAttr -s 4 ".wl[44].w[0:3]"  0.64741858677686659 0.26797411680771543 
		0.063283524952888068 0.021323771462529961;
	setAttr -s 4 ".wl[45].w[0:3]"  0.64735961582058354 0.26931129311129565 
		0.062266966053686014 0.021062125014434781;
	setAttr -s 4 ".wl[46].w[0:3]"  0.64729627579870663 0.27051583996761369 
		0.061360649211653157 0.020827235022026498;
	setAttr -s 4 ".wl[47].w[0:3]"  0.64723924546838008 0.27147058409343827 
		0.060648565682163133 0.02064160475601852;
	setAttr -s 4 ".wl[48].w[0:3]"  0.6471995050590128 0.27208300619243547 
		0.060194699817209971 0.020522788931341872;
	setAttr -s 4 ".wl[49].w[0:3]"  0.64718524225040364 0.27229393373351318 
		0.060038908727642011 0.020481915288441177;
	setAttr -s 4 ".wl[50].w[0:3]"  0.6471995050590128 0.27208300619243547 
		0.060194699817209971 0.020522788931341872;
	setAttr -s 4 ".wl[51].w[0:3]"  0.64723924546838008 0.27147058409343827 
		0.060648565682163133 0.02064160475601852;
	setAttr -s 4 ".wl[52].w[0:3]"  0.64729627579870663 0.27051583996761369 
		0.061360649211653157 0.020827235022026498;
	setAttr -s 4 ".wl[53].w[0:3]"  0.64735961582058354 0.26931129311129565 
		0.062266966053686014 0.021062125014434781;
	setAttr -s 4 ".wl[54].w[0:3]"  0.64741858677686659 0.26797411680771543 
		0.063283524952888068 0.021323771462529961;
	setAttr -s 4 ".wl[55].w[0:3]"  0.6474656131988461 0.26663492918588277 
		0.064312723929321317 0.021586733685949964;
	setAttr -s 4 ".wl[56].w[0:3]"  0.64749765228992318 0.26542513173552507 
		0.065252143940251306 0.021825072034300459;
	setAttr -s 4 ".wl[57].w[0:3]"  0.64751600389678943 0.26446389023991818 
		0.066005143803950173 0.022014962059342166;
	setAttr -s 4 ".wl[58].w[0:3]"  0.64752446175985601 0.26384620577155254 
		0.066492110506961702 0.022137221961629781;
	setAttr -s 4 ".wl[59].w[0:3]"  0.64752676433518175 0.26363327395318176 
		0.066660549206471562 0.022179412505164989;
	setAttr -s 4 ".wl[60].w[0:3]"  0.45914859473433323 0.36459857328486595 
		0.13143634868080503 0.044816483299995775;
	setAttr -s 4 ".wl[61].w[0:3]"  0.45967091466888932 0.36564353184049481 
		0.1301841826546063 0.044501370836009552;
	setAttr -s 4 ".wl[62].w[0:3]"  0.46047186130624596 0.36726364140318229 
		0.12825236698461592 0.044012130305955785;
	setAttr -s 4 ".wl[63].w[0:3]"  0.4614595107306983 0.36929216619820765 
		0.12584990320217934 0.043398419868914628;
	setAttr -s 4 ".wl[64].w[0:3]"  0.46252655214610428 0.37152393760729058 
		0.12322768331702327 0.042721826929581722;
	setAttr -s 4 ".wl[65].w[0:3]"  0.46356476535431046 0.37373795324576897 
		0.12064800760072801 0.042049273799192599;
	setAttr -s 4 ".wl[66].w[0:3]"  0.4644769918225688 0.37572000197884775 
		0.11835689144934043 0.041446114749243063;
	setAttr -s 4 ".wl[67].w[0:3]"  0.4651846919076113 0.37728266419488571 
		0.11656272847779121 0.040969915419711775;
	setAttr -s 4 ".wl[68].w[0:3]"  0.46563155871407774 0.37828114705122323 
		0.11542194156152255 0.040665352673176544;
	setAttr -s 4 ".wl[69].w[0:3]"  0.46578419862364678 0.37862433094267328 
		0.11503085164487017 0.040560618788809774;
	setAttr -s 4 ".wl[70].w[0:3]"  0.46563155871407774 0.37828114705122323 
		0.11542194156152255 0.040665352673176544;
	setAttr -s 4 ".wl[71].w[0:3]"  0.4651846919076113 0.37728266419488571 
		0.11656272847779121 0.040969915419711775;
	setAttr -s 4 ".wl[72].w[0:3]"  0.4644769918225688 0.37572000197884775 
		0.11835689144934043 0.041446114749243063;
	setAttr -s 4 ".wl[73].w[0:3]"  0.46356476535431046 0.37373795324576897 
		0.12064800760072801 0.042049273799192599;
	setAttr -s 4 ".wl[74].w[0:3]"  0.46252655214610428 0.37152393760729058 
		0.12322768331702327 0.042721826929581722;
	setAttr -s 4 ".wl[75].w[0:3]"  0.4614595107306983 0.36929216619820765 
		0.12584990320217934 0.043398419868914628;
	setAttr -s 4 ".wl[76].w[0:3]"  0.46047186130624596 0.36726364140318229 
		0.12825236698461592 0.044012130305955785;
	setAttr -s 4 ".wl[77].w[0:3]"  0.45967091466888932 0.36564353184049481 
		0.1301841826546063 0.044501370836009552;
	setAttr -s 4 ".wl[78].w[0:3]"  0.45914859473433323 0.36459857328486595 
		0.13143634868080503 0.044816483299995775;
	setAttr -s 4 ".wl[79].w[0:3]"  0.45896715349701711 0.36423764075570869 
		0.13186996846751478 0.044925237279759535;
	setAttr -s 4 ".wl[80].w[0:3]"  0.35792390106687194 0.35834120726013602 
		0.20919407565685383 0.074540816016138239;
	setAttr -s 4 ".wl[81].w[0:3]"  0.35942859818701017 0.35957279813900389 
		0.20699753597864501 0.074001067695340927;
	setAttr -s 4 ".wl[82].w[0:3]"  0.36170659445392145 0.36156683587188737 
		0.20357755505127242 0.073149014622918812;
	setAttr -s 4 ".wl[83].w[0:3]"  0.36445869448902785 0.36421426249381572 
		0.19927096765582658 0.072056075361329699;
	setAttr -s 4 ".wl[84].w[0:3]"  0.36739893091174125 0.36724199941370439 
		0.19452910313354943 0.070829966541004916;
	setAttr -s 4 ".wl[85].w[0:3]"  0.37030613900572995 0.37022092230590037 
		0.18986699242388252 0.069605946264487198;
	setAttr -s 4 ".wl[86].w[0:3]"  0.37290219838296762 0.37286359507491534 
		0.18572988251151687 0.068504324030600125;
	setAttr -s 4 ".wl[87].w[0:3]"  0.37494476011964351 0.37493041379897329 
		0.18249268476345054 0.067632141317932631;
	setAttr -s 4 ".wl[88].w[0:3]"  0.37624800954616133 0.3762430978590951 
		0.18043563801317603 0.067073254581567654;
	setAttr -s 4 ".wl[89].w[0:3]"  0.37669562087232311 0.37669282464394277 
		0.17973067601543374 0.066880878468300292;
	setAttr -s 4 ".wl[90].w[0:3]"  0.37624800954616133 0.3762430978590951 
		0.18043563801317603 0.067073254581567654;
	setAttr -s 4 ".wl[91].w[0:3]"  0.37494476724933129 0.37493042092693879 
		0.1824926770828304 0.067632134740899547;
	setAttr -s 4 ".wl[92].w[0:3]"  0.37290222711527216 0.37286362377049576 
		0.18572985255010077 0.068504296564131387;
	setAttr -s 4 ".wl[93].w[0:3]"  0.37030618723722514 0.37022097044452312 
		0.18986694250265859 0.069605899815593217;
	setAttr -s 4 ".wl[94].w[0:3]"  0.36739898865743426 0.36724205701053098 
		0.19452904380143471 0.070829910530600171;
	setAttr -s 4 ".wl[95].w[0:3]"  0.36445875751814 0.36421432528627795 
		0.19927090347807966 0.072056013717502337;
	setAttr -s 4 ".wl[96].w[0:3]"  0.36170667164097459 0.36156691253864609 
		0.20357747736975262 0.073148938450626755;
	setAttr -s 4 ".wl[97].w[0:3]"  0.35942867764927544 0.35957287694848356 
		0.20699745677637996 0.074000988625861033;
	setAttr -s 4 ".wl[98].w[0:3]"  0.35792398428606653 0.35834128979045815 
		0.20919399331750349 0.074540732605971785;
	setAttr -s 4 ".wl[99].w[0:3]"  0.35739806042288896 0.35792559338936081 
		0.20995097433557861 0.074725371852171596;
	setAttr -s 4 ".wl[100].w[0:3]"  0.24797890835410916 0.34782936578922252 
		0.30126584756820513 0.1029258782884632;
	setAttr -s 4 ".wl[101].w[0:3]"  0.25075152132956757 0.3476868741138272 
		0.29892532625254553 0.10263627830405979;
	setAttr -s 4 ".wl[102].w[0:3]"  0.25506192027936403 0.34751604339775127 
		0.29526308793932488 0.10215894838355982;
	setAttr -s 4 ".wl[103].w[0:3]"  0.26047667881752051 0.34738834164327037 
		0.29062198216791923 0.1015129973712898;
	setAttr -s 4 ".wl[104].w[0:3]"  0.26645273877822223 0.34735940089870804 
		0.28544712195859234 0.10074073836447735;
	setAttr -s 4 ".wl[105].w[0:3]"  0.27239578706334461 0.34744754276141271 
		0.28024530684460641 0.099911363330636285;
	setAttr -s 4 ".wl[106].w[0:3]"  0.27772400237514044 0.34762668270854319 
		0.27553344114322326 0.099115873773092972;
	setAttr -s 4 ".wl[107].w[0:3]"  0.28192719367119423 0.34783578301191331 
		0.27178335507841617 0.098453668238476233;
	setAttr -s 4 ".wl[108].w[0:3]"  0.28461288273901431 0.3480011967788279 
		0.26937145349076708 0.098014466991390756;
	setAttr -s 4 ".wl[109].w[0:3]"  0.28553583432135654 0.34806383747815151 
		0.26853969937266076 0.097860628827831142;
	setAttr -s 4 ".wl[110].w[0:3]"  0.28461288273901431 0.3480011967788279 
		0.26937145349076708 0.098014466991390756;
	setAttr -s 4 ".wl[111].w[0:3]"  0.28192719320224408 0.34783579298922135 
		0.2717833551472027 0.098453658661331891;
	setAttr -s 4 ".wl[112].w[0:3]"  0.27772400044857659 0.34762670856954125 
		0.27553344207001745 0.09911584891186459;
	setAttr -s 4 ".wl[113].w[0:3]"  0.2723957828590477 0.34744758731751718 
		0.28024530951239274 0.099911320311042426;
	setAttr -s 4 ".wl[114].w[0:3]"  0.26645273184479612 0.34735945897735754 
		0.28544712719398357 0.10074068198386285;
	setAttr -s 4 ".wl[115].w[0:3]"  0.26047666976913225 0.3473884049844258 
		0.29062198977443721 0.10151293547200471;
	setAttr -s 4 ".wl[116].w[0:3]"  0.25506190560184683 0.34751613097415623 
		0.29526310116767196 0.10215886225632499;
	setAttr -s 4 ".wl[117].w[0:3]"  0.25075150441190586 0.34768696504969565 
		0.29892534218312466 0.10263618835527377;
	setAttr -s 4 ".wl[118].w[0:3]"  0.24797888948403055 0.34782945732073278 
		0.30126586568431885 0.1029257875109178;
	setAttr -s 4 ".wl[119].w[0:3]"  0.24702269048377021 0.34788455210986585 
		0.30207028208500453 0.10302247532135943;
	setAttr -s 4 ".wl[120].w[1:4]"  0.38071438960701143 0.38685576741044059 
		0.18926133605113077 0.04316850693141721;
	setAttr -s 4 ".wl[121].w[1:4]"  0.38022036286946326 0.38630445779998407 
		0.18990469103533278 0.043570488295219978;
	setAttr -s 4 ".wl[122].w[1:4]"  0.3794588326333318 0.38545564512356911 
		0.190890502941577 0.044195019301522198;
	setAttr -s 4 ".wl[123].w[1:4]"  0.37851275209313062 0.3844028195273077 
		0.19210522064601693 0.044979207733544725;
	setAttr -s 4 ".wl[124].w[1:4]"  0.37748120940566338 0.38325697676747639 
		0.19341700923854563 0.045844804588314601;
	setAttr -s 4 ".wl[125].w[1:4]"  0.37646727809565311 0.38213276984942141 
		0.1946934944384327 0.046706457616492926;
	setAttr -s 4 ".wl[126].w[1:4]"  0.37556735320562024 0.3811366513174565 
		0.19581570056551087 0.047480294911412327;
	setAttr -s 4 ".wl[127].w[1:4]"  0.37486290177621723 0.38035798263460019 
		0.19668707736908916 0.048092038220093364;
	setAttr -s 4 ".wl[128].w[1:4]"  0.37441506222735665 0.37986344747925038 
		0.19723779929150972 0.048483691001883107;
	setAttr -s 4 ".wl[129].w[1:4]"  0.37426155358503338 0.37969401885273207 
		0.19742599374446027 0.048618433817774261;
	setAttr -s 4 ".wl[130].w[1:4]"  0.37441506222735665 0.37986344747925038 
		0.19723779929150972 0.048483691001883107;
	setAttr -s 4 ".wl[131].w[1:4]"  0.37486291163158891 0.38035799352171551 
		0.19668706522193424 0.048092029624761327;
	setAttr -s 4 ".wl[132].w[1:4]"  0.37556738313125793 0.38113668441594556 
		0.1958156634166798 0.04748026903611674;
	setAttr -s 4 ".wl[133].w[1:4]"  0.3764673222787901 0.38213281879386851 
		0.19469343909360223 0.046706419833739132;
	setAttr -s 4 ".wl[134].w[1:4]"  0.37748125273234245 0.38325702484994234 
		0.19341695441887985 0.045844767998835412;
	setAttr -s 4 ".wl[135].w[1:4]"  0.37851281435192874 0.38440288874992373 
		0.19210514107407303 0.044979155824074503;
	setAttr -s 4 ".wl[136].w[1:4]"  0.37945890436524327 0.38545572501944658 
		0.19089041042127203 0.044194960194038055;
	setAttr -s 4 ".wl[137].w[1:4]"  0.38022044290631757 0.38630454707484985 
		0.18990458704987992 0.043570422968952777;
	setAttr -s 4 ".wl[138].w[1:4]"  0.38071447432076966 0.38685586199184657 
		0.18926122547298926 0.043168438214394568;
	setAttr -s 4 ".wl[139].w[1:4]"  0.38088563842553519 0.38704699536009063 
		0.18903762172619237 0.043029744488181913;
	setAttr -s 4 ".wl[140].w[1:4]"  0.17114934953494823 0.39613476436445405 
		0.36174813827756108 0.070967747823036623;
	setAttr -s 4 ".wl[141].w[1:4]"  0.17193801173418893 0.39520419806058243 
		0.3612228547291535 0.071634935476075232;
	setAttr -s 4 ".wl[142].w[1:4]"  0.17314268742307623 0.39377920131534355 
		0.36041198624288884 0.072666125018691477;
	setAttr -s 4 ".wl[143].w[1:4]"  0.17462077880879973 0.39202458674677787 
		0.35940287958212525 0.073951754862297145;
	setAttr -s 4 ".wl[144].w[1:4]"  0.17620916603444492 0.39013094299401846 
		0.35830076549648782 0.075359125475048708;
	setAttr -s 4 ".wl[145].w[1:4]"  0.17774698690885329 0.38828905419417631 
		0.35721595747552443 0.076748001421445805;
	setAttr -s 4 ".wl[146].w[1:4]"  0.17909259506045863 0.3866700650182206 
		0.35625213504674663 0.077985204874574221;
	setAttr -s 4 ".wl[147].w[1:4]"  0.18013333744710214 0.38541294199026044 
		0.3554971770856985 0.078956543476939034;
	setAttr -s 4 ".wl[148].w[1:4]"  0.18078923719382045 0.38461837106701313 
		0.35501707077992783 0.079575320959238596;
	setAttr -s 4 ".wl[149].w[1:4]"  0.18101305252745817 0.38434681855966091 
		0.35485247221022309 0.07978765670265793;
	setAttr -s 4 ".wl[150].w[1:4]"  0.18078923719382045 0.38461837106701313 
		0.35501707077992783 0.079575320959238596;
	setAttr -s 4 ".wl[151].w[1:4]"  0.18013332289547607 0.38541295959838606 
		0.35549718770004002 0.078956529806097797;
	setAttr -s 4 ".wl[152].w[1:4]"  0.17909256010520763 0.38667010716738742 
		0.3562521602634014 0.077985172464003424;
	setAttr -s 4 ".wl[153].w[1:4]"  0.17774694157974349 0.38828910861513793 
		0.3572159897124873 0.076747960092631268;
	setAttr -s 4 ".wl[154].w[1:4]"  0.1762091219456525 0.39013099567739001 
		0.35830079634527512 0.075359086031682343;
	setAttr -s 4 ".wl[155].w[1:4]"  0.17462071661469364 0.39202466072562087 
		0.35940292237489246 0.073951700284792962;
	setAttr -s 4 ".wl[156].w[1:4]"  0.17314259769480136 0.39377930761912588 
		0.3604120470242495 0.072666047661823246;
	setAttr -s 4 ".wl[157].w[1:4]"  0.1719379180036936 0.39520430876371138 
		0.36122291741843648 0.071634855814158543;
	setAttr -s 4 ".wl[158].w[1:4]"  0.17114925123170929 0.39613488024379218 
		0.36174820347904485 0.070967665045453668;
	setAttr -s 4 ".wl[159].w[1:4]"  0.17087468264208294 0.39645843345260651 
		0.36193005185891586 0.070736832046394721;
	setAttr -s 4 ".wl[160].w[2:5]"  0.29854299061140238 0.49051181461214738 
		0.20002462359743006 0.010920571179020211;
	setAttr -s 4 ".wl[161].w[2:5]"  0.29913103562314614 0.4885117606581989 
		0.20120335337597817 0.01115385034267684;
	setAttr -s 4 ".wl[162].w[2:5]"  0.30000501945145114 0.48548203729017236 
		0.20299270985158321 0.011520233406793324;
	setAttr -s 4 ".wl[163].w[2:5]"  0.30103789782199025 0.48180514378911254 
		0.20516986529480441 0.01198709309409274;
	setAttr -s 4 ".wl[164].w[2:5]"  0.30210019323926401 0.47790145986319715 
		0.20748711213647381 0.01251123476106502;
	setAttr -s 4 ".wl[165].w[2:5]"  0.30308241788922774 0.47416680397252947 
		0.20970860346944306 0.013042174668799592;
	setAttr -s 4 ".wl[166].w[2:5]"  0.30390511487955746 0.47093327131823959 
		0.21163477544606349 0.013526838356139489;
	setAttr -s 4 ".wl[167].w[2:5]"  0.30451816793893827 0.46845333246748588 
		0.21311326852143958 0.01391523107213636;
	setAttr -s 4 ".wl[168].w[2:5]"  0.30489419800341921 0.46689947952744076 
		0.21404000156379188 0.014166320905348176;
	setAttr -s 4 ".wl[169].w[2:5]"  0.30502068929007314 0.46637083383830374 
		0.21435533132534237 0.014253145546280693;
	setAttr -s 4 ".wl[170].w[2:5]"  0.30489419800341921 0.46689947952744076 
		0.21404000156379188 0.014166320905348176;
	setAttr -s 4 ".wl[171].w[2:5]"  0.3045181592896361 0.46845336705471147 
		0.21311324764956488 0.01391522600608767;
	setAttr -s 4 ".wl[172].w[2:5]"  0.3039050986204353 0.47093333479102323 
		0.21163473718741357 0.01352682940112789;
	setAttr -s 4 ".wl[173].w[2:5]"  0.30308239613128257 0.47416688640511684 
		0.2097085538703988 0.013042163593201817;
	setAttr -s 4 ".wl[174].w[2:5]"  0.30210016403902201 0.47790156693538666 
		0.20748704786856412 0.012511221157027191;
	setAttr -s 4 ".wl[175].w[2:5]"  0.30103786353884743 0.48180526553098491 
		0.20516979244058645 0.011987078489581277;
	setAttr -s 4 ".wl[176].w[2:5]"  0.30000497242121449 0.48548219963041084 
		0.20299261301985164 0.011520214928523047;
	setAttr -s 4 ".wl[177].w[2:5]"  0.29913098205649313 0.48851194147913457 
		0.20120324583223909 0.011153830632133198;
	setAttr -s 4 ".wl[178].w[2:5]"  0.29854293495824363 0.4905119998383986 
		0.20002451366041035 0.010920551542947436;
	setAttr -s 4 ".wl[179].w[2:5]"  0.29833523615214741 0.4912114439488231 
		0.1996127930885023 0.010840526810527244;
	setAttr -s 4 ".wl[180].w[2:5]"  0.017508125205899894 0.4815353483741947 
		0.49022699479518667 0.010729531624718796;
	setAttr -s 4 ".wl[181].w[2:5]"  0.018102339995520897 0.48096635785384656 
		0.48978858750351451 0.011142714647118048;
	setAttr -s 4 ".wl[182].w[2:5]"  0.019035393230657931 0.4800711317375323 
		0.48909629348556477 0.011797181546244991;
	setAttr -s 4 ".wl[183].w[2:5]"  0.020223026922732139 0.47892837382149672 
		0.48820841277636157 0.012640186479409659;
	setAttr -s 4 ".wl[184].w[2:5]"  0.021553279318182465 0.47764385344646265 
		0.48720527226350457 0.013597594971850317;
	setAttr -s 4 ".wl[185].w[2:5]"  0.022896019418699107 0.47634221824254658 
		0.48618373998432268 0.014578022354431572;
	setAttr -s 4 ".wl[186].w[2:5]"  0.02411642985474818 0.4751545971336697 
		0.48524766759381432 0.01548130541776789;
	setAttr -s 4 ".wl[187].w[2:5]"  0.025090197191728423 0.47420378208717884 
		0.48449569045997964 0.016210330261113175;
	setAttr -s 4 ".wl[188].w[2:5]"  0.025717524446025423 0.47358970137669198 
		0.48400889354525389 0.016683880632028789;
	setAttr -s 4 ".wl[189].w[2:5]"  0.025934033676687937 0.47337747943414599 
		0.48384046215428694 0.016848024734879116;
	setAttr -s 4 ".wl[190].w[2:5]"  0.025717524446025423 0.47358970137669198 
		0.48400889354525389 0.016683880632028789;
	setAttr -s 4 ".wl[191].w[2:5]"  0.025090195753697288 0.47420378308634015 
		0.4844956918843959 0.016210329275566617;
	setAttr -s 4 ".wl[192].w[2:5]"  0.024116417197342616 0.47515460601581727 
		0.48524768001190466 0.015481296774935439;
	setAttr -s 4 ".wl[193].w[2:5]"  0.022895998756986589 0.47634223252243918 
		0.48618376031729232 0.014578008403281769;
	setAttr -s 4 ".wl[194].w[2:5]"  0.021553260286593788 0.47764386633889605 
		0.48720529108852062 0.013597582285989493;
	setAttr -s 4 ".wl[195].w[2:5]"  0.020223001517566511 0.47892839068334486 
		0.48820843804019876 0.012640169758889826;
	setAttr -s 4 ".wl[196].w[2:5]"  0.019035358275062274 0.48007115457168287 
		0.48909632836617933 0.011797158787075591;
	setAttr -s 4 ".wl[197].w[2:5]"  0.01810230497909621 0.48096638035599659 
		0.48978862261011935 0.011142692054787861;
	setAttr -s 4 ".wl[198].w[2:5]"  0.01750808904907129 0.48153537140708541 
		0.49022703111982208 0.010729508424021292;
	setAttr -s 4 ".wl[199].w[2:5]"  0.0173042624919756 0.48173034679763194 
		0.49037696078142773 0.010588429928964754;
	setAttr -s 4 ".wl[200].w[2:5]"  0.00040268721391042858 0.01192151036659771 
		0.9653747898828996 0.022301012536592311;
	setAttr -s 4 ".wl[201].w[2:5]"  0.0004310058585554935 0.012651373119152228 
		0.96320428545614745 0.02371333556614488;
	setAttr -s 4 ".wl[202].w[2:5]"  0.00047671867146826781 0.013809732785360145 
		0.95974986833509945 0.025963680208072104;
	setAttr -s 4 ".wl[203].w[2:5]"  0.00053702505472212289 0.015302884041888853 
		0.95528005197865851 0.028880038924730653;
	setAttr -s 4 ".wl[204].w[2:5]"  0.00060727163810929657 0.01699578457232705 
		0.9501897521181385 0.032207191671425203;
	setAttr -s 4 ".wl[205].w[2:5]"  0.0006809430951653161 0.018721920082021306 
		0.94497551074063746 0.035621626082176006;
	setAttr -s 4 ".wl[206].w[2:5]"  0.00075021785560688836 0.020302495541757986 
		0.94018016945895144 0.038767117143683714;
	setAttr -s 4 ".wl[207].w[2:5]"  0.00080702193223999993 0.021569791358186662 
		0.93632116868339021 0.041302018026183156;
	setAttr -s 4 ".wl[208].w[2:5]"  0.00084431847952705006 0.022388498908836253 
		0.93382154141712426 0.04294564119451233;
	setAttr -s 4 ".wl[209].w[2:5]"  0.00085731657269530308 0.022671411598772465 
		0.93295657155562495 0.043514700272907367;
	setAttr -s 4 ".wl[210].w[2:5]"  0.00084431847952705006 0.022388498908836253 
		0.93382154141712426 0.04294564119451233;
	setAttr -s 4 ".wl[211].w[2:5]"  0.00080702187776847672 0.021569790096245517 
		0.93632117223947386 0.041302015786512179;
	setAttr -s 4 ".wl[212].w[2:5]"  0.00075021737741761156 0.020302484294886351 
		0.94018020129959978 0.038767097028096185;
	setAttr -s 4 ".wl[213].w[2:5]"  0.00068094234668382545 0.018721902052795142 
		0.94497556167836849 0.035621593922152667;
	setAttr -s 4 ".wl[214].w[2:5]"  0.00060727098359335621 0.016995768376739002 
		0.95018979775287959 0.032207162886788078;
	setAttr -s 4 ".wl[215].w[2:5]"  0.00053702407740088603 0.015302859206659879 
		0.95528012182941324 0.028879994886526088;
	setAttr -s 4 ".wl[216].w[2:5]"  0.00047671762064164619 0.013809705433985863 
		0.95974994516159107 0.025963631783781475;
	setAttr -s 4 ".wl[217].w[2:5]"  0.00043100481560504511 0.012651345436488074 
		0.96320436308016277 0.023713286667744107;
	setAttr -s 4 ".wl[218].w[2:5]"  0.00040268617538524276 0.011921482461212194 
		0.96537486809239992 0.022300963271002651;
	setAttr -s 4 ".wl[219].w[2:5]"  0.00039311839727603919 0.011672671775680116 
		0.9661137037258517 0.021820506101192155;
	setAttr -s 4 ".wl[220].w[0:3]"  0.99998689062907353 1.0848302026052532e-005 
		1.7030626743408769e-006 5.5800622615431397e-007;
	setAttr -s 4 ".wl[221].w[2:5]"  3.8124671650549502e-007 3.5683375249191777e-006 
		0.49999802520787934 0.49999802520787934;
	setAttr -s 6 ".pm";
	setAttr ".pm[0]" -type "matrix" -0.012714148064139289 0.99991917195291513 1.2245478133382091e-016 -0
		 0.99991917195291513 0.012714148064139289 1.5570340730633694e-018 -0 -5.3926038442842618e-033 1.2246467991473532e-016 -1 0
		 -0 0 -0 1;
	setAttr ".pm[1]" -type "matrix" 0.0525588331227652 -0.99861782933250975 -2.4475019416017449e-016 -0
		 0.99861782933250975 0.0525588331227652 4.8795666020080605e-018 -0 7.9909624034482885e-018 -2.4466837194769007e-016 1 -0
		 -1.3495532643118258 -0.088247983486935175 -1.0807261050848356e-017 1;
	setAttr ".pm[2]" -type "matrix" 3.4694469519536152e-016 -1 -2.4475019416017449e-016 -0
		 1 3.4694469519536152e-016 4.8795666020080597e-018 0 -4.8795666020079788e-018 -2.4475019416017449e-016 1 -0
		 -2.1968686107427908 0.027254537640216538 -4.0492133227913728e-018 1;
	setAttr ".pm[3]" -type "matrix" 3.4694469519536152e-016 -1 -2.4475019416017449e-016 -0
		 1 3.4694469519536152e-016 4.8795666020080597e-018 0 -4.8795666020079788e-018 -2.4475019416017449e-016 1 -0
		 -2.9302870527132341 0.027254537640216278 -7.6279774575271395e-018 1;
	setAttr ".pm[4]" -type "matrix" -0.011763891800364461 0.99993080303074466 3.6720639989021892e-016 -0
		 0.99993080303074466 0.011763891800364461 -3.4389053581248475e-018 0 -7.7584437530064122e-018 3.6714053540971058e-016 -1 0
		 -3.674242989626805 -0.070482811815396895 2.6293103028109527e-018 1;
	setAttr ".pm[5]" -type "matrix" 1.0000000000000002 -2.6714741530042834e-016 -3.6720639989021892e-016 -0
		 2.6714741530042839e-016 1.0000000000000002 1.2590358527286019e-016 -0 3.6720639989021887e-016 -1.2590358527286026e-016 1 -0
		 -0.016142137004302681 -4.6193719493724403 -5.7566799411898723e-016 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 3 0 1;
	setAttr -s 6 ".ma";
	setAttr -s 6 ".dpf[0:5]"  4 4 4 4 4 4;
	setAttr -s 6 ".lw";
	setAttr -s 6 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 4;
	setAttr ".bm" 1;
	setAttr ".ucm" yes;
	setAttr -s 6 ".ifcl";
	setAttr -s 6 ".ifcl";
createNode tweak -n "tweak1";
	rename -uid "5B57D085-4B5A-8ECF-FC4A-83A13234DF0F";
createNode objectSet -n "skinCluster1Set";
	rename -uid "E948551B-4FD2-12EE-C481-A48F65F5CF5E";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster1GroupId";
	rename -uid "518879C9-49EA-3868-64C4-9587E7BE3DCC";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster1GroupParts";
	rename -uid "0E49083D-4B19-26BE-3086-A99D506E362B";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet1";
	rename -uid "9449471A-484D-4D56-2B5B-FEBC64002990";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId2";
	rename -uid "AE9A86EE-4807-BC88-3218-CAA5FFE0C766";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	rename -uid "F975C696-4C56-8C61-A43C-B6A316BA830D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose1";
	rename -uid "526FF2B9-4F6E-99FE-46D4-BF9FF081D758";
	setAttr -s 6 ".wm";
	setAttr -s 6 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0.70259727153464691 0.71158771351961214 4.3572180783718839e-017 4.3021674983728457e-017 1
		 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.3524354771316136 1.1102230246251565e-016
		 1.3866695599588098e-032 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.9994670760503267 0.032642976142049564 1.9988058123502209e-018 6.1199707776909842e-017 1
		 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.84571136577253625 1.1796119636642288e-015
		 -6.7580477280569803e-018 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.026288501930410154 0.99965439761262231 1
		 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.73341844197044326 2.6279294056123888e-016
		 3.5787641347357636e-018 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.74453084260636027 2.5777972761103402e-016
		 3.6329878337469136e-018 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.99998270060805161 0.0058820476560302627 3.6017154171948263e-019 6.1231280675118825e-017 1
		 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 0 0 0 0 0.94461941885372935 2.5725949148736049e-015
		 -7.3287766291733129e-018 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.70293531288434918 0.71125378445403165 4.3551733525653569e-017 4.3042374046573074e-017 1
		 1 1 yes;
	setAttr -s 6 ".m";
	setAttr -s 6 ".p";
	setAttr ".bp" yes;
createNode animCurveTU -n "joint5_visibility";
	rename -uid "A736E7AC-4800-7667-DD5B-FE9867A6E6D6";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
	setAttr ".kot[0]"  5;
createNode animCurveTL -n "joint5_translateX";
	rename -uid "E5E3236F-49C0-8526-05B1-13B719A5410B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0.74453084260636027;
createNode animCurveTL -n "joint5_translateY";
	rename -uid "944075C5-49F6-ACB6-A3A9-AE8B8D9D1935";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 2.5777972761103402e-016;
createNode animCurveTL -n "joint5_translateZ";
	rename -uid "8E75AC17-4FAA-9E64-28B4-C8AFEE4EC73B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 3.6329878337469136e-018;
createNode animCurveTA -n "joint5_rotateX";
	rename -uid "66544BCD-485F-14D3-312E-F1AA19934AAE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "joint5_rotateY";
	rename -uid "39F8B675-4FDF-21FA-8BF9-839EE1B5491E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTA -n "joint5_rotateZ";
	rename -uid "031D646C-4CEE-8BA0-AF7D-89A7794FE5EF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 0;
createNode animCurveTU -n "joint5_scaleX";
	rename -uid "D9BAD961-4908-E018-8FC5-3BA0DE32DF78";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "joint5_scaleY";
	rename -uid "369EAA00-4048-8ACB-B1F2-F48E7C88937C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTU -n "joint5_scaleZ";
	rename -uid "8D723388-4B7D-50E0-93EA-AEBB9E970C4B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  1 1;
createNode animCurveTA -n "joint1_rotateX";
	rename -uid "2291E57C-4585-7B10-197E-BCBCC17043E3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 30 0 60 0 90 0 120 0;
createNode animCurveTA -n "joint1_rotateY";
	rename -uid "705ED610-4ECF-CCC8-8A01-AC9FA231EB1C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 30 90 60 180 90 270 120 360;
createNode animCurveTA -n "joint1_rotateZ";
	rename -uid "D16D7152-481A-1D80-660B-7C8158CA8158";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 30 0 60 0 90 0 120 0;
createNode animCurveTU -n "joint1_visibility";
	rename -uid "BDC1C792-4098-2C81-6B39-97BF5A96CFC2";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 30 1 60 1 90 1 120 1;
	setAttr -s 5 ".kot[0:4]"  5 5 5 5 5;
createNode animCurveTL -n "joint1_translateX";
	rename -uid "6A8B22E6-45C6-E874-F347-C298269DF144";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 30 0 60 0 90 0 120 0;
createNode animCurveTL -n "joint1_translateY";
	rename -uid "7E87E13D-4117-BF3A-99E7-09926E450438";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0.007279249374329444 30 0.007279249374329444
		 60 0.007279249374329444 90 0.007279249374329444 120 0.007279249374329444;
createNode animCurveTL -n "joint1_translateZ";
	rename -uid "14A04930-4133-6985-66BB-33A8F79CF434";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 30 0 60 0 90 0 120 0;
createNode animCurveTU -n "joint1_scaleX";
	rename -uid "6F9A664D-4C0E-0620-2EB1-479EECCA6F9F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 30 1 60 1 90 1 120 1;
createNode animCurveTU -n "joint1_scaleY";
	rename -uid "31A6C567-4CB9-1F37-0AC1-019CEEA6C68C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 30 1 60 1 90 1 120 1;
createNode animCurveTU -n "joint1_scaleZ";
	rename -uid "96113824-4C48-0854-D1CD-F4BFCA9D0A8B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 30 1 60 1 90 1 120 1;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 4 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr "pCone1_translateX.o" "pCone1.tx" -l on;
connectAttr "pCone1_translateY.o" "pCone1.ty" -l on;
connectAttr "pCone1_translateZ.o" "pCone1.tz" -l on;
connectAttr "pCone1_visibility.o" "pCone1.v";
connectAttr "pCone1_rotateX.o" "pCone1.rx" -l on;
connectAttr "pCone1_rotateY.o" "pCone1.ry" -l on;
connectAttr "pCone1_rotateZ.o" "pCone1.rz" -l on;
connectAttr "pCone1_scaleX.o" "pCone1.sx" -l on;
connectAttr "pCone1_scaleY.o" "pCone1.sy" -l on;
connectAttr "pCone1_scaleZ.o" "pCone1.sz" -l on;
connectAttr "skinCluster1GroupId.id" "pConeShape1.iog.og[0].gid";
connectAttr "skinCluster1Set.mwc" "pConeShape1.iog.og[0].gco";
connectAttr "groupId2.id" "pConeShape1.iog.og[1].gid";
connectAttr "tweakSet1.mwc" "pConeShape1.iog.og[1].gco";
connectAttr "skinCluster1.og[0]" "pConeShape1.i";
connectAttr "tweak1.vl[0].vt[0]" "pConeShape1.twl";
connectAttr "polyCone1.out" "pConeShape1Orig.i";
connectAttr "joint1_scaleX.o" "joint1.sx";
connectAttr "joint1_scaleY.o" "joint1.sy";
connectAttr "joint1_scaleZ.o" "joint1.sz";
connectAttr "joint1_rotateX.o" "joint1.rx";
connectAttr "joint1_rotateY.o" "joint1.ry";
connectAttr "joint1_rotateZ.o" "joint1.rz";
connectAttr "joint1_visibility.o" "joint1.v";
connectAttr "joint1_translateX.o" "joint1.tx";
connectAttr "joint1_translateY.o" "joint1.ty";
connectAttr "joint1_translateZ.o" "joint1.tz";
connectAttr "joint1.s" "joint2.is";
connectAttr "joint2.s" "joint3.is";
connectAttr "joint3.s" "joint4.is";
connectAttr "joint4.s" "joint5.is";
connectAttr "joint5_scaleX.o" "joint5.sx";
connectAttr "joint5_scaleY.o" "joint5.sy";
connectAttr "joint5_scaleZ.o" "joint5.sz";
connectAttr "joint5_visibility.o" "joint5.v";
connectAttr "joint5_translateX.o" "joint5.tx";
connectAttr "joint5_translateY.o" "joint5.ty";
connectAttr "joint5_translateZ.o" "joint5.tz";
connectAttr "joint5_rotateX.o" "joint5.rx";
connectAttr "joint5_rotateY.o" "joint5.ry";
connectAttr "joint5_rotateZ.o" "joint5.rz";
connectAttr "joint5.s" "joint6.is";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "skinCluster1GroupParts.og" "skinCluster1.ip[0].ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1.ip[0].gi";
connectAttr "bindPose1.msg" "skinCluster1.bp";
connectAttr "joint1.wm" "skinCluster1.ma[0]";
connectAttr "joint2.wm" "skinCluster1.ma[1]";
connectAttr "joint3.wm" "skinCluster1.ma[2]";
connectAttr "joint4.wm" "skinCluster1.ma[3]";
connectAttr "joint5.wm" "skinCluster1.ma[4]";
connectAttr "joint6.wm" "skinCluster1.ma[5]";
connectAttr "joint1.liw" "skinCluster1.lw[0]";
connectAttr "joint2.liw" "skinCluster1.lw[1]";
connectAttr "joint3.liw" "skinCluster1.lw[2]";
connectAttr "joint4.liw" "skinCluster1.lw[3]";
connectAttr "joint5.liw" "skinCluster1.lw[4]";
connectAttr "joint6.liw" "skinCluster1.lw[5]";
connectAttr "joint1.obcc" "skinCluster1.ifcl[0]";
connectAttr "joint2.obcc" "skinCluster1.ifcl[1]";
connectAttr "joint3.obcc" "skinCluster1.ifcl[2]";
connectAttr "joint4.obcc" "skinCluster1.ifcl[3]";
connectAttr "joint5.obcc" "skinCluster1.ifcl[4]";
connectAttr "joint6.obcc" "skinCluster1.ifcl[5]";
connectAttr "joint6.msg" "skinCluster1.ptt";
connectAttr "groupParts2.og" "tweak1.ip[0].ig";
connectAttr "groupId2.id" "tweak1.ip[0].gi";
connectAttr "skinCluster1GroupId.msg" "skinCluster1Set.gn" -na;
connectAttr "pConeShape1.iog.og[0]" "skinCluster1Set.dsm" -na;
connectAttr "skinCluster1.msg" "skinCluster1Set.ub[0]";
connectAttr "tweak1.og[0]" "skinCluster1GroupParts.ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1GroupParts.gi";
connectAttr "groupId2.msg" "tweakSet1.gn" -na;
connectAttr "pConeShape1.iog.og[1]" "tweakSet1.dsm" -na;
connectAttr "tweak1.msg" "tweakSet1.ub[0]";
connectAttr "pConeShape1Orig.w" "groupParts2.ig";
connectAttr "groupId2.id" "groupParts2.gi";
connectAttr "joint1.msg" "bindPose1.m[0]";
connectAttr "joint2.msg" "bindPose1.m[1]";
connectAttr "joint3.msg" "bindPose1.m[2]";
connectAttr "joint4.msg" "bindPose1.m[3]";
connectAttr "joint5.msg" "bindPose1.m[4]";
connectAttr "joint6.msg" "bindPose1.m[5]";
connectAttr "bindPose1.w" "bindPose1.p[0]";
connectAttr "bindPose1.m[0]" "bindPose1.p[1]";
connectAttr "bindPose1.m[1]" "bindPose1.p[2]";
connectAttr "bindPose1.m[2]" "bindPose1.p[3]";
connectAttr "bindPose1.m[3]" "bindPose1.p[4]";
connectAttr "bindPose1.m[4]" "bindPose1.p[5]";
connectAttr "joint1.bps" "bindPose1.wm[0]";
connectAttr "joint2.bps" "bindPose1.wm[1]";
connectAttr "joint3.bps" "bindPose1.wm[2]";
connectAttr "joint4.bps" "bindPose1.wm[3]";
connectAttr "joint5.bps" "bindPose1.wm[4]";
connectAttr "joint6.bps" "bindPose1.wm[5]";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "pConeShape1.iog" ":initialShadingGroup.dsm" -na;
// End of circlecone.ma
