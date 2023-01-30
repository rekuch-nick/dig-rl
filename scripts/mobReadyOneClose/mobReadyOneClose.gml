function mobReadyOneClose(){
	
	var ms = [];
	var mi = 0;
	
	with(objMob){ 
		hasStruck = false;
		//if(ww.fmap[xSpot, ySpot].playerSeen){
			if(point_distance(xSpot, ySpot, pc.xSpot, pc.ySpot) < stepsMax){
				ms[mi] = id;
				mi ++;
			}
		//}
	}

	if(mi == 0){ return; }
	
	var r = irandom_range(0, mi - 1);
	
	ms[r].ready = true;
}