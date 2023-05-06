function characterUseWand(w, a, b){
	
	if(w.charges < 1){
		return;
	}
	
	
	
	if(w.wandAuto){
		potionEffect(w.potID, a, b);
		w.charges --;
	} else if(w.wandAim){
		for(var i=0; i<26; i++){
			if(pc.bag[i] != noone){
				if(pc.bag[i] == w){
					var s = instance_create_depth(0, 0, ww.layerS, objScreenThrow);
					s.index = i;
					break;
				}
			}
		}
		
		
		
		
	}
	
	
	
	

}