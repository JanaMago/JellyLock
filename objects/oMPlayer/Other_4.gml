if trans
{
    switch (transDir)
    {
        case "right":
            x = (x - bbox_left) - 20
        break;

        case "left":
            x = (room_width - (bbox_right - x)) - 20
        break;

        case "up":
            y = (room_height - (bbox_bottom - y)) - 20
        break;

        case "down":
            y = (y - bbox_top) - 20
        break;
    }
	
	// ok this is only here because you can get stuck in walls when transitioning bullshit go
	if place_meeting(x, y, oMWall)
    {
		var startX = x
		var startY = y
		var foundSpace = false
		
		//dist is the area it will look for
		//dx and dy will look in that area and if they find space will move the player there
		//real shit
		
		for (var dist = 1; dist <= 128 && !foundSpace; dist++)
		{
			for (var dx = -dist; dx <= dist && !foundSpace; dx++)
			{
				for (var dy = -dist; dy <= dist && !foundSpace; dy++)
				{
					if abs(dx) != dist && abs(dy) != dist
					{
						continue
					}
					
					if !place_meeting(startX + dx, startY + dy, oMWall)
					{
						x = startX + dx
						y = startY + dy
						foundSpace = true
					}
				}
			}
		}
	}

    trans = false
    transDir = ""
}

onGround = place_meeting(x, y + groundBuffer, oMWall)
prevOnGround = onGround