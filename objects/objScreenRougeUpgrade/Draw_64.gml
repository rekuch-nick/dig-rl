draw_self();






draw_set_halign(fa_center);
draw_text(room_width / 2, 30, "On the floor here lies just a");
draw_text(room_width / 2, 60, "few flakes of the Holy Rouge.");
draw_text(room_width / 2, 90, "It's enough for a very minor wish:");


draw_set_halign(fa_left);


for(var i=1; i<6; i++){
	var s = up[i].nam;
	if(up[i].bonus > 0){ s += " +" + string(up[i].bonus); }
	var c = up[i].col;
	draw_text_color(100, 250 + (i-1) * 130, string(i) + ": " + s, c, c, c, c, random_range(.7, 1));
}