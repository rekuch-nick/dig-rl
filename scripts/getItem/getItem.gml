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
		desc: "",
		wandCharge: 0,
	};
	
	if(t == "Orb"){ 
		itm.img = imgRock;
		itm.kind = "Other";
		itm.bonus = 0;
		itm.col = c_white;
		itm.desc = "";
	}
	
	if(t == "Rock"){ 
		itm.img = imgRock;
		itm.kind = "Other";
		itm.bonus = 0;
		itm.col = c_white;
		itm.charges = 1;
		itm.stacks = true;
		itm.desc = "Throw at foes";
	}
	if(t == "Throwing Knife"){ 
		itm.img = imgThrowingKnife;
		itm.kind = "Other";
		itm.bonus = 0;
		itm.col = c_white;
		itm.charges = 1;
		itm.stacks = true;
		itm.desc = "Throw at foes";
	}
	
	
	if(t == "Food"){ 
		itm.img = imgFood;
		itm.kind = "Food";
		itm.bonus = 0;
		itm.col = $A3620A;
		itm.food = 1000;
		itm.desc = "Cure 50% Hunger";
		itm.charges = 1;
		itm.stacks = true;
	}
	
	if(t == "Gladius"){ 
		itm.img = imgGearWepGlad;
		itm.kind = "Weapon";
		itm.bonus = 0;
		itm.col = c_white;
		itm.damRange = 8;
		itm.desc = "Better than nothing";
	}
	
	if(t == "Storm Staff"){ 
		itm.img = imgGearWepStaffStorm;
		itm.kind = "Weapon";
		itm.bonus = 0;
		itm.col = c_white;
		itm.damRange = 18;
		itm.props = ["Storm Bolts"];
		itm.desc = "Zap when attacking";
	}
	if(t == "Slime Staff"){ 
		itm.img = imgGearWepStaffSlime;
		itm.kind = "Weapon";
		itm.bonus = 0;
		itm.col = c_white;
		itm.damRange = 14;
		itm.props = ["Polymorph"];
		itm.desc = "Polymorph Foes";
	}
	if(t == "Root Staff"){ 
		itm.img = imgGearWepStaffRoots;
		itm.kind = "Weapon";
		itm.bonus = 0;
		itm.col = c_white;
		itm.damRange = 14;
		itm.props = [""];
		itm.desc = "";
	}
	
	
	if(t == "Sword"){ 
		itm.img = imgGearWepSword;
		itm.kind = "Weapon";
		itm.bonus = 0;
		itm.col = c_white;
		itm.damRange = 10;
		itm.props = ["Lunge"];
		itm.desc = "Spring Attack";
	}
	if(t == "Spear"){ 
		itm.img = imgGearWepSpear;
		itm.kind = "Weapon";
		itm.bonus = 0;
		itm.col = c_white;
		itm.damRange = 10;
		itm.props = ["Pierce"];
		itm.desc = "Strikethrough";
	}
	if(t == "Axe"){ 
		itm.img = imgGearWepAxe;
		itm.kind = "Weapon";
		itm.bonus = 0;
		itm.col = c_white;
		itm.damRange = 10;
		itm.props = ["Cleave"];
		itm.desc = "1/3 dmg to adjacent";
	}
	if(t == "Maul"){ 
		itm.img = imgGearWepMaul;
		itm.kind = "Weapon";
		itm.bonus = 0;
		itm.col = c_white;
		itm.damRange = 10;
		itm.props = ["Shockwave"];
		itm.desc = "Misses do 1/4 dmg";
	}
	
	
	
	if(t == "Leather Armor"){ 
		itm.img = imgGearArmLeather;
		itm.kind = "Armor";
		itm.bonus = 0;
		itm.col = c_white;
		itm.armor = 2;
		itm.armorCheck = 10;
		itm.props = ["Not Metal"];
		itm.desc = "";
	}
	if(t == "Scale Armor"){ 
		itm.img = imgGearArmScale;
		itm.kind = "Armor";
		itm.bonus = 0;
		itm.col = c_white;
		itm.armor = 4;
		itm.armorCheck = 12;
		itm.desc = "";
	}
	if(t == "Chain Armor"){ 
		itm.img = imgGearArmRing;
		itm.kind = "Armor";
		itm.bonus = 0;
		itm.col = c_white;
		itm.armor = 5;
		itm.armorCheck = 13;
		itm.desc = "";
	}
	if(t == "Banded Armor"){ 
		itm.img = imgGearArmBanded;
		itm.kind = "Armor";
		itm.bonus = 0;
		itm.col = c_white;
		itm.armor = 6;
		itm.armorCheck = 14;
		itm.desc = "";
	}
	if(t == "Splint Armor"){ 
		itm.img = imgGearArmSplint;
		itm.kind = "Armor";
		itm.bonus = 0;
		itm.col = c_white;
		itm.armor = 7;
		itm.armorCheck = 16;
		itm.desc = "";
	}
	if(t == "Plate Armor"){ 
		itm.img = imgGearArmPlate;
		itm.kind = "Armor";
		itm.bonus = 0;
		itm.col = c_white;
		itm.armor = 8;
		itm.armorCheck = 18;
		itm.desc = "";
	}
	
	
	
	if(t == "Ring of Protection"){ 
		itm.img = imgGearRingProt;
		itm.kind = "Ring";
		itm.bonus = 1;
		itm.col = c_lime;
		itm.props = ["Protection"];
		itm.desc = "Reduces damage taken";
	}
	
	if(t == "Ring of Wandskill"){ 
		itm.img = imgGearRingWandskill;
		itm.kind = "Ring";
		itm.bonus = 1;
		itm.col = c_lime;
		itm.props = ["Wandskill"];
		itm.desc = "Wands recharge faster";
	}
	
	if(t == "Ring of Sustenance"){ 
		itm.img = imgGearRingSus;
		itm.kind = "Ring";
		itm.bonus = 1;
		itm.col = c_lime;
		itm.props = ["Slow Digestion"];
		itm.desc = "Slow hunger gain";
	}
	
	if(t == "Ring of Lightning"){ 
		itm.img = imgGearRingBolts;
		itm.kind = "Ring";
		itm.bonus = 1;
		itm.col = c_lime;
		itm.props = ["Random Bolts"];
		itm.desc = "Zap when attacking";
	}
	
	if(t == "Ring of Striking"){ 
		itm.img = imgGearRingStrike;
		itm.kind = "Ring";
		itm.bonus = 1;
		itm.col = c_lime;
		itm.props = ["Melee Aim"];
		itm.desc = "+Hit chance";
	}
	
	if(t == "Ring of Regen"){ 
		itm.img = imgGearRingRegen;
		itm.kind = "Ring";
		itm.bonus = 1;
		itm.col = c_lime;
		itm.props = ["Regen"];
		itm.desc = "+HP Regen";
	}
	
	if(t == "Ring of Spiders"){ 
		itm.img = imgGearRingSpiders;
		itm.kind = "Ring";
		itm.bonus = 1;
		itm.col = c_lime;
		itm.props = ["Spiderlike"];
		itm.desc = "Spider powers";
	}
	
	if(t == "Ring of Knives"){ 
		itm.img = imgGearRingRocks;
		itm.kind = "Ring";
		itm.bonus = 1;
		itm.col = c_lime;
		itm.props = ["Rock Finding"];
		itm.desc = "Find knives when digging";
	}
	
	if(t == "Ring of Fire"){ 
		itm.img = imgGearRingFire;
		itm.kind = "Ring";
		itm.bonus = 1;
		itm.col = c_lime;
		itm.props = ["Burn Chance"];
		itm.desc = "Chance to Burn";
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
		itm.wandCharge = 1;
	}
	
	if(t == "Valor Wand"){ 
		itm.img = imgGearWandValor;
		itm.kind = "Wand";
		itm.throwPower = 0;
		itm.bonus = 0;
		itm.col = c_white;
		itm.potID = ww.potValor;
		itm.wandAuto = true;
		itm.charges = 20;
		itm.wandCharge = 1;
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
		itm.wandCharge = 1;
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
		itm.wandCharge = 1;
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
		itm.wandCharge = 1;
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
		itm.wandCharge = 1;
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
		itm.wandCharge = 1;
	}
	
	if(t == "Spark Wand"){ 
		itm.img = imgGearWandSparks;
		itm.kind = "Wand";
		itm.throwPower = 0;
		itm.bonus = 0;
		itm.col = c_white;
		itm.potID = ww.potShock;
		itm.wandAim = true;
		itm.charges = 20;
		itm.wandCharge = 5;
	}
	
	
	
	
	if(t == "Healing Potion"){ 
		itm.img = imgPotionHealing;
		itm.kind = "Potion";
		itm.throwPower = 0;
		itm.bonus = 0;
		itm.col = c_orange;
		itm.potID = ww.potHeal;
		itm.desc = "Heal some HP";
		itm.charges = 1;
		itm.stacks = true;
	}
	
	if(t == "Zap Potion"){ 
		itm.img = imgPotionSparks;
		itm.kind = "Potion";
		itm.throwPower = 0;
		itm.bonus = 0;
		itm.col = c_orange;
		itm.potID = ww.potSparks;
		itm.desc = "Zap nearby foes";
		itm.charges = 1;
		itm.stacks = true;
	}
	
	if(t == "Treasure Potion"){ 
		itm.img = imgPotionItemFind;
		itm.kind = "Potion";
		itm.throwPower = 0;
		itm.bonus = 0;
		itm.col = c_orange;
		itm.potID = ww.potItemFind;
		itm.desc = "See nearby items";
		itm.charges = 1;
		itm.stacks = true;
	}
	
	if(t == "Blasting Potion"){ 
		itm.img = imgPotionBlasting;
		itm.kind = "Potion";
		itm.throwPower = 0;
		itm.bonus = 0;
		itm.col = c_orange;
		itm.potID = ww.potBomb;
		itm.desc = "Explodes";
		itm.charges = 1;
		itm.stacks = true;
	}
	
	if(t == "Ice Potion"){ 
		itm.img = imgPotionIce;
		itm.kind = "Potion";
		itm.throwPower = 0;
		itm.bonus = 0;
		itm.col = c_orange;
		itm.potID = ww.potIce;
		itm.desc = "Freezes";
		itm.charges = 1;
		itm.stacks = true;
	}
	
	if(t == "Poison Potion"){ 
		itm.img = imgPotionPoison;
		itm.kind = "Potion";
		itm.throwPower = 0;
		itm.bonus = 0;
		itm.col = c_orange;
		itm.potID = ww.potPoison;
		itm.desc = "Poisons";
		itm.charges = 1;
		itm.stacks = true;
	}
	
	if(t == "STR Potion"){ 
		itm.img = imgPotionStr;
		itm.kind = "Potion";
		itm.throwPower = 0;
		itm.bonus = 0;
		itm.col = c_teal;
		itm.potID = ww.potSTR;
		itm.desc = "Permanent +1 STR";
		itm.charges = 1;
		itm.stacks = true;
	}
	
	if(t == "AGI Potion"){ 
		itm.img = imgPotionAgi;
		itm.kind = "Potion";
		itm.throwPower = 0;
		itm.bonus = 0;
		itm.col = c_teal;
		itm.potID = ww.potAGI;
		itm.desc = "Permanent +1 AGI";
		itm.charges = 1;
		itm.stacks = true;
	}
	
	if(t == "Warp Potion"){ 
		itm.img = imgPotionWarp;
		itm.kind = "Potion";
		itm.throwPower = 0;
		itm.bonus = 0;
		itm.col = c_orange;
		itm.potID = ww.potWarp;
		itm.desc = "Random teleport";
		itm.charges = 1;
		itm.stacks = true;
	}
	
	if(t == "Swordmastery Potion"){ 
		itm.img = imgPotionSwordmastery;
		itm.kind = "Potion";
		itm.throwPower = 0;
		itm.bonus = 0;
		itm.col = c_orange;
		itm.potID = ww.potSword;
		itm.desc = "Bonus melee damage";
		itm.charges = 1;
		itm.stacks = true;
	}
	
	if(t == "Defense Potion"){ 
		itm.img = imgPotionDefense;
		itm.kind = "Potion";
		itm.throwPower = 0;
		itm.bonus = 0;
		itm.col = c_orange;
		itm.potID = ww.potDefense;
		itm.desc = "Reduce damage taken";
		itm.charges = 1;
		itm.stacks = true;
	}
	
	if(t == "TrueStrike Potion"){ 
		itm.img = imgPotionTrueStrike;
		itm.kind = "Potion";
		itm.throwPower = 0;
		itm.bonus = 0;
		itm.col = c_orange;
		itm.potID = ww.potTrueStrike;
		itm.desc = "Bonuse Hit Chance";
		itm.charges = 1;
		itm.stacks = true;
	}
	
	if(t == "Bless Weapon Potion"){ 
		itm.img = imgPotionBlessWep;
		itm.kind = "Potion";
		itm.throwPower = 0;
		itm.bonus = 0;
		itm.col = c_teal;
		itm.potID = ww.potBlessWep;
		itm.desc = "Permanent + to Wep";
		itm.charges = 1;
		itm.stacks = true;
	}
	
	if(t == "Bless Armor Potion"){ 
		itm.img = imgPotionBlessArm;
		itm.kind = "Potion";
		itm.throwPower = 0;
		itm.bonus = 0;
		itm.col = c_teal;
		itm.potID = ww.potBlessArm;
		itm.desc = "Permanent + to Armor";
		itm.charges = 1;
		itm.stacks = true;
	}
	
	if(t == "Bless Rings Potion"){ 
		itm.img = imgPotionBlessRing;
		itm.kind = "Potion";
		itm.throwPower = 0;
		itm.bonus = 0;
		itm.col = c_teal;
		itm.potID = ww.potBlessRing;
		itm.desc = "Permanent + to both Rings";
		itm.charges = 1;
		itm.stacks = true;
	}
	
	if(t == "Slow Potion"){ 
		itm.img = imgPotionSlow;
		itm.kind = "Potion";
		itm.throwPower = 0;
		itm.bonus = 0;
		itm.col = c_orange;
		itm.potID = ww.potSlow;
		itm.desc = "Miss half of attacks";
		itm.charges = 1;
		itm.stacks = true;
	}
	
	if(t == "Restore Potion"){ 
		itm.img = imgPotionRestore;
		itm.kind = "Potion";
		itm.throwPower = 0;
		itm.bonus = 0;
		itm.col = c_teal;
		itm.potID = ww.potRestore;
		itm.desc = "Full Cure STR/AGI/HP";
		itm.charges = 1;
		itm.stacks = true;
	}
	
	if(t == "Displacement Potion"){
		itm.img = imgPotionDisplace;
		itm.kind = "Potion";
		itm.throwPower = 0;
		itm.bonus = 0;
		itm.col = c_orange;
		itm.potID = ww.potDisplace;
		itm.desc = "Dodge half of attacks";
		itm.charges = 1;
		itm.stacks = true;
	}
	
	
	
	return itm;
}