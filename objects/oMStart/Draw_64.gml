//show_debug_message(fadeStart)
draw_set_alpha(fade)
draw_set_color(c_black)
draw_rectangle(0, 0, display_get_width(), display_get_height(), false)

if fadeStart == true
{  
	fade += 0.13
}

if fadeEnd == true
{
	step += 1
	
	if step >= 5
	{
		fade -= 0.13
	}
}

if fade <= 0 && fadeEnd = true
{
	step = 0
	fadeEnd = false
}

if fade >= 1 && fadeStart = true
{
	fadeStart = false
	oMSpawn.off = false
}

draw_set_alpha(1)