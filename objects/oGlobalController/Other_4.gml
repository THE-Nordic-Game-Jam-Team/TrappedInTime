camera = view_get_camera(0)
viewport = room_get_viewport(room, 0)
viewport_x = viewport[1]
viewport_y = viewport[2]
viewport_width = viewport[3]
viewport_height = viewport[4]
window_set_size(viewport_width, viewport_height)
display_set_gui_size(viewport_width, viewport_height)

if (room == rmGame)
{
	generateRoom()
}
