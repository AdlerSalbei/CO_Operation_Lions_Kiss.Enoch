params ["_obj"];

private _action1 = [
    "stopRadio",
    "Mute",
    "",
    {
        /* create render surface */
        panel_01 setObjectTexture [0, "#(argb,512,512,1)r2t(uavrtt,1)"];

        /* create camera and stream to render surface */
        private _cam = "camera" camCreate [0,0,0];
        _cam cameraEffect ["Internal", "Back", "uavrtt"];
        _cam camSetTarget _target;

        /* attach cam to gunner cam position */
        _cam attachTo [uav_01, [0,0,-1], "PiP0_pos"];

        /* make it zoom in a little */
        _cam camSetFov 0.1;

        /* switch cam to thermal */
        "uavrtt" setPiPEffect [2];

        _cam camCommit 0.2;

        /* adjust cam orientation */
        ["ChangeCamUAV", {
            _thisArgs params ["_cam"];

            if (isNull uav_01 || {isNull panel_01}) exitWith {
                [_thisType, _thisId] call CBA_fnc_removeEventHandler;
            };

            _this params ["_target", "_fov", "_pipEffect", ["_commitTime", 1]];
            _cam camSetTarget _target;
            _cam camSetFov _fov;
            "uavrtt" setPiPEffect [_pipEffect];
            _cam camCommit _commitTime;

        }, [_cam]] call CBA_fnc_addEventHandlerArgs;
    },
    {true},
    {},
    [],
    [0,0,0]
] call ace_interact_menu_fnc_createAction;

[_obj, 0, ["ACE_MainActions"], _action1] call ace_interact_menu_fnc_addActionToObject;
