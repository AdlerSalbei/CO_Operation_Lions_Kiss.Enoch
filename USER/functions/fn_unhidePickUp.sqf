params ["_obj"];

private _action = [
    "placeItem",
    "Place Items",
    "",
    {
        private _pickedUpItems = _player getVariable ["grad_user_pickedUpItems", []];
        {
            ["grad_hideObjectServer", [_x, false]] call CBA_fnc_serverEvent;
        }forEach _pickedUpItems;

        _player setVariable ["grad_user_pickedUpItems", []];
    },
    {true},
    {},
    [],
    [0,0,0]
] call ace_interact_menu_fnc_createAction;

[_obj, 0, ["ACE_MainActions"], _action] call ace_interact_menu_fnc_addActionToObject;