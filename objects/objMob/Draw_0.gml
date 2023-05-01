//if(!ww.fmap[xSpot, ySpot].playerSeen){ return; }
if(!ww.canSee[xSpot, ySpot]){ return; }

if(characterHasProp(id, "Invisible") && id != pc){
	if(point_distance(xSpot, ySpot, pc.xSpot, pc.ySpot) > 2){ return; }
}

drawCharacter();


var c1 = c_lime; var c2 = c_green;
if(hp / hpMax < .66){ c1 = c_yellow; c2 = c_orange; }
if(hp / hpMax < .33){ c1 = c_red; c2 = c_maroon; }
var xm = floor(64 * (hp / hpMax));
if(xm < 0){ xm = 0; }
draw_rectangle_color(x, y, x + xm, y + 4, c1, c2, c2, c1, false);

var c = floor(current_time / 800) % 2 == 1 ? c_white : $E5E5E5;
draw_text_color(x, y+6, state, c, c, c, c, 1);

