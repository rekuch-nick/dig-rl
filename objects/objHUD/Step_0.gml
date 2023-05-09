if(instance_number(objScreen) > 0){ return; }


itemTooltip = false;

if(pc.yMouseUI == 0){
	
	if(pc.xMouse >= 8 && pc.xMouse <= 16){
		
		var i = (pc.xMouse - 8) + pc.hotbarLeftmost;
		if(pc.bag[i] != noone){
			pc.itemCursor = i;
			itemTooltip = true;
		}
		
	}
	
	
	
}