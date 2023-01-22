function mobsAttack(){
	
	with(objMob){
		var dis = point_distance(xSpot, ySpot, pc.xSpot, pc.ySpot);
		if(dis == 1 || (dis == 2 && xSpot != pc.xSpot && ySpot != pc.ySpot) ){
			characterShiftTowards(id, pc.xSpot, pc.ySpot);
			combat(id, pc);
		}
	}
	
	

}