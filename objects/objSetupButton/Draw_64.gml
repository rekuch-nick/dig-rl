image_alpha = selected ? 1 : .4;
draw_self();
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text_color(x, y, txt, col, col, col, col, image_alpha);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
if(img != noone){
	//draw_sprite_stretched(img, 0, x-xx, y-yy, xx*2, yy*2);
	draw_sprite_ext(img, 0, x-xx, y-yy, 4, 4, 0, c_white, image_alpha);
}

