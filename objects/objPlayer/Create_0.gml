event_inherited();
nam = "You";
xMouse = 0; yMouse = 0;
image_xscale = 2; image_yscale = 2;
depth = -7010;

playerInit();


wait = 0;
moveSpeed = 4;
moved = false;
justFinished = false;

xSpot = floor(x / 64); ySpot = floor(y / 64);
xFirst = xSpot; 
yFirst = ySpot;

viewCD = 10;


autoPickup = true;





//bag[2] = getItem("Spear");
//bag[3] = getItem("Axe");

bag[3] = itemEnchant( getItem("Ring of Lightning"), 4);

//bag[4] = getItem("Ring of Protection");
//bag[5] = getItem("Leather Armor");



