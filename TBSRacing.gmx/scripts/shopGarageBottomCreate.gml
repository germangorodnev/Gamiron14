bottomw = global.guiW - 20;
bottomh = 200;
bottomx1 = 0;
bottomy1 = global.guiH - bottomh;
bottomx2 = global.guiW;
bottomy2 = global.guiH;

foldersCount = 2;
var fin = foldersCount - 1;

folderx[fin] = 0;
foldery[fin] = 0;
foldert[fin] = 0;
foldera[fin] = 0;

folderAInd = 0;

foldercacitve = c_white;
foldercinactive = c_black;

fw = 145; fh = 40;
var folderxoff = 10;
folderyoff = bottomy1 - fh + 3;
for (var i = 0; i < foldersCount; i++)
{
    folderx[i] = folderxoff;
    foldery[i] = folderyoff;
    foldert[i] = systemGetPhrase(3, i);
    foldera[i] = 0;
    folderxoff += fw - 15;
}
foldera[0] = 1;

// swipe surface
surf = surface_create(bottomw, bottomh);
surfx = bottomx1 + 10;
surfy = bottomy1 + 10;

swipex = 0;
swipePower = 6;
// bottom window params
boticow = 180;
boticoh = boticow;
boticobetw = 15;
boticocol = make_colour_rgb(28, 3, 28);
boticocolch = make_colour_rgb(70, 22, 70);
// cars
carsCount = CARS.__POLICE - CARS.__ORANGE;
// weapons
weaponsCount = WEAPONS.__COUNT;

// swipe
rightX = 0;
mxpr = mouse_x;
mypr = mouse_y;
