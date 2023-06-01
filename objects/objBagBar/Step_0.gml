if(instance_number(objScreen > 0)){ return; }
n = pc.hotbarLeftmost * 26.5;

if(pc.clickLM){
	underMouse = mouse_x >= x && mouse_x < x + sprite_width && device_mouse_y_to_gui(0) >= y && device_mouse_y_to_gui(0) < y + sprite_height;
	if(underMouse){
		
		if(mouse_x > x + n + (59 * 2)){
			pc.hotbarLeftmost ++;
			if(pc.hotbarLeftmost > 13){ pc.hotbarLeftmost = 13; }
		} else {
			pc.hotbarLeftmost --;
			if(pc.hotbarLeftmost < 0){ pc.hotbarLeftmost = 0; }
		}
		
	
	}
}



if(mouse_x >= x && mouse_x < x + sprite_width && device_mouse_y_to_gui(0) < y){
	if(mouse_wheel_down()){
		pc.hotbarLeftmost ++;
		if(pc.hotbarLeftmost > 13){ pc.hotbarLeftmost = 13; }
	}
	
	if(mouse_wheel_up()){
		pc.hotbarLeftmost --;
		if(pc.hotbarLeftmost < 0){ pc.hotbarLeftmost = 0; }
	}
}