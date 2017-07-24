// image
drawCroppedRect(imagex1, imagey1, imagex2, imagey2, imagecolback, imagea, 8);
draw_sprite_ext(imageSpr, imageI, imagex, imagey, 1, 1, 0, image_blend, imagea);


// h1
drawCroppedRect(h1x1, h1y1, h1x1 + h1w * h1perc, h1y1 + h1h * h1perc, h1colback, 1, 5);
draw_set_font(fTurnEnd);
draw_set_halign(h1halign);
draw_set_valign(h1valign);
draw_text_colour(h1textx, h1texty, string_copy(h1text, 1, round(string_length(h1text) * h1perc)), h1coltext, h1coltext, h1coltext, h1coltext, 1);


// description
drawCroppedRect(dx1, dy1, dx1 + dw * dperc, dy1 + dh * dperc, dcolback, 1, 5);
draw_set_font(fQuestion);
draw_set_halign(dhalign);
draw_set_valign(dvalign);
draw_text_ext_colour(dtextx, dtexty, string_copy(dtext, 1, round(string_length(dtext) * dperc)), 35, dw - 10, dcoltext, dcoltext, dcoltext, dcoltext, 1);

