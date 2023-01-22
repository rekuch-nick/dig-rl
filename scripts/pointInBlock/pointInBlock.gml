function pointInBlock(a, b){
	if(a < 0 || a >= room_width || b < 0 || b >= room_height){ return true; }
	
	var xx = floor(a / 64);
	var yy = floor(b / 64);
	
	return ww.bmap[xx, yy] != noone;
	
}