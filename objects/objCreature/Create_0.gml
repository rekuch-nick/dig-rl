
face = 1;

hp = 10;
hpMax = 10;

hpRegen = 1;

str = 10; //+dmg, 
		  //wear armor without penalty
agi = 10; //+evd (reduced by armor penalty) 
	      //+hit

strMax = 10; agiMax = 10;

ac = 10; // bast / monster def stat
aim = 0; // monster +hit stat
damRange = 4; // damagerange when not weirlding a weapon only
splRange = 4;

food = 2000;
foodMax = 2000;

for(var i=0; i<26; i++){ gear[i] = noone; }

stepsMax = 6;
state = "z";
xPlayerAt = 0;
yPlayerAt = 0;

shadow = 0;
attackIsCleave = false;
attackIsLunge = false;
frozen = 0;
poison = 0;
tangle = 0;
displace = 0;
slow = 0;
swordmastery = 0;
defense = 0;
web = 0;

props = [];

moveType = "chase";
lookType = "wander";

willStepOnTrap = true;
rollingHitPlus = 0;