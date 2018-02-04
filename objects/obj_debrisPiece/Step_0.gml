/// @description Insert description here

rotation = irandom_range(0,59)
x = x + hsp
y = y + vsp
image_angle += rotation

if (y > 1200) {instance_destroy()}