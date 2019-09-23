params ["_typ", "_pos", "_dir"];

private _group = createGroup [civilian, true];
_group setBehaviour "SAFE";

private _unit = _group createUnit [_typ, _pos, [], 0, "NONE"]; 
_unit setPos _pos;
_unit setDir _dir;
_unit disableAI "MOVE";