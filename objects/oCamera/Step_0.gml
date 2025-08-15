//panning
//when the mouse button is pressed, it captures the values of the mouse's X and Y position.
//Because the view is going to be moved, we want the position of the mouse in relation to
// the window, not the view.
if mouse_check_button_pressed(mb_left) || keyboard_check_pressed(vk_control)
{
	mouse_xstart = window_views_mouse_get_x();
	mouse_ystart = window_views_mouse_get_y();
}

//so long as the mouse button is held down, the X and Y coordinate of the view will change to
// be the difference between the mouse's current position and the position it was when we started.
if mouse_check_button(mb_left) || keyboard_check(vk_control)
{
	view_xview += mouse_xstart - window_views_mouse_get_x();
	view_yview += mouse_ystart - window_views_mouse_get_y();
}



//zooming
if mouse_wheel_up()
{
	//establish values of the view's current scale for reference
	prev_view_x = view_wview;
	prev_view_y = view_hview;
	//increase the view scale based on our zoom_speed variable. Dividing the value based on
	//the original X and Y scales of the view ensure that the aspect ratio remains consistent.
	view_hview -= window_max_h/zoom_speed;
	view_wview -= window_max_w/zoom_speed;
	//we now want the view to zoom in towards the center of the view as opposed to the top
	//left corner as it would natural want to do.
	view_xview += abs(view_wview-prev_view_x)/2;
	view_yview += abs(view_hview-prev_view_y)/2;
}

//and just repeat the same code for zooming out only reverse the math.
if mouse_wheel_down()
{
	prev_view_x = view_wview;
	prev_view_y = view_hview;
	view_hview += window_max_h/zoom_speed;
	view_wview += window_max_w/zoom_speed;
	view_xview -= abs(view_wview-prev_view_x)/2;
	view_yview -= abs(view_hview-prev_view_y)/2;
}

camera_set_view_pos(camera,view_xview,view_yview)
camera_set_view_size(camera,view_wview,view_hview)