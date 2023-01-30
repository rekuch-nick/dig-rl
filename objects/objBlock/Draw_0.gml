//if(ww.fmap[xSpot, ySpot].playerSeen){
if(ww.canSee[xSpot, ySpot]){
	draw_self();
	
	if(hp < hpMax){
		var f = 5 - floor((hp / hpMax) * 5);
		
		draw_sprite_stretched(imgCrack, f, x, y, 64, 64);
	}
} else if (ww.memmap[xSpot, ySpot]){
	draw_sprite_stretched(imgBlockMemory, 0, x, y, 64, 64);
}

