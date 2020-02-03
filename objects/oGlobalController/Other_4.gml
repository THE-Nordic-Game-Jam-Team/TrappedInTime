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

	musicset=choose(0,1)
	switch(global.upgradeLevel[UPGRADE_TYPE.TEAR])
	{
		case 0: 
		{
			if musicset==0
				audio_play_sound(mscGameA_0,0,0);
			else
				audio_play_sound(mscGameB_0,0,0);
			break;
		}
		case 1: 
		{
			if musicset==0
				audio_play_sound(mscGameA_1,0,0);
			else
				audio_play_sound(mscGameB_1,0,0);
			break;
		}
		case 2: 
		case 3:
		{
			if musicset==0
				audio_play_sound(mscGameA_2,0,0);
			else
				audio_play_sound(mscGameB_2,0,0);
			break;
		}
		case 4: 
		case 5:
		{
			if musicset==0
				audio_play_sound(mscGameA_3,0,0);
			else
				audio_play_sound(mscGameB_3,0,0);
			break;
		}
		case 6: 
		{
			if musicset==0
				audio_play_sound(mscGameA_4,0,0);
			else
				audio_play_sound(mscGameB_4,0,0);
			break;
		}

		default:
			break;
	}


}