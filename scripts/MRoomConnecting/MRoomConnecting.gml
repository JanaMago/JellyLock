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
			if _direction == "down" 
			{
				return rMLevel4
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
			if _direction == "right" 
			{
				return rMLevel5
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
			
			case rMLevel4:
			if _direction == "up" 
			{
				return rMLevel2
			}
			
			case rMLevel5:
			if _direction == "up" 
			{
				return rMLevel6
			}
			if _direction == "left" 
			{
				return rMLevel3
			}
			
			case rMLevel6:
			if _direction == "up" 
			{
				return rMLevel7
			}
			if _direction == "down" 
			{
				return rMLevel5
			}
			
			case rMLevel7:
			if _direction == "up" 
			{
				return rMLevel71
			}
			if _direction == "down" 
			{
				return rMLevel6
			}
			
			case rMLevel71:
			if _direction == "right" 
			{
				return rMLevel8
			}
			if _direction == "down" 
			{
				return rMLevel7
			}
			
			case rMLevel8:
			if _direction == "right" 
			{
				return rMLevel9
			}
			if _direction == "left" 
			{
				return rMLevel71
			}
			
			case rMLevel9:
			if _direction == "left" 
			{
				return rMLevel8
			}
			if _direction == "down" 
			{
				return rMLevel10
			}
			
			case rMLevel10:
			if _direction == "up" 
			{
				return rMLevel9
			}

		break;
	}

	return noone;
}

