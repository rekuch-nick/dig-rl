function randomLightningAt(a, b){
	
	if(instance_number(objMob) < 1){ return false; }
	
	var tries = 0;
	while(tries < 400){
		tries ++;
		var n = irandom_range(0, instance_number(objMob) - 1);
		var m = instance_find(objMob, n);
		
		var dis = abs(a - m.xSpot) + abs(b - m.ySpot);
		
		if(dis < 4 && m.hp > 0){
			var line = getLine(a, b, m.xSpot, m.ySpot);
			if(!lineIsBlocked(line)){
				var s = instance_create_depth(a * 64 + 32, b * 64 + 32, ww.layerE, objLightningShot);
				s.xt = m.x + 32; s.yt = m.y + 32;
				s.shooter = pc;
				
				return true;
			}
		}
	}
	
	return false;
}