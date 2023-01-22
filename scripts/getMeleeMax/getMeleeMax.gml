function getMeleeMax(c){
	
	var n = 0;
	
	if(c.gear[ww.gsWep] != noone){
		n += c.gear[ww.gsWep].bonus;
		n += c.gear[ww.gsWep].damRange;
	} else {
		n += c.damRange;
	}
	
	n += clamp(c.str - 10, 0, c.str);
	
	return n;

}