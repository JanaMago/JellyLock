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
		break;
		
		case rMLevel3_1:
			if _direction == "down" 
			{
				return rMLevel1
			}
			if _direction == "right" 
			{
				return rMLevel3
			}
		break;
		
		case rMLevel4:
			if _direction == "up" 
			{
				return rMLevel2
			}
		break;
		
		case rMLevel5:
			if _direction == "up" 
			{
				return rMLevel6
			}
			if _direction == "left" 
			{
				return rMLevel3
			}
		break;
		
		case rMLevel6:
			if _direction == "up" 
			{
				return rMLevel7
			}
			if _direction == "down" 
			{
				return rMLevel5
			}
			if _direction == "left" 
			{
				return rMLevel6_1
			}
		break;
		
		case rMLevel6_1:
			if _direction == "right" 
			{
				return rMLevel6
			}
			if _direction == "down" 
			{
				return rMLevel3
			}
		break;
		
		case rMLevel7:
			if _direction == "up" 
			{
				return rMLevel7_1
			}
			if _direction == "down" 
			{
				return rMLevel6
			}
		break;
		
		case rMLevel7_1:
			if _direction == "right" 
			{
				return rMLevel8
			}
			if _direction == "down" 
			{
				return rMLevel7
			}
		break;
		
		case rMLevel8:
			if _direction == "right" 
			{
				return rMLevel9
			}
			if _direction == "left" 
			{
				return rMLevel7_1
			}
			if _direction == "down" 
			{
				return rMLevel8_1
			}
		break;
		
		case rMLevel8_1:
			if _direction == "up" 
			{
				return rMLevel8
			}
		break;
		
		case rMLevel9:
			if _direction == "left" 
			{
				return rMLevel8
			}
			if _direction == "down" 
			{
				return rMLevel10
			}
		break;
		
		case rMLevel10:
			if _direction == "up" 
			{
				return rMLevel9
			}
			if _direction == "right" 
			{
				return rMLevel11
			}
		break;
		
		case rMLevel11:
			if _direction == "left" 
			{
				return rMLevel10
			}
			if _direction == "up" 
			{
				return rMLevel12
			}
		break;
		
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
		break;
		
		case rMLevel12_1:
			if _direction == "left" 
			{
				return rMLevel12
			}
			if _direction == "up" 
			{
				return rMLevel14
			}
		break;
		
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
		break;
		
		case rMLevel14:
			if _direction == "left" 
			{
				return rMLevel13
			}
			if _direction == "right" 
			{
				return rMLevel16
			}
			if _direction == "down" 
			{
				return rMLevel18_1
			}
		break;
		
		case rMLevel15:
			if _direction == "right" 
			{
				return rMLevel13
			}
			if _direction == "up" 
			{
				return rMLevel15_1
			}
		break;
		
		case rMLevel15_1:
			if _direction == "down" 
			{
				return rMLevel15
			}
		break;
		
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
		break;
			
		case rMLevel18:
			if _direction == "left" 
			{
				return rMLevel18_1
			}
			if _direction == "down" 
			{
				return rMLevel16
			}
		break;
		
		case rMLevel18_1:
			if _direction == "right" 
			{
				return rMLevel18
			}
			if _direction == "down" 
			{
				return rMLevel14
			}
		break;
			
		case rMLevel17:
			if _direction == "left" 
			{
				return rMLevel16
			}
			if _direction == "right" 
			{
				return rMLevel19
			}
		break;
			
		case rMLevel19:
			if _direction == "left" 
			{
				return rMLevel17
			}
			if _direction == "right" 
			{
				return rMLevel20
			}
		break;
			
		case rMLevel20:
			if _direction == "left" 
			{
				return rMLevel19
			}
			if _direction == "right" 
			{
				return rMLevel21
			}
		break;
			
		case rMLevel21:
			if _direction == "left" 
			{
				return rMLevel20
			}
			if _direction == "right" 
			{
				return rMLevel22
			}
		break;
			
		case rMLevel22:
			if _direction == "left" 
			{
				return rMLevel21
			}
			if _direction == "up" 
			{
				return rMLevel23
			}
			if _direction == "down" 
			{
				return rMLevel22_1
			}
		break;
		
		case rMLevel22_1:
			if _direction == "up" 
			{
				return rMLevel22
			}
		break;
			
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
		break;
			
		case rMLevel24:
			if _direction == "left" 
			{
				return rMLevel23
			}
		break;
		
		case rMLevel25:
			if _direction == "down" 
			{
				return rMLevel22
			}
			
			if _direction == "up" 
			{
				return rMLevel26
			}
		break;
		
		case rMLevel26:
			if _direction == "down" 
			{
				return rMLevel25
			}
			
			if _direction == "up" 
			{
				return rMLevel27
			}
		break;
		
		case rMLevel27:
			if _direction == "down" 
			{
				return rMLevel26
			}
			
			if _direction == "right" 
			{
				return rMLevel28
			}
		break;
		
		case rMLevel28:
			if _direction == "left" 
			{
				return rMLevel27
			}
			
			if _direction == "right" 
			{
				return rMLevel29
			}
		break;
		
		case rMLevel29:
			if _direction == "left" 
			{
				return rMLevel28
			}
			
			if _direction == "right" 
			{
				return rMLevel30
			}
		break;
		
		case rMLevel30:
			if _direction == "left" 
			{
				return rMLevel29
			}
			
			if _direction == "down" 
			{
				return rMLevel31
			}
		break;
		
		case rMLevel31:
			if _direction == "up" 
			{
				return rMLevel30
			}
			
			if _direction == "down" 
			{
				return rMLevel32
			}
		break;
		
		case rMLevel32:
			if _direction == "up" 
			{
				return rMLevel31
			}
			
			if _direction == "down" 
			{
				return rMLevel33
			}
		break;
		
		case rMLevel33:
			if _direction == "up" 
			{
				return rMLevel32
			}
			
			if _direction == "down" 
			{
				return rMLevel34
			}
		break;
		
		case rMLevel34:
			if _direction == "up" 
			{
				return rMLevel33
			}
			
			if _direction == "down" 
			{
				return rMLevel35
			}
		break;
		
		case rMLevel35:
			if _direction == "up" 
			{
				return rMLevel34
			}
			
			if _direction == "right" 
			{
				return rMLevel36
			}
		break;
		
		case rMLevel36:
			if _direction == "up" 
			{
				return rMLevel37
			}
			
			if _direction == "left" 
			{
				return rMLevel35
			}
		break;
		
		case rMLevel37:
			if _direction == "up" 
			{
				return rMLevel37_1
			}
			
			if _direction == "right" 
			{
				return rMLevel38
			}
			
			if _direction == "down" 
			{
				return rMLevel36
			}
		break;
		
		case rMLevel37_1:
			if _direction == "down" 
			{
				return rMLevel37
			}
		break;
		
		case rMLevel38:
			if _direction == "up" 
			{
				return rMLevel39
			}
			
			if _direction == "left" 
			{
				return rMLevel37
			}
		break;
		
		case rMLevel39:
			if _direction == "up" 
			{
				return rMLevel40
			}
			
			if _direction == "down" 
			{
				return rMLevel38
			}
		break;
		
		case rMLevel40:
			if _direction == "up" 
			{
				return rMLevel41
			}
			
			if _direction == "down" 
			{
				return rMLevel39
			}
		break;
		
		case rMLevel41:
			if _direction == "up" 
			{
				return rMLevel42
			}
			
			if _direction == "down" 
			{
				return rMLevel40
			}
		break;
		
		case rMLevel42:
			if _direction == "up" 
			{
				return rMLevel43
			}
			
			if _direction == "down" 
			{
				return rMLevel41
			}
		break;
		
		case rMLevel43:
			if _direction == "up" 
			{
				return rMLevel44
			}
			
			if _direction == "down" 
			{
				return rMLevel42
			}
		break;
		
		case rMLevel44:
			if _direction == "up" 
			{
				return rMLevel45
			}
			
			if _direction == "down" 
			{
				return rMLevel43
			}
		break;
		
		case rMLevel45:
			if _direction == "left" 
			{
				return rMLevel46
			}
			
			if _direction == "down" 
			{
				return rMLevel44
			}
			
			if _direction == "right" 
			{
				return rMLevel47
			}
			
		case rMLevel46:
			if _direction == "left" 
			{
				return rMLevel46_1
			}
			
			if _direction == "right" 
			{
				return rMLevel45
			}
		break;
		
		case rMLevel46_1:
			if _direction == "left" 
			{
				return rMLevel46_2
			}
			
			if _direction == "right" 
			{
				return rMLevel46
			}
		break;
		
		case rMLevel46_2:
			if _direction == "left" 
			{
				return rMLevel46_2_1
			}
			
			if _direction == "right" 
			{
				return rMLevel46_1
			}
			
			if _direction == "down" 
			{
				return rMLevel46_3
			}
		break;
		
		case rMLevel46_2_1:
			if _direction == "left" 
			{
				return rMLevel46_2_2
			}
			
			if _direction == "right" 
			{
				return rMLevel46_2
			}
			
			if _direction == "down" 
			{
				return rMLevel46_3_1
			}
		break;
		
		case rMLevel46_2_2:		
			if _direction == "right" 
			{
				return rMLevel46_2_1
			}
			
			if _direction == "down" 
			{
				return rMLevel46_3_2
			}
		break;
		
		case rMLevel46_3:
			if _direction == "up" 
			{
				return rMLevel46_2
			}
			
			if _direction == "left" 
			{
				return rMLevel46_3_1
			}
			
			if _direction == "down" 
			{
				return rMLevel46_4
			}
		break;
		
		case rMLevel46_3_1:
			if _direction == "up" 
			{
				return rMLevel46_2_1
			}
			
			if _direction == "right" 
			{
				return rMLevel46_3
			}
			
			if _direction == "left" 
			{
				return rMLevel46_3_2
			}
			
			if _direction == "down" 
			{
				return rMLevel46_4_1
			}
		break;
		
		case rMLevel46_3_2:
			if _direction == "up" 
			{
				return rMLevel46_2_2
			}
			
			if _direction == "left" 
			{
				return rMLevel46_3_1
			}
			
			if _direction == "down" 
			{
				return rMLevel46_4_2
			}
		break;
		
		case rMLevel46_4:
			if _direction == "left" 
			{
				return rMLevel46_4_1
			}
			
			if _direction == "up" 
			{
				return rMLevel46_3
			}
		break;
		
		case rMLevel46_4_1:
			if _direction == "left" 
			{
				return rMLevel46_4_2
			}
			
			if _direction == "up" 
			{
				return rMLevel46_3_1
			}
			
			if _direction == "right" 
			{
				return rMLevel46_4
			}
		break;
		
		case rMLevel46_4_2:		
			if _direction == "up" 
			{
				return rMLevel46_3_2
			}
			
			if _direction == "right" 
			{
				return rMLevel46_4_1
			}
		break;
		
		case rMLevel47:		
			if _direction == "up" 
			{
				return rMLevel49_1
			}
			
			if _direction == "right" 
			{
				return rMLevel48
			}
			
			if _direction == "left" 
			{
				return rMLevel45
			}
		break;
		
		case rMLevel48:		
			if _direction == "up" 
			{
				return rMLevel49
			}
			
			if _direction == "right" 
			{
				return rMLevel48_1
			}
			
			if _direction == "left" 
			{
				return rMLevel47
			}
		break;
		
		case rMLevel49:		
			if _direction == "up" 
			{
				return rMLevel51
			}
			
			if _direction == "right" 
			{
				return rMLevel50
			}
			
			if _direction == "left" 
			{
				return rMLevel49_1
			}
			
			if _direction == "down" 
			{
				return rMLevel48
			}
		break;
		
		case rMLevel50:		
			if _direction == "up" 
			{
				return rMLevel51_1
			}
			
			if _direction == "down" 
			{
				return rMLevel48_1
			}
			
			if _direction == "left" 
			{
				return rMLevel49
			}
		break;
	}

	return -1
}

