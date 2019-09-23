 private _soundPath = [(str missionConfigFile), 0, -15] call BIS_fnc_trimString;

 [{
    if !(isNil "grad_serverDestroyed") exitWith {[(_this select 1)] call CBA_fnc_removePerFrameHandler;};

    playSound3D [(_this select 0) + "data\computer.ogg", server_01, false, getPosASL server_01, 5, 1, 0];
}, 0.9999, _soundPath] call CBA_fnc_addPerFrameHandler;