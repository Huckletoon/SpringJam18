PlayStart()
for (var i = 0; i < 2; i++) { global.Chunks[i] = instance_create_depth(global.startX + (i * global.ChunkWidth), global.startY, 0, o_Chunk); }
