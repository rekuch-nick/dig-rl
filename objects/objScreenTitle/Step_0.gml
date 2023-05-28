if(instance_number(objScreen) > 1){ return; }


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

if(pc.clickLeft || mouse_wheel_up() ){
	charCursor --;
	if(charCursor < 0){ charCursor = array_length(charBig) - 1; }
	playerEatInput();
}
if(pc.clickRight || mouse_wheel_down() ){
	charCursor ++;
	if(charCursor > array_length(charBig) - 1){ charCursor = 0; }
	playerEatInput();
}



if(pc.clickEnter){
	pc.sprite_index = charSmall[charCursor];
	if(charPower[charCursor] == "Extra Food"){
		pc.bag[0].charges = 3;
		//var i = playerGetEmptyBagSlot(); if(i != -1){ pc.bag[i] = getItem("Food"); }
		//var i = playerGetEmptyBagSlot(); if(i != -1){ pc.bag[i] = getItem("Food"); }
		var i = playerGetEmptyBagSlot(); if(i != -1){ pc.bag[i] = getItem("Restore Potion"); }
		pc.potionKnown[ww.potRestore] = true;
	}
	if(charPower[charCursor] == "More STR"){ pc.strMax += 2; pc.str += 2; }
	if(charPower[charCursor] == "More AGI"){ pc.agiMax += 2; pc.agi += 2; }
	if(charPower[charCursor] == "Evasive"){ pc.ac ++; }
	if(charPower[charCursor] == "Healthy"){ pc.hpRegen += 1; }
	if(charPower[charCursor] == "Wand Expert"){ 
		pc.wandSkill += 2;
		pc.wands -= 1;
	}
	if(charPower[charCursor] == "Fast Runner"){ pc.fastRunner += 10; }
	if(charPower[charCursor] == "Weak"){ pc.strMax -= 1; pc.str -= 1; pc.hpMax -= 50; pc.hp -= 50; }
	if(charPower[charCursor] == "ID Potions"){ for(var i=0; i<26; i++){ pc.potionKnown[i] = true; }}
	if(charPower[charCursor] == "Wealthy"){ 
		pc.bag[22] = itemEnchant(getItem("Sword"), 2, true);
		//pc.bag[22] = itemEnchantWepProp(pc.bag[22], 7);
		pc.gear[ww.gsWep] = pc.bag[22];
		pc.bag[23] = itemEnchant(getItem("Banded Armor"), 2, true);
		pc.bag[23] = itemEnchantArmorProp(pc.bag[23], 3);
		pc.gear[ww.gsArm] = pc.bag[23];
		pc.bag[24] = itemEnchant(getItem("Ring of Protection"), 1, true);
		pc.gear[ww.gsRing] = pc.bag[24];
		pc.bag[25] = itemEnchant(getItem("Ring of Striking"), 1, true);
		pc.gear[ww.gsRing2] = pc.bag[25];
		pc.bag[1] = getItem("Throwing Knife"); pc.bag[1].charges = 10;
		
	}
	
	pc.bossSeen[charCursor] = noone;
	
	playerEatInput();
	ww.rollWord = true;
	instance_destroy();
}