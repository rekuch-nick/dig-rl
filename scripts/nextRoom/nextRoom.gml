function nextRoom(){
	
	var n = 0;
	with(objMob){ if(aly == -1){ n ++; }}
	pc.dataLeftBehind += n;
		
	pc.xSpot = pc.xFirst; pc.ySpot = pc.yFirst;
	pc.x = pc.xSpot * 64; pc.y = pc.ySpot * 64;
	ww.rollWord = true;
}