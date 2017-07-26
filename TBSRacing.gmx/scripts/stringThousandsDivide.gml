///stringThousandsDivide(str)
var ss = argument[0];
var pos = string_length(ss) - 3;
while (pos > 0)
{
    ss = string_insert(".", ss, pos + 1);
    pos -= 3;
}
return ss;
// 70000
