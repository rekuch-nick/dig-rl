function itemEnchantArmorProp(itm, fix){
	
	var w = noone;
	if(array_length(itm.props) > 0){
		w = itm.props[0];
	}
	
	
	var r = irandom_range(1, 6);
	//r = 6; /////
	if(fix != -1){ r = fix; }
	var t = "Mage"; var p =  "Cast Damage Up";
	if(r == 2){ t = "Yeti"; p = "Ice Immune"; }
	if(r == 3){ 
		t = "Iron-Wood"; p = "Not Metal"; 
		if(itm.nam == "Leather Armor"){
			t = "Druid"; p = "Thorns"; 
		}
	}
	if(r == 4){ t = "Shadow"; p = "Shadow"; }
	if(r == 5){ t = "Glow"; p = "X-Ray"; }
	if(r == 6){ t = "Swordmaster"; p = "Perfect Lunges"; }
	
	
	if(itm.nam == "Leather Armor"){
		itm.nam = t + " Leather";
	} else if(itm.nam == "Scale Armor"){
		itm.nam = t + " Scale";
	} else if(itm.nam == "Chain Armor"){
		itm.nam = t + " Chain";
	} else if(itm.nam == "Banded Armor"){
		itm.nam = t + " Bands";
	} else if(itm.nam == "Splint Armor"){
		itm.nam = t + " Splint";
	} else if(itm.nam == "Plate Armor"){
		itm.nam = t + " Plate";
	}
	
	
	if(w == noone){
		itm.props = [p];
	} else {
		itm.props = [w, p];
	}
	
	return itm;
}