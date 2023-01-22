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
	
	if(pc.clickChar == "T" && pc.bag[cursor] != noone){
		if(itemIsEquipped(pc.bag[cursor]) == -1){
			logClear();
			logMessage("Throw the " + pc.bag[cursor].nam + " where?");
			logMessage("Warning: it will be gone forever! R-Click to cancel");
			
			
			//visible = false;
			var s = instance_create_depth(0, 0, ww.layerS, objScreenThrow);
			s.index = cursor;
			
			instance_destroy();
		}
	}
	
	if((pc.clickChar == "U" || pc.clickChar == "Q")&& pc.bag[cursor] != noone){
		if(itemIsEquipped(pc.bag[cursor]) == -1){
			
			//eat food, drink potions, activate other things
			
			
			
		}
	}
	
	
	playerEatInput();
}





if(pc.clickNO){
	playerEatInput();
	instance_destroy();
}