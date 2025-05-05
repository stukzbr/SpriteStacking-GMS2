function draw_sprite_stacked(spr,xx,yy){
	///@param sprite_index
	///@param x
	///@param y
	
	for(var i=0;i<sprite_get_number(spr);i++){
		var ldx = lengthdir_x(i*camera_pitch,camera_up)
		var ldy = lengthdir_y(i*camera_pitch,camera_up)
		draw_sprite(spr,i,xx+ldx,yy+ldy)
	}
}
function draw_sprite_stacked_ext(spr,xx,yy,xscale,yscale,ang,blend,alp,_h = 1,z = 0){
	///@param sprite_index
	///@param x
	///@param y
	///@param image_xscale
	///@param image_yscale
	///@param image_angle
	///@param image_blend
	///@param image_alpha
	
	for(var i=0;i<sprite_get_number(spr);i++){
		var ldx = lengthdir_x(z+i*camera_pitch,camera_up)*_h
		var ldy = lengthdir_y(z+i*camera_pitch,camera_up)*_h
		draw_sprite_ext(spr,i,xx+ldx,yy+ldy,xscale,yscale,ang,blend,alp)
	}
}

function depth_set_3d(){
    depth = dot_product(x,y,lengthdir_x(1,camera_up),lengthdir_y(1,camera_up))-1000
}