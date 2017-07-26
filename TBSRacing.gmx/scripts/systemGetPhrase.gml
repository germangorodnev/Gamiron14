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
        case LANG.RUS: return "Победа"; break;
        case LANG.ENG: return "Win"; break;
        }
        break;    

    case 2:
        switch (global.lang)
        {
        case LANG.RUS: return "Поражение"; break;
        case LANG.ENG: return "Defeat"; break;
        }
        break;
            
    case 3:
        switch (global.lang)
        {
        case LANG.RUS: return "Вы действительно хотите завершить ход?"; break;
        case LANG.ENG: return "Do you really want to end the turn?"; break;
        }
        break;
         
    case 4:
        switch (global.lang)
        {
        case LANG.RUS: return "Базовые очки"; break;
        case LANG.ENG: return "Base score"; break;
        }
        break; 
        
    case 5:
        switch (global.lang)
        {
        case LANG.RUS: return "Очки престижа"; break;
        case LANG.ENG: return "Prestige points"; break;
        }
        break; 
        
    case 6:
        switch (global.lang)
        {
        case LANG.RUS: return "ИТОГ"; break;
        case LANG.ENG: return "Total"; break;
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
    case 2:
        switch (global.lang)
        {
        case LANG.RUS: return "OK"; break;
        case LANG.ENG: return "OK"; break;
        }
        break;    
    case 3:
        switch (global.lang)
        {
        case LANG.RUS: return "Назад"; break;
        case LANG.ENG: return "Back"; break;
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
    
    
case 3: // shop
    switch (index)
    {
    case 0:
        switch (global.lang)
        {
        case LANG.RUS: return "Машины"; break;
        case LANG.ENG: return "Cars"; break;
        }
        break;
    case 1:
        switch (global.lang)
        {
        case LANG.RUS: return "Оружия"; break;
        case LANG.ENG: return "Weapons"; break;
        }
        break;
    case 2:
        switch (global.lang)
        {
        case LANG.RUS: return "КУПИТЬ"; break;
        case LANG.ENG: return "BUY"; break;
        }
        break;
    case 3:
        switch (global.lang)
        {
        case LANG.RUS: return "В гараже"; break;
        case LANG.ENG: return "In garage"; break;
        }
        break;    
    }
    break;
    
case 4: // weapons
    var _arr;
    _arr[1] = 0;
    switch (index)
    {
    case -2:
        switch (global.lang)
        {
        case LANG.RUS: return "Урон"; break;
        case LANG.ENG: return "Damage"; break;
        }        
        break;
    case WEAPONS.__SIMPLE:
        switch (global.lang)
        {
        case LANG.RUS: 
            _arr[0] = "Автомат"; 
            _arr[1] = "Легковесная пушка с небольшим уроном"; break;
        case LANG.ENG: 
            _arr[0] = "Rifle"
            _arr[1] = "Lightweight gun with small damage"; break;
        }
        break;
    case WEAPONS.__ROCKET:
        switch (global.lang)
        {
        case LANG.RUS: 
            _arr[0] = "Ракетница"
            _arr[1] = "Ракеты взрываются при контакте"; break;
        case LANG.ENG: 
            _arr[0] = "Rocket Launcher"
            _arr[1] = "Rockets explode on contact"; break;
        }
        break;    
    case WEAPONS.__SHIELD:
        switch (global.lang)
        {
        case LANG.RUS: 
            _arr[0] = "Энергощит"
            _arr[1] = "Создает энергетический купол, защищающий#всех, кто находится в нем"; break;
        case LANG.ENG: 
            _arr[0] = "Energy Shield"
            _arr[1] = "Creates energy dome protecting everyone in it"; break;
        }
        break;    
    }    
    return _arr;
    break;
    
case 5:
    var _arr;
    _arr[1] = "";
    switch (index)
    {
    case -1:
        switch (global.lang)
        {
        case LANG.RUS: return "Слоты оружия"; break;
        case LANG.ENG: return "Weapon slots"; break;
        }    
        break;    
    case -2:
        switch (global.lang)
        {
        case LANG.RUS: return "Цена"; break;
        case LANG.ENG: return "Price"; break;
        }    
        break;    
    case CARS.__ORANGE:
        switch (global.lang)
        {
        case LANG.RUS: 
            _arr[0] = "Спорткар"
            _arr[1] = "Быстрый и мощный"; break;
        case LANG.ENG: 
            _arr[0] = "Sportcar"
            _arr[1] = "Fast and powerful"; break;
        }
        break;
    case CARS.__MINI_VAN:
        switch (global.lang)
        {
        case LANG.RUS: 
            _arr[0] = "Минивэн"
            _arr[1] = "Две пушки лучше, чем одна"; break;
        case LANG.ENG: 
            _arr[0] = "Minivan"
            _arr[1] = "Two guns is better than one"; break;
        }
        break;
    case CARS.__MINI_TRUCK:
        switch (global.lang)
        {
        case LANG.RUS: 
            _arr[0] = "Пикап"
            _arr[1] = "Средняя скорость"; break;
        case LANG.ENG: 
            _arr[0] = "Pickup"
            _arr[1] = "Medium-powered"; break;
        }
        break;
    case CARS.__SCOOL_BUS:
        switch (global.lang)
        {
        case LANG.RUS: 
            _arr[0] = "Школьный автобус"
            _arr[1] = "Большой и вместительный"; break;
        case LANG.ENG: 
            _arr[0] = "Scool Bus"
            _arr[1] = "Big and spacious"; break;
        }
        break;
    }
    return _arr;
    break;
}
