/// @description viewport follow player

#region MOVE THE VIEW
halfViewWidth = camera_get_view_width(view_camera[0]) / 2;
halfViewHeight = camera_get_view_height(view_camera[0]) / 2;

camera_set_view_pos(view_camera[0], (x - halfViewWidth)+25, y - halfViewHeight);

//camera_set_view_size(view_camera[0], 2, 2)

#endregion