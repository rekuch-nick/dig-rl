function shootTurrets(){
	with(objBlock){ if(sprite_index == imgBlockTurret){
		var a = floor(x / 64);
		var b = floor(y / 64);
		var dis = abs(a - pc.xSpot) + abs(b - pc.ySpot);
		
		if(dis <= 4){
			var xc = a;
			var yc = b;
			
			if(a == pc.xSpot){
				while(yc != pc.ySpot){
					yc += pc.ySpot < b ? -1 : 1;
					if(ww.bmap[xc, yc] != noone){ break; }
					potionEffect(ww.potBombSmall, xc, yc);
				}
			}
			
			if(b == pc.ySpot){
				while(xc != pc.xSpot){
					xc += pc.xSpot < a ? -1 : 1;
					if(ww.bmap[xc, yc] != noone){ break; }
					potionEffect(ww.potBombSmall, xc, yc);
				}
			}
			
			
		}
	}}

}