/// @description Insert description here
image_alpha -= random_range(.005,.1)
if(image_alpha < 0){
	instance_destroy(self)
}

image_angle += rotation
