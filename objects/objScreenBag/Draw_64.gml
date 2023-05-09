if(!visible){ return; }
draw_self();

draw_rectangle_color(x + 64, cursor * 32, x + (64 * 9), cursor * 32 + 32, c_navy, c_navy, c_navy, c_navy, false);


for(var i=0; i<26; i++){
	var c = itemTextColor(pc.bag[i]);
	draw_text_color(x + 72, i * 32 + 10, itemTextName1LineAt(pc.bag[i]), c, c, c, c, 1);
}

//item card
if(pc.bag[cursor] != noone){
	var itm = pc.bag[cursor];
	draw_rectangle_color(10 * 64, 1 * 64, 17 * 64, 11 * 64, $251433, $251433, $251433, $251433, false);
	var s = pc.bag[cursor].nam;
	if(pc.bag[cursor].bonus != 0){ s = s + " +" + string(pc.bag[cursor].bonus); }
	var c = pc.bag[cursor].col;
	
	if(pc.bag[cursor].kind == "Potion" && pc.bag[cursor].potID != -1 && !pc.potionKnown[pc.bag[cursor].potID]){
		s = "Unidentified Potion"; 
		c = c_white;
	}
	
	draw_text_color(640 + 10, 64 + 10, s, c, c, c, c, 1);
	
	if(itemIsEquipped(pc.bag[cursor]) != -1){
		draw_text_color(640 + 10, 64 + 38, "(worn)", c_grey, c_grey, c_grey, c_grey, 1);
	}
	
	if(itm.kind == "Armor"){
		var def = itm.armor;
		var chk = itm.armorCheck;
		draw_text(650, 130, "Armor: " + string(def) + "   Weight: " + string(chk));
		draw_text_color(650, 156, "(Weight > STR reduces", c_grey, c_grey, c_grey, c_grey, 1);
		draw_text_color(650, 182, "AGI dodge bonus)", c_grey, c_grey, c_grey, c_grey, 1);
	}
	
	if(itm.kind == "Weapon"){
		var hit = itm.bonus;
		var dmin = 1 + itm.bonus;
		var dmax = itm.damRange + itm.bonus;
		draw_text(650, 130, "Hit: +" + string(hit) + " Dam: " + string(dmin) + "-" + string(dmax));
	}
	
	for(var i=0; i<array_length(itm.props); i++){
		draw_text(660, 208 + (i * 26), itm.props[i]);
	}
	
	
	
	
	/*
	s = "E-equip   U/Q-use";
	draw_text_color(640 + 30, 64 * 10 + 10, s, c_grey, c_grey, c_grey, c_grey, 1);
	s = "T/Z-throw   F-drop"
	draw_text_color(640 + 30, 64 * 10 + 38, s, c_grey, c_grey, c_grey, c_grey, 1);
	*/
}

