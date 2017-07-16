/// cycle(value, min, max)
var result, delta;
delta = (argument[2] - argument[1]);
result = (argument[0] - argument[1]) mod delta;
if (result < 0) result += delta;
return result + argument[1];
