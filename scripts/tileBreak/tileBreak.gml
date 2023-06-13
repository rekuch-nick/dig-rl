function tileBreak(a, b){
	if(!inBounds(a, b)){ return; }
	if(ww.bmap[a, b] == noone){ return; }
	
	var spt = ww.bmap[a, b].sprite_index;
	var blo = ww.bmap[a, b];
	
	if(spt == imgBlock || spt == imgBlockGrass
				|| spt == imgBlockCactus
					){
		instance_create_depth(a * 64 + 8, b * 64 + 8, ww.layerE, effChip);
		instance_create_depth(a * 64 + 24, b * 64 + 8, ww.layerE, effChip);
		instance_create_depth(a * 64 + 8, b * 64 + 24, ww.layerE, effChip);
		instance_create_depth(a * 64 + 24, b * 64 + 24, ww.layerE, effChip);
	}
	
	if(spt == imgBlockSkull){
		if(!characterHasProp(pc, "Still") && !characterHasProp(pc, "Seal") ){ 
			if(ww.mmap[a, b] == noone){
				ww.mmap[a, b] = instance_create_depth(a*64, b*64, ww.layerM, objMobSkellie);
			}
		}
	}
	
	if(spt == imgBlockMobStatueGold){
		logMessage("The golden idol shatters.");
		logMessage("The monsters scream with rage and hunger...");
		pc.difficultyLevel += 1;
	}
	
	ww.bmap[a, b] = noone;
	instance_destroy(blo);
	
	if(spt == imgBlockBlast){
		for(var aa=a-2; aa<=a+2; aa++){ for(var bb=b-2; bb<=b+2; bb++){
			if(a == aa && b == bb){ continue; }
			if(inBounds(aa, bb) && ww.bmap[aa, bb] != noone){ tileBreak(aa, bb); }
		}}
		potionEffect(ww.potBomb, a, b);
	}
	
	
	
	
}