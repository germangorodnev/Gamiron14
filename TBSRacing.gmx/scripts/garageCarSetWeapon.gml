///garageCarSetWeapon(weap numb in stock, slot)
var wInd = argument[0],
    slInd = argument[1];
var gw = oGarageController.gWeapons;
var WEAPON = gw[| wInd];
var activeCars = oGarageController.activeCars;
var mecar = activeCars[| ind];
var mySlots = mecar[? "slots"];
var old = mySlots[| slInd];
ds_list_delete(gw, wInd);
mySlots[| slInd] = WEAPON;
if (old != -1)    
    ds_list_add(gw, old);
    




