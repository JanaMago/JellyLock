prevOnGround = onGround

//so we know when he can jump
onGround = place_meeting(x, y + groundBuffer, oMWall)
var onWall = place_meeting(x + 1, y, oMWall) - place_meeting(x - 1, y, oMWall)

//controls
var leftKey = keyboard_check( ord("A") )
var rightKey = keyboard_check( ord("D") )
var leftKeyheld = keyboard_check( ord("A") )
var rightKeyheld = keyboard_check( ord("D") )

var Space = keyboard_check_pressed( vk_space )
var Spaceheld = keyboard_check( vk_space )

var Shift = keyboard_check( vk_shift )

//comment to stop seeing speed
show_debug_message(xSpd)
	
//show_debug_message("Current room is " + room_get_name(room))

var previous_xSpd = xSpd 
var previous_ySpd = ySpd 

if leftKeyheld || rightKeyheld
{
	_dirheld++
}
else
{
	_dirheld = 0
}

wallJumpDelay = max(wallJumpDelay - 1, 0)

if Shift
{
	moveSpd = 12
	wallJumpDistance = 11
	accelerationCount = 0.05
}
else
{
	moveSpd = 6
	wallJumpDistance = 8.7
	accelerationCount = 0.075
}

if wallJumpDelay == 0
{
	prevDir = _dir

	// is he moving left or right
	_dir = rightKey - leftKey 

	if onWall != 0 && !onGround
	{
		wallJumped = false
		
		if onWallCount == 0
		{
			// we can play a sfx here
			onWallCount += 1
		}
		
		if Spaceheld != 1
		{
			if _dirheld < 20
			{
				//no more air controll
				_dir = 0
			}
		}
	}
	
	if acceleration < maxAcceleration
	{
		acceleration += accelerationCount
		
		if acceleration > maxAcceleration
		{
			acceleration = maxAcceleration
		}
	}
	
	if abs(prevDir2) < 0.2
	{
	    prevDir2 = 0 
	}
	
	if prevDir2 == 0
	{
		if _dir = 0
		{
			acceleration = 0
		}
	}

	if _dir != 0
	{
		//slipperyness code
		if prevDir != _dir
		{
			acceleration = 0
			prevDir2 = xSpd
		}
		
		xSpd = lengthdir_x(spd, 0)
		
		var Xchange = xSpd - previous_xSpd
		var Ychange = ySpd - previous_ySpd

		//friction
		if Xchange > 3 || Ychange > 3 || Ychange < -3 || Xchange < -3
		{
			xSpd -= Xchange * _friction
		}
	}
	else
	{
		prevDir2 = xSpd
	    xSpd *= _friction
	}

	var _acceleration = acceleration / maxAcceleration

	spd = (moveSpd * _dir * acceleration) + prevDir2
	
	prevDir2 = prevDir2 * 0.9

	// can he jump?
	if jumpBuffer > 0
	{
		jumpBuffer-- 
		if Space && ySpd >= 0
		{
			// we can play a sfx here
			
			jumpBuffer = 0 
			ySpd = jump 
		}
	}

	if onGround
	{
		jumpBuffer = 10
		wallJumped = false
		jumpDown = 0.8
		onWallCount = 0
			
		if prevOnGround != onGround
		{
			//we can play a sfx here
		}
		
		// if we are running
		if _dir != 0 && xSpd != 0
		{
			if runsfx != 0
			{
				runsfx -= 1 
			}
			else
			{
				//we can play a sfx here
			}
		}
		else
		{
			if Shift
			{
				//we can play a sfx here
			}
			else
			{
				//we can play a sfx here
			}
				
			if _dir == 0
			{
				runsfx = 1
			}
		}
		
		_friction = 0.2;
	}
	else 
	{
		if Shift
		{
			//we can play a sfx here
		}
		else
		{
			//we can play a sfx here
		}
			
		//not on wall
		if onWall == 0
		{
			_dirheld = 0
			onWallCount = 0
		}
		
		//not on ground = less air control
		if _dir != 0
		{
			_friction = 0.92
		}
		else
		{
			_friction = 1
		}
	}
	
	if onWall != 0 && !onGround && Space
	{
		//wall jump code
		wallJumpDelay = wallJumpDelayMax
		onWallPrev = onWall
		
		//tbh i dont like using lerp
		xSpd = lerp(xSpd, -onWall * wallJumpDistance - 1.5, 0.8)
		ySpd = lerp(ySpd, wallJumpHeight, 0.8) 
		wallJumped = true
		jumpDown = 0.2
		// we can play a sfx here
	}
}

//how long have you held the jump button
if Spaceheld && wallJumped
{
    if _dir == -onWallPrev || _dir == 0
    {
		xSpd = lerp(xSpd, -onWallPrev * wallJumpDistance, 0.8)
        
		//SHIFT PLUS DIRECTION = LONGER
		if Shift && _dir != 0
		{
			xSpd = lerp(xSpd, _dir * (wallJumpDistance + 3), 0.8)
		}
	}
	else
	{
		wallJumped = false
	}
}
else
{
    wallJumped = false
}

var _gravity2 = _gravity
var _gravity2Max = _gravityMax

if onWall != 0
{
	//on wall? change gravity
	_gravity2 = _gravityWall
	_gravity2Max = _gravityWallMax
}


ySpd += _gravity2

if ySpd < 0 && !Spaceheld
{
	//so that we varied jumps depending on if uour holding the jump button
    ySpd *= jumpDown 
}

ySpd = clamp(ySpd, -100, _gravity2Max) // so we wont go 1000000 miles an hour for falling too long

//wall collision, we dont put any code in the wall so that it doesnt lag when there a bunch of wall sprites
if place_meeting(x + xSpd, y, oMWall)
{
    var _x = round(x) 
    var _pixel = sign(xSpd) 
	while !place_meeting(_x + _pixel, y, oMWall)
	{
		_x += _pixel 
	}
	x = _x 
	xSpd = 0 
} 
else 
{
    x += xSpd 
}

//same but for y axis
if place_meeting(x, y + ySpd, oMWall) 
{
    var _y = round(y) 
    var _pixel = sign(ySpd) 
    while !place_meeting(x, _y + _pixel, oMWall)
	{
        _y += _pixel 
    }
    y = _y 
	ySpd = 0 
}
else
{
    y += ySpd 
}

//you touch death? you die brah
if place_meeting(x, y + ySpd, oMDeath) 
{
    var _y = round(y) 
    var _pixel = sign(ySpd) 
    while !place_meeting(x, _y + _pixel, oMDeath)
	{
        _y += _pixel 
	}
	dead = true
}
if place_meeting(x + xSpd, y, oMDeath)
{
    var _x = round(x) 
	var _pixel = sign(xSpd) 
    while !place_meeting(_x + _pixel, y, oMDeath)
	{
        _x += _pixel 
    }
    dead = true
} 

//if he's below this speed, stop. this is due to us doing *0.6
if abs(xSpd) < 0.2
{
    xSpd = 0 
}

if !oMStart.fadeEnd
{
	if dead = true
	{	
		//cool death effect can go here
	
		oMStart.fadeStart = true
		oMStart.step = 5
		
		//sfx can go here
		
		instance_destroy()
	}
}

if !trans && !dead
{
	var next_room = noone
	var next_direction = ""

	if bbox_left >= room_width + 20
	{
		next_direction = "right"
	}
	else if bbox_right < 0 - 20
	{
		next_direction = "left"
	}
	else if bbox_bottom < 0 - 20
	{
		next_direction = "up"
	}
	else if bbox_top >= room_height + 20
	{
		next_direction = "down"
	}

	if next_direction != ""
	{
		next_room = MRoomConnecting(room, next_direction)
		
		if next_room != noone
		{
			transDir = next_direction
			trans = true

			room_goto(next_room)
		}
	}
}
	
// sprite code
//#region
//if (xSpd != 0)
//{
//	image_xscale = sign(xSpd)
//}

//image_speed = 1

//if !onGround
//{
//	if onWall != 0
//	{
//		face = 3
//		image_speed = 1
//		image_xscale = onWall
//	}
//	else
//	{
//		face = 1
//		image_speed = 0
//		image_index = (ySpd > 0)
//	}
//}
//else
//{
//	if xSpd != 0
//	{
//		face = 2
//	}
//	else
//	{
//		face = 0
//	}
//}

sprite_index = sprite[face] 

//#endregion