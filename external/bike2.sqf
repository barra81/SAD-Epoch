
	//player removeAction s_player_deploybike2;
	_oldBikeString = _this select 3;
	_oldBike = nearestObjects [player,["Old_bike_TK_CIV_EP1"],5];

	
                _sfx = "repair";
				[1,1] call dayz_HungerThirst;
				player playActionNow "Medic";

				[player,_sfx,0,false] call dayz_zombieSpeak;
				[player,10,true,(getPosATL player)] spawn player_alertZombies;

				r_interrupt = false;
				_animState = animationState player;
				r_doLoop = true;				
				_setOK = false;
				_started = false;
				
					 while {r_doLoop} do {
					_animState = animationState player;
					_isMedic = ["medic",_animState] call fnc_inString;
					if (_isMedic) then {
						_started = true;
					};
					if (_started && !_isMedic) then {
						r_doLoop = false;				
						_setOK = true;
					};
					if (r_interrupt) then {
						r_doLoop = false;
						if (vehicle player == player) then {
						[objNull, player, rSwitchMove,""] call RE;
						player playActionNow "stop";
					    };						
					};
					sleep 0.1;
				    };
				    r_doLoop = false;

	if (_setOK) then {				
	
	player addWeapon "ItemToolbox";
	deleteVehicle (_oldBike select 0);
	cutText [format["You have packed your bike and been given back your toolbox"], "PLAIN DOWN"];
	
	} else {
	
	cutText [format["Canceled packing Bike!"], "PLAIN DOWN"];
	};