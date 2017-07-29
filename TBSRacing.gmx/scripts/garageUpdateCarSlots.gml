with (oGarageCar)
{
    var car = oGarageController.activeCars[| ind];
    var ctype = car[? "type"];
    if (ctype > -1)
    {
        var _arr = shopGetCarInfo(ctype);
        spr = _arr[0];
        var xc = sprite_get_xoffset(spr),
            yc = sprite_get_yoffset(spr);
        var rxc = sprite_get_width(spr) / 2,
            ryc = sprite_get_height(spr) / 2;
        xoff = rxc - xc;
        yoff = ryc - yc;
        
        // slots now
        var mySlots = car[? "slots"],
            ww = 0;
        var _a = gameGetCarIndepthInf(ctype);
        wcount = _a[1];
        wspr[wcount] = 0;
        for(var i = 0; i < wcount; i++)
        {
            wspr[i] = -1;
            woff[i] = 0;
            wlen[i] = 0;
        }
        while (ds_list_size(mySlots) < wcount)
        {
            ds_list_add(mySlots, -1);
        }

        for (var slot = 0, slc = ds_list_size(mySlots); slot < slc; slot++)
        {
            wspr[slot] = -1;
            var slval = mySlots[| slot];
            if (slval == -1)
                continue; 
            
            // add the weapon to garage's weaponary
            var _arr = carWeaponPlaceInf(ctype, slot, slval);
            wspr[slot] = _arr[2];
            woff[slot] = _arr[0];
            wlen[slot] = _arr[1];
        }
    }
}
