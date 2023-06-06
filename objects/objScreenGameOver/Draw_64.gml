draw_self();

draw_set_alpha(image_alpha);

draw_set_halign(fa_center);
draw_text_transformed(room_width/2, 70, "Game Over", 3, 3, 0);

draw_text((room_width/2), 160, "Seed " + string(ww.seed));

draw_text((room_width/4) * 1, 230, "Reached stage " + stageDisplay() );
draw_text((room_width/4) * 3, 230, "Beat " + string(pc.dataRogueKilled) + " Rogues");

draw_text((room_width/4) * 1, 310, "Made " + string(pc.dataAttacks) + " attacks");
draw_text((room_width/4) * 3, 310, "Landed " + string(pc.dataHits) + " attacks");

draw_text((room_width/4) * 1, 390, "Killed " + string(pc.dataKills) + " foes");
draw_text((room_width/4) * 3, 390, "Eluded " + string(pc.dataLeftBehind) + " foes");

draw_text((room_width/4) * 1, 470, "Dug " + string(pc.dataDigs) + " tiles");
draw_text((room_width/4) * 3, 470, "Ate " + string(pc.dataFoodEaten) + " Food");

draw_set_alpha(1);
if(image_alpha >= 1){
	draw_text_transformed(room_width/2, 740, "Press [Enter]", 1, 1, 0);
}