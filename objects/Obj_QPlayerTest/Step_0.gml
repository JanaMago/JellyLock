//movbement

var _move_x = 0;
var _move_y = 0;

//dash cooldown
if (dash_cooldown > 0) 
{
	dash_cooldown -= 1;
}

//dash state controls
if (is_dashing)
{
	dash_timer -= 1
	if (dash_timer <= 0)
	{
		is_dashing = false;
	}
}
else
{

//normal wasd movement

	if (keyboard_check(ord("W")) || keyboard_check(vk_up))  
	{
		_move_y -= player_speed;
	}
    if (keyboard_check(ord("S")) || keyboard_check(vk_down))  
		_move_y += player_speed;
	{
	}
    if (keyboard_check(ord("A")) || keyboard_check(vk_left)) 
		_move_x -= player_speed;
	{
	}
    if (keyboard_check(ord("D")) || keyboard_check(vk_right)) 
	{
		_move_x += player_speed;
	}
	
//dash input trigger
	if (keyboard_check_pressed(vk_shift)) && dash_cooldown == 0 && (_move_x != 0 || _move_y != 0)
	{
		is_dashing = true;
		dash_timer = dash_duration;
		dash_cooldown = 240; 
		
		//add iframe code later
		
		//wheres it goin?
		
		dash_dir_x = sign(_move_x)
		dash_dir_y = sign(_move_y)
	}
}

//apluy dash

if (is_dashing)
{	
	//change normal move values to dash ones
	_move_x = dash_dir_x * dash_speed;
	_move_y = dash_dir_y * dash_speed;
}
		
	
//horizontal Collision loop
var _step_x = sign(_move_x);
repeat (abs(_move_x)) {
    if (place_meeting(x + _step_x, y, Obj_QWallTest)) {
        break; 
    } else {    
        x += _step_x;
    }
}

//Vertical Collision loop
var step_y = sign(_move_y);
repeat (abs(_move_y)) {
    if (place_meeting(x, y + step_y, Obj_QWallTest)) {
        break; 
    } else {    
        y += step_y;
    }
}
