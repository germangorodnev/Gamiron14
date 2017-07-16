///gameControllerGuistateSet(GUI_STATES new)
guistate = argument[0];

// resets
pathPointTrack = -1;

switch (argument[0])
{
case GUI_STATES.__GUI:
    with (oButtonCarGUIEditPoints)
    {
        active = 0;
        col = colInactive;
    }
    with (oButtonCarGUIDeletePoints)
    {
        active = 0;
        col = colInactive;
    }    
    break;

case GUI_STATES.__PATH_EDIT:
    with (oButtonCarGUIEditPoints)
    {
        active = 1;
        col = colActive;
    }
    with (oButtonCarGUIDeletePoints)
    {
        active = 0;
        col = colInactive;
    }
    break;
    
case GUI_STATES.__PATH_ERASE:
    with (oButtonCarGUIEditPoints)
    {
        active = 0;
        col = colInactive;
    }
    with (oButtonCarGUIDeletePoints)
    {
        active = 1;
        col = colActive;
    }
    break;
}
