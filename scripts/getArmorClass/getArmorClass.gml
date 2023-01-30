function getArmorClass(c){
	
	var n = c.ac;
	var agiBonus = clamp(c.agi - 10, 0, c.agi);
	
	
	
	
	
	if(c.gear[ww.gsArm] != noone){
		var weight = c.gear[ww.gsArm].armorCheck;
		
		var armorLoss = weight - c.str;
		if(armorLoss < 0){ armorLoss = 0; }
		if(armorLoss > agiBonus){ armorLoss = agiBonus; }
		agiBonus -= armorLoss;
		
		n += c.gear[ww.gsArm].bonus;
		n += c.gear[ww.gsArm].armor;
		
		
	}
	
	
	
	return n + agiBonus;
}

