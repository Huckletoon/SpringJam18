/// @function MakeChunk(type, x, y)
/// @description Make a level chunk and return it
/// @param {real} type  int that determines the type of chunk to make
/// @param {real} x  starting x position
/// @param {real} y  starting y position
var num = global.ChunkWidth / 64;
for (var i = 0; i < num; i++)
{
	instance_create_depth(argument1 + (64 * i), argument2, 0, obj_wall);
}
switch (argument0) 
{
	case 0:
		
	case 1:
		
	case 2:
		
	case 3:
		
	case 4:
		
	case 5:
		
}