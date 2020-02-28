
execVM "ini_map.sqf"; //Initialize the map

execVM "boxes.sqf"; //Initialize the crate spawning system
execVM "slasher.sqf"; //Initialize the anti-nvg system
execVM "smugglers.sqf"; //Initialize the portal system
[aurora_2] execvm "AL_ambient_SFX\rupture.sqf"; //Initialize the space-time rupture in the sky!
[broken] execvm "AL_ambient_SFX\sparky.sqf"; //Initialize sparks on the hunter antennas
[broken2] execvm "AL_ambient_SFX\sparky.sqf"; //Initialize sparks on the hunter antennas
[broken3] execvm "AL_ambient_SFX\sparky.sqf"; //Initialize sparks on the hunter antennas

surv = [survivor1,survivor2,survivor3,survivor4]; //Array of survivors
publicVariable "surv"; //Set the array public

_param = "surv_light" call BIS_fnc_getParamValue; //Check which map has been chosen
if (_param == 1) then {
{
_x unassignItem "NVGoggles";  //Take them 
_x removeItem "NVGoggles"; 
_x addWeapon "hgun_Pistol_heavy_01_green_F";
_x addHandgunItem "acc_flashlight_pistol";
 } forEach surv;
};

sleep 30;

gate setVariable ['bis_disabled_Door_1',0,true]; //Open the door for the slasher
gate animate ["Door_1_rot", 1]; //Open the door for the slasher

