function worldGenItemAt(aa, bb){
	
	/*
	var t = getItem("Rock");
	
	var roll = irandom_range(1, 20);
	//roll += floor(pc.stage / 2);
	
	
	if(roll >= 5 && roll <= 16){
		t = randomItem();
		while(pc.stage == 1 && t == "Food"){
			t = randomItem();
		}
		if(t == "Food"){ foodSpawned ++; }
		t = getItem(t);
	}
		
	if(roll >= 17){
		t = randomGoodItem();
		t = getItem(t);
		
		if(choose(true, false) || pc.stage >= 5){
			if(t.kind == "Weapon" || t.kind == "Armor" || t.kind == "Ring"){
				var nMax = ceil(pc.stage / 3);
				var n = irandom_range(1, nMax);
				if(t.kind == "Ring"){ n --; }
				t = itemEnchant(t, n, true);
				if(t.kind == "Weapon" && ( choose(true, false) || n >= 3 ) ){
					t = itemEnchantWepProp(t, -1);
				}
				if(t.kind == "Armor" && ( choose(true, false) || n >= 2 ) ){
					t = itemEnchantArmorProp(t, -1);
				}
			}
		}
	}
	
	if(t.kind == "Weapon" && pc.gear[ww.gsWep] != noone){
		var ii = pc.gear[ww.gsWep];
		if(ii.bonus > t.bonus + 1){ t = getItem("Rock"); }
	}
	if(t.kind == "Armor" && pc.gear[ww.gsArm] != noone){
		var ii = pc.gear[ww.gsArm];
		if(ii.bonus > t.bonus + 1){ t = getItem("Rock"); }
	}
	
	if(irandom_range(1, 400) == 1){ 
		//t = getItem("Storm Staff"); 
		show_debug_message("Storm Staff on level " + string(pc.stage))
	}
	
	*/
	
	
	if(ds_list_size(ww.itemDeck) < 1){ ItemDeckPopulate(); }
	var i = irandom_range(0, ds_list_size(ww.itemDeck) - 1);
	var t = ds_list_find_value(ww.itemDeck, i);
	ds_list_delete(ww.itemDeck, i);
	
	putPupObjCloseTo(t, aa, bb);
}