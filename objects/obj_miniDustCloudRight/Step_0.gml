/// @description Insert description here
image_alpha -= .05
if(image_alpha < 0){
	instance_destroy(self)
}
x = x + 2