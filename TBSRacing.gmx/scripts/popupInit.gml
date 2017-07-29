///popupInit(x, y, string)
with (instance_create(argument[0], argument[1], oPopupText))
{
    text = argument[2];
    if (argument_count > 3)
    {
        switch (argument[3])
        {
        case "gray":
            col1 = make_colour_hsv(0, 6, 114);
            col2 = make_colour_hsv(0, 6, 88);
            col3 = make_colour_hsv(0, 6, 25);
            col4 = col2;
            break;
        }
    }
}
