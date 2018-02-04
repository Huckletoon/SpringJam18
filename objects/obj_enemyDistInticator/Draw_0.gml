/// @description Insert description here
draw_set_color(make_color_rgb(137,0,0))
draw_set_font(fnt_spooks)
draw_text(obj_player.x-500,576,string(round((obj_player.x-obj_enemy.x)/10)))
