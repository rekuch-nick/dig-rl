function playerPickupItem(a, b){
	if(!inBounds(a, b)){ return; }
	var i = ww.pmap[a, b];
	if(i == noone){ return; }
	if(pc.slip > 0){
		logMessage("Can't pick up items while coated in slippery goo")
		return;
	}
	
	if(i.sprite_index == imgHeart){
		pc.hp = clamp(pc.hp + 20, 0, pc.hpMax);
		instance_destroy(ww.pmap[a, b]); ww.pmap[a, b] = noone; return;
	}
	
	if(i.sprite_index == imgHeartStack){
		for(var i=0; i<26; i++){ if(pc.bag[i] != noone){ 
			if(pc.bag[i].stacks || pc.bag[i].kind == "Wand"){
				pc.bag[i].charges ++;
			}
		}}
		instance_destroy(ww.pmap[a, b]); ww.pmap[a, b] = noone; return;
	}
	
	
	var stackIndex = -1;
	
	if(i.object_index == objRougeFlake){
		instance_create_depth(0, 0, ww.layerS, objScreenRougeUpgrade);
		
		instance_destroy(ww.pmap[a, b]); ww.pmap[a, b] = noone; return;
	}
	
	if(i.itm.stacks && playerHasItem(i.itm.nam)){
		stackIndex = playerHasItemId(i.itm.nam);
		pc.bag[stackIndex].charges ++;
	}
	
	var n = i.itm.nam;
	
	
	if(stackIndex == -1){
		if(playerGetEmptyBagSlot() == -1){ 
			logMessage("Backpack is full.")
			return; 
		}
		
		pc.bag[playerGetEmptyBagSlot()] = i.itm;
		if(i.itm.potID != -1 && i.itm.kind == "Potion" && !pc.potionKnown[i.itm.potID]){
			n = "Unidentified Potion";
		}
	}
	
	
	
	
	
	logMessage("Picked up " + string(n));
	if(ww.pmap[a, b].itm.kind == "Wand"){ pc.wands ++; }
	
	instance_destroy(ww.pmap[a, b]);
	ww.pmap[a, b] = noone;
	
	
	manageBag();
}