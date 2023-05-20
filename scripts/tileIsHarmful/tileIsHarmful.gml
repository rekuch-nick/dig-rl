function tileIsHarmful(c, a, b){
	
	if(ww.tmap[a, b] != noone && !c.willStepOnTrap){ return true; }
	if(ww.fmap[a, b].sprite_index == imgWaterAcid && !characterIsAcidProof(c)){ return true; }
	if(ww.fmap[a, b].sprite_index == imgWaterLava && !characterIsLavaProof(c)){ return true; }
	return false;
}