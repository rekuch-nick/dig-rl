if(firstFrame){
	firstFrame = false;	
	
	var angle = arctan2(yt - y, xt - x);
	xs = cos(angle) * moveSpeed;
	ys = sin(angle) * moveSpeed;
	
	dis = point_distance(x, y, xt, yt);
}

pc.wait = true;

x += xs;
y += ys;
dis -= moveSpeed;

if(dis < -30){
	
	var m = ww.mmap[floor(xt / 64), floor(yt / 64)];
	var a = floor(xt / 64);
	var b = floor(yt / 64);
	
	if(throwProc != -1){
		potionEffect(throwProc, floor(xt / 64), floor(yt / 64));
	}
		
	if(m != noone){
		
		
		
		
		if(throwPower > 0){		
			var dam = getMeleeMax(thrower);
			m.hp -= dam;	
			var sn = m.hp < 1 ? m.nam + " is killed!" : "";
			logMessage("Threw the " + nam + " at " + m.nam + " for " + string(dam) + ".");
			if(sn != ""){ logMessage(sn); }
		}
		
	} 
	
	if (throwProc != -1 ) {
		if(ww.fmap[a, b].sprite_index == imgBGCauldren){
			if(throwProc != -1){
				var i = getItem(nam);
				if(ww.pmap[a, b] == noone){
					ww.pmap[a, b] = instance_create_depth(a * 64, b * 64, ww.layerP, objPup);
					ww.pmap[a, b].sprite_index = sprite_index;
					ww.pmap[a, b].itm = i;
				}
				var tar = getRandomAdjacent(a, b);
				if(tar != noone){
					if(ww.pmap[tar.a, tar.b] == noone){
						ww.pmap[tar.a, tar.b] = instance_create_depth(tar.a * 64, tar.b * 64, ww.layerP, objPup);
						ww.pmap[tar.a, tar.b].sprite_index = sprite_index;
						ww.pmap[tar.a, tar.b].itm = i;
					}	
				}
			}
			
			
			ww.fmap[floor(xt / 64), floor(yt / 64)].sprite_index = imgBGDirt;
		}
	}
	
	
	
	instance_destroy();
}