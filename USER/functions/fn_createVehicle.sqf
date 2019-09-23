params ["_typ", "_pos", "_dir"];

private _vehicle = createVehicle [_typ, _pos, [], 0, "NONE"];
_vehicle setDir _dir;

_vehicle