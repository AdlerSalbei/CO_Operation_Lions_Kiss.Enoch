params ["_obj"];

private _action = [
    "activateScreen",
    "Activate Screen",
    "",
    {
		grad_user_bigScreenOn = true;
		publicVariable "grad_user_bigScreenOn";

		screen_02 setObjectTextureGlobal [0, "data\sony.paa"];
    },
    {!(grad_user_bigScreenOn)},
    {},
    [],
    [0,0,0]
] call ace_interact_menu_fnc_createAction;

[_obj, 0, ["ACE_MainActions"], _action] call ace_interact_menu_fnc_addActionToObject;