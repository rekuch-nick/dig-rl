function playerInit(){
	
	pc.x = 320;
	pc.y = 320;
	pc.xSpot = 5;
	pc.ySpot = 5;
	

	pc.hpRegen = 1;

	pc.str = 11;
	pc.agi = 11;
	pc.strMax = pc.str;
	pc.agiMax = pc.agi;

	pc.ac = 10;
	pc.aim = 0;
	pc.damRange = 4;
	pc.splRange = 4;

	pc.food = 2000;
	pc.foodMax = 2000;

	pc.props = [];

	pc.stepsMax = 12; //


	pc.frozen = 0;
	pc.poison = 0;
	pc.swordmastery = 0;
	pc.defense = 0;
	
	
	pc.shadow = 0;
	
	
	
	pc.xp = 0;
	
	
	
	pc.stage = 0;
	pc.hp = 200;
	pc.hpMax = 200;
	
	
	for(var i=0; i<26; i++){
		pc.gear[i] = noone;
		pc.bag[i] = noone;
	}
	pc.bag[0] = getItem("Gladius"); pc.gear[ww.gsWep] = pc.bag[0];
	//pc.bag[1] = getItem("Scale Armor"); pc.gear[ww.gsArm] = pc.bag[1];
	pc.bag[1] = getItem("Leather Armor"); pc.gear[ww.gsArm] = pc.bag[1];
	pc.bag[2] = getItem("Food");
	
	
	
	for(var i=0; i<26; i++){ pc.potionKnown[i] = false; }
}