image_xscale = 4; image_yscale = 4;



random_set_seed(ww.seed + (pc.xSpot * 10) + (pc.ySpot) + (pc.stage * 100));


do {
	up[1] = randomGoodItem();
	up[2] = randomGoodItem();
	up[3] = randomGoodItem();
} until (
	up[1] != up[2] && up[2] != up[3] && up[1] != up[3]
);

up[1] = getItem(up[1]);
up[2] = getItem(up[2]);
up[3] = getItem(up[3]);

for(var i=1; i<4; i++){
	if(up[i].kind == "Weapon" || up[i].kind == "Armor" || up[i].kind == "Ring"){
		var n = 2;
		if(up[i].kind != "Ring"){ n = 3; }
		up[i] = itemEnchant(up[i], n);
	}
}