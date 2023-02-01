function itemEnchantWepProp(itm, fix){
	
	
	var w = itm.props[0];
	
	
	var r = irandom_range(1, 7);
	if(fix != -1){ r = fix; }
	
	var t = "Mason"; var p = [w, "Stone Carving"];
	if(r == 2){ t = "Venom"; p = [w, "Poison Strikes"]; }
	if(r == 3){ t = "Crushing"; p = [w, "Knockback"]; }
	if(r == 4){ t = "Any"; p = ["Lunge", "Pierce", "Cleave", "Shockwave"]; }
	if(r == 5){ t = "Blur"; p = [w, "Blur Self"]; }
	if(r == 6){ t = "Warp"; p = [w, "Teleport Foe"]; }
	if(r == 7){ t = "Firey"; p = [w, "Flaming Burst"]; }
	
	
	itm.nam = t + " " + itm.nam;
	itm.props = p;
	
	return itm;
}