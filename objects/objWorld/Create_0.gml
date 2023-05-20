W = 68;
H = 130;

W = 17;
H = 68;

layerF = -100;
layerT = -1800;
layerB = -2000;
layerP = -5000;
layerM = -7000;
layerE = -8000;
layerS = -9000;

gsWep = 0;
gsArm = 1;
gsRing = 2;
gsRing2 = 3;

potHeal = 0;
potBomb = 1;
potIce = 2;
potPoison = 3;
potSTR = 4;
potAGI = 5;
potWarp = 6;
potSword = 7;
potDefense = 8;
potBlessWep = 9;
potBlessArm = 10;
potBlessRing = 11;
potRestore = 12;
potSlow = 13;
potDisplace = 14;
potBombSmall = 15;
potPure = 16;
potTrueStrike = 17;
potSparks = 18;
potBlink = 31;
potCrumble = 32;
potFireball = 33;
potFrost = 34;
potPox = 35;
potShock = 36;
potValor = 37;


rollWord = false;
seed = 1;


itemDeck = ds_list_create();

draw_set_font(fntPlain);

instance_create_depth(0, 0, layerS, objScreenTitle);
logClear();

logInit();


