params ["_obj"];

private _action = [
    "RemoteExec",
    "Remote Verbindung Herstellen",
    "",
    {
        grad_uploadDone = true;
        publicVariable "grad_uploadDone";

        screen_01 setObjectTextureGlobal [0, "data\00.paa"];
        if (grad_user_bigScreenOn) then {
            screen_02 setObjectTextureGlobal [0, "data\00.paa"];
        };

        [{
            screen_01 setObjectTextureGlobal [0, "data\10.paa"];
            if (grad_user_bigScreenOn) then {
                screen_02 setObjectTextureGlobal [0, "data\10.paa"];
            };

            [{
                screen_01 setObjectTextureGlobal [0, "data\20.paa"];
                if (grad_user_bigScreenOn) then {
                    screen_02 setObjectTextureGlobal [0, "data\20.paa"];
                };

                [{
                    screen_01 setObjectTextureGlobal [0, "data\30.paa"];
                    if (grad_user_bigScreenOn) then {
                        screen_02 setObjectTextureGlobal [0, "data\30.paa"];
                    };

                    [{
                        screen_01 setObjectTextureGlobal [0, "data\40.paa"];
                        if (grad_user_bigScreenOn) then {
                            screen_02 setObjectTextureGlobal [0, "data\40.paa"];
                        };

                        [{
                            screen_01 setObjectTextureGlobal [0, "data\50.paa"];
                            if (grad_user_bigScreenOn) then {
                                screen_02 setObjectTextureGlobal [0, "data\50.paa"];
                            };
                            [{
                                screen_01 setObjectTextureGlobal [0, "data\60.paa"];
                                if (grad_user_bigScreenOn) then {
                                    screen_02 setObjectTextureGlobal [0, "data\60.paa"];
                                };
                                [{
                                    screen_01 setObjectTextureGlobal [0, "data\Done.paa"];
                                    if (grad_user_bigScreenOn) then {
                                        screen_02 setObjectTextureGlobal [0, "data\Done.paa"];
                                    };

                                    "marker_9" setMarkerAlpha 1;

                                }, [], 8] call CBA_fnc_waitAndExecute;
                            }, [], 8] call CBA_fnc_waitAndExecute;
                        }, [], 8] call CBA_fnc_waitAndExecute;
                    }, [], 8] call CBA_fnc_waitAndExecute;
                }, [], 8] call CBA_fnc_waitAndExecute;
            }, [], 8] call CBA_fnc_waitAndExecute;
        }, [], 8] call CBA_fnc_waitAndExecute;
    },
    {isNil "grad_uploadDone" && {isNil "grad_serverDestroyed"} && {!(isNil "grad_serverStarted")} && {grad_serverStarted}},
    {},
    [],
    [0,0,0]
] call ace_interact_menu_fnc_createAction;

[_obj, 0, ["ACE_MainActions"], _action] call ace_interact_menu_fnc_addActionToObject;
