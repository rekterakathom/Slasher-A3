
_nvg = hmd slasher;
waitUntil { _nvg == "NVGoggles" };
slasher unassignItem "NVGoggles";
slasher removeItem "NVGoggles";
hint "No nightvision for you!";
execVM "slasher.sqf";