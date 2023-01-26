function characterMove(who){
	
	var n = who.moveSpeed;
	who.moved = false;
	who.justFinished = false;
	
	while(who.x < who.xSpot * 64 && n > 0){
		who.moved = true;
		who.x ++;
		n --;
	}
	
	
	while(who.x > who.xSpot * 64 && n > 0){
		who.moved = true;
		who.x --;
		n --;
	}
	
	
	
	while(who.y < who.ySpot * 64 && n > 0){
		who.moved = true;
		who.y ++;
		n --;
	}
	
	while(who.y > who.ySpot * 64 && n > 0){
		who.moved = true;
		who.y --;
		n --;
	}
	
	if(who.x == who.xSpot * 64 && who.y == who.ySpot * 64){
		if(who.moved){
			who.justFinished = true;
			
			characterEnterTile(who, who.xSpot, who.ySpot);
		}
	}
	
}