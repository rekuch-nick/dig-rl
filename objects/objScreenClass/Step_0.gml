


if(pc.clickChar == "1" || pc.clickChar == "2" || pc.clickChar == "3"
					|| pc.clickChar == "4" || pc.clickChar == "5" || pc.clickChar == "6"){
	
	
	if(pc.clickChar == "1"){ pc.perk[ww.perkTroll] = true; }
	if(pc.clickChar == "2"){ pc.perk[ww.perkShadow] = true; }
	if(pc.clickChar == "3"){ pc.perk[ww.perkManticore] = true; }
	if(pc.clickChar == "4"){ pc.perk[ww.perkTitan] = true; }
	if(pc.clickChar == "5"){ pc.perk[ww.perkRaiju] = true; }
	if(pc.clickChar == "6"){ pc.perk[ww.perkPegasus] = true; }
	
	
	
	playerEatInput();
	instance_destroy();
}