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

holdSpaceTime = 0;



//bag[2] = getItem("Spear");
//bag[3] = getItem("Axe");
//bag[4] = getItem("Maul");

//bag[3] = itemEnchant( getItem("Ring of Protection"), 9);
//bag[4] = itemEnchant( getItem("Ring of Striking"), 9);
//bag[5] = itemEnchant( getItem("Venom Sword"), 9);
//bag[6] = itemEnchant( getItem("Leather Armor"), 1); bag[6] = itemEnchantArmorProp(bag[6], 3);

//bag[4] = getItem("Ring of Protection");





