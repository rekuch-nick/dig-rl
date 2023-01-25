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
		var nMax = ceil(pc.stage / 3);
		var n = irandom_range(1, nMax);
		if(up[i].kind == "Ring"){ n --; }
		up[i] = itemEnchant(up[i], n);
		if(up[i].kind == "Weapon" && ( choose(true, false) || n >= 3 ) ){
			up[i] = itemEnchantWepProp(up[i], -1);
		}
		if(up[i].kind == "Armor" && ( choose(true, false) || n >= 2 ) ){
			up[i] = itemEnchantArmorProp(up[i], -1);
		}
	}
}