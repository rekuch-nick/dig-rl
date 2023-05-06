function characterBlink(c, xx, yy){
	
	
	var xt = c.xSpot + (xx * 4);
	var yt = c.ySpot + (yy * 4);
	
	while(xt < 0){ xt ++; }
	while(xt >= ww.W){ xt --; }
	while(yt < 0){ yt ++; }
	while(yt >= ww.H){ yt --; }
	
	if(xt == c.xSpot && yt == c.ySpot){ return; }
	
	var m = ww.mmap[xt, yt];
	var a = c.xSpot; var b = c.ySpot;
	
	ww.mmap[xt, yt] = c;
	c.xSpot = xt;
	c.ySpot = yt;
	c.x = xt * 64;
	c.y = yt * 64;
	
	ww.mmap[a, b] = m;
	if(m != noone){
		m.xSpot = a;
		m.ySpot = b;
		m.x = a * 64;
		m.y = b * 64;
	}
	
	var t = ww.bmap[xt, yt];
	if(t != noone){
		ww.bmap[a, b] = t;
		ww.bmap[a, b].xSpot = a;
		ww.bmap[a, b].ySpot = b;
		ww.bmap[a, b].x = a * 64;
		ww.bmap[a, b].y = b * 64;
	}
	ww.bmap[xt, yt] = noone;
	
}