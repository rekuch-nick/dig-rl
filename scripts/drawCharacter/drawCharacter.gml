function drawCharacter(){
	
	
	if(face == 1){
		draw_self();
	} else {
		draw_sprite_ext(sprite_index, image_index, x+64, y, -image_xscale, image_yscale, 0, c_white, 1);
	}
}