rainbow_hue = 0; 
#region camera macros
	#macro camera_x  camera_get_view_x(view_camera[0])
	#macro camera_y  camera_get_view_y(view_camera[0])
	#macro camera_width  camera_get_view_width(view_camera[0])
	#macro camera_height  camera_get_view_height(view_camera[0])
	#macro camera_angle  camera_get_view_angle(view_camera[0])
	#macro camera_pitch  oCamLevelSel.pitch
	#macro camera_up -camera_angle+90
#endregion
#region screen macros
	#macro window_height window_get_height()
	#macro window_width window_get_width()
	#macro display_height display_get_height()
	#macro display_width display_get_width()
	#macro gui_width display_get_gui_width()
	#macro gui_height display_get_gui_height()
#endregion

ogW = camera_width
ogH = camera_height

cam_w = 640
cam_h = 360

cam_x = -cam_w*.5
cam_y = cam_h*2

pitch = 1.8
pitchMin = 1
pitchMax = 4
pitchTo = pitch

angle = 20
camera_set_view_angle(view_camera[0],angle)
angleTo = camera_angle

