function getShadow(c){
	
	var n = c.shadow;
	
	if(c.gear[ww.gsArm] != noone){ if(characterHasProp(c, "Shadow")){
		n += ceil(c.gear[ww.gsArm].bonus / 3);
	}}
	
	return n;

}