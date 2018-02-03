/// @function ChunkCycle()
/// @description Delete and generate a chunk of the level from the global.Chunks array
var count = array_length_1d(global.Chunks) - 1;
for (var x = 0; x < count; x++) { global.Chunks[x] = global.Chunks[x + 1]; }
var tempChunk = global.Chunks[count - 1];
room_width += global.ChunkWidth;
global.Chunks[count] = instance_create_depth(tempChunk.x + global.ChunkWidth, tempChunk.y, 100, o_Chunk);