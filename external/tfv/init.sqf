waitUntil {!isNil "dayz_animalCheck"};
sleep 1;

/*    *******************************************************************************************************************************************   */
/*    Turn debugging functionality on or off.                                                                                                       */
/*    *******************************************************************************************************************************************   */
tfv_DEBUGGING = false;

/*    *******************************************************************************************************************************************   */
/*    How many weapons will be sold per cycle.                                                                                                      */
/*    *******************************************************************************************************************************************   */
tfv_SALES_PER_ANIM = 5;

/*    *******************************************************************************************************************************************   */
/*    How many magazines will be sold per cycle.                                                                                                      */
/*    *******************************************************************************************************************************************   */
tfv_SALES_PER_ANIM_MAGS = 10;

/*    *******************************************************************************************************************************************   */
/*    A list of each trader, along with the weapons they accept.                                                                                    */
/*    *******************************************************************************************************************************************   */

tfv_TRADERS_ITEMS = [
/*		Hero Trader */
		["Functionary1",["100Rnd_762x51_M240","20Rnd_762x51_FNFAL","20Rnd_762x51_SB_SCAR","20Rnd_9x39_SP5_VSS","30Rnd_556x45_StanagSD","AKS_74_UN_kobra","BAF_LRR_scoped","FN_FAL_ANPVS4","G36_C_SD_camo","G36_C_SD_eotech","M4A1_AIM_SD_camo","M4A1_HWS_GL_SD_Camo","m8_holo_sd","Mk_48_DZ","SCAR_H_CQC_CCO_SD","SCAR_H_LNG_Sniper_SD","SCAR_L_CQC_CCO_SD","VSS_vintorez"],["weapons","magazines"],5000],
/*		Weapons - Khush */
		["RU_Profiteer3",["AKS_74_kobra","AKS_74_U","AK_107_GL_kobra","AK_107_kobra","AK_107_pso","AK_47_M","AK_74","BAF_L85A2_RIS_ACOG","BAF_L85A2_RIS_Holo","BAF_L85A2_RIS_SUSAT","BAF_L85A2_UGL_ACOG","BAF_L85A2_UGL_Holo","BAF_L85A2_UGL_SUSAT","BAF_L86A2_ACOG","bizon","bizon_silenced","Colt1911","Crossbow_DZ","DMR_DZ","FN_FAL","G36C","G36K","glock17_EP1","huntingrifle","LeeEnfield","M1014","M14_EP1","M16A2","M16A2GL","M16A4_ACG","M24","M240_DZ","M249_EP1_DZ","M4A1","M4A1_Aim","M4A3_CCO_EP1","M4A3_RCO_GL_EP1","M4SPR","M60A4_EP1_DZE","M9","M9SD","Makarov","MakarovSD","MG36","MP5A5","MP5SD","MR43","Remington870_lamp","revolver_EP1","revolver_gold_EP1","RPK_74","Sa58P_EP1","Sa58V_CCO_EP1","Sa58V_EP1","Sa58V_RCO_EP1","Sa61_EP1","Saiga12K","SCAR_H_CQC_CCO","SCAR_H_LNG_SNIPER","SCAR_L_CQC","SCAR_L_CQC_EGLM_Holo","SCAR_L_CQC_Holo","SCAR_L_STD_Mk4CQT","SVD","UZI_EP1","UZI_SD_EP1","Winchester1866"],["weapons"],2500],
/*		Ammo - Khush */
		["Profiteer1",["100Rnd_762x51_M240","100Rnd_762x54_PK","10Rnd_762x54_SVD","10x_303","15Rnd_9x19_M9","15Rnd_9x19_M9SD","15Rnd_W1866_Slug","17Rnd_9x19_glock17","200Rnd_556x45_M249","20Rnd_762x51_DMR","20Rnd_762x51_FNFAL","20Rnd_B_765x17_Ball","2Rnd_shotgun_74Pellets","2Rnd_shotgun_74Slug","30Rnd_545x39_AK","30Rnd_556x45_Stanag","30Rnd_762x39_AK47","30Rnd_762x39_SA58","30rnd_9x19_MP5","30Rnd_9x19_MP5SD","30Rnd_9x19_UZI","30Rnd_9x19_UZI_SD","5Rnd_762x51_M24","5x_22_LR_17_HMR","64Rnd_9x19_SD_Bizon","6Rnd_45ACP","7Rnd_45ACP_1911","8Rnd_9x18_Makarov","8Rnd_9x18_MakarovSD","8Rnd_B_Beneli_74Slug","8Rnd_B_Beneli_Pellets","Quiver"],["magazines"],2500],
/*		Weapons Trader - Nur */
		["TK_CIV_Takistani06_EP1",["AKS_74_kobra","AKS_74_U","AK_107_GL_kobra","AK_107_kobra","AK_107_pso","AK_47_M","AK_74","BAF_L85A2_RIS_ACOG","BAF_L85A2_RIS_Holo","BAF_L85A2_RIS_SUSAT","BAF_L85A2_UGL_ACOG","BAF_L85A2_UGL_Holo","BAF_L85A2_UGL_SUSAT","BAF_L86A2_ACOG","bizon","bizon_silenced","Colt1911","Crossbow_DZ","DMR_DZ","FN_FAL","G36C","G36K","glock17_EP1","huntingrifle","LeeEnfield","M1014","M14_EP1","M16A2","M16A2GL","M16A4_ACG","M24","M240_DZ","M249_EP1_DZ","M4A1","M4A1_Aim","M4A3_CCO_EP1","M4A3_RCO_GL_EP1","M4SPR","M60A4_EP1_DZE","M9","M9SD","Makarov","MakarovSD","MG36","MP5A5","MP5SD","MR43","Remington870_lamp","revolver_EP1","revolver_gold_EP1","RPK_74","Sa58P_EP1","Sa58V_CCO_EP1","Sa58V_EP1","Sa58V_RCO_EP1","Sa61_EP1","Saiga12K","SCAR_H_CQC_CCO","SCAR_H_LNG_SNIPER","SCAR_L_CQC","SCAR_L_CQC_EGLM_Holo","SCAR_L_CQC_Holo","SCAR_L_STD_Mk4CQT","SVD","UZI_EP1","UZI_SD_EP1","Winchester1866"],["weapons"],0],
/*		Ammo Trader - Nur */
		["TK_CIV_Takistani04_EP1",["100Rnd_762x51_M240","100Rnd_762x54_PK","10Rnd_762x54_SVD","10x_303","15Rnd_9x19_M9","15Rnd_9x19_M9SD","15Rnd_W1866_Slug","17Rnd_9x19_glock17","200Rnd_556x45_M249","20Rnd_762x51_DMR","20Rnd_762x51_FNFAL","20Rnd_B_765x17_Ball","2Rnd_shotgun_74Pellets","2Rnd_shotgun_74Slug","30Rnd_545x39_AK","30Rnd_556x45_Stanag","30Rnd_762x39_AK47","30Rnd_762x39_SA58","30rnd_9x19_MP5","30Rnd_9x19_MP5SD","30Rnd_9x19_UZI","30Rnd_9x19_UZI_SD","5Rnd_762x51_M24","5x_22_LR_17_HMR","64Rnd_9x19_SD_Bizon","6Rnd_45ACP","7Rnd_45ACP_1911","8Rnd_9x18_Makarov","8Rnd_9x18_MakarovSD","8Rnd_B_Beneli_74Slug","8Rnd_B_Beneli_Pellets","Quiver"],["magazines"],0],
/*		Black Market Vendor - South Airport */
		["Soldier_MG_PKM_PMC",["100Rnd_556x45_BetaCMag","10Rnd_762x54_SVD","1Rnd_HE_M203","20Rnd_762x51_FNFAL","20Rnd_B_765x17_Ball","30Rnd_556x45_Stanag","5Rnd_127x108_KSVK","5Rnd_762x51_M24","5Rnd_86x70_L115A1","AKS_GOLD","G36A_camo","G36C_camo","G36K_camo","HandGrenade_east","HandGrenade_west","KSVK_DZE","m240_scoped_EP1_DZE","M249_m145_EP1_DZE","M24_des_EP1","M40A3","M4A1_HWS_GL_camo","m8_carbine","m8_carbineGL","m8_carbine_pmc","m8_compact","M8_SAW","m8_sharpshooter","MAAWS","MG36_camo","Pecheneg_DZ","PipeBomb","RPG18","RPG7V","SVD_CAMO","SVD_des_EP1"],["weapons","magazines"],0],
/*		Apu Nahasapeemapetilon Bandit Trader */
		["TK_GUE_Soldier_Sniper_EP1",["100Rnd_762x51_M240","20Rnd_762x51_FNFAL","20Rnd_762x51_SB_SCAR","20Rnd_9x39_SP5_VSS","30Rnd_556x45_StanagSD","AKS_74_UN_kobra","BAF_LRR_scoped","FN_FAL_ANPVS4","G36_C_SD_camo","G36_C_SD_eotech","M4A1_AIM_SD_camo","M4A1_HWS_GL_SD_Camo","m8_holo_sd","Mk_48_DZ","SCAR_H_CQC_CCO_SD","SCAR_H_LNG_Sniper_SD","SCAR_L_CQC_CCO_SD","VSS_vintorez"],["weapons","magazines"],-2500]
]; if (tfv_DEBUGGING) then { diag_log "tfv - Traders and their weapons loaded in!"; };

/*    *******************************************************************************************************************************************   */
/*    List of ALL weapons, regardless of trader, along with the prices.                                                                             */
/*    *******************************************************************************************************************************************   */

tfv_TRADERS_PRICES = [
["100Rnd_556x45_BetaCMag",30],
["100Rnd_762x51_M240",100],
["100Rnd_762x54_PK",100],
["10Rnd_762x54_SVD",10],
["10x_303",1],
["15Rnd_9x19_M9",5],
["15Rnd_9x19_M9SD",10],
["15Rnd_W1866_Slug",1],
["17Rnd_9x19_glock17",5],
["1Rnd_HE_M203",200],
["200Rnd_556x45_M249",200],
["20Rnd_762x51_DMR",10],
["20Rnd_762x51_FNFAL",20],
["20Rnd_762x51_SB_SCAR",50],
["20Rnd_9x39_SP5_VSS",100],
["20Rnd_B_765x17_Ball",10],
["2Rnd_shotgun_74Pellets",1],
["2Rnd_shotgun_74Slug",1],
["30m_plot_kit",6000],
["30Rnd_545x39_AK",1],
["30Rnd_556x45_Stanag",2],
["30Rnd_556x45_StanagSD",20],
["30Rnd_762x39_AK47",1],
["30Rnd_762x39_SA58",1],
["30rnd_9x19_MP5",10],
["30Rnd_9x19_MP5SD",20],
["30Rnd_9x19_UZI",10],
["30Rnd_9x19_UZI_SD",10],
["5Rnd_127x108_KSVK",10],
["5Rnd_762x51_M24",5],
["5Rnd_86x70_L115A1",200],
["5x_22_LR_17_HMR",50],
["64Rnd_9x19_Bizon",5],
["64Rnd_9x19_SD_Bizon",10],
["6Rnd_45ACP",1],
["75Rnd_545x39_RPK",10],
["7Rnd_45ACP_1911",1],
["8Rnd_9x18_Makarov",1],
["8Rnd_9x18_MakarovSD",10],
["8Rnd_B_Beneli_74Slug",1],
["8Rnd_B_Beneli_Pellets",1],
["8Rnd_B_Saiga12_74Slug",3],
["8Rnd_B_Saiga12_Pellets",3],
["AKS_74_kobra",200],
["AKS_74_U",100],
["AKS_74_UN_kobra",400],
["AKS_GOLD",600],
["AK_107_GL_kobra",600],
["AK_107_kobra",200],
["AK_107_pso",300],
["AK_47_M",600],
["AK_74",100],
["BAF_L85A2_RIS_ACOG",600],
["BAF_L85A2_RIS_Holo",300],
["BAF_L85A2_RIS_SUSAT",300],
["BAF_L85A2_UGL_ACOG",600],
["BAF_L85A2_UGL_Holo",300],
["BAF_L85A2_UGL_SUSAT",300],
["BAF_L86A2_ACOG",600],
["BAF_LRR_scoped",1000],
["Binocular",1],
["Binocular_Vector",100],
["bizon",500],
["bizon_silenced",500],
["bulk_15Rnd_9x19_M9SD",200],
["bulk_17Rnd_9x19_glock17",200],
["bulk_30Rnd_556x45_StanagSD",200],
["bulk_30Rnd_9x19_MP5SD",200],
["bulk_ItemSandbag",2000],
["bulk_ItemTankTrap",100],
["bulk_ItemWire",30],
["bulk_PartGeneric",60],
["CinderBlocks",500],
["Colt1911",10],
["Crossbow_DZ",5],
["DMR_DZ",600],
["FlareGreen_M203",1],
["FlareWhite_M203",1],
["FN_FAL",500],
["FN_FAL_ANPVS4",1000],
["FoodbaconCooked",2],
["FoodbeefCooked",2],
["FoodCanBakedBeans",1],
["FoodCanFrankBeans",1],
["FoodCanPasta",1],
["FoodCanSardines",1],
["FoodchickenCooked",2],
["FoodMRE",5],
["FoodmuttonCooked",2],
["FoodNutmix",1],
["FoodPistachio",1],
["FoodrabbitCooked",10],
["G36A_camo",300],
["G36C",200],
["G36C_camo",300],
["G36K",200],
["G36K_camo",300],
["G36_C_SD_camo",500],
["G36_C_SD_eotech",500],
["glock17_EP1",50],
["HandChemBlue",1],
["HandChemGreen",1],
["HandChemRed",1],
["HandGrenade_east",200],
["HandGrenade_west",200],
["HandRoadFlare",1],
["huntingrifle",100],
["ItemAntibiotic",20],
["ItemBandage",1],
["ItemBloodbag",1],
["ItemCompass",3],
["ItemCorrugated",100],
["ItemCrowbar",1],
["ItemEpinephrine",1],
["ItemEtool",60],
["ItemFishingPole",10],
["ItemFlashlight",1],
["ItemFlashlightRed",5],
["ItemFuelBarrel",100],
["ItemFuelBarrelEmpty",30],
["ItemGenerator",300],
["ItemGPS",100],
["ItemHatchet_DZE",1],
["ItemHeatPack",1],
["ItemJerrycan",2],
["ItemJerrycanEmpty",1],
["ItemKnife",1],
["ItemLightBulb",10],
["ItemMachete",1],
["ItemMap",3],
["ItemMatchbox_DZE",1],
["ItemMorphine",1],
["ItemPainkiller",1],
["ItemPole",5],
["ItemSandbag",200],
["ItemSeaBassCooked",20],
["ItemSodaCoke",1],
["ItemSodaMdew",300],
["ItemSodaOrangeSherbet",200],
["ItemSodaPepsi",1],
["ItemSodaR4z0r",300],
["ItemSodaRbull",300],
["ItemTankTrap",10],
["ItemTentDomed",30],
["ItemTentDomed2",30],
["ItemTentOld",20],
["ItemToolbox",1],
["ItemTroutCooked",10],
["ItemTunaCooked",100],
["ItemWatch",1],
["ItemWaterbottleUnfilled",1],
["ItemWire",3],
["KSVK_DZE",1000],
["LeeEnfield",10],
["M1014",200],
["M14_EP1",1000],
["M16A2",100],
["M16A2GL",200],
["M16A4_ACG",200],
["M24",600],
["M240_DZ",500],
["m240_scoped_EP1_DZE",600],
["M249_EP1_DZ",600],
["M249_m145_EP1_DZE",600],
["M24_des_EP1",600],
["M40A3",600],
["M4A1",200],
["M4A1_Aim",400],
["M4A1_AIM_SD_camo",500],
["M4A1_HWS_GL_camo",400],
["M4A1_HWS_GL_SD_Camo",500],
["M4A3_CCO_EP1",500],
["M4A3_RCO_GL_EP1",500],
["M4SPR",600],
["M60A4_EP1_DZE",1000],
["m8_carbine",200],
["m8_carbineGL",400],
["m8_carbine_pmc",300],
["m8_compact",200],
["m8_holo_sd",400],
["M8_SAW",600],
["m8_sharpshooter",300],
["M9",20],
["M9SD",100],
["MAAWS",1000],
["Makarov",10],
["MakarovSD",100],
["MG36",600],
["MG36_camo",600],
["Mk_48_DZ",600],
["MortarBucket",500],
["MP5A5",20],
["MP5SD",300],
["MR43",8],
["NVGoggles",100],
["PartEngine",10],
["PartFueltank",5],
["PartGeneric",6],
["PartGlass",1],
["PartPlankPack",5],
["PartPlywoodPack",10],
["PartVRotor",10],
["PartWheel",2],
["Pecheneg_DZ",1000],
["PipeBomb",2000],
["Quiver",1],
["Remington870_lamp",100],
["revolver_EP1",10],
["revolver_gold_EP1",200],
["RPG18",1000],
["RPG7V",1000],
["RPK_74",600],
["Sa58P_EP1",100],
["Sa58V_CCO_EP1",400],
["Sa58V_EP1",100],
["Sa58V_RCO_EP1",400],
["Sa61_EP1",50],
["Saiga12K",300],
["SCAR_H_CQC_CCO",400],
["SCAR_H_CQC_CCO_SD",1000],
["SCAR_H_LNG_SNIPER",600],
["SCAR_H_LNG_Sniper_SD",1000],
["SCAR_L_CQC",200],
["SCAR_L_CQC_CCO_SD",500],
["SCAR_L_CQC_EGLM_Holo",600],
["SCAR_L_CQC_Holo",300],
["SCAR_L_STD_Mk4CQT",400],
["Skin_Bandit1_DZ",100],
["Skin_Bandit2_DZ",100],
["Skin_BanditW1_DZ",100],
["Skin_BanditW2_DZ",100],
["Skin_Camo1_DZ",100],
["Skin_CZ_Soldier_Sniper_EP1_DZ",100],
["Skin_CZ_Special_Forces_GL_DES_EP1_DZ",100],
["Skin_Drake_Light_DZ",100],
["Skin_FR_OHara_DZ",100],
["Skin_FR_Rodriguez_DZ",100],
["Skin_Functionary1_EP1_DZ",100],
["Skin_Graves_Light_DZ",100],
["Skin_GUE_Commander_DZ",100],
["Skin_GUE_Soldier_2_DZ",100],
["Skin_GUE_Soldier_CO_DZ",100],
["Skin_GUE_Soldier_Crew_DZ",100],
["Skin_GUE_Soldier_Sniper_DZ",100],
["Skin_Haris_Press_EP1_DZ",100],
["Skin_Ins_Soldier_GL_DZ",100],
["Skin_Pilot_EP1_DZ",100],
["Skin_Priest_DZ",100],
["Skin_Rocker1_DZ",100],
["Skin_Rocker2_DZ",100],
["Skin_Rocker3_DZ",100],
["Skin_Rocker4_DZ",100],
["Skin_Rocket_DZ",100],
["Skin_RU_Policeman_DZ",100],
["Skin_Sniper1_DZ",100],
["Skin_Soldier1_DZ",100],
["Skin_Soldier_Bodyguard_AA12_PMC_DZ",100],
["Skin_Soldier_Sniper_PMC_DZ",100],
["Skin_Soldier_TL_PMC_DZ",100],
["Skin_Survivor2_DZ",100],
["Skin_SurvivorW2_DZ",100],
["Skin_SurvivorW3_DZ",100],
["Skin_SurvivorWcombat_DZ",100],
["Skin_SurvivorWdesert_DZ",100],
["Skin_SurvivorWpink_DZ",100],
["Skin_SurvivorWurban_DZ",100],
["Skin_TK_INS_Soldier_EP1_DZ",100],
["Skin_TK_INS_Warlord_EP1_DZ",100],
["SmokeShell",1],
["SmokeShellGreen",1],
["SmokeShellRed",1],
["SVD",600],
["SVD_CAMO",600],
["SVD_des_EP1",600],
["UZI_EP1",200],
["UZI_SD_EP1",500],
["VSS_vintorez",2000],
["Winchester1866",10],
["WoodenArrow",1]
]; 

if (tfv_DEBUGGING) then { { diag_log format ["tfv - Price loaded - %1",_x]; } forEach tfv_TRADERS_PRICES; };

/*    *******************************************************************************************************************************************   */
/*    Anything below this line was not intended to be modified.                                                                                     */
/*    *******************************************************************************************************************************************   */

tfv_TRADERS = [];
{ tfv_TRADERS set [(count tfv_TRADERS),(_x select 0)]; } forEach tfv_TRADERS_ITEMS;
tfv_TRADERS_TYPES = [];
{ tfv_TRADERS_TYPES set [(count tfv_TRADERS_TYPES),(_x select 2)]; } forEach tfv_TRADERS_ITEMS;
if (tfv_DEBUGGING) then { { diag_log format ["tfv - Trader loaded - %1",_x]; } forEach tfv_TRADERS; };
tfv_SALE_SUCCESS_STRING = "Sold %1 weapons from your vehicle";
tfv_SALE_SUCCESS_STRING_MAGS = "Sold %1 items from your vehicle";
tfv_PREP_FOR_TRADE = "Starting trade in %1 seconds, move to cancel";
tfv_CANCELLED_TRADE = "Trade cancelled";
tfv_STARTING_TRADE = "Starting trade";
tfv_TRADE_STEPS = "Trading, stage %1 of %2";
tfv_TRADE_CANCELLED_END = "Trade cancelled\nMake sure your vehicle is empty and isn't moving";
tfv_SIDENOTE = "You were paid an %1";
tfv_VEHICLE_CONFIRM = "Trading from %1";
tfv_NO_WEAPONS = "There is no weapons inside your vehicle (%1)";
tfv_NO_MAGAZINES = "There is no items inside your vehicle (%1)";
tfv_ACTION_INDEX = -1;
tfv_ACTION = 0;
tfv_ACTION_INDEX_MAGS = -1;
tfv_ACTION_MAGS = 0;
tfv_IS_TRADING = false;
tfv_EXCHANGE = [
	["ItemBriefcase100oz",10000],
	["ItemBriefcase90oz",9000],
	["ItemBriefcase80oz",8000],
	["ItemBriefcase70oz",7000],
	["ItemBriefcase60oz",6000],
	["ItemBriefcase50oz",5000],
	["ItemBriefcase40oz",4000],
	["ItemBriefcase30oz",3000],
	["ItemBriefcase20oz",2000],
	["ItemGoldBar10oz",1000],
	["ItemGoldBar9oz",900],
	["ItemGoldBar8oz",800],
	["ItemGoldBar7oz",700],
	["ItemGoldBar6oz",600],
	["ItemGoldBar5oz",500],
	["ItemGoldBar4oz",400],
	["ItemGoldBar3oz",300],
	["ItemGoldBar2oz",200],
	["ItemGoldBar",100],
	["ItemBriefcaseS90oz",90],
	["ItemBriefcaseS80oz",80],
	["ItemBriefcaseS70oz",70],
	["ItemBriefcaseS60oz",60],
	["ItemBriefcaseS50oz",50],
	["ItemBriefcaseS40oz",40],
	["ItemBriefcaseS30oz",30],
	["ItemBriefcaseS20oz",20],
	["ItemSilverBar10oz",10],
	["ItemSilverBar9oz",9],
	["ItemSilverBar8oz",8],
	["ItemSilverBar7oz",7],
	["ItemSilverBar6oz",6],
	["ItemSilverBar5oz",5],
	["ItemSilverBar4oz",4],
	["ItemSilverBar3oz",3],
	["ItemSilverBar2oz",2],
    ["ItemSilverBar",1]
]; 
if (tfv_DEBUGGING) then { { diag_log format ["tfv - Exchange loaded - %1",_x]; } forEach tfv_EXCHANGE; };

/*    *******************************************************************************************************************************************   */
/*    Functions.                                                                                                                                    */
/*    *******************************************************************************************************************************************   */

tfv_fnc_aConcat =        compile preprocessFileLineNumbers "external\tfv\functions\fnc_aConcat.sqf";
tfv_fnc_checkTrade =     compile preprocessFileLineNumbers "external\tfv\functions\fnc_checkTrade.sqf";
tfv_fnc_Convert =        compile preprocessFileLineNumbers "external\tfv\functions\fnc_Convert.sqf";
tfv_fnc_findPrices =     compile preprocessFileLineNumbers "external\tfv\functions\fnc_findPrices.sqf";
tfv_fnc_findTrWeapons =  compile preprocessFileLineNumbers "external\tfv\functions\fnc_findTrWeapons.sqf";
tfv_fnc_getSteps =       compile preprocessFileLineNumbers "external\tfv\functions\fnc_getSteps.sqf";
tfv_fnc_payTrade =       compile preprocessFileLineNumbers "external\tfv\functions\fnc_payTrade.sqf";
tfv_fnc_wCount =         compile preprocessFileLineNumbers "external\tfv\functions\fnc_wCount.sqf";
tfv_fnc_mCount =         compile preprocessFileLineNumbers "external\tfv\functions\fnc_mCount.sqf";
tfv_fnc_checkTradeMags = compile preprocessFileLineNumbers "external\tfv\functions\fnc_checkTradeMags.sqf";
tfv_fnc_aConcatMags =    compile preprocessFileLineNumbers "external\tfv\functions\fnc_aConcatMags.sqf";
tfv_fnc_getStepsMags =   compile preprocessFileLineNumbers "external\tfv\functions\fnc_getStepsMags.sqf";
tfv_fnc_payTradem =      compile preprocessFileLineNumbers "external\tfv\functions\fnc_payTradem.sqf";

/*    *******************************************************************************************************************************************   */
/*    Init file finished. Start monitor script.    */    
[] ExecVM "external\tfv\monitor.sqf";
/*    *******************************************************************************************************************************************   */
