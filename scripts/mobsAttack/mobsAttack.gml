function mobsAttack(){
	
	with(objMob){
		if(frozen > 0){ continue; }
		
		var dis = abs(xSpot - pc.xSpot) + abs(ySpot - pc.ySpot);
		
		
		
		
		if(dis == 1 ){ // || (dis == 2 && xSpot != pc.xSpot && ySpot != pc.ySpot) ){
			characterShiftTowards(id, pc.xSpot, pc.ySpot);
			combat(id, pc);
			
			continue;
		}
		
		if(shotType != noone && dis < shotRange && !pc.debugMode){
			var r = irandom_range(0, 99);
			if(r < shotChance){
				var line = getLine(xSpot, ySpot, pc.xSpot, pc.ySpot);
				if(!lineIsBlocked(line)){
				
					var s = instance_create_depth(xSpot * 64 + 32, ySpot * 64 + 32, ww.layerE, shotType);
					s.xt = pc.x + 32; s.yt = pc.y + 32;
					s.shooter = id;
					moveCD = 1;
					
					
					if(characterHasProp(id, "Slow Shots") && choose(true, false, false)){
						logMessage("The Zap makes you slow");
						pc.slow = clamp(pc.slow + 10, 10, 30);
					}
					
					
					
				}
			}
		}
	}
	
	

}