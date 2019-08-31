params ["_obj"];

private _action = [
    "RemoteExec",
    "Remote Verbindung Herstellen",
    "",
    {
        screen_1 setObjectTextureGlobal [0, "data\screen.paa"];
        [{
            screen_1 setObjectTextureGlobal [0, "data\00.paa"];
            [{
                screen_1 setObjectTextureGlobal [0, "data\10.paa"];
                [{
                    screen_1 setObjectTextureGlobal [0, "data\20.paa"];
                    [{
                        screen_1 setObjectTextureGlobal [0, "data\30.paa"];
                        [{
                            screen_1 setObjectTextureGlobal [0, "data\40.paa"];
                            [{
                                screen_1 setObjectTextureGlobal [0, "data\50.paa"];
                                [{
                                    screen_1 setObjectTextureGlobal [0, "data\60.paa"];
                                    [{
                                        screen_1 setObjectTextureGlobal [0, "data\Done.paa"];
                                    }, [], 10] call CBA_fnc_waitAndExecute;
                                }, [], 10] call CBA_fnc_waitAndExecute;
                            }, [], 10] call CBA_fnc_waitAndExecute;
                        }, [], 10] call CBA_fnc_waitAndExecute;
                    }, [], 10] call CBA_fnc_waitAndExecute;
                }, [], 10] call CBA_fnc_waitAndExecute;
            }, [], 10] call CBA_fnc_waitAndExecute;
        }, [], 3] call CBA_fnc_waitAndExecute;
    },
    {true},
    {},
    [],
    [0,0,0]
] call ace_interact_menu_fnc_createAction;

[_obj, 0, ["ACE_MainActions"], _action] call ace_interact_menu_fnc_addActionToObject;
