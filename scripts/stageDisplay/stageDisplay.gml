function stageDisplay(){
	var s = pc.stage;
	if(s < 1){ s = .8 - abs( (pc.stage / 10) * 2); }
	return string(s);
}