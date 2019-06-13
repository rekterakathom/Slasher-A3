
missionNamespace setVariable ["teleport_dest", 1, true]; //Create a variable
publicVariable "teleport_dest";                         //Make it public

null = ["smuggler_1",false,"MineDetector",[""],3000,"MineDetector"] execVM "AL_smuggler\alias_smugg.sqf";  //Create the smuggler
null = ["smuggler_2",false,"MineDetector",[""],3000,"MineDetector"] execVM "AL_smuggler\alias_smugg.sqf"; //Create the second smuggler

sleep 10*60; //Wait ten minutes

missionNamespace setVariable ["teleport_dest", 2, true]; //Change the variable
publicVariable "teleport_dest";                         //And make sure it is public
