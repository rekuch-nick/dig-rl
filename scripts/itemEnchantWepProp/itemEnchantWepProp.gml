function itemEnchantWepProp(itm, fix){
	
	
	var w = itm.props[0];
	
	
	var r = irandom_range(1, 8);
	if(fix != -1){ r = fix; }
	
	var t = "Mason"; var p = [w, "Flesh to Stone"]; var de = "Petrify low HP foes";
	if(r == 2){ t = "Venom"; p = [w, "Poison Strikes"]; de = "Poison foes"; }
	if(r == 3){ t = "Crushing"; p = [w, "Knockback"]; de = "Break walls behind foes"; }
	if(r == 4){ t = "Any"; p = ["Lunge", "Pierce", "Cleave", "Shockwave"]; de = "All 4 basic weapon powers"; }
	if(r == 5){ t = "Blur"; p = [w, "Blur Self"]; de = "Create illusions"; }
	if(r == 6){ t = "Warp"; p = [w, "Teleport Foe"]; de = "Teleport foes"; }
	if(r == 7){ t = "Firey"; p = [w, "Flaming Burst"]; de = "Explodes"; }
	if(r == 8){ t = "Ice"; p = [w, "Icy Strikes"]; de = "Freeze foes"; }
	
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
	
	if(itm.nam == "Sword" && t == "Blur"){ itm.img = imgGearWepSwordBlur; }
	if(itm.nam == "Axe" && t == "Blur"){ itm.img = imgGearWepAxeBlur; }
	if(itm.nam == "Spear" && t == "Blur"){ itm.img = imgGearWepSpearBlur; }
	if(itm.nam == "Maul" && t == "Blur"){ itm.img = imgGearWepMaulBlur; }
	
	if(itm.nam == "Sword" && t == "Ice"){ itm.img = imgGearWepSwordIce; }
	if(itm.nam == "Axe" && t == "Ice"){ itm.img = imgGearWepAxeIce; }
	if(itm.nam == "Spear" && t == "Ice"){ itm.img = imgGearWepSpearIce; }
	if(itm.nam == "Maul" && t == "Ice"){ itm.img = imgGearWepMaulIce; }
	
	
	
	itm.desc = de;
	itm.nam = t + " " + itm.nam;
	itm.props = p;
	
	if(t == "Any"){ itm.img = imgGearWepAnySword; itm.nam = "Multi-Tool" }
	
	
	return itm;
}