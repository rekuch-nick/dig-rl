function characterIsLavaProof(c){
	if(characterHasProp(c, "Lava Proof")){ return true; }
	if(characterHasProp(c, "Flying")){ return true; }
	if(c.fly > 0){ return true; }
	return c.lavaProof;
}