// save json
var f = file_text_open_write("gamesave.json");

// save vars
json[? "language"] = global.lang;
json[? "sound"] = global.sound;
json[? "money"] = global.money;

var jsontxt = json_encode(json);
file_text_write_string(f, jsontxt);
file_text_close(f);
