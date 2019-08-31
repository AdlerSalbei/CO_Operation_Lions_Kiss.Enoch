params ["_radio", "_lastSong"];

private _songs = [["intro", 90], ["outro", 90]];
private _index = random (count _songs);
private _song = (_songs select _index) select 0;

if (_song == _lastSong) exitWith {[_radio, _lastSong] call grad_user_fnc_selectRadioSound;};

[_radio, _song] call grad_user_fnc_playRadioSound;

[
    {
        !(isNil (_this select 0) getVariable "grad_stopRadio")
    },{

    },
    [_radio, _song],
    (_songLength + 0.1),
    {
        _this call grad_user_fnc_selectRadioSound;
    }
] call CBA_fnc_waitUntilAndExecute;
