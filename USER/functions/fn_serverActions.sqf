params ["_obj"];

private _action = [
    "destroyServer",
    "Destroy Server",
    "",
    {
        grad_serverDestroyed = true;
        publicVariable "grad_serverDestroyed";

        server_01 animateSource ["Lights_Off_Source", 1, true];
        server_02 animateSource ["Lights_Off_Source", 1, true];

        private _soundPath = [(str missionConfigFile), 0, -15] call BIS_fnc_trimString;
        playSound3D [_soundPath + "data\computer_shutdown.ogg", server_01];

        screen_01 setObjectTextureGlobal [0, "#(argb,8,8,3)color(0,0,0,0.0,co)"];
        screen_02 setObjectTextureGlobal [0, "#(argb,8,8,3)color(0,0,0,0.0,co)"];
    },
    {!(isNil "grad_uploadDone") && {isNil "grad_serverDestroyed"}},
    {},
    [],
    [0,0,0]
] call ace_interact_menu_fnc_createAction;

[_obj, 0, ["ACE_MainActions"], _action] call ace_interact_menu_fnc_addActionToObject;

private _action = [
    "starServer",
    "Start Server",
    "",
    {
        grad_serverStarted = false;
        publicVariable "grad_serverStarted";

        screen_01 setObjectTextureGlobal [0, "data\screen.paa"];
        if (grad_user_bigScreenOn) then {
            screen_02 setObjectTextureGlobal [0, "data\screen.paa"];
        };

        private _soundPath = [(str missionConfigFile), 0, -15] call BIS_fnc_trimString;
        playSound3D [_soundPath + "data\computer_start.ogg", server_01];

        server_01 animateSource ["Lights_Off_Source", 0, true];
        server_02 animateSource ["Lights_Off_Source", 0, true];

        [{
            screen_01 setObjectTextureGlobal [0, "data\desktop.paa"];
            if (grad_user_bigScreenOn) then {
                screen_02 setObjectTextureGlobal [0, "data\desktop.paa"];
            };

            grad_serverStarted = true;
            publicVariable "grad_serverStarted";

           [] remoteExecCall ["grad_user_fnc_serverSound", -2];
        }, [], 16] call CBA_fnc_waitAndExecute;
    },
    {isNil "grad_serverStarted"},
    {},
    [],
    [0,0,0]
] call ace_interact_menu_fnc_createAction;

[_obj, 0, ["ACE_MainActions"], _action] call ace_interact_menu_fnc_addActionToObject;
