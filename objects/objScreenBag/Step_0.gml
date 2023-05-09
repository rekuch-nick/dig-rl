subCursor = device_mouse_y_to_gui(0) % 64 >= 32 ? 1 : 0;
cursor = (floor(device_mouse_y_to_gui(0) / 64) * 2) + subCursor;
cursor = clamp(cursor, 0, 25);


if(pc.bag[cursor] != noone && pc.clickChar != ""){
	
	/*if(pc.clickChar == "E" || pc.clickChar == "Q"){
		
		
		manageBagQ(cursor);
		
		if(itemIsEquipped(pc.bag[cursor]) != -1){
			pc.gear[ itemIsEquipped(pc.bag[cursor]) ] = noone;
		} else {
			var t = pc.bag[cursor].kind;
			var changed = false;
			if(t == "Weapon" && pc.gear[ww.gsWep] == noone){ pc.gear[ww.gsWep] = pc.bag[cursor]; changed = true; }
			if(t == "Armor" && pc.gear[ww.gsArm] == noone){ pc.gear[ww.gsArm] = pc.bag[cursor]; changed = true; }
			if(t == "Ring" && pc.gear[ww.gsRing] == noone){ 
				pc.gear[ww.gsRing] = pc.bag[cursor]; changed = true;
			} else if (t == "Ring" && pc.gear[ww.gsRing2] == noone) {
				pc.gear[ww.gsRing2] = pc.bag[cursor]; changed = true;
			}
			
			manageBag();
			
			if(changed){ 
				playerDigest(20);
				return;
			}
		}
		
		
		
		
	}*/
	
	if(pc.clickChar == "F" && ww.pmap[pc.xSpot, pc.ySpot] == noone){
		if(itemIsEquipped(pc.bag[cursor]) == -1){
			ww.pmap[pc.xSpot, pc.ySpot] = instance_create_depth(pc.xSpot * 64, pc.ySpot * 64, ww.layerP, objPup);
			ww.pmap[pc.xSpot, pc.ySpot].itm = pc.bag[cursor];
			ww.pmap[pc.xSpot, pc.ySpot].sprite_index = pc.bag[cursor].img;
			pc.bag[cursor] = noone;
			
			manageBag();
		}
	}
	
	if( (pc.clickChar == "T" || pc.clickChar == "Z") && pc.bag[cursor] != noone){
		if(itemIsEquipped(pc.bag[cursor]) == -1){
			with(pc){manageBagZ(other.cursor);}
			instance_destroy();
		}
		
		
	}
	
	if((pc.clickChar == "U" || pc.clickChar == "Q" || pc.clickChar == "E") && pc.bag[cursor] != noone){
		logClear();
		
		
		
		if(pc.bag[cursor].food > 0 || pc.bag[cursor].potID != -1){
			with(pc){manageBagQ(other.cursor);}
			instance_destroy();
		} else {
			with(pc){manageBagQ(other.cursor);}
		}
		
		/*
		if(itemIsEquipped(pc.bag[cursor]) == -1){
			var used = false
			
			if(pc.bag[cursor].food > 0){
				pc.food = clamp(pc.food + pc.bag[cursor].food, 0, pc.foodMax);
				if(pc.food >= pc.foodMax){
					logMessage("You are full.")
				} else {
					logMessage("You feel less hungry.")
				}
				used = true;
			}
			
			
			if(pc.bag[cursor].potID != -1){
				potionEffect(pc.bag[cursor].potID, pc.xSpot, pc.ySpot);
				used = true;
			}
			
			
			if(used){
				pc.bag[cursor] = noone;
				manageBag();
				instance_destroy();
			}
		}*/
	}
	
	if(pc.clickChar == "C"){
		playerEatInput();
		instance_destroy();
	}
	
	
	playerEatInput();
}





if(pc.clickNO || pc.clickChar == "C"){
	playerEatInput();
	instance_destroy();
}