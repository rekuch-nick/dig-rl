function worldGenMazeFrom(cx, cy){
	if(bmap[cx, cy] != imgBlock){ return; }
	
	
	bmap[cx, cy] = noone;
	
	d[1] = false; d[2] = false; d[3] = false; d[4] = false;
	
	xLast[0] = cx;
	yLast[0] = cy;
	last = 0;
	
	var tx = cx; var ty = cy; var ttx = cx; var tty = cy;
	
	while(last >= 0){
		
		if(d[1] && d[2] && d[3] && d[4]){
			if(last >= 0){
				
				
				cx = xLast[last]
				cy = yLast[last]
				d[1] = false; d[2] = false; d[3] = false; d[4] = false;
				last --;
			} else {
				break;
			}
		}
		
		do {
			var r = irandom_range(1, 4);
		} until (!d[r]);
		tx = cx; ty = cy; ttx = cx; tty = cy;
		if(r == 1){ tty = cy - 1; ty = cy - 2; }
		if(r == 2){ ttx = cx + 1; tx = cx + 2; }
		if(r == 3){ tty = cy + 1; ty = cy + 2; }
		if(r == 4){ ttx = cx - 1; tx = cx - 2; }
		d[r] = true;
		
		if(inBounds(tx, ty)){
			if(bmap[tx, ty] == imgBlock){
				bmap[tx, ty] = noone;
				bmap[ttx, tty] = noone;
				
				last ++;
				xLast[last] = tx; yLast[last] = ty; 
				
				cx = tx; cy = ty;
				d[1] = false; d[2] = false; d[3] = false; d[4] = false;
			}
		}
		
	}
}