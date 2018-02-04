/// @create broken crate on destroy

instance_create_depth(x,640,0,obj_brokenCrate)

i = 0
var howMany = irandom_range(10,150)
while(i < howMany){
	instance_create_depth(x,y,0,obj_debrisPiece)
	i++
}
		
instance_create_depth(x,y,-1,obj_dustCloud)