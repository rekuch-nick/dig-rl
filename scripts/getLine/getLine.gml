function getLine(x1, y1, x2, y2){
	var points = [];
	var i = 0;
	
	var dx = abs(x2-x1);
	var dy = abs(y2-y1);
	var sx = x1 < x2 ? 1 : -1;
    var sy = y1 < y2 ? 1 : -1;
	var err = dx-dy;
	
	while(true){
		
		points[i] = getPoint(x1, y1); i ++;
		
		if(x1 == x2 && y1 == y2){ break; }
		
		var e2 = err * 2;
		if(e2 > -dy) { /// -dy??? -dx
			err -= dy;
			x1 += sx;
		}
		if(e2 < dx){
			err += dx;
			y1 += sy;
		}
	}
	
	
	
	return points;
}