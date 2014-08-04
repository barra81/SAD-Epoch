


_player = _this select 0;
_nearestBarrels = nearestObjects [_player, ["Land_Fire_Barrel"], 200];
_nearestTowers = nearestObjects [_player, ["Land_Ind_IlluminantTower"], 200];

{
_x inflame true;

} forEach _nearestBarrels;

{
_x setVariable ["bbTowerLight", "true", true];

} forEach _nearestTowers;

