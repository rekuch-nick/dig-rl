function drawItemIcon(a, b, ii){
	
	var c = ii.col;
	var typ = ii.kind;
	if(typ == "Weapon" || typ == "Armor" || typ == "Ring"){
		if(ii.bonus > 0){
			draw_rectangle_color(a+6, b+6, a+58, b+58, c, c, c, c, true);
			draw_rectangle_color(a+7, b+7, a+57, b+57, c, c, c, c, true);
			draw_rectangle_color(a+8, b+8, a+56, b+56, c, c, c, c, true);
			draw_rectangle_color(a+9, b+9, a+55, b+55, c, c, c, c, true);
		}
	}
		
	
	//if(pc.itemCursor == i+iStart){
	//	draw_set_alpha(.5);
	//	draw_rectangle_color(a+2, b+2, a+62, b+62, c_yellow, c_yellow, c_yellow, c_yellow, false);
	//	draw_set_alpha(1);
	//}
		
		
	var spt = ii.img;
	if(ii.kind == "Potion"){
		if(!pc.potionKnown[ii.potID]){
			spt = imgPotionUnknown;
		}
	}
		
	draw_sprite_stretched(spt, 0, a+4, b+4, 56, 56);
	//draw_text_color(a+4, b+4, string(i + 1), c_dkgray, c_dkgray, c_dkgray, c_dkgray, 1);
	if(ii.kind == "Wand" || ii.charges > 1){
		draw_text(a+4, b+40, string(ii.charges));
	}

}