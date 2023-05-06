function worldGen(){
	
	random_set_seed(seed); for(var i=0; i<pc.stage; i++){ var n = irandom_range(0, 99); }
	groundLevel = 6;
	worldGenClearAndFill();
	losVision = false;
	pc.stage ++;
	chargeWands(pc.wandSkill);
	foodSpawned = 0;
	worldGenMobTable(pc.stage);
	
	zone = "Grasslands";
	if(pc.stage >= 6){ zone = "Desert"; }
	if(pc.stage >= 11){ zone = "Coral"; }
	
	kind = "caves";
	if(pc.stage % 5 == 2){ kind = "rooms"; }
	if(pc.stage % 5 == 3 && zone != "Grasslands"){ kind = "mix"; }
	if(pc.stage % 5 == 4){ kind = "maze"; }
	if(pc.stage % 5 == 0){ kind = "posts"; }
	
	
	//kind = "boss";
	normalFeatures = true;
	
	losVision = true;
	
	
	if(kind == "rooms"){ worldGenColRooms(); worldGenReplaceAllBlocks(imgBlock, imgBlockRock); }
	if(kind == "caves"){ 
		worldGenColCaves(); 
		worldGenReplaceRandomBlocks(imgBlock, imgBlockRock, 60); 
		if(pc.stage >= 11){ worldGenReplaceRandomBlocks(imgBlock, imgBlockSkull, 60); }
	}
	if(kind == "lakes"){ worldGenPatches(noone, imgWater, false, true); }
	if(kind == "posts"){ 
		if(zone == "Grasslands"){ worldGenPatches(noone, imgBGGrass, false, true); }
		if(zone == "Coral"){ worldGenPatches(noone, imgWater, false, true); }
		worldGenPosts(imgBlock); worldGenRandomPopulate(); }
	if(kind == "mix"){ worldGenStatic(imgBlock, noone); worldGenReplaceRandomBlocks(imgBlock, imgBlockRock, 60); worldGenRandomPopulate(); }
	if(kind == "maze"){ 
		worldGenMazeFrom(0, H-1); 
		worldGenReplaceRandomBlocks(imgBlock, imgBlockSkull, 25); 
		worldGenReplaceAllBlocks(imgBlock, imgBlockRock);
		worldGenRandomPopulate(); 
	}
	if(kind == "boss"){
		zone = "Grasslands";
		normalFeatures = false;
		worldGenStatic(imgBlock, noone); 
		worldGenReplaceRandomBlocks(imgBlock, noone, 60);  
		 
		for(var a=0; a<W; a++){ bmap[a, 33] = noone; }
		var a = irandom_range(1, 15);
		bmap[a, 33] = noone;
		fmap[a, 33] = imgExit;
	}
	
	
	if(normalFeatures){
	
		//force food
		if(foodSpawned == 0){
			var p = noone;
			while(p == noone){
				var a = irandom_range(0, W-1);
				var b = irandom_range(10, H-10);
				p = putPupObjCloseTo(getItem("Food"), a, b);
			}
		}
	
		//place exit
		for(var a=0; a<W; a++){ bmap[a, H-1] = noone; }
		var a = irandom_range(1, 15);
		bmap[a, H - 1] = noone;
		fmap[a, H - 1] = imgExit;
	
	
		//place rouge
		var a = irandom_range(1, 15);
		var b = irandom_range(ww.H - 16, ww.H - 2);
		bmap[a, b] = noone;
		instance_destroy(pmap[a, b]);
		pmap[a, b] = instance_create_depth(a*64, b*64, layerP, objRougeFlake);
		
	}
	
	

	
	
	
	worldGenBiomeSprites(zone);
	worldGenFinilize();
	
	if(kind == "boss"){
		for(var a=0; a<W; a++){ for(var b=6; b<H; b++){
			 if(bmap[a, b] != noone && choose(true, false)){
				 bmap[a, b].hp -= irandom_range(1, 5) * 5;
			 }
		 }}
	}
	
	
}