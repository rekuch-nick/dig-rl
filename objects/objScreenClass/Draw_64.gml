draw_self();






draw_set_halign(fa_center);
draw_text(room_width / 2, 10, "Your bravery cannot be questioned,");
draw_text(room_width / 2, 40, "it's time you had power to match.");
draw_text(room_width / 2, 70, "Choose a blessing");


draw_set_halign(fa_left);


for(var i=1; i<7; i++){
	var s = perk[i];
	var ss = perkDesc[i];
	var c = col[i];
	var b = 120 + (i-1) * 120;
	
	draw_text_ext_transformed_color(100, b, string(i) + ": " + s, 20, room_width - 100, 2, 2, 0, c, c, c, c, random_range(.8, 1));
	
	draw_text_ext_transformed_color(100, b+40, ss, 20, room_width - 200, 1, 1, 0, c, c, c, c, random_range(.8, 1));
	
	//draw_text_color(100, 250 + (i-1) * 130, string(i) + ": " + s, c, c, c, c, random_range(.7, 1));
}