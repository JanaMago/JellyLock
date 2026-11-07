menuSelect = ["attack","defend","backpack"]
selectedOption = 0

function selectedAnim() { //checks which button is selected, moves it up, lerp makes it go smoothly, val1(true) is current pos, val2(false) end pos,
    obj_attackbtn.y = lerp(obj_attackbtn.y, (menuSelect[selectedOption] == "attack") ? obj_attackbtn.originalY - 20 : obj_attackbtn.originalY, 0.15);

    obj_defendbtn.y = lerp(obj_defendbtn.y, (menuSelect[selectedOption] == "defend") ? obj_defendbtn.originalY - 20 : obj_defendbtn.originalY, 0.15);

    obj_backpackbtn.y = lerp(obj_backpackbtn.y, (menuSelect[selectedOption] == "backpack") ? obj_backpackbtn.originalY - 20 : obj_backpackbtn.originalY, 0.15);
}
