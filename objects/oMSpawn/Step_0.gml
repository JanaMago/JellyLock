if off = false
{
	if !instance_exists(oMPlayer)
	{
		oMStart.fade = 1
		oMStart.fadeEnd = true
		oMStart.fadeStart = false
        oMStart.step = 0
		instance_create_depth(x,y,depth,oMPlayer)
	}
	
	off = true
}