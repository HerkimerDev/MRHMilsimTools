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
_display = uiNamespace getVariable 'ACE_Goggles_Display';
_ctrl =_display displayCtrl 10650;
playSound "MRH_MaskBreaking";
_path = PAAPATH(BreakingAnimation\HM_Breaking_);
for "_i" from 1 to 11 do {
	_pic = _path + str _i + ".paa";
	_ctrl ctrlSetText _pic;
	uiSleep 0.63
};
call MRH_fnc_MilsimTools_HaloGear_damageGoggles;