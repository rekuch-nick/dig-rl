function openExit(){
	for(var a=0; a<ww.W; a++){
		for(var b=0; b<ww.H; b++){
			if(ww.fmap[a, b].sprite_index == imgExitShut){
				ww.fmap[a, b].sprite_index = imgExit;
			}
		}
	}
}