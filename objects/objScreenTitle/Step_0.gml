


//if(pc.clickChar == "R"){
if(keyboard_check(ord("R"))){
	ww.seed = irandom_range(1, 1000000);
	playerEatInput();
}

if(keyboard_check(ord("1"))){
	ww.seed = 10000;
	playerEatInput();
}

if(keyboard_check(ord("2"))){
	ww.seed = 20222;
	playerEatInput();
}

if(keyboard_check(ord("3"))){
	ww.seed = 30333;
	playerEatInput();
}


if(pc.clickEnter || pc.clickLM){
	playerEatInput();
	ww.rollWord = true;
	instance_destroy();
}