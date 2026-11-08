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
			
			case rMLevel14:
			if _direction == "left" 
			{
				return rMLevel13
			}
			if _direction == "right" 
			{
				return rMLevel16
			}
			if _direction == "up" 
			{
				return rMLevel18_1
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
			
			if _direction == "right" 
			{
				return rMLevel17
			}
			
			if _direction == "up" 
			{
				return rMLevel18
			}
			
			case rMLevel18:
			if _direction == "left" 
			{
				return rMLevel18_1
			}
			
			if _direction == "down" 
			{
				return rMLevel16
			}
			
			case rMLevel18_1:
			if _direction == "right" 
			{
				return rMLevel18
			}
			
			if _direction == "down" 
			{
				return rMLevel14
			}
			
			case rMLevel17:
			if _direction == "left" 
			{
				return rMLevel16
			}
			
			if _direction == "right" 
			{
				return rMLevel19
			}
			
			case rMLevel19:
			if _direction == "left" 
			{
				return rMLevel17
			}
			
			if _direction == "right" 
			{
				return rMLevel20
			}
			
			case rMLevel20:
			if _direction == "left" 
			{
				return rMLevel19
			}
			
			if _direction == "right" 
			{
				return rMLevel21
			}
			
			case rMLevel21:
			if _direction == "left" 
			{
				return rMLevel20
			}
			
			if _direction == "right" 
			{
				return rMLevel22
			}
			
			case rMLevel22:
			if _direction == "left" 
			{
				return rMLevel21
			}
			
			if _direction == "up" 
			{
				return rMLevel23
			}
			
			case rMLevel23:
			if _direction == "left" 
			{
				return rMLevel24
			}
			
			if _direction == "up" 
			{
				return rMLevel25
			}
			
			if _direction == "down" 
			{
				return rMLevel22
			}
			
			case rMLevel24:
			if _direction == "left" 
			{
				return rMLevel23
			}
			
			case rMLevel25:
			if _direction == "down" 
			{
				return rMLevel22
			}
			
			if _direction == "up" 
			{
				return rMLevel25
			}
			
		break;
	}

	return noone;
}

