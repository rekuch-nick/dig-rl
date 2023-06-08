function characterEnterTile(c, a, b){
	
	var ft = ww.fmap[a, b].sprite_index;
	if(ft == imgWaterAcid && !c.acidProof && !characterHasProp(c, "Flying") && c.fly < 1){
		c.hp -= 5;
		var v = c.id == pc ? "" : "the ";
		logMessage("Acid burns " + v + c.nam);
	}
	if(ft == imgWaterLava && !c.lavaProof && !characterHasProp(c, "Flying") && c.fly < 1){
		c.hp -= 20;
		c.burning = clamp(c.burning + 2, 0, 3);
		var v = c.id == pc ? "" : "the ";
		logMessage("Lava burns " + v + c.nam);
	}
	
	if(c == pc && ft == imgBGDirtWarp){
		pc.blinkNext = 1;
	}
	
	if(ww.tmap[a, b] != noone && !characterHasProp(c, "Flying") && c.fly < 1){
		var t = ww.tmap[a, b];
		
		if(t.nam == "Web"){
			
			if(characterHasProp(c, "Spiderlike")){
				var bns = itemHasProp(pc.gear[ww.gsRing], "Spiderlike") ? pc.gear[ww.gsRing].bonus : pc.gear[ww.gsRing2].bonus;
				t.charges ++;
				c.webArmor = 30;
			} else {
			
				logMessageWhom(c.nam, "get", "stuck in the webs", c);
				c.web = 1;
			}
		}
		
		if(t.nam == "Summon" && c == pc){
			var mm = randomEncounter();
			var mt = mm.kind;
			var tries = 0;
			while(tries < 20){
				tries ++;
				var aa = pc.xSpot + irandom_range(-1, 1);
				var bb = pc.ySpot + irandom_range(-1, 1);
				if(inBounds(aa, bb) && ww.mmap[aa, bb] == noone && ww.bmap[aa, bb] == noone){
					ww.mmap[aa, bb] = instance_create_depth(aa * 64, bb * 64, ww.layerM, mt);
					var mn = ww.mmap[aa, bb].nam;
					logMessage("A " + mn + " steps out of the aether");
					break;
				}
			}			
		}
		
		
		if(t.damMax > 0){
			var dam = irandom_range(t.damMin, t.damMax);
			
			c.hp -= dam;
			var v = c.id == pc ? " take " : " takes ";
			logMessage(c.nam + v + string(dam) + " from the " + t.nam);
		}
		
		
		if(t.chargeCost > 0){
			t.charges --;
			if(t.charges < 1){
				instance_destroy(ww.tmap[a, b]);
				ww.tmap[a, b] = noone;
			}
		}
	}
	
	

}