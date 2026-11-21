delay = 0
delaymax = 10

dir = 300

snowamount = 50

_xspd = lengthdir_x(1, dir)
_yspd = lengthdir_y(1, dir)

_extra = 0

if _yspd > 0
{
	_extra = abs(_xspd / _yspd) * room_height
}

repeat(snowamount * 10)
{
	var _x = random_range(-_extra, room_width + _extra)
	var _y = random(room_height)

	var _startx = _x
	var _starty = -32

	if _yspd > 0
	{
		_startx = _x - (_xspd / _yspd) * (_y - _starty)
	}

	if collision_line(_startx, _starty, _x, _y, oMWall, false, true) == noone
	{
		var snow = instance_create_depth(_x, _y, depth, oSnow)

		snow.dir = dir

		var _spd = random_range(3, 6)

		snow.xspd = lengthdir_x(_spd, dir)
		snow.yspd = lengthdir_y(_spd, dir)

		snow.sinkxspd = lengthdir_x(0.16, dir)
		snow.sinkyspd = lengthdir_y(0.16, dir)
	}
}
