function getMeleeMax(c){
	
	var n = 0;
	
	if(c.gear[ww.gsWep] != noone){
		n += c.gear[ww.gsWep].bonus;
		n += c.gear[ww.gsWep].damRange;
	} else {
		n += c.damRange;
	}
	
	var damBonus = clamp(c.str - 10, 0, c.str);
	var agiBonus = 0;
	if(c.finesse){
		var unencumbered = (c.gear[ww.gsArm] == noone) || (c.gear[ww.gsArm].armorCheck <= c.str);
		if(unencumbered){ agiBonus = clamp(c.agi - 10, 0, 10); }
		damBonus = max(damBonus, agiBonus);	
	}
	n += damBonus;
	
	return n;

}