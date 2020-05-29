//Hide the boxes
loota10 hideObjectGlobal true; //Pistols
loota11 hideObjectGlobal true; //Pistols
loota12 hideObjectGlobal true; //Explosive
loota13 hideObjectGlobal true; //First aid + GPS
loota14 hideObjectGlobal true; //First aid + GPS
loota18 hideObjectGlobal true; //Keys


_spawn_1 = getPos crate_1;
_spawn_2 = getPos crate_2;
_spawn_3 = getPos crate_3;
_spawn_4 = getPos crate_4;
_spawn_5 = getPos crate_5;
_spawn_6 = getPos crate_6;
_spawn_7 = getPos crate_7;
_spawn_8 = getPos crate_8;
_spawn_9 = getPos crate_9;
_spawn_10 = getPos crate_10; //This mess should assign some positions to these variables so we can put them into a beautiful array later
_spawn_11 = getPos crate_11;
_spawn_12 = getPos crate_12;
_spawn_13 = getPos crate_13;
_spawn_14 = getPos crate_14;
_spawn_15 = getPos crate_15;
_spawn_16 = getPos crate_16;
_spawn_17 = getPos crate_17;
_spawn_18 = getPos crate_18;
_spawn_19 = getPos crate_19;

//This is stupid. Too bad! So yeah putting our variables into this super long and stupid array and shuffling the array, thus resulting in random crate spawns!
_boxSpawns = [_spawn_1,_spawn_2,_spawn_3,_spawn_4,_spawn_5,_spawn_6,_spawn_7,_spawn_8,_spawn_9,_spawn_10,_spawn_11,_spawn_12,_spawn_13,_spawn_14,_spawn_15,_spawn_16,_spawn_17,_spawn_18,_spawn_19] call BIS_fnc_arrayShuffle;

_boxPos1 = _boxSpawns # 0; //Okay this may not be as stupid as the stuff above
_boxPos2 = _boxSpawns # 1;
_boxPos3 = _boxSpawns # 2;
_boxPos4 = _boxSpawns # 3;
_boxPos5 = _boxSpawns # 4;
_boxPos6 = _boxSpawns # 5; //Now we take spawn positions from our beautiful random array and put them into variables which define where the crates end up

loota10 setPos _boxPos1;
loota11 setPos _boxPos2;
loota12 setPos _boxPos3; //Put the crates in place
loota13 setPos _boxPos4;
loota14 setPos _boxPos5;
loota18 setPos _boxPos6;


_param = "TFAR_used" call BIS_fnc_getParamValue; //Check if the TFAR parameter is enabled or not
if (_param == 1) then {
loota13 addItemCargoGlobal ["TFAR_anprc152", 1]; //If enabled, add radios to the crates
loota14 addItemCargoGlobal ["TFAR_anprc152", 1]; 
loota13 addItemCargoGlobal ["TFAR_anprc152", 1]; 
loota14 addItemCargoGlobal ["TFAR_anprc152", 1]; 
};


_rNumber1 = random [100, 120, 140]; //Generate the first random number for a timer (in seconds)
_rNumber1 = round _rNumber1;
sleep _rNumber1;
titleText ["Two boxes containing supplies have appeared!", "PLAIN", 1]; //Tell the world that the boxes have appeared
playSound "FD_Target_PopDown_Large_F"; //Play a sound effect as well
playSound "FD_Target_PopDown_Large_F"; //Make it louder by playing it twice
loota13 hideObjectGlobal false; //Reveal the boxes
loota14 hideObjectGlobal false;



_rNumber2 = round random [100, 120, 140]; //Generate the second random number for a timer
_rNumber2 = round _rNumber2;
sleep _rNumber2;
titleText ["A box containing an explosive has appeared!", "PLAIN", 1];
playSound "FD_Target_PopDown_Large_F";
playSound "FD_Target_PopDown_Large_F";
loota12 hideObjectGlobal false;


_rNumber3 = round random [100, 120, 140]; //Generate the third random number for a timer
_rNumber3 = round _rNumber3;
sleep _rNumber3;
titleText ["Two boxes containing pistols have appeared!", "PLAIN", 1];
playSound "FD_Target_PopDown_Large_F";
playSound "FD_Target_PopDown_Large_F";
loota10 hideObjectGlobal false;
loota11 hideObjectGlobal false;


_rNumber4 = round random [580, 600, 620]; //Generate the fourth random number for a timer
_rNumber4 = round _rNumber4;
sleep _rNumber4;
titleText ["A box containing portal keys has appeared!", "PLAIN", 1];
playSound "FD_Target_PopDown_Large_F";
playSound "FD_Target_PopDown_Large_F";
loota18 hideObjectGlobal false;

