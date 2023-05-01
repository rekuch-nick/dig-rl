function manageBagQ(n){
	
	
	
	if(pc.bag[n].food > 0){
		pc.food = clamp(pc.food + pc.bag[n].food, 0, pc.foodMax);
		if(pc.food >= pc.foodMax){
			logMessage("You are full.")
		} else {
			logMessage("You feel less hungry.")
		}
		
		pc.bag[n] = noone;
		manageBag();
		return;
	}
	
	
			
	if(pc.bag[n].potID != -1){
		potionEffect(pc.bag[n].potID, pc.xSpot, pc.ySpot);
		pc.bag[n] = noone;
		manageBag();
		return;
	}
	
	
	var t = pc.bag[n].kind;
	if(t == "Weapon" || t == "Armor" || t == "Ring"){
	
		if(itemIsEquipped(pc.bag[n]) != -1){
			pc.gear[ itemIsEquipped(pc.bag[n]) ] = noone;
		} else {
		
			var changed = false;
			if(t == "Weapon"){ 
				pc.gear[ww.gsWep] = noone;
				pc.gear[ww.gsWep] = pc.bag[n]; changed = true; 
				logMessage("You equipped the " + string(pc.bag[n].nam));
			}
			if(t == "Armor"){ 
				pc.gear[ww.gsArm] = noone;
				pc.gear[ww.gsArm] = pc.bag[n]; changed = true; 
			}
			if(t == "Ring" && pc.gear[ww.gsRing] == noone){ 
				pc.gear[ww.gsRing] = pc.bag[n]; changed = true;
			} else if (t == "Ring" && pc.gear[ww.gsRing2] == noone) {
				pc.gear[ww.gsRing2] = pc.bag[n]; changed = true;
			} else if (t == "Ring") {
				pc.gear[ww.gsRing] = noone;
				pc.gear[ww.gsRing] = pc.bag[n]; changed = true;
			}
			
			manageBag();
			
			if(changed){ 
				//playerDigest(20);
				return;
			}
		}
	}
	
	
	

}