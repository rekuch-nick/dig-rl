function beamEffect(t, xf, yf, x1, y1, moveType, n){
	potionEffect(t, x1, y1); n --;
	
	var xx = x1; var yy = y1;
	
	var tries = 0;
	while(n > 0 && tries < 1000){
		tries ++;
		
		var a = xx + irandom_range(-1, 1);
		var b = yy + irandom_range(-1, 1);
		
		if(!inBounds(a, b)){ continue; }
		if(point_distance(xx, yy, xf, yf) > point_distance(a, b, xf, yf)){
			continue;
		}
		
		
		n --;
		potionEffect(t, a, b);
		xx = a; yy = b;
		
	}
}