enum GAME_STATES
{
    __MENU,
    __GAME,
    __TURNENDYESNO,
    __PAUSE
}

enum INGAME_STATES
{
    TURN,
    GAME
}

enum SUBSTATES
{
    __NONE,
    __CAR_MOVE,
    __CAR_WEAPONS,
    
}

enum GUI_STATES
{
    __GUI,
    __PATH_EDIT,
    __PATH_ERASE
}

enum KEY
{
    MOUSE_LEFT,
    MOUSE_RIGHT,
    CAM_LEFT,
    CAM_TOP,
    CAM_RIGHT,
    CAM_BOTTOM,
    CNT
}   

enum CONTROL
{
    __KEYMOUSE = 1 << 0,
    __GAMEPAD = 1 << 1
}


enum OBJ_PAR
{
    UPDATABLE = 1 << 0,
    DRAWABLE = 1 << 1,
    PHYSICAL = 1 << 2,
    HAVE_LIGHT = 1 << 3,
    IMPACTABLE_PAUSE = 1 << 4,
    IMPACTABLE_TURN = 1 << 5,
    SELECTED = 1 << 6
}

enum PL_CAR_ST
{
    __INACTIVE,
    __MOVE_TO_POINT
}

/////////////// CARS
enum CARS
{
    __NONE,
    __ORANGE,
    __MINI_TRUCK,
    __MINI_VAN,
    __POLICE
}

/////////////// WEAPONS
enum WEAPONS
{
    __SIMPLE
}

enum WEAPON_STATES
{
    __FREE
}

/////////////// CAMERA
enum CAM_STATES
{
    __FREE,
    __PARTICULAR_OBJ
}

enum CAM_FLAGS
{
    DARKEN,
    SHAKING
}

enum LANG
{
    RUS,
    ENG
}
