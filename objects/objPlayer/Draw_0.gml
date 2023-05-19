var c1 = c_lime; var c2 = c_green;
if(hp / hpMax < .66){ c1 = c_yellow; c2 = c_orange; }
if(hp / hpMax < .33){ c1 = c_red; c2 = c_maroon; }
var xm = floor(64 * (hp / hpMax));
if(xm < 0){ xm = 0; }
draw_rectangle_color(x, y, x + xm, y + 4, c1, c2, c2, c1, false);

var xm = floor(64 * (poison / hpMax));
if(xm < 0){ xm = 0; }
if(xm > 0){
	draw_rectangle_color(x, y-5, x + xm, y-1, c_green, c_green, c_purple, c_purple, false);
}



drawCharacter();

//draw_text(x, y, getShadow(pc));
//draw_rectangle(xContact * 64, yContact * 64, xContact * 64 + 64, yContact * 64 + 64, false);
	
//draw_text(x, y, itemCursor)draw_text(x, y+30, hotbarLeftmost)

