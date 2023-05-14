draw_self();

draw_text_color(40, 776, "Seed: " + string(ww.seed), c_yellow, c_yellow, c_yellow, c_yellow, 1);
draw_text_color(40, 800, "(Hold R to randomize)", c_grey, c_yellow, c_grey, c_yellow, 1);

draw_text_color(30, 280, "One Rogue's Quest for the Holy Rouge", c_black, c_black, c_black, c_black, 1);
draw_set_halign(fa_center);
draw_text_color(room_width / 2, 380, "Enter: Start Game", c_white, c_white, c_white, c_white, 1);
draw_text_color(room_width / 2, 420, "F1: Instructions", c_white, c_white, c_white, c_white, 1);


draw_set_halign(fa_left);



draw_sprite_ext(charBig[charCursor], 0, 1010, 350, -4, 4, 0, c_white, random_range(.7, .8));
draw_text_transformed(872, 400, "<  >", 2, 2, 0);
draw_set_halign(fa_center);
draw_text(942, 500, charPower[charCursor]);


draw_set_halign(fa_right);
draw_text_color(room_width - 10, 10, "version " + string(version), c_grey, c_grey, c_grey, c_grey, 1);


draw_set_halign(fa_left);