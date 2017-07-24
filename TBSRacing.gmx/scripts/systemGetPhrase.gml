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
    
case 2: // map
    switch (index)
    {
    case 0:
        switch (global.lang)
        {
        case LANG.RUS: return "Гараж"; break;
        case LANG.ENG: return "Garage"; break;
        }
        break;
    case 1:
        switch (global.lang)
        {
        case LANG.RUS: return "Настройте свою команду"; break;
        case LANG.ENG: return "Setup your team"; break;
        }
        break;

    case 2:
        switch (global.lang)
        {
        case LANG.RUS: return "Мастерская"; break;
        case LANG.ENG: return "Body shop"; break;
        }
        break;
    case 3:
        switch (global.lang)
        {
        case LANG.RUS: return "Купите машины и оружия"; break;
        case LANG.ENG: return "Buy cars and weapons"; break;
        }
        break;
    }
    break;
}
