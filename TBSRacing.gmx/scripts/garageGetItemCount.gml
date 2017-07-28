///garageGetItemCount(0-cars\1-weaps, enum)
var garage = oControl.json[? "garage"],
    em = argument[1],
    CNT = 0;
switch (argument[0])
{
case 0:
    var garageCars = garage[? "cars"];
    for (var i = 0, cc = ds_list_size(garageCars); i < cc; i++)
        if (garageCars[| i] == em)
            CNT++;
    // PLUS THE TEAM ONE
    var team = oControl.json[? "cars"];
    for (var car = 0, carcnt = ds_list_size(team); car < carcnt; car++)
    {
        var c = team[| car];
        if (c[? "type"] == em)
            CNT++;
    }
    break;
case 1:
    var garageWeaps = garage[? "weapons"];
    for (var i = 0, cc = ds_list_size(garageWeaps); i < cc; i++)
        if (garageWeaps[| i] == em)
            CNT++;
    // PLUS THE TEAM ONE
    var team = oControl.json[? "cars"];
    for (var car = 0, carcnt = ds_list_size(team); car < carcnt; car++)
    {
        var c = team[| car];
        for (var slot = 0, slots = c[? "slots"], slcnt = ds_list_size(slots);
            slot < slcnt; slot++)
        {
            var sl = slots[| slot];
            if (sl == em) 
                CNT++;
        }   
    }
    break;
}
return CNT;
