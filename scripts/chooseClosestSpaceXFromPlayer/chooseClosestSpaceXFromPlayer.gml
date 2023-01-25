function chooseClosestSpaceXFromPlayer(aa, bb, n){
	
	var xBest = -1; var yBest = -1; var best = 1000;
	
	for(var a=0; a<ww.W; a++){ for(var b=bb-n; b<=bb+n; b++){
		if(inBounds(a, b)){
			var disToPlayer = abs(a - pc.xSpot) + abs(b - pc.ySpot);
			
			if(disToPlayer == n){
				var disFromSelf = abs(aa - a) + abs(bb - b);
				
				if(disFromSelf < best){
					best = disFromSelf;
					xBest = a; yBest = b;
				}
			}
			
		}
	}}
	
	return {a: xBest, b: yBest};
}