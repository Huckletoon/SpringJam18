draw_set_color(make_color_rgb(137,0,0))
draw_set_font(fnt_spooks)
draw_text(xlocal - 450, room_height/2-100, "You survived for " + string(round(global.survivalTime/60)) + " seconds..." )