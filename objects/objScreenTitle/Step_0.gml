


//if(pc.clickChar == "R"){
if(keyboard_check(ord("R"))){
	ww.seed = irandom_range(1, 1000000);
	playerEatInput();
}


if(pc.clickEnter || pc.clickLM){
	playerEatInput();
	ww.rollWord = true;
	instance_destroy();
}