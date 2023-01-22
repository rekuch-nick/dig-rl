if(!visible){ return; }
draw_self();

draw_rectangle_color(x + 64, cursor * 32, x + (64 * 9), cursor * 32 + 32, c_navy, c_navy, c_navy, c_navy, false);


for(var i=0; i<26; i++){
	var equiped = false;
	var c = c_grey;
	var s = "[Empty Slot]";
	if(pc.bag[i] != noone){
		s = pc.bag[i].nam;
		if(pc.bag[i].bonus > 0){ s = s + " +" + string(pc.bag[i].bonus); }
		c = pc.bag[i].col;
		
		for(var j=0; j<4; j++){
			if(pc.bag[i] == pc.gear[j]){ equiped = true; }
		}
		
	}
	
	if(equiped){
		s = "@ " + s;
	} else {
		s = "  " + s;
	}
	
	
	draw_text_color(x + 72, i * 32 + 10, s, c, c, c, c, 1);
}

//item card
if(pc.bag[cursor] != noone){
	draw_rectangle_color(10 * 64, 1 * 64, 17 * 64, 11 * 64, $251433, $251433, $251433, $251433, false);
	var s = pc.bag[cursor].nam;
	if(pc.bag[cursor].bonus > 0){ s = s + " +" + string(pc.bag[cursor].bonus); }
	var c = pc.bag[cursor].col;
	draw_text_color(640 + 10, 64 + 10, s, c, c, c, c, 1);
	
	if(itemIsEquipped(pc.bag[cursor]) != -1){
		draw_text_color(640 + 10, 64 + 38, "(worn)", c_grey, c_grey, c_grey, c_grey, 1);
	}
	
	
	
	
	
	s = "E-equip   U-use";
	draw_text_color(640 + 30, 64 * 10 + 10, s, c_grey, c_grey, c_grey, c_grey, 1);
	s = "T-throw   F-drop"
	draw_text_color(640 + 30, 64 * 10 + 38, s, c_grey, c_grey, c_grey, c_grey, 1);
}

