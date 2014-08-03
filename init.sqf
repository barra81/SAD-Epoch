/*	
	For DayZ Epoch
	Addons Credits: Jetski Yanahui by Kol9yN, Zakat, Gerasimow9, YuraPetrov, zGuba, A.Karagod, IceBreakr, Sahbazz
*/

startLoadingScreen ["","RscDisplayLoadCustom"];
cutText ["","BLACK OUT"];
enableSaving [false, false];

//REALLY IMPORTANT VALUES
dayZ_instance = 1;	//The instance
dayzHiveRequest = [];
initialized = false;
dayZ_serverName = "SaD";
dayz_previousID = 0;

//disable greeting menu 
player setVariable ["BIS_noCoreConversations", true];
//disable radio messages to be heard and shown in the left lower corner of the screen
enableRadio true;
// May prevent "how are you civillian?" messages from NPC
enableSentences false;

// DayZ Epoch config
spawnShoremode = 0; // Default = 1 (on shore)
spawnArea = 1500; // Default = 1500
setViewDistance 3500;
MaxHeliCrashes= 5; // Default = 5

DefaultMagazines = ["ItemBandage","ItemBandage","ItemSodaCoke","FoodCanBakedBeans"];
DefaultWeapons = ["MeleeMachete","ItemRadio","ItemToolbox","ItemCompass"];
DefaultBackpack = "DZ_Patrol_Pack_EP1";

DZE_SelfTransfuse = true;
DZE_selfTransfuse_Values = [5500,5,300];
DZE_ForceNameTags = true; //Nametags
DZE_HumanityTargetDistance = 25;
DZE_HeliLift = false;
DZE_MissionLootTable = true;
DZE_BuildOnRoads = true; // Default: False
DZE_PlotPole = [50,50];

MaxVehicleLimit = 150; // Default = 50
MaxDynamicDebris = 100; // Default = 100
MaxMineVeins = 15;

dayz_MapArea = 10000; // Default = 10000
dayz_maxLocalZombies = 20; // Default = 40

dayz_paraSpawn = true;
dayz_sellDistance_vehicle = 20;
dayz_sellDistance_boat = 60;
dayz_sellDistance_air = 80;
dayz_maxAnimals = 5; // Default: 8
DZE_BuildingLimit = 1500;
dayz_tameDogs = true;

DynamicVehicleDamageLow = 0; // Default: 0
DynamicVehicleDamageHigh = 100; // Default: 100

EpochEvents = [["any","any","any","any",30,"crash_spawner"],["any","any","any","any",0,"crash_spawner"],["any","any","any","any",15,"supply_drop"]];

dayz_fullMoonNights = true;

//Load in compiled functions
call compile preprocessFileLineNumbers "sys\variables.sqf";				//Initilize the Variables (IMPORTANT: Must happen very early)
progressLoadingScreen 0.1;
call compile preprocessFileLineNumbers "\z\addons\dayz_code\init\publicEH.sqf";				//Initilize the publicVariable event handlers
progressLoadingScreen 0.2;
call compile preprocessFileLineNumbers "\z\addons\dayz_code\medical\setup_functions_med.sqf";	//Functions used by CLIENT for medical
progressLoadingScreen 0.4;
call compile preprocessFileLineNumbers "sys\compiles.sqf";				//Compile regular functions
//call compile preprocessFileLineNumbers "sys\snap_build\compiles.sqf";				//Compile regular functions
call compile preprocessFileLineNumbers "sys\snap_pro\compiles.sqf"; 
progressLoadingScreen 0.5;
call compile preprocessFileLineNumbers "server_traders.sqf";				//Compile trader configs
progressLoadingScreen 1.0;

"filmic" setToneMappingParams [0.153, 0.357, 0.231, 0.1573, 0.011, 3.750, 6, 4]; setToneMapping "Filmic";

if (isServer) then {
	//Compile vehicle configs
	call compile preprocessFileLineNumbers "\z\addons\dayz_server\missions\DayZ_Epoch_1.Takistan\dynamic_vehicle.sqf";				
	// Add trader citys
	_nil = [] execVM "\z\addons\dayz_server\missions\DayZ_Epoch_1.Takistan\mission.sqf";
	_serverMonitor = 	[] execVM "\z\addons\dayz_code\system\server_monitor.sqf";
};
if (!isDedicated) then {
    [] execVM "external\tfv\init.sqf";
	[] execVM "external\Player_WelcomeCredits.sqf";
	
    _null = [] execVM "rCr\doTowerLights.sqf";		// Run tower lighting script
	//Conduct map operations
	0 fadeSound 0;
	waitUntil {!isNil "dayz_loadScreenMsg"};
	dayz_loadScreenMsg = (localize "STR_AUTHENTICATING");
	//Run the player monitor
	_id = player addEventHandler ["Respawn", {_id = [] spawn player_death;}];
	_playerMonitor = 	[] execVM "\z\addons\dayz_code\system\player_monitor.sqf";	
	//DZGMS
	[] execVM "dzgm\init.sqf";
	//Lights
	[false,12] execVM "\z\addons\dayz_code\compile\local_lights_init.sqf";
	//service point
	execVM "external\service_point\service_point.sqf";

	// DZAI Remote CLIENT
	_nul = [] execVM "external\dzai_initclient.sqf";
	
	[] execVM "external\clanSkins.sqf";
};

//HideableRoofs
if (isDedicated) then {
	"rcrHideRoof" addPublicVariableEventHandler {
		_packet = _this select 1;
		_nearestGates = _packet select 1;
		{
			_x setVariable ["GateLowered", true, true];
			[nil, _x, "per", rHideObject, true] call RE;
		} foreach _nearestGates;
	};
	"rcrUnHideRoof" addPublicVariableEventHandler {
		_packet = _this select 1;
		_nearestGates = _packet select 1;
		{
			_x setVariable ["GateLowered", false, true];
			[nil, _x, "per", rHideObject, false] call RE;
		} foreach _nearestGates;
	};
};

[] execVM "rcr\jipHide.sqf";
#include "rcr\REsec.sqf"



//Kron String Functions

 [] execVM "sys\kron\kron_strings.sqf";

//Start Dynamic Weather
execVM "sys\DynamicWeatherEffects.sqf";
[] execVM "sys\safezone.sqf";
[] execVM "sys\System_nosidechat.sqf";
#include "\z\addons\dayz_code\system\BIS_Effects\init.sqf"
// Lift
_logistic = execVM "=BTC=_Logistic\=BTC=_Logistic_Init.sqf";
if (!isNil "dayZ_serverName") then {
	[] spawn {
		waitUntil {(!isNull Player) and (alive Player) and (player == player)};
		waituntil {!(isNull (findDisplay 46))};
		5 cutRsc ["wm_disp","PLAIN"];
		((uiNamespace getVariable "wm_disp") displayCtrl 1) ctrlSetText dayZ_serverName;
	};
};