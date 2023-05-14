//if(playerSeen){
if(dontDrawByY()){ return; }


if(ww.canSee[xSpot, ySpot]){

	
	
	draw_self();
} else {
	if (ww.memmap[xSpot, ySpot]){
		draw_sprite_stretched(imgDirtMemory, 0, x, y, 64, 64);
	} else {
		draw_sprite_stretched(imgBlockUnseen, 0, x, y, 64, 64);
	}
}