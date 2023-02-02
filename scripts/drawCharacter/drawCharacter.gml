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
	
	if(tangle > 0){
		draw_sprite_ext(imgTangle, floor(current_time / 400) % 2, x, y, 4, 4, 0, c_white, .7);
	}
	
	if(swordmastery > 0){
		draw_sprite_ext(imgSwordmastery, floor(current_time / 400) % 2, x, y, 4, 4, 0, c_white, .5);
	}
	
	if(defense > 0){
		draw_sprite_ext(imgDefense, floor(current_time / 400) % 2, x, y, 4, 4, 0, c_white, .5);
	}
	
	if(slow > 0){
		draw_sprite_ext(imgSlow, floor(current_time / 400) % 3, x, y, 4, 4, 0, c_white, .5);
	}
	
	if(web > 0){
		draw_sprite_ext(imgTrapWeb, floor(current_time / 400) % 3, x, y, 4, 4, 0, c_white, .9);
	}
	
	if(displace > 0){
		var xx = face == -1 ? 64 : 0;
		draw_sprite_ext(sprite_index, image_index, x+choose(-4,0,4)+xx, y+choose(-4,0,4), 2*face, 2, 0, c_aqua, .5);
	}
	
}