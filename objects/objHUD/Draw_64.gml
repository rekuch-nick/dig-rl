draw_self();
//draw_text(4, 4, "HP: " + string(pc.hp) + " (" + string(pc.hpMax) + ")");
//var hung = 100 - floor( (pc.food / pc.foodMax) * 100);
//draw_text(4, 26, "Hunger: " + string(hung) + "%");




//draw_text(240, 4, string(pc.xSpot) + ", " + string(pc.ySpot) );

//draw_text(4, ym, "Act");
//	draw_text(4, ym - 28, "HP: " + string(pc.hp) + " (" + string(pc.hpMax) + ")");
//	var hung = 100 - floor( (pc.food / pc.foodMax) * 100);
//	var c = c_white;
//	if(hung >= 99){ c = floor(current_time / 400) % 2 == 1 ? c_red: c_white; }
//	draw_text_color(4, ym, "Hunger: " + string(hung) + "%", c, c, c, c, 1);

if(itemTooltip != -1){ 
	//var c = itemTextColor(pc.bag[pc.itemCursor]);
	var c = itemTextColor(itemTooltip);
	draw_text_color(4, 2, itemTextName2Line(itemTooltip), c, c, c, c, 1);
} else {
	draw_text(4, 6, "HP: " + string(pc.hp) + " (" + string(pc.hpMax) + ")");
	var hung = 100 - floor( (pc.food / pc.foodMax) * 100);
	//var hung = 100 - ( (pc.food / pc.foodMax) * 100); //////
	var c = c_white;
	if(hung >= 99){ c = floor(current_time / 400) % 2 == 1 ? c_red: c_white; }
	draw_text_color(4, 32, "Hunger: " + string(hung) + "%", c, c, c, c, 1);
}



draw_text(284, ym - 28, "Zone: " + string(pc.stage) );
draw_text(284, ym, "F1: help");
//draw_text(304, ym, "Score: " + string(pc.xp) );


draw_set_halign(fa_right);

//draw_text(xm, 4, "Bag");

draw_text(xm, ym - 28, "ATK: +" + string(getHitPlus(pc)) + ", " + string(getMeleeMin(pc)) + "-" + string(getMeleeMax(pc)) + "  DEF: " + string(getArmorClass(pc)));
draw_text(xm, ym, "STR: " + string(pc.str) + " (" + string(pc.strMax) + ")    AGI: " + string(pc.agi) + " (" + string(pc.agiMax) + ")");


draw_set_halign(fa_left);

var iStart = pc.hotbarLeftmost;
for(var i=0; i<9; i++){
	if(pc.bag[i+iStart] != noone){
		var a = (8 + i) * 64;
		var b = 0 * 64;
		
		drawItemIcon(a, b, pc.bag[i+iStart]);
		if(pc.itemCursor == i+iStart){
			draw_set_alpha(.5);
			draw_rectangle_color(a+2, b+2, a+62, b+62, c_yellow, c_yellow, c_yellow, c_yellow, true);
			draw_rectangle_color(a+3, b+3, a+61, b+61, c_yellow, c_yellow, c_yellow, c_yellow, true);
			draw_rectangle_color(a+4, b+4, a+60, b+60, c_yellow, c_yellow, c_yellow, c_yellow, true);
			draw_rectangle_color(a+5, b+5, a+59, b+59, c_yellow, c_yellow, c_yellow, c_yellow, true);
			draw_set_alpha(1);
		}
		
		/*
		
		//draw_rectangle_color(a+2, b+2, a+62, b+62, c_black, c_black, c_black, c_black, false);
		var c = pc.bag[i+iStart].col;
		var typ = pc.bag[i+iStart].kind;
		if(typ == "Weapon" || typ == "Armor" || typ == "Ring"){
			if(pc.bag[i+iStart].bonus > 0){
				draw_rectangle_color(a+6, b+6, a+58, b+58, c, c, c, c, true);
				draw_rectangle_color(a+7, b+7, a+57, b+57, c, c, c, c, true);
				draw_rectangle_color(a+8, b+8, a+56, b+56, c, c, c, c, true);
				draw_rectangle_color(a+9, b+9, a+55, b+55, c, c, c, c, true);
				//draw_rectangle_color(a+10, b+10, a+54, b+54, c_black, c_black, c_black, c_black, false);
			}
		}
		
		
		if(pc.itemCursor == i+iStart){
			draw_set_alpha(.5);
			draw_rectangle_color(a+2, b+2, a+62, b+62, c_yellow, c_yellow, c_yellow, c_yellow, false);
			draw_set_alpha(1);
		}
		
		
		var spt = pc.bag[i+iStart].img;
		if(pc.bag[i+iStart].kind == "Potion"){
			if(!pc.potionKnown[pc.bag[i+iStart].potID]){
				spt = imgPotionUnknown;
			}
		}
		
		draw_sprite_stretched(spt, 0, a+4, b+4, 56, 56);
		//draw_text_color(a+4, b+4, string(i + 1), c_dkgray, c_dkgray, c_dkgray, c_dkgray, 1);
		if(pc.bag[i+iStart].kind == "Wand" || pc.bag[i+iStart].charges > 1){
			draw_text(a+4, b+40, string(pc.bag[i+iStart].charges));
		}
		
		
		*/
		
	}
}

if(pc.gear[ww.gsWep] != noone){ drawItemIcon(0, 12 * 64, pc.gear[ww.gsWep]); }
if(pc.gear[ww.gsArm] != noone){ drawItemIcon(64, 12 * 64, pc.gear[ww.gsArm]); }
if(pc.gear[ww.gsRing] != noone){ drawItemIcon(128, 12 * 64, pc.gear[ww.gsRing]); }
if(pc.gear[ww.gsRing2] != noone){ drawItemIcon(192, 12 * 64, pc.gear[ww.gsRing2]); }



for(var i=0; i<array_length(ww.messageLog); i++){

	var msg = ww.messageLog[i];
	var mm = 3;
	draw_rectangle_color(0, 2 + ((i+mm) * 22), string_width(msg) + 4, 26 + ((i+mm) * 22), c_black, c_black, c_black, c_black, false);
	draw_text(4, 2 + ((i+mm) * 22), msg);
}

//perk display
var slot = 0;
if(itemTooltip == -1){
	for(var i=1; i<9; i++){
	
		var frame = i;
		var a = 288 + (slot * 32);
		var b = 0;
		if(slot >= 7){ b += 32; a -= (32 * 7); }
		
	
		if(pc.perk[i]){
			draw_sprite_ext(imgPerkIcon, frame, a, b, 4, 4, 0, c_white, 1);
			slot ++;
		}
	
	
	}
}

if(perkDesc != -1){
	draw_rectangle_color(0, 64 * 12, room_width, 64 * 13, c_blue, c_blue, c_blue, c_blue, false);
}

