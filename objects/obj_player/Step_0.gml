/// @movement and collision

//Get input
key_left = keyboard_check(ord("A"))
key_right = keyboard_check(ord ("D"))
key_up = keyboard_check(ord("W"))

//calc movement
var move = key_right - key_left

hsp = move * runSpd
vsp = vsp + grv

//make sure player is considered alive before any movement takes place
if(alive){
	
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
}

//move player to slashers position when they are caught
if(!alive){
	x = obj_enemy.x + 28
	y = obj_enemy.y + 20
}	