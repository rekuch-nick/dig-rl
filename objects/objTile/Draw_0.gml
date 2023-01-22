if(playerSeen){
	draw_self();
} else {
	draw_sprite_stretched(imgBlockUnseen, 0, x, y, 64, 64);
}