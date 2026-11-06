function MRoomConnecting(_room, _direction)
{
	switch (_room)
	{
		case rMLevel1:
			if _direction == "right"
			{
				return rMLevel2
			}
		break;

		case rMLevel2:
			if _direction == "left" 
			{
				return rMLevel1
			}
			if _direction == "up" 
			{
				return rMLevel3
			}
		break;
		
		case rMLevel3:
			if _direction == "down" 
			{
				return rMLevel2
			}
			if _direction == "left" 
			{
				return rMLevel31
			}
			
			case rMLevel31:
			if _direction == "down" 
			{
				return rMLevel1
			}
			if _direction == "right" 
			{
				return rMLevel3
			}
		break;
	}

	return noone;
}

