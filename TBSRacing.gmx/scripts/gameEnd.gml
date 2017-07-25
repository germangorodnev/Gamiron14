///gameEnd(winner team)
// translate scores into money
global.money += oLevelEnd.scorefin * 10;
    with (instance_create(view_xview, view_yview, oNextRoom))
        nextRoomEffectInit(1, rWorldMap, 1,
            global.guiW / 2, global.guiH / 2, 15,
            global.guiW / 2, global.guiH / 2, 15
        );
// mark level as passed
with (oControl)
{
    var lvls = json[? "levels"];
    var currlvl = lvls[| global.lvlIndex];
    currlvl[? "DONE"] = 1;
    gameSave();
}

