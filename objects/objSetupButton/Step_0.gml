if(firstFrame){
	
	
	if(txt != ""){
		var n = string_width(txt);
		image_xscale = (n / 32) * 2;
		
	}
	
	if(img != noone){
		image_xscale = 4;
		image_yscale = 8;
	}
	
	firstFrame = false;
}




if(pc.clickLM){
	
	
	if(mouse_x >= x - sprite_width / 2 && mouse_x < x + sprite_width / 2){
		
		if(device_mouse_y_to_gui(0) >= y - sprite_height / 2 && device_mouse_y_to_gui(0) < y + sprite_height / 2){
			if(wepTypeGroup){
				with(objSetupButton){ if(wepTypeGroup){ selected = false; } }
				selected = true;
			} else if(wepPropGroup){
				with(objSetupButton){ if(wepPropGroup){ selected = false; } }
				selected = true;
			} else if(armTypeGroup){
				with(objSetupButton){ if(armTypeGroup){ selected = false; } }
				selected = true;	
			} else if(spriteGroup){
				with(objSetupButton){ if(spriteGroup){ selected = false; } }
				selected = true;
			} else {
				if(selected){
					ww.skillpoints += cost;
					selected = false;
				} else {
					if(ww.skillpoints >= cost){
						selected = true;
						ww.skillpoints -= cost;
					}
				}
			}
			
			
			
		}
	}
}