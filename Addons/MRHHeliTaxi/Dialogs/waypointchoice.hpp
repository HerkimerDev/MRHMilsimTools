//#include "defines.hpp"
#include "MRH_C_Path.hpp"
class MRHHeliTaxiWayPoints
{
	idd=19082018;
    onUnload = "call MRH_fnc_MilsimTools_HeliTaxi_clearWaypoints;";
	movingenable=true;
	
	class controls 
	{
////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT START (by Mr H., v1.063, #Qemode)
////////////////////////////////////////////////////////

class MRHGUIBack: IGUIBackMRHHeliTaxi
{
	idc = 2200;

	x = 0.195781 * safezoneW + safezoneX;
	y = 0.181 * safezoneH + safezoneY;
	w = 0.696094 * safezoneW;
	h = 0.66 * safezoneH;
};
class MRHWaypointsInfoText: RscStructuredTextMRHHeliTaxi
{
	idc = 1101;

	text = $STR_MRH_HeliTaxi_Waypoints; //--- ToDo: Localize;
	x = 0.195781 * safezoneW + safezoneX;
	y = 0.181 * safezoneH + safezoneY;
	w = 0.159844 * safezoneW;
	h = 0.022 * safezoneH;
};
class MRHWayPointList: RscListBoxMRHHeliTaxi
{
	idc = 1500;

	x = 0.195781 * safezoneW + safezoneX;
	y = 0.203 * safezoneH + safezoneY;
	w = 0.159844 * safezoneW;
	h = 0.506 * safezoneH;
};
class MRHClearWaypointsButton: RscButtonMRHHeliTaxi
{
	idc = 1601;
	action = "call MRH_fnc_MilsimTools_HeliTaxi_clearWaypoints;";

	text = $STR_MRH_HeliTaxi_ClearWaypoints; //--- ToDo: Localize;
	x = 0.195781 * safezoneW + safezoneX;
	y = 0.709 * safezoneH + safezoneY;
	w = 0.159844 * safezoneW;
	h = 0.044 * safezoneH;
};
class MRHGoButton: RscButtonMRHHeliTaxi
{
	idc = 1602;

	text = $STR_MRH_HeliTaxi_GoButton; //--- ToDo: Localize;
    action = "call MRH_fnc_MilsimTools_HeliTaxi_buttonAction;";
	x = 0.195781 * safezoneW + safezoneX;
	y = 0.753 * safezoneH + safezoneY;
	w = 0.159844 * safezoneW;
	h = 0.044 * safezoneH;
};
class MRHCancelButton: RscButtonMRHHeliTaxi
{
	idc = 1603;

	text = $STR_MRH_HeliTaxi_CancelButton; //--- ToDo: Localize;
	x = 0.195781 * safezoneW + safezoneX;
	y = 0.797 * safezoneH + safezoneY;
	w = 0.159844 * safezoneW;
	h = 0.044 * safezoneH;
};
class MRHMap: RscMapControlMRHHeliTaxi
{
	idc = 1200;
	onMouseButtonDblClick = "_this call MRH_fnc_MilsimTools_HeliTaxi_onMapDoubleClick";

	x = 0.355625 * safezoneW + safezoneX;
	y = 0.181 * safezoneH + safezoneY;
	w = 0.53625 * safezoneW;
	h = 0.66 * safezoneH;
};
////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT END
////////////////////////////////////////////////////////
    };
};