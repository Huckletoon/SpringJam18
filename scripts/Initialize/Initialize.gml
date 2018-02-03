/// @function Initialize()
/// @description Initialize all of the global variables for the game

// initialize global.Chunks to be an array of level chunks
// TODO: design a default starting level design
global.ChunkWidth = 1024;
global.Chunks = [];
for (var i = 0; i < 10; i++) { global.Chunks[i] = noone; }


// Initialize the audio
audio_play_sound(AmbientIntro, 10, true);