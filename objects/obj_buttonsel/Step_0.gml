if (keyboard_check_pressed(vk_right)){
    selectedOption++
	
	if selectedOption >= array_length(menuSelect){
		selectedOption = 0
	}
	
	
}

if (keyboard_check_pressed(vk_left)){
	
	selectedOption--
	
	if selectedOption == -1{
		selectedOption = 2
	}
    
	
}

//if (keyboard_check_pressed(ord("Z"))){
//    if menuSelect[selectedOption] == "attack"{
//		obj_attackbtn.y -= 20
//	}
//	else if menuSelect[selectedOption] == "defend"{
//		obj_defendbtn.y -= 20
//	}
//	else if menuSelect[selectedOption] == "backpack"{
//		obj_backpackbtn.y -= 20
//	}
	
//}
selectedAnim()