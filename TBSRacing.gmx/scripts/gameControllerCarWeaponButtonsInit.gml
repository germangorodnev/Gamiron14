var xbeg = oGameController.carhpx + sprite_get_width(sCarHP) / 2 + 65,
    ybeg = oGameController.guiy1 + 50;
for (var i = 0, cnt = selectedCar.weaponsCount; i < cnt; i++)
{
    if (selectedCar.weapon[i] == noone)
        continue;
    var bt = instance_create(0, 0, oButtonCarGUIWeapon);
    bt.weap = selectedCar.weapon[i];
    with (bt)
    {
        var ww = 140 + 4,
            hh = 75 + 4;
        switch (weap.wType)
        {
        case WEAPONS.__SIMPLE:
            spr = sGunSimpleIco;
            img = 0;
            rx1 = xbeg;
            ry1 = ybeg;
            rx2 = rx1 + ww;
            ry2 = ry1 + hh;
            
            xx = rx1 + ww / 2;
            yy = ry1 + hh / 2;
            
            
            var width = max(sprite_get_width(sShootSign), sprite_get_height(sShootSign));
            nsx1 = rx1 - width div 2;
            nsy1 = ry2 - width div 2;
            nsx2 = nsx1 + width + 4;
            nsy2 = nsy1 + width + 4;
            
            nsx = nsx1 + 2 + width / 2;
            nsy = nsy1 + 2 + width / 2;
            break;
        
        case WEAPONS.__ROCKET:
            spr = sGunRocketIco;
            img = 0;
            rx1 = xbeg;
            ry1 = ybeg;
            rx2 = rx1 + ww;
            ry2 = ry1 + hh;
            
            xx = rx1 + ww / 2;
            yy = ry1 + hh / 2;
            
            var width = max(sprite_get_width(sShootSign), sprite_get_height(sShootSign));
            nsx1 = rx1 - width div 2;
            nsy1 = ry2 - width div 2;
            nsx2 = nsx1 + width + 4;
            nsy2 = nsy1 + width + 4;
            
            nsx = nsx1 + 2 + width / 2;
            nsy = nsy1 + 2 + width / 2;
            break;

        case WEAPONS.__SHIELD:
            spr = sGunShieldIco;
            img = 0;
            rx1 = xbeg;
            ry1 = ybeg;
            rx2 = rx1 + ww;
            ry2 = ry1 + hh;
            
            xx = rx1 + ww / 2;
            yy = ry1 + hh / 2;
            
            var width = max(sprite_get_width(sShootSign), sprite_get_height(sShootSign));
            nsx1 = rx1 - width div 2;
            nsy1 = ry2 - width div 2;
            nsx2 = nsx1 + width + 4;
            nsy2 = nsy1 + width + 4;
            
            nsx = nsx1 + 2 + width / 2;
            nsy = nsy1 + 2 + width / 2;
            break;
        }
        
        xbeg = rx2 + 35;
        
        image_xscale = (rx2 - rx1) / 32;
        image_yscale = (ry2 - ry1) / 32;
    }
}
