if(instance_number(objScreen) > 0){ return; }
x = pc.xMouse * 64;
y = pc.yMouse * 64;
xx = pc.xMouse;
yy = pc.yMouse;

txt = "";
if(ww.fmap[xx, yy].playerSeen){
	if(ww.bmap[xx, yy] == noone){
		txt = "GO";
	} else {
		if(tileNextToSpace(xx, yy) && tileDigCost(xx, yy) > 0){ 
			txt = "DIG"; }
	}
	
	if(ww.mmap[xx, yy] != noone){
		txt = "HIT";
		if(ww.mmap[xx, yy] == pc){
			txt = "";
		}
	}
	
} else {
	txt = "";
}