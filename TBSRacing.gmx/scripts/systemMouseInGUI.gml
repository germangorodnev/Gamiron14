if (!instance_exists(oGameController))
    return 0;
return (
((mouse_y - view_yview[0]) >= oGameController.guiy1)
|| 
(instance_position(mouse_x, mouse_y, oButtonCarGUIWeaponCarMode) != noone)
);
