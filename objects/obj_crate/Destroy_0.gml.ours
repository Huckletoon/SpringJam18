/// @create broken crate on destroy

instance_create_depth(x,640,0,obj_brokenCrate)

i = 0
var howMany = irandom_range(10,150)
while(i < howMany){
	instance_create_depth(x,y,0,obj_debrisPiece)
	i++
}
		
for (var n = 0; n < instance_number(o_scaffold); n++)
{
	var temp = instance_find(o_scaffold, n);
	if (x == temp.x)
	{
		instance_destroy(temp)
	}
}
instance_create_depth(x,y,-1,obj_dustCloud)