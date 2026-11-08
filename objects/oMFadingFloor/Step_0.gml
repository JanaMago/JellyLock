if instance_exists(oMPlayer)
{
	if sprite_index == MFadingFloor_3
	{
		if place_meeting(x + 1, y + 1, oMPlayer) || place_meeting(x - 1, y - 1, oMPlayer)
		{
			sprite_index = MFadingFloor_2
		} 
	}
}

if oMStart.fadeEnd == true
{
		sprite_index = MFadingFloor_3
}