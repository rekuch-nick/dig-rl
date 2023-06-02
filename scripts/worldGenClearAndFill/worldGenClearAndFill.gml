function worldGenClearAndFill(){
	
	with(objTile){ instance_destroy(); }
	with(objPup){ instance_destroy(); }
	with(objTrap){ instance_destroy(); }
	with(objCreature){ if(object_index != objPlayer){ instance_destroy(); }}
	
	for(var a=0; a<ww.W; a++){ for(var b=0; b<ww.H; b++){
		ww.fmap[a, b] = noone;
		ww.tmap[a, b] = noone;
		ww.bmap[a, b] = noone;
		ww.pmap[a, b] = noone;
		ww.mmap[a, b] = noone;
		ww.memmap[a, b] = noone;
		ww.canSee[a, b] = false;
		ww.txtmap[a, b] = "";
		ww.animalmap[a, b] = "";
	}}
	
	ww.mmap[pc.xSpot, pc.ySpot] = pc.id;
	
	
	
	for(var a=0; a<ww.W; a++){ for(var b=0; b<ww.H; b++){
		var t = noone;
		if(b == ww.groundLevel){ t = imgBGDirtTop; }
		if(b > ww.groundLevel){ t = imgBGDirt; }
		
		if(t != noone){
			ww.fmap[a, b] = t;
		}
	}}
	
	for(var a=0; a<W; a++){ for(var b=0; b<ww.groundLevel - 1; b++){
		//ww.bmap[a, b] = imgBGSkyBlock;
	}}
	
	for(var a=0; a<ww.W; a++){ for(var b=ww.groundLevel+1; b<ww.H; b++){
		var t = imgBlock;
		//if(b == ww.groundLevel){ t = imgBlockGrass; }
		
		ww.bmap[a, b] = t;
	}}
	
	worldGenSky();

}