//if(ww.fmap[xSpot, ySpot].playerSeen){ draw_self(); }
if(dontDrawByY()){ return; }
if(ww.canSee[xSpot, ySpot]){ draw_self(); }