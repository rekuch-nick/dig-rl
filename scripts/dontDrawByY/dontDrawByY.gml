function dontDrawByY(){
	if(y < camera_get_view_y(view_camera[0]) - 63){ return true; }
	if(y > camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0])){ return true; }
	
	return false;
}