///gameBulletCreate(x, y, BULLETS type)
var obj = noone;
switch (argument[2])
{
case BULLETS.__SIMPLE:
    obj = oBulletSimple;
    break;
case BULLETS.__ROCKET:
    obj = oRocketBullet;
    break;
}
var bb = instance_create(argument[0], argument[1], obj);
return bb;
