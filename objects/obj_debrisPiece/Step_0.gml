/// @description Insert description here

rotation = irandom_range(0,59)
x = x + hsp
y = y + vsp
image_angle += rotation

if(y > 1500){
	instance_deactivate_object(self)
}

