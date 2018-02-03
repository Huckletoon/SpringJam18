/// @description Insert description here

var inst = instance_place(x,y,obj_wall)

//Horizontal collision
if(place_meeting(x,y,obj_wall)){
	with inst instance_destroy()
}

x = x + hsp