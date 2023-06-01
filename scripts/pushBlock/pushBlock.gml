function pushBlock(x1, y1, x2, y2){
	var x3 = x2;
	var y3 = y2;
	
	if(x1 < x2){ x3 += 1; }
	if(x1 > x2){ x3 -= 1; }
	if(y1 < y2){ y3 += 1; }
	if(y1 > y2){ y3 -= 1; }
	
	if(inBounds(x3, y3)){
		if(ww.bmap[x3, y3] == noone){
			var m = ww.mmap[x3, y3];
			if(m == noone || m.hp <= 40){
				if(m != noone){ 
					m.hp = 0; 
					logMessage("Splat!");
				}
				var b = ww.bmap[x2, y2];
				b.xSpot = x3;
				b.ySpot = y3;
				b.x = x3 * 64;
				b.y = y3 * 64;
				ww.bmap[x3, y3] = ww.bmap[x2, y2];
				ww.bmap[x2, y2] = noone;
			}
		}
	}
	
	return false;
}