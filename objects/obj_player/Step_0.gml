/// @movement and collision

//Get input
key_left = keyboard_check(ord("A"))
key_right = keyboard_check(ord ("D"))
key_up = keyboard_check(ord("W"))

//calc movement
var move = key_right - key_left

hsp = move * runSpd
vsp = vsp + grv

//Jumping
if(place_meeting(x,y + 1,obj_wall) && key_up){
	vsp = -25	
}

//Horizontal collision
if(place_meeting(x + hsp,y,obj_wall)){
	while(!place_meeting(x + sign(hsp),y,obj_wall)){
		x = x + sign(hsp)
	}
	hsp = 0;
}

x = x + hsp

//Vertical collision
if(place_meeting(x,y + vsp,obj_wall)){
	while(!place_meeting(x,y + sign(vsp),obj_wall)){
		y = y + sign(vsp)
	}
	vsp = 0;
}

y = y + vsp