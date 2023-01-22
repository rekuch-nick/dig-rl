function getItem(t){
	
	var itm = {
		nam: t,
		img: imgBlank,
		kind: "Other",
		bonus: 0,
		col: c_white,
		damRange: 0,
		props: [],
		armor: 0,
		armorCheck: 0,
		food: 0,
		throwPower: 10,
		spell: "",
	};
	
	if(t == "Rock"){ 
		itm.kind = "Other";
		itm.bonus = 0;
		itm.col = c_white;
	}
	
	if(t == "Food"){ 
		itm.img = imgFood;
		itm.kind = "Other";
		itm.bonus = 0;
		itm.col = $A3620A;
		itm.food = 1000;
	}
	
	
	if(t == "Sword"){ 
		itm.img = imgGearWepSword;
		itm.kind = "Weapon";
		itm.bonus = 0;
		itm.col = c_white;
		itm.damRange = 10;
	}
	
	
	if(t == "Leather Armor"){ 
		itm.img = imgGearArmLeather;
		itm.kind = "Armor";
		itm.bonus = 0;
		itm.col = c_white;
		itm.armor = 3;
		itm.armorCheck = 10;
		itm.props = ["Not Metal"];
	}
	if(t == "Scale Armor"){ 
		itm.img = imgGearArmScale;
		itm.kind = "Armor";
		itm.bonus = 0;
		itm.col = c_white;
		itm.armor = 4;
		itm.armorCheck = 12;
	}
	if(t == "Chain Armor"){ 
		itm.img = imgGearArmRing;
		itm.kind = "Armor";
		itm.bonus = 0;
		itm.col = c_white;
		itm.armor = 5;
		itm.armorCheck = 13;
	}
	if(t == "Banded Armor"){ 
		itm.img = imgGearArmBanded;
		itm.kind = "Armor";
		itm.bonus = 0;
		itm.col = c_white;
		itm.armor = 7;
		itm.armorCheck = 15;
	}
	if(t == "Splint Armor"){ 
		itm.img = imgGearArmSplint;
		itm.kind = "Armor";
		itm.bonus = 0;
		itm.col = c_white;
		itm.armor = 9;
		itm.armorCheck = 17;
	}
	if(t == "Plate Armor"){ 
		itm.img = imgGearArmPlate;
		itm.kind = "Armor";
		itm.bonus = 0;
		itm.col = c_white;
		itm.armor = 11;
		itm.armorCheck = 19;
	}
	
	
	if(t == "Ring of Protection"){ 
		itm.img = imgGearRing;
		itm.kind = "Ring";
		itm.bonus = 1;
		itm.col = c_green;
		itm.props = ["Protection"];
	}
	
	
	return itm;
}