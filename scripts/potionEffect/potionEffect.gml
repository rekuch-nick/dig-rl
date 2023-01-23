function potionEffect(pid, a, b){
	
	pc.potionKnown[pid] = true;
	
	if(!inBounds(a, b)){ return; }
	
	var m = ww.mmap[a, b];
	
	if(pid == ww.potHeal){
		if(m != noone){
			if(m.hp < m.hpMax){
				m.hp = clamp(m.hp + floor(m.hpMax / 5), 0, m.hpMax);
				logMessageWhom(m.nam, "recover", " some HP", m);
			} else {
				m.hpMax += floor(m.hpMax) / 20;
				logMessageWhom(m.nam, "gain", " some Max HP", m);
			}
		}
	}
	
	if(pid == ww.potBomb){
		for(var aa=a-1; aa<=a+1; aa++){ for(var bb=b-1; bb<=b+1; bb++){
			if(!inBounds(aa, bb)){ continue; }
			
			instance_create_depth(aa * 64, bb * 64, ww.layerE, effBlast);
			
			var mm = ww.mmap[aa, bb];
			if(mm != noone){
				mm.hp -= 20;
				logMessageWhom(mm.nam, "get", " caught in the blast", mm);
			}
			if(ww.bmap[aa, bb] != noone && tileDigCost(aa, bb) != 0){
				tileBreak(aa, bb);
			}
			
		}}
		
	}
	
	if(pid == ww.potIce){
		instance_create_depth(a * 64, b * 64, ww.layerE, effColdBlast);
		if(m != noone){
			m.frozen += irandom_range(1, 4);
			if(m != pc){ m.frozen += irandom_range(1, 4); }
			logMessageWhom(m.nam, "freeze", "", m);
		}
	}
	
	
	if(pid == ww.potPoison){
		instance_create_depth(a * 64, b * 64, ww.layerE, effPoison);
		if(m != noone){
			m.poison += 25;
			logMessageWhom(m.nam, "get", "poisoned", m);
		}
	}
	
	if(pid == ww.potSTR){
		
		if(m != noone){
			m.str += 1;
			logMessageWhom(m.nam, "get", "more STR", m);
		}
	}
	
	if(pid == ww.potAGI){
		
		if(m != noone){
			m.agi += 1;
			logMessageWhom(m.nam, "get", "more AGI", m);
		}
	}
	
	if(pid == ww.potSword){
		if(m != noone){
			m.swordmastery += 10;
			logMessage(m.nam + " can strike with precision.");
		}
	}
	
	if(pid == ww.potDefense){
		if(m != noone){
			m.defense += 10;
			logMessage(m.nam + " can resist attacks.");
		}
	}
	
	if(pid == ww.potWarp){
		if(m != noone){
			var tries = 0;
			while(tries < 1000){
				tries ++;
				var aa = irandom_range(0, ww.W-1);
				var bb = irandom_range(0, ww.H-1);
				
				var dis = abs(a - aa) + abs(b - bb);
				if(dis < 20){ continue; }
				
				if(ww.bmap[aa, bb] == noone){
					if(ww.mmap[aa, bb] == noone){
						logMessageWhom(m.nam, "get", "teleported", m);
						m.xSpot = aa; m.ySpot = bb;
						m.x = aa * 64; m.y = bb * 64;
						ww.mmap[a, b] = noone;
						ww.mmap[aa, bb] = m;
						
						if(m == pc){ ww.fmap[aa, bb].playerSeen = true; }
						break;
					}
				}
			}
		}
	}
	
}