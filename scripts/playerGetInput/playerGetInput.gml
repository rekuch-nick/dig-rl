function playerGetInput(){
	
	xMouse = clamp(floor(mouse_x / 64), 0, ww.W - 1);
	yMouse = clamp(floor(mouse_y / 64), 0, ww.H - 1);
		
	xIn = 0;
	if(keyboard_check(ord("A")) || keyboard_check(vk_left)){ xIn --; }
	if(keyboard_check(ord("D")) || keyboard_check(vk_right)){ xIn ++; }
	
	if(xIn == 0){ xDirHeld = 0; } else { xDirHeld = clamp(xDirHeld + 1, 0, 600); }
	
	clickLeft = xIn == -1 && ( keyboard_check_pressed(ord("A")) || keyboard_check_pressed(vk_left) );
	clickRight = xIn == 1 && ( keyboard_check_pressed(ord("D")) || keyboard_check_pressed(vk_right) );
	
	yIn = 0;
	if(keyboard_check(ord("W")) || keyboard_check(vk_up)){ yIn --; }
	if(keyboard_check(ord("S")) || keyboard_check(vk_down)){ yIn ++; }
	
	if(yIn == 0){ yDirHeld = 0; } else { yDirHeld = clamp(yDirHeld + 1, 0, 600); }
	
	clickUp = yIn == -1 && ( keyboard_check_pressed(ord("W")) || keyboard_check_pressed(vk_up) );
	clickDown = yIn == 1 && ( keyboard_check_pressed(ord("S")) || keyboard_check_pressed(vk_down) );
	
	
	
	

	clickEnter = keyboard_check_pressed(vk_enter);
	
	clickSpace = keyboard_check_pressed(vk_space);
	if(keyboard_check(vk_space)){
		holdSpaceTime ++
	} else {
		holdSpaceTime = 0;
	}
	
	clickLM = mouse_check_button_pressed(mb_left);
	clickRM = mouse_check_button_pressed(mb_right);
	
	holdLM = mouse_check_button(mb_left);
	holdRM = mouse_check_button(mb_right);
	
	clickNO = keyboard_check_pressed(vk_backspace) || keyboard_check_pressed(vk_escape);
	

	clickChar = "";
	if(keyboard_check_pressed(ord("A"))){ clickChar = "A"; }
	if(keyboard_check_pressed(ord("B"))){ clickChar = "B"; }
	if(keyboard_check_pressed(ord("C"))){ clickChar = "C"; }
	if(keyboard_check_pressed(ord("D"))){ clickChar = "D"; }
	if(keyboard_check_pressed(ord("E"))){ clickChar = "E"; }
	if(keyboard_check_pressed(ord("F"))){ clickChar = "F"; }
	if(keyboard_check_pressed(ord("G"))){ clickChar = "G"; }
	if(keyboard_check_pressed(ord("H"))){ clickChar = "H"; }
	if(keyboard_check_pressed(ord("I"))){ clickChar = "I"; }
	if(keyboard_check_pressed(ord("J"))){ clickChar = "J"; }
	if(keyboard_check_pressed(ord("K"))){ clickChar = "K"; }
	if(keyboard_check_pressed(ord("L"))){ clickChar = "L"; }
	if(keyboard_check_pressed(ord("M"))){ clickChar = "M"; }
	if(keyboard_check_pressed(ord("N"))){ clickChar = "N"; }
	if(keyboard_check_pressed(ord("O"))){ clickChar = "O"; }
	if(keyboard_check_pressed(ord("P"))){ clickChar = "P"; }
	if(keyboard_check_pressed(ord("Q"))){ clickChar = "Q"; }
	if(keyboard_check_pressed(ord("R"))){ clickChar = "R"; }
	if(keyboard_check_pressed(ord("S"))){ clickChar = "S"; }
	if(keyboard_check_pressed(ord("T"))){ clickChar = "T"; }
	if(keyboard_check_pressed(ord("U"))){ clickChar = "U"; }
	if(keyboard_check_pressed(ord("V"))){ clickChar = "V"; }
	if(keyboard_check_pressed(ord("W"))){ clickChar = "W"; }
	if(keyboard_check_pressed(ord("X"))){ clickChar = "X"; }
	if(keyboard_check_pressed(ord("Y"))){ clickChar = "Y"; }
	if(keyboard_check_pressed(ord("Z"))){ clickChar = "Z"; }
	
	if(keyboard_check_pressed(ord("1"))){ clickChar = "1"; }
	if(keyboard_check_pressed(ord("2"))){ clickChar = "2"; }
	if(keyboard_check_pressed(ord("3"))){ clickChar = "3"; }
	if(keyboard_check_pressed(ord("4"))){ clickChar = "4"; }
	if(keyboard_check_pressed(ord("5"))){ clickChar = "5"; }
	if(keyboard_check_pressed(ord("6"))){ clickChar = "6"; }
	if(keyboard_check_pressed(ord("7"))){ clickChar = "7"; }
	if(keyboard_check_pressed(ord("8"))){ clickChar = "8"; }
	if(keyboard_check_pressed(ord("9"))){ clickChar = "9"; }
	if(keyboard_check_pressed(ord("0"))){ clickChar = "0"; }
	
}