

while {true} do {

_nvg = hmd player;                  //Set variable
_mode = currentVisionMode player;
_slasher = player getVariable ["isSlasher", 0];

if (player isEqualTo slasher) then {
hint "slasher";
waitUntil { _nvg == "NVGoggles" };  //Wait until the slasher puts on NVG
slasher unassignItem "NVGoggles";  //Take them 
slasher removeItem "NVGoggles";   //Destroy them
//hint "No nightvision for you!";  //Tease the slasher

} else {



if (_mode == 1) then {




} else {

};
};
sleep 1;
};