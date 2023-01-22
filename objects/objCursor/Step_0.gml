if(instance_number(objScreen) > 0 && instance_number(objScreenThrow) < 1){ return; }
if(pc.wait > 0){ return; }
x = pc.xMouse * 64;
y = pc.yMouse * 64;
xx = pc.xMouse;
yy = pc.yMouse;

txt = "";


if(instance_number(objScreenThrow) > 0){
	
	line = getLine(pc.xSpot, pc.ySpot, xx, yy);
	
	for(var i=0; i<array_length(line); i++){
		if(ww.bmap[line[i].a, line[i].b] != noone){
			line2 = [];
			for(var j=0; j<i; j++){
				line2[j] = line[j];
			}
			line = line2;
			break;
		}
	}
	
	return;
}




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