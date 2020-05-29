_survspawn1 = getPos surv_1;
_survspawn2 = getPos surv_2;
_survspawn3 = getPos surv_3; //Variables for the survivor & slasher spawns for map 2 (Abandoned Radar)
_survspawn4 = getPos surv_4;
_slasherspawn = getPos slash;
_tppos = getPos tppos; // Spawn of slasher... spawn for map 1


_param = "map" call BIS_fnc_getParamValue; //Check which map has been chosen
if (_param == 1) then {
deleteVehicle escape_1;
deleteVehicle slash_music_1;
deleteVehicle hunter_tr_1; //Delete triggers not needed
deleteVehicle hunter_tr_2;
deleteVehicle hunter_tr_3;
deleteVehicle sniper_5;
deleteVehicle sniper_6;
deleteVehicle sniper_7;
deleteVehicle sniper_8;

survivor1 setPos _survspawn1;
survivor2 setPos _survspawn2;
survivor3 setPos _survspawn3; //Set spawns
survivor4 setPos _survspawn4;

slasher removeHandgunItem "acc_flashlight_pistol";
lgt = "Chemlight_red" createVehicle [0,0,0]; //Set map specific stuff like slasher light source
lgt attachTo [slasher, [0,-0.03,0.07], "LeftShoulder"];

sleep 1; //Wait a sec and delete the zone loader
deleteVehicle loader_1;

} else {
teleport1 setPos _tppos; //Set slasher spawn spawn

deleteVehicle escape_2;
deleteVehicle slash_music_2; //Delete triggers not needed
deleteVehicle sniper_1;
deleteVehicle sniper_2;
deleteVehicle sniper_3;
deleteVehicle sniper_4;

sleep 1; //Wait a sec and delete the zone loader
deleteVehicle loader_2;

};
