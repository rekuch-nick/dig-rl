subCursor = mouse_y % 64 >= 32 ? 1 : 0;
cursor = pc.yMouse * 2 + subCursor;






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
	
	
	
	
	playerEatInput();
}





if(pc.clickNO){
	playerEatInput();
	instance_destroy();
}