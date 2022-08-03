--
-- Generated on 2022-07-27T19:35:43Z. DO NOT EDIT.
--
-- Ranges: {"epic":[2876,4025],"superior":[2501,2875],"uncommon":[751,2500],"common":[200,750]}
--
local _, ns = ...

ns.scoreTiers = {
	[1] = { ["score"] = 4025, ["color"] = { 1.00, 0.50, 0.00 } },		-- |cffff80004025+|r
	[2] = { ["score"] = 3955, ["color"] = { 1.00, 0.49, 0.07 } },		-- |cfffe7e123955+|r
	[3] = { ["score"] = 3930, ["color"] = { 0.99, 0.49, 0.12 } },		-- |cfffd7d1e3930+|r
	[4] = { ["score"] = 3905, ["color"] = { 0.99, 0.48, 0.15 } },		-- |cfffc7b263905+|r
	[5] = { ["score"] = 3880, ["color"] = { 0.98, 0.47, 0.18 } },		-- |cfffb792e3880+|r
	[6] = { ["score"] = 3860, ["color"] = { 0.98, 0.47, 0.20 } },		-- |cfffa78343860+|r
	[7] = { ["score"] = 3835, ["color"] = { 0.98, 0.46, 0.23 } },		-- |cfff9763a3835+|r
	[8] = { ["score"] = 3810, ["color"] = { 0.97, 0.45, 0.25 } },		-- |cfff874403810+|r
	[9] = { ["score"] = 3785, ["color"] = { 0.97, 0.45, 0.27 } },		-- |cfff772453785+|r
	[10] = { ["score"] = 3760, ["color"] = { 0.96, 0.44, 0.29 } },		-- |cfff6714b3760+|r
	[11] = { ["score"] = 3740, ["color"] = { 0.96, 0.44, 0.31 } },		-- |cfff56f503740+|r
	[12] = { ["score"] = 3715, ["color"] = { 0.96, 0.43, 0.33 } },		-- |cfff46d553715+|r
	[13] = { ["score"] = 3690, ["color"] = { 0.95, 0.42, 0.35 } },		-- |cfff36c593690+|r
	[14] = { ["score"] = 3665, ["color"] = { 0.95, 0.42, 0.37 } },		-- |cfff16a5e3665+|r
	[15] = { ["score"] = 3640, ["color"] = { 0.94, 0.41, 0.39 } },		-- |cfff068633640+|r
	[16] = { ["score"] = 3620, ["color"] = { 0.94, 0.40, 0.40 } },		-- |cffef67673620+|r
	[17] = { ["score"] = 3595, ["color"] = { 0.93, 0.40, 0.42 } },		-- |cffee656c3595+|r
	[18] = { ["score"] = 3570, ["color"] = { 0.93, 0.39, 0.44 } },		-- |cffec63703570+|r
	[19] = { ["score"] = 3545, ["color"] = { 0.92, 0.38, 0.46 } },		-- |cffeb61753545+|r
	[20] = { ["score"] = 3520, ["color"] = { 0.91, 0.38, 0.47 } },		-- |cffe960793520+|r
	[21] = { ["score"] = 3500, ["color"] = { 0.91, 0.37, 0.49 } },		-- |cffe85e7e3500+|r
	[22] = { ["score"] = 3475, ["color"] = { 0.90, 0.36, 0.51 } },		-- |cffe65c823475+|r
	[23] = { ["score"] = 3450, ["color"] = { 0.89, 0.36, 0.53 } },		-- |cffe45b863450+|r
	[24] = { ["score"] = 3425, ["color"] = { 0.89, 0.35, 0.55 } },		-- |cffe3598b3425+|r
	[25] = { ["score"] = 3400, ["color"] = { 0.88, 0.34, 0.56 } },		-- |cffe1578f3400+|r
	[26] = { ["score"] = 3380, ["color"] = { 0.87, 0.34, 0.58 } },		-- |cffdf56933380+|r
	[27] = { ["score"] = 3355, ["color"] = { 0.87, 0.33, 0.60 } },		-- |cffdd54983355+|r
	[28] = { ["score"] = 3330, ["color"] = { 0.86, 0.32, 0.61 } },		-- |cffdb529c3330+|r
	[29] = { ["score"] = 3305, ["color"] = { 0.85, 0.32, 0.63 } },		-- |cffd951a03305+|r
	[30] = { ["score"] = 3280, ["color"] = { 0.84, 0.31, 0.64 } },		-- |cffd74fa43280+|r
	[31] = { ["score"] = 3260, ["color"] = { 0.84, 0.30, 0.66 } },		-- |cffd54da93260+|r
	[32] = { ["score"] = 3235, ["color"] = { 0.83, 0.30, 0.68 } },		-- |cffd34cad3235+|r
	[33] = { ["score"] = 3210, ["color"] = { 0.82, 0.29, 0.69 } },		-- |cffd04ab13210+|r
	[34] = { ["score"] = 3185, ["color"] = { 0.81, 0.28, 0.71 } },		-- |cffce48b63185+|r
	[35] = { ["score"] = 3160, ["color"] = { 0.80, 0.28, 0.73 } },		-- |cffcb47ba3160+|r
	[36] = { ["score"] = 3140, ["color"] = { 0.79, 0.27, 0.75 } },		-- |cffc945be3140+|r
	[37] = { ["score"] = 3115, ["color"] = { 0.78, 0.27, 0.76 } },		-- |cffc644c33115+|r
	[38] = { ["score"] = 3090, ["color"] = { 0.76, 0.26, 0.78 } },		-- |cffc342c73090+|r
	[39] = { ["score"] = 3065, ["color"] = { 0.75, 0.25, 0.80 } },		-- |cffc041cb3065+|r
	[40] = { ["score"] = 3040, ["color"] = { 0.74, 0.25, 0.81 } },		-- |cffbd3fcf3040+|r
	[41] = { ["score"] = 3020, ["color"] = { 0.73, 0.24, 0.83 } },		-- |cffba3dd43020+|r
	[42] = { ["score"] = 2995, ["color"] = { 0.71, 0.24, 0.85 } },		-- |cffb63cd82995+|r
	[43] = { ["score"] = 2970, ["color"] = { 0.70, 0.23, 0.87 } },		-- |cffb33bdd2970+|r
	[44] = { ["score"] = 2945, ["color"] = { 0.69, 0.22, 0.88 } },		-- |cffaf39e12945+|r
	[45] = { ["score"] = 2920, ["color"] = { 0.67, 0.22, 0.90 } },		-- |cffab38e52920+|r
	[46] = { ["score"] = 2900, ["color"] = { 0.65, 0.21, 0.92 } },		-- |cffa736ea2900+|r
	[47] = { ["score"] = 2875, ["color"] = { 0.64, 0.21, 0.93 } },		-- |cffa335ee2875+|r
	[48] = { ["score"] = 2835, ["color"] = { 0.62, 0.24, 0.93 } },		-- |cff9d3ced2835+|r
	[49] = { ["score"] = 2810, ["color"] = { 0.59, 0.26, 0.93 } },		-- |cff9742ec2810+|r
	[50] = { ["score"] = 2785, ["color"] = { 0.57, 0.28, 0.92 } },		-- |cff9148eb2785+|r
	[51] = { ["score"] = 2765, ["color"] = { 0.54, 0.30, 0.91 } },		-- |cff8a4de92765+|r
	[52] = { ["score"] = 2740, ["color"] = { 0.51, 0.32, 0.91 } },		-- |cff8351e82740+|r
	[53] = { ["score"] = 2715, ["color"] = { 0.49, 0.33, 0.91 } },		-- |cff7c55e72715+|r
	[54] = { ["score"] = 2690, ["color"] = { 0.46, 0.35, 0.90 } },		-- |cff7559e62690+|r
	[55] = { ["score"] = 2665, ["color"] = { 0.43, 0.36, 0.90 } },		-- |cff6d5de52665+|r
	[56] = { ["score"] = 2645, ["color"] = { 0.40, 0.38, 0.89 } },		-- |cff6560e42645+|r
	[57] = { ["score"] = 2620, ["color"] = { 0.36, 0.39, 0.89 } },		-- |cff5c63e32620+|r
	[58] = { ["score"] = 2595, ["color"] = { 0.32, 0.40, 0.89 } },		-- |cff5266e22595+|r
	[59] = { ["score"] = 2570, ["color"] = { 0.28, 0.41, 0.88 } },		-- |cff4769e02570+|r
	[60] = { ["score"] = 2545, ["color"] = { 0.22, 0.42, 0.87 } },		-- |cff396bdf2545+|r
	[61] = { ["score"] = 2525, ["color"] = { 0.15, 0.43, 0.87 } },		-- |cff276ede2525+|r
	[62] = { ["score"] = 2500, ["color"] = { 0.00, 0.44, 0.87 } },		-- |cff0070dd2500+|r
	[63] = { ["score"] = 2405, ["color"] = { 0.07, 0.45, 0.86 } },		-- |cff1272db2405+|r
	[64] = { ["score"] = 2380, ["color"] = { 0.11, 0.45, 0.85 } },		-- |cff1d74d92380+|r
	[65] = { ["score"] = 2355, ["color"] = { 0.14, 0.46, 0.84 } },		-- |cff2476d72355+|r
	[66] = { ["score"] = 2335, ["color"] = { 0.17, 0.47, 0.84 } },		-- |cff2b78d52335+|r
	[67] = { ["score"] = 2310, ["color"] = { 0.19, 0.48, 0.83 } },		-- |cff307ad32310+|r
	[68] = { ["score"] = 2285, ["color"] = { 0.20, 0.49, 0.82 } },		-- |cff347cd12285+|r
	[69] = { ["score"] = 2260, ["color"] = { 0.22, 0.49, 0.81 } },		-- |cff387ecf2260+|r
	[70] = { ["score"] = 2235, ["color"] = { 0.24, 0.50, 0.80 } },		-- |cff3c80cd2235+|r
	[71] = { ["score"] = 2215, ["color"] = { 0.25, 0.51, 0.79 } },		-- |cff3f82ca2215+|r
	[72] = { ["score"] = 2190, ["color"] = { 0.26, 0.51, 0.78 } },		-- |cff4283c82190+|r
	[73] = { ["score"] = 2165, ["color"] = { 0.27, 0.52, 0.78 } },		-- |cff4585c62165+|r
	[74] = { ["score"] = 2140, ["color"] = { 0.28, 0.53, 0.77 } },		-- |cff4787c42140+|r
	[75] = { ["score"] = 2115, ["color"] = { 0.29, 0.54, 0.76 } },		-- |cff4989c22115+|r
	[76] = { ["score"] = 2095, ["color"] = { 0.29, 0.55, 0.75 } },		-- |cff4b8bc02095+|r
	[77] = { ["score"] = 2070, ["color"] = { 0.30, 0.55, 0.75 } },		-- |cff4d8dbe2070+|r
	[78] = { ["score"] = 2045, ["color"] = { 0.31, 0.56, 0.74 } },		-- |cff4f8fbc2045+|r
	[79] = { ["score"] = 2020, ["color"] = { 0.32, 0.57, 0.73 } },		-- |cff5191ba2020+|r
	[80] = { ["score"] = 1995, ["color"] = { 0.33, 0.58, 0.72 } },		-- |cff5393b81995+|r
	[81] = { ["score"] = 1975, ["color"] = { 0.33, 0.58, 0.71 } },		-- |cff5495b51975+|r
	[82] = { ["score"] = 1950, ["color"] = { 0.33, 0.59, 0.70 } },		-- |cff5597b31950+|r
	[83] = { ["score"] = 1925, ["color"] = { 0.34, 0.60, 0.69 } },		-- |cff5799b11925+|r
	[84] = { ["score"] = 1900, ["color"] = { 0.35, 0.61, 0.69 } },		-- |cff589baf1900+|r
	[85] = { ["score"] = 1875, ["color"] = { 0.35, 0.62, 0.68 } },		-- |cff599dad1875+|r
	[86] = { ["score"] = 1855, ["color"] = { 0.35, 0.62, 0.67 } },		-- |cff5a9fab1855+|r
	[87] = { ["score"] = 1830, ["color"] = { 0.36, 0.63, 0.66 } },		-- |cff5ba1a81830+|r
	[88] = { ["score"] = 1805, ["color"] = { 0.36, 0.64, 0.65 } },		-- |cff5ba3a61805+|r
	[89] = { ["score"] = 1780, ["color"] = { 0.36, 0.65, 0.64 } },		-- |cff5ca5a41780+|r
	[90] = { ["score"] = 1755, ["color"] = { 0.36, 0.66, 0.64 } },		-- |cff5da8a21755+|r
	[91] = { ["score"] = 1735, ["color"] = { 0.36, 0.67, 0.63 } },		-- |cff5daaa01735+|r
	[92] = { ["score"] = 1710, ["color"] = { 0.37, 0.67, 0.62 } },		-- |cff5eac9d1710+|r
	[93] = { ["score"] = 1685, ["color"] = { 0.37, 0.68, 0.61 } },		-- |cff5eae9b1685+|r
	[94] = { ["score"] = 1660, ["color"] = { 0.37, 0.69, 0.60 } },		-- |cff5fb0991660+|r
	[95] = { ["score"] = 1635, ["color"] = { 0.37, 0.70, 0.59 } },		-- |cff5fb2971635+|r
	[96] = { ["score"] = 1615, ["color"] = { 0.37, 0.71, 0.58 } },		-- |cff5fb4941615+|r
	[97] = { ["score"] = 1590, ["color"] = { 0.37, 0.71, 0.57 } },		-- |cff5fb6921590+|r
	[98] = { ["score"] = 1565, ["color"] = { 0.37, 0.72, 0.56 } },		-- |cff5fb8901565+|r
	[99] = { ["score"] = 1540, ["color"] = { 0.37, 0.73, 0.55 } },		-- |cff5fba8d1540+|r
	[100] = { ["score"] = 1515, ["color"] = { 0.37, 0.74, 0.55 } },		-- |cff5fbc8b1515+|r
	[101] = { ["score"] = 1495, ["color"] = { 0.37, 0.75, 0.53 } },		-- |cff5fbe881495+|r
	[102] = { ["score"] = 1470, ["color"] = { 0.37, 0.75, 0.53 } },		-- |cff5fc0861470+|r
	[103] = { ["score"] = 1445, ["color"] = { 0.37, 0.76, 0.52 } },		-- |cff5fc2841445+|r
	[104] = { ["score"] = 1420, ["color"] = { 0.37, 0.77, 0.51 } },		-- |cff5ec4811420+|r
	[105] = { ["score"] = 1395, ["color"] = { 0.37, 0.78, 0.49 } },		-- |cff5ec67e1395+|r
	[106] = { ["score"] = 1375, ["color"] = { 0.36, 0.78, 0.49 } },		-- |cff5dc87c1375+|r
	[107] = { ["score"] = 1350, ["color"] = { 0.36, 0.79, 0.47 } },		-- |cff5dca791350+|r
	[108] = { ["score"] = 1325, ["color"] = { 0.36, 0.80, 0.47 } },		-- |cff5ccc771325+|r
	[109] = { ["score"] = 1300, ["color"] = { 0.36, 0.81, 0.45 } },		-- |cff5bcf741300+|r
	[110] = { ["score"] = 1275, ["color"] = { 0.36, 0.82, 0.44 } },		-- |cff5bd1711275+|r
	[111] = { ["score"] = 1255, ["color"] = { 0.35, 0.83, 0.44 } },		-- |cff5ad36f1255+|r
	[112] = { ["score"] = 1230, ["color"] = { 0.35, 0.84, 0.42 } },		-- |cff59d56c1230+|r
	[113] = { ["score"] = 1205, ["color"] = { 0.35, 0.84, 0.41 } },		-- |cff58d7691205+|r
	[114] = { ["score"] = 1180, ["color"] = { 0.34, 0.85, 0.40 } },		-- |cff56d9661180+|r
	[115] = { ["score"] = 1155, ["color"] = { 0.33, 0.86, 0.39 } },		-- |cff55db631155+|r
	[116] = { ["score"] = 1135, ["color"] = { 0.33, 0.87, 0.38 } },		-- |cff54dd601135+|r
	[117] = { ["score"] = 1110, ["color"] = { 0.32, 0.87, 0.36 } },		-- |cff52df5d1110+|r
	[118] = { ["score"] = 1085, ["color"] = { 0.31, 0.88, 0.35 } },		-- |cff50e1591085+|r
	[119] = { ["score"] = 1060, ["color"] = { 0.31, 0.89, 0.34 } },		-- |cff4fe3561060+|r
	[120] = { ["score"] = 1035, ["color"] = { 0.30, 0.90, 0.32 } },		-- |cff4de6521035+|r
	[121] = { ["score"] = 1015, ["color"] = { 0.29, 0.91, 0.31 } },		-- |cff4be84f1015+|r
	[122] = { ["score"] = 990, ["color"] = { 0.28, 0.92, 0.29 } },		-- |cff48ea4b990+|r
	[123] = { ["score"] = 965, ["color"] = { 0.27, 0.93, 0.28 } },		-- |cff46ec47965+|r
	[124] = { ["score"] = 940, ["color"] = { 0.26, 0.93, 0.26 } },		-- |cff43ee43940+|r
	[125] = { ["score"] = 915, ["color"] = { 0.25, 0.94, 0.24 } },		-- |cff40f03e915+|r
	[126] = { ["score"] = 895, ["color"] = { 0.24, 0.95, 0.22 } },		-- |cff3df239895+|r
	[127] = { ["score"] = 870, ["color"] = { 0.22, 0.96, 0.20 } },		-- |cff39f434870+|r
	[128] = { ["score"] = 845, ["color"] = { 0.21, 0.96, 0.18 } },		-- |cff35f62e845+|r
	[129] = { ["score"] = 820, ["color"] = { 0.19, 0.98, 0.15 } },		-- |cff31f927820+|r
	[130] = { ["score"] = 795, ["color"] = { 0.17, 0.98, 0.12 } },		-- |cff2cfb1f795+|r
	[131] = { ["score"] = 775, ["color"] = { 0.15, 0.99, 0.07 } },		-- |cff26fd13775+|r
	[132] = { ["score"] = 750, ["color"] = { 0.12, 1.00, 0.00 } },		-- |cff1eff00750+|r
	[133] = { ["score"] = 725, ["color"] = { 0.24, 1.00, 0.15 } },		-- |cff3eff25725+|r
	[134] = { ["score"] = 700, ["color"] = { 0.32, 1.00, 0.22 } },		-- |cff52ff37700+|r
	[135] = { ["score"] = 675, ["color"] = { 0.38, 1.00, 0.27 } },		-- |cff61ff46675+|r
	[136] = { ["score"] = 650, ["color"] = { 0.44, 1.00, 0.33 } },		-- |cff6fff53650+|r
	[137] = { ["score"] = 625, ["color"] = { 0.48, 1.00, 0.37 } },		-- |cff7bff5e625+|r
	[138] = { ["score"] = 600, ["color"] = { 0.53, 1.00, 0.41 } },		-- |cff86ff69600+|r
	[139] = { ["score"] = 575, ["color"] = { 0.56, 1.00, 0.45 } },		-- |cff90ff74575+|r
	[140] = { ["score"] = 550, ["color"] = { 0.60, 1.00, 0.49 } },		-- |cff99ff7e550+|r
	[141] = { ["score"] = 525, ["color"] = { 0.64, 1.00, 0.53 } },		-- |cffa2ff87525+|r
	[142] = { ["score"] = 500, ["color"] = { 0.67, 1.00, 0.57 } },		-- |cffabff91500+|r
	[143] = { ["score"] = 475, ["color"] = { 0.70, 1.00, 0.61 } },		-- |cffb3ff9b475+|r
	[144] = { ["score"] = 450, ["color"] = { 0.73, 1.00, 0.64 } },		-- |cffbbffa4450+|r
	[145] = { ["score"] = 425, ["color"] = { 0.76, 1.00, 0.68 } },		-- |cffc2ffad425+|r
	[146] = { ["score"] = 400, ["color"] = { 0.79, 1.00, 0.71 } },		-- |cffcaffb6400+|r
	[147] = { ["score"] = 375, ["color"] = { 0.82, 1.00, 0.75 } },		-- |cffd1ffbf375+|r
	[148] = { ["score"] = 350, ["color"] = { 0.85, 1.00, 0.79 } },		-- |cffd8ffc9350+|r
	[149] = { ["score"] = 325, ["color"] = { 0.87, 1.00, 0.82 } },		-- |cffdfffd2325+|r
	[150] = { ["score"] = 300, ["color"] = { 0.90, 1.00, 0.86 } },		-- |cffe6ffdb300+|r
	[151] = { ["score"] = 275, ["color"] = { 0.93, 1.00, 0.89 } },		-- |cffecffe4275+|r
	[152] = { ["score"] = 250, ["color"] = { 0.95, 1.00, 0.93 } },		-- |cfff3ffed250+|r
	[153] = { ["score"] = 225, ["color"] = { 0.98, 1.00, 0.96 } },		-- |cfff9fff6225+|r
	[154] = { ["score"] = 200, ["color"] = { 1.00, 1.00, 1.00 } },		-- |cffffffff200+|r
}

ns.scoreTiersSimple = {
	[1] = { ["score"] = 2200, ["quality"] = 6 },
	[2] = { ["score"] = 1800, ["quality"] = 5 },
	[3] = { ["score"] = 1500, ["quality"] = 4 },
	[4] = { ["score"] = 1000, ["quality"] = 3 },
	[5] = { ["score"] = 0, ["quality"] = 2 }
}
