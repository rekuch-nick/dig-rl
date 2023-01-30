//if(!ww.fmap[xSpot, ySpot].playerSeen){ return; }
if(!ww.canSee[xSpot, ySpot]){ return; }

if(itm.potID != -1){
	
	if(pc.potionKnown[itm.potID]){ draw_self(); } else {
		
		
		
		draw_sprite_ext(imgPotionUnknown, 0, x, y, 4, 4, 0, c_white, 1);
		
		
	}
	
	
	return;
}

draw_self();