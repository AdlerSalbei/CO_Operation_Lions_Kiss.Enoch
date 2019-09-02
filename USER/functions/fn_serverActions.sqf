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
        grad_serverStarted = true;
        publicVariable "grad_serverStarted";

        screen_01 setObjectTextureGlobal [0, "data\screen.paa"];

        private _soundPath = [(str missionConfigFile), 0, -15] call BIS_fnc_trimString;
        playSound3D [_soundPath + "data\computer_start.ogg", server_01];

        server_01 animateSource ["Lights_Off_Source", 0, true];
        server_02 animateSource ["Lights_Off_Source", 0, true];
        [{
            screen_01 setObjectTextureGlobal [0, "data\desktop.paa"];

            private _soundPath = [(str missionConfigFile), 0, -15] call BIS_fnc_trimString;

            [{
                if !(isNil "grad_serverDestroyed") exitWith {[(this select 1)] call CBA_fnc_removePerFrameHandler;};

                playSound3D [(_this select 0) + "data\computer.ogg", server_01, false, getPosASL server_01, 5, 1, 0];
            }, 0.99, _soundPath] call CBA_fnc_addPerFrameHandler;
        }, [], 16] call CBA_fnc_waitAndExecute;
    },
    {isNil "grad_serverStarted"},
    {},
    [],
    [0,0,0]
] call ace_interact_menu_fnc_createAction;

[_obj, 0, ["ACE_MainActions"], _action] call ace_interact_menu_fnc_addActionToObject;
