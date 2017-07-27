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
        for (var slot = 0, slc = ds_list_size(mySlots); slot < slc; slot++)
        {
            var slval = mySlots[| slot];
            if (is_undefined(slval))
                continue; 
            
            // add the weapon to garage's weaponary
            var _arr = carWeaponPlaceInf(ctype, ww, slval[? "type"]);
            wspr[slot] = _arr[2];
            woff[slot] = _arr[0];
            wlen[slot] = _arr[1];
            ww++;
        }
        wcount = ww;
    }
}
