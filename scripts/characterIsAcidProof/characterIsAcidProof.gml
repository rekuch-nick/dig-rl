function characterIsAcidProof(c){
	if(characterHasProp(c, "Acid Proof")){ return true; }
	if(characterHasProp(c, "Flying")){ return true; }
	if(c.fly > 0){ return true; }
	return c.acidProof;
}