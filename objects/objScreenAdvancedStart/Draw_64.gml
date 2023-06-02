draw_self();
draw_text_transformed(20, 20, "[" + string(ww.skillpoints) + "]", 2, 2, 0);

draw_set_alpha(.5);
var x1 = 800 - string_length(string(seedDig)) * 20;
draw_rectangle_color(x1, 40, x1 + 20, 60, c_yellow, c_yellow, c_yellow, c_yellow, false);
draw_set_alpha(1);


draw_text(650, 20, "< Seed >");
draw_set_halign(fa_right);
draw_text(800, 40, ww.seed);
draw_set_halign(fa_left);

draw_text(20, 120, "Character:");
draw_text(20, 190, "Weapon:");
draw_text(20, 230, "Armor:");


draw_text(20, 280, "Perks:");


draw_text(20, 540, "Supplies:");

draw_text(20, 640, "Stat Potions:");


draw_text(20, 710, "Bless Potions:");

