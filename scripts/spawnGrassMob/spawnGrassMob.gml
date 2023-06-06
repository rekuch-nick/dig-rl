function spawnGrassMob(a, b){
	
	if(ww.fmap[a, b].sprite_index != imgBGGrass){ return; }
	if(choose(true, false)){ return; }
	if(characterHasProp(id, "Grass Walking")){ return; }
	if(characterHasProp(id, "Still")){ return; }
	
	if(ww.mmap[a, b] == noone && ww.bmap[a, b] == noone){
		ww.mmap[a, b] = instance_create_depth(a * 64, b * 64, ww.layerM, objMobChigger);
		var mn = ww.mmap[a, b].nam;
		logMessage("A " + mn + " was in the grass");
	}
	
	
}