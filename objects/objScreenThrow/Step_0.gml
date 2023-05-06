





if(pc.clickNO || pc.clickRM){
	logClear();
	playerEatInput();
	instance_destroy();	
}



if(pc.clickLM || pc.clickChar == "Z"){
	logClear();
	
	
	if(pc.bag[index].kind == "Wand"){
		var i = array_length( cur.line ) - 1;
		potionEffect(pc.bag[index].potID , cur.line[i].a, cur.line[i].b);
		pc.bag[index].charges --;
		pc.moved = true;
		playerEatInput();
		pc.wait = 20;
		instance_destroy();
		return;
	}
	
	
	
	
	var s = instance_create_depth(pc.xSpot * 64, pc.ySpot * 64, ww.layerM - 200, objThrowable);
	s.sprite_index = pc.bag[index].img;
	s.throwPower = pc.bag[index].throwPower;
	s.throwProc = pc.bag[index].potID;
	s.nam = pc.bag[index].nam;
	if(pc.bag[index].bonus != 0){ s.nam = s.nam + " +" + string(pc.bag[index].bonus); }
	//s.xt = pc.xMouse * 64; s.yt = pc.yMouse * 64;
	var i = array_length( cur.line ) - 1;
	s.xt = cur.line[i].a * 64;
	s.yt = cur.line[i].b * 64;
	
	
	
	if(pc.bag[index].stacks && pc.bag[index].charges >= 2){
		pc.bag[index].charges --;
	} else {
	
		pc.bag[index] = noone;
	}
	manageBag();
	playerEatInput();
	instance_destroy();	
}


