function worldGen(){
	
	random_set_seed(seed); 
	possibleRooms = ["Water","Lava","Acid","Food","Swarm","Fight1","Fight2","Fight3","Fight4","Item","Gear","Grass"];
	roomMap3Doors = array_shuffle(possibleRooms);
	for(var i=0; i<pc.stage*9; i++){ var n = irandom_range(0, 99); }
	groundLevel = 6;
	worldGenClearAndFill();
	losVision = false;
	pc.stage ++;
	chargeWands();
	foodSpawned = 0;
	worldGenMobTable(pc.stage);
	flood = noone;
	
	zone = 0;
	if(pc.stage >= 11 && pc.stage <= 20){ zone = 1; }
	if(pc.stage >= 21 && pc.stage <= 30){ zone = 2; }
	if(pc.stage >= 31 && pc.stage <= 40){ zone = 3; }
	if(pc.stage >= 41 && pc.stage <= 50){ zone = 4; }
	if(pc.stage <= 0){ zone = 10; }
	//if(pc.stage >= 16 && pc.stage <= 20){ zone = "Fire"; }
	
	kind = "caves";
	if(pc.stage % 10 == 2){ kind = "rooms"; }
	if(pc.stage % 10 == 3 && zone != 0){ kind = "mix"; }
	if(pc.stage % 10 == 4){ kind = "wide maze"; }
	if(pc.stage % 10 == 5){ kind = "posts"; }
	if(pc.stage % 10 == 6){ kind = "caves"; }
	if(pc.stage % 10 == 7){ kind = "caves"; }
		if(pc.stage == 7){ kind = "push blocks"; }
		if(pc.stage == 17){ kind = "cactus clump"; }
		if(pc.stage == 26){ kind = "trap and lock"; }
	if(pc.stage % 10 == 8){ kind = "3 doors"; }
	if(pc.stage % 10 == 9){ kind = "maze"; }
	if(pc.stage % 10 == 0){ kind = "boss"; }
	
	if(pc.stage == -4){ kind = "caves"; }
	if(pc.stage == -3){ kind = "wide maze"; }
	if(pc.stage == -2){ kind = "rooms"; }
	if(pc.stage == -1){ kind = "maze"; }
	if(pc.stage == 0){ kind = "posts"; }
	
	
	
	//kind = "trap and lock";
	
	normalFeatures = true;
	
	losVision = true;
	
	
	if(kind == "rooms"){ worldGenColRooms(); worldGenReplaceAllBlocks(imgBlock, imgBlockRock); }
	if(kind == "caves"){ 
		worldGenColCaves(); 
		worldGenReplaceRandomBlocks(imgBlock, imgBlockRock, 60); 
		//if(stage >= 20 && irandom_range(1, 3) == 1){ worldGenReplaceRandomBlocks(imgBlock, imgBlockPush, 60); }
		//if(pc.stage == 6){ worldGenReplaceRandomBlocks(imgBlock, imgBlockCactus, 120); }
		//worldGenReplaceRandomBlocks(imgBlock, imgBlockTurret, 120);
		if(pc.stage >= 11){ worldGenReplaceRandomBlocks(imgBlock, imgBlockSkull, 60); }
		if(pc.stage >= 15 && choose(true, false)){
			worldGenRiver(-1, -1, -1, -1);
			worldGenReplaceRandomFloor(imgWaterLava, imgWaterLavaRock, floor(worldGenCount(imgWaterLava)) / 3);
		}
		
		//worldGenTrapPatch(objTrapSummon, 0, 100, 40);
	}
	if(kind == "lakes"){ worldGenPatches(noone, imgWater, false, true); }
	if(kind == "posts"){ 
		worldGenPosts(imgBlock);
		if(zone == 3){
			for(var a=0; a<W; a++){
				var t = choose(imgWaterLava, imgWaterLavaRock);
				if(a == 0 || a == W - 1){ t = imgWaterLava; }
				fmap[a, groundLevel + 1] = t;
			}
			flood = imgWaterLava;
		}
		
		if(zone == 10){
			worldGenReplaceRandomFloor(imgBGDirt, imgBGDirtGrave, 50);
			worldGenTrapPatch(objTrap, 1, 50, 50);
		}
		
		if(zone == 0){ 
			worldGenPatches(noone, imgBGGrass, false, true); 
			worldGenPosts(imgBlock);
		}
		if(zone == 1){ 
			worldGenPatches(noone, imgBGFrozen, false, true);
			worldGenPosts(imgBlock);
		}
		if(zone == 2){ 
			worldGenPatches(noone, imgWater, false, true); 
			worldGenReplaceRandomFloor(imgWater, imgWaterLilly, 200);
			worldGenPosts(imgBlock);
		}
		worldGenRandomPopulate(); 
	}
	if(kind == "mix"){ 
		worldGenStatic(imgBlock, noone); 
		if(pc.stage >= 15 && choose(true, false)){
			worldGenRiver(-1, -1, -1, -1);
			worldGenReplaceRandomFloor(imgWaterLava, imgWaterLavaRock, floor(worldGenCount(imgWaterLava)) / 3);
		}
		worldGenReplaceRandomBlocks(imgBlock, imgBlockRock, 60); 
		if(zone == 1){ worldGenReplaceRandomBlocks(imgBlock, imgBlockCactus, 120); }
		worldGenRandomPopulate(); 
	}
	if(kind == "cactus clump"){ 
		worldGenStatic(imgBlockCactus, noone); 
		worldGenReplaceRandomBlocks(imgBlock, noone, 60); 
		worldGenReplaceRandomFloor(imgBGDirt, imgBGDirtWarp, 70);
		for(var a=0; a<W; a++){ fmap[a, H-1] = imgBGDirt; }
		worldGenRandomPopulate(); 
	}
	if(kind == "trap and lock"){ 
		for(var a=0; a<ww.W; a++){ for(var b=groundLevel + 1; b<ww.H; b++){ bmap[a, b] = noone; }}
		for(var a=0; a<ww.W; a++){ for(var b=groundLevel + 2; b<ww.H - 1; b++){
			fmap[a, b] = imgBGDirtSpikeHoles;
		}}
		fmap[irandom_range(0, W-1), groundLevel + 1] = imgExitShut;
		putPupAt("Key", irandom_range(3, W-4), H - irandom_range(1, 6));
		
		//var a = choose(1, W-2);
		//pmap[a, H - 1] = instance_create_depth(a*64, (H-1)*64, layerP, objRougeFlake);		
		
		worldGenRandomPopulate(); 
		normalFeatures = false;
		
		worldGenRiver(imgWater, floor(H / 3), 3, -1); 
		worldGenRiver(imgWater, floor(H / 3) * 2, 3, -1); 
		worldGenReplaceRandomFloor(imgWater, imgWaterLilly, 10); 
	}
	if(kind == "maze"){ 
		worldGenMazeFrom(0, H-1); 
		if(zone == 1){
			worldGenRiver(imgWaterAcid, -1, 6, -1);
		}
		
		worldGenReplaceRandomBlocks(imgBlock, imgBlockSkull, 25); 
		
		worldGenReplaceAllBlocks(imgBlock, imgBlockRock);
		
		
		
		if(zone == 10){ 
			worldGenRiver(imgWater, floor(H / 3), 3, -1); 
			worldGenRiver(imgWater, floor(H / 3) * 2, 3, -1); 
			worldGenReplaceRandomBlocks(imgBlockRock, imgBlock, 200); 
			worldGenReplaceRandomFloor(imgWater, imgWaterLilly, 60); 
		}
		worldGenRandomPopulate(); 
	}
	if(kind == "wide maze"){
		for(var a=0; a<W; a++){ for(var b=0; b<H; b++){ fmap[a, b] = imgBGDirt; bmap[a, b] = imgBlock; }}
		for(var a=8; a<W; a++){ for(var b=0; b<H; b++){ bmap[a, b] = noone; fmap[a, b] = imgBGDirt; }}
		for(var a=0; a<W; a++){ for(var b=floor(H/2); b<H; b++){ bmap[a, b] = noone; }}
		worldGenMazeFrom(0, groundLevel + 1); 
		worldGenDoubleMap();
		worldGenSky();
		worldGenReplaceRandomBlocks(imgBlock, imgBlockRock, 130); 
		worldGenRandomPopulate(); 
	}
	if(kind == "3 doors"){
		worldGen3Doors();
		normalFeatures = false;
		for(var a=0; a<W; a++){ bmap[a, H-1] = noone; }
		if(choose(true, false)){
			fmap[1, H - 1] = imgExit;
			instance_destroy(pmap[15, H - 1]);
			//pmap[15, H - 1] = instance_create_depth(15*64, (H-1)*64, layerP, objRougeFlake);
		} else {
			fmap[15, H - 1] = imgExit;
			instance_destroy(pmap[1, H - 1]);
			//pmap[1, H - 1] = instance_create_depth(1*64, (H-1)*64, layerP, objRougeFlake);
		}
		
		worldGenRandomPopulate(12); 
	}
	if(kind == "push blocks"){ 
		worldGenStatic(imgBlock, noone); 
		worldGenReplaceRandomBlocks(imgBlock, imgBlockPush, 120); 
		worldGenReplaceRandomBlocks(imgBlock, noone, 220); 
		worldGenReplaceRandomBlocks(imgBlock, imgBlockMobStatue, 20); 
		worldGenRandomPopulate(); 
	}
	if(kind == "boss"){
		normalFeatures = false;
		
		for(var b=groundLevel; b<H; b++){
			var a1 = irandom_range(0, 6);
			var a2 = irandom_range(W-7, W-1);
			for(var a=a1; a<=a2; a++){
				bmap[a, b] = noone;
			}
		}
		
		
		var doorRow = 33;
		for(var a=0; a<W; a++){ bmap[a, doorRow] = noone; }
		var a = irandom_range(1, 15); 
		bmap[a, doorRow] = noone; 
		fmap[a, doorRow] = imgExitShut;
		
		
		mobTable = [{kind: objMobRogue, m1: 1, m2: 1}];
		worldGenMobsAt(7, doorRow - 2);
		bmap[7, doorRow - 2] = noone;
		
		for(var a=0; a<W; a++){
			for(var b=doorRow + 2; b<H; b++){
				bmap[a, b] = imgBlockRock;
			}
		}
	}
	
	
	if(normalFeatures){
	
		//force food
		//if(foodSpawned == 0){
			//var p = noone;
			//while(p == noone){
				//var a = irandom_range(0, W-1);
				//var b = irandom_range(10, H-10);
				//p = putPupObjCloseTo(getItem("Food"), a, b);
			//}
		//}
	
		//place exit
		for(var a=0; a<W; a++){ bmap[a, H-1] = noone; }
		var a = irandom_range(1, 15); bmap[a, H - 1] = noone; fmap[a, H - 1] = imgExit;
	
	
		//place rouge
		if(pc.stage <= 1 || pc.stage % 2 == 1){
			var a = irandom_range(1, 15);
			var b = irandom_range(ww.H - 16, ww.H - 2);
			bmap[a, b] = noone;
			instance_destroy(pmap[a, b]);
			pmap[a, b] = instance_create_depth(a*64, b*64, layerP, objRougeFlake);
		}
		
		
		
	}
	
	

	
	
	
	//worldGenBiomeSprites(zone);
	worldGenFinilize();
	
	if(kind == "boss"){
		for(var a=0; a<W; a++){ for(var b=6; b<H; b++){
			 if(bmap[a, b] != noone && choose(true, false)){
				 bmap[a, b].hp -= irandom_range(1, 5) * 5;
			 }
		 }}
	}
	
	//remove all monsters for speed tests
	//with(objMob){ if(id != pc){ instance_destroy(); }}
	//for(var a=0; a<ww.W; a++){ for(var b=0; b<ww.H; b++){ ww.mmap[a, b] = noone; }}
}