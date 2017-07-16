/// angleRotate(angle, target, speed)
var diff;
// 180 is to be replaced by "pi" for radians
diff = cycle(argument[1] - argument[0], -180, 180); //angle_difference(argument[0], argument[1] - argument[0]);
// clamp rotations by speed:
if (diff < -argument[2]) return argument[0] - argument[2];
if (diff > argument[2]) return argument[0] + argument[2];
// if difference within speed, rotation's done:
return argument[1];
