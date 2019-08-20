["Initialize"] call BIS_fnc_dynamicGroups;

["grad_changeWeather", {_this call grad_user_fnc_setTimeAndWeather;}] call CBA_fnc_addEventHandler;

private _nextWeatherSet = [date, overcast, rain, [wind select 0, wind select 1, true], fogParams];
[{
    !(isNil "GRAD_USER_introOver")
},{
    ["grad_changeWeather", _this] call CBA_fnc_serverEvent;
}, _nextWeatherSet] call CBA_fnc_waitUntilAndExecute;
