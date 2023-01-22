draw_self();


if(txt != ""){
	var c = c_orange;
	if(txt == "HIT"){ c = c_red; }
	if(txt == "DIG"){ c = c_yellow; }
	if(txt == "BAG"){ c = c_white; }
	draw_set_halign(fa_center);
	draw_text_color(x + 32, y + 24, txt, c, c, c, c, image_alpha);
	draw_set_halign(fa_left);
	
}
