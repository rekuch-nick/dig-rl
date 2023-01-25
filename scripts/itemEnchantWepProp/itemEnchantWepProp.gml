function itemEnchantWepProp(itm, fix){
	
	
	var w = itm.props[0];
	
	
	var r = irandom_range(1, 4);
	if(fix != -1){ r = fix; }
	
	var t = "Earth Carving"; var p = [w, "Dig Aura"];
	if(r == 2){ t = "Venom"; p = [w, "Poison Strikes"]; }
	if(r == 3){ t = "Crushing"; p = [w, "Knockback"]; }
	if(r == 4){ t = "Any"; p = ["Lunge", "Pierce", "Cleave", "Shockwave"]; }
	
	
	itm.nam = t + " " + itm.nam;
	itm.props = p;
	
	return itm;
}