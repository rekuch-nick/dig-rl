function chargeWands(){
	for(var i=0; i<26; i++){
		if(pc.bag[i] != noone && pc.bag[i].kind == "Wand"){
			var n = pc.wandSkill + pc.bag[i].wandCharge;
			pc.bag[i].charges = clamp(pc.bag[i].charges + n, 0, 99);
		}
	}
}