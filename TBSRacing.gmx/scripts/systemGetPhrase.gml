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
        case LANG.RUS: return "Режим авто"; break;
        case LANG.ENG: return "Car mode"; break;
        }
        break;    

    case 2:
        switch (global.lang)
        {
        case LANG.RUS: return "Режим оружия"; break;
        case LANG.ENG: return "Weapon mode"; break;
        }
        break;    
    }
    break;
    
case 1: // 
    switch (index)
    {
    case 0:
        switch (global.lang)
        {
        case LANG.RUS: return "Да"; break;
        case LANG.ENG: return "Yes"; break;
        }
        break;
    case 1:
        switch (global.lang)
        {
        case LANG.RUS: return "Нет"; break;
        case LANG.ENG: return "No"; break;
        }
        break;    
    }
    break;
}
