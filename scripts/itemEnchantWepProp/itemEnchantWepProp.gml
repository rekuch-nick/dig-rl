function itemEnchantWepProp(itm, fix){
	
	
	var w = itm.props[0];
	
	
	var r = irandom_range(1, 7);
	if(fix != -1){ r = fix; }
	
	var t = "Mason"; var p = [w, "Flesh to Stone"];
	if(r == 2){ t = "Venom"; p = [w, "Poison Strikes"]; }
	if(r == 3){ t = "Crushing"; p = [w, "Knockback"]; }
	if(r == 4){ t = "Any"; p = ["Lunge", "Pierce", "Cleave", "Shockwave"]; }
	if(r == 5){ t = "Blur"; p = [w, "Blur Self"]; }
	if(r == 6){ t = "Warp"; p = [w, "Teleport Foe"]; }
	if(r == 7){ t = "Firey"; p = [w, "Flaming Burst"]; }
	
	if(itm.nam == "Sword" && t == "Venom"){ itm.img = imgGearWepSwordVenom; }
	if(itm.nam == "Axe" && t == "Venom"){ itm.img = imgGearWepAxeVenom; }
	if(itm.nam == "Spear" && t == "Venom"){ itm.img = imgGearWepSpearVenom; }
	if(itm.nam == "Maul" && t == "Venom"){ itm.img = imgGearWepMaulVenom; }
	
	if(itm.nam == "Sword" && t == "Firey"){ itm.img = imgGearWepSwordFire; }
	if(itm.nam == "Axe" && t == "Firey"){ itm.img = imgGearWepAxeFire; }
	if(itm.nam == "Spear" && t == "Firey"){ itm.img = imgGearWepSpearFire; }
	if(itm.nam == "Maul" && t == "Firey"){ itm.img = imgGearWepMaulFire; }
	
	if(itm.nam == "Sword" && t == "Warp"){ itm.img = imgGearWepSwordWarp; }
	if(itm.nam == "Axe" && t == "Warp"){ itm.img = imgGearWepAxeWarp; }
	if(itm.nam == "Spear" && t == "Warp"){ itm.img = imgGearWepSpearWarp; }
	if(itm.nam == "Maul" && t == "Warp"){ itm.img = imgGearWepMaulWarp; }
	
	if(t == "Any"){ itm.img = imgGearWepAnySword; }
	
	itm.nam = t + " " + itm.nam;
	itm.props = p;
	
	return itm;
}