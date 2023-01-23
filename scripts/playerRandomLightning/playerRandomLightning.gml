function playerRandomLightning(){
	
	if(instance_number(objMob) < 1){ return; }
	
	var tries = 0;
	while(tries < 400){
		tries ++;
		var n = irandom_range(0, instance_number(objMob) - 1);
		var m = instance_find(objMob, n);
		
		var dis = abs(pc.xSpot - m.xSpot) + abs(pc.ySpot - m.ySpot);
		
		if(dis > 0 && dis < 4){
			var line = getLine(pc.xSpot, pc.ySpot, m.xSpot, m.ySpot);
			if(!lineIsBlocked(line)){
				var s = instance_create_depth(pc.xSpot * 64 + 32, pc.ySpot * 64 + 32, ww.layerE, objLightningShot);
				s.xt = m.x + 32; s.yt = m.y + 32;
				s.shooter = pc;
				
				return;
			}
		}
	}
	
	
}