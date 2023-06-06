function gameOver(){
	pc.hp = 1;
	audio_stop_all();
	ww.nowPlaying = noone;
	
	with(objScreen){ instance_destroy(); }
	
	
	
	instance_create_depth(0, 0, ww.layerS, objScreenGameOver);
	
}