function worldGen3Doors(){
	
	worldGen3DoorsRoom(groundLevel + 1);
	worldGen3DoorsRoom(groundLevel + 11);
	worldGen3DoorsRoom(groundLevel + 21);
	worldGen3DoorsRoom(groundLevel + 31);
	worldGen3DoorsRoom(groundLevel + 41);
	worldGen3DoorsRoom(groundLevel + 51);
	
	//for(var a=0; a<W; a++){ for(var b=groundLevel + 51; b<H; b++){ bmap[a, b] = noone; }}
}