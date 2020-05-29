
execVM "ini_map.sqf"; //Initialize the map

_param = "map" call BIS_fnc_getParamValue; //Check which map has been chosen
if (_param == 1) then {
execVM "boxes.sqf"; //Initialize the crate spawning system for the haunted forest
} else {
execVM "boxes_radar.sqf"; //Initialize the crate spawning system for the abandoned radar
};

execVM "slasher.sqf"; //Initialize the anti-nvg system

execVM "smugglers.sqf"; //Initialize the portal system

surv = [survivor1,survivor2,survivor3,survivor4]; //Array of survivors
publicVariable "surv"; //Set the array public

_param = "surv_light" call BIS_fnc_getParamValue; //Check the survivor light parameter
if (_param == 0) then {
{
_x unassignItem "NVGoggles";  //Take them 
_x removeItem "NVGoggles"; 
_x addWeapon "hgun_Pistol_heavy_01_green_F";
_x addHandgunItem "acc_flashlight_pistol";
 } forEach surv;
};

sleep 30;

gate setVariable ['bis_disabled_Door_1',0,true]; //Unlock the door
//[gate, "Door_1_rot", 1] remoteExec ["animate", 0, false]; //Why doesn't this work?

remoteExec ["functions_fnc_openDoor", 0, false]; //remoteExec the door opening to all players, as a function...


