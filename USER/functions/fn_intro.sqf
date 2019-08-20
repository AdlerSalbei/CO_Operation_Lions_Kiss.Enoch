
params ["_effect", "_music"];
[_effect, 0, false] call BIS_fnc_setPPeffectTemplate;

playMusic [_music, 0];

cutText ["", "BLACK OUT", 0];
cutText ["","BLACK FADED", 999];

ace_player switchMove "amovpercmstpslowwrfldnon";

[{
    titleText [
        "<t font='PuristaBold' size='3'>Am 6. Juli 1991 versuchten pro-sowjetische militärische Kräfte, die Abspaltung Livonias zu verhindern</t>",
        "PLAIN",
        0.8,
        true,
        true
    ];

    private _filmgrain = ppEffectCreate ["FilmGrain", 2000];
    _filmgrain ppEffectEnable true;
    _filmgrain ppEffectAdjust [0.3, 0.3, 0.12, 0.12, 0.12, true];
    _filmgrain ppEffectCommit 0;

    private _camera = "camera" camCreate (getPosASL camPos_01);
    _camera camSetPos (getPos camPos_01);
    _camera camCommand "inertia on";
    _camera camSetTarget civ_01;
    _camera cameraEffect ["internal", "back"];
    _camera camSetFov 0.2;
    _camera camCommit 0;
    _camera camSetPos (getPos camPos_01);
    _camera camSetTarget civ_01;
    _camera camSetFov 0.2;
    _camera camCommit 5;

    showCinemaBorder true;

    private _date = date;
    _date set [3, 10];
    _date set [4, 40];

    ["grad_changeWeather", [_date, 0.2, 0, nil, [0,0,0]]] call CBA_fnc_serverEvent;

    [{
        cutText ["", "BLACK IN", 3];

        [{
            params ["_camera"];

            _camera camSetFov 0.8;
            _camera camCommit 5;

            [{
                cutText ["", "BLACK OUT", 1];

                [{
                    params ["_camera"];

                    cutText ["","BLACK FADED", 999];
                    titleText ["<t font='PuristaBold' size='3'>Am 28.09.2019 wurde ein NATO Truppentransport überfallen, die sich anboard befindenden Wissenschafftler wurden entführt.</t>", "PLAIN", 0.8, true, true];
                    _camera camSetPos (getPos camPos_02);
                    _camera camSetTarget camTarget_01;
                    _camera camSetFov 0.1;
                    _camera camCommit 0;

                    private _date = date;
                    _date set [3, 1];
                    _date set [4, 0];

                    ["grad_changeWeather", [_date, 1, 0.3, nil, [0.505533,0.0170761,400]]] call CBA_fnc_serverEvent;

                    [{
                        cutText ["", "BLACK IN", 3];

                        [{
                            params ["_camera"];

                            [{[getPosATL lightningPos_01] call grad_user_fnc_doLightning;},[]] call CBA_fnc_execNextFrame;
                            [{[getPosATL lightningPos_04] call grad_user_fnc_doLightning;},[],2] call CBA_fnc_waitAndExecute;

                            _camera camSetFov 1;
                            _camera camCommit 5;

                            [{
                                params ["_camera"];

                                [{[getPosATL lightningPos_02] call grad_user_fnc_doLightning;},[]] call CBA_fnc_execNextFrame;
                                [{[getPosATL lightningPos_03] call grad_user_fnc_doLightning;},[],2] call CBA_fnc_waitAndExecute;
                                _camera camSetPos (getPos camPos_03);
                                _camera camCommit 5;

                                [{
                                    params ["_camera"];

                                    [{[getPosATL lightningPos_01] call grad_user_fnc_doLightning;},[]] call CBA_fnc_execNextFrame;
                                    [{[getPosATL lightningPos_03] call grad_user_fnc_doLightning;},[],2] call CBA_fnc_waitAndExecute;
                                    _camera camSetPos (getPos camPos_04);
                                    _camera camCommit 5;

                                    [{
                                        cutText ["", "BLACK OUT", 1];

                                        [{
                                            cutText ["","BLACK FADED", 999];

                                            [{
                                                params ["_camera", "_filmgrain"];

                                                _filmgrain ppEffectEnable false;
                                                ppEffectDestroy _filmgrain;
                                                _camera cameraEffect ["terminate", "back"];
                                                camDestroy _camera;

                                                ["Default", 0, false] call BIS_fnc_setPPeffectTemplate;

                                                [
                                                    parseText "<t font='PuristaBold' size='6' color='#8b0000'>O</t><t font='PuristaBold' size='6' color='#ffffff'>peration </t><t font='PuristaBold' size='6' color='#8b0000'>L</t><t font='PuristaBold' size='6' color='#ffffff'>ions </t><t font='PuristaBold' size='6' color='#8b0000'>K</t><t font='PuristaBold' size='6' color='#ffffff'>iss</t>",
                                                    [
                                                          safezoneX + 0.25 * safezoneW,
                                                          safezoneY + 0.44 * safezoneH,
                                                          2,
                                                          1
                                                     ],
                                                    nil,
                                                    5,
                                                    [4,1],
                                                    0
                                                ] spawn BIS_fnc_textTiles;

                                                [{
                                                    cutText ["", "BLACK IN", 10];
                                                    [{
                                                        10 fadeMusic 0;
                                                        STHud_UIMode = 1;
                                                        diwako_dui_main_toggled_off = false;
                                                        GRAD_USER_introOver = true;
                                                        publicVariable "GRAD_USER_introOver";
                                                        [ace_player, "amovpercmstpslowwrfldnon", 1] call ace_common_fnc_doAnimation;

                                                        [{
                                                            playMusic "";
                                                            0 fadeMusic 1;
                                                        }, [], 11] call CBA_fnc_waitAndExecute;
                                                    }, [], 3] call CBA_fnc_waitAndExecute;
                                                }, [], 8] call CBA_fnc_waitAndExecute;
                                            }, _this, 2.9] call CBA_fnc_waitAndExecute;
                                        }, _this, 4.9] call CBA_fnc_waitAndExecute;
                                    }, _this, 5] call CBA_fnc_waitAndExecute;
                                }, _this, 5] call CBA_fnc_waitAndExecute;
                            }, _this, 5] call CBA_fnc_waitAndExecute;
                        }, _this, 2.9] call CBA_fnc_waitAndExecute;
                    }, _this, 8] call CBA_fnc_waitAndExecute;
                }, _this, 3.9] call CBA_fnc_waitAndExecute;
            }, _this, 6] call CBA_fnc_waitAndExecute;
        }, _this, 5] call CBA_fnc_waitAndExecute;
    }, [_camera, _filmgrain], 8] call CBA_fnc_waitAndExecute;
}, [], 3] call CBA_fnc_waitAndExecute;
