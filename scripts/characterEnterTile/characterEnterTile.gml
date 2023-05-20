function characterEnterTile(c, a, b){
	
	var ft = ww.fmap[a, b].sprite_index;
	if(ft == imgWaterAcid && !c.acidProof){
		c.hp -= 5;
		var v = c.id == pc ? "" : "the ";
		logMessage("Acid burns " + v + c.nam);
	}
	if(ft == imgWaterLava && !c.acidProof){
		c.hp -= 20;
		c.burning += 2;
		var v = c.id == pc ? "" : "the ";
		logMessage("Lava burns " + v + c.nam);
	}
	
	if(ww.tmap[a, b] != noone && !characterHasProp(c, "Flying")){
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