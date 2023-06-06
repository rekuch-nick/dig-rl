draw_self();


if(instance_number(objScreenThrow) > 0){
	
	for(var i=1; i<array_length(line); i++){
		draw_sprite_stretched(imgCursorAim, image_index, line[i].a * 64, line[i].b * 64, 64, 64);
		
		if(i == array_length(line) - 1){
			draw_sprite_stretched(imgCursorAim2, image_index, line[i].a * 64, line[i].b * 64, 64, 64);
		}
	}
	
	
}

if(txt != ""){
	var c = c_orange;
	if(txt == "HIT"){ c = c_red; }
	if(txt == "DIG"){ c = c_yellow; }
	if(txt == "BAG"){ c = c_white; }
	draw_set_halign(fa_center);
	draw_text_color(x + 32, y + 24, txt, c, c, c, c, image_alpha);
	draw_set_halign(fa_left);
	
}


if(pc.debugStats){
	if(!pc.firstFrame){
		if(inBounds(pc.xMouse, pc.yMouse)){
			var m = ww.mmap[pc.xMouse, pc.yMouse];
			if(m != noone){
				draw_text(x, y + 64, "hp " + string(m.hp));
				draw_text(x, y + 64 + 32 * 1, "ac " + string(m.ac));
				draw_text(x, y + 64 + 32 * 2, "+" + string(m.aim));
				draw_text(x, y + 64 + 32 * 3, string(m.str-10) + "-" + string(m.str-10 + m.damRange));
			}
		}
	}
}



