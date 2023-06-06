function putWarning(a, b, notes){
	if(!inBounds(a, b)){ return; }
	
	var newWarningBlocked = false;
	with(objWarning){
		if(a == xSpot && b == ySpot){ newWarningBlocked = true; break; }
	}
		
	if(!newWarningBlocked){
		var w = instance_create_depth(a*64, b*64, ww.layerE, objWarning);
		w.xSpot = a; w.ySpot = b;
		
		if(!is_undefined(notes)){
			if(notes == "fast"){
				w.waitTurns = 1;
			}
		}
	}

}