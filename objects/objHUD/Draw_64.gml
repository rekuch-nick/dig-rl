draw_self();
//draw_text(4, 4, "HP: " + string(pc.hp) + " (" + string(pc.hpMax) + ")");
//var hung = 100 - floor( (pc.food / pc.foodMax) * 100);
//draw_text(4, 26, "Hunger: " + string(hung) + "%");

for(var i=0; i<array_length(ww.messageLog); i++){

	var msg = ww.messageLog[i];
	draw_rectangle_color(0, 2 + (i * 22), string_width(msg) + 4, 26 + (i * 22), c_black, c_black, c_black, c_black, false);
	draw_text(4, 2 + (i * 22), msg);
}


//draw_text(240, 4, string(pc.xSpot) + ", " + string(pc.ySpot) );

//draw_text(4, ym, "Act");
draw_text(4, ym - 28, "HP: " + string(pc.hp) + " (" + string(pc.hpMax) + ")");
var hung = 100 - floor( (pc.food / pc.foodMax) * 100);
draw_text(4, ym, "Hunger: " + string(hung) + "%");




draw_text(384, ym - 28, "Deep: " + string(pc.stage) );
//draw_text(304, ym, "Score: " + string(pc.xp) );


draw_set_halign(fa_right);

//draw_text(xm, 4, "Bag");

draw_text(xm, ym - 28, "ATK: +" + string(getHitPlus(pc)) + ", " + string(getMeleeMin(pc)) + "-" + string(getMeleeMax(pc)) + "   AC: " + string(getArmorClass(pc)));
draw_text(xm, ym, "STR: " + string(pc.str) + "    AGI: " + string(pc.agi));


draw_set_halign(fa_left);