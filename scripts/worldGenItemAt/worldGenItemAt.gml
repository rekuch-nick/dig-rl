function worldGenItemAt(aa, bb){
	
	var t = getItem("Rock");
	//var t = randomItem(-1);
	//putPupCloseTo(t, aa, bb)
	
	
	var roll = irandom_range(1, 20);
	roll += floor(pc.stage / 2);
	
	
	
	if(roll >= 5){
		t = randomItem(-1);
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
	
	
	
	putPupObjCloseTo(t, aa, bb);
}