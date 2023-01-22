if(firstFrame){
	firstFrame = false;	
	
	var angle = arctan2(yt - y, xt - x);
	xs = cos(angle) * moveSpeed;
	ys = sin(angle) * moveSpeed;
	
	dis = point_distance(x, y, xt, yt);
}

pc.wait = true;

x += xs;
y += ys;
dis -= moveSpeed;

if(dis < -30){
	
	var m = ww.mmap[floor(xt / 64), floor(yt / 64)];
	if(m != noone){
		m.hp -= throwPower;	
		
		if(throwProc != ""){
			
		}
		
	}
	
	
	
	instance_destroy();
}