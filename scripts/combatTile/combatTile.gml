function combatTile(c, a, b){
	if(!inBounds(a, b)){ return; }
	if(ww.mmap[a, b] == noone){ return; }
	combat(c, ww.mmap[a, b]);
}