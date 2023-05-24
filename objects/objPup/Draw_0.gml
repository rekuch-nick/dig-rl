//if(!ww.fmap[xSpot, ySpot].playerSeen){ return; }
if(!ww.canSee[xSpot, ySpot] && !pc.itemFind > 0){ return; }


if(sprite_index == imgHeart || sprite_index == imgHeartStack){
	image_alpha = random_range(.5, .7);
}


if(itm.potID != -1 && itm.kind == "Potion"){
	
	if(pc.potionKnown[itm.potID]){ draw_self(); } else {
		
		
		
		draw_sprite_ext(imgPotionUnknown, 0, x, y, 4, 4, 0, c_white, 1);
		
		
	}
	
	
	return;
}

if(itm.bonus > 0){
	var c = itemColorByBonus(itm.bonus);
	draw_set_alpha(.2);
	draw_rectangle_color(x, y, x+64, y+64, c, c, c, c, false);
	draw_set_alpha(1);
}


draw_self();
