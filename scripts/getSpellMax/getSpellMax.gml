function getSpellMax(c){
	
	var n = 0;
	
	
	if(c == pc){
		var damBonus = clamp(c.str - 10, 0, c.str);
		var agiBonus = 0;
		if(c.finesse){
			var unencumbered = (c.gear[ww.gsArm] == noone) || (c.gear[ww.gsArm].armorCheck <= c.str);
			if(unencumbered){ agiBonus = clamp(c.agi - 10, 0, 10); }
			damBonus = max(damBonus, agiBonus);	
		}
		n += damBonus;
		
	} else {
	
		n += c.splRange;
	}
	
	
	
	return n;

}