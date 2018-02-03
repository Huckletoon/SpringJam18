/// @function Initialize()
/// @description Initialize all of the global variables for the game

// initialize global.Chunks to be an array of level chunks
// TODO: design a default starting level design
global.ChunkWidth = 1024;
global.Chunks = [];
for (var x = 0; x < 10; x++) { global.Chunks[x] = noone; }
