event_inherited();
playerGetInput();
nam = "You";
xMouse = 0; yMouse = 0;
image_xscale = 2; image_yscale = 2;
image_xscale = 4; image_yscale = 4;
depth = -7010;
showBlood = false;
aly = 1;

difficultyLevel = 0;

playerInit();
firstFrame = true;

stepsMax = 12;

wait = 0;
moveSpeed = 4;
moved = false;
justFinished = false;

xSpot = floor(x / 64); ySpot = floor(y / 64);
xFirst = xSpot; yFirst = ySpot;
xLast = xSpot; yLast = ySpot;

viewCD = 10;

seeAll = false;
fastRunner = 0;
autoPickup = true;

holdSpaceTime = 0;

rollingHitPlus = 0;

fCD = 2;
beenRestingFor = 0;


for(var i=1; i<21; i++){ 
	//bag[i] = getItem(randomItem()); 
	//bag[i] = getItem(randomRingType());
	//bag[i] = getItem("Blasting Potion");
	//bag[i] = itemEnchant( getItem(randomWeaponType()), irandom_range(1, 4), true); bag[6] = itemEnchantWepProp(bag[i], -1);
}

//bag[2] = getItem("Ring of Lightning");
//bag[3] = getItem("Ring of Lightning");
//bag[3] = getItem("Ring of Wandskill");
//bag[3] = getItem("Displacement Potion");
//bag[4] = getItem("Slow Potion");
//bag[5] = getItem("Cactus Scythe");

//bag[3] = itemEnchant( getItem("Ring of Protection"), 9, true);
//bag[4] = itemEnchant( getItem("Ring of Striking"), 9, true);
//bag[5] = itemEnchant( getItem("Venom Sword"), 9, true);
//bag[6] = itemEnchant( getItem("Leather Armor"), 1, true); bag[6] = itemEnchantArmorProp(bag[6], 3);
//bag[6] = itemEnchant( getItem("Sword"), 3, true); bag[6] = itemEnchantWepProp(bag[6], 3);
//bag[6] = itemEnchant( getItem("Chain Armor"), 3, true); bag[6] = itemEnchantArmorProp(bag[6], 4);
//bag[6] = itemEnchant( getItem("Leather Armor"), 3, true); bag[6] = itemEnchantArmorProp(bag[6], 4);
//bag[6] = itemEnchant( getItem("Scale Armor"), 3, true); bag[6] = itemEnchantArmorProp(bag[6], 5);
//bag[6] = itemEnchant( getItem("Axe"), 2, true); bag[6] = itemEnchantWepProp(bag[6], 1);


//bag[5] = getItem("Spark Wand");
//bag[3] = itemEnchant( getItem("Ring of Knives"), 8, true);
//bag[4] = itemEnchant( getItem("Ring of Knives"), 8, true);
//bag[4] = getItem("Ring of Rocks");
//bag[5] = getItem("Ring of Fire");
//bag[5] = getItem("Storm Staff");
//bag[7] = getItem("Ring of Lightning");


debugMode = false;
debugStats = false;


itemCursor = 0;
hotbarLeftmost = 0;
cleanBlocks = false;
