function ItemDeckPopulate(){
	
	//show_debug_message("item deck populate at " + string(pc.stage))
	
	var bonusMax = floor( (pc.stage + 1) / 5);
	
	ds_list_add(ww.itemDeck, getItem("Food"));
	if(!playerHasItem("Food")){
		ds_list_add(ww.itemDeck, getItem("Food"));
	}
	
	var ii = 1;
	if(pc.stage < 2){ ii ++; }
	for(var i=0; i<ii; i++){
	
		var t = getItem(randomWeaponType());
		var b = irandom_range(0, choose(bonusMax, bonusMax + 1));
		if(pc.stage <= 1){b = 0; }
		itemEnchant(t, b, true);
		if(t.bonus >= 1 && ( choose(true, false) || t.bonus >= 3) ){ t = itemEnchantWepProp(t, -1); }
		if(pc.gear[0] != noone && t.bonus + 1 < pc.gear[0].bonus){ t = getItem("Throwing Knife"); }
		ds_list_add(ww.itemDeck, t);
	
		var t = getItem(randomArmorType());
		var b = irandom_range(0, choose(bonusMax, bonusMax + 1));
		if(pc.stage <= 1){b = 0; }
		itemEnchant(t, b, true);
		if(t.bonus >= 1 && ( choose(true, false) || t.bonus >= 2) ){ t = itemEnchantArmorProp(t, -1); }
		if(pc.gear[1] != noone && t.bonus + 1 < pc.gear[1].bonus){ t = getItem("Throwing Knife"); }
		ds_list_add(ww.itemDeck, t);
	}
	
	var n = irandom_range(3, 5);
	for(var i=0; i<n; i++){
		ds_list_add(ww.itemDeck, getItem(randomPotionType()));
	}
	
	var n = irandom_range(1, 4);
	for(var i=0; i<n; i++){
		ds_list_add(ww.itemDeck, getItem("Throwing Knife"));
	}
	
	if(irandom_range(1, 3) == 1){
		ds_list_add(ww.itemDeck, getItem(randomRarePotionType()));
	}
	
	if(irandom_range(1, 2) == 1 ){
		var t = getItem(randomRingType());
		itemEnchant(t, irandom_range(0, bonusMax), true);
		ds_list_add(ww.itemDeck, t);
	}
	
	if(irandom_range(1, 60) == 1){
		ds_list_add(ww.itemDeck, getItem("Storm Staff"));
		//show_debug_message("storm staff added to deck")
	}
	
}