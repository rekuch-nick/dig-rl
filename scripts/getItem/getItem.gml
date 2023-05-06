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
		potID: -1,
		wandAim: false,
		wandAuto: false,
		charges: 0,
		stacks: false,
	};
	
	if(t == "Rock"){ 
		itm.img = imgRock;
		itm.kind = "Other";
		itm.bonus = 0;
		itm.col = c_white;
		itm.charges = 1;
		itm.stacks = true;
	}
	
	if(t == "Food"){ 
		itm.img = imgFood;
		itm.kind = "Food";
		itm.bonus = 0;
		itm.col = $A3620A;
		itm.food = 1000;
	}
	
	if(t == "Gladius"){ 
		itm.img = imgGearWepGlad;
		itm.kind = "Weapon";
		itm.bonus = 0;
		itm.col = c_white;
		itm.damRange = 8;
	}
	if(t == "Sword"){ 
		itm.img = imgGearWepSword;
		itm.kind = "Weapon";
		itm.bonus = 0;
		itm.col = c_white;
		itm.damRange = 10;
		itm.props = ["Lunge"];
	}
	if(t == "Spear"){ 
		itm.img = imgGearWepSpear;
		itm.kind = "Weapon";
		itm.bonus = 0;
		itm.col = c_white;
		itm.damRange = 10;
		itm.props = ["Pierce"];
	}
	if(t == "Axe"){ 
		itm.img = imgGearWepAxe;
		itm.kind = "Weapon";
		itm.bonus = 0;
		itm.col = c_white;
		itm.damRange = 10;
		itm.props = ["Cleave"];
	}
	if(t == "Maul"){ 
		itm.img = imgGearWepMaul;
		itm.kind = "Weapon";
		itm.bonus = 0;
		itm.col = c_white;
		itm.damRange = 10;
		itm.props = ["Shockwave"];
	}
	
	
	
	if(t == "Leather Armor"){ 
		itm.img = imgGearArmLeather;
		itm.kind = "Armor";
		itm.bonus = 0;
		itm.col = c_white;
		itm.armor = 2;
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
		itm.armor = 6;
		itm.armorCheck = 14;
	}
	if(t == "Splint Armor"){ 
		itm.img = imgGearArmSplint;
		itm.kind = "Armor";
		itm.bonus = 0;
		itm.col = c_white;
		itm.armor = 7;
		itm.armorCheck = 16;
	}
	if(t == "Plate Armor"){ 
		itm.img = imgGearArmPlate;
		itm.kind = "Armor";
		itm.bonus = 0;
		itm.col = c_white;
		itm.armor = 8;
		itm.armorCheck = 18;
	}
	
	
	
	if(t == "Ring of Protection"){ 
		itm.img = imgGearRingProt;
		itm.kind = "Ring";
		itm.bonus = 1;
		itm.col = c_lime;
		itm.props = ["Protection"];
	}
	
	if(t == "Ring of Sustenance"){ 
		itm.img = imgGearRingSus;
		itm.kind = "Ring";
		itm.bonus = 1;
		itm.col = c_lime;
		itm.props = ["Slow Digestion"];
	}
	
	if(t == "Ring of Lightning"){ 
		itm.img = imgGearRingBolts;
		itm.kind = "Ring";
		itm.bonus = 1;
		itm.col = c_lime;
		itm.props = ["Random Bolts"];
	}
	
	if(t == "Ring of Striking"){ 
		itm.img = imgGearRingStrike;
		itm.kind = "Ring";
		itm.bonus = 1;
		itm.col = c_lime;
		itm.props = ["Melee Aim"];
	}
	
	if(t == "Ring of Regen"){ 
		itm.img = imgGearRingRegen;
		itm.kind = "Ring";
		itm.bonus = 1;
		itm.col = c_lime;
		itm.props = ["Regen"];
	}
	
	if(t == "Ring of Spiders"){ 
		itm.img = imgGearRingSpiders;
		itm.kind = "Ring";
		itm.bonus = 1;
		itm.col = c_lime;
		itm.props = ["Spiderlike"];
	}
	
	if(t == "Ring of Rocks"){ 
		itm.img = imgGearRingRocks;
		itm.kind = "Ring";
		itm.bonus = 1;
		itm.col = c_lime;
		itm.props = ["Rock Finding"];
	}
	
	if(t == "Ring of Fire"){ 
		itm.img = imgGearRingFire;
		itm.kind = "Ring";
		itm.bonus = 1;
		itm.col = c_lime;
		itm.props = ["Burn Chance"];
	}
	
	
	
	
	
	if(t == "Blink Wand"){ 
		itm.img = imgGearWandBlink;
		itm.kind = "Wand";
		itm.throwPower = 0;
		itm.bonus = 0;
		itm.col = c_white;
		itm.potID = ww.potBlink;
		itm.wandAuto = true;
		itm.charges = 10;
	}
	
	if(t == "Crumble Wand"){ 
		itm.img = imgGearWandDisintegrate;
		itm.kind = "Wand";
		itm.throwPower = 0;
		itm.bonus = 0;
		itm.col = c_white;
		itm.potID = ww.potCrumble;
		itm.wandAim = true;
		itm.charges = 10;
	}
	
	if(t == "Fireball Wand"){ 
		itm.img = imgGearWandFireballs;
		itm.kind = "Wand";
		itm.throwPower = 0;
		itm.bonus = 0;
		itm.col = c_white;
		itm.potID = ww.potFireball;
		itm.wandAim = true;
		itm.charges = 10;
	}
	
	if(t == "Frost Wand"){ 
		itm.img = imgGearWandFrost;
		itm.kind = "Wand";
		itm.throwPower = 0;
		itm.bonus = 0;
		itm.col = c_white;
		itm.potID = ww.potFrost;
		itm.wandAuto = true;
		itm.charges = 10;
	}
	
	if(t == "Pure Wand"){ 
		itm.img = imgGearWandPure;
		itm.kind = "Wand";
		itm.throwPower = 0;
		itm.bonus = 0;
		itm.col = c_white;
		itm.potID = ww.potPure;
		itm.wandAuto = true;
		itm.charges = 10;
	}
	
	if(t == "Pox Wand"){ 
		itm.img = imgGearWandPox;
		itm.kind = "Wand";
		itm.throwPower = 0;
		itm.bonus = 0;
		itm.col = c_white;
		itm.potID = ww.potPox;
		itm.wandAuto = true;
		itm.charges = 10;
	}
	
	
	
	
	if(t == "Healing Potion"){ 
		itm.img = imgPotionHealing;
		itm.kind = "Potion";
		itm.throwPower = 0;
		itm.bonus = 0;
		itm.col = c_orange;
		itm.potID = ww.potHeal;
	}
	
	if(t == "Blasting Potion"){ 
		itm.img = imgPotionBlasting;
		itm.kind = "Potion";
		itm.throwPower = 0;
		itm.bonus = 0;
		itm.col = c_orange;
		itm.potID = ww.potBomb;
	}
	
	if(t == "Ice Potion"){ 
		itm.img = imgPotionIce;
		itm.kind = "Potion";
		itm.throwPower = 0;
		itm.bonus = 0;
		itm.col = c_orange;
		itm.potID = ww.potIce;
	}
	
	if(t == "Poison Potion"){ 
		itm.img = imgPotionPoison;
		itm.kind = "Potion";
		itm.throwPower = 0;
		itm.bonus = 0;
		itm.col = c_orange;
		itm.potID = ww.potPoison;
	}
	
	if(t == "STR Potion"){ 
		itm.img = imgPotionStr;
		itm.kind = "Potion";
		itm.throwPower = 0;
		itm.bonus = 0;
		itm.col = c_teal;
		itm.potID = ww.potSTR;
	}
	
	if(t == "AGI Potion"){ 
		itm.img = imgPotionAgi;
		itm.kind = "Potion";
		itm.throwPower = 0;
		itm.bonus = 0;
		itm.col = c_teal;
		itm.potID = ww.potAGI;
	}
	
	if(t == "Warp Potion"){ 
		itm.img = imgPotionWarp;
		itm.kind = "Potion";
		itm.throwPower = 0;
		itm.bonus = 0;
		itm.col = c_orange;
		itm.potID = ww.potWarp;
	}
	
	if(t == "Swordmastery Potion"){ 
		itm.img = imgPotionSwordmastery;
		itm.kind = "Potion";
		itm.throwPower = 0;
		itm.bonus = 0;
		itm.col = c_orange;
		itm.potID = ww.potSword;
	}
	
	if(t == "Defense Potion"){ 
		itm.img = imgPotionDefense;
		itm.kind = "Potion";
		itm.throwPower = 0;
		itm.bonus = 0;
		itm.col = c_orange;
		itm.potID = ww.potDefense;
	}
	
	if(t == "Bless Weapon Potion"){ 
		itm.img = imgPotionBlessWep;
		itm.kind = "Potion";
		itm.throwPower = 0;
		itm.bonus = 0;
		itm.col = c_teal;
		itm.potID = ww.potBlessWep;
	}
	
	if(t == "Bless Armor Potion"){ 
		itm.img = imgPotionBlessArm;
		itm.kind = "Potion";
		itm.throwPower = 0;
		itm.bonus = 0;
		itm.col = c_teal;
		itm.potID = ww.potBlessArm;
	}
	
	if(t == "Bless Rings Potion"){ 
		itm.img = imgPotionBlessRing;
		itm.kind = "Potion";
		itm.throwPower = 0;
		itm.bonus = 0;
		itm.col = c_teal;
		itm.potID = ww.potBlessRing;
	}
	
	if(t == "Slow Potion"){ 
		itm.img = imgPotionSlow;
		itm.kind = "Potion";
		itm.throwPower = 0;
		itm.bonus = 0;
		itm.col = c_orange;
		itm.potID = ww.potSlow;
	}
	
	if(t == "Restore Potion"){ 
		itm.img = imgPotionRestore;
		itm.kind = "Potion";
		itm.throwPower = 0;
		itm.bonus = 0;
		itm.col = c_orange;
		itm.potID = ww.potRestore;
	}
	
	if(t == "Displacement Potion"){
		itm.img = imgPotionDisplace;
		itm.kind = "Potion";
		itm.throwPower = 0;
		itm.bonus = 0;
		itm.col = c_orange;
		itm.potID = ww.potDisplace;
	}
	
	
	
	return itm;
}