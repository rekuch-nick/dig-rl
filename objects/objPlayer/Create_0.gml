event_inherited();
nam = "You";
xMouse = 0; yMouse = 0;
image_xscale = 2; image_yscale = 2;

depth = -7010;
stage = 0;

moveSpeed = 4;
moved = false;
justFinished = false;

xSpot = floor(x / 64); ySpot = floor(y / 64);
xFirst = xSpot; 
yFirst = ySpot;

viewCD = 10;


autoPickup = true;


hp = 100;
hpMax = 100;

for(var i=0; i<26; i++){
	bag[i] = noone;
}
bag[0] = getItem("Sword"); gear[ww.gsWep] = bag[0];
bag[1] = getItem("Scale Armor"); gear[ww.gsArm] = bag[1];
bag[2] = getItem("Ring of Protection");
bag[3] = getItem("Ring of Protection");
bag[4] = getItem("Ring of Protection");
bag[5] = getItem("Leather Armor");