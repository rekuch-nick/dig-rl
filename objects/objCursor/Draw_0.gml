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
