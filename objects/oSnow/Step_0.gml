if die != true
{
	if collisoncheck != collisoncheckmax
	{
		collisoncheck += 1
	}
	else
	{
		collisoncheck = 0

		if place_meeting(x + xspd, y + yspd, oMWall)
		{
			die = true
		}
	}
	
	x += xspd
	y += yspd
}
else
{
	y += sinkxspd
	x += sinkyspd
	
	sink += 0.16
	
	image_alpha = max(0, 1 - sink / sinkmax)
	
	if sink > sinkmax
	{
		instance_destroy()
	}
}

if y > room_height + 32
{
	instance_destroy()
}