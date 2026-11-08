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
				return rMLevel3_1
			}
			if _direction == "right" 
			{
				return rMLevel5
			}
			
			case rMLevel3_1:
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
				return rMLevel7_1
			}
			if _direction == "down" 
			{
				return rMLevel6
			}
			
			case rMLevel7_1:
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
				return rMLevel7_1
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
			if _direction == "right" 
			{
				return rMLevel11
			}
			
			case rMLevel11:
			if _direction == "left" 
			{
				return rMLevel10
			}
			if _direction == "up" 
			{
				return rMLevel12
			}
			
			case rMLevel12:
			if _direction == "right" 
			{
				return rMLevel12_1
			}
			if _direction == "up" 
			{
				return rMLevel13
			}
			if _direction == "down" 
			{
				return rMLevel11
			}
			
			case rMLevel12_1:
			if _direction == "left" 
			{
				return rMLevel12
			}
			if _direction == "up" 
			{
				return rMLevel14
			}
			
			case rMLevel13:
			if _direction == "left" 
			{
				return rMLevel15
			}
			if _direction == "right" 
			{
				return rMLevel14
			}
			if _direction == "down" 
			{
				return rMLevel12
			}
			
			case rMLevel15:
			if _direction == "right" 
			{
				return rMLevel13
			}
			
			case rMLevel16:
			if _direction == "left" 
			{
				return rMLevel14
			}

		break;
	}

	return noone;
}

