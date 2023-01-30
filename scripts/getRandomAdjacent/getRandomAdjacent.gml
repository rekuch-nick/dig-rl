function getRandomAdjacent(a, b){
	
	var t = noone;
	var tries = 0;
	
	do {
		tries ++;
		t = choose(
			{a:a+1, b:b},
			{a:a-1, b:b},
			{a:a, b:b+1},
			{a:a, b:b-1}
		)
	} until (
		( inBounds(t.a, t.b)
			&& ww.tmap[t.a, t.b] == noone
			&& ww.pmap[t.a, t.b] == noone
		) || tries > 40
	);
	
	return t;
	
}