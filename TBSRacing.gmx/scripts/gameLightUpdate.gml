if (!surface_exists(lightsurf))
{
    lightsurf = surface_create(global.guiW, global.guiH);
}
with (oLightDepth)
{
surface_set_target(oGameController.lightsurf);

draw_clear_alpha(c_black, oGameController.gameLightAlpha);
draw_set_blend_mode(bm_subtract);
with (oStateObject)
{   
    if (flagIsActive(flags, OBJ_PAR.HAVE_LIGHT))
    {
        event_perform(ev_other, ev_user3);
    }
}
draw_set_blend_mode(bm_normal);
surface_reset_target();
}


