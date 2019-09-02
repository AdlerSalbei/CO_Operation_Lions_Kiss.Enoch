params ["_obj"];

private _action1 = [
    "switchtoUAV",
    "Switch to UAV",
    "",
    {
        /* create render surface */
        panel_01 setObjectTexture [0, "#(argb,512,512,1)r2t(uavrtt,1)"];

        /* create camera and stream to render surface */
        private _cam = "camera" camCreate (getPos droneCam_01);
        _cam cameraEffect ["Internal", "Back", "uavrtt"];
        _cam camSetTarget droneTarget_01;

        /* make it zoom in a little */
        _cam camSetFov 0.1;

        /* switch cam to thermal */
        "uavrtt" setPiPEffect [2];

        _cam camCommit 0.2;
    },
    {true},
    {},
    [],
    [0,0,0]
] call ace_interact_menu_fnc_createAction;

[_obj, 0, ["ACE_MainActions"], _action1] call ace_interact_menu_fnc_addActionToObject;

private _action2 = [
    "mediumView",
    "Medium View",
    "",
    {
        panel_01 setObjectTexture [0, "#(argb,512,512,1)r2t(uavrtt,1)"];
    },
    {true},
    {},
    [],
    [0,0,0]
] call ace_interact_menu_fnc_createAction;

[_obj, 0, ["ACE_MainActions"], _action2] call ace_interact_menu_fnc_addActionToObject;
