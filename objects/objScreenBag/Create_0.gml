image_xscale = 4; image_yscale = 4;

subCursor = mouse_y % 64 >= 32 ? 1 : 0;
cursor = pc.yMouse * 2 + subCursor;