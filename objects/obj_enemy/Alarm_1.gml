/// @What happens when the player is caught

//stop moving forward after catching up with player
hsp = 0
sprite_index = spr_butchAttack
image_speed = .4

instance_create_depth(x,y,-1000,obj_fadeToBlack)