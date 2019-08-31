params ["_radio"];

private _action = [
    "stopRadio",
    "Mute",
    "",
    {

    },
    {true},
    {},
    [],
    [0,0,0]
] call ace_interact_menu_fnc_createAction;

[_obj, 0, ["ACE_MainActions"], _action] call ace_interact_menu_fnc_addActionToObject;
