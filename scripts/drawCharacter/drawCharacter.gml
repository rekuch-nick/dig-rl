function drawCharacter(){
	
	
	if(face == 1){
		draw_self();
	} else {
		draw_sprite_ext(sprite_index, image_index, x+64, y, -image_xscale, image_yscale, 0, c_white, 1);
	}
	
	
	
	if(frozen > 0){
		draw_set_alpha(.5);
		draw_rectangle_color(x, y, x+64, y+64, c_white, c_aqua, c_aqua, c_aqua, false);
		draw_set_alpha(1);
	}
	
	if(poison > 0){
		draw_sprite_ext(imgPoison, floor(current_time / 400) % 2, x, y, 4, 4, 0, c_white, .5);
	}
	
	if(swordmastery > 0){
		draw_sprite_ext(imgSwordmastery, floor(current_time / 400) % 2, x, y, 4, 4, 0, c_white, .5);
	}
	
	if(defense > 0){
		draw_sprite_ext(imgDefense, floor(current_time / 400) % 2, x, y, 4, 4, 0, c_white, .5);
	}
	
}