var places = oControl.json[? "places"];
var garage = places[? "garage"],
    shop = places[? "shop"];
    
with (instance_create(width * garage[? "x"], height * garage[? "y"], oGaragePoint))
{
    // garage button
}

with (instance_create(width * shop[? "x"], height * shop[? "y"], oShopPoint))
{
    // shop button
}

// now create levels
// go through all of them and create 1 of each type -- if not already done
var lvls = oControl.json[? "levels"],
    demolish = 0,
    demolish_race = 0;
for (var i = 0, cc = ds_list_size(lvls); i < cc; i++)
{
    var lvl = lvls[| i];
    if (lvl[? "DONE"] == 1) 
        continue;
    // wow, it is not done!
    switch (lvl[? "type"])
    {
    case MAP_POINT.__DEMOLISH:
        if (!demolish)
        {
            demolish = 1;
            with (instance_create(width * lvl[? "x"], height * lvl[? "y"], oMapLevelPoint))
            {
                mapLevelPointInitByMap(lvl, MAP_POINT.__DEMOLISH, i);
            }
        }
        break;
    case MAP_POINT.__DEMOLISH_RACE:
        if (!demolish_race)
        {
            demolish_race = 1;
            with (instance_create(width * lvl[? "x"], height * lvl[? "y"], oMapLevelPoint))
            {
                mapLevelPointInitByMap(lvl, MAP_POINT.__DEMOLISH_RACE, i);
            }
        }
        break;    
    }
    if (demolish && demolish_race)
        break;
}
