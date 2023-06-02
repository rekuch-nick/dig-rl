function worldGen3DoorsRoom(bb){
	
	for(var a=0; a<W; a++){ for(var b=bb; b<bb+10; b++){
		bmap[a, b] = noone;
	}}
	
	
	for(var a=0; a<W; a++){ for(var b=bb+5; b<bb+10; b++){
		bmap[a, b] = imgBlockRock;
	}}
	
	//fmap[2, bb + 4] = imgBGDirtSign;
	animalmap[2, bb + 4] = randomDoorText();
	txtmap[2, bb + 4] = "This door is marked with the " + animalmap[2, bb + 4];
	fmap[2, bb + 5] = imgBGDirt3Doors;
	bmap[2, bb + 5] = noone;
	
	//fmap[8, bb + 4] = imgBGDirtSign;
	animalmap[8, bb + 4] = randomDoorText();
	txtmap[8, bb + 4] = "This door is marked with the " + animalmap[8, bb + 4];
	fmap[8, bb + 5] = imgBGDirt3Doors;
	bmap[8, bb + 5] = noone;
	
	//fmap[14, bb + 4] = imgBGDirtSign;
	animalmap[14, bb + 4] = randomDoorText();
	txtmap[14, bb + 4] = "This door is marked with the " + animalmap[14, bb + 4];
	fmap[14, bb + 5] = imgBGDirt3Doors;
	bmap[14, bb + 5] = noone;
	
}