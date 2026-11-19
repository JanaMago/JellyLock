if testscreenshot == 0 && oMStart.fade == 0
{
	testscreenshot = 1
	
	screen_save(room_get_name(room) + ".png")
}
