collideTrigger = 0;
moveTime = 0;

var flags = 0,  
    px = -1,
    py = -1;
do
{
    var dir = irandom(360); 
    px = phy_position_x + lengthdir_x(wanderLen, dir);
    py = phy_position_y + lengthdir_y(wanderLen, dir);
    if (!pointInRoom(px, py))
    {
        px = -1;
        py = -1;
        flags++;
    }
} until ((flags >= 8) || (px != -1 && py != -1))
pointX = px;
pointY = py;

