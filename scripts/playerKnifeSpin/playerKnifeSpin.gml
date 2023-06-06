function playerKnifeSpin(){
	for(var a=pc.xSpot-2; a<=pc.xSpot+2; a++){
		for(var b=pc.ySpot-2; b<=pc.ySpot+2; b++){
			if(a == pc.xSpot && b == pc.ySpot){ continue; }
			if(!inBounds(a, b)){ continue; }
			if(ww.bmap[a, b] != noone){ continue; }
			potionEffect(ww.potBladeSpin, a, b);
			
		}
	}
	
}