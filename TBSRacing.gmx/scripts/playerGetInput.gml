for (var i = 0; i < KEY.CNT; i++)
    key[i] = 0;
switch (os_type)
{
case os_win32:
    var mkey = controlBit & CONTROL.__KEYMOUSE,
        mgp = controlBit & CONTROL.__GAMEPAD;
    // 0 - pressed, 1 - const pressed, 2 - released, -1 - non active
    if ((mouse_check_button_pressed(mb_left)))// * mkey) || (gamepad_button_check_pressed(0, gp_shoulderr) * mgp))
        key[KEY.MOUSE_LEFT] = 0;
    else if ((mouse_check_button(mb_left)))// * mkey) || (gamepad_button_check(0, gp_shoulderr) * mgp))  
        key[KEY.MOUSE_LEFT] = 1;
    else if ((mouse_check_button_released(mb_left)))// * mkey) || (gamepad_button_check_released(0, gp_shoulderr) * mgp))  
        key[KEY.MOUSE_LEFT] = 2;
    else
        key[KEY.MOUSE_LEFT] = -1;

    if ((mouse_check_button_pressed(mb_right)))// * mkey) || (gamepad_button_check_pressed(0, gp_shoulderr) * mgp))
        key[KEY.MOUSE_RIGHT] = 0;
    else if ((mouse_check_button(mb_right)))// * mkey) || (gamepad_button_check(0, gp_shoulderr) * mgp))  
        key[KEY.MOUSE_RIGHT] = 1;
    else if ((mouse_check_button_released(mb_right)))// * mkey) || (gamepad_button_check_released(0, gp_shoulderr) * mgp))  
        key[KEY.MOUSE_RIGHT] = 2;
    else
        key[KEY.MOUSE_RIGHT] = -1;
        
    if (keyboard_check(vk_left))
        key[KEY.CAM_LEFT] = 1;
    if (keyboard_check(vk_up))
        key[KEY.CAM_TOP] = 1;
    if (keyboard_check(vk_right))
        key[KEY.CAM_RIGHT] = 1;
    if (keyboard_check(vk_down))
        key[KEY.CAM_BOTTOM] = 1;
    break;
    
/*case os_android:
    var j = oAndroidJoystick;
    if (j.active)
    {
        //if (j.len > j.maxD / 3)
        {
        // quarter
        var q = j.dir / 90;
        if (q == median(0.21, q, 0.79))
        {
            // top right
            key[KEY.RIGHT] = 1;
            key[KEY.TOP] = 1;
        }
        else
        if (q == median(0.8, q, 1.2))
            key[KEY.TOP] = 1;  
       else     
        if (q == median(1.21, q, 1.79))
        {
            // top left
            key[KEY.LEFT] = 1;
            key[KEY.TOP] = 1;
        }
        else
        if (q == median(1.8, q, 2.2))
            key[KEY.LEFT] = 1;
        else      
        if (q == median(2.21, q, 2.79))
        {
            // bot left
            key[KEY.LEFT] = 1;
            key[KEY.BOT] = 1;
        }
        else
        if (q == median(2.8, q, 3.2))
            key[KEY.BOT] = 1;  
        else     
        if (q == median(3.21, q, 3.79))
        {
            // bot right
            key[KEY.RIGHT] = 1;
            key[KEY.BOT] = 1;
        }
        else
        if (q == median(3.8, q, 3.99) || q == median(0, q, 0.2))
            key[KEY.RIGHT] = 1;
        }
    }
    break;*/
}

