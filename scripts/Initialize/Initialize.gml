/// @function Initialize()
/// @description Initialize all of the global variables for the game

// initialize global.Chunks to be an array of level chunks
// TODO: design a default starting level design
global.ChunkWidth = 1024;
global.Chunks = [];
global.startX = 31;
global.startY = 735;
global.alertMax = room_width / 2;
global.alertMin = room_width * 1.5;
global.player = instance_create_depth(-100,-100, 0, obj_crate);
global.slasher = instance_create_depth(10000, 10000, 0, obj_crate);


// Initialize the audio
audio_play_sound(AmbientIntro, 10, true);
global.ambient = audio_emitter_create();
global.alert = audio_emitter_create();
audio_emitter_gain(global.ambient, 0);
audio_emitter_gain(global.alert, 0);
audio_play_sound_on(global.ambient, AmbientLoop, true, 10);
audio_play_sound_on(global.alert, Alert, true, 10);
global.currentAudio = 0; //will be 1 for ambient, 2 for alert
global.AudioHandler = instance_create_depth(0, 0, 0, o_AudioHandler)