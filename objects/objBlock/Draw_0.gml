if(ww.fmap[xSpot, ySpot].playerSeen){
	draw_self();
	
	if(hp < hpMax){
		var f = 5 - floor((hp / hpMax) * 5);
		
		draw_sprite_stretched(imgCrack, f, x, y, 64, 64);
	}
}

