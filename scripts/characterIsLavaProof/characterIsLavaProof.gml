function characterIsLavaProof(c){
	if(characterHasProp(c, "Lava Proof")){ return true; }
	if(characterHasProp(c, "Flying")){ return true; }
	return c.lavaProof;
}