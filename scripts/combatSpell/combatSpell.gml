function combatSpell(c1, c2){
	if(c1 == noone || c2 == noone){ return; }
	
	if(c1.hp < 1){ return; }
	
	
	
	
	
	
	
		
	var dam = irandom_range(getSpellMin(c1), getSpellMax(c1));
	if(characterHasProp(c1, "Cast Damage Up")){ dam += irandom_range(getSpellMin(c1), getSpellMax(c1)); }
	
	if(characterHasProp(c2, "Protection")){
		var protReduction = itemPropBonus(c2, "Protection");
		dam = clamp(dam - protReduction, 0, dam);
	}
	
	if(c1 == pc){ playerZapStrip(c2); }
	
	c2.hp -= dam;
	if(c2.hp < 1){ c1.dataKills ++; }
	
	var sn = c2.hp < 1 ? ". " + c2.nam + " is killed!" : ".";
	var v = c1 == pc ? " zap " : " zaps ";
	if(c2.id == pc){ sn = " (" + string(pc.hp) + ")"; }
	logMessage(c1.nam + v + c2.nam + " for " + string(dam) + sn);
		
		
	
	
	
	
	
	
	
	
	
}