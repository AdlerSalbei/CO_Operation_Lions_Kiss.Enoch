STHud_UIMode = 0;
diwako_dui_main_toggled_off = true;

playMusic ["outroMusic", 0];
cutText ["","BLACK OUT", 1];

[{
cutText ["","BLACK FADED", 999];

[{
cutText ["","BLACK IN", 1];

private _filmgrain = ppEffectCreate ["FilmGrain", 2000];
_filmgrain ppEffectEnable true;
_filmgrain ppEffectAdjust [0.3, 0.3, 0.12, 0.12, 0.12, true];
_filmgrain ppEffectCommit 0;

private _pos = getPosASL ace_player;
_pos set [2, (_pos select 2) + 25];
private _camera = "camera" camCreate _pos;
_camera camSetPos _pos;
_camera camCommand "inertia on";
_camera camSetTarget ace_player;
_camera cameraEffect ["internal", "back"];
_camera camSetFov 0.01;
_camera camCommit 0;

showCinemaBorder false;

[{
params ["_camera", "_filmgrain"];

_camera camSetFov 1;
_camera camCommit 15;

[{

cutText ["","BLACK OUT", 2];

[{
    params ["_camera", "_filmgrain"];

    cutText ["","BLACK FADED", 999];

    _filmgrain ppEffectEnable false;
    ppEffectDestroy _filmgrain;
    _camera cameraEffect ["terminate", "back"];
    camDestroy _camera;

[{

[] call GRAD_USER_fnc_closingCredits;
private _chairs = [getPos firePlace, 10, "Land_CampingChair_V2_F"] call GRAD_USER_fnc_chairCircle;
[_chairs] call GRAD_USER_fnc_seatPlayers;

[{
10 fadeMusic 0.05;
}, [], 20] call CBA_fnc_waitAndExecute;
}, [], 1] call CBA_fnc_waitAndExecute;
}, _this, 2] call CBA_fnc_waitAndExecute;
}, _this, 15] call CBA_fnc_waitAndExecute;
}, [_camera, _filmgrain], 2] call CBA_fnc_waitAndExecute;
}, [], 1] call CBA_fnc_waitAndExecute;
}, [], 1] call CBA_fnc_waitAndExecute;
