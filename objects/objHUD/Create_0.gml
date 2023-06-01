depth = -8999;
image_xscale = 4;
image_yscale = 4;

ym = camera_get_view_height(view_camera[0]) - string_height("A") - 4;

xm = camera_get_view_width(view_camera[0]) - 4;

itemTooltip = -1;



//draw_sprite_ext(imgBagBar, 0, 64 * 8, 64, 4, 4, 0, c_white, 1);
instance_create_depth(64*8, 64, depth, objBagBar);

perkDesc = -1;