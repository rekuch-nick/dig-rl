function itemCursorMove(n){
	
	var maxSlot = 21;
	
	var tries = 0;
	do {
		tries ++;
		pc.itemCursor += n;
		if(pc.itemCursor < 0){ pc.itemCursor = maxSlot; }
		if(pc.itemCursor > maxSlot){ pc.itemCursor = 0; }
		if(tries > 26){ pc.itemCursor = 0; break; }
	} until (pc.itemCursor >= 0 && pc.itemCursor <= maxSlot && pc.bag[pc.itemCursor] != noone);
	
	if(pc.itemCursor > pc.hotbarLeftmost + 8 || pc.itemCursor < pc.hotbarLeftmost){
		
		
		if(n == 1){
			pc.hotbarLeftmost = clamp(pc.itemCursor - 8, 0, 13);
		}
	
		if(n == -1){
			pc.hotbarLeftmost = clamp(pc.itemCursor, 0, 13);
		}
		
		
	}
	
	
	
	
	
	
}