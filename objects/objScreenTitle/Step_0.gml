


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

if(pc.clickLeft){
	charCursor --;
	if(charCursor < 0){ charCursor = array_length(charBig) - 1; }
	playerEatInput();
}
if(pc.clickRight){
	charCursor ++;
	if(charCursor > array_length(charBig) - 1){ charCursor = 0; }
	playerEatInput();
}



if(pc.clickEnter || pc.clickLM){
	pc.sprite_index = charSmall[charCursor];
	playerEatInput();
	ww.rollWord = true;
	instance_destroy();
}