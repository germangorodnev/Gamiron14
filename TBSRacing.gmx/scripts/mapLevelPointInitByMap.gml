///mapLevelPointInitByMap(map, MAP_POINT, index in list)
var mp = argument[0];
lvlto = asset_get_index(mp[? "room"]);
h1text = ds_list_find_value(mp[? "name"], global.lang);
dtext = ds_list_find_value(mp[? "desc"], global.lang);
draw_set_font(fTurnEnd);
h1w = 15 + string_width(h1text);
index = argument[2];
switch (argument[1])
{
    case MAP_POINT.__DEMOLISH:
        imageI = 2;
        break;
    case MAP_POINT.__DEMOLISH_RACE:
        imageI = 3;
        col = make_colour_hsv(220, 187, 127);
        break;
}
