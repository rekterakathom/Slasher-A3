loota hideObjectGlobal true;
loota_1 hideObjectGlobal true;
loota2 hideObjectGlobal true;
loota3 hideObjectGlobal true;
loota4 hideObjectGlobal true;
loota5 hideObjectGlobal true;
loota6 hideObjectGlobal true;
loota8 hideObjectGlobal true;


_rNumber1 = random [100, 120, 140]; //Generate the first random number for a timer
_rNumber1 = round _rNumber1;
sleep _rNumber1;
titleText ["Four boxes containing radios have appeared!", "PLAIN", 1];
playSound "FD_Target_PopDown_Large_F";
playSound "FD_Target_PopDown_Large_F";
loota3 hideObjectGlobal false;
loota4 hideObjectGlobal false;
loota5 hideObjectGlobal false;
loota6 hideObjectGlobal false;


_rNumber2 = round random [100, 120, 140]; //Generate the second random number for a timer
_rNumber2 = round _rNumber2;
sleep _rNumber2;
titleText ["A box containing an explosive has appeared!", "PLAIN", 1];
playSound "FD_Target_PopDown_Large_F";
playSound "FD_Target_PopDown_Large_F";
loota2 hideObjectGlobal false;


_rNumber3 = round random [100, 120, 140]; //Generate the third random number for a timer
_rNumber3 = round _rNumber3;
sleep _rNumber3;
titleText ["Two boxes containing pistols have appeared!", "PLAIN", 1];
playSound "FD_Target_PopDown_Large_F";
playSound "FD_Target_PopDown_Large_F";
loota hideObjectGlobal false;
loota_1 hideObjectGlobal false;


_rNumber4 = round random [580, 600, 620]; //Generate the third random number for a timer
_rNumber4 = round _rNumber4;
sleep _rNumber4;
titleText ["A box containing portal keys has appeared!", "PLAIN", 1];
playSound "FD_Target_PopDown_Large_F";
playSound "FD_Target_PopDown_Large_F";
loota8 hideObjectGlobal false;
