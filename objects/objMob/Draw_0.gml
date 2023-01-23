if(!ww.fmap[xSpot, ySpot].playerSeen){ return; }

drawCharacter();


var c1 = c_lime; var c2 = c_green;
if(hp / hpMax < .66){ c1 = c_yellow; c2 = c_orange; }
if(hp / hpMax < .33){ c1 = c_red; c2 = c_maroon; }
var xm = floor(64 * (hp / hpMax));
if(xm < 0){ xm = 0; }
draw_rectangle_color(x, y, x + xm, y + 4, c1, c2, c2, c1, false);



