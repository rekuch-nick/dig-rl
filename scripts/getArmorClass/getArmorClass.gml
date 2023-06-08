function getArmorClass(c){
	
	if(c == pc && pc.debugMode){ return 100; }
	
	var n = c.ac;
	var agiBonus = clamp(c.agi - 10, 0, 10);
	
	if(c == pc && pc.perk[ww.perkShadow]){
		var agi2 = clamp(pc.agi - 20, 0, pc.agi);
		agiBonus += ceil(agi2 / 2);
	}
	
	
	
	if(c.gear[ww.gsArm] != noone){
		var weight = c.gear[ww.gsArm].armorCheck;
		if(weight > c.str){ agiBonus = 0; }
		
		//var armorLoss = weight - c.str;
		//if(armorLoss < 0){ armorLoss = 0; }
		//if(armorLoss > agiBonus){ armorLoss = agiBonus; }
		//agiBonus -= armorLoss;
		
		
		n += c.gear[ww.gsArm].bonus;
		n += c.gear[ww.gsArm].armor;
		
		
	}
	
	
	
	return n + agiBonus;
}

