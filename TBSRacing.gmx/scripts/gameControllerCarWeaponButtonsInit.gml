var xbeg = oGameController.carhpx + sprite_get_width(sCarHP) / 2 + 45,
    ybeg = oGameController.guiy1 + 50;
for (var i = 0, cnt = selectedCar.weaponsCount; i < cnt; i++)
{
    if (selectedCar.weapon[i] == noone)
        continue;
    var bt = instance_create(0, 0, oButtonCarGUIWeapon);
    bt.weap = selectedCar.weapon[i];
    with (bt)
    {
        switch (weap.wType)
        {
        case WEAPONS.__SIMPLE:
            spr = sGunSimpleIco;
            img = 0;
            var ww = sprite_get_width(sGunSimpleIco) + 4,
                hh = sprite_get_height(sGunSimpleIco) + 4;
            rx1 = xbeg;
            ry1 = ybeg;
            rx2 = rx1 + ww;
            ry2 = ry1 + hh;
            
            xx = rx1 + ww / 2;
            yy = ry1 + hh / 2;
        break;
        }
    }
}
