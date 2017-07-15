///systemResize(newW, newH)
global.guiW = argument[0];
global.guiH = argument[1];

with (oCamera)
{
    view_wview = round(global.guiW / 1);
    view_hview = round(global.guiH / 1);
    view_wport = global.guiW;
    view_hport = global.guiH;
    view_hborder = view_wview / 2;
    view_vborder = view_hview / 2;
    view_visible = 1;
    
    mdeadx1 = global.guiW div 6;
    mdeady1 = global.guiH div 4;
    mdeadx2 = global.guiW - mdeadx1;
    mdeady2 = global.guiH - mdeady1;
}
