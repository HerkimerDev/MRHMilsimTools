/*
Function name: MRH_fnc_MilsimTools_SoldierTab_TerminateAlarm
Author: Mr H.
Description: refreshes home page
Return value: none
Public: no
Parameters: none
Example(s):
call MRH_fnc_MilsimTools_SoldierTab_TerminateAlarm;
*/
#include "MRH_C_Path.hpp"
_script= player getVariable ["MRH_SoldierTab_runningAlarmScript",scriptNull];
if !(isNull _script) then {terminate _script;};
_alarmText = "<img size = '2' image ='" + PAAPATH(alarm.paa) +"'/>" + "Alarm app.";
FDIS(7703) ctrlSetStructuredText parseText _alarmText;
