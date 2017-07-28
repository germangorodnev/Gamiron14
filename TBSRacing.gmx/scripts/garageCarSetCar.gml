///garageCarSetCar(car index in GARAGE->CARS)
var gInd = argument[0];
var gw = oGarageController.gWeapons,
    gc = oGarageController.gCars;
var activeCars = oGarageController.activeCars;
var mecar = activeCars[| ind];
var mySlots = mecar[? "slots"];
// first of all - unplug everything from current car
for (var slot = 0, slc = ds_list_size(mySlots); slot < slc; slot++)
{
    var slval = mySlots[| slot];
    if (slval == -1)
        continue; 
    // add the weapon to garage's weaponary
    ds_list_add(gw, slval);
}
// now add the car itself to the garage too
if (mecar[? "type"] != -1)
    ds_list_add(gc, mecar[? "type"]);
// and set the slot to -1
mecar[? "type"] = -1;
ds_list_clear(mySlots);

if (gInd != -1)
{
    // set new car
    var TYPE = gc[| gInd];
    mecar[? "type"] = TYPE; // set to slot
    ds_list_delete(gc, gInd); // remove from garage
    // set amount of slots to n
    var _arr = gameGetCarIndepthInf(TYPE);
    while (ds_list_size(mySlots) < _arr[1])
    {
        ds_list_add(mySlots, -1);
    }
}


