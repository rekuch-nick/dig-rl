function mobTableAdd(t, mm1, mm2){
	
	if(is_undefined(mm1)){
		ww.mobTable[array_length(ww.mobTable)] = {
			kind: t.kind,
			m1: t.m1,
			m2: t.m2
		};
	} else {
	
		ww.mobTable[array_length(ww.mobTable)] = en(t, mm1, mm2);
	}
		
	
}

