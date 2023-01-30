function worldGen(){
	
	random_set_seed(seed); for(var i=0; i<pc.stage; i++){ var n = irandom_range(0, 99); }
	groundLevel = 6;
	worldGenClearAndFill();
	pc.stage ++;
	zone = "Grasslands";
	kind = "caves";
	losVision = false;
	if(pc.stage >= 6){ zone = "Desert"; }
	
	//kind = "mix"; 
	losVision = true;
	
	
	
	if(kind = "caves"){ worldGenColCaves(); }
	if(kind = "lakes"){ worldGenPatches(noone, imgWater, false, true); }
	if(kind = "posts"){ worldGenPosts(imgBlock); }
	if(kind = "mix"){ worldGenStatic(imgBlock, noone); }
	
	
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
	
	

	
	
	
	worldGenBiomeSprites(zone);
	worldGenFinilize();
	
	
	
	
}