function potionEffect(pid, a, b){
	
	pc.potionKnown[pid] = true;
	
	if(!inBounds(a, b)){ return; }
	
	var m = ww.mmap[a, b];
	
	if(pid == ww.potHeal){
		if(m != noone){
			//if(m.hp < m.hpMax){
				m.hp = clamp(m.hp + ceil(m.hpMax / 3), 0, m.hpMax);
				logMessageWhom(m.nam, "recover", " some HP", m);
			//} else {
				//m.hpMax += floor(m.hpMax / 20);
				//logMessageWhom(m.nam, "gain", " some Max HP", m);
			//}
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
			if(floorBreakable(aa, bb)){
				ww.fmap[aa, bb].sprite_index = imgBGDirtBlasted;
			}
			if(trapBreakable(aa, bb)){
				instance_destroy(ww.tmap[aa, bb]);
				ww.tmap[aa, bb] = noone;
			}
			
		}}
		
	}
	
	if(pid == ww.potBombSmall){
		
		if(!inBounds(a, b)){ return; }
		
		instance_create_depth(a * 64, b * 64, ww.layerE, effBlast);
		
		var mm = ww.mmap[a, b];
		if(mm != noone){
			mm.hp -= 20;
			logMessageWhom(mm.nam, "get", " caught in the blast", mm);
		}
		if(ww.bmap[a, b] != noone && tileDigCost(a, b) != 0){
			tileBreak(a, b);
		}
	}
	
	if(pid == ww.potIce){
		instance_create_depth(a * 64, b * 64, ww.layerE, effColdBlast);
		if(m != noone){
			m.frozen += 6;
			m.burning = 0;
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
			//if(m.str > m.strMax){ 
			m.strMax ++;
			logMessageWhom(m.nam, "get", "more STR", m);
		}
	}
	
	if(pid == ww.potAGI){
		
		if(m != noone){
			m.agi += 1;
			//if(m.agi > m.agiMax){ 
			m.agiMax ++;
			logMessageWhom(m.nam, "get", "more AGI", m);
		}
	}
	
	if(pid == ww.potSword){
		if(m != noone){
			m.swordmastery += 30;
			logMessage(m.nam + " can strike with might.");
		}
	}
	
	if(pid == ww.potDefense){
		if(m != noone){
			m.defense += 30;
			logMessage(m.nam + " can endure attacks.");
		}
	}
	
	if(pid == ww.potValor){
		if(m != noone){
			m.defense += 30;
			m.swordmastery += 30;
			m.displace += 30;
			m.trueStrike += 30;
			logMessage(m.nam + " are ready for battle");
		}
	}
	
	if(pid == ww.potSparks){
		if(randomLightningAt(a, b)){
			for(var i=0; i<9; i++){
				randomLightningAt(a, b);
			}
		} else {
			logMessage("Nothing nearby to Zap");
		}
	}
	
	if(pid == ww.potTrueStrike){
		if(m != noone){
			m.trueStrike += 30;
			logMessage(m.nam + " will strike true");
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
	
	if(pid == ww.potBlessWep){
		if(m != noone){
			if(m.gear[0] != noone){
				itemEnchant(m.gear[0], 1, false);
			} else {
				logMessage("No weapon to bless there");
			}
		}
	}
	
	if(pid == ww.potBlessArm){
		if(m != noone){
			if(m.gear[1] != noone){
				itemEnchant(m.gear[1], 1, false);
			} else {
				logMessage("No armor to bless there");
			}
		}
	}
	
	if(pid == ww.potBlessRing){
		if(m != noone){
			if(m.gear[2] != noone){ itemEnchant(m.gear[2], 1, false); }
			if(m.gear[3] != noone){ itemEnchant(m.gear[3], 1, false); }
			
			if(m.gear[2] == noone && m.gear[3] == noone){
				logMessage("No rings to bless there");
			}
		}
	}
	
	if(pid == ww.potRestore){
		if(m != noone){
			m.str = m.strMax;
			m.agi = m.agiMax;
			m.hpMax += 10;
			m.hp = m.hpMax;
			
			logMessageWhom(m.nam, "feel", "amazing", m);
		}
	}
	
	if(pid == ww.potSlow){
		if(m != noone){
			m.slow += 30;
			logMessageWhom(m.nam, "become", "slower", m);
		}
	}
	
	if(pid == ww.potDisplace){
		if(m != noone){
			m.displace += 30;
			logMessageWhom(m.nam, "become", "hard to see", m);
		}
	}
	
	
	if(pid == ww.potBlink){
		if(m != noone){
			m.blinkNext = 1;
		}
	}
	
	if(pid == ww.potCrumble){
		
		if(!inBounds(a, b)){ return; }
		
		instance_create_depth(a * 64, b * 64, ww.layerE, effBlast);
		
		var mm = ww.mmap[a, b];
		if(mm != noone){
			mm.hp -= 20;
			logMessageWhom(mm.nam, "get", " caught in the blast", mm);
		}
		if(ww.bmap[a, b] != noone && tileDigCost(a, b) != 0){
			tileBreak(a, b);
		}
	}
	
	
	
	if(pid == ww.potFireball){
		for(var aa=a-3; aa<=a+3; aa++){ for(var bb=b-3; bb<=b+3; bb++){
			if(!inBounds(aa, bb)){ continue; }
			if(abs(aa - a) + abs(bb - b) > 3){ continue; }
			if(aa == pc.xSpot && bb == pc.ySpot){ continue; }
			
			instance_create_depth(aa * 64, bb * 64, ww.layerE, effFire);
			
			var mm = ww.mmap[aa, bb];
			if(mm != noone){
				mm.hp -= 10;
				mm.burning += 1;
				logMessageWhom(mm.nam, "get", " caught in the blast", mm);
			}
			
			if(floorBreakable(aa, bb)){
				ww.fmap[aa, bb].sprite_index = imgBGDirtBlasted;
			}
			if(trapBreakable(aa, bb)){
				instance_destroy(ww.tmap[aa, bb]);
				ww.tmap[aa, bb] = noone;
			}
			
		}}
		
	}
	
	if(pid == ww.potItemFind){
		if(m != noone){
			m.itemFind += 300;
			logMessage(m.nam + " can spot treature");
		}
	}
	
	if(pid == ww.potFrost){
		for(var aa=a-3; aa<=a+3; aa++){ for(var bb=b-3; bb<=b+3; bb++){
			if(!inBounds(aa, bb)){ continue; }
			
			
			instance_create_depth(aa * 64, bb * 64, ww.layerE, effColdBlast);
			
			if(a != aa || b != bb){
				var mm = ww.mmap[aa, bb];
				if(mm != noone){
					mm.frozen = 3;
					mm.burning = 0;
				}
			}
			
			if(ww.fmap[aa, bb].sprite_index == imgWater){
				ww.fmap[aa, bb].sprite_index = imgBGFrozen;
			}
		}}
		
	}
	
	if(pid == ww.potPure){
		instance_create_depth(a * 64, b * 64, ww.layerE, effHeal);
		if(m != noone){
			m.poison = 0;
			m.burning = 0;
			m.slow = 0;
			m.frozen = 0;
			m.sick = 0;
			m.slip = 0;
		}
	}
	
	
	
	if(pid == ww.potPox){
		for(var aa=a-10; aa<=a+10; aa++){ for(var bb=b-10; bb<=b+10; bb++){
			if(!inBounds(aa, bb)){ continue; }
			if(aa == pc.xSpot && bb == pc.ySpot){ continue; }
			
			instance_create_depth(aa * 64, bb * 64, ww.layerE, effPoison);
			
			var mm = ww.mmap[aa, bb];
			if(mm != noone){
				mm.poison += 10;
				mm.sick += 5;
			}
			
		}}
		
	}
	
	if(pid == ww.potShock){
		
		if(!inBounds(a, b)){ return; }
		
		instance_create_depth(a * 64, b * 64, ww.layerE, effBlastLightning);
		
		var mm = ww.mmap[a, b];
		if(mm != noone){
			var dam = 10;
			if(characterHasProp(pc, "Cast Damage Up")){
				dam += 10;
			}
			mm.hp -= dam;
			logMessageWhom(mm.nam, "get", " shocked", mm);
		}
		
	}
	
	
}