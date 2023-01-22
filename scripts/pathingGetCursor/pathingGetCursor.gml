function pathingGetCursor(){
	
	xBest = -1;
	yBest = -1;

	for(var a=w1; a<w2; a++){
		for(var b=h1; b<h2; b++){
		
			if(mapStatus[a, b] == "open"){
				if(xBest == -1 || costReal[a, b] + costGuess[a, b] < costReal[xBest, yBest] + costGuess[xBest, yBest]){
					xBest = a;
					yBest = b;
				}
			
			}
		
		}
	}

	xCursor = xBest;
	yCursor = yBest;

}