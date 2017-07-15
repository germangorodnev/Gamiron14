///systemGetPhrase(group, index)
var group = argument[0],
    index = argument[1];
switch (group)
{
case 0:
    // in-game
    switch (index)
    {
    case 0:
        switch (global.lang)
        {
        case LANG.RUS: return "Конец хода"; break;
        case LANG.ENG: return "End turn"; break;
        }
        break;
        
    case 1:
        switch (global.lang)
        {
        case LANG.RUS: return "Режим пути"; break;
        case LANG.ENG: return "Path mode"; break;
        }
        break;    

    case 2:
        switch (global.lang)
        {
        case LANG.RUS: return "Режим управл"; break;
        case LANG.ENG: return "Car mode"; break;
        }
        break;    
    }
    break;
}
