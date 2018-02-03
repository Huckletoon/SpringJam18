/// @description Insert description here
image_speed = 0
image_index = irandom_range(0,9)

gravity = 1
vsp = irandom_range(5,-90)
hsp = irandom_range(-10,40)
imgScale = random_range(.5,2)

if(y>1500){
	with(self){instance_destroy()}
}

gravUse = false

image_xscale = imgScale
image_yscale = imgScale

