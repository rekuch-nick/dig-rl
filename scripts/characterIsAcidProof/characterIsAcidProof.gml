function characterIsAcidProof(c){
	if(characterHasProp(c, "Acid Proof")){ return true; }
	if(characterHasProp(c, "Flying")){ return true; }
		
	return c.acidProof;
}