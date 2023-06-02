if(instance_number(objScreen) > 0){ return; }


itemTooltip = -1;

if(pc.yMouseUI == 0){
	
	if(pc.xMouse >= 8 && pc.xMouse <= 16){
		
		if(!mouse_wheel_down() && !mouse_wheel_up()){
		
			var i = (pc.xMouse - 8) + pc.hotbarLeftmost;
			if(pc.bag[i] != noone){
				pc.itemCursor = i;
				itemTooltip = pc.bag[i];
			}
			
		}
		
	}
	
	
	
}

if(pc.yMouseUI == 12){
	if(pc.xMouse == 0 && pc.gear[0] != noone){ itemTooltip = pc.gear[0]; }
	if(pc.xMouse == 1 && pc.gear[1] != noone){ itemTooltip = pc.gear[1]; }
	if(pc.xMouse == 2 && pc.gear[2] != noone){ itemTooltip = pc.gear[2]; }
	if(pc.xMouse == 3 && pc.gear[3] != noone){ itemTooltip = pc.gear[3]; }
}


perkMap = []; perkIndex = 1;
for(var i=1; i<26; i++){
	if(pc.perk[i]){
		perkMap[perkIndex] = i;
		perkIndex ++;
	}
}


perkDesc = -1;

if(mouse_x >= 288 && mouse_x < 288 + (7 * 32)){
	if(device_mouse_y_to_gui(0) < 64){
		var n = floor((mouse_x - 256) / 32);
		if(device_mouse_y_to_gui(0) >= 32){ n += 7; }
		
		if(n >= 0 && n < array_length(perkMap)){
			perkDesc = perkMap[n];
			
		}
	}
}