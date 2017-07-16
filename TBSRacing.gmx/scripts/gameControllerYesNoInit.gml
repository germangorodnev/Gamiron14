///gameControllerYesNoInit(string question)
yesno = 0;
gameSetState(GAME_STATES.__TURNENDYESNO);
var q = instance_create(0, 0, oYesno);
q.rt = argument[0];
