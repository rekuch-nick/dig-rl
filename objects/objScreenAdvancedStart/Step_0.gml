if(!go.selected){
	
	var cc = 0;
	for(var i=0; i<array_length(charSmall); i++){
		if(bSpriteSelect[i].selected){ cc = i; }
	}
	pc.sprite_index = charSmall[cc];
	pc.bossSeen[cc] = noone;
	
	playerEatInput();
	ww.rollWord = true;
	
	
	for(var i=0; i<26; i++){
		pc.bag[i] = noone;
	}
	pc.gear[0] = noone;
	pc.gear[1] = noone;
	pc.gear[2] = noone;
	pc.gear[3] = noone;
	
	var w = "";
	if(bWepType[0].selected){ w = bWepType[0].txt; }
	if(bWepType[1].selected){ w = bWepType[1].txt; }
	if(bWepType[2].selected){ w = bWepType[2].txt; }
	if(bWepType[3].selected){ w = bWepType[3].txt; }
	w = itemEnchant(getItem(w), 1, true);
	/*
	var n = -1;
	if(bWepProp[0].selected){ n = 1; }
	if(bWepProp[1].selected){ n = 2; }
	if(bWepProp[2].selected){ n = 3; }
	if(bWepProp[3].selected){ n = 4; }
	if(bWepProp[4].selected){ n = 5; }
	if(bWepProp[5].selected){ n = 6; }
	if(bWepProp[6].selected){ n = 7; }
	if(bWepProp[7].selected){ n = 8; }
	w = itemEnchantWepProp(w, n);
	*/
	pc.gear[0] = w;
	pc.bag[22] = w;
	
	var a = "";
	if(bArmType[0].selected){ a = bArmType[0].txt; }
	if(bArmType[1].selected){ a = bArmType[1].txt; }
	if(bArmType[2].selected){ a = bArmType[2].txt; }
	if(bArmType[3].selected){ a = bArmType[3].txt; }
	if(bArmType[4].selected){ a = bArmType[4].txt; }
	if(bArmType[5].selected){ a = bArmType[5].txt; }
	a = getItem(a + " Armor");
	a = itemEnchant(a, 1, true);
	pc.gear[1] = a;
	pc.bag[23] = a;
	
	
	
	
	for(var i=0; i<4; i++){
		if(bFood[i].selected){
			playerGainItem(getItem("Food"));
		}
	}
	
	if(bRestore.selected){ 
		playerGainItem(getItem("Restore Potion")); 
		pc.potionKnown[ww.potRestore] = true;
	}
	
	if(bKnives.selected){ 
		var i = getItem("Throwing Knife");
		i.charges = 60;
		playerGainItem(i);
	}
	
	if(bBombs.selected){ 
		var i = getItem("Blasting Potion");
		i.charges = 10;
		playerGainItem(i);
		pc.potionKnown[ww.potBomb] = true;
	}
	
	if(bSparkWand.selected){
		playerGainItem(getItem("Spark Wand"));
	}
	
	for(var i=0; i<5; i++){
		if(bSTR[i].selected){
			playerGainItem(getItem("STR Potion")); 
			pc.potionKnown[ww.potSTR] = true;
		}
		if(bAGI[i].selected){
			playerGainItem(getItem("AGI Potion")); 
			pc.potionKnown[ww.potAGI] = true;
		}
	}
	
	for(var i=0; i<2; i++){
		if(bWep[i].selected){
			playerGainItem(getItem("Bless Weapon Potion")); 
			pc.potionKnown[ww.potBlessWep] = true;
		}
		if(bArm[i].selected){
			playerGainItem(getItem("Bless Armor Potion")); 
			pc.potionKnown[ww.potBlessArm] = true;
		}
		if(bRing[i].selected){
			playerGainItem(getItem("Bless Rings Potion")); 
			pc.potionKnown[ww.potBlessRing] = true;
		}
	}
	
	if(bPerkEvade.selected){ pc.ac ++; pc.perk[ww.perkDef] = true; }
	if(bPerkID.selected){
		for(var i=0; i<26; i++){ pc.potionKnown[i] = true; }
		pc.perk[ww.perkIDPotions] = true;
	}
	if(bPerkWandMore.selected){ pc.wands -= 1; pc.perk[ww.perkWandMore] = true; }
	if(bPerkWandRegen.selected){ pc.wandSkill += 2; pc.perk[ww.perkWandCharge] = true; }
	if(bPerkRegen.selected){ pc.hpRegen += 1; pc.perk[ww.perkRegen] = true; }
	if(bPerkMole.selected){ pc.digPow = 3; pc.agi -= 2; pc.perk[ww.perkMoleHands] = true; }
	if(bPerkFin.selected){ pc.finesse = true; pc.perk[ww.perkFin] = true; }
	if(bPerkScav.selected){ pc.knifeFind = true; pc.perk[ww.perkScan] = true; }
	
	
	
	with(objSetupButton){ instance_destroy(); }
	instance_destroy();
}



if(pc.clickRight){ seedDig /= 10; }
if(pc.clickLeft){ seedDig *= 10; }
seedDig = clamp(seedDig, 1, 1000000);

if(pc.clickDown){ ww.seed -= seedDig; }
if(pc.clickUp){ ww.seed += seedDig; }

if(ww.seed < 1){ ww.seed += 9999999; }
if(ww.seed > 9999999){ ww.seed -= 9999999; }




