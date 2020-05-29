
missionNamespace setVariable ["teleport_dest", 1, true]; //Create a variable
publicVariable "teleport_dest";                         //Make it public

_param = "map" call BIS_fnc_getParamValue; //Check which map has been chosen and then place the maps smuggler
if (_param == 1) then {
null = ["smuggler_radar",false,"MineDetector",[""],3000,"MineDetector"] execVM "AL_smuggler\alias_smugg.sqf";
} else {
null = ["smuggler_forest",false,"MineDetector",[""],3000,"MineDetector"] execVM "AL_smuggler\alias_smugg.sqf";
};

null = ["smuggler_1",false,"MineDetector",[""],3000,"MineDetector"] execVM "AL_smuggler\alias_smugg.sqf";  //Create the smuggler for the slasher

sleep 10*60; //Wait ten minutes

missionNamespace setVariable ["teleport_dest", 2, true]; //Change the variable
publicVariable "teleport_dest";                         //And make sure it is public
