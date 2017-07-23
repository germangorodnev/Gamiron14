///addTrailingZeroes(int, totalDigit)
var s = string(argument[0]),
    len = argument[1];
s = string_repeat("0", len - string_length(s)) + s;
return s;
