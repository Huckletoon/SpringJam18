/// @description Insert description here

rotation = irandom_range(0,59)
x = x + hsp
y = y + vsp
image_angle += rotation

if (y > 750) {instance_destroy()}