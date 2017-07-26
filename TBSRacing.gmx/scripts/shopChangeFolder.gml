///shopChangeFolder(0-cars\1-weaps, choosen=-1)
swipex = 0;
folderAInd = argument[0];
for (var i = 0; i < foldersCount; i++)
    folderA[i] = 0;
folderA[folderAInd] = 1;

var chId = -1;
if (argument_count > 1)
{
    chId = argument[1];
    choosenItem = chId;
}

if (!surface_exists(surf))
    surf = surface_create(bottomw, bottomh);
surface_set_target(surf);
draw_clear_alpha(c_black, 0);

switch (folderAInd)
{
case 0: //cars
    // draw all posible cars
    var rectx = 0;
    for (var i = 0; i < carsCount; i++)
    {
        var xbeg = swipex + rectx,
            col = boticocol;
        var _arr = shopGetCarInfo(CARS.__ORANGE + i);
        ////////////////////////////////////////////////////////////////////
        if (chId == CARS.__ORANGE + i)
        {
            col = boticocolch;
            sItem = _arr[0];
        }
        drawCroppedRect(xbeg, 0, xbeg + boticow, boticoh, col, 1, 5);
        draw_sprite_ext(_arr[0], 0, 
            xbeg + boticow / 2 + _arr[2], 
            boticoh / 2 + _arr[3], _arr[1], _arr[1],
            0, image_blend, image_alpha);
        _arr = 0;
        rectx += boticow + boticobetw;
        rightX = xbeg + boticow + 5;
    }
    break;
case 1: // weaps
    // draw all posible weaps
    var rectx = 0;
    for (var i = 0; i < weaponsCount; i++)
    {
        var xbeg = swipex + rectx,
            col = boticocol;
        var _arr = shopGetWeaponInfo(i);
        ////////////////////////////////////////////////////////////////////
        if (chId == i)
        {
            col = boticocolch;
            sItem = _arr[0];
        }
        drawCroppedRect(xbeg, 0, xbeg + boticow, boticoh, col, 1, 5);
        draw_sprite_ext(_arr[0], 0, 
            xbeg + boticow / 2 + _arr[2], 
            boticoh / 2 + _arr[3], _arr[1], _arr[1],
            0, image_blend, image_alpha);
        
        rectx += boticow + boticobetw;
        rightX = xbeg + boticow + 5;
    }
    break;
}
surface_reset_target();

if (chId != -1)
{
    ciy = cy1 + sprite_get_height(sItem) / 2 + 20;
    var _arr;
    switch (folderAInd)
    {
    case 0:
        _arr = gameGetCarIndepthInf(choosenItem);
        paramsCount = 3;
        cipname[0] = systemGetPhrase(5, -1);
        cipval[0] = _arr[1];
        cipname[1] = systemGetPhrase(3, 3);
        cipval[1] = garageGetItemCount(0, choosenItem);;
        cipname[2] = systemGetPhrase(5, -2);
        cipval[2] = _arr[2];
        choosenItemPrice = _arr[2];
        break;
    case 1:
        _arr = gameGetWeaponIndepthInf(choosenItem);
        paramsCount = 3;
        cipname[0] = systemGetPhrase(4, -2);
        cipval[0] = _arr[1];
        cipname[1] = systemGetPhrase(3, 3);
        cipval[1] = garageGetItemCount(1, choosenItem);
        cipname[2] = systemGetPhrase(5, -2);
        cipval[2] = _arr[2];
        choosenItemPrice = _arr[2];
        break;
    }
    ciname = _arr[0];
    cidesc = _arr[3];
    cinamey = ciy + sprite_get_height(sItem) / 2 + 30;
}

