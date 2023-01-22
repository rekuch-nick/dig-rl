image_xscale = 4; image_yscale = 4;


subCursor = device_mouse_y_to_gui(0) % 64 >= 32 ? 1 : 0;
cursor = (floor(device_mouse_y_to_gui(0) / 64) * 2) + subCursor;

//device_mouse_x_to_gui(0);
device_mouse_y_to_gui(0);

//ym = camera_get_view_height(view_camera[0])