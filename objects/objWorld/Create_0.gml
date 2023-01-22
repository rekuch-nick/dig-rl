W = 68;
H = 130;

W = 17;
H = 68;

layerF = -100;
layerB = -2000;
layerP = -5000;
layerM = -7000;
layerS = -9000;

gsWep = 0;
gsArm = 1;
gsRing = 2;
gsRing2 = 3;


rollWord = false;
seed = 1;

draw_set_font(fntPlain);

instance_create_depth(0, 0, layerS, objScreenTitle);
logClear();
logMessage("Welcome, brave rogue!");
logMessage("You seek the holy rouge, an enchanted makeup said to");
logMessage("grant any wish.");
logMessage("Beware, it is garded by monsters and trap, and worst");
logMessage("of all, you are not the only rogue who seeks it.");

