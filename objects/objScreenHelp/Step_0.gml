
if(keyboard_check_pressed(vk_f1) && pc.fCD < 1){
	pc.fCD = 10;
	instance_destroy();
}

if(pc.clickNO){
	instance_destroy();
	playerEatInput();
}
