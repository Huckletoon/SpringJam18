global.player = instance_nearest(0, 0, obj_player);
global.slasher = instance_nearest(0, 0, obj_enemy);
audio_stop_sound(AmbientIntro);
global.AudioHandler = instance_create_depth(0, 0, 0, o_AudioHandler);
global.currentAudio = 1;
instance_create_depth(0,0,0, obj_backgroundMover)