function worldGen(){
	
	random_set_seed(seed);
	
	for(var i=0; i<pc.stage; i++){
		var n = irandom_range(0, 99);
	}
	
	
	
	
	
	
	
	pc.stage ++;
	
	groundLevel = 6;
	
	with(objTile){ instance_destroy(); }
	with(objPup){ instance_destroy(); }
	with(objTrap){ instance_destroy(); }
	with(objCreature){ if(object_index != objPlayer){ instance_destroy(); }}
	
	for(var a=0; a<W; a++){ for(var b=0; b<H; b++){
		fmap[a, b] = noone;
		tmap[a, b] = noone;
		bmap[a, b] = noone;
		pmap[a, b] = noone;
		mmap[a, b] = noone;
	}}
	
	mmap[pc.xSpot, pc.ySpot] = pc.id;
	
	
	
	for(var a=0; a<W; a++){ for(var b=0; b<H; b++){
		var t = imgBGSky;
		if(b == groundLevel){ t = imgBGDirtTop; }
		if(b > groundLevel){ t = imgBGDirt; }
		
		fmap[a, b] = t;
	}}
	
	for(var a=0; a<W; a++){ for(var b=0; b<groundLevel - 1; b++){
		ww.bmap[a, b] = imgBGSkyBlock;
	}}
	
	for(var a=0; a<W; a++){ for(var b=groundLevel; b<H; b++){
		var t = imgBlock;
		if(b == groundLevel){ t = imgBlockGrass; }
		
		bmap[a, b] = t;
	}}
	
	
	for(var b = groundLevel + 3; b < H; b+= 5){
		skip = [false, false, false, false];
		if(b > 10){
			skip[choose(0, 1, 2, 3)] = true;
		}
		if(!skip[0]){ bmap[2, b] = "cave"; }
		if(!skip[1]){ bmap[8, b] = "cave"; }
		if(!skip[2]){ bmap[14, b] = "cave"; }
	}
	for(var a=0; a<W; a++){ for(var b=0; b<H; b++){
		if(bmap[a, b] == "cave"){
			bmap[a, b] = noone;
			worldGenCaveAt(a, b);
		}
	}}
	
	
	var a = irandom_range(1, 15);
	bmap[a, H - 1] = noone;
	fmap[a, H - 1] = imgExit;
	
	
	
	var a = irandom_range(1, 15);
	var b = irandom_range(ww.H - 16, ww.H - 2);
	bmap[a, b] = noone;
	instance_destroy(pmap[a, b]);
	pmap[a, b] = instance_create_depth(a*64, b*64, layerP, objRougeFlake);
	
	
	for(var a=0; a<W; a++){ for(var b=groundLevel + 1; b<H - 1; b++){
		if(bmap[a, b] == noone && pmap[a, b] == noone){
			if(irandom_range(1, 30) == 1){
				tmap[a, b] = objTrap;
			}
		}
	}}
	
	
	
	
	//implement images to tile obects
	for(var a=0; a<W; a++){ for(var b=0; b<H; b++){
		if(fmap[a, b] != noone){
			var til = instance_create_depth(a*64, b*64, layerF, objTile);
			til.sprite_index = fmap[a, b];
			if(b > groundLevel){ til.playerSeen = false; }
			fmap[a, b] = til;
		}
		
		if(tmap[a, b] != noone){
			tmap[a, b] = instance_create_depth(a*64, b*64, layerT, tmap[a, b]);
		}
		
		if(bmap[a, b] != noone){
			var til = instance_create_depth(a*64, b*64, layerB, objBlock);
			til.sprite_index = bmap[a, b];
			bmap[a, b] = til;
			
			
		}
		
	}}
	
	
	
	//mmap[3, 7] = instance_create_depth(3*64, 7 * 64, layerM, objMob);
	
	
}