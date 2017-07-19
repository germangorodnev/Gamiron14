if (!surface_exists(lightsurf))
{
    lightsurf = surface_create(global.guiW, global.guiH)
    exit;
}
with (oLightDepth)
    draw_surface(oGameController.lightsurf, view_xview, view_yview);
