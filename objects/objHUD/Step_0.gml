if(instance_number(objScreen) > 0){ return; }


itemTooltip = -1;

if(pc.yMouseUI == 0){
	
	if(pc.xMouse >= 8 && pc.xMouse <= 16){
		
		var i = (pc.xMouse - 8) + pc.hotbarLeftmost;
		if(pc.bag[i] != noone){
			pc.itemCursor = i;
			itemTooltip = pc.bag[i];
		}
		
	}
	
	
	
}

if(pc.yMouseUI == 12){
	if(pc.xMouse == 0 && pc.gear[0] != noone){ itemTooltip = pc.gear[0]; }
	if(pc.xMouse == 1 && pc.gear[1] != noone){ itemTooltip = pc.gear[1]; }
	if(pc.xMouse == 2 && pc.gear[2] != noone){ itemTooltip = pc.gear[2]; }
	if(pc.xMouse == 3 && pc.gear[3] != noone){ itemTooltip = pc.gear[3]; }
}