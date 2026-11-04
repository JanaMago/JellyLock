var _cam = view_camera[0]

if (target != noone)
{
	go_x = target.x;
	go_y = target.y;
}

//x += (go_x - x)/25;
//y += (go_y - y)/25;

x = lerp(x, go_x, 0.05);
y = lerp(y, go_y, 0.05);

camera_set_view_pos(_cam, x - (cam_w * 0.3), y - (cam_h * 0.3));