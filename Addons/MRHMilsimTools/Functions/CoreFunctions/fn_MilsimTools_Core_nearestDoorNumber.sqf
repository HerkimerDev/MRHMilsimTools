/*
Function name:MRH_fnc_MilsimTools_Core_
Author: Mr H.
Description: 
Return value: 
Public: No
Parameters:
Example(s):
[]call MRH_fnc_MilsimTools_Core_;
*/
#include "MRH_C_Path.hpp"
params ["_object"];
	_doorString = [_object] FUNC(nearestDoor);
	_doorNumberString = (_doorString splitstring  "_") select 1;
	_doorNumberString