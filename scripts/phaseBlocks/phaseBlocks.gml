function phaseBlocks(){
	
	
	
	
	for(var a=0; a<ww.W; a++){ for(var b=0; b<ww.H; b++){
		var ft = ww.fmap[a, b].sprite_index;
		var bt = ww.bmap[a, b];
		
		if(ww.phaseBlue){
			if(bt != noone && bt.sprite_index == imgBlockPhasePink){
				instance_destroy(ww.bmap[a, b]);
				ww.bmap[a, b] = noone;
			}
			
			if(ft == imgBGDirtPhaseBlue && bt == noone && ww.mmap[a, b] == noone && ww.pmap[a, b] == noone){
				ww.bmap[a, b] = instance_create_depth(a * 64, b * 64, ww.layerB, objBlock);
				ww.bmap[a, b].sprite_index = imgBlockPhaseBlue;
			}
			
			
			
			
		} else {
			if(bt != noone && bt.sprite_index == imgBlockPhaseBlue){
				instance_destroy(ww.bmap[a, b]);
				ww.bmap[a, b] = noone;
			}
			
			
			if(ft == imgBGDirtPhasePink && bt == noone && ww.mmap[a, b] == noone && ww.pmap[a, b] == noone){
				ww.bmap[a, b] = instance_create_depth(a * 64, b * 64, ww.layerB, objBlock);
				ww.bmap[a, b].sprite_index = imgBlockPhasePink;
			}
			
			
			
		}
		
		
		
		
	}}
	
	
	ww.phaseBlue = !ww.phaseBlue;
	
	rotateMoveFloors();
}