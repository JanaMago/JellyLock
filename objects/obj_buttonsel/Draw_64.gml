draw_text(x,y,menuSelect[selectedOption])

if (keyboard_check_pressed(ord("Z"))){
    if menuSelect[selectedOption] == "attack"{
		draw_text(x,y + 20,"attack_pressed")
	}
	else if menuSelect[selectedOption] == "defend"{
		draw_text(x,y + 20,"defend_pressed")
	}
	else if menuSelect[selectedOption] == "backpack"{
		draw_text(x,y + 20,"backpack_pressed")
	}
	
}