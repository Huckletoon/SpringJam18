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
	y = obj_enemy.y + 20
	x = obj_enemy.x + 64
}	

//if pChoice == brad
/*
if(hsp > 0){
image_xscale = 1
sprite_index = spr_bradRun
}
if(hsp == 0){
sprite_index = spr_bradIdle
}
if(hsp < 0){
image_xscale = -1
sprite_index = spr_bradRun
}
*/

//if pChoice == britney
if(hsp > 0){
	image_xscale = 1
	sprite_index = spr_britneyRun
}
if(hsp == 0){
	sprite_index = spr_britneyIdle
}
if(hsp < 0){
	image_xscale = -1
	sprite_index = spr_britneyRun
}

if (x > global.Chunks[0].x + global.ChunkWidth * 1)
{ ChunkCycle(); }