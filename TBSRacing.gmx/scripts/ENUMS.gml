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
    __PATH_ERASE,
    __WEAPON_TARGET
}

enum KEY
{
    MOUSE_LEFT,
    MOUSE_RIGHT,
    CAM_LEFT,
    CAM_TOP,
    CAM_RIGHT,
    CAM_BOTTOM,
    SWITCH,
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

enum ZONES
{
    __GRASS = 0,
    __ASPHALT,
    __WATER
}   

/////////////// ENEMIES
enum EN_CAR_ST
{
    __INACTIVE,
    __MOVE_TO_POINT,
    __MOEV_IN_DIRECTION,
    __EVADE_OBJECT,
    __PURSUIT_OBJECT
}

/////////////// CARS
enum CARS
{
    __NONE,
    __ORANGE,
    __MINI_TRUCK,
    __MINI_VAN,
    __SCOOL_BUS,
    __POLICE
}

enum CONTROL_TYPES
{
    POINTS,
    ARROW
}

/////////////// WEAPONS
enum WEAPONS
{
    __SIMPLE,
    __ROCKET
}

enum BULLETS
{
    __SIMPLE,
    __ROCKET
}

enum WEAPON_STATES
{
    __FREE,
    __SIMPLE_ATTACK,
    __ROCKET_ATTACK
}

/////////////// HUMAN
enum HUMAN_STATES
{
    __IDLE,
    __MOVE_POINT,
    __AVOID,
    __WANDER,
    __FLY_AWAY,
    __DIE
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

enum WEAHTER
{
    __SUNNY = 1 << 0,
    __CLOUDY = 1 << 1,
    __RAINY = 1 << 2
}
