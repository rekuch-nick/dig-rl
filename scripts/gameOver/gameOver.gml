function gameOver(){
	pc.hp = 1;
	
	
	with(objScreen){ instance_destroy(); }
	
	
	
	instance_create_depth(0, 0, ww.layerS, objScreenGameOver);
	
}