if(image_alpha < 1){
	image_alpha += .01;
	return;
}







if(pc.clickEnter){
	
	with(objScreen){ instance_destroy(); }
	instance_create_depth(0, 0, ww.layerS - 1, objScreenTitle);
	logClear();
	logInit();
	playerInit();
}