// rainbow effect
rainbow_hue = (rainbow_hue + 2) mod 360;
rainbow = make_color_hsv(rainbow_hue, 255, 255);

#region camera upadte
	//rotation and pitch camera
	if mouse_check_button(mb_left) && keyboard_check(vk_shift){
		pitchTo += (window_height*.5-window_mouse_get_y())*.005
		angleTo += (window_width*.5-window_mouse_get_x())*.1
	
		window_mouse_set(window_width*.5,window_height*.5)
	}
	//keyboard  rotation & pitch
	pitchTo+=(keyboard_check(ord("S"))-keyboard_check(ord("W")))*.1
	angleTo+=(keyboard_check(ord("D"))-keyboard_check(ord("A")))*2
	
	pitchTo = clamp(pitchTo,pitchMin,pitchMax)
	
	
	pitch = lerp(pitch,pitchTo,.1)
	angle = lerp(angle,angleTo,.05)
	
	camera_set_view_angle(view_camera[0],angle)
	
	cam_w = lerp(cam_w,ogW,.025)
	cam_h = lerp(cam_h,ogH,.025)
	
	cam_x = lerp(cam_x,0,.05)
	cam_y = lerp(cam_y,cam_h,.05)
	
	
	camera_set_view_size(view_camera[0],cam_w,cam_h*pitch)
	camera_set_view_pos(view_camera[0],cam_x,cam_y*(1-pitch)*.5)
#endregion
show_debug_message(camera_angle)