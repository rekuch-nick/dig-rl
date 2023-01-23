subCursor = device_mouse_y_to_gui(0) % 64 >= 32 ? 1 : 0;
cursor = (floor(device_mouse_y_to_gui(0) / 64) * 2) + subCursor;



if(pc.bag[cursor] != noone && pc.clickChar != ""){
	
	if(pc.clickChar == "E"){
		if(itemIsEquipped(pc.bag[cursor]) != -1){
			pc.gear[ itemIsEquipped(pc.bag[cursor]) ] = noone;
		} else {
			var t = pc.bag[cursor].kind;
			if(t == "Weapon" && pc.gear[ww.gsWep] == noone){ pc.gear[ww.gsWep] = pc.bag[cursor]; }
			if(t == "Armor" && pc.gear[ww.gsArm] == noone){ pc.gear[ww.gsArm] = pc.bag[cursor]; }
			if(t == "Ring" && pc.gear[ww.gsRing] == noone){ 
				pc.gear[ww.gsRing] = pc.bag[cursor]; 
			} else if (t == "Ring" && pc.gear[ww.gsRing2] == noone) {
				pc.gear[ww.gsRing2] = pc.bag[cursor]; 
			}
		}
		
		
		
		
	}
	
	if(pc.clickChar == "F" && ww.pmap[pc.xSpot, pc.ySpot] == noone){
		if(itemIsEquipped(pc.bag[cursor]) == -1){
			ww.pmap[pc.xSpot, pc.ySpot] = instance_create_depth(pc.xSpot * 64, pc.ySpot * 64, ww.layerP, objPup);
			ww.pmap[pc.xSpot, pc.ySpot].itm = pc.bag[cursor];
			ww.pmap[pc.xSpot, pc.ySpot].sprite_index = pc.bag[cursor].img;
			pc.bag[cursor] = noone;
		}
	}
	
	if( (pc.clickChar == "T" || pc.clickChar == "Z") && pc.bag[cursor] != noone){
		if(itemIsEquipped(pc.bag[cursor]) == -1){
			logClear();
			var s = pc.bag[cursor].nam;
			if(pc.bag[cursor].potID != -1 && !pc.potionKnown[pc.bag[cursor].potID]){s = "Unidentified Potion"; }
			logMessage("Throw the " + s + " where?");
			logMessage("Warning: thrown items will be LOST. R-Click to cancel");
			
			
			//visible = false;
			var s = instance_create_depth(0, 0, ww.layerS, objScreenThrow);
			s.index = cursor;
			
			instance_destroy();
		}
	}
	
	if((pc.clickChar == "U" || pc.clickChar == "Q")&& pc.bag[cursor] != noone){
		logClear();
		
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
				instance_destroy();
			}
		}
	}
	
	playerEatInput();
}





if(pc.clickNO){
	playerEatInput();
	instance_destroy();
}