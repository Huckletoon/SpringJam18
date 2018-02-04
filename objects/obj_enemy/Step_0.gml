/// @description Insert description here

height = 96

var inst = instance_place(x,y,obj_wall)
var inst2 = instance_place(x,y-height,obj_wall)
var inst3 = instance_place(x,y-height*2,obj_wall)
var inst4 = instance_place(x,y-height*3,obj_wall)
var inst5 = instance_place(x,y-height*4,obj_wall)
var inst6 = instance_place(x,y-height*5,obj_wall)
var inst7 = instance_place(x,y-height*6,obj_wall)
var inst8 = instance_place(x,y-height*7,obj_wall)

//Horizontal collision
if(x + 8 > obj_wall.x){
	with inst instance_destroy()
	with inst2 instance_destroy()
	with inst3 instance_destroy()
	with inst4 instance_destroy()
	with inst5 instance_destroy()
	with inst6 instance_destroy()
	with inst7 instance_destroy()
	with inst8 instance_destroy()
}

x = x + hsp

//when to kill the player
if(x + 32 > obj_player.x){
obj_player.alive = false
hsp = 0
sprite_index = spr_butchAttack
image_speed = .4
instance_create_depth(x,y,-1000,obj_fadeToBlack)
}