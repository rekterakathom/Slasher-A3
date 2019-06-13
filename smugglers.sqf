missionNamespace setVariable ["teleport_dest", 1, true];
publicVariable "teleport_dest";

null = ["smuggler_1",false,"MineDetector",[""],3000,"MineDetector"] execVM "AL_smuggler\alias_smugg.sqf";
null = ["smuggler_2",false,"MineDetector",[""],3000,"MineDetector"] execVM "AL_smuggler\alias_smugg.sqf";

sleep 10*60;

missionNamespace setVariable ["teleport_dest", 2, true];
publicVariable "teleport_dest";
