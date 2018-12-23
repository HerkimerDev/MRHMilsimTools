/*
Function name:MRH_fnc_MilsimTools_AddonName_
Author: Mr H.
Description:
Return value:
Public:
Parameters:
Example(s):
call MRH_fnc_MilsimTools_AddonName_;
*/
#include "MRH_C_Path.hpp"

	if ((goggles player)!= "MRH_HaloMask") exitWith {};


	//"uiNamespace setVariable ['ACE_Goggles_Display', _this select 0]";
	_display = uiNamespace getVariable 'ACE_Goggles_Display';
	
	_ctrl = _display ctrlCreate ["RscStructuredText", -1]; 
						_ctrl ctrlSetPosition [0.0875 * safezoneW + safezoneX,0.786 * safezoneH + safezoneY,0.20625 * safezoneW,0.055 * safezoneH]; 
						_ctrl ctrlCommit 0;
                        /*
						[_ctrl] spawn {params ["_ctrl"];
						_index = ["1","2","3","4","5","6","7"];
						while {ctrlShown _Ctrl && ((goggles player) == "MRH_HaloMask")} do {_soundIndex = selectRandom _index;_soundName = "MRH_BreathingMuffled_" + _soundIndex; playsound _soundName; uisleep random [6,8,10];};
						};
                        */
						[_ctrl] spawn {
							params ["_altCtrl"];
									 _handler = addMissionEventHandler ["EachFrame", 
 {
     // generate alt text
     _alt = round((getPosASL player) select 2);
	_text = format ["Altitude %1m", _alt];
	//_strText = "<t font = 'LucidaConsoleB'><t color ='#048e12'>" + _text + "</t>";
    drawIcon3D ["",[0.004,0.142,0.018,1],positionCameraToWorld [-6.5,-1,10],0,0,0,_text,2,0.05,"LucidaConsoleB"];
    _velocity = abs (round((velocity player) select 2));
   
	_textVel = format ["Vertical air speed %1 m/s", _velocity];
    drawIcon3D ["",[0.004,0.142,0.018,1],positionCameraToWorld [-6.5,-0.5,10],0,0,0,_textVel,2,0.05,"LucidaConsoleB"];
 //compass draw       
       {
	    _center = positionCameraToWorld [4.5,-1,10]; 
        _x params ["_letter", "_color", "_offset1", "_offset2"]; 
        drawIcon3D [ 
            "", 
            _color, 
            _center vectorAdd _offset1, 
            0, 
            0, 
            0, 
            _letter, 
            2, 
            0.05, 
            "LucidaConsoleB" 
        ];       
        drawIcon3D [ 
            "", 
            _color, 
            _center vectorAdd _offset2, 
            0, 
            0, 
            0, 
            ".", 
            2, 
            0.05, 
            "LucidaConsoleB" 
        ]; 
    } 
	count 
	[ 
        ["N",[0.004,0.142,0.018,1],[0,1,0],[0,0.5,0]],  
        ["S",[0.004,0.142,0.018,1],[0,-1,0],[0,-0.5,0]],  
        ["E",[0.004,0.142,0.018,1],[1,0,0],[0.5,0,0]],  
        ["W",[0.004,0.142,0.018,1],[-1,0,0],[-0.5,0,0]] 
    ]; 
//end compass draw
}];
 
									
							while {ctrlShown _altCtrl && ((goggles player) == "MRH_HaloMask")} do {
                            _alt = round((getPosASL player) select 2);
                            _text = format ["Altitude %1m", _alt];
                            _strText = "<t font = 'LucidaConsoleB'><t color ='#048e12'>" + _text + "</t>";
                           // _altCtrl ctrlSetStructuredText parseText _strText;

							};
							
							removeMissionEventHandler ["EachFrame",_handler];
						}; 