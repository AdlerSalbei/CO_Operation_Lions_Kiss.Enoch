STHud_UIMode = 0;
diwako_dui_main_toggled_off = true;

playMusic ["outroMusic", 0];
cutText ["","BLACK OUT", 1];

[{
    cutText ["","BLACK FADED", 999];
    ace_player switchMove "amovpercmstpslowwrfldnon";

    [{
        cutText ["","BLACK IN", 1];

        private _filmgrain = ppEffectCreate ["FilmGrain", 2000];
        _filmgrain ppEffectEnable true;
        _filmgrain ppEffectAdjust [0.3, 0.3, 0.12, 0.12, 0.12, true];
        _filmgrain ppEffectCommit 0;

        private _pos = getPosASL ace_player;
        _pos set [2, (_pos select 2) + 35];
        private _camera = "camera" camCreate _pos;
        _camera camSetPos _pos;
        _camera camCommand "inertia on";
        _camera camSetTarget ace_player;
        _camera cameraEffect ["internal", "back"];
        _camera camSetFov 0.01;
        _camera camCommit 0;

        showCinemaBorder false;

        [{
            params ["_camera", "_filmgrain"];

            _camera camSetFov 1;
            _camera camCommit 20;

            [{
                cutText ["","BLACK OUT", 2];

                [{
                    cutText ["","BLACK FADED", 999];

                    [{
                        params ["_camera", "_filmgrain"];
                                        
                        _camera camSetPos (getPos camPos_05);
                        _camera camSetTarget camTarget_05;
                        _camera camCommit 0;

                        private _vehicle = ["C_Van_02_transport_F", [4045.1,7984.32,0], 0] call grad_user_fnc_createVehicle;
                        _vehicle setObjectTextureGlobal [0, "a3\soft_f_orange\van_02\data\van_body_aan_co.paa"];
                        ["gm_gc_pol_p601", [4048.68,7963.8,0], 91.876] call grad_user_fnc_createVehicle;
                        ["gm_gc_pol_p601", [4048.49,7960.05, 0], 91.876] call grad_user_fnc_createVehicle;
                        ["gm_gc_pol_p601", [4047.98,7955.49, 0], 89.630] call grad_user_fnc_createVehicle;
                        ["gm_gc_pol_p601", [4047.51,7950.76,0], 60.755] call grad_user_fnc_createVehicle;
                        ["gm_gc_pol_p601", [4045.21,7945.13,0], 145.841] call grad_user_fnc_createVehicle;

                        ["gm_gc_pol_officer_80_blu", [4050.45,7971.39,0], 272.351] call grad_user_fnc_createUnit;
                        ["gm_gc_pol_officer_80_blu", [4051.72,7955.44, 0], 181.096] call grad_user_fnc_createUnit;
                        ["gm_gc_pol_officer_80_blu", [4051.23,7952.57,0], 10.998] call grad_user_fnc_createUnit;
                        
                        showCinemaBorder false;
                                
                        [{      
                            cutText ["","BLACK IN", .5];
                            [
                                parseText "<t size='4'>Mehrere Tote in Radacz gefunden</t>",
                                parseText "     -  Es gibt keinen logischen Grund warum das Alphabet sortiert ist wie es ist.  -  Führende Wissenschaftler sagen Ody Korn sei kein Getränk, sondern ein Reinigungsmittel  -  Trump bietet jedem kostenlose One-Way-Tickets nach Afrika und Mexiko an, der Amerika verlassen will  -  Afrikanischer Milliardär zahlt jedem 1 Million US-Dollar an jeden, der Afrika verlassen will, um nach Amerika zu gehen"
                            ] spawn BIS_fnc_AAN;

                            [{
                                cutText ["","BLACK OUT", 1];
                                 
                                (uiNamespace getVariable "BIS_AAN") closeDisplay 1;
                                [{
                                    cutText ["","BLACK FADED", 999];
                                    showCinemaBorder true;

                                    [{

                                        [] call GRAD_USER_fnc_closingCredits;

                                        if (isServer) then {
                                            private _chairs = [getPos firePlace, 8, "Land_CampingChair_V2_F"] call GRAD_USER_fnc_chairCircle;
                                            [_chairs] call GRAD_USER_fnc_seatPlayers;
                                        };

                                            [{
                                                params ["_camera", "_filmgrain"];
                                                cutText ["", "BLACK IN", 2];

                                                private _pos = getPosASL ace_player;
                                                _pos set [2, (_pos select 2) + 35];
                                                _camera camSetPos _pos;
                                                _camera camCommand "inertia on";
                                                _camera camSetTarget ace_player;
                                                _camera cameraEffect ["internal", "back"];
                                                _camera camSetFov 1;
                                                _camera camCommit 0;
                                            

                                                [{
                                                    params ["_camera", "_filmgrain"];

                                                    _camera camSetFov 0.01;
                                                    _camera camCommit 14;

                                                    [{
                                                        cutText ["","BLACK OUT", 1];

                                                        [{
                                                            params ["_camera", "_filmgrain"];

                                                            _filmgrain ppEffectEnable false;
                                                            ppEffectDestroy _filmgrain;
                                                            _camera cameraEffect ["terminate", "back"];
                                                            camDestroy _camera;

                                                            cutText ["","BLACK IN", 1];   

                                                            [{
                                                                10 fadeMusic 0.05;

                                                                [{
                                                                    10 fadeMusic 0;
                                                                }, [], 10] call CBA_fnc_waitAndExecute;
                                                            }, [], 1] call CBA_fnc_waitAndExecute;
                                                        }, _this, 2] call CBA_fnc_waitAndExecute;
                                                    }, _this, 15] call CBA_fnc_waitAndExecute;
                                                }, _this, 2] call CBA_fnc_waitAndExecute;
                                        }, _this, 22] call CBA_fnc_waitAndExecute;
                                    }, _this, 1] call CBA_fnc_waitAndExecute;
                                }, _this, 1] call CBA_fnc_waitAndExecute;
                            }, _this, 10] call CBA_fnc_waitAndExecute;
                        }, _this, 1] call CBA_fnc_waitAndExecute;
                    }, _this, 1] call CBA_fnc_waitAndExecute;
                }, _this, 2] call CBA_fnc_waitAndExecute;
            }, _this, 20] call CBA_fnc_waitAndExecute;
        }, [_camera, _filmgrain], 2] call CBA_fnc_waitAndExecute;
    }, [], 1] call CBA_fnc_waitAndExecute;
}, [], 1] call CBA_fnc_waitAndExecute;
