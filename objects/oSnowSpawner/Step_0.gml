if delay != delaymax
{
	delay += 1
}
else
{
	delay = 0
	
	_xspd = lengthdir_x(1, dir)
	_yspd = lengthdir_y(1, dir)

	_extra = 0

	if _yspd > 0
	{
		_extra = abs(_xspd / _yspd) * room_height
	}

	repeat(snowamount)
	{
		var _x = random_range(-_extra, room_width + _extra)
		var _y = -32

		var snow = instance_create_depth(_x, _y, depth, oSnow)

		snow.dir = dir
		snow.xspd = lengthdir_x(random_range(3, 6), dir)
		snow.yspd = lengthdir_y(random_range(3, 6), dir)

		snow.sinkxspd = lengthdir_x(0.16, dir)
		snow.sinkyspd = lengthdir_y(0.16, dir)
	}
}