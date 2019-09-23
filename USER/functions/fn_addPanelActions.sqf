params ["_obj"];

private _action1 = [
    "hideout1",
    "Hideout 1",
    "",
    {
        panel_01 setObjectTextureGlobal [0, "data\hideout_1.paa"];
    },
    {true},
    {},
    [],
    [0,0,0]
] call ace_interact_menu_fnc_createAction;

[_obj, 0, ["ACE_MainActions"], _action1] call ace_interact_menu_fnc_addActionToObject;

private _action2 = [
    "hideout2",
    "Hideout 2",
    "",
    {
        panel_01 setObjectTextureGlobal [0, "data\hideout_2.paa"];
    },
    {true},
    {},
    [],
    [0,0,0]
] call ace_interact_menu_fnc_createAction;

[_obj, 0, ["ACE_MainActions"], _action2] call ace_interact_menu_fnc_addActionToObject;
