function characterEnterTile(c, a, b){
	
	
	if(ww.tmap[a, b] != noone){
		var t = ww.tmap[a, b];
		
		if(t.damMax > 0){
			var dam = irandom_range(t.damMin, t.damMax);
			
			c.hp -= dam;
			var v = c.id == pc ? " take " : " takes ";
			logMessage(c.nam + v + string(dam) + " from the " + t.nam);
		}
	}
	
	

}