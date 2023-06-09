function rotateMoveFloors(){
	for(var a=0; a<ww.W; a++){ for(var b=0; b<ww.H; b++){
		var ft = ww.fmap[a, b].sprite_index;
		if(ft == imgBGDirtMoveDown ||
				ft == imgBGDirtMoveUp ||
				ft == imgBGDirtMoveLeft ||
				ft == imgBGDirtMoveRight ){
			
			ww.fmap[a, b].sprite_index = choose(
				imgBGDirtMoveDown, imgBGDirtMoveUp, imgBGDirtMoveLeft, imgBGDirtMoveRight
			);
		}
	
	}}
}