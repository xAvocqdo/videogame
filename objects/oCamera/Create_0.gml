// CREDIT: https://forum.gamemaker.io/index.php?threads/smooth-panning-and-zooming-made-easy.16523/

//These following two values establish the default view scale as a reference point

view_enabled=true
view_visible[0]=true

//The camera's width and height.
view_wview=1920 //Your view width
view_hview=1080//Your view height

//The camera's position.
view_xview=0
view_yview=0

camera=camera_create_view(view_xview,view_yview,view_wview,view_yview)

view_set_camera(0,camera)

window_max_w = view_wview;
window_max_h = view_hview;

//Lower values means more speed
zoom_speed = 7;

window_set_size(view_wview,view_hview) //set the window size to the camera's size
surface_resize(application_surface,view_wview,view_hview) //set the surface size to the camera's size
display_set_gui_size(view_wview,view_hview) //set the gui size to the camera's size

var display_width = display_get_width()
var display_height = display_get_height()

var window_width = view_wview
var window_height = view_hview

camera_set_view_pos(camera,oGame.player_indicator.x,oGame.player_indicator.y)
camera_set_view_size(camera,view_wview,view_hview)
