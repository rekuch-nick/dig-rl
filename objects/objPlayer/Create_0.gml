event_inherited();
nam = "You";
xMouse = 0; yMouse = 0;
image_xscale = 2; image_yscale = 2;
depth = -7010;

playerInit();


stepsMax = 12;

wait = 0;
moveSpeed = 4;
moved = false;
justFinished = false;

xSpot = floor(x / 64); ySpot = floor(y / 64);
xFirst = xSpot; 
yFirst = ySpot;

viewCD = 10;

seeAll = false;

autoPickup = true;

holdSpaceTime = 0;

rollingHitPlus = 0;

fCD = 2;
beenRestingFor = 0;

//bag[2] = getItem("Spear");
//bag[3] = getItem("Displacement Potion");
//bag[4] = getItem("Slow Potion");
//bag[5] = getItem("Restore Potion");

//bag[3] = itemEnchant( getItem("Ring of Protection"), 9, true);
//bag[4] = itemEnchant( getItem("Ring of Striking"), 9, true);
//bag[5] = itemEnchant( getItem("Venom Sword"), 9, true);
//bag[6] = itemEnchant( getItem("Leather Armor"), 1, true); bag[6] = itemEnchantArmorProp(bag[6], 3);
//bag[6] = itemEnchant( getItem("Sword"), 1, true); bag[6] = itemEnchantWepProp(bag[6], 1);

//bag[4] = getItem("Ring of Protection");

debugMode = false;
digPow = 1;

itemCursor = 0;