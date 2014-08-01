waitUntil {!isNil "dayz_animalCheck"};

_clanArr = ["76561198053269629",       "4abc9da2cf5056afcae8852647c6113d",             "76561198053836873",              "76561198023078708",               "76561198030678907"];
//                   DON                               Thaaki                                  Panzen                            Varlop                             Barra
_skinArr = ["Drake_Light_DZ",                     "Drake_Light_DZ",                     "Reynolds_PMC",                  "GER_Soldier_TL_EP1",                  "TK_Aziz_EP1"];  // "INS_Bardak"

_baseSkins = ["Survivor2_DZ","Survivor1_DZ", "SurvivorW1_DZ", "SurvivorW2_DZ" ];


_chuteCheck = true;
_changeSkin = false;


while {_chuteCheck} do {

   _anim = animationState player;  
   _halo =  ["para_pilot","halofreefall_non","halofreefall_non_halofreefall_f", "halofreefall_non_halofreefall_l", "halofreefall_non_halofreefall_r", "halofreefall_non_halofreefall_b", "halofreefall_f", "halofreefall_fl","halofreefall_fr", "halofreefall_r", "halofreefall_l", "halofreefall_b", "halofreefall_br", "halofreefall_bl"];  
   _state = _anim in _halo;


   if (!_state) exitWith {
      
      _chuteCheck = false;
      _changeSkin = true;
 
    };
 };
 
 
 if (_changeSkin) then {
 
     sleep 3;
     _member = getPlayerUID player;
     _player = typeOf player;

   if (_member in _clanArr) then {  

      if (_player in _baseSkins) then {
       _memberCount = _clanArr find _member;   // returns pos in arr
       _skin = _skinArr select _memberCount;
       _skin call player_switchModel;
      };
    };
  };