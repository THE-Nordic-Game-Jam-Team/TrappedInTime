camera = view_get_camera(0)
viewport = room_get_viewport(room, 0)
viewport_x = viewport[1]
viewport_y = viewport[2]
viewport_width = viewport[3]
viewport_height = viewport[4]

backspaceCooldown = -1

clipboardUsed = false

// That little line in the textbox that lets you know you can type something by alternating between visible and not visible
charCursorToggle = false
alarm[0] = room_speed * 0.75

image_speed=.1


audio_play_sound(mscTitle,0,1)