image_xscale = 4; image_yscale = 4;



random_set_seed(ww.seed + (pc.xSpot * 10) + (pc.ySpot) + (pc.stage * 100));


do {
	up[1] = randomPotionType();
	up[2] = randomRarePotionType();
	up[3] = "STR Potion";
	up[4] = "AGI Potion";
	up[5] = "Food";
} until (
	up[1] != up[2] && up[2] != up[3] && up[1] != up[3]
);

up[1] = getItem(up[1]);
up[2] = getItem(up[2]);
up[3] = getItem(up[3]);
up[4] = getItem(up[4]);
up[5] = getItem(up[5]);
