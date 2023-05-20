function characterIsLavaProof(c){
	if(characterHasProp(c, "Lava Proof")){ return true; }
		
	return c.lavaProof;
}