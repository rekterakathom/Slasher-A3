
_nvg = hmd slasher;                  //Set variable
waitUntil { _nvg == "NVGoggles" };  //Wait until the slasher puts on NVG
slasher unassignItem "NVGoggles";  //Take them 
slasher removeItem "NVGoggles";   //Destroy them
//hint "No nightvision for you!";  //Tease the slasher
execVM "slasher.sqf";           // Loop the script