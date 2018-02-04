/// @description Insert description here
image_alpha = 0

//alarm that returns to start screen
alarm[0] = 600

//alarmm that slowly displays score
alarm[1] = 240

if(global.playerChoice == "brad"){
	audio_play_sound(BradDeathSound, 10, false)
}