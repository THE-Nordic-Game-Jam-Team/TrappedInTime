// Snap the camera to center on the player at room start so it does not have to move slowly
var cam = view_get_camera(0)
camera_set_view_pos(cam, x - camera_get_view_width(cam)/2, y - camera_get_view_height(cam)/2)