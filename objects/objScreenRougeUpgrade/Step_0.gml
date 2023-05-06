


if(pc.clickChar == "1" || pc.clickChar == "2" || pc.clickChar == "3"
					|| pc.clickChar == "4" || pc.clickChar == "5"){
	if(ww.pmap[pc.xSpot, pc.ySpot] != noone){
		instance_destroy(ww.pmap[pc.xSpot, pc.ySpot]);
	}
	
	
	ww.pmap[pc.xSpot, pc.ySpot] = instance_create_depth(pc.xSpot * 64, pc.ySpot * 64, ww.layerP, objPup);
	ww.pmap[pc.xSpot, pc.ySpot].itm = up[pc.clickChar];
	ww.pmap[pc.xSpot, pc.ySpot].potID = up[pc.clickChar].potID;
	ww.pmap[pc.xSpot, pc.ySpot].sprite_index = up[pc.clickChar].img;
	
	//if(ww.pmap[pc.xSpot, pc.ySpot].potID != -1){
	if(ww.pmap[pc.xSpot, pc.ySpot].itm.kind == "Potion"){
		pc.potionKnown[ ww.pmap[pc.xSpot, pc.ySpot].potID ] = true;
	}
	
	playerPickupItem(pc.xSpot, pc.ySpot);
	playerEatInput();
	instance_destroy();
}