function gameOver(){
	
	logClear();
	logInit();
	
	with(objScreen){ instance_destroy(); }
	
	
	playerInit();
	instance_create_depth(0, 0, ww.layerS, objScreenTitle);
	
}