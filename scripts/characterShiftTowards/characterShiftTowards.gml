function characterShiftTowards(c, a, b){
	
	if(c.xSpot < a){ c.x += 32; }
	if(c.ySpot < b){ c.y += 32; }
	if(c.xSpot > a){ c.x -= 32; }
	if(c.ySpot > b){ c.y -= 32; }

}