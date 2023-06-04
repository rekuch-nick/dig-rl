function playerPickupItem(a, b){
	if(!inBounds(a, b)){ return; }
	
	
	for(var aa = a-1; aa<=a+1; aa++){ for(var bb = b-1; bb<=b+1; bb++){
		if(a != aa && b != bb){
			if(inBounds(aa, bb)){
				if(ww.bmap[aa, bb] != noone && ww.bmap[aa, bb].sprite_index = imgBlockMobStatue2 && ww.mmap[aa, bb] == noone){
					instance_destroy(ww.bmap[aa, bb]);
					ww.bmap[aa, bb] = noone;
					
					ww.mmap[aa, bb] = instance_create_depth(aa * 64, bb * 64, ww.layerM, objMobStatue2);
					var mn = ww.mmap[aa, bb].nam;
					logMessage("A " + mn + " awakens");
				}
			}
		}
	}}
	
	
	
	
	
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
	
	if(i.sprite_index == imgHeart2){
		pc.hp = pc.hpMax;
		instance_destroy(ww.pmap[a, b]); ww.pmap[a, b] = noone; return;
	}
	
	if(i.sprite_index == imgHeartStack){
		pc.hp += 50; pc.hpMax += 50;
		//for(var i=0; i<26; i++){ if(pc.bag[i] != noone){ 
		//	if(pc.bag[i].stacks || pc.bag[i].kind == "Wand"){
		//		pc.bag[i].charges ++;
		//	}
		//}}
		instance_destroy(ww.pmap[a, b]); ww.pmap[a, b] = noone; return;
	}
	
	if(i.sprite_index == imgKey){
		logMessage("The Exit opens")
		openExit();
		instance_destroy(ww.pmap[a, b]); ww.pmap[a, b] = noone; return;
	}
	
	
	var stackIndex = -1;
	
	if(i.object_index == objRougeFlake){
		instance_create_depth(0, 0, ww.layerS, objScreenRougeUpgrade);
		
		instance_destroy(ww.pmap[a, b]); ww.pmap[a, b] = noone; return;
	}
	
	if(i.itm.stacks && playerHasItem(i.itm.nam)){
		stackIndex = playerHasItemId(i.itm.nam);
		//pc.bag[stackIndex].charges ++;
		pc.bag[stackIndex].charges = clamp(pc.bag[stackIndex].charges + 1, 0, pc.bag[stackIndex].chargesMax);
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
	
	
	
	var playerCac = playerHasItemId("Cactus Heart");
	if(playerCac != -1){
		if(pc.bag[playerCac].charges >= 20){
			pc.bag[playerCac] = noone;
			ww.pmap[a, b] = instance_create_depth(a * 64, b * 64, ww.layerP, objPup);
			ww.pmap[a, b].itm = getItem("Food");
			ww.pmap[a, b].sprite_index = ww.pmap[a, b].itm.img;
			logMessage("That's enough cactus hearts to eat");
			playerPickupItem(a, b);
		}
	}
	
	manageBag();
}