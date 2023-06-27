function playerInit(){
	
	ds_list_destroy(ww.itemDeck);
	ww.itemDeck = ds_list_create();
	
	pc.itemCursor = 0;
	pc.hotbarLeftmost = 0;
	
	pc.x = 320;
	pc.y = 320;
	pc.xSpot = 5;
	pc.ySpot = 5;
	

	pc.hpRegen = 1;

	pc.str = 10;
	pc.agi = 10;
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
	
	pc.wandSkill = 0;
	
	pc.digPow = 1;
	
	pc.xp = 0;
	pc.wands = 0;
	
	pc.finesse = false;
	pc.knifeFind = false;
	
	pc.fastRunner = 0;
	
	pc.stage = 0;
	pc.hp = 200;
	pc.hpMax = 200;
	
	
	for(var i=0; i<26; i++){
		pc.gear[i] = noone;
		pc.bag[i] = noone;
		pc.perk[i] = false;
	}
	pc.bag[0] = getItem("Gladius"); pc.gear[ww.gsWep] = pc.bag[0];
	//pc.bag[1] = getItem("Scale Armor"); pc.gear[ww.gsArm] = pc.bag[1];
	pc.bag[1] = getItem("Leather Armor"); pc.gear[ww.gsArm] = pc.bag[1];
	pc.bag[2] = getItem("Food");
	
	
	
	manageBag();
	
	
	
	for(var i=0; i<26; i++){ pc.potionKnown[i] = false; }
	
	
	
	pc.dataAttacks = 0;
	pc.dataHits = 0;
	pc.dataDigs = 0;
	pc.dataKills = 0;
	pc.dataFoodEaten = 0;
	pc.dataRogueKilled = 0;
	pc.dataLeftBehind = 0;
	
	
	
	
	pc.frozen = 0;
	pc.poison = 0;
	pc.tangle = 0;
	pc.displace = 0;
	pc.slow = 0;
	pc.swordmastery = 0;
	pc.defense = 0;
	pc.web = 0;
	pc.blinkNext = 0;
	pc.burning = 0;
	pc.sick = 0;
	pc.slip = 0;
	pc.webArmor = 0;
	pc.trueStrike = 0;
	pc.itemFind = 0;
	pc.healing = 0;
	pc.fly = 0;
	
	pc.difficultyLevel = 0;
	pc.pastRouge = false;
}