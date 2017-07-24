var f = file_text_open_read("gamesave.json");
if (f == -1)   
{
    file_copy("gamesavedef.json", "gamesave.json");
    gameLoad();
    exit;
}   

// open json
var txt = "";
while (!file_text_eof(f))
{
    txt += file_text_read_string(f);
    file_text_readln(f);
}

file_text_close(f);

json = json_decode(txt);
// system params
global.lang = real(json[? "language"]);
global.sound = real(json[? "sound"]);
// game params
global.lvlPassed = real(json[? "levelsPassed"]);
global.carsCount = real(json[? "carsCount"]);

// parse the cars now
global.playerCars = json[? "cars"];



