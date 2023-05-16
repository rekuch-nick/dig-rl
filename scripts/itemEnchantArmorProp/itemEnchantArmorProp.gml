function itemEnchantArmorProp(itm, fix){
	
	var w = noone;
	if(array_length(itm.props) > 0){
		w = itm.props[0];
	}
	
	var r = fix;
	if(fix == -1){
		r = irandom_range(1, 7);
	}
	//r = 6; /////
	if(fix != -1){ r = fix; }
	var t = "Mage"; var p =  "Cast Damage Up"; var de = "+Zap damage"//plate
	if(r == 2){ t = "Yeti"; p = "Ice Immune"; de = "Frozen Immunity"}//splint
	if(r == 3){ t = "Iron-Wood"; p = "Not Metal"; de = ""; }//leather
	if(r == 4){ t = "Shadow"; p = "Shadow"; de = "Wake fewer monsters"; }//chain
	if(r == 5){ t = "Glow"; p = "X-Ray"; de = "See through walls"}//scale
	if(r == 6){ t = "Swordmaster"; p = "Perfect Lunges"; de = "Bonus to Spring Attacks"; }
	if(r == 7){ t = "Bushman"; p = "Grass Walking"; de = "Grass doesn't spawn Pests"; }
	
	
	
	
	if(t == "Mage" && itm.nam == "Plate Armor"){
		itm.armorCheck -= 2;
		t = "Silver";
		itm.img = imgGearArmPlateSilver;
	}
	if(t == "Iron-Wood" && itm.nam == "Leather Armor"){
		t = "Druid"; p = "Thorns"; de = "Tangle attackers";
		itm.img = imgGearArmLeatherDruid;
	}
	if(t == "Shadow" && itm.nam == "Chain Armor"){
		t = "Darkness";
		itm.armor += 2;
		itm.img = imgGearArmRingDark;
	}
	if(t == "Yeti" && itm.nam == "Splint Armor"){
		t = "Frozen"; p = "Frozen"; de = "Frozen/Burn/Water Resist";
		itm.img = imgGearArmSplintFrozen;
	}
	if(t == "Glow" && itm.nam == "Scale Armor"){
		t = "Light"; p = "Light"; de = "True Sight";
		itm.img = imgGearArmScaleLight;
		itm.armor += 2;
	}
	
	
	
	
	
	
	
	if(itm.nam == "Leather Armor"){
		itm.nam = t + " Leather";
	} else if(itm.nam == "Scale Armor"){
		itm.nam = t + " Scale";
	} else if(itm.nam == "Chain Armor"){
		itm.nam = t + " Chain";
	} else if(itm.nam == "Banded Armor"){
		itm.nam = t + " Bands";
	} else if(itm.nam == "Splint Armor"){
		itm.nam = t + " Splint";
	} else if(itm.nam == "Plate Armor"){
		itm.nam = t + " Plate";
	}
	
	
	if(w == noone){
		itm.props = [p];
	} else {
		itm.props = [w, p];
	}
	
	itm.desc = de;
	
	return itm;
}