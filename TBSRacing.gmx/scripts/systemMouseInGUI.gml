if (!instance_exists(oGameController))
    return 0;
return ((mouse_y - view_yview[0]) >= oGameController.guiy1);
