global.player = instance_nearest(0, 0, obj_player);
global.slasher = instance_nearest(0, 0, obj_enemy);
audio_stop_sound(AmbientIntro);
global.AudioHandler = instance_create_depth(0, 0, 0, o_AudioHandler);
global.currentAudio = 1;
instance_create_depth(0,0,0, obj_backgroundMover)
global.floor0 = layer_tilemap_create(layer_get_id("Tiles_1"), 0, global.startY + 92, tile_floors, 8, 1)
global.floor1 = layer_tilemap_create(layer_get_id("Tiles_1"), global.startX, global.startY +92, tile_floors, 8, 1)
global.floor2 = layer_tilemap_create(layer_get_id("Tiles_1"), global.startX * 2, global.startY +92, tile_floors, 8, 1)
var tiles0 = []
var tiles1 = []
var tiles2 = []
for (var n = 0; n < 8; n++) { tiles0[n] = tilemap_get(global.floor0, n, 0) }
for (var n = 0; n < 8; n++) { tiles1[n] = tilemap_get(global.floor1, n, 0) }
for (var n = 0; n < 8; n++) { tiles2[n] = tilemap_get(global.floor2, n, 0) }
tiles0[0] = tile_set_index(tiles0[0], 18)
tiles0[1] = tile_set_index(tiles0[1], 19)
tiles0[2] = tile_set_index(tiles0[2], 20)
tiles0[3] = tile_set_index(tiles0[3], 20)
tiles0[4] = tile_set_index(tiles0[4], 20)
tiles0[5] = tile_set_index(tiles0[5], 20)
tiles0[6] = tile_set_index(tiles0[6], 21)
tiles0[7] = tile_set_index(tiles0[7], 22)
tiles1[0] = tile_set_index(tiles1[0], 23)
tiles1[1] = tile_set_index(tiles1[1], 18)
tiles1[2] = tile_set_index(tiles1[2], 19)
tiles1[3] = tile_set_index(tiles1[3], 20)
tiles1[4] = tile_set_index(tiles0[4], 21)
tiles1[5] = tile_set_index(tiles1[5], 22)
tiles1[6] = tile_set_index(tiles1[6], 23)
tiles1[7] = tile_set_index(tiles1[7], 23)
tiles2[0] = tile_set_index(tiles2[0], 23)
tiles2[1] = tile_set_index(tiles2[1], 23)
tiles2[2] = tile_set_index(tiles2[2], 23)
tiles2[3] = tile_set_index(tiles2[3], 23)
tiles2[4] = tile_set_index(tiles2[4], 23)
tiles2[5] = tile_set_index(tiles2[5], 23)
tiles2[6] = tile_set_index(tiles2[6], 23)
tiles2[7] = tile_set_index(tiles2[7], 23)
for (var n = 0; n < 8; n++) { tilemap_set(global.floor0, tiles0[n], n, 0) }
for (var n = 0; n < 8; n++) { tilemap_set(global.floor1, tiles1[n], n, 0) }
for (var n = 0; n < 8; n++) { tilemap_set(global.floor2, tiles2[n], n, 0) }
