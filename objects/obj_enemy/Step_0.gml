/// @description Insert description here

var inst = instance_place(x,y,obj_wall)

//Horizontal collision
if(place_meeting(x,y,obj_wall)){
	with inst instance_destroy()
}

x = x + hsp

//when to kill the player
if(x + 16 > obj_player.x){
obj_player.alive = false

//stop moving forward after catching up with player
hsp = 0
}