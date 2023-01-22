function getMeleeMin(c){
	var n = 1;
	
	if(c.gear[ww.gsWep] != noone){
		n += c.gear[ww.gsWep].bonus;
	}
	
	n += clamp(c.str - 10, 0, c.str);
	
	return n;
}