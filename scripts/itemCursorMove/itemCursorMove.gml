function itemCursorMove(n){
	
	var tries = 0;
	do {
		tries ++;
		pc.itemCursor += n;
		if(pc.itemCursor < 0){ pc.itemCursor = 8; }
		if(pc.itemCursor > 8){ pc.itemCursor = 0; }
		if(tries > 13){ pc.itemCursor = 0; break; }
	} until (pc.itemCursor >= 0 && pc.itemCursor <= 8 && pc.bag[pc.itemCursor] != noone);
	
	
	
}