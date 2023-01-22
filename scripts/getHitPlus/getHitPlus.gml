function getHitPlus(c){
	var n = c.aim;
	
	n += clamp(c.agi - 10, 0, c.agi);
	
	if(c.gear[ww.gsWep] != noone){
		n += c.gear[ww.gsWep].bonus;
	}
	
	return n;
}