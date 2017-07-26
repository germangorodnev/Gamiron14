// decrease money
global.money -= choosenItemPrice;

switch (folderAInd)
{
case 0: // a car
    var garage = oControl.json[? "garage"];
    var cars = garage[? "cars"];
    // add a car to a list
    ds_list_add(cars, choosenItem);
    break;
case 1: // a weapon
    var garage = oControl.json[? "garage"];
    var weaps = garage[? "weapons"];
    // add a weapon to a list
    ds_list_add(weaps, choosenItem);
    break;
}

with (oControl)
    gameSave();
shopChangeFolder(folderAInd, choosenItem);
