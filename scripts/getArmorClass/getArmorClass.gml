function getArmorClass(c){
	
	var n = c.ac + clamp(c.agi - 10, 0, c.agi);
	
	
	var armorCheck = 0;
	
	if(c.gear[ww.gsArm] != noone){
		armorCheck = c.gear[ww.gsArm].armorCheck;
		armorCheck = clamp(armorCheck - c.str, 0, armorCheck);
		
		var armorCheckMax = clamp(c.agi - 10, 0, c.agi);
		if(armorCheck > armorCheckMax){ armorCheck = armorCheckMax; }
		
		
		n += c.gear[ww.gsArm].bonus;
		n += c.gear[ww.gsArm].armor;
	}
	
	n -= armorCheck;
	
	return n;
}

