


//if(pc.clickChar == "R"){
if(keyboard_check(ord("R"))){
	ww.seed = irandom_range(1, 1000000);
	playerEatInput();
}

if(keyboard_check(ord("1"))){
	ww.seed = 10000;
	playerEatInput();
}

if(keyboard_check(ord("2"))){
	ww.seed = 20222;
	playerEatInput();
}

if(keyboard_check(ord("3"))){
	ww.seed = 30333;
	playerEatInput();
}

if(pc.clickLeft){
	charCursor --;
	if(charCursor < 0){ charCursor = array_length(charBig) - 1; }
	playerEatInput();
}
if(pc.clickRight){
	charCursor ++;
	if(charCursor > array_length(charBig) - 1){ charCursor = 0; }
	playerEatInput();
}



if(pc.clickEnter || pc.clickLM){
	pc.sprite_index = charSmall[charCursor];
	if(charPower[charCursor] == "Extra Food"){
		var i = playerGetEmptyBagSlot(); if(i != -1){ pc.bag[i] = getItem("Food"); }
		var i = playerGetEmptyBagSlot(); if(i != -1){ pc.bag[i] = getItem("Food"); }
	}
	if(charPower[charCursor] == "More STR"){ pc.strMax += 2; pc.str += 2; }
	if(charPower[charCursor] == "More AGI"){ pc.agiMax += 2; pc.agi += 2; }
	if(charPower[charCursor] == "Fast Healing"){ pc.hpRegen += .5; }
	//if(charPower[charCursor] == "Fast Runner"){ pc.fastRunner += 15; }
	//if(charPower[charCursor] == "Weak"){ pc.strMax -= 3; pc.str -= 3; pc.hpMax -= 50; pc.hp -= 50; }
	if(charPower[charCursor] == "ID Potions"){ for(var i=0; i<26; i++){ pc.potionKnown[i] = true; }}
	if(charPower[charCursor] == "Rich"){ 
		pc.bag[22] = itemEnchant(getItem("Sword"), 2, true);
		pc.bag[22] = itemEnchantWepProp(pc.bag[22], 7);
		pc.gear[ww.gsWep] = pc.bag[22];
		pc.bag[23] = itemEnchant(getItem("Banded Armor"), 2, true);
		pc.bag[23] = itemEnchantArmorProp(pc.bag[23], 3);
		pc.gear[ww.gsArm] = pc.bag[23];
		pc.bag[24] = itemEnchant(getItem("Ring of Protection"), 2, true);
		pc.gear[ww.gsRing] = pc.bag[24];
		pc.bag[25] = itemEnchant(getItem("Ring of Striking"), 2, true);
		pc.gear[ww.gsRing2] = pc.bag[25];
	}
	
	playerEatInput();
	ww.rollWord = true;
	instance_destroy();
}